; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756398 () Bool)

(assert start!756398)

(declare-datatypes ((T!148790 0))(
  ( (T!148791 (val!32639 Int)) )
))
(declare-datatypes ((List!75161 0))(
  ( (Nil!75035) (Cons!75035 (h!81483 T!148790) (t!390929 List!75161)) )
))
(declare-datatypes ((IArray!31959 0))(
  ( (IArray!31960 (innerList!16037 List!75161)) )
))
(declare-datatypes ((Conc!15949 0))(
  ( (Node!15949 (left!57210 Conc!15949) (right!57540 Conc!15949) (csize!32128 Int) (cheight!16160 Int)) (Leaf!30571 (xs!19347 IArray!31959) (csize!32129 Int)) (Empty!15949) )
))
(declare-fun t!3595 () Conc!15949)

(declare-fun e!4730650 () Bool)

(declare-fun tp!2402934 () Bool)

(declare-fun tp!2402933 () Bool)

(declare-fun b!8029645 () Bool)

(declare-fun inv!96780 (Conc!15949) Bool)

(assert (=> b!8029645 (= e!4730650 (and (inv!96780 (left!57210 t!3595)) tp!2402933 (inv!96780 (right!57540 t!3595)) tp!2402934))))

(declare-fun b!8029644 () Bool)

(declare-fun e!4730648 () Bool)

(declare-fun ConcPrimitiveSize!51 (Conc!15949) Int)

(assert (=> b!8029644 (= e!4730648 (>= (ConcPrimitiveSize!51 (right!57540 t!3595)) (ConcPrimitiveSize!51 t!3595)))))

(declare-fun lt!2721799 () List!75161)

(declare-fun list!19494 (Conc!15949) List!75161)

(assert (=> b!8029644 (= lt!2721799 (list!19494 (left!57210 t!3595)))))

(declare-fun res!3175612 () Bool)

(assert (=> start!756398 (=> (not res!3175612) (not e!4730648))))

(assert (=> start!756398 (= res!3175612 (and (not (is-Empty!15949 t!3595)) (not (is-Leaf!30571 t!3595))))))

(assert (=> start!756398 e!4730648))

(assert (=> start!756398 (and (inv!96780 t!3595) e!4730650)))

(declare-fun b!8029647 () Bool)

(declare-fun e!4730649 () Bool)

(declare-fun tp!2402932 () Bool)

(assert (=> b!8029647 (= e!4730649 tp!2402932)))

(declare-fun b!8029646 () Bool)

(declare-fun inv!96781 (IArray!31959) Bool)

(assert (=> b!8029646 (= e!4730650 (and (inv!96781 (xs!19347 t!3595)) e!4730649))))

(assert (= (and start!756398 res!3175612) b!8029644))

(assert (= (and start!756398 (is-Node!15949 t!3595)) b!8029645))

(assert (= b!8029646 b!8029647))

(assert (= (and start!756398 (is-Leaf!30571 t!3595)) b!8029646))

(declare-fun m!8391542 () Bool)

(assert (=> b!8029645 m!8391542))

(declare-fun m!8391544 () Bool)

(assert (=> b!8029645 m!8391544))

(declare-fun m!8391546 () Bool)

(assert (=> b!8029644 m!8391546))

(declare-fun m!8391548 () Bool)

(assert (=> b!8029644 m!8391548))

(declare-fun m!8391550 () Bool)

(assert (=> b!8029644 m!8391550))

(declare-fun m!8391552 () Bool)

(assert (=> start!756398 m!8391552))

(declare-fun m!8391554 () Bool)

(assert (=> b!8029646 m!8391554))

(push 1)

(assert (not b!8029647))

(assert (not b!8029646))

(assert (not b!8029644))

(assert (not start!756398))

(assert (not b!8029645))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2394420 () Bool)

(declare-fun c!1473107 () Bool)

(assert (=> d!2394420 (= c!1473107 (is-Node!15949 (left!57210 t!3595)))))

(declare-fun e!4730664 () Bool)

(assert (=> d!2394420 (= (inv!96780 (left!57210 t!3595)) e!4730664)))

(declare-fun b!8029666 () Bool)

(declare-fun inv!96784 (Conc!15949) Bool)

(assert (=> b!8029666 (= e!4730664 (inv!96784 (left!57210 t!3595)))))

(declare-fun b!8029667 () Bool)

(declare-fun e!4730665 () Bool)

(assert (=> b!8029667 (= e!4730664 e!4730665)))

(declare-fun res!3175618 () Bool)

(assert (=> b!8029667 (= res!3175618 (not (is-Leaf!30571 (left!57210 t!3595))))))

(assert (=> b!8029667 (=> res!3175618 e!4730665)))

(declare-fun b!8029668 () Bool)

(declare-fun inv!96785 (Conc!15949) Bool)

(assert (=> b!8029668 (= e!4730665 (inv!96785 (left!57210 t!3595)))))

(assert (= (and d!2394420 c!1473107) b!8029666))

(assert (= (and d!2394420 (not c!1473107)) b!8029667))

(assert (= (and b!8029667 (not res!3175618)) b!8029668))

(declare-fun m!8391570 () Bool)

(assert (=> b!8029666 m!8391570))

(declare-fun m!8391572 () Bool)

(assert (=> b!8029668 m!8391572))

(assert (=> b!8029645 d!2394420))

(declare-fun d!2394422 () Bool)

(declare-fun c!1473108 () Bool)

(assert (=> d!2394422 (= c!1473108 (is-Node!15949 (right!57540 t!3595)))))

(declare-fun e!4730666 () Bool)

(assert (=> d!2394422 (= (inv!96780 (right!57540 t!3595)) e!4730666)))

(declare-fun b!8029669 () Bool)

(assert (=> b!8029669 (= e!4730666 (inv!96784 (right!57540 t!3595)))))

(declare-fun b!8029670 () Bool)

(declare-fun e!4730667 () Bool)

(assert (=> b!8029670 (= e!4730666 e!4730667)))

(declare-fun res!3175619 () Bool)

(assert (=> b!8029670 (= res!3175619 (not (is-Leaf!30571 (right!57540 t!3595))))))

(assert (=> b!8029670 (=> res!3175619 e!4730667)))

(declare-fun b!8029671 () Bool)

(assert (=> b!8029671 (= e!4730667 (inv!96785 (right!57540 t!3595)))))

(assert (= (and d!2394422 c!1473108) b!8029669))

(assert (= (and d!2394422 (not c!1473108)) b!8029670))

(assert (= (and b!8029670 (not res!3175619)) b!8029671))

(declare-fun m!8391574 () Bool)

(assert (=> b!8029669 m!8391574))

(declare-fun m!8391576 () Bool)

(assert (=> b!8029671 m!8391576))

(assert (=> b!8029645 d!2394422))

(declare-fun d!2394424 () Bool)

(declare-fun size!43756 (List!75161) Int)

(assert (=> d!2394424 (= (inv!96781 (xs!19347 t!3595)) (<= (size!43756 (innerList!16037 (xs!19347 t!3595))) 2147483647))))

(declare-fun bs!1971425 () Bool)

(assert (= bs!1971425 d!2394424))

(declare-fun m!8391578 () Bool)

(assert (=> bs!1971425 m!8391578))

(assert (=> b!8029646 d!2394424))

(declare-fun b!8029680 () Bool)

(declare-fun e!4730672 () Int)

(declare-fun e!4730673 () Int)

(assert (=> b!8029680 (= e!4730672 e!4730673)))

(declare-fun c!1473113 () Bool)

(assert (=> b!8029680 (= c!1473113 (is-Leaf!30571 (right!57540 t!3595)))))

(declare-fun b!8029681 () Bool)

(declare-fun call!744825 () Int)

(declare-fun BigIntAbs!0 (Int) Int)

(assert (=> b!8029681 (= e!4730672 (+ 1 (ConcPrimitiveSize!51 (left!57210 (right!57540 t!3595))) (ConcPrimitiveSize!51 (right!57540 (right!57540 t!3595))) call!744825 (BigIntAbs!0 (cheight!16160 (right!57540 t!3595)))))))

(declare-fun b!8029682 () Bool)

(declare-fun IArrayPrimitiveSize!50 (IArray!31959) Int)

(assert (=> b!8029682 (= e!4730673 (+ 1 (IArrayPrimitiveSize!50 (xs!19347 (right!57540 t!3595))) call!744825))))

(declare-fun d!2394428 () Bool)

(declare-fun lt!2721805 () Int)

(assert (=> d!2394428 (>= lt!2721805 0)))

(assert (=> d!2394428 (= lt!2721805 e!4730672)))

(declare-fun c!1473114 () Bool)

