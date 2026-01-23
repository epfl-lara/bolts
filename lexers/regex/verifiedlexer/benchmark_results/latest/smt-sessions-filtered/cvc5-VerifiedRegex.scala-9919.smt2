; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!520218 () Bool)

(assert start!520218)

(declare-fun b!4943516 () Bool)

(declare-fun e!3088649 () Bool)

(declare-fun tp_is_empty!36105 () Bool)

(declare-fun tp!1386702 () Bool)

(assert (=> b!4943516 (= e!3088649 (and tp_is_empty!36105 tp!1386702))))

(declare-fun b!4943517 () Bool)

(declare-fun e!3088648 () Bool)

(declare-fun e!3088651 () Bool)

(assert (=> b!4943517 (= e!3088648 e!3088651)))

(declare-fun res!2109466 () Bool)

(assert (=> b!4943517 (=> (not res!2109466) (not e!3088651))))

(declare-fun testedPSize!70 () Int)

(declare-fun lt!2037805 () Int)

(assert (=> b!4943517 (= res!2109466 (= testedPSize!70 lt!2037805))))

(declare-datatypes ((C!27158 0))(
  ( (C!27159 (val!22913 Int)) )
))
(declare-datatypes ((List!57043 0))(
  ( (Nil!56919) (Cons!56919 (h!63367 C!27158) (t!367573 List!57043)) )
))
(declare-fun testedP!110 () List!57043)

(declare-fun size!37733 (List!57043) Int)

(assert (=> b!4943517 (= lt!2037805 (size!37733 testedP!110))))

(declare-fun b!4943518 () Bool)

(declare-fun e!3088650 () Bool)

(declare-fun tp!1386700 () Bool)

(assert (=> b!4943518 (= e!3088650 (and tp_is_empty!36105 tp!1386700))))

(declare-fun totalInputSize!132 () Int)

(declare-fun b!4943519 () Bool)

(declare-fun lt!2037804 () Int)

(assert (=> b!4943519 (= e!3088651 (and (= totalInputSize!132 lt!2037804) (< (- lt!2037804 lt!2037805) 0)))))

(declare-datatypes ((IArray!30007 0))(
  ( (IArray!30008 (innerList!15061 List!57043)) )
))
(declare-datatypes ((Conc!14973 0))(
  ( (Node!14973 (left!41526 Conc!14973) (right!41856 Conc!14973) (csize!30176 Int) (cheight!15184 Int)) (Leaf!24893 (xs!18299 IArray!30007) (csize!30177 Int)) (Empty!14973) )
))
(declare-datatypes ((BalanceConc!29376 0))(
  ( (BalanceConc!29377 (c!843434 Conc!14973)) )
))
(declare-fun totalInput!685 () BalanceConc!29376)

(declare-fun size!37734 (BalanceConc!29376) Int)

(assert (=> b!4943519 (= lt!2037804 (size!37734 totalInput!685))))

(declare-fun res!2109465 () Bool)

(assert (=> start!520218 (=> (not res!2109465) (not e!3088648))))

(declare-fun testedSuffix!70 () List!57043)

(declare-fun ++!12439 (List!57043 List!57043) List!57043)

(declare-fun list!18114 (BalanceConc!29376) List!57043)

(assert (=> start!520218 (= res!2109465 (= (++!12439 testedP!110 testedSuffix!70) (list!18114 totalInput!685)))))

(assert (=> start!520218 e!3088648))

(assert (=> start!520218 e!3088649))

(assert (=> start!520218 true))

(declare-fun e!3088652 () Bool)

(declare-fun inv!74055 (BalanceConc!29376) Bool)

(assert (=> start!520218 (and (inv!74055 totalInput!685) e!3088652)))

(assert (=> start!520218 e!3088650))

(declare-fun b!4943520 () Bool)

(declare-fun tp!1386701 () Bool)

(declare-fun inv!74056 (Conc!14973) Bool)

(assert (=> b!4943520 (= e!3088652 (and (inv!74056 (c!843434 totalInput!685)) tp!1386701))))

(assert (= (and start!520218 res!2109465) b!4943517))

(assert (= (and b!4943517 res!2109466) b!4943519))

(assert (= (and start!520218 (is-Cons!56919 testedP!110)) b!4943516))

(assert (= start!520218 b!4943520))

(assert (= (and start!520218 (is-Cons!56919 testedSuffix!70)) b!4943518))

(declare-fun m!5966584 () Bool)

(assert (=> b!4943517 m!5966584))

(declare-fun m!5966586 () Bool)

(assert (=> b!4943519 m!5966586))

(declare-fun m!5966588 () Bool)

(assert (=> start!520218 m!5966588))

(declare-fun m!5966590 () Bool)

(assert (=> start!520218 m!5966590))

(declare-fun m!5966592 () Bool)

(assert (=> start!520218 m!5966592))

(declare-fun m!5966594 () Bool)

(assert (=> b!4943520 m!5966594))

(push 1)

(assert (not start!520218))

(assert (not b!4943517))

(assert (not b!4943518))

(assert (not b!4943520))

(assert (not b!4943519))

(assert tp_is_empty!36105)

(assert (not b!4943516))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1591848 () Bool)

(declare-fun lt!2037814 () Int)

(assert (=> d!1591848 (= lt!2037814 (size!37733 (list!18114 totalInput!685)))))

(declare-fun size!37737 (Conc!14973) Int)

(assert (=> d!1591848 (= lt!2037814 (size!37737 (c!843434 totalInput!685)))))

(assert (=> d!1591848 (= (size!37734 totalInput!685) lt!2037814)))

(declare-fun bs!1181501 () Bool)

(assert (= bs!1181501 d!1591848))

(assert (=> bs!1181501 m!5966590))

