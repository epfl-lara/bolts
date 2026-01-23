; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488568 () Bool)

(assert start!488568)

(declare-fun b!4771801 () Bool)

(declare-fun e!2978813 () Bool)

(declare-fun e!2978811 () Bool)

(assert (=> b!4771801 (= e!2978813 (not e!2978811))))

(declare-fun res!2024061 () Bool)

(assert (=> b!4771801 (=> res!2024061 e!2978811)))

(declare-datatypes ((K!15157 0))(
  ( (K!15158 (val!20431 Int)) )
))
(declare-datatypes ((V!15403 0))(
  ( (V!15404 (val!20432 Int)) )
))
(declare-datatypes ((tuple2!55836 0))(
  ( (tuple2!55837 (_1!31212 K!15157) (_2!31212 V!15403)) )
))
(declare-datatypes ((Option!12762 0))(
  ( (None!12761) (Some!12761 (v!47888 tuple2!55836)) )
))
(declare-fun lt!1934426 () Option!12762)

(declare-fun v!9615 () V!15403)

(declare-fun get!18136 (Option!12762) tuple2!55836)

(assert (=> b!4771801 (= res!2024061 (not (= (_2!31212 (get!18136 lt!1934426)) v!9615)))))

(declare-fun isDefined!9908 (Option!12762) Bool)

(assert (=> b!4771801 (isDefined!9908 lt!1934426)))

(declare-datatypes ((List!53767 0))(
  ( (Nil!53643) (Cons!53643 (h!60055 tuple2!55836) (t!361217 List!53767)) )
))
(declare-fun lt!1934421 () List!53767)

(declare-fun key!2872 () K!15157)

(declare-fun getPair!687 (List!53767 K!15157) Option!12762)

(assert (=> b!4771801 (= lt!1934426 (getPair!687 lt!1934421 key!2872))))

(declare-datatypes ((tuple2!55838 0))(
  ( (tuple2!55839 (_1!31213 (_ BitVec 64)) (_2!31213 List!53767)) )
))
(declare-fun lt!1934420 () tuple2!55838)

(declare-datatypes ((List!53768 0))(
  ( (Nil!53644) (Cons!53644 (h!60056 tuple2!55838) (t!361218 List!53768)) )
))
(declare-datatypes ((ListLongMap!4835 0))(
  ( (ListLongMap!4836 (toList!6421 List!53768)) )
))
(declare-fun lm!1309 () ListLongMap!4835)

(declare-datatypes ((Unit!138538 0))(
  ( (Unit!138539) )
))
(declare-fun lt!1934432 () Unit!138538)

(declare-fun lambda!225330 () Int)

(declare-fun forallContained!3912 (List!53768 Int tuple2!55838) Unit!138538)

(assert (=> b!4771801 (= lt!1934432 (forallContained!3912 (toList!6421 lm!1309) lambda!225330 lt!1934420))))

(declare-datatypes ((Hashable!6667 0))(
  ( (HashableExt!6666 (__x!32690 Int)) )
))
(declare-fun hashF!980 () Hashable!6667)

(declare-fun lt!1934428 () Unit!138538)

(declare-fun lemmaInGenMapThenGetPairDefined!461 (ListLongMap!4835 K!15157 Hashable!6667) Unit!138538)

