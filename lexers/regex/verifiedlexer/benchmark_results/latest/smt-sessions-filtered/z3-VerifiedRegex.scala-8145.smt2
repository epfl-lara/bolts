; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419264 () Bool)

(assert start!419264)

(declare-fun b!4344623 () Bool)

(declare-fun e!2703615 () Bool)

(declare-datatypes ((V!10376 0))(
  ( (V!10377 (val!16375 Int)) )
))
(declare-datatypes ((K!10130 0))(
  ( (K!10131 (val!16376 Int)) )
))
(declare-datatypes ((tuple2!48070 0))(
  ( (tuple2!48071 (_1!27329 K!10130) (_2!27329 V!10376)) )
))
(declare-datatypes ((List!48895 0))(
  ( (Nil!48771) (Cons!48771 (h!54290 tuple2!48070) (t!355815 List!48895)) )
))
(declare-datatypes ((tuple2!48072 0))(
  ( (tuple2!48073 (_1!27330 (_ BitVec 64)) (_2!27330 List!48895)) )
))
(declare-datatypes ((List!48896 0))(
  ( (Nil!48772) (Cons!48772 (h!54291 tuple2!48072) (t!355816 List!48896)) )
))
(declare-datatypes ((ListLongMap!1483 0))(
  ( (ListLongMap!1484 (toList!2833 List!48896)) )
))
(declare-fun lt!1558276 () ListLongMap!1483)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun contains!10888 (ListLongMap!1483 (_ BitVec 64)) Bool)

(assert (=> b!4344623 (= e!2703615 (contains!10888 lt!1558276 hash!377))))

(declare-datatypes ((ListMap!2077 0))(
  ( (ListMap!2078 (toList!2834 List!48895)) )
))
(declare-fun lt!1558278 () ListMap!2077)

(declare-fun key!3918 () K!10130)

(declare-fun lt!1558286 () ListMap!2077)

(declare-fun contains!10889 (ListMap!2077 K!10130) Bool)

(assert (=> b!4344623 (= (contains!10889 lt!1558278 key!3918) (contains!10889 lt!1558286 key!3918))))

(declare-datatypes ((Unit!70287 0))(
  ( (Unit!70288) )
))
(declare-fun lt!1558269 () Unit!70287)

(declare-fun lemmaEquivalentThenSameContains!76 (ListMap!2077 ListMap!2077 K!10130) Unit!70287)

(assert (=> b!4344623 (= lt!1558269 (lemmaEquivalentThenSameContains!76 lt!1558278 lt!1558286 key!3918))))

(declare-fun eq!215 (ListMap!2077 ListMap!2077) Bool)

(assert (=> b!4344623 (eq!215 lt!1558278 lt!1558286)))

(declare-fun lt!1558272 () ListMap!2077)

(declare-fun -!226 (ListMap!2077 K!10130) ListMap!2077)

(assert (=> b!4344623 (= lt!1558286 (-!226 lt!1558272 key!3918))))

(declare-fun lt!1558280 () List!48895)

(declare-fun lm!1707 () ListLongMap!1483)

(declare-fun lt!1558283 () Unit!70287)

(declare-datatypes ((Hashable!4817 0))(
  ( (HashableExt!4816 (__x!30520 Int)) )
))
(declare-fun hashF!1247 () Hashable!4817)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!41 (ListLongMap!1483 (_ BitVec 64) List!48895 K!10130 Hashable!4817) Unit!70287)

(assert (=> b!4344623 (= lt!1558283 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!41 lm!1707 hash!377 lt!1558280 key!3918 hashF!1247))))

(declare-fun lt!1558287 () ListMap!2077)

(assert (=> b!4344623 (= lt!1558287 lt!1558278)))

(declare-fun extractMap!484 (List!48896) ListMap!2077)

(assert (=> b!4344623 (= lt!1558278 (extractMap!484 (toList!2833 lt!1558276)))))

(declare-fun lt!1558288 () List!48895)

(assert (=> b!4344623 (= lt!1558280 lt!1558288)))

(declare-fun +!521 (ListLongMap!1483 tuple2!48072) ListLongMap!1483)

(assert (=> b!4344623 (= lt!1558276 (+!521 lm!1707 (tuple2!48073 hash!377 lt!1558280)))))

(declare-fun newBucket!200 () List!48895)

(declare-fun tail!6923 (List!48895) List!48895)

(assert (=> b!4344623 (= lt!1558280 (tail!6923 newBucket!200))))

(declare-fun e!2703610 () Bool)

(assert (=> b!4344623 e!2703610))

(declare-fun res!1783607 () Bool)

(assert (=> b!4344623 (=> (not res!1783607) (not e!2703610))))

(declare-fun lt!1558277 () ListMap!2077)

(declare-fun lt!1558279 () ListMap!2077)

(assert (=> b!4344623 (= res!1783607 (eq!215 lt!1558277 lt!1558279))))

(declare-fun lt!1558270 () tuple2!48070)

(declare-fun +!522 (ListMap!2077 tuple2!48070) ListMap!2077)

(assert (=> b!4344623 (= lt!1558279 (+!522 lt!1558287 lt!1558270))))

(declare-fun lt!1558284 () ListMap!2077)

(declare-fun addToMapMapFromBucket!133 (List!48895 ListMap!2077) ListMap!2077)

(assert (=> b!4344623 (= lt!1558287 (addToMapMapFromBucket!133 lt!1558288 lt!1558284))))

(declare-fun newValue!99 () V!10376)

(declare-fun lt!1558273 () Unit!70287)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!44 (ListMap!2077 K!10130 V!10376 List!48895) Unit!70287)

(assert (=> b!4344623 (= lt!1558273 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!44 lt!1558284 key!3918 newValue!99 lt!1558288))))

(declare-fun lt!1558275 () ListMap!2077)

(assert (=> b!4344623 (= lt!1558275 lt!1558277)))

(assert (=> b!4344623 (= lt!1558277 (addToMapMapFromBucket!133 lt!1558288 (+!522 lt!1558284 lt!1558270)))))

(declare-fun lt!1558268 () ListMap!2077)

(assert (=> b!4344623 (= lt!1558268 lt!1558275)))

(declare-fun lt!1558285 () List!48895)

(assert (=> b!4344623 (= lt!1558275 (addToMapMapFromBucket!133 lt!1558285 lt!1558284))))

(assert (=> b!4344623 (= lt!1558268 (addToMapMapFromBucket!133 newBucket!200 lt!1558284))))

(declare-fun lt!1558289 () ListLongMap!1483)

(assert (=> b!4344623 (= lt!1558268 (extractMap!484 (toList!2833 lt!1558289)))))

(assert (=> b!4344623 (= lt!1558284 (extractMap!484 (t!355816 (toList!2833 lm!1707))))))

(declare-fun b!4344625 () Bool)

(assert (=> b!4344625 (= e!2703610 (eq!215 lt!1558275 lt!1558279))))

(declare-fun b!4344626 () Bool)

(declare-fun res!1783605 () Bool)

(declare-fun e!2703611 () Bool)

(assert (=> b!4344626 (=> (not res!1783605) (not e!2703611))))

(declare-fun hash!1392 (Hashable!4817 K!10130) (_ BitVec 64))

(assert (=> b!4344626 (= res!1783605 (= (hash!1392 hashF!1247 key!3918) hash!377))))

(declare-fun b!4344627 () Bool)

(declare-fun res!1783604 () Bool)

(declare-fun e!2703609 () Bool)

(assert (=> b!4344627 (=> (not res!1783604) (not e!2703609))))

(declare-fun lambda!137793 () Int)

(declare-fun forall!9013 (List!48896 Int) Bool)

(assert (=> b!4344627 (= res!1783604 (forall!9013 (toList!2833 lt!1558289) lambda!137793))))

(declare-fun b!4344628 () Bool)

(declare-fun res!1783608 () Bool)

(declare-fun e!2703616 () Bool)

(assert (=> b!4344628 (=> (not res!1783608) (not e!2703616))))

(assert (=> b!4344628 (= res!1783608 (contains!10888 lm!1707 hash!377))))

(declare-fun b!4344629 () Bool)

(declare-fun res!1783615 () Bool)

(assert (=> b!4344629 (=> (not res!1783615) (not e!2703611))))

(declare-fun allKeysSameHashInMap!529 (ListLongMap!1483 Hashable!4817) Bool)

(assert (=> b!4344629 (= res!1783615 (allKeysSameHashInMap!529 lm!1707 hashF!1247))))

(declare-fun b!4344630 () Bool)

(declare-fun res!1783606 () Bool)

(assert (=> b!4344630 (=> (not res!1783606) (not e!2703611))))

(declare-fun allKeysSameHash!383 (List!48895 (_ BitVec 64) Hashable!4817) Bool)

