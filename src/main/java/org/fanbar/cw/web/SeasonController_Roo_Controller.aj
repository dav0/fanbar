// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.fanbar.cw.web;

import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.fanbar.cw.domain.Season;
import org.fanbar.cw.service.ContestService;
import org.fanbar.cw.service.EventService;
import org.fanbar.cw.service.SeasonService;
import org.fanbar.cw.web.SeasonController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect SeasonController_Roo_Controller {
    
    @Autowired
    SeasonService SeasonController.seasonService;
    
    @Autowired
    ContestService SeasonController.contestService;
    
    @Autowired
    EventService SeasonController.eventService;
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String SeasonController.create(@Valid Season season, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, season);
            return "seasons/create";
        }
        uiModel.asMap().clear();
        seasonService.saveSeason(season);
        return "redirect:/seasons/" + encodeUrlPathSegment(season.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String SeasonController.createForm(Model uiModel) {
        populateEditForm(uiModel, new Season());
        return "seasons/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String SeasonController.show(@PathVariable("id") Integer id, Model uiModel) {
        uiModel.addAttribute("season", seasonService.findSeason(id));
        uiModel.addAttribute("itemId", id);
        return "seasons/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String SeasonController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("seasons", Season.findSeasonEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) seasonService.countAllSeasons() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("seasons", Season.findAllSeasons(sortFieldName, sortOrder));
        }
        return "seasons/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String SeasonController.update(@Valid Season season, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, season);
            return "seasons/update";
        }
        uiModel.asMap().clear();
        seasonService.updateSeason(season);
        return "redirect:/seasons/" + encodeUrlPathSegment(season.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String SeasonController.updateForm(@PathVariable("id") Integer id, Model uiModel) {
        populateEditForm(uiModel, seasonService.findSeason(id));
        return "seasons/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String SeasonController.delete(@PathVariable("id") Integer id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        Season season = seasonService.findSeason(id);
        seasonService.deleteSeason(season);
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/seasons";
    }
    
    void SeasonController.populateEditForm(Model uiModel, Season season) {
        uiModel.addAttribute("season", season);
        uiModel.addAttribute("contests", contestService.findAllContests());
        uiModel.addAttribute("events", eventService.findAllEvents());
    }
    
    String SeasonController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
