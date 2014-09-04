package org.fanbar.cw.web;
import org.fanbar.cw.domain.Image;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.roo.addon.web.mvc.controller.finder.RooWebFinder;

@RequestMapping("/images")
@Controller
@RooWebScaffold(path = "images", formBackingObject = Image.class)
@RooWebFinder
public class ImageController {
}
