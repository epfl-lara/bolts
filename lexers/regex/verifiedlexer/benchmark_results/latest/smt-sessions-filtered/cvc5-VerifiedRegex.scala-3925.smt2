; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!215260 () Bool)

(assert start!215260)

(declare-fun b!2210666 () Bool)

(declare-fun res!950073 () Bool)

(declare-fun e!1411948 () Bool)

(assert (=> b!2210666 (=> (not res!950073) (not e!1411948))))

(declare-datatypes ((T!40534 0))(
  ( (T!40535 (val!7375 Int)) )
))
(declare-datatypes ((List!25939 0))(
  ( (Nil!25855) (Cons!25855 (h!31256 T!40534) (t!198637 List!25939)) )
))
(declare-datatypes ((IArray!16909 0))(
  ( (IArray!16910 (innerList!8512 List!25939)) )
))
(declare-datatypes ((Conc!8452 0))(
  ( (Node!8452 (left!19881 Conc!8452) (right!20211 Conc!8452) (csize!17134 Int) (cheight!8663 Int)) (Leaf!12378 (xs!11394 IArray!16909) (csize!17135 Int)) (Empty!8452) )
))
(declare-fun t!4663 () Conc!8452)

(declare-fun isBalanced!2610 (Conc!8452) Bool)

(assert (=> b!2210666 (= res!950073 (isBalanced!2610 (left!19881 t!4663)))))

(declare-fun b!2210667 () Bool)

(declare-fun res!950070 () Bool)

(assert (=> b!2210667 (=> (not res!950070) (not e!1411948))))

(assert (=> b!2210667 (= res!950070 (and (not (is-Leaf!12378 t!4663)) (is-Node!8452 t!4663)))))

(declare-fun b!2210668 () Bool)

(declare-fun isEmpty!14794 (Conc!8452) Bool)

(assert (=> b!2210668 (= e!1411948 (isEmpty!14794 (left!19881 t!4663)))))

(declare-fun b!2210669 () Bool)

(declare-fun e!1411946 () Bool)

(declare-fun e!1411947 () Bool)

(declare-fun inv!34986 (IArray!16909) Bool)

(assert (=> b!2210669 (= e!1411946 (and (inv!34986 (xs!11394 t!4663)) e!1411947))))

(declare-fun tp!687109 () Bool)

(declare-fun b!2210670 () Bool)

(declare-fun tp!687111 () Bool)

(declare-fun inv!34987 (Conc!8452) Bool)

(assert (=> b!2210670 (= e!1411946 (and (inv!34987 (left!19881 t!4663)) tp!687111 (inv!34987 (right!20211 t!4663)) tp!687109))))

(declare-fun b!2210671 () Bool)

(declare-fun res!950071 () Bool)

(assert (=> b!2210671 (=> (not res!950071) (not e!1411948))))

(assert (=> b!2210671 (= res!950071 (not (isEmpty!14794 t!4663)))))

(declare-fun b!2210672 () Bool)

(declare-fun tp!687110 () Bool)

(assert (=> b!2210672 (= e!1411947 tp!687110)))

(declare-fun res!950072 () Bool)

(assert (=> start!215260 (=> (not res!950072) (not e!1411948))))

(assert (=> start!215260 (= res!950072 (isBalanced!2610 t!4663))))

(assert (=> start!215260 e!1411948))

(assert (=> start!215260 (and (inv!34987 t!4663) e!1411946)))

(assert (= (and start!215260 res!950072) b!2210671))

(assert (= (and b!2210671 res!950071) b!2210667))

(assert (= (and b!2210667 res!950070) b!2210666))

(assert (= (and b!2210666 res!950073) b!2210668))

(assert (= (and start!215260 (is-Node!8452 t!4663)) b!2210670))

(assert (= b!2210669 b!2210672))

(assert (= (and start!215260 (is-Leaf!12378 t!4663)) b!2210669))

(declare-fun m!2652407 () Bool)

(assert (=> b!2210668 m!2652407))

(declare-fun m!2652409 () Bool)

(assert (=> start!215260 m!2652409))

(declare-fun m!2652411 () Bool)

(assert (=> start!215260 m!2652411))

(declare-fun m!2652413 () Bool)

(assert (=> b!2210666 m!2652413))

(declare-fun m!2652415 () Bool)

(assert (=> b!2210669 m!2652415))

(declare-fun m!2652417 () Bool)

(assert (=> b!2210670 m!2652417))

(declare-fun m!2652419 () Bool)

(assert (=> b!2210670 m!2652419))

