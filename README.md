# Trabalho_individual/ Modulo_2

# Imagem do diagrama:
![image](https://github.com/BieldoJT/Trabalho_individual--modulo_2/assets/113216641/9d85630c-f47e-4b2a-baf2-1f5466c010c9)



# Respondendo as perguntas:


1. **Quais são as entidades necessárias?**
   - As entidades necessárias são:
     - Empresa
     - Colaborador
     - Tecnologia
     - relação_empresa_tecnologia
     - areas_tecnologia

2. **Quais são os principais campos e seus respectivos tipos?**
   - **Empresa:**
     - id_empresa INT *PRIMARY KEY*
     - cnpj VARCHAR *UNIQUE*
     - nome_empresa VARCHAR
     - endereco TEXT
     - tel_empresa VARCHAR
     - ativo BOLEANO
       
   - **Colaboradores:**
     - id_colaborador INT *PRIMARY KEY*
     - id_empresa INT
     - nome_colaborador VARCHAR
     - email_colaborador VARCHAR *UNIQUE*
     - cargo_colaborador VARCHAR
     - data_inicio DATE
     - data_fim DATE
       
   - **Tecnologia:**
     - id_tecnologia INT *PRIMARY KEY*
     - id_areaTec INT *FOREING KEY*
     - nome_tecnologia VARCHAR
     - area_tecnologia VARCHAR
       
   - **Relação_empresa_tecnologia:**
     - id_relacao INT *PRIMARY KEY*
     - id_empresa INT *FOREING KEY*
     - id_tecnologia INT *FOREING KEY*
     - data_inicio_relacao DATE
       
   - **Areas_tecnologia:**
     - id_areaTec INT *PRIMARY KEY*
     - nome_area_tecnologia VARCHAR

3. **Como essas entidades estão relacionadas?**
   - As entidades estão relacionadas da seguinte forma:
   - Uma Empresa pode ter vários Colaboradores e pode utilizar várias Tecnologias.
   - Um Colaborador está associado a uma Empresa e a uma Área específica.
   - Uma Tecnologia pertence a uma Área específica.
   - A tabela Relação_empresa_tecnologia é uma tabela de associação entre Empresa e Tecnologia, permitindo o relacionamento muitos-para-muitos entre essas entidades.
