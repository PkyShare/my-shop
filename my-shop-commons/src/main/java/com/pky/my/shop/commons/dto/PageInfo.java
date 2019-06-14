package com.pky.my.shop.commons.dto;

import com.pky.my.shop.commons.persistence.AbstractBaseEmpty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.util.List;

/**
 * 分页数据传输对象
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class PageInfo<T extends AbstractBaseEmpty> implements Serializable {

    private int draw;
    private int recordsTotal;
    private int recordsFiltered;
    private List<T> data;

}
