package com.codegym.conversionmoneyspring.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class conversionController {

    @GetMapping("/")
    public String home() {
        return "conversion/conversionMoney";
    }

    @PostMapping("/convert")
    public String convert(@RequestParam("rate") double rate,
                          @RequestParam("amount") double amount,
                          Model model) {
        double result = rate * amount;
        model.addAttribute("rate", rate);
        model.addAttribute("amount", amount);
        model.addAttribute("result", result);
//        return "result";
        return "conversion/conversionMoney";
    }
}
