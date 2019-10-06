(defun sorted-list-union (lst1 lst2 &optional res)
  (print (list lst1 lst2 res))
  (cond
    ((and (null lst1) (null lst2)) res)
    ((and (null (null lst1)) (or (null lst2) (< (car lst1) (car lst2))) (sorted-list-union (cdr lst1) lst2 (cons (car lst1) res))))
    ((and (null (null lst2)) (or (null lst1) (< (car lst2) (car lst1))) (sorted-list-union lst1 (cdr lst2) (cons (car lst2) res))))))

(print (sorted-list-union '(1 3 5 7 9) '(2 4 6 8 10)))
