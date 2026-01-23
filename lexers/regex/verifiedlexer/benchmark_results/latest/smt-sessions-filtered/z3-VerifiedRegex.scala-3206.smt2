; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!186804 () Bool)

(assert start!186804)

(declare-fun b!1867209 () Bool)

(declare-fun res!836072 () Bool)

(declare-fun e!1191686 () Bool)

(assert (=> b!1867209 (=> (not res!836072) (not e!1191686))))

(declare-datatypes ((T!33158 0))(
  ( (T!33159 (val!5948 Int)) )
))
(declare-datatypes ((List!20765 0))(
  ( (Nil!20683) (Cons!20683 (h!26084 T!33158) (t!172906 List!20765)) )
))
(declare-datatypes ((IArray!13761 0))(
  ( (IArray!13762 (innerList!6938 List!20765)) )
))
(declare-datatypes ((Conc!6878 0))(
  ( (Node!6878 (left!16670 Conc!6878) (right!17000 Conc!6878) (csize!13986 Int) (cheight!7089 Int)) (Leaf!10085 (xs!9760 IArray!13761) (csize!13987 Int)) (Empty!6878) )
))
(declare-fun t!4595 () Conc!6878)

(declare-fun isEmpty!12907 (Conc!6878) Bool)

(assert (=> b!1867209 (= res!836072 (not (isEmpty!12907 t!4595)))))

(declare-fun b!1867211 () Bool)

(declare-fun res!836073 () Bool)

(assert (=> b!1867211 (=> (not res!836073) (not e!1191686))))

(get-info :version)

(assert (=> b!1867211 (= res!836073 (and ((_ is Leaf!10085) t!4595) (not (= (csize!13987 t!4595) 1))))))

(declare-fun b!1867212 () Bool)

(declare-fun e!1191687 () Bool)

(declare-fun e!1191685 () Bool)

(declare-fun inv!27385 (IArray!13761) Bool)

(assert (=> b!1867212 (= e!1191687 (and (inv!27385 (xs!9760 t!4595)) e!1191685))))

(declare-fun b!1867210 () Bool)

(declare-fun inv!27386 (Conc!6878) Bool)

(declare-fun slice!576 (IArray!13761 Int Int) IArray!13761)

(assert (=> b!1867210 (= e!1191686 (not (inv!27386 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))))))

(declare-fun lt!718696 () List!20765)

(declare-fun tail!2831 (List!20765) List!20765)

(declare-fun slice!577 (List!20765 Int Int) List!20765)

(declare-fun size!16395 (List!20765) Int)

(assert (=> b!1867210 (= (tail!2831 lt!718696) (slice!577 lt!718696 1 (size!16395 lt!718696)))))

(declare-datatypes ((Unit!35299 0))(
  ( (Unit!35300) )
))
(declare-fun lt!718697 () Unit!35299)

(declare-fun sliceTailLemma!34 (List!20765) Unit!35299)

(assert (=> b!1867210 (= lt!718697 (sliceTailLemma!34 lt!718696))))

(declare-fun list!8464 (IArray!13761) List!20765)

(assert (=> b!1867210 (= lt!718696 (list!8464 (xs!9760 t!4595)))))

(declare-fun res!836071 () Bool)

(assert (=> start!186804 (=> (not res!836071) (not e!1191686))))

(declare-fun isBalanced!2179 (Conc!6878) Bool)

(assert (=> start!186804 (= res!836071 (isBalanced!2179 t!4595))))

(assert (=> start!186804 e!1191686))

(assert (=> start!186804 (and (inv!27386 t!4595) e!1191687)))

(declare-fun b!1867213 () Bool)

(declare-fun tp!531555 () Bool)

(assert (=> b!1867213 (= e!1191685 tp!531555)))

(declare-fun tp!531557 () Bool)

(declare-fun tp!531556 () Bool)

(declare-fun b!1867214 () Bool)

(assert (=> b!1867214 (= e!1191687 (and (inv!27386 (left!16670 t!4595)) tp!531556 (inv!27386 (right!17000 t!4595)) tp!531557))))

(assert (= (and start!186804 res!836071) b!1867209))

(assert (= (and b!1867209 res!836072) b!1867211))

(assert (= (and b!1867211 res!836073) b!1867210))

(assert (= (and start!186804 ((_ is Node!6878) t!4595)) b!1867214))

(assert (= b!1867212 b!1867213))

(assert (= (and start!186804 ((_ is Leaf!10085) t!4595)) b!1867212))

(declare-fun m!2292489 () Bool)

(assert (=> b!1867214 m!2292489))

(declare-fun m!2292491 () Bool)

(assert (=> b!1867214 m!2292491))

(declare-fun m!2292493 () Bool)

(assert (=> b!1867209 m!2292493))

(declare-fun m!2292495 () Bool)

(assert (=> start!186804 m!2292495))

(declare-fun m!2292497 () Bool)

(assert (=> start!186804 m!2292497))

(declare-fun m!2292499 () Bool)

(assert (=> b!1867210 m!2292499))

(declare-fun m!2292501 () Bool)

(assert (=> b!1867210 m!2292501))

(declare-fun m!2292503 () Bool)

(assert (=> b!1867210 m!2292503))

(declare-fun m!2292505 () Bool)

(assert (=> b!1867210 m!2292505))

(declare-fun m!2292507 () Bool)

(assert (=> b!1867210 m!2292507))

(declare-fun m!2292509 () Bool)

(assert (=> b!1867210 m!2292509))

(declare-fun m!2292511 () Bool)

(assert (=> b!1867210 m!2292511))

(assert (=> b!1867210 m!2292507))

(declare-fun m!2292513 () Bool)

(assert (=> b!1867212 m!2292513))

(check-sat (not b!1867210) (not b!1867213) (not b!1867212) (not b!1867214) (not start!186804) (not b!1867209))
(check-sat)
(get-model)

(declare-fun d!570463 () Bool)

(declare-fun take!163 (List!20765 Int) List!20765)

(declare-fun drop!990 (List!20765 Int) List!20765)

(assert (=> d!570463 (= (slice!577 lt!718696 1 (size!16395 lt!718696)) (take!163 (drop!990 lt!718696 1) (- (size!16395 lt!718696) 1)))))

(declare-fun bs!411784 () Bool)

(assert (= bs!411784 d!570463))

(declare-fun m!2292523 () Bool)

(assert (=> bs!411784 m!2292523))

(assert (=> bs!411784 m!2292523))

(declare-fun m!2292525 () Bool)

(assert (=> bs!411784 m!2292525))

(assert (=> b!1867210 d!570463))

(declare-fun d!570467 () Bool)

(declare-fun lt!718709 () IArray!13761)

(assert (=> d!570467 (= lt!718709 (IArray!13762 (slice!577 (list!8464 (xs!9760 t!4595)) 1 (csize!13987 t!4595))))))

(declare-fun choose!11738 (IArray!13761 Int Int) IArray!13761)

(assert (=> d!570467 (= lt!718709 (choose!11738 (xs!9760 t!4595) 1 (csize!13987 t!4595)))))

(declare-fun e!1191702 () Bool)

(assert (=> d!570467 e!1191702))

(declare-fun res!836082 () Bool)

(assert (=> d!570467 (=> (not res!836082) (not e!1191702))))

(assert (=> d!570467 (= res!836082 (and (<= 0 1) (<= 1 (csize!13987 t!4595))))))

(assert (=> d!570467 (= (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) lt!718709)))

(declare-fun b!1867235 () Bool)

(declare-fun size!16398 (IArray!13761) Int)

(assert (=> b!1867235 (= e!1191702 (<= (csize!13987 t!4595) (size!16398 (xs!9760 t!4595))))))

(assert (= (and d!570467 res!836082) b!1867235))

(assert (=> d!570467 m!2292511))

(assert (=> d!570467 m!2292511))

(declare-fun m!2292537 () Bool)

(assert (=> d!570467 m!2292537))

(declare-fun m!2292539 () Bool)

(assert (=> d!570467 m!2292539))

(declare-fun m!2292541 () Bool)

(assert (=> b!1867235 m!2292541))

(assert (=> b!1867210 d!570467))

(declare-fun d!570479 () Bool)

(assert (=> d!570479 (= (tail!2831 lt!718696) (slice!577 lt!718696 1 (size!16395 lt!718696)))))

(declare-fun lt!718712 () Unit!35299)

(declare-fun choose!11739 (List!20765) Unit!35299)

(assert (=> d!570479 (= lt!718712 (choose!11739 lt!718696))))

(assert (=> d!570479 (> (size!16395 lt!718696) 0)))

(assert (=> d!570479 (= (sliceTailLemma!34 lt!718696) lt!718712)))

(declare-fun bs!411788 () Bool)

(assert (= bs!411788 d!570479))

(assert (=> bs!411788 m!2292501))

(assert (=> bs!411788 m!2292507))

(assert (=> bs!411788 m!2292507))

(assert (=> bs!411788 m!2292509))

(declare-fun m!2292569 () Bool)

(assert (=> bs!411788 m!2292569))

(assert (=> b!1867210 d!570479))

(declare-fun d!570491 () Bool)

(assert (=> d!570491 (= (list!8464 (xs!9760 t!4595)) (innerList!6938 (xs!9760 t!4595)))))

(assert (=> b!1867210 d!570491))

(declare-fun d!570493 () Bool)

(declare-fun lt!718718 () Int)

(assert (=> d!570493 (>= lt!718718 0)))

(declare-fun e!1191728 () Int)

(assert (=> d!570493 (= lt!718718 e!1191728)))

(declare-fun c!304155 () Bool)

(assert (=> d!570493 (= c!304155 ((_ is Nil!20683) lt!718696))))

(assert (=> d!570493 (= (size!16395 lt!718696) lt!718718)))

(declare-fun b!1867286 () Bool)

(assert (=> b!1867286 (= e!1191728 0)))

(declare-fun b!1867287 () Bool)

(assert (=> b!1867287 (= e!1191728 (+ 1 (size!16395 (t!172906 lt!718696))))))

(assert (= (and d!570493 c!304155) b!1867286))

(assert (= (and d!570493 (not c!304155)) b!1867287))

(declare-fun m!2292589 () Bool)

(assert (=> b!1867287 m!2292589))

(assert (=> b!1867210 d!570493))

(declare-fun d!570495 () Bool)

(declare-fun c!304158 () Bool)

(assert (=> d!570495 (= c!304158 ((_ is Node!6878) (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))))))

(declare-fun e!1191733 () Bool)

(assert (=> d!570495 (= (inv!27386 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))) e!1191733)))

(declare-fun b!1867294 () Bool)

(declare-fun inv!27389 (Conc!6878) Bool)

(assert (=> b!1867294 (= e!1191733 (inv!27389 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))))))

(declare-fun b!1867295 () Bool)

(declare-fun e!1191734 () Bool)

(assert (=> b!1867295 (= e!1191733 e!1191734)))

(declare-fun res!836106 () Bool)

(assert (=> b!1867295 (= res!836106 (not ((_ is Leaf!10085) (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))))))

(assert (=> b!1867295 (=> res!836106 e!1191734)))

(declare-fun b!1867296 () Bool)

(declare-fun inv!27390 (Conc!6878) Bool)

(assert (=> b!1867296 (= e!1191734 (inv!27390 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))))))

(assert (= (and d!570495 c!304158) b!1867294))

(assert (= (and d!570495 (not c!304158)) b!1867295))

(assert (= (and b!1867295 (not res!836106)) b!1867296))

(declare-fun m!2292591 () Bool)

(assert (=> b!1867294 m!2292591))

(declare-fun m!2292593 () Bool)

(assert (=> b!1867296 m!2292593))

(assert (=> b!1867210 d!570495))

(declare-fun d!570497 () Bool)

(assert (=> d!570497 (= (tail!2831 lt!718696) (t!172906 lt!718696))))

(assert (=> b!1867210 d!570497))

(declare-fun b!1867309 () Bool)

(declare-fun res!836121 () Bool)

(declare-fun e!1191739 () Bool)

(assert (=> b!1867309 (=> (not res!836121) (not e!1191739))))

(assert (=> b!1867309 (= res!836121 (not (isEmpty!12907 (left!16670 t!4595))))))

(declare-fun b!1867310 () Bool)

(assert (=> b!1867310 (= e!1191739 (not (isEmpty!12907 (right!17000 t!4595))))))

(declare-fun b!1867311 () Bool)

(declare-fun res!836124 () Bool)

(assert (=> b!1867311 (=> (not res!836124) (not e!1191739))))

(assert (=> b!1867311 (= res!836124 (isBalanced!2179 (left!16670 t!4595)))))

(declare-fun d!570499 () Bool)

(declare-fun res!836120 () Bool)

(declare-fun e!1191740 () Bool)

(assert (=> d!570499 (=> res!836120 e!1191740)))

(assert (=> d!570499 (= res!836120 (not ((_ is Node!6878) t!4595)))))

(assert (=> d!570499 (= (isBalanced!2179 t!4595) e!1191740)))

(declare-fun b!1867312 () Bool)

(declare-fun res!836123 () Bool)

(assert (=> b!1867312 (=> (not res!836123) (not e!1191739))))

(assert (=> b!1867312 (= res!836123 (isBalanced!2179 (right!17000 t!4595)))))

(declare-fun b!1867313 () Bool)

(declare-fun res!836122 () Bool)

(assert (=> b!1867313 (=> (not res!836122) (not e!1191739))))

(declare-fun height!1065 (Conc!6878) Int)

(assert (=> b!1867313 (= res!836122 (<= (- (height!1065 (left!16670 t!4595)) (height!1065 (right!17000 t!4595))) 1))))

(declare-fun b!1867314 () Bool)

(assert (=> b!1867314 (= e!1191740 e!1191739)))

(declare-fun res!836119 () Bool)

(assert (=> b!1867314 (=> (not res!836119) (not e!1191739))))

(assert (=> b!1867314 (= res!836119 (<= (- 1) (- (height!1065 (left!16670 t!4595)) (height!1065 (right!17000 t!4595)))))))

(assert (= (and d!570499 (not res!836120)) b!1867314))

(assert (= (and b!1867314 res!836119) b!1867313))

(assert (= (and b!1867313 res!836122) b!1867311))

(assert (= (and b!1867311 res!836124) b!1867312))

(assert (= (and b!1867312 res!836123) b!1867309))

(assert (= (and b!1867309 res!836121) b!1867310))

(declare-fun m!2292595 () Bool)

(assert (=> b!1867310 m!2292595))

(declare-fun m!2292597 () Bool)

(assert (=> b!1867312 m!2292597))

(declare-fun m!2292599 () Bool)

(assert (=> b!1867313 m!2292599))

(declare-fun m!2292601 () Bool)

(assert (=> b!1867313 m!2292601))

(declare-fun m!2292603 () Bool)

(assert (=> b!1867309 m!2292603))

(assert (=> b!1867314 m!2292599))

(assert (=> b!1867314 m!2292601))

(declare-fun m!2292605 () Bool)

(assert (=> b!1867311 m!2292605))

(assert (=> start!186804 d!570499))

(declare-fun d!570501 () Bool)

(declare-fun c!304159 () Bool)

(assert (=> d!570501 (= c!304159 ((_ is Node!6878) t!4595))))

(declare-fun e!1191741 () Bool)

(assert (=> d!570501 (= (inv!27386 t!4595) e!1191741)))

(declare-fun b!1867315 () Bool)

(assert (=> b!1867315 (= e!1191741 (inv!27389 t!4595))))

(declare-fun b!1867316 () Bool)

(declare-fun e!1191742 () Bool)

(assert (=> b!1867316 (= e!1191741 e!1191742)))

(declare-fun res!836125 () Bool)

(assert (=> b!1867316 (= res!836125 (not ((_ is Leaf!10085) t!4595)))))

(assert (=> b!1867316 (=> res!836125 e!1191742)))

(declare-fun b!1867317 () Bool)

(assert (=> b!1867317 (= e!1191742 (inv!27390 t!4595))))

(assert (= (and d!570501 c!304159) b!1867315))

(assert (= (and d!570501 (not c!304159)) b!1867316))

(assert (= (and b!1867316 (not res!836125)) b!1867317))

(declare-fun m!2292607 () Bool)

(assert (=> b!1867315 m!2292607))

(declare-fun m!2292609 () Bool)

(assert (=> b!1867317 m!2292609))

(assert (=> start!186804 d!570501))

(declare-fun d!570503 () Bool)

(assert (=> d!570503 (= (inv!27385 (xs!9760 t!4595)) (<= (size!16395 (innerList!6938 (xs!9760 t!4595))) 2147483647))))

(declare-fun bs!411790 () Bool)

(assert (= bs!411790 d!570503))

(declare-fun m!2292611 () Bool)

(assert (=> bs!411790 m!2292611))

(assert (=> b!1867212 d!570503))

(declare-fun d!570505 () Bool)

(declare-fun c!304160 () Bool)

(assert (=> d!570505 (= c!304160 ((_ is Node!6878) (left!16670 t!4595)))))

(declare-fun e!1191743 () Bool)

(assert (=> d!570505 (= (inv!27386 (left!16670 t!4595)) e!1191743)))

(declare-fun b!1867318 () Bool)

(assert (=> b!1867318 (= e!1191743 (inv!27389 (left!16670 t!4595)))))

(declare-fun b!1867319 () Bool)

(declare-fun e!1191744 () Bool)

(assert (=> b!1867319 (= e!1191743 e!1191744)))

(declare-fun res!836126 () Bool)

(assert (=> b!1867319 (= res!836126 (not ((_ is Leaf!10085) (left!16670 t!4595))))))

(assert (=> b!1867319 (=> res!836126 e!1191744)))

(declare-fun b!1867320 () Bool)

(assert (=> b!1867320 (= e!1191744 (inv!27390 (left!16670 t!4595)))))

(assert (= (and d!570505 c!304160) b!1867318))

(assert (= (and d!570505 (not c!304160)) b!1867319))

(assert (= (and b!1867319 (not res!836126)) b!1867320))

(declare-fun m!2292613 () Bool)

(assert (=> b!1867318 m!2292613))

(declare-fun m!2292615 () Bool)

(assert (=> b!1867320 m!2292615))

(assert (=> b!1867214 d!570505))

(declare-fun d!570507 () Bool)

(declare-fun c!304161 () Bool)

(assert (=> d!570507 (= c!304161 ((_ is Node!6878) (right!17000 t!4595)))))

(declare-fun e!1191745 () Bool)

(assert (=> d!570507 (= (inv!27386 (right!17000 t!4595)) e!1191745)))

(declare-fun b!1867321 () Bool)

(assert (=> b!1867321 (= e!1191745 (inv!27389 (right!17000 t!4595)))))

(declare-fun b!1867322 () Bool)

(declare-fun e!1191746 () Bool)

(assert (=> b!1867322 (= e!1191745 e!1191746)))

(declare-fun res!836127 () Bool)

(assert (=> b!1867322 (= res!836127 (not ((_ is Leaf!10085) (right!17000 t!4595))))))

(assert (=> b!1867322 (=> res!836127 e!1191746)))

(declare-fun b!1867323 () Bool)

(assert (=> b!1867323 (= e!1191746 (inv!27390 (right!17000 t!4595)))))

(assert (= (and d!570507 c!304161) b!1867321))

(assert (= (and d!570507 (not c!304161)) b!1867322))

(assert (= (and b!1867322 (not res!836127)) b!1867323))

(declare-fun m!2292617 () Bool)

(assert (=> b!1867321 m!2292617))

(declare-fun m!2292619 () Bool)

(assert (=> b!1867323 m!2292619))

(assert (=> b!1867214 d!570507))

(declare-fun d!570509 () Bool)

(declare-fun lt!718721 () Bool)

(declare-fun isEmpty!12909 (List!20765) Bool)

(declare-fun list!8466 (Conc!6878) List!20765)

(assert (=> d!570509 (= lt!718721 (isEmpty!12909 (list!8466 t!4595)))))

(declare-fun size!16399 (Conc!6878) Int)

(assert (=> d!570509 (= lt!718721 (= (size!16399 t!4595) 0))))

(assert (=> d!570509 (= (isEmpty!12907 t!4595) lt!718721)))

(declare-fun bs!411791 () Bool)

(assert (= bs!411791 d!570509))

(declare-fun m!2292621 () Bool)

(assert (=> bs!411791 m!2292621))

(assert (=> bs!411791 m!2292621))

(declare-fun m!2292623 () Bool)

(assert (=> bs!411791 m!2292623))

(declare-fun m!2292625 () Bool)

(assert (=> bs!411791 m!2292625))

(assert (=> b!1867209 d!570509))

(declare-fun b!1867328 () Bool)

(declare-fun e!1191749 () Bool)

(declare-fun tp_is_empty!8675 () Bool)

(declare-fun tp!531575 () Bool)

(assert (=> b!1867328 (= e!1191749 (and tp_is_empty!8675 tp!531575))))

(assert (=> b!1867213 (= tp!531555 e!1191749)))

(assert (= (and b!1867213 ((_ is Cons!20683) (innerList!6938 (xs!9760 t!4595)))) b!1867328))

(declare-fun e!1191755 () Bool)

(declare-fun tp!531582 () Bool)

(declare-fun b!1867337 () Bool)

(declare-fun tp!531584 () Bool)

(assert (=> b!1867337 (= e!1191755 (and (inv!27386 (left!16670 (left!16670 t!4595))) tp!531582 (inv!27386 (right!17000 (left!16670 t!4595))) tp!531584))))

(declare-fun b!1867339 () Bool)

(declare-fun e!1191754 () Bool)

(declare-fun tp!531583 () Bool)

(assert (=> b!1867339 (= e!1191754 tp!531583)))

(declare-fun b!1867338 () Bool)

(assert (=> b!1867338 (= e!1191755 (and (inv!27385 (xs!9760 (left!16670 t!4595))) e!1191754))))

(assert (=> b!1867214 (= tp!531556 (and (inv!27386 (left!16670 t!4595)) e!1191755))))

(assert (= (and b!1867214 ((_ is Node!6878) (left!16670 t!4595))) b!1867337))

(assert (= b!1867338 b!1867339))

(assert (= (and b!1867214 ((_ is Leaf!10085) (left!16670 t!4595))) b!1867338))

(declare-fun m!2292627 () Bool)

(assert (=> b!1867337 m!2292627))

(declare-fun m!2292629 () Bool)

(assert (=> b!1867337 m!2292629))

(declare-fun m!2292631 () Bool)

(assert (=> b!1867338 m!2292631))

(assert (=> b!1867214 m!2292489))

(declare-fun tp!531585 () Bool)

(declare-fun tp!531587 () Bool)

(declare-fun e!1191757 () Bool)

(declare-fun b!1867340 () Bool)

(assert (=> b!1867340 (= e!1191757 (and (inv!27386 (left!16670 (right!17000 t!4595))) tp!531585 (inv!27386 (right!17000 (right!17000 t!4595))) tp!531587))))

(declare-fun b!1867342 () Bool)

(declare-fun e!1191756 () Bool)

(declare-fun tp!531586 () Bool)

(assert (=> b!1867342 (= e!1191756 tp!531586)))

(declare-fun b!1867341 () Bool)

(assert (=> b!1867341 (= e!1191757 (and (inv!27385 (xs!9760 (right!17000 t!4595))) e!1191756))))

(assert (=> b!1867214 (= tp!531557 (and (inv!27386 (right!17000 t!4595)) e!1191757))))

(assert (= (and b!1867214 ((_ is Node!6878) (right!17000 t!4595))) b!1867340))

(assert (= b!1867341 b!1867342))

(assert (= (and b!1867214 ((_ is Leaf!10085) (right!17000 t!4595))) b!1867341))

(declare-fun m!2292633 () Bool)

(assert (=> b!1867340 m!2292633))

(declare-fun m!2292635 () Bool)

(assert (=> b!1867340 m!2292635))

(declare-fun m!2292637 () Bool)

(assert (=> b!1867341 m!2292637))

(assert (=> b!1867214 m!2292491))

(check-sat (not b!1867294) (not b!1867323) (not b!1867311) (not b!1867315) (not d!570503) (not b!1867310) (not b!1867318) (not b!1867321) (not b!1867341) (not b!1867314) (not b!1867214) (not b!1867313) (not b!1867337) (not b!1867340) (not b!1867287) tp_is_empty!8675 (not d!570467) (not d!570479) (not d!570463) (not d!570509) (not b!1867309) (not b!1867339) (not b!1867296) (not b!1867312) (not b!1867320) (not b!1867328) (not b!1867338) (not b!1867235) (not b!1867317) (not b!1867342))
(check-sat)
(get-model)

(declare-fun d!570519 () Bool)

(declare-fun res!836168 () Bool)

(declare-fun e!1191802 () Bool)

(assert (=> d!570519 (=> (not res!836168) (not e!1191802))))

(assert (=> d!570519 (= res!836168 (= (csize!13986 (left!16670 t!4595)) (+ (size!16399 (left!16670 (left!16670 t!4595))) (size!16399 (right!17000 (left!16670 t!4595))))))))

(assert (=> d!570519 (= (inv!27389 (left!16670 t!4595)) e!1191802)))

