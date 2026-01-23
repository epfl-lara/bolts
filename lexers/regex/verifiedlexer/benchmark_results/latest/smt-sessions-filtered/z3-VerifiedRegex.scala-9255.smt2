; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!490902 () Bool)

(assert start!490902)

(declare-fun res!2030109 () Bool)

(declare-fun e!2985018 () Bool)

(assert (=> start!490902 (=> (not res!2030109) (not e!2985018))))

(declare-datatypes ((K!15564 0))(
  ( (K!15565 (val!20757 Int)) )
))
(declare-datatypes ((V!15810 0))(
  ( (V!15811 (val!20758 Int)) )
))
(declare-datatypes ((tuple2!56488 0))(
  ( (tuple2!56489 (_1!31538 K!15564) (_2!31538 V!15810)) )
))
(declare-datatypes ((List!54121 0))(
  ( (Nil!53997) (Cons!53997 (h!60417 tuple2!56488) (t!361571 List!54121)) )
))
(declare-datatypes ((tuple2!56490 0))(
  ( (tuple2!56491 (_1!31539 (_ BitVec 64)) (_2!31539 List!54121)) )
))
(declare-datatypes ((List!54122 0))(
  ( (Nil!53998) (Cons!53998 (h!60418 tuple2!56490) (t!361572 List!54122)) )
))
(declare-datatypes ((ListLongMap!5161 0))(
  ( (ListLongMap!5162 (toList!6739 List!54122)) )
))
(declare-fun lm!2709 () ListLongMap!5161)

(declare-fun lambda!228197 () Int)

(declare-fun forall!12122 (List!54122 Int) Bool)

(assert (=> start!490902 (= res!2030109 (forall!12122 (toList!6739 lm!2709) lambda!228197))))

(assert (=> start!490902 e!2985018))

(declare-fun e!2985015 () Bool)

(declare-fun inv!69590 (ListLongMap!5161) Bool)

(assert (=> start!490902 (and (inv!69590 lm!2709) e!2985015)))

(assert (=> start!490902 true))

(declare-fun tp_is_empty!33221 () Bool)

(assert (=> start!490902 tp_is_empty!33221))

(declare-fun tp_is_empty!33223 () Bool)

(assert (=> start!490902 tp_is_empty!33223))

(declare-fun b!4781312 () Bool)

(declare-fun res!2030110 () Bool)

(assert (=> b!4781312 (=> (not res!2030110) (not e!2985018))))

(declare-datatypes ((Hashable!6830 0))(
  ( (HashableExt!6829 (__x!32853 Int)) )
))
(declare-fun hashF!1687 () Hashable!6830)

(declare-fun allKeysSameHashInMap!2235 (ListLongMap!5161 Hashable!6830) Bool)

(assert (=> b!4781312 (= res!2030110 (allKeysSameHashInMap!2235 lm!2709 hashF!1687))))

(declare-fun b!4781313 () Bool)

(declare-fun e!2985016 () Bool)

(assert (=> b!4781313 (= e!2985016 true)))

(declare-fun b!4781314 () Bool)

(declare-fun res!2030112 () Bool)

(assert (=> b!4781314 (=> (not res!2030112) (not e!2985018))))

(declare-fun key!6641 () K!15564)

(declare-fun containsKeyBiggerList!486 (List!54122 K!15564) Bool)

(assert (=> b!4781314 (= res!2030112 (containsKeyBiggerList!486 (toList!6739 lm!2709) key!6641))))

(declare-fun b!4781315 () Bool)

(declare-fun e!2985017 () Bool)

(assert (=> b!4781315 (= e!2985017 e!2985016)))

(declare-fun res!2030111 () Bool)

(assert (=> b!4781315 (=> res!2030111 e!2985016)))

(declare-fun containsKey!3806 (List!54121 K!15564) Bool)

(assert (=> b!4781315 (= res!2030111 (containsKey!3806 (_2!31539 (h!60418 (toList!6739 lm!2709))) key!6641))))

(declare-fun apply!12885 (ListLongMap!5161 (_ BitVec 64)) List!54121)

