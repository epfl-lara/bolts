; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!421908 () Bool)

(assert start!421908)

(declare-fun b!4358035 () Bool)

(declare-fun e!2712100 () Bool)

(declare-fun e!2712101 () Bool)

(assert (=> b!4358035 (= e!2712100 e!2712101)))

(declare-fun res!1791345 () Bool)

(assert (=> b!4358035 (=> (not res!1791345) (not e!2712101))))

(declare-datatypes ((K!10300 0))(
  ( (K!10301 (val!16511 Int)) )
))
(declare-datatypes ((V!10546 0))(
  ( (V!10547 (val!16512 Int)) )
))
(declare-datatypes ((tuple2!48342 0))(
  ( (tuple2!48343 (_1!27465 K!10300) (_2!27465 V!10546)) )
))
(declare-datatypes ((List!49065 0))(
  ( (Nil!48941) (Cons!48941 (h!54494 tuple2!48342) (t!355985 List!49065)) )
))
(declare-datatypes ((ListMap!2213 0))(
  ( (ListMap!2214 (toList!2969 List!49065)) )
))
(declare-fun lt!1570384 () ListMap!2213)

(declare-fun key!3918 () K!10300)

(declare-fun contains!11151 (ListMap!2213 K!10300) Bool)

(assert (=> b!4358035 (= res!1791345 (contains!11151 lt!1570384 key!3918))))

(declare-datatypes ((tuple2!48344 0))(
  ( (tuple2!48345 (_1!27466 (_ BitVec 64)) (_2!27466 List!49065)) )
))
(declare-datatypes ((List!49066 0))(
  ( (Nil!48942) (Cons!48942 (h!54495 tuple2!48344) (t!355986 List!49066)) )
))
(declare-datatypes ((ListLongMap!1619 0))(
  ( (ListLongMap!1620 (toList!2970 List!49066)) )
))
(declare-fun lm!1707 () ListLongMap!1619)

(declare-fun extractMap!552 (List!49066) ListMap!2213)

(assert (=> b!4358035 (= lt!1570384 (extractMap!552 (toList!2970 lm!1707)))))

(declare-fun b!4358036 () Bool)

(declare-fun e!2712106 () Bool)

(declare-fun containsKey!698 (List!49065 K!10300) Bool)

(assert (=> b!4358036 (= e!2712106 (not (containsKey!698 (_2!27466 (h!54495 (toList!2970 lm!1707))) key!3918)))))

(declare-fun b!4358037 () Bool)

(declare-fun e!2712108 () Bool)

(assert (=> b!4358037 (= e!2712101 (not e!2712108))))

(declare-fun res!1791348 () Bool)

(assert (=> b!4358037 (=> res!1791348 e!2712108)))

(declare-fun newBucket!200 () List!49065)

(declare-fun lt!1570370 () tuple2!48342)

(declare-fun lt!1570369 () List!49065)

(declare-fun removePairForKey!463 (List!49065 K!10300) List!49065)

(assert (=> b!4358037 (= res!1791348 (not (= newBucket!200 (Cons!48941 lt!1570370 (removePairForKey!463 lt!1570369 key!3918)))))))

(declare-fun newValue!99 () V!10546)

(assert (=> b!4358037 (= lt!1570370 (tuple2!48343 key!3918 newValue!99))))

(declare-fun lambda!140757 () Int)

(declare-datatypes ((Unit!71913 0))(
  ( (Unit!71914) )
))
(declare-fun lt!1570374 () Unit!71913)

(declare-fun lt!1570373 () tuple2!48344)

(declare-fun forallContained!1769 (List!49066 Int tuple2!48344) Unit!71913)

(assert (=> b!4358037 (= lt!1570374 (forallContained!1769 (toList!2970 lm!1707) lambda!140757 lt!1570373))))

(declare-fun contains!11152 (List!49066 tuple2!48344) Bool)

(assert (=> b!4358037 (contains!11152 (toList!2970 lm!1707) lt!1570373)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4358037 (= lt!1570373 (tuple2!48345 hash!377 lt!1570369))))

(declare-fun lt!1570377 () Unit!71913)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!340 (List!49066 (_ BitVec 64) List!49065) Unit!71913)

(assert (=> b!4358037 (= lt!1570377 (lemmaGetValueByKeyImpliesContainsTuple!340 (toList!2970 lm!1707) hash!377 lt!1570369))))

(declare-fun apply!11345 (ListLongMap!1619 (_ BitVec 64)) List!49065)

(assert (=> b!4358037 (= lt!1570369 (apply!11345 lm!1707 hash!377))))

(declare-fun b!4358038 () Bool)

(declare-fun e!2712103 () Bool)

(assert (=> b!4358038 (= e!2712108 e!2712103)))

(declare-fun res!1791349 () Bool)

(assert (=> b!4358038 (=> res!1791349 e!2712103)))

(get-info :version)

(assert (=> b!4358038 (= res!1791349 (or (and ((_ is Cons!48942) (toList!2970 lm!1707)) (= (_1!27466 (h!54495 (toList!2970 lm!1707))) hash!377)) (not ((_ is Cons!48942) (toList!2970 lm!1707))) (= (_1!27466 (h!54495 (toList!2970 lm!1707))) hash!377)))))

(declare-fun e!2712107 () Bool)

(assert (=> b!4358038 e!2712107))

(declare-fun res!1791342 () Bool)

(assert (=> b!4358038 (=> (not res!1791342) (not e!2712107))))

(declare-fun lt!1570379 () ListLongMap!1619)

(declare-fun forall!9128 (List!49066 Int) Bool)

(assert (=> b!4358038 (= res!1791342 (forall!9128 (toList!2970 lt!1570379) lambda!140757))))

(declare-fun lt!1570376 () tuple2!48344)

(declare-fun +!643 (ListLongMap!1619 tuple2!48344) ListLongMap!1619)

(assert (=> b!4358038 (= lt!1570379 (+!643 lm!1707 lt!1570376))))

(assert (=> b!4358038 (= lt!1570376 (tuple2!48345 hash!377 newBucket!200))))

(declare-fun lt!1570382 () Unit!71913)

(declare-fun addValidProp!147 (ListLongMap!1619 Int (_ BitVec 64) List!49065) Unit!71913)

(assert (=> b!4358038 (= lt!1570382 (addValidProp!147 lm!1707 lambda!140757 hash!377 newBucket!200))))

(assert (=> b!4358038 (forall!9128 (toList!2970 lm!1707) lambda!140757)))

(declare-fun b!4358039 () Bool)

(declare-fun lt!1570372 () ListLongMap!1619)

(assert (=> b!4358039 (= e!2712103 (forall!9128 (toList!2970 lt!1570372) lambda!140757))))

(declare-fun lt!1570385 () ListMap!2213)

(declare-fun lt!1570378 () ListMap!2213)

(declare-fun eq!263 (ListMap!2213 ListMap!2213) Bool)

(declare-fun addToMapMapFromBucket!189 (List!49065 ListMap!2213) ListMap!2213)

(declare-fun +!644 (ListMap!2213 tuple2!48342) ListMap!2213)

(assert (=> b!4358039 (eq!263 (addToMapMapFromBucket!189 (_2!27466 (h!54495 (toList!2970 lm!1707))) lt!1570385) (+!644 lt!1570378 lt!1570370))))

(declare-fun lt!1570381 () ListMap!2213)

(declare-fun lt!1570375 () Unit!71913)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!72 (ListMap!2213 K!10300 V!10546 List!49065) Unit!71913)

(assert (=> b!4358039 (= lt!1570375 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!72 lt!1570381 key!3918 newValue!99 (_2!27466 (h!54495 (toList!2970 lm!1707)))))))

(assert (=> b!4358039 (= lt!1570384 lt!1570378)))

(assert (=> b!4358039 (= lt!1570378 (addToMapMapFromBucket!189 (_2!27466 (h!54495 (toList!2970 lm!1707))) lt!1570381))))

(declare-fun e!2712104 () Bool)

(assert (=> b!4358039 e!2712104))

(declare-fun res!1791346 () Bool)

(assert (=> b!4358039 (=> (not res!1791346) (not e!2712104))))

(declare-fun lt!1570368 () ListMap!2213)

(assert (=> b!4358039 (= res!1791346 (eq!263 lt!1570368 lt!1570385))))

(assert (=> b!4358039 (= lt!1570385 (+!644 lt!1570381 lt!1570370))))

(assert (=> b!4358039 (= lt!1570368 (extractMap!552 (toList!2970 (+!643 lt!1570372 lt!1570376))))))

(declare-fun lt!1570380 () Unit!71913)

(declare-datatypes ((Hashable!4885 0))(
  ( (HashableExt!4884 (__x!30588 Int)) )
))
(declare-fun hashF!1247 () Hashable!4885)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!97 (ListLongMap!1619 (_ BitVec 64) List!49065 K!10300 V!10546 Hashable!4885) Unit!71913)

(assert (=> b!4358039 (= lt!1570380 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!97 lt!1570372 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> b!4358039 (contains!11151 lt!1570381 key!3918)))

(assert (=> b!4358039 (= lt!1570381 (extractMap!552 (toList!2970 lt!1570372)))))

(declare-fun tail!7002 (ListLongMap!1619) ListLongMap!1619)

(assert (=> b!4358039 (= lt!1570372 (tail!7002 lm!1707))))

(declare-fun lt!1570383 () ListMap!2213)

(assert (=> b!4358039 (contains!11151 lt!1570383 key!3918)))

(declare-fun lt!1570386 () Unit!71913)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!36 (List!49065 K!10300 V!10546 ListMap!2213) Unit!71913)

(assert (=> b!4358039 (= lt!1570386 (lemmaAddToMapContainsAndNotInListThenInAcc!36 (_2!27466 (h!54495 (toList!2970 lm!1707))) key!3918 newValue!99 lt!1570383))))

(assert (=> b!4358039 (= lt!1570383 (extractMap!552 (t!355986 (toList!2970 lm!1707))))))

(assert (=> b!4358039 e!2712106))

(declare-fun res!1791343 () Bool)

(assert (=> b!4358039 (=> (not res!1791343) (not e!2712106))))

(assert (=> b!4358039 (= res!1791343 (not (containsKey!698 (apply!11345 lm!1707 (_1!27466 (h!54495 (toList!2970 lm!1707)))) key!3918)))))

(declare-fun lt!1570371 () Unit!71913)

(declare-fun lemmaNotSameHashThenCannotContainKey!40 (ListLongMap!1619 K!10300 (_ BitVec 64) Hashable!4885) Unit!71913)

(assert (=> b!4358039 (= lt!1570371 (lemmaNotSameHashThenCannotContainKey!40 lm!1707 key!3918 (_1!27466 (h!54495 (toList!2970 lm!1707))) hashF!1247))))

(declare-fun b!4358040 () Bool)

(declare-fun res!1791347 () Bool)

(assert (=> b!4358040 (=> (not res!1791347) (not e!2712100))))

(declare-fun allKeysSameHash!451 (List!49065 (_ BitVec 64) Hashable!4885) Bool)

