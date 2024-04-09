; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2454 () Bool)

(assert start!2454)

(declare-fun b_free!495 () Bool)

(declare-fun b_next!495 () Bool)

(assert (=> start!2454 (= b_free!495 (not b_next!495))))

(declare-fun tp!2575 () Bool)

(declare-fun b_and!935 () Bool)

(assert (=> start!2454 (= tp!2575 b_and!935)))

(declare-fun res!11680 () Bool)

(declare-fun e!9369 () Bool)

(assert (=> start!2454 (=> (not res!11680) (not e!9369))))

(declare-datatypes ((B!616 0))(
  ( (B!617 (val!406 Int)) )
))
(declare-datatypes ((tuple2!594 0))(
  ( (tuple2!595 (_1!297 (_ BitVec 64)) (_2!297 B!616)) )
))
(declare-datatypes ((List!469 0))(
  ( (Nil!466) (Cons!465 (h!1031 tuple2!594) (t!2901 List!469)) )
))
(declare-datatypes ((ListLongMap!425 0))(
  ( (ListLongMap!426 (toList!228 List!469)) )
))
(declare-fun lm!238 () ListLongMap!425)

(declare-fun p!262 () Int)

(declare-fun forall!114 (List!469 Int) Bool)

(assert (=> start!2454 (= res!11680 (forall!114 (toList!228 lm!238) p!262))))

(assert (=> start!2454 e!9369))

(declare-fun e!9370 () Bool)

(declare-fun inv!793 (ListLongMap!425) Bool)

(assert (=> start!2454 (and (inv!793 lm!238) e!9370)))

(assert (=> start!2454 tp!2575))

(assert (=> start!2454 true))

(declare-fun b!15423 () Bool)

(declare-fun res!11679 () Bool)

(assert (=> b!15423 (=> (not res!11679) (not e!9369))))

(declare-datatypes ((List!470 0))(
  ( (Nil!467) (Cons!466 (h!1032 (_ BitVec 64)) (t!2902 List!470)) )
))
(declare-fun l!1612 () List!470)

(declare-fun isEmpty!127 (List!470) Bool)

(assert (=> b!15423 (= res!11679 (not (isEmpty!127 l!1612)))))

(declare-fun b!15424 () Bool)

(assert (=> b!15424 (= e!9369 (not true))))

(declare-fun lt!3761 () (_ BitVec 64))

(declare-fun -!16 (ListLongMap!425 (_ BitVec 64)) ListLongMap!425)

(assert (=> b!15424 (forall!114 (toList!228 (-!16 lm!238 lt!3761)) p!262)))

(declare-datatypes ((Unit!298 0))(
  ( (Unit!299) )
))
(declare-fun lt!3762 () Unit!298)

(declare-fun removeValidProp!9 (ListLongMap!425 Int (_ BitVec 64)) Unit!298)

(assert (=> b!15424 (= lt!3762 (removeValidProp!9 lm!238 p!262 lt!3761))))

(declare-fun head!807 (List!470) (_ BitVec 64))

(assert (=> b!15424 (= lt!3761 (head!807 l!1612))))

(declare-fun b!15425 () Bool)

(declare-fun tp!2576 () Bool)

(assert (=> b!15425 (= e!9370 tp!2576)))

(assert (= (and start!2454 res!11680) b!15423))

(assert (= (and b!15423 res!11679) b!15424))

(assert (= start!2454 b!15425))

(declare-fun m!10353 () Bool)

(assert (=> start!2454 m!10353))

(declare-fun m!10355 () Bool)

(assert (=> start!2454 m!10355))

(declare-fun m!10357 () Bool)

(assert (=> b!15423 m!10357))

(declare-fun m!10359 () Bool)

(assert (=> b!15424 m!10359))

(declare-fun m!10361 () Bool)

(assert (=> b!15424 m!10361))

(declare-fun m!10363 () Bool)

(assert (=> b!15424 m!10363))

(declare-fun m!10365 () Bool)

(assert (=> b!15424 m!10365))

(check-sat (not b!15424) b_and!935 (not b_next!495) (not start!2454) (not b!15425) (not b!15423))
(check-sat b_and!935 (not b_next!495))
