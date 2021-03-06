// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.fanbar.cw.service;

import java.util.List;
import org.fanbar.cw.domain.Event;
import org.fanbar.cw.repo.EventRepo;
import org.fanbar.cw.service.EventServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect EventServiceImpl_Roo_Service {
    
    declare @type: EventServiceImpl: @Service;
    
    declare @type: EventServiceImpl: @Transactional;
    
    @Autowired
    EventRepo EventServiceImpl.eventRepo;
    
    public long EventServiceImpl.countAllEvents() {
        return eventRepo.count();
    }
    
    public void EventServiceImpl.deleteEvent(Event event) {
        eventRepo.delete(event);
    }
    
    public Event EventServiceImpl.findEvent(Integer id) {
        return eventRepo.findOne(id);
    }
    
    public List<Event> EventServiceImpl.findAllEvents() {
        return eventRepo.findAll();
    }
    
    public List<Event> EventServiceImpl.findEventEntries(int firstResult, int maxResults) {
        return eventRepo.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void EventServiceImpl.saveEvent(Event event) {
        eventRepo.save(event);
    }
    
    public Event EventServiceImpl.updateEvent(Event event) {
        return eventRepo.save(event);
    }
    
}
