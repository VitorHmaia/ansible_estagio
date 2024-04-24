# Ansible Repository

Este repositório destina-se ao estudo e prática da ferramenta Ansible. Aqui você encontrará exemplos, tutoriais e recursos para aprender mais sobre o Ansible.

![Ansible Logo](https://miro.medium.com/v2/resize:fit:1400/1*hdwjXl1x4Q3VXmL7UG1XrQ.png)

## O que é o Ansible?

Ansible é uma ferramenta de automação de TI open-source que simplifica a automação de configurações, provisionamento de infraestrutura, implantação de aplicativos e orquestração de processos. Ele utiliza YAML para definir as configurações e tarefas, e SSH para se comunicar com os hosts, tornando-o simples de aprender e usar.

## Requisitos do Sistema

- **Sistema Operacional:** Ansible é compatível com uma ampla variedade de sistemas operacionais, incluindo Linux, macOS e Windows. Certifique-se de ter a versão mais recente do Ansible instalada em sua máquina local ou em um servidor dedicado.

- **Python:** Ansible requer Python 2.7 ou 3.5+ instalado no sistema.

- **Conectividade SSH:** Os hosts que você deseja gerenciar com o Ansible devem ter conectividade SSH habilitada e permitir login com as credenciais necessárias.

- **IDEs:** Qualquer IDE ou editor de texto pode ser usado para editar arquivos YAML e de script Ansible. Exemplos incluem Visual Studio Code, Sublime Text e Vim.

- **Docker:** O projeto requer Docker para ser executado. Certifique-se de ter o Docker instalado em sua máquina.

## Onde Aplicar o Ansible?

## Requisitos Não Funcionais

- **Conhecimento em YAML:** Como o Ansible utiliza YAML para definir configurações e tarefas, é útil ter familiaridade com a sintaxe YAML.
  
- **Conhecimento em SSH:** O Ansible se comunica com os hosts por meio do SSH, portanto, entender os conceitos básicos de SSH é necessário para usar o Ansible com eficácia.

- **Conhecimento em Bash/Shell:** É necessário conhecimento intermediário com comandos Bash, visto que o código que será implementado nos playbooks e roles utilizam a arquitetura UNIX

## Onde Aplicar o Ansible?

Ansible pode ser aplicado em uma variedade de cenários, incluindo:

- **Gerenciamento de Configuração:** Automatize a configuração e manutenção de servidores e dispositivos de rede.
  
- **Provisionamento de Infraestrutura:** Crie, configure e gerencie recursos de infraestrutura na nuvem e localmente.
  
- **Implantação de Aplicativos:** Automatize o processo de implantação de aplicativos em ambientes de desenvolvimento, teste e produção.
  
- **Orquestração de Processos:** Coordene fluxos de trabalho complexos e automatize tarefas sequenciais ou paralelas.

## Comparação com o Terraform

Enquanto o Ansible e o Terraform compartilham alguns objetivos comuns, eles diferem em suas abordagens:

- **Ansible:**
  - Utiliza YAML para definir configurações e tarefas.
  - Gerencia sistemas em um estado desejado.
  - Mais adequado para automação de configuração e gerenciamento de sistemas.

- **Terraform:**
  - Utiliza uma linguagem de configuração declarativa própria.
  - Provisiona e gerencia infraestrutura em provedores de nuvem e serviços.
  - Mais adequado para provisionamento de infraestrutura em nuvem.

Ambas as ferramentas podem ser complementares e utilizadas em conjunto para atender a diferentes necessidades de automação.

## Como Executar o Projeto

Para executar este projeto, siga as etapas abaixo:

1. Certifique-se de ter o Docker instalado em sua máquina.

2. Clone este repositório em sua máquina local:
   ```
   git clone https://github.com/VitorHmaia/ansible_estagio/
   ```
   
3. Navegue até o diretório clonado:
   ```
   cd ansible-repository
   ```
   
4. Construa a imagem Docker utilizando o Dockerfile fornecido:
   ```
   docker build -t ansible-container .
   ```
5. Após a construção da imagem, você pode iniciar um contêiner Docker com o Ansible instalado:
   ```
   docker run -it ansible-container /bin/bash
   ```

## Contribuindo

Se você encontrar erros, tiver sugestões ou quiser contribuir com exemplos e tutoriais, sinta-se à vontade para abrir uma issue ou enviar um pull request!

---

**Nota:** Este repositório é apenas para fins educacionais e não é recomendado para ambientes de produção sem uma avaliação adequada.

