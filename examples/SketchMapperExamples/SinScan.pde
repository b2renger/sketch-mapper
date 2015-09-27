
public class Sinscan extends AbstractSketch {

  float ex = 0;
  float wy = 0;
  float dt1 = 0;
  float dt2 = 0;

  public Sinscan(final PApplet parent, final int width, final int height) {
    super(parent, width, height);
  }

  @Override
    public void draw() {
    graphics.beginDraw();
    graphics.noStroke();
    graphics.fill(0, 25);
    graphics.rect(0, 0, graphics.width, graphics.height);  
    graphics.stroke(0, 255, 0, 255);
    graphics.strokeWeight(3);

    wy = sin(dt1)*graphics.height/2+ graphics.height/2;
    ex = cos(dt2)*graphics.width/2+ graphics.width/2;

    graphics.line(0, wy, graphics.width, wy);
    graphics.line(ex, 0, ex, graphics.height);

    dt1 += 0.05;
    dt2 += 0.025;
    
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