(assert (=> d!2394428 (= c!1473114 (is-Node!15949 (right!57540 t!3595)))))

(assert (=> d!2394428 (= (ConcPrimitiveSize!51 (right!57540 t!3595)) lt!2721805)))

(declare-fun bm!744820 () Bool)

(assert (=> bm!744820 (= call!744825 (BigIntAbs!0 (ite c!1473114 (csize!32128 (right!57540 t!3595)) (csize!32129 (right!57540 t!3595)))))))

(declare-fun b!8029683 () Bool)

(assert (=> b!8029683 (= e!4730673 0)))

(assert (= (and d!2394428 c!1473114) b!8029681))

(assert (= (and d!2394428 (not c!1473114)) b!8029680))

(assert (= (and b!8029680 c!1473113) b!8029682))

(assert (= (and b!8029680 (not c!1473113)) b!8029683))

(assert (= (or b!8029681 b!8029682) bm!744820))

(declare-fun m!8391580 () Bool)

(assert (=> b!8029681 m!8391580))

(declare-fun m!8391582 () Bool)

(assert (=> b!8029681 m!8391582))

(declare-fun m!8391584 () Bool)

(assert (=> b!8029681 m!8391584))

(declare-fun m!8391586 () Bool)

(assert (=> b!8029682 m!8391586))

(declare-fun m!8391588 () Bool)

(assert (=> bm!744820 m!8391588))

(assert (=> b!8029644 d!2394428))

(declare-fun b!8029684 () Bool)

(declare-fun e!4730674 () Int)

(declare-fun e!4730675 () Int)

(assert (=> b!8029684 (= e!4730674 e!4730675)))

(declare-fun c!1473115 () Bool)

(assert (=> b!8029684 (= c!1473115 (is-Leaf!30571 t!3595))))

(declare-fun b!8029685 () Bool)

(declare-fun call!744826 () Int)

(assert (=> b!8029685 (= e!4730674 (+ 1 (ConcPrimitiveSize!51 (left!57210 t!3595)) (ConcPrimitiveSize!51 (right!57540 t!3595)) call!744826 (BigIntAbs!0 (cheight!16160 t!3595))))))

(declare-fun b!8029686 () Bool)

(assert (=> b!8029686 (= e!4730675 (+ 1 (IArrayPrimitiveSize!50 (xs!19347 t!3595)) call!744826))))

(declare-fun d!2394430 () Bool)

(declare-fun lt!2721806 () Int)

(assert (=> d!2394430 (>= lt!2721806 0)))

(assert (=> d!2394430 (= lt!2721806 e!4730674)))

(declare-fun c!1473116 () Bool)

(assert (=> d!2394430 (= c!1473116 (is-Node!15949 t!3595))))

(assert (=> d!2394430 (= (ConcPrimitiveSize!51 t!3595) lt!2721806)))

(declare-fun bm!744821 () Bool)

(assert (=> bm!744821 (= call!744826 (BigIntAbs!0 (ite c!1473116 (csize!32128 t!3595) (csize!32129 t!3595))))))

(declare-fun b!8029687 () Bool)

(assert (=> b!8029687 (= e!4730675 0)))

(assert (= (and d!2394430 c!1473116) b!8029685))

(assert (= (and d!2394430 (not c!1473116)) b!8029684))

(assert (= (and b!8029684 c!1473115) b!8029686))

(assert (= (and b!8029684 (not c!1473115)) b!8029687))

(assert (= (or b!8029685 b!8029686) bm!744821))

(declare-fun m!8391590 () Bool)

(assert (=> b!8029685 m!8391590))

(assert (=> b!8029685 m!8391546))

(declare-fun m!8391592 () Bool)

(assert (=> b!8029685 m!8391592))

(declare-fun m!8391594 () Bool)

(assert (=> b!8029686 m!8391594))

(declare-fun m!8391596 () Bool)

(assert (=> bm!744821 m!8391596))

(assert (=> b!8029644 d!2394430))

(declare-fun d!2394432 () Bool)

(declare-fun c!1473124 () Bool)

(assert (=> d!2394432 (= c!1473124 (is-Empty!15949 (left!57210 t!3595)))))

(declare-fun e!4730686 () List!75161)

(assert (=> d!2394432 (= (list!19494 (left!57210 t!3595)) e!4730686)))

(declare-fun b!8029708 () Bool)

(declare-fun e!4730687 () List!75161)

(declare-fun ++!18613 (List!75161 List!75161) List!75161)

(assert (=> b!8029708 (= e!4730687 (++!18613 (list!19494 (left!57210 (left!57210 t!3595))) (list!19494 (right!57540 (left!57210 t!3595)))))))

(declare-fun b!8029706 () Bool)

(assert (=> b!8029706 (= e!4730686 e!4730687)))

(declare-fun c!1473125 () Bool)

(assert (=> b!8029706 (= c!1473125 (is-Leaf!30571 (left!57210 t!3595)))))

(declare-fun b!8029705 () Bool)

(assert (=> b!8029705 (= e!4730686 Nil!75035)))

(declare-fun b!8029707 () Bool)

(declare-fun list!19496 (IArray!31959) List!75161)

(assert (=> b!8029707 (= e!4730687 (list!19496 (xs!19347 (left!57210 t!3595))))))

(assert (= (and d!2394432 c!1473124) b!8029705))

(assert (= (and d!2394432 (not c!1473124)) b!8029706))

(assert (= (and b!8029706 c!1473125) b!8029707))

(assert (= (and b!8029706 (not c!1473125)) b!8029708))

(declare-fun m!8391598 () Bool)

(assert (=> b!8029708 m!8391598))

(declare-fun m!8391600 () Bool)

(assert (=> b!8029708 m!8391600))

(assert (=> b!8029708 m!8391598))

(assert (=> b!8029708 m!8391600))

(declare-fun m!8391602 () Bool)

(assert (=> b!8029708 m!8391602))

(declare-fun m!8391604 () Bool)

(assert (=> b!8029707 m!8391604))

(assert (=> b!8029644 d!2394432))

(declare-fun d!2394434 () Bool)

(declare-fun c!1473126 () Bool)

(assert (=> d!2394434 (= c!1473126 (is-Node!15949 t!3595))))

(declare-fun e!4730688 () Bool)

(assert (=> d!2394434 (= (inv!96780 t!3595) e!4730688)))

(declare-fun b!8029709 () Bool)

(assert (=> b!8029709 (= e!4730688 (inv!96784 t!3595))))

(declare-fun b!8029710 () Bool)

(declare-fun e!4730689 () Bool)

(assert (=> b!8029710 (= e!4730688 e!4730689)))

(declare-fun res!3175623 () Bool)

(assert (=> b!8029710 (= res!3175623 (not (is-Leaf!30571 t!3595)))))

(assert (=> b!8029710 (=> res!3175623 e!4730689)))

(declare-fun b!8029711 () Bool)

(assert (=> b!8029711 (= e!4730689 (inv!96785 t!3595))))

(assert (= (and d!2394434 c!1473126) b!8029709))

(assert (= (and d!2394434 (not c!1473126)) b!8029710))

(assert (= (and b!8029710 (not res!3175623)) b!8029711))

(declare-fun m!8391610 () Bool)

(assert (=> b!8029709 m!8391610))

(declare-fun m!8391612 () Bool)

(assert (=> b!8029711 m!8391612))

(assert (=> start!756398 d!2394434))

(declare-fun b!8029720 () Bool)

(declare-fun tp!2402950 () Bool)

(declare-fun tp!2402952 () Bool)

(declare-fun e!4730695 () Bool)

(assert (=> b!8029720 (= e!4730695 (and (inv!96780 (left!57210 (left!57210 t!3595))) tp!2402950 (inv!96780 (right!57540 (left!57210 t!3595))) tp!2402952))))

(declare-fun b!8029722 () Bool)

(declare-fun e!4730694 () Bool)

(declare-fun tp!2402951 () Bool)

(assert (=> b!8029722 (= e!4730694 tp!2402951)))

(declare-fun b!8029721 () Bool)

(assert (=> b!8029721 (= e!4730695 (and (inv!96781 (xs!19347 (left!57210 t!3595))) e!4730694))))

(assert (=> b!8029645 (= tp!2402933 (and (inv!96780 (left!57210 t!3595)) e!4730695))))

(assert (= (and b!8029645 (is-Node!15949 (left!57210 t!3595))) b!8029720))

(assert (= b!8029721 b!8029722))

(assert (= (and b!8029645 (is-Leaf!30571 (left!57210 t!3595))) b!8029721))

(declare-fun m!8391614 () Bool)

(assert (=> b!8029720 m!8391614))

(declare-fun m!8391616 () Bool)

