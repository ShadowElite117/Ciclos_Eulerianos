int lvl, mouseX1, mouseY1, mouseX2, mouseY2, click, posicion;
boolean error;
int a[][] = new int[11][11]; //matriz del Usuario
int r[][] = new int[11][11]; //matriz de la Respuesta
int path[] = new int [12]; // la posicion 12 (11 en el array como tal) no se usa, es por si ocurre un sobrepaso

void setup() {
  size(500, 500);
  background(102);
  smooth(2);
  lvl = 1;
  posicion = 0;
  error = true;
  click = 1;
  stroke(255);
  println("Posicion 1 ("+ mouseX1+","+mouseX1 +") Posicion 2 ("+ mouseX2+","+mouseX2+")");
  println("Click #"+click);
}

void draw() {
  pushMatrix();
  translate(250, 250);

  //Dibujo del nivel
  switch( lvl ) {
  case 1: 
    ellipse(0, -120, 10, 10);   //A punto 1
    ellipse(-120, -60, 10, 10); //B punto 2
    ellipse(-80, -60, 10, 10);  //C punto 3
    ellipse(-80, 80, 10, 10);   //D punto 4
    ellipse(-20, 80, 10, 10);   //E punto 5
    ellipse(-20, 40, 10, 10);   //F punto 6
    ellipse(20, 40, 10, 10);    //G punto 7
    ellipse(20, 80, 10, 10);    //H punto 8
    ellipse(80, 80, 10, 10);    //I punto 9
    ellipse(80, -60, 10, 10);   //J punto 10
    ellipse(120, -60, 10, 10);  //K punto 11
    break;

  case 2:
    break;

  default: 
    break;
  }
  popMatrix();

  //Dibujo de la linea y obtencion de la secuencia
  if (click == 1 && mouseButton == LEFT  && mousePressed == true) {

    if ((mouseX <= 255 && mouseX >= 245) && (mouseY <= 135 && mouseY >=125)) {
      mouseX1 = 250;
      mouseY1 = 130;
      path[posicion] = 1;
      println("Posicion inicio ("+ mouseX1+","+mouseY1 +")");
      println("Recorrido:");
      printArray(path);
      println("Click #" + click);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 135 && mouseX >= 125) && (mouseY <= 195 && mouseY >=185)) {
      mouseX1 = 130;
      mouseY1 = 190;
      path[posicion] = 2;
      println("Posicion inicio ("+ mouseX1+","+mouseY1 +")");
      println("Recorrido:");
      printArray(path);
      println("Click #" + click);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 175 && mouseX >= 165) && (mouseY <= 195 && mouseY >=185)) {
      mouseX1 = 170;
      mouseY1 = 190;
      path[posicion] = 3;
      println("Posicion inicio ("+ mouseX1+","+mouseY1 +")");
      println("Recorrido:");
      printArray(path);
      println("Click #" + click);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 175 && mouseX >= 165) && (mouseY <= 335 && mouseY >=325)) {
      mouseX1 = 170;
      mouseY1 = 330;
      path[posicion] = 4;
      println("Posicion inicio ("+ mouseX1+","+mouseY1 +")");
      println("Recorrido:");
      printArray(path);
      println("Click #" + click);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 235 && mouseX >= 225) && (mouseY <= 335 && mouseY >=325)) {
      mouseX1 = 230;
      mouseY1 = 330;
      path[posicion] = 5;
      println("Posicion inicio ("+ mouseX1+","+mouseY1 +")");
      println("Recorrido:");
      printArray(path);
      println("Click #" + click);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 235 && mouseX >= 225) && (mouseY <= 295 && mouseY >=285)) {
      mouseX1 = 230;
      mouseY1 = 290;
      path[posicion] = 6;
      println("Posicion inicio ("+ mouseX1+","+mouseY1 +")");
      println("Recorrido:");
      printArray(path);
      println("Click #" + click);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 275 && mouseX >= 265) && (mouseY <= 295 && mouseY >=285)) {
      mouseX1 = 270;
      mouseY1 = 290;
      path[posicion] = 7;
      println("Posicion inicio ("+ mouseX1+","+mouseY1 +")");
      println("Recorrido:");
      printArray(path);
      println("Click #" + click);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 275 && mouseX >= 265) && (mouseY <= 335 && mouseY >=325)) {
      mouseX1 = 270;
      mouseY1 = 330;
      path[posicion] = 8;
      println("Posicion inicio ("+ mouseX1+","+mouseY1 +")");
      println("Recorrido:");
      printArray(path);
      println("Click #" + click);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 335 && mouseX >= 325) && (mouseY <= 335 && mouseY >=325)) {
      mouseX1 = 330;
      mouseY1 = 330;
      path[posicion] = 9;
      println("Posicion inicio ("+ mouseX1+","+mouseY1 +")");
      println("Recorrido:");
      printArray(path);
      println("Click #" + click);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 335 && mouseX >= 325) && (mouseY <= 195 && mouseY >=185)) {
      mouseX1 = 330;
      mouseY1 = 190;
      path[posicion] = 10;
      println("Posicion inicio ("+ mouseX1+","+mouseY1 +")");
      println("Recorrido:");
      printArray(path);
      println("Click #" + click);
      posicion++;
      click = 2;
    }    

    if ((mouseX <= 375 && mouseX >= 365) && (mouseY <= 195 && mouseY >=185)) {
      mouseX1 = 370;
      mouseY1 = 190;
      path[posicion] = 11;
      println("Posicion inicio ("+ mouseX1+","+mouseY1 +")");
      println("Recorrido:");
      printArray(path);
      println("Click #" + click);
      posicion++;
      click = 2;
    }
    delay(200);
  } else if (click == 2 && mouseButton == LEFT && mousePressed == true) {

    if ((mouseX <= 255 && mouseX >= 245) && (mouseY <= 135 && mouseY >=125)) {
      mouseX2 = 250;
      mouseY2 = 130;
      println("Posicion Ini ("+ mouseX1+","+mouseY1 +") Posicion Fin ("+ mouseX2+","+mouseY2+")");
      println("Click #"+click);
      line(mouseX1, mouseY1, mouseX2, mouseY2);
      path[posicion] = 1;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 3;
    }

    if ((mouseX <= 135 && mouseX >= 125) && (mouseY <= 195 && mouseY >=185)) {
      mouseX2 = 130;
      mouseY2 = 190;
      println("Posicion Ini ("+ mouseX1+","+mouseY1 +") Posicion Fin ("+ mouseX2+","+mouseY2+")");
      println("Click #"+click);
      line(mouseX1, mouseY1, mouseX2, mouseY2);
      path[posicion] = 2;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 3;
    }

    if ((mouseX <= 175 && mouseX >= 165) && (mouseY <= 195 && mouseY >=185)) {
      mouseX2 = 170;
      mouseY2 = 190;
      println("Posicion Ini ("+ mouseX1+","+mouseY1 +") Posicion Fin ("+ mouseX2+","+mouseY2+")");
      println("Click #"+click);
      line(mouseX1, mouseY1, mouseX2, mouseY2);
      path[posicion] = 3;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 3;
    }

    if ((mouseX <= 175 && mouseX >= 165) && (mouseY <= 335 && mouseY >=325)) {
      mouseX2 = 170;
      mouseY2 = 330;
      println("Posicion Ini ("+ mouseX1+","+mouseY1 +") Posicion Fin ("+ mouseX2+","+mouseY2+")");
      println("Click #"+click);
      line(mouseX1, mouseY1, mouseX2, mouseY2);
      path[posicion] = 4;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 3;
    }

    if ((mouseX <= 235 && mouseX >= 225) && (mouseY <= 335 && mouseY >=325)) {
      mouseX2 = 230;
      mouseY2 = 330;
      println("Posicion Ini ("+ mouseX1+","+mouseY1 +") Posicion Fin ("+ mouseX2+","+mouseY2+")");
      println("Click #"+click);
      line(mouseX1, mouseY1, mouseX2, mouseY2);
      path[posicion] = 5;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 3;
    }

    if ((mouseX <= 235 && mouseX >= 225) && (mouseY <= 295 && mouseY >=285)) {
      mouseX2 = 230;
      mouseY2 = 290;
      println("Posicion Ini ("+ mouseX1+","+mouseY1 +") Posicion Fin ("+ mouseX2+","+mouseY2+")");
      println("Click #"+click);
      line(mouseX1, mouseY1, mouseX2, mouseY2);
      path[posicion] = 6;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 3;
    }

    if ((mouseX <= 275 && mouseX >= 265) && (mouseY <= 295 && mouseY >=285)) {
      mouseX2 = 270;
      mouseY2 = 290;
      println("Posicion Ini ("+ mouseX1+","+mouseY1 +") Posicion Fin ("+ mouseX2+","+mouseY2+")");
      println("Click #"+click);
      line(mouseX1, mouseY1, mouseX2, mouseY2);
      path[posicion] = 7;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 3;
    }

    if ((mouseX <= 275 && mouseX >= 265) && (mouseY <= 335 && mouseY >=325)) {
      mouseX2 = 270;
      mouseY2 = 330;
      println("Posicion Ini ("+ mouseX1+","+mouseY1 +") Posicion Fin ("+ mouseX2+","+mouseY2+")");
      println("Click #"+click);
      line(mouseX1, mouseY1, mouseX2, mouseY2);
      path[posicion] = 8;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 3;
    }

    if ((mouseX <= 335 && mouseX >= 325) && (mouseY <= 335 && mouseY >=325)) {
      mouseX2 = 330;
      mouseY2 = 330;
      println("Posicion Ini ("+ mouseX1+","+mouseY1 +") Posicion Fin ("+ mouseX2+","+mouseY2+")");
      println("Click #"+click);
      line(mouseX1, mouseY1, mouseX2, mouseY2);
      path[posicion] = 9;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 3;
    }

    if ((mouseX <= 335 && mouseX >= 325) && (mouseY <= 195 && mouseY >=185)) {
      mouseX2 = 330;
      mouseY2 = 190;
      println("Posicion Ini ("+ mouseX1+","+mouseY1 +") Posicion Fin ("+ mouseX2+","+mouseY2+")");
      println("Click #"+click);
      line(mouseX1, mouseY1, mouseX2, mouseY2);
      path[posicion] = 10;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 3;
    }

    if ((mouseX <= 375 && mouseX >= 365) && (mouseY <= 195 && mouseY >=185)) {
      mouseX2 = 370;
      mouseY2 = 190;
      println("Posicion Ini ("+ mouseX1+","+mouseY1 +") Posicion Fin ("+ mouseX2+","+mouseY2+")");
      println("Click #"+click);
      line(mouseX1, mouseY1, mouseX2, mouseY2);
      path[posicion] = 11;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 3;
    }

    if (posicion > 11) {// evita que se sobrepase el limite de pasos en la secuencia
      posicion = 0;
    }

    delay(210);
  } else if (click == 3 && mouseButton == LEFT && mousePressed == true) {

    if ((mouseX <= 255 && mouseX >= 245) && (mouseY <= 135 && mouseY >=125)) {
      mouseX1 = 250;
      mouseY1 = 130;
      println("Posicion Ini ("+ mouseX2+","+mouseY2 +") Posicion Fin ("+ mouseX1+","+mouseY1+")");
      println("Click #"+click);
      line(mouseX2, mouseY2, mouseX1, mouseY1);
      path[posicion] = 1;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 135 && mouseX >= 125) && (mouseY <= 195 && mouseY >=185)) {
      mouseX1 = 130;
      mouseY1 = 190;
      println("Posicion Ini ("+ mouseX2+","+mouseY2 +") Posicion Fin ("+ mouseX1+","+mouseY1+")");
      println("Click #"+click);
      line(mouseX2, mouseY2, mouseX1, mouseY1);
      path[posicion] = 2;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 175 && mouseX >= 165) && (mouseY <= 195 && mouseY >=185)) {
      mouseX1 = 170;
      mouseY1 = 190;
      println("Posicion Ini ("+ mouseX2+","+mouseY2 +") Posicion Fin ("+ mouseX1+","+mouseY1+")");
      println("Click #"+click);
      line(mouseX2, mouseY2, mouseX1, mouseY1);
      path[posicion] = 3;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 175 && mouseX >= 165) && (mouseY <= 335 && mouseY >=325)) {
      mouseX1 = 170;
      mouseY1 = 330;
      println("Posicion Ini ("+ mouseX2+","+mouseY2 +") Posicion Fin ("+ mouseX1+","+mouseY1+")");
      println("Click #"+click);
      line(mouseX2, mouseY2, mouseX1, mouseY1);
      path[posicion] = 4;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 235 && mouseX >= 225) && (mouseY <= 335 && mouseY >=325)) {
      mouseX1 = 230;
      mouseY1 = 330;
      println("Posicion Ini ("+ mouseX2+","+mouseY2 +") Posicion Fin ("+ mouseX1+","+mouseY1+")");
      println("Click #"+click);
      line(mouseX2, mouseY2, mouseX1, mouseY1);
      path[posicion] = 5;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 235 && mouseX >= 225) && (mouseY <= 295 && mouseY >=285)) {
      mouseX1 = 230;
      mouseY1 = 290;
      println("Posicion Ini ("+ mouseX2+","+mouseY2 +") Posicion Fin ("+ mouseX1+","+mouseY1+")");
      println("Click #"+click);
      line(mouseX2, mouseY2, mouseX1, mouseY1);
      path[posicion] = 6;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 275 && mouseX >= 265) && (mouseY <= 295 && mouseY >=285)) {
      mouseX1 = 270;
      mouseY1 = 290;
      println("Posicion Ini ("+ mouseX2+","+mouseY2 +") Posicion Fin ("+ mouseX1+","+mouseY1+")");
      println("Click #"+click);
      line(mouseX2, mouseY2, mouseX1, mouseY1);
      path[posicion] = 7;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 275 && mouseX >= 265) && (mouseY <= 335 && mouseY >=325)) {
      mouseX1 = 270;
      mouseY1 = 330;
      println("Posicion Ini ("+ mouseX2+","+mouseY2 +") Posicion Fin ("+ mouseX1+","+mouseY1+")");
      println("Click #"+click);
      line(mouseX2, mouseY2, mouseX1, mouseY1);
      path[posicion] = 8;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 335 && mouseX >= 325) && (mouseY <= 335 && mouseY >=325)) {
      mouseX1 = 330;
      mouseY1 = 330;
      println("Posicion Ini ("+ mouseX2+","+mouseY2 +") Posicion Fin ("+ mouseX1+","+mouseY1+")");
      println("Click #"+click);
      line(mouseX2, mouseY2, mouseX1, mouseY1);
      path[posicion] = 9;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 335 && mouseX >= 325) && (mouseY <= 195 && mouseY >=185)) {
      mouseX1 = 330;
      mouseY1 = 190;
      println("Posicion Ini ("+ mouseX2+","+mouseY2 +") Posicion Fin ("+ mouseX1+","+mouseY1+")");
      println("Click #"+click);
      line(mouseX2, mouseY2, mouseX1, mouseY1);
      path[posicion] = 10;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 2;
    }

    if ((mouseX <= 375 && mouseX >= 365) && (mouseY <= 195 && mouseY >=185)) {
      mouseX1 = 370;
      mouseY1 = 190;
      println("Posicion Ini ("+ mouseX2+","+mouseY2 +") Posicion Fin ("+ mouseX1+","+mouseY1+")");
      println("Click #"+click);
      line(mouseX2, mouseY2, mouseX1, mouseY1);
      path[posicion] = 11;
      println("Recorrido:");
      printArray(path);
      posicion++;
      click = 2;
    }

    if (posicion > 11) { // evita que se sobrepase el limite de pasos en la secuencia
      posicion = 0;
    }

    delay(210);
  }

  //Comparacion (editarlo) , el vector con la secuencia se llama "path[]"
  if (key == 'c' || key == 'C') { // Compara al presionar la tecla "C"
    //comparacion por componente
    for (int i = 0; i <= 10; i++) {
      for (int j = 0; j <= 10; j++) {
        if (a[i][j] != r[i][j]) {
          error = true;
        }
      }
    }
    //si hay componenetes diferentes reinicia de lo contrario cambia el lvl
    if (error == false) {
      lvl++;
      println("Correcto");
    } else {
      println("Restart");
      pushMatrix();
      translate(250, 250);
      background(102);
      switch( lvl ) {
      case 1: 
        ellipse(0, -120, 10, 10);
        ellipse(-120, -60, 10, 10);
        ellipse(-80, -60, 10, 10);
        ellipse(-80, 80, 10, 10);
        ellipse(-20, 80, 10, 10);
        ellipse(-20, 40, 10, 10);
        ellipse(20, 40, 10, 10);
        ellipse(20, 80, 10, 10);
        ellipse(80, 80, 10, 10);
        ellipse(80, -60, 10, 10);
        ellipse(120, -60, 10, 10);
        break;

      case 2:
        break;

      default: 
        break;
      }
      popMatrix();
      key = ' ';
      click = 1;
    }
  }

  //Restart se reinicia cuando se oprime la letra r en el teclado
  if (key == 'r' || key == 'R') {
    println("Restart");
    pushMatrix();
    translate(250, 250);
    background(102);
    switch( lvl ) {
    case 1: 
      ellipse(0, -120, 10, 10);
      ellipse(-120, -60, 10, 10);
      ellipse(-80, -60, 10, 10);
      ellipse(-80, 80, 10, 10);
      ellipse(-20, 80, 10, 10);
      ellipse(-20, 40, 10, 10);
      ellipse(20, 40, 10, 10);
      ellipse(20, 80, 10, 10);
      ellipse(80, 80, 10, 10);
      ellipse(80, -60, 10, 10);
      ellipse(120, -60, 10, 10);
      break;

    case 2:
      break;

    default: 
      break;
    }
    popMatrix();
    key = ' ';
    click = 1;
    posicion = 0;

    for (int i = 0; i < 12; i++) { //pone el vector de la secuencia en 0 para iniciar denuevo
      path[i] = 0;
    }
  }
}
