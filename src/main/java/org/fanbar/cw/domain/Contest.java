package org.fanbar.cw.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "season", "homeHero", "visitorHero", "event", "image", "creator" })
@RooJpaActiveRecord(versionField = "", table = "contest", finders = { "findContestsByNameEquals", "findContestsByNameLike" })
public class Contest {
}
