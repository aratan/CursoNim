import templates

proc pagina (nombre: string): string = tmpli html"""
    <body>
        <h1>Hello $nombre!</h1>
    </body>
    """

echo pagina("Victor")