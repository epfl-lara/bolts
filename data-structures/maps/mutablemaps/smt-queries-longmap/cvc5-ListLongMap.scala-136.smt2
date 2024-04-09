; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2452 () Bool)

(assert start!2452)

(declare-fun b_free!493 () Bool)

(declare-fun b_next!493 () Bool)

(assert (=> start!2452 (= b_free!493 (not b_next!493))))

(declare-fun tp!2569 () Bool)

(declare-fun b_and!933 () Bool)

(assert (=> start!2452 (= tp!2569 b_and!933)))

(declare-fun res!11674 () Bool)

(declare-fun e!9363 () Bool)

(assert (=> start!2452 (=> (not res!11674) (not e!9363))))

(declare-datatypes ((B!614 0))(
  ( (B!615 (val!405 Int)) )
))
(declare-datatypes ((tuple2!592 0))(
  ( (tuple2!593 (_1!296 (_ BitVec 64)) (_2!296 B!614)) )
))
(declare-datatypes ((List!467 0))(
  ( (Nil!464) (Cons!463 (h!1029 tuple2!592) (t!2899 List!467)) )
))
(declare-datatypes ((ListLongMap!423 0))(
  ( (ListLongMap!424 (toList!227 List!467)) )
))
(declare-fun lm!238 () ListLongMap!423)

(declare-fun p!262 () Int)

(declare-fun forall!113 (List!467 Int) Bool)

(assert (=> start!2452 (= res!11674 (forall!113 (toList!227 lm!238) p!262))))

(assert (=> start!2452 e!9363))

(declare-fun e!9364 () Bool)

(declare-fun inv!792 (ListLongMap!423) Bool)

(assert (=> start!2452 (and (inv!792 lm!238) e!9364)))

(assert (=> start!2452 tp!2569))

(assert (=> start!2452 true))

(declare-fun b!15414 () Bool)

(declare-fun res!11673 () Bool)

(assert (=> b!15414 (=> (not res!11673) (not e!9363))))

(declare-datatypes ((List!468 0))(
  ( (Nil!465) (Cons!464 (h!1030 (_ BitVec 64)) (t!2900 List!468)) )
))
(declare-fun l!1612 () List!468)

(declare-fun isEmpty!126 (List!468) Bool)

(assert (=> b!15414 (= res!11673 (not (isEmpty!126 l!1612)))))

(declare-fun b!15415 () Bool)

(assert (=> b!15415 (= e!9363 (not true))))

(declare-fun lt!3755 () (_ BitVec 64))

(declare-fun -!15 (ListLongMap!423 (_ BitVec 64)) ListLongMap!423)

(assert (=> b!15415 (forall!113 (toList!227 (-!15 lm!238 lt!3755)) p!262)))

(declare-datatypes ((Unit!296 0))(
  ( (Unit!297) )
))
(declare-fun lt!3756 () Unit!296)

(declare-fun removeValidProp!8 (ListLongMap!423 Int (_ BitVec 64)) Unit!296)

(assert (=> b!15415 (= lt!3756 (removeValidProp!8 lm!238 p!262 lt!3755))))

(declare-fun head!806 (List!468) (_ BitVec 64))

(assert (=> b!15415 (= lt!3755 (head!806 l!1612))))

(declare-fun b!15416 () Bool)

(declare-fun tp!2570 () Bool)

(assert (=> b!15416 (= e!9364 tp!2570)))

(assert (= (and start!2452 res!11674) b!15414))

(assert (= (and b!15414 res!11673) b!15415))

(assert (= start!2452 b!15416))

(declare-fun m!10339 () Bool)

(assert (=> start!2452 m!10339))

(declare-fun m!10341 () Bool)

(assert (=> start!2452 m!10341))

(declare-fun m!10343 () Bool)

(assert (=> b!15414 m!10343))

(declare-fun m!10345 () Bool)

(assert (=> b!15415 m!10345))

(declare-fun m!10347 () Bool)

(assert (=> b!15415 m!10347))

(declare-fun m!10349 () Bool)

(assert (=> b!15415 m!10349))

(declare-fun m!10351 () Bool)

(assert (=> b!15415 m!10351))

(push 1)

(assert (not b!15416))

(assert (not b_next!493))

(assert (not b!15415))

(assert b_and!933)

(assert (not b!15414))

(assert (not start!2452))

(check-sat)

(pop 1)

(push 1)

(assert b_and!933)

(assert (not b_next!493))

(check-sat)

(pop 1)

