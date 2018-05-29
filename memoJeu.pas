unit memoJeu;



Interface

uses memoTypes;


procedure initGrille(taille : Integer; var g : Grille);

procedure modifGrille(x1, y1, x2, y2 : Integer; var g : Grille);



Implementation


//////////////////////////////

procedure initGrille(taille : Integer; var g : Grille);

var //c : Char;

    i,t : Integer;

    x, y : Word;

    str : String;

{begin

    randomize;

    for x := 1 to 4 do

        for y := 1 to 4 do

            g[x][y].lettre := ' ';


    for c := 'a' to 'h' do

        for i := 1 to 2 do

            begin

                repeat

                    x := random(taille) + 1;

                    y := random(taille) + 1;

                until g[x][y].lettre = ' ';

                g[x][y].lettre := c;

            end;

end;}


begin

    randomize;

    str := 'aabbccddeeffgghhiijjkkllmmnnooppqqrr';

    t := taille;


    if t = 4 then

        Delete(str,17,20);

    

    for x := 1 to t do

        for y := 1 to t do

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

