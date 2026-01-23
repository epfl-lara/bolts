; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!215110 () Bool)

(assert start!215110)

(declare-datatypes ((T!40494 0))(
  ( (T!40495 (val!7370 Int)) )
))
(declare-datatypes ((List!25934 0))(
  ( (Nil!25850) (Cons!25850 (h!31251 T!40494) (t!198608 List!25934)) )
))
(declare-datatypes ((IArray!16899 0))(
  ( (IArray!16900 (innerList!8507 List!25934)) )
))
(declare-datatypes ((Conc!8447 0))(
  ( (Node!8447 (left!19873 Conc!8447) (right!20203 Conc!8447) (csize!17124 Int) (cheight!8658 Int)) (Leaf!12370 (xs!11389 IArray!16899) (csize!17125 Int)) (Empty!8447) )
))
(declare-fun t!4663 () Conc!8447)

(declare-fun b!2209854 () Bool)

(declare-fun tp!686916 () Bool)

(declare-fun e!1411527 () Bool)

(declare-fun tp!686914 () Bool)

(declare-fun inv!34955 (Conc!8447) Bool)

(assert (=> b!2209854 (= e!1411527 (and (inv!34955 (left!19873 t!4663)) tp!686914 (inv!34955 (right!20203 t!4663)) tp!686916))))

(declare-fun b!2209855 () Bool)

(declare-fun res!949686 () Bool)

(declare-fun e!1411529 () Bool)

(assert (=> b!2209855 (=> (not res!949686) (not e!1411529))))

(get-info :version)

(assert (=> b!2209855 (= res!949686 ((_ is Leaf!12370) t!4663))))

(declare-fun res!949687 () Bool)

(assert (=> start!215110 (=> (not res!949687) (not e!1411529))))

(declare-fun isBalanced!2605 (Conc!8447) Bool)

(assert (=> start!215110 (= res!949687 (isBalanced!2605 t!4663))))

(assert (=> start!215110 e!1411529))

(assert (=> start!215110 (and (inv!34955 t!4663) e!1411527)))

(declare-fun b!2209856 () Bool)

(declare-fun e!1411528 () Bool)

(declare-fun tp!686915 () Bool)

(assert (=> b!2209856 (= e!1411528 tp!686915)))

(declare-fun b!2209857 () Bool)

(declare-fun res!949685 () Bool)

(assert (=> b!2209857 (=> (not res!949685) (not e!1411529))))

(declare-fun isEmpty!14783 (Conc!8447) Bool)

(assert (=> b!2209857 (= res!949685 (not (isEmpty!14783 t!4663)))))

(declare-fun b!2209858 () Bool)

(declare-fun size!20145 (IArray!16899) Int)

(assert (=> b!2209858 (= e!1411529 (>= 0 (size!20145 (xs!11389 t!4663))))))

(declare-fun b!2209859 () Bool)

(declare-fun inv!34956 (IArray!16899) Bool)

(assert (=> b!2209859 (= e!1411527 (and (inv!34956 (xs!11389 t!4663)) e!1411528))))

(assert (= (and start!215110 res!949687) b!2209857))

(assert (= (and b!2209857 res!949685) b!2209855))

(assert (= (and b!2209855 res!949686) b!2209858))

(assert (= (and start!215110 ((_ is Node!8447) t!4663)) b!2209854))

(assert (= b!2209859 b!2209856))

(assert (= (and start!215110 ((_ is Leaf!12370) t!4663)) b!2209859))

(declare-fun m!2651513 () Bool)

(assert (=> b!2209854 m!2651513))

(declare-fun m!2651515 () Bool)

(assert (=> b!2209854 m!2651515))

(declare-fun m!2651517 () Bool)

(assert (=> b!2209859 m!2651517))

(declare-fun m!2651519 () Bool)

(assert (=> b!2209857 m!2651519))

(declare-fun m!2651521 () Bool)

(assert (=> b!2209858 m!2651521))

(declare-fun m!2651523 () Bool)

(assert (=> start!215110 m!2651523))

(declare-fun m!2651525 () Bool)

(assert (=> start!215110 m!2651525))

(check-sat (not b!2209858) (not b!2209856) (not b!2209854) (not b!2209857) (not b!2209859) (not start!215110))
(check-sat)
(get-model)

(declare-fun b!2209872 () Bool)

(declare-fun res!949705 () Bool)

(declare-fun e!1411535 () Bool)

(assert (=> b!2209872 (=> (not res!949705) (not e!1411535))))

(assert (=> b!2209872 (= res!949705 (not (isEmpty!14783 (left!19873 t!4663))))))

(declare-fun b!2209873 () Bool)

(declare-fun e!1411534 () Bool)

(assert (=> b!2209873 (= e!1411534 e!1411535)))

(declare-fun res!949703 () Bool)

(assert (=> b!2209873 (=> (not res!949703) (not e!1411535))))

(declare-fun height!1270 (Conc!8447) Int)

(assert (=> b!2209873 (= res!949703 (<= (- 1) (- (height!1270 (left!19873 t!4663)) (height!1270 (right!20203 t!4663)))))))

(declare-fun b!2209874 () Bool)

(assert (=> b!2209874 (= e!1411535 (not (isEmpty!14783 (right!20203 t!4663))))))

(declare-fun b!2209875 () Bool)

(declare-fun res!949700 () Bool)

(assert (=> b!2209875 (=> (not res!949700) (not e!1411535))))

(assert (=> b!2209875 (= res!949700 (isBalanced!2605 (left!19873 t!4663)))))

(declare-fun d!660463 () Bool)

(declare-fun res!949704 () Bool)

(assert (=> d!660463 (=> res!949704 e!1411534)))

(assert (=> d!660463 (= res!949704 (not ((_ is Node!8447) t!4663)))))

(assert (=> d!660463 (= (isBalanced!2605 t!4663) e!1411534)))

(declare-fun b!2209876 () Bool)

(declare-fun res!949701 () Bool)

(assert (=> b!2209876 (=> (not res!949701) (not e!1411535))))

(assert (=> b!2209876 (= res!949701 (<= (- (height!1270 (left!19873 t!4663)) (height!1270 (right!20203 t!4663))) 1))))

(declare-fun b!2209877 () Bool)

(declare-fun res!949702 () Bool)

(assert (=> b!2209877 (=> (not res!949702) (not e!1411535))))

(assert (=> b!2209877 (= res!949702 (isBalanced!2605 (right!20203 t!4663)))))

(assert (= (and d!660463 (not res!949704)) b!2209873))

(assert (= (and b!2209873 res!949703) b!2209876))

(assert (= (and b!2209876 res!949701) b!2209875))

(assert (= (and b!2209875 res!949700) b!2209877))

(assert (= (and b!2209877 res!949702) b!2209872))

(assert (= (and b!2209872 res!949705) b!2209874))

(declare-fun m!2651539 () Bool)

(assert (=> b!2209874 m!2651539))

(declare-fun m!2651541 () Bool)

(assert (=> b!2209872 m!2651541))

(declare-fun m!2651543 () Bool)

(assert (=> b!2209875 m!2651543))

(declare-fun m!2651545 () Bool)

(assert (=> b!2209873 m!2651545))

(declare-fun m!2651547 () Bool)

(assert (=> b!2209873 m!2651547))

(assert (=> b!2209876 m!2651545))

(assert (=> b!2209876 m!2651547))

(declare-fun m!2651549 () Bool)

(assert (=> b!2209877 m!2651549))

(assert (=> start!215110 d!660463))

(declare-fun d!660469 () Bool)

