; Family Tree Representation with Ethiopian Names
(Parent Abebe Alemu)   ; Abebe is the parent of Alemu
(Parent Abebe Aster)   ; Abebe is the parent of Aster
(Parent Alemu Kebede)  ; Alemu is the parent of Kebede
(Parent Alemu Chala)   ; Alemu is the parent of Chala

; Function to find children
(= (find-children $person)
   (match &self (Parent $person $child) $child))

; Function to find grandchildren
(= (find-grandchildren $person)
   (match &self 
          (Parent $person $child)
          (match &self 
                 (Parent $child $grandchild)
                 $grandchild)))


!(find-children Abebe)        ; Output: (Alemu Aster)
!(find-grandchildren Abebe)   ; Output: (Kebede Chala)