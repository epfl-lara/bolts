; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419688 () Bool)

(assert start!419688)

(declare-fun b!4346849 () Bool)

(declare-fun e!2704988 () Bool)

(declare-fun e!2704994 () Bool)

(assert (=> b!4346849 (= e!2704988 e!2704994)))

(declare-fun res!1784995 () Bool)

(assert (=> b!4346849 (=> res!1784995 e!2704994)))

(declare-datatypes ((V!10416 0))(
  ( (V!10417 (val!16407 Int)) )
))
(declare-datatypes ((K!10170 0))(
  ( (K!10171 (val!16408 Int)) )
))
(declare-datatypes ((tuple2!48134 0))(
  ( (tuple2!48135 (_1!27361 K!10170) (_2!27361 V!10416)) )
))
(declare-datatypes ((List!48935 0))(
  ( (Nil!48811) (Cons!48811 (h!54338 tuple2!48134) (t!355855 List!48935)) )
))
(declare-datatypes ((tuple2!48136 0))(
  ( (tuple2!48137 (_1!27362 (_ BitVec 64)) (_2!27362 List!48935)) )
))
(declare-datatypes ((List!48936 0))(
  ( (Nil!48812) (Cons!48812 (h!54339 tuple2!48136) (t!355856 List!48936)) )
))
(declare-datatypes ((ListLongMap!1515 0))(
  ( (ListLongMap!1516 (toList!2865 List!48936)) )
))
(declare-fun lm!1707 () ListLongMap!1515)

(declare-fun hash!377 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4346849 (= res!1784995 (or (not ((_ is Cons!48812) (toList!2865 lm!1707))) (not (= (_1!27362 (h!54339 (toList!2865 lm!1707))) hash!377))))))

(declare-fun e!2704992 () Bool)

(assert (=> b!4346849 e!2704992))

(declare-fun res!1784999 () Bool)

(assert (=> b!4346849 (=> (not res!1784999) (not e!2704992))))

(declare-fun lt!1561516 () ListLongMap!1515)

(declare-fun lambda!138493 () Int)

(declare-fun forall!9037 (List!48936 Int) Bool)

(assert (=> b!4346849 (= res!1784999 (forall!9037 (toList!2865 lt!1561516) lambda!138493))))

(declare-fun lt!1561515 () tuple2!48136)

(declare-fun +!553 (ListLongMap!1515 tuple2!48136) ListLongMap!1515)

(assert (=> b!4346849 (= lt!1561516 (+!553 lm!1707 lt!1561515))))

(declare-fun newBucket!200 () List!48935)

(assert (=> b!4346849 (= lt!1561515 (tuple2!48137 hash!377 newBucket!200))))

(declare-datatypes ((Unit!70729 0))(
  ( (Unit!70730) )
))
(declare-fun lt!1561528 () Unit!70729)

(declare-fun addValidProp!95 (ListLongMap!1515 Int (_ BitVec 64) List!48935) Unit!70729)

(assert (=> b!4346849 (= lt!1561528 (addValidProp!95 lm!1707 lambda!138493 hash!377 newBucket!200))))

(assert (=> b!4346849 (forall!9037 (toList!2865 lm!1707) lambda!138493)))

(declare-fun b!4346850 () Bool)

(declare-fun res!1784997 () Bool)

(declare-fun e!2704996 () Bool)

(assert (=> b!4346850 (=> (not res!1784997) (not e!2704996))))

(declare-datatypes ((Hashable!4833 0))(
  ( (HashableExt!4832 (__x!30536 Int)) )
))
(declare-fun hashF!1247 () Hashable!4833)

(declare-fun allKeysSameHash!399 (List!48935 (_ BitVec 64) Hashable!4833) Bool)

