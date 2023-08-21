<div align='center'>

# Devops Auto-Pipes-KubeX
Um projeto inserido no Bootcamp Avanti Atlântico que incorpora práticas de DevOps, incluindo automação de infraestrutura, contêineres Docker, orquestração Kubernetes, automação com Ansible e pipelines de integração e entrega contínua.

<img src="https://github.com/rc-ventura/devops-auto-pipes-kubeX/assets/87483916/00046290-5aa4-4a73-b6b0-f1572ae4fe54" width="800" height="550"/>
</div>


## Script de Gerenciamento de Usuários

O script `setup.sh` é usado para configurar uma estrutura básica de diretórios, grupos e usuários.

### Executando o Script

1. Clone este repositório para o seu ambiente local:

```bash
git clone https://github.com/seu-usuario/devops-auto-pipes-kubeX.git
cd devops-auto-pipes-kubeX
```

2. Navegue para o diretório de scripts:

```bash
cd scripts
```

3. Execute o script de provisionamento para criar a estrutura de diretórios, grupos e usuários:

```bash
bash setup.sh
```

4. O script irá criar a estrutura de diretórios, grupos e usuários conforme descrito no projeto.

## Provisionamento da Máquina Virtual com Vagrant

O Vagrant é usado para criar e gerenciar uma máquina virtual para desenvolvimento.

### Pré-requisitos

- Vagrant instalado
- VirtualBox instalado

### Configuração e Inicialização

1. Certifique-se de que você está no diretório raiz do repositório:

```bash
cd /caminho/para/devops-auto-pipes-kubeX
```

2. Inicialize a máquina virtual com o Vagrant:

```bash
vagrant up
```

3. Aguarde enquanto o Vagrant cria e provisiona a máquina virtual.

4. Verifique se a máquina virtual está em execução e acessível:

```bash
vagrant status
```

5. Acesse a máquina virtual via SSH:

```bash
vagrant ssh
```

## Contribuição

Sinta-se à vontade para contribuir com melhorias e novas funcionalidades. Basta fazer um fork deste repositório, criar uma branch com suas alterações e enviar um pull request.
```

Lembre-se de substituir `/caminho/para/devops-auto-pipes-kubeX` pelo caminho real para o diretório do seu repositório. Este é apenas um exemplo simplificado, portanto, certifique-se de ajustar os detalhes de acordo com o seu projeto e suas necessidades.