(declare-fun b!1867431 () Bool)

(declare-fun res!836169 () Bool)

(assert (=> b!1867431 (=> (not res!836169) (not e!1191802))))

(assert (=> b!1867431 (= res!836169 (and (not (= (left!16670 (left!16670 t!4595)) Empty!6878)) (not (= (right!17000 (left!16670 t!4595)) Empty!6878))))))

(declare-fun b!1867432 () Bool)

(declare-fun res!836170 () Bool)

(assert (=> b!1867432 (=> (not res!836170) (not e!1191802))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1867432 (= res!836170 (= (cheight!7089 (left!16670 t!4595)) (+ (max!0 (height!1065 (left!16670 (left!16670 t!4595))) (height!1065 (right!17000 (left!16670 t!4595)))) 1)))))

(declare-fun b!1867433 () Bool)

(assert (=> b!1867433 (= e!1191802 (<= 0 (cheight!7089 (left!16670 t!4595))))))

(assert (= (and d!570519 res!836168) b!1867431))

(assert (= (and b!1867431 res!836169) b!1867432))

(assert (= (and b!1867432 res!836170) b!1867433))

(declare-fun m!2292715 () Bool)

(assert (=> d!570519 m!2292715))

(declare-fun m!2292717 () Bool)

(assert (=> d!570519 m!2292717))

(declare-fun m!2292719 () Bool)

(assert (=> b!1867432 m!2292719))

(declare-fun m!2292721 () Bool)

(assert (=> b!1867432 m!2292721))

(assert (=> b!1867432 m!2292719))

(assert (=> b!1867432 m!2292721))

(declare-fun m!2292723 () Bool)

(assert (=> b!1867432 m!2292723))

(assert (=> b!1867318 d!570519))

(declare-fun b!1867437 () Bool)

(declare-fun res!836173 () Bool)

(declare-fun e!1191806 () Bool)

(assert (=> b!1867437 (=> (not res!836173) (not e!1191806))))

(assert (=> b!1867437 (= res!836173 (not (isEmpty!12907 (left!16670 (left!16670 t!4595)))))))

(declare-fun b!1867438 () Bool)

(assert (=> b!1867438 (= e!1191806 (not (isEmpty!12907 (right!17000 (left!16670 t!4595)))))))

(declare-fun b!1867439 () Bool)

(declare-fun res!836176 () Bool)

(assert (=> b!1867439 (=> (not res!836176) (not e!1191806))))

(assert (=> b!1867439 (= res!836176 (isBalanced!2179 (left!16670 (left!16670 t!4595))))))

(declare-fun d!570545 () Bool)

(declare-fun res!836172 () Bool)

(declare-fun e!1191807 () Bool)

(assert (=> d!570545 (=> res!836172 e!1191807)))

(assert (=> d!570545 (= res!836172 (not ((_ is Node!6878) (left!16670 t!4595))))))

(assert (=> d!570545 (= (isBalanced!2179 (left!16670 t!4595)) e!1191807)))

(declare-fun b!1867440 () Bool)

(declare-fun res!836175 () Bool)

(assert (=> b!1867440 (=> (not res!836175) (not e!1191806))))

(assert (=> b!1867440 (= res!836175 (isBalanced!2179 (right!17000 (left!16670 t!4595))))))

(declare-fun b!1867441 () Bool)

(declare-fun res!836174 () Bool)

(assert (=> b!1867441 (=> (not res!836174) (not e!1191806))))

(assert (=> b!1867441 (= res!836174 (<= (- (height!1065 (left!16670 (left!16670 t!4595))) (height!1065 (right!17000 (left!16670 t!4595)))) 1))))

(declare-fun b!1867442 () Bool)

(assert (=> b!1867442 (= e!1191807 e!1191806)))

(declare-fun res!836171 () Bool)

(assert (=> b!1867442 (=> (not res!836171) (not e!1191806))))

(assert (=> b!1867442 (= res!836171 (<= (- 1) (- (height!1065 (left!16670 (left!16670 t!4595))) (height!1065 (right!17000 (left!16670 t!4595))))))))

(assert (= (and d!570545 (not res!836172)) b!1867442))

(assert (= (and b!1867442 res!836171) b!1867441))

(assert (= (and b!1867441 res!836174) b!1867439))

(assert (= (and b!1867439 res!836176) b!1867440))

(assert (= (and b!1867440 res!836175) b!1867437))

(assert (= (and b!1867437 res!836173) b!1867438))

(declare-fun m!2292727 () Bool)

(assert (=> b!1867438 m!2292727))

(declare-fun m!2292729 () Bool)

(assert (=> b!1867440 m!2292729))

(assert (=> b!1867441 m!2292719))

(assert (=> b!1867441 m!2292721))

(declare-fun m!2292733 () Bool)

(assert (=> b!1867437 m!2292733))

(assert (=> b!1867442 m!2292719))

(assert (=> b!1867442 m!2292721))

(declare-fun m!2292735 () Bool)

(assert (=> b!1867439 m!2292735))

(assert (=> b!1867311 d!570545))

(declare-fun d!570555 () Bool)

(assert (=> d!570555 (= (isEmpty!12909 (list!8466 t!4595)) ((_ is Nil!20683) (list!8466 t!4595)))))

(assert (=> d!570509 d!570555))

(declare-fun b!1867477 () Bool)

(declare-fun e!1191823 () List!20765)

(assert (=> b!1867477 (= e!1191823 Nil!20683)))

(declare-fun b!1867479 () Bool)

(declare-fun e!1191824 () List!20765)

(assert (=> b!1867479 (= e!1191824 (list!8464 (xs!9760 t!4595)))))

(declare-fun d!570561 () Bool)

(declare-fun c!304197 () Bool)

(assert (=> d!570561 (= c!304197 ((_ is Empty!6878) t!4595))))

(assert (=> d!570561 (= (list!8466 t!4595) e!1191823)))

(declare-fun b!1867478 () Bool)

(assert (=> b!1867478 (= e!1191823 e!1191824)))

(declare-fun c!304198 () Bool)

(assert (=> b!1867478 (= c!304198 ((_ is Leaf!10085) t!4595))))

(declare-fun b!1867481 () Bool)

(declare-fun ++!5605 (List!20765 List!20765) List!20765)

(assert (=> b!1867481 (= e!1191824 (++!5605 (list!8466 (left!16670 t!4595)) (list!8466 (right!17000 t!4595))))))

(assert (= (and d!570561 c!304197) b!1867477))

(assert (= (and d!570561 (not c!304197)) b!1867478))

(assert (= (and b!1867478 c!304198) b!1867479))

(assert (= (and b!1867478 (not c!304198)) b!1867481))

(assert (=> b!1867479 m!2292511))

(declare-fun m!2292777 () Bool)

(assert (=> b!1867481 m!2292777))

(declare-fun m!2292779 () Bool)

(assert (=> b!1867481 m!2292779))

(assert (=> b!1867481 m!2292777))

(assert (=> b!1867481 m!2292779))

(declare-fun m!2292785 () Bool)

(assert (=> b!1867481 m!2292785))

(assert (=> d!570509 d!570561))

(declare-fun d!570579 () Bool)

(declare-fun lt!718740 () Int)

(assert (=> d!570579 (= lt!718740 (size!16395 (list!8466 t!4595)))))

(assert (=> d!570579 (= lt!718740 (ite ((_ is Empty!6878) t!4595) 0 (ite ((_ is Leaf!10085) t!4595) (csize!13987 t!4595) (csize!13986 t!4595))))))

(assert (=> d!570579 (= (size!16399 t!4595) lt!718740)))

(declare-fun bs!411800 () Bool)

(assert (= bs!411800 d!570579))

(assert (=> bs!411800 m!2292621))

(assert (=> bs!411800 m!2292621))

(declare-fun m!2292815 () Bool)

(assert (=> bs!411800 m!2292815))

(assert (=> d!570509 d!570579))

(declare-fun b!1867506 () Bool)

(declare-fun res!836197 () Bool)

(declare-fun e!1191842 () Bool)

(assert (=> b!1867506 (=> (not res!836197) (not e!1191842))))

(assert (=> b!1867506 (= res!836197 (not (isEmpty!12907 (left!16670 (right!17000 t!4595)))))))

(declare-fun b!1867507 () Bool)

(assert (=> b!1867507 (= e!1191842 (not (isEmpty!12907 (right!17000 (right!17000 t!4595)))))))

(declare-fun b!1867508 () Bool)

(declare-fun res!836200 () Bool)

(assert (=> b!1867508 (=> (not res!836200) (not e!1191842))))

(assert (=> b!1867508 (= res!836200 (isBalanced!2179 (left!16670 (right!17000 t!4595))))))

(declare-fun d!570583 () Bool)

(declare-fun res!836196 () Bool)

(declare-fun e!1191843 () Bool)

(assert (=> d!570583 (=> res!836196 e!1191843)))

(assert (=> d!570583 (= res!836196 (not ((_ is Node!6878) (right!17000 t!4595))))))

(assert (=> d!570583 (= (isBalanced!2179 (right!17000 t!4595)) e!1191843)))

(declare-fun b!1867509 () Bool)

(declare-fun res!836199 () Bool)

(assert (=> b!1867509 (=> (not res!836199) (not e!1191842))))

(assert (=> b!1867509 (= res!836199 (isBalanced!2179 (right!17000 (right!17000 t!4595))))))

(declare-fun b!1867510 () Bool)

(declare-fun res!836198 () Bool)

(assert (=> b!1867510 (=> (not res!836198) (not e!1191842))))

(assert (=> b!1867510 (= res!836198 (<= (- (height!1065 (left!16670 (right!17000 t!4595))) (height!1065 (right!17000 (right!17000 t!4595)))) 1))))

(declare-fun b!1867511 () Bool)

(assert (=> b!1867511 (= e!1191843 e!1191842)))

(declare-fun res!836195 () Bool)

(assert (=> b!1867511 (=> (not res!836195) (not e!1191842))))

(assert (=> b!1867511 (= res!836195 (<= (- 1) (- (height!1065 (left!16670 (right!17000 t!4595))) (height!1065 (right!17000 (right!17000 t!4595))))))))

(assert (= (and d!570583 (not res!836196)) b!1867511))

(assert (= (and b!1867511 res!836195) b!1867510))

(assert (= (and b!1867510 res!836198) b!1867508))

(assert (= (and b!1867508 res!836200) b!1867509))

(assert (= (and b!1867509 res!836199) b!1867506))

(assert (= (and b!1867506 res!836197) b!1867507))

(declare-fun m!2292817 () Bool)

(assert (=> b!1867507 m!2292817))

(declare-fun m!2292819 () Bool)

(assert (=> b!1867509 m!2292819))

(declare-fun m!2292821 () Bool)

(assert (=> b!1867510 m!2292821))

(declare-fun m!2292823 () Bool)

(assert (=> b!1867510 m!2292823))

(declare-fun m!2292825 () Bool)

(assert (=> b!1867506 m!2292825))

(assert (=> b!1867511 m!2292821))

(assert (=> b!1867511 m!2292823))

(declare-fun m!2292827 () Bool)

(assert (=> b!1867508 m!2292827))

(assert (=> b!1867312 d!570583))

(declare-fun d!570585 () Bool)

(declare-fun res!836201 () Bool)

(declare-fun e!1191844 () Bool)

(assert (=> d!570585 (=> (not res!836201) (not e!1191844))))

(assert (=> d!570585 (= res!836201 (= (csize!13986 t!4595) (+ (size!16399 (left!16670 t!4595)) (size!16399 (right!17000 t!4595)))))))

(assert (=> d!570585 (= (inv!27389 t!4595) e!1191844)))

(declare-fun b!1867512 () Bool)

(declare-fun res!836202 () Bool)

(assert (=> b!1867512 (=> (not res!836202) (not e!1191844))))

(assert (=> b!1867512 (= res!836202 (and (not (= (left!16670 t!4595) Empty!6878)) (not (= (right!17000 t!4595) Empty!6878))))))

(declare-fun b!1867513 () Bool)

(declare-fun res!836203 () Bool)

(assert (=> b!1867513 (=> (not res!836203) (not e!1191844))))

(assert (=> b!1867513 (= res!836203 (= (cheight!7089 t!4595) (+ (max!0 (height!1065 (left!16670 t!4595)) (height!1065 (right!17000 t!4595))) 1)))))

(declare-fun b!1867514 () Bool)

(assert (=> b!1867514 (= e!1191844 (<= 0 (cheight!7089 t!4595)))))

(assert (= (and d!570585 res!836201) b!1867512))

(assert (= (and b!1867512 res!836202) b!1867513))

(assert (= (and b!1867513 res!836203) b!1867514))

(declare-fun m!2292829 () Bool)

(assert (=> d!570585 m!2292829))

(declare-fun m!2292831 () Bool)

(assert (=> d!570585 m!2292831))

(assert (=> b!1867513 m!2292599))

(assert (=> b!1867513 m!2292601))

(assert (=> b!1867513 m!2292599))

(assert (=> b!1867513 m!2292601))

(declare-fun m!2292833 () Bool)

(assert (=> b!1867513 m!2292833))

(assert (=> b!1867315 d!570585))

(declare-fun d!570587 () Bool)

(declare-fun c!304201 () Bool)

(assert (=> d!570587 (= c!304201 ((_ is Node!6878) (left!16670 (left!16670 t!4595))))))

(declare-fun e!1191845 () Bool)

(assert (=> d!570587 (= (inv!27386 (left!16670 (left!16670 t!4595))) e!1191845)))

(declare-fun b!1867515 () Bool)

(assert (=> b!1867515 (= e!1191845 (inv!27389 (left!16670 (left!16670 t!4595))))))

(declare-fun b!1867516 () Bool)

(declare-fun e!1191846 () Bool)

(assert (=> b!1867516 (= e!1191845 e!1191846)))

(declare-fun res!836204 () Bool)

(assert (=> b!1867516 (= res!836204 (not ((_ is Leaf!10085) (left!16670 (left!16670 t!4595)))))))

(assert (=> b!1867516 (=> res!836204 e!1191846)))

(declare-fun b!1867517 () Bool)

(assert (=> b!1867517 (= e!1191846 (inv!27390 (left!16670 (left!16670 t!4595))))))

(assert (= (and d!570587 c!304201) b!1867515))

(assert (= (and d!570587 (not c!304201)) b!1867516))

(assert (= (and b!1867516 (not res!836204)) b!1867517))

(declare-fun m!2292835 () Bool)

(assert (=> b!1867515 m!2292835))

(declare-fun m!2292837 () Bool)

(assert (=> b!1867517 m!2292837))

(assert (=> b!1867337 d!570587))

(declare-fun d!570589 () Bool)

(declare-fun c!304202 () Bool)

(assert (=> d!570589 (= c!304202 ((_ is Node!6878) (right!17000 (left!16670 t!4595))))))

(declare-fun e!1191847 () Bool)

(assert (=> d!570589 (= (inv!27386 (right!17000 (left!16670 t!4595))) e!1191847)))

(declare-fun b!1867518 () Bool)

(assert (=> b!1867518 (= e!1191847 (inv!27389 (right!17000 (left!16670 t!4595))))))

(declare-fun b!1867519 () Bool)

(declare-fun e!1191848 () Bool)

(assert (=> b!1867519 (= e!1191847 e!1191848)))

(declare-fun res!836205 () Bool)

(assert (=> b!1867519 (= res!836205 (not ((_ is Leaf!10085) (right!17000 (left!16670 t!4595)))))))

(assert (=> b!1867519 (=> res!836205 e!1191848)))

(declare-fun b!1867520 () Bool)

(assert (=> b!1867520 (= e!1191848 (inv!27390 (right!17000 (left!16670 t!4595))))))

(assert (= (and d!570589 c!304202) b!1867518))

(assert (= (and d!570589 (not c!304202)) b!1867519))

(assert (= (and b!1867519 (not res!836205)) b!1867520))

(declare-fun m!2292839 () Bool)

(assert (=> b!1867518 m!2292839))

(declare-fun m!2292841 () Bool)

(assert (=> b!1867520 m!2292841))

(assert (=> b!1867337 d!570589))

(declare-fun d!570591 () Bool)

(declare-fun lt!718741 () Bool)

(assert (=> d!570591 (= lt!718741 (isEmpty!12909 (list!8466 (left!16670 t!4595))))))

(assert (=> d!570591 (= lt!718741 (= (size!16399 (left!16670 t!4595)) 0))))

(assert (=> d!570591 (= (isEmpty!12907 (left!16670 t!4595)) lt!718741)))

(declare-fun bs!411801 () Bool)

(assert (= bs!411801 d!570591))

(assert (=> bs!411801 m!2292777))

(assert (=> bs!411801 m!2292777))

(declare-fun m!2292843 () Bool)

(assert (=> bs!411801 m!2292843))

(assert (=> bs!411801 m!2292829))

(assert (=> b!1867309 d!570591))

(declare-fun d!570593 () Bool)

(assert (=> d!570593 (= (inv!27385 (xs!9760 (left!16670 t!4595))) (<= (size!16395 (innerList!6938 (xs!9760 (left!16670 t!4595)))) 2147483647))))

(declare-fun bs!411802 () Bool)

(assert (= bs!411802 d!570593))

(declare-fun m!2292845 () Bool)

(assert (=> bs!411802 m!2292845))

(assert (=> b!1867338 d!570593))

(declare-fun d!570595 () Bool)

(declare-fun lt!718742 () Bool)

(assert (=> d!570595 (= lt!718742 (isEmpty!12909 (list!8466 (right!17000 t!4595))))))

(assert (=> d!570595 (= lt!718742 (= (size!16399 (right!17000 t!4595)) 0))))

(assert (=> d!570595 (= (isEmpty!12907 (right!17000 t!4595)) lt!718742)))

(declare-fun bs!411803 () Bool)

(assert (= bs!411803 d!570595))

(assert (=> bs!411803 m!2292779))

(assert (=> bs!411803 m!2292779))

(declare-fun m!2292847 () Bool)

(assert (=> bs!411803 m!2292847))

(assert (=> bs!411803 m!2292831))

(assert (=> b!1867310 d!570595))

(declare-fun d!570597 () Bool)

(declare-fun res!836206 () Bool)

(declare-fun e!1191849 () Bool)

(assert (=> d!570597 (=> (not res!836206) (not e!1191849))))

(assert (=> d!570597 (= res!836206 (= (csize!13986 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))) (+ (size!16399 (left!16670 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) (size!16399 (right!17000 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))))))))

(assert (=> d!570597 (= (inv!27389 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))) e!1191849)))

(declare-fun b!1867521 () Bool)

(declare-fun res!836207 () Bool)

(assert (=> b!1867521 (=> (not res!836207) (not e!1191849))))

(assert (=> b!1867521 (= res!836207 (and (not (= (left!16670 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))) Empty!6878)) (not (= (right!17000 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))) Empty!6878))))))

(declare-fun b!1867522 () Bool)

(declare-fun res!836208 () Bool)

(assert (=> b!1867522 (=> (not res!836208) (not e!1191849))))

(assert (=> b!1867522 (= res!836208 (= (cheight!7089 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))) (+ (max!0 (height!1065 (left!16670 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) (height!1065 (right!17000 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))))) 1)))))

(declare-fun b!1867523 () Bool)

(assert (=> b!1867523 (= e!1191849 (<= 0 (cheight!7089 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))))))

(assert (= (and d!570597 res!836206) b!1867521))

(assert (= (and b!1867521 res!836207) b!1867522))

(assert (= (and b!1867522 res!836208) b!1867523))

(declare-fun m!2292849 () Bool)

(assert (=> d!570597 m!2292849))

(declare-fun m!2292851 () Bool)

(assert (=> d!570597 m!2292851))

(declare-fun m!2292853 () Bool)

(assert (=> b!1867522 m!2292853))

(declare-fun m!2292855 () Bool)

(assert (=> b!1867522 m!2292855))

(assert (=> b!1867522 m!2292853))

(assert (=> b!1867522 m!2292855))

(declare-fun m!2292857 () Bool)

(assert (=> b!1867522 m!2292857))

(assert (=> b!1867294 d!570597))

(declare-fun d!570599 () Bool)

(declare-fun res!836213 () Bool)

(declare-fun e!1191852 () Bool)

(assert (=> d!570599 (=> (not res!836213) (not e!1191852))))

(assert (=> d!570599 (= res!836213 (<= (size!16395 (list!8464 (xs!9760 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))))) 512))))

(assert (=> d!570599 (= (inv!27390 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))) e!1191852)))

(declare-fun b!1867528 () Bool)

(declare-fun res!836214 () Bool)

(assert (=> b!1867528 (=> (not res!836214) (not e!1191852))))

(assert (=> b!1867528 (= res!836214 (= (csize!13987 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))) (size!16395 (list!8464 (xs!9760 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))))))))

(declare-fun b!1867529 () Bool)

(assert (=> b!1867529 (= e!1191852 (and (> (csize!13987 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))) 0) (<= (csize!13987 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))) 512)))))

(assert (= (and d!570599 res!836213) b!1867528))

(assert (= (and b!1867528 res!836214) b!1867529))

(declare-fun m!2292859 () Bool)

(assert (=> d!570599 m!2292859))

(assert (=> d!570599 m!2292859))

(declare-fun m!2292861 () Bool)

(assert (=> d!570599 m!2292861))

(assert (=> b!1867528 m!2292859))

(assert (=> b!1867528 m!2292859))

(assert (=> b!1867528 m!2292861))

(assert (=> b!1867296 d!570599))

(declare-fun d!570601 () Bool)

(declare-fun res!836215 () Bool)

(declare-fun e!1191853 () Bool)

(assert (=> d!570601 (=> (not res!836215) (not e!1191853))))

(assert (=> d!570601 (= res!836215 (<= (size!16395 (list!8464 (xs!9760 (left!16670 t!4595)))) 512))))

(assert (=> d!570601 (= (inv!27390 (left!16670 t!4595)) e!1191853)))

(declare-fun b!1867530 () Bool)

(declare-fun res!836216 () Bool)

(assert (=> b!1867530 (=> (not res!836216) (not e!1191853))))

(assert (=> b!1867530 (= res!836216 (= (csize!13987 (left!16670 t!4595)) (size!16395 (list!8464 (xs!9760 (left!16670 t!4595))))))))

(declare-fun b!1867531 () Bool)

(assert (=> b!1867531 (= e!1191853 (and (> (csize!13987 (left!16670 t!4595)) 0) (<= (csize!13987 (left!16670 t!4595)) 512)))))

(assert (= (and d!570601 res!836215) b!1867530))

(assert (= (and b!1867530 res!836216) b!1867531))

(declare-fun m!2292863 () Bool)

(assert (=> d!570601 m!2292863))

(assert (=> d!570601 m!2292863))

(declare-fun m!2292865 () Bool)

(assert (=> d!570601 m!2292865))

(assert (=> b!1867530 m!2292863))

(assert (=> b!1867530 m!2292863))

(assert (=> b!1867530 m!2292865))

(assert (=> b!1867320 d!570601))

(declare-fun d!570603 () Bool)

(assert (=> d!570603 (= (height!1065 (left!16670 t!4595)) (ite ((_ is Empty!6878) (left!16670 t!4595)) 0 (ite ((_ is Leaf!10085) (left!16670 t!4595)) 1 (cheight!7089 (left!16670 t!4595)))))))

(assert (=> b!1867313 d!570603))

(declare-fun d!570605 () Bool)

(assert (=> d!570605 (= (height!1065 (right!17000 t!4595)) (ite ((_ is Empty!6878) (right!17000 t!4595)) 0 (ite ((_ is Leaf!10085) (right!17000 t!4595)) 1 (cheight!7089 (right!17000 t!4595)))))))

(assert (=> b!1867313 d!570605))

(declare-fun d!570607 () Bool)

(declare-fun lt!718745 () Int)

(assert (=> d!570607 (= lt!718745 (size!16395 (list!8464 (xs!9760 t!4595))))))

(declare-fun choose!11740 (IArray!13761) Int)

(assert (=> d!570607 (= lt!718745 (choose!11740 (xs!9760 t!4595)))))

(assert (=> d!570607 (= (size!16398 (xs!9760 t!4595)) lt!718745)))

(declare-fun bs!411804 () Bool)

(assert (= bs!411804 d!570607))

(assert (=> bs!411804 m!2292511))

(assert (=> bs!411804 m!2292511))

(declare-fun m!2292867 () Bool)

(assert (=> bs!411804 m!2292867))

(declare-fun m!2292869 () Bool)

(assert (=> bs!411804 m!2292869))

(assert (=> b!1867235 d!570607))

(assert (=> b!1867314 d!570603))

(assert (=> b!1867314 d!570605))

(declare-fun d!570609 () Bool)

(declare-fun res!836217 () Bool)

(declare-fun e!1191854 () Bool)

(assert (=> d!570609 (=> (not res!836217) (not e!1191854))))

(assert (=> d!570609 (= res!836217 (<= (size!16395 (list!8464 (xs!9760 t!4595))) 512))))

(assert (=> d!570609 (= (inv!27390 t!4595) e!1191854)))

(declare-fun b!1867532 () Bool)

(declare-fun res!836218 () Bool)

