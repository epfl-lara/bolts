; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2456 () Bool)

(assert start!2456)

(declare-fun b_free!497 () Bool)

(declare-fun b_next!497 () Bool)

(assert (=> start!2456 (= b_free!497 (not b_next!497))))

(declare-fun tp!2582 () Bool)

(declare-fun b_and!937 () Bool)

(assert (=> start!2456 (= tp!2582 b_and!937)))

(declare-fun res!11685 () Bool)

(declare-fun e!9376 () Bool)

(assert (=> start!2456 (=> (not res!11685) (not e!9376))))

(declare-datatypes ((B!618 0))(
  ( (B!619 (val!407 Int)) )
))
(declare-datatypes ((tuple2!596 0))(
  ( (tuple2!597 (_1!298 (_ BitVec 64)) (_2!298 B!618)) )
))
(declare-datatypes ((List!471 0))(
  ( (Nil!468) (Cons!467 (h!1033 tuple2!596) (t!2903 List!471)) )
))
(declare-datatypes ((ListLongMap!427 0))(
  ( (ListLongMap!428 (toList!229 List!471)) )
))
(declare-fun lm!238 () ListLongMap!427)

(declare-fun p!262 () Int)

(declare-fun forall!115 (List!471 Int) Bool)

(assert (=> start!2456 (= res!11685 (forall!115 (toList!229 lm!238) p!262))))

(assert (=> start!2456 e!9376))

(declare-fun e!9375 () Bool)

(declare-fun inv!794 (ListLongMap!427) Bool)

(assert (=> start!2456 (and (inv!794 lm!238) e!9375)))

(assert (=> start!2456 tp!2582))

(assert (=> start!2456 true))

(declare-fun b!15432 () Bool)

(declare-fun res!11686 () Bool)

(assert (=> b!15432 (=> (not res!11686) (not e!9376))))

(declare-datatypes ((List!472 0))(
  ( (Nil!469) (Cons!468 (h!1034 (_ BitVec 64)) (t!2904 List!472)) )
))
(declare-fun l!1612 () List!472)

(declare-fun isEmpty!128 (List!472) Bool)

(assert (=> b!15432 (= res!11686 (not (isEmpty!128 l!1612)))))

(declare-fun b!15433 () Bool)

(assert (=> b!15433 (= e!9376 (not true))))

(declare-fun lt!3767 () (_ BitVec 64))

(declare-fun -!17 (ListLongMap!427 (_ BitVec 64)) ListLongMap!427)

(assert (=> b!15433 (forall!115 (toList!229 (-!17 lm!238 lt!3767)) p!262)))

(declare-datatypes ((Unit!300 0))(
  ( (Unit!301) )
))
(declare-fun lt!3768 () Unit!300)

(declare-fun removeValidProp!10 (ListLongMap!427 Int (_ BitVec 64)) Unit!300)

(assert (=> b!15433 (= lt!3768 (removeValidProp!10 lm!238 p!262 lt!3767))))

(declare-fun head!808 (List!472) (_ BitVec 64))

(assert (=> b!15433 (= lt!3767 (head!808 l!1612))))

(declare-fun b!15434 () Bool)

(declare-fun tp!2581 () Bool)

(assert (=> b!15434 (= e!9375 tp!2581)))

(assert (= (and start!2456 res!11685) b!15432))

(assert (= (and b!15432 res!11686) b!15433))

(assert (= start!2456 b!15434))

(declare-fun m!10367 () Bool)

(assert (=> start!2456 m!10367))

(declare-fun m!10369 () Bool)

(assert (=> start!2456 m!10369))

(declare-fun m!10371 () Bool)

(assert (=> b!15432 m!10371))

(declare-fun m!10373 () Bool)

(assert (=> b!15433 m!10373))

(declare-fun m!10375 () Bool)

(assert (=> b!15433 m!10375))

(declare-fun m!10377 () Bool)

(assert (=> b!15433 m!10377))

(declare-fun m!10379 () Bool)

(assert (=> b!15433 m!10379))

(push 1)

(assert (not b_next!497))

(assert (not start!2456))

(assert (not b!15432))

(assert b_and!937)

(assert (not b!15434))

(assert (not b!15433))

(check-sat)

(pop 1)

