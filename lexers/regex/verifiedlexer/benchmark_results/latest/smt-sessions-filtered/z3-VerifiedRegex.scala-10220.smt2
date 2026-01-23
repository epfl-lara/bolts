; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!533198 () Bool)

(assert start!533198)

(declare-fun b!5040351 () Bool)

(declare-fun res!2147442 () Bool)

(declare-fun e!3147788 () Bool)

(assert (=> b!5040351 (=> (not res!2147442) (not e!3147788))))

(declare-fun i!618 () Int)

(declare-datatypes ((T!104194 0))(
  ( (T!104195 (val!23516 Int)) )
))
(declare-datatypes ((List!58426 0))(
  ( (Nil!58302) (Cons!58302 (h!64750 T!104194) (t!370973 List!58426)) )
))
(declare-datatypes ((IArray!31089 0))(
  ( (IArray!31090 (innerList!15602 List!58426)) )
))
(declare-datatypes ((Conc!15514 0))(
  ( (Node!15514 (left!42700 Conc!15514) (right!43030 Conc!15514) (csize!31258 Int) (cheight!15725 Int)) (Leaf!25735 (xs!18840 IArray!31089) (csize!31259 Int)) (Empty!15514) )
))
(declare-fun t!4198 () Conc!15514)

(declare-fun size!38902 (Conc!15514) Int)

(assert (=> b!5040351 (= res!2147442 (<= i!618 (size!38902 t!4198)))))

(declare-fun tp!1411021 () Bool)

(declare-fun b!5040352 () Bool)

(declare-fun tp!1411020 () Bool)

(declare-fun e!3147790 () Bool)

(declare-fun inv!77161 (Conc!15514) Bool)

(assert (=> b!5040352 (= e!3147790 (and (inv!77161 (left!42700 t!4198)) tp!1411020 (inv!77161 (right!43030 t!4198)) tp!1411021))))

(declare-fun b!5040353 () Bool)

(declare-fun res!2147447 () Bool)

(assert (=> b!5040353 (=> (not res!2147447) (not e!3147788))))

(get-info :version)

(assert (=> b!5040353 (= res!2147447 (and (not ((_ is Empty!15514) t!4198)) ((_ is Leaf!25735) t!4198) (> i!618 0) (not (= i!618 (csize!31259 t!4198)))))))

(declare-fun b!5040354 () Bool)

(declare-fun res!2147443 () Bool)

(assert (=> b!5040354 (=> (not res!2147443) (not e!3147788))))

(assert (=> b!5040354 (= res!2147443 (<= 0 i!618))))

(declare-fun b!5040355 () Bool)

(declare-fun e!3147789 () Bool)

(assert (=> b!5040355 (= e!3147788 e!3147789)))

(declare-fun res!2147445 () Bool)

(assert (=> b!5040355 (=> (not res!2147445) (not e!3147789))))

(declare-fun lt!2084247 () List!58426)

(declare-datatypes ((tuple2!63238 0))(
  ( (tuple2!63239 (_1!34922 List!58426) (_2!34922 List!58426)) )
))
(declare-fun lt!2084246 () tuple2!63238)

(declare-fun take!825 (List!58426 Int) List!58426)

(assert (=> b!5040355 (= res!2147445 (= (_1!34922 lt!2084246) (take!825 lt!2084247 i!618)))))

(declare-fun splitAtIndex!209 (List!58426 Int) tuple2!63238)

(assert (=> b!5040355 (= lt!2084246 (splitAtIndex!209 lt!2084247 i!618))))

(declare-fun list!18913 (IArray!31089) List!58426)

(assert (=> b!5040355 (= lt!2084247 (list!18913 (xs!18840 t!4198)))))

(declare-fun b!5040356 () Bool)

(declare-fun e!3147787 () Bool)

(declare-fun tp!1411019 () Bool)

(assert (=> b!5040356 (= e!3147787 tp!1411019)))

(declare-fun b!5040357 () Bool)

(declare-fun inv!77162 (IArray!31089) Bool)

(assert (=> b!5040357 (= e!3147790 (and (inv!77162 (xs!18840 t!4198)) e!3147787))))

(declare-fun b!5040358 () Bool)

(declare-fun size!38903 (List!58426) Int)

(assert (=> b!5040358 (= e!3147789 (> i!618 (size!38903 lt!2084247)))))

(declare-fun res!2147446 () Bool)

(assert (=> start!533198 (=> (not res!2147446) (not e!3147788))))

(declare-fun isBalanced!4376 (Conc!15514) Bool)

(assert (=> start!533198 (= res!2147446 (isBalanced!4376 t!4198))))

(assert (=> start!533198 e!3147788))

(assert (=> start!533198 (and (inv!77161 t!4198) e!3147790)))

(assert (=> start!533198 true))

(declare-fun b!5040359 () Bool)

(declare-fun res!2147444 () Bool)

(assert (=> b!5040359 (=> (not res!2147444) (not e!3147789))))

(declare-fun drop!2632 (List!58426 Int) List!58426)

(assert (=> b!5040359 (= res!2147444 (= (_2!34922 lt!2084246) (drop!2632 lt!2084247 i!618)))))

(assert (= (and start!533198 res!2147446) b!5040354))

(assert (= (and b!5040354 res!2147443) b!5040351))

(assert (= (and b!5040351 res!2147442) b!5040353))

(assert (= (and b!5040353 res!2147447) b!5040355))

(assert (= (and b!5040355 res!2147445) b!5040359))

(assert (= (and b!5040359 res!2147444) b!5040358))

(assert (= (and start!533198 ((_ is Node!15514) t!4198)) b!5040352))

(assert (= b!5040357 b!5040356))

(assert (= (and start!533198 ((_ is Leaf!25735) t!4198)) b!5040357))

(declare-fun m!6074536 () Bool)

(assert (=> b!5040351 m!6074536))

(declare-fun m!6074538 () Bool)

(assert (=> b!5040352 m!6074538))

(declare-fun m!6074540 () Bool)

(assert (=> b!5040352 m!6074540))

(declare-fun m!6074542 () Bool)

(assert (=> b!5040359 m!6074542))

(declare-fun m!6074544 () Bool)

(assert (=> b!5040357 m!6074544))

(declare-fun m!6074546 () Bool)

(assert (=> b!5040358 m!6074546))

(declare-fun m!6074548 () Bool)

(assert (=> start!533198 m!6074548))

(declare-fun m!6074550 () Bool)

(assert (=> start!533198 m!6074550))

(declare-fun m!6074552 () Bool)

(assert (=> b!5040355 m!6074552))

(declare-fun m!6074554 () Bool)

(assert (=> b!5040355 m!6074554))

(declare-fun m!6074556 () Bool)

(assert (=> b!5040355 m!6074556))

(check-sat (not start!533198) (not b!5040359) (not b!5040352) (not b!5040355) (not b!5040358) (not b!5040356) (not b!5040351) (not b!5040357))
(check-sat)
(get-model)

(declare-fun b!5040392 () Bool)

(declare-fun e!3147810 () List!58426)

(assert (=> b!5040392 (= e!3147810 Nil!58302)))

(declare-fun b!5040393 () Bool)

(declare-fun e!3147809 () Int)

(assert (=> b!5040393 (= e!3147809 (size!38903 lt!2084247))))

(declare-fun b!5040394 () Bool)

(declare-fun e!3147811 () Int)

(assert (=> b!5040394 (= e!3147811 e!3147809)))

(declare-fun c!863576 () Bool)

(assert (=> b!5040394 (= c!863576 (>= i!618 (size!38903 lt!2084247)))))

(declare-fun b!5040395 () Bool)

(declare-fun e!3147812 () Bool)

(declare-fun lt!2084252 () List!58426)

(assert (=> b!5040395 (= e!3147812 (= (size!38903 lt!2084252) e!3147811))))

(declare-fun c!863575 () Bool)

(assert (=> b!5040395 (= c!863575 (<= i!618 0))))

(declare-fun d!1621517 () Bool)

(assert (=> d!1621517 e!3147812))

(declare-fun res!2147452 () Bool)

