; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!488578 () Bool)

(assert start!488578)

(declare-fun b!4771891 () Bool)

(declare-fun e!2978887 () Bool)

(assert (=> b!4771891 (= e!2978887 true)))

(declare-datatypes ((K!15169 0))(
  ( (K!15170 (val!20441 Int)) )
))
(declare-datatypes ((V!15415 0))(
  ( (V!15416 (val!20442 Int)) )
))
(declare-datatypes ((tuple2!55856 0))(
  ( (tuple2!55857 (_1!31222 K!15169) (_2!31222 V!15415)) )
))
(declare-datatypes ((List!53777 0))(
  ( (Nil!53653) (Cons!53653 (h!60065 tuple2!55856) (t!361227 List!53777)) )
))
(declare-datatypes ((ListMap!5911 0))(
  ( (ListMap!5912 (toList!6431 List!53777)) )
))
(declare-fun lt!1934638 () ListMap!5911)

(declare-fun key!2872 () K!15169)

(declare-fun v!9615 () V!15415)

(declare-fun apply!12724 (ListMap!5911 K!15169) V!15415)

(assert (=> b!4771891 (= (apply!12724 lt!1934638 key!2872) v!9615)))

(declare-datatypes ((Hashable!6672 0))(
  ( (HashableExt!6671 (__x!32695 Int)) )
))
(declare-fun hashF!980 () Hashable!6672)

(declare-datatypes ((tuple2!55858 0))(
  ( (tuple2!55859 (_1!31223 (_ BitVec 64)) (_2!31223 List!53777)) )
))
(declare-datatypes ((List!53778 0))(
  ( (Nil!53654) (Cons!53654 (h!60066 tuple2!55858) (t!361228 List!53778)) )
))
(declare-datatypes ((ListLongMap!4845 0))(
  ( (ListLongMap!4846 (toList!6432 List!53778)) )
))
(declare-fun lm!1309 () ListLongMap!4845)

(declare-datatypes ((Unit!138548 0))(
  ( (Unit!138549) )
))
(declare-fun lt!1934639 () Unit!138548)

(declare-fun lemmaExtractMapPreservesMapping!8 (ListLongMap!4845 K!15169 V!15415 Hashable!6672) Unit!138548)

