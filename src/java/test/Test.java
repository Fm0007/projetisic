/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package test;

import entities.Client;
import entities.User;
import org.hibernate.Hibernate;
import services.ClientService;
import services.UserService;
import util.HibernateUtil;

/**
 *
 * @author a
 */
public class Test {
    public static void main(String[] args) {
       // HibernateUtil.getSessionFactory().openSession();
        UserService cs = new UserService();
        cs.create(new Client("Foudil", "MED", "0617", "rue al amal", "fm3@gmail.com", "123456"));
        String pass2 = (cs.findByEmail("fm3@gmail.com").getPassword());  
        if(pass2.equals(User.MD5("123456")))
            {
                System.out.println("true");
            }
        else System.out.println("false");
                        
                        
    }

}