(assert (=> b!1867532 (=> (not res!836218) (not e!1191854))))

(assert (=> b!1867532 (= res!836218 (= (csize!13987 t!4595) (size!16395 (list!8464 (xs!9760 t!4595)))))))

(declare-fun b!1867533 () Bool)

(assert (=> b!1867533 (= e!1191854 (and (> (csize!13987 t!4595) 0) (<= (csize!13987 t!4595) 512)))))

(assert (= (and d!570609 res!836217) b!1867532))

(assert (= (and b!1867532 res!836218) b!1867533))

(assert (=> d!570609 m!2292511))

(assert (=> d!570609 m!2292511))

(assert (=> d!570609 m!2292867))

(assert (=> b!1867532 m!2292511))

(assert (=> b!1867532 m!2292511))

(assert (=> b!1867532 m!2292867))

(assert (=> b!1867317 d!570609))

(assert (=> d!570479 d!570497))

(assert (=> d!570479 d!570463))

(assert (=> d!570479 d!570493))

(declare-fun d!570611 () Bool)

(assert (=> d!570611 (= (tail!2831 lt!718696) (slice!577 lt!718696 1 (size!16395 lt!718696)))))

(assert (=> d!570611 true))

(declare-fun _$13!1415 () Unit!35299)

(assert (=> d!570611 (= (choose!11739 lt!718696) _$13!1415)))

(declare-fun bs!411805 () Bool)

(assert (= bs!411805 d!570611))

(assert (=> bs!411805 m!2292501))

(assert (=> bs!411805 m!2292507))

(assert (=> bs!411805 m!2292507))

(assert (=> bs!411805 m!2292509))

(assert (=> d!570479 d!570611))

(declare-fun d!570613 () Bool)

(declare-fun c!304203 () Bool)

(assert (=> d!570613 (= c!304203 ((_ is Node!6878) (left!16670 (right!17000 t!4595))))))

(declare-fun e!1191855 () Bool)

(assert (=> d!570613 (= (inv!27386 (left!16670 (right!17000 t!4595))) e!1191855)))

(declare-fun b!1867534 () Bool)

(assert (=> b!1867534 (= e!1191855 (inv!27389 (left!16670 (right!17000 t!4595))))))

(declare-fun b!1867535 () Bool)

(declare-fun e!1191856 () Bool)

(assert (=> b!1867535 (= e!1191855 e!1191856)))

(declare-fun res!836219 () Bool)

(assert (=> b!1867535 (= res!836219 (not ((_ is Leaf!10085) (left!16670 (right!17000 t!4595)))))))

(assert (=> b!1867535 (=> res!836219 e!1191856)))

(declare-fun b!1867536 () Bool)

(assert (=> b!1867536 (= e!1191856 (inv!27390 (left!16670 (right!17000 t!4595))))))

(assert (= (and d!570613 c!304203) b!1867534))

(assert (= (and d!570613 (not c!304203)) b!1867535))

(assert (= (and b!1867535 (not res!836219)) b!1867536))

(declare-fun m!2292871 () Bool)

(assert (=> b!1867534 m!2292871))

(declare-fun m!2292873 () Bool)

(assert (=> b!1867536 m!2292873))

(assert (=> b!1867340 d!570613))

(declare-fun d!570615 () Bool)

(declare-fun c!304204 () Bool)

(assert (=> d!570615 (= c!304204 ((_ is Node!6878) (right!17000 (right!17000 t!4595))))))

(declare-fun e!1191857 () Bool)

(assert (=> d!570615 (= (inv!27386 (right!17000 (right!17000 t!4595))) e!1191857)))

(declare-fun b!1867537 () Bool)

(assert (=> b!1867537 (= e!1191857 (inv!27389 (right!17000 (right!17000 t!4595))))))

(declare-fun b!1867538 () Bool)

(declare-fun e!1191858 () Bool)

(assert (=> b!1867538 (= e!1191857 e!1191858)))

(declare-fun res!836220 () Bool)

(assert (=> b!1867538 (= res!836220 (not ((_ is Leaf!10085) (right!17000 (right!17000 t!4595)))))))

(assert (=> b!1867538 (=> res!836220 e!1191858)))

(declare-fun b!1867539 () Bool)

(assert (=> b!1867539 (= e!1191858 (inv!27390 (right!17000 (right!17000 t!4595))))))

(assert (= (and d!570615 c!304204) b!1867537))

(assert (= (and d!570615 (not c!304204)) b!1867538))

(assert (= (and b!1867538 (not res!836220)) b!1867539))

(declare-fun m!2292875 () Bool)

(assert (=> b!1867537 m!2292875))

(declare-fun m!2292877 () Bool)

(assert (=> b!1867539 m!2292877))

(assert (=> b!1867340 d!570615))

(declare-fun d!570617 () Bool)

(assert (=> d!570617 (= (inv!27385 (xs!9760 (right!17000 t!4595))) (<= (size!16395 (innerList!6938 (xs!9760 (right!17000 t!4595)))) 2147483647))))

(declare-fun bs!411806 () Bool)

(assert (= bs!411806 d!570617))

(declare-fun m!2292879 () Bool)

(assert (=> bs!411806 m!2292879))

(assert (=> b!1867341 d!570617))

(declare-fun d!570619 () Bool)

(assert (=> d!570619 (= (slice!577 (list!8464 (xs!9760 t!4595)) 1 (csize!13987 t!4595)) (take!163 (drop!990 (list!8464 (xs!9760 t!4595)) 1) (- (csize!13987 t!4595) 1)))))

(declare-fun bs!411807 () Bool)

(assert (= bs!411807 d!570619))

(assert (=> bs!411807 m!2292511))

(declare-fun m!2292881 () Bool)

(assert (=> bs!411807 m!2292881))

(assert (=> bs!411807 m!2292881))

(declare-fun m!2292883 () Bool)

(assert (=> bs!411807 m!2292883))

(assert (=> d!570467 d!570619))

(assert (=> d!570467 d!570491))

(declare-fun d!570621 () Bool)

(declare-fun _$4!1088 () IArray!13761)

(assert (=> d!570621 (= _$4!1088 (IArray!13762 (slice!577 (list!8464 (xs!9760 t!4595)) 1 (csize!13987 t!4595))))))

(declare-fun e!1191861 () Bool)

(assert (=> d!570621 (and (inv!27385 _$4!1088) e!1191861)))

(assert (=> d!570621 (= (choose!11738 (xs!9760 t!4595) 1 (csize!13987 t!4595)) _$4!1088)))

(declare-fun b!1867542 () Bool)

(declare-fun tp!531608 () Bool)

(assert (=> b!1867542 (= e!1191861 tp!531608)))

(assert (= d!570621 b!1867542))

(assert (=> d!570621 m!2292511))

(assert (=> d!570621 m!2292511))

(assert (=> d!570621 m!2292537))

(declare-fun m!2292885 () Bool)

(assert (=> d!570621 m!2292885))

(assert (=> d!570467 d!570621))

(declare-fun d!570623 () Bool)

(declare-fun lt!718746 () Int)

(assert (=> d!570623 (>= lt!718746 0)))

(declare-fun e!1191862 () Int)

(assert (=> d!570623 (= lt!718746 e!1191862)))

(declare-fun c!304205 () Bool)

(assert (=> d!570623 (= c!304205 ((_ is Nil!20683) (innerList!6938 (xs!9760 t!4595))))))

(assert (=> d!570623 (= (size!16395 (innerList!6938 (xs!9760 t!4595))) lt!718746)))

(declare-fun b!1867543 () Bool)

(assert (=> b!1867543 (= e!1191862 0)))

(declare-fun b!1867544 () Bool)

(assert (=> b!1867544 (= e!1191862 (+ 1 (size!16395 (t!172906 (innerList!6938 (xs!9760 t!4595))))))))

(assert (= (and d!570623 c!304205) b!1867543))

(assert (= (and d!570623 (not c!304205)) b!1867544))

(declare-fun m!2292887 () Bool)

(assert (=> b!1867544 m!2292887))

(assert (=> d!570503 d!570623))

(declare-fun d!570625 () Bool)

(declare-fun res!836221 () Bool)

(declare-fun e!1191863 () Bool)

(assert (=> d!570625 (=> (not res!836221) (not e!1191863))))

(assert (=> d!570625 (= res!836221 (<= (size!16395 (list!8464 (xs!9760 (right!17000 t!4595)))) 512))))

(assert (=> d!570625 (= (inv!27390 (right!17000 t!4595)) e!1191863)))

(declare-fun b!1867545 () Bool)

(declare-fun res!836222 () Bool)

(assert (=> b!1867545 (=> (not res!836222) (not e!1191863))))

(assert (=> b!1867545 (= res!836222 (= (csize!13987 (right!17000 t!4595)) (size!16395 (list!8464 (xs!9760 (right!17000 t!4595))))))))

(declare-fun b!1867546 () Bool)

(assert (=> b!1867546 (= e!1191863 (and (> (csize!13987 (right!17000 t!4595)) 0) (<= (csize!13987 (right!17000 t!4595)) 512)))))

(assert (= (and d!570625 res!836221) b!1867545))

(assert (= (and b!1867545 res!836222) b!1867546))

(declare-fun m!2292889 () Bool)

(assert (=> d!570625 m!2292889))

(assert (=> d!570625 m!2292889))

(declare-fun m!2292891 () Bool)

(assert (=> d!570625 m!2292891))

(assert (=> b!1867545 m!2292889))

(assert (=> b!1867545 m!2292889))

(assert (=> b!1867545 m!2292891))

(assert (=> b!1867323 d!570625))

(declare-fun d!570627 () Bool)

(declare-fun lt!718747 () Int)

(assert (=> d!570627 (>= lt!718747 0)))

(declare-fun e!1191864 () Int)

(assert (=> d!570627 (= lt!718747 e!1191864)))

(declare-fun c!304206 () Bool)

(assert (=> d!570627 (= c!304206 ((_ is Nil!20683) (t!172906 lt!718696)))))

(assert (=> d!570627 (= (size!16395 (t!172906 lt!718696)) lt!718747)))

(declare-fun b!1867547 () Bool)

(assert (=> b!1867547 (= e!1191864 0)))

(declare-fun b!1867548 () Bool)

(assert (=> b!1867548 (= e!1191864 (+ 1 (size!16395 (t!172906 (t!172906 lt!718696)))))))

(assert (= (and d!570627 c!304206) b!1867547))

(assert (= (and d!570627 (not c!304206)) b!1867548))

(declare-fun m!2292893 () Bool)

(assert (=> b!1867548 m!2292893))

(assert (=> b!1867287 d!570627))

(declare-fun d!570629 () Bool)

(declare-fun res!836223 () Bool)

(declare-fun e!1191865 () Bool)

(assert (=> d!570629 (=> (not res!836223) (not e!1191865))))

(assert (=> d!570629 (= res!836223 (= (csize!13986 (right!17000 t!4595)) (+ (size!16399 (left!16670 (right!17000 t!4595))) (size!16399 (right!17000 (right!17000 t!4595))))))))

(assert (=> d!570629 (= (inv!27389 (right!17000 t!4595)) e!1191865)))

(declare-fun b!1867549 () Bool)

(declare-fun res!836224 () Bool)

(assert (=> b!1867549 (=> (not res!836224) (not e!1191865))))

(assert (=> b!1867549 (= res!836224 (and (not (= (left!16670 (right!17000 t!4595)) Empty!6878)) (not (= (right!17000 (right!17000 t!4595)) Empty!6878))))))

(declare-fun b!1867550 () Bool)

(declare-fun res!836225 () Bool)

(assert (=> b!1867550 (=> (not res!836225) (not e!1191865))))

(assert (=> b!1867550 (= res!836225 (= (cheight!7089 (right!17000 t!4595)) (+ (max!0 (height!1065 (left!16670 (right!17000 t!4595))) (height!1065 (right!17000 (right!17000 t!4595)))) 1)))))

(declare-fun b!1867551 () Bool)

(assert (=> b!1867551 (= e!1191865 (<= 0 (cheight!7089 (right!17000 t!4595))))))

(assert (= (and d!570629 res!836223) b!1867549))

(assert (= (and b!1867549 res!836224) b!1867550))

(assert (= (and b!1867550 res!836225) b!1867551))

(declare-fun m!2292895 () Bool)

(assert (=> d!570629 m!2292895))

(declare-fun m!2292897 () Bool)

(assert (=> d!570629 m!2292897))

(assert (=> b!1867550 m!2292821))

(assert (=> b!1867550 m!2292823))

(assert (=> b!1867550 m!2292821))

(assert (=> b!1867550 m!2292823))

(declare-fun m!2292899 () Bool)

(assert (=> b!1867550 m!2292899))

(assert (=> b!1867321 d!570629))

(assert (=> b!1867214 d!570505))

(assert (=> b!1867214 d!570507))

(declare-fun b!1867566 () Bool)

(declare-fun e!1191876 () Int)

(declare-fun e!1191877 () Int)

(assert (=> b!1867566 (= e!1191876 e!1191877)))

(declare-fun c!304213 () Bool)

(assert (=> b!1867566 (= c!304213 (>= (- (size!16395 lt!718696) 1) (size!16395 (drop!990 lt!718696 1))))))

(declare-fun b!1867567 () Bool)

(assert (=> b!1867567 (= e!1191877 (- (size!16395 lt!718696) 1))))

(declare-fun b!1867569 () Bool)

(assert (=> b!1867569 (= e!1191877 (size!16395 (drop!990 lt!718696 1)))))

(declare-fun b!1867570 () Bool)

(declare-fun e!1191875 () List!20765)

(assert (=> b!1867570 (= e!1191875 (Cons!20683 (h!26084 (drop!990 lt!718696 1)) (take!163 (t!172906 (drop!990 lt!718696 1)) (- (- (size!16395 lt!718696) 1) 1))))))

(declare-fun d!570631 () Bool)

(declare-fun e!1191874 () Bool)

(assert (=> d!570631 e!1191874))

(declare-fun res!836228 () Bool)

(assert (=> d!570631 (=> (not res!836228) (not e!1191874))))

(declare-fun lt!718750 () List!20765)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3079 (List!20765) (InoxSet T!33158))

(assert (=> d!570631 (= res!836228 (= ((_ map implies) (content!3079 lt!718750) (content!3079 (drop!990 lt!718696 1))) ((as const (InoxSet T!33158)) true)))))

(assert (=> d!570631 (= lt!718750 e!1191875)))

(declare-fun c!304214 () Bool)

(assert (=> d!570631 (= c!304214 (or ((_ is Nil!20683) (drop!990 lt!718696 1)) (<= (- (size!16395 lt!718696) 1) 0)))))

(assert (=> d!570631 (= (take!163 (drop!990 lt!718696 1) (- (size!16395 lt!718696) 1)) lt!718750)))

(declare-fun b!1867568 () Bool)

(assert (=> b!1867568 (= e!1191875 Nil!20683)))

(declare-fun b!1867571 () Bool)

(assert (=> b!1867571 (= e!1191876 0)))

(declare-fun b!1867572 () Bool)

(assert (=> b!1867572 (= e!1191874 (= (size!16395 lt!718750) e!1191876))))

(declare-fun c!304215 () Bool)

(assert (=> b!1867572 (= c!304215 (<= (- (size!16395 lt!718696) 1) 0))))

(assert (= (and d!570631 c!304214) b!1867568))

(assert (= (and d!570631 (not c!304214)) b!1867570))

(assert (= (and d!570631 res!836228) b!1867572))

(assert (= (and b!1867572 c!304215) b!1867571))

(assert (= (and b!1867572 (not c!304215)) b!1867566))

(assert (= (and b!1867566 c!304213) b!1867569))

(assert (= (and b!1867566 (not c!304213)) b!1867567))

(declare-fun m!2292901 () Bool)

(assert (=> d!570631 m!2292901))

(assert (=> d!570631 m!2292523))

(declare-fun m!2292903 () Bool)

(assert (=> d!570631 m!2292903))

(declare-fun m!2292905 () Bool)

(assert (=> b!1867570 m!2292905))

(assert (=> b!1867566 m!2292523))

(declare-fun m!2292907 () Bool)

(assert (=> b!1867566 m!2292907))

(assert (=> b!1867569 m!2292523))

(assert (=> b!1867569 m!2292907))

(declare-fun m!2292909 () Bool)

(assert (=> b!1867572 m!2292909))

(assert (=> d!570463 d!570631))

(declare-fun b!1867591 () Bool)

(declare-fun e!1191891 () List!20765)

(declare-fun e!1191889 () List!20765)

(assert (=> b!1867591 (= e!1191891 e!1191889)))

(declare-fun c!304225 () Bool)

(assert (=> b!1867591 (= c!304225 (<= 1 0))))

(declare-fun b!1867592 () Bool)

(declare-fun e!1191890 () Int)

(declare-fun call!115905 () Int)

(assert (=> b!1867592 (= e!1191890 (- call!115905 1))))

(declare-fun b!1867593 () Bool)

(assert (=> b!1867593 (= e!1191889 lt!718696)))

(declare-fun b!1867594 () Bool)

(assert (=> b!1867594 (= e!1191890 0)))

(declare-fun b!1867595 () Bool)

(declare-fun e!1191888 () Int)

(assert (=> b!1867595 (= e!1191888 e!1191890)))

(declare-fun c!304227 () Bool)

(assert (=> b!1867595 (= c!304227 (>= 1 call!115905))))

(declare-fun b!1867596 () Bool)

(declare-fun e!1191892 () Bool)

(declare-fun lt!718753 () List!20765)

(assert (=> b!1867596 (= e!1191892 (= (size!16395 lt!718753) e!1191888))))

(declare-fun c!304226 () Bool)

(assert (=> b!1867596 (= c!304226 (<= 1 0))))

(declare-fun d!570633 () Bool)

(assert (=> d!570633 e!1191892))

(declare-fun res!836231 () Bool)

(assert (=> d!570633 (=> (not res!836231) (not e!1191892))))

(assert (=> d!570633 (= res!836231 (= ((_ map implies) (content!3079 lt!718753) (content!3079 lt!718696)) ((as const (InoxSet T!33158)) true)))))

(assert (=> d!570633 (= lt!718753 e!1191891)))

(declare-fun c!304224 () Bool)

(assert (=> d!570633 (= c!304224 ((_ is Nil!20683) lt!718696))))

(assert (=> d!570633 (= (drop!990 lt!718696 1) lt!718753)))

(declare-fun bm!115900 () Bool)

(assert (=> bm!115900 (= call!115905 (size!16395 lt!718696))))

(declare-fun b!1867597 () Bool)

(assert (=> b!1867597 (= e!1191889 (drop!990 (t!172906 lt!718696) (- 1 1)))))

(declare-fun b!1867598 () Bool)

(assert (=> b!1867598 (= e!1191891 Nil!20683)))

(declare-fun b!1867599 () Bool)

(assert (=> b!1867599 (= e!1191888 call!115905)))

(assert (= (and d!570633 c!304224) b!1867598))

(assert (= (and d!570633 (not c!304224)) b!1867591))

(assert (= (and b!1867591 c!304225) b!1867593))

(assert (= (and b!1867591 (not c!304225)) b!1867597))

(assert (= (and d!570633 res!836231) b!1867596))

(assert (= (and b!1867596 c!304226) b!1867599))

(assert (= (and b!1867596 (not c!304226)) b!1867595))

(assert (= (and b!1867595 c!304227) b!1867594))

(assert (= (and b!1867595 (not c!304227)) b!1867592))

(assert (= (or b!1867599 b!1867595 b!1867592) bm!115900))

(declare-fun m!2292911 () Bool)

(assert (=> b!1867596 m!2292911))

(declare-fun m!2292913 () Bool)

(assert (=> d!570633 m!2292913))

(declare-fun m!2292915 () Bool)

(assert (=> d!570633 m!2292915))

(assert (=> bm!115900 m!2292507))

(declare-fun m!2292917 () Bool)

(assert (=> b!1867597 m!2292917))

(assert (=> d!570463 d!570633))

(declare-fun tp!531609 () Bool)

(declare-fun b!1867600 () Bool)

(declare-fun e!1191894 () Bool)

(declare-fun tp!531611 () Bool)

(assert (=> b!1867600 (= e!1191894 (and (inv!27386 (left!16670 (left!16670 (right!17000 t!4595)))) tp!531609 (inv!27386 (right!17000 (left!16670 (right!17000 t!4595)))) tp!531611))))

(declare-fun b!1867602 () Bool)

(declare-fun e!1191893 () Bool)

(declare-fun tp!531610 () Bool)

(assert (=> b!1867602 (= e!1191893 tp!531610)))

(declare-fun b!1867601 () Bool)

(assert (=> b!1867601 (= e!1191894 (and (inv!27385 (xs!9760 (left!16670 (right!17000 t!4595)))) e!1191893))))

(assert (=> b!1867340 (= tp!531585 (and (inv!27386 (left!16670 (right!17000 t!4595))) e!1191894))))

(assert (= (and b!1867340 ((_ is Node!6878) (left!16670 (right!17000 t!4595)))) b!1867600))

(assert (= b!1867601 b!1867602))

(assert (= (and b!1867340 ((_ is Leaf!10085) (left!16670 (right!17000 t!4595)))) b!1867601))

(declare-fun m!2292919 () Bool)

(assert (=> b!1867600 m!2292919))

(declare-fun m!2292921 () Bool)

(assert (=> b!1867600 m!2292921))

(declare-fun m!2292923 () Bool)

(assert (=> b!1867601 m!2292923))

(assert (=> b!1867340 m!2292633))

(declare-fun b!1867603 () Bool)

(declare-fun tp!531612 () Bool)

(declare-fun tp!531614 () Bool)

(declare-fun e!1191896 () Bool)

(assert (=> b!1867603 (= e!1191896 (and (inv!27386 (left!16670 (right!17000 (right!17000 t!4595)))) tp!531612 (inv!27386 (right!17000 (right!17000 (right!17000 t!4595)))) tp!531614))))

(declare-fun b!1867605 () Bool)

(declare-fun e!1191895 () Bool)

(declare-fun tp!531613 () Bool)

(assert (=> b!1867605 (= e!1191895 tp!531613)))

(declare-fun b!1867604 () Bool)

(assert (=> b!1867604 (= e!1191896 (and (inv!27385 (xs!9760 (right!17000 (right!17000 t!4595)))) e!1191895))))

(assert (=> b!1867340 (= tp!531587 (and (inv!27386 (right!17000 (right!17000 t!4595))) e!1191896))))

(assert (= (and b!1867340 ((_ is Node!6878) (right!17000 (right!17000 t!4595)))) b!1867603))

(assert (= b!1867604 b!1867605))

(assert (= (and b!1867340 ((_ is Leaf!10085) (right!17000 (right!17000 t!4595)))) b!1867604))

(declare-fun m!2292925 () Bool)

(assert (=> b!1867603 m!2292925))

(declare-fun m!2292927 () Bool)

(assert (=> b!1867603 m!2292927))

(declare-fun m!2292929 () Bool)

(assert (=> b!1867604 m!2292929))

(assert (=> b!1867340 m!2292635))

(declare-fun b!1867606 () Bool)

(declare-fun e!1191897 () Bool)

(declare-fun tp!531615 () Bool)

(assert (=> b!1867606 (= e!1191897 (and tp_is_empty!8675 tp!531615))))

(assert (=> b!1867342 (= tp!531586 e!1191897)))

(assert (= (and b!1867342 ((_ is Cons!20683) (innerList!6938 (xs!9760 (right!17000 t!4595))))) b!1867606))

(declare-fun e!1191899 () Bool)

(declare-fun tp!531618 () Bool)

(declare-fun b!1867607 () Bool)

(declare-fun tp!531616 () Bool)

(assert (=> b!1867607 (= e!1191899 (and (inv!27386 (left!16670 (left!16670 (left!16670 t!4595)))) tp!531616 (inv!27386 (right!17000 (left!16670 (left!16670 t!4595)))) tp!531618))))

(declare-fun b!1867609 () Bool)

(declare-fun e!1191898 () Bool)

(declare-fun tp!531617 () Bool)

(assert (=> b!1867609 (= e!1191898 tp!531617)))

(declare-fun b!1867608 () Bool)

(assert (=> b!1867608 (= e!1191899 (and (inv!27385 (xs!9760 (left!16670 (left!16670 t!4595)))) e!1191898))))

(assert (=> b!1867337 (= tp!531582 (and (inv!27386 (left!16670 (left!16670 t!4595))) e!1191899))))

(assert (= (and b!1867337 ((_ is Node!6878) (left!16670 (left!16670 t!4595)))) b!1867607))

(assert (= b!1867608 b!1867609))

(assert (= (and b!1867337 ((_ is Leaf!10085) (left!16670 (left!16670 t!4595)))) b!1867608))

(declare-fun m!2292931 () Bool)

(assert (=> b!1867607 m!2292931))

(declare-fun m!2292933 () Bool)

(assert (=> b!1867607 m!2292933))

(declare-fun m!2292935 () Bool)

(assert (=> b!1867608 m!2292935))

(assert (=> b!1867337 m!2292627))

(declare-fun e!1191901 () Bool)

(declare-fun b!1867610 () Bool)