(declare-fun m!2652421 () Bool)

(assert (=> b!2210671 m!2652421))

(push 1)

(assert (not b!2210669))

(assert (not b!2210672))

(assert (not b!2210666))

(assert (not b!2210668))

(assert (not start!215260))

(assert (not b!2210671))

(assert (not b!2210670))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!660764 () Bool)

(declare-fun lt!826373 () Bool)

(declare-fun isEmpty!14796 (List!25939) Bool)

(declare-fun list!10021 (Conc!8452) List!25939)

(assert (=> d!660764 (= lt!826373 (isEmpty!14796 (list!10021 (left!19881 t!4663))))))

(declare-fun size!20160 (Conc!8452) Int)

(assert (=> d!660764 (= lt!826373 (= (size!20160 (left!19881 t!4663)) 0))))

(assert (=> d!660764 (= (isEmpty!14794 (left!19881 t!4663)) lt!826373)))

(declare-fun bs!451393 () Bool)

(assert (= bs!451393 d!660764))

(declare-fun m!2652439 () Bool)

(assert (=> bs!451393 m!2652439))

(assert (=> bs!451393 m!2652439))

(declare-fun m!2652441 () Bool)

(assert (=> bs!451393 m!2652441))

(declare-fun m!2652443 () Bool)

(assert (=> bs!451393 m!2652443))

(assert (=> b!2210668 d!660764))

(declare-fun d!660768 () Bool)

(declare-fun size!20161 (List!25939) Int)

(assert (=> d!660768 (= (inv!34986 (xs!11394 t!4663)) (<= (size!20161 (innerList!8512 (xs!11394 t!4663))) 2147483647))))

(declare-fun bs!451394 () Bool)

(assert (= bs!451394 d!660768))

(declare-fun m!2652445 () Bool)

(assert (=> bs!451394 m!2652445))

(assert (=> b!2210669 d!660768))

(declare-fun b!2210706 () Bool)

(declare-fun e!1411963 () Bool)

(assert (=> b!2210706 (= e!1411963 (not (isEmpty!14794 (right!20211 t!4663))))))

(declare-fun b!2210707 () Bool)

(declare-fun res!950103 () Bool)

(assert (=> b!2210707 (=> (not res!950103) (not e!1411963))))

(assert (=> b!2210707 (= res!950103 (isBalanced!2610 (left!19881 t!4663)))))

(declare-fun b!2210708 () Bool)

(declare-fun res!950100 () Bool)

(assert (=> b!2210708 (=> (not res!950100) (not e!1411963))))

(assert (=> b!2210708 (= res!950100 (not (isEmpty!14794 (left!19881 t!4663))))))

(declare-fun b!2210709 () Bool)

(declare-fun e!1411962 () Bool)

(assert (=> b!2210709 (= e!1411962 e!1411963)))

(declare-fun res!950098 () Bool)

(assert (=> b!2210709 (=> (not res!950098) (not e!1411963))))

(declare-fun height!1276 (Conc!8452) Int)

(assert (=> b!2210709 (= res!950098 (<= (- 1) (- (height!1276 (left!19881 t!4663)) (height!1276 (right!20211 t!4663)))))))

(declare-fun b!2210710 () Bool)

(declare-fun res!950101 () Bool)

(assert (=> b!2210710 (=> (not res!950101) (not e!1411963))))

(assert (=> b!2210710 (= res!950101 (isBalanced!2610 (right!20211 t!4663)))))

(declare-fun d!660770 () Bool)

(declare-fun res!950102 () Bool)

(assert (=> d!660770 (=> res!950102 e!1411962)))

(assert (=> d!660770 (= res!950102 (not (is-Node!8452 t!4663)))))

(assert (=> d!660770 (= (isBalanced!2610 t!4663) e!1411962)))

(declare-fun b!2210711 () Bool)

(declare-fun res!950099 () Bool)

(assert (=> b!2210711 (=> (not res!950099) (not e!1411963))))

(assert (=> b!2210711 (= res!950099 (<= (- (height!1276 (left!19881 t!4663)) (height!1276 (right!20211 t!4663))) 1))))

(assert (= (and d!660770 (not res!950102)) b!2210709))

(assert (= (and b!2210709 res!950098) b!2210711))

(assert (= (and b!2210711 res!950099) b!2210707))

(assert (= (and b!2210707 res!950103) b!2210710))

(assert (= (and b!2210710 res!950101) b!2210708))

(assert (= (and b!2210708 res!950100) b!2210706))

(assert (=> b!2210707 m!2652413))