(assert (=> b!4346850 (= res!1784997 (allKeysSameHash!399 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4346851 () Bool)

(declare-fun res!1785007 () Bool)

(declare-fun e!2704990 () Bool)

(assert (=> b!4346851 (=> (not res!1785007) (not e!2704990))))

(declare-fun contains!10952 (ListLongMap!1515 (_ BitVec 64)) Bool)

(assert (=> b!4346851 (= res!1785007 (contains!10952 lm!1707 hash!377))))

(declare-fun res!1785001 () Bool)

(assert (=> start!419688 (=> (not res!1785001) (not e!2704996))))

(assert (=> start!419688 (= res!1785001 (forall!9037 (toList!2865 lm!1707) lambda!138493))))

(assert (=> start!419688 e!2704996))

(declare-fun e!2704991 () Bool)

(assert (=> start!419688 e!2704991))

(assert (=> start!419688 true))

(declare-fun e!2704989 () Bool)

(declare-fun inv!64356 (ListLongMap!1515) Bool)

(assert (=> start!419688 (and (inv!64356 lm!1707) e!2704989)))

(declare-fun tp_is_empty!25001 () Bool)

(assert (=> start!419688 tp_is_empty!25001))

(declare-fun tp_is_empty!25003 () Bool)

(assert (=> start!419688 tp_is_empty!25003))

(declare-fun b!4346852 () Bool)

(declare-fun e!2704993 () Bool)

(assert (=> b!4346852 (= e!2704993 (forall!9037 (toList!2865 lm!1707) lambda!138493))))

(declare-fun lt!1561527 () tuple2!48134)

(declare-fun lt!1561520 () ListLongMap!1515)

(declare-datatypes ((ListMap!2109 0))(
  ( (ListMap!2110 (toList!2866 List!48935)) )
))
(declare-fun lt!1561538 () ListMap!2109)

(declare-fun eq!231 (ListMap!2109 ListMap!2109) Bool)

(declare-fun extractMap!500 (List!48936) ListMap!2109)

(declare-fun +!554 (ListMap!2109 tuple2!48134) ListMap!2109)

(assert (=> b!4346852 (eq!231 (extractMap!500 (toList!2865 (+!553 lt!1561520 lt!1561515))) (+!554 lt!1561538 lt!1561527))))

(declare-fun newValue!99 () V!10416)

(declare-fun lt!1561514 () Unit!70729)

(declare-fun key!3918 () K!10170)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!81 (ListLongMap!1515 (_ BitVec 64) List!48935 K!10170 V!10416 Hashable!4833) Unit!70729)

(assert (=> b!4346852 (= lt!1561514 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!81 lt!1561520 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun b!4346853 () Bool)

(assert (=> b!4346853 (= e!2704996 e!2704990)))

(declare-fun res!1785004 () Bool)

(assert (=> b!4346853 (=> (not res!1785004) (not e!2704990))))

(declare-fun lt!1561524 () ListMap!2109)

(declare-fun contains!10953 (ListMap!2109 K!10170) Bool)

(assert (=> b!4346853 (= res!1785004 (contains!10953 lt!1561524 key!3918))))

(assert (=> b!4346853 (= lt!1561524 (extractMap!500 (toList!2865 lm!1707)))))

(declare-fun b!4346854 () Bool)

(declare-fun res!1785006 () Bool)

(assert (=> b!4346854 (=> (not res!1785006) (not e!2704996))))

(declare-fun allKeysSameHashInMap!545 (ListLongMap!1515 Hashable!4833) Bool)

(assert (=> b!4346854 (= res!1785006 (allKeysSameHashInMap!545 lm!1707 hashF!1247))))

(declare-fun b!4346855 () Bool)

(declare-fun tp!1329579 () Bool)

(assert (=> b!4346855 (= e!2704989 tp!1329579)))

(declare-fun b!4346856 () Bool)

(declare-fun res!1784996 () Bool)

(assert (=> b!4346856 (=> res!1784996 e!2704988)))

(declare-fun noDuplicateKeys!441 (List!48935) Bool)

(assert (=> b!4346856 (= res!1784996 (not (noDuplicateKeys!441 newBucket!200)))))

(declare-fun b!4346857 () Bool)

(assert (=> b!4346857 (= e!2704994 e!2704993)))

(declare-fun res!1784998 () Bool)

(assert (=> b!4346857 (=> res!1784998 e!2704993)))

(declare-fun lt!1561517 () Bool)

(assert (=> b!4346857 (= res!1784998 lt!1561517)))

(declare-fun e!2704987 () Bool)

(assert (=> b!4346857 e!2704987))

(declare-fun res!1785000 () Bool)

(assert (=> b!4346857 (=> (not res!1785000) (not e!2704987))))

(declare-fun lt!1561522 () ListMap!2109)

(assert (=> b!4346857 (= res!1785000 (= lt!1561517 (contains!10953 lt!1561522 key!3918)))))

(assert (=> b!4346857 (= lt!1561517 (contains!10953 lt!1561538 key!3918))))

(declare-fun lt!1561533 () Unit!70729)

(declare-fun lemmaEquivalentThenSameContains!92 (ListMap!2109 ListMap!2109 K!10170) Unit!70729)

(assert (=> b!4346857 (= lt!1561533 (lemmaEquivalentThenSameContains!92 lt!1561538 lt!1561522 key!3918))))

(assert (=> b!4346857 (eq!231 lt!1561538 lt!1561522)))

(declare-fun -!242 (ListMap!2109 K!10170) ListMap!2109)

(assert (=> b!4346857 (= lt!1561522 (-!242 lt!1561524 key!3918))))

(declare-fun lt!1561525 () Unit!70729)

(declare-fun lt!1561518 () List!48935)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!57 (ListLongMap!1515 (_ BitVec 64) List!48935 K!10170 Hashable!4833) Unit!70729)

(assert (=> b!4346857 (= lt!1561525 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!57 lm!1707 hash!377 lt!1561518 key!3918 hashF!1247))))

(declare-fun lt!1561535 () ListMap!2109)

(assert (=> b!4346857 (= lt!1561535 lt!1561538)))

(assert (=> b!4346857 (= lt!1561538 (extractMap!500 (toList!2865 lt!1561520)))))

(declare-fun lt!1561537 () List!48935)

(assert (=> b!4346857 (= lt!1561518 lt!1561537)))

(assert (=> b!4346857 (= lt!1561520 (+!553 lm!1707 (tuple2!48137 hash!377 lt!1561518)))))

(declare-fun tail!6939 (List!48935) List!48935)

(assert (=> b!4346857 (= lt!1561518 (tail!6939 newBucket!200))))

(declare-fun e!2704995 () Bool)

(assert (=> b!4346857 e!2704995))

(declare-fun res!1785005 () Bool)

(assert (=> b!4346857 (=> (not res!1785005) (not e!2704995))))

(declare-fun lt!1561532 () ListMap!2109)

(declare-fun lt!1561521 () ListMap!2109)

(assert (=> b!4346857 (= res!1785005 (eq!231 lt!1561532 lt!1561521))))

(assert (=> b!4346857 (= lt!1561521 (+!554 lt!1561535 lt!1561527))))

(declare-fun lt!1561526 () ListMap!2109)

(declare-fun addToMapMapFromBucket!149 (List!48935 ListMap!2109) ListMap!2109)

(assert (=> b!4346857 (= lt!1561535 (addToMapMapFromBucket!149 lt!1561537 lt!1561526))))

(declare-fun lt!1561519 () Unit!70729)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!60 (ListMap!2109 K!10170 V!10416 List!48935) Unit!70729)

(assert (=> b!4346857 (= lt!1561519 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!60 lt!1561526 key!3918 newValue!99 lt!1561537))))