(declare-fun tp!531619 () Bool)

(declare-fun tp!531621 () Bool)

(assert (=> b!1867610 (= e!1191901 (and (inv!27386 (left!16670 (right!17000 (left!16670 t!4595)))) tp!531619 (inv!27386 (right!17000 (right!17000 (left!16670 t!4595)))) tp!531621))))

(declare-fun b!1867612 () Bool)

(declare-fun e!1191900 () Bool)

(declare-fun tp!531620 () Bool)

(assert (=> b!1867612 (= e!1191900 tp!531620)))

(declare-fun b!1867611 () Bool)

(assert (=> b!1867611 (= e!1191901 (and (inv!27385 (xs!9760 (right!17000 (left!16670 t!4595)))) e!1191900))))

(assert (=> b!1867337 (= tp!531584 (and (inv!27386 (right!17000 (left!16670 t!4595))) e!1191901))))

(assert (= (and b!1867337 ((_ is Node!6878) (right!17000 (left!16670 t!4595)))) b!1867610))

(assert (= b!1867611 b!1867612))

(assert (= (and b!1867337 ((_ is Leaf!10085) (right!17000 (left!16670 t!4595)))) b!1867611))

(declare-fun m!2292937 () Bool)

(assert (=> b!1867610 m!2292937))

(declare-fun m!2292939 () Bool)

(assert (=> b!1867610 m!2292939))

(declare-fun m!2292941 () Bool)

(assert (=> b!1867611 m!2292941))

(assert (=> b!1867337 m!2292629))

(declare-fun b!1867613 () Bool)

(declare-fun e!1191902 () Bool)

(declare-fun tp!531622 () Bool)

(assert (=> b!1867613 (= e!1191902 (and tp_is_empty!8675 tp!531622))))

(assert (=> b!1867328 (= tp!531575 e!1191902)))

(assert (= (and b!1867328 ((_ is Cons!20683) (t!172906 (innerList!6938 (xs!9760 t!4595))))) b!1867613))

(declare-fun b!1867614 () Bool)

(declare-fun e!1191903 () Bool)

(declare-fun tp!531623 () Bool)

(assert (=> b!1867614 (= e!1191903 (and tp_is_empty!8675 tp!531623))))

(assert (=> b!1867339 (= tp!531583 e!1191903)))

(assert (= (and b!1867339 ((_ is Cons!20683) (innerList!6938 (xs!9760 (left!16670 t!4595))))) b!1867614))

(check-sat (not d!570585) (not b!1867612) (not b!1867522) (not b!1867438) (not b!1867606) (not b!1867537) (not d!570633) (not b!1867548) (not b!1867613) (not b!1867511) (not b!1867609) (not b!1867517) (not d!570631) (not b!1867439) (not b!1867337) (not b!1867340) (not b!1867481) (not b!1867544) (not b!1867614) (not b!1867437) (not bm!115900) (not d!570625) (not b!1867479) tp_is_empty!8675 (not d!570607) (not d!570609) (not b!1867608) (not b!1867442) (not b!1867532) (not b!1867569) (not b!1867441) (not b!1867520) (not b!1867513) (not d!570595) (not b!1867508) (not b!1867536) (not b!1867566) (not b!1867570) (not b!1867534) (not d!570619) (not d!570629) (not b!1867542) (not d!570621) (not b!1867602) (not b!1867604) (not b!1867605) (not b!1867572) (not d!570519) (not b!1867550) (not d!570601) (not b!1867611) (not b!1867518) (not b!1867607) (not d!570591) (not b!1867601) (not d!570611) (not b!1867432) (not b!1867545) (not d!570597) (not b!1867597) (not b!1867528) (not d!570617) (not b!1867509) (not d!570593) (not b!1867506) (not b!1867596) (not d!570579) (not b!1867510) (not b!1867603) (not b!1867530) (not b!1867507) (not b!1867539) (not b!1867515) (not b!1867610) (not d!570599) (not b!1867440) (not b!1867600))
(check-sat)
(get-model)

(declare-fun d!570635 () Bool)

(declare-fun c!304228 () Bool)

(assert (=> d!570635 (= c!304228 ((_ is Node!6878) (left!16670 (right!17000 (left!16670 t!4595)))))))

(declare-fun e!1191904 () Bool)

(assert (=> d!570635 (= (inv!27386 (left!16670 (right!17000 (left!16670 t!4595)))) e!1191904)))

(declare-fun b!1867615 () Bool)

(assert (=> b!1867615 (= e!1191904 (inv!27389 (left!16670 (right!17000 (left!16670 t!4595)))))))

(declare-fun b!1867616 () Bool)

(declare-fun e!1191905 () Bool)

(assert (=> b!1867616 (= e!1191904 e!1191905)))

(declare-fun res!836232 () Bool)

(assert (=> b!1867616 (= res!836232 (not ((_ is Leaf!10085) (left!16670 (right!17000 (left!16670 t!4595))))))))

(assert (=> b!1867616 (=> res!836232 e!1191905)))

(declare-fun b!1867617 () Bool)

(assert (=> b!1867617 (= e!1191905 (inv!27390 (left!16670 (right!17000 (left!16670 t!4595)))))))

(assert (= (and d!570635 c!304228) b!1867615))

(assert (= (and d!570635 (not c!304228)) b!1867616))

(assert (= (and b!1867616 (not res!836232)) b!1867617))

(declare-fun m!2292943 () Bool)

(assert (=> b!1867615 m!2292943))

(declare-fun m!2292945 () Bool)

(assert (=> b!1867617 m!2292945))

(assert (=> b!1867610 d!570635))

(declare-fun d!570637 () Bool)

(declare-fun c!304229 () Bool)

(assert (=> d!570637 (= c!304229 ((_ is Node!6878) (right!17000 (right!17000 (left!16670 t!4595)))))))

(declare-fun e!1191906 () Bool)

(assert (=> d!570637 (= (inv!27386 (right!17000 (right!17000 (left!16670 t!4595)))) e!1191906)))

(declare-fun b!1867618 () Bool)

(assert (=> b!1867618 (= e!1191906 (inv!27389 (right!17000 (right!17000 (left!16670 t!4595)))))))

(declare-fun b!1867619 () Bool)

(declare-fun e!1191907 () Bool)

(assert (=> b!1867619 (= e!1191906 e!1191907)))

(declare-fun res!836233 () Bool)

(assert (=> b!1867619 (= res!836233 (not ((_ is Leaf!10085) (right!17000 (right!17000 (left!16670 t!4595))))))))

(assert (=> b!1867619 (=> res!836233 e!1191907)))

(declare-fun b!1867620 () Bool)

(assert (=> b!1867620 (= e!1191907 (inv!27390 (right!17000 (right!17000 (left!16670 t!4595)))))))

(assert (= (and d!570637 c!304229) b!1867618))

(assert (= (and d!570637 (not c!304229)) b!1867619))

(assert (= (and b!1867619 (not res!836233)) b!1867620))

(declare-fun m!2292947 () Bool)

(assert (=> b!1867618 m!2292947))

(declare-fun m!2292949 () Bool)

(assert (=> b!1867620 m!2292949))

(assert (=> b!1867610 d!570637))

(declare-fun d!570639 () Bool)

(declare-fun lt!718754 () Int)

(assert (=> d!570639 (>= lt!718754 0)))

(declare-fun e!1191908 () Int)

(assert (=> d!570639 (= lt!718754 e!1191908)))

(declare-fun c!304230 () Bool)

(assert (=> d!570639 (= c!304230 ((_ is Nil!20683) (t!172906 (t!172906 lt!718696))))))

(assert (=> d!570639 (= (size!16395 (t!172906 (t!172906 lt!718696))) lt!718754)))

(declare-fun b!1867621 () Bool)

(assert (=> b!1867621 (= e!1191908 0)))

(declare-fun b!1867622 () Bool)

(assert (=> b!1867622 (= e!1191908 (+ 1 (size!16395 (t!172906 (t!172906 (t!172906 lt!718696))))))))

(assert (= (and d!570639 c!304230) b!1867621))

(assert (= (and d!570639 (not c!304230)) b!1867622))

(declare-fun m!2292951 () Bool)

(assert (=> b!1867622 m!2292951))

(assert (=> b!1867548 d!570639))

(declare-fun d!570641 () Bool)

(assert (=> d!570641 (= (inv!27385 (xs!9760 (left!16670 (right!17000 t!4595)))) (<= (size!16395 (innerList!6938 (xs!9760 (left!16670 (right!17000 t!4595))))) 2147483647))))

(declare-fun bs!411808 () Bool)

(assert (= bs!411808 d!570641))

(declare-fun m!2292953 () Bool)

(assert (=> bs!411808 m!2292953))

(assert (=> b!1867601 d!570641))

(declare-fun d!570643 () Bool)

(assert (=> d!570643 (= (isEmpty!12909 (list!8466 (left!16670 t!4595))) ((_ is Nil!20683) (list!8466 (left!16670 t!4595))))))

(assert (=> d!570591 d!570643))

(declare-fun b!1867623 () Bool)

(declare-fun e!1191909 () List!20765)

(assert (=> b!1867623 (= e!1191909 Nil!20683)))

(declare-fun b!1867625 () Bool)

(declare-fun e!1191910 () List!20765)

(assert (=> b!1867625 (= e!1191910 (list!8464 (xs!9760 (left!16670 t!4595))))))

(declare-fun d!570645 () Bool)

(declare-fun c!304231 () Bool)

(assert (=> d!570645 (= c!304231 ((_ is Empty!6878) (left!16670 t!4595)))))

(assert (=> d!570645 (= (list!8466 (left!16670 t!4595)) e!1191909)))

(declare-fun b!1867624 () Bool)

(assert (=> b!1867624 (= e!1191909 e!1191910)))

(declare-fun c!304232 () Bool)

(assert (=> b!1867624 (= c!304232 ((_ is Leaf!10085) (left!16670 t!4595)))))

(declare-fun b!1867626 () Bool)

(assert (=> b!1867626 (= e!1191910 (++!5605 (list!8466 (left!16670 (left!16670 t!4595))) (list!8466 (right!17000 (left!16670 t!4595)))))))

(assert (= (and d!570645 c!304231) b!1867623))

(assert (= (and d!570645 (not c!304231)) b!1867624))

(assert (= (and b!1867624 c!304232) b!1867625))

(assert (= (and b!1867624 (not c!304232)) b!1867626))

(assert (=> b!1867625 m!2292863))

(declare-fun m!2292955 () Bool)

(assert (=> b!1867626 m!2292955))

(declare-fun m!2292957 () Bool)

(assert (=> b!1867626 m!2292957))

(assert (=> b!1867626 m!2292955))

(assert (=> b!1867626 m!2292957))

(declare-fun m!2292959 () Bool)

(assert (=> b!1867626 m!2292959))

(assert (=> d!570591 d!570645))

(declare-fun d!570647 () Bool)

(declare-fun lt!718755 () Int)

(assert (=> d!570647 (= lt!718755 (size!16395 (list!8466 (left!16670 t!4595))))))

(assert (=> d!570647 (= lt!718755 (ite ((_ is Empty!6878) (left!16670 t!4595)) 0 (ite ((_ is Leaf!10085) (left!16670 t!4595)) (csize!13987 (left!16670 t!4595)) (csize!13986 (left!16670 t!4595)))))))

(assert (=> d!570647 (= (size!16399 (left!16670 t!4595)) lt!718755)))

(declare-fun bs!411809 () Bool)

(assert (= bs!411809 d!570647))

(assert (=> bs!411809 m!2292777))

(assert (=> bs!411809 m!2292777))

(declare-fun m!2292961 () Bool)

(assert (=> bs!411809 m!2292961))

(assert (=> d!570591 d!570647))

(declare-fun d!570649 () Bool)

(declare-fun lt!718756 () Int)

(assert (=> d!570649 (>= lt!718756 0)))

(declare-fun e!1191911 () Int)

(assert (=> d!570649 (= lt!718756 e!1191911)))

(declare-fun c!304233 () Bool)

(assert (=> d!570649 (= c!304233 ((_ is Nil!20683) (drop!990 lt!718696 1)))))

(assert (=> d!570649 (= (size!16395 (drop!990 lt!718696 1)) lt!718756)))

(declare-fun b!1867627 () Bool)

(assert (=> b!1867627 (= e!1191911 0)))

(declare-fun b!1867628 () Bool)

(assert (=> b!1867628 (= e!1191911 (+ 1 (size!16395 (t!172906 (drop!990 lt!718696 1)))))))

(assert (= (and d!570649 c!304233) b!1867627))

(assert (= (and d!570649 (not c!304233)) b!1867628))

(declare-fun m!2292963 () Bool)

(assert (=> b!1867628 m!2292963))

(assert (=> b!1867566 d!570649))

(declare-fun d!570651 () Bool)

(declare-fun lt!718757 () Int)

(assert (=> d!570651 (= lt!718757 (size!16395 (list!8466 (left!16670 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))))))))

(assert (=> d!570651 (= lt!718757 (ite ((_ is Empty!6878) (left!16670 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) 0 (ite ((_ is Leaf!10085) (left!16670 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) (csize!13987 (left!16670 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) (csize!13986 (left!16670 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))))))))

(assert (=> d!570651 (= (size!16399 (left!16670 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) lt!718757)))

(declare-fun bs!411810 () Bool)

(assert (= bs!411810 d!570651))

(declare-fun m!2292965 () Bool)

(assert (=> bs!411810 m!2292965))

(assert (=> bs!411810 m!2292965))

(declare-fun m!2292967 () Bool)

(assert (=> bs!411810 m!2292967))

(assert (=> d!570597 d!570651))

(declare-fun d!570653 () Bool)

(declare-fun lt!718758 () Int)

(assert (=> d!570653 (= lt!718758 (size!16395 (list!8466 (right!17000 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))))))))

(assert (=> d!570653 (= lt!718758 (ite ((_ is Empty!6878) (right!17000 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) 0 (ite ((_ is Leaf!10085) (right!17000 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) (csize!13987 (right!17000 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) (csize!13986 (right!17000 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))))))))

(assert (=> d!570653 (= (size!16399 (right!17000 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) lt!718758)))

(declare-fun bs!411811 () Bool)

(assert (= bs!411811 d!570653))

(declare-fun m!2292969 () Bool)

(assert (=> bs!411811 m!2292969))

(assert (=> bs!411811 m!2292969))

(declare-fun m!2292971 () Bool)

(assert (=> bs!411811 m!2292971))

(assert (=> d!570597 d!570653))

(assert (=> d!570621 d!570619))

(assert (=> d!570621 d!570491))

(declare-fun d!570655 () Bool)

(assert (=> d!570655 (= (inv!27385 _$4!1088) (<= (size!16395 (innerList!6938 _$4!1088)) 2147483647))))

(declare-fun bs!411812 () Bool)

(assert (= bs!411812 d!570655))

(declare-fun m!2292973 () Bool)

(assert (=> bs!411812 m!2292973))

(assert (=> d!570621 d!570655))

(declare-fun d!570657 () Bool)

(declare-fun c!304236 () Bool)

(assert (=> d!570657 (= c!304236 ((_ is Nil!20683) lt!718750))))

(declare-fun e!1191914 () (InoxSet T!33158))

(assert (=> d!570657 (= (content!3079 lt!718750) e!1191914)))

(declare-fun b!1867633 () Bool)

(assert (=> b!1867633 (= e!1191914 ((as const (Array T!33158 Bool)) false))))

(declare-fun b!1867634 () Bool)

(assert (=> b!1867634 (= e!1191914 ((_ map or) (store ((as const (Array T!33158 Bool)) false) (h!26084 lt!718750) true) (content!3079 (t!172906 lt!718750))))))

(assert (= (and d!570657 c!304236) b!1867633))

(assert (= (and d!570657 (not c!304236)) b!1867634))

(declare-fun m!2292975 () Bool)

(assert (=> b!1867634 m!2292975))

(declare-fun m!2292977 () Bool)

(assert (=> b!1867634 m!2292977))

(assert (=> d!570631 d!570657))

(declare-fun d!570659 () Bool)

(declare-fun c!304237 () Bool)

(assert (=> d!570659 (= c!304237 ((_ is Nil!20683) (drop!990 lt!718696 1)))))

(declare-fun e!1191915 () (InoxSet T!33158))

(assert (=> d!570659 (= (content!3079 (drop!990 lt!718696 1)) e!1191915)))

(declare-fun b!1867635 () Bool)

(assert (=> b!1867635 (= e!1191915 ((as const (Array T!33158 Bool)) false))))

(declare-fun b!1867636 () Bool)

(assert (=> b!1867636 (= e!1191915 ((_ map or) (store ((as const (Array T!33158 Bool)) false) (h!26084 (drop!990 lt!718696 1)) true) (content!3079 (t!172906 (drop!990 lt!718696 1)))))))

(assert (= (and d!570659 c!304237) b!1867635))

(assert (= (and d!570659 (not c!304237)) b!1867636))

(declare-fun m!2292979 () Bool)

(assert (=> b!1867636 m!2292979))

(declare-fun m!2292981 () Bool)

(assert (=> b!1867636 m!2292981))

(assert (=> d!570631 d!570659))

(declare-fun d!570661 () Bool)

(declare-fun lt!718759 () Int)

(assert (=> d!570661 (>= lt!718759 0)))

(declare-fun e!1191916 () Int)

(assert (=> d!570661 (= lt!718759 e!1191916)))

(declare-fun c!304238 () Bool)

(assert (=> d!570661 (= c!304238 ((_ is Nil!20683) lt!718753))))

(assert (=> d!570661 (= (size!16395 lt!718753) lt!718759)))

(declare-fun b!1867637 () Bool)

(assert (=> b!1867637 (= e!1191916 0)))

(declare-fun b!1867638 () Bool)

(assert (=> b!1867638 (= e!1191916 (+ 1 (size!16395 (t!172906 lt!718753))))))

(assert (= (and d!570661 c!304238) b!1867637))

(assert (= (and d!570661 (not c!304238)) b!1867638))

(declare-fun m!2292983 () Bool)

(assert (=> b!1867638 m!2292983))

(assert (=> b!1867596 d!570661))

(declare-fun b!1867639 () Bool)

(declare-fun e!1191919 () Int)

(declare-fun e!1191920 () Int)

(assert (=> b!1867639 (= e!1191919 e!1191920)))

(declare-fun c!304239 () Bool)

(assert (=> b!1867639 (= c!304239 (>= (- (- (size!16395 lt!718696) 1) 1) (size!16395 (t!172906 (drop!990 lt!718696 1)))))))

(declare-fun b!1867640 () Bool)

(assert (=> b!1867640 (= e!1191920 (- (- (size!16395 lt!718696) 1) 1))))

(declare-fun b!1867642 () Bool)

(assert (=> b!1867642 (= e!1191920 (size!16395 (t!172906 (drop!990 lt!718696 1))))))

(declare-fun b!1867643 () Bool)

(declare-fun e!1191918 () List!20765)

(assert (=> b!1867643 (= e!1191918 (Cons!20683 (h!26084 (t!172906 (drop!990 lt!718696 1))) (take!163 (t!172906 (t!172906 (drop!990 lt!718696 1))) (- (- (- (size!16395 lt!718696) 1) 1) 1))))))

(declare-fun d!570663 () Bool)

(declare-fun e!1191917 () Bool)

(assert (=> d!570663 e!1191917))

(declare-fun res!836234 () Bool)

(assert (=> d!570663 (=> (not res!836234) (not e!1191917))))

(declare-fun lt!718760 () List!20765)

(assert (=> d!570663 (= res!836234 (= ((_ map implies) (content!3079 lt!718760) (content!3079 (t!172906 (drop!990 lt!718696 1)))) ((as const (InoxSet T!33158)) true)))))

(assert (=> d!570663 (= lt!718760 e!1191918)))

(declare-fun c!304240 () Bool)

(assert (=> d!570663 (= c!304240 (or ((_ is Nil!20683) (t!172906 (drop!990 lt!718696 1))) (<= (- (- (size!16395 lt!718696) 1) 1) 0)))))

(assert (=> d!570663 (= (take!163 (t!172906 (drop!990 lt!718696 1)) (- (- (size!16395 lt!718696) 1) 1)) lt!718760)))

(declare-fun b!1867641 () Bool)

(assert (=> b!1867641 (= e!1191918 Nil!20683)))

(declare-fun b!1867644 () Bool)

(assert (=> b!1867644 (= e!1191919 0)))

(declare-fun b!1867645 () Bool)

(assert (=> b!1867645 (= e!1191917 (= (size!16395 lt!718760) e!1191919))))

(declare-fun c!304241 () Bool)

(assert (=> b!1867645 (= c!304241 (<= (- (- (size!16395 lt!718696) 1) 1) 0))))

(assert (= (and d!570663 c!304240) b!1867641))

(assert (= (and d!570663 (not c!304240)) b!1867643))

(assert (= (and d!570663 res!836234) b!1867645))

(assert (= (and b!1867645 c!304241) b!1867644))

(assert (= (and b!1867645 (not c!304241)) b!1867639))

(assert (= (and b!1867639 c!304239) b!1867642))

(assert (= (and b!1867639 (not c!304239)) b!1867640))

(declare-fun m!2292985 () Bool)

(assert (=> d!570663 m!2292985))

(assert (=> d!570663 m!2292981))

(declare-fun m!2292987 () Bool)

(assert (=> b!1867643 m!2292987))

(assert (=> b!1867639 m!2292963))

(assert (=> b!1867642 m!2292963))

(declare-fun m!2292989 () Bool)

(assert (=> b!1867645 m!2292989))

(assert (=> b!1867570 d!570663))

(declare-fun b!1867646 () Bool)

(declare-fun res!836237 () Bool)

(declare-fun e!1191921 () Bool)

(assert (=> b!1867646 (=> (not res!836237) (not e!1191921))))

(assert (=> b!1867646 (= res!836237 (not (isEmpty!12907 (left!16670 (left!16670 (right!17000 t!4595))))))))

(declare-fun b!1867647 () Bool)

(assert (=> b!1867647 (= e!1191921 (not (isEmpty!12907 (right!17000 (left!16670 (right!17000 t!4595))))))))

(declare-fun b!1867648 () Bool)

(declare-fun res!836240 () Bool)

(assert (=> b!1867648 (=> (not res!836240) (not e!1191921))))

(assert (=> b!1867648 (= res!836240 (isBalanced!2179 (left!16670 (left!16670 (right!17000 t!4595)))))))

(declare-fun d!570665 () Bool)

(declare-fun res!836236 () Bool)

(declare-fun e!1191922 () Bool)

(assert (=> d!570665 (=> res!836236 e!1191922)))

(assert (=> d!570665 (= res!836236 (not ((_ is Node!6878) (left!16670 (right!17000 t!4595)))))))

(assert (=> d!570665 (= (isBalanced!2179 (left!16670 (right!17000 t!4595))) e!1191922)))

(declare-fun b!1867649 () Bool)

(declare-fun res!836239 () Bool)

(assert (=> b!1867649 (=> (not res!836239) (not e!1191921))))

(assert (=> b!1867649 (= res!836239 (isBalanced!2179 (right!17000 (left!16670 (right!17000 t!4595)))))))

(declare-fun b!1867650 () Bool)

(declare-fun res!836238 () Bool)

(assert (=> b!1867650 (=> (not res!836238) (not e!1191921))))

(assert (=> b!1867650 (= res!836238 (<= (- (height!1065 (left!16670 (left!16670 (right!17000 t!4595)))) (height!1065 (right!17000 (left!16670 (right!17000 t!4595))))) 1))))

(declare-fun b!1867651 () Bool)

(assert (=> b!1867651 (= e!1191922 e!1191921)))

(declare-fun res!836235 () Bool)

(assert (=> b!1867651 (=> (not res!836235) (not e!1191921))))

(assert (=> b!1867651 (= res!836235 (<= (- 1) (- (height!1065 (left!16670 (left!16670 (right!17000 t!4595)))) (height!1065 (right!17000 (left!16670 (right!17000 t!4595)))))))))

(assert (= (and d!570665 (not res!836236)) b!1867651))

(assert (= (and b!1867651 res!836235) b!1867650))

(assert (= (and b!1867650 res!836238) b!1867648))

(assert (= (and b!1867648 res!836240) b!1867649))

(assert (= (and b!1867649 res!836239) b!1867646))

(assert (= (and b!1867646 res!836237) b!1867647))

(declare-fun m!2292991 () Bool)

(assert (=> b!1867647 m!2292991))

(declare-fun m!2292993 () Bool)

(assert (=> b!1867649 m!2292993))

(declare-fun m!2292995 () Bool)

(assert (=> b!1867650 m!2292995))

(declare-fun m!2292997 () Bool)

(assert (=> b!1867650 m!2292997))

(declare-fun m!2292999 () Bool)

(assert (=> b!1867646 m!2292999))

(assert (=> b!1867651 m!2292995))

(assert (=> b!1867651 m!2292997))

(declare-fun m!2293001 () Bool)

(assert (=> b!1867648 m!2293001))

(assert (=> b!1867508 d!570665))

(declare-fun b!1867652 () Bool)

(declare-fun e!1191926 () List!20765)

(declare-fun e!1191924 () List!20765)

(assert (=> b!1867652 (= e!1191926 e!1191924)))

(declare-fun c!304243 () Bool)

(assert (=> b!1867652 (= c!304243 (<= (- 1 1) 0))))

(declare-fun b!1867653 () Bool)

(declare-fun e!1191925 () Int)

(declare-fun call!115906 () Int)

(assert (=> b!1867653 (= e!1191925 (- call!115906 (- 1 1)))))

(declare-fun b!1867654 () Bool)

(assert (=> b!1867654 (= e!1191924 (t!172906 lt!718696))))

(declare-fun b!1867655 () Bool)

(assert (=> b!1867655 (= e!1191925 0)))

(declare-fun b!1867656 () Bool)

(declare-fun e!1191923 () Int)

(assert (=> b!1867656 (= e!1191923 e!1191925)))

(declare-fun c!304245 () Bool)

(assert (=> b!1867656 (= c!304245 (>= (- 1 1) call!115906))))

(declare-fun b!1867657 () Bool)

(declare-fun e!1191927 () Bool)

(declare-fun lt!718761 () List!20765)

(assert (=> b!1867657 (= e!1191927 (= (size!16395 lt!718761) e!1191923))))

(declare-fun c!304244 () Bool)

(assert (=> b!1867657 (= c!304244 (<= (- 1 1) 0))))

(declare-fun d!570667 () Bool)

(assert (=> d!570667 e!1191927))

(declare-fun res!836241 () Bool)

(assert (=> d!570667 (=> (not res!836241) (not e!1191927))))

(assert (=> d!570667 (= res!836241 (= ((_ map implies) (content!3079 lt!718761) (content!3079 (t!172906 lt!718696))) ((as const (InoxSet T!33158)) true)))))

(assert (=> d!570667 (= lt!718761 e!1191926)))

(declare-fun c!304242 () Bool)

(assert (=> d!570667 (= c!304242 ((_ is Nil!20683) (t!172906 lt!718696)))))

(assert (=> d!570667 (= (drop!990 (t!172906 lt!718696) (- 1 1)) lt!718761)))

(declare-fun bm!115901 () Bool)

(assert (=> bm!115901 (= call!115906 (size!16395 (t!172906 lt!718696)))))

(declare-fun b!1867658 () Bool)

(assert (=> b!1867658 (= e!1191924 (drop!990 (t!172906 (t!172906 lt!718696)) (- (- 1 1) 1)))))

(declare-fun b!1867659 () Bool)

(assert (=> b!1867659 (= e!1191926 Nil!20683)))

(declare-fun b!1867660 () Bool)

(assert (=> b!1867660 (= e!1191923 call!115906)))

(assert (= (and d!570667 c!304242) b!1867659))

(assert (= (and d!570667 (not c!304242)) b!1867652))

(assert (= (and b!1867652 c!304243) b!1867654))

(assert (= (and b!1867652 (not c!304243)) b!1867658))

(assert (= (and d!570667 res!836241) b!1867657))

(assert (= (and b!1867657 c!304244) b!1867660))

(assert (= (and b!1867657 (not c!304244)) b!1867656))

(assert (= (and b!1867656 c!304245) b!1867655))

(assert (= (and b!1867656 (not c!304245)) b!1867653))

(assert (= (or b!1867660 b!1867656 b!1867653) bm!115901))

(declare-fun m!2293003 () Bool)

(assert (=> b!1867657 m!2293003))

(declare-fun m!2293005 () Bool)

(assert (=> d!570667 m!2293005))

(declare-fun m!2293007 () Bool)

(assert (=> d!570667 m!2293007))

(assert (=> bm!115901 m!2292589))

(declare-fun m!2293009 () Bool)

(assert (=> b!1867658 m!2293009))

(assert (=> b!1867597 d!570667))

(assert (=> d!570585 d!570647))

(declare-fun d!570669 () Bool)

(declare-fun lt!718762 () Int)

(assert (=> d!570669 (= lt!718762 (size!16395 (list!8466 (right!17000 t!4595))))))

(assert (=> d!570669 (= lt!718762 (ite ((_ is Empty!6878) (right!17000 t!4595)) 0 (ite ((_ is Leaf!10085) (right!17000 t!4595)) (csize!13987 (right!17000 t!4595)) (csize!13986 (right!17000 t!4595)))))))

(assert (=> d!570669 (= (size!16399 (right!17000 t!4595)) lt!718762)))

(declare-fun bs!411813 () Bool)

(assert (= bs!411813 d!570669))

(assert (=> bs!411813 m!2292779))

(assert (=> bs!411813 m!2292779))

(declare-fun m!2293011 () Bool)

(assert (=> bs!411813 m!2293011))

(assert (=> d!570585 d!570669))

(declare-fun d!570671 () Bool)

(assert (=> d!570671 (= (max!0 (height!1065 (left!16670 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) (height!1065 (right!17000 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))))) (ite (< (height!1065 (left!16670 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) (height!1065 (right!17000 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))))) (height!1065 (right!17000 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) (height!1065 (left!16670 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))))))))

(assert (=> b!1867522 d!570671))

(declare-fun d!570673 () Bool)

(assert (=> d!570673 (= (height!1065 (left!16670 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) (ite ((_ is Empty!6878) (left!16670 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) 0 (ite ((_ is Leaf!10085) (left!16670 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) 1 (cheight!7089 (left!16670 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))))))))

(assert (=> b!1867522 d!570673))

(declare-fun d!570675 () Bool)

(assert (=> d!570675 (= (height!1065 (right!17000 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) (ite ((_ is Empty!6878) (right!17000 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) 0 (ite ((_ is Leaf!10085) (right!17000 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) 1 (cheight!7089 (right!17000 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))))))))

(assert (=> b!1867522 d!570675))

(declare-fun d!570677 () Bool)

(declare-fun lt!718763 () Bool)

(assert (=> d!570677 (= lt!718763 (isEmpty!12909 (list!8466 (left!16670 (right!17000 t!4595)))))))

(assert (=> d!570677 (= lt!718763 (= (size!16399 (left!16670 (right!17000 t!4595))) 0))))

(assert (=> d!570677 (= (isEmpty!12907 (left!16670 (right!17000 t!4595))) lt!718763)))

(declare-fun bs!411814 () Bool)

(assert (= bs!411814 d!570677))

(declare-fun m!2293013 () Bool)

(assert (=> bs!411814 m!2293013))

(assert (=> bs!411814 m!2293013))

(declare-fun m!2293015 () Bool)

(assert (=> bs!411814 m!2293015))

(assert (=> bs!411814 m!2292895))

(assert (=> b!1867506 d!570677))

(declare-fun d!570679 () Bool)

(declare-fun lt!718764 () Int)

(assert (=> d!570679 (= lt!718764 (size!16395 (list!8466 (left!16670 (right!17000 t!4595)))))))

(assert (=> d!570679 (= lt!718764 (ite ((_ is Empty!6878) (left!16670 (right!17000 t!4595))) 0 (ite ((_ is Leaf!10085) (left!16670 (right!17000 t!4595))) (csize!13987 (left!16670 (right!17000 t!4595))) (csize!13986 (left!16670 (right!17000 t!4595))))))))

(assert (=> d!570679 (= (size!16399 (left!16670 (right!17000 t!4595))) lt!718764)))

(declare-fun bs!411815 () Bool)

(assert (= bs!411815 d!570679))

(assert (=> bs!411815 m!2293013))

(assert (=> bs!411815 m!2293013))

(declare-fun m!2293017 () Bool)

(assert (=> bs!411815 m!2293017))

(assert (=> d!570629 d!570679))

(declare-fun d!570683 () Bool)

(declare-fun lt!718765 () Int)

(assert (=> d!570683 (= lt!718765 (size!16395 (list!8466 (right!17000 (right!17000 t!4595)))))))

(assert (=> d!570683 (= lt!718765 (ite ((_ is Empty!6878) (right!17000 (right!17000 t!4595))) 0 (ite ((_ is Leaf!10085) (right!17000 (right!17000 t!4595))) (csize!13987 (right!17000 (right!17000 t!4595))) (csize!13986 (right!17000 (right!17000 t!4595))))))))

(assert (=> d!570683 (= (size!16399 (right!17000 (right!17000 t!4595))) lt!718765)))

(declare-fun bs!411816 () Bool)

(assert (= bs!411816 d!570683))

(declare-fun m!2293019 () Bool)

(assert (=> bs!411816 m!2293019))

(assert (=> bs!411816 m!2293019))

(declare-fun m!2293021 () Bool)

(assert (=> bs!411816 m!2293021))

(assert (=> d!570629 d!570683))

(assert (=> b!1867340 d!570613))

(assert (=> b!1867340 d!570615))

(declare-fun d!570685 () Bool)

(declare-fun lt!718766 () Int)

(assert (=> d!570685 (>= lt!718766 0)))

(declare-fun e!1191929 () Int)

(assert (=> d!570685 (= lt!718766 e!1191929)))

(declare-fun c!304246 () Bool)

(assert (=> d!570685 (= c!304246 ((_ is Nil!20683) (list!8464 (xs!9760 t!4595))))))

(assert (=> d!570685 (= (size!16395 (list!8464 (xs!9760 t!4595))) lt!718766)))

(declare-fun b!1867664 () Bool)

(assert (=> b!1867664 (= e!1191929 0)))

(declare-fun b!1867665 () Bool)

(assert (=> b!1867665 (= e!1191929 (+ 1 (size!16395 (t!172906 (list!8464 (xs!9760 t!4595))))))))

(assert (= (and d!570685 c!304246) b!1867664))

(assert (= (and d!570685 (not c!304246)) b!1867665))

(declare-fun m!2293023 () Bool)

(assert (=> b!1867665 m!2293023))

(assert (=> b!1867532 d!570685))

(assert (=> b!1867532 d!570491))

(declare-fun d!570687 () Bool)

(declare-fun lt!718767 () Int)

(assert (=> d!570687 (>= lt!718767 0)))

(declare-fun e!1191930 () Int)

(assert (=> d!570687 (= lt!718767 e!1191930)))

(declare-fun c!304247 () Bool)

(assert (=> d!570687 (= c!304247 ((_ is Nil!20683) (list!8464 (xs!9760 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))))))))

(assert (=> d!570687 (= (size!16395 (list!8464 (xs!9760 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))))) lt!718767)))

(declare-fun b!1867666 () Bool)

(assert (=> b!1867666 (= e!1191930 0)))

(declare-fun b!1867667 () Bool)

(assert (=> b!1867667 (= e!1191930 (+ 1 (size!16395 (t!172906 (list!8464 (xs!9760 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1))))))))))