(declare-fun m!2652453 () Bool)

(assert (=> b!2210709 m!2652453))

(declare-fun m!2652455 () Bool)

(assert (=> b!2210709 m!2652455))

(declare-fun m!2652457 () Bool)

(assert (=> b!2210706 m!2652457))

(declare-fun m!2652459 () Bool)

(assert (=> b!2210710 m!2652459))

(assert (=> b!2210708 m!2652407))

(assert (=> b!2210711 m!2652453))

(assert (=> b!2210711 m!2652455))

(assert (=> start!215260 d!660770))

(declare-fun d!660774 () Bool)

(declare-fun c!353336 () Bool)

(assert (=> d!660774 (= c!353336 (is-Node!8452 t!4663))))

(declare-fun e!1411968 () Bool)

(assert (=> d!660774 (= (inv!34987 t!4663) e!1411968)))

(declare-fun b!2210718 () Bool)

(declare-fun inv!34990 (Conc!8452) Bool)

(assert (=> b!2210718 (= e!1411968 (inv!34990 t!4663))))

(declare-fun b!2210719 () Bool)

(declare-fun e!1411969 () Bool)

(assert (=> b!2210719 (= e!1411968 e!1411969)))

(declare-fun res!950106 () Bool)

(assert (=> b!2210719 (= res!950106 (not (is-Leaf!12378 t!4663)))))

(assert (=> b!2210719 (=> res!950106 e!1411969)))

(declare-fun b!2210720 () Bool)

(declare-fun inv!34991 (Conc!8452) Bool)

(assert (=> b!2210720 (= e!1411969 (inv!34991 t!4663))))

(assert (= (and d!660774 c!353336) b!2210718))

(assert (= (and d!660774 (not c!353336)) b!2210719))

(assert (= (and b!2210719 (not res!950106)) b!2210720))

(declare-fun m!2652461 () Bool)

(assert (=> b!2210718 m!2652461))

(declare-fun m!2652463 () Bool)

(assert (=> b!2210720 m!2652463))

(assert (=> start!215260 d!660774))

(declare-fun d!660776 () Bool)

(declare-fun lt!826377 () Bool)

(assert (=> d!660776 (= lt!826377 (isEmpty!14796 (list!10021 t!4663)))))

(assert (=> d!660776 (= lt!826377 (= (size!20160 t!4663) 0))))

(assert (=> d!660776 (= (isEmpty!14794 t!4663) lt!826377)))

(declare-fun bs!451396 () Bool)

(assert (= bs!451396 d!660776))

(declare-fun m!2652465 () Bool)

(assert (=> bs!451396 m!2652465))

(assert (=> bs!451396 m!2652465))

(declare-fun m!2652467 () Bool)

(assert (=> bs!451396 m!2652467))

(declare-fun m!2652469 () Bool)

(assert (=> bs!451396 m!2652469))

(assert (=> b!2210671 d!660776))

(declare-fun b!2210721 () Bool)

(declare-fun e!1411971 () Bool)

(assert (=> b!2210721 (= e!1411971 (not (isEmpty!14794 (right!20211 (left!19881 t!4663)))))))

(declare-fun b!2210722 () Bool)

(declare-fun res!950112 () Bool)

(assert (=> b!2210722 (=> (not res!950112) (not e!1411971))))

(assert (=> b!2210722 (= res!950112 (isBalanced!2610 (left!19881 (left!19881 t!4663))))))

(declare-fun b!2210723 () Bool)

(declare-fun res!950109 () Bool)

(assert (=> b!2210723 (=> (not res!950109) (not e!1411971))))

(assert (=> b!2210723 (= res!950109 (not (isEmpty!14794 (left!19881 (left!19881 t!4663)))))))

(declare-fun b!2210724 () Bool)

(declare-fun e!1411970 () Bool)

(assert (=> b!2210724 (= e!1411970 e!1411971)))

(declare-fun res!950107 () Bool)

(assert (=> b!2210724 (=> (not res!950107) (not e!1411971))))

(assert (=> b!2210724 (= res!950107 (<= (- 1) (- (height!1276 (left!19881 (left!19881 t!4663))) (height!1276 (right!20211 (left!19881 t!4663))))))))

(declare-fun b!2210725 () Bool)

(declare-fun res!950110 () Bool)

(assert (=> b!2210725 (=> (not res!950110) (not e!1411971))))

(assert (=> b!2210725 (= res!950110 (isBalanced!2610 (right!20211 (left!19881 t!4663))))))

(declare-fun d!660778 () Bool)

(declare-fun res!950111 () Bool)

