; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2488 () Bool)

(assert start!2488)

(declare-fun b_free!511 () Bool)

(declare-fun b_next!511 () Bool)

(assert (=> start!2488 (= b_free!511 (not b_next!511))))

(declare-fun tp!2632 () Bool)

(declare-fun b_and!957 () Bool)

(assert (=> start!2488 (= tp!2632 b_and!957)))

(declare-fun res!11718 () Bool)

(declare-fun e!9444 () Bool)

(assert (=> start!2488 (=> (not res!11718) (not e!9444))))

(declare-datatypes ((B!632 0))(
  ( (B!633 (val!414 Int)) )
))
(declare-datatypes ((tuple2!610 0))(
  ( (tuple2!611 (_1!305 (_ BitVec 64)) (_2!305 B!632)) )
))
(declare-datatypes ((List!482 0))(
  ( (Nil!479) (Cons!478 (h!1044 tuple2!610) (t!2920 List!482)) )
))
(declare-datatypes ((ListLongMap!441 0))(
  ( (ListLongMap!442 (toList!236 List!482)) )
))
(declare-fun lm!238 () ListLongMap!441)

(declare-fun p!262 () Int)

(declare-fun forall!119 (List!482 Int) Bool)

(assert (=> start!2488 (= res!11718 (forall!119 (toList!236 lm!238) p!262))))

(assert (=> start!2488 e!9444))

(declare-fun e!9445 () Bool)

(declare-fun inv!816 (ListLongMap!441) Bool)

(assert (=> start!2488 (and (inv!816 lm!238) e!9445)))

(assert (=> start!2488 tp!2632))

(assert (=> start!2488 true))

(declare-fun b!15519 () Bool)

(declare-fun res!11719 () Bool)

(assert (=> b!15519 (=> (not res!11719) (not e!9444))))

(declare-datatypes ((List!483 0))(
  ( (Nil!480) (Cons!479 (h!1045 (_ BitVec 64)) (t!2921 List!483)) )
))
(declare-fun l!1612 () List!483)

(declare-fun isEmpty!129 (List!483) Bool)

(assert (=> b!15519 (= res!11719 (not (isEmpty!129 l!1612)))))

(declare-fun b!15520 () Bool)

(assert (=> b!15520 (= e!9444 (not true))))

(declare-fun lt!3782 () (_ BitVec 64))

(declare-fun -!18 (ListLongMap!441 (_ BitVec 64)) ListLongMap!441)

(assert (=> b!15520 (forall!119 (toList!236 (-!18 lm!238 lt!3782)) p!262)))

(declare-datatypes ((Unit!302 0))(
  ( (Unit!303) )
))
(declare-fun lt!3783 () Unit!302)

(declare-fun removeValidProp!11 (ListLongMap!441 Int (_ BitVec 64)) Unit!302)

(assert (=> b!15520 (= lt!3783 (removeValidProp!11 lm!238 p!262 lt!3782))))

(declare-fun head!809 (List!483) (_ BitVec 64))

(assert (=> b!15520 (= lt!3782 (head!809 l!1612))))

(declare-fun b!15521 () Bool)

(declare-fun tp!2633 () Bool)

(assert (=> b!15521 (= e!9445 tp!2633)))

(assert (= (and start!2488 res!11718) b!15519))

(assert (= (and b!15519 res!11719) b!15520))

(assert (= start!2488 b!15521))

(declare-fun m!10429 () Bool)

(assert (=> start!2488 m!10429))

(declare-fun m!10431 () Bool)

(assert (=> start!2488 m!10431))

(declare-fun m!10433 () Bool)

(assert (=> b!15519 m!10433))

(declare-fun m!10435 () Bool)

(assert (=> b!15520 m!10435))

(declare-fun m!10437 () Bool)

(assert (=> b!15520 m!10437))

(declare-fun m!10439 () Bool)

(assert (=> b!15520 m!10439))

(declare-fun m!10441 () Bool)

(assert (=> b!15520 m!10441))

(push 1)

(assert (not b!15521))

(assert (not b_next!511))

(assert b_and!957)

(assert (not b!15519))

(assert (not start!2488))

(assert (not b!15520))

(check-sat)

(pop 1)

(push 1)

(assert b_and!957)

(assert (not b_next!511))

(check-sat)

(pop 1)

