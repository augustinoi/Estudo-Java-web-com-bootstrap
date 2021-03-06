/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import dao.DAOcliente;
import java.util.ArrayList;

/**
 *
 * @author Nando Luzy
 */
public class Cliente {
    
    private int id;
    private String nomeFantasia;
    private String cnpj;
    private String servicoContratado;
    private String telefone;
    private String email;
    private String descricao;

    public Cliente(int id, String nomeFantasia, String cnpj, String servicoContratado, String telefone, String email, String descricao) {
        this.id = id;
        this.nomeFantasia = nomeFantasia;
        this.cnpj = cnpj;
        this.servicoContratado = servicoContratado;
        this.telefone = telefone;
        this.email = email;
        this.descricao = descricao;
    }
    public Cliente(){
        
    }
    
    public String getNomeFantasia() {
        return nomeFantasia;
    }

    public void setNomeFantasia(String nomeFantasia) {
        this.nomeFantasia = nomeFantasia;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getServicoContratado() {
        return servicoContratado;
    }

    public void setServicoContratado(String servicoContratado) {
        this.servicoContratado = servicoContratado;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    /**
     * 
     * CHAMADA DA DAO
     * 
     * @throws Exception 
     */
    
    
    //Create
    public void insert() throws Exception{
        DAOcliente dao = new DAOcliente();
        dao.save(this);
    }
    //Read
    public ArrayList<Cliente> findAll() throws Exception{   
        DAOcliente dao = new DAOcliente();
        return dao.findAll();
    }
    //////////////////////////////////////////////////////////////AQUI PAREI
    public void findForID() throws Exception{
        DAOcliente dao = new DAOcliente();
        this.setNomeFantasia(dao.findForID(this.id).getNomeFantasia());
        this.setCnpj(dao.findForID(this.id).getCnpj());
        this.setServicoContratado(dao.findForID(this.id).getServicoContratado());
        this.setTelefone(dao.findForID(this.id).getTelefone());
        this.setEmail(dao.findForID(this.id).getEmail());
        this.setDescricao(dao.findForID(this.id).getDescricao());
    }
    //Update
    public void update() throws Exception{ 
        DAOcliente dao = new DAOcliente();
        dao.update(this);
    }
    //Delete
    public void delete() throws Exception{
        DAOcliente dao = new DAOcliente();
        dao.delete(this);
    }
}
