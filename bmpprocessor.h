#ifndef BMPPROCESSOR_H
#define BMPPROCESSOR_H

#include <vector>
#include <cstdint>
#include <string>

#pragma pack(push, 1)

struct BMPFileHeader {
    uint16_t signature;
    uint32_t fileSize;
    uint16_t reserved1;
    uint16_t reserved2;
    uint32_t dataOffset;
};

struct BMPInfoHeader {
    uint32_t headerSize;
    int32_t  width;
    int32_t  height;
    uint16_t planes;
    uint16_t bitsPerPixel;
    uint32_t compression;
    uint32_t imageSize;
    int32_t  xPixelsPerMeter;
    int32_t  yPixelsPerMeter;
    uint32_t colorsUsed;
    uint32_t colorsImportant;
};

struct BMPHeaders {
    BMPFileHeader fileHeader;
    BMPInfoHeader infoHeader;
    bool bottomUp;
    int absHeight;
    
    void calculateInfo();
};

#pragma pack(pop)

class BMPProcessor
{
public:
    BMPProcessor();
    
    bool loadBMP(const std::string& filename);
    bool saveBMP(const std::string& filename);
    void convertToGrayscale();
    
    std::vector<char> getData() const { return data; }
    BMPHeaders getHeaders() const { return headers; }
    bool isLoaded() const { return !data.empty(); }
    std::string getInfo() const;
    
private:
    std::vector<char> data;
    BMPHeaders headers;
};

#endif 