; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!216488 () Bool)

(assert start!216488)

(declare-fun res!953227 () Bool)

(declare-fun e!1417518 () Bool)

(assert (=> start!216488 (=> (not res!953227) (not e!1417518))))

(declare-fun from!770 () Int)

(declare-fun to!262 () Int)

(assert (=> start!216488 (= res!953227 (and (<= 0 from!770) (<= from!770 to!262)))))

(assert (=> start!216488 e!1417518))

(assert (=> start!216488 true))

(declare-fun e!1417520 () Bool)

(assert (=> start!216488 e!1417520))

(declare-fun b!2219647 () Bool)

(declare-fun e!1417519 () Bool)

(assert (=> b!2219647 (= e!1417518 (not e!1417519))))

(declare-fun res!953226 () Bool)

(assert (=> b!2219647 (=> res!953226 e!1417519)))

(declare-fun lt!827258 () Int)

(assert (=> b!2219647 (= res!953226 (> to!262 lt!827258))))

(declare-datatypes ((T!40992 0))(
  ( (T!40993 (val!7446 Int)) )
))
(declare-datatypes ((List!26094 0))(
  ( (Nil!26007) (Cons!26007 (h!31408 T!40992) (t!199497 List!26094)) )
))
(declare-fun lt!827259 () List!26094)

(declare-fun size!20285 (List!26094) Int)

(assert (=> b!2219647 (= lt!827258 (size!20285 lt!827259))))

(declare-datatypes ((Conc!8507 0) (List!26096 0) (BalanceConc!16736 0) (IArray!17019 0) (Object!4424 0))(
  ( (Node!8507 (left!20002 Conc!8507) (right!20332 Conc!8507) (csize!17244 Int) (cheight!8718 Int)) (Leaf!12475 (xs!11449 IArray!17019) (csize!17245 Int)) (Empty!8507) )
  ( (Nil!26008) (Cons!26008 (h!31409 Object!4424) (t!199498 List!26096)) )
  ( (BalanceConc!16737 (c!354427 Conc!8507)) )
  ( (IArray!17020 (innerList!8567 List!26096)) )
  ( (BalanceConc!16735 (value!132491 BalanceConc!16736)) (List!26095 (value!132492 List!26096)) (Character!86 (value!132493 (_ BitVec 16))) (Open!86 (value!132494 Int)) )
))
(declare-datatypes ((Vector!176 0))(
  ( (Vector!177 (underlying!6120 Object!4424) (overflowing!145 List!26094)) )
))
(declare-fun thiss!9390 () Vector!176)

(declare-fun list!10093 (Vector!176) List!26094)

(assert (=> b!2219647 (= lt!827259 (list!10093 thiss!9390))))

(declare-fun size!20286 (Vector!176) Int)

(assert (=> b!2219647 (= lt!827258 (size!20286 thiss!9390))))

(declare-fun b!2219648 () Bool)

(declare-fun choose!13083 (Vector!176 Int Int) Vector!176)

(declare-fun slice!631 (List!26094 Int Int) List!26094)

(assert (=> b!2219648 (= e!1417519 (= (list!10093 (choose!13083 thiss!9390 from!770 to!262)) (slice!631 lt!827259 from!770 to!262)))))

(declare-fun b!2219649 () Bool)

(declare-fun tp!691353 () Bool)

(declare-fun tp!691354 () Bool)

(assert (=> b!2219649 (= e!1417520 (and tp!691353 tp!691354))))

(assert (= (and start!216488 res!953227) b!2219647))

(assert (= (and b!2219647 (not res!953226)) b!2219648))

(assert (= start!216488 b!2219649))

(declare-fun m!2660577 () Bool)

(assert (=> b!2219647 m!2660577))

(declare-fun m!2660579 () Bool)

(assert (=> b!2219647 m!2660579))

(declare-fun m!2660581 () Bool)

(assert (=> b!2219647 m!2660581))

(declare-fun m!2660583 () Bool)

(assert (=> b!2219648 m!2660583))

(assert (=> b!2219648 m!2660583))

(declare-fun m!2660585 () Bool)