(assert (=> b!8029720 m!8391616))

(declare-fun m!8391618 () Bool)

(assert (=> b!8029721 m!8391618))

(assert (=> b!8029645 m!8391542))

(declare-fun e!4730697 () Bool)

(declare-fun tp!2402953 () Bool)

(declare-fun b!8029723 () Bool)

(declare-fun tp!2402955 () Bool)

(assert (=> b!8029723 (= e!4730697 (and (inv!96780 (left!57210 (right!57540 t!3595))) tp!2402953 (inv!96780 (right!57540 (right!57540 t!3595))) tp!2402955))))

(declare-fun b!8029725 () Bool)

(declare-fun e!4730696 () Bool)

(declare-fun tp!2402954 () Bool)

(assert (=> b!8029725 (= e!4730696 tp!2402954)))

(declare-fun b!8029724 () Bool)

(assert (=> b!8029724 (= e!4730697 (and (inv!96781 (xs!19347 (right!57540 t!3595))) e!4730696))))

(assert (=> b!8029645 (= tp!2402934 (and (inv!96780 (right!57540 t!3595)) e!4730697))))

(assert (= (and b!8029645 (is-Node!15949 (right!57540 t!3595))) b!8029723))

(assert (= b!8029724 b!8029725))

(assert (= (and b!8029645 (is-Leaf!30571 (right!57540 t!3595))) b!8029724))

(declare-fun m!8391620 () Bool)

(assert (=> b!8029723 m!8391620))

(declare-fun m!8391622 () Bool)

(assert (=> b!8029723 m!8391622))

(declare-fun m!8391624 () Bool)

(assert (=> b!8029724 m!8391624))

(assert (=> b!8029645 m!8391544))

(declare-fun b!8029730 () Bool)

(declare-fun e!4730700 () Bool)

(declare-fun tp_is_empty!54383 () Bool)

(declare-fun tp!2402958 () Bool)

(assert (=> b!8029730 (= e!4730700 (and tp_is_empty!54383 tp!2402958))))

(assert (=> b!8029647 (= tp!2402932 e!4730700)))

(assert (= (and b!8029647 (is-Cons!75035 (innerList!16037 (xs!19347 t!3595)))) b!8029730))

(push 1)

(assert (not b!8029685))

(assert (not b!8029724))

(assert (not b!8029721))

(assert (not b!8029725))

(assert (not b!8029668))

(assert (not b!8029686))

(assert (not b!8029682))

(assert (not b!8029722))

(assert (not b!8029709))

(assert (not bm!744820))

(assert (not b!8029711))

(assert (not b!8029681))

(assert (not b!8029708))

(assert (not b!8029730))

(assert (not b!8029671))

(assert tp_is_empty!54383)

(assert (not bm!744821))

(assert (not b!8029720))

(assert (not b!8029645))

(assert (not d!2394424))

(assert (not b!8029707))

(assert (not b!8029666))

(assert (not b!8029669))

(assert (not b!8029723))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2394448 () Bool)

(declare-fun res!3175632 () Bool)

(declare-fun e!4730732 () Bool)

(assert (=> d!2394448 (=> (not res!3175632) (not e!4730732))))

(declare-fun size!43758 (Conc!15949) Int)

(assert (=> d!2394448 (= res!3175632 (= (csize!32128 (right!57540 t!3595)) (+ (size!43758 (left!57210 (right!57540 t!3595))) (size!43758 (right!57540 (right!57540 t!3595))))))))

(assert (=> d!2394448 (= (inv!96784 (right!57540 t!3595)) e!4730732)))

(declare-fun b!8029790 () Bool)

(declare-fun res!3175633 () Bool)

(assert (=> b!8029790 (=> (not res!3175633) (not e!4730732))))

(assert (=> b!8029790 (= res!3175633 (and (not (= (left!57210 (right!57540 t!3595)) Empty!15949)) (not (= (right!57540 (right!57540 t!3595)) Empty!15949))))))

(declare-fun b!8029791 () Bool)

(declare-fun res!3175634 () Bool)

(assert (=> b!8029791 (=> (not res!3175634) (not e!4730732))))

(declare-fun max!0 (Int Int) Int)

(declare-fun height!2246 (Conc!15949) Int)

(assert (=> b!8029791 (= res!3175634 (= (cheight!16160 (right!57540 t!3595)) (+ (max!0 (height!2246 (left!57210 (right!57540 t!3595))) (height!2246 (right!57540 (right!57540 t!3595)))) 1)))))

(declare-fun b!8029792 () Bool)

(assert (=> b!8029792 (= e!4730732 (<= 0 (cheight!16160 (right!57540 t!3595))))))

(assert (= (and d!2394448 res!3175632) b!8029790))

(assert (= (and b!8029790 res!3175633) b!8029791))

(assert (= (and b!8029791 res!3175634) b!8029792))

(declare-fun m!8391674 () Bool)

(assert (=> d!2394448 m!8391674))

(declare-fun m!8391676 () Bool)

(assert (=> d!2394448 m!8391676))

(declare-fun m!8391678 () Bool)

(assert (=> b!8029791 m!8391678))

(declare-fun m!8391680 () Bool)

(assert (=> b!8029791 m!8391680))

(assert (=> b!8029791 m!8391678))

(assert (=> b!8029791 m!8391680))

(declare-fun m!8391682 () Bool)

(assert (=> b!8029791 m!8391682))

(assert (=> b!8029669 d!2394448))

(declare-fun d!2394450 () Bool)

(declare-fun res!3175639 () Bool)

(declare-fun e!4730735 () Bool)

(assert (=> d!2394450 (=> (not res!3175639) (not e!4730735))))

(assert (=> d!2394450 (= res!3175639 (<= (size!43756 (list!19496 (xs!19347 (left!57210 t!3595)))) 512))))

(assert (=> d!2394450 (= (inv!96785 (left!57210 t!3595)) e!4730735)))

(declare-fun b!8029797 () Bool)

(declare-fun res!3175640 () Bool)

(assert (=> b!8029797 (=> (not res!3175640) (not e!4730735))))

(assert (=> b!8029797 (= res!3175640 (= (csize!32129 (left!57210 t!3595)) (size!43756 (list!19496 (xs!19347 (left!57210 t!3595))))))))

(declare-fun b!8029798 () Bool)

(assert (=> b!8029798 (= e!4730735 (and (> (csize!32129 (left!57210 t!3595)) 0) (<= (csize!32129 (left!57210 t!3595)) 512)))))

(assert (= (and d!2394450 res!3175639) b!8029797))

(assert (= (and b!8029797 res!3175640) b!8029798))

(assert (=> d!2394450 m!8391604))

(assert (=> d!2394450 m!8391604))

(declare-fun m!8391684 () Bool)

(assert (=> d!2394450 m!8391684))

(assert (=> b!8029797 m!8391604))

(assert (=> b!8029797 m!8391604))

(assert (=> b!8029797 m!8391684))

(assert (=> b!8029668 d!2394450))

(declare-fun d!2394452 () Bool)

(assert (=> d!2394452 (= (BigIntAbs!0 (ite c!1473114 (csize!32128 (right!57540 t!3595)) (csize!32129 (right!57540 t!3595)))) (ite (>= (ite c!1473114 (csize!32128 (right!57540 t!3595)) (csize!32129 (right!57540 t!3595))) 0) (ite c!1473114 (csize!32128 (right!57540 t!3595)) (csize!32129 (right!57540 t!3595))) (- (ite c!1473114 (csize!32128 (right!57540 t!3595)) (csize!32129 (right!57540 t!3595))))))))

(assert (=> bm!744820 d!2394452))

(declare-fun b!8029799 () Bool)

(declare-fun e!4730736 () Int)

(declare-fun e!4730737 () Int)

(assert (=> b!8029799 (= e!4730736 e!4730737)))

(declare-fun c!1473143 () Bool)

(assert (=> b!8029799 (= c!1473143 (is-Leaf!30571 (left!57210 t!3595)))))

(declare-fun b!8029800 () Bool)

(declare-fun call!744831 () Int)

(assert (=> b!8029800 (= e!4730736 (+ 1 (ConcPrimitiveSize!51 (left!57210 (left!57210 t!3595))) (ConcPrimitiveSize!51 (right!57540 (left!57210 t!3595))) call!744831 (BigIntAbs!0 (cheight!16160 (left!57210 t!3595)))))))

(declare-fun b!8029801 () Bool)

(assert (=> b!8029801 (= e!4730737 (+ 1 (IArrayPrimitiveSize!50 (xs!19347 (left!57210 t!3595))) call!744831))))

(declare-fun d!2394454 () Bool)

(declare-fun lt!2721811 () Int)

