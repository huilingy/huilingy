package org.ssmtest.entity;


import java.io.Serializable;
import java.util.Date;
import java.util.List;

/**
 * @author xujin
 * @package-name com.mybatis.entity
 * @createtime 2019-08-26 22:19
 */

public class User implements Serializable {
    private Integer id;
    private String username;
    private String password;

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
