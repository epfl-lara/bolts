; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!747556 () Bool)

(assert start!747556)

(declare-fun b!7915047 () Bool)

(declare-fun e!4672153 () Bool)

(declare-fun tp_is_empty!53155 () Bool)

(declare-fun tp!2357244 () Bool)

(assert (=> b!7915047 (= e!4672153 (and tp_is_empty!53155 tp!2357244))))

(declare-fun tp!2357246 () Bool)

(declare-fun tp!2357245 () Bool)

(declare-fun e!4672156 () Bool)

(declare-datatypes ((T!145550 0))(
  ( (T!145551 (val!32023 Int)) )
))
(declare-datatypes ((List!74535 0))(
  ( (Nil!74411) (Cons!74411 (h!80859 T!145550) (t!390030 List!74535)) )
))
(declare-datatypes ((IArray!31791 0))(
  ( (IArray!31792 (innerList!15953 List!74535)) )
))
(declare-datatypes ((Conc!15865 0))(
  ( (Node!15865 (left!56818 Conc!15865) (right!57148 Conc!15865) (csize!31960 Int) (cheight!16076 Int)) (Leaf!30179 (xs!19247 IArray!31791) (csize!31961 Int)) (Empty!15865) )
))
(declare-fun c!5365 () Conc!15865)

(declare-fun b!7915048 () Bool)

(declare-fun inv!95529 (Conc!15865) Bool)

(assert (=> b!7915048 (= e!4672156 (and (inv!95529 (left!56818 c!5365)) tp!2357246 (inv!95529 (right!57148 c!5365)) tp!2357245))))

(declare-fun res!3141483 () Bool)

(declare-fun e!4672154 () Bool)

(assert (=> start!747556 (=> (not res!3141483) (not e!4672154))))

(declare-fun isBalanced!4491 (Conc!15865) Bool)

(assert (=> start!747556 (= res!3141483 (isBalanced!4491 c!5365))))

(assert (=> start!747556 e!4672154))

(assert (=> start!747556 (and (inv!95529 c!5365) e!4672156)))

(assert (=> start!747556 e!4672153))

(declare-fun b!7915049 () Bool)

(declare-fun res!3141484 () Bool)

(assert (=> b!7915049 (=> (not res!3141484) (not e!4672154))))

(declare-fun ll!14 () List!74535)

(assert (=> b!7915049 (= res!3141484 (not (is-Nil!74411 ll!14)))))

(declare-fun b!7915050 () Bool)

(declare-fun e!4672155 () Bool)

(declare-fun tp!2357243 () Bool)

(assert (=> b!7915050 (= e!4672155 tp!2357243)))

(declare-fun b!7915051 () Bool)

(declare-fun inv!95530 (IArray!31791) Bool)

(assert (=> b!7915051 (= e!4672156 (and (inv!95530 (xs!19247 c!5365)) e!4672155))))

(declare-fun b!7915052 () Bool)

(assert (=> b!7915052 (= e!4672154 false)))

(declare-fun lt!2689693 () List!74535)

(declare-fun lt!2689691 () List!74535)

(declare-fun ++!18229 (List!74535 List!74535) List!74535)

(assert (=> b!7915052 (= lt!2689693 (++!18229 lt!2689691 (t!390030 ll!14)))))

(declare-fun lt!2689694 () List!74535)

(declare-fun lt!2689692 () Conc!15865)

(declare-fun list!19354 (Conc!15865) List!74535)

(assert (=> b!7915052 (= lt!2689694 (list!19354 lt!2689692))))

(declare-fun lt!2689690 () Conc!15865)

(assert (=> b!7915052 (= lt!2689691 (list!19354 lt!2689690))))

(declare-fun rec!46 (List!74535 Conc!15865) Conc!15865)

(assert (=> b!7915052 (= lt!2689692 (rec!46 (t!390030 ll!14) lt!2689690))))

(declare-fun append!1107 (Conc!15865 T!145550) Conc!15865)

(assert (=> b!7915052 (= lt!2689690 (append!1107 c!5365 (h!80859 ll!14)))))

(assert (= (and start!747556 res!3141483) b!7915049))

(assert (= (and b!7915049 res!3141484) b!7915052))

(assert (= (and start!747556 (is-Node!15865 c!5365)) b!7915048))

(assert (= b!7915051 b!7915050))

(assert (= (and start!747556 (is-Leaf!30179 c!5365)) b!7915051))

(assert (= (and start!747556 (is-Cons!74411 ll!14)) b!7915047))

(declare-fun m!8289016 () Bool)

(assert (=> b!7915048 m!8289016))

(declare-fun m!8289018 () Bool)

(assert (=> b!7915048 m!8289018))

(declare-fun m!8289020 () Bool)

(assert (=> start!747556 m!8289020))

(declare-fun m!8289022 () Bool)

(assert (=> start!747556 m!8289022))

(declare-fun m!8289024 () Bool)

(assert (=> b!7915051 m!8289024))

(declare-fun m!8289026 () Bool)

(assert (=> b!7915052 m!8289026))

(declare-fun m!8289028 () Bool)

(assert (=> b!7915052 m!8289028))

(declare-fun m!8289030 () Bool)

(assert (=> b!7915052 m!8289030))

(declare-fun m!8289032 () Bool)

(assert (=> b!7915052 m!8289032))

(declare-fun m!8289034 () Bool)

(assert (=> b!7915052 m!8289034))

(push 1)

(assert (not b!7915048))

(assert (not start!747556))

(assert tp_is_empty!53155)

(assert (not b!7915052))

(assert (not b!7915047))

(assert (not b!7915051))

(assert (not b!7915050))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

