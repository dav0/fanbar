// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.fanbar.cw.domain;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;
import org.fanbar.cw.domain.Image;

privileged aspect Image_Roo_Finder {
    
    public static Long Image.countFindImagesByNameEquals(String name) {
        if (name == null || name.length() == 0) throw new IllegalArgumentException("The name argument is required");
        EntityManager em = Image.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Image AS o WHERE o.name = :name", Long.class);
        q.setParameter("name", name);
        return ((Long) q.getSingleResult());
    }
    
    public static Long Image.countFindImagesByNameLike(String name) {
        if (name == null || name.length() == 0) throw new IllegalArgumentException("The name argument is required");
        name = name.replace('*', '%');
        if (name.charAt(0) != '%') {
            name = "%" + name;
        }
        if (name.charAt(name.length() - 1) != '%') {
            name = name + "%";
        }
        EntityManager em = Image.entityManager();
        TypedQuery q = em.createQuery("SELECT COUNT(o) FROM Image AS o WHERE LOWER(o.name) LIKE LOWER(:name)", Long.class);
        q.setParameter("name", name);
        return ((Long) q.getSingleResult());
    }
    
    public static TypedQuery<Image> Image.findImagesByNameEquals(String name) {
        if (name == null || name.length() == 0) throw new IllegalArgumentException("The name argument is required");
        EntityManager em = Image.entityManager();
        TypedQuery<Image> q = em.createQuery("SELECT o FROM Image AS o WHERE o.name = :name", Image.class);
        q.setParameter("name", name);
        return q;
    }
    
    public static TypedQuery<Image> Image.findImagesByNameEquals(String name, String sortFieldName, String sortOrder) {
        if (name == null || name.length() == 0) throw new IllegalArgumentException("The name argument is required");
        EntityManager em = Image.entityManager();
        String jpaQuery = "SELECT o FROM Image AS o WHERE o.name = :name";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        TypedQuery<Image> q = em.createQuery(jpaQuery, Image.class);
        q.setParameter("name", name);
        return q;
    }
    
    public static TypedQuery<Image> Image.findImagesByNameLike(String name) {
        if (name == null || name.length() == 0) throw new IllegalArgumentException("The name argument is required");
        name = name.replace('*', '%');
        if (name.charAt(0) != '%') {
            name = "%" + name;
        }
        if (name.charAt(name.length() - 1) != '%') {
            name = name + "%";
        }
        EntityManager em = Image.entityManager();
        TypedQuery<Image> q = em.createQuery("SELECT o FROM Image AS o WHERE LOWER(o.name) LIKE LOWER(:name)", Image.class);
        q.setParameter("name", name);
        return q;
    }
    
    public static TypedQuery<Image> Image.findImagesByNameLike(String name, String sortFieldName, String sortOrder) {
        if (name == null || name.length() == 0) throw new IllegalArgumentException("The name argument is required");
        name = name.replace('*', '%');
        if (name.charAt(0) != '%') {
            name = "%" + name;
        }
        if (name.charAt(name.length() - 1) != '%') {
            name = name + "%";
        }
        EntityManager em = Image.entityManager();
        String jpaQuery = "SELECT o FROM Image AS o WHERE LOWER(o.name) LIKE LOWER(:name)";
        if (fieldNames4OrderClauseFilter.contains(sortFieldName)) {
            jpaQuery = jpaQuery + " ORDER BY " + sortFieldName;
            if ("ASC".equalsIgnoreCase(sortOrder) || "DESC".equalsIgnoreCase(sortOrder)) {
                jpaQuery = jpaQuery + " " + sortOrder;
            }
        }
        TypedQuery<Image> q = em.createQuery(jpaQuery, Image.class);
        q.setParameter("name", name);
        return q;
    }
    
}
