// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.fanbar.cw.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.fanbar.cw.domain.Hero;

privileged aspect Hero_Roo_Jpa_Entity {
    
    declare @type: Hero: @Entity;
    
    declare @type: Hero: @Table(name = "hero");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Hero.id;
    
    public Integer Hero.getId() {
        return this.id;
    }
    
    public void Hero.setId(Integer id) {
        this.id = id;
    }
    
}