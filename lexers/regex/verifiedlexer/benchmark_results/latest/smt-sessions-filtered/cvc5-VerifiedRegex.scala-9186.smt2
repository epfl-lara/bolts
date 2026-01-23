; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488812 () Bool)

(assert start!488812)

(declare-fun b!4772737 () Bool)

(declare-fun e!2979493 () Bool)

(assert (=> b!4772737 (= e!2979493 (not true))))

(declare-datatypes ((K!15217 0))(
  ( (K!15218 (val!20479 Int)) )
))
(declare-datatypes ((V!15463 0))(
  ( (V!15464 (val!20480 Int)) )
))
(declare-datatypes ((tuple2!55932 0))(
  ( (tuple2!55933 (_1!31260 K!15217) (_2!31260 V!15463)) )
))
(declare-datatypes ((List!53819 0))(
  ( (Nil!53695) (Cons!53695 (h!60107 tuple2!55932) (t!361269 List!53819)) )
))
(declare-fun lt!1935660 () List!53819)

(declare-datatypes ((tuple2!55934 0))(
  ( (tuple2!55935 (_1!31261 (_ BitVec 64)) (_2!31261 List!53819)) )
))
(declare-datatypes ((List!53820 0))(
  ( (Nil!53696) (Cons!53696 (h!60108 tuple2!55934) (t!361270 List!53820)) )
))
(declare-datatypes ((ListLongMap!4883 0))(
  ( (ListLongMap!4884 (toList!6469 List!53820)) )
))
(declare-fun lm!1309 () ListLongMap!4883)

(declare-fun lt!1935658 () (_ BitVec 64))

(declare-fun apply!12754 (ListLongMap!4883 (_ BitVec 64)) List!53819)

(assert (=> b!4772737 (= lt!1935660 (apply!12754 lm!1309 lt!1935658))))

(declare-fun contains!17119 (ListLongMap!4883 (_ BitVec 64)) Bool)

(assert (=> b!4772737 (contains!17119 lm!1309 lt!1935658)))

(declare-datatypes ((Hashable!6691 0))(
  ( (HashableExt!6690 (__x!32714 Int)) )
))
(declare-fun hashF!980 () Hashable!6691)

(declare-fun key!2872 () K!15217)

(declare-fun hash!4664 (Hashable!6691 K!15217) (_ BitVec 64))

(assert (=> b!4772737 (= lt!1935658 (hash!4664 hashF!980 key!2872))))

(declare-datatypes ((Unit!138588 0))(
  ( (Unit!138589) )
))
(declare-fun lt!1935659 () Unit!138588)

(declare-fun lemmaInGenMapThenLongMapContainsHash!903 (ListLongMap!4883 K!15217 Hashable!6691) Unit!138588)

(assert (=> b!4772737 (= lt!1935659 (lemmaInGenMapThenLongMapContainsHash!903 lm!1309 key!2872 hashF!980))))

(declare-fun b!4772735 () Bool)

(declare-fun res!2024677 () Bool)

(assert (=> b!4772735 (=> (not res!2024677) (not e!2979493))))

(declare-fun allKeysSameHashInMap!2096 (ListLongMap!4883 Hashable!6691) Bool)

(assert (=> b!4772735 (= res!2024677 (allKeysSameHashInMap!2096 lm!1309 hashF!980))))

(declare-fun b!4772736 () Bool)

(declare-fun res!2024675 () Bool)

(assert (=> b!4772736 (=> (not res!2024675) (not e!2979493))))

(declare-datatypes ((ListMap!5949 0))(
  ( (ListMap!5950 (toList!6470 List!53819)) )
))
(declare-fun contains!17120 (ListMap!5949 K!15217) Bool)

(declare-fun extractMap!2226 (List!53820) ListMap!5949)

(assert (=> b!4772736 (= res!2024675 (contains!17120 (extractMap!2226 (toList!6469 lm!1309)) key!2872))))

(declare-fun res!2024676 () Bool)

(assert (=> start!488812 (=> (not res!2024676) (not e!2979493))))

(declare-fun lambda!225688 () Int)

(declare-fun forall!11955 (List!53820 Int) Bool)

(assert (=> start!488812 (= res!2024676 (forall!11955 (toList!6469 lm!1309) lambda!225688))))

(assert (=> start!488812 e!2979493))

(declare-fun e!2979494 () Bool)

(declare-fun inv!69244 (ListLongMap!4883) Bool)

(assert (=> start!488812 (and (inv!69244 lm!1309) e!2979494)))

(assert (=> start!488812 true))

(declare-fun tp_is_empty!32753 () Bool)

(assert (=> start!488812 tp_is_empty!32753))

(declare-fun b!4772738 () Bool)

(declare-fun tp!1356789 () Bool)

(assert (=> b!4772738 (= e!2979494 tp!1356789)))

(assert (= (and start!488812 res!2024676) b!4772735))

(assert (= (and b!4772735 res!2024677) b!4772736))

(assert (= (and b!4772736 res!2024675) b!4772737))

(assert (= start!488812 b!4772738))

(declare-fun m!5745624 () Bool)

(assert (=> b!4772737 m!5745624))

(declare-fun m!5745626 () Bool)

(assert (=> b!4772737 m!5745626))

(declare-fun m!5745628 () Bool)

(assert (=> b!4772737 m!5745628))

(declare-fun m!5745630 () Bool)

(assert (=> b!4772737 m!5745630))

(declare-fun m!5745632 () Bool)

(assert (=> b!4772735 m!5745632))

(declare-fun m!5745634 () Bool)

(assert (=> b!4772736 m!5745634))

(assert (=> b!4772736 m!5745634))

(declare-fun m!5745636 () Bool)

(assert (=> b!4772736 m!5745636))

(declare-fun m!5745638 () Bool)

(assert (=> start!488812 m!5745638))

(declare-fun m!5745640 () Bool)

(assert (=> start!488812 m!5745640))

(push 1)

(assert (not b!4772737))

(assert tp_is_empty!32753)

(assert (not b!4772736))

(assert (not b!4772738))

(assert (not b!4772735))

(assert (not start!488812))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