(assert (=> b!2219648 m!2660585))

(declare-fun m!2660587 () Bool)

(assert (=> b!2219648 m!2660587))

(check-sat (not b!2219647) (not b!2219648) (not b!2219649))
(check-sat)
(get-model)

(declare-fun d!663550 () Bool)

(declare-fun lt!827262 () Int)

(assert (=> d!663550 (>= lt!827262 0)))

(declare-fun e!1417523 () Int)

(assert (=> d!663550 (= lt!827262 e!1417523)))

(declare-fun c!354430 () Bool)

(get-info :version)

(assert (=> d!663550 (= c!354430 ((_ is Nil!26007) lt!827259))))

(assert (=> d!663550 (= (size!20285 lt!827259) lt!827262)))

(declare-fun b!2219654 () Bool)

(assert (=> b!2219654 (= e!1417523 0)))

(declare-fun b!2219655 () Bool)

(assert (=> b!2219655 (= e!1417523 (+ 1 (size!20285 (t!199497 lt!827259))))))

(assert (= (and d!663550 c!354430) b!2219654))

(assert (= (and d!663550 (not c!354430)) b!2219655))

(declare-fun m!2660589 () Bool)

(assert (=> b!2219655 m!2660589))

(assert (=> b!2219647 d!663550))

(declare-fun d!663552 () Bool)

(declare-fun choose!13084 (Vector!176) List!26094)

(assert (=> d!663552 (= (list!10093 thiss!9390) (choose!13084 thiss!9390))))

(declare-fun bs!452179 () Bool)

(assert (= bs!452179 d!663552))

(declare-fun m!2660591 () Bool)

(assert (=> bs!452179 m!2660591))

(assert (=> b!2219647 d!663552))

(declare-fun d!663554 () Bool)

(declare-fun lt!827265 () Int)

(assert (=> d!663554 (= lt!827265 (size!20285 (list!10093 thiss!9390)))))

(declare-fun choose!13085 (Vector!176) Int)

(assert (=> d!663554 (= lt!827265 (choose!13085 thiss!9390))))

(assert (=> d!663554 (= (size!20286 thiss!9390) lt!827265)))

(declare-fun bs!452180 () Bool)

(assert (= bs!452180 d!663554))

(assert (=> bs!452180 m!2660579))

(assert (=> bs!452180 m!2660579))

(declare-fun m!2660593 () Bool)

(assert (=> bs!452180 m!2660593))

(declare-fun m!2660595 () Bool)

(assert (=> bs!452180 m!2660595))

(assert (=> b!2219647 d!663554))

(declare-fun d!663558 () Bool)

(assert (=> d!663558 (= (list!10093 (choose!13083 thiss!9390 from!770 to!262)) (choose!13084 (choose!13083 thiss!9390 from!770 to!262)))))

(declare-fun bs!452181 () Bool)

(assert (= bs!452181 d!663558))

(assert (=> bs!452181 m!2660583))

(declare-fun m!2660597 () Bool)

(assert (=> bs!452181 m!2660597))

(assert (=> b!2219648 d!663558))

(declare-fun d!663560 () Bool)

(declare-fun choose!13086 (Vector!176 Int Int) Vector!176)

(assert (=> d!663560 (= (choose!13083 thiss!9390 from!770 to!262) (choose!13086 thiss!9390 from!770 to!262))))

(declare-fun bs!452182 () Bool)

(assert (= bs!452182 d!663560))

(declare-fun m!2660599 () Bool)

(assert (=> bs!452182 m!2660599))

(assert (=> b!2219648 d!663560))

(declare-fun d!663562 () Bool)

(declare-fun take!472 (List!26094 Int) List!26094)

(declare-fun drop!1490 (List!26094 Int) List!26094)

(assert (=> d!663562 (= (slice!631 lt!827259 from!770 to!262) (take!472 (drop!1490 lt!827259 from!770) (- to!262 from!770)))))

(declare-fun bs!452184 () Bool)

(assert (= bs!452184 d!663562))

(declare-fun m!2660605 () Bool)

(assert (=> bs!452184 m!2660605))

