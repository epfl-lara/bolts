; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488438 () Bool)

(assert start!488438)

(declare-fun b!4771046 () Bool)

(declare-fun res!2023505 () Bool)

(declare-fun e!2978336 () Bool)

(assert (=> b!4771046 (=> (not res!2023505) (not e!2978336))))

(declare-datatypes ((K!15072 0))(
  ( (K!15073 (val!20363 Int)) )
))
(declare-datatypes ((V!15318 0))(
  ( (V!15319 (val!20364 Int)) )
))
(declare-datatypes ((tuple2!55700 0))(
  ( (tuple2!55701 (_1!31144 K!15072) (_2!31144 V!15318)) )
))
(declare-datatypes ((List!53698 0))(
  ( (Nil!53574) (Cons!53574 (h!59986 tuple2!55700) (t!361148 List!53698)) )
))
(declare-datatypes ((tuple2!55702 0))(
  ( (tuple2!55703 (_1!31145 (_ BitVec 64)) (_2!31145 List!53698)) )
))
(declare-datatypes ((List!53699 0))(
  ( (Nil!53575) (Cons!53575 (h!59987 tuple2!55702) (t!361149 List!53699)) )
))
(declare-datatypes ((ListLongMap!4767 0))(
  ( (ListLongMap!4768 (toList!6353 List!53699)) )
))
(declare-fun lm!1309 () ListLongMap!4767)

(declare-fun key!2872 () K!15072)

(declare-datatypes ((ListMap!5833 0))(
  ( (ListMap!5834 (toList!6354 List!53698)) )
))
(declare-fun contains!16949 (ListMap!5833 K!15072) Bool)

(declare-fun extractMap!2168 (List!53699) ListMap!5833)

(assert (=> b!4771046 (= res!2023505 (contains!16949 (extractMap!2168 (toList!6353 lm!1309)) key!2872))))

(declare-fun b!4771045 () Bool)

(declare-fun res!2023506 () Bool)

(assert (=> b!4771045 (=> (not res!2023506) (not e!2978336))))

(declare-datatypes ((Hashable!6633 0))(
  ( (HashableExt!6632 (__x!32656 Int)) )
))
(declare-fun hashF!980 () Hashable!6633)

(declare-fun allKeysSameHashInMap!2038 (ListLongMap!4767 Hashable!6633) Bool)

(assert (=> b!4771045 (= res!2023506 (allKeysSameHashInMap!2038 lm!1309 hashF!980))))

(declare-fun b!4771048 () Bool)

(declare-fun e!2978335 () Bool)

(declare-fun tp!1356579 () Bool)

(assert (=> b!4771048 (= e!2978335 tp!1356579)))

(declare-fun b!4771047 () Bool)

(assert (=> b!4771047 (= e!2978336 (not true))))

(declare-fun contains!16950 (ListLongMap!4767 (_ BitVec 64)) Bool)

(declare-fun hash!4607 (Hashable!6633 K!15072) (_ BitVec 64))

(assert (=> b!4771047 (contains!16950 lm!1309 (hash!4607 hashF!980 key!2872))))

(declare-datatypes ((Unit!138467 0))(
  ( (Unit!138468) )
))
(declare-fun lt!1933338 () Unit!138467)

(declare-fun lemmaInGenMapThenLongMapContainsHash!849 (ListLongMap!4767 K!15072 Hashable!6633) Unit!138467)

(assert (=> b!4771047 (= lt!1933338 (lemmaInGenMapThenLongMapContainsHash!849 lm!1309 key!2872 hashF!980))))

(declare-fun res!2023507 () Bool)

(assert (=> start!488438 (=> (not res!2023507) (not e!2978336))))

(declare-fun lambda!224973 () Int)

(declare-fun forall!11897 (List!53699 Int) Bool)

(assert (=> start!488438 (= res!2023507 (forall!11897 (toList!6353 lm!1309) lambda!224973))))

(assert (=> start!488438 e!2978336))

(declare-fun inv!69099 (ListLongMap!4767) Bool)

(assert (=> start!488438 (and (inv!69099 lm!1309) e!2978335)))

(assert (=> start!488438 true))

(declare-fun tp_is_empty!32561 () Bool)

(assert (=> start!488438 tp_is_empty!32561))

(assert (= (and start!488438 res!2023507) b!4771045))

(assert (= (and b!4771045 res!2023506) b!4771046))

(assert (= (and b!4771046 res!2023505) b!4771047))

(assert (= start!488438 b!4771048))

(declare-fun m!5742826 () Bool)

(assert (=> b!4771046 m!5742826))

(assert (=> b!4771046 m!5742826))

(declare-fun m!5742828 () Bool)

(assert (=> b!4771046 m!5742828))

(declare-fun m!5742830 () Bool)

(assert (=> b!4771045 m!5742830))

(declare-fun m!5742832 () Bool)

(assert (=> b!4771047 m!5742832))

(assert (=> b!4771047 m!5742832))

(declare-fun m!5742834 () Bool)

(assert (=> b!4771047 m!5742834))

(declare-fun m!5742836 () Bool)

(assert (=> b!4771047 m!5742836))

(declare-fun m!5742838 () Bool)

(assert (=> start!488438 m!5742838))

(declare-fun m!5742840 () Bool)

(assert (=> start!488438 m!5742840))

(push 1)

(assert (not b!4771046))

(assert (not b!4771045))

(assert (not b!4771047))

(assert (not b!4771048))

(assert tp_is_empty!32561)

(assert (not start!488438))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

