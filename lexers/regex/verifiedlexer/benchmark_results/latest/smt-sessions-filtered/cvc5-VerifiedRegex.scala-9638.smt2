; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506434 () Bool)

(assert start!506434)

(declare-fun b!4852246 () Bool)

(declare-fun res!2071259 () Bool)

(declare-fun e!3033364 () Bool)

(assert (=> b!4852246 (=> (not res!2071259) (not e!3033364))))

(declare-datatypes ((V!17723 0))(
  ( (V!17724 (val!22287 Int)) )
))
(declare-datatypes ((K!17477 0))(
  ( (K!17478 (val!22288 Int)) )
))
(declare-datatypes ((tuple2!59410 0))(
  ( (tuple2!59411 (_1!32999 K!17477) (_2!32999 V!17723)) )
))
(declare-datatypes ((List!55762 0))(
  ( (Nil!55638) (Cons!55638 (h!62075 tuple2!59410) (t!363258 List!55762)) )
))
(declare-datatypes ((tuple2!59412 0))(
  ( (tuple2!59413 (_1!33000 (_ BitVec 64)) (_2!33000 List!55762)) )
))
(declare-datatypes ((List!55763 0))(
  ( (Nil!55639) (Cons!55639 (h!62076 tuple2!59412) (t!363259 List!55763)) )
))
(declare-datatypes ((ListLongMap!6513 0))(
  ( (ListLongMap!6514 (toList!7885 List!55763)) )
))
(declare-fun lm!2840 () ListLongMap!6513)

(declare-fun hash!467 () (_ BitVec 64))

(declare-fun contains!19290 (ListLongMap!6513 (_ BitVec 64)) Bool)

(assert (=> b!4852246 (= res!2071259 (contains!19290 lm!2840 hash!467))))

(declare-fun res!2071261 () Bool)

(assert (=> start!506434 (=> (not res!2071261) (not e!3033364))))

(declare-fun lambda!242801 () Int)

(declare-fun forall!12978 (List!55763 Int) Bool)

(assert (=> start!506434 (= res!2071261 (forall!12978 (toList!7885 lm!2840) lambda!242801))))

(assert (=> start!506434 e!3033364))

(declare-fun e!3033363 () Bool)

(declare-fun inv!71340 (ListLongMap!6513) Bool)

(assert (=> start!506434 (and (inv!71340 lm!2840) e!3033363)))

(assert (=> start!506434 true))

(declare-fun tp_is_empty!35353 () Bool)

(assert (=> start!506434 tp_is_empty!35353))

(declare-fun b!4852247 () Bool)

(declare-fun res!2071260 () Bool)

(assert (=> b!4852247 (=> (not res!2071260) (not e!3033364))))

(declare-datatypes ((Hashable!7527 0))(
  ( (HashableExt!7526 (__x!33802 Int)) )
))
(declare-fun hashF!1802 () Hashable!7527)

(declare-fun key!6955 () K!17477)

(declare-fun hash!5651 (Hashable!7527 K!17477) (_ BitVec 64))

(assert (=> b!4852247 (= res!2071260 (not (= hash!467 (hash!5651 hashF!1802 key!6955))))))

(declare-fun b!4852248 () Bool)

(assert (=> b!4852248 (= e!3033364 false)))

(declare-fun lt!1990157 () List!55762)

(declare-fun apply!13466 (ListLongMap!6513 (_ BitVec 64)) List!55762)

(assert (=> b!4852248 (= lt!1990157 (apply!13466 lm!2840 hash!467))))

(declare-fun b!4852249 () Bool)

(declare-fun tp!1365057 () Bool)

(assert (=> b!4852249 (= e!3033363 tp!1365057)))

(declare-fun b!4852250 () Bool)

(declare-fun res!2071258 () Bool)

(assert (=> b!4852250 (=> (not res!2071258) (not e!3033364))))

(declare-fun allKeysSameHashInMap!2841 (ListLongMap!6513 Hashable!7527) Bool)

(assert (=> b!4852250 (= res!2071258 (allKeysSameHashInMap!2841 lm!2840 hashF!1802))))

(assert (= (and start!506434 res!2071261) b!4852250))

(assert (= (and b!4852250 res!2071258) b!4852246))

(assert (= (and b!4852246 res!2071259) b!4852247))

(assert (= (and b!4852247 res!2071260) b!4852248))

(assert (= start!506434 b!4852249))

(declare-fun m!5850456 () Bool)

(assert (=> b!4852246 m!5850456))

(declare-fun m!5850458 () Bool)

(assert (=> start!506434 m!5850458))

(declare-fun m!5850460 () Bool)

(assert (=> start!506434 m!5850460))

(declare-fun m!5850462 () Bool)

(assert (=> b!4852247 m!5850462))

(declare-fun m!5850464 () Bool)

(assert (=> b!4852250 m!5850464))

(declare-fun m!5850466 () Bool)

(assert (=> b!4852248 m!5850466))

(push 1)

(assert (not b!4852247))

(assert (not start!506434))

(assert tp_is_empty!35353)

(assert (not b!4852250))

(assert (not b!4852249))

(assert (not b!4852248))

(assert (not b!4852246))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

