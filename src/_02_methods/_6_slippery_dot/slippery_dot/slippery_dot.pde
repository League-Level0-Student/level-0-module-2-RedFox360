
 // Make a slippery dot. When you click on the dot it will slide to a new location.
 
 
 // 1. Create three integer variables to represent the x, y, and the size of the ellipse
      int xs = 1000/2;
      int ys = 562/2;
      int s = 100;
    void setup() {
      // 2. Set the size of your sketch
    size(1000,562);
    }
    
    void draw() {
    
      // 3. Set the background color of your sketch
    background(#FFFFFF);
      // 4. Draw an ellipse using the variables created at the top of the sketch for the location and size of your ellipse. 
      //    Make sure it fits in the window. Change the variables if it does not.
      fill(255,0,0);
    ellipse(xs,ys,s,s);
    
    }
    
    /******** This method gets called automatically when you press the mouse ************/
    void mousePressed() {
      //5. Create an integer variable called distance
      int distance = getDistanceFromMouse(xs,ys);
      //6. The getDistanceFromMouse() method below returns a number.
      
      //   Set the value of your distance variable to the value returned by the getDistance method
      //   You will need to pass the x and y location of your ellipse to this method.
 
          
      //7.  Use an if statement to check if your distance variable is < the radius of the ellipse
      //    If it is, make a new x AND y for the ellipse, for a new random location on the window
      //    Hint: Use code like this      x = (int) random(width);
if(distance<100)  {
  xs = (int) random(width);
  ys = (int) random(width);
}
if(xs>1000)  {
  xs = 1000;
}
if(ys>562)  {
  ys=562;
}
    }
    
    /********  This method gives you the number of pixels between the mouse and the x,y point ***********/
    int getDistanceFromMouse(int x, int y) {
      return (int)Math.sqrt(Math.pow((mouseX-x),2) + Math.pow((mouseY-y),2));
    }
