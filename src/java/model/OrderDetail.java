/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author dongh
 */
@Builder
@Getter
@Setter
@ToString
@AllArgsConstructor
@NoArgsConstructor
public class OrderDetail {

    private int orderDetail_id;
    private int product_price;
    private int quantity;
    private int order_id;
    private int product_id;
    private String product_name;
    private int total_cost;
    private String product_image;
    private String category_name;
    private int category_id;
}
