// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.fanbar.cw.domain;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.fanbar.cw.domain.Hero;

privileged aspect Hero_Roo_ToString {
    
    public String Hero.toString() {
        return new ReflectionToStringBuilder(this, ToStringStyle.SHORT_PREFIX_STYLE).setExcludeFieldNames("contests", "contests1", "fans", "image", "regalia", "creator").toString();
    }
    
}
