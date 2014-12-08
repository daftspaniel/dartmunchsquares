import 'dart:html';

void main() {
  drawMunch();
}

drawMunch() {
  CanvasElement ca = querySelector("#surface");
  CanvasRenderingContext2D c2d = ca.getContext("2d");
  c2d..fillStyle = "#000000"
     ..clearRect(0, 0, 999, 999);

  int w = 1;
  int tx = 0;
  int ty = 0;
  int ch = 0;
  for (int x = 0; x < 256; x++) {
    for (int y = 0; y < 256; y++) {

      ch = (x ^ y) % 256;

      c2d..fillStyle = "rgb(0, 0, $ch)"
         ..fillRect(x, y, w, w)
         ..fillStyle = "rgb($ch, 0, 0)"
         ..fillRect(256 + x, y, w, w)
         ..fillStyle = "rgb(0, $ch, 0)"
         ..fillRect(x, 256 + y, w, w)
         ..fillStyle = "rgb($ch, $ch, 0)"
         ..fillRect(256 + x, 256 + y, w, w);
    }
  }

}
