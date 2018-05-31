unit memoIHM;


Interface

uses memoJeu, memoTypes, crt, sysutils;



procedure difficulte(var taille : Integer);


procedure jeu(taille : Integer; var nbCoups : Integer);

procedure afficherGrille(taille : Integer; g : Grille);

procedure tour(taille : Integer; g : Grille; var x1, y1, x2, y2 : Integer);

procedure saisieCase(taille :Integer; var x, y : Integer);

procedure retournerCase(x, y : Integer; g : Grille);


procedure afficherScore(score : Integer);





Implementation



procedure difficulte(var taille : Integer);

var c : Char;

begin

	writeln('Quelle difficulte voulez-vous? (f)acile ou (d)ifficile?');

	repeat

		readln(c);

		case c of 

			'f' : taille := 4;

			'd' : taille := 6;

		else writeln('Difficulte non valide!')

		end;

	until (c = 'f') or (c = 'd');

	ClrScr;

end;


////////////////////////////////////////////////////

procedure jeu(taille : Integer; var nbCoups : Integer);

var x, y, x1, y1, x2, y2, nbRetourne : Integer;

	g : Grille;

begin

	nbCoups := 0;


	initGrille(taille, g);




	GotoXY(1,12);

{for y := 1 to taille do

	begin

	for x := 1 to taille do

		write(g[x][y].lettre);

	writeln;

end;}




	GotoXY(1, taille + 3);

	write('X = ');

	GotoXY(1, taille + 4);

	write('Y = ');

	GotoXY(1, taille + 6);

	write(nbCoups);


	repeat

		nbRetourne := 0;

		afficherGrille(taille,g);

		tour(taille, g, x1, y1, x2, y2);

		modifGrille(x1, y1, x2, y2, g);

		for y := 1 to taille do

			for x := 1 to taille do

				if g[x][y].retourne then

					nbRetourne := nbRetourne + 1;

		nbCoups := nbCoups + 1;

		GotoXY(1, taille + 6);

		write(nbCoups);

	until nbRetourne = taille*taille;

end;


procedure afficherGrille(taille : Integer; g : Grille);


var x, y : Integer;

begin

	GotoXY(1,1);

	for y := 1 to taille do

		begin

		for x := 1 to taille do

			if g[x][y].retourne = True then

				write(g[x][y].lettre + ' ')

			else write('# ');

		writeln;

		end;



{GotoXY(1,20);

for y := 1 to taille do

    begin

    for x := 1 to taille do

        write(g[x][y].retourne);

    writeln;

end;}






end;


procedure tour(taille : Integer; g : Grille; var x1, y1, x2, y2 : Integer);

begin


	saisieCase(taille, x1, y1);

	retournerCase(x1, y1, g);

	saisieCase(taille, x2, y2);

	retournerCase(x2, y2, g);

	sleep(1000);



end;


procedure saisieCase(taille : Integer; var x, y : Integer);

begin

	repeat

		GotoXY(5, taille + 3);

		readln(x);

	until (x > 0) and (x <= taille);

	repeat

		GotoXY(5, taille + 4);

		readln(y);

	until (y > 0) and (y <= taille);

end;


procedure retournerCase(x, y : Integer; g : Grille);

begin

	GotoXY(2*x-1,y);

	write(g[x][y].lettre);

end;


////////////////////////////////////////////////////

procedure afficherScore(score : Integer);

begin

	ClrScr;
	writeln('Score realise : ', score);
end;





END.

