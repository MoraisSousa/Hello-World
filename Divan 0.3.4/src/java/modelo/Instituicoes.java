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
@Table(name = "instituicoes")
@NamedQueries({
    @NamedQuery(name = "Instituicoes.findAll", query = "SELECT i FROM Instituicoes i")})
public class Instituicoes implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idinstituicoes")
    private Integer idinstituicoes;
    @Basic(optional = false)
    @Column(name = "nome")
    private String nome;

    public Instituicoes() {
    }

    public Instituicoes(Integer idinstituicoes) {
        this.idinstituicoes = idinstituicoes;
    }

    public Instituicoes(Integer idinstituicoes, String nome) {
        this.idinstituicoes = idinstituicoes;
        this.nome = nome;
    }

    public Integer getIdinstituicoes() {
        return idinstituicoes;
    }

    public void setIdinstituicoes(Integer idinstituicoes) {
        this.idinstituicoes = idinstituicoes;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idinstituicoes != null ? idinstituicoes.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Instituicoes)) {
            return false;
        }
        Instituicoes other = (Instituicoes) object;
        if ((this.idinstituicoes == null && other.idinstituicoes != null) || (this.idinstituicoes != null && !this.idinstituicoes.equals(other.idinstituicoes))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "modelo.Instituicoes[ idinstituicoes=" + idinstituicoes + " ]";
    }

}
