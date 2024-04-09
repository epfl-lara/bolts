; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2492 () Bool)

(assert start!2492)

(declare-fun b_free!515 () Bool)

(declare-fun b_next!515 () Bool)

(assert (=> start!2492 (= b_free!515 (not b_next!515))))

(declare-fun tp!2645 () Bool)

(declare-fun b_and!961 () Bool)

(assert (=> start!2492 (= tp!2645 b_and!961)))

(declare-fun res!11731 () Bool)

(declare-fun e!9456 () Bool)

(assert (=> start!2492 (=> (not res!11731) (not e!9456))))

(declare-datatypes ((B!636 0))(
  ( (B!637 (val!416 Int)) )
))
(declare-datatypes ((tuple2!614 0))(
  ( (tuple2!615 (_1!307 (_ BitVec 64)) (_2!307 B!636)) )
))
(declare-datatypes ((List!486 0))(
  ( (Nil!483) (Cons!482 (h!1048 tuple2!614) (t!2924 List!486)) )
))
(declare-datatypes ((ListLongMap!445 0))(
  ( (ListLongMap!446 (toList!238 List!486)) )
))
(declare-fun lm!238 () ListLongMap!445)

(declare-fun p!262 () Int)

(declare-fun forall!121 (List!486 Int) Bool)

(assert (=> start!2492 (= res!11731 (forall!121 (toList!238 lm!238) p!262))))

(assert (=> start!2492 e!9456))

(declare-fun e!9457 () Bool)

(declare-fun inv!818 (ListLongMap!445) Bool)

(assert (=> start!2492 (and (inv!818 lm!238) e!9457)))

(assert (=> start!2492 tp!2645))

(assert (=> start!2492 true))

(declare-fun b!15537 () Bool)

(declare-fun res!11730 () Bool)

(assert (=> b!15537 (=> (not res!11730) (not e!9456))))

(declare-datatypes ((List!487 0))(
  ( (Nil!484) (Cons!483 (h!1049 (_ BitVec 64)) (t!2925 List!487)) )
))
(declare-fun l!1612 () List!487)

(declare-fun isEmpty!131 (List!487) Bool)

(assert (=> b!15537 (= res!11730 (not (isEmpty!131 l!1612)))))

(declare-fun b!15538 () Bool)

(assert (=> b!15538 (= e!9456 (not true))))

(declare-fun lt!3794 () (_ BitVec 64))

(declare-fun -!20 (ListLongMap!445 (_ BitVec 64)) ListLongMap!445)

(assert (=> b!15538 (forall!121 (toList!238 (-!20 lm!238 lt!3794)) p!262)))

(declare-datatypes ((Unit!306 0))(
  ( (Unit!307) )
))
(declare-fun lt!3795 () Unit!306)

(declare-fun removeValidProp!13 (ListLongMap!445 Int (_ BitVec 64)) Unit!306)

(assert (=> b!15538 (= lt!3795 (removeValidProp!13 lm!238 p!262 lt!3794))))

(declare-fun head!811 (List!487) (_ BitVec 64))

(assert (=> b!15538 (= lt!3794 (head!811 l!1612))))

(declare-fun b!15539 () Bool)

(declare-fun tp!2644 () Bool)

(assert (=> b!15539 (= e!9457 tp!2644)))

(assert (= (and start!2492 res!11731) b!15537))

(assert (= (and b!15537 res!11730) b!15538))

(assert (= start!2492 b!15539))

(declare-fun m!10457 () Bool)

(assert (=> start!2492 m!10457))

(declare-fun m!10459 () Bool)

(assert (=> start!2492 m!10459))

(declare-fun m!10461 () Bool)

(assert (=> b!15537 m!10461))

(declare-fun m!10463 () Bool)

(assert (=> b!15538 m!10463))

(declare-fun m!10465 () Bool)

(assert (=> b!15538 m!10465))

(declare-fun m!10467 () Bool)

(assert (=> b!15538 m!10467))

(declare-fun m!10469 () Bool)

(assert (=> b!15538 m!10469))

(push 1)

(assert b_and!961)

(assert (not b!15539))

(assert (not b!15537))

(assert (not b_next!515))

(assert (not b!15538))

(assert (not start!2492))

(check-sat)

(pop 1)

(push 1)

(assert b_and!961)

(assert (not b_next!515))

(check-sat)

(pop 1)

