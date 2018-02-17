int window_x = 370;
int window_y = 470;
Enemy enemy = new Enemy();
MyTurn myturn = new MyTurn();
Card card = new Card();
Ball ball = new Ball();
int[] result = new int[2];
boolean game = true;

int turn=0;
float rice_x[] = {75,115,155,195};
float rice_y[] = {385,335,285,235,185,135,85};
float rice_r = 30;
float card_x[] = {240, 270, 300, 330};
float card_sizex = 20;
float card_sizey = 30;
PImage img1,img2,img3,st;
int idou = 1;

void settings() {
    size(window_x, window_y);
}

void setup(){
    background(255);
}

void draw(){
    if(idou == 1){
        startGamen();
    }else if(idou == 2){
        gameMenu();
    }
}


void startGamen(){
    background(255);
    img1 = loadImage("title.png");
    img2 = loadImage("rule.png");
    img3 = loadImage("rule1.png");
    st = loadImage("start.png");
    image(img1, width/4 - 10, height/5);
    image(img2, width/5, height*2/5);
    image(img3, width/3 - 20, height/2);
    image(st, width/2 - 33, height*2/3);

    /*
    line(width/2 - 35, height*2/3, width/2 + 35, height*2/3);
    line(width/2 - 35, height*2/3 + 25, width/2 + 35, height*2/3 + 25);
    line(width/2 - 35, height*2/3, width/2 - 35, height*2/3 + 25);
    line(width/2 + 35, height*2/3, width/2 + 35, height*2/3 + 25);
    */
}

void gameMenu(){
    fill(0);
    line(0,60,width,60);
    enemy.blackOut(game); // gameをfalseにすると正解表示


    // number
    for(int i=0; i<7; i++){
        fill(0);
        text(i+1, 25, rice_y[i]);
        if(game == true){
            fill(250,0,0);
            text(turn+1, 25, rice_y[turn]);
        }
    }

    // riceball
    ellipseMode(CENTER);
    for(int i=0; i<rice_x.length; i++){
        for(int j=0; j<rice_y.length; j++){
            stroke(0);
            ball.mkBall("no", i, j);
        }
    }


    // card(rightside)
    for(int i=0; i<card_x.length; i++){
        for(int j=0; j<rice_y.length; j++){
            // stroke(0);
            card.mkCard("no", i, j);
        }
    }
    
    fill(255);
    rect(265, 425, 60, 30);
    fill(0);
    if(game == true){
        text("Enter", 285, 440);
    }else{
        text("Next", 285, 440);
    
    }
}

void mouseClicked(){
    if(idou == 1){
        if(mouseX > (width/2 -35) && mouseX < (width/2 + 35) && mouseY > height*2/3 && mouseY < (height*2/3  + 25)){
            idou = 2;
            enemy.mkEnemy();
            background(255);
        }
    }
    if(idou == 2){
    if(game == true){
        myturn.selectColor(turn);
        if(mouseX > 265 && mouseX < 325 && mouseY > 425 && mouseY < 455) {
            result = myturn.enter(enemy.nums);
            if(!myturn.isError(myturn.myColors)) {
                enemy.fillCards(turn,result[0],result[1]);
                if(result[0] == 4){
                    System.out.println("CLEAR");
                    fill(255,34,12);
                    text("CLEAR", 285, 30);
                    game = false;
                }
                turn++;
                myturn.colorInit();
                if(turn == 7){
                    game = false;
                    System.out.println("GAME OVER");
                    fill(255,34,12);
                    text("GAME OVER", 272, 30);
                }
            }
        }
    }else{
        if(mouseX > 265 && mouseX < 325 && mouseY > 425 && mouseY < 455) {
            result[0] = 0;
            result[1] = 0;
            myturn.colorInit();

            enemy.removeEnemy();
            enemy.mkEnemy();
            fill(255);
            rect(0,0,width,height);
            /*
            for(int i=0; i<=turn; i++) {
                enemy.fillCards(i,0,0);
            }

            for(int i=0; i<card_x.length; i++){
                for(int j=0; j<rice_y.length; j++){
                    // stroke(0);
                    card.mkCard("init", i, j);
                }
            }

            for(int i=0; i<rice_x.length; i++){
                for(int j=0; j<rice_y.length; j++){
                    stroke(0);
                    ball.mkBall("init", i, j);
                }
            }
           */ 
            turn = 0;
            game = true;
        }
    }
    }
    
}
