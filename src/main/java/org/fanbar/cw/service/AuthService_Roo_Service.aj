// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.fanbar.cw.service;

import java.util.List;
import org.fanbar.cw.domain.Auth;
import org.fanbar.cw.service.AuthService;

privileged aspect AuthService_Roo_Service {
    
    public abstract long AuthService.countAllAuths();    
    public abstract void AuthService.deleteAuth(Auth auth);    
    public abstract Auth AuthService.findAuth(Integer id);    
    public abstract List<Auth> AuthService.findAllAuths();    
    public abstract List<Auth> AuthService.findAuthEntries(int firstResult, int maxResults);    
    public abstract void AuthService.saveAuth(Auth auth);    
    public abstract Auth AuthService.updateAuth(Auth auth);    
}
