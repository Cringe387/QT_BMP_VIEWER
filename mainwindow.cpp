#include "mainwindow.h"
#include <QFileDialog>
#include <QMessageBox>
#include <QPixmap>
#include <QImage>
#include <QVBoxLayout>
#include <QContextMenuEvent>
#include <QDialog>
#include <QPushButton>
#include <QFont>
#include <sstream>
#include <iomanip>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
{
    // Виджет для отображения изображения
    imageLabel = new QLabel;
    imageLabel->setBackgroundRole(QPalette::Base);
    imageLabel->setSizePolicy(QSizePolicy::Ignored, QSizePolicy::Ignored);
    imageLabel->setScaledContents(false);
    imageLabel->setAlignment(Qt::AlignCenter);
    
    // Область прокрутки 
    scrollArea = new QScrollArea;
    scrollArea->setBackgroundRole(QPalette::Dark);
    scrollArea->setWidget(imageLabel);
    scrollArea->setWidgetResizable(false);
    
    // Текстовое поле
    infoText = new QTextEdit;
    infoText->setReadOnly(true);
    infoText->setMaximumHeight(250);
    
    // Разделитель между изображением и информацией
    splitter = new QSplitter(Qt::Vertical);
    splitter->addWidget(scrollArea);
    splitter->addWidget(infoText);
    splitter->setStretchFactor(0, 3);
    splitter->setStretchFactor(1, 1);
    
    setCentralWidget(splitter);
    
    // Меню
    createMenus();
    
    // Настройка окна
    setWindowTitle("BMP Viewer");
    resize(900, 700);
    
    // Начальное состояние
    imageLabel->setText("Загрузите изображение через Файл -> Открыть");
    infoText->setText("Информация о файле появится здесь после загрузки");
    
    saveAction->setEnabled(false);
    closeAction->setEnabled(false);
    grayscaleAction->setEnabled(false);
    infoAction->setEnabled(false);
}

MainWindow::~MainWindow()
{
}

void MainWindow::createMenus()
{
    // Меню "Файл"
    fileMenu = menuBar()->addMenu("&Файл");
    
    openAction = new QAction("&Открыть", this);
    openAction->setShortcut(QKeySequence::Open);
    connect(openAction, &QAction::triggered, this, &MainWindow::openFile);
    fileMenu->addAction(openAction);
    
    saveAction = new QAction("&Сохранить", this);
    saveAction->setShortcut(QKeySequence::Save);
    connect(saveAction, &QAction::triggered, this, &MainWindow::saveFile);
    fileMenu->addAction(saveAction);
    
    closeAction = new QAction("&Закрыть", this);
    closeAction->setShortcut(QKeySequence::Close);
    connect(closeAction, &QAction::triggered, this, &MainWindow::closeFile);
    fileMenu->addAction(closeAction);
    
    fileMenu->addSeparator();
    
    exitAction = new QAction("В&ыход", this);
    exitAction->setShortcut(QKeySequence::Quit);
    connect(exitAction, &QAction::triggered, this, &MainWindow::exitApp);
    fileMenu->addAction(exitAction);
    
    // Меню "Обработка"
    processMenu = menuBar()->addMenu("&Обработка");
    
    grayscaleAction = new QAction("&Градации серого", this);
    connect(grayscaleAction, &QAction::triggered, this, &MainWindow::convertToGrayscale);
    processMenu->addAction(grayscaleAction);
    
    processMenu->addSeparator();
    
    infoAction = new QAction("&Информация о файле", this);
    connect(infoAction, &QAction::triggered, this, &MainWindow::showFileInfo);
    processMenu->addAction(infoAction);
    
    // Контекстное меню
    contextMenu = new QMenu(this);
    
    imageInfoAction = new QAction("Информация об изображении", this);
    imageInfoAction->setIcon(QIcon::fromTheme("dialog-information"));
    connect(imageInfoAction, &QAction::triggered, this, &MainWindow::showImageInfo);
    contextMenu->addAction(imageInfoAction);
}

void MainWindow::contextMenuEvent(QContextMenuEvent *event)
{
    // Показ контекстного меню (если изображение загружено)
    if (bmpProcessor.isLoaded()) {
        contextMenu->exec(event->globalPos());
    }
}

void MainWindow::openFile()
{
    QString fileName = QFileDialog::getOpenFileName(this,
        "Открыть BMP файл", "",
        "BMP Files (*.bmp);;All Files (*)");
    
    if (fileName.isEmpty()) {
        return;
    }
    
    if (bmpProcessor.loadBMP(fileName.toStdString())) {
        currentFileName = fileName.toStdString();
        displayImage();
        updateWindowTitle();
        updateInfo();
        
        saveAction->setEnabled(true);
        closeAction->setEnabled(true);
        grayscaleAction->setEnabled(true);
        infoAction->setEnabled(true);
        
        QMessageBox::information(this, "Успех", 
            "Изображение успешно загружено!");
    } else {
        QMessageBox::critical(this, "Ошибка", 
            "Не удалось загрузить файл!\nПроверьте, что это корректный BMP файл.");
    }
}

