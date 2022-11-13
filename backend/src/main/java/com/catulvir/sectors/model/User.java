package com.catulvir.sectors.model;

import java.util.List;
import lombok.*;

@AllArgsConstructor
@RequiredArgsConstructor
@Data
public class User {

    private Long id;

    private String name;

    private Boolean agreeToTerms;

    List<Sector> sectors;
}
