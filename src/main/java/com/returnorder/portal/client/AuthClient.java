   package com.returnorder.portal.client;

import com.returnorder.portal.dto.AuthenticationResponseDTO;
import com.returnorder.portal.dto.ValidatingDTO;
import com.returnorder.portal.model.LoginModel;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;


@FeignClient(name = "auth-client", url = "https://returnxauth.herokuapp.com/authorization")
    public interface AuthClient {


        @PostMapping(value = "/login")
        public AuthenticationResponseDTO login(@RequestBody LoginModel userlogincredentials);
        
        @GetMapping(value = "/validate")
        public ValidatingDTO getsValidity(@RequestHeader(name = "Authorization", required = true) String token);
        
    }
    