(assert (=> b!4358040 (= res!1791347 (allKeysSameHash!451 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4358041 () Bool)

(declare-fun head!9054 (ListLongMap!1619) tuple2!48344)

(assert (=> b!4358041 (= e!2712104 (not (= (head!9054 lm!1707) lt!1570376)))))

(declare-fun b!4358042 () Bool)

(declare-fun res!1791351 () Bool)

(assert (=> b!4358042 (=> (not res!1791351) (not e!2712100))))

(declare-fun hash!1571 (Hashable!4885 K!10300) (_ BitVec 64))

(assert (=> b!4358042 (= res!1791351 (= (hash!1571 hashF!1247 key!3918) hash!377))))

(declare-fun e!2712102 () Bool)

(declare-fun b!4358043 () Bool)

(declare-fun tp_is_empty!25209 () Bool)

(declare-fun tp!1330182 () Bool)

(declare-fun tp_is_empty!25211 () Bool)

(assert (=> b!4358043 (= e!2712102 (and tp_is_empty!25209 tp_is_empty!25211 tp!1330182))))

(declare-fun b!4358045 () Bool)

(declare-fun e!2712105 () Bool)

(declare-fun tp!1330181 () Bool)

(assert (=> b!4358045 (= e!2712105 tp!1330181)))

(declare-fun b!4358046 () Bool)

(declare-fun res!1791352 () Bool)

(assert (=> b!4358046 (=> (not res!1791352) (not e!2712101))))

(declare-fun contains!11153 (ListLongMap!1619 (_ BitVec 64)) Bool)

(assert (=> b!4358046 (= res!1791352 (contains!11153 lm!1707 hash!377))))

(declare-fun b!4358047 () Bool)

(declare-fun res!1791350 () Bool)

(assert (=> b!4358047 (=> res!1791350 e!2712108)))

(declare-fun noDuplicateKeys!493 (List!49065) Bool)

(assert (=> b!4358047 (= res!1791350 (not (noDuplicateKeys!493 newBucket!200)))))

(declare-fun b!4358048 () Bool)

(declare-fun res!1791344 () Bool)

(assert (=> b!4358048 (=> (not res!1791344) (not e!2712100))))

(declare-fun allKeysSameHashInMap!597 (ListLongMap!1619 Hashable!4885) Bool)

(assert (=> b!4358048 (= res!1791344 (allKeysSameHashInMap!597 lm!1707 hashF!1247))))

(declare-fun res!1791353 () Bool)

(assert (=> start!421908 (=> (not res!1791353) (not e!2712100))))

(assert (=> start!421908 (= res!1791353 (forall!9128 (toList!2970 lm!1707) lambda!140757))))

(assert (=> start!421908 e!2712100))

(assert (=> start!421908 e!2712102))

(assert (=> start!421908 true))

(declare-fun inv!64486 (ListLongMap!1619) Bool)

(assert (=> start!421908 (and (inv!64486 lm!1707) e!2712105)))

(assert (=> start!421908 tp_is_empty!25209))

(assert (=> start!421908 tp_is_empty!25211))

(declare-fun b!4358044 () Bool)

(assert (=> b!4358044 (= e!2712107 (forall!9128 (toList!2970 lt!1570379) lambda!140757))))

(assert (= (and start!421908 res!1791353) b!4358048))

(assert (= (and b!4358048 res!1791344) b!4358042))

(assert (= (and b!4358042 res!1791351) b!4358040))

(assert (= (and b!4358040 res!1791347) b!4358035))

(assert (= (and b!4358035 res!1791345) b!4358046))

(assert (= (and b!4358046 res!1791352) b!4358037))

(assert (= (and b!4358037 (not res!1791348)) b!4358047))

(assert (= (and b!4358047 (not res!1791350)) b!4358038))

(assert (= (and b!4358038 res!1791342) b!4358044))

(assert (= (and b!4358038 (not res!1791349)) b!4358039))

(assert (= (and b!4358039 res!1791343) b!4358036))

(assert (= (and b!4358039 res!1791346) b!4358041))

(assert (= (and start!421908 ((_ is Cons!48941) newBucket!200)) b!4358043))

(assert (= start!421908 b!4358045))

(declare-fun m!4973557 () Bool)

(assert (=> b!4358035 m!4973557))

(declare-fun m!4973559 () Bool)

(assert (=> b!4358035 m!4973559))

(declare-fun m!4973561 () Bool)

(assert (=> b!4358042 m!4973561))

(declare-fun m!4973563 () Bool)

(assert (=> b!4358047 m!4973563))

(declare-fun m!4973565 () Bool)

(assert (=> b!4358040 m!4973565))

(declare-fun m!4973567 () Bool)

(assert (=> b!4358048 m!4973567))

(declare-fun m!4973569 () Bool)

(assert (=> b!4358036 m!4973569))

(declare-fun m!4973571 () Bool)

(assert (=> b!4358044 m!4973571))

(declare-fun m!4973573 () Bool)

(assert (=> b!4358037 m!4973573))

(declare-fun m!4973575 () Bool)

(assert (=> b!4358037 m!4973575))

(declare-fun m!4973577 () Bool)

(assert (=> b!4358037 m!4973577))

(declare-fun m!4973579 () Bool)

(assert (=> b!4358037 m!4973579))

(declare-fun m!4973581 () Bool)

(assert (=> b!4358037 m!4973581))

(declare-fun m!4973583 () Bool)

(assert (=> b!4358039 m!4973583))

(declare-fun m!4973585 () Bool)

(assert (=> b!4358039 m!4973585))

(declare-fun m!4973587 () Bool)

(assert (=> b!4358039 m!4973587))

(declare-fun m!4973589 () Bool)

(assert (=> b!4358039 m!4973589))

(declare-fun m!4973591 () Bool)

(assert (=> b!4358039 m!4973591))

(declare-fun m!4973593 () Bool)

(assert (=> b!4358039 m!4973593))

(declare-fun m!4973595 () Bool)

(assert (=> b!4358039 m!4973595))

(declare-fun m!4973597 () Bool)

(assert (=> b!4358039 m!4973597))

(declare-fun m!4973599 () Bool)

(assert (=> b!4358039 m!4973599))

(declare-fun m!4973601 () Bool)

(assert (=> b!4358039 m!4973601))

(assert (=> b!4358039 m!4973587))

(declare-fun m!4973603 () Bool)

(assert (=> b!4358039 m!4973603))

(declare-fun m!4973605 () Bool)

(assert (=> b!4358039 m!4973605))

(declare-fun m!4973607 () Bool)

(assert (=> b!4358039 m!4973607))

(declare-fun m!4973609 () Bool)

(assert (=> b!4358039 m!4973609))

(declare-fun m!4973611 () Bool)

(assert (=> b!4358039 m!4973611))

(declare-fun m!4973613 () Bool)

(assert (=> b!4358039 m!4973613))

(assert (=> b!4358039 m!4973601))

(declare-fun m!4973615 () Bool)

(assert (=> b!4358039 m!4973615))

(declare-fun m!4973617 () Bool)

(assert (=> b!4358039 m!4973617))

(declare-fun m!4973619 () Bool)

(assert (=> b!4358039 m!4973619))

(assert (=> b!4358039 m!4973619))

(declare-fun m!4973621 () Bool)

(assert (=> b!4358039 m!4973621))

(declare-fun m!4973623 () Bool)

(assert (=> start!421908 m!4973623))

(declare-fun m!4973625 () Bool)

(assert (=> start!421908 m!4973625))

(declare-fun m!4973627 () Bool)

(assert (=> b!4358046 m!4973627))

(assert (=> b!4358038 m!4973571))

(declare-fun m!4973629 () Bool)

(assert (=> b!4358038 m!4973629))

(declare-fun m!4973631 () Bool)

(assert (=> b!4358038 m!4973631))

(assert (=> b!4358038 m!4973623))

(declare-fun m!4973633 () Bool)

(assert (=> b!4358041 m!4973633))

(check-sat (not b!4358042) (not b!4358048) (not start!421908) (not b!4358041) (not b!4358036) (not b!4358047) (not b!4358046) tp_is_empty!25209 (not b!4358037) (not b!4358040) (not b!4358045) (not b!4358035) (not b!4358038) (not b!4358044) (not b!4358039) tp_is_empty!25211 (not b!4358043))
(check-sat)
(get-model)

(declare-fun d!1288724 () Bool)

(declare-fun res!1791364 () Bool)

(declare-fun e!2712125 () Bool)

(assert (=> d!1288724 (=> res!1791364 e!2712125)))

(assert (=> d!1288724 (= res!1791364 ((_ is Nil!48942) (toList!2970 lt!1570379)))))

(assert (=> d!1288724 (= (forall!9128 (toList!2970 lt!1570379) lambda!140757) e!2712125)))

(declare-fun b!4358075 () Bool)

(declare-fun e!2712126 () Bool)

(assert (=> b!4358075 (= e!2712125 e!2712126)))

(declare-fun res!1791365 () Bool)

(assert (=> b!4358075 (=> (not res!1791365) (not e!2712126))))

(declare-fun dynLambda!20639 (Int tuple2!48344) Bool)

(assert (=> b!4358075 (= res!1791365 (dynLambda!20639 lambda!140757 (h!54495 (toList!2970 lt!1570379))))))

(declare-fun b!4358076 () Bool)

(assert (=> b!4358076 (= e!2712126 (forall!9128 (t!355986 (toList!2970 lt!1570379)) lambda!140757))))

(assert (= (and d!1288724 (not res!1791364)) b!4358075))

(assert (= (and b!4358075 res!1791365) b!4358076))

(declare-fun b_lambda!131451 () Bool)

(assert (=> (not b_lambda!131451) (not b!4358075)))

(declare-fun m!4973637 () Bool)

(assert (=> b!4358075 m!4973637))

(declare-fun m!4973639 () Bool)

(assert (=> b!4358076 m!4973639))

(assert (=> b!4358044 d!1288724))

(declare-fun b!4358149 () Bool)

(declare-fun e!2712183 () Unit!71913)

(declare-fun Unit!71920 () Unit!71913)

(assert (=> b!4358149 (= e!2712183 Unit!71920)))

(declare-fun b!4358150 () Bool)

(declare-fun e!2712179 () Unit!71913)

(assert (=> b!4358150 (= e!2712179 e!2712183)))

(declare-fun c!741033 () Bool)

(declare-fun call!302901 () Bool)

(assert (=> b!4358150 (= c!741033 call!302901)))

(declare-fun b!4358151 () Bool)

(declare-fun e!2712178 () Bool)

(declare-fun e!2712181 () Bool)

(assert (=> b!4358151 (= e!2712178 e!2712181)))

(declare-fun res!1791398 () Bool)

(assert (=> b!4358151 (=> (not res!1791398) (not e!2712181))))

(declare-datatypes ((Option!10472 0))(
  ( (None!10471) (Some!10471 (v!43357 V!10546)) )
))
(declare-fun isDefined!7766 (Option!10472) Bool)

(declare-fun getValueByKey!458 (List!49065 K!10300) Option!10472)

(assert (=> b!4358151 (= res!1791398 (isDefined!7766 (getValueByKey!458 (toList!2969 lt!1570384) key!3918)))))

(declare-fun b!4358152 () Bool)

(assert (=> b!4358152 false))

(declare-fun lt!1570456 () Unit!71913)

(declare-fun lt!1570454 () Unit!71913)

(assert (=> b!4358152 (= lt!1570456 lt!1570454)))

(declare-fun containsKey!701 (List!49065 K!10300) Bool)

(assert (=> b!4358152 (containsKey!701 (toList!2969 lt!1570384) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!126 (List!49065 K!10300) Unit!71913)

(assert (=> b!4358152 (= lt!1570454 (lemmaInGetKeysListThenContainsKey!126 (toList!2969 lt!1570384) key!3918))))

(declare-fun Unit!71921 () Unit!71913)

(assert (=> b!4358152 (= e!2712183 Unit!71921)))

(declare-fun bm!302896 () Bool)

(declare-datatypes ((List!49068 0))(
  ( (Nil!48944) (Cons!48944 (h!54499 K!10300) (t!355988 List!49068)) )
))
(declare-fun e!2712180 () List!49068)

(declare-fun contains!11155 (List!49068 K!10300) Bool)

(assert (=> bm!302896 (= call!302901 (contains!11155 e!2712180 key!3918))))

(declare-fun c!741034 () Bool)

(declare-fun c!741032 () Bool)

(assert (=> bm!302896 (= c!741034 c!741032)))

(declare-fun d!1288726 () Bool)

(assert (=> d!1288726 e!2712178))

(declare-fun res!1791396 () Bool)

(assert (=> d!1288726 (=> res!1791396 e!2712178)))

(declare-fun e!2712182 () Bool)

(assert (=> d!1288726 (= res!1791396 e!2712182)))

(declare-fun res!1791397 () Bool)

(assert (=> d!1288726 (=> (not res!1791397) (not e!2712182))))

(declare-fun lt!1570460 () Bool)

(assert (=> d!1288726 (= res!1791397 (not lt!1570460))))

(declare-fun lt!1570458 () Bool)

(assert (=> d!1288726 (= lt!1570460 lt!1570458)))

(declare-fun lt!1570455 () Unit!71913)

(assert (=> d!1288726 (= lt!1570455 e!2712179)))

(assert (=> d!1288726 (= c!741032 lt!1570458)))

(assert (=> d!1288726 (= lt!1570458 (containsKey!701 (toList!2969 lt!1570384) key!3918))))

(assert (=> d!1288726 (= (contains!11151 lt!1570384 key!3918) lt!1570460)))

(declare-fun b!4358153 () Bool)

(declare-fun keys!16534 (ListMap!2213) List!49068)

(assert (=> b!4358153 (= e!2712181 (contains!11155 (keys!16534 lt!1570384) key!3918))))

(declare-fun b!4358154 () Bool)

(declare-fun lt!1570461 () Unit!71913)

(assert (=> b!4358154 (= e!2712179 lt!1570461)))

(declare-fun lt!1570459 () Unit!71913)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!369 (List!49065 K!10300) Unit!71913)

(assert (=> b!4358154 (= lt!1570459 (lemmaContainsKeyImpliesGetValueByKeyDefined!369 (toList!2969 lt!1570384) key!3918))))

(assert (=> b!4358154 (isDefined!7766 (getValueByKey!458 (toList!2969 lt!1570384) key!3918))))

(declare-fun lt!1570457 () Unit!71913)

(assert (=> b!4358154 (= lt!1570457 lt!1570459)))

(declare-fun lemmaInListThenGetKeysListContains!125 (List!49065 K!10300) Unit!71913)

(assert (=> b!4358154 (= lt!1570461 (lemmaInListThenGetKeysListContains!125 (toList!2969 lt!1570384) key!3918))))

(assert (=> b!4358154 call!302901))

(declare-fun b!4358155 () Bool)

(declare-fun getKeysList!128 (List!49065) List!49068)

(assert (=> b!4358155 (= e!2712180 (getKeysList!128 (toList!2969 lt!1570384)))))

(declare-fun b!4358156 () Bool)

(assert (=> b!4358156 (= e!2712182 (not (contains!11155 (keys!16534 lt!1570384) key!3918)))))

(declare-fun b!4358157 () Bool)

(assert (=> b!4358157 (= e!2712180 (keys!16534 lt!1570384))))

(assert (= (and d!1288726 c!741032) b!4358154))

(assert (= (and d!1288726 (not c!741032)) b!4358150))

(assert (= (and b!4358150 c!741033) b!4358152))

(assert (= (and b!4358150 (not c!741033)) b!4358149))

(assert (= (or b!4358154 b!4358150) bm!302896))

(assert (= (and bm!302896 c!741034) b!4358155))

(assert (= (and bm!302896 (not c!741034)) b!4358157))

(assert (= (and d!1288726 res!1791397) b!4358156))

(assert (= (and d!1288726 (not res!1791396)) b!4358151))

(assert (= (and b!4358151 res!1791398) b!4358153))

(declare-fun m!4973703 () Bool)

(assert (=> b!4358151 m!4973703))

(assert (=> b!4358151 m!4973703))

(declare-fun m!4973705 () Bool)

(assert (=> b!4358151 m!4973705))

(declare-fun m!4973707 () Bool)

(assert (=> b!4358155 m!4973707))

(declare-fun m!4973709 () Bool)

(assert (=> b!4358157 m!4973709))

(declare-fun m!4973711 () Bool)

(assert (=> bm!302896 m!4973711))

(declare-fun m!4973713 () Bool)

(assert (=> b!4358154 m!4973713))

(assert (=> b!4358154 m!4973703))

(assert (=> b!4358154 m!4973703))

(assert (=> b!4358154 m!4973705))

(declare-fun m!4973715 () Bool)

(assert (=> b!4358154 m!4973715))

(assert (=> b!4358156 m!4973709))

(assert (=> b!4358156 m!4973709))

(declare-fun m!4973717 () Bool)

(assert (=> b!4358156 m!4973717))

(declare-fun m!4973719 () Bool)

(assert (=> b!4358152 m!4973719))

(declare-fun m!4973721 () Bool)

(assert (=> b!4358152 m!4973721))

(assert (=> d!1288726 m!4973719))

(assert (=> b!4358153 m!4973709))

(assert (=> b!4358153 m!4973709))

(assert (=> b!4358153 m!4973717))

(assert (=> b!4358035 d!1288726))

(declare-fun bs!632852 () Bool)

(declare-fun d!1288746 () Bool)

(assert (= bs!632852 (and d!1288746 start!421908)))

(declare-fun lambda!140768 () Int)

(assert (=> bs!632852 (= lambda!140768 lambda!140757)))

(declare-fun lt!1570489 () ListMap!2213)

(declare-fun invariantList!680 (List!49065) Bool)

(assert (=> d!1288746 (invariantList!680 (toList!2969 lt!1570489))))

(declare-fun e!2712214 () ListMap!2213)

(assert (=> d!1288746 (= lt!1570489 e!2712214)))

(declare-fun c!741042 () Bool)

(assert (=> d!1288746 (= c!741042 ((_ is Cons!48942) (toList!2970 lm!1707)))))

(assert (=> d!1288746 (forall!9128 (toList!2970 lm!1707) lambda!140768)))

(assert (=> d!1288746 (= (extractMap!552 (toList!2970 lm!1707)) lt!1570489)))

(declare-fun b!4358199 () Bool)

(assert (=> b!4358199 (= e!2712214 (addToMapMapFromBucket!189 (_2!27466 (h!54495 (toList!2970 lm!1707))) (extractMap!552 (t!355986 (toList!2970 lm!1707)))))))

(declare-fun b!4358200 () Bool)

(assert (=> b!4358200 (= e!2712214 (ListMap!2214 Nil!48941))))

(assert (= (and d!1288746 c!741042) b!4358199))

(assert (= (and d!1288746 (not c!741042)) b!4358200))

(declare-fun m!4973793 () Bool)

(assert (=> d!1288746 m!4973793))

(declare-fun m!4973795 () Bool)

(assert (=> d!1288746 m!4973795))

(assert (=> b!4358199 m!4973589))

(assert (=> b!4358199 m!4973589))

(declare-fun m!4973797 () Bool)

(assert (=> b!4358199 m!4973797))

(assert (=> b!4358035 d!1288746))

(declare-fun d!1288766 () Bool)

(declare-fun e!2712219 () Bool)

(assert (=> d!1288766 e!2712219))

(declare-fun res!1791427 () Bool)

(assert (=> d!1288766 (=> res!1791427 e!2712219)))

(declare-fun lt!1570506 () Bool)

(assert (=> d!1288766 (= res!1791427 (not lt!1570506))))

(declare-fun lt!1570505 () Bool)

(assert (=> d!1288766 (= lt!1570506 lt!1570505)))

(declare-fun lt!1570507 () Unit!71913)

(declare-fun e!2712220 () Unit!71913)

(assert (=> d!1288766 (= lt!1570507 e!2712220)))

(declare-fun c!741045 () Bool)

(assert (=> d!1288766 (= c!741045 lt!1570505)))

(declare-fun containsKey!702 (List!49066 (_ BitVec 64)) Bool)

(assert (=> d!1288766 (= lt!1570505 (containsKey!702 (toList!2970 lm!1707) hash!377))))

(assert (=> d!1288766 (= (contains!11153 lm!1707 hash!377) lt!1570506)))

(declare-fun b!4358207 () Bool)

(declare-fun lt!1570504 () Unit!71913)

(assert (=> b!4358207 (= e!2712220 lt!1570504)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!370 (List!49066 (_ BitVec 64)) Unit!71913)

(assert (=> b!4358207 (= lt!1570504 (lemmaContainsKeyImpliesGetValueByKeyDefined!370 (toList!2970 lm!1707) hash!377))))

(declare-datatypes ((Option!10473 0))(
  ( (None!10472) (Some!10472 (v!43358 List!49065)) )
))
(declare-fun isDefined!7767 (Option!10473) Bool)

(declare-fun getValueByKey!459 (List!49066 (_ BitVec 64)) Option!10473)

(assert (=> b!4358207 (isDefined!7767 (getValueByKey!459 (toList!2970 lm!1707) hash!377))))

(declare-fun b!4358208 () Bool)

(declare-fun Unit!71933 () Unit!71913)

(assert (=> b!4358208 (= e!2712220 Unit!71933)))

(declare-fun b!4358209 () Bool)

(assert (=> b!4358209 (= e!2712219 (isDefined!7767 (getValueByKey!459 (toList!2970 lm!1707) hash!377)))))

(assert (= (and d!1288766 c!741045) b!4358207))

(assert (= (and d!1288766 (not c!741045)) b!4358208))

(assert (= (and d!1288766 (not res!1791427)) b!4358209))

(declare-fun m!4973819 () Bool)

(assert (=> d!1288766 m!4973819))

(declare-fun m!4973821 () Bool)

(assert (=> b!4358207 m!4973821))

(declare-fun m!4973823 () Bool)

(assert (=> b!4358207 m!4973823))

(assert (=> b!4358207 m!4973823))

(declare-fun m!4973825 () Bool)

(assert (=> b!4358207 m!4973825))

(assert (=> b!4358209 m!4973823))

(assert (=> b!4358209 m!4973823))

(assert (=> b!4358209 m!4973825))

(assert (=> b!4358046 d!1288766))

(declare-fun d!1288774 () Bool)

(declare-fun res!1791432 () Bool)

(declare-fun e!2712225 () Bool)

(assert (=> d!1288774 (=> res!1791432 e!2712225)))

(assert (=> d!1288774 (= res!1791432 (and ((_ is Cons!48941) (_2!27466 (h!54495 (toList!2970 lm!1707)))) (= (_1!27465 (h!54494 (_2!27466 (h!54495 (toList!2970 lm!1707))))) key!3918)))))

(assert (=> d!1288774 (= (containsKey!698 (_2!27466 (h!54495 (toList!2970 lm!1707))) key!3918) e!2712225)))

(declare-fun b!4358214 () Bool)

(declare-fun e!2712226 () Bool)

(assert (=> b!4358214 (= e!2712225 e!2712226)))

(declare-fun res!1791433 () Bool)

(assert (=> b!4358214 (=> (not res!1791433) (not e!2712226))))

(assert (=> b!4358214 (= res!1791433 ((_ is Cons!48941) (_2!27466 (h!54495 (toList!2970 lm!1707)))))))

(declare-fun b!4358215 () Bool)

(assert (=> b!4358215 (= e!2712226 (containsKey!698 (t!355985 (_2!27466 (h!54495 (toList!2970 lm!1707)))) key!3918))))

(assert (= (and d!1288774 (not res!1791432)) b!4358214))

(assert (= (and b!4358214 res!1791433) b!4358215))

(declare-fun m!4973827 () Bool)

(assert (=> b!4358215 m!4973827))

(assert (=> b!4358036 d!1288774))

(declare-fun d!1288776 () Bool)

(declare-fun res!1791438 () Bool)

(declare-fun e!2712231 () Bool)

(assert (=> d!1288776 (=> res!1791438 e!2712231)))

(assert (=> d!1288776 (= res!1791438 (not ((_ is Cons!48941) newBucket!200)))))

(assert (=> d!1288776 (= (noDuplicateKeys!493 newBucket!200) e!2712231)))

(declare-fun b!4358220 () Bool)

(declare-fun e!2712232 () Bool)

(assert (=> b!4358220 (= e!2712231 e!2712232)))

(declare-fun res!1791439 () Bool)

(assert (=> b!4358220 (=> (not res!1791439) (not e!2712232))))

(assert (=> b!4358220 (= res!1791439 (not (containsKey!698 (t!355985 newBucket!200) (_1!27465 (h!54494 newBucket!200)))))))

(declare-fun b!4358221 () Bool)

(assert (=> b!4358221 (= e!2712232 (noDuplicateKeys!493 (t!355985 newBucket!200)))))

(assert (= (and d!1288776 (not res!1791438)) b!4358220))

(assert (= (and b!4358220 res!1791439) b!4358221))

(declare-fun m!4973829 () Bool)

(assert (=> b!4358220 m!4973829))

(declare-fun m!4973831 () Bool)

(assert (=> b!4358221 m!4973831))

(assert (=> b!4358047 d!1288776))

(declare-fun d!1288778 () Bool)

(declare-fun get!15899 (Option!10473) List!49065)

(assert (=> d!1288778 (= (apply!11345 lm!1707 hash!377) (get!15899 (getValueByKey!459 (toList!2970 lm!1707) hash!377)))))

(declare-fun bs!632865 () Bool)

(assert (= bs!632865 d!1288778))

(assert (=> bs!632865 m!4973823))

(assert (=> bs!632865 m!4973823))

(declare-fun m!4973833 () Bool)

(assert (=> bs!632865 m!4973833))

(assert (=> b!4358037 d!1288778))

(declare-fun d!1288780 () Bool)

(declare-fun lt!1570510 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7726 (List!49066) (InoxSet tuple2!48344))

(assert (=> d!1288780 (= lt!1570510 (select (content!7726 (toList!2970 lm!1707)) lt!1570373))))

(declare-fun e!2712237 () Bool)

(assert (=> d!1288780 (= lt!1570510 e!2712237)))

(declare-fun res!1791445 () Bool)

(assert (=> d!1288780 (=> (not res!1791445) (not e!2712237))))

(assert (=> d!1288780 (= res!1791445 ((_ is Cons!48942) (toList!2970 lm!1707)))))

(assert (=> d!1288780 (= (contains!11152 (toList!2970 lm!1707) lt!1570373) lt!1570510)))

(declare-fun b!4358226 () Bool)

(declare-fun e!2712238 () Bool)

(assert (=> b!4358226 (= e!2712237 e!2712238)))

(declare-fun res!1791444 () Bool)

(assert (=> b!4358226 (=> res!1791444 e!2712238)))

(assert (=> b!4358226 (= res!1791444 (= (h!54495 (toList!2970 lm!1707)) lt!1570373))))

(declare-fun b!4358227 () Bool)

(assert (=> b!4358227 (= e!2712238 (contains!11152 (t!355986 (toList!2970 lm!1707)) lt!1570373))))

(assert (= (and d!1288780 res!1791445) b!4358226))

(assert (= (and b!4358226 (not res!1791444)) b!4358227))

(declare-fun m!4973835 () Bool)

(assert (=> d!1288780 m!4973835))

(declare-fun m!4973837 () Bool)

(assert (=> d!1288780 m!4973837))

(declare-fun m!4973839 () Bool)

(assert (=> b!4358227 m!4973839))

(assert (=> b!4358037 d!1288780))

(declare-fun b!4358236 () Bool)

(declare-fun e!2712243 () List!49065)

(assert (=> b!4358236 (= e!2712243 (t!355985 lt!1570369))))

(declare-fun b!4358237 () Bool)

(declare-fun e!2712244 () List!49065)

(assert (=> b!4358237 (= e!2712243 e!2712244)))

(declare-fun c!741050 () Bool)

(assert (=> b!4358237 (= c!741050 ((_ is Cons!48941) lt!1570369))))

(declare-fun b!4358239 () Bool)

(assert (=> b!4358239 (= e!2712244 Nil!48941)))

(declare-fun b!4358238 () Bool)

(assert (=> b!4358238 (= e!2712244 (Cons!48941 (h!54494 lt!1570369) (removePairForKey!463 (t!355985 lt!1570369) key!3918)))))

(declare-fun d!1288782 () Bool)

(declare-fun lt!1570513 () List!49065)

(assert (=> d!1288782 (not (containsKey!698 lt!1570513 key!3918))))

(assert (=> d!1288782 (= lt!1570513 e!2712243)))

(declare-fun c!741051 () Bool)

(assert (=> d!1288782 (= c!741051 (and ((_ is Cons!48941) lt!1570369) (= (_1!27465 (h!54494 lt!1570369)) key!3918)))))

(assert (=> d!1288782 (noDuplicateKeys!493 lt!1570369)))

(assert (=> d!1288782 (= (removePairForKey!463 lt!1570369 key!3918) lt!1570513)))

(assert (= (and d!1288782 c!741051) b!4358236))

(assert (= (and d!1288782 (not c!741051)) b!4358237))

(assert (= (and b!4358237 c!741050) b!4358238))

(assert (= (and b!4358237 (not c!741050)) b!4358239))

(declare-fun m!4973841 () Bool)

(assert (=> b!4358238 m!4973841))

(declare-fun m!4973843 () Bool)

(assert (=> d!1288782 m!4973843))

(declare-fun m!4973845 () Bool)

(assert (=> d!1288782 m!4973845))

(assert (=> b!4358037 d!1288782))

(declare-fun d!1288784 () Bool)

(assert (=> d!1288784 (contains!11152 (toList!2970 lm!1707) (tuple2!48345 hash!377 lt!1570369))))

(declare-fun lt!1570516 () Unit!71913)

(declare-fun choose!26943 (List!49066 (_ BitVec 64) List!49065) Unit!71913)

(assert (=> d!1288784 (= lt!1570516 (choose!26943 (toList!2970 lm!1707) hash!377 lt!1570369))))

(declare-fun e!2712247 () Bool)

(assert (=> d!1288784 e!2712247))

(declare-fun res!1791448 () Bool)

(assert (=> d!1288784 (=> (not res!1791448) (not e!2712247))))

(declare-fun isStrictlySorted!106 (List!49066) Bool)

(assert (=> d!1288784 (= res!1791448 (isStrictlySorted!106 (toList!2970 lm!1707)))))

(assert (=> d!1288784 (= (lemmaGetValueByKeyImpliesContainsTuple!340 (toList!2970 lm!1707) hash!377 lt!1570369) lt!1570516)))

(declare-fun b!4358242 () Bool)

(assert (=> b!4358242 (= e!2712247 (= (getValueByKey!459 (toList!2970 lm!1707) hash!377) (Some!10472 lt!1570369)))))

(assert (= (and d!1288784 res!1791448) b!4358242))

(declare-fun m!4973847 () Bool)

(assert (=> d!1288784 m!4973847))

(declare-fun m!4973849 () Bool)

(assert (=> d!1288784 m!4973849))

(declare-fun m!4973851 () Bool)

(assert (=> d!1288784 m!4973851))

(assert (=> b!4358242 m!4973823))

(assert (=> b!4358037 d!1288784))

(declare-fun d!1288786 () Bool)

(assert (=> d!1288786 (dynLambda!20639 lambda!140757 lt!1570373)))

(declare-fun lt!1570519 () Unit!71913)

(declare-fun choose!26944 (List!49066 Int tuple2!48344) Unit!71913)

(assert (=> d!1288786 (= lt!1570519 (choose!26944 (toList!2970 lm!1707) lambda!140757 lt!1570373))))

(declare-fun e!2712250 () Bool)

(assert (=> d!1288786 e!2712250))

(declare-fun res!1791451 () Bool)

(assert (=> d!1288786 (=> (not res!1791451) (not e!2712250))))

(assert (=> d!1288786 (= res!1791451 (forall!9128 (toList!2970 lm!1707) lambda!140757))))

(assert (=> d!1288786 (= (forallContained!1769 (toList!2970 lm!1707) lambda!140757 lt!1570373) lt!1570519)))

(declare-fun b!4358245 () Bool)

(assert (=> b!4358245 (= e!2712250 (contains!11152 (toList!2970 lm!1707) lt!1570373))))

(assert (= (and d!1288786 res!1791451) b!4358245))

(declare-fun b_lambda!131461 () Bool)

(assert (=> (not b_lambda!131461) (not d!1288786)))

(declare-fun m!4973853 () Bool)

(assert (=> d!1288786 m!4973853))

(declare-fun m!4973855 () Bool)

(assert (=> d!1288786 m!4973855))

(assert (=> d!1288786 m!4973623))

(assert (=> b!4358245 m!4973579))

(assert (=> b!4358037 d!1288786))

(declare-fun bs!632866 () Bool)

(declare-fun d!1288788 () Bool)

(assert (= bs!632866 (and d!1288788 start!421908)))

(declare-fun lambda!140777 () Int)

(assert (=> bs!632866 (not (= lambda!140777 lambda!140757))))

(declare-fun bs!632867 () Bool)

(assert (= bs!632867 (and d!1288788 d!1288746)))

(assert (=> bs!632867 (not (= lambda!140777 lambda!140768))))

(assert (=> d!1288788 true))

(assert (=> d!1288788 (= (allKeysSameHashInMap!597 lm!1707 hashF!1247) (forall!9128 (toList!2970 lm!1707) lambda!140777))))

(declare-fun bs!632868 () Bool)

(assert (= bs!632868 d!1288788))

(declare-fun m!4973857 () Bool)

(assert (=> bs!632868 m!4973857))

(assert (=> b!4358048 d!1288788))

(assert (=> b!4358038 d!1288724))

(declare-fun d!1288790 () Bool)

(declare-fun e!2712253 () Bool)

(assert (=> d!1288790 e!2712253))

(declare-fun res!1791456 () Bool)

(assert (=> d!1288790 (=> (not res!1791456) (not e!2712253))))

(declare-fun lt!1570529 () ListLongMap!1619)

(assert (=> d!1288790 (= res!1791456 (contains!11153 lt!1570529 (_1!27466 lt!1570376)))))

(declare-fun lt!1570530 () List!49066)

(assert (=> d!1288790 (= lt!1570529 (ListLongMap!1620 lt!1570530))))

(declare-fun lt!1570528 () Unit!71913)

(declare-fun lt!1570531 () Unit!71913)

(assert (=> d!1288790 (= lt!1570528 lt!1570531)))

(assert (=> d!1288790 (= (getValueByKey!459 lt!1570530 (_1!27466 lt!1570376)) (Some!10472 (_2!27466 lt!1570376)))))

(declare-fun lemmaContainsTupThenGetReturnValue!231 (List!49066 (_ BitVec 64) List!49065) Unit!71913)

(assert (=> d!1288790 (= lt!1570531 (lemmaContainsTupThenGetReturnValue!231 lt!1570530 (_1!27466 lt!1570376) (_2!27466 lt!1570376)))))

(declare-fun insertStrictlySorted!137 (List!49066 (_ BitVec 64) List!49065) List!49066)

(assert (=> d!1288790 (= lt!1570530 (insertStrictlySorted!137 (toList!2970 lm!1707) (_1!27466 lt!1570376) (_2!27466 lt!1570376)))))

(assert (=> d!1288790 (= (+!643 lm!1707 lt!1570376) lt!1570529)))

(declare-fun b!4358252 () Bool)

(declare-fun res!1791457 () Bool)

(assert (=> b!4358252 (=> (not res!1791457) (not e!2712253))))

(assert (=> b!4358252 (= res!1791457 (= (getValueByKey!459 (toList!2970 lt!1570529) (_1!27466 lt!1570376)) (Some!10472 (_2!27466 lt!1570376))))))

(declare-fun b!4358253 () Bool)

(assert (=> b!4358253 (= e!2712253 (contains!11152 (toList!2970 lt!1570529) lt!1570376))))

(assert (= (and d!1288790 res!1791456) b!4358252))

(assert (= (and b!4358252 res!1791457) b!4358253))

(declare-fun m!4973859 () Bool)

(assert (=> d!1288790 m!4973859))

(declare-fun m!4973861 () Bool)

(assert (=> d!1288790 m!4973861))

(declare-fun m!4973863 () Bool)

(assert (=> d!1288790 m!4973863))

(declare-fun m!4973865 () Bool)

(assert (=> d!1288790 m!4973865))

(declare-fun m!4973867 () Bool)

(assert (=> b!4358252 m!4973867))

(declare-fun m!4973869 () Bool)

(assert (=> b!4358253 m!4973869))

(assert (=> b!4358038 d!1288790))

(declare-fun d!1288792 () Bool)

(assert (=> d!1288792 (forall!9128 (toList!2970 (+!643 lm!1707 (tuple2!48345 hash!377 newBucket!200))) lambda!140757)))

(declare-fun lt!1570534 () Unit!71913)

(declare-fun choose!26945 (ListLongMap!1619 Int (_ BitVec 64) List!49065) Unit!71913)

(assert (=> d!1288792 (= lt!1570534 (choose!26945 lm!1707 lambda!140757 hash!377 newBucket!200))))

(declare-fun e!2712256 () Bool)

(assert (=> d!1288792 e!2712256))

(declare-fun res!1791460 () Bool)

(assert (=> d!1288792 (=> (not res!1791460) (not e!2712256))))

(assert (=> d!1288792 (= res!1791460 (forall!9128 (toList!2970 lm!1707) lambda!140757))))

(assert (=> d!1288792 (= (addValidProp!147 lm!1707 lambda!140757 hash!377 newBucket!200) lt!1570534)))

(declare-fun b!4358257 () Bool)

(assert (=> b!4358257 (= e!2712256 (dynLambda!20639 lambda!140757 (tuple2!48345 hash!377 newBucket!200)))))

(assert (= (and d!1288792 res!1791460) b!4358257))

(declare-fun b_lambda!131463 () Bool)

(assert (=> (not b_lambda!131463) (not b!4358257)))

(declare-fun m!4973871 () Bool)

(assert (=> d!1288792 m!4973871))

(declare-fun m!4973873 () Bool)

(assert (=> d!1288792 m!4973873))

(declare-fun m!4973875 () Bool)

(assert (=> d!1288792 m!4973875))

(assert (=> d!1288792 m!4973623))

(declare-fun m!4973877 () Bool)

(assert (=> b!4358257 m!4973877))

(assert (=> b!4358038 d!1288792))

(declare-fun d!1288794 () Bool)

(declare-fun res!1791461 () Bool)

(declare-fun e!2712257 () Bool)

(assert (=> d!1288794 (=> res!1791461 e!2712257)))

(assert (=> d!1288794 (= res!1791461 ((_ is Nil!48942) (toList!2970 lm!1707)))))

(assert (=> d!1288794 (= (forall!9128 (toList!2970 lm!1707) lambda!140757) e!2712257)))

(declare-fun b!4358258 () Bool)

(declare-fun e!2712258 () Bool)

(assert (=> b!4358258 (= e!2712257 e!2712258)))

(declare-fun res!1791462 () Bool)

(assert (=> b!4358258 (=> (not res!1791462) (not e!2712258))))

(assert (=> b!4358258 (= res!1791462 (dynLambda!20639 lambda!140757 (h!54495 (toList!2970 lm!1707))))))

(declare-fun b!4358259 () Bool)

(assert (=> b!4358259 (= e!2712258 (forall!9128 (t!355986 (toList!2970 lm!1707)) lambda!140757))))

(assert (= (and d!1288794 (not res!1791461)) b!4358258))

(assert (= (and b!4358258 res!1791462) b!4358259))

(declare-fun b_lambda!131465 () Bool)

(assert (=> (not b_lambda!131465) (not b!4358258)))

(declare-fun m!4973879 () Bool)

(assert (=> b!4358258 m!4973879))

(declare-fun m!4973881 () Bool)

(assert (=> b!4358259 m!4973881))

(assert (=> b!4358038 d!1288794))

(assert (=> start!421908 d!1288794))

(declare-fun d!1288796 () Bool)

(assert (=> d!1288796 (= (inv!64486 lm!1707) (isStrictlySorted!106 (toList!2970 lm!1707)))))

(declare-fun bs!632869 () Bool)

(assert (= bs!632869 d!1288796))

(assert (=> bs!632869 m!4973851))

(assert (=> start!421908 d!1288796))

(declare-fun d!1288798 () Bool)

(assert (=> d!1288798 (= (apply!11345 lm!1707 (_1!27466 (h!54495 (toList!2970 lm!1707)))) (get!15899 (getValueByKey!459 (toList!2970 lm!1707) (_1!27466 (h!54495 (toList!2970 lm!1707))))))))

(declare-fun bs!632870 () Bool)

(assert (= bs!632870 d!1288798))

(declare-fun m!4973883 () Bool)

(assert (=> bs!632870 m!4973883))

(assert (=> bs!632870 m!4973883))

(declare-fun m!4973885 () Bool)

(assert (=> bs!632870 m!4973885))

(assert (=> b!4358039 d!1288798))

(declare-fun d!1288800 () Bool)

(declare-fun res!1791463 () Bool)

(declare-fun e!2712259 () Bool)

(assert (=> d!1288800 (=> res!1791463 e!2712259)))

(assert (=> d!1288800 (= res!1791463 (and ((_ is Cons!48941) (apply!11345 lm!1707 (_1!27466 (h!54495 (toList!2970 lm!1707))))) (= (_1!27465 (h!54494 (apply!11345 lm!1707 (_1!27466 (h!54495 (toList!2970 lm!1707)))))) key!3918)))))

(assert (=> d!1288800 (= (containsKey!698 (apply!11345 lm!1707 (_1!27466 (h!54495 (toList!2970 lm!1707)))) key!3918) e!2712259)))

(declare-fun b!4358260 () Bool)

(declare-fun e!2712260 () Bool)

(assert (=> b!4358260 (= e!2712259 e!2712260)))

(declare-fun res!1791464 () Bool)

(assert (=> b!4358260 (=> (not res!1791464) (not e!2712260))))

(assert (=> b!4358260 (= res!1791464 ((_ is Cons!48941) (apply!11345 lm!1707 (_1!27466 (h!54495 (toList!2970 lm!1707))))))))

(declare-fun b!4358261 () Bool)

(assert (=> b!4358261 (= e!2712260 (containsKey!698 (t!355985 (apply!11345 lm!1707 (_1!27466 (h!54495 (toList!2970 lm!1707))))) key!3918))))

(assert (= (and d!1288800 (not res!1791463)) b!4358260))

(assert (= (and b!4358260 res!1791464) b!4358261))

(declare-fun m!4973887 () Bool)

(assert (=> b!4358261 m!4973887))

(assert (=> b!4358039 d!1288800))

(declare-fun bs!632871 () Bool)

(declare-fun d!1288802 () Bool)

(assert (= bs!632871 (and d!1288802 start!421908)))

(declare-fun lambda!140804 () Int)

(assert (=> bs!632871 (= lambda!140804 lambda!140757)))

(declare-fun bs!632872 () Bool)

(assert (= bs!632872 (and d!1288802 d!1288746)))

(assert (=> bs!632872 (= lambda!140804 lambda!140768)))

(declare-fun bs!632873 () Bool)

(assert (= bs!632873 (and d!1288802 d!1288788)))

(assert (=> bs!632873 (not (= lambda!140804 lambda!140777))))

(assert (=> d!1288802 (eq!263 (extractMap!552 (toList!2970 (+!643 lt!1570372 (tuple2!48345 hash!377 newBucket!200)))) (+!644 (extractMap!552 (toList!2970 lt!1570372)) (tuple2!48343 key!3918 newValue!99)))))

(declare-fun lt!1570579 () Unit!71913)

(declare-fun choose!26946 (ListLongMap!1619 (_ BitVec 64) List!49065 K!10300 V!10546 Hashable!4885) Unit!71913)

(assert (=> d!1288802 (= lt!1570579 (choose!26946 lt!1570372 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1288802 (forall!9128 (toList!2970 lt!1570372) lambda!140804)))

(assert (=> d!1288802 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!97 lt!1570372 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1570579)))

(declare-fun bs!632874 () Bool)

(assert (= bs!632874 d!1288802))

(declare-fun m!4973889 () Bool)

(assert (=> bs!632874 m!4973889))

(declare-fun m!4973891 () Bool)

(assert (=> bs!632874 m!4973891))

(declare-fun m!4973893 () Bool)

(assert (=> bs!632874 m!4973893))

(declare-fun m!4973895 () Bool)

(assert (=> bs!632874 m!4973895))

(assert (=> bs!632874 m!4973889))

(assert (=> bs!632874 m!4973599))

(assert (=> bs!632874 m!4973891))

(declare-fun m!4973897 () Bool)

(assert (=> bs!632874 m!4973897))

(declare-fun m!4973899 () Bool)

(assert (=> bs!632874 m!4973899))

(assert (=> bs!632874 m!4973599))

(assert (=> b!4358039 d!1288802))

(declare-fun bs!632875 () Bool)

(declare-fun d!1288804 () Bool)

(assert (= bs!632875 (and d!1288804 start!421908)))

(declare-fun lambda!140805 () Int)

(assert (=> bs!632875 (= lambda!140805 lambda!140757)))

(declare-fun bs!632876 () Bool)

(assert (= bs!632876 (and d!1288804 d!1288746)))

(assert (=> bs!632876 (= lambda!140805 lambda!140768)))

(declare-fun bs!632877 () Bool)

(assert (= bs!632877 (and d!1288804 d!1288788)))

(assert (=> bs!632877 (not (= lambda!140805 lambda!140777))))

(declare-fun bs!632878 () Bool)

(assert (= bs!632878 (and d!1288804 d!1288802)))

(assert (=> bs!632878 (= lambda!140805 lambda!140804)))

(declare-fun lt!1570580 () ListMap!2213)

(assert (=> d!1288804 (invariantList!680 (toList!2969 lt!1570580))))

(declare-fun e!2712265 () ListMap!2213)

(assert (=> d!1288804 (= lt!1570580 e!2712265)))

(declare-fun c!741054 () Bool)

(assert (=> d!1288804 (= c!741054 ((_ is Cons!48942) (toList!2970 lt!1570372)))))

(assert (=> d!1288804 (forall!9128 (toList!2970 lt!1570372) lambda!140805)))

(assert (=> d!1288804 (= (extractMap!552 (toList!2970 lt!1570372)) lt!1570580)))

(declare-fun b!4358268 () Bool)

(assert (=> b!4358268 (= e!2712265 (addToMapMapFromBucket!189 (_2!27466 (h!54495 (toList!2970 lt!1570372))) (extractMap!552 (t!355986 (toList!2970 lt!1570372)))))))

(declare-fun b!4358269 () Bool)

(assert (=> b!4358269 (= e!2712265 (ListMap!2214 Nil!48941))))

(assert (= (and d!1288804 c!741054) b!4358268))

(assert (= (and d!1288804 (not c!741054)) b!4358269))

(declare-fun m!4973901 () Bool)

(assert (=> d!1288804 m!4973901))

(declare-fun m!4973903 () Bool)

(assert (=> d!1288804 m!4973903))

(declare-fun m!4973905 () Bool)

(assert (=> b!4358268 m!4973905))

(assert (=> b!4358268 m!4973905))

(declare-fun m!4973907 () Bool)

(assert (=> b!4358268 m!4973907))

(assert (=> b!4358039 d!1288804))

(declare-fun b!4358270 () Bool)

(declare-fun e!2712273 () Unit!71913)

(declare-fun Unit!71945 () Unit!71913)

(assert (=> b!4358270 (= e!2712273 Unit!71945)))

(declare-fun b!4358271 () Bool)

(declare-fun e!2712269 () Unit!71913)

(assert (=> b!4358271 (= e!2712269 e!2712273)))

(declare-fun c!741056 () Bool)

(declare-fun call!302909 () Bool)

(assert (=> b!4358271 (= c!741056 call!302909)))

(declare-fun b!4358272 () Bool)

(declare-fun e!2712268 () Bool)

(declare-fun e!2712271 () Bool)

(assert (=> b!4358272 (= e!2712268 e!2712271)))

(declare-fun res!1791471 () Bool)

(assert (=> b!4358272 (=> (not res!1791471) (not e!2712271))))

(assert (=> b!4358272 (= res!1791471 (isDefined!7766 (getValueByKey!458 (toList!2969 lt!1570381) key!3918)))))

(declare-fun b!4358273 () Bool)

(assert (=> b!4358273 false))

(declare-fun lt!1570583 () Unit!71913)

(declare-fun lt!1570581 () Unit!71913)

(assert (=> b!4358273 (= lt!1570583 lt!1570581)))

(assert (=> b!4358273 (containsKey!701 (toList!2969 lt!1570381) key!3918)))

(assert (=> b!4358273 (= lt!1570581 (lemmaInGetKeysListThenContainsKey!126 (toList!2969 lt!1570381) key!3918))))

(declare-fun Unit!71946 () Unit!71913)

(assert (=> b!4358273 (= e!2712273 Unit!71946)))

(declare-fun bm!302904 () Bool)

(declare-fun e!2712270 () List!49068)

(assert (=> bm!302904 (= call!302909 (contains!11155 e!2712270 key!3918))))

(declare-fun c!741057 () Bool)

(declare-fun c!741055 () Bool)

(assert (=> bm!302904 (= c!741057 c!741055)))

(declare-fun d!1288806 () Bool)

(assert (=> d!1288806 e!2712268))

(declare-fun res!1791469 () Bool)

(assert (=> d!1288806 (=> res!1791469 e!2712268)))

(declare-fun e!2712272 () Bool)

(assert (=> d!1288806 (= res!1791469 e!2712272)))

(declare-fun res!1791470 () Bool)

(assert (=> d!1288806 (=> (not res!1791470) (not e!2712272))))

(declare-fun lt!1570587 () Bool)

(assert (=> d!1288806 (= res!1791470 (not lt!1570587))))

(declare-fun lt!1570585 () Bool)

(assert (=> d!1288806 (= lt!1570587 lt!1570585)))

(declare-fun lt!1570582 () Unit!71913)

(assert (=> d!1288806 (= lt!1570582 e!2712269)))

(assert (=> d!1288806 (= c!741055 lt!1570585)))

(assert (=> d!1288806 (= lt!1570585 (containsKey!701 (toList!2969 lt!1570381) key!3918))))

(assert (=> d!1288806 (= (contains!11151 lt!1570381 key!3918) lt!1570587)))

(declare-fun b!4358274 () Bool)

(assert (=> b!4358274 (= e!2712271 (contains!11155 (keys!16534 lt!1570381) key!3918))))

(declare-fun b!4358275 () Bool)

(declare-fun lt!1570588 () Unit!71913)

(assert (=> b!4358275 (= e!2712269 lt!1570588)))

(declare-fun lt!1570586 () Unit!71913)

(assert (=> b!4358275 (= lt!1570586 (lemmaContainsKeyImpliesGetValueByKeyDefined!369 (toList!2969 lt!1570381) key!3918))))

(assert (=> b!4358275 (isDefined!7766 (getValueByKey!458 (toList!2969 lt!1570381) key!3918))))

(declare-fun lt!1570584 () Unit!71913)

(assert (=> b!4358275 (= lt!1570584 lt!1570586)))

(assert (=> b!4358275 (= lt!1570588 (lemmaInListThenGetKeysListContains!125 (toList!2969 lt!1570381) key!3918))))

(assert (=> b!4358275 call!302909))

(declare-fun b!4358276 () Bool)

(assert (=> b!4358276 (= e!2712270 (getKeysList!128 (toList!2969 lt!1570381)))))

(declare-fun b!4358277 () Bool)

(assert (=> b!4358277 (= e!2712272 (not (contains!11155 (keys!16534 lt!1570381) key!3918)))))

(declare-fun b!4358278 () Bool)

(assert (=> b!4358278 (= e!2712270 (keys!16534 lt!1570381))))

(assert (= (and d!1288806 c!741055) b!4358275))

(assert (= (and d!1288806 (not c!741055)) b!4358271))

(assert (= (and b!4358271 c!741056) b!4358273))

(assert (= (and b!4358271 (not c!741056)) b!4358270))

(assert (= (or b!4358275 b!4358271) bm!302904))

(assert (= (and bm!302904 c!741057) b!4358276))

(assert (= (and bm!302904 (not c!741057)) b!4358278))

(assert (= (and d!1288806 res!1791470) b!4358277))

(assert (= (and d!1288806 (not res!1791469)) b!4358272))

(assert (= (and b!4358272 res!1791471) b!4358274))

(declare-fun m!4973909 () Bool)

(assert (=> b!4358272 m!4973909))

(assert (=> b!4358272 m!4973909))

(declare-fun m!4973911 () Bool)

(assert (=> b!4358272 m!4973911))

(declare-fun m!4973913 () Bool)

(assert (=> b!4358276 m!4973913))

(declare-fun m!4973915 () Bool)

(assert (=> b!4358278 m!4973915))

(declare-fun m!4973917 () Bool)

(assert (=> bm!302904 m!4973917))

(declare-fun m!4973919 () Bool)

(assert (=> b!4358275 m!4973919))

(assert (=> b!4358275 m!4973909))

(assert (=> b!4358275 m!4973909))

(assert (=> b!4358275 m!4973911))

(declare-fun m!4973921 () Bool)

(assert (=> b!4358275 m!4973921))

(assert (=> b!4358277 m!4973915))

(assert (=> b!4358277 m!4973915))

(declare-fun m!4973923 () Bool)

(assert (=> b!4358277 m!4973923))

(declare-fun m!4973925 () Bool)

(assert (=> b!4358273 m!4973925))

(declare-fun m!4973927 () Bool)

(assert (=> b!4358273 m!4973927))

(assert (=> d!1288806 m!4973925))

(assert (=> b!4358274 m!4973915))

(assert (=> b!4358274 m!4973915))

(assert (=> b!4358274 m!4973923))

(assert (=> b!4358039 d!1288806))

(declare-fun b!4358346 () Bool)

(assert (=> b!4358346 true))

(declare-fun bs!632926 () Bool)

(declare-fun b!4358344 () Bool)

(assert (= bs!632926 (and b!4358344 b!4358346)))

(declare-fun lambda!140851 () Int)

(declare-fun lambda!140850 () Int)

(assert (=> bs!632926 (= lambda!140851 lambda!140850)))

(assert (=> b!4358344 true))

(declare-fun lt!1570712 () ListMap!2213)

(declare-fun lambda!140852 () Int)

(assert (=> bs!632926 (= (= lt!1570712 lt!1570381) (= lambda!140852 lambda!140850))))

(assert (=> b!4358344 (= (= lt!1570712 lt!1570381) (= lambda!140852 lambda!140851))))

(assert (=> b!4358344 true))

(declare-fun bs!632927 () Bool)

(declare-fun d!1288808 () Bool)

(assert (= bs!632927 (and d!1288808 b!4358346)))

(declare-fun lt!1570721 () ListMap!2213)

(declare-fun lambda!140853 () Int)

(assert (=> bs!632927 (= (= lt!1570721 lt!1570381) (= lambda!140853 lambda!140850))))

(declare-fun bs!632928 () Bool)

(assert (= bs!632928 (and d!1288808 b!4358344)))

(assert (=> bs!632928 (= (= lt!1570721 lt!1570381) (= lambda!140853 lambda!140851))))

(assert (=> bs!632928 (= (= lt!1570721 lt!1570712) (= lambda!140853 lambda!140852))))

(assert (=> d!1288808 true))

(declare-fun b!4358342 () Bool)

(declare-fun e!2712308 () Bool)

(assert (=> b!4358342 (= e!2712308 (invariantList!680 (toList!2969 lt!1570721)))))

(declare-fun bm!302918 () Bool)

(declare-fun c!741066 () Bool)

(declare-fun call!302923 () Bool)

(declare-fun forall!9130 (List!49065 Int) Bool)

(assert (=> bm!302918 (= call!302923 (forall!9130 (toList!2969 lt!1570381) (ite c!741066 lambda!140850 lambda!140852)))))

(declare-fun b!4358343 () Bool)

(declare-fun res!1791505 () Bool)

(assert (=> b!4358343 (=> (not res!1791505) (not e!2712308))))

(assert (=> b!4358343 (= res!1791505 (forall!9130 (toList!2969 lt!1570381) lambda!140853))))

(declare-fun call!302925 () Bool)

(declare-fun bm!302919 () Bool)

(assert (=> bm!302919 (= call!302925 (forall!9130 (ite c!741066 (toList!2969 lt!1570381) (_2!27466 (h!54495 (toList!2970 lm!1707)))) (ite c!741066 lambda!140850 lambda!140852)))))

(declare-fun e!2712309 () ListMap!2213)

(assert (=> b!4358344 (= e!2712309 lt!1570712)))

(declare-fun lt!1570714 () ListMap!2213)

(assert (=> b!4358344 (= lt!1570714 (+!644 lt!1570381 (h!54494 (_2!27466 (h!54495 (toList!2970 lm!1707))))))))

(assert (=> b!4358344 (= lt!1570712 (addToMapMapFromBucket!189 (t!355985 (_2!27466 (h!54495 (toList!2970 lm!1707)))) (+!644 lt!1570381 (h!54494 (_2!27466 (h!54495 (toList!2970 lm!1707)))))))))

(declare-fun lt!1570726 () Unit!71913)

(declare-fun call!302924 () Unit!71913)

(assert (=> b!4358344 (= lt!1570726 call!302924)))

(assert (=> b!4358344 (forall!9130 (toList!2969 lt!1570381) lambda!140851)))

(declare-fun lt!1570717 () Unit!71913)

(assert (=> b!4358344 (= lt!1570717 lt!1570726)))

(assert (=> b!4358344 (forall!9130 (toList!2969 lt!1570714) lambda!140852)))

(declare-fun lt!1570710 () Unit!71913)

(declare-fun Unit!71949 () Unit!71913)

(assert (=> b!4358344 (= lt!1570710 Unit!71949)))

(assert (=> b!4358344 (forall!9130 (t!355985 (_2!27466 (h!54495 (toList!2970 lm!1707)))) lambda!140852)))

(declare-fun lt!1570708 () Unit!71913)

(declare-fun Unit!71950 () Unit!71913)

(assert (=> b!4358344 (= lt!1570708 Unit!71950)))

(declare-fun lt!1570727 () Unit!71913)

(declare-fun Unit!71951 () Unit!71913)

(assert (=> b!4358344 (= lt!1570727 Unit!71951)))

(declare-fun lt!1570720 () Unit!71913)

(declare-fun forallContained!1771 (List!49065 Int tuple2!48342) Unit!71913)

(assert (=> b!4358344 (= lt!1570720 (forallContained!1771 (toList!2969 lt!1570714) lambda!140852 (h!54494 (_2!27466 (h!54495 (toList!2970 lm!1707))))))))

(assert (=> b!4358344 (contains!11151 lt!1570714 (_1!27465 (h!54494 (_2!27466 (h!54495 (toList!2970 lm!1707))))))))

(declare-fun lt!1570719 () Unit!71913)

(declare-fun Unit!71952 () Unit!71913)

(assert (=> b!4358344 (= lt!1570719 Unit!71952)))

(assert (=> b!4358344 (contains!11151 lt!1570712 (_1!27465 (h!54494 (_2!27466 (h!54495 (toList!2970 lm!1707))))))))

(declare-fun lt!1570728 () Unit!71913)

(declare-fun Unit!71953 () Unit!71913)

(assert (=> b!4358344 (= lt!1570728 Unit!71953)))

(assert (=> b!4358344 (forall!9130 (_2!27466 (h!54495 (toList!2970 lm!1707))) lambda!140852)))

(declare-fun lt!1570716 () Unit!71913)

(declare-fun Unit!71954 () Unit!71913)

(assert (=> b!4358344 (= lt!1570716 Unit!71954)))

(assert (=> b!4358344 (forall!9130 (toList!2969 lt!1570714) lambda!140852)))

(declare-fun lt!1570718 () Unit!71913)

(declare-fun Unit!71955 () Unit!71913)

(assert (=> b!4358344 (= lt!1570718 Unit!71955)))

(declare-fun lt!1570713 () Unit!71913)

(declare-fun Unit!71956 () Unit!71913)

(assert (=> b!4358344 (= lt!1570713 Unit!71956)))

(declare-fun lt!1570722 () Unit!71913)

(declare-fun addForallContainsKeyThenBeforeAdding!63 (ListMap!2213 ListMap!2213 K!10300 V!10546) Unit!71913)

(assert (=> b!4358344 (= lt!1570722 (addForallContainsKeyThenBeforeAdding!63 lt!1570381 lt!1570712 (_1!27465 (h!54494 (_2!27466 (h!54495 (toList!2970 lm!1707))))) (_2!27465 (h!54494 (_2!27466 (h!54495 (toList!2970 lm!1707)))))))))

(assert (=> b!4358344 (forall!9130 (toList!2969 lt!1570381) lambda!140852)))

(declare-fun lt!1570709 () Unit!71913)

(assert (=> b!4358344 (= lt!1570709 lt!1570722)))

(assert (=> b!4358344 call!302923))

(declare-fun lt!1570711 () Unit!71913)

(declare-fun Unit!71957 () Unit!71913)

(assert (=> b!4358344 (= lt!1570711 Unit!71957)))

(declare-fun res!1791504 () Bool)

(assert (=> b!4358344 (= res!1791504 call!302925)))

(declare-fun e!2712310 () Bool)

(assert (=> b!4358344 (=> (not res!1791504) (not e!2712310))))

(assert (=> b!4358344 e!2712310))

(declare-fun lt!1570715 () Unit!71913)

(declare-fun Unit!71958 () Unit!71913)

(assert (=> b!4358344 (= lt!1570715 Unit!71958)))

(assert (=> b!4358346 (= e!2712309 lt!1570381)))

(declare-fun lt!1570724 () Unit!71913)

(assert (=> b!4358346 (= lt!1570724 call!302924)))

(assert (=> b!4358346 call!302925))

(declare-fun lt!1570723 () Unit!71913)

(assert (=> b!4358346 (= lt!1570723 lt!1570724)))

(assert (=> b!4358346 call!302923))

(declare-fun lt!1570725 () Unit!71913)

(declare-fun Unit!71959 () Unit!71913)

(assert (=> b!4358346 (= lt!1570725 Unit!71959)))

(declare-fun bm!302920 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!63 (ListMap!2213) Unit!71913)

(assert (=> bm!302920 (= call!302924 (lemmaContainsAllItsOwnKeys!63 lt!1570381))))

(assert (=> d!1288808 e!2712308))

(declare-fun res!1791503 () Bool)

(assert (=> d!1288808 (=> (not res!1791503) (not e!2712308))))

(assert (=> d!1288808 (= res!1791503 (forall!9130 (_2!27466 (h!54495 (toList!2970 lm!1707))) lambda!140853))))

(assert (=> d!1288808 (= lt!1570721 e!2712309)))

(assert (=> d!1288808 (= c!741066 ((_ is Nil!48941) (_2!27466 (h!54495 (toList!2970 lm!1707)))))))

(assert (=> d!1288808 (noDuplicateKeys!493 (_2!27466 (h!54495 (toList!2970 lm!1707))))))

(assert (=> d!1288808 (= (addToMapMapFromBucket!189 (_2!27466 (h!54495 (toList!2970 lm!1707))) lt!1570381) lt!1570721)))

(declare-fun b!4358345 () Bool)

(assert (=> b!4358345 (= e!2712310 (forall!9130 (toList!2969 lt!1570381) lambda!140852))))

(assert (= (and d!1288808 c!741066) b!4358346))

(assert (= (and d!1288808 (not c!741066)) b!4358344))

(assert (= (and b!4358344 res!1791504) b!4358345))

(assert (= (or b!4358346 b!4358344) bm!302920))

(assert (= (or b!4358346 b!4358344) bm!302919))

(assert (= (or b!4358346 b!4358344) bm!302918))

(assert (= (and d!1288808 res!1791503) b!4358343))

(assert (= (and b!4358343 res!1791505) b!4358342))

(declare-fun m!4974093 () Bool)

(assert (=> b!4358345 m!4974093))

(declare-fun m!4974095 () Bool)

(assert (=> b!4358344 m!4974095))

(assert (=> b!4358344 m!4974095))

(declare-fun m!4974097 () Bool)

(assert (=> b!4358344 m!4974097))

(declare-fun m!4974099 () Bool)

(assert (=> b!4358344 m!4974099))

(assert (=> b!4358344 m!4974093))

(declare-fun m!4974101 () Bool)

(assert (=> b!4358344 m!4974101))

(declare-fun m!4974103 () Bool)

(assert (=> b!4358344 m!4974103))

(declare-fun m!4974105 () Bool)

(assert (=> b!4358344 m!4974105))

(assert (=> b!4358344 m!4974101))

(declare-fun m!4974107 () Bool)

(assert (=> b!4358344 m!4974107))

(declare-fun m!4974109 () Bool)

(assert (=> b!4358344 m!4974109))

(declare-fun m!4974111 () Bool)

(assert (=> b!4358344 m!4974111))

(declare-fun m!4974113 () Bool)

(assert (=> b!4358344 m!4974113))

(declare-fun m!4974115 () Bool)

(assert (=> bm!302919 m!4974115))

(declare-fun m!4974117 () Bool)

(assert (=> b!4358343 m!4974117))

(declare-fun m!4974119 () Bool)

(assert (=> bm!302920 m!4974119))

(declare-fun m!4974121 () Bool)

(assert (=> d!1288808 m!4974121))

(declare-fun m!4974123 () Bool)

(assert (=> d!1288808 m!4974123))

(declare-fun m!4974125 () Bool)

(assert (=> bm!302918 m!4974125))

(declare-fun m!4974127 () Bool)

(assert (=> b!4358342 m!4974127))

(assert (=> b!4358039 d!1288808))

(declare-fun d!1288852 () Bool)

(declare-fun tail!7004 (List!49066) List!49066)

(assert (=> d!1288852 (= (tail!7002 lm!1707) (ListLongMap!1620 (tail!7004 (toList!2970 lm!1707))))))

(declare-fun bs!632929 () Bool)

(assert (= bs!632929 d!1288852))

(declare-fun m!4974129 () Bool)

(assert (=> bs!632929 m!4974129))

(assert (=> b!4358039 d!1288852))

(declare-fun d!1288854 () Bool)

(declare-fun content!7727 (List!49065) (InoxSet tuple2!48342))

(assert (=> d!1288854 (= (eq!263 (addToMapMapFromBucket!189 (_2!27466 (h!54495 (toList!2970 lm!1707))) lt!1570385) (+!644 lt!1570378 lt!1570370)) (= (content!7727 (toList!2969 (addToMapMapFromBucket!189 (_2!27466 (h!54495 (toList!2970 lm!1707))) lt!1570385))) (content!7727 (toList!2969 (+!644 lt!1570378 lt!1570370)))))))

(declare-fun bs!632930 () Bool)

(assert (= bs!632930 d!1288854))

(declare-fun m!4974131 () Bool)

(assert (=> bs!632930 m!4974131))

(declare-fun m!4974133 () Bool)

(assert (=> bs!632930 m!4974133))

(assert (=> b!4358039 d!1288854))

(declare-fun b!4358349 () Bool)

(declare-fun e!2712316 () Unit!71913)

(declare-fun Unit!71960 () Unit!71913)

(assert (=> b!4358349 (= e!2712316 Unit!71960)))

(declare-fun b!4358350 () Bool)

(declare-fun e!2712312 () Unit!71913)

(assert (=> b!4358350 (= e!2712312 e!2712316)))

(declare-fun c!741068 () Bool)

(declare-fun call!302926 () Bool)

(assert (=> b!4358350 (= c!741068 call!302926)))

(declare-fun b!4358351 () Bool)

(declare-fun e!2712311 () Bool)

(declare-fun e!2712314 () Bool)

(assert (=> b!4358351 (= e!2712311 e!2712314)))

(declare-fun res!1791508 () Bool)

(assert (=> b!4358351 (=> (not res!1791508) (not e!2712314))))

(assert (=> b!4358351 (= res!1791508 (isDefined!7766 (getValueByKey!458 (toList!2969 lt!1570383) key!3918)))))

(declare-fun b!4358352 () Bool)

(assert (=> b!4358352 false))

(declare-fun lt!1570731 () Unit!71913)

(declare-fun lt!1570729 () Unit!71913)

(assert (=> b!4358352 (= lt!1570731 lt!1570729)))

(assert (=> b!4358352 (containsKey!701 (toList!2969 lt!1570383) key!3918)))

(assert (=> b!4358352 (= lt!1570729 (lemmaInGetKeysListThenContainsKey!126 (toList!2969 lt!1570383) key!3918))))

(declare-fun Unit!71961 () Unit!71913)

(assert (=> b!4358352 (= e!2712316 Unit!71961)))

(declare-fun bm!302921 () Bool)

(declare-fun e!2712313 () List!49068)

(assert (=> bm!302921 (= call!302926 (contains!11155 e!2712313 key!3918))))

(declare-fun c!741069 () Bool)

(declare-fun c!741067 () Bool)

(assert (=> bm!302921 (= c!741069 c!741067)))

(declare-fun d!1288856 () Bool)

(assert (=> d!1288856 e!2712311))

(declare-fun res!1791506 () Bool)

(assert (=> d!1288856 (=> res!1791506 e!2712311)))

(declare-fun e!2712315 () Bool)

(assert (=> d!1288856 (= res!1791506 e!2712315)))

(declare-fun res!1791507 () Bool)

(assert (=> d!1288856 (=> (not res!1791507) (not e!2712315))))

(declare-fun lt!1570735 () Bool)

(assert (=> d!1288856 (= res!1791507 (not lt!1570735))))

(declare-fun lt!1570733 () Bool)

(assert (=> d!1288856 (= lt!1570735 lt!1570733)))

(declare-fun lt!1570730 () Unit!71913)

(assert (=> d!1288856 (= lt!1570730 e!2712312)))

(assert (=> d!1288856 (= c!741067 lt!1570733)))

(assert (=> d!1288856 (= lt!1570733 (containsKey!701 (toList!2969 lt!1570383) key!3918))))

(assert (=> d!1288856 (= (contains!11151 lt!1570383 key!3918) lt!1570735)))

(declare-fun b!4358353 () Bool)

(assert (=> b!4358353 (= e!2712314 (contains!11155 (keys!16534 lt!1570383) key!3918))))

(declare-fun b!4358354 () Bool)

(declare-fun lt!1570736 () Unit!71913)

(assert (=> b!4358354 (= e!2712312 lt!1570736)))

(declare-fun lt!1570734 () Unit!71913)

(assert (=> b!4358354 (= lt!1570734 (lemmaContainsKeyImpliesGetValueByKeyDefined!369 (toList!2969 lt!1570383) key!3918))))

(assert (=> b!4358354 (isDefined!7766 (getValueByKey!458 (toList!2969 lt!1570383) key!3918))))

(declare-fun lt!1570732 () Unit!71913)

(assert (=> b!4358354 (= lt!1570732 lt!1570734)))

(assert (=> b!4358354 (= lt!1570736 (lemmaInListThenGetKeysListContains!125 (toList!2969 lt!1570383) key!3918))))

(assert (=> b!4358354 call!302926))

(declare-fun b!4358355 () Bool)

(assert (=> b!4358355 (= e!2712313 (getKeysList!128 (toList!2969 lt!1570383)))))

(declare-fun b!4358356 () Bool)

(assert (=> b!4358356 (= e!2712315 (not (contains!11155 (keys!16534 lt!1570383) key!3918)))))

(declare-fun b!4358357 () Bool)

(assert (=> b!4358357 (= e!2712313 (keys!16534 lt!1570383))))

(assert (= (and d!1288856 c!741067) b!4358354))

(assert (= (and d!1288856 (not c!741067)) b!4358350))

(assert (= (and b!4358350 c!741068) b!4358352))

(assert (= (and b!4358350 (not c!741068)) b!4358349))

(assert (= (or b!4358354 b!4358350) bm!302921))

(assert (= (and bm!302921 c!741069) b!4358355))

(assert (= (and bm!302921 (not c!741069)) b!4358357))

(assert (= (and d!1288856 res!1791507) b!4358356))

(assert (= (and d!1288856 (not res!1791506)) b!4358351))

(assert (= (and b!4358351 res!1791508) b!4358353))

(declare-fun m!4974135 () Bool)

(assert (=> b!4358351 m!4974135))

(assert (=> b!4358351 m!4974135))

(declare-fun m!4974137 () Bool)

(assert (=> b!4358351 m!4974137))

(declare-fun m!4974139 () Bool)

(assert (=> b!4358355 m!4974139))

(declare-fun m!4974141 () Bool)

(assert (=> b!4358357 m!4974141))

(declare-fun m!4974143 () Bool)

(assert (=> bm!302921 m!4974143))

(declare-fun m!4974145 () Bool)

(assert (=> b!4358354 m!4974145))

(assert (=> b!4358354 m!4974135))

(assert (=> b!4358354 m!4974135))

(assert (=> b!4358354 m!4974137))

(declare-fun m!4974147 () Bool)

(assert (=> b!4358354 m!4974147))

(assert (=> b!4358356 m!4974141))

(assert (=> b!4358356 m!4974141))

(declare-fun m!4974149 () Bool)

(assert (=> b!4358356 m!4974149))

(declare-fun m!4974151 () Bool)

(assert (=> b!4358352 m!4974151))

(declare-fun m!4974153 () Bool)

(assert (=> b!4358352 m!4974153))

(assert (=> d!1288856 m!4974151))

(assert (=> b!4358353 m!4974141))

(assert (=> b!4358353 m!4974141))

(assert (=> b!4358353 m!4974149))

(assert (=> b!4358039 d!1288856))

(declare-fun d!1288858 () Bool)

(declare-fun e!2712319 () Bool)

(assert (=> d!1288858 e!2712319))

(declare-fun res!1791514 () Bool)

(assert (=> d!1288858 (=> (not res!1791514) (not e!2712319))))

(declare-fun lt!1570745 () ListMap!2213)

(assert (=> d!1288858 (= res!1791514 (contains!11151 lt!1570745 (_1!27465 lt!1570370)))))

(declare-fun lt!1570747 () List!49065)

(assert (=> d!1288858 (= lt!1570745 (ListMap!2214 lt!1570747))))

(declare-fun lt!1570746 () Unit!71913)

(declare-fun lt!1570748 () Unit!71913)

(assert (=> d!1288858 (= lt!1570746 lt!1570748)))

(assert (=> d!1288858 (= (getValueByKey!458 lt!1570747 (_1!27465 lt!1570370)) (Some!10471 (_2!27465 lt!1570370)))))

(declare-fun lemmaContainsTupThenGetReturnValue!233 (List!49065 K!10300 V!10546) Unit!71913)

(assert (=> d!1288858 (= lt!1570748 (lemmaContainsTupThenGetReturnValue!233 lt!1570747 (_1!27465 lt!1570370) (_2!27465 lt!1570370)))))

(declare-fun insertNoDuplicatedKeys!104 (List!49065 K!10300 V!10546) List!49065)

(assert (=> d!1288858 (= lt!1570747 (insertNoDuplicatedKeys!104 (toList!2969 lt!1570378) (_1!27465 lt!1570370) (_2!27465 lt!1570370)))))

(assert (=> d!1288858 (= (+!644 lt!1570378 lt!1570370) lt!1570745)))

(declare-fun b!4358362 () Bool)

(declare-fun res!1791513 () Bool)

(assert (=> b!4358362 (=> (not res!1791513) (not e!2712319))))

(assert (=> b!4358362 (= res!1791513 (= (getValueByKey!458 (toList!2969 lt!1570745) (_1!27465 lt!1570370)) (Some!10471 (_2!27465 lt!1570370))))))

(declare-fun b!4358363 () Bool)

(declare-fun contains!11157 (List!49065 tuple2!48342) Bool)

(assert (=> b!4358363 (= e!2712319 (contains!11157 (toList!2969 lt!1570745) lt!1570370))))

(assert (= (and d!1288858 res!1791514) b!4358362))

(assert (= (and b!4358362 res!1791513) b!4358363))

(declare-fun m!4974155 () Bool)

(assert (=> d!1288858 m!4974155))

(declare-fun m!4974157 () Bool)

(assert (=> d!1288858 m!4974157))

(declare-fun m!4974159 () Bool)

(assert (=> d!1288858 m!4974159))

(declare-fun m!4974161 () Bool)

(assert (=> d!1288858 m!4974161))

(declare-fun m!4974163 () Bool)

(assert (=> b!4358362 m!4974163))

(declare-fun m!4974165 () Bool)

(assert (=> b!4358363 m!4974165))

(assert (=> b!4358039 d!1288858))

(declare-fun d!1288860 () Bool)

(declare-fun res!1791515 () Bool)

(declare-fun e!2712320 () Bool)

(assert (=> d!1288860 (=> res!1791515 e!2712320)))

(assert (=> d!1288860 (= res!1791515 ((_ is Nil!48942) (toList!2970 lt!1570372)))))

(assert (=> d!1288860 (= (forall!9128 (toList!2970 lt!1570372) lambda!140757) e!2712320)))

(declare-fun b!4358364 () Bool)

(declare-fun e!2712321 () Bool)

(assert (=> b!4358364 (= e!2712320 e!2712321)))

(declare-fun res!1791516 () Bool)

(assert (=> b!4358364 (=> (not res!1791516) (not e!2712321))))

(assert (=> b!4358364 (= res!1791516 (dynLambda!20639 lambda!140757 (h!54495 (toList!2970 lt!1570372))))))

(declare-fun b!4358365 () Bool)

(assert (=> b!4358365 (= e!2712321 (forall!9128 (t!355986 (toList!2970 lt!1570372)) lambda!140757))))

(assert (= (and d!1288860 (not res!1791515)) b!4358364))

(assert (= (and b!4358364 res!1791516) b!4358365))

(declare-fun b_lambda!131479 () Bool)

(assert (=> (not b_lambda!131479) (not b!4358364)))

(declare-fun m!4974167 () Bool)

(assert (=> b!4358364 m!4974167))

(declare-fun m!4974169 () Bool)

(assert (=> b!4358365 m!4974169))

(assert (=> b!4358039 d!1288860))

(declare-fun bs!632931 () Bool)

(declare-fun d!1288862 () Bool)

(assert (= bs!632931 (and d!1288862 d!1288746)))

(declare-fun lambda!140854 () Int)

(assert (=> bs!632931 (= lambda!140854 lambda!140768)))

(declare-fun bs!632932 () Bool)

(assert (= bs!632932 (and d!1288862 start!421908)))

(assert (=> bs!632932 (= lambda!140854 lambda!140757)))

(declare-fun bs!632933 () Bool)

(assert (= bs!632933 (and d!1288862 d!1288804)))

(assert (=> bs!632933 (= lambda!140854 lambda!140805)))

(declare-fun bs!632934 () Bool)

(assert (= bs!632934 (and d!1288862 d!1288802)))

(assert (=> bs!632934 (= lambda!140854 lambda!140804)))

(declare-fun bs!632935 () Bool)

(assert (= bs!632935 (and d!1288862 d!1288788)))

(assert (=> bs!632935 (not (= lambda!140854 lambda!140777))))

(declare-fun lt!1570749 () ListMap!2213)

(assert (=> d!1288862 (invariantList!680 (toList!2969 lt!1570749))))

(declare-fun e!2712322 () ListMap!2213)

(assert (=> d!1288862 (= lt!1570749 e!2712322)))

(declare-fun c!741070 () Bool)

(assert (=> d!1288862 (= c!741070 ((_ is Cons!48942) (toList!2970 (+!643 lt!1570372 lt!1570376))))))

(assert (=> d!1288862 (forall!9128 (toList!2970 (+!643 lt!1570372 lt!1570376)) lambda!140854)))

(assert (=> d!1288862 (= (extractMap!552 (toList!2970 (+!643 lt!1570372 lt!1570376))) lt!1570749)))

(declare-fun b!4358366 () Bool)

(assert (=> b!4358366 (= e!2712322 (addToMapMapFromBucket!189 (_2!27466 (h!54495 (toList!2970 (+!643 lt!1570372 lt!1570376)))) (extractMap!552 (t!355986 (toList!2970 (+!643 lt!1570372 lt!1570376))))))))

(declare-fun b!4358367 () Bool)

(assert (=> b!4358367 (= e!2712322 (ListMap!2214 Nil!48941))))

(assert (= (and d!1288862 c!741070) b!4358366))

(assert (= (and d!1288862 (not c!741070)) b!4358367))

(declare-fun m!4974171 () Bool)

(assert (=> d!1288862 m!4974171))

(declare-fun m!4974173 () Bool)

(assert (=> d!1288862 m!4974173))

(declare-fun m!4974175 () Bool)

(assert (=> b!4358366 m!4974175))

(assert (=> b!4358366 m!4974175))

(declare-fun m!4974177 () Bool)

(assert (=> b!4358366 m!4974177))

(assert (=> b!4358039 d!1288862))

(declare-fun d!1288864 () Bool)

(assert (=> d!1288864 (= (eq!263 lt!1570368 lt!1570385) (= (content!7727 (toList!2969 lt!1570368)) (content!7727 (toList!2969 lt!1570385))))))

(declare-fun bs!632936 () Bool)

(assert (= bs!632936 d!1288864))

(declare-fun m!4974179 () Bool)

(assert (=> bs!632936 m!4974179))

(declare-fun m!4974181 () Bool)

(assert (=> bs!632936 m!4974181))

(assert (=> b!4358039 d!1288864))

(declare-fun d!1288866 () Bool)

(declare-fun e!2712323 () Bool)

(assert (=> d!1288866 e!2712323))

(declare-fun res!1791518 () Bool)

(assert (=> d!1288866 (=> (not res!1791518) (not e!2712323))))

(declare-fun lt!1570750 () ListMap!2213)

(assert (=> d!1288866 (= res!1791518 (contains!11151 lt!1570750 (_1!27465 lt!1570370)))))

(declare-fun lt!1570752 () List!49065)

(assert (=> d!1288866 (= lt!1570750 (ListMap!2214 lt!1570752))))

(declare-fun lt!1570751 () Unit!71913)

(declare-fun lt!1570753 () Unit!71913)

(assert (=> d!1288866 (= lt!1570751 lt!1570753)))

(assert (=> d!1288866 (= (getValueByKey!458 lt!1570752 (_1!27465 lt!1570370)) (Some!10471 (_2!27465 lt!1570370)))))

(assert (=> d!1288866 (= lt!1570753 (lemmaContainsTupThenGetReturnValue!233 lt!1570752 (_1!27465 lt!1570370) (_2!27465 lt!1570370)))))

(assert (=> d!1288866 (= lt!1570752 (insertNoDuplicatedKeys!104 (toList!2969 lt!1570381) (_1!27465 lt!1570370) (_2!27465 lt!1570370)))))

(assert (=> d!1288866 (= (+!644 lt!1570381 lt!1570370) lt!1570750)))

(declare-fun b!4358368 () Bool)

(declare-fun res!1791517 () Bool)

(assert (=> b!4358368 (=> (not res!1791517) (not e!2712323))))

(assert (=> b!4358368 (= res!1791517 (= (getValueByKey!458 (toList!2969 lt!1570750) (_1!27465 lt!1570370)) (Some!10471 (_2!27465 lt!1570370))))))

(declare-fun b!4358369 () Bool)

(assert (=> b!4358369 (= e!2712323 (contains!11157 (toList!2969 lt!1570750) lt!1570370))))

(assert (= (and d!1288866 res!1791518) b!4358368))

(assert (= (and b!4358368 res!1791517) b!4358369))

(declare-fun m!4974183 () Bool)

(assert (=> d!1288866 m!4974183))

(declare-fun m!4974185 () Bool)

(assert (=> d!1288866 m!4974185))

(declare-fun m!4974187 () Bool)

(assert (=> d!1288866 m!4974187))

(declare-fun m!4974189 () Bool)

(assert (=> d!1288866 m!4974189))

(declare-fun m!4974191 () Bool)

(assert (=> b!4358368 m!4974191))

(declare-fun m!4974193 () Bool)

(assert (=> b!4358369 m!4974193))

(assert (=> b!4358039 d!1288866))

(declare-fun d!1288868 () Bool)

(declare-fun e!2712324 () Bool)

(assert (=> d!1288868 e!2712324))

(declare-fun res!1791519 () Bool)

(assert (=> d!1288868 (=> (not res!1791519) (not e!2712324))))

(declare-fun lt!1570755 () ListLongMap!1619)

(assert (=> d!1288868 (= res!1791519 (contains!11153 lt!1570755 (_1!27466 lt!1570376)))))

(declare-fun lt!1570756 () List!49066)

(assert (=> d!1288868 (= lt!1570755 (ListLongMap!1620 lt!1570756))))

(declare-fun lt!1570754 () Unit!71913)

(declare-fun lt!1570757 () Unit!71913)

(assert (=> d!1288868 (= lt!1570754 lt!1570757)))

(assert (=> d!1288868 (= (getValueByKey!459 lt!1570756 (_1!27466 lt!1570376)) (Some!10472 (_2!27466 lt!1570376)))))

(assert (=> d!1288868 (= lt!1570757 (lemmaContainsTupThenGetReturnValue!231 lt!1570756 (_1!27466 lt!1570376) (_2!27466 lt!1570376)))))

(assert (=> d!1288868 (= lt!1570756 (insertStrictlySorted!137 (toList!2970 lt!1570372) (_1!27466 lt!1570376) (_2!27466 lt!1570376)))))

(assert (=> d!1288868 (= (+!643 lt!1570372 lt!1570376) lt!1570755)))

(declare-fun b!4358370 () Bool)

(declare-fun res!1791520 () Bool)

(assert (=> b!4358370 (=> (not res!1791520) (not e!2712324))))

(assert (=> b!4358370 (= res!1791520 (= (getValueByKey!459 (toList!2970 lt!1570755) (_1!27466 lt!1570376)) (Some!10472 (_2!27466 lt!1570376))))))

(declare-fun b!4358371 () Bool)

(assert (=> b!4358371 (= e!2712324 (contains!11152 (toList!2970 lt!1570755) lt!1570376))))

(assert (= (and d!1288868 res!1791519) b!4358370))

(assert (= (and b!4358370 res!1791520) b!4358371))

(declare-fun m!4974195 () Bool)

(assert (=> d!1288868 m!4974195))

(declare-fun m!4974197 () Bool)

(assert (=> d!1288868 m!4974197))

(declare-fun m!4974199 () Bool)

(assert (=> d!1288868 m!4974199))

(declare-fun m!4974201 () Bool)

(assert (=> d!1288868 m!4974201))

(declare-fun m!4974203 () Bool)

(assert (=> b!4358370 m!4974203))

(declare-fun m!4974205 () Bool)

(assert (=> b!4358371 m!4974205))

(assert (=> b!4358039 d!1288868))

(declare-fun bs!632937 () Bool)

(declare-fun d!1288870 () Bool)

(assert (= bs!632937 (and d!1288870 d!1288746)))

(declare-fun lambda!140855 () Int)

(assert (=> bs!632937 (= lambda!140855 lambda!140768)))

(declare-fun bs!632938 () Bool)

(assert (= bs!632938 (and d!1288870 start!421908)))

(assert (=> bs!632938 (= lambda!140855 lambda!140757)))

(declare-fun bs!632939 () Bool)

(assert (= bs!632939 (and d!1288870 d!1288862)))

(assert (=> bs!632939 (= lambda!140855 lambda!140854)))

(declare-fun bs!632940 () Bool)

(assert (= bs!632940 (and d!1288870 d!1288804)))

(assert (=> bs!632940 (= lambda!140855 lambda!140805)))

(declare-fun bs!632941 () Bool)

(assert (= bs!632941 (and d!1288870 d!1288802)))

(assert (=> bs!632941 (= lambda!140855 lambda!140804)))

(declare-fun bs!632942 () Bool)

(assert (= bs!632942 (and d!1288870 d!1288788)))

(assert (=> bs!632942 (not (= lambda!140855 lambda!140777))))

(declare-fun lt!1570758 () ListMap!2213)

(assert (=> d!1288870 (invariantList!680 (toList!2969 lt!1570758))))

(declare-fun e!2712325 () ListMap!2213)

(assert (=> d!1288870 (= lt!1570758 e!2712325)))

(declare-fun c!741071 () Bool)

(assert (=> d!1288870 (= c!741071 ((_ is Cons!48942) (t!355986 (toList!2970 lm!1707))))))

(assert (=> d!1288870 (forall!9128 (t!355986 (toList!2970 lm!1707)) lambda!140855)))

(assert (=> d!1288870 (= (extractMap!552 (t!355986 (toList!2970 lm!1707))) lt!1570758)))

(declare-fun b!4358372 () Bool)

(assert (=> b!4358372 (= e!2712325 (addToMapMapFromBucket!189 (_2!27466 (h!54495 (t!355986 (toList!2970 lm!1707)))) (extractMap!552 (t!355986 (t!355986 (toList!2970 lm!1707))))))))

(declare-fun b!4358373 () Bool)

(assert (=> b!4358373 (= e!2712325 (ListMap!2214 Nil!48941))))

(assert (= (and d!1288870 c!741071) b!4358372))

(assert (= (and d!1288870 (not c!741071)) b!4358373))

(declare-fun m!4974207 () Bool)

(assert (=> d!1288870 m!4974207))

(declare-fun m!4974209 () Bool)

(assert (=> d!1288870 m!4974209))

(declare-fun m!4974211 () Bool)

(assert (=> b!4358372 m!4974211))

(assert (=> b!4358372 m!4974211))

(declare-fun m!4974213 () Bool)

(assert (=> b!4358372 m!4974213))

(assert (=> b!4358039 d!1288870))

(declare-fun d!1288872 () Bool)

(assert (=> d!1288872 (contains!11151 lt!1570383 key!3918)))

(declare-fun lt!1570761 () Unit!71913)

(declare-fun choose!26949 (List!49065 K!10300 V!10546 ListMap!2213) Unit!71913)

(assert (=> d!1288872 (= lt!1570761 (choose!26949 (_2!27466 (h!54495 (toList!2970 lm!1707))) key!3918 newValue!99 lt!1570383))))

(assert (=> d!1288872 (noDuplicateKeys!493 (_2!27466 (h!54495 (toList!2970 lm!1707))))))

(assert (=> d!1288872 (= (lemmaAddToMapContainsAndNotInListThenInAcc!36 (_2!27466 (h!54495 (toList!2970 lm!1707))) key!3918 newValue!99 lt!1570383) lt!1570761)))

(declare-fun bs!632943 () Bool)

(assert (= bs!632943 d!1288872))

(assert (=> bs!632943 m!4973615))

(declare-fun m!4974215 () Bool)

(assert (=> bs!632943 m!4974215))

(assert (=> bs!632943 m!4974123))

(assert (=> b!4358039 d!1288872))

(declare-fun bs!632944 () Bool)

(declare-fun d!1288874 () Bool)

(assert (= bs!632944 (and d!1288874 d!1288746)))

(declare-fun lambda!140858 () Int)

(assert (=> bs!632944 (= lambda!140858 lambda!140768)))

(declare-fun bs!632945 () Bool)

(assert (= bs!632945 (and d!1288874 start!421908)))

(assert (=> bs!632945 (= lambda!140858 lambda!140757)))

(declare-fun bs!632946 () Bool)

(assert (= bs!632946 (and d!1288874 d!1288862)))

(assert (=> bs!632946 (= lambda!140858 lambda!140854)))

(declare-fun bs!632947 () Bool)

(assert (= bs!632947 (and d!1288874 d!1288804)))

(assert (=> bs!632947 (= lambda!140858 lambda!140805)))

(declare-fun bs!632948 () Bool)

(assert (= bs!632948 (and d!1288874 d!1288870)))

(assert (=> bs!632948 (= lambda!140858 lambda!140855)))

(declare-fun bs!632949 () Bool)

(assert (= bs!632949 (and d!1288874 d!1288802)))

(assert (=> bs!632949 (= lambda!140858 lambda!140804)))

(declare-fun bs!632950 () Bool)

(assert (= bs!632950 (and d!1288874 d!1288788)))

(assert (=> bs!632950 (not (= lambda!140858 lambda!140777))))

(assert (=> d!1288874 (not (containsKey!698 (apply!11345 lm!1707 (_1!27466 (h!54495 (toList!2970 lm!1707)))) key!3918))))

(declare-fun lt!1570764 () Unit!71913)

(declare-fun choose!26950 (ListLongMap!1619 K!10300 (_ BitVec 64) Hashable!4885) Unit!71913)

(assert (=> d!1288874 (= lt!1570764 (choose!26950 lm!1707 key!3918 (_1!27466 (h!54495 (toList!2970 lm!1707))) hashF!1247))))

(assert (=> d!1288874 (forall!9128 (toList!2970 lm!1707) lambda!140858)))

(assert (=> d!1288874 (= (lemmaNotSameHashThenCannotContainKey!40 lm!1707 key!3918 (_1!27466 (h!54495 (toList!2970 lm!1707))) hashF!1247) lt!1570764)))

(declare-fun bs!632951 () Bool)

(assert (= bs!632951 d!1288874))

(assert (=> bs!632951 m!4973619))

(assert (=> bs!632951 m!4973619))

(assert (=> bs!632951 m!4973621))

(declare-fun m!4974217 () Bool)

(assert (=> bs!632951 m!4974217))

(declare-fun m!4974219 () Bool)

(assert (=> bs!632951 m!4974219))

(assert (=> b!4358039 d!1288874))

(declare-fun d!1288876 () Bool)

(assert (=> d!1288876 (eq!263 (addToMapMapFromBucket!189 (_2!27466 (h!54495 (toList!2970 lm!1707))) (+!644 lt!1570381 (tuple2!48343 key!3918 newValue!99))) (+!644 (addToMapMapFromBucket!189 (_2!27466 (h!54495 (toList!2970 lm!1707))) lt!1570381) (tuple2!48343 key!3918 newValue!99)))))

(declare-fun lt!1570767 () Unit!71913)

(declare-fun choose!26951 (ListMap!2213 K!10300 V!10546 List!49065) Unit!71913)

(assert (=> d!1288876 (= lt!1570767 (choose!26951 lt!1570381 key!3918 newValue!99 (_2!27466 (h!54495 (toList!2970 lm!1707)))))))

(assert (=> d!1288876 (not (containsKey!698 (_2!27466 (h!54495 (toList!2970 lm!1707))) key!3918))))

(assert (=> d!1288876 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!72 lt!1570381 key!3918 newValue!99 (_2!27466 (h!54495 (toList!2970 lm!1707)))) lt!1570767)))

(declare-fun bs!632952 () Bool)

(assert (= bs!632952 d!1288876))

(declare-fun m!4974221 () Bool)

(assert (=> bs!632952 m!4974221))

(assert (=> bs!632952 m!4973585))

(assert (=> bs!632952 m!4973585))

(declare-fun m!4974223 () Bool)

(assert (=> bs!632952 m!4974223))

(assert (=> bs!632952 m!4973569))

(declare-fun m!4974225 () Bool)

(assert (=> bs!632952 m!4974225))

(assert (=> bs!632952 m!4974221))

(declare-fun m!4974227 () Bool)

(assert (=> bs!632952 m!4974227))

(assert (=> bs!632952 m!4974227))

(assert (=> bs!632952 m!4974223))

(declare-fun m!4974229 () Bool)

(assert (=> bs!632952 m!4974229))

(assert (=> b!4358039 d!1288876))

(declare-fun bs!632953 () Bool)

(declare-fun b!4358378 () Bool)

(assert (= bs!632953 (and b!4358378 b!4358346)))

(declare-fun lambda!140859 () Int)

(assert (=> bs!632953 (= (= lt!1570385 lt!1570381) (= lambda!140859 lambda!140850))))

(declare-fun bs!632954 () Bool)

(assert (= bs!632954 (and b!4358378 b!4358344)))

(assert (=> bs!632954 (= (= lt!1570385 lt!1570381) (= lambda!140859 lambda!140851))))

(assert (=> bs!632954 (= (= lt!1570385 lt!1570712) (= lambda!140859 lambda!140852))))

(declare-fun bs!632955 () Bool)

(assert (= bs!632955 (and b!4358378 d!1288808)))

(assert (=> bs!632955 (= (= lt!1570385 lt!1570721) (= lambda!140859 lambda!140853))))

(assert (=> b!4358378 true))

(declare-fun bs!632956 () Bool)

(declare-fun b!4358376 () Bool)

(assert (= bs!632956 (and b!4358376 b!4358344)))

(declare-fun lambda!140860 () Int)

(assert (=> bs!632956 (= (= lt!1570385 lt!1570712) (= lambda!140860 lambda!140852))))

(declare-fun bs!632957 () Bool)

(assert (= bs!632957 (and b!4358376 d!1288808)))

(assert (=> bs!632957 (= (= lt!1570385 lt!1570721) (= lambda!140860 lambda!140853))))

(assert (=> bs!632956 (= (= lt!1570385 lt!1570381) (= lambda!140860 lambda!140851))))

(declare-fun bs!632958 () Bool)

(assert (= bs!632958 (and b!4358376 b!4358346)))

(assert (=> bs!632958 (= (= lt!1570385 lt!1570381) (= lambda!140860 lambda!140850))))

(declare-fun bs!632959 () Bool)

(assert (= bs!632959 (and b!4358376 b!4358378)))

(assert (=> bs!632959 (= lambda!140860 lambda!140859)))

(assert (=> b!4358376 true))

(declare-fun lambda!140861 () Int)

(declare-fun lt!1570772 () ListMap!2213)

(assert (=> bs!632956 (= (= lt!1570772 lt!1570712) (= lambda!140861 lambda!140852))))

(assert (=> bs!632956 (= (= lt!1570772 lt!1570381) (= lambda!140861 lambda!140851))))

(assert (=> bs!632958 (= (= lt!1570772 lt!1570381) (= lambda!140861 lambda!140850))))

(assert (=> bs!632959 (= (= lt!1570772 lt!1570385) (= lambda!140861 lambda!140859))))

(assert (=> b!4358376 (= (= lt!1570772 lt!1570385) (= lambda!140861 lambda!140860))))

(assert (=> bs!632957 (= (= lt!1570772 lt!1570721) (= lambda!140861 lambda!140853))))

(assert (=> b!4358376 true))

(declare-fun bs!632960 () Bool)

(declare-fun d!1288878 () Bool)

(assert (= bs!632960 (and d!1288878 b!4358376)))

(declare-fun lambda!140862 () Int)

(declare-fun lt!1570781 () ListMap!2213)

(assert (=> bs!632960 (= (= lt!1570781 lt!1570772) (= lambda!140862 lambda!140861))))

(declare-fun bs!632961 () Bool)

(assert (= bs!632961 (and d!1288878 b!4358344)))

(assert (=> bs!632961 (= (= lt!1570781 lt!1570712) (= lambda!140862 lambda!140852))))

(assert (=> bs!632961 (= (= lt!1570781 lt!1570381) (= lambda!140862 lambda!140851))))

(declare-fun bs!632962 () Bool)

(assert (= bs!632962 (and d!1288878 b!4358346)))

(assert (=> bs!632962 (= (= lt!1570781 lt!1570381) (= lambda!140862 lambda!140850))))

(declare-fun bs!632963 () Bool)

(assert (= bs!632963 (and d!1288878 b!4358378)))

(assert (=> bs!632963 (= (= lt!1570781 lt!1570385) (= lambda!140862 lambda!140859))))

(assert (=> bs!632960 (= (= lt!1570781 lt!1570385) (= lambda!140862 lambda!140860))))

(declare-fun bs!632964 () Bool)

(assert (= bs!632964 (and d!1288878 d!1288808)))

(assert (=> bs!632964 (= (= lt!1570781 lt!1570721) (= lambda!140862 lambda!140853))))

(assert (=> d!1288878 true))

(declare-fun b!4358374 () Bool)

(declare-fun e!2712326 () Bool)

(assert (=> b!4358374 (= e!2712326 (invariantList!680 (toList!2969 lt!1570781)))))

(declare-fun bm!302922 () Bool)

(declare-fun call!302927 () Bool)

(declare-fun c!741072 () Bool)

(assert (=> bm!302922 (= call!302927 (forall!9130 (toList!2969 lt!1570385) (ite c!741072 lambda!140859 lambda!140861)))))

(declare-fun b!4358375 () Bool)

(declare-fun res!1791523 () Bool)

(assert (=> b!4358375 (=> (not res!1791523) (not e!2712326))))

(assert (=> b!4358375 (= res!1791523 (forall!9130 (toList!2969 lt!1570385) lambda!140862))))

(declare-fun call!302929 () Bool)

(declare-fun bm!302923 () Bool)

(assert (=> bm!302923 (= call!302929 (forall!9130 (ite c!741072 (toList!2969 lt!1570385) (_2!27466 (h!54495 (toList!2970 lm!1707)))) (ite c!741072 lambda!140859 lambda!140861)))))

(declare-fun e!2712327 () ListMap!2213)

(assert (=> b!4358376 (= e!2712327 lt!1570772)))

(declare-fun lt!1570774 () ListMap!2213)

(assert (=> b!4358376 (= lt!1570774 (+!644 lt!1570385 (h!54494 (_2!27466 (h!54495 (toList!2970 lm!1707))))))))

(assert (=> b!4358376 (= lt!1570772 (addToMapMapFromBucket!189 (t!355985 (_2!27466 (h!54495 (toList!2970 lm!1707)))) (+!644 lt!1570385 (h!54494 (_2!27466 (h!54495 (toList!2970 lm!1707)))))))))

(declare-fun lt!1570786 () Unit!71913)

(declare-fun call!302928 () Unit!71913)

(assert (=> b!4358376 (= lt!1570786 call!302928)))

(assert (=> b!4358376 (forall!9130 (toList!2969 lt!1570385) lambda!140860)))

(declare-fun lt!1570777 () Unit!71913)

(assert (=> b!4358376 (= lt!1570777 lt!1570786)))

(assert (=> b!4358376 (forall!9130 (toList!2969 lt!1570774) lambda!140861)))

(declare-fun lt!1570770 () Unit!71913)

(declare-fun Unit!71962 () Unit!71913)

(assert (=> b!4358376 (= lt!1570770 Unit!71962)))

(assert (=> b!4358376 (forall!9130 (t!355985 (_2!27466 (h!54495 (toList!2970 lm!1707)))) lambda!140861)))

(declare-fun lt!1570768 () Unit!71913)

(declare-fun Unit!71963 () Unit!71913)

(assert (=> b!4358376 (= lt!1570768 Unit!71963)))

(declare-fun lt!1570787 () Unit!71913)

(declare-fun Unit!71964 () Unit!71913)

(assert (=> b!4358376 (= lt!1570787 Unit!71964)))

(declare-fun lt!1570780 () Unit!71913)

(assert (=> b!4358376 (= lt!1570780 (forallContained!1771 (toList!2969 lt!1570774) lambda!140861 (h!54494 (_2!27466 (h!54495 (toList!2970 lm!1707))))))))

(assert (=> b!4358376 (contains!11151 lt!1570774 (_1!27465 (h!54494 (_2!27466 (h!54495 (toList!2970 lm!1707))))))))

(declare-fun lt!1570779 () Unit!71913)

(declare-fun Unit!71965 () Unit!71913)

(assert (=> b!4358376 (= lt!1570779 Unit!71965)))

(assert (=> b!4358376 (contains!11151 lt!1570772 (_1!27465 (h!54494 (_2!27466 (h!54495 (toList!2970 lm!1707))))))))

(declare-fun lt!1570788 () Unit!71913)

(declare-fun Unit!71966 () Unit!71913)

(assert (=> b!4358376 (= lt!1570788 Unit!71966)))

(assert (=> b!4358376 (forall!9130 (_2!27466 (h!54495 (toList!2970 lm!1707))) lambda!140861)))

(declare-fun lt!1570776 () Unit!71913)

(declare-fun Unit!71967 () Unit!71913)

(assert (=> b!4358376 (= lt!1570776 Unit!71967)))

(assert (=> b!4358376 (forall!9130 (toList!2969 lt!1570774) lambda!140861)))

(declare-fun lt!1570778 () Unit!71913)

(declare-fun Unit!71968 () Unit!71913)

(assert (=> b!4358376 (= lt!1570778 Unit!71968)))

(declare-fun lt!1570773 () Unit!71913)

(declare-fun Unit!71969 () Unit!71913)

(assert (=> b!4358376 (= lt!1570773 Unit!71969)))

(declare-fun lt!1570782 () Unit!71913)

(assert (=> b!4358376 (= lt!1570782 (addForallContainsKeyThenBeforeAdding!63 lt!1570385 lt!1570772 (_1!27465 (h!54494 (_2!27466 (h!54495 (toList!2970 lm!1707))))) (_2!27465 (h!54494 (_2!27466 (h!54495 (toList!2970 lm!1707)))))))))

(assert (=> b!4358376 (forall!9130 (toList!2969 lt!1570385) lambda!140861)))

(declare-fun lt!1570769 () Unit!71913)

(assert (=> b!4358376 (= lt!1570769 lt!1570782)))

(assert (=> b!4358376 call!302927))

(declare-fun lt!1570771 () Unit!71913)

(declare-fun Unit!71970 () Unit!71913)

(assert (=> b!4358376 (= lt!1570771 Unit!71970)))

(declare-fun res!1791522 () Bool)

(assert (=> b!4358376 (= res!1791522 call!302929)))

(declare-fun e!2712328 () Bool)

(assert (=> b!4358376 (=> (not res!1791522) (not e!2712328))))

(assert (=> b!4358376 e!2712328))

(declare-fun lt!1570775 () Unit!71913)

(declare-fun Unit!71971 () Unit!71913)

(assert (=> b!4358376 (= lt!1570775 Unit!71971)))

(assert (=> b!4358378 (= e!2712327 lt!1570385)))

(declare-fun lt!1570784 () Unit!71913)

(assert (=> b!4358378 (= lt!1570784 call!302928)))

(assert (=> b!4358378 call!302929))

(declare-fun lt!1570783 () Unit!71913)

(assert (=> b!4358378 (= lt!1570783 lt!1570784)))

(assert (=> b!4358378 call!302927))

(declare-fun lt!1570785 () Unit!71913)

(declare-fun Unit!71972 () Unit!71913)

(assert (=> b!4358378 (= lt!1570785 Unit!71972)))

(declare-fun bm!302924 () Bool)

(assert (=> bm!302924 (= call!302928 (lemmaContainsAllItsOwnKeys!63 lt!1570385))))

(assert (=> d!1288878 e!2712326))

(declare-fun res!1791521 () Bool)

(assert (=> d!1288878 (=> (not res!1791521) (not e!2712326))))

(assert (=> d!1288878 (= res!1791521 (forall!9130 (_2!27466 (h!54495 (toList!2970 lm!1707))) lambda!140862))))

(assert (=> d!1288878 (= lt!1570781 e!2712327)))

(assert (=> d!1288878 (= c!741072 ((_ is Nil!48941) (_2!27466 (h!54495 (toList!2970 lm!1707)))))))

(assert (=> d!1288878 (noDuplicateKeys!493 (_2!27466 (h!54495 (toList!2970 lm!1707))))))

(assert (=> d!1288878 (= (addToMapMapFromBucket!189 (_2!27466 (h!54495 (toList!2970 lm!1707))) lt!1570385) lt!1570781)))

(declare-fun b!4358377 () Bool)

(assert (=> b!4358377 (= e!2712328 (forall!9130 (toList!2969 lt!1570385) lambda!140861))))

(assert (= (and d!1288878 c!741072) b!4358378))

(assert (= (and d!1288878 (not c!741072)) b!4358376))

(assert (= (and b!4358376 res!1791522) b!4358377))

(assert (= (or b!4358378 b!4358376) bm!302924))

(assert (= (or b!4358378 b!4358376) bm!302923))

(assert (= (or b!4358378 b!4358376) bm!302922))

(assert (= (and d!1288878 res!1791521) b!4358375))

(assert (= (and b!4358375 res!1791523) b!4358374))

(declare-fun m!4974231 () Bool)

(assert (=> b!4358377 m!4974231))

(declare-fun m!4974233 () Bool)

(assert (=> b!4358376 m!4974233))

(assert (=> b!4358376 m!4974233))

(declare-fun m!4974235 () Bool)

(assert (=> b!4358376 m!4974235))

(declare-fun m!4974237 () Bool)

(assert (=> b!4358376 m!4974237))

(assert (=> b!4358376 m!4974231))

(declare-fun m!4974239 () Bool)

(assert (=> b!4358376 m!4974239))

(declare-fun m!4974241 () Bool)

(assert (=> b!4358376 m!4974241))

(declare-fun m!4974243 () Bool)

(assert (=> b!4358376 m!4974243))

(assert (=> b!4358376 m!4974239))

(declare-fun m!4974245 () Bool)

(assert (=> b!4358376 m!4974245))

(declare-fun m!4974247 () Bool)

(assert (=> b!4358376 m!4974247))

(declare-fun m!4974249 () Bool)

(assert (=> b!4358376 m!4974249))

(declare-fun m!4974251 () Bool)

(assert (=> b!4358376 m!4974251))

(declare-fun m!4974253 () Bool)

(assert (=> bm!302923 m!4974253))

(declare-fun m!4974255 () Bool)

(assert (=> b!4358375 m!4974255))

(declare-fun m!4974257 () Bool)

(assert (=> bm!302924 m!4974257))

(declare-fun m!4974259 () Bool)

(assert (=> d!1288878 m!4974259))

(assert (=> d!1288878 m!4974123))

(declare-fun m!4974261 () Bool)

(assert (=> bm!302922 m!4974261))

(declare-fun m!4974263 () Bool)

(assert (=> b!4358374 m!4974263))

(assert (=> b!4358039 d!1288878))

(declare-fun bs!632965 () Bool)

(declare-fun d!1288880 () Bool)

(assert (= bs!632965 (and d!1288880 b!4358376)))

(declare-fun lambda!140865 () Int)

(assert (=> bs!632965 (not (= lambda!140865 lambda!140861))))

(declare-fun bs!632966 () Bool)

(assert (= bs!632966 (and d!1288880 b!4358344)))

(assert (=> bs!632966 (not (= lambda!140865 lambda!140852))))

(assert (=> bs!632966 (not (= lambda!140865 lambda!140851))))

(declare-fun bs!632967 () Bool)

(assert (= bs!632967 (and d!1288880 b!4358346)))

(assert (=> bs!632967 (not (= lambda!140865 lambda!140850))))

(declare-fun bs!632968 () Bool)

(assert (= bs!632968 (and d!1288880 b!4358378)))

(assert (=> bs!632968 (not (= lambda!140865 lambda!140859))))

(declare-fun bs!632969 () Bool)

(assert (= bs!632969 (and d!1288880 d!1288878)))

(assert (=> bs!632969 (not (= lambda!140865 lambda!140862))))

(assert (=> bs!632965 (not (= lambda!140865 lambda!140860))))

(declare-fun bs!632970 () Bool)

(assert (= bs!632970 (and d!1288880 d!1288808)))

(assert (=> bs!632970 (not (= lambda!140865 lambda!140853))))

(assert (=> d!1288880 true))

(assert (=> d!1288880 true))

(assert (=> d!1288880 (= (allKeysSameHash!451 newBucket!200 hash!377 hashF!1247) (forall!9130 newBucket!200 lambda!140865))))

(declare-fun bs!632971 () Bool)

(assert (= bs!632971 d!1288880))

(declare-fun m!4974265 () Bool)

(assert (=> bs!632971 m!4974265))

(assert (=> b!4358040 d!1288880))

(declare-fun d!1288882 () Bool)

(declare-fun head!9056 (List!49066) tuple2!48344)

(assert (=> d!1288882 (= (head!9054 lm!1707) (head!9056 (toList!2970 lm!1707)))))

(declare-fun bs!632972 () Bool)

(assert (= bs!632972 d!1288882))

(declare-fun m!4974267 () Bool)

(assert (=> bs!632972 m!4974267))

(assert (=> b!4358041 d!1288882))

(declare-fun d!1288884 () Bool)

(declare-fun hash!1577 (Hashable!4885 K!10300) (_ BitVec 64))

(assert (=> d!1288884 (= (hash!1571 hashF!1247 key!3918) (hash!1577 hashF!1247 key!3918))))

(declare-fun bs!632973 () Bool)

(assert (= bs!632973 d!1288884))

(declare-fun m!4974269 () Bool)

(assert (=> bs!632973 m!4974269))

(assert (=> b!4358042 d!1288884))

(declare-fun b!4358387 () Bool)

(declare-fun e!2712331 () Bool)

(declare-fun tp!1330196 () Bool)

(declare-fun tp!1330197 () Bool)

(assert (=> b!4358387 (= e!2712331 (and tp!1330196 tp!1330197))))

(assert (=> b!4358045 (= tp!1330181 e!2712331)))

(assert (= (and b!4358045 ((_ is Cons!48942) (toList!2970 lm!1707))) b!4358387))

(declare-fun b!4358392 () Bool)

(declare-fun e!2712334 () Bool)

(declare-fun tp!1330200 () Bool)

(assert (=> b!4358392 (= e!2712334 (and tp_is_empty!25209 tp_is_empty!25211 tp!1330200))))

(assert (=> b!4358043 (= tp!1330182 e!2712334)))

(assert (= (and b!4358043 ((_ is Cons!48941) (t!355985 newBucket!200))) b!4358392))

(declare-fun b_lambda!131481 () Bool)

(assert (= b_lambda!131461 (or start!421908 b_lambda!131481)))

(declare-fun bs!632974 () Bool)

(declare-fun d!1288886 () Bool)

(assert (= bs!632974 (and d!1288886 start!421908)))

(assert (=> bs!632974 (= (dynLambda!20639 lambda!140757 lt!1570373) (noDuplicateKeys!493 (_2!27466 lt!1570373)))))

(declare-fun m!4974271 () Bool)

(assert (=> bs!632974 m!4974271))

(assert (=> d!1288786 d!1288886))

(declare-fun b_lambda!131483 () Bool)

(assert (= b_lambda!131479 (or start!421908 b_lambda!131483)))

(declare-fun bs!632975 () Bool)

(declare-fun d!1288888 () Bool)

(assert (= bs!632975 (and d!1288888 start!421908)))

(assert (=> bs!632975 (= (dynLambda!20639 lambda!140757 (h!54495 (toList!2970 lt!1570372))) (noDuplicateKeys!493 (_2!27466 (h!54495 (toList!2970 lt!1570372)))))))

(declare-fun m!4974273 () Bool)

(assert (=> bs!632975 m!4974273))

(assert (=> b!4358364 d!1288888))

(declare-fun b_lambda!131485 () Bool)

(assert (= b_lambda!131451 (or start!421908 b_lambda!131485)))

(declare-fun bs!632976 () Bool)

(declare-fun d!1288890 () Bool)

(assert (= bs!632976 (and d!1288890 start!421908)))

(assert (=> bs!632976 (= (dynLambda!20639 lambda!140757 (h!54495 (toList!2970 lt!1570379))) (noDuplicateKeys!493 (_2!27466 (h!54495 (toList!2970 lt!1570379)))))))

(declare-fun m!4974275 () Bool)

(assert (=> bs!632976 m!4974275))

(assert (=> b!4358075 d!1288890))

(declare-fun b_lambda!131487 () Bool)

(assert (= b_lambda!131465 (or start!421908 b_lambda!131487)))

(declare-fun bs!632977 () Bool)

(declare-fun d!1288892 () Bool)

(assert (= bs!632977 (and d!1288892 start!421908)))

(assert (=> bs!632977 (= (dynLambda!20639 lambda!140757 (h!54495 (toList!2970 lm!1707))) (noDuplicateKeys!493 (_2!27466 (h!54495 (toList!2970 lm!1707)))))))

(assert (=> bs!632977 m!4974123))

(assert (=> b!4358258 d!1288892))

(declare-fun b_lambda!131489 () Bool)

(assert (= b_lambda!131463 (or start!421908 b_lambda!131489)))

(declare-fun bs!632978 () Bool)

(declare-fun d!1288894 () Bool)

(assert (= bs!632978 (and d!1288894 start!421908)))

(assert (=> bs!632978 (= (dynLambda!20639 lambda!140757 (tuple2!48345 hash!377 newBucket!200)) (noDuplicateKeys!493 (_2!27466 (tuple2!48345 hash!377 newBucket!200))))))

(declare-fun m!4974277 () Bool)

(assert (=> bs!632978 m!4974277))

(assert (=> b!4358257 d!1288894))

(check-sat (not bm!302921) (not b!4358227) (not d!1288808) (not bs!632976) (not b!4358356) (not d!1288870) (not b!4358272) (not b!4358253) (not d!1288766) (not d!1288874) (not d!1288790) (not b!4358156) (not b!4358377) (not b!4358392) (not b!4358366) (not b!4358157) (not d!1288882) (not d!1288852) (not bm!302923) (not d!1288806) (not d!1288804) (not b!4358155) (not d!1288866) (not b_lambda!131487) (not d!1288780) (not b!4358342) (not b!4358242) (not d!1288786) (not d!1288788) (not d!1288884) (not b!4358353) (not d!1288784) (not bm!302924) (not b!4358374) (not b!4358221) (not b!4358245) (not d!1288880) (not b!4358387) (not bm!302918) (not d!1288854) (not b!4358363) (not bm!302904) (not b!4358369) (not b!4358376) (not b!4358277) (not b!4358351) (not d!1288858) (not b!4358344) (not d!1288746) (not b!4358076) (not b!4358357) (not d!1288802) (not b!4358153) (not bs!632975) (not b_lambda!131485) (not b!4358209) (not b!4358261) (not d!1288878) (not bm!302919) (not d!1288868) (not b!4358252) (not d!1288862) (not b!4358278) (not b!4358355) (not b!4358352) (not b_lambda!131483) (not b!4358154) (not b!4358259) (not b_lambda!131489) (not b!4358199) (not b!4358275) (not bm!302920) (not b!4358274) (not b!4358371) (not b!4358343) (not b!4358220) tp_is_empty!25209 (not d!1288856) (not b!4358273) (not d!1288778) (not b!4358370) (not d!1288872) (not bs!632974) (not bs!632977) (not d!1288864) (not d!1288726) (not b!4358365) (not b!4358238) (not b!4358268) (not d!1288782) (not b!4358354) (not b_lambda!131481) (not bm!302922) (not bm!302896) (not b!4358215) (not b!4358372) tp_is_empty!25211 (not b!4358368) (not b!4358276) (not b!4358151) (not b!4358362) (not d!1288792) (not b!4358345) (not d!1288796) (not b!4358375) (not d!1288876) (not b!4358207) (not b!4358152) (not bs!632978) (not d!1288798))
(check-sat)
