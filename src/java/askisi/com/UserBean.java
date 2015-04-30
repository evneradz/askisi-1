/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package askisi.com;

/**
 *
 * @author Evaggelia
 */
public class UserBean {

    private String username;
    private String password;
    private String firstName;
    private String lastName;
    private String sex;
    private String level;
    private String subuser;
    public boolean valid;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String newFirstName) {
        firstName = newFirstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String newLastName) {
        lastName = newLastName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String newPassword) {
        password = newPassword;
    }

    public String getUsername() {
        return username;
    }

    public void setUserName(String newUsername) {
        username = newUsername;
    }

    public boolean isValid() {
        return valid;
    }

    public void setValid(boolean newValid) {
        valid = newValid;
    }
    
    public String getSex() {
        return sex;
    }

    public void setSex(String newSex) {
        sex = newSex;
    }
    
    public String getLevel() {
        return level;
    }

    public void setLevel(String newLevel) {
        level = newLevel;
    }
    
    public String getSubuser() {
        return subuser;
    }

    public void setSubuser(String newSubuser) {
        subuser = newSubuser;
    }
}
