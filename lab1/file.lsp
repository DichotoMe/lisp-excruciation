(print
  ((lambda(l1 l2 l3)
  (cond
    ((null (LISTP l1)) nil)
    ((null (LISTP l2)) nil)
    ((null (LISTP l3)) nil)
    ((LIST (CAR l1) (CAR l2) (CAR l3)))
  )
  )'(T (U U1 U2) (U4 U6 U8)) '(4 6 (7 8 9)) '(78 89 90 67 45))
)

(defun LISTOF(l1 l2 l3)
  (cond
    ((null (LISTP l1)) nil)
    ((null (LISTP l2)) nil)
    ((null (LISTP l3)) nil)
    ((LIST (NTH 1 l1) (NTH 2 l2) (NTH 3 l3)))
  )
)

(print
  (LISTOF '(T (U U1 U2) (U4 U6 U8)) '(4 6 (7 8 9)) '(78 89 90 67 45))
)

(defun ISPOW2(n)
  (cond
    ((null n) nil)
    ((= 1 n) T)
    ((= 0 n) nil)
    ((null (= 0 (mod n 2))) nil)
    ((ISPOW2 (/ n 2)))
  )
)

(print (ISPOW2 7))
