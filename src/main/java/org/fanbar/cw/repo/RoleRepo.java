package org.fanbar.cw.repo;
import org.fanbar.cw.domain.Role;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Role.class)
public interface RoleRepo {
}