(declare-fun c!353236 () Bool)

(assert (=> d!660469 (= c!353236 ((_ is Node!8447) t!4663))))

(declare-fun e!1411548 () Bool)

(assert (=> d!660469 (= (inv!34955 t!4663) e!1411548)))

(declare-fun b!2209896 () Bool)

(declare-fun inv!34958 (Conc!8447) Bool)

(assert (=> b!2209896 (= e!1411548 (inv!34958 t!4663))))

(declare-fun b!2209897 () Bool)

(declare-fun e!1411549 () Bool)

(assert (=> b!2209897 (= e!1411548 e!1411549)))

(declare-fun res!949712 () Bool)

(assert (=> b!2209897 (= res!949712 (not ((_ is Leaf!12370) t!4663)))))

(assert (=> b!2209897 (=> res!949712 e!1411549)))

(declare-fun b!2209898 () Bool)

(declare-fun inv!34960 (Conc!8447) Bool)

(assert (=> b!2209898 (= e!1411549 (inv!34960 t!4663))))

(assert (= (and d!660469 c!353236) b!2209896))

(assert (= (and d!660469 (not c!353236)) b!2209897))

(assert (= (and b!2209897 (not res!949712)) b!2209898))

(declare-fun m!2651559 () Bool)

(assert (=> b!2209896 m!2651559))

(declare-fun m!2651561 () Bool)

(assert (=> b!2209898 m!2651561))

(assert (=> start!215110 d!660469))

(declare-fun d!660475 () Bool)

(declare-fun c!353237 () Bool)

(assert (=> d!660475 (= c!353237 ((_ is Node!8447) (left!19873 t!4663)))))

(declare-fun e!1411550 () Bool)

(assert (=> d!660475 (= (inv!34955 (left!19873 t!4663)) e!1411550)))

(declare-fun b!2209899 () Bool)

(assert (=> b!2209899 (= e!1411550 (inv!34958 (left!19873 t!4663)))))

(declare-fun b!2209900 () Bool)

(declare-fun e!1411551 () Bool)

(assert (=> b!2209900 (= e!1411550 e!1411551)))

(declare-fun res!949713 () Bool)

(assert (=> b!2209900 (= res!949713 (not ((_ is Leaf!12370) (left!19873 t!4663))))))

(assert (=> b!2209900 (=> res!949713 e!1411551)))

(declare-fun b!2209901 () Bool)

(assert (=> b!2209901 (= e!1411551 (inv!34960 (left!19873 t!4663)))))

(assert (= (and d!660475 c!353237) b!2209899))

(assert (= (and d!660475 (not c!353237)) b!2209900))

(assert (= (and b!2209900 (not res!949713)) b!2209901))

(declare-fun m!2651563 () Bool)

(assert (=> b!2209899 m!2651563))

(declare-fun m!2651565 () Bool)

(assert (=> b!2209901 m!2651565))

(assert (=> b!2209854 d!660475))

(declare-fun d!660477 () Bool)

(declare-fun c!353238 () Bool)

(assert (=> d!660477 (= c!353238 ((_ is Node!8447) (right!20203 t!4663)))))

(declare-fun e!1411552 () Bool)

(assert (=> d!660477 (= (inv!34955 (right!20203 t!4663)) e!1411552)))

(declare-fun b!2209902 () Bool)

(assert (=> b!2209902 (= e!1411552 (inv!34958 (right!20203 t!4663)))))

(declare-fun b!2209903 () Bool)

(declare-fun e!1411553 () Bool)

(assert (=> b!2209903 (= e!1411552 e!1411553)))

(declare-fun res!949714 () Bool)

(assert (=> b!2209903 (= res!949714 (not ((_ is Leaf!12370) (right!20203 t!4663))))))

(assert (=> b!2209903 (=> res!949714 e!1411553)))

(declare-fun b!2209904 () Bool)

(assert (=> b!2209904 (= e!1411553 (inv!34960 (right!20203 t!4663)))))

(assert (= (and d!660477 c!353238) b!2209902))

(assert (= (and d!660477 (not c!353238)) b!2209903))

(assert (= (and b!2209903 (not res!949714)) b!2209904))

(declare-fun m!2651567 () Bool)

(assert (=> b!2209902 m!2651567))

(declare-fun m!2651569 () Bool)

(assert (=> b!2209904 m!2651569))

(assert (=> b!2209854 d!660477))

(declare-fun d!660479 () Bool)

(declare-fun size!20148 (List!25934) Int)

(assert (=> d!660479 (= (inv!34956 (xs!11389 t!4663)) (<= (size!20148 (innerList!8507 (xs!11389 t!4663))) 2147483647))))

(declare-fun bs!451349 () Bool)

(assert (= bs!451349 d!660479))

(declare-fun m!2651571 () Bool)

(assert (=> bs!451349 m!2651571))

(assert (=> b!2209859 d!660479))

(declare-fun d!660481 () Bool)

(declare-fun lt!826291 () Int)

(declare-fun list!10013 (IArray!16899) List!25934)

(assert (=> d!660481 (= lt!826291 (size!20148 (list!10013 (xs!11389 t!4663))))))

(declare-fun choose!13046 (IArray!16899) Int)

(assert (=> d!660481 (= lt!826291 (choose!13046 (xs!11389 t!4663)))))

(assert (=> d!660481 (= (size!20145 (xs!11389 t!4663)) lt!826291)))

(declare-fun bs!451350 () Bool)

(assert (= bs!451350 d!660481))

(declare-fun m!2651573 () Bool)

(assert (=> bs!451350 m!2651573))

(assert (=> bs!451350 m!2651573))

(declare-fun m!2651575 () Bool)

(assert (=> bs!451350 m!2651575))

(declare-fun m!2651577 () Bool)

(assert (=> bs!451350 m!2651577))

(assert (=> b!2209858 d!660481))

(declare-fun d!660483 () Bool)

(declare-fun lt!826294 () Bool)

(declare-fun isEmpty!14785 (List!25934) Bool)

(declare-fun list!10014 (Conc!8447) List!25934)

(assert (=> d!660483 (= lt!826294 (isEmpty!14785 (list!10014 t!4663)))))

(declare-fun size!20149 (Conc!8447) Int)

(assert (=> d!660483 (= lt!826294 (= (size!20149 t!4663) 0))))

(assert (=> d!660483 (= (isEmpty!14783 t!4663) lt!826294)))

(declare-fun bs!451351 () Bool)

(assert (= bs!451351 d!660483))

(declare-fun m!2651595 () Bool)

(assert (=> bs!451351 m!2651595))

(assert (=> bs!451351 m!2651595))

(declare-fun m!2651597 () Bool)

(assert (=> bs!451351 m!2651597))

(declare-fun m!2651599 () Bool)

(assert (=> bs!451351 m!2651599))

(assert (=> b!2209857 d!660483))

(declare-fun b!2209930 () Bool)

(declare-fun e!1411564 () Bool)

(declare-fun tp_is_empty!9759 () Bool)

(declare-fun tp!686919 () Bool)

(assert (=> b!2209930 (= e!1411564 (and tp_is_empty!9759 tp!686919))))

(assert (=> b!2209856 (= tp!686915 e!1411564)))

(assert (= (and b!2209856 ((_ is Cons!25850) (innerList!8507 (xs!11389 t!4663)))) b!2209930))

(declare-fun tp!686937 () Bool)

(declare-fun e!1411577 () Bool)

(declare-fun tp!686936 () Bool)

(declare-fun b!2209952 () Bool)

