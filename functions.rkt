;; function-writing-starter.rkt

; 
; PROBLEM:
; 
; Write a function that consumes two numbers and produces the larger of the two. 
; 


(define (get_largest a b)
  (if (> a b)
      a
      b
  )
)

(get_largest 12 50)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; foo-evaluation-starter.rkt

; 
; PROBLEM:
; 
; Given the following function definition:
; 
; (define (foo s)
;   (if (string=? (substring s 0 1) "a")
;       (string-append s "a")
;       s))
; 
; Write out the step-by-step evaluation of the expression: 
; 
; (foo (substring "abcde" 0 3))
; 
; Be sure to show every intermediate evaluation step.
; 


(define (foo s)
  (if (string=? (substring s 0 1) "a")
      (string-append s "a")
      s
  )
)

;; 1.
(foo "ahi there")


;; 2.
(if (string=? (substring "ahi there" 0 1) "a")
    (string-append "ahi there" "a")
    "ahi there"
)

;; 3.
(if (string=? "a" "a")
    (string-append "ahi there" "a")
    "ahi there"
)

;; 4.
(if true
    (string-append "ahi there" "a")
    "ahi there"
)

;; 5.
(string-append "ahi there" "a")

;; 6.
"ahi therea"