(assert (=> b!4771801 (= lt!1934428 (lemmaInGenMapThenGetPairDefined!461 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1934431 () Unit!138538)

(assert (=> b!4771801 (= lt!1934431 (forallContained!3912 (toList!6421 lm!1309) lambda!225330 lt!1934420))))

(declare-fun contains!17049 (List!53768 tuple2!55838) Bool)

(assert (=> b!4771801 (contains!17049 (toList!6421 lm!1309) lt!1934420)))

(declare-fun lt!1934427 () (_ BitVec 64))

(assert (=> b!4771801 (= lt!1934420 (tuple2!55839 lt!1934427 lt!1934421))))

(declare-fun lt!1934423 () Unit!138538)

(declare-fun lemmaGetValueImpliesTupleContained!478 (ListLongMap!4835 (_ BitVec 64) List!53767) Unit!138538)

(assert (=> b!4771801 (= lt!1934423 (lemmaGetValueImpliesTupleContained!478 lm!1309 lt!1934427 lt!1934421))))

(declare-fun apply!12714 (ListLongMap!4835 (_ BitVec 64)) List!53767)

(assert (=> b!4771801 (= lt!1934421 (apply!12714 lm!1309 lt!1934427))))

(declare-fun contains!17050 (ListLongMap!4835 (_ BitVec 64)) Bool)

(assert (=> b!4771801 (contains!17050 lm!1309 lt!1934427)))

(declare-fun hash!4642 (Hashable!6667 K!15157) (_ BitVec 64))

(assert (=> b!4771801 (= lt!1934427 (hash!4642 hashF!980 key!2872))))

(declare-fun lt!1934433 () Unit!138538)

(declare-fun lemmaInGenMapThenLongMapContainsHash!883 (ListLongMap!4835 K!15157 Hashable!6667) Unit!138538)

(assert (=> b!4771801 (= lt!1934433 (lemmaInGenMapThenLongMapContainsHash!883 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771802 () Bool)

(declare-fun e!2978812 () Bool)

(declare-fun tp!1356693 () Bool)

(assert (=> b!4771802 (= e!2978812 tp!1356693)))

(declare-fun b!4771803 () Bool)

(declare-fun e!2978810 () Bool)

(assert (=> b!4771803 (= e!2978811 e!2978810)))

(declare-fun res!2024062 () Bool)

(assert (=> b!4771803 (=> res!2024062 e!2978810)))

(declare-fun forall!11931 (List!53768 Int) Bool)

(assert (=> b!4771803 (= res!2024062 (not (forall!11931 (toList!6421 lm!1309) lambda!225330)))))

(declare-fun getValue!7 (List!53768 K!15157) V!15403)

(assert (=> b!4771803 (= (getValue!7 (toList!6421 lm!1309) key!2872) v!9615)))

(declare-fun lt!1934425 () Unit!138538)

(declare-fun lemmaGetValueEquivToGetPair!7 (ListLongMap!4835 K!15157 V!15403 Hashable!6667) Unit!138538)

(assert (=> b!4771803 (= lt!1934425 (lemmaGetValueEquivToGetPair!7 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!341 (List!53768 K!15157) Bool)

(assert (=> b!4771803 (containsKeyBiggerList!341 (toList!6421 lm!1309) key!2872)))

(declare-fun lt!1934424 () Unit!138538)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!199 (ListLongMap!4835 K!15157 Hashable!6667) Unit!138538)

(assert (=> b!4771803 (= lt!1934424 (lemmaInLongMapThenContainsKeyBiggerList!199 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771804 () Bool)

(declare-fun res!2024065 () Bool)

(declare-fun e!2978809 () Bool)

(assert (=> b!4771804 (=> (not res!2024065) (not e!2978809))))

(declare-fun allKeysSameHashInMap!2072 (ListLongMap!4835 Hashable!6667) Bool)

(assert (=> b!4771804 (= res!2024065 (allKeysSameHashInMap!2072 lm!1309 hashF!980))))

(declare-fun b!4771805 () Bool)

(assert (=> b!4771805 (= e!2978809 e!2978813)))

(declare-fun res!2024064 () Bool)

(assert (=> b!4771805 (=> (not res!2024064) (not e!2978813))))

(declare-datatypes ((ListMap!5901 0))(
  ( (ListMap!5902 (toList!6422 List!53767)) )
))
(declare-fun lt!1934422 () ListMap!5901)

(declare-fun contains!17051 (ListMap!5901 K!15157) Bool)

(assert (=> b!4771805 (= res!2024064 (contains!17051 lt!1934422 key!2872))))

(declare-fun extractMap!2202 (List!53768) ListMap!5901)

(assert (=> b!4771805 (= lt!1934422 (extractMap!2202 (toList!6421 lm!1309)))))

(declare-fun b!4771806 () Bool)

(assert (=> b!4771806 (= e!2978810 true)))

(declare-fun apply!12715 (ListMap!5901 K!15157) V!15403)

(assert (=> b!4771806 (= (apply!12715 lt!1934422 key!2872) v!9615)))

(declare-fun lt!1934429 () Unit!138538)

(declare-fun lemmaExtractMapPreservesMapping!3 (ListLongMap!4835 K!15157 V!15403 Hashable!6667) Unit!138538)

(assert (=> b!4771806 (= lt!1934429 (lemmaExtractMapPreservesMapping!3 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun lt!1934430 () Unit!138538)

(declare-fun lemmaInGenericMapThenInLongMap!219 (ListLongMap!4835 K!15157 Hashable!6667) Unit!138538)

(assert (=> b!4771806 (= lt!1934430 (lemmaInGenericMapThenInLongMap!219 lm!1309 key!2872 hashF!980))))

(declare-fun res!2024063 () Bool)

(assert (=> start!488568 (=> (not res!2024063) (not e!2978809))))

(assert (=> start!488568 (= res!2024063 (forall!11931 (toList!6421 lm!1309) lambda!225330))))

(assert (=> start!488568 e!2978809))

(declare-fun inv!69184 (ListLongMap!4835) Bool)

(assert (=> start!488568 (and (inv!69184 lm!1309) e!2978812)))

(assert (=> start!488568 true))

(declare-fun tp_is_empty!32665 () Bool)

(assert (=> start!488568 tp_is_empty!32665))

(declare-fun tp_is_empty!32667 () Bool)

(assert (=> start!488568 tp_is_empty!32667))

(assert (= (and start!488568 res!2024063) b!4771804))

(assert (= (and b!4771804 res!2024065) b!4771805))

(assert (= (and b!4771805 res!2024064) b!4771801))

(assert (= (and b!4771801 (not res!2024061)) b!4771803))

(assert (= (and b!4771803 (not res!2024062)) b!4771806))

(assert (= start!488568 b!4771802))

(declare-fun m!5744088 () Bool)

(assert (=> start!488568 m!5744088))

(declare-fun m!5744090 () Bool)

(assert (=> start!488568 m!5744090))

(declare-fun m!5744092 () Bool)

(assert (=> b!4771805 m!5744092))

(declare-fun m!5744094 () Bool)

(assert (=> b!4771805 m!5744094))

(declare-fun m!5744096 () Bool)

(assert (=> b!4771801 m!5744096))

(declare-fun m!5744098 () Bool)

(assert (=> b!4771801 m!5744098))

(declare-fun m!5744100 () Bool)

(assert (=> b!4771801 m!5744100))

(declare-fun m!5744102 () Bool)

(assert (=> b!4771801 m!5744102))

(declare-fun m!5744104 () Bool)

(assert (=> b!4771801 m!5744104))

(declare-fun m!5744106 () Bool)

(assert (=> b!4771801 m!5744106))

(declare-fun m!5744108 () Bool)

(assert (=> b!4771801 m!5744108))

(declare-fun m!5744110 () Bool)

(assert (=> b!4771801 m!5744110))

(declare-fun m!5744112 () Bool)

(assert (=> b!4771801 m!5744112))

(assert (=> b!4771801 m!5744104))

(declare-fun m!5744114 () Bool)

(assert (=> b!4771801 m!5744114))

(declare-fun m!5744116 () Bool)

(assert (=> b!4771801 m!5744116))

(declare-fun m!5744118 () Bool)

(assert (=> b!4771804 m!5744118))

(declare-fun m!5744120 () Bool)

(assert (=> b!4771806 m!5744120))

(declare-fun m!5744122 () Bool)

(assert (=> b!4771806 m!5744122))

(declare-fun m!5744124 () Bool)

(assert (=> b!4771806 m!5744124))

(declare-fun m!5744126 () Bool)

(assert (=> b!4771803 m!5744126))

(declare-fun m!5744128 () Bool)

(assert (=> b!4771803 m!5744128))

(assert (=> b!4771803 m!5744088))

(declare-fun m!5744130 () Bool)

(assert (=> b!4771803 m!5744130))

(declare-fun m!5744132 () Bool)

(assert (=> b!4771803 m!5744132))

(push 1)

(assert (not b!4771806))

(assert (not start!488568))

(assert (not b!4771805))

(assert (not b!4771801))

(assert (not b!4771804))

(assert (not b!4771803))

(assert (not b!4771802))

(assert tp_is_empty!32667)

(assert tp_is_empty!32665)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

