# Delivery - Controle de Entregas

Aplicativo Flutter de controle de entregas, desenvolvido como projeto acadêmico.

**Alunos:** Leonardo Sudário Delfino de Oliveira, Flavio

## Sobre o Projeto

Aplicativo para gerenciamento de entregas com cadastro em memória (sem persistência de dados). Permite visualizar a lista de entregas e cadastrar novas entregas com código e valor do pedido.

## Funcionalidades

- Listagem de entregas com cards contendo ícone, código e valor formatado em R$
- Cadastro de novas entregas via formulário com validação de campos
- Formatação automática de moeda (vírgula inserida automaticamente durante a digitação)
- Atualização dinâmica da lista com atraso de 1 segundo (Future.delayed)
- Tema visual personalizado com cores laranja (delivery)

## Estrutura do Projeto

```
lib/
├── main.dart                      # App principal (DeliveryApp)
├── models/
│   └── entrega.dart               # Modelo Entrega (codigoDaEntrega, pedido)
├── components/
│   ├── editor.dart                # Componente de campo de texto reutilizável
│   └── moeda_input_formatter.dart # Formatter de moeda brasileira
└── screens/
    └── entregas/
        ├── lista.dart             # Tela de listagem de entregas
        └── formulario.dart        # Tela de cadastro de nova entrega
```

## Entrega

| Atributo | Tipo | Descrição |
|----------|------|-----------|
| codigoDaEntrega | int | Identificador numérico da entrega |
| pedido | double | Valor monetário do pedido |

## Como Executar

```bash
flutter pub get
flutter run
```

## Dependências

- [intl](https://pub.dev/packages/intl) - Formatação de moeda (R$)
