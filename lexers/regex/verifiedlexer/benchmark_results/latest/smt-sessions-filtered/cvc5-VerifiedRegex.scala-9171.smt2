; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488556 () Bool)

(assert start!488556)

(declare-fun b!4771687 () Bool)

(declare-fun e!2978724 () Bool)

(declare-fun e!2978723 () Bool)

(assert (=> b!4771687 (= e!2978724 e!2978723)))

(declare-fun res!2023968 () Bool)

(assert (=> b!4771687 (=> res!2023968 e!2978723)))

(declare-datatypes ((K!15142 0))(
  ( (K!15143 (val!20419 Int)) )
))
(declare-datatypes ((V!15388 0))(
  ( (V!15389 (val!20420 Int)) )
))
(declare-datatypes ((tuple2!55812 0))(
  ( (tuple2!55813 (_1!31200 K!15142) (_2!31200 V!15388)) )
))
(declare-datatypes ((List!53755 0))(
  ( (Nil!53631) (Cons!53631 (h!60043 tuple2!55812) (t!361205 List!53755)) )
))
(declare-datatypes ((tuple2!55814 0))(
  ( (tuple2!55815 (_1!31201 (_ BitVec 64)) (_2!31201 List!53755)) )
))
(declare-datatypes ((List!53756 0))(
  ( (Nil!53632) (Cons!53632 (h!60044 tuple2!55814) (t!361206 List!53756)) )
))
(declare-datatypes ((ListLongMap!4823 0))(
  ( (ListLongMap!4824 (toList!6409 List!53756)) )
))
(declare-fun lm!1309 () ListLongMap!4823)

(declare-fun lambda!225266 () Int)

(declare-fun forall!11925 (List!53756 Int) Bool)

(assert (=> b!4771687 (= res!2023968 (not (forall!11925 (toList!6409 lm!1309) lambda!225266)))))

(declare-fun key!2872 () K!15142)

(declare-fun v!9615 () V!15388)

(declare-fun getValue!1 (List!53756 K!15142) V!15388)

(assert (=> b!4771687 (= (getValue!1 (toList!6409 lm!1309) key!2872) v!9615)))

(declare-datatypes ((Hashable!6661 0))(
  ( (HashableExt!6660 (__x!32684 Int)) )
))
(declare-fun hashF!980 () Hashable!6661)

(declare-datatypes ((Unit!138526 0))(
  ( (Unit!138527) )
))
(declare-fun lt!1934194 () Unit!138526)

(declare-fun lemmaGetValueEquivToGetPair!1 (ListLongMap!4823 K!15142 V!15388 Hashable!6661) Unit!138526)

