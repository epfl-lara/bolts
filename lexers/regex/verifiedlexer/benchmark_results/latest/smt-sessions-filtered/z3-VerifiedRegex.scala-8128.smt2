; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!418372 () Bool)

(assert start!418372)

(declare-fun b!4336802 () Bool)

(declare-fun res!1778940 () Bool)

(declare-fun e!2698504 () Bool)

(assert (=> b!4336802 (=> (not res!1778940) (not e!2698504))))

(declare-datatypes ((V!10291 0))(
  ( (V!10292 (val!16307 Int)) )
))
(declare-datatypes ((K!10045 0))(
  ( (K!10046 (val!16308 Int)) )
))
(declare-datatypes ((tuple2!47934 0))(
  ( (tuple2!47935 (_1!27261 K!10045) (_2!27261 V!10291)) )
))
(declare-datatypes ((List!48813 0))(
  ( (Nil!48689) (Cons!48689 (h!54194 tuple2!47934) (t!355729 List!48813)) )
))
(declare-datatypes ((tuple2!47936 0))(
  ( (tuple2!47937 (_1!27262 (_ BitVec 64)) (_2!27262 List!48813)) )
))
(declare-datatypes ((List!48814 0))(
  ( (Nil!48690) (Cons!48690 (h!54195 tuple2!47936) (t!355730 List!48814)) )
))
(declare-datatypes ((ListLongMap!1415 0))(
  ( (ListLongMap!1416 (toList!2765 List!48814)) )
))
(declare-fun lt!1550522 () ListLongMap!1415)

(declare-fun lambda!136141 () Int)

(declare-fun forall!8963 (List!48814 Int) Bool)

(assert (=> b!4336802 (= res!1778940 (forall!8963 (toList!2765 lt!1550522) lambda!136141))))

(declare-fun b!4336803 () Bool)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun lt!1550516 () tuple2!47936)

(declare-fun lm!1707 () ListLongMap!1415)

(get-info :version)

(assert (=> b!4336803 (= e!2698504 (or (not ((_ is Cons!48690) (toList!2765 lm!1707))) (not (= (_1!27262 (h!54195 (toList!2765 lm!1707))) hash!377)) (= lt!1550522 (ListLongMap!1416 (Cons!48690 lt!1550516 (t!355730 (toList!2765 lm!1707)))))))))

(declare-fun b!4336804 () Bool)

(declare-fun e!2698505 () Bool)

(declare-fun tp!1329063 () Bool)

(assert (=> b!4336804 (= e!2698505 tp!1329063)))

(declare-fun b!4336805 () Bool)

(declare-fun e!2698503 () Bool)

(declare-fun e!2698507 () Bool)

(assert (=> b!4336805 (= e!2698503 e!2698507)))

(declare-fun res!1778937 () Bool)

(assert (=> b!4336805 (=> res!1778937 e!2698507)))

(assert (=> b!4336805 (= res!1778937 (or (not ((_ is Cons!48690) (toList!2765 lm!1707))) (not (= (_1!27262 (h!54195 (toList!2765 lm!1707))) hash!377))))))

(assert (=> b!4336805 e!2698504))

(declare-fun res!1778931 () Bool)

(assert (=> b!4336805 (=> (not res!1778931) (not e!2698504))))

(assert (=> b!4336805 (= res!1778931 (forall!8963 (toList!2765 lt!1550522) lambda!136141))))

(declare-fun +!453 (ListLongMap!1415 tuple2!47936) ListLongMap!1415)

(assert (=> b!4336805 (= lt!1550522 (+!453 lm!1707 lt!1550516))))

(declare-fun newBucket!200 () List!48813)

(assert (=> b!4336805 (= lt!1550516 (tuple2!47937 hash!377 newBucket!200))))

(declare-datatypes ((Unit!68767 0))(
  ( (Unit!68768) )
))
(declare-fun lt!1550528 () Unit!68767)

(declare-fun addValidProp!45 (ListLongMap!1415 Int (_ BitVec 64) List!48813) Unit!68767)

(assert (=> b!4336805 (= lt!1550528 (addValidProp!45 lm!1707 lambda!136141 hash!377 newBucket!200))))

(assert (=> b!4336805 (forall!8963 (toList!2765 lm!1707) lambda!136141)))

(declare-fun res!1778939 () Bool)

(declare-fun e!2698506 () Bool)

(assert (=> start!418372 (=> (not res!1778939) (not e!2698506))))

(assert (=> start!418372 (= res!1778939 (forall!8963 (toList!2765 lm!1707) lambda!136141))))

(assert (=> start!418372 e!2698506))

(declare-fun e!2698508 () Bool)

(assert (=> start!418372 e!2698508))

(assert (=> start!418372 true))

(declare-fun inv!64231 (ListLongMap!1415) Bool)

(assert (=> start!418372 (and (inv!64231 lm!1707) e!2698505)))

(declare-fun tp_is_empty!24801 () Bool)

(assert (=> start!418372 tp_is_empty!24801))

(declare-fun tp_is_empty!24803 () Bool)

(assert (=> start!418372 tp_is_empty!24803))

(declare-fun b!4336806 () Bool)

(declare-fun res!1778933 () Bool)

(assert (=> b!4336806 (=> (not res!1778933) (not e!2698506))))

(declare-datatypes ((Hashable!4783 0))(
  ( (HashableExt!4782 (__x!30486 Int)) )
))
(declare-fun hashF!1247 () Hashable!4783)

(declare-fun allKeysSameHashInMap!495 (ListLongMap!1415 Hashable!4783) Bool)

(assert (=> b!4336806 (= res!1778933 (allKeysSameHashInMap!495 lm!1707 hashF!1247))))

(declare-fun b!4336807 () Bool)

(assert (=> b!4336807 (= e!2698506 (not e!2698503))))

(declare-fun res!1778935 () Bool)

(assert (=> b!4336807 (=> res!1778935 e!2698503)))

(declare-fun lt!1550518 () List!48813)

(assert (=> b!4336807 (= res!1778935 (not (= newBucket!200 lt!1550518)))))

(declare-fun lt!1550519 () tuple2!47934)

(declare-fun lt!1550515 () List!48813)

(assert (=> b!4336807 (= lt!1550518 (Cons!48689 lt!1550519 lt!1550515))))

(declare-fun lt!1550517 () List!48813)

(declare-fun key!3918 () K!10045)

(declare-fun removePairForKey!361 (List!48813 K!10045) List!48813)

(assert (=> b!4336807 (= lt!1550515 (removePairForKey!361 lt!1550517 key!3918))))

(declare-fun newValue!99 () V!10291)

(assert (=> b!4336807 (= lt!1550519 (tuple2!47935 key!3918 newValue!99))))

(declare-fun lt!1550520 () tuple2!47936)

(declare-fun lt!1550527 () Unit!68767)

(declare-fun forallContained!1613 (List!48814 Int tuple2!47936) Unit!68767)

(assert (=> b!4336807 (= lt!1550527 (forallContained!1613 (toList!2765 lm!1707) lambda!136141 lt!1550520))))

(declare-fun contains!10758 (List!48814 tuple2!47936) Bool)

(assert (=> b!4336807 (contains!10758 (toList!2765 lm!1707) lt!1550520)))

(assert (=> b!4336807 (= lt!1550520 (tuple2!47937 hash!377 lt!1550517))))

(declare-fun lt!1550514 () Unit!68767)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!238 (List!48814 (_ BitVec 64) List!48813) Unit!68767)

(assert (=> b!4336807 (= lt!1550514 (lemmaGetValueByKeyImpliesContainsTuple!238 (toList!2765 lm!1707) hash!377 lt!1550517))))

(declare-fun apply!11243 (ListLongMap!1415 (_ BitVec 64)) List!48813)

(assert (=> b!4336807 (= lt!1550517 (apply!11243 lm!1707 hash!377))))

(declare-fun b!4336808 () Bool)

(declare-fun res!1778936 () Bool)

(assert (=> b!4336808 (=> (not res!1778936) (not e!2698506))))

(declare-fun contains!10759 (ListLongMap!1415 (_ BitVec 64)) Bool)

(assert (=> b!4336808 (= res!1778936 (contains!10759 lm!1707 hash!377))))

(declare-fun b!4336809 () Bool)

(declare-fun res!1778938 () Bool)

(assert (=> b!4336809 (=> (not res!1778938) (not e!2698506))))

(declare-fun allKeysSameHash!349 (List!48813 (_ BitVec 64) Hashable!4783) Bool)

