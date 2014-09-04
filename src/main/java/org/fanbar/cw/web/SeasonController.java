package org.fanbar.cw.web;
import org.fanbar.cw.domain.Season;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/seasons")
@Controller
@RooWebScaffold(path = "seasons", formBackingObject = Season.class)
@RooWebFinder
public class SeasonController {
}