(assert (=> b!2209952 (= e!1411577 (and (inv!34955 (left!19873 (left!19873 t!4663))) tp!686937 (inv!34955 (right!20203 (left!19873 t!4663))) tp!686936))))

(declare-fun b!2209954 () Bool)

(declare-fun e!1411576 () Bool)

(declare-fun tp!686935 () Bool)

(assert (=> b!2209954 (= e!1411576 tp!686935)))

(declare-fun b!2209953 () Bool)

(assert (=> b!2209953 (= e!1411577 (and (inv!34956 (xs!11389 (left!19873 t!4663))) e!1411576))))

(assert (=> b!2209854 (= tp!686914 (and (inv!34955 (left!19873 t!4663)) e!1411577))))

(assert (= (and b!2209854 ((_ is Node!8447) (left!19873 t!4663))) b!2209952))

(assert (= b!2209953 b!2209954))

(assert (= (and b!2209854 ((_ is Leaf!12370) (left!19873 t!4663))) b!2209953))

(declare-fun m!2651603 () Bool)

(assert (=> b!2209952 m!2651603))

(declare-fun m!2651605 () Bool)

(assert (=> b!2209952 m!2651605))

(declare-fun m!2651607 () Bool)

(assert (=> b!2209953 m!2651607))

(assert (=> b!2209854 m!2651513))

(declare-fun b!2209955 () Bool)

(declare-fun tp!686939 () Bool)

(declare-fun e!1411579 () Bool)

(declare-fun tp!686940 () Bool)

(assert (=> b!2209955 (= e!1411579 (and (inv!34955 (left!19873 (right!20203 t!4663))) tp!686940 (inv!34955 (right!20203 (right!20203 t!4663))) tp!686939))))

(declare-fun b!2209957 () Bool)

(declare-fun e!1411578 () Bool)

(declare-fun tp!686938 () Bool)

(assert (=> b!2209957 (= e!1411578 tp!686938)))

(declare-fun b!2209956 () Bool)

(assert (=> b!2209956 (= e!1411579 (and (inv!34956 (xs!11389 (right!20203 t!4663))) e!1411578))))

(assert (=> b!2209854 (= tp!686916 (and (inv!34955 (right!20203 t!4663)) e!1411579))))

(assert (= (and b!2209854 ((_ is Node!8447) (right!20203 t!4663))) b!2209955))

(assert (= b!2209956 b!2209957))

(assert (= (and b!2209854 ((_ is Leaf!12370) (right!20203 t!4663))) b!2209956))

(declare-fun m!2651609 () Bool)

(assert (=> b!2209955 m!2651609))

(declare-fun m!2651611 () Bool)

(assert (=> b!2209955 m!2651611))

(declare-fun m!2651613 () Bool)

(assert (=> b!2209956 m!2651613))

(assert (=> b!2209854 m!2651515))

(check-sat (not b!2209956) (not d!660483) (not b!2209877) (not b!2209957) (not b!2209874) (not b!2209896) (not d!660481) (not b!2209873) (not b!2209952) (not b!2209930) (not b!2209854) (not b!2209953) (not b!2209902) (not b!2209954) (not b!2209955) (not b!2209872) (not b!2209898) (not d!660479) (not b!2209904) (not b!2209901) (not b!2209899) tp_is_empty!9759 (not b!2209875) (not b!2209876))
(check-sat)
(get-model)

(declare-fun d!660489 () Bool)

(declare-fun res!949738 () Bool)

(declare-fun e!1411586 () Bool)

(assert (=> d!660489 (=> (not res!949738) (not e!1411586))))

(assert (=> d!660489 (= res!949738 (<= (size!20148 (list!10013 (xs!11389 (right!20203 t!4663)))) 512))))

(assert (=> d!660489 (= (inv!34960 (right!20203 t!4663)) e!1411586)))

(declare-fun b!2209968 () Bool)

(declare-fun res!949739 () Bool)

(assert (=> b!2209968 (=> (not res!949739) (not e!1411586))))

(assert (=> b!2209968 (= res!949739 (= (csize!17125 (right!20203 t!4663)) (size!20148 (list!10013 (xs!11389 (right!20203 t!4663))))))))

(declare-fun b!2209969 () Bool)

(assert (=> b!2209969 (= e!1411586 (and (> (csize!17125 (right!20203 t!4663)) 0) (<= (csize!17125 (right!20203 t!4663)) 512)))))

(assert (= (and d!660489 res!949738) b!2209968))

(assert (= (and b!2209968 res!949739) b!2209969))

(declare-fun m!2651627 () Bool)

(assert (=> d!660489 m!2651627))

(assert (=> d!660489 m!2651627))

(declare-fun m!2651629 () Bool)

(assert (=> d!660489 m!2651629))

(assert (=> b!2209968 m!2651627))

(assert (=> b!2209968 m!2651627))

(assert (=> b!2209968 m!2651629))

(assert (=> b!2209904 d!660489))

(declare-fun b!2209970 () Bool)

(declare-fun res!949745 () Bool)

(declare-fun e!1411588 () Bool)

(assert (=> b!2209970 (=> (not res!949745) (not e!1411588))))

(assert (=> b!2209970 (= res!949745 (not (isEmpty!14783 (left!19873 (right!20203 t!4663)))))))

(declare-fun b!2209971 () Bool)

(declare-fun e!1411587 () Bool)

(assert (=> b!2209971 (= e!1411587 e!1411588)))

(declare-fun res!949743 () Bool)

(assert (=> b!2209971 (=> (not res!949743) (not e!1411588))))

(assert (=> b!2209971 (= res!949743 (<= (- 1) (- (height!1270 (left!19873 (right!20203 t!4663))) (height!1270 (right!20203 (right!20203 t!4663))))))))

(declare-fun b!2209972 () Bool)

(assert (=> b!2209972 (= e!1411588 (not (isEmpty!14783 (right!20203 (right!20203 t!4663)))))))

(declare-fun b!2209973 () Bool)

(declare-fun res!949740 () Bool)

(assert (=> b!2209973 (=> (not res!949740) (not e!1411588))))

(assert (=> b!2209973 (= res!949740 (isBalanced!2605 (left!19873 (right!20203 t!4663))))))

(declare-fun d!660491 () Bool)

(declare-fun res!949744 () Bool)

(assert (=> d!660491 (=> res!949744 e!1411587)))

(assert (=> d!660491 (= res!949744 (not ((_ is Node!8447) (right!20203 t!4663))))))

(assert (=> d!660491 (= (isBalanced!2605 (right!20203 t!4663)) e!1411587)))

(declare-fun b!2209974 () Bool)

(declare-fun res!949741 () Bool)

(assert (=> b!2209974 (=> (not res!949741) (not e!1411588))))

(assert (=> b!2209974 (= res!949741 (<= (- (height!1270 (left!19873 (right!20203 t!4663))) (height!1270 (right!20203 (right!20203 t!4663)))) 1))))

(declare-fun b!2209975 () Bool)

(declare-fun res!949742 () Bool)

(assert (=> b!2209975 (=> (not res!949742) (not e!1411588))))

(assert (=> b!2209975 (= res!949742 (isBalanced!2605 (right!20203 (right!20203 t!4663))))))

(assert (= (and d!660491 (not res!949744)) b!2209971))

(assert (= (and b!2209971 res!949743) b!2209974))

(assert (= (and b!2209974 res!949741) b!2209973))

(assert (= (and b!2209973 res!949740) b!2209975))

(assert (= (and b!2209975 res!949742) b!2209970))

(assert (= (and b!2209970 res!949745) b!2209972))

(declare-fun m!2651631 () Bool)