(assert (=> b!4344630 (= res!1783606 (allKeysSameHash!383 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4344624 () Bool)

(declare-fun e!2703614 () Bool)

(declare-fun tp!1329412 () Bool)

(assert (=> b!4344624 (= e!2703614 tp!1329412)))

(declare-fun res!1783613 () Bool)

(assert (=> start!419264 (=> (not res!1783613) (not e!2703611))))

(assert (=> start!419264 (= res!1783613 (forall!9013 (toList!2833 lm!1707) lambda!137793))))

(assert (=> start!419264 e!2703611))

(declare-fun e!2703613 () Bool)

(assert (=> start!419264 e!2703613))

(assert (=> start!419264 true))

(declare-fun inv!64316 (ListLongMap!1483) Bool)

(assert (=> start!419264 (and (inv!64316 lm!1707) e!2703614)))

(declare-fun tp_is_empty!24937 () Bool)

(assert (=> start!419264 tp_is_empty!24937))

(declare-fun tp_is_empty!24939 () Bool)

(assert (=> start!419264 tp_is_empty!24939))

(declare-fun b!4344631 () Bool)

(assert (=> b!4344631 (= e!2703611 e!2703616)))

(declare-fun res!1783610 () Bool)

(assert (=> b!4344631 (=> (not res!1783610) (not e!2703616))))

(assert (=> b!4344631 (= res!1783610 (contains!10889 lt!1558272 key!3918))))

(assert (=> b!4344631 (= lt!1558272 (extractMap!484 (toList!2833 lm!1707)))))

(declare-fun tp!1329411 () Bool)

(declare-fun b!4344632 () Bool)

(assert (=> b!4344632 (= e!2703613 (and tp_is_empty!24937 tp_is_empty!24939 tp!1329411))))

(declare-fun b!4344633 () Bool)

(declare-fun res!1783614 () Bool)

(declare-fun e!2703612 () Bool)

(assert (=> b!4344633 (=> res!1783614 e!2703612)))

(declare-fun noDuplicateKeys!425 (List!48895) Bool)

(assert (=> b!4344633 (= res!1783614 (not (noDuplicateKeys!425 newBucket!200)))))

(declare-fun b!4344634 () Bool)

(assert (=> b!4344634 (= e!2703612 e!2703615)))

(declare-fun res!1783609 () Bool)

(assert (=> b!4344634 (=> res!1783609 e!2703615)))

(get-info :version)

(assert (=> b!4344634 (= res!1783609 (or (not ((_ is Cons!48772) (toList!2833 lm!1707))) (not (= (_1!27330 (h!54291 (toList!2833 lm!1707))) hash!377))))))

(assert (=> b!4344634 e!2703609))

(declare-fun res!1783612 () Bool)

(assert (=> b!4344634 (=> (not res!1783612) (not e!2703609))))

(assert (=> b!4344634 (= res!1783612 (forall!9013 (toList!2833 lt!1558289) lambda!137793))))

(declare-fun lt!1558274 () tuple2!48072)

(assert (=> b!4344634 (= lt!1558289 (+!521 lm!1707 lt!1558274))))

(assert (=> b!4344634 (= lt!1558274 (tuple2!48073 hash!377 newBucket!200))))

(declare-fun lt!1558282 () Unit!70287)

(declare-fun addValidProp!79 (ListLongMap!1483 Int (_ BitVec 64) List!48895) Unit!70287)

(assert (=> b!4344634 (= lt!1558282 (addValidProp!79 lm!1707 lambda!137793 hash!377 newBucket!200))))

(assert (=> b!4344634 (forall!9013 (toList!2833 lm!1707) lambda!137793)))

(declare-fun b!4344635 () Bool)

(assert (=> b!4344635 (= e!2703609 (or (not ((_ is Cons!48772) (toList!2833 lm!1707))) (not (= (_1!27330 (h!54291 (toList!2833 lm!1707))) hash!377)) (= lt!1558289 (ListLongMap!1484 (Cons!48772 lt!1558274 (t!355816 (toList!2833 lm!1707)))))))))

(declare-fun b!4344636 () Bool)

(assert (=> b!4344636 (= e!2703616 (not e!2703612))))

(declare-fun res!1783611 () Bool)

(assert (=> b!4344636 (=> res!1783611 e!2703612)))

(assert (=> b!4344636 (= res!1783611 (not (= newBucket!200 lt!1558285)))))

(assert (=> b!4344636 (= lt!1558285 (Cons!48771 lt!1558270 lt!1558288))))

(declare-fun lt!1558271 () List!48895)

(declare-fun removePairForKey!395 (List!48895 K!10130) List!48895)

(assert (=> b!4344636 (= lt!1558288 (removePairForKey!395 lt!1558271 key!3918))))

(assert (=> b!4344636 (= lt!1558270 (tuple2!48071 key!3918 newValue!99))))

(declare-fun lt!1558281 () Unit!70287)

(declare-fun lt!1558267 () tuple2!48072)

(declare-fun forallContained!1663 (List!48896 Int tuple2!48072) Unit!70287)

(assert (=> b!4344636 (= lt!1558281 (forallContained!1663 (toList!2833 lm!1707) lambda!137793 lt!1558267))))

(declare-fun contains!10890 (List!48896 tuple2!48072) Bool)

(assert (=> b!4344636 (contains!10890 (toList!2833 lm!1707) lt!1558267)))

(assert (=> b!4344636 (= lt!1558267 (tuple2!48073 hash!377 lt!1558271))))

(declare-fun lt!1558290 () Unit!70287)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!272 (List!48896 (_ BitVec 64) List!48895) Unit!70287)

(assert (=> b!4344636 (= lt!1558290 (lemmaGetValueByKeyImpliesContainsTuple!272 (toList!2833 lm!1707) hash!377 lt!1558271))))

(declare-fun apply!11277 (ListLongMap!1483 (_ BitVec 64)) List!48895)

(assert (=> b!4344636 (= lt!1558271 (apply!11277 lm!1707 hash!377))))

(assert (= (and start!419264 res!1783613) b!4344629))

(assert (= (and b!4344629 res!1783615) b!4344626))

(assert (= (and b!4344626 res!1783605) b!4344630))

(assert (= (and b!4344630 res!1783606) b!4344631))

(assert (= (and b!4344631 res!1783610) b!4344628))

(assert (= (and b!4344628 res!1783608) b!4344636))

(assert (= (and b!4344636 (not res!1783611)) b!4344633))

(assert (= (and b!4344633 (not res!1783614)) b!4344634))

(assert (= (and b!4344634 res!1783612) b!4344627))

(assert (= (and b!4344627 res!1783604) b!4344635))

(assert (= (and b!4344634 (not res!1783609)) b!4344623))

(assert (= (and b!4344623 res!1783607) b!4344625))

(assert (= (and start!419264 ((_ is Cons!48771) newBucket!200)) b!4344632))

(assert (= start!419264 b!4344624))

(declare-fun m!4950891 () Bool)

(assert (=> b!4344629 m!4950891))

(declare-fun m!4950893 () Bool)

(assert (=> b!4344631 m!4950893))

(declare-fun m!4950895 () Bool)

(assert (=> b!4344631 m!4950895))

(declare-fun m!4950897 () Bool)

(assert (=> b!4344626 m!4950897))

(declare-fun m!4950899 () Bool)

(assert (=> b!4344633 m!4950899))

(declare-fun m!4950901 () Bool)

(assert (=> b!4344623 m!4950901))

(declare-fun m!4950903 () Bool)

(assert (=> b!4344623 m!4950903))

(declare-fun m!4950905 () Bool)

(assert (=> b!4344623 m!4950905))

(declare-fun m!4950907 () Bool)

(assert (=> b!4344623 m!4950907))

(declare-fun m!4950909 () Bool)

(assert (=> b!4344623 m!4950909))

(declare-fun m!4950911 () Bool)

(assert (=> b!4344623 m!4950911))

(declare-fun m!4950913 () Bool)

(assert (=> b!4344623 m!4950913))

(declare-fun m!4950915 () Bool)

(assert (=> b!4344623 m!4950915))

(declare-fun m!4950917 () Bool)

(assert (=> b!4344623 m!4950917))

(declare-fun m!4950919 () Bool)

(assert (=> b!4344623 m!4950919))

(declare-fun m!4950921 () Bool)

(assert (=> b!4344623 m!4950921))

(declare-fun m!4950923 () Bool)

(assert (=> b!4344623 m!4950923))

(declare-fun m!4950925 () Bool)

(assert (=> b!4344623 m!4950925))

(assert (=> b!4344623 m!4950911))

(declare-fun m!4950927 () Bool)

(assert (=> b!4344623 m!4950927))

(declare-fun m!4950929 () Bool)

(assert (=> b!4344623 m!4950929))

(declare-fun m!4950931 () Bool)

(assert (=> b!4344623 m!4950931))

(declare-fun m!4950933 () Bool)

(assert (=> b!4344623 m!4950933))

(declare-fun m!4950935 () Bool)

(assert (=> b!4344623 m!4950935))

(declare-fun m!4950937 () Bool)

(assert (=> b!4344623 m!4950937))

(declare-fun m!4950939 () Bool)

(assert (=> b!4344623 m!4950939))

(declare-fun m!4950941 () Bool)

(assert (=> start!419264 m!4950941))

(declare-fun m!4950943 () Bool)

(assert (=> start!419264 m!4950943))

(declare-fun m!4950945 () Bool)

(assert (=> b!4344628 m!4950945))

(declare-fun m!4950947 () Bool)

(assert (=> b!4344634 m!4950947))

(declare-fun m!4950949 () Bool)

(assert (=> b!4344634 m!4950949))

(declare-fun m!4950951 () Bool)

(assert (=> b!4344634 m!4950951))

(assert (=> b!4344634 m!4950941))

(declare-fun m!4950953 () Bool)

(assert (=> b!4344625 m!4950953))

(declare-fun m!4950955 () Bool)

(assert (=> b!4344636 m!4950955))

(declare-fun m!4950957 () Bool)

(assert (=> b!4344636 m!4950957))

(declare-fun m!4950959 () Bool)

(assert (=> b!4344636 m!4950959))

(declare-fun m!4950961 () Bool)

(assert (=> b!4344636 m!4950961))

(declare-fun m!4950963 () Bool)

(assert (=> b!4344636 m!4950963))

(assert (=> b!4344627 m!4950947))

(declare-fun m!4950965 () Bool)

(assert (=> b!4344630 m!4950965))

(check-sat (not b!4344633) (not b!4344628) (not b!4344626) (not b!4344625) tp_is_empty!24939 (not b!4344627) (not b!4344632) (not b!4344629) (not b!4344623) (not b!4344634) (not b!4344631) (not b!4344624) tp_is_empty!24937 (not b!4344636) (not b!4344630) (not start!419264))
(check-sat)
(get-model)

(declare-fun d!1282838 () Bool)

(assert (=> d!1282838 true))

(assert (=> d!1282838 true))

(declare-fun lambda!137796 () Int)

(declare-fun forall!9015 (List!48895 Int) Bool)

(assert (=> d!1282838 (= (allKeysSameHash!383 newBucket!200 hash!377 hashF!1247) (forall!9015 newBucket!200 lambda!137796))))

(declare-fun bs!627068 () Bool)

(assert (= bs!627068 d!1282838))

(declare-fun m!4950967 () Bool)

(assert (=> bs!627068 m!4950967))

(assert (=> b!4344630 d!1282838))

(declare-fun b!4344665 () Bool)

(declare-fun e!2703636 () Unit!70287)

(declare-fun lt!1558311 () Unit!70287)

(assert (=> b!4344665 (= e!2703636 lt!1558311)))

(declare-fun lt!1558307 () Unit!70287)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!302 (List!48895 K!10130) Unit!70287)

(assert (=> b!4344665 (= lt!1558307 (lemmaContainsKeyImpliesGetValueByKeyDefined!302 (toList!2834 lt!1558272) key!3918))))

(declare-datatypes ((Option!10403 0))(
  ( (None!10402) (Some!10402 (v!43184 V!10376)) )
))
(declare-fun isDefined!7699 (Option!10403) Bool)

(declare-fun getValueByKey!389 (List!48895 K!10130) Option!10403)

(assert (=> b!4344665 (isDefined!7699 (getValueByKey!389 (toList!2834 lt!1558272) key!3918))))

(declare-fun lt!1558314 () Unit!70287)

(assert (=> b!4344665 (= lt!1558314 lt!1558307)))

(declare-fun lemmaInListThenGetKeysListContains!91 (List!48895 K!10130) Unit!70287)

(assert (=> b!4344665 (= lt!1558311 (lemmaInListThenGetKeysListContains!91 (toList!2834 lt!1558272) key!3918))))

(declare-fun call!302034 () Bool)

(assert (=> b!4344665 call!302034))

(declare-fun bm!302029 () Bool)

(declare-datatypes ((List!48898 0))(
  ( (Nil!48774) (Cons!48774 (h!54295 K!10130) (t!355818 List!48898)) )
))
(declare-fun e!2703635 () List!48898)

(declare-fun contains!10892 (List!48898 K!10130) Bool)

(assert (=> bm!302029 (= call!302034 (contains!10892 e!2703635 key!3918))))

(declare-fun c!738751 () Bool)

(declare-fun c!738750 () Bool)

(assert (=> bm!302029 (= c!738751 c!738750)))

(declare-fun b!4344666 () Bool)

(declare-fun e!2703638 () Bool)

(declare-fun e!2703639 () Bool)

(assert (=> b!4344666 (= e!2703638 e!2703639)))

(declare-fun res!1783629 () Bool)

(assert (=> b!4344666 (=> (not res!1783629) (not e!2703639))))

(assert (=> b!4344666 (= res!1783629 (isDefined!7699 (getValueByKey!389 (toList!2834 lt!1558272) key!3918)))))

(declare-fun b!4344667 () Bool)

(declare-fun keys!16432 (ListMap!2077) List!48898)

(assert (=> b!4344667 (= e!2703635 (keys!16432 lt!1558272))))

(declare-fun b!4344668 () Bool)

(declare-fun e!2703637 () Unit!70287)

(assert (=> b!4344668 (= e!2703636 e!2703637)))

(declare-fun c!738749 () Bool)

(assert (=> b!4344668 (= c!738749 call!302034)))

(declare-fun b!4344669 () Bool)

(declare-fun Unit!70304 () Unit!70287)

(assert (=> b!4344669 (= e!2703637 Unit!70304)))

(declare-fun b!4344670 () Bool)

(declare-fun getKeysList!94 (List!48895) List!48898)

(assert (=> b!4344670 (= e!2703635 (getKeysList!94 (toList!2834 lt!1558272)))))

(declare-fun d!1282840 () Bool)

(assert (=> d!1282840 e!2703638))

(declare-fun res!1783628 () Bool)

(assert (=> d!1282840 (=> res!1783628 e!2703638)))

(declare-fun e!2703640 () Bool)

(assert (=> d!1282840 (= res!1783628 e!2703640)))

(declare-fun res!1783630 () Bool)

(assert (=> d!1282840 (=> (not res!1783630) (not e!2703640))))

(declare-fun lt!1558308 () Bool)

(assert (=> d!1282840 (= res!1783630 (not lt!1558308))))

(declare-fun lt!1558312 () Bool)

(assert (=> d!1282840 (= lt!1558308 lt!1558312)))

(declare-fun lt!1558309 () Unit!70287)

(assert (=> d!1282840 (= lt!1558309 e!2703636)))

(assert (=> d!1282840 (= c!738750 lt!1558312)))

(declare-fun containsKey!587 (List!48895 K!10130) Bool)

(assert (=> d!1282840 (= lt!1558312 (containsKey!587 (toList!2834 lt!1558272) key!3918))))

(assert (=> d!1282840 (= (contains!10889 lt!1558272 key!3918) lt!1558308)))

(declare-fun b!4344671 () Bool)

(assert (=> b!4344671 false))

(declare-fun lt!1558310 () Unit!70287)

(declare-fun lt!1558313 () Unit!70287)

(assert (=> b!4344671 (= lt!1558310 lt!1558313)))

(assert (=> b!4344671 (containsKey!587 (toList!2834 lt!1558272) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!92 (List!48895 K!10130) Unit!70287)

(assert (=> b!4344671 (= lt!1558313 (lemmaInGetKeysListThenContainsKey!92 (toList!2834 lt!1558272) key!3918))))

(declare-fun Unit!70309 () Unit!70287)

(assert (=> b!4344671 (= e!2703637 Unit!70309)))

(declare-fun b!4344672 () Bool)

(assert (=> b!4344672 (= e!2703640 (not (contains!10892 (keys!16432 lt!1558272) key!3918)))))

(declare-fun b!4344673 () Bool)

(assert (=> b!4344673 (= e!2703639 (contains!10892 (keys!16432 lt!1558272) key!3918))))

(assert (= (and d!1282840 c!738750) b!4344665))

(assert (= (and d!1282840 (not c!738750)) b!4344668))

(assert (= (and b!4344668 c!738749) b!4344671))

(assert (= (and b!4344668 (not c!738749)) b!4344669))

(assert (= (or b!4344665 b!4344668) bm!302029))

(assert (= (and bm!302029 c!738751) b!4344670))

(assert (= (and bm!302029 (not c!738751)) b!4344667))

(assert (= (and d!1282840 res!1783630) b!4344672))

(assert (= (and d!1282840 (not res!1783628)) b!4344666))

(assert (= (and b!4344666 res!1783629) b!4344673))

(declare-fun m!4950973 () Bool)

(assert (=> bm!302029 m!4950973))

(declare-fun m!4950975 () Bool)

(assert (=> b!4344671 m!4950975))

(declare-fun m!4950977 () Bool)

(assert (=> b!4344671 m!4950977))

(declare-fun m!4950979 () Bool)

(assert (=> b!4344673 m!4950979))

(assert (=> b!4344673 m!4950979))

(declare-fun m!4950981 () Bool)

(assert (=> b!4344673 m!4950981))

(assert (=> b!4344667 m!4950979))

(declare-fun m!4950983 () Bool)

(assert (=> b!4344670 m!4950983))

(assert (=> b!4344672 m!4950979))

(assert (=> b!4344672 m!4950979))

(assert (=> b!4344672 m!4950981))

(declare-fun m!4950985 () Bool)

(assert (=> b!4344665 m!4950985))

(declare-fun m!4950987 () Bool)

(assert (=> b!4344665 m!4950987))

(assert (=> b!4344665 m!4950987))

(declare-fun m!4950989 () Bool)

(assert (=> b!4344665 m!4950989))

(declare-fun m!4950991 () Bool)

(assert (=> b!4344665 m!4950991))

(assert (=> d!1282840 m!4950975))

(assert (=> b!4344666 m!4950987))

(assert (=> b!4344666 m!4950987))

(assert (=> b!4344666 m!4950989))

(assert (=> b!4344631 d!1282840))

(declare-fun bs!627069 () Bool)

(declare-fun d!1282846 () Bool)

(assert (= bs!627069 (and d!1282846 start!419264)))

(declare-fun lambda!137799 () Int)

(assert (=> bs!627069 (= lambda!137799 lambda!137793)))

(declare-fun lt!1558317 () ListMap!2077)

(declare-fun invariantList!646 (List!48895) Bool)

(assert (=> d!1282846 (invariantList!646 (toList!2834 lt!1558317))))

(declare-fun e!2703643 () ListMap!2077)

(assert (=> d!1282846 (= lt!1558317 e!2703643)))

(declare-fun c!738754 () Bool)

(assert (=> d!1282846 (= c!738754 ((_ is Cons!48772) (toList!2833 lm!1707)))))

(assert (=> d!1282846 (forall!9013 (toList!2833 lm!1707) lambda!137799)))

(assert (=> d!1282846 (= (extractMap!484 (toList!2833 lm!1707)) lt!1558317)))

(declare-fun b!4344678 () Bool)

(assert (=> b!4344678 (= e!2703643 (addToMapMapFromBucket!133 (_2!27330 (h!54291 (toList!2833 lm!1707))) (extractMap!484 (t!355816 (toList!2833 lm!1707)))))))

(declare-fun b!4344679 () Bool)

(assert (=> b!4344679 (= e!2703643 (ListMap!2078 Nil!48771))))

(assert (= (and d!1282846 c!738754) b!4344678))

(assert (= (and d!1282846 (not c!738754)) b!4344679))

(declare-fun m!4950993 () Bool)

(assert (=> d!1282846 m!4950993))

(declare-fun m!4950995 () Bool)

(assert (=> d!1282846 m!4950995))

(assert (=> b!4344678 m!4950933))

(assert (=> b!4344678 m!4950933))

(declare-fun m!4950997 () Bool)

(assert (=> b!4344678 m!4950997))

(assert (=> b!4344631 d!1282846))

(declare-fun d!1282848 () Bool)

(declare-fun res!1783635 () Bool)

(declare-fun e!2703648 () Bool)

(assert (=> d!1282848 (=> res!1783635 e!2703648)))

(assert (=> d!1282848 (= res!1783635 ((_ is Nil!48772) (toList!2833 lt!1558289)))))

(assert (=> d!1282848 (= (forall!9013 (toList!2833 lt!1558289) lambda!137793) e!2703648)))

(declare-fun b!4344684 () Bool)

(declare-fun e!2703649 () Bool)

(assert (=> b!4344684 (= e!2703648 e!2703649)))

(declare-fun res!1783636 () Bool)

(assert (=> b!4344684 (=> (not res!1783636) (not e!2703649))))

(declare-fun dynLambda!20590 (Int tuple2!48072) Bool)

(assert (=> b!4344684 (= res!1783636 (dynLambda!20590 lambda!137793 (h!54291 (toList!2833 lt!1558289))))))

(declare-fun b!4344685 () Bool)

(assert (=> b!4344685 (= e!2703649 (forall!9013 (t!355816 (toList!2833 lt!1558289)) lambda!137793))))

(assert (= (and d!1282848 (not res!1783635)) b!4344684))

(assert (= (and b!4344684 res!1783636) b!4344685))

(declare-fun b_lambda!130011 () Bool)

(assert (=> (not b_lambda!130011) (not b!4344684)))

(declare-fun m!4950999 () Bool)

(assert (=> b!4344684 m!4950999))

(declare-fun m!4951001 () Bool)

(assert (=> b!4344685 m!4951001))

(assert (=> b!4344634 d!1282848))

(declare-fun d!1282850 () Bool)

(declare-fun e!2703654 () Bool)

(assert (=> d!1282850 e!2703654))

(declare-fun res!1783641 () Bool)

(assert (=> d!1282850 (=> (not res!1783641) (not e!2703654))))

(declare-fun lt!1558337 () ListLongMap!1483)

(assert (=> d!1282850 (= res!1783641 (contains!10888 lt!1558337 (_1!27330 lt!1558274)))))

(declare-fun lt!1558336 () List!48896)

(assert (=> d!1282850 (= lt!1558337 (ListLongMap!1484 lt!1558336))))

(declare-fun lt!1558339 () Unit!70287)

(declare-fun lt!1558338 () Unit!70287)

(assert (=> d!1282850 (= lt!1558339 lt!1558338)))

(declare-datatypes ((Option!10404 0))(
  ( (None!10403) (Some!10403 (v!43185 List!48895)) )
))
(declare-fun getValueByKey!390 (List!48896 (_ BitVec 64)) Option!10404)

(assert (=> d!1282850 (= (getValueByKey!390 lt!1558336 (_1!27330 lt!1558274)) (Some!10403 (_2!27330 lt!1558274)))))

(declare-fun lemmaContainsTupThenGetReturnValue!171 (List!48896 (_ BitVec 64) List!48895) Unit!70287)

(assert (=> d!1282850 (= lt!1558338 (lemmaContainsTupThenGetReturnValue!171 lt!1558336 (_1!27330 lt!1558274) (_2!27330 lt!1558274)))))

(declare-fun insertStrictlySorted!102 (List!48896 (_ BitVec 64) List!48895) List!48896)

(assert (=> d!1282850 (= lt!1558336 (insertStrictlySorted!102 (toList!2833 lm!1707) (_1!27330 lt!1558274) (_2!27330 lt!1558274)))))

(assert (=> d!1282850 (= (+!521 lm!1707 lt!1558274) lt!1558337)))

(declare-fun b!4344694 () Bool)

(declare-fun res!1783642 () Bool)

(assert (=> b!4344694 (=> (not res!1783642) (not e!2703654))))

(assert (=> b!4344694 (= res!1783642 (= (getValueByKey!390 (toList!2833 lt!1558337) (_1!27330 lt!1558274)) (Some!10403 (_2!27330 lt!1558274))))))

(declare-fun b!4344695 () Bool)

(assert (=> b!4344695 (= e!2703654 (contains!10890 (toList!2833 lt!1558337) lt!1558274))))

(assert (= (and d!1282850 res!1783641) b!4344694))

(assert (= (and b!4344694 res!1783642) b!4344695))

(declare-fun m!4951003 () Bool)

(assert (=> d!1282850 m!4951003))

(declare-fun m!4951005 () Bool)

(assert (=> d!1282850 m!4951005))

(declare-fun m!4951007 () Bool)

(assert (=> d!1282850 m!4951007))

(declare-fun m!4951009 () Bool)

(assert (=> d!1282850 m!4951009))

(declare-fun m!4951011 () Bool)

(assert (=> b!4344694 m!4951011))

(declare-fun m!4951013 () Bool)

(assert (=> b!4344695 m!4951013))

(assert (=> b!4344634 d!1282850))

(declare-fun d!1282852 () Bool)

(assert (=> d!1282852 (forall!9013 (toList!2833 (+!521 lm!1707 (tuple2!48073 hash!377 newBucket!200))) lambda!137793)))

(declare-fun lt!1558374 () Unit!70287)

(declare-fun choose!26636 (ListLongMap!1483 Int (_ BitVec 64) List!48895) Unit!70287)

(assert (=> d!1282852 (= lt!1558374 (choose!26636 lm!1707 lambda!137793 hash!377 newBucket!200))))

(declare-fun e!2703661 () Bool)

(assert (=> d!1282852 e!2703661))

(declare-fun res!1783651 () Bool)

(assert (=> d!1282852 (=> (not res!1783651) (not e!2703661))))

(assert (=> d!1282852 (= res!1783651 (forall!9013 (toList!2833 lm!1707) lambda!137793))))

(assert (=> d!1282852 (= (addValidProp!79 lm!1707 lambda!137793 hash!377 newBucket!200) lt!1558374)))

(declare-fun b!4344705 () Bool)

(assert (=> b!4344705 (= e!2703661 (dynLambda!20590 lambda!137793 (tuple2!48073 hash!377 newBucket!200)))))

(assert (= (and d!1282852 res!1783651) b!4344705))

(declare-fun b_lambda!130013 () Bool)

(assert (=> (not b_lambda!130013) (not b!4344705)))

(declare-fun m!4951015 () Bool)

(assert (=> d!1282852 m!4951015))

(declare-fun m!4951017 () Bool)

(assert (=> d!1282852 m!4951017))

(declare-fun m!4951019 () Bool)

(assert (=> d!1282852 m!4951019))

(assert (=> d!1282852 m!4950941))

(declare-fun m!4951021 () Bool)

(assert (=> b!4344705 m!4951021))

(assert (=> b!4344634 d!1282852))

(declare-fun d!1282854 () Bool)

(declare-fun res!1783652 () Bool)

(declare-fun e!2703662 () Bool)

(assert (=> d!1282854 (=> res!1783652 e!2703662)))

(assert (=> d!1282854 (= res!1783652 ((_ is Nil!48772) (toList!2833 lm!1707)))))

(assert (=> d!1282854 (= (forall!9013 (toList!2833 lm!1707) lambda!137793) e!2703662)))

(declare-fun b!4344706 () Bool)

(declare-fun e!2703663 () Bool)

(assert (=> b!4344706 (= e!2703662 e!2703663)))

(declare-fun res!1783653 () Bool)

(assert (=> b!4344706 (=> (not res!1783653) (not e!2703663))))

(assert (=> b!4344706 (= res!1783653 (dynLambda!20590 lambda!137793 (h!54291 (toList!2833 lm!1707))))))

(declare-fun b!4344707 () Bool)

(assert (=> b!4344707 (= e!2703663 (forall!9013 (t!355816 (toList!2833 lm!1707)) lambda!137793))))

(assert (= (and d!1282854 (not res!1783652)) b!4344706))

(assert (= (and b!4344706 res!1783653) b!4344707))

(declare-fun b_lambda!130015 () Bool)

(assert (=> (not b_lambda!130015) (not b!4344706)))

(declare-fun m!4951023 () Bool)

(assert (=> b!4344706 m!4951023))

(declare-fun m!4951025 () Bool)

(assert (=> b!4344707 m!4951025))

(assert (=> b!4344634 d!1282854))

(declare-fun d!1282856 () Bool)

(declare-fun res!1783661 () Bool)

(declare-fun e!2703671 () Bool)

(assert (=> d!1282856 (=> res!1783661 e!2703671)))

(assert (=> d!1282856 (= res!1783661 (not ((_ is Cons!48771) newBucket!200)))))

(assert (=> d!1282856 (= (noDuplicateKeys!425 newBucket!200) e!2703671)))

(declare-fun b!4344719 () Bool)

(declare-fun e!2703672 () Bool)

(assert (=> b!4344719 (= e!2703671 e!2703672)))

(declare-fun res!1783662 () Bool)

(assert (=> b!4344719 (=> (not res!1783662) (not e!2703672))))

(declare-fun containsKey!588 (List!48895 K!10130) Bool)

(assert (=> b!4344719 (= res!1783662 (not (containsKey!588 (t!355815 newBucket!200) (_1!27329 (h!54290 newBucket!200)))))))

(declare-fun b!4344720 () Bool)

(assert (=> b!4344720 (= e!2703672 (noDuplicateKeys!425 (t!355815 newBucket!200)))))

(assert (= (and d!1282856 (not res!1783661)) b!4344719))

(assert (= (and b!4344719 res!1783662) b!4344720))

(declare-fun m!4951027 () Bool)

(assert (=> b!4344719 m!4951027))

(declare-fun m!4951029 () Bool)

(assert (=> b!4344720 m!4951029))

(assert (=> b!4344633 d!1282856))

(declare-fun d!1282858 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7644 (List!48895) (InoxSet tuple2!48070))

(assert (=> d!1282858 (= (eq!215 lt!1558278 lt!1558286) (= (content!7644 (toList!2834 lt!1558278)) (content!7644 (toList!2834 lt!1558286))))))

(declare-fun bs!627073 () Bool)

(assert (= bs!627073 d!1282858))

(declare-fun m!4951031 () Bool)

(assert (=> bs!627073 m!4951031))

(declare-fun m!4951033 () Bool)

(assert (=> bs!627073 m!4951033))

(assert (=> b!4344623 d!1282858))

(declare-fun bs!627074 () Bool)

(declare-fun d!1282860 () Bool)

(assert (= bs!627074 (and d!1282860 start!419264)))

(declare-fun lambda!137832 () Int)

(assert (=> bs!627074 (= lambda!137832 lambda!137793)))

(declare-fun bs!627075 () Bool)

(assert (= bs!627075 (and d!1282860 d!1282846)))

(assert (=> bs!627075 (= lambda!137832 lambda!137799)))

(declare-fun lt!1558396 () ListMap!2077)

(assert (=> d!1282860 (invariantList!646 (toList!2834 lt!1558396))))

(declare-fun e!2703673 () ListMap!2077)

(assert (=> d!1282860 (= lt!1558396 e!2703673)))

(declare-fun c!738758 () Bool)

(assert (=> d!1282860 (= c!738758 ((_ is Cons!48772) (toList!2833 lt!1558276)))))

(assert (=> d!1282860 (forall!9013 (toList!2833 lt!1558276) lambda!137832)))

(assert (=> d!1282860 (= (extractMap!484 (toList!2833 lt!1558276)) lt!1558396)))

(declare-fun b!4344721 () Bool)

(assert (=> b!4344721 (= e!2703673 (addToMapMapFromBucket!133 (_2!27330 (h!54291 (toList!2833 lt!1558276))) (extractMap!484 (t!355816 (toList!2833 lt!1558276)))))))

(declare-fun b!4344722 () Bool)

(assert (=> b!4344722 (= e!2703673 (ListMap!2078 Nil!48771))))

(assert (= (and d!1282860 c!738758) b!4344721))

(assert (= (and d!1282860 (not c!738758)) b!4344722))

(declare-fun m!4951065 () Bool)

(assert (=> d!1282860 m!4951065))

(declare-fun m!4951073 () Bool)

(assert (=> d!1282860 m!4951073))

(declare-fun m!4951075 () Bool)

(assert (=> b!4344721 m!4951075))

(assert (=> b!4344721 m!4951075))

(declare-fun m!4951077 () Bool)

(assert (=> b!4344721 m!4951077))

(assert (=> b!4344623 d!1282860))

(declare-fun bs!627153 () Bool)

(declare-fun b!4344821 () Bool)

(assert (= bs!627153 (and b!4344821 d!1282838)))

(declare-fun lambda!137881 () Int)

(assert (=> bs!627153 (not (= lambda!137881 lambda!137796))))

(assert (=> b!4344821 true))

(declare-fun bs!627154 () Bool)

(declare-fun b!4344823 () Bool)

(assert (= bs!627154 (and b!4344823 d!1282838)))

(declare-fun lambda!137882 () Int)

(assert (=> bs!627154 (not (= lambda!137882 lambda!137796))))

(declare-fun bs!627155 () Bool)

(assert (= bs!627155 (and b!4344823 b!4344821)))

(assert (=> bs!627155 (= lambda!137882 lambda!137881)))

(assert (=> b!4344823 true))

(declare-fun lambda!137883 () Int)

(assert (=> bs!627154 (not (= lambda!137883 lambda!137796))))

(declare-fun lt!1558604 () ListMap!2077)

(assert (=> bs!627155 (= (= lt!1558604 lt!1558284) (= lambda!137883 lambda!137881))))

(assert (=> b!4344823 (= (= lt!1558604 lt!1558284) (= lambda!137883 lambda!137882))))

(assert (=> b!4344823 true))

(declare-fun bs!627156 () Bool)

(declare-fun d!1282864 () Bool)

(assert (= bs!627156 (and d!1282864 d!1282838)))

(declare-fun lambda!137884 () Int)

(assert (=> bs!627156 (not (= lambda!137884 lambda!137796))))

(declare-fun bs!627157 () Bool)

(assert (= bs!627157 (and d!1282864 b!4344821)))

(declare-fun lt!1558603 () ListMap!2077)

(assert (=> bs!627157 (= (= lt!1558603 lt!1558284) (= lambda!137884 lambda!137881))))

(declare-fun bs!627159 () Bool)

(assert (= bs!627159 (and d!1282864 b!4344823)))

(assert (=> bs!627159 (= (= lt!1558603 lt!1558284) (= lambda!137884 lambda!137882))))

(assert (=> bs!627159 (= (= lt!1558603 lt!1558604) (= lambda!137884 lambda!137883))))

(assert (=> d!1282864 true))

(declare-fun b!4344820 () Bool)

(declare-fun res!1783712 () Bool)

(declare-fun e!2703735 () Bool)

(assert (=> b!4344820 (=> (not res!1783712) (not e!2703735))))

(assert (=> b!4344820 (= res!1783712 (forall!9015 (toList!2834 lt!1558284) lambda!137884))))

(declare-fun e!2703734 () ListMap!2077)

(assert (=> b!4344821 (= e!2703734 lt!1558284)))

(declare-fun lt!1558599 () Unit!70287)

(declare-fun call!302064 () Unit!70287)

(assert (=> b!4344821 (= lt!1558599 call!302064)))

(declare-fun call!302063 () Bool)

(assert (=> b!4344821 call!302063))

(declare-fun lt!1558605 () Unit!70287)

(assert (=> b!4344821 (= lt!1558605 lt!1558599)))

(declare-fun call!302065 () Bool)

(assert (=> b!4344821 call!302065))

(declare-fun lt!1558608 () Unit!70287)

(declare-fun Unit!70317 () Unit!70287)

(assert (=> b!4344821 (= lt!1558608 Unit!70317)))

(declare-fun bm!302058 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!39 (ListMap!2077) Unit!70287)

(assert (=> bm!302058 (= call!302064 (lemmaContainsAllItsOwnKeys!39 lt!1558284))))

(assert (=> d!1282864 e!2703735))

(declare-fun res!1783710 () Bool)

(assert (=> d!1282864 (=> (not res!1783710) (not e!2703735))))

(assert (=> d!1282864 (= res!1783710 (forall!9015 newBucket!200 lambda!137884))))

(assert (=> d!1282864 (= lt!1558603 e!2703734)))

(declare-fun c!738784 () Bool)

(assert (=> d!1282864 (= c!738784 ((_ is Nil!48771) newBucket!200))))

(assert (=> d!1282864 (noDuplicateKeys!425 newBucket!200)))

(assert (=> d!1282864 (= (addToMapMapFromBucket!133 newBucket!200 lt!1558284) lt!1558603)))

(declare-fun b!4344822 () Bool)

(declare-fun e!2703736 () Bool)

(assert (=> b!4344822 (= e!2703736 (forall!9015 (toList!2834 lt!1558284) lambda!137883))))

(declare-fun bm!302059 () Bool)

(assert (=> bm!302059 (= call!302065 (forall!9015 (toList!2834 lt!1558284) (ite c!738784 lambda!137881 lambda!137883)))))

(assert (=> b!4344823 (= e!2703734 lt!1558604)))

(declare-fun lt!1558591 () ListMap!2077)

(assert (=> b!4344823 (= lt!1558591 (+!522 lt!1558284 (h!54290 newBucket!200)))))

(assert (=> b!4344823 (= lt!1558604 (addToMapMapFromBucket!133 (t!355815 newBucket!200) (+!522 lt!1558284 (h!54290 newBucket!200))))))

(declare-fun lt!1558606 () Unit!70287)

(assert (=> b!4344823 (= lt!1558606 call!302064)))

(assert (=> b!4344823 call!302063))

(declare-fun lt!1558602 () Unit!70287)

(assert (=> b!4344823 (= lt!1558602 lt!1558606)))

(assert (=> b!4344823 (forall!9015 (toList!2834 lt!1558591) lambda!137883)))

(declare-fun lt!1558593 () Unit!70287)

(declare-fun Unit!70319 () Unit!70287)

(assert (=> b!4344823 (= lt!1558593 Unit!70319)))

(assert (=> b!4344823 (forall!9015 (t!355815 newBucket!200) lambda!137883)))

(declare-fun lt!1558588 () Unit!70287)

(declare-fun Unit!70321 () Unit!70287)

(assert (=> b!4344823 (= lt!1558588 Unit!70321)))

(declare-fun lt!1558590 () Unit!70287)

(declare-fun Unit!70323 () Unit!70287)

(assert (=> b!4344823 (= lt!1558590 Unit!70323)))

(declare-fun lt!1558598 () Unit!70287)

(declare-fun forallContained!1665 (List!48895 Int tuple2!48070) Unit!70287)

(assert (=> b!4344823 (= lt!1558598 (forallContained!1665 (toList!2834 lt!1558591) lambda!137883 (h!54290 newBucket!200)))))

(assert (=> b!4344823 (contains!10889 lt!1558591 (_1!27329 (h!54290 newBucket!200)))))

(declare-fun lt!1558601 () Unit!70287)

(declare-fun Unit!70324 () Unit!70287)

(assert (=> b!4344823 (= lt!1558601 Unit!70324)))

(assert (=> b!4344823 (contains!10889 lt!1558604 (_1!27329 (h!54290 newBucket!200)))))

(declare-fun lt!1558597 () Unit!70287)

(declare-fun Unit!70326 () Unit!70287)

(assert (=> b!4344823 (= lt!1558597 Unit!70326)))

(assert (=> b!4344823 (forall!9015 newBucket!200 lambda!137883)))

(declare-fun lt!1558589 () Unit!70287)

(declare-fun Unit!70328 () Unit!70287)

(assert (=> b!4344823 (= lt!1558589 Unit!70328)))

(assert (=> b!4344823 (forall!9015 (toList!2834 lt!1558591) lambda!137883)))

(declare-fun lt!1558600 () Unit!70287)

(declare-fun Unit!70329 () Unit!70287)

(assert (=> b!4344823 (= lt!1558600 Unit!70329)))

(declare-fun lt!1558596 () Unit!70287)

(declare-fun Unit!70331 () Unit!70287)

(assert (=> b!4344823 (= lt!1558596 Unit!70331)))

(declare-fun lt!1558592 () Unit!70287)

(declare-fun addForallContainsKeyThenBeforeAdding!39 (ListMap!2077 ListMap!2077 K!10130 V!10376) Unit!70287)

(assert (=> b!4344823 (= lt!1558592 (addForallContainsKeyThenBeforeAdding!39 lt!1558284 lt!1558604 (_1!27329 (h!54290 newBucket!200)) (_2!27329 (h!54290 newBucket!200))))))

(assert (=> b!4344823 call!302065))

(declare-fun lt!1558594 () Unit!70287)

(assert (=> b!4344823 (= lt!1558594 lt!1558592)))

(assert (=> b!4344823 (forall!9015 (toList!2834 lt!1558284) lambda!137883)))

(declare-fun lt!1558595 () Unit!70287)

(declare-fun Unit!70334 () Unit!70287)

(assert (=> b!4344823 (= lt!1558595 Unit!70334)))

(declare-fun res!1783711 () Bool)

(assert (=> b!4344823 (= res!1783711 (forall!9015 newBucket!200 lambda!137883))))

(assert (=> b!4344823 (=> (not res!1783711) (not e!2703736))))

(assert (=> b!4344823 e!2703736))

(declare-fun lt!1558607 () Unit!70287)

(declare-fun Unit!70335 () Unit!70287)

(assert (=> b!4344823 (= lt!1558607 Unit!70335)))

(declare-fun b!4344824 () Bool)

(assert (=> b!4344824 (= e!2703735 (invariantList!646 (toList!2834 lt!1558603)))))

(declare-fun bm!302060 () Bool)

(assert (=> bm!302060 (= call!302063 (forall!9015 (toList!2834 lt!1558284) (ite c!738784 lambda!137881 lambda!137882)))))

(assert (= (and d!1282864 c!738784) b!4344821))

(assert (= (and d!1282864 (not c!738784)) b!4344823))

(assert (= (and b!4344823 res!1783711) b!4344822))

(assert (= (or b!4344821 b!4344823) bm!302058))

(assert (= (or b!4344821 b!4344823) bm!302059))

(assert (= (or b!4344821 b!4344823) bm!302060))

(assert (= (and d!1282864 res!1783710) b!4344820))

(assert (= (and b!4344820 res!1783712) b!4344824))

(declare-fun m!4951343 () Bool)

(assert (=> bm!302060 m!4951343))

(declare-fun m!4951345 () Bool)

(assert (=> bm!302058 m!4951345))

(declare-fun m!4951347 () Bool)

(assert (=> b!4344823 m!4951347))

(declare-fun m!4951349 () Bool)

(assert (=> b!4344823 m!4951349))

(declare-fun m!4951351 () Bool)

(assert (=> b!4344823 m!4951351))

(declare-fun m!4951353 () Bool)

(assert (=> b!4344823 m!4951353))

(assert (=> b!4344823 m!4951349))

(declare-fun m!4951355 () Bool)

(assert (=> b!4344823 m!4951355))

(declare-fun m!4951357 () Bool)

(assert (=> b!4344823 m!4951357))

(declare-fun m!4951359 () Bool)

(assert (=> b!4344823 m!4951359))

(declare-fun m!4951361 () Bool)

(assert (=> b!4344823 m!4951361))

(assert (=> b!4344823 m!4951355))

(declare-fun m!4951363 () Bool)

(assert (=> b!4344823 m!4951363))

(declare-fun m!4951365 () Bool)

(assert (=> b!4344823 m!4951365))

(assert (=> b!4344823 m!4951359))

(declare-fun m!4951367 () Bool)

(assert (=> bm!302059 m!4951367))

(declare-fun m!4951369 () Bool)

(assert (=> b!4344820 m!4951369))

(assert (=> b!4344822 m!4951363))

(declare-fun m!4951371 () Bool)

(assert (=> b!4344824 m!4951371))

(declare-fun m!4951373 () Bool)

(assert (=> d!1282864 m!4951373))

(assert (=> d!1282864 m!4950899))

(assert (=> b!4344623 d!1282864))

(declare-fun bs!627161 () Bool)

(declare-fun b!4344835 () Bool)

(assert (= bs!627161 (and b!4344835 d!1282838)))

(declare-fun lambda!137885 () Int)

(assert (=> bs!627161 (not (= lambda!137885 lambda!137796))))

(declare-fun bs!627162 () Bool)

(assert (= bs!627162 (and b!4344835 d!1282864)))

(assert (=> bs!627162 (= (= lt!1558284 lt!1558603) (= lambda!137885 lambda!137884))))

(declare-fun bs!627163 () Bool)

(assert (= bs!627163 (and b!4344835 b!4344823)))

(assert (=> bs!627163 (= lambda!137885 lambda!137882)))

(declare-fun bs!627164 () Bool)

(assert (= bs!627164 (and b!4344835 b!4344821)))

(assert (=> bs!627164 (= lambda!137885 lambda!137881)))

(assert (=> bs!627163 (= (= lt!1558284 lt!1558604) (= lambda!137885 lambda!137883))))

(assert (=> b!4344835 true))

(declare-fun bs!627165 () Bool)

(declare-fun b!4344837 () Bool)

(assert (= bs!627165 (and b!4344837 d!1282838)))

(declare-fun lambda!137886 () Int)

(assert (=> bs!627165 (not (= lambda!137886 lambda!137796))))

(declare-fun bs!627166 () Bool)

(assert (= bs!627166 (and b!4344837 d!1282864)))

(assert (=> bs!627166 (= (= lt!1558284 lt!1558603) (= lambda!137886 lambda!137884))))

(declare-fun bs!627167 () Bool)

(assert (= bs!627167 (and b!4344837 b!4344821)))

(assert (=> bs!627167 (= lambda!137886 lambda!137881)))

(declare-fun bs!627168 () Bool)

(assert (= bs!627168 (and b!4344837 b!4344823)))

(assert (=> bs!627168 (= (= lt!1558284 lt!1558604) (= lambda!137886 lambda!137883))))

(assert (=> bs!627168 (= lambda!137886 lambda!137882)))

(declare-fun bs!627169 () Bool)

(assert (= bs!627169 (and b!4344837 b!4344835)))

(assert (=> bs!627169 (= lambda!137886 lambda!137885)))

(assert (=> b!4344837 true))

(declare-fun lambda!137887 () Int)

(declare-fun lt!1558632 () ListMap!2077)

(assert (=> b!4344837 (= (= lt!1558632 lt!1558284) (= lambda!137887 lambda!137886))))

(assert (=> bs!627165 (not (= lambda!137887 lambda!137796))))

(assert (=> bs!627166 (= (= lt!1558632 lt!1558603) (= lambda!137887 lambda!137884))))

(assert (=> bs!627167 (= (= lt!1558632 lt!1558284) (= lambda!137887 lambda!137881))))

(assert (=> bs!627168 (= (= lt!1558632 lt!1558604) (= lambda!137887 lambda!137883))))

(assert (=> bs!627168 (= (= lt!1558632 lt!1558284) (= lambda!137887 lambda!137882))))

(assert (=> bs!627169 (= (= lt!1558632 lt!1558284) (= lambda!137887 lambda!137885))))

(assert (=> b!4344837 true))

(declare-fun bs!627171 () Bool)

(declare-fun d!1282908 () Bool)

(assert (= bs!627171 (and d!1282908 b!4344837)))

(declare-fun lambda!137888 () Int)

(declare-fun lt!1558631 () ListMap!2077)

(assert (=> bs!627171 (= (= lt!1558631 lt!1558284) (= lambda!137888 lambda!137886))))

(assert (=> bs!627171 (= (= lt!1558631 lt!1558632) (= lambda!137888 lambda!137887))))

(declare-fun bs!627172 () Bool)

(assert (= bs!627172 (and d!1282908 d!1282838)))

(assert (=> bs!627172 (not (= lambda!137888 lambda!137796))))

(declare-fun bs!627173 () Bool)

(assert (= bs!627173 (and d!1282908 d!1282864)))

(assert (=> bs!627173 (= (= lt!1558631 lt!1558603) (= lambda!137888 lambda!137884))))

(declare-fun bs!627174 () Bool)

(assert (= bs!627174 (and d!1282908 b!4344821)))

(assert (=> bs!627174 (= (= lt!1558631 lt!1558284) (= lambda!137888 lambda!137881))))

(declare-fun bs!627175 () Bool)

(assert (= bs!627175 (and d!1282908 b!4344823)))

(assert (=> bs!627175 (= (= lt!1558631 lt!1558604) (= lambda!137888 lambda!137883))))

(assert (=> bs!627175 (= (= lt!1558631 lt!1558284) (= lambda!137888 lambda!137882))))

(declare-fun bs!627177 () Bool)

(assert (= bs!627177 (and d!1282908 b!4344835)))

(assert (=> bs!627177 (= (= lt!1558631 lt!1558284) (= lambda!137888 lambda!137885))))

(assert (=> d!1282908 true))

(declare-fun b!4344834 () Bool)

(declare-fun res!1783720 () Bool)

(declare-fun e!2703744 () Bool)

(assert (=> b!4344834 (=> (not res!1783720) (not e!2703744))))

(assert (=> b!4344834 (= res!1783720 (forall!9015 (toList!2834 lt!1558284) lambda!137888))))

(declare-fun e!2703743 () ListMap!2077)

(assert (=> b!4344835 (= e!2703743 lt!1558284)))

(declare-fun lt!1558627 () Unit!70287)

(declare-fun call!302067 () Unit!70287)

(assert (=> b!4344835 (= lt!1558627 call!302067)))

(declare-fun call!302066 () Bool)

(assert (=> b!4344835 call!302066))

(declare-fun lt!1558633 () Unit!70287)

(assert (=> b!4344835 (= lt!1558633 lt!1558627)))

(declare-fun call!302068 () Bool)

(assert (=> b!4344835 call!302068))

(declare-fun lt!1558636 () Unit!70287)

(declare-fun Unit!70339 () Unit!70287)

(assert (=> b!4344835 (= lt!1558636 Unit!70339)))

(declare-fun bm!302061 () Bool)

(assert (=> bm!302061 (= call!302067 (lemmaContainsAllItsOwnKeys!39 lt!1558284))))

(assert (=> d!1282908 e!2703744))

(declare-fun res!1783718 () Bool)

(assert (=> d!1282908 (=> (not res!1783718) (not e!2703744))))

(assert (=> d!1282908 (= res!1783718 (forall!9015 lt!1558285 lambda!137888))))

(assert (=> d!1282908 (= lt!1558631 e!2703743)))

(declare-fun c!738786 () Bool)

(assert (=> d!1282908 (= c!738786 ((_ is Nil!48771) lt!1558285))))

(assert (=> d!1282908 (noDuplicateKeys!425 lt!1558285)))

(assert (=> d!1282908 (= (addToMapMapFromBucket!133 lt!1558285 lt!1558284) lt!1558631)))

(declare-fun b!4344836 () Bool)

(declare-fun e!2703745 () Bool)

(assert (=> b!4344836 (= e!2703745 (forall!9015 (toList!2834 lt!1558284) lambda!137887))))

(declare-fun bm!302062 () Bool)

(assert (=> bm!302062 (= call!302068 (forall!9015 (toList!2834 lt!1558284) (ite c!738786 lambda!137885 lambda!137887)))))

(assert (=> b!4344837 (= e!2703743 lt!1558632)))

(declare-fun lt!1558619 () ListMap!2077)

(assert (=> b!4344837 (= lt!1558619 (+!522 lt!1558284 (h!54290 lt!1558285)))))

(assert (=> b!4344837 (= lt!1558632 (addToMapMapFromBucket!133 (t!355815 lt!1558285) (+!522 lt!1558284 (h!54290 lt!1558285))))))

(declare-fun lt!1558634 () Unit!70287)

(assert (=> b!4344837 (= lt!1558634 call!302067)))

(assert (=> b!4344837 call!302066))

(declare-fun lt!1558630 () Unit!70287)

(assert (=> b!4344837 (= lt!1558630 lt!1558634)))

(assert (=> b!4344837 (forall!9015 (toList!2834 lt!1558619) lambda!137887)))

(declare-fun lt!1558621 () Unit!70287)

(declare-fun Unit!70340 () Unit!70287)

(assert (=> b!4344837 (= lt!1558621 Unit!70340)))

(assert (=> b!4344837 (forall!9015 (t!355815 lt!1558285) lambda!137887)))

(declare-fun lt!1558616 () Unit!70287)

(declare-fun Unit!70341 () Unit!70287)

(assert (=> b!4344837 (= lt!1558616 Unit!70341)))

(declare-fun lt!1558618 () Unit!70287)

(declare-fun Unit!70342 () Unit!70287)

(assert (=> b!4344837 (= lt!1558618 Unit!70342)))

(declare-fun lt!1558626 () Unit!70287)

(assert (=> b!4344837 (= lt!1558626 (forallContained!1665 (toList!2834 lt!1558619) lambda!137887 (h!54290 lt!1558285)))))

(assert (=> b!4344837 (contains!10889 lt!1558619 (_1!27329 (h!54290 lt!1558285)))))

(declare-fun lt!1558629 () Unit!70287)

(declare-fun Unit!70343 () Unit!70287)

(assert (=> b!4344837 (= lt!1558629 Unit!70343)))

(assert (=> b!4344837 (contains!10889 lt!1558632 (_1!27329 (h!54290 lt!1558285)))))

(declare-fun lt!1558625 () Unit!70287)

(declare-fun Unit!70344 () Unit!70287)

(assert (=> b!4344837 (= lt!1558625 Unit!70344)))

(assert (=> b!4344837 (forall!9015 lt!1558285 lambda!137887)))

(declare-fun lt!1558617 () Unit!70287)

(declare-fun Unit!70345 () Unit!70287)

(assert (=> b!4344837 (= lt!1558617 Unit!70345)))

(assert (=> b!4344837 (forall!9015 (toList!2834 lt!1558619) lambda!137887)))

(declare-fun lt!1558628 () Unit!70287)

(declare-fun Unit!70346 () Unit!70287)

(assert (=> b!4344837 (= lt!1558628 Unit!70346)))

(declare-fun lt!1558624 () Unit!70287)

(declare-fun Unit!70347 () Unit!70287)

(assert (=> b!4344837 (= lt!1558624 Unit!70347)))

(declare-fun lt!1558620 () Unit!70287)

(assert (=> b!4344837 (= lt!1558620 (addForallContainsKeyThenBeforeAdding!39 lt!1558284 lt!1558632 (_1!27329 (h!54290 lt!1558285)) (_2!27329 (h!54290 lt!1558285))))))

(assert (=> b!4344837 call!302068))

(declare-fun lt!1558622 () Unit!70287)

(assert (=> b!4344837 (= lt!1558622 lt!1558620)))

(assert (=> b!4344837 (forall!9015 (toList!2834 lt!1558284) lambda!137887)))

(declare-fun lt!1558623 () Unit!70287)

(declare-fun Unit!70348 () Unit!70287)

(assert (=> b!4344837 (= lt!1558623 Unit!70348)))

(declare-fun res!1783719 () Bool)

(assert (=> b!4344837 (= res!1783719 (forall!9015 lt!1558285 lambda!137887))))

(assert (=> b!4344837 (=> (not res!1783719) (not e!2703745))))

(assert (=> b!4344837 e!2703745))

(declare-fun lt!1558635 () Unit!70287)

(declare-fun Unit!70349 () Unit!70287)

(assert (=> b!4344837 (= lt!1558635 Unit!70349)))

(declare-fun b!4344838 () Bool)

(assert (=> b!4344838 (= e!2703744 (invariantList!646 (toList!2834 lt!1558631)))))

(declare-fun bm!302063 () Bool)

(assert (=> bm!302063 (= call!302066 (forall!9015 (toList!2834 lt!1558284) (ite c!738786 lambda!137885 lambda!137886)))))

(assert (= (and d!1282908 c!738786) b!4344835))

(assert (= (and d!1282908 (not c!738786)) b!4344837))

(assert (= (and b!4344837 res!1783719) b!4344836))

(assert (= (or b!4344835 b!4344837) bm!302061))

(assert (= (or b!4344835 b!4344837) bm!302062))

(assert (= (or b!4344835 b!4344837) bm!302063))

(assert (= (and d!1282908 res!1783718) b!4344834))

(assert (= (and b!4344834 res!1783720) b!4344838))

(declare-fun m!4951387 () Bool)

(assert (=> bm!302063 m!4951387))

(assert (=> bm!302061 m!4951345))

(declare-fun m!4951389 () Bool)

(assert (=> b!4344837 m!4951389))

(declare-fun m!4951391 () Bool)

(assert (=> b!4344837 m!4951391))

(declare-fun m!4951393 () Bool)

(assert (=> b!4344837 m!4951393))

(declare-fun m!4951395 () Bool)

(assert (=> b!4344837 m!4951395))

(assert (=> b!4344837 m!4951391))

(declare-fun m!4951397 () Bool)

(assert (=> b!4344837 m!4951397))

(declare-fun m!4951399 () Bool)

(assert (=> b!4344837 m!4951399))

(declare-fun m!4951401 () Bool)

(assert (=> b!4344837 m!4951401))

(declare-fun m!4951403 () Bool)

(assert (=> b!4344837 m!4951403))

(assert (=> b!4344837 m!4951397))

(declare-fun m!4951405 () Bool)

(assert (=> b!4344837 m!4951405))

(declare-fun m!4951407 () Bool)

(assert (=> b!4344837 m!4951407))

(assert (=> b!4344837 m!4951401))

(declare-fun m!4951409 () Bool)

(assert (=> bm!302062 m!4951409))

(declare-fun m!4951411 () Bool)

(assert (=> b!4344834 m!4951411))

(assert (=> b!4344836 m!4951405))

(declare-fun m!4951413 () Bool)

(assert (=> b!4344838 m!4951413))

(declare-fun m!4951415 () Bool)

(assert (=> d!1282908 m!4951415))

(declare-fun m!4951417 () Bool)

(assert (=> d!1282908 m!4951417))

(assert (=> b!4344623 d!1282908))

(declare-fun bs!627178 () Bool)

(declare-fun b!4344844 () Bool)

(assert (= bs!627178 (and b!4344844 b!4344837)))

(declare-fun lambda!137889 () Int)

(assert (=> bs!627178 (= (= (+!522 lt!1558284 lt!1558270) lt!1558284) (= lambda!137889 lambda!137886))))

(assert (=> bs!627178 (= (= (+!522 lt!1558284 lt!1558270) lt!1558632) (= lambda!137889 lambda!137887))))

(declare-fun bs!627179 () Bool)

(assert (= bs!627179 (and b!4344844 d!1282838)))

(assert (=> bs!627179 (not (= lambda!137889 lambda!137796))))

(declare-fun bs!627180 () Bool)

(assert (= bs!627180 (and b!4344844 b!4344821)))

(assert (=> bs!627180 (= (= (+!522 lt!1558284 lt!1558270) lt!1558284) (= lambda!137889 lambda!137881))))

(declare-fun bs!627181 () Bool)

(assert (= bs!627181 (and b!4344844 b!4344823)))

(assert (=> bs!627181 (= (= (+!522 lt!1558284 lt!1558270) lt!1558604) (= lambda!137889 lambda!137883))))

(declare-fun bs!627182 () Bool)

(assert (= bs!627182 (and b!4344844 d!1282908)))

(assert (=> bs!627182 (= (= (+!522 lt!1558284 lt!1558270) lt!1558631) (= lambda!137889 lambda!137888))))

(declare-fun bs!627183 () Bool)

(assert (= bs!627183 (and b!4344844 d!1282864)))

(assert (=> bs!627183 (= (= (+!522 lt!1558284 lt!1558270) lt!1558603) (= lambda!137889 lambda!137884))))

(assert (=> bs!627181 (= (= (+!522 lt!1558284 lt!1558270) lt!1558284) (= lambda!137889 lambda!137882))))

(declare-fun bs!627184 () Bool)

(assert (= bs!627184 (and b!4344844 b!4344835)))

(assert (=> bs!627184 (= (= (+!522 lt!1558284 lt!1558270) lt!1558284) (= lambda!137889 lambda!137885))))

(assert (=> b!4344844 true))

(declare-fun bs!627185 () Bool)

(declare-fun b!4344846 () Bool)

(assert (= bs!627185 (and b!4344846 b!4344837)))

(declare-fun lambda!137890 () Int)

(assert (=> bs!627185 (= (= (+!522 lt!1558284 lt!1558270) lt!1558284) (= lambda!137890 lambda!137886))))

(assert (=> bs!627185 (= (= (+!522 lt!1558284 lt!1558270) lt!1558632) (= lambda!137890 lambda!137887))))

(declare-fun bs!627186 () Bool)

(assert (= bs!627186 (and b!4344846 d!1282838)))

(assert (=> bs!627186 (not (= lambda!137890 lambda!137796))))

(declare-fun bs!627187 () Bool)

(assert (= bs!627187 (and b!4344846 b!4344844)))

(assert (=> bs!627187 (= lambda!137890 lambda!137889)))

(declare-fun bs!627188 () Bool)

(assert (= bs!627188 (and b!4344846 b!4344821)))

(assert (=> bs!627188 (= (= (+!522 lt!1558284 lt!1558270) lt!1558284) (= lambda!137890 lambda!137881))))

(declare-fun bs!627189 () Bool)

(assert (= bs!627189 (and b!4344846 b!4344823)))

(assert (=> bs!627189 (= (= (+!522 lt!1558284 lt!1558270) lt!1558604) (= lambda!137890 lambda!137883))))

(declare-fun bs!627190 () Bool)

(assert (= bs!627190 (and b!4344846 d!1282908)))

(assert (=> bs!627190 (= (= (+!522 lt!1558284 lt!1558270) lt!1558631) (= lambda!137890 lambda!137888))))

(declare-fun bs!627191 () Bool)

(assert (= bs!627191 (and b!4344846 d!1282864)))

(assert (=> bs!627191 (= (= (+!522 lt!1558284 lt!1558270) lt!1558603) (= lambda!137890 lambda!137884))))

(assert (=> bs!627189 (= (= (+!522 lt!1558284 lt!1558270) lt!1558284) (= lambda!137890 lambda!137882))))

(declare-fun bs!627192 () Bool)

(assert (= bs!627192 (and b!4344846 b!4344835)))

(assert (=> bs!627192 (= (= (+!522 lt!1558284 lt!1558270) lt!1558284) (= lambda!137890 lambda!137885))))

(assert (=> b!4344846 true))

(declare-fun lt!1558653 () ListMap!2077)

(declare-fun lambda!137891 () Int)

(assert (=> bs!627185 (= (= lt!1558653 lt!1558284) (= lambda!137891 lambda!137886))))

(assert (=> bs!627185 (= (= lt!1558653 lt!1558632) (= lambda!137891 lambda!137887))))

(assert (=> bs!627186 (not (= lambda!137891 lambda!137796))))

(assert (=> b!4344846 (= (= lt!1558653 (+!522 lt!1558284 lt!1558270)) (= lambda!137891 lambda!137890))))

(assert (=> bs!627187 (= (= lt!1558653 (+!522 lt!1558284 lt!1558270)) (= lambda!137891 lambda!137889))))

(assert (=> bs!627188 (= (= lt!1558653 lt!1558284) (= lambda!137891 lambda!137881))))

(assert (=> bs!627189 (= (= lt!1558653 lt!1558604) (= lambda!137891 lambda!137883))))

(assert (=> bs!627190 (= (= lt!1558653 lt!1558631) (= lambda!137891 lambda!137888))))

(assert (=> bs!627191 (= (= lt!1558653 lt!1558603) (= lambda!137891 lambda!137884))))

(assert (=> bs!627189 (= (= lt!1558653 lt!1558284) (= lambda!137891 lambda!137882))))

(assert (=> bs!627192 (= (= lt!1558653 lt!1558284) (= lambda!137891 lambda!137885))))

(assert (=> b!4344846 true))

(declare-fun bs!627193 () Bool)

(declare-fun d!1282918 () Bool)

(assert (= bs!627193 (and d!1282918 b!4344837)))

(declare-fun lambda!137892 () Int)

(declare-fun lt!1558652 () ListMap!2077)

(assert (=> bs!627193 (= (= lt!1558652 lt!1558284) (= lambda!137892 lambda!137886))))

(assert (=> bs!627193 (= (= lt!1558652 lt!1558632) (= lambda!137892 lambda!137887))))

(declare-fun bs!627194 () Bool)

(assert (= bs!627194 (and d!1282918 d!1282838)))

(assert (=> bs!627194 (not (= lambda!137892 lambda!137796))))

(declare-fun bs!627195 () Bool)

(assert (= bs!627195 (and d!1282918 b!4344846)))

(assert (=> bs!627195 (= (= lt!1558652 (+!522 lt!1558284 lt!1558270)) (= lambda!137892 lambda!137890))))

(assert (=> bs!627195 (= (= lt!1558652 lt!1558653) (= lambda!137892 lambda!137891))))

(declare-fun bs!627196 () Bool)

(assert (= bs!627196 (and d!1282918 b!4344844)))

(assert (=> bs!627196 (= (= lt!1558652 (+!522 lt!1558284 lt!1558270)) (= lambda!137892 lambda!137889))))

(declare-fun bs!627197 () Bool)

(assert (= bs!627197 (and d!1282918 b!4344821)))

(assert (=> bs!627197 (= (= lt!1558652 lt!1558284) (= lambda!137892 lambda!137881))))

(declare-fun bs!627198 () Bool)

(assert (= bs!627198 (and d!1282918 b!4344823)))

(assert (=> bs!627198 (= (= lt!1558652 lt!1558604) (= lambda!137892 lambda!137883))))

(declare-fun bs!627199 () Bool)

(assert (= bs!627199 (and d!1282918 d!1282908)))

(assert (=> bs!627199 (= (= lt!1558652 lt!1558631) (= lambda!137892 lambda!137888))))

(declare-fun bs!627200 () Bool)

(assert (= bs!627200 (and d!1282918 d!1282864)))

(assert (=> bs!627200 (= (= lt!1558652 lt!1558603) (= lambda!137892 lambda!137884))))

(assert (=> bs!627198 (= (= lt!1558652 lt!1558284) (= lambda!137892 lambda!137882))))

(declare-fun bs!627201 () Bool)

(assert (= bs!627201 (and d!1282918 b!4344835)))

(assert (=> bs!627201 (= (= lt!1558652 lt!1558284) (= lambda!137892 lambda!137885))))

(assert (=> d!1282918 true))

(declare-fun b!4344843 () Bool)

(declare-fun res!1783727 () Bool)

(declare-fun e!2703751 () Bool)

(assert (=> b!4344843 (=> (not res!1783727) (not e!2703751))))

(assert (=> b!4344843 (= res!1783727 (forall!9015 (toList!2834 (+!522 lt!1558284 lt!1558270)) lambda!137892))))

(declare-fun e!2703750 () ListMap!2077)

(assert (=> b!4344844 (= e!2703750 (+!522 lt!1558284 lt!1558270))))

(declare-fun lt!1558648 () Unit!70287)

(declare-fun call!302070 () Unit!70287)

(assert (=> b!4344844 (= lt!1558648 call!302070)))

(declare-fun call!302069 () Bool)

(assert (=> b!4344844 call!302069))

(declare-fun lt!1558654 () Unit!70287)

(assert (=> b!4344844 (= lt!1558654 lt!1558648)))

(declare-fun call!302071 () Bool)

(assert (=> b!4344844 call!302071))

(declare-fun lt!1558657 () Unit!70287)

(declare-fun Unit!70350 () Unit!70287)

(assert (=> b!4344844 (= lt!1558657 Unit!70350)))

(declare-fun bm!302064 () Bool)

(assert (=> bm!302064 (= call!302070 (lemmaContainsAllItsOwnKeys!39 (+!522 lt!1558284 lt!1558270)))))

(assert (=> d!1282918 e!2703751))

(declare-fun res!1783725 () Bool)

(assert (=> d!1282918 (=> (not res!1783725) (not e!2703751))))

(assert (=> d!1282918 (= res!1783725 (forall!9015 lt!1558288 lambda!137892))))

(assert (=> d!1282918 (= lt!1558652 e!2703750)))

(declare-fun c!738787 () Bool)

(assert (=> d!1282918 (= c!738787 ((_ is Nil!48771) lt!1558288))))

(assert (=> d!1282918 (noDuplicateKeys!425 lt!1558288)))

(assert (=> d!1282918 (= (addToMapMapFromBucket!133 lt!1558288 (+!522 lt!1558284 lt!1558270)) lt!1558652)))

(declare-fun e!2703752 () Bool)

(declare-fun b!4344845 () Bool)

(assert (=> b!4344845 (= e!2703752 (forall!9015 (toList!2834 (+!522 lt!1558284 lt!1558270)) lambda!137891))))

(declare-fun bm!302065 () Bool)

(assert (=> bm!302065 (= call!302071 (forall!9015 (toList!2834 (+!522 lt!1558284 lt!1558270)) (ite c!738787 lambda!137889 lambda!137891)))))

(assert (=> b!4344846 (= e!2703750 lt!1558653)))

(declare-fun lt!1558640 () ListMap!2077)

(assert (=> b!4344846 (= lt!1558640 (+!522 (+!522 lt!1558284 lt!1558270) (h!54290 lt!1558288)))))

(assert (=> b!4344846 (= lt!1558653 (addToMapMapFromBucket!133 (t!355815 lt!1558288) (+!522 (+!522 lt!1558284 lt!1558270) (h!54290 lt!1558288))))))

(declare-fun lt!1558655 () Unit!70287)

(assert (=> b!4344846 (= lt!1558655 call!302070)))

(assert (=> b!4344846 call!302069))

(declare-fun lt!1558651 () Unit!70287)

(assert (=> b!4344846 (= lt!1558651 lt!1558655)))

(assert (=> b!4344846 (forall!9015 (toList!2834 lt!1558640) lambda!137891)))

(declare-fun lt!1558642 () Unit!70287)

(declare-fun Unit!70351 () Unit!70287)

(assert (=> b!4344846 (= lt!1558642 Unit!70351)))

(assert (=> b!4344846 (forall!9015 (t!355815 lt!1558288) lambda!137891)))

(declare-fun lt!1558637 () Unit!70287)

(declare-fun Unit!70352 () Unit!70287)

(assert (=> b!4344846 (= lt!1558637 Unit!70352)))

(declare-fun lt!1558639 () Unit!70287)

(declare-fun Unit!70353 () Unit!70287)

(assert (=> b!4344846 (= lt!1558639 Unit!70353)))

(declare-fun lt!1558647 () Unit!70287)

(assert (=> b!4344846 (= lt!1558647 (forallContained!1665 (toList!2834 lt!1558640) lambda!137891 (h!54290 lt!1558288)))))

(assert (=> b!4344846 (contains!10889 lt!1558640 (_1!27329 (h!54290 lt!1558288)))))

(declare-fun lt!1558650 () Unit!70287)

(declare-fun Unit!70354 () Unit!70287)

(assert (=> b!4344846 (= lt!1558650 Unit!70354)))

(assert (=> b!4344846 (contains!10889 lt!1558653 (_1!27329 (h!54290 lt!1558288)))))

(declare-fun lt!1558646 () Unit!70287)

(declare-fun Unit!70355 () Unit!70287)

(assert (=> b!4344846 (= lt!1558646 Unit!70355)))

(assert (=> b!4344846 (forall!9015 lt!1558288 lambda!137891)))

(declare-fun lt!1558638 () Unit!70287)

(declare-fun Unit!70356 () Unit!70287)

(assert (=> b!4344846 (= lt!1558638 Unit!70356)))

(assert (=> b!4344846 (forall!9015 (toList!2834 lt!1558640) lambda!137891)))

(declare-fun lt!1558649 () Unit!70287)

(declare-fun Unit!70357 () Unit!70287)

(assert (=> b!4344846 (= lt!1558649 Unit!70357)))

(declare-fun lt!1558645 () Unit!70287)

(declare-fun Unit!70358 () Unit!70287)

(assert (=> b!4344846 (= lt!1558645 Unit!70358)))

(declare-fun lt!1558641 () Unit!70287)

(assert (=> b!4344846 (= lt!1558641 (addForallContainsKeyThenBeforeAdding!39 (+!522 lt!1558284 lt!1558270) lt!1558653 (_1!27329 (h!54290 lt!1558288)) (_2!27329 (h!54290 lt!1558288))))))

(assert (=> b!4344846 call!302071))

(declare-fun lt!1558643 () Unit!70287)

(assert (=> b!4344846 (= lt!1558643 lt!1558641)))

(assert (=> b!4344846 (forall!9015 (toList!2834 (+!522 lt!1558284 lt!1558270)) lambda!137891)))

(declare-fun lt!1558644 () Unit!70287)

(declare-fun Unit!70359 () Unit!70287)

(assert (=> b!4344846 (= lt!1558644 Unit!70359)))

(declare-fun res!1783726 () Bool)

(assert (=> b!4344846 (= res!1783726 (forall!9015 lt!1558288 lambda!137891))))

(assert (=> b!4344846 (=> (not res!1783726) (not e!2703752))))

(assert (=> b!4344846 e!2703752))

(declare-fun lt!1558656 () Unit!70287)

(declare-fun Unit!70360 () Unit!70287)

(assert (=> b!4344846 (= lt!1558656 Unit!70360)))

(declare-fun b!4344847 () Bool)

(assert (=> b!4344847 (= e!2703751 (invariantList!646 (toList!2834 lt!1558652)))))

(declare-fun bm!302066 () Bool)

(assert (=> bm!302066 (= call!302069 (forall!9015 (toList!2834 (+!522 lt!1558284 lt!1558270)) (ite c!738787 lambda!137889 lambda!137890)))))

(assert (= (and d!1282918 c!738787) b!4344844))

(assert (= (and d!1282918 (not c!738787)) b!4344846))

(assert (= (and b!4344846 res!1783726) b!4344845))

(assert (= (or b!4344844 b!4344846) bm!302064))

(assert (= (or b!4344844 b!4344846) bm!302065))

(assert (= (or b!4344844 b!4344846) bm!302066))

(assert (= (and d!1282918 res!1783725) b!4344843))

(assert (= (and b!4344843 res!1783727) b!4344847))

(declare-fun m!4951429 () Bool)

(assert (=> bm!302066 m!4951429))

(assert (=> bm!302064 m!4950911))

(declare-fun m!4951431 () Bool)

(assert (=> bm!302064 m!4951431))

(declare-fun m!4951433 () Bool)

(assert (=> b!4344846 m!4951433))

(declare-fun m!4951435 () Bool)

(assert (=> b!4344846 m!4951435))

(declare-fun m!4951437 () Bool)

(assert (=> b!4344846 m!4951437))

(assert (=> b!4344846 m!4950911))

(declare-fun m!4951439 () Bool)

(assert (=> b!4344846 m!4951439))

(assert (=> b!4344846 m!4951435))

(declare-fun m!4951441 () Bool)

(assert (=> b!4344846 m!4951441))

(declare-fun m!4951443 () Bool)

(assert (=> b!4344846 m!4951443))

(declare-fun m!4951445 () Bool)

(assert (=> b!4344846 m!4951445))

(declare-fun m!4951447 () Bool)

(assert (=> b!4344846 m!4951447))

(assert (=> b!4344846 m!4951441))

(declare-fun m!4951449 () Bool)

(assert (=> b!4344846 m!4951449))

(declare-fun m!4951451 () Bool)

(assert (=> b!4344846 m!4951451))

(assert (=> b!4344846 m!4950911))

(assert (=> b!4344846 m!4951445))

(declare-fun m!4951453 () Bool)

(assert (=> bm!302065 m!4951453))

(declare-fun m!4951455 () Bool)

(assert (=> b!4344843 m!4951455))

(assert (=> b!4344845 m!4951449))

(declare-fun m!4951457 () Bool)

(assert (=> b!4344847 m!4951457))

(declare-fun m!4951459 () Bool)

(assert (=> d!1282918 m!4951459))

(declare-fun m!4951461 () Bool)

(assert (=> d!1282918 m!4951461))

(assert (=> b!4344623 d!1282918))

(declare-fun d!1282924 () Bool)

(assert (=> d!1282924 (= (eq!215 lt!1558277 lt!1558279) (= (content!7644 (toList!2834 lt!1558277)) (content!7644 (toList!2834 lt!1558279))))))

(declare-fun bs!627202 () Bool)

(assert (= bs!627202 d!1282924))

(declare-fun m!4951463 () Bool)

(assert (=> bs!627202 m!4951463))

(declare-fun m!4951465 () Bool)

(assert (=> bs!627202 m!4951465))

(assert (=> b!4344623 d!1282924))

(declare-fun bs!627203 () Bool)

(declare-fun d!1282926 () Bool)

(assert (= bs!627203 (and d!1282926 start!419264)))

(declare-fun lambda!137893 () Int)

(assert (=> bs!627203 (= lambda!137893 lambda!137793)))

(declare-fun bs!627204 () Bool)

(assert (= bs!627204 (and d!1282926 d!1282846)))

(assert (=> bs!627204 (= lambda!137893 lambda!137799)))

(declare-fun bs!627205 () Bool)

(assert (= bs!627205 (and d!1282926 d!1282860)))

(assert (=> bs!627205 (= lambda!137893 lambda!137832)))

(declare-fun lt!1558666 () ListMap!2077)

(assert (=> d!1282926 (invariantList!646 (toList!2834 lt!1558666))))

(declare-fun e!2703766 () ListMap!2077)

(assert (=> d!1282926 (= lt!1558666 e!2703766)))

(declare-fun c!738794 () Bool)

(assert (=> d!1282926 (= c!738794 ((_ is Cons!48772) (t!355816 (toList!2833 lm!1707))))))

(assert (=> d!1282926 (forall!9013 (t!355816 (toList!2833 lm!1707)) lambda!137893)))

(assert (=> d!1282926 (= (extractMap!484 (t!355816 (toList!2833 lm!1707))) lt!1558666)))

(declare-fun b!4344867 () Bool)

(assert (=> b!4344867 (= e!2703766 (addToMapMapFromBucket!133 (_2!27330 (h!54291 (t!355816 (toList!2833 lm!1707)))) (extractMap!484 (t!355816 (t!355816 (toList!2833 lm!1707))))))))

(declare-fun b!4344868 () Bool)

(assert (=> b!4344868 (= e!2703766 (ListMap!2078 Nil!48771))))

(assert (= (and d!1282926 c!738794) b!4344867))

(assert (= (and d!1282926 (not c!738794)) b!4344868))

(declare-fun m!4951467 () Bool)

(assert (=> d!1282926 m!4951467))

(declare-fun m!4951469 () Bool)

(assert (=> d!1282926 m!4951469))

(declare-fun m!4951471 () Bool)

(assert (=> b!4344867 m!4951471))

(assert (=> b!4344867 m!4951471))

(declare-fun m!4951473 () Bool)

(assert (=> b!4344867 m!4951473))

(assert (=> b!4344623 d!1282926))

(declare-fun bs!627206 () Bool)

(declare-fun b!4344872 () Bool)

(assert (= bs!627206 (and b!4344872 b!4344837)))

(declare-fun lambda!137894 () Int)

(assert (=> bs!627206 (= lambda!137894 lambda!137886)))

(assert (=> bs!627206 (= (= lt!1558284 lt!1558632) (= lambda!137894 lambda!137887))))

(declare-fun bs!627207 () Bool)

(assert (= bs!627207 (and b!4344872 d!1282838)))

(assert (=> bs!627207 (not (= lambda!137894 lambda!137796))))

(declare-fun bs!627208 () Bool)

(assert (= bs!627208 (and b!4344872 b!4344846)))

(assert (=> bs!627208 (= (= lt!1558284 (+!522 lt!1558284 lt!1558270)) (= lambda!137894 lambda!137890))))

(assert (=> bs!627208 (= (= lt!1558284 lt!1558653) (= lambda!137894 lambda!137891))))

(declare-fun bs!627209 () Bool)

(assert (= bs!627209 (and b!4344872 d!1282918)))

(assert (=> bs!627209 (= (= lt!1558284 lt!1558652) (= lambda!137894 lambda!137892))))

(declare-fun bs!627210 () Bool)

(assert (= bs!627210 (and b!4344872 b!4344844)))

(assert (=> bs!627210 (= (= lt!1558284 (+!522 lt!1558284 lt!1558270)) (= lambda!137894 lambda!137889))))

(declare-fun bs!627211 () Bool)

(assert (= bs!627211 (and b!4344872 b!4344821)))

(assert (=> bs!627211 (= lambda!137894 lambda!137881)))

(declare-fun bs!627212 () Bool)

(assert (= bs!627212 (and b!4344872 b!4344823)))

(assert (=> bs!627212 (= (= lt!1558284 lt!1558604) (= lambda!137894 lambda!137883))))

(declare-fun bs!627213 () Bool)

(assert (= bs!627213 (and b!4344872 d!1282908)))

(assert (=> bs!627213 (= (= lt!1558284 lt!1558631) (= lambda!137894 lambda!137888))))

(declare-fun bs!627214 () Bool)

(assert (= bs!627214 (and b!4344872 d!1282864)))

(assert (=> bs!627214 (= (= lt!1558284 lt!1558603) (= lambda!137894 lambda!137884))))

(assert (=> bs!627212 (= lambda!137894 lambda!137882)))

(declare-fun bs!627215 () Bool)

(assert (= bs!627215 (and b!4344872 b!4344835)))

(assert (=> bs!627215 (= lambda!137894 lambda!137885)))

(assert (=> b!4344872 true))

(declare-fun bs!627216 () Bool)

(declare-fun b!4344874 () Bool)

(assert (= bs!627216 (and b!4344874 b!4344872)))

(declare-fun lambda!137895 () Int)

(assert (=> bs!627216 (= lambda!137895 lambda!137894)))

(declare-fun bs!627217 () Bool)

(assert (= bs!627217 (and b!4344874 b!4344837)))

(assert (=> bs!627217 (= lambda!137895 lambda!137886)))

(assert (=> bs!627217 (= (= lt!1558284 lt!1558632) (= lambda!137895 lambda!137887))))

(declare-fun bs!627218 () Bool)

(assert (= bs!627218 (and b!4344874 d!1282838)))

(assert (=> bs!627218 (not (= lambda!137895 lambda!137796))))

(declare-fun bs!627219 () Bool)

(assert (= bs!627219 (and b!4344874 b!4344846)))

(assert (=> bs!627219 (= (= lt!1558284 (+!522 lt!1558284 lt!1558270)) (= lambda!137895 lambda!137890))))

(assert (=> bs!627219 (= (= lt!1558284 lt!1558653) (= lambda!137895 lambda!137891))))

(declare-fun bs!627220 () Bool)

(assert (= bs!627220 (and b!4344874 d!1282918)))

(assert (=> bs!627220 (= (= lt!1558284 lt!1558652) (= lambda!137895 lambda!137892))))

(declare-fun bs!627221 () Bool)

(assert (= bs!627221 (and b!4344874 b!4344844)))

(assert (=> bs!627221 (= (= lt!1558284 (+!522 lt!1558284 lt!1558270)) (= lambda!137895 lambda!137889))))

(declare-fun bs!627222 () Bool)

(assert (= bs!627222 (and b!4344874 b!4344821)))

(assert (=> bs!627222 (= lambda!137895 lambda!137881)))

(declare-fun bs!627223 () Bool)

(assert (= bs!627223 (and b!4344874 b!4344823)))

(assert (=> bs!627223 (= (= lt!1558284 lt!1558604) (= lambda!137895 lambda!137883))))

(declare-fun bs!627224 () Bool)

(assert (= bs!627224 (and b!4344874 d!1282908)))

(assert (=> bs!627224 (= (= lt!1558284 lt!1558631) (= lambda!137895 lambda!137888))))

(declare-fun bs!627225 () Bool)

(assert (= bs!627225 (and b!4344874 d!1282864)))

(assert (=> bs!627225 (= (= lt!1558284 lt!1558603) (= lambda!137895 lambda!137884))))

(assert (=> bs!627223 (= lambda!137895 lambda!137882)))

(declare-fun bs!627226 () Bool)

(assert (= bs!627226 (and b!4344874 b!4344835)))

(assert (=> bs!627226 (= lambda!137895 lambda!137885)))

(assert (=> b!4344874 true))

(declare-fun lt!1558684 () ListMap!2077)

(declare-fun lambda!137896 () Int)

(assert (=> bs!627216 (= (= lt!1558684 lt!1558284) (= lambda!137896 lambda!137894))))

(assert (=> bs!627217 (= (= lt!1558684 lt!1558284) (= lambda!137896 lambda!137886))))

(assert (=> bs!627217 (= (= lt!1558684 lt!1558632) (= lambda!137896 lambda!137887))))

(assert (=> bs!627218 (not (= lambda!137896 lambda!137796))))

(assert (=> bs!627219 (= (= lt!1558684 (+!522 lt!1558284 lt!1558270)) (= lambda!137896 lambda!137890))))

(assert (=> bs!627219 (= (= lt!1558684 lt!1558653) (= lambda!137896 lambda!137891))))

(assert (=> b!4344874 (= (= lt!1558684 lt!1558284) (= lambda!137896 lambda!137895))))

(assert (=> bs!627220 (= (= lt!1558684 lt!1558652) (= lambda!137896 lambda!137892))))

(assert (=> bs!627221 (= (= lt!1558684 (+!522 lt!1558284 lt!1558270)) (= lambda!137896 lambda!137889))))

(assert (=> bs!627222 (= (= lt!1558684 lt!1558284) (= lambda!137896 lambda!137881))))

(assert (=> bs!627223 (= (= lt!1558684 lt!1558604) (= lambda!137896 lambda!137883))))

(assert (=> bs!627224 (= (= lt!1558684 lt!1558631) (= lambda!137896 lambda!137888))))

(assert (=> bs!627225 (= (= lt!1558684 lt!1558603) (= lambda!137896 lambda!137884))))

(assert (=> bs!627223 (= (= lt!1558684 lt!1558284) (= lambda!137896 lambda!137882))))

(assert (=> bs!627226 (= (= lt!1558684 lt!1558284) (= lambda!137896 lambda!137885))))

(assert (=> b!4344874 true))

(declare-fun bs!627227 () Bool)

(declare-fun d!1282928 () Bool)

(assert (= bs!627227 (and d!1282928 b!4344874)))

(declare-fun lambda!137899 () Int)

(declare-fun lt!1558683 () ListMap!2077)

(assert (=> bs!627227 (= (= lt!1558683 lt!1558684) (= lambda!137899 lambda!137896))))

(declare-fun bs!627228 () Bool)

(assert (= bs!627228 (and d!1282928 b!4344872)))

(assert (=> bs!627228 (= (= lt!1558683 lt!1558284) (= lambda!137899 lambda!137894))))

(declare-fun bs!627229 () Bool)

(assert (= bs!627229 (and d!1282928 b!4344837)))

(assert (=> bs!627229 (= (= lt!1558683 lt!1558284) (= lambda!137899 lambda!137886))))

(assert (=> bs!627229 (= (= lt!1558683 lt!1558632) (= lambda!137899 lambda!137887))))

(declare-fun bs!627230 () Bool)

(assert (= bs!627230 (and d!1282928 d!1282838)))

(assert (=> bs!627230 (not (= lambda!137899 lambda!137796))))

(declare-fun bs!627231 () Bool)

(assert (= bs!627231 (and d!1282928 b!4344846)))

(assert (=> bs!627231 (= (= lt!1558683 (+!522 lt!1558284 lt!1558270)) (= lambda!137899 lambda!137890))))

(assert (=> bs!627231 (= (= lt!1558683 lt!1558653) (= lambda!137899 lambda!137891))))

(assert (=> bs!627227 (= (= lt!1558683 lt!1558284) (= lambda!137899 lambda!137895))))

(declare-fun bs!627232 () Bool)

(assert (= bs!627232 (and d!1282928 d!1282918)))

(assert (=> bs!627232 (= (= lt!1558683 lt!1558652) (= lambda!137899 lambda!137892))))

(declare-fun bs!627233 () Bool)

(assert (= bs!627233 (and d!1282928 b!4344844)))

(assert (=> bs!627233 (= (= lt!1558683 (+!522 lt!1558284 lt!1558270)) (= lambda!137899 lambda!137889))))

(declare-fun bs!627235 () Bool)

(assert (= bs!627235 (and d!1282928 b!4344821)))

(assert (=> bs!627235 (= (= lt!1558683 lt!1558284) (= lambda!137899 lambda!137881))))

(declare-fun bs!627236 () Bool)

(assert (= bs!627236 (and d!1282928 b!4344823)))

(assert (=> bs!627236 (= (= lt!1558683 lt!1558604) (= lambda!137899 lambda!137883))))

(declare-fun bs!627238 () Bool)

(assert (= bs!627238 (and d!1282928 d!1282908)))

(assert (=> bs!627238 (= (= lt!1558683 lt!1558631) (= lambda!137899 lambda!137888))))

(declare-fun bs!627240 () Bool)

(assert (= bs!627240 (and d!1282928 d!1282864)))

(assert (=> bs!627240 (= (= lt!1558683 lt!1558603) (= lambda!137899 lambda!137884))))

(assert (=> bs!627236 (= (= lt!1558683 lt!1558284) (= lambda!137899 lambda!137882))))

(declare-fun bs!627243 () Bool)

(assert (= bs!627243 (and d!1282928 b!4344835)))

(assert (=> bs!627243 (= (= lt!1558683 lt!1558284) (= lambda!137899 lambda!137885))))

(assert (=> d!1282928 true))

(declare-fun b!4344871 () Bool)

(declare-fun res!1783739 () Bool)

(declare-fun e!2703770 () Bool)

(assert (=> b!4344871 (=> (not res!1783739) (not e!2703770))))

(assert (=> b!4344871 (= res!1783739 (forall!9015 (toList!2834 lt!1558284) lambda!137899))))

(declare-fun e!2703769 () ListMap!2077)

(assert (=> b!4344872 (= e!2703769 lt!1558284)))

(declare-fun lt!1558679 () Unit!70287)

(declare-fun call!302073 () Unit!70287)

(assert (=> b!4344872 (= lt!1558679 call!302073)))

(declare-fun call!302072 () Bool)

(assert (=> b!4344872 call!302072))

(declare-fun lt!1558685 () Unit!70287)

(assert (=> b!4344872 (= lt!1558685 lt!1558679)))

(declare-fun call!302074 () Bool)

(assert (=> b!4344872 call!302074))

(declare-fun lt!1558688 () Unit!70287)

(declare-fun Unit!70371 () Unit!70287)

(assert (=> b!4344872 (= lt!1558688 Unit!70371)))

(declare-fun bm!302067 () Bool)

(assert (=> bm!302067 (= call!302073 (lemmaContainsAllItsOwnKeys!39 lt!1558284))))

(assert (=> d!1282928 e!2703770))

(declare-fun res!1783735 () Bool)

(assert (=> d!1282928 (=> (not res!1783735) (not e!2703770))))

(assert (=> d!1282928 (= res!1783735 (forall!9015 lt!1558288 lambda!137899))))

(assert (=> d!1282928 (= lt!1558683 e!2703769)))

(declare-fun c!738795 () Bool)

(assert (=> d!1282928 (= c!738795 ((_ is Nil!48771) lt!1558288))))

(assert (=> d!1282928 (noDuplicateKeys!425 lt!1558288)))

(assert (=> d!1282928 (= (addToMapMapFromBucket!133 lt!1558288 lt!1558284) lt!1558683)))

(declare-fun b!4344873 () Bool)

(declare-fun e!2703771 () Bool)

(assert (=> b!4344873 (= e!2703771 (forall!9015 (toList!2834 lt!1558284) lambda!137896))))

(declare-fun bm!302068 () Bool)

(assert (=> bm!302068 (= call!302074 (forall!9015 (toList!2834 lt!1558284) (ite c!738795 lambda!137894 lambda!137896)))))

(assert (=> b!4344874 (= e!2703769 lt!1558684)))

(declare-fun lt!1558670 () ListMap!2077)

(assert (=> b!4344874 (= lt!1558670 (+!522 lt!1558284 (h!54290 lt!1558288)))))

(assert (=> b!4344874 (= lt!1558684 (addToMapMapFromBucket!133 (t!355815 lt!1558288) (+!522 lt!1558284 (h!54290 lt!1558288))))))

(declare-fun lt!1558686 () Unit!70287)

(assert (=> b!4344874 (= lt!1558686 call!302073)))

(assert (=> b!4344874 call!302072))

(declare-fun lt!1558682 () Unit!70287)

(assert (=> b!4344874 (= lt!1558682 lt!1558686)))

(assert (=> b!4344874 (forall!9015 (toList!2834 lt!1558670) lambda!137896)))

(declare-fun lt!1558672 () Unit!70287)

(declare-fun Unit!70373 () Unit!70287)

(assert (=> b!4344874 (= lt!1558672 Unit!70373)))

(assert (=> b!4344874 (forall!9015 (t!355815 lt!1558288) lambda!137896)))

(declare-fun lt!1558667 () Unit!70287)

(declare-fun Unit!70374 () Unit!70287)

(assert (=> b!4344874 (= lt!1558667 Unit!70374)))

(declare-fun lt!1558669 () Unit!70287)

(declare-fun Unit!70375 () Unit!70287)

(assert (=> b!4344874 (= lt!1558669 Unit!70375)))

(declare-fun lt!1558678 () Unit!70287)

(assert (=> b!4344874 (= lt!1558678 (forallContained!1665 (toList!2834 lt!1558670) lambda!137896 (h!54290 lt!1558288)))))

(assert (=> b!4344874 (contains!10889 lt!1558670 (_1!27329 (h!54290 lt!1558288)))))

(declare-fun lt!1558681 () Unit!70287)

(declare-fun Unit!70376 () Unit!70287)

(assert (=> b!4344874 (= lt!1558681 Unit!70376)))

(assert (=> b!4344874 (contains!10889 lt!1558684 (_1!27329 (h!54290 lt!1558288)))))

(declare-fun lt!1558677 () Unit!70287)

(declare-fun Unit!70377 () Unit!70287)

(assert (=> b!4344874 (= lt!1558677 Unit!70377)))

(assert (=> b!4344874 (forall!9015 lt!1558288 lambda!137896)))

(declare-fun lt!1558668 () Unit!70287)

(declare-fun Unit!70378 () Unit!70287)

(assert (=> b!4344874 (= lt!1558668 Unit!70378)))

(assert (=> b!4344874 (forall!9015 (toList!2834 lt!1558670) lambda!137896)))

(declare-fun lt!1558680 () Unit!70287)

(declare-fun Unit!70379 () Unit!70287)

(assert (=> b!4344874 (= lt!1558680 Unit!70379)))

(declare-fun lt!1558676 () Unit!70287)

(declare-fun Unit!70380 () Unit!70287)

(assert (=> b!4344874 (= lt!1558676 Unit!70380)))

(declare-fun lt!1558671 () Unit!70287)

(assert (=> b!4344874 (= lt!1558671 (addForallContainsKeyThenBeforeAdding!39 lt!1558284 lt!1558684 (_1!27329 (h!54290 lt!1558288)) (_2!27329 (h!54290 lt!1558288))))))

(assert (=> b!4344874 call!302074))

(declare-fun lt!1558674 () Unit!70287)

(assert (=> b!4344874 (= lt!1558674 lt!1558671)))

(assert (=> b!4344874 (forall!9015 (toList!2834 lt!1558284) lambda!137896)))

(declare-fun lt!1558675 () Unit!70287)

(declare-fun Unit!70381 () Unit!70287)

(assert (=> b!4344874 (= lt!1558675 Unit!70381)))

(declare-fun res!1783738 () Bool)

(assert (=> b!4344874 (= res!1783738 (forall!9015 lt!1558288 lambda!137896))))

(assert (=> b!4344874 (=> (not res!1783738) (not e!2703771))))

(assert (=> b!4344874 e!2703771))

(declare-fun lt!1558687 () Unit!70287)

(declare-fun Unit!70382 () Unit!70287)

(assert (=> b!4344874 (= lt!1558687 Unit!70382)))

(declare-fun b!4344875 () Bool)

(assert (=> b!4344875 (= e!2703770 (invariantList!646 (toList!2834 lt!1558683)))))

(declare-fun bm!302069 () Bool)

(assert (=> bm!302069 (= call!302072 (forall!9015 (toList!2834 lt!1558284) (ite c!738795 lambda!137894 lambda!137895)))))

(assert (= (and d!1282928 c!738795) b!4344872))

(assert (= (and d!1282928 (not c!738795)) b!4344874))

(assert (= (and b!4344874 res!1783738) b!4344873))

(assert (= (or b!4344872 b!4344874) bm!302067))

(assert (= (or b!4344872 b!4344874) bm!302068))

(assert (= (or b!4344872 b!4344874) bm!302069))

(assert (= (and d!1282928 res!1783735) b!4344871))

(assert (= (and b!4344871 res!1783739) b!4344875))

(declare-fun m!4951495 () Bool)

(assert (=> bm!302069 m!4951495))

(assert (=> bm!302067 m!4951345))

(declare-fun m!4951503 () Bool)

(assert (=> b!4344874 m!4951503))

(declare-fun m!4951505 () Bool)

(assert (=> b!4344874 m!4951505))

(declare-fun m!4951507 () Bool)

(assert (=> b!4344874 m!4951507))

(declare-fun m!4951511 () Bool)

(assert (=> b!4344874 m!4951511))

(assert (=> b!4344874 m!4951505))

(declare-fun m!4951515 () Bool)

(assert (=> b!4344874 m!4951515))

(declare-fun m!4951517 () Bool)

(assert (=> b!4344874 m!4951517))

(declare-fun m!4951519 () Bool)

(assert (=> b!4344874 m!4951519))

(declare-fun m!4951521 () Bool)

(assert (=> b!4344874 m!4951521))

(assert (=> b!4344874 m!4951515))

(declare-fun m!4951523 () Bool)

(assert (=> b!4344874 m!4951523))

(declare-fun m!4951525 () Bool)

(assert (=> b!4344874 m!4951525))

(assert (=> b!4344874 m!4951519))

(declare-fun m!4951527 () Bool)

(assert (=> bm!302068 m!4951527))

(declare-fun m!4951529 () Bool)

(assert (=> b!4344871 m!4951529))

(assert (=> b!4344873 m!4951523))

(declare-fun m!4951531 () Bool)

(assert (=> b!4344875 m!4951531))

(declare-fun m!4951533 () Bool)

(assert (=> d!1282928 m!4951533))

(assert (=> d!1282928 m!4951461))

(assert (=> b!4344623 d!1282928))

(declare-fun d!1282938 () Bool)

(declare-fun e!2703788 () Bool)

(assert (=> d!1282938 e!2703788))

(declare-fun res!1783755 () Bool)

(assert (=> d!1282938 (=> (not res!1783755) (not e!2703788))))

(declare-fun lt!1558718 () ListMap!2077)

(assert (=> d!1282938 (= res!1783755 (contains!10889 lt!1558718 (_1!27329 lt!1558270)))))

(declare-fun lt!1558717 () List!48895)

(assert (=> d!1282938 (= lt!1558718 (ListMap!2078 lt!1558717))))

(declare-fun lt!1558719 () Unit!70287)

(declare-fun lt!1558716 () Unit!70287)

(assert (=> d!1282938 (= lt!1558719 lt!1558716)))

(assert (=> d!1282938 (= (getValueByKey!389 lt!1558717 (_1!27329 lt!1558270)) (Some!10402 (_2!27329 lt!1558270)))))

(declare-fun lemmaContainsTupThenGetReturnValue!174 (List!48895 K!10130 V!10376) Unit!70287)

(assert (=> d!1282938 (= lt!1558716 (lemmaContainsTupThenGetReturnValue!174 lt!1558717 (_1!27329 lt!1558270) (_2!27329 lt!1558270)))))

(declare-fun insertNoDuplicatedKeys!79 (List!48895 K!10130 V!10376) List!48895)

(assert (=> d!1282938 (= lt!1558717 (insertNoDuplicatedKeys!79 (toList!2834 lt!1558287) (_1!27329 lt!1558270) (_2!27329 lt!1558270)))))

(assert (=> d!1282938 (= (+!522 lt!1558287 lt!1558270) lt!1558718)))

(declare-fun b!4344902 () Bool)

(declare-fun res!1783756 () Bool)

(assert (=> b!4344902 (=> (not res!1783756) (not e!2703788))))

(assert (=> b!4344902 (= res!1783756 (= (getValueByKey!389 (toList!2834 lt!1558718) (_1!27329 lt!1558270)) (Some!10402 (_2!27329 lt!1558270))))))

(declare-fun b!4344903 () Bool)

(declare-fun contains!10894 (List!48895 tuple2!48070) Bool)

(assert (=> b!4344903 (= e!2703788 (contains!10894 (toList!2834 lt!1558718) lt!1558270))))

(assert (= (and d!1282938 res!1783755) b!4344902))

(assert (= (and b!4344902 res!1783756) b!4344903))

(declare-fun m!4951563 () Bool)

(assert (=> d!1282938 m!4951563))

(declare-fun m!4951565 () Bool)

(assert (=> d!1282938 m!4951565))

(declare-fun m!4951567 () Bool)

(assert (=> d!1282938 m!4951567))

(declare-fun m!4951569 () Bool)

(assert (=> d!1282938 m!4951569))

(declare-fun m!4951571 () Bool)

(assert (=> b!4344902 m!4951571))

(declare-fun m!4951573 () Bool)

(assert (=> b!4344903 m!4951573))

(assert (=> b!4344623 d!1282938))

(declare-fun d!1282948 () Bool)

(declare-fun e!2703799 () Bool)

(assert (=> d!1282948 e!2703799))

(declare-fun res!1783759 () Bool)

(assert (=> d!1282948 (=> res!1783759 e!2703799)))

(declare-fun lt!1558728 () Bool)

(assert (=> d!1282948 (= res!1783759 (not lt!1558728))))

(declare-fun lt!1558730 () Bool)

(assert (=> d!1282948 (= lt!1558728 lt!1558730)))

(declare-fun lt!1558729 () Unit!70287)

(declare-fun e!2703800 () Unit!70287)

(assert (=> d!1282948 (= lt!1558729 e!2703800)))

(declare-fun c!738802 () Bool)

(assert (=> d!1282948 (= c!738802 lt!1558730)))

(declare-fun containsKey!590 (List!48896 (_ BitVec 64)) Bool)

(assert (=> d!1282948 (= lt!1558730 (containsKey!590 (toList!2833 lt!1558276) hash!377))))

(assert (=> d!1282948 (= (contains!10888 lt!1558276 hash!377) lt!1558728)))

(declare-fun b!4344924 () Bool)

(declare-fun lt!1558731 () Unit!70287)

(assert (=> b!4344924 (= e!2703800 lt!1558731)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!304 (List!48896 (_ BitVec 64)) Unit!70287)

(assert (=> b!4344924 (= lt!1558731 (lemmaContainsKeyImpliesGetValueByKeyDefined!304 (toList!2833 lt!1558276) hash!377))))

(declare-fun isDefined!7701 (Option!10404) Bool)

(assert (=> b!4344924 (isDefined!7701 (getValueByKey!390 (toList!2833 lt!1558276) hash!377))))

(declare-fun b!4344925 () Bool)

(declare-fun Unit!70384 () Unit!70287)

(assert (=> b!4344925 (= e!2703800 Unit!70384)))

(declare-fun b!4344926 () Bool)

(assert (=> b!4344926 (= e!2703799 (isDefined!7701 (getValueByKey!390 (toList!2833 lt!1558276) hash!377)))))

(assert (= (and d!1282948 c!738802) b!4344924))

(assert (= (and d!1282948 (not c!738802)) b!4344925))

(assert (= (and d!1282948 (not res!1783759)) b!4344926))

(declare-fun m!4951585 () Bool)

(assert (=> d!1282948 m!4951585))

(declare-fun m!4951587 () Bool)

(assert (=> b!4344924 m!4951587))

(declare-fun m!4951589 () Bool)

(assert (=> b!4344924 m!4951589))

(assert (=> b!4344924 m!4951589))

(declare-fun m!4951591 () Bool)

(assert (=> b!4344924 m!4951591))

(assert (=> b!4344926 m!4951589))

(assert (=> b!4344926 m!4951589))

(assert (=> b!4344926 m!4951591))

(assert (=> b!4344623 d!1282948))

(declare-fun bs!627269 () Bool)

(declare-fun d!1282958 () Bool)

(assert (= bs!627269 (and d!1282958 start!419264)))

(declare-fun lambda!137907 () Int)

(assert (=> bs!627269 (= lambda!137907 lambda!137793)))

(declare-fun bs!627270 () Bool)

(assert (= bs!627270 (and d!1282958 d!1282846)))

(assert (=> bs!627270 (= lambda!137907 lambda!137799)))

(declare-fun bs!627271 () Bool)

(assert (= bs!627271 (and d!1282958 d!1282860)))

(assert (=> bs!627271 (= lambda!137907 lambda!137832)))

(declare-fun bs!627272 () Bool)

(assert (= bs!627272 (and d!1282958 d!1282926)))

(assert (=> bs!627272 (= lambda!137907 lambda!137893)))

(assert (=> d!1282958 (eq!215 (extractMap!484 (toList!2833 (+!521 lm!1707 (tuple2!48073 hash!377 lt!1558280)))) (-!226 (extractMap!484 (toList!2833 lm!1707)) key!3918))))

(declare-fun lt!1558734 () Unit!70287)

(declare-fun choose!26638 (ListLongMap!1483 (_ BitVec 64) List!48895 K!10130 Hashable!4817) Unit!70287)

(assert (=> d!1282958 (= lt!1558734 (choose!26638 lm!1707 hash!377 lt!1558280 key!3918 hashF!1247))))

(assert (=> d!1282958 (forall!9013 (toList!2833 lm!1707) lambda!137907)))

(assert (=> d!1282958 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!41 lm!1707 hash!377 lt!1558280 key!3918 hashF!1247) lt!1558734)))

(declare-fun bs!627273 () Bool)

(assert (= bs!627273 d!1282958))

(assert (=> bs!627273 m!4950895))

(assert (=> bs!627273 m!4950895))

(declare-fun m!4951593 () Bool)

(assert (=> bs!627273 m!4951593))

(declare-fun m!4951595 () Bool)

(assert (=> bs!627273 m!4951595))

(assert (=> bs!627273 m!4951593))

(declare-fun m!4951597 () Bool)

(assert (=> bs!627273 m!4951597))

(declare-fun m!4951599 () Bool)

(assert (=> bs!627273 m!4951599))

(assert (=> bs!627273 m!4950903))

(declare-fun m!4951601 () Bool)

(assert (=> bs!627273 m!4951601))

(assert (=> bs!627273 m!4951595))

(assert (=> b!4344623 d!1282958))

(declare-fun d!1282960 () Bool)

(assert (=> d!1282960 (= (tail!6923 newBucket!200) (t!355815 newBucket!200))))

(assert (=> b!4344623 d!1282960))

(declare-fun bs!627274 () Bool)

(declare-fun d!1282962 () Bool)

(assert (= bs!627274 (and d!1282962 start!419264)))

(declare-fun lambda!137908 () Int)

(assert (=> bs!627274 (= lambda!137908 lambda!137793)))

(declare-fun bs!627275 () Bool)

(assert (= bs!627275 (and d!1282962 d!1282926)))

(assert (=> bs!627275 (= lambda!137908 lambda!137893)))

(declare-fun bs!627276 () Bool)

(assert (= bs!627276 (and d!1282962 d!1282958)))

(assert (=> bs!627276 (= lambda!137908 lambda!137907)))

(declare-fun bs!627277 () Bool)

(assert (= bs!627277 (and d!1282962 d!1282860)))

(assert (=> bs!627277 (= lambda!137908 lambda!137832)))

(declare-fun bs!627278 () Bool)

(assert (= bs!627278 (and d!1282962 d!1282846)))

(assert (=> bs!627278 (= lambda!137908 lambda!137799)))

(declare-fun lt!1558735 () ListMap!2077)

(assert (=> d!1282962 (invariantList!646 (toList!2834 lt!1558735))))

(declare-fun e!2703801 () ListMap!2077)

(assert (=> d!1282962 (= lt!1558735 e!2703801)))

(declare-fun c!738803 () Bool)

(assert (=> d!1282962 (= c!738803 ((_ is Cons!48772) (toList!2833 lt!1558289)))))

(assert (=> d!1282962 (forall!9013 (toList!2833 lt!1558289) lambda!137908)))

(assert (=> d!1282962 (= (extractMap!484 (toList!2833 lt!1558289)) lt!1558735)))

(declare-fun b!4344927 () Bool)

(assert (=> b!4344927 (= e!2703801 (addToMapMapFromBucket!133 (_2!27330 (h!54291 (toList!2833 lt!1558289))) (extractMap!484 (t!355816 (toList!2833 lt!1558289)))))))

(declare-fun b!4344928 () Bool)

(assert (=> b!4344928 (= e!2703801 (ListMap!2078 Nil!48771))))

(assert (= (and d!1282962 c!738803) b!4344927))

(assert (= (and d!1282962 (not c!738803)) b!4344928))

(declare-fun m!4951603 () Bool)

(assert (=> d!1282962 m!4951603))

(declare-fun m!4951605 () Bool)

(assert (=> d!1282962 m!4951605))

(declare-fun m!4951607 () Bool)

(assert (=> b!4344927 m!4951607))

(assert (=> b!4344927 m!4951607))

(declare-fun m!4951609 () Bool)

(assert (=> b!4344927 m!4951609))

(assert (=> b!4344623 d!1282962))

(declare-fun d!1282964 () Bool)

(assert (=> d!1282964 (eq!215 (addToMapMapFromBucket!133 lt!1558288 (+!522 lt!1558284 (tuple2!48071 key!3918 newValue!99))) (+!522 (addToMapMapFromBucket!133 lt!1558288 lt!1558284) (tuple2!48071 key!3918 newValue!99)))))

(declare-fun lt!1558738 () Unit!70287)

(declare-fun choose!26639 (ListMap!2077 K!10130 V!10376 List!48895) Unit!70287)

(assert (=> d!1282964 (= lt!1558738 (choose!26639 lt!1558284 key!3918 newValue!99 lt!1558288))))

(assert (=> d!1282964 (not (containsKey!588 lt!1558288 key!3918))))

(assert (=> d!1282964 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!44 lt!1558284 key!3918 newValue!99 lt!1558288) lt!1558738)))

