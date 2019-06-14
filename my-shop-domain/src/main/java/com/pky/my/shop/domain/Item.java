package com.pky.my.shop.domain;

import com.pky.my.shop.commons.persistence.AbstractBaseEmpty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 商品
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class Item extends AbstractBaseEmpty {
    private String title;
    private String sellPoint;
    private Long price;
    private Integer num;
    private String barcode;
    private String image;
    private Long cid;
    private Integer status;
}
