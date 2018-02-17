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

void settings() {
    size(window_x, window_y);
}

void setup(){
    background(255);
}

void draw(){
    gameMenu();
}





void gameMenu(){
    fill(0);
    line(0,60,width,60);
    enemy.blackOut(false); // gameをfalseにすると正解表示


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
    if(game == true) myturn.selectColor(turn);
    if(mouseX > 265 && mouseX < 325 && mouseY > 425 && mouseY < 455) {
        if(game == true) {
            result = myturn.enter(enemy.nums);
            enemy.fillCards(turn,result[0],result[1]);
            if(result[0] == 4){
                System.out.println("CLEAR");
                fill(255,34,12);
                text("CLEAR", 285, 30);
                game = false;
            }
            turn++;
        }else {
            result[0] = 0;
            result[1] = 0;
            myturn.fill_count_l = 0;
            myturn.fill_count_lc = 0;
            myturn.fill_count_rc = 0;
            myturn.fill_count_r = 0;

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
            
            turn = 0;
            game = true;

        }
    }
}