(declare-fun bs!627279 () Bool)

(assert (= bs!627279 d!1282964))

(assert (=> bs!627279 m!4950937))

(declare-fun m!4951611 () Bool)

(assert (=> bs!627279 m!4951611))

(declare-fun m!4951613 () Bool)

(assert (=> bs!627279 m!4951613))

(assert (=> bs!627279 m!4951611))

(declare-fun m!4951615 () Bool)

(assert (=> bs!627279 m!4951615))

(declare-fun m!4951617 () Bool)

(assert (=> bs!627279 m!4951617))

(assert (=> bs!627279 m!4950937))

(assert (=> bs!627279 m!4951617))

(assert (=> bs!627279 m!4951613))

(declare-fun m!4951619 () Bool)

(assert (=> bs!627279 m!4951619))

(declare-fun m!4951621 () Bool)

(assert (=> bs!627279 m!4951621))

(assert (=> b!4344623 d!1282964))

(declare-fun d!1282966 () Bool)

(declare-fun e!2703802 () Bool)

(assert (=> d!1282966 e!2703802))

(declare-fun res!1783760 () Bool)

(assert (=> d!1282966 (=> (not res!1783760) (not e!2703802))))

(declare-fun lt!1558741 () ListMap!2077)

(assert (=> d!1282966 (= res!1783760 (contains!10889 lt!1558741 (_1!27329 lt!1558270)))))

