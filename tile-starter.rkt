(require 2htdp/image)

;; tile-starter.rkt

; 
; PROBLEM:
; 
; Use the DrRacket square, beside and above functions to create an image like this one:
; 
; .
; 
; If you prefer to be more creative feel free to do so. You can use other DrRacket image 
; functions to make a more interesting or more attractive image.
; 


(define (make_square color)
  (square 40 "solid" color))

(define blue_square (make_square "blue"))
(define orange_square (make_square "orange"))

(define (make_grid color1 color2)
    (above
        (beside (make_square color1) (make_square color2) (make_square color1))
        (beside (make_square color2) (make_square color1) (make_square color2))
        (beside (make_square color1) (make_square color2) (make_square color1))
    )
)

(make_grid "grey" "crimson")

(make_grid "crimson" "grey")

;(above
;    (beside blue_square orange_square blue_square)
;    (beside orange_square blue_square orange_square)
;)