(assert (=> bs!452184 m!2660605))

(declare-fun m!2660607 () Bool)

(assert (=> bs!452184 m!2660607))

(assert (=> b!2219648 d!663562))

(declare-fun b!2219671 () Bool)

(declare-fun e!1417532 () Bool)

(declare-fun tp!691359 () Bool)

(declare-fun inv!35296 (Conc!8507) Bool)

(assert (=> b!2219671 (= e!1417532 (and (inv!35296 (c!354427 (value!132491 (underlying!6120 thiss!9390)))) tp!691359))))

(declare-fun b!2219670 () Bool)

(declare-fun e!1417531 () Bool)

(declare-fun inv!35297 (BalanceConc!16736) Bool)

(assert (=> b!2219670 (= e!1417531 (and (inv!35297 (value!132491 (underlying!6120 thiss!9390))) e!1417532))))

(declare-fun b!2219672 () Bool)

(declare-fun tp!691360 () Bool)

(assert (=> b!2219672 (= e!1417531 tp!691360)))

(assert (=> b!2219649 (= tp!691353 e!1417531)))

(assert (= b!2219670 b!2219671))

(assert (= (and b!2219649 ((_ is BalanceConc!16735) (underlying!6120 thiss!9390))) b!2219670))

(assert (= (and b!2219649 ((_ is List!26095) (underlying!6120 thiss!9390))) b!2219672))

(declare-fun m!2660615 () Bool)

(assert (=> b!2219671 m!2660615))

(declare-fun m!2660617 () Bool)

(assert (=> b!2219670 m!2660617))

(declare-fun b!2219677 () Bool)

(declare-fun e!1417535 () Bool)

(declare-fun tp_is_empty!9883 () Bool)

(declare-fun tp!691363 () Bool)

(assert (=> b!2219677 (= e!1417535 (and tp_is_empty!9883 tp!691363))))

(assert (=> b!2219649 (= tp!691354 e!1417535)))

(assert (= (and b!2219649 ((_ is Cons!26007) (overflowing!145 thiss!9390))) b!2219677))

(check-sat (not b!2219655) tp_is_empty!9883 (not b!2219677) (not b!2219670) (not b!2219671) (not b!2219672) (not d!663554) (not d!663558) (not d!663562) (not d!663552) (not d!663560))
(check-sat)
(get-model)

(declare-fun d!663574 () Bool)

(declare-fun lt!827272 () Int)

(assert (=> d!663574 (>= lt!827272 0)))

(declare-fun e!1417545 () Int)

(assert (=> d!663574 (= lt!827272 e!1417545)))

(declare-fun c!354434 () Bool)

(assert (=> d!663574 (= c!354434 ((_ is Nil!26007) (list!10093 thiss!9390)))))

(assert (=> d!663574 (= (size!20285 (list!10093 thiss!9390)) lt!827272)))

(declare-fun b!2219694 () Bool)

(assert (=> b!2219694 (= e!1417545 0)))

(declare-fun b!2219695 () Bool)

(assert (=> b!2219695 (= e!1417545 (+ 1 (size!20285 (t!199497 (list!10093 thiss!9390)))))))

(assert (= (and d!663574 c!354434) b!2219694))

(assert (= (and d!663574 (not c!354434)) b!2219695))

(declare-fun m!2660629 () Bool)

(assert (=> b!2219695 m!2660629))

(assert (=> d!663554 d!663574))

(assert (=> d!663554 d!663552))

(declare-fun d!663576 () Bool)

(declare-fun res!953230 () Int)

(assert (=> d!663576 (= res!953230 (size!20285 (list!10093 thiss!9390)))))

(assert (=> d!663576 true))

(assert (=> d!663576 (= (choose!13085 thiss!9390) res!953230)))

(declare-fun bs!452189 () Bool)

(assert (= bs!452189 d!663576))

(assert (=> bs!452189 m!2660579))

(assert (=> bs!452189 m!2660579))

(assert (=> bs!452189 m!2660593))

(assert (=> d!663554 d!663576))

(declare-fun d!663578 () Bool)

(declare-fun e!1417557 () Bool)

