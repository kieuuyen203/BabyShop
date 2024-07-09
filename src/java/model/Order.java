/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author admin
 */
@Builder
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class Order {

    private int orderID;
    private Date date;
    private int total_cost;
    private String fullName;
    private String mobile;
    private String address;
    private int status_order;
    private int UserId;
    private int saler_id;
    private String note;
    private int countProduct;
    private String fullNameFirstProduct;
    private String status_order_name;
    private String fullNameSaler;
    List<OrderDetail> listOrderDetail = new ArrayList<>();
}
