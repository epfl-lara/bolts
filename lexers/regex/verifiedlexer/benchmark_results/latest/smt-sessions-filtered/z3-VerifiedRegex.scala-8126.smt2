; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!418284 () Bool)

(assert start!418284)

(declare-fun e!2698241 () Bool)

(declare-datatypes ((V!10281 0))(
  ( (V!10282 (val!16299 Int)) )
))
(declare-datatypes ((K!10035 0))(
  ( (K!10036 (val!16300 Int)) )
))
(declare-datatypes ((tuple2!47918 0))(
  ( (tuple2!47919 (_1!27253 K!10035) (_2!27253 V!10281)) )
))
(declare-datatypes ((List!48803 0))(
  ( (Nil!48679) (Cons!48679 (h!54182 tuple2!47918) (t!355719 List!48803)) )
))
(declare-datatypes ((tuple2!47920 0))(
  ( (tuple2!47921 (_1!27254 (_ BitVec 64)) (_2!27254 List!48803)) )
))
(declare-datatypes ((List!48804 0))(
  ( (Nil!48680) (Cons!48680 (h!54183 tuple2!47920) (t!355720 List!48804)) )
))
(declare-datatypes ((ListLongMap!1407 0))(
  ( (ListLongMap!1408 (toList!2757 List!48804)) )
))
(declare-fun lm!1707 () ListLongMap!1407)

(declare-fun lt!1549908 () ListLongMap!1407)

(declare-fun b!4336342 () Bool)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun lt!1549915 () tuple2!47920)

(get-info :version)

(assert (=> b!4336342 (= e!2698241 (or (not ((_ is Cons!48680) (toList!2757 lm!1707))) (not (= (_1!27254 (h!54183 (toList!2757 lm!1707))) hash!377)) (= lt!1549908 (ListLongMap!1408 (Cons!48680 lt!1549915 (t!355720 (toList!2757 lm!1707)))))))))

(declare-fun b!4336343 () Bool)

(declare-fun e!2698239 () Bool)

(declare-fun e!2698242 () Bool)

(assert (=> b!4336343 (= e!2698239 (not e!2698242))))

(declare-fun res!1778659 () Bool)

(assert (=> b!4336343 (=> res!1778659 e!2698242)))

(declare-fun newBucket!200 () List!48803)

(declare-fun lt!1549921 () List!48803)

(assert (=> b!4336343 (= res!1778659 (not (= newBucket!200 lt!1549921)))))

(declare-fun lt!1549913 () tuple2!47918)

(declare-fun lt!1549912 () List!48803)

(assert (=> b!4336343 (= lt!1549921 (Cons!48679 lt!1549913 lt!1549912))))

(declare-fun lt!1549909 () List!48803)

(declare-fun key!3918 () K!10035)

(declare-fun removePairForKey!357 (List!48803 K!10035) List!48803)

(assert (=> b!4336343 (= lt!1549912 (removePairForKey!357 lt!1549909 key!3918))))

(declare-fun newValue!99 () V!10281)

(assert (=> b!4336343 (= lt!1549913 (tuple2!47919 key!3918 newValue!99))))

(declare-fun lt!1549918 () tuple2!47920)

(declare-fun lambda!135987 () Int)

(declare-datatypes ((Unit!68665 0))(
  ( (Unit!68666) )
))
(declare-fun lt!1549920 () Unit!68665)

(declare-fun forallContained!1607 (List!48804 Int tuple2!47920) Unit!68665)

(assert (=> b!4336343 (= lt!1549920 (forallContained!1607 (toList!2757 lm!1707) lambda!135987 lt!1549918))))

(declare-fun contains!10742 (List!48804 tuple2!47920) Bool)

(assert (=> b!4336343 (contains!10742 (toList!2757 lm!1707) lt!1549918)))

(assert (=> b!4336343 (= lt!1549918 (tuple2!47921 hash!377 lt!1549909))))

(declare-fun lt!1549910 () Unit!68665)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!234 (List!48804 (_ BitVec 64) List!48803) Unit!68665)

(assert (=> b!4336343 (= lt!1549910 (lemmaGetValueByKeyImpliesContainsTuple!234 (toList!2757 lm!1707) hash!377 lt!1549909))))

(declare-fun apply!11239 (ListLongMap!1407 (_ BitVec 64)) List!48803)

(assert (=> b!4336343 (= lt!1549909 (apply!11239 lm!1707 hash!377))))

(declare-fun b!4336344 () Bool)

(declare-fun res!1778658 () Bool)

(assert (=> b!4336344 (=> (not res!1778658) (not e!2698241))))

(declare-fun forall!8957 (List!48804 Int) Bool)

(assert (=> b!4336344 (= res!1778658 (forall!8957 (toList!2757 lt!1549908) lambda!135987))))

(declare-fun b!4336345 () Bool)

(declare-fun res!1778655 () Bool)

(assert (=> b!4336345 (=> (not res!1778655) (not e!2698239))))

(declare-datatypes ((Hashable!4779 0))(
  ( (HashableExt!4778 (__x!30482 Int)) )
))
(declare-fun hashF!1247 () Hashable!4779)

(declare-fun hash!1336 (Hashable!4779 K!10035) (_ BitVec 64))

(assert (=> b!4336345 (= res!1778655 (= (hash!1336 hashF!1247 key!3918) hash!377))))

(declare-fun res!1778650 () Bool)

(assert (=> start!418284 (=> (not res!1778650) (not e!2698239))))

(assert (=> start!418284 (= res!1778650 (forall!8957 (toList!2757 lm!1707) lambda!135987))))

(assert (=> start!418284 e!2698239))

(declare-fun e!2698237 () Bool)

(assert (=> start!418284 e!2698237))

(assert (=> start!418284 true))

(declare-fun e!2698238 () Bool)

(declare-fun inv!64221 (ListLongMap!1407) Bool)

(assert (=> start!418284 (and (inv!64221 lm!1707) e!2698238)))

(declare-fun tp_is_empty!24785 () Bool)

(assert (=> start!418284 tp_is_empty!24785))

(declare-fun tp_is_empty!24787 () Bool)

(assert (=> start!418284 tp_is_empty!24787))

(declare-fun b!4336346 () Bool)

(declare-fun res!1778653 () Bool)

(assert (=> b!4336346 (=> (not res!1778653) (not e!2698239))))

(declare-fun allKeysSameHash!345 (List!48803 (_ BitVec 64) Hashable!4779) Bool)

(assert (=> b!4336346 (= res!1778653 (allKeysSameHash!345 newBucket!200 hash!377 hashF!1247))))

(declare-fun tp!1329022 () Bool)

(declare-fun b!4336347 () Bool)

(assert (=> b!4336347 (= e!2698237 (and tp_is_empty!24785 tp_is_empty!24787 tp!1329022))))

(declare-fun b!4336348 () Bool)

(declare-fun tp!1329021 () Bool)

(assert (=> b!4336348 (= e!2698238 tp!1329021)))

(declare-fun b!4336349 () Bool)

(declare-fun res!1778649 () Bool)

(assert (=> b!4336349 (=> res!1778649 e!2698242)))

(declare-fun noDuplicateKeys!387 (List!48803) Bool)

(assert (=> b!4336349 (= res!1778649 (not (noDuplicateKeys!387 newBucket!200)))))

(declare-fun b!4336350 () Bool)

(declare-fun res!1778651 () Bool)

(assert (=> b!4336350 (=> (not res!1778651) (not e!2698239))))

(declare-fun allKeysSameHashInMap!491 (ListLongMap!1407 Hashable!4779) Bool)

(assert (=> b!4336350 (= res!1778651 (allKeysSameHashInMap!491 lm!1707 hashF!1247))))

(declare-fun b!4336351 () Bool)

(declare-fun e!2698240 () Bool)

(assert (=> b!4336351 (= e!2698240 (forall!8957 (t!355720 (toList!2757 lm!1707)) lambda!135987))))

(declare-datatypes ((ListMap!2001 0))(
  ( (ListMap!2002 (toList!2758 List!48803)) )
))
(declare-fun lt!1549916 () ListMap!2001)

(declare-fun lt!1549919 () ListMap!2001)

(declare-fun eq!177 (ListMap!2001 ListMap!2001) Bool)

(declare-fun +!445 (ListMap!2001 tuple2!47918) ListMap!2001)

(declare-fun addToMapMapFromBucket!95 (List!48803 ListMap!2001) ListMap!2001)

(assert (=> b!4336351 (eq!177 lt!1549916 (+!445 (addToMapMapFromBucket!95 lt!1549912 lt!1549919) lt!1549913))))

(declare-fun lt!1549917 () Unit!68665)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!6 (ListMap!2001 K!10035 V!10281 List!48803) Unit!68665)

(assert (=> b!4336351 (= lt!1549917 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!6 lt!1549919 key!3918 newValue!99 lt!1549912))))

(declare-fun lt!1549922 () ListMap!2001)

(assert (=> b!4336351 (= lt!1549922 lt!1549916)))

(assert (=> b!4336351 (= lt!1549916 (addToMapMapFromBucket!95 lt!1549912 (+!445 lt!1549919 lt!1549913)))))

(declare-fun lt!1549914 () ListMap!2001)

(assert (=> b!4336351 (= lt!1549914 lt!1549922)))

(assert (=> b!4336351 (= lt!1549922 (addToMapMapFromBucket!95 lt!1549921 lt!1549919))))

(assert (=> b!4336351 (= lt!1549914 (addToMapMapFromBucket!95 newBucket!200 lt!1549919))))

(declare-fun extractMap!446 (List!48804) ListMap!2001)

(assert (=> b!4336351 (= lt!1549914 (extractMap!446 (toList!2757 lt!1549908)))))

(assert (=> b!4336351 (= lt!1549919 (extractMap!446 (t!355720 (toList!2757 lm!1707))))))

(declare-fun b!4336352 () Bool)

(declare-fun res!1778652 () Bool)

(assert (=> b!4336352 (=> (not res!1778652) (not e!2698239))))

(declare-fun contains!10743 (ListLongMap!1407 (_ BitVec 64)) Bool)

(assert (=> b!4336352 (= res!1778652 (contains!10743 lm!1707 hash!377))))

(declare-fun b!4336353 () Bool)

(assert (=> b!4336353 (= e!2698242 e!2698240)))

(declare-fun res!1778657 () Bool)

(assert (=> b!4336353 (=> res!1778657 e!2698240)))

(assert (=> b!4336353 (= res!1778657 (or (not ((_ is Cons!48680) (toList!2757 lm!1707))) (not (= (_1!27254 (h!54183 (toList!2757 lm!1707))) hash!377))))))

(assert (=> b!4336353 e!2698241))

(declare-fun res!1778654 () Bool)

(assert (=> b!4336353 (=> (not res!1778654) (not e!2698241))))

(assert (=> b!4336353 (= res!1778654 (forall!8957 (toList!2757 lt!1549908) lambda!135987))))

(declare-fun +!446 (ListLongMap!1407 tuple2!47920) ListLongMap!1407)

(assert (=> b!4336353 (= lt!1549908 (+!446 lm!1707 lt!1549915))))

(assert (=> b!4336353 (= lt!1549915 (tuple2!47921 hash!377 newBucket!200))))

(declare-fun lt!1549911 () Unit!68665)

(declare-fun addValidProp!41 (ListLongMap!1407 Int (_ BitVec 64) List!48803) Unit!68665)

(assert (=> b!4336353 (= lt!1549911 (addValidProp!41 lm!1707 lambda!135987 hash!377 newBucket!200))))

(assert (=> b!4336353 (forall!8957 (toList!2757 lm!1707) lambda!135987)))

(declare-fun b!4336354 () Bool)

(declare-fun res!1778656 () Bool)

(assert (=> b!4336354 (=> (not res!1778656) (not e!2698239))))

(declare-fun contains!10744 (ListMap!2001 K!10035) Bool)

(assert (=> b!4336354 (= res!1778656 (contains!10744 (extractMap!446 (toList!2757 lm!1707)) key!3918))))

(assert (= (and start!418284 res!1778650) b!4336350))

(assert (= (and b!4336350 res!1778651) b!4336345))

(assert (= (and b!4336345 res!1778655) b!4336346))

(assert (= (and b!4336346 res!1778653) b!4336354))

(assert (= (and b!4336354 res!1778656) b!4336352))

(assert (= (and b!4336352 res!1778652) b!4336343))

(assert (= (and b!4336343 (not res!1778659)) b!4336349))

(assert (= (and b!4336349 (not res!1778649)) b!4336353))

(assert (= (and b!4336353 res!1778654) b!4336344))

(assert (= (and b!4336344 res!1778658) b!4336342))

(assert (= (and b!4336353 (not res!1778657)) b!4336351))

(assert (= (and start!418284 ((_ is Cons!48679) newBucket!200)) b!4336347))

(assert (= start!418284 b!4336348))

(declare-fun m!4931747 () Bool)

(assert (=> b!4336352 m!4931747))

(declare-fun m!4931749 () Bool)

(assert (=> b!4336346 m!4931749))

(declare-fun m!4931751 () Bool)

(assert (=> b!4336345 m!4931751))

(declare-fun m!4931753 () Bool)

(assert (=> b!4336354 m!4931753))

(assert (=> b!4336354 m!4931753))

(declare-fun m!4931755 () Bool)

(assert (=> b!4336354 m!4931755))

(declare-fun m!4931757 () Bool)

(assert (=> b!4336344 m!4931757))

(declare-fun m!4931759 () Bool)

(assert (=> b!4336343 m!4931759))

(declare-fun m!4931761 () Bool)

(assert (=> b!4336343 m!4931761))

(declare-fun m!4931763 () Bool)

(assert (=> b!4336343 m!4931763))

(declare-fun m!4931765 () Bool)

(assert (=> b!4336343 m!4931765))

(declare-fun m!4931767 () Bool)

(assert (=> b!4336343 m!4931767))

(declare-fun m!4931769 () Bool)

(assert (=> b!4336350 m!4931769))

(declare-fun m!4931771 () Bool)

(assert (=> start!418284 m!4931771))

(declare-fun m!4931773 () Bool)

(assert (=> start!418284 m!4931773))

(assert (=> b!4336353 m!4931757))

(declare-fun m!4931775 () Bool)

(assert (=> b!4336353 m!4931775))

(declare-fun m!4931777 () Bool)

(assert (=> b!4336353 m!4931777))

(assert (=> b!4336353 m!4931771))

(declare-fun m!4931779 () Bool)

(assert (=> b!4336349 m!4931779))

(declare-fun m!4931781 () Bool)

(assert (=> b!4336351 m!4931781))

(declare-fun m!4931783 () Bool)

(assert (=> b!4336351 m!4931783))

(declare-fun m!4931785 () Bool)

(assert (=> b!4336351 m!4931785))

(declare-fun m!4931787 () Bool)

(assert (=> b!4336351 m!4931787))

(assert (=> b!4336351 m!4931785))

(declare-fun m!4931789 () Bool)

(assert (=> b!4336351 m!4931789))

(declare-fun m!4931791 () Bool)

(assert (=> b!4336351 m!4931791))

(declare-fun m!4931793 () Bool)

(assert (=> b!4336351 m!4931793))

(declare-fun m!4931795 () Bool)

(assert (=> b!4336351 m!4931795))

(assert (=> b!4336351 m!4931783))

(assert (=> b!4336351 m!4931791))

(declare-fun m!4931797 () Bool)

(assert (=> b!4336351 m!4931797))

(declare-fun m!4931799 () Bool)

(assert (=> b!4336351 m!4931799))

(declare-fun m!4931801 () Bool)

(assert (=> b!4336351 m!4931801))

(check-sat (not b!4336344) tp_is_empty!24785 (not b!4336350) (not b!4336352) (not b!4336348) (not b!4336354) (not b!4336351) (not b!4336346) (not b!4336347) (not b!4336345) (not b!4336349) (not start!418284) (not b!4336353) tp_is_empty!24787 (not b!4336343))
(check-sat)
(get-model)

(declare-fun d!1274621 () Bool)

(declare-fun res!1778664 () Bool)

(declare-fun e!2698247 () Bool)

(assert (=> d!1274621 (=> res!1778664 e!2698247)))

(assert (=> d!1274621 (= res!1778664 (not ((_ is Cons!48679) newBucket!200)))))

(assert (=> d!1274621 (= (noDuplicateKeys!387 newBucket!200) e!2698247)))

(declare-fun b!4336363 () Bool)

(declare-fun e!2698248 () Bool)

(assert (=> b!4336363 (= e!2698247 e!2698248)))

(declare-fun res!1778665 () Bool)

(assert (=> b!4336363 (=> (not res!1778665) (not e!2698248))))

(declare-fun containsKey!538 (List!48803 K!10035) Bool)