(assert (=> b!4771687 (= lt!1934194 (lemmaGetValueEquivToGetPair!1 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!335 (List!53756 K!15142) Bool)

(assert (=> b!4771687 (containsKeyBiggerList!335 (toList!6409 lm!1309) key!2872)))

(declare-fun lt!1934188 () Unit!138526)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!193 (ListLongMap!4823 K!15142 Hashable!6661) Unit!138526)

(assert (=> b!4771687 (= lt!1934188 (lemmaInLongMapThenContainsKeyBiggerList!193 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771689 () Bool)

(declare-fun e!2978726 () Bool)

(assert (=> b!4771689 (= e!2978726 (not e!2978724))))

(declare-fun res!2023969 () Bool)

(assert (=> b!4771689 (=> res!2023969 e!2978724)))

(declare-datatypes ((Option!12756 0))(
  ( (None!12755) (Some!12755 (v!47882 tuple2!55812)) )
))
(declare-fun lt!1934193 () Option!12756)

(declare-fun get!18127 (Option!12756) tuple2!55812)

(assert (=> b!4771689 (= res!2023969 (not (= (_2!31200 (get!18127 lt!1934193)) v!9615)))))

(declare-fun isDefined!9902 (Option!12756) Bool)

(assert (=> b!4771689 (isDefined!9902 lt!1934193)))

(declare-fun lt!1934196 () List!53755)

(declare-fun getPair!681 (List!53755 K!15142) Option!12756)

(assert (=> b!4771689 (= lt!1934193 (getPair!681 lt!1934196 key!2872))))

(declare-fun lt!1934197 () Unit!138526)

(declare-fun lt!1934199 () tuple2!55814)

(declare-fun forallContained!3906 (List!53756 Int tuple2!55814) Unit!138526)

(assert (=> b!4771689 (= lt!1934197 (forallContained!3906 (toList!6409 lm!1309) lambda!225266 lt!1934199))))

(declare-fun lt!1934191 () Unit!138526)

(declare-fun lemmaInGenMapThenGetPairDefined!455 (ListLongMap!4823 K!15142 Hashable!6661) Unit!138526)

(assert (=> b!4771689 (= lt!1934191 (lemmaInGenMapThenGetPairDefined!455 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1934195 () Unit!138526)

(assert (=> b!4771689 (= lt!1934195 (forallContained!3906 (toList!6409 lm!1309) lambda!225266 lt!1934199))))

(declare-fun contains!17031 (List!53756 tuple2!55814) Bool)

(assert (=> b!4771689 (contains!17031 (toList!6409 lm!1309) lt!1934199)))

(declare-fun lt!1934192 () (_ BitVec 64))

(assert (=> b!4771689 (= lt!1934199 (tuple2!55815 lt!1934192 lt!1934196))))

(declare-fun lt!1934189 () Unit!138526)

(declare-fun lemmaGetValueImpliesTupleContained!472 (ListLongMap!4823 (_ BitVec 64) List!53755) Unit!138526)

(assert (=> b!4771689 (= lt!1934189 (lemmaGetValueImpliesTupleContained!472 lm!1309 lt!1934192 lt!1934196))))

(declare-fun apply!12706 (ListLongMap!4823 (_ BitVec 64)) List!53755)

(assert (=> b!4771689 (= lt!1934196 (apply!12706 lm!1309 lt!1934192))))

(declare-fun contains!17032 (ListLongMap!4823 (_ BitVec 64)) Bool)

(assert (=> b!4771689 (contains!17032 lm!1309 lt!1934192)))

(declare-fun hash!4636 (Hashable!6661 K!15142) (_ BitVec 64))

(assert (=> b!4771689 (= lt!1934192 (hash!4636 hashF!980 key!2872))))

(declare-fun lt!1934198 () Unit!138526)

(declare-fun lemmaInGenMapThenLongMapContainsHash!877 (ListLongMap!4823 K!15142 Hashable!6661) Unit!138526)

(assert (=> b!4771689 (= lt!1934198 (lemmaInGenMapThenLongMapContainsHash!877 lm!1309 key!2872 hashF!980))))

(declare-fun b!4771690 () Bool)

(assert (=> b!4771690 (= e!2978723 (forall!11925 (toList!6409 lm!1309) lambda!225266))))

(declare-fun lt!1934190 () Unit!138526)

(declare-fun lemmaInGenericMapThenInLongMap!213 (ListLongMap!4823 K!15142 Hashable!6661) Unit!138526)

(assert (=> b!4771690 (= lt!1934190 (lemmaInGenericMapThenInLongMap!213 lm!1309 key!2872 hashF!980))))

(declare-fun res!2023967 () Bool)

(assert (=> start!488556 (=> (not res!2023967) (not e!2978726))))

(assert (=> start!488556 (= res!2023967 (forall!11925 (toList!6409 lm!1309) lambda!225266))))

(assert (=> start!488556 e!2978726))

(declare-fun e!2978725 () Bool)

(declare-fun inv!69169 (ListLongMap!4823) Bool)

(assert (=> start!488556 (and (inv!69169 lm!1309) e!2978725)))

(assert (=> start!488556 true))

(declare-fun tp_is_empty!32641 () Bool)

(assert (=> start!488556 tp_is_empty!32641))

(declare-fun tp_is_empty!32643 () Bool)

(assert (=> start!488556 tp_is_empty!32643))

(declare-fun b!4771688 () Bool)

(declare-fun res!2023965 () Bool)

(assert (=> b!4771688 (=> (not res!2023965) (not e!2978726))))

(declare-datatypes ((ListMap!5889 0))(
  ( (ListMap!5890 (toList!6410 List!53755)) )
))
(declare-fun contains!17033 (ListMap!5889 K!15142) Bool)

(declare-fun extractMap!2196 (List!53756) ListMap!5889)

(assert (=> b!4771688 (= res!2023965 (contains!17033 (extractMap!2196 (toList!6409 lm!1309)) key!2872))))

(declare-fun b!4771691 () Bool)

(declare-fun res!2023966 () Bool)

(assert (=> b!4771691 (=> (not res!2023966) (not e!2978726))))

(declare-fun allKeysSameHashInMap!2066 (ListLongMap!4823 Hashable!6661) Bool)

(assert (=> b!4771691 (= res!2023966 (allKeysSameHashInMap!2066 lm!1309 hashF!980))))

(declare-fun b!4771692 () Bool)

(declare-fun tp!1356675 () Bool)

(assert (=> b!4771692 (= e!2978725 tp!1356675)))

(assert (= (and start!488556 res!2023967) b!4771691))

(assert (= (and b!4771691 res!2023966) b!4771688))

(assert (= (and b!4771688 res!2023965) b!4771689))

(assert (= (and b!4771689 (not res!2023969)) b!4771687))

(assert (= (and b!4771687 (not res!2023968)) b!4771690))

(assert (= start!488556 b!4771692))

(declare-fun m!5743828 () Bool)

(assert (=> b!4771690 m!5743828))

(declare-fun m!5743830 () Bool)

(assert (=> b!4771690 m!5743830))

(assert (=> start!488556 m!5743828))

(declare-fun m!5743832 () Bool)

(assert (=> start!488556 m!5743832))

(declare-fun m!5743834 () Bool)

(assert (=> b!4771689 m!5743834))

(declare-fun m!5743836 () Bool)

(assert (=> b!4771689 m!5743836))

(declare-fun m!5743838 () Bool)

(assert (=> b!4771689 m!5743838))

(declare-fun m!5743840 () Bool)

(assert (=> b!4771689 m!5743840))

(declare-fun m!5743842 () Bool)

(assert (=> b!4771689 m!5743842))

(declare-fun m!5743844 () Bool)

(assert (=> b!4771689 m!5743844))

(assert (=> b!4771689 m!5743844))

(declare-fun m!5743846 () Bool)

(assert (=> b!4771689 m!5743846))

(declare-fun m!5743848 () Bool)

(assert (=> b!4771689 m!5743848))

(declare-fun m!5743850 () Bool)

(assert (=> b!4771689 m!5743850))

(declare-fun m!5743852 () Bool)

(assert (=> b!4771689 m!5743852))

(declare-fun m!5743854 () Bool)

(assert (=> b!4771689 m!5743854))

(declare-fun m!5743856 () Bool)

(assert (=> b!4771691 m!5743856))

(declare-fun m!5743858 () Bool)

(assert (=> b!4771688 m!5743858))

(assert (=> b!4771688 m!5743858))

(declare-fun m!5743860 () Bool)

(assert (=> b!4771688 m!5743860))

(declare-fun m!5743862 () Bool)

(assert (=> b!4771687 m!5743862))

(declare-fun m!5743864 () Bool)

(assert (=> b!4771687 m!5743864))

(assert (=> b!4771687 m!5743828))

(declare-fun m!5743866 () Bool)

(assert (=> b!4771687 m!5743866))

(declare-fun m!5743868 () Bool)

(assert (=> b!4771687 m!5743868))

(push 1)

(assert tp_is_empty!32643)

(assert (not b!4771689))

(assert (not b!4771690))

(assert (not b!4771687))

(assert (not b!4771691))

(assert (not b!4771688))

(assert (not start!488556))

(assert (not b!4771692))

(assert tp_is_empty!32641)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

