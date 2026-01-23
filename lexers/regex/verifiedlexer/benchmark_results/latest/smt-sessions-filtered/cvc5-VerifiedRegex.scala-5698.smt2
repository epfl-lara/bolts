; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!283682 () Bool)

(assert start!283682)

(declare-datatypes ((T!58576 0))(
  ( (T!58577 (val!11075 Int)) )
))
(declare-datatypes ((List!34811 0))(
  ( (Nil!34687) (Cons!34687 (h!40107 T!58576) (t!233874 List!34811)) )
))
(declare-datatypes ((IArray!21051 0))(
  ( (IArray!21052 (innerList!10583 List!34811)) )
))
(declare-datatypes ((Conc!10523 0))(
  ( (Node!10523 (left!26065 Conc!10523) (right!26395 Conc!10523) (csize!21276 Int) (cheight!10734 Int)) (Leaf!16222 (xs!13641 IArray!21051) (csize!21277 Int)) (Empty!10523) )
))
(declare-datatypes ((BalanceConc!20684 0))(
  ( (BalanceConc!20685 (c!474678 Conc!10523)) )
))
(declare-fun thiss!5782 () BalanceConc!20684)

(declare-fun v!5442 () T!58576)

(declare-fun contains!6134 (Conc!10523 T!58576) Bool)

(declare-fun contains!6135 (List!34811 T!58576) Bool)

(declare-fun list!12628 (BalanceConc!20684) List!34811)

(assert (=> start!283682 (not (= (contains!6134 (c!474678 thiss!5782) v!5442) (contains!6135 (list!12628 thiss!5782) v!5442)))))

(declare-fun e!1837432 () Bool)

(declare-fun inv!46886 (BalanceConc!20684) Bool)

(assert (=> start!283682 (and (inv!46886 thiss!5782) e!1837432)))

(declare-fun tp_is_empty!15455 () Bool)

(assert (=> start!283682 tp_is_empty!15455))

(declare-fun b!2910984 () Bool)

(declare-fun tp!935284 () Bool)

(declare-fun inv!46887 (Conc!10523) Bool)

(assert (=> b!2910984 (= e!1837432 (and (inv!46887 (c!474678 thiss!5782)) tp!935284))))

(assert (= start!283682 b!2910984))

(declare-fun m!3312525 () Bool)

(assert (=> start!283682 m!3312525))

(declare-fun m!3312527 () Bool)

(assert (=> start!283682 m!3312527))

(assert (=> start!283682 m!3312527))

(declare-fun m!3312529 () Bool)

(assert (=> start!283682 m!3312529))

(declare-fun m!3312531 () Bool)

(assert (=> start!283682 m!3312531))

(declare-fun m!3312533 () Bool)

(assert (=> b!2910984 m!3312533))

(push 1)

(assert (not b!2910984))

(assert (not start!283682))

(assert tp_is_empty!15455)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!837623 () Bool)

(declare-fun c!474682 () Bool)

(assert (=> d!837623 (= c!474682 (is-Node!10523 (c!474678 thiss!5782)))))

(declare-fun e!1837440 () Bool)

(assert (=> d!837623 (= (inv!46887 (c!474678 thiss!5782)) e!1837440)))

(declare-fun b!2910994 () Bool)

(declare-fun inv!46890 (Conc!10523) Bool)

(assert (=> b!2910994 (= e!1837440 (inv!46890 (c!474678 thiss!5782)))))

(declare-fun b!2910995 () Bool)

(declare-fun e!1837441 () Bool)

(assert (=> b!2910995 (= e!1837440 e!1837441)))

(declare-fun res!1201625 () Bool)

(assert (=> b!2910995 (= res!1201625 (not (is-Leaf!16222 (c!474678 thiss!5782))))))

(assert (=> b!2910995 (=> res!1201625 e!1837441)))

(declare-fun b!2910996 () Bool)

(declare-fun inv!46891 (Conc!10523) Bool)

(assert (=> b!2910996 (= e!1837441 (inv!46891 (c!474678 thiss!5782)))))