(assert (= (and d!570687 c!304247) b!1867666))

(assert (= (and d!570687 (not c!304247)) b!1867667))

(declare-fun m!2293025 () Bool)

(assert (=> b!1867667 m!2293025))

(assert (=> b!1867528 d!570687))

(declare-fun d!570689 () Bool)

(assert (=> d!570689 (= (list!8464 (xs!9760 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))) (innerList!6938 (xs!9760 (Leaf!10085 (slice!576 (xs!9760 t!4595) 1 (csize!13987 t!4595)) (- (csize!13987 t!4595) 1)))))))

(assert (=> b!1867528 d!570689))

(declare-fun d!570691 () Bool)

(declare-fun lt!718768 () Int)

(assert (=> d!570691 (= lt!718768 (size!16395 (list!8466 (left!16670 (left!16670 t!4595)))))))

(assert (=> d!570691 (= lt!718768 (ite ((_ is Empty!6878) (left!16670 (left!16670 t!4595))) 0 (ite ((_ is Leaf!10085) (left!16670 (left!16670 t!4595))) (csize!13987 (left!16670 (left!16670 t!4595))) (csize!13986 (left!16670 (left!16670 t!4595))))))))

(assert (=> d!570691 (= (size!16399 (left!16670 (left!16670 t!4595))) lt!718768)))

(declare-fun bs!411817 () Bool)

(assert (= bs!411817 d!570691))

(assert (=> bs!411817 m!2292955))

(assert (=> bs!411817 m!2292955))

(declare-fun m!2293037 () Bool)

(assert (=> bs!411817 m!2293037))

(assert (=> d!570519 d!570691))

(declare-fun d!570695 () Bool)

(declare-fun lt!718769 () Int)

(assert (=> d!570695 (= lt!718769 (size!16395 (list!8466 (right!17000 (left!16670 t!4595)))))))

(assert (=> d!570695 (= lt!718769 (ite ((_ is Empty!6878) (right!17000 (left!16670 t!4595))) 0 (ite ((_ is Leaf!10085) (right!17000 (left!16670 t!4595))) (csize!13987 (right!17000 (left!16670 t!4595))) (csize!13986 (right!17000 (left!16670 t!4595))))))))

(assert (=> d!570695 (= (size!16399 (right!17000 (left!16670 t!4595))) lt!718769)))

(declare-fun bs!411818 () Bool)

(assert (= bs!411818 d!570695))

(assert (=> bs!411818 m!2292957))

(assert (=> bs!411818 m!2292957))

(declare-fun m!2293039 () Bool)

(assert (=> bs!411818 m!2293039))

(assert (=> d!570519 d!570695))

(declare-fun d!570699 () Bool)

(assert (=> d!570699 (= (isEmpty!12909 (list!8466 (right!17000 t!4595))) ((_ is Nil!20683) (list!8466 (right!17000 t!4595))))))

(assert (=> d!570595 d!570699))

(declare-fun b!1867672 () Bool)

(declare-fun e!1191933 () List!20765)

(assert (=> b!1867672 (= e!1191933 Nil!20683)))

(declare-fun b!1867674 () Bool)

(declare-fun e!1191934 () List!20765)

(assert (=> b!1867674 (= e!1191934 (list!8464 (xs!9760 (right!17000 t!4595))))))

(declare-fun d!570701 () Bool)

(declare-fun c!304250 () Bool)

(assert (=> d!570701 (= c!304250 ((_ is Empty!6878) (right!17000 t!4595)))))

(assert (=> d!570701 (= (list!8466 (right!17000 t!4595)) e!1191933)))

(declare-fun b!1867673 () Bool)

(assert (=> b!1867673 (= e!1191933 e!1191934)))

(declare-fun c!304251 () Bool)

(assert (=> b!1867673 (= c!304251 ((_ is Leaf!10085) (right!17000 t!4595)))))

(declare-fun b!1867675 () Bool)

(assert (=> b!1867675 (= e!1191934 (++!5605 (list!8466 (left!16670 (right!17000 t!4595))) (list!8466 (right!17000 (right!17000 t!4595)))))))

(assert (= (and d!570701 c!304250) b!1867672))

(assert (= (and d!570701 (not c!304250)) b!1867673))

(assert (= (and b!1867673 c!304251) b!1867674))

(assert (= (and b!1867673 (not c!304251)) b!1867675))

(assert (=> b!1867674 m!2292889))

(assert (=> b!1867675 m!2293013))

(assert (=> b!1867675 m!2293019))

(assert (=> b!1867675 m!2293013))

(assert (=> b!1867675 m!2293019))

(declare-fun m!2293045 () Bool)

(assert (=> b!1867675 m!2293045))

(assert (=> d!570595 d!570701))

(assert (=> d!570595 d!570669))

(declare-fun b!1867676 () Bool)

(declare-fun res!836247 () Bool)

(declare-fun e!1191935 () Bool)

(assert (=> b!1867676 (=> (not res!836247) (not e!1191935))))

(assert (=> b!1867676 (= res!836247 (not (isEmpty!12907 (left!16670 (right!17000 (right!17000 t!4595))))))))

(declare-fun b!1867677 () Bool)

(assert (=> b!1867677 (= e!1191935 (not (isEmpty!12907 (right!17000 (right!17000 (right!17000 t!4595))))))))

(declare-fun b!1867678 () Bool)

(declare-fun res!836250 () Bool)

(assert (=> b!1867678 (=> (not res!836250) (not e!1191935))))

(assert (=> b!1867678 (= res!836250 (isBalanced!2179 (left!16670 (right!17000 (right!17000 t!4595)))))))

(declare-fun d!570703 () Bool)

(declare-fun res!836246 () Bool)

(declare-fun e!1191936 () Bool)

(assert (=> d!570703 (=> res!836246 e!1191936)))

(assert (=> d!570703 (= res!836246 (not ((_ is Node!6878) (right!17000 (right!17000 t!4595)))))))

(assert (=> d!570703 (= (isBalanced!2179 (right!17000 (right!17000 t!4595))) e!1191936)))

(declare-fun b!1867679 () Bool)

(declare-fun res!836249 () Bool)

(assert (=> b!1867679 (=> (not res!836249) (not e!1191935))))

(assert (=> b!1867679 (= res!836249 (isBalanced!2179 (right!17000 (right!17000 (right!17000 t!4595)))))))

(declare-fun b!1867680 () Bool)

(declare-fun res!836248 () Bool)

(assert (=> b!1867680 (=> (not res!836248) (not e!1191935))))

(assert (=> b!1867680 (= res!836248 (<= (- (height!1065 (left!16670 (right!17000 (right!17000 t!4595)))) (height!1065 (right!17000 (right!17000 (right!17000 t!4595))))) 1))))

(declare-fun b!1867681 () Bool)

(assert (=> b!1867681 (= e!1191936 e!1191935)))

(declare-fun res!836245 () Bool)

(assert (=> b!1867681 (=> (not res!836245) (not e!1191935))))

(assert (=> b!1867681 (= res!836245 (<= (- 1) (- (height!1065 (left!16670 (right!17000 (right!17000 t!4595)))) (height!1065 (right!17000 (right!17000 (right!17000 t!4595)))))))))

(assert (= (and d!570703 (not res!836246)) b!1867681))

(assert (= (and b!1867681 res!836245) b!1867680))

(assert (= (and b!1867680 res!836248) b!1867678))

(assert (= (and b!1867678 res!836250) b!1867679))

(assert (= (and b!1867679 res!836249) b!1867676))

(assert (= (and b!1867676 res!836247) b!1867677))

(declare-fun m!2293051 () Bool)

(assert (=> b!1867677 m!2293051))

(declare-fun m!2293053 () Bool)

(assert (=> b!1867679 m!2293053))

(declare-fun m!2293055 () Bool)

(assert (=> b!1867680 m!2293055))

(declare-fun m!2293057 () Bool)

(assert (=> b!1867680 m!2293057))

(declare-fun m!2293059 () Bool)

(assert (=> b!1867676 m!2293059))

(assert (=> b!1867681 m!2293055))

(assert (=> b!1867681 m!2293057))

(declare-fun m!2293061 () Bool)

(assert (=> b!1867678 m!2293061))

(assert (=> b!1867509 d!570703))

(assert (=> b!1867479 d!570491))

(declare-fun d!570709 () Bool)

(declare-fun res!836251 () Bool)

(declare-fun e!1191937 () Bool)

(assert (=> d!570709 (=> (not res!836251) (not e!1191937))))

(assert (=> d!570709 (= res!836251 (<= (size!16395 (list!8464 (xs!9760 (left!16670 (right!17000 t!4595))))) 512))))

(assert (=> d!570709 (= (inv!27390 (left!16670 (right!17000 t!4595))) e!1191937)))

(declare-fun b!1867682 () Bool)

(declare-fun res!836252 () Bool)

(assert (=> b!1867682 (=> (not res!836252) (not e!1191937))))

(assert (=> b!1867682 (= res!836252 (= (csize!13987 (left!16670 (right!17000 t!4595))) (size!16395 (list!8464 (xs!9760 (left!16670 (right!17000 t!4595)))))))))

(declare-fun b!1867683 () Bool)

(assert (=> b!1867683 (= e!1191937 (and (> (csize!13987 (left!16670 (right!17000 t!4595))) 0) (<= (csize!13987 (left!16670 (right!17000 t!4595))) 512)))))

(assert (= (and d!570709 res!836251) b!1867682))

(assert (= (and b!1867682 res!836252) b!1867683))

(declare-fun m!2293063 () Bool)

(assert (=> d!570709 m!2293063))

(assert (=> d!570709 m!2293063))

(declare-fun m!2293065 () Bool)

(assert (=> d!570709 m!2293065))

(assert (=> b!1867682 m!2293063))

(assert (=> b!1867682 m!2293063))

(assert (=> b!1867682 m!2293065))

(assert (=> b!1867536 d!570709))

(declare-fun d!570711 () Bool)

(declare-fun c!304252 () Bool)

(assert (=> d!570711 (= c!304252 ((_ is Node!6878) (left!16670 (right!17000 (right!17000 t!4595)))))))

(declare-fun e!1191938 () Bool)

(assert (=> d!570711 (= (inv!27386 (left!16670 (right!17000 (right!17000 t!4595)))) e!1191938)))

(declare-fun b!1867684 () Bool)

(assert (=> b!1867684 (= e!1191938 (inv!27389 (left!16670 (right!17000 (right!17000 t!4595)))))))

(declare-fun b!1867685 () Bool)

(declare-fun e!1191939 () Bool)

(assert (=> b!1867685 (= e!1191938 e!1191939)))

(declare-fun res!836253 () Bool)

(assert (=> b!1867685 (= res!836253 (not ((_ is Leaf!10085) (left!16670 (right!17000 (right!17000 t!4595))))))))

(assert (=> b!1867685 (=> res!836253 e!1191939)))

(declare-fun b!1867686 () Bool)

(assert (=> b!1867686 (= e!1191939 (inv!27390 (left!16670 (right!17000 (right!17000 t!4595)))))))

(assert (= (and d!570711 c!304252) b!1867684))

(assert (= (and d!570711 (not c!304252)) b!1867685))

(assert (= (and b!1867685 (not res!836253)) b!1867686))

(declare-fun m!2293067 () Bool)

(assert (=> b!1867684 m!2293067))

(declare-fun m!2293069 () Bool)

(assert (=> b!1867686 m!2293069))

(assert (=> b!1867603 d!570711))

(declare-fun d!570713 () Bool)

(declare-fun c!304253 () Bool)

(assert (=> d!570713 (= c!304253 ((_ is Node!6878) (right!17000 (right!17000 (right!17000 t!4595)))))))

(declare-fun e!1191940 () Bool)

(assert (=> d!570713 (= (inv!27386 (right!17000 (right!17000 (right!17000 t!4595)))) e!1191940)))

(declare-fun b!1867687 () Bool)

(assert (=> b!1867687 (= e!1191940 (inv!27389 (right!17000 (right!17000 (right!17000 t!4595)))))))

(declare-fun b!1867688 () Bool)

(declare-fun e!1191941 () Bool)

(assert (=> b!1867688 (= e!1191940 e!1191941)))

(declare-fun res!836254 () Bool)

(assert (=> b!1867688 (= res!836254 (not ((_ is Leaf!10085) (right!17000 (right!17000 (right!17000 t!4595))))))))

(assert (=> b!1867688 (=> res!836254 e!1191941)))

(declare-fun b!1867689 () Bool)

(assert (=> b!1867689 (= e!1191941 (inv!27390 (right!17000 (right!17000 (right!17000 t!4595)))))))

(assert (= (and d!570713 c!304253) b!1867687))

(assert (= (and d!570713 (not c!304253)) b!1867688))

(assert (= (and b!1867688 (not res!836254)) b!1867689))

(declare-fun m!2293071 () Bool)

(assert (=> b!1867687 m!2293071))

(declare-fun m!2293073 () Bool)

(assert (=> b!1867689 m!2293073))

(assert (=> b!1867603 d!570713))

(declare-fun d!570715 () Bool)

(assert (=> d!570715 (= (height!1065 (left!16670 (right!17000 t!4595))) (ite ((_ is Empty!6878) (left!16670 (right!17000 t!4595))) 0 (ite ((_ is Leaf!10085) (left!16670 (right!17000 t!4595))) 1 (cheight!7089 (left!16670 (right!17000 t!4595))))))))

(assert (=> b!1867511 d!570715))

(declare-fun d!570717 () Bool)

(assert (=> d!570717 (= (height!1065 (right!17000 (right!17000 t!4595))) (ite ((_ is Empty!6878) (right!17000 (right!17000 t!4595))) 0 (ite ((_ is Leaf!10085) (right!17000 (right!17000 t!4595))) 1 (cheight!7089 (right!17000 (right!17000 t!4595))))))))

(assert (=> b!1867511 d!570717))

(declare-fun b!1867706 () Bool)

(declare-fun e!1191950 () List!20765)

(assert (=> b!1867706 (= e!1191950 (list!8466 (right!17000 t!4595)))))

(declare-fun b!1867707 () Bool)

(assert (=> b!1867707 (= e!1191950 (Cons!20683 (h!26084 (list!8466 (left!16670 t!4595))) (++!5605 (t!172906 (list!8466 (left!16670 t!4595))) (list!8466 (right!17000 t!4595)))))))

(declare-fun d!570719 () Bool)

(declare-fun e!1191951 () Bool)

(assert (=> d!570719 e!1191951))

(declare-fun res!836263 () Bool)

(assert (=> d!570719 (=> (not res!836263) (not e!1191951))))

(declare-fun lt!718775 () List!20765)

