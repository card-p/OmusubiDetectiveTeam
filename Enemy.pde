public class Enemy extends GameSys{
    ArrayList<Integer> nums= new ArrayList<Integer>();
    int i= 0, num;
    Ball ball = new Ball();

    public Enemy() {
        Random rand = new Random();
        while(i < 4) {
            num = rand.nextInt(7);
            if(!nums.contains(num)){ 
                nums.add(num);
                i++;
            }
        }
        i=0;
    }

    public void blackOut(boolean b) {
        if(b == true) {
            fill(0);
            rect(0, 0, 230, 60);
        }else{
            fill(255);
            rect(0, 0, 230, 60);
            for(i=0; i<4; i++){
                ball.mkBall(nums.get(i), i, -1);
            }
        }
    }

}
