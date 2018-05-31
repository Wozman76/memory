program memotestIHM;

uses memoIHM, memoTypes, crt, memoJeu;

var taille, nbcoups , X1, Y1, X2, Y2, x, y, score  : Integer;
var g : Grille;


begin
nbcoups :=0;
difficulte (taille);

jeu(taille , nbCoups);
afficherGrille(taille , g);
tour(taille , g , X1, Y1, X2, Y2);
saisieCase(taille , x, y);
retournerCase(x, y, g);
afficherScore(score);

end.