(assert (=> d!570719 (= res!836263 (= (content!3079 lt!718775) ((_ map or) (content!3079 (list!8466 (left!16670 t!4595))) (content!3079 (list!8466 (right!17000 t!4595))))))))

(assert (=> d!570719 (= lt!718775 e!1191950)))

(declare-fun c!304258 () Bool)

(assert (=> d!570719 (= c!304258 ((_ is Nil!20683) (list!8466 (left!16670 t!4595))))))

(assert (=> d!570719 (= (++!5605 (list!8466 (left!16670 t!4595)) (list!8466 (right!17000 t!4595))) lt!718775)))

(declare-fun b!1867708 () Bool)

(declare-fun res!836264 () Bool)

(assert (=> b!1867708 (=> (not res!836264) (not e!1191951))))

(assert (=> b!1867708 (= res!836264 (= (size!16395 lt!718775) (+ (size!16395 (list!8466 (left!16670 t!4595))) (size!16395 (list!8466 (right!17000 t!4595))))))))

(declare-fun b!1867709 () Bool)

(assert (=> b!1867709 (= e!1191951 (or (not (= (list!8466 (right!17000 t!4595)) Nil!20683)) (= lt!718775 (list!8466 (left!16670 t!4595)))))))

(assert (= (and d!570719 c!304258) b!1867706))

(assert (= (and d!570719 (not c!304258)) b!1867707))

(assert (= (and d!570719 res!836263) b!1867708))

(assert (= (and b!1867708 res!836264) b!1867709))

(assert (=> b!1867707 m!2292779))

(declare-fun m!2293075 () Bool)

(assert (=> b!1867707 m!2293075))

(declare-fun m!2293077 () Bool)

(assert (=> d!570719 m!2293077))

(assert (=> d!570719 m!2292777))

(declare-fun m!2293079 () Bool)

(assert (=> d!570719 m!2293079))

(assert (=> d!570719 m!2292779))

(declare-fun m!2293081 () Bool)

(assert (=> d!570719 m!2293081))

(declare-fun m!2293083 () Bool)

(assert (=> b!1867708 m!2293083))

(assert (=> b!1867708 m!2292777))

(assert (=> b!1867708 m!2292961))

(assert (=> b!1867708 m!2292779))

(assert (=> b!1867708 m!2293011))

(assert (=> b!1867481 d!570719))

(assert (=> b!1867481 d!570645))

(assert (=> b!1867481 d!570701))

(declare-fun d!570721 () Bool)

(declare-fun lt!718777 () Int)

(assert (=> d!570721 (>= lt!718777 0)))

(declare-fun e!1191954 () Int)

(assert (=> d!570721 (= lt!718777 e!1191954)))

(declare-fun c!304260 () Bool)

(assert (=> d!570721 (= c!304260 ((_ is Nil!20683) (list!8464 (xs!9760 (right!17000 t!4595)))))))

(assert (=> d!570721 (= (size!16395 (list!8464 (xs!9760 (right!17000 t!4595)))) lt!718777)))

(declare-fun b!1867714 () Bool)

(assert (=> b!1867714 (= e!1191954 0)))

(declare-fun b!1867715 () Bool)

(assert (=> b!1867715 (= e!1191954 (+ 1 (size!16395 (t!172906 (list!8464 (xs!9760 (right!17000 t!4595)))))))))

(assert (= (and d!570721 c!304260) b!1867714))

(assert (= (and d!570721 (not c!304260)) b!1867715))

(declare-fun m!2293085 () Bool)

(assert (=> b!1867715 m!2293085))

(assert (=> b!1867545 d!570721))

(declare-fun d!570723 () Bool)

(assert (=> d!570723 (= (list!8464 (xs!9760 (right!17000 t!4595))) (innerList!6938 (xs!9760 (right!17000 t!4595))))))

(assert (=> b!1867545 d!570723))

(assert (=> d!570607 d!570685))

(assert (=> d!570607 d!570491))

(declare-fun d!570725 () Bool)

(declare-fun _$1!10121 () Int)

(assert (=> d!570725 (= _$1!10121 (size!16395 (list!8464 (xs!9760 t!4595))))))

(assert (=> d!570725 true))

(assert (=> d!570725 (= (choose!11740 (xs!9760 t!4595)) _$1!10121)))

(declare-fun bs!411820 () Bool)

(assert (= bs!411820 d!570725))

(assert (=> bs!411820 m!2292511))

(assert (=> bs!411820 m!2292511))

(assert (=> bs!411820 m!2292867))

(assert (=> d!570607 d!570725))

(assert (=> d!570599 d!570687))

(assert (=> d!570599 d!570689))

(declare-fun d!570729 () Bool)

(assert (=> d!570729 (= (height!1065 (left!16670 (left!16670 t!4595))) (ite ((_ is Empty!6878) (left!16670 (left!16670 t!4595))) 0 (ite ((_ is Leaf!10085) (left!16670 (left!16670 t!4595))) 1 (cheight!7089 (left!16670 (left!16670 t!4595))))))))

(assert (=> b!1867441 d!570729))

(declare-fun d!570733 () Bool)

(assert (=> d!570733 (= (height!1065 (right!17000 (left!16670 t!4595))) (ite ((_ is Empty!6878) (right!17000 (left!16670 t!4595))) 0 (ite ((_ is Leaf!10085) (right!17000 (left!16670 t!4595))) 1 (cheight!7089 (right!17000 (left!16670 t!4595))))))))

(assert (=> b!1867441 d!570733))

(declare-fun d!570735 () Bool)

(declare-fun lt!718779 () Bool)

(assert (=> d!570735 (= lt!718779 (isEmpty!12909 (list!8466 (left!16670 (left!16670 t!4595)))))))

(assert (=> d!570735 (= lt!718779 (= (size!16399 (left!16670 (left!16670 t!4595))) 0))))

(assert (=> d!570735 (= (isEmpty!12907 (left!16670 (left!16670 t!4595))) lt!718779)))

(declare-fun bs!411821 () Bool)

(assert (= bs!411821 d!570735))

(assert (=> bs!411821 m!2292955))

(assert (=> bs!411821 m!2292955))

(declare-fun m!2293107 () Bool)

(assert (=> bs!411821 m!2293107))

(assert (=> bs!411821 m!2292715))

(assert (=> b!1867437 d!570735))

(declare-fun d!570739 () Bool)

(declare-fun lt!718780 () Int)

(assert (=> d!570739 (>= lt!718780 0)))

(declare-fun e!1191958 () Int)

(assert (=> d!570739 (= lt!718780 e!1191958)))

(declare-fun c!304264 () Bool)

(assert (=> d!570739 (= c!304264 ((_ is Nil!20683) (list!8466 t!4595)))))

(assert (=> d!570739 (= (size!16395 (list!8466 t!4595)) lt!718780)))

(declare-fun b!1867722 () Bool)

(assert (=> b!1867722 (= e!1191958 0)))

(declare-fun b!1867723 () Bool)

(assert (=> b!1867723 (= e!1191958 (+ 1 (size!16395 (t!172906 (list!8466 t!4595)))))))

(assert (= (and d!570739 c!304264) b!1867722))

(assert (= (and d!570739 (not c!304264)) b!1867723))

(declare-fun m!2293111 () Bool)

(assert (=> b!1867723 m!2293111))

(assert (=> d!570579 d!570739))

(assert (=> d!570579 d!570561))

(declare-fun b!1867724 () Bool)

(declare-fun res!836269 () Bool)

(declare-fun e!1191959 () Bool)

(assert (=> b!1867724 (=> (not res!836269) (not e!1191959))))

(assert (=> b!1867724 (= res!836269 (not (isEmpty!12907 (left!16670 (left!16670 (left!16670 t!4595))))))))

(declare-fun b!1867725 () Bool)

(assert (=> b!1867725 (= e!1191959 (not (isEmpty!12907 (right!17000 (left!16670 (left!16670 t!4595))))))))

(declare-fun b!1867726 () Bool)

(declare-fun res!836272 () Bool)

(assert (=> b!1867726 (=> (not res!836272) (not e!1191959))))

(assert (=> b!1867726 (= res!836272 (isBalanced!2179 (left!16670 (left!16670 (left!16670 t!4595)))))))

(declare-fun d!570743 () Bool)

(declare-fun res!836268 () Bool)

(declare-fun e!1191960 () Bool)

(assert (=> d!570743 (=> res!836268 e!1191960)))

(assert (=> d!570743 (= res!836268 (not ((_ is Node!6878) (left!16670 (left!16670 t!4595)))))))

(assert (=> d!570743 (= (isBalanced!2179 (left!16670 (left!16670 t!4595))) e!1191960)))

(declare-fun b!1867727 () Bool)

(declare-fun res!836271 () Bool)

(assert (=> b!1867727 (=> (not res!836271) (not e!1191959))))

(assert (=> b!1867727 (= res!836271 (isBalanced!2179 (right!17000 (left!16670 (left!16670 t!4595)))))))

(declare-fun b!1867728 () Bool)

(declare-fun res!836270 () Bool)

(assert (=> b!1867728 (=> (not res!836270) (not e!1191959))))

(assert (=> b!1867728 (= res!836270 (<= (- (height!1065 (left!16670 (left!16670 (left!16670 t!4595)))) (height!1065 (right!17000 (left!16670 (left!16670 t!4595))))) 1))))

(declare-fun b!1867729 () Bool)

(assert (=> b!1867729 (= e!1191960 e!1191959)))

(declare-fun res!836267 () Bool)

(assert (=> b!1867729 (=> (not res!836267) (not e!1191959))))

(assert (=> b!1867729 (= res!836267 (<= (- 1) (- (height!1065 (left!16670 (left!16670 (left!16670 t!4595)))) (height!1065 (right!17000 (left!16670 (left!16670 t!4595)))))))))

(assert (= (and d!570743 (not res!836268)) b!1867729))

(assert (= (and b!1867729 res!836267) b!1867728))

(assert (= (and b!1867728 res!836270) b!1867726))

(assert (= (and b!1867726 res!836272) b!1867727))

(assert (= (and b!1867727 res!836271) b!1867724))

(assert (= (and b!1867724 res!836269) b!1867725))

(declare-fun m!2293121 () Bool)

(assert (=> b!1867725 m!2293121))

(declare-fun m!2293123 () Bool)

(assert (=> b!1867727 m!2293123))

(declare-fun m!2293125 () Bool)

(assert (=> b!1867728 m!2293125))

(declare-fun m!2293127 () Bool)

(assert (=> b!1867728 m!2293127))

(declare-fun m!2293129 () Bool)

(assert (=> b!1867724 m!2293129))

(assert (=> b!1867729 m!2293125))

(assert (=> b!1867729 m!2293127))

(declare-fun m!2293131 () Bool)

(assert (=> b!1867726 m!2293131))

(assert (=> b!1867439 d!570743))

(declare-fun d!570749 () Bool)

(declare-fun res!836273 () Bool)

(declare-fun e!1191961 () Bool)

(assert (=> d!570749 (=> (not res!836273) (not e!1191961))))

(assert (=> d!570749 (= res!836273 (<= (size!16395 (list!8464 (xs!9760 (right!17000 (right!17000 t!4595))))) 512))))

(assert (=> d!570749 (= (inv!27390 (right!17000 (right!17000 t!4595))) e!1191961)))

(declare-fun b!1867730 () Bool)

(declare-fun res!836274 () Bool)

(assert (=> b!1867730 (=> (not res!836274) (not e!1191961))))

(assert (=> b!1867730 (= res!836274 (= (csize!13987 (right!17000 (right!17000 t!4595))) (size!16395 (list!8464 (xs!9760 (right!17000 (right!17000 t!4595)))))))))

(declare-fun b!1867731 () Bool)

(assert (=> b!1867731 (= e!1191961 (and (> (csize!13987 (right!17000 (right!17000 t!4595))) 0) (<= (csize!13987 (right!17000 (right!17000 t!4595))) 512)))))

(assert (= (and d!570749 res!836273) b!1867730))

(assert (= (and b!1867730 res!836274) b!1867731))

(declare-fun m!2293133 () Bool)

(assert (=> d!570749 m!2293133))

(assert (=> d!570749 m!2293133))

(declare-fun m!2293135 () Bool)

(assert (=> d!570749 m!2293135))

(assert (=> b!1867730 m!2293133))

(assert (=> b!1867730 m!2293133))

(assert (=> b!1867730 m!2293135))

(assert (=> b!1867539 d!570749))

(declare-fun d!570751 () Bool)

(declare-fun res!836275 () Bool)

(declare-fun e!1191962 () Bool)

(assert (=> d!570751 (=> (not res!836275) (not e!1191962))))

(assert (=> d!570751 (= res!836275 (= (csize!13986 (left!16670 (left!16670 t!4595))) (+ (size!16399 (left!16670 (left!16670 (left!16670 t!4595)))) (size!16399 (right!17000 (left!16670 (left!16670 t!4595)))))))))

(assert (=> d!570751 (= (inv!27389 (left!16670 (left!16670 t!4595))) e!1191962)))

(declare-fun b!1867732 () Bool)

(declare-fun res!836276 () Bool)

(assert (=> b!1867732 (=> (not res!836276) (not e!1191962))))

(assert (=> b!1867732 (= res!836276 (and (not (= (left!16670 (left!16670 (left!16670 t!4595))) Empty!6878)) (not (= (right!17000 (left!16670 (left!16670 t!4595))) Empty!6878))))))

(declare-fun b!1867733 () Bool)

(declare-fun res!836277 () Bool)

(assert (=> b!1867733 (=> (not res!836277) (not e!1191962))))

(assert (=> b!1867733 (= res!836277 (= (cheight!7089 (left!16670 (left!16670 t!4595))) (+ (max!0 (height!1065 (left!16670 (left!16670 (left!16670 t!4595)))) (height!1065 (right!17000 (left!16670 (left!16670 t!4595))))) 1)))))

(declare-fun b!1867734 () Bool)

(assert (=> b!1867734 (= e!1191962 (<= 0 (cheight!7089 (left!16670 (left!16670 t!4595)))))))

(assert (= (and d!570751 res!836275) b!1867732))

(assert (= (and b!1867732 res!836276) b!1867733))

(assert (= (and b!1867733 res!836277) b!1867734))

(declare-fun m!2293137 () Bool)

(assert (=> d!570751 m!2293137))

(declare-fun m!2293139 () Bool)

(assert (=> d!570751 m!2293139))

(assert (=> b!1867733 m!2293125))

(assert (=> b!1867733 m!2293127))

(assert (=> b!1867733 m!2293125))

(assert (=> b!1867733 m!2293127))

(declare-fun m!2293141 () Bool)

(assert (=> b!1867733 m!2293141))

(assert (=> b!1867515 d!570751))

(declare-fun d!570755 () Bool)

(declare-fun lt!718783 () Int)

(assert (=> d!570755 (>= lt!718783 0)))

(declare-fun e!1191963 () Int)

(assert (=> d!570755 (= lt!718783 e!1191963)))

(declare-fun c!304265 () Bool)

(assert (=> d!570755 (= c!304265 ((_ is Nil!20683) (list!8464 (xs!9760 (left!16670 t!4595)))))))

(assert (=> d!570755 (= (size!16395 (list!8464 (xs!9760 (left!16670 t!4595)))) lt!718783)))

(declare-fun b!1867735 () Bool)

(assert (=> b!1867735 (= e!1191963 0)))

(declare-fun b!1867736 () Bool)

(assert (=> b!1867736 (= e!1191963 (+ 1 (size!16395 (t!172906 (list!8464 (xs!9760 (left!16670 t!4595)))))))))

(assert (= (and d!570755 c!304265) b!1867735))

(assert (= (and d!570755 (not c!304265)) b!1867736))

(declare-fun m!2293143 () Bool)

(assert (=> b!1867736 m!2293143))

(assert (=> b!1867530 d!570755))

(declare-fun d!570761 () Bool)

(assert (=> d!570761 (= (list!8464 (xs!9760 (left!16670 t!4595))) (innerList!6938 (xs!9760 (left!16670 t!4595))))))

(assert (=> b!1867530 d!570761))

(declare-fun d!570763 () Bool)

(declare-fun lt!718784 () Int)

(assert (=> d!570763 (>= lt!718784 0)))

(declare-fun e!1191966 () Int)

(assert (=> d!570763 (= lt!718784 e!1191966)))

(declare-fun c!304267 () Bool)

(assert (=> d!570763 (= c!304267 ((_ is Nil!20683) (t!172906 (innerList!6938 (xs!9760 t!4595)))))))

(assert (=> d!570763 (= (size!16395 (t!172906 (innerList!6938 (xs!9760 t!4595)))) lt!718784)))

(declare-fun b!1867740 () Bool)

(assert (=> b!1867740 (= e!1191966 0)))

(declare-fun b!1867741 () Bool)

(assert (=> b!1867741 (= e!1191966 (+ 1 (size!16395 (t!172906 (t!172906 (innerList!6938 (xs!9760 t!4595)))))))))

(assert (= (and d!570763 c!304267) b!1867740))

(assert (= (and d!570763 (not c!304267)) b!1867741))

(declare-fun m!2293145 () Bool)

(assert (=> b!1867741 m!2293145))

(assert (=> b!1867544 d!570763))

(declare-fun d!570765 () Bool)

(declare-fun c!304268 () Bool)

(assert (=> d!570765 (= c!304268 ((_ is Node!6878) (left!16670 (left!16670 (right!17000 t!4595)))))))

(declare-fun e!1191967 () Bool)

(assert (=> d!570765 (= (inv!27386 (left!16670 (left!16670 (right!17000 t!4595)))) e!1191967)))

(declare-fun b!1867742 () Bool)

(assert (=> b!1867742 (= e!1191967 (inv!27389 (left!16670 (left!16670 (right!17000 t!4595)))))))

(declare-fun b!1867743 () Bool)

(declare-fun e!1191968 () Bool)

(assert (=> b!1867743 (= e!1191967 e!1191968)))

(declare-fun res!836279 () Bool)

(assert (=> b!1867743 (= res!836279 (not ((_ is Leaf!10085) (left!16670 (left!16670 (right!17000 t!4595))))))))

(assert (=> b!1867743 (=> res!836279 e!1191968)))

(declare-fun b!1867744 () Bool)

(assert (=> b!1867744 (= e!1191968 (inv!27390 (left!16670 (left!16670 (right!17000 t!4595)))))))

(assert (= (and d!570765 c!304268) b!1867742))

(assert (= (and d!570765 (not c!304268)) b!1867743))

(assert (= (and b!1867743 (not res!836279)) b!1867744))

(declare-fun m!2293151 () Bool)

(assert (=> b!1867742 m!2293151))

(declare-fun m!2293153 () Bool)

(assert (=> b!1867744 m!2293153))

(assert (=> b!1867600 d!570765))

(declare-fun d!570769 () Bool)

(declare-fun c!304270 () Bool)

(assert (=> d!570769 (= c!304270 ((_ is Node!6878) (right!17000 (left!16670 (right!17000 t!4595)))))))

(declare-fun e!1191971 () Bool)

(assert (=> d!570769 (= (inv!27386 (right!17000 (left!16670 (right!17000 t!4595)))) e!1191971)))

(declare-fun b!1867748 () Bool)

(assert (=> b!1867748 (= e!1191971 (inv!27389 (right!17000 (left!16670 (right!17000 t!4595)))))))

(declare-fun b!1867749 () Bool)

(declare-fun e!1191972 () Bool)

(assert (=> b!1867749 (= e!1191971 e!1191972)))

(declare-fun res!836281 () Bool)

(assert (=> b!1867749 (= res!836281 (not ((_ is Leaf!10085) (right!17000 (left!16670 (right!17000 t!4595))))))))

(assert (=> b!1867749 (=> res!836281 e!1191972)))

(declare-fun b!1867750 () Bool)

(assert (=> b!1867750 (= e!1191972 (inv!27390 (right!17000 (left!16670 (right!17000 t!4595)))))))

(assert (= (and d!570769 c!304270) b!1867748))

(assert (= (and d!570769 (not c!304270)) b!1867749))

(assert (= (and b!1867749 (not res!836281)) b!1867750))

(declare-fun m!2293159 () Bool)

(assert (=> b!1867748 m!2293159))

(declare-fun m!2293161 () Bool)

(assert (=> b!1867750 m!2293161))

(assert (=> b!1867600 d!570769))

(assert (=> b!1867337 d!570587))

(assert (=> b!1867337 d!570589))

(assert (=> d!570601 d!570755))

(assert (=> d!570601 d!570761))

(assert (=> bm!115900 d!570493))

(declare-fun d!570773 () Bool)

(declare-fun c!304272 () Bool)

(assert (=> d!570773 (= c!304272 ((_ is Nil!20683) lt!718753))))

(declare-fun e!1191974 () (InoxSet T!33158))

(assert (=> d!570773 (= (content!3079 lt!718753) e!1191974)))

(declare-fun b!1867753 () Bool)

(assert (=> b!1867753 (= e!1191974 ((as const (Array T!33158 Bool)) false))))

(declare-fun b!1867754 () Bool)

(assert (=> b!1867754 (= e!1191974 ((_ map or) (store ((as const (Array T!33158 Bool)) false) (h!26084 lt!718753) true) (content!3079 (t!172906 lt!718753))))))

(assert (= (and d!570773 c!304272) b!1867753))

(assert (= (and d!570773 (not c!304272)) b!1867754))

(declare-fun m!2293165 () Bool)

(assert (=> b!1867754 m!2293165))

(declare-fun m!2293167 () Bool)

(assert (=> b!1867754 m!2293167))

(assert (=> d!570633 d!570773))

(declare-fun d!570777 () Bool)

(declare-fun c!304274 () Bool)

(assert (=> d!570777 (= c!304274 ((_ is Nil!20683) lt!718696))))

(declare-fun e!1191976 () (InoxSet T!33158))

(assert (=> d!570777 (= (content!3079 lt!718696) e!1191976)))

(declare-fun b!1867757 () Bool)

(assert (=> b!1867757 (= e!1191976 ((as const (Array T!33158 Bool)) false))))

(declare-fun b!1867758 () Bool)

(assert (=> b!1867758 (= e!1191976 ((_ map or) (store ((as const (Array T!33158 Bool)) false) (h!26084 lt!718696) true) (content!3079 (t!172906 lt!718696))))))

(assert (= (and d!570777 c!304274) b!1867757))

(assert (= (and d!570777 (not c!304274)) b!1867758))

(declare-fun m!2293171 () Bool)

(assert (=> b!1867758 m!2293171))

(assert (=> b!1867758 m!2293007))

(assert (=> d!570633 d!570777))

(declare-fun d!570781 () Bool)

(declare-fun res!836282 () Bool)

(declare-fun e!1191977 () Bool)

(assert (=> d!570781 (=> (not res!836282) (not e!1191977))))

(assert (=> d!570781 (= res!836282 (= (csize!13986 (right!17000 (right!17000 t!4595))) (+ (size!16399 (left!16670 (right!17000 (right!17000 t!4595)))) (size!16399 (right!17000 (right!17000 (right!17000 t!4595)))))))))

(assert (=> d!570781 (= (inv!27389 (right!17000 (right!17000 t!4595))) e!1191977)))

(declare-fun b!1867759 () Bool)

(declare-fun res!836283 () Bool)

(assert (=> b!1867759 (=> (not res!836283) (not e!1191977))))

(assert (=> b!1867759 (= res!836283 (and (not (= (left!16670 (right!17000 (right!17000 t!4595))) Empty!6878)) (not (= (right!17000 (right!17000 (right!17000 t!4595))) Empty!6878))))))

(declare-fun b!1867760 () Bool)

(declare-fun res!836284 () Bool)

(assert (=> b!1867760 (=> (not res!836284) (not e!1191977))))

(assert (=> b!1867760 (= res!836284 (= (cheight!7089 (right!17000 (right!17000 t!4595))) (+ (max!0 (height!1065 (left!16670 (right!17000 (right!17000 t!4595)))) (height!1065 (right!17000 (right!17000 (right!17000 t!4595))))) 1)))))

(declare-fun b!1867761 () Bool)

(assert (=> b!1867761 (= e!1191977 (<= 0 (cheight!7089 (right!17000 (right!17000 t!4595)))))))

(assert (= (and d!570781 res!836282) b!1867759))

(assert (= (and b!1867759 res!836283) b!1867760))

(assert (= (and b!1867760 res!836284) b!1867761))

(declare-fun m!2293175 () Bool)

(assert (=> d!570781 m!2293175))

(declare-fun m!2293177 () Bool)

(assert (=> d!570781 m!2293177))

(assert (=> b!1867760 m!2293055))

(assert (=> b!1867760 m!2293057))

(assert (=> b!1867760 m!2293055))

(assert (=> b!1867760 m!2293057))

(declare-fun m!2293179 () Bool)

(assert (=> b!1867760 m!2293179))

(assert (=> b!1867537 d!570781))

(declare-fun d!570787 () Bool)

(assert (=> d!570787 (= (inv!27385 (xs!9760 (right!17000 (left!16670 t!4595)))) (<= (size!16395 (innerList!6938 (xs!9760 (right!17000 (left!16670 t!4595))))) 2147483647))))