(declare-fun lt!1558740 () List!48895)

(assert (=> d!1282966 (= lt!1558741 (ListMap!2078 lt!1558740))))

(declare-fun lt!1558742 () Unit!70287)

(declare-fun lt!1558739 () Unit!70287)

(assert (=> d!1282966 (= lt!1558742 lt!1558739)))

(assert (=> d!1282966 (= (getValueByKey!389 lt!1558740 (_1!27329 lt!1558270)) (Some!10402 (_2!27329 lt!1558270)))))

(assert (=> d!1282966 (= lt!1558739 (lemmaContainsTupThenGetReturnValue!174 lt!1558740 (_1!27329 lt!1558270) (_2!27329 lt!1558270)))))

(assert (=> d!1282966 (= lt!1558740 (insertNoDuplicatedKeys!79 (toList!2834 lt!1558284) (_1!27329 lt!1558270) (_2!27329 lt!1558270)))))

(assert (=> d!1282966 (= (+!522 lt!1558284 lt!1558270) lt!1558741)))

(declare-fun b!4344929 () Bool)

(declare-fun res!1783761 () Bool)

(assert (=> b!4344929 (=> (not res!1783761) (not e!2703802))))

(assert (=> b!4344929 (= res!1783761 (= (getValueByKey!389 (toList!2834 lt!1558741) (_1!27329 lt!1558270)) (Some!10402 (_2!27329 lt!1558270))))))