void MainWindow::saveFile()
{
    if (!bmpProcessor.isLoaded()) {
        return;
    }
    
    QString fileName = QFileDialog::getSaveFileName(this,
        "Сохранить BMP файл", "",
        "BMP Files (*.bmp);;All Files (*)");
    
    if (fileName.isEmpty()) {
        return;
    }
    
    if (!fileName.endsWith(".bmp", Qt::CaseInsensitive)) {
        fileName += ".bmp";
    }
    
    if (bmpProcessor.saveBMP(fileName.toStdString())) {
        currentFileName = fileName.toStdString();
        updateWindowTitle();
        QMessageBox::information(this, "Успех", 
            "Файл успешно сохранён!");
    } else {
        QMessageBox::critical(this, "Ошибка", 
            "Не удалось сохранить файл!");
    }
}

void MainWindow::closeFile()
{
    imageLabel->clear();
    imageLabel->setText("Загрузите изображение через Файл -> Открыть");
    infoText->setText("Информация о файле появится здесь после загрузки");
    currentFileName.clear();
    
    saveAction->setEnabled(false);
    closeAction->setEnabled(false);
    grayscaleAction->setEnabled(false);
    infoAction->setEnabled(false);
    
    setWindowTitle("BMP Viewer");
}

void MainWindow::exitApp()
{
    close();
}

void MainWindow::convertToGrayscale()
{
    if (!bmpProcessor.isLoaded()) {
        return;
    }
    
    bmpProcessor.convertToGrayscale();
    displayImage();
    updateInfo();
    
    QMessageBox::information(this, "Успех", 
        "Изображение преобразовано в градации серого!");
}

void MainWindow::showFileInfo()
{
    if (!bmpProcessor.isLoaded()) {
        return;
    }
    
    std::string info = bmpProcessor.getInfo();
    QMessageBox::information(this, "Информация о BMP файле",
        QString::fromStdString(info));
}

