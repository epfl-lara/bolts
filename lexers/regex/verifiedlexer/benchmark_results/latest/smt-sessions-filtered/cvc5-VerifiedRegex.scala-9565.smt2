; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!503716 () Bool)

(assert start!503716)

(declare-fun b!4840367 () Bool)

(declare-fun res!2063485 () Bool)

(declare-fun e!3025033 () Bool)

(assert (=> b!4840367 (=> (not res!2063485) (not e!3025033))))

(declare-datatypes ((K!17112 0))(
  ( (K!17113 (val!21995 Int)) )
))
(declare-datatypes ((V!17358 0))(
  ( (V!17359 (val!21996 Int)) )
))
(declare-datatypes ((tuple2!58862 0))(
  ( (tuple2!58863 (_1!32725 K!17112) (_2!32725 V!17358)) )
))
(declare-datatypes ((List!55480 0))(
  ( (Nil!55356) (Cons!55356 (h!61791 tuple2!58862) (t!362976 List!55480)) )
))
(declare-datatypes ((tuple2!58864 0))(
  ( (tuple2!58865 (_1!32726 (_ BitVec 64)) (_2!32726 List!55480)) )
))
(declare-datatypes ((List!55481 0))(
  ( (Nil!55357) (Cons!55357 (h!61792 tuple2!58864) (t!362977 List!55481)) )
))
(declare-datatypes ((ListLongMap!6297 0))(
  ( (ListLongMap!6298 (toList!7751 List!55481)) )
))
(declare-fun lm!2671 () ListLongMap!6297)

(declare-datatypes ((Hashable!7417 0))(
  ( (HashableExt!7416 (__x!33692 Int)) )
))
(declare-fun hashF!1662 () Hashable!7417)

(declare-fun allKeysSameHashInMap!2733 (ListLongMap!6297 Hashable!7417) Bool)

(assert (=> b!4840367 (= res!2063485 (allKeysSameHashInMap!2733 lm!2671 hashF!1662))))

(declare-fun b!4840368 () Bool)

(declare-fun res!2063483 () Bool)

(assert (=> b!4840368 (=> (not res!2063483) (not e!3025033))))

(declare-fun key!6540 () K!17112)

(declare-fun containsKey!4583 (List!55480 K!17112) Bool)

(assert (=> b!4840368 (= res!2063483 (containsKey!4583 (_2!32726 (h!61792 (toList!7751 lm!2671))) key!6540))))

(declare-fun b!4840369 () Bool)

(declare-fun res!2063482 () Bool)

(assert (=> b!4840369 (=> (not res!2063482) (not e!3025033))))

(declare-fun containsKeyBiggerList!701 (List!55481 K!17112) Bool)

(assert (=> b!4840369 (= res!2063482 (containsKeyBiggerList!701 (toList!7751 lm!2671) key!6540))))

(declare-fun b!4840370 () Bool)

(declare-fun lambda!240945 () Int)

(declare-fun forall!12841 (List!55481 Int) Bool)

(assert (=> b!4840370 (= e!3025033 (not (forall!12841 (toList!7751 lm!2671) lambda!240945)))))

(declare-fun lt!1984753 () V!17358)

(declare-fun getValue!185 (List!55481 K!17112) V!17358)

(assert (=> b!4840370 (= lt!1984753 (getValue!185 (toList!7751 lm!2671) key!6540))))

(declare-fun res!2063481 () Bool)

(assert (=> start!503716 (=> (not res!2063481) (not e!3025033))))

(assert (=> start!503716 (= res!2063481 (forall!12841 (toList!7751 lm!2671) lambda!240945))))

(assert (=> start!503716 e!3025033))

(declare-fun e!3025032 () Bool)

(declare-fun inv!71013 (ListLongMap!6297) Bool)

(assert (=> start!503716 (and (inv!71013 lm!2671) e!3025032)))

(assert (=> start!503716 true))

(declare-fun tp_is_empty!34937 () Bool)

(assert (=> start!503716 tp_is_empty!34937))

(declare-fun b!4840371 () Bool)

(declare-fun tp!1363831 () Bool)

(assert (=> b!4840371 (= e!3025032 tp!1363831)))

(declare-fun b!4840372 () Bool)

(declare-fun res!2063484 () Bool)

(assert (=> b!4840372 (=> (not res!2063484) (not e!3025033))))

(assert (=> b!4840372 (= res!2063484 (is-Cons!55357 (toList!7751 lm!2671)))))

(assert (= (and start!503716 res!2063481) b!4840367))

(assert (= (and b!4840367 res!2063485) b!4840369))

(assert (= (and b!4840369 res!2063482) b!4840372))

(assert (= (and b!4840372 res!2063484) b!4840368))

(assert (= (and b!4840368 res!2063483) b!4840370))

(assert (= start!503716 b!4840371))

(declare-fun m!5836122 () Bool)

(assert (=> b!4840369 m!5836122))

(declare-fun m!5836124 () Bool)

(assert (=> b!4840367 m!5836124))

(declare-fun m!5836126 () Bool)

(assert (=> b!4840370 m!5836126))

(declare-fun m!5836128 () Bool)

(assert (=> b!4840370 m!5836128))

(assert (=> start!503716 m!5836126))

(declare-fun m!5836130 () Bool)

(assert (=> start!503716 m!5836130))

(declare-fun m!5836132 () Bool)

(assert (=> b!4840368 m!5836132))

(push 1)

(assert (not b!4840371))

(assert (not start!503716))

(assert (not b!4840368))

(assert (not b!4840367))

(assert tp_is_empty!34937)

(assert (not b!4840370))

(assert (not b!4840369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

