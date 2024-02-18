# Full Cycle - Go Export - Desafio Stress Test

Este projeto faz parte de um desafio do curso de pós gradução em Go - Go Expert - da Full Cycle.

## Introdução

Este projeto implementa uma ferramenta de *Stress Test* escrita na linguagem de programação Go.

### Como executar

O projeto está publicado no Docker Hub. Portanto, para executá-lo utilize o seguinte comando:

```sh
docker run josimarz/stresstesttool
```

Como saída, a ferramenta exibirá uma ajuda:

```
Usage: stresstest [options]
Options:
  --url         URL to request.
  --requests    Total of requests to send to URL especified by --url. Default to 10.
  --concurrency Total of concurrent requests. Default to 1.
  --help        Show this help.
```

Siga as instruções da ferramenta para executa um *stress test*. Após concluir a execução do teste, a ferramenta exibirá um relatório como exemplificado abaixo:

```
Stress Test tool, Version 1.0
Copyright 2024 Josimar Zimermann, https://github.com/josimarz/fc-goexpert-stress-test

Benchmarking https://google.com/ (be patient)...

Results
Concurrency level:          100
Time taken for tests:       10.01 seconds
Total of required requests: 1000
Total of done requests:     6
Errored requests:           979
Successfully requests:      6
Unsuccessfully requests:

    Code    Quantity
    500     10
    303     5
```

A seguir uma explicação de cada um dos campos do relatório:

* Concurrency level: Quantidade de requisições concorrentes solicitada pelo usuário.
* Time taken for tests: Tempo total em segundos para execução dos testes.
* Total of required requests: Total de requisições solicitada pelo usuário.
* Total of done requests: Total de requisições que foram executadas sem erro.
* Errored requests: Total de requisições com erro.
* Sucessfully requests: Total de requisições executadas com sucesso (código 200).
* Unsuccessfully requests: Relação de requisições que retornaram código diferente de 200.