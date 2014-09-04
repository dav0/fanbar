package org.fanbar.cw.domain;
import org.springframework.roo.addon.dbre.RooDbManaged;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.jpa.activerecord.RooJpaActiveRecord;
import org.springframework.roo.addon.tostring.RooToString;

@RooJavaBean
@RooDbManaged(automaticallyDelete = true)
@RooToString(excludeFields = { "heroes" })
@RooJpaActiveRecord(versionField = "", table = "regalia", finders = { "findRegaliasByNameEquals", "findRegaliasByNameLike" })
public class Regalia {
}
