package com.project.bank;

public class Customer {
    private long accNo;
    private String name;
    private long phone;
    private String email;
    private double balance;
    private int pin;

    public Customer(long accNo, String name, long phone, String email, double balance, int pin) {
        this.accNo = accNo;
        this.name = name;
        this.phone = phone;
        this.email = email;
        this.balance = balance;
        this.pin = pin;
    }

    public long getAccNo() {
        return accNo;
    }

    public String getName() {
        return name;
    }

    public long getPhone() {
        return phone;
    }

    public String getEmail() {
        return email;
    }

    public double getBalance() {
        return balance;
    }

    public int getPin() {
        return pin;
    }
}

