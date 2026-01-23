; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!405114 () Bool)

(assert start!405114)

(declare-fun b!4234094 () Bool)

(declare-fun e!2628992 () Bool)

(declare-fun tp_is_empty!22569 () Bool)

(declare-fun tp!1296572 () Bool)

(assert (=> b!4234094 (= e!2628992 (and tp_is_empty!22569 tp!1296572))))

(declare-fun b!4234095 () Bool)

(declare-fun res!1741445 () Bool)

(declare-fun e!2628991 () Bool)

(assert (=> b!4234095 (=> (not res!1741445) (not e!2628991))))

(declare-fun lt!1505462 () Int)

(assert (=> b!4234095 (= res!1741445 (= lt!1505462 0))))

(declare-datatypes ((B!2753 0))(
  ( (B!2754 (val!15078 Int)) )
))
(declare-fun e2!42 () B!2753)

(declare-fun lt!1505461 () B!2753)

(declare-fun b!4234096 () Bool)

(declare-fun e1!42 () B!2753)

(assert (=> b!4234096 (= e!2628991 (and (= lt!1505461 e1!42) (not (= lt!1505461 e2!42))))))

(declare-datatypes ((List!46875 0))(
  ( (Nil!46751) (Cons!46751 (h!52171 B!2753) (t!349578 List!46875)) )
))
(declare-fun l!3106 () List!46875)

(declare-fun head!8981 (List!46875) B!2753)

(assert (=> b!4234096 (= lt!1505461 (head!8981 l!3106))))

(declare-fun b!4234097 () Bool)

(declare-fun res!1741446 () Bool)

(declare-fun e!2628990 () Bool)

(assert (=> b!4234097 (=> (not res!1741446) (not e!2628990))))

(declare-fun contains!9695 (List!46875 B!2753) Bool)

(assert (=> b!4234097 (= res!1741446 (contains!9695 l!3106 e2!42))))

(declare-fun res!1741448 () Bool)

(assert (=> start!405114 (=> (not res!1741448) (not e!2628990))))

(assert (=> start!405114 (= res!1741448 (contains!9695 l!3106 e1!42))))

(assert (=> start!405114 e!2628990))

(assert (=> start!405114 e!2628992))

(assert (=> start!405114 tp_is_empty!22569))

(declare-fun b!4234098 () Bool)

(assert (=> b!4234098 (= e!2628990 e!2628991)))

(declare-fun res!1741447 () Bool)

(assert (=> b!4234098 (=> (not res!1741447) (not e!2628991))))

(declare-fun getIndex!894 (List!46875 B!2753) Int)

(assert (=> b!4234098 (= res!1741447 (= lt!1505462 (getIndex!894 l!3106 e2!42)))))

(assert (=> b!4234098 (= lt!1505462 (getIndex!894 l!3106 e1!42))))

(assert (= (and start!405114 res!1741448) b!4234097))

(assert (= (and b!4234097 res!1741446) b!4234098))

(assert (= (and b!4234098 res!1741447) b!4234095))

(assert (= (and b!4234095 res!1741445) b!4234096))

(get-info :version)

(assert (= (and start!405114 ((_ is Cons!46751) l!3106)) b!4234094))

(declare-fun m!4820321 () Bool)

(assert (=> b!4234096 m!4820321))

(declare-fun m!4820323 () Bool)

(assert (=> b!4234097 m!4820323))

(declare-fun m!4820325 () Bool)

(assert (=> start!405114 m!4820325))

(declare-fun m!4820327 () Bool)

(assert (=> b!4234098 m!4820327))

(declare-fun m!4820329 () Bool)

(assert (=> b!4234098 m!4820329))

(check-sat (not b!4234094) (not b!4234097) tp_is_empty!22569 (not start!405114) (not b!4234096) (not b!4234098))
(check-sat)
(get-model)

(declare-fun d!1245907 () Bool)

(declare-fun lt!1505468 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7351 (List!46875) (InoxSet B!2753))

(assert (=> d!1245907 (= lt!1505468 (select (content!7351 l!3106) e1!42))))

(declare-fun e!2629003 () Bool)

(assert (=> d!1245907 (= lt!1505468 e!2629003)))

