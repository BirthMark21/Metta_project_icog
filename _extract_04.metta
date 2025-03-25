
(= (extracter [] $pred) [])
(= (extracter ($head @$tail) $pred)
   (let $filtered-tail (extracter $tail $pred)
   (if ($pred $head)
       ($head @$filtered-tail)
       $filtered-tail)))

; Helper predicate for empty lists
(= (notEmpty []) False)
(= (notEmpty $_) True)

; Test case 
!(extracter ( (list) (list "a") (list "b" "g") (list "d" "e") (list) ) notEmpty)