(assert (=> d!2394454 (>= lt!2721811 0)))

(assert (=> d!2394454 (= lt!2721811 e!4730736)))

(declare-fun c!1473144 () Bool)

(assert (=> d!2394454 (= c!1473144 (is-Node!15949 (left!57210 t!3595)))))

(assert (=> d!2394454 (= (ConcPrimitiveSize!51 (left!57210 t!3595)) lt!2721811)))

(declare-fun bm!744826 () Bool)

(assert (=> bm!744826 (= call!744831 (BigIntAbs!0 (ite c!1473144 (csize!32128 (left!57210 t!3595)) (csize!32129 (left!57210 t!3595)))))))

(declare-fun b!8029802 () Bool)

(assert (=> b!8029802 (= e!4730737 0)))

(assert (= (and d!2394454 c!1473144) b!8029800))

(assert (= (and d!2394454 (not c!1473144)) b!8029799))

(assert (= (and b!8029799 c!1473143) b!8029801))

(assert (= (and b!8029799 (not c!1473143)) b!8029802))

(assert (= (or b!8029800 b!8029801) bm!744826))

(declare-fun m!8391686 () Bool)

(assert (=> b!8029800 m!8391686))

(declare-fun m!8391688 () Bool)

(assert (=> b!8029800 m!8391688))

(declare-fun m!8391690 () Bool)

(assert (=> b!8029800 m!8391690))

(declare-fun m!8391692 () Bool)

(assert (=> b!8029801 m!8391692))

(declare-fun m!8391694 () Bool)

(assert (=> bm!744826 m!8391694))

(assert (=> b!8029685 d!2394454))

(assert (=> b!8029685 d!2394428))

(declare-fun d!2394456 () Bool)

(assert (=> d!2394456 (= (BigIntAbs!0 (cheight!16160 t!3595)) (ite (>= (cheight!16160 t!3595) 0) (cheight!16160 t!3595) (- (cheight!16160 t!3595))))))

(assert (=> b!8029685 d!2394456))

(declare-fun d!2394458 () Bool)

(declare-fun e!4730742 () Bool)

(assert (=> d!2394458 e!4730742))

(declare-fun res!3175646 () Bool)

(assert (=> d!2394458 (=> (not res!3175646) (not e!4730742))))

(declare-fun lt!2721814 () List!75161)

(declare-fun content!16019 (List!75161) (Set T!148790))

(assert (=> d!2394458 (= res!3175646 (= (content!16019 lt!2721814) (set.union (content!16019 (list!19494 (left!57210 (left!57210 t!3595)))) (content!16019 (list!19494 (right!57540 (left!57210 t!3595)))))))))

(declare-fun e!4730743 () List!75161)

(assert (=> d!2394458 (= lt!2721814 e!4730743)))

(declare-fun c!1473147 () Bool)

(assert (=> d!2394458 (= c!1473147 (is-Nil!75035 (list!19494 (left!57210 (left!57210 t!3595)))))))

(assert (=> d!2394458 (= (++!18613 (list!19494 (left!57210 (left!57210 t!3595))) (list!19494 (right!57540 (left!57210 t!3595)))) lt!2721814)))

(declare-fun b!8029814 () Bool)

(assert (=> b!8029814 (= e!4730742 (or (not (= (list!19494 (right!57540 (left!57210 t!3595))) Nil!75035)) (= lt!2721814 (list!19494 (left!57210 (left!57210 t!3595))))))))

(declare-fun b!8029812 () Bool)

(assert (=> b!8029812 (= e!4730743 (Cons!75035 (h!81483 (list!19494 (left!57210 (left!57210 t!3595)))) (++!18613 (t!390929 (list!19494 (left!57210 (left!57210 t!3595)))) (list!19494 (right!57540 (left!57210 t!3595))))))))

(declare-fun b!8029813 () Bool)

(declare-fun res!3175645 () Bool)

(assert (=> b!8029813 (=> (not res!3175645) (not e!4730742))))

(assert (=> b!8029813 (= res!3175645 (= (size!43756 lt!2721814) (+ (size!43756 (list!19494 (left!57210 (left!57210 t!3595)))) (size!43756 (list!19494 (right!57540 (left!57210 t!3595)))))))))

(declare-fun b!8029811 () Bool)

(assert (=> b!8029811 (= e!4730743 (list!19494 (right!57540 (left!57210 t!3595))))))

(assert (= (and d!2394458 c!1473147) b!8029811))

(assert (= (and d!2394458 (not c!1473147)) b!8029812))

(assert (= (and d!2394458 res!3175646) b!8029813))

(assert (= (and b!8029813 res!3175645) b!8029814))

(declare-fun m!8391696 () Bool)

(assert (=> d!2394458 m!8391696))

(assert (=> d!2394458 m!8391598))

(declare-fun m!8391698 () Bool)

(assert (=> d!2394458 m!8391698))

(assert (=> d!2394458 m!8391600))

(declare-fun m!8391700 () Bool)

(assert (=> d!2394458 m!8391700))

(assert (=> b!8029812 m!8391600))

(declare-fun m!8391702 () Bool)

(assert (=> b!8029812 m!8391702))

(declare-fun m!8391704 () Bool)

(assert (=> b!8029813 m!8391704))

(assert (=> b!8029813 m!8391598))

(declare-fun m!8391706 () Bool)

(assert (=> b!8029813 m!8391706))

(assert (=> b!8029813 m!8391600))

(declare-fun m!8391708 () Bool)

(assert (=> b!8029813 m!8391708))

(assert (=> b!8029708 d!2394458))

(declare-fun d!2394460 () Bool)

(declare-fun c!1473148 () Bool)

(assert (=> d!2394460 (= c!1473148 (is-Empty!15949 (left!57210 (left!57210 t!3595))))))

(declare-fun e!4730744 () List!75161)

(assert (=> d!2394460 (= (list!19494 (left!57210 (left!57210 t!3595))) e!4730744)))

(declare-fun b!8029818 () Bool)

(declare-fun e!4730745 () List!75161)

(assert (=> b!8029818 (= e!4730745 (++!18613 (list!19494 (left!57210 (left!57210 (left!57210 t!3595)))) (list!19494 (right!57540 (left!57210 (left!57210 t!3595))))))))

(declare-fun b!8029816 () Bool)

(assert (=> b!8029816 (= e!4730744 e!4730745)))

(declare-fun c!1473149 () Bool)

(assert (=> b!8029816 (= c!1473149 (is-Leaf!30571 (left!57210 (left!57210 t!3595))))))

(declare-fun b!8029815 () Bool)

(assert (=> b!8029815 (= e!4730744 Nil!75035)))

(declare-fun b!8029817 () Bool)

(assert (=> b!8029817 (= e!4730745 (list!19496 (xs!19347 (left!57210 (left!57210 t!3595)))))))

(assert (= (and d!2394460 c!1473148) b!8029815))

(assert (= (and d!2394460 (not c!1473148)) b!8029816))

(assert (= (and b!8029816 c!1473149) b!8029817))

(assert (= (and b!8029816 (not c!1473149)) b!8029818))

(declare-fun m!8391710 () Bool)

(assert (=> b!8029818 m!8391710))

(declare-fun m!8391712 () Bool)

(assert (=> b!8029818 m!8391712))

(assert (=> b!8029818 m!8391710))

(assert (=> b!8029818 m!8391712))

(declare-fun m!8391714 () Bool)

(assert (=> b!8029818 m!8391714))

(declare-fun m!8391716 () Bool)

(assert (=> b!8029817 m!8391716))

(assert (=> b!8029708 d!2394460))

(declare-fun d!2394462 () Bool)

(declare-fun c!1473150 () Bool)

(assert (=> d!2394462 (= c!1473150 (is-Empty!15949 (right!57540 (left!57210 t!3595))))))

(declare-fun e!4730746 () List!75161)

(assert (=> d!2394462 (= (list!19494 (right!57540 (left!57210 t!3595))) e!4730746)))

(declare-fun b!8029822 () Bool)

(declare-fun e!4730747 () List!75161)

(assert (=> b!8029822 (= e!4730747 (++!18613 (list!19494 (left!57210 (right!57540 (left!57210 t!3595)))) (list!19494 (right!57540 (right!57540 (left!57210 t!3595))))))))

(declare-fun b!8029820 () Bool)

(assert (=> b!8029820 (= e!4730746 e!4730747)))

(declare-fun c!1473151 () Bool)

(assert (=> b!8029820 (= c!1473151 (is-Leaf!30571 (right!57540 (left!57210 t!3595))))))

(declare-fun b!8029819 () Bool)

(assert (=> b!8029819 (= e!4730746 Nil!75035)))

(declare-fun b!8029821 () Bool)

