package org.fanbar.cw.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;
import org.springframework.context.annotation.PropertySource;
import org.springframework.context.support.PropertySourcesPlaceholderConfigurer;

//// Based on Baeldung Ebook example
@Configuration
//// @ImportResource( { "classpath*:/applicationContext-jpa.xml", "classpath*:/applicationContext-security.xml", "classpath*:/applicationContext.xml", "WEB-INF/spring/webmvc-config.xml" } )
//// @ImportResource( { "classpath*:META-INF/spring/applicationContext*.xml", "classpath*:META-INF/persistence.xml" } )
//// @ImportResource( { "classpath*:/spring/applicationContext*.xml", "classpath*:/persistence.xml" } )
@ImportResource( { "classpath*:META-INF/spring/applicationContext*.xml" } )
//@ImportResource( { "classpath*:/applicationContext*.xml", "classpath*:/persistence.xml", "classpath*:/webmvc-config.xml" } )
//@ComponentScan( basePackages = "org.fanbar.cw" )
//// @PropertySource({ "classpath:rest.properties", "classpath:web.properties" })
// @PropertySource({ "classpath*:META-INF/spring/database.properties" })
@PropertySource({ "classpath:META-INF/spring/database.properties" })
public class AppConfig{
 @Bean
 public static PropertySourcesPlaceholderConfigurer properties() {
 return new PropertySourcesPlaceholderConfigurer();
 }
}