(assert (=> d!1621517 (=> (not res!2147452) (not e!3147812))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!10355 (List!58426) (InoxSet T!104194))

(assert (=> d!1621517 (= res!2147452 (= ((_ map implies) (content!10355 lt!2084252) (content!10355 lt!2084247)) ((as const (InoxSet T!104194)) true)))))

(assert (=> d!1621517 (= lt!2084252 e!3147810)))

(declare-fun c!863574 () Bool)

(assert (=> d!1621517 (= c!863574 (or ((_ is Nil!58302) lt!2084247) (<= i!618 0)))))

(assert (=> d!1621517 (= (take!825 lt!2084247 i!618) lt!2084252)))

(declare-fun b!5040396 () Bool)

(assert (=> b!5040396 (= e!3147809 i!618)))

(declare-fun b!5040397 () Bool)

(assert (=> b!5040397 (= e!3147811 0)))

(declare-fun b!5040398 () Bool)

(assert (=> b!5040398 (= e!3147810 (Cons!58302 (h!64750 lt!2084247) (take!825 (t!370973 lt!2084247) (- i!618 1))))))

(assert (= (and d!1621517 c!863574) b!5040392))

(assert (= (and d!1621517 (not c!863574)) b!5040398))

(assert (= (and d!1621517 res!2147452) b!5040395))

(assert (= (and b!5040395 c!863575) b!5040397))

(assert (= (and b!5040395 (not c!863575)) b!5040394))

(assert (= (and b!5040394 c!863576) b!5040393))

(assert (= (and b!5040394 (not c!863576)) b!5040396))

(assert (=> b!5040394 m!6074546))

(declare-fun m!6074558 () Bool)

(assert (=> b!5040395 m!6074558))

(assert (=> b!5040393 m!6074546))

(declare-fun m!6074560 () Bool)

(assert (=> d!1621517 m!6074560))

(declare-fun m!6074562 () Bool)

(assert (=> d!1621517 m!6074562))

(declare-fun m!6074564 () Bool)

(assert (=> b!5040398 m!6074564))

(assert (=> b!5040355 d!1621517))

(declare-fun d!1621521 () Bool)

(declare-fun e!3147835 () Bool)

(assert (=> d!1621521 e!3147835))

(declare-fun res!2147463 () Bool)

(assert (=> d!1621521 (=> (not res!2147463) (not e!3147835))))

(declare-fun lt!2084261 () tuple2!63238)

(declare-fun ++!12726 (List!58426 List!58426) List!58426)

(assert (=> d!1621521 (= res!2147463 (= (++!12726 (_1!34922 lt!2084261) (_2!34922 lt!2084261)) lt!2084247))))

(declare-fun e!3147834 () tuple2!63238)

(assert (=> d!1621521 (= lt!2084261 e!3147834)))

(declare-fun c!863591 () Bool)

(assert (=> d!1621521 (= c!863591 ((_ is Nil!58302) lt!2084247))))

(assert (=> d!1621521 (= (splitAtIndex!209 lt!2084247 i!618) lt!2084261)))

(declare-fun b!5040436 () Bool)

(declare-fun res!2147462 () Bool)

(assert (=> b!5040436 (=> (not res!2147462) (not e!3147835))))

(assert (=> b!5040436 (= res!2147462 (= (_1!34922 lt!2084261) (take!825 lt!2084247 i!618)))))

(declare-fun b!5040437 () Bool)

(declare-fun e!3147836 () tuple2!63238)

(assert (=> b!5040437 (= e!3147836 (tuple2!63239 Nil!58302 lt!2084247))))

(declare-fun b!5040438 () Bool)

(assert (=> b!5040438 (= e!3147834 (tuple2!63239 Nil!58302 Nil!58302))))

(declare-fun b!5040439 () Bool)

(assert (=> b!5040439 (= e!3147835 (= (_2!34922 lt!2084261) (drop!2632 lt!2084247 i!618)))))

(declare-fun b!5040440 () Bool)

(declare-fun lt!2084260 () tuple2!63238)

(assert (=> b!5040440 (= lt!2084260 (splitAtIndex!209 (t!370973 lt!2084247) (- i!618 1)))))

(assert (=> b!5040440 (= e!3147836 (tuple2!63239 (Cons!58302 (h!64750 lt!2084247) (_1!34922 lt!2084260)) (_2!34922 lt!2084260)))))

(declare-fun b!5040441 () Bool)

(assert (=> b!5040441 (= e!3147834 e!3147836)))

(declare-fun c!863592 () Bool)

(assert (=> b!5040441 (= c!863592 (<= i!618 0))))

(assert (= (and d!1621521 c!863591) b!5040438))

(assert (= (and d!1621521 (not c!863591)) b!5040441))

(assert (= (and b!5040441 c!863592) b!5040437))

(assert (= (and b!5040441 (not c!863592)) b!5040440))

(assert (= (and d!1621521 res!2147463) b!5040436))

(assert (= (and b!5040436 res!2147462) b!5040439))

(declare-fun m!6074584 () Bool)

(assert (=> d!1621521 m!6074584))

(assert (=> b!5040436 m!6074552))

(assert (=> b!5040439 m!6074542))

(declare-fun m!6074586 () Bool)

(assert (=> b!5040440 m!6074586))

(assert (=> b!5040355 d!1621521))

(declare-fun d!1621531 () Bool)

(assert (=> d!1621531 (= (list!18913 (xs!18840 t!4198)) (innerList!15602 (xs!18840 t!4198)))))

(assert (=> b!5040355 d!1621531))

(declare-fun b!5040483 () Bool)

(declare-fun e!3147856 () Int)

(declare-fun call!351405 () Int)

(assert (=> b!5040483 (= e!3147856 call!351405)))

(declare-fun b!5040484 () Bool)

(declare-fun e!3147859 () List!58426)

(assert (=> b!5040484 (= e!3147859 lt!2084247)))

(declare-fun b!5040485 () Bool)

(declare-fun e!3147857 () Int)

(assert (=> b!5040485 (= e!3147857 (- call!351405 i!618))))

(declare-fun b!5040486 () Bool)

(assert (=> b!5040486 (= e!3147857 0)))

(declare-fun b!5040487 () Bool)

(assert (=> b!5040487 (= e!3147859 (drop!2632 (t!370973 lt!2084247) (- i!618 1)))))

(declare-fun bm!351400 () Bool)

(assert (=> bm!351400 (= call!351405 (size!38903 lt!2084247))))

(declare-fun b!5040488 () Bool)

(declare-fun e!3147858 () List!58426)

(assert (=> b!5040488 (= e!3147858 e!3147859)))

(declare-fun c!863605 () Bool)

(assert (=> b!5040488 (= c!863605 (<= i!618 0))))

(declare-fun b!5040490 () Bool)

(assert (=> b!5040490 (= e!3147858 Nil!58302)))

(declare-fun b!5040491 () Bool)

(assert (=> b!5040491 (= e!3147856 e!3147857)))

(declare-fun c!863603 () Bool)

(assert (=> b!5040491 (= c!863603 (>= i!618 call!351405))))

(declare-fun d!1621533 () Bool)

(declare-fun e!3147860 () Bool)

(assert (=> d!1621533 e!3147860))

(declare-fun res!2147485 () Bool)

(assert (=> d!1621533 (=> (not res!2147485) (not e!3147860))))

(declare-fun lt!2084265 () List!58426)

(assert (=> d!1621533 (= res!2147485 (= ((_ map implies) (content!10355 lt!2084265) (content!10355 lt!2084247)) ((as const (InoxSet T!104194)) true)))))

(assert (=> d!1621533 (= lt!2084265 e!3147858)))

(declare-fun c!863604 () Bool)

(assert (=> d!1621533 (= c!863604 ((_ is Nil!58302) lt!2084247))))

(assert (=> d!1621533 (= (drop!2632 lt!2084247 i!618) lt!2084265)))

(declare-fun b!5040489 () Bool)

(assert (=> b!5040489 (= e!3147860 (= (size!38903 lt!2084265) e!3147856))))

(declare-fun c!863606 () Bool)

(assert (=> b!5040489 (= c!863606 (<= i!618 0))))

(assert (= (and d!1621533 c!863604) b!5040490))

(assert (= (and d!1621533 (not c!863604)) b!5040488))

(assert (= (and b!5040488 c!863605) b!5040484))

(assert (= (and b!5040488 (not c!863605)) b!5040487))

(assert (= (and d!1621533 res!2147485) b!5040489))

(assert (= (and b!5040489 c!863606) b!5040483))

(assert (= (and b!5040489 (not c!863606)) b!5040491))

(assert (= (and b!5040491 c!863603) b!5040486))

(assert (= (and b!5040491 (not c!863603)) b!5040485))

(assert (= (or b!5040483 b!5040491 b!5040485) bm!351400))

(declare-fun m!6074604 () Bool)

(assert (=> b!5040487 m!6074604))

(assert (=> bm!351400 m!6074546))

(declare-fun m!6074606 () Bool)

(assert (=> d!1621533 m!6074606))

(assert (=> d!1621533 m!6074562))

(declare-fun m!6074608 () Bool)

(assert (=> b!5040489 m!6074608))

(assert (=> b!5040359 d!1621533))

(declare-fun d!1621539 () Bool)

(declare-fun lt!2084270 () Int)

(assert (=> d!1621539 (>= lt!2084270 0)))

(declare-fun e!3147867 () Int)

(assert (=> d!1621539 (= lt!2084270 e!3147867)))

(declare-fun c!863611 () Bool)

(assert (=> d!1621539 (= c!863611 ((_ is Nil!58302) lt!2084247))))

(assert (=> d!1621539 (= (size!38903 lt!2084247) lt!2084270)))

(declare-fun b!5040504 () Bool)

(assert (=> b!5040504 (= e!3147867 0)))

(declare-fun b!5040505 () Bool)

(assert (=> b!5040505 (= e!3147867 (+ 1 (size!38903 (t!370973 lt!2084247))))))

(assert (= (and d!1621539 c!863611) b!5040504))

(assert (= (and d!1621539 (not c!863611)) b!5040505))

(declare-fun m!6074610 () Bool)

(assert (=> b!5040505 m!6074610))

(assert (=> b!5040358 d!1621539))

(declare-fun b!5040531 () Bool)

(declare-fun res!2147506 () Bool)

(declare-fun e!3147880 () Bool)

(assert (=> b!5040531 (=> (not res!2147506) (not e!3147880))))

(assert (=> b!5040531 (= res!2147506 (isBalanced!4376 (right!43030 t!4198)))))

(declare-fun b!5040532 () Bool)

(declare-fun res!2147504 () Bool)

(assert (=> b!5040532 (=> (not res!2147504) (not e!3147880))))

(assert (=> b!5040532 (= res!2147504 (isBalanced!4376 (left!42700 t!4198)))))

(declare-fun b!5040533 () Bool)

(declare-fun isEmpty!31534 (Conc!15514) Bool)

(assert (=> b!5040533 (= e!3147880 (not (isEmpty!31534 (right!43030 t!4198))))))

(declare-fun b!5040534 () Bool)

(declare-fun res!2147501 () Bool)

(assert (=> b!5040534 (=> (not res!2147501) (not e!3147880))))

(assert (=> b!5040534 (= res!2147501 (not (isEmpty!31534 (left!42700 t!4198))))))

(declare-fun b!5040535 () Bool)

(declare-fun res!2147502 () Bool)

(assert (=> b!5040535 (=> (not res!2147502) (not e!3147880))))

(declare-fun height!2093 (Conc!15514) Int)

(assert (=> b!5040535 (= res!2147502 (<= (- (height!2093 (left!42700 t!4198)) (height!2093 (right!43030 t!4198))) 1))))

(declare-fun d!1621541 () Bool)

(declare-fun res!2147503 () Bool)

(declare-fun e!3147881 () Bool)

(assert (=> d!1621541 (=> res!2147503 e!3147881)))

(assert (=> d!1621541 (= res!2147503 (not ((_ is Node!15514) t!4198)))))

(assert (=> d!1621541 (= (isBalanced!4376 t!4198) e!3147881)))

(declare-fun b!5040536 () Bool)

(assert (=> b!5040536 (= e!3147881 e!3147880)))

(declare-fun res!2147505 () Bool)

(assert (=> b!5040536 (=> (not res!2147505) (not e!3147880))))

(assert (=> b!5040536 (= res!2147505 (<= (- 1) (- (height!2093 (left!42700 t!4198)) (height!2093 (right!43030 t!4198)))))))

(assert (= (and d!1621541 (not res!2147503)) b!5040536))

(assert (= (and b!5040536 res!2147505) b!5040535))

(assert (= (and b!5040535 res!2147502) b!5040532))

(assert (= (and b!5040532 res!2147504) b!5040531))

(assert (= (and b!5040531 res!2147506) b!5040534))

(assert (= (and b!5040534 res!2147501) b!5040533))

(declare-fun m!6074618 () Bool)

(assert (=> b!5040534 m!6074618))

(declare-fun m!6074620 () Bool)

(assert (=> b!5040531 m!6074620))

(declare-fun m!6074622 () Bool)

(assert (=> b!5040532 m!6074622))

(declare-fun m!6074624 () Bool)

(assert (=> b!5040533 m!6074624))

(declare-fun m!6074626 () Bool)

(assert (=> b!5040535 m!6074626))

(declare-fun m!6074628 () Bool)

(assert (=> b!5040535 m!6074628))

(assert (=> b!5040536 m!6074626))

(assert (=> b!5040536 m!6074628))

(assert (=> start!533198 d!1621541))

(declare-fun d!1621545 () Bool)

(declare-fun c!863625 () Bool)

(assert (=> d!1621545 (= c!863625 ((_ is Node!15514) t!4198))))

(declare-fun e!3147892 () Bool)

(assert (=> d!1621545 (= (inv!77161 t!4198) e!3147892)))

(declare-fun b!5040555 () Bool)

(declare-fun inv!77165 (Conc!15514) Bool)

(assert (=> b!5040555 (= e!3147892 (inv!77165 t!4198))))

(declare-fun b!5040556 () Bool)

(declare-fun e!3147893 () Bool)

(assert (=> b!5040556 (= e!3147892 e!3147893)))

(declare-fun res!2147513 () Bool)

(assert (=> b!5040556 (= res!2147513 (not ((_ is Leaf!25735) t!4198)))))

(assert (=> b!5040556 (=> res!2147513 e!3147893)))

(declare-fun b!5040557 () Bool)

(declare-fun inv!77166 (Conc!15514) Bool)

(assert (=> b!5040557 (= e!3147893 (inv!77166 t!4198))))

(assert (= (and d!1621545 c!863625) b!5040555))

(assert (= (and d!1621545 (not c!863625)) b!5040556))

(assert (= (and b!5040556 (not res!2147513)) b!5040557))

(declare-fun m!6074630 () Bool)

(assert (=> b!5040555 m!6074630))

(declare-fun m!6074632 () Bool)

(assert (=> b!5040557 m!6074632))

(assert (=> start!533198 d!1621545))

(declare-fun d!1621547 () Bool)

(declare-fun lt!2084280 () Int)

(declare-fun list!18914 (Conc!15514) List!58426)

(assert (=> d!1621547 (= lt!2084280 (size!38903 (list!18914 t!4198)))))

(assert (=> d!1621547 (= lt!2084280 (ite ((_ is Empty!15514) t!4198) 0 (ite ((_ is Leaf!25735) t!4198) (csize!31259 t!4198) (csize!31258 t!4198))))))

(assert (=> d!1621547 (= (size!38902 t!4198) lt!2084280)))

(declare-fun bs!1188906 () Bool)

(assert (= bs!1188906 d!1621547))

(declare-fun m!6074638 () Bool)

(assert (=> bs!1188906 m!6074638))

(assert (=> bs!1188906 m!6074638))

(declare-fun m!6074640 () Bool)

(assert (=> bs!1188906 m!6074640))

(assert (=> b!5040351 d!1621547))

(declare-fun d!1621553 () Bool)

(declare-fun c!863628 () Bool)

(assert (=> d!1621553 (= c!863628 ((_ is Node!15514) (left!42700 t!4198)))))

(declare-fun e!3147897 () Bool)

(assert (=> d!1621553 (= (inv!77161 (left!42700 t!4198)) e!3147897)))

(declare-fun b!5040564 () Bool)

(assert (=> b!5040564 (= e!3147897 (inv!77165 (left!42700 t!4198)))))

(declare-fun b!5040565 () Bool)

(declare-fun e!3147898 () Bool)

(assert (=> b!5040565 (= e!3147897 e!3147898)))

(declare-fun res!2147516 () Bool)

(assert (=> b!5040565 (= res!2147516 (not ((_ is Leaf!25735) (left!42700 t!4198))))))

(assert (=> b!5040565 (=> res!2147516 e!3147898)))

(declare-fun b!5040566 () Bool)

(assert (=> b!5040566 (= e!3147898 (inv!77166 (left!42700 t!4198)))))

(assert (= (and d!1621553 c!863628) b!5040564))

(assert (= (and d!1621553 (not c!863628)) b!5040565))

(assert (= (and b!5040565 (not res!2147516)) b!5040566))

(declare-fun m!6074642 () Bool)

(assert (=> b!5040564 m!6074642))

(declare-fun m!6074644 () Bool)

(assert (=> b!5040566 m!6074644))

(assert (=> b!5040352 d!1621553))

(declare-fun d!1621555 () Bool)

(declare-fun c!863629 () Bool)

(assert (=> d!1621555 (= c!863629 ((_ is Node!15514) (right!43030 t!4198)))))

(declare-fun e!3147899 () Bool)

(assert (=> d!1621555 (= (inv!77161 (right!43030 t!4198)) e!3147899)))

(declare-fun b!5040567 () Bool)

(assert (=> b!5040567 (= e!3147899 (inv!77165 (right!43030 t!4198)))))

(declare-fun b!5040568 () Bool)

(declare-fun e!3147900 () Bool)

(assert (=> b!5040568 (= e!3147899 e!3147900)))

(declare-fun res!2147517 () Bool)

(assert (=> b!5040568 (= res!2147517 (not ((_ is Leaf!25735) (right!43030 t!4198))))))

(assert (=> b!5040568 (=> res!2147517 e!3147900)))

(declare-fun b!5040569 () Bool)

(assert (=> b!5040569 (= e!3147900 (inv!77166 (right!43030 t!4198)))))

(assert (= (and d!1621555 c!863629) b!5040567))

(assert (= (and d!1621555 (not c!863629)) b!5040568))

(assert (= (and b!5040568 (not res!2147517)) b!5040569))

(declare-fun m!6074650 () Bool)

(assert (=> b!5040567 m!6074650))

(declare-fun m!6074652 () Bool)

(assert (=> b!5040569 m!6074652))

(assert (=> b!5040352 d!1621555))

(declare-fun d!1621559 () Bool)

(assert (=> d!1621559 (= (inv!77162 (xs!18840 t!4198)) (<= (size!38903 (innerList!15602 (xs!18840 t!4198))) 2147483647))))

(declare-fun bs!1188909 () Bool)

(assert (= bs!1188909 d!1621559))

(declare-fun m!6074656 () Bool)

(assert (=> bs!1188909 m!6074656))

(assert (=> b!5040357 d!1621559))

(declare-fun b!5040587 () Bool)

(declare-fun e!3147910 () Bool)

(declare-fun tp_is_empty!36791 () Bool)

(declare-fun tp!1411033 () Bool)

(assert (=> b!5040587 (= e!3147910 (and tp_is_empty!36791 tp!1411033))))

(assert (=> b!5040356 (= tp!1411019 e!3147910)))

(assert (= (and b!5040356 ((_ is Cons!58302) (innerList!15602 (xs!18840 t!4198)))) b!5040587))

(declare-fun tp!1411048 () Bool)

(declare-fun tp!1411046 () Bool)

(declare-fun e!3147919 () Bool)

(declare-fun b!5040602 () Bool)

(assert (=> b!5040602 (= e!3147919 (and (inv!77161 (left!42700 (left!42700 t!4198))) tp!1411048 (inv!77161 (right!43030 (left!42700 t!4198))) tp!1411046))))

(declare-fun b!5040604 () Bool)

(declare-fun e!3147920 () Bool)

(declare-fun tp!1411047 () Bool)

(assert (=> b!5040604 (= e!3147920 tp!1411047)))

(declare-fun b!5040603 () Bool)

(assert (=> b!5040603 (= e!3147919 (and (inv!77162 (xs!18840 (left!42700 t!4198))) e!3147920))))

(assert (=> b!5040352 (= tp!1411020 (and (inv!77161 (left!42700 t!4198)) e!3147919))))

(assert (= (and b!5040352 ((_ is Node!15514) (left!42700 t!4198))) b!5040602))

(assert (= b!5040603 b!5040604))

(assert (= (and b!5040352 ((_ is Leaf!25735) (left!42700 t!4198))) b!5040603))

(declare-fun m!6074670 () Bool)

(assert (=> b!5040602 m!6074670))

(declare-fun m!6074672 () Bool)

(assert (=> b!5040602 m!6074672))

(declare-fun m!6074674 () Bool)

(assert (=> b!5040603 m!6074674))

(assert (=> b!5040352 m!6074538))

(declare-fun e!3147921 () Bool)

(declare-fun b!5040605 () Bool)

(declare-fun tp!1411049 () Bool)

(declare-fun tp!1411051 () Bool)

(assert (=> b!5040605 (= e!3147921 (and (inv!77161 (left!42700 (right!43030 t!4198))) tp!1411051 (inv!77161 (right!43030 (right!43030 t!4198))) tp!1411049))))

(declare-fun b!5040607 () Bool)

(declare-fun e!3147922 () Bool)

(declare-fun tp!1411050 () Bool)

(assert (=> b!5040607 (= e!3147922 tp!1411050)))

(declare-fun b!5040606 () Bool)

(assert (=> b!5040606 (= e!3147921 (and (inv!77162 (xs!18840 (right!43030 t!4198))) e!3147922))))

(assert (=> b!5040352 (= tp!1411021 (and (inv!77161 (right!43030 t!4198)) e!3147921))))

(assert (= (and b!5040352 ((_ is Node!15514) (right!43030 t!4198))) b!5040605))

(assert (= b!5040606 b!5040607))

(assert (= (and b!5040352 ((_ is Leaf!25735) (right!43030 t!4198))) b!5040606))

(declare-fun m!6074676 () Bool)

(assert (=> b!5040605 m!6074676))

(declare-fun m!6074678 () Bool)

(assert (=> b!5040605 m!6074678))

(declare-fun m!6074680 () Bool)

(assert (=> b!5040606 m!6074680))

(assert (=> b!5040352 m!6074540))

(check-sat (not b!5040607) (not d!1621521) (not b!5040603) (not b!5040487) (not b!5040352) tp_is_empty!36791 (not b!5040532) (not b!5040567) (not d!1621547) (not b!5040395) (not b!5040602) (not b!5040557) (not b!5040436) (not b!5040587) (not b!5040394) (not b!5040536) (not b!5040605) (not b!5040393) (not b!5040569) (not b!5040439) (not b!5040531) (not b!5040505) (not d!1621559) (not b!5040555) (not b!5040535) (not b!5040440) (not bm!351400) (not b!5040564) (not b!5040606) (not b!5040604) (not b!5040398) (not b!5040566) (not d!1621533) (not b!5040489) (not d!1621517) (not b!5040534) (not b!5040533))
(check-sat)
(get-model)

(assert (=> b!5040394 d!1621539))

(declare-fun d!1621561 () Bool)

(assert (=> d!1621561 (= (height!2093 (left!42700 t!4198)) (ite ((_ is Empty!15514) (left!42700 t!4198)) 0 (ite ((_ is Leaf!25735) (left!42700 t!4198)) 1 (cheight!15725 (left!42700 t!4198)))))))

(assert (=> b!5040536 d!1621561))

(declare-fun d!1621563 () Bool)

(assert (=> d!1621563 (= (height!2093 (right!43030 t!4198)) (ite ((_ is Empty!15514) (right!43030 t!4198)) 0 (ite ((_ is Leaf!25735) (right!43030 t!4198)) 1 (cheight!15725 (right!43030 t!4198)))))))

(assert (=> b!5040536 d!1621563))

(declare-fun d!1621565 () Bool)

(declare-fun c!863632 () Bool)

(assert (=> d!1621565 (= c!863632 ((_ is Nil!58302) lt!2084265))))

(declare-fun e!3147925 () (InoxSet T!104194))

(assert (=> d!1621565 (= (content!10355 lt!2084265) e!3147925)))

(declare-fun b!5040612 () Bool)

(assert (=> b!5040612 (= e!3147925 ((as const (Array T!104194 Bool)) false))))

(declare-fun b!5040613 () Bool)

(assert (=> b!5040613 (= e!3147925 ((_ map or) (store ((as const (Array T!104194 Bool)) false) (h!64750 lt!2084265) true) (content!10355 (t!370973 lt!2084265))))))

(assert (= (and d!1621565 c!863632) b!5040612))

(assert (= (and d!1621565 (not c!863632)) b!5040613))

(declare-fun m!6074682 () Bool)

(assert (=> b!5040613 m!6074682))

(declare-fun m!6074684 () Bool)

(assert (=> b!5040613 m!6074684))

(assert (=> d!1621533 d!1621565))

(declare-fun d!1621567 () Bool)

(declare-fun c!863633 () Bool)

(assert (=> d!1621567 (= c!863633 ((_ is Nil!58302) lt!2084247))))

(declare-fun e!3147926 () (InoxSet T!104194))

(assert (=> d!1621567 (= (content!10355 lt!2084247) e!3147926)))

(declare-fun b!5040614 () Bool)

(assert (=> b!5040614 (= e!3147926 ((as const (Array T!104194 Bool)) false))))

(declare-fun b!5040615 () Bool)

(assert (=> b!5040615 (= e!3147926 ((_ map or) (store ((as const (Array T!104194 Bool)) false) (h!64750 lt!2084247) true) (content!10355 (t!370973 lt!2084247))))))

(assert (= (and d!1621567 c!863633) b!5040614))

(assert (= (and d!1621567 (not c!863633)) b!5040615))

(declare-fun m!6074686 () Bool)

(assert (=> b!5040615 m!6074686))

(declare-fun m!6074688 () Bool)

(assert (=> b!5040615 m!6074688))

(assert (=> d!1621533 d!1621567))

(declare-fun d!1621569 () Bool)

(declare-fun e!3147928 () Bool)

(assert (=> d!1621569 e!3147928))

(declare-fun res!2147519 () Bool)

(assert (=> d!1621569 (=> (not res!2147519) (not e!3147928))))

(declare-fun lt!2084285 () tuple2!63238)

(assert (=> d!1621569 (= res!2147519 (= (++!12726 (_1!34922 lt!2084285) (_2!34922 lt!2084285)) (t!370973 lt!2084247)))))

(declare-fun e!3147927 () tuple2!63238)

(assert (=> d!1621569 (= lt!2084285 e!3147927)))

(declare-fun c!863634 () Bool)

(assert (=> d!1621569 (= c!863634 ((_ is Nil!58302) (t!370973 lt!2084247)))))

(assert (=> d!1621569 (= (splitAtIndex!209 (t!370973 lt!2084247) (- i!618 1)) lt!2084285)))

(declare-fun b!5040616 () Bool)

(declare-fun res!2147518 () Bool)

(assert (=> b!5040616 (=> (not res!2147518) (not e!3147928))))

(assert (=> b!5040616 (= res!2147518 (= (_1!34922 lt!2084285) (take!825 (t!370973 lt!2084247) (- i!618 1))))))

(declare-fun b!5040617 () Bool)

(declare-fun e!3147929 () tuple2!63238)

(assert (=> b!5040617 (= e!3147929 (tuple2!63239 Nil!58302 (t!370973 lt!2084247)))))

(declare-fun b!5040618 () Bool)

(assert (=> b!5040618 (= e!3147927 (tuple2!63239 Nil!58302 Nil!58302))))

(declare-fun b!5040619 () Bool)

(assert (=> b!5040619 (= e!3147928 (= (_2!34922 lt!2084285) (drop!2632 (t!370973 lt!2084247) (- i!618 1))))))

(declare-fun b!5040620 () Bool)

(declare-fun lt!2084284 () tuple2!63238)

(assert (=> b!5040620 (= lt!2084284 (splitAtIndex!209 (t!370973 (t!370973 lt!2084247)) (- (- i!618 1) 1)))))

(assert (=> b!5040620 (= e!3147929 (tuple2!63239 (Cons!58302 (h!64750 (t!370973 lt!2084247)) (_1!34922 lt!2084284)) (_2!34922 lt!2084284)))))

(declare-fun b!5040621 () Bool)

(assert (=> b!5040621 (= e!3147927 e!3147929)))

(declare-fun c!863635 () Bool)

(assert (=> b!5040621 (= c!863635 (<= (- i!618 1) 0))))

(assert (= (and d!1621569 c!863634) b!5040618))

(assert (= (and d!1621569 (not c!863634)) b!5040621))

(assert (= (and b!5040621 c!863635) b!5040617))

(assert (= (and b!5040621 (not c!863635)) b!5040620))

(assert (= (and d!1621569 res!2147519) b!5040616))

(assert (= (and b!5040616 res!2147518) b!5040619))

(declare-fun m!6074690 () Bool)

(assert (=> d!1621569 m!6074690))

(assert (=> b!5040616 m!6074564))

(assert (=> b!5040619 m!6074604))

(declare-fun m!6074692 () Bool)

(assert (=> b!5040620 m!6074692))

(assert (=> b!5040440 d!1621569))

(declare-fun d!1621571 () Bool)

(declare-fun lt!2084286 () Int)

(assert (=> d!1621571 (>= lt!2084286 0)))

(declare-fun e!3147930 () Int)

(assert (=> d!1621571 (= lt!2084286 e!3147930)))

(declare-fun c!863636 () Bool)

(assert (=> d!1621571 (= c!863636 ((_ is Nil!58302) lt!2084252))))

(assert (=> d!1621571 (= (size!38903 lt!2084252) lt!2084286)))

(declare-fun b!5040622 () Bool)

(assert (=> b!5040622 (= e!3147930 0)))

(declare-fun b!5040623 () Bool)

(assert (=> b!5040623 (= e!3147930 (+ 1 (size!38903 (t!370973 lt!2084252))))))

(assert (= (and d!1621571 c!863636) b!5040622))

(assert (= (and d!1621571 (not c!863636)) b!5040623))

(declare-fun m!6074694 () Bool)

(assert (=> b!5040623 m!6074694))

(assert (=> b!5040395 d!1621571))

(declare-fun d!1621573 () Bool)

(declare-fun res!2147524 () Bool)

(declare-fun e!3147933 () Bool)

(assert (=> d!1621573 (=> (not res!2147524) (not e!3147933))))

(assert (=> d!1621573 (= res!2147524 (<= (size!38903 (list!18913 (xs!18840 (left!42700 t!4198)))) 512))))

(assert (=> d!1621573 (= (inv!77166 (left!42700 t!4198)) e!3147933)))

(declare-fun b!5040628 () Bool)

(declare-fun res!2147525 () Bool)

(assert (=> b!5040628 (=> (not res!2147525) (not e!3147933))))

(assert (=> b!5040628 (= res!2147525 (= (csize!31259 (left!42700 t!4198)) (size!38903 (list!18913 (xs!18840 (left!42700 t!4198))))))))

(declare-fun b!5040629 () Bool)

(assert (=> b!5040629 (= e!3147933 (and (> (csize!31259 (left!42700 t!4198)) 0) (<= (csize!31259 (left!42700 t!4198)) 512)))))

(assert (= (and d!1621573 res!2147524) b!5040628))

(assert (= (and b!5040628 res!2147525) b!5040629))

(declare-fun m!6074696 () Bool)

(assert (=> d!1621573 m!6074696))

(assert (=> d!1621573 m!6074696))

(declare-fun m!6074698 () Bool)

(assert (=> d!1621573 m!6074698))

(assert (=> b!5040628 m!6074696))

(assert (=> b!5040628 m!6074696))

(assert (=> b!5040628 m!6074698))

(assert (=> b!5040566 d!1621573))

(assert (=> b!5040393 d!1621539))

(declare-fun d!1621575 () Bool)

(declare-fun res!2147532 () Bool)

(declare-fun e!3147936 () Bool)

(assert (=> d!1621575 (=> (not res!2147532) (not e!3147936))))

(assert (=> d!1621575 (= res!2147532 (= (csize!31258 (left!42700 t!4198)) (+ (size!38902 (left!42700 (left!42700 t!4198))) (size!38902 (right!43030 (left!42700 t!4198))))))))

(assert (=> d!1621575 (= (inv!77165 (left!42700 t!4198)) e!3147936)))

(declare-fun b!5040636 () Bool)

(declare-fun res!2147533 () Bool)

(assert (=> b!5040636 (=> (not res!2147533) (not e!3147936))))

(assert (=> b!5040636 (= res!2147533 (and (not (= (left!42700 (left!42700 t!4198)) Empty!15514)) (not (= (right!43030 (left!42700 t!4198)) Empty!15514))))))

(declare-fun b!5040637 () Bool)

(declare-fun res!2147534 () Bool)

(assert (=> b!5040637 (=> (not res!2147534) (not e!3147936))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!5040637 (= res!2147534 (= (cheight!15725 (left!42700 t!4198)) (+ (max!0 (height!2093 (left!42700 (left!42700 t!4198))) (height!2093 (right!43030 (left!42700 t!4198)))) 1)))))

(declare-fun b!5040638 () Bool)

(assert (=> b!5040638 (= e!3147936 (<= 0 (cheight!15725 (left!42700 t!4198))))))

(assert (= (and d!1621575 res!2147532) b!5040636))

(assert (= (and b!5040636 res!2147533) b!5040637))

(assert (= (and b!5040637 res!2147534) b!5040638))

(declare-fun m!6074700 () Bool)

(assert (=> d!1621575 m!6074700))

(declare-fun m!6074702 () Bool)

(assert (=> d!1621575 m!6074702))

(declare-fun m!6074704 () Bool)

(assert (=> b!5040637 m!6074704))

(declare-fun m!6074706 () Bool)

(assert (=> b!5040637 m!6074706))

(assert (=> b!5040637 m!6074704))

(assert (=> b!5040637 m!6074706))

(declare-fun m!6074708 () Bool)

(assert (=> b!5040637 m!6074708))

(assert (=> b!5040564 d!1621575))

(assert (=> b!5040535 d!1621561))

(assert (=> b!5040535 d!1621563))

(assert (=> b!5040439 d!1621533))

(declare-fun d!1621577 () Bool)

(declare-fun c!863637 () Bool)

(assert (=> d!1621577 (= c!863637 ((_ is Node!15514) (left!42700 (left!42700 t!4198))))))

(declare-fun e!3147937 () Bool)

(assert (=> d!1621577 (= (inv!77161 (left!42700 (left!42700 t!4198))) e!3147937)))

(declare-fun b!5040639 () Bool)

(assert (=> b!5040639 (= e!3147937 (inv!77165 (left!42700 (left!42700 t!4198))))))

(declare-fun b!5040640 () Bool)

(declare-fun e!3147938 () Bool)

(assert (=> b!5040640 (= e!3147937 e!3147938)))

(declare-fun res!2147535 () Bool)

(assert (=> b!5040640 (= res!2147535 (not ((_ is Leaf!25735) (left!42700 (left!42700 t!4198)))))))

(assert (=> b!5040640 (=> res!2147535 e!3147938)))

(declare-fun b!5040641 () Bool)

(assert (=> b!5040641 (= e!3147938 (inv!77166 (left!42700 (left!42700 t!4198))))))

(assert (= (and d!1621577 c!863637) b!5040639))

(assert (= (and d!1621577 (not c!863637)) b!5040640))

(assert (= (and b!5040640 (not res!2147535)) b!5040641))

(declare-fun m!6074710 () Bool)

(assert (=> b!5040639 m!6074710))

(declare-fun m!6074712 () Bool)

(assert (=> b!5040641 m!6074712))

(assert (=> b!5040602 d!1621577))

(declare-fun d!1621579 () Bool)

(declare-fun c!863638 () Bool)

(assert (=> d!1621579 (= c!863638 ((_ is Node!15514) (right!43030 (left!42700 t!4198))))))

(declare-fun e!3147939 () Bool)

(assert (=> d!1621579 (= (inv!77161 (right!43030 (left!42700 t!4198))) e!3147939)))

(declare-fun b!5040642 () Bool)

(assert (=> b!5040642 (= e!3147939 (inv!77165 (right!43030 (left!42700 t!4198))))))

(declare-fun b!5040643 () Bool)

(declare-fun e!3147940 () Bool)

(assert (=> b!5040643 (= e!3147939 e!3147940)))

(declare-fun res!2147536 () Bool)

(assert (=> b!5040643 (= res!2147536 (not ((_ is Leaf!25735) (right!43030 (left!42700 t!4198)))))))

(assert (=> b!5040643 (=> res!2147536 e!3147940)))

(declare-fun b!5040644 () Bool)

(assert (=> b!5040644 (= e!3147940 (inv!77166 (right!43030 (left!42700 t!4198))))))

(assert (= (and d!1621579 c!863638) b!5040642))

(assert (= (and d!1621579 (not c!863638)) b!5040643))

(assert (= (and b!5040643 (not res!2147536)) b!5040644))

(declare-fun m!6074714 () Bool)

(assert (=> b!5040642 m!6074714))

(declare-fun m!6074716 () Bool)

(assert (=> b!5040644 m!6074716))

(assert (=> b!5040602 d!1621579))

(declare-fun d!1621581 () Bool)

(assert (=> d!1621581 (= (inv!77162 (xs!18840 (left!42700 t!4198))) (<= (size!38903 (innerList!15602 (xs!18840 (left!42700 t!4198)))) 2147483647))))

(declare-fun bs!1188910 () Bool)

(assert (= bs!1188910 d!1621581))

(declare-fun m!6074718 () Bool)

(assert (=> bs!1188910 m!6074718))

(assert (=> b!5040603 d!1621581))

(declare-fun b!5040645 () Bool)

(declare-fun res!2147542 () Bool)

(declare-fun e!3147941 () Bool)

(assert (=> b!5040645 (=> (not res!2147542) (not e!3147941))))

(assert (=> b!5040645 (= res!2147542 (isBalanced!4376 (right!43030 (right!43030 t!4198))))))

(declare-fun b!5040646 () Bool)

(declare-fun res!2147540 () Bool)

(assert (=> b!5040646 (=> (not res!2147540) (not e!3147941))))

(assert (=> b!5040646 (= res!2147540 (isBalanced!4376 (left!42700 (right!43030 t!4198))))))

(declare-fun b!5040647 () Bool)

(assert (=> b!5040647 (= e!3147941 (not (isEmpty!31534 (right!43030 (right!43030 t!4198)))))))

(declare-fun b!5040648 () Bool)

(declare-fun res!2147537 () Bool)

(assert (=> b!5040648 (=> (not res!2147537) (not e!3147941))))

(assert (=> b!5040648 (= res!2147537 (not (isEmpty!31534 (left!42700 (right!43030 t!4198)))))))

(declare-fun b!5040649 () Bool)

(declare-fun res!2147538 () Bool)

(assert (=> b!5040649 (=> (not res!2147538) (not e!3147941))))

(assert (=> b!5040649 (= res!2147538 (<= (- (height!2093 (left!42700 (right!43030 t!4198))) (height!2093 (right!43030 (right!43030 t!4198)))) 1))))

(declare-fun d!1621583 () Bool)

(declare-fun res!2147539 () Bool)

(declare-fun e!3147942 () Bool)

(assert (=> d!1621583 (=> res!2147539 e!3147942)))

(assert (=> d!1621583 (= res!2147539 (not ((_ is Node!15514) (right!43030 t!4198))))))

(assert (=> d!1621583 (= (isBalanced!4376 (right!43030 t!4198)) e!3147942)))

(declare-fun b!5040650 () Bool)

(assert (=> b!5040650 (= e!3147942 e!3147941)))

(declare-fun res!2147541 () Bool)

(assert (=> b!5040650 (=> (not res!2147541) (not e!3147941))))

(assert (=> b!5040650 (= res!2147541 (<= (- 1) (- (height!2093 (left!42700 (right!43030 t!4198))) (height!2093 (right!43030 (right!43030 t!4198))))))))

(assert (= (and d!1621583 (not res!2147539)) b!5040650))

(assert (= (and b!5040650 res!2147541) b!5040649))

(assert (= (and b!5040649 res!2147538) b!5040646))

(assert (= (and b!5040646 res!2147540) b!5040645))

(assert (= (and b!5040645 res!2147542) b!5040648))

(assert (= (and b!5040648 res!2147537) b!5040647))

(declare-fun m!6074720 () Bool)

(assert (=> b!5040648 m!6074720))

(declare-fun m!6074722 () Bool)

(assert (=> b!5040645 m!6074722))

(declare-fun m!6074724 () Bool)

(assert (=> b!5040646 m!6074724))

(declare-fun m!6074726 () Bool)

(assert (=> b!5040647 m!6074726))

(declare-fun m!6074728 () Bool)

(assert (=> b!5040649 m!6074728))

(declare-fun m!6074730 () Bool)

(assert (=> b!5040649 m!6074730))

(assert (=> b!5040650 m!6074728))

(assert (=> b!5040650 m!6074730))

(assert (=> b!5040531 d!1621583))

(declare-fun d!1621585 () Bool)

(declare-fun c!863639 () Bool)

(assert (=> d!1621585 (= c!863639 ((_ is Node!15514) (left!42700 (right!43030 t!4198))))))

(declare-fun e!3147943 () Bool)

(assert (=> d!1621585 (= (inv!77161 (left!42700 (right!43030 t!4198))) e!3147943)))

(declare-fun b!5040651 () Bool)

(assert (=> b!5040651 (= e!3147943 (inv!77165 (left!42700 (right!43030 t!4198))))))

(declare-fun b!5040652 () Bool)

(declare-fun e!3147944 () Bool)

(assert (=> b!5040652 (= e!3147943 e!3147944)))

(declare-fun res!2147543 () Bool)

(assert (=> b!5040652 (= res!2147543 (not ((_ is Leaf!25735) (left!42700 (right!43030 t!4198)))))))

(assert (=> b!5040652 (=> res!2147543 e!3147944)))

(declare-fun b!5040653 () Bool)

(assert (=> b!5040653 (= e!3147944 (inv!77166 (left!42700 (right!43030 t!4198))))))

(assert (= (and d!1621585 c!863639) b!5040651))

(assert (= (and d!1621585 (not c!863639)) b!5040652))

(assert (= (and b!5040652 (not res!2147543)) b!5040653))

(declare-fun m!6074732 () Bool)

(assert (=> b!5040651 m!6074732))

(declare-fun m!6074734 () Bool)

(assert (=> b!5040653 m!6074734))

(assert (=> b!5040605 d!1621585))

(declare-fun d!1621587 () Bool)

(declare-fun c!863640 () Bool)

(assert (=> d!1621587 (= c!863640 ((_ is Node!15514) (right!43030 (right!43030 t!4198))))))

(declare-fun e!3147945 () Bool)

(assert (=> d!1621587 (= (inv!77161 (right!43030 (right!43030 t!4198))) e!3147945)))

(declare-fun b!5040654 () Bool)

(assert (=> b!5040654 (= e!3147945 (inv!77165 (right!43030 (right!43030 t!4198))))))

(declare-fun b!5040655 () Bool)

(declare-fun e!3147946 () Bool)

(assert (=> b!5040655 (= e!3147945 e!3147946)))

(declare-fun res!2147544 () Bool)

(assert (=> b!5040655 (= res!2147544 (not ((_ is Leaf!25735) (right!43030 (right!43030 t!4198)))))))

(assert (=> b!5040655 (=> res!2147544 e!3147946)))

(declare-fun b!5040656 () Bool)

(assert (=> b!5040656 (= e!3147946 (inv!77166 (right!43030 (right!43030 t!4198))))))

(assert (= (and d!1621587 c!863640) b!5040654))

(assert (= (and d!1621587 (not c!863640)) b!5040655))

(assert (= (and b!5040655 (not res!2147544)) b!5040656))

(declare-fun m!6074736 () Bool)

(assert (=> b!5040654 m!6074736))

(declare-fun m!6074738 () Bool)

(assert (=> b!5040656 m!6074738))

(assert (=> b!5040605 d!1621587))

(declare-fun d!1621589 () Bool)

(declare-fun res!2147545 () Bool)

(declare-fun e!3147947 () Bool)

(assert (=> d!1621589 (=> (not res!2147545) (not e!3147947))))

(assert (=> d!1621589 (= res!2147545 (<= (size!38903 (list!18913 (xs!18840 (right!43030 t!4198)))) 512))))

(assert (=> d!1621589 (= (inv!77166 (right!43030 t!4198)) e!3147947)))

(declare-fun b!5040657 () Bool)

(declare-fun res!2147546 () Bool)

(assert (=> b!5040657 (=> (not res!2147546) (not e!3147947))))

(assert (=> b!5040657 (= res!2147546 (= (csize!31259 (right!43030 t!4198)) (size!38903 (list!18913 (xs!18840 (right!43030 t!4198))))))))

(declare-fun b!5040658 () Bool)

(assert (=> b!5040658 (= e!3147947 (and (> (csize!31259 (right!43030 t!4198)) 0) (<= (csize!31259 (right!43030 t!4198)) 512)))))

(assert (= (and d!1621589 res!2147545) b!5040657))

(assert (= (and b!5040657 res!2147546) b!5040658))

(declare-fun m!6074740 () Bool)

(assert (=> d!1621589 m!6074740))

(assert (=> d!1621589 m!6074740))

(declare-fun m!6074742 () Bool)

(assert (=> d!1621589 m!6074742))

(assert (=> b!5040657 m!6074740))

(assert (=> b!5040657 m!6074740))

(assert (=> b!5040657 m!6074742))

(assert (=> b!5040569 d!1621589))

(declare-fun d!1621591 () Bool)

(declare-fun res!2147547 () Bool)

(declare-fun e!3147948 () Bool)

(assert (=> d!1621591 (=> (not res!2147547) (not e!3147948))))

(assert (=> d!1621591 (= res!2147547 (= (csize!31258 (right!43030 t!4198)) (+ (size!38902 (left!42700 (right!43030 t!4198))) (size!38902 (right!43030 (right!43030 t!4198))))))))

(assert (=> d!1621591 (= (inv!77165 (right!43030 t!4198)) e!3147948)))

(declare-fun b!5040659 () Bool)

(declare-fun res!2147548 () Bool)

(assert (=> b!5040659 (=> (not res!2147548) (not e!3147948))))

(assert (=> b!5040659 (= res!2147548 (and (not (= (left!42700 (right!43030 t!4198)) Empty!15514)) (not (= (right!43030 (right!43030 t!4198)) Empty!15514))))))

(declare-fun b!5040660 () Bool)

(declare-fun res!2147549 () Bool)

(assert (=> b!5040660 (=> (not res!2147549) (not e!3147948))))

(assert (=> b!5040660 (= res!2147549 (= (cheight!15725 (right!43030 t!4198)) (+ (max!0 (height!2093 (left!42700 (right!43030 t!4198))) (height!2093 (right!43030 (right!43030 t!4198)))) 1)))))

(declare-fun b!5040661 () Bool)

(assert (=> b!5040661 (= e!3147948 (<= 0 (cheight!15725 (right!43030 t!4198))))))

(assert (= (and d!1621591 res!2147547) b!5040659))

(assert (= (and b!5040659 res!2147548) b!5040660))

(assert (= (and b!5040660 res!2147549) b!5040661))

(declare-fun m!6074744 () Bool)

(assert (=> d!1621591 m!6074744))

(declare-fun m!6074746 () Bool)

(assert (=> d!1621591 m!6074746))

(assert (=> b!5040660 m!6074728))

(assert (=> b!5040660 m!6074730))

(assert (=> b!5040660 m!6074728))

(assert (=> b!5040660 m!6074730))

(declare-fun m!6074748 () Bool)

(assert (=> b!5040660 m!6074748))

(assert (=> b!5040567 d!1621591))

(declare-fun d!1621593 () Bool)

(declare-fun lt!2084289 () Bool)

(declare-fun isEmpty!31535 (List!58426) Bool)

(assert (=> d!1621593 (= lt!2084289 (isEmpty!31535 (list!18914 (left!42700 t!4198))))))

(assert (=> d!1621593 (= lt!2084289 (= (size!38902 (left!42700 t!4198)) 0))))

(assert (=> d!1621593 (= (isEmpty!31534 (left!42700 t!4198)) lt!2084289)))

(declare-fun bs!1188911 () Bool)

(assert (= bs!1188911 d!1621593))

(declare-fun m!6074750 () Bool)

(assert (=> bs!1188911 m!6074750))

(assert (=> bs!1188911 m!6074750))

(declare-fun m!6074752 () Bool)

(assert (=> bs!1188911 m!6074752))

(declare-fun m!6074754 () Bool)

(assert (=> bs!1188911 m!6074754))

(assert (=> b!5040534 d!1621593))

(declare-fun d!1621595 () Bool)

(declare-fun lt!2084290 () Int)

(assert (=> d!1621595 (>= lt!2084290 0)))

(declare-fun e!3147949 () Int)

(assert (=> d!1621595 (= lt!2084290 e!3147949)))

(declare-fun c!863641 () Bool)

(assert (=> d!1621595 (= c!863641 ((_ is Nil!58302) (t!370973 lt!2084247)))))

(assert (=> d!1621595 (= (size!38903 (t!370973 lt!2084247)) lt!2084290)))

(declare-fun b!5040662 () Bool)

(assert (=> b!5040662 (= e!3147949 0)))

(declare-fun b!5040663 () Bool)

(assert (=> b!5040663 (= e!3147949 (+ 1 (size!38903 (t!370973 (t!370973 lt!2084247)))))))

(assert (= (and d!1621595 c!863641) b!5040662))

(assert (= (and d!1621595 (not c!863641)) b!5040663))

(declare-fun m!6074756 () Bool)

(assert (=> b!5040663 m!6074756))

(assert (=> b!5040505 d!1621595))

(declare-fun b!5040664 () Bool)

(declare-fun res!2147555 () Bool)

(declare-fun e!3147950 () Bool)

(assert (=> b!5040664 (=> (not res!2147555) (not e!3147950))))

(assert (=> b!5040664 (= res!2147555 (isBalanced!4376 (right!43030 (left!42700 t!4198))))))

(declare-fun b!5040665 () Bool)

(declare-fun res!2147553 () Bool)

(assert (=> b!5040665 (=> (not res!2147553) (not e!3147950))))

(assert (=> b!5040665 (= res!2147553 (isBalanced!4376 (left!42700 (left!42700 t!4198))))))

(declare-fun b!5040666 () Bool)

(assert (=> b!5040666 (= e!3147950 (not (isEmpty!31534 (right!43030 (left!42700 t!4198)))))))

(declare-fun b!5040667 () Bool)

(declare-fun res!2147550 () Bool)

(assert (=> b!5040667 (=> (not res!2147550) (not e!3147950))))

(assert (=> b!5040667 (= res!2147550 (not (isEmpty!31534 (left!42700 (left!42700 t!4198)))))))

(declare-fun b!5040668 () Bool)

(declare-fun res!2147551 () Bool)

(assert (=> b!5040668 (=> (not res!2147551) (not e!3147950))))

(assert (=> b!5040668 (= res!2147551 (<= (- (height!2093 (left!42700 (left!42700 t!4198))) (height!2093 (right!43030 (left!42700 t!4198)))) 1))))

(declare-fun d!1621597 () Bool)

(declare-fun res!2147552 () Bool)

(declare-fun e!3147951 () Bool)

(assert (=> d!1621597 (=> res!2147552 e!3147951)))

(assert (=> d!1621597 (= res!2147552 (not ((_ is Node!15514) (left!42700 t!4198))))))

(assert (=> d!1621597 (= (isBalanced!4376 (left!42700 t!4198)) e!3147951)))

(declare-fun b!5040669 () Bool)

(assert (=> b!5040669 (= e!3147951 e!3147950)))

(declare-fun res!2147554 () Bool)

(assert (=> b!5040669 (=> (not res!2147554) (not e!3147950))))

(assert (=> b!5040669 (= res!2147554 (<= (- 1) (- (height!2093 (left!42700 (left!42700 t!4198))) (height!2093 (right!43030 (left!42700 t!4198))))))))

(assert (= (and d!1621597 (not res!2147552)) b!5040669))

(assert (= (and b!5040669 res!2147554) b!5040668))

(assert (= (and b!5040668 res!2147551) b!5040665))

(assert (= (and b!5040665 res!2147553) b!5040664))

(assert (= (and b!5040664 res!2147555) b!5040667))

(assert (= (and b!5040667 res!2147550) b!5040666))

(declare-fun m!6074758 () Bool)

(assert (=> b!5040667 m!6074758))

(declare-fun m!6074760 () Bool)

(assert (=> b!5040664 m!6074760))

(declare-fun m!6074762 () Bool)

(assert (=> b!5040665 m!6074762))

(declare-fun m!6074764 () Bool)

(assert (=> b!5040666 m!6074764))

(assert (=> b!5040668 m!6074704))

(assert (=> b!5040668 m!6074706))

(assert (=> b!5040669 m!6074704))

(assert (=> b!5040669 m!6074706))

(assert (=> b!5040532 d!1621597))

(declare-fun d!1621599 () Bool)

(assert (=> d!1621599 (= (inv!77162 (xs!18840 (right!43030 t!4198))) (<= (size!38903 (innerList!15602 (xs!18840 (right!43030 t!4198)))) 2147483647))))

(declare-fun bs!1188912 () Bool)

(assert (= bs!1188912 d!1621599))

(declare-fun m!6074766 () Bool)

(assert (=> bs!1188912 m!6074766))

(assert (=> b!5040606 d!1621599))

(assert (=> b!5040436 d!1621517))

(declare-fun d!1621601 () Bool)

(declare-fun lt!2084291 () Bool)

(assert (=> d!1621601 (= lt!2084291 (isEmpty!31535 (list!18914 (right!43030 t!4198))))))

(assert (=> d!1621601 (= lt!2084291 (= (size!38902 (right!43030 t!4198)) 0))))

(assert (=> d!1621601 (= (isEmpty!31534 (right!43030 t!4198)) lt!2084291)))

(declare-fun bs!1188913 () Bool)

(assert (= bs!1188913 d!1621601))

(declare-fun m!6074768 () Bool)

(assert (=> bs!1188913 m!6074768))

(assert (=> bs!1188913 m!6074768))

(declare-fun m!6074770 () Bool)

(assert (=> bs!1188913 m!6074770))

(declare-fun m!6074772 () Bool)

(assert (=> bs!1188913 m!6074772))

(assert (=> b!5040533 d!1621601))

(declare-fun b!5040670 () Bool)

(declare-fun e!3147952 () Int)

(declare-fun call!351406 () Int)

(assert (=> b!5040670 (= e!3147952 call!351406)))

(declare-fun b!5040671 () Bool)

(declare-fun e!3147955 () List!58426)

(assert (=> b!5040671 (= e!3147955 (t!370973 lt!2084247))))

(declare-fun b!5040672 () Bool)

(declare-fun e!3147953 () Int)

(assert (=> b!5040672 (= e!3147953 (- call!351406 (- i!618 1)))))

(declare-fun b!5040673 () Bool)

(assert (=> b!5040673 (= e!3147953 0)))

(declare-fun b!5040674 () Bool)

(assert (=> b!5040674 (= e!3147955 (drop!2632 (t!370973 (t!370973 lt!2084247)) (- (- i!618 1) 1)))))

(declare-fun bm!351401 () Bool)

(assert (=> bm!351401 (= call!351406 (size!38903 (t!370973 lt!2084247)))))

(declare-fun b!5040675 () Bool)

(declare-fun e!3147954 () List!58426)

(assert (=> b!5040675 (= e!3147954 e!3147955)))

(declare-fun c!863644 () Bool)

(assert (=> b!5040675 (= c!863644 (<= (- i!618 1) 0))))

(declare-fun b!5040677 () Bool)

(assert (=> b!5040677 (= e!3147954 Nil!58302)))

(declare-fun b!5040678 () Bool)

(assert (=> b!5040678 (= e!3147952 e!3147953)))

(declare-fun c!863642 () Bool)

(assert (=> b!5040678 (= c!863642 (>= (- i!618 1) call!351406))))

(declare-fun d!1621603 () Bool)

(declare-fun e!3147956 () Bool)

(assert (=> d!1621603 e!3147956))

(declare-fun res!2147556 () Bool)

(assert (=> d!1621603 (=> (not res!2147556) (not e!3147956))))

(declare-fun lt!2084292 () List!58426)

(assert (=> d!1621603 (= res!2147556 (= ((_ map implies) (content!10355 lt!2084292) (content!10355 (t!370973 lt!2084247))) ((as const (InoxSet T!104194)) true)))))

(assert (=> d!1621603 (= lt!2084292 e!3147954)))

(declare-fun c!863643 () Bool)

(assert (=> d!1621603 (= c!863643 ((_ is Nil!58302) (t!370973 lt!2084247)))))

(assert (=> d!1621603 (= (drop!2632 (t!370973 lt!2084247) (- i!618 1)) lt!2084292)))

(declare-fun b!5040676 () Bool)

(assert (=> b!5040676 (= e!3147956 (= (size!38903 lt!2084292) e!3147952))))

(declare-fun c!863645 () Bool)

(assert (=> b!5040676 (= c!863645 (<= (- i!618 1) 0))))

(assert (= (and d!1621603 c!863643) b!5040677))

(assert (= (and d!1621603 (not c!863643)) b!5040675))

(assert (= (and b!5040675 c!863644) b!5040671))

(assert (= (and b!5040675 (not c!863644)) b!5040674))

(assert (= (and d!1621603 res!2147556) b!5040676))

(assert (= (and b!5040676 c!863645) b!5040670))

(assert (= (and b!5040676 (not c!863645)) b!5040678))

(assert (= (and b!5040678 c!863642) b!5040673))

(assert (= (and b!5040678 (not c!863642)) b!5040672))

(assert (= (or b!5040670 b!5040678 b!5040672) bm!351401))

(declare-fun m!6074774 () Bool)

(assert (=> b!5040674 m!6074774))

(assert (=> bm!351401 m!6074610))

(declare-fun m!6074776 () Bool)

(assert (=> d!1621603 m!6074776))

(assert (=> d!1621603 m!6074688))

(declare-fun m!6074778 () Bool)

(assert (=> b!5040676 m!6074778))

(assert (=> b!5040487 d!1621603))

(assert (=> bm!351400 d!1621539))

(declare-fun b!5040698 () Bool)

(declare-fun e!3147965 () List!58426)

(assert (=> b!5040698 (= e!3147965 (Cons!58302 (h!64750 (_1!34922 lt!2084261)) (++!12726 (t!370973 (_1!34922 lt!2084261)) (_2!34922 lt!2084261))))))

(declare-fun b!5040697 () Bool)

(assert (=> b!5040697 (= e!3147965 (_2!34922 lt!2084261))))

(declare-fun b!5040699 () Bool)

(declare-fun res!2147568 () Bool)

(declare-fun e!3147966 () Bool)

(assert (=> b!5040699 (=> (not res!2147568) (not e!3147966))))

(declare-fun lt!2084297 () List!58426)

(assert (=> b!5040699 (= res!2147568 (= (size!38903 lt!2084297) (+ (size!38903 (_1!34922 lt!2084261)) (size!38903 (_2!34922 lt!2084261)))))))

(declare-fun d!1621605 () Bool)

(assert (=> d!1621605 e!3147966))

(declare-fun res!2147567 () Bool)

(assert (=> d!1621605 (=> (not res!2147567) (not e!3147966))))

(assert (=> d!1621605 (= res!2147567 (= (content!10355 lt!2084297) ((_ map or) (content!10355 (_1!34922 lt!2084261)) (content!10355 (_2!34922 lt!2084261)))))))

(assert (=> d!1621605 (= lt!2084297 e!3147965)))

(declare-fun c!863650 () Bool)

(assert (=> d!1621605 (= c!863650 ((_ is Nil!58302) (_1!34922 lt!2084261)))))

(assert (=> d!1621605 (= (++!12726 (_1!34922 lt!2084261) (_2!34922 lt!2084261)) lt!2084297)))

(declare-fun b!5040700 () Bool)

(assert (=> b!5040700 (= e!3147966 (or (not (= (_2!34922 lt!2084261) Nil!58302)) (= lt!2084297 (_1!34922 lt!2084261))))))

(assert (= (and d!1621605 c!863650) b!5040697))

(assert (= (and d!1621605 (not c!863650)) b!5040698))

(assert (= (and d!1621605 res!2147567) b!5040699))

(assert (= (and b!5040699 res!2147568) b!5040700))

(declare-fun m!6074796 () Bool)

(assert (=> b!5040698 m!6074796))

(declare-fun m!6074798 () Bool)

(assert (=> b!5040699 m!6074798))

(declare-fun m!6074800 () Bool)

(assert (=> b!5040699 m!6074800))

(declare-fun m!6074802 () Bool)

(assert (=> b!5040699 m!6074802))

(declare-fun m!6074804 () Bool)

(assert (=> d!1621605 m!6074804))

(declare-fun m!6074806 () Bool)

(assert (=> d!1621605 m!6074806))

(declare-fun m!6074808 () Bool)

(assert (=> d!1621605 m!6074808))

(assert (=> d!1621521 d!1621605))

(declare-fun d!1621615 () Bool)

(declare-fun lt!2084298 () Int)

(assert (=> d!1621615 (>= lt!2084298 0)))

(declare-fun e!3147971 () Int)

(assert (=> d!1621615 (= lt!2084298 e!3147971)))

(declare-fun c!863655 () Bool)

(assert (=> d!1621615 (= c!863655 ((_ is Nil!58302) lt!2084265))))

(assert (=> d!1621615 (= (size!38903 lt!2084265) lt!2084298)))

(declare-fun b!5040709 () Bool)

(assert (=> b!5040709 (= e!3147971 0)))

(declare-fun b!5040710 () Bool)

(assert (=> b!5040710 (= e!3147971 (+ 1 (size!38903 (t!370973 lt!2084265))))))

(assert (= (and d!1621615 c!863655) b!5040709))

(assert (= (and d!1621615 (not c!863655)) b!5040710))

(declare-fun m!6074810 () Bool)

(assert (=> b!5040710 m!6074810))

(assert (=> b!5040489 d!1621615))

(declare-fun d!1621617 () Bool)

(declare-fun res!2147569 () Bool)

(declare-fun e!3147972 () Bool)

(assert (=> d!1621617 (=> (not res!2147569) (not e!3147972))))

(assert (=> d!1621617 (= res!2147569 (= (csize!31258 t!4198) (+ (size!38902 (left!42700 t!4198)) (size!38902 (right!43030 t!4198)))))))

(assert (=> d!1621617 (= (inv!77165 t!4198) e!3147972)))

(declare-fun b!5040711 () Bool)

(declare-fun res!2147570 () Bool)

(assert (=> b!5040711 (=> (not res!2147570) (not e!3147972))))

(assert (=> b!5040711 (= res!2147570 (and (not (= (left!42700 t!4198) Empty!15514)) (not (= (right!43030 t!4198) Empty!15514))))))

(declare-fun b!5040712 () Bool)

(declare-fun res!2147571 () Bool)

(assert (=> b!5040712 (=> (not res!2147571) (not e!3147972))))

(assert (=> b!5040712 (= res!2147571 (= (cheight!15725 t!4198) (+ (max!0 (height!2093 (left!42700 t!4198)) (height!2093 (right!43030 t!4198))) 1)))))

(declare-fun b!5040713 () Bool)

(assert (=> b!5040713 (= e!3147972 (<= 0 (cheight!15725 t!4198)))))

(assert (= (and d!1621617 res!2147569) b!5040711))

(assert (= (and b!5040711 res!2147570) b!5040712))

(assert (= (and b!5040712 res!2147571) b!5040713))

(assert (=> d!1621617 m!6074754))

(assert (=> d!1621617 m!6074772))

(assert (=> b!5040712 m!6074626))

(assert (=> b!5040712 m!6074628))

(assert (=> b!5040712 m!6074626))

(assert (=> b!5040712 m!6074628))

(declare-fun m!6074812 () Bool)

(assert (=> b!5040712 m!6074812))

(assert (=> b!5040555 d!1621617))

(declare-fun b!5040714 () Bool)

(declare-fun e!3147974 () List!58426)

(assert (=> b!5040714 (= e!3147974 Nil!58302)))

(declare-fun b!5040715 () Bool)

(declare-fun e!3147973 () Int)

(assert (=> b!5040715 (= e!3147973 (size!38903 (t!370973 lt!2084247)))))

(declare-fun b!5040716 () Bool)

(declare-fun e!3147975 () Int)

(assert (=> b!5040716 (= e!3147975 e!3147973)))

(declare-fun c!863658 () Bool)

(assert (=> b!5040716 (= c!863658 (>= (- i!618 1) (size!38903 (t!370973 lt!2084247))))))

(declare-fun b!5040717 () Bool)

(declare-fun e!3147976 () Bool)

(declare-fun lt!2084299 () List!58426)

(assert (=> b!5040717 (= e!3147976 (= (size!38903 lt!2084299) e!3147975))))

(declare-fun c!863657 () Bool)

(assert (=> b!5040717 (= c!863657 (<= (- i!618 1) 0))))

(declare-fun d!1621619 () Bool)

(assert (=> d!1621619 e!3147976))

(declare-fun res!2147572 () Bool)

(assert (=> d!1621619 (=> (not res!2147572) (not e!3147976))))

(assert (=> d!1621619 (= res!2147572 (= ((_ map implies) (content!10355 lt!2084299) (content!10355 (t!370973 lt!2084247))) ((as const (InoxSet T!104194)) true)))))

(assert (=> d!1621619 (= lt!2084299 e!3147974)))

(declare-fun c!863656 () Bool)

(assert (=> d!1621619 (= c!863656 (or ((_ is Nil!58302) (t!370973 lt!2084247)) (<= (- i!618 1) 0)))))

(assert (=> d!1621619 (= (take!825 (t!370973 lt!2084247) (- i!618 1)) lt!2084299)))

(declare-fun b!5040718 () Bool)

(assert (=> b!5040718 (= e!3147973 (- i!618 1))))

(declare-fun b!5040719 () Bool)

(assert (=> b!5040719 (= e!3147975 0)))

(declare-fun b!5040720 () Bool)

(assert (=> b!5040720 (= e!3147974 (Cons!58302 (h!64750 (t!370973 lt!2084247)) (take!825 (t!370973 (t!370973 lt!2084247)) (- (- i!618 1) 1))))))

(assert (= (and d!1621619 c!863656) b!5040714))

(assert (= (and d!1621619 (not c!863656)) b!5040720))

(assert (= (and d!1621619 res!2147572) b!5040717))

(assert (= (and b!5040717 c!863657) b!5040719))

(assert (= (and b!5040717 (not c!863657)) b!5040716))

(assert (= (and b!5040716 c!863658) b!5040715))

(assert (= (and b!5040716 (not c!863658)) b!5040718))

(assert (=> b!5040716 m!6074610))

(declare-fun m!6074814 () Bool)

(assert (=> b!5040717 m!6074814))

(assert (=> b!5040715 m!6074610))

(declare-fun m!6074816 () Bool)

(assert (=> d!1621619 m!6074816))

(assert (=> d!1621619 m!6074688))

(declare-fun m!6074818 () Bool)

(assert (=> b!5040720 m!6074818))

(assert (=> b!5040398 d!1621619))

(declare-fun d!1621621 () Bool)

(declare-fun res!2147573 () Bool)

(declare-fun e!3147977 () Bool)

(assert (=> d!1621621 (=> (not res!2147573) (not e!3147977))))

(assert (=> d!1621621 (= res!2147573 (<= (size!38903 (list!18913 (xs!18840 t!4198))) 512))))

(assert (=> d!1621621 (= (inv!77166 t!4198) e!3147977)))

(declare-fun b!5040721 () Bool)

(declare-fun res!2147574 () Bool)

(assert (=> b!5040721 (=> (not res!2147574) (not e!3147977))))

(assert (=> b!5040721 (= res!2147574 (= (csize!31259 t!4198) (size!38903 (list!18913 (xs!18840 t!4198)))))))

(declare-fun b!5040722 () Bool)

(assert (=> b!5040722 (= e!3147977 (and (> (csize!31259 t!4198) 0) (<= (csize!31259 t!4198) 512)))))

(assert (= (and d!1621621 res!2147573) b!5040721))

(assert (= (and b!5040721 res!2147574) b!5040722))

(assert (=> d!1621621 m!6074556))

(assert (=> d!1621621 m!6074556))

(declare-fun m!6074820 () Bool)

(assert (=> d!1621621 m!6074820))

(assert (=> b!5040721 m!6074556))

(assert (=> b!5040721 m!6074556))

(assert (=> b!5040721 m!6074820))

(assert (=> b!5040557 d!1621621))

(declare-fun d!1621623 () Bool)

(declare-fun c!863659 () Bool)

(assert (=> d!1621623 (= c!863659 ((_ is Nil!58302) lt!2084252))))

(declare-fun e!3147978 () (InoxSet T!104194))

(assert (=> d!1621623 (= (content!10355 lt!2084252) e!3147978)))

(declare-fun b!5040723 () Bool)

(assert (=> b!5040723 (= e!3147978 ((as const (Array T!104194 Bool)) false))))

(declare-fun b!5040724 () Bool)

(assert (=> b!5040724 (= e!3147978 ((_ map or) (store ((as const (Array T!104194 Bool)) false) (h!64750 lt!2084252) true) (content!10355 (t!370973 lt!2084252))))))

(assert (= (and d!1621623 c!863659) b!5040723))

(assert (= (and d!1621623 (not c!863659)) b!5040724))

(declare-fun m!6074822 () Bool)

(assert (=> b!5040724 m!6074822))

(declare-fun m!6074824 () Bool)

(assert (=> b!5040724 m!6074824))

(assert (=> d!1621517 d!1621623))

(assert (=> d!1621517 d!1621567))

(declare-fun d!1621625 () Bool)

(declare-fun lt!2084300 () Int)

(assert (=> d!1621625 (>= lt!2084300 0)))

(declare-fun e!3147981 () Int)

(assert (=> d!1621625 (= lt!2084300 e!3147981)))

(declare-fun c!863662 () Bool)

(assert (=> d!1621625 (= c!863662 ((_ is Nil!58302) (innerList!15602 (xs!18840 t!4198))))))

(assert (=> d!1621625 (= (size!38903 (innerList!15602 (xs!18840 t!4198))) lt!2084300)))

(declare-fun b!5040729 () Bool)

(assert (=> b!5040729 (= e!3147981 0)))

(declare-fun b!5040730 () Bool)

(assert (=> b!5040730 (= e!3147981 (+ 1 (size!38903 (t!370973 (innerList!15602 (xs!18840 t!4198))))))))

(assert (= (and d!1621625 c!863662) b!5040729))

(assert (= (and d!1621625 (not c!863662)) b!5040730))

(declare-fun m!6074826 () Bool)

(assert (=> b!5040730 m!6074826))

(assert (=> d!1621559 d!1621625))

(assert (=> b!5040352 d!1621553))

(assert (=> b!5040352 d!1621555))

(declare-fun d!1621627 () Bool)

(declare-fun lt!2084301 () Int)

(assert (=> d!1621627 (>= lt!2084301 0)))

(declare-fun e!3147982 () Int)

(assert (=> d!1621627 (= lt!2084301 e!3147982)))

(declare-fun c!863663 () Bool)

(assert (=> d!1621627 (= c!863663 ((_ is Nil!58302) (list!18914 t!4198)))))

(assert (=> d!1621627 (= (size!38903 (list!18914 t!4198)) lt!2084301)))

(declare-fun b!5040731 () Bool)

(assert (=> b!5040731 (= e!3147982 0)))

(declare-fun b!5040732 () Bool)

(assert (=> b!5040732 (= e!3147982 (+ 1 (size!38903 (t!370973 (list!18914 t!4198)))))))

(assert (= (and d!1621627 c!863663) b!5040731))

(assert (= (and d!1621627 (not c!863663)) b!5040732))

(declare-fun m!6074832 () Bool)

(assert (=> b!5040732 m!6074832))

(assert (=> d!1621547 d!1621627))

(declare-fun b!5040741 () Bool)

(declare-fun e!3147987 () List!58426)

(assert (=> b!5040741 (= e!3147987 Nil!58302)))

(declare-fun d!1621629 () Bool)

(declare-fun c!863668 () Bool)

(assert (=> d!1621629 (= c!863668 ((_ is Empty!15514) t!4198))))

(assert (=> d!1621629 (= (list!18914 t!4198) e!3147987)))

(declare-fun b!5040742 () Bool)

(declare-fun e!3147988 () List!58426)

(assert (=> b!5040742 (= e!3147987 e!3147988)))

(declare-fun c!863669 () Bool)

(assert (=> b!5040742 (= c!863669 ((_ is Leaf!25735) t!4198))))

(declare-fun b!5040744 () Bool)

(assert (=> b!5040744 (= e!3147988 (++!12726 (list!18914 (left!42700 t!4198)) (list!18914 (right!43030 t!4198))))))

(declare-fun b!5040743 () Bool)

(assert (=> b!5040743 (= e!3147988 (list!18913 (xs!18840 t!4198)))))

(assert (= (and d!1621629 c!863668) b!5040741))

(assert (= (and d!1621629 (not c!863668)) b!5040742))

(assert (= (and b!5040742 c!863669) b!5040743))

(assert (= (and b!5040742 (not c!863669)) b!5040744))

(assert (=> b!5040744 m!6074750))

(assert (=> b!5040744 m!6074768))

(assert (=> b!5040744 m!6074750))

(assert (=> b!5040744 m!6074768))

(declare-fun m!6074836 () Bool)

(assert (=> b!5040744 m!6074836))

(assert (=> b!5040743 m!6074556))

(assert (=> d!1621547 d!1621629))

(declare-fun b!5040749 () Bool)

(declare-fun e!3147991 () Bool)

(declare-fun tp!1411052 () Bool)

(assert (=> b!5040749 (= e!3147991 (and tp_is_empty!36791 tp!1411052))))

(assert (=> b!5040587 (= tp!1411033 e!3147991)))

(assert (= (and b!5040587 ((_ is Cons!58302) (t!370973 (innerList!15602 (xs!18840 t!4198))))) b!5040749))

(declare-fun tp!1411053 () Bool)

(declare-fun e!3147994 () Bool)

(declare-fun tp!1411055 () Bool)

(declare-fun b!5040750 () Bool)

(assert (=> b!5040750 (= e!3147994 (and (inv!77161 (left!42700 (left!42700 (right!43030 t!4198)))) tp!1411055 (inv!77161 (right!43030 (left!42700 (right!43030 t!4198)))) tp!1411053))))

(declare-fun b!5040752 () Bool)

(declare-fun e!3147995 () Bool)

(declare-fun tp!1411054 () Bool)

(assert (=> b!5040752 (= e!3147995 tp!1411054)))

(declare-fun b!5040751 () Bool)

(assert (=> b!5040751 (= e!3147994 (and (inv!77162 (xs!18840 (left!42700 (right!43030 t!4198)))) e!3147995))))

(assert (=> b!5040605 (= tp!1411051 (and (inv!77161 (left!42700 (right!43030 t!4198))) e!3147994))))

(assert (= (and b!5040605 ((_ is Node!15514) (left!42700 (right!43030 t!4198)))) b!5040750))

(assert (= b!5040751 b!5040752))

(assert (= (and b!5040605 ((_ is Leaf!25735) (left!42700 (right!43030 t!4198)))) b!5040751))

(declare-fun m!6074838 () Bool)

(assert (=> b!5040750 m!6074838))

(declare-fun m!6074840 () Bool)

(assert (=> b!5040750 m!6074840))

(declare-fun m!6074842 () Bool)

(assert (=> b!5040751 m!6074842))

(assert (=> b!5040605 m!6074676))

(declare-fun e!3147996 () Bool)

(declare-fun tp!1411056 () Bool)

(declare-fun b!5040757 () Bool)

(declare-fun tp!1411058 () Bool)

(assert (=> b!5040757 (= e!3147996 (and (inv!77161 (left!42700 (right!43030 (right!43030 t!4198)))) tp!1411058 (inv!77161 (right!43030 (right!43030 (right!43030 t!4198)))) tp!1411056))))

(declare-fun b!5040759 () Bool)

(declare-fun e!3147997 () Bool)

(declare-fun tp!1411057 () Bool)

(assert (=> b!5040759 (= e!3147997 tp!1411057)))

(declare-fun b!5040758 () Bool)

(assert (=> b!5040758 (= e!3147996 (and (inv!77162 (xs!18840 (right!43030 (right!43030 t!4198)))) e!3147997))))

(assert (=> b!5040605 (= tp!1411049 (and (inv!77161 (right!43030 (right!43030 t!4198))) e!3147996))))

(assert (= (and b!5040605 ((_ is Node!15514) (right!43030 (right!43030 t!4198)))) b!5040757))

(assert (= b!5040758 b!5040759))

(assert (= (and b!5040605 ((_ is Leaf!25735) (right!43030 (right!43030 t!4198)))) b!5040758))

(declare-fun m!6074844 () Bool)

(assert (=> b!5040757 m!6074844))

(declare-fun m!6074846 () Bool)

(assert (=> b!5040757 m!6074846))

(declare-fun m!6074848 () Bool)

(assert (=> b!5040758 m!6074848))

(assert (=> b!5040605 m!6074678))

(declare-fun b!5040760 () Bool)

(declare-fun e!3147998 () Bool)

(declare-fun tp!1411059 () Bool)

(assert (=> b!5040760 (= e!3147998 (and tp_is_empty!36791 tp!1411059))))

(assert (=> b!5040604 (= tp!1411047 e!3147998)))

(assert (= (and b!5040604 ((_ is Cons!58302) (innerList!15602 (xs!18840 (left!42700 t!4198))))) b!5040760))

(declare-fun tp!1411060 () Bool)

(declare-fun e!3147999 () Bool)

(declare-fun b!5040761 () Bool)

(declare-fun tp!1411062 () Bool)

(assert (=> b!5040761 (= e!3147999 (and (inv!77161 (left!42700 (left!42700 (left!42700 t!4198)))) tp!1411062 (inv!77161 (right!43030 (left!42700 (left!42700 t!4198)))) tp!1411060))))

(declare-fun b!5040763 () Bool)

(declare-fun e!3148000 () Bool)

(declare-fun tp!1411061 () Bool)

(assert (=> b!5040763 (= e!3148000 tp!1411061)))

(declare-fun b!5040762 () Bool)

(assert (=> b!5040762 (= e!3147999 (and (inv!77162 (xs!18840 (left!42700 (left!42700 t!4198)))) e!3148000))))

(assert (=> b!5040602 (= tp!1411048 (and (inv!77161 (left!42700 (left!42700 t!4198))) e!3147999))))

(assert (= (and b!5040602 ((_ is Node!15514) (left!42700 (left!42700 t!4198)))) b!5040761))

(assert (= b!5040762 b!5040763))

(assert (= (and b!5040602 ((_ is Leaf!25735) (left!42700 (left!42700 t!4198)))) b!5040762))

(declare-fun m!6074850 () Bool)

(assert (=> b!5040761 m!6074850))

(declare-fun m!6074852 () Bool)

(assert (=> b!5040761 m!6074852))

(declare-fun m!6074854 () Bool)

(assert (=> b!5040762 m!6074854))

(assert (=> b!5040602 m!6074670))

(declare-fun e!3148001 () Bool)

(declare-fun tp!1411065 () Bool)

(declare-fun tp!1411063 () Bool)

(declare-fun b!5040764 () Bool)

(assert (=> b!5040764 (= e!3148001 (and (inv!77161 (left!42700 (right!43030 (left!42700 t!4198)))) tp!1411065 (inv!77161 (right!43030 (right!43030 (left!42700 t!4198)))) tp!1411063))))

(declare-fun b!5040766 () Bool)

(declare-fun e!3148002 () Bool)

(declare-fun tp!1411064 () Bool)

(assert (=> b!5040766 (= e!3148002 tp!1411064)))

(declare-fun b!5040765 () Bool)

(assert (=> b!5040765 (= e!3148001 (and (inv!77162 (xs!18840 (right!43030 (left!42700 t!4198)))) e!3148002))))

(assert (=> b!5040602 (= tp!1411046 (and (inv!77161 (right!43030 (left!42700 t!4198))) e!3148001))))

(assert (= (and b!5040602 ((_ is Node!15514) (right!43030 (left!42700 t!4198)))) b!5040764))

(assert (= b!5040765 b!5040766))

(assert (= (and b!5040602 ((_ is Leaf!25735) (right!43030 (left!42700 t!4198)))) b!5040765))

(declare-fun m!6074856 () Bool)

(assert (=> b!5040764 m!6074856))

(declare-fun m!6074858 () Bool)

(assert (=> b!5040764 m!6074858))

(declare-fun m!6074860 () Bool)

(assert (=> b!5040765 m!6074860))

(assert (=> b!5040602 m!6074672))

(declare-fun b!5040767 () Bool)

(declare-fun e!3148003 () Bool)

(declare-fun tp!1411066 () Bool)

(assert (=> b!5040767 (= e!3148003 (and tp_is_empty!36791 tp!1411066))))

(assert (=> b!5040607 (= tp!1411050 e!3148003)))

(assert (= (and b!5040607 ((_ is Cons!58302) (innerList!15602 (xs!18840 (right!43030 t!4198))))) b!5040767))

(check-sat (not d!1621603) (not b!5040674) (not b!5040716) (not b!5040665) (not b!5040649) (not d!1621601) (not b!5040751) (not b!5040767) (not b!5040710) (not d!1621589) (not b!5040637) (not b!5040699) (not b!5040642) (not b!5040620) (not b!5040645) (not b!5040646) (not b!5040760) (not d!1621591) (not b!5040654) (not b!5040712) (not b!5040763) (not d!1621581) (not b!5040667) (not b!5040765) (not b!5040698) (not b!5040656) (not b!5040764) (not b!5040663) (not b!5040750) (not b!5040744) (not b!5040605) (not d!1621617) (not b!5040657) (not d!1621605) (not b!5040613) (not b!5040651) (not b!5040715) tp_is_empty!36791 (not d!1621569) (not b!5040732) (not b!5040641) (not d!1621575) (not b!5040650) (not b!5040644) (not b!5040647) (not d!1621593) (not b!5040730) (not b!5040720) (not b!5040669) (not b!5040749) (not b!5040664) (not b!5040619) (not b!5040717) (not b!5040759) (not b!5040752) (not b!5040758) (not d!1621621) (not b!5040639) (not d!1621573) (not b!5040666) (not b!5040724) (not b!5040668) (not b!5040628) (not d!1621599) (not b!5040602) (not b!5040766) (not b!5040721) (not b!5040615) (not b!5040660) (not b!5040616) (not b!5040648) (not b!5040676) (not b!5040762) (not b!5040757) (not b!5040743) (not bm!351401) (not d!1621619) (not b!5040761) (not b!5040623) (not b!5040653))
(check-sat)
