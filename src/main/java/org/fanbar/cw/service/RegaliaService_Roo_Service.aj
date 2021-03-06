// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.fanbar.cw.service;

import java.util.List;
import org.fanbar.cw.domain.Regalia;
import org.fanbar.cw.service.RegaliaService;

privileged aspect RegaliaService_Roo_Service {
    
    public abstract long RegaliaService.countAllRegalias();    
    public abstract void RegaliaService.deleteRegalia(Regalia regalia);    
    public abstract Regalia RegaliaService.findRegalia(Integer id);    
    public abstract List<Regalia> RegaliaService.findAllRegalias();    
    public abstract List<Regalia> RegaliaService.findRegaliaEntries(int firstResult, int maxResults);    
    public abstract void RegaliaService.saveRegalia(Regalia regalia);    
    public abstract Regalia RegaliaService.updateRegalia(Regalia regalia);    
}