(assert (= (and d!837623 c!474682) b!2910994))

(assert (= (and d!837623 (not c!474682)) b!2910995))

(assert (= (and b!2910995 (not res!1201625)) b!2910996))

(declare-fun m!3312545 () Bool)

(assert (=> b!2910994 m!3312545))

(declare-fun m!3312547 () Bool)

(assert (=> b!2910996 m!3312547))

(assert (=> b!2910984 d!837623))

(declare-fun b!2911008 () Bool)

(declare-fun e!1837450 () Bool)

(assert (=> b!2911008 (= e!1837450 (contains!6134 (right!26395 (c!474678 thiss!5782)) v!5442))))

(declare-fun d!837625 () Bool)

(declare-fun lt!1023836 () Bool)

(declare-fun list!12630 (Conc!10523) List!34811)

(assert (=> d!837625 (= lt!1023836 (contains!6135 (list!12630 (c!474678 thiss!5782)) v!5442))))

(declare-fun e!1837448 () Bool)

(assert (=> d!837625 (= lt!1023836 e!1837448)))

(declare-fun res!1201631 () Bool)

(assert (=> d!837625 (=> (not res!1201631) (not e!1837448))))

(assert (=> d!837625 (= res!1201631 (not (is-Empty!10523 (c!474678 thiss!5782))))))

(assert (=> d!837625 (= (contains!6134 (c!474678 thiss!5782) v!5442) lt!1023836)))

(declare-fun b!2911006 () Bool)

(declare-fun e!1837449 () Bool)

(declare-fun contains!6138 (IArray!21051 T!58576) Bool)

(assert (=> b!2911006 (= e!1837449 (contains!6138 (xs!13641 (c!474678 thiss!5782)) v!5442))))

(declare-fun b!2911005 () Bool)

(assert (=> b!2911005 (= e!1837448 e!1837449)))

(declare-fun c!474685 () Bool)

(assert (=> b!2911005 (= c!474685 (is-Leaf!16222 (c!474678 thiss!5782)))))

(declare-fun b!2911007 () Bool)

(assert (=> b!2911007 (= e!1837449 e!1837450)))

(declare-fun res!1201630 () Bool)

(assert (=> b!2911007 (= res!1201630 (contains!6134 (left!26065 (c!474678 thiss!5782)) v!5442))))

(assert (=> b!2911007 (=> res!1201630 e!1837450)))

(assert (= (and d!837625 res!1201631) b!2911005))

(assert (= (and b!2911005 c!474685) b!2911006))

(assert (= (and b!2911005 (not c!474685)) b!2911007))

(assert (= (and b!2911007 (not res!1201630)) b!2911008))

(declare-fun m!3312549 () Bool)

(assert (=> b!2911008 m!3312549))

(declare-fun m!3312551 () Bool)

(assert (=> d!837625 m!3312551))

(assert (=> d!837625 m!3312551))

(declare-fun m!3312553 () Bool)

(assert (=> d!837625 m!3312553))

(declare-fun m!3312555 () Bool)

(assert (=> b!2911006 m!3312555))

(declare-fun m!3312557 () Bool)

(assert (=> b!2911007 m!3312557))

(assert (=> start!283682 d!837625))

(declare-fun d!837629 () Bool)

(declare-fun lt!1023839 () Bool)

(declare-fun content!4745 (List!34811) (Set T!58576))

(assert (=> d!837629 (= lt!1023839 (set.member v!5442 (content!4745 (list!12628 thiss!5782))))))

(declare-fun e!1837456 () Bool)

(assert (=> d!837629 (= lt!1023839 e!1837456)))

(declare-fun res!1201637 () Bool)

(assert (=> d!837629 (=> (not res!1201637) (not e!1837456))))

(assert (=> d!837629 (= res!1201637 (is-Cons!34687 (list!12628 thiss!5782)))))

(assert (=> d!837629 (= (contains!6135 (list!12628 thiss!5782) v!5442) lt!1023839)))

