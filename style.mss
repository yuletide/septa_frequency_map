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
@base_line_color: darken(#fa00ff,30%);
@base_line_width: 1;
@base_line_width_add: 0.15;
@lighten_step: 14%;
#bus_routes {
  line-color: #fa00ff;
  line-width: 1;
  line-join: bevel;
  line-opacity: .6;
  /* quintiles */
  [tripcount > 413.4] {
      line-color: lighten(@base_line_color, @lighten_step*5);
      line-width: @base_line_width + @base_line_width_add * 5;
  }
  [tripcount > 276.4][tripcount <= 413.4] {
      line-color: lighten(@base_line_color, @lighten_step*4);
      line-width: @base_line_width + @base_line_width_add * 4;
  }
  [tripcount > 147.8][tripcount <= 276.4] {
      line-color: lighten(@base_line_color, @lighten_step*3);
      line-width: @base_line_width + @base_line_width_add * 3;
  }
  [tripcount > 72.4][tripcount <= 147.8] {
      line-color: lighten(@base_line_color, @lighten_step*2);
      line-width: @base_line_width + @base_line_width_add * 2;
  }
  [tripcount <= 72.4] {
      line-color: lighten(@base_line_color, @lighten_step*1);
      line-width: @base_line_width;
  }
  
  [zoom>=12] {
    [tripcount > 413.4] {
        line-color: lighten(@base_line_color, @lighten_step*5);
        line-width: @base_line_width + (@base_line_width_add * 1.5) * 5;
    }
    [tripcount > 276.4][tripcount <= 413.4] {
        line-color: lighten(@base_line_color, @lighten_step*4);
        line-width: @base_line_width + (@base_line_width_add * 1.5) * 4;
    }
    [tripcount > 147.8][tripcount <= 276.4] {
        line-color: lighten(@base_line_color, @lighten_step*3);
        line-width: @base_line_width + (@base_line_width_add * 1.5) * 3;
    }
    [tripcount > 72.4][tripcount <= 147.8] {
        line-color: lighten(@base_line_color, @lighten_step*2);
        line-width: @base_line_width + (@base_line_width_add * 1.5) * 2;
    }
    [tripcount <= 72.4] {
        line-color: lighten(@base_line_color, @lighten_step*1);
        line-width: @base_line_width*1.5;
    }
  
  
  
  }




    
  
}