(declare-fun b!4344930 () Bool)

(assert (=> b!4344930 (= e!2703802 (contains!10894 (toList!2834 lt!1558741) lt!1558270))))

(assert (= (and d!1282966 res!1783760) b!4344929))

(assert (= (and b!4344929 res!1783761) b!4344930))

(declare-fun m!4951623 () Bool)

(assert (=> d!1282966 m!4951623))

(declare-fun m!4951625 () Bool)

(assert (=> d!1282966 m!4951625))

(declare-fun m!4951627 () Bool)

(assert (=> d!1282966 m!4951627))

(declare-fun m!4951629 () Bool)

(assert (=> d!1282966 m!4951629))

(declare-fun m!4951631 () Bool)

(assert (=> b!4344929 m!4951631))

(declare-fun m!4951633 () Bool)

(assert (=> b!4344930 m!4951633))

(assert (=> b!4344623 d!1282966))

(declare-fun b!4344931 () Bool)

(declare-fun e!2703804 () Unit!70287)

(declare-fun lt!1558747 () Unit!70287)

(assert (=> b!4344931 (= e!2703804 lt!1558747)))

(declare-fun lt!1558743 () Unit!70287)

(assert (=> b!4344931 (= lt!1558743 (lemmaContainsKeyImpliesGetValueByKeyDefined!302 (toList!2834 lt!1558278) key!3918))))

