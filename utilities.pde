boolean isClicking (float x, float y, float w, float h) {
  if (mouseX > x - w/2 && mouseX< x + w/2 && mouseY> y - h/2 && mouseY<y+h/2) {
    return true;
  } else {
    return false;
  }
}