(assert (=> b!8029821 (= e!4730747 (list!19496 (xs!19347 (right!57540 (left!57210 t!3595)))))))

(assert (= (and d!2394462 c!1473150) b!8029819))

(assert (= (and d!2394462 (not c!1473150)) b!8029820))

(assert (= (and b!8029820 c!1473151) b!8029821))

(assert (= (and b!8029820 (not c!1473151)) b!8029822))

(declare-fun m!8391718 () Bool)

(assert (=> b!8029822 m!8391718))

(declare-fun m!8391720 () Bool)

(assert (=> b!8029822 m!8391720))

(assert (=> b!8029822 m!8391718))

(assert (=> b!8029822 m!8391720))

(declare-fun m!8391722 () Bool)

(assert (=> b!8029822 m!8391722))

(declare-fun m!8391724 () Bool)

(assert (=> b!8029821 m!8391724))

(assert (=> b!8029708 d!2394462))

(declare-fun d!2394464 () Bool)

(assert (=> d!2394464 (= (BigIntAbs!0 (ite c!1473116 (csize!32128 t!3595) (csize!32129 t!3595))) (ite (>= (ite c!1473116 (csize!32128 t!3595) (csize!32129 t!3595)) 0) (ite c!1473116 (csize!32128 t!3595) (csize!32129 t!3595)) (- (ite c!1473116 (csize!32128 t!3595) (csize!32129 t!3595)))))))

(assert (=> bm!744821 d!2394464))

(declare-fun d!2394466 () Bool)

(declare-fun c!1473152 () Bool)

(assert (=> d!2394466 (= c!1473152 (is-Node!15949 (left!57210 (left!57210 t!3595))))))

(declare-fun e!4730748 () Bool)

(assert (=> d!2394466 (= (inv!96780 (left!57210 (left!57210 t!3595))) e!4730748)))

(declare-fun b!8029823 () Bool)

(assert (=> b!8029823 (= e!4730748 (inv!96784 (left!57210 (left!57210 t!3595))))))

(declare-fun b!8029824 () Bool)

(declare-fun e!4730749 () Bool)

(assert (=> b!8029824 (= e!4730748 e!4730749)))

(declare-fun res!3175647 () Bool)

(assert (=> b!8029824 (= res!3175647 (not (is-Leaf!30571 (left!57210 (left!57210 t!3595)))))))

(assert (=> b!8029824 (=> res!3175647 e!4730749)))

(declare-fun b!8029825 () Bool)

(assert (=> b!8029825 (= e!4730749 (inv!96785 (left!57210 (left!57210 t!3595))))))

(assert (= (and d!2394466 c!1473152) b!8029823))

(assert (= (and d!2394466 (not c!1473152)) b!8029824))

(assert (= (and b!8029824 (not res!3175647)) b!8029825))

(declare-fun m!8391726 () Bool)

(assert (=> b!8029823 m!8391726))

(declare-fun m!8391728 () Bool)

(assert (=> b!8029825 m!8391728))

(assert (=> b!8029720 d!2394466))

(declare-fun d!2394468 () Bool)

(declare-fun c!1473153 () Bool)

(assert (=> d!2394468 (= c!1473153 (is-Node!15949 (right!57540 (left!57210 t!3595))))))

(declare-fun e!4730750 () Bool)

(assert (=> d!2394468 (= (inv!96780 (right!57540 (left!57210 t!3595))) e!4730750)))

(declare-fun b!8029826 () Bool)

(assert (=> b!8029826 (= e!4730750 (inv!96784 (right!57540 (left!57210 t!3595))))))

(declare-fun b!8029827 () Bool)

(declare-fun e!4730751 () Bool)

(assert (=> b!8029827 (= e!4730750 e!4730751)))

(declare-fun res!3175648 () Bool)

(assert (=> b!8029827 (= res!3175648 (not (is-Leaf!30571 (right!57540 (left!57210 t!3595)))))))

(assert (=> b!8029827 (=> res!3175648 e!4730751)))

(declare-fun b!8029828 () Bool)

(assert (=> b!8029828 (= e!4730751 (inv!96785 (right!57540 (left!57210 t!3595))))))

(assert (= (and d!2394468 c!1473153) b!8029826))

(assert (= (and d!2394468 (not c!1473153)) b!8029827))

(assert (= (and b!8029827 (not res!3175648)) b!8029828))

(declare-fun m!8391730 () Bool)

(assert (=> b!8029826 m!8391730))

(declare-fun m!8391732 () Bool)

(assert (=> b!8029828 m!8391732))

(assert (=> b!8029720 d!2394468))

(declare-fun d!2394470 () Bool)

(declare-fun lt!2721817 () Int)

(assert (=> d!2394470 (>= lt!2721817 0)))

(declare-fun ListPrimitiveSize!526 (List!75161) Int)

(assert (=> d!2394470 (= lt!2721817 (+ 1 (ListPrimitiveSize!526 (innerList!16037 (xs!19347 t!3595)))))))

(assert (=> d!2394470 (= (IArrayPrimitiveSize!50 (xs!19347 t!3595)) lt!2721817)))

(declare-fun bs!1971427 () Bool)

(assert (= bs!1971427 d!2394470))

(declare-fun m!8391734 () Bool)

(assert (=> bs!1971427 m!8391734))

(assert (=> b!8029686 d!2394470))

(declare-fun d!2394472 () Bool)

(declare-fun lt!2721820 () Int)

(assert (=> d!2394472 (>= lt!2721820 0)))

(declare-fun e!4730754 () Int)

(assert (=> d!2394472 (= lt!2721820 e!4730754)))

(declare-fun c!1473156 () Bool)

(assert (=> d!2394472 (= c!1473156 (is-Nil!75035 (innerList!16037 (xs!19347 t!3595))))))

(assert (=> d!2394472 (= (size!43756 (innerList!16037 (xs!19347 t!3595))) lt!2721820)))

(declare-fun b!8029833 () Bool)

(assert (=> b!8029833 (= e!4730754 0)))

(declare-fun b!8029834 () Bool)

(assert (=> b!8029834 (= e!4730754 (+ 1 (size!43756 (t!390929 (innerList!16037 (xs!19347 t!3595))))))))

(assert (= (and d!2394472 c!1473156) b!8029833))

(assert (= (and d!2394472 (not c!1473156)) b!8029834))

(declare-fun m!8391736 () Bool)

(assert (=> b!8029834 m!8391736))

(assert (=> d!2394424 d!2394472))

(declare-fun d!2394474 () Bool)

(declare-fun lt!2721821 () Int)

(assert (=> d!2394474 (>= lt!2721821 0)))

(assert (=> d!2394474 (= lt!2721821 (+ 1 (ListPrimitiveSize!526 (innerList!16037 (xs!19347 (right!57540 t!3595))))))))

(assert (=> d!2394474 (= (IArrayPrimitiveSize!50 (xs!19347 (right!57540 t!3595))) lt!2721821)))

(declare-fun bs!1971428 () Bool)

(assert (= bs!1971428 d!2394474))

(declare-fun m!8391738 () Bool)

(assert (=> bs!1971428 m!8391738))

(assert (=> b!8029682 d!2394474))

(declare-fun d!2394476 () Bool)

(assert (=> d!2394476 (= (list!19496 (xs!19347 (left!57210 t!3595))) (innerList!16037 (xs!19347 (left!57210 t!3595))))))

(assert (=> b!8029707 d!2394476))

(declare-fun d!2394478 () Bool)

(declare-fun res!3175649 () Bool)

(declare-fun e!4730755 () Bool)

(assert (=> d!2394478 (=> (not res!3175649) (not e!4730755))))

(assert (=> d!2394478 (= res!3175649 (= (csize!32128 (left!57210 t!3595)) (+ (size!43758 (left!57210 (left!57210 t!3595))) (size!43758 (right!57540 (left!57210 t!3595))))))))

(assert (=> d!2394478 (= (inv!96784 (left!57210 t!3595)) e!4730755)))

(declare-fun b!8029835 () Bool)

(declare-fun res!3175650 () Bool)

(assert (=> b!8029835 (=> (not res!3175650) (not e!4730755))))

(assert (=> b!8029835 (= res!3175650 (and (not (= (left!57210 (left!57210 t!3595)) Empty!15949)) (not (= (right!57540 (left!57210 t!3595)) Empty!15949))))))

(declare-fun b!8029836 () Bool)

(declare-fun res!3175651 () Bool)

(assert (=> b!8029836 (=> (not res!3175651) (not e!4730755))))

(assert (=> b!8029836 (= res!3175651 (= (cheight!16160 (left!57210 t!3595)) (+ (max!0 (height!2246 (left!57210 (left!57210 t!3595))) (height!2246 (right!57540 (left!57210 t!3595)))) 1)))))