(assert (=> d!663578 e!1417557))

(declare-fun res!953233 () Bool)

(assert (=> d!663578 (=> (not res!953233) (not e!1417557))))

(declare-fun lt!827275 () List!26094)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3531 (List!26094) (InoxSet T!40992))

(assert (=> d!663578 (= res!953233 (= ((_ map implies) (content!3531 lt!827275) (content!3531 (drop!1490 lt!827259 from!770))) ((as const (InoxSet T!40992)) true)))))

(declare-fun e!1417555 () List!26094)

(assert (=> d!663578 (= lt!827275 e!1417555)))

(declare-fun c!354441 () Bool)

(assert (=> d!663578 (= c!354441 (or ((_ is Nil!26007) (drop!1490 lt!827259 from!770)) (<= (- to!262 from!770) 0)))))

(assert (=> d!663578 (= (take!472 (drop!1490 lt!827259 from!770) (- to!262 from!770)) lt!827275)))

(declare-fun b!2219710 () Bool)

(declare-fun e!1417556 () Int)

(assert (=> b!2219710 (= e!1417556 (size!20285 (drop!1490 lt!827259 from!770)))))

(declare-fun b!2219711 () Bool)

(assert (=> b!2219711 (= e!1417555 Nil!26007)))

(declare-fun b!2219712 () Bool)

(assert (=> b!2219712 (= e!1417555 (Cons!26007 (h!31408 (drop!1490 lt!827259 from!770)) (take!472 (t!199497 (drop!1490 lt!827259 from!770)) (- (- to!262 from!770) 1))))))

(declare-fun b!2219713 () Bool)

(declare-fun e!1417554 () Int)

(assert (=> b!2219713 (= e!1417554 0)))

(declare-fun b!2219714 () Bool)

(assert (=> b!2219714 (= e!1417554 e!1417556)))

(declare-fun c!354442 () Bool)

(assert (=> b!2219714 (= c!354442 (>= (- to!262 from!770) (size!20285 (drop!1490 lt!827259 from!770))))))

(declare-fun b!2219715 () Bool)

(assert (=> b!2219715 (= e!1417556 (- to!262 from!770))))

(declare-fun b!2219716 () Bool)

(assert (=> b!2219716 (= e!1417557 (= (size!20285 lt!827275) e!1417554))))

(declare-fun c!354443 () Bool)

(assert (=> b!2219716 (= c!354443 (<= (- to!262 from!770) 0))))

(assert (= (and d!663578 c!354441) b!2219711))

(assert (= (and d!663578 (not c!354441)) b!2219712))

(assert (= (and d!663578 res!953233) b!2219716))

(assert (= (and b!2219716 c!354443) b!2219713))

(assert (= (and b!2219716 (not c!354443)) b!2219714))

(assert (= (and b!2219714 c!354442) b!2219710))

(assert (= (and b!2219714 (not c!354442)) b!2219715))

(assert (=> b!2219714 m!2660605))

(declare-fun m!2660631 () Bool)

(assert (=> b!2219714 m!2660631))

(declare-fun m!2660633 () Bool)

(assert (=> b!2219712 m!2660633))

(assert (=> b!2219710 m!2660605))

(assert (=> b!2219710 m!2660631))

(declare-fun m!2660635 () Bool)

(assert (=> b!2219716 m!2660635))

(declare-fun m!2660637 () Bool)

(assert (=> d!663578 m!2660637))

(assert (=> d!663578 m!2660605))

(declare-fun m!2660639 () Bool)

(assert (=> d!663578 m!2660639))

(assert (=> d!663562 d!663578))

(declare-fun b!2219741 () Bool)

(declare-fun e!1417574 () Int)

(assert (=> b!2219741 (= e!1417574 0)))

(declare-fun b!2219743 () Bool)

(declare-fun e!1417575 () Int)

(assert (=> b!2219743 (= e!1417575 e!1417574)))

(declare-fun c!354455 () Bool)

(declare-fun call!132426 () Int)

(assert (=> b!2219743 (= c!354455 (>= from!770 call!132426))))

(declare-fun b!2219744 () Bool)