(declare-fun lt!1561531 () ListMap!2109)

(assert (=> b!4346857 (= lt!1561531 lt!1561532)))

(assert (=> b!4346857 (= lt!1561532 (addToMapMapFromBucket!149 lt!1561537 (+!554 lt!1561526 lt!1561527)))))

(declare-fun lt!1561513 () ListMap!2109)

(assert (=> b!4346857 (= lt!1561513 lt!1561531)))

(declare-fun lt!1561530 () List!48935)

(assert (=> b!4346857 (= lt!1561531 (addToMapMapFromBucket!149 lt!1561530 lt!1561526))))

(assert (=> b!4346857 (= lt!1561513 (addToMapMapFromBucket!149 newBucket!200 lt!1561526))))

(assert (=> b!4346857 (= lt!1561513 (extractMap!500 (toList!2865 lt!1561516)))))

(assert (=> b!4346857 (= lt!1561526 (extractMap!500 (t!355856 (toList!2865 lm!1707))))))

(declare-fun b!4346858 () Bool)

(declare-fun res!1785002 () Bool)

(assert (=> b!4346858 (=> (not res!1785002) (not e!2704996))))

(declare-fun hash!1428 (Hashable!4833 K!10170) (_ BitVec 64))

(assert (=> b!4346858 (= res!1785002 (= (hash!1428 hashF!1247 key!3918) hash!377))))

(declare-fun b!4346859 () Bool)

(assert (=> b!4346859 (= e!2704990 (not e!2704988))))

(declare-fun res!1784994 () Bool)

(assert (=> b!4346859 (=> res!1784994 e!2704988)))

