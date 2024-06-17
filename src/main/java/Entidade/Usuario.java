package Entidade;



public class Usuario {
    private String cpf;
    private String email;
    private String  nome;
    private String senha;
    private String telefone;
    private String tipo;
    private String descricao;
    private String data;
    private String hora;
    private String informacao;
    private String solicitar;
    private String apartamento;
    private String dia;
    private String permissao;
    private String pessoa;
    private String role;
    private String titulo;
    private String mensagem;
    private int remetente_Id;
    private int destinatario_Id;

    public String getCpf() {
        return cpf;
    }

    public void setCpf (String cpf) {
        this.cpf = cpf;
    }

    public String getSenha() {

        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail (String email) {
        this.email = email;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getTelefone() {
        return telefone;
    }


    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getData() {
        return data;
    }

    public void setData(String data) {
        this.data = data;
    }

    public String getHora() {
        return hora;
    }

    public void setHora(String hora) {
        this.hora = hora;
    }

    public String getInformacao() {
        return informacao;
    }

    public void setInformacao(String informacao) {
        this.informacao = informacao;
    }

    public String getSolicitar() {
        return solicitar;
    }

    public void setSolicitar(String solicitar) {
        this.solicitar = solicitar;
    }


    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public String getPermissao() {
        return permissao;
    }

    public void setPermissao(String permissao) {
        this.permissao = permissao;
    }


    public String getApartamento() {
        return apartamento;
    }

    public void setApartamento(String apartamento) {
        this.apartamento = apartamento;
    }

    public String getPessoa() {
        return pessoa;
    }

    public void setPessoa(String pessoa) {
        this.pessoa = pessoa;
    }


    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getMensagem() {
        return mensagem;
    }

    public void setMensagem(String mensagem) {
        this.mensagem = mensagem;
    }


    public int getRemetente_Id() {
        return remetente_Id;
    }

    public void setRemetente_Id(int remetente_Id) {
        this.remetente_Id = remetente_Id;
    }

    public int getDestinatario_Id() {
        return destinatario_Id;
    }

    public void setDestinatario_Id(int destinatario_Id) {
        this.destinatario_Id = destinatario_Id;
    }
}

