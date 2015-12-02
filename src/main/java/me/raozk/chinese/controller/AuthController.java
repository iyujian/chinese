package me.raozk.chinese.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by rzk on 15-12-1.
 */
@Controller
public class AuthController {

    Logger logger = LoggerFactory.getLogger(AuthController.class);

    @RequestMapping(value="login", method = {RequestMethod.GET})
    public String login(Model model, @ModelAttribute @RequestParam(required = false, defaultValue = "1") int code){
        logger.info("{} login", code);
        model.addAttribute("code", code);
        model.addAttribute("message", "ceshi");
        return "login";
    }

    @RequestMapping(value="auth", method = {RequestMethod.POST})
    public String auth(@RequestParam String username, @RequestParam String password){
        logger.info("{},{} login", username, password);

        return "redirect:index";
    }

}