(declare-fun b!8029837 () Bool)

(assert (=> b!8029837 (= e!4730755 (<= 0 (cheight!16160 (left!57210 t!3595))))))

(assert (= (and d!2394478 res!3175649) b!8029835))

(assert (= (and b!8029835 res!3175650) b!8029836))

(assert (= (and b!8029836 res!3175651) b!8029837))

(declare-fun m!8391740 () Bool)

(assert (=> d!2394478 m!8391740))

(declare-fun m!8391742 () Bool)

(assert (=> d!2394478 m!8391742))

(declare-fun m!8391744 () Bool)

(assert (=> b!8029836 m!8391744))

(declare-fun m!8391746 () Bool)

(assert (=> b!8029836 m!8391746))

(assert (=> b!8029836 m!8391744))

(assert (=> b!8029836 m!8391746))

(declare-fun m!8391748 () Bool)

(assert (=> b!8029836 m!8391748))

(assert (=> b!8029666 d!2394478))

(declare-fun b!8029838 () Bool)

(declare-fun e!4730756 () Int)

(declare-fun e!4730757 () Int)

(assert (=> b!8029838 (= e!4730756 e!4730757)))

(declare-fun c!1473157 () Bool)

(assert (=> b!8029838 (= c!1473157 (is-Leaf!30571 (left!57210 (right!57540 t!3595))))))

(declare-fun b!8029839 () Bool)

(declare-fun call!744832 () Int)

(assert (=> b!8029839 (= e!4730756 (+ 1 (ConcPrimitiveSize!51 (left!57210 (left!57210 (right!57540 t!3595)))) (ConcPrimitiveSize!51 (right!57540 (left!57210 (right!57540 t!3595)))) call!744832 (BigIntAbs!0 (cheight!16160 (left!57210 (right!57540 t!3595))))))))

(declare-fun b!8029840 () Bool)

(assert (=> b!8029840 (= e!4730757 (+ 1 (IArrayPrimitiveSize!50 (xs!19347 (left!57210 (right!57540 t!3595)))) call!744832))))

(declare-fun d!2394480 () Bool)

(declare-fun lt!2721822 () Int)

(assert (=> d!2394480 (>= lt!2721822 0)))

(assert (=> d!2394480 (= lt!2721822 e!4730756)))

(declare-fun c!1473158 () Bool)

(assert (=> d!2394480 (= c!1473158 (is-Node!15949 (left!57210 (right!57540 t!3595))))))

(assert (=> d!2394480 (= (ConcPrimitiveSize!51 (left!57210 (right!57540 t!3595))) lt!2721822)))

(declare-fun bm!744827 () Bool)

(assert (=> bm!744827 (= call!744832 (BigIntAbs!0 (ite c!1473158 (csize!32128 (left!57210 (right!57540 t!3595))) (csize!32129 (left!57210 (right!57540 t!3595))))))))

(declare-fun b!8029841 () Bool)

(assert (=> b!8029841 (= e!4730757 0)))

(assert (= (and d!2394480 c!1473158) b!8029839))

(assert (= (and d!2394480 (not c!1473158)) b!8029838))

(assert (= (and b!8029838 c!1473157) b!8029840))

(assert (= (and b!8029838 (not c!1473157)) b!8029841))

(assert (= (or b!8029839 b!8029840) bm!744827))

(declare-fun m!8391750 () Bool)

(assert (=> b!8029839 m!8391750))

(declare-fun m!8391752 () Bool)

(assert (=> b!8029839 m!8391752))

(declare-fun m!8391754 () Bool)

(assert (=> b!8029839 m!8391754))

(declare-fun m!8391756 () Bool)

(assert (=> b!8029840 m!8391756))

(declare-fun m!8391758 () Bool)

(assert (=> bm!744827 m!8391758))

(assert (=> b!8029681 d!2394480))

(declare-fun b!8029842 () Bool)

(declare-fun e!4730758 () Int)

(declare-fun e!4730759 () Int)

(assert (=> b!8029842 (= e!4730758 e!4730759)))

(declare-fun c!1473159 () Bool)

(assert (=> b!8029842 (= c!1473159 (is-Leaf!30571 (right!57540 (right!57540 t!3595))))))

(declare-fun b!8029843 () Bool)

(declare-fun call!744833 () Int)

(assert (=> b!8029843 (= e!4730758 (+ 1 (ConcPrimitiveSize!51 (left!57210 (right!57540 (right!57540 t!3595)))) (ConcPrimitiveSize!51 (right!57540 (right!57540 (right!57540 t!3595)))) call!744833 (BigIntAbs!0 (cheight!16160 (right!57540 (right!57540 t!3595))))))))

(declare-fun b!8029844 () Bool)

(assert (=> b!8029844 (= e!4730759 (+ 1 (IArrayPrimitiveSize!50 (xs!19347 (right!57540 (right!57540 t!3595)))) call!744833))))

(declare-fun d!2394482 () Bool)

(declare-fun lt!2721823 () Int)

(assert (=> d!2394482 (>= lt!2721823 0)))

(assert (=> d!2394482 (= lt!2721823 e!4730758)))

(declare-fun c!1473160 () Bool)

(assert (=> d!2394482 (= c!1473160 (is-Node!15949 (right!57540 (right!57540 t!3595))))))

(assert (=> d!2394482 (= (ConcPrimitiveSize!51 (right!57540 (right!57540 t!3595))) lt!2721823)))

(declare-fun bm!744828 () Bool)

(assert (=> bm!744828 (= call!744833 (BigIntAbs!0 (ite c!1473160 (csize!32128 (right!57540 (right!57540 t!3595))) (csize!32129 (right!57540 (right!57540 t!3595))))))))

(declare-fun b!8029845 () Bool)

(assert (=> b!8029845 (= e!4730759 0)))

(assert (= (and d!2394482 c!1473160) b!8029843))

(assert (= (and d!2394482 (not c!1473160)) b!8029842))

(assert (= (and b!8029842 c!1473159) b!8029844))

(assert (= (and b!8029842 (not c!1473159)) b!8029845))

(assert (= (or b!8029843 b!8029844) bm!744828))

(declare-fun m!8391760 () Bool)

(assert (=> b!8029843 m!8391760))

(declare-fun m!8391762 () Bool)

(assert (=> b!8029843 m!8391762))

(declare-fun m!8391764 () Bool)

(assert (=> b!8029843 m!8391764))

(declare-fun m!8391766 () Bool)

(assert (=> b!8029844 m!8391766))

(declare-fun m!8391768 () Bool)

(assert (=> bm!744828 m!8391768))

(assert (=> b!8029681 d!2394482))

(declare-fun d!2394484 () Bool)

(assert (=> d!2394484 (= (BigIntAbs!0 (cheight!16160 (right!57540 t!3595))) (ite (>= (cheight!16160 (right!57540 t!3595)) 0) (cheight!16160 (right!57540 t!3595)) (- (cheight!16160 (right!57540 t!3595)))))))

(assert (=> b!8029681 d!2394484))

(declare-fun d!2394486 () Bool)

(assert (=> d!2394486 (= (inv!96781 (xs!19347 (right!57540 t!3595))) (<= (size!43756 (innerList!16037 (xs!19347 (right!57540 t!3595)))) 2147483647))))

(declare-fun bs!1971429 () Bool)

(assert (= bs!1971429 d!2394486))

(declare-fun m!8391770 () Bool)

(assert (=> bs!1971429 m!8391770))

(assert (=> b!8029724 d!2394486))

(assert (=> b!8029645 d!2394420))

(assert (=> b!8029645 d!2394422))

(declare-fun d!2394488 () Bool)

(declare-fun c!1473161 () Bool)

(assert (=> d!2394488 (= c!1473161 (is-Node!15949 (left!57210 (right!57540 t!3595))))))

(declare-fun e!4730760 () Bool)

(assert (=> d!2394488 (= (inv!96780 (left!57210 (right!57540 t!3595))) e!4730760)))

(declare-fun b!8029846 () Bool)

(assert (=> b!8029846 (= e!4730760 (inv!96784 (left!57210 (right!57540 t!3595))))))

(declare-fun b!8029847 () Bool)

(declare-fun e!4730761 () Bool)

(assert (=> b!8029847 (= e!4730760 e!4730761)))

(declare-fun res!3175652 () Bool)

(assert (=> b!8029847 (= res!3175652 (not (is-Leaf!30571 (left!57210 (right!57540 t!3595)))))))

(assert (=> b!8029847 (=> res!3175652 e!4730761)))

(declare-fun b!8029848 () Bool)

