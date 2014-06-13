// This is an empty Processing sketch with support for Fadecandy.

OPC opc;

void setup()
{
  size(500, 500, P3D);

  opc = new OPC(this, "127.0.0.1", 7890);   
  opc.ledGrid8x8(0, width/2, height/2, height / 16.0, 0, false);
}

void draw()
{
  background(0);

  // Draw each frame here
}
