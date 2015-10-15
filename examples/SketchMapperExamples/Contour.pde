
public class Contour extends AbstractSketch {

  PVector start;
  PVector stop ;
  PVector current ;
  float amnt = 0;
  float speed = 0.015;
  boolean horizontal = true;

  public Contour(final PApplet parent, final int width, final int height) {
    super(parent, width, height);
  }

  @Override
    public void setup() {
    start = new PVector(0,0);
    stop = new PVector(0, graphics.height);
    current = new PVector(start.x,start.y);
  }

  @Override
    public void draw() {
    graphics.beginDraw();
    graphics.background(0);
    graphics.rectMode(CORNER);
    
    current.lerp(stop, amnt);
    
    graphics.fill(255);
    graphics.strokeWeight(10);
    graphics.stroke(255);
    if (horizontal) {
      graphics.rect(start.x, start.y, 3, current.y);
    }
    else {
      graphics.rect(start.x, start.y, current.x, 3);
    }
    println(start.x,start.y);
    amnt += speed;
    graphics.endDraw();
    //println(amnt);
  }

  @Override
    public void keyEvent(KeyEvent event) {
    if (key == '6') {
      horizontal = true;
      start.set(graphics.width-3, 0);
      stop.set(graphics.width-3,  graphics.height);
       current.set(start.x, start.y);
      amnt = 0;
    }
    if (key == '4') {
      horizontal = true;
      start.set(3, 0);
      stop.set(3, graphics.height);
      current.set(start.x, start.y);
      amnt = 0;
    }

    if (key == '8') {
      horizontal = false;
      start.set(0, 3);
      stop.set(graphics.width, 3);
      current.set(start.x, start.y);
      amnt = 0;
    }
    if (key == '2') {
       horizontal = false;
      start.set(0, graphics.height-3);
      stop.set(graphics.width, graphics.height-3);
       current.set(start.x, start.y);
      amnt = 0;
    }
  }

  @Override
    public void mouseEvent(MouseEvent event) {
  }
}