(assert (=> bs!1181501 m!5966590))

(declare-fun m!5966608 () Bool)

(assert (=> bs!1181501 m!5966608))

(declare-fun m!5966610 () Bool)

(assert (=> bs!1181501 m!5966610))

(assert (=> b!4943519 d!1591848))

(declare-fun d!1591852 () Bool)

(declare-fun c!843438 () Bool)

(assert (=> d!1591852 (= c!843438 (is-Node!14973 (c!843434 totalInput!685)))))

(declare-fun e!3088672 () Bool)

(assert (=> d!1591852 (= (inv!74056 (c!843434 totalInput!685)) e!3088672)))

(declare-fun b!4943542 () Bool)

(declare-fun inv!74059 (Conc!14973) Bool)

(assert (=> b!4943542 (= e!3088672 (inv!74059 (c!843434 totalInput!685)))))

(declare-fun b!4943543 () Bool)

(declare-fun e!3088673 () Bool)

(assert (=> b!4943543 (= e!3088672 e!3088673)))

(declare-fun res!2109475 () Bool)

(assert (=> b!4943543 (= res!2109475 (not (is-Leaf!24893 (c!843434 totalInput!685))))))

(assert (=> b!4943543 (=> res!2109475 e!3088673)))

(declare-fun b!4943544 () Bool)

(declare-fun inv!74060 (Conc!14973) Bool)

(assert (=> b!4943544 (= e!3088673 (inv!74060 (c!843434 totalInput!685)))))

(assert (= (and d!1591852 c!843438) b!4943542))

(assert (= (and d!1591852 (not c!843438)) b!4943543))

(assert (= (and b!4943543 (not res!2109475)) b!4943544))

(declare-fun m!5966612 () Bool)

(assert (=> b!4943542 m!5966612))

(declare-fun m!5966614 () Bool)

(assert (=> b!4943544 m!5966614))

(assert (=> b!4943520 d!1591852))

(declare-fun b!4943555 () Bool)

(declare-fun e!3088679 () List!57043)

(assert (=> b!4943555 (= e!3088679 testedSuffix!70)))

(declare-fun b!4943557 () Bool)

(declare-fun res!2109480 () Bool)

(declare-fun e!3088678 () Bool)

(assert (=> b!4943557 (=> (not res!2109480) (not e!3088678))))

(declare-fun lt!2037822 () List!57043)

(assert (=> b!4943557 (= res!2109480 (= (size!37733 lt!2037822) (+ (size!37733 testedP!110) (size!37733 testedSuffix!70))))))

(declare-fun b!4943556 () Bool)

(assert (=> b!4943556 (= e!3088679 (Cons!56919 (h!63367 testedP!110) (++!12439 (t!367573 testedP!110) testedSuffix!70)))))

(declare-fun d!1591854 () Bool)

(assert (=> d!1591854 e!3088678))

(declare-fun res!2109481 () Bool)

(assert (=> d!1591854 (=> (not res!2109481) (not e!3088678))))

(declare-fun content!10130 (List!57043) (Set C!27158))

(assert (=> d!1591854 (= res!2109481 (= (content!10130 lt!2037822) (set.union (content!10130 testedP!110) (content!10130 testedSuffix!70))))))

(assert (=> d!1591854 (= lt!2037822 e!3088679)))

(declare-fun c!843441 () Bool)

(assert (=> d!1591854 (= c!843441 (is-Nil!56919 testedP!110))))

(assert (=> d!1591854 (= (++!12439 testedP!110 testedSuffix!70) lt!2037822)))

(declare-fun b!4943558 () Bool)

(assert (=> b!4943558 (= e!3088678 (or (not (= testedSuffix!70 Nil!56919)) (= lt!2037822 testedP!110)))))

(assert (= (and d!1591854 c!843441) b!4943555))

(assert (= (and d!1591854 (not c!843441)) b!4943556))

(assert (= (and d!1591854 res!2109481) b!4943557))

(assert (= (and b!4943557 res!2109480) b!4943558))

(declare-fun m!5966620 () Bool)

(assert (=> b!4943557 m!5966620))

(assert (=> b!4943557 m!5966584))

(declare-fun m!5966622 () Bool)

(assert (=> b!4943557 m!5966622))

(declare-fun m!5966624 () Bool)

(assert (=> b!4943556 m!5966624))

(declare-fun m!5966626 () Bool)

(assert (=> d!1591854 m!5966626))

(declare-fun m!5966628 () Bool)

(assert (=> d!1591854 m!5966628))

(declare-fun m!5966630 () Bool)

(assert (=> d!1591854 m!5966630))

(assert (=> start!520218 d!1591854))

(declare-fun d!1591858 () Bool)

(declare-fun list!18116 (Conc!14973) List!57043)

(assert (=> d!1591858 (= (list!18114 totalInput!685) (list!18116 (c!843434 totalInput!685)))))

(declare-fun bs!1181503 () Bool)

(assert (= bs!1181503 d!1591858))

(declare-fun m!5966632 () Bool)

(assert (=> bs!1181503 m!5966632))

(assert (=> start!520218 d!1591858))

(declare-fun d!1591860 () Bool)

(declare-fun isBalanced!4135 (Conc!14973) Bool)

(assert (=> d!1591860 (= (inv!74055 totalInput!685) (isBalanced!4135 (c!843434 totalInput!685)))))

(declare-fun bs!1181504 () Bool)

(assert (= bs!1181504 d!1591860))

(declare-fun m!5966636 () Bool)

(assert (=> bs!1181504 m!5966636))

(assert (=> start!520218 d!1591860))

(declare-fun d!1591864 () Bool)

(declare-fun lt!2037826 () Int)