(declare-fun bs!411825 () Bool)

(assert (= bs!411825 d!570787))

(declare-fun m!2293181 () Bool)

(assert (=> bs!411825 m!2293181))

(assert (=> b!1867611 d!570787))

(declare-fun d!570789 () Bool)

(declare-fun lt!718788 () Bool)

(assert (=> d!570789 (= lt!718788 (isEmpty!12909 (list!8466 (right!17000 (right!17000 t!4595)))))))

(assert (=> d!570789 (= lt!718788 (= (size!16399 (right!17000 (right!17000 t!4595))) 0))))

(assert (=> d!570789 (= (isEmpty!12907 (right!17000 (right!17000 t!4595))) lt!718788)))

(declare-fun bs!411826 () Bool)

(assert (= bs!411826 d!570789))

(assert (=> bs!411826 m!2293019))

(assert (=> bs!411826 m!2293019))

(declare-fun m!2293183 () Bool)

(assert (=> bs!411826 m!2293183))

(assert (=> bs!411826 m!2292897))

(assert (=> b!1867507 d!570789))

(assert (=> d!570625 d!570721))

(assert (=> d!570625 d!570723))

(declare-fun d!570791 () Bool)

(declare-fun lt!718789 () Int)

(assert (=> d!570791 (>= lt!718789 0)))

(declare-fun e!1191980 () Int)

(assert (=> d!570791 (= lt!718789 e!1191980)))

(declare-fun c!304276 () Bool)

(assert (=> d!570791 (= c!304276 ((_ is Nil!20683) (innerList!6938 (xs!9760 (right!17000 t!4595)))))))

(assert (=> d!570791 (= (size!16395 (innerList!6938 (xs!9760 (right!17000 t!4595)))) lt!718789)))

(declare-fun b!1867766 () Bool)

(assert (=> b!1867766 (= e!1191980 0)))

(declare-fun b!1867767 () Bool)

(assert (=> b!1867767 (= e!1191980 (+ 1 (size!16395 (t!172906 (innerList!6938 (xs!9760 (right!17000 t!4595)))))))))

(assert (= (and d!570791 c!304276) b!1867766))

(assert (= (and d!570791 (not c!304276)) b!1867767))

(declare-fun m!2293189 () Bool)

(assert (=> b!1867767 m!2293189))

(assert (=> d!570617 d!570791))

(declare-fun d!570795 () Bool)

(declare-fun res!836287 () Bool)

(declare-fun e!1191981 () Bool)

(assert (=> d!570795 (=> (not res!836287) (not e!1191981))))

(assert (=> d!570795 (= res!836287 (= (csize!13986 (left!16670 (right!17000 t!4595))) (+ (size!16399 (left!16670 (left!16670 (right!17000 t!4595)))) (size!16399 (right!17000 (left!16670 (right!17000 t!4595)))))))))

(assert (=> d!570795 (= (inv!27389 (left!16670 (right!17000 t!4595))) e!1191981)))

(declare-fun b!1867768 () Bool)

(declare-fun res!836288 () Bool)

(assert (=> b!1867768 (=> (not res!836288) (not e!1191981))))

(assert (=> b!1867768 (= res!836288 (and (not (= (left!16670 (left!16670 (right!17000 t!4595))) Empty!6878)) (not (= (right!17000 (left!16670 (right!17000 t!4595))) Empty!6878))))))

(declare-fun b!1867769 () Bool)

(declare-fun res!836289 () Bool)

(assert (=> b!1867769 (=> (not res!836289) (not e!1191981))))

(assert (=> b!1867769 (= res!836289 (= (cheight!7089 (left!16670 (right!17000 t!4595))) (+ (max!0 (height!1065 (left!16670 (left!16670 (right!17000 t!4595)))) (height!1065 (right!17000 (left!16670 (right!17000 t!4595))))) 1)))))

(declare-fun b!1867770 () Bool)

(assert (=> b!1867770 (= e!1191981 (<= 0 (cheight!7089 (left!16670 (right!17000 t!4595)))))))

(assert (= (and d!570795 res!836287) b!1867768))

(assert (= (and b!1867768 res!836288) b!1867769))

(assert (= (and b!1867769 res!836289) b!1867770))

(declare-fun m!2293193 () Bool)

(assert (=> d!570795 m!2293193))

(declare-fun m!2293197 () Bool)

(assert (=> d!570795 m!2293197))

(assert (=> b!1867769 m!2292995))

(assert (=> b!1867769 m!2292997))

(assert (=> b!1867769 m!2292995))

(assert (=> b!1867769 m!2292997))

(declare-fun m!2293199 () Bool)

(assert (=> b!1867769 m!2293199))

(assert (=> b!1867534 d!570795))

(assert (=> d!570609 d!570685))

(assert (=> d!570609 d!570491))

(declare-fun d!570801 () Bool)

(declare-fun res!836290 () Bool)

(declare-fun e!1191983 () Bool)

(assert (=> d!570801 (=> (not res!836290) (not e!1191983))))

(assert (=> d!570801 (= res!836290 (<= (size!16395 (list!8464 (xs!9760 (left!16670 (left!16670 t!4595))))) 512))))

(assert (=> d!570801 (= (inv!27390 (left!16670 (left!16670 t!4595))) e!1191983)))

(declare-fun b!1867773 () Bool)

(declare-fun res!836291 () Bool)

(assert (=> b!1867773 (=> (not res!836291) (not e!1191983))))

(assert (=> b!1867773 (= res!836291 (= (csize!13987 (left!16670 (left!16670 t!4595))) (size!16395 (list!8464 (xs!9760 (left!16670 (left!16670 t!4595)))))))))

(declare-fun b!1867774 () Bool)

(assert (=> b!1867774 (= e!1191983 (and (> (csize!13987 (left!16670 (left!16670 t!4595))) 0) (<= (csize!13987 (left!16670 (left!16670 t!4595))) 512)))))

(assert (= (and d!570801 res!836290) b!1867773))

(assert (= (and b!1867773 res!836291) b!1867774))

(declare-fun m!2293203 () Bool)

(assert (=> d!570801 m!2293203))

(assert (=> d!570801 m!2293203))

(declare-fun m!2293205 () Bool)

(assert (=> d!570801 m!2293205))

(assert (=> b!1867773 m!2293203))

(assert (=> b!1867773 m!2293203))

(assert (=> b!1867773 m!2293205))

(assert (=> b!1867517 d!570801))

(declare-fun d!570807 () Bool)

(declare-fun c!304279 () Bool)

(assert (=> d!570807 (= c!304279 ((_ is Node!6878) (left!16670 (left!16670 (left!16670 t!4595)))))))

(declare-fun e!1191985 () Bool)

(assert (=> d!570807 (= (inv!27386 (left!16670 (left!16670 (left!16670 t!4595)))) e!1191985)))

(declare-fun b!1867777 () Bool)

(assert (=> b!1867777 (= e!1191985 (inv!27389 (left!16670 (left!16670 (left!16670 t!4595)))))))

(declare-fun b!1867778 () Bool)

(declare-fun e!1191986 () Bool)

(assert (=> b!1867778 (= e!1191985 e!1191986)))

(declare-fun res!836292 () Bool)

(assert (=> b!1867778 (= res!836292 (not ((_ is Leaf!10085) (left!16670 (left!16670 (left!16670 t!4595))))))))

(assert (=> b!1867778 (=> res!836292 e!1191986)))

(declare-fun b!1867779 () Bool)

(assert (=> b!1867779 (= e!1191986 (inv!27390 (left!16670 (left!16670 (left!16670 t!4595)))))))

(assert (= (and d!570807 c!304279) b!1867777))

(assert (= (and d!570807 (not c!304279)) b!1867778))

(assert (= (and b!1867778 (not res!836292)) b!1867779))

(declare-fun m!2293209 () Bool)

(assert (=> b!1867777 m!2293209))

(declare-fun m!2293211 () Bool)

(assert (=> b!1867779 m!2293211))

(assert (=> b!1867607 d!570807))

(declare-fun d!570811 () Bool)

(declare-fun c!304280 () Bool)

(assert (=> d!570811 (= c!304280 ((_ is Node!6878) (right!17000 (left!16670 (left!16670 t!4595)))))))

(declare-fun e!1191987 () Bool)

(assert (=> d!570811 (= (inv!27386 (right!17000 (left!16670 (left!16670 t!4595)))) e!1191987)))

(declare-fun b!1867780 () Bool)

(assert (=> b!1867780 (= e!1191987 (inv!27389 (right!17000 (left!16670 (left!16670 t!4595)))))))

(declare-fun b!1867781 () Bool)

(declare-fun e!1191988 () Bool)

(assert (=> b!1867781 (= e!1191987 e!1191988)))

(declare-fun res!836293 () Bool)

(assert (=> b!1867781 (= res!836293 (not ((_ is Leaf!10085) (right!17000 (left!16670 (left!16670 t!4595))))))))

(assert (=> b!1867781 (=> res!836293 e!1191988)))

(declare-fun b!1867782 () Bool)

(assert (=> b!1867782 (= e!1191988 (inv!27390 (right!17000 (left!16670 (left!16670 t!4595)))))))

(assert (= (and d!570811 c!304280) b!1867780))

(assert (= (and d!570811 (not c!304280)) b!1867781))

(assert (= (and b!1867781 (not res!836293)) b!1867782))

(declare-fun m!2293213 () Bool)

(assert (=> b!1867780 m!2293213))

(declare-fun m!2293215 () Bool)

(assert (=> b!1867782 m!2293215))

(assert (=> b!1867607 d!570811))

(assert (=> b!1867569 d!570649))

(declare-fun d!570813 () Bool)

(assert (=> d!570813 (= (max!0 (height!1065 (left!16670 (right!17000 t!4595))) (height!1065 (right!17000 (right!17000 t!4595)))) (ite (< (height!1065 (left!16670 (right!17000 t!4595))) (height!1065 (right!17000 (right!17000 t!4595)))) (height!1065 (right!17000 (right!17000 t!4595))) (height!1065 (left!16670 (right!17000 t!4595)))))))

(assert (=> b!1867550 d!570813))

(assert (=> b!1867550 d!570715))

(assert (=> b!1867550 d!570717))

(declare-fun b!1867783 () Bool)

(declare-fun e!1191991 () Int)

(declare-fun e!1191992 () Int)

(assert (=> b!1867783 (= e!1191991 e!1191992)))

(declare-fun c!304281 () Bool)

(assert (=> b!1867783 (= c!304281 (>= (- (csize!13987 t!4595) 1) (size!16395 (drop!990 (list!8464 (xs!9760 t!4595)) 1))))))

(declare-fun b!1867784 () Bool)

(assert (=> b!1867784 (= e!1191992 (- (csize!13987 t!4595) 1))))

(declare-fun b!1867786 () Bool)

(assert (=> b!1867786 (= e!1191992 (size!16395 (drop!990 (list!8464 (xs!9760 t!4595)) 1)))))

(declare-fun b!1867787 () Bool)

(declare-fun e!1191990 () List!20765)

(assert (=> b!1867787 (= e!1191990 (Cons!20683 (h!26084 (drop!990 (list!8464 (xs!9760 t!4595)) 1)) (take!163 (t!172906 (drop!990 (list!8464 (xs!9760 t!4595)) 1)) (- (- (csize!13987 t!4595) 1) 1))))))

(declare-fun d!570815 () Bool)

(declare-fun e!1191989 () Bool)

(assert (=> d!570815 e!1191989))

(declare-fun res!836294 () Bool)

(assert (=> d!570815 (=> (not res!836294) (not e!1191989))))

(declare-fun lt!718794 () List!20765)

(assert (=> d!570815 (= res!836294 (= ((_ map implies) (content!3079 lt!718794) (content!3079 (drop!990 (list!8464 (xs!9760 t!4595)) 1))) ((as const (InoxSet T!33158)) true)))))

(assert (=> d!570815 (= lt!718794 e!1191990)))

(declare-fun c!304282 () Bool)

(assert (=> d!570815 (= c!304282 (or ((_ is Nil!20683) (drop!990 (list!8464 (xs!9760 t!4595)) 1)) (<= (- (csize!13987 t!4595) 1) 0)))))

(assert (=> d!570815 (= (take!163 (drop!990 (list!8464 (xs!9760 t!4595)) 1) (- (csize!13987 t!4595) 1)) lt!718794)))

(declare-fun b!1867785 () Bool)

(assert (=> b!1867785 (= e!1191990 Nil!20683)))

(declare-fun b!1867788 () Bool)

(assert (=> b!1867788 (= e!1191991 0)))

(declare-fun b!1867789 () Bool)

(assert (=> b!1867789 (= e!1191989 (= (size!16395 lt!718794) e!1191991))))

(declare-fun c!304283 () Bool)

(assert (=> b!1867789 (= c!304283 (<= (- (csize!13987 t!4595) 1) 0))))

(assert (= (and d!570815 c!304282) b!1867785))

(assert (= (and d!570815 (not c!304282)) b!1867787))

(assert (= (and d!570815 res!836294) b!1867789))

(assert (= (and b!1867789 c!304283) b!1867788))

(assert (= (and b!1867789 (not c!304283)) b!1867783))

(assert (= (and b!1867783 c!304281) b!1867786))

(assert (= (and b!1867783 (not c!304281)) b!1867784))

(declare-fun m!2293217 () Bool)

(assert (=> d!570815 m!2293217))

(assert (=> d!570815 m!2292881))

(declare-fun m!2293219 () Bool)

(assert (=> d!570815 m!2293219))

(declare-fun m!2293221 () Bool)

(assert (=> b!1867787 m!2293221))

(assert (=> b!1867783 m!2292881))

(declare-fun m!2293223 () Bool)

(assert (=> b!1867783 m!2293223))

(assert (=> b!1867786 m!2292881))

(assert (=> b!1867786 m!2293223))

(declare-fun m!2293225 () Bool)

(assert (=> b!1867789 m!2293225))

(assert (=> d!570619 d!570815))

(declare-fun b!1867794 () Bool)

(declare-fun e!1191998 () List!20765)

(declare-fun e!1191996 () List!20765)

(assert (=> b!1867794 (= e!1191998 e!1191996)))

(declare-fun c!304287 () Bool)

(assert (=> b!1867794 (= c!304287 (<= 1 0))))

(declare-fun b!1867795 () Bool)

(declare-fun e!1191997 () Int)

(declare-fun call!115907 () Int)

(assert (=> b!1867795 (= e!1191997 (- call!115907 1))))

(declare-fun b!1867796 () Bool)

(assert (=> b!1867796 (= e!1191996 (list!8464 (xs!9760 t!4595)))))

(declare-fun b!1867797 () Bool)

(assert (=> b!1867797 (= e!1191997 0)))

(declare-fun b!1867798 () Bool)

(declare-fun e!1191995 () Int)

(assert (=> b!1867798 (= e!1191995 e!1191997)))

(declare-fun c!304289 () Bool)

(assert (=> b!1867798 (= c!304289 (>= 1 call!115907))))

(declare-fun b!1867799 () Bool)

(declare-fun e!1191999 () Bool)

(declare-fun lt!718795 () List!20765)

(assert (=> b!1867799 (= e!1191999 (= (size!16395 lt!718795) e!1191995))))

(declare-fun c!304288 () Bool)

(assert (=> b!1867799 (= c!304288 (<= 1 0))))

(declare-fun d!570817 () Bool)

(assert (=> d!570817 e!1191999))

(declare-fun res!836295 () Bool)

(assert (=> d!570817 (=> (not res!836295) (not e!1191999))))

(assert (=> d!570817 (= res!836295 (= ((_ map implies) (content!3079 lt!718795) (content!3079 (list!8464 (xs!9760 t!4595)))) ((as const (InoxSet T!33158)) true)))))

(assert (=> d!570817 (= lt!718795 e!1191998)))

(declare-fun c!304286 () Bool)

(assert (=> d!570817 (= c!304286 ((_ is Nil!20683) (list!8464 (xs!9760 t!4595))))))

(assert (=> d!570817 (= (drop!990 (list!8464 (xs!9760 t!4595)) 1) lt!718795)))

(declare-fun bm!115902 () Bool)

(assert (=> bm!115902 (= call!115907 (size!16395 (list!8464 (xs!9760 t!4595))))))

(declare-fun b!1867800 () Bool)

(assert (=> b!1867800 (= e!1191996 (drop!990 (t!172906 (list!8464 (xs!9760 t!4595))) (- 1 1)))))

(declare-fun b!1867801 () Bool)

(assert (=> b!1867801 (= e!1191998 Nil!20683)))

(declare-fun b!1867802 () Bool)

(assert (=> b!1867802 (= e!1191995 call!115907)))

(assert (= (and d!570817 c!304286) b!1867801))

(assert (= (and d!570817 (not c!304286)) b!1867794))

(assert (= (and b!1867794 c!304287) b!1867796))

(assert (= (and b!1867794 (not c!304287)) b!1867800))

(assert (= (and d!570817 res!836295) b!1867799))

(assert (= (and b!1867799 c!304288) b!1867802))

(assert (= (and b!1867799 (not c!304288)) b!1867798))

(assert (= (and b!1867798 c!304289) b!1867797))

(assert (= (and b!1867798 (not c!304289)) b!1867795))

(assert (= (or b!1867802 b!1867798 b!1867795) bm!115902))

(declare-fun m!2293227 () Bool)

(assert (=> b!1867799 m!2293227))

(declare-fun m!2293229 () Bool)

(assert (=> d!570817 m!2293229))

(assert (=> d!570817 m!2292511))

(declare-fun m!2293231 () Bool)

(assert (=> d!570817 m!2293231))

(assert (=> bm!115902 m!2292511))

(assert (=> bm!115902 m!2292867))

(declare-fun m!2293233 () Bool)

(assert (=> b!1867800 m!2293233))

(assert (=> d!570619 d!570817))

(declare-fun d!570819 () Bool)

(assert (=> d!570819 (= (inv!27385 (xs!9760 (left!16670 (left!16670 t!4595)))) (<= (size!16395 (innerList!6938 (xs!9760 (left!16670 (left!16670 t!4595))))) 2147483647))))

(declare-fun bs!411829 () Bool)

(assert (= bs!411829 d!570819))

(declare-fun m!2293235 () Bool)

(assert (=> bs!411829 m!2293235))

(assert (=> b!1867608 d!570819))

(declare-fun d!570821 () Bool)

(declare-fun lt!718796 () Int)

(assert (=> d!570821 (>= lt!718796 0)))

(declare-fun e!1192000 () Int)

(assert (=> d!570821 (= lt!718796 e!1192000)))

(declare-fun c!304290 () Bool)

(assert (=> d!570821 (= c!304290 ((_ is Nil!20683) (innerList!6938 (xs!9760 (left!16670 t!4595)))))))

(assert (=> d!570821 (= (size!16395 (innerList!6938 (xs!9760 (left!16670 t!4595)))) lt!718796)))

(declare-fun b!1867803 () Bool)

(assert (=> b!1867803 (= e!1192000 0)))

(declare-fun b!1867804 () Bool)

(assert (=> b!1867804 (= e!1192000 (+ 1 (size!16395 (t!172906 (innerList!6938 (xs!9760 (left!16670 t!4595)))))))))

(assert (= (and d!570821 c!304290) b!1867803))

(assert (= (and d!570821 (not c!304290)) b!1867804))

(declare-fun m!2293237 () Bool)

(assert (=> b!1867804 m!2293237))

(assert (=> d!570593 d!570821))

(declare-fun d!570823 () Bool)

(declare-fun lt!718797 () Int)

(assert (=> d!570823 (>= lt!718797 0)))

(declare-fun e!1192002 () Int)

(assert (=> d!570823 (= lt!718797 e!1192002)))

(declare-fun c!304292 () Bool)

(assert (=> d!570823 (= c!304292 ((_ is Nil!20683) lt!718750))))

(assert (=> d!570823 (= (size!16395 lt!718750) lt!718797)))

(declare-fun b!1867807 () Bool)

(assert (=> b!1867807 (= e!1192002 0)))

(declare-fun b!1867808 () Bool)

(assert (=> b!1867808 (= e!1192002 (+ 1 (size!16395 (t!172906 lt!718750))))))

(assert (= (and d!570823 c!304292) b!1867807))

(assert (= (and d!570823 (not c!304292)) b!1867808))

(declare-fun m!2293243 () Bool)

(assert (=> b!1867808 m!2293243))

(assert (=> b!1867572 d!570823))

(declare-fun d!570827 () Bool)

(assert (=> d!570827 (= (max!0 (height!1065 (left!16670 t!4595)) (height!1065 (right!17000 t!4595))) (ite (< (height!1065 (left!16670 t!4595)) (height!1065 (right!17000 t!4595))) (height!1065 (right!17000 t!4595)) (height!1065 (left!16670 t!4595))))))

(assert (=> b!1867513 d!570827))

(assert (=> b!1867513 d!570603))

(assert (=> b!1867513 d!570605))

(declare-fun d!570829 () Bool)

(assert (=> d!570829 (= (inv!27385 (xs!9760 (right!17000 (right!17000 t!4595)))) (<= (size!16395 (innerList!6938 (xs!9760 (right!17000 (right!17000 t!4595))))) 2147483647))))

(declare-fun bs!411830 () Bool)

(assert (= bs!411830 d!570829))

(declare-fun m!2293249 () Bool)

(assert (=> bs!411830 m!2293249))

(assert (=> b!1867604 d!570829))

(assert (=> b!1867510 d!570715))

(assert (=> b!1867510 d!570717))

(declare-fun b!1867811 () Bool)

(declare-fun res!836298 () Bool)

(declare-fun e!1192004 () Bool)

(assert (=> b!1867811 (=> (not res!836298) (not e!1192004))))

(assert (=> b!1867811 (= res!836298 (not (isEmpty!12907 (left!16670 (right!17000 (left!16670 t!4595))))))))

(declare-fun b!1867812 () Bool)

(assert (=> b!1867812 (= e!1192004 (not (isEmpty!12907 (right!17000 (right!17000 (left!16670 t!4595))))))))

(declare-fun b!1867813 () Bool)

(declare-fun res!836301 () Bool)

(assert (=> b!1867813 (=> (not res!836301) (not e!1192004))))

(assert (=> b!1867813 (= res!836301 (isBalanced!2179 (left!16670 (right!17000 (left!16670 t!4595)))))))

(declare-fun d!570833 () Bool)

(declare-fun res!836297 () Bool)

(declare-fun e!1192005 () Bool)

(assert (=> d!570833 (=> res!836297 e!1192005)))

(assert (=> d!570833 (= res!836297 (not ((_ is Node!6878) (right!17000 (left!16670 t!4595)))))))

(assert (=> d!570833 (= (isBalanced!2179 (right!17000 (left!16670 t!4595))) e!1192005)))

(declare-fun b!1867814 () Bool)

(declare-fun res!836300 () Bool)

(assert (=> b!1867814 (=> (not res!836300) (not e!1192004))))

(assert (=> b!1867814 (= res!836300 (isBalanced!2179 (right!17000 (right!17000 (left!16670 t!4595)))))))

(declare-fun b!1867815 () Bool)

(declare-fun res!836299 () Bool)

(assert (=> b!1867815 (=> (not res!836299) (not e!1192004))))

(assert (=> b!1867815 (= res!836299 (<= (- (height!1065 (left!16670 (right!17000 (left!16670 t!4595)))) (height!1065 (right!17000 (right!17000 (left!16670 t!4595))))) 1))))

(declare-fun b!1867816 () Bool)

(assert (=> b!1867816 (= e!1192005 e!1192004)))

(declare-fun res!836296 () Bool)

(assert (=> b!1867816 (=> (not res!836296) (not e!1192004))))

(assert (=> b!1867816 (= res!836296 (<= (- 1) (- (height!1065 (left!16670 (right!17000 (left!16670 t!4595)))) (height!1065 (right!17000 (right!17000 (left!16670 t!4595)))))))))

(assert (= (and d!570833 (not res!836297)) b!1867816))

(assert (= (and b!1867816 res!836296) b!1867815))

(assert (= (and b!1867815 res!836299) b!1867813))

(assert (= (and b!1867813 res!836301) b!1867814))

(assert (= (and b!1867814 res!836300) b!1867811))

(assert (= (and b!1867811 res!836298) b!1867812))

(declare-fun m!2293253 () Bool)

(assert (=> b!1867812 m!2293253))

(declare-fun m!2293255 () Bool)

(assert (=> b!1867814 m!2293255))

(declare-fun m!2293259 () Bool)

(assert (=> b!1867815 m!2293259))

(declare-fun m!2293261 () Bool)

(assert (=> b!1867815 m!2293261))

(declare-fun m!2293263 () Bool)

(assert (=> b!1867811 m!2293263))

(assert (=> b!1867816 m!2293259))

(assert (=> b!1867816 m!2293261))

(declare-fun m!2293265 () Bool)

(assert (=> b!1867813 m!2293265))

(assert (=> b!1867440 d!570833))

(declare-fun d!570843 () Bool)

(declare-fun res!836302 () Bool)

(declare-fun e!1192008 () Bool)

(assert (=> d!570843 (=> (not res!836302) (not e!1192008))))

