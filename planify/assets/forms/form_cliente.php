<!doctype html>
<html lang="pt-br">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Bootstrap demo</title>
    <meta content="" name="description">
    <meta content="" name="keyworks">

    <!-- Arquivo CSS -->
    <link rel="stylesheet" href="style.css">

    <!-- Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

</head>

<body>
    <div class="container mb-5 mt-3">
        <div class="container-fluid">
            <h1>Formulário do Cliente</h1>


            <section class="mt-5 pb-4 border-bottom">
                <div class="h4 pb-2 mb-4">
                    Dados Pessoais
                </div>
                <form action="" method="POST" class="row mt-4">
                    <div class="col-7 mb-3 ">
                        <label for="exampleFormControlInput1" class="form-label">Nome completo</label>
                        <input type="text" class="form-control" id="texto" required>
                    </div>

                    <div class="col mb-3 ">
                        <label for="exampleFormControlInput" class="form-label">CPF (apenas números)</label>
                        <input type="text" class="form-control" id="cpf" onKeyPress="MascaraGenerica(this, 'CPF');" maxlength="14" required>
                    </div>

                    <div class="col mb-3 ">
                        <label for="exampleFormControlInpu" class="form-label">Telefone (apenas números)</label>
                        <input type="text" class="form-control" id="telefone" onKeyPress="MascaraGenerica(this, 'TELEFONE');" maxlength="16" required>
                    </div>
                    <div class="col-12 mt-3">
                        <p class="d-inline-flex gap-3">
                            <button class="btn btn-primary" type="submit">Salvar dados</button>
                            <a class="btn btn-primary" href="../../index.php" role="button">Cancelar</a>
                    </div>
                </form>
            </section>
        </div>
    </div>


    <!-- Bootstrap JS CDN -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>

    <script src="../js/mascaraform.js"></script>
</body>

</html>