(assert (=> d!1591864 (>= lt!2037826 0)))

(declare-fun e!3088685 () Int)

(assert (=> d!1591864 (= lt!2037826 e!3088685)))

(declare-fun c!843447 () Bool)

(assert (=> d!1591864 (= c!843447 (is-Nil!56919 testedP!110))))

(assert (=> d!1591864 (= (size!37733 testedP!110) lt!2037826)))

(declare-fun b!4943567 () Bool)

(assert (=> b!4943567 (= e!3088685 0)))

(declare-fun b!4943568 () Bool)

(assert (=> b!4943568 (= e!3088685 (+ 1 (size!37733 (t!367573 testedP!110))))))

(assert (= (and d!1591864 c!843447) b!4943567))

(assert (= (and d!1591864 (not c!843447)) b!4943568))

(declare-fun m!5966638 () Bool)

(assert (=> b!4943568 m!5966638))

(assert (=> b!4943517 d!1591864))

(declare-fun b!4943573 () Bool)

(declare-fun e!3088688 () Bool)

(declare-fun tp!1386714 () Bool)

(assert (=> b!4943573 (= e!3088688 (and tp_is_empty!36105 tp!1386714))))

(assert (=> b!4943518 (= tp!1386700 e!3088688)))

(assert (= (and b!4943518 (is-Cons!56919 (t!367573 testedSuffix!70))) b!4943573))

(declare-fun b!4943582 () Bool)

(declare-fun e!3088694 () Bool)

(declare-fun tp!1386722 () Bool)

(declare-fun tp!1386723 () Bool)

(assert (=> b!4943582 (= e!3088694 (and (inv!74056 (left!41526 (c!843434 totalInput!685))) tp!1386722 (inv!74056 (right!41856 (c!843434 totalInput!685))) tp!1386723))))

(declare-fun b!4943584 () Bool)

(declare-fun e!3088693 () Bool)

(declare-fun tp!1386721 () Bool)

(assert (=> b!4943584 (= e!3088693 tp!1386721)))

(declare-fun b!4943583 () Bool)

(declare-fun inv!74061 (IArray!30007) Bool)

(assert (=> b!4943583 (= e!3088694 (and (inv!74061 (xs!18299 (c!843434 totalInput!685))) e!3088693))))

(assert (=> b!4943520 (= tp!1386701 (and (inv!74056 (c!843434 totalInput!685)) e!3088694))))

(assert (= (and b!4943520 (is-Node!14973 (c!843434 totalInput!685))) b!4943582))

(assert (= b!4943583 b!4943584))

(assert (= (and b!4943520 (is-Leaf!24893 (c!843434 totalInput!685))) b!4943583))

(declare-fun m!5966640 () Bool)

(assert (=> b!4943582 m!5966640))

(declare-fun m!5966642 () Bool)

(assert (=> b!4943582 m!5966642))

(declare-fun m!5966644 () Bool)

(assert (=> b!4943583 m!5966644))

(assert (=> b!4943520 m!5966594))

(declare-fun b!4943585 () Bool)

(declare-fun e!3088695 () Bool)

(declare-fun tp!1386724 () Bool)

(assert (=> b!4943585 (= e!3088695 (and tp_is_empty!36105 tp!1386724))))

(assert (=> b!4943516 (= tp!1386702 e!3088695)))

(assert (= (and b!4943516 (is-Cons!56919 (t!367573 testedP!110))) b!4943585))

(push 1)

(assert (not b!4943573))

(assert (not b!4943582))

(assert tp_is_empty!36105)

(assert (not b!4943520))

(assert (not b!4943544))

(assert (not d!1591854))

(assert (not b!4943557))

(assert (not b!4943556))

(assert (not d!1591860))

(assert (not d!1591848))

(assert (not d!1591858))

(assert (not b!4943585))

(assert (not b!4943542))

(assert (not b!4943568))

(assert (not b!4943584))

(assert (not b!4943583))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4943636 () Bool)

(declare-fun res!2109506 () Bool)

(declare-fun e!3088723 () Bool)

(assert (=> b!4943636 (=> (not res!2109506) (not e!3088723))))

(declare-fun height!2001 (Conc!14973) Int)

(assert (=> b!4943636 (= res!2109506 (<= (- (height!2001 (left!41526 (c!843434 totalInput!685))) (height!2001 (right!41856 (c!843434 totalInput!685)))) 1))))

(declare-fun b!4943637 () Bool)

(declare-fun isEmpty!30640 (Conc!14973) Bool)

(assert (=> b!4943637 (= e!3088723 (not (isEmpty!30640 (right!41856 (c!843434 totalInput!685)))))))

(declare-fun d!1591872 () Bool)

(declare-fun res!2109504 () Bool)

(declare-fun e!3088722 () Bool)

(assert (=> d!1591872 (=> res!2109504 e!3088722)))

(assert (=> d!1591872 (= res!2109504 (not (is-Node!14973 (c!843434 totalInput!685))))))

(assert (=> d!1591872 (= (isBalanced!4135 (c!843434 totalInput!685)) e!3088722)))

(declare-fun b!4943638 () Bool)

(declare-fun res!2109508 () Bool)

(assert (=> b!4943638 (=> (not res!2109508) (not e!3088723))))

(assert (=> b!4943638 (= res!2109508 (isBalanced!4135 (right!41856 (c!843434 totalInput!685))))))

(declare-fun b!4943639 () Bool)

(declare-fun res!2109503 () Bool)

(assert (=> b!4943639 (=> (not res!2109503) (not e!3088723))))

(assert (=> b!4943639 (= res!2109503 (isBalanced!4135 (left!41526 (c!843434 totalInput!685))))))

(declare-fun b!4943640 () Bool)

