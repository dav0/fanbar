package org.fanbar.cw.repo;
import org.fanbar.cw.domain.Event;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Event.class)
public interface EventRepo {
}
