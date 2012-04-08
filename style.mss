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
@base_line_color: #b3b;
@base_line_width: 1;
@base_line_width_add: 0.5;
@spin_step: 10%;
#bus_routes {
  line-color: #fa00ff;
  line-width: 1;
  line-join: bevel;
  line-opacity: 0.5;
  /* quintiles */
  [tripcount > 413.4] {
      line-color: spin(@base_line_color, @spin_step*5);
      line-width: @base_line_width + @base_line_width_add * 5;
  }
  [tripcount > 276.4][tripcount <= 413.4] {
      line-color: spin(@base_line_color, @spin_step*4);
      line-width: @base_line_width + @base_line_width_add * 4;
  }
  [tripcount > 147.8][tripcount <= 276.4] {
      line-color: spin(@base_line_color, @spin_step*3);
      line-width: @base_line_width + @base_line_width_add * 3;
  }
  [tripcount > 72.4][tripcount <= 147.8] {
      line-color: spin(@base_line_color, @spin_step*2);
      line-width: @base_line_width + @base_line_width_add * 2;
  }
  [tripcount <= 72.4] {
      line-color: spin(@base_line_color, @spin_step*1);
      line-width: @base_line_width;
  }




    
  
}