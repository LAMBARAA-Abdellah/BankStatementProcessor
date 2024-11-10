# BankStatementXML

## Description
**BankStatementXML** est une application pratique conçue pour gérer des relevés de comptes bancaires en utilisant les technologies XML. Ce projet inclut la création, la validation et l'affichage des relevés de comptes à l'aide de DTD, de schémas XML et de feuilles de style XSL.

## Structure du Projet
Le projet est structuré autour des concepts suivants :
- Un document XML représentant des relevés de comptes bancaires.
- Un DTD pour déclarer la structure du document XML et valider les fichiers XML.
- Un schéma XML (XSD) pour garantir la conformité des documents XML.
- Des feuilles de style XSL pour afficher les relevés sous forme de pages HTML, incluant le total des opérations de débit et de crédit.

## Format du Document XML
Le format du fichier XML utilisé est le suivant :

```xml
<?xml version="1.0" encoding="UTF-8"?>
<releve RIB="011112222333344445555666">
    <dateReleve>2021-11-10</dateReleve>
    <solde>14500</solde>
    <operations dateDebut="2021-01-01" dateFin="2021-01-30">
        <operation type="CREDIT" date="2021-01-01" montant="9000" description="Vers Espèce"></operation>
        <operation type="DEBIT" date="2021-01-11" montant="3400" description="Chèque Guichet"></operation>
        <operation type="DEBIT" date="2021-01-15" montant="120" description="Prélèvement Assurence"></operation>
        <operation type="CREDIT" date="2021-01-25" montant="70000" description="Virement .."></operation>
    </operations>
</releve>
