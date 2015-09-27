
public class RectPattern extends AbstractSketch {

  float r = 0;
  float dt =0;

  public RectPattern (final PApplet parent, final int width, final int height) {
    super(parent, width, height);
  }

  @Override
    public void draw() {
    graphics.beginDraw();
    graphics.background(0);
    graphics.rectMode(CENTER);
    graphics.noFill();
    graphics.stroke(255);
    r = sin(dt)/2;
    dt += 0.05;
    for (int i = 0 ; i < 1000 ; i+=20){
      graphics.rect(graphics.width/2,graphics.height/2,r*graphics.width+i,r*graphics.height+i);
    }
    graphics.endDraw();
  }

  @Override
    public void keyEvent(KeyEvent event) {
  }

  @Override
    public void mouseEvent(MouseEvent event) {
  }

  @Override
    public void setup() {
  }
}