(assert (=> b!4943640 (= e!3088722 e!3088723)))

(declare-fun res!2109507 () Bool)

(assert (=> b!4943640 (=> (not res!2109507) (not e!3088723))))

(assert (=> b!4943640 (= res!2109507 (<= (- 1) (- (height!2001 (left!41526 (c!843434 totalInput!685))) (height!2001 (right!41856 (c!843434 totalInput!685))))))))

(declare-fun b!4943641 () Bool)

(declare-fun res!2109505 () Bool)

(assert (=> b!4943641 (=> (not res!2109505) (not e!3088723))))

(assert (=> b!4943641 (= res!2109505 (not (isEmpty!30640 (left!41526 (c!843434 totalInput!685)))))))

(assert (= (and d!1591872 (not res!2109504)) b!4943640))

(assert (= (and b!4943640 res!2109507) b!4943636))

(assert (= (and b!4943636 res!2109506) b!4943639))

(assert (= (and b!4943639 res!2109503) b!4943638))

(assert (= (and b!4943638 res!2109508) b!4943641))

(assert (= (and b!4943641 res!2109505) b!4943637))

(declare-fun m!5966672 () Bool)

(assert (=> b!4943640 m!5966672))

(declare-fun m!5966674 () Bool)

(assert (=> b!4943640 m!5966674))

(declare-fun m!5966676 () Bool)

(assert (=> b!4943638 m!5966676))

(declare-fun m!5966678 () Bool)

(assert (=> b!4943641 m!5966678))

(declare-fun m!5966680 () Bool)

(assert (=> b!4943639 m!5966680))

(declare-fun m!5966682 () Bool)

(assert (=> b!4943637 m!5966682))

(assert (=> b!4943636 m!5966672))

(assert (=> b!4943636 m!5966674))

(assert (=> d!1591860 d!1591872))

(declare-fun d!1591874 () Bool)

(declare-fun res!2109513 () Bool)

(declare-fun e!3088726 () Bool)

(assert (=> d!1591874 (=> (not res!2109513) (not e!3088726))))

(declare-fun list!18118 (IArray!30007) List!57043)

(assert (=> d!1591874 (= res!2109513 (<= (size!37733 (list!18118 (xs!18299 (c!843434 totalInput!685)))) 512))))

(assert (=> d!1591874 (= (inv!74060 (c!843434 totalInput!685)) e!3088726)))

(declare-fun b!4943646 () Bool)

(declare-fun res!2109514 () Bool)

(assert (=> b!4943646 (=> (not res!2109514) (not e!3088726))))

(assert (=> b!4943646 (= res!2109514 (= (csize!30177 (c!843434 totalInput!685)) (size!37733 (list!18118 (xs!18299 (c!843434 totalInput!685))))))))

(declare-fun b!4943647 () Bool)

(assert (=> b!4943647 (= e!3088726 (and (> (csize!30177 (c!843434 totalInput!685)) 0) (<= (csize!30177 (c!843434 totalInput!685)) 512)))))

(assert (= (and d!1591874 res!2109513) b!4943646))

(assert (= (and b!4943646 res!2109514) b!4943647))

(declare-fun m!5966684 () Bool)

(assert (=> d!1591874 m!5966684))

(assert (=> d!1591874 m!5966684))

(declare-fun m!5966686 () Bool)

(assert (=> d!1591874 m!5966686))

(assert (=> b!4943646 m!5966684))

(assert (=> b!4943646 m!5966684))

(assert (=> b!4943646 m!5966686))

(assert (=> b!4943544 d!1591874))

(declare-fun d!1591876 () Bool)

(assert (=> d!1591876 (= (inv!74061 (xs!18299 (c!843434 totalInput!685))) (<= (size!37733 (innerList!15061 (xs!18299 (c!843434 totalInput!685)))) 2147483647))))

(declare-fun bs!1181507 () Bool)

(assert (= bs!1181507 d!1591876))

(declare-fun m!5966688 () Bool)

(assert (=> bs!1181507 m!5966688))

(assert (=> b!4943583 d!1591876))

(declare-fun d!1591878 () Bool)

(declare-fun res!2109521 () Bool)

(declare-fun e!3088729 () Bool)

(assert (=> d!1591878 (=> (not res!2109521) (not e!3088729))))

(assert (=> d!1591878 (= res!2109521 (= (csize!30176 (c!843434 totalInput!685)) (+ (size!37737 (left!41526 (c!843434 totalInput!685))) (size!37737 (right!41856 (c!843434 totalInput!685))))))))

(assert (=> d!1591878 (= (inv!74059 (c!843434 totalInput!685)) e!3088729)))

(declare-fun b!4943654 () Bool)

(declare-fun res!2109522 () Bool)

(assert (=> b!4943654 (=> (not res!2109522) (not e!3088729))))

(assert (=> b!4943654 (= res!2109522 (and (not (= (left!41526 (c!843434 totalInput!685)) Empty!14973)) (not (= (right!41856 (c!843434 totalInput!685)) Empty!14973))))))

(declare-fun b!4943655 () Bool)

(declare-fun res!2109523 () Bool)

(assert (=> b!4943655 (=> (not res!2109523) (not e!3088729))))

(declare-fun max!0 (Int Int) Int)

(assert (=> b!4943655 (= res!2109523 (= (cheight!15184 (c!843434 totalInput!685)) (+ (max!0 (height!2001 (left!41526 (c!843434 totalInput!685))) (height!2001 (right!41856 (c!843434 totalInput!685)))) 1)))))

(declare-fun b!4943656 () Bool)

(assert (=> b!4943656 (= e!3088729 (<= 0 (cheight!15184 (c!843434 totalInput!685))))))

(assert (= (and d!1591878 res!2109521) b!4943654))

