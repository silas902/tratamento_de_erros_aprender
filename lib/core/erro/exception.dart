class ServerException implements Exception {
  final int? statusCode;
  final String? message400,
      message401,
      message402,
      message403,
      message404,
      message405,
      message406,
      message407,
      message408,
      message409,
      message410,
      message411,
      message412,
      message413,
      message414,
      message415,
      message416,
      message417,
      message500,
      message501,
      message502,
      message503,
      message504,
      message505;

  ServerException({
    required this.statusCode,
    this.message400,
    this.message401,
    this.message402,
    this.message403,
    this.message404,
    this.message405,
    this.message406,
    this.message407,
    this.message408,
    this.message409,
    this.message410,
    this.message411,
    this.message412,
    this.message413,
    this.message414,
    this.message415,
    this.message416,
    this.message417,
    this.message500,
    this.message501,
    this.message502,
    this.message503,
    this.message504,
    this.message505,
  });

  Map get mensageError => <int, String>{
        400: message400 ?? 'Bad Request (Requisição inválida))',
        401: message401 ?? 'Unauthorized (não autorizado)',
        402: message402 ?? 'Payment Required (pagamento necessário)',
        403: message403 ?? 'Forbidden (Acesso negado)',
        404: message404 ?? 'Not Found (não encontrado)',
        405: message405 ?? 'Method Not Allowed (método não permitido))',
        406: message406 ?? 'Not Acceptable (não aceitável)',
        407: message407 ??
            'Proxy Authentication Required (autenticação de proxy necessária))',
        408: message408 ?? 'Request Timeout (tempo limite da requisição)',
        409: message409 ?? 'Conflict (conflito)',
        410: message410 ?? 'Gone (desaparecido)',
        411: message411 ?? 'Length Required (comprimento necessário))',
        412: message412 ?? 'Precondition Failed(precondição falhou)',
        413: message413 ?? 'Payload Too Large (conteúdo muito grande)',
        414: message414 ?? 'URI Too Long (URI muito longo)',
        415: message415 ??
            'Unsupported Media Type (tipo de mídia não suportado)',
        416: message416 ?? 'Range Not Satisfiable (intervalo não satisfatório)',
        417: message417 ?? 'Expectation Failed  (expectativa falhou)',
        500: message500 ?? 'Internal Server Error (erro interno do servidor)',
        501: message501 ?? 'Not Implemented (não implementado)',
        502: message502 ?? 'Bad Gateway (porta de entrada ruim)',
        503: message503 ?? 'Service Unavailable (serviço indisponível)',
        504: message504 ?? 'Gateway Timeout (tempo limite da porta de entrada)',
        505: message505 ??
            'HTTP Version Not Supported  (versão HTTP não suportada)',
      };
}

class DataPersistenceException implements Exception {}

class NoConnectionException implements Exception {}