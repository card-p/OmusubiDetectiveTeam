int window_x = 370;
int window_y = 420;

void settings() {
    size(window_x, window_y);
}

void setup(){
    background(255);
}

void draw(){
   // gameStart();
    gameMenu();
}

void gameMenu(){
    fill(0);
    line(0,60,width,60);

    float rice_x[] = {75,115,155,195};
    float rice_y[] = {385,335,285,235,185,135,85};
    float rice_r = 30;

    // number
    for(int i=0; i<7; i++){
        fill(0);
        text(i+1, 25, rice_y[i]);
    }

    // riceball
    ellipseMode(CENTER);
    for(int i=0; i<rice_x.length; i++){
        for(int j=0; j<rice_y.length; j++){
            stroke(0);
            noFill();
            ellipse(rice_x[i], rice_y[j], rice_r, rice_r);
        }
    }

    float card_x[] = {240, 270, 300, 330};
    float card_sizex = 20;
    float card_sizey = 30;

    // card(rightside)
    for(int i=0; i<card_x.length; i++){
        for(int j=0; j<rice_y.length; j++){
            stroke(0);
            noFill();
            rect(card_x[i], rice_y[j]-15, card_sizex, card_sizey);
        }
    }
}

void gameStart(){
    background(255);
    fill(0);
    textSize(20);
    text("Omusubi Game",110,height/3);

    textSize(14);
    text("start",170, 233);

    noFill();
    rectMode(CENTER);
    rect(width/2,230,70,30);
}


