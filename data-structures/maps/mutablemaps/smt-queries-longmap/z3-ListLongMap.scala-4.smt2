; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!156 () Bool)

(assert start!156)

(declare-fun b_free!21 () Bool)

(declare-fun b_next!21 () Bool)

(assert (=> start!156 (= b_free!21 (not b_next!21))))

(declare-fun tp!68 () Bool)

(declare-fun b_and!45 () Bool)

(assert (=> start!156 (= tp!68 b_and!45)))

(declare-fun b!1793 () Bool)

(declare-fun e!327 () Bool)

(assert (=> b!1793 (= e!327 false)))

(declare-fun lt!302 () Bool)

(declare-datatypes ((B!256 0))(
  ( (B!257 (val!10 Int)) )
))
(declare-datatypes ((tuple2!20 0))(
  ( (tuple2!21 (_1!10 (_ BitVec 64)) (_2!10 B!256)) )
))
(declare-datatypes ((List!19 0))(
  ( (Nil!16) (Cons!15 (h!581 tuple2!20) (t!2038 List!19)) )
))
(declare-datatypes ((ListLongMap!25 0))(
  ( (ListLongMap!26 (toList!28 List!19)) )
))
(declare-fun lm!258 () ListLongMap!25)

(declare-fun p!318 () Int)

(declare-fun forall!12 (List!19 Int) Bool)

(declare-fun tail!30 (ListLongMap!25) ListLongMap!25)

(assert (=> b!1793 (= lt!302 (forall!12 (toList!28 (tail!30 lm!258)) p!318))))

(declare-fun b!1791 () Bool)

(declare-fun res!4380 () Bool)

(assert (=> b!1791 (=> (not res!4380) (not e!327))))

(declare-fun isEmpty!17 (ListLongMap!25) Bool)

(assert (=> b!1791 (= res!4380 (not (isEmpty!17 lm!258)))))

(declare-fun b!1792 () Bool)

(declare-fun res!4381 () Bool)

(assert (=> b!1792 (=> (not res!4381) (not e!327))))

(declare-fun k0!394 () (_ BitVec 64))

(declare-fun head!744 (List!19) tuple2!20)

(assert (=> b!1792 (= res!4381 (not (= (_1!10 (head!744 (toList!28 lm!258))) k0!394)))))

(declare-fun res!4382 () Bool)

(assert (=> start!156 (=> (not res!4382) (not e!327))))

(assert (=> start!156 (= res!4382 (forall!12 (toList!28 lm!258) p!318))))

(assert (=> start!156 e!327))

(declare-fun e!326 () Bool)

(declare-fun inv!40 (ListLongMap!25) Bool)

(assert (=> start!156 (and (inv!40 lm!258) e!326)))

(assert (=> start!156 tp!68))

(assert (=> start!156 true))

(declare-fun b!1794 () Bool)

(declare-fun tp!67 () Bool)

(assert (=> b!1794 (= e!326 tp!67)))

(assert (= (and start!156 res!4382) b!1791))

(assert (= (and b!1791 res!4380) b!1792))

(assert (= (and b!1792 res!4381) b!1793))

(assert (= start!156 b!1794))

(declare-fun m!465 () Bool)

(assert (=> b!1793 m!465))

(declare-fun m!467 () Bool)

(assert (=> b!1793 m!467))

(declare-fun m!469 () Bool)

(assert (=> b!1791 m!469))

(declare-fun m!471 () Bool)

(assert (=> b!1792 m!471))

(declare-fun m!473 () Bool)

(assert (=> start!156 m!473))

(declare-fun m!475 () Bool)

(assert (=> start!156 m!475))

(check-sat b_and!45 (not b!1794) (not start!156) (not b!1791) (not b_next!21) (not b!1793) (not b!1792))
(check-sat b_and!45 (not b_next!21))
