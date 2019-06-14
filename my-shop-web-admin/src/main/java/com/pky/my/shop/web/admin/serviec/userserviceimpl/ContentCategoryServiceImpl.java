package com.pky.my.shop.web.admin.serviec.userserviceimpl;

import com.pky.my.shop.domain.ContentCategory;
import com.pky.my.shop.web.admin.mapper.IContentCategoryMapper;
import com.pky.my.shop.web.admin.serviec.IContentCategoryService;
import org.springframework.stereotype.Service;

@Service
public class ContentCategoryServiceImpl extends BaseCrudServiceImpl<ContentCategory, IContentCategoryMapper> implements IContentCategoryService {
}
