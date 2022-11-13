package com.catulvir.sectors.controller;

import java.util.List;

import org.springframework.web.bind.annotation.*;

import com.catulvir.sectors.model.Sector;
import com.catulvir.sectors.repository.SectorRepository;

@RestController
public class SectorController {
    private SectorRepository sectorRepository;

    public SectorController(SectorRepository sectorRepository) {
        this.sectorRepository = sectorRepository;
    }

    @GetMapping("sectors")
    public List<Sector> getSectors() {
        return sectorRepository.getSectors();
    }
}
