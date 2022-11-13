package com.catulvir.sectors.repository;

import java.sql.PreparedStatement;
import java.util.HashMap;
import java.util.Map;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.simple.SimpleJdbcInsert;
import org.springframework.stereotype.Repository;

import com.catulvir.sectors.model.Sector;
import com.catulvir.sectors.model.User;

@Repository
public class UserRepository {
    private JdbcTemplate template;

    public UserRepository(JdbcTemplate template) {
        this.template = template;
    }

    public User saveUser(User user) {

        if (user.getId() != null) {
            user.setId(null);
        }

        Map<String, Object> parameters = new HashMap<>();

        String[] columns = { "name", "agree_to_terms" };

        parameters.put("name", user.getName());
        parameters.put("agree_to_terms", user.getAgreeToTerms());

        Number userId = new SimpleJdbcInsert(template)
                .withTableName("users")
                .usingColumns(columns)
                .execute(parameters);

        user.setId(userId.longValue());

        template.batchUpdate("INSERT INTO users_sectors (user_id, sector_id) " +
                "VALUES (?, ?)",
                user.getSectors(),
                50,
                (PreparedStatement ps, Sector sector) -> {
                    ps.setLong(1, user.getId());
                    ps.setLong(2, sector.getId());
                });

        return user;
    }

    public User updateUser(User user) {

        String sql = "UPDATE users SET name = ?, agree_to_terms = ? WHERE id = ?";

        template.update(sql, user.getName(), user.getAgreeToTerms(), user.getId());

        String deleteSectorsSql = "DELETE FROM users_sectors WHERE user_id = ?";

        template.update(deleteSectorsSql, user.getId());

        template.batchUpdate("INSERT INTO users_sectors (user_id, sector_id) " +
                "VALUES (?, ?)",
                user.getSectors(),
                100,
                (PreparedStatement ps, Sector sector) -> {
                    ps.setLong(1, user.getId());
                    ps.setLong(2, sector.getId());
                });

        return user;
    }
}