(assert (=> b!4346859 (= res!1784994 (not (= newBucket!200 lt!1561530)))))

(assert (=> b!4346859 (= lt!1561530 (Cons!48811 lt!1561527 lt!1561537))))

(declare-fun lt!1561529 () List!48935)

(declare-fun removePairForKey!411 (List!48935 K!10170) List!48935)

(assert (=> b!4346859 (= lt!1561537 (removePairForKey!411 lt!1561529 key!3918))))

(assert (=> b!4346859 (= lt!1561527 (tuple2!48135 key!3918 newValue!99))))

(declare-fun lt!1561536 () Unit!70729)

(declare-fun lt!1561534 () tuple2!48136)

(declare-fun forallContained!1687 (List!48936 Int tuple2!48136) Unit!70729)

(assert (=> b!4346859 (= lt!1561536 (forallContained!1687 (toList!2865 lm!1707) lambda!138493 lt!1561534))))

(declare-fun contains!10954 (List!48936 tuple2!48136) Bool)

(assert (=> b!4346859 (contains!10954 (toList!2865 lm!1707) lt!1561534)))

(assert (=> b!4346859 (= lt!1561534 (tuple2!48137 hash!377 lt!1561529))))

(declare-fun lt!1561523 () Unit!70729)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!288 (List!48936 (_ BitVec 64) List!48935) Unit!70729)

(assert (=> b!4346859 (= lt!1561523 (lemmaGetValueByKeyImpliesContainsTuple!288 (toList!2865 lm!1707) hash!377 lt!1561529))))

(declare-fun apply!11293 (ListLongMap!1515 (_ BitVec 64)) List!48935)

(assert (=> b!4346859 (= lt!1561529 (apply!11293 lm!1707 hash!377))))

(declare-fun b!4346860 () Bool)

(declare-fun tp!1329580 () Bool)

(assert (=> b!4346860 (= e!2704991 (and tp_is_empty!25001 tp_is_empty!25003 tp!1329580))))

(declare-fun b!4346861 () Bool)

(assert (=> b!4346861 (= e!2704987 (= (apply!11293 lt!1561520 hash!377) lt!1561518))))

(declare-fun b!4346862 () Bool)

(assert (=> b!4346862 (= e!2704992 (or (not ((_ is Cons!48812) (toList!2865 lm!1707))) (not (= (_1!27362 (h!54339 (toList!2865 lm!1707))) hash!377)) (= lt!1561516 (ListLongMap!1516 (Cons!48812 lt!1561515 (t!355856 (toList!2865 lm!1707)))))))))

(declare-fun b!4346863 () Bool)

(assert (=> b!4346863 (= e!2704995 (eq!231 lt!1561531 lt!1561521))))

(declare-fun b!4346864 () Bool)

(declare-fun res!1785003 () Bool)

(assert (=> b!4346864 (=> (not res!1785003) (not e!2704992))))

(assert (=> b!4346864 (= res!1785003 (forall!9037 (toList!2865 lt!1561516) lambda!138493))))

(assert (= (and start!419688 res!1785001) b!4346854))

(assert (= (and b!4346854 res!1785006) b!4346858))

(assert (= (and b!4346858 res!1785002) b!4346850))

(assert (= (and b!4346850 res!1784997) b!4346853))

(assert (= (and b!4346853 res!1785004) b!4346851))

(assert (= (and b!4346851 res!1785007) b!4346859))

(assert (= (and b!4346859 (not res!1784994)) b!4346856))

(assert (= (and b!4346856 (not res!1784996)) b!4346849))

(assert (= (and b!4346849 res!1784999) b!4346864))

(assert (= (and b!4346864 res!1785003) b!4346862))

(assert (= (and b!4346849 (not res!1784995)) b!4346857))

(assert (= (and b!4346857 res!1785005) b!4346863))

(assert (= (and b!4346857 res!1785000) b!4346861))

(assert (= (and b!4346857 (not res!1784998)) b!4346852))

(assert (= (and start!419688 ((_ is Cons!48811) newBucket!200)) b!4346860))

(assert (= start!419688 b!4346855))

(declare-fun m!4955525 () Bool)

(assert (=> b!4346857 m!4955525))

(declare-fun m!4955527 () Bool)

(assert (=> b!4346857 m!4955527))

(declare-fun m!4955529 () Bool)

(assert (=> b!4346857 m!4955529))

(declare-fun m!4955531 () Bool)

