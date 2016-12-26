#include "projet.h"

Projet1::Projet1(const QString &chaine, const int &entier):
    m_chaine(chaine),m_entier(entier)
{

}

void Projet1::setChaine(const QString &chaine)
{
    m_chaine = chaine;
}
void Projet1::setEntier(const int &entier)
{
    m_entier = entier;
}
