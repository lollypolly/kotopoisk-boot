package ru.itis.kotopoisk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import ru.itis.kotopoisk.models.Cat;

import java.util.*;

@RestController
public class CatController {

    @Value("${api.key}")
    private String apiKey;

    private final RestTemplate restTemplate;
    private final HttpHeaders headers;
    private final HttpEntity<String> entity;

    private CatController(){
        restTemplate = new RestTemplate();
        headers = new HttpHeaders();

        headers.setContentType(MediaType.APPLICATION_JSON);
        headers.setAccept(Collections.singletonList(MediaType.APPLICATION_JSON));
        headers.set("x-api-key", apiKey);

        entity = new HttpEntity<>(headers);
    }

    @GetMapping("/cats")
    public Collection<Cat> cats() {
        ResponseEntity<Cat[]> response = restTemplate.exchange("https://api.thecatapi.com/v1/images/search?limit=100",
                HttpMethod.GET, entity, Cat[].class);

        if(response.getStatusCode() == HttpStatus.OK) {
            if(response.getBody() != null) return Arrays.asList(response.getBody());
        }

        return new ArrayList<>();
    }
}
