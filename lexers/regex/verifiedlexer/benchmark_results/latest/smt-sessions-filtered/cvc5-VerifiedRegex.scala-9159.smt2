; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488446 () Bool)

(assert start!488446)

(declare-fun b!4771096 () Bool)

(declare-fun e!2978359 () Bool)

(declare-fun tp!1356591 () Bool)

(assert (=> b!4771096 (= e!2978359 tp!1356591)))

(declare-fun b!4771093 () Bool)

(declare-fun res!2023543 () Bool)

(declare-fun e!2978360 () Bool)

(assert (=> b!4771093 (=> (not res!2023543) (not e!2978360))))

(declare-datatypes ((K!15082 0))(
  ( (K!15083 (val!20371 Int)) )
))
(declare-datatypes ((V!15328 0))(
  ( (V!15329 (val!20372 Int)) )
))
(declare-datatypes ((tuple2!55716 0))(
  ( (tuple2!55717 (_1!31152 K!15082) (_2!31152 V!15328)) )
))
(declare-datatypes ((List!53706 0))(
  ( (Nil!53582) (Cons!53582 (h!59994 tuple2!55716) (t!361156 List!53706)) )
))
(declare-datatypes ((tuple2!55718 0))(
  ( (tuple2!55719 (_1!31153 (_ BitVec 64)) (_2!31153 List!53706)) )
))
(declare-datatypes ((List!53707 0))(
  ( (Nil!53583) (Cons!53583 (h!59995 tuple2!55718) (t!361157 List!53707)) )
))
(declare-datatypes ((ListLongMap!4775 0))(
  ( (ListLongMap!4776 (toList!6361 List!53707)) )
))
(declare-fun lm!1309 () ListLongMap!4775)

(declare-datatypes ((Hashable!6637 0))(
  ( (HashableExt!6636 (__x!32660 Int)) )
))
(declare-fun hashF!980 () Hashable!6637)

(declare-fun allKeysSameHashInMap!2042 (ListLongMap!4775 Hashable!6637) Bool)

(assert (=> b!4771093 (= res!2023543 (allKeysSameHashInMap!2042 lm!1309 hashF!980))))

(declare-fun res!2023541 () Bool)

(assert (=> start!488446 (=> (not res!2023541) (not e!2978360))))

(declare-fun lambda!224985 () Int)

(declare-fun forall!11901 (List!53707 Int) Bool)

(assert (=> start!488446 (= res!2023541 (forall!11901 (toList!6361 lm!1309) lambda!224985))))

(assert (=> start!488446 e!2978360))

(declare-fun inv!69109 (ListLongMap!4775) Bool)

(assert (=> start!488446 (and (inv!69109 lm!1309) e!2978359)))

(assert (=> start!488446 true))

(declare-fun tp_is_empty!32569 () Bool)

(assert (=> start!488446 tp_is_empty!32569))

(declare-fun b!4771094 () Bool)

(declare-fun res!2023542 () Bool)

(assert (=> b!4771094 (=> (not res!2023542) (not e!2978360))))

(declare-fun key!2872 () K!15082)

(declare-datatypes ((ListMap!5841 0))(
  ( (ListMap!5842 (toList!6362 List!53706)) )
))
(declare-fun contains!16957 (ListMap!5841 K!15082) Bool)

(declare-fun extractMap!2172 (List!53707) ListMap!5841)

(assert (=> b!4771094 (= res!2023542 (contains!16957 (extractMap!2172 (toList!6361 lm!1309)) key!2872))))

(declare-fun b!4771095 () Bool)

(assert (=> b!4771095 (= e!2978360 (not true))))

(declare-fun lt!1933370 () (_ BitVec 64))

(declare-fun lt!1933371 () List!53706)

(declare-fun contains!16958 (List!53707 tuple2!55718) Bool)

(assert (=> b!4771095 (contains!16958 (toList!6361 lm!1309) (tuple2!55719 lt!1933370 lt!1933371))))

(declare-datatypes ((Unit!138475 0))(
  ( (Unit!138476) )
))
(declare-fun lt!1933369 () Unit!138475)

(declare-fun lemmaGetValueImpliesTupleContained!448 (ListLongMap!4775 (_ BitVec 64) List!53706) Unit!138475)

(assert (=> b!4771095 (= lt!1933369 (lemmaGetValueImpliesTupleContained!448 lm!1309 lt!1933370 lt!1933371))))

(declare-fun apply!12682 (ListLongMap!4775 (_ BitVec 64)) List!53706)

(assert (=> b!4771095 (= lt!1933371 (apply!12682 lm!1309 lt!1933370))))

(declare-fun contains!16959 (ListLongMap!4775 (_ BitVec 64)) Bool)

(assert (=> b!4771095 (contains!16959 lm!1309 lt!1933370)))

(declare-fun hash!4611 (Hashable!6637 K!15082) (_ BitVec 64))

(assert (=> b!4771095 (= lt!1933370 (hash!4611 hashF!980 key!2872))))

(declare-fun lt!1933368 () Unit!138475)

(declare-fun lemmaInGenMapThenLongMapContainsHash!853 (ListLongMap!4775 K!15082 Hashable!6637) Unit!138475)

(assert (=> b!4771095 (= lt!1933368 (lemmaInGenMapThenLongMapContainsHash!853 lm!1309 key!2872 hashF!980))))

(assert (= (and start!488446 res!2023541) b!4771093))

(assert (= (and b!4771093 res!2023543) b!4771094))

(assert (= (and b!4771094 res!2023542) b!4771095))

(assert (= start!488446 b!4771096))

(declare-fun m!5742894 () Bool)

(assert (=> b!4771093 m!5742894))

(declare-fun m!5742896 () Bool)

(assert (=> start!488446 m!5742896))

(declare-fun m!5742898 () Bool)

(assert (=> start!488446 m!5742898))

(declare-fun m!5742900 () Bool)

(assert (=> b!4771094 m!5742900))

(assert (=> b!4771094 m!5742900))

(declare-fun m!5742902 () Bool)

(assert (=> b!4771094 m!5742902))

(declare-fun m!5742904 () Bool)

(assert (=> b!4771095 m!5742904))

(declare-fun m!5742906 () Bool)

(assert (=> b!4771095 m!5742906))

(declare-fun m!5742908 () Bool)

(assert (=> b!4771095 m!5742908))

(declare-fun m!5742910 () Bool)

(assert (=> b!4771095 m!5742910))

(declare-fun m!5742912 () Bool)

(assert (=> b!4771095 m!5742912))

(declare-fun m!5742914 () Bool)

(assert (=> b!4771095 m!5742914))

(push 1)

(assert (not b!4771093))

(assert (not b!4771096))

(assert (not b!4771094))

(assert (not start!488446))

(assert tp_is_empty!32569)

(assert (not b!4771095))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

