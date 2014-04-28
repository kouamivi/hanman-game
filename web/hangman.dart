import 'dart:html';
import 'dart:math';

void main() {
     var motMystere;
     var motMystereInit="";
     List motMystereArray = [];
     List listeData = [];
     int incorrect = 1;
 init(motMystere, motMystereArray, motMystereInit, listeData, incorrect);
}

void init(var motMystere, var motMystereArray, var motMystereInit, var listeData, var incorrect){
  //Premier canvas
    CanvasElement canvasPhrase = document.querySelector('#canvasPhrase');
    CanvasRenderingContext2D context1 = canvasPhrase.getContext('2d');
    //recuperation de la taille et de la hauteur
    var width1 = canvasPhrase.width;
    var height1 = canvasPhrase.height;  
    
    //Deuxieme canvas
    CanvasElement canvas = document.querySelector('#canvas');
    CanvasRenderingContext2D context2 = canvas.getContext('2d');
    //recuperation de la taille et de la hauteur
    var width2 = canvas.width;
    var height2 = canvas.height;
   
   //recupere tous les bouttons
   ButtonElement boutonA = document.querySelector('#A');
   ButtonElement boutonB = document.querySelector('#B');
   ButtonElement boutonC = document.querySelector('#C');
   ButtonElement boutonD = document.querySelector('#D');
   ButtonElement boutonE = document.querySelector('#E');
   ButtonElement boutonF = document.querySelector('#F');
   ButtonElement boutonG = document.querySelector('#G');
   ButtonElement boutonH = document.querySelector('#H');
   ButtonElement boutonI = document.querySelector('#I');
   ButtonElement boutonJ = document.querySelector('#J');
   ButtonElement boutonK = document.querySelector('#K');
   ButtonElement boutonL = document.querySelector('#L');
   ButtonElement boutonM = document.querySelector('#M');
   ButtonElement boutonN = document.querySelector('#N');
   ButtonElement boutonO = document.querySelector('#O');
   ButtonElement boutonP = document.querySelector('#P');
   ButtonElement boutonQ = document.querySelector('#Q');
   ButtonElement boutonR = document.querySelector('#R');
   ButtonElement boutonS = document.querySelector('#S');
   ButtonElement boutonT = document.querySelector('#T');
   ButtonElement boutonU = document.querySelector('#U');
   ButtonElement boutonV = document.querySelector('#V');
   ButtonElement boutonW = document.querySelector('#W');
   ButtonElement boutonX = document.querySelector('#X');
   ButtonElement boutonY = document.querySelector('#Y');
   ButtonElement boutonZ = document.querySelector('#Z');
     
    
   //dessin des canvas
    dessinerCanvas1(context1, width1, height1);
    dessinerCanvas2(context2, width2, height2);
    
    //creation du mot mystere
    motMystere = motsMystere();
    
 for(int i = 0; i < motMystere.length; i++){
    motMystereArray.add("-");
 }
    
//affiches les tirrets
    for(int i = 0; i < motMystereArray.length; i++){
      motMystereInit = motMystereInit+motMystereArray[i].toString();
    }
    lettre(context1, motMystereInit);
  
    
    
    
    //actions sur les bouttons
    boutonA.onClick.listen((event) {
       listeData = afficher(context1, motMystere, boutonA.id, motMystereArray, incorrect);
       motMystereArray = listeData[0];
       incorrect = listeData[1];
     });
    boutonB.onClick.listen((event) {
       listeData = afficher(context1, motMystere, boutonB.id, motMystereArray, incorrect);
       motMystereArray = listeData[0];
       incorrect = listeData[1];
       });
    boutonC.onClick.listen((event) {
        listeData=  afficher(context1, motMystere, boutonC.id, motMystereArray, incorrect);
        motMystereArray = listeData[0];
        incorrect = listeData[1];
       });
    boutonD.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonD.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
         incorrect = listeData[1];
       });
    boutonE.onClick.listen((event) {
      listeData = afficher(context1, motMystere, boutonE.id, motMystereArray, incorrect);
      motMystereArray = listeData[0];
      incorrect = listeData[1];
       });
    boutonF.onClick.listen((event) {
       listeData = afficher(context1, motMystere, boutonF.id, motMystereArray, incorrect);
       motMystereArray = listeData[0];
             incorrect = listeData[1];
       });
    boutonG.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonG.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
       });
    boutonH.onClick.listen((event) {
        listeData = afficher(context1, motMystere, boutonH.id, motMystereArray, incorrect);
        motMystereArray = listeData[0];
              incorrect = listeData[1];
       });
    boutonI.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonI.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
       });
    boutonJ.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonJ.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
       });
    boutonK.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonK.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
       });
    boutonL.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonL.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
       });
    boutonM.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonM.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
       });
    boutonN.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonN.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
       });
    boutonO.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonO.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
       });
    boutonP.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonP.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
       });
    boutonQ.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonQ.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
       });
    boutonR.onClick.listen((event) {
        listeData = afficher(context1, motMystere, boutonR.id, motMystereArray, incorrect);
        motMystereArray = listeData[0];
              incorrect = listeData[1];
       });
    boutonS.onClick.listen((event) {
        listeData = afficher(context1, motMystere, boutonS.id, motMystereArray, incorrect);
        motMystereArray = listeData[0];
              incorrect = listeData[1];
       });
    boutonT.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonT.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
       });
    boutonU.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonU.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
       });
    boutonV.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonV.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
       });
    boutonW.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonW.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
               //print(incorrect);
       });
    boutonX.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonX.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
               //print(incorrect);
       });
    boutonY.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonY.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
               //print(incorrect);
       });
    boutonZ.onClick.listen((event) {
         listeData = afficher(context1, motMystere, boutonZ.id, motMystereArray, incorrect);
         motMystereArray = listeData[0];
               incorrect = listeData[1];
               //print(incorrect);
       });
}