(assert (=> b!2209972 m!2651631))

(declare-fun m!2651633 () Bool)

(assert (=> b!2209970 m!2651633))

(declare-fun m!2651635 () Bool)

(assert (=> b!2209973 m!2651635))

(declare-fun m!2651637 () Bool)

(assert (=> b!2209971 m!2651637))

(declare-fun m!2651639 () Bool)

(assert (=> b!2209971 m!2651639))

(assert (=> b!2209974 m!2651637))

(assert (=> b!2209974 m!2651639))

(declare-fun m!2651641 () Bool)

(assert (=> b!2209975 m!2651641))

(assert (=> b!2209877 d!660491))

(declare-fun d!660493 () Bool)

(assert (=> d!660493 (= (height!1270 (left!19873 t!4663)) (ite ((_ is Empty!8447) (left!19873 t!4663)) 0 (ite ((_ is Leaf!12370) (left!19873 t!4663)) 1 (cheight!8658 (left!19873 t!4663)))))))

(assert (=> b!2209876 d!660493))

(declare-fun d!660495 () Bool)

(assert (=> d!660495 (= (height!1270 (right!20203 t!4663)) (ite ((_ is Empty!8447) (right!20203 t!4663)) 0 (ite ((_ is Leaf!12370) (right!20203 t!4663)) 1 (cheight!8658 (right!20203 t!4663)))))))

(assert (=> b!2209876 d!660495))

(declare-fun d!660497 () Bool)

(declare-fun res!949752 () Bool)

(declare-fun e!1411591 () Bool)

(assert (=> d!660497 (=> (not res!949752) (not e!1411591))))

(assert (=> d!660497 (= res!949752 (= (csize!17124 (right!20203 t!4663)) (+ (size!20149 (left!19873 (right!20203 t!4663))) (size!20149 (right!20203 (right!20203 t!4663))))))))

(assert (=> d!660497 (= (inv!34958 (right!20203 t!4663)) e!1411591)))

(declare-fun b!2209982 () Bool)

(declare-fun res!949753 () Bool)

(assert (=> b!2209982 (=> (not res!949753) (not e!1411591))))

(assert (=> b!2209982 (= res!949753 (and (not (= (left!19873 (right!20203 t!4663)) Empty!8447)) (not (= (right!20203 (right!20203 t!4663)) Empty!8447))))))

(declare-fun b!2209983 () Bool)

(declare-fun res!949754 () Bool)

(assert (=> b!2209983 (=> (not res!949754) (not e!1411591))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!2209983 (= res!949754 (= (cheight!8658 (right!20203 t!4663)) (+ (max!0 (height!1270 (left!19873 (right!20203 t!4663))) (height!1270 (right!20203 (right!20203 t!4663)))) 1)))))

(declare-fun b!2209984 () Bool)

(assert (=> b!2209984 (= e!1411591 (<= 0 (cheight!8658 (right!20203 t!4663))))))

(assert (= (and d!660497 res!949752) b!2209982))

(assert (= (and b!2209982 res!949753) b!2209983))

(assert (= (and b!2209983 res!949754) b!2209984))

(declare-fun m!2651643 () Bool)

(assert (=> d!660497 m!2651643))

(declare-fun m!2651645 () Bool)

(assert (=> d!660497 m!2651645))

(assert (=> b!2209983 m!2651637))

(assert (=> b!2209983 m!2651639))

(assert (=> b!2209983 m!2651637))

(assert (=> b!2209983 m!2651639))

(declare-fun m!2651647 () Bool)

(assert (=> b!2209983 m!2651647))

(assert (=> b!2209902 d!660497))

(declare-fun d!660499 () Bool)

(assert (=> d!660499 (= (inv!34956 (xs!11389 (left!19873 t!4663))) (<= (size!20148 (innerList!8507 (xs!11389 (left!19873 t!4663)))) 2147483647))))

(declare-fun bs!451353 () Bool)

(assert (= bs!451353 d!660499))

(declare-fun m!2651649 () Bool)

(assert (=> bs!451353 m!2651649))

(assert (=> b!2209953 d!660499))

(declare-fun d!660501 () Bool)

(declare-fun c!353240 () Bool)

(assert (=> d!660501 (= c!353240 ((_ is Node!8447) (left!19873 (left!19873 t!4663))))))

(declare-fun e!1411592 () Bool)

(assert (=> d!660501 (= (inv!34955 (left!19873 (left!19873 t!4663))) e!1411592)))

(declare-fun b!2209985 () Bool)

(assert (=> b!2209985 (= e!1411592 (inv!34958 (left!19873 (left!19873 t!4663))))))

(declare-fun b!2209986 () Bool)

(declare-fun e!1411593 () Bool)

(assert (=> b!2209986 (= e!1411592 e!1411593)))

(declare-fun res!949755 () Bool)

(assert (=> b!2209986 (= res!949755 (not ((_ is Leaf!12370) (left!19873 (left!19873 t!4663)))))))

(assert (=> b!2209986 (=> res!949755 e!1411593)))

(declare-fun b!2209987 () Bool)

(assert (=> b!2209987 (= e!1411593 (inv!34960 (left!19873 (left!19873 t!4663))))))

(assert (= (and d!660501 c!353240) b!2209985))

(assert (= (and d!660501 (not c!353240)) b!2209986))

(assert (= (and b!2209986 (not res!949755)) b!2209987))

(declare-fun m!2651651 () Bool)

(assert (=> b!2209985 m!2651651))

(declare-fun m!2651653 () Bool)

(assert (=> b!2209987 m!2651653))

(assert (=> b!2209952 d!660501))

(declare-fun d!660503 () Bool)

(declare-fun c!353241 () Bool)

(assert (=> d!660503 (= c!353241 ((_ is Node!8447) (right!20203 (left!19873 t!4663))))))

(declare-fun e!1411594 () Bool)

(assert (=> d!660503 (= (inv!34955 (right!20203 (left!19873 t!4663))) e!1411594)))

(declare-fun b!2209988 () Bool)

(assert (=> b!2209988 (= e!1411594 (inv!34958 (right!20203 (left!19873 t!4663))))))

(declare-fun b!2209989 () Bool)

(declare-fun e!1411595 () Bool)

(assert (=> b!2209989 (= e!1411594 e!1411595)))

(declare-fun res!949756 () Bool)

(assert (=> b!2209989 (= res!949756 (not ((_ is Leaf!12370) (right!20203 (left!19873 t!4663)))))))

(assert (=> b!2209989 (=> res!949756 e!1411595)))

(declare-fun b!2209990 () Bool)

(assert (=> b!2209990 (= e!1411595 (inv!34960 (right!20203 (left!19873 t!4663))))))

(assert (= (and d!660503 c!353241) b!2209988))

(assert (= (and d!660503 (not c!353241)) b!2209989))

(assert (= (and b!2209989 (not res!949756)) b!2209990))

(declare-fun m!2651655 () Bool)

(assert (=> b!2209988 m!2651655))

(declare-fun m!2651657 () Bool)

(assert (=> b!2209990 m!2651657))

(assert (=> b!2209952 d!660503))

(declare-fun d!660505 () Bool)

(declare-fun lt!826297 () Int)

(assert (=> d!660505 (>= lt!826297 0)))

(declare-fun e!1411598 () Int)

(assert (=> d!660505 (= lt!826297 e!1411598)))

(declare-fun c!353244 () Bool)

(assert (=> d!660505 (= c!353244 ((_ is Nil!25850) (list!10013 (xs!11389 t!4663))))))