(declare-fun res!1741459 () Bool)

(assert (=> d!1245907 (=> (not res!1741459) (not e!2629003))))

(assert (=> d!1245907 (= res!1741459 ((_ is Cons!46751) l!3106))))

(assert (=> d!1245907 (= (contains!9695 l!3106 e1!42) lt!1505468)))

(declare-fun b!4234109 () Bool)

(declare-fun e!2629004 () Bool)

(assert (=> b!4234109 (= e!2629003 e!2629004)))

(declare-fun res!1741460 () Bool)

(assert (=> b!4234109 (=> res!1741460 e!2629004)))

(assert (=> b!4234109 (= res!1741460 (= (h!52171 l!3106) e1!42))))

(declare-fun b!4234110 () Bool)

(assert (=> b!4234110 (= e!2629004 (contains!9695 (t!349578 l!3106) e1!42))))

(assert (= (and d!1245907 res!1741459) b!4234109))

(assert (= (and b!4234109 (not res!1741460)) b!4234110))

(declare-fun m!4820333 () Bool)

(assert (=> d!1245907 m!4820333))

(declare-fun m!4820339 () Bool)

(assert (=> d!1245907 m!4820339))

(declare-fun m!4820341 () Bool)

(assert (=> b!4234110 m!4820341))

(assert (=> start!405114 d!1245907))

(declare-fun b!4234132 () Bool)

(declare-fun e!2629017 () Int)

(assert (=> b!4234132 (= e!2629017 (- 1))))

(declare-fun b!4234130 () Bool)

(declare-fun e!2629018 () Int)

(assert (=> b!4234130 (= e!2629018 e!2629017)))

(declare-fun c!719728 () Bool)

(assert (=> b!4234130 (= c!719728 (and ((_ is Cons!46751) l!3106) (not (= (h!52171 l!3106) e2!42))))))

(declare-fun b!4234131 () Bool)

(assert (=> b!4234131 (= e!2629017 (+ 1 (getIndex!894 (t!349578 l!3106) e2!42)))))

(declare-fun d!1245913 () Bool)

(declare-fun lt!1505474 () Int)

(assert (=> d!1245913 (>= lt!1505474 0)))

(assert (=> d!1245913 (= lt!1505474 e!2629018)))

(declare-fun c!719729 () Bool)

(assert (=> d!1245913 (= c!719729 (and ((_ is Cons!46751) l!3106) (= (h!52171 l!3106) e2!42)))))

(assert (=> d!1245913 (contains!9695 l!3106 e2!42)))

(assert (=> d!1245913 (= (getIndex!894 l!3106 e2!42) lt!1505474)))

(declare-fun b!4234129 () Bool)

(assert (=> b!4234129 (= e!2629018 0)))

(assert (= (and d!1245913 c!719729) b!4234129))

(assert (= (and d!1245913 (not c!719729)) b!4234130))

(assert (= (and b!4234130 c!719728) b!4234131))

(assert (= (and b!4234130 (not c!719728)) b!4234132))

(declare-fun m!4820347 () Bool)

(assert (=> b!4234131 m!4820347))

(assert (=> d!1245913 m!4820323))

(assert (=> b!4234098 d!1245913))

(declare-fun b!4234140 () Bool)

(declare-fun e!2629021 () Int)

(assert (=> b!4234140 (= e!2629021 (- 1))))

(declare-fun b!4234138 () Bool)

(declare-fun e!2629022 () Int)

(assert (=> b!4234138 (= e!2629022 e!2629021)))

(declare-fun c!719732 () Bool)

(assert (=> b!4234138 (= c!719732 (and ((_ is Cons!46751) l!3106) (not (= (h!52171 l!3106) e1!42))))))

(declare-fun b!4234139 () Bool)

(assert (=> b!4234139 (= e!2629021 (+ 1 (getIndex!894 (t!349578 l!3106) e1!42)))))

(declare-fun d!1245917 () Bool)

(declare-fun lt!1505476 () Int)

(assert (=> d!1245917 (>= lt!1505476 0)))

(assert (=> d!1245917 (= lt!1505476 e!2629022)))

(declare-fun c!719733 () Bool)