(assert (= (and b!4943654 res!2109522) b!4943655))

(assert (= (and b!4943655 res!2109523) b!4943656))

(declare-fun m!5966690 () Bool)

(assert (=> d!1591878 m!5966690))

(declare-fun m!5966692 () Bool)

(assert (=> d!1591878 m!5966692))

(assert (=> b!4943655 m!5966672))

(assert (=> b!4943655 m!5966674))

(assert (=> b!4943655 m!5966672))

(assert (=> b!4943655 m!5966674))

(declare-fun m!5966694 () Bool)

(assert (=> b!4943655 m!5966694))

(assert (=> b!4943542 d!1591878))

(declare-fun d!1591880 () Bool)

(declare-fun c!843454 () Bool)

(assert (=> d!1591880 (= c!843454 (is-Node!14973 (left!41526 (c!843434 totalInput!685))))))

(declare-fun e!3088730 () Bool)

(assert (=> d!1591880 (= (inv!74056 (left!41526 (c!843434 totalInput!685))) e!3088730)))

(declare-fun b!4943657 () Bool)

(assert (=> b!4943657 (= e!3088730 (inv!74059 (left!41526 (c!843434 totalInput!685))))))

(declare-fun b!4943658 () Bool)

(declare-fun e!3088731 () Bool)

(assert (=> b!4943658 (= e!3088730 e!3088731)))

(declare-fun res!2109524 () Bool)

(assert (=> b!4943658 (= res!2109524 (not (is-Leaf!24893 (left!41526 (c!843434 totalInput!685)))))))

(assert (=> b!4943658 (=> res!2109524 e!3088731)))

(declare-fun b!4943659 () Bool)

(assert (=> b!4943659 (= e!3088731 (inv!74060 (left!41526 (c!843434 totalInput!685))))))

(assert (= (and d!1591880 c!843454) b!4943657))

(assert (= (and d!1591880 (not c!843454)) b!4943658))

(assert (= (and b!4943658 (not res!2109524)) b!4943659))

(declare-fun m!5966696 () Bool)

(assert (=> b!4943657 m!5966696))

(declare-fun m!5966698 () Bool)

(assert (=> b!4943659 m!5966698))

(assert (=> b!4943582 d!1591880))

(declare-fun d!1591882 () Bool)

(declare-fun c!843455 () Bool)

(assert (=> d!1591882 (= c!843455 (is-Node!14973 (right!41856 (c!843434 totalInput!685))))))

(declare-fun e!3088732 () Bool)

(assert (=> d!1591882 (= (inv!74056 (right!41856 (c!843434 totalInput!685))) e!3088732)))

(declare-fun b!4943660 () Bool)

(assert (=> b!4943660 (= e!3088732 (inv!74059 (right!41856 (c!843434 totalInput!685))))))

(declare-fun b!4943661 () Bool)

(declare-fun e!3088733 () Bool)

(assert (=> b!4943661 (= e!3088732 e!3088733)))

(declare-fun res!2109525 () Bool)

(assert (=> b!4943661 (= res!2109525 (not (is-Leaf!24893 (right!41856 (c!843434 totalInput!685)))))))

(assert (=> b!4943661 (=> res!2109525 e!3088733)))

(declare-fun b!4943662 () Bool)

(assert (=> b!4943662 (= e!3088733 (inv!74060 (right!41856 (c!843434 totalInput!685))))))

(assert (= (and d!1591882 c!843455) b!4943660))

(assert (= (and d!1591882 (not c!843455)) b!4943661))

(assert (= (and b!4943661 (not res!2109525)) b!4943662))

(declare-fun m!5966700 () Bool)

(assert (=> b!4943660 m!5966700))

(declare-fun m!5966702 () Bool)

(assert (=> b!4943662 m!5966702))

(assert (=> b!4943582 d!1591882))

(assert (=> b!4943520 d!1591852))

(declare-fun d!1591884 () Bool)

(declare-fun c!843458 () Bool)

(assert (=> d!1591884 (= c!843458 (is-Nil!56919 lt!2037822))))

(declare-fun e!3088736 () (Set C!27158))

(assert (=> d!1591884 (= (content!10130 lt!2037822) e!3088736)))

(declare-fun b!4943667 () Bool)

(assert (=> b!4943667 (= e!3088736 (as set.empty (Set C!27158)))))

(declare-fun b!4943668 () Bool)

(assert (=> b!4943668 (= e!3088736 (set.union (set.insert (h!63367 lt!2037822) (as set.empty (Set C!27158))) (content!10130 (t!367573 lt!2037822))))))

(assert (= (and d!1591884 c!843458) b!4943667))

(assert (= (and d!1591884 (not c!843458)) b!4943668))

(declare-fun m!5966704 () Bool)

(assert (=> b!4943668 m!5966704))

(declare-fun m!5966706 () Bool)

(assert (=> b!4943668 m!5966706))

(assert (=> d!1591854 d!1591884))

(declare-fun d!1591888 () Bool)

(declare-fun c!843459 () Bool)

(assert (=> d!1591888 (= c!843459 (is-Nil!56919 testedP!110))))

(declare-fun e!3088737 () (Set C!27158))

(assert (=> d!1591888 (= (content!10130 testedP!110) e!3088737)))

(declare-fun b!4943669 () Bool)

(assert (=> b!4943669 (= e!3088737 (as set.empty (Set C!27158)))))

(declare-fun b!4943670 () Bool)

(assert (=> b!4943670 (= e!3088737 (set.union (set.insert (h!63367 testedP!110) (as set.empty (Set C!27158))) (content!10130 (t!367573 testedP!110))))))

(assert (= (and d!1591888 c!843459) b!4943669))

