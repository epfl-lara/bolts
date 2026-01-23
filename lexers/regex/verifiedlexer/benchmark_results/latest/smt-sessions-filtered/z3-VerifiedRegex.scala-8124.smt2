; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!418196 () Bool)

(assert start!418196)

(declare-fun b!4335882 () Bool)

(declare-fun res!1778375 () Bool)

(declare-fun e!2697972 () Bool)

(assert (=> b!4335882 (=> res!1778375 e!2697972)))

(declare-datatypes ((K!10025 0))(
  ( (K!10026 (val!16291 Int)) )
))
(declare-datatypes ((V!10271 0))(
  ( (V!10272 (val!16292 Int)) )
))
(declare-datatypes ((tuple2!47902 0))(
  ( (tuple2!47903 (_1!27245 K!10025) (_2!27245 V!10271)) )
))
(declare-datatypes ((List!48793 0))(
  ( (Nil!48669) (Cons!48669 (h!54170 tuple2!47902) (t!355709 List!48793)) )
))
(declare-fun newBucket!200 () List!48793)

(declare-fun noDuplicateKeys!383 (List!48793) Bool)

(assert (=> b!4335882 (= res!1778375 (not (noDuplicateKeys!383 newBucket!200)))))

(declare-fun b!4335883 () Bool)

(declare-fun res!1778368 () Bool)

(declare-fun e!2697975 () Bool)

(assert (=> b!4335883 (=> (not res!1778368) (not e!2697975))))

(declare-datatypes ((tuple2!47904 0))(
  ( (tuple2!47905 (_1!27246 (_ BitVec 64)) (_2!27246 List!48793)) )
))
(declare-datatypes ((List!48794 0))(
  ( (Nil!48670) (Cons!48670 (h!54171 tuple2!47904) (t!355710 List!48794)) )
))
(declare-datatypes ((ListLongMap!1399 0))(
  ( (ListLongMap!1400 (toList!2749 List!48794)) )
))
(declare-fun lm!1707 () ListLongMap!1399)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!10726 (ListLongMap!1399 (_ BitVec 64)) Bool)

(assert (=> b!4335883 (= res!1778368 (contains!10726 lm!1707 hash!377))))

(declare-fun b!4335884 () Bool)

(declare-fun res!1778371 () Bool)

(declare-fun e!2697971 () Bool)

(assert (=> b!4335884 (=> (not res!1778371) (not e!2697971))))

(declare-fun lt!1549310 () ListLongMap!1399)

(declare-fun lambda!135829 () Int)

(declare-fun forall!8951 (List!48794 Int) Bool)

(assert (=> b!4335884 (= res!1778371 (forall!8951 (toList!2749 lt!1549310) lambda!135829))))

(declare-fun b!4335885 () Bool)

(declare-fun e!2697976 () Bool)

(assert (=> b!4335885 (= e!2697976 true)))

(declare-datatypes ((ListMap!1993 0))(
  ( (ListMap!1994 (toList!2750 List!48793)) )
))
(declare-fun lt!1549316 () ListMap!1993)

(declare-fun lt!1549315 () ListMap!1993)

(declare-fun lt!1549302 () tuple2!47902)

(declare-fun lt!1549308 () List!48793)

(declare-fun eq!173 (ListMap!1993 ListMap!1993) Bool)

(declare-fun +!437 (ListMap!1993 tuple2!47902) ListMap!1993)

(declare-fun addToMapMapFromBucket!91 (List!48793 ListMap!1993) ListMap!1993)

(assert (=> b!4335885 (eq!173 lt!1549316 (+!437 (addToMapMapFromBucket!91 lt!1549308 lt!1549315) lt!1549302))))

(declare-datatypes ((Unit!68563 0))(
  ( (Unit!68564) )
))
(declare-fun lt!1549314 () Unit!68563)

(declare-fun key!3918 () K!10025)

(declare-fun newValue!99 () V!10271)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!2 (ListMap!1993 K!10025 V!10271 List!48793) Unit!68563)

