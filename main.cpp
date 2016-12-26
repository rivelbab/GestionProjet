#include <QApplication>
#include <QQmlApplicationEngine>
#include <QtQuick>
#include "src/projet.h"
#include "src/database.h"

int main(int argc, char *argv[])
{    
    QApplication app(argc, argv);

    //enregistrement des nouveaux types
    qmlRegisterType<ProjetModel>("ProjetType",1,0,"ProjetModel");
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:///main.qml")));

    //creation des models

    //resume du projet
    //*****************************************

    ProjetModel modelp[200];
    int nbr = modelp[1].nbrNom();
    QList<QString> nomp = modelp[1].nom();
    QList<QString> secteurp = modelp[1].secteur();
    QList<QString> butp = modelp[1].but();
    QList<QString> lieup = modelp[1].lieu();
    QList<QString> naturep = modelp[1].nature();
    QList<int> necp = modelp[1].nec();
    QList<int> cap1 = modelp[1].ca();
    QList<int> idp = modelp[1].idpro();
    QString titres[200]="modelP%1";

    QQmlContext *ctxt = engine.rootContext();

    for(int i=0;i<nbr;i++){
        titres[i]= titres[i].arg(i);

        modelp[i].addProjet(Projet1("Projet numero : ",idp[i]));
        modelp[i].addProjet(Projet1("Denomination du projet : "+nomp[i]));
        modelp[i].addProjet(Projet1("Secteur d'activite     : "+secteurp[i]));
        modelp[i].addProjet(Projet1("But du projet          : "+butp[i]));
        modelp[i].addProjet(Projet1("Lieu d'implentation    : "+lieup[i]));
        modelp[i].addProjet(Projet1("Nature Juridique       : "+naturep[i]));
        modelp[i].addProjet(Projet1("Nombre d'emploie cree  : ",necp[i]));
        modelp[i].addProjet(Projet1("Chiffre d'affaire estime : ",cap1[i]));

        ctxt->setContextProperty(titres[i], &modelp[i]);
    }

    //presentation du promoteur
    //******************************************
    ProjetModel modelR[200];
    //int nbr2 = modelR[1].nbrRes();
    QList<QString> nomr = modelR[1].nomres();
    QList<int> telr = modelR[1].telres();
    QList<QString> situationr = modelR[1].situationres();
    QList<int> ager = modelR[1].ageres();
    QList<QString> emailr = modelR[1].emailres();
    QList<int> bpr = modelR[1].bpres();
    QList<QString> viller = modelR[1].villeres();
    QList<QString> paysr = modelR[1].paysres();
    QList<QString> pnomr= modelR[1].pnomres();
    QString titres2[200]="modelR%1";
    QList<int> idr = modelR[1].iduser();

    for(int i=0;i<nbr;i++){
        titres2[i]=titres2[i].arg(i);

        modelR[i].addProjet(Projet1("Promoteur numero : ",idr[i]));
        modelR[i].addProjet(Projet1("Nom du promoteur : "+nomr[i]+" "+pnomr[i]));
        modelR[i].addProjet(Projet1("Tel du promoteur : (+241)",telr[i]));
        modelR[i].addProjet(Projet1("Situation matrimoniale : "+situationr[i]));
        modelR[i].addProjet(Projet1("Age du promoteur : ",ager[i]));
        modelR[i].addProjet(Projet1("Email du promoteur : "+emailr[i]));
        modelR[i].addProjet(Projet1("BP du promoteur : ",bpr[i]));
        modelR[i].addProjet(Projet1("Ville du promoteur : "+viller[i]));
        modelR[i].addProjet(Projet1("Pays du promoteur : "+paysr[i]));

        ctxt->setContextProperty(titres2[i],&modelR[i]);

    }

    ProjetModel modelV[200];
    QList<int> idplanif = modelV[1].idplanif();
    QList<int> hd=modelV[1].heured();
    QList<int> hf=modelV[1].heuref();
    QList<QString> titre = modelV[1].titre();
    QList<QString> dd=modelV[1].dated();
    QList<QString> df=modelV[1].datef();
    QList<QString> nc=modelV[1].nomc();
    QList<QString> pnc=modelV[1].pnomc();
    QString titres3[200]="modelV%1";

    for(int i=0;i<nbr;i++){
        titres3[i]=titres3[i].arg(i);

        modelV[i].addProjet(Projet1("Projet numero : ",idplanif[i]));
        modelV[i].addProjet(Projet1("Dénomé : "+titre[i]));
        modelV[i].addProjet(Projet1("Date du debut : "+dd[i]));
        modelV[i].addProjet(Projet1("Heure du debut : ",hd[i]));
        modelV[i].addProjet(Projet1("Date de fin : "+df[i]));
        modelV[i].addProjet(Projet1("Heure de fin : ",hf[i]));
        modelV[i].addProjet(Projet1("Nom du Chef de Projet: "+nc[i]));
        modelV[i].addProjet(Projet1("Prenom du chef de projet: "+pnc[i]));

        ctxt->setContextProperty(titres3[i],&modelV[i]);

    }

    return app.exec();
}