(assert (=> b!2219744 (= e!1417574 (- call!132426 from!770))))

(declare-fun b!2219745 () Bool)

(declare-fun e!1417572 () Bool)

(declare-fun lt!827280 () List!26094)

(assert (=> b!2219745 (= e!1417572 (= (size!20285 lt!827280) e!1417575))))

(declare-fun c!354457 () Bool)

(assert (=> b!2219745 (= c!354457 (<= from!770 0))))

(declare-fun b!2219746 () Bool)

(declare-fun e!1417573 () List!26094)

(declare-fun e!1417577 () List!26094)

(assert (=> b!2219746 (= e!1417573 e!1417577)))

(declare-fun c!354453 () Bool)

(assert (=> b!2219746 (= c!354453 (<= from!770 0))))

(declare-fun d!663580 () Bool)

(assert (=> d!663580 e!1417572))

(declare-fun res!953239 () Bool)

(assert (=> d!663580 (=> (not res!953239) (not e!1417572))))

(assert (=> d!663580 (= res!953239 (= ((_ map implies) (content!3531 lt!827280) (content!3531 lt!827259)) ((as const (InoxSet T!40992)) true)))))

(assert (=> d!663580 (= lt!827280 e!1417573)))

(declare-fun c!354454 () Bool)

(assert (=> d!663580 (= c!354454 ((_ is Nil!26007) lt!827259))))

(assert (=> d!663580 (= (drop!1490 lt!827259 from!770) lt!827280)))

(declare-fun b!2219747 () Bool)

(assert (=> b!2219747 (= e!1417575 call!132426)))

(declare-fun b!2219748 () Bool)

(assert (=> b!2219748 (= e!1417577 lt!827259)))

(declare-fun bm!132421 () Bool)

(assert (=> bm!132421 (= call!132426 (size!20285 lt!827259))))

(declare-fun b!2219749 () Bool)

(assert (=> b!2219749 (= e!1417573 Nil!26007)))

(declare-fun b!2219750 () Bool)

(assert (=> b!2219750 (= e!1417577 (drop!1490 (t!199497 lt!827259) (- from!770 1)))))

(assert (= (and d!663580 c!354454) b!2219749))

(assert (= (and d!663580 (not c!354454)) b!2219746))

(assert (= (and b!2219746 c!354453) b!2219748))

(assert (= (and b!2219746 (not c!354453)) b!2219750))

(assert (= (and d!663580 res!953239) b!2219745))

(assert (= (and b!2219745 c!354457) b!2219747))

(assert (= (and b!2219745 (not c!354457)) b!2219743))

(assert (= (and b!2219743 c!354455) b!2219741))

(assert (= (and b!2219743 (not c!354455)) b!2219744))

(assert (= (or b!2219747 b!2219743 b!2219744) bm!132421))

(declare-fun m!2660645 () Bool)

(assert (=> b!2219745 m!2660645))

(declare-fun m!2660647 () Bool)

(assert (=> d!663580 m!2660647))

(declare-fun m!2660649 () Bool)

(assert (=> d!663580 m!2660649))

(assert (=> bm!132421 m!2660577))

(declare-fun m!2660651 () Bool)

(assert (=> b!2219750 m!2660651))

(assert (=> d!663562 d!663580))

(declare-fun d!663590 () Bool)

(declare-fun isBalanced!2636 (Conc!8507) Bool)

(assert (=> d!663590 (= (inv!35297 (value!132491 (underlying!6120 thiss!9390))) (isBalanced!2636 (c!354427 (value!132491 (underlying!6120 thiss!9390)))))))

(declare-fun bs!452191 () Bool)

(assert (= bs!452191 d!663590))

(declare-fun m!2660653 () Bool)

(assert (=> bs!452191 m!2660653))

(assert (=> b!2219670 d!663590))

(declare-fun d!663594 () Bool)

(declare-fun c!354460 () Bool)

(assert (=> d!663594 (= c!354460 ((_ is Node!8507) (c!354427 (value!132491 (underlying!6120 thiss!9390)))))))

(declare-fun e!1417582 () Bool)

