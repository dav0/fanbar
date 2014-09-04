// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.fanbar.cw.service;

import java.util.List;
import org.fanbar.cw.domain.Image;
import org.fanbar.cw.repo.ImageRepo;
import org.fanbar.cw.service.ImageServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

privileged aspect ImageServiceImpl_Roo_Service {
    
    declare @type: ImageServiceImpl: @Service;
    
    declare @type: ImageServiceImpl: @Transactional;
    
    @Autowired
    ImageRepo ImageServiceImpl.imageRepo;
    
    public long ImageServiceImpl.countAllImages() {
        return imageRepo.count();
    }
    
    public void ImageServiceImpl.deleteImage(Image image) {
        imageRepo.delete(image);
    }
    
    public Image ImageServiceImpl.findImage(Integer id) {
        return imageRepo.findOne(id);
    }
    
    public List<Image> ImageServiceImpl.findAllImages() {
        return imageRepo.findAll();
    }
    
    public List<Image> ImageServiceImpl.findImageEntries(int firstResult, int maxResults) {
        return imageRepo.findAll(new org.springframework.data.domain.PageRequest(firstResult / maxResults, maxResults)).getContent();
    }
    
    public void ImageServiceImpl.saveImage(Image image) {
        imageRepo.save(image);
    }
    
    public Image ImageServiceImpl.updateImage(Image image) {
        return imageRepo.save(image);
    }
    
}
