(defun helper (n reclst)
  (cond
    ((EQUAL reclst nil) nil)
    ((null reclst) reclst)
    (T (cons (+ n (car reclst)) reclst))))

(defun partsum (lst)
(cond
  ((null (cdr lst)) lst)
  ((not (numberp (car lst))) '())
  (T (helper (car lst) (partsum (cdr lst))))))

(print (partsum '(1 2 3 4)))
