package ru.itis.kotopoisk.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Cat {
    private Object[] breeds;
    private Object[] categories;
    private String id;
    private String url;
    private float width;
    private float height;
}