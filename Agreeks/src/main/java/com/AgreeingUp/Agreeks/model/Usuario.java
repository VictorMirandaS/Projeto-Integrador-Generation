package com.AgreeingUp.Agreeks.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name = "tb_usuario")
public class Usuario {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@NotNull
	@Size(min = 5, max = 255)
	private String nome;
	@NotNull
	@Size(min = 5, max = 255)
	private String email;
	@NotNull
	@Size(min = 8)
	private String senha;

}
