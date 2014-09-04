package org.fanbar.cw.web;
import org.fanbar.cw.domain.Fan;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/fans")
@Controller
@RooWebScaffold(path = "fans", formBackingObject = Fan.class)
@RooWebFinder
public class FanController {
}
