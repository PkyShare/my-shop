package com.pky.my.shop.commons.persistence;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 实体类基类
 */
@Data
public abstract class AbstractBaseEmpty implements Serializable {
    protected Long id;
    protected Date created;
    protected Date updated;
}