(assert (=> b!8029848 (= e!4730761 (inv!96785 (left!57210 (right!57540 t!3595))))))

(assert (= (and d!2394488 c!1473161) b!8029846))

(assert (= (and d!2394488 (not c!1473161)) b!8029847))

(assert (= (and b!8029847 (not res!3175652)) b!8029848))

(declare-fun m!8391772 () Bool)

(assert (=> b!8029846 m!8391772))

(declare-fun m!8391774 () Bool)

(assert (=> b!8029848 m!8391774))

(assert (=> b!8029723 d!2394488))

(declare-fun d!2394490 () Bool)

(declare-fun c!1473162 () Bool)

(assert (=> d!2394490 (= c!1473162 (is-Node!15949 (right!57540 (right!57540 t!3595))))))

(declare-fun e!4730762 () Bool)

(assert (=> d!2394490 (= (inv!96780 (right!57540 (right!57540 t!3595))) e!4730762)))

(declare-fun b!8029849 () Bool)

(assert (=> b!8029849 (= e!4730762 (inv!96784 (right!57540 (right!57540 t!3595))))))

(declare-fun b!8029850 () Bool)

(declare-fun e!4730763 () Bool)

(assert (=> b!8029850 (= e!4730762 e!4730763)))

(declare-fun res!3175653 () Bool)

(assert (=> b!8029850 (= res!3175653 (not (is-Leaf!30571 (right!57540 (right!57540 t!3595)))))))

(assert (=> b!8029850 (=> res!3175653 e!4730763)))

(declare-fun b!8029851 () Bool)

(assert (=> b!8029851 (= e!4730763 (inv!96785 (right!57540 (right!57540 t!3595))))))

(assert (= (and d!2394490 c!1473162) b!8029849))

(assert (= (and d!2394490 (not c!1473162)) b!8029850))

(assert (= (and b!8029850 (not res!3175653)) b!8029851))

(declare-fun m!8391776 () Bool)

(assert (=> b!8029849 m!8391776))

(declare-fun m!8391778 () Bool)

(assert (=> b!8029851 m!8391778))

(assert (=> b!8029723 d!2394490))

(declare-fun d!2394492 () Bool)

(declare-fun res!3175654 () Bool)

(declare-fun e!4730764 () Bool)

(assert (=> d!2394492 (=> (not res!3175654) (not e!4730764))))

(assert (=> d!2394492 (= res!3175654 (<= (size!43756 (list!19496 (xs!19347 t!3595))) 512))))

(assert (=> d!2394492 (= (inv!96785 t!3595) e!4730764)))

(declare-fun b!8029852 () Bool)

(declare-fun res!3175655 () Bool)

(assert (=> b!8029852 (=> (not res!3175655) (not e!4730764))))

(assert (=> b!8029852 (= res!3175655 (= (csize!32129 t!3595) (size!43756 (list!19496 (xs!19347 t!3595)))))))

(declare-fun b!8029853 () Bool)

(assert (=> b!8029853 (= e!4730764 (and (> (csize!32129 t!3595) 0) (<= (csize!32129 t!3595) 512)))))

(assert (= (and d!2394492 res!3175654) b!8029852))

(assert (= (and b!8029852 res!3175655) b!8029853))

(declare-fun m!8391780 () Bool)

(assert (=> d!2394492 m!8391780))

(assert (=> d!2394492 m!8391780))

(declare-fun m!8391782 () Bool)

(assert (=> d!2394492 m!8391782))

(assert (=> b!8029852 m!8391780))

(assert (=> b!8029852 m!8391780))

(assert (=> b!8029852 m!8391782))

(assert (=> b!8029711 d!2394492))

(declare-fun d!2394494 () Bool)

(declare-fun res!3175656 () Bool)

(declare-fun e!4730765 () Bool)

(assert (=> d!2394494 (=> (not res!3175656) (not e!4730765))))

(assert (=> d!2394494 (= res!3175656 (<= (size!43756 (list!19496 (xs!19347 (right!57540 t!3595)))) 512))))

(assert (=> d!2394494 (= (inv!96785 (right!57540 t!3595)) e!4730765)))

(declare-fun b!8029854 () Bool)

(declare-fun res!3175657 () Bool)

(assert (=> b!8029854 (=> (not res!3175657) (not e!4730765))))

(assert (=> b!8029854 (= res!3175657 (= (csize!32129 (right!57540 t!3595)) (size!43756 (list!19496 (xs!19347 (right!57540 t!3595))))))))

(declare-fun b!8029855 () Bool)

(assert (=> b!8029855 (= e!4730765 (and (> (csize!32129 (right!57540 t!3595)) 0) (<= (csize!32129 (right!57540 t!3595)) 512)))))

(assert (= (and d!2394494 res!3175656) b!8029854))

(assert (= (and b!8029854 res!3175657) b!8029855))

(declare-fun m!8391784 () Bool)

(assert (=> d!2394494 m!8391784))

(assert (=> d!2394494 m!8391784))

(declare-fun m!8391786 () Bool)

(assert (=> d!2394494 m!8391786))

(assert (=> b!8029854 m!8391784))

(assert (=> b!8029854 m!8391784))

(assert (=> b!8029854 m!8391786))

(assert (=> b!8029671 d!2394494))

(declare-fun d!2394496 () Bool)

(assert (=> d!2394496 (= (inv!96781 (xs!19347 (left!57210 t!3595))) (<= (size!43756 (innerList!16037 (xs!19347 (left!57210 t!3595)))) 2147483647))))

(declare-fun bs!1971430 () Bool)

(assert (= bs!1971430 d!2394496))

(declare-fun m!8391788 () Bool)

(assert (=> bs!1971430 m!8391788))

(assert (=> b!8029721 d!2394496))

(declare-fun d!2394498 () Bool)

(declare-fun res!3175658 () Bool)

(declare-fun e!4730766 () Bool)

(assert (=> d!2394498 (=> (not res!3175658) (not e!4730766))))

(assert (=> d!2394498 (= res!3175658 (= (csize!32128 t!3595) (+ (size!43758 (left!57210 t!3595)) (size!43758 (right!57540 t!3595)))))))

(assert (=> d!2394498 (= (inv!96784 t!3595) e!4730766)))

(declare-fun b!8029856 () Bool)

(declare-fun res!3175659 () Bool)

(assert (=> b!8029856 (=> (not res!3175659) (not e!4730766))))

(assert (=> b!8029856 (= res!3175659 (and (not (= (left!57210 t!3595) Empty!15949)) (not (= (right!57540 t!3595) Empty!15949))))))

(declare-fun b!8029857 () Bool)

(declare-fun res!3175660 () Bool)

(assert (=> b!8029857 (=> (not res!3175660) (not e!4730766))))

(assert (=> b!8029857 (= res!3175660 (= (cheight!16160 t!3595) (+ (max!0 (height!2246 (left!57210 t!3595)) (height!2246 (right!57540 t!3595))) 1)))))

(declare-fun b!8029858 () Bool)

(assert (=> b!8029858 (= e!4730766 (<= 0 (cheight!16160 t!3595)))))

(assert (= (and d!2394498 res!3175658) b!8029856))

(assert (= (and b!8029856 res!3175659) b!8029857))

(assert (= (and b!8029857 res!3175660) b!8029858))

(declare-fun m!8391790 () Bool)

(assert (=> d!2394498 m!8391790))

(declare-fun m!8391792 () Bool)

(assert (=> d!2394498 m!8391792))

(declare-fun m!8391794 () Bool)

(assert (=> b!8029857 m!8391794))

(declare-fun m!8391796 () Bool)

(assert (=> b!8029857 m!8391796))

(assert (=> b!8029857 m!8391794))

(assert (=> b!8029857 m!8391796))

(declare-fun m!8391798 () Bool)

(assert (=> b!8029857 m!8391798))

(assert (=> b!8029709 d!2394498))

(declare-fun tp!2402974 () Bool)

(declare-fun b!8029859 () Bool)

(declare-fun e!4730768 () Bool)

(declare-fun tp!2402976 () Bool)

(assert (=> b!8029859 (= e!4730768 (and (inv!96780 (left!57210 (left!57210 (right!57540 t!3595)))) tp!2402974 (inv!96780 (right!57540 (left!57210 (right!57540 t!3595)))) tp!2402976))))

(declare-fun b!8029861 () Bool)

(declare-fun e!4730767 () Bool)

(declare-fun tp!2402975 () Bool)

(assert (=> b!8029861 (= e!4730767 tp!2402975)))

(declare-fun b!8029860 () Bool)

(assert (=> b!8029860 (= e!4730768 (and (inv!96781 (xs!19347 (left!57210 (right!57540 t!3595)))) e!4730767))))

