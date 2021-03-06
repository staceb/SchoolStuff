/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.swcguild.addressbook2.dto;

import java.util.Objects;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

/**
 *
 * @author apprentice
 */
public class Address {

    private int iD;
    @NotEmpty(message = "You must supply a value for First Name.")
    @Length(max = 50, message = "First Name must be no longer than 50 characters in length.")
    private String firstName;
    @NotEmpty(message = "You must supply a value for Last Name.")
    @Length(max = 50, message = "Last Name must be no longer than 50 characters in length.")
    private String lastName;
    @NotEmpty(message = "You must supply a value for Street Address.")
    @Length(max = 50, message = "Street Address must be no longer than 50 characters in length.")
    private String streetAddress;
    @NotEmpty(message = "You must supply a value for City.")
    @Length(max = 50, message = "City must be no longer than 50 characters in length.")
    private String city;
    @NotEmpty(message = "You must supply a value for State.")
    @Length(max = 20, message = "State must be no longer than 20 characters in length.")
    private String state;
    @NotNull(message = "You must supply a value for zipCode.")
    @Min(value = 20, message = "ZipCode must be no longer than 20 characters in length.")
    private int zipCode;

    public int getiD() {
        return iD;
    }

    public void setiD(int iD) {
        this.iD = iD;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getStreetAddress() {
        return streetAddress;
    }

    public void setStreetAddress(String streetAddress) {
        this.streetAddress = streetAddress;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public int getZipCode() {
        return zipCode;
    }

    public void setZipCode(int zipCode) {
        this.zipCode = zipCode;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 79 * hash + this.iD;
        hash = 79 * hash + Objects.hashCode(this.firstName);
        hash = 79 * hash + Objects.hashCode(this.lastName);
        hash = 79 * hash + Objects.hashCode(this.streetAddress);
        hash = 79 * hash + Objects.hashCode(this.city);
        hash = 79 * hash + Objects.hashCode(this.state);
        hash = 79 * hash + this.zipCode;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Address other = (Address) obj;
        if (this.iD != other.iD) {
            return false;
        }
        if (!Objects.equals(this.firstName, other.firstName)) {
            return false;
        }
        if (!Objects.equals(this.lastName, other.lastName)) {
            return false;
        }
        if (!Objects.equals(this.streetAddress, other.streetAddress)) {
            return false;
        }
        if (!Objects.equals(this.city, other.city)) {
            return false;
        }
        if (!Objects.equals(this.state, other.state)) {
            return false;
        }
        if (this.zipCode != other.zipCode) {
            return false;
        }
        return true;
    }
}
