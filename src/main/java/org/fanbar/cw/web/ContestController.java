package org.fanbar.cw.web;
import org.fanbar.cw.domain.Contest;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/contests")
@Controller
@RooWebScaffold(path = "contests", formBackingObject = Contest.class)
@RooWebFinder
public class ContestController {
}
