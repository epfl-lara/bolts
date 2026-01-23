; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!248840 () Bool)

(assert start!248840)

(declare-fun b!2576051 () Bool)

(declare-fun e!1625429 () Bool)

(declare-datatypes ((B!1933 0))(
  ( (B!1934 (val!9394 Int)) )
))
(declare-datatypes ((List!29728 0))(
  ( (Nil!29628) (Cons!29628 (h!35048 B!1933) (t!211427 List!29728)) )
))
(declare-fun l1!976 () List!29728)

(declare-fun l2!953 () List!29728)

(declare-fun subseq!447 (List!29728 List!29728) Bool)

(assert (=> b!2576051 (= e!1625429 (not (subseq!447 l1!976 l2!953)))))

(declare-fun res!1083587 () Bool)

(assert (=> start!248840 (=> (not res!1083587) (not e!1625429))))

(declare-fun consecutiveSubseq!16 (List!29728 List!29728) Bool)

(assert (=> start!248840 (= res!1083587 (consecutiveSubseq!16 l1!976 l2!953))))

(assert (=> start!248840 e!1625429))

(declare-fun e!1625431 () Bool)

(assert (=> start!248840 e!1625431))

(declare-fun e!1625430 () Bool)

(assert (=> start!248840 e!1625430))

(declare-fun b!2576052 () Bool)

(declare-fun res!1083589 () Bool)

(assert (=> b!2576052 (=> (not res!1083589) (not e!1625429))))

(get-info :version)

(assert (=> b!2576052 (= res!1083589 (or (not ((_ is Cons!29628) l1!976)) (not ((_ is Cons!29628) l2!953))))))

(declare-fun b!2576053 () Bool)

(declare-fun res!1083590 () Bool)

(assert (=> b!2576053 (=> (not res!1083590) (not e!1625429))))

(declare-fun e!1625432 () Bool)

(assert (=> b!2576053 (= res!1083590 e!1625432)))

(declare-fun res!1083588 () Bool)

(assert (=> b!2576053 (=> res!1083588 e!1625432)))

(assert (=> b!2576053 (= res!1083588 (or (not ((_ is Cons!29628) l1!976)) (not ((_ is Cons!29628) l2!953))))))

(declare-fun b!2576054 () Bool)

(declare-fun tp_is_empty!13181 () Bool)

(declare-fun tp!818857 () Bool)

(assert (=> b!2576054 (= e!1625430 (and tp_is_empty!13181 tp!818857))))

(declare-fun b!2576055 () Bool)

(declare-fun consecutiveSubseqAtHead!15 (List!29728 List!29728) Bool)

(assert (=> b!2576055 (= e!1625432 (not (consecutiveSubseqAtHead!15 l1!976 l2!953)))))

(declare-fun b!2576056 () Bool)

(declare-fun tp!818858 () Bool)

(assert (=> b!2576056 (= e!1625431 (and tp_is_empty!13181 tp!818858))))

(assert (= (and start!248840 res!1083587) b!2576053))

(assert (= (and b!2576053 (not res!1083588)) b!2576055))

(assert (= (and b!2576053 res!1083590) b!2576052))

(assert (= (and b!2576052 res!1083589) b!2576051))

(assert (= (and start!248840 ((_ is Cons!29628) l1!976)) b!2576056))

(assert (= (and start!248840 ((_ is Cons!29628) l2!953)) b!2576054))

(declare-fun m!2910737 () Bool)

(assert (=> b!2576051 m!2910737))

(declare-fun m!2910739 () Bool)

(assert (=> start!248840 m!2910739))

(declare-fun m!2910741 () Bool)

(assert (=> b!2576055 m!2910741))

(check-sat (not b!2576055) tp_is_empty!13181 (not start!248840) (not b!2576051) (not b!2576054) (not b!2576056))
(check-sat)
(get-model)

(declare-fun b!2576069 () Bool)

(declare-fun e!1625441 () Bool)

(assert (=> b!2576069 (= e!1625441 (consecutiveSubseq!16 l1!976 (t!211427 l2!953)))))

(declare-fun b!2576068 () Bool)

(declare-fun e!1625442 () Bool)

(declare-fun call!166658 () Bool)

(assert (=> b!2576068 (= e!1625442 call!166658)))

(declare-fun d!728563 () Bool)

(declare-fun c!414898 () Bool)

(assert (=> d!728563 (= c!414898 ((_ is Cons!29628) l2!953))))

(assert (=> d!728563 (= (consecutiveSubseq!16 l1!976 l2!953) e!1625442)))

(declare-fun b!2576067 () Bool)

(assert (=> b!2576067 (= e!1625442 e!1625441)))

(declare-fun res!1083597 () Bool)

(assert (=> b!2576067 (= res!1083597 call!166658)))

(assert (=> b!2576067 (=> res!1083597 e!1625441)))

