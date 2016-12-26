#include "database.h"

ProjetModel::ProjetModel(QObject *parent):
    QAbstractListModel(parent)
{
    //connection a la db;
    createConnection();
}

//******************************************

QList<QString> ProjetModel::nom()
{
    QSqlQuery query;
    QList<QString> x;
    QString y;
    if(query.exec("SELECT nompro FROM Projet")){
        while(query.next()){
            y=query.value(0).toString();
            x.append(y);
        }
    }
    return x;
}
QList<QString> ProjetModel::but()
{
    QSqlQuery query;
    QList<QString> x;
    QString y;
    if(query.exec("SELECT but FROM Projet")){
        while(query.next()){
            y=query.value(0).toString();
            x.append(y);
        }
    }
    return x;
}
QList<QString> ProjetModel::lieu()
{
    QSqlQuery query;
    QList<QString> x;
    QString y;
    if(query.exec("SELECT lieu FROM Projet")){
        while(query.next()){
            y=query.value(0).toString();
            x.append(y);
        }
    }
    return x;
}
QList<QString> ProjetModel::nature()
{
    QSqlQuery query;
    QList<QString> x;
    QString y;
    if(query.exec("SELECT nature FROM Projet")){
        while(query.next()){
            y=query.value(0).toString();
            x.append(y);
        }
    }
    return x;
}

QList<QString> ProjetModel::secteur()
{
    QSqlQuery query;
    QList<QString> x;
    QString y;
    if(query.exec("SELECT secteur FROM Projet")){
        while(query.next()){
            y=query.value(0).toString();
            x.append(y);
        }
    }
    return x;
}
QList<int> ProjetModel::nec()
{
    QSqlQuery query;
    QList<int> x;
    int y;
    if(query.exec("SELECT nec FROM Projet")){
        while(query.next()){
            y=query.value(0).toInt();
            x.append(y);
        }
    }
    return x;
}
QList<int> ProjetModel::ca()
{
    QSqlQuery query;
    QList<int> x;
    int y;
    if(query.exec("SELECT ca FROM Projet")){
        while(query.next()){
            y=query.value(0).toInt();
            x.append(y);
        }
    }
    return x;
}
QList<int> ProjetModel::idpro()
{
    QSqlQuery query;
    QList<int> x;
    int y;
    if(query.exec("SELECT id_projet FROM Projet")){
        while(query.next()){
            y=query.value(0).toInt();
            x.append(y);
        }
    }
    return x;
}
//***********************************************

QList<QString> ProjetModel::nomres()
{
    QSqlQuery query;
    QList<QString> x;
    QString y;
    if(query.exec("SELECT nom FROM User")){
        while(query.next()){
            y = query.value(0).toString();
            x.append(y);
        }
    }
    return x;
}
QList<QString> ProjetModel::pnomres()
{
    QSqlQuery query;
    QList<QString> x;
    QString y;
    if(query.exec("SELECT prenom FROM User")){
        while(query.next()){
            y=query.value(0).toString();
            x.append(y);
        }
    }
    return x;
}
QList<int> ProjetModel::telres()
{
    QSqlQuery query;
    QList<int> x;
    int y;
    if(query.exec("SELECT tel FROM User")){
        while(query.next()){
            y=query.value(0).toInt();
            x.append(y);
        }
    }
    return x;
}

