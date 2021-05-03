package ru.itis.kotopoisk.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import ru.itis.kotopoisk.models.states.UserRole;
import ru.itis.kotopoisk.models.states.UserState;

import javax.persistence.*;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String email;
    private String password;

    private String nickname;

    @Enumerated(value = EnumType.STRING)
    private UserState state;

    private String confirmCode;
    private UserRole role;

//    @OneToMany(mappedBy = "author")
//    private List<Article> createdArticles;
//
//    @ManyToMany(mappedBy = "likes")
//    private List<Article> likedArticles;
}