(assert (=> b!4335885 (= lt!1549314 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!2 lt!1549315 key!3918 newValue!99 lt!1549308))))

(declare-fun lt!1549303 () ListMap!1993)

(assert (=> b!4335885 (= lt!1549303 lt!1549316)))

(assert (=> b!4335885 (= lt!1549316 (addToMapMapFromBucket!91 lt!1549308 (+!437 lt!1549315 lt!1549302)))))

(declare-fun lt!1549309 () ListMap!1993)

(assert (=> b!4335885 (= lt!1549309 lt!1549303)))

(declare-fun lt!1549313 () List!48793)

(assert (=> b!4335885 (= lt!1549303 (addToMapMapFromBucket!91 lt!1549313 lt!1549315))))

(assert (=> b!4335885 (= lt!1549309 (addToMapMapFromBucket!91 newBucket!200 lt!1549315))))

(declare-fun extractMap!442 (List!48794) ListMap!1993)

(assert (=> b!4335885 (= lt!1549309 (extractMap!442 (toList!2749 lt!1549310)))))

(assert (=> b!4335885 (= lt!1549315 (extractMap!442 (t!355710 (toList!2749 lm!1707))))))

(declare-fun b!4335886 () Bool)

(assert (=> b!4335886 (= e!2697972 e!2697976)))

(declare-fun res!1778367 () Bool)

(assert (=> b!4335886 (=> res!1778367 e!2697976)))

(get-info :version)

(assert (=> b!4335886 (= res!1778367 (or (not ((_ is Cons!48670) (toList!2749 lm!1707))) (not (= (_1!27246 (h!54171 (toList!2749 lm!1707))) hash!377))))))

(assert (=> b!4335886 e!2697971))

(declare-fun res!1778376 () Bool)

(assert (=> b!4335886 (=> (not res!1778376) (not e!2697971))))

(assert (=> b!4335886 (= res!1778376 (forall!8951 (toList!2749 lt!1549310) lambda!135829))))

(declare-fun lt!1549307 () tuple2!47904)

(declare-fun +!438 (ListLongMap!1399 tuple2!47904) ListLongMap!1399)

(assert (=> b!4335886 (= lt!1549310 (+!438 lm!1707 lt!1549307))))

(assert (=> b!4335886 (= lt!1549307 (tuple2!47905 hash!377 newBucket!200))))

(declare-fun lt!1549306 () Unit!68563)

(declare-fun addValidProp!37 (ListLongMap!1399 Int (_ BitVec 64) List!48793) Unit!68563)

(assert (=> b!4335886 (= lt!1549306 (addValidProp!37 lm!1707 lambda!135829 hash!377 newBucket!200))))

(assert (=> b!4335886 (forall!8951 (toList!2749 lm!1707) lambda!135829)))

(declare-fun tp_is_empty!24769 () Bool)

(declare-fun tp!1328980 () Bool)

(declare-fun tp_is_empty!24771 () Bool)

(declare-fun e!2697974 () Bool)

(declare-fun b!4335887 () Bool)

(assert (=> b!4335887 (= e!2697974 (and tp_is_empty!24769 tp_is_empty!24771 tp!1328980))))

(declare-fun b!4335888 () Bool)

(declare-fun res!1778377 () Bool)

(assert (=> b!4335888 (=> (not res!1778377) (not e!2697975))))

(declare-fun contains!10727 (ListMap!1993 K!10025) Bool)

(assert (=> b!4335888 (= res!1778377 (contains!10727 (extractMap!442 (toList!2749 lm!1707)) key!3918))))

(declare-fun b!4335889 () Bool)

(assert (=> b!4335889 (= e!2697971 (or (not ((_ is Cons!48670) (toList!2749 lm!1707))) (not (= (_1!27246 (h!54171 (toList!2749 lm!1707))) hash!377)) (= lt!1549310 (ListLongMap!1400 (Cons!48670 lt!1549307 (t!355710 (toList!2749 lm!1707)))))))))

(declare-fun b!4335890 () Bool)

(assert (=> b!4335890 (= e!2697975 (not e!2697972))))

