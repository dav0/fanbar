package org.fanbar.cw.repo;
import org.fanbar.cw.domain.Hero;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Hero.class)
public interface HeroRepo {
}
