#include "configadapter.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

int main(int argc, char *argv[])
{
    qputenv("QSG_RENDER_LOOP", "basic");
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    qmlRegisterType<ConfigAdapter>("CppType", 1, 0, "ConfigAdapter");
   
    QGuiApplication app(argc, argv);

    //����qml����
    QQmlApplicationEngine engine;

    engine.addImportPath(TaoQuickImportPath);//�����ⲿqml��
    engine.rootContext()->setContextProperty("taoQuickImagePath", TaoQuickImagePath);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;
    return app.exec();
}
