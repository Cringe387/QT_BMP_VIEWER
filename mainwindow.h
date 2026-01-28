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
#include "bmpprocessor.h"

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

private:
    void createMenus();
    void displayImage();
    void updateWindowTitle();
    void updateInfo();
    
    QLabel *imageLabel;
    QScrollArea *scrollArea;
    QTextEdit *infoText;
    QSplitter *splitter;
    
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