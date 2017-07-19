package com.dashen.hrms.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

/**
 * Created by Daniel Adenew on 5/8/2017.
 */
@Entity
@Table(name="tbl_role")
public class Role implements Serializable {
    public Role(){}

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    private String role;

    @ManyToMany(mappedBy = "roles",fetch = FetchType.LAZY)
    private Set<UserModel> users;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public Set<UserModel> getUsers() {
        return users;
    }

    public void setUsers(Set<UserModel> users) {
        this.users = users;
    }

    // GETTERS and SETTERS
}
