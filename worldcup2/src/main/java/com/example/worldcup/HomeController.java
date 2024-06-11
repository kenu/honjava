package com.example.worldcup;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

  @RequestMapping(value="/")
  public String index(ModelMap model) {
    model.addAttribute("message", "From Spring!");
    return "index";
  }

}
