; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471294 () Bool)

(assert start!471294)

(declare-fun b!4671567 () Bool)

(declare-fun e!2915305 () Bool)

(declare-fun tp!1343985 () Bool)

(assert (=> b!4671567 (= e!2915305 tp!1343985)))

(declare-fun b!4671568 () Bool)

(declare-fun res!1966756 () Bool)

(declare-fun e!2915304 () Bool)

(assert (=> b!4671568 (=> (not res!1966756) (not e!2915304))))

(declare-datatypes ((K!13438 0))(
  ( (K!13439 (val!19021 Int)) )
))
(declare-datatypes ((V!13684 0))(
  ( (V!13685 (val!19022 Int)) )
))
(declare-datatypes ((tuple2!53254 0))(
  ( (tuple2!53255 (_1!29921 K!13438) (_2!29921 V!13684)) )
))
(declare-datatypes ((List!52190 0))(
  ( (Nil!52066) (Cons!52066 (h!58246 tuple2!53254) (t!359328 List!52190)) )
))
(declare-fun oldBucket!34 () List!52190)

(declare-fun noDuplicateKeys!1715 (List!52190) Bool)

(assert (=> b!4671568 (= res!1966756 (noDuplicateKeys!1715 oldBucket!34))))

(declare-fun e!2915303 () Bool)

(declare-fun b!4671569 () Bool)

(declare-fun tp_is_empty!30155 () Bool)

(declare-fun tp!1343984 () Bool)

(declare-fun tp_is_empty!30153 () Bool)

(assert (=> b!4671569 (= e!2915303 (and tp_is_empty!30153 tp_is_empty!30155 tp!1343984))))

(declare-fun b!4671570 () Bool)

(assert (=> b!4671570 (= e!2915304 false)))

(declare-fun lt!1833594 () Bool)

(declare-fun newBucket!218 () List!52190)

(assert (=> b!4671570 (= lt!1833594 (noDuplicateKeys!1715 newBucket!218))))

(declare-fun e!2915306 () Bool)

(declare-fun b!4671571 () Bool)

(declare-fun tp!1343986 () Bool)

(assert (=> b!4671571 (= e!2915306 (and tp_is_empty!30153 tp_is_empty!30155 tp!1343986))))

(declare-fun res!1966755 () Bool)

(assert (=> start!471294 (=> (not res!1966755) (not e!2915304))))

(declare-datatypes ((tuple2!53256 0))(
  ( (tuple2!53257 (_1!29922 (_ BitVec 64)) (_2!29922 List!52190)) )
))
(declare-datatypes ((List!52191 0))(
  ( (Nil!52067) (Cons!52067 (h!58247 tuple2!53256) (t!359329 List!52191)) )
))
(declare-datatypes ((ListLongMap!3849 0))(
  ( (ListLongMap!3850 (toList!5323 List!52191)) )
))
(declare-fun lm!2023 () ListLongMap!3849)

(declare-fun lambda!202643 () Int)

(declare-fun forall!11115 (List!52191 Int) Bool)

(assert (=> start!471294 (= res!1966755 (forall!11115 (toList!5323 lm!2023) lambda!202643))))

(assert (=> start!471294 e!2915304))

(declare-fun inv!67313 (ListLongMap!3849) Bool)

(assert (=> start!471294 (and (inv!67313 lm!2023) e!2915305)))

(assert (=> start!471294 e!2915303))

(assert (=> start!471294 e!2915306))

(assert (= (and start!471294 res!1966755) b!4671568))

(assert (= (and b!4671568 res!1966756) b!4671570))

(assert (= start!471294 b!4671567))

(assert (= (and start!471294 (is-Cons!52066 oldBucket!34)) b!4671569))

(assert (= (and start!471294 (is-Cons!52066 newBucket!218)) b!4671571))

(declare-fun m!5565471 () Bool)

(assert (=> b!4671568 m!5565471))

(declare-fun m!5565473 () Bool)

(assert (=> b!4671570 m!5565473))

(declare-fun m!5565475 () Bool)

(assert (=> start!471294 m!5565475))

(declare-fun m!5565477 () Bool)

(assert (=> start!471294 m!5565477))

(push 1)

(assert (not b!4671571))

(assert (not b!4671568))

(assert (not start!471294))

(assert tp_is_empty!30155)

(assert tp_is_empty!30153)

(assert (not b!4671569))

(assert (not b!4671567))

(assert (not b!4671570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

