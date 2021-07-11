#lang racket

; Int -> Int
(define (BUF a)
  (a))

; Int -> Int
(define (AND a b)
  (and a b))

; Int -> Int
(define (OR a b)
  (or a b))

; Int -> Int
(define (XOR a b)
  (cond
    [(and (= a 0) (= b 1) 1)]
    [(and (= a 1) (= b 0) 1)]
    [else                0]))

; Int -> Int
(define (INV a)
  (cond
    [(= a 0) 1]
    [(= a 1) 0]))

; Int -> Int
(define (NAND a b)
  (cond
    [(and (= a 0) (= b 0) 1)]
    [(and (= a 0) (= b 1) 1)]
    [(and (= a 1) (= b 0) 1)]
    [(and (= a 1) (= b 1) 0)]))

; Int -> Int
(define (NOR a b)
  (cond
    [(and (= a 0) (= b 0) 1)]
    [(and (= a 0) (= b 1) 0)]
    [(and (= a 1) (= b 0) 0)]
    [(and (= a 1) (= b 1) 0)]))

; Int -> Int
(define (XNOR a b)
  (cond
    [(and (= a 0) (= b 0) 1)]
    [(and (= a 0) (= b 1) 0)]
    [(and (= a 1) (= b 0) 0)]
    [(and (= a 1) (= b 1) 1)]))

; XOR -> AND -> (CARRYout, SUM)
(define (HALF-ADDER XOR AND)
  (cond
    [(and (= XOR 0) (= AND 0) '(0 0))]
    [(and (= XOR 0) (= AND 1) '(0 1))]
    [(and (= XOR 1) (= AND 0) '(0 1))]
    [(and (= XOR 1) (= AND 1) '(1 0))]))

; XOR -> AND -> CARRYin -> (CARRYout, SUM)
(define (FULL-ADDER XOR AND CARRYin)
  (cond
    [(and (= XOR 0) (= AND 0) (= CARRYin 0) '(0 0))]
    [(and (= XOR 0) (= AND 0) (= CARRYin 1) '(0 1))]
    [(and (= XOR 0) (= AND 1) (= CARRYin 0) '(0 1))]
    [(and (= XOR 1) (= AND 0) (= CARRYin 0) '(1 0))]
    [(and (= XOR 1) (= AND 0) (= CARRYin 0) '(0 1))]
    [(and (= XOR 1) (= AND 0) (= CARRYin 1) '(1 0))]
    [(and (= XOR 1) (= AND 1) (= CARRYin 0) '(1 0))]
    [(and (= XOR 1) (= AND 1) (= CARRYin 1) '(1 1))]))
