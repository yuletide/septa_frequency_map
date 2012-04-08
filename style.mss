Map {
  /*background-color: #b8dee6;*/
  background-color: rgba(0,0,0,0.8)
}

#countries {
  ::outline {
    line-color: #85c5d3;
    line-width: 5;
    line-join: round;
  }
  polygon-fill: #fff;
}
@base_line_color: #f00;

#bus_routes {
  line-color: #fa00ff;
  line-width: 2;
  line-join: round;
  line-opacity: 0.3;
  /* quintiles */
  [tripcount <= 72.4] {
      line-color: #100;
  }
  [tripcount > 72.4][tripcount <= 147.8] {
      line-color: #300;
  }
  [tripcount > 147.8][tripcount <= 276.4] {
      line-color: #500;
  }
  [tripcount > 276.4][tripcount <= 413.4] {
      line-color: #700;
  }
  [tripcount > 413.4] {
      line-color: #900;
  }
    
  
}