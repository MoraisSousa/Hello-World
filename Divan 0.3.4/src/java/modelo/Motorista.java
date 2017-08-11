/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author Lucas
 */
@Entity
@Table(name = "motorista")
@NamedQueries({
    @NamedQuery(name = "Motorista.findAll", query = "SELECT m FROM Motorista m"),
    
    @NamedQuery(name = "Motorista.findByEmail", query = "SELECT m FROM Motorista m where m.email=:email"),
        
    @NamedQuery(name = "Motorista.findForLogin", query = "SELECT m FROM Motorista m where m.email=:email and m.senha=:senha and m.tipoUsuario=:tipoUsuario")    
})
public class Motorista implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idmotorista")
    private Integer idmotorista;
    @Basic(optional = false)
    @Column(name = "nome")
    private String nome;
    @Column(name = "cpf")
    private String cpf;
    @Column(name = "email")
    private String email;
    @Basic(optional = false)
    @Column(name = "telefone")
    private String telefone;
    @Basic(optional = false)
    @Column(name = "celular")
    private String celular;
    @Basic(optional = false)
    @Column(name = "senha")
    private String senha;
    @Basic(optional = false)
    @Column(name = "tipo_usuario")
    private String tipoUsuario;
    @Column(name = "preco")
    private Integer preco;

    public Motorista() {
    }

    public Motorista(Integer idmotorista) {
        this.idmotorista = idmotorista;
    }

    public Motorista(Integer idmotorista, String nome, String telefone, String celular, String senha, String tipoUsuario) {
        this.idmotorista = idmotorista;
        this.nome = nome;
        this.telefone = telefone;
        this.celular = celular;
        this.senha = senha;
        this.tipoUsuario = tipoUsuario;
    }

    public Integer getIdmotorista() {
        return idmotorista;
    }

    public void setIdmotorista(Integer idmotorista) {
        this.idmotorista = idmotorista;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getCelular() {
        return celular;
    }

    public void setCelular(String celular) {
        this.celular = celular;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getTipoUsuario() {
        return tipoUsuario;
    }

    public void setTipoUsuario(String tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }

    public Integer getPreco() {
        return preco;
    }

    public void setPreco(Integer preco) {
        this.preco = preco;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idmotorista != null ? idmotorista.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Motorista)) {
            return false;
        }
        Motorista other = (Motorista) object;
        if ((this.idmotorista == null && other.idmotorista != null) || (this.idmotorista != null && !this.idmotorista.equals(other.idmotorista))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Motorista[ idmotorista=" + idmotorista + " ]";
    }

}
