package com.booksotre.model;

import java.sql.Timestamp;

import lombok.*;

@Data
@Builder
public class OrdersModel {
    private Integer orderId;
    private Integer customerId;
    private Integer employeeId;
    private Integer totalAmount;
    private Double totalPrice;
    private String orderStatus;
    private Timestamp createAt;
}