(assert (=> b!4346857 m!4955531))

(declare-fun m!4955533 () Bool)

(assert (=> b!4346857 m!4955533))

(declare-fun m!4955535 () Bool)

(assert (=> b!4346857 m!4955535))

(declare-fun m!4955537 () Bool)

(assert (=> b!4346857 m!4955537))

(declare-fun m!4955539 () Bool)

(assert (=> b!4346857 m!4955539))

(declare-fun m!4955541 () Bool)

(assert (=> b!4346857 m!4955541))

(declare-fun m!4955543 () Bool)

(assert (=> b!4346857 m!4955543))

(declare-fun m!4955545 () Bool)

(assert (=> b!4346857 m!4955545))

(declare-fun m!4955547 () Bool)

(assert (=> b!4346857 m!4955547))

(assert (=> b!4346857 m!4955533))

(declare-fun m!4955549 () Bool)

(assert (=> b!4346857 m!4955549))

(declare-fun m!4955551 () Bool)

(assert (=> b!4346857 m!4955551))

(declare-fun m!4955553 () Bool)

(assert (=> b!4346857 m!4955553))

(declare-fun m!4955555 () Bool)

(assert (=> b!4346857 m!4955555))

(declare-fun m!4955557 () Bool)

(assert (=> b!4346857 m!4955557))

(declare-fun m!4955559 () Bool)

(assert (=> b!4346857 m!4955559))

(declare-fun m!4955561 () Bool)

(assert (=> b!4346857 m!4955561))

(declare-fun m!4955563 () Bool)

(assert (=> b!4346849 m!4955563))

(declare-fun m!4955565 () Bool)

(assert (=> b!4346849 m!4955565))

(declare-fun m!4955567 () Bool)

(assert (=> b!4346849 m!4955567))

(declare-fun m!4955569 () Bool)

(assert (=> b!4346849 m!4955569))

(declare-fun m!4955571 () Bool)

(assert (=> b!4346856 m!4955571))

(declare-fun m!4955573 () Bool)

(assert (=> b!4346850 m!4955573))

(assert (=> start!419688 m!4955569))

(declare-fun m!4955575 () Bool)

(assert (=> start!419688 m!4955575))

(declare-fun m!4955577 () Bool)

(assert (=> b!4346861 m!4955577))

(assert (=> b!4346864 m!4955563))

(declare-fun m!4955579 () Bool)

(assert (=> b!4346852 m!4955579))

(declare-fun m!4955581 () Bool)

(assert (=> b!4346852 m!4955581))

(assert (=> b!4346852 m!4955569))

(declare-fun m!4955583 () Bool)

(assert (=> b!4346852 m!4955583))

(declare-fun m!4955585 () Bool)

(assert (=> b!4346852 m!4955585))

(assert (=> b!4346852 m!4955583))

(declare-fun m!4955587 () Bool)

(assert (=> b!4346852 m!4955587))

(assert (=> b!4346852 m!4955585))

(declare-fun m!4955589 () Bool)

(assert (=> b!4346854 m!4955589))

(declare-fun m!4955591 () Bool)

(assert (=> b!4346851 m!4955591))

(declare-fun m!4955593 () Bool)

(assert (=> b!4346853 m!4955593))

(declare-fun m!4955595 () Bool)

(assert (=> b!4346853 m!4955595))

(declare-fun m!4955597 () Bool)

(assert (=> b!4346859 m!4955597))

(declare-fun m!4955599 () Bool)

(assert (=> b!4346859 m!4955599))

(declare-fun m!4955601 () Bool)

(assert (=> b!4346859 m!4955601))

(declare-fun m!4955603 () Bool)

(assert (=> b!4346859 m!4955603))

(declare-fun m!4955605 () Bool)

(assert (=> b!4346859 m!4955605))

(declare-fun m!4955607 () Bool)

(assert (=> b!4346863 m!4955607))

(declare-fun m!4955609 () Bool)

(assert (=> b!4346858 m!4955609))

(check-sat (not b!4346854) (not b!4346849) (not b!4346852) (not b!4346857) (not b!4346861) tp_is_empty!25001 (not b!4346863) (not b!4346850) (not b!4346864) (not b!4346860) tp_is_empty!25003 (not b!4346858) (not b!4346851) (not b!4346856) (not b!4346855) (not b!4346859) (not start!419688) (not b!4346853))
(check-sat)