QList<QString> ProjetModel::situationres()
{
    QSqlQuery query;
    QList<QString> x;
    QString y;
    if(query.exec("SELECT situation FROM User")){
        while(query.next()){
            y=query.value(0).toString();
            x.append(y);
        }
    }
    return x;
}
QList<int> ProjetModel::ageres()
{
    QSqlQuery query;
    QList<int> x;
    int y;
    if(query.exec("SELECT age FROM User")){
        while(query.next()){
            y=query.value(0).toInt();
            x.append(y);
        }
    }
    return x;
}
QList<QString> ProjetModel::emailres()
{
    QSqlQuery query;
    QList<QString> x;
    QString y;
    if(query.exec("SELECT email FROM User")){
        while(query.next()){
            y=query.value(0).toString();
            x.append(y);
        }
    }
    return x;
}
QList<int> ProjetModel::bpres()
{
    QSqlQuery query;
    QList<int> x;
    int y;
    if(query.exec("SELECT bp FROM User")){
        while(query.next()){
            y=query.value(0).toInt();
            x.append(y);
        }
    }
    return x;
}
QList<int> ProjetModel::iduser()
{
    QSqlQuery query;
    QList<int> x;
    int y;
    if(query.exec("SELECT id_user FROM User")){
        while(query.next()){
            y=query.value(0).toInt();
            x.append(y);
        }
    }
    return x;
}
QList<QString> ProjetModel::villeres()
{
    QSqlQuery query;
    QList<QString> x;
    QString y;
    if(query.exec("SELECT ville FROM User")){
        while(query.next()){
            y=query.value(0).toString();
            x.append(y);
        }
    }
    return x;
}
QList<QString> ProjetModel::paysres()
{
    QSqlQuery query;
    QList<QString> x;
    QString y;
    if(query.exec("SELECT pays FROM User")){
        while(query.next()){
            y=query.value(0).toString();
            x.append(y);
        }
    }
    return x;
}

//***********************************************

QList<QString> ProjetModel::titre()
{
    QSqlQuery query;
    QList<QString> x;
    QString y;
    if(query.exec("SELECT titre FROM Planif")){
        while(query.next()){
            y=query.value(0).toString();
            x.append(y);
        }
    }
    return x;
}
QList<QString> ProjetModel::dated()
{
    QSqlQuery query;
    QList<QString> x;
    QString y;
    if(query.exec("SELECT dated FROM Planif")){
        while(query.next()){
            y=query.value(0).toString();
            x.append(y);
        }
    }
    return x;
}
QList<QString> ProjetModel::datef()
{
    QSqlQuery query;
    QList<QString> x;
    QString y;
    if(query.exec("SELECT datef FROM Planif")){
        while(query.next()){
            y=query.value(0).toString();
            x.append(y);
        }
    }
    return x;
}
QList<QString> ProjetModel::nomc()
{
    QSqlQuery query;
    QList<QString> x;
    QString y;
    if(query.exec("SELECT nomc FROM Planif")){
        while(query.next()){
            y=query.value(0).toString();
            x.append(y);
        }
    }
    return x;
}
QList<QString> ProjetModel::pnomc()
{
    QSqlQuery query;
    QList<QString> x;
    QString y;
    if(query.exec("SELECT pnomc FROM Planif")){
        while(query.next()){
            y=query.value(0).toString();
            x.append(y);
        }
    }
    return x;
}

QList<int> ProjetModel::idplanif()
{
    QSqlQuery query;
    QList<int> x;
    int y;
    if(query.exec("SELECT id_planif FROM Planif")){
        while(query.next()){
            y=query.value(0).toInt();
            x.append(y);
        }
    }
    return x;
}
QList<int> ProjetModel::heured()
{
    QSqlQuery query;
    QList<int> x;
    int y;
    if(query.exec("SELECT heured FROM Planif")){
        while(query.next()){
            y=query.value(0).toInt();
            x.append(y);
        }
    }
    return x;
}
QList<int> ProjetModel::heuref()
{
    QSqlQuery query;
    QList<int> x;
    int y;
    if(query.exec("SELECT heuref FROM Planif")){
        while(query.next()){
            y=query.value(0).toInt();
            x.append(y);
        }
    }
    return x;
}