(declare-fun res!1778370 () Bool)

(assert (=> b!4335890 (=> res!1778370 e!2697972)))

(assert (=> b!4335890 (= res!1778370 (not (= newBucket!200 lt!1549313)))))

(assert (=> b!4335890 (= lt!1549313 (Cons!48669 lt!1549302 lt!1549308))))

(declare-fun lt!1549304 () List!48793)

(declare-fun removePairForKey!353 (List!48793 K!10025) List!48793)

(assert (=> b!4335890 (= lt!1549308 (removePairForKey!353 lt!1549304 key!3918))))

(assert (=> b!4335890 (= lt!1549302 (tuple2!47903 key!3918 newValue!99))))

(declare-fun lt!1549311 () Unit!68563)

(declare-fun lt!1549305 () tuple2!47904)

(declare-fun forallContained!1601 (List!48794 Int tuple2!47904) Unit!68563)

(assert (=> b!4335890 (= lt!1549311 (forallContained!1601 (toList!2749 lm!1707) lambda!135829 lt!1549305))))

(declare-fun contains!10728 (List!48794 tuple2!47904) Bool)

(assert (=> b!4335890 (contains!10728 (toList!2749 lm!1707) lt!1549305)))

(assert (=> b!4335890 (= lt!1549305 (tuple2!47905 hash!377 lt!1549304))))

(declare-fun lt!1549312 () Unit!68563)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!230 (List!48794 (_ BitVec 64) List!48793) Unit!68563)

(assert (=> b!4335890 (= lt!1549312 (lemmaGetValueByKeyImpliesContainsTuple!230 (toList!2749 lm!1707) hash!377 lt!1549304))))

(declare-fun apply!11235 (ListLongMap!1399 (_ BitVec 64)) List!48793)

(assert (=> b!4335890 (= lt!1549304 (apply!11235 lm!1707 hash!377))))

(declare-fun b!4335891 () Bool)

(declare-fun res!1778373 () Bool)

(assert (=> b!4335891 (=> (not res!1778373) (not e!2697975))))

(declare-datatypes ((Hashable!4775 0))(
  ( (HashableExt!4774 (__x!30478 Int)) )
))
(declare-fun hashF!1247 () Hashable!4775)

(declare-fun allKeysSameHashInMap!487 (ListLongMap!1399 Hashable!4775) Bool)

(assert (=> b!4335891 (= res!1778373 (allKeysSameHashInMap!487 lm!1707 hashF!1247))))

(declare-fun res!1778369 () Bool)

(assert (=> start!418196 (=> (not res!1778369) (not e!2697975))))

(assert (=> start!418196 (= res!1778369 (forall!8951 (toList!2749 lm!1707) lambda!135829))))

(assert (=> start!418196 e!2697975))

(assert (=> start!418196 e!2697974))

(assert (=> start!418196 true))

(declare-fun e!2697973 () Bool)

(declare-fun inv!64211 (ListLongMap!1399) Bool)

(assert (=> start!418196 (and (inv!64211 lm!1707) e!2697973)))

(assert (=> start!418196 tp_is_empty!24769))

(assert (=> start!418196 tp_is_empty!24771))

(declare-fun b!4335892 () Bool)

(declare-fun tp!1328979 () Bool)

(assert (=> b!4335892 (= e!2697973 tp!1328979)))

(declare-fun b!4335893 () Bool)

(declare-fun res!1778372 () Bool)

(assert (=> b!4335893 (=> (not res!1778372) (not e!2697975))))

(declare-fun allKeysSameHash!341 (List!48793 (_ BitVec 64) Hashable!4775) Bool)

