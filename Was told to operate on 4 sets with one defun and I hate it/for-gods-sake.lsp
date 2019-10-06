(defun f1 (A B C D COMP APP NODUP)
    (if (and (and (and (null (CDR A))(null (CDR B)))(null (CDR C)))(null (CDR D)))
      (if (funcall COMP A B C D) (LIST (CAR A)) NIL)
      (funcall NODUP
        (funcall APP
         (if (null (null (CDR D)))
           (if (funcall COMP A B C D)
             (CONS (CAR A) (f1 A B C (CDR D) COMP APP NODUP))
             (f1 A B C (CDR D) COMP APP NODUP)))
         (funcall APP
           (if (null (null (CDR C)))
             (if (funcall COMP A B C D)
               (CONS (CAR A) (f1 A B (CDR C) D COMP APP NODUP))
               (f1 A B (CDR C) D COMP APP NODUP)))
           (funcall APP
             (if (null (null (CDR B)))
               (if (funcall COMP A B C D)
                 (CONS (CAR A) (f1 A (CDR B) C D COMP APP NODUP))
                 (f1 A (CDR B) C D COMP APP NODUP)))
             (if (null (null (CDR A)))
               (if (funcall COMP A B C D)
                 (CONS (CAR A) (f1 (CDR A) B C D COMP APP NODUP))
                 (f1 (CDR A) B C D COMP APP NODUP)))))))))

(write
  (f1 '(A I D E) '(D I) '(A I E) '(A I)
   (lambda (A B C D)
     (OR (EQUAL (CAR A) (CAR B))
         (OR
           (if (EQUAL (CAR C) (CAR D))
               (EQUAL (CAR A) (CAR B))
               (NULL (EQUAL (CAR C) (CAR A)))))))


   (lambda (l1 l2)
    (labels
      ((apnd (l1 l2) (if (null l1) l2 (cons (CAR L1) (apnd (CDR L1) L2)))))
      (apnd l1 l2)))
   (lambda (l)
     (labels
        ((mem (E LS)
          (cond
            ((null LS) NIL)
            ((EQUAL E (CAR LS)) LS)
            (T (mem E (CDR LS)))))
         (nodup (L)
           (cond ((null L) L)
                 ((mem (car L) (cdr L))
                  (nodup (cdr L)))
                 (t (cons (car L) (nodup (cdr L)))))))
      (nodup l)))))
