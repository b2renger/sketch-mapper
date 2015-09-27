
public class GradientV extends AbstractSketch {

  int start = 0;

  public GradientV(final PApplet parent, final int width, final int height) {
    super(parent, width, height);
  }

  @Override
    public void draw() {
    graphics.beginDraw();
    graphics.background(255);
    graphics.colorMode(HSB, 360, 100, 100);
    for (int i = graphics.height; i>0; i--) {
      float hue = map(i, 0, graphics.height, start, 360+start);
      hue = hue%360;
      graphics.stroke(hue, 100, 100);
      graphics.line(0, i, graphics.width, i);
    }
    start+=1;
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

