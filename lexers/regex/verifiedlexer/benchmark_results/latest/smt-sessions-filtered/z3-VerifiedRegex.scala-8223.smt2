; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!425368 () Bool)

(assert start!425368)

(declare-fun b!4379615 () Bool)

(declare-fun res!1803664 () Bool)

(declare-fun e!2726192 () Bool)

(assert (=> b!4379615 (=> (not res!1803664) (not e!2726192))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4973 0))(
  ( (HashableExt!4972 (__x!30676 Int)) )
))
(declare-fun hashF!1247 () Hashable!4973)

(declare-datatypes ((K!10520 0))(
  ( (K!10521 (val!16687 Int)) )
))
(declare-fun key!3918 () K!10520)

(declare-fun hash!1754 (Hashable!4973 K!10520) (_ BitVec 64))

(assert (=> b!4379615 (= res!1803664 (= (hash!1754 hashF!1247 key!3918) hash!377))))

(declare-fun res!1803662 () Bool)

(assert (=> start!425368 (=> (not res!1803662) (not e!2726192))))

(declare-datatypes ((V!10766 0))(
  ( (V!10767 (val!16688 Int)) )
))
(declare-datatypes ((tuple2!48694 0))(
  ( (tuple2!48695 (_1!27641 K!10520) (_2!27641 V!10766)) )
))
(declare-datatypes ((List!49286 0))(
  ( (Nil!49162) (Cons!49162 (h!54761 tuple2!48694) (t!356212 List!49286)) )
))
(declare-datatypes ((tuple2!48696 0))(
  ( (tuple2!48697 (_1!27642 (_ BitVec 64)) (_2!27642 List!49286)) )
))
(declare-datatypes ((List!49287 0))(
  ( (Nil!49163) (Cons!49163 (h!54762 tuple2!48696) (t!356213 List!49287)) )
))
(declare-datatypes ((ListLongMap!1795 0))(
  ( (ListLongMap!1796 (toList!3145 List!49287)) )
))
(declare-fun lm!1707 () ListLongMap!1795)

(declare-fun lambda!145373 () Int)

(declare-fun forall!9277 (List!49287 Int) Bool)

(assert (=> start!425368 (= res!1803662 (forall!9277 (toList!3145 lm!1707) lambda!145373))))

(assert (=> start!425368 e!2726192))

(declare-fun e!2726193 () Bool)

(assert (=> start!425368 e!2726193))

(assert (=> start!425368 true))

(declare-fun e!2726197 () Bool)

(declare-fun inv!64706 (ListLongMap!1795) Bool)

(assert (=> start!425368 (and (inv!64706 lm!1707) e!2726197)))

(declare-fun tp_is_empty!25561 () Bool)

(assert (=> start!425368 tp_is_empty!25561))

(declare-fun tp_is_empty!25563 () Bool)

(assert (=> start!425368 tp_is_empty!25563))

(declare-fun b!4379616 () Bool)

(declare-fun res!1803658 () Bool)

(declare-fun e!2726196 () Bool)

(assert (=> b!4379616 (=> res!1803658 e!2726196)))

(declare-fun newBucket!200 () List!49286)

(declare-fun noDuplicateKeys!581 (List!49286) Bool)

(assert (=> b!4379616 (= res!1803658 (not (noDuplicateKeys!581 newBucket!200)))))

(declare-fun b!4379617 () Bool)

(declare-fun e!2726191 () Bool)

(assert (=> b!4379617 (= e!2726191 (not e!2726196))))

(declare-fun res!1803669 () Bool)

(assert (=> b!4379617 (=> res!1803669 e!2726196)))

(declare-fun lt!1590284 () List!49286)

(assert (=> b!4379617 (= res!1803669 (not (= newBucket!200 lt!1590284)))))

(declare-fun lt!1590279 () tuple2!48694)

(declare-fun lt!1590281 () List!49286)

(assert (=> b!4379617 (= lt!1590284 (Cons!49162 lt!1590279 lt!1590281))))

(declare-fun lt!1590272 () List!49286)

(declare-fun removePairForKey!549 (List!49286 K!10520) List!49286)

(assert (=> b!4379617 (= lt!1590281 (removePairForKey!549 lt!1590272 key!3918))))

(declare-fun newValue!99 () V!10766)

(assert (=> b!4379617 (= lt!1590279 (tuple2!48695 key!3918 newValue!99))))

(declare-datatypes ((Unit!75516 0))(
  ( (Unit!75517) )
))
(declare-fun lt!1590270 () Unit!75516)

(declare-fun lt!1590274 () tuple2!48696)

(declare-fun forallContained!1915 (List!49287 Int tuple2!48696) Unit!75516)

(assert (=> b!4379617 (= lt!1590270 (forallContained!1915 (toList!3145 lm!1707) lambda!145373 lt!1590274))))

(declare-fun contains!11497 (List!49287 tuple2!48696) Bool)

(assert (=> b!4379617 (contains!11497 (toList!3145 lm!1707) lt!1590274)))

(assert (=> b!4379617 (= lt!1590274 (tuple2!48697 hash!377 lt!1590272))))

(declare-fun lt!1590282 () Unit!75516)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!426 (List!49287 (_ BitVec 64) List!49286) Unit!75516)

(assert (=> b!4379617 (= lt!1590282 (lemmaGetValueByKeyImpliesContainsTuple!426 (toList!3145 lm!1707) hash!377 lt!1590272))))

(declare-fun apply!11433 (ListLongMap!1795 (_ BitVec 64)) List!49286)

(assert (=> b!4379617 (= lt!1590272 (apply!11433 lm!1707 hash!377))))

(declare-fun b!4379618 () Bool)

(declare-fun tp!1331217 () Bool)

(assert (=> b!4379618 (= e!2726197 tp!1331217)))

(declare-fun b!4379619 () Bool)

(declare-fun e!2726200 () Bool)

(declare-fun e!2726195 () Bool)

(assert (=> b!4379619 (= e!2726200 e!2726195)))

(declare-fun res!1803666 () Bool)

(assert (=> b!4379619 (=> res!1803666 e!2726195)))

(declare-fun lt!1590266 () Bool)

(assert (=> b!4379619 (= res!1803666 lt!1590266)))

(declare-fun e!2726194 () Bool)

(assert (=> b!4379619 e!2726194))

(declare-fun res!1803667 () Bool)

(assert (=> b!4379619 (=> (not res!1803667) (not e!2726194))))

(declare-datatypes ((ListMap!2389 0))(
  ( (ListMap!2390 (toList!3146 List!49286)) )
))
(declare-fun lt!1590287 () ListMap!2389)

(declare-fun contains!11498 (ListMap!2389 K!10520) Bool)

(assert (=> b!4379619 (= res!1803667 (= lt!1590266 (contains!11498 lt!1590287 key!3918)))))

(declare-fun lt!1590290 () ListMap!2389)

(assert (=> b!4379619 (= lt!1590266 (contains!11498 lt!1590290 key!3918))))

(declare-fun lt!1590273 () Unit!75516)

(declare-fun lemmaEquivalentThenSameContains!106 (ListMap!2389 ListMap!2389 K!10520) Unit!75516)

(assert (=> b!4379619 (= lt!1590273 (lemmaEquivalentThenSameContains!106 lt!1590290 lt!1590287 key!3918))))

(declare-fun eq!319 (ListMap!2389 ListMap!2389) Bool)

(assert (=> b!4379619 (eq!319 lt!1590290 lt!1590287)))

(declare-fun lt!1590286 () ListMap!2389)

(declare-fun -!256 (ListMap!2389 K!10520) ListMap!2389)

(assert (=> b!4379619 (= lt!1590287 (-!256 lt!1590286 key!3918))))

(declare-fun lt!1590267 () List!49286)

(declare-fun lt!1590268 () Unit!75516)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!71 (ListLongMap!1795 (_ BitVec 64) List!49286 K!10520 Hashable!4973) Unit!75516)

(assert (=> b!4379619 (= lt!1590268 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!71 lm!1707 hash!377 lt!1590267 key!3918 hashF!1247))))

(declare-fun lt!1590275 () ListMap!2389)

(assert (=> b!4379619 (= lt!1590275 lt!1590290)))

(declare-fun lt!1590280 () ListLongMap!1795)

(declare-fun extractMap!640 (List!49287) ListMap!2389)

(assert (=> b!4379619 (= lt!1590290 (extractMap!640 (toList!3145 lt!1590280)))))

(assert (=> b!4379619 (= lt!1590267 lt!1590281)))

(declare-fun +!793 (ListLongMap!1795 tuple2!48696) ListLongMap!1795)

(assert (=> b!4379619 (= lt!1590280 (+!793 lm!1707 (tuple2!48697 hash!377 lt!1590267)))))

(declare-fun tail!7074 (List!49286) List!49286)

(assert (=> b!4379619 (= lt!1590267 (tail!7074 newBucket!200))))

(declare-fun e!2726199 () Bool)

(assert (=> b!4379619 e!2726199))

(declare-fun res!1803656 () Bool)

(assert (=> b!4379619 (=> (not res!1803656) (not e!2726199))))

(declare-fun lt!1590276 () ListMap!2389)

(declare-fun lt!1590288 () ListMap!2389)

(assert (=> b!4379619 (= res!1803656 (eq!319 lt!1590276 lt!1590288))))

(declare-fun +!794 (ListMap!2389 tuple2!48694) ListMap!2389)

(assert (=> b!4379619 (= lt!1590288 (+!794 lt!1590275 lt!1590279))))

(declare-fun lt!1590285 () ListMap!2389)

(declare-fun addToMapMapFromBucket!262 (List!49286 ListMap!2389) ListMap!2389)

(assert (=> b!4379619 (= lt!1590275 (addToMapMapFromBucket!262 lt!1590281 lt!1590285))))

(declare-fun lt!1590269 () Unit!75516)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!128 (ListMap!2389 K!10520 V!10766 List!49286) Unit!75516)

(assert (=> b!4379619 (= lt!1590269 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!128 lt!1590285 key!3918 newValue!99 lt!1590281))))

(declare-fun lt!1590283 () ListMap!2389)

(assert (=> b!4379619 (= lt!1590283 lt!1590276)))

(assert (=> b!4379619 (= lt!1590276 (addToMapMapFromBucket!262 lt!1590281 (+!794 lt!1590285 lt!1590279)))))

(declare-fun lt!1590289 () ListMap!2389)

(assert (=> b!4379619 (= lt!1590289 lt!1590283)))

(assert (=> b!4379619 (= lt!1590283 (addToMapMapFromBucket!262 lt!1590284 lt!1590285))))

(assert (=> b!4379619 (= lt!1590289 (addToMapMapFromBucket!262 newBucket!200 lt!1590285))))

(declare-fun lt!1590278 () ListLongMap!1795)

(assert (=> b!4379619 (= lt!1590289 (extractMap!640 (toList!3145 lt!1590278)))))

(assert (=> b!4379619 (= lt!1590285 (extractMap!640 (t!356213 (toList!3145 lm!1707))))))

(declare-fun b!4379620 () Bool)

(declare-fun lt!1590271 () tuple2!48696)

(declare-fun e!2726198 () Bool)

(get-info :version)

(assert (=> b!4379620 (= e!2726198 (or (not ((_ is Cons!49163) (toList!3145 lm!1707))) (not (= (_1!27642 (h!54762 (toList!3145 lm!1707))) hash!377)) (= lt!1590278 (ListLongMap!1796 (Cons!49163 lt!1590271 (t!356213 (toList!3145 lm!1707)))))))))

(declare-fun b!4379621 () Bool)

(declare-fun res!1803657 () Bool)

(assert (=> b!4379621 (=> (not res!1803657) (not e!2726192))))

(declare-fun allKeysSameHash!539 (List!49286 (_ BitVec 64) Hashable!4973) Bool)

