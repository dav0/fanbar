package org.fanbar.cw.repo;
import org.fanbar.cw.domain.Regalia;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Regalia.class)
public interface RegaliaRepo {
}
