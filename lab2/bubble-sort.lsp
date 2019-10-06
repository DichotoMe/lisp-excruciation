(defun bubble-sort (lst)
 (bubble-step lst))

(defun bubble-up (min lst &optional res)
 (cond
   ((null lst) (cons min res))
   ((eq min nil) (bubble-up (car lst) (cdr lst) res))
   ((< min (car lst)) (bubble-up (car lst) (cdr lst) (cons min res)))
   (T (bubble-up min (cdr lst) (cons (car lst) res)))))

(defun bubble-step (lst &optional res ready)
 (cond
   ((null lst) res)
   (ready (bubble-step (cdr lst) (cons (car lst) res) nil))
   (T (bubble-step (bubble-up nil lst) res T))))

(print (bubble-sort '(11 19 23 6 0 1 46 2 2 4)))