(assert (=> b!4379621 (= res!1803657 (allKeysSameHash!539 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4379622 () Bool)

(declare-fun res!1803668 () Bool)

(assert (=> b!4379622 (=> (not res!1803668) (not e!2726198))))

(assert (=> b!4379622 (= res!1803668 (forall!9277 (toList!3145 lt!1590278) lambda!145373))))

(declare-fun b!4379623 () Bool)

(declare-fun res!1803663 () Bool)

(assert (=> b!4379623 (=> (not res!1803663) (not e!2726192))))

(declare-fun allKeysSameHashInMap!685 (ListLongMap!1795 Hashable!4973) Bool)

(assert (=> b!4379623 (= res!1803663 (allKeysSameHashInMap!685 lm!1707 hashF!1247))))

(declare-fun b!4379624 () Bool)

(assert (=> b!4379624 (= e!2726195 (forall!9277 (toList!3145 lt!1590280) lambda!145373))))

(declare-fun b!4379625 () Bool)

(assert (=> b!4379625 (= e!2726194 (= (apply!11433 lt!1590280 hash!377) lt!1590267))))

(declare-fun b!4379626 () Bool)

(assert (=> b!4379626 (= e!2726196 e!2726200)))

(declare-fun res!1803660 () Bool)

(assert (=> b!4379626 (=> res!1803660 e!2726200)))

(assert (=> b!4379626 (= res!1803660 (or (not ((_ is Cons!49163) (toList!3145 lm!1707))) (not (= (_1!27642 (h!54762 (toList!3145 lm!1707))) hash!377))))))

(assert (=> b!4379626 e!2726198))

(declare-fun res!1803659 () Bool)

(assert (=> b!4379626 (=> (not res!1803659) (not e!2726198))))

(assert (=> b!4379626 (= res!1803659 (forall!9277 (toList!3145 lt!1590278) lambda!145373))))

(assert (=> b!4379626 (= lt!1590278 (+!793 lm!1707 lt!1590271))))

(assert (=> b!4379626 (= lt!1590271 (tuple2!48697 hash!377 newBucket!200))))

(declare-fun lt!1590277 () Unit!75516)

(declare-fun addValidProp!227 (ListLongMap!1795 Int (_ BitVec 64) List!49286) Unit!75516)

(assert (=> b!4379626 (= lt!1590277 (addValidProp!227 lm!1707 lambda!145373 hash!377 newBucket!200))))

(assert (=> b!4379626 (forall!9277 (toList!3145 lm!1707) lambda!145373)))

(declare-fun b!4379627 () Bool)

(assert (=> b!4379627 (= e!2726199 (eq!319 lt!1590283 lt!1590288))))

(declare-fun tp!1331218 () Bool)

(declare-fun b!4379628 () Bool)

(assert (=> b!4379628 (= e!2726193 (and tp_is_empty!25561 tp_is_empty!25563 tp!1331218))))

(declare-fun b!4379629 () Bool)

(declare-fun res!1803665 () Bool)

(assert (=> b!4379629 (=> (not res!1803665) (not e!2726191))))

(declare-fun contains!11499 (ListLongMap!1795 (_ BitVec 64)) Bool)

(assert (=> b!4379629 (= res!1803665 (contains!11499 lm!1707 hash!377))))

(declare-fun b!4379630 () Bool)

(assert (=> b!4379630 (= e!2726192 e!2726191)))

(declare-fun res!1803661 () Bool)

(assert (=> b!4379630 (=> (not res!1803661) (not e!2726191))))

(assert (=> b!4379630 (= res!1803661 (contains!11498 lt!1590286 key!3918))))

(assert (=> b!4379630 (= lt!1590286 (extractMap!640 (toList!3145 lm!1707)))))

(assert (= (and start!425368 res!1803662) b!4379623))

(assert (= (and b!4379623 res!1803663) b!4379615))

(assert (= (and b!4379615 res!1803664) b!4379621))

(assert (= (and b!4379621 res!1803657) b!4379630))

(assert (= (and b!4379630 res!1803661) b!4379629))

(assert (= (and b!4379629 res!1803665) b!4379617))

(assert (= (and b!4379617 (not res!1803669)) b!4379616))

(assert (= (and b!4379616 (not res!1803658)) b!4379626))

(assert (= (and b!4379626 res!1803659) b!4379622))

(assert (= (and b!4379622 res!1803668) b!4379620))

(assert (= (and b!4379626 (not res!1803660)) b!4379619))

(assert (= (and b!4379619 res!1803656) b!4379627))

(assert (= (and b!4379619 res!1803667) b!4379625))

(assert (= (and b!4379619 (not res!1803666)) b!4379624))

(assert (= (and start!425368 ((_ is Cons!49162) newBucket!200)) b!4379628))

(assert (= start!425368 b!4379618))

(declare-fun m!5016805 () Bool)

(assert (=> b!4379626 m!5016805))

(declare-fun m!5016807 () Bool)

(assert (=> b!4379626 m!5016807))

(declare-fun m!5016809 () Bool)

(assert (=> b!4379626 m!5016809))

(declare-fun m!5016811 () Bool)

(assert (=> b!4379626 m!5016811))

(declare-fun m!5016813 () Bool)

(assert (=> b!4379617 m!5016813))

(declare-fun m!5016815 () Bool)

(assert (=> b!4379617 m!5016815))

(declare-fun m!5016817 () Bool)

(assert (=> b!4379617 m!5016817))

(declare-fun m!5016819 () Bool)

(assert (=> b!4379617 m!5016819))

(declare-fun m!5016821 () Bool)

(assert (=> b!4379617 m!5016821))

(declare-fun m!5016823 () Bool)

(assert (=> b!4379623 m!5016823))

(declare-fun m!5016825 () Bool)

(assert (=> b!4379619 m!5016825))

(declare-fun m!5016827 () Bool)

(assert (=> b!4379619 m!5016827))

(declare-fun m!5016829 () Bool)

(assert (=> b!4379619 m!5016829))

(declare-fun m!5016831 () Bool)

(assert (=> b!4379619 m!5016831))

(declare-fun m!5016833 () Bool)

(assert (=> b!4379619 m!5016833))

(declare-fun m!5016835 () Bool)

(assert (=> b!4379619 m!5016835))

(declare-fun m!5016837 () Bool)

(assert (=> b!4379619 m!5016837))

(declare-fun m!5016839 () Bool)

(assert (=> b!4379619 m!5016839))

(declare-fun m!5016841 () Bool)

(assert (=> b!4379619 m!5016841))

(declare-fun m!5016843 () Bool)

(assert (=> b!4379619 m!5016843))

(declare-fun m!5016845 () Bool)

(assert (=> b!4379619 m!5016845))

(declare-fun m!5016847 () Bool)

(assert (=> b!4379619 m!5016847))

(declare-fun m!5016849 () Bool)

(assert (=> b!4379619 m!5016849))

(declare-fun m!5016851 () Bool)

(assert (=> b!4379619 m!5016851))

(declare-fun m!5016853 () Bool)

(assert (=> b!4379619 m!5016853))

(declare-fun m!5016855 () Bool)

(assert (=> b!4379619 m!5016855))

(assert (=> b!4379619 m!5016839))

(declare-fun m!5016857 () Bool)

(assert (=> b!4379619 m!5016857))

(declare-fun m!5016859 () Bool)

(assert (=> b!4379619 m!5016859))

(declare-fun m!5016861 () Bool)

(assert (=> b!4379619 m!5016861))

(declare-fun m!5016863 () Bool)

(assert (=> b!4379625 m!5016863))

(declare-fun m!5016865 () Bool)

(assert (=> b!4379615 m!5016865))

(declare-fun m!5016867 () Bool)

(assert (=> b!4379627 m!5016867))

(declare-fun m!5016869 () Bool)

(assert (=> b!4379624 m!5016869))

(declare-fun m!5016871 () Bool)

(assert (=> b!4379629 m!5016871))

(declare-fun m!5016873 () Bool)

(assert (=> b!4379621 m!5016873))

(assert (=> start!425368 m!5016811))

(declare-fun m!5016875 () Bool)

(assert (=> start!425368 m!5016875))

(declare-fun m!5016877 () Bool)

(assert (=> b!4379616 m!5016877))

(declare-fun m!5016879 () Bool)

(assert (=> b!4379630 m!5016879))

(declare-fun m!5016881 () Bool)

(assert (=> b!4379630 m!5016881))

(assert (=> b!4379622 m!5016805))

(check-sat (not b!4379621) tp_is_empty!25563 (not b!4379628) (not b!4379615) (not b!4379629) (not b!4379626) (not b!4379624) (not b!4379617) (not start!425368) (not b!4379627) (not b!4379618) tp_is_empty!25561 (not b!4379625) (not b!4379619) (not b!4379623) (not b!4379616) (not b!4379630) (not b!4379622))
(check-sat)
(get-model)

(declare-fun d!1304208 () Bool)

(declare-datatypes ((Option!10562 0))(
  ( (None!10561) (Some!10561 (v!43575 List!49286)) )
))
(declare-fun get!15989 (Option!10562) List!49286)

(declare-fun getValueByKey!548 (List!49287 (_ BitVec 64)) Option!10562)

(assert (=> d!1304208 (= (apply!11433 lt!1590280 hash!377) (get!15989 (getValueByKey!548 (toList!3145 lt!1590280) hash!377)))))

(declare-fun bs!662931 () Bool)

(assert (= bs!662931 d!1304208))

(declare-fun m!5016883 () Bool)

(assert (=> bs!662931 m!5016883))

(assert (=> bs!662931 m!5016883))

(declare-fun m!5016885 () Bool)

(assert (=> bs!662931 m!5016885))

(assert (=> b!4379625 d!1304208))

(declare-fun d!1304210 () Bool)

(declare-fun res!1803674 () Bool)

(declare-fun e!2726205 () Bool)

(assert (=> d!1304210 (=> res!1803674 e!2726205)))

(assert (=> d!1304210 (= res!1803674 (not ((_ is Cons!49162) newBucket!200)))))

(assert (=> d!1304210 (= (noDuplicateKeys!581 newBucket!200) e!2726205)))

(declare-fun b!4379635 () Bool)

(declare-fun e!2726206 () Bool)

(assert (=> b!4379635 (= e!2726205 e!2726206)))

(declare-fun res!1803675 () Bool)

(assert (=> b!4379635 (=> (not res!1803675) (not e!2726206))))

(declare-fun containsKey!854 (List!49286 K!10520) Bool)

(assert (=> b!4379635 (= res!1803675 (not (containsKey!854 (t!356212 newBucket!200) (_1!27641 (h!54761 newBucket!200)))))))

(declare-fun b!4379636 () Bool)

(assert (=> b!4379636 (= e!2726206 (noDuplicateKeys!581 (t!356212 newBucket!200)))))

(assert (= (and d!1304210 (not res!1803674)) b!4379635))

(assert (= (and b!4379635 res!1803675) b!4379636))

(declare-fun m!5016887 () Bool)

(assert (=> b!4379635 m!5016887))

(declare-fun m!5016889 () Bool)

(assert (=> b!4379636 m!5016889))

(assert (=> b!4379616 d!1304210))

(declare-fun d!1304212 () Bool)

(declare-fun hash!1758 (Hashable!4973 K!10520) (_ BitVec 64))

(assert (=> d!1304212 (= (hash!1754 hashF!1247 key!3918) (hash!1758 hashF!1247 key!3918))))

(declare-fun bs!662932 () Bool)

(assert (= bs!662932 d!1304212))

(declare-fun m!5016891 () Bool)

(assert (=> bs!662932 m!5016891))

(assert (=> b!4379615 d!1304212))

(declare-fun d!1304214 () Bool)

(declare-fun res!1803686 () Bool)

(declare-fun e!2726223 () Bool)

(assert (=> d!1304214 (=> res!1803686 e!2726223)))

(assert (=> d!1304214 (= res!1803686 ((_ is Nil!49163) (toList!3145 lt!1590278)))))

(assert (=> d!1304214 (= (forall!9277 (toList!3145 lt!1590278) lambda!145373) e!2726223)))

(declare-fun b!4379659 () Bool)

(declare-fun e!2726224 () Bool)

(assert (=> b!4379659 (= e!2726223 e!2726224)))

(declare-fun res!1803687 () Bool)

(assert (=> b!4379659 (=> (not res!1803687) (not e!2726224))))

(declare-fun dynLambda!20713 (Int tuple2!48696) Bool)

(assert (=> b!4379659 (= res!1803687 (dynLambda!20713 lambda!145373 (h!54762 (toList!3145 lt!1590278))))))

(declare-fun b!4379660 () Bool)

(assert (=> b!4379660 (= e!2726224 (forall!9277 (t!356213 (toList!3145 lt!1590278)) lambda!145373))))

(assert (= (and d!1304214 (not res!1803686)) b!4379659))

(assert (= (and b!4379659 res!1803687) b!4379660))

(declare-fun b_lambda!135305 () Bool)

(assert (=> (not b_lambda!135305) (not b!4379659)))

(declare-fun m!5016893 () Bool)

(assert (=> b!4379659 m!5016893))

(declare-fun m!5016895 () Bool)

(assert (=> b!4379660 m!5016895))

(assert (=> b!4379626 d!1304214))

(declare-fun d!1304216 () Bool)

(declare-fun e!2726240 () Bool)

(assert (=> d!1304216 e!2726240))

(declare-fun res!1803699 () Bool)

(assert (=> d!1304216 (=> (not res!1803699) (not e!2726240))))

(declare-fun lt!1590326 () ListLongMap!1795)

(assert (=> d!1304216 (= res!1803699 (contains!11499 lt!1590326 (_1!27642 lt!1590271)))))

(declare-fun lt!1590329 () List!49287)

(assert (=> d!1304216 (= lt!1590326 (ListLongMap!1796 lt!1590329))))

(declare-fun lt!1590328 () Unit!75516)

(declare-fun lt!1590327 () Unit!75516)

(assert (=> d!1304216 (= lt!1590328 lt!1590327)))

(assert (=> d!1304216 (= (getValueByKey!548 lt!1590329 (_1!27642 lt!1590271)) (Some!10561 (_2!27642 lt!1590271)))))

(declare-fun lemmaContainsTupThenGetReturnValue!311 (List!49287 (_ BitVec 64) List!49286) Unit!75516)

(assert (=> d!1304216 (= lt!1590327 (lemmaContainsTupThenGetReturnValue!311 lt!1590329 (_1!27642 lt!1590271) (_2!27642 lt!1590271)))))

(declare-fun insertStrictlySorted!178 (List!49287 (_ BitVec 64) List!49286) List!49287)

(assert (=> d!1304216 (= lt!1590329 (insertStrictlySorted!178 (toList!3145 lm!1707) (_1!27642 lt!1590271) (_2!27642 lt!1590271)))))

(assert (=> d!1304216 (= (+!793 lm!1707 lt!1590271) lt!1590326)))

(declare-fun b!4379684 () Bool)

(declare-fun res!1803700 () Bool)

(assert (=> b!4379684 (=> (not res!1803700) (not e!2726240))))

(assert (=> b!4379684 (= res!1803700 (= (getValueByKey!548 (toList!3145 lt!1590326) (_1!27642 lt!1590271)) (Some!10561 (_2!27642 lt!1590271))))))

(declare-fun b!4379685 () Bool)

(assert (=> b!4379685 (= e!2726240 (contains!11497 (toList!3145 lt!1590326) lt!1590271))))

(assert (= (and d!1304216 res!1803699) b!4379684))

(assert (= (and b!4379684 res!1803700) b!4379685))

(declare-fun m!5016923 () Bool)

(assert (=> d!1304216 m!5016923))

(declare-fun m!5016929 () Bool)

(assert (=> d!1304216 m!5016929))

(declare-fun m!5016931 () Bool)

(assert (=> d!1304216 m!5016931))

(declare-fun m!5016933 () Bool)

(assert (=> d!1304216 m!5016933))

(declare-fun m!5016935 () Bool)

(assert (=> b!4379684 m!5016935))

(declare-fun m!5016937 () Bool)

(assert (=> b!4379685 m!5016937))

(assert (=> b!4379626 d!1304216))

(declare-fun d!1304224 () Bool)

(assert (=> d!1304224 (forall!9277 (toList!3145 (+!793 lm!1707 (tuple2!48697 hash!377 newBucket!200))) lambda!145373)))

(declare-fun lt!1590335 () Unit!75516)

(declare-fun choose!27324 (ListLongMap!1795 Int (_ BitVec 64) List!49286) Unit!75516)

(assert (=> d!1304224 (= lt!1590335 (choose!27324 lm!1707 lambda!145373 hash!377 newBucket!200))))

(declare-fun e!2726254 () Bool)

(assert (=> d!1304224 e!2726254))

(declare-fun res!1803714 () Bool)

(assert (=> d!1304224 (=> (not res!1803714) (not e!2726254))))

(assert (=> d!1304224 (= res!1803714 (forall!9277 (toList!3145 lm!1707) lambda!145373))))

(assert (=> d!1304224 (= (addValidProp!227 lm!1707 lambda!145373 hash!377 newBucket!200) lt!1590335)))

(declare-fun b!4379704 () Bool)

(assert (=> b!4379704 (= e!2726254 (dynLambda!20713 lambda!145373 (tuple2!48697 hash!377 newBucket!200)))))

(assert (= (and d!1304224 res!1803714) b!4379704))

(declare-fun b_lambda!135309 () Bool)

(assert (=> (not b_lambda!135309) (not b!4379704)))

(declare-fun m!5016963 () Bool)

(assert (=> d!1304224 m!5016963))

(declare-fun m!5016965 () Bool)

(assert (=> d!1304224 m!5016965))

(declare-fun m!5016967 () Bool)

(assert (=> d!1304224 m!5016967))

(assert (=> d!1304224 m!5016811))

(declare-fun m!5016969 () Bool)

(assert (=> b!4379704 m!5016969))

(assert (=> b!4379626 d!1304224))

(declare-fun d!1304236 () Bool)

(declare-fun res!1803715 () Bool)

(declare-fun e!2726255 () Bool)

(assert (=> d!1304236 (=> res!1803715 e!2726255)))

(assert (=> d!1304236 (= res!1803715 ((_ is Nil!49163) (toList!3145 lm!1707)))))

(assert (=> d!1304236 (= (forall!9277 (toList!3145 lm!1707) lambda!145373) e!2726255)))

(declare-fun b!4379705 () Bool)

(declare-fun e!2726256 () Bool)

(assert (=> b!4379705 (= e!2726255 e!2726256)))

(declare-fun res!1803716 () Bool)

(assert (=> b!4379705 (=> (not res!1803716) (not e!2726256))))

(assert (=> b!4379705 (= res!1803716 (dynLambda!20713 lambda!145373 (h!54762 (toList!3145 lm!1707))))))

(declare-fun b!4379706 () Bool)

(assert (=> b!4379706 (= e!2726256 (forall!9277 (t!356213 (toList!3145 lm!1707)) lambda!145373))))

(assert (= (and d!1304236 (not res!1803715)) b!4379705))

(assert (= (and b!4379705 res!1803716) b!4379706))

(declare-fun b_lambda!135311 () Bool)

(assert (=> (not b_lambda!135311) (not b!4379705)))

(declare-fun m!5016971 () Bool)

(assert (=> b!4379705 m!5016971))

(declare-fun m!5016973 () Bool)

(assert (=> b!4379706 m!5016973))

(assert (=> b!4379626 d!1304236))

(declare-fun d!1304238 () Bool)

(assert (=> d!1304238 (= (apply!11433 lm!1707 hash!377) (get!15989 (getValueByKey!548 (toList!3145 lm!1707) hash!377)))))

(declare-fun bs!662937 () Bool)

(assert (= bs!662937 d!1304238))

(declare-fun m!5016975 () Bool)

(assert (=> bs!662937 m!5016975))

(assert (=> bs!662937 m!5016975))

(declare-fun m!5016977 () Bool)

(assert (=> bs!662937 m!5016977))

(assert (=> b!4379617 d!1304238))

(declare-fun b!4379717 () Bool)

(declare-fun e!2726262 () List!49286)

(assert (=> b!4379717 (= e!2726262 (Cons!49162 (h!54761 lt!1590272) (removePairForKey!549 (t!356212 lt!1590272) key!3918)))))

(declare-fun b!4379716 () Bool)

(declare-fun e!2726261 () List!49286)

(assert (=> b!4379716 (= e!2726261 e!2726262)))

(declare-fun c!744878 () Bool)

(assert (=> b!4379716 (= c!744878 ((_ is Cons!49162) lt!1590272))))

(declare-fun d!1304240 () Bool)

(declare-fun lt!1590341 () List!49286)

(assert (=> d!1304240 (not (containsKey!854 lt!1590341 key!3918))))

(assert (=> d!1304240 (= lt!1590341 e!2726261)))

(declare-fun c!744877 () Bool)

(assert (=> d!1304240 (= c!744877 (and ((_ is Cons!49162) lt!1590272) (= (_1!27641 (h!54761 lt!1590272)) key!3918)))))

(assert (=> d!1304240 (noDuplicateKeys!581 lt!1590272)))

(assert (=> d!1304240 (= (removePairForKey!549 lt!1590272 key!3918) lt!1590341)))

(declare-fun b!4379715 () Bool)

(assert (=> b!4379715 (= e!2726261 (t!356212 lt!1590272))))

(declare-fun b!4379718 () Bool)

(assert (=> b!4379718 (= e!2726262 Nil!49162)))

(assert (= (and d!1304240 c!744877) b!4379715))

(assert (= (and d!1304240 (not c!744877)) b!4379716))

(assert (= (and b!4379716 c!744878) b!4379717))

(assert (= (and b!4379716 (not c!744878)) b!4379718))

(declare-fun m!5016991 () Bool)

(assert (=> b!4379717 m!5016991))

(declare-fun m!5016993 () Bool)

(assert (=> d!1304240 m!5016993))

(declare-fun m!5016995 () Bool)

(assert (=> d!1304240 m!5016995))

(assert (=> b!4379617 d!1304240))

(declare-fun d!1304244 () Bool)

(declare-fun lt!1590344 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7817 (List!49287) (InoxSet tuple2!48696))

(assert (=> d!1304244 (= lt!1590344 (select (content!7817 (toList!3145 lm!1707)) lt!1590274))))

(declare-fun e!2726268 () Bool)

(assert (=> d!1304244 (= lt!1590344 e!2726268)))

(declare-fun res!1803721 () Bool)

(assert (=> d!1304244 (=> (not res!1803721) (not e!2726268))))

(assert (=> d!1304244 (= res!1803721 ((_ is Cons!49163) (toList!3145 lm!1707)))))

(assert (=> d!1304244 (= (contains!11497 (toList!3145 lm!1707) lt!1590274) lt!1590344)))

(declare-fun b!4379723 () Bool)

(declare-fun e!2726267 () Bool)

(assert (=> b!4379723 (= e!2726268 e!2726267)))

(declare-fun res!1803722 () Bool)

(assert (=> b!4379723 (=> res!1803722 e!2726267)))

(assert (=> b!4379723 (= res!1803722 (= (h!54762 (toList!3145 lm!1707)) lt!1590274))))

(declare-fun b!4379724 () Bool)

(assert (=> b!4379724 (= e!2726267 (contains!11497 (t!356213 (toList!3145 lm!1707)) lt!1590274))))

(assert (= (and d!1304244 res!1803721) b!4379723))

(assert (= (and b!4379723 (not res!1803722)) b!4379724))

(declare-fun m!5016997 () Bool)

(assert (=> d!1304244 m!5016997))

(declare-fun m!5016999 () Bool)

(assert (=> d!1304244 m!5016999))

(declare-fun m!5017001 () Bool)

(assert (=> b!4379724 m!5017001))

(assert (=> b!4379617 d!1304244))

(declare-fun d!1304246 () Bool)

(assert (=> d!1304246 (contains!11497 (toList!3145 lm!1707) (tuple2!48697 hash!377 lt!1590272))))

(declare-fun lt!1590347 () Unit!75516)

(declare-fun choose!27325 (List!49287 (_ BitVec 64) List!49286) Unit!75516)

(assert (=> d!1304246 (= lt!1590347 (choose!27325 (toList!3145 lm!1707) hash!377 lt!1590272))))

(declare-fun e!2726271 () Bool)

(assert (=> d!1304246 e!2726271))

(declare-fun res!1803725 () Bool)

(assert (=> d!1304246 (=> (not res!1803725) (not e!2726271))))

(declare-fun isStrictlySorted!151 (List!49287) Bool)

(assert (=> d!1304246 (= res!1803725 (isStrictlySorted!151 (toList!3145 lm!1707)))))

(assert (=> d!1304246 (= (lemmaGetValueByKeyImpliesContainsTuple!426 (toList!3145 lm!1707) hash!377 lt!1590272) lt!1590347)))

(declare-fun b!4379727 () Bool)

(assert (=> b!4379727 (= e!2726271 (= (getValueByKey!548 (toList!3145 lm!1707) hash!377) (Some!10561 lt!1590272)))))

(assert (= (and d!1304246 res!1803725) b!4379727))

(declare-fun m!5017003 () Bool)

(assert (=> d!1304246 m!5017003))

(declare-fun m!5017005 () Bool)

(assert (=> d!1304246 m!5017005))

(declare-fun m!5017007 () Bool)

(assert (=> d!1304246 m!5017007))

(assert (=> b!4379727 m!5016975))

(assert (=> b!4379617 d!1304246))

(declare-fun d!1304248 () Bool)

(assert (=> d!1304248 (dynLambda!20713 lambda!145373 lt!1590274)))

(declare-fun lt!1590350 () Unit!75516)

(declare-fun choose!27326 (List!49287 Int tuple2!48696) Unit!75516)

(assert (=> d!1304248 (= lt!1590350 (choose!27326 (toList!3145 lm!1707) lambda!145373 lt!1590274))))

(declare-fun e!2726274 () Bool)

(assert (=> d!1304248 e!2726274))

(declare-fun res!1803728 () Bool)

(assert (=> d!1304248 (=> (not res!1803728) (not e!2726274))))

(assert (=> d!1304248 (= res!1803728 (forall!9277 (toList!3145 lm!1707) lambda!145373))))

(assert (=> d!1304248 (= (forallContained!1915 (toList!3145 lm!1707) lambda!145373 lt!1590274) lt!1590350)))

(declare-fun b!4379730 () Bool)

(assert (=> b!4379730 (= e!2726274 (contains!11497 (toList!3145 lm!1707) lt!1590274))))

(assert (= (and d!1304248 res!1803728) b!4379730))

(declare-fun b_lambda!135313 () Bool)

(assert (=> (not b_lambda!135313) (not d!1304248)))

(declare-fun m!5017009 () Bool)

(assert (=> d!1304248 m!5017009))

(declare-fun m!5017011 () Bool)

(assert (=> d!1304248 m!5017011))

(assert (=> d!1304248 m!5016811))

(assert (=> b!4379730 m!5016813))

(assert (=> b!4379617 d!1304248))

(declare-fun d!1304250 () Bool)

(declare-fun content!7818 (List!49286) (InoxSet tuple2!48694))

(assert (=> d!1304250 (= (eq!319 lt!1590283 lt!1590288) (= (content!7818 (toList!3146 lt!1590283)) (content!7818 (toList!3146 lt!1590288))))))

(declare-fun bs!662939 () Bool)

(assert (= bs!662939 d!1304250))

(declare-fun m!5017013 () Bool)

(assert (=> bs!662939 m!5017013))

(declare-fun m!5017015 () Bool)

(assert (=> bs!662939 m!5017015))

(assert (=> b!4379627 d!1304250))

(declare-fun d!1304252 () Bool)

(declare-fun e!2726279 () Bool)

(assert (=> d!1304252 e!2726279))

(declare-fun res!1803731 () Bool)

(assert (=> d!1304252 (=> res!1803731 e!2726279)))

(declare-fun lt!1590361 () Bool)

(assert (=> d!1304252 (= res!1803731 (not lt!1590361))))

(declare-fun lt!1590362 () Bool)

(assert (=> d!1304252 (= lt!1590361 lt!1590362)))

(declare-fun lt!1590360 () Unit!75516)

(declare-fun e!2726280 () Unit!75516)

(assert (=> d!1304252 (= lt!1590360 e!2726280)))

(declare-fun c!744881 () Bool)

(assert (=> d!1304252 (= c!744881 lt!1590362)))

(declare-fun containsKey!855 (List!49287 (_ BitVec 64)) Bool)

(assert (=> d!1304252 (= lt!1590362 (containsKey!855 (toList!3145 lm!1707) hash!377))))

(assert (=> d!1304252 (= (contains!11499 lm!1707 hash!377) lt!1590361)))

(declare-fun b!4379737 () Bool)

(declare-fun lt!1590359 () Unit!75516)

(assert (=> b!4379737 (= e!2726280 lt!1590359)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!459 (List!49287 (_ BitVec 64)) Unit!75516)

(assert (=> b!4379737 (= lt!1590359 (lemmaContainsKeyImpliesGetValueByKeyDefined!459 (toList!3145 lm!1707) hash!377))))

(declare-fun isDefined!7856 (Option!10562) Bool)

(assert (=> b!4379737 (isDefined!7856 (getValueByKey!548 (toList!3145 lm!1707) hash!377))))

(declare-fun b!4379738 () Bool)

(declare-fun Unit!75544 () Unit!75516)

(assert (=> b!4379738 (= e!2726280 Unit!75544)))

(declare-fun b!4379739 () Bool)

(assert (=> b!4379739 (= e!2726279 (isDefined!7856 (getValueByKey!548 (toList!3145 lm!1707) hash!377)))))

(assert (= (and d!1304252 c!744881) b!4379737))

(assert (= (and d!1304252 (not c!744881)) b!4379738))

(assert (= (and d!1304252 (not res!1803731)) b!4379739))

(declare-fun m!5017017 () Bool)

(assert (=> d!1304252 m!5017017))

(declare-fun m!5017019 () Bool)

(assert (=> b!4379737 m!5017019))

(assert (=> b!4379737 m!5016975))

(assert (=> b!4379737 m!5016975))

(declare-fun m!5017021 () Bool)

(assert (=> b!4379737 m!5017021))

(assert (=> b!4379739 m!5016975))

(assert (=> b!4379739 m!5016975))

(assert (=> b!4379739 m!5017021))

(assert (=> b!4379629 d!1304252))

(assert (=> start!425368 d!1304236))

(declare-fun d!1304254 () Bool)

(assert (=> d!1304254 (= (inv!64706 lm!1707) (isStrictlySorted!151 (toList!3145 lm!1707)))))

(declare-fun bs!662940 () Bool)

(assert (= bs!662940 d!1304254))

(assert (=> bs!662940 m!5017007))

(assert (=> start!425368 d!1304254))

(declare-fun b!4379822 () Bool)

(assert (=> b!4379822 true))

(declare-fun bs!663031 () Bool)

(declare-fun b!4379820 () Bool)

(assert (= bs!663031 (and b!4379820 b!4379822)))

(declare-fun lambda!145458 () Int)

(declare-fun lambda!145457 () Int)

(assert (=> bs!663031 (= lambda!145458 lambda!145457)))

(assert (=> b!4379820 true))

(declare-fun lt!1590589 () ListMap!2389)

(declare-fun lambda!145459 () Int)

(assert (=> bs!663031 (= (= lt!1590589 (+!794 lt!1590285 lt!1590279)) (= lambda!145459 lambda!145457))))

(assert (=> b!4379820 (= (= lt!1590589 (+!794 lt!1590285 lt!1590279)) (= lambda!145459 lambda!145458))))

(assert (=> b!4379820 true))

(declare-fun bs!663038 () Bool)

(declare-fun d!1304256 () Bool)

(assert (= bs!663038 (and d!1304256 b!4379822)))

(declare-fun lambda!145461 () Int)

(declare-fun lt!1590598 () ListMap!2389)

(assert (=> bs!663038 (= (= lt!1590598 (+!794 lt!1590285 lt!1590279)) (= lambda!145461 lambda!145457))))

(declare-fun bs!663039 () Bool)

(assert (= bs!663039 (and d!1304256 b!4379820)))

(assert (=> bs!663039 (= (= lt!1590598 (+!794 lt!1590285 lt!1590279)) (= lambda!145461 lambda!145458))))

(assert (=> bs!663039 (= (= lt!1590598 lt!1590589) (= lambda!145461 lambda!145459))))

(assert (=> d!1304256 true))

(declare-fun e!2726327 () ListMap!2389)

(assert (=> b!4379820 (= e!2726327 lt!1590589)))

(declare-fun lt!1590593 () ListMap!2389)

(assert (=> b!4379820 (= lt!1590593 (+!794 (+!794 lt!1590285 lt!1590279) (h!54761 lt!1590281)))))

(assert (=> b!4379820 (= lt!1590589 (addToMapMapFromBucket!262 (t!356212 lt!1590281) (+!794 (+!794 lt!1590285 lt!1590279) (h!54761 lt!1590281))))))

(declare-fun lt!1590594 () Unit!75516)

(declare-fun call!304681 () Unit!75516)

(assert (=> b!4379820 (= lt!1590594 call!304681)))

(declare-fun call!304682 () Bool)

(assert (=> b!4379820 call!304682))

(declare-fun lt!1590599 () Unit!75516)

(assert (=> b!4379820 (= lt!1590599 lt!1590594)))

(declare-fun forall!9279 (List!49286 Int) Bool)

(assert (=> b!4379820 (forall!9279 (toList!3146 lt!1590593) lambda!145459)))

(declare-fun lt!1590596 () Unit!75516)

(declare-fun Unit!75545 () Unit!75516)

(assert (=> b!4379820 (= lt!1590596 Unit!75545)))

(assert (=> b!4379820 (forall!9279 (t!356212 lt!1590281) lambda!145459)))

(declare-fun lt!1590595 () Unit!75516)

(declare-fun Unit!75546 () Unit!75516)

(assert (=> b!4379820 (= lt!1590595 Unit!75546)))

(declare-fun lt!1590588 () Unit!75516)

(declare-fun Unit!75547 () Unit!75516)

(assert (=> b!4379820 (= lt!1590588 Unit!75547)))

(declare-fun lt!1590592 () Unit!75516)

(declare-fun forallContained!1917 (List!49286 Int tuple2!48694) Unit!75516)

(assert (=> b!4379820 (= lt!1590592 (forallContained!1917 (toList!3146 lt!1590593) lambda!145459 (h!54761 lt!1590281)))))

(assert (=> b!4379820 (contains!11498 lt!1590593 (_1!27641 (h!54761 lt!1590281)))))

(declare-fun lt!1590581 () Unit!75516)

(declare-fun Unit!75548 () Unit!75516)

(assert (=> b!4379820 (= lt!1590581 Unit!75548)))

(assert (=> b!4379820 (contains!11498 lt!1590589 (_1!27641 (h!54761 lt!1590281)))))

(declare-fun lt!1590583 () Unit!75516)

(declare-fun Unit!75549 () Unit!75516)

(assert (=> b!4379820 (= lt!1590583 Unit!75549)))

(assert (=> b!4379820 (forall!9279 lt!1590281 lambda!145459)))

(declare-fun lt!1590591 () Unit!75516)

(declare-fun Unit!75550 () Unit!75516)

(assert (=> b!4379820 (= lt!1590591 Unit!75550)))

(assert (=> b!4379820 (forall!9279 (toList!3146 lt!1590593) lambda!145459)))

(declare-fun lt!1590590 () Unit!75516)

(declare-fun Unit!75551 () Unit!75516)

(assert (=> b!4379820 (= lt!1590590 Unit!75551)))

(declare-fun lt!1590586 () Unit!75516)

(declare-fun Unit!75552 () Unit!75516)

(assert (=> b!4379820 (= lt!1590586 Unit!75552)))

(declare-fun lt!1590597 () Unit!75516)

(declare-fun addForallContainsKeyThenBeforeAdding!107 (ListMap!2389 ListMap!2389 K!10520 V!10766) Unit!75516)

(assert (=> b!4379820 (= lt!1590597 (addForallContainsKeyThenBeforeAdding!107 (+!794 lt!1590285 lt!1590279) lt!1590589 (_1!27641 (h!54761 lt!1590281)) (_2!27641 (h!54761 lt!1590281))))))

(declare-fun call!304683 () Bool)

(assert (=> b!4379820 call!304683))

(declare-fun lt!1590587 () Unit!75516)

(assert (=> b!4379820 (= lt!1590587 lt!1590597)))

(assert (=> b!4379820 (forall!9279 (toList!3146 (+!794 lt!1590285 lt!1590279)) lambda!145459)))

(declare-fun lt!1590585 () Unit!75516)

(declare-fun Unit!75553 () Unit!75516)

(assert (=> b!4379820 (= lt!1590585 Unit!75553)))

(declare-fun res!1803778 () Bool)

(assert (=> b!4379820 (= res!1803778 (forall!9279 lt!1590281 lambda!145459))))

(declare-fun e!2726328 () Bool)

(assert (=> b!4379820 (=> (not res!1803778) (not e!2726328))))

(assert (=> b!4379820 e!2726328))

(declare-fun lt!1590584 () Unit!75516)

(declare-fun Unit!75554 () Unit!75516)

(assert (=> b!4379820 (= lt!1590584 Unit!75554)))

(declare-fun bm!304676 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!107 (ListMap!2389) Unit!75516)

(assert (=> bm!304676 (= call!304681 (lemmaContainsAllItsOwnKeys!107 (+!794 lt!1590285 lt!1590279)))))

(declare-fun e!2726329 () Bool)

(assert (=> d!1304256 e!2726329))

(declare-fun res!1803777 () Bool)

(assert (=> d!1304256 (=> (not res!1803777) (not e!2726329))))

(assert (=> d!1304256 (= res!1803777 (forall!9279 lt!1590281 lambda!145461))))

(assert (=> d!1304256 (= lt!1590598 e!2726327)))

(declare-fun c!744899 () Bool)

(assert (=> d!1304256 (= c!744899 ((_ is Nil!49162) lt!1590281))))

(assert (=> d!1304256 (noDuplicateKeys!581 lt!1590281)))

(assert (=> d!1304256 (= (addToMapMapFromBucket!262 lt!1590281 (+!794 lt!1590285 lt!1590279)) lt!1590598)))

(declare-fun b!4379821 () Bool)

(declare-fun invariantList!725 (List!49286) Bool)

(assert (=> b!4379821 (= e!2726329 (invariantList!725 (toList!3146 lt!1590598)))))

(assert (=> b!4379822 (= e!2726327 (+!794 lt!1590285 lt!1590279))))

(declare-fun lt!1590601 () Unit!75516)

(assert (=> b!4379822 (= lt!1590601 call!304681)))

(assert (=> b!4379822 call!304683))

(declare-fun lt!1590600 () Unit!75516)

(assert (=> b!4379822 (= lt!1590600 lt!1590601)))

(assert (=> b!4379822 call!304682))

(declare-fun lt!1590582 () Unit!75516)

(declare-fun Unit!75555 () Unit!75516)

(assert (=> b!4379822 (= lt!1590582 Unit!75555)))

(declare-fun b!4379823 () Bool)

(declare-fun res!1803776 () Bool)

(assert (=> b!4379823 (=> (not res!1803776) (not e!2726329))))

(assert (=> b!4379823 (= res!1803776 (forall!9279 (toList!3146 (+!794 lt!1590285 lt!1590279)) lambda!145461))))

(declare-fun bm!304677 () Bool)

(assert (=> bm!304677 (= call!304683 (forall!9279 (toList!3146 (+!794 lt!1590285 lt!1590279)) (ite c!744899 lambda!145457 lambda!145459)))))

(declare-fun bm!304678 () Bool)

(assert (=> bm!304678 (= call!304682 (forall!9279 (toList!3146 (+!794 lt!1590285 lt!1590279)) (ite c!744899 lambda!145457 lambda!145458)))))

(declare-fun b!4379824 () Bool)

(assert (=> b!4379824 (= e!2726328 (forall!9279 (toList!3146 (+!794 lt!1590285 lt!1590279)) lambda!145459))))

(assert (= (and d!1304256 c!744899) b!4379822))

(assert (= (and d!1304256 (not c!744899)) b!4379820))

(assert (= (and b!4379820 res!1803778) b!4379824))

(assert (= (or b!4379822 b!4379820) bm!304676))

(assert (= (or b!4379822 b!4379820) bm!304678))

(assert (= (or b!4379822 b!4379820) bm!304677))

(assert (= (and d!1304256 res!1803777) b!4379823))

(assert (= (and b!4379823 res!1803776) b!4379821))

(declare-fun m!5017277 () Bool)

(assert (=> b!4379821 m!5017277))

(declare-fun m!5017279 () Bool)

(assert (=> b!4379823 m!5017279))

(declare-fun m!5017281 () Bool)

(assert (=> d!1304256 m!5017281))

(declare-fun m!5017283 () Bool)

(assert (=> d!1304256 m!5017283))

(assert (=> b!4379820 m!5016839))

(declare-fun m!5017285 () Bool)

(assert (=> b!4379820 m!5017285))

(declare-fun m!5017287 () Bool)

(assert (=> b!4379820 m!5017287))

(declare-fun m!5017289 () Bool)

(assert (=> b!4379820 m!5017289))

(declare-fun m!5017291 () Bool)

(assert (=> b!4379820 m!5017291))

(declare-fun m!5017293 () Bool)

(assert (=> b!4379820 m!5017293))

(declare-fun m!5017295 () Bool)

(assert (=> b!4379820 m!5017295))

(declare-fun m!5017297 () Bool)

(assert (=> b!4379820 m!5017297))

(assert (=> b!4379820 m!5017287))

(assert (=> b!4379820 m!5017293))

(declare-fun m!5017299 () Bool)

(assert (=> b!4379820 m!5017299))

(assert (=> b!4379820 m!5016839))

(assert (=> b!4379820 m!5017289))

(declare-fun m!5017301 () Bool)

(assert (=> b!4379820 m!5017301))

(declare-fun m!5017303 () Bool)

(assert (=> b!4379820 m!5017303))

(declare-fun m!5017305 () Bool)

(assert (=> bm!304678 m!5017305))

(assert (=> b!4379824 m!5017297))

(assert (=> bm!304676 m!5016839))

(declare-fun m!5017307 () Bool)

(assert (=> bm!304676 m!5017307))

(declare-fun m!5017309 () Bool)

(assert (=> bm!304677 m!5017309))

(assert (=> b!4379619 d!1304256))

(declare-fun bs!663040 () Bool)

(declare-fun b!4379829 () Bool)

(assert (= bs!663040 (and b!4379829 b!4379822)))

(declare-fun lambda!145462 () Int)

(assert (=> bs!663040 (= (= lt!1590285 (+!794 lt!1590285 lt!1590279)) (= lambda!145462 lambda!145457))))

(declare-fun bs!663041 () Bool)

(assert (= bs!663041 (and b!4379829 b!4379820)))

(assert (=> bs!663041 (= (= lt!1590285 (+!794 lt!1590285 lt!1590279)) (= lambda!145462 lambda!145458))))

(assert (=> bs!663041 (= (= lt!1590285 lt!1590589) (= lambda!145462 lambda!145459))))

(declare-fun bs!663042 () Bool)

(assert (= bs!663042 (and b!4379829 d!1304256)))

(assert (=> bs!663042 (= (= lt!1590285 lt!1590598) (= lambda!145462 lambda!145461))))

(assert (=> b!4379829 true))

(declare-fun bs!663043 () Bool)

(declare-fun b!4379827 () Bool)

(assert (= bs!663043 (and b!4379827 b!4379820)))

(declare-fun lambda!145463 () Int)

(assert (=> bs!663043 (= (= lt!1590285 (+!794 lt!1590285 lt!1590279)) (= lambda!145463 lambda!145458))))

(declare-fun bs!663044 () Bool)

(assert (= bs!663044 (and b!4379827 d!1304256)))

(assert (=> bs!663044 (= (= lt!1590285 lt!1590598) (= lambda!145463 lambda!145461))))

(assert (=> bs!663043 (= (= lt!1590285 lt!1590589) (= lambda!145463 lambda!145459))))

(declare-fun bs!663045 () Bool)

(assert (= bs!663045 (and b!4379827 b!4379822)))

(assert (=> bs!663045 (= (= lt!1590285 (+!794 lt!1590285 lt!1590279)) (= lambda!145463 lambda!145457))))

(declare-fun bs!663046 () Bool)

(assert (= bs!663046 (and b!4379827 b!4379829)))

(assert (=> bs!663046 (= lambda!145463 lambda!145462)))

(assert (=> b!4379827 true))

(declare-fun lambda!145464 () Int)

(declare-fun lt!1590613 () ListMap!2389)

(assert (=> bs!663043 (= (= lt!1590613 (+!794 lt!1590285 lt!1590279)) (= lambda!145464 lambda!145458))))

(assert (=> bs!663044 (= (= lt!1590613 lt!1590598) (= lambda!145464 lambda!145461))))

(assert (=> b!4379827 (= (= lt!1590613 lt!1590285) (= lambda!145464 lambda!145463))))

(assert (=> bs!663043 (= (= lt!1590613 lt!1590589) (= lambda!145464 lambda!145459))))

(assert (=> bs!663045 (= (= lt!1590613 (+!794 lt!1590285 lt!1590279)) (= lambda!145464 lambda!145457))))

(assert (=> bs!663046 (= (= lt!1590613 lt!1590285) (= lambda!145464 lambda!145462))))

(assert (=> b!4379827 true))

(declare-fun bs!663047 () Bool)

(declare-fun d!1304292 () Bool)

(assert (= bs!663047 (and d!1304292 b!4379820)))

(declare-fun lambda!145465 () Int)

(declare-fun lt!1590622 () ListMap!2389)

(assert (=> bs!663047 (= (= lt!1590622 (+!794 lt!1590285 lt!1590279)) (= lambda!145465 lambda!145458))))

(declare-fun bs!663048 () Bool)

(assert (= bs!663048 (and d!1304292 d!1304256)))

(assert (=> bs!663048 (= (= lt!1590622 lt!1590598) (= lambda!145465 lambda!145461))))

(declare-fun bs!663049 () Bool)

(assert (= bs!663049 (and d!1304292 b!4379827)))

(assert (=> bs!663049 (= (= lt!1590622 lt!1590285) (= lambda!145465 lambda!145463))))

(assert (=> bs!663047 (= (= lt!1590622 lt!1590589) (= lambda!145465 lambda!145459))))

(declare-fun bs!663050 () Bool)

(assert (= bs!663050 (and d!1304292 b!4379822)))

(assert (=> bs!663050 (= (= lt!1590622 (+!794 lt!1590285 lt!1590279)) (= lambda!145465 lambda!145457))))

(declare-fun bs!663051 () Bool)

(assert (= bs!663051 (and d!1304292 b!4379829)))

(assert (=> bs!663051 (= (= lt!1590622 lt!1590285) (= lambda!145465 lambda!145462))))

(assert (=> bs!663049 (= (= lt!1590622 lt!1590613) (= lambda!145465 lambda!145464))))

(assert (=> d!1304292 true))

(declare-fun e!2726330 () ListMap!2389)

(assert (=> b!4379827 (= e!2726330 lt!1590613)))

(declare-fun lt!1590617 () ListMap!2389)

(assert (=> b!4379827 (= lt!1590617 (+!794 lt!1590285 (h!54761 newBucket!200)))))

(assert (=> b!4379827 (= lt!1590613 (addToMapMapFromBucket!262 (t!356212 newBucket!200) (+!794 lt!1590285 (h!54761 newBucket!200))))))

(declare-fun lt!1590618 () Unit!75516)

(declare-fun call!304684 () Unit!75516)

(assert (=> b!4379827 (= lt!1590618 call!304684)))

(declare-fun call!304685 () Bool)

(assert (=> b!4379827 call!304685))

(declare-fun lt!1590623 () Unit!75516)

(assert (=> b!4379827 (= lt!1590623 lt!1590618)))

(assert (=> b!4379827 (forall!9279 (toList!3146 lt!1590617) lambda!145464)))

(declare-fun lt!1590620 () Unit!75516)

(declare-fun Unit!75556 () Unit!75516)

(assert (=> b!4379827 (= lt!1590620 Unit!75556)))

(assert (=> b!4379827 (forall!9279 (t!356212 newBucket!200) lambda!145464)))

(declare-fun lt!1590619 () Unit!75516)

(declare-fun Unit!75557 () Unit!75516)

(assert (=> b!4379827 (= lt!1590619 Unit!75557)))

(declare-fun lt!1590612 () Unit!75516)

(declare-fun Unit!75558 () Unit!75516)

(assert (=> b!4379827 (= lt!1590612 Unit!75558)))

(declare-fun lt!1590616 () Unit!75516)

(assert (=> b!4379827 (= lt!1590616 (forallContained!1917 (toList!3146 lt!1590617) lambda!145464 (h!54761 newBucket!200)))))

(assert (=> b!4379827 (contains!11498 lt!1590617 (_1!27641 (h!54761 newBucket!200)))))

(declare-fun lt!1590605 () Unit!75516)

(declare-fun Unit!75559 () Unit!75516)

(assert (=> b!4379827 (= lt!1590605 Unit!75559)))

(assert (=> b!4379827 (contains!11498 lt!1590613 (_1!27641 (h!54761 newBucket!200)))))

(declare-fun lt!1590607 () Unit!75516)

(declare-fun Unit!75560 () Unit!75516)

(assert (=> b!4379827 (= lt!1590607 Unit!75560)))

(assert (=> b!4379827 (forall!9279 newBucket!200 lambda!145464)))

(declare-fun lt!1590615 () Unit!75516)

(declare-fun Unit!75561 () Unit!75516)

(assert (=> b!4379827 (= lt!1590615 Unit!75561)))

(assert (=> b!4379827 (forall!9279 (toList!3146 lt!1590617) lambda!145464)))

(declare-fun lt!1590614 () Unit!75516)

(declare-fun Unit!75562 () Unit!75516)

(assert (=> b!4379827 (= lt!1590614 Unit!75562)))

(declare-fun lt!1590610 () Unit!75516)

(declare-fun Unit!75563 () Unit!75516)

(assert (=> b!4379827 (= lt!1590610 Unit!75563)))

(declare-fun lt!1590621 () Unit!75516)

(assert (=> b!4379827 (= lt!1590621 (addForallContainsKeyThenBeforeAdding!107 lt!1590285 lt!1590613 (_1!27641 (h!54761 newBucket!200)) (_2!27641 (h!54761 newBucket!200))))))

(declare-fun call!304686 () Bool)

(assert (=> b!4379827 call!304686))

(declare-fun lt!1590611 () Unit!75516)

(assert (=> b!4379827 (= lt!1590611 lt!1590621)))

(assert (=> b!4379827 (forall!9279 (toList!3146 lt!1590285) lambda!145464)))

(declare-fun lt!1590609 () Unit!75516)

(declare-fun Unit!75564 () Unit!75516)

(assert (=> b!4379827 (= lt!1590609 Unit!75564)))

(declare-fun res!1803781 () Bool)

(assert (=> b!4379827 (= res!1803781 (forall!9279 newBucket!200 lambda!145464))))

(declare-fun e!2726331 () Bool)

(assert (=> b!4379827 (=> (not res!1803781) (not e!2726331))))

(assert (=> b!4379827 e!2726331))

(declare-fun lt!1590608 () Unit!75516)

(declare-fun Unit!75565 () Unit!75516)

(assert (=> b!4379827 (= lt!1590608 Unit!75565)))

(declare-fun bm!304679 () Bool)

(assert (=> bm!304679 (= call!304684 (lemmaContainsAllItsOwnKeys!107 lt!1590285))))

(declare-fun e!2726332 () Bool)

(assert (=> d!1304292 e!2726332))

(declare-fun res!1803780 () Bool)

(assert (=> d!1304292 (=> (not res!1803780) (not e!2726332))))

(assert (=> d!1304292 (= res!1803780 (forall!9279 newBucket!200 lambda!145465))))

(assert (=> d!1304292 (= lt!1590622 e!2726330)))

(declare-fun c!744900 () Bool)

(assert (=> d!1304292 (= c!744900 ((_ is Nil!49162) newBucket!200))))

(assert (=> d!1304292 (noDuplicateKeys!581 newBucket!200)))

(assert (=> d!1304292 (= (addToMapMapFromBucket!262 newBucket!200 lt!1590285) lt!1590622)))

(declare-fun b!4379828 () Bool)

(assert (=> b!4379828 (= e!2726332 (invariantList!725 (toList!3146 lt!1590622)))))

(assert (=> b!4379829 (= e!2726330 lt!1590285)))

(declare-fun lt!1590625 () Unit!75516)

(assert (=> b!4379829 (= lt!1590625 call!304684)))

(assert (=> b!4379829 call!304686))

(declare-fun lt!1590624 () Unit!75516)

(assert (=> b!4379829 (= lt!1590624 lt!1590625)))

(assert (=> b!4379829 call!304685))

(declare-fun lt!1590606 () Unit!75516)

(declare-fun Unit!75567 () Unit!75516)

(assert (=> b!4379829 (= lt!1590606 Unit!75567)))

(declare-fun b!4379830 () Bool)

(declare-fun res!1803779 () Bool)

(assert (=> b!4379830 (=> (not res!1803779) (not e!2726332))))

(assert (=> b!4379830 (= res!1803779 (forall!9279 (toList!3146 lt!1590285) lambda!145465))))

(declare-fun bm!304680 () Bool)

(assert (=> bm!304680 (= call!304686 (forall!9279 (toList!3146 lt!1590285) (ite c!744900 lambda!145462 lambda!145464)))))

(declare-fun bm!304681 () Bool)

(assert (=> bm!304681 (= call!304685 (forall!9279 (toList!3146 lt!1590285) (ite c!744900 lambda!145462 lambda!145463)))))

(declare-fun b!4379831 () Bool)

(assert (=> b!4379831 (= e!2726331 (forall!9279 (toList!3146 lt!1590285) lambda!145464))))

(assert (= (and d!1304292 c!744900) b!4379829))

(assert (= (and d!1304292 (not c!744900)) b!4379827))

(assert (= (and b!4379827 res!1803781) b!4379831))

(assert (= (or b!4379829 b!4379827) bm!304679))

(assert (= (or b!4379829 b!4379827) bm!304681))

(assert (= (or b!4379829 b!4379827) bm!304680))

(assert (= (and d!1304292 res!1803780) b!4379830))

(assert (= (and b!4379830 res!1803779) b!4379828))

(declare-fun m!5017319 () Bool)

(assert (=> b!4379828 m!5017319))

(declare-fun m!5017321 () Bool)

(assert (=> b!4379830 m!5017321))

(declare-fun m!5017323 () Bool)

(assert (=> d!1304292 m!5017323))

(assert (=> d!1304292 m!5016877))

(declare-fun m!5017325 () Bool)

(assert (=> b!4379827 m!5017325))

(declare-fun m!5017327 () Bool)

(assert (=> b!4379827 m!5017327))

(declare-fun m!5017329 () Bool)

(assert (=> b!4379827 m!5017329))

(declare-fun m!5017331 () Bool)

(assert (=> b!4379827 m!5017331))

(declare-fun m!5017333 () Bool)

(assert (=> b!4379827 m!5017333))

(declare-fun m!5017335 () Bool)

(assert (=> b!4379827 m!5017335))

(declare-fun m!5017337 () Bool)

(assert (=> b!4379827 m!5017337))

(assert (=> b!4379827 m!5017327))

(assert (=> b!4379827 m!5017333))

(declare-fun m!5017339 () Bool)

(assert (=> b!4379827 m!5017339))

(assert (=> b!4379827 m!5017329))

(declare-fun m!5017341 () Bool)

(assert (=> b!4379827 m!5017341))

(declare-fun m!5017343 () Bool)

(assert (=> b!4379827 m!5017343))

(declare-fun m!5017345 () Bool)

(assert (=> bm!304681 m!5017345))

(assert (=> b!4379831 m!5017337))

(declare-fun m!5017347 () Bool)

(assert (=> bm!304679 m!5017347))

(declare-fun m!5017349 () Bool)

(assert (=> bm!304680 m!5017349))

(assert (=> b!4379619 d!1304292))

(declare-fun d!1304296 () Bool)

(declare-fun e!2726352 () Bool)

(assert (=> d!1304296 e!2726352))

(declare-fun res!1803800 () Bool)

(assert (=> d!1304296 (=> (not res!1803800) (not e!2726352))))

(declare-fun lt!1590654 () ListMap!2389)

(assert (=> d!1304296 (= res!1803800 (contains!11498 lt!1590654 (_1!27641 lt!1590279)))))

(declare-fun lt!1590657 () List!49286)

(assert (=> d!1304296 (= lt!1590654 (ListMap!2390 lt!1590657))))

(declare-fun lt!1590656 () Unit!75516)

(declare-fun lt!1590655 () Unit!75516)

(assert (=> d!1304296 (= lt!1590656 lt!1590655)))

(declare-datatypes ((Option!10564 0))(
  ( (None!10563) (Some!10563 (v!43577 V!10766)) )
))
(declare-fun getValueByKey!550 (List!49286 K!10520) Option!10564)

(assert (=> d!1304296 (= (getValueByKey!550 lt!1590657 (_1!27641 lt!1590279)) (Some!10563 (_2!27641 lt!1590279)))))

(declare-fun lemmaContainsTupThenGetReturnValue!314 (List!49286 K!10520 V!10766) Unit!75516)

(assert (=> d!1304296 (= lt!1590655 (lemmaContainsTupThenGetReturnValue!314 lt!1590657 (_1!27641 lt!1590279) (_2!27641 lt!1590279)))))

(declare-fun insertNoDuplicatedKeys!143 (List!49286 K!10520 V!10766) List!49286)

(assert (=> d!1304296 (= lt!1590657 (insertNoDuplicatedKeys!143 (toList!3146 lt!1590285) (_1!27641 lt!1590279) (_2!27641 lt!1590279)))))

(assert (=> d!1304296 (= (+!794 lt!1590285 lt!1590279) lt!1590654)))

(declare-fun b!4379856 () Bool)

(declare-fun res!1803801 () Bool)

(assert (=> b!4379856 (=> (not res!1803801) (not e!2726352))))

(assert (=> b!4379856 (= res!1803801 (= (getValueByKey!550 (toList!3146 lt!1590654) (_1!27641 lt!1590279)) (Some!10563 (_2!27641 lt!1590279))))))

(declare-fun b!4379857 () Bool)

(declare-fun contains!11502 (List!49286 tuple2!48694) Bool)

(assert (=> b!4379857 (= e!2726352 (contains!11502 (toList!3146 lt!1590654) lt!1590279))))

(assert (= (and d!1304296 res!1803800) b!4379856))

(assert (= (and b!4379856 res!1803801) b!4379857))

(declare-fun m!5017363 () Bool)

(assert (=> d!1304296 m!5017363))

(declare-fun m!5017367 () Bool)

(assert (=> d!1304296 m!5017367))

(declare-fun m!5017369 () Bool)

(assert (=> d!1304296 m!5017369))

(declare-fun m!5017375 () Bool)

(assert (=> d!1304296 m!5017375))

(declare-fun m!5017377 () Bool)

(assert (=> b!4379856 m!5017377))

(declare-fun m!5017379 () Bool)

(assert (=> b!4379857 m!5017379))

(assert (=> b!4379619 d!1304296))

(declare-fun d!1304306 () Bool)

(assert (=> d!1304306 (= (tail!7074 newBucket!200) (t!356212 newBucket!200))))

(assert (=> b!4379619 d!1304306))

(declare-fun bs!663054 () Bool)

(declare-fun d!1304308 () Bool)

(assert (= bs!663054 (and d!1304308 start!425368)))

(declare-fun lambda!145468 () Int)

(assert (=> bs!663054 (= lambda!145468 lambda!145373)))

(declare-fun lt!1590670 () ListMap!2389)

(assert (=> d!1304308 (invariantList!725 (toList!3146 lt!1590670))))

(declare-fun e!2726367 () ListMap!2389)

(assert (=> d!1304308 (= lt!1590670 e!2726367)))

(declare-fun c!744912 () Bool)

(assert (=> d!1304308 (= c!744912 ((_ is Cons!49163) (toList!3145 lt!1590278)))))

(assert (=> d!1304308 (forall!9277 (toList!3145 lt!1590278) lambda!145468)))

(assert (=> d!1304308 (= (extractMap!640 (toList!3145 lt!1590278)) lt!1590670)))

(declare-fun b!4379882 () Bool)

(assert (=> b!4379882 (= e!2726367 (addToMapMapFromBucket!262 (_2!27642 (h!54762 (toList!3145 lt!1590278))) (extractMap!640 (t!356213 (toList!3145 lt!1590278)))))))

(declare-fun b!4379883 () Bool)

(assert (=> b!4379883 (= e!2726367 (ListMap!2390 Nil!49162))))

(assert (= (and d!1304308 c!744912) b!4379882))

(assert (= (and d!1304308 (not c!744912)) b!4379883))

(declare-fun m!5017407 () Bool)

(assert (=> d!1304308 m!5017407))

(declare-fun m!5017409 () Bool)

(assert (=> d!1304308 m!5017409))

(declare-fun m!5017413 () Bool)

(assert (=> b!4379882 m!5017413))

(assert (=> b!4379882 m!5017413))

(declare-fun m!5017417 () Bool)

(assert (=> b!4379882 m!5017417))

(assert (=> b!4379619 d!1304308))

(declare-fun bs!663055 () Bool)

(declare-fun d!1304318 () Bool)

(assert (= bs!663055 (and d!1304318 start!425368)))

(declare-fun lambda!145469 () Int)

(assert (=> bs!663055 (= lambda!145469 lambda!145373)))

(declare-fun bs!663056 () Bool)

(assert (= bs!663056 (and d!1304318 d!1304308)))

(assert (=> bs!663056 (= lambda!145469 lambda!145468)))

(declare-fun lt!1590672 () ListMap!2389)

(assert (=> d!1304318 (invariantList!725 (toList!3146 lt!1590672))))

(declare-fun e!2726369 () ListMap!2389)

(assert (=> d!1304318 (= lt!1590672 e!2726369)))

(declare-fun c!744913 () Bool)

(assert (=> d!1304318 (= c!744913 ((_ is Cons!49163) (t!356213 (toList!3145 lm!1707))))))

(assert (=> d!1304318 (forall!9277 (t!356213 (toList!3145 lm!1707)) lambda!145469)))

(assert (=> d!1304318 (= (extractMap!640 (t!356213 (toList!3145 lm!1707))) lt!1590672)))

(declare-fun b!4379885 () Bool)

(assert (=> b!4379885 (= e!2726369 (addToMapMapFromBucket!262 (_2!27642 (h!54762 (t!356213 (toList!3145 lm!1707)))) (extractMap!640 (t!356213 (t!356213 (toList!3145 lm!1707))))))))

(declare-fun b!4379886 () Bool)

(assert (=> b!4379886 (= e!2726369 (ListMap!2390 Nil!49162))))

(assert (= (and d!1304318 c!744913) b!4379885))

(assert (= (and d!1304318 (not c!744913)) b!4379886))

(declare-fun m!5017419 () Bool)

(assert (=> d!1304318 m!5017419))

(declare-fun m!5017421 () Bool)

(assert (=> d!1304318 m!5017421))

(declare-fun m!5017423 () Bool)

(assert (=> b!4379885 m!5017423))

(assert (=> b!4379885 m!5017423))

(declare-fun m!5017425 () Bool)

(assert (=> b!4379885 m!5017425))

(assert (=> b!4379619 d!1304318))

(declare-fun bm!304684 () Bool)

(declare-fun call!304689 () Bool)

(declare-datatypes ((List!49289 0))(
  ( (Nil!49165) (Cons!49165 (h!54766 K!10520) (t!356215 List!49289)) )
))
(declare-fun e!2726393 () List!49289)

(declare-fun contains!11503 (List!49289 K!10520) Bool)

(assert (=> bm!304684 (= call!304689 (contains!11503 e!2726393 key!3918))))

(declare-fun c!744921 () Bool)

(declare-fun c!744922 () Bool)

(assert (=> bm!304684 (= c!744921 c!744922)))

(declare-fun b!4379919 () Bool)

(declare-fun e!2726395 () Unit!75516)

(declare-fun Unit!75578 () Unit!75516)

(assert (=> b!4379919 (= e!2726395 Unit!75578)))

(declare-fun b!4379920 () Bool)

(declare-fun e!2726391 () Unit!75516)

(assert (=> b!4379920 (= e!2726391 e!2726395)))

(declare-fun c!744920 () Bool)

(assert (=> b!4379920 (= c!744920 call!304689)))

(declare-fun b!4379921 () Bool)

(declare-fun getKeysList!173 (List!49286) List!49289)

(assert (=> b!4379921 (= e!2726393 (getKeysList!173 (toList!3146 lt!1590287)))))

(declare-fun b!4379922 () Bool)

(declare-fun keys!16673 (ListMap!2389) List!49289)

(assert (=> b!4379922 (= e!2726393 (keys!16673 lt!1590287))))

(declare-fun b!4379923 () Bool)

(assert (=> b!4379923 false))

(declare-fun lt!1590690 () Unit!75516)

(declare-fun lt!1590693 () Unit!75516)

(assert (=> b!4379923 (= lt!1590690 lt!1590693)))

(declare-fun containsKey!856 (List!49286 K!10520) Bool)

(assert (=> b!4379923 (containsKey!856 (toList!3146 lt!1590287) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!171 (List!49286 K!10520) Unit!75516)

(assert (=> b!4379923 (= lt!1590693 (lemmaInGetKeysListThenContainsKey!171 (toList!3146 lt!1590287) key!3918))))

(declare-fun Unit!75579 () Unit!75516)

(assert (=> b!4379923 (= e!2726395 Unit!75579)))

(declare-fun b!4379924 () Bool)

(declare-fun e!2726392 () Bool)

(declare-fun e!2726390 () Bool)

(assert (=> b!4379924 (= e!2726392 e!2726390)))

(declare-fun res!1803818 () Bool)

(assert (=> b!4379924 (=> (not res!1803818) (not e!2726390))))

(declare-fun isDefined!7857 (Option!10564) Bool)

(assert (=> b!4379924 (= res!1803818 (isDefined!7857 (getValueByKey!550 (toList!3146 lt!1590287) key!3918)))))

(declare-fun d!1304322 () Bool)

(assert (=> d!1304322 e!2726392))

(declare-fun res!1803820 () Bool)

(assert (=> d!1304322 (=> res!1803820 e!2726392)))

(declare-fun e!2726394 () Bool)

(assert (=> d!1304322 (= res!1803820 e!2726394)))

(declare-fun res!1803819 () Bool)

(assert (=> d!1304322 (=> (not res!1803819) (not e!2726394))))

(declare-fun lt!1590696 () Bool)

(assert (=> d!1304322 (= res!1803819 (not lt!1590696))))

(declare-fun lt!1590691 () Bool)

(assert (=> d!1304322 (= lt!1590696 lt!1590691)))

(declare-fun lt!1590692 () Unit!75516)

(assert (=> d!1304322 (= lt!1590692 e!2726391)))

(assert (=> d!1304322 (= c!744922 lt!1590691)))

(assert (=> d!1304322 (= lt!1590691 (containsKey!856 (toList!3146 lt!1590287) key!3918))))

(assert (=> d!1304322 (= (contains!11498 lt!1590287 key!3918) lt!1590696)))

(declare-fun b!4379925 () Bool)

(declare-fun lt!1590695 () Unit!75516)

(assert (=> b!4379925 (= e!2726391 lt!1590695)))

(declare-fun lt!1590694 () Unit!75516)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!460 (List!49286 K!10520) Unit!75516)

(assert (=> b!4379925 (= lt!1590694 (lemmaContainsKeyImpliesGetValueByKeyDefined!460 (toList!3146 lt!1590287) key!3918))))

(assert (=> b!4379925 (isDefined!7857 (getValueByKey!550 (toList!3146 lt!1590287) key!3918))))

(declare-fun lt!1590689 () Unit!75516)

(assert (=> b!4379925 (= lt!1590689 lt!1590694)))

(declare-fun lemmaInListThenGetKeysListContains!170 (List!49286 K!10520) Unit!75516)

(assert (=> b!4379925 (= lt!1590695 (lemmaInListThenGetKeysListContains!170 (toList!3146 lt!1590287) key!3918))))

(assert (=> b!4379925 call!304689))

(declare-fun b!4379926 () Bool)

(assert (=> b!4379926 (= e!2726394 (not (contains!11503 (keys!16673 lt!1590287) key!3918)))))

(declare-fun b!4379927 () Bool)

(assert (=> b!4379927 (= e!2726390 (contains!11503 (keys!16673 lt!1590287) key!3918))))

(assert (= (and d!1304322 c!744922) b!4379925))

(assert (= (and d!1304322 (not c!744922)) b!4379920))

(assert (= (and b!4379920 c!744920) b!4379923))

(assert (= (and b!4379920 (not c!744920)) b!4379919))

(assert (= (or b!4379925 b!4379920) bm!304684))

(assert (= (and bm!304684 c!744921) b!4379921))

(assert (= (and bm!304684 (not c!744921)) b!4379922))

(assert (= (and d!1304322 res!1803819) b!4379926))

(assert (= (and d!1304322 (not res!1803820)) b!4379924))

(assert (= (and b!4379924 res!1803818) b!4379927))

(declare-fun m!5017447 () Bool)

(assert (=> b!4379925 m!5017447))

(declare-fun m!5017449 () Bool)

(assert (=> b!4379925 m!5017449))

(assert (=> b!4379925 m!5017449))

(declare-fun m!5017451 () Bool)

(assert (=> b!4379925 m!5017451))

(declare-fun m!5017453 () Bool)

(assert (=> b!4379925 m!5017453))

(declare-fun m!5017455 () Bool)

(assert (=> b!4379922 m!5017455))

(declare-fun m!5017457 () Bool)

(assert (=> d!1304322 m!5017457))

(declare-fun m!5017459 () Bool)

(assert (=> bm!304684 m!5017459))

(declare-fun m!5017461 () Bool)

(assert (=> b!4379921 m!5017461))

(assert (=> b!4379924 m!5017449))

(assert (=> b!4379924 m!5017449))

(assert (=> b!4379924 m!5017451))

(assert (=> b!4379923 m!5017457))

(declare-fun m!5017463 () Bool)

(assert (=> b!4379923 m!5017463))

(assert (=> b!4379927 m!5017455))

(assert (=> b!4379927 m!5017455))

(declare-fun m!5017465 () Bool)

(assert (=> b!4379927 m!5017465))

(assert (=> b!4379926 m!5017455))

(assert (=> b!4379926 m!5017455))

(assert (=> b!4379926 m!5017465))

(assert (=> b!4379619 d!1304322))

(declare-fun d!1304338 () Bool)

(declare-fun e!2726396 () Bool)

(assert (=> d!1304338 e!2726396))

(declare-fun res!1803821 () Bool)

(assert (=> d!1304338 (=> (not res!1803821) (not e!2726396))))

(declare-fun lt!1590697 () ListMap!2389)

(assert (=> d!1304338 (= res!1803821 (contains!11498 lt!1590697 (_1!27641 lt!1590279)))))

(declare-fun lt!1590700 () List!49286)

(assert (=> d!1304338 (= lt!1590697 (ListMap!2390 lt!1590700))))

(declare-fun lt!1590699 () Unit!75516)

(declare-fun lt!1590698 () Unit!75516)

(assert (=> d!1304338 (= lt!1590699 lt!1590698)))

(assert (=> d!1304338 (= (getValueByKey!550 lt!1590700 (_1!27641 lt!1590279)) (Some!10563 (_2!27641 lt!1590279)))))

(assert (=> d!1304338 (= lt!1590698 (lemmaContainsTupThenGetReturnValue!314 lt!1590700 (_1!27641 lt!1590279) (_2!27641 lt!1590279)))))

(assert (=> d!1304338 (= lt!1590700 (insertNoDuplicatedKeys!143 (toList!3146 lt!1590275) (_1!27641 lt!1590279) (_2!27641 lt!1590279)))))

(assert (=> d!1304338 (= (+!794 lt!1590275 lt!1590279) lt!1590697)))

(declare-fun b!4379928 () Bool)

(declare-fun res!1803822 () Bool)

(assert (=> b!4379928 (=> (not res!1803822) (not e!2726396))))

(assert (=> b!4379928 (= res!1803822 (= (getValueByKey!550 (toList!3146 lt!1590697) (_1!27641 lt!1590279)) (Some!10563 (_2!27641 lt!1590279))))))

(declare-fun b!4379929 () Bool)

(assert (=> b!4379929 (= e!2726396 (contains!11502 (toList!3146 lt!1590697) lt!1590279))))

(assert (= (and d!1304338 res!1803821) b!4379928))

(assert (= (and b!4379928 res!1803822) b!4379929))

(declare-fun m!5017467 () Bool)

(assert (=> d!1304338 m!5017467))

(declare-fun m!5017469 () Bool)

(assert (=> d!1304338 m!5017469))

(declare-fun m!5017471 () Bool)

(assert (=> d!1304338 m!5017471))

(declare-fun m!5017473 () Bool)

(assert (=> d!1304338 m!5017473))

(declare-fun m!5017475 () Bool)

(assert (=> b!4379928 m!5017475))

(declare-fun m!5017477 () Bool)

(assert (=> b!4379929 m!5017477))

(assert (=> b!4379619 d!1304338))

(declare-fun d!1304340 () Bool)

(assert (=> d!1304340 (eq!319 (addToMapMapFromBucket!262 lt!1590281 (+!794 lt!1590285 (tuple2!48695 key!3918 newValue!99))) (+!794 (addToMapMapFromBucket!262 lt!1590281 lt!1590285) (tuple2!48695 key!3918 newValue!99)))))

(declare-fun lt!1590703 () Unit!75516)

(declare-fun choose!27328 (ListMap!2389 K!10520 V!10766 List!49286) Unit!75516)

(assert (=> d!1304340 (= lt!1590703 (choose!27328 lt!1590285 key!3918 newValue!99 lt!1590281))))

(assert (=> d!1304340 (not (containsKey!854 lt!1590281 key!3918))))

(assert (=> d!1304340 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!128 lt!1590285 key!3918 newValue!99 lt!1590281) lt!1590703)))

(declare-fun bs!663070 () Bool)

(assert (= bs!663070 d!1304340))

(assert (=> bs!663070 m!5016851))

(declare-fun m!5017479 () Bool)

(assert (=> bs!663070 m!5017479))

(declare-fun m!5017481 () Bool)

(assert (=> bs!663070 m!5017481))

(declare-fun m!5017483 () Bool)

(assert (=> bs!663070 m!5017483))

(declare-fun m!5017485 () Bool)

(assert (=> bs!663070 m!5017485))

(assert (=> bs!663070 m!5017481))

(declare-fun m!5017487 () Bool)

(assert (=> bs!663070 m!5017487))

(assert (=> bs!663070 m!5016851))

(assert (=> bs!663070 m!5017487))

(assert (=> bs!663070 m!5017479))

(declare-fun m!5017489 () Bool)

(assert (=> bs!663070 m!5017489))

(assert (=> b!4379619 d!1304340))

(declare-fun d!1304342 () Bool)

(assert (=> d!1304342 (= (contains!11498 lt!1590290 key!3918) (contains!11498 lt!1590287 key!3918))))

(declare-fun lt!1590706 () Unit!75516)

(declare-fun choose!27329 (ListMap!2389 ListMap!2389 K!10520) Unit!75516)

(assert (=> d!1304342 (= lt!1590706 (choose!27329 lt!1590290 lt!1590287 key!3918))))

(assert (=> d!1304342 (eq!319 lt!1590290 lt!1590287)))

(assert (=> d!1304342 (= (lemmaEquivalentThenSameContains!106 lt!1590290 lt!1590287 key!3918) lt!1590706)))

(declare-fun bs!663071 () Bool)

(assert (= bs!663071 d!1304342))

(assert (=> bs!663071 m!5016853))

(assert (=> bs!663071 m!5016835))

(declare-fun m!5017491 () Bool)

(assert (=> bs!663071 m!5017491))

(assert (=> bs!663071 m!5016833))

(assert (=> b!4379619 d!1304342))

(declare-fun bm!304685 () Bool)

(declare-fun call!304690 () Bool)

(declare-fun e!2726400 () List!49289)

(assert (=> bm!304685 (= call!304690 (contains!11503 e!2726400 key!3918))))

(declare-fun c!744924 () Bool)

(declare-fun c!744925 () Bool)

(assert (=> bm!304685 (= c!744924 c!744925)))

(declare-fun b!4379930 () Bool)

(declare-fun e!2726402 () Unit!75516)

(declare-fun Unit!75589 () Unit!75516)

(assert (=> b!4379930 (= e!2726402 Unit!75589)))

(declare-fun b!4379931 () Bool)

(declare-fun e!2726398 () Unit!75516)

(assert (=> b!4379931 (= e!2726398 e!2726402)))

(declare-fun c!744923 () Bool)

(assert (=> b!4379931 (= c!744923 call!304690)))

(declare-fun b!4379932 () Bool)

(assert (=> b!4379932 (= e!2726400 (getKeysList!173 (toList!3146 lt!1590290)))))

(declare-fun b!4379933 () Bool)

(assert (=> b!4379933 (= e!2726400 (keys!16673 lt!1590290))))

(declare-fun b!4379934 () Bool)

(assert (=> b!4379934 false))

(declare-fun lt!1590708 () Unit!75516)

(declare-fun lt!1590711 () Unit!75516)

(assert (=> b!4379934 (= lt!1590708 lt!1590711)))

(assert (=> b!4379934 (containsKey!856 (toList!3146 lt!1590290) key!3918)))

(assert (=> b!4379934 (= lt!1590711 (lemmaInGetKeysListThenContainsKey!171 (toList!3146 lt!1590290) key!3918))))

(declare-fun Unit!75591 () Unit!75516)

(assert (=> b!4379934 (= e!2726402 Unit!75591)))

(declare-fun b!4379935 () Bool)

(declare-fun e!2726399 () Bool)

(declare-fun e!2726397 () Bool)

(assert (=> b!4379935 (= e!2726399 e!2726397)))

(declare-fun res!1803823 () Bool)

(assert (=> b!4379935 (=> (not res!1803823) (not e!2726397))))

(assert (=> b!4379935 (= res!1803823 (isDefined!7857 (getValueByKey!550 (toList!3146 lt!1590290) key!3918)))))

(declare-fun d!1304344 () Bool)

(assert (=> d!1304344 e!2726399))

(declare-fun res!1803825 () Bool)

(assert (=> d!1304344 (=> res!1803825 e!2726399)))

(declare-fun e!2726401 () Bool)

(assert (=> d!1304344 (= res!1803825 e!2726401)))

(declare-fun res!1803824 () Bool)

(assert (=> d!1304344 (=> (not res!1803824) (not e!2726401))))

(declare-fun lt!1590714 () Bool)

(assert (=> d!1304344 (= res!1803824 (not lt!1590714))))

(declare-fun lt!1590709 () Bool)

(assert (=> d!1304344 (= lt!1590714 lt!1590709)))

(declare-fun lt!1590710 () Unit!75516)

(assert (=> d!1304344 (= lt!1590710 e!2726398)))

(assert (=> d!1304344 (= c!744925 lt!1590709)))

(assert (=> d!1304344 (= lt!1590709 (containsKey!856 (toList!3146 lt!1590290) key!3918))))

(assert (=> d!1304344 (= (contains!11498 lt!1590290 key!3918) lt!1590714)))

(declare-fun b!4379936 () Bool)

(declare-fun lt!1590713 () Unit!75516)

(assert (=> b!4379936 (= e!2726398 lt!1590713)))

(declare-fun lt!1590712 () Unit!75516)

(assert (=> b!4379936 (= lt!1590712 (lemmaContainsKeyImpliesGetValueByKeyDefined!460 (toList!3146 lt!1590290) key!3918))))

(assert (=> b!4379936 (isDefined!7857 (getValueByKey!550 (toList!3146 lt!1590290) key!3918))))

(declare-fun lt!1590707 () Unit!75516)

(assert (=> b!4379936 (= lt!1590707 lt!1590712)))

(assert (=> b!4379936 (= lt!1590713 (lemmaInListThenGetKeysListContains!170 (toList!3146 lt!1590290) key!3918))))

(assert (=> b!4379936 call!304690))

(declare-fun b!4379937 () Bool)

(assert (=> b!4379937 (= e!2726401 (not (contains!11503 (keys!16673 lt!1590290) key!3918)))))

(declare-fun b!4379938 () Bool)

(assert (=> b!4379938 (= e!2726397 (contains!11503 (keys!16673 lt!1590290) key!3918))))

(assert (= (and d!1304344 c!744925) b!4379936))

(assert (= (and d!1304344 (not c!744925)) b!4379931))

(assert (= (and b!4379931 c!744923) b!4379934))

(assert (= (and b!4379931 (not c!744923)) b!4379930))

(assert (= (or b!4379936 b!4379931) bm!304685))

(assert (= (and bm!304685 c!744924) b!4379932))

(assert (= (and bm!304685 (not c!744924)) b!4379933))

(assert (= (and d!1304344 res!1803824) b!4379937))

(assert (= (and d!1304344 (not res!1803825)) b!4379935))

(assert (= (and b!4379935 res!1803823) b!4379938))

(declare-fun m!5017493 () Bool)

(assert (=> b!4379936 m!5017493))

(declare-fun m!5017495 () Bool)

(assert (=> b!4379936 m!5017495))

(assert (=> b!4379936 m!5017495))

(declare-fun m!5017497 () Bool)

(assert (=> b!4379936 m!5017497))

(declare-fun m!5017499 () Bool)

(assert (=> b!4379936 m!5017499))

(declare-fun m!5017501 () Bool)

(assert (=> b!4379933 m!5017501))

(declare-fun m!5017503 () Bool)

(assert (=> d!1304344 m!5017503))

(declare-fun m!5017505 () Bool)

(assert (=> bm!304685 m!5017505))

(declare-fun m!5017507 () Bool)

(assert (=> b!4379932 m!5017507))

(assert (=> b!4379935 m!5017495))

(assert (=> b!4379935 m!5017495))

(assert (=> b!4379935 m!5017497))

(assert (=> b!4379934 m!5017503))

(declare-fun m!5017509 () Bool)

(assert (=> b!4379934 m!5017509))

(assert (=> b!4379938 m!5017501))

(assert (=> b!4379938 m!5017501))

(declare-fun m!5017511 () Bool)

(assert (=> b!4379938 m!5017511))

(assert (=> b!4379937 m!5017501))

(assert (=> b!4379937 m!5017501))

(assert (=> b!4379937 m!5017511))

(assert (=> b!4379619 d!1304344))

(declare-fun d!1304346 () Bool)

(assert (=> d!1304346 (= (eq!319 lt!1590290 lt!1590287) (= (content!7818 (toList!3146 lt!1590290)) (content!7818 (toList!3146 lt!1590287))))))

(declare-fun bs!663072 () Bool)

(assert (= bs!663072 d!1304346))

(declare-fun m!5017513 () Bool)

(assert (=> bs!663072 m!5017513))

(declare-fun m!5017515 () Bool)

(assert (=> bs!663072 m!5017515))

(assert (=> b!4379619 d!1304346))

(declare-fun d!1304348 () Bool)

(declare-fun e!2726405 () Bool)

(assert (=> d!1304348 e!2726405))

(declare-fun res!1803828 () Bool)

(assert (=> d!1304348 (=> (not res!1803828) (not e!2726405))))

(declare-fun lt!1590717 () ListMap!2389)

(assert (=> d!1304348 (= res!1803828 (not (contains!11498 lt!1590717 key!3918)))))

(declare-fun removePresrvNoDuplicatedKeys!41 (List!49286 K!10520) List!49286)

(assert (=> d!1304348 (= lt!1590717 (ListMap!2390 (removePresrvNoDuplicatedKeys!41 (toList!3146 lt!1590286) key!3918)))))

(assert (=> d!1304348 (= (-!256 lt!1590286 key!3918) lt!1590717)))

(declare-fun b!4379941 () Bool)

(declare-fun content!7819 (List!49289) (InoxSet K!10520))

(assert (=> b!4379941 (= e!2726405 (= ((_ map and) (content!7819 (keys!16673 lt!1590286)) ((_ map not) (store ((as const (Array K!10520 Bool)) false) key!3918 true))) (content!7819 (keys!16673 lt!1590717))))))

(assert (= (and d!1304348 res!1803828) b!4379941))

(declare-fun m!5017517 () Bool)

(assert (=> d!1304348 m!5017517))

(declare-fun m!5017519 () Bool)

(assert (=> d!1304348 m!5017519))

(declare-fun m!5017521 () Bool)

(assert (=> b!4379941 m!5017521))

(declare-fun m!5017523 () Bool)

(assert (=> b!4379941 m!5017523))

(declare-fun m!5017525 () Bool)

(assert (=> b!4379941 m!5017525))

(assert (=> b!4379941 m!5017523))

(declare-fun m!5017527 () Bool)

(assert (=> b!4379941 m!5017527))

(assert (=> b!4379941 m!5017521))

(declare-fun m!5017529 () Bool)

(assert (=> b!4379941 m!5017529))

(assert (=> b!4379619 d!1304348))

(declare-fun bs!663073 () Bool)

(declare-fun b!4379944 () Bool)

(assert (= bs!663073 (and b!4379944 b!4379820)))

(declare-fun lambda!145473 () Int)

(assert (=> bs!663073 (= (= lt!1590285 (+!794 lt!1590285 lt!1590279)) (= lambda!145473 lambda!145458))))

(declare-fun bs!663074 () Bool)

(assert (= bs!663074 (and b!4379944 d!1304256)))

(assert (=> bs!663074 (= (= lt!1590285 lt!1590598) (= lambda!145473 lambda!145461))))

(declare-fun bs!663075 () Bool)

(assert (= bs!663075 (and b!4379944 b!4379827)))

(assert (=> bs!663075 (= lambda!145473 lambda!145463)))

(assert (=> bs!663073 (= (= lt!1590285 lt!1590589) (= lambda!145473 lambda!145459))))

(declare-fun bs!663076 () Bool)

(assert (= bs!663076 (and b!4379944 b!4379822)))

(assert (=> bs!663076 (= (= lt!1590285 (+!794 lt!1590285 lt!1590279)) (= lambda!145473 lambda!145457))))

(declare-fun bs!663077 () Bool)

(assert (= bs!663077 (and b!4379944 b!4379829)))

(assert (=> bs!663077 (= lambda!145473 lambda!145462)))

(declare-fun bs!663078 () Bool)

(assert (= bs!663078 (and b!4379944 d!1304292)))

(assert (=> bs!663078 (= (= lt!1590285 lt!1590622) (= lambda!145473 lambda!145465))))

(assert (=> bs!663075 (= (= lt!1590285 lt!1590613) (= lambda!145473 lambda!145464))))

(assert (=> b!4379944 true))

(declare-fun bs!663079 () Bool)

(declare-fun b!4379942 () Bool)

(assert (= bs!663079 (and b!4379942 b!4379820)))

(declare-fun lambda!145474 () Int)

(assert (=> bs!663079 (= (= lt!1590285 (+!794 lt!1590285 lt!1590279)) (= lambda!145474 lambda!145458))))

(declare-fun bs!663080 () Bool)

(assert (= bs!663080 (and b!4379942 d!1304256)))

(assert (=> bs!663080 (= (= lt!1590285 lt!1590598) (= lambda!145474 lambda!145461))))

(declare-fun bs!663081 () Bool)

(assert (= bs!663081 (and b!4379942 b!4379827)))

(assert (=> bs!663081 (= lambda!145474 lambda!145463)))

(assert (=> bs!663079 (= (= lt!1590285 lt!1590589) (= lambda!145474 lambda!145459))))

(declare-fun bs!663082 () Bool)

(assert (= bs!663082 (and b!4379942 b!4379822)))

(assert (=> bs!663082 (= (= lt!1590285 (+!794 lt!1590285 lt!1590279)) (= lambda!145474 lambda!145457))))

(declare-fun bs!663083 () Bool)

(assert (= bs!663083 (and b!4379942 b!4379829)))

(assert (=> bs!663083 (= lambda!145474 lambda!145462)))

(declare-fun bs!663084 () Bool)

(assert (= bs!663084 (and b!4379942 d!1304292)))

(assert (=> bs!663084 (= (= lt!1590285 lt!1590622) (= lambda!145474 lambda!145465))))

(assert (=> bs!663081 (= (= lt!1590285 lt!1590613) (= lambda!145474 lambda!145464))))

(declare-fun bs!663085 () Bool)

(assert (= bs!663085 (and b!4379942 b!4379944)))

(assert (=> bs!663085 (= lambda!145474 lambda!145473)))

(assert (=> b!4379942 true))

(declare-fun lt!1590726 () ListMap!2389)

(declare-fun lambda!145475 () Int)

(assert (=> bs!663079 (= (= lt!1590726 (+!794 lt!1590285 lt!1590279)) (= lambda!145475 lambda!145458))))

(assert (=> bs!663080 (= (= lt!1590726 lt!1590598) (= lambda!145475 lambda!145461))))

(assert (=> bs!663081 (= (= lt!1590726 lt!1590285) (= lambda!145475 lambda!145463))))

(assert (=> bs!663079 (= (= lt!1590726 lt!1590589) (= lambda!145475 lambda!145459))))

(assert (=> bs!663082 (= (= lt!1590726 (+!794 lt!1590285 lt!1590279)) (= lambda!145475 lambda!145457))))

(assert (=> bs!663083 (= (= lt!1590726 lt!1590285) (= lambda!145475 lambda!145462))))

(assert (=> bs!663084 (= (= lt!1590726 lt!1590622) (= lambda!145475 lambda!145465))))

(assert (=> b!4379942 (= (= lt!1590726 lt!1590285) (= lambda!145475 lambda!145474))))

(assert (=> bs!663081 (= (= lt!1590726 lt!1590613) (= lambda!145475 lambda!145464))))

(assert (=> bs!663085 (= (= lt!1590726 lt!1590285) (= lambda!145475 lambda!145473))))

(assert (=> b!4379942 true))

(declare-fun bs!663086 () Bool)

(declare-fun d!1304350 () Bool)

(assert (= bs!663086 (and d!1304350 d!1304256)))

(declare-fun lt!1590735 () ListMap!2389)

(declare-fun lambda!145476 () Int)

(assert (=> bs!663086 (= (= lt!1590735 lt!1590598) (= lambda!145476 lambda!145461))))

(declare-fun bs!663087 () Bool)

(assert (= bs!663087 (and d!1304350 b!4379827)))

(assert (=> bs!663087 (= (= lt!1590735 lt!1590285) (= lambda!145476 lambda!145463))))

(declare-fun bs!663088 () Bool)

(assert (= bs!663088 (and d!1304350 b!4379820)))

(assert (=> bs!663088 (= (= lt!1590735 lt!1590589) (= lambda!145476 lambda!145459))))

(declare-fun bs!663089 () Bool)

(assert (= bs!663089 (and d!1304350 b!4379822)))

(assert (=> bs!663089 (= (= lt!1590735 (+!794 lt!1590285 lt!1590279)) (= lambda!145476 lambda!145457))))

(declare-fun bs!663090 () Bool)

(assert (= bs!663090 (and d!1304350 b!4379829)))

(assert (=> bs!663090 (= (= lt!1590735 lt!1590285) (= lambda!145476 lambda!145462))))

(declare-fun bs!663091 () Bool)

(assert (= bs!663091 (and d!1304350 d!1304292)))

(assert (=> bs!663091 (= (= lt!1590735 lt!1590622) (= lambda!145476 lambda!145465))))

(declare-fun bs!663092 () Bool)

(assert (= bs!663092 (and d!1304350 b!4379942)))

(assert (=> bs!663092 (= (= lt!1590735 lt!1590285) (= lambda!145476 lambda!145474))))

(assert (=> bs!663087 (= (= lt!1590735 lt!1590613) (= lambda!145476 lambda!145464))))

(declare-fun bs!663093 () Bool)

(assert (= bs!663093 (and d!1304350 b!4379944)))

(assert (=> bs!663093 (= (= lt!1590735 lt!1590285) (= lambda!145476 lambda!145473))))

(assert (=> bs!663088 (= (= lt!1590735 (+!794 lt!1590285 lt!1590279)) (= lambda!145476 lambda!145458))))

(assert (=> bs!663092 (= (= lt!1590735 lt!1590726) (= lambda!145476 lambda!145475))))

(assert (=> d!1304350 true))

(declare-fun e!2726406 () ListMap!2389)

(assert (=> b!4379942 (= e!2726406 lt!1590726)))

(declare-fun lt!1590730 () ListMap!2389)

(assert (=> b!4379942 (= lt!1590730 (+!794 lt!1590285 (h!54761 lt!1590281)))))

(assert (=> b!4379942 (= lt!1590726 (addToMapMapFromBucket!262 (t!356212 lt!1590281) (+!794 lt!1590285 (h!54761 lt!1590281))))))

(declare-fun lt!1590731 () Unit!75516)

(declare-fun call!304691 () Unit!75516)

(assert (=> b!4379942 (= lt!1590731 call!304691)))

(declare-fun call!304692 () Bool)

(assert (=> b!4379942 call!304692))

(declare-fun lt!1590736 () Unit!75516)

(assert (=> b!4379942 (= lt!1590736 lt!1590731)))

(assert (=> b!4379942 (forall!9279 (toList!3146 lt!1590730) lambda!145475)))

(declare-fun lt!1590733 () Unit!75516)

(declare-fun Unit!75595 () Unit!75516)

(assert (=> b!4379942 (= lt!1590733 Unit!75595)))

(assert (=> b!4379942 (forall!9279 (t!356212 lt!1590281) lambda!145475)))

(declare-fun lt!1590732 () Unit!75516)

(declare-fun Unit!75596 () Unit!75516)

(assert (=> b!4379942 (= lt!1590732 Unit!75596)))

(declare-fun lt!1590725 () Unit!75516)

(declare-fun Unit!75597 () Unit!75516)

(assert (=> b!4379942 (= lt!1590725 Unit!75597)))

(declare-fun lt!1590729 () Unit!75516)

(assert (=> b!4379942 (= lt!1590729 (forallContained!1917 (toList!3146 lt!1590730) lambda!145475 (h!54761 lt!1590281)))))

(assert (=> b!4379942 (contains!11498 lt!1590730 (_1!27641 (h!54761 lt!1590281)))))

(declare-fun lt!1590718 () Unit!75516)

(declare-fun Unit!75598 () Unit!75516)

(assert (=> b!4379942 (= lt!1590718 Unit!75598)))

(assert (=> b!4379942 (contains!11498 lt!1590726 (_1!27641 (h!54761 lt!1590281)))))

(declare-fun lt!1590720 () Unit!75516)

(declare-fun Unit!75599 () Unit!75516)

(assert (=> b!4379942 (= lt!1590720 Unit!75599)))

(assert (=> b!4379942 (forall!9279 lt!1590281 lambda!145475)))

(declare-fun lt!1590728 () Unit!75516)

(declare-fun Unit!75600 () Unit!75516)

(assert (=> b!4379942 (= lt!1590728 Unit!75600)))

(assert (=> b!4379942 (forall!9279 (toList!3146 lt!1590730) lambda!145475)))

(declare-fun lt!1590727 () Unit!75516)

(declare-fun Unit!75601 () Unit!75516)

(assert (=> b!4379942 (= lt!1590727 Unit!75601)))

(declare-fun lt!1590723 () Unit!75516)

(declare-fun Unit!75602 () Unit!75516)

(assert (=> b!4379942 (= lt!1590723 Unit!75602)))

(declare-fun lt!1590734 () Unit!75516)

(assert (=> b!4379942 (= lt!1590734 (addForallContainsKeyThenBeforeAdding!107 lt!1590285 lt!1590726 (_1!27641 (h!54761 lt!1590281)) (_2!27641 (h!54761 lt!1590281))))))

(declare-fun call!304693 () Bool)

(assert (=> b!4379942 call!304693))

(declare-fun lt!1590724 () Unit!75516)

(assert (=> b!4379942 (= lt!1590724 lt!1590734)))

(assert (=> b!4379942 (forall!9279 (toList!3146 lt!1590285) lambda!145475)))

(declare-fun lt!1590722 () Unit!75516)

(declare-fun Unit!75604 () Unit!75516)

(assert (=> b!4379942 (= lt!1590722 Unit!75604)))

(declare-fun res!1803831 () Bool)

(assert (=> b!4379942 (= res!1803831 (forall!9279 lt!1590281 lambda!145475))))

(declare-fun e!2726407 () Bool)

(assert (=> b!4379942 (=> (not res!1803831) (not e!2726407))))

(assert (=> b!4379942 e!2726407))

(declare-fun lt!1590721 () Unit!75516)

(declare-fun Unit!75605 () Unit!75516)

(assert (=> b!4379942 (= lt!1590721 Unit!75605)))

(declare-fun bm!304686 () Bool)

(assert (=> bm!304686 (= call!304691 (lemmaContainsAllItsOwnKeys!107 lt!1590285))))

(declare-fun e!2726408 () Bool)

(assert (=> d!1304350 e!2726408))

(declare-fun res!1803830 () Bool)

(assert (=> d!1304350 (=> (not res!1803830) (not e!2726408))))

(assert (=> d!1304350 (= res!1803830 (forall!9279 lt!1590281 lambda!145476))))

(assert (=> d!1304350 (= lt!1590735 e!2726406)))

(declare-fun c!744926 () Bool)

(assert (=> d!1304350 (= c!744926 ((_ is Nil!49162) lt!1590281))))

(assert (=> d!1304350 (noDuplicateKeys!581 lt!1590281)))

(assert (=> d!1304350 (= (addToMapMapFromBucket!262 lt!1590281 lt!1590285) lt!1590735)))

(declare-fun b!4379943 () Bool)

(assert (=> b!4379943 (= e!2726408 (invariantList!725 (toList!3146 lt!1590735)))))

(assert (=> b!4379944 (= e!2726406 lt!1590285)))

(declare-fun lt!1590738 () Unit!75516)

(assert (=> b!4379944 (= lt!1590738 call!304691)))

(assert (=> b!4379944 call!304693))

(declare-fun lt!1590737 () Unit!75516)

(assert (=> b!4379944 (= lt!1590737 lt!1590738)))

(assert (=> b!4379944 call!304692))

(declare-fun lt!1590719 () Unit!75516)

(declare-fun Unit!75606 () Unit!75516)

(assert (=> b!4379944 (= lt!1590719 Unit!75606)))

(declare-fun b!4379945 () Bool)

(declare-fun res!1803829 () Bool)

(assert (=> b!4379945 (=> (not res!1803829) (not e!2726408))))

(assert (=> b!4379945 (= res!1803829 (forall!9279 (toList!3146 lt!1590285) lambda!145476))))

(declare-fun bm!304687 () Bool)

(assert (=> bm!304687 (= call!304693 (forall!9279 (toList!3146 lt!1590285) (ite c!744926 lambda!145473 lambda!145475)))))

(declare-fun bm!304688 () Bool)

(assert (=> bm!304688 (= call!304692 (forall!9279 (toList!3146 lt!1590285) (ite c!744926 lambda!145473 lambda!145474)))))

(declare-fun b!4379946 () Bool)

(assert (=> b!4379946 (= e!2726407 (forall!9279 (toList!3146 lt!1590285) lambda!145475))))

(assert (= (and d!1304350 c!744926) b!4379944))

(assert (= (and d!1304350 (not c!744926)) b!4379942))

(assert (= (and b!4379942 res!1803831) b!4379946))

(assert (= (or b!4379944 b!4379942) bm!304686))

(assert (= (or b!4379944 b!4379942) bm!304688))

(assert (= (or b!4379944 b!4379942) bm!304687))

(assert (= (and d!1304350 res!1803830) b!4379945))

(assert (= (and b!4379945 res!1803829) b!4379943))

(declare-fun m!5017531 () Bool)

(assert (=> b!4379943 m!5017531))

(declare-fun m!5017533 () Bool)

(assert (=> b!4379945 m!5017533))

(declare-fun m!5017535 () Bool)

(assert (=> d!1304350 m!5017535))

(assert (=> d!1304350 m!5017283))

(declare-fun m!5017537 () Bool)

(assert (=> b!4379942 m!5017537))

(declare-fun m!5017539 () Bool)

(assert (=> b!4379942 m!5017539))

(declare-fun m!5017541 () Bool)

(assert (=> b!4379942 m!5017541))

(declare-fun m!5017543 () Bool)

(assert (=> b!4379942 m!5017543))

(declare-fun m!5017545 () Bool)

(assert (=> b!4379942 m!5017545))

(declare-fun m!5017547 () Bool)

(assert (=> b!4379942 m!5017547))

(declare-fun m!5017549 () Bool)

(assert (=> b!4379942 m!5017549))

(assert (=> b!4379942 m!5017539))

(assert (=> b!4379942 m!5017545))

(declare-fun m!5017551 () Bool)

(assert (=> b!4379942 m!5017551))

(assert (=> b!4379942 m!5017541))

(declare-fun m!5017553 () Bool)

(assert (=> b!4379942 m!5017553))

(declare-fun m!5017555 () Bool)

(assert (=> b!4379942 m!5017555))

(declare-fun m!5017557 () Bool)

(assert (=> bm!304688 m!5017557))

(assert (=> b!4379946 m!5017549))

(assert (=> bm!304686 m!5017347))

(declare-fun m!5017559 () Bool)

(assert (=> bm!304687 m!5017559))

(assert (=> b!4379619 d!1304350))

(declare-fun d!1304352 () Bool)

(assert (=> d!1304352 (= (eq!319 lt!1590276 lt!1590288) (= (content!7818 (toList!3146 lt!1590276)) (content!7818 (toList!3146 lt!1590288))))))

(declare-fun bs!663094 () Bool)

(assert (= bs!663094 d!1304352))

(declare-fun m!5017561 () Bool)

(assert (=> bs!663094 m!5017561))

(assert (=> bs!663094 m!5017015))

(assert (=> b!4379619 d!1304352))

(declare-fun bs!663095 () Bool)

(declare-fun d!1304354 () Bool)

(assert (= bs!663095 (and d!1304354 start!425368)))

(declare-fun lambda!145477 () Int)

(assert (=> bs!663095 (= lambda!145477 lambda!145373)))

(declare-fun bs!663096 () Bool)

(assert (= bs!663096 (and d!1304354 d!1304308)))

(assert (=> bs!663096 (= lambda!145477 lambda!145468)))

(declare-fun bs!663097 () Bool)

(assert (= bs!663097 (and d!1304354 d!1304318)))

(assert (=> bs!663097 (= lambda!145477 lambda!145469)))

(declare-fun lt!1590739 () ListMap!2389)

(assert (=> d!1304354 (invariantList!725 (toList!3146 lt!1590739))))

(declare-fun e!2726409 () ListMap!2389)

(assert (=> d!1304354 (= lt!1590739 e!2726409)))

(declare-fun c!744927 () Bool)

(assert (=> d!1304354 (= c!744927 ((_ is Cons!49163) (toList!3145 lt!1590280)))))

(assert (=> d!1304354 (forall!9277 (toList!3145 lt!1590280) lambda!145477)))

(assert (=> d!1304354 (= (extractMap!640 (toList!3145 lt!1590280)) lt!1590739)))

(declare-fun b!4379947 () Bool)

(assert (=> b!4379947 (= e!2726409 (addToMapMapFromBucket!262 (_2!27642 (h!54762 (toList!3145 lt!1590280))) (extractMap!640 (t!356213 (toList!3145 lt!1590280)))))))

(declare-fun b!4379948 () Bool)

(assert (=> b!4379948 (= e!2726409 (ListMap!2390 Nil!49162))))

(assert (= (and d!1304354 c!744927) b!4379947))

(assert (= (and d!1304354 (not c!744927)) b!4379948))

(declare-fun m!5017563 () Bool)

(assert (=> d!1304354 m!5017563))

(declare-fun m!5017565 () Bool)

(assert (=> d!1304354 m!5017565))

(declare-fun m!5017567 () Bool)

(assert (=> b!4379947 m!5017567))

(assert (=> b!4379947 m!5017567))

(declare-fun m!5017569 () Bool)

(assert (=> b!4379947 m!5017569))

(assert (=> b!4379619 d!1304354))

(declare-fun bs!663098 () Bool)

(declare-fun d!1304356 () Bool)

(assert (= bs!663098 (and d!1304356 start!425368)))

(declare-fun lambda!145480 () Int)

(assert (=> bs!663098 (= lambda!145480 lambda!145373)))

(declare-fun bs!663099 () Bool)

(assert (= bs!663099 (and d!1304356 d!1304308)))

(assert (=> bs!663099 (= lambda!145480 lambda!145468)))

(declare-fun bs!663100 () Bool)

(assert (= bs!663100 (and d!1304356 d!1304318)))

(assert (=> bs!663100 (= lambda!145480 lambda!145469)))

(declare-fun bs!663101 () Bool)

(assert (= bs!663101 (and d!1304356 d!1304354)))

(assert (=> bs!663101 (= lambda!145480 lambda!145477)))

(assert (=> d!1304356 (eq!319 (extractMap!640 (toList!3145 (+!793 lm!1707 (tuple2!48697 hash!377 lt!1590267)))) (-!256 (extractMap!640 (toList!3145 lm!1707)) key!3918))))

(declare-fun lt!1590742 () Unit!75516)

(declare-fun choose!27333 (ListLongMap!1795 (_ BitVec 64) List!49286 K!10520 Hashable!4973) Unit!75516)

(assert (=> d!1304356 (= lt!1590742 (choose!27333 lm!1707 hash!377 lt!1590267 key!3918 hashF!1247))))

(assert (=> d!1304356 (forall!9277 (toList!3145 lm!1707) lambda!145480)))

(assert (=> d!1304356 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!71 lm!1707 hash!377 lt!1590267 key!3918 hashF!1247) lt!1590742)))

(declare-fun bs!663102 () Bool)

(assert (= bs!663102 d!1304356))

(declare-fun m!5017571 () Bool)

(assert (=> bs!663102 m!5017571))

(declare-fun m!5017573 () Bool)

(assert (=> bs!663102 m!5017573))

(declare-fun m!5017575 () Bool)

(assert (=> bs!663102 m!5017575))

(declare-fun m!5017577 () Bool)

(assert (=> bs!663102 m!5017577))

(assert (=> bs!663102 m!5017573))

(assert (=> bs!663102 m!5016881))

(assert (=> bs!663102 m!5017575))

(assert (=> bs!663102 m!5016843))

(declare-fun m!5017579 () Bool)

(assert (=> bs!663102 m!5017579))

(assert (=> bs!663102 m!5016881))

(assert (=> b!4379619 d!1304356))

(declare-fun bs!663103 () Bool)

(declare-fun b!4379951 () Bool)

(assert (= bs!663103 (and b!4379951 d!1304256)))

(declare-fun lambda!145481 () Int)

(assert (=> bs!663103 (= (= lt!1590285 lt!1590598) (= lambda!145481 lambda!145461))))

(declare-fun bs!663104 () Bool)

(assert (= bs!663104 (and b!4379951 b!4379827)))

(assert (=> bs!663104 (= lambda!145481 lambda!145463)))

(declare-fun bs!663105 () Bool)

(assert (= bs!663105 (and b!4379951 b!4379822)))

(assert (=> bs!663105 (= (= lt!1590285 (+!794 lt!1590285 lt!1590279)) (= lambda!145481 lambda!145457))))

(declare-fun bs!663106 () Bool)

(assert (= bs!663106 (and b!4379951 b!4379829)))

(assert (=> bs!663106 (= lambda!145481 lambda!145462)))

(declare-fun bs!663107 () Bool)

(assert (= bs!663107 (and b!4379951 d!1304292)))

(assert (=> bs!663107 (= (= lt!1590285 lt!1590622) (= lambda!145481 lambda!145465))))

(declare-fun bs!663108 () Bool)

(assert (= bs!663108 (and b!4379951 b!4379942)))

(assert (=> bs!663108 (= lambda!145481 lambda!145474)))

(assert (=> bs!663104 (= (= lt!1590285 lt!1590613) (= lambda!145481 lambda!145464))))

(declare-fun bs!663109 () Bool)

(assert (= bs!663109 (and b!4379951 b!4379944)))

(assert (=> bs!663109 (= lambda!145481 lambda!145473)))

(declare-fun bs!663110 () Bool)

(assert (= bs!663110 (and b!4379951 b!4379820)))

(assert (=> bs!663110 (= (= lt!1590285 (+!794 lt!1590285 lt!1590279)) (= lambda!145481 lambda!145458))))

(assert (=> bs!663108 (= (= lt!1590285 lt!1590726) (= lambda!145481 lambda!145475))))

(assert (=> bs!663110 (= (= lt!1590285 lt!1590589) (= lambda!145481 lambda!145459))))

(declare-fun bs!663111 () Bool)

(assert (= bs!663111 (and b!4379951 d!1304350)))

(assert (=> bs!663111 (= (= lt!1590285 lt!1590735) (= lambda!145481 lambda!145476))))

(assert (=> b!4379951 true))

(declare-fun bs!663112 () Bool)

(declare-fun b!4379949 () Bool)

(assert (= bs!663112 (and b!4379949 d!1304256)))

(declare-fun lambda!145482 () Int)

(assert (=> bs!663112 (= (= lt!1590285 lt!1590598) (= lambda!145482 lambda!145461))))

(declare-fun bs!663113 () Bool)

(assert (= bs!663113 (and b!4379949 b!4379822)))

(assert (=> bs!663113 (= (= lt!1590285 (+!794 lt!1590285 lt!1590279)) (= lambda!145482 lambda!145457))))

(declare-fun bs!663114 () Bool)

(assert (= bs!663114 (and b!4379949 b!4379829)))

(assert (=> bs!663114 (= lambda!145482 lambda!145462)))

(declare-fun bs!663115 () Bool)

(assert (= bs!663115 (and b!4379949 d!1304292)))

(assert (=> bs!663115 (= (= lt!1590285 lt!1590622) (= lambda!145482 lambda!145465))))

(declare-fun bs!663116 () Bool)

(assert (= bs!663116 (and b!4379949 b!4379942)))

(assert (=> bs!663116 (= lambda!145482 lambda!145474)))

(declare-fun bs!663117 () Bool)

(assert (= bs!663117 (and b!4379949 b!4379827)))

(assert (=> bs!663117 (= (= lt!1590285 lt!1590613) (= lambda!145482 lambda!145464))))

(declare-fun bs!663118 () Bool)

(assert (= bs!663118 (and b!4379949 b!4379944)))

(assert (=> bs!663118 (= lambda!145482 lambda!145473)))

(declare-fun bs!663119 () Bool)

(assert (= bs!663119 (and b!4379949 b!4379820)))

(assert (=> bs!663119 (= (= lt!1590285 (+!794 lt!1590285 lt!1590279)) (= lambda!145482 lambda!145458))))

(assert (=> bs!663116 (= (= lt!1590285 lt!1590726) (= lambda!145482 lambda!145475))))

(declare-fun bs!663120 () Bool)

(assert (= bs!663120 (and b!4379949 b!4379951)))

(assert (=> bs!663120 (= lambda!145482 lambda!145481)))

(assert (=> bs!663117 (= lambda!145482 lambda!145463)))

(assert (=> bs!663119 (= (= lt!1590285 lt!1590589) (= lambda!145482 lambda!145459))))

(declare-fun bs!663121 () Bool)

(assert (= bs!663121 (and b!4379949 d!1304350)))

(assert (=> bs!663121 (= (= lt!1590285 lt!1590735) (= lambda!145482 lambda!145476))))

(assert (=> b!4379949 true))

(declare-fun lambda!145483 () Int)

(declare-fun lt!1590751 () ListMap!2389)

(assert (=> bs!663112 (= (= lt!1590751 lt!1590598) (= lambda!145483 lambda!145461))))

(assert (=> bs!663113 (= (= lt!1590751 (+!794 lt!1590285 lt!1590279)) (= lambda!145483 lambda!145457))))

(assert (=> bs!663114 (= (= lt!1590751 lt!1590285) (= lambda!145483 lambda!145462))))

(assert (=> b!4379949 (= (= lt!1590751 lt!1590285) (= lambda!145483 lambda!145482))))

(assert (=> bs!663115 (= (= lt!1590751 lt!1590622) (= lambda!145483 lambda!145465))))

(assert (=> bs!663116 (= (= lt!1590751 lt!1590285) (= lambda!145483 lambda!145474))))

(assert (=> bs!663117 (= (= lt!1590751 lt!1590613) (= lambda!145483 lambda!145464))))

(assert (=> bs!663118 (= (= lt!1590751 lt!1590285) (= lambda!145483 lambda!145473))))

(assert (=> bs!663119 (= (= lt!1590751 (+!794 lt!1590285 lt!1590279)) (= lambda!145483 lambda!145458))))

(assert (=> bs!663116 (= (= lt!1590751 lt!1590726) (= lambda!145483 lambda!145475))))

(assert (=> bs!663120 (= (= lt!1590751 lt!1590285) (= lambda!145483 lambda!145481))))

(assert (=> bs!663117 (= (= lt!1590751 lt!1590285) (= lambda!145483 lambda!145463))))

(assert (=> bs!663119 (= (= lt!1590751 lt!1590589) (= lambda!145483 lambda!145459))))

(assert (=> bs!663121 (= (= lt!1590751 lt!1590735) (= lambda!145483 lambda!145476))))

(assert (=> b!4379949 true))

(declare-fun bs!663122 () Bool)

(declare-fun d!1304358 () Bool)

(assert (= bs!663122 (and d!1304358 d!1304256)))

(declare-fun lambda!145484 () Int)

(declare-fun lt!1590760 () ListMap!2389)

(assert (=> bs!663122 (= (= lt!1590760 lt!1590598) (= lambda!145484 lambda!145461))))

(declare-fun bs!663123 () Bool)

(assert (= bs!663123 (and d!1304358 b!4379949)))

(assert (=> bs!663123 (= (= lt!1590760 lt!1590751) (= lambda!145484 lambda!145483))))

(declare-fun bs!663124 () Bool)

(assert (= bs!663124 (and d!1304358 b!4379822)))

(assert (=> bs!663124 (= (= lt!1590760 (+!794 lt!1590285 lt!1590279)) (= lambda!145484 lambda!145457))))

(declare-fun bs!663125 () Bool)

(assert (= bs!663125 (and d!1304358 b!4379829)))

(assert (=> bs!663125 (= (= lt!1590760 lt!1590285) (= lambda!145484 lambda!145462))))

(assert (=> bs!663123 (= (= lt!1590760 lt!1590285) (= lambda!145484 lambda!145482))))

(declare-fun bs!663126 () Bool)

(assert (= bs!663126 (and d!1304358 d!1304292)))

(assert (=> bs!663126 (= (= lt!1590760 lt!1590622) (= lambda!145484 lambda!145465))))

(declare-fun bs!663127 () Bool)

(assert (= bs!663127 (and d!1304358 b!4379942)))

(assert (=> bs!663127 (= (= lt!1590760 lt!1590285) (= lambda!145484 lambda!145474))))

(declare-fun bs!663128 () Bool)

(assert (= bs!663128 (and d!1304358 b!4379827)))

(assert (=> bs!663128 (= (= lt!1590760 lt!1590613) (= lambda!145484 lambda!145464))))

(declare-fun bs!663129 () Bool)

(assert (= bs!663129 (and d!1304358 b!4379944)))

(assert (=> bs!663129 (= (= lt!1590760 lt!1590285) (= lambda!145484 lambda!145473))))

(declare-fun bs!663130 () Bool)

(assert (= bs!663130 (and d!1304358 b!4379820)))

(assert (=> bs!663130 (= (= lt!1590760 (+!794 lt!1590285 lt!1590279)) (= lambda!145484 lambda!145458))))

(assert (=> bs!663127 (= (= lt!1590760 lt!1590726) (= lambda!145484 lambda!145475))))

(declare-fun bs!663131 () Bool)

(assert (= bs!663131 (and d!1304358 b!4379951)))

(assert (=> bs!663131 (= (= lt!1590760 lt!1590285) (= lambda!145484 lambda!145481))))

(assert (=> bs!663128 (= (= lt!1590760 lt!1590285) (= lambda!145484 lambda!145463))))

(assert (=> bs!663130 (= (= lt!1590760 lt!1590589) (= lambda!145484 lambda!145459))))

(declare-fun bs!663132 () Bool)

(assert (= bs!663132 (and d!1304358 d!1304350)))

(assert (=> bs!663132 (= (= lt!1590760 lt!1590735) (= lambda!145484 lambda!145476))))

(assert (=> d!1304358 true))

(declare-fun e!2726410 () ListMap!2389)

(assert (=> b!4379949 (= e!2726410 lt!1590751)))

(declare-fun lt!1590755 () ListMap!2389)

(assert (=> b!4379949 (= lt!1590755 (+!794 lt!1590285 (h!54761 lt!1590284)))))

(assert (=> b!4379949 (= lt!1590751 (addToMapMapFromBucket!262 (t!356212 lt!1590284) (+!794 lt!1590285 (h!54761 lt!1590284))))))

(declare-fun lt!1590756 () Unit!75516)

(declare-fun call!304694 () Unit!75516)

(assert (=> b!4379949 (= lt!1590756 call!304694)))

(declare-fun call!304695 () Bool)

(assert (=> b!4379949 call!304695))

(declare-fun lt!1590761 () Unit!75516)

(assert (=> b!4379949 (= lt!1590761 lt!1590756)))

(assert (=> b!4379949 (forall!9279 (toList!3146 lt!1590755) lambda!145483)))

(declare-fun lt!1590758 () Unit!75516)

(declare-fun Unit!75607 () Unit!75516)

(assert (=> b!4379949 (= lt!1590758 Unit!75607)))

(assert (=> b!4379949 (forall!9279 (t!356212 lt!1590284) lambda!145483)))

(declare-fun lt!1590757 () Unit!75516)

(declare-fun Unit!75608 () Unit!75516)

(assert (=> b!4379949 (= lt!1590757 Unit!75608)))

(declare-fun lt!1590750 () Unit!75516)

(declare-fun Unit!75609 () Unit!75516)

(assert (=> b!4379949 (= lt!1590750 Unit!75609)))

(declare-fun lt!1590754 () Unit!75516)

(assert (=> b!4379949 (= lt!1590754 (forallContained!1917 (toList!3146 lt!1590755) lambda!145483 (h!54761 lt!1590284)))))

(assert (=> b!4379949 (contains!11498 lt!1590755 (_1!27641 (h!54761 lt!1590284)))))

(declare-fun lt!1590743 () Unit!75516)

(declare-fun Unit!75610 () Unit!75516)

(assert (=> b!4379949 (= lt!1590743 Unit!75610)))

(assert (=> b!4379949 (contains!11498 lt!1590751 (_1!27641 (h!54761 lt!1590284)))))

(declare-fun lt!1590745 () Unit!75516)

(declare-fun Unit!75611 () Unit!75516)

(assert (=> b!4379949 (= lt!1590745 Unit!75611)))

(assert (=> b!4379949 (forall!9279 lt!1590284 lambda!145483)))

(declare-fun lt!1590753 () Unit!75516)

(declare-fun Unit!75612 () Unit!75516)

(assert (=> b!4379949 (= lt!1590753 Unit!75612)))

(assert (=> b!4379949 (forall!9279 (toList!3146 lt!1590755) lambda!145483)))

(declare-fun lt!1590752 () Unit!75516)

(declare-fun Unit!75613 () Unit!75516)

(assert (=> b!4379949 (= lt!1590752 Unit!75613)))

(declare-fun lt!1590748 () Unit!75516)

(declare-fun Unit!75614 () Unit!75516)

(assert (=> b!4379949 (= lt!1590748 Unit!75614)))

(declare-fun lt!1590759 () Unit!75516)

(assert (=> b!4379949 (= lt!1590759 (addForallContainsKeyThenBeforeAdding!107 lt!1590285 lt!1590751 (_1!27641 (h!54761 lt!1590284)) (_2!27641 (h!54761 lt!1590284))))))

(declare-fun call!304696 () Bool)

(assert (=> b!4379949 call!304696))

(declare-fun lt!1590749 () Unit!75516)

(assert (=> b!4379949 (= lt!1590749 lt!1590759)))

(assert (=> b!4379949 (forall!9279 (toList!3146 lt!1590285) lambda!145483)))

(declare-fun lt!1590747 () Unit!75516)

(declare-fun Unit!75615 () Unit!75516)

(assert (=> b!4379949 (= lt!1590747 Unit!75615)))

(declare-fun res!1803834 () Bool)

(assert (=> b!4379949 (= res!1803834 (forall!9279 lt!1590284 lambda!145483))))

(declare-fun e!2726411 () Bool)

(assert (=> b!4379949 (=> (not res!1803834) (not e!2726411))))

(assert (=> b!4379949 e!2726411))

(declare-fun lt!1590746 () Unit!75516)

(declare-fun Unit!75616 () Unit!75516)

(assert (=> b!4379949 (= lt!1590746 Unit!75616)))

(declare-fun bm!304689 () Bool)

(assert (=> bm!304689 (= call!304694 (lemmaContainsAllItsOwnKeys!107 lt!1590285))))

(declare-fun e!2726412 () Bool)

(assert (=> d!1304358 e!2726412))

(declare-fun res!1803833 () Bool)

(assert (=> d!1304358 (=> (not res!1803833) (not e!2726412))))

(assert (=> d!1304358 (= res!1803833 (forall!9279 lt!1590284 lambda!145484))))

(assert (=> d!1304358 (= lt!1590760 e!2726410)))

(declare-fun c!744928 () Bool)

(assert (=> d!1304358 (= c!744928 ((_ is Nil!49162) lt!1590284))))

(assert (=> d!1304358 (noDuplicateKeys!581 lt!1590284)))

(assert (=> d!1304358 (= (addToMapMapFromBucket!262 lt!1590284 lt!1590285) lt!1590760)))

(declare-fun b!4379950 () Bool)

(assert (=> b!4379950 (= e!2726412 (invariantList!725 (toList!3146 lt!1590760)))))

(assert (=> b!4379951 (= e!2726410 lt!1590285)))

(declare-fun lt!1590763 () Unit!75516)

(assert (=> b!4379951 (= lt!1590763 call!304694)))

(assert (=> b!4379951 call!304696))

(declare-fun lt!1590762 () Unit!75516)

(assert (=> b!4379951 (= lt!1590762 lt!1590763)))

(assert (=> b!4379951 call!304695))

(declare-fun lt!1590744 () Unit!75516)

(declare-fun Unit!75617 () Unit!75516)

(assert (=> b!4379951 (= lt!1590744 Unit!75617)))

(declare-fun b!4379952 () Bool)

(declare-fun res!1803832 () Bool)

(assert (=> b!4379952 (=> (not res!1803832) (not e!2726412))))

(assert (=> b!4379952 (= res!1803832 (forall!9279 (toList!3146 lt!1590285) lambda!145484))))

(declare-fun bm!304690 () Bool)

(assert (=> bm!304690 (= call!304696 (forall!9279 (toList!3146 lt!1590285) (ite c!744928 lambda!145481 lambda!145483)))))

(declare-fun bm!304691 () Bool)

(assert (=> bm!304691 (= call!304695 (forall!9279 (toList!3146 lt!1590285) (ite c!744928 lambda!145481 lambda!145482)))))

(declare-fun b!4379953 () Bool)

(assert (=> b!4379953 (= e!2726411 (forall!9279 (toList!3146 lt!1590285) lambda!145483))))

(assert (= (and d!1304358 c!744928) b!4379951))

(assert (= (and d!1304358 (not c!744928)) b!4379949))

(assert (= (and b!4379949 res!1803834) b!4379953))

(assert (= (or b!4379951 b!4379949) bm!304689))

(assert (= (or b!4379951 b!4379949) bm!304691))

(assert (= (or b!4379951 b!4379949) bm!304690))

(assert (= (and d!1304358 res!1803833) b!4379952))

(assert (= (and b!4379952 res!1803832) b!4379950))

(declare-fun m!5017581 () Bool)

(assert (=> b!4379950 m!5017581))

(declare-fun m!5017583 () Bool)

(assert (=> b!4379952 m!5017583))

(declare-fun m!5017585 () Bool)

(assert (=> d!1304358 m!5017585))

(declare-fun m!5017587 () Bool)

(assert (=> d!1304358 m!5017587))

(declare-fun m!5017589 () Bool)

(assert (=> b!4379949 m!5017589))

(declare-fun m!5017591 () Bool)

(assert (=> b!4379949 m!5017591))

(declare-fun m!5017593 () Bool)

(assert (=> b!4379949 m!5017593))

(declare-fun m!5017595 () Bool)

(assert (=> b!4379949 m!5017595))

(declare-fun m!5017597 () Bool)

(assert (=> b!4379949 m!5017597))

(declare-fun m!5017599 () Bool)

(assert (=> b!4379949 m!5017599))

(declare-fun m!5017601 () Bool)

(assert (=> b!4379949 m!5017601))

(assert (=> b!4379949 m!5017591))

(assert (=> b!4379949 m!5017597))

(declare-fun m!5017603 () Bool)

(assert (=> b!4379949 m!5017603))

(assert (=> b!4379949 m!5017593))

(declare-fun m!5017605 () Bool)

(assert (=> b!4379949 m!5017605))

(declare-fun m!5017607 () Bool)

(assert (=> b!4379949 m!5017607))

(declare-fun m!5017609 () Bool)

(assert (=> bm!304691 m!5017609))

(assert (=> b!4379953 m!5017601))

(assert (=> bm!304689 m!5017347))

(declare-fun m!5017611 () Bool)

(assert (=> bm!304690 m!5017611))

(assert (=> b!4379619 d!1304358))

(declare-fun d!1304360 () Bool)

(declare-fun e!2726413 () Bool)

(assert (=> d!1304360 e!2726413))

(declare-fun res!1803835 () Bool)

(assert (=> d!1304360 (=> (not res!1803835) (not e!2726413))))

(declare-fun lt!1590764 () ListLongMap!1795)

(assert (=> d!1304360 (= res!1803835 (contains!11499 lt!1590764 (_1!27642 (tuple2!48697 hash!377 lt!1590267))))))

(declare-fun lt!1590767 () List!49287)

(assert (=> d!1304360 (= lt!1590764 (ListLongMap!1796 lt!1590767))))

(declare-fun lt!1590766 () Unit!75516)

(declare-fun lt!1590765 () Unit!75516)

(assert (=> d!1304360 (= lt!1590766 lt!1590765)))

(assert (=> d!1304360 (= (getValueByKey!548 lt!1590767 (_1!27642 (tuple2!48697 hash!377 lt!1590267))) (Some!10561 (_2!27642 (tuple2!48697 hash!377 lt!1590267))))))

(assert (=> d!1304360 (= lt!1590765 (lemmaContainsTupThenGetReturnValue!311 lt!1590767 (_1!27642 (tuple2!48697 hash!377 lt!1590267)) (_2!27642 (tuple2!48697 hash!377 lt!1590267))))))

(assert (=> d!1304360 (= lt!1590767 (insertStrictlySorted!178 (toList!3145 lm!1707) (_1!27642 (tuple2!48697 hash!377 lt!1590267)) (_2!27642 (tuple2!48697 hash!377 lt!1590267))))))

(assert (=> d!1304360 (= (+!793 lm!1707 (tuple2!48697 hash!377 lt!1590267)) lt!1590764)))

(declare-fun b!4379954 () Bool)

(declare-fun res!1803836 () Bool)

(assert (=> b!4379954 (=> (not res!1803836) (not e!2726413))))

(assert (=> b!4379954 (= res!1803836 (= (getValueByKey!548 (toList!3145 lt!1590764) (_1!27642 (tuple2!48697 hash!377 lt!1590267))) (Some!10561 (_2!27642 (tuple2!48697 hash!377 lt!1590267)))))))

(declare-fun b!4379955 () Bool)

(assert (=> b!4379955 (= e!2726413 (contains!11497 (toList!3145 lt!1590764) (tuple2!48697 hash!377 lt!1590267)))))

(assert (= (and d!1304360 res!1803835) b!4379954))

(assert (= (and b!4379954 res!1803836) b!4379955))

(declare-fun m!5017613 () Bool)

(assert (=> d!1304360 m!5017613))

(declare-fun m!5017615 () Bool)

(assert (=> d!1304360 m!5017615))

(declare-fun m!5017617 () Bool)

(assert (=> d!1304360 m!5017617))

(declare-fun m!5017619 () Bool)

(assert (=> d!1304360 m!5017619))

(declare-fun m!5017621 () Bool)

(assert (=> b!4379954 m!5017621))

(declare-fun m!5017623 () Bool)

(assert (=> b!4379955 m!5017623))

(assert (=> b!4379619 d!1304360))

(declare-fun bm!304692 () Bool)

(declare-fun call!304697 () Bool)

(declare-fun e!2726417 () List!49289)

(assert (=> bm!304692 (= call!304697 (contains!11503 e!2726417 key!3918))))

(declare-fun c!744930 () Bool)

(declare-fun c!744931 () Bool)

(assert (=> bm!304692 (= c!744930 c!744931)))

(declare-fun b!4379956 () Bool)

(declare-fun e!2726419 () Unit!75516)

(declare-fun Unit!75618 () Unit!75516)

(assert (=> b!4379956 (= e!2726419 Unit!75618)))

(declare-fun b!4379957 () Bool)

(declare-fun e!2726415 () Unit!75516)

(assert (=> b!4379957 (= e!2726415 e!2726419)))

(declare-fun c!744929 () Bool)

(assert (=> b!4379957 (= c!744929 call!304697)))

(declare-fun b!4379958 () Bool)

(assert (=> b!4379958 (= e!2726417 (getKeysList!173 (toList!3146 lt!1590286)))))

(declare-fun b!4379959 () Bool)

(assert (=> b!4379959 (= e!2726417 (keys!16673 lt!1590286))))

(declare-fun b!4379960 () Bool)

(assert (=> b!4379960 false))

(declare-fun lt!1590769 () Unit!75516)

(declare-fun lt!1590772 () Unit!75516)

(assert (=> b!4379960 (= lt!1590769 lt!1590772)))

(assert (=> b!4379960 (containsKey!856 (toList!3146 lt!1590286) key!3918)))

(assert (=> b!4379960 (= lt!1590772 (lemmaInGetKeysListThenContainsKey!171 (toList!3146 lt!1590286) key!3918))))

(declare-fun Unit!75619 () Unit!75516)

(assert (=> b!4379960 (= e!2726419 Unit!75619)))

(declare-fun b!4379961 () Bool)

(declare-fun e!2726416 () Bool)

(declare-fun e!2726414 () Bool)

(assert (=> b!4379961 (= e!2726416 e!2726414)))

(declare-fun res!1803837 () Bool)

(assert (=> b!4379961 (=> (not res!1803837) (not e!2726414))))

(assert (=> b!4379961 (= res!1803837 (isDefined!7857 (getValueByKey!550 (toList!3146 lt!1590286) key!3918)))))

(declare-fun d!1304362 () Bool)

(assert (=> d!1304362 e!2726416))

(declare-fun res!1803839 () Bool)

(assert (=> d!1304362 (=> res!1803839 e!2726416)))

(declare-fun e!2726418 () Bool)

(assert (=> d!1304362 (= res!1803839 e!2726418)))

(declare-fun res!1803838 () Bool)

(assert (=> d!1304362 (=> (not res!1803838) (not e!2726418))))

(declare-fun lt!1590775 () Bool)

(assert (=> d!1304362 (= res!1803838 (not lt!1590775))))

(declare-fun lt!1590770 () Bool)

(assert (=> d!1304362 (= lt!1590775 lt!1590770)))

(declare-fun lt!1590771 () Unit!75516)

(assert (=> d!1304362 (= lt!1590771 e!2726415)))

(assert (=> d!1304362 (= c!744931 lt!1590770)))

(assert (=> d!1304362 (= lt!1590770 (containsKey!856 (toList!3146 lt!1590286) key!3918))))

(assert (=> d!1304362 (= (contains!11498 lt!1590286 key!3918) lt!1590775)))

(declare-fun b!4379962 () Bool)

(declare-fun lt!1590774 () Unit!75516)

(assert (=> b!4379962 (= e!2726415 lt!1590774)))

(declare-fun lt!1590773 () Unit!75516)

(assert (=> b!4379962 (= lt!1590773 (lemmaContainsKeyImpliesGetValueByKeyDefined!460 (toList!3146 lt!1590286) key!3918))))

(assert (=> b!4379962 (isDefined!7857 (getValueByKey!550 (toList!3146 lt!1590286) key!3918))))

(declare-fun lt!1590768 () Unit!75516)

(assert (=> b!4379962 (= lt!1590768 lt!1590773)))

(assert (=> b!4379962 (= lt!1590774 (lemmaInListThenGetKeysListContains!170 (toList!3146 lt!1590286) key!3918))))

(assert (=> b!4379962 call!304697))

(declare-fun b!4379963 () Bool)

(assert (=> b!4379963 (= e!2726418 (not (contains!11503 (keys!16673 lt!1590286) key!3918)))))

(declare-fun b!4379964 () Bool)

(assert (=> b!4379964 (= e!2726414 (contains!11503 (keys!16673 lt!1590286) key!3918))))

(assert (= (and d!1304362 c!744931) b!4379962))

(assert (= (and d!1304362 (not c!744931)) b!4379957))

(assert (= (and b!4379957 c!744929) b!4379960))

(assert (= (and b!4379957 (not c!744929)) b!4379956))

(assert (= (or b!4379962 b!4379957) bm!304692))

(assert (= (and bm!304692 c!744930) b!4379958))

(assert (= (and bm!304692 (not c!744930)) b!4379959))

(assert (= (and d!1304362 res!1803838) b!4379963))

(assert (= (and d!1304362 (not res!1803839)) b!4379961))

(assert (= (and b!4379961 res!1803837) b!4379964))

(declare-fun m!5017625 () Bool)

(assert (=> b!4379962 m!5017625))

(declare-fun m!5017627 () Bool)

(assert (=> b!4379962 m!5017627))

(assert (=> b!4379962 m!5017627))

(declare-fun m!5017629 () Bool)

(assert (=> b!4379962 m!5017629))

(declare-fun m!5017631 () Bool)

(assert (=> b!4379962 m!5017631))

(assert (=> b!4379959 m!5017521))

(declare-fun m!5017633 () Bool)

(assert (=> d!1304362 m!5017633))

(declare-fun m!5017635 () Bool)

(assert (=> bm!304692 m!5017635))

(declare-fun m!5017637 () Bool)

(assert (=> b!4379958 m!5017637))

(assert (=> b!4379961 m!5017627))

(assert (=> b!4379961 m!5017627))

(assert (=> b!4379961 m!5017629))

(assert (=> b!4379960 m!5017633))

(declare-fun m!5017639 () Bool)

(assert (=> b!4379960 m!5017639))

(assert (=> b!4379964 m!5017521))

(assert (=> b!4379964 m!5017521))

(declare-fun m!5017641 () Bool)

(assert (=> b!4379964 m!5017641))

(assert (=> b!4379963 m!5017521))

(assert (=> b!4379963 m!5017521))

(assert (=> b!4379963 m!5017641))

(assert (=> b!4379630 d!1304362))

(declare-fun bs!663133 () Bool)

(declare-fun d!1304364 () Bool)

(assert (= bs!663133 (and d!1304364 d!1304354)))

(declare-fun lambda!145485 () Int)

(assert (=> bs!663133 (= lambda!145485 lambda!145477)))

(declare-fun bs!663134 () Bool)

(assert (= bs!663134 (and d!1304364 d!1304308)))

(assert (=> bs!663134 (= lambda!145485 lambda!145468)))

(declare-fun bs!663135 () Bool)

(assert (= bs!663135 (and d!1304364 d!1304318)))

(assert (=> bs!663135 (= lambda!145485 lambda!145469)))

(declare-fun bs!663136 () Bool)

(assert (= bs!663136 (and d!1304364 d!1304356)))

(assert (=> bs!663136 (= lambda!145485 lambda!145480)))

(declare-fun bs!663137 () Bool)

(assert (= bs!663137 (and d!1304364 start!425368)))

(assert (=> bs!663137 (= lambda!145485 lambda!145373)))

(declare-fun lt!1590776 () ListMap!2389)

(assert (=> d!1304364 (invariantList!725 (toList!3146 lt!1590776))))

(declare-fun e!2726420 () ListMap!2389)

(assert (=> d!1304364 (= lt!1590776 e!2726420)))

(declare-fun c!744932 () Bool)

(assert (=> d!1304364 (= c!744932 ((_ is Cons!49163) (toList!3145 lm!1707)))))

(assert (=> d!1304364 (forall!9277 (toList!3145 lm!1707) lambda!145485)))

(assert (=> d!1304364 (= (extractMap!640 (toList!3145 lm!1707)) lt!1590776)))

(declare-fun b!4379965 () Bool)

(assert (=> b!4379965 (= e!2726420 (addToMapMapFromBucket!262 (_2!27642 (h!54762 (toList!3145 lm!1707))) (extractMap!640 (t!356213 (toList!3145 lm!1707)))))))

(declare-fun b!4379966 () Bool)

(assert (=> b!4379966 (= e!2726420 (ListMap!2390 Nil!49162))))

(assert (= (and d!1304364 c!744932) b!4379965))

(assert (= (and d!1304364 (not c!744932)) b!4379966))

(declare-fun m!5017643 () Bool)

(assert (=> d!1304364 m!5017643))

(declare-fun m!5017645 () Bool)

(assert (=> d!1304364 m!5017645))

(assert (=> b!4379965 m!5016829))

(assert (=> b!4379965 m!5016829))

(declare-fun m!5017647 () Bool)

(assert (=> b!4379965 m!5017647))

(assert (=> b!4379630 d!1304364))

(declare-fun bs!663138 () Bool)

(declare-fun d!1304366 () Bool)

(assert (= bs!663138 (and d!1304366 d!1304256)))

(declare-fun lambda!145488 () Int)

(assert (=> bs!663138 (not (= lambda!145488 lambda!145461))))

(declare-fun bs!663139 () Bool)

(assert (= bs!663139 (and d!1304366 b!4379949)))

(assert (=> bs!663139 (not (= lambda!145488 lambda!145483))))

(declare-fun bs!663140 () Bool)

(assert (= bs!663140 (and d!1304366 b!4379822)))

(assert (=> bs!663140 (not (= lambda!145488 lambda!145457))))

(declare-fun bs!663141 () Bool)

(assert (= bs!663141 (and d!1304366 b!4379829)))

(assert (=> bs!663141 (not (= lambda!145488 lambda!145462))))

(assert (=> bs!663139 (not (= lambda!145488 lambda!145482))))

(declare-fun bs!663142 () Bool)

(assert (= bs!663142 (and d!1304366 d!1304292)))

(assert (=> bs!663142 (not (= lambda!145488 lambda!145465))))

(declare-fun bs!663143 () Bool)

(assert (= bs!663143 (and d!1304366 b!4379942)))

(assert (=> bs!663143 (not (= lambda!145488 lambda!145474))))

(declare-fun bs!663144 () Bool)

(assert (= bs!663144 (and d!1304366 d!1304358)))

(assert (=> bs!663144 (not (= lambda!145488 lambda!145484))))

(declare-fun bs!663145 () Bool)

(assert (= bs!663145 (and d!1304366 b!4379827)))

(assert (=> bs!663145 (not (= lambda!145488 lambda!145464))))

(declare-fun bs!663146 () Bool)

(assert (= bs!663146 (and d!1304366 b!4379944)))

(assert (=> bs!663146 (not (= lambda!145488 lambda!145473))))

(declare-fun bs!663147 () Bool)

(assert (= bs!663147 (and d!1304366 b!4379820)))

(assert (=> bs!663147 (not (= lambda!145488 lambda!145458))))

(assert (=> bs!663143 (not (= lambda!145488 lambda!145475))))

(declare-fun bs!663148 () Bool)

(assert (= bs!663148 (and d!1304366 b!4379951)))

(assert (=> bs!663148 (not (= lambda!145488 lambda!145481))))

(assert (=> bs!663145 (not (= lambda!145488 lambda!145463))))

(assert (=> bs!663147 (not (= lambda!145488 lambda!145459))))

(declare-fun bs!663149 () Bool)

(assert (= bs!663149 (and d!1304366 d!1304350)))

(assert (=> bs!663149 (not (= lambda!145488 lambda!145476))))

(assert (=> d!1304366 true))

(assert (=> d!1304366 true))

(assert (=> d!1304366 (= (allKeysSameHash!539 newBucket!200 hash!377 hashF!1247) (forall!9279 newBucket!200 lambda!145488))))

(declare-fun bs!663150 () Bool)

(assert (= bs!663150 d!1304366))

(declare-fun m!5017649 () Bool)

(assert (=> bs!663150 m!5017649))

(assert (=> b!4379621 d!1304366))

(assert (=> b!4379622 d!1304214))

(declare-fun d!1304368 () Bool)

(declare-fun res!1803840 () Bool)

(declare-fun e!2726421 () Bool)

(assert (=> d!1304368 (=> res!1803840 e!2726421)))

(assert (=> d!1304368 (= res!1803840 ((_ is Nil!49163) (toList!3145 lt!1590280)))))

(assert (=> d!1304368 (= (forall!9277 (toList!3145 lt!1590280) lambda!145373) e!2726421)))

(declare-fun b!4379971 () Bool)

(declare-fun e!2726422 () Bool)

(assert (=> b!4379971 (= e!2726421 e!2726422)))

(declare-fun res!1803841 () Bool)

(assert (=> b!4379971 (=> (not res!1803841) (not e!2726422))))

(assert (=> b!4379971 (= res!1803841 (dynLambda!20713 lambda!145373 (h!54762 (toList!3145 lt!1590280))))))

(declare-fun b!4379972 () Bool)

(assert (=> b!4379972 (= e!2726422 (forall!9277 (t!356213 (toList!3145 lt!1590280)) lambda!145373))))

(assert (= (and d!1304368 (not res!1803840)) b!4379971))

(assert (= (and b!4379971 res!1803841) b!4379972))

(declare-fun b_lambda!135333 () Bool)

(assert (=> (not b_lambda!135333) (not b!4379971)))

(declare-fun m!5017651 () Bool)

(assert (=> b!4379971 m!5017651))

(declare-fun m!5017653 () Bool)

(assert (=> b!4379972 m!5017653))

(assert (=> b!4379624 d!1304368))

(declare-fun bs!663151 () Bool)

(declare-fun d!1304370 () Bool)

(assert (= bs!663151 (and d!1304370 d!1304354)))

(declare-fun lambda!145491 () Int)

(assert (=> bs!663151 (not (= lambda!145491 lambda!145477))))

(declare-fun bs!663152 () Bool)

(assert (= bs!663152 (and d!1304370 d!1304308)))

(assert (=> bs!663152 (not (= lambda!145491 lambda!145468))))

(declare-fun bs!663153 () Bool)

(assert (= bs!663153 (and d!1304370 d!1304318)))

(assert (=> bs!663153 (not (= lambda!145491 lambda!145469))))

(declare-fun bs!663154 () Bool)

(assert (= bs!663154 (and d!1304370 d!1304356)))

(assert (=> bs!663154 (not (= lambda!145491 lambda!145480))))

(declare-fun bs!663155 () Bool)

(assert (= bs!663155 (and d!1304370 d!1304364)))

(assert (=> bs!663155 (not (= lambda!145491 lambda!145485))))

(declare-fun bs!663156 () Bool)

(assert (= bs!663156 (and d!1304370 start!425368)))

(assert (=> bs!663156 (not (= lambda!145491 lambda!145373))))

(assert (=> d!1304370 true))

(assert (=> d!1304370 (= (allKeysSameHashInMap!685 lm!1707 hashF!1247) (forall!9277 (toList!3145 lm!1707) lambda!145491))))

(declare-fun bs!663157 () Bool)

(assert (= bs!663157 d!1304370))

(declare-fun m!5017655 () Bool)

(assert (=> bs!663157 m!5017655))

(assert (=> b!4379623 d!1304370))

(declare-fun tp!1331230 () Bool)

(declare-fun e!2726425 () Bool)

(declare-fun b!4379979 () Bool)

(assert (=> b!4379979 (= e!2726425 (and tp_is_empty!25561 tp_is_empty!25563 tp!1331230))))

(assert (=> b!4379628 (= tp!1331218 e!2726425)))

(assert (= (and b!4379628 ((_ is Cons!49162) (t!356212 newBucket!200))) b!4379979))

(declare-fun b!4379984 () Bool)

(declare-fun e!2726428 () Bool)

(declare-fun tp!1331235 () Bool)

(declare-fun tp!1331236 () Bool)

(assert (=> b!4379984 (= e!2726428 (and tp!1331235 tp!1331236))))

(assert (=> b!4379618 (= tp!1331217 e!2726428)))

(assert (= (and b!4379618 ((_ is Cons!49163) (toList!3145 lm!1707))) b!4379984))

(declare-fun b_lambda!135335 () Bool)

(assert (= b_lambda!135313 (or start!425368 b_lambda!135335)))

(declare-fun bs!663158 () Bool)

(declare-fun d!1304372 () Bool)

(assert (= bs!663158 (and d!1304372 start!425368)))

(assert (=> bs!663158 (= (dynLambda!20713 lambda!145373 lt!1590274) (noDuplicateKeys!581 (_2!27642 lt!1590274)))))

(declare-fun m!5017657 () Bool)

(assert (=> bs!663158 m!5017657))

(assert (=> d!1304248 d!1304372))

(declare-fun b_lambda!135337 () Bool)

(assert (= b_lambda!135311 (or start!425368 b_lambda!135337)))

(declare-fun bs!663159 () Bool)

(declare-fun d!1304374 () Bool)

(assert (= bs!663159 (and d!1304374 start!425368)))

(assert (=> bs!663159 (= (dynLambda!20713 lambda!145373 (h!54762 (toList!3145 lm!1707))) (noDuplicateKeys!581 (_2!27642 (h!54762 (toList!3145 lm!1707)))))))

(declare-fun m!5017659 () Bool)

(assert (=> bs!663159 m!5017659))

(assert (=> b!4379705 d!1304374))

(declare-fun b_lambda!135339 () Bool)

(assert (= b_lambda!135305 (or start!425368 b_lambda!135339)))

(declare-fun bs!663160 () Bool)

(declare-fun d!1304376 () Bool)

(assert (= bs!663160 (and d!1304376 start!425368)))

(assert (=> bs!663160 (= (dynLambda!20713 lambda!145373 (h!54762 (toList!3145 lt!1590278))) (noDuplicateKeys!581 (_2!27642 (h!54762 (toList!3145 lt!1590278)))))))

(declare-fun m!5017661 () Bool)

(assert (=> bs!663160 m!5017661))

(assert (=> b!4379659 d!1304376))

(declare-fun b_lambda!135341 () Bool)

(assert (= b_lambda!135309 (or start!425368 b_lambda!135341)))

(declare-fun bs!663161 () Bool)

(declare-fun d!1304378 () Bool)

(assert (= bs!663161 (and d!1304378 start!425368)))

(assert (=> bs!663161 (= (dynLambda!20713 lambda!145373 (tuple2!48697 hash!377 newBucket!200)) (noDuplicateKeys!581 (_2!27642 (tuple2!48697 hash!377 newBucket!200))))))

(declare-fun m!5017663 () Bool)

(assert (=> bs!663161 m!5017663))

(assert (=> b!4379704 d!1304378))

(declare-fun b_lambda!135343 () Bool)

(assert (= b_lambda!135333 (or start!425368 b_lambda!135343)))

(declare-fun bs!663162 () Bool)

(declare-fun d!1304380 () Bool)

(assert (= bs!663162 (and d!1304380 start!425368)))

(assert (=> bs!663162 (= (dynLambda!20713 lambda!145373 (h!54762 (toList!3145 lt!1590280))) (noDuplicateKeys!581 (_2!27642 (h!54762 (toList!3145 lt!1590280)))))))

(declare-fun m!5017665 () Bool)

(assert (=> bs!663162 m!5017665))

(assert (=> b!4379971 d!1304380))

(check-sat (not b!4379660) (not b!4379831) (not d!1304250) (not b_lambda!135343) (not b!4379929) (not b!4379963) (not bs!663159) (not b!4379935) (not b!4379932) tp_is_empty!25561 (not b!4379739) (not d!1304212) (not b!4379730) (not d!1304344) (not b!4379857) (not b!4379717) (not bs!663162) (not bm!304689) (not d!1304350) (not b!4379923) (not d!1304322) (not bm!304690) (not d!1304256) (not b!4379856) (not d!1304348) tp_is_empty!25563 (not d!1304246) (not b!4379936) (not d!1304216) (not d!1304362) (not b!4379737) (not b!4379964) (not bs!663158) (not b!4379928) (not d!1304208) (not b!4379941) (not b_lambda!135337) (not b!4379960) (not b!4379959) (not b!4379938) (not bm!304679) (not b!4379727) (not b!4379961) (not b!4379827) (not b!4379954) (not b!4379947) (not b!4379949) (not bm!304691) (not d!1304248) (not d!1304346) (not b!4379972) (not b!4379979) (not b!4379943) (not bm!304678) (not b_lambda!135341) (not b!4379922) (not b!4379946) (not b_lambda!135335) (not b!4379685) (not b!4379684) (not b!4379933) (not bs!663160) (not d!1304252) (not b!4379927) (not d!1304358) (not b!4379921) (not d!1304254) (not b!4379821) (not b!4379962) (not d!1304364) (not b!4379950) (not bm!304687) (not d!1304292) (not d!1304224) (not b!4379724) (not b!4379958) (not b!4379953) (not d!1304366) (not d!1304340) (not b!4379706) (not b_lambda!135339) (not b!4379824) (not d!1304318) (not b!4379820) (not b!4379965) (not bm!304685) (not d!1304240) (not bm!304692) (not bs!663161) (not bm!304680) (not bm!304676) (not bm!304684) (not bm!304686) (not b!4379926) (not b!4379823) (not b!4379952) (not d!1304356) (not b!4379828) (not d!1304354) (not b!4379636) (not d!1304308) (not b!4379885) (not b!4379955) (not bm!304681) (not b!4379942) (not d!1304370) (not d!1304238) (not bm!304677) (not b!4379882) (not d!1304360) (not b!4379635) (not b!4379937) (not b!4379945) (not b!4379924) (not b!4379984) (not d!1304342) (not d!1304352) (not d!1304338) (not d!1304244) (not b!4379925) (not bm!304688) (not b!4379934) (not d!1304296) (not b!4379830))
(check-sat)