(assert (=> b!4344931 (isDefined!7699 (getValueByKey!389 (toList!2834 lt!1558278) key!3918))))

(declare-fun lt!1558750 () Unit!70287)

(assert (=> b!4344931 (= lt!1558750 lt!1558743)))

(assert (=> b!4344931 (= lt!1558747 (lemmaInListThenGetKeysListContains!91 (toList!2834 lt!1558278) key!3918))))

(declare-fun call!302076 () Bool)

(assert (=> b!4344931 call!302076))

(declare-fun bm!302071 () Bool)

(declare-fun e!2703803 () List!48898)

(assert (=> bm!302071 (= call!302076 (contains!10892 e!2703803 key!3918))))

(declare-fun c!738806 () Bool)

(declare-fun c!738805 () Bool)

(assert (=> bm!302071 (= c!738806 c!738805)))

(declare-fun b!4344932 () Bool)

(declare-fun e!2703806 () Bool)

(declare-fun e!2703807 () Bool)

(assert (=> b!4344932 (= e!2703806 e!2703807)))

(declare-fun res!1783763 () Bool)

(assert (=> b!4344932 (=> (not res!1783763) (not e!2703807))))

(assert (=> b!4344932 (= res!1783763 (isDefined!7699 (getValueByKey!389 (toList!2834 lt!1558278) key!3918)))))

