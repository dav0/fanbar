package org.fanbar.cw.repo;
import org.fanbar.cw.domain.Contest;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Contest.class)
public interface ContestRepo {
}