(assert (=> d!660505 (= (size!20148 (list!10013 (xs!11389 t!4663))) lt!826297)))

(declare-fun b!2209995 () Bool)

(assert (=> b!2209995 (= e!1411598 0)))

(declare-fun b!2209996 () Bool)

(assert (=> b!2209996 (= e!1411598 (+ 1 (size!20148 (t!198608 (list!10013 (xs!11389 t!4663))))))))

(assert (= (and d!660505 c!353244) b!2209995))

(assert (= (and d!660505 (not c!353244)) b!2209996))

(declare-fun m!2651659 () Bool)

(assert (=> b!2209996 m!2651659))

(assert (=> d!660481 d!660505))

(declare-fun d!660507 () Bool)

(assert (=> d!660507 (= (list!10013 (xs!11389 t!4663)) (innerList!8507 (xs!11389 t!4663)))))

(assert (=> d!660481 d!660507))

(declare-fun d!660509 () Bool)

(declare-fun _$1!10177 () Int)

(assert (=> d!660509 (= _$1!10177 (size!20148 (list!10013 (xs!11389 t!4663))))))

(assert (=> d!660509 true))

(assert (=> d!660509 (= (choose!13046 (xs!11389 t!4663)) _$1!10177)))

(declare-fun bs!451354 () Bool)

(assert (= bs!451354 d!660509))

(assert (=> bs!451354 m!2651573))

(assert (=> bs!451354 m!2651573))

(assert (=> bs!451354 m!2651575))

(assert (=> d!660481 d!660509))

(declare-fun d!660511 () Bool)

(assert (=> d!660511 (= (inv!34956 (xs!11389 (right!20203 t!4663))) (<= (size!20148 (innerList!8507 (xs!11389 (right!20203 t!4663)))) 2147483647))))

(declare-fun bs!451355 () Bool)

(assert (= bs!451355 d!660511))

(declare-fun m!2651661 () Bool)

(assert (=> bs!451355 m!2651661))

(assert (=> b!2209956 d!660511))

(declare-fun d!660513 () Bool)

(declare-fun lt!826298 () Bool)

(assert (=> d!660513 (= lt!826298 (isEmpty!14785 (list!10014 (left!19873 t!4663))))))

(assert (=> d!660513 (= lt!826298 (= (size!20149 (left!19873 t!4663)) 0))))

(assert (=> d!660513 (= (isEmpty!14783 (left!19873 t!4663)) lt!826298)))

(declare-fun bs!451356 () Bool)

(assert (= bs!451356 d!660513))

(declare-fun m!2651663 () Bool)

(assert (=> bs!451356 m!2651663))

(assert (=> bs!451356 m!2651663))

(declare-fun m!2651665 () Bool)

(assert (=> bs!451356 m!2651665))

(declare-fun m!2651667 () Bool)

(assert (=> bs!451356 m!2651667))

(assert (=> b!2209872 d!660513))

(declare-fun d!660515 () Bool)

(declare-fun c!353245 () Bool)

(assert (=> d!660515 (= c!353245 ((_ is Node!8447) (left!19873 (right!20203 t!4663))))))

(declare-fun e!1411599 () Bool)

(assert (=> d!660515 (= (inv!34955 (left!19873 (right!20203 t!4663))) e!1411599)))

(declare-fun b!2209997 () Bool)

(assert (=> b!2209997 (= e!1411599 (inv!34958 (left!19873 (right!20203 t!4663))))))

(declare-fun b!2209998 () Bool)

(declare-fun e!1411600 () Bool)

(assert (=> b!2209998 (= e!1411599 e!1411600)))

(declare-fun res!949757 () Bool)

(assert (=> b!2209998 (= res!949757 (not ((_ is Leaf!12370) (left!19873 (right!20203 t!4663)))))))

(assert (=> b!2209998 (=> res!949757 e!1411600)))

(declare-fun b!2209999 () Bool)

(assert (=> b!2209999 (= e!1411600 (inv!34960 (left!19873 (right!20203 t!4663))))))

(assert (= (and d!660515 c!353245) b!2209997))

(assert (= (and d!660515 (not c!353245)) b!2209998))

(assert (= (and b!2209998 (not res!949757)) b!2209999))

(declare-fun m!2651669 () Bool)

(assert (=> b!2209997 m!2651669))

(declare-fun m!2651671 () Bool)

(assert (=> b!2209999 m!2651671))

(assert (=> b!2209955 d!660515))

(declare-fun d!660517 () Bool)

(declare-fun c!353246 () Bool)

(assert (=> d!660517 (= c!353246 ((_ is Node!8447) (right!20203 (right!20203 t!4663))))))

(declare-fun e!1411601 () Bool)

(assert (=> d!660517 (= (inv!34955 (right!20203 (right!20203 t!4663))) e!1411601)))

(declare-fun b!2210000 () Bool)

(assert (=> b!2210000 (= e!1411601 (inv!34958 (right!20203 (right!20203 t!4663))))))

(declare-fun b!2210001 () Bool)

(declare-fun e!1411602 () Bool)

(assert (=> b!2210001 (= e!1411601 e!1411602)))

(declare-fun res!949758 () Bool)

(assert (=> b!2210001 (= res!949758 (not ((_ is Leaf!12370) (right!20203 (right!20203 t!4663)))))))

(assert (=> b!2210001 (=> res!949758 e!1411602)))

(declare-fun b!2210002 () Bool)

(assert (=> b!2210002 (= e!1411602 (inv!34960 (right!20203 (right!20203 t!4663))))))

(assert (= (and d!660517 c!353246) b!2210000))

(assert (= (and d!660517 (not c!353246)) b!2210001))

(assert (= (and b!2210001 (not res!949758)) b!2210002))

(declare-fun m!2651673 () Bool)

(assert (=> b!2210000 m!2651673))

(declare-fun m!2651675 () Bool)

(assert (=> b!2210002 m!2651675))

(assert (=> b!2209955 d!660517))

(declare-fun d!660519 () Bool)

(declare-fun res!949759 () Bool)

(declare-fun e!1411603 () Bool)

(assert (=> d!660519 (=> (not res!949759) (not e!1411603))))

(assert (=> d!660519 (= res!949759 (= (csize!17124 t!4663) (+ (size!20149 (left!19873 t!4663)) (size!20149 (right!20203 t!4663)))))))

(assert (=> d!660519 (= (inv!34958 t!4663) e!1411603)))

(declare-fun b!2210003 () Bool)

(declare-fun res!949760 () Bool)

(assert (=> b!2210003 (=> (not res!949760) (not e!1411603))))

(assert (=> b!2210003 (= res!949760 (and (not (= (left!19873 t!4663) Empty!8447)) (not (= (right!20203 t!4663) Empty!8447))))))

(declare-fun b!2210004 () Bool)

(declare-fun res!949761 () Bool)

(assert (=> b!2210004 (=> (not res!949761) (not e!1411603))))

(assert (=> b!2210004 (= res!949761 (= (cheight!8658 t!4663) (+ (max!0 (height!1270 (left!19873 t!4663)) (height!1270 (right!20203 t!4663))) 1)))))

(declare-fun b!2210005 () Bool)

(assert (=> b!2210005 (= e!1411603 (<= 0 (cheight!8658 t!4663)))))

(assert (= (and d!660519 res!949759) b!2210003))

(assert (= (and b!2210003 res!949760) b!2210004))

(assert (= (and b!2210004 res!949761) b!2210005))

(assert (=> d!660519 m!2651667))

(declare-fun m!2651677 () Bool)

(assert (=> d!660519 m!2651677))

(assert (=> b!2210004 m!2651545))