(declare-fun b!4344933 () Bool)

(assert (=> b!4344933 (= e!2703803 (keys!16432 lt!1558278))))

(declare-fun b!4344934 () Bool)

(declare-fun e!2703805 () Unit!70287)

(assert (=> b!4344934 (= e!2703804 e!2703805)))

(declare-fun c!738804 () Bool)

(assert (=> b!4344934 (= c!738804 call!302076)))

(declare-fun b!4344935 () Bool)

(declare-fun Unit!70385 () Unit!70287)

(assert (=> b!4344935 (= e!2703805 Unit!70385)))

(declare-fun b!4344936 () Bool)

(assert (=> b!4344936 (= e!2703803 (getKeysList!94 (toList!2834 lt!1558278)))))

(declare-fun d!1282968 () Bool)

(assert (=> d!1282968 e!2703806))

(declare-fun res!1783762 () Bool)

(assert (=> d!1282968 (=> res!1783762 e!2703806)))

(declare-fun e!2703808 () Bool)

(assert (=> d!1282968 (= res!1783762 e!2703808)))

(declare-fun res!1783764 () Bool)

(assert (=> d!1282968 (=> (not res!1783764) (not e!2703808))))

(declare-fun lt!1558744 () Bool)

(assert (=> d!1282968 (= res!1783764 (not lt!1558744))))

(declare-fun lt!1558748 () Bool)

(assert (=> d!1282968 (= lt!1558744 lt!1558748)))

(declare-fun lt!1558745 () Unit!70287)

(assert (=> d!1282968 (= lt!1558745 e!2703804)))

(assert (=> d!1282968 (= c!738805 lt!1558748)))

(assert (=> d!1282968 (= lt!1558748 (containsKey!587 (toList!2834 lt!1558278) key!3918))))

(assert (=> d!1282968 (= (contains!10889 lt!1558278 key!3918) lt!1558744)))

(declare-fun b!4344937 () Bool)

(assert (=> b!4344937 false))

(declare-fun lt!1558746 () Unit!70287)

(declare-fun lt!1558749 () Unit!70287)

(assert (=> b!4344937 (= lt!1558746 lt!1558749)))

(assert (=> b!4344937 (containsKey!587 (toList!2834 lt!1558278) key!3918)))

(assert (=> b!4344937 (= lt!1558749 (lemmaInGetKeysListThenContainsKey!92 (toList!2834 lt!1558278) key!3918))))

(declare-fun Unit!70386 () Unit!70287)

(assert (=> b!4344937 (= e!2703805 Unit!70386)))

(declare-fun b!4344938 () Bool)

(assert (=> b!4344938 (= e!2703808 (not (contains!10892 (keys!16432 lt!1558278) key!3918)))))

(declare-fun b!4344939 () Bool)

(assert (=> b!4344939 (= e!2703807 (contains!10892 (keys!16432 lt!1558278) key!3918))))

(assert (= (and d!1282968 c!738805) b!4344931))

(assert (= (and d!1282968 (not c!738805)) b!4344934))

(assert (= (and b!4344934 c!738804) b!4344937))

(assert (= (and b!4344934 (not c!738804)) b!4344935))

(assert (= (or b!4344931 b!4344934) bm!302071))

(assert (= (and bm!302071 c!738806) b!4344936))

(assert (= (and bm!302071 (not c!738806)) b!4344933))

(assert (= (and d!1282968 res!1783764) b!4344938))

(assert (= (and d!1282968 (not res!1783762)) b!4344932))

(assert (= (and b!4344932 res!1783763) b!4344939))

(declare-fun m!4951635 () Bool)

(assert (=> bm!302071 m!4951635))

(declare-fun m!4951637 () Bool)

(assert (=> b!4344937 m!4951637))

(declare-fun m!4951639 () Bool)

(assert (=> b!4344937 m!4951639))

(declare-fun m!4951641 () Bool)

(assert (=> b!4344939 m!4951641))

(assert (=> b!4344939 m!4951641))

(declare-fun m!4951643 () Bool)

(assert (=> b!4344939 m!4951643))

(assert (=> b!4344933 m!4951641))

(declare-fun m!4951645 () Bool)

(assert (=> b!4344936 m!4951645))

(assert (=> b!4344938 m!4951641))

(assert (=> b!4344938 m!4951641))

(assert (=> b!4344938 m!4951643))

(declare-fun m!4951647 () Bool)

(assert (=> b!4344931 m!4951647))

(declare-fun m!4951649 () Bool)

(assert (=> b!4344931 m!4951649))

(assert (=> b!4344931 m!4951649))

(declare-fun m!4951651 () Bool)

(assert (=> b!4344931 m!4951651))

(declare-fun m!4951653 () Bool)

(assert (=> b!4344931 m!4951653))

(assert (=> d!1282968 m!4951637))

(assert (=> b!4344932 m!4951649))

(assert (=> b!4344932 m!4951649))

(assert (=> b!4344932 m!4951651))

(assert (=> b!4344623 d!1282968))

(declare-fun d!1282970 () Bool)

(declare-fun e!2703811 () Bool)

(assert (=> d!1282970 e!2703811))

(declare-fun res!1783767 () Bool)

(assert (=> d!1282970 (=> (not res!1783767) (not e!2703811))))

(declare-fun lt!1558753 () ListMap!2077)

(assert (=> d!1282970 (= res!1783767 (not (contains!10889 lt!1558753 key!3918)))))

(declare-fun removePresrvNoDuplicatedKeys!29 (List!48895 K!10130) List!48895)

(assert (=> d!1282970 (= lt!1558753 (ListMap!2078 (removePresrvNoDuplicatedKeys!29 (toList!2834 lt!1558272) key!3918)))))

(assert (=> d!1282970 (= (-!226 lt!1558272 key!3918) lt!1558753)))

(declare-fun b!4344942 () Bool)

(declare-fun content!7646 (List!48898) (InoxSet K!10130))

(assert (=> b!4344942 (= e!2703811 (= ((_ map and) (content!7646 (keys!16432 lt!1558272)) ((_ map not) (store ((as const (Array K!10130 Bool)) false) key!3918 true))) (content!7646 (keys!16432 lt!1558753))))))

(assert (= (and d!1282970 res!1783767) b!4344942))

(declare-fun m!4951655 () Bool)

(assert (=> d!1282970 m!4951655))

(declare-fun m!4951657 () Bool)

(assert (=> d!1282970 m!4951657))

(declare-fun m!4951659 () Bool)

(assert (=> b!4344942 m!4951659))

(assert (=> b!4344942 m!4950979))

(assert (=> b!4344942 m!4951659))

(declare-fun m!4951661 () Bool)

(assert (=> b!4344942 m!4951661))

(assert (=> b!4344942 m!4950979))

(declare-fun m!4951663 () Bool)

(assert (=> b!4344942 m!4951663))

(declare-fun m!4951665 () Bool)

(assert (=> b!4344942 m!4951665))

(assert (=> b!4344623 d!1282970))

(declare-fun b!4344943 () Bool)

(declare-fun e!2703813 () Unit!70287)

(declare-fun lt!1558758 () Unit!70287)

(assert (=> b!4344943 (= e!2703813 lt!1558758)))

(declare-fun lt!1558754 () Unit!70287)

(assert (=> b!4344943 (= lt!1558754 (lemmaContainsKeyImpliesGetValueByKeyDefined!302 (toList!2834 lt!1558286) key!3918))))

(assert (=> b!4344943 (isDefined!7699 (getValueByKey!389 (toList!2834 lt!1558286) key!3918))))

(declare-fun lt!1558761 () Unit!70287)

(assert (=> b!4344943 (= lt!1558761 lt!1558754)))

(assert (=> b!4344943 (= lt!1558758 (lemmaInListThenGetKeysListContains!91 (toList!2834 lt!1558286) key!3918))))

(declare-fun call!302077 () Bool)

(assert (=> b!4344943 call!302077))

(declare-fun bm!302072 () Bool)

(declare-fun e!2703812 () List!48898)

(assert (=> bm!302072 (= call!302077 (contains!10892 e!2703812 key!3918))))

(declare-fun c!738809 () Bool)

(declare-fun c!738808 () Bool)

(assert (=> bm!302072 (= c!738809 c!738808)))

(declare-fun b!4344944 () Bool)

(declare-fun e!2703815 () Bool)

(declare-fun e!2703816 () Bool)

(assert (=> b!4344944 (= e!2703815 e!2703816)))

(declare-fun res!1783769 () Bool)

(assert (=> b!4344944 (=> (not res!1783769) (not e!2703816))))

(assert (=> b!4344944 (= res!1783769 (isDefined!7699 (getValueByKey!389 (toList!2834 lt!1558286) key!3918)))))

(declare-fun b!4344945 () Bool)

(assert (=> b!4344945 (= e!2703812 (keys!16432 lt!1558286))))

(declare-fun b!4344946 () Bool)

(declare-fun e!2703814 () Unit!70287)

(assert (=> b!4344946 (= e!2703813 e!2703814)))

(declare-fun c!738807 () Bool)

(assert (=> b!4344946 (= c!738807 call!302077)))

(declare-fun b!4344947 () Bool)

(declare-fun Unit!70388 () Unit!70287)

(assert (=> b!4344947 (= e!2703814 Unit!70388)))

(declare-fun b!4344948 () Bool)

(assert (=> b!4344948 (= e!2703812 (getKeysList!94 (toList!2834 lt!1558286)))))

(declare-fun d!1282972 () Bool)

(assert (=> d!1282972 e!2703815))

(declare-fun res!1783768 () Bool)

(assert (=> d!1282972 (=> res!1783768 e!2703815)))

(declare-fun e!2703817 () Bool)

(assert (=> d!1282972 (= res!1783768 e!2703817)))

(declare-fun res!1783770 () Bool)

(assert (=> d!1282972 (=> (not res!1783770) (not e!2703817))))

(declare-fun lt!1558755 () Bool)

(assert (=> d!1282972 (= res!1783770 (not lt!1558755))))

(declare-fun lt!1558759 () Bool)

(assert (=> d!1282972 (= lt!1558755 lt!1558759)))

(declare-fun lt!1558756 () Unit!70287)

(assert (=> d!1282972 (= lt!1558756 e!2703813)))

(assert (=> d!1282972 (= c!738808 lt!1558759)))

(assert (=> d!1282972 (= lt!1558759 (containsKey!587 (toList!2834 lt!1558286) key!3918))))

(assert (=> d!1282972 (= (contains!10889 lt!1558286 key!3918) lt!1558755)))

(declare-fun b!4344949 () Bool)

(assert (=> b!4344949 false))

(declare-fun lt!1558757 () Unit!70287)

(declare-fun lt!1558760 () Unit!70287)

(assert (=> b!4344949 (= lt!1558757 lt!1558760)))

(assert (=> b!4344949 (containsKey!587 (toList!2834 lt!1558286) key!3918)))

(assert (=> b!4344949 (= lt!1558760 (lemmaInGetKeysListThenContainsKey!92 (toList!2834 lt!1558286) key!3918))))

(declare-fun Unit!70389 () Unit!70287)

(assert (=> b!4344949 (= e!2703814 Unit!70389)))

(declare-fun b!4344950 () Bool)

(assert (=> b!4344950 (= e!2703817 (not (contains!10892 (keys!16432 lt!1558286) key!3918)))))

(declare-fun b!4344951 () Bool)

(assert (=> b!4344951 (= e!2703816 (contains!10892 (keys!16432 lt!1558286) key!3918))))

(assert (= (and d!1282972 c!738808) b!4344943))

(assert (= (and d!1282972 (not c!738808)) b!4344946))

(assert (= (and b!4344946 c!738807) b!4344949))

(assert (= (and b!4344946 (not c!738807)) b!4344947))

(assert (= (or b!4344943 b!4344946) bm!302072))

(assert (= (and bm!302072 c!738809) b!4344948))

(assert (= (and bm!302072 (not c!738809)) b!4344945))

(assert (= (and d!1282972 res!1783770) b!4344950))

(assert (= (and d!1282972 (not res!1783768)) b!4344944))

(assert (= (and b!4344944 res!1783769) b!4344951))

(declare-fun m!4951667 () Bool)

(assert (=> bm!302072 m!4951667))

(declare-fun m!4951669 () Bool)

(assert (=> b!4344949 m!4951669))

(declare-fun m!4951671 () Bool)

(assert (=> b!4344949 m!4951671))

(declare-fun m!4951673 () Bool)

(assert (=> b!4344951 m!4951673))

(assert (=> b!4344951 m!4951673))

(declare-fun m!4951675 () Bool)

(assert (=> b!4344951 m!4951675))

(assert (=> b!4344945 m!4951673))

(declare-fun m!4951677 () Bool)

(assert (=> b!4344948 m!4951677))

(assert (=> b!4344950 m!4951673))

(assert (=> b!4344950 m!4951673))

(assert (=> b!4344950 m!4951675))

(declare-fun m!4951679 () Bool)

(assert (=> b!4344943 m!4951679))

(declare-fun m!4951681 () Bool)

(assert (=> b!4344943 m!4951681))

(assert (=> b!4344943 m!4951681))

(declare-fun m!4951683 () Bool)

(assert (=> b!4344943 m!4951683))

(declare-fun m!4951685 () Bool)

(assert (=> b!4344943 m!4951685))

(assert (=> d!1282972 m!4951669))

(assert (=> b!4344944 m!4951681))

(assert (=> b!4344944 m!4951681))

(assert (=> b!4344944 m!4951683))

(assert (=> b!4344623 d!1282972))

(declare-fun d!1282974 () Bool)

(declare-fun e!2703818 () Bool)

(assert (=> d!1282974 e!2703818))

(declare-fun res!1783771 () Bool)

(assert (=> d!1282974 (=> (not res!1783771) (not e!2703818))))

(declare-fun lt!1558763 () ListLongMap!1483)

(assert (=> d!1282974 (= res!1783771 (contains!10888 lt!1558763 (_1!27330 (tuple2!48073 hash!377 lt!1558280))))))

(declare-fun lt!1558762 () List!48896)

(assert (=> d!1282974 (= lt!1558763 (ListLongMap!1484 lt!1558762))))

(declare-fun lt!1558765 () Unit!70287)

(declare-fun lt!1558764 () Unit!70287)

(assert (=> d!1282974 (= lt!1558765 lt!1558764)))

(assert (=> d!1282974 (= (getValueByKey!390 lt!1558762 (_1!27330 (tuple2!48073 hash!377 lt!1558280))) (Some!10403 (_2!27330 (tuple2!48073 hash!377 lt!1558280))))))

(assert (=> d!1282974 (= lt!1558764 (lemmaContainsTupThenGetReturnValue!171 lt!1558762 (_1!27330 (tuple2!48073 hash!377 lt!1558280)) (_2!27330 (tuple2!48073 hash!377 lt!1558280))))))

(assert (=> d!1282974 (= lt!1558762 (insertStrictlySorted!102 (toList!2833 lm!1707) (_1!27330 (tuple2!48073 hash!377 lt!1558280)) (_2!27330 (tuple2!48073 hash!377 lt!1558280))))))

(assert (=> d!1282974 (= (+!521 lm!1707 (tuple2!48073 hash!377 lt!1558280)) lt!1558763)))

(declare-fun b!4344952 () Bool)

(declare-fun res!1783772 () Bool)

(assert (=> b!4344952 (=> (not res!1783772) (not e!2703818))))

(assert (=> b!4344952 (= res!1783772 (= (getValueByKey!390 (toList!2833 lt!1558763) (_1!27330 (tuple2!48073 hash!377 lt!1558280))) (Some!10403 (_2!27330 (tuple2!48073 hash!377 lt!1558280)))))))

(declare-fun b!4344953 () Bool)

(assert (=> b!4344953 (= e!2703818 (contains!10890 (toList!2833 lt!1558763) (tuple2!48073 hash!377 lt!1558280)))))

(assert (= (and d!1282974 res!1783771) b!4344952))

(assert (= (and b!4344952 res!1783772) b!4344953))

(declare-fun m!4951687 () Bool)

(assert (=> d!1282974 m!4951687))

(declare-fun m!4951689 () Bool)

(assert (=> d!1282974 m!4951689))

(declare-fun m!4951691 () Bool)

(assert (=> d!1282974 m!4951691))

(declare-fun m!4951693 () Bool)

(assert (=> d!1282974 m!4951693))

(declare-fun m!4951695 () Bool)

(assert (=> b!4344952 m!4951695))

(declare-fun m!4951697 () Bool)

(assert (=> b!4344953 m!4951697))

(assert (=> b!4344623 d!1282974))

(declare-fun d!1282976 () Bool)