(assert (= (and d!1591888 (not c!843459)) b!4943670))

(declare-fun m!5966708 () Bool)

(assert (=> b!4943670 m!5966708))

(declare-fun m!5966710 () Bool)

(assert (=> b!4943670 m!5966710))

(assert (=> d!1591854 d!1591888))

(declare-fun d!1591890 () Bool)

(declare-fun c!843460 () Bool)

(assert (=> d!1591890 (= c!843460 (is-Nil!56919 testedSuffix!70))))

(declare-fun e!3088738 () (Set C!27158))

(assert (=> d!1591890 (= (content!10130 testedSuffix!70) e!3088738)))

(declare-fun b!4943671 () Bool)

(assert (=> b!4943671 (= e!3088738 (as set.empty (Set C!27158)))))

(declare-fun b!4943672 () Bool)

(assert (=> b!4943672 (= e!3088738 (set.union (set.insert (h!63367 testedSuffix!70) (as set.empty (Set C!27158))) (content!10130 (t!367573 testedSuffix!70))))))

(assert (= (and d!1591890 c!843460) b!4943671))

(assert (= (and d!1591890 (not c!843460)) b!4943672))

(declare-fun m!5966712 () Bool)

(assert (=> b!4943672 m!5966712))

(declare-fun m!5966714 () Bool)

(assert (=> b!4943672 m!5966714))

(assert (=> d!1591854 d!1591890))

(declare-fun d!1591892 () Bool)

(declare-fun lt!2037830 () Int)

(assert (=> d!1591892 (>= lt!2037830 0)))

(declare-fun e!3088739 () Int)

(assert (=> d!1591892 (= lt!2037830 e!3088739)))

(declare-fun c!843461 () Bool)

(assert (=> d!1591892 (= c!843461 (is-Nil!56919 (t!367573 testedP!110)))))

(assert (=> d!1591892 (= (size!37733 (t!367573 testedP!110)) lt!2037830)))

(declare-fun b!4943673 () Bool)

(assert (=> b!4943673 (= e!3088739 0)))

(declare-fun b!4943674 () Bool)

(assert (=> b!4943674 (= e!3088739 (+ 1 (size!37733 (t!367573 (t!367573 testedP!110)))))))

(assert (= (and d!1591892 c!843461) b!4943673))

(assert (= (and d!1591892 (not c!843461)) b!4943674))

(declare-fun m!5966716 () Bool)

(assert (=> b!4943674 m!5966716))

(assert (=> b!4943568 d!1591892))

(declare-fun d!1591894 () Bool)

(declare-fun lt!2037831 () Int)

(assert (=> d!1591894 (>= lt!2037831 0)))

(declare-fun e!3088740 () Int)

(assert (=> d!1591894 (= lt!2037831 e!3088740)))

(declare-fun c!843462 () Bool)

(assert (=> d!1591894 (= c!843462 (is-Nil!56919 lt!2037822))))

(assert (=> d!1591894 (= (size!37733 lt!2037822) lt!2037831)))

(declare-fun b!4943675 () Bool)

(assert (=> b!4943675 (= e!3088740 0)))

(declare-fun b!4943676 () Bool)

(assert (=> b!4943676 (= e!3088740 (+ 1 (size!37733 (t!367573 lt!2037822))))))

(assert (= (and d!1591894 c!843462) b!4943675))

(assert (= (and d!1591894 (not c!843462)) b!4943676))

(declare-fun m!5966718 () Bool)

(assert (=> b!4943676 m!5966718))

(assert (=> b!4943557 d!1591894))

(assert (=> b!4943557 d!1591864))

(declare-fun d!1591896 () Bool)

(declare-fun lt!2037832 () Int)

(assert (=> d!1591896 (>= lt!2037832 0)))

(declare-fun e!3088741 () Int)

(assert (=> d!1591896 (= lt!2037832 e!3088741)))

(declare-fun c!843463 () Bool)

(assert (=> d!1591896 (= c!843463 (is-Nil!56919 testedSuffix!70))))

(assert (=> d!1591896 (= (size!37733 testedSuffix!70) lt!2037832)))

(declare-fun b!4943677 () Bool)

(assert (=> b!4943677 (= e!3088741 0)))

(declare-fun b!4943678 () Bool)

(assert (=> b!4943678 (= e!3088741 (+ 1 (size!37733 (t!367573 testedSuffix!70))))))

(assert (= (and d!1591896 c!843463) b!4943677))

(assert (= (and d!1591896 (not c!843463)) b!4943678))

(declare-fun m!5966720 () Bool)

(assert (=> b!4943678 m!5966720))

(assert (=> b!4943557 d!1591896))

(declare-fun d!1591898 () Bool)

(declare-fun lt!2037833 () Int)

(assert (=> d!1591898 (>= lt!2037833 0)))

(declare-fun e!3088742 () Int)

(assert (=> d!1591898 (= lt!2037833 e!3088742)))

(declare-fun c!843464 () Bool)

(assert (=> d!1591898 (= c!843464 (is-Nil!56919 (list!18114 totalInput!685)))))

(assert (=> d!1591898 (= (size!37733 (list!18114 totalInput!685)) lt!2037833)))

(declare-fun b!4943679 () Bool)

(assert (=> b!4943679 (= e!3088742 0)))

(declare-fun b!4943680 () Bool)

(assert (=> b!4943680 (= e!3088742 (+ 1 (size!37733 (t!367573 (list!18114 totalInput!685)))))))

(assert (= (and d!1591898 c!843464) b!4943679))

(assert (= (and d!1591898 (not c!843464)) b!4943680))

(declare-fun m!5966722 () Bool)

(assert (=> b!4943680 m!5966722))

(assert (=> d!1591848 d!1591898))