(assert (=> b!4336363 (= res!1778665 (not (containsKey!538 (t!355719 newBucket!200) (_1!27253 (h!54182 newBucket!200)))))))

(declare-fun b!4336364 () Bool)

(assert (=> b!4336364 (= e!2698248 (noDuplicateKeys!387 (t!355719 newBucket!200)))))

(assert (= (and d!1274621 (not res!1778664)) b!4336363))

(assert (= (and b!4336363 res!1778665) b!4336364))

(declare-fun m!4931805 () Bool)

(assert (=> b!4336363 m!4931805))

(declare-fun m!4931807 () Bool)

(assert (=> b!4336364 m!4931807))

(assert (=> b!4336349 d!1274621))

(declare-fun bs!608861 () Bool)

(declare-fun d!1274625 () Bool)

(assert (= bs!608861 (and d!1274625 start!418284)))

(declare-fun lambda!135993 () Int)

(assert (=> bs!608861 (not (= lambda!135993 lambda!135987))))

(assert (=> d!1274625 true))

(assert (=> d!1274625 (= (allKeysSameHashInMap!491 lm!1707 hashF!1247) (forall!8957 (toList!2757 lm!1707) lambda!135993))))

(declare-fun bs!608862 () Bool)

(assert (= bs!608862 d!1274625))

(declare-fun m!4931809 () Bool)

(assert (=> bs!608862 m!4931809))

(assert (=> b!4336350 d!1274625))

(declare-fun d!1274627 () Bool)

(declare-fun hash!1337 (Hashable!4779 K!10035) (_ BitVec 64))

(assert (=> d!1274627 (= (hash!1336 hashF!1247 key!3918) (hash!1337 hashF!1247 key!3918))))

(declare-fun bs!608863 () Bool)

(assert (= bs!608863 d!1274627))

(declare-fun m!4931823 () Bool)

(assert (=> bs!608863 m!4931823))

(assert (=> b!4336345 d!1274627))

(declare-fun d!1274631 () Bool)

(assert (=> d!1274631 true))

(assert (=> d!1274631 true))

(declare-fun lambda!135996 () Int)

(declare-fun forall!8959 (List!48803 Int) Bool)

(assert (=> d!1274631 (= (allKeysSameHash!345 newBucket!200 hash!377 hashF!1247) (forall!8959 newBucket!200 lambda!135996))))

(declare-fun bs!608865 () Bool)

(assert (= bs!608865 d!1274631))

(declare-fun m!4931829 () Bool)

(assert (=> bs!608865 m!4931829))

(assert (=> b!4336346 d!1274631))

(declare-fun d!1274635 () Bool)

(declare-fun res!1778676 () Bool)

(declare-fun e!2698256 () Bool)

(assert (=> d!1274635 (=> res!1778676 e!2698256)))

(assert (=> d!1274635 (= res!1778676 ((_ is Nil!48680) (toList!2757 lt!1549908)))))

(assert (=> d!1274635 (= (forall!8957 (toList!2757 lt!1549908) lambda!135987) e!2698256)))

(declare-fun b!4336381 () Bool)

(declare-fun e!2698257 () Bool)

(assert (=> b!4336381 (= e!2698256 e!2698257)))

(declare-fun res!1778677 () Bool)

(assert (=> b!4336381 (=> (not res!1778677) (not e!2698257))))

(declare-fun dynLambda!20568 (Int tuple2!47920) Bool)

(assert (=> b!4336381 (= res!1778677 (dynLambda!20568 lambda!135987 (h!54183 (toList!2757 lt!1549908))))))

(declare-fun b!4336382 () Bool)

(assert (=> b!4336382 (= e!2698257 (forall!8957 (t!355720 (toList!2757 lt!1549908)) lambda!135987))))

(assert (= (and d!1274635 (not res!1778676)) b!4336381))

(assert (= (and b!4336381 res!1778677) b!4336382))

(declare-fun b_lambda!128323 () Bool)

(assert (=> (not b_lambda!128323) (not b!4336381)))

(declare-fun m!4931831 () Bool)

(assert (=> b!4336381 m!4931831))

(declare-fun m!4931833 () Bool)

(assert (=> b!4336382 m!4931833))

(assert (=> b!4336353 d!1274635))

(declare-fun d!1274637 () Bool)

(declare-fun e!2698260 () Bool)

(assert (=> d!1274637 e!2698260))

(declare-fun res!1778682 () Bool)

(assert (=> d!1274637 (=> (not res!1778682) (not e!2698260))))

(declare-fun lt!1549949 () ListLongMap!1407)

(assert (=> d!1274637 (= res!1778682 (contains!10743 lt!1549949 (_1!27254 lt!1549915)))))

(declare-fun lt!1549948 () List!48804)

(assert (=> d!1274637 (= lt!1549949 (ListLongMap!1408 lt!1549948))))

(declare-fun lt!1549946 () Unit!68665)

(declare-fun lt!1549947 () Unit!68665)

(assert (=> d!1274637 (= lt!1549946 lt!1549947)))

(declare-datatypes ((Option!10371 0))(
  ( (None!10370) (Some!10370 (v!43114 List!48803)) )
))
(declare-fun getValueByKey!357 (List!48804 (_ BitVec 64)) Option!10371)

(assert (=> d!1274637 (= (getValueByKey!357 lt!1549948 (_1!27254 lt!1549915)) (Some!10370 (_2!27254 lt!1549915)))))

(declare-fun lemmaContainsTupThenGetReturnValue!140 (List!48804 (_ BitVec 64) List!48803) Unit!68665)

(assert (=> d!1274637 (= lt!1549947 (lemmaContainsTupThenGetReturnValue!140 lt!1549948 (_1!27254 lt!1549915) (_2!27254 lt!1549915)))))

(declare-fun insertStrictlySorted!86 (List!48804 (_ BitVec 64) List!48803) List!48804)

(assert (=> d!1274637 (= lt!1549948 (insertStrictlySorted!86 (toList!2757 lm!1707) (_1!27254 lt!1549915) (_2!27254 lt!1549915)))))

(assert (=> d!1274637 (= (+!446 lm!1707 lt!1549915) lt!1549949)))

(declare-fun b!4336387 () Bool)

(declare-fun res!1778683 () Bool)

(assert (=> b!4336387 (=> (not res!1778683) (not e!2698260))))

(assert (=> b!4336387 (= res!1778683 (= (getValueByKey!357 (toList!2757 lt!1549949) (_1!27254 lt!1549915)) (Some!10370 (_2!27254 lt!1549915))))))

(declare-fun b!4336388 () Bool)

(assert (=> b!4336388 (= e!2698260 (contains!10742 (toList!2757 lt!1549949) lt!1549915))))

(assert (= (and d!1274637 res!1778682) b!4336387))

(assert (= (and b!4336387 res!1778683) b!4336388))

(declare-fun m!4931847 () Bool)

(assert (=> d!1274637 m!4931847))

(declare-fun m!4931849 () Bool)

(assert (=> d!1274637 m!4931849))

(declare-fun m!4931851 () Bool)

(assert (=> d!1274637 m!4931851))

(declare-fun m!4931853 () Bool)

(assert (=> d!1274637 m!4931853))

(declare-fun m!4931855 () Bool)

(assert (=> b!4336387 m!4931855))

(declare-fun m!4931857 () Bool)

(assert (=> b!4336388 m!4931857))

(assert (=> b!4336353 d!1274637))

(declare-fun d!1274641 () Bool)

(assert (=> d!1274641 (forall!8957 (toList!2757 (+!446 lm!1707 (tuple2!47921 hash!377 newBucket!200))) lambda!135987)))

(declare-fun lt!1549952 () Unit!68665)

(declare-fun choose!26544 (ListLongMap!1407 Int (_ BitVec 64) List!48803) Unit!68665)

(assert (=> d!1274641 (= lt!1549952 (choose!26544 lm!1707 lambda!135987 hash!377 newBucket!200))))

(declare-fun e!2698263 () Bool)

(assert (=> d!1274641 e!2698263))

(declare-fun res!1778686 () Bool)

(assert (=> d!1274641 (=> (not res!1778686) (not e!2698263))))

(assert (=> d!1274641 (= res!1778686 (forall!8957 (toList!2757 lm!1707) lambda!135987))))

(assert (=> d!1274641 (= (addValidProp!41 lm!1707 lambda!135987 hash!377 newBucket!200) lt!1549952)))

(declare-fun b!4336392 () Bool)

(assert (=> b!4336392 (= e!2698263 (dynLambda!20568 lambda!135987 (tuple2!47921 hash!377 newBucket!200)))))

(assert (= (and d!1274641 res!1778686) b!4336392))

(declare-fun b_lambda!128325 () Bool)

(assert (=> (not b_lambda!128325) (not b!4336392)))

(declare-fun m!4931859 () Bool)

(assert (=> d!1274641 m!4931859))

(declare-fun m!4931861 () Bool)

(assert (=> d!1274641 m!4931861))

(declare-fun m!4931863 () Bool)

(assert (=> d!1274641 m!4931863))

(assert (=> d!1274641 m!4931771))

(declare-fun m!4931865 () Bool)

(assert (=> b!4336392 m!4931865))

(assert (=> b!4336353 d!1274641))

(declare-fun d!1274643 () Bool)

(declare-fun res!1778687 () Bool)

(declare-fun e!2698264 () Bool)

(assert (=> d!1274643 (=> res!1778687 e!2698264)))

(assert (=> d!1274643 (= res!1778687 ((_ is Nil!48680) (toList!2757 lm!1707)))))

(assert (=> d!1274643 (= (forall!8957 (toList!2757 lm!1707) lambda!135987) e!2698264)))

(declare-fun b!4336393 () Bool)

(declare-fun e!2698265 () Bool)

(assert (=> b!4336393 (= e!2698264 e!2698265)))

(declare-fun res!1778688 () Bool)

(assert (=> b!4336393 (=> (not res!1778688) (not e!2698265))))

(assert (=> b!4336393 (= res!1778688 (dynLambda!20568 lambda!135987 (h!54183 (toList!2757 lm!1707))))))

(declare-fun b!4336394 () Bool)

(assert (=> b!4336394 (= e!2698265 (forall!8957 (t!355720 (toList!2757 lm!1707)) lambda!135987))))

(assert (= (and d!1274643 (not res!1778687)) b!4336393))

(assert (= (and b!4336393 res!1778688) b!4336394))

(declare-fun b_lambda!128327 () Bool)

(assert (=> (not b_lambda!128327) (not b!4336393)))

(declare-fun m!4931867 () Bool)

(assert (=> b!4336393 m!4931867))

(assert (=> b!4336394 m!4931801))

(assert (=> b!4336353 d!1274643))

(declare-fun d!1274645 () Bool)

(declare-fun get!15795 (Option!10371) List!48803)

(assert (=> d!1274645 (= (apply!11239 lm!1707 hash!377) (get!15795 (getValueByKey!357 (toList!2757 lm!1707) hash!377)))))

(declare-fun bs!608867 () Bool)

(assert (= bs!608867 d!1274645))

(declare-fun m!4931869 () Bool)

(assert (=> bs!608867 m!4931869))

(assert (=> bs!608867 m!4931869))

(declare-fun m!4931871 () Bool)

(assert (=> bs!608867 m!4931871))

(assert (=> b!4336343 d!1274645))

(declare-fun d!1274647 () Bool)

(assert (=> d!1274647 (dynLambda!20568 lambda!135987 lt!1549918)))

(declare-fun lt!1549955 () Unit!68665)

(declare-fun choose!26545 (List!48804 Int tuple2!47920) Unit!68665)

(assert (=> d!1274647 (= lt!1549955 (choose!26545 (toList!2757 lm!1707) lambda!135987 lt!1549918))))

(declare-fun e!2698268 () Bool)

(assert (=> d!1274647 e!2698268))

(declare-fun res!1778691 () Bool)

(assert (=> d!1274647 (=> (not res!1778691) (not e!2698268))))

(assert (=> d!1274647 (= res!1778691 (forall!8957 (toList!2757 lm!1707) lambda!135987))))

(assert (=> d!1274647 (= (forallContained!1607 (toList!2757 lm!1707) lambda!135987 lt!1549918) lt!1549955)))

(declare-fun b!4336397 () Bool)

(assert (=> b!4336397 (= e!2698268 (contains!10742 (toList!2757 lm!1707) lt!1549918))))

(assert (= (and d!1274647 res!1778691) b!4336397))

(declare-fun b_lambda!128329 () Bool)

(assert (=> (not b_lambda!128329) (not d!1274647)))

(declare-fun m!4931873 () Bool)

(assert (=> d!1274647 m!4931873))

(declare-fun m!4931875 () Bool)

(assert (=> d!1274647 m!4931875))

(assert (=> d!1274647 m!4931771))

(assert (=> b!4336397 m!4931759))

(assert (=> b!4336343 d!1274647))

(declare-fun b!4336409 () Bool)

(declare-fun e!2698274 () List!48803)

(assert (=> b!4336409 (= e!2698274 Nil!48679)))

(declare-fun b!4336408 () Bool)

(assert (=> b!4336408 (= e!2698274 (Cons!48679 (h!54182 lt!1549909) (removePairForKey!357 (t!355719 lt!1549909) key!3918)))))

(declare-fun b!4336407 () Bool)

(declare-fun e!2698273 () List!48803)

(assert (=> b!4336407 (= e!2698273 e!2698274)))

(declare-fun c!737364 () Bool)

(assert (=> b!4336407 (= c!737364 ((_ is Cons!48679) lt!1549909))))

(declare-fun d!1274649 () Bool)

(declare-fun lt!1549958 () List!48803)

(assert (=> d!1274649 (not (containsKey!538 lt!1549958 key!3918))))

(assert (=> d!1274649 (= lt!1549958 e!2698273)))

(declare-fun c!737363 () Bool)

(assert (=> d!1274649 (= c!737363 (and ((_ is Cons!48679) lt!1549909) (= (_1!27253 (h!54182 lt!1549909)) key!3918)))))

(assert (=> d!1274649 (noDuplicateKeys!387 lt!1549909)))

(assert (=> d!1274649 (= (removePairForKey!357 lt!1549909 key!3918) lt!1549958)))

(declare-fun b!4336406 () Bool)

(assert (=> b!4336406 (= e!2698273 (t!355719 lt!1549909))))

(assert (= (and d!1274649 c!737363) b!4336406))

(assert (= (and d!1274649 (not c!737363)) b!4336407))

(assert (= (and b!4336407 c!737364) b!4336408))

(assert (= (and b!4336407 (not c!737364)) b!4336409))

(declare-fun m!4931877 () Bool)

(assert (=> b!4336408 m!4931877))

(declare-fun m!4931879 () Bool)

(assert (=> d!1274649 m!4931879))

(declare-fun m!4931881 () Bool)

(assert (=> d!1274649 m!4931881))

(assert (=> b!4336343 d!1274649))

(declare-fun d!1274651 () Bool)

(declare-fun lt!1549961 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7608 (List!48804) (InoxSet tuple2!47920))

(assert (=> d!1274651 (= lt!1549961 (select (content!7608 (toList!2757 lm!1707)) lt!1549918))))

(declare-fun e!2698280 () Bool)

(assert (=> d!1274651 (= lt!1549961 e!2698280)))

(declare-fun res!1778697 () Bool)

(assert (=> d!1274651 (=> (not res!1778697) (not e!2698280))))

(assert (=> d!1274651 (= res!1778697 ((_ is Cons!48680) (toList!2757 lm!1707)))))

(assert (=> d!1274651 (= (contains!10742 (toList!2757 lm!1707) lt!1549918) lt!1549961)))

(declare-fun b!4336414 () Bool)

(declare-fun e!2698279 () Bool)

(assert (=> b!4336414 (= e!2698280 e!2698279)))

(declare-fun res!1778696 () Bool)

(assert (=> b!4336414 (=> res!1778696 e!2698279)))

(assert (=> b!4336414 (= res!1778696 (= (h!54183 (toList!2757 lm!1707)) lt!1549918))))

(declare-fun b!4336415 () Bool)

(assert (=> b!4336415 (= e!2698279 (contains!10742 (t!355720 (toList!2757 lm!1707)) lt!1549918))))

(assert (= (and d!1274651 res!1778697) b!4336414))

(assert (= (and b!4336414 (not res!1778696)) b!4336415))

(declare-fun m!4931883 () Bool)

(assert (=> d!1274651 m!4931883))

(declare-fun m!4931885 () Bool)

(assert (=> d!1274651 m!4931885))

(declare-fun m!4931887 () Bool)

(assert (=> b!4336415 m!4931887))

(assert (=> b!4336343 d!1274651))

(declare-fun d!1274653 () Bool)

