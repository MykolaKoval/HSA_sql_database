package com.course.hsa.controller;

import com.course.hsa.controller.dto.UserDto;
import com.course.hsa.domain.User;
import com.course.hsa.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class UserController {

    private final UserRepository userRepository;

    @PostMapping(path = "/users")
    @ResponseStatus(HttpStatus.CREATED)
    public void createUser(@RequestBody UserDto userDto) {
        var entity = map(userDto);
        userRepository.save(entity);
    }

    private User map(UserDto dto) {
        var entity = new User();
        entity.setName(dto.getName());
        entity.setBirthDate(dto.getBirthDate());
        return entity;
    }
}