(assert (=> d!1245917 (= c!719733 (and ((_ is Cons!46751) l!3106) (= (h!52171 l!3106) e1!42)))))

(assert (=> d!1245917 (contains!9695 l!3106 e1!42)))

(assert (=> d!1245917 (= (getIndex!894 l!3106 e1!42) lt!1505476)))

(declare-fun b!4234137 () Bool)

(assert (=> b!4234137 (= e!2629022 0)))

(assert (= (and d!1245917 c!719733) b!4234137))

(assert (= (and d!1245917 (not c!719733)) b!4234138))

(assert (= (and b!4234138 c!719732) b!4234139))

(assert (= (and b!4234138 (not c!719732)) b!4234140))

(declare-fun m!4820351 () Bool)

(assert (=> b!4234139 m!4820351))

(assert (=> d!1245917 m!4820325))

(assert (=> b!4234098 d!1245917))

(declare-fun d!1245921 () Bool)

(declare-fun lt!1505478 () Bool)

(assert (=> d!1245921 (= lt!1505478 (select (content!7351 l!3106) e2!42))))

(declare-fun e!2629025 () Bool)

(assert (=> d!1245921 (= lt!1505478 e!2629025)))

(declare-fun res!1741463 () Bool)

(assert (=> d!1245921 (=> (not res!1741463) (not e!2629025))))

(assert (=> d!1245921 (= res!1741463 ((_ is Cons!46751) l!3106))))

(assert (=> d!1245921 (= (contains!9695 l!3106 e2!42) lt!1505478)))

(declare-fun b!4234145 () Bool)

(declare-fun e!2629026 () Bool)

(assert (=> b!4234145 (= e!2629025 e!2629026)))

(declare-fun res!1741464 () Bool)

(assert (=> b!4234145 (=> res!1741464 e!2629026)))

(assert (=> b!4234145 (= res!1741464 (= (h!52171 l!3106) e2!42))))

(declare-fun b!4234146 () Bool)

(assert (=> b!4234146 (= e!2629026 (contains!9695 (t!349578 l!3106) e2!42))))

(assert (= (and d!1245921 res!1741463) b!4234145))

(assert (= (and b!4234145 (not res!1741464)) b!4234146))

(assert (=> d!1245921 m!4820333))

(declare-fun m!4820355 () Bool)

(assert (=> d!1245921 m!4820355))

(declare-fun m!4820357 () Bool)

(assert (=> b!4234146 m!4820357))

(assert (=> b!4234097 d!1245921))

(declare-fun d!1245923 () Bool)

(assert (=> d!1245923 (= (head!8981 l!3106) (h!52171 l!3106))))

(assert (=> b!4234096 d!1245923))

(declare-fun b!4234156 () Bool)

(declare-fun e!2629032 () Bool)

(declare-fun tp!1296578 () Bool)

(assert (=> b!4234156 (= e!2629032 (and tp_is_empty!22569 tp!1296578))))

(assert (=> b!4234094 (= tp!1296572 e!2629032)))

(assert (= (and b!4234094 ((_ is Cons!46751) (t!349578 l!3106))) b!4234156))

(check-sat (not b!4234139) (not d!1245917) (not b!4234156) (not d!1245907) (not b!4234110) tp_is_empty!22569 (not d!1245913) (not b!4234146) (not b!4234131) (not d!1245921))
(check-sat)
(get-model)

(declare-fun b!4234160 () Bool)

(declare-fun e!2629033 () Int)

(assert (=> b!4234160 (= e!2629033 (- 1))))

(declare-fun b!4234158 () Bool)

(declare-fun e!2629034 () Int)

(assert (=> b!4234158 (= e!2629034 e!2629033)))

(declare-fun c!719736 () Bool)

(assert (=> b!4234158 (= c!719736 (and ((_ is Cons!46751) (t!349578 l!3106)) (not (= (h!52171 (t!349578 l!3106)) e2!42))))))

(declare-fun b!4234159 () Bool)

(assert (=> b!4234159 (= e!2629033 (+ 1 (getIndex!894 (t!349578 (t!349578 l!3106)) e2!42)))))

(declare-fun d!1245925 () Bool)

(declare-fun lt!1505479 () Int)

(assert (=> d!1245925 (>= lt!1505479 0)))

