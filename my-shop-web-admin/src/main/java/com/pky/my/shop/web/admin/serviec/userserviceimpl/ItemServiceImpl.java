package com.pky.my.shop.web.admin.serviec.userserviceimpl;

import com.pky.my.shop.domain.Item;
import com.pky.my.shop.web.admin.mapper.IItemMapper;
import com.pky.my.shop.web.admin.serviec.IItemService;
import org.springframework.stereotype.Service;

@Service
public class ItemServiceImpl extends BaseCrudServiceImpl<Item, IItemMapper> implements IItemService {
}
