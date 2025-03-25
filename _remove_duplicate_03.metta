; Remove duplicates from list
(= (removeDuplicates []) [])
(= (removeDuplicates ($head @$tail))
   (let $new-tail (removeDuplicates $tail)
   (if (is-member $new-tail $head)
       $new-tail
       ($head @$new-tail))))

; Test case
!(removeDuplicates (1 5 3 2)) 