//dessin du canevas
void dessinerCanvas1(var context, var width, var height){
  context.fillStyle = "white";
  context.fillRect(0, 0, width, height);
  context.strokeStyle = "black";
  context.strokeRect(0, 0, width, height);
}

//dessin du canevas
void dessinerCanvas2(var context, var width, var height){
  context.fillStyle = "white";
  context.fillRect(0, 0, width, height);
  context.strokeStyle = "black";
  context.strokeRect(0, 0, width, height);
}



//permet d'afficher les mots trouvés
List afficher(var context, var motMystere, var caractere, var motMystereArray, var incorrect){
  CanvasElement canvas = document.querySelector('#canvas');
  CanvasRenderingContext2D context2 = canvas.getContext('2d');

  var motMystereInit = "";
  var mot = "";
  var listeData = [];
  bool perdu = false;
  bool gameover = false;
  
  for(int i = 0; i < motMystereArray.length; i++){
      mot = mot+motMystereArray[i];
    }
  
  if(mot == motMystere){
    window.alert("Vous avez gagné");
    motMystereArray.clear();
    for(int i = 0; i < 10; i++){
    motMystereArray.add("-");
    }
  }
  else{

for(int i = 0; i < motMystere.length; i++){
  if(motMystere[i] == caractere){
    motMystereArray[i] = caractere;
  }
}

if(motMystereArray.contains(caractere)){
  perdu = false;
}
else{
  perdu = true;
}


for(int i = 0; i < motMystereArray.length; i++){
    motMystereInit = motMystereInit+motMystereArray[i];
  }

  if(perdu != false){
    switch(incorrect){
          case 1:
            dessinerBarDuBas(context2);
            break;
          case 2:
            dessinerBarDroit(context2);
            gameover = false;
            break;
          case 3:
            dessinerBarDuHaut(context2);
            gameover = false;
            break;
          case 4:
            dessinerBarDeLaTete(context2);
            gameover = false;
            break;
          case 5:
            dessinerTete(context2);
            gameover = false;
            break;
          case 6:
            dessinerCorps(context2);
            gameover = false;
            break;
          case 7:
            dessinerBrasGauche(context2);
            gameover = false;
            break;
          case 8:
            dessinerBrasDroit(context2);
            gameover = false;
            break;
          case 9:
            dessinerPiedGauche(context2);
            gameover = false;
            break;
          case 10:
            dessinerPiedDroit(context2);
            gameover = true;
            effacerCanvas1();
            motMystereInit = "";
            incorrect = 0;
            break;
          default:
                 break;
        } 
    if(gameover == true){
      window.alert("Vous avez perdu le mot était " + motMystere);
      listeData.clear();
      motMystereArray.clear();
         for(int i = 0; i < 10; i++){
             motMystereArray.add("-");
         }
       incorrect = 0;
       perdu = false;
    }
    else if(gameover == false){
      incorrect++; 
    }
  
  }
  }
listeData.add(motMystereArray);
listeData.add(incorrect);

effacerCanvas1();
lettre(context,motMystereInit);
return listeData;
}

