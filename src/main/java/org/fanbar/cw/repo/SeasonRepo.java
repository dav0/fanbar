package org.fanbar.cw.repo;
import org.fanbar.cw.domain.Season;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Season.class)
public interface SeasonRepo {
}
