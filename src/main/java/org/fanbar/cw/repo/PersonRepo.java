package org.fanbar.cw.repo;
import org.fanbar.cw.domain.Person;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Person.class)
public interface PersonRepo {
}