//permet d'effacer le premier canvas
void effacerCanvas1(){
CanvasElement canvasPhrase = document.querySelector('#canvasPhrase');
CanvasRenderingContext2D context1 = canvasPhrase.getContext('2d');
  //recuperation de la taille et de la hauteur
  var width = canvasPhrase.width;
  var height = canvasPhrase.height;  
  
  context1.clearRect(0, 0, width, height);
  dessinerCanvas1(context1, width, height);
}


void dessinerBarDuBas(var context){
//bar du bas
context.moveTo(0,230);
context.lineTo(50,230);
context.stroke();
}

void dessinerBarDuHaut(var context){
//bar du haut
context.moveTo(20,10);
context.lineTo(100,10);
context.stroke();
}

void dessinerBarDeLaTete(var context){
//bar pour la tete
context.moveTo(100,10);
context.lineTo(100,30);
context.stroke();
}

void dessinerBarDroit(context){
  //bar droit
  context.moveTo(20,10);
  context.lineTo(20,230);
  context.stroke();
}

void dessinerTete(var context){
  //tete
  context.beginPath();
  context.arc(100,60,30,0,2 * PI);
  context.stroke();
}

void dessinerCorps(var context){
  //corps
  context.moveTo(100,90);
  context.lineTo(100,180);
  context.stroke();
}
  
void dessinerBrasGauche(var context){
  //bras gauche
  context.moveTo(100,130);
  context.lineTo(60,160);
  context.stroke();
}

void dessinerBrasDroit(var context){
  //bras droit
  context.moveTo(100,130);
  context.lineTo(140,160);
  context.stroke();
}

void dessinerPiedGauche(var context){
  //pied gauche
  context.moveTo(100,180);
  context.lineTo(60,210);
  context.stroke();
}

void dessinerPiedDroit(var context){
  //pied droit
  context.moveTo(100,180);
  context.lineTo(140,210);
  context.stroke();
  context.closePath();
}

void lettre(var context, var texte){
    //dessinerCanvas1(context,350,50);
    context.font = "20pt Verdana";
    context.fillStyle = "darkgreen";
    context.fillText(texte,20,30);
}

void reset(var listeData, var motMystereArray, var incorrect){
  listeData.clear();
  motMystereArray.clear();
  incorrect = 0;
  
  CanvasElement canvasPhrase = document.querySelector('#canvasPhrase');
  CanvasRenderingContext2D context1 = canvasPhrase.getContext('2d');
  
  effacerCanvas1();
  //lettre(context1,motMystereInit);
  main();
}

String motsMystere(){
  //on crée une liste de mots mystère
  var texte;
  var index;
  Random rand = new Random();
  List listeMots = [];

  // vous pouvez ajouter tous les mots 10 lettres que vous voulez
  listeMots.add("ALECTORALE");
  listeMots.add("REFUTATION");
  listeMots.add("BAURRELEES");
  listeMots.add("HECTOMETRE");
  listeMots.add("INEXPLARER");
  listeMots.add("REGRASSION");
  listeMots.add("REGRASSIVE");
  
  //on fait un random sur la liste pour avoir un mot au hasard
  index = rand.nextInt(listeMots.length);
  texte = listeMots.elementAt(index);
  
  return texte;
}

