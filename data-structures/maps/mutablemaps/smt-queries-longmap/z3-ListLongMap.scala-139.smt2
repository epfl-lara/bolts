; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2490 () Bool)

(assert start!2490)

(declare-fun b_free!513 () Bool)

(declare-fun b_next!513 () Bool)

(assert (=> start!2490 (= b_free!513 (not b_next!513))))

(declare-fun tp!2638 () Bool)

(declare-fun b_and!959 () Bool)

(assert (=> start!2490 (= tp!2638 b_and!959)))

(declare-fun res!11724 () Bool)

(declare-fun e!9451 () Bool)

(assert (=> start!2490 (=> (not res!11724) (not e!9451))))

(declare-datatypes ((B!634 0))(
  ( (B!635 (val!415 Int)) )
))
(declare-datatypes ((tuple2!612 0))(
  ( (tuple2!613 (_1!306 (_ BitVec 64)) (_2!306 B!634)) )
))
(declare-datatypes ((List!484 0))(
  ( (Nil!481) (Cons!480 (h!1046 tuple2!612) (t!2922 List!484)) )
))
(declare-datatypes ((ListLongMap!443 0))(
  ( (ListLongMap!444 (toList!237 List!484)) )
))
(declare-fun lm!238 () ListLongMap!443)

(declare-fun p!262 () Int)

(declare-fun forall!120 (List!484 Int) Bool)

(assert (=> start!2490 (= res!11724 (forall!120 (toList!237 lm!238) p!262))))

(assert (=> start!2490 e!9451))

(declare-fun e!9450 () Bool)

(declare-fun inv!817 (ListLongMap!443) Bool)

(assert (=> start!2490 (and (inv!817 lm!238) e!9450)))

(assert (=> start!2490 tp!2638))

(assert (=> start!2490 true))

(declare-fun b!15528 () Bool)

(declare-fun res!11725 () Bool)

(assert (=> b!15528 (=> (not res!11725) (not e!9451))))

(declare-datatypes ((List!485 0))(
  ( (Nil!482) (Cons!481 (h!1047 (_ BitVec 64)) (t!2923 List!485)) )
))
(declare-fun l!1612 () List!485)

(declare-fun isEmpty!130 (List!485) Bool)

(assert (=> b!15528 (= res!11725 (not (isEmpty!130 l!1612)))))

(declare-fun b!15529 () Bool)

(assert (=> b!15529 (= e!9451 (not true))))

(declare-fun lt!3789 () (_ BitVec 64))

(declare-fun -!19 (ListLongMap!443 (_ BitVec 64)) ListLongMap!443)

(assert (=> b!15529 (forall!120 (toList!237 (-!19 lm!238 lt!3789)) p!262)))

(declare-datatypes ((Unit!304 0))(
  ( (Unit!305) )
))
(declare-fun lt!3788 () Unit!304)

(declare-fun removeValidProp!12 (ListLongMap!443 Int (_ BitVec 64)) Unit!304)

(assert (=> b!15529 (= lt!3788 (removeValidProp!12 lm!238 p!262 lt!3789))))

(declare-fun head!810 (List!485) (_ BitVec 64))

(assert (=> b!15529 (= lt!3789 (head!810 l!1612))))

(declare-fun b!15530 () Bool)

(declare-fun tp!2639 () Bool)

(assert (=> b!15530 (= e!9450 tp!2639)))

(assert (= (and start!2490 res!11724) b!15528))

(assert (= (and b!15528 res!11725) b!15529))

(assert (= start!2490 b!15530))

(declare-fun m!10443 () Bool)

(assert (=> start!2490 m!10443))

(declare-fun m!10445 () Bool)

(assert (=> start!2490 m!10445))

(declare-fun m!10447 () Bool)

(assert (=> b!15528 m!10447))

(declare-fun m!10449 () Bool)

(assert (=> b!15529 m!10449))

(declare-fun m!10451 () Bool)

(assert (=> b!15529 m!10451))

(declare-fun m!10453 () Bool)

(assert (=> b!15529 m!10453))

(declare-fun m!10455 () Bool)

(assert (=> b!15529 m!10455))

(check-sat (not start!2490) (not b!15530) (not b!15529) (not b_next!513) b_and!959 (not b!15528))
(check-sat b_and!959 (not b_next!513))
