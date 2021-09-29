package com.paymybuddy.config;

import org.springframework.context.annotation.*;
import org.springframework.web.servlet.config.annotation.*;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

  /*  @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler("/css/*")
                .addResourceLocations("/WEB-INF/css/");
        registry.addResourceHandler("/img/*")
                .addResourceLocations("/WEB-INF/img/");

    }*/
}
