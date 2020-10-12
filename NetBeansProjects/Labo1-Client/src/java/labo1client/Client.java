/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package labo1client;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JTextField;

/**
 *
 * @author r0638823
 */
public class Client extends JFrame{
    
JFrame f;  

public Client(){
    f = new JFrame();
    JButton b = new JButton("OK");//create button  
    b.setBounds(50,100,95, 30);  
    
    JLabel l1;  
    l1=new JLabel("Aantal dagen");  
    l1.setBounds(10,50, 100,30);  
    
    final JTextField tf=new JTextField();
    tf.setText("Aantal dagen");
    tf.setBounds(150,50, 150,20);
    
    f.add(tf);
    f.add(l1);
    f.add(b);//adding button on frame  
    f.setSize(400,500);  
    f.setLayout(null);  
    f.setVisible(true);  
}  
}