(assert (=> b!2210004 m!2651547))

(assert (=> b!2210004 m!2651545))

(assert (=> b!2210004 m!2651547))

(declare-fun m!2651679 () Bool)

(assert (=> b!2210004 m!2651679))

(assert (=> b!2209896 d!660519))

(assert (=> b!2209854 d!660475))

(assert (=> b!2209854 d!660477))

(declare-fun d!660521 () Bool)

(declare-fun res!949762 () Bool)

(declare-fun e!1411604 () Bool)

(assert (=> d!660521 (=> (not res!949762) (not e!1411604))))

(assert (=> d!660521 (= res!949762 (<= (size!20148 (list!10013 (xs!11389 (left!19873 t!4663)))) 512))))

(assert (=> d!660521 (= (inv!34960 (left!19873 t!4663)) e!1411604)))

(declare-fun b!2210006 () Bool)

(declare-fun res!949763 () Bool)

(assert (=> b!2210006 (=> (not res!949763) (not e!1411604))))

(assert (=> b!2210006 (= res!949763 (= (csize!17125 (left!19873 t!4663)) (size!20148 (list!10013 (xs!11389 (left!19873 t!4663))))))))

(declare-fun b!2210007 () Bool)

(assert (=> b!2210007 (= e!1411604 (and (> (csize!17125 (left!19873 t!4663)) 0) (<= (csize!17125 (left!19873 t!4663)) 512)))))

(assert (= (and d!660521 res!949762) b!2210006))

(assert (= (and b!2210006 res!949763) b!2210007))

(declare-fun m!2651681 () Bool)

(assert (=> d!660521 m!2651681))

(assert (=> d!660521 m!2651681))

(declare-fun m!2651683 () Bool)

(assert (=> d!660521 m!2651683))

(assert (=> b!2210006 m!2651681))

(assert (=> b!2210006 m!2651681))

(assert (=> b!2210006 m!2651683))

(assert (=> b!2209901 d!660521))

(declare-fun b!2210008 () Bool)

(declare-fun res!949769 () Bool)

(declare-fun e!1411606 () Bool)

(assert (=> b!2210008 (=> (not res!949769) (not e!1411606))))

(assert (=> b!2210008 (= res!949769 (not (isEmpty!14783 (left!19873 (left!19873 t!4663)))))))

(declare-fun b!2210009 () Bool)

(declare-fun e!1411605 () Bool)

(assert (=> b!2210009 (= e!1411605 e!1411606)))

(declare-fun res!949767 () Bool)

(assert (=> b!2210009 (=> (not res!949767) (not e!1411606))))

(assert (=> b!2210009 (= res!949767 (<= (- 1) (- (height!1270 (left!19873 (left!19873 t!4663))) (height!1270 (right!20203 (left!19873 t!4663))))))))

(declare-fun b!2210010 () Bool)

(assert (=> b!2210010 (= e!1411606 (not (isEmpty!14783 (right!20203 (left!19873 t!4663)))))))

(declare-fun b!2210011 () Bool)

(declare-fun res!949764 () Bool)

(assert (=> b!2210011 (=> (not res!949764) (not e!1411606))))

(assert (=> b!2210011 (= res!949764 (isBalanced!2605 (left!19873 (left!19873 t!4663))))))

(declare-fun d!660523 () Bool)

(declare-fun res!949768 () Bool)

(assert (=> d!660523 (=> res!949768 e!1411605)))

(assert (=> d!660523 (= res!949768 (not ((_ is Node!8447) (left!19873 t!4663))))))

(assert (=> d!660523 (= (isBalanced!2605 (left!19873 t!4663)) e!1411605)))

(declare-fun b!2210012 () Bool)

(declare-fun res!949765 () Bool)

(assert (=> b!2210012 (=> (not res!949765) (not e!1411606))))

(assert (=> b!2210012 (= res!949765 (<= (- (height!1270 (left!19873 (left!19873 t!4663))) (height!1270 (right!20203 (left!19873 t!4663)))) 1))))

(declare-fun b!2210013 () Bool)

(declare-fun res!949766 () Bool)

(assert (=> b!2210013 (=> (not res!949766) (not e!1411606))))

(assert (=> b!2210013 (= res!949766 (isBalanced!2605 (right!20203 (left!19873 t!4663))))))

(assert (= (and d!660523 (not res!949768)) b!2210009))

(assert (= (and b!2210009 res!949767) b!2210012))

(assert (= (and b!2210012 res!949765) b!2210011))

(assert (= (and b!2210011 res!949764) b!2210013))

(assert (= (and b!2210013 res!949766) b!2210008))

(assert (= (and b!2210008 res!949769) b!2210010))

(declare-fun m!2651685 () Bool)

(assert (=> b!2210010 m!2651685))

(declare-fun m!2651687 () Bool)

(assert (=> b!2210008 m!2651687))

(declare-fun m!2651689 () Bool)

(assert (=> b!2210011 m!2651689))

(declare-fun m!2651691 () Bool)

(assert (=> b!2210009 m!2651691))

(declare-fun m!2651693 () Bool)

(assert (=> b!2210009 m!2651693))

(assert (=> b!2210012 m!2651691))

(assert (=> b!2210012 m!2651693))

(declare-fun m!2651695 () Bool)

(assert (=> b!2210013 m!2651695))

(assert (=> b!2209875 d!660523))

(declare-fun d!660525 () Bool)

(declare-fun lt!826299 () Bool)

(assert (=> d!660525 (= lt!826299 (isEmpty!14785 (list!10014 (right!20203 t!4663))))))

(assert (=> d!660525 (= lt!826299 (= (size!20149 (right!20203 t!4663)) 0))))

(assert (=> d!660525 (= (isEmpty!14783 (right!20203 t!4663)) lt!826299)))

(declare-fun bs!451357 () Bool)

(assert (= bs!451357 d!660525))

(declare-fun m!2651697 () Bool)

(assert (=> bs!451357 m!2651697))

(assert (=> bs!451357 m!2651697))

(declare-fun m!2651699 () Bool)

(assert (=> bs!451357 m!2651699))

(assert (=> bs!451357 m!2651677))

(assert (=> b!2209874 d!660525))

(declare-fun d!660527 () Bool)

(assert (=> d!660527 (= (isEmpty!14785 (list!10014 t!4663)) ((_ is Nil!25850) (list!10014 t!4663)))))

(assert (=> d!660483 d!660527))

(declare-fun b!2210025 () Bool)

(declare-fun e!1411612 () List!25934)

(declare-fun ++!6440 (List!25934 List!25934) List!25934)

(assert (=> b!2210025 (= e!1411612 (++!6440 (list!10014 (left!19873 t!4663)) (list!10014 (right!20203 t!4663))))))

(declare-fun b!2210022 () Bool)

(declare-fun e!1411611 () List!25934)

(assert (=> b!2210022 (= e!1411611 Nil!25850)))

(declare-fun b!2210024 () Bool)

(assert (=> b!2210024 (= e!1411612 (list!10013 (xs!11389 t!4663)))))

(declare-fun b!2210023 () Bool)

(assert (=> b!2210023 (= e!1411611 e!1411612)))

(declare-fun c!353252 () Bool)

(assert (=> b!2210023 (= c!353252 ((_ is Leaf!12370) t!4663))))

(declare-fun d!660529 () Bool)

(declare-fun c!353251 () Bool)

(assert (=> d!660529 (= c!353251 ((_ is Empty!8447) t!4663))))

(assert (=> d!660529 (= (list!10014 t!4663) e!1411611)))

