package com.pky.my.shop.domain;

import com.pky.my.shop.commons.persistence.AbstractBaseEmpty;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class ContentCategory extends AbstractBaseEmpty {
    private Long parentId;
    private String name;
    private Integer status;
    private Integer sortOrder;
    private Boolean isParent;

}
