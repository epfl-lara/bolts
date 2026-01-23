; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!183542 () Bool)

(assert start!183542)

(declare-fun b_free!51509 () Bool)

(declare-fun b_next!52213 () Bool)

(assert (=> start!183542 (= b_free!51509 (not b_next!52213))))

(declare-fun tp!520945 () Bool)

(declare-fun b_and!143647 () Bool)

(assert (=> start!183542 (= tp!520945 b_and!143647)))

(declare-datatypes ((T!31878 0))(
  ( (T!31879 (val!5754 Int)) )
))
(declare-datatypes ((List!20354 0))(
  ( (Nil!20284) (Cons!20284 (h!25685 T!31878) (t!171825 List!20354)) )
))
(declare-datatypes ((IArray!13423 0))(
  ( (IArray!13424 (innerList!6769 List!20354)) )
))
(declare-datatypes ((Conc!6709 0))(
  ( (Node!6709 (left!16221 Conc!6709) (right!16551 Conc!6709) (csize!13648 Int) (cheight!6920 Int)) (Leaf!9800 (xs!9585 IArray!13423) (csize!13649 Int)) (Empty!6709) )
))
(declare-fun t!3734 () Conc!6709)

(declare-fun e!1177386 () Bool)

(declare-fun tp!520943 () Bool)

(declare-fun tp!520946 () Bool)

(declare-fun b!1842486 () Bool)

(declare-fun inv!26514 (Conc!6709) Bool)

(assert (=> b!1842486 (= e!1177386 (and (inv!26514 (left!16221 t!3734)) tp!520946 (inv!26514 (right!16551 t!3734)) tp!520943))))

(declare-fun b!1842487 () Bool)

(declare-fun e!1177383 () Bool)

(declare-fun inv!26515 (IArray!13423) Bool)

(assert (=> b!1842487 (= e!1177386 (and (inv!26515 (xs!9585 t!3734)) e!1177383))))

(declare-fun b!1842488 () Bool)

(declare-fun e!1177385 () Bool)

(declare-fun height!1025 (Conc!6709) Int)

(assert (=> b!1842488 (= e!1177385 (>= (height!1025 (right!16551 t!3734)) (height!1025 t!3734)))))

(declare-fun b!1842489 () Bool)

(declare-fun tp!520944 () Bool)

(assert (=> b!1842489 (= e!1177383 tp!520944)))

(declare-fun res!827808 () Bool)

(declare-fun e!1177384 () Bool)

(assert (=> start!183542 (=> (not res!827808) (not e!1177384))))

(get-info :version)

(assert (=> start!183542 (= res!827808 (and (not ((_ is Empty!6709) t!3734)) (not ((_ is Leaf!9800) t!3734))))))

(assert (=> start!183542 e!1177384))

(assert (=> start!183542 (and (inv!26514 t!3734) e!1177386)))

(assert (=> start!183542 tp!520945))

(declare-fun b!1842490 () Bool)

(assert (=> b!1842490 (= e!1177384 e!1177385)))

(declare-fun res!827807 () Bool)

(assert (=> b!1842490 (=> (not res!827807) (not e!1177385))))

(declare-fun p!1470 () Int)

(declare-fun exists!661 (Conc!6709 Int) Bool)

(assert (=> b!1842490 (= res!827807 (not (exists!661 (left!16221 t!3734) p!1470)))))

(declare-datatypes ((Unit!34995 0))(
  ( (Unit!34996) )
))
(declare-fun lt!714418 () Unit!34995)

(declare-fun lemmaExistsConcat!6 (List!20354 List!20354 Int) Unit!34995)

(declare-fun list!8252 (Conc!6709) List!20354)

(assert (=> b!1842490 (= lt!714418 (lemmaExistsConcat!6 (list!8252 (left!16221 t!3734)) (list!8252 (right!16551 t!3734)) p!1470))))

(assert (= (and start!183542 res!827808) b!1842490))

(assert (= (and b!1842490 res!827807) b!1842488))

(assert (= (and start!183542 ((_ is Node!6709) t!3734)) b!1842486))

(assert (= b!1842487 b!1842489))

(assert (= (and start!183542 ((_ is Leaf!9800) t!3734)) b!1842487))

(declare-fun m!2270485 () Bool)

(assert (=> b!1842488 m!2270485))

(declare-fun m!2270487 () Bool)

(assert (=> b!1842488 m!2270487))

(declare-fun m!2270489 () Bool)

(assert (=> b!1842487 m!2270489))

(declare-fun m!2270491 () Bool)

(assert (=> start!183542 m!2270491))

(declare-fun m!2270493 () Bool)

(assert (=> b!1842486 m!2270493))

(declare-fun m!2270495 () Bool)

(assert (=> b!1842486 m!2270495))

(declare-fun m!2270497 () Bool)

(assert (=> b!1842490 m!2270497))

(declare-fun m!2270499 () Bool)

(assert (=> b!1842490 m!2270499))

(declare-fun m!2270501 () Bool)

(assert (=> b!1842490 m!2270501))

(assert (=> b!1842490 m!2270499))

(assert (=> b!1842490 m!2270501))

(declare-fun m!2270503 () Bool)

(assert (=> b!1842490 m!2270503))

(check-sat (not start!183542) (not b!1842490) (not b!1842487) (not b!1842488) (not b_next!52213) (not b!1842486) b_and!143647 (not b!1842489))
(check-sat b_and!143647 (not b_next!52213))
(get-model)

(declare-fun d!563681 () Bool)

(declare-fun c!300772 () Bool)

(assert (=> d!563681 (= c!300772 ((_ is Node!6709) t!3734))))

(declare-fun e!1177391 () Bool)

(assert (=> d!563681 (= (inv!26514 t!3734) e!1177391)))

(declare-fun b!1842497 () Bool)

(declare-fun inv!26516 (Conc!6709) Bool)

(assert (=> b!1842497 (= e!1177391 (inv!26516 t!3734))))

(declare-fun b!1842498 () Bool)

(declare-fun e!1177392 () Bool)

(assert (=> b!1842498 (= e!1177391 e!1177392)))

(declare-fun res!827811 () Bool)

(assert (=> b!1842498 (= res!827811 (not ((_ is Leaf!9800) t!3734)))))

(assert (=> b!1842498 (=> res!827811 e!1177392)))

(declare-fun b!1842499 () Bool)

(declare-fun inv!26517 (Conc!6709) Bool)

(assert (=> b!1842499 (= e!1177392 (inv!26517 t!3734))))

(assert (= (and d!563681 c!300772) b!1842497))

(assert (= (and d!563681 (not c!300772)) b!1842498))

(assert (= (and b!1842498 (not res!827811)) b!1842499))

(declare-fun m!2270507 () Bool)

(assert (=> b!1842497 m!2270507))

(declare-fun m!2270509 () Bool)

(assert (=> b!1842499 m!2270509))

(assert (=> start!183542 d!563681))

(declare-fun b!1842521 () Bool)

(declare-fun e!1177409 () Bool)

(declare-fun exists!662 (IArray!13423 Int) Bool)

(assert (=> b!1842521 (= e!1177409 (exists!662 (xs!9585 (left!16221 t!3734)) p!1470))))

(declare-fun b!1842522 () Bool)

(declare-fun e!1177410 () Bool)

(assert (=> b!1842522 (= e!1177409 e!1177410)))

(declare-fun lt!714429 () Unit!34995)

(assert (=> b!1842522 (= lt!714429 (lemmaExistsConcat!6 (list!8252 (left!16221 (left!16221 t!3734))) (list!8252 (right!16551 (left!16221 t!3734))) p!1470))))

(declare-fun res!827823 () Bool)

(assert (=> b!1842522 (= res!827823 (exists!661 (left!16221 (left!16221 t!3734)) p!1470))))

(assert (=> b!1842522 (=> res!827823 e!1177410)))

(declare-fun d!563691 () Bool)

(declare-fun lt!714430 () Bool)

(declare-fun exists!663 (List!20354 Int) Bool)

(assert (=> d!563691 (= lt!714430 (exists!663 (list!8252 (left!16221 t!3734)) p!1470))))

(declare-fun e!1177408 () Bool)

(assert (=> d!563691 (= lt!714430 e!1177408)))

(declare-fun res!827822 () Bool)

(assert (=> d!563691 (=> (not res!827822) (not e!1177408))))

(assert (=> d!563691 (= res!827822 (not ((_ is Empty!6709) (left!16221 t!3734))))))

(assert (=> d!563691 (= (exists!661 (left!16221 t!3734) p!1470) lt!714430)))

(declare-fun b!1842520 () Bool)

(assert (=> b!1842520 (= e!1177408 e!1177409)))

(declare-fun c!300778 () Bool)

(assert (=> b!1842520 (= c!300778 ((_ is Leaf!9800) (left!16221 t!3734)))))

(declare-fun b!1842523 () Bool)

(assert (=> b!1842523 (= e!1177410 (exists!661 (right!16551 (left!16221 t!3734)) p!1470))))

(assert (= (and d!563691 res!827822) b!1842520))

(assert (= (and b!1842520 c!300778) b!1842521))

(assert (= (and b!1842520 (not c!300778)) b!1842522))

(assert (= (and b!1842522 (not res!827823)) b!1842523))

(declare-fun m!2270525 () Bool)

(assert (=> b!1842521 m!2270525))

(declare-fun m!2270527 () Bool)

(assert (=> b!1842522 m!2270527))

(declare-fun m!2270529 () Bool)

(assert (=> b!1842522 m!2270529))

(assert (=> b!1842522 m!2270527))

(assert (=> b!1842522 m!2270529))

(declare-fun m!2270531 () Bool)

(assert (=> b!1842522 m!2270531))

(declare-fun m!2270533 () Bool)

(assert (=> b!1842522 m!2270533))

(assert (=> d!563691 m!2270499))

(assert (=> d!563691 m!2270499))

(declare-fun m!2270535 () Bool)

(assert (=> d!563691 m!2270535))

(declare-fun m!2270537 () Bool)

(assert (=> b!1842523 m!2270537))

(assert (=> b!1842490 d!563691))

(declare-fun d!563695 () Bool)

(declare-fun e!1177416 () Bool)

(declare-fun ++!5517 (List!20354 List!20354) List!20354)

(assert (=> d!563695 (= (exists!663 (++!5517 (list!8252 (left!16221 t!3734)) (list!8252 (right!16551 t!3734))) p!1470) e!1177416)))

(declare-fun res!827829 () Bool)

(assert (=> d!563695 (=> res!827829 e!1177416)))

(assert (=> d!563695 (= res!827829 (exists!663 (list!8252 (left!16221 t!3734)) p!1470))))

(declare-fun lt!714436 () Unit!34995)

(declare-fun choose!11592 (List!20354 List!20354 Int) Unit!34995)

(assert (=> d!563695 (= lt!714436 (choose!11592 (list!8252 (left!16221 t!3734)) (list!8252 (right!16551 t!3734)) p!1470))))

(assert (=> d!563695 (= (lemmaExistsConcat!6 (list!8252 (left!16221 t!3734)) (list!8252 (right!16551 t!3734)) p!1470) lt!714436)))

(declare-fun b!1842529 () Bool)

(assert (=> b!1842529 (= e!1177416 (exists!663 (list!8252 (right!16551 t!3734)) p!1470))))

(assert (= (and d!563695 (not res!827829)) b!1842529))

(assert (=> d!563695 m!2270499))

(assert (=> d!563695 m!2270501))

(declare-fun m!2270547 () Bool)

(assert (=> d!563695 m!2270547))

(assert (=> d!563695 m!2270547))

(declare-fun m!2270549 () Bool)

(assert (=> d!563695 m!2270549))

(assert (=> d!563695 m!2270499))

(assert (=> d!563695 m!2270535))

(assert (=> d!563695 m!2270499))

(assert (=> d!563695 m!2270501))

(declare-fun m!2270551 () Bool)

(assert (=> d!563695 m!2270551))

(assert (=> b!1842529 m!2270501))

(declare-fun m!2270553 () Bool)

(assert (=> b!1842529 m!2270553))

(assert (=> b!1842490 d!563695))

(declare-fun b!1842555 () Bool)

(declare-fun e!1177429 () List!20354)

(declare-fun e!1177430 () List!20354)

(assert (=> b!1842555 (= e!1177429 e!1177430)))

(declare-fun c!300792 () Bool)

(assert (=> b!1842555 (= c!300792 ((_ is Leaf!9800) (left!16221 t!3734)))))

(declare-fun d!563699 () Bool)

(declare-fun c!300791 () Bool)

(assert (=> d!563699 (= c!300791 ((_ is Empty!6709) (left!16221 t!3734)))))

(assert (=> d!563699 (= (list!8252 (left!16221 t!3734)) e!1177429)))

(declare-fun b!1842554 () Bool)

(assert (=> b!1842554 (= e!1177429 Nil!20284)))

(declare-fun b!1842557 () Bool)

(assert (=> b!1842557 (= e!1177430 (++!5517 (list!8252 (left!16221 (left!16221 t!3734))) (list!8252 (right!16551 (left!16221 t!3734)))))))

(declare-fun b!1842556 () Bool)

(declare-fun list!8253 (IArray!13423) List!20354)

(assert (=> b!1842556 (= e!1177430 (list!8253 (xs!9585 (left!16221 t!3734))))))

(assert (= (and d!563699 c!300791) b!1842554))

(assert (= (and d!563699 (not c!300791)) b!1842555))

(assert (= (and b!1842555 c!300792) b!1842556))

(assert (= (and b!1842555 (not c!300792)) b!1842557))

(assert (=> b!1842557 m!2270527))

(assert (=> b!1842557 m!2270529))

(assert (=> b!1842557 m!2270527))

(assert (=> b!1842557 m!2270529))

(declare-fun m!2270567 () Bool)

(assert (=> b!1842557 m!2270567))

(declare-fun m!2270569 () Bool)

(assert (=> b!1842556 m!2270569))

(assert (=> b!1842490 d!563699))

(declare-fun b!1842559 () Bool)

(declare-fun e!1177431 () List!20354)

(declare-fun e!1177432 () List!20354)

(assert (=> b!1842559 (= e!1177431 e!1177432)))

(declare-fun c!300794 () Bool)

(assert (=> b!1842559 (= c!300794 ((_ is Leaf!9800) (right!16551 t!3734)))))

(declare-fun d!563705 () Bool)

(declare-fun c!300793 () Bool)

(assert (=> d!563705 (= c!300793 ((_ is Empty!6709) (right!16551 t!3734)))))

(assert (=> d!563705 (= (list!8252 (right!16551 t!3734)) e!1177431)))

(declare-fun b!1842558 () Bool)

(assert (=> b!1842558 (= e!1177431 Nil!20284)))

(declare-fun b!1842561 () Bool)

(assert (=> b!1842561 (= e!1177432 (++!5517 (list!8252 (left!16221 (right!16551 t!3734))) (list!8252 (right!16551 (right!16551 t!3734)))))))

(declare-fun b!1842560 () Bool)

(assert (=> b!1842560 (= e!1177432 (list!8253 (xs!9585 (right!16551 t!3734))))))

(assert (= (and d!563705 c!300793) b!1842558))

(assert (= (and d!563705 (not c!300793)) b!1842559))

(assert (= (and b!1842559 c!300794) b!1842560))

(assert (= (and b!1842559 (not c!300794)) b!1842561))

(declare-fun m!2270571 () Bool)

(assert (=> b!1842561 m!2270571))

(declare-fun m!2270573 () Bool)

(assert (=> b!1842561 m!2270573))

(assert (=> b!1842561 m!2270571))

(assert (=> b!1842561 m!2270573))

(declare-fun m!2270575 () Bool)

(assert (=> b!1842561 m!2270575))

(declare-fun m!2270577 () Bool)

(assert (=> b!1842560 m!2270577))

(assert (=> b!1842490 d!563705))

(declare-fun d!563707 () Bool)

(assert (=> d!563707 (= (height!1025 (right!16551 t!3734)) (ite ((_ is Empty!6709) (right!16551 t!3734)) 0 (ite ((_ is Leaf!9800) (right!16551 t!3734)) 1 (cheight!6920 (right!16551 t!3734)))))))

(assert (=> b!1842488 d!563707))

(declare-fun d!563709 () Bool)

(assert (=> d!563709 (= (height!1025 t!3734) (ite ((_ is Empty!6709) t!3734) 0 (ite ((_ is Leaf!9800) t!3734) 1 (cheight!6920 t!3734))))))

(assert (=> b!1842488 d!563709))

(declare-fun d!563711 () Bool)

(declare-fun size!16084 (List!20354) Int)

(assert (=> d!563711 (= (inv!26515 (xs!9585 t!3734)) (<= (size!16084 (innerList!6769 (xs!9585 t!3734))) 2147483647))))

(declare-fun bs!408683 () Bool)

(assert (= bs!408683 d!563711))

(declare-fun m!2270579 () Bool)

(assert (=> bs!408683 m!2270579))

(assert (=> b!1842487 d!563711))

(declare-fun d!563713 () Bool)

(declare-fun c!300797 () Bool)

(assert (=> d!563713 (= c!300797 ((_ is Node!6709) (left!16221 t!3734)))))

(declare-fun e!1177437 () Bool)

(assert (=> d!563713 (= (inv!26514 (left!16221 t!3734)) e!1177437)))

(declare-fun b!1842568 () Bool)

(assert (=> b!1842568 (= e!1177437 (inv!26516 (left!16221 t!3734)))))

(declare-fun b!1842569 () Bool)

(declare-fun e!1177438 () Bool)

(assert (=> b!1842569 (= e!1177437 e!1177438)))

(declare-fun res!827832 () Bool)

(assert (=> b!1842569 (= res!827832 (not ((_ is Leaf!9800) (left!16221 t!3734))))))

(assert (=> b!1842569 (=> res!827832 e!1177438)))

(declare-fun b!1842570 () Bool)

(assert (=> b!1842570 (= e!1177438 (inv!26517 (left!16221 t!3734)))))

(assert (= (and d!563713 c!300797) b!1842568))

(assert (= (and d!563713 (not c!300797)) b!1842569))

(assert (= (and b!1842569 (not res!827832)) b!1842570))

(declare-fun m!2270581 () Bool)

(assert (=> b!1842568 m!2270581))

(declare-fun m!2270583 () Bool)

(assert (=> b!1842570 m!2270583))

(assert (=> b!1842486 d!563713))

(declare-fun d!563715 () Bool)

(declare-fun c!300798 () Bool)

(assert (=> d!563715 (= c!300798 ((_ is Node!6709) (right!16551 t!3734)))))

(declare-fun e!1177439 () Bool)

(assert (=> d!563715 (= (inv!26514 (right!16551 t!3734)) e!1177439)))

(declare-fun b!1842571 () Bool)

(assert (=> b!1842571 (= e!1177439 (inv!26516 (right!16551 t!3734)))))

(declare-fun b!1842572 () Bool)

(declare-fun e!1177440 () Bool)

(assert (=> b!1842572 (= e!1177439 e!1177440)))

(declare-fun res!827833 () Bool)

(assert (=> b!1842572 (= res!827833 (not ((_ is Leaf!9800) (right!16551 t!3734))))))

(assert (=> b!1842572 (=> res!827833 e!1177440)))

(declare-fun b!1842573 () Bool)

(assert (=> b!1842573 (= e!1177440 (inv!26517 (right!16551 t!3734)))))

(assert (= (and d!563715 c!300798) b!1842571))

(assert (= (and d!563715 (not c!300798)) b!1842572))

(assert (= (and b!1842572 (not res!827833)) b!1842573))

(declare-fun m!2270585 () Bool)

(assert (=> b!1842571 m!2270585))

(declare-fun m!2270587 () Bool)

(assert (=> b!1842573 m!2270587))

(assert (=> b!1842486 d!563715))

(declare-fun b!1842584 () Bool)

(declare-fun e!1177447 () Bool)

(declare-fun tp_is_empty!8355 () Bool)

(declare-fun tp!520949 () Bool)

(assert (=> b!1842584 (= e!1177447 (and tp_is_empty!8355 tp!520949))))

(assert (=> b!1842489 (= tp!520944 e!1177447)))

(assert (= (and b!1842489 ((_ is Cons!20284) (innerList!6769 (xs!9585 t!3734)))) b!1842584))

(declare-fun b!1842604 () Bool)

(declare-fun e!1177458 () Bool)

(declare-fun tp!520964 () Bool)

(declare-fun tp!520963 () Bool)

(assert (=> b!1842604 (= e!1177458 (and (inv!26514 (left!16221 (left!16221 t!3734))) tp!520964 (inv!26514 (right!16551 (left!16221 t!3734))) tp!520963))))

(declare-fun b!1842606 () Bool)

(declare-fun e!1177459 () Bool)

(declare-fun tp!520962 () Bool)

(assert (=> b!1842606 (= e!1177459 tp!520962)))

(declare-fun b!1842605 () Bool)

(assert (=> b!1842605 (= e!1177458 (and (inv!26515 (xs!9585 (left!16221 t!3734))) e!1177459))))

(assert (=> b!1842486 (= tp!520946 (and (inv!26514 (left!16221 t!3734)) e!1177458))))

(assert (= (and b!1842486 ((_ is Node!6709) (left!16221 t!3734))) b!1842604))

(assert (= b!1842605 b!1842606))

(assert (= (and b!1842486 ((_ is Leaf!9800) (left!16221 t!3734))) b!1842605))

(declare-fun m!2270601 () Bool)

(assert (=> b!1842604 m!2270601))

(declare-fun m!2270603 () Bool)

(assert (=> b!1842604 m!2270603))

(declare-fun m!2270605 () Bool)

(assert (=> b!1842605 m!2270605))

(assert (=> b!1842486 m!2270493))

(declare-fun tp!520970 () Bool)

(declare-fun b!1842610 () Bool)

(declare-fun tp!520969 () Bool)

(declare-fun e!1177462 () Bool)

(assert (=> b!1842610 (= e!1177462 (and (inv!26514 (left!16221 (right!16551 t!3734))) tp!520970 (inv!26514 (right!16551 (right!16551 t!3734))) tp!520969))))

(declare-fun b!1842612 () Bool)

(declare-fun e!1177463 () Bool)

(declare-fun tp!520968 () Bool)

(assert (=> b!1842612 (= e!1177463 tp!520968)))

(declare-fun b!1842611 () Bool)

(assert (=> b!1842611 (= e!1177462 (and (inv!26515 (xs!9585 (right!16551 t!3734))) e!1177463))))

(assert (=> b!1842486 (= tp!520943 (and (inv!26514 (right!16551 t!3734)) e!1177462))))

(assert (= (and b!1842486 ((_ is Node!6709) (right!16551 t!3734))) b!1842610))

(assert (= b!1842611 b!1842612))

(assert (= (and b!1842486 ((_ is Leaf!9800) (right!16551 t!3734))) b!1842611))

(declare-fun m!2270613 () Bool)

(assert (=> b!1842610 m!2270613))

(declare-fun m!2270615 () Bool)

(assert (=> b!1842610 m!2270615))

(declare-fun m!2270617 () Bool)

(assert (=> b!1842611 m!2270617))

(assert (=> b!1842486 m!2270495))

(check-sat (not b!1842561) (not b!1842606) (not b!1842557) tp_is_empty!8355 (not b!1842584) (not b!1842560) (not b!1842610) (not b!1842611) (not b!1842556) (not b!1842571) (not b!1842604) (not b!1842568) (not d!563711) (not b!1842612) (not d!563695) (not b!1842570) (not b!1842521) (not b_next!52213) (not b!1842522) (not b!1842523) (not b!1842497) (not b!1842573) (not b!1842486) (not b!1842499) b_and!143647 (not b!1842529) (not b!1842605) (not d!563691))
(check-sat b_and!143647 (not b_next!52213))
(get-model)

(declare-fun d!563721 () Bool)

(assert (=> d!563721 true))

(declare-fun order!13085 () Int)

(declare-fun lambda!72329 () Int)

(declare-fun dynLambda!10086 (Int Int) Int)

(assert (=> d!563721 (< (dynLambda!10086 order!13085 p!1470) (dynLambda!10086 order!13085 lambda!72329))))

(declare-fun forall!4362 (List!20354 Int) Bool)

(assert (=> d!563721 (= (exists!663 (list!8252 (right!16551 t!3734)) p!1470) (not (forall!4362 (list!8252 (right!16551 t!3734)) lambda!72329)))))

(declare-fun bs!408684 () Bool)

(assert (= bs!408684 d!563721))

(assert (=> bs!408684 m!2270501))

(declare-fun m!2270625 () Bool)

(assert (=> bs!408684 m!2270625))

(assert (=> b!1842529 d!563721))

(declare-fun d!563723 () Bool)

(declare-fun res!827843 () Bool)

(declare-fun e!1177471 () Bool)

(assert (=> d!563723 (=> (not res!827843) (not e!1177471))))

(declare-fun size!16085 (Conc!6709) Int)

(assert (=> d!563723 (= res!827843 (= (csize!13648 (left!16221 t!3734)) (+ (size!16085 (left!16221 (left!16221 t!3734))) (size!16085 (right!16551 (left!16221 t!3734))))))))

(assert (=> d!563723 (= (inv!26516 (left!16221 t!3734)) e!1177471)))

(declare-fun b!1842629 () Bool)

(declare-fun res!827844 () Bool)

(assert (=> b!1842629 (=> (not res!827844) (not e!1177471))))

(assert (=> b!1842629 (= res!827844 (and (not (= (left!16221 (left!16221 t!3734)) Empty!6709)) (not (= (right!16551 (left!16221 t!3734)) Empty!6709))))))

(declare-fun b!1842630 () Bool)

(declare-fun res!827845 () Bool)

(assert (=> b!1842630 (=> (not res!827845) (not e!1177471))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!1842630 (= res!827845 (= (cheight!6920 (left!16221 t!3734)) (+ (max!0 (height!1025 (left!16221 (left!16221 t!3734))) (height!1025 (right!16551 (left!16221 t!3734)))) 1)))))

(declare-fun b!1842631 () Bool)

(assert (=> b!1842631 (= e!1177471 (<= 0 (cheight!6920 (left!16221 t!3734))))))

(assert (= (and d!563723 res!827843) b!1842629))

(assert (= (and b!1842629 res!827844) b!1842630))

(assert (= (and b!1842630 res!827845) b!1842631))

(declare-fun m!2270627 () Bool)

(assert (=> d!563723 m!2270627))

(declare-fun m!2270629 () Bool)

(assert (=> d!563723 m!2270629))

(declare-fun m!2270631 () Bool)

(assert (=> b!1842630 m!2270631))

(declare-fun m!2270633 () Bool)

(assert (=> b!1842630 m!2270633))

(assert (=> b!1842630 m!2270631))

(assert (=> b!1842630 m!2270633))

(declare-fun m!2270635 () Bool)

(assert (=> b!1842630 m!2270635))

(assert (=> b!1842568 d!563723))

(declare-fun bs!408685 () Bool)

(declare-fun d!563725 () Bool)

(assert (= bs!408685 (and d!563725 d!563721)))

(declare-fun lambda!72330 () Int)

(assert (=> bs!408685 (= lambda!72330 lambda!72329)))

(assert (=> d!563725 true))

(assert (=> d!563725 (< (dynLambda!10086 order!13085 p!1470) (dynLambda!10086 order!13085 lambda!72330))))

(assert (=> d!563725 (= (exists!663 (++!5517 (list!8252 (left!16221 t!3734)) (list!8252 (right!16551 t!3734))) p!1470) (not (forall!4362 (++!5517 (list!8252 (left!16221 t!3734)) (list!8252 (right!16551 t!3734))) lambda!72330)))))

(declare-fun bs!408686 () Bool)

(assert (= bs!408686 d!563725))

(assert (=> bs!408686 m!2270547))

(declare-fun m!2270637 () Bool)

(assert (=> bs!408686 m!2270637))

(assert (=> d!563695 d!563725))

(declare-fun b!1842642 () Bool)

(declare-fun res!827851 () Bool)

(declare-fun e!1177476 () Bool)

(assert (=> b!1842642 (=> (not res!827851) (not e!1177476))))

(declare-fun lt!714439 () List!20354)

(assert (=> b!1842642 (= res!827851 (= (size!16084 lt!714439) (+ (size!16084 (list!8252 (left!16221 t!3734))) (size!16084 (list!8252 (right!16551 t!3734))))))))

(declare-fun d!563727 () Bool)

(assert (=> d!563727 e!1177476))

(declare-fun res!827850 () Bool)