void MainWindow::showImageInfo()
{
    if (!bmpProcessor.isLoaded()) {
        return;
    }
    
    BMPHeaders headers = bmpProcessor.getHeaders();
    
    std::stringstream ss;
    
    ss << "                            Информация об изображении\n";
    
    // Основные параметры
    ss << "Основные параметры изображения:\n";
    ss << "  Ширина:              " << headers.infoHeader.width << " px\n";
    ss << "  Высота:              " << headers.absHeight << " px\n";
    ss << "  Ориентация:          " << (headers.bottomUp ? "Bottom-up (снизу вверх)" : "Top-down (сверху вниз)") << "\n";
    ss << "  Соотношение сторон:  " << std::fixed << std::setprecision(2) 
       << ((double)headers.infoHeader.width / headers.absHeight) << ":1\n";
    ss << "  Общее пикселей:      " << (headers.infoHeader.width * headers.absHeight) << "\n\n";
    
    // Информация о цвете
    int bytesPerPixel = headers.infoHeader.bitsPerPixel / 8;
    int channels = bytesPerPixel;
    
    ss << "Информация о цвете:\n";
    ss << "  Бит на пиксель:      " << headers.infoHeader.bitsPerPixel << " бит\n";
    ss << "  Байт на пиксель:     " << bytesPerPixel << " байт\n";
    ss << "  Число каналов:       " << channels << " (";
    
    if (headers.infoHeader.bitsPerPixel == 24) {
        ss << "BGR - Blue, Green, Red";
    } else if (headers.infoHeader.bitsPerPixel == 32) {
        ss << "BGRA - Blue, Green, Red, Alpha";
    } else if (headers.infoHeader.bitsPerPixel == 8) {
        ss << "Grayscale или Indexed";
    } else {
        ss << "Другой формат";
    }
    ss << ")\n";
    
    long long maxColors = 1LL << headers.infoHeader.bitsPerPixel;
    ss << "  Макс. цветов:        ";
    if (maxColors > 1000000) {
        ss << (maxColors / 1000000) << " млн (" << maxColors << ")";
    } else {
        ss << maxColors;
    }
    ss << "\n";
    
    ss << "  Используемых цветов: " << (headers.infoHeader.colorsUsed == 0 ? "все доступные" : std::to_string(headers.infoHeader.colorsUsed)) << "\n";
    ss << "  Важных цветов:       " << (headers.infoHeader.colorsImportant == 0 ? "все" : std::to_string(headers.infoHeader.colorsImportant)) << "\n\n";
    
    // Информация о сжатии
    ss << "Информация о сжатии:\n";
    ss << "  Тип сжатия:          ";
    switch (headers.infoHeader.compression) {
        case 0: ss << "BI_RGB (без сжатия)"; break;
        case 1: ss << "BI_RLE8 (RLE 8-бит)"; break;
        case 2: ss << "BI_RLE4 (RLE 4-бит)"; break;
        case 3: ss << "BI_BITFIELDS"; break;
        default: ss << "Другой тип (" << headers.infoHeader.compression << ")";
    }
    ss << "\n";
    
    int rowSize = headers.infoHeader.width * bytesPerPixel;
    int padding = (4 - (rowSize % 4)) % 4;
    int fullRowSize = rowSize + padding;
    int pixelDataSize = headers.absHeight * fullRowSize;
    
    ss << "  Выравнивание строки: " << padding << " байт паддинга\n";
    ss << "  Размер строки:       " << fullRowSize << " байт (" << rowSize << " + " << padding << ")\n";
    ss << "  Размер пикс. данных: " << pixelDataSize << " байт";
    if (pixelDataSize > 1024 * 1024) {
        ss << " (~" << std::fixed << std::setprecision(2) << (pixelDataSize / (1024.0 * 1024.0)) << " МБ)";
    } else if (pixelDataSize > 1024) {
        ss << " (~" << (pixelDataSize / 1024) << " КБ)";
    }
    ss << "\n\n";
    
    // Разрешение
    ss << "Разрешение:\n";
    if (headers.infoHeader.xPixelsPerMeter > 0 && headers.infoHeader.yPixelsPerMeter > 0) {
        int dpiX = (int)(headers.infoHeader.xPixelsPerMeter * 0.0254);
        int dpiY = (int)(headers.infoHeader.yPixelsPerMeter * 0.0254);
        ss << "  X разрешение:        " << dpiX << " DPI (" << headers.infoHeader.xPixelsPerMeter << " px/m)\n";
        ss << "  Y разрешение:        " << dpiY << " DPI (" << headers.infoHeader.yPixelsPerMeter << " px/m)\n";
    } else {
        ss << "  Разрешение не указано\n";
    }
    ss << "\n";
    
    // Дополнительная информация
    ss << "Дополнительная информация:\n";
    ss << "  Размер файла:        " << headers.fileHeader.fileSize << " байт";
    if (headers.fileHeader.fileSize > 1024 * 1024) {
        ss << " (~" << std::fixed << std::setprecision(2) << (headers.fileHeader.fileSize / (1024.0 * 1024.0)) << " МБ)";
    } else if (headers.fileHeader.fileSize > 1024) {
        ss << " (~" << (headers.fileHeader.fileSize / 1024) << " КБ)";
    }
    ss << "\n";
    ss << "  Смещение данных:     " << headers.fileHeader.dataOffset << " байт\n";
    ss << "  Размер заголовков:   " << headers.fileHeader.dataOffset << " байт\n";
    
    // Создание кастомного диалога
    QDialog *dialog = new QDialog(this);
    dialog->setWindowTitle("Информация об изображении");
    dialog->setMinimumSize(600, 500);
    dialog->resize(700, 600);         
    
    QVBoxLayout *layout = new QVBoxLayout(dialog);
    
    // Текстовое поле с информацией
    QTextEdit *textEdit = new QTextEdit(dialog);
    textEdit->setReadOnly(true);
    textEdit->setPlainText(QString::fromStdString(ss.str()));
    textEdit->setFont(QFont("Courier New", 10));
    layout->addWidget(textEdit);
    
    // Кнопка OK
    QPushButton *okButton = new QPushButton("OK", dialog);
    okButton->setDefault(true);
    okButton->setFixedHeight(30);
    connect(okButton, &QPushButton::clicked, dialog, &QDialog::accept);
    layout->addWidget(okButton);
    
    dialog->exec();
    delete dialog;
}

void MainWindow::displayImage()
{
    if (!bmpProcessor.isLoaded()) {
        return;
    }
    
    std::vector<char> data = bmpProcessor.getData();
    
    QImage image;
    if (image.loadFromData((const uchar*)data.data(), static_cast<int>(data.size()), "BMP")) {
        QPixmap pixmap = QPixmap::fromImage(image);
        imageLabel->setPixmap(pixmap);
        imageLabel->resize(pixmap.size());
    } else {
        QMessageBox::warning(this, "Предупреждение", 
            "Не удалось отобразить изображение");
    }
}

void MainWindow::updateWindowTitle()
{
    std::string title = "BMP Viewer";
    if (!currentFileName.empty()) {
        size_t pos = currentFileName.find_last_of("/\\");
        std::string filename = (pos != std::string::npos) ? 
            currentFileName.substr(pos + 1) : currentFileName;
        title += " - " + filename;
    }
    setWindowTitle(QString::fromStdString(title));
}

void MainWindow::updateInfo()
{
    if (!bmpProcessor.isLoaded()) {
        infoText->clear();
        return;
    }
    
    std::string info = bmpProcessor.getInfo();
    infoText->setText(QString::fromStdString(info));
}