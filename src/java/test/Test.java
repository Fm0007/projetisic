/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import controllers.SendMailTLS;
import entities.Admin;
import entities.Categorie;
import entities.Client;
import entities.Produit;
import entities.User;
import org.hibernate.Hibernate;
import services.CategorieService;
import services.ProduitService;
import services.UserService;
import util.HibernateUtil;

/**
 *
 * @author a
 */
public class Test {
    public static void main(String[] args) {
        HibernateUtil.getSessionFactory().openSession();
        //UserService cs = new UserService();
        //cs.create(new Admin("admin@gmail.com", "123456"));
       // ProduitService cs = new ProduitService();
        //for(Produit c: cs.listAll()) System.out.println(c);
        
    }

}
