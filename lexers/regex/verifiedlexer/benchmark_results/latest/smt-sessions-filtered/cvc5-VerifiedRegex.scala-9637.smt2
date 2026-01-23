; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506430 () Bool)

(assert start!506430)

(declare-fun res!2071242 () Bool)

(declare-fun e!3033351 () Bool)

(assert (=> start!506430 (=> (not res!2071242) (not e!3033351))))

(declare-datatypes ((V!17718 0))(
  ( (V!17719 (val!22283 Int)) )
))
(declare-datatypes ((K!17472 0))(
  ( (K!17473 (val!22284 Int)) )
))
(declare-datatypes ((tuple2!59402 0))(
  ( (tuple2!59403 (_1!32995 K!17472) (_2!32995 V!17718)) )
))
(declare-datatypes ((List!55758 0))(
  ( (Nil!55634) (Cons!55634 (h!62071 tuple2!59402) (t!363254 List!55758)) )
))
(declare-datatypes ((tuple2!59404 0))(
  ( (tuple2!59405 (_1!32996 (_ BitVec 64)) (_2!32996 List!55758)) )
))
(declare-datatypes ((List!55759 0))(
  ( (Nil!55635) (Cons!55635 (h!62072 tuple2!59404) (t!363255 List!55759)) )
))
(declare-datatypes ((ListLongMap!6509 0))(
  ( (ListLongMap!6510 (toList!7883 List!55759)) )
))
(declare-fun lm!2840 () ListLongMap!6509)

(declare-fun lambda!242795 () Int)

(declare-fun forall!12976 (List!55759 Int) Bool)

(assert (=> start!506430 (= res!2071242 (forall!12976 (toList!7883 lm!2840) lambda!242795))))

(assert (=> start!506430 e!3033351))

(declare-fun e!3033352 () Bool)

(declare-fun inv!71335 (ListLongMap!6509) Bool)

(assert (=> start!506430 (and (inv!71335 lm!2840) e!3033352)))

(assert (=> start!506430 true))

(declare-fun b!4852224 () Bool)

(declare-fun res!2071243 () Bool)

(assert (=> b!4852224 (=> (not res!2071243) (not e!3033351))))

(declare-datatypes ((Hashable!7525 0))(
  ( (HashableExt!7524 (__x!33800 Int)) )
))
(declare-fun hashF!1802 () Hashable!7525)

(declare-fun allKeysSameHashInMap!2839 (ListLongMap!6509 Hashable!7525) Bool)

(assert (=> b!4852224 (= res!2071243 (allKeysSameHashInMap!2839 lm!2840 hashF!1802))))

(declare-fun b!4852225 () Bool)

(assert (=> b!4852225 (= e!3033351 false)))

(declare-fun lt!1990151 () Bool)

(declare-fun hash!467 () (_ BitVec 64))

(declare-fun contains!19288 (ListLongMap!6509 (_ BitVec 64)) Bool)

(assert (=> b!4852225 (= lt!1990151 (contains!19288 lm!2840 hash!467))))

(declare-fun b!4852226 () Bool)

(declare-fun tp!1365051 () Bool)

(assert (=> b!4852226 (= e!3033352 tp!1365051)))

(assert (= (and start!506430 res!2071242) b!4852224))

(assert (= (and b!4852224 res!2071243) b!4852225))

(assert (= start!506430 b!4852226))

(declare-fun m!5850440 () Bool)

(assert (=> start!506430 m!5850440))

(declare-fun m!5850442 () Bool)

(assert (=> start!506430 m!5850442))

(declare-fun m!5850444 () Bool)

(assert (=> b!4852224 m!5850444))

(declare-fun m!5850446 () Bool)

(assert (=> b!4852225 m!5850446))

(push 1)

(assert (not b!4852224))

(assert (not start!506430))

(assert (not b!4852225))

(assert (not b!4852226))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

