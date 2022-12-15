package org.shola.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;


@Component
@Data
@NoArgsConstructor
public class Fan {
    private int id;
    private String name;
    private String email;
    private String gender;
    private String country;

}
