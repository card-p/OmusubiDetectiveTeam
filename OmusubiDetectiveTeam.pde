int window_x = 500;
int window_y = 420;

void settings() {
    size(window_x, window_y);
}

void setup(){
    background(255);
}

void draw(){
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
            fill(0);
            ellipse(rice_x[i], rice_y[j], rice_r, rice_r);
        }
    }

    float card_x[] =
    float card_y[] =

}
