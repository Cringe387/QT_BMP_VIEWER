#include "mainwindow.h"
#include <QFileDialog>
#include <QMessageBox>
#include <QPixmap>
#include <QImage>
#include <QVBoxLayout>

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