(assert (=> d!1282976 (= (contains!10889 lt!1558278 key!3918) (contains!10889 lt!1558286 key!3918))))

(declare-fun lt!1558768 () Unit!70287)

(declare-fun choose!26642 (ListMap!2077 ListMap!2077 K!10130) Unit!70287)

(assert (=> d!1282976 (= lt!1558768 (choose!26642 lt!1558278 lt!1558286 key!3918))))

(assert (=> d!1282976 (eq!215 lt!1558278 lt!1558286)))

(assert (=> d!1282976 (= (lemmaEquivalentThenSameContains!76 lt!1558278 lt!1558286 key!3918) lt!1558768)))

(declare-fun bs!627280 () Bool)

(assert (= bs!627280 d!1282976))

(assert (=> bs!627280 m!4950921))

(assert (=> bs!627280 m!4950935))

(declare-fun m!4951699 () Bool)

(assert (=> bs!627280 m!4951699))

(assert (=> bs!627280 m!4950931))

(assert (=> b!4344623 d!1282976))

(declare-fun d!1282978 () Bool)

(declare-fun hash!1396 (Hashable!4817 K!10130) (_ BitVec 64))

(assert (=> d!1282978 (= (hash!1392 hashF!1247 key!3918) (hash!1396 hashF!1247 key!3918))))

(declare-fun bs!627281 () Bool)

(assert (= bs!627281 d!1282978))

(declare-fun m!4951701 () Bool)

(assert (=> bs!627281 m!4951701))

(assert (=> b!4344626 d!1282978))

(assert (=> b!4344627 d!1282848))

(declare-fun d!1282980 () Bool)

(assert (=> d!1282980 (= (eq!215 lt!1558275 lt!1558279) (= (content!7644 (toList!2834 lt!1558275)) (content!7644 (toList!2834 lt!1558279))))))

(declare-fun bs!627282 () Bool)

(assert (= bs!627282 d!1282980))

(declare-fun m!4951703 () Bool)

(assert (=> bs!627282 m!4951703))

(assert (=> bs!627282 m!4951465))

(assert (=> b!4344625 d!1282980))

(declare-fun d!1282982 () Bool)

(declare-fun get!15831 (Option!10404) List!48895)

(assert (=> d!1282982 (= (apply!11277 lm!1707 hash!377) (get!15831 (getValueByKey!390 (toList!2833 lm!1707) hash!377)))))

(declare-fun bs!627283 () Bool)

(assert (= bs!627283 d!1282982))

(declare-fun m!4951705 () Bool)

(assert (=> bs!627283 m!4951705))

(assert (=> bs!627283 m!4951705))

(declare-fun m!4951707 () Bool)

(assert (=> bs!627283 m!4951707))

(assert (=> b!4344636 d!1282982))

(declare-fun d!1282984 () Bool)

(assert (=> d!1282984 (contains!10890 (toList!2833 lm!1707) (tuple2!48073 hash!377 lt!1558271))))

(declare-fun lt!1558771 () Unit!70287)

(declare-fun choose!26643 (List!48896 (_ BitVec 64) List!48895) Unit!70287)

(assert (=> d!1282984 (= lt!1558771 (choose!26643 (toList!2833 lm!1707) hash!377 lt!1558271))))

(declare-fun e!2703821 () Bool)

(assert (=> d!1282984 e!2703821))

(declare-fun res!1783775 () Bool)

(assert (=> d!1282984 (=> (not res!1783775) (not e!2703821))))

(declare-fun isStrictlySorted!72 (List!48896) Bool)

(assert (=> d!1282984 (= res!1783775 (isStrictlySorted!72 (toList!2833 lm!1707)))))

(assert (=> d!1282984 (= (lemmaGetValueByKeyImpliesContainsTuple!272 (toList!2833 lm!1707) hash!377 lt!1558271) lt!1558771)))

(declare-fun b!4344956 () Bool)

(assert (=> b!4344956 (= e!2703821 (= (getValueByKey!390 (toList!2833 lm!1707) hash!377) (Some!10403 lt!1558271)))))

(assert (= (and d!1282984 res!1783775) b!4344956))

(declare-fun m!4951709 () Bool)

(assert (=> d!1282984 m!4951709))

(declare-fun m!4951711 () Bool)

(assert (=> d!1282984 m!4951711))

(declare-fun m!4951713 () Bool)

(assert (=> d!1282984 m!4951713))

(assert (=> b!4344956 m!4951705))

(assert (=> b!4344636 d!1282984))

(declare-fun d!1282986 () Bool)

(declare-fun lt!1558774 () List!48895)

(assert (=> d!1282986 (not (containsKey!588 lt!1558774 key!3918))))

(declare-fun e!2703827 () List!48895)

(assert (=> d!1282986 (= lt!1558774 e!2703827)))

(declare-fun c!738815 () Bool)

(assert (=> d!1282986 (= c!738815 (and ((_ is Cons!48771) lt!1558271) (= (_1!27329 (h!54290 lt!1558271)) key!3918)))))

(assert (=> d!1282986 (noDuplicateKeys!425 lt!1558271)))

(assert (=> d!1282986 (= (removePairForKey!395 lt!1558271 key!3918) lt!1558774)))

(declare-fun b!4344965 () Bool)

(assert (=> b!4344965 (= e!2703827 (t!355815 lt!1558271))))

(declare-fun b!4344967 () Bool)

(declare-fun e!2703826 () List!48895)

(assert (=> b!4344967 (= e!2703826 (Cons!48771 (h!54290 lt!1558271) (removePairForKey!395 (t!355815 lt!1558271) key!3918)))))

(declare-fun b!4344966 () Bool)

(assert (=> b!4344966 (= e!2703827 e!2703826)))

(declare-fun c!738814 () Bool)

(assert (=> b!4344966 (= c!738814 ((_ is Cons!48771) lt!1558271))))

(declare-fun b!4344968 () Bool)

(assert (=> b!4344968 (= e!2703826 Nil!48771)))

(assert (= (and d!1282986 c!738815) b!4344965))

(assert (= (and d!1282986 (not c!738815)) b!4344966))

(assert (= (and b!4344966 c!738814) b!4344967))

(assert (= (and b!4344966 (not c!738814)) b!4344968))

(declare-fun m!4951715 () Bool)

(assert (=> d!1282986 m!4951715))

(declare-fun m!4951717 () Bool)

(assert (=> d!1282986 m!4951717))

(declare-fun m!4951719 () Bool)

(assert (=> b!4344967 m!4951719))

(assert (=> b!4344636 d!1282986))

(declare-fun d!1282988 () Bool)

(declare-fun lt!1558777 () Bool)

(declare-fun content!7648 (List!48896) (InoxSet tuple2!48072))

(assert (=> d!1282988 (= lt!1558777 (select (content!7648 (toList!2833 lm!1707)) lt!1558267))))

(declare-fun e!2703833 () Bool)

(assert (=> d!1282988 (= lt!1558777 e!2703833)))

(declare-fun res!1783781 () Bool)

(assert (=> d!1282988 (=> (not res!1783781) (not e!2703833))))

(assert (=> d!1282988 (= res!1783781 ((_ is Cons!48772) (toList!2833 lm!1707)))))

(assert (=> d!1282988 (= (contains!10890 (toList!2833 lm!1707) lt!1558267) lt!1558777)))

(declare-fun b!4344973 () Bool)

(declare-fun e!2703832 () Bool)

(assert (=> b!4344973 (= e!2703833 e!2703832)))

(declare-fun res!1783780 () Bool)

(assert (=> b!4344973 (=> res!1783780 e!2703832)))

(assert (=> b!4344973 (= res!1783780 (= (h!54291 (toList!2833 lm!1707)) lt!1558267))))

(declare-fun b!4344974 () Bool)

(assert (=> b!4344974 (= e!2703832 (contains!10890 (t!355816 (toList!2833 lm!1707)) lt!1558267))))

(assert (= (and d!1282988 res!1783781) b!4344973))

(assert (= (and b!4344973 (not res!1783780)) b!4344974))

(declare-fun m!4951721 () Bool)

(assert (=> d!1282988 m!4951721))

(declare-fun m!4951723 () Bool)

(assert (=> d!1282988 m!4951723))

(declare-fun m!4951725 () Bool)

(assert (=> b!4344974 m!4951725))

(assert (=> b!4344636 d!1282988))

(declare-fun d!1282990 () Bool)

(assert (=> d!1282990 (dynLambda!20590 lambda!137793 lt!1558267)))

(declare-fun lt!1558780 () Unit!70287)

(declare-fun choose!26645 (List!48896 Int tuple2!48072) Unit!70287)

(assert (=> d!1282990 (= lt!1558780 (choose!26645 (toList!2833 lm!1707) lambda!137793 lt!1558267))))

(declare-fun e!2703836 () Bool)

(assert (=> d!1282990 e!2703836))

(declare-fun res!1783784 () Bool)

(assert (=> d!1282990 (=> (not res!1783784) (not e!2703836))))

(assert (=> d!1282990 (= res!1783784 (forall!9013 (toList!2833 lm!1707) lambda!137793))))

(assert (=> d!1282990 (= (forallContained!1663 (toList!2833 lm!1707) lambda!137793 lt!1558267) lt!1558780)))

(declare-fun b!4344977 () Bool)

(assert (=> b!4344977 (= e!2703836 (contains!10890 (toList!2833 lm!1707) lt!1558267))))

(assert (= (and d!1282990 res!1783784) b!4344977))

(declare-fun b_lambda!130033 () Bool)

(assert (=> (not b_lambda!130033) (not d!1282990)))

(declare-fun m!4951727 () Bool)

(assert (=> d!1282990 m!4951727))

(declare-fun m!4951729 () Bool)

(assert (=> d!1282990 m!4951729))

(assert (=> d!1282990 m!4950941))

(assert (=> b!4344977 m!4950963))

(assert (=> b!4344636 d!1282990))

(declare-fun bs!627284 () Bool)

(declare-fun d!1282992 () Bool)

(assert (= bs!627284 (and d!1282992 start!419264)))

(declare-fun lambda!137911 () Int)

(assert (=> bs!627284 (not (= lambda!137911 lambda!137793))))

(declare-fun bs!627285 () Bool)

(assert (= bs!627285 (and d!1282992 d!1282926)))

(assert (=> bs!627285 (not (= lambda!137911 lambda!137893))))

(declare-fun bs!627286 () Bool)

(assert (= bs!627286 (and d!1282992 d!1282958)))

(assert (=> bs!627286 (not (= lambda!137911 lambda!137907))))

(declare-fun bs!627287 () Bool)

(assert (= bs!627287 (and d!1282992 d!1282860)))

(assert (=> bs!627287 (not (= lambda!137911 lambda!137832))))

(declare-fun bs!627288 () Bool)

(assert (= bs!627288 (and d!1282992 d!1282846)))

(assert (=> bs!627288 (not (= lambda!137911 lambda!137799))))

(declare-fun bs!627289 () Bool)

(assert (= bs!627289 (and d!1282992 d!1282962)))

(assert (=> bs!627289 (not (= lambda!137911 lambda!137908))))

(assert (=> d!1282992 true))

(assert (=> d!1282992 (= (allKeysSameHashInMap!529 lm!1707 hashF!1247) (forall!9013 (toList!2833 lm!1707) lambda!137911))))

(declare-fun bs!627290 () Bool)

(assert (= bs!627290 d!1282992))

(declare-fun m!4951731 () Bool)

(assert (=> bs!627290 m!4951731))

(assert (=> b!4344629 d!1282992))

(assert (=> start!419264 d!1282854))

(declare-fun d!1282994 () Bool)

(assert (=> d!1282994 (= (inv!64316 lm!1707) (isStrictlySorted!72 (toList!2833 lm!1707)))))

(declare-fun bs!627291 () Bool)

(assert (= bs!627291 d!1282994))

(assert (=> bs!627291 m!4951713))

(assert (=> start!419264 d!1282994))

(declare-fun d!1282996 () Bool)

(declare-fun e!2703837 () Bool)

(assert (=> d!1282996 e!2703837))

(declare-fun res!1783785 () Bool)

(assert (=> d!1282996 (=> res!1783785 e!2703837)))

(declare-fun lt!1558781 () Bool)

(assert (=> d!1282996 (= res!1783785 (not lt!1558781))))

(declare-fun lt!1558783 () Bool)

(assert (=> d!1282996 (= lt!1558781 lt!1558783)))

(declare-fun lt!1558782 () Unit!70287)

(declare-fun e!2703838 () Unit!70287)

(assert (=> d!1282996 (= lt!1558782 e!2703838)))

(declare-fun c!738816 () Bool)

(assert (=> d!1282996 (= c!738816 lt!1558783)))

(assert (=> d!1282996 (= lt!1558783 (containsKey!590 (toList!2833 lm!1707) hash!377))))

(assert (=> d!1282996 (= (contains!10888 lm!1707 hash!377) lt!1558781)))

(declare-fun b!4344980 () Bool)

(declare-fun lt!1558784 () Unit!70287)

(assert (=> b!4344980 (= e!2703838 lt!1558784)))

(assert (=> b!4344980 (= lt!1558784 (lemmaContainsKeyImpliesGetValueByKeyDefined!304 (toList!2833 lm!1707) hash!377))))

(assert (=> b!4344980 (isDefined!7701 (getValueByKey!390 (toList!2833 lm!1707) hash!377))))

(declare-fun b!4344981 () Bool)

(declare-fun Unit!70391 () Unit!70287)

(assert (=> b!4344981 (= e!2703838 Unit!70391)))

(declare-fun b!4344982 () Bool)

(assert (=> b!4344982 (= e!2703837 (isDefined!7701 (getValueByKey!390 (toList!2833 lm!1707) hash!377)))))

(assert (= (and d!1282996 c!738816) b!4344980))

(assert (= (and d!1282996 (not c!738816)) b!4344981))

(assert (= (and d!1282996 (not res!1783785)) b!4344982))

(declare-fun m!4951733 () Bool)

(assert (=> d!1282996 m!4951733))

(declare-fun m!4951735 () Bool)

(assert (=> b!4344980 m!4951735))

(assert (=> b!4344980 m!4951705))

(assert (=> b!4344980 m!4951705))

(declare-fun m!4951737 () Bool)

(assert (=> b!4344980 m!4951737))

(assert (=> b!4344982 m!4951705))

(assert (=> b!4344982 m!4951705))

(assert (=> b!4344982 m!4951737))

(assert (=> b!4344628 d!1282996))

(declare-fun b!4344987 () Bool)

(declare-fun tp!1329424 () Bool)

(declare-fun e!2703841 () Bool)

(assert (=> b!4344987 (= e!2703841 (and tp_is_empty!24937 tp_is_empty!24939 tp!1329424))))

(assert (=> b!4344632 (= tp!1329411 e!2703841)))

(assert (= (and b!4344632 ((_ is Cons!48771) (t!355815 newBucket!200))) b!4344987))

(declare-fun b!4344992 () Bool)

(declare-fun e!2703844 () Bool)

(declare-fun tp!1329429 () Bool)

(declare-fun tp!1329430 () Bool)

(assert (=> b!4344992 (= e!2703844 (and tp!1329429 tp!1329430))))

(assert (=> b!4344624 (= tp!1329412 e!2703844)))

(assert (= (and b!4344624 ((_ is Cons!48772) (toList!2833 lm!1707))) b!4344992))

(declare-fun b_lambda!130035 () Bool)

(assert (= b_lambda!130015 (or start!419264 b_lambda!130035)))

(declare-fun bs!627292 () Bool)

(declare-fun d!1282998 () Bool)

(assert (= bs!627292 (and d!1282998 start!419264)))

(assert (=> bs!627292 (= (dynLambda!20590 lambda!137793 (h!54291 (toList!2833 lm!1707))) (noDuplicateKeys!425 (_2!27330 (h!54291 (toList!2833 lm!1707)))))))

(declare-fun m!4951739 () Bool)

(assert (=> bs!627292 m!4951739))

(assert (=> b!4344706 d!1282998))

(declare-fun b_lambda!130037 () Bool)

(assert (= b_lambda!130033 (or start!419264 b_lambda!130037)))

(declare-fun bs!627293 () Bool)

(declare-fun d!1283000 () Bool)

(assert (= bs!627293 (and d!1283000 start!419264)))

(assert (=> bs!627293 (= (dynLambda!20590 lambda!137793 lt!1558267) (noDuplicateKeys!425 (_2!27330 lt!1558267)))))

(declare-fun m!4951741 () Bool)

(assert (=> bs!627293 m!4951741))

(assert (=> d!1282990 d!1283000))

(declare-fun b_lambda!130039 () Bool)

(assert (= b_lambda!130011 (or start!419264 b_lambda!130039)))

(declare-fun bs!627294 () Bool)

(declare-fun d!1283002 () Bool)

(assert (= bs!627294 (and d!1283002 start!419264)))

(assert (=> bs!627294 (= (dynLambda!20590 lambda!137793 (h!54291 (toList!2833 lt!1558289))) (noDuplicateKeys!425 (_2!27330 (h!54291 (toList!2833 lt!1558289)))))))

(declare-fun m!4951743 () Bool)

(assert (=> bs!627294 m!4951743))

(assert (=> b!4344684 d!1283002))

(declare-fun b_lambda!130041 () Bool)

(assert (= b_lambda!130013 (or start!419264 b_lambda!130041)))

(declare-fun bs!627295 () Bool)

(declare-fun d!1283004 () Bool)

(assert (= bs!627295 (and d!1283004 start!419264)))

(assert (=> bs!627295 (= (dynLambda!20590 lambda!137793 (tuple2!48073 hash!377 newBucket!200)) (noDuplicateKeys!425 (_2!27330 (tuple2!48073 hash!377 newBucket!200))))))

(declare-fun m!4951745 () Bool)

(assert (=> bs!627295 m!4951745))

(assert (=> b!4344705 d!1283004))

(check-sat (not bm!302061) (not b!4344944) (not b!4344902) (not b!4344982) (not b!4344933) (not b!4344992) (not b!4344673) (not b!4344720) (not d!1282918) (not bm!302062) (not b!4344822) (not b_lambda!130037) (not b!4344930) (not d!1282968) (not b!4344843) (not b!4344845) (not b!4344980) (not b!4344685) (not b!4344721) (not b!4344670) (not bm!302059) (not b!4344665) (not b!4344837) (not b!4344987) (not d!1282858) (not d!1282864) (not d!1282924) (not b!4344932) (not bm!302063) (not d!1282852) (not bm!302065) (not b!4344873) (not b!4344936) (not d!1282850) (not d!1282984) (not b!4344871) (not bm!302058) (not d!1282938) (not d!1282908) (not bm!302068) (not b!4344834) (not b!4344719) (not b!4344950) tp_is_empty!24937 (not d!1282982) (not bs!627293) (not b!4344707) (not b!4344824) (not d!1282988) (not d!1282966) (not b!4344967) (not b!4344949) (not d!1282970) (not b_lambda!130035) (not b!4344903) (not d!1282958) (not d!1282964) (not d!1282980) (not d!1282986) tp_is_empty!24939 (not b!4344937) (not b!4344874) (not d!1282838) (not b!4344927) (not b!4344694) (not b!4344672) (not d!1282846) (not b!4344667) (not b!4344952) (not b_lambda!130039) (not b!4344820) (not b!4344836) (not bm!302071) (not b!4344931) (not bm!302064) (not d!1282928) (not b!4344671) (not b!4344929) (not b!4344943) (not b_lambda!130041) (not d!1282860) (not d!1282926) (not d!1282962) (not b!4344867) (not b!4344838) (not d!1282996) (not b!4344924) (not d!1282972) (not d!1282992) (not d!1282994) (not b!4344846) (not b!4344942) (not b!4344926) (not d!1282976) (not bm!302029) (not b!4344678) (not d!1282990) (not bm!302060) (not b!4344974) (not bm!302067) (not b!4344953) (not b!4344939) (not b!4344666) (not b!4344695) (not b!4344977) (not b!4344823) (not b!4344938) (not bm!302072) (not b!4344945) (not b!4344875) (not d!1282840) (not b!4344956) (not bs!627292) (not b!4344951) (not d!1282978) (not d!1282948) (not b!4344847) (not bs!627294) (not bs!627295) (not b!4344948) (not bm!302069) (not d!1282974) (not bm!302066))
(check-sat)
