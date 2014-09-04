package org.fanbar.cw.web;
import org.fanbar.cw.domain.Auth;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/auths")
@Controller
@RooWebScaffold(path = "auths", formBackingObject = Auth.class)
public class AuthController {
}
