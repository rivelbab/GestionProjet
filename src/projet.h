/********************************************
 *          GESTION DE PROJETS DE GEJ       *
 * app developped by rivelnet/IAI 2013/2014 *
 *                                          *
 * projet.h contient la definitions des     *
 * roles du model definit dans database.h   *
 *                                          *
 * ******************************************/

#ifndef PROJET_H
#define PROJET_H

#include <QObject>

class Projet1
{

public:

    Projet1(const QString &chaine,const int &entier=0);

    QString chaine() const {return m_chaine;}
    void setChaine(const QString &chaine);

    int entier() const {return m_entier;}
    void setEntier(const int &entier);

private:

    QString m_chaine;
    int     m_entier;

};

#endif // PROJET_H