(assert (=> d!663594 (= (inv!35296 (c!354427 (value!132491 (underlying!6120 thiss!9390)))) e!1417582)))

(declare-fun b!2219757 () Bool)

(declare-fun inv!35300 (Conc!8507) Bool)

(assert (=> b!2219757 (= e!1417582 (inv!35300 (c!354427 (value!132491 (underlying!6120 thiss!9390)))))))

(declare-fun b!2219758 () Bool)

(declare-fun e!1417583 () Bool)

(assert (=> b!2219758 (= e!1417582 e!1417583)))

(declare-fun res!953245 () Bool)

(assert (=> b!2219758 (= res!953245 (not ((_ is Leaf!12475) (c!354427 (value!132491 (underlying!6120 thiss!9390))))))))

(assert (=> b!2219758 (=> res!953245 e!1417583)))

(declare-fun b!2219759 () Bool)

(declare-fun inv!35301 (Conc!8507) Bool)

(assert (=> b!2219759 (= e!1417583 (inv!35301 (c!354427 (value!132491 (underlying!6120 thiss!9390)))))))

(assert (= (and d!663594 c!354460) b!2219757))

(assert (= (and d!663594 (not c!354460)) b!2219758))

(assert (= (and b!2219758 (not res!953245)) b!2219759))

(declare-fun m!2660657 () Bool)

(assert (=> b!2219757 m!2660657))

(declare-fun m!2660659 () Bool)

(assert (=> b!2219759 m!2660659))

(assert (=> b!2219671 d!663594))

(declare-fun d!663598 () Bool)

(assert (=> d!663598 true))

(declare-fun e!1417594 () Bool)

(assert (=> d!663598 e!1417594))

(declare-fun res!953250 () List!26094)

(assert (=> d!663598 (= (choose!13084 thiss!9390) res!953250)))

(declare-fun b!2219776 () Bool)

(declare-fun tp!691378 () Bool)

(assert (=> b!2219776 (= e!1417594 (and tp_is_empty!9883 tp!691378))))

(assert (= (and d!663598 ((_ is Cons!26007) res!953250)) b!2219776))

(assert (=> d!663552 d!663598))

(declare-fun d!663600 () Bool)

(declare-fun lt!827283 () Int)

(assert (=> d!663600 (>= lt!827283 0)))

(declare-fun e!1417595 () Int)

(assert (=> d!663600 (= lt!827283 e!1417595)))

(declare-fun c!354467 () Bool)

(assert (=> d!663600 (= c!354467 ((_ is Nil!26007) (t!199497 lt!827259)))))

(assert (=> d!663600 (= (size!20285 (t!199497 lt!827259)) lt!827283)))

(declare-fun b!2219777 () Bool)

(assert (=> b!2219777 (= e!1417595 0)))

(declare-fun b!2219778 () Bool)

(assert (=> b!2219778 (= e!1417595 (+ 1 (size!20285 (t!199497 (t!199497 lt!827259)))))))

(assert (= (and d!663600 c!354467) b!2219777))

(assert (= (and d!663600 (not c!354467)) b!2219778))

(declare-fun m!2660661 () Bool)

(assert (=> b!2219778 m!2660661))

(assert (=> b!2219655 d!663600))

(declare-fun res!953254 () Vector!176)

(declare-fun d!663602 () Bool)

(assert (=> d!663602 (= (list!10093 res!953254) (slice!631 (list!10093 thiss!9390) from!770 to!262))))

(declare-fun e!1417602 () Bool)

(assert (=> d!663602 e!1417602))

(assert (=> d!663602 (= (choose!13086 thiss!9390 from!770 to!262) res!953254)))

(declare-fun b!2219788 () Bool)

(declare-fun tp!691383 () Bool)

(declare-fun tp!691384 () Bool)

(assert (=> b!2219788 (= e!1417602 (and tp!691383 tp!691384))))

(assert (= d!663602 b!2219788))

(declare-fun m!2660663 () Bool)

(assert (=> d!663602 m!2660663))

(assert (=> d!663602 m!2660579))

(assert (=> d!663602 m!2660579))