(assert (=> d!570843 (= res!836302 (<= (size!16395 (list!8464 (xs!9760 (right!17000 (left!16670 t!4595))))) 512))))

(assert (=> d!570843 (= (inv!27390 (right!17000 (left!16670 t!4595))) e!1192008)))

(declare-fun b!1867821 () Bool)

(declare-fun res!836303 () Bool)

(assert (=> b!1867821 (=> (not res!836303) (not e!1192008))))

(assert (=> b!1867821 (= res!836303 (= (csize!13987 (right!17000 (left!16670 t!4595))) (size!16395 (list!8464 (xs!9760 (right!17000 (left!16670 t!4595)))))))))

(declare-fun b!1867822 () Bool)

(assert (=> b!1867822 (= e!1192008 (and (> (csize!13987 (right!17000 (left!16670 t!4595))) 0) (<= (csize!13987 (right!17000 (left!16670 t!4595))) 512)))))

(assert (= (and d!570843 res!836302) b!1867821))

(assert (= (and b!1867821 res!836303) b!1867822))

(declare-fun m!2293269 () Bool)

(assert (=> d!570843 m!2293269))

(assert (=> d!570843 m!2293269))

(declare-fun m!2293271 () Bool)

(assert (=> d!570843 m!2293271))

(assert (=> b!1867821 m!2293269))

(assert (=> b!1867821 m!2293269))

(assert (=> b!1867821 m!2293271))

(assert (=> b!1867520 d!570843))

(declare-fun d!570851 () Bool)

(assert (=> d!570851 (= (max!0 (height!1065 (left!16670 (left!16670 t!4595))) (height!1065 (right!17000 (left!16670 t!4595)))) (ite (< (height!1065 (left!16670 (left!16670 t!4595))) (height!1065 (right!17000 (left!16670 t!4595)))) (height!1065 (right!17000 (left!16670 t!4595))) (height!1065 (left!16670 (left!16670 t!4595)))))))

(assert (=> b!1867432 d!570851))

(assert (=> b!1867432 d!570729))

(assert (=> b!1867432 d!570733))

(assert (=> b!1867442 d!570729))

(assert (=> b!1867442 d!570733))

(declare-fun d!570853 () Bool)

(declare-fun lt!718801 () Bool)

(assert (=> d!570853 (= lt!718801 (isEmpty!12909 (list!8466 (right!17000 (left!16670 t!4595)))))))

(assert (=> d!570853 (= lt!718801 (= (size!16399 (right!17000 (left!16670 t!4595))) 0))))

(assert (=> d!570853 (= (isEmpty!12907 (right!17000 (left!16670 t!4595))) lt!718801)))

(declare-fun bs!411832 () Bool)

(assert (= bs!411832 d!570853))

(assert (=> bs!411832 m!2292957))

(assert (=> bs!411832 m!2292957))

(declare-fun m!2293275 () Bool)

(assert (=> bs!411832 m!2293275))

(assert (=> bs!411832 m!2292717))

(assert (=> b!1867438 d!570853))

(declare-fun d!570855 () Bool)

(declare-fun res!836307 () Bool)

(declare-fun e!1192010 () Bool)

(assert (=> d!570855 (=> (not res!836307) (not e!1192010))))

(assert (=> d!570855 (= res!836307 (= (csize!13986 (right!17000 (left!16670 t!4595))) (+ (size!16399 (left!16670 (right!17000 (left!16670 t!4595)))) (size!16399 (right!17000 (right!17000 (left!16670 t!4595)))))))))

(assert (=> d!570855 (= (inv!27389 (right!17000 (left!16670 t!4595))) e!1192010)))

(declare-fun b!1867826 () Bool)

(declare-fun res!836308 () Bool)

(assert (=> b!1867826 (=> (not res!836308) (not e!1192010))))

(assert (=> b!1867826 (= res!836308 (and (not (= (left!16670 (right!17000 (left!16670 t!4595))) Empty!6878)) (not (= (right!17000 (right!17000 (left!16670 t!4595))) Empty!6878))))))

(declare-fun b!1867827 () Bool)

(declare-fun res!836309 () Bool)

(assert (=> b!1867827 (=> (not res!836309) (not e!1192010))))

(assert (=> b!1867827 (= res!836309 (= (cheight!7089 (right!17000 (left!16670 t!4595))) (+ (max!0 (height!1065 (left!16670 (right!17000 (left!16670 t!4595)))) (height!1065 (right!17000 (right!17000 (left!16670 t!4595))))) 1)))))

(declare-fun b!1867828 () Bool)

(assert (=> b!1867828 (= e!1192010 (<= 0 (cheight!7089 (right!17000 (left!16670 t!4595)))))))

(assert (= (and d!570855 res!836307) b!1867826))

(assert (= (and b!1867826 res!836308) b!1867827))

(assert (= (and b!1867827 res!836309) b!1867828))

(declare-fun m!2293285 () Bool)

(assert (=> d!570855 m!2293285))

(declare-fun m!2293287 () Bool)

(assert (=> d!570855 m!2293287))

(assert (=> b!1867827 m!2293259))

(assert (=> b!1867827 m!2293261))

(assert (=> b!1867827 m!2293259))

(assert (=> b!1867827 m!2293261))

(declare-fun m!2293289 () Bool)

(assert (=> b!1867827 m!2293289))

(assert (=> b!1867518 d!570855))

(assert (=> d!570611 d!570497))

(assert (=> d!570611 d!570463))

(assert (=> d!570611 d!570493))

(declare-fun tp!531624 () Bool)

(declare-fun tp!531626 () Bool)

(declare-fun e!1192014 () Bool)

(declare-fun b!1867835 () Bool)

(assert (=> b!1867835 (= e!1192014 (and (inv!27386 (left!16670 (left!16670 (right!17000 (left!16670 t!4595))))) tp!531624 (inv!27386 (right!17000 (left!16670 (right!17000 (left!16670 t!4595))))) tp!531626))))

(declare-fun b!1867837 () Bool)

(declare-fun e!1192013 () Bool)

(declare-fun tp!531625 () Bool)

(assert (=> b!1867837 (= e!1192013 tp!531625)))

(declare-fun b!1867836 () Bool)

(assert (=> b!1867836 (= e!1192014 (and (inv!27385 (xs!9760 (left!16670 (right!17000 (left!16670 t!4595))))) e!1192013))))

(assert (=> b!1867610 (= tp!531619 (and (inv!27386 (left!16670 (right!17000 (left!16670 t!4595)))) e!1192014))))

(assert (= (and b!1867610 ((_ is Node!6878) (left!16670 (right!17000 (left!16670 t!4595))))) b!1867835))

(assert (= b!1867836 b!1867837))

(assert (= (and b!1867610 ((_ is Leaf!10085) (left!16670 (right!17000 (left!16670 t!4595))))) b!1867836))

(declare-fun m!2293299 () Bool)

(assert (=> b!1867835 m!2293299))

(declare-fun m!2293301 () Bool)

(assert (=> b!1867835 m!2293301))

(declare-fun m!2293303 () Bool)

(assert (=> b!1867836 m!2293303))

(assert (=> b!1867610 m!2292937))

(declare-fun tp!531629 () Bool)

(declare-fun b!1867840 () Bool)

(declare-fun e!1192017 () Bool)

(declare-fun tp!531627 () Bool)

(assert (=> b!1867840 (= e!1192017 (and (inv!27386 (left!16670 (right!17000 (right!17000 (left!16670 t!4595))))) tp!531627 (inv!27386 (right!17000 (right!17000 (right!17000 (left!16670 t!4595))))) tp!531629))))

(declare-fun b!1867842 () Bool)

(declare-fun e!1192016 () Bool)

(declare-fun tp!531628 () Bool)

(assert (=> b!1867842 (= e!1192016 tp!531628)))

(declare-fun b!1867841 () Bool)

(assert (=> b!1867841 (= e!1192017 (and (inv!27385 (xs!9760 (right!17000 (right!17000 (left!16670 t!4595))))) e!1192016))))

(assert (=> b!1867610 (= tp!531621 (and (inv!27386 (right!17000 (right!17000 (left!16670 t!4595)))) e!1192017))))

(assert (= (and b!1867610 ((_ is Node!6878) (right!17000 (right!17000 (left!16670 t!4595))))) b!1867840))

(assert (= b!1867841 b!1867842))

(assert (= (and b!1867610 ((_ is Leaf!10085) (right!17000 (right!17000 (left!16670 t!4595))))) b!1867841))

(declare-fun m!2293307 () Bool)

(assert (=> b!1867840 m!2293307))

(declare-fun m!2293309 () Bool)

(assert (=> b!1867840 m!2293309))

(declare-fun m!2293311 () Bool)

(assert (=> b!1867841 m!2293311))

(assert (=> b!1867610 m!2292939))

(declare-fun b!1867843 () Bool)

(declare-fun e!1192018 () Bool)

(declare-fun tp!531630 () Bool)

(assert (=> b!1867843 (= e!1192018 (and tp_is_empty!8675 tp!531630))))

(assert (=> b!1867602 (= tp!531610 e!1192018)))

(assert (= (and b!1867602 ((_ is Cons!20683) (innerList!6938 (xs!9760 (left!16670 (right!17000 t!4595)))))) b!1867843))

(declare-fun b!1867844 () Bool)

(declare-fun e!1192019 () Bool)

(declare-fun tp!531631 () Bool)

(assert (=> b!1867844 (= e!1192019 (and tp_is_empty!8675 tp!531631))))

(assert (=> b!1867609 (= tp!531617 e!1192019)))

(assert (= (and b!1867609 ((_ is Cons!20683) (innerList!6938 (xs!9760 (left!16670 (left!16670 t!4595)))))) b!1867844))

(declare-fun tp!531634 () Bool)

(declare-fun tp!531632 () Bool)

(declare-fun e!1192021 () Bool)

(declare-fun b!1867845 () Bool)

(assert (=> b!1867845 (= e!1192021 (and (inv!27386 (left!16670 (left!16670 (left!16670 (right!17000 t!4595))))) tp!531632 (inv!27386 (right!17000 (left!16670 (left!16670 (right!17000 t!4595))))) tp!531634))))

(declare-fun b!1867847 () Bool)

(declare-fun e!1192020 () Bool)

(declare-fun tp!531633 () Bool)

(assert (=> b!1867847 (= e!1192020 tp!531633)))

(declare-fun b!1867846 () Bool)

(assert (=> b!1867846 (= e!1192021 (and (inv!27385 (xs!9760 (left!16670 (left!16670 (right!17000 t!4595))))) e!1192020))))

(assert (=> b!1867600 (= tp!531609 (and (inv!27386 (left!16670 (left!16670 (right!17000 t!4595)))) e!1192021))))

(assert (= (and b!1867600 ((_ is Node!6878) (left!16670 (left!16670 (right!17000 t!4595))))) b!1867845))

(assert (= b!1867846 b!1867847))

(assert (= (and b!1867600 ((_ is Leaf!10085) (left!16670 (left!16670 (right!17000 t!4595))))) b!1867846))

(declare-fun m!2293313 () Bool)

(assert (=> b!1867845 m!2293313))

(declare-fun m!2293315 () Bool)

(assert (=> b!1867845 m!2293315))

(declare-fun m!2293317 () Bool)

(assert (=> b!1867846 m!2293317))

(assert (=> b!1867600 m!2292919))

(declare-fun tp!531637 () Bool)

(declare-fun tp!531635 () Bool)

(declare-fun b!1867848 () Bool)

(declare-fun e!1192023 () Bool)

(assert (=> b!1867848 (= e!1192023 (and (inv!27386 (left!16670 (right!17000 (left!16670 (right!17000 t!4595))))) tp!531635 (inv!27386 (right!17000 (right!17000 (left!16670 (right!17000 t!4595))))) tp!531637))))

(declare-fun b!1867850 () Bool)

(declare-fun e!1192022 () Bool)

(declare-fun tp!531636 () Bool)

(assert (=> b!1867850 (= e!1192022 tp!531636)))

(declare-fun b!1867849 () Bool)

(assert (=> b!1867849 (= e!1192023 (and (inv!27385 (xs!9760 (right!17000 (left!16670 (right!17000 t!4595))))) e!1192022))))

(assert (=> b!1867600 (= tp!531611 (and (inv!27386 (right!17000 (left!16670 (right!17000 t!4595)))) e!1192023))))

(assert (= (and b!1867600 ((_ is Node!6878) (right!17000 (left!16670 (right!17000 t!4595))))) b!1867848))

(assert (= b!1867849 b!1867850))

(assert (= (and b!1867600 ((_ is Leaf!10085) (right!17000 (left!16670 (right!17000 t!4595))))) b!1867849))

(declare-fun m!2293319 () Bool)

(assert (=> b!1867848 m!2293319))

(declare-fun m!2293321 () Bool)

(assert (=> b!1867848 m!2293321))

(declare-fun m!2293323 () Bool)

(assert (=> b!1867849 m!2293323))

(assert (=> b!1867600 m!2292921))

(declare-fun b!1867851 () Bool)

(declare-fun e!1192024 () Bool)

(declare-fun tp!531638 () Bool)

(assert (=> b!1867851 (= e!1192024 (and tp_is_empty!8675 tp!531638))))

(assert (=> b!1867612 (= tp!531620 e!1192024)))

(assert (= (and b!1867612 ((_ is Cons!20683) (innerList!6938 (xs!9760 (right!17000 (left!16670 t!4595)))))) b!1867851))

(declare-fun b!1867854 () Bool)

(declare-fun e!1192026 () Bool)

(declare-fun tp!531639 () Bool)

(assert (=> b!1867854 (= e!1192026 (and tp_is_empty!8675 tp!531639))))

(assert (=> b!1867606 (= tp!531615 e!1192026)))

(assert (= (and b!1867606 ((_ is Cons!20683) (t!172906 (innerList!6938 (xs!9760 (right!17000 t!4595)))))) b!1867854))

(declare-fun b!1867855 () Bool)

(declare-fun e!1192028 () Bool)

(declare-fun tp!531642 () Bool)

(declare-fun tp!531640 () Bool)

(assert (=> b!1867855 (= e!1192028 (and (inv!27386 (left!16670 (left!16670 (right!17000 (right!17000 t!4595))))) tp!531640 (inv!27386 (right!17000 (left!16670 (right!17000 (right!17000 t!4595))))) tp!531642))))

(declare-fun b!1867857 () Bool)

(declare-fun e!1192027 () Bool)

(declare-fun tp!531641 () Bool)

(assert (=> b!1867857 (= e!1192027 tp!531641)))

(declare-fun b!1867856 () Bool)

(assert (=> b!1867856 (= e!1192028 (and (inv!27385 (xs!9760 (left!16670 (right!17000 (right!17000 t!4595))))) e!1192027))))

(assert (=> b!1867603 (= tp!531612 (and (inv!27386 (left!16670 (right!17000 (right!17000 t!4595)))) e!1192028))))

(assert (= (and b!1867603 ((_ is Node!6878) (left!16670 (right!17000 (right!17000 t!4595))))) b!1867855))

(assert (= b!1867856 b!1867857))

(assert (= (and b!1867603 ((_ is Leaf!10085) (left!16670 (right!17000 (right!17000 t!4595))))) b!1867856))

(declare-fun m!2293329 () Bool)

(assert (=> b!1867855 m!2293329))

(declare-fun m!2293331 () Bool)

(assert (=> b!1867855 m!2293331))

(declare-fun m!2293333 () Bool)

(assert (=> b!1867856 m!2293333))

(assert (=> b!1867603 m!2292925))

(declare-fun tp!531645 () Bool)

(declare-fun b!1867858 () Bool)

(declare-fun tp!531643 () Bool)

(declare-fun e!1192030 () Bool)

(assert (=> b!1867858 (= e!1192030 (and (inv!27386 (left!16670 (right!17000 (right!17000 (right!17000 t!4595))))) tp!531643 (inv!27386 (right!17000 (right!17000 (right!17000 (right!17000 t!4595))))) tp!531645))))

(declare-fun b!1867860 () Bool)

(declare-fun e!1192029 () Bool)

(declare-fun tp!531644 () Bool)

(assert (=> b!1867860 (= e!1192029 tp!531644)))

(declare-fun b!1867859 () Bool)

(assert (=> b!1867859 (= e!1192030 (and (inv!27385 (xs!9760 (right!17000 (right!17000 (right!17000 t!4595))))) e!1192029))))

(assert (=> b!1867603 (= tp!531614 (and (inv!27386 (right!17000 (right!17000 (right!17000 t!4595)))) e!1192030))))

(assert (= (and b!1867603 ((_ is Node!6878) (right!17000 (right!17000 (right!17000 t!4595))))) b!1867858))

(assert (= b!1867859 b!1867860))

(assert (= (and b!1867603 ((_ is Leaf!10085) (right!17000 (right!17000 (right!17000 t!4595))))) b!1867859))

(declare-fun m!2293335 () Bool)

(assert (=> b!1867858 m!2293335))

(declare-fun m!2293337 () Bool)

(assert (=> b!1867858 m!2293337))

(declare-fun m!2293339 () Bool)

(assert (=> b!1867859 m!2293339))

(assert (=> b!1867603 m!2292927))

(declare-fun b!1867867 () Bool)

(declare-fun e!1192033 () Bool)

(declare-fun tp!531646 () Bool)

(assert (=> b!1867867 (= e!1192033 (and tp_is_empty!8675 tp!531646))))

(assert (=> b!1867613 (= tp!531622 e!1192033)))

(assert (= (and b!1867613 ((_ is Cons!20683) (t!172906 (t!172906 (innerList!6938 (xs!9760 t!4595)))))) b!1867867))

(declare-fun b!1867868 () Bool)

(declare-fun e!1192034 () Bool)

(declare-fun tp!531647 () Bool)

(assert (=> b!1867868 (= e!1192034 (and tp_is_empty!8675 tp!531647))))

(assert (=> b!1867614 (= tp!531623 e!1192034)))

(assert (= (and b!1867614 ((_ is Cons!20683) (t!172906 (innerList!6938 (xs!9760 (left!16670 t!4595)))))) b!1867868))

(declare-fun b!1867869 () Bool)

(declare-fun e!1192035 () Bool)

(declare-fun tp!531648 () Bool)

(assert (=> b!1867869 (= e!1192035 (and tp_is_empty!8675 tp!531648))))

(assert (=> b!1867605 (= tp!531613 e!1192035)))

(assert (= (and b!1867605 ((_ is Cons!20683) (innerList!6938 (xs!9760 (right!17000 (right!17000 t!4595)))))) b!1867869))

(declare-fun b!1867870 () Bool)

(declare-fun tp!531651 () Bool)

(declare-fun e!1192037 () Bool)

(declare-fun tp!531649 () Bool)

(assert (=> b!1867870 (= e!1192037 (and (inv!27386 (left!16670 (left!16670 (left!16670 (left!16670 t!4595))))) tp!531649 (inv!27386 (right!17000 (left!16670 (left!16670 (left!16670 t!4595))))) tp!531651))))

(declare-fun b!1867872 () Bool)

(declare-fun e!1192036 () Bool)

(declare-fun tp!531650 () Bool)

(assert (=> b!1867872 (= e!1192036 tp!531650)))

(declare-fun b!1867871 () Bool)

(assert (=> b!1867871 (= e!1192037 (and (inv!27385 (xs!9760 (left!16670 (left!16670 (left!16670 t!4595))))) e!1192036))))

(assert (=> b!1867607 (= tp!531616 (and (inv!27386 (left!16670 (left!16670 (left!16670 t!4595)))) e!1192037))))

(assert (= (and b!1867607 ((_ is Node!6878) (left!16670 (left!16670 (left!16670 t!4595))))) b!1867870))

(assert (= b!1867871 b!1867872))

(assert (= (and b!1867607 ((_ is Leaf!10085) (left!16670 (left!16670 (left!16670 t!4595))))) b!1867871))

(declare-fun m!2293353 () Bool)

(assert (=> b!1867870 m!2293353))

(declare-fun m!2293355 () Bool)

(assert (=> b!1867870 m!2293355))

(declare-fun m!2293357 () Bool)

(assert (=> b!1867871 m!2293357))

(assert (=> b!1867607 m!2292931))

(declare-fun tp!531652 () Bool)

(declare-fun b!1867873 () Bool)

(declare-fun e!1192039 () Bool)

(declare-fun tp!531654 () Bool)

(assert (=> b!1867873 (= e!1192039 (and (inv!27386 (left!16670 (right!17000 (left!16670 (left!16670 t!4595))))) tp!531652 (inv!27386 (right!17000 (right!17000 (left!16670 (left!16670 t!4595))))) tp!531654))))

(declare-fun b!1867875 () Bool)

(declare-fun e!1192038 () Bool)

(declare-fun tp!531653 () Bool)

(assert (=> b!1867875 (= e!1192038 tp!531653)))

(declare-fun b!1867874 () Bool)

(assert (=> b!1867874 (= e!1192039 (and (inv!27385 (xs!9760 (right!17000 (left!16670 (left!16670 t!4595))))) e!1192038))))

(assert (=> b!1867607 (= tp!531618 (and (inv!27386 (right!17000 (left!16670 (left!16670 t!4595)))) e!1192039))))

(assert (= (and b!1867607 ((_ is Node!6878) (right!17000 (left!16670 (left!16670 t!4595))))) b!1867873))

(assert (= b!1867874 b!1867875))

(assert (= (and b!1867607 ((_ is Leaf!10085) (right!17000 (left!16670 (left!16670 t!4595))))) b!1867874))

(declare-fun m!2293361 () Bool)

(assert (=> b!1867873 m!2293361))

(declare-fun m!2293365 () Bool)

(assert (=> b!1867873 m!2293365))

(declare-fun m!2293367 () Bool)

(assert (=> b!1867874 m!2293367))

(assert (=> b!1867607 m!2292933))

(declare-fun b!1867878 () Bool)

(declare-fun e!1192041 () Bool)

(declare-fun tp!531655 () Bool)

(assert (=> b!1867878 (= e!1192041 (and tp_is_empty!8675 tp!531655))))

(assert (=> b!1867542 (= tp!531608 e!1192041)))

(assert (= (and b!1867542 ((_ is Cons!20683) (innerList!6938 _$4!1088))) b!1867878))

(check-sat (not d!570787) (not b!1867636) (not b!1867649) (not b!1867800) (not b!1867845) (not b!1867783) (not d!570667) (not b!1867646) (not b!1867680) (not b!1867858) (not b!1867840) (not b!1867686) (not b!1867808) (not b!1867856) (not b!1867675) (not d!570795) (not b!1867727) (not b!1867647) (not d!570695) (not b!1867744) (not b!1867847) (not b!1867754) (not b!1867667) (not b!1867872) (not b!1867855) (not b!1867639) (not d!570817) (not b!1867689) (not b!1867827) (not b!1867821) (not b!1867871) (not b!1867682) (not b!1867729) (not d!570751) (not b!1867726) (not b!1867620) (not d!570709) (not d!570679) tp_is_empty!8675 (not bm!115901) (not d!570663) (not b!1867679) (not b!1867860) (not b!1867870) (not d!570677) (not b!1867708) (not b!1867615) (not b!1867846) (not d!570853) (not b!1867804) (not b!1867724) (not b!1867723) (not d!570647) (not b!1867780) (not b!1867850) (not b!1867715) (not d!570855) (not b!1867628) (not b!1867733) (not d!570655) (not b!1867878) (not b!1867648) (not d!570683) (not b!1867814) (not b!1867842) (not b!1867835) (not d!570725) (not d!570749) (not b!1867760) (not b!1867677) (not b!1867811) (not d!570735) (not b!1867767) (not b!1867859) (not b!1867816) (not b!1867728) (not b!1867777) (not b!1867789) (not d!570781) (not b!1867657) (not b!1867787) (not b!1867687) (not b!1867617) (not b!1867681) (not b!1867625) (not b!1867741) (not b!1867769) (not b!1867868) (not d!570641) (not b!1867658) (not b!1867758) (not b!1867634) (not b!1867848) (not d!570669) (not b!1867867) (not b!1867725) (not b!1867607) (not b!1867837) (not b!1867851) (not b!1867812) (not d!570653) (not b!1867815) (not b!1867843) (not b!1867642) (not b!1867748) (not b!1867836) (not b!1867684) (not b!1867643) (not b!1867849) (not b!1867873) (not b!1867874) (not b!1867782) (not b!1867742) (not b!1867736) (not b!1867841) (not b!1867645) (not d!570819) (not bm!115902) (not b!1867678) (not b!1867651) (not b!1867857) (not b!1867779) (not d!570843) (not d!570691) (not b!1867854) (not b!1867676) (not b!1867603) (not d!570829) (not b!1867674) (not b!1867786) (not b!1867618) (not b!1867626) (not b!1867638) (not d!570719) (not b!1867707) (not d!570651) (not b!1867844) (not b!1867750) (not b!1867799) (not b!1867813) (not b!1867650) (not b!1867875) (not b!1867622) (not d!570815) (not b!1867773) (not b!1867610) (not b!1867665) (not b!1867869) (not b!1867730) (not d!570789) (not d!570801) (not b!1867600))
(check-sat)
