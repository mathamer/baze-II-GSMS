#include <cstdio>
#include <iostream>
#include <SQLAPI.h>
#include "TextTable.h" //Biblioteka za generiranje tablica

using namespace std;

int main(int argc, char *argv[])
{
    // create connection object to connect to database
    SAConnection con;
    SACommand cmd;

    try
    {
        // connect to database
        // in this example, it is MySQL,
        // but can also be Sybase, Informix, DB2
        // Oracle, InterBase, SQLBase and ODBC

        char usr[8], pswd[8];

        cout << "Unesite korisnicko ime: ";
        cin >> usr;

        cout << "Unesite password: ";
        cin >> pswd;
        string pswstr(pswd);
        cout << "- - - - - - - - - - - - - -" << endl
             << endl;

        con.Connect("25.49.89.220,3306@gameshop", // Ime baze
                    usr,                          // user name
                    pswd,                         // password
                    SA_MySQL_Client);             // MySQL Client

        cout << "- - - - - - - - - - - - - -" << endl;
        cout << "Uspjesno spojeni na bazu!" << endl;
        cout << "- - - - - - - - - - - - - -" << endl;

        cout << "Gameshope baza podataka" << endl;

        while (1)
        { // da se nemora pokretati nakon svakog izvrsenog menia
            cout << endl
                 << "1. Proizvodi" << endl;         // ok
            cout << "2. Kupci" << endl;             // ok
            cout << "3. Poslovnice" << endl;        // ok
            cout << "4. Zaposlenici " << endl;      // ok
            cout << "5. Poslovoda" << endl;         // ok
            cout << "6. Stanja poslovnica" << endl; // ok
            cout << "7. Racuni" << endl;            // ok
            cout << "- - - - - - - - - - - - - -" << endl;
            cout << "8. !Ostale relacije!" << endl
                 << endl; // ok

            cout << "0. Izlaz" << endl;

            int selekcija;
            cout << "Meni: ";
            cin >> selekcija;
            cout << endl;

            switch (selekcija)
            {
            case 1:
            {
                int podM;
                cout << "~ ~ ~ Proizvodi ~ ~ ~" << endl;
                cout << "1. Pregled za kupnju" << endl;           // ok
                cout << "2. Unos" << endl;                        // ok
                cout << "3. Brisanje" << endl;                    // ok
                cout << "4. Zalihe proizvoda" << endl;            // ok
                cout << "5. Proizvodi koji nisu vraceni" << endl; // ok
                cout << "6. Pregled za posudbu" << endl;          // ok
                cout << "~ ~ ~ " << endl;
                cout << "0. Natrag na glavni izbornik" << endl
                     << endl;
                cout << "Meni:";
                cin >> podM;
                cout << endl;

                if (podM == 1)
                {                               // Pregled OK
                    TextTable t('-', '|', '+'); // Postavljanje parametra tablice

                    cmd.setConnection(&con);                                    // postavljanje veze (cmd)
                    cmd.setCommandText("SELECT * FROM lista_proizvoda_kupnja"); // slanje tekstualne komande
                    cmd.Execute();                                              // izvrsi komandu

                    cout << "~ ~ ~ Pregled za kupnju ~ ~ ~" << endl;
                    t.add("ID proizvoda"); // umetanje i ispis stupca u tablicu
                    t.add("Naziv");
                    t.add("Zanr");
                    t.add("Izdavac");
                    t.add("Platforma");
                    t.add("Cijena");
                    t.endOfRow();

                    while (cmd.FetchNext())
                    {                                           // prikpuljanje redova sta izbaci baza
                        t.add((const char *)cmd[1].asString()); // umetanje i ispis stupca u tablicu iz baze cmd[STUPAC]
                        t.add((const char *)cmd[2].asString());
                        t.add((const char *)cmd[3].asString());
                        t.add((const char *)cmd[4].asString());
                        t.add((const char *)cmd[5].asString());
                        t.add((const char *)cmd[6].asString());
                        t.endOfRow();
                    }
                    t.setAlignment(3, TextTable::Alignment::LEFT); // dodatni parametri biblioteke TextTable.h
                    cout << t;
                }
                else if (podM == 2)
                { // Unos OK
                    string ID, Sifra_Proizvoda, Naziv, Zanr, Izdavac, Platforma, Godina_izlaska, Cijena_za_kupnju;

                    cout << "ID: ";
                    cin >> ID;
                    cout << endl
                         << "Sifra: ";
                    cin >> Sifra_Proizvoda;
                    cout << endl
                         << "Naziv: ";
                    cin >> Naziv;
                    cout << endl
                         << "Zanr: ";
                    cin >> Zanr;
                    cout << endl
                         << "Izdavac: ";
                    cin >> Izdavac;
                    cout << endl
                         << "Platforma: ";
                    cin >> Platforma;
                    cout << endl
                         << "Godina_izlaska: ";
                    cin >> Godina_izlaska;
                    cout << endl
                         << "Cijena : ";
                    cin >> Cijena_za_kupnju;

                    SACommand cmd( // Slanje tekstualne komande sa izmjenjivim podacima
                        &con,
                        "INSERT INTO proizvod (ID, Sifra_Proizvoda, Naziv, Zanr, Izdavac, Platforma, Godina_izlaska, Cijena_za_kupnju) values (:1, :2, :3, :4, :5, :6, :7, :8)");

                    cmd << ID.c_str() << Sifra_Proizvoda.c_str() << Naziv.c_str() << Zanr.c_str()
                        << Izdavac.c_str() << Platforma.c_str() << Godina_izlaska.c_str()
                        << Cijena_za_kupnju.c_str(); // Unos podataka u komandu gore

                    cmd.Execute();

                    cout << "Unos izvrsen!" << endl;
                }
                else if (podM == 3)
                { // Brisanje OK
                    string ID;
                    cout << "ID proizvoda za brisanje: ";
                    cin >> ID;

                    cmd.setConnection(&con);
                    cmd.setCommandText("DELETE FROM proizvod WHERE ID = :1");
                    cmd << ID.c_str();
                    cmd.Execute();

                    cout << "Red je izbrisan!" << endl;
                }
                else if (podM == 4)
                { // Zalihe proizvoda OK
                    string plt, plttmp;
                    int pID, posID;

                    string stnj = " ";

                    cout << "ID proizvoda: ";
                    cin >> pID;
                    cout << endl
                         << "ID poslovnice: ";
                    cin >> posID;
                    cout << endl
                         << "Platforma: ";
                    cin >> plt;
                    getline(cin, plttmp);
                    plt = plt + plttmp; // Spajanje razmaka sa stringom

                    SACommand comTmp;
                    comTmp.setConnection(&con);

                    comTmp.setCommandText("ZalihaProizvoda");

                    comTmp.Param("proizvod_id").setAsNumeric() = pID + 0.0;
                    comTmp.Param("poslovnica_id").setAsNumeric() = posID + 0.0;
                    comTmp.Param("platforma").setAsString() = plt.c_str();

                    comTmp.Execute();
                    comTmp.FetchNext();

                    stnj = (const char *)comTmp[1].asString();

                    cout << "Zaliha: " << stnj << endl;
                }
                else if (podM == 5)
                { // Proizvodi koji nisu vraceni OK
                    TextTable t('-', '|', '+');

                    SACommand comTmp;
                    comTmp.setConnection(&con);

                    comTmp.setCommandText("Igre_Koje_Nisu_Vracene");

                    cout << "~ ~ ~ Proizvodi koji nisu vraceni ~ ~ ~" << endl;
                    comTmp.Execute();
                    t.add("ID Proizvoda");
                    t.add("Platforma");
                    t.add("ID Poslovnice");
                    t.add("ID Racuna");
                    t.endOfRow();

                    while (comTmp.FetchNext())
                    {
                        t.add((const char *)comTmp[1].asString());
                        t.add((const char *)comTmp[2].asString());
                        t.add((const char *)comTmp[3].asString());
                        t.add((const char *)comTmp[4].asString());
                        t.endOfRow();
                    }
                    t.setAlignment(3, TextTable::Alignment::LEFT);
                    cout << t;
                }
                else if (podM == 6)
                { // Pregled OK
                    TextTable t('-', '|', '+');

                    cmd.setConnection(&con);
                    cmd.setCommandText("SELECT * FROM lista_proizvoda_posudba");
                    cmd.Execute();

                    cout << "~ ~ ~ Pregled za posudbu ~ ~ ~" << endl;
                    t.add("ID proizvoda");
                    t.add("Naziv");
                    t.add("Zanr");
                    t.add("Izdavac");
                    t.add("Platforma");
                    t.add("Cijena");
                    t.endOfRow();

                    while (cmd.FetchNext())
                    {
                        t.add((const char *)cmd[1].asString());
                        t.add((const char *)cmd[2].asString());
                        t.add((const char *)cmd[3].asString());
                        t.add((const char *)cmd[4].asString());
                        t.add((const char *)cmd[5].asString());
                        t.add((const char *)cmd[6].asString());
                        t.endOfRow();
                    }
                    t.setAlignment(3, TextTable::Alignment::LEFT);
                    cout << t;
                }
            }
            case 2:
            {
                int podM;
                cout << "~ ~ ~ Kupci ~ ~ ~" << endl;
                cout << "1. Pregled" << endl;             // ok
                cout << "2. Unos kupca" << endl;          // ok
                cout << "3. Vracanje igre" << endl;       // ok
                cout << "4. Broj aktivnih kupca" << endl; // ok
                cout << "~ ~ ~ " << endl;
                cout << "0. Natrag na glavni izbornik" << endl
                     << endl;
                cout << "Meni:";
                cin >> podM;
                cout << endl;

                if (podM == 1)
                { // pregled kupaca OK
                    TextTable t('-', '|', '+');

                    cmd.setConnection(&con);
                    cmd.setCommandText("SELECT * FROM lista_kupaca");
                    cmd.Execute();

                    cout << "~ ~ ~ Pregled kupaca ~ ~ ~" << endl;

                    t.add("ID kupca");
                    t.add("Ime");
                    t.add("Adresa");
                    t.add("Postanski br. i grad");
                    t.add("Telefon");
                    t.add("Drzava");
                    t.add("Br. racuna");
                    t.add("ID zaposlenika");
                    t.add("Ime zaposlenika");
                    t.endOfRow();

                    while (cmd.FetchNext())
                    {
                        t.add((const char *)cmd[1].asString());
                        t.add((const char *)cmd[2].asString());
                        t.add((const char *)cmd[3].asString());
                        t.add((const char *)cmd[4].asString());
                        t.add((const char *)cmd[5].asString());
                        t.add((const char *)cmd[6].asString());
                        t.add((const char *)cmd[7].asString());
                        t.add((const char *)cmd[8].asString());
                        t.add((const char *)cmd[9].asString());
                        t.endOfRow();
                    }
                    t.setAlignment(3, TextTable::Alignment::LEFT);
                    cout << t;
                }
                else if (podM == 2)
                { // Unos kupca OK
                    string KupacID, ZaposlenikID, Ime, Prezime, Email, Aktivan, Datum_Dolaska;

                    cout << "ID zaposlenika: ";
                    cin >> ZaposlenikID;
                    cout << endl
                         << "Ime: ";
                    cin >> Ime;
                    cout << endl
                         << "Prezime: ";
                    cin >> Prezime;
                    cout << endl
                         << "Email: ";
                    cin >> Email;
                    cout << endl
                         << "Aktivan: ";
                    cin >> Aktivan;
                    cout << endl
                         << "Datum dolaska: ";
                    cin >> Datum_Dolaska;

                    SACommand cmd(
                        &con,
                        "CALL Ubacivanje_Kupca(:1, :2, :3, :4, :5, :6)");

                    cmd << ZaposlenikID.c_str() << Ime.c_str() << Prezime.c_str()
                        << Email.c_str() << Aktivan.c_str() << Datum_Dolaska.c_str();

                    cmd.Execute();

                    cout << "Unos izvrsen!" << endl;
                }
                else if (podM == 3)
                { // Vracanje igre OK
                    string plt, plttmp;
                    int pID, posID, racID;

                    cout << "ID proizvoda: ";
                    cin >> pID;
                    cout << endl
                         << "ID poslovnice: ";
                    cin >> posID;
                    cout << endl
                         << "ID racuna: ";
                    cin >> racID;
                    cout << endl
                         << "Platforma: ";
                    cin >> plt;
                    getline(cin, plttmp);
                    plt = plt + plttmp;

                    SACommand cmd;
                    cmd.setConnection(&con);

                    cmd.setCommandText("Vracanje_Igre");

                    cmd.Param("ProizvodID").setAsNumeric() = pID + 0.0;
                    cmd.Param("PoslovnicaID").setAsNumeric() = posID + 0.0;
                    cmd.Param("RacunID").setAsNumeric() = posID + 0.0;
                    cmd.Param("Platforma").setAsString() = plt.c_str();
                    cmd.Execute();

                    cout << "Igra vracena!" << endl;
                }
                else if (podM == 4)
                { // Broj aktivnih kupaca OK

                    SACommand comTmp;
                    comTmp.setConnection(&con);
                    comTmp.setCommandText("SELECT broj_aktivnih_kupaca(@akt)");

                    comTmp.Execute();

                    comTmp.FetchNext();
                    cout << "Aktivnih: " << (const char *)comTmp[1].asString() << endl;
                }
                break;
            }
            // Poslovnica
            case 3:
            { // Poslovnice OK
                int podM;
                cout << "~ ~ ~ Poslovnice ~ ~ ~" << endl;
                cout << "1. Pregled" << endl;                // ok
                cout << "2. Posudeno po poslovnici" << endl; // ok
                cout << "3. Prodaja po poslovnici" << endl;  // ok
                cout << "~ ~ ~ " << endl;
                cout << "0. Natrag na glavni izbornik" << endl
                     << endl;
                cout << "Meni:";
                cin >> podM;
                cout << endl;

                if (podM == 1)
                { // Pregled OK
                    TextTable t('-', '|', '+');

                    cmd.setConnection(&con);
                    cmd.setCommandText("SELECT * FROM poslovnica");
                    cmd.Execute();

                    cout << "~ ~ ~ Poslovnice ~ ~ ~" << endl;
                    t.add("ID");
                    t.add("Grad");
                    t.add("Adresa");
                    t.add("Zupanija");
                    t.add("Postanski broj");
                    t.endOfRow();

                    while (cmd.FetchNext())
                    {
                        t.add((const char *)cmd[1].asString());
                        t.add((const char *)cmd[2].asString());
                        t.add((const char *)cmd[3].asString());
                        t.add((const char *)cmd[4].asString());
                        t.add((const char *)cmd[5].asString());
                        t.endOfRow();
                    }
                    t.setAlignment(3, TextTable::Alignment::LEFT);
                    cout << t << endl;
                }
                else if (podM == 2)
                { // Posudeno po poslovnici
                    TextTable t('-', '|', '+');

                    cmd.setConnection(&con);
                    cmd.setCommandText("SELECT * FROM posudeno_po_poslovnicama");
                    cmd.Execute();

                    cout << "~ ~ ~ Posudeno po poslovnici ~ ~ ~" << endl;
                    t.add("ID poslovnice");
                    t.add("Grad");
                    t.add("ID poslovode");
                    t.add("Ime poslovode");
                    t.add("Ukupno posudeno");
                    t.endOfRow();

                    while (cmd.FetchNext())
                    {
                        t.add((const char *)cmd[1].asString());
                        t.add((const char *)cmd[2].asString());
                        t.add((const char *)cmd[3].asString());
                        t.add((const char *)cmd[4].asString());
                        t.add((const char *)cmd[5].asString());
                        t.endOfRow();
                    }
                    t.setAlignment(3, TextTable::Alignment::LEFT);
                    cout << t << endl;
                }
                else if (podM == 3)
                { // Prodaja po poslovnici
                    TextTable t('-', '|', '+');

                    cmd.setConnection(&con);
                    cmd.setCommandText("SELECT * FROM prodaja_po_poslovnicama");
                    cmd.Execute();

                    cout << "~ ~ ~ Prodaja po poslovnici ~ ~ ~" << endl;
                    t.add("ID poslovnice");
                    t.add("Grad");
                    t.add("ID poslovode");
                    t.add("Ime poslovode");
                    t.add("Ukupno prodano");
                    t.endOfRow();

                    while (cmd.FetchNext())
                    {
                        t.add((const char *)cmd[1].asString());
                        t.add((const char *)cmd[2].asString());
                        t.add((const char *)cmd[3].asString());
                        t.add((const char *)cmd[4].asString());
                        t.add((const char *)cmd[5].asString());
                        t.endOfRow();
                    }
                    t.setAlignment(3, TextTable::Alignment::LEFT);
                    cout << t << endl;
                }

                break;
            }
            case 4:
            {
                int podM;
                cout << "~ ~ ~ Zaposlenici ~ ~ ~" << endl;
                cout << "1. Pregled" << endl;                    // ok
                cout << "2. Unos zaposlenika" << endl;           // ok
                cout << "3. Informacije zaposlenika" << endl;    // ok
                cout << "4. Promet zaposlenika" << endl;         // ok
                cout << "5. Rent zaposlenika" << endl;           // ok
                cout << "6. !Place zaposlenika!" << endl;        // ok
                cout << "7. !Korisnicko ime i lozinka!" << endl; // ok
                cout << "~ ~ ~ " << endl;
                cout << "0. Natrag na glavni izbornik" << endl
                     << endl;
                cout << "Meni:";
                cin >> podM;
                cout << endl;

                if (podM == 1)
                { // Pregled ok
                    TextTable t('-', '|', '+');

                    cmd.setConnection(&con);
                    cmd.setCommandText("SELECT * FROM lista_zaposlenika");
                    cmd.Execute();

                    t.add("ID zaposlenika");
                    t.add("Ime");
                    t.add("Adresa");
                    t.add("Grad");
                    t.add("Poslovnica");
                    t.add("Poslovoda");
                    t.endOfRow();

                    while (cmd.FetchNext())
                    {
                        t.add((const char *)cmd[1].asString());
                        t.add((const char *)cmd[2].asString());
                        t.add((const char *)cmd[3].asString());
                        t.add((const char *)cmd[4].asString());
                        t.add((const char *)cmd[5].asString());
                        t.add((const char *)cmd[6].asString());
                        t.endOfRow();
                    }
                    t.setAlignment(3, TextTable::Alignment::LEFT);
                    cout << t;
                }
                else if (podM == 2)
                { // Unos zaposlenika OK
                    string ID, PoslovodaSifra, PoslovnicaID, Grad_Stanovanja;
                    string Adresa, Ime, Prezime, Placa, Email, Korisnicko_ime, Sifra;

                    cout << "ID zaposlenika: ";
                    cin >> ID;
                    cout << endl
                         << "Sifra poslovode: ";
                    cin >> PoslovodaSifra;
                    cout << endl
                         << "ID poslovnice: ";
                    cin >> PoslovnicaID;
                    cout << endl
                         << "Grad stanovanja: ";
                    cin >> Grad_Stanovanja;
                    cout << endl
                         << "Adresa: ";
                    cin >> Adresa;
                    cout << endl
                         << "Ime: ";
                    cin >> Ime;
                    cout << endl
                         << "Prezime: ";
                    cin >> Prezime;
                    cout << endl
                         << "Placa: ";
                    cin >> Placa;
                    cout << endl
                         << "Email: ";
                    cin >> Email;
                    cout << endl
                         << "Korisnicko ime: ";
                    cin >> Korisnicko_ime;
                    cout << endl
                         << "Sifra: ";
                    cin >> Sifra;
                    SACommand cmd(
                        &con,
                        "INSERT INTO zaposlenik (ID, PoslovodaSifra, PoslovnicaID, Grad_Stanovanja, Adresa, Ime, Prezime, Placa, Email, Korisnicko_ime, Sifra) values (:1, :2, :3, :4, :5, :6, :7, :8, :9, :10, :11)");

                    cmd << ID.c_str() << PoslovodaSifra.c_str() << PoslovnicaID.c_str() << Grad_Stanovanja.c_str() << Adresa.c_str() << Ime.c_str() << Prezime.c_str() << Placa.c_str() << Email.c_str() << Korisnicko_ime.c_str() << Sifra.c_str();
                    cmd.Execute();

                    cout << "Unos izvrsen!" << endl;
                }
                else if (podM == 3)
                { // Informacije zaposlenika OK
                    TextTable t('-', '|', '+');
                    int zID;

                    cout << "ID zaposlenika: ";
                    cin >> zID;

                    SACommand comTmp;
                    comTmp.setConnection(&con);
                    comTmp.setCommandText("Zaposlenik_Informacije");

                    comTmp.Param("ZaposlenikID").setAsNumeric() = zID + 0.0;

                    comTmp.Execute();
                    comTmp.FetchNext();

                    t.add("Sifra poslovode");
                    t.add("Poslovoda ime");
                    t.add("Poslovnica grad");
                    t.add("Ime zaposlenika");
                    t.add("Email");
                    t.add("Grad stanovanja");
                    t.endOfRow();

                    t.add((const char *)comTmp[1].asString());
                    t.add((const char *)comTmp[2].asString());
                    t.add((const char *)comTmp[3].asString());
                    t.add((const char *)comTmp[4].asString());
                    t.add((const char *)comTmp[5].asString());
                    t.add((const char *)comTmp[6].asString());
                    t.endOfRow();

                    t.setAlignment(3, TextTable::Alignment::LEFT);
                    cout << t << endl;
                }
                else if (podM == 4)
                { // Promet zaposlenika OK
                    TextTable t('-', '|', '+');
                    int zID;

                    cout << "ID zaposlenika: ";
                    cin >> zID;

                    SACommand comTmp;
                    comTmp.setConnection(&con);
                    comTmp.setCommandText("Promet_Zaposlenika");
                    comTmp.Param("ZaposlenikID").setAsNumeric() = zID + 0.0;

                    comTmp.Execute();
                    comTmp.FetchNext();

                    t.add("Ukupni prihod");
                    t.add("ID");
                    t.add("Ime zaposlenika");
                    t.endOfRow();

                    t.add((const char *)comTmp[1].asString());
                    t.add((const char *)comTmp[2].asString());
                    t.add((const char *)comTmp[3].asString());
                    t.endOfRow();

                    t.setAlignment(3, TextTable::Alignment::LEFT);
                    cout << t << endl;
                }
                else if (podM == 5)
                { // Rent zaposlenika OK
                    TextTable t('-', '|', '+');
                    int zID;

                    cout << "ID zaposlenika: ";
                    cin >> zID;

                    SACommand comTmp;
                    comTmp.setConnection(&con);
                    comTmp.setCommandText("Zaposlenik_Rent");
                    comTmp.Param("ZaposlenikID").setAsNumeric() = zID + 0.0;

                    comTmp.Execute();
                    comTmp.FetchNext();

                    t.add("Ukupno posudeno");
                    t.add("ID");
                    t.add("Ime zaposlenika");
                    t.endOfRow();

                    t.add((const char *)comTmp[1].asString());
                    t.add((const char *)comTmp[2].asString());
                    t.add((const char *)comTmp[3].asString());
                    t.endOfRow();

                    t.setAlignment(3, TextTable::Alignment::LEFT);
                    cout << t << endl;
                }
                else if (podM == 6)
                { // Place zaposlenika ok
                    string pswdTmp;
                    cout << "Login sifra: ";
                    cin >> pswdTmp;

                    if (pswstr == pswdTmp)
                    {
                        TextTable t('-', '|', '+');

                        cmd.setConnection(&con);
                        cmd.setCommandText("SELECT * FROM place_zaposlenika");
                        cmd.Execute();

                        cout << "~ ~ ~ Place zaposlenika ~ ~ ~" << endl;
                        t.add("Ime");
                        t.add("Placa");
                        t.endOfRow();

                        while (cmd.FetchNext())
                        {
                            t.add((const char *)cmd[1].asString());
                            t.add((const char *)cmd[2].asString());
                            t.endOfRow();
                        }
                        t.setAlignment(3, TextTable::Alignment::LEFT);
                        cout << t;
                    }
                    else
                    {
                        cout << "Kriva lozinka" << endl;
                    }
                }
                else if (podM == 7)
                { // Korisnicko ime OK
                    string pswdTmp;
                    cout << "Login sifra: ";
                    cin >> pswdTmp;

                    if (pswstr == pswdTmp)
                    {
                        TextTable t('-', '|', '+');

                        cmd.setConnection(&con);
                        cmd.setCommandText("SELECT * FROM Korisnicko_ime_i_lozinka_zaposlenici");
                        cmd.Execute();

                        cout << "~ ~ ~ Korisnicko ime i lozinka ~ ~ ~" << endl;
                        t.add("Username");
                        t.add("lozinka");
                        t.endOfRow();

                        while (cmd.FetchNext())
                        {
                            t.add((const char *)cmd[1].asString());
                            t.add((const char *)cmd[2].asString());
                            t.endOfRow();
                        }
                        t.setAlignment(3, TextTable::Alignment::LEFT);
                        cout << t;
                    }
                    else
                    {
                        cout << "Kriva lozinka" << endl;
                    }
                }

                break;
            }
            case 5:
            {
                int podM;
                cout << "~ ~ ~ Poslovoda ~ ~ ~" << endl;
                cout << "1. Pregled" << endl;                    // OK
                cout << "2. Unos" << endl;                       // OK
                cout << "3. Podredeni" << endl;                  // OK
                cout << "4. !Korisnicko ime i lozinka!" << endl; // ok
                cout << "5. !Place poslovoda!" << endl;
                cout << "~ ~ ~ " << endl;
                cout << "0. Natrag na glavni izbornik" << endl
                     << endl;
                cout << "Meni:";
                cin >> podM;

                if (podM == 1)
                { // Pregled poslovode OK
                    TextTable t('-', '|', '+');

                    cmd.setConnection(&con);
                    cmd.setCommandText("SELECT * FROM poslovoda");
                    cmd.Execute();

                    t.add("ID poslovode");
                    t.add("Sifra poslovode");
                    t.add("ID poslovnice");
                    t.add("Ime");
                    t.add("Prezime");
                    t.add("Email");
                    t.endOfRow();

                    while (cmd.FetchNext())
                    {
                        t.add((const char *)cmd[1].asString());
                        t.add((const char *)cmd[2].asString());
                        t.add((const char *)cmd[3].asString());
                        t.add((const char *)cmd[5].asString());
                        t.add((const char *)cmd[6].asString());
                        t.add((const char *)cmd[8].asString());
                        t.endOfRow();
                    }
                    cout << "~ ~ ~ Pregled poslovoda ~ ~ ~" << endl;
                    t.setAlignment(3, TextTable::Alignment::LEFT);
                    cout << t;
                }
                else if (podM == 2)
                { // Unos poslovode OK
                    string ID, sifra, PoslovnicaID, Grad_Stanovanja;
                    string Adresa, Ime, Prezime, Placa, Email, Korisnicko_ime;

                    cout << "ID poslovode: ";
                    cin >> ID;
                    cout << endl
                         << "Sifra: ";
                    cin >> sifra;
                    cout << endl
                         << "ID poslovnice: ";
                    cin >> PoslovnicaID;
                    cout << endl
                         << "Adresa: ";
                    cin >> Adresa;
                    cout << endl
                         << "Ime: ";
                    cin >> Ime;
                    cout << endl
                         << "Prezime: ";
                    cin >> Prezime;
                    cout << endl
                         << "Placa: ";
                    cin >> Placa;
                    cout << endl
                         << "Email: ";
                    cin >> Email;
                    cout << endl
                         << "Korisnicko ime: ";
                    cin >> Korisnicko_ime;
                    SACommand cmd(
                        &con,
                        "INSERT INTO poslovoda (ID, sifra, PoslovnicaID, Adresa, Ime, Prezime, Placa, Email, Korisnicko_ime) values (:1, :2, :3, :4, :5, :6, :7, :8, :9)");

                    cmd << ID.c_str() << sifra.c_str() << PoslovnicaID.c_str() << Adresa.c_str() << Ime.c_str() << Prezime.c_str() << Placa.c_str() << Email.c_str() << Korisnicko_ime.c_str();
                    cmd.Execute();

                    cout << "Unos izvrsen!" << endl;
                }
                else if (podM == 3)
                { // Podredeni OK
                    int pID;
                    cout << "ID poslovode: ";
                    cin >> pID;
                    cout << endl;

                    SACommand comTmp;
                    comTmp.setConnection(&con);
                    comTmp.setCommandText("Poslovoda_Podredeni");

                    comTmp.Param("PoslovodaID").setAsNumeric() = pID + 0.0;
                    comTmp.Execute();
                    comTmp.FetchNext();

                    cout << "Ime: " << (const char *)comTmp[1].asString() << endl;
                    cout << "Podredeno: " << (const char *)comTmp[2].asString() << endl;
                }
                else if (podM == 4)
                {
                    string pswdTmp;
                    cout << "Login sifra: ";
                    cin >> pswdTmp;

                    if (pswstr == pswdTmp)
                    {
                        TextTable t('-', '|', '+');

                        cmd.setConnection(&con);
                        cmd.setCommandText("SELECT * FROM Korisnicko_ime_i_lozinka_poslodavci");
                        cmd.Execute();

                        cout << "~ ~ ~ Korisnicko ime i lozinka ~ ~ ~" << endl;
                        t.add("Username");
                        t.add("lozinka");
                        t.endOfRow();

                        while (cmd.FetchNext())
                        {
                            t.add((const char *)cmd[1].asString());
                            t.add((const char *)cmd[2].asString());
                            t.endOfRow();
                        }
                        t.setAlignment(3, TextTable::Alignment::LEFT);
                        cout << t;
                    }
                    else
                    {
                        cout << "Kriva lozinka" << endl;
                    }
                }
                else if (podM == 5)
                {
                    string pswdTmp;
                    cout << "Login sifra: ";
                    cin >> pswdTmp;

                    if (pswstr == pswdTmp)
                    {
                        TextTable t('-', '|', '+');

                        cmd.setConnection(&con);
                        cmd.setCommandText("SELECT * FROM Place_poslodavaca");
                        cmd.Execute();

                        cout << "~ ~ ~ Placa poslovode ~ ~ ~" << endl;
                        t.add("Ime");
                        t.add("Placa");
                        t.endOfRow();

                        while (cmd.FetchNext())
                        {
                            t.add((const char *)cmd[1].asString());
                            t.add((const char *)cmd[2].asString());
                            t.endOfRow();
                        }
                        t.setAlignment(3, TextTable::Alignment::LEFT);
                        cout << t;
                    }
                    else
                    {
                        cout << "Kriva lozinka" << endl;
                    }
                }

                break;
            }
            case 6:
            {
                int podM;
                cout << "~ ~ ~ Stanje Poslovnice ~ ~ ~" << endl;
                cout << endl
                     << "1. Poslovnica Nintendo" << endl; // ok
                cout << "2. Poslovnica PS4" << endl;      // ok
                cout << "3. Poslovnica XBOX" << endl;     // ok
                cout << "~ ~ ~ " << endl;
                cout << "0. Natrag na glavni izbornik" << endl
                     << endl;

                cout << "Meni:";
                cin >> podM;

                if (podM == 1)
                { // Poslovnica Nintendo
                    int submenu;
                    cout << "~ ~ ~ Poslovnica Nintendo ~ ~ ~" << endl;
                    cout << "1. Provjera stanja" << endl;        // OK
                    cout << "2. Ukupni visak proizvoda" << endl; // OK
                    cout << "3. Kolicina proizvoda" << endl;     // Ok
                    cout << "4. Dostupnost proizvoda" << endl;   // OK
                    cout << "~ ~ ~ " << endl;
                    cout << "0. Natrag na glavni izbornik" << endl
                         << endl;

                    cout << "Meni:";
                    cin >> submenu;

                    if (submenu == 1)
                    { // Provjera stanja
                        TextTable t('-', '|', '+');

                        cmd.setConnection(&con);
                        cmd.setCommandText("CALL Provjera_Stanja('stanje_poslovnica_nintendo', @proID, @posID, @kol);");
                        cmd.Execute();

                        cout << "~ ~ ~ Stanje poslovnice Nintendo ~ ~ ~" << endl;
                        t.add("ID proizvoda");
                        t.add("sifraPoslNIntendo");
                        t.add("kolicina");
                        t.endOfRow();

                        while (cmd.FetchNext())
                        {
                            t.add((const char *)cmd[1].asString());
                            t.add((const char *)cmd[2].asString());
                            t.add((const char *)cmd[3].asString());
                            t.endOfRow();
                        }
                        t.setAlignment(3, TextTable::Alignment::LEFT);
                        cout << t;
                    }
                    else if (submenu == 2)
                    { // Ukupni visak proizvoda
                        SACommand comTmp;
                        comTmp.setConnection(&con);
                        comTmp.setCommandText("SELECT broj_visaka_proizvoda_nintendo(@kol)");

                        comTmp.Execute();
                        comTmp.FetchNext();

                        cout << "Visak proizvoda za poslovnicu Nintendo: " << (const char *)comTmp[1].asString() << endl
                             << endl;
                    }
                    if (submenu == 3)
                    { // Broj proizvoda
                        SACommand comTmp;
                        comTmp.setConnection(&con);
                        comTmp.setCommandText("SELECT broj_proizvoda_nintendo(1)");

                        comTmp.Execute();
                        comTmp.FetchNext();
                        cout << "Kolicina proizvoda Nintendo: " << (const char *)comTmp[1].asString() << endl
                             << endl;
                    }
                    if (submenu == 4)
                    { // Broj dostupnih proizvoda
                        SACommand comTmp;
                        comTmp.setConnection(&con);
                        comTmp.setCommandText("SELECT broj_dostupnih_proizvoda_nintendo(@dost)");

                        comTmp.Execute();
                        comTmp.FetchNext();
                        cout << "Dostupno proizvoda Nintendo: " << (const char *)comTmp[1].asString() << endl
                             << endl;
                    }
                }
                if (podM == 2)
                {
                    int submenu;
                    cout << "~ ~ ~ Poslovnica PS4 ~ ~ ~" << endl;
                    cout << "1. Provjera stanja" << endl;        // OK
                    cout << "2. Ukupni visak proizvoda" << endl; // OK
                    cout << "3. Kolicina proizvoda" << endl;     // OK
                    cout << "4. Dostupnost proizvoda" << endl;   // OK
                    cout << "~ ~ ~ " << endl;
                    cout << "0. Natrag na glavni izbornik" << endl
                         << endl;

                    cout << "Meni:";
                    cin >> submenu;

                    if (submenu == 1)
                    { // Provjera stanja OK
                        TextTable t('-', '|', '+');

                        cmd.setConnection(&con);
                        cmd.setCommandText("SELECT * FROM stanje_poslovnica_ps4");
                        cmd.Execute();

                        cout << "~ ~ ~ Stanje poslovnice PS4 ~ ~ ~" << endl;
                        t.add("ID proizvoda");
                        t.add("Naziv");
                        t.add("SifraPoslPS4");
                        t.add("Dostupnost");
                        t.add("kolicina");
                        t.endOfRow();

                        while (cmd.FetchNext())
                        {
                            t.add((const char *)cmd[1].asString());
                            t.add((const char *)cmd[2].asString());
                            t.add((const char *)cmd[3].asString());
                            t.add((const char *)cmd[4].asString());
                            t.add((const char *)cmd[5].asString());
                            t.endOfRow();
                        }
                        t.setAlignment(3, TextTable::Alignment::LEFT);
                        cout << t;
                    }
                    if (submenu == 2)
                    { // Ukupni visak proizvoda
                        SACommand comTmp;
                        comTmp.setConnection(&con);
                        comTmp.setCommandText("SELECT broj_visaka_proizvoda_ps4(@kol)");

                        comTmp.Execute();
                        comTmp.FetchNext();
                        cout << "Visak proizvoda za poslovnicu PS4: "
                             << (const char *)comTmp[1].asString() << endl
                             << endl;
                    }
                    if (submenu == 3)
                    { // Broj proizvoda
                        SACommand comTmp;
                        comTmp.setConnection(&con);
                        comTmp.setCommandText("SELECT broj_proizvoda_ps4(1)");

                        comTmp.Execute();
                        comTmp.FetchNext();
                        cout << "Kolicina proizvoda PS4: " << (const char *)comTmp[1].asString() << endl
                             << endl;
                    }
                    if (submenu == 4)
                    { // Broj dostupnih proizvoda
                        SACommand comTmp;
                        comTmp.setConnection(&con);
                        comTmp.setCommandText("SELECT broj_dostupnih_proizvoda_ps4(@dost)");

                        comTmp.Execute();
                        comTmp.FetchNext();
                        cout << "Dostupno proizvoda PS4: " << (const char *)comTmp[1].asString() << endl
                             << endl;
                    }
                }
                if (podM == 3)
                {
                    int submenu;
                    cout << "~ ~ ~ Poslovnica XBOX ~ ~ ~" << endl;
                    cout << "1. Provjera stanja" << endl;        // OK
                    cout << "2. Ukupni visak proizvoda" << endl; // OK
                    cout << "3. Kolicina proizvoda" << endl;     // OK
                    cout << "4. Dostupnost proizvoda" << endl;   // OK
                    cout << "~ ~ ~ " << endl;
                    cout << "0. Natrag na glavni izbornik" << endl
                         << endl;

                    cout << "Meni:";
                    cin >> submenu;

                    if (submenu == 1)
                    { // Provjera stanja OK
                        TextTable t('-', '|', '+');

                        cmd.setConnection(&con);
                        cmd.setCommandText("SELECT * FROM stanje_poslovnica_xbox");
                        cmd.Execute();

                        cout << "~ ~ ~ Stanje poslovnice XBOX ~ ~ ~" << endl;
                        t.add("ID proizvoda");
                        t.add("Naziv");
                        t.add("SifraPoslXBOX");
                        t.add("Dostupnost");
                        t.add("kolicina");
                        t.endOfRow();

                        while (cmd.FetchNext())
                        {
                            t.add((const char *)cmd[1].asString());
                            t.add((const char *)cmd[2].asString());
                            t.add((const char *)cmd[3].asString());
                            t.add((const char *)cmd[4].asString());
                            t.add((const char *)cmd[5].asString());
                            t.endOfRow();
                        }
                        t.setAlignment(3, TextTable::Alignment::LEFT);
                        cout << t;
                    }
                    if (submenu == 2)
                    { // Ukupni visak proizvoda
                        SACommand comTmp;
                        comTmp.setConnection(&con);
                        comTmp.setCommandText("SELECT broj_visaka_proizvoda_xbox(@kol)");

                        comTmp.Execute();
                        comTmp.FetchNext();
                        cout << "Visak proizvoda za poslovnicu XBOX: "
                             << (const char *)comTmp[1].asString() << endl
                             << endl;
                    }
                    if (submenu == 3)
                    { // Broj proizvoda
                        SACommand comTmp;
                        comTmp.setConnection(&con);
                        comTmp.setCommandText("SELECT broj_proizvoda_xbox(1)");

                        comTmp.Execute();
                        comTmp.FetchNext();
                        cout << "Kolicina proizvoda XBOX: " << (const char *)comTmp[1].asString() << endl
                             << endl;
                    }
                    if (submenu == 4)
                    { // Broj dostupnih proizvoda
                        SACommand comTmp;
                        comTmp.setConnection(&con);
                        comTmp.setCommandText("SELECT broj_dostupnih_proizvoda_xbox(@dost)");

                        comTmp.Execute();
                        comTmp.FetchNext();
                        cout << "Dostupno proizvoda XBOX: " << (const char *)comTmp[1].asString() << endl
                             << endl;
                    }
                }

                break;
            }
            case 7:
            {
                int podM;
                cout << "~ ~ ~ Racuni ~ ~ ~" << endl;
                cout << "1. Pregled" << endl;           // ok
                cout << "2. Unos" << endl;              // ok
                cout << "3. Ukupan promet" << endl;     // ok
                cout << "4. Prodano u mjesecu" << endl; // ok
                cout << "~ ~ ~ " << endl;
                cout << "0. Natrag na glavni izbornik" << endl
                     << endl;
                cout << "Meni:";
                cin >> podM;

                if (podM == 1)
                { // Pregled racuna OK
                    TextTable t('-', '|', '+');

                    cmd.setConnection(&con);
                    cmd.setCommandText("SELECT * FROM racun");
                    cmd.Execute();

                    t.add("ID racuna");
                    t.add("ID zaposlenika");
                    t.add("ID proizvoda");
                    t.add("ID poslovnice");
                    t.add("Cijena");
                    t.add("Kolicina");
                    t.add("Datum transakcije");
                    t.endOfRow();

                    while (cmd.FetchNext())
                    {
                        t.add((const char *)cmd[1].asString());
                        t.add((const char *)cmd[3].asString());
                        t.add((const char *)cmd[4].asString());
                        t.add((const char *)cmd[5].asString());
                        t.add((const char *)cmd[7].asString());
                        t.add((const char *)cmd[8].asString());
                        t.add((const char *)cmd[10].asString());
                        t.endOfRow();
                    }
                    t.setAlignment(3, TextTable::Alignment::LEFT);
                    cout << t;
                }
                else if (podM == 2)
                { // Unos racuna
                    string KupacID, ZaposlenikID, ProizvodID, PoslovnicaID, Platforma;
                    string Cijena, Kolicina, Posudeno_Prodano, Datum_placanja;

                    cout << "ID kupca: ";
                    cin >> KupacID;
                    cout << endl
                         << "ID zaposlenika: ";
                    cin >> ZaposlenikID;
                    cout << endl
                         << "ID proizvoda: ";
                    cin >> ProizvodID;
                    cout << endl
                         << "ID poslovnice: ";
                    cin >> PoslovnicaID;
                    cout << endl
                         << "Platforma: ";
                    cin >> Platforma;
                    cout << endl
                         << "Cijena: ";
                    cin >> Cijena;
                    cout << endl
                         << "Kolicina: ";
                    cin >> Kolicina;
                    cout << endl
                         << "Posudeno Prodano : ";
                    cin >> Posudeno_Prodano;
                    cout << endl
                         << "Datum placanja: ";
                    cin >> Datum_placanja;

                    SACommand cmd(
                        &con,
                        "CALL Ubacivanje_Racuna(:1, :2, :3, :4, :5, :6, :7, :8, :9)");

                    cmd << KupacID.c_str() << ZaposlenikID.c_str() << ProizvodID.c_str() << PoslovnicaID.c_str() << Platforma.c_str() << Cijena.c_str() << Kolicina.c_str() << Posudeno_Prodano.c_str() << Datum_placanja.c_str();
                    cmd.Execute();

                    cout << "Unos izvrsen!" << endl;
                }
                else if (podM == 3)
                { // Ukupan promet
                    SACommand comTmp;
                    comTmp.setConnection(&con);
                    comTmp.setCommandText("SELECT ukupan_promet(1)");

                    comTmp.Execute();
                    comTmp.FetchNext();
                    cout << "Ukupan promet: " << (const char *)comTmp[1].asString() << endl;
                }
                else if (podM == 4)
                { // Promet u mjesecu
                    TextTable tmp('-', '|', '+');
                    string mjesec;

                    cout << "Unesite mjesec: ";
                    cin >> mjesec;
                    cout << endl;
                    mjesec = "-" + mjesec + "-";

                    SACommand comTmpp;
                    comTmpp.setConnection(&con);
                    comTmpp.setCommandText("call Prodane_Igre_U_Mjesecu(:1, @pID, @Pnaz)");

                    comTmpp << mjesec.c_str();
                    comTmpp.Execute();

                    tmp.add("ID proizvoda");
                    tmp.add("Naziv");
                    tmp.add("Datum transakcije");
                    tmp.endOfRow();

                    while (comTmpp.FetchNext())
                    {
                        tmp.add((const char *)comTmpp[1].asString());
                        tmp.add((const char *)comTmpp[2].asString());
                        tmp.add((const char *)comTmpp[3].asString());
                        tmp.endOfRow();
                    }
                    tmp.setAlignment(3, TextTable::Alignment::LEFT);
                    cout << tmp;
                }

                break;
            }
            case 8:
            {
                int podM;
                cout << "~ ~ ~ Ostale relacije ~ ~ ~" << endl;
                cout << "1. Adrese" << endl;       // OK
                cout << "2. Narudzbenice" << endl; // OK
                cout << "3. Posudeno" << endl;     // OK
                cout << "4. Prodano" << endl;      // OK
                cout << "5. Rezije" << endl;
                cout << "~ ~ ~ " << endl;
                cout << "0. Natrag na glavni izbornik" << endl
                     << endl;
                cout << "Meni:";
                cin >> podM;

                if (podM == 1)
                { // Adrese
                    int m1;
                    cout << "~ ~ ~ Adrese ~ ~ ~" << endl;
                    cout << "1. Pregled" << endl; // ok
                    cout << "2. Unos" << endl;
                    cout << "3. Brisanje" << endl;
                    cout << "~ ~ ~ " << endl;
                    cout << "0. Natrag na glavni izbornik" << endl
                         << endl;

                    cout << "Meni:";
                    cin >> m1;

                    if (m1 == 1)
                    { // Pregled adresa OK
                        TextTable t('-', '|', '+');

                        cmd.setConnection(&con);
                        cmd.setCommandText("SELECT * FROM adresa");
                        cmd.Execute();

                        cout << endl
                             << "~ ~ ~ Pregled Adresa ~ ~ ~" << endl;
                        t.add("ID kupca");
                        t.add("Adresa");
                        t.add("Grad");
                        t.add("Drzava");
                        t.add("Broj telefona");
                        t.endOfRow();

                        while (cmd.FetchNext())
                        {
                            t.add((const char *)cmd[1].asString());
                            t.add((const char *)cmd[2].asString());
                            t.add((const char *)cmd[3].asString());
                            t.add((const char *)cmd[4].asString());
                            t.add((const char *)cmd[5].asString());
                            t.endOfRow();
                        }
                        t.setAlignment(3, TextTable::Alignment::LEFT);
                        cout << t;
                    }
                    else if (m1 == 2)
                    { // Unos Adrese
                        string KupacID, Adresa, Grad, Drzava, Broj_telefona;
                        string tmp;

                        cout << "ID kupca: ";
                        cin >> KupacID;
                        cout << endl
                             << "Adresa: ";
                        cin >> Adresa;
                        getline(cin, tmp);
                        Adresa += tmp;
                        cout << endl
                             << "Grad: ";
                        cin >> Grad;
                        getline(cin, tmp);
                        Grad += tmp;
                        cout << endl
                             << "Drzava: ";
                        cin >> Drzava;
                        cout << endl
                             << "Broj_telefona: ";
                        cin >> Broj_telefona;
                        getline(cin, tmp);
                        Broj_telefona += tmp;

                        SACommand cmd(
                            &con,
                            "INSERT INTO adresa (KupacID, Adresa, Grad, Drzava, Broj_telefona) values (:1, :2, :3, :4, :5)");

                        cmd << KupacID.c_str() << Adresa.c_str() << Grad.c_str() << Drzava.c_str() << Broj_telefona.c_str();
                        cmd.Execute();

                        cout << "Unos izvrsen!" << endl;
                    }
                    else if (m1 == 3)
                    { // Brisanje Adrese OK
                        string ID;
                        cout << "ID adrese za brisanje: ";
                        cin >> ID;

                        cmd.setConnection(&con);
                        cmd.setCommandText("DELETE FROM adresa WHERE KupacID = :1");
                        cmd << ID.c_str();
                        cmd.Execute();

                        cout << "Narudzbenica je izbrisana!" << endl;
                    }
                }
                if (podM == 2)
                { // Narudzbenice
                    int m1;
                    cout << "~ ~ ~ Narudzbenice ~ ~ ~" << endl;
                    cout << "1. Pregled" << endl;  // ok
                    cout << "2. Unos" << endl;     // ok
                    cout << "3. Brisanje" << endl; // ok
                    cout << "~ ~ ~ " << endl;
                    cout << "0. Natrag na glavni izbornik" << endl
                         << endl;

                    cout << "Meni:";
                    cin >> m1;

                    if (m1 == 1)
                    { // Pregled narudzbenica OK
                        TextTable t('-', '|', '+');

                        cmd.setConnection(&con);
                        cmd.setCommandText("SELECT * FROM narudzbenice");
                        cmd.Execute();

                        cout << endl
                             << "~ ~ ~ Pregled Narudzbenica ~ ~ ~" << endl;
                        t.add("ID narudzbenice");
                        t.add("ID proizvoda");
                        t.add("ID poslovnice");
                        t.add("Platforma");
                        t.endOfRow();

                        while (cmd.FetchNext())
                        {
                            t.add((const char *)cmd[1].asString());
                            t.add((const char *)cmd[2].asString());
                            t.add((const char *)cmd[3].asString());
                            t.add((const char *)cmd[4].asString());
                            t.endOfRow();
                        }
                        t.setAlignment(3, TextTable::Alignment::LEFT);
                        cout << t;
                    }
                    else if (m1 == 2)
                    { // Unos Narudzbenice OK
                        string ID, ProizvodID, PoslovnicaID, Platforma, tmp;

                        cout << "ID narudzbenice: ";
                        cin >> ID;
                        cout << endl
                             << "ID proizvoda: ";
                        cin >> ProizvodID;
                        cout << endl
                             << "ID poslovnice: ";
                        cin >> PoslovnicaID;
                        cout << endl
                             << "Platforma: ";
                        cin >> Platforma;
                        getline(cin, tmp);
                        Platforma += tmp;

                        SACommand cmd(
                            &con,
                            "INSERT INTO narudzbenice (ID, ProizvodID, PoslovnicaID, Platforma) values (:1, :2, :3, :4)");

                        cmd << ID.c_str() << ProizvodID.c_str() << PoslovnicaID.c_str() << Platforma.c_str();
                        cmd.Execute();

                        cout << "Unos izvrsen!" << endl;
                    }
                    else if (m1 == 3)
                    { // Brisanje Narudzbenice OK
                        string ID;
                        cout << "ID narudzbenice za brisanje: ";
                        cin >> ID;

                        cmd.setConnection(&con);
                        cmd.setCommandText("DELETE FROM narudzbenice WHERE ID = :1");
                        cmd << ID.c_str();
                        cmd.Execute();

                        cout << "Narudzbenica je izbrisana!" << endl;
                    }
                }
                if (podM == 3)
                { // Posudeno OK
                    int m1;
                    cout << "~ ~ ~ Posudeno ~ ~ ~" << endl;
                    cout << "1. Pregled" << endl;  // ok
                    cout << "2. Unos" << endl;     // ok
                    cout << "3. Brisanje" << endl; // ok
                    cout << "~ ~ ~ " << endl;
                    cout << "0. Natrag na glavni izbornik" << endl
                         << endl;

                    cout << "Meni:";
                    cin >> m1;

                    if (m1 == 1)
                    { // Pregled posudenog
                        TextTable t('-', '|', '+');

                        cmd.setConnection(&con);
                        cmd.setCommandText("SELECT * FROM posudeno");
                        cmd.Execute();

                        cout << endl
                             << "~ ~ ~ Pregled Posudenog ~ ~ ~" << endl;
                        t.add("ID posudenog");
                        t.add("ID proizvoda");
                        t.add("ID racuna");
                        t.add("Datum posudbe");
                        t.add("Datum roka");
                        t.add("Cijena posudbe");
                        t.add("ID poslovnice");
                        t.add("Platforma");
                        t.endOfRow();

                        while (cmd.FetchNext())
                        {
                            t.add((const char *)cmd[1].asString());
                            t.add((const char *)cmd[2].asString());
                            t.add((const char *)cmd[3].asString());
                            t.add((const char *)cmd[4].asString());
                            t.add((const char *)cmd[5].asString());
                            t.add((const char *)cmd[6].asString());
                            t.add((const char *)cmd[7].asString());
                            t.add((const char *)cmd[8].asString());
                            t.endOfRow();
                        }
                        t.setAlignment(3, TextTable::Alignment::LEFT);
                        cout << t;
                    }
                    else if (m1 == 2)
                    { // Unos Posudenog OK
                        string ID, ProizvodID, RacunID, datum_posudbe;
                        string datum_roka, cijena_posudbe, poslovnicaid, Platforma, tmp;

                        cout << "ID posudenog: ";
                        cin >> ID;
                        cout << endl
                             << "ID proizvoda: ";
                        cin >> ProizvodID;
                        cout << endl
                             << "ID racuna: ";
                        cin >> RacunID;
                        cout << endl
                             << "Datum posudbe: ";
                        cin >> datum_posudbe;
                        cout << "Datum roka: ";
                        cin >> datum_roka;
                        cout << endl
                             << "Cijena posudbe: ";
                        cin >> cijena_posudbe;
                        cout << endl
                             << "ID poslovnice: ";
                        cin >> poslovnicaid;
                        cout << endl
                             << "Datum posudbe: ";
                        cin >> Platforma;
                        getline(cin, tmp);
                        Platforma += tmp;

                        SACommand cmd(
                            &con,
                            "INSERT INTO narudzbenice (ID, ProizvodID, RacunID, datum_posudbe, datum_roka, cijena_posudbe, poslovnicaid, Platforma) values (:1, :2, :3, :4, :5, :6, :7, :8)");

                        cmd << ID.c_str() << ProizvodID.c_str() << RacunID.c_str() << datum_posudbe.c_str() << datum_roka.c_str(), cijena_posudbe.c_str(), poslovnicaid.c_str(), Platforma.c_str();
                        cmd.Execute();

                        cout << "Unos izvrsen!" << endl;
                    }
                    else if (m1 == 3)
                    { // Brisanje Posudenog OK
                        string ID;
                        cout << "ID posudenog za brisanje: ";
                        cin >> ID;

                        cmd.setConnection(&con);
                        cmd.setCommandText("DELETE FROM posudeno WHERE ID = :1");
                        cmd << ID.c_str();
                        cmd.Execute();

                        cout << "Posudeno stavka je izbrisana!" << endl;
                    }
                }
                if (podM == 4)
                { // Prodano
                    int m1;
                    cout << "~ ~ ~ Prodano ~ ~ ~" << endl;
                    cout << "1. Pregled" << endl;  // ok
                    cout << "2. Unos" << endl;     // ok
                    cout << "3. Brisanje" << endl; // ok
                    cout << "~ ~ ~ " << endl;
                    cout << "0. Natrag na glavni izbornik" << endl
                         << endl;

                    cout << "Meni:";
                    cin >> m1;

                    if (m1 == 1)
                    { // Pregled prodanog OK
                        TextTable t('-', '|', '+');

                        cmd.setConnection(&con);
                        cmd.setCommandText("SELECT * FROM prodano");
                        cmd.Execute();

                        cout << endl
                             << "~ ~ ~ Pregled Prodanog ~ ~ ~" << endl;
                        t.add("ID prodanog");
                        t.add("ID proizvoda");
                        t.add("ID racuna");
                        t.add("Kolicina");
                        t.add("Cijena");
                        t.add("Platforma");
                        t.add("ID poslovnice");
                        t.endOfRow();

                        while (cmd.FetchNext())
                        {
                            t.add((const char *)cmd[1].asString());
                            t.add((const char *)cmd[2].asString());
                            t.add((const char *)cmd[3].asString());
                            t.add((const char *)cmd[4].asString());
                            t.add((const char *)cmd[5].asString());
                            t.add((const char *)cmd[6].asString());
                            t.add((const char *)cmd[7].asString());
                            t.endOfRow();
                        }
                        t.setAlignment(3, TextTable::Alignment::LEFT);
                        cout << t;
                    }
                    else if (m1 == 2)
                    { // Unos Prodanog OK
                        string ID, ProizvodID, RacunID, Kolicina;
                        string cijena, Platforma, PoslovnicaID, tmp;

                        cout << "ID posudenog: ";
                        cin >> ID;
                        cout << endl
                             << "ID proizvoda: ";
                        cin >> ProizvodID;
                        cout << endl
                             << "ID racuna: ";
                        cin >> RacunID;
                        cout << endl
                             << "Datum posudbe: ";
                        cin >> Kolicina;
                        cout << "Datum roka: ";
                        cin >> cijena;
                        getline(cin, tmp);
                        cijena += tmp;
                        cout << endl
                             << "Cijena posudbe: ";
                        cin >> Platforma;
                        getline(cin, tmp);
                        Platforma += tmp;
                        cout << endl
                             << "ID poslovnice: ";
                        cin >> PoslovnicaID;

                        SACommand cmd(
                            &con,
                            "INSERT INTO prodano (ID, ProizvodID, RacunID, Kolicina, cijena, Platforma, PoslovnicaID) values (:1, :2, :3, :4, :5, :6, :7)");

                        cmd << ID.c_str() << ProizvodID.c_str() << RacunID.c_str() << Kolicina.c_str() << cijena.c_str(), Platforma.c_str(), PoslovnicaID.c_str();
                        cmd.Execute();

                        cout << "Unos izvrsen!" << endl;
                    }
                    else if (m1 == 3)
                    { // Brisanje Narudzbenice OK
                        string ID;
                        cout << "ID prodanog za brisanje: ";
                        cin >> ID;

                        cmd.setConnection(&con);
                        cmd.setCommandText("DELETE FROM prodano WHERE ID = :1");
                        cmd << ID.c_str();
                        cmd.Execute();

                        cout << "Prodano stavka je izbrisana!" << endl;
                    }
                }
                if (podM == 5)
                { // Rezije
                    int m1;
                    cout << "~ ~ ~ Rezije ~ ~ ~" << endl;
                    cout << "1. Pregled" << endl;         // ok
                    cout << "2. Unos" << endl;            // ok
                    cout << "3. Brisanje" << endl;        // ok
                    cout << "4. Mjesecne rezije" << endl; // OK
                    cout << "~ ~ ~ " << endl;
                    cout << "0. Natrag na glavni izbornik" << endl
                         << endl;

                    cout << "Meni:";
                    cin >> m1;

                    if (m1 == 1)
                    { // Pregled rezija OK
                        TextTable t('-', '|', '+');

                        cmd.setConnection(&con);
                        cmd.setCommandText("SELECT * FROM rezije");
                        cmd.Execute();

                        cout << endl
                             << "~ ~ ~ Pregled Rezija ~ ~ ~" << endl;
                        t.add("ID");
                        t.add("ID poslovnice");
                        t.add("Godina");
                        t.add("Mjesec");
                        t.add("Najamnina");
                        t.add("Struja");
                        t.add("Voda");
                        t.add("Plin");
                        t.add("Internet");
                        t.add("Telefon");
                        t.endOfRow();

                        while (cmd.FetchNext())
                        {
                            t.add((const char *)cmd[1].asString());
                            t.add((const char *)cmd[2].asString());
                            t.add((const char *)cmd[3].asString());
                            t.add((const char *)cmd[4].asString());
                            t.add((const char *)cmd[5].asString());
                            t.add((const char *)cmd[6].asString());
                            t.add((const char *)cmd[7].asString());
                            t.add((const char *)cmd[8].asString());
                            t.add((const char *)cmd[9].asString());
                            t.add((const char *)cmd[10].asString());
                            t.endOfRow();
                        }
                        t.setAlignment(3, TextTable::Alignment::LEFT);
                        cout << t;
                    }
                    else if (m1 == 2)
                    { // Unos Rezija OK
                        string ID, PoslovnicaID, Godina, Mjesec;
                        string Najamnina, Struja, Voda, Plin, Internet, Telefon;

                        cout << "ID: ";
                        cin >> ID;
                        cout << endl
                             << "ID poslovnice: ";
                        cin >> PoslovnicaID;
                        cout << endl
                             << "Godina: ";
                        cin >> Godina;
                        cout << endl
                             << "Mjesec: ";
                        cin >> Mjesec;
                        cout << endl
                             << "Najamnina: ";
                        cin >> Najamnina;
                        cout << endl
                             << "Struja: ";
                        cin >> Struja;
                        cout << endl
                             << "Voda: ";
                        cin >> Voda;
                        cout << endl
                             << "Plin: ";
                        cin >> Plin;
                        cout << endl
                             << "Internet: ";
                        cin >> Internet;
                        cout << endl
                             << "Telefon: ";
                        cin >> Telefon;

                        SACommand cmd(
                            &con,
                            "INSERT INTO rezije (ID, PoslovnicaID, Godina, Mjesec, Najamnina, Struja, Voda, Plin, Internet, Telefon) values (:1, :2, :3, :4, :5, :6, :7, :8, :9, :10)");

                        cmd << ID.c_str() << PoslovnicaID.c_str() << Godina.c_str() << Mjesec.c_str() << Najamnina.c_str() << Struja.c_str() << Voda.c_str() << Plin.c_str() << Internet.c_str() << Telefon.c_str();
                        cmd.Execute();

                        cout << "Unos izvrsen!" << endl;
                    }
                    else if (m1 == 3)
                    { // Brisanje rezije OK
                        string ID;
                        cout << "ID rezije za brisanje: ";
                        cin >> ID;

                        cmd.setConnection(&con);
                        cmd.setCommandText("DELETE FROM rezije WHERE ID = :1");
                        cmd << ID.c_str();
                        cmd.Execute();

                        cout << "Odabrana rezija je izbrisana!" << endl;
                    }
                    else if (m1 == 4)
                    { // Mjesecne rezije OK
                        TextTable t('-', '|', '+');
                        int pID;
                        string mjs, god;

                        cout << "ID poslovnice: ";
                        cin >> pID;
                        cout << endl
                             << "Mjesec: ";
                        cin >> mjs;
                        cout << endl
                             << "Godina: ";
                        cin >> god;
                        cout << endl
                             << endl;

                        god = god + ".";

                        SACommand comTmp;
                        comTmp.setConnection(&con);
                        comTmp.setCommandText("Mjesecne_Rezije");

                        comTmp.Param("PoslovnicaVar").setAsNumeric() = pID + 0.0;
                        comTmp.Param("MjesecVar").setAsString() = mjs.c_str();
                        comTmp.Param("GodinaVar").setAsString() = god.c_str();

                        comTmp.Execute();
                        comTmp.FetchNext();

                        t.add("ID poslovnice");
                        t.add("Mjesec");
                        t.add("Godina");
                        t.add("Ukupni troskovi");
                        t.endOfRow();

                        t.add((const char *)comTmp[1].asString());
                        t.add((const char *)comTmp[2].asString());
                        t.add((const char *)comTmp[3].asString());
                        t.add((const char *)comTmp[4].asString());
                        t.endOfRow();

                        t.setAlignment(3, TextTable::Alignment::LEFT);
                        cout << t;
                    }
                }
            }
            break;

            default:
                // Disconnect is optional
                // autodisconnect will occur in destructor if needed
                con.Disconnect();
                cout << "Veza prekinuta!" << endl;
                return 0; // Izlaz iz petlje
            }
        }
    }

    catch (SAException &x)
    {
        // SAConnection::Rollback()
        // can also throw an exception
        // (if a network error for example),
        // we will be ready
        try
        {
            // on error rollback changes
            con.Rollback();
        }
        catch (SAException &)
        {
        }
        // print error message
        printf("%s\n", (const char *)x.ErrText());
    }

    return 0;
}