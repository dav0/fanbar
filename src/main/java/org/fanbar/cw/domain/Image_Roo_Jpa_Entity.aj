// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.fanbar.cw.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.fanbar.cw.domain.Image;

privileged aspect Image_Roo_Jpa_Entity {
    
    declare @type: Image: @Entity;
    
    declare @type: Image: @Table(name = "image");
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Integer Image.id;
    
    public Integer Image.getId() {
        return this.id;
    }
    
    public void Image.setId(Integer id) {
        this.id = id;
    }
    
}
