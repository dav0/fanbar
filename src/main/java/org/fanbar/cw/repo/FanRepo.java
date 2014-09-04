package org.fanbar.cw.repo;
import org.fanbar.cw.domain.Fan;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Fan.class)
public interface FanRepo {
}