(declare-fun bm!166653 () Bool)

(assert (=> bm!166653 (= call!166658 (consecutiveSubseqAtHead!15 l1!976 l2!953))))

(assert (= (and d!728563 c!414898) b!2576067))

(assert (= (and d!728563 (not c!414898)) b!2576068))

(assert (= (and b!2576067 (not res!1083597)) b!2576069))

(assert (= (or b!2576067 b!2576068) bm!166653))

(declare-fun m!2910743 () Bool)

(assert (=> b!2576069 m!2910743))

(assert (=> bm!166653 m!2910741))

(assert (=> start!248840 d!728563))

(declare-fun d!728567 () Bool)

(declare-fun res!1083606 () Bool)

(declare-fun e!1625453 () Bool)

(assert (=> d!728567 (=> res!1083606 e!1625453)))

(assert (=> d!728567 (= res!1083606 ((_ is Nil!29628) l1!976))))

(assert (=> d!728567 (= (consecutiveSubseqAtHead!15 l1!976 l2!953) e!1625453)))

(declare-fun b!2576082 () Bool)

(declare-fun e!1625454 () Bool)

(assert (=> b!2576082 (= e!1625453 e!1625454)))

(declare-fun res!1083607 () Bool)

(assert (=> b!2576082 (=> (not res!1083607) (not e!1625454))))

(assert (=> b!2576082 (= res!1083607 (and ((_ is Cons!29628) l2!953) (= (h!35048 l1!976) (h!35048 l2!953))))))

(declare-fun b!2576083 () Bool)

(assert (=> b!2576083 (= e!1625454 (consecutiveSubseqAtHead!15 (t!211427 l1!976) (t!211427 l2!953)))))

(assert (= (and d!728567 (not res!1083606)) b!2576082))

(assert (= (and b!2576082 res!1083607) b!2576083))

(declare-fun m!2910747 () Bool)

(assert (=> b!2576083 m!2910747))

(assert (=> b!2576055 d!728567))

(declare-fun b!2576101 () Bool)

(declare-fun e!1625469 () Bool)

(assert (=> b!2576101 (= e!1625469 (subseq!447 (t!211427 l1!976) (t!211427 l2!953)))))

(declare-fun b!2576100 () Bool)

(declare-fun e!1625470 () Bool)

(declare-fun e!1625471 () Bool)

(assert (=> b!2576100 (= e!1625470 e!1625471)))

(declare-fun res!1083623 () Bool)

(assert (=> b!2576100 (=> res!1083623 e!1625471)))

(assert (=> b!2576100 (= res!1083623 e!1625469)))

(declare-fun res!1083622 () Bool)

(assert (=> b!2576100 (=> (not res!1083622) (not e!1625469))))

(assert (=> b!2576100 (= res!1083622 (= (h!35048 l1!976) (h!35048 l2!953)))))

(declare-fun b!2576099 () Bool)

(declare-fun e!1625472 () Bool)

(assert (=> b!2576099 (= e!1625472 e!1625470)))

(declare-fun res!1083621 () Bool)

(assert (=> b!2576099 (=> (not res!1083621) (not e!1625470))))

(assert (=> b!2576099 (= res!1083621 ((_ is Cons!29628) l2!953))))

(declare-fun d!728571 () Bool)

(declare-fun res!1083624 () Bool)

(assert (=> d!728571 (=> res!1083624 e!1625472)))

(assert (=> d!728571 (= res!1083624 ((_ is Nil!29628) l1!976))))

(assert (=> d!728571 (= (subseq!447 l1!976 l2!953) e!1625472)))

(declare-fun b!2576102 () Bool)

(assert (=> b!2576102 (= e!1625471 (subseq!447 l1!976 (t!211427 l2!953)))))

(assert (= (and d!728571 (not res!1083624)) b!2576099))

(assert (= (and b!2576099 res!1083621) b!2576100))

(assert (= (and b!2576100 res!1083622) b!2576101))

(assert (= (and b!2576100 (not res!1083623)) b!2576102))

(declare-fun m!2910751 () Bool)

(assert (=> b!2576101 m!2910751))

(declare-fun m!2910753 () Bool)

(assert (=> b!2576102 m!2910753))

(assert (=> b!2576051 d!728571))

(declare-fun b!2576111 () Bool)

(declare-fun e!1625479 () Bool)

(declare-fun tp!818861 () Bool)

(assert (=> b!2576111 (= e!1625479 (and tp_is_empty!13181 tp!818861))))

(assert (=> b!2576054 (= tp!818857 e!1625479)))

(assert (= (and b!2576054 ((_ is Cons!29628) (t!211427 l2!953))) b!2576111))

(declare-fun b!2576112 () Bool)

(declare-fun e!1625480 () Bool)

(declare-fun tp!818862 () Bool)

