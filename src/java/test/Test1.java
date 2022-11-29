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
import entities.Commande;
import entities.LigneCommande;
import entities.LigneCommandePK;
import entities.Produit;
import entities.User;
import java.util.Date;
import java.util.List;
import javax.persistence.EntityManager;
import org.hibernate.Hibernate;
import services.CategorieService;
import services.CommandeService;
import services.LigneCommandeService;
import services.ProduitService;
import services.UserService;
import util.HibernateUtil;

/**
 *
 * @author a
 */
public class Test1 {

    public static void main(String[] args) {
        HibernateUtil.getSessionFactory().openSession();
        UserService us = new UserService();
        //us.create(new Client("fm@gmail.com","j","j","j","j" ,"123456"));
       // us.create(new Admin("fm@gmail.com","123456"));
        ProduitService ps = new ProduitService();
        CommandeService cs = new CommandeService();
        
       LigneCommandeService ls = new LigneCommandeService();
        System.out.println(cs.getPanier().getLignecommande().get(0).getProduit().getNom());
      //  Client tmp = (Client) us.findByEmail("fm@gmail.com");
       // Commande cat = cs.findById(1);
     //  int nb = Integer.parseInt("1");
        //ls.create(new LigneCommande(new LigneCommandePK(100,1),100,1));
         
              //  ls.delete(tmpp);
                
        //for(Produit c: cs.listAll()) System.out.println(c);
    }

}