(assert (=> d!1245925 (= lt!1505479 e!2629034)))

(declare-fun c!719737 () Bool)

(assert (=> d!1245925 (= c!719737 (and ((_ is Cons!46751) (t!349578 l!3106)) (= (h!52171 (t!349578 l!3106)) e2!42)))))

(assert (=> d!1245925 (contains!9695 (t!349578 l!3106) e2!42)))

(assert (=> d!1245925 (= (getIndex!894 (t!349578 l!3106) e2!42) lt!1505479)))

(declare-fun b!4234157 () Bool)

(assert (=> b!4234157 (= e!2629034 0)))

(assert (= (and d!1245925 c!719737) b!4234157))

(assert (= (and d!1245925 (not c!719737)) b!4234158))

(assert (= (and b!4234158 c!719736) b!4234159))

(assert (= (and b!4234158 (not c!719736)) b!4234160))

(declare-fun m!4820359 () Bool)

(assert (=> b!4234159 m!4820359))

(assert (=> d!1245925 m!4820357))

(assert (=> b!4234131 d!1245925))

(declare-fun d!1245927 () Bool)

(declare-fun c!719740 () Bool)

(assert (=> d!1245927 (= c!719740 ((_ is Nil!46751) l!3106))))

(declare-fun e!2629037 () (InoxSet B!2753))

(assert (=> d!1245927 (= (content!7351 l!3106) e!2629037)))

(declare-fun b!4234165 () Bool)

(assert (=> b!4234165 (= e!2629037 ((as const (Array B!2753 Bool)) false))))

(declare-fun b!4234166 () Bool)

(assert (=> b!4234166 (= e!2629037 ((_ map or) (store ((as const (Array B!2753 Bool)) false) (h!52171 l!3106) true) (content!7351 (t!349578 l!3106))))))

(assert (= (and d!1245927 c!719740) b!4234165))

(assert (= (and d!1245927 (not c!719740)) b!4234166))

(declare-fun m!4820361 () Bool)

(assert (=> b!4234166 m!4820361))

(declare-fun m!4820363 () Bool)

(assert (=> b!4234166 m!4820363))

(assert (=> d!1245907 d!1245927))

(assert (=> d!1245913 d!1245921))

(declare-fun b!4234170 () Bool)

(declare-fun e!2629038 () Int)

(assert (=> b!4234170 (= e!2629038 (- 1))))

(declare-fun b!4234168 () Bool)

(declare-fun e!2629039 () Int)

(assert (=> b!4234168 (= e!2629039 e!2629038)))

(declare-fun c!719741 () Bool)

(assert (=> b!4234168 (= c!719741 (and ((_ is Cons!46751) (t!349578 l!3106)) (not (= (h!52171 (t!349578 l!3106)) e1!42))))))

(declare-fun b!4234169 () Bool)

(assert (=> b!4234169 (= e!2629038 (+ 1 (getIndex!894 (t!349578 (t!349578 l!3106)) e1!42)))))

(declare-fun d!1245929 () Bool)

(declare-fun lt!1505480 () Int)

(assert (=> d!1245929 (>= lt!1505480 0)))

(assert (=> d!1245929 (= lt!1505480 e!2629039)))

(declare-fun c!719742 () Bool)

(assert (=> d!1245929 (= c!719742 (and ((_ is Cons!46751) (t!349578 l!3106)) (= (h!52171 (t!349578 l!3106)) e1!42)))))

(assert (=> d!1245929 (contains!9695 (t!349578 l!3106) e1!42)))

(assert (=> d!1245929 (= (getIndex!894 (t!349578 l!3106) e1!42) lt!1505480)))

(declare-fun b!4234167 () Bool)

(assert (=> b!4234167 (= e!2629039 0)))

(assert (= (and d!1245929 c!719742) b!4234167))

(assert (= (and d!1245929 (not c!719742)) b!4234168))

(assert (= (and b!4234168 c!719741) b!4234169))

(assert (= (and b!4234168 (not c!719741)) b!4234170))

(declare-fun m!4820365 () Bool)

(assert (=> b!4234169 m!4820365))

(assert (=> d!1245929 m!4820341))

(assert (=> b!4234139 d!1245929))

