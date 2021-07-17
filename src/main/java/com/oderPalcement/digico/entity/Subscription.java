package com.oderPalcement.digico.entity;

import javax.persistence.*;

import static javax.persistence.GenerationType.IDENTITY;

@Entity
@Table(name="subscription"
        ,catalog="digico_labs"
)
public class Subscription {


    @Id
    @GeneratedValue(strategy=IDENTITY)
    private Integer id;

    @Column(name="name")
    private String name;

    @Column(name="status")
    private String status;

    public Subscription() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