(assert (=> d!660778 (=> res!950111 e!1411970)))

(assert (=> d!660778 (= res!950111 (not (is-Node!8452 (left!19881 t!4663))))))

(assert (=> d!660778 (= (isBalanced!2610 (left!19881 t!4663)) e!1411970)))

(declare-fun b!2210726 () Bool)

(declare-fun res!950108 () Bool)

(assert (=> b!2210726 (=> (not res!950108) (not e!1411971))))

(assert (=> b!2210726 (= res!950108 (<= (- (height!1276 (left!19881 (left!19881 t!4663))) (height!1276 (right!20211 (left!19881 t!4663)))) 1))))

(assert (= (and d!660778 (not res!950111)) b!2210724))

(assert (= (and b!2210724 res!950107) b!2210726))

(assert (= (and b!2210726 res!950108) b!2210722))

(assert (= (and b!2210722 res!950112) b!2210725))

(assert (= (and b!2210725 res!950110) b!2210723))

(assert (= (and b!2210723 res!950109) b!2210721))

(declare-fun m!2652471 () Bool)

(assert (=> b!2210722 m!2652471))

(declare-fun m!2652473 () Bool)

(assert (=> b!2210724 m!2652473))

(declare-fun m!2652475 () Bool)

(assert (=> b!2210724 m!2652475))

(declare-fun m!2652477 () Bool)

(assert (=> b!2210721 m!2652477))

(declare-fun m!2652479 () Bool)

(assert (=> b!2210725 m!2652479))

(declare-fun m!2652481 () Bool)

(assert (=> b!2210723 m!2652481))

(assert (=> b!2210726 m!2652473))

(assert (=> b!2210726 m!2652475))

(assert (=> b!2210666 d!660778))

(declare-fun d!660780 () Bool)

(declare-fun c!353337 () Bool)

(assert (=> d!660780 (= c!353337 (is-Node!8452 (left!19881 t!4663)))))

(declare-fun e!1411972 () Bool)

(assert (=> d!660780 (= (inv!34987 (left!19881 t!4663)) e!1411972)))

(declare-fun b!2210727 () Bool)

(assert (=> b!2210727 (= e!1411972 (inv!34990 (left!19881 t!4663)))))

(declare-fun b!2210728 () Bool)

(declare-fun e!1411973 () Bool)

(assert (=> b!2210728 (= e!1411972 e!1411973)))

(declare-fun res!950113 () Bool)

(assert (=> b!2210728 (= res!950113 (not (is-Leaf!12378 (left!19881 t!4663))))))

(assert (=> b!2210728 (=> res!950113 e!1411973)))

(declare-fun b!2210729 () Bool)

(assert (=> b!2210729 (= e!1411973 (inv!34991 (left!19881 t!4663)))))

(assert (= (and d!660780 c!353337) b!2210727))

(assert (= (and d!660780 (not c!353337)) b!2210728))

(assert (= (and b!2210728 (not res!950113)) b!2210729))

(declare-fun m!2652483 () Bool)

(assert (=> b!2210727 m!2652483))

(declare-fun m!2652485 () Bool)

(assert (=> b!2210729 m!2652485))

(assert (=> b!2210670 d!660780))

(declare-fun d!660782 () Bool)

(declare-fun c!353338 () Bool)

(assert (=> d!660782 (= c!353338 (is-Node!8452 (right!20211 t!4663)))))

(declare-fun e!1411974 () Bool)

(assert (=> d!660782 (= (inv!34987 (right!20211 t!4663)) e!1411974)))

(declare-fun b!2210730 () Bool)

(assert (=> b!2210730 (= e!1411974 (inv!34990 (right!20211 t!4663)))))

(declare-fun b!2210731 () Bool)

(declare-fun e!1411975 () Bool)

(assert (=> b!2210731 (= e!1411974 e!1411975)))

(declare-fun res!950114 () Bool)

(assert (=> b!2210731 (= res!950114 (not (is-Leaf!12378 (right!20211 t!4663))))))

(assert (=> b!2210731 (=> res!950114 e!1411975)))

(declare-fun b!2210732 () Bool)

(assert (=> b!2210732 (= e!1411975 (inv!34991 (right!20211 t!4663)))))

(assert (= (and d!660782 c!353338) b!2210730))

(assert (= (and d!660782 (not c!353338)) b!2210731))

(assert (= (and b!2210731 (not res!950114)) b!2210732))

(declare-fun m!2652487 () Bool)

(assert (=> b!2210730 m!2652487))

