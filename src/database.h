/********************************************
 *          GESTION DE PROJETS DE GEJ       *
 * app developped by rivelnet/IAI 2013/2014 *
 *                                          *
 * database.h contient toutes les operations*
 * relatives a la base de donnees et cree   *
 * un model d'affichage de ces donnees      *
 *                                          *
 * ******************************************/


#ifndef DATABASE_H
#define DATABASE_H

#include <QtSql>
#include <QObject>
#include "projet.h"
#include <QList>

class ProjetModel : public QAbstractListModel
{
    Q_OBJECT

public:
    //les differents roles du model
    enum ProjetRoles {
        chaine,
        entier
      };
    //constructeur de model
    ProjetModel(QObject *parent = 0);

    void addProjet(const Projet1 &projet1);
    int rowCount(const QModelIndex & parent = QModelIndex()) const;
    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const;

protected:
       QHash<int, QByteArray> roleNames() const;

public slots:
       //lecture ds la bd du projet 1 sur le tourisme
       //********************************************

       //resume du projet
       QList<QString> nom();
       QList<QString> but();
       QList<QString> lieu();
       QList<QString> nature();
       QList<QString> secteur();
       QList<int> nec();
       QList<int> idpro();
       QList<int> ca();

       //presentation responsable
       QList<QString> nomres();
       QList<QString> pnomres();
       QList<int> telres();
       QList<QString> situationres();
       QList<int> ageres();
       QList<QString>  emailres();
       QList<int> bpres();
       QList<QString> villeres();
       QList<QString> paysres();
       QList<int> iduser();


       QList<int> idplanif();
       QList<QString> titre();
       QList<QString> dated();
       QList<int> heured();
       QList<QString> datef();
       QList<int> heuref();
       QList<QString> nomc();
       QList<QString> pnomc();

       int nbrNom();
       int nbrRes();

       int getNbr() const {return m_nbr;}
       void setNbr(int x){m_nbr=x;}


       //************************************
       //gestion des insertions
       void insProjet(int a,QString b,QString c, QString d,QString e, int f,QString g,int h);
       void insUser(int a,QString b, QString c, int d, QString e, int f, QString g, int h, QString i,QString j);
       void insPlanif(int a,QString b,QString c,int d,QString e,int f,QString g,QString h);


private:
       QList<Projet1> m_projets;

       static void createConnection();

       int m_nbr;

};

//*****************************************



#endif //DATABASE_H
