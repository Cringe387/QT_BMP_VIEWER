#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QLabel>
#include <QScrollArea>
#include <QMenuBar>
#include <QMenu>
#include <QAction>
#include <QTextEdit>
#include <QSplitter>
#include <QStatusBar>
#include <QMouseEvent>
#include "bmpprocessor.h"

class ImageLabel : public QLabel
{
    Q_OBJECT
public:
    explicit ImageLabel(QWidget *parent = nullptr);
    
signals:
    void mouseMove(int x, int y);
    void mouseLeave();
    
protected:
    void mouseMoveEvent(QMouseEvent *event) override;
    void leaveEvent(QEvent *event) override;
};

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

protected:
    void contextMenuEvent(QContextMenuEvent *event) override;

private slots:
    void openFile();
    void saveFile();
    void closeFile();
    void exitApp();
    void convertToGrayscale();
    void showFileInfo();
    void showImageInfo();
    void updateStatusBar(int x, int y);
    void clearStatusBar();

private:
    void createMenus();
    void displayImage();
    void updateWindowTitle();
    void updateInfo();
    QRgb getPixelColor(int x, int y);
    
    ImageLabel *imageLabel;
    QScrollArea *scrollArea;
    QTextEdit *infoText;
    QSplitter *splitter;
    QStatusBar *statusBar;
    QImage currentImage;
    
    QMenu *fileMenu;
    QMenu *processMenu;
    QMenu *contextMenu;
    
    QAction *openAction;
    QAction *saveAction;
    QAction *closeAction;
    QAction *exitAction;
    QAction *grayscaleAction;
    QAction *infoAction;
    QAction *imageInfoAction;
    
    BMPProcessor bmpProcessor;
    std::string currentFileName;
};

#endif