//*********************************************
//gestion des insertions
void ProjetModel::insProjet(int a,QString b,QString c, QString d,QString e, int f,QString g,int h)
{
    QSqlQuery query;
    query.prepare("INSERT INTO Projet(id_projet,nompro,but, lieu, nature, nec,secteur,ca) "
                  "VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
    query.bindValue(0, a);
    query.bindValue(1, b);
    query.bindValue(2, c);
    query.bindValue(3, d);
    query.bindValue(4, e);
    query.bindValue(5, f);
    query.bindValue(6, g);
    query.bindValue(7, h);
    query.exec();
}
void ProjetModel::insUser(int a,QString b, QString c, int d, QString e, int f, QString g, int h, QString i,QString j)
{
    QSqlQuery query;
    query.prepare("INSERT INTO User(id_user,nom, prenom, tel, situation, age, email, bp, ville,pays) "
                  "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
    query.bindValue(0, a);
    query.bindValue(1, b);
    query.bindValue(2, c);
    query.bindValue(3, d);
    query.bindValue(4, e);
    query.bindValue(5, f);
    query.bindValue(6, g);
    query.bindValue(7, h);
    query.bindValue(8, i);
    query.bindValue(9, j);

    query.exec();
}
void ProjetModel::insPlanif(int a,QString b,QString c,int d,QString e,int f,QString g,QString h)
{
    QSqlQuery query;
    query.prepare("INSERT INTO Planif(id_planif,titre, dated, heured, datef, heuref, nomc, pnomc) "
                  "VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
    query.bindValue(0, a);
    query.bindValue(1, b);
    query.bindValue(2, c);
    query.bindValue(3, d);
    query.bindValue(4, e);
    query.bindValue(5, f);
    query.bindValue(6, g);
    query.bindValue(7, h);
    query.exec();
}

//*********************************************
void ProjetModel::addProjet(const Projet1 &projet1)
{
    beginInsertRows(QModelIndex(), rowCount(), rowCount());
    m_projets << projet1;
    endInsertRows();
}

int ProjetModel::rowCount(const QModelIndex & parent) const {
    Q_UNUSED(parent);
    return m_projets.count();
}

QVariant ProjetModel::data(const QModelIndex & index, int role) const {
    if (index.row() < 0 || index.row() >= m_projets.count())
        return QVariant();

    const Projet1 &projet1 = m_projets[index.row()];
    if (role == chaine)
        return projet1.chaine();
    else if (role == entier)
        return projet1.entier();

    return QVariant();
}

QHash<int, QByteArray> ProjetModel::roleNames() const {
    QHash<int, QByteArray> roles;
    roles[chaine] = "chaine";
    roles[entier] = "entier";

    return roles;
}

//*******************************************

int ProjetModel::nbrNom()
{
    int x;
    QSqlQuery query;
    if(query.exec("SELECT nompro FROM Projet")){
        while(query.next()){
            x = query.size();
        }
    }
    return x;
}
int ProjetModel::nbrRes()
{
    int x;
    QSqlQuery query;
    if(query.exec("SELECT nom FROM User")){
        while(query.next()){
            x = query.size();
        }
    }
    return x;
}


// connexion a la base de donnees

void ProjetModel::createConnection()
{
    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
            db.setDatabaseName(":memory:");
            if (!db.open()) {
                qFatal("Cannot open database");
                return;
            }

            QSqlQuery query;
            // on stock le temps en secondes car c'est plus facile a manipuler.
            query.exec("create table Planif (id_planif INT,titre TEXT,dated DATE,heured INT, datef DATE, heuref INT, nomc TEXT,pnomc TEXT)");
            query.exec("create table User (id_user INT,nom TEXT,prenom TEXT,tel INT,situation TEXT,age INT,email TEXT,bp INT,ville TEXT,pays TEXT)");
            query.exec("create table Projet (id_user INT,nompro TEXT,but TEXT,lieu TEXT,nature TEXT,nec INT,secteur TEXT,ca INT)");


            query.exec("INSERT INTO Planif VALUES (1,'Tourisme','2014-11-25',15,'2015-01-29',14,'SAMBA','Divin')");
            query.exec("INSERT INTO User VALUES (1,'TSAMBA','Gatien',2271116,'Celibataire',25,'gatien@yahoo.fr',2536,'Libreville','Gabon')");
            query.exec("INSERT INTO Projet VALUES (1,'le Gabon en main','decouvrir le Gabon...','Libreville','SARL',12,'Tourisme',1000000)");

            return;
}

//********************************************