(assert (= (and d!660529 c!353251) b!2210022))

(assert (= (and d!660529 (not c!353251)) b!2210023))

(assert (= (and b!2210023 c!353252) b!2210024))

(assert (= (and b!2210023 (not c!353252)) b!2210025))

(assert (=> b!2210025 m!2651663))

(assert (=> b!2210025 m!2651697))

(assert (=> b!2210025 m!2651663))

(assert (=> b!2210025 m!2651697))

(declare-fun m!2651701 () Bool)

(assert (=> b!2210025 m!2651701))

(assert (=> b!2210024 m!2651573))

(assert (=> d!660483 d!660529))

(declare-fun d!660533 () Bool)

(declare-fun lt!826305 () Int)

(assert (=> d!660533 (= lt!826305 (size!20148 (list!10014 t!4663)))))

(assert (=> d!660533 (= lt!826305 (ite ((_ is Empty!8447) t!4663) 0 (ite ((_ is Leaf!12370) t!4663) (csize!17125 t!4663) (csize!17124 t!4663))))))

(assert (=> d!660533 (= (size!20149 t!4663) lt!826305)))

(declare-fun bs!451358 () Bool)

(assert (= bs!451358 d!660533))

(assert (=> bs!451358 m!2651595))

(assert (=> bs!451358 m!2651595))

(declare-fun m!2651705 () Bool)

(assert (=> bs!451358 m!2651705))

(assert (=> d!660483 d!660533))

(declare-fun d!660541 () Bool)

(declare-fun res!949776 () Bool)

(declare-fun e!1411618 () Bool)

(assert (=> d!660541 (=> (not res!949776) (not e!1411618))))

(assert (=> d!660541 (= res!949776 (= (csize!17124 (left!19873 t!4663)) (+ (size!20149 (left!19873 (left!19873 t!4663))) (size!20149 (right!20203 (left!19873 t!4663))))))))

(assert (=> d!660541 (= (inv!34958 (left!19873 t!4663)) e!1411618)))

(declare-fun b!2210038 () Bool)

(declare-fun res!949777 () Bool)

(assert (=> b!2210038 (=> (not res!949777) (not e!1411618))))

(assert (=> b!2210038 (= res!949777 (and (not (= (left!19873 (left!19873 t!4663)) Empty!8447)) (not (= (right!20203 (left!19873 t!4663)) Empty!8447))))))

(declare-fun b!2210039 () Bool)

(declare-fun res!949778 () Bool)

(assert (=> b!2210039 (=> (not res!949778) (not e!1411618))))

(assert (=> b!2210039 (= res!949778 (= (cheight!8658 (left!19873 t!4663)) (+ (max!0 (height!1270 (left!19873 (left!19873 t!4663))) (height!1270 (right!20203 (left!19873 t!4663)))) 1)))))

(declare-fun b!2210040 () Bool)

(assert (=> b!2210040 (= e!1411618 (<= 0 (cheight!8658 (left!19873 t!4663))))))

(assert (= (and d!660541 res!949776) b!2210038))

(assert (= (and b!2210038 res!949777) b!2210039))

(assert (= (and b!2210039 res!949778) b!2210040))

(declare-fun m!2651713 () Bool)

(assert (=> d!660541 m!2651713))

(declare-fun m!2651717 () Bool)

(assert (=> d!660541 m!2651717))

(assert (=> b!2210039 m!2651691))

(assert (=> b!2210039 m!2651693))

(assert (=> b!2210039 m!2651691))

(assert (=> b!2210039 m!2651693))

(declare-fun m!2651723 () Bool)

(assert (=> b!2210039 m!2651723))

(assert (=> b!2209899 d!660541))

(assert (=> b!2209873 d!660493))

(assert (=> b!2209873 d!660495))

(declare-fun d!660545 () Bool)

(declare-fun res!949779 () Bool)

(declare-fun e!1411619 () Bool)

(assert (=> d!660545 (=> (not res!949779) (not e!1411619))))

(assert (=> d!660545 (= res!949779 (<= (size!20148 (list!10013 (xs!11389 t!4663))) 512))))

(assert (=> d!660545 (= (inv!34960 t!4663) e!1411619)))

(declare-fun b!2210041 () Bool)

(declare-fun res!949780 () Bool)

(assert (=> b!2210041 (=> (not res!949780) (not e!1411619))))

(assert (=> b!2210041 (= res!949780 (= (csize!17125 t!4663) (size!20148 (list!10013 (xs!11389 t!4663)))))))

(declare-fun b!2210042 () Bool)

(assert (=> b!2210042 (= e!1411619 (and (> (csize!17125 t!4663) 0) (<= (csize!17125 t!4663) 512)))))

(assert (= (and d!660545 res!949779) b!2210041))

(assert (= (and b!2210041 res!949780) b!2210042))

(assert (=> d!660545 m!2651573))

(assert (=> d!660545 m!2651573))

(assert (=> d!660545 m!2651575))

(assert (=> b!2210041 m!2651573))

(assert (=> b!2210041 m!2651573))

(assert (=> b!2210041 m!2651575))

(assert (=> b!2209898 d!660545))

(declare-fun d!660549 () Bool)

(declare-fun lt!826306 () Int)

(assert (=> d!660549 (>= lt!826306 0)))

(declare-fun e!1411620 () Int)

(assert (=> d!660549 (= lt!826306 e!1411620)))

(declare-fun c!353256 () Bool)

(assert (=> d!660549 (= c!353256 ((_ is Nil!25850) (innerList!8507 (xs!11389 t!4663))))))

(assert (=> d!660549 (= (size!20148 (innerList!8507 (xs!11389 t!4663))) lt!826306)))

(declare-fun b!2210043 () Bool)

(assert (=> b!2210043 (= e!1411620 0)))

(declare-fun b!2210044 () Bool)

(assert (=> b!2210044 (= e!1411620 (+ 1 (size!20148 (t!198608 (innerList!8507 (xs!11389 t!4663))))))))

(assert (= (and d!660549 c!353256) b!2210043))

(assert (= (and d!660549 (not c!353256)) b!2210044))

(declare-fun m!2651727 () Bool)

(assert (=> b!2210044 m!2651727))

(assert (=> d!660479 d!660549))

(declare-fun b!2210045 () Bool)

(declare-fun tp!686948 () Bool)

(declare-fun tp!686949 () Bool)

(declare-fun e!1411622 () Bool)

(assert (=> b!2210045 (= e!1411622 (and (inv!34955 (left!19873 (left!19873 (right!20203 t!4663)))) tp!686949 (inv!34955 (right!20203 (left!19873 (right!20203 t!4663)))) tp!686948))))

(declare-fun b!2210047 () Bool)

(declare-fun e!1411621 () Bool)

(declare-fun tp!686947 () Bool)

(assert (=> b!2210047 (= e!1411621 tp!686947)))

(declare-fun b!2210046 () Bool)

(assert (=> b!2210046 (= e!1411622 (and (inv!34956 (xs!11389 (left!19873 (right!20203 t!4663)))) e!1411621))))

(assert (=> b!2209955 (= tp!686940 (and (inv!34955 (left!19873 (right!20203 t!4663))) e!1411622))))

(assert (= (and b!2209955 ((_ is Node!8447) (left!19873 (right!20203 t!4663)))) b!2210045))

(assert (= b!2210046 b!2210047))

(assert (= (and b!2209955 ((_ is Leaf!12370) (left!19873 (right!20203 t!4663)))) b!2210046))

(declare-fun m!2651729 () Bool)

(assert (=> b!2210045 m!2651729))

(declare-fun m!2651731 () Bool)

