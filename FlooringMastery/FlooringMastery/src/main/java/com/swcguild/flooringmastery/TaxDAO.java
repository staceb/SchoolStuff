/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.flooringmastery;

import java.util.ArrayList;

/**
 *
 * @author apprentice
 */
public interface TaxDAO {
    
    public Double getTaxRate(String state);
    
    public ArrayList<String> getStates();
}
