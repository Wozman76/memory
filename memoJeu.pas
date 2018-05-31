unit memoJeu;



Interface

uses memoTypes;


procedure initGrille(taille : Integer; var g : Grille);

procedure modifGrille(x1, y1, x2, y2 : Integer; var g : Grille);



Implementation


//////////////////////////////

procedure initGrille(taille : Integer; var g : Grille);

var	i : Integer;

	x, y : Word;

	str : String;


begin

	randomize;

	str := 'aabbccddeeffgghhiijjkkllmmnnooppqqrr';


	if taille = 4 then

		Delete(str,17,20);



	for x := 1 to taille do

		for y := 1 to taille do

			begin

				i := random(length(str)) + 1;

				g[x][y].lettre := str[i];

				g[x][y].retourne := False;

				Delete(str, i, 1);



			end;


end;



////////////////////////

procedure modifGrille(x1, y1, x2, y2 : Integer; var g : Grille);

begin

	if (g[x1][y1].lettre = g[x2][y2].lettre) and ((x1 <> x2) or (y1 <> y2)) then

	begin

		g[x1][y1].retourne := True;

		g[x2][y2].retourne := True;

	end;

end;



end.