(assert (=> b!2210045 m!2651731))

(declare-fun m!2651733 () Bool)

(assert (=> b!2210046 m!2651733))

(assert (=> b!2209955 m!2651609))

(declare-fun tp!686951 () Bool)

(declare-fun b!2210048 () Bool)

(declare-fun e!1411624 () Bool)

(declare-fun tp!686952 () Bool)

(assert (=> b!2210048 (= e!1411624 (and (inv!34955 (left!19873 (right!20203 (right!20203 t!4663)))) tp!686952 (inv!34955 (right!20203 (right!20203 (right!20203 t!4663)))) tp!686951))))

(declare-fun b!2210050 () Bool)

(declare-fun e!1411623 () Bool)

(declare-fun tp!686950 () Bool)

(assert (=> b!2210050 (= e!1411623 tp!686950)))

(declare-fun b!2210049 () Bool)

(assert (=> b!2210049 (= e!1411624 (and (inv!34956 (xs!11389 (right!20203 (right!20203 t!4663)))) e!1411623))))

(assert (=> b!2209955 (= tp!686939 (and (inv!34955 (right!20203 (right!20203 t!4663))) e!1411624))))

(assert (= (and b!2209955 ((_ is Node!8447) (right!20203 (right!20203 t!4663)))) b!2210048))

(assert (= b!2210049 b!2210050))

(assert (= (and b!2209955 ((_ is Leaf!12370) (right!20203 (right!20203 t!4663)))) b!2210049))

(declare-fun m!2651735 () Bool)

(assert (=> b!2210048 m!2651735))

(declare-fun m!2651737 () Bool)

(assert (=> b!2210048 m!2651737))

(declare-fun m!2651739 () Bool)

(assert (=> b!2210049 m!2651739))

(assert (=> b!2209955 m!2651611))

(declare-fun b!2210051 () Bool)

(declare-fun e!1411625 () Bool)

(declare-fun tp!686953 () Bool)

(assert (=> b!2210051 (= e!1411625 (and tp_is_empty!9759 tp!686953))))

(assert (=> b!2209954 (= tp!686935 e!1411625)))

(assert (= (and b!2209954 ((_ is Cons!25850) (innerList!8507 (xs!11389 (left!19873 t!4663))))) b!2210051))

(declare-fun b!2210052 () Bool)

(declare-fun e!1411626 () Bool)

(declare-fun tp!686954 () Bool)

(assert (=> b!2210052 (= e!1411626 (and tp_is_empty!9759 tp!686954))))

(assert (=> b!2209957 (= tp!686938 e!1411626)))

(assert (= (and b!2209957 ((_ is Cons!25850) (innerList!8507 (xs!11389 (right!20203 t!4663))))) b!2210052))

(declare-fun tp!686957 () Bool)

(declare-fun b!2210053 () Bool)

(declare-fun tp!686956 () Bool)

(declare-fun e!1411628 () Bool)

(assert (=> b!2210053 (= e!1411628 (and (inv!34955 (left!19873 (left!19873 (left!19873 t!4663)))) tp!686957 (inv!34955 (right!20203 (left!19873 (left!19873 t!4663)))) tp!686956))))

(declare-fun b!2210055 () Bool)

(declare-fun e!1411627 () Bool)

(declare-fun tp!686955 () Bool)

(assert (=> b!2210055 (= e!1411627 tp!686955)))

(declare-fun b!2210054 () Bool)

(assert (=> b!2210054 (= e!1411628 (and (inv!34956 (xs!11389 (left!19873 (left!19873 t!4663)))) e!1411627))))

(assert (=> b!2209952 (= tp!686937 (and (inv!34955 (left!19873 (left!19873 t!4663))) e!1411628))))

(assert (= (and b!2209952 ((_ is Node!8447) (left!19873 (left!19873 t!4663)))) b!2210053))

(assert (= b!2210054 b!2210055))

(assert (= (and b!2209952 ((_ is Leaf!12370) (left!19873 (left!19873 t!4663)))) b!2210054))

(declare-fun m!2651741 () Bool)

(assert (=> b!2210053 m!2651741))

(declare-fun m!2651743 () Bool)

(assert (=> b!2210053 m!2651743))

(declare-fun m!2651745 () Bool)

(assert (=> b!2210054 m!2651745))

(assert (=> b!2209952 m!2651603))

(declare-fun tp!686960 () Bool)

(declare-fun e!1411630 () Bool)

(declare-fun b!2210056 () Bool)

(declare-fun tp!686959 () Bool)

(assert (=> b!2210056 (= e!1411630 (and (inv!34955 (left!19873 (right!20203 (left!19873 t!4663)))) tp!686960 (inv!34955 (right!20203 (right!20203 (left!19873 t!4663)))) tp!686959))))

(declare-fun b!2210058 () Bool)

(declare-fun e!1411629 () Bool)

(declare-fun tp!686958 () Bool)

(assert (=> b!2210058 (= e!1411629 tp!686958)))

(declare-fun b!2210057 () Bool)

(assert (=> b!2210057 (= e!1411630 (and (inv!34956 (xs!11389 (right!20203 (left!19873 t!4663)))) e!1411629))))

(assert (=> b!2209952 (= tp!686936 (and (inv!34955 (right!20203 (left!19873 t!4663))) e!1411630))))

(assert (= (and b!2209952 ((_ is Node!8447) (right!20203 (left!19873 t!4663)))) b!2210056))

(assert (= b!2210057 b!2210058))

(assert (= (and b!2209952 ((_ is Leaf!12370) (right!20203 (left!19873 t!4663)))) b!2210057))

(declare-fun m!2651747 () Bool)

(assert (=> b!2210056 m!2651747))

(declare-fun m!2651749 () Bool)

(assert (=> b!2210056 m!2651749))

(declare-fun m!2651751 () Bool)

(assert (=> b!2210057 m!2651751))

(assert (=> b!2209952 m!2651605))

(declare-fun b!2210059 () Bool)

(declare-fun e!1411631 () Bool)

(declare-fun tp!686961 () Bool)

(assert (=> b!2210059 (= e!1411631 (and tp_is_empty!9759 tp!686961))))

(assert (=> b!2209930 (= tp!686919 e!1411631)))

(assert (= (and b!2209930 ((_ is Cons!25850) (t!198608 (innerList!8507 (xs!11389 t!4663))))) b!2210059))

(check-sat (not b!2210041) (not b!2210012) (not d!660513) (not b!2210049) (not b!2209970) (not b!2210009) (not b!2210010) (not b!2209975) (not d!660541) (not d!660521) (not d!660533) (not b!2210050) (not b!2210045) (not b!2209988) (not b!2210006) (not b!2209973) (not b!2210057) (not d!660489) (not b!2210053) (not d!660519) (not d!660497) (not b!2209996) (not b!2209983) (not b!2209971) (not b!2210039) (not b!2210004) (not b!2210011) (not d!660511) (not d!660509) (not b!2209952) (not b!2209968) (not b!2210058) (not b!2209972) (not b!2210044) (not b!2210051) (not d!660499) tp_is_empty!9759 (not b!2209974) (not b!2210052) (not b!2209985) (not b!2210048) (not b!2210024) (not d!660545) (not b!2210025) (not b!2210002) (not b!2210056) (not b!2210059) (not b!2209990) (not b!2209999) (not b!2210008) (not b!2210046) (not b!2210054) (not b!2210047) (not b!2210055) (not d!660525) (not b!2209997) (not b!2210013) (not b!2209955) (not b!2210000) (not b!2209987))
(check-sat)
