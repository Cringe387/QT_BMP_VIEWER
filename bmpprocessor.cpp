#include "bmpprocessor.h"
#include <fstream>
#include <sstream>
#include <iomanip>

void BMPHeaders::calculateInfo() {
    bottomUp = (infoHeader.height > 0);
    absHeight = abs(infoHeader.height);
}

BMPProcessor::BMPProcessor() {
}

bool BMPProcessor::loadBMP(const std::string& filename) {
    std::ifstream file(filename, std::ios::binary);
    
    if (!file) {
        return false;
    }
    
    file.seekg(0, std::ios::end);
    size_t fileSize = file.tellg();
    file.seekg(0, std::ios::beg);
    
    data.resize(fileSize);
    file.read(data.data(), fileSize);
    file.close();
    
    if (data.size() < sizeof(BMPHeaders)) {
        data.clear();
        return false;
    }
    
    headers = *(BMPHeaders*)data.data();
    headers.calculateInfo();
    
    // Проверка сигнатуры BMP
    if (headers.fileHeader.signature != 0x4D42) { // "BM"
        data.clear();
        return false;
    }
    
    return true;
}

bool BMPProcessor::saveBMP(const std::string& filename) {
    if (data.empty()) {
        return false;
    }
    
    std::ofstream file(filename, std::ios::binary);
    
    if (!file) {
        return false;
    }
    
    file.write(data.data(), data.size());
    file.close();
    
    return true;
}

void BMPProcessor::convertToGrayscale() {
    if (data.empty()) {
        return;
    }
    
    char* pixels = data.data() + headers.fileHeader.dataOffset;
    int bytesPerPixel = headers.infoHeader.bitsPerPixel / 8;
    
    if (bytesPerPixel < 3) {
        return;
    }
    
    int rowSize = headers.infoHeader.width * bytesPerPixel;
    int padding = (4 - (rowSize % 4)) % 4;
    
    for (int y = 0; y < headers.absHeight; y++) {
        int yPos = headers.bottomUp ? (headers.absHeight - 1 - y) : y;
        char* line = pixels + yPos * (rowSize + padding);
        
        for (int x = 0; x < headers.infoHeader.width; x++) {
            char* p = line + x * bytesPerPixel;
            int gray = ((unsigned char)p[2] + 
                       (unsigned char)p[1] + 
                       (unsigned char)p[0]) / 3;
            p[0] = p[1] = p[2] = gray;
        }
    }
}

std::string BMPProcessor::getInfo() const {
    if (data.empty()) {
        return "No file loaded";
    }
    
    std::stringstream ss;
    
    ss << "BMP File Information\n";
    ss << "Signature:          " << (char)headers.fileHeader.signature 
       << (char)(headers.fileHeader.signature >> 8) << "\n";
    ss << "File size:          " << headers.fileHeader.fileSize << " bytes\n";
    ss << "Data offset:        " << headers.fileHeader.dataOffset << " bytes\n";
    ss << "Header size:        " << headers.infoHeader.headerSize << " bytes\n";
    ss << "Width:              " << headers.infoHeader.width << " pixels\n";
    ss << "Height:             " << headers.absHeight << " pixels\n";
    ss << "Bits per pixel:     " << headers.infoHeader.bitsPerPixel << "\n";
    ss << "Compression:        " << (headers.infoHeader.compression == 0 ? "None" : "Compressed") << "\n";
    ss << "Row order:          " << (headers.bottomUp ? "Bottom-up" : "Top-down") << "\n";
    
    int bytesPerPixel = headers.infoHeader.bitsPerPixel / 8;
    int rowSize = headers.infoHeader.width * bytesPerPixel;
    int padding = (4 - (rowSize % 4)) % 4;
    int fullRowSize = rowSize + padding;
    
    ss << "Bytes per pixel:    " << bytesPerPixel << "\n";
    ss << "Row size (no pad):  " << rowSize << " bytes\n";
    ss << "Padding per row:    " << padding << " bytes\n";
    ss << "Row size (with pad): " << fullRowSize << " bytes\n";
    ss << "Pixel data size:    " << (headers.absHeight * fullRowSize) << " bytes\n";
    
    return ss.str();
}