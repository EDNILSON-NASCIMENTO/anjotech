package br.com.anjotech.anjoapp.model;

import lombok.Data;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;

@Entity
@Table(name = "tb_usuario")
@Data
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotNull
    @Size(min = 11,max = 11)
    private String cpf;
    @NotNull
    @Size(min=2, max=100)
    private String nome;
    @NotNull
    @Size(min=5, max=50)
    private String email;
    @NotNull
    @Size(min=1, max=1)
    private Character genero;
    @Size(min=2, max=100)
    private String logradouro;
    @Size(min=2, max=50)
    private String bairro;
    @Size(min=2, max=100)
    private String cidade;
    @NotNull
    @Size(min=2, max=100)
    private String cep;
    @Size(min=5, max=16)
    private String senha;
    @Temporal(TemporalType.DATE)
    private Date dataNascimento;


}
