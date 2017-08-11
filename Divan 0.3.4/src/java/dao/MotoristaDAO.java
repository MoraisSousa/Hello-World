/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.ResultSet;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.TypedQuery;
import modelo.Motorista;

/**
 *
 * @author Lucas
 */
public class MotoristaDAO {

    EntityManager em;

    public MotoristaDAO() throws Exception {
        EntityManagerFactory emf;
        emf = Conexao.getConexao();
        em = emf.createEntityManager();
    }

    public void incluir(Motorista obj) throws Exception {
        try {
            em.getTransaction().begin();
            em.persist(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();

        }

    }

    public List<Motorista> listar() throws Exception {
        return em.createNamedQuery("Motorista.findAll").getResultList();
    }

//    public List<Motorista> listar(String nome) throws Exception {
//        //passar o parâmetro para query
//        TypedQuery<Motorista> query = em.createNamedQuery("Motorista.findByName", Motorista.class);
//        //seta o parâmetro
//        query.setParameter("nome", nome);
//        //retorna minha lista
//        return query.getResultList();
    public List<Motorista> listar(String email) throws Exception {
        //passar o parâmetro para query
        TypedQuery<Motorista> query = em.createNamedQuery("Motorista.findByEmail", Motorista.class);
        //seta o parâmetro
        query.setParameter("email", email);
        //retorna minha lista
        return query.getResultList();

    }
    
    
    public List<Motorista> listar(String email, String senha, String tipoUsuario) throws Exception {
        //passar o parâmetro para query
        TypedQuery<Motorista> query = em.createNamedQuery("Motorista.findForLogin", Motorista.class);
        //seta o parâmetro
        query.setParameter("email", email);
        query.setParameter("senha", senha);
        query.setParameter("tipoUsuario", tipoUsuario);
        //retorna minha lista
        return query.getResultList();

    }

    public void alterar(Motorista obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.merge(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
            throw e;
        } finally {
            em.close();
        }
    }

    public void excluir(Motorista obj) throws Exception {

        try {
            em.getTransaction().begin();
            em.remove(obj);
            em.getTransaction().commit();
        } catch (RuntimeException e) {
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
    }

    public void fechaEmf() {
        Conexao.closeConexao();
    }

}