(assert (=> b!8029723 (= tp!2402953 (and (inv!96780 (left!57210 (right!57540 t!3595))) e!4730768))))

(assert (= (and b!8029723 (is-Node!15949 (left!57210 (right!57540 t!3595)))) b!8029859))

(assert (= b!8029860 b!8029861))

(assert (= (and b!8029723 (is-Leaf!30571 (left!57210 (right!57540 t!3595)))) b!8029860))

(declare-fun m!8391800 () Bool)

(assert (=> b!8029859 m!8391800))

(declare-fun m!8391802 () Bool)

(assert (=> b!8029859 m!8391802))

(declare-fun m!8391804 () Bool)

(assert (=> b!8029860 m!8391804))

(assert (=> b!8029723 m!8391620))

(declare-fun b!8029862 () Bool)

(declare-fun tp!2402979 () Bool)

(declare-fun e!4730770 () Bool)

(declare-fun tp!2402977 () Bool)

(assert (=> b!8029862 (= e!4730770 (and (inv!96780 (left!57210 (right!57540 (right!57540 t!3595)))) tp!2402977 (inv!96780 (right!57540 (right!57540 (right!57540 t!3595)))) tp!2402979))))

(declare-fun b!8029864 () Bool)

(declare-fun e!4730769 () Bool)

(declare-fun tp!2402978 () Bool)

(assert (=> b!8029864 (= e!4730769 tp!2402978)))

(declare-fun b!8029863 () Bool)

(assert (=> b!8029863 (= e!4730770 (and (inv!96781 (xs!19347 (right!57540 (right!57540 t!3595)))) e!4730769))))

(assert (=> b!8029723 (= tp!2402955 (and (inv!96780 (right!57540 (right!57540 t!3595))) e!4730770))))

(assert (= (and b!8029723 (is-Node!15949 (right!57540 (right!57540 t!3595)))) b!8029862))

(assert (= b!8029863 b!8029864))

(assert (= (and b!8029723 (is-Leaf!30571 (right!57540 (right!57540 t!3595)))) b!8029863))

(declare-fun m!8391806 () Bool)

(assert (=> b!8029862 m!8391806))

(declare-fun m!8391808 () Bool)

(assert (=> b!8029862 m!8391808))

(declare-fun m!8391810 () Bool)

(assert (=> b!8029863 m!8391810))

(assert (=> b!8029723 m!8391622))

(declare-fun b!8029865 () Bool)

(declare-fun e!4730771 () Bool)

(declare-fun tp!2402980 () Bool)

(assert (=> b!8029865 (= e!4730771 (and tp_is_empty!54383 tp!2402980))))

(assert (=> b!8029725 (= tp!2402954 e!4730771)))

(assert (= (and b!8029725 (is-Cons!75035 (innerList!16037 (xs!19347 (right!57540 t!3595))))) b!8029865))

(declare-fun e!4730773 () Bool)

(declare-fun b!8029866 () Bool)

(declare-fun tp!2402981 () Bool)

(declare-fun tp!2402983 () Bool)

(assert (=> b!8029866 (= e!4730773 (and (inv!96780 (left!57210 (left!57210 (left!57210 t!3595)))) tp!2402981 (inv!96780 (right!57540 (left!57210 (left!57210 t!3595)))) tp!2402983))))

(declare-fun b!8029868 () Bool)

(declare-fun e!4730772 () Bool)

(declare-fun tp!2402982 () Bool)

(assert (=> b!8029868 (= e!4730772 tp!2402982)))

(declare-fun b!8029867 () Bool)

(assert (=> b!8029867 (= e!4730773 (and (inv!96781 (xs!19347 (left!57210 (left!57210 t!3595)))) e!4730772))))

(assert (=> b!8029720 (= tp!2402950 (and (inv!96780 (left!57210 (left!57210 t!3595))) e!4730773))))

(assert (= (and b!8029720 (is-Node!15949 (left!57210 (left!57210 t!3595)))) b!8029866))

(assert (= b!8029867 b!8029868))

(assert (= (and b!8029720 (is-Leaf!30571 (left!57210 (left!57210 t!3595)))) b!8029867))

(declare-fun m!8391812 () Bool)

(assert (=> b!8029866 m!8391812))

(declare-fun m!8391814 () Bool)

(assert (=> b!8029866 m!8391814))

(declare-fun m!8391816 () Bool)

(assert (=> b!8029867 m!8391816))

(assert (=> b!8029720 m!8391614))

(declare-fun tp!2402984 () Bool)

(declare-fun tp!2402986 () Bool)

(declare-fun e!4730775 () Bool)

(declare-fun b!8029869 () Bool)

(assert (=> b!8029869 (= e!4730775 (and (inv!96780 (left!57210 (right!57540 (left!57210 t!3595)))) tp!2402984 (inv!96780 (right!57540 (right!57540 (left!57210 t!3595)))) tp!2402986))))

(declare-fun b!8029871 () Bool)

(declare-fun e!4730774 () Bool)

(declare-fun tp!2402985 () Bool)

(assert (=> b!8029871 (= e!4730774 tp!2402985)))

(declare-fun b!8029870 () Bool)

(assert (=> b!8029870 (= e!4730775 (and (inv!96781 (xs!19347 (right!57540 (left!57210 t!3595)))) e!4730774))))

(assert (=> b!8029720 (= tp!2402952 (and (inv!96780 (right!57540 (left!57210 t!3595))) e!4730775))))

(assert (= (and b!8029720 (is-Node!15949 (right!57540 (left!57210 t!3595)))) b!8029869))

(assert (= b!8029870 b!8029871))

(assert (= (and b!8029720 (is-Leaf!30571 (right!57540 (left!57210 t!3595)))) b!8029870))

(declare-fun m!8391818 () Bool)

(assert (=> b!8029869 m!8391818))

(declare-fun m!8391820 () Bool)

(assert (=> b!8029869 m!8391820))

(declare-fun m!8391822 () Bool)

(assert (=> b!8029870 m!8391822))

(assert (=> b!8029720 m!8391616))

(declare-fun b!8029872 () Bool)

(declare-fun e!4730776 () Bool)

(declare-fun tp!2402987 () Bool)

(assert (=> b!8029872 (= e!4730776 (and tp_is_empty!54383 tp!2402987))))

(assert (=> b!8029730 (= tp!2402958 e!4730776)))

(assert (= (and b!8029730 (is-Cons!75035 (t!390929 (innerList!16037 (xs!19347 t!3595))))) b!8029872))

(declare-fun b!8029873 () Bool)

(declare-fun e!4730777 () Bool)

(declare-fun tp!2402988 () Bool)

(assert (=> b!8029873 (= e!4730777 (and tp_is_empty!54383 tp!2402988))))

(assert (=> b!8029722 (= tp!2402951 e!4730777)))

(assert (= (and b!8029722 (is-Cons!75035 (innerList!16037 (xs!19347 (left!57210 t!3595))))) b!8029873))

(push 1)

(assert (not d!2394470))

(assert (not b!8029869))

(assert (not d!2394496))

(assert (not b!8029813))

(assert (not b!8029844))

(assert (not b!8029851))

(assert (not b!8029843))

(assert (not b!8029840))

(assert (not d!2394494))

(assert (not b!8029723))

(assert (not b!8029865))

(assert tp_is_empty!54383)

(assert (not b!8029860))

(assert (not bm!744827))

(assert (not b!8029867))

(assert (not b!8029859))

(assert (not b!8029866))

(assert (not b!8029801))

(assert (not b!8029791))

(assert (not d!2394474))

(assert (not b!8029817))

(assert (not b!8029861))

(assert (not b!8029720))

(assert (not b!8029825))

(assert (not b!8029846))

(assert (not b!8029836))

(assert (not b!8029864))

(assert (not b!8029823))

(assert (not bm!744828))

(assert (not d!2394486))

(assert (not b!8029834))

(assert (not d!2394450))

(assert (not b!8029870))

(assert (not b!8029863))

(assert (not d!2394498))

(assert (not b!8029868))

(assert (not b!8029857))

(assert (not d!2394492))

(assert (not b!8029839))

(assert (not bm!744826))

(assert (not b!8029826))

(assert (not b!8029849))

(assert (not b!8029854))

(assert (not b!8029871))

(assert (not b!8029812))

(assert (not d!2394458))

(assert (not b!8029828))

(assert (not b!8029822))

(assert (not b!8029818))

(assert (not b!8029848))

(assert (not b!8029862))

(assert (not b!8029873))

(assert (not d!2394478))

(assert (not b!8029852))

(assert (not b!8029797))

(assert (not b!8029800))

(assert (not b!8029821))

(assert (not b!8029872))

(assert (not d!2394448))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

