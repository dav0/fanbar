package org.fanbar.cw.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "contests", "contests1", "fans", "image", "regalia", "creator" })
@RooJpaActiveRecord(versionField = "", table = "hero", finders = { "findHeroesByNameEquals", "findHeroesByNameLike" })
public class Hero {
}
