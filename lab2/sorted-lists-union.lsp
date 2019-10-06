(defun d (x msg)
  (print (list msg x))
  x)

(defun sorted-list-union (lst1 lst2)
  (print (list lst1 lst2))
  (cond
    ((and (null lst1) (null lst2)) nil)
    ((and (null (null lst1)) (or (null lst2) (< (car lst1) (car lst2))) (cons (car lst1) (d (sorted-list-union (cdr lst1) lst2) "f"))))
    ((and (null (null lst2)) (or (null lst1) (< (car lst2) (car lst1))) (cons (car lst2) (d (sorted-list-union lst1 (cdr lst2)) "s"))))))

(print (sorted-list-union '(1 3 5 7 9) '(2 4 6 8 10)))
