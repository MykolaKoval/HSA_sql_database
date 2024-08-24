package com.course.hsa.controller.dto;

import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Data
@AllArgsConstructor
public class UserDto {

    private String name;
    private Date birthDate;
}
