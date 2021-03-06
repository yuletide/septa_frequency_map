Map {
  /*background-color: #b8dee6;*/
  background-color: rgba(0,0,0,0.4)
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
@base_line_width_add: 1;
@lighten_step: 14%;
#bus_routes {
  line-color: #fa00ff;
  line-width: 1;
  line-join: bevel;
  line-opacity: .9;
  /* quintiles */
  /*
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
            line-width: @base_line_width + (@base_line_width_add * 1.5) * 5;
        }
        [tripcount > 276.4][tripcount <= 413.4] {
            line-width: @base_line_width + (@base_line_width_add * 1.5) * 4;
        }
        [tripcount > 147.8][tripcount <= 276.4] {
            line-width: @base_line_width + (@base_line_width_add * 1.5) * 3;
        }
        [tripcount > 72.4][tripcount <= 147.8] {
            line-width: @base_line_width + (@base_line_width_add * 1.5) * 2;
        }
        [tripcount <= 72.4] {
            line-width: @base_line_width*1.5;
        }
    }
    [zoom>=13] {
       [tripcount > 413.4] {
           line-width: @base_line_width + (@base_line_width_add * 2) * 5;
       }
       [tripcount > 276.4][tripcount <= 413.4] {
           line-width: @base_line_width + (@base_line_width_add * 2) * 4;
       }
       [tripcount > 147.8][tripcount <= 276.4] {
           line-width: @base_line_width + (@base_line_width_add * 2) * 3;
       }
       [tripcount > 72.4][tripcount <= 147.8] {
           line-width: @base_line_width + (@base_line_width_add * 2) * 2;
       }
       [tripcount <= 72.4] {
           line-width: @base_line_width*2;
       }  
  
  
  }
  [zoom>=14] {
     [tripcount > 413.4] {
         line-width: @base_line_width + (@base_line_width_add * 3) * 5;
     }
     [tripcount > 276.4][tripcount <= 413.4] {
         line-width: @base_line_width + (@base_line_width_add * 3) * 4;
     }
     [tripcount > 147.8][tripcount <= 276.4] {
         line-width: @base_line_width + (@base_line_width_add * 3) * 3;
     }
     [tripcount > 72.4][tripcount <= 147.8] {
         line-width: @base_line_width + (@base_line_width_add * 3) * 2;
     }
     [tripcount <= 72.4] {
         line-width: @base_line_width*3;
     }
  }*/

[tripcount <= 69.5]{ line-color: rgb(215,25,28); }
[tripcount > 69.5][tripcount <= 122.67]{ line-color: rgb(245,144,83); }
[tripcount > 122.67][tripcount <= 225.5]{ line-color: rgb(254,222,154); }
[tripcount > 225.5][tripcount <= 310.67]{ line-color: rgb(219,239,157); }
[tripcount > 310.67][tripcount <= 461.17]{ line-color: rgb(137,203,97); }
[tripcount > 461.17]{ line-color: rgb(26,150,65); }

  /* quintiles
[tripcount <= 72.4]{ line-color: rgb(215,25,28); }
[tripcount > 72.4][tripcount <= 147.8]{ line-color: rgb(253,174,97); }
[tripcount > 147.8][tripcount <= 276.4]{ line-color: rgb(255,255,191); }
[tripcount > 276.4][tripcount <= 413.4]{ line-color: rgb(166,217,106); }
[tripcount > 413.4]{ line-color: rgb(26,150,65); }
*/
 /* std dev
[tripcount <= 55.24]{ line-color: rgb(215,48,39); }
[tripcount > 55.24][tripcount <= 254.09]{ line-color: rgb(252,141,89); }
[tripcount > 254.09][tripcount <= 452.95]{ line-color: rgb(254,224,139); }
[tripcount > 452.95][tripcount <= 651.8]{ line-color: rgb(217,239,139); }
[tripcount > 651.8][tripcount <= 850.66]{ line-color: rgb(145,207,96); }
[tripcount > 850.66][tripcount <= 1049.5]{ line-color: rgb(26,152,80); }
[tripcount > 1049.5]{ line-color: rgb(26,152,80); }
*/  
}

#bus_routes_sum {
    [tripsum > 890] {
      line-width: @base_line_width + @base_line_width_add * 6;
    }
  
    [tripsum > 747][tripsum <= 890] {
      line-width: @base_line_width + @base_line_width_add * 5;
  }
  [tripsum > 589][tripsum <= 747]{
      line-width: @base_line_width + @base_line_width_add * 4;
  }
  [tripsum > 423][tripsum <= 589] {
      line-width: @base_line_width + @base_line_width_add * 3;
  }
  [tripsum > 257]  [tripsum <= 423] {
      line-width: @base_line_width + @base_line_width_add * 2;
  }
  [tripsum <= 257] {
      line-width: @base_line_width;
  }
  
  [tripsum <= 257.0]{ line-color: rgb(215,25,28); }
[tripsum > 257.0][tripsum <= 423.0]{ line-color: rgb(245,144,83); }
[tripsum > 423.0][tripsum <= 589.0]{ line-color: rgb(254,222,154); }
[tripsum > 589.0][tripsum <= 747.0]{ line-color: rgb(219,239,157); }
[tripsum > 747.0][tripsum <= 890.5]{ line-color: rgb(137,203,97); }
[tripsum > 890.5]{ line-color: rgb(26,150,65); }
 
  }