(declare-fun m!2652489 () Bool)

(assert (=> b!2210732 m!2652489))

(assert (=> b!2210670 d!660782))

(declare-fun b!2210737 () Bool)

(declare-fun e!1411978 () Bool)

(declare-fun tp_is_empty!9771 () Bool)

(declare-fun tp!687123 () Bool)

(assert (=> b!2210737 (= e!1411978 (and tp_is_empty!9771 tp!687123))))

(assert (=> b!2210672 (= tp!687110 e!1411978)))

(assert (= (and b!2210672 (is-Cons!25855 (innerList!8512 (xs!11394 t!4663)))) b!2210737))

(declare-fun e!1411985 () Bool)

(declare-fun tp!687130 () Bool)

(declare-fun b!2210748 () Bool)

(declare-fun tp!687131 () Bool)

(assert (=> b!2210748 (= e!1411985 (and (inv!34987 (left!19881 (left!19881 t!4663))) tp!687130 (inv!34987 (right!20211 (left!19881 t!4663))) tp!687131))))

(declare-fun b!2210750 () Bool)

(declare-fun e!1411986 () Bool)

(declare-fun tp!687132 () Bool)

(assert (=> b!2210750 (= e!1411986 tp!687132)))

(declare-fun b!2210749 () Bool)

(assert (=> b!2210749 (= e!1411985 (and (inv!34986 (xs!11394 (left!19881 t!4663))) e!1411986))))

(assert (=> b!2210670 (= tp!687111 (and (inv!34987 (left!19881 t!4663)) e!1411985))))

(assert (= (and b!2210670 (is-Node!8452 (left!19881 t!4663))) b!2210748))

(assert (= b!2210749 b!2210750))

(assert (= (and b!2210670 (is-Leaf!12378 (left!19881 t!4663))) b!2210749))

(declare-fun m!2652491 () Bool)

(assert (=> b!2210748 m!2652491))

(declare-fun m!2652493 () Bool)

(assert (=> b!2210748 m!2652493))

(declare-fun m!2652495 () Bool)

(assert (=> b!2210749 m!2652495))

(assert (=> b!2210670 m!2652417))

(declare-fun b!2210757 () Bool)

(declare-fun e!1411989 () Bool)

(declare-fun tp!687133 () Bool)

(declare-fun tp!687134 () Bool)

(assert (=> b!2210757 (= e!1411989 (and (inv!34987 (left!19881 (right!20211 t!4663))) tp!687133 (inv!34987 (right!20211 (right!20211 t!4663))) tp!687134))))

(declare-fun b!2210759 () Bool)

(declare-fun e!1411990 () Bool)

(declare-fun tp!687135 () Bool)

(assert (=> b!2210759 (= e!1411990 tp!687135)))

(declare-fun b!2210758 () Bool)

(assert (=> b!2210758 (= e!1411989 (and (inv!34986 (xs!11394 (right!20211 t!4663))) e!1411990))))

(assert (=> b!2210670 (= tp!687109 (and (inv!34987 (right!20211 t!4663)) e!1411989))))

(assert (= (and b!2210670 (is-Node!8452 (right!20211 t!4663))) b!2210757))

(assert (= b!2210758 b!2210759))

(assert (= (and b!2210670 (is-Leaf!12378 (right!20211 t!4663))) b!2210758))

(declare-fun m!2652497 () Bool)

(assert (=> b!2210757 m!2652497))

(declare-fun m!2652499 () Bool)

(assert (=> b!2210757 m!2652499))

(declare-fun m!2652501 () Bool)

(assert (=> b!2210758 m!2652501))

(assert (=> b!2210670 m!2652419))

(push 1)

(assert (not d!660764))

(assert (not d!660768))

(assert (not b!2210708))

(assert (not b!2210729))

(assert (not b!2210748))

(assert (not b!2210750))

(assert (not b!2210725))

(assert (not d!660776))

(assert (not b!2210749))

(assert (not b!2210709))

(assert (not b!2210730))

(assert (not b!2210710))

(assert (not b!2210759))

(assert (not b!2210722))

(assert tp_is_empty!9771)

(assert (not b!2210724))

(assert (not b!2210711))

(assert (not b!2210757))

(assert (not b!2210758))

(assert (not b!2210720))

(assert (not b!2210721))

(assert (not b!2210706))

(assert (not b!2210737))

(assert (not b!2210707))

(assert (not b!2210732))

(assert (not b!2210726))

(assert (not b!2210727))

(assert (not b!2210670))

(assert (not b!2210723))

(assert (not b!2210718))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

