class HomeController < ApplicationController
  def index
    @matrix = [
      ["apple", "banana", "cherry"],
      ["dog", "elephant", "frog"],
      ["grape", "honey", "ice"]
    ]
    @palavras = [
    "sagaz", "amago", "negro", "termo", "exito", "mexer", "nobre", "senso", "afeto", "algoz",
    "etica", "plena", "fazer", "tenue", "assim", "mútua", "vigor", "sobre", "aquém", "sutil",
    "secao", "porem", "poder", "fosse", "sanar", "ideia", "cerne", "audaz", "moral", "inato",
    "desde", "muito", "justo", "quiza", "honra", "sonho", "torpe", "razao", "icone", "amigo",
    "etnia", "futil", "egide", "anexo", "tange", "dengo", "haver", "lapso", "expor", "entao",
    "tempo", "bocal", "seara", "mutuo", "habil", "casal", "saber", "avido", "ardil", "pesar",
    "graca", "dizer", "obice", "causa", "dever", "xibiu", "sendo", "estar", "tenaz", "coser",
    "brado", "genro", "paria", "posse", "ainda", "crivo", "temor", "comum", "prole", "apice",
    "corja", "animo", "detem", "pauta", "assaz", "ceder", "ansia", "fugaz", "censo", "culto",
    "digno", "atroz", "mundo", "forte", "gleba", "vicio", "vulgo", "cozer", "mesmo", "criar",
    "valha", "saude", "reves", "denso", "nenem", "pudor", "todos", "jeito", "dogma", "louco",
    "regra", "atras", "ordem", "merce", "clava", "homem", "feliz", "pedir", "impor", "banal",
    "round", "limbo", "usura", "coisa", "juizo", "sabio", "apraz", "forma", "servo", "prosa",
    "tenro", "falar", "desse", "ajuda", "pifio", "presa", "certo", "legal", "posso", "cunho",
    "ontem", "viril", "vendo", "devir", "heroi", "falso", "manso", "meiga", "valor", "facil",
    "visar", "reaça", "magua", "serio", "ebrio", "acaso", "puder", "fluir", "guisa", "afago",
    "linda", "plato", "lugar", "impio", "temer", "garbo", "abrir", "praxe", "afins", "obter",
    "gerar", "obvio", "cisma", "burro", "matiz", "uniao", "bruma", "pleno", "crise", "exodo",
    "fluxo", "venia", "havia", "senil", "tedio", "ritmo", "morte", "enfim", "levar", "olhar",
    "tomar", "alibi", "visao", "casta", "genio", "brega", "prumo", "parvo", "vital", "bravo",
    "favor", "reles", "cabal", "falta", "ouvir", "pulha", "vivaz", "parco", "reter", "tecer",
    "calma", "outro", "sabi", "valia", "ameno", "laico", "grato", "tendo", "viver", "terra",
    "nocao", "possa", "forca", "passo", "carma", "unico", "achar", "nicho", "ranco", "pobre",
    "noite", "rever", "facam", "prime", "rogar", "farsa", "fardo", "fator", "ativo", "obito",
    "selar", "coeso", "dubio", "epico", "anelo", "nossa", "papel", "citar", "sinto", "claro",
    "leigo", "sesta", "cisao", "lider", "sonso", "cesta", "ciume", "adiar", "velho", "deter",
    "haste", "tende", "atuar", "gente", "humor", "revel", "sulco", "ideal", "vemos", "ficar",
    "vazio", "arduo", "exato", "fonte", "ponto", "igual", "marco", "amplo", "labor", "feixe",
    "lavra", "terno", "remir", "debil", "hiato", "senao", "cauda", "capaz", "tanto", "gesto",
    "otica", "ambos", "vara", "relva", "inata", "imune", "jovem", "tenra", "vacio", "ciclo",
    "toada", "sonsa", "coçar", "apoio", "cacar", "raiva", "velar", "vimos", "pouco", "algum",
    "serie", "chuva", "xeque", "farao", "horda", "fusão", "leito", "advem", "feito", "entre",
    "sente", "coesa", "probo", "doido", "minha", "carro", "frase", "cruel", "anuir", "trama",
    "torco", "verso", "brisa", "impar", "rigor", "botar", "chata", "massa", "lazer", "blase",
    "prece", "maior", "dorso", "sorte", "pegar", "signo", "seita", "fauna", "mocao", "preso",
    "covil", "credo", "furor", "casto", "morar", "livro", "flora", "vetor", "adeus", "docil",
    "liame", "peste", "plano", "comer", "faina", "ambas", "senda", "houve", "ocaso", "nunca",
    "saiba", "pecha", "praia", "arido", "setor", "alias", "manha", "virus", "agora", "peixe",
    "ardor", "meses", "mudar", "visse", "salvo", "parte", "antro", "rezar", "beata", "aceso",
    "vulto", "vasto", "breve", "pajem", "saida", "morro", "junto", "risco", "campo", "otimo",
    "banzo", "avaro", "reger", "prado", "grupo", "sinal", "aurea", "anais", "aureo", "lenda",
    "birra", "segue", "andar", "antes", "serao", "estao", "motim", "opcao", "acima", "chulo",
    "fugir", "leite", "conta", "rapaz", "nacao", "brava", "atomo", "oxala", "vilao", "treta",
    "verbo", "fruir", "parar", "texto", "idolo", "festa", "fitar", "tirar", "indio", "jazia",
    "tenso", "reino", "prazo", "puxar", "gerir", "traga", "alude", "norma", "tosco", "exame",
    "epoca", "filho", "atrio", "prova", "bando", "turba", "malta", "corpo", "arcar", "preto",
    "psico", "cheio", "ancia", "aonde", "acesa", "sinha", "voraz", "aviao", "manha", "sarca",
    "fatos", "fatal", "quase", "copia", "praga", "venal", "certa", "ligar", "quota", "logro",
    "nosso", "magia", "dessa", "fixar", "apego", "nivel", "oasis", "afora", "bonus", "coito",
    "pompa", "sumir", "soldo", "nodua", "longe", "mente", "messe", "alado", "caixa", "tocar",
    "jirau", "perda", "lidar"]
    
    @random_word = @palavras.sample
    @letters = @random_word.chars
    @letters_array = @letters.clone
  end

end