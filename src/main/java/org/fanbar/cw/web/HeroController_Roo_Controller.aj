// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.fanbar.cw.web;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.fanbar.cw.domain.Hero;
import org.fanbar.cw.service.ContestService;
import org.fanbar.cw.service.FanService;
import org.fanbar.cw.service.HeroService;
import org.fanbar.cw.service.ImageService;
import org.fanbar.cw.service.PersonService;
import org.fanbar.cw.service.RegaliaService;
import org.fanbar.cw.web.HeroController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect HeroController_Roo_Controller {
    
    @Autowired
    HeroService HeroController.heroService;
    
    @Autowired
    ContestService HeroController.contestService;
    
    @Autowired
    FanService HeroController.fanService;
    
    @Autowired
    ImageService HeroController.imageService;
    
    @Autowired
    PersonService HeroController.personService;
    
    @Autowired
    RegaliaService HeroController.regaliaService;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String HeroController.create(@Valid Hero hero, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, hero);
            return "heroes/create";
        }
        uiModel.asMap().clear();
        heroService.saveHero(hero);
        return "redirect:/heroes/" + encodeUrlPathSegment(hero.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String HeroController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Hero());
        return "heroes/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String HeroController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("hero", heroService.findHero(id));
        uiModel.addAttribute("itemId", id);
        return "heroes/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String HeroController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("heroes", Hero.findHeroEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) heroService.countAllHeroes() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("heroes", Hero.findAllHeroes(sortFieldName, sortOrder));
        }
        return "heroes/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String HeroController.update(@Valid Hero hero, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, hero);
            return "heroes/update";
        }
        uiModel.asMap().clear();
        heroService.updateHero(hero);
        return "redirect:/heroes/" + encodeUrlPathSegment(hero.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String HeroController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, heroService.findHero(id));
        return "heroes/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String HeroController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Hero hero = heroService.findHero(id);
        heroService.deleteHero(hero);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/heroes";
    }
    
    void HeroController.populateEditForm(Model uiModel, Hero hero) {
        uiModel.addAttribute("hero", hero);
        uiModel.addAttribute("contests", contestService.findAllContests());
        uiModel.addAttribute("fans", fanService.findAllFans());
        uiModel.addAttribute("images", imageService.findAllImages());
        uiModel.addAttribute("people", personService.findAllPeople());
        uiModel.addAttribute("regalias", regaliaService.findAllRegalias());
    }
    
    String HeroController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
