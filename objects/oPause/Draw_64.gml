if (pause) {
    // sel alpha for background
    draw_set_alpha(0.5);
    
    // set bg color
    draw_set_color(c_black);

    // draw rectangle
    var margin = resW * 0.1; 
    draw_rectangle(margin, resH * 0.25, resW - margin, resH * 0.75, false);
    
    // recover alpha
    draw_set_alpha(1);

    // draw text
    draw_set_color(c_white); 
    var text = "PAUSE";
    var text_width = string_width(text);
    var text_height = string_height(text);
    draw_text((resW - text_width) / 2, (resH - text_height) /3, text);
}