(assert (=> d!1274653 (contains!10742 (toList!2757 lm!1707) (tuple2!47921 hash!377 lt!1549909))))

(declare-fun lt!1549964 () Unit!68665)

(declare-fun choose!26546 (List!48804 (_ BitVec 64) List!48803) Unit!68665)

(assert (=> d!1274653 (= lt!1549964 (choose!26546 (toList!2757 lm!1707) hash!377 lt!1549909))))

(declare-fun e!2698283 () Bool)

(assert (=> d!1274653 e!2698283))

(declare-fun res!1778700 () Bool)

(assert (=> d!1274653 (=> (not res!1778700) (not e!2698283))))

(declare-fun isStrictlySorted!55 (List!48804) Bool)

(assert (=> d!1274653 (= res!1778700 (isStrictlySorted!55 (toList!2757 lm!1707)))))

(assert (=> d!1274653 (= (lemmaGetValueByKeyImpliesContainsTuple!234 (toList!2757 lm!1707) hash!377 lt!1549909) lt!1549964)))

(declare-fun b!4336418 () Bool)

(assert (=> b!4336418 (= e!2698283 (= (getValueByKey!357 (toList!2757 lm!1707) hash!377) (Some!10370 lt!1549909)))))

(assert (= (and d!1274653 res!1778700) b!4336418))

(declare-fun m!4931889 () Bool)

(assert (=> d!1274653 m!4931889))

(declare-fun m!4931891 () Bool)

(assert (=> d!1274653 m!4931891))

(declare-fun m!4931893 () Bool)

(assert (=> d!1274653 m!4931893))

(assert (=> b!4336418 m!4931869))

(assert (=> b!4336343 d!1274653))

(declare-fun b!4336442 () Bool)

(declare-datatypes ((List!48805 0))(
  ( (Nil!48681) (Cons!48681 (h!54186 K!10035) (t!355721 List!48805)) )
))
(declare-fun e!2698302 () List!48805)

(declare-fun keys!16375 (ListMap!2001) List!48805)

(assert (=> b!4336442 (= e!2698302 (keys!16375 (extractMap!446 (toList!2757 lm!1707))))))

(declare-fun b!4336443 () Bool)

(declare-fun getKeysList!77 (List!48803) List!48805)

(assert (=> b!4336443 (= e!2698302 (getKeysList!77 (toList!2758 (extractMap!446 (toList!2757 lm!1707)))))))

(declare-fun b!4336444 () Bool)

(declare-fun e!2698299 () Unit!68665)

(declare-fun Unit!68700 () Unit!68665)

(assert (=> b!4336444 (= e!2698299 Unit!68700)))

(declare-fun b!4336445 () Bool)

(declare-fun e!2698303 () Unit!68665)

(assert (=> b!4336445 (= e!2698303 e!2698299)))

(declare-fun c!737374 () Bool)

(declare-fun call!301348 () Bool)

(assert (=> b!4336445 (= c!737374 call!301348)))

(declare-fun b!4336446 () Bool)

(declare-fun lt!1550007 () Unit!68665)

(assert (=> b!4336446 (= e!2698303 lt!1550007)))

(declare-fun lt!1550001 () Unit!68665)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!269 (List!48803 K!10035) Unit!68665)

(assert (=> b!4336446 (= lt!1550001 (lemmaContainsKeyImpliesGetValueByKeyDefined!269 (toList!2758 (extractMap!446 (toList!2757 lm!1707))) key!3918))))

(declare-datatypes ((Option!10372 0))(
  ( (None!10371) (Some!10371 (v!43115 V!10281)) )
))
(declare-fun isDefined!7666 (Option!10372) Bool)

(declare-fun getValueByKey!358 (List!48803 K!10035) Option!10372)

(assert (=> b!4336446 (isDefined!7666 (getValueByKey!358 (toList!2758 (extractMap!446 (toList!2757 lm!1707))) key!3918))))

(declare-fun lt!1550005 () Unit!68665)

(assert (=> b!4336446 (= lt!1550005 lt!1550001)))

(declare-fun lemmaInListThenGetKeysListContains!74 (List!48803 K!10035) Unit!68665)

(assert (=> b!4336446 (= lt!1550007 (lemmaInListThenGetKeysListContains!74 (toList!2758 (extractMap!446 (toList!2757 lm!1707))) key!3918))))

(assert (=> b!4336446 call!301348))

(declare-fun b!4336447 () Bool)

(declare-fun e!2698300 () Bool)

(declare-fun contains!10746 (List!48805 K!10035) Bool)

(assert (=> b!4336447 (= e!2698300 (not (contains!10746 (keys!16375 (extractMap!446 (toList!2757 lm!1707))) key!3918)))))

(declare-fun b!4336448 () Bool)

(assert (=> b!4336448 false))

(declare-fun lt!1550003 () Unit!68665)

(declare-fun lt!1550002 () Unit!68665)

(assert (=> b!4336448 (= lt!1550003 lt!1550002)))

(declare-fun containsKey!539 (List!48803 K!10035) Bool)