(assert (=> b!4771891 (= lt!1934639 (lemmaExtractMapPreservesMapping!8 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun lt!1934643 () Unit!138548)

(declare-fun lemmaInGenericMapThenInLongMap!224 (ListLongMap!4845 K!15169 Hashable!6672) Unit!138548)

(assert (=> b!4771891 (= lt!1934643 (lemmaInGenericMapThenInLongMap!224 lm!1309 key!2872 hashF!980))))

(declare-fun res!2024138 () Bool)

(declare-fun e!2978888 () Bool)

(assert (=> start!488578 (=> (not res!2024138) (not e!2978888))))

(declare-fun lambda!225375 () Int)

(declare-fun forall!11936 (List!53778 Int) Bool)

(assert (=> start!488578 (= res!2024138 (forall!11936 (toList!6432 lm!1309) lambda!225375))))

(assert (=> start!488578 e!2978888))

(declare-fun e!2978885 () Bool)

(declare-fun inv!69195 (ListLongMap!4845) Bool)

(assert (=> start!488578 (and (inv!69195 lm!1309) e!2978885)))

(assert (=> start!488578 true))

(declare-fun tp_is_empty!32685 () Bool)

(assert (=> start!488578 tp_is_empty!32685))

(declare-fun tp_is_empty!32687 () Bool)

(assert (=> start!488578 tp_is_empty!32687))

(declare-fun b!4771892 () Bool)

(declare-fun tp!1356708 () Bool)

(assert (=> b!4771892 (= e!2978885 tp!1356708)))

(declare-fun b!4771893 () Bool)

(declare-fun e!2978884 () Bool)

(declare-fun e!2978886 () Bool)

(assert (=> b!4771893 (= e!2978884 (not e!2978886))))

(declare-fun res!2024136 () Bool)

(assert (=> b!4771893 (=> res!2024136 e!2978886)))

(declare-datatypes ((Option!12767 0))(
  ( (None!12766) (Some!12766 (v!47893 tuple2!55856)) )
))
(declare-fun lt!1934633 () Option!12767)

(declare-fun get!18143 (Option!12767) tuple2!55856)

(assert (=> b!4771893 (= res!2024136 (not (= (_2!31222 (get!18143 lt!1934633)) v!9615)))))

(declare-fun isDefined!9913 (Option!12767) Bool)

(assert (=> b!4771893 (isDefined!9913 lt!1934633)))

(declare-fun lt!1934634 () List!53777)

(declare-fun getPair!692 (List!53777 K!15169) Option!12767)

(assert (=> b!4771893 (= lt!1934633 (getPair!692 lt!1934634 key!2872))))

(declare-fun lt!1934631 () tuple2!55858)

(declare-fun lt!1934630 () Unit!138548)

(declare-fun forallContained!3917 (List!53778 Int tuple2!55858) Unit!138548)

(assert (=> b!4771893 (= lt!1934630 (forallContained!3917 (toList!6432 lm!1309) lambda!225375 lt!1934631))))

(declare-fun lt!1934640 () Unit!138548)

(declare-fun lemmaInGenMapThenGetPairDefined!466 (ListLongMap!4845 K!15169 Hashable!6672) Unit!138548)

(assert (=> b!4771893 (= lt!1934640 (lemmaInGenMapThenGetPairDefined!466 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1934636 () Unit!138548)

(assert (=> b!4771893 (= lt!1934636 (forallContained!3917 (toList!6432 lm!1309) lambda!225375 lt!1934631))))

(declare-fun contains!17064 (List!53778 tuple2!55858) Bool)

(assert (=> b!4771893 (contains!17064 (toList!6432 lm!1309) lt!1934631)))

(declare-fun lt!1934632 () (_ BitVec 64))

(assert (=> b!4771893 (= lt!1934631 (tuple2!55859 lt!1934632 lt!1934634))))

(declare-fun lt!1934641 () Unit!138548)

(declare-fun lemmaGetValueImpliesTupleContained!483 (ListLongMap!4845 (_ BitVec 64) List!53777) Unit!138548)

(assert (=> b!4771893 (= lt!1934641 (lemmaGetValueImpliesTupleContained!483 lm!1309 lt!1934632 lt!1934634))))

(declare-fun apply!12725 (ListLongMap!4845 (_ BitVec 64)) List!53777)

(assert (=> b!4771893 (= lt!1934634 (apply!12725 lm!1309 lt!1934632))))

(declare-fun contains!17065 (ListLongMap!4845 (_ BitVec 64)) Bool)

(assert (=> b!4771893 (contains!17065 lm!1309 lt!1934632)))

(declare-fun hash!4647 (Hashable!6672 K!15169) (_ BitVec 64))

(assert (=> b!4771893 (= lt!1934632 (hash!4647 hashF!980 key!2872))))

(declare-fun lt!1934637 () Unit!138548)

(declare-fun lemmaInGenMapThenLongMapContainsHash!888 (ListLongMap!4845 K!15169 Hashable!6672) Unit!138548)

(assert (=> b!4771893 (= lt!1934637 (lemmaInGenMapThenLongMapContainsHash!888 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771894 () Bool)

(declare-fun res!2024140 () Bool)

(assert (=> b!4771894 (=> (not res!2024140) (not e!2978888))))

(declare-fun allKeysSameHashInMap!2077 (ListLongMap!4845 Hashable!6672) Bool)

(assert (=> b!4771894 (= res!2024140 (allKeysSameHashInMap!2077 lm!1309 hashF!980))))

(declare-fun b!4771895 () Bool)

(assert (=> b!4771895 (= e!2978888 e!2978884)))

(declare-fun res!2024137 () Bool)

(assert (=> b!4771895 (=> (not res!2024137) (not e!2978884))))

(declare-fun contains!17066 (ListMap!5911 K!15169) Bool)

(assert (=> b!4771895 (= res!2024137 (contains!17066 lt!1934638 key!2872))))

(declare-fun extractMap!2207 (List!53778) ListMap!5911)

(assert (=> b!4771895 (= lt!1934638 (extractMap!2207 (toList!6432 lm!1309)))))

(declare-fun b!4771896 () Bool)

(assert (=> b!4771896 (= e!2978886 e!2978887)))

(declare-fun res!2024139 () Bool)

(assert (=> b!4771896 (=> res!2024139 e!2978887)))

(assert (=> b!4771896 (= res!2024139 (not (forall!11936 (toList!6432 lm!1309) lambda!225375)))))

(declare-fun getValue!12 (List!53778 K!15169) V!15415)

(assert (=> b!4771896 (= (getValue!12 (toList!6432 lm!1309) key!2872) v!9615)))

(declare-fun lt!1934635 () Unit!138548)

(declare-fun lemmaGetValueEquivToGetPair!12 (ListLongMap!4845 K!15169 V!15415 Hashable!6672) Unit!138548)

(assert (=> b!4771896 (= lt!1934635 (lemmaGetValueEquivToGetPair!12 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!346 (List!53778 K!15169) Bool)

(assert (=> b!4771896 (containsKeyBiggerList!346 (toList!6432 lm!1309) key!2872)))

(declare-fun lt!1934642 () Unit!138548)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!204 (ListLongMap!4845 K!15169 Hashable!6672) Unit!138548)

(assert (=> b!4771896 (= lt!1934642 (lemmaInLongMapThenContainsKeyBiggerList!204 lm!1309 key!2872 hashF!980))))

(assert (= (and start!488578 res!2024138) b!4771894))

(assert (= (and b!4771894 res!2024140) b!4771895))

(assert (= (and b!4771895 res!2024137) b!4771893))

(assert (= (and b!4771893 (not res!2024136)) b!4771896))

(assert (= (and b!4771896 (not res!2024139)) b!4771891))

(assert (= start!488578 b!4771892))

(declare-fun m!5744318 () Bool)

(assert (=> b!4771894 m!5744318))

(declare-fun m!5744320 () Bool)

(assert (=> b!4771891 m!5744320))

(declare-fun m!5744322 () Bool)

(assert (=> b!4771891 m!5744322))

(declare-fun m!5744324 () Bool)

(assert (=> b!4771891 m!5744324))

(declare-fun m!5744326 () Bool)

(assert (=> b!4771893 m!5744326))

(declare-fun m!5744328 () Bool)

(assert (=> b!4771893 m!5744328))

(declare-fun m!5744330 () Bool)

(assert (=> b!4771893 m!5744330))

(declare-fun m!5744332 () Bool)

(assert (=> b!4771893 m!5744332))

(declare-fun m!5744334 () Bool)

(assert (=> b!4771893 m!5744334))

(assert (=> b!4771893 m!5744334))

(declare-fun m!5744336 () Bool)

(assert (=> b!4771893 m!5744336))

(declare-fun m!5744338 () Bool)

(assert (=> b!4771893 m!5744338))

(declare-fun m!5744340 () Bool)

(assert (=> b!4771893 m!5744340))

(declare-fun m!5744342 () Bool)

(assert (=> b!4771893 m!5744342))

(declare-fun m!5744344 () Bool)

(assert (=> b!4771893 m!5744344))

(declare-fun m!5744346 () Bool)

(assert (=> b!4771893 m!5744346))

(declare-fun m!5744348 () Bool)

(assert (=> start!488578 m!5744348))

(declare-fun m!5744350 () Bool)

(assert (=> start!488578 m!5744350))

(declare-fun m!5744352 () Bool)

(assert (=> b!4771896 m!5744352))

(declare-fun m!5744354 () Bool)

(assert (=> b!4771896 m!5744354))

(declare-fun m!5744356 () Bool)

(assert (=> b!4771896 m!5744356))

(assert (=> b!4771896 m!5744348))

(declare-fun m!5744358 () Bool)

(assert (=> b!4771896 m!5744358))

(declare-fun m!5744360 () Bool)

(assert (=> b!4771895 m!5744360))

(declare-fun m!5744362 () Bool)

(assert (=> b!4771895 m!5744362))

(check-sat tp_is_empty!32685 (not b!4771891) (not start!488578) (not b!4771896) (not b!4771895) tp_is_empty!32687 (not b!4771893) (not b!4771892) (not b!4771894))
(check-sat)