(assert (=> d!563727 (=> (not res!827850) (not e!1177476))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3022 (List!20354) (InoxSet T!31878))

(assert (=> d!563727 (= res!827850 (= (content!3022 lt!714439) ((_ map or) (content!3022 (list!8252 (left!16221 t!3734))) (content!3022 (list!8252 (right!16551 t!3734))))))))

(declare-fun e!1177477 () List!20354)

(assert (=> d!563727 (= lt!714439 e!1177477)))

(declare-fun c!300804 () Bool)

(assert (=> d!563727 (= c!300804 ((_ is Nil!20284) (list!8252 (left!16221 t!3734))))))

(assert (=> d!563727 (= (++!5517 (list!8252 (left!16221 t!3734)) (list!8252 (right!16551 t!3734))) lt!714439)))

(declare-fun b!1842640 () Bool)

(assert (=> b!1842640 (= e!1177477 (list!8252 (right!16551 t!3734)))))

(declare-fun b!1842643 () Bool)

(assert (=> b!1842643 (= e!1177476 (or (not (= (list!8252 (right!16551 t!3734)) Nil!20284)) (= lt!714439 (list!8252 (left!16221 t!3734)))))))

(declare-fun b!1842641 () Bool)

(assert (=> b!1842641 (= e!1177477 (Cons!20284 (h!25685 (list!8252 (left!16221 t!3734))) (++!5517 (t!171825 (list!8252 (left!16221 t!3734))) (list!8252 (right!16551 t!3734)))))))

(assert (= (and d!563727 c!300804) b!1842640))

(assert (= (and d!563727 (not c!300804)) b!1842641))

(assert (= (and d!563727 res!827850) b!1842642))

(assert (= (and b!1842642 res!827851) b!1842643))

(declare-fun m!2270639 () Bool)

(assert (=> b!1842642 m!2270639))

(assert (=> b!1842642 m!2270499))

(declare-fun m!2270641 () Bool)

(assert (=> b!1842642 m!2270641))

(assert (=> b!1842642 m!2270501))

(declare-fun m!2270643 () Bool)

(assert (=> b!1842642 m!2270643))

(declare-fun m!2270645 () Bool)

(assert (=> d!563727 m!2270645))

(assert (=> d!563727 m!2270499))

(declare-fun m!2270647 () Bool)

(assert (=> d!563727 m!2270647))

(assert (=> d!563727 m!2270501))

(declare-fun m!2270649 () Bool)

(assert (=> d!563727 m!2270649))

(assert (=> b!1842641 m!2270501))

(declare-fun m!2270651 () Bool)

(assert (=> b!1842641 m!2270651))

(assert (=> d!563695 d!563727))

(declare-fun bs!408687 () Bool)

(declare-fun d!563729 () Bool)

(assert (= bs!408687 (and d!563729 d!563721)))

(declare-fun lambda!72331 () Int)

(assert (=> bs!408687 (= lambda!72331 lambda!72329)))

(declare-fun bs!408688 () Bool)

(assert (= bs!408688 (and d!563729 d!563725)))

(assert (=> bs!408688 (= lambda!72331 lambda!72330)))

(assert (=> d!563729 true))

(assert (=> d!563729 (< (dynLambda!10086 order!13085 p!1470) (dynLambda!10086 order!13085 lambda!72331))))

(assert (=> d!563729 (= (exists!663 (list!8252 (left!16221 t!3734)) p!1470) (not (forall!4362 (list!8252 (left!16221 t!3734)) lambda!72331)))))

(declare-fun bs!408689 () Bool)

(assert (= bs!408689 d!563729))

(assert (=> bs!408689 m!2270499))

(declare-fun m!2270653 () Bool)

(assert (=> bs!408689 m!2270653))

(assert (=> d!563695 d!563729))

(declare-fun d!563731 () Bool)

(declare-fun e!1177480 () Bool)

(assert (=> d!563731 (= (exists!663 (++!5517 (list!8252 (left!16221 t!3734)) (list!8252 (right!16551 t!3734))) p!1470) e!1177480)))

(declare-fun res!827854 () Bool)

(assert (=> d!563731 (=> res!827854 e!1177480)))

(assert (=> d!563731 (= res!827854 (exists!663 (list!8252 (left!16221 t!3734)) p!1470))))

(assert (=> d!563731 true))

(declare-fun _$80!44 () Unit!34995)

(assert (=> d!563731 (= (choose!11592 (list!8252 (left!16221 t!3734)) (list!8252 (right!16551 t!3734)) p!1470) _$80!44)))

(declare-fun b!1842646 () Bool)

(assert (=> b!1842646 (= e!1177480 (exists!663 (list!8252 (right!16551 t!3734)) p!1470))))

(assert (= (and d!563731 (not res!827854)) b!1842646))

(assert (=> d!563731 m!2270499))

(assert (=> d!563731 m!2270501))

(assert (=> d!563731 m!2270547))

(assert (=> d!563731 m!2270547))

(assert (=> d!563731 m!2270549))

(assert (=> d!563731 m!2270499))

(assert (=> d!563731 m!2270535))

(assert (=> b!1842646 m!2270501))

(assert (=> b!1842646 m!2270553))

(assert (=> d!563695 d!563731))

(declare-fun d!563733 () Bool)

(declare-fun res!827859 () Bool)

(declare-fun e!1177483 () Bool)

(assert (=> d!563733 (=> (not res!827859) (not e!1177483))))

(assert (=> d!563733 (= res!827859 (<= (size!16084 (list!8253 (xs!9585 t!3734))) 512))))

(assert (=> d!563733 (= (inv!26517 t!3734) e!1177483)))

(declare-fun b!1842651 () Bool)

(declare-fun res!827860 () Bool)

(assert (=> b!1842651 (=> (not res!827860) (not e!1177483))))

(assert (=> b!1842651 (= res!827860 (= (csize!13649 t!3734) (size!16084 (list!8253 (xs!9585 t!3734)))))))

(declare-fun b!1842652 () Bool)

(assert (=> b!1842652 (= e!1177483 (and (> (csize!13649 t!3734) 0) (<= (csize!13649 t!3734) 512)))))

(assert (= (and d!563733 res!827859) b!1842651))

(assert (= (and b!1842651 res!827860) b!1842652))

(declare-fun m!2270655 () Bool)

(assert (=> d!563733 m!2270655))

(assert (=> d!563733 m!2270655))

(declare-fun m!2270657 () Bool)

(assert (=> d!563733 m!2270657))

(assert (=> b!1842651 m!2270655))

(assert (=> b!1842651 m!2270655))

(assert (=> b!1842651 m!2270657))

(assert (=> b!1842499 d!563733))

(declare-fun b!1842655 () Bool)

(declare-fun res!827862 () Bool)

(declare-fun e!1177484 () Bool)

(assert (=> b!1842655 (=> (not res!827862) (not e!1177484))))

(declare-fun lt!714440 () List!20354)

(assert (=> b!1842655 (= res!827862 (= (size!16084 lt!714440) (+ (size!16084 (list!8252 (left!16221 (left!16221 t!3734)))) (size!16084 (list!8252 (right!16551 (left!16221 t!3734)))))))))

(declare-fun d!563735 () Bool)

(assert (=> d!563735 e!1177484))

(declare-fun res!827861 () Bool)

(assert (=> d!563735 (=> (not res!827861) (not e!1177484))))

(assert (=> d!563735 (= res!827861 (= (content!3022 lt!714440) ((_ map or) (content!3022 (list!8252 (left!16221 (left!16221 t!3734)))) (content!3022 (list!8252 (right!16551 (left!16221 t!3734)))))))))

(declare-fun e!1177485 () List!20354)

(assert (=> d!563735 (= lt!714440 e!1177485)))

(declare-fun c!300805 () Bool)

(assert (=> d!563735 (= c!300805 ((_ is Nil!20284) (list!8252 (left!16221 (left!16221 t!3734)))))))

(assert (=> d!563735 (= (++!5517 (list!8252 (left!16221 (left!16221 t!3734))) (list!8252 (right!16551 (left!16221 t!3734)))) lt!714440)))

(declare-fun b!1842653 () Bool)

(assert (=> b!1842653 (= e!1177485 (list!8252 (right!16551 (left!16221 t!3734))))))

(declare-fun b!1842656 () Bool)

(assert (=> b!1842656 (= e!1177484 (or (not (= (list!8252 (right!16551 (left!16221 t!3734))) Nil!20284)) (= lt!714440 (list!8252 (left!16221 (left!16221 t!3734))))))))

(declare-fun b!1842654 () Bool)

(assert (=> b!1842654 (= e!1177485 (Cons!20284 (h!25685 (list!8252 (left!16221 (left!16221 t!3734)))) (++!5517 (t!171825 (list!8252 (left!16221 (left!16221 t!3734)))) (list!8252 (right!16551 (left!16221 t!3734))))))))

(assert (= (and d!563735 c!300805) b!1842653))

(assert (= (and d!563735 (not c!300805)) b!1842654))

(assert (= (and d!563735 res!827861) b!1842655))

(assert (= (and b!1842655 res!827862) b!1842656))

(declare-fun m!2270659 () Bool)

(assert (=> b!1842655 m!2270659))

(assert (=> b!1842655 m!2270527))

(declare-fun m!2270661 () Bool)

(assert (=> b!1842655 m!2270661))

(assert (=> b!1842655 m!2270529))

(declare-fun m!2270663 () Bool)

(assert (=> b!1842655 m!2270663))

(declare-fun m!2270665 () Bool)

(assert (=> d!563735 m!2270665))

(assert (=> d!563735 m!2270527))

(declare-fun m!2270667 () Bool)

(assert (=> d!563735 m!2270667))

(assert (=> d!563735 m!2270529))

(declare-fun m!2270669 () Bool)

(assert (=> d!563735 m!2270669))

(assert (=> b!1842654 m!2270529))

(declare-fun m!2270671 () Bool)

(assert (=> b!1842654 m!2270671))

(assert (=> b!1842557 d!563735))

(declare-fun b!1842658 () Bool)

(declare-fun e!1177486 () List!20354)

(declare-fun e!1177487 () List!20354)

(assert (=> b!1842658 (= e!1177486 e!1177487)))

(declare-fun c!300807 () Bool)

(assert (=> b!1842658 (= c!300807 ((_ is Leaf!9800) (left!16221 (left!16221 t!3734))))))

(declare-fun d!563737 () Bool)

(declare-fun c!300806 () Bool)

(assert (=> d!563737 (= c!300806 ((_ is Empty!6709) (left!16221 (left!16221 t!3734))))))

(assert (=> d!563737 (= (list!8252 (left!16221 (left!16221 t!3734))) e!1177486)))

(declare-fun b!1842657 () Bool)

(assert (=> b!1842657 (= e!1177486 Nil!20284)))

(declare-fun b!1842660 () Bool)

(assert (=> b!1842660 (= e!1177487 (++!5517 (list!8252 (left!16221 (left!16221 (left!16221 t!3734)))) (list!8252 (right!16551 (left!16221 (left!16221 t!3734))))))))

(declare-fun b!1842659 () Bool)

(assert (=> b!1842659 (= e!1177487 (list!8253 (xs!9585 (left!16221 (left!16221 t!3734)))))))

(assert (= (and d!563737 c!300806) b!1842657))

(assert (= (and d!563737 (not c!300806)) b!1842658))

(assert (= (and b!1842658 c!300807) b!1842659))

(assert (= (and b!1842658 (not c!300807)) b!1842660))

(declare-fun m!2270673 () Bool)

(assert (=> b!1842660 m!2270673))

(declare-fun m!2270675 () Bool)

(assert (=> b!1842660 m!2270675))

(assert (=> b!1842660 m!2270673))

(assert (=> b!1842660 m!2270675))

(declare-fun m!2270677 () Bool)

(assert (=> b!1842660 m!2270677))

(declare-fun m!2270679 () Bool)

(assert (=> b!1842659 m!2270679))

(assert (=> b!1842557 d!563737))

(declare-fun b!1842662 () Bool)

(declare-fun e!1177488 () List!20354)

(declare-fun e!1177489 () List!20354)

(assert (=> b!1842662 (= e!1177488 e!1177489)))

(declare-fun c!300809 () Bool)

(assert (=> b!1842662 (= c!300809 ((_ is Leaf!9800) (right!16551 (left!16221 t!3734))))))

(declare-fun d!563739 () Bool)

(declare-fun c!300808 () Bool)

(assert (=> d!563739 (= c!300808 ((_ is Empty!6709) (right!16551 (left!16221 t!3734))))))

(assert (=> d!563739 (= (list!8252 (right!16551 (left!16221 t!3734))) e!1177488)))

(declare-fun b!1842661 () Bool)

(assert (=> b!1842661 (= e!1177488 Nil!20284)))

(declare-fun b!1842664 () Bool)

(assert (=> b!1842664 (= e!1177489 (++!5517 (list!8252 (left!16221 (right!16551 (left!16221 t!3734)))) (list!8252 (right!16551 (right!16551 (left!16221 t!3734))))))))

(declare-fun b!1842663 () Bool)

(assert (=> b!1842663 (= e!1177489 (list!8253 (xs!9585 (right!16551 (left!16221 t!3734)))))))

(assert (= (and d!563739 c!300808) b!1842661))

(assert (= (and d!563739 (not c!300808)) b!1842662))

(assert (= (and b!1842662 c!300809) b!1842663))

(assert (= (and b!1842662 (not c!300809)) b!1842664))

(declare-fun m!2270681 () Bool)

(assert (=> b!1842664 m!2270681))

(declare-fun m!2270683 () Bool)

(assert (=> b!1842664 m!2270683))

(assert (=> b!1842664 m!2270681))

(assert (=> b!1842664 m!2270683))

(declare-fun m!2270685 () Bool)

(assert (=> b!1842664 m!2270685))

(declare-fun m!2270687 () Bool)

(assert (=> b!1842663 m!2270687))

(assert (=> b!1842557 d!563739))

(declare-fun d!563741 () Bool)

(declare-fun lt!714443 () Bool)

(assert (=> d!563741 (= lt!714443 (exists!663 (list!8253 (xs!9585 (left!16221 t!3734))) p!1470))))

(declare-fun choose!11594 (IArray!13423 Int) Bool)

(assert (=> d!563741 (= lt!714443 (choose!11594 (xs!9585 (left!16221 t!3734)) p!1470))))

(assert (=> d!563741 (= (exists!662 (xs!9585 (left!16221 t!3734)) p!1470) lt!714443)))

(declare-fun bs!408690 () Bool)

(assert (= bs!408690 d!563741))

(assert (=> bs!408690 m!2270569))

(assert (=> bs!408690 m!2270569))

(declare-fun m!2270689 () Bool)

(assert (=> bs!408690 m!2270689))

(declare-fun m!2270691 () Bool)

(assert (=> bs!408690 m!2270691))

(assert (=> b!1842521 d!563741))

(declare-fun d!563743 () Bool)

(declare-fun lt!714446 () Int)

(assert (=> d!563743 (>= lt!714446 0)))

(declare-fun e!1177492 () Int)

(assert (=> d!563743 (= lt!714446 e!1177492)))

(declare-fun c!300812 () Bool)

(assert (=> d!563743 (= c!300812 ((_ is Nil!20284) (innerList!6769 (xs!9585 t!3734))))))

(assert (=> d!563743 (= (size!16084 (innerList!6769 (xs!9585 t!3734))) lt!714446)))

(declare-fun b!1842669 () Bool)

(assert (=> b!1842669 (= e!1177492 0)))

(declare-fun b!1842670 () Bool)

(assert (=> b!1842670 (= e!1177492 (+ 1 (size!16084 (t!171825 (innerList!6769 (xs!9585 t!3734))))))))

(assert (= (and d!563743 c!300812) b!1842669))

(assert (= (and d!563743 (not c!300812)) b!1842670))

(declare-fun m!2270693 () Bool)

(assert (=> b!1842670 m!2270693))

(assert (=> d!563711 d!563743))

(declare-fun d!563745 () Bool)

(declare-fun res!827863 () Bool)

(declare-fun e!1177493 () Bool)

(assert (=> d!563745 (=> (not res!827863) (not e!1177493))))

(assert (=> d!563745 (= res!827863 (<= (size!16084 (list!8253 (xs!9585 (left!16221 t!3734)))) 512))))

(assert (=> d!563745 (= (inv!26517 (left!16221 t!3734)) e!1177493)))

(declare-fun b!1842671 () Bool)

(declare-fun res!827864 () Bool)

(assert (=> b!1842671 (=> (not res!827864) (not e!1177493))))

(assert (=> b!1842671 (= res!827864 (= (csize!13649 (left!16221 t!3734)) (size!16084 (list!8253 (xs!9585 (left!16221 t!3734))))))))

(declare-fun b!1842672 () Bool)

(assert (=> b!1842672 (= e!1177493 (and (> (csize!13649 (left!16221 t!3734)) 0) (<= (csize!13649 (left!16221 t!3734)) 512)))))

(assert (= (and d!563745 res!827863) b!1842671))

(assert (= (and b!1842671 res!827864) b!1842672))

(assert (=> d!563745 m!2270569))

(assert (=> d!563745 m!2270569))

(declare-fun m!2270695 () Bool)

(assert (=> d!563745 m!2270695))

(assert (=> b!1842671 m!2270569))

(assert (=> b!1842671 m!2270569))

(assert (=> b!1842671 m!2270695))

(assert (=> b!1842570 d!563745))

(declare-fun d!563749 () Bool)

(assert (=> d!563749 (= (list!8253 (xs!9585 (left!16221 t!3734))) (innerList!6769 (xs!9585 (left!16221 t!3734))))))

(assert (=> b!1842556 d!563749))

(declare-fun d!563751 () Bool)

(declare-fun res!827865 () Bool)

(declare-fun e!1177494 () Bool)

(assert (=> d!563751 (=> (not res!827865) (not e!1177494))))

(assert (=> d!563751 (= res!827865 (= (csize!13648 (right!16551 t!3734)) (+ (size!16085 (left!16221 (right!16551 t!3734))) (size!16085 (right!16551 (right!16551 t!3734))))))))

(assert (=> d!563751 (= (inv!26516 (right!16551 t!3734)) e!1177494)))

(declare-fun b!1842673 () Bool)

(declare-fun res!827866 () Bool)

(assert (=> b!1842673 (=> (not res!827866) (not e!1177494))))

(assert (=> b!1842673 (= res!827866 (and (not (= (left!16221 (right!16551 t!3734)) Empty!6709)) (not (= (right!16551 (right!16551 t!3734)) Empty!6709))))))

(declare-fun b!1842674 () Bool)

(declare-fun res!827867 () Bool)

(assert (=> b!1842674 (=> (not res!827867) (not e!1177494))))

(assert (=> b!1842674 (= res!827867 (= (cheight!6920 (right!16551 t!3734)) (+ (max!0 (height!1025 (left!16221 (right!16551 t!3734))) (height!1025 (right!16551 (right!16551 t!3734)))) 1)))))

(declare-fun b!1842675 () Bool)

(assert (=> b!1842675 (= e!1177494 (<= 0 (cheight!6920 (right!16551 t!3734))))))

(assert (= (and d!563751 res!827865) b!1842673))

(assert (= (and b!1842673 res!827866) b!1842674))

(assert (= (and b!1842674 res!827867) b!1842675))

(declare-fun m!2270697 () Bool)

(assert (=> d!563751 m!2270697))

(declare-fun m!2270699 () Bool)

(assert (=> d!563751 m!2270699))

(declare-fun m!2270701 () Bool)

(assert (=> b!1842674 m!2270701))

(declare-fun m!2270703 () Bool)

(assert (=> b!1842674 m!2270703))

(assert (=> b!1842674 m!2270701))

(assert (=> b!1842674 m!2270703))

(declare-fun m!2270705 () Bool)

(assert (=> b!1842674 m!2270705))

(assert (=> b!1842571 d!563751))

(assert (=> b!1842486 d!563713))

(assert (=> b!1842486 d!563715))

(declare-fun d!563753 () Bool)

(assert (=> d!563753 (= (list!8253 (xs!9585 (right!16551 t!3734))) (innerList!6769 (xs!9585 (right!16551 t!3734))))))

(assert (=> b!1842560 d!563753))

(declare-fun d!563755 () Bool)

(declare-fun c!300813 () Bool)

(assert (=> d!563755 (= c!300813 ((_ is Node!6709) (left!16221 (left!16221 t!3734))))))

(declare-fun e!1177497 () Bool)

(assert (=> d!563755 (= (inv!26514 (left!16221 (left!16221 t!3734))) e!1177497)))

(declare-fun b!1842676 () Bool)

(assert (=> b!1842676 (= e!1177497 (inv!26516 (left!16221 (left!16221 t!3734))))))

(declare-fun b!1842677 () Bool)

(declare-fun e!1177498 () Bool)

(assert (=> b!1842677 (= e!1177497 e!1177498)))

(declare-fun res!827870 () Bool)

(assert (=> b!1842677 (= res!827870 (not ((_ is Leaf!9800) (left!16221 (left!16221 t!3734)))))))

(assert (=> b!1842677 (=> res!827870 e!1177498)))

(declare-fun b!1842678 () Bool)

(assert (=> b!1842678 (= e!1177498 (inv!26517 (left!16221 (left!16221 t!3734))))))

(assert (= (and d!563755 c!300813) b!1842676))

(assert (= (and d!563755 (not c!300813)) b!1842677))

(assert (= (and b!1842677 (not res!827870)) b!1842678))

(declare-fun m!2270707 () Bool)

(assert (=> b!1842676 m!2270707))

(declare-fun m!2270709 () Bool)

(assert (=> b!1842678 m!2270709))

(assert (=> b!1842604 d!563755))

(declare-fun d!563757 () Bool)

(declare-fun c!300814 () Bool)

(assert (=> d!563757 (= c!300814 ((_ is Node!6709) (right!16551 (left!16221 t!3734))))))

(declare-fun e!1177499 () Bool)

(assert (=> d!563757 (= (inv!26514 (right!16551 (left!16221 t!3734))) e!1177499)))

(declare-fun b!1842683 () Bool)

(assert (=> b!1842683 (= e!1177499 (inv!26516 (right!16551 (left!16221 t!3734))))))

(declare-fun b!1842684 () Bool)

(declare-fun e!1177500 () Bool)

(assert (=> b!1842684 (= e!1177499 e!1177500)))

(declare-fun res!827873 () Bool)

(assert (=> b!1842684 (= res!827873 (not ((_ is Leaf!9800) (right!16551 (left!16221 t!3734)))))))

(assert (=> b!1842684 (=> res!827873 e!1177500)))

(declare-fun b!1842685 () Bool)

(assert (=> b!1842685 (= e!1177500 (inv!26517 (right!16551 (left!16221 t!3734))))))

(assert (= (and d!563757 c!300814) b!1842683))

(assert (= (and d!563757 (not c!300814)) b!1842684))

(assert (= (and b!1842684 (not res!827873)) b!1842685))

(declare-fun m!2270711 () Bool)

(assert (=> b!1842683 m!2270711))

(declare-fun m!2270713 () Bool)

(assert (=> b!1842685 m!2270713))

(assert (=> b!1842604 d!563757))

(declare-fun b!1842687 () Bool)

(declare-fun e!1177502 () Bool)

(assert (=> b!1842687 (= e!1177502 (exists!662 (xs!9585 (right!16551 (left!16221 t!3734))) p!1470))))

(declare-fun b!1842688 () Bool)

(declare-fun e!1177503 () Bool)

(assert (=> b!1842688 (= e!1177502 e!1177503)))

(declare-fun lt!714447 () Unit!34995)

(assert (=> b!1842688 (= lt!714447 (lemmaExistsConcat!6 (list!8252 (left!16221 (right!16551 (left!16221 t!3734)))) (list!8252 (right!16551 (right!16551 (left!16221 t!3734)))) p!1470))))

(declare-fun res!827875 () Bool)

(assert (=> b!1842688 (= res!827875 (exists!661 (left!16221 (right!16551 (left!16221 t!3734))) p!1470))))

(assert (=> b!1842688 (=> res!827875 e!1177503)))

(declare-fun d!563759 () Bool)

(declare-fun lt!714448 () Bool)

(assert (=> d!563759 (= lt!714448 (exists!663 (list!8252 (right!16551 (left!16221 t!3734))) p!1470))))

(declare-fun e!1177501 () Bool)

(assert (=> d!563759 (= lt!714448 e!1177501)))

(declare-fun res!827874 () Bool)

(assert (=> d!563759 (=> (not res!827874) (not e!1177501))))

(assert (=> d!563759 (= res!827874 (not ((_ is Empty!6709) (right!16551 (left!16221 t!3734)))))))

(assert (=> d!563759 (= (exists!661 (right!16551 (left!16221 t!3734)) p!1470) lt!714448)))

(declare-fun b!1842686 () Bool)

(assert (=> b!1842686 (= e!1177501 e!1177502)))

(declare-fun c!300815 () Bool)

(assert (=> b!1842686 (= c!300815 ((_ is Leaf!9800) (right!16551 (left!16221 t!3734))))))

(declare-fun b!1842689 () Bool)

(assert (=> b!1842689 (= e!1177503 (exists!661 (right!16551 (right!16551 (left!16221 t!3734))) p!1470))))

(assert (= (and d!563759 res!827874) b!1842686))

(assert (= (and b!1842686 c!300815) b!1842687))

(assert (= (and b!1842686 (not c!300815)) b!1842688))

(assert (= (and b!1842688 (not res!827875)) b!1842689))

(declare-fun m!2270715 () Bool)

(assert (=> b!1842687 m!2270715))

(assert (=> b!1842688 m!2270681))

(assert (=> b!1842688 m!2270683))

(assert (=> b!1842688 m!2270681))

(assert (=> b!1842688 m!2270683))

(declare-fun m!2270717 () Bool)

(assert (=> b!1842688 m!2270717))

(declare-fun m!2270719 () Bool)

(assert (=> b!1842688 m!2270719))

(assert (=> d!563759 m!2270529))

(assert (=> d!563759 m!2270529))

(declare-fun m!2270721 () Bool)

(assert (=> d!563759 m!2270721))

(declare-fun m!2270723 () Bool)

(assert (=> b!1842689 m!2270723))

(assert (=> b!1842523 d!563759))

(assert (=> d!563691 d!563729))

(assert (=> d!563691 d!563699))

(declare-fun d!563761 () Bool)

(declare-fun res!827876 () Bool)

(declare-fun e!1177504 () Bool)

(assert (=> d!563761 (=> (not res!827876) (not e!1177504))))

(assert (=> d!563761 (= res!827876 (<= (size!16084 (list!8253 (xs!9585 (right!16551 t!3734)))) 512))))

(assert (=> d!563761 (= (inv!26517 (right!16551 t!3734)) e!1177504)))

(declare-fun b!1842690 () Bool)

(declare-fun res!827877 () Bool)

(assert (=> b!1842690 (=> (not res!827877) (not e!1177504))))

(assert (=> b!1842690 (= res!827877 (= (csize!13649 (right!16551 t!3734)) (size!16084 (list!8253 (xs!9585 (right!16551 t!3734))))))))

(declare-fun b!1842691 () Bool)

(assert (=> b!1842691 (= e!1177504 (and (> (csize!13649 (right!16551 t!3734)) 0) (<= (csize!13649 (right!16551 t!3734)) 512)))))

(assert (= (and d!563761 res!827876) b!1842690))

(assert (= (and b!1842690 res!827877) b!1842691))

(assert (=> d!563761 m!2270577))

(assert (=> d!563761 m!2270577))

(declare-fun m!2270725 () Bool)

(assert (=> d!563761 m!2270725))

(assert (=> b!1842690 m!2270577))

(assert (=> b!1842690 m!2270577))

(assert (=> b!1842690 m!2270725))

(assert (=> b!1842573 d!563761))

(declare-fun d!563763 () Bool)

(declare-fun e!1177506 () Bool)

(assert (=> d!563763 (= (exists!663 (++!5517 (list!8252 (left!16221 (left!16221 t!3734))) (list!8252 (right!16551 (left!16221 t!3734)))) p!1470) e!1177506)))

(declare-fun res!827880 () Bool)

(assert (=> d!563763 (=> res!827880 e!1177506)))

(assert (=> d!563763 (= res!827880 (exists!663 (list!8252 (left!16221 (left!16221 t!3734))) p!1470))))

(declare-fun lt!714449 () Unit!34995)

(assert (=> d!563763 (= lt!714449 (choose!11592 (list!8252 (left!16221 (left!16221 t!3734))) (list!8252 (right!16551 (left!16221 t!3734))) p!1470))))

(assert (=> d!563763 (= (lemmaExistsConcat!6 (list!8252 (left!16221 (left!16221 t!3734))) (list!8252 (right!16551 (left!16221 t!3734))) p!1470) lt!714449)))

(declare-fun b!1842694 () Bool)

(assert (=> b!1842694 (= e!1177506 (exists!663 (list!8252 (right!16551 (left!16221 t!3734))) p!1470))))

(assert (= (and d!563763 (not res!827880)) b!1842694))

(assert (=> d!563763 m!2270527))

(assert (=> d!563763 m!2270529))

(assert (=> d!563763 m!2270567))

(assert (=> d!563763 m!2270567))

(declare-fun m!2270729 () Bool)

(assert (=> d!563763 m!2270729))

(assert (=> d!563763 m!2270527))

(declare-fun m!2270731 () Bool)

(assert (=> d!563763 m!2270731))

(assert (=> d!563763 m!2270527))

(assert (=> d!563763 m!2270529))

(declare-fun m!2270733 () Bool)

(assert (=> d!563763 m!2270733))

(assert (=> b!1842694 m!2270529))

(assert (=> b!1842694 m!2270721))

(assert (=> b!1842522 d!563763))

(assert (=> b!1842522 d!563737))

(assert (=> b!1842522 d!563739))

(declare-fun b!1842696 () Bool)

(declare-fun e!1177508 () Bool)

(assert (=> b!1842696 (= e!1177508 (exists!662 (xs!9585 (left!16221 (left!16221 t!3734))) p!1470))))

(declare-fun b!1842697 () Bool)

(declare-fun e!1177509 () Bool)

(assert (=> b!1842697 (= e!1177508 e!1177509)))

(declare-fun lt!714450 () Unit!34995)

(assert (=> b!1842697 (= lt!714450 (lemmaExistsConcat!6 (list!8252 (left!16221 (left!16221 (left!16221 t!3734)))) (list!8252 (right!16551 (left!16221 (left!16221 t!3734)))) p!1470))))

(declare-fun res!827882 () Bool)

(assert (=> b!1842697 (= res!827882 (exists!661 (left!16221 (left!16221 (left!16221 t!3734))) p!1470))))

(assert (=> b!1842697 (=> res!827882 e!1177509)))

(declare-fun d!563767 () Bool)

(declare-fun lt!714451 () Bool)

(assert (=> d!563767 (= lt!714451 (exists!663 (list!8252 (left!16221 (left!16221 t!3734))) p!1470))))

(declare-fun e!1177507 () Bool)

(assert (=> d!563767 (= lt!714451 e!1177507)))

(declare-fun res!827881 () Bool)

(assert (=> d!563767 (=> (not res!827881) (not e!1177507))))

(assert (=> d!563767 (= res!827881 (not ((_ is Empty!6709) (left!16221 (left!16221 t!3734)))))))

(assert (=> d!563767 (= (exists!661 (left!16221 (left!16221 t!3734)) p!1470) lt!714451)))

(declare-fun b!1842695 () Bool)

(assert (=> b!1842695 (= e!1177507 e!1177508)))

(declare-fun c!300816 () Bool)

(assert (=> b!1842695 (= c!300816 ((_ is Leaf!9800) (left!16221 (left!16221 t!3734))))))

(declare-fun b!1842698 () Bool)

(assert (=> b!1842698 (= e!1177509 (exists!661 (right!16551 (left!16221 (left!16221 t!3734))) p!1470))))

(assert (= (and d!563767 res!827881) b!1842695))

(assert (= (and b!1842695 c!300816) b!1842696))

(assert (= (and b!1842695 (not c!300816)) b!1842697))

(assert (= (and b!1842697 (not res!827882)) b!1842698))

(declare-fun m!2270735 () Bool)

(assert (=> b!1842696 m!2270735))

(assert (=> b!1842697 m!2270673))

(assert (=> b!1842697 m!2270675))

(assert (=> b!1842697 m!2270673))

(assert (=> b!1842697 m!2270675))

(declare-fun m!2270737 () Bool)

(assert (=> b!1842697 m!2270737))

(declare-fun m!2270739 () Bool)

(assert (=> b!1842697 m!2270739))

(assert (=> d!563767 m!2270527))

(assert (=> d!563767 m!2270527))

(assert (=> d!563767 m!2270731))

(declare-fun m!2270741 () Bool)

(assert (=> b!1842698 m!2270741))

(assert (=> b!1842522 d!563767))

(declare-fun d!563769 () Bool)

(assert (=> d!563769 (= (inv!26515 (xs!9585 (right!16551 t!3734))) (<= (size!16084 (innerList!6769 (xs!9585 (right!16551 t!3734)))) 2147483647))))

(declare-fun bs!408691 () Bool)

(assert (= bs!408691 d!563769))

(declare-fun m!2270743 () Bool)

(assert (=> bs!408691 m!2270743))

(assert (=> b!1842611 d!563769))

(declare-fun d!563771 () Bool)

(declare-fun res!827883 () Bool)

(declare-fun e!1177510 () Bool)

(assert (=> d!563771 (=> (not res!827883) (not e!1177510))))

(assert (=> d!563771 (= res!827883 (= (csize!13648 t!3734) (+ (size!16085 (left!16221 t!3734)) (size!16085 (right!16551 t!3734)))))))

(assert (=> d!563771 (= (inv!26516 t!3734) e!1177510)))

(declare-fun b!1842699 () Bool)

(declare-fun res!827884 () Bool)

(assert (=> b!1842699 (=> (not res!827884) (not e!1177510))))

(assert (=> b!1842699 (= res!827884 (and (not (= (left!16221 t!3734) Empty!6709)) (not (= (right!16551 t!3734) Empty!6709))))))

(declare-fun b!1842700 () Bool)

(declare-fun res!827885 () Bool)

(assert (=> b!1842700 (=> (not res!827885) (not e!1177510))))

(assert (=> b!1842700 (= res!827885 (= (cheight!6920 t!3734) (+ (max!0 (height!1025 (left!16221 t!3734)) (height!1025 (right!16551 t!3734))) 1)))))

(declare-fun b!1842701 () Bool)

(assert (=> b!1842701 (= e!1177510 (<= 0 (cheight!6920 t!3734)))))

(assert (= (and d!563771 res!827883) b!1842699))

(assert (= (and b!1842699 res!827884) b!1842700))

(assert (= (and b!1842700 res!827885) b!1842701))

(declare-fun m!2270745 () Bool)

(assert (=> d!563771 m!2270745))

(declare-fun m!2270747 () Bool)

(assert (=> d!563771 m!2270747))

(declare-fun m!2270749 () Bool)

(assert (=> b!1842700 m!2270749))

(assert (=> b!1842700 m!2270485))

(assert (=> b!1842700 m!2270749))

(assert (=> b!1842700 m!2270485))

(declare-fun m!2270751 () Bool)

(assert (=> b!1842700 m!2270751))

(assert (=> b!1842497 d!563771))

(declare-fun d!563773 () Bool)

(assert (=> d!563773 (= (inv!26515 (xs!9585 (left!16221 t!3734))) (<= (size!16084 (innerList!6769 (xs!9585 (left!16221 t!3734)))) 2147483647))))

(declare-fun bs!408692 () Bool)

(assert (= bs!408692 d!563773))

(declare-fun m!2270753 () Bool)

(assert (=> bs!408692 m!2270753))

(assert (=> b!1842605 d!563773))

(declare-fun b!1842704 () Bool)

(declare-fun res!827887 () Bool)

(declare-fun e!1177511 () Bool)

(assert (=> b!1842704 (=> (not res!827887) (not e!1177511))))

(declare-fun lt!714452 () List!20354)

(assert (=> b!1842704 (= res!827887 (= (size!16084 lt!714452) (+ (size!16084 (list!8252 (left!16221 (right!16551 t!3734)))) (size!16084 (list!8252 (right!16551 (right!16551 t!3734)))))))))

(declare-fun d!563775 () Bool)

(assert (=> d!563775 e!1177511))

(declare-fun res!827886 () Bool)

(assert (=> d!563775 (=> (not res!827886) (not e!1177511))))

(assert (=> d!563775 (= res!827886 (= (content!3022 lt!714452) ((_ map or) (content!3022 (list!8252 (left!16221 (right!16551 t!3734)))) (content!3022 (list!8252 (right!16551 (right!16551 t!3734)))))))))

(declare-fun e!1177512 () List!20354)

(assert (=> d!563775 (= lt!714452 e!1177512)))

(declare-fun c!300817 () Bool)

(assert (=> d!563775 (= c!300817 ((_ is Nil!20284) (list!8252 (left!16221 (right!16551 t!3734)))))))

(assert (=> d!563775 (= (++!5517 (list!8252 (left!16221 (right!16551 t!3734))) (list!8252 (right!16551 (right!16551 t!3734)))) lt!714452)))

(declare-fun b!1842702 () Bool)

(assert (=> b!1842702 (= e!1177512 (list!8252 (right!16551 (right!16551 t!3734))))))

(declare-fun b!1842705 () Bool)

(assert (=> b!1842705 (= e!1177511 (or (not (= (list!8252 (right!16551 (right!16551 t!3734))) Nil!20284)) (= lt!714452 (list!8252 (left!16221 (right!16551 t!3734))))))))

(declare-fun b!1842703 () Bool)

(assert (=> b!1842703 (= e!1177512 (Cons!20284 (h!25685 (list!8252 (left!16221 (right!16551 t!3734)))) (++!5517 (t!171825 (list!8252 (left!16221 (right!16551 t!3734)))) (list!8252 (right!16551 (right!16551 t!3734))))))))

(assert (= (and d!563775 c!300817) b!1842702))

(assert (= (and d!563775 (not c!300817)) b!1842703))

(assert (= (and d!563775 res!827886) b!1842704))

(assert (= (and b!1842704 res!827887) b!1842705))

(declare-fun m!2270755 () Bool)

(assert (=> b!1842704 m!2270755))

(assert (=> b!1842704 m!2270571))

(declare-fun m!2270757 () Bool)

(assert (=> b!1842704 m!2270757))

(assert (=> b!1842704 m!2270573))

(declare-fun m!2270759 () Bool)

(assert (=> b!1842704 m!2270759))

(declare-fun m!2270761 () Bool)

(assert (=> d!563775 m!2270761))

(assert (=> d!563775 m!2270571))

(declare-fun m!2270763 () Bool)

(assert (=> d!563775 m!2270763))

(assert (=> d!563775 m!2270573))

(declare-fun m!2270765 () Bool)

(assert (=> d!563775 m!2270765))

(assert (=> b!1842703 m!2270573))

(declare-fun m!2270767 () Bool)

(assert (=> b!1842703 m!2270767))

(assert (=> b!1842561 d!563775))

(declare-fun b!1842707 () Bool)

(declare-fun e!1177513 () List!20354)

(declare-fun e!1177514 () List!20354)

(assert (=> b!1842707 (= e!1177513 e!1177514)))

(declare-fun c!300819 () Bool)

(assert (=> b!1842707 (= c!300819 ((_ is Leaf!9800) (left!16221 (right!16551 t!3734))))))

(declare-fun d!563777 () Bool)

(declare-fun c!300818 () Bool)

(assert (=> d!563777 (= c!300818 ((_ is Empty!6709) (left!16221 (right!16551 t!3734))))))

(assert (=> d!563777 (= (list!8252 (left!16221 (right!16551 t!3734))) e!1177513)))

(declare-fun b!1842706 () Bool)

(assert (=> b!1842706 (= e!1177513 Nil!20284)))

(declare-fun b!1842709 () Bool)

(assert (=> b!1842709 (= e!1177514 (++!5517 (list!8252 (left!16221 (left!16221 (right!16551 t!3734)))) (list!8252 (right!16551 (left!16221 (right!16551 t!3734))))))))

(declare-fun b!1842708 () Bool)

(assert (=> b!1842708 (= e!1177514 (list!8253 (xs!9585 (left!16221 (right!16551 t!3734)))))))

(assert (= (and d!563777 c!300818) b!1842706))

(assert (= (and d!563777 (not c!300818)) b!1842707))

(assert (= (and b!1842707 c!300819) b!1842708))

(assert (= (and b!1842707 (not c!300819)) b!1842709))

(declare-fun m!2270769 () Bool)

(assert (=> b!1842709 m!2270769))

(declare-fun m!2270771 () Bool)

(assert (=> b!1842709 m!2270771))

(assert (=> b!1842709 m!2270769))

(assert (=> b!1842709 m!2270771))

(declare-fun m!2270773 () Bool)

(assert (=> b!1842709 m!2270773))

(declare-fun m!2270775 () Bool)

(assert (=> b!1842708 m!2270775))

(assert (=> b!1842561 d!563777))

(declare-fun b!1842713 () Bool)

(declare-fun e!1177515 () List!20354)

(declare-fun e!1177516 () List!20354)

(assert (=> b!1842713 (= e!1177515 e!1177516)))

(declare-fun c!300821 () Bool)

(assert (=> b!1842713 (= c!300821 ((_ is Leaf!9800) (right!16551 (right!16551 t!3734))))))

(declare-fun d!563779 () Bool)

(declare-fun c!300820 () Bool)

(assert (=> d!563779 (= c!300820 ((_ is Empty!6709) (right!16551 (right!16551 t!3734))))))

(assert (=> d!563779 (= (list!8252 (right!16551 (right!16551 t!3734))) e!1177515)))

(declare-fun b!1842712 () Bool)

(assert (=> b!1842712 (= e!1177515 Nil!20284)))

(declare-fun b!1842715 () Bool)

(assert (=> b!1842715 (= e!1177516 (++!5517 (list!8252 (left!16221 (right!16551 (right!16551 t!3734)))) (list!8252 (right!16551 (right!16551 (right!16551 t!3734))))))))

(declare-fun b!1842714 () Bool)

(assert (=> b!1842714 (= e!1177516 (list!8253 (xs!9585 (right!16551 (right!16551 t!3734)))))))

(assert (= (and d!563779 c!300820) b!1842712))

(assert (= (and d!563779 (not c!300820)) b!1842713))

(assert (= (and b!1842713 c!300821) b!1842714))

(assert (= (and b!1842713 (not c!300821)) b!1842715))

(declare-fun m!2270779 () Bool)

(assert (=> b!1842715 m!2270779))

(declare-fun m!2270781 () Bool)

(assert (=> b!1842715 m!2270781))

(assert (=> b!1842715 m!2270779))

(assert (=> b!1842715 m!2270781))

(declare-fun m!2270783 () Bool)

(assert (=> b!1842715 m!2270783))

(declare-fun m!2270785 () Bool)

(assert (=> b!1842714 m!2270785))

(assert (=> b!1842561 d!563779))

(declare-fun d!563783 () Bool)

(declare-fun c!300822 () Bool)

(assert (=> d!563783 (= c!300822 ((_ is Node!6709) (left!16221 (right!16551 t!3734))))))

(declare-fun e!1177517 () Bool)

(assert (=> d!563783 (= (inv!26514 (left!16221 (right!16551 t!3734))) e!1177517)))

(declare-fun b!1842716 () Bool)

(assert (=> b!1842716 (= e!1177517 (inv!26516 (left!16221 (right!16551 t!3734))))))

(declare-fun b!1842717 () Bool)

(declare-fun e!1177518 () Bool)

(assert (=> b!1842717 (= e!1177517 e!1177518)))

(declare-fun res!827888 () Bool)

(assert (=> b!1842717 (= res!827888 (not ((_ is Leaf!9800) (left!16221 (right!16551 t!3734)))))))

(assert (=> b!1842717 (=> res!827888 e!1177518)))

(declare-fun b!1842718 () Bool)

(assert (=> b!1842718 (= e!1177518 (inv!26517 (left!16221 (right!16551 t!3734))))))

(assert (= (and d!563783 c!300822) b!1842716))

(assert (= (and d!563783 (not c!300822)) b!1842717))

(assert (= (and b!1842717 (not res!827888)) b!1842718))

(declare-fun m!2270787 () Bool)

(assert (=> b!1842716 m!2270787))

(declare-fun m!2270789 () Bool)

(assert (=> b!1842718 m!2270789))

(assert (=> b!1842610 d!563783))

(declare-fun d!563785 () Bool)

(declare-fun c!300823 () Bool)

(assert (=> d!563785 (= c!300823 ((_ is Node!6709) (right!16551 (right!16551 t!3734))))))

(declare-fun e!1177519 () Bool)

(assert (=> d!563785 (= (inv!26514 (right!16551 (right!16551 t!3734))) e!1177519)))

(declare-fun b!1842719 () Bool)

(assert (=> b!1842719 (= e!1177519 (inv!26516 (right!16551 (right!16551 t!3734))))))

(declare-fun b!1842720 () Bool)

(declare-fun e!1177520 () Bool)

(assert (=> b!1842720 (= e!1177519 e!1177520)))

(declare-fun res!827889 () Bool)

(assert (=> b!1842720 (= res!827889 (not ((_ is Leaf!9800) (right!16551 (right!16551 t!3734)))))))

(assert (=> b!1842720 (=> res!827889 e!1177520)))

(declare-fun b!1842721 () Bool)

(assert (=> b!1842721 (= e!1177520 (inv!26517 (right!16551 (right!16551 t!3734))))))

(assert (= (and d!563785 c!300823) b!1842719))

(assert (= (and d!563785 (not c!300823)) b!1842720))

(assert (= (and b!1842720 (not res!827889)) b!1842721))

(declare-fun m!2270791 () Bool)

(assert (=> b!1842719 m!2270791))

(declare-fun m!2270793 () Bool)

(assert (=> b!1842721 m!2270793))

(assert (=> b!1842610 d!563785))

(declare-fun e!1177521 () Bool)

(declare-fun tp!520978 () Bool)

(declare-fun tp!520979 () Bool)

(declare-fun b!1842722 () Bool)

(assert (=> b!1842722 (= e!1177521 (and (inv!26514 (left!16221 (left!16221 (left!16221 t!3734)))) tp!520979 (inv!26514 (right!16551 (left!16221 (left!16221 t!3734)))) tp!520978))))

(declare-fun b!1842724 () Bool)

(declare-fun e!1177522 () Bool)

(declare-fun tp!520977 () Bool)

(assert (=> b!1842724 (= e!1177522 tp!520977)))

(declare-fun b!1842723 () Bool)

(assert (=> b!1842723 (= e!1177521 (and (inv!26515 (xs!9585 (left!16221 (left!16221 t!3734)))) e!1177522))))

(assert (=> b!1842604 (= tp!520964 (and (inv!26514 (left!16221 (left!16221 t!3734))) e!1177521))))

(assert (= (and b!1842604 ((_ is Node!6709) (left!16221 (left!16221 t!3734)))) b!1842722))

(assert (= b!1842723 b!1842724))

(assert (= (and b!1842604 ((_ is Leaf!9800) (left!16221 (left!16221 t!3734)))) b!1842723))

(declare-fun m!2270795 () Bool)

(assert (=> b!1842722 m!2270795))

(declare-fun m!2270797 () Bool)

(assert (=> b!1842722 m!2270797))

(declare-fun m!2270799 () Bool)

(assert (=> b!1842723 m!2270799))

(assert (=> b!1842604 m!2270601))

(declare-fun tp!520981 () Bool)

(declare-fun e!1177523 () Bool)

(declare-fun b!1842725 () Bool)

(declare-fun tp!520982 () Bool)

(assert (=> b!1842725 (= e!1177523 (and (inv!26514 (left!16221 (right!16551 (left!16221 t!3734)))) tp!520982 (inv!26514 (right!16551 (right!16551 (left!16221 t!3734)))) tp!520981))))

(declare-fun b!1842727 () Bool)

(declare-fun e!1177524 () Bool)

(declare-fun tp!520980 () Bool)

(assert (=> b!1842727 (= e!1177524 tp!520980)))

(declare-fun b!1842726 () Bool)

(assert (=> b!1842726 (= e!1177523 (and (inv!26515 (xs!9585 (right!16551 (left!16221 t!3734)))) e!1177524))))

(assert (=> b!1842604 (= tp!520963 (and (inv!26514 (right!16551 (left!16221 t!3734))) e!1177523))))

(assert (= (and b!1842604 ((_ is Node!6709) (right!16551 (left!16221 t!3734)))) b!1842725))

(assert (= b!1842726 b!1842727))

(assert (= (and b!1842604 ((_ is Leaf!9800) (right!16551 (left!16221 t!3734)))) b!1842726))

(declare-fun m!2270801 () Bool)

(assert (=> b!1842725 m!2270801))

(declare-fun m!2270803 () Bool)

(assert (=> b!1842725 m!2270803))

(declare-fun m!2270805 () Bool)

(assert (=> b!1842726 m!2270805))

(assert (=> b!1842604 m!2270603))

(declare-fun b!1842728 () Bool)

(declare-fun e!1177525 () Bool)

(declare-fun tp!520983 () Bool)

(assert (=> b!1842728 (= e!1177525 (and tp_is_empty!8355 tp!520983))))

(assert (=> b!1842612 (= tp!520968 e!1177525)))

(assert (= (and b!1842612 ((_ is Cons!20284) (innerList!6769 (xs!9585 (right!16551 t!3734))))) b!1842728))

(declare-fun b!1842729 () Bool)

(declare-fun e!1177526 () Bool)

(declare-fun tp!520984 () Bool)

(assert (=> b!1842729 (= e!1177526 (and tp_is_empty!8355 tp!520984))))

(assert (=> b!1842584 (= tp!520949 e!1177526)))

(assert (= (and b!1842584 ((_ is Cons!20284) (t!171825 (innerList!6769 (xs!9585 t!3734))))) b!1842729))

(declare-fun b!1842730 () Bool)

(declare-fun e!1177527 () Bool)

(declare-fun tp!520985 () Bool)

(assert (=> b!1842730 (= e!1177527 (and tp_is_empty!8355 tp!520985))))

(assert (=> b!1842606 (= tp!520962 e!1177527)))

(assert (= (and b!1842606 ((_ is Cons!20284) (innerList!6769 (xs!9585 (left!16221 t!3734))))) b!1842730))

(declare-fun tp!520988 () Bool)

(declare-fun e!1177528 () Bool)

(declare-fun b!1842731 () Bool)

(declare-fun tp!520987 () Bool)

(assert (=> b!1842731 (= e!1177528 (and (inv!26514 (left!16221 (left!16221 (right!16551 t!3734)))) tp!520988 (inv!26514 (right!16551 (left!16221 (right!16551 t!3734)))) tp!520987))))

(declare-fun b!1842733 () Bool)

(declare-fun e!1177529 () Bool)

(declare-fun tp!520986 () Bool)

(assert (=> b!1842733 (= e!1177529 tp!520986)))

(declare-fun b!1842732 () Bool)

(assert (=> b!1842732 (= e!1177528 (and (inv!26515 (xs!9585 (left!16221 (right!16551 t!3734)))) e!1177529))))

(assert (=> b!1842610 (= tp!520970 (and (inv!26514 (left!16221 (right!16551 t!3734))) e!1177528))))

(assert (= (and b!1842610 ((_ is Node!6709) (left!16221 (right!16551 t!3734)))) b!1842731))

(assert (= b!1842732 b!1842733))

(assert (= (and b!1842610 ((_ is Leaf!9800) (left!16221 (right!16551 t!3734)))) b!1842732))

(declare-fun m!2270807 () Bool)

(assert (=> b!1842731 m!2270807))

(declare-fun m!2270809 () Bool)

(assert (=> b!1842731 m!2270809))

(declare-fun m!2270811 () Bool)

(assert (=> b!1842732 m!2270811))

(assert (=> b!1842610 m!2270613))

(declare-fun b!1842734 () Bool)

(declare-fun e!1177530 () Bool)

(declare-fun tp!520991 () Bool)

(declare-fun tp!520990 () Bool)

(assert (=> b!1842734 (= e!1177530 (and (inv!26514 (left!16221 (right!16551 (right!16551 t!3734)))) tp!520991 (inv!26514 (right!16551 (right!16551 (right!16551 t!3734)))) tp!520990))))

(declare-fun b!1842736 () Bool)

(declare-fun e!1177531 () Bool)

(declare-fun tp!520989 () Bool)

(assert (=> b!1842736 (= e!1177531 tp!520989)))

(declare-fun b!1842735 () Bool)

(assert (=> b!1842735 (= e!1177530 (and (inv!26515 (xs!9585 (right!16551 (right!16551 t!3734)))) e!1177531))))

(assert (=> b!1842610 (= tp!520969 (and (inv!26514 (right!16551 (right!16551 t!3734))) e!1177530))))

(assert (= (and b!1842610 ((_ is Node!6709) (right!16551 (right!16551 t!3734)))) b!1842734))

(assert (= b!1842735 b!1842736))

(assert (= (and b!1842610 ((_ is Leaf!9800) (right!16551 (right!16551 t!3734)))) b!1842735))

(declare-fun m!2270813 () Bool)

(assert (=> b!1842734 m!2270813))

(declare-fun m!2270815 () Bool)

(assert (=> b!1842734 m!2270815))

(declare-fun m!2270817 () Bool)

(assert (=> b!1842735 m!2270817))

(assert (=> b!1842610 m!2270615))

(check-sat (not b!1842671) (not b!1842731) (not b!1842736) (not b!1842610) (not b!1842721) (not d!563723) (not b!1842696) (not b!1842678) (not b!1842730) (not b!1842725) (not d!563771) (not d!563751) (not b!1842716) (not b!1842660) (not b!1842729) (not b!1842728) (not b!1842735) (not b!1842727) (not b!1842659) (not b!1842685) (not d!563763) (not b!1842733) (not b!1842642) (not b!1842734) (not b!1842683) (not b!1842646) (not b!1842654) (not b!1842690) (not b!1842722) tp_is_empty!8355 (not b!1842655) (not d!563769) (not b!1842687) (not d!563727) (not d!563741) (not b!1842698) (not b!1842723) (not d!563773) (not b!1842651) (not d!563729) (not b_next!52213) (not d!563767) (not b!1842604) (not b!1842641) (not d!563721) (not b!1842694) (not b!1842630) (not d!563759) (not b!1842670) (not b!1842676) (not b!1842726) (not b!1842674) (not b!1842714) (not d!563733) (not d!563735) (not b!1842719) (not d!563725) (not b!1842689) (not b!1842715) (not b!1842664) (not b!1842697) (not b!1842709) (not d!563731) b_and!143647 (not b!1842724) (not b!1842663) (not b!1842688) (not b!1842718) (not b!1842703) (not b!1842700) (not d!563745) (not d!563775) (not b!1842708) (not b!1842704) (not b!1842732) (not d!563761))
(check-sat b_and!143647 (not b_next!52213))
(get-model)

(declare-fun d!563841 () Bool)

(declare-fun res!827931 () Bool)

(declare-fun e!1177589 () Bool)

(assert (=> d!563841 (=> (not res!827931) (not e!1177589))))

(assert (=> d!563841 (= res!827931 (= (csize!13648 (left!16221 (left!16221 t!3734))) (+ (size!16085 (left!16221 (left!16221 (left!16221 t!3734)))) (size!16085 (right!16551 (left!16221 (left!16221 t!3734)))))))))

(assert (=> d!563841 (= (inv!26516 (left!16221 (left!16221 t!3734))) e!1177589)))

(declare-fun b!1842837 () Bool)

(declare-fun res!827932 () Bool)

(assert (=> b!1842837 (=> (not res!827932) (not e!1177589))))

(assert (=> b!1842837 (= res!827932 (and (not (= (left!16221 (left!16221 (left!16221 t!3734))) Empty!6709)) (not (= (right!16551 (left!16221 (left!16221 t!3734))) Empty!6709))))))

(declare-fun b!1842838 () Bool)

(declare-fun res!827933 () Bool)

(assert (=> b!1842838 (=> (not res!827933) (not e!1177589))))

(assert (=> b!1842838 (= res!827933 (= (cheight!6920 (left!16221 (left!16221 t!3734))) (+ (max!0 (height!1025 (left!16221 (left!16221 (left!16221 t!3734)))) (height!1025 (right!16551 (left!16221 (left!16221 t!3734))))) 1)))))

(declare-fun b!1842839 () Bool)

(assert (=> b!1842839 (= e!1177589 (<= 0 (cheight!6920 (left!16221 (left!16221 t!3734)))))))

(assert (= (and d!563841 res!827931) b!1842837))

(assert (= (and b!1842837 res!827932) b!1842838))

(assert (= (and b!1842838 res!827933) b!1842839))

(declare-fun m!2271005 () Bool)

(assert (=> d!563841 m!2271005))

(declare-fun m!2271007 () Bool)

(assert (=> d!563841 m!2271007))

(declare-fun m!2271009 () Bool)

(assert (=> b!1842838 m!2271009))

(declare-fun m!2271011 () Bool)

(assert (=> b!1842838 m!2271011))

(assert (=> b!1842838 m!2271009))

(assert (=> b!1842838 m!2271011))

(declare-fun m!2271013 () Bool)

(assert (=> b!1842838 m!2271013))

(assert (=> b!1842676 d!563841))

(declare-fun d!563843 () Bool)

(assert (=> d!563843 (= (inv!26515 (xs!9585 (left!16221 (left!16221 t!3734)))) (<= (size!16084 (innerList!6769 (xs!9585 (left!16221 (left!16221 t!3734))))) 2147483647))))

(declare-fun bs!408702 () Bool)

(assert (= bs!408702 d!563843))

(declare-fun m!2271015 () Bool)

(assert (=> bs!408702 m!2271015))

(assert (=> b!1842723 d!563843))

(declare-fun d!563845 () Bool)

(declare-fun res!827934 () Bool)

(declare-fun e!1177590 () Bool)

(assert (=> d!563845 (=> (not res!827934) (not e!1177590))))

(assert (=> d!563845 (= res!827934 (<= (size!16084 (list!8253 (xs!9585 (right!16551 (left!16221 t!3734))))) 512))))

(assert (=> d!563845 (= (inv!26517 (right!16551 (left!16221 t!3734))) e!1177590)))

(declare-fun b!1842840 () Bool)

(declare-fun res!827935 () Bool)

(assert (=> b!1842840 (=> (not res!827935) (not e!1177590))))

(assert (=> b!1842840 (= res!827935 (= (csize!13649 (right!16551 (left!16221 t!3734))) (size!16084 (list!8253 (xs!9585 (right!16551 (left!16221 t!3734)))))))))

(declare-fun b!1842841 () Bool)

(assert (=> b!1842841 (= e!1177590 (and (> (csize!13649 (right!16551 (left!16221 t!3734))) 0) (<= (csize!13649 (right!16551 (left!16221 t!3734))) 512)))))

(assert (= (and d!563845 res!827934) b!1842840))

(assert (= (and b!1842840 res!827935) b!1842841))

(assert (=> d!563845 m!2270687))

(assert (=> d!563845 m!2270687))

(declare-fun m!2271017 () Bool)

(assert (=> d!563845 m!2271017))

(assert (=> b!1842840 m!2270687))

(assert (=> b!1842840 m!2270687))

(assert (=> b!1842840 m!2271017))

(assert (=> b!1842685 d!563845))

(declare-fun d!563847 () Bool)

(declare-fun c!300848 () Bool)

(assert (=> d!563847 (= c!300848 ((_ is Nil!20284) lt!714440))))

(declare-fun e!1177593 () (InoxSet T!31878))

(assert (=> d!563847 (= (content!3022 lt!714440) e!1177593)))

(declare-fun b!1842846 () Bool)

(assert (=> b!1842846 (= e!1177593 ((as const (Array T!31878 Bool)) false))))

(declare-fun b!1842847 () Bool)

(assert (=> b!1842847 (= e!1177593 ((_ map or) (store ((as const (Array T!31878 Bool)) false) (h!25685 lt!714440) true) (content!3022 (t!171825 lt!714440))))))

(assert (= (and d!563847 c!300848) b!1842846))

(assert (= (and d!563847 (not c!300848)) b!1842847))

(declare-fun m!2271019 () Bool)

(assert (=> b!1842847 m!2271019))

(declare-fun m!2271021 () Bool)

(assert (=> b!1842847 m!2271021))

(assert (=> d!563735 d!563847))

(declare-fun d!563849 () Bool)

(declare-fun c!300849 () Bool)

(assert (=> d!563849 (= c!300849 ((_ is Nil!20284) (list!8252 (left!16221 (left!16221 t!3734)))))))

(declare-fun e!1177594 () (InoxSet T!31878))

(assert (=> d!563849 (= (content!3022 (list!8252 (left!16221 (left!16221 t!3734)))) e!1177594)))

(declare-fun b!1842848 () Bool)

(assert (=> b!1842848 (= e!1177594 ((as const (Array T!31878 Bool)) false))))

(declare-fun b!1842849 () Bool)

(assert (=> b!1842849 (= e!1177594 ((_ map or) (store ((as const (Array T!31878 Bool)) false) (h!25685 (list!8252 (left!16221 (left!16221 t!3734)))) true) (content!3022 (t!171825 (list!8252 (left!16221 (left!16221 t!3734)))))))))

(assert (= (and d!563849 c!300849) b!1842848))

(assert (= (and d!563849 (not c!300849)) b!1842849))

(declare-fun m!2271023 () Bool)

(assert (=> b!1842849 m!2271023))

(declare-fun m!2271025 () Bool)

(assert (=> b!1842849 m!2271025))

(assert (=> d!563735 d!563849))

(declare-fun d!563851 () Bool)

(declare-fun c!300850 () Bool)

(assert (=> d!563851 (= c!300850 ((_ is Nil!20284) (list!8252 (right!16551 (left!16221 t!3734)))))))

(declare-fun e!1177595 () (InoxSet T!31878))

(assert (=> d!563851 (= (content!3022 (list!8252 (right!16551 (left!16221 t!3734)))) e!1177595)))

(declare-fun b!1842850 () Bool)

(assert (=> b!1842850 (= e!1177595 ((as const (Array T!31878 Bool)) false))))

(declare-fun b!1842851 () Bool)

(assert (=> b!1842851 (= e!1177595 ((_ map or) (store ((as const (Array T!31878 Bool)) false) (h!25685 (list!8252 (right!16551 (left!16221 t!3734)))) true) (content!3022 (t!171825 (list!8252 (right!16551 (left!16221 t!3734)))))))))

(assert (= (and d!563851 c!300850) b!1842850))

(assert (= (and d!563851 (not c!300850)) b!1842851))

(declare-fun m!2271027 () Bool)

(assert (=> b!1842851 m!2271027))

(declare-fun m!2271029 () Bool)

(assert (=> b!1842851 m!2271029))

(assert (=> d!563735 d!563851))

(declare-fun d!563853 () Bool)

(declare-fun res!827936 () Bool)

(declare-fun e!1177596 () Bool)

(assert (=> d!563853 (=> (not res!827936) (not e!1177596))))

(assert (=> d!563853 (= res!827936 (<= (size!16084 (list!8253 (xs!9585 (left!16221 (left!16221 t!3734))))) 512))))

(assert (=> d!563853 (= (inv!26517 (left!16221 (left!16221 t!3734))) e!1177596)))

(declare-fun b!1842852 () Bool)

(declare-fun res!827937 () Bool)

(assert (=> b!1842852 (=> (not res!827937) (not e!1177596))))

(assert (=> b!1842852 (= res!827937 (= (csize!13649 (left!16221 (left!16221 t!3734))) (size!16084 (list!8253 (xs!9585 (left!16221 (left!16221 t!3734)))))))))

(declare-fun b!1842853 () Bool)

(assert (=> b!1842853 (= e!1177596 (and (> (csize!13649 (left!16221 (left!16221 t!3734))) 0) (<= (csize!13649 (left!16221 (left!16221 t!3734))) 512)))))

(assert (= (and d!563853 res!827936) b!1842852))

(assert (= (and b!1842852 res!827937) b!1842853))

(assert (=> d!563853 m!2270679))

(assert (=> d!563853 m!2270679))

(declare-fun m!2271031 () Bool)

(assert (=> d!563853 m!2271031))

(assert (=> b!1842852 m!2270679))

(assert (=> b!1842852 m!2270679))

(assert (=> b!1842852 m!2271031))

(assert (=> b!1842678 d!563853))

(declare-fun d!563855 () Bool)

(declare-fun lt!714469 () Int)

(assert (=> d!563855 (>= lt!714469 0)))

(declare-fun e!1177597 () Int)

(assert (=> d!563855 (= lt!714469 e!1177597)))

(declare-fun c!300851 () Bool)

(assert (=> d!563855 (= c!300851 ((_ is Nil!20284) (innerList!6769 (xs!9585 (right!16551 t!3734)))))))

(assert (=> d!563855 (= (size!16084 (innerList!6769 (xs!9585 (right!16551 t!3734)))) lt!714469)))

(declare-fun b!1842854 () Bool)

(assert (=> b!1842854 (= e!1177597 0)))

(declare-fun b!1842855 () Bool)

(assert (=> b!1842855 (= e!1177597 (+ 1 (size!16084 (t!171825 (innerList!6769 (xs!9585 (right!16551 t!3734)))))))))

(assert (= (and d!563855 c!300851) b!1842854))

(assert (= (and d!563855 (not c!300851)) b!1842855))

(declare-fun m!2271033 () Bool)

(assert (=> b!1842855 m!2271033))

(assert (=> d!563769 d!563855))

(declare-fun b!1842858 () Bool)

(declare-fun res!827939 () Bool)

(declare-fun e!1177598 () Bool)

(assert (=> b!1842858 (=> (not res!827939) (not e!1177598))))

(declare-fun lt!714470 () List!20354)

(assert (=> b!1842858 (= res!827939 (= (size!16084 lt!714470) (+ (size!16084 (t!171825 (list!8252 (left!16221 (right!16551 t!3734))))) (size!16084 (list!8252 (right!16551 (right!16551 t!3734)))))))))

(declare-fun d!563857 () Bool)

(assert (=> d!563857 e!1177598))

(declare-fun res!827938 () Bool)

(assert (=> d!563857 (=> (not res!827938) (not e!1177598))))

(assert (=> d!563857 (= res!827938 (= (content!3022 lt!714470) ((_ map or) (content!3022 (t!171825 (list!8252 (left!16221 (right!16551 t!3734))))) (content!3022 (list!8252 (right!16551 (right!16551 t!3734)))))))))

(declare-fun e!1177599 () List!20354)

(assert (=> d!563857 (= lt!714470 e!1177599)))

(declare-fun c!300852 () Bool)

(assert (=> d!563857 (= c!300852 ((_ is Nil!20284) (t!171825 (list!8252 (left!16221 (right!16551 t!3734))))))))

(assert (=> d!563857 (= (++!5517 (t!171825 (list!8252 (left!16221 (right!16551 t!3734)))) (list!8252 (right!16551 (right!16551 t!3734)))) lt!714470)))

(declare-fun b!1842856 () Bool)

(assert (=> b!1842856 (= e!1177599 (list!8252 (right!16551 (right!16551 t!3734))))))

(declare-fun b!1842859 () Bool)

(assert (=> b!1842859 (= e!1177598 (or (not (= (list!8252 (right!16551 (right!16551 t!3734))) Nil!20284)) (= lt!714470 (t!171825 (list!8252 (left!16221 (right!16551 t!3734)))))))))

(declare-fun b!1842857 () Bool)

(assert (=> b!1842857 (= e!1177599 (Cons!20284 (h!25685 (t!171825 (list!8252 (left!16221 (right!16551 t!3734))))) (++!5517 (t!171825 (t!171825 (list!8252 (left!16221 (right!16551 t!3734))))) (list!8252 (right!16551 (right!16551 t!3734))))))))

(assert (= (and d!563857 c!300852) b!1842856))

(assert (= (and d!563857 (not c!300852)) b!1842857))

(assert (= (and d!563857 res!827938) b!1842858))

(assert (= (and b!1842858 res!827939) b!1842859))

(declare-fun m!2271035 () Bool)

(assert (=> b!1842858 m!2271035))

(declare-fun m!2271037 () Bool)

(assert (=> b!1842858 m!2271037))

(assert (=> b!1842858 m!2270573))

(assert (=> b!1842858 m!2270759))

(declare-fun m!2271039 () Bool)

(assert (=> d!563857 m!2271039))

(declare-fun m!2271041 () Bool)

(assert (=> d!563857 m!2271041))

(assert (=> d!563857 m!2270573))

(assert (=> d!563857 m!2270765))

(assert (=> b!1842857 m!2270573))

(declare-fun m!2271043 () Bool)

(assert (=> b!1842857 m!2271043))

(assert (=> b!1842703 d!563857))

(declare-fun bs!408703 () Bool)

(declare-fun d!563859 () Bool)

(assert (= bs!408703 (and d!563859 d!563721)))

(declare-fun lambda!72337 () Int)

(assert (=> bs!408703 (= lambda!72337 lambda!72329)))

(declare-fun bs!408704 () Bool)

(assert (= bs!408704 (and d!563859 d!563725)))

(assert (=> bs!408704 (= lambda!72337 lambda!72330)))

(declare-fun bs!408705 () Bool)

(assert (= bs!408705 (and d!563859 d!563729)))

(assert (=> bs!408705 (= lambda!72337 lambda!72331)))

(assert (=> d!563859 true))

(assert (=> d!563859 (< (dynLambda!10086 order!13085 p!1470) (dynLambda!10086 order!13085 lambda!72337))))

(assert (=> d!563859 (= (exists!663 (++!5517 (list!8252 (left!16221 (left!16221 t!3734))) (list!8252 (right!16551 (left!16221 t!3734)))) p!1470) (not (forall!4362 (++!5517 (list!8252 (left!16221 (left!16221 t!3734))) (list!8252 (right!16551 (left!16221 t!3734)))) lambda!72337)))))

(declare-fun bs!408706 () Bool)

(assert (= bs!408706 d!563859))

(assert (=> bs!408706 m!2270567))

(declare-fun m!2271045 () Bool)

(assert (=> bs!408706 m!2271045))

(assert (=> d!563763 d!563859))

(assert (=> d!563763 d!563735))

(declare-fun bs!408707 () Bool)

(declare-fun d!563861 () Bool)

(assert (= bs!408707 (and d!563861 d!563721)))

(declare-fun lambda!72338 () Int)

(assert (=> bs!408707 (= lambda!72338 lambda!72329)))

(declare-fun bs!408708 () Bool)

(assert (= bs!408708 (and d!563861 d!563725)))

(assert (=> bs!408708 (= lambda!72338 lambda!72330)))

(declare-fun bs!408709 () Bool)

(assert (= bs!408709 (and d!563861 d!563729)))

(assert (=> bs!408709 (= lambda!72338 lambda!72331)))

(declare-fun bs!408710 () Bool)

(assert (= bs!408710 (and d!563861 d!563859)))

(assert (=> bs!408710 (= lambda!72338 lambda!72337)))

(assert (=> d!563861 true))

(assert (=> d!563861 (< (dynLambda!10086 order!13085 p!1470) (dynLambda!10086 order!13085 lambda!72338))))

(assert (=> d!563861 (= (exists!663 (list!8252 (left!16221 (left!16221 t!3734))) p!1470) (not (forall!4362 (list!8252 (left!16221 (left!16221 t!3734))) lambda!72338)))))

(declare-fun bs!408711 () Bool)

(assert (= bs!408711 d!563861))

(assert (=> bs!408711 m!2270527))

(declare-fun m!2271047 () Bool)

(assert (=> bs!408711 m!2271047))

(assert (=> d!563763 d!563861))

(declare-fun d!563863 () Bool)

(declare-fun e!1177600 () Bool)

(assert (=> d!563863 (= (exists!663 (++!5517 (list!8252 (left!16221 (left!16221 t!3734))) (list!8252 (right!16551 (left!16221 t!3734)))) p!1470) e!1177600)))

(declare-fun res!827940 () Bool)

(assert (=> d!563863 (=> res!827940 e!1177600)))

(assert (=> d!563863 (= res!827940 (exists!663 (list!8252 (left!16221 (left!16221 t!3734))) p!1470))))

(assert (=> d!563863 true))

(declare-fun _$80!48 () Unit!34995)

(assert (=> d!563863 (= (choose!11592 (list!8252 (left!16221 (left!16221 t!3734))) (list!8252 (right!16551 (left!16221 t!3734))) p!1470) _$80!48)))

(declare-fun b!1842860 () Bool)

(assert (=> b!1842860 (= e!1177600 (exists!663 (list!8252 (right!16551 (left!16221 t!3734))) p!1470))))

(assert (= (and d!563863 (not res!827940)) b!1842860))

(assert (=> d!563863 m!2270527))

(assert (=> d!563863 m!2270529))

(assert (=> d!563863 m!2270567))

(assert (=> d!563863 m!2270567))

(assert (=> d!563863 m!2270729))

(assert (=> d!563863 m!2270527))

(assert (=> d!563863 m!2270731))

(assert (=> b!1842860 m!2270529))

(assert (=> b!1842860 m!2270721))

(assert (=> d!563763 d!563863))

(declare-fun d!563865 () Bool)

(assert (=> d!563865 (= (max!0 (height!1025 (left!16221 (right!16551 t!3734))) (height!1025 (right!16551 (right!16551 t!3734)))) (ite (< (height!1025 (left!16221 (right!16551 t!3734))) (height!1025 (right!16551 (right!16551 t!3734)))) (height!1025 (right!16551 (right!16551 t!3734))) (height!1025 (left!16221 (right!16551 t!3734)))))))

(assert (=> b!1842674 d!563865))

(declare-fun d!563867 () Bool)

(assert (=> d!563867 (= (height!1025 (left!16221 (right!16551 t!3734))) (ite ((_ is Empty!6709) (left!16221 (right!16551 t!3734))) 0 (ite ((_ is Leaf!9800) (left!16221 (right!16551 t!3734))) 1 (cheight!6920 (left!16221 (right!16551 t!3734))))))))

(assert (=> b!1842674 d!563867))

(declare-fun d!563869 () Bool)

(assert (=> d!563869 (= (height!1025 (right!16551 (right!16551 t!3734))) (ite ((_ is Empty!6709) (right!16551 (right!16551 t!3734))) 0 (ite ((_ is Leaf!9800) (right!16551 (right!16551 t!3734))) 1 (cheight!6920 (right!16551 (right!16551 t!3734))))))))

(assert (=> b!1842674 d!563869))

(declare-fun b!1842863 () Bool)

(declare-fun res!827942 () Bool)

(declare-fun e!1177601 () Bool)

(assert (=> b!1842863 (=> (not res!827942) (not e!1177601))))

(declare-fun lt!714471 () List!20354)

(assert (=> b!1842863 (= res!827942 (= (size!16084 lt!714471) (+ (size!16084 (t!171825 (list!8252 (left!16221 t!3734)))) (size!16084 (list!8252 (right!16551 t!3734))))))))

(declare-fun d!563871 () Bool)

(assert (=> d!563871 e!1177601))

(declare-fun res!827941 () Bool)

(assert (=> d!563871 (=> (not res!827941) (not e!1177601))))

(assert (=> d!563871 (= res!827941 (= (content!3022 lt!714471) ((_ map or) (content!3022 (t!171825 (list!8252 (left!16221 t!3734)))) (content!3022 (list!8252 (right!16551 t!3734))))))))

(declare-fun e!1177602 () List!20354)

(assert (=> d!563871 (= lt!714471 e!1177602)))

(declare-fun c!300853 () Bool)

(assert (=> d!563871 (= c!300853 ((_ is Nil!20284) (t!171825 (list!8252 (left!16221 t!3734)))))))

(assert (=> d!563871 (= (++!5517 (t!171825 (list!8252 (left!16221 t!3734))) (list!8252 (right!16551 t!3734))) lt!714471)))

(declare-fun b!1842861 () Bool)

(assert (=> b!1842861 (= e!1177602 (list!8252 (right!16551 t!3734)))))

(declare-fun b!1842864 () Bool)

(assert (=> b!1842864 (= e!1177601 (or (not (= (list!8252 (right!16551 t!3734)) Nil!20284)) (= lt!714471 (t!171825 (list!8252 (left!16221 t!3734))))))))

(declare-fun b!1842862 () Bool)

(assert (=> b!1842862 (= e!1177602 (Cons!20284 (h!25685 (t!171825 (list!8252 (left!16221 t!3734)))) (++!5517 (t!171825 (t!171825 (list!8252 (left!16221 t!3734)))) (list!8252 (right!16551 t!3734)))))))

(assert (= (and d!563871 c!300853) b!1842861))

(assert (= (and d!563871 (not c!300853)) b!1842862))

(assert (= (and d!563871 res!827941) b!1842863))

(assert (= (and b!1842863 res!827942) b!1842864))

(declare-fun m!2271049 () Bool)

(assert (=> b!1842863 m!2271049))

(declare-fun m!2271051 () Bool)

(assert (=> b!1842863 m!2271051))

(assert (=> b!1842863 m!2270501))

(assert (=> b!1842863 m!2270643))

(declare-fun m!2271053 () Bool)

(assert (=> d!563871 m!2271053))

(declare-fun m!2271055 () Bool)

(assert (=> d!563871 m!2271055))

(assert (=> d!563871 m!2270501))

(assert (=> d!563871 m!2270649))

(assert (=> b!1842862 m!2270501))

(declare-fun m!2271057 () Bool)

(assert (=> b!1842862 m!2271057))

(assert (=> b!1842641 d!563871))

(declare-fun d!563873 () Bool)

(declare-fun c!300854 () Bool)

(assert (=> d!563873 (= c!300854 ((_ is Node!6709) (left!16221 (left!16221 (right!16551 t!3734)))))))

(declare-fun e!1177603 () Bool)

(assert (=> d!563873 (= (inv!26514 (left!16221 (left!16221 (right!16551 t!3734)))) e!1177603)))

(declare-fun b!1842865 () Bool)

(assert (=> b!1842865 (= e!1177603 (inv!26516 (left!16221 (left!16221 (right!16551 t!3734)))))))

(declare-fun b!1842866 () Bool)

(declare-fun e!1177604 () Bool)

(assert (=> b!1842866 (= e!1177603 e!1177604)))

(declare-fun res!827943 () Bool)

(assert (=> b!1842866 (= res!827943 (not ((_ is Leaf!9800) (left!16221 (left!16221 (right!16551 t!3734))))))))

(assert (=> b!1842866 (=> res!827943 e!1177604)))

(declare-fun b!1842867 () Bool)

(assert (=> b!1842867 (= e!1177604 (inv!26517 (left!16221 (left!16221 (right!16551 t!3734)))))))

(assert (= (and d!563873 c!300854) b!1842865))

(assert (= (and d!563873 (not c!300854)) b!1842866))

(assert (= (and b!1842866 (not res!827943)) b!1842867))

(declare-fun m!2271059 () Bool)

(assert (=> b!1842865 m!2271059))

(declare-fun m!2271061 () Bool)

(assert (=> b!1842867 m!2271061))

(assert (=> b!1842731 d!563873))

(declare-fun d!563875 () Bool)

(declare-fun c!300855 () Bool)

(assert (=> d!563875 (= c!300855 ((_ is Node!6709) (right!16551 (left!16221 (right!16551 t!3734)))))))

(declare-fun e!1177605 () Bool)

(assert (=> d!563875 (= (inv!26514 (right!16551 (left!16221 (right!16551 t!3734)))) e!1177605)))

(declare-fun b!1842868 () Bool)

(assert (=> b!1842868 (= e!1177605 (inv!26516 (right!16551 (left!16221 (right!16551 t!3734)))))))

(declare-fun b!1842869 () Bool)

(declare-fun e!1177606 () Bool)

(assert (=> b!1842869 (= e!1177605 e!1177606)))

(declare-fun res!827944 () Bool)

(assert (=> b!1842869 (= res!827944 (not ((_ is Leaf!9800) (right!16551 (left!16221 (right!16551 t!3734))))))))

(assert (=> b!1842869 (=> res!827944 e!1177606)))

(declare-fun b!1842870 () Bool)

(assert (=> b!1842870 (= e!1177606 (inv!26517 (right!16551 (left!16221 (right!16551 t!3734)))))))

(assert (= (and d!563875 c!300855) b!1842868))

(assert (= (and d!563875 (not c!300855)) b!1842869))

(assert (= (and b!1842869 (not res!827944)) b!1842870))

(declare-fun m!2271063 () Bool)

(assert (=> b!1842868 m!2271063))

(declare-fun m!2271065 () Bool)

(assert (=> b!1842870 m!2271065))

(assert (=> b!1842731 d!563875))

(declare-fun d!563877 () Bool)

(declare-fun c!300856 () Bool)

(assert (=> d!563877 (= c!300856 ((_ is Nil!20284) lt!714452))))

(declare-fun e!1177607 () (InoxSet T!31878))

(assert (=> d!563877 (= (content!3022 lt!714452) e!1177607)))

(declare-fun b!1842871 () Bool)

(assert (=> b!1842871 (= e!1177607 ((as const (Array T!31878 Bool)) false))))

(declare-fun b!1842872 () Bool)

(assert (=> b!1842872 (= e!1177607 ((_ map or) (store ((as const (Array T!31878 Bool)) false) (h!25685 lt!714452) true) (content!3022 (t!171825 lt!714452))))))

(assert (= (and d!563877 c!300856) b!1842871))

(assert (= (and d!563877 (not c!300856)) b!1842872))

(declare-fun m!2271067 () Bool)

(assert (=> b!1842872 m!2271067))

(declare-fun m!2271069 () Bool)

(assert (=> b!1842872 m!2271069))

(assert (=> d!563775 d!563877))

(declare-fun d!563879 () Bool)

(declare-fun c!300857 () Bool)

(assert (=> d!563879 (= c!300857 ((_ is Nil!20284) (list!8252 (left!16221 (right!16551 t!3734)))))))

(declare-fun e!1177608 () (InoxSet T!31878))

(assert (=> d!563879 (= (content!3022 (list!8252 (left!16221 (right!16551 t!3734)))) e!1177608)))

(declare-fun b!1842873 () Bool)

(assert (=> b!1842873 (= e!1177608 ((as const (Array T!31878 Bool)) false))))

(declare-fun b!1842874 () Bool)

(assert (=> b!1842874 (= e!1177608 ((_ map or) (store ((as const (Array T!31878 Bool)) false) (h!25685 (list!8252 (left!16221 (right!16551 t!3734)))) true) (content!3022 (t!171825 (list!8252 (left!16221 (right!16551 t!3734)))))))))

(assert (= (and d!563879 c!300857) b!1842873))

(assert (= (and d!563879 (not c!300857)) b!1842874))

(declare-fun m!2271071 () Bool)

(assert (=> b!1842874 m!2271071))

(assert (=> b!1842874 m!2271041))

(assert (=> d!563775 d!563879))

(declare-fun d!563881 () Bool)

(declare-fun c!300858 () Bool)

(assert (=> d!563881 (= c!300858 ((_ is Nil!20284) (list!8252 (right!16551 (right!16551 t!3734)))))))

(declare-fun e!1177609 () (InoxSet T!31878))

(assert (=> d!563881 (= (content!3022 (list!8252 (right!16551 (right!16551 t!3734)))) e!1177609)))

(declare-fun b!1842875 () Bool)

(assert (=> b!1842875 (= e!1177609 ((as const (Array T!31878 Bool)) false))))

(declare-fun b!1842876 () Bool)

(assert (=> b!1842876 (= e!1177609 ((_ map or) (store ((as const (Array T!31878 Bool)) false) (h!25685 (list!8252 (right!16551 (right!16551 t!3734)))) true) (content!3022 (t!171825 (list!8252 (right!16551 (right!16551 t!3734)))))))))

(assert (= (and d!563881 c!300858) b!1842875))

(assert (= (and d!563881 (not c!300858)) b!1842876))

(declare-fun m!2271073 () Bool)

(assert (=> b!1842876 m!2271073))

(declare-fun m!2271075 () Bool)

(assert (=> b!1842876 m!2271075))

(assert (=> d!563775 d!563881))

(declare-fun d!563883 () Bool)

(declare-fun res!827945 () Bool)

(declare-fun e!1177610 () Bool)

(assert (=> d!563883 (=> (not res!827945) (not e!1177610))))

(assert (=> d!563883 (= res!827945 (= (csize!13648 (right!16551 (left!16221 t!3734))) (+ (size!16085 (left!16221 (right!16551 (left!16221 t!3734)))) (size!16085 (right!16551 (right!16551 (left!16221 t!3734)))))))))

(assert (=> d!563883 (= (inv!26516 (right!16551 (left!16221 t!3734))) e!1177610)))

(declare-fun b!1842877 () Bool)

(declare-fun res!827946 () Bool)

(assert (=> b!1842877 (=> (not res!827946) (not e!1177610))))

(assert (=> b!1842877 (= res!827946 (and (not (= (left!16221 (right!16551 (left!16221 t!3734))) Empty!6709)) (not (= (right!16551 (right!16551 (left!16221 t!3734))) Empty!6709))))))

(declare-fun b!1842878 () Bool)

(declare-fun res!827947 () Bool)

(assert (=> b!1842878 (=> (not res!827947) (not e!1177610))))

(assert (=> b!1842878 (= res!827947 (= (cheight!6920 (right!16551 (left!16221 t!3734))) (+ (max!0 (height!1025 (left!16221 (right!16551 (left!16221 t!3734)))) (height!1025 (right!16551 (right!16551 (left!16221 t!3734))))) 1)))))

(declare-fun b!1842879 () Bool)

(assert (=> b!1842879 (= e!1177610 (<= 0 (cheight!6920 (right!16551 (left!16221 t!3734)))))))

(assert (= (and d!563883 res!827945) b!1842877))

(assert (= (and b!1842877 res!827946) b!1842878))

(assert (= (and b!1842878 res!827947) b!1842879))

(declare-fun m!2271077 () Bool)

(assert (=> d!563883 m!2271077))

(declare-fun m!2271079 () Bool)

(assert (=> d!563883 m!2271079))

(declare-fun m!2271081 () Bool)

(assert (=> b!1842878 m!2271081))

(declare-fun m!2271083 () Bool)

(assert (=> b!1842878 m!2271083))

(assert (=> b!1842878 m!2271081))

(assert (=> b!1842878 m!2271083))

(declare-fun m!2271085 () Bool)

(assert (=> b!1842878 m!2271085))

(assert (=> b!1842683 d!563883))

(declare-fun b!1842882 () Bool)

(declare-fun res!827949 () Bool)

(declare-fun e!1177611 () Bool)

(assert (=> b!1842882 (=> (not res!827949) (not e!1177611))))

(declare-fun lt!714472 () List!20354)

(assert (=> b!1842882 (= res!827949 (= (size!16084 lt!714472) (+ (size!16084 (list!8252 (left!16221 (right!16551 (right!16551 t!3734))))) (size!16084 (list!8252 (right!16551 (right!16551 (right!16551 t!3734))))))))))

(declare-fun d!563885 () Bool)

(assert (=> d!563885 e!1177611))

(declare-fun res!827948 () Bool)

(assert (=> d!563885 (=> (not res!827948) (not e!1177611))))

(assert (=> d!563885 (= res!827948 (= (content!3022 lt!714472) ((_ map or) (content!3022 (list!8252 (left!16221 (right!16551 (right!16551 t!3734))))) (content!3022 (list!8252 (right!16551 (right!16551 (right!16551 t!3734))))))))))

(declare-fun e!1177612 () List!20354)

(assert (=> d!563885 (= lt!714472 e!1177612)))

(declare-fun c!300859 () Bool)

(assert (=> d!563885 (= c!300859 ((_ is Nil!20284) (list!8252 (left!16221 (right!16551 (right!16551 t!3734))))))))

(assert (=> d!563885 (= (++!5517 (list!8252 (left!16221 (right!16551 (right!16551 t!3734)))) (list!8252 (right!16551 (right!16551 (right!16551 t!3734))))) lt!714472)))

(declare-fun b!1842880 () Bool)

(assert (=> b!1842880 (= e!1177612 (list!8252 (right!16551 (right!16551 (right!16551 t!3734)))))))

(declare-fun b!1842883 () Bool)

(assert (=> b!1842883 (= e!1177611 (or (not (= (list!8252 (right!16551 (right!16551 (right!16551 t!3734)))) Nil!20284)) (= lt!714472 (list!8252 (left!16221 (right!16551 (right!16551 t!3734)))))))))

(declare-fun b!1842881 () Bool)

(assert (=> b!1842881 (= e!1177612 (Cons!20284 (h!25685 (list!8252 (left!16221 (right!16551 (right!16551 t!3734))))) (++!5517 (t!171825 (list!8252 (left!16221 (right!16551 (right!16551 t!3734))))) (list!8252 (right!16551 (right!16551 (right!16551 t!3734)))))))))

(assert (= (and d!563885 c!300859) b!1842880))

(assert (= (and d!563885 (not c!300859)) b!1842881))

(assert (= (and d!563885 res!827948) b!1842882))

(assert (= (and b!1842882 res!827949) b!1842883))

(declare-fun m!2271087 () Bool)

(assert (=> b!1842882 m!2271087))

(assert (=> b!1842882 m!2270779))

(declare-fun m!2271089 () Bool)

(assert (=> b!1842882 m!2271089))

(assert (=> b!1842882 m!2270781))

(declare-fun m!2271091 () Bool)

(assert (=> b!1842882 m!2271091))

(declare-fun m!2271093 () Bool)

(assert (=> d!563885 m!2271093))

(assert (=> d!563885 m!2270779))

(declare-fun m!2271095 () Bool)

(assert (=> d!563885 m!2271095))

(assert (=> d!563885 m!2270781))

(declare-fun m!2271097 () Bool)

(assert (=> d!563885 m!2271097))

(assert (=> b!1842881 m!2270781))

(declare-fun m!2271099 () Bool)

(assert (=> b!1842881 m!2271099))

(assert (=> b!1842715 d!563885))

(declare-fun b!1842885 () Bool)

(declare-fun e!1177613 () List!20354)

(declare-fun e!1177614 () List!20354)

(assert (=> b!1842885 (= e!1177613 e!1177614)))

(declare-fun c!300861 () Bool)

(assert (=> b!1842885 (= c!300861 ((_ is Leaf!9800) (left!16221 (right!16551 (right!16551 t!3734)))))))

(declare-fun d!563887 () Bool)

(declare-fun c!300860 () Bool)

(assert (=> d!563887 (= c!300860 ((_ is Empty!6709) (left!16221 (right!16551 (right!16551 t!3734)))))))

(assert (=> d!563887 (= (list!8252 (left!16221 (right!16551 (right!16551 t!3734)))) e!1177613)))

(declare-fun b!1842884 () Bool)

(assert (=> b!1842884 (= e!1177613 Nil!20284)))

(declare-fun b!1842887 () Bool)

(assert (=> b!1842887 (= e!1177614 (++!5517 (list!8252 (left!16221 (left!16221 (right!16551 (right!16551 t!3734))))) (list!8252 (right!16551 (left!16221 (right!16551 (right!16551 t!3734)))))))))

(declare-fun b!1842886 () Bool)

(assert (=> b!1842886 (= e!1177614 (list!8253 (xs!9585 (left!16221 (right!16551 (right!16551 t!3734))))))))

(assert (= (and d!563887 c!300860) b!1842884))

(assert (= (and d!563887 (not c!300860)) b!1842885))

(assert (= (and b!1842885 c!300861) b!1842886))

(assert (= (and b!1842885 (not c!300861)) b!1842887))

(declare-fun m!2271101 () Bool)

(assert (=> b!1842887 m!2271101))

(declare-fun m!2271103 () Bool)

(assert (=> b!1842887 m!2271103))

(assert (=> b!1842887 m!2271101))

(assert (=> b!1842887 m!2271103))

(declare-fun m!2271105 () Bool)

(assert (=> b!1842887 m!2271105))

(declare-fun m!2271107 () Bool)

(assert (=> b!1842886 m!2271107))

(assert (=> b!1842715 d!563887))

(declare-fun b!1842889 () Bool)

(declare-fun e!1177615 () List!20354)

(declare-fun e!1177616 () List!20354)

(assert (=> b!1842889 (= e!1177615 e!1177616)))

(declare-fun c!300863 () Bool)

(assert (=> b!1842889 (= c!300863 ((_ is Leaf!9800) (right!16551 (right!16551 (right!16551 t!3734)))))))

(declare-fun d!563889 () Bool)

(declare-fun c!300862 () Bool)

(assert (=> d!563889 (= c!300862 ((_ is Empty!6709) (right!16551 (right!16551 (right!16551 t!3734)))))))

(assert (=> d!563889 (= (list!8252 (right!16551 (right!16551 (right!16551 t!3734)))) e!1177615)))

(declare-fun b!1842888 () Bool)

(assert (=> b!1842888 (= e!1177615 Nil!20284)))

(declare-fun b!1842891 () Bool)

(assert (=> b!1842891 (= e!1177616 (++!5517 (list!8252 (left!16221 (right!16551 (right!16551 (right!16551 t!3734))))) (list!8252 (right!16551 (right!16551 (right!16551 (right!16551 t!3734)))))))))

(declare-fun b!1842890 () Bool)

(assert (=> b!1842890 (= e!1177616 (list!8253 (xs!9585 (right!16551 (right!16551 (right!16551 t!3734))))))))

(assert (= (and d!563889 c!300862) b!1842888))

(assert (= (and d!563889 (not c!300862)) b!1842889))

(assert (= (and b!1842889 c!300863) b!1842890))

(assert (= (and b!1842889 (not c!300863)) b!1842891))

(declare-fun m!2271109 () Bool)

(assert (=> b!1842891 m!2271109))

(declare-fun m!2271111 () Bool)

(assert (=> b!1842891 m!2271111))

(assert (=> b!1842891 m!2271109))

(assert (=> b!1842891 m!2271111))

(declare-fun m!2271113 () Bool)

(assert (=> b!1842891 m!2271113))

(declare-fun m!2271115 () Bool)

(assert (=> b!1842890 m!2271115))

(assert (=> b!1842715 d!563889))

(declare-fun d!563891 () Bool)

(declare-fun e!1177617 () Bool)

(assert (=> d!563891 (= (exists!663 (++!5517 (list!8252 (left!16221 (right!16551 (left!16221 t!3734)))) (list!8252 (right!16551 (right!16551 (left!16221 t!3734))))) p!1470) e!1177617)))

(declare-fun res!827950 () Bool)

(assert (=> d!563891 (=> res!827950 e!1177617)))

(assert (=> d!563891 (= res!827950 (exists!663 (list!8252 (left!16221 (right!16551 (left!16221 t!3734)))) p!1470))))

(declare-fun lt!714473 () Unit!34995)

(assert (=> d!563891 (= lt!714473 (choose!11592 (list!8252 (left!16221 (right!16551 (left!16221 t!3734)))) (list!8252 (right!16551 (right!16551 (left!16221 t!3734)))) p!1470))))

(assert (=> d!563891 (= (lemmaExistsConcat!6 (list!8252 (left!16221 (right!16551 (left!16221 t!3734)))) (list!8252 (right!16551 (right!16551 (left!16221 t!3734)))) p!1470) lt!714473)))

(declare-fun b!1842892 () Bool)

(assert (=> b!1842892 (= e!1177617 (exists!663 (list!8252 (right!16551 (right!16551 (left!16221 t!3734)))) p!1470))))

(assert (= (and d!563891 (not res!827950)) b!1842892))

(assert (=> d!563891 m!2270681))

(assert (=> d!563891 m!2270683))

(assert (=> d!563891 m!2270685))

(assert (=> d!563891 m!2270685))

(declare-fun m!2271117 () Bool)

(assert (=> d!563891 m!2271117))

(assert (=> d!563891 m!2270681))

(declare-fun m!2271119 () Bool)

(assert (=> d!563891 m!2271119))

(assert (=> d!563891 m!2270681))

(assert (=> d!563891 m!2270683))

(declare-fun m!2271121 () Bool)

(assert (=> d!563891 m!2271121))

(assert (=> b!1842892 m!2270683))

(declare-fun m!2271123 () Bool)

(assert (=> b!1842892 m!2271123))

(assert (=> b!1842688 d!563891))

(declare-fun b!1842894 () Bool)

(declare-fun e!1177618 () List!20354)

(declare-fun e!1177619 () List!20354)

(assert (=> b!1842894 (= e!1177618 e!1177619)))

(declare-fun c!300865 () Bool)

(assert (=> b!1842894 (= c!300865 ((_ is Leaf!9800) (left!16221 (right!16551 (left!16221 t!3734)))))))

(declare-fun d!563893 () Bool)

(declare-fun c!300864 () Bool)

(assert (=> d!563893 (= c!300864 ((_ is Empty!6709) (left!16221 (right!16551 (left!16221 t!3734)))))))

(assert (=> d!563893 (= (list!8252 (left!16221 (right!16551 (left!16221 t!3734)))) e!1177618)))

(declare-fun b!1842893 () Bool)

(assert (=> b!1842893 (= e!1177618 Nil!20284)))

(declare-fun b!1842896 () Bool)

(assert (=> b!1842896 (= e!1177619 (++!5517 (list!8252 (left!16221 (left!16221 (right!16551 (left!16221 t!3734))))) (list!8252 (right!16551 (left!16221 (right!16551 (left!16221 t!3734)))))))))

(declare-fun b!1842895 () Bool)

(assert (=> b!1842895 (= e!1177619 (list!8253 (xs!9585 (left!16221 (right!16551 (left!16221 t!3734))))))))

(assert (= (and d!563893 c!300864) b!1842893))

(assert (= (and d!563893 (not c!300864)) b!1842894))

(assert (= (and b!1842894 c!300865) b!1842895))

(assert (= (and b!1842894 (not c!300865)) b!1842896))

(declare-fun m!2271125 () Bool)

(assert (=> b!1842896 m!2271125))

(declare-fun m!2271127 () Bool)

(assert (=> b!1842896 m!2271127))

(assert (=> b!1842896 m!2271125))

(assert (=> b!1842896 m!2271127))

(declare-fun m!2271129 () Bool)

(assert (=> b!1842896 m!2271129))

(declare-fun m!2271131 () Bool)

(assert (=> b!1842895 m!2271131))

(assert (=> b!1842688 d!563893))

(declare-fun b!1842898 () Bool)

(declare-fun e!1177620 () List!20354)

(declare-fun e!1177621 () List!20354)

(assert (=> b!1842898 (= e!1177620 e!1177621)))

(declare-fun c!300867 () Bool)

(assert (=> b!1842898 (= c!300867 ((_ is Leaf!9800) (right!16551 (right!16551 (left!16221 t!3734)))))))

(declare-fun d!563895 () Bool)

(declare-fun c!300866 () Bool)

(assert (=> d!563895 (= c!300866 ((_ is Empty!6709) (right!16551 (right!16551 (left!16221 t!3734)))))))

(assert (=> d!563895 (= (list!8252 (right!16551 (right!16551 (left!16221 t!3734)))) e!1177620)))

(declare-fun b!1842897 () Bool)

(assert (=> b!1842897 (= e!1177620 Nil!20284)))

(declare-fun b!1842900 () Bool)

(assert (=> b!1842900 (= e!1177621 (++!5517 (list!8252 (left!16221 (right!16551 (right!16551 (left!16221 t!3734))))) (list!8252 (right!16551 (right!16551 (right!16551 (left!16221 t!3734)))))))))

(declare-fun b!1842899 () Bool)

(assert (=> b!1842899 (= e!1177621 (list!8253 (xs!9585 (right!16551 (right!16551 (left!16221 t!3734))))))))

(assert (= (and d!563895 c!300866) b!1842897))

(assert (= (and d!563895 (not c!300866)) b!1842898))

(assert (= (and b!1842898 c!300867) b!1842899))

(assert (= (and b!1842898 (not c!300867)) b!1842900))

(declare-fun m!2271133 () Bool)

(assert (=> b!1842900 m!2271133))

(declare-fun m!2271135 () Bool)

(assert (=> b!1842900 m!2271135))

(assert (=> b!1842900 m!2271133))

(assert (=> b!1842900 m!2271135))

(declare-fun m!2271137 () Bool)

(assert (=> b!1842900 m!2271137))

(declare-fun m!2271139 () Bool)

(assert (=> b!1842899 m!2271139))

(assert (=> b!1842688 d!563895))

(declare-fun b!1842902 () Bool)

(declare-fun e!1177623 () Bool)

(assert (=> b!1842902 (= e!1177623 (exists!662 (xs!9585 (left!16221 (right!16551 (left!16221 t!3734)))) p!1470))))

(declare-fun b!1842903 () Bool)

(declare-fun e!1177624 () Bool)

(assert (=> b!1842903 (= e!1177623 e!1177624)))

(declare-fun lt!714474 () Unit!34995)

(assert (=> b!1842903 (= lt!714474 (lemmaExistsConcat!6 (list!8252 (left!16221 (left!16221 (right!16551 (left!16221 t!3734))))) (list!8252 (right!16551 (left!16221 (right!16551 (left!16221 t!3734))))) p!1470))))

(declare-fun res!827952 () Bool)

(assert (=> b!1842903 (= res!827952 (exists!661 (left!16221 (left!16221 (right!16551 (left!16221 t!3734)))) p!1470))))

(assert (=> b!1842903 (=> res!827952 e!1177624)))

(declare-fun d!563897 () Bool)

(declare-fun lt!714475 () Bool)

(assert (=> d!563897 (= lt!714475 (exists!663 (list!8252 (left!16221 (right!16551 (left!16221 t!3734)))) p!1470))))

(declare-fun e!1177622 () Bool)

(assert (=> d!563897 (= lt!714475 e!1177622)))

(declare-fun res!827951 () Bool)

(assert (=> d!563897 (=> (not res!827951) (not e!1177622))))

(assert (=> d!563897 (= res!827951 (not ((_ is Empty!6709) (left!16221 (right!16551 (left!16221 t!3734))))))))

(assert (=> d!563897 (= (exists!661 (left!16221 (right!16551 (left!16221 t!3734))) p!1470) lt!714475)))

(declare-fun b!1842901 () Bool)

(assert (=> b!1842901 (= e!1177622 e!1177623)))

(declare-fun c!300868 () Bool)

(assert (=> b!1842901 (= c!300868 ((_ is Leaf!9800) (left!16221 (right!16551 (left!16221 t!3734)))))))

(declare-fun b!1842904 () Bool)

(assert (=> b!1842904 (= e!1177624 (exists!661 (right!16551 (left!16221 (right!16551 (left!16221 t!3734)))) p!1470))))

(assert (= (and d!563897 res!827951) b!1842901))

(assert (= (and b!1842901 c!300868) b!1842902))

(assert (= (and b!1842901 (not c!300868)) b!1842903))

(assert (= (and b!1842903 (not res!827952)) b!1842904))

(declare-fun m!2271141 () Bool)

(assert (=> b!1842902 m!2271141))

(assert (=> b!1842903 m!2271125))

(assert (=> b!1842903 m!2271127))

(assert (=> b!1842903 m!2271125))

(assert (=> b!1842903 m!2271127))

(declare-fun m!2271143 () Bool)

(assert (=> b!1842903 m!2271143))

(declare-fun m!2271145 () Bool)

(assert (=> b!1842903 m!2271145))

(assert (=> d!563897 m!2270681))

(assert (=> d!563897 m!2270681))

(assert (=> d!563897 m!2271119))

(declare-fun m!2271147 () Bool)

(assert (=> b!1842904 m!2271147))

(assert (=> b!1842688 d!563897))

(declare-fun b!1842907 () Bool)

(declare-fun res!827954 () Bool)

(declare-fun e!1177625 () Bool)

(assert (=> b!1842907 (=> (not res!827954) (not e!1177625))))

(declare-fun lt!714476 () List!20354)

(assert (=> b!1842907 (= res!827954 (= (size!16084 lt!714476) (+ (size!16084 (list!8252 (left!16221 (left!16221 (left!16221 t!3734))))) (size!16084 (list!8252 (right!16551 (left!16221 (left!16221 t!3734))))))))))

(declare-fun d!563899 () Bool)

(assert (=> d!563899 e!1177625))

(declare-fun res!827953 () Bool)

(assert (=> d!563899 (=> (not res!827953) (not e!1177625))))

(assert (=> d!563899 (= res!827953 (= (content!3022 lt!714476) ((_ map or) (content!3022 (list!8252 (left!16221 (left!16221 (left!16221 t!3734))))) (content!3022 (list!8252 (right!16551 (left!16221 (left!16221 t!3734))))))))))

(declare-fun e!1177626 () List!20354)

(assert (=> d!563899 (= lt!714476 e!1177626)))

(declare-fun c!300869 () Bool)

(assert (=> d!563899 (= c!300869 ((_ is Nil!20284) (list!8252 (left!16221 (left!16221 (left!16221 t!3734))))))))

(assert (=> d!563899 (= (++!5517 (list!8252 (left!16221 (left!16221 (left!16221 t!3734)))) (list!8252 (right!16551 (left!16221 (left!16221 t!3734))))) lt!714476)))

(declare-fun b!1842905 () Bool)

(assert (=> b!1842905 (= e!1177626 (list!8252 (right!16551 (left!16221 (left!16221 t!3734)))))))

(declare-fun b!1842908 () Bool)

(assert (=> b!1842908 (= e!1177625 (or (not (= (list!8252 (right!16551 (left!16221 (left!16221 t!3734)))) Nil!20284)) (= lt!714476 (list!8252 (left!16221 (left!16221 (left!16221 t!3734)))))))))

(declare-fun b!1842906 () Bool)

(assert (=> b!1842906 (= e!1177626 (Cons!20284 (h!25685 (list!8252 (left!16221 (left!16221 (left!16221 t!3734))))) (++!5517 (t!171825 (list!8252 (left!16221 (left!16221 (left!16221 t!3734))))) (list!8252 (right!16551 (left!16221 (left!16221 t!3734)))))))))

(assert (= (and d!563899 c!300869) b!1842905))

(assert (= (and d!563899 (not c!300869)) b!1842906))

(assert (= (and d!563899 res!827953) b!1842907))

(assert (= (and b!1842907 res!827954) b!1842908))

(declare-fun m!2271149 () Bool)

(assert (=> b!1842907 m!2271149))

(assert (=> b!1842907 m!2270673))

(declare-fun m!2271151 () Bool)

(assert (=> b!1842907 m!2271151))

(assert (=> b!1842907 m!2270675))

(declare-fun m!2271153 () Bool)

(assert (=> b!1842907 m!2271153))

(declare-fun m!2271155 () Bool)

(assert (=> d!563899 m!2271155))

(assert (=> d!563899 m!2270673))

(declare-fun m!2271157 () Bool)

(assert (=> d!563899 m!2271157))

(assert (=> d!563899 m!2270675))

(declare-fun m!2271159 () Bool)

(assert (=> d!563899 m!2271159))

(assert (=> b!1842906 m!2270675))

(declare-fun m!2271161 () Bool)

(assert (=> b!1842906 m!2271161))

(assert (=> b!1842660 d!563899))

(declare-fun b!1842910 () Bool)

(declare-fun e!1177627 () List!20354)

(declare-fun e!1177628 () List!20354)

(assert (=> b!1842910 (= e!1177627 e!1177628)))

(declare-fun c!300871 () Bool)

(assert (=> b!1842910 (= c!300871 ((_ is Leaf!9800) (left!16221 (left!16221 (left!16221 t!3734)))))))

(declare-fun d!563901 () Bool)

(declare-fun c!300870 () Bool)

(assert (=> d!563901 (= c!300870 ((_ is Empty!6709) (left!16221 (left!16221 (left!16221 t!3734)))))))

(assert (=> d!563901 (= (list!8252 (left!16221 (left!16221 (left!16221 t!3734)))) e!1177627)))

(declare-fun b!1842909 () Bool)

(assert (=> b!1842909 (= e!1177627 Nil!20284)))

(declare-fun b!1842912 () Bool)

(assert (=> b!1842912 (= e!1177628 (++!5517 (list!8252 (left!16221 (left!16221 (left!16221 (left!16221 t!3734))))) (list!8252 (right!16551 (left!16221 (left!16221 (left!16221 t!3734)))))))))

(declare-fun b!1842911 () Bool)

(assert (=> b!1842911 (= e!1177628 (list!8253 (xs!9585 (left!16221 (left!16221 (left!16221 t!3734))))))))

(assert (= (and d!563901 c!300870) b!1842909))

(assert (= (and d!563901 (not c!300870)) b!1842910))

(assert (= (and b!1842910 c!300871) b!1842911))

(assert (= (and b!1842910 (not c!300871)) b!1842912))

(declare-fun m!2271163 () Bool)

(assert (=> b!1842912 m!2271163))

(declare-fun m!2271165 () Bool)

(assert (=> b!1842912 m!2271165))

(assert (=> b!1842912 m!2271163))

(assert (=> b!1842912 m!2271165))

(declare-fun m!2271167 () Bool)

(assert (=> b!1842912 m!2271167))

(declare-fun m!2271169 () Bool)

(assert (=> b!1842911 m!2271169))

(assert (=> b!1842660 d!563901))

(declare-fun b!1842914 () Bool)

(declare-fun e!1177629 () List!20354)

(declare-fun e!1177630 () List!20354)

(assert (=> b!1842914 (= e!1177629 e!1177630)))

(declare-fun c!300873 () Bool)

(assert (=> b!1842914 (= c!300873 ((_ is Leaf!9800) (right!16551 (left!16221 (left!16221 t!3734)))))))

(declare-fun d!563903 () Bool)

(declare-fun c!300872 () Bool)

(assert (=> d!563903 (= c!300872 ((_ is Empty!6709) (right!16551 (left!16221 (left!16221 t!3734)))))))

(assert (=> d!563903 (= (list!8252 (right!16551 (left!16221 (left!16221 t!3734)))) e!1177629)))

(declare-fun b!1842913 () Bool)

(assert (=> b!1842913 (= e!1177629 Nil!20284)))

(declare-fun b!1842916 () Bool)

(assert (=> b!1842916 (= e!1177630 (++!5517 (list!8252 (left!16221 (right!16551 (left!16221 (left!16221 t!3734))))) (list!8252 (right!16551 (right!16551 (left!16221 (left!16221 t!3734)))))))))

(declare-fun b!1842915 () Bool)

(assert (=> b!1842915 (= e!1177630 (list!8253 (xs!9585 (right!16551 (left!16221 (left!16221 t!3734))))))))

(assert (= (and d!563903 c!300872) b!1842913))

(assert (= (and d!563903 (not c!300872)) b!1842914))

(assert (= (and b!1842914 c!300873) b!1842915))

(assert (= (and b!1842914 (not c!300873)) b!1842916))

(declare-fun m!2271171 () Bool)

(assert (=> b!1842916 m!2271171))

(declare-fun m!2271173 () Bool)

(assert (=> b!1842916 m!2271173))

(assert (=> b!1842916 m!2271171))

(assert (=> b!1842916 m!2271173))

(declare-fun m!2271175 () Bool)

(assert (=> b!1842916 m!2271175))

(declare-fun m!2271177 () Bool)

(assert (=> b!1842915 m!2271177))

(assert (=> b!1842660 d!563903))

(declare-fun d!563905 () Bool)

(declare-fun lt!714479 () Int)

(assert (=> d!563905 (= lt!714479 (size!16084 (list!8252 (left!16221 (right!16551 t!3734)))))))

(assert (=> d!563905 (= lt!714479 (ite ((_ is Empty!6709) (left!16221 (right!16551 t!3734))) 0 (ite ((_ is Leaf!9800) (left!16221 (right!16551 t!3734))) (csize!13649 (left!16221 (right!16551 t!3734))) (csize!13648 (left!16221 (right!16551 t!3734))))))))

(assert (=> d!563905 (= (size!16085 (left!16221 (right!16551 t!3734))) lt!714479)))

(declare-fun bs!408712 () Bool)

(assert (= bs!408712 d!563905))

(assert (=> bs!408712 m!2270571))

(assert (=> bs!408712 m!2270571))

(assert (=> bs!408712 m!2270757))

(assert (=> d!563751 d!563905))

(declare-fun d!563907 () Bool)

(declare-fun lt!714480 () Int)

(assert (=> d!563907 (= lt!714480 (size!16084 (list!8252 (right!16551 (right!16551 t!3734)))))))

(assert (=> d!563907 (= lt!714480 (ite ((_ is Empty!6709) (right!16551 (right!16551 t!3734))) 0 (ite ((_ is Leaf!9800) (right!16551 (right!16551 t!3734))) (csize!13649 (right!16551 (right!16551 t!3734))) (csize!13648 (right!16551 (right!16551 t!3734))))))))

(assert (=> d!563907 (= (size!16085 (right!16551 (right!16551 t!3734))) lt!714480)))

(declare-fun bs!408713 () Bool)

(assert (= bs!408713 d!563907))

(assert (=> bs!408713 m!2270573))

(assert (=> bs!408713 m!2270573))

(assert (=> bs!408713 m!2270759))

(assert (=> d!563751 d!563907))

(declare-fun d!563909 () Bool)

(assert (=> d!563909 (= (max!0 (height!1025 (left!16221 t!3734)) (height!1025 (right!16551 t!3734))) (ite (< (height!1025 (left!16221 t!3734)) (height!1025 (right!16551 t!3734))) (height!1025 (right!16551 t!3734)) (height!1025 (left!16221 t!3734))))))

(assert (=> b!1842700 d!563909))

(declare-fun d!563911 () Bool)

(assert (=> d!563911 (= (height!1025 (left!16221 t!3734)) (ite ((_ is Empty!6709) (left!16221 t!3734)) 0 (ite ((_ is Leaf!9800) (left!16221 t!3734)) 1 (cheight!6920 (left!16221 t!3734)))))))

(assert (=> b!1842700 d!563911))

(assert (=> b!1842700 d!563707))

(declare-fun d!563913 () Bool)

(declare-fun c!300874 () Bool)

(assert (=> d!563913 (= c!300874 ((_ is Node!6709) (left!16221 (right!16551 (left!16221 t!3734)))))))

(declare-fun e!1177631 () Bool)

(assert (=> d!563913 (= (inv!26514 (left!16221 (right!16551 (left!16221 t!3734)))) e!1177631)))

(declare-fun b!1842917 () Bool)

(assert (=> b!1842917 (= e!1177631 (inv!26516 (left!16221 (right!16551 (left!16221 t!3734)))))))

(declare-fun b!1842918 () Bool)

(declare-fun e!1177632 () Bool)

(assert (=> b!1842918 (= e!1177631 e!1177632)))

(declare-fun res!827955 () Bool)

(assert (=> b!1842918 (= res!827955 (not ((_ is Leaf!9800) (left!16221 (right!16551 (left!16221 t!3734))))))))

(assert (=> b!1842918 (=> res!827955 e!1177632)))

(declare-fun b!1842919 () Bool)

(assert (=> b!1842919 (= e!1177632 (inv!26517 (left!16221 (right!16551 (left!16221 t!3734)))))))

(assert (= (and d!563913 c!300874) b!1842917))

(assert (= (and d!563913 (not c!300874)) b!1842918))

(assert (= (and b!1842918 (not res!827955)) b!1842919))

(declare-fun m!2271179 () Bool)

(assert (=> b!1842917 m!2271179))

(declare-fun m!2271181 () Bool)

(assert (=> b!1842919 m!2271181))

(assert (=> b!1842725 d!563913))

(declare-fun d!563915 () Bool)

(declare-fun c!300875 () Bool)

(assert (=> d!563915 (= c!300875 ((_ is Node!6709) (right!16551 (right!16551 (left!16221 t!3734)))))))

(declare-fun e!1177633 () Bool)

(assert (=> d!563915 (= (inv!26514 (right!16551 (right!16551 (left!16221 t!3734)))) e!1177633)))

(declare-fun b!1842920 () Bool)

(assert (=> b!1842920 (= e!1177633 (inv!26516 (right!16551 (right!16551 (left!16221 t!3734)))))))

(declare-fun b!1842921 () Bool)

(declare-fun e!1177634 () Bool)

(assert (=> b!1842921 (= e!1177633 e!1177634)))

(declare-fun res!827956 () Bool)

(assert (=> b!1842921 (= res!827956 (not ((_ is Leaf!9800) (right!16551 (right!16551 (left!16221 t!3734))))))))

(assert (=> b!1842921 (=> res!827956 e!1177634)))

(declare-fun b!1842922 () Bool)

(assert (=> b!1842922 (= e!1177634 (inv!26517 (right!16551 (right!16551 (left!16221 t!3734)))))))

(assert (= (and d!563915 c!300875) b!1842920))

(assert (= (and d!563915 (not c!300875)) b!1842921))

(assert (= (and b!1842921 (not res!827956)) b!1842922))

(declare-fun m!2271183 () Bool)

(assert (=> b!1842920 m!2271183))

(declare-fun m!2271185 () Bool)

(assert (=> b!1842922 m!2271185))

(assert (=> b!1842725 d!563915))

(declare-fun d!563917 () Bool)

(declare-fun lt!714481 () Int)

(assert (=> d!563917 (>= lt!714481 0)))

(declare-fun e!1177635 () Int)

(assert (=> d!563917 (= lt!714481 e!1177635)))

(declare-fun c!300876 () Bool)

(assert (=> d!563917 (= c!300876 ((_ is Nil!20284) (list!8253 (xs!9585 (right!16551 t!3734)))))))

(assert (=> d!563917 (= (size!16084 (list!8253 (xs!9585 (right!16551 t!3734)))) lt!714481)))

(declare-fun b!1842923 () Bool)

(assert (=> b!1842923 (= e!1177635 0)))

(declare-fun b!1842924 () Bool)

(assert (=> b!1842924 (= e!1177635 (+ 1 (size!16084 (t!171825 (list!8253 (xs!9585 (right!16551 t!3734)))))))))

(assert (= (and d!563917 c!300876) b!1842923))

(assert (= (and d!563917 (not c!300876)) b!1842924))

(declare-fun m!2271187 () Bool)

(assert (=> b!1842924 m!2271187))

(assert (=> b!1842690 d!563917))

(assert (=> b!1842690 d!563753))

(declare-fun d!563919 () Bool)

(assert (=> d!563919 (= (max!0 (height!1025 (left!16221 (left!16221 t!3734))) (height!1025 (right!16551 (left!16221 t!3734)))) (ite (< (height!1025 (left!16221 (left!16221 t!3734))) (height!1025 (right!16551 (left!16221 t!3734)))) (height!1025 (right!16551 (left!16221 t!3734))) (height!1025 (left!16221 (left!16221 t!3734)))))))

(assert (=> b!1842630 d!563919))

(declare-fun d!563921 () Bool)

(assert (=> d!563921 (= (height!1025 (left!16221 (left!16221 t!3734))) (ite ((_ is Empty!6709) (left!16221 (left!16221 t!3734))) 0 (ite ((_ is Leaf!9800) (left!16221 (left!16221 t!3734))) 1 (cheight!6920 (left!16221 (left!16221 t!3734))))))))

(assert (=> b!1842630 d!563921))

(declare-fun d!563923 () Bool)

(assert (=> d!563923 (= (height!1025 (right!16551 (left!16221 t!3734))) (ite ((_ is Empty!6709) (right!16551 (left!16221 t!3734))) 0 (ite ((_ is Leaf!9800) (right!16551 (left!16221 t!3734))) 1 (cheight!6920 (right!16551 (left!16221 t!3734))))))))

(assert (=> b!1842630 d!563923))

(assert (=> b!1842604 d!563755))

(assert (=> b!1842604 d!563757))

(declare-fun d!563925 () Bool)

(declare-fun lt!714482 () Bool)

(assert (=> d!563925 (= lt!714482 (exists!663 (list!8253 (xs!9585 (left!16221 (left!16221 t!3734)))) p!1470))))

(assert (=> d!563925 (= lt!714482 (choose!11594 (xs!9585 (left!16221 (left!16221 t!3734))) p!1470))))

(assert (=> d!563925 (= (exists!662 (xs!9585 (left!16221 (left!16221 t!3734))) p!1470) lt!714482)))

(declare-fun bs!408714 () Bool)

(assert (= bs!408714 d!563925))

(assert (=> bs!408714 m!2270679))

(assert (=> bs!408714 m!2270679))

(declare-fun m!2271189 () Bool)

(assert (=> bs!408714 m!2271189))

(declare-fun m!2271191 () Bool)

(assert (=> bs!408714 m!2271191))

(assert (=> b!1842696 d!563925))

(declare-fun d!563927 () Bool)

(declare-fun lt!714483 () Int)

(assert (=> d!563927 (= lt!714483 (size!16084 (list!8252 (left!16221 (left!16221 t!3734)))))))

(assert (=> d!563927 (= lt!714483 (ite ((_ is Empty!6709) (left!16221 (left!16221 t!3734))) 0 (ite ((_ is Leaf!9800) (left!16221 (left!16221 t!3734))) (csize!13649 (left!16221 (left!16221 t!3734))) (csize!13648 (left!16221 (left!16221 t!3734))))))))

(assert (=> d!563927 (= (size!16085 (left!16221 (left!16221 t!3734))) lt!714483)))

(declare-fun bs!408715 () Bool)

(assert (= bs!408715 d!563927))

(assert (=> bs!408715 m!2270527))

(assert (=> bs!408715 m!2270527))

(assert (=> bs!408715 m!2270661))

(assert (=> d!563723 d!563927))

(declare-fun d!563929 () Bool)

(declare-fun lt!714484 () Int)

(assert (=> d!563929 (= lt!714484 (size!16084 (list!8252 (right!16551 (left!16221 t!3734)))))))

(assert (=> d!563929 (= lt!714484 (ite ((_ is Empty!6709) (right!16551 (left!16221 t!3734))) 0 (ite ((_ is Leaf!9800) (right!16551 (left!16221 t!3734))) (csize!13649 (right!16551 (left!16221 t!3734))) (csize!13648 (right!16551 (left!16221 t!3734))))))))

(assert (=> d!563929 (= (size!16085 (right!16551 (left!16221 t!3734))) lt!714484)))

(declare-fun bs!408716 () Bool)

(assert (= bs!408716 d!563929))

(assert (=> bs!408716 m!2270529))

(assert (=> bs!408716 m!2270529))

(assert (=> bs!408716 m!2270663))

(assert (=> d!563723 d!563929))

(assert (=> d!563761 d!563917))

(assert (=> d!563761 d!563753))

(declare-fun d!563931 () Bool)

(assert (=> d!563931 (= (inv!26515 (xs!9585 (right!16551 (right!16551 t!3734)))) (<= (size!16084 (innerList!6769 (xs!9585 (right!16551 (right!16551 t!3734))))) 2147483647))))

(declare-fun bs!408717 () Bool)

(assert (= bs!408717 d!563931))

(declare-fun m!2271193 () Bool)

(assert (=> bs!408717 m!2271193))

(assert (=> b!1842735 d!563931))

(declare-fun d!563933 () Bool)

(declare-fun lt!714485 () Int)

(assert (=> d!563933 (>= lt!714485 0)))

(declare-fun e!1177636 () Int)

(assert (=> d!563933 (= lt!714485 e!1177636)))

(declare-fun c!300877 () Bool)

(assert (=> d!563933 (= c!300877 ((_ is Nil!20284) lt!714440))))

(assert (=> d!563933 (= (size!16084 lt!714440) lt!714485)))

(declare-fun b!1842925 () Bool)

(assert (=> b!1842925 (= e!1177636 0)))

(declare-fun b!1842926 () Bool)

(assert (=> b!1842926 (= e!1177636 (+ 1 (size!16084 (t!171825 lt!714440))))))

(assert (= (and d!563933 c!300877) b!1842925))

(assert (= (and d!563933 (not c!300877)) b!1842926))

(declare-fun m!2271195 () Bool)

(assert (=> b!1842926 m!2271195))

(assert (=> b!1842655 d!563933))

(declare-fun d!563935 () Bool)

(declare-fun lt!714486 () Int)

(assert (=> d!563935 (>= lt!714486 0)))

(declare-fun e!1177637 () Int)

(assert (=> d!563935 (= lt!714486 e!1177637)))

(declare-fun c!300878 () Bool)

(assert (=> d!563935 (= c!300878 ((_ is Nil!20284) (list!8252 (left!16221 (left!16221 t!3734)))))))

(assert (=> d!563935 (= (size!16084 (list!8252 (left!16221 (left!16221 t!3734)))) lt!714486)))

(declare-fun b!1842927 () Bool)

(assert (=> b!1842927 (= e!1177637 0)))

(declare-fun b!1842928 () Bool)

(assert (=> b!1842928 (= e!1177637 (+ 1 (size!16084 (t!171825 (list!8252 (left!16221 (left!16221 t!3734)))))))))

(assert (= (and d!563935 c!300878) b!1842927))

(assert (= (and d!563935 (not c!300878)) b!1842928))

(declare-fun m!2271197 () Bool)

(assert (=> b!1842928 m!2271197))

(assert (=> b!1842655 d!563935))

(declare-fun d!563937 () Bool)

(declare-fun lt!714487 () Int)

(assert (=> d!563937 (>= lt!714487 0)))

(declare-fun e!1177638 () Int)

(assert (=> d!563937 (= lt!714487 e!1177638)))

(declare-fun c!300879 () Bool)

(assert (=> d!563937 (= c!300879 ((_ is Nil!20284) (list!8252 (right!16551 (left!16221 t!3734)))))))

(assert (=> d!563937 (= (size!16084 (list!8252 (right!16551 (left!16221 t!3734)))) lt!714487)))

(declare-fun b!1842929 () Bool)

(assert (=> b!1842929 (= e!1177638 0)))

(declare-fun b!1842930 () Bool)

(assert (=> b!1842930 (= e!1177638 (+ 1 (size!16084 (t!171825 (list!8252 (right!16551 (left!16221 t!3734)))))))))

(assert (= (and d!563937 c!300879) b!1842929))

(assert (= (and d!563937 (not c!300879)) b!1842930))

(declare-fun m!2271199 () Bool)

(assert (=> b!1842930 m!2271199))

(assert (=> b!1842655 d!563937))

(declare-fun d!563939 () Bool)

(declare-fun lt!714488 () Int)

(assert (=> d!563939 (= lt!714488 (size!16084 (list!8252 (left!16221 t!3734))))))

(assert (=> d!563939 (= lt!714488 (ite ((_ is Empty!6709) (left!16221 t!3734)) 0 (ite ((_ is Leaf!9800) (left!16221 t!3734)) (csize!13649 (left!16221 t!3734)) (csize!13648 (left!16221 t!3734)))))))

(assert (=> d!563939 (= (size!16085 (left!16221 t!3734)) lt!714488)))

(declare-fun bs!408718 () Bool)

(assert (= bs!408718 d!563939))

(assert (=> bs!408718 m!2270499))

(assert (=> bs!408718 m!2270499))

(assert (=> bs!408718 m!2270641))

(assert (=> d!563771 d!563939))

(declare-fun d!563941 () Bool)

(declare-fun lt!714489 () Int)

(assert (=> d!563941 (= lt!714489 (size!16084 (list!8252 (right!16551 t!3734))))))

(assert (=> d!563941 (= lt!714489 (ite ((_ is Empty!6709) (right!16551 t!3734)) 0 (ite ((_ is Leaf!9800) (right!16551 t!3734)) (csize!13649 (right!16551 t!3734)) (csize!13648 (right!16551 t!3734)))))))

(assert (=> d!563941 (= (size!16085 (right!16551 t!3734)) lt!714489)))

(declare-fun bs!408719 () Bool)

(assert (= bs!408719 d!563941))

(assert (=> bs!408719 m!2270501))

(assert (=> bs!408719 m!2270501))

(assert (=> bs!408719 m!2270643))

(assert (=> d!563771 d!563941))

(declare-fun b!1842932 () Bool)

(declare-fun e!1177640 () Bool)

(assert (=> b!1842932 (= e!1177640 (exists!662 (xs!9585 (right!16551 (left!16221 (left!16221 t!3734)))) p!1470))))

(declare-fun b!1842933 () Bool)

(declare-fun e!1177641 () Bool)

(assert (=> b!1842933 (= e!1177640 e!1177641)))

(declare-fun lt!714490 () Unit!34995)

(assert (=> b!1842933 (= lt!714490 (lemmaExistsConcat!6 (list!8252 (left!16221 (right!16551 (left!16221 (left!16221 t!3734))))) (list!8252 (right!16551 (right!16551 (left!16221 (left!16221 t!3734))))) p!1470))))

(declare-fun res!827958 () Bool)

(assert (=> b!1842933 (= res!827958 (exists!661 (left!16221 (right!16551 (left!16221 (left!16221 t!3734)))) p!1470))))

(assert (=> b!1842933 (=> res!827958 e!1177641)))

(declare-fun d!563943 () Bool)

(declare-fun lt!714491 () Bool)

(assert (=> d!563943 (= lt!714491 (exists!663 (list!8252 (right!16551 (left!16221 (left!16221 t!3734)))) p!1470))))

(declare-fun e!1177639 () Bool)

(assert (=> d!563943 (= lt!714491 e!1177639)))

(declare-fun res!827957 () Bool)

(assert (=> d!563943 (=> (not res!827957) (not e!1177639))))

(assert (=> d!563943 (= res!827957 (not ((_ is Empty!6709) (right!16551 (left!16221 (left!16221 t!3734))))))))

(assert (=> d!563943 (= (exists!661 (right!16551 (left!16221 (left!16221 t!3734))) p!1470) lt!714491)))

(declare-fun b!1842931 () Bool)

(assert (=> b!1842931 (= e!1177639 e!1177640)))

(declare-fun c!300880 () Bool)

(assert (=> b!1842931 (= c!300880 ((_ is Leaf!9800) (right!16551 (left!16221 (left!16221 t!3734)))))))

(declare-fun b!1842934 () Bool)

(assert (=> b!1842934 (= e!1177641 (exists!661 (right!16551 (right!16551 (left!16221 (left!16221 t!3734)))) p!1470))))

(assert (= (and d!563943 res!827957) b!1842931))

(assert (= (and b!1842931 c!300880) b!1842932))

(assert (= (and b!1842931 (not c!300880)) b!1842933))

(assert (= (and b!1842933 (not res!827958)) b!1842934))

(declare-fun m!2271201 () Bool)

(assert (=> b!1842932 m!2271201))

(assert (=> b!1842933 m!2271171))

(assert (=> b!1842933 m!2271173))

(assert (=> b!1842933 m!2271171))

(assert (=> b!1842933 m!2271173))

(declare-fun m!2271203 () Bool)

(assert (=> b!1842933 m!2271203))

(declare-fun m!2271205 () Bool)

(assert (=> b!1842933 m!2271205))

(assert (=> d!563943 m!2270675))

(assert (=> d!563943 m!2270675))

(declare-fun m!2271207 () Bool)

(assert (=> d!563943 m!2271207))

(declare-fun m!2271209 () Bool)

(assert (=> b!1842934 m!2271209))

(assert (=> b!1842698 d!563943))

(declare-fun d!563945 () Bool)

(assert (=> d!563945 (= (list!8253 (xs!9585 (right!16551 (left!16221 t!3734)))) (innerList!6769 (xs!9585 (right!16551 (left!16221 t!3734)))))))

(assert (=> b!1842663 d!563945))

(declare-fun d!563947 () Bool)

(assert (=> d!563947 (= (list!8253 (xs!9585 (left!16221 (right!16551 t!3734)))) (innerList!6769 (xs!9585 (left!16221 (right!16551 t!3734)))))))

(assert (=> b!1842708 d!563947))

(declare-fun d!563949 () Bool)

(declare-fun c!300881 () Bool)

(assert (=> d!563949 (= c!300881 ((_ is Node!6709) (left!16221 (left!16221 (left!16221 t!3734)))))))

(declare-fun e!1177642 () Bool)

(assert (=> d!563949 (= (inv!26514 (left!16221 (left!16221 (left!16221 t!3734)))) e!1177642)))

(declare-fun b!1842935 () Bool)

(assert (=> b!1842935 (= e!1177642 (inv!26516 (left!16221 (left!16221 (left!16221 t!3734)))))))

(declare-fun b!1842936 () Bool)

(declare-fun e!1177643 () Bool)

(assert (=> b!1842936 (= e!1177642 e!1177643)))

(declare-fun res!827959 () Bool)

(assert (=> b!1842936 (= res!827959 (not ((_ is Leaf!9800) (left!16221 (left!16221 (left!16221 t!3734))))))))

(assert (=> b!1842936 (=> res!827959 e!1177643)))

(declare-fun b!1842937 () Bool)

(assert (=> b!1842937 (= e!1177643 (inv!26517 (left!16221 (left!16221 (left!16221 t!3734)))))))

(assert (= (and d!563949 c!300881) b!1842935))

(assert (= (and d!563949 (not c!300881)) b!1842936))

(assert (= (and b!1842936 (not res!827959)) b!1842937))

(declare-fun m!2271211 () Bool)

(assert (=> b!1842935 m!2271211))

(declare-fun m!2271213 () Bool)

(assert (=> b!1842937 m!2271213))

(assert (=> b!1842722 d!563949))

(declare-fun d!563951 () Bool)

(declare-fun c!300882 () Bool)

(assert (=> d!563951 (= c!300882 ((_ is Node!6709) (right!16551 (left!16221 (left!16221 t!3734)))))))

(declare-fun e!1177644 () Bool)

(assert (=> d!563951 (= (inv!26514 (right!16551 (left!16221 (left!16221 t!3734)))) e!1177644)))

(declare-fun b!1842938 () Bool)

(assert (=> b!1842938 (= e!1177644 (inv!26516 (right!16551 (left!16221 (left!16221 t!3734)))))))

(declare-fun b!1842939 () Bool)

(declare-fun e!1177645 () Bool)

(assert (=> b!1842939 (= e!1177644 e!1177645)))

(declare-fun res!827960 () Bool)

(assert (=> b!1842939 (= res!827960 (not ((_ is Leaf!9800) (right!16551 (left!16221 (left!16221 t!3734))))))))

(assert (=> b!1842939 (=> res!827960 e!1177645)))

(declare-fun b!1842940 () Bool)

(assert (=> b!1842940 (= e!1177645 (inv!26517 (right!16551 (left!16221 (left!16221 t!3734)))))))

(assert (= (and d!563951 c!300882) b!1842938))

(assert (= (and d!563951 (not c!300882)) b!1842939))

(assert (= (and b!1842939 (not res!827960)) b!1842940))

(declare-fun m!2271215 () Bool)

(assert (=> b!1842938 m!2271215))

(declare-fun m!2271217 () Bool)

(assert (=> b!1842940 m!2271217))

(assert (=> b!1842722 d!563951))

(assert (=> d!563731 d!563725))

(assert (=> d!563731 d!563727))

(assert (=> d!563731 d!563729))

(declare-fun d!563953 () Bool)

(declare-fun lt!714492 () Int)

(assert (=> d!563953 (>= lt!714492 0)))

(declare-fun e!1177646 () Int)

(assert (=> d!563953 (= lt!714492 e!1177646)))

(declare-fun c!300883 () Bool)

(assert (=> d!563953 (= c!300883 ((_ is Nil!20284) lt!714452))))

(assert (=> d!563953 (= (size!16084 lt!714452) lt!714492)))

(declare-fun b!1842941 () Bool)

(assert (=> b!1842941 (= e!1177646 0)))

(declare-fun b!1842942 () Bool)

(assert (=> b!1842942 (= e!1177646 (+ 1 (size!16084 (t!171825 lt!714452))))))

(assert (= (and d!563953 c!300883) b!1842941))

(assert (= (and d!563953 (not c!300883)) b!1842942))

(declare-fun m!2271219 () Bool)

(assert (=> b!1842942 m!2271219))

(assert (=> b!1842704 d!563953))

(declare-fun d!563955 () Bool)

(declare-fun lt!714493 () Int)

(assert (=> d!563955 (>= lt!714493 0)))

(declare-fun e!1177647 () Int)

(assert (=> d!563955 (= lt!714493 e!1177647)))

(declare-fun c!300884 () Bool)

(assert (=> d!563955 (= c!300884 ((_ is Nil!20284) (list!8252 (left!16221 (right!16551 t!3734)))))))

(assert (=> d!563955 (= (size!16084 (list!8252 (left!16221 (right!16551 t!3734)))) lt!714493)))

(declare-fun b!1842943 () Bool)

(assert (=> b!1842943 (= e!1177647 0)))

(declare-fun b!1842944 () Bool)

(assert (=> b!1842944 (= e!1177647 (+ 1 (size!16084 (t!171825 (list!8252 (left!16221 (right!16551 t!3734)))))))))

(assert (= (and d!563955 c!300884) b!1842943))

(assert (= (and d!563955 (not c!300884)) b!1842944))

(assert (=> b!1842944 m!2271037))

(assert (=> b!1842704 d!563955))

(declare-fun d!563957 () Bool)

(declare-fun lt!714494 () Int)

(assert (=> d!563957 (>= lt!714494 0)))

(declare-fun e!1177648 () Int)

(assert (=> d!563957 (= lt!714494 e!1177648)))

(declare-fun c!300885 () Bool)

(assert (=> d!563957 (= c!300885 ((_ is Nil!20284) (list!8252 (right!16551 (right!16551 t!3734)))))))

(assert (=> d!563957 (= (size!16084 (list!8252 (right!16551 (right!16551 t!3734)))) lt!714494)))

(declare-fun b!1842945 () Bool)

(assert (=> b!1842945 (= e!1177648 0)))

(declare-fun b!1842946 () Bool)

(assert (=> b!1842946 (= e!1177648 (+ 1 (size!16084 (t!171825 (list!8252 (right!16551 (right!16551 t!3734)))))))))

(assert (= (and d!563957 c!300885) b!1842945))

(assert (= (and d!563957 (not c!300885)) b!1842946))

(declare-fun m!2271221 () Bool)

(assert (=> b!1842946 m!2271221))

(assert (=> b!1842704 d!563957))

(declare-fun d!563959 () Bool)

(declare-fun lt!714495 () Int)

(assert (=> d!563959 (>= lt!714495 0)))

(declare-fun e!1177649 () Int)

(assert (=> d!563959 (= lt!714495 e!1177649)))

(declare-fun c!300886 () Bool)

(assert (=> d!563959 (= c!300886 ((_ is Nil!20284) lt!714439))))

(assert (=> d!563959 (= (size!16084 lt!714439) lt!714495)))

(declare-fun b!1842947 () Bool)

(assert (=> b!1842947 (= e!1177649 0)))

(declare-fun b!1842948 () Bool)

(assert (=> b!1842948 (= e!1177649 (+ 1 (size!16084 (t!171825 lt!714439))))))

(assert (= (and d!563959 c!300886) b!1842947))

(assert (= (and d!563959 (not c!300886)) b!1842948))

(declare-fun m!2271223 () Bool)

(assert (=> b!1842948 m!2271223))

(assert (=> b!1842642 d!563959))

(declare-fun d!563961 () Bool)

(declare-fun lt!714496 () Int)

(assert (=> d!563961 (>= lt!714496 0)))

(declare-fun e!1177650 () Int)

(assert (=> d!563961 (= lt!714496 e!1177650)))

(declare-fun c!300887 () Bool)

(assert (=> d!563961 (= c!300887 ((_ is Nil!20284) (list!8252 (left!16221 t!3734))))))

(assert (=> d!563961 (= (size!16084 (list!8252 (left!16221 t!3734))) lt!714496)))

(declare-fun b!1842949 () Bool)

(assert (=> b!1842949 (= e!1177650 0)))

(declare-fun b!1842950 () Bool)

(assert (=> b!1842950 (= e!1177650 (+ 1 (size!16084 (t!171825 (list!8252 (left!16221 t!3734))))))))

(assert (= (and d!563961 c!300887) b!1842949))

(assert (= (and d!563961 (not c!300887)) b!1842950))

(assert (=> b!1842950 m!2271051))

(assert (=> b!1842642 d!563961))

(declare-fun d!563963 () Bool)

(declare-fun lt!714497 () Int)

(assert (=> d!563963 (>= lt!714497 0)))

(declare-fun e!1177651 () Int)

(assert (=> d!563963 (= lt!714497 e!1177651)))

(declare-fun c!300888 () Bool)

(assert (=> d!563963 (= c!300888 ((_ is Nil!20284) (list!8252 (right!16551 t!3734))))))

(assert (=> d!563963 (= (size!16084 (list!8252 (right!16551 t!3734))) lt!714497)))

(declare-fun b!1842951 () Bool)

(assert (=> b!1842951 (= e!1177651 0)))

(declare-fun b!1842952 () Bool)

(assert (=> b!1842952 (= e!1177651 (+ 1 (size!16084 (t!171825 (list!8252 (right!16551 t!3734))))))))

(assert (= (and d!563963 c!300888) b!1842951))

(assert (= (and d!563963 (not c!300888)) b!1842952))

(declare-fun m!2271225 () Bool)

(assert (=> b!1842952 m!2271225))

(assert (=> b!1842642 d!563963))

(declare-fun d!563965 () Bool)

(declare-fun lt!714498 () Bool)

(assert (=> d!563965 (= lt!714498 (exists!663 (list!8253 (xs!9585 (right!16551 (left!16221 t!3734)))) p!1470))))

(assert (=> d!563965 (= lt!714498 (choose!11594 (xs!9585 (right!16551 (left!16221 t!3734))) p!1470))))

(assert (=> d!563965 (= (exists!662 (xs!9585 (right!16551 (left!16221 t!3734))) p!1470) lt!714498)))

(declare-fun bs!408720 () Bool)

(assert (= bs!408720 d!563965))

(assert (=> bs!408720 m!2270687))

(assert (=> bs!408720 m!2270687))

(declare-fun m!2271227 () Bool)

(assert (=> bs!408720 m!2271227))

(declare-fun m!2271229 () Bool)

(assert (=> bs!408720 m!2271229))

(assert (=> b!1842687 d!563965))

(declare-fun d!563967 () Bool)

(assert (=> d!563967 (= (inv!26515 (xs!9585 (left!16221 (right!16551 t!3734)))) (<= (size!16084 (innerList!6769 (xs!9585 (left!16221 (right!16551 t!3734))))) 2147483647))))

(declare-fun bs!408721 () Bool)

(assert (= bs!408721 d!563967))

(declare-fun m!2271231 () Bool)

(assert (=> bs!408721 m!2271231))

(assert (=> b!1842732 d!563967))

(assert (=> b!1842646 d!563721))

(declare-fun d!563969 () Bool)

(declare-fun lt!714499 () Int)

(assert (=> d!563969 (>= lt!714499 0)))

(declare-fun e!1177652 () Int)

(assert (=> d!563969 (= lt!714499 e!1177652)))

(declare-fun c!300889 () Bool)

(assert (=> d!563969 (= c!300889 ((_ is Nil!20284) (list!8253 (xs!9585 (left!16221 t!3734)))))))

(assert (=> d!563969 (= (size!16084 (list!8253 (xs!9585 (left!16221 t!3734)))) lt!714499)))

(declare-fun b!1842953 () Bool)

(assert (=> b!1842953 (= e!1177652 0)))

(declare-fun b!1842954 () Bool)

(assert (=> b!1842954 (= e!1177652 (+ 1 (size!16084 (t!171825 (list!8253 (xs!9585 (left!16221 t!3734)))))))))

(assert (= (and d!563969 c!300889) b!1842953))

(assert (= (and d!563969 (not c!300889)) b!1842954))

(declare-fun m!2271233 () Bool)

(assert (=> b!1842954 m!2271233))

(assert (=> d!563745 d!563969))

(assert (=> d!563745 d!563749))

(declare-fun d!563971 () Bool)

(assert (=> d!563971 (= (inv!26515 (xs!9585 (right!16551 (left!16221 t!3734)))) (<= (size!16084 (innerList!6769 (xs!9585 (right!16551 (left!16221 t!3734))))) 2147483647))))

(declare-fun bs!408722 () Bool)

(assert (= bs!408722 d!563971))

(declare-fun m!2271235 () Bool)

(assert (=> bs!408722 m!2271235))

(assert (=> b!1842726 d!563971))

(declare-fun d!563973 () Bool)

(declare-fun res!827961 () Bool)

(declare-fun e!1177653 () Bool)

(assert (=> d!563973 (=> (not res!827961) (not e!1177653))))

(assert (=> d!563973 (= res!827961 (<= (size!16084 (list!8253 (xs!9585 (left!16221 (right!16551 t!3734))))) 512))))

(assert (=> d!563973 (= (inv!26517 (left!16221 (right!16551 t!3734))) e!1177653)))

(declare-fun b!1842955 () Bool)

(declare-fun res!827962 () Bool)

(assert (=> b!1842955 (=> (not res!827962) (not e!1177653))))

(assert (=> b!1842955 (= res!827962 (= (csize!13649 (left!16221 (right!16551 t!3734))) (size!16084 (list!8253 (xs!9585 (left!16221 (right!16551 t!3734)))))))))

(declare-fun b!1842956 () Bool)

(assert (=> b!1842956 (= e!1177653 (and (> (csize!13649 (left!16221 (right!16551 t!3734))) 0) (<= (csize!13649 (left!16221 (right!16551 t!3734))) 512)))))

(assert (= (and d!563973 res!827961) b!1842955))

(assert (= (and b!1842955 res!827962) b!1842956))

(assert (=> d!563973 m!2270775))

(assert (=> d!563973 m!2270775))

(declare-fun m!2271237 () Bool)

(assert (=> d!563973 m!2271237))

(assert (=> b!1842955 m!2270775))

(assert (=> b!1842955 m!2270775))

(assert (=> b!1842955 m!2271237))

(assert (=> b!1842718 d!563973))

(assert (=> b!1842671 d!563969))

(assert (=> b!1842671 d!563749))

(declare-fun d!563975 () Bool)

(declare-fun res!827967 () Bool)

(declare-fun e!1177658 () Bool)

(assert (=> d!563975 (=> res!827967 e!1177658)))

(assert (=> d!563975 (= res!827967 ((_ is Nil!20284) (++!5517 (list!8252 (left!16221 t!3734)) (list!8252 (right!16551 t!3734)))))))

(assert (=> d!563975 (= (forall!4362 (++!5517 (list!8252 (left!16221 t!3734)) (list!8252 (right!16551 t!3734))) lambda!72330) e!1177658)))

(declare-fun b!1842961 () Bool)

(declare-fun e!1177659 () Bool)

(assert (=> b!1842961 (= e!1177658 e!1177659)))

(declare-fun res!827968 () Bool)

(assert (=> b!1842961 (=> (not res!827968) (not e!1177659))))

(declare-fun dynLambda!10088 (Int T!31878) Bool)

(assert (=> b!1842961 (= res!827968 (dynLambda!10088 lambda!72330 (h!25685 (++!5517 (list!8252 (left!16221 t!3734)) (list!8252 (right!16551 t!3734))))))))

(declare-fun b!1842962 () Bool)

(assert (=> b!1842962 (= e!1177659 (forall!4362 (t!171825 (++!5517 (list!8252 (left!16221 t!3734)) (list!8252 (right!16551 t!3734)))) lambda!72330))))

(assert (= (and d!563975 (not res!827967)) b!1842961))

(assert (= (and b!1842961 res!827968) b!1842962))

(declare-fun b_lambda!61089 () Bool)

(assert (=> (not b_lambda!61089) (not b!1842961)))

(declare-fun m!2271239 () Bool)

(assert (=> b!1842961 m!2271239))

(declare-fun m!2271241 () Bool)

(assert (=> b!1842962 m!2271241))

(assert (=> d!563725 d!563975))

(declare-fun bs!408723 () Bool)

(declare-fun d!563977 () Bool)

(assert (= bs!408723 (and d!563977 d!563861)))

(declare-fun lambda!72339 () Int)

(assert (=> bs!408723 (= lambda!72339 lambda!72338)))

(declare-fun bs!408724 () Bool)

(assert (= bs!408724 (and d!563977 d!563725)))

(assert (=> bs!408724 (= lambda!72339 lambda!72330)))

(declare-fun bs!408725 () Bool)

(assert (= bs!408725 (and d!563977 d!563721)))

(assert (=> bs!408725 (= lambda!72339 lambda!72329)))

(declare-fun bs!408726 () Bool)

(assert (= bs!408726 (and d!563977 d!563859)))

(assert (=> bs!408726 (= lambda!72339 lambda!72337)))

(declare-fun bs!408727 () Bool)

(assert (= bs!408727 (and d!563977 d!563729)))

(assert (=> bs!408727 (= lambda!72339 lambda!72331)))

(assert (=> d!563977 true))

(assert (=> d!563977 (< (dynLambda!10086 order!13085 p!1470) (dynLambda!10086 order!13085 lambda!72339))))

(assert (=> d!563977 (= (exists!663 (list!8253 (xs!9585 (left!16221 t!3734))) p!1470) (not (forall!4362 (list!8253 (xs!9585 (left!16221 t!3734))) lambda!72339)))))

(declare-fun bs!408728 () Bool)

(assert (= bs!408728 d!563977))

(assert (=> bs!408728 m!2270569))

(declare-fun m!2271243 () Bool)

(assert (=> bs!408728 m!2271243))

(assert (=> d!563741 d!563977))

(assert (=> d!563741 d!563749))

(declare-fun d!563979 () Bool)

(declare-fun _$9!120 () Bool)

(assert (=> d!563979 (= _$9!120 (exists!663 (list!8253 (xs!9585 (left!16221 t!3734))) p!1470))))

(assert (=> d!563979 true))

(assert (=> d!563979 (= (choose!11594 (xs!9585 (left!16221 t!3734)) p!1470) _$9!120)))

(declare-fun bs!408729 () Bool)

(assert (= bs!408729 d!563979))

(assert (=> bs!408729 m!2270569))

(assert (=> bs!408729 m!2270569))

(assert (=> bs!408729 m!2270689))

(assert (=> d!563741 d!563979))

(declare-fun b!1842964 () Bool)

(declare-fun e!1177661 () Bool)

(assert (=> b!1842964 (= e!1177661 (exists!662 (xs!9585 (right!16551 (right!16551 (left!16221 t!3734)))) p!1470))))

(declare-fun b!1842965 () Bool)

(declare-fun e!1177662 () Bool)

(assert (=> b!1842965 (= e!1177661 e!1177662)))

(declare-fun lt!714500 () Unit!34995)

(assert (=> b!1842965 (= lt!714500 (lemmaExistsConcat!6 (list!8252 (left!16221 (right!16551 (right!16551 (left!16221 t!3734))))) (list!8252 (right!16551 (right!16551 (right!16551 (left!16221 t!3734))))) p!1470))))

(declare-fun res!827970 () Bool)

(assert (=> b!1842965 (= res!827970 (exists!661 (left!16221 (right!16551 (right!16551 (left!16221 t!3734)))) p!1470))))

(assert (=> b!1842965 (=> res!827970 e!1177662)))

(declare-fun d!563981 () Bool)

(declare-fun lt!714501 () Bool)

(assert (=> d!563981 (= lt!714501 (exists!663 (list!8252 (right!16551 (right!16551 (left!16221 t!3734)))) p!1470))))

(declare-fun e!1177660 () Bool)

(assert (=> d!563981 (= lt!714501 e!1177660)))

(declare-fun res!827969 () Bool)

(assert (=> d!563981 (=> (not res!827969) (not e!1177660))))

(assert (=> d!563981 (= res!827969 (not ((_ is Empty!6709) (right!16551 (right!16551 (left!16221 t!3734))))))))

(assert (=> d!563981 (= (exists!661 (right!16551 (right!16551 (left!16221 t!3734))) p!1470) lt!714501)))

(declare-fun b!1842963 () Bool)

(assert (=> b!1842963 (= e!1177660 e!1177661)))

(declare-fun c!300890 () Bool)

(assert (=> b!1842963 (= c!300890 ((_ is Leaf!9800) (right!16551 (right!16551 (left!16221 t!3734)))))))

(declare-fun b!1842966 () Bool)

(assert (=> b!1842966 (= e!1177662 (exists!661 (right!16551 (right!16551 (right!16551 (left!16221 t!3734)))) p!1470))))

(assert (= (and d!563981 res!827969) b!1842963))

(assert (= (and b!1842963 c!300890) b!1842964))

(assert (= (and b!1842963 (not c!300890)) b!1842965))

(assert (= (and b!1842965 (not res!827970)) b!1842966))

(declare-fun m!2271245 () Bool)

(assert (=> b!1842964 m!2271245))

(assert (=> b!1842965 m!2271133))

(assert (=> b!1842965 m!2271135))

(assert (=> b!1842965 m!2271133))

(assert (=> b!1842965 m!2271135))

(declare-fun m!2271247 () Bool)

(assert (=> b!1842965 m!2271247))

(declare-fun m!2271249 () Bool)

(assert (=> b!1842965 m!2271249))

(assert (=> d!563981 m!2270683))

(assert (=> d!563981 m!2270683))

(assert (=> d!563981 m!2271123))

(declare-fun m!2271251 () Bool)

(assert (=> b!1842966 m!2271251))

(assert (=> b!1842689 d!563981))

(declare-fun d!563983 () Bool)

(declare-fun res!827971 () Bool)

(declare-fun e!1177663 () Bool)

(assert (=> d!563983 (=> (not res!827971) (not e!1177663))))

(assert (=> d!563983 (= res!827971 (= (csize!13648 (left!16221 (right!16551 t!3734))) (+ (size!16085 (left!16221 (left!16221 (right!16551 t!3734)))) (size!16085 (right!16551 (left!16221 (right!16551 t!3734)))))))))

(assert (=> d!563983 (= (inv!26516 (left!16221 (right!16551 t!3734))) e!1177663)))

(declare-fun b!1842967 () Bool)

(declare-fun res!827972 () Bool)

(assert (=> b!1842967 (=> (not res!827972) (not e!1177663))))

(assert (=> b!1842967 (= res!827972 (and (not (= (left!16221 (left!16221 (right!16551 t!3734))) Empty!6709)) (not (= (right!16551 (left!16221 (right!16551 t!3734))) Empty!6709))))))

(declare-fun b!1842968 () Bool)

(declare-fun res!827973 () Bool)

(assert (=> b!1842968 (=> (not res!827973) (not e!1177663))))

(assert (=> b!1842968 (= res!827973 (= (cheight!6920 (left!16221 (right!16551 t!3734))) (+ (max!0 (height!1025 (left!16221 (left!16221 (right!16551 t!3734)))) (height!1025 (right!16551 (left!16221 (right!16551 t!3734))))) 1)))))

(declare-fun b!1842969 () Bool)

(assert (=> b!1842969 (= e!1177663 (<= 0 (cheight!6920 (left!16221 (right!16551 t!3734)))))))

(assert (= (and d!563983 res!827971) b!1842967))

(assert (= (and b!1842967 res!827972) b!1842968))

(assert (= (and b!1842968 res!827973) b!1842969))

(declare-fun m!2271253 () Bool)

(assert (=> d!563983 m!2271253))

(declare-fun m!2271255 () Bool)

(assert (=> d!563983 m!2271255))

(declare-fun m!2271257 () Bool)

(assert (=> b!1842968 m!2271257))

(declare-fun m!2271259 () Bool)

(assert (=> b!1842968 m!2271259))

(assert (=> b!1842968 m!2271257))

(assert (=> b!1842968 m!2271259))

(declare-fun m!2271261 () Bool)

(assert (=> b!1842968 m!2271261))

(assert (=> b!1842716 d!563983))

(declare-fun d!563985 () Bool)

(declare-fun lt!714502 () Int)

(assert (=> d!563985 (>= lt!714502 0)))

(declare-fun e!1177664 () Int)

(assert (=> d!563985 (= lt!714502 e!1177664)))

(declare-fun c!300891 () Bool)

(assert (=> d!563985 (= c!300891 ((_ is Nil!20284) (list!8253 (xs!9585 t!3734))))))

(assert (=> d!563985 (= (size!16084 (list!8253 (xs!9585 t!3734))) lt!714502)))

(declare-fun b!1842970 () Bool)

(assert (=> b!1842970 (= e!1177664 0)))

(declare-fun b!1842971 () Bool)

(assert (=> b!1842971 (= e!1177664 (+ 1 (size!16084 (t!171825 (list!8253 (xs!9585 t!3734))))))))

(assert (= (and d!563985 c!300891) b!1842970))

(assert (= (and d!563985 (not c!300891)) b!1842971))

(declare-fun m!2271263 () Bool)

(assert (=> b!1842971 m!2271263))

(assert (=> d!563733 d!563985))

(declare-fun d!563987 () Bool)

(assert (=> d!563987 (= (list!8253 (xs!9585 t!3734)) (innerList!6769 (xs!9585 t!3734)))))

(assert (=> d!563733 d!563987))

(declare-fun d!563989 () Bool)

(assert (=> d!563989 (= (list!8253 (xs!9585 (right!16551 (right!16551 t!3734)))) (innerList!6769 (xs!9585 (right!16551 (right!16551 t!3734)))))))

(assert (=> b!1842714 d!563989))

(assert (=> d!563767 d!563861))

(assert (=> d!563767 d!563737))

(declare-fun d!563991 () Bool)

(declare-fun lt!714503 () Int)

(assert (=> d!563991 (>= lt!714503 0)))

(declare-fun e!1177665 () Int)

(assert (=> d!563991 (= lt!714503 e!1177665)))

(declare-fun c!300892 () Bool)

(assert (=> d!563991 (= c!300892 ((_ is Nil!20284) (t!171825 (innerList!6769 (xs!9585 t!3734)))))))

(assert (=> d!563991 (= (size!16084 (t!171825 (innerList!6769 (xs!9585 t!3734)))) lt!714503)))

(declare-fun b!1842972 () Bool)

(assert (=> b!1842972 (= e!1177665 0)))

(declare-fun b!1842973 () Bool)

(assert (=> b!1842973 (= e!1177665 (+ 1 (size!16084 (t!171825 (t!171825 (innerList!6769 (xs!9585 t!3734)))))))))

(assert (= (and d!563991 c!300892) b!1842972))

(assert (= (and d!563991 (not c!300892)) b!1842973))

(declare-fun m!2271265 () Bool)

(assert (=> b!1842973 m!2271265))

(assert (=> b!1842670 d!563991))

(declare-fun d!563993 () Bool)

(assert (=> d!563993 (= (list!8253 (xs!9585 (left!16221 (left!16221 t!3734)))) (innerList!6769 (xs!9585 (left!16221 (left!16221 t!3734)))))))

(assert (=> b!1842659 d!563993))

(declare-fun d!563995 () Bool)

(declare-fun lt!714504 () Int)

(assert (=> d!563995 (>= lt!714504 0)))

(declare-fun e!1177666 () Int)

(assert (=> d!563995 (= lt!714504 e!1177666)))

(declare-fun c!300893 () Bool)

(assert (=> d!563995 (= c!300893 ((_ is Nil!20284) (innerList!6769 (xs!9585 (left!16221 t!3734)))))))

(assert (=> d!563995 (= (size!16084 (innerList!6769 (xs!9585 (left!16221 t!3734)))) lt!714504)))

(declare-fun b!1842974 () Bool)

(assert (=> b!1842974 (= e!1177666 0)))

(declare-fun b!1842975 () Bool)

(assert (=> b!1842975 (= e!1177666 (+ 1 (size!16084 (t!171825 (innerList!6769 (xs!9585 (left!16221 t!3734)))))))))

(assert (= (and d!563995 c!300893) b!1842974))

(assert (= (and d!563995 (not c!300893)) b!1842975))

(declare-fun m!2271267 () Bool)

(assert (=> b!1842975 m!2271267))

(assert (=> d!563773 d!563995))

(declare-fun d!563997 () Bool)

(declare-fun res!827974 () Bool)

(declare-fun e!1177667 () Bool)

(assert (=> d!563997 (=> (not res!827974) (not e!1177667))))

(assert (=> d!563997 (= res!827974 (<= (size!16084 (list!8253 (xs!9585 (right!16551 (right!16551 t!3734))))) 512))))

(assert (=> d!563997 (= (inv!26517 (right!16551 (right!16551 t!3734))) e!1177667)))

(declare-fun b!1842976 () Bool)

(declare-fun res!827975 () Bool)

(assert (=> b!1842976 (=> (not res!827975) (not e!1177667))))

(assert (=> b!1842976 (= res!827975 (= (csize!13649 (right!16551 (right!16551 t!3734))) (size!16084 (list!8253 (xs!9585 (right!16551 (right!16551 t!3734)))))))))

(declare-fun b!1842977 () Bool)

(assert (=> b!1842977 (= e!1177667 (and (> (csize!13649 (right!16551 (right!16551 t!3734))) 0) (<= (csize!13649 (right!16551 (right!16551 t!3734))) 512)))))

(assert (= (and d!563997 res!827974) b!1842976))

(assert (= (and b!1842976 res!827975) b!1842977))

(assert (=> d!563997 m!2270785))

(assert (=> d!563997 m!2270785))

(declare-fun m!2271269 () Bool)

(assert (=> d!563997 m!2271269))

(assert (=> b!1842976 m!2270785))

(assert (=> b!1842976 m!2270785))

(assert (=> b!1842976 m!2271269))

(assert (=> b!1842721 d!563997))

(declare-fun d!563999 () Bool)

(declare-fun res!827976 () Bool)

(declare-fun e!1177668 () Bool)

(assert (=> d!563999 (=> res!827976 e!1177668)))

(assert (=> d!563999 (= res!827976 ((_ is Nil!20284) (list!8252 (right!16551 t!3734))))))

(assert (=> d!563999 (= (forall!4362 (list!8252 (right!16551 t!3734)) lambda!72329) e!1177668)))

(declare-fun b!1842978 () Bool)

(declare-fun e!1177669 () Bool)

(assert (=> b!1842978 (= e!1177668 e!1177669)))

(declare-fun res!827977 () Bool)

(assert (=> b!1842978 (=> (not res!827977) (not e!1177669))))

(assert (=> b!1842978 (= res!827977 (dynLambda!10088 lambda!72329 (h!25685 (list!8252 (right!16551 t!3734)))))))

(declare-fun b!1842979 () Bool)

(assert (=> b!1842979 (= e!1177669 (forall!4362 (t!171825 (list!8252 (right!16551 t!3734))) lambda!72329))))

(assert (= (and d!563999 (not res!827976)) b!1842978))

(assert (= (and b!1842978 res!827977) b!1842979))

(declare-fun b_lambda!61091 () Bool)

(assert (=> (not b_lambda!61091) (not b!1842978)))

(declare-fun m!2271271 () Bool)

(assert (=> b!1842978 m!2271271))

(declare-fun m!2271273 () Bool)

(assert (=> b!1842979 m!2271273))

(assert (=> d!563721 d!563999))

(assert (=> b!1842651 d!563985))

(assert (=> b!1842651 d!563987))

(declare-fun d!564001 () Bool)

(declare-fun res!827978 () Bool)

(declare-fun e!1177670 () Bool)

(assert (=> d!564001 (=> res!827978 e!1177670)))

(assert (=> d!564001 (= res!827978 ((_ is Nil!20284) (list!8252 (left!16221 t!3734))))))

(assert (=> d!564001 (= (forall!4362 (list!8252 (left!16221 t!3734)) lambda!72331) e!1177670)))

(declare-fun b!1842980 () Bool)

(declare-fun e!1177671 () Bool)

(assert (=> b!1842980 (= e!1177670 e!1177671)))

(declare-fun res!827979 () Bool)

(assert (=> b!1842980 (=> (not res!827979) (not e!1177671))))

(assert (=> b!1842980 (= res!827979 (dynLambda!10088 lambda!72331 (h!25685 (list!8252 (left!16221 t!3734)))))))

(declare-fun b!1842981 () Bool)

(assert (=> b!1842981 (= e!1177671 (forall!4362 (t!171825 (list!8252 (left!16221 t!3734))) lambda!72331))))

(assert (= (and d!564001 (not res!827978)) b!1842980))

(assert (= (and b!1842980 res!827979) b!1842981))

(declare-fun b_lambda!61093 () Bool)

(assert (=> (not b_lambda!61093) (not b!1842980)))

(declare-fun m!2271275 () Bool)

(assert (=> b!1842980 m!2271275))

(declare-fun m!2271277 () Bool)

(assert (=> b!1842981 m!2271277))

(assert (=> d!563729 d!564001))

(declare-fun bs!408730 () Bool)

(declare-fun d!564003 () Bool)

(assert (= bs!408730 (and d!564003 d!563861)))

(declare-fun lambda!72340 () Int)

(assert (=> bs!408730 (= lambda!72340 lambda!72338)))

(declare-fun bs!408731 () Bool)

(assert (= bs!408731 (and d!564003 d!563725)))

(assert (=> bs!408731 (= lambda!72340 lambda!72330)))

(declare-fun bs!408732 () Bool)

(assert (= bs!408732 (and d!564003 d!563721)))

(assert (=> bs!408732 (= lambda!72340 lambda!72329)))

(declare-fun bs!408733 () Bool)

(assert (= bs!408733 (and d!564003 d!563859)))

(assert (=> bs!408733 (= lambda!72340 lambda!72337)))

(declare-fun bs!408734 () Bool)

(assert (= bs!408734 (and d!564003 d!563729)))

(assert (=> bs!408734 (= lambda!72340 lambda!72331)))

(declare-fun bs!408735 () Bool)

(assert (= bs!408735 (and d!564003 d!563977)))

(assert (=> bs!408735 (= lambda!72340 lambda!72339)))

(assert (=> d!564003 true))

(assert (=> d!564003 (< (dynLambda!10086 order!13085 p!1470) (dynLambda!10086 order!13085 lambda!72340))))

(assert (=> d!564003 (= (exists!663 (list!8252 (right!16551 (left!16221 t!3734))) p!1470) (not (forall!4362 (list!8252 (right!16551 (left!16221 t!3734))) lambda!72340)))))

(declare-fun bs!408736 () Bool)

(assert (= bs!408736 d!564003))

(assert (=> bs!408736 m!2270529))

(declare-fun m!2271279 () Bool)

(assert (=> bs!408736 m!2271279))

(assert (=> d!563759 d!564003))

(assert (=> d!563759 d!563739))

(assert (=> b!1842694 d!564003))

(declare-fun d!564005 () Bool)

(declare-fun c!300894 () Bool)

(assert (=> d!564005 (= c!300894 ((_ is Nil!20284) lt!714439))))

(declare-fun e!1177672 () (InoxSet T!31878))

(assert (=> d!564005 (= (content!3022 lt!714439) e!1177672)))

(declare-fun b!1842982 () Bool)

(assert (=> b!1842982 (= e!1177672 ((as const (Array T!31878 Bool)) false))))

(declare-fun b!1842983 () Bool)

(assert (=> b!1842983 (= e!1177672 ((_ map or) (store ((as const (Array T!31878 Bool)) false) (h!25685 lt!714439) true) (content!3022 (t!171825 lt!714439))))))

(assert (= (and d!564005 c!300894) b!1842982))

(assert (= (and d!564005 (not c!300894)) b!1842983))

(declare-fun m!2271281 () Bool)

(assert (=> b!1842983 m!2271281))

(declare-fun m!2271283 () Bool)

(assert (=> b!1842983 m!2271283))

(assert (=> d!563727 d!564005))

(declare-fun d!564007 () Bool)

(declare-fun c!300895 () Bool)

(assert (=> d!564007 (= c!300895 ((_ is Nil!20284) (list!8252 (left!16221 t!3734))))))

(declare-fun e!1177673 () (InoxSet T!31878))

(assert (=> d!564007 (= (content!3022 (list!8252 (left!16221 t!3734))) e!1177673)))

(declare-fun b!1842984 () Bool)

(assert (=> b!1842984 (= e!1177673 ((as const (Array T!31878 Bool)) false))))

(declare-fun b!1842985 () Bool)

(assert (=> b!1842985 (= e!1177673 ((_ map or) (store ((as const (Array T!31878 Bool)) false) (h!25685 (list!8252 (left!16221 t!3734))) true) (content!3022 (t!171825 (list!8252 (left!16221 t!3734))))))))

(assert (= (and d!564007 c!300895) b!1842984))

(assert (= (and d!564007 (not c!300895)) b!1842985))

(declare-fun m!2271285 () Bool)

(assert (=> b!1842985 m!2271285))

(assert (=> b!1842985 m!2271055))

(assert (=> d!563727 d!564007))

(declare-fun d!564009 () Bool)

(declare-fun c!300896 () Bool)

(assert (=> d!564009 (= c!300896 ((_ is Nil!20284) (list!8252 (right!16551 t!3734))))))

(declare-fun e!1177674 () (InoxSet T!31878))

(assert (=> d!564009 (= (content!3022 (list!8252 (right!16551 t!3734))) e!1177674)))

(declare-fun b!1842986 () Bool)

(assert (=> b!1842986 (= e!1177674 ((as const (Array T!31878 Bool)) false))))

(declare-fun b!1842987 () Bool)

(assert (=> b!1842987 (= e!1177674 ((_ map or) (store ((as const (Array T!31878 Bool)) false) (h!25685 (list!8252 (right!16551 t!3734))) true) (content!3022 (t!171825 (list!8252 (right!16551 t!3734))))))))

(assert (= (and d!564009 c!300896) b!1842986))

(assert (= (and d!564009 (not c!300896)) b!1842987))

(declare-fun m!2271287 () Bool)

(assert (=> b!1842987 m!2271287))

(declare-fun m!2271289 () Bool)

(assert (=> b!1842987 m!2271289))

(assert (=> d!563727 d!564009))

(declare-fun d!564011 () Bool)

(declare-fun res!827980 () Bool)

(declare-fun e!1177675 () Bool)

(assert (=> d!564011 (=> (not res!827980) (not e!1177675))))

(assert (=> d!564011 (= res!827980 (= (csize!13648 (right!16551 (right!16551 t!3734))) (+ (size!16085 (left!16221 (right!16551 (right!16551 t!3734)))) (size!16085 (right!16551 (right!16551 (right!16551 t!3734)))))))))

(assert (=> d!564011 (= (inv!26516 (right!16551 (right!16551 t!3734))) e!1177675)))

(declare-fun b!1842988 () Bool)

(declare-fun res!827981 () Bool)

(assert (=> b!1842988 (=> (not res!827981) (not e!1177675))))

(assert (=> b!1842988 (= res!827981 (and (not (= (left!16221 (right!16551 (right!16551 t!3734))) Empty!6709)) (not (= (right!16551 (right!16551 (right!16551 t!3734))) Empty!6709))))))

(declare-fun b!1842989 () Bool)

(declare-fun res!827982 () Bool)

(assert (=> b!1842989 (=> (not res!827982) (not e!1177675))))

(assert (=> b!1842989 (= res!827982 (= (cheight!6920 (right!16551 (right!16551 t!3734))) (+ (max!0 (height!1025 (left!16221 (right!16551 (right!16551 t!3734)))) (height!1025 (right!16551 (right!16551 (right!16551 t!3734))))) 1)))))

(declare-fun b!1842990 () Bool)

(assert (=> b!1842990 (= e!1177675 (<= 0 (cheight!6920 (right!16551 (right!16551 t!3734)))))))

(assert (= (and d!564011 res!827980) b!1842988))

(assert (= (and b!1842988 res!827981) b!1842989))

(assert (= (and b!1842989 res!827982) b!1842990))

(declare-fun m!2271291 () Bool)

(assert (=> d!564011 m!2271291))

(declare-fun m!2271293 () Bool)

(assert (=> d!564011 m!2271293))

(declare-fun m!2271295 () Bool)

(assert (=> b!1842989 m!2271295))

(declare-fun m!2271297 () Bool)

(assert (=> b!1842989 m!2271297))

(assert (=> b!1842989 m!2271295))

(assert (=> b!1842989 m!2271297))

(declare-fun m!2271299 () Bool)

(assert (=> b!1842989 m!2271299))

(assert (=> b!1842719 d!564011))

(declare-fun b!1842993 () Bool)

(declare-fun res!827984 () Bool)

(declare-fun e!1177676 () Bool)

(assert (=> b!1842993 (=> (not res!827984) (not e!1177676))))

(declare-fun lt!714505 () List!20354)

(assert (=> b!1842993 (= res!827984 (= (size!16084 lt!714505) (+ (size!16084 (list!8252 (left!16221 (left!16221 (right!16551 t!3734))))) (size!16084 (list!8252 (right!16551 (left!16221 (right!16551 t!3734))))))))))

(declare-fun d!564013 () Bool)

(assert (=> d!564013 e!1177676))

(declare-fun res!827983 () Bool)

(assert (=> d!564013 (=> (not res!827983) (not e!1177676))))

(assert (=> d!564013 (= res!827983 (= (content!3022 lt!714505) ((_ map or) (content!3022 (list!8252 (left!16221 (left!16221 (right!16551 t!3734))))) (content!3022 (list!8252 (right!16551 (left!16221 (right!16551 t!3734))))))))))

(declare-fun e!1177677 () List!20354)

(assert (=> d!564013 (= lt!714505 e!1177677)))

(declare-fun c!300897 () Bool)

(assert (=> d!564013 (= c!300897 ((_ is Nil!20284) (list!8252 (left!16221 (left!16221 (right!16551 t!3734))))))))

(assert (=> d!564013 (= (++!5517 (list!8252 (left!16221 (left!16221 (right!16551 t!3734)))) (list!8252 (right!16551 (left!16221 (right!16551 t!3734))))) lt!714505)))

(declare-fun b!1842991 () Bool)

(assert (=> b!1842991 (= e!1177677 (list!8252 (right!16551 (left!16221 (right!16551 t!3734)))))))

(declare-fun b!1842994 () Bool)

(assert (=> b!1842994 (= e!1177676 (or (not (= (list!8252 (right!16551 (left!16221 (right!16551 t!3734)))) Nil!20284)) (= lt!714505 (list!8252 (left!16221 (left!16221 (right!16551 t!3734)))))))))

(declare-fun b!1842992 () Bool)

(assert (=> b!1842992 (= e!1177677 (Cons!20284 (h!25685 (list!8252 (left!16221 (left!16221 (right!16551 t!3734))))) (++!5517 (t!171825 (list!8252 (left!16221 (left!16221 (right!16551 t!3734))))) (list!8252 (right!16551 (left!16221 (right!16551 t!3734)))))))))

(assert (= (and d!564013 c!300897) b!1842991))

(assert (= (and d!564013 (not c!300897)) b!1842992))

(assert (= (and d!564013 res!827983) b!1842993))

(assert (= (and b!1842993 res!827984) b!1842994))

(declare-fun m!2271301 () Bool)

(assert (=> b!1842993 m!2271301))

(assert (=> b!1842993 m!2270769))

(declare-fun m!2271303 () Bool)

(assert (=> b!1842993 m!2271303))

(assert (=> b!1842993 m!2270771))

(declare-fun m!2271305 () Bool)

(assert (=> b!1842993 m!2271305))

(declare-fun m!2271307 () Bool)

(assert (=> d!564013 m!2271307))

(assert (=> d!564013 m!2270769))

(declare-fun m!2271309 () Bool)

(assert (=> d!564013 m!2271309))

(assert (=> d!564013 m!2270771))

(declare-fun m!2271311 () Bool)

(assert (=> d!564013 m!2271311))

(assert (=> b!1842992 m!2270771))

(declare-fun m!2271313 () Bool)

(assert (=> b!1842992 m!2271313))

(assert (=> b!1842709 d!564013))

(declare-fun b!1842996 () Bool)

(declare-fun e!1177678 () List!20354)

(declare-fun e!1177679 () List!20354)

(assert (=> b!1842996 (= e!1177678 e!1177679)))

(declare-fun c!300899 () Bool)

(assert (=> b!1842996 (= c!300899 ((_ is Leaf!9800) (left!16221 (left!16221 (right!16551 t!3734)))))))

(declare-fun d!564015 () Bool)

(declare-fun c!300898 () Bool)

(assert (=> d!564015 (= c!300898 ((_ is Empty!6709) (left!16221 (left!16221 (right!16551 t!3734)))))))

(assert (=> d!564015 (= (list!8252 (left!16221 (left!16221 (right!16551 t!3734)))) e!1177678)))

(declare-fun b!1842995 () Bool)

(assert (=> b!1842995 (= e!1177678 Nil!20284)))

(declare-fun b!1842998 () Bool)

(assert (=> b!1842998 (= e!1177679 (++!5517 (list!8252 (left!16221 (left!16221 (left!16221 (right!16551 t!3734))))) (list!8252 (right!16551 (left!16221 (left!16221 (right!16551 t!3734)))))))))

(declare-fun b!1842997 () Bool)

(assert (=> b!1842997 (= e!1177679 (list!8253 (xs!9585 (left!16221 (left!16221 (right!16551 t!3734))))))))

(assert (= (and d!564015 c!300898) b!1842995))

(assert (= (and d!564015 (not c!300898)) b!1842996))

(assert (= (and b!1842996 c!300899) b!1842997))

(assert (= (and b!1842996 (not c!300899)) b!1842998))

(declare-fun m!2271315 () Bool)

(assert (=> b!1842998 m!2271315))

(declare-fun m!2271317 () Bool)

(assert (=> b!1842998 m!2271317))

(assert (=> b!1842998 m!2271315))

(assert (=> b!1842998 m!2271317))

(declare-fun m!2271319 () Bool)

(assert (=> b!1842998 m!2271319))

(declare-fun m!2271321 () Bool)

(assert (=> b!1842997 m!2271321))

(assert (=> b!1842709 d!564015))

(declare-fun b!1843000 () Bool)

(declare-fun e!1177680 () List!20354)

(declare-fun e!1177681 () List!20354)

(assert (=> b!1843000 (= e!1177680 e!1177681)))

(declare-fun c!300901 () Bool)

(assert (=> b!1843000 (= c!300901 ((_ is Leaf!9800) (right!16551 (left!16221 (right!16551 t!3734)))))))

(declare-fun d!564017 () Bool)

(declare-fun c!300900 () Bool)

(assert (=> d!564017 (= c!300900 ((_ is Empty!6709) (right!16551 (left!16221 (right!16551 t!3734)))))))

(assert (=> d!564017 (= (list!8252 (right!16551 (left!16221 (right!16551 t!3734)))) e!1177680)))

(declare-fun b!1842999 () Bool)

(assert (=> b!1842999 (= e!1177680 Nil!20284)))

(declare-fun b!1843002 () Bool)

(assert (=> b!1843002 (= e!1177681 (++!5517 (list!8252 (left!16221 (right!16551 (left!16221 (right!16551 t!3734))))) (list!8252 (right!16551 (right!16551 (left!16221 (right!16551 t!3734)))))))))

(declare-fun b!1843001 () Bool)

(assert (=> b!1843001 (= e!1177681 (list!8253 (xs!9585 (right!16551 (left!16221 (right!16551 t!3734))))))))

(assert (= (and d!564017 c!300900) b!1842999))

(assert (= (and d!564017 (not c!300900)) b!1843000))

(assert (= (and b!1843000 c!300901) b!1843001))

(assert (= (and b!1843000 (not c!300901)) b!1843002))

(declare-fun m!2271323 () Bool)

(assert (=> b!1843002 m!2271323))

(declare-fun m!2271325 () Bool)

(assert (=> b!1843002 m!2271325))

(assert (=> b!1843002 m!2271323))

(assert (=> b!1843002 m!2271325))

(declare-fun m!2271327 () Bool)

(assert (=> b!1843002 m!2271327))

(declare-fun m!2271329 () Bool)

(assert (=> b!1843001 m!2271329))

(assert (=> b!1842709 d!564017))

(declare-fun d!564019 () Bool)

(declare-fun c!300902 () Bool)

(assert (=> d!564019 (= c!300902 ((_ is Node!6709) (left!16221 (right!16551 (right!16551 t!3734)))))))

(declare-fun e!1177682 () Bool)

(assert (=> d!564019 (= (inv!26514 (left!16221 (right!16551 (right!16551 t!3734)))) e!1177682)))

(declare-fun b!1843003 () Bool)

(assert (=> b!1843003 (= e!1177682 (inv!26516 (left!16221 (right!16551 (right!16551 t!3734)))))))

(declare-fun b!1843004 () Bool)

(declare-fun e!1177683 () Bool)

(assert (=> b!1843004 (= e!1177682 e!1177683)))

(declare-fun res!827985 () Bool)

(assert (=> b!1843004 (= res!827985 (not ((_ is Leaf!9800) (left!16221 (right!16551 (right!16551 t!3734))))))))

(assert (=> b!1843004 (=> res!827985 e!1177683)))

(declare-fun b!1843005 () Bool)

(assert (=> b!1843005 (= e!1177683 (inv!26517 (left!16221 (right!16551 (right!16551 t!3734)))))))

(assert (= (and d!564019 c!300902) b!1843003))

(assert (= (and d!564019 (not c!300902)) b!1843004))

(assert (= (and b!1843004 (not res!827985)) b!1843005))

(declare-fun m!2271331 () Bool)

(assert (=> b!1843003 m!2271331))

(declare-fun m!2271333 () Bool)

(assert (=> b!1843005 m!2271333))

(assert (=> b!1842734 d!564019))

(declare-fun d!564021 () Bool)

(declare-fun c!300903 () Bool)

(assert (=> d!564021 (= c!300903 ((_ is Node!6709) (right!16551 (right!16551 (right!16551 t!3734)))))))

(declare-fun e!1177684 () Bool)

(assert (=> d!564021 (= (inv!26514 (right!16551 (right!16551 (right!16551 t!3734)))) e!1177684)))

(declare-fun b!1843006 () Bool)

(assert (=> b!1843006 (= e!1177684 (inv!26516 (right!16551 (right!16551 (right!16551 t!3734)))))))

(declare-fun b!1843007 () Bool)

(declare-fun e!1177685 () Bool)

(assert (=> b!1843007 (= e!1177684 e!1177685)))

(declare-fun res!827986 () Bool)

(assert (=> b!1843007 (= res!827986 (not ((_ is Leaf!9800) (right!16551 (right!16551 (right!16551 t!3734))))))))

(assert (=> b!1843007 (=> res!827986 e!1177685)))

(declare-fun b!1843008 () Bool)

(assert (=> b!1843008 (= e!1177685 (inv!26517 (right!16551 (right!16551 (right!16551 t!3734)))))))

(assert (= (and d!564021 c!300903) b!1843006))

(assert (= (and d!564021 (not c!300903)) b!1843007))

(assert (= (and b!1843007 (not res!827986)) b!1843008))

(declare-fun m!2271335 () Bool)

(assert (=> b!1843006 m!2271335))

(declare-fun m!2271337 () Bool)

(assert (=> b!1843008 m!2271337))

(assert (=> b!1842734 d!564021))

(declare-fun b!1843011 () Bool)

(declare-fun res!827988 () Bool)

(declare-fun e!1177686 () Bool)

(assert (=> b!1843011 (=> (not res!827988) (not e!1177686))))

(declare-fun lt!714506 () List!20354)

(assert (=> b!1843011 (= res!827988 (= (size!16084 lt!714506) (+ (size!16084 (list!8252 (left!16221 (right!16551 (left!16221 t!3734))))) (size!16084 (list!8252 (right!16551 (right!16551 (left!16221 t!3734))))))))))

(declare-fun d!564023 () Bool)

(assert (=> d!564023 e!1177686))

(declare-fun res!827987 () Bool)

(assert (=> d!564023 (=> (not res!827987) (not e!1177686))))

(assert (=> d!564023 (= res!827987 (= (content!3022 lt!714506) ((_ map or) (content!3022 (list!8252 (left!16221 (right!16551 (left!16221 t!3734))))) (content!3022 (list!8252 (right!16551 (right!16551 (left!16221 t!3734))))))))))

(declare-fun e!1177687 () List!20354)

(assert (=> d!564023 (= lt!714506 e!1177687)))

(declare-fun c!300904 () Bool)

(assert (=> d!564023 (= c!300904 ((_ is Nil!20284) (list!8252 (left!16221 (right!16551 (left!16221 t!3734))))))))

(assert (=> d!564023 (= (++!5517 (list!8252 (left!16221 (right!16551 (left!16221 t!3734)))) (list!8252 (right!16551 (right!16551 (left!16221 t!3734))))) lt!714506)))

(declare-fun b!1843009 () Bool)

(assert (=> b!1843009 (= e!1177687 (list!8252 (right!16551 (right!16551 (left!16221 t!3734)))))))

(declare-fun b!1843012 () Bool)

(assert (=> b!1843012 (= e!1177686 (or (not (= (list!8252 (right!16551 (right!16551 (left!16221 t!3734)))) Nil!20284)) (= lt!714506 (list!8252 (left!16221 (right!16551 (left!16221 t!3734)))))))))

(declare-fun b!1843010 () Bool)

(assert (=> b!1843010 (= e!1177687 (Cons!20284 (h!25685 (list!8252 (left!16221 (right!16551 (left!16221 t!3734))))) (++!5517 (t!171825 (list!8252 (left!16221 (right!16551 (left!16221 t!3734))))) (list!8252 (right!16551 (right!16551 (left!16221 t!3734)))))))))

(assert (= (and d!564023 c!300904) b!1843009))

(assert (= (and d!564023 (not c!300904)) b!1843010))

(assert (= (and d!564023 res!827987) b!1843011))

(assert (= (and b!1843011 res!827988) b!1843012))

(declare-fun m!2271339 () Bool)

(assert (=> b!1843011 m!2271339))

(assert (=> b!1843011 m!2270681))

(declare-fun m!2271341 () Bool)

(assert (=> b!1843011 m!2271341))

(assert (=> b!1843011 m!2270683))

(declare-fun m!2271343 () Bool)

(assert (=> b!1843011 m!2271343))

(declare-fun m!2271345 () Bool)

(assert (=> d!564023 m!2271345))

(assert (=> d!564023 m!2270681))

(declare-fun m!2271347 () Bool)

(assert (=> d!564023 m!2271347))

(assert (=> d!564023 m!2270683))

(declare-fun m!2271349 () Bool)

(assert (=> d!564023 m!2271349))

(assert (=> b!1843010 m!2270683))

(declare-fun m!2271351 () Bool)

(assert (=> b!1843010 m!2271351))

(assert (=> b!1842664 d!564023))

(assert (=> b!1842664 d!563893))

(assert (=> b!1842664 d!563895))

(declare-fun d!564025 () Bool)

(declare-fun e!1177688 () Bool)

(assert (=> d!564025 (= (exists!663 (++!5517 (list!8252 (left!16221 (left!16221 (left!16221 t!3734)))) (list!8252 (right!16551 (left!16221 (left!16221 t!3734))))) p!1470) e!1177688)))

(declare-fun res!827989 () Bool)

(assert (=> d!564025 (=> res!827989 e!1177688)))

(assert (=> d!564025 (= res!827989 (exists!663 (list!8252 (left!16221 (left!16221 (left!16221 t!3734)))) p!1470))))

(declare-fun lt!714507 () Unit!34995)

(assert (=> d!564025 (= lt!714507 (choose!11592 (list!8252 (left!16221 (left!16221 (left!16221 t!3734)))) (list!8252 (right!16551 (left!16221 (left!16221 t!3734)))) p!1470))))

(assert (=> d!564025 (= (lemmaExistsConcat!6 (list!8252 (left!16221 (left!16221 (left!16221 t!3734)))) (list!8252 (right!16551 (left!16221 (left!16221 t!3734)))) p!1470) lt!714507)))

(declare-fun b!1843013 () Bool)

(assert (=> b!1843013 (= e!1177688 (exists!663 (list!8252 (right!16551 (left!16221 (left!16221 t!3734)))) p!1470))))

(assert (= (and d!564025 (not res!827989)) b!1843013))

(assert (=> d!564025 m!2270673))

(assert (=> d!564025 m!2270675))

(assert (=> d!564025 m!2270677))

(assert (=> d!564025 m!2270677))

(declare-fun m!2271353 () Bool)

(assert (=> d!564025 m!2271353))

(assert (=> d!564025 m!2270673))

(declare-fun m!2271355 () Bool)

(assert (=> d!564025 m!2271355))

(assert (=> d!564025 m!2270673))

(assert (=> d!564025 m!2270675))

(declare-fun m!2271357 () Bool)

(assert (=> d!564025 m!2271357))

(assert (=> b!1843013 m!2270675))

(assert (=> b!1843013 m!2271207))

(assert (=> b!1842697 d!564025))

(assert (=> b!1842697 d!563901))

(assert (=> b!1842697 d!563903))

(declare-fun b!1843015 () Bool)

(declare-fun e!1177690 () Bool)

(assert (=> b!1843015 (= e!1177690 (exists!662 (xs!9585 (left!16221 (left!16221 (left!16221 t!3734)))) p!1470))))

(declare-fun b!1843016 () Bool)

(declare-fun e!1177691 () Bool)

(assert (=> b!1843016 (= e!1177690 e!1177691)))

(declare-fun lt!714508 () Unit!34995)

(assert (=> b!1843016 (= lt!714508 (lemmaExistsConcat!6 (list!8252 (left!16221 (left!16221 (left!16221 (left!16221 t!3734))))) (list!8252 (right!16551 (left!16221 (left!16221 (left!16221 t!3734))))) p!1470))))

(declare-fun res!827991 () Bool)

(assert (=> b!1843016 (= res!827991 (exists!661 (left!16221 (left!16221 (left!16221 (left!16221 t!3734)))) p!1470))))

(assert (=> b!1843016 (=> res!827991 e!1177691)))

(declare-fun d!564027 () Bool)

(declare-fun lt!714509 () Bool)

(assert (=> d!564027 (= lt!714509 (exists!663 (list!8252 (left!16221 (left!16221 (left!16221 t!3734)))) p!1470))))

(declare-fun e!1177689 () Bool)

(assert (=> d!564027 (= lt!714509 e!1177689)))

(declare-fun res!827990 () Bool)

(assert (=> d!564027 (=> (not res!827990) (not e!1177689))))

(assert (=> d!564027 (= res!827990 (not ((_ is Empty!6709) (left!16221 (left!16221 (left!16221 t!3734))))))))

(assert (=> d!564027 (= (exists!661 (left!16221 (left!16221 (left!16221 t!3734))) p!1470) lt!714509)))

(declare-fun b!1843014 () Bool)

(assert (=> b!1843014 (= e!1177689 e!1177690)))

(declare-fun c!300905 () Bool)

(assert (=> b!1843014 (= c!300905 ((_ is Leaf!9800) (left!16221 (left!16221 (left!16221 t!3734)))))))

(declare-fun b!1843017 () Bool)

(assert (=> b!1843017 (= e!1177691 (exists!661 (right!16551 (left!16221 (left!16221 (left!16221 t!3734)))) p!1470))))

(assert (= (and d!564027 res!827990) b!1843014))

(assert (= (and b!1843014 c!300905) b!1843015))

(assert (= (and b!1843014 (not c!300905)) b!1843016))

(assert (= (and b!1843016 (not res!827991)) b!1843017))

(declare-fun m!2271359 () Bool)

(assert (=> b!1843015 m!2271359))

(assert (=> b!1843016 m!2271163))

(assert (=> b!1843016 m!2271165))

(assert (=> b!1843016 m!2271163))

(assert (=> b!1843016 m!2271165))

(declare-fun m!2271361 () Bool)

(assert (=> b!1843016 m!2271361))

(declare-fun m!2271363 () Bool)

(assert (=> b!1843016 m!2271363))

(assert (=> d!564027 m!2270673))

(assert (=> d!564027 m!2270673))

(assert (=> d!564027 m!2271355))

(declare-fun m!2271365 () Bool)

(assert (=> b!1843017 m!2271365))

(assert (=> b!1842697 d!564027))

(assert (=> b!1842610 d!563783))

(assert (=> b!1842610 d!563785))

(declare-fun b!1843020 () Bool)

(declare-fun res!827993 () Bool)

(declare-fun e!1177692 () Bool)

(assert (=> b!1843020 (=> (not res!827993) (not e!1177692))))

(declare-fun lt!714510 () List!20354)

(assert (=> b!1843020 (= res!827993 (= (size!16084 lt!714510) (+ (size!16084 (t!171825 (list!8252 (left!16221 (left!16221 t!3734))))) (size!16084 (list!8252 (right!16551 (left!16221 t!3734)))))))))

(declare-fun d!564029 () Bool)

(assert (=> d!564029 e!1177692))

(declare-fun res!827992 () Bool)

(assert (=> d!564029 (=> (not res!827992) (not e!1177692))))

(assert (=> d!564029 (= res!827992 (= (content!3022 lt!714510) ((_ map or) (content!3022 (t!171825 (list!8252 (left!16221 (left!16221 t!3734))))) (content!3022 (list!8252 (right!16551 (left!16221 t!3734)))))))))

(declare-fun e!1177693 () List!20354)

(assert (=> d!564029 (= lt!714510 e!1177693)))

(declare-fun c!300906 () Bool)

(assert (=> d!564029 (= c!300906 ((_ is Nil!20284) (t!171825 (list!8252 (left!16221 (left!16221 t!3734))))))))

(assert (=> d!564029 (= (++!5517 (t!171825 (list!8252 (left!16221 (left!16221 t!3734)))) (list!8252 (right!16551 (left!16221 t!3734)))) lt!714510)))

(declare-fun b!1843018 () Bool)

(assert (=> b!1843018 (= e!1177693 (list!8252 (right!16551 (left!16221 t!3734))))))

(declare-fun b!1843021 () Bool)

(assert (=> b!1843021 (= e!1177692 (or (not (= (list!8252 (right!16551 (left!16221 t!3734))) Nil!20284)) (= lt!714510 (t!171825 (list!8252 (left!16221 (left!16221 t!3734)))))))))

(declare-fun b!1843019 () Bool)

(assert (=> b!1843019 (= e!1177693 (Cons!20284 (h!25685 (t!171825 (list!8252 (left!16221 (left!16221 t!3734))))) (++!5517 (t!171825 (t!171825 (list!8252 (left!16221 (left!16221 t!3734))))) (list!8252 (right!16551 (left!16221 t!3734))))))))

(assert (= (and d!564029 c!300906) b!1843018))

(assert (= (and d!564029 (not c!300906)) b!1843019))

(assert (= (and d!564029 res!827992) b!1843020))

(assert (= (and b!1843020 res!827993) b!1843021))

(declare-fun m!2271367 () Bool)

(assert (=> b!1843020 m!2271367))

(assert (=> b!1843020 m!2271197))

(assert (=> b!1843020 m!2270529))

(assert (=> b!1843020 m!2270663))

(declare-fun m!2271369 () Bool)

(assert (=> d!564029 m!2271369))

(assert (=> d!564029 m!2271025))

(assert (=> d!564029 m!2270529))

(assert (=> d!564029 m!2270669))

(assert (=> b!1843019 m!2270529))

(declare-fun m!2271371 () Bool)

(assert (=> b!1843019 m!2271371))

(assert (=> b!1842654 d!564029))

(declare-fun b!1843022 () Bool)

(declare-fun e!1177694 () Bool)

(declare-fun tp!521007 () Bool)

(assert (=> b!1843022 (= e!1177694 (and tp_is_empty!8355 tp!521007))))

(assert (=> b!1842729 (= tp!520984 e!1177694)))

(assert (= (and b!1842729 ((_ is Cons!20284) (t!171825 (t!171825 (innerList!6769 (xs!9585 t!3734)))))) b!1843022))

(declare-fun b!1843023 () Bool)

(declare-fun e!1177695 () Bool)

(declare-fun tp!521008 () Bool)

(assert (=> b!1843023 (= e!1177695 (and tp_is_empty!8355 tp!521008))))

(assert (=> b!1842736 (= tp!520989 e!1177695)))

(assert (= (and b!1842736 ((_ is Cons!20284) (innerList!6769 (xs!9585 (right!16551 (right!16551 t!3734)))))) b!1843023))

(declare-fun tp!521011 () Bool)

(declare-fun b!1843024 () Bool)

(declare-fun e!1177696 () Bool)

(declare-fun tp!521010 () Bool)

(assert (=> b!1843024 (= e!1177696 (and (inv!26514 (left!16221 (left!16221 (left!16221 (right!16551 t!3734))))) tp!521011 (inv!26514 (right!16551 (left!16221 (left!16221 (right!16551 t!3734))))) tp!521010))))

(declare-fun b!1843026 () Bool)

(declare-fun e!1177697 () Bool)

(declare-fun tp!521009 () Bool)

(assert (=> b!1843026 (= e!1177697 tp!521009)))

(declare-fun b!1843025 () Bool)

(assert (=> b!1843025 (= e!1177696 (and (inv!26515 (xs!9585 (left!16221 (left!16221 (right!16551 t!3734))))) e!1177697))))

(assert (=> b!1842731 (= tp!520988 (and (inv!26514 (left!16221 (left!16221 (right!16551 t!3734)))) e!1177696))))

(assert (= (and b!1842731 ((_ is Node!6709) (left!16221 (left!16221 (right!16551 t!3734))))) b!1843024))

(assert (= b!1843025 b!1843026))

(assert (= (and b!1842731 ((_ is Leaf!9800) (left!16221 (left!16221 (right!16551 t!3734))))) b!1843025))

(declare-fun m!2271373 () Bool)

(assert (=> b!1843024 m!2271373))

(declare-fun m!2271375 () Bool)

(assert (=> b!1843024 m!2271375))

(declare-fun m!2271377 () Bool)

(assert (=> b!1843025 m!2271377))

(assert (=> b!1842731 m!2270807))

(declare-fun tp!521013 () Bool)

(declare-fun e!1177698 () Bool)

(declare-fun tp!521014 () Bool)

(declare-fun b!1843027 () Bool)

(assert (=> b!1843027 (= e!1177698 (and (inv!26514 (left!16221 (right!16551 (left!16221 (right!16551 t!3734))))) tp!521014 (inv!26514 (right!16551 (right!16551 (left!16221 (right!16551 t!3734))))) tp!521013))))

(declare-fun b!1843029 () Bool)

(declare-fun e!1177699 () Bool)

(declare-fun tp!521012 () Bool)

(assert (=> b!1843029 (= e!1177699 tp!521012)))

(declare-fun b!1843028 () Bool)

(assert (=> b!1843028 (= e!1177698 (and (inv!26515 (xs!9585 (right!16551 (left!16221 (right!16551 t!3734))))) e!1177699))))

(assert (=> b!1842731 (= tp!520987 (and (inv!26514 (right!16551 (left!16221 (right!16551 t!3734)))) e!1177698))))

(assert (= (and b!1842731 ((_ is Node!6709) (right!16551 (left!16221 (right!16551 t!3734))))) b!1843027))

(assert (= b!1843028 b!1843029))

(assert (= (and b!1842731 ((_ is Leaf!9800) (right!16551 (left!16221 (right!16551 t!3734))))) b!1843028))

(declare-fun m!2271379 () Bool)

(assert (=> b!1843027 m!2271379))

(declare-fun m!2271381 () Bool)

(assert (=> b!1843027 m!2271381))

(declare-fun m!2271383 () Bool)

(assert (=> b!1843028 m!2271383))

(assert (=> b!1842731 m!2270809))

(declare-fun b!1843030 () Bool)

(declare-fun e!1177700 () Bool)

(declare-fun tp!521015 () Bool)

(assert (=> b!1843030 (= e!1177700 (and tp_is_empty!8355 tp!521015))))

(assert (=> b!1842727 (= tp!520980 e!1177700)))

(assert (= (and b!1842727 ((_ is Cons!20284) (innerList!6769 (xs!9585 (right!16551 (left!16221 t!3734)))))) b!1843030))

(declare-fun b!1843031 () Bool)

(declare-fun tp!521018 () Bool)

(declare-fun tp!521017 () Bool)

(declare-fun e!1177701 () Bool)

(assert (=> b!1843031 (= e!1177701 (and (inv!26514 (left!16221 (left!16221 (left!16221 (left!16221 t!3734))))) tp!521018 (inv!26514 (right!16551 (left!16221 (left!16221 (left!16221 t!3734))))) tp!521017))))

(declare-fun b!1843033 () Bool)

(declare-fun e!1177702 () Bool)

(declare-fun tp!521016 () Bool)

(assert (=> b!1843033 (= e!1177702 tp!521016)))

(declare-fun b!1843032 () Bool)

(assert (=> b!1843032 (= e!1177701 (and (inv!26515 (xs!9585 (left!16221 (left!16221 (left!16221 t!3734))))) e!1177702))))

(assert (=> b!1842722 (= tp!520979 (and (inv!26514 (left!16221 (left!16221 (left!16221 t!3734)))) e!1177701))))

(assert (= (and b!1842722 ((_ is Node!6709) (left!16221 (left!16221 (left!16221 t!3734))))) b!1843031))

(assert (= b!1843032 b!1843033))

(assert (= (and b!1842722 ((_ is Leaf!9800) (left!16221 (left!16221 (left!16221 t!3734))))) b!1843032))

(declare-fun m!2271385 () Bool)

(assert (=> b!1843031 m!2271385))

(declare-fun m!2271387 () Bool)

(assert (=> b!1843031 m!2271387))

(declare-fun m!2271389 () Bool)

(assert (=> b!1843032 m!2271389))

(assert (=> b!1842722 m!2270795))

(declare-fun e!1177703 () Bool)

(declare-fun tp!521021 () Bool)

(declare-fun b!1843034 () Bool)

(declare-fun tp!521020 () Bool)

(assert (=> b!1843034 (= e!1177703 (and (inv!26514 (left!16221 (right!16551 (left!16221 (left!16221 t!3734))))) tp!521021 (inv!26514 (right!16551 (right!16551 (left!16221 (left!16221 t!3734))))) tp!521020))))

(declare-fun b!1843036 () Bool)

(declare-fun e!1177704 () Bool)

(declare-fun tp!521019 () Bool)

(assert (=> b!1843036 (= e!1177704 tp!521019)))

(declare-fun b!1843035 () Bool)

(assert (=> b!1843035 (= e!1177703 (and (inv!26515 (xs!9585 (right!16551 (left!16221 (left!16221 t!3734))))) e!1177704))))

(assert (=> b!1842722 (= tp!520978 (and (inv!26514 (right!16551 (left!16221 (left!16221 t!3734)))) e!1177703))))

(assert (= (and b!1842722 ((_ is Node!6709) (right!16551 (left!16221 (left!16221 t!3734))))) b!1843034))

(assert (= b!1843035 b!1843036))

(assert (= (and b!1842722 ((_ is Leaf!9800) (right!16551 (left!16221 (left!16221 t!3734))))) b!1843035))

(declare-fun m!2271391 () Bool)

(assert (=> b!1843034 m!2271391))

(declare-fun m!2271393 () Bool)

(assert (=> b!1843034 m!2271393))

(declare-fun m!2271395 () Bool)

(assert (=> b!1843035 m!2271395))

(assert (=> b!1842722 m!2270797))

(declare-fun b!1843037 () Bool)

(declare-fun e!1177705 () Bool)

(declare-fun tp!521022 () Bool)

(assert (=> b!1843037 (= e!1177705 (and tp_is_empty!8355 tp!521022))))

(assert (=> b!1842730 (= tp!520985 e!1177705)))

(assert (= (and b!1842730 ((_ is Cons!20284) (t!171825 (innerList!6769 (xs!9585 (left!16221 t!3734)))))) b!1843037))

(declare-fun b!1843038 () Bool)

(declare-fun e!1177706 () Bool)

(declare-fun tp!521023 () Bool)

(assert (=> b!1843038 (= e!1177706 (and tp_is_empty!8355 tp!521023))))

(assert (=> b!1842728 (= tp!520983 e!1177706)))

(assert (= (and b!1842728 ((_ is Cons!20284) (t!171825 (innerList!6769 (xs!9585 (right!16551 t!3734)))))) b!1843038))

(declare-fun tp!521025 () Bool)

(declare-fun e!1177707 () Bool)

(declare-fun b!1843039 () Bool)

(declare-fun tp!521026 () Bool)

(assert (=> b!1843039 (= e!1177707 (and (inv!26514 (left!16221 (left!16221 (right!16551 (right!16551 t!3734))))) tp!521026 (inv!26514 (right!16551 (left!16221 (right!16551 (right!16551 t!3734))))) tp!521025))))

(declare-fun b!1843041 () Bool)

(declare-fun e!1177708 () Bool)

(declare-fun tp!521024 () Bool)

(assert (=> b!1843041 (= e!1177708 tp!521024)))

(declare-fun b!1843040 () Bool)

(assert (=> b!1843040 (= e!1177707 (and (inv!26515 (xs!9585 (left!16221 (right!16551 (right!16551 t!3734))))) e!1177708))))

(assert (=> b!1842734 (= tp!520991 (and (inv!26514 (left!16221 (right!16551 (right!16551 t!3734)))) e!1177707))))

(assert (= (and b!1842734 ((_ is Node!6709) (left!16221 (right!16551 (right!16551 t!3734))))) b!1843039))

(assert (= b!1843040 b!1843041))

(assert (= (and b!1842734 ((_ is Leaf!9800) (left!16221 (right!16551 (right!16551 t!3734))))) b!1843040))

(declare-fun m!2271397 () Bool)

(assert (=> b!1843039 m!2271397))

(declare-fun m!2271399 () Bool)

(assert (=> b!1843039 m!2271399))

(declare-fun m!2271401 () Bool)

(assert (=> b!1843040 m!2271401))

(assert (=> b!1842734 m!2270813))

(declare-fun e!1177709 () Bool)

(declare-fun b!1843042 () Bool)

(declare-fun tp!521029 () Bool)

(declare-fun tp!521028 () Bool)

(assert (=> b!1843042 (= e!1177709 (and (inv!26514 (left!16221 (right!16551 (right!16551 (right!16551 t!3734))))) tp!521029 (inv!26514 (right!16551 (right!16551 (right!16551 (right!16551 t!3734))))) tp!521028))))

(declare-fun b!1843044 () Bool)

(declare-fun e!1177710 () Bool)

(declare-fun tp!521027 () Bool)

(assert (=> b!1843044 (= e!1177710 tp!521027)))

(declare-fun b!1843043 () Bool)

(assert (=> b!1843043 (= e!1177709 (and (inv!26515 (xs!9585 (right!16551 (right!16551 (right!16551 t!3734))))) e!1177710))))

(assert (=> b!1842734 (= tp!520990 (and (inv!26514 (right!16551 (right!16551 (right!16551 t!3734)))) e!1177709))))

(assert (= (and b!1842734 ((_ is Node!6709) (right!16551 (right!16551 (right!16551 t!3734))))) b!1843042))

(assert (= b!1843043 b!1843044))

(assert (= (and b!1842734 ((_ is Leaf!9800) (right!16551 (right!16551 (right!16551 t!3734))))) b!1843043))

(declare-fun m!2271403 () Bool)

(assert (=> b!1843042 m!2271403))

(declare-fun m!2271405 () Bool)

(assert (=> b!1843042 m!2271405))

(declare-fun m!2271407 () Bool)

(assert (=> b!1843043 m!2271407))

(assert (=> b!1842734 m!2270815))

(declare-fun e!1177711 () Bool)

(declare-fun tp!521032 () Bool)

(declare-fun tp!521031 () Bool)

(declare-fun b!1843045 () Bool)

(assert (=> b!1843045 (= e!1177711 (and (inv!26514 (left!16221 (left!16221 (right!16551 (left!16221 t!3734))))) tp!521032 (inv!26514 (right!16551 (left!16221 (right!16551 (left!16221 t!3734))))) tp!521031))))

(declare-fun b!1843047 () Bool)

(declare-fun e!1177712 () Bool)

(declare-fun tp!521030 () Bool)

(assert (=> b!1843047 (= e!1177712 tp!521030)))

(declare-fun b!1843046 () Bool)

(assert (=> b!1843046 (= e!1177711 (and (inv!26515 (xs!9585 (left!16221 (right!16551 (left!16221 t!3734))))) e!1177712))))

(assert (=> b!1842725 (= tp!520982 (and (inv!26514 (left!16221 (right!16551 (left!16221 t!3734)))) e!1177711))))

(assert (= (and b!1842725 ((_ is Node!6709) (left!16221 (right!16551 (left!16221 t!3734))))) b!1843045))

(assert (= b!1843046 b!1843047))

(assert (= (and b!1842725 ((_ is Leaf!9800) (left!16221 (right!16551 (left!16221 t!3734))))) b!1843046))

(declare-fun m!2271409 () Bool)

(assert (=> b!1843045 m!2271409))

(declare-fun m!2271411 () Bool)

(assert (=> b!1843045 m!2271411))

(declare-fun m!2271413 () Bool)

(assert (=> b!1843046 m!2271413))

(assert (=> b!1842725 m!2270801))

(declare-fun tp!521034 () Bool)

(declare-fun b!1843048 () Bool)

(declare-fun e!1177713 () Bool)

(declare-fun tp!521035 () Bool)

(assert (=> b!1843048 (= e!1177713 (and (inv!26514 (left!16221 (right!16551 (right!16551 (left!16221 t!3734))))) tp!521035 (inv!26514 (right!16551 (right!16551 (right!16551 (left!16221 t!3734))))) tp!521034))))

(declare-fun b!1843050 () Bool)

(declare-fun e!1177714 () Bool)

(declare-fun tp!521033 () Bool)

(assert (=> b!1843050 (= e!1177714 tp!521033)))

(declare-fun b!1843049 () Bool)

(assert (=> b!1843049 (= e!1177713 (and (inv!26515 (xs!9585 (right!16551 (right!16551 (left!16221 t!3734))))) e!1177714))))

(assert (=> b!1842725 (= tp!520981 (and (inv!26514 (right!16551 (right!16551 (left!16221 t!3734)))) e!1177713))))

(assert (= (and b!1842725 ((_ is Node!6709) (right!16551 (right!16551 (left!16221 t!3734))))) b!1843048))

(assert (= b!1843049 b!1843050))

(assert (= (and b!1842725 ((_ is Leaf!9800) (right!16551 (right!16551 (left!16221 t!3734))))) b!1843049))

(declare-fun m!2271415 () Bool)

(assert (=> b!1843048 m!2271415))

(declare-fun m!2271417 () Bool)

(assert (=> b!1843048 m!2271417))

(declare-fun m!2271419 () Bool)

(assert (=> b!1843049 m!2271419))

(assert (=> b!1842725 m!2270803))

(declare-fun b!1843051 () Bool)

(declare-fun e!1177715 () Bool)

(declare-fun tp!521036 () Bool)

(assert (=> b!1843051 (= e!1177715 (and tp_is_empty!8355 tp!521036))))

(assert (=> b!1842733 (= tp!520986 e!1177715)))

(assert (= (and b!1842733 ((_ is Cons!20284) (innerList!6769 (xs!9585 (left!16221 (right!16551 t!3734)))))) b!1843051))

(declare-fun b!1843052 () Bool)

(declare-fun e!1177716 () Bool)

(declare-fun tp!521037 () Bool)

(assert (=> b!1843052 (= e!1177716 (and tp_is_empty!8355 tp!521037))))

(assert (=> b!1842724 (= tp!520977 e!1177716)))

(assert (= (and b!1842724 ((_ is Cons!20284) (innerList!6769 (xs!9585 (left!16221 (left!16221 t!3734)))))) b!1843052))

(declare-fun b_lambda!61095 () Bool)

(assert (= b_lambda!61093 (or d!563729 b_lambda!61095)))

(declare-fun bs!408737 () Bool)

(declare-fun d!564031 () Bool)

(assert (= bs!408737 (and d!564031 d!563729)))

(assert (=> bs!408737 (= (dynLambda!10088 lambda!72331 (h!25685 (list!8252 (left!16221 t!3734)))) (not (dynLambda!10088 p!1470 (h!25685 (list!8252 (left!16221 t!3734))))))))

(declare-fun b_lambda!61101 () Bool)

(assert (=> (not b_lambda!61101) (not bs!408737)))

(declare-fun t!171834 () Bool)

(declare-fun tb!112813 () Bool)

(assert (=> (and start!183542 (= p!1470 p!1470) t!171834) tb!112813))

(declare-fun result!135768 () Bool)

(assert (=> tb!112813 (= result!135768 true)))

(assert (=> bs!408737 t!171834))

(declare-fun b_and!143649 () Bool)

(assert (= b_and!143647 (and (=> t!171834 result!135768) b_and!143649)))

(declare-fun m!2271421 () Bool)

(assert (=> bs!408737 m!2271421))

(assert (=> b!1842980 d!564031))

(declare-fun b_lambda!61097 () Bool)

(assert (= b_lambda!61089 (or d!563725 b_lambda!61097)))

(declare-fun bs!408738 () Bool)

(declare-fun d!564033 () Bool)

(assert (= bs!408738 (and d!564033 d!563725)))

(assert (=> bs!408738 (= (dynLambda!10088 lambda!72330 (h!25685 (++!5517 (list!8252 (left!16221 t!3734)) (list!8252 (right!16551 t!3734))))) (not (dynLambda!10088 p!1470 (h!25685 (++!5517 (list!8252 (left!16221 t!3734)) (list!8252 (right!16551 t!3734)))))))))

(declare-fun b_lambda!61103 () Bool)

(assert (=> (not b_lambda!61103) (not bs!408738)))

(declare-fun t!171836 () Bool)

(declare-fun tb!112815 () Bool)

(assert (=> (and start!183542 (= p!1470 p!1470) t!171836) tb!112815))

(declare-fun result!135770 () Bool)

(assert (=> tb!112815 (= result!135770 true)))

(assert (=> bs!408738 t!171836))

(declare-fun b_and!143651 () Bool)

(assert (= b_and!143649 (and (=> t!171836 result!135770) b_and!143651)))

(declare-fun m!2271423 () Bool)

(assert (=> bs!408738 m!2271423))

(assert (=> b!1842961 d!564033))

(declare-fun b_lambda!61099 () Bool)

(assert (= b_lambda!61091 (or d!563721 b_lambda!61099)))

(declare-fun bs!408739 () Bool)

(declare-fun d!564035 () Bool)

(assert (= bs!408739 (and d!564035 d!563721)))

(assert (=> bs!408739 (= (dynLambda!10088 lambda!72329 (h!25685 (list!8252 (right!16551 t!3734)))) (not (dynLambda!10088 p!1470 (h!25685 (list!8252 (right!16551 t!3734))))))))

(declare-fun b_lambda!61105 () Bool)

(assert (=> (not b_lambda!61105) (not bs!408739)))

(declare-fun t!171838 () Bool)

(declare-fun tb!112817 () Bool)

(assert (=> (and start!183542 (= p!1470 p!1470) t!171838) tb!112817))

(declare-fun result!135772 () Bool)

(assert (=> tb!112817 (= result!135772 true)))

(assert (=> bs!408739 t!171838))

(declare-fun b_and!143653 () Bool)

(assert (= b_and!143651 (and (=> t!171838 result!135772) b_and!143653)))

(declare-fun m!2271425 () Bool)

(assert (=> bs!408739 m!2271425))

(assert (=> b!1842978 d!564035))

(check-sat (not b!1843023) (not d!564027) (not b!1842989) (not b!1842855) (not b!1843052) (not b!1842882) (not d!563927) (not b!1842965) (not b!1843040) (not b!1842892) (not b!1842891) (not d!564003) (not d!563885) (not b!1842912) (not b!1842946) (not b!1843041) (not b!1842865) (not b!1842924) (not b!1842998) (not d!563843) (not b!1842952) (not b!1843002) (not b!1842904) (not d!564023) (not d!563871) (not b!1842916) (not d!563859) (not d!563971) (not b!1842725) (not b!1842973) (not d!564013) (not b!1843013) (not b!1843001) (not d!563967) (not b!1842966) (not d!563979) (not b!1842933) (not b!1842903) (not b!1843008) (not b!1843020) (not b!1842734) (not b!1843039) (not b!1842849) (not b!1843029) (not b!1842906) (not d!563883) (not b!1843049) (not b!1842964) (not b!1842997) (not b!1842858) (not d!563931) (not d!563899) (not b!1842926) (not b!1842731) (not b!1843006) (not b!1842900) (not b!1842840) (not b!1842917) (not b!1842920) (not b!1842950) (not b!1842934) (not b!1843010) (not b!1842722) (not b!1842962) (not b!1842922) (not b!1843026) (not b!1842992) tp_is_empty!8355 (not b!1843044) (not b!1842902) (not d!563891) b_and!143653 (not b!1843011) (not b_lambda!61095) (not b!1842938) (not d!563939) (not b!1842937) (not d!563853) (not b!1842851) (not d!564011) (not b!1843045) (not b!1843030) (not d!563863) (not b!1842985) (not b!1843047) (not b!1842968) (not b!1843027) (not d!563845) (not d!563861) (not d!563857) (not b!1843048) (not b!1842868) (not b!1843025) (not d!563841) (not b!1843043) (not b!1843015) (not b!1843019) (not b!1842870) (not b_next!52213) (not d!563983) (not d!563965) (not b!1842935) (not b!1842983) (not b!1843028) (not b!1843036) (not b!1842955) (not b!1843003) (not b!1843031) (not b_lambda!61097) (not d!563897) (not b!1842857) (not b!1842838) (not b!1842895) (not b!1842872) (not b!1843037) (not b!1843005) (not b!1842896) (not d!563981) (not d!563943) (not b!1842852) (not d!563905) (not b!1842867) (not b!1843038) (not b!1842942) (not b!1842860) (not b!1842876) (not d!563973) (not b!1842915) (not b!1842928) (not b!1842948) (not b!1842919) (not b!1842976) (not d!563977) (not b!1842890) (not b!1843032) (not b!1842899) (not b!1843017) (not b!1842971) (not b!1842940) (not b!1842930) (not d!563925) (not b!1843046) (not b!1842993) (not b!1842874) (not b!1843034) (not b_lambda!61103) (not b_lambda!61105) (not b!1843042) (not b!1842863) (not b!1842981) (not d!563907) (not b!1842878) (not b!1843016) (not b!1842862) (not b!1842979) (not b_lambda!61101) (not b!1842911) (not b!1842975) (not d!563997) (not b_lambda!61099) (not b!1843024) (not b!1842847) (not d!563941) (not b!1842881) (not b!1843033) (not b!1842954) (not b!1843022) (not b!1842987) (not d!564025) (not b!1842907) (not d!564029) (not b!1843050) (not b!1842932) (not b!1843035) (not b!1843051) (not b!1842944) (not b!1842887) (not b!1842886) (not d!563929))
(check-sat b_and!143653 (not b_next!52213))