(declare-fun d!1245931 () Bool)

(declare-fun lt!1505481 () Bool)

(assert (=> d!1245931 (= lt!1505481 (select (content!7351 (t!349578 l!3106)) e1!42))))

(declare-fun e!2629040 () Bool)

(assert (=> d!1245931 (= lt!1505481 e!2629040)))

(declare-fun res!1741465 () Bool)

(assert (=> d!1245931 (=> (not res!1741465) (not e!2629040))))

(assert (=> d!1245931 (= res!1741465 ((_ is Cons!46751) (t!349578 l!3106)))))

(assert (=> d!1245931 (= (contains!9695 (t!349578 l!3106) e1!42) lt!1505481)))

(declare-fun b!4234171 () Bool)

(declare-fun e!2629041 () Bool)

(assert (=> b!4234171 (= e!2629040 e!2629041)))

(declare-fun res!1741466 () Bool)

(assert (=> b!4234171 (=> res!1741466 e!2629041)))

(assert (=> b!4234171 (= res!1741466 (= (h!52171 (t!349578 l!3106)) e1!42))))

(declare-fun b!4234172 () Bool)

(assert (=> b!4234172 (= e!2629041 (contains!9695 (t!349578 (t!349578 l!3106)) e1!42))))

(assert (= (and d!1245931 res!1741465) b!4234171))

(assert (= (and b!4234171 (not res!1741466)) b!4234172))

(assert (=> d!1245931 m!4820363))

(declare-fun m!4820367 () Bool)

(assert (=> d!1245931 m!4820367))

(declare-fun m!4820369 () Bool)

(assert (=> b!4234172 m!4820369))

(assert (=> b!4234110 d!1245931))

(declare-fun d!1245933 () Bool)

(declare-fun lt!1505482 () Bool)

(assert (=> d!1245933 (= lt!1505482 (select (content!7351 (t!349578 l!3106)) e2!42))))

(declare-fun e!2629042 () Bool)

(assert (=> d!1245933 (= lt!1505482 e!2629042)))

(declare-fun res!1741467 () Bool)

(assert (=> d!1245933 (=> (not res!1741467) (not e!2629042))))

(assert (=> d!1245933 (= res!1741467 ((_ is Cons!46751) (t!349578 l!3106)))))

(assert (=> d!1245933 (= (contains!9695 (t!349578 l!3106) e2!42) lt!1505482)))

(declare-fun b!4234173 () Bool)

(declare-fun e!2629043 () Bool)

(assert (=> b!4234173 (= e!2629042 e!2629043)))

(declare-fun res!1741468 () Bool)

(assert (=> b!4234173 (=> res!1741468 e!2629043)))

(assert (=> b!4234173 (= res!1741468 (= (h!52171 (t!349578 l!3106)) e2!42))))

(declare-fun b!4234174 () Bool)

(assert (=> b!4234174 (= e!2629043 (contains!9695 (t!349578 (t!349578 l!3106)) e2!42))))

(assert (= (and d!1245933 res!1741467) b!4234173))

(assert (= (and b!4234173 (not res!1741468)) b!4234174))

(assert (=> d!1245933 m!4820363))

(declare-fun m!4820371 () Bool)

(assert (=> d!1245933 m!4820371))

(declare-fun m!4820373 () Bool)

(assert (=> b!4234174 m!4820373))

(assert (=> b!4234146 d!1245933))

(assert (=> d!1245921 d!1245927))

(assert (=> d!1245917 d!1245907))

(declare-fun b!4234175 () Bool)

(declare-fun e!2629044 () Bool)

(declare-fun tp!1296579 () Bool)

(assert (=> b!4234175 (= e!2629044 (and tp_is_empty!22569 tp!1296579))))

(assert (=> b!4234156 (= tp!1296578 e!2629044)))

(assert (= (and b!4234156 ((_ is Cons!46751) (t!349578 (t!349578 l!3106)))) b!4234175))

(check-sat (not b!4234174) (not d!1245929) (not d!1245925) (not d!1245933) tp_is_empty!22569 (not d!1245931) (not b!4234169) (not b!4234172) (not b!4234166) (not b!4234159) (not b!4234175))
(check-sat)