(assert (=> b!4781315 (not (containsKey!3806 (apply!12885 lm!2709 (_1!31539 (h!60418 (toList!6739 lm!2709)))) key!6641))))

(declare-datatypes ((Unit!139269 0))(
  ( (Unit!139270) )
))
(declare-fun lt!1943770 () Unit!139269)

(declare-fun lemmaNotSameHashThenCannotContainKey!184 (ListLongMap!5161 K!15564 (_ BitVec 64) Hashable!6830) Unit!139269)

(assert (=> b!4781315 (= lt!1943770 (lemmaNotSameHashThenCannotContainKey!184 lm!2709 key!6641 (_1!31539 (h!60418 (toList!6739 lm!2709))) hashF!1687))))

(declare-fun b!4781316 () Bool)

(declare-fun res!2030114 () Bool)

(assert (=> b!4781316 (=> res!2030114 e!2985017)))

(declare-fun lt!1943774 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4781316 (= res!2030114 (or (and ((_ is Cons!53998) (toList!6739 lm!2709)) (= (_1!31539 (h!60418 (toList!6739 lm!2709))) lt!1943774)) (not ((_ is Cons!53998) (toList!6739 lm!2709)))))))

(declare-fun b!4781317 () Bool)

(declare-fun tp!1357436 () Bool)

(assert (=> b!4781317 (= e!2985015 tp!1357436)))

(declare-fun b!4781318 () Bool)

(assert (=> b!4781318 (= e!2985018 (not e!2985017))))

(declare-fun res!2030113 () Bool)

(assert (=> b!4781318 (=> res!2030113 e!2985017)))

(declare-datatypes ((Option!12930 0))(
  ( (None!12929) (Some!12929 (v!48136 tuple2!56488)) )
))
(declare-fun lt!1943773 () Option!12930)

(declare-fun v!11584 () V!15810)

(declare-fun get!18357 (Option!12930) tuple2!56488)

(assert (=> b!4781318 (= res!2030113 (not (= (_2!31538 (get!18357 lt!1943773)) v!11584)))))

(declare-fun isDefined!10074 (Option!12930) Bool)

(assert (=> b!4781318 (isDefined!10074 lt!1943773)))

(declare-fun lt!1943769 () List!54121)

(declare-fun getPair!802 (List!54121 K!15564) Option!12930)

(assert (=> b!4781318 (= lt!1943773 (getPair!802 lt!1943769 key!6641))))

(declare-fun lt!1943766 () tuple2!56490)

(declare-fun lt!1943768 () Unit!139269)

(declare-fun forallContained!4066 (List!54122 Int tuple2!56490) Unit!139269)

(assert (=> b!4781318 (= lt!1943768 (forallContained!4066 (toList!6739 lm!2709) lambda!228197 lt!1943766))))

(declare-fun lt!1943772 () Unit!139269)

(declare-fun lemmaInGenMapThenGetPairDefined!576 (ListLongMap!5161 K!15564 Hashable!6830) Unit!139269)

