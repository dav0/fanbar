package org.fanbar.cw.repo;
import org.fanbar.cw.domain.Auth;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Auth.class)
public interface AuthRepo {
}
