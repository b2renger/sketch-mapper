
// add flashing rectangles
// growing plant communication beetween several sketches




import controlP5.*;
import javax.media.jai.*;
import jto.processing.sketch.mapper.*;
import com.sun.media.jai.util.*;
import ixagon.surface.mapper.*;

private SketchMapper sketchMapper;

public void setup() {
  size(1200, 600, P3D);

  //create our SketchMapper
  sketchMapper = new SketchMapper(this);


  //create a sketch and add it to the SketchMapper
  sketchMapper.addSketch(new GradientH(this, width / 2, height / 2));
  sketchMapper.addSketch(new GradientV(this, width / 2, height / 2));
  sketchMapper.addSketch(new Sinscan(this, width / 2, height / 2));
  sketchMapper.addSketch(new RectPattern(this, width / 2, height / 2));
  sketchMapper.addSketch(new EventRect(this, width / 2, height / 2));
}


public void draw() {
  //must call this for the sketches and the GUI to be rendered.
  sketchMapper.draw();
}

