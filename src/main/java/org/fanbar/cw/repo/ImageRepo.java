package org.fanbar.cw.repo;
import org.fanbar.cw.domain.Image;
import org.springframework.roo.addon.layers.repository.jpa.RooJpaRepository;

@RooJpaRepository(domainType = Image.class)
public interface ImageRepo {
}