(assert (=> b!4336809 (= res!1778938 (allKeysSameHash!349 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4336810 () Bool)

(declare-fun tp!1329064 () Bool)

(assert (=> b!4336810 (= e!2698508 (and tp_is_empty!24801 tp_is_empty!24803 tp!1329064))))

(declare-fun b!4336811 () Bool)

(declare-fun noDuplicateKeys!391 (List!48813) Bool)

(assert (=> b!4336811 (= e!2698507 (noDuplicateKeys!391 lt!1550515))))

(declare-datatypes ((ListMap!2009 0))(
  ( (ListMap!2010 (toList!2766 List!48813)) )
))
(declare-fun lt!1550523 () ListMap!2009)

(declare-fun lt!1550521 () ListMap!2009)

(declare-fun eq!181 (ListMap!2009 ListMap!2009) Bool)

(declare-fun +!454 (ListMap!2009 tuple2!47934) ListMap!2009)

(declare-fun addToMapMapFromBucket!99 (List!48813 ListMap!2009) ListMap!2009)

(assert (=> b!4336811 (eq!181 lt!1550521 (+!454 (addToMapMapFromBucket!99 lt!1550515 lt!1550523) lt!1550519))))

(declare-fun lt!1550526 () Unit!68767)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!10 (ListMap!2009 K!10045 V!10291 List!48813) Unit!68767)

(assert (=> b!4336811 (= lt!1550526 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!10 lt!1550523 key!3918 newValue!99 lt!1550515))))

(declare-fun lt!1550524 () ListMap!2009)

(assert (=> b!4336811 (= lt!1550524 lt!1550521)))

(assert (=> b!4336811 (= lt!1550521 (addToMapMapFromBucket!99 lt!1550515 (+!454 lt!1550523 lt!1550519)))))

(declare-fun lt!1550525 () ListMap!2009)

(assert (=> b!4336811 (= lt!1550525 lt!1550524)))

(assert (=> b!4336811 (= lt!1550524 (addToMapMapFromBucket!99 lt!1550518 lt!1550523))))

(assert (=> b!4336811 (= lt!1550525 (addToMapMapFromBucket!99 newBucket!200 lt!1550523))))

(declare-fun extractMap!450 (List!48814) ListMap!2009)

(assert (=> b!4336811 (= lt!1550525 (extractMap!450 (toList!2765 lt!1550522)))))

(assert (=> b!4336811 (= lt!1550523 (extractMap!450 (t!355730 (toList!2765 lm!1707))))))

(declare-fun b!4336812 () Bool)

(declare-fun res!1778934 () Bool)

(assert (=> b!4336812 (=> (not res!1778934) (not e!2698506))))

(declare-fun hash!1342 (Hashable!4783 K!10045) (_ BitVec 64))

(assert (=> b!4336812 (= res!1778934 (= (hash!1342 hashF!1247 key!3918) hash!377))))

(declare-fun b!4336813 () Bool)

(declare-fun res!1778941 () Bool)

(assert (=> b!4336813 (=> (not res!1778941) (not e!2698506))))

(declare-fun contains!10760 (ListMap!2009 K!10045) Bool)

(assert (=> b!4336813 (= res!1778941 (contains!10760 (extractMap!450 (toList!2765 lm!1707)) key!3918))))

(declare-fun b!4336814 () Bool)

(declare-fun res!1778932 () Bool)

(assert (=> b!4336814 (=> res!1778932 e!2698503)))

(assert (=> b!4336814 (= res!1778932 (not (noDuplicateKeys!391 newBucket!200)))))

(assert (= (and start!418372 res!1778939) b!4336806))

(assert (= (and b!4336806 res!1778933) b!4336812))

(assert (= (and b!4336812 res!1778934) b!4336809))

(assert (= (and b!4336809 res!1778938) b!4336813))

(assert (= (and b!4336813 res!1778941) b!4336808))

(assert (= (and b!4336808 res!1778936) b!4336807))

(assert (= (and b!4336807 (not res!1778935)) b!4336814))

(assert (= (and b!4336814 (not res!1778932)) b!4336805))

(assert (= (and b!4336805 res!1778931) b!4336802))

(assert (= (and b!4336802 res!1778940) b!4336803))

(assert (= (and b!4336805 (not res!1778937)) b!4336811))

(assert (= (and start!418372 ((_ is Cons!48689) newBucket!200)) b!4336810))

(assert (= start!418372 b!4336804))

(declare-fun m!4932555 () Bool)

(assert (=> b!4336807 m!4932555))

(declare-fun m!4932557 () Bool)

(assert (=> b!4336807 m!4932557))

(declare-fun m!4932559 () Bool)

(assert (=> b!4336807 m!4932559))

(declare-fun m!4932561 () Bool)

(assert (=> b!4336807 m!4932561))

(declare-fun m!4932563 () Bool)

(assert (=> b!4336807 m!4932563))

(declare-fun m!4932565 () Bool)

(assert (=> b!4336808 m!4932565))

(declare-fun m!4932567 () Bool)

(assert (=> b!4336806 m!4932567))

(declare-fun m!4932569 () Bool)

(assert (=> b!4336813 m!4932569))

(assert (=> b!4336813 m!4932569))

(declare-fun m!4932571 () Bool)

(assert (=> b!4336813 m!4932571))

(declare-fun m!4932573 () Bool)

(assert (=> b!4336809 m!4932573))

(declare-fun m!4932575 () Bool)

(assert (=> start!418372 m!4932575))

(declare-fun m!4932577 () Bool)

(assert (=> start!418372 m!4932577))

(declare-fun m!4932579 () Bool)

(assert (=> b!4336805 m!4932579))

(declare-fun m!4932581 () Bool)

(assert (=> b!4336805 m!4932581))

(declare-fun m!4932583 () Bool)

(assert (=> b!4336805 m!4932583))

(assert (=> b!4336805 m!4932575))

(declare-fun m!4932585 () Bool)

(assert (=> b!4336814 m!4932585))

(declare-fun m!4932587 () Bool)

(assert (=> b!4336812 m!4932587))

(assert (=> b!4336802 m!4932579))

(declare-fun m!4932589 () Bool)

(assert (=> b!4336811 m!4932589))

(declare-fun m!4932591 () Bool)

(assert (=> b!4336811 m!4932591))

(declare-fun m!4932593 () Bool)

(assert (=> b!4336811 m!4932593))

(declare-fun m!4932595 () Bool)

(assert (=> b!4336811 m!4932595))

(declare-fun m!4932597 () Bool)

(assert (=> b!4336811 m!4932597))

(declare-fun m!4932599 () Bool)

(assert (=> b!4336811 m!4932599))

(declare-fun m!4932601 () Bool)

(assert (=> b!4336811 m!4932601))

(assert (=> b!4336811 m!4932595))

(declare-fun m!4932603 () Bool)

(assert (=> b!4336811 m!4932603))

(assert (=> b!4336811 m!4932597))

(declare-fun m!4932605 () Bool)

(assert (=> b!4336811 m!4932605))

(declare-fun m!4932607 () Bool)

(assert (=> b!4336811 m!4932607))

(declare-fun m!4932609 () Bool)

(assert (=> b!4336811 m!4932609))

(assert (=> b!4336811 m!4932593))

(check-sat (not b!4336814) (not b!4336813) (not b!4336804) tp_is_empty!24803 (not b!4336809) tp_is_empty!24801 (not b!4336805) (not b!4336807) (not b!4336808) (not b!4336806) (not b!4336812) (not b!4336811) (not b!4336810) (not start!418372) (not b!4336802))
(check-sat)
(get-model)

(declare-fun d!1274759 () Bool)

(declare-fun res!1778961 () Bool)

(declare-fun e!2698528 () Bool)

(assert (=> d!1274759 (=> res!1778961 e!2698528)))

(assert (=> d!1274759 (= res!1778961 ((_ is Nil!48690) (toList!2765 lt!1550522)))))

(assert (=> d!1274759 (= (forall!8963 (toList!2765 lt!1550522) lambda!136141) e!2698528)))

(declare-fun b!4336840 () Bool)

(declare-fun e!2698529 () Bool)

(assert (=> b!4336840 (= e!2698528 e!2698529)))

(declare-fun res!1778962 () Bool)

(assert (=> b!4336840 (=> (not res!1778962) (not e!2698529))))

(declare-fun dynLambda!20571 (Int tuple2!47936) Bool)

(assert (=> b!4336840 (= res!1778962 (dynLambda!20571 lambda!136141 (h!54195 (toList!2765 lt!1550522))))))

(declare-fun b!4336841 () Bool)

(assert (=> b!4336841 (= e!2698529 (forall!8963 (t!355730 (toList!2765 lt!1550522)) lambda!136141))))

(assert (= (and d!1274759 (not res!1778961)) b!4336840))

(assert (= (and b!4336840 res!1778962) b!4336841))

(declare-fun b_lambda!128365 () Bool)

(assert (=> (not b_lambda!128365) (not b!4336840)))

(declare-fun m!4932635 () Bool)

(assert (=> b!4336840 m!4932635))

(declare-fun m!4932637 () Bool)

(assert (=> b!4336841 m!4932637))

(assert (=> b!4336805 d!1274759))

(declare-fun d!1274763 () Bool)

(declare-fun e!2698549 () Bool)

(assert (=> d!1274763 e!2698549))

(declare-fun res!1778979 () Bool)

(assert (=> d!1274763 (=> (not res!1778979) (not e!2698549))))

(declare-fun lt!1550580 () ListLongMap!1415)

(assert (=> d!1274763 (= res!1778979 (contains!10759 lt!1550580 (_1!27262 lt!1550516)))))

(declare-fun lt!1550582 () List!48814)

(assert (=> d!1274763 (= lt!1550580 (ListLongMap!1416 lt!1550582))))

(declare-fun lt!1550581 () Unit!68767)

(declare-fun lt!1550583 () Unit!68767)

(assert (=> d!1274763 (= lt!1550581 lt!1550583)))

(declare-datatypes ((Option!10376 0))(
  ( (None!10375) (Some!10375 (v!43123 List!48813)) )
))
(declare-fun getValueByKey!362 (List!48814 (_ BitVec 64)) Option!10376)

(assert (=> d!1274763 (= (getValueByKey!362 lt!1550582 (_1!27262 lt!1550516)) (Some!10375 (_2!27262 lt!1550516)))))

(declare-fun lemmaContainsTupThenGetReturnValue!145 (List!48814 (_ BitVec 64) List!48813) Unit!68767)

(assert (=> d!1274763 (= lt!1550583 (lemmaContainsTupThenGetReturnValue!145 lt!1550582 (_1!27262 lt!1550516) (_2!27262 lt!1550516)))))

(declare-fun insertStrictlySorted!89 (List!48814 (_ BitVec 64) List!48813) List!48814)

(assert (=> d!1274763 (= lt!1550582 (insertStrictlySorted!89 (toList!2765 lm!1707) (_1!27262 lt!1550516) (_2!27262 lt!1550516)))))

(assert (=> d!1274763 (= (+!453 lm!1707 lt!1550516) lt!1550580)))

(declare-fun b!4336870 () Bool)

(declare-fun res!1778978 () Bool)

(assert (=> b!4336870 (=> (not res!1778978) (not e!2698549))))

(assert (=> b!4336870 (= res!1778978 (= (getValueByKey!362 (toList!2765 lt!1550580) (_1!27262 lt!1550516)) (Some!10375 (_2!27262 lt!1550516))))))

(declare-fun b!4336871 () Bool)

(assert (=> b!4336871 (= e!2698549 (contains!10758 (toList!2765 lt!1550580) lt!1550516))))

(assert (= (and d!1274763 res!1778979) b!4336870))

(assert (= (and b!4336870 res!1778978) b!4336871))

(declare-fun m!4932651 () Bool)

(assert (=> d!1274763 m!4932651))

(declare-fun m!4932653 () Bool)

(assert (=> d!1274763 m!4932653))

(declare-fun m!4932655 () Bool)

(assert (=> d!1274763 m!4932655))

(declare-fun m!4932657 () Bool)

(assert (=> d!1274763 m!4932657))

(declare-fun m!4932659 () Bool)

(assert (=> b!4336870 m!4932659))

(declare-fun m!4932661 () Bool)

(assert (=> b!4336871 m!4932661))

(assert (=> b!4336805 d!1274763))

(declare-fun d!1274769 () Bool)

(assert (=> d!1274769 (forall!8963 (toList!2765 (+!453 lm!1707 (tuple2!47937 hash!377 newBucket!200))) lambda!136141)))

(declare-fun lt!1550597 () Unit!68767)

(declare-fun choose!26554 (ListLongMap!1415 Int (_ BitVec 64) List!48813) Unit!68767)

(assert (=> d!1274769 (= lt!1550597 (choose!26554 lm!1707 lambda!136141 hash!377 newBucket!200))))

(declare-fun e!2698561 () Bool)

(assert (=> d!1274769 e!2698561))

(declare-fun res!1778985 () Bool)

(assert (=> d!1274769 (=> (not res!1778985) (not e!2698561))))

(assert (=> d!1274769 (= res!1778985 (forall!8963 (toList!2765 lm!1707) lambda!136141))))

(assert (=> d!1274769 (= (addValidProp!45 lm!1707 lambda!136141 hash!377 newBucket!200) lt!1550597)))

(declare-fun b!4336890 () Bool)

(assert (=> b!4336890 (= e!2698561 (dynLambda!20571 lambda!136141 (tuple2!47937 hash!377 newBucket!200)))))

(assert (= (and d!1274769 res!1778985) b!4336890))

(declare-fun b_lambda!128371 () Bool)

(assert (=> (not b_lambda!128371) (not b!4336890)))

(declare-fun m!4932689 () Bool)

(assert (=> d!1274769 m!4932689))

(declare-fun m!4932691 () Bool)

(assert (=> d!1274769 m!4932691))

(declare-fun m!4932693 () Bool)

(assert (=> d!1274769 m!4932693))

(assert (=> d!1274769 m!4932575))

(declare-fun m!4932695 () Bool)

(assert (=> b!4336890 m!4932695))

(assert (=> b!4336805 d!1274769))

(declare-fun d!1274775 () Bool)

(declare-fun res!1778986 () Bool)

(declare-fun e!2698562 () Bool)

(assert (=> d!1274775 (=> res!1778986 e!2698562)))

(assert (=> d!1274775 (= res!1778986 ((_ is Nil!48690) (toList!2765 lm!1707)))))

(assert (=> d!1274775 (= (forall!8963 (toList!2765 lm!1707) lambda!136141) e!2698562)))

(declare-fun b!4336893 () Bool)

(declare-fun e!2698563 () Bool)

(assert (=> b!4336893 (= e!2698562 e!2698563)))

(declare-fun res!1778987 () Bool)

(assert (=> b!4336893 (=> (not res!1778987) (not e!2698563))))

(assert (=> b!4336893 (= res!1778987 (dynLambda!20571 lambda!136141 (h!54195 (toList!2765 lm!1707))))))

(declare-fun b!4336894 () Bool)

(assert (=> b!4336894 (= e!2698563 (forall!8963 (t!355730 (toList!2765 lm!1707)) lambda!136141))))

(assert (= (and d!1274775 (not res!1778986)) b!4336893))

(assert (= (and b!4336893 res!1778987) b!4336894))

(declare-fun b_lambda!128373 () Bool)

(assert (=> (not b_lambda!128373) (not b!4336893)))

(declare-fun m!4932699 () Bool)

(assert (=> b!4336893 m!4932699))

(declare-fun m!4932701 () Bool)

(assert (=> b!4336894 m!4932701))

(assert (=> b!4336805 d!1274775))

(declare-fun d!1274779 () Bool)

(declare-fun res!1778999 () Bool)

(declare-fun e!2698573 () Bool)

(assert (=> d!1274779 (=> res!1778999 e!2698573)))

(assert (=> d!1274779 (= res!1778999 (not ((_ is Cons!48689) newBucket!200)))))

(assert (=> d!1274779 (= (noDuplicateKeys!391 newBucket!200) e!2698573)))

(declare-fun b!4336906 () Bool)

(declare-fun e!2698576 () Bool)

(assert (=> b!4336906 (= e!2698573 e!2698576)))

(declare-fun res!1779000 () Bool)

(assert (=> b!4336906 (=> (not res!1779000) (not e!2698576))))

(declare-fun containsKey!546 (List!48813 K!10045) Bool)

(assert (=> b!4336906 (= res!1779000 (not (containsKey!546 (t!355729 newBucket!200) (_1!27261 (h!54194 newBucket!200)))))))

(declare-fun b!4336907 () Bool)

(assert (=> b!4336907 (= e!2698576 (noDuplicateKeys!391 (t!355729 newBucket!200)))))

(assert (= (and d!1274779 (not res!1778999)) b!4336906))

(assert (= (and b!4336906 res!1779000) b!4336907))

(declare-fun m!4932709 () Bool)

(assert (=> b!4336906 m!4932709))

(declare-fun m!4932711 () Bool)

(assert (=> b!4336907 m!4932711))

(assert (=> b!4336814 d!1274779))

(assert (=> start!418372 d!1274775))

(declare-fun d!1274785 () Bool)

(declare-fun isStrictlySorted!58 (List!48814) Bool)

(assert (=> d!1274785 (= (inv!64231 lm!1707) (isStrictlySorted!58 (toList!2765 lm!1707)))))

(declare-fun bs!609069 () Bool)

(assert (= bs!609069 d!1274785))

(declare-fun m!4932719 () Bool)

(assert (=> bs!609069 m!4932719))

(assert (=> start!418372 d!1274785))

(declare-fun d!1274789 () Bool)

(declare-fun get!15800 (Option!10376) List!48813)

(assert (=> d!1274789 (= (apply!11243 lm!1707 hash!377) (get!15800 (getValueByKey!362 (toList!2765 lm!1707) hash!377)))))

(declare-fun bs!609070 () Bool)

(assert (= bs!609070 d!1274789))

(declare-fun m!4932727 () Bool)

(assert (=> bs!609070 m!4932727))

(assert (=> bs!609070 m!4932727))

(declare-fun m!4932729 () Bool)

(assert (=> bs!609070 m!4932729))

(assert (=> b!4336807 d!1274789))

(declare-fun d!1274793 () Bool)

(assert (=> d!1274793 (contains!10758 (toList!2765 lm!1707) (tuple2!47937 hash!377 lt!1550517))))

(declare-fun lt!1550612 () Unit!68767)

(declare-fun choose!26555 (List!48814 (_ BitVec 64) List!48813) Unit!68767)

(assert (=> d!1274793 (= lt!1550612 (choose!26555 (toList!2765 lm!1707) hash!377 lt!1550517))))

(declare-fun e!2698596 () Bool)

(assert (=> d!1274793 e!2698596))

(declare-fun res!1779014 () Bool)

(assert (=> d!1274793 (=> (not res!1779014) (not e!2698596))))

(assert (=> d!1274793 (= res!1779014 (isStrictlySorted!58 (toList!2765 lm!1707)))))

(assert (=> d!1274793 (= (lemmaGetValueByKeyImpliesContainsTuple!238 (toList!2765 lm!1707) hash!377 lt!1550517) lt!1550612)))

(declare-fun b!4336937 () Bool)

(assert (=> b!4336937 (= e!2698596 (= (getValueByKey!362 (toList!2765 lm!1707) hash!377) (Some!10375 lt!1550517)))))

(assert (= (and d!1274793 res!1779014) b!4336937))

(declare-fun m!4932745 () Bool)

(assert (=> d!1274793 m!4932745))

(declare-fun m!4932747 () Bool)

(assert (=> d!1274793 m!4932747))

(assert (=> d!1274793 m!4932719))

(assert (=> b!4336937 m!4932727))

(assert (=> b!4336807 d!1274793))

(declare-fun d!1274805 () Bool)

(assert (=> d!1274805 (dynLambda!20571 lambda!136141 lt!1550520)))

(declare-fun lt!1550623 () Unit!68767)

(declare-fun choose!26556 (List!48814 Int tuple2!47936) Unit!68767)

(assert (=> d!1274805 (= lt!1550623 (choose!26556 (toList!2765 lm!1707) lambda!136141 lt!1550520))))

(declare-fun e!2698601 () Bool)

(assert (=> d!1274805 e!2698601))

(declare-fun res!1779021 () Bool)

(assert (=> d!1274805 (=> (not res!1779021) (not e!2698601))))

(assert (=> d!1274805 (= res!1779021 (forall!8963 (toList!2765 lm!1707) lambda!136141))))

(assert (=> d!1274805 (= (forallContained!1613 (toList!2765 lm!1707) lambda!136141 lt!1550520) lt!1550623)))

(declare-fun b!4336944 () Bool)

(assert (=> b!4336944 (= e!2698601 (contains!10758 (toList!2765 lm!1707) lt!1550520))))

(assert (= (and d!1274805 res!1779021) b!4336944))

(declare-fun b_lambda!128377 () Bool)

(assert (=> (not b_lambda!128377) (not d!1274805)))

(declare-fun m!4932749 () Bool)

(assert (=> d!1274805 m!4932749))

(declare-fun m!4932751 () Bool)

(assert (=> d!1274805 m!4932751))

(assert (=> d!1274805 m!4932575))

(assert (=> b!4336944 m!4932561))

(assert (=> b!4336807 d!1274805))

(declare-fun d!1274807 () Bool)

(declare-fun lt!1550630 () List!48813)

(assert (=> d!1274807 (not (containsKey!546 lt!1550630 key!3918))))

(declare-fun e!2698607 () List!48813)

(assert (=> d!1274807 (= lt!1550630 e!2698607)))

(declare-fun c!737443 () Bool)

(assert (=> d!1274807 (= c!737443 (and ((_ is Cons!48689) lt!1550517) (= (_1!27261 (h!54194 lt!1550517)) key!3918)))))

(assert (=> d!1274807 (noDuplicateKeys!391 lt!1550517)))

(assert (=> d!1274807 (= (removePairForKey!361 lt!1550517 key!3918) lt!1550630)))

(declare-fun b!4336957 () Bool)

(declare-fun e!2698608 () List!48813)

(assert (=> b!4336957 (= e!2698608 (Cons!48689 (h!54194 lt!1550517) (removePairForKey!361 (t!355729 lt!1550517) key!3918)))))

(declare-fun b!4336956 () Bool)

(assert (=> b!4336956 (= e!2698607 e!2698608)))

(declare-fun c!737442 () Bool)

(assert (=> b!4336956 (= c!737442 ((_ is Cons!48689) lt!1550517))))

(declare-fun b!4336955 () Bool)

(assert (=> b!4336955 (= e!2698607 (t!355729 lt!1550517))))

(declare-fun b!4336958 () Bool)

(assert (=> b!4336958 (= e!2698608 Nil!48689)))

(assert (= (and d!1274807 c!737443) b!4336955))

(assert (= (and d!1274807 (not c!737443)) b!4336956))

(assert (= (and b!4336956 c!737442) b!4336957))

(assert (= (and b!4336956 (not c!737442)) b!4336958))

(declare-fun m!4932765 () Bool)

(assert (=> d!1274807 m!4932765))

(declare-fun m!4932767 () Bool)

(assert (=> d!1274807 m!4932767))

(declare-fun m!4932769 () Bool)

(assert (=> b!4336957 m!4932769))

(assert (=> b!4336807 d!1274807))

(declare-fun d!1274811 () Bool)

(declare-fun lt!1550633 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7612 (List!48814) (InoxSet tuple2!47936))

(assert (=> d!1274811 (= lt!1550633 (select (content!7612 (toList!2765 lm!1707)) lt!1550520))))

(declare-fun e!2698613 () Bool)

(assert (=> d!1274811 (= lt!1550633 e!2698613)))

(declare-fun res!1779028 () Bool)

(assert (=> d!1274811 (=> (not res!1779028) (not e!2698613))))

(assert (=> d!1274811 (= res!1779028 ((_ is Cons!48690) (toList!2765 lm!1707)))))

(assert (=> d!1274811 (= (contains!10758 (toList!2765 lm!1707) lt!1550520) lt!1550633)))

(declare-fun b!4336963 () Bool)

(declare-fun e!2698614 () Bool)

(assert (=> b!4336963 (= e!2698613 e!2698614)))

(declare-fun res!1779029 () Bool)

(assert (=> b!4336963 (=> res!1779029 e!2698614)))

(assert (=> b!4336963 (= res!1779029 (= (h!54195 (toList!2765 lm!1707)) lt!1550520))))

(declare-fun b!4336964 () Bool)

(assert (=> b!4336964 (= e!2698614 (contains!10758 (t!355730 (toList!2765 lm!1707)) lt!1550520))))

(assert (= (and d!1274811 res!1779028) b!4336963))

(assert (= (and b!4336963 (not res!1779029)) b!4336964))

(declare-fun m!4932771 () Bool)

(assert (=> d!1274811 m!4932771))

(declare-fun m!4932773 () Bool)

(assert (=> d!1274811 m!4932773))

(declare-fun m!4932775 () Bool)

(assert (=> b!4336964 m!4932775))

(assert (=> b!4336807 d!1274811))

(declare-fun d!1274813 () Bool)

(declare-fun e!2698620 () Bool)

(assert (=> d!1274813 e!2698620))

(declare-fun res!1779032 () Bool)

(assert (=> d!1274813 (=> res!1779032 e!2698620)))

(declare-fun lt!1550644 () Bool)

(assert (=> d!1274813 (= res!1779032 (not lt!1550644))))

(declare-fun lt!1550643 () Bool)

(assert (=> d!1274813 (= lt!1550644 lt!1550643)))

(declare-fun lt!1550645 () Unit!68767)

(declare-fun e!2698619 () Unit!68767)

(assert (=> d!1274813 (= lt!1550645 e!2698619)))

(declare-fun c!737446 () Bool)

(assert (=> d!1274813 (= c!737446 lt!1550643)))

(declare-fun containsKey!547 (List!48814 (_ BitVec 64)) Bool)

(assert (=> d!1274813 (= lt!1550643 (containsKey!547 (toList!2765 lm!1707) hash!377))))

(assert (=> d!1274813 (= (contains!10759 lm!1707 hash!377) lt!1550644)))

(declare-fun b!4336971 () Bool)

(declare-fun lt!1550642 () Unit!68767)

(assert (=> b!4336971 (= e!2698619 lt!1550642)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!275 (List!48814 (_ BitVec 64)) Unit!68767)

(assert (=> b!4336971 (= lt!1550642 (lemmaContainsKeyImpliesGetValueByKeyDefined!275 (toList!2765 lm!1707) hash!377))))

(declare-fun isDefined!7672 (Option!10376) Bool)

(assert (=> b!4336971 (isDefined!7672 (getValueByKey!362 (toList!2765 lm!1707) hash!377))))

(declare-fun b!4336972 () Bool)

(declare-fun Unit!68794 () Unit!68767)

(assert (=> b!4336972 (= e!2698619 Unit!68794)))

(declare-fun b!4336973 () Bool)

(assert (=> b!4336973 (= e!2698620 (isDefined!7672 (getValueByKey!362 (toList!2765 lm!1707) hash!377)))))

(assert (= (and d!1274813 c!737446) b!4336971))

(assert (= (and d!1274813 (not c!737446)) b!4336972))

(assert (= (and d!1274813 (not res!1779032)) b!4336973))

(declare-fun m!4932777 () Bool)

(assert (=> d!1274813 m!4932777))

(declare-fun m!4932779 () Bool)

(assert (=> b!4336971 m!4932779))

(assert (=> b!4336971 m!4932727))

(assert (=> b!4336971 m!4932727))

(declare-fun m!4932781 () Bool)

(assert (=> b!4336971 m!4932781))

(assert (=> b!4336973 m!4932727))

(assert (=> b!4336973 m!4932727))

(assert (=> b!4336973 m!4932781))

(assert (=> b!4336808 d!1274813))

(declare-fun bs!609074 () Bool)

(declare-fun d!1274815 () Bool)

(assert (= bs!609074 (and d!1274815 start!418372)))

(declare-fun lambda!136153 () Int)

(assert (=> bs!609074 (not (= lambda!136153 lambda!136141))))

(assert (=> d!1274815 true))

(assert (=> d!1274815 (= (allKeysSameHashInMap!495 lm!1707 hashF!1247) (forall!8963 (toList!2765 lm!1707) lambda!136153))))

(declare-fun bs!609075 () Bool)

(assert (= bs!609075 d!1274815))

(declare-fun m!4932783 () Bool)

(assert (=> bs!609075 m!4932783))

(assert (=> b!4336806 d!1274815))

(declare-fun d!1274817 () Bool)

(assert (=> d!1274817 true))

(assert (=> d!1274817 true))

(declare-fun lambda!136156 () Int)

(declare-fun forall!8965 (List!48813 Int) Bool)

(assert (=> d!1274817 (= (allKeysSameHash!349 newBucket!200 hash!377 hashF!1247) (forall!8965 newBucket!200 lambda!136156))))

(declare-fun bs!609076 () Bool)

(assert (= bs!609076 d!1274817))

(declare-fun m!4932785 () Bool)

(assert (=> bs!609076 m!4932785))

(assert (=> b!4336809 d!1274817))

(assert (=> b!4336802 d!1274759))

(declare-fun b!4336998 () Bool)

(declare-fun e!2698638 () Bool)

(declare-datatypes ((List!48816 0))(
  ( (Nil!48692) (Cons!48692 (h!54199 K!10045) (t!355732 List!48816)) )
))
(declare-fun contains!10763 (List!48816 K!10045) Bool)

(declare-fun keys!16382 (ListMap!2009) List!48816)

(assert (=> b!4336998 (= e!2698638 (not (contains!10763 (keys!16382 (extractMap!450 (toList!2765 lm!1707))) key!3918)))))

(declare-fun bm!301388 () Bool)

(declare-fun call!301393 () Bool)

(declare-fun e!2698635 () List!48816)

(assert (=> bm!301388 (= call!301393 (contains!10763 e!2698635 key!3918))))

(declare-fun c!737454 () Bool)

(declare-fun c!737453 () Bool)

(assert (=> bm!301388 (= c!737454 c!737453)))

(declare-fun b!4336999 () Bool)

(declare-fun e!2698636 () Bool)

(assert (=> b!4336999 (= e!2698636 (contains!10763 (keys!16382 (extractMap!450 (toList!2765 lm!1707))) key!3918))))

(declare-fun b!4337000 () Bool)

(declare-fun e!2698634 () Unit!68767)

(declare-fun lt!1550669 () Unit!68767)

(assert (=> b!4337000 (= e!2698634 lt!1550669)))

(declare-fun lt!1550667 () Unit!68767)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!276 (List!48813 K!10045) Unit!68767)

(assert (=> b!4337000 (= lt!1550667 (lemmaContainsKeyImpliesGetValueByKeyDefined!276 (toList!2766 (extractMap!450 (toList!2765 lm!1707))) key!3918))))

(declare-datatypes ((Option!10377 0))(
  ( (None!10376) (Some!10376 (v!43124 V!10291)) )
))
(declare-fun isDefined!7673 (Option!10377) Bool)

(declare-fun getValueByKey!363 (List!48813 K!10045) Option!10377)

(assert (=> b!4337000 (isDefined!7673 (getValueByKey!363 (toList!2766 (extractMap!450 (toList!2765 lm!1707))) key!3918))))

(declare-fun lt!1550664 () Unit!68767)

(assert (=> b!4337000 (= lt!1550664 lt!1550667)))

(declare-fun lemmaInListThenGetKeysListContains!77 (List!48813 K!10045) Unit!68767)

(assert (=> b!4337000 (= lt!1550669 (lemmaInListThenGetKeysListContains!77 (toList!2766 (extractMap!450 (toList!2765 lm!1707))) key!3918))))

(assert (=> b!4337000 call!301393))

(declare-fun b!4337002 () Bool)

(declare-fun e!2698637 () Unit!68767)

(declare-fun Unit!68795 () Unit!68767)

(assert (=> b!4337002 (= e!2698637 Unit!68795)))

(declare-fun b!4337003 () Bool)

(assert (=> b!4337003 false))

(declare-fun lt!1550663 () Unit!68767)

(declare-fun lt!1550668 () Unit!68767)

(assert (=> b!4337003 (= lt!1550663 lt!1550668)))

(declare-fun containsKey!548 (List!48813 K!10045) Bool)

(assert (=> b!4337003 (containsKey!548 (toList!2766 (extractMap!450 (toList!2765 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!78 (List!48813 K!10045) Unit!68767)

(assert (=> b!4337003 (= lt!1550668 (lemmaInGetKeysListThenContainsKey!78 (toList!2766 (extractMap!450 (toList!2765 lm!1707))) key!3918))))

(declare-fun Unit!68796 () Unit!68767)

(assert (=> b!4337003 (= e!2698637 Unit!68796)))

(declare-fun b!4337004 () Bool)

(declare-fun getKeysList!80 (List!48813) List!48816)

(assert (=> b!4337004 (= e!2698635 (getKeysList!80 (toList!2766 (extractMap!450 (toList!2765 lm!1707)))))))

(declare-fun b!4337005 () Bool)

(assert (=> b!4337005 (= e!2698634 e!2698637)))

(declare-fun c!737455 () Bool)

(assert (=> b!4337005 (= c!737455 call!301393)))

(declare-fun b!4337006 () Bool)

(assert (=> b!4337006 (= e!2698635 (keys!16382 (extractMap!450 (toList!2765 lm!1707))))))

(declare-fun b!4337001 () Bool)

(declare-fun e!2698633 () Bool)

(assert (=> b!4337001 (= e!2698633 e!2698636)))

(declare-fun res!1779040 () Bool)

(assert (=> b!4337001 (=> (not res!1779040) (not e!2698636))))

(assert (=> b!4337001 (= res!1779040 (isDefined!7673 (getValueByKey!363 (toList!2766 (extractMap!450 (toList!2765 lm!1707))) key!3918)))))

(declare-fun d!1274819 () Bool)

(assert (=> d!1274819 e!2698633))

(declare-fun res!1779039 () Bool)

(assert (=> d!1274819 (=> res!1779039 e!2698633)))

(assert (=> d!1274819 (= res!1779039 e!2698638)))

(declare-fun res!1779041 () Bool)

(assert (=> d!1274819 (=> (not res!1779041) (not e!2698638))))

(declare-fun lt!1550666 () Bool)

(assert (=> d!1274819 (= res!1779041 (not lt!1550666))))

(declare-fun lt!1550665 () Bool)

(assert (=> d!1274819 (= lt!1550666 lt!1550665)))

(declare-fun lt!1550662 () Unit!68767)

(assert (=> d!1274819 (= lt!1550662 e!2698634)))

(assert (=> d!1274819 (= c!737453 lt!1550665)))

(assert (=> d!1274819 (= lt!1550665 (containsKey!548 (toList!2766 (extractMap!450 (toList!2765 lm!1707))) key!3918))))

(assert (=> d!1274819 (= (contains!10760 (extractMap!450 (toList!2765 lm!1707)) key!3918) lt!1550666)))

(assert (= (and d!1274819 c!737453) b!4337000))

(assert (= (and d!1274819 (not c!737453)) b!4337005))

(assert (= (and b!4337005 c!737455) b!4337003))

(assert (= (and b!4337005 (not c!737455)) b!4337002))

(assert (= (or b!4337000 b!4337005) bm!301388))

(assert (= (and bm!301388 c!737454) b!4337004))

(assert (= (and bm!301388 (not c!737454)) b!4337006))

(assert (= (and d!1274819 res!1779041) b!4336998))

(assert (= (and d!1274819 (not res!1779039)) b!4337001))

(assert (= (and b!4337001 res!1779040) b!4336999))

(declare-fun m!4932787 () Bool)

(assert (=> d!1274819 m!4932787))

(assert (=> b!4337003 m!4932787))

(declare-fun m!4932789 () Bool)

(assert (=> b!4337003 m!4932789))

(declare-fun m!4932791 () Bool)

(assert (=> b!4337000 m!4932791))

(declare-fun m!4932793 () Bool)

(assert (=> b!4337000 m!4932793))

(assert (=> b!4337000 m!4932793))

(declare-fun m!4932795 () Bool)

(assert (=> b!4337000 m!4932795))

(declare-fun m!4932797 () Bool)

(assert (=> b!4337000 m!4932797))

(assert (=> b!4336998 m!4932569))

(declare-fun m!4932799 () Bool)

(assert (=> b!4336998 m!4932799))

(assert (=> b!4336998 m!4932799))

(declare-fun m!4932801 () Bool)

(assert (=> b!4336998 m!4932801))

(assert (=> b!4336999 m!4932569))

(assert (=> b!4336999 m!4932799))

(assert (=> b!4336999 m!4932799))

(assert (=> b!4336999 m!4932801))

(declare-fun m!4932803 () Bool)

(assert (=> b!4337004 m!4932803))

(declare-fun m!4932805 () Bool)

(assert (=> bm!301388 m!4932805))

(assert (=> b!4337006 m!4932569))

(assert (=> b!4337006 m!4932799))

(assert (=> b!4337001 m!4932793))

(assert (=> b!4337001 m!4932793))

(assert (=> b!4337001 m!4932795))

(assert (=> b!4336813 d!1274819))

(declare-fun bs!609077 () Bool)

(declare-fun d!1274821 () Bool)

(assert (= bs!609077 (and d!1274821 start!418372)))

(declare-fun lambda!136183 () Int)

(assert (=> bs!609077 (= lambda!136183 lambda!136141)))

(declare-fun bs!609078 () Bool)

(assert (= bs!609078 (and d!1274821 d!1274815)))

(assert (=> bs!609078 (not (= lambda!136183 lambda!136153))))

(declare-fun lt!1550714 () ListMap!2009)

(declare-fun invariantList!632 (List!48813) Bool)

(assert (=> d!1274821 (invariantList!632 (toList!2766 lt!1550714))))

(declare-fun e!2698645 () ListMap!2009)

(assert (=> d!1274821 (= lt!1550714 e!2698645)))

(declare-fun c!737460 () Bool)

(assert (=> d!1274821 (= c!737460 ((_ is Cons!48690) (toList!2765 lm!1707)))))

(assert (=> d!1274821 (forall!8963 (toList!2765 lm!1707) lambda!136183)))

(assert (=> d!1274821 (= (extractMap!450 (toList!2765 lm!1707)) lt!1550714)))

(declare-fun b!4337017 () Bool)

(assert (=> b!4337017 (= e!2698645 (addToMapMapFromBucket!99 (_2!27262 (h!54195 (toList!2765 lm!1707))) (extractMap!450 (t!355730 (toList!2765 lm!1707)))))))

(declare-fun b!4337018 () Bool)

(assert (=> b!4337018 (= e!2698645 (ListMap!2010 Nil!48689))))

(assert (= (and d!1274821 c!737460) b!4337017))

(assert (= (and d!1274821 (not c!737460)) b!4337018))

(declare-fun m!4932807 () Bool)

(assert (=> d!1274821 m!4932807))

(declare-fun m!4932809 () Bool)

(assert (=> d!1274821 m!4932809))

(assert (=> b!4337017 m!4932609))

(assert (=> b!4337017 m!4932609))

(declare-fun m!4932811 () Bool)

(assert (=> b!4337017 m!4932811))

(assert (=> b!4336813 d!1274821))

(declare-fun bs!609170 () Bool)

(declare-fun b!4337075 () Bool)

(assert (= bs!609170 (and b!4337075 d!1274817)))

(declare-fun lambda!136234 () Int)

(assert (=> bs!609170 (not (= lambda!136234 lambda!136156))))

(assert (=> b!4337075 true))

(declare-fun bs!609171 () Bool)

(declare-fun b!4337076 () Bool)

(assert (= bs!609171 (and b!4337076 d!1274817)))

(declare-fun lambda!136235 () Int)

(assert (=> bs!609171 (not (= lambda!136235 lambda!136156))))

(declare-fun bs!609172 () Bool)

(assert (= bs!609172 (and b!4337076 b!4337075)))

(assert (=> bs!609172 (= lambda!136235 lambda!136234)))

(assert (=> b!4337076 true))

(declare-fun lambda!136236 () Int)

(assert (=> bs!609171 (not (= lambda!136236 lambda!136156))))

(declare-fun lt!1550851 () ListMap!2009)

(assert (=> bs!609172 (= (= lt!1550851 lt!1550523) (= lambda!136236 lambda!136234))))

(assert (=> b!4337076 (= (= lt!1550851 lt!1550523) (= lambda!136236 lambda!136235))))

(assert (=> b!4337076 true))

(declare-fun bs!609173 () Bool)

(declare-fun d!1274823 () Bool)

(assert (= bs!609173 (and d!1274823 d!1274817)))

(declare-fun lambda!136237 () Int)

(assert (=> bs!609173 (not (= lambda!136237 lambda!136156))))

(declare-fun bs!609174 () Bool)

(assert (= bs!609174 (and d!1274823 b!4337075)))

(declare-fun lt!1550870 () ListMap!2009)

(assert (=> bs!609174 (= (= lt!1550870 lt!1550523) (= lambda!136237 lambda!136234))))

(declare-fun bs!609175 () Bool)

(assert (= bs!609175 (and d!1274823 b!4337076)))

(assert (=> bs!609175 (= (= lt!1550870 lt!1550523) (= lambda!136237 lambda!136235))))

(assert (=> bs!609175 (= (= lt!1550870 lt!1550851) (= lambda!136237 lambda!136236))))

(assert (=> d!1274823 true))

(declare-fun b!4337073 () Bool)

(declare-fun e!2698679 () Bool)

(assert (=> b!4337073 (= e!2698679 (forall!8965 (toList!2766 lt!1550523) lambda!136236))))

(declare-fun b!4337074 () Bool)

(declare-fun res!1779071 () Bool)

(declare-fun e!2698677 () Bool)

(assert (=> b!4337074 (=> (not res!1779071) (not e!2698677))))

(assert (=> b!4337074 (= res!1779071 (forall!8965 (toList!2766 lt!1550523) lambda!136237))))

(declare-fun e!2698678 () ListMap!2009)

(assert (=> b!4337075 (= e!2698678 lt!1550523)))

(declare-fun lt!1550864 () Unit!68767)

(declare-fun call!301420 () Unit!68767)

(assert (=> b!4337075 (= lt!1550864 call!301420)))

(declare-fun call!301418 () Bool)

(assert (=> b!4337075 call!301418))

(declare-fun lt!1550853 () Unit!68767)

(assert (=> b!4337075 (= lt!1550853 lt!1550864)))

(declare-fun call!301419 () Bool)

(assert (=> b!4337075 call!301419))

(declare-fun lt!1550867 () Unit!68767)

(declare-fun Unit!68808 () Unit!68767)

(assert (=> b!4337075 (= lt!1550867 Unit!68808)))

(declare-fun c!737469 () Bool)

(declare-fun bm!301413 () Bool)

(assert (=> bm!301413 (= call!301418 (forall!8965 (toList!2766 lt!1550523) (ite c!737469 lambda!136234 lambda!136236)))))

(declare-fun bm!301414 () Bool)

(assert (=> bm!301414 (= call!301419 (forall!8965 (toList!2766 lt!1550523) (ite c!737469 lambda!136234 lambda!136236)))))

(assert (=> b!4337076 (= e!2698678 lt!1550851)))

(declare-fun lt!1550854 () ListMap!2009)

(assert (=> b!4337076 (= lt!1550854 (+!454 lt!1550523 (h!54194 lt!1550515)))))

(assert (=> b!4337076 (= lt!1550851 (addToMapMapFromBucket!99 (t!355729 lt!1550515) (+!454 lt!1550523 (h!54194 lt!1550515))))))

(declare-fun lt!1550866 () Unit!68767)

(assert (=> b!4337076 (= lt!1550866 call!301420)))

(assert (=> b!4337076 (forall!8965 (toList!2766 lt!1550523) lambda!136235)))

(declare-fun lt!1550861 () Unit!68767)

(assert (=> b!4337076 (= lt!1550861 lt!1550866)))

(assert (=> b!4337076 (forall!8965 (toList!2766 lt!1550854) lambda!136236)))

(declare-fun lt!1550852 () Unit!68767)

(declare-fun Unit!68809 () Unit!68767)

(assert (=> b!4337076 (= lt!1550852 Unit!68809)))

(assert (=> b!4337076 (forall!8965 (t!355729 lt!1550515) lambda!136236)))

(declare-fun lt!1550856 () Unit!68767)

(declare-fun Unit!68810 () Unit!68767)

(assert (=> b!4337076 (= lt!1550856 Unit!68810)))

(declare-fun lt!1550857 () Unit!68767)

(declare-fun Unit!68811 () Unit!68767)

(assert (=> b!4337076 (= lt!1550857 Unit!68811)))

(declare-fun lt!1550858 () Unit!68767)

(declare-fun forallContained!1615 (List!48813 Int tuple2!47934) Unit!68767)

(assert (=> b!4337076 (= lt!1550858 (forallContained!1615 (toList!2766 lt!1550854) lambda!136236 (h!54194 lt!1550515)))))

(assert (=> b!4337076 (contains!10760 lt!1550854 (_1!27261 (h!54194 lt!1550515)))))

(declare-fun lt!1550865 () Unit!68767)

(declare-fun Unit!68812 () Unit!68767)

(assert (=> b!4337076 (= lt!1550865 Unit!68812)))

(assert (=> b!4337076 (contains!10760 lt!1550851 (_1!27261 (h!54194 lt!1550515)))))

(declare-fun lt!1550859 () Unit!68767)

(declare-fun Unit!68813 () Unit!68767)

(assert (=> b!4337076 (= lt!1550859 Unit!68813)))

(assert (=> b!4337076 (forall!8965 lt!1550515 lambda!136236)))

(declare-fun lt!1550850 () Unit!68767)

(declare-fun Unit!68814 () Unit!68767)

(assert (=> b!4337076 (= lt!1550850 Unit!68814)))

(assert (=> b!4337076 (forall!8965 (toList!2766 lt!1550854) lambda!136236)))

(declare-fun lt!1550862 () Unit!68767)

(declare-fun Unit!68815 () Unit!68767)

(assert (=> b!4337076 (= lt!1550862 Unit!68815)))

(declare-fun lt!1550869 () Unit!68767)

(declare-fun Unit!68816 () Unit!68767)

(assert (=> b!4337076 (= lt!1550869 Unit!68816)))

(declare-fun lt!1550855 () Unit!68767)

(declare-fun addForallContainsKeyThenBeforeAdding!25 (ListMap!2009 ListMap!2009 K!10045 V!10291) Unit!68767)

(assert (=> b!4337076 (= lt!1550855 (addForallContainsKeyThenBeforeAdding!25 lt!1550523 lt!1550851 (_1!27261 (h!54194 lt!1550515)) (_2!27261 (h!54194 lt!1550515))))))

(assert (=> b!4337076 call!301419))

(declare-fun lt!1550860 () Unit!68767)

(assert (=> b!4337076 (= lt!1550860 lt!1550855)))

(assert (=> b!4337076 call!301418))

(declare-fun lt!1550868 () Unit!68767)

(declare-fun Unit!68817 () Unit!68767)

(assert (=> b!4337076 (= lt!1550868 Unit!68817)))

(declare-fun res!1779070 () Bool)

(assert (=> b!4337076 (= res!1779070 (forall!8965 lt!1550515 lambda!136236))))

(assert (=> b!4337076 (=> (not res!1779070) (not e!2698679))))

(assert (=> b!4337076 e!2698679))

(declare-fun lt!1550863 () Unit!68767)

(declare-fun Unit!68818 () Unit!68767)

(assert (=> b!4337076 (= lt!1550863 Unit!68818)))

(assert (=> d!1274823 e!2698677))

(declare-fun res!1779072 () Bool)

(assert (=> d!1274823 (=> (not res!1779072) (not e!2698677))))

(assert (=> d!1274823 (= res!1779072 (forall!8965 lt!1550515 lambda!136237))))

(assert (=> d!1274823 (= lt!1550870 e!2698678)))

(assert (=> d!1274823 (= c!737469 ((_ is Nil!48689) lt!1550515))))

(assert (=> d!1274823 (noDuplicateKeys!391 lt!1550515)))

(assert (=> d!1274823 (= (addToMapMapFromBucket!99 lt!1550515 lt!1550523) lt!1550870)))

(declare-fun b!4337077 () Bool)

(assert (=> b!4337077 (= e!2698677 (invariantList!632 (toList!2766 lt!1550870)))))

(declare-fun bm!301415 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!25 (ListMap!2009) Unit!68767)

(assert (=> bm!301415 (= call!301420 (lemmaContainsAllItsOwnKeys!25 lt!1550523))))

(assert (= (and d!1274823 c!737469) b!4337075))

(assert (= (and d!1274823 (not c!737469)) b!4337076))

(assert (= (and b!4337076 res!1779070) b!4337073))

(assert (= (or b!4337075 b!4337076) bm!301415))

(assert (= (or b!4337075 b!4337076) bm!301414))

(assert (= (or b!4337075 b!4337076) bm!301413))

(assert (= (and d!1274823 res!1779072) b!4337074))

(assert (= (and b!4337074 res!1779071) b!4337077))

(declare-fun m!4933003 () Bool)

(assert (=> b!4337073 m!4933003))

(declare-fun m!4933005 () Bool)

(assert (=> d!1274823 m!4933005))

(assert (=> d!1274823 m!4932589))

(declare-fun m!4933007 () Bool)

(assert (=> bm!301413 m!4933007))

(declare-fun m!4933009 () Bool)

(assert (=> b!4337077 m!4933009))

(assert (=> bm!301414 m!4933007))

(declare-fun m!4933011 () Bool)

(assert (=> b!4337076 m!4933011))

(declare-fun m!4933013 () Bool)

(assert (=> b!4337076 m!4933013))

(declare-fun m!4933015 () Bool)

(assert (=> b!4337076 m!4933015))

(declare-fun m!4933017 () Bool)

(assert (=> b!4337076 m!4933017))

(declare-fun m!4933019 () Bool)

(assert (=> b!4337076 m!4933019))

(declare-fun m!4933021 () Bool)

(assert (=> b!4337076 m!4933021))

(declare-fun m!4933023 () Bool)

(assert (=> b!4337076 m!4933023))

(assert (=> b!4337076 m!4933017))

(declare-fun m!4933025 () Bool)

(assert (=> b!4337076 m!4933025))

(assert (=> b!4337076 m!4933011))

(declare-fun m!4933027 () Bool)

(assert (=> b!4337076 m!4933027))

(assert (=> b!4337076 m!4933021))

(declare-fun m!4933029 () Bool)

(assert (=> b!4337076 m!4933029))

(declare-fun m!4933031 () Bool)

(assert (=> b!4337074 m!4933031))

(declare-fun m!4933033 () Bool)

(assert (=> bm!301415 m!4933033))

(assert (=> b!4336811 d!1274823))

(declare-fun d!1274851 () Bool)

(declare-fun content!7614 (List!48813) (InoxSet tuple2!47934))

(assert (=> d!1274851 (= (eq!181 lt!1550521 (+!454 (addToMapMapFromBucket!99 lt!1550515 lt!1550523) lt!1550519)) (= (content!7614 (toList!2766 lt!1550521)) (content!7614 (toList!2766 (+!454 (addToMapMapFromBucket!99 lt!1550515 lt!1550523) lt!1550519)))))))

(declare-fun bs!609176 () Bool)

(assert (= bs!609176 d!1274851))

(declare-fun m!4933035 () Bool)

(assert (=> bs!609176 m!4933035))

(declare-fun m!4933037 () Bool)

(assert (=> bs!609176 m!4933037))

(assert (=> b!4336811 d!1274851))

(declare-fun bs!609177 () Bool)

(declare-fun d!1274853 () Bool)

(assert (= bs!609177 (and d!1274853 start!418372)))

(declare-fun lambda!136238 () Int)

(assert (=> bs!609177 (= lambda!136238 lambda!136141)))

(declare-fun bs!609178 () Bool)

(assert (= bs!609178 (and d!1274853 d!1274815)))

(assert (=> bs!609178 (not (= lambda!136238 lambda!136153))))

(declare-fun bs!609179 () Bool)

(assert (= bs!609179 (and d!1274853 d!1274821)))

(assert (=> bs!609179 (= lambda!136238 lambda!136183)))

(declare-fun lt!1550871 () ListMap!2009)

(assert (=> d!1274853 (invariantList!632 (toList!2766 lt!1550871))))

(declare-fun e!2698680 () ListMap!2009)

(assert (=> d!1274853 (= lt!1550871 e!2698680)))

(declare-fun c!737470 () Bool)

(assert (=> d!1274853 (= c!737470 ((_ is Cons!48690) (toList!2765 lt!1550522)))))

(assert (=> d!1274853 (forall!8963 (toList!2765 lt!1550522) lambda!136238)))

(assert (=> d!1274853 (= (extractMap!450 (toList!2765 lt!1550522)) lt!1550871)))

(declare-fun b!4337080 () Bool)

(assert (=> b!4337080 (= e!2698680 (addToMapMapFromBucket!99 (_2!27262 (h!54195 (toList!2765 lt!1550522))) (extractMap!450 (t!355730 (toList!2765 lt!1550522)))))))

(declare-fun b!4337081 () Bool)

(assert (=> b!4337081 (= e!2698680 (ListMap!2010 Nil!48689))))

(assert (= (and d!1274853 c!737470) b!4337080))

(assert (= (and d!1274853 (not c!737470)) b!4337081))

(declare-fun m!4933039 () Bool)

(assert (=> d!1274853 m!4933039))

(declare-fun m!4933041 () Bool)

(assert (=> d!1274853 m!4933041))

(declare-fun m!4933043 () Bool)

(assert (=> b!4337080 m!4933043))

(assert (=> b!4337080 m!4933043))

(declare-fun m!4933045 () Bool)

(assert (=> b!4337080 m!4933045))

(assert (=> b!4336811 d!1274853))

(declare-fun d!1274855 () Bool)

(declare-fun e!2698683 () Bool)

(assert (=> d!1274855 e!2698683))

(declare-fun res!1779078 () Bool)

(assert (=> d!1274855 (=> (not res!1779078) (not e!2698683))))

(declare-fun lt!1550881 () ListMap!2009)

(assert (=> d!1274855 (= res!1779078 (contains!10760 lt!1550881 (_1!27261 lt!1550519)))))

(declare-fun lt!1550883 () List!48813)

(assert (=> d!1274855 (= lt!1550881 (ListMap!2010 lt!1550883))))

(declare-fun lt!1550882 () Unit!68767)

(declare-fun lt!1550880 () Unit!68767)

(assert (=> d!1274855 (= lt!1550882 lt!1550880)))

(assert (=> d!1274855 (= (getValueByKey!363 lt!1550883 (_1!27261 lt!1550519)) (Some!10376 (_2!27261 lt!1550519)))))

(declare-fun lemmaContainsTupThenGetReturnValue!146 (List!48813 K!10045 V!10291) Unit!68767)

(assert (=> d!1274855 (= lt!1550880 (lemmaContainsTupThenGetReturnValue!146 lt!1550883 (_1!27261 lt!1550519) (_2!27261 lt!1550519)))))

(declare-fun insertNoDuplicatedKeys!65 (List!48813 K!10045 V!10291) List!48813)

(assert (=> d!1274855 (= lt!1550883 (insertNoDuplicatedKeys!65 (toList!2766 (addToMapMapFromBucket!99 lt!1550515 lt!1550523)) (_1!27261 lt!1550519) (_2!27261 lt!1550519)))))

(assert (=> d!1274855 (= (+!454 (addToMapMapFromBucket!99 lt!1550515 lt!1550523) lt!1550519) lt!1550881)))

(declare-fun b!4337086 () Bool)

(declare-fun res!1779077 () Bool)

(assert (=> b!4337086 (=> (not res!1779077) (not e!2698683))))

(assert (=> b!4337086 (= res!1779077 (= (getValueByKey!363 (toList!2766 lt!1550881) (_1!27261 lt!1550519)) (Some!10376 (_2!27261 lt!1550519))))))

(declare-fun b!4337087 () Bool)

(declare-fun contains!10764 (List!48813 tuple2!47934) Bool)

(assert (=> b!4337087 (= e!2698683 (contains!10764 (toList!2766 lt!1550881) lt!1550519))))

(assert (= (and d!1274855 res!1779078) b!4337086))

(assert (= (and b!4337086 res!1779077) b!4337087))

(declare-fun m!4933047 () Bool)

(assert (=> d!1274855 m!4933047))

(declare-fun m!4933049 () Bool)

(assert (=> d!1274855 m!4933049))

(declare-fun m!4933051 () Bool)

(assert (=> d!1274855 m!4933051))

(declare-fun m!4933053 () Bool)

(assert (=> d!1274855 m!4933053))

(declare-fun m!4933055 () Bool)

(assert (=> b!4337086 m!4933055))

(declare-fun m!4933057 () Bool)

(assert (=> b!4337087 m!4933057))

(assert (=> b!4336811 d!1274855))

(declare-fun bs!609180 () Bool)

(declare-fun b!4337090 () Bool)

(assert (= bs!609180 (and b!4337090 b!4337076)))

(declare-fun lambda!136239 () Int)

(assert (=> bs!609180 (= (= (+!454 lt!1550523 lt!1550519) lt!1550851) (= lambda!136239 lambda!136236))))

(declare-fun bs!609181 () Bool)

(assert (= bs!609181 (and b!4337090 d!1274817)))

(assert (=> bs!609181 (not (= lambda!136239 lambda!136156))))

(assert (=> bs!609180 (= (= (+!454 lt!1550523 lt!1550519) lt!1550523) (= lambda!136239 lambda!136235))))

(declare-fun bs!609182 () Bool)

(assert (= bs!609182 (and b!4337090 b!4337075)))

(assert (=> bs!609182 (= (= (+!454 lt!1550523 lt!1550519) lt!1550523) (= lambda!136239 lambda!136234))))

(declare-fun bs!609183 () Bool)

(assert (= bs!609183 (and b!4337090 d!1274823)))

(assert (=> bs!609183 (= (= (+!454 lt!1550523 lt!1550519) lt!1550870) (= lambda!136239 lambda!136237))))

(assert (=> b!4337090 true))

(declare-fun bs!609184 () Bool)

(declare-fun b!4337091 () Bool)

(assert (= bs!609184 (and b!4337091 b!4337076)))

(declare-fun lambda!136240 () Int)

(assert (=> bs!609184 (= (= (+!454 lt!1550523 lt!1550519) lt!1550851) (= lambda!136240 lambda!136236))))

(declare-fun bs!609185 () Bool)

(assert (= bs!609185 (and b!4337091 d!1274817)))

(assert (=> bs!609185 (not (= lambda!136240 lambda!136156))))

(assert (=> bs!609184 (= (= (+!454 lt!1550523 lt!1550519) lt!1550523) (= lambda!136240 lambda!136235))))

(declare-fun bs!609186 () Bool)

(assert (= bs!609186 (and b!4337091 b!4337090)))

(assert (=> bs!609186 (= lambda!136240 lambda!136239)))

(declare-fun bs!609187 () Bool)

(assert (= bs!609187 (and b!4337091 b!4337075)))

(assert (=> bs!609187 (= (= (+!454 lt!1550523 lt!1550519) lt!1550523) (= lambda!136240 lambda!136234))))

(declare-fun bs!609188 () Bool)

(assert (= bs!609188 (and b!4337091 d!1274823)))

(assert (=> bs!609188 (= (= (+!454 lt!1550523 lt!1550519) lt!1550870) (= lambda!136240 lambda!136237))))

(assert (=> b!4337091 true))

(declare-fun lambda!136241 () Int)

(declare-fun lt!1550885 () ListMap!2009)

(assert (=> b!4337091 (= (= lt!1550885 (+!454 lt!1550523 lt!1550519)) (= lambda!136241 lambda!136240))))

(assert (=> bs!609184 (= (= lt!1550885 lt!1550851) (= lambda!136241 lambda!136236))))

(assert (=> bs!609185 (not (= lambda!136241 lambda!136156))))

(assert (=> bs!609184 (= (= lt!1550885 lt!1550523) (= lambda!136241 lambda!136235))))

(assert (=> bs!609186 (= (= lt!1550885 (+!454 lt!1550523 lt!1550519)) (= lambda!136241 lambda!136239))))

(assert (=> bs!609187 (= (= lt!1550885 lt!1550523) (= lambda!136241 lambda!136234))))

(assert (=> bs!609188 (= (= lt!1550885 lt!1550870) (= lambda!136241 lambda!136237))))

(assert (=> b!4337091 true))

(declare-fun bs!609189 () Bool)

(declare-fun d!1274857 () Bool)

(assert (= bs!609189 (and d!1274857 b!4337091)))

(declare-fun lt!1550904 () ListMap!2009)

(declare-fun lambda!136242 () Int)

(assert (=> bs!609189 (= (= lt!1550904 lt!1550885) (= lambda!136242 lambda!136241))))

(assert (=> bs!609189 (= (= lt!1550904 (+!454 lt!1550523 lt!1550519)) (= lambda!136242 lambda!136240))))

(declare-fun bs!609190 () Bool)

(assert (= bs!609190 (and d!1274857 b!4337076)))

(assert (=> bs!609190 (= (= lt!1550904 lt!1550851) (= lambda!136242 lambda!136236))))

(declare-fun bs!609191 () Bool)

(assert (= bs!609191 (and d!1274857 d!1274817)))

(assert (=> bs!609191 (not (= lambda!136242 lambda!136156))))

(assert (=> bs!609190 (= (= lt!1550904 lt!1550523) (= lambda!136242 lambda!136235))))

(declare-fun bs!609192 () Bool)

(assert (= bs!609192 (and d!1274857 b!4337090)))

(assert (=> bs!609192 (= (= lt!1550904 (+!454 lt!1550523 lt!1550519)) (= lambda!136242 lambda!136239))))

(declare-fun bs!609193 () Bool)

(assert (= bs!609193 (and d!1274857 b!4337075)))

(assert (=> bs!609193 (= (= lt!1550904 lt!1550523) (= lambda!136242 lambda!136234))))

(declare-fun bs!609194 () Bool)

(assert (= bs!609194 (and d!1274857 d!1274823)))

(assert (=> bs!609194 (= (= lt!1550904 lt!1550870) (= lambda!136242 lambda!136237))))

(assert (=> d!1274857 true))

(declare-fun b!4337088 () Bool)

(declare-fun e!2698686 () Bool)

(assert (=> b!4337088 (= e!2698686 (forall!8965 (toList!2766 (+!454 lt!1550523 lt!1550519)) lambda!136241))))

(declare-fun b!4337089 () Bool)

(declare-fun res!1779080 () Bool)

(declare-fun e!2698684 () Bool)

(assert (=> b!4337089 (=> (not res!1779080) (not e!2698684))))

(assert (=> b!4337089 (= res!1779080 (forall!8965 (toList!2766 (+!454 lt!1550523 lt!1550519)) lambda!136242))))

(declare-fun e!2698685 () ListMap!2009)

(assert (=> b!4337090 (= e!2698685 (+!454 lt!1550523 lt!1550519))))

(declare-fun lt!1550898 () Unit!68767)

(declare-fun call!301423 () Unit!68767)

(assert (=> b!4337090 (= lt!1550898 call!301423)))

(declare-fun call!301421 () Bool)

(assert (=> b!4337090 call!301421))

(declare-fun lt!1550887 () Unit!68767)

(assert (=> b!4337090 (= lt!1550887 lt!1550898)))

(declare-fun call!301422 () Bool)

(assert (=> b!4337090 call!301422))

(declare-fun lt!1550901 () Unit!68767)

(declare-fun Unit!68830 () Unit!68767)

(assert (=> b!4337090 (= lt!1550901 Unit!68830)))

(declare-fun bm!301416 () Bool)

(declare-fun c!737471 () Bool)

(assert (=> bm!301416 (= call!301421 (forall!8965 (toList!2766 (+!454 lt!1550523 lt!1550519)) (ite c!737471 lambda!136239 lambda!136241)))))

(declare-fun bm!301417 () Bool)

(assert (=> bm!301417 (= call!301422 (forall!8965 (toList!2766 (+!454 lt!1550523 lt!1550519)) (ite c!737471 lambda!136239 lambda!136241)))))

(assert (=> b!4337091 (= e!2698685 lt!1550885)))

(declare-fun lt!1550888 () ListMap!2009)

(assert (=> b!4337091 (= lt!1550888 (+!454 (+!454 lt!1550523 lt!1550519) (h!54194 lt!1550515)))))

(assert (=> b!4337091 (= lt!1550885 (addToMapMapFromBucket!99 (t!355729 lt!1550515) (+!454 (+!454 lt!1550523 lt!1550519) (h!54194 lt!1550515))))))

(declare-fun lt!1550900 () Unit!68767)

(assert (=> b!4337091 (= lt!1550900 call!301423)))

(assert (=> b!4337091 (forall!8965 (toList!2766 (+!454 lt!1550523 lt!1550519)) lambda!136240)))

(declare-fun lt!1550895 () Unit!68767)

(assert (=> b!4337091 (= lt!1550895 lt!1550900)))

(assert (=> b!4337091 (forall!8965 (toList!2766 lt!1550888) lambda!136241)))

(declare-fun lt!1550886 () Unit!68767)

(declare-fun Unit!68831 () Unit!68767)

(assert (=> b!4337091 (= lt!1550886 Unit!68831)))

(assert (=> b!4337091 (forall!8965 (t!355729 lt!1550515) lambda!136241)))

(declare-fun lt!1550890 () Unit!68767)

(declare-fun Unit!68832 () Unit!68767)

(assert (=> b!4337091 (= lt!1550890 Unit!68832)))

(declare-fun lt!1550891 () Unit!68767)

(declare-fun Unit!68833 () Unit!68767)

(assert (=> b!4337091 (= lt!1550891 Unit!68833)))

(declare-fun lt!1550892 () Unit!68767)

(assert (=> b!4337091 (= lt!1550892 (forallContained!1615 (toList!2766 lt!1550888) lambda!136241 (h!54194 lt!1550515)))))

(assert (=> b!4337091 (contains!10760 lt!1550888 (_1!27261 (h!54194 lt!1550515)))))

(declare-fun lt!1550899 () Unit!68767)

(declare-fun Unit!68834 () Unit!68767)

(assert (=> b!4337091 (= lt!1550899 Unit!68834)))

(assert (=> b!4337091 (contains!10760 lt!1550885 (_1!27261 (h!54194 lt!1550515)))))

(declare-fun lt!1550893 () Unit!68767)

(declare-fun Unit!68835 () Unit!68767)

(assert (=> b!4337091 (= lt!1550893 Unit!68835)))

(assert (=> b!4337091 (forall!8965 lt!1550515 lambda!136241)))

(declare-fun lt!1550884 () Unit!68767)

(declare-fun Unit!68836 () Unit!68767)

(assert (=> b!4337091 (= lt!1550884 Unit!68836)))

(assert (=> b!4337091 (forall!8965 (toList!2766 lt!1550888) lambda!136241)))

(declare-fun lt!1550896 () Unit!68767)

(declare-fun Unit!68837 () Unit!68767)

(assert (=> b!4337091 (= lt!1550896 Unit!68837)))

(declare-fun lt!1550903 () Unit!68767)

(declare-fun Unit!68838 () Unit!68767)

(assert (=> b!4337091 (= lt!1550903 Unit!68838)))

(declare-fun lt!1550889 () Unit!68767)

(assert (=> b!4337091 (= lt!1550889 (addForallContainsKeyThenBeforeAdding!25 (+!454 lt!1550523 lt!1550519) lt!1550885 (_1!27261 (h!54194 lt!1550515)) (_2!27261 (h!54194 lt!1550515))))))

(assert (=> b!4337091 call!301422))

(declare-fun lt!1550894 () Unit!68767)

(assert (=> b!4337091 (= lt!1550894 lt!1550889)))

(assert (=> b!4337091 call!301421))

(declare-fun lt!1550902 () Unit!68767)

(declare-fun Unit!68839 () Unit!68767)

(assert (=> b!4337091 (= lt!1550902 Unit!68839)))

(declare-fun res!1779079 () Bool)

(assert (=> b!4337091 (= res!1779079 (forall!8965 lt!1550515 lambda!136241))))

(assert (=> b!4337091 (=> (not res!1779079) (not e!2698686))))

(assert (=> b!4337091 e!2698686))

(declare-fun lt!1550897 () Unit!68767)

(declare-fun Unit!68840 () Unit!68767)

(assert (=> b!4337091 (= lt!1550897 Unit!68840)))

(assert (=> d!1274857 e!2698684))

(declare-fun res!1779081 () Bool)

(assert (=> d!1274857 (=> (not res!1779081) (not e!2698684))))

(assert (=> d!1274857 (= res!1779081 (forall!8965 lt!1550515 lambda!136242))))

(assert (=> d!1274857 (= lt!1550904 e!2698685)))

(assert (=> d!1274857 (= c!737471 ((_ is Nil!48689) lt!1550515))))

(assert (=> d!1274857 (noDuplicateKeys!391 lt!1550515)))

(assert (=> d!1274857 (= (addToMapMapFromBucket!99 lt!1550515 (+!454 lt!1550523 lt!1550519)) lt!1550904)))

(declare-fun b!4337092 () Bool)

(assert (=> b!4337092 (= e!2698684 (invariantList!632 (toList!2766 lt!1550904)))))

(declare-fun bm!301418 () Bool)

(assert (=> bm!301418 (= call!301423 (lemmaContainsAllItsOwnKeys!25 (+!454 lt!1550523 lt!1550519)))))

(assert (= (and d!1274857 c!737471) b!4337090))

(assert (= (and d!1274857 (not c!737471)) b!4337091))

(assert (= (and b!4337091 res!1779079) b!4337088))

(assert (= (or b!4337090 b!4337091) bm!301418))

(assert (= (or b!4337090 b!4337091) bm!301417))

(assert (= (or b!4337090 b!4337091) bm!301416))

(assert (= (and d!1274857 res!1779081) b!4337089))

(assert (= (and b!4337089 res!1779080) b!4337092))

(declare-fun m!4933059 () Bool)

(assert (=> b!4337088 m!4933059))

(declare-fun m!4933061 () Bool)

(assert (=> d!1274857 m!4933061))

(assert (=> d!1274857 m!4932589))

(declare-fun m!4933063 () Bool)

(assert (=> bm!301416 m!4933063))

(declare-fun m!4933065 () Bool)

(assert (=> b!4337092 m!4933065))

(assert (=> bm!301417 m!4933063))

(declare-fun m!4933067 () Bool)

(assert (=> b!4337091 m!4933067))

(declare-fun m!4933069 () Bool)

(assert (=> b!4337091 m!4933069))

(declare-fun m!4933071 () Bool)

(assert (=> b!4337091 m!4933071))

(declare-fun m!4933073 () Bool)

(assert (=> b!4337091 m!4933073))

(declare-fun m!4933075 () Bool)

(assert (=> b!4337091 m!4933075))

(declare-fun m!4933077 () Bool)

(assert (=> b!4337091 m!4933077))

(declare-fun m!4933079 () Bool)

(assert (=> b!4337091 m!4933079))

(assert (=> b!4337091 m!4932597))

(assert (=> b!4337091 m!4933073))

(assert (=> b!4337091 m!4932597))

(declare-fun m!4933081 () Bool)

(assert (=> b!4337091 m!4933081))

(assert (=> b!4337091 m!4933067))

(declare-fun m!4933083 () Bool)

(assert (=> b!4337091 m!4933083))

(assert (=> b!4337091 m!4933077))

(declare-fun m!4933085 () Bool)

(assert (=> b!4337091 m!4933085))

(declare-fun m!4933087 () Bool)

(assert (=> b!4337089 m!4933087))

(assert (=> bm!301418 m!4932597))

(declare-fun m!4933089 () Bool)

(assert (=> bm!301418 m!4933089))

(assert (=> b!4336811 d!1274857))

(declare-fun bs!609195 () Bool)

(declare-fun b!4337095 () Bool)

(assert (= bs!609195 (and b!4337095 b!4337091)))

(declare-fun lambda!136243 () Int)

(assert (=> bs!609195 (= (= lt!1550523 lt!1550885) (= lambda!136243 lambda!136241))))

(assert (=> bs!609195 (= (= lt!1550523 (+!454 lt!1550523 lt!1550519)) (= lambda!136243 lambda!136240))))

(declare-fun bs!609196 () Bool)

(assert (= bs!609196 (and b!4337095 b!4337076)))

(assert (=> bs!609196 (= (= lt!1550523 lt!1550851) (= lambda!136243 lambda!136236))))

(declare-fun bs!609197 () Bool)

(assert (= bs!609197 (and b!4337095 d!1274817)))

(assert (=> bs!609197 (not (= lambda!136243 lambda!136156))))

(assert (=> bs!609196 (= lambda!136243 lambda!136235)))

(declare-fun bs!609198 () Bool)

(assert (= bs!609198 (and b!4337095 d!1274857)))

(assert (=> bs!609198 (= (= lt!1550523 lt!1550904) (= lambda!136243 lambda!136242))))

(declare-fun bs!609199 () Bool)

(assert (= bs!609199 (and b!4337095 b!4337090)))

(assert (=> bs!609199 (= (= lt!1550523 (+!454 lt!1550523 lt!1550519)) (= lambda!136243 lambda!136239))))

(declare-fun bs!609200 () Bool)

(assert (= bs!609200 (and b!4337095 b!4337075)))

(assert (=> bs!609200 (= lambda!136243 lambda!136234)))

(declare-fun bs!609201 () Bool)

(assert (= bs!609201 (and b!4337095 d!1274823)))

(assert (=> bs!609201 (= (= lt!1550523 lt!1550870) (= lambda!136243 lambda!136237))))

(assert (=> b!4337095 true))

(declare-fun bs!609202 () Bool)

(declare-fun b!4337096 () Bool)

(assert (= bs!609202 (and b!4337096 b!4337091)))

(declare-fun lambda!136244 () Int)

(assert (=> bs!609202 (= (= lt!1550523 lt!1550885) (= lambda!136244 lambda!136241))))

(assert (=> bs!609202 (= (= lt!1550523 (+!454 lt!1550523 lt!1550519)) (= lambda!136244 lambda!136240))))

(declare-fun bs!609203 () Bool)

(assert (= bs!609203 (and b!4337096 b!4337095)))

(assert (=> bs!609203 (= lambda!136244 lambda!136243)))

(declare-fun bs!609204 () Bool)

(assert (= bs!609204 (and b!4337096 b!4337076)))

(assert (=> bs!609204 (= (= lt!1550523 lt!1550851) (= lambda!136244 lambda!136236))))

(declare-fun bs!609205 () Bool)

(assert (= bs!609205 (and b!4337096 d!1274817)))

(assert (=> bs!609205 (not (= lambda!136244 lambda!136156))))

(assert (=> bs!609204 (= lambda!136244 lambda!136235)))

(declare-fun bs!609206 () Bool)

(assert (= bs!609206 (and b!4337096 d!1274857)))

(assert (=> bs!609206 (= (= lt!1550523 lt!1550904) (= lambda!136244 lambda!136242))))

(declare-fun bs!609207 () Bool)

(assert (= bs!609207 (and b!4337096 b!4337090)))

(assert (=> bs!609207 (= (= lt!1550523 (+!454 lt!1550523 lt!1550519)) (= lambda!136244 lambda!136239))))

(declare-fun bs!609208 () Bool)

(assert (= bs!609208 (and b!4337096 b!4337075)))

(assert (=> bs!609208 (= lambda!136244 lambda!136234)))

(declare-fun bs!609209 () Bool)

(assert (= bs!609209 (and b!4337096 d!1274823)))

(assert (=> bs!609209 (= (= lt!1550523 lt!1550870) (= lambda!136244 lambda!136237))))

(assert (=> b!4337096 true))

(declare-fun lambda!136245 () Int)

(declare-fun lt!1550906 () ListMap!2009)

(assert (=> bs!609202 (= (= lt!1550906 lt!1550885) (= lambda!136245 lambda!136241))))

(assert (=> bs!609202 (= (= lt!1550906 (+!454 lt!1550523 lt!1550519)) (= lambda!136245 lambda!136240))))

(assert (=> bs!609203 (= (= lt!1550906 lt!1550523) (= lambda!136245 lambda!136243))))

(assert (=> bs!609204 (= (= lt!1550906 lt!1550851) (= lambda!136245 lambda!136236))))

(assert (=> bs!609205 (not (= lambda!136245 lambda!136156))))

(assert (=> bs!609204 (= (= lt!1550906 lt!1550523) (= lambda!136245 lambda!136235))))

(assert (=> b!4337096 (= (= lt!1550906 lt!1550523) (= lambda!136245 lambda!136244))))

(assert (=> bs!609206 (= (= lt!1550906 lt!1550904) (= lambda!136245 lambda!136242))))

(assert (=> bs!609207 (= (= lt!1550906 (+!454 lt!1550523 lt!1550519)) (= lambda!136245 lambda!136239))))

(assert (=> bs!609208 (= (= lt!1550906 lt!1550523) (= lambda!136245 lambda!136234))))

(assert (=> bs!609209 (= (= lt!1550906 lt!1550870) (= lambda!136245 lambda!136237))))

(assert (=> b!4337096 true))

(declare-fun bs!609210 () Bool)

(declare-fun d!1274859 () Bool)

(assert (= bs!609210 (and d!1274859 b!4337091)))

(declare-fun lambda!136246 () Int)

(declare-fun lt!1550925 () ListMap!2009)

(assert (=> bs!609210 (= (= lt!1550925 lt!1550885) (= lambda!136246 lambda!136241))))

(assert (=> bs!609210 (= (= lt!1550925 (+!454 lt!1550523 lt!1550519)) (= lambda!136246 lambda!136240))))

(declare-fun bs!609211 () Bool)

(assert (= bs!609211 (and d!1274859 b!4337095)))

(assert (=> bs!609211 (= (= lt!1550925 lt!1550523) (= lambda!136246 lambda!136243))))

(declare-fun bs!609212 () Bool)

(assert (= bs!609212 (and d!1274859 b!4337096)))

(assert (=> bs!609212 (= (= lt!1550925 lt!1550906) (= lambda!136246 lambda!136245))))

(declare-fun bs!609213 () Bool)

(assert (= bs!609213 (and d!1274859 b!4337076)))

(assert (=> bs!609213 (= (= lt!1550925 lt!1550851) (= lambda!136246 lambda!136236))))

(declare-fun bs!609214 () Bool)

(assert (= bs!609214 (and d!1274859 d!1274817)))

(assert (=> bs!609214 (not (= lambda!136246 lambda!136156))))

(assert (=> bs!609213 (= (= lt!1550925 lt!1550523) (= lambda!136246 lambda!136235))))

(assert (=> bs!609212 (= (= lt!1550925 lt!1550523) (= lambda!136246 lambda!136244))))

(declare-fun bs!609215 () Bool)

(assert (= bs!609215 (and d!1274859 d!1274857)))

(assert (=> bs!609215 (= (= lt!1550925 lt!1550904) (= lambda!136246 lambda!136242))))

(declare-fun bs!609216 () Bool)

(assert (= bs!609216 (and d!1274859 b!4337090)))

(assert (=> bs!609216 (= (= lt!1550925 (+!454 lt!1550523 lt!1550519)) (= lambda!136246 lambda!136239))))

(declare-fun bs!609217 () Bool)

(assert (= bs!609217 (and d!1274859 b!4337075)))

(assert (=> bs!609217 (= (= lt!1550925 lt!1550523) (= lambda!136246 lambda!136234))))

(declare-fun bs!609218 () Bool)

(assert (= bs!609218 (and d!1274859 d!1274823)))

(assert (=> bs!609218 (= (= lt!1550925 lt!1550870) (= lambda!136246 lambda!136237))))

(assert (=> d!1274859 true))

(declare-fun b!4337093 () Bool)

(declare-fun e!2698689 () Bool)

(assert (=> b!4337093 (= e!2698689 (forall!8965 (toList!2766 lt!1550523) lambda!136245))))

(declare-fun b!4337094 () Bool)

(declare-fun res!1779083 () Bool)

(declare-fun e!2698687 () Bool)

(assert (=> b!4337094 (=> (not res!1779083) (not e!2698687))))

(assert (=> b!4337094 (= res!1779083 (forall!8965 (toList!2766 lt!1550523) lambda!136246))))

(declare-fun e!2698688 () ListMap!2009)

(assert (=> b!4337095 (= e!2698688 lt!1550523)))

(declare-fun lt!1550919 () Unit!68767)

(declare-fun call!301426 () Unit!68767)

(assert (=> b!4337095 (= lt!1550919 call!301426)))

(declare-fun call!301424 () Bool)

(assert (=> b!4337095 call!301424))

(declare-fun lt!1550908 () Unit!68767)

(assert (=> b!4337095 (= lt!1550908 lt!1550919)))

(declare-fun call!301425 () Bool)

(assert (=> b!4337095 call!301425))

(declare-fun lt!1550922 () Unit!68767)

(declare-fun Unit!68841 () Unit!68767)

(assert (=> b!4337095 (= lt!1550922 Unit!68841)))

(declare-fun bm!301419 () Bool)

(declare-fun c!737472 () Bool)

(assert (=> bm!301419 (= call!301424 (forall!8965 (toList!2766 lt!1550523) (ite c!737472 lambda!136243 lambda!136245)))))

(declare-fun bm!301420 () Bool)

(assert (=> bm!301420 (= call!301425 (forall!8965 (toList!2766 lt!1550523) (ite c!737472 lambda!136243 lambda!136245)))))

(assert (=> b!4337096 (= e!2698688 lt!1550906)))

(declare-fun lt!1550909 () ListMap!2009)

(assert (=> b!4337096 (= lt!1550909 (+!454 lt!1550523 (h!54194 lt!1550518)))))

(assert (=> b!4337096 (= lt!1550906 (addToMapMapFromBucket!99 (t!355729 lt!1550518) (+!454 lt!1550523 (h!54194 lt!1550518))))))

(declare-fun lt!1550921 () Unit!68767)

(assert (=> b!4337096 (= lt!1550921 call!301426)))

(assert (=> b!4337096 (forall!8965 (toList!2766 lt!1550523) lambda!136244)))

(declare-fun lt!1550916 () Unit!68767)

(assert (=> b!4337096 (= lt!1550916 lt!1550921)))

(assert (=> b!4337096 (forall!8965 (toList!2766 lt!1550909) lambda!136245)))

(declare-fun lt!1550907 () Unit!68767)

(declare-fun Unit!68842 () Unit!68767)

(assert (=> b!4337096 (= lt!1550907 Unit!68842)))

(assert (=> b!4337096 (forall!8965 (t!355729 lt!1550518) lambda!136245)))

(declare-fun lt!1550911 () Unit!68767)

(declare-fun Unit!68843 () Unit!68767)

(assert (=> b!4337096 (= lt!1550911 Unit!68843)))

(declare-fun lt!1550912 () Unit!68767)

(declare-fun Unit!68844 () Unit!68767)

(assert (=> b!4337096 (= lt!1550912 Unit!68844)))

(declare-fun lt!1550913 () Unit!68767)

(assert (=> b!4337096 (= lt!1550913 (forallContained!1615 (toList!2766 lt!1550909) lambda!136245 (h!54194 lt!1550518)))))

(assert (=> b!4337096 (contains!10760 lt!1550909 (_1!27261 (h!54194 lt!1550518)))))

(declare-fun lt!1550920 () Unit!68767)

(declare-fun Unit!68845 () Unit!68767)

(assert (=> b!4337096 (= lt!1550920 Unit!68845)))

(assert (=> b!4337096 (contains!10760 lt!1550906 (_1!27261 (h!54194 lt!1550518)))))

(declare-fun lt!1550914 () Unit!68767)

(declare-fun Unit!68846 () Unit!68767)

(assert (=> b!4337096 (= lt!1550914 Unit!68846)))

(assert (=> b!4337096 (forall!8965 lt!1550518 lambda!136245)))

(declare-fun lt!1550905 () Unit!68767)

(declare-fun Unit!68847 () Unit!68767)

(assert (=> b!4337096 (= lt!1550905 Unit!68847)))

(assert (=> b!4337096 (forall!8965 (toList!2766 lt!1550909) lambda!136245)))

(declare-fun lt!1550917 () Unit!68767)

(declare-fun Unit!68848 () Unit!68767)

(assert (=> b!4337096 (= lt!1550917 Unit!68848)))

(declare-fun lt!1550924 () Unit!68767)

(declare-fun Unit!68849 () Unit!68767)

(assert (=> b!4337096 (= lt!1550924 Unit!68849)))

(declare-fun lt!1550910 () Unit!68767)

(assert (=> b!4337096 (= lt!1550910 (addForallContainsKeyThenBeforeAdding!25 lt!1550523 lt!1550906 (_1!27261 (h!54194 lt!1550518)) (_2!27261 (h!54194 lt!1550518))))))

(assert (=> b!4337096 call!301425))

(declare-fun lt!1550915 () Unit!68767)

(assert (=> b!4337096 (= lt!1550915 lt!1550910)))

(assert (=> b!4337096 call!301424))

(declare-fun lt!1550923 () Unit!68767)

(declare-fun Unit!68850 () Unit!68767)

(assert (=> b!4337096 (= lt!1550923 Unit!68850)))

(declare-fun res!1779082 () Bool)

(assert (=> b!4337096 (= res!1779082 (forall!8965 lt!1550518 lambda!136245))))

(assert (=> b!4337096 (=> (not res!1779082) (not e!2698689))))

(assert (=> b!4337096 e!2698689))

(declare-fun lt!1550918 () Unit!68767)

(declare-fun Unit!68851 () Unit!68767)

(assert (=> b!4337096 (= lt!1550918 Unit!68851)))

(assert (=> d!1274859 e!2698687))

(declare-fun res!1779084 () Bool)

(assert (=> d!1274859 (=> (not res!1779084) (not e!2698687))))

(assert (=> d!1274859 (= res!1779084 (forall!8965 lt!1550518 lambda!136246))))

(assert (=> d!1274859 (= lt!1550925 e!2698688)))

(assert (=> d!1274859 (= c!737472 ((_ is Nil!48689) lt!1550518))))

(assert (=> d!1274859 (noDuplicateKeys!391 lt!1550518)))

(assert (=> d!1274859 (= (addToMapMapFromBucket!99 lt!1550518 lt!1550523) lt!1550925)))

(declare-fun b!4337097 () Bool)

(assert (=> b!4337097 (= e!2698687 (invariantList!632 (toList!2766 lt!1550925)))))

(declare-fun bm!301421 () Bool)

(assert (=> bm!301421 (= call!301426 (lemmaContainsAllItsOwnKeys!25 lt!1550523))))

(assert (= (and d!1274859 c!737472) b!4337095))

(assert (= (and d!1274859 (not c!737472)) b!4337096))

(assert (= (and b!4337096 res!1779082) b!4337093))

(assert (= (or b!4337095 b!4337096) bm!301421))

(assert (= (or b!4337095 b!4337096) bm!301420))

(assert (= (or b!4337095 b!4337096) bm!301419))

(assert (= (and d!1274859 res!1779084) b!4337094))

(assert (= (and b!4337094 res!1779083) b!4337097))

(declare-fun m!4933091 () Bool)

(assert (=> b!4337093 m!4933091))

(declare-fun m!4933093 () Bool)

(assert (=> d!1274859 m!4933093))

(declare-fun m!4933095 () Bool)

(assert (=> d!1274859 m!4933095))

(declare-fun m!4933097 () Bool)

(assert (=> bm!301419 m!4933097))

(declare-fun m!4933099 () Bool)

(assert (=> b!4337097 m!4933099))

(assert (=> bm!301420 m!4933097))

(declare-fun m!4933101 () Bool)

(assert (=> b!4337096 m!4933101))

(declare-fun m!4933103 () Bool)

(assert (=> b!4337096 m!4933103))

(declare-fun m!4933105 () Bool)

(assert (=> b!4337096 m!4933105))

(declare-fun m!4933107 () Bool)

(assert (=> b!4337096 m!4933107))

(declare-fun m!4933109 () Bool)

(assert (=> b!4337096 m!4933109))

(declare-fun m!4933111 () Bool)

(assert (=> b!4337096 m!4933111))

(declare-fun m!4933113 () Bool)

(assert (=> b!4337096 m!4933113))

(assert (=> b!4337096 m!4933107))

(declare-fun m!4933115 () Bool)

(assert (=> b!4337096 m!4933115))

(assert (=> b!4337096 m!4933101))

(declare-fun m!4933117 () Bool)

(assert (=> b!4337096 m!4933117))

(assert (=> b!4337096 m!4933111))

(declare-fun m!4933119 () Bool)

(assert (=> b!4337096 m!4933119))

(declare-fun m!4933121 () Bool)

(assert (=> b!4337094 m!4933121))

(assert (=> bm!301421 m!4933033))

(assert (=> b!4336811 d!1274859))

(declare-fun d!1274861 () Bool)

(declare-fun e!2698690 () Bool)

(assert (=> d!1274861 e!2698690))

(declare-fun res!1779086 () Bool)

(assert (=> d!1274861 (=> (not res!1779086) (not e!2698690))))

(declare-fun lt!1550927 () ListMap!2009)

(assert (=> d!1274861 (= res!1779086 (contains!10760 lt!1550927 (_1!27261 lt!1550519)))))

(declare-fun lt!1550929 () List!48813)

(assert (=> d!1274861 (= lt!1550927 (ListMap!2010 lt!1550929))))

(declare-fun lt!1550928 () Unit!68767)

(declare-fun lt!1550926 () Unit!68767)

(assert (=> d!1274861 (= lt!1550928 lt!1550926)))

(assert (=> d!1274861 (= (getValueByKey!363 lt!1550929 (_1!27261 lt!1550519)) (Some!10376 (_2!27261 lt!1550519)))))

(assert (=> d!1274861 (= lt!1550926 (lemmaContainsTupThenGetReturnValue!146 lt!1550929 (_1!27261 lt!1550519) (_2!27261 lt!1550519)))))

(assert (=> d!1274861 (= lt!1550929 (insertNoDuplicatedKeys!65 (toList!2766 lt!1550523) (_1!27261 lt!1550519) (_2!27261 lt!1550519)))))

(assert (=> d!1274861 (= (+!454 lt!1550523 lt!1550519) lt!1550927)))

(declare-fun b!4337098 () Bool)

(declare-fun res!1779085 () Bool)

(assert (=> b!4337098 (=> (not res!1779085) (not e!2698690))))

(assert (=> b!4337098 (= res!1779085 (= (getValueByKey!363 (toList!2766 lt!1550927) (_1!27261 lt!1550519)) (Some!10376 (_2!27261 lt!1550519))))))

(declare-fun b!4337099 () Bool)

(assert (=> b!4337099 (= e!2698690 (contains!10764 (toList!2766 lt!1550927) lt!1550519))))

(assert (= (and d!1274861 res!1779086) b!4337098))

(assert (= (and b!4337098 res!1779085) b!4337099))

(declare-fun m!4933123 () Bool)

(assert (=> d!1274861 m!4933123))

(declare-fun m!4933125 () Bool)

(assert (=> d!1274861 m!4933125))

(declare-fun m!4933127 () Bool)

(assert (=> d!1274861 m!4933127))

(declare-fun m!4933129 () Bool)

(assert (=> d!1274861 m!4933129))

(declare-fun m!4933131 () Bool)

(assert (=> b!4337098 m!4933131))

(declare-fun m!4933133 () Bool)

(assert (=> b!4337099 m!4933133))

(assert (=> b!4336811 d!1274861))

(declare-fun d!1274863 () Bool)

(declare-fun res!1779087 () Bool)

(declare-fun e!2698691 () Bool)

(assert (=> d!1274863 (=> res!1779087 e!2698691)))

(assert (=> d!1274863 (= res!1779087 (not ((_ is Cons!48689) lt!1550515)))))

(assert (=> d!1274863 (= (noDuplicateKeys!391 lt!1550515) e!2698691)))

(declare-fun b!4337100 () Bool)

(declare-fun e!2698692 () Bool)

(assert (=> b!4337100 (= e!2698691 e!2698692)))

(declare-fun res!1779088 () Bool)

(assert (=> b!4337100 (=> (not res!1779088) (not e!2698692))))

(assert (=> b!4337100 (= res!1779088 (not (containsKey!546 (t!355729 lt!1550515) (_1!27261 (h!54194 lt!1550515)))))))

(declare-fun b!4337101 () Bool)

(assert (=> b!4337101 (= e!2698692 (noDuplicateKeys!391 (t!355729 lt!1550515)))))

(assert (= (and d!1274863 (not res!1779087)) b!4337100))

(assert (= (and b!4337100 res!1779088) b!4337101))

(declare-fun m!4933135 () Bool)

(assert (=> b!4337100 m!4933135))

(declare-fun m!4933137 () Bool)

(assert (=> b!4337101 m!4933137))

(assert (=> b!4336811 d!1274863))

(declare-fun bs!609219 () Bool)

(declare-fun b!4337104 () Bool)

(assert (= bs!609219 (and b!4337104 b!4337091)))

(declare-fun lambda!136247 () Int)

(assert (=> bs!609219 (= (= lt!1550523 lt!1550885) (= lambda!136247 lambda!136241))))

(assert (=> bs!609219 (= (= lt!1550523 (+!454 lt!1550523 lt!1550519)) (= lambda!136247 lambda!136240))))

(declare-fun bs!609220 () Bool)

(assert (= bs!609220 (and b!4337104 b!4337095)))

(assert (=> bs!609220 (= lambda!136247 lambda!136243)))

(declare-fun bs!609221 () Bool)

(assert (= bs!609221 (and b!4337104 b!4337096)))

(assert (=> bs!609221 (= (= lt!1550523 lt!1550906) (= lambda!136247 lambda!136245))))

(declare-fun bs!609222 () Bool)

(assert (= bs!609222 (and b!4337104 d!1274817)))

(assert (=> bs!609222 (not (= lambda!136247 lambda!136156))))

(declare-fun bs!609223 () Bool)

(assert (= bs!609223 (and b!4337104 b!4337076)))

(assert (=> bs!609223 (= lambda!136247 lambda!136235)))

(assert (=> bs!609221 (= lambda!136247 lambda!136244)))

(declare-fun bs!609224 () Bool)

(assert (= bs!609224 (and b!4337104 d!1274857)))

(assert (=> bs!609224 (= (= lt!1550523 lt!1550904) (= lambda!136247 lambda!136242))))

(declare-fun bs!609225 () Bool)

(assert (= bs!609225 (and b!4337104 b!4337090)))

(assert (=> bs!609225 (= (= lt!1550523 (+!454 lt!1550523 lt!1550519)) (= lambda!136247 lambda!136239))))

(assert (=> bs!609223 (= (= lt!1550523 lt!1550851) (= lambda!136247 lambda!136236))))

(declare-fun bs!609226 () Bool)

(assert (= bs!609226 (and b!4337104 d!1274859)))

(assert (=> bs!609226 (= (= lt!1550523 lt!1550925) (= lambda!136247 lambda!136246))))

(declare-fun bs!609227 () Bool)

(assert (= bs!609227 (and b!4337104 b!4337075)))

(assert (=> bs!609227 (= lambda!136247 lambda!136234)))

(declare-fun bs!609228 () Bool)

(assert (= bs!609228 (and b!4337104 d!1274823)))

(assert (=> bs!609228 (= (= lt!1550523 lt!1550870) (= lambda!136247 lambda!136237))))

(assert (=> b!4337104 true))

(declare-fun bs!609229 () Bool)

(declare-fun b!4337105 () Bool)

(assert (= bs!609229 (and b!4337105 b!4337091)))

(declare-fun lambda!136248 () Int)

(assert (=> bs!609229 (= (= lt!1550523 lt!1550885) (= lambda!136248 lambda!136241))))

(assert (=> bs!609229 (= (= lt!1550523 (+!454 lt!1550523 lt!1550519)) (= lambda!136248 lambda!136240))))

(declare-fun bs!609230 () Bool)

(assert (= bs!609230 (and b!4337105 b!4337095)))

(assert (=> bs!609230 (= lambda!136248 lambda!136243)))

(declare-fun bs!609231 () Bool)

(assert (= bs!609231 (and b!4337105 b!4337096)))

(assert (=> bs!609231 (= (= lt!1550523 lt!1550906) (= lambda!136248 lambda!136245))))

(declare-fun bs!609232 () Bool)

(assert (= bs!609232 (and b!4337105 d!1274817)))

(assert (=> bs!609232 (not (= lambda!136248 lambda!136156))))

(declare-fun bs!609233 () Bool)

(assert (= bs!609233 (and b!4337105 b!4337076)))

(assert (=> bs!609233 (= lambda!136248 lambda!136235)))

(assert (=> bs!609231 (= lambda!136248 lambda!136244)))

(declare-fun bs!609234 () Bool)

(assert (= bs!609234 (and b!4337105 d!1274857)))

(assert (=> bs!609234 (= (= lt!1550523 lt!1550904) (= lambda!136248 lambda!136242))))

(declare-fun bs!609235 () Bool)

(assert (= bs!609235 (and b!4337105 b!4337090)))

(assert (=> bs!609235 (= (= lt!1550523 (+!454 lt!1550523 lt!1550519)) (= lambda!136248 lambda!136239))))

(declare-fun bs!609236 () Bool)

(assert (= bs!609236 (and b!4337105 b!4337104)))

(assert (=> bs!609236 (= lambda!136248 lambda!136247)))

(assert (=> bs!609233 (= (= lt!1550523 lt!1550851) (= lambda!136248 lambda!136236))))

(declare-fun bs!609237 () Bool)

(assert (= bs!609237 (and b!4337105 d!1274859)))

(assert (=> bs!609237 (= (= lt!1550523 lt!1550925) (= lambda!136248 lambda!136246))))

(declare-fun bs!609238 () Bool)

(assert (= bs!609238 (and b!4337105 b!4337075)))

(assert (=> bs!609238 (= lambda!136248 lambda!136234)))

(declare-fun bs!609239 () Bool)

(assert (= bs!609239 (and b!4337105 d!1274823)))

(assert (=> bs!609239 (= (= lt!1550523 lt!1550870) (= lambda!136248 lambda!136237))))

(assert (=> b!4337105 true))

(declare-fun lambda!136249 () Int)

(declare-fun lt!1550931 () ListMap!2009)

(assert (=> bs!609229 (= (= lt!1550931 lt!1550885) (= lambda!136249 lambda!136241))))

(assert (=> bs!609229 (= (= lt!1550931 (+!454 lt!1550523 lt!1550519)) (= lambda!136249 lambda!136240))))

(assert (=> bs!609230 (= (= lt!1550931 lt!1550523) (= lambda!136249 lambda!136243))))

(assert (=> bs!609231 (= (= lt!1550931 lt!1550906) (= lambda!136249 lambda!136245))))

(assert (=> bs!609232 (not (= lambda!136249 lambda!136156))))

(assert (=> bs!609233 (= (= lt!1550931 lt!1550523) (= lambda!136249 lambda!136235))))

(assert (=> bs!609231 (= (= lt!1550931 lt!1550523) (= lambda!136249 lambda!136244))))

(assert (=> bs!609234 (= (= lt!1550931 lt!1550904) (= lambda!136249 lambda!136242))))

(assert (=> bs!609235 (= (= lt!1550931 (+!454 lt!1550523 lt!1550519)) (= lambda!136249 lambda!136239))))

(assert (=> bs!609236 (= (= lt!1550931 lt!1550523) (= lambda!136249 lambda!136247))))

(assert (=> bs!609233 (= (= lt!1550931 lt!1550851) (= lambda!136249 lambda!136236))))

(assert (=> bs!609237 (= (= lt!1550931 lt!1550925) (= lambda!136249 lambda!136246))))

(assert (=> bs!609238 (= (= lt!1550931 lt!1550523) (= lambda!136249 lambda!136234))))

(assert (=> b!4337105 (= (= lt!1550931 lt!1550523) (= lambda!136249 lambda!136248))))

(assert (=> bs!609239 (= (= lt!1550931 lt!1550870) (= lambda!136249 lambda!136237))))

(assert (=> b!4337105 true))

(declare-fun bs!609240 () Bool)

(declare-fun d!1274865 () Bool)

(assert (= bs!609240 (and d!1274865 b!4337091)))

(declare-fun lt!1550950 () ListMap!2009)

(declare-fun lambda!136250 () Int)

(assert (=> bs!609240 (= (= lt!1550950 lt!1550885) (= lambda!136250 lambda!136241))))

(assert (=> bs!609240 (= (= lt!1550950 (+!454 lt!1550523 lt!1550519)) (= lambda!136250 lambda!136240))))

(declare-fun bs!609241 () Bool)

(assert (= bs!609241 (and d!1274865 b!4337095)))

(assert (=> bs!609241 (= (= lt!1550950 lt!1550523) (= lambda!136250 lambda!136243))))

(declare-fun bs!609242 () Bool)

(assert (= bs!609242 (and d!1274865 d!1274817)))

(assert (=> bs!609242 (not (= lambda!136250 lambda!136156))))

(declare-fun bs!609243 () Bool)

(assert (= bs!609243 (and d!1274865 b!4337076)))

(assert (=> bs!609243 (= (= lt!1550950 lt!1550523) (= lambda!136250 lambda!136235))))

(declare-fun bs!609244 () Bool)

(assert (= bs!609244 (and d!1274865 b!4337096)))

(assert (=> bs!609244 (= (= lt!1550950 lt!1550523) (= lambda!136250 lambda!136244))))

(declare-fun bs!609245 () Bool)

(assert (= bs!609245 (and d!1274865 d!1274857)))

(assert (=> bs!609245 (= (= lt!1550950 lt!1550904) (= lambda!136250 lambda!136242))))

(declare-fun bs!609246 () Bool)

(assert (= bs!609246 (and d!1274865 b!4337090)))

(assert (=> bs!609246 (= (= lt!1550950 (+!454 lt!1550523 lt!1550519)) (= lambda!136250 lambda!136239))))

(declare-fun bs!609247 () Bool)

(assert (= bs!609247 (and d!1274865 b!4337104)))

(assert (=> bs!609247 (= (= lt!1550950 lt!1550523) (= lambda!136250 lambda!136247))))

(declare-fun bs!609248 () Bool)

(assert (= bs!609248 (and d!1274865 b!4337105)))

(assert (=> bs!609248 (= (= lt!1550950 lt!1550931) (= lambda!136250 lambda!136249))))

(assert (=> bs!609244 (= (= lt!1550950 lt!1550906) (= lambda!136250 lambda!136245))))

(assert (=> bs!609243 (= (= lt!1550950 lt!1550851) (= lambda!136250 lambda!136236))))

(declare-fun bs!609249 () Bool)

(assert (= bs!609249 (and d!1274865 d!1274859)))

(assert (=> bs!609249 (= (= lt!1550950 lt!1550925) (= lambda!136250 lambda!136246))))

(declare-fun bs!609250 () Bool)

(assert (= bs!609250 (and d!1274865 b!4337075)))

(assert (=> bs!609250 (= (= lt!1550950 lt!1550523) (= lambda!136250 lambda!136234))))

(assert (=> bs!609248 (= (= lt!1550950 lt!1550523) (= lambda!136250 lambda!136248))))

(declare-fun bs!609251 () Bool)

(assert (= bs!609251 (and d!1274865 d!1274823)))

(assert (=> bs!609251 (= (= lt!1550950 lt!1550870) (= lambda!136250 lambda!136237))))

(assert (=> d!1274865 true))

(declare-fun b!4337102 () Bool)

(declare-fun e!2698695 () Bool)

(assert (=> b!4337102 (= e!2698695 (forall!8965 (toList!2766 lt!1550523) lambda!136249))))

(declare-fun b!4337103 () Bool)

(declare-fun res!1779090 () Bool)

(declare-fun e!2698693 () Bool)

(assert (=> b!4337103 (=> (not res!1779090) (not e!2698693))))

(assert (=> b!4337103 (= res!1779090 (forall!8965 (toList!2766 lt!1550523) lambda!136250))))

(declare-fun e!2698694 () ListMap!2009)

(assert (=> b!4337104 (= e!2698694 lt!1550523)))

(declare-fun lt!1550944 () Unit!68767)

(declare-fun call!301429 () Unit!68767)

(assert (=> b!4337104 (= lt!1550944 call!301429)))

(declare-fun call!301427 () Bool)

(assert (=> b!4337104 call!301427))

(declare-fun lt!1550933 () Unit!68767)

(assert (=> b!4337104 (= lt!1550933 lt!1550944)))

(declare-fun call!301428 () Bool)

(assert (=> b!4337104 call!301428))

(declare-fun lt!1550947 () Unit!68767)

(declare-fun Unit!68852 () Unit!68767)

(assert (=> b!4337104 (= lt!1550947 Unit!68852)))

(declare-fun bm!301422 () Bool)

(declare-fun c!737473 () Bool)

(assert (=> bm!301422 (= call!301427 (forall!8965 (toList!2766 lt!1550523) (ite c!737473 lambda!136247 lambda!136249)))))

(declare-fun bm!301423 () Bool)

(assert (=> bm!301423 (= call!301428 (forall!8965 (toList!2766 lt!1550523) (ite c!737473 lambda!136247 lambda!136249)))))

(assert (=> b!4337105 (= e!2698694 lt!1550931)))

(declare-fun lt!1550934 () ListMap!2009)

(assert (=> b!4337105 (= lt!1550934 (+!454 lt!1550523 (h!54194 newBucket!200)))))

(assert (=> b!4337105 (= lt!1550931 (addToMapMapFromBucket!99 (t!355729 newBucket!200) (+!454 lt!1550523 (h!54194 newBucket!200))))))

(declare-fun lt!1550946 () Unit!68767)

(assert (=> b!4337105 (= lt!1550946 call!301429)))

(assert (=> b!4337105 (forall!8965 (toList!2766 lt!1550523) lambda!136248)))

(declare-fun lt!1550941 () Unit!68767)

(assert (=> b!4337105 (= lt!1550941 lt!1550946)))

(assert (=> b!4337105 (forall!8965 (toList!2766 lt!1550934) lambda!136249)))

(declare-fun lt!1550932 () Unit!68767)

(declare-fun Unit!68853 () Unit!68767)

(assert (=> b!4337105 (= lt!1550932 Unit!68853)))

(assert (=> b!4337105 (forall!8965 (t!355729 newBucket!200) lambda!136249)))

(declare-fun lt!1550936 () Unit!68767)

(declare-fun Unit!68854 () Unit!68767)

(assert (=> b!4337105 (= lt!1550936 Unit!68854)))

(declare-fun lt!1550937 () Unit!68767)

(declare-fun Unit!68855 () Unit!68767)

(assert (=> b!4337105 (= lt!1550937 Unit!68855)))

(declare-fun lt!1550938 () Unit!68767)

(assert (=> b!4337105 (= lt!1550938 (forallContained!1615 (toList!2766 lt!1550934) lambda!136249 (h!54194 newBucket!200)))))

(assert (=> b!4337105 (contains!10760 lt!1550934 (_1!27261 (h!54194 newBucket!200)))))

(declare-fun lt!1550945 () Unit!68767)

(declare-fun Unit!68856 () Unit!68767)

(assert (=> b!4337105 (= lt!1550945 Unit!68856)))

(assert (=> b!4337105 (contains!10760 lt!1550931 (_1!27261 (h!54194 newBucket!200)))))

(declare-fun lt!1550939 () Unit!68767)

(declare-fun Unit!68857 () Unit!68767)

(assert (=> b!4337105 (= lt!1550939 Unit!68857)))

(assert (=> b!4337105 (forall!8965 newBucket!200 lambda!136249)))

(declare-fun lt!1550930 () Unit!68767)

(declare-fun Unit!68858 () Unit!68767)

(assert (=> b!4337105 (= lt!1550930 Unit!68858)))

(assert (=> b!4337105 (forall!8965 (toList!2766 lt!1550934) lambda!136249)))

(declare-fun lt!1550942 () Unit!68767)

(declare-fun Unit!68859 () Unit!68767)

(assert (=> b!4337105 (= lt!1550942 Unit!68859)))

(declare-fun lt!1550949 () Unit!68767)

(declare-fun Unit!68860 () Unit!68767)

(assert (=> b!4337105 (= lt!1550949 Unit!68860)))

(declare-fun lt!1550935 () Unit!68767)

(assert (=> b!4337105 (= lt!1550935 (addForallContainsKeyThenBeforeAdding!25 lt!1550523 lt!1550931 (_1!27261 (h!54194 newBucket!200)) (_2!27261 (h!54194 newBucket!200))))))

(assert (=> b!4337105 call!301428))

(declare-fun lt!1550940 () Unit!68767)

(assert (=> b!4337105 (= lt!1550940 lt!1550935)))

(assert (=> b!4337105 call!301427))

(declare-fun lt!1550948 () Unit!68767)

(declare-fun Unit!68861 () Unit!68767)

(assert (=> b!4337105 (= lt!1550948 Unit!68861)))

(declare-fun res!1779089 () Bool)

(assert (=> b!4337105 (= res!1779089 (forall!8965 newBucket!200 lambda!136249))))

(assert (=> b!4337105 (=> (not res!1779089) (not e!2698695))))

(assert (=> b!4337105 e!2698695))

(declare-fun lt!1550943 () Unit!68767)

(declare-fun Unit!68862 () Unit!68767)

(assert (=> b!4337105 (= lt!1550943 Unit!68862)))

(assert (=> d!1274865 e!2698693))

(declare-fun res!1779091 () Bool)

(assert (=> d!1274865 (=> (not res!1779091) (not e!2698693))))

(assert (=> d!1274865 (= res!1779091 (forall!8965 newBucket!200 lambda!136250))))

(assert (=> d!1274865 (= lt!1550950 e!2698694)))

(assert (=> d!1274865 (= c!737473 ((_ is Nil!48689) newBucket!200))))

(assert (=> d!1274865 (noDuplicateKeys!391 newBucket!200)))

(assert (=> d!1274865 (= (addToMapMapFromBucket!99 newBucket!200 lt!1550523) lt!1550950)))

(declare-fun b!4337106 () Bool)

(assert (=> b!4337106 (= e!2698693 (invariantList!632 (toList!2766 lt!1550950)))))

(declare-fun bm!301424 () Bool)

(assert (=> bm!301424 (= call!301429 (lemmaContainsAllItsOwnKeys!25 lt!1550523))))

(assert (= (and d!1274865 c!737473) b!4337104))

(assert (= (and d!1274865 (not c!737473)) b!4337105))

(assert (= (and b!4337105 res!1779089) b!4337102))

(assert (= (or b!4337104 b!4337105) bm!301424))

(assert (= (or b!4337104 b!4337105) bm!301423))

(assert (= (or b!4337104 b!4337105) bm!301422))

(assert (= (and d!1274865 res!1779091) b!4337103))

(assert (= (and b!4337103 res!1779090) b!4337106))

(declare-fun m!4933139 () Bool)

(assert (=> b!4337102 m!4933139))

(declare-fun m!4933141 () Bool)

(assert (=> d!1274865 m!4933141))

(assert (=> d!1274865 m!4932585))

(declare-fun m!4933143 () Bool)

(assert (=> bm!301422 m!4933143))

(declare-fun m!4933145 () Bool)

(assert (=> b!4337106 m!4933145))

(assert (=> bm!301423 m!4933143))

(declare-fun m!4933147 () Bool)

(assert (=> b!4337105 m!4933147))

(declare-fun m!4933149 () Bool)

(assert (=> b!4337105 m!4933149))

(declare-fun m!4933151 () Bool)

(assert (=> b!4337105 m!4933151))

(declare-fun m!4933153 () Bool)

(assert (=> b!4337105 m!4933153))

(declare-fun m!4933155 () Bool)

(assert (=> b!4337105 m!4933155))

(declare-fun m!4933157 () Bool)

(assert (=> b!4337105 m!4933157))

(declare-fun m!4933159 () Bool)

(assert (=> b!4337105 m!4933159))

(assert (=> b!4337105 m!4933153))

(declare-fun m!4933161 () Bool)

(assert (=> b!4337105 m!4933161))

(assert (=> b!4337105 m!4933147))

(declare-fun m!4933163 () Bool)

(assert (=> b!4337105 m!4933163))

(assert (=> b!4337105 m!4933157))

(declare-fun m!4933165 () Bool)

(assert (=> b!4337105 m!4933165))

(declare-fun m!4933167 () Bool)

(assert (=> b!4337103 m!4933167))

(assert (=> bm!301424 m!4933033))

(assert (=> b!4336811 d!1274865))

(declare-fun bs!609252 () Bool)

(declare-fun d!1274867 () Bool)

(assert (= bs!609252 (and d!1274867 start!418372)))

(declare-fun lambda!136251 () Int)

(assert (=> bs!609252 (= lambda!136251 lambda!136141)))

(declare-fun bs!609253 () Bool)

(assert (= bs!609253 (and d!1274867 d!1274815)))

(assert (=> bs!609253 (not (= lambda!136251 lambda!136153))))

(declare-fun bs!609254 () Bool)

(assert (= bs!609254 (and d!1274867 d!1274821)))

(assert (=> bs!609254 (= lambda!136251 lambda!136183)))

(declare-fun bs!609255 () Bool)

(assert (= bs!609255 (and d!1274867 d!1274853)))

(assert (=> bs!609255 (= lambda!136251 lambda!136238)))

(declare-fun lt!1550951 () ListMap!2009)

(assert (=> d!1274867 (invariantList!632 (toList!2766 lt!1550951))))

(declare-fun e!2698696 () ListMap!2009)

(assert (=> d!1274867 (= lt!1550951 e!2698696)))

(declare-fun c!737474 () Bool)

(assert (=> d!1274867 (= c!737474 ((_ is Cons!48690) (t!355730 (toList!2765 lm!1707))))))

(assert (=> d!1274867 (forall!8963 (t!355730 (toList!2765 lm!1707)) lambda!136251)))

(assert (=> d!1274867 (= (extractMap!450 (t!355730 (toList!2765 lm!1707))) lt!1550951)))

(declare-fun b!4337107 () Bool)

(assert (=> b!4337107 (= e!2698696 (addToMapMapFromBucket!99 (_2!27262 (h!54195 (t!355730 (toList!2765 lm!1707)))) (extractMap!450 (t!355730 (t!355730 (toList!2765 lm!1707))))))))

(declare-fun b!4337108 () Bool)

(assert (=> b!4337108 (= e!2698696 (ListMap!2010 Nil!48689))))

(assert (= (and d!1274867 c!737474) b!4337107))

(assert (= (and d!1274867 (not c!737474)) b!4337108))

(declare-fun m!4933169 () Bool)

(assert (=> d!1274867 m!4933169))

(declare-fun m!4933171 () Bool)

(assert (=> d!1274867 m!4933171))

(declare-fun m!4933173 () Bool)

(assert (=> b!4337107 m!4933173))

(assert (=> b!4337107 m!4933173))

(declare-fun m!4933175 () Bool)

(assert (=> b!4337107 m!4933175))

(assert (=> b!4336811 d!1274867))

(declare-fun d!1274869 () Bool)

(assert (=> d!1274869 (eq!181 (addToMapMapFromBucket!99 lt!1550515 (+!454 lt!1550523 (tuple2!47935 key!3918 newValue!99))) (+!454 (addToMapMapFromBucket!99 lt!1550515 lt!1550523) (tuple2!47935 key!3918 newValue!99)))))

(declare-fun lt!1550954 () Unit!68767)

(declare-fun choose!26558 (ListMap!2009 K!10045 V!10291 List!48813) Unit!68767)

(assert (=> d!1274869 (= lt!1550954 (choose!26558 lt!1550523 key!3918 newValue!99 lt!1550515))))

(assert (=> d!1274869 (not (containsKey!546 lt!1550515 key!3918))))

(assert (=> d!1274869 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!10 lt!1550523 key!3918 newValue!99 lt!1550515) lt!1550954)))

(declare-fun bs!609256 () Bool)

(assert (= bs!609256 d!1274869))

(assert (=> bs!609256 m!4932593))

(declare-fun m!4933177 () Bool)

(assert (=> bs!609256 m!4933177))

(assert (=> bs!609256 m!4933177))

(declare-fun m!4933179 () Bool)

(assert (=> bs!609256 m!4933179))

(declare-fun m!4933181 () Bool)

(assert (=> bs!609256 m!4933181))

(assert (=> bs!609256 m!4933179))

(declare-fun m!4933183 () Bool)

(assert (=> bs!609256 m!4933183))

(declare-fun m!4933185 () Bool)

(assert (=> bs!609256 m!4933185))

(declare-fun m!4933187 () Bool)

(assert (=> bs!609256 m!4933187))

(assert (=> bs!609256 m!4932593))

(assert (=> bs!609256 m!4933183))

(assert (=> b!4336811 d!1274869))

(declare-fun d!1274871 () Bool)

(declare-fun hash!1344 (Hashable!4783 K!10045) (_ BitVec 64))

(assert (=> d!1274871 (= (hash!1342 hashF!1247 key!3918) (hash!1344 hashF!1247 key!3918))))

(declare-fun bs!609257 () Bool)

(assert (= bs!609257 d!1274871))

(declare-fun m!4933189 () Bool)

(assert (=> bs!609257 m!4933189))

(assert (=> b!4336812 d!1274871))

(declare-fun tp!1329076 () Bool)

(declare-fun b!4337113 () Bool)

(declare-fun e!2698699 () Bool)

(assert (=> b!4337113 (= e!2698699 (and tp_is_empty!24801 tp_is_empty!24803 tp!1329076))))

(assert (=> b!4336810 (= tp!1329064 e!2698699)))

(assert (= (and b!4336810 ((_ is Cons!48689) (t!355729 newBucket!200))) b!4337113))

(declare-fun b!4337118 () Bool)

(declare-fun e!2698702 () Bool)

(declare-fun tp!1329081 () Bool)

(declare-fun tp!1329082 () Bool)

(assert (=> b!4337118 (= e!2698702 (and tp!1329081 tp!1329082))))

(assert (=> b!4336804 (= tp!1329063 e!2698702)))

(assert (= (and b!4336804 ((_ is Cons!48690) (toList!2765 lm!1707))) b!4337118))

(declare-fun b_lambda!128387 () Bool)

(assert (= b_lambda!128373 (or start!418372 b_lambda!128387)))

(declare-fun bs!609258 () Bool)

(declare-fun d!1274873 () Bool)

(assert (= bs!609258 (and d!1274873 start!418372)))

(assert (=> bs!609258 (= (dynLambda!20571 lambda!136141 (h!54195 (toList!2765 lm!1707))) (noDuplicateKeys!391 (_2!27262 (h!54195 (toList!2765 lm!1707)))))))

(declare-fun m!4933191 () Bool)

(assert (=> bs!609258 m!4933191))

(assert (=> b!4336893 d!1274873))

(declare-fun b_lambda!128389 () Bool)

(assert (= b_lambda!128365 (or start!418372 b_lambda!128389)))

(declare-fun bs!609259 () Bool)

(declare-fun d!1274875 () Bool)

(assert (= bs!609259 (and d!1274875 start!418372)))

(assert (=> bs!609259 (= (dynLambda!20571 lambda!136141 (h!54195 (toList!2765 lt!1550522))) (noDuplicateKeys!391 (_2!27262 (h!54195 (toList!2765 lt!1550522)))))))

(declare-fun m!4933193 () Bool)

(assert (=> bs!609259 m!4933193))

(assert (=> b!4336840 d!1274875))

(declare-fun b_lambda!128391 () Bool)

(assert (= b_lambda!128377 (or start!418372 b_lambda!128391)))

(declare-fun bs!609260 () Bool)

(declare-fun d!1274877 () Bool)

(assert (= bs!609260 (and d!1274877 start!418372)))

(assert (=> bs!609260 (= (dynLambda!20571 lambda!136141 lt!1550520) (noDuplicateKeys!391 (_2!27262 lt!1550520)))))

(declare-fun m!4933195 () Bool)

(assert (=> bs!609260 m!4933195))

(assert (=> d!1274805 d!1274877))

(declare-fun b_lambda!128393 () Bool)

(assert (= b_lambda!128371 (or start!418372 b_lambda!128393)))

(declare-fun bs!609261 () Bool)

(declare-fun d!1274879 () Bool)

(assert (= bs!609261 (and d!1274879 start!418372)))

(assert (=> bs!609261 (= (dynLambda!20571 lambda!136141 (tuple2!47937 hash!377 newBucket!200)) (noDuplicateKeys!391 (_2!27262 (tuple2!47937 hash!377 newBucket!200))))))

(declare-fun m!4933197 () Bool)

(assert (=> bs!609261 m!4933197))

(assert (=> b!4336890 d!1274879))

(check-sat tp_is_empty!24801 (not b_lambda!128387) (not b!4337100) (not d!1274853) (not bs!609261) (not d!1274769) (not b!4337074) (not bm!301388) (not bm!301419) (not d!1274865) (not b!4336937) (not b!4337101) (not b!4336964) (not b!4337113) (not b!4336871) (not d!1274785) (not bm!301421) (not b!4337097) (not b!4337093) (not b!4336971) (not b!4337087) (not d!1274869) (not b!4337000) (not b!4337103) (not bm!301416) (not b!4336998) (not b!4336841) (not d!1274805) (not d!1274817) (not d!1274811) (not b!4337107) (not b!4337086) (not b!4337099) (not d!1274807) (not b!4336957) (not b!4337017) (not b!4337006) (not b!4336870) (not d!1274859) (not b!4336944) tp_is_empty!24803 (not b!4336973) (not bs!609259) (not d!1274819) (not b!4337094) (not b!4337106) (not bm!301420) (not b_lambda!128393) (not d!1274793) (not d!1274763) (not bm!301413) (not bm!301415) (not d!1274821) (not b!4337118) (not b!4337091) (not b!4337076) (not d!1274815) (not bs!609258) (not b!4337096) (not bm!301423) (not b!4337004) (not b_lambda!128389) (not b!4337105) (not b!4336894) (not bm!301424) (not d!1274855) (not bm!301422) (not d!1274871) (not b!4337098) (not b!4337077) (not b!4337092) (not b!4336907) (not bm!301414) (not b!4336906) (not d!1274867) (not b!4337080) (not d!1274813) (not b_lambda!128391) (not bm!301418) (not b!4337089) (not b!4337102) (not b!4337073) (not d!1274823) (not d!1274857) (not d!1274851) (not b!4337001) (not d!1274861) (not b!4336999) (not bm!301417) (not d!1274789) (not bs!609260) (not b!4337003) (not b!4337088))
(check-sat)