(assert (=> d!1591848 d!1591858))

(declare-fun d!1591900 () Bool)

(declare-fun lt!2037836 () Int)

(assert (=> d!1591900 (= lt!2037836 (size!37733 (list!18116 (c!843434 totalInput!685))))))

(assert (=> d!1591900 (= lt!2037836 (ite (is-Empty!14973 (c!843434 totalInput!685)) 0 (ite (is-Leaf!24893 (c!843434 totalInput!685)) (csize!30177 (c!843434 totalInput!685)) (csize!30176 (c!843434 totalInput!685)))))))

(assert (=> d!1591900 (= (size!37737 (c!843434 totalInput!685)) lt!2037836)))

(declare-fun bs!1181508 () Bool)

(assert (= bs!1181508 d!1591900))

(assert (=> bs!1181508 m!5966632))

(assert (=> bs!1181508 m!5966632))

(declare-fun m!5966724 () Bool)

(assert (=> bs!1181508 m!5966724))

(assert (=> d!1591848 d!1591900))

(declare-fun b!4943696 () Bool)

(declare-fun e!3088752 () List!57043)

(assert (=> b!4943696 (= e!3088752 (++!12439 (list!18116 (left!41526 (c!843434 totalInput!685))) (list!18116 (right!41856 (c!843434 totalInput!685)))))))

(declare-fun b!4943693 () Bool)

(declare-fun e!3088751 () List!57043)

(assert (=> b!4943693 (= e!3088751 Nil!56919)))

(declare-fun b!4943694 () Bool)

(assert (=> b!4943694 (= e!3088751 e!3088752)))

(declare-fun c!843470 () Bool)

(assert (=> b!4943694 (= c!843470 (is-Leaf!24893 (c!843434 totalInput!685)))))

(declare-fun d!1591902 () Bool)

(declare-fun c!843469 () Bool)

(assert (=> d!1591902 (= c!843469 (is-Empty!14973 (c!843434 totalInput!685)))))

(assert (=> d!1591902 (= (list!18116 (c!843434 totalInput!685)) e!3088751)))

(declare-fun b!4943695 () Bool)

(assert (=> b!4943695 (= e!3088752 (list!18118 (xs!18299 (c!843434 totalInput!685))))))

(assert (= (and d!1591902 c!843469) b!4943693))

(assert (= (and d!1591902 (not c!843469)) b!4943694))

(assert (= (and b!4943694 c!843470) b!4943695))

(assert (= (and b!4943694 (not c!843470)) b!4943696))

(declare-fun m!5966726 () Bool)

(assert (=> b!4943696 m!5966726))

(declare-fun m!5966728 () Bool)

(assert (=> b!4943696 m!5966728))

(assert (=> b!4943696 m!5966726))

(assert (=> b!4943696 m!5966728))

(declare-fun m!5966730 () Bool)

(assert (=> b!4943696 m!5966730))

(assert (=> b!4943695 m!5966684))

(assert (=> d!1591858 d!1591902))

(declare-fun b!4943705 () Bool)

(declare-fun e!3088754 () List!57043)

(assert (=> b!4943705 (= e!3088754 testedSuffix!70)))

(declare-fun b!4943707 () Bool)

(declare-fun res!2109538 () Bool)

(declare-fun e!3088753 () Bool)

(assert (=> b!4943707 (=> (not res!2109538) (not e!3088753))))

(declare-fun lt!2037837 () List!57043)

(assert (=> b!4943707 (= res!2109538 (= (size!37733 lt!2037837) (+ (size!37733 (t!367573 testedP!110)) (size!37733 testedSuffix!70))))))

(declare-fun b!4943706 () Bool)

(assert (=> b!4943706 (= e!3088754 (Cons!56919 (h!63367 (t!367573 testedP!110)) (++!12439 (t!367573 (t!367573 testedP!110)) testedSuffix!70)))))

(declare-fun d!1591904 () Bool)

(assert (=> d!1591904 e!3088753))

(declare-fun res!2109539 () Bool)

(assert (=> d!1591904 (=> (not res!2109539) (not e!3088753))))

(assert (=> d!1591904 (= res!2109539 (= (content!10130 lt!2037837) (set.union (content!10130 (t!367573 testedP!110)) (content!10130 testedSuffix!70))))))

(assert (=> d!1591904 (= lt!2037837 e!3088754)))

(declare-fun c!843471 () Bool)

(assert (=> d!1591904 (= c!843471 (is-Nil!56919 (t!367573 testedP!110)))))

(assert (=> d!1591904 (= (++!12439 (t!367573 testedP!110) testedSuffix!70) lt!2037837)))

(declare-fun b!4943708 () Bool)

(assert (=> b!4943708 (= e!3088753 (or (not (= testedSuffix!70 Nil!56919)) (= lt!2037837 (t!367573 testedP!110))))))

(assert (= (and d!1591904 c!843471) b!4943705))

(assert (= (and d!1591904 (not c!843471)) b!4943706))

(assert (= (and d!1591904 res!2109539) b!4943707))

(assert (= (and b!4943707 res!2109538) b!4943708))

(declare-fun m!5966732 () Bool)

(assert (=> b!4943707 m!5966732))

(assert (=> b!4943707 m!5966638))

(assert (=> b!4943707 m!5966622))

(declare-fun m!5966734 () Bool)

(assert (=> b!4943706 m!5966734))

(declare-fun m!5966736 () Bool)

(assert (=> d!1591904 m!5966736))

(assert (=> d!1591904 m!5966710))

(assert (=> d!1591904 m!5966630))

(assert (=> b!4943556 d!1591904))

(declare-fun b!4943709 () Bool)

(declare-fun e!3088755 () Bool)

(declare-fun tp!1386738 () Bool)

