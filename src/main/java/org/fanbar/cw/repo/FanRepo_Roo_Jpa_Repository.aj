// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.fanbar.cw.repo;

import org.fanbar.cw.domain.Fan;
import org.fanbar.cw.repo.FanRepo;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

privileged aspect FanRepo_Roo_Jpa_Repository {
    
    declare parents: FanRepo extends JpaRepository<Fan, Integer>;
    
    declare parents: FanRepo extends JpaSpecificationExecutor<Fan>;
    
    declare @type: FanRepo: @Repository;
    
}