(assert (=> b!4781318 (= lt!1943772 (lemmaInGenMapThenGetPairDefined!576 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1943765 () Unit!139269)

(assert (=> b!4781318 (= lt!1943765 (forallContained!4066 (toList!6739 lm!2709) lambda!228197 lt!1943766))))

(declare-fun contains!17530 (List!54122 tuple2!56490) Bool)

(assert (=> b!4781318 (contains!17530 (toList!6739 lm!2709) lt!1943766)))

(assert (=> b!4781318 (= lt!1943766 (tuple2!56491 lt!1943774 lt!1943769))))

(declare-fun lt!1943771 () Unit!139269)

(declare-fun lemmaGetValueImpliesTupleContained!609 (ListLongMap!5161 (_ BitVec 64) List!54121) Unit!139269)

(assert (=> b!4781318 (= lt!1943771 (lemmaGetValueImpliesTupleContained!609 lm!2709 lt!1943774 lt!1943769))))

(assert (=> b!4781318 (= lt!1943769 (apply!12885 lm!2709 lt!1943774))))

(declare-fun contains!17531 (ListLongMap!5161 (_ BitVec 64)) Bool)

(assert (=> b!4781318 (contains!17531 lm!2709 lt!1943774)))

(declare-fun hash!4815 (Hashable!6830 K!15564) (_ BitVec 64))

(assert (=> b!4781318 (= lt!1943774 (hash!4815 hashF!1687 key!6641))))

(declare-fun lt!1943767 () Unit!139269)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1026 (ListLongMap!5161 K!15564 Hashable!6830) Unit!139269)

(assert (=> b!4781318 (= lt!1943767 (lemmaInGenMapThenLongMapContainsHash!1026 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6211 0))(
  ( (ListMap!6212 (toList!6740 List!54121)) )
))
(declare-fun contains!17532 (ListMap!6211 K!15564) Bool)

(declare-fun extractMap!2357 (List!54122) ListMap!6211)

(assert (=> b!4781318 (contains!17532 (extractMap!2357 (toList!6739 lm!2709)) key!6641)))

(declare-fun lt!1943775 () Unit!139269)

(declare-fun lemmaListContainsThenExtractedMapContains!678 (ListLongMap!5161 K!15564 Hashable!6830) Unit!139269)

(assert (=> b!4781318 (= lt!1943775 (lemmaListContainsThenExtractedMapContains!678 lm!2709 key!6641 hashF!1687))))

(assert (= (and start!490902 res!2030109) b!4781312))

(assert (= (and b!4781312 res!2030110) b!4781314))

(assert (= (and b!4781314 res!2030112) b!4781318))

(assert (= (and b!4781318 (not res!2030113)) b!4781316))

(assert (= (and b!4781316 (not res!2030114)) b!4781315))

(assert (= (and b!4781315 (not res!2030111)) b!4781313))

(assert (= start!490902 b!4781317))

(declare-fun m!5758366 () Bool)

(assert (=> b!4781315 m!5758366))

(declare-fun m!5758368 () Bool)

(assert (=> b!4781315 m!5758368))

(assert (=> b!4781315 m!5758368))

(declare-fun m!5758370 () Bool)

(assert (=> b!4781315 m!5758370))

(declare-fun m!5758372 () Bool)

(assert (=> b!4781315 m!5758372))

(declare-fun m!5758374 () Bool)

(assert (=> b!4781318 m!5758374))

(declare-fun m!5758376 () Bool)

(assert (=> b!4781318 m!5758376))

(declare-fun m!5758378 () Bool)

(assert (=> b!4781318 m!5758378))

(declare-fun m!5758380 () Bool)

(assert (=> b!4781318 m!5758380))

(declare-fun m!5758382 () Bool)

(assert (=> b!4781318 m!5758382))

(declare-fun m!5758384 () Bool)

(assert (=> b!4781318 m!5758384))

(declare-fun m!5758386 () Bool)

(assert (=> b!4781318 m!5758386))

(declare-fun m!5758388 () Bool)

(assert (=> b!4781318 m!5758388))

(declare-fun m!5758390 () Bool)

(assert (=> b!4781318 m!5758390))

(declare-fun m!5758392 () Bool)

(assert (=> b!4781318 m!5758392))

(declare-fun m!5758394 () Bool)

(assert (=> b!4781318 m!5758394))

(assert (=> b!4781318 m!5758380))

(declare-fun m!5758396 () Bool)

(assert (=> b!4781318 m!5758396))

(assert (=> b!4781318 m!5758386))

(declare-fun m!5758398 () Bool)

(assert (=> b!4781318 m!5758398))

(declare-fun m!5758400 () Bool)

(assert (=> b!4781318 m!5758400))

(declare-fun m!5758402 () Bool)

(assert (=> start!490902 m!5758402))

(declare-fun m!5758404 () Bool)

(assert (=> start!490902 m!5758404))

(declare-fun m!5758406 () Bool)

(assert (=> b!4781314 m!5758406))

(declare-fun m!5758408 () Bool)

(assert (=> b!4781312 m!5758408))

(check-sat tp_is_empty!33221 (not b!4781312) (not b!4781317) (not b!4781318) (not b!4781315) tp_is_empty!33223 (not b!4781314) (not start!490902))
(check-sat)
