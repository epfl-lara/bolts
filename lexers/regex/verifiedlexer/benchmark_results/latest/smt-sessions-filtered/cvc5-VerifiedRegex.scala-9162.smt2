; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488458 () Bool)

(assert start!488458)

(declare-fun res!2023601 () Bool)

(declare-fun e!2978402 () Bool)

(assert (=> start!488458 (=> (not res!2023601) (not e!2978402))))

(declare-datatypes ((K!15097 0))(
  ( (K!15098 (val!20383 Int)) )
))
(declare-datatypes ((V!15343 0))(
  ( (V!15344 (val!20384 Int)) )
))
(declare-datatypes ((tuple2!55740 0))(
  ( (tuple2!55741 (_1!31164 K!15097) (_2!31164 V!15343)) )
))
(declare-datatypes ((List!53718 0))(
  ( (Nil!53594) (Cons!53594 (h!60006 tuple2!55740) (t!361168 List!53718)) )
))
(declare-datatypes ((tuple2!55742 0))(
  ( (tuple2!55743 (_1!31165 (_ BitVec 64)) (_2!31165 List!53718)) )
))
(declare-datatypes ((List!53719 0))(
  ( (Nil!53595) (Cons!53595 (h!60007 tuple2!55742) (t!361169 List!53719)) )
))
(declare-datatypes ((ListLongMap!4787 0))(
  ( (ListLongMap!4788 (toList!6373 List!53719)) )
))
(declare-fun lm!1309 () ListLongMap!4787)

(declare-fun lambda!225021 () Int)

(declare-fun forall!11907 (List!53719 Int) Bool)

(assert (=> start!488458 (= res!2023601 (forall!11907 (toList!6373 lm!1309) lambda!225021))))

(assert (=> start!488458 e!2978402))

(declare-fun e!2978401 () Bool)

(declare-fun inv!69124 (ListLongMap!4787) Bool)

(assert (=> start!488458 (and (inv!69124 lm!1309) e!2978401)))

(assert (=> start!488458 true))

(declare-fun tp_is_empty!32581 () Bool)

(assert (=> start!488458 tp_is_empty!32581))

(declare-fun b!4771171 () Bool)

(declare-fun res!2023602 () Bool)

(assert (=> b!4771171 (=> (not res!2023602) (not e!2978402))))

(declare-datatypes ((Hashable!6643 0))(
  ( (HashableExt!6642 (__x!32666 Int)) )
))
(declare-fun hashF!980 () Hashable!6643)

(declare-fun allKeysSameHashInMap!2048 (ListLongMap!4787 Hashable!6643) Bool)

(assert (=> b!4771171 (= res!2023602 (allKeysSameHashInMap!2048 lm!1309 hashF!980))))

(declare-fun b!4771174 () Bool)

(declare-fun tp!1356609 () Bool)

(assert (=> b!4771174 (= e!2978401 tp!1356609)))

(declare-fun b!4771172 () Bool)

(declare-fun res!2023603 () Bool)

(assert (=> b!4771172 (=> (not res!2023603) (not e!2978402))))

(declare-fun key!2872 () K!15097)

(declare-datatypes ((ListMap!5853 0))(
  ( (ListMap!5854 (toList!6374 List!53718)) )
))
(declare-fun contains!16975 (ListMap!5853 K!15097) Bool)

(declare-fun extractMap!2178 (List!53719) ListMap!5853)

(assert (=> b!4771172 (= res!2023603 (contains!16975 (extractMap!2178 (toList!6373 lm!1309)) key!2872))))

(declare-fun b!4771173 () Bool)

(assert (=> b!4771173 (= e!2978402 (not true))))

(declare-datatypes ((Unit!138487 0))(
  ( (Unit!138488) )
))
(declare-fun lt!1933458 () Unit!138487)

(declare-fun lt!1933460 () tuple2!55742)

(declare-fun forallContained!3888 (List!53719 Int tuple2!55742) Unit!138487)

(assert (=> b!4771173 (= lt!1933458 (forallContained!3888 (toList!6373 lm!1309) lambda!225021 lt!1933460))))

(declare-fun contains!16976 (List!53719 tuple2!55742) Bool)

(assert (=> b!4771173 (contains!16976 (toList!6373 lm!1309) lt!1933460)))

(declare-fun lt!1933459 () (_ BitVec 64))

(declare-fun lt!1933456 () List!53718)

(assert (=> b!4771173 (= lt!1933460 (tuple2!55743 lt!1933459 lt!1933456))))

(declare-fun lt!1933461 () Unit!138487)

(declare-fun lemmaGetValueImpliesTupleContained!454 (ListLongMap!4787 (_ BitVec 64) List!53718) Unit!138487)

(assert (=> b!4771173 (= lt!1933461 (lemmaGetValueImpliesTupleContained!454 lm!1309 lt!1933459 lt!1933456))))

(declare-fun apply!12688 (ListLongMap!4787 (_ BitVec 64)) List!53718)

(assert (=> b!4771173 (= lt!1933456 (apply!12688 lm!1309 lt!1933459))))

(declare-fun contains!16977 (ListLongMap!4787 (_ BitVec 64)) Bool)

(assert (=> b!4771173 (contains!16977 lm!1309 lt!1933459)))

(declare-fun hash!4617 (Hashable!6643 K!15097) (_ BitVec 64))

(assert (=> b!4771173 (= lt!1933459 (hash!4617 hashF!980 key!2872))))

(declare-fun lt!1933457 () Unit!138487)

(declare-fun lemmaInGenMapThenLongMapContainsHash!859 (ListLongMap!4787 K!15097 Hashable!6643) Unit!138487)

(assert (=> b!4771173 (= lt!1933457 (lemmaInGenMapThenLongMapContainsHash!859 lm!1309 key!2872 hashF!980))))

(assert (= (and start!488458 res!2023601) b!4771171))

(assert (= (and b!4771171 res!2023602) b!4771172))

(assert (= (and b!4771172 res!2023603) b!4771173))

(assert (= start!488458 b!4771174))

(declare-fun m!5743030 () Bool)

(assert (=> start!488458 m!5743030))

(declare-fun m!5743032 () Bool)

(assert (=> start!488458 m!5743032))

(declare-fun m!5743034 () Bool)

(assert (=> b!4771171 m!5743034))

(declare-fun m!5743036 () Bool)

(assert (=> b!4771172 m!5743036))

(assert (=> b!4771172 m!5743036))

(declare-fun m!5743038 () Bool)

(assert (=> b!4771172 m!5743038))

(declare-fun m!5743040 () Bool)

(assert (=> b!4771173 m!5743040))

(declare-fun m!5743042 () Bool)

(assert (=> b!4771173 m!5743042))

(declare-fun m!5743044 () Bool)

(assert (=> b!4771173 m!5743044))

(declare-fun m!5743046 () Bool)

(assert (=> b!4771173 m!5743046))

(declare-fun m!5743048 () Bool)

(assert (=> b!4771173 m!5743048))

(declare-fun m!5743050 () Bool)

(assert (=> b!4771173 m!5743050))

(declare-fun m!5743052 () Bool)

(assert (=> b!4771173 m!5743052))

(push 1)

(assert (not b!4771173))

(assert (not b!4771172))

(assert (not b!4771171))

(assert tp_is_empty!32581)

(assert (not start!488458))

(assert (not b!4771174))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