(assert (=> b!4943709 (= e!3088755 (and tp_is_empty!36105 tp!1386738))))

(assert (=> b!4943585 (= tp!1386724 e!3088755)))

(assert (= (and b!4943585 (is-Cons!56919 (t!367573 (t!367573 testedP!110)))) b!4943709))

(declare-fun tp!1386741 () Bool)

(declare-fun b!4943710 () Bool)

(declare-fun tp!1386740 () Bool)

(declare-fun e!3088757 () Bool)

(assert (=> b!4943710 (= e!3088757 (and (inv!74056 (left!41526 (left!41526 (c!843434 totalInput!685)))) tp!1386740 (inv!74056 (right!41856 (left!41526 (c!843434 totalInput!685)))) tp!1386741))))

(declare-fun b!4943712 () Bool)

(declare-fun e!3088756 () Bool)

(declare-fun tp!1386739 () Bool)

(assert (=> b!4943712 (= e!3088756 tp!1386739)))

(declare-fun b!4943711 () Bool)

(assert (=> b!4943711 (= e!3088757 (and (inv!74061 (xs!18299 (left!41526 (c!843434 totalInput!685)))) e!3088756))))

(assert (=> b!4943582 (= tp!1386722 (and (inv!74056 (left!41526 (c!843434 totalInput!685))) e!3088757))))

(assert (= (and b!4943582 (is-Node!14973 (left!41526 (c!843434 totalInput!685)))) b!4943710))

(assert (= b!4943711 b!4943712))

(assert (= (and b!4943582 (is-Leaf!24893 (left!41526 (c!843434 totalInput!685)))) b!4943711))

(declare-fun m!5966738 () Bool)

(assert (=> b!4943710 m!5966738))

(declare-fun m!5966740 () Bool)

(assert (=> b!4943710 m!5966740))

(declare-fun m!5966742 () Bool)

(assert (=> b!4943711 m!5966742))

(assert (=> b!4943582 m!5966640))

(declare-fun e!3088759 () Bool)

(declare-fun b!4943713 () Bool)

(declare-fun tp!1386744 () Bool)

(declare-fun tp!1386743 () Bool)

(assert (=> b!4943713 (= e!3088759 (and (inv!74056 (left!41526 (right!41856 (c!843434 totalInput!685)))) tp!1386743 (inv!74056 (right!41856 (right!41856 (c!843434 totalInput!685)))) tp!1386744))))

(declare-fun b!4943715 () Bool)

(declare-fun e!3088758 () Bool)

(declare-fun tp!1386742 () Bool)

(assert (=> b!4943715 (= e!3088758 tp!1386742)))

(declare-fun b!4943714 () Bool)

(assert (=> b!4943714 (= e!3088759 (and (inv!74061 (xs!18299 (right!41856 (c!843434 totalInput!685)))) e!3088758))))

(assert (=> b!4943582 (= tp!1386723 (and (inv!74056 (right!41856 (c!843434 totalInput!685))) e!3088759))))

(assert (= (and b!4943582 (is-Node!14973 (right!41856 (c!843434 totalInput!685)))) b!4943713))

(assert (= b!4943714 b!4943715))

(assert (= (and b!4943582 (is-Leaf!24893 (right!41856 (c!843434 totalInput!685)))) b!4943714))

(declare-fun m!5966744 () Bool)

(assert (=> b!4943713 m!5966744))

(declare-fun m!5966746 () Bool)

(assert (=> b!4943713 m!5966746))

(declare-fun m!5966748 () Bool)

(assert (=> b!4943714 m!5966748))

(assert (=> b!4943582 m!5966642))

(declare-fun b!4943716 () Bool)

(declare-fun e!3088760 () Bool)

(declare-fun tp!1386745 () Bool)

(assert (=> b!4943716 (= e!3088760 (and tp_is_empty!36105 tp!1386745))))

(assert (=> b!4943573 (= tp!1386714 e!3088760)))

(assert (= (and b!4943573 (is-Cons!56919 (t!367573 (t!367573 testedSuffix!70)))) b!4943716))

(declare-fun b!4943717 () Bool)

(declare-fun e!3088761 () Bool)

(declare-fun tp!1386746 () Bool)

(assert (=> b!4943717 (= e!3088761 (and tp_is_empty!36105 tp!1386746))))

(assert (=> b!4943584 (= tp!1386721 e!3088761)))

(assert (= (and b!4943584 (is-Cons!56919 (innerList!15061 (xs!18299 (c!843434 totalInput!685))))) b!4943717))

(push 1)

(assert (not b!4943706))

(assert (not b!4943715))

(assert (not b!4943678))

(assert (not b!4943655))

(assert (not b!4943696))

(assert (not b!4943637))

(assert (not b!4943707))

(assert (not b!4943695))

(assert tp_is_empty!36105)

(assert (not b!4943668))

(assert (not b!4943662))

(assert (not b!4943646))

(assert (not b!4943657))

(assert (not b!4943711))

(assert (not b!4943717))

(assert (not d!1591900))

(assert (not b!4943710))

(assert (not b!4943670))

(assert (not b!4943582))

(assert (not d!1591878))

(assert (not b!4943674))

(assert (not b!4943716))

(assert (not d!1591876))

(assert (not b!4943712))

(assert (not b!4943641))

(assert (not b!4943709))

(assert (not b!4943680))

(assert (not b!4943676))

(assert (not b!4943638))

(assert (not b!4943659))

(assert (not d!1591904))

(assert (not b!4943714))

(assert (not b!4943636))

(assert (not b!4943660))

(assert (not b!4943640))

(assert (not b!4943639))

(assert (not b!4943713))

(assert (not b!4943672))

(assert (not d!1591874))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

