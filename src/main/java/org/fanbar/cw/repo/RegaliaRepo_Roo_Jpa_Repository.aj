// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.fanbar.cw.repo;

import org.fanbar.cw.domain.Regalia;
import org.fanbar.cw.repo.RegaliaRepo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect RegaliaRepo_Roo_Jpa_Repository {
    
    declare parents: RegaliaRepo extends JpaRepository<Regalia, Integer>;
    
    declare parents: RegaliaRepo extends JpaSpecificationExecutor<Regalia>;
    
    declare @type: RegaliaRepo: @Repository;
    
}
