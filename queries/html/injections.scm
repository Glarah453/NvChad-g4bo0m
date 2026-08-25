; extends

((comment) @injection.content
 (#set! injection.language "jinja"))

((attribute_value) @injection.content
 (#set! injection.language "jinja")
 (#set! injection.combined))

((text) @injection.content
 (#set! injection.language "jinja")
 (#set! injection.combined))

; Capturar llaves de variables para pintarlas en verde de forma independiente
; (
;   (text) @variable.jinja
;   (#match? @variable.jinja "^\\{\\{|\\}\\}$")
; )

; Forzar la separación de colores carácter por carácter para Jinja
; "{" @jinja.llave
; "}" @jinja.llave
; "%" @jinja.porcentaje
