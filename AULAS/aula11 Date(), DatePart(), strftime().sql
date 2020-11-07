-- Date()
    /* A função Date () retorna a data atual do sistema. */
    /* Syntax */
    -- Date()

-- DatePart()
    /* A função DatePart () retorna uma parte especificada de uma data, como um inteiro. */
    /* Sintaxe */
    /* DatePart(datepart, date, firstdayofweek, firstweekofyear) */
               /* (parte da data, data, primeiro dia da semana, primeira semana do ano) */
    /* datepart - Obrigatório. A parte da data a retornar. Pode ser um dos seguintes valores:
        aaaa = ano
        q = Trimestre
        m = mês
        y = dia do ano
        d = dia
        w = dia da semana
        ww = semana
        h = hora
        n = minuto
        s = segundo */
    /* date - Obrigatório. O valor da data a ser avaliada. */
    /* firstdayofweek - Opcional. Especifica o primeiro dia da semana. Pode ser um dos seguintes valores:
        0 = Usar a configuração da API NLS
        1 = domingo (padrão)
        2 = segunda-feira
        3 = terça-feira
        4 = quarta-feira
        5 = quinta-feira
        6 = sexta-feira
        7 = sábado */
    /* firstdayofyear - Opcional. Especifica a primeira semana do ano. Pode ser um dos seguintes valores:
        0 = Usar a configuração da API NLS
        1 = Use a primeira semana que inclui 1º de janeiro (padrão)
        2 = Use a primeira semana do ano que tem pelo menos 4 dias
        3 = Use a primeira semana inteira do ano */

    /* date(timestring, modifier, modifier, ...)
    time(timestring, modifier, modifier, ...)
    datetime(timestring, modifier, modifier, ...)
    julianday(timestring, modifier, modifier, ...)
    strftime(format, timestring, modifier, modifier, ...) Formata uma hora/data local de acordo com a configuração do idioma.
    Todas as cinco funções de data e hora usam uma string de hora como argumento. A sequência de tempo é seguida por zero ou mais modificadores. A função strftime () também recebe uma string de formato como seu primeiro argumento. */

    /* %d		day of month: 00
    %f		fractional seconds: SS.SSS
    %H		hour: 00-24
    %j		day of year: 001-366
    %J		Julian day number
    %m		month: 01-12
    %M		minute: 00-59
    %s		seconds since 1970-01-01
    %S		seconds: 00-59
    %w		day of week 0-6 with Sunday==0
    %W		week of year: 00-53
    %Y		year: 0000-9999
    %%		% */

    /* Function		Equivalent strftime()
    date(...)		strftime('%Y-%m-%d', ...)
    time(...)		strftime('%H:%M:%S', ...)
    datetime(...)		strftime('%Y-%m-%d %H:%M:%S', ...)
    julianday(...)		strftime('%J', ...) */

    -- Time Strings
    /* YYYY-MM-DD
    YYYY-MM-DD HH:MM
    YYYY-MM-DD HH:MM:SS
    YYYY-MM-DD HH:MM:SS.SSS
    YYYY-MM-DDTHH:MM
    YYYY-MM-DDTHH:MM:SS
    YYYY-MM-DDTHH:MM:SS.SSS
    HH:MM
    HH:MM:SS
    HH:MM:SS.SSS
    now
    DDDDDDDDDD */

-- SELECT DatePart("m", #09/05/2017#);
SELECT strftime('%Y %m %d','now');

SELECT Date();
SELECT Time();
SELECT DateTime();
SELECT JulianDay();

SELECT strftime('%Y-%m-%dT%H:%M:%fZ', 'now');