(assert (=> b!4335893 (= res!1778372 (allKeysSameHash!341 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4335894 () Bool)

(declare-fun res!1778374 () Bool)

(assert (=> b!4335894 (=> (not res!1778374) (not e!2697975))))

(declare-fun hash!1330 (Hashable!4775 K!10025) (_ BitVec 64))

(assert (=> b!4335894 (= res!1778374 (= (hash!1330 hashF!1247 key!3918) hash!377))))

(assert (= (and start!418196 res!1778369) b!4335891))

(assert (= (and b!4335891 res!1778373) b!4335894))

(assert (= (and b!4335894 res!1778374) b!4335893))

(assert (= (and b!4335893 res!1778372) b!4335888))

(assert (= (and b!4335888 res!1778377) b!4335883))

(assert (= (and b!4335883 res!1778368) b!4335890))

(assert (= (and b!4335890 (not res!1778370)) b!4335882))

(assert (= (and b!4335882 (not res!1778375)) b!4335886))

(assert (= (and b!4335886 res!1778376) b!4335884))

(assert (= (and b!4335884 res!1778371) b!4335889))

(assert (= (and b!4335886 (not res!1778367)) b!4335885))

(assert (= (and start!418196 ((_ is Cons!48669) newBucket!200)) b!4335887))

(assert (= start!418196 b!4335892))

(declare-fun m!4930945 () Bool)

(assert (=> b!4335883 m!4930945))

(declare-fun m!4930947 () Bool)

(assert (=> b!4335893 m!4930947))

(declare-fun m!4930949 () Bool)

(assert (=> b!4335890 m!4930949))

(declare-fun m!4930951 () Bool)

(assert (=> b!4335890 m!4930951))

(declare-fun m!4930953 () Bool)

(assert (=> b!4335890 m!4930953))

(declare-fun m!4930955 () Bool)

(assert (=> b!4335890 m!4930955))

(declare-fun m!4930957 () Bool)

(assert (=> b!4335890 m!4930957))

(declare-fun m!4930959 () Bool)

(assert (=> b!4335885 m!4930959))

(declare-fun m!4930961 () Bool)

(assert (=> b!4335885 m!4930961))

(declare-fun m!4930963 () Bool)

(assert (=> b!4335885 m!4930963))

(assert (=> b!4335885 m!4930963))

(declare-fun m!4930965 () Bool)

(assert (=> b!4335885 m!4930965))

(declare-fun m!4930967 () Bool)

(assert (=> b!4335885 m!4930967))

(declare-fun m!4930969 () Bool)

(assert (=> b!4335885 m!4930969))

(declare-fun m!4930971 () Bool)

(assert (=> b!4335885 m!4930971))

(declare-fun m!4930973 () Bool)

(assert (=> b!4335885 m!4930973))

(declare-fun m!4930975 () Bool)

(assert (=> b!4335885 m!4930975))

(assert (=> b!4335885 m!4930971))

(assert (=> b!4335885 m!4930959))

(declare-fun m!4930977 () Bool)

(assert (=> b!4335885 m!4930977))

(declare-fun m!4930979 () Bool)

(assert (=> b!4335884 m!4930979))

(declare-fun m!4930981 () Bool)

(assert (=> b!4335882 m!4930981))

(declare-fun m!4930983 () Bool)

(assert (=> b!4335891 m!4930983))

(declare-fun m!4930985 () Bool)

(assert (=> b!4335894 m!4930985))

(declare-fun m!4930987 () Bool)

(assert (=> start!418196 m!4930987))

(declare-fun m!4930989 () Bool)

(assert (=> start!418196 m!4930989))

(assert (=> b!4335886 m!4930979))

(declare-fun m!4930991 () Bool)

(assert (=> b!4335886 m!4930991))

(declare-fun m!4930993 () Bool)

(assert (=> b!4335886 m!4930993))

(assert (=> b!4335886 m!4930987))

(declare-fun m!4930995 () Bool)

(assert (=> b!4335888 m!4930995))

(assert (=> b!4335888 m!4930995))

(declare-fun m!4930997 () Bool)

(assert (=> b!4335888 m!4930997))

(check-sat (not b!4335885) (not b!4335886) (not b!4335888) tp_is_empty!24771 (not b!4335887) (not b!4335882) (not b!4335892) (not b!4335893) (not b!4335884) tp_is_empty!24769 (not start!418196) (not b!4335883) (not b!4335890) (not b!4335891) (not b!4335894))
(check-sat)
