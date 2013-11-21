class Water {
  ArrayList<Ripple> ripples = new ArrayList<Ripple>();
  
  void display() {
    for (int i=0; i < ripples.size(); i++) {
      Ripple rip = ripples.get(i);
      rip.update();
    }
  }
  
  void ripple(float mx, float my) {
    ripples.add(new Ripple(mx, my));
  }
}
