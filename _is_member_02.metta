; Recursive membership check
(= (is-member [] $x) False)
(= (is-member ($head @$tail) $x)
   (if (== $head $x)
       True
       (is-member $tail $x)))

; Test cases
!(is-member (4 2 5 6) 2)   ; Returns: True
!(is-member (4 2 5 6) 10)  ; Returns: False