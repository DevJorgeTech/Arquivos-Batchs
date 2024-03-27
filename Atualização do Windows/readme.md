# README

## Descrição:

Este script batch utiliza o script `slmgr.vbs` para instalar uma chave de produto (Product Key) no Windows. 

## Uso:

1. **Execução do Script**:

  - Certifique-se de que está executando o script em um ambiente compatível com Windows.   
  - Execute o script batch no prompt de comando ou através de um duplo clique no arquivo.

3. **Parâmetros**:
   - A única linha de comando contida no script é a seguinte:
     ```
     slmgr.vbs /ipk ABCDE-FGHIJ-KLMN-OPQRS-TUVWX
     ```
   - Substitua `ABCDE-FGHIJ-KLMN-OPQRS-TUVWX` pela chave de produto que deseja instalar. Certifique-se de que a chave de produto é válida para a versão do Windows que está utilizando.

## Observações:

- **Chave de Produto**: A chave de produto (`ABCDE-FGHIJ-KLMN-OPQRS-TUVWX`) deve ser substituída por uma chave de produto válida para ativação do Windows. Essa chave é fornecida ao adquirir uma licença do Windows.
- **slmgr.vbs**: Este é um script de gerenciamento de licenças de software do Windows. Ele é usado para instalar, ativar ou exibir informações sobre a licença do Windows.
- **/ipk**: Este é um argumento utilizado com o `slmgr.vbs` que indica que a operação a ser realizada é a instalação de uma chave de produto.

