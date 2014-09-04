package org.fanbar.cw.web;
import org.fanbar.cw.domain.Regalia;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/regalias")
@Controller
@RooWebScaffold(path = "regalias", formBackingObject = Regalia.class)
@RooWebFinder
public class RegaliaController {
}