(assert (=> b!2576112 (= e!1625480 (and tp_is_empty!13181 tp!818862))))

(assert (=> b!2576056 (= tp!818858 e!1625480)))

(assert (= (and b!2576056 ((_ is Cons!29628) (t!211427 l1!976))) b!2576112))

(check-sat (not b!2576102) tp_is_empty!13181 (not b!2576069) (not bm!166653) (not b!2576112) (not b!2576101) (not b!2576083) (not b!2576111))
(check-sat)
(get-model)

(declare-fun b!2576125 () Bool)

(declare-fun e!1625489 () Bool)

(assert (=> b!2576125 (= e!1625489 (subseq!447 (t!211427 l1!976) (t!211427 (t!211427 l2!953))))))

(declare-fun b!2576124 () Bool)

(declare-fun e!1625490 () Bool)

(declare-fun e!1625491 () Bool)

(assert (=> b!2576124 (= e!1625490 e!1625491)))

(declare-fun res!1083635 () Bool)

(assert (=> b!2576124 (=> res!1083635 e!1625491)))

(assert (=> b!2576124 (= res!1083635 e!1625489)))

(declare-fun res!1083634 () Bool)

(assert (=> b!2576124 (=> (not res!1083634) (not e!1625489))))

(assert (=> b!2576124 (= res!1083634 (= (h!35048 l1!976) (h!35048 (t!211427 l2!953))))))

(declare-fun b!2576123 () Bool)

(declare-fun e!1625492 () Bool)

(assert (=> b!2576123 (= e!1625492 e!1625490)))

(declare-fun res!1083633 () Bool)

(assert (=> b!2576123 (=> (not res!1083633) (not e!1625490))))

(assert (=> b!2576123 (= res!1083633 ((_ is Cons!29628) (t!211427 l2!953)))))

(declare-fun d!728575 () Bool)

(declare-fun res!1083636 () Bool)

(assert (=> d!728575 (=> res!1083636 e!1625492)))

(assert (=> d!728575 (= res!1083636 ((_ is Nil!29628) l1!976))))

(assert (=> d!728575 (= (subseq!447 l1!976 (t!211427 l2!953)) e!1625492)))

(declare-fun b!2576126 () Bool)

(assert (=> b!2576126 (= e!1625491 (subseq!447 l1!976 (t!211427 (t!211427 l2!953))))))

(assert (= (and d!728575 (not res!1083636)) b!2576123))

(assert (= (and b!2576123 res!1083633) b!2576124))

(assert (= (and b!2576124 res!1083634) b!2576125))

(assert (= (and b!2576124 (not res!1083635)) b!2576126))

(declare-fun m!2910759 () Bool)

(assert (=> b!2576125 m!2910759))

(declare-fun m!2910761 () Bool)

(assert (=> b!2576126 m!2910761))

(assert (=> b!2576102 d!728575))

(declare-fun b!2576129 () Bool)

(declare-fun e!1625493 () Bool)

(assert (=> b!2576129 (= e!1625493 (consecutiveSubseq!16 l1!976 (t!211427 (t!211427 l2!953))))))

(declare-fun b!2576128 () Bool)

(declare-fun e!1625494 () Bool)

(declare-fun call!166662 () Bool)

(assert (=> b!2576128 (= e!1625494 call!166662)))

(declare-fun d!728577 () Bool)

(declare-fun c!414902 () Bool)

(assert (=> d!728577 (= c!414902 ((_ is Cons!29628) (t!211427 l2!953)))))

(assert (=> d!728577 (= (consecutiveSubseq!16 l1!976 (t!211427 l2!953)) e!1625494)))

(declare-fun b!2576127 () Bool)

(assert (=> b!2576127 (= e!1625494 e!1625493)))

(declare-fun res!1083637 () Bool)

(assert (=> b!2576127 (= res!1083637 call!166662)))

(assert (=> b!2576127 (=> res!1083637 e!1625493)))

(declare-fun bm!166657 () Bool)

(assert (=> bm!166657 (= call!166662 (consecutiveSubseqAtHead!15 l1!976 (t!211427 l2!953)))))

(assert (= (and d!728577 c!414902) b!2576127))

(assert (= (and d!728577 (not c!414902)) b!2576128))

(assert (= (and b!2576127 (not res!1083637)) b!2576129))

(assert (= (or b!2576127 b!2576128) bm!166657))

(declare-fun m!2910763 () Bool)

(assert (=> b!2576129 m!2910763))

(declare-fun m!2910765 () Bool)

(assert (=> bm!166657 m!2910765))

(assert (=> b!2576069 d!728577))

(declare-fun d!728579 () Bool)

(declare-fun res!1083638 () Bool)

(declare-fun e!1625495 () Bool)

(assert (=> d!728579 (=> res!1083638 e!1625495)))

