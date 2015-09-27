
public class EventRect extends AbstractSketch {

  float animation_step = 0;

  public EventRect(final PApplet parent, final int width, final int height) {
    super(parent, width, height);
  }

  @Override
    public void draw() {
    graphics.beginDraw();
    graphics.rectMode(CENTER);
    graphics.noStroke();
    graphics.fill(0, 5);
    graphics.rect(graphics.width/2, graphics.height/2, graphics.width, graphics.height);
    graphics.stroke(255);
    graphics.strokeWeight(3);
    graphics.noFill();
    graphics.rect(graphics.width/2, graphics.height/2, animation_step*graphics.width, animation_step*graphics.height);
    graphics.endDraw();

    animation_step +=0.05;
  }

  @Override
    public void keyEvent(KeyEvent event) {
    if (keyPressed) {
      animation_step = 0;
    }
  }

  @Override
    public void mouseEvent(MouseEvent event) {
  }

  @Override
    public void setup() {
  }
}