(declare-fun b!2911013 () Bool)

(declare-fun e!1837455 () Bool)

(assert (=> b!2911013 (= e!1837456 e!1837455)))

(declare-fun res!1201636 () Bool)

(assert (=> b!2911013 (=> res!1201636 e!1837455)))

(assert (=> b!2911013 (= res!1201636 (= (h!40107 (list!12628 thiss!5782)) v!5442))))

(declare-fun b!2911014 () Bool)

(assert (=> b!2911014 (= e!1837455 (contains!6135 (t!233874 (list!12628 thiss!5782)) v!5442))))

(assert (= (and d!837629 res!1201637) b!2911013))

(assert (= (and b!2911013 (not res!1201636)) b!2911014))

(assert (=> d!837629 m!3312527))

(declare-fun m!3312559 () Bool)

(assert (=> d!837629 m!3312559))

(declare-fun m!3312561 () Bool)

(assert (=> d!837629 m!3312561))

(declare-fun m!3312563 () Bool)

(assert (=> b!2911014 m!3312563))

(assert (=> start!283682 d!837629))

(declare-fun d!837631 () Bool)

(assert (=> d!837631 (= (list!12628 thiss!5782) (list!12630 (c!474678 thiss!5782)))))

(declare-fun bs!524540 () Bool)

(assert (= bs!524540 d!837631))

(assert (=> bs!524540 m!3312551))

(assert (=> start!283682 d!837631))

(declare-fun d!837633 () Bool)

(declare-fun isBalanced!3173 (Conc!10523) Bool)

(assert (=> d!837633 (= (inv!46886 thiss!5782) (isBalanced!3173 (c!474678 thiss!5782)))))

(declare-fun bs!524541 () Bool)

(assert (= bs!524541 d!837633))

(declare-fun m!3312565 () Bool)

(assert (=> bs!524541 m!3312565))

(assert (=> start!283682 d!837633))

(declare-fun e!1837467 () Bool)

(declare-fun tp!935295 () Bool)

(declare-fun tp!935294 () Bool)

(declare-fun b!2911032 () Bool)

(assert (=> b!2911032 (= e!1837467 (and (inv!46887 (left!26065 (c!474678 thiss!5782))) tp!935295 (inv!46887 (right!26395 (c!474678 thiss!5782))) tp!935294))))

(declare-fun b!2911034 () Bool)

(declare-fun e!1837468 () Bool)

(declare-fun tp!935296 () Bool)

(assert (=> b!2911034 (= e!1837468 tp!935296)))

(declare-fun b!2911033 () Bool)

(declare-fun inv!46892 (IArray!21051) Bool)

(assert (=> b!2911033 (= e!1837467 (and (inv!46892 (xs!13641 (c!474678 thiss!5782))) e!1837468))))

(assert (=> b!2910984 (= tp!935284 (and (inv!46887 (c!474678 thiss!5782)) e!1837467))))

(assert (= (and b!2910984 (is-Node!10523 (c!474678 thiss!5782))) b!2911032))

(assert (= b!2911033 b!2911034))

(assert (= (and b!2910984 (is-Leaf!16222 (c!474678 thiss!5782))) b!2911033))

(declare-fun m!3312571 () Bool)

(assert (=> b!2911032 m!3312571))

(declare-fun m!3312573 () Bool)

(assert (=> b!2911032 m!3312573))

(declare-fun m!3312575 () Bool)

(assert (=> b!2911033 m!3312575))

(assert (=> b!2910984 m!3312533))

(push 1)

(assert tp_is_empty!15455)

(assert (not b!2910996))

(assert (not d!837629))

(assert (not b!2911006))

(assert (not d!837633))

(assert (not b!2911014))

(assert (not b!2910994))

(assert (not b!2911034))

(assert (not d!837631))

(assert (not b!2911033))

(assert (not b!2911007))

(assert (not b!2911032))

(assert (not b!2911008))

(assert (not d!837625))

(assert (not b!2910984))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

