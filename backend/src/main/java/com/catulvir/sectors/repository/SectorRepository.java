package com.catulvir.sectors.repository;

import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.catulvir.sectors.model.Sector;

@Repository
public class SectorRepository {
    private JdbcTemplate template;

    public SectorRepository(JdbcTemplate template) {
        this.template = template;
    }

    public List<Sector> getSectors() {

        String sql = "WITH RECURSION_SECTORS(ID, OG_NAME, NAME, LEVEL) AS (" +
                "SELECT ID, NAME AS OG_NAME, NAME, 0 FROM PUBLIC.SECTORS WHERE PARENT_ID IS NULL " +
                "UNION ALL " +
                "SELECT SECTORS.ID, SECTORS.NAME AS OG_NAME, COALESCE(RECURSION_SECTORS.NAME || '/', '') || SECTORS.NAME, LEVEL + 1 "
                +
                "FROM RECURSION_SECTORS INNER JOIN PUBLIC.SECTORS ON RECURSION_SECTORS.ID = SECTORS.PARENT_ID) " +
                "SELECT ID, OG_NAME, LEVEL FROM RECURSION_SECTORS WHERE NAME IS NOT NULL ORDER BY NAME";
        return template.query(sql, (rs, rowNum) -> new Sector(
                rs.getLong("id"),
                rs.getString("og_name"),
                rs.getInt("level")));
    }
}