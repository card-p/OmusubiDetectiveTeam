int window_x = 370;
int window_y = 470;
Enemy enemy = new Enemy();
MyTurn myturn = new MyTurn();
Card card = new Card();
Ball ball = new Ball();
int[] result = new int[2];
boolean game = false;

void settings() {
    size(window_x, window_y);
}

void setup(){
    background(255);
}

void draw(){
    gameMenu();
}




    float rice_x[] = {75,115,155,195};
    float rice_y[] = {385,335,285,235,185,135,85};
    float rice_r = 30;

void gameMenu(){
    fill(0);
    line(0,60,width,60);
    enemy.blackOut(game); // gameをfalseにすると正解表示


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
            ball.mkBall("no", i, j);
        }
    }

    float card_x[] = {240, 270, 300, 330};
    float card_sizex = 20;
    float card_sizey = 30;

    // card(rightside)
    for(int i=0; i<card_x.length; i++){
        for(int j=0; j<rice_y.length; j++){
            // stroke(0);
            card.mkCard("no", i, j);
        }
    }
    enemy.fillCards(0,0,1);
    
    noFill();
    rect(265, 425, 60, 30);
    fill(0);
    text("Enter", 285, 440);
}

void mouseClicked(){
    myturn.selectColor();
    if(mouseX > 265 && mouseX < 325 && mouseY > 425 && mouseY < 455) {
        result = myturn.enter(enemy.nums);
    }
}