(assert (=> b!4336448 (containsKey!539 (toList!2758 (extractMap!446 (toList!2757 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!75 (List!48803 K!10035) Unit!68665)

(assert (=> b!4336448 (= lt!1550002 (lemmaInGetKeysListThenContainsKey!75 (toList!2758 (extractMap!446 (toList!2757 lm!1707))) key!3918))))

(declare-fun Unit!68701 () Unit!68665)

(assert (=> b!4336448 (= e!2698299 Unit!68701)))

(declare-fun b!4336441 () Bool)

(declare-fun e!2698301 () Bool)

(declare-fun e!2698298 () Bool)

(assert (=> b!4336441 (= e!2698301 e!2698298)))

(declare-fun res!1778707 () Bool)

(assert (=> b!4336441 (=> (not res!1778707) (not e!2698298))))

(assert (=> b!4336441 (= res!1778707 (isDefined!7666 (getValueByKey!358 (toList!2758 (extractMap!446 (toList!2757 lm!1707))) key!3918)))))

(declare-fun d!1274655 () Bool)

(assert (=> d!1274655 e!2698301))

(declare-fun res!1778709 () Bool)

(assert (=> d!1274655 (=> res!1778709 e!2698301)))

(assert (=> d!1274655 (= res!1778709 e!2698300)))

(declare-fun res!1778708 () Bool)

(assert (=> d!1274655 (=> (not res!1778708) (not e!2698300))))

(declare-fun lt!1550004 () Bool)

(assert (=> d!1274655 (= res!1778708 (not lt!1550004))))

(declare-fun lt!1550008 () Bool)

(assert (=> d!1274655 (= lt!1550004 lt!1550008)))

(declare-fun lt!1550006 () Unit!68665)

(assert (=> d!1274655 (= lt!1550006 e!2698303)))

(declare-fun c!737373 () Bool)

(assert (=> d!1274655 (= c!737373 lt!1550008)))

(assert (=> d!1274655 (= lt!1550008 (containsKey!539 (toList!2758 (extractMap!446 (toList!2757 lm!1707))) key!3918))))

(assert (=> d!1274655 (= (contains!10744 (extractMap!446 (toList!2757 lm!1707)) key!3918) lt!1550004)))

(declare-fun bm!301343 () Bool)

(assert (=> bm!301343 (= call!301348 (contains!10746 e!2698302 key!3918))))

(declare-fun c!737375 () Bool)

(assert (=> bm!301343 (= c!737375 c!737373)))

(declare-fun b!4336449 () Bool)

(assert (=> b!4336449 (= e!2698298 (contains!10746 (keys!16375 (extractMap!446 (toList!2757 lm!1707))) key!3918))))

(assert (= (and d!1274655 c!737373) b!4336446))

(assert (= (and d!1274655 (not c!737373)) b!4336445))

(assert (= (and b!4336445 c!737374) b!4336448))

(assert (= (and b!4336445 (not c!737374)) b!4336444))

(assert (= (or b!4336446 b!4336445) bm!301343))

(assert (= (and bm!301343 c!737375) b!4336443))

(assert (= (and bm!301343 (not c!737375)) b!4336442))

(assert (= (and d!1274655 res!1778708) b!4336447))

(assert (= (and d!1274655 (not res!1778709)) b!4336441))

(assert (= (and b!4336441 res!1778707) b!4336449))

(declare-fun m!4931895 () Bool)

(assert (=> b!4336441 m!4931895))

(assert (=> b!4336441 m!4931895))

(declare-fun m!4931897 () Bool)

(assert (=> b!4336441 m!4931897))

(assert (=> b!4336447 m!4931753))

(declare-fun m!4931899 () Bool)

(assert (=> b!4336447 m!4931899))

(assert (=> b!4336447 m!4931899))

(declare-fun m!4931901 () Bool)

(assert (=> b!4336447 m!4931901))

(assert (=> b!4336442 m!4931753))

(assert (=> b!4336442 m!4931899))

(declare-fun m!4931903 () Bool)

(assert (=> b!4336448 m!4931903))

(declare-fun m!4931905 () Bool)

(assert (=> b!4336448 m!4931905))

(declare-fun m!4931907 () Bool)

(assert (=> b!4336443 m!4931907))

(declare-fun m!4931909 () Bool)

(assert (=> bm!301343 m!4931909))

(assert (=> d!1274655 m!4931903))

(declare-fun m!4931911 () Bool)

(assert (=> b!4336446 m!4931911))

(assert (=> b!4336446 m!4931895))

(assert (=> b!4336446 m!4931895))

(assert (=> b!4336446 m!4931897))

(declare-fun m!4931913 () Bool)

(assert (=> b!4336446 m!4931913))

(assert (=> b!4336449 m!4931753))

(assert (=> b!4336449 m!4931899))

(assert (=> b!4336449 m!4931899))

(assert (=> b!4336449 m!4931901))

(assert (=> b!4336354 d!1274655))

(declare-fun bs!608874 () Bool)

(declare-fun d!1274657 () Bool)

(assert (= bs!608874 (and d!1274657 start!418284)))

(declare-fun lambda!136031 () Int)

(assert (=> bs!608874 (= lambda!136031 lambda!135987)))

(declare-fun bs!608875 () Bool)

(assert (= bs!608875 (and d!1274657 d!1274625)))

(assert (=> bs!608875 (not (= lambda!136031 lambda!135993))))

(declare-fun lt!1550054 () ListMap!2001)

(declare-fun invariantList!630 (List!48803) Bool)

(assert (=> d!1274657 (invariantList!630 (toList!2758 lt!1550054))))

(declare-fun e!2698313 () ListMap!2001)

(assert (=> d!1274657 (= lt!1550054 e!2698313)))

(declare-fun c!737379 () Bool)

(assert (=> d!1274657 (= c!737379 ((_ is Cons!48680) (toList!2757 lm!1707)))))

(assert (=> d!1274657 (forall!8957 (toList!2757 lm!1707) lambda!136031)))

(assert (=> d!1274657 (= (extractMap!446 (toList!2757 lm!1707)) lt!1550054)))

(declare-fun b!4336467 () Bool)

(assert (=> b!4336467 (= e!2698313 (addToMapMapFromBucket!95 (_2!27254 (h!54183 (toList!2757 lm!1707))) (extractMap!446 (t!355720 (toList!2757 lm!1707)))))))

(declare-fun b!4336468 () Bool)

(assert (=> b!4336468 (= e!2698313 (ListMap!2002 Nil!48679))))

(assert (= (and d!1274657 c!737379) b!4336467))

(assert (= (and d!1274657 (not c!737379)) b!4336468))

(declare-fun m!4931949 () Bool)

(assert (=> d!1274657 m!4931949))

(declare-fun m!4931951 () Bool)

(assert (=> d!1274657 m!4931951))

(assert (=> b!4336467 m!4931787))

(assert (=> b!4336467 m!4931787))

(declare-fun m!4931953 () Bool)

(assert (=> b!4336467 m!4931953))

(assert (=> b!4336354 d!1274657))

(assert (=> b!4336344 d!1274635))

(assert (=> start!418284 d!1274643))

(declare-fun d!1274661 () Bool)

(assert (=> d!1274661 (= (inv!64221 lm!1707) (isStrictlySorted!55 (toList!2757 lm!1707)))))

(declare-fun bs!608876 () Bool)

(assert (= bs!608876 d!1274661))

(assert (=> bs!608876 m!4931893))

(assert (=> start!418284 d!1274661))

(declare-fun d!1274663 () Bool)

(assert (=> d!1274663 (eq!177 (addToMapMapFromBucket!95 lt!1549912 (+!445 lt!1549919 (tuple2!47919 key!3918 newValue!99))) (+!445 (addToMapMapFromBucket!95 lt!1549912 lt!1549919) (tuple2!47919 key!3918 newValue!99)))))

(declare-fun lt!1550106 () Unit!68665)

(declare-fun choose!26547 (ListMap!2001 K!10035 V!10281 List!48803) Unit!68665)

(assert (=> d!1274663 (= lt!1550106 (choose!26547 lt!1549919 key!3918 newValue!99 lt!1549912))))

(assert (=> d!1274663 (not (containsKey!538 lt!1549912 key!3918))))

(assert (=> d!1274663 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!6 lt!1549919 key!3918 newValue!99 lt!1549912) lt!1550106)))

(declare-fun bs!608908 () Bool)

(assert (= bs!608908 d!1274663))

(declare-fun m!4932007 () Bool)

(assert (=> bs!608908 m!4932007))

(declare-fun m!4932009 () Bool)

(assert (=> bs!608908 m!4932009))

(declare-fun m!4932011 () Bool)

(assert (=> bs!608908 m!4932011))

(declare-fun m!4932013 () Bool)

(assert (=> bs!608908 m!4932013))

(declare-fun m!4932015 () Bool)

(assert (=> bs!608908 m!4932015))

(declare-fun m!4932017 () Bool)

(assert (=> bs!608908 m!4932017))

(assert (=> bs!608908 m!4931783))

(assert (=> bs!608908 m!4932017))

(assert (=> bs!608908 m!4932007))

(assert (=> bs!608908 m!4931783))

(assert (=> bs!608908 m!4932009))

(assert (=> b!4336351 d!1274663))

(declare-fun bs!608969 () Bool)

(declare-fun b!4336604 () Bool)

(assert (= bs!608969 (and b!4336604 d!1274631)))

(declare-fun lambda!136080 () Int)

(assert (=> bs!608969 (not (= lambda!136080 lambda!135996))))

(assert (=> b!4336604 true))

(declare-fun bs!608970 () Bool)

(declare-fun b!4336607 () Bool)

(assert (= bs!608970 (and b!4336607 d!1274631)))

(declare-fun lambda!136081 () Int)

(assert (=> bs!608970 (not (= lambda!136081 lambda!135996))))

(declare-fun bs!608971 () Bool)

(assert (= bs!608971 (and b!4336607 b!4336604)))

(assert (=> bs!608971 (= lambda!136081 lambda!136080)))

(assert (=> b!4336607 true))

(declare-fun lambda!136082 () Int)

(assert (=> bs!608970 (not (= lambda!136082 lambda!135996))))

(declare-fun lt!1550252 () ListMap!2001)

(assert (=> bs!608971 (= (= lt!1550252 lt!1549919) (= lambda!136082 lambda!136080))))

(assert (=> b!4336607 (= (= lt!1550252 lt!1549919) (= lambda!136082 lambda!136081))))

(assert (=> b!4336607 true))

(declare-fun bs!608972 () Bool)

(declare-fun d!1274671 () Bool)

(assert (= bs!608972 (and d!1274671 d!1274631)))

(declare-fun lambda!136083 () Int)

(assert (=> bs!608972 (not (= lambda!136083 lambda!135996))))

(declare-fun bs!608973 () Bool)

(assert (= bs!608973 (and d!1274671 b!4336604)))

(declare-fun lt!1550237 () ListMap!2001)

(assert (=> bs!608973 (= (= lt!1550237 lt!1549919) (= lambda!136083 lambda!136080))))

(declare-fun bs!608974 () Bool)

(assert (= bs!608974 (and d!1274671 b!4336607)))

(assert (=> bs!608974 (= (= lt!1550237 lt!1549919) (= lambda!136083 lambda!136081))))

(assert (=> bs!608974 (= (= lt!1550237 lt!1550252) (= lambda!136083 lambda!136082))))

(assert (=> d!1274671 true))

(declare-fun e!2698407 () ListMap!2001)

(assert (=> b!4336604 (= e!2698407 lt!1549919)))

(declare-fun lt!1550244 () Unit!68665)

(declare-fun call!301377 () Unit!68665)

(assert (=> b!4336604 (= lt!1550244 call!301377)))

(declare-fun call!301378 () Bool)

(assert (=> b!4336604 call!301378))

(declare-fun lt!1550246 () Unit!68665)

(assert (=> b!4336604 (= lt!1550246 lt!1550244)))

(declare-fun call!301376 () Bool)

(assert (=> b!4336604 call!301376))

(declare-fun lt!1550245 () Unit!68665)

(declare-fun Unit!68703 () Unit!68665)

(assert (=> b!4336604 (= lt!1550245 Unit!68703)))

(declare-fun c!737408 () Bool)

(declare-fun bm!301371 () Bool)

(assert (=> bm!301371 (= call!301376 (forall!8959 (toList!2758 lt!1549919) (ite c!737408 lambda!136080 lambda!136082)))))

(declare-fun b!4336605 () Bool)

(declare-fun e!2698406 () Bool)

(assert (=> b!4336605 (= e!2698406 (invariantList!630 (toList!2758 lt!1550237)))))

(declare-fun b!4336606 () Bool)

(declare-fun res!1778786 () Bool)

(assert (=> b!4336606 (=> (not res!1778786) (not e!2698406))))

(assert (=> b!4336606 (= res!1778786 (forall!8959 (toList!2758 lt!1549919) lambda!136083))))

(assert (=> d!1274671 e!2698406))

(declare-fun res!1778785 () Bool)

(assert (=> d!1274671 (=> (not res!1778785) (not e!2698406))))

(assert (=> d!1274671 (= res!1778785 (forall!8959 lt!1549921 lambda!136083))))

(assert (=> d!1274671 (= lt!1550237 e!2698407)))

(assert (=> d!1274671 (= c!737408 ((_ is Nil!48679) lt!1549921))))

(assert (=> d!1274671 (noDuplicateKeys!387 lt!1549921)))

(assert (=> d!1274671 (= (addToMapMapFromBucket!95 lt!1549921 lt!1549919) lt!1550237)))

(declare-fun bm!301372 () Bool)

(assert (=> bm!301372 (= call!301378 (forall!8959 (ite c!737408 (toList!2758 lt!1549919) (t!355719 lt!1549921)) (ite c!737408 lambda!136080 lambda!136082)))))

(assert (=> b!4336607 (= e!2698407 lt!1550252)))

(declare-fun lt!1550238 () ListMap!2001)

(assert (=> b!4336607 (= lt!1550238 (+!445 lt!1549919 (h!54182 lt!1549921)))))

(assert (=> b!4336607 (= lt!1550252 (addToMapMapFromBucket!95 (t!355719 lt!1549921) (+!445 lt!1549919 (h!54182 lt!1549921))))))

(declare-fun lt!1550242 () Unit!68665)

(assert (=> b!4336607 (= lt!1550242 call!301377)))

(assert (=> b!4336607 (forall!8959 (toList!2758 lt!1549919) lambda!136081)))

(declare-fun lt!1550250 () Unit!68665)

(assert (=> b!4336607 (= lt!1550250 lt!1550242)))

(assert (=> b!4336607 (forall!8959 (toList!2758 lt!1550238) lambda!136082)))

(declare-fun lt!1550236 () Unit!68665)

(declare-fun Unit!68712 () Unit!68665)

(assert (=> b!4336607 (= lt!1550236 Unit!68712)))

(assert (=> b!4336607 call!301378))

(declare-fun lt!1550243 () Unit!68665)

(declare-fun Unit!68713 () Unit!68665)

(assert (=> b!4336607 (= lt!1550243 Unit!68713)))

(declare-fun lt!1550249 () Unit!68665)

(declare-fun Unit!68714 () Unit!68665)

(assert (=> b!4336607 (= lt!1550249 Unit!68714)))

(declare-fun lt!1550254 () Unit!68665)

(declare-fun forallContained!1609 (List!48803 Int tuple2!47918) Unit!68665)

(assert (=> b!4336607 (= lt!1550254 (forallContained!1609 (toList!2758 lt!1550238) lambda!136082 (h!54182 lt!1549921)))))

(assert (=> b!4336607 (contains!10744 lt!1550238 (_1!27253 (h!54182 lt!1549921)))))

(declare-fun lt!1550247 () Unit!68665)

(declare-fun Unit!68716 () Unit!68665)

(assert (=> b!4336607 (= lt!1550247 Unit!68716)))

(assert (=> b!4336607 (contains!10744 lt!1550252 (_1!27253 (h!54182 lt!1549921)))))

(declare-fun lt!1550235 () Unit!68665)

(declare-fun Unit!68717 () Unit!68665)

(assert (=> b!4336607 (= lt!1550235 Unit!68717)))

(assert (=> b!4336607 (forall!8959 lt!1549921 lambda!136082)))

(declare-fun lt!1550248 () Unit!68665)

(declare-fun Unit!68719 () Unit!68665)

(assert (=> b!4336607 (= lt!1550248 Unit!68719)))

(assert (=> b!4336607 (forall!8959 (toList!2758 lt!1550238) lambda!136082)))

(declare-fun lt!1550239 () Unit!68665)

(declare-fun Unit!68720 () Unit!68665)

(assert (=> b!4336607 (= lt!1550239 Unit!68720)))

(declare-fun lt!1550240 () Unit!68665)

(declare-fun Unit!68721 () Unit!68665)

(assert (=> b!4336607 (= lt!1550240 Unit!68721)))

(declare-fun lt!1550251 () Unit!68665)

(declare-fun addForallContainsKeyThenBeforeAdding!23 (ListMap!2001 ListMap!2001 K!10035 V!10281) Unit!68665)

(assert (=> b!4336607 (= lt!1550251 (addForallContainsKeyThenBeforeAdding!23 lt!1549919 lt!1550252 (_1!27253 (h!54182 lt!1549921)) (_2!27253 (h!54182 lt!1549921))))))

(assert (=> b!4336607 (forall!8959 (toList!2758 lt!1549919) lambda!136082)))

(declare-fun lt!1550255 () Unit!68665)

(assert (=> b!4336607 (= lt!1550255 lt!1550251)))

(assert (=> b!4336607 (forall!8959 (toList!2758 lt!1549919) lambda!136082)))

(declare-fun lt!1550241 () Unit!68665)

(declare-fun Unit!68722 () Unit!68665)

(assert (=> b!4336607 (= lt!1550241 Unit!68722)))

(declare-fun res!1778787 () Bool)

(assert (=> b!4336607 (= res!1778787 (forall!8959 lt!1549921 lambda!136082))))

(declare-fun e!2698405 () Bool)

(assert (=> b!4336607 (=> (not res!1778787) (not e!2698405))))

(assert (=> b!4336607 e!2698405))

(declare-fun lt!1550253 () Unit!68665)

(declare-fun Unit!68723 () Unit!68665)

(assert (=> b!4336607 (= lt!1550253 Unit!68723)))

(declare-fun b!4336608 () Bool)

(assert (=> b!4336608 (= e!2698405 call!301376)))

(declare-fun bm!301373 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!23 (ListMap!2001) Unit!68665)

(assert (=> bm!301373 (= call!301377 (lemmaContainsAllItsOwnKeys!23 lt!1549919))))

(assert (= (and d!1274671 c!737408) b!4336604))

(assert (= (and d!1274671 (not c!737408)) b!4336607))

(assert (= (and b!4336607 res!1778787) b!4336608))

(assert (= (or b!4336604 b!4336607) bm!301373))

(assert (= (or b!4336604 b!4336608) bm!301371))

(assert (= (or b!4336604 b!4336607) bm!301372))

(assert (= (and d!1274671 res!1778785) b!4336606))

(assert (= (and b!4336606 res!1778786) b!4336605))

(declare-fun m!4932195 () Bool)

(assert (=> bm!301371 m!4932195))

(declare-fun m!4932197 () Bool)

(assert (=> d!1274671 m!4932197))

(declare-fun m!4932199 () Bool)

(assert (=> d!1274671 m!4932199))

(declare-fun m!4932201 () Bool)

(assert (=> bm!301372 m!4932201))

(declare-fun m!4932203 () Bool)

(assert (=> bm!301373 m!4932203))

(declare-fun m!4932205 () Bool)

(assert (=> b!4336605 m!4932205))

(declare-fun m!4932207 () Bool)

(assert (=> b!4336606 m!4932207))

(declare-fun m!4932209 () Bool)

(assert (=> b!4336607 m!4932209))

(declare-fun m!4932211 () Bool)

(assert (=> b!4336607 m!4932211))

(declare-fun m!4932213 () Bool)

(assert (=> b!4336607 m!4932213))

(declare-fun m!4932215 () Bool)

(assert (=> b!4336607 m!4932215))

(declare-fun m!4932217 () Bool)

(assert (=> b!4336607 m!4932217))

(assert (=> b!4336607 m!4932217))

(declare-fun m!4932219 () Bool)

(assert (=> b!4336607 m!4932219))

(declare-fun m!4932221 () Bool)

(assert (=> b!4336607 m!4932221))

(declare-fun m!4932223 () Bool)

(assert (=> b!4336607 m!4932223))

(declare-fun m!4932225 () Bool)

(assert (=> b!4336607 m!4932225))

(assert (=> b!4336607 m!4932225))

(declare-fun m!4932227 () Bool)

(assert (=> b!4336607 m!4932227))

(assert (=> b!4336607 m!4932213))

(assert (=> b!4336607 m!4932219))

(assert (=> b!4336351 d!1274671))

(declare-fun bs!608975 () Bool)

(declare-fun b!4336611 () Bool)

(assert (= bs!608975 (and b!4336611 d!1274671)))

(declare-fun lambda!136084 () Int)

(assert (=> bs!608975 (= (= (+!445 lt!1549919 lt!1549913) lt!1550237) (= lambda!136084 lambda!136083))))

(declare-fun bs!608976 () Bool)

(assert (= bs!608976 (and b!4336611 b!4336604)))

(assert (=> bs!608976 (= (= (+!445 lt!1549919 lt!1549913) lt!1549919) (= lambda!136084 lambda!136080))))

(declare-fun bs!608977 () Bool)

(assert (= bs!608977 (and b!4336611 d!1274631)))

(assert (=> bs!608977 (not (= lambda!136084 lambda!135996))))

(declare-fun bs!608978 () Bool)

(assert (= bs!608978 (and b!4336611 b!4336607)))

(assert (=> bs!608978 (= (= (+!445 lt!1549919 lt!1549913) lt!1549919) (= lambda!136084 lambda!136081))))

(assert (=> bs!608978 (= (= (+!445 lt!1549919 lt!1549913) lt!1550252) (= lambda!136084 lambda!136082))))

(assert (=> b!4336611 true))

(declare-fun bs!608979 () Bool)

(declare-fun b!4336614 () Bool)

(assert (= bs!608979 (and b!4336614 d!1274671)))

(declare-fun lambda!136085 () Int)

(assert (=> bs!608979 (= (= (+!445 lt!1549919 lt!1549913) lt!1550237) (= lambda!136085 lambda!136083))))

(declare-fun bs!608980 () Bool)

(assert (= bs!608980 (and b!4336614 b!4336611)))

(assert (=> bs!608980 (= lambda!136085 lambda!136084)))

(declare-fun bs!608981 () Bool)

(assert (= bs!608981 (and b!4336614 b!4336604)))

(assert (=> bs!608981 (= (= (+!445 lt!1549919 lt!1549913) lt!1549919) (= lambda!136085 lambda!136080))))

(declare-fun bs!608982 () Bool)

(assert (= bs!608982 (and b!4336614 d!1274631)))

(assert (=> bs!608982 (not (= lambda!136085 lambda!135996))))

(declare-fun bs!608983 () Bool)

(assert (= bs!608983 (and b!4336614 b!4336607)))

(assert (=> bs!608983 (= (= (+!445 lt!1549919 lt!1549913) lt!1549919) (= lambda!136085 lambda!136081))))

(assert (=> bs!608983 (= (= (+!445 lt!1549919 lt!1549913) lt!1550252) (= lambda!136085 lambda!136082))))

(assert (=> b!4336614 true))

(declare-fun lt!1550273 () ListMap!2001)

(declare-fun lambda!136086 () Int)

(assert (=> bs!608979 (= (= lt!1550273 lt!1550237) (= lambda!136086 lambda!136083))))

(assert (=> bs!608980 (= (= lt!1550273 (+!445 lt!1549919 lt!1549913)) (= lambda!136086 lambda!136084))))

(assert (=> bs!608981 (= (= lt!1550273 lt!1549919) (= lambda!136086 lambda!136080))))

(assert (=> bs!608982 (not (= lambda!136086 lambda!135996))))

(assert (=> bs!608983 (= (= lt!1550273 lt!1549919) (= lambda!136086 lambda!136081))))

(assert (=> b!4336614 (= (= lt!1550273 (+!445 lt!1549919 lt!1549913)) (= lambda!136086 lambda!136085))))

(assert (=> bs!608983 (= (= lt!1550273 lt!1550252) (= lambda!136086 lambda!136082))))

(assert (=> b!4336614 true))

(declare-fun bs!608984 () Bool)

(declare-fun d!1274721 () Bool)

(assert (= bs!608984 (and d!1274721 d!1274671)))

(declare-fun lambda!136087 () Int)

(declare-fun lt!1550258 () ListMap!2001)

(assert (=> bs!608984 (= (= lt!1550258 lt!1550237) (= lambda!136087 lambda!136083))))

(declare-fun bs!608985 () Bool)

(assert (= bs!608985 (and d!1274721 b!4336611)))

(assert (=> bs!608985 (= (= lt!1550258 (+!445 lt!1549919 lt!1549913)) (= lambda!136087 lambda!136084))))

(declare-fun bs!608986 () Bool)

(assert (= bs!608986 (and d!1274721 b!4336604)))

(assert (=> bs!608986 (= (= lt!1550258 lt!1549919) (= lambda!136087 lambda!136080))))

(declare-fun bs!608987 () Bool)

(assert (= bs!608987 (and d!1274721 b!4336607)))

(assert (=> bs!608987 (= (= lt!1550258 lt!1549919) (= lambda!136087 lambda!136081))))

(declare-fun bs!608988 () Bool)

(assert (= bs!608988 (and d!1274721 b!4336614)))

(assert (=> bs!608988 (= (= lt!1550258 (+!445 lt!1549919 lt!1549913)) (= lambda!136087 lambda!136085))))

(assert (=> bs!608987 (= (= lt!1550258 lt!1550252) (= lambda!136087 lambda!136082))))

(declare-fun bs!608989 () Bool)

(assert (= bs!608989 (and d!1274721 d!1274631)))

(assert (=> bs!608989 (not (= lambda!136087 lambda!135996))))

(assert (=> bs!608988 (= (= lt!1550258 lt!1550273) (= lambda!136087 lambda!136086))))

(assert (=> d!1274721 true))

(declare-fun e!2698410 () ListMap!2001)

(assert (=> b!4336611 (= e!2698410 (+!445 lt!1549919 lt!1549913))))

(declare-fun lt!1550265 () Unit!68665)

(declare-fun call!301380 () Unit!68665)

(assert (=> b!4336611 (= lt!1550265 call!301380)))

(declare-fun call!301381 () Bool)

(assert (=> b!4336611 call!301381))

(declare-fun lt!1550267 () Unit!68665)

(assert (=> b!4336611 (= lt!1550267 lt!1550265)))

(declare-fun call!301379 () Bool)

(assert (=> b!4336611 call!301379))

(declare-fun lt!1550266 () Unit!68665)

(declare-fun Unit!68724 () Unit!68665)

(assert (=> b!4336611 (= lt!1550266 Unit!68724)))

(declare-fun bm!301374 () Bool)

(declare-fun c!737409 () Bool)

(assert (=> bm!301374 (= call!301379 (forall!8959 (toList!2758 (+!445 lt!1549919 lt!1549913)) (ite c!737409 lambda!136084 lambda!136086)))))

(declare-fun b!4336612 () Bool)

(declare-fun e!2698409 () Bool)

(assert (=> b!4336612 (= e!2698409 (invariantList!630 (toList!2758 lt!1550258)))))

(declare-fun b!4336613 () Bool)

(declare-fun res!1778789 () Bool)

(assert (=> b!4336613 (=> (not res!1778789) (not e!2698409))))

(assert (=> b!4336613 (= res!1778789 (forall!8959 (toList!2758 (+!445 lt!1549919 lt!1549913)) lambda!136087))))

(assert (=> d!1274721 e!2698409))

(declare-fun res!1778788 () Bool)

(assert (=> d!1274721 (=> (not res!1778788) (not e!2698409))))

(assert (=> d!1274721 (= res!1778788 (forall!8959 lt!1549912 lambda!136087))))

(assert (=> d!1274721 (= lt!1550258 e!2698410)))

(assert (=> d!1274721 (= c!737409 ((_ is Nil!48679) lt!1549912))))

(assert (=> d!1274721 (noDuplicateKeys!387 lt!1549912)))

(assert (=> d!1274721 (= (addToMapMapFromBucket!95 lt!1549912 (+!445 lt!1549919 lt!1549913)) lt!1550258)))

(declare-fun bm!301375 () Bool)

(assert (=> bm!301375 (= call!301381 (forall!8959 (ite c!737409 (toList!2758 (+!445 lt!1549919 lt!1549913)) (t!355719 lt!1549912)) (ite c!737409 lambda!136084 lambda!136086)))))

(assert (=> b!4336614 (= e!2698410 lt!1550273)))

(declare-fun lt!1550259 () ListMap!2001)

(assert (=> b!4336614 (= lt!1550259 (+!445 (+!445 lt!1549919 lt!1549913) (h!54182 lt!1549912)))))

(assert (=> b!4336614 (= lt!1550273 (addToMapMapFromBucket!95 (t!355719 lt!1549912) (+!445 (+!445 lt!1549919 lt!1549913) (h!54182 lt!1549912))))))

(declare-fun lt!1550263 () Unit!68665)

(assert (=> b!4336614 (= lt!1550263 call!301380)))

(assert (=> b!4336614 (forall!8959 (toList!2758 (+!445 lt!1549919 lt!1549913)) lambda!136085)))

(declare-fun lt!1550271 () Unit!68665)

(assert (=> b!4336614 (= lt!1550271 lt!1550263)))

(assert (=> b!4336614 (forall!8959 (toList!2758 lt!1550259) lambda!136086)))

(declare-fun lt!1550257 () Unit!68665)

(declare-fun Unit!68725 () Unit!68665)

(assert (=> b!4336614 (= lt!1550257 Unit!68725)))

(assert (=> b!4336614 call!301381))

(declare-fun lt!1550264 () Unit!68665)

(declare-fun Unit!68726 () Unit!68665)

(assert (=> b!4336614 (= lt!1550264 Unit!68726)))

(declare-fun lt!1550270 () Unit!68665)

(declare-fun Unit!68727 () Unit!68665)

(assert (=> b!4336614 (= lt!1550270 Unit!68727)))

(declare-fun lt!1550275 () Unit!68665)

(assert (=> b!4336614 (= lt!1550275 (forallContained!1609 (toList!2758 lt!1550259) lambda!136086 (h!54182 lt!1549912)))))

(assert (=> b!4336614 (contains!10744 lt!1550259 (_1!27253 (h!54182 lt!1549912)))))

(declare-fun lt!1550268 () Unit!68665)

(declare-fun Unit!68728 () Unit!68665)

(assert (=> b!4336614 (= lt!1550268 Unit!68728)))

(assert (=> b!4336614 (contains!10744 lt!1550273 (_1!27253 (h!54182 lt!1549912)))))

(declare-fun lt!1550256 () Unit!68665)

(declare-fun Unit!68729 () Unit!68665)

(assert (=> b!4336614 (= lt!1550256 Unit!68729)))

(assert (=> b!4336614 (forall!8959 lt!1549912 lambda!136086)))

(declare-fun lt!1550269 () Unit!68665)

(declare-fun Unit!68730 () Unit!68665)

(assert (=> b!4336614 (= lt!1550269 Unit!68730)))

(assert (=> b!4336614 (forall!8959 (toList!2758 lt!1550259) lambda!136086)))

(declare-fun lt!1550260 () Unit!68665)

(declare-fun Unit!68731 () Unit!68665)

(assert (=> b!4336614 (= lt!1550260 Unit!68731)))

(declare-fun lt!1550261 () Unit!68665)

(declare-fun Unit!68732 () Unit!68665)

(assert (=> b!4336614 (= lt!1550261 Unit!68732)))

(declare-fun lt!1550272 () Unit!68665)

(assert (=> b!4336614 (= lt!1550272 (addForallContainsKeyThenBeforeAdding!23 (+!445 lt!1549919 lt!1549913) lt!1550273 (_1!27253 (h!54182 lt!1549912)) (_2!27253 (h!54182 lt!1549912))))))

(assert (=> b!4336614 (forall!8959 (toList!2758 (+!445 lt!1549919 lt!1549913)) lambda!136086)))

(declare-fun lt!1550276 () Unit!68665)

(assert (=> b!4336614 (= lt!1550276 lt!1550272)))

(assert (=> b!4336614 (forall!8959 (toList!2758 (+!445 lt!1549919 lt!1549913)) lambda!136086)))

(declare-fun lt!1550262 () Unit!68665)

(declare-fun Unit!68733 () Unit!68665)

(assert (=> b!4336614 (= lt!1550262 Unit!68733)))

(declare-fun res!1778790 () Bool)

(assert (=> b!4336614 (= res!1778790 (forall!8959 lt!1549912 lambda!136086))))

(declare-fun e!2698408 () Bool)

(assert (=> b!4336614 (=> (not res!1778790) (not e!2698408))))

(assert (=> b!4336614 e!2698408))

(declare-fun lt!1550274 () Unit!68665)

(declare-fun Unit!68734 () Unit!68665)

(assert (=> b!4336614 (= lt!1550274 Unit!68734)))

(declare-fun b!4336615 () Bool)

(assert (=> b!4336615 (= e!2698408 call!301379)))

(declare-fun bm!301376 () Bool)

(assert (=> bm!301376 (= call!301380 (lemmaContainsAllItsOwnKeys!23 (+!445 lt!1549919 lt!1549913)))))

(assert (= (and d!1274721 c!737409) b!4336611))

(assert (= (and d!1274721 (not c!737409)) b!4336614))

(assert (= (and b!4336614 res!1778790) b!4336615))

(assert (= (or b!4336611 b!4336614) bm!301376))

(assert (= (or b!4336611 b!4336615) bm!301374))

(assert (= (or b!4336611 b!4336614) bm!301375))

(assert (= (and d!1274721 res!1778788) b!4336613))

(assert (= (and b!4336613 res!1778789) b!4336612))

(declare-fun m!4932229 () Bool)

(assert (=> bm!301374 m!4932229))

(declare-fun m!4932231 () Bool)

(assert (=> d!1274721 m!4932231))

(declare-fun m!4932233 () Bool)

(assert (=> d!1274721 m!4932233))

(declare-fun m!4932235 () Bool)

(assert (=> bm!301375 m!4932235))

(assert (=> bm!301376 m!4931785))

(declare-fun m!4932237 () Bool)

(assert (=> bm!301376 m!4932237))

(declare-fun m!4932239 () Bool)

(assert (=> b!4336612 m!4932239))

(declare-fun m!4932241 () Bool)

(assert (=> b!4336613 m!4932241))

(declare-fun m!4932243 () Bool)

(assert (=> b!4336614 m!4932243))

(declare-fun m!4932245 () Bool)

(assert (=> b!4336614 m!4932245))

(declare-fun m!4932247 () Bool)

(assert (=> b!4336614 m!4932247))

(declare-fun m!4932249 () Bool)

(assert (=> b!4336614 m!4932249))

(declare-fun m!4932251 () Bool)

(assert (=> b!4336614 m!4932251))

(assert (=> b!4336614 m!4932251))

(declare-fun m!4932253 () Bool)

(assert (=> b!4336614 m!4932253))

(declare-fun m!4932255 () Bool)

(assert (=> b!4336614 m!4932255))

(declare-fun m!4932257 () Bool)

(assert (=> b!4336614 m!4932257))

(declare-fun m!4932259 () Bool)

(assert (=> b!4336614 m!4932259))

(assert (=> b!4336614 m!4932259))

(assert (=> b!4336614 m!4931785))

(declare-fun m!4932261 () Bool)

(assert (=> b!4336614 m!4932261))

(assert (=> b!4336614 m!4931785))

(assert (=> b!4336614 m!4932247))

(assert (=> b!4336614 m!4932253))

(assert (=> b!4336351 d!1274721))

(declare-fun bs!608990 () Bool)

(declare-fun b!4336616 () Bool)

(assert (= bs!608990 (and b!4336616 d!1274671)))

(declare-fun lambda!136088 () Int)

(assert (=> bs!608990 (= (= lt!1549919 lt!1550237) (= lambda!136088 lambda!136083))))

(declare-fun bs!608991 () Bool)

(assert (= bs!608991 (and b!4336616 b!4336611)))

(assert (=> bs!608991 (= (= lt!1549919 (+!445 lt!1549919 lt!1549913)) (= lambda!136088 lambda!136084))))

(declare-fun bs!608992 () Bool)

(assert (= bs!608992 (and b!4336616 b!4336604)))

(assert (=> bs!608992 (= lambda!136088 lambda!136080)))

(declare-fun bs!608993 () Bool)

(assert (= bs!608993 (and b!4336616 b!4336607)))

(assert (=> bs!608993 (= lambda!136088 lambda!136081)))

(declare-fun bs!608994 () Bool)

(assert (= bs!608994 (and b!4336616 b!4336614)))

(assert (=> bs!608994 (= (= lt!1549919 (+!445 lt!1549919 lt!1549913)) (= lambda!136088 lambda!136085))))

(assert (=> bs!608993 (= (= lt!1549919 lt!1550252) (= lambda!136088 lambda!136082))))

(declare-fun bs!608995 () Bool)

(assert (= bs!608995 (and b!4336616 d!1274631)))

(assert (=> bs!608995 (not (= lambda!136088 lambda!135996))))

(declare-fun bs!608996 () Bool)

(assert (= bs!608996 (and b!4336616 d!1274721)))

(assert (=> bs!608996 (= (= lt!1549919 lt!1550258) (= lambda!136088 lambda!136087))))

(assert (=> bs!608994 (= (= lt!1549919 lt!1550273) (= lambda!136088 lambda!136086))))

(assert (=> b!4336616 true))

(declare-fun bs!608997 () Bool)

(declare-fun b!4336619 () Bool)

(assert (= bs!608997 (and b!4336619 b!4336616)))

(declare-fun lambda!136089 () Int)

(assert (=> bs!608997 (= lambda!136089 lambda!136088)))

(declare-fun bs!608998 () Bool)

(assert (= bs!608998 (and b!4336619 d!1274671)))

(assert (=> bs!608998 (= (= lt!1549919 lt!1550237) (= lambda!136089 lambda!136083))))

(declare-fun bs!608999 () Bool)

(assert (= bs!608999 (and b!4336619 b!4336611)))

(assert (=> bs!608999 (= (= lt!1549919 (+!445 lt!1549919 lt!1549913)) (= lambda!136089 lambda!136084))))

(declare-fun bs!609000 () Bool)

(assert (= bs!609000 (and b!4336619 b!4336604)))

(assert (=> bs!609000 (= lambda!136089 lambda!136080)))

(declare-fun bs!609001 () Bool)

(assert (= bs!609001 (and b!4336619 b!4336607)))

(assert (=> bs!609001 (= lambda!136089 lambda!136081)))

(declare-fun bs!609002 () Bool)

(assert (= bs!609002 (and b!4336619 b!4336614)))

(assert (=> bs!609002 (= (= lt!1549919 (+!445 lt!1549919 lt!1549913)) (= lambda!136089 lambda!136085))))

(assert (=> bs!609001 (= (= lt!1549919 lt!1550252) (= lambda!136089 lambda!136082))))

(declare-fun bs!609003 () Bool)

(assert (= bs!609003 (and b!4336619 d!1274631)))

(assert (=> bs!609003 (not (= lambda!136089 lambda!135996))))

(declare-fun bs!609004 () Bool)

(assert (= bs!609004 (and b!4336619 d!1274721)))

(assert (=> bs!609004 (= (= lt!1549919 lt!1550258) (= lambda!136089 lambda!136087))))

(assert (=> bs!609002 (= (= lt!1549919 lt!1550273) (= lambda!136089 lambda!136086))))

(assert (=> b!4336619 true))

(declare-fun lambda!136090 () Int)

(declare-fun lt!1550294 () ListMap!2001)

(assert (=> bs!608997 (= (= lt!1550294 lt!1549919) (= lambda!136090 lambda!136088))))

(assert (=> bs!608999 (= (= lt!1550294 (+!445 lt!1549919 lt!1549913)) (= lambda!136090 lambda!136084))))

(assert (=> bs!609000 (= (= lt!1550294 lt!1549919) (= lambda!136090 lambda!136080))))

(assert (=> bs!609001 (= (= lt!1550294 lt!1549919) (= lambda!136090 lambda!136081))))

(assert (=> bs!609002 (= (= lt!1550294 (+!445 lt!1549919 lt!1549913)) (= lambda!136090 lambda!136085))))

(assert (=> bs!609001 (= (= lt!1550294 lt!1550252) (= lambda!136090 lambda!136082))))

(assert (=> b!4336619 (= (= lt!1550294 lt!1549919) (= lambda!136090 lambda!136089))))

(assert (=> bs!608998 (= (= lt!1550294 lt!1550237) (= lambda!136090 lambda!136083))))

(assert (=> bs!609003 (not (= lambda!136090 lambda!135996))))

(assert (=> bs!609004 (= (= lt!1550294 lt!1550258) (= lambda!136090 lambda!136087))))

(assert (=> bs!609002 (= (= lt!1550294 lt!1550273) (= lambda!136090 lambda!136086))))

(assert (=> b!4336619 true))

(declare-fun bs!609005 () Bool)

(declare-fun d!1274723 () Bool)

(assert (= bs!609005 (and d!1274723 b!4336616)))

(declare-fun lambda!136091 () Int)

(declare-fun lt!1550279 () ListMap!2001)

(assert (=> bs!609005 (= (= lt!1550279 lt!1549919) (= lambda!136091 lambda!136088))))

(declare-fun bs!609006 () Bool)

(assert (= bs!609006 (and d!1274723 b!4336619)))

(assert (=> bs!609006 (= (= lt!1550279 lt!1550294) (= lambda!136091 lambda!136090))))

(declare-fun bs!609007 () Bool)

(assert (= bs!609007 (and d!1274723 b!4336611)))

(assert (=> bs!609007 (= (= lt!1550279 (+!445 lt!1549919 lt!1549913)) (= lambda!136091 lambda!136084))))

(declare-fun bs!609008 () Bool)

(assert (= bs!609008 (and d!1274723 b!4336604)))

(assert (=> bs!609008 (= (= lt!1550279 lt!1549919) (= lambda!136091 lambda!136080))))

(declare-fun bs!609009 () Bool)

(assert (= bs!609009 (and d!1274723 b!4336607)))

(assert (=> bs!609009 (= (= lt!1550279 lt!1549919) (= lambda!136091 lambda!136081))))

(declare-fun bs!609010 () Bool)

(assert (= bs!609010 (and d!1274723 b!4336614)))

(assert (=> bs!609010 (= (= lt!1550279 (+!445 lt!1549919 lt!1549913)) (= lambda!136091 lambda!136085))))

(assert (=> bs!609009 (= (= lt!1550279 lt!1550252) (= lambda!136091 lambda!136082))))

(assert (=> bs!609006 (= (= lt!1550279 lt!1549919) (= lambda!136091 lambda!136089))))

(declare-fun bs!609011 () Bool)

(assert (= bs!609011 (and d!1274723 d!1274671)))

(assert (=> bs!609011 (= (= lt!1550279 lt!1550237) (= lambda!136091 lambda!136083))))

(declare-fun bs!609012 () Bool)

(assert (= bs!609012 (and d!1274723 d!1274631)))

(assert (=> bs!609012 (not (= lambda!136091 lambda!135996))))

(declare-fun bs!609013 () Bool)

(assert (= bs!609013 (and d!1274723 d!1274721)))

(assert (=> bs!609013 (= (= lt!1550279 lt!1550258) (= lambda!136091 lambda!136087))))

(assert (=> bs!609010 (= (= lt!1550279 lt!1550273) (= lambda!136091 lambda!136086))))

(assert (=> d!1274723 true))

(declare-fun e!2698413 () ListMap!2001)

(assert (=> b!4336616 (= e!2698413 lt!1549919)))

(declare-fun lt!1550286 () Unit!68665)

(declare-fun call!301383 () Unit!68665)

(assert (=> b!4336616 (= lt!1550286 call!301383)))

(declare-fun call!301384 () Bool)

(assert (=> b!4336616 call!301384))

(declare-fun lt!1550288 () Unit!68665)

(assert (=> b!4336616 (= lt!1550288 lt!1550286)))

(declare-fun call!301382 () Bool)

(assert (=> b!4336616 call!301382))

(declare-fun lt!1550287 () Unit!68665)

(declare-fun Unit!68737 () Unit!68665)

(assert (=> b!4336616 (= lt!1550287 Unit!68737)))

(declare-fun c!737410 () Bool)

(declare-fun bm!301377 () Bool)

(assert (=> bm!301377 (= call!301382 (forall!8959 (toList!2758 lt!1549919) (ite c!737410 lambda!136088 lambda!136090)))))

(declare-fun b!4336617 () Bool)

(declare-fun e!2698412 () Bool)

(assert (=> b!4336617 (= e!2698412 (invariantList!630 (toList!2758 lt!1550279)))))

(declare-fun b!4336618 () Bool)

(declare-fun res!1778792 () Bool)

(assert (=> b!4336618 (=> (not res!1778792) (not e!2698412))))

(assert (=> b!4336618 (= res!1778792 (forall!8959 (toList!2758 lt!1549919) lambda!136091))))

(assert (=> d!1274723 e!2698412))

(declare-fun res!1778791 () Bool)

(assert (=> d!1274723 (=> (not res!1778791) (not e!2698412))))

(assert (=> d!1274723 (= res!1778791 (forall!8959 lt!1549912 lambda!136091))))

(assert (=> d!1274723 (= lt!1550279 e!2698413)))

(assert (=> d!1274723 (= c!737410 ((_ is Nil!48679) lt!1549912))))

(assert (=> d!1274723 (noDuplicateKeys!387 lt!1549912)))

(assert (=> d!1274723 (= (addToMapMapFromBucket!95 lt!1549912 lt!1549919) lt!1550279)))

(declare-fun bm!301378 () Bool)

(assert (=> bm!301378 (= call!301384 (forall!8959 (ite c!737410 (toList!2758 lt!1549919) (t!355719 lt!1549912)) (ite c!737410 lambda!136088 lambda!136090)))))

(assert (=> b!4336619 (= e!2698413 lt!1550294)))

(declare-fun lt!1550280 () ListMap!2001)

(assert (=> b!4336619 (= lt!1550280 (+!445 lt!1549919 (h!54182 lt!1549912)))))

(assert (=> b!4336619 (= lt!1550294 (addToMapMapFromBucket!95 (t!355719 lt!1549912) (+!445 lt!1549919 (h!54182 lt!1549912))))))

(declare-fun lt!1550284 () Unit!68665)

(assert (=> b!4336619 (= lt!1550284 call!301383)))

(assert (=> b!4336619 (forall!8959 (toList!2758 lt!1549919) lambda!136089)))

(declare-fun lt!1550292 () Unit!68665)

(assert (=> b!4336619 (= lt!1550292 lt!1550284)))

(assert (=> b!4336619 (forall!8959 (toList!2758 lt!1550280) lambda!136090)))

(declare-fun lt!1550278 () Unit!68665)

(declare-fun Unit!68739 () Unit!68665)

(assert (=> b!4336619 (= lt!1550278 Unit!68739)))

(assert (=> b!4336619 call!301384))

(declare-fun lt!1550285 () Unit!68665)

(declare-fun Unit!68740 () Unit!68665)

(assert (=> b!4336619 (= lt!1550285 Unit!68740)))

(declare-fun lt!1550291 () Unit!68665)

(declare-fun Unit!68741 () Unit!68665)

(assert (=> b!4336619 (= lt!1550291 Unit!68741)))

(declare-fun lt!1550296 () Unit!68665)

(assert (=> b!4336619 (= lt!1550296 (forallContained!1609 (toList!2758 lt!1550280) lambda!136090 (h!54182 lt!1549912)))))

(assert (=> b!4336619 (contains!10744 lt!1550280 (_1!27253 (h!54182 lt!1549912)))))

(declare-fun lt!1550289 () Unit!68665)

(declare-fun Unit!68742 () Unit!68665)

(assert (=> b!4336619 (= lt!1550289 Unit!68742)))

(assert (=> b!4336619 (contains!10744 lt!1550294 (_1!27253 (h!54182 lt!1549912)))))

(declare-fun lt!1550277 () Unit!68665)

(declare-fun Unit!68743 () Unit!68665)

(assert (=> b!4336619 (= lt!1550277 Unit!68743)))

(assert (=> b!4336619 (forall!8959 lt!1549912 lambda!136090)))

(declare-fun lt!1550290 () Unit!68665)

(declare-fun Unit!68744 () Unit!68665)

(assert (=> b!4336619 (= lt!1550290 Unit!68744)))

(assert (=> b!4336619 (forall!8959 (toList!2758 lt!1550280) lambda!136090)))

(declare-fun lt!1550281 () Unit!68665)

(declare-fun Unit!68745 () Unit!68665)

(assert (=> b!4336619 (= lt!1550281 Unit!68745)))

(declare-fun lt!1550282 () Unit!68665)

(declare-fun Unit!68746 () Unit!68665)

(assert (=> b!4336619 (= lt!1550282 Unit!68746)))

(declare-fun lt!1550293 () Unit!68665)

(assert (=> b!4336619 (= lt!1550293 (addForallContainsKeyThenBeforeAdding!23 lt!1549919 lt!1550294 (_1!27253 (h!54182 lt!1549912)) (_2!27253 (h!54182 lt!1549912))))))

(assert (=> b!4336619 (forall!8959 (toList!2758 lt!1549919) lambda!136090)))

(declare-fun lt!1550297 () Unit!68665)

(assert (=> b!4336619 (= lt!1550297 lt!1550293)))

(assert (=> b!4336619 (forall!8959 (toList!2758 lt!1549919) lambda!136090)))

(declare-fun lt!1550283 () Unit!68665)

(declare-fun Unit!68747 () Unit!68665)

(assert (=> b!4336619 (= lt!1550283 Unit!68747)))

(declare-fun res!1778793 () Bool)

(assert (=> b!4336619 (= res!1778793 (forall!8959 lt!1549912 lambda!136090))))

(declare-fun e!2698411 () Bool)

(assert (=> b!4336619 (=> (not res!1778793) (not e!2698411))))

(assert (=> b!4336619 e!2698411))

(declare-fun lt!1550295 () Unit!68665)

(declare-fun Unit!68748 () Unit!68665)

(assert (=> b!4336619 (= lt!1550295 Unit!68748)))

(declare-fun b!4336620 () Bool)

(assert (=> b!4336620 (= e!2698411 call!301382)))

(declare-fun bm!301379 () Bool)

(assert (=> bm!301379 (= call!301383 (lemmaContainsAllItsOwnKeys!23 lt!1549919))))

(assert (= (and d!1274723 c!737410) b!4336616))

(assert (= (and d!1274723 (not c!737410)) b!4336619))

(assert (= (and b!4336619 res!1778793) b!4336620))

(assert (= (or b!4336616 b!4336619) bm!301379))

(assert (= (or b!4336616 b!4336620) bm!301377))

(assert (= (or b!4336616 b!4336619) bm!301378))

(assert (= (and d!1274723 res!1778791) b!4336618))

(assert (= (and b!4336618 res!1778792) b!4336617))

(declare-fun m!4932263 () Bool)

(assert (=> bm!301377 m!4932263))

(declare-fun m!4932265 () Bool)

(assert (=> d!1274723 m!4932265))

(assert (=> d!1274723 m!4932233))

(declare-fun m!4932267 () Bool)

(assert (=> bm!301378 m!4932267))

(assert (=> bm!301379 m!4932203))

(declare-fun m!4932269 () Bool)

(assert (=> b!4336617 m!4932269))

(declare-fun m!4932271 () Bool)

(assert (=> b!4336618 m!4932271))

(declare-fun m!4932273 () Bool)

(assert (=> b!4336619 m!4932273))

(declare-fun m!4932275 () Bool)

(assert (=> b!4336619 m!4932275))

(declare-fun m!4932277 () Bool)

(assert (=> b!4336619 m!4932277))

(declare-fun m!4932279 () Bool)

(assert (=> b!4336619 m!4932279))

(declare-fun m!4932281 () Bool)

(assert (=> b!4336619 m!4932281))

(assert (=> b!4336619 m!4932281))

(declare-fun m!4932283 () Bool)

(assert (=> b!4336619 m!4932283))

(declare-fun m!4932285 () Bool)

(assert (=> b!4336619 m!4932285))

(declare-fun m!4932287 () Bool)

(assert (=> b!4336619 m!4932287))

(declare-fun m!4932289 () Bool)

(assert (=> b!4336619 m!4932289))

(assert (=> b!4336619 m!4932289))

(declare-fun m!4932291 () Bool)

(assert (=> b!4336619 m!4932291))

(assert (=> b!4336619 m!4932277))

(assert (=> b!4336619 m!4932283))

(assert (=> b!4336351 d!1274723))

(declare-fun bs!609014 () Bool)

(declare-fun d!1274725 () Bool)

(assert (= bs!609014 (and d!1274725 start!418284)))

(declare-fun lambda!136092 () Int)

(assert (=> bs!609014 (= lambda!136092 lambda!135987)))

(declare-fun bs!609015 () Bool)

(assert (= bs!609015 (and d!1274725 d!1274625)))

(assert (=> bs!609015 (not (= lambda!136092 lambda!135993))))

(declare-fun bs!609016 () Bool)

(assert (= bs!609016 (and d!1274725 d!1274657)))

(assert (=> bs!609016 (= lambda!136092 lambda!136031)))

(declare-fun lt!1550298 () ListMap!2001)

(assert (=> d!1274725 (invariantList!630 (toList!2758 lt!1550298))))

(declare-fun e!2698414 () ListMap!2001)

(assert (=> d!1274725 (= lt!1550298 e!2698414)))

(declare-fun c!737411 () Bool)

(assert (=> d!1274725 (= c!737411 ((_ is Cons!48680) (t!355720 (toList!2757 lm!1707))))))

(assert (=> d!1274725 (forall!8957 (t!355720 (toList!2757 lm!1707)) lambda!136092)))

(assert (=> d!1274725 (= (extractMap!446 (t!355720 (toList!2757 lm!1707))) lt!1550298)))

(declare-fun b!4336621 () Bool)

(assert (=> b!4336621 (= e!2698414 (addToMapMapFromBucket!95 (_2!27254 (h!54183 (t!355720 (toList!2757 lm!1707)))) (extractMap!446 (t!355720 (t!355720 (toList!2757 lm!1707))))))))

(declare-fun b!4336622 () Bool)

(assert (=> b!4336622 (= e!2698414 (ListMap!2002 Nil!48679))))

(assert (= (and d!1274725 c!737411) b!4336621))

(assert (= (and d!1274725 (not c!737411)) b!4336622))

(declare-fun m!4932293 () Bool)

(assert (=> d!1274725 m!4932293))

(declare-fun m!4932295 () Bool)

(assert (=> d!1274725 m!4932295))

(declare-fun m!4932297 () Bool)

(assert (=> b!4336621 m!4932297))

(assert (=> b!4336621 m!4932297))

(declare-fun m!4932299 () Bool)

(assert (=> b!4336621 m!4932299))

(assert (=> b!4336351 d!1274725))

(declare-fun bs!609017 () Bool)

(declare-fun b!4336623 () Bool)

(assert (= bs!609017 (and b!4336623 b!4336616)))

(declare-fun lambda!136093 () Int)

(assert (=> bs!609017 (= lambda!136093 lambda!136088)))

(declare-fun bs!609018 () Bool)

(assert (= bs!609018 (and b!4336623 b!4336619)))

(assert (=> bs!609018 (= (= lt!1549919 lt!1550294) (= lambda!136093 lambda!136090))))

(declare-fun bs!609019 () Bool)

(assert (= bs!609019 (and b!4336623 b!4336611)))

(assert (=> bs!609019 (= (= lt!1549919 (+!445 lt!1549919 lt!1549913)) (= lambda!136093 lambda!136084))))

(declare-fun bs!609020 () Bool)

(assert (= bs!609020 (and b!4336623 b!4336604)))

(assert (=> bs!609020 (= lambda!136093 lambda!136080)))

(declare-fun bs!609021 () Bool)

(assert (= bs!609021 (and b!4336623 b!4336607)))

(assert (=> bs!609021 (= lambda!136093 lambda!136081)))

(declare-fun bs!609022 () Bool)

(assert (= bs!609022 (and b!4336623 b!4336614)))

(assert (=> bs!609022 (= (= lt!1549919 (+!445 lt!1549919 lt!1549913)) (= lambda!136093 lambda!136085))))

(assert (=> bs!609021 (= (= lt!1549919 lt!1550252) (= lambda!136093 lambda!136082))))

(declare-fun bs!609023 () Bool)

(assert (= bs!609023 (and b!4336623 d!1274723)))

(assert (=> bs!609023 (= (= lt!1549919 lt!1550279) (= lambda!136093 lambda!136091))))

(assert (=> bs!609018 (= lambda!136093 lambda!136089)))

(declare-fun bs!609024 () Bool)

(assert (= bs!609024 (and b!4336623 d!1274671)))

(assert (=> bs!609024 (= (= lt!1549919 lt!1550237) (= lambda!136093 lambda!136083))))

(declare-fun bs!609025 () Bool)

(assert (= bs!609025 (and b!4336623 d!1274631)))

(assert (=> bs!609025 (not (= lambda!136093 lambda!135996))))

(declare-fun bs!609026 () Bool)

(assert (= bs!609026 (and b!4336623 d!1274721)))

(assert (=> bs!609026 (= (= lt!1549919 lt!1550258) (= lambda!136093 lambda!136087))))

(assert (=> bs!609022 (= (= lt!1549919 lt!1550273) (= lambda!136093 lambda!136086))))

(assert (=> b!4336623 true))

(declare-fun bs!609027 () Bool)

(declare-fun b!4336626 () Bool)

(assert (= bs!609027 (and b!4336626 b!4336616)))

(declare-fun lambda!136094 () Int)

(assert (=> bs!609027 (= lambda!136094 lambda!136088)))

(declare-fun bs!609028 () Bool)

(assert (= bs!609028 (and b!4336626 b!4336619)))

(assert (=> bs!609028 (= (= lt!1549919 lt!1550294) (= lambda!136094 lambda!136090))))

(declare-fun bs!609029 () Bool)

(assert (= bs!609029 (and b!4336626 b!4336611)))

(assert (=> bs!609029 (= (= lt!1549919 (+!445 lt!1549919 lt!1549913)) (= lambda!136094 lambda!136084))))

(declare-fun bs!609030 () Bool)

(assert (= bs!609030 (and b!4336626 b!4336604)))

(assert (=> bs!609030 (= lambda!136094 lambda!136080)))

(declare-fun bs!609031 () Bool)

(assert (= bs!609031 (and b!4336626 b!4336607)))

(assert (=> bs!609031 (= lambda!136094 lambda!136081)))

(declare-fun bs!609032 () Bool)

(assert (= bs!609032 (and b!4336626 b!4336614)))

(assert (=> bs!609032 (= (= lt!1549919 (+!445 lt!1549919 lt!1549913)) (= lambda!136094 lambda!136085))))

(declare-fun bs!609033 () Bool)

(assert (= bs!609033 (and b!4336626 d!1274723)))

(assert (=> bs!609033 (= (= lt!1549919 lt!1550279) (= lambda!136094 lambda!136091))))

(assert (=> bs!609028 (= lambda!136094 lambda!136089)))

(declare-fun bs!609034 () Bool)

(assert (= bs!609034 (and b!4336626 d!1274671)))

(assert (=> bs!609034 (= (= lt!1549919 lt!1550237) (= lambda!136094 lambda!136083))))

(declare-fun bs!609035 () Bool)

(assert (= bs!609035 (and b!4336626 d!1274631)))

(assert (=> bs!609035 (not (= lambda!136094 lambda!135996))))

(declare-fun bs!609036 () Bool)

(assert (= bs!609036 (and b!4336626 d!1274721)))

(assert (=> bs!609036 (= (= lt!1549919 lt!1550258) (= lambda!136094 lambda!136087))))

(assert (=> bs!609032 (= (= lt!1549919 lt!1550273) (= lambda!136094 lambda!136086))))

(assert (=> bs!609031 (= (= lt!1549919 lt!1550252) (= lambda!136094 lambda!136082))))

(declare-fun bs!609037 () Bool)

(assert (= bs!609037 (and b!4336626 b!4336623)))

(assert (=> bs!609037 (= lambda!136094 lambda!136093)))

(assert (=> b!4336626 true))

(declare-fun lt!1550316 () ListMap!2001)

(declare-fun lambda!136095 () Int)

(assert (=> bs!609027 (= (= lt!1550316 lt!1549919) (= lambda!136095 lambda!136088))))

(assert (=> bs!609028 (= (= lt!1550316 lt!1550294) (= lambda!136095 lambda!136090))))

(assert (=> bs!609029 (= (= lt!1550316 (+!445 lt!1549919 lt!1549913)) (= lambda!136095 lambda!136084))))

(assert (=> bs!609030 (= (= lt!1550316 lt!1549919) (= lambda!136095 lambda!136080))))

(assert (=> b!4336626 (= (= lt!1550316 lt!1549919) (= lambda!136095 lambda!136094))))

(assert (=> bs!609031 (= (= lt!1550316 lt!1549919) (= lambda!136095 lambda!136081))))

(assert (=> bs!609032 (= (= lt!1550316 (+!445 lt!1549919 lt!1549913)) (= lambda!136095 lambda!136085))))

(assert (=> bs!609033 (= (= lt!1550316 lt!1550279) (= lambda!136095 lambda!136091))))

(assert (=> bs!609028 (= (= lt!1550316 lt!1549919) (= lambda!136095 lambda!136089))))

(assert (=> bs!609034 (= (= lt!1550316 lt!1550237) (= lambda!136095 lambda!136083))))

(assert (=> bs!609035 (not (= lambda!136095 lambda!135996))))

(assert (=> bs!609036 (= (= lt!1550316 lt!1550258) (= lambda!136095 lambda!136087))))

(assert (=> bs!609032 (= (= lt!1550316 lt!1550273) (= lambda!136095 lambda!136086))))

(assert (=> bs!609031 (= (= lt!1550316 lt!1550252) (= lambda!136095 lambda!136082))))

(assert (=> bs!609037 (= (= lt!1550316 lt!1549919) (= lambda!136095 lambda!136093))))

(assert (=> b!4336626 true))

(declare-fun bs!609038 () Bool)

(declare-fun d!1274727 () Bool)

(assert (= bs!609038 (and d!1274727 b!4336616)))

(declare-fun lambda!136096 () Int)

(declare-fun lt!1550301 () ListMap!2001)

(assert (=> bs!609038 (= (= lt!1550301 lt!1549919) (= lambda!136096 lambda!136088))))

(declare-fun bs!609039 () Bool)

(assert (= bs!609039 (and d!1274727 b!4336619)))

(assert (=> bs!609039 (= (= lt!1550301 lt!1550294) (= lambda!136096 lambda!136090))))

(declare-fun bs!609040 () Bool)

(assert (= bs!609040 (and d!1274727 b!4336604)))

(assert (=> bs!609040 (= (= lt!1550301 lt!1549919) (= lambda!136096 lambda!136080))))

(declare-fun bs!609041 () Bool)

(assert (= bs!609041 (and d!1274727 b!4336626)))

(assert (=> bs!609041 (= (= lt!1550301 lt!1549919) (= lambda!136096 lambda!136094))))

(declare-fun bs!609042 () Bool)

(assert (= bs!609042 (and d!1274727 b!4336607)))

(assert (=> bs!609042 (= (= lt!1550301 lt!1549919) (= lambda!136096 lambda!136081))))

(declare-fun bs!609043 () Bool)

(assert (= bs!609043 (and d!1274727 b!4336614)))

(assert (=> bs!609043 (= (= lt!1550301 (+!445 lt!1549919 lt!1549913)) (= lambda!136096 lambda!136085))))

(declare-fun bs!609044 () Bool)

(assert (= bs!609044 (and d!1274727 d!1274723)))

(assert (=> bs!609044 (= (= lt!1550301 lt!1550279) (= lambda!136096 lambda!136091))))

(assert (=> bs!609039 (= (= lt!1550301 lt!1549919) (= lambda!136096 lambda!136089))))

(declare-fun bs!609045 () Bool)

(assert (= bs!609045 (and d!1274727 d!1274671)))

(assert (=> bs!609045 (= (= lt!1550301 lt!1550237) (= lambda!136096 lambda!136083))))

(assert (=> bs!609041 (= (= lt!1550301 lt!1550316) (= lambda!136096 lambda!136095))))

(declare-fun bs!609046 () Bool)

(assert (= bs!609046 (and d!1274727 b!4336611)))

(assert (=> bs!609046 (= (= lt!1550301 (+!445 lt!1549919 lt!1549913)) (= lambda!136096 lambda!136084))))

(declare-fun bs!609047 () Bool)

(assert (= bs!609047 (and d!1274727 d!1274631)))

(assert (=> bs!609047 (not (= lambda!136096 lambda!135996))))

(declare-fun bs!609048 () Bool)

(assert (= bs!609048 (and d!1274727 d!1274721)))

(assert (=> bs!609048 (= (= lt!1550301 lt!1550258) (= lambda!136096 lambda!136087))))

(assert (=> bs!609043 (= (= lt!1550301 lt!1550273) (= lambda!136096 lambda!136086))))

(assert (=> bs!609042 (= (= lt!1550301 lt!1550252) (= lambda!136096 lambda!136082))))

(declare-fun bs!609049 () Bool)

(assert (= bs!609049 (and d!1274727 b!4336623)))

(assert (=> bs!609049 (= (= lt!1550301 lt!1549919) (= lambda!136096 lambda!136093))))

(assert (=> d!1274727 true))

(declare-fun e!2698417 () ListMap!2001)

(assert (=> b!4336623 (= e!2698417 lt!1549919)))

(declare-fun lt!1550308 () Unit!68665)

(declare-fun call!301386 () Unit!68665)

(assert (=> b!4336623 (= lt!1550308 call!301386)))

(declare-fun call!301387 () Bool)

(assert (=> b!4336623 call!301387))

(declare-fun lt!1550310 () Unit!68665)

(assert (=> b!4336623 (= lt!1550310 lt!1550308)))

(declare-fun call!301385 () Bool)

(assert (=> b!4336623 call!301385))

(declare-fun lt!1550309 () Unit!68665)

(declare-fun Unit!68749 () Unit!68665)

(assert (=> b!4336623 (= lt!1550309 Unit!68749)))

(declare-fun bm!301380 () Bool)

(declare-fun c!737412 () Bool)

(assert (=> bm!301380 (= call!301385 (forall!8959 (toList!2758 lt!1549919) (ite c!737412 lambda!136093 lambda!136095)))))

(declare-fun b!4336624 () Bool)

(declare-fun e!2698416 () Bool)

(assert (=> b!4336624 (= e!2698416 (invariantList!630 (toList!2758 lt!1550301)))))

(declare-fun b!4336625 () Bool)

(declare-fun res!1778795 () Bool)

(assert (=> b!4336625 (=> (not res!1778795) (not e!2698416))))

(assert (=> b!4336625 (= res!1778795 (forall!8959 (toList!2758 lt!1549919) lambda!136096))))

(assert (=> d!1274727 e!2698416))

(declare-fun res!1778794 () Bool)

(assert (=> d!1274727 (=> (not res!1778794) (not e!2698416))))

(assert (=> d!1274727 (= res!1778794 (forall!8959 newBucket!200 lambda!136096))))

(assert (=> d!1274727 (= lt!1550301 e!2698417)))

(assert (=> d!1274727 (= c!737412 ((_ is Nil!48679) newBucket!200))))

(assert (=> d!1274727 (noDuplicateKeys!387 newBucket!200)))

(assert (=> d!1274727 (= (addToMapMapFromBucket!95 newBucket!200 lt!1549919) lt!1550301)))

(declare-fun bm!301381 () Bool)

(assert (=> bm!301381 (= call!301387 (forall!8959 (ite c!737412 (toList!2758 lt!1549919) (t!355719 newBucket!200)) (ite c!737412 lambda!136093 lambda!136095)))))

(assert (=> b!4336626 (= e!2698417 lt!1550316)))

(declare-fun lt!1550302 () ListMap!2001)

(assert (=> b!4336626 (= lt!1550302 (+!445 lt!1549919 (h!54182 newBucket!200)))))

(assert (=> b!4336626 (= lt!1550316 (addToMapMapFromBucket!95 (t!355719 newBucket!200) (+!445 lt!1549919 (h!54182 newBucket!200))))))

(declare-fun lt!1550306 () Unit!68665)

(assert (=> b!4336626 (= lt!1550306 call!301386)))

(assert (=> b!4336626 (forall!8959 (toList!2758 lt!1549919) lambda!136094)))

(declare-fun lt!1550314 () Unit!68665)

(assert (=> b!4336626 (= lt!1550314 lt!1550306)))

(assert (=> b!4336626 (forall!8959 (toList!2758 lt!1550302) lambda!136095)))

(declare-fun lt!1550300 () Unit!68665)

(declare-fun Unit!68750 () Unit!68665)

(assert (=> b!4336626 (= lt!1550300 Unit!68750)))

(assert (=> b!4336626 call!301387))

(declare-fun lt!1550307 () Unit!68665)

(declare-fun Unit!68751 () Unit!68665)

(assert (=> b!4336626 (= lt!1550307 Unit!68751)))

(declare-fun lt!1550313 () Unit!68665)

(declare-fun Unit!68752 () Unit!68665)

(assert (=> b!4336626 (= lt!1550313 Unit!68752)))

(declare-fun lt!1550318 () Unit!68665)

(assert (=> b!4336626 (= lt!1550318 (forallContained!1609 (toList!2758 lt!1550302) lambda!136095 (h!54182 newBucket!200)))))

(assert (=> b!4336626 (contains!10744 lt!1550302 (_1!27253 (h!54182 newBucket!200)))))

(declare-fun lt!1550311 () Unit!68665)

(declare-fun Unit!68753 () Unit!68665)

(assert (=> b!4336626 (= lt!1550311 Unit!68753)))

(assert (=> b!4336626 (contains!10744 lt!1550316 (_1!27253 (h!54182 newBucket!200)))))

(declare-fun lt!1550299 () Unit!68665)

(declare-fun Unit!68754 () Unit!68665)

(assert (=> b!4336626 (= lt!1550299 Unit!68754)))

(assert (=> b!4336626 (forall!8959 newBucket!200 lambda!136095)))

(declare-fun lt!1550312 () Unit!68665)

(declare-fun Unit!68755 () Unit!68665)

(assert (=> b!4336626 (= lt!1550312 Unit!68755)))

(assert (=> b!4336626 (forall!8959 (toList!2758 lt!1550302) lambda!136095)))

(declare-fun lt!1550303 () Unit!68665)

(declare-fun Unit!68756 () Unit!68665)

(assert (=> b!4336626 (= lt!1550303 Unit!68756)))

(declare-fun lt!1550304 () Unit!68665)

(declare-fun Unit!68757 () Unit!68665)

(assert (=> b!4336626 (= lt!1550304 Unit!68757)))

(declare-fun lt!1550315 () Unit!68665)

(assert (=> b!4336626 (= lt!1550315 (addForallContainsKeyThenBeforeAdding!23 lt!1549919 lt!1550316 (_1!27253 (h!54182 newBucket!200)) (_2!27253 (h!54182 newBucket!200))))))

(assert (=> b!4336626 (forall!8959 (toList!2758 lt!1549919) lambda!136095)))

(declare-fun lt!1550319 () Unit!68665)

(assert (=> b!4336626 (= lt!1550319 lt!1550315)))

(assert (=> b!4336626 (forall!8959 (toList!2758 lt!1549919) lambda!136095)))

(declare-fun lt!1550305 () Unit!68665)

(declare-fun Unit!68758 () Unit!68665)

(assert (=> b!4336626 (= lt!1550305 Unit!68758)))

(declare-fun res!1778796 () Bool)

(assert (=> b!4336626 (= res!1778796 (forall!8959 newBucket!200 lambda!136095))))

(declare-fun e!2698415 () Bool)

(assert (=> b!4336626 (=> (not res!1778796) (not e!2698415))))

(assert (=> b!4336626 e!2698415))

(declare-fun lt!1550317 () Unit!68665)

(declare-fun Unit!68759 () Unit!68665)

(assert (=> b!4336626 (= lt!1550317 Unit!68759)))

(declare-fun b!4336627 () Bool)

(assert (=> b!4336627 (= e!2698415 call!301385)))

(declare-fun bm!301382 () Bool)

(assert (=> bm!301382 (= call!301386 (lemmaContainsAllItsOwnKeys!23 lt!1549919))))

(assert (= (and d!1274727 c!737412) b!4336623))

(assert (= (and d!1274727 (not c!737412)) b!4336626))

(assert (= (and b!4336626 res!1778796) b!4336627))

(assert (= (or b!4336623 b!4336626) bm!301382))

(assert (= (or b!4336623 b!4336627) bm!301380))

(assert (= (or b!4336623 b!4336626) bm!301381))

(assert (= (and d!1274727 res!1778794) b!4336625))

(assert (= (and b!4336625 res!1778795) b!4336624))

(declare-fun m!4932301 () Bool)

(assert (=> bm!301380 m!4932301))

(declare-fun m!4932303 () Bool)

(assert (=> d!1274727 m!4932303))

(assert (=> d!1274727 m!4931779))

(declare-fun m!4932305 () Bool)

(assert (=> bm!301381 m!4932305))

(assert (=> bm!301382 m!4932203))

(declare-fun m!4932307 () Bool)

(assert (=> b!4336624 m!4932307))

(declare-fun m!4932309 () Bool)

(assert (=> b!4336625 m!4932309))

(declare-fun m!4932311 () Bool)

(assert (=> b!4336626 m!4932311))

(declare-fun m!4932313 () Bool)

(assert (=> b!4336626 m!4932313))

(declare-fun m!4932315 () Bool)

(assert (=> b!4336626 m!4932315))

(declare-fun m!4932317 () Bool)

(assert (=> b!4336626 m!4932317))

(declare-fun m!4932319 () Bool)

(assert (=> b!4336626 m!4932319))

(assert (=> b!4336626 m!4932319))

(declare-fun m!4932321 () Bool)

(assert (=> b!4336626 m!4932321))

(declare-fun m!4932323 () Bool)

(assert (=> b!4336626 m!4932323))

(declare-fun m!4932325 () Bool)

(assert (=> b!4336626 m!4932325))

(declare-fun m!4932327 () Bool)

(assert (=> b!4336626 m!4932327))

(assert (=> b!4336626 m!4932327))

(declare-fun m!4932329 () Bool)

(assert (=> b!4336626 m!4932329))

(assert (=> b!4336626 m!4932315))

(assert (=> b!4336626 m!4932321))

(assert (=> b!4336351 d!1274727))

(declare-fun d!1274729 () Bool)

(declare-fun res!1778797 () Bool)

(declare-fun e!2698418 () Bool)

(assert (=> d!1274729 (=> res!1778797 e!2698418)))

(assert (=> d!1274729 (= res!1778797 ((_ is Nil!48680) (t!355720 (toList!2757 lm!1707))))))

(assert (=> d!1274729 (= (forall!8957 (t!355720 (toList!2757 lm!1707)) lambda!135987) e!2698418)))

(declare-fun b!4336628 () Bool)

(declare-fun e!2698419 () Bool)

(assert (=> b!4336628 (= e!2698418 e!2698419)))

(declare-fun res!1778798 () Bool)

(assert (=> b!4336628 (=> (not res!1778798) (not e!2698419))))

(assert (=> b!4336628 (= res!1778798 (dynLambda!20568 lambda!135987 (h!54183 (t!355720 (toList!2757 lm!1707)))))))

(declare-fun b!4336629 () Bool)

(assert (=> b!4336629 (= e!2698419 (forall!8957 (t!355720 (t!355720 (toList!2757 lm!1707))) lambda!135987))))

(assert (= (and d!1274729 (not res!1778797)) b!4336628))

(assert (= (and b!4336628 res!1778798) b!4336629))

(declare-fun b_lambda!128351 () Bool)

(assert (=> (not b_lambda!128351) (not b!4336628)))

(declare-fun m!4932331 () Bool)

(assert (=> b!4336628 m!4932331))

(declare-fun m!4932333 () Bool)

(assert (=> b!4336629 m!4932333))

(assert (=> b!4336351 d!1274729))

(declare-fun d!1274731 () Bool)

(declare-fun e!2698422 () Bool)

(assert (=> d!1274731 e!2698422))

(declare-fun res!1778804 () Bool)

(assert (=> d!1274731 (=> (not res!1778804) (not e!2698422))))

(declare-fun lt!1550329 () ListMap!2001)

(assert (=> d!1274731 (= res!1778804 (contains!10744 lt!1550329 (_1!27253 lt!1549913)))))

(declare-fun lt!1550331 () List!48803)

(assert (=> d!1274731 (= lt!1550329 (ListMap!2002 lt!1550331))))

(declare-fun lt!1550328 () Unit!68665)

(declare-fun lt!1550330 () Unit!68665)

(assert (=> d!1274731 (= lt!1550328 lt!1550330)))

(assert (=> d!1274731 (= (getValueByKey!358 lt!1550331 (_1!27253 lt!1549913)) (Some!10371 (_2!27253 lt!1549913)))))

(declare-fun lemmaContainsTupThenGetReturnValue!142 (List!48803 K!10035 V!10281) Unit!68665)

(assert (=> d!1274731 (= lt!1550330 (lemmaContainsTupThenGetReturnValue!142 lt!1550331 (_1!27253 lt!1549913) (_2!27253 lt!1549913)))))

(declare-fun insertNoDuplicatedKeys!63 (List!48803 K!10035 V!10281) List!48803)

(assert (=> d!1274731 (= lt!1550331 (insertNoDuplicatedKeys!63 (toList!2758 (addToMapMapFromBucket!95 lt!1549912 lt!1549919)) (_1!27253 lt!1549913) (_2!27253 lt!1549913)))))

(assert (=> d!1274731 (= (+!445 (addToMapMapFromBucket!95 lt!1549912 lt!1549919) lt!1549913) lt!1550329)))

(declare-fun b!4336634 () Bool)

(declare-fun res!1778803 () Bool)

(assert (=> b!4336634 (=> (not res!1778803) (not e!2698422))))

(assert (=> b!4336634 (= res!1778803 (= (getValueByKey!358 (toList!2758 lt!1550329) (_1!27253 lt!1549913)) (Some!10371 (_2!27253 lt!1549913))))))

(declare-fun b!4336635 () Bool)

(declare-fun contains!10748 (List!48803 tuple2!47918) Bool)

(assert (=> b!4336635 (= e!2698422 (contains!10748 (toList!2758 lt!1550329) lt!1549913))))

(assert (= (and d!1274731 res!1778804) b!4336634))

(assert (= (and b!4336634 res!1778803) b!4336635))

(declare-fun m!4932335 () Bool)

(assert (=> d!1274731 m!4932335))

(declare-fun m!4932337 () Bool)

(assert (=> d!1274731 m!4932337))

(declare-fun m!4932339 () Bool)

(assert (=> d!1274731 m!4932339))

(declare-fun m!4932341 () Bool)

(assert (=> d!1274731 m!4932341))

(declare-fun m!4932343 () Bool)

(assert (=> b!4336634 m!4932343))

(declare-fun m!4932345 () Bool)

(assert (=> b!4336635 m!4932345))

(assert (=> b!4336351 d!1274731))

(declare-fun bs!609050 () Bool)

(declare-fun d!1274733 () Bool)

(assert (= bs!609050 (and d!1274733 start!418284)))

(declare-fun lambda!136097 () Int)

(assert (=> bs!609050 (= lambda!136097 lambda!135987)))

(declare-fun bs!609051 () Bool)

(assert (= bs!609051 (and d!1274733 d!1274625)))

(assert (=> bs!609051 (not (= lambda!136097 lambda!135993))))

(declare-fun bs!609052 () Bool)

(assert (= bs!609052 (and d!1274733 d!1274657)))

(assert (=> bs!609052 (= lambda!136097 lambda!136031)))

(declare-fun bs!609053 () Bool)

(assert (= bs!609053 (and d!1274733 d!1274725)))

(assert (=> bs!609053 (= lambda!136097 lambda!136092)))

(declare-fun lt!1550332 () ListMap!2001)

(assert (=> d!1274733 (invariantList!630 (toList!2758 lt!1550332))))

(declare-fun e!2698423 () ListMap!2001)

(assert (=> d!1274733 (= lt!1550332 e!2698423)))

(declare-fun c!737413 () Bool)

(assert (=> d!1274733 (= c!737413 ((_ is Cons!48680) (toList!2757 lt!1549908)))))

(assert (=> d!1274733 (forall!8957 (toList!2757 lt!1549908) lambda!136097)))

(assert (=> d!1274733 (= (extractMap!446 (toList!2757 lt!1549908)) lt!1550332)))

(declare-fun b!4336636 () Bool)

(assert (=> b!4336636 (= e!2698423 (addToMapMapFromBucket!95 (_2!27254 (h!54183 (toList!2757 lt!1549908))) (extractMap!446 (t!355720 (toList!2757 lt!1549908)))))))

(declare-fun b!4336637 () Bool)

(assert (=> b!4336637 (= e!2698423 (ListMap!2002 Nil!48679))))

(assert (= (and d!1274733 c!737413) b!4336636))

(assert (= (and d!1274733 (not c!737413)) b!4336637))

(declare-fun m!4932347 () Bool)

(assert (=> d!1274733 m!4932347))

(declare-fun m!4932349 () Bool)

(assert (=> d!1274733 m!4932349))

(declare-fun m!4932351 () Bool)

(assert (=> b!4336636 m!4932351))

(assert (=> b!4336636 m!4932351))

(declare-fun m!4932353 () Bool)

(assert (=> b!4336636 m!4932353))

(assert (=> b!4336351 d!1274733))

(declare-fun d!1274735 () Bool)

(declare-fun content!7610 (List!48803) (InoxSet tuple2!47918))

(assert (=> d!1274735 (= (eq!177 lt!1549916 (+!445 (addToMapMapFromBucket!95 lt!1549912 lt!1549919) lt!1549913)) (= (content!7610 (toList!2758 lt!1549916)) (content!7610 (toList!2758 (+!445 (addToMapMapFromBucket!95 lt!1549912 lt!1549919) lt!1549913)))))))

(declare-fun bs!609054 () Bool)

(assert (= bs!609054 d!1274735))

(declare-fun m!4932355 () Bool)

(assert (=> bs!609054 m!4932355))

(declare-fun m!4932357 () Bool)

(assert (=> bs!609054 m!4932357))

(assert (=> b!4336351 d!1274735))

(declare-fun d!1274737 () Bool)

(declare-fun e!2698424 () Bool)

(assert (=> d!1274737 e!2698424))

(declare-fun res!1778806 () Bool)

(assert (=> d!1274737 (=> (not res!1778806) (not e!2698424))))

(declare-fun lt!1550334 () ListMap!2001)

(assert (=> d!1274737 (= res!1778806 (contains!10744 lt!1550334 (_1!27253 lt!1549913)))))

(declare-fun lt!1550336 () List!48803)

(assert (=> d!1274737 (= lt!1550334 (ListMap!2002 lt!1550336))))

(declare-fun lt!1550333 () Unit!68665)

(declare-fun lt!1550335 () Unit!68665)

(assert (=> d!1274737 (= lt!1550333 lt!1550335)))

(assert (=> d!1274737 (= (getValueByKey!358 lt!1550336 (_1!27253 lt!1549913)) (Some!10371 (_2!27253 lt!1549913)))))

(assert (=> d!1274737 (= lt!1550335 (lemmaContainsTupThenGetReturnValue!142 lt!1550336 (_1!27253 lt!1549913) (_2!27253 lt!1549913)))))

(assert (=> d!1274737 (= lt!1550336 (insertNoDuplicatedKeys!63 (toList!2758 lt!1549919) (_1!27253 lt!1549913) (_2!27253 lt!1549913)))))

(assert (=> d!1274737 (= (+!445 lt!1549919 lt!1549913) lt!1550334)))

(declare-fun b!4336638 () Bool)

(declare-fun res!1778805 () Bool)

(assert (=> b!4336638 (=> (not res!1778805) (not e!2698424))))

(assert (=> b!4336638 (= res!1778805 (= (getValueByKey!358 (toList!2758 lt!1550334) (_1!27253 lt!1549913)) (Some!10371 (_2!27253 lt!1549913))))))

(declare-fun b!4336639 () Bool)

(assert (=> b!4336639 (= e!2698424 (contains!10748 (toList!2758 lt!1550334) lt!1549913))))

(assert (= (and d!1274737 res!1778806) b!4336638))

(assert (= (and b!4336638 res!1778805) b!4336639))

(declare-fun m!4932359 () Bool)

(assert (=> d!1274737 m!4932359))

(declare-fun m!4932361 () Bool)

(assert (=> d!1274737 m!4932361))

(declare-fun m!4932363 () Bool)

(assert (=> d!1274737 m!4932363))

(declare-fun m!4932365 () Bool)

(assert (=> d!1274737 m!4932365))

(declare-fun m!4932367 () Bool)

(assert (=> b!4336638 m!4932367))

(declare-fun m!4932369 () Bool)

(assert (=> b!4336639 m!4932369))

(assert (=> b!4336351 d!1274737))

(declare-fun d!1274739 () Bool)

(declare-fun e!2698430 () Bool)

(assert (=> d!1274739 e!2698430))

(declare-fun res!1778809 () Bool)

(assert (=> d!1274739 (=> res!1778809 e!2698430)))

(declare-fun lt!1550347 () Bool)

(assert (=> d!1274739 (= res!1778809 (not lt!1550347))))

(declare-fun lt!1550345 () Bool)

(assert (=> d!1274739 (= lt!1550347 lt!1550345)))

(declare-fun lt!1550346 () Unit!68665)

(declare-fun e!2698429 () Unit!68665)

(assert (=> d!1274739 (= lt!1550346 e!2698429)))

(declare-fun c!737416 () Bool)

(assert (=> d!1274739 (= c!737416 lt!1550345)))

(declare-fun containsKey!542 (List!48804 (_ BitVec 64)) Bool)

(assert (=> d!1274739 (= lt!1550345 (containsKey!542 (toList!2757 lm!1707) hash!377))))

(assert (=> d!1274739 (= (contains!10743 lm!1707 hash!377) lt!1550347)))

(declare-fun b!4336646 () Bool)

(declare-fun lt!1550348 () Unit!68665)

(assert (=> b!4336646 (= e!2698429 lt!1550348)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!272 (List!48804 (_ BitVec 64)) Unit!68665)

(assert (=> b!4336646 (= lt!1550348 (lemmaContainsKeyImpliesGetValueByKeyDefined!272 (toList!2757 lm!1707) hash!377))))

(declare-fun isDefined!7669 (Option!10371) Bool)

(assert (=> b!4336646 (isDefined!7669 (getValueByKey!357 (toList!2757 lm!1707) hash!377))))

(declare-fun b!4336647 () Bool)

(declare-fun Unit!68760 () Unit!68665)

(assert (=> b!4336647 (= e!2698429 Unit!68760)))

(declare-fun b!4336648 () Bool)

(assert (=> b!4336648 (= e!2698430 (isDefined!7669 (getValueByKey!357 (toList!2757 lm!1707) hash!377)))))

(assert (= (and d!1274739 c!737416) b!4336646))

(assert (= (and d!1274739 (not c!737416)) b!4336647))

(assert (= (and d!1274739 (not res!1778809)) b!4336648))

(declare-fun m!4932371 () Bool)

(assert (=> d!1274739 m!4932371))

(declare-fun m!4932373 () Bool)

(assert (=> b!4336646 m!4932373))

(assert (=> b!4336646 m!4931869))

(assert (=> b!4336646 m!4931869))

(declare-fun m!4932375 () Bool)

(assert (=> b!4336646 m!4932375))

(assert (=> b!4336648 m!4931869))

(assert (=> b!4336648 m!4931869))

(assert (=> b!4336648 m!4932375))

(assert (=> b!4336352 d!1274739))

(declare-fun b!4336653 () Bool)

(declare-fun e!2698433 () Bool)

(declare-fun tp!1329036 () Bool)

(declare-fun tp!1329037 () Bool)

(assert (=> b!4336653 (= e!2698433 (and tp!1329036 tp!1329037))))

(assert (=> b!4336348 (= tp!1329021 e!2698433)))

(assert (= (and b!4336348 ((_ is Cons!48680) (toList!2757 lm!1707))) b!4336653))

(declare-fun tp!1329040 () Bool)

(declare-fun e!2698436 () Bool)

(declare-fun b!4336658 () Bool)

(assert (=> b!4336658 (= e!2698436 (and tp_is_empty!24785 tp_is_empty!24787 tp!1329040))))

(assert (=> b!4336347 (= tp!1329022 e!2698436)))

(assert (= (and b!4336347 ((_ is Cons!48679) (t!355719 newBucket!200))) b!4336658))

(declare-fun b_lambda!128353 () Bool)

(assert (= b_lambda!128329 (or start!418284 b_lambda!128353)))

(declare-fun bs!609055 () Bool)

(declare-fun d!1274741 () Bool)

(assert (= bs!609055 (and d!1274741 start!418284)))

(assert (=> bs!609055 (= (dynLambda!20568 lambda!135987 lt!1549918) (noDuplicateKeys!387 (_2!27254 lt!1549918)))))

(declare-fun m!4932377 () Bool)

(assert (=> bs!609055 m!4932377))

(assert (=> d!1274647 d!1274741))

(declare-fun b_lambda!128355 () Bool)

(assert (= b_lambda!128325 (or start!418284 b_lambda!128355)))

(declare-fun bs!609056 () Bool)

(declare-fun d!1274743 () Bool)

(assert (= bs!609056 (and d!1274743 start!418284)))

(assert (=> bs!609056 (= (dynLambda!20568 lambda!135987 (tuple2!47921 hash!377 newBucket!200)) (noDuplicateKeys!387 (_2!27254 (tuple2!47921 hash!377 newBucket!200))))))

(declare-fun m!4932379 () Bool)

(assert (=> bs!609056 m!4932379))

(assert (=> b!4336392 d!1274743))

(declare-fun b_lambda!128357 () Bool)

(assert (= b_lambda!128323 (or start!418284 b_lambda!128357)))

(declare-fun bs!609057 () Bool)

(declare-fun d!1274745 () Bool)

(assert (= bs!609057 (and d!1274745 start!418284)))

(assert (=> bs!609057 (= (dynLambda!20568 lambda!135987 (h!54183 (toList!2757 lt!1549908))) (noDuplicateKeys!387 (_2!27254 (h!54183 (toList!2757 lt!1549908)))))))

(declare-fun m!4932381 () Bool)

(assert (=> bs!609057 m!4932381))

(assert (=> b!4336381 d!1274745))

(declare-fun b_lambda!128359 () Bool)

(assert (= b_lambda!128351 (or start!418284 b_lambda!128359)))

(declare-fun bs!609058 () Bool)

(declare-fun d!1274747 () Bool)

(assert (= bs!609058 (and d!1274747 start!418284)))

(assert (=> bs!609058 (= (dynLambda!20568 lambda!135987 (h!54183 (t!355720 (toList!2757 lm!1707)))) (noDuplicateKeys!387 (_2!27254 (h!54183 (t!355720 (toList!2757 lm!1707))))))))

(declare-fun m!4932383 () Bool)

(assert (=> bs!609058 m!4932383))

(assert (=> b!4336628 d!1274747))

(declare-fun b_lambda!128361 () Bool)

(assert (= b_lambda!128327 (or start!418284 b_lambda!128361)))

(declare-fun bs!609059 () Bool)

(declare-fun d!1274749 () Bool)

(assert (= bs!609059 (and d!1274749 start!418284)))

(assert (=> bs!609059 (= (dynLambda!20568 lambda!135987 (h!54183 (toList!2757 lm!1707))) (noDuplicateKeys!387 (_2!27254 (h!54183 (toList!2757 lm!1707)))))))

(declare-fun m!4932385 () Bool)

(assert (=> bs!609059 m!4932385))

(assert (=> b!4336393 d!1274749))

(check-sat (not d!1274637) (not b!4336363) (not bm!301377) (not b!4336364) (not bm!301376) (not bm!301380) (not bm!301373) (not bm!301382) (not bm!301343) (not b!4336613) (not bm!301379) (not b!4336638) (not d!1274725) (not b!4336447) (not d!1274671) (not d!1274641) (not b!4336448) (not d!1274721) tp_is_empty!24785 (not b!4336625) (not d!1274651) (not b_lambda!128353) (not b!4336408) (not d!1274663) (not b!4336635) (not b_lambda!128357) (not b!4336442) (not bs!609057) (not d!1274739) (not b!4336394) (not b!4336619) (not d!1274733) (not b!4336449) (not b!4336382) (not b!4336617) (not bm!301381) (not d!1274731) (not b!4336606) (not bm!301375) (not b!4336612) (not b!4336614) (not bm!301371) (not bm!301372) (not b!4336646) (not b!4336634) (not b!4336639) (not b!4336415) (not b!4336626) (not b!4336621) (not bs!609055) (not b_lambda!128361) (not bs!609056) (not b!4336618) (not bs!609059) (not bs!609058) (not b!4336441) (not d!1274657) (not b!4336629) (not d!1274631) (not b!4336467) (not d!1274647) (not b!4336388) (not d!1274627) (not b!4336446) (not d!1274645) (not b!4336397) (not d!1274735) (not b!4336636) (not b!4336387) (not bm!301378) (not d!1274661) (not b!4336607) tp_is_empty!24787 (not b!4336653) (not b!4336648) (not d!1274649) (not b_lambda!128355) (not d!1274653) (not d!1274655) (not d!1274723) (not b!4336418) (not b!4336605) (not d!1274727) (not d!1274625) (not b!4336443) (not b!4336624) (not d!1274737) (not b!4336658) (not b_lambda!128359) (not bm!301374))
(check-sat)
