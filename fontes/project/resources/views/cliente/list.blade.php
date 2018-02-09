<html>
    <head></head>
    <body>
        <h1>Listar Clientes</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Nome</th>
                <th>E-mail</th>
            </tr>
            @foreach ($clients as $client)
                <tr>
                    <td>{{ $client->id }}</td>
                    <td>{{ $client->name }}</td>
                    <td>{{ $client->email }}</td>
                </tr>
            @endforeach
        </table>
    </body>
</html>