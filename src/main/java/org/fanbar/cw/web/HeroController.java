package org.fanbar.cw.web;
import org.fanbar.cw.domain.Hero;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/heroes")
@Controller
@RooWebScaffold(path = "heroes", formBackingObject = Hero.class)
@RooWebFinder
public class HeroController {
}
