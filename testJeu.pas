program testJeu;
uses memoTypes, memoJeu;

var g : Grille;
	taille : Integer;
	x, y, x1, y1, x2, y2 : Integer;


begin
taille := 6;


initGrille(taille, g);

for y := 1 to taille do
	begin
		for x := 1 to taille do
			write(g[x][y].lettre + ' ');
		writeln;
	end;
	
	
readln(x1);
readln(y1);
readln(x2);
readln(y2);

modifGrille(x1, y1, x2, y2, g);

for y := 1 to taille do
	begin
		for x := 1 to taille do
			write(g[x][y].retourne);
		writeln;
	end;




end.
