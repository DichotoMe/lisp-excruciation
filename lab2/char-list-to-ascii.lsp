(defun ch-list-code (lst)
  (cond
    ((null lst) nil)
    ((listp (car lst))
      (cons
        (ch-list-code (car lst))
        (ch-list-code (cdr lst))))
    (T (cons
        (char-code (car lst))
        (ch-list-code (cdr lst))))))

(print (ch-list-code '(#\a #\b #\c (#\d #\e ((#\d #\e (#\f)))) (#\f))))