(assert (=> d!728579 (= res!1083638 ((_ is Nil!29628) (t!211427 l1!976)))))

(assert (=> d!728579 (= (consecutiveSubseqAtHead!15 (t!211427 l1!976) (t!211427 l2!953)) e!1625495)))

(declare-fun b!2576130 () Bool)

(declare-fun e!1625496 () Bool)

(assert (=> b!2576130 (= e!1625495 e!1625496)))

(declare-fun res!1083639 () Bool)

(assert (=> b!2576130 (=> (not res!1083639) (not e!1625496))))

(assert (=> b!2576130 (= res!1083639 (and ((_ is Cons!29628) (t!211427 l2!953)) (= (h!35048 (t!211427 l1!976)) (h!35048 (t!211427 l2!953)))))))

(declare-fun b!2576131 () Bool)

(assert (=> b!2576131 (= e!1625496 (consecutiveSubseqAtHead!15 (t!211427 (t!211427 l1!976)) (t!211427 (t!211427 l2!953))))))

(assert (= (and d!728579 (not res!1083638)) b!2576130))

(assert (= (and b!2576130 res!1083639) b!2576131))

(declare-fun m!2910767 () Bool)

(assert (=> b!2576131 m!2910767))

(assert (=> b!2576083 d!728579))

(assert (=> bm!166653 d!728567))

(declare-fun b!2576134 () Bool)

(declare-fun e!1625497 () Bool)

(assert (=> b!2576134 (= e!1625497 (subseq!447 (t!211427 (t!211427 l1!976)) (t!211427 (t!211427 l2!953))))))

(declare-fun b!2576133 () Bool)

(declare-fun e!1625498 () Bool)

(declare-fun e!1625499 () Bool)

(assert (=> b!2576133 (= e!1625498 e!1625499)))

(declare-fun res!1083642 () Bool)

(assert (=> b!2576133 (=> res!1083642 e!1625499)))

(assert (=> b!2576133 (= res!1083642 e!1625497)))

(declare-fun res!1083641 () Bool)

(assert (=> b!2576133 (=> (not res!1083641) (not e!1625497))))

(assert (=> b!2576133 (= res!1083641 (= (h!35048 (t!211427 l1!976)) (h!35048 (t!211427 l2!953))))))

(declare-fun b!2576132 () Bool)

(declare-fun e!1625500 () Bool)

(assert (=> b!2576132 (= e!1625500 e!1625498)))

(declare-fun res!1083640 () Bool)

(assert (=> b!2576132 (=> (not res!1083640) (not e!1625498))))

(assert (=> b!2576132 (= res!1083640 ((_ is Cons!29628) (t!211427 l2!953)))))

(declare-fun d!728581 () Bool)

(declare-fun res!1083643 () Bool)

(assert (=> d!728581 (=> res!1083643 e!1625500)))

(assert (=> d!728581 (= res!1083643 ((_ is Nil!29628) (t!211427 l1!976)))))

(assert (=> d!728581 (= (subseq!447 (t!211427 l1!976) (t!211427 l2!953)) e!1625500)))

(declare-fun b!2576135 () Bool)

(assert (=> b!2576135 (= e!1625499 (subseq!447 (t!211427 l1!976) (t!211427 (t!211427 l2!953))))))

(assert (= (and d!728581 (not res!1083643)) b!2576132))

(assert (= (and b!2576132 res!1083640) b!2576133))

(assert (= (and b!2576133 res!1083641) b!2576134))

(assert (= (and b!2576133 (not res!1083642)) b!2576135))

(declare-fun m!2910769 () Bool)

(assert (=> b!2576134 m!2910769))

(assert (=> b!2576135 m!2910759))

(assert (=> b!2576101 d!728581))

(declare-fun b!2576136 () Bool)

(declare-fun e!1625501 () Bool)

(declare-fun tp!818867 () Bool)

(assert (=> b!2576136 (= e!1625501 (and tp_is_empty!13181 tp!818867))))

(assert (=> b!2576112 (= tp!818862 e!1625501)))

(assert (= (and b!2576112 ((_ is Cons!29628) (t!211427 (t!211427 l1!976)))) b!2576136))

(declare-fun b!2576137 () Bool)

(declare-fun e!1625502 () Bool)

(declare-fun tp!818868 () Bool)

(assert (=> b!2576137 (= e!1625502 (and tp_is_empty!13181 tp!818868))))

(assert (=> b!2576111 (= tp!818861 e!1625502)))

(assert (= (and b!2576111 ((_ is Cons!29628) (t!211427 (t!211427 l2!953)))) b!2576137))

(check-sat tp_is_empty!13181 (not b!2576126) (not b!2576129) (not bm!166657) (not b!2576136) (not b!2576131) (not b!2576134) (not b!2576137) (not b!2576135) (not b!2576125))
(check-sat)