(declare-fun m!2660665 () Bool)

(assert (=> d!663602 m!2660665))

(assert (=> d!663560 d!663602))

(declare-fun d!663604 () Bool)

(assert (=> d!663604 true))

(declare-fun e!1417603 () Bool)

(assert (=> d!663604 e!1417603))

(declare-fun res!953255 () List!26094)

(assert (=> d!663604 (= (choose!13084 (choose!13083 thiss!9390 from!770 to!262)) res!953255)))

(declare-fun b!2219789 () Bool)

(declare-fun tp!691385 () Bool)

(assert (=> b!2219789 (= e!1417603 (and tp_is_empty!9883 tp!691385))))

(assert (= (and d!663604 ((_ is Cons!26007) res!953255)) b!2219789))

(assert (=> d!663558 d!663604))

(declare-fun tp!691393 () Bool)

(declare-fun e!1417609 () Bool)

(declare-fun b!2219798 () Bool)

(declare-fun tp!691392 () Bool)

(assert (=> b!2219798 (= e!1417609 (and (inv!35296 (left!20002 (c!354427 (value!132491 (underlying!6120 thiss!9390))))) tp!691392 (inv!35296 (right!20332 (c!354427 (value!132491 (underlying!6120 thiss!9390))))) tp!691393))))

(declare-fun b!2219800 () Bool)

(declare-fun e!1417608 () Bool)

(declare-fun tp!691394 () Bool)

(assert (=> b!2219800 (= e!1417608 tp!691394)))

(declare-fun b!2219799 () Bool)

(declare-fun inv!35302 (IArray!17019) Bool)

(assert (=> b!2219799 (= e!1417609 (and (inv!35302 (xs!11449 (c!354427 (value!132491 (underlying!6120 thiss!9390))))) e!1417608))))

(assert (=> b!2219671 (= tp!691359 (and (inv!35296 (c!354427 (value!132491 (underlying!6120 thiss!9390)))) e!1417609))))

(assert (= (and b!2219671 ((_ is Node!8507) (c!354427 (value!132491 (underlying!6120 thiss!9390))))) b!2219798))

(assert (= b!2219799 b!2219800))

(assert (= (and b!2219671 ((_ is Leaf!12475) (c!354427 (value!132491 (underlying!6120 thiss!9390))))) b!2219799))

(declare-fun m!2660677 () Bool)

(assert (=> b!2219798 m!2660677))

(declare-fun m!2660679 () Bool)

(assert (=> b!2219798 m!2660679))

(declare-fun m!2660681 () Bool)

(assert (=> b!2219799 m!2660681))

(assert (=> b!2219671 m!2660615))

(declare-fun b!2219801 () Bool)

(declare-fun e!1417610 () Bool)

(declare-fun tp!691395 () Bool)

(assert (=> b!2219801 (= e!1417610 (and tp_is_empty!9883 tp!691395))))

(assert (=> b!2219677 (= tp!691363 e!1417610)))

(assert (= (and b!2219677 ((_ is Cons!26007) (t!199497 (overflowing!145 thiss!9390)))) b!2219801))

(declare-fun b!2219806 () Bool)

(declare-fun e!1417613 () Bool)

(declare-fun tp!691400 () Bool)

(declare-fun tp!691401 () Bool)

(assert (=> b!2219806 (= e!1417613 (and tp!691400 tp!691401))))

(assert (=> b!2219672 (= tp!691360 e!1417613)))

(assert (= (and b!2219672 ((_ is Cons!26008) (value!132492 (underlying!6120 thiss!9390)))) b!2219806))

(check-sat (not b!2219776) (not b!2219798) (not b!2219710) (not b!2219745) tp_is_empty!9883 (not b!2219801) (not d!663576) (not d!663580) (not b!2219788) (not b!2219806) (not b!2219757) (not b!2219671) (not d!663602) (not b!2219712) (not b!2219759) (not b!2219716) (not d!663578) (not b!2219695) (not b!2219714) (not b!2219800) (not b!2219789) (not bm!132421) (not d!663590) (not b!2219778) (not b!2219750) (not b!2219799))
(check-sat)
