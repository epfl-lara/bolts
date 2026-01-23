; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!420404 () Bool)

(assert start!420404)

(declare-fun b!4350792 () Bool)

(declare-fun e!2707464 () Bool)

(declare-datatypes ((V!10491 0))(
  ( (V!10492 (val!16467 Int)) )
))
(declare-datatypes ((K!10245 0))(
  ( (K!10246 (val!16468 Int)) )
))
(declare-datatypes ((tuple2!48254 0))(
  ( (tuple2!48255 (_1!27421 K!10245) (_2!27421 V!10491)) )
))
(declare-datatypes ((List!49003 0))(
  ( (Nil!48879) (Cons!48879 (h!54414 tuple2!48254) (t!355923 List!49003)) )
))
(declare-datatypes ((tuple2!48256 0))(
  ( (tuple2!48257 (_1!27422 (_ BitVec 64)) (_2!27422 List!49003)) )
))
(declare-datatypes ((List!49004 0))(
  ( (Nil!48880) (Cons!48880 (h!54415 tuple2!48256) (t!355924 List!49004)) )
))
(declare-datatypes ((ListLongMap!1575 0))(
  ( (ListLongMap!1576 (toList!2925 List!49004)) )
))
(declare-fun lt!1564521 () ListLongMap!1575)

(declare-fun lambda!139387 () Int)

(declare-fun forall!9081 (List!49004 Int) Bool)

(assert (=> b!4350792 (= e!2707464 (forall!9081 (toList!2925 lt!1564521) lambda!139387))))

(declare-fun b!4350793 () Bool)

(declare-fun res!1787476 () Bool)

(declare-fun e!2707461 () Bool)

(assert (=> b!4350793 (=> (not res!1787476) (not e!2707461))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4863 0))(
  ( (HashableExt!4862 (__x!30566 Int)) )
))
(declare-fun hashF!1247 () Hashable!4863)

(declare-fun key!3918 () K!10245)

(declare-fun hash!1480 (Hashable!4863 K!10245) (_ BitVec 64))

(assert (=> b!4350793 (= res!1787476 (= (hash!1480 hashF!1247 key!3918) hash!377))))

(declare-fun b!4350794 () Bool)

(declare-fun e!2707460 () Bool)

(assert (=> b!4350794 (= e!2707461 (not e!2707460))))

(declare-fun res!1787481 () Bool)

(assert (=> b!4350794 (=> res!1787481 e!2707460)))

(declare-fun newBucket!200 () List!49003)

(declare-fun lt!1564517 () List!49003)

(declare-fun lt!1564527 () tuple2!48254)

(declare-fun removePairForKey!441 (List!49003 K!10245) List!49003)

(assert (=> b!4350794 (= res!1787481 (not (= newBucket!200 (Cons!48879 lt!1564527 (removePairForKey!441 lt!1564517 key!3918)))))))

(declare-fun newValue!99 () V!10491)

(assert (=> b!4350794 (= lt!1564527 (tuple2!48255 key!3918 newValue!99))))

(declare-fun lt!1564519 () tuple2!48256)

(declare-fun lm!1707 () ListLongMap!1575)

(declare-datatypes ((Unit!71045 0))(
  ( (Unit!71046) )
))
(declare-fun lt!1564528 () Unit!71045)

(declare-fun forallContained!1729 (List!49004 Int tuple2!48256) Unit!71045)

(assert (=> b!4350794 (= lt!1564528 (forallContained!1729 (toList!2925 lm!1707) lambda!139387 lt!1564519))))

(declare-fun contains!11050 (List!49004 tuple2!48256) Bool)

(assert (=> b!4350794 (contains!11050 (toList!2925 lm!1707) lt!1564519)))

(assert (=> b!4350794 (= lt!1564519 (tuple2!48257 hash!377 lt!1564517))))

(declare-fun lt!1564530 () Unit!71045)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!318 (List!49004 (_ BitVec 64) List!49003) Unit!71045)

(assert (=> b!4350794 (= lt!1564530 (lemmaGetValueByKeyImpliesContainsTuple!318 (toList!2925 lm!1707) hash!377 lt!1564517))))

(declare-fun apply!11323 (ListLongMap!1575 (_ BitVec 64)) List!49003)

(assert (=> b!4350794 (= lt!1564517 (apply!11323 lm!1707 hash!377))))

(declare-fun b!4350795 () Bool)

(declare-fun e!2707462 () Bool)

(assert (=> b!4350795 (= e!2707460 e!2707462)))

(declare-fun res!1787483 () Bool)

(assert (=> b!4350795 (=> res!1787483 e!2707462)))

(get-info :version)

(assert (=> b!4350795 (= res!1787483 (or (and ((_ is Cons!48880) (toList!2925 lm!1707)) (= (_1!27422 (h!54415 (toList!2925 lm!1707))) hash!377)) (not ((_ is Cons!48880) (toList!2925 lm!1707))) (= (_1!27422 (h!54415 (toList!2925 lm!1707))) hash!377)))))

(assert (=> b!4350795 e!2707464))

(declare-fun res!1787477 () Bool)

(assert (=> b!4350795 (=> (not res!1787477) (not e!2707464))))

(assert (=> b!4350795 (= res!1787477 (forall!9081 (toList!2925 lt!1564521) lambda!139387))))

(declare-fun lt!1564522 () tuple2!48256)

(declare-fun +!599 (ListLongMap!1575 tuple2!48256) ListLongMap!1575)

(assert (=> b!4350795 (= lt!1564521 (+!599 lm!1707 lt!1564522))))

(assert (=> b!4350795 (= lt!1564522 (tuple2!48257 hash!377 newBucket!200))))

(declare-fun lt!1564526 () Unit!71045)

(declare-fun addValidProp!125 (ListLongMap!1575 Int (_ BitVec 64) List!49003) Unit!71045)

(assert (=> b!4350795 (= lt!1564526 (addValidProp!125 lm!1707 lambda!139387 hash!377 newBucket!200))))

(assert (=> b!4350795 (forall!9081 (toList!2925 lm!1707) lambda!139387)))

(declare-fun b!4350796 () Bool)

(declare-fun e!2707466 () Bool)

(declare-fun containsKey!642 (List!49003 K!10245) Bool)

(assert (=> b!4350796 (= e!2707466 (not (containsKey!642 (_2!27422 (h!54415 (toList!2925 lm!1707))) key!3918)))))

(declare-fun b!4350798 () Bool)

(declare-fun res!1787474 () Bool)

(assert (=> b!4350798 (=> (not res!1787474) (not e!2707461))))

(declare-fun allKeysSameHash!429 (List!49003 (_ BitVec 64) Hashable!4863) Bool)

(assert (=> b!4350798 (= res!1787474 (allKeysSameHash!429 newBucket!200 hash!377 hashF!1247))))

(declare-fun tp_is_empty!25121 () Bool)

(declare-fun b!4350799 () Bool)

(declare-fun tp!1329856 () Bool)

(declare-fun e!2707465 () Bool)

(declare-fun tp_is_empty!25123 () Bool)

(assert (=> b!4350799 (= e!2707465 (and tp_is_empty!25121 tp_is_empty!25123 tp!1329856))))

(declare-fun b!4350800 () Bool)

(declare-fun res!1787475 () Bool)

(assert (=> b!4350800 (=> (not res!1787475) (not e!2707461))))

(declare-fun allKeysSameHashInMap!575 (ListLongMap!1575 Hashable!4863) Bool)

(assert (=> b!4350800 (= res!1787475 (allKeysSameHashInMap!575 lm!1707 hashF!1247))))

(declare-fun b!4350801 () Bool)

(declare-fun res!1787482 () Bool)

(assert (=> b!4350801 (=> res!1787482 e!2707460)))

(declare-fun noDuplicateKeys!471 (List!49003) Bool)

(assert (=> b!4350801 (= res!1787482 (not (noDuplicateKeys!471 newBucket!200)))))

(declare-fun b!4350802 () Bool)

(declare-fun e!2707463 () Bool)

(declare-fun tp!1329855 () Bool)

(assert (=> b!4350802 (= e!2707463 tp!1329855)))

(declare-fun res!1787478 () Bool)

(assert (=> start!420404 (=> (not res!1787478) (not e!2707461))))

(assert (=> start!420404 (= res!1787478 (forall!9081 (toList!2925 lm!1707) lambda!139387))))

(assert (=> start!420404 e!2707461))

(assert (=> start!420404 e!2707465))

(assert (=> start!420404 true))

(declare-fun inv!64431 (ListLongMap!1575) Bool)

(assert (=> start!420404 (and (inv!64431 lm!1707) e!2707463)))

(assert (=> start!420404 tp_is_empty!25121))

(assert (=> start!420404 tp_is_empty!25123))

(declare-fun b!4350797 () Bool)

(declare-fun isEmpty!28177 (ListLongMap!1575) Bool)

(assert (=> b!4350797 (= e!2707462 (not (isEmpty!28177 lm!1707)))))

(declare-fun lt!1564518 () ListLongMap!1575)

(declare-datatypes ((ListMap!2169 0))(
  ( (ListMap!2170 (toList!2926 List!49003)) )
))
(declare-fun lt!1564525 () ListMap!2169)

(declare-fun eq!241 (ListMap!2169 ListMap!2169) Bool)

(declare-fun extractMap!530 (List!49004) ListMap!2169)

(declare-fun +!600 (ListMap!2169 tuple2!48254) ListMap!2169)

(assert (=> b!4350797 (eq!241 (extractMap!530 (toList!2925 (+!599 lt!1564518 lt!1564522))) (+!600 lt!1564525 lt!1564527))))

(declare-fun lt!1564523 () Unit!71045)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!75 (ListLongMap!1575 (_ BitVec 64) List!49003 K!10245 V!10491 Hashable!4863) Unit!71045)

(assert (=> b!4350797 (= lt!1564523 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!75 lt!1564518 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11051 (ListMap!2169 K!10245) Bool)

(assert (=> b!4350797 (contains!11051 lt!1564525 key!3918)))

(assert (=> b!4350797 (= lt!1564525 (extractMap!530 (toList!2925 lt!1564518)))))

(declare-fun tail!6963 (ListLongMap!1575) ListLongMap!1575)

(assert (=> b!4350797 (= lt!1564518 (tail!6963 lm!1707))))

(declare-fun lt!1564520 () ListMap!2169)

(assert (=> b!4350797 (contains!11051 lt!1564520 key!3918)))

(declare-fun lt!1564524 () Unit!71045)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!14 (List!49003 K!10245 V!10491 ListMap!2169) Unit!71045)

(assert (=> b!4350797 (= lt!1564524 (lemmaAddToMapContainsAndNotInListThenInAcc!14 (_2!27422 (h!54415 (toList!2925 lm!1707))) key!3918 newValue!99 lt!1564520))))

(assert (=> b!4350797 (= lt!1564520 (extractMap!530 (t!355924 (toList!2925 lm!1707))))))

(assert (=> b!4350797 e!2707466))

(declare-fun res!1787479 () Bool)

(assert (=> b!4350797 (=> (not res!1787479) (not e!2707466))))

(assert (=> b!4350797 (= res!1787479 (not (containsKey!642 (apply!11323 lm!1707 (_1!27422 (h!54415 (toList!2925 lm!1707)))) key!3918)))))

(declare-fun lt!1564529 () Unit!71045)

(declare-fun lemmaNotSameHashThenCannotContainKey!18 (ListLongMap!1575 K!10245 (_ BitVec 64) Hashable!4863) Unit!71045)

(assert (=> b!4350797 (= lt!1564529 (lemmaNotSameHashThenCannotContainKey!18 lm!1707 key!3918 (_1!27422 (h!54415 (toList!2925 lm!1707))) hashF!1247))))

(declare-fun b!4350803 () Bool)

(declare-fun res!1787473 () Bool)

(assert (=> b!4350803 (=> (not res!1787473) (not e!2707461))))

(assert (=> b!4350803 (= res!1787473 (contains!11051 (extractMap!530 (toList!2925 lm!1707)) key!3918))))

(declare-fun b!4350804 () Bool)

(declare-fun res!1787480 () Bool)

(assert (=> b!4350804 (=> (not res!1787480) (not e!2707461))))

(declare-fun contains!11052 (ListLongMap!1575 (_ BitVec 64)) Bool)

(assert (=> b!4350804 (= res!1787480 (contains!11052 lm!1707 hash!377))))

(assert (= (and start!420404 res!1787478) b!4350800))

(assert (= (and b!4350800 res!1787475) b!4350793))

(assert (= (and b!4350793 res!1787476) b!4350798))

(assert (= (and b!4350798 res!1787474) b!4350803))

(assert (= (and b!4350803 res!1787473) b!4350804))

(assert (= (and b!4350804 res!1787480) b!4350794))

(assert (= (and b!4350794 (not res!1787481)) b!4350801))

(assert (= (and b!4350801 (not res!1787482)) b!4350795))

(assert (= (and b!4350795 res!1787477) b!4350792))

(assert (= (and b!4350795 (not res!1787483)) b!4350797))

(assert (= (and b!4350797 res!1787479) b!4350796))

(assert (= (and start!420404 ((_ is Cons!48879) newBucket!200)) b!4350799))

(assert (= start!420404 b!4350802))

(declare-fun m!4961019 () Bool)

(assert (=> b!4350804 m!4961019))

(declare-fun m!4961021 () Bool)

(assert (=> b!4350792 m!4961021))

(declare-fun m!4961023 () Bool)

(assert (=> b!4350796 m!4961023))

(declare-fun m!4961025 () Bool)

(assert (=> b!4350800 m!4961025))

(declare-fun m!4961027 () Bool)

(assert (=> b!4350797 m!4961027))

(declare-fun m!4961029 () Bool)

(assert (=> b!4350797 m!4961029))

(declare-fun m!4961031 () Bool)

(assert (=> b!4350797 m!4961031))

(declare-fun m!4961033 () Bool)

(assert (=> b!4350797 m!4961033))

(declare-fun m!4961035 () Bool)

(assert (=> b!4350797 m!4961035))

(declare-fun m!4961037 () Bool)

(assert (=> b!4350797 m!4961037))

(declare-fun m!4961039 () Bool)

(assert (=> b!4350797 m!4961039))

(assert (=> b!4350797 m!4961029))

(declare-fun m!4961041 () Bool)

(assert (=> b!4350797 m!4961041))

(declare-fun m!4961043 () Bool)

(assert (=> b!4350797 m!4961043))

(assert (=> b!4350797 m!4961027))

(declare-fun m!4961045 () Bool)

(assert (=> b!4350797 m!4961045))

(declare-fun m!4961047 () Bool)

(assert (=> b!4350797 m!4961047))

(declare-fun m!4961049 () Bool)

(assert (=> b!4350797 m!4961049))

(declare-fun m!4961051 () Bool)

(assert (=> b!4350797 m!4961051))

(declare-fun m!4961053 () Bool)

(assert (=> b!4350797 m!4961053))

(assert (=> b!4350797 m!4961053))

(declare-fun m!4961055 () Bool)

(assert (=> b!4350797 m!4961055))

(declare-fun m!4961057 () Bool)

(assert (=> b!4350801 m!4961057))

(assert (=> b!4350795 m!4961021))

(declare-fun m!4961059 () Bool)

(assert (=> b!4350795 m!4961059))

(declare-fun m!4961061 () Bool)

(assert (=> b!4350795 m!4961061))

(declare-fun m!4961063 () Bool)

(assert (=> b!4350795 m!4961063))

(declare-fun m!4961065 () Bool)

(assert (=> b!4350803 m!4961065))

(assert (=> b!4350803 m!4961065))

(declare-fun m!4961067 () Bool)

(assert (=> b!4350803 m!4961067))

(declare-fun m!4961069 () Bool)

(assert (=> b!4350798 m!4961069))

(declare-fun m!4961071 () Bool)

(assert (=> b!4350793 m!4961071))

(declare-fun m!4961073 () Bool)

(assert (=> b!4350794 m!4961073))

(declare-fun m!4961075 () Bool)

(assert (=> b!4350794 m!4961075))

(declare-fun m!4961077 () Bool)

(assert (=> b!4350794 m!4961077))

(declare-fun m!4961079 () Bool)

(assert (=> b!4350794 m!4961079))

(declare-fun m!4961081 () Bool)

(assert (=> b!4350794 m!4961081))

(assert (=> start!420404 m!4961063))

(declare-fun m!4961083 () Bool)

(assert (=> start!420404 m!4961083))

(check-sat (not b!4350803) tp_is_empty!25121 (not b!4350798) (not b!4350794) (not b!4350795) (not b!4350804) (not b!4350802) (not b!4350800) (not b!4350797) (not b!4350801) (not b!4350793) (not b!4350799) (not b!4350792) (not start!420404) (not b!4350796) tp_is_empty!25123)
(check-sat)
(get-model)

(declare-fun d!1285069 () Bool)

(declare-fun res!1787494 () Bool)

(declare-fun e!2707483 () Bool)

(assert (=> d!1285069 (=> res!1787494 e!2707483)))

(assert (=> d!1285069 (= res!1787494 ((_ is Nil!48880) (toList!2925 lt!1564521)))))

(assert (=> d!1285069 (= (forall!9081 (toList!2925 lt!1564521) lambda!139387) e!2707483)))

(declare-fun b!4350827 () Bool)

(declare-fun e!2707484 () Bool)

(assert (=> b!4350827 (= e!2707483 e!2707484)))

(declare-fun res!1787495 () Bool)

(assert (=> b!4350827 (=> (not res!1787495) (not e!2707484))))

(declare-fun dynLambda!20612 (Int tuple2!48256) Bool)

(assert (=> b!4350827 (= res!1787495 (dynLambda!20612 lambda!139387 (h!54415 (toList!2925 lt!1564521))))))

(declare-fun b!4350828 () Bool)

(assert (=> b!4350828 (= e!2707484 (forall!9081 (t!355924 (toList!2925 lt!1564521)) lambda!139387))))

(assert (= (and d!1285069 (not res!1787494)) b!4350827))

(assert (= (and b!4350827 res!1787495) b!4350828))

(declare-fun b_lambda!130541 () Bool)

(assert (=> (not b_lambda!130541) (not b!4350827)))

(declare-fun m!4961105 () Bool)

(assert (=> b!4350827 m!4961105))

(declare-fun m!4961107 () Bool)

(assert (=> b!4350828 m!4961107))

(assert (=> b!4350795 d!1285069))

(declare-fun d!1285073 () Bool)

(declare-fun e!2707499 () Bool)

(assert (=> d!1285073 e!2707499))

(declare-fun res!1787512 () Bool)

(assert (=> d!1285073 (=> (not res!1787512) (not e!2707499))))

(declare-fun lt!1564552 () ListLongMap!1575)

(assert (=> d!1285073 (= res!1787512 (contains!11052 lt!1564552 (_1!27422 lt!1564522)))))

(declare-fun lt!1564551 () List!49004)

(assert (=> d!1285073 (= lt!1564552 (ListLongMap!1576 lt!1564551))))

(declare-fun lt!1564554 () Unit!71045)

(declare-fun lt!1564553 () Unit!71045)

(assert (=> d!1285073 (= lt!1564554 lt!1564553)))

(declare-datatypes ((Option!10435 0))(
  ( (None!10434) (Some!10434 (v!43260 List!49003)) )
))
(declare-fun getValueByKey!421 (List!49004 (_ BitVec 64)) Option!10435)

(assert (=> d!1285073 (= (getValueByKey!421 lt!1564551 (_1!27422 lt!1564522)) (Some!10434 (_2!27422 lt!1564522)))))

(declare-fun lemmaContainsTupThenGetReturnValue!195 (List!49004 (_ BitVec 64) List!49003) Unit!71045)

(assert (=> d!1285073 (= lt!1564553 (lemmaContainsTupThenGetReturnValue!195 lt!1564551 (_1!27422 lt!1564522) (_2!27422 lt!1564522)))))

(declare-fun insertStrictlySorted!118 (List!49004 (_ BitVec 64) List!49003) List!49004)

(assert (=> d!1285073 (= lt!1564551 (insertStrictlySorted!118 (toList!2925 lm!1707) (_1!27422 lt!1564522) (_2!27422 lt!1564522)))))

(assert (=> d!1285073 (= (+!599 lm!1707 lt!1564522) lt!1564552)))

(declare-fun b!4350845 () Bool)

(declare-fun res!1787513 () Bool)

(assert (=> b!4350845 (=> (not res!1787513) (not e!2707499))))

(assert (=> b!4350845 (= res!1787513 (= (getValueByKey!421 (toList!2925 lt!1564552) (_1!27422 lt!1564522)) (Some!10434 (_2!27422 lt!1564522))))))

(declare-fun b!4350846 () Bool)

(assert (=> b!4350846 (= e!2707499 (contains!11050 (toList!2925 lt!1564552) lt!1564522))))

(assert (= (and d!1285073 res!1787512) b!4350845))

(assert (= (and b!4350845 res!1787513) b!4350846))

(declare-fun m!4961119 () Bool)

(assert (=> d!1285073 m!4961119))

(declare-fun m!4961121 () Bool)

(assert (=> d!1285073 m!4961121))

(declare-fun m!4961123 () Bool)

(assert (=> d!1285073 m!4961123))

(declare-fun m!4961125 () Bool)

(assert (=> d!1285073 m!4961125))

(declare-fun m!4961127 () Bool)

(assert (=> b!4350845 m!4961127))

(declare-fun m!4961129 () Bool)

(assert (=> b!4350846 m!4961129))

(assert (=> b!4350795 d!1285073))

(declare-fun d!1285081 () Bool)

(assert (=> d!1285081 (forall!9081 (toList!2925 (+!599 lm!1707 (tuple2!48257 hash!377 newBucket!200))) lambda!139387)))

(declare-fun lt!1564557 () Unit!71045)

(declare-fun choose!26763 (ListLongMap!1575 Int (_ BitVec 64) List!49003) Unit!71045)

(assert (=> d!1285081 (= lt!1564557 (choose!26763 lm!1707 lambda!139387 hash!377 newBucket!200))))

(declare-fun e!2707502 () Bool)

(assert (=> d!1285081 e!2707502))

(declare-fun res!1787516 () Bool)

(assert (=> d!1285081 (=> (not res!1787516) (not e!2707502))))

(assert (=> d!1285081 (= res!1787516 (forall!9081 (toList!2925 lm!1707) lambda!139387))))

(assert (=> d!1285081 (= (addValidProp!125 lm!1707 lambda!139387 hash!377 newBucket!200) lt!1564557)))

(declare-fun b!4350850 () Bool)

(assert (=> b!4350850 (= e!2707502 (dynLambda!20612 lambda!139387 (tuple2!48257 hash!377 newBucket!200)))))

(assert (= (and d!1285081 res!1787516) b!4350850))

(declare-fun b_lambda!130545 () Bool)

(assert (=> (not b_lambda!130545) (not b!4350850)))

(declare-fun m!4961131 () Bool)

(assert (=> d!1285081 m!4961131))

(declare-fun m!4961133 () Bool)

(assert (=> d!1285081 m!4961133))

(declare-fun m!4961135 () Bool)

(assert (=> d!1285081 m!4961135))

(assert (=> d!1285081 m!4961063))

(declare-fun m!4961137 () Bool)

(assert (=> b!4350850 m!4961137))

(assert (=> b!4350795 d!1285081))

(declare-fun d!1285083 () Bool)

(declare-fun res!1787517 () Bool)

(declare-fun e!2707503 () Bool)

(assert (=> d!1285083 (=> res!1787517 e!2707503)))

(assert (=> d!1285083 (= res!1787517 ((_ is Nil!48880) (toList!2925 lm!1707)))))

(assert (=> d!1285083 (= (forall!9081 (toList!2925 lm!1707) lambda!139387) e!2707503)))

(declare-fun b!4350851 () Bool)

(declare-fun e!2707504 () Bool)

(assert (=> b!4350851 (= e!2707503 e!2707504)))

(declare-fun res!1787518 () Bool)

(assert (=> b!4350851 (=> (not res!1787518) (not e!2707504))))

(assert (=> b!4350851 (= res!1787518 (dynLambda!20612 lambda!139387 (h!54415 (toList!2925 lm!1707))))))

(declare-fun b!4350852 () Bool)

(assert (=> b!4350852 (= e!2707504 (forall!9081 (t!355924 (toList!2925 lm!1707)) lambda!139387))))

(assert (= (and d!1285083 (not res!1787517)) b!4350851))

(assert (= (and b!4350851 res!1787518) b!4350852))

(declare-fun b_lambda!130547 () Bool)

(assert (=> (not b_lambda!130547) (not b!4350851)))

(declare-fun m!4961139 () Bool)

(assert (=> b!4350851 m!4961139))

(declare-fun m!4961141 () Bool)

(assert (=> b!4350852 m!4961141))

(assert (=> b!4350795 d!1285083))

(declare-fun d!1285085 () Bool)

(declare-fun e!2707510 () Bool)

(assert (=> d!1285085 e!2707510))

(declare-fun res!1787521 () Bool)

(assert (=> d!1285085 (=> res!1787521 e!2707510)))

(declare-fun lt!1564568 () Bool)

(assert (=> d!1285085 (= res!1787521 (not lt!1564568))))

(declare-fun lt!1564567 () Bool)

(assert (=> d!1285085 (= lt!1564568 lt!1564567)))

(declare-fun lt!1564569 () Unit!71045)

(declare-fun e!2707509 () Unit!71045)

(assert (=> d!1285085 (= lt!1564569 e!2707509)))

(declare-fun c!739589 () Bool)

(assert (=> d!1285085 (= c!739589 lt!1564567)))

(declare-fun containsKey!643 (List!49004 (_ BitVec 64)) Bool)

(assert (=> d!1285085 (= lt!1564567 (containsKey!643 (toList!2925 lm!1707) hash!377))))

(assert (=> d!1285085 (= (contains!11052 lm!1707 hash!377) lt!1564568)))

(declare-fun b!4350859 () Bool)

(declare-fun lt!1564566 () Unit!71045)

(assert (=> b!4350859 (= e!2707509 lt!1564566)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!333 (List!49004 (_ BitVec 64)) Unit!71045)

(assert (=> b!4350859 (= lt!1564566 (lemmaContainsKeyImpliesGetValueByKeyDefined!333 (toList!2925 lm!1707) hash!377))))

(declare-fun isDefined!7730 (Option!10435) Bool)

(assert (=> b!4350859 (isDefined!7730 (getValueByKey!421 (toList!2925 lm!1707) hash!377))))

(declare-fun b!4350860 () Bool)

(declare-fun Unit!71047 () Unit!71045)

(assert (=> b!4350860 (= e!2707509 Unit!71047)))

(declare-fun b!4350861 () Bool)

(assert (=> b!4350861 (= e!2707510 (isDefined!7730 (getValueByKey!421 (toList!2925 lm!1707) hash!377)))))

(assert (= (and d!1285085 c!739589) b!4350859))

(assert (= (and d!1285085 (not c!739589)) b!4350860))

(assert (= (and d!1285085 (not res!1787521)) b!4350861))

(declare-fun m!4961143 () Bool)

(assert (=> d!1285085 m!4961143))

(declare-fun m!4961145 () Bool)

(assert (=> b!4350859 m!4961145))

(declare-fun m!4961147 () Bool)

(assert (=> b!4350859 m!4961147))

(assert (=> b!4350859 m!4961147))

(declare-fun m!4961149 () Bool)

(assert (=> b!4350859 m!4961149))

(assert (=> b!4350861 m!4961147))

(assert (=> b!4350861 m!4961147))

(assert (=> b!4350861 m!4961149))

(assert (=> b!4350804 d!1285085))

(assert (=> start!420404 d!1285083))

(declare-fun d!1285087 () Bool)

(declare-fun isStrictlySorted!88 (List!49004) Bool)

(assert (=> d!1285087 (= (inv!64431 lm!1707) (isStrictlySorted!88 (toList!2925 lm!1707)))))

(declare-fun bs!628978 () Bool)

(assert (= bs!628978 d!1285087))

(declare-fun m!4961151 () Bool)

(assert (=> bs!628978 m!4961151))

(assert (=> start!420404 d!1285087))

(declare-fun d!1285089 () Bool)

(declare-fun get!15870 (Option!10435) List!49003)

(assert (=> d!1285089 (= (apply!11323 lm!1707 hash!377) (get!15870 (getValueByKey!421 (toList!2925 lm!1707) hash!377)))))

(declare-fun bs!628979 () Bool)

(assert (= bs!628979 d!1285089))

(assert (=> bs!628979 m!4961147))

(assert (=> bs!628979 m!4961147))

(declare-fun m!4961153 () Bool)

(assert (=> bs!628979 m!4961153))

(assert (=> b!4350794 d!1285089))

(declare-fun b!4350897 () Bool)

(declare-fun e!2707533 () List!49003)

(assert (=> b!4350897 (= e!2707533 (t!355923 lt!1564517))))

(declare-fun b!4350898 () Bool)

(declare-fun e!2707534 () List!49003)

(assert (=> b!4350898 (= e!2707533 e!2707534)))

(declare-fun c!739604 () Bool)

(assert (=> b!4350898 (= c!739604 ((_ is Cons!48879) lt!1564517))))

(declare-fun b!4350899 () Bool)

(assert (=> b!4350899 (= e!2707534 (Cons!48879 (h!54414 lt!1564517) (removePairForKey!441 (t!355923 lt!1564517) key!3918)))))

(declare-fun d!1285091 () Bool)

(declare-fun lt!1564596 () List!49003)

(assert (=> d!1285091 (not (containsKey!642 lt!1564596 key!3918))))

(assert (=> d!1285091 (= lt!1564596 e!2707533)))

(declare-fun c!739603 () Bool)

(assert (=> d!1285091 (= c!739603 (and ((_ is Cons!48879) lt!1564517) (= (_1!27421 (h!54414 lt!1564517)) key!3918)))))

(assert (=> d!1285091 (noDuplicateKeys!471 lt!1564517)))

(assert (=> d!1285091 (= (removePairForKey!441 lt!1564517 key!3918) lt!1564596)))

(declare-fun b!4350900 () Bool)

(assert (=> b!4350900 (= e!2707534 Nil!48879)))

(assert (= (and d!1285091 c!739603) b!4350897))

(assert (= (and d!1285091 (not c!739603)) b!4350898))

(assert (= (and b!4350898 c!739604) b!4350899))

(assert (= (and b!4350898 (not c!739604)) b!4350900))

(declare-fun m!4961163 () Bool)

(assert (=> b!4350899 m!4961163))

(declare-fun m!4961167 () Bool)

(assert (=> d!1285091 m!4961167))

(declare-fun m!4961171 () Bool)

(assert (=> d!1285091 m!4961171))

(assert (=> b!4350794 d!1285091))

(declare-fun d!1285093 () Bool)

(assert (=> d!1285093 (dynLambda!20612 lambda!139387 lt!1564519)))

(declare-fun lt!1564599 () Unit!71045)

(declare-fun choose!26764 (List!49004 Int tuple2!48256) Unit!71045)

(assert (=> d!1285093 (= lt!1564599 (choose!26764 (toList!2925 lm!1707) lambda!139387 lt!1564519))))

(declare-fun e!2707537 () Bool)

(assert (=> d!1285093 e!2707537))

(declare-fun res!1787533 () Bool)

(assert (=> d!1285093 (=> (not res!1787533) (not e!2707537))))

(assert (=> d!1285093 (= res!1787533 (forall!9081 (toList!2925 lm!1707) lambda!139387))))

(assert (=> d!1285093 (= (forallContained!1729 (toList!2925 lm!1707) lambda!139387 lt!1564519) lt!1564599)))

(declare-fun b!4350903 () Bool)

(assert (=> b!4350903 (= e!2707537 (contains!11050 (toList!2925 lm!1707) lt!1564519))))

(assert (= (and d!1285093 res!1787533) b!4350903))

(declare-fun b_lambda!130549 () Bool)

(assert (=> (not b_lambda!130549) (not d!1285093)))

(declare-fun m!4961181 () Bool)

(assert (=> d!1285093 m!4961181))

(declare-fun m!4961183 () Bool)

(assert (=> d!1285093 m!4961183))

(assert (=> d!1285093 m!4961063))

(assert (=> b!4350903 m!4961077))

(assert (=> b!4350794 d!1285093))

(declare-fun d!1285097 () Bool)

(assert (=> d!1285097 (contains!11050 (toList!2925 lm!1707) (tuple2!48257 hash!377 lt!1564517))))

(declare-fun lt!1564602 () Unit!71045)

(declare-fun choose!26765 (List!49004 (_ BitVec 64) List!49003) Unit!71045)

(assert (=> d!1285097 (= lt!1564602 (choose!26765 (toList!2925 lm!1707) hash!377 lt!1564517))))

(declare-fun e!2707540 () Bool)

(assert (=> d!1285097 e!2707540))

(declare-fun res!1787536 () Bool)

(assert (=> d!1285097 (=> (not res!1787536) (not e!2707540))))

(assert (=> d!1285097 (= res!1787536 (isStrictlySorted!88 (toList!2925 lm!1707)))))

(assert (=> d!1285097 (= (lemmaGetValueByKeyImpliesContainsTuple!318 (toList!2925 lm!1707) hash!377 lt!1564517) lt!1564602)))

(declare-fun b!4350906 () Bool)

(assert (=> b!4350906 (= e!2707540 (= (getValueByKey!421 (toList!2925 lm!1707) hash!377) (Some!10434 lt!1564517)))))

(assert (= (and d!1285097 res!1787536) b!4350906))

(declare-fun m!4961185 () Bool)

(assert (=> d!1285097 m!4961185))

(declare-fun m!4961187 () Bool)

(assert (=> d!1285097 m!4961187))

(assert (=> d!1285097 m!4961151))

(assert (=> b!4350906 m!4961147))

(assert (=> b!4350794 d!1285097))

(declare-fun d!1285099 () Bool)

(declare-fun lt!1564605 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7682 (List!49004) (InoxSet tuple2!48256))

(assert (=> d!1285099 (= lt!1564605 (select (content!7682 (toList!2925 lm!1707)) lt!1564519))))

(declare-fun e!2707546 () Bool)

(assert (=> d!1285099 (= lt!1564605 e!2707546)))

(declare-fun res!1787542 () Bool)

(assert (=> d!1285099 (=> (not res!1787542) (not e!2707546))))

(assert (=> d!1285099 (= res!1787542 ((_ is Cons!48880) (toList!2925 lm!1707)))))

(assert (=> d!1285099 (= (contains!11050 (toList!2925 lm!1707) lt!1564519) lt!1564605)))

(declare-fun b!4350911 () Bool)

(declare-fun e!2707545 () Bool)

(assert (=> b!4350911 (= e!2707546 e!2707545)))

(declare-fun res!1787541 () Bool)

(assert (=> b!4350911 (=> res!1787541 e!2707545)))

(assert (=> b!4350911 (= res!1787541 (= (h!54415 (toList!2925 lm!1707)) lt!1564519))))

(declare-fun b!4350912 () Bool)

(assert (=> b!4350912 (= e!2707545 (contains!11050 (t!355924 (toList!2925 lm!1707)) lt!1564519))))

(assert (= (and d!1285099 res!1787542) b!4350911))

(assert (= (and b!4350911 (not res!1787541)) b!4350912))

(declare-fun m!4961189 () Bool)

(assert (=> d!1285099 m!4961189))

(declare-fun m!4961191 () Bool)

(assert (=> d!1285099 m!4961191))

(declare-fun m!4961193 () Bool)

(assert (=> b!4350912 m!4961193))

(assert (=> b!4350794 d!1285099))

(declare-fun d!1285101 () Bool)

(assert (=> d!1285101 true))

(assert (=> d!1285101 true))

(declare-fun lambda!139390 () Int)

(declare-fun forall!9083 (List!49003 Int) Bool)

(assert (=> d!1285101 (= (allKeysSameHash!429 newBucket!200 hash!377 hashF!1247) (forall!9083 newBucket!200 lambda!139390))))

(declare-fun bs!628980 () Bool)

(assert (= bs!628980 d!1285101))

(declare-fun m!4961195 () Bool)

(assert (=> bs!628980 m!4961195))

(assert (=> b!4350798 d!1285101))

(declare-fun d!1285103 () Bool)

(declare-fun res!1787547 () Bool)

(declare-fun e!2707553 () Bool)

(assert (=> d!1285103 (=> res!1787547 e!2707553)))

(assert (=> d!1285103 (= res!1787547 (and ((_ is Cons!48879) (_2!27422 (h!54415 (toList!2925 lm!1707)))) (= (_1!27421 (h!54414 (_2!27422 (h!54415 (toList!2925 lm!1707))))) key!3918)))))

(assert (=> d!1285103 (= (containsKey!642 (_2!27422 (h!54415 (toList!2925 lm!1707))) key!3918) e!2707553)))

(declare-fun b!4350925 () Bool)

(declare-fun e!2707554 () Bool)

(assert (=> b!4350925 (= e!2707553 e!2707554)))

(declare-fun res!1787548 () Bool)

(assert (=> b!4350925 (=> (not res!1787548) (not e!2707554))))

(assert (=> b!4350925 (= res!1787548 ((_ is Cons!48879) (_2!27422 (h!54415 (toList!2925 lm!1707)))))))

(declare-fun b!4350926 () Bool)

(assert (=> b!4350926 (= e!2707554 (containsKey!642 (t!355923 (_2!27422 (h!54415 (toList!2925 lm!1707)))) key!3918))))

(assert (= (and d!1285103 (not res!1787547)) b!4350925))

(assert (= (and b!4350925 res!1787548) b!4350926))

(declare-fun m!4961197 () Bool)

(assert (=> b!4350926 m!4961197))

(assert (=> b!4350796 d!1285103))

(declare-fun b!4350967 () Bool)

(declare-fun e!2707581 () Bool)

(declare-datatypes ((List!49006 0))(
  ( (Nil!48882) (Cons!48882 (h!54419 K!10245) (t!355926 List!49006)) )
))
(declare-fun contains!11054 (List!49006 K!10245) Bool)

(declare-fun keys!16494 (ListMap!2169) List!49006)

(assert (=> b!4350967 (= e!2707581 (not (contains!11054 (keys!16494 lt!1564525) key!3918)))))

(declare-fun b!4350968 () Bool)

(assert (=> b!4350968 false))

(declare-fun lt!1564637 () Unit!71045)

(declare-fun lt!1564636 () Unit!71045)

(assert (=> b!4350968 (= lt!1564637 lt!1564636)))

(declare-fun containsKey!645 (List!49003 K!10245) Bool)

(assert (=> b!4350968 (containsKey!645 (toList!2926 lt!1564525) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!108 (List!49003 K!10245) Unit!71045)

(assert (=> b!4350968 (= lt!1564636 (lemmaInGetKeysListThenContainsKey!108 (toList!2926 lt!1564525) key!3918))))

(declare-fun e!2707582 () Unit!71045)

(declare-fun Unit!71050 () Unit!71045)

(assert (=> b!4350968 (= e!2707582 Unit!71050)))

(declare-fun b!4350969 () Bool)

(declare-fun e!2707580 () Bool)

(assert (=> b!4350969 (= e!2707580 (contains!11054 (keys!16494 lt!1564525) key!3918))))

(declare-fun b!4350971 () Bool)

(declare-fun e!2707583 () Unit!71045)

(declare-fun lt!1564634 () Unit!71045)

(assert (=> b!4350971 (= e!2707583 lt!1564634)))

(declare-fun lt!1564639 () Unit!71045)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!335 (List!49003 K!10245) Unit!71045)

(assert (=> b!4350971 (= lt!1564639 (lemmaContainsKeyImpliesGetValueByKeyDefined!335 (toList!2926 lt!1564525) key!3918))))

(declare-datatypes ((Option!10437 0))(
  ( (None!10436) (Some!10436 (v!43262 V!10491)) )
))
(declare-fun isDefined!7732 (Option!10437) Bool)

(declare-fun getValueByKey!423 (List!49003 K!10245) Option!10437)

(assert (=> b!4350971 (isDefined!7732 (getValueByKey!423 (toList!2926 lt!1564525) key!3918))))

(declare-fun lt!1564641 () Unit!71045)

(assert (=> b!4350971 (= lt!1564641 lt!1564639)))

(declare-fun lemmaInListThenGetKeysListContains!107 (List!49003 K!10245) Unit!71045)

(assert (=> b!4350971 (= lt!1564634 (lemmaInListThenGetKeysListContains!107 (toList!2926 lt!1564525) key!3918))))

(declare-fun call!302385 () Bool)

(assert (=> b!4350971 call!302385))

(declare-fun b!4350972 () Bool)

(assert (=> b!4350972 (= e!2707583 e!2707582)))

(declare-fun c!739616 () Bool)

(assert (=> b!4350972 (= c!739616 call!302385)))

(declare-fun b!4350973 () Bool)

(declare-fun e!2707584 () List!49006)

(assert (=> b!4350973 (= e!2707584 (keys!16494 lt!1564525))))

(declare-fun b!4350974 () Bool)

(declare-fun Unit!71051 () Unit!71045)

(assert (=> b!4350974 (= e!2707582 Unit!71051)))

(declare-fun bm!302380 () Bool)

(assert (=> bm!302380 (= call!302385 (contains!11054 e!2707584 key!3918))))

(declare-fun c!739615 () Bool)

(declare-fun c!739617 () Bool)

(assert (=> bm!302380 (= c!739615 c!739617)))

(declare-fun b!4350975 () Bool)

(declare-fun getKeysList!110 (List!49003) List!49006)

(assert (=> b!4350975 (= e!2707584 (getKeysList!110 (toList!2926 lt!1564525)))))

(declare-fun d!1285105 () Bool)

(declare-fun e!2707579 () Bool)

(assert (=> d!1285105 e!2707579))

(declare-fun res!1787568 () Bool)

(assert (=> d!1285105 (=> res!1787568 e!2707579)))

(assert (=> d!1285105 (= res!1787568 e!2707581)))

(declare-fun res!1787567 () Bool)

(assert (=> d!1285105 (=> (not res!1787567) (not e!2707581))))

(declare-fun lt!1564635 () Bool)

(assert (=> d!1285105 (= res!1787567 (not lt!1564635))))

(declare-fun lt!1564640 () Bool)

(assert (=> d!1285105 (= lt!1564635 lt!1564640)))

(declare-fun lt!1564638 () Unit!71045)

(assert (=> d!1285105 (= lt!1564638 e!2707583)))

(assert (=> d!1285105 (= c!739617 lt!1564640)))

(assert (=> d!1285105 (= lt!1564640 (containsKey!645 (toList!2926 lt!1564525) key!3918))))

(assert (=> d!1285105 (= (contains!11051 lt!1564525 key!3918) lt!1564635)))

(declare-fun b!4350970 () Bool)

(assert (=> b!4350970 (= e!2707579 e!2707580)))

(declare-fun res!1787569 () Bool)

(assert (=> b!4350970 (=> (not res!1787569) (not e!2707580))))

(assert (=> b!4350970 (= res!1787569 (isDefined!7732 (getValueByKey!423 (toList!2926 lt!1564525) key!3918)))))

(assert (= (and d!1285105 c!739617) b!4350971))

(assert (= (and d!1285105 (not c!739617)) b!4350972))

(assert (= (and b!4350972 c!739616) b!4350968))

(assert (= (and b!4350972 (not c!739616)) b!4350974))

(assert (= (or b!4350971 b!4350972) bm!302380))

(assert (= (and bm!302380 c!739615) b!4350975))

(assert (= (and bm!302380 (not c!739615)) b!4350973))

(assert (= (and d!1285105 res!1787567) b!4350967))

(assert (= (and d!1285105 (not res!1787568)) b!4350970))

(assert (= (and b!4350970 res!1787569) b!4350969))

(declare-fun m!4961223 () Bool)

(assert (=> d!1285105 m!4961223))

(declare-fun m!4961225 () Bool)

(assert (=> bm!302380 m!4961225))

(declare-fun m!4961227 () Bool)

(assert (=> b!4350967 m!4961227))

(assert (=> b!4350967 m!4961227))

(declare-fun m!4961229 () Bool)

(assert (=> b!4350967 m!4961229))

(declare-fun m!4961231 () Bool)

(assert (=> b!4350975 m!4961231))

(declare-fun m!4961233 () Bool)

(assert (=> b!4350970 m!4961233))

(assert (=> b!4350970 m!4961233))

(declare-fun m!4961235 () Bool)

(assert (=> b!4350970 m!4961235))

(declare-fun m!4961237 () Bool)

(assert (=> b!4350971 m!4961237))

(assert (=> b!4350971 m!4961233))

(assert (=> b!4350971 m!4961233))

(assert (=> b!4350971 m!4961235))

(declare-fun m!4961239 () Bool)

(assert (=> b!4350971 m!4961239))

(assert (=> b!4350968 m!4961223))

(declare-fun m!4961241 () Bool)

(assert (=> b!4350968 m!4961241))

(assert (=> b!4350969 m!4961227))

(assert (=> b!4350969 m!4961227))

(assert (=> b!4350969 m!4961229))

(assert (=> b!4350973 m!4961227))

(assert (=> b!4350797 d!1285105))

(declare-fun d!1285119 () Bool)

(declare-fun e!2707588 () Bool)

(assert (=> d!1285119 e!2707588))

(declare-fun res!1787577 () Bool)

(assert (=> d!1285119 (=> (not res!1787577) (not e!2707588))))

(declare-fun lt!1564654 () ListMap!2169)

(assert (=> d!1285119 (= res!1787577 (contains!11051 lt!1564654 (_1!27421 lt!1564527)))))

(declare-fun lt!1564655 () List!49003)

(assert (=> d!1285119 (= lt!1564654 (ListMap!2170 lt!1564655))))

(declare-fun lt!1564656 () Unit!71045)

(declare-fun lt!1564657 () Unit!71045)

(assert (=> d!1285119 (= lt!1564656 lt!1564657)))

(assert (=> d!1285119 (= (getValueByKey!423 lt!1564655 (_1!27421 lt!1564527)) (Some!10436 (_2!27421 lt!1564527)))))

(declare-fun lemmaContainsTupThenGetReturnValue!198 (List!49003 K!10245 V!10491) Unit!71045)

(assert (=> d!1285119 (= lt!1564657 (lemmaContainsTupThenGetReturnValue!198 lt!1564655 (_1!27421 lt!1564527) (_2!27421 lt!1564527)))))

(declare-fun insertNoDuplicatedKeys!87 (List!49003 K!10245 V!10491) List!49003)

(assert (=> d!1285119 (= lt!1564655 (insertNoDuplicatedKeys!87 (toList!2926 lt!1564525) (_1!27421 lt!1564527) (_2!27421 lt!1564527)))))

(assert (=> d!1285119 (= (+!600 lt!1564525 lt!1564527) lt!1564654)))

(declare-fun b!4350982 () Bool)

(declare-fun res!1787576 () Bool)

(assert (=> b!4350982 (=> (not res!1787576) (not e!2707588))))

(assert (=> b!4350982 (= res!1787576 (= (getValueByKey!423 (toList!2926 lt!1564654) (_1!27421 lt!1564527)) (Some!10436 (_2!27421 lt!1564527))))))

(declare-fun b!4350983 () Bool)

(declare-fun contains!11056 (List!49003 tuple2!48254) Bool)

(assert (=> b!4350983 (= e!2707588 (contains!11056 (toList!2926 lt!1564654) lt!1564527))))

(assert (= (and d!1285119 res!1787577) b!4350982))

(assert (= (and b!4350982 res!1787576) b!4350983))

(declare-fun m!4961255 () Bool)

(assert (=> d!1285119 m!4961255))

(declare-fun m!4961257 () Bool)

(assert (=> d!1285119 m!4961257))

(declare-fun m!4961259 () Bool)

(assert (=> d!1285119 m!4961259))

(declare-fun m!4961261 () Bool)

(assert (=> d!1285119 m!4961261))

(declare-fun m!4961263 () Bool)

(assert (=> b!4350982 m!4961263))

(declare-fun m!4961265 () Bool)

(assert (=> b!4350983 m!4961265))

(assert (=> b!4350797 d!1285119))

(declare-fun d!1285123 () Bool)

(declare-fun tail!6965 (List!49004) List!49004)

(assert (=> d!1285123 (= (tail!6963 lm!1707) (ListLongMap!1576 (tail!6965 (toList!2925 lm!1707))))))

(declare-fun bs!628989 () Bool)

(assert (= bs!628989 d!1285123))

(declare-fun m!4961267 () Bool)

(assert (=> bs!628989 m!4961267))

(assert (=> b!4350797 d!1285123))

(declare-fun d!1285125 () Bool)

(declare-fun content!7683 (List!49003) (InoxSet tuple2!48254))

(assert (=> d!1285125 (= (eq!241 (extractMap!530 (toList!2925 (+!599 lt!1564518 lt!1564522))) (+!600 lt!1564525 lt!1564527)) (= (content!7683 (toList!2926 (extractMap!530 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (content!7683 (toList!2926 (+!600 lt!1564525 lt!1564527)))))))

(declare-fun bs!628990 () Bool)

(assert (= bs!628990 d!1285125))

(declare-fun m!4961269 () Bool)

(assert (=> bs!628990 m!4961269))

(declare-fun m!4961271 () Bool)

(assert (=> bs!628990 m!4961271))

(assert (=> b!4350797 d!1285125))

(declare-fun d!1285127 () Bool)

(declare-fun e!2707589 () Bool)

(assert (=> d!1285127 e!2707589))

(declare-fun res!1787578 () Bool)

(assert (=> d!1285127 (=> (not res!1787578) (not e!2707589))))

(declare-fun lt!1564659 () ListLongMap!1575)

(assert (=> d!1285127 (= res!1787578 (contains!11052 lt!1564659 (_1!27422 lt!1564522)))))

(declare-fun lt!1564658 () List!49004)

(assert (=> d!1285127 (= lt!1564659 (ListLongMap!1576 lt!1564658))))

(declare-fun lt!1564661 () Unit!71045)

(declare-fun lt!1564660 () Unit!71045)

(assert (=> d!1285127 (= lt!1564661 lt!1564660)))

(assert (=> d!1285127 (= (getValueByKey!421 lt!1564658 (_1!27422 lt!1564522)) (Some!10434 (_2!27422 lt!1564522)))))

(assert (=> d!1285127 (= lt!1564660 (lemmaContainsTupThenGetReturnValue!195 lt!1564658 (_1!27422 lt!1564522) (_2!27422 lt!1564522)))))

(assert (=> d!1285127 (= lt!1564658 (insertStrictlySorted!118 (toList!2925 lt!1564518) (_1!27422 lt!1564522) (_2!27422 lt!1564522)))))

(assert (=> d!1285127 (= (+!599 lt!1564518 lt!1564522) lt!1564659)))

(declare-fun b!4350984 () Bool)

(declare-fun res!1787579 () Bool)

(assert (=> b!4350984 (=> (not res!1787579) (not e!2707589))))

(assert (=> b!4350984 (= res!1787579 (= (getValueByKey!421 (toList!2925 lt!1564659) (_1!27422 lt!1564522)) (Some!10434 (_2!27422 lt!1564522))))))

(declare-fun b!4350985 () Bool)

(assert (=> b!4350985 (= e!2707589 (contains!11050 (toList!2925 lt!1564659) lt!1564522))))

(assert (= (and d!1285127 res!1787578) b!4350984))

(assert (= (and b!4350984 res!1787579) b!4350985))

(declare-fun m!4961273 () Bool)

(assert (=> d!1285127 m!4961273))

(declare-fun m!4961275 () Bool)

(assert (=> d!1285127 m!4961275))

(declare-fun m!4961277 () Bool)

(assert (=> d!1285127 m!4961277))

(declare-fun m!4961279 () Bool)

(assert (=> d!1285127 m!4961279))

(declare-fun m!4961281 () Bool)

(assert (=> b!4350984 m!4961281))

(declare-fun m!4961283 () Bool)

(assert (=> b!4350985 m!4961283))

(assert (=> b!4350797 d!1285127))

(declare-fun b!4350986 () Bool)

(declare-fun e!2707592 () Bool)

(assert (=> b!4350986 (= e!2707592 (not (contains!11054 (keys!16494 lt!1564520) key!3918)))))

(declare-fun b!4350987 () Bool)

(assert (=> b!4350987 false))

(declare-fun lt!1564665 () Unit!71045)

(declare-fun lt!1564664 () Unit!71045)

(assert (=> b!4350987 (= lt!1564665 lt!1564664)))

(assert (=> b!4350987 (containsKey!645 (toList!2926 lt!1564520) key!3918)))

(assert (=> b!4350987 (= lt!1564664 (lemmaInGetKeysListThenContainsKey!108 (toList!2926 lt!1564520) key!3918))))

(declare-fun e!2707593 () Unit!71045)

(declare-fun Unit!71052 () Unit!71045)

(assert (=> b!4350987 (= e!2707593 Unit!71052)))

(declare-fun b!4350988 () Bool)

(declare-fun e!2707591 () Bool)

(assert (=> b!4350988 (= e!2707591 (contains!11054 (keys!16494 lt!1564520) key!3918))))

(declare-fun b!4350990 () Bool)

(declare-fun e!2707594 () Unit!71045)

(declare-fun lt!1564662 () Unit!71045)

(assert (=> b!4350990 (= e!2707594 lt!1564662)))

(declare-fun lt!1564667 () Unit!71045)

(assert (=> b!4350990 (= lt!1564667 (lemmaContainsKeyImpliesGetValueByKeyDefined!335 (toList!2926 lt!1564520) key!3918))))

(assert (=> b!4350990 (isDefined!7732 (getValueByKey!423 (toList!2926 lt!1564520) key!3918))))

(declare-fun lt!1564669 () Unit!71045)

(assert (=> b!4350990 (= lt!1564669 lt!1564667)))

(assert (=> b!4350990 (= lt!1564662 (lemmaInListThenGetKeysListContains!107 (toList!2926 lt!1564520) key!3918))))

(declare-fun call!302386 () Bool)

(assert (=> b!4350990 call!302386))

(declare-fun b!4350991 () Bool)

(assert (=> b!4350991 (= e!2707594 e!2707593)))

(declare-fun c!739619 () Bool)

(assert (=> b!4350991 (= c!739619 call!302386)))

(declare-fun b!4350992 () Bool)

(declare-fun e!2707595 () List!49006)

(assert (=> b!4350992 (= e!2707595 (keys!16494 lt!1564520))))

(declare-fun b!4350993 () Bool)

(declare-fun Unit!71055 () Unit!71045)

(assert (=> b!4350993 (= e!2707593 Unit!71055)))

(declare-fun bm!302381 () Bool)

(assert (=> bm!302381 (= call!302386 (contains!11054 e!2707595 key!3918))))

(declare-fun c!739618 () Bool)

(declare-fun c!739620 () Bool)

(assert (=> bm!302381 (= c!739618 c!739620)))

(declare-fun b!4350994 () Bool)

(assert (=> b!4350994 (= e!2707595 (getKeysList!110 (toList!2926 lt!1564520)))))

(declare-fun d!1285129 () Bool)

(declare-fun e!2707590 () Bool)

(assert (=> d!1285129 e!2707590))

(declare-fun res!1787581 () Bool)

(assert (=> d!1285129 (=> res!1787581 e!2707590)))

(assert (=> d!1285129 (= res!1787581 e!2707592)))

(declare-fun res!1787580 () Bool)

(assert (=> d!1285129 (=> (not res!1787580) (not e!2707592))))

(declare-fun lt!1564663 () Bool)

(assert (=> d!1285129 (= res!1787580 (not lt!1564663))))

(declare-fun lt!1564668 () Bool)

(assert (=> d!1285129 (= lt!1564663 lt!1564668)))

(declare-fun lt!1564666 () Unit!71045)

(assert (=> d!1285129 (= lt!1564666 e!2707594)))

(assert (=> d!1285129 (= c!739620 lt!1564668)))

(assert (=> d!1285129 (= lt!1564668 (containsKey!645 (toList!2926 lt!1564520) key!3918))))

(assert (=> d!1285129 (= (contains!11051 lt!1564520 key!3918) lt!1564663)))

(declare-fun b!4350989 () Bool)

(assert (=> b!4350989 (= e!2707590 e!2707591)))

(declare-fun res!1787582 () Bool)

(assert (=> b!4350989 (=> (not res!1787582) (not e!2707591))))

(assert (=> b!4350989 (= res!1787582 (isDefined!7732 (getValueByKey!423 (toList!2926 lt!1564520) key!3918)))))

(assert (= (and d!1285129 c!739620) b!4350990))

(assert (= (and d!1285129 (not c!739620)) b!4350991))

(assert (= (and b!4350991 c!739619) b!4350987))

(assert (= (and b!4350991 (not c!739619)) b!4350993))

(assert (= (or b!4350990 b!4350991) bm!302381))

(assert (= (and bm!302381 c!739618) b!4350994))

(assert (= (and bm!302381 (not c!739618)) b!4350992))

(assert (= (and d!1285129 res!1787580) b!4350986))

(assert (= (and d!1285129 (not res!1787581)) b!4350989))

(assert (= (and b!4350989 res!1787582) b!4350988))

(declare-fun m!4961285 () Bool)

(assert (=> d!1285129 m!4961285))

(declare-fun m!4961287 () Bool)

(assert (=> bm!302381 m!4961287))

(declare-fun m!4961289 () Bool)

(assert (=> b!4350986 m!4961289))

(assert (=> b!4350986 m!4961289))

(declare-fun m!4961291 () Bool)

(assert (=> b!4350986 m!4961291))

(declare-fun m!4961293 () Bool)

(assert (=> b!4350994 m!4961293))

(declare-fun m!4961295 () Bool)

(assert (=> b!4350989 m!4961295))

(assert (=> b!4350989 m!4961295))

(declare-fun m!4961297 () Bool)

(assert (=> b!4350989 m!4961297))

(declare-fun m!4961299 () Bool)

(assert (=> b!4350990 m!4961299))

(assert (=> b!4350990 m!4961295))

(assert (=> b!4350990 m!4961295))

(assert (=> b!4350990 m!4961297))

(declare-fun m!4961301 () Bool)

(assert (=> b!4350990 m!4961301))

(assert (=> b!4350987 m!4961285))

(declare-fun m!4961303 () Bool)

(assert (=> b!4350987 m!4961303))

(assert (=> b!4350988 m!4961289))

(assert (=> b!4350988 m!4961289))

(assert (=> b!4350988 m!4961291))

(assert (=> b!4350992 m!4961289))

(assert (=> b!4350797 d!1285129))

(declare-fun d!1285131 () Bool)

(assert (=> d!1285131 (contains!11051 lt!1564520 key!3918)))

(declare-fun lt!1564675 () Unit!71045)

(declare-fun choose!26768 (List!49003 K!10245 V!10491 ListMap!2169) Unit!71045)

(assert (=> d!1285131 (= lt!1564675 (choose!26768 (_2!27422 (h!54415 (toList!2925 lm!1707))) key!3918 newValue!99 lt!1564520))))

(assert (=> d!1285131 (noDuplicateKeys!471 (_2!27422 (h!54415 (toList!2925 lm!1707))))))

(assert (=> d!1285131 (= (lemmaAddToMapContainsAndNotInListThenInAcc!14 (_2!27422 (h!54415 (toList!2925 lm!1707))) key!3918 newValue!99 lt!1564520) lt!1564675)))

(declare-fun bs!628996 () Bool)

(assert (= bs!628996 d!1285131))

(assert (=> bs!628996 m!4961039))

(declare-fun m!4961317 () Bool)

(assert (=> bs!628996 m!4961317))

(declare-fun m!4961319 () Bool)

(assert (=> bs!628996 m!4961319))

(assert (=> b!4350797 d!1285131))

(declare-fun bs!628998 () Bool)

(declare-fun d!1285135 () Bool)

(assert (= bs!628998 (and d!1285135 start!420404)))

(declare-fun lambda!139406 () Int)

(assert (=> bs!628998 (= lambda!139406 lambda!139387)))

(declare-fun lt!1564690 () ListMap!2169)

(declare-fun invariantList!662 (List!49003) Bool)

(assert (=> d!1285135 (invariantList!662 (toList!2926 lt!1564690))))

(declare-fun e!2707601 () ListMap!2169)

(assert (=> d!1285135 (= lt!1564690 e!2707601)))

(declare-fun c!739623 () Bool)

(assert (=> d!1285135 (= c!739623 ((_ is Cons!48880) (toList!2925 lt!1564518)))))

(assert (=> d!1285135 (forall!9081 (toList!2925 lt!1564518) lambda!139406)))

(assert (=> d!1285135 (= (extractMap!530 (toList!2925 lt!1564518)) lt!1564690)))

(declare-fun b!4351005 () Bool)

(declare-fun addToMapMapFromBucket!169 (List!49003 ListMap!2169) ListMap!2169)

(assert (=> b!4351005 (= e!2707601 (addToMapMapFromBucket!169 (_2!27422 (h!54415 (toList!2925 lt!1564518))) (extractMap!530 (t!355924 (toList!2925 lt!1564518)))))))

(declare-fun b!4351006 () Bool)

(assert (=> b!4351006 (= e!2707601 (ListMap!2170 Nil!48879))))

(assert (= (and d!1285135 c!739623) b!4351005))

(assert (= (and d!1285135 (not c!739623)) b!4351006))

(declare-fun m!4961335 () Bool)

(assert (=> d!1285135 m!4961335))

(declare-fun m!4961337 () Bool)

(assert (=> d!1285135 m!4961337))

(declare-fun m!4961339 () Bool)

(assert (=> b!4351005 m!4961339))

(assert (=> b!4351005 m!4961339))

(declare-fun m!4961341 () Bool)

(assert (=> b!4351005 m!4961341))

(assert (=> b!4350797 d!1285135))

(declare-fun d!1285141 () Bool)

(assert (=> d!1285141 (= (apply!11323 lm!1707 (_1!27422 (h!54415 (toList!2925 lm!1707)))) (get!15870 (getValueByKey!421 (toList!2925 lm!1707) (_1!27422 (h!54415 (toList!2925 lm!1707))))))))

(declare-fun bs!628999 () Bool)

(assert (= bs!628999 d!1285141))

(declare-fun m!4961343 () Bool)

(assert (=> bs!628999 m!4961343))

(assert (=> bs!628999 m!4961343))

(declare-fun m!4961345 () Bool)

(assert (=> bs!628999 m!4961345))

(assert (=> b!4350797 d!1285141))

(declare-fun bs!629000 () Bool)

(declare-fun d!1285143 () Bool)

(assert (= bs!629000 (and d!1285143 start!420404)))

(declare-fun lambda!139409 () Int)

(assert (=> bs!629000 (= lambda!139409 lambda!139387)))

(declare-fun bs!629001 () Bool)

(assert (= bs!629001 (and d!1285143 d!1285135)))

(assert (=> bs!629001 (= lambda!139409 lambda!139406)))

(declare-fun lt!1564691 () ListMap!2169)

(assert (=> d!1285143 (invariantList!662 (toList!2926 lt!1564691))))

(declare-fun e!2707602 () ListMap!2169)

(assert (=> d!1285143 (= lt!1564691 e!2707602)))

(declare-fun c!739624 () Bool)

(assert (=> d!1285143 (= c!739624 ((_ is Cons!48880) (toList!2925 (+!599 lt!1564518 lt!1564522))))))

(assert (=> d!1285143 (forall!9081 (toList!2925 (+!599 lt!1564518 lt!1564522)) lambda!139409)))

(assert (=> d!1285143 (= (extractMap!530 (toList!2925 (+!599 lt!1564518 lt!1564522))) lt!1564691)))

(declare-fun b!4351007 () Bool)

(assert (=> b!4351007 (= e!2707602 (addToMapMapFromBucket!169 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522)))) (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))))))

(declare-fun b!4351008 () Bool)

(assert (=> b!4351008 (= e!2707602 (ListMap!2170 Nil!48879))))

(assert (= (and d!1285143 c!739624) b!4351007))

(assert (= (and d!1285143 (not c!739624)) b!4351008))

(declare-fun m!4961347 () Bool)

(assert (=> d!1285143 m!4961347))

(declare-fun m!4961349 () Bool)

(assert (=> d!1285143 m!4961349))

(declare-fun m!4961351 () Bool)

(assert (=> b!4351007 m!4961351))

(assert (=> b!4351007 m!4961351))

(declare-fun m!4961353 () Bool)

(assert (=> b!4351007 m!4961353))

(assert (=> b!4350797 d!1285143))

(declare-fun d!1285145 () Bool)

(declare-fun res!1787589 () Bool)

(declare-fun e!2707603 () Bool)

(assert (=> d!1285145 (=> res!1787589 e!2707603)))

(assert (=> d!1285145 (= res!1787589 (and ((_ is Cons!48879) (apply!11323 lm!1707 (_1!27422 (h!54415 (toList!2925 lm!1707))))) (= (_1!27421 (h!54414 (apply!11323 lm!1707 (_1!27422 (h!54415 (toList!2925 lm!1707)))))) key!3918)))))

(assert (=> d!1285145 (= (containsKey!642 (apply!11323 lm!1707 (_1!27422 (h!54415 (toList!2925 lm!1707)))) key!3918) e!2707603)))

(declare-fun b!4351009 () Bool)

(declare-fun e!2707604 () Bool)

(assert (=> b!4351009 (= e!2707603 e!2707604)))

(declare-fun res!1787590 () Bool)

(assert (=> b!4351009 (=> (not res!1787590) (not e!2707604))))

(assert (=> b!4351009 (= res!1787590 ((_ is Cons!48879) (apply!11323 lm!1707 (_1!27422 (h!54415 (toList!2925 lm!1707))))))))

(declare-fun b!4351010 () Bool)

(assert (=> b!4351010 (= e!2707604 (containsKey!642 (t!355923 (apply!11323 lm!1707 (_1!27422 (h!54415 (toList!2925 lm!1707))))) key!3918))))

(assert (= (and d!1285145 (not res!1787589)) b!4351009))

(assert (= (and b!4351009 res!1787590) b!4351010))

(declare-fun m!4961355 () Bool)

(assert (=> b!4351010 m!4961355))

(assert (=> b!4350797 d!1285145))

(declare-fun bs!629006 () Bool)

(declare-fun d!1285147 () Bool)

(assert (= bs!629006 (and d!1285147 start!420404)))

(declare-fun lambda!139411 () Int)

(assert (=> bs!629006 (= lambda!139411 lambda!139387)))

(declare-fun bs!629008 () Bool)

(assert (= bs!629008 (and d!1285147 d!1285135)))

(assert (=> bs!629008 (= lambda!139411 lambda!139406)))

(declare-fun bs!629009 () Bool)

(assert (= bs!629009 (and d!1285147 d!1285143)))

(assert (=> bs!629009 (= lambda!139411 lambda!139409)))

(declare-fun lt!1564695 () ListMap!2169)

(assert (=> d!1285147 (invariantList!662 (toList!2926 lt!1564695))))

(declare-fun e!2707605 () ListMap!2169)

(assert (=> d!1285147 (= lt!1564695 e!2707605)))

(declare-fun c!739625 () Bool)

(assert (=> d!1285147 (= c!739625 ((_ is Cons!48880) (t!355924 (toList!2925 lm!1707))))))

(assert (=> d!1285147 (forall!9081 (t!355924 (toList!2925 lm!1707)) lambda!139411)))

(assert (=> d!1285147 (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) lt!1564695)))

(declare-fun b!4351011 () Bool)

(assert (=> b!4351011 (= e!2707605 (addToMapMapFromBucket!169 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707)))) (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))))))

(declare-fun b!4351012 () Bool)

(assert (=> b!4351012 (= e!2707605 (ListMap!2170 Nil!48879))))

(assert (= (and d!1285147 c!739625) b!4351011))

(assert (= (and d!1285147 (not c!739625)) b!4351012))

(declare-fun m!4961359 () Bool)

(assert (=> d!1285147 m!4961359))

(declare-fun m!4961363 () Bool)

(assert (=> d!1285147 m!4961363))

(declare-fun m!4961365 () Bool)

(assert (=> b!4351011 m!4961365))

(assert (=> b!4351011 m!4961365))

(declare-fun m!4961367 () Bool)

(assert (=> b!4351011 m!4961367))

(assert (=> b!4350797 d!1285147))

(declare-fun d!1285151 () Bool)

(declare-fun isEmpty!28179 (List!49004) Bool)

(assert (=> d!1285151 (= (isEmpty!28177 lm!1707) (isEmpty!28179 (toList!2925 lm!1707)))))

(declare-fun bs!629011 () Bool)

(assert (= bs!629011 d!1285151))

(declare-fun m!4961369 () Bool)

(assert (=> bs!629011 m!4961369))

(assert (=> b!4350797 d!1285151))

(declare-fun bs!629029 () Bool)

(declare-fun d!1285153 () Bool)

(assert (= bs!629029 (and d!1285153 start!420404)))

(declare-fun lambda!139416 () Int)

(assert (=> bs!629029 (= lambda!139416 lambda!139387)))

(declare-fun bs!629030 () Bool)

(assert (= bs!629030 (and d!1285153 d!1285135)))

(assert (=> bs!629030 (= lambda!139416 lambda!139406)))

(declare-fun bs!629031 () Bool)

(assert (= bs!629031 (and d!1285153 d!1285143)))

(assert (=> bs!629031 (= lambda!139416 lambda!139409)))

(declare-fun bs!629032 () Bool)

(assert (= bs!629032 (and d!1285153 d!1285147)))

(assert (=> bs!629032 (= lambda!139416 lambda!139411)))

(assert (=> d!1285153 (eq!241 (extractMap!530 (toList!2925 (+!599 lt!1564518 (tuple2!48257 hash!377 newBucket!200)))) (+!600 (extractMap!530 (toList!2925 lt!1564518)) (tuple2!48255 key!3918 newValue!99)))))

(declare-fun lt!1564723 () Unit!71045)

(declare-fun choose!26770 (ListLongMap!1575 (_ BitVec 64) List!49003 K!10245 V!10491 Hashable!4863) Unit!71045)

(assert (=> d!1285153 (= lt!1564723 (choose!26770 lt!1564518 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1285153 (forall!9081 (toList!2925 lt!1564518) lambda!139416)))

(assert (=> d!1285153 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!75 lt!1564518 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1564723)))

(declare-fun bs!629033 () Bool)

(assert (= bs!629033 d!1285153))

(declare-fun m!4961453 () Bool)

(assert (=> bs!629033 m!4961453))

(assert (=> bs!629033 m!4961045))

(declare-fun m!4961455 () Bool)

(assert (=> bs!629033 m!4961455))

(declare-fun m!4961457 () Bool)

(assert (=> bs!629033 m!4961457))

(assert (=> bs!629033 m!4961045))

(declare-fun m!4961459 () Bool)

(assert (=> bs!629033 m!4961459))

(declare-fun m!4961461 () Bool)

(assert (=> bs!629033 m!4961461))

(assert (=> bs!629033 m!4961457))

(assert (=> bs!629033 m!4961459))

(declare-fun m!4961463 () Bool)

(assert (=> bs!629033 m!4961463))

(assert (=> b!4350797 d!1285153))

(declare-fun bs!629034 () Bool)

(declare-fun d!1285173 () Bool)

(assert (= bs!629034 (and d!1285173 d!1285143)))

(declare-fun lambda!139419 () Int)

(assert (=> bs!629034 (= lambda!139419 lambda!139409)))

(declare-fun bs!629035 () Bool)

(assert (= bs!629035 (and d!1285173 d!1285135)))

(assert (=> bs!629035 (= lambda!139419 lambda!139406)))

(declare-fun bs!629036 () Bool)

(assert (= bs!629036 (and d!1285173 start!420404)))

(assert (=> bs!629036 (= lambda!139419 lambda!139387)))

(declare-fun bs!629037 () Bool)

(assert (= bs!629037 (and d!1285173 d!1285147)))

(assert (=> bs!629037 (= lambda!139419 lambda!139411)))

(declare-fun bs!629038 () Bool)

(assert (= bs!629038 (and d!1285173 d!1285153)))

(assert (=> bs!629038 (= lambda!139419 lambda!139416)))

(assert (=> d!1285173 (not (containsKey!642 (apply!11323 lm!1707 (_1!27422 (h!54415 (toList!2925 lm!1707)))) key!3918))))

(declare-fun lt!1564729 () Unit!71045)

(declare-fun choose!26772 (ListLongMap!1575 K!10245 (_ BitVec 64) Hashable!4863) Unit!71045)

(assert (=> d!1285173 (= lt!1564729 (choose!26772 lm!1707 key!3918 (_1!27422 (h!54415 (toList!2925 lm!1707))) hashF!1247))))

(assert (=> d!1285173 (forall!9081 (toList!2925 lm!1707) lambda!139419)))

(assert (=> d!1285173 (= (lemmaNotSameHashThenCannotContainKey!18 lm!1707 key!3918 (_1!27422 (h!54415 (toList!2925 lm!1707))) hashF!1247) lt!1564729)))

(declare-fun bs!629040 () Bool)

(assert (= bs!629040 d!1285173))

(assert (=> bs!629040 m!4961053))

(assert (=> bs!629040 m!4961053))

(assert (=> bs!629040 m!4961055))

(declare-fun m!4961475 () Bool)

(assert (=> bs!629040 m!4961475))

(declare-fun m!4961477 () Bool)

(assert (=> bs!629040 m!4961477))

(assert (=> b!4350797 d!1285173))

(declare-fun bs!629041 () Bool)

(declare-fun d!1285179 () Bool)

(assert (= bs!629041 (and d!1285179 d!1285143)))

(declare-fun lambda!139422 () Int)

(assert (=> bs!629041 (not (= lambda!139422 lambda!139409))))

(declare-fun bs!629042 () Bool)

(assert (= bs!629042 (and d!1285179 d!1285135)))

(assert (=> bs!629042 (not (= lambda!139422 lambda!139406))))

(declare-fun bs!629043 () Bool)

(assert (= bs!629043 (and d!1285179 d!1285173)))

(assert (=> bs!629043 (not (= lambda!139422 lambda!139419))))

(declare-fun bs!629044 () Bool)

(assert (= bs!629044 (and d!1285179 start!420404)))

(assert (=> bs!629044 (not (= lambda!139422 lambda!139387))))

(declare-fun bs!629045 () Bool)

(assert (= bs!629045 (and d!1285179 d!1285147)))

(assert (=> bs!629045 (not (= lambda!139422 lambda!139411))))

(declare-fun bs!629046 () Bool)

(assert (= bs!629046 (and d!1285179 d!1285153)))

(assert (=> bs!629046 (not (= lambda!139422 lambda!139416))))

(assert (=> d!1285179 true))

(assert (=> d!1285179 (= (allKeysSameHashInMap!575 lm!1707 hashF!1247) (forall!9081 (toList!2925 lm!1707) lambda!139422))))

(declare-fun bs!629047 () Bool)

(assert (= bs!629047 d!1285179))

(declare-fun m!4961485 () Bool)

(assert (=> bs!629047 m!4961485))

(assert (=> b!4350800 d!1285179))

(declare-fun d!1285185 () Bool)

(declare-fun res!1787614 () Bool)

(declare-fun e!2707636 () Bool)

(assert (=> d!1285185 (=> res!1787614 e!2707636)))

(assert (=> d!1285185 (= res!1787614 (not ((_ is Cons!48879) newBucket!200)))))

(assert (=> d!1285185 (= (noDuplicateKeys!471 newBucket!200) e!2707636)))

(declare-fun b!4351055 () Bool)

(declare-fun e!2707637 () Bool)

(assert (=> b!4351055 (= e!2707636 e!2707637)))

(declare-fun res!1787615 () Bool)

(assert (=> b!4351055 (=> (not res!1787615) (not e!2707637))))

(assert (=> b!4351055 (= res!1787615 (not (containsKey!642 (t!355923 newBucket!200) (_1!27421 (h!54414 newBucket!200)))))))

(declare-fun b!4351056 () Bool)

(assert (=> b!4351056 (= e!2707637 (noDuplicateKeys!471 (t!355923 newBucket!200)))))

(assert (= (and d!1285185 (not res!1787614)) b!4351055))

(assert (= (and b!4351055 res!1787615) b!4351056))

(declare-fun m!4961487 () Bool)

(assert (=> b!4351055 m!4961487))

(declare-fun m!4961489 () Bool)

(assert (=> b!4351056 m!4961489))

(assert (=> b!4350801 d!1285185))

(declare-fun b!4351057 () Bool)

(declare-fun e!2707640 () Bool)

(assert (=> b!4351057 (= e!2707640 (not (contains!11054 (keys!16494 (extractMap!530 (toList!2925 lm!1707))) key!3918)))))

(declare-fun b!4351058 () Bool)

(assert (=> b!4351058 false))

(declare-fun lt!1564733 () Unit!71045)

(declare-fun lt!1564732 () Unit!71045)

(assert (=> b!4351058 (= lt!1564733 lt!1564732)))

(assert (=> b!4351058 (containsKey!645 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918)))

(assert (=> b!4351058 (= lt!1564732 (lemmaInGetKeysListThenContainsKey!108 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918))))

(declare-fun e!2707641 () Unit!71045)

(declare-fun Unit!71059 () Unit!71045)

(assert (=> b!4351058 (= e!2707641 Unit!71059)))

(declare-fun b!4351059 () Bool)

(declare-fun e!2707639 () Bool)

(assert (=> b!4351059 (= e!2707639 (contains!11054 (keys!16494 (extractMap!530 (toList!2925 lm!1707))) key!3918))))

(declare-fun b!4351061 () Bool)

(declare-fun e!2707642 () Unit!71045)

(declare-fun lt!1564730 () Unit!71045)

(assert (=> b!4351061 (= e!2707642 lt!1564730)))

(declare-fun lt!1564735 () Unit!71045)

(assert (=> b!4351061 (= lt!1564735 (lemmaContainsKeyImpliesGetValueByKeyDefined!335 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918))))

(assert (=> b!4351061 (isDefined!7732 (getValueByKey!423 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918))))

(declare-fun lt!1564737 () Unit!71045)

(assert (=> b!4351061 (= lt!1564737 lt!1564735)))

(assert (=> b!4351061 (= lt!1564730 (lemmaInListThenGetKeysListContains!107 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918))))

(declare-fun call!302389 () Bool)

(assert (=> b!4351061 call!302389))

(declare-fun b!4351062 () Bool)

(assert (=> b!4351062 (= e!2707642 e!2707641)))

(declare-fun c!739635 () Bool)

(assert (=> b!4351062 (= c!739635 call!302389)))

(declare-fun b!4351063 () Bool)

(declare-fun e!2707643 () List!49006)

(assert (=> b!4351063 (= e!2707643 (keys!16494 (extractMap!530 (toList!2925 lm!1707))))))

(declare-fun b!4351064 () Bool)

(declare-fun Unit!71060 () Unit!71045)

(assert (=> b!4351064 (= e!2707641 Unit!71060)))

(declare-fun bm!302384 () Bool)

(assert (=> bm!302384 (= call!302389 (contains!11054 e!2707643 key!3918))))

(declare-fun c!739634 () Bool)

(declare-fun c!739636 () Bool)

(assert (=> bm!302384 (= c!739634 c!739636)))

(declare-fun b!4351065 () Bool)

(assert (=> b!4351065 (= e!2707643 (getKeysList!110 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))))))

(declare-fun d!1285187 () Bool)

(declare-fun e!2707638 () Bool)

(assert (=> d!1285187 e!2707638))

(declare-fun res!1787617 () Bool)

(assert (=> d!1285187 (=> res!1787617 e!2707638)))

(assert (=> d!1285187 (= res!1787617 e!2707640)))

(declare-fun res!1787616 () Bool)

(assert (=> d!1285187 (=> (not res!1787616) (not e!2707640))))

(declare-fun lt!1564731 () Bool)

(assert (=> d!1285187 (= res!1787616 (not lt!1564731))))

(declare-fun lt!1564736 () Bool)

(assert (=> d!1285187 (= lt!1564731 lt!1564736)))

(declare-fun lt!1564734 () Unit!71045)

(assert (=> d!1285187 (= lt!1564734 e!2707642)))

(assert (=> d!1285187 (= c!739636 lt!1564736)))

(assert (=> d!1285187 (= lt!1564736 (containsKey!645 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918))))

(assert (=> d!1285187 (= (contains!11051 (extractMap!530 (toList!2925 lm!1707)) key!3918) lt!1564731)))

(declare-fun b!4351060 () Bool)

(assert (=> b!4351060 (= e!2707638 e!2707639)))

(declare-fun res!1787618 () Bool)

(assert (=> b!4351060 (=> (not res!1787618) (not e!2707639))))

(assert (=> b!4351060 (= res!1787618 (isDefined!7732 (getValueByKey!423 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918)))))

(assert (= (and d!1285187 c!739636) b!4351061))

(assert (= (and d!1285187 (not c!739636)) b!4351062))

(assert (= (and b!4351062 c!739635) b!4351058))

(assert (= (and b!4351062 (not c!739635)) b!4351064))

(assert (= (or b!4351061 b!4351062) bm!302384))

(assert (= (and bm!302384 c!739634) b!4351065))

(assert (= (and bm!302384 (not c!739634)) b!4351063))

(assert (= (and d!1285187 res!1787616) b!4351057))

(assert (= (and d!1285187 (not res!1787617)) b!4351060))

(assert (= (and b!4351060 res!1787618) b!4351059))

(declare-fun m!4961491 () Bool)

(assert (=> d!1285187 m!4961491))

(declare-fun m!4961493 () Bool)

(assert (=> bm!302384 m!4961493))

(assert (=> b!4351057 m!4961065))

(declare-fun m!4961495 () Bool)

(assert (=> b!4351057 m!4961495))

(assert (=> b!4351057 m!4961495))

(declare-fun m!4961497 () Bool)

(assert (=> b!4351057 m!4961497))

(declare-fun m!4961499 () Bool)

(assert (=> b!4351065 m!4961499))

(declare-fun m!4961501 () Bool)

(assert (=> b!4351060 m!4961501))

(assert (=> b!4351060 m!4961501))

(declare-fun m!4961503 () Bool)

(assert (=> b!4351060 m!4961503))

(declare-fun m!4961505 () Bool)

(assert (=> b!4351061 m!4961505))

(assert (=> b!4351061 m!4961501))

(assert (=> b!4351061 m!4961501))

(assert (=> b!4351061 m!4961503))

(declare-fun m!4961507 () Bool)

(assert (=> b!4351061 m!4961507))

(assert (=> b!4351058 m!4961491))

(declare-fun m!4961509 () Bool)

(assert (=> b!4351058 m!4961509))

(assert (=> b!4351059 m!4961065))

(assert (=> b!4351059 m!4961495))

(assert (=> b!4351059 m!4961495))

(assert (=> b!4351059 m!4961497))

(assert (=> b!4351063 m!4961065))

(assert (=> b!4351063 m!4961495))

(assert (=> b!4350803 d!1285187))

(declare-fun bs!629048 () Bool)

(declare-fun d!1285189 () Bool)

(assert (= bs!629048 (and d!1285189 d!1285143)))

(declare-fun lambda!139423 () Int)

(assert (=> bs!629048 (= lambda!139423 lambda!139409)))

(declare-fun bs!629049 () Bool)

(assert (= bs!629049 (and d!1285189 d!1285135)))

(assert (=> bs!629049 (= lambda!139423 lambda!139406)))

(declare-fun bs!629050 () Bool)

(assert (= bs!629050 (and d!1285189 d!1285173)))

(assert (=> bs!629050 (= lambda!139423 lambda!139419)))

(declare-fun bs!629051 () Bool)

(assert (= bs!629051 (and d!1285189 start!420404)))

(assert (=> bs!629051 (= lambda!139423 lambda!139387)))

(declare-fun bs!629052 () Bool)

(assert (= bs!629052 (and d!1285189 d!1285147)))

(assert (=> bs!629052 (= lambda!139423 lambda!139411)))

(declare-fun bs!629053 () Bool)

(assert (= bs!629053 (and d!1285189 d!1285153)))

(assert (=> bs!629053 (= lambda!139423 lambda!139416)))

(declare-fun bs!629054 () Bool)

(assert (= bs!629054 (and d!1285189 d!1285179)))

(assert (=> bs!629054 (not (= lambda!139423 lambda!139422))))

(declare-fun lt!1564746 () ListMap!2169)

(assert (=> d!1285189 (invariantList!662 (toList!2926 lt!1564746))))

(declare-fun e!2707648 () ListMap!2169)

(assert (=> d!1285189 (= lt!1564746 e!2707648)))

(declare-fun c!739639 () Bool)

(assert (=> d!1285189 (= c!739639 ((_ is Cons!48880) (toList!2925 lm!1707)))))

(assert (=> d!1285189 (forall!9081 (toList!2925 lm!1707) lambda!139423)))

(assert (=> d!1285189 (= (extractMap!530 (toList!2925 lm!1707)) lt!1564746)))

(declare-fun b!4351072 () Bool)

(assert (=> b!4351072 (= e!2707648 (addToMapMapFromBucket!169 (_2!27422 (h!54415 (toList!2925 lm!1707))) (extractMap!530 (t!355924 (toList!2925 lm!1707)))))))

(declare-fun b!4351073 () Bool)

(assert (=> b!4351073 (= e!2707648 (ListMap!2170 Nil!48879))))

(assert (= (and d!1285189 c!739639) b!4351072))

(assert (= (and d!1285189 (not c!739639)) b!4351073))

(declare-fun m!4961511 () Bool)

(assert (=> d!1285189 m!4961511))

(declare-fun m!4961513 () Bool)

(assert (=> d!1285189 m!4961513))

(assert (=> b!4351072 m!4961035))

(assert (=> b!4351072 m!4961035))

(declare-fun m!4961515 () Bool)

(assert (=> b!4351072 m!4961515))

(assert (=> b!4350803 d!1285189))

(assert (=> b!4350792 d!1285069))

(declare-fun d!1285191 () Bool)

(declare-fun hash!1486 (Hashable!4863 K!10245) (_ BitVec 64))

(assert (=> d!1285191 (= (hash!1480 hashF!1247 key!3918) (hash!1486 hashF!1247 key!3918))))

(declare-fun bs!629055 () Bool)

(assert (= bs!629055 d!1285191))

(declare-fun m!4961523 () Bool)

(assert (=> bs!629055 m!4961523))

(assert (=> b!4350793 d!1285191))

(declare-fun e!2707658 () Bool)

(declare-fun tp!1329864 () Bool)

(declare-fun b!4351090 () Bool)

(assert (=> b!4351090 (= e!2707658 (and tp_is_empty!25121 tp_is_empty!25123 tp!1329864))))

(assert (=> b!4350799 (= tp!1329856 e!2707658)))

(assert (= (and b!4350799 ((_ is Cons!48879) (t!355923 newBucket!200))) b!4351090))

(declare-fun b!4351096 () Bool)

(declare-fun e!2707662 () Bool)

(declare-fun tp!1329873 () Bool)

(declare-fun tp!1329874 () Bool)

(assert (=> b!4351096 (= e!2707662 (and tp!1329873 tp!1329874))))

(assert (=> b!4350802 (= tp!1329855 e!2707662)))

(assert (= (and b!4350802 ((_ is Cons!48880) (toList!2925 lm!1707))) b!4351096))

(declare-fun b_lambda!130563 () Bool)

(assert (= b_lambda!130547 (or start!420404 b_lambda!130563)))

(declare-fun bs!629057 () Bool)

(declare-fun d!1285195 () Bool)

(assert (= bs!629057 (and d!1285195 start!420404)))

(assert (=> bs!629057 (= (dynLambda!20612 lambda!139387 (h!54415 (toList!2925 lm!1707))) (noDuplicateKeys!471 (_2!27422 (h!54415 (toList!2925 lm!1707)))))))

(assert (=> bs!629057 m!4961319))

(assert (=> b!4350851 d!1285195))

(declare-fun b_lambda!130565 () Bool)

(assert (= b_lambda!130549 (or start!420404 b_lambda!130565)))

(declare-fun bs!629060 () Bool)

(declare-fun d!1285201 () Bool)

(assert (= bs!629060 (and d!1285201 start!420404)))

(assert (=> bs!629060 (= (dynLambda!20612 lambda!139387 lt!1564519) (noDuplicateKeys!471 (_2!27422 lt!1564519)))))

(declare-fun m!4961531 () Bool)

(assert (=> bs!629060 m!4961531))

(assert (=> d!1285093 d!1285201))

(declare-fun b_lambda!130567 () Bool)

(assert (= b_lambda!130541 (or start!420404 b_lambda!130567)))

(declare-fun bs!629062 () Bool)

(declare-fun d!1285205 () Bool)

(assert (= bs!629062 (and d!1285205 start!420404)))

(assert (=> bs!629062 (= (dynLambda!20612 lambda!139387 (h!54415 (toList!2925 lt!1564521))) (noDuplicateKeys!471 (_2!27422 (h!54415 (toList!2925 lt!1564521)))))))

(declare-fun m!4961533 () Bool)

(assert (=> bs!629062 m!4961533))

(assert (=> b!4350827 d!1285205))

(declare-fun b_lambda!130569 () Bool)

(assert (= b_lambda!130545 (or start!420404 b_lambda!130569)))

(declare-fun bs!629063 () Bool)

(declare-fun d!1285207 () Bool)

(assert (= bs!629063 (and d!1285207 start!420404)))

(assert (=> bs!629063 (= (dynLambda!20612 lambda!139387 (tuple2!48257 hash!377 newBucket!200)) (noDuplicateKeys!471 (_2!27422 (tuple2!48257 hash!377 newBucket!200))))))

(declare-fun m!4961535 () Bool)

(assert (=> bs!629063 m!4961535))

(assert (=> b!4350850 d!1285207))

(check-sat (not d!1285119) (not b!4350988) (not d!1285085) (not b!4351090) tp_is_empty!25123 (not d!1285143) (not d!1285105) (not d!1285135) (not d!1285087) (not bm!302384) (not bs!629060) (not b!4350987) (not b!4350899) (not b_lambda!130569) (not b!4350975) (not d!1285179) (not bs!629062) (not b!4350986) (not d!1285125) (not d!1285123) tp_is_empty!25121 (not bs!629057) (not b!4350990) (not d!1285091) (not d!1285089) (not d!1285131) (not b!4350903) (not bm!302381) (not d!1285127) (not b!4350970) (not d!1285081) (not b!4350971) (not b!4351057) (not d!1285191) (not b!4351063) (not b_lambda!130563) (not b!4350852) (not bs!629063) (not b!4350967) (not d!1285129) (not b!4350845) (not b!4350969) (not b!4351058) (not b!4350994) (not d!1285151) (not b!4350906) (not b!4350992) (not b!4350973) (not d!1285187) (not b!4350926) (not b!4350989) (not b!4351061) (not d!1285097) (not b!4350984) (not b!4350861) (not b!4350859) (not d!1285173) (not b!4351010) (not d!1285189) (not b!4351059) (not b!4350828) (not b!4351060) (not b!4351011) (not b!4351096) (not b!4350912) (not b!4351056) (not b!4351007) (not b!4350983) (not b!4351055) (not bm!302380) (not d!1285073) (not b!4350968) (not b!4351072) (not b!4350985) (not b!4351065) (not d!1285101) (not d!1285147) (not b!4350982) (not d!1285153) (not d!1285099) (not d!1285141) (not b_lambda!130567) (not b_lambda!130565) (not b!4351005) (not b!4350846) (not d!1285093))
(check-sat)
(get-model)

(declare-fun d!1285215 () Bool)

(declare-fun noDuplicatedKeys!113 (List!49003) Bool)

(assert (=> d!1285215 (= (invariantList!662 (toList!2926 lt!1564746)) (noDuplicatedKeys!113 (toList!2926 lt!1564746)))))

(declare-fun bs!629065 () Bool)

(assert (= bs!629065 d!1285215))

(declare-fun m!4961561 () Bool)

(assert (=> bs!629065 m!4961561))

(assert (=> d!1285189 d!1285215))

(declare-fun d!1285219 () Bool)

(declare-fun res!1787637 () Bool)

(declare-fun e!2707672 () Bool)

(assert (=> d!1285219 (=> res!1787637 e!2707672)))

(assert (=> d!1285219 (= res!1787637 ((_ is Nil!48880) (toList!2925 lm!1707)))))

(assert (=> d!1285219 (= (forall!9081 (toList!2925 lm!1707) lambda!139423) e!2707672)))

(declare-fun b!4351114 () Bool)

(declare-fun e!2707673 () Bool)

(assert (=> b!4351114 (= e!2707672 e!2707673)))

(declare-fun res!1787638 () Bool)

(assert (=> b!4351114 (=> (not res!1787638) (not e!2707673))))

(assert (=> b!4351114 (= res!1787638 (dynLambda!20612 lambda!139423 (h!54415 (toList!2925 lm!1707))))))

(declare-fun b!4351115 () Bool)

(assert (=> b!4351115 (= e!2707673 (forall!9081 (t!355924 (toList!2925 lm!1707)) lambda!139423))))

(assert (= (and d!1285219 (not res!1787637)) b!4351114))

(assert (= (and b!4351114 res!1787638) b!4351115))

(declare-fun b_lambda!130571 () Bool)

(assert (=> (not b_lambda!130571) (not b!4351114)))

(declare-fun m!4961565 () Bool)

(assert (=> b!4351114 m!4961565))

(declare-fun m!4961567 () Bool)

(assert (=> b!4351115 m!4961567))

(assert (=> d!1285189 d!1285219))

(declare-fun b!4351161 () Bool)

(assert (=> b!4351161 true))

(declare-fun bs!629069 () Bool)

(declare-fun b!4351154 () Bool)

(assert (= bs!629069 (and b!4351154 b!4351161)))

(declare-fun lambda!139439 () Int)

(declare-fun lambda!139438 () Int)

(assert (=> bs!629069 (= (= (Cons!48879 (h!54414 (toList!2926 lt!1564525)) (t!355923 (toList!2926 lt!1564525))) (t!355923 (toList!2926 lt!1564525))) (= lambda!139439 lambda!139438))))

(assert (=> b!4351154 true))

(declare-fun bs!629070 () Bool)

(declare-fun b!4351155 () Bool)

(assert (= bs!629070 (and b!4351155 b!4351161)))

(declare-fun lambda!139440 () Int)

(assert (=> bs!629070 (= (= (toList!2926 lt!1564525) (t!355923 (toList!2926 lt!1564525))) (= lambda!139440 lambda!139438))))

(declare-fun bs!629071 () Bool)

(assert (= bs!629071 (and b!4351155 b!4351154)))

(assert (=> bs!629071 (= (= (toList!2926 lt!1564525) (Cons!48879 (h!54414 (toList!2926 lt!1564525)) (t!355923 (toList!2926 lt!1564525)))) (= lambda!139440 lambda!139439))))

(assert (=> b!4351155 true))

(declare-fun b!4351153 () Bool)

(declare-fun e!2707694 () Unit!71045)

(declare-fun Unit!71061 () Unit!71045)

(assert (=> b!4351153 (= e!2707694 Unit!71061)))

(declare-fun e!2707696 () List!49006)

(assert (=> b!4351154 (= e!2707696 (Cons!48882 (_1!27421 (h!54414 (toList!2926 lt!1564525))) (getKeysList!110 (t!355923 (toList!2926 lt!1564525)))))))

(declare-fun c!739655 () Bool)

(assert (=> b!4351154 (= c!739655 (containsKey!645 (t!355923 (toList!2926 lt!1564525)) (_1!27421 (h!54414 (toList!2926 lt!1564525)))))))

(declare-fun lt!1564782 () Unit!71045)

(declare-fun e!2707695 () Unit!71045)

(assert (=> b!4351154 (= lt!1564782 e!2707695)))

(declare-fun c!739653 () Bool)

(assert (=> b!4351154 (= c!739653 (contains!11054 (getKeysList!110 (t!355923 (toList!2926 lt!1564525))) (_1!27421 (h!54414 (toList!2926 lt!1564525)))))))

(declare-fun lt!1564786 () Unit!71045)

(assert (=> b!4351154 (= lt!1564786 e!2707694)))

(declare-fun lt!1564785 () List!49006)

(assert (=> b!4351154 (= lt!1564785 (getKeysList!110 (t!355923 (toList!2926 lt!1564525))))))

(declare-fun lt!1564784 () Unit!71045)

(declare-fun lemmaForallContainsAddHeadPreserves!19 (List!49003 List!49006 tuple2!48254) Unit!71045)

(assert (=> b!4351154 (= lt!1564784 (lemmaForallContainsAddHeadPreserves!19 (t!355923 (toList!2926 lt!1564525)) lt!1564785 (h!54414 (toList!2926 lt!1564525))))))

(declare-fun forall!9085 (List!49006 Int) Bool)

(assert (=> b!4351154 (forall!9085 lt!1564785 lambda!139439)))

(declare-fun lt!1564783 () Unit!71045)

(assert (=> b!4351154 (= lt!1564783 lt!1564784)))

(declare-fun res!1787653 () Bool)

(declare-fun e!2707693 () Bool)

(assert (=> b!4351155 (=> (not res!1787653) (not e!2707693))))

(declare-fun lt!1564781 () List!49006)

(assert (=> b!4351155 (= res!1787653 (forall!9085 lt!1564781 lambda!139440))))

(declare-fun b!4351156 () Bool)

(assert (=> b!4351156 false))

(declare-fun Unit!71062 () Unit!71045)

(assert (=> b!4351156 (= e!2707695 Unit!71062)))

(declare-fun lambda!139441 () Int)

(declare-fun b!4351157 () Bool)

(declare-fun content!7686 (List!49006) (InoxSet K!10245))

(declare-fun map!10630 (List!49003 Int) List!49006)

(assert (=> b!4351157 (= e!2707693 (= (content!7686 lt!1564781) (content!7686 (map!10630 (toList!2926 lt!1564525) lambda!139441))))))

(declare-fun b!4351158 () Bool)

(declare-fun res!1787652 () Bool)

(assert (=> b!4351158 (=> (not res!1787652) (not e!2707693))))

(declare-fun length!52 (List!49006) Int)

(declare-fun length!53 (List!49003) Int)

(assert (=> b!4351158 (= res!1787652 (= (length!52 lt!1564781) (length!53 (toList!2926 lt!1564525))))))

(declare-fun b!4351159 () Bool)

(assert (=> b!4351159 (= e!2707696 Nil!48882)))

(declare-fun d!1285223 () Bool)

(assert (=> d!1285223 e!2707693))

(declare-fun res!1787651 () Bool)

(assert (=> d!1285223 (=> (not res!1787651) (not e!2707693))))

(declare-fun noDuplicate!598 (List!49006) Bool)

(assert (=> d!1285223 (= res!1787651 (noDuplicate!598 lt!1564781))))

(assert (=> d!1285223 (= lt!1564781 e!2707696)))

(declare-fun c!739654 () Bool)

(assert (=> d!1285223 (= c!739654 ((_ is Cons!48879) (toList!2926 lt!1564525)))))

(assert (=> d!1285223 (invariantList!662 (toList!2926 lt!1564525))))

(assert (=> d!1285223 (= (getKeysList!110 (toList!2926 lt!1564525)) lt!1564781)))

(declare-fun b!4351160 () Bool)

(declare-fun Unit!71063 () Unit!71045)

(assert (=> b!4351160 (= e!2707695 Unit!71063)))

(assert (=> b!4351161 false))

(declare-fun lt!1564787 () Unit!71045)

(declare-fun forallContained!1730 (List!49006 Int K!10245) Unit!71045)

(assert (=> b!4351161 (= lt!1564787 (forallContained!1730 (getKeysList!110 (t!355923 (toList!2926 lt!1564525))) lambda!139438 (_1!27421 (h!54414 (toList!2926 lt!1564525)))))))

(declare-fun Unit!71064 () Unit!71045)

(assert (=> b!4351161 (= e!2707694 Unit!71064)))

(assert (= (and d!1285223 c!739654) b!4351154))

(assert (= (and d!1285223 (not c!739654)) b!4351159))

(assert (= (and b!4351154 c!739655) b!4351156))

(assert (= (and b!4351154 (not c!739655)) b!4351160))

(assert (= (and b!4351154 c!739653) b!4351161))

(assert (= (and b!4351154 (not c!739653)) b!4351153))

(assert (= (and d!1285223 res!1787651) b!4351158))

(assert (= (and b!4351158 res!1787652) b!4351155))

(assert (= (and b!4351155 res!1787653) b!4351157))

(declare-fun m!4961593 () Bool)

(assert (=> b!4351161 m!4961593))

(assert (=> b!4351161 m!4961593))

(declare-fun m!4961595 () Bool)

(assert (=> b!4351161 m!4961595))

(assert (=> b!4351154 m!4961593))

(assert (=> b!4351154 m!4961593))

(declare-fun m!4961597 () Bool)

(assert (=> b!4351154 m!4961597))

(declare-fun m!4961599 () Bool)

(assert (=> b!4351154 m!4961599))

(declare-fun m!4961601 () Bool)

(assert (=> b!4351154 m!4961601))

(declare-fun m!4961603 () Bool)

(assert (=> b!4351154 m!4961603))

(declare-fun m!4961605 () Bool)

(assert (=> b!4351157 m!4961605))

(declare-fun m!4961607 () Bool)

(assert (=> b!4351157 m!4961607))

(assert (=> b!4351157 m!4961607))

(declare-fun m!4961609 () Bool)

(assert (=> b!4351157 m!4961609))

(declare-fun m!4961611 () Bool)

(assert (=> b!4351155 m!4961611))

(declare-fun m!4961613 () Bool)

(assert (=> d!1285223 m!4961613))

(declare-fun m!4961615 () Bool)

(assert (=> d!1285223 m!4961615))

(declare-fun m!4961617 () Bool)

(assert (=> b!4351158 m!4961617))

(declare-fun m!4961619 () Bool)

(assert (=> b!4351158 m!4961619))

(assert (=> b!4350975 d!1285223))

(assert (=> d!1285173 d!1285145))

(assert (=> d!1285173 d!1285141))

(declare-fun d!1285237 () Bool)

(assert (=> d!1285237 (not (containsKey!642 (apply!11323 lm!1707 (_1!27422 (h!54415 (toList!2925 lm!1707)))) key!3918))))

(assert (=> d!1285237 true))

(declare-fun _$39!259 () Unit!71045)

(assert (=> d!1285237 (= (choose!26772 lm!1707 key!3918 (_1!27422 (h!54415 (toList!2925 lm!1707))) hashF!1247) _$39!259)))

(declare-fun bs!629072 () Bool)

(assert (= bs!629072 d!1285237))

(assert (=> bs!629072 m!4961053))

(assert (=> bs!629072 m!4961053))

(assert (=> bs!629072 m!4961055))

(assert (=> d!1285173 d!1285237))

(declare-fun d!1285239 () Bool)

(declare-fun res!1787654 () Bool)

(declare-fun e!2707697 () Bool)

(assert (=> d!1285239 (=> res!1787654 e!2707697)))

(assert (=> d!1285239 (= res!1787654 ((_ is Nil!48880) (toList!2925 lm!1707)))))

(assert (=> d!1285239 (= (forall!9081 (toList!2925 lm!1707) lambda!139419) e!2707697)))

(declare-fun b!4351164 () Bool)

(declare-fun e!2707698 () Bool)

(assert (=> b!4351164 (= e!2707697 e!2707698)))

(declare-fun res!1787655 () Bool)

(assert (=> b!4351164 (=> (not res!1787655) (not e!2707698))))

(assert (=> b!4351164 (= res!1787655 (dynLambda!20612 lambda!139419 (h!54415 (toList!2925 lm!1707))))))

(declare-fun b!4351165 () Bool)

(assert (=> b!4351165 (= e!2707698 (forall!9081 (t!355924 (toList!2925 lm!1707)) lambda!139419))))

(assert (= (and d!1285239 (not res!1787654)) b!4351164))

(assert (= (and b!4351164 res!1787655) b!4351165))

(declare-fun b_lambda!130575 () Bool)

(assert (=> (not b_lambda!130575) (not b!4351164)))

(declare-fun m!4961621 () Bool)

(assert (=> b!4351164 m!4961621))

(declare-fun m!4961623 () Bool)

(assert (=> b!4351165 m!4961623))

(assert (=> d!1285173 d!1285239))

(declare-fun d!1285241 () Bool)

(declare-fun res!1787656 () Bool)

(declare-fun e!2707699 () Bool)

(assert (=> d!1285241 (=> res!1787656 e!2707699)))

(assert (=> d!1285241 (= res!1787656 (and ((_ is Cons!48879) (t!355923 newBucket!200)) (= (_1!27421 (h!54414 (t!355923 newBucket!200))) (_1!27421 (h!54414 newBucket!200)))))))

(assert (=> d!1285241 (= (containsKey!642 (t!355923 newBucket!200) (_1!27421 (h!54414 newBucket!200))) e!2707699)))

(declare-fun b!4351166 () Bool)

(declare-fun e!2707700 () Bool)

(assert (=> b!4351166 (= e!2707699 e!2707700)))

(declare-fun res!1787657 () Bool)

(assert (=> b!4351166 (=> (not res!1787657) (not e!2707700))))

(assert (=> b!4351166 (= res!1787657 ((_ is Cons!48879) (t!355923 newBucket!200)))))

(declare-fun b!4351167 () Bool)

(assert (=> b!4351167 (= e!2707700 (containsKey!642 (t!355923 (t!355923 newBucket!200)) (_1!27421 (h!54414 newBucket!200))))))

(assert (= (and d!1285241 (not res!1787656)) b!4351166))

(assert (= (and b!4351166 res!1787657) b!4351167))

(declare-fun m!4961625 () Bool)

(assert (=> b!4351167 m!4961625))

(assert (=> b!4351055 d!1285241))

(declare-fun d!1285243 () Bool)

(declare-fun res!1787662 () Bool)

(declare-fun e!2707705 () Bool)

(assert (=> d!1285243 (=> res!1787662 e!2707705)))

(assert (=> d!1285243 (= res!1787662 (or ((_ is Nil!48880) (toList!2925 lm!1707)) ((_ is Nil!48880) (t!355924 (toList!2925 lm!1707)))))))

(assert (=> d!1285243 (= (isStrictlySorted!88 (toList!2925 lm!1707)) e!2707705)))

(declare-fun b!4351172 () Bool)

(declare-fun e!2707706 () Bool)

(assert (=> b!4351172 (= e!2707705 e!2707706)))

(declare-fun res!1787663 () Bool)

(assert (=> b!4351172 (=> (not res!1787663) (not e!2707706))))

(assert (=> b!4351172 (= res!1787663 (bvslt (_1!27422 (h!54415 (toList!2925 lm!1707))) (_1!27422 (h!54415 (t!355924 (toList!2925 lm!1707))))))))

(declare-fun b!4351173 () Bool)

(assert (=> b!4351173 (= e!2707706 (isStrictlySorted!88 (t!355924 (toList!2925 lm!1707))))))

(assert (= (and d!1285243 (not res!1787662)) b!4351172))

(assert (= (and b!4351172 res!1787663) b!4351173))

(declare-fun m!4961627 () Bool)

(assert (=> b!4351173 m!4961627))

(assert (=> d!1285087 d!1285243))

(declare-fun d!1285245 () Bool)

(declare-fun res!1787668 () Bool)

(declare-fun e!2707711 () Bool)

(assert (=> d!1285245 (=> res!1787668 e!2707711)))

(assert (=> d!1285245 (= res!1787668 (and ((_ is Cons!48879) (toList!2926 lt!1564520)) (= (_1!27421 (h!54414 (toList!2926 lt!1564520))) key!3918)))))

(assert (=> d!1285245 (= (containsKey!645 (toList!2926 lt!1564520) key!3918) e!2707711)))

(declare-fun b!4351178 () Bool)

(declare-fun e!2707712 () Bool)

(assert (=> b!4351178 (= e!2707711 e!2707712)))

(declare-fun res!1787669 () Bool)

(assert (=> b!4351178 (=> (not res!1787669) (not e!2707712))))

(assert (=> b!4351178 (= res!1787669 ((_ is Cons!48879) (toList!2926 lt!1564520)))))

(declare-fun b!4351179 () Bool)

(assert (=> b!4351179 (= e!2707712 (containsKey!645 (t!355923 (toList!2926 lt!1564520)) key!3918))))

(assert (= (and d!1285245 (not res!1787668)) b!4351178))

(assert (= (and b!4351178 res!1787669) b!4351179))

(declare-fun m!4961629 () Bool)

(assert (=> b!4351179 m!4961629))

(assert (=> d!1285129 d!1285245))

(declare-fun d!1285247 () Bool)

(declare-fun res!1787670 () Bool)

(declare-fun e!2707713 () Bool)

(assert (=> d!1285247 (=> res!1787670 e!2707713)))

(assert (=> d!1285247 (= res!1787670 ((_ is Nil!48880) (toList!2925 lm!1707)))))

(assert (=> d!1285247 (= (forall!9081 (toList!2925 lm!1707) lambda!139422) e!2707713)))

(declare-fun b!4351180 () Bool)

(declare-fun e!2707714 () Bool)

(assert (=> b!4351180 (= e!2707713 e!2707714)))

(declare-fun res!1787671 () Bool)

(assert (=> b!4351180 (=> (not res!1787671) (not e!2707714))))

(assert (=> b!4351180 (= res!1787671 (dynLambda!20612 lambda!139422 (h!54415 (toList!2925 lm!1707))))))

(declare-fun b!4351181 () Bool)

(assert (=> b!4351181 (= e!2707714 (forall!9081 (t!355924 (toList!2925 lm!1707)) lambda!139422))))

(assert (= (and d!1285247 (not res!1787670)) b!4351180))

(assert (= (and b!4351180 res!1787671) b!4351181))

(declare-fun b_lambda!130577 () Bool)

(assert (=> (not b_lambda!130577) (not b!4351180)))

(declare-fun m!4961631 () Bool)

(assert (=> b!4351180 m!4961631))

(declare-fun m!4961633 () Bool)

(assert (=> b!4351181 m!4961633))

(assert (=> d!1285179 d!1285247))

(declare-fun d!1285249 () Bool)

(assert (=> d!1285249 (= (tail!6965 (toList!2925 lm!1707)) (t!355924 (toList!2925 lm!1707)))))

(assert (=> d!1285123 d!1285249))

(declare-fun d!1285251 () Bool)

(declare-fun e!2707716 () Bool)

(assert (=> d!1285251 e!2707716))

(declare-fun res!1787672 () Bool)

(assert (=> d!1285251 (=> res!1787672 e!2707716)))

(declare-fun lt!1564790 () Bool)

(assert (=> d!1285251 (= res!1787672 (not lt!1564790))))

(declare-fun lt!1564789 () Bool)

(assert (=> d!1285251 (= lt!1564790 lt!1564789)))

(declare-fun lt!1564791 () Unit!71045)

(declare-fun e!2707715 () Unit!71045)

(assert (=> d!1285251 (= lt!1564791 e!2707715)))

(declare-fun c!739656 () Bool)

(assert (=> d!1285251 (= c!739656 lt!1564789)))

(assert (=> d!1285251 (= lt!1564789 (containsKey!643 (toList!2925 lt!1564659) (_1!27422 lt!1564522)))))

(assert (=> d!1285251 (= (contains!11052 lt!1564659 (_1!27422 lt!1564522)) lt!1564790)))

(declare-fun b!4351182 () Bool)

(declare-fun lt!1564788 () Unit!71045)

(assert (=> b!4351182 (= e!2707715 lt!1564788)))

(assert (=> b!4351182 (= lt!1564788 (lemmaContainsKeyImpliesGetValueByKeyDefined!333 (toList!2925 lt!1564659) (_1!27422 lt!1564522)))))

(assert (=> b!4351182 (isDefined!7730 (getValueByKey!421 (toList!2925 lt!1564659) (_1!27422 lt!1564522)))))

(declare-fun b!4351183 () Bool)

(declare-fun Unit!71076 () Unit!71045)

(assert (=> b!4351183 (= e!2707715 Unit!71076)))

(declare-fun b!4351184 () Bool)

(assert (=> b!4351184 (= e!2707716 (isDefined!7730 (getValueByKey!421 (toList!2925 lt!1564659) (_1!27422 lt!1564522))))))

(assert (= (and d!1285251 c!739656) b!4351182))

(assert (= (and d!1285251 (not c!739656)) b!4351183))

(assert (= (and d!1285251 (not res!1787672)) b!4351184))

(declare-fun m!4961635 () Bool)

(assert (=> d!1285251 m!4961635))

(declare-fun m!4961637 () Bool)

(assert (=> b!4351182 m!4961637))

(assert (=> b!4351182 m!4961281))

(assert (=> b!4351182 m!4961281))

(declare-fun m!4961639 () Bool)

(assert (=> b!4351182 m!4961639))

(assert (=> b!4351184 m!4961281))

(assert (=> b!4351184 m!4961281))

(assert (=> b!4351184 m!4961639))

(assert (=> d!1285127 d!1285251))

(declare-fun b!4351196 () Bool)

(declare-fun e!2707722 () Option!10435)

(assert (=> b!4351196 (= e!2707722 None!10434)))

(declare-fun b!4351193 () Bool)

(declare-fun e!2707721 () Option!10435)

(assert (=> b!4351193 (= e!2707721 (Some!10434 (_2!27422 (h!54415 lt!1564658))))))

(declare-fun b!4351194 () Bool)

(assert (=> b!4351194 (= e!2707721 e!2707722)))

(declare-fun c!739662 () Bool)

(assert (=> b!4351194 (= c!739662 (and ((_ is Cons!48880) lt!1564658) (not (= (_1!27422 (h!54415 lt!1564658)) (_1!27422 lt!1564522)))))))

(declare-fun b!4351195 () Bool)

(assert (=> b!4351195 (= e!2707722 (getValueByKey!421 (t!355924 lt!1564658) (_1!27422 lt!1564522)))))

(declare-fun d!1285253 () Bool)

(declare-fun c!739661 () Bool)

(assert (=> d!1285253 (= c!739661 (and ((_ is Cons!48880) lt!1564658) (= (_1!27422 (h!54415 lt!1564658)) (_1!27422 lt!1564522))))))

(assert (=> d!1285253 (= (getValueByKey!421 lt!1564658 (_1!27422 lt!1564522)) e!2707721)))

(assert (= (and d!1285253 c!739661) b!4351193))

(assert (= (and d!1285253 (not c!739661)) b!4351194))

(assert (= (and b!4351194 c!739662) b!4351195))

(assert (= (and b!4351194 (not c!739662)) b!4351196))

(declare-fun m!4961641 () Bool)

(assert (=> b!4351195 m!4961641))

(assert (=> d!1285127 d!1285253))

(declare-fun d!1285255 () Bool)

(assert (=> d!1285255 (= (getValueByKey!421 lt!1564658 (_1!27422 lt!1564522)) (Some!10434 (_2!27422 lt!1564522)))))

(declare-fun lt!1564794 () Unit!71045)

(declare-fun choose!26776 (List!49004 (_ BitVec 64) List!49003) Unit!71045)

(assert (=> d!1285255 (= lt!1564794 (choose!26776 lt!1564658 (_1!27422 lt!1564522) (_2!27422 lt!1564522)))))

(declare-fun e!2707725 () Bool)

(assert (=> d!1285255 e!2707725))

(declare-fun res!1787677 () Bool)

(assert (=> d!1285255 (=> (not res!1787677) (not e!2707725))))

(assert (=> d!1285255 (= res!1787677 (isStrictlySorted!88 lt!1564658))))

(assert (=> d!1285255 (= (lemmaContainsTupThenGetReturnValue!195 lt!1564658 (_1!27422 lt!1564522) (_2!27422 lt!1564522)) lt!1564794)))

(declare-fun b!4351201 () Bool)

(declare-fun res!1787678 () Bool)

(assert (=> b!4351201 (=> (not res!1787678) (not e!2707725))))

(assert (=> b!4351201 (= res!1787678 (containsKey!643 lt!1564658 (_1!27422 lt!1564522)))))

(declare-fun b!4351202 () Bool)

(assert (=> b!4351202 (= e!2707725 (contains!11050 lt!1564658 (tuple2!48257 (_1!27422 lt!1564522) (_2!27422 lt!1564522))))))

(assert (= (and d!1285255 res!1787677) b!4351201))

(assert (= (and b!4351201 res!1787678) b!4351202))

(assert (=> d!1285255 m!4961275))

(declare-fun m!4961643 () Bool)

(assert (=> d!1285255 m!4961643))

(declare-fun m!4961645 () Bool)

(assert (=> d!1285255 m!4961645))

(declare-fun m!4961647 () Bool)

(assert (=> b!4351201 m!4961647))

(declare-fun m!4961649 () Bool)

(assert (=> b!4351202 m!4961649))

(assert (=> d!1285127 d!1285255))

(declare-fun b!4351223 () Bool)

(declare-fun e!2707738 () List!49004)

(assert (=> b!4351223 (= e!2707738 (insertStrictlySorted!118 (t!355924 (toList!2925 lt!1564518)) (_1!27422 lt!1564522) (_2!27422 lt!1564522)))))

(declare-fun bm!302391 () Bool)

(declare-fun call!302396 () List!49004)

(declare-fun call!302397 () List!49004)

(assert (=> bm!302391 (= call!302396 call!302397)))

(declare-fun b!4351224 () Bool)

(declare-fun e!2707740 () List!49004)

(declare-fun call!302398 () List!49004)

(assert (=> b!4351224 (= e!2707740 call!302398)))

(declare-fun b!4351225 () Bool)

(declare-fun e!2707737 () List!49004)

(assert (=> b!4351225 (= e!2707737 call!302396)))

(declare-fun bm!302392 () Bool)

(assert (=> bm!302392 (= call!302397 call!302398)))

(declare-fun c!739673 () Bool)

(declare-fun bm!302393 () Bool)

(declare-fun $colon$colon!680 (List!49004 tuple2!48256) List!49004)

(assert (=> bm!302393 (= call!302398 ($colon$colon!680 e!2707738 (ite c!739673 (h!54415 (toList!2925 lt!1564518)) (tuple2!48257 (_1!27422 lt!1564522) (_2!27422 lt!1564522)))))))

(declare-fun c!739671 () Bool)

(assert (=> bm!302393 (= c!739671 c!739673)))

(declare-fun b!4351227 () Bool)

(assert (=> b!4351227 (= e!2707737 call!302396)))

(declare-fun b!4351228 () Bool)

(declare-fun e!2707739 () List!49004)

(assert (=> b!4351228 (= e!2707739 call!302397)))

(declare-fun b!4351229 () Bool)

(assert (=> b!4351229 (= e!2707740 e!2707739)))

(declare-fun c!739674 () Bool)

(assert (=> b!4351229 (= c!739674 (and ((_ is Cons!48880) (toList!2925 lt!1564518)) (= (_1!27422 (h!54415 (toList!2925 lt!1564518))) (_1!27422 lt!1564522))))))

(declare-fun b!4351230 () Bool)

(declare-fun e!2707736 () Bool)

(declare-fun lt!1564797 () List!49004)

(assert (=> b!4351230 (= e!2707736 (contains!11050 lt!1564797 (tuple2!48257 (_1!27422 lt!1564522) (_2!27422 lt!1564522))))))

(declare-fun b!4351231 () Bool)

(declare-fun res!1787683 () Bool)

(assert (=> b!4351231 (=> (not res!1787683) (not e!2707736))))

(assert (=> b!4351231 (= res!1787683 (containsKey!643 lt!1564797 (_1!27422 lt!1564522)))))

(declare-fun b!4351232 () Bool)

(declare-fun c!739672 () Bool)

(assert (=> b!4351232 (= e!2707738 (ite c!739674 (t!355924 (toList!2925 lt!1564518)) (ite c!739672 (Cons!48880 (h!54415 (toList!2925 lt!1564518)) (t!355924 (toList!2925 lt!1564518))) Nil!48880)))))

(declare-fun d!1285257 () Bool)

(assert (=> d!1285257 e!2707736))

(declare-fun res!1787684 () Bool)

(assert (=> d!1285257 (=> (not res!1787684) (not e!2707736))))

(assert (=> d!1285257 (= res!1787684 (isStrictlySorted!88 lt!1564797))))

(assert (=> d!1285257 (= lt!1564797 e!2707740)))

(assert (=> d!1285257 (= c!739673 (and ((_ is Cons!48880) (toList!2925 lt!1564518)) (bvslt (_1!27422 (h!54415 (toList!2925 lt!1564518))) (_1!27422 lt!1564522))))))

(assert (=> d!1285257 (isStrictlySorted!88 (toList!2925 lt!1564518))))

(assert (=> d!1285257 (= (insertStrictlySorted!118 (toList!2925 lt!1564518) (_1!27422 lt!1564522) (_2!27422 lt!1564522)) lt!1564797)))

(declare-fun b!4351226 () Bool)

(assert (=> b!4351226 (= c!739672 (and ((_ is Cons!48880) (toList!2925 lt!1564518)) (bvsgt (_1!27422 (h!54415 (toList!2925 lt!1564518))) (_1!27422 lt!1564522))))))

(assert (=> b!4351226 (= e!2707739 e!2707737)))

(assert (= (and d!1285257 c!739673) b!4351224))

(assert (= (and d!1285257 (not c!739673)) b!4351229))

(assert (= (and b!4351229 c!739674) b!4351228))

(assert (= (and b!4351229 (not c!739674)) b!4351226))

(assert (= (and b!4351226 c!739672) b!4351227))

(assert (= (and b!4351226 (not c!739672)) b!4351225))

(assert (= (or b!4351227 b!4351225) bm!302391))

(assert (= (or b!4351228 bm!302391) bm!302392))

(assert (= (or b!4351224 bm!302392) bm!302393))

(assert (= (and bm!302393 c!739671) b!4351223))

(assert (= (and bm!302393 (not c!739671)) b!4351232))

(assert (= (and d!1285257 res!1787684) b!4351231))

(assert (= (and b!4351231 res!1787683) b!4351230))

(declare-fun m!4961651 () Bool)

(assert (=> b!4351223 m!4961651))

(declare-fun m!4961653 () Bool)

(assert (=> b!4351231 m!4961653))

(declare-fun m!4961655 () Bool)

(assert (=> b!4351230 m!4961655))

(declare-fun m!4961657 () Bool)

(assert (=> bm!302393 m!4961657))

(declare-fun m!4961659 () Bool)

(assert (=> d!1285257 m!4961659))

(declare-fun m!4961661 () Bool)

(assert (=> d!1285257 m!4961661))

(assert (=> d!1285127 d!1285257))

(declare-fun d!1285259 () Bool)

(declare-fun c!739677 () Bool)

(assert (=> d!1285259 (= c!739677 ((_ is Nil!48880) (toList!2925 lm!1707)))))

(declare-fun e!2707743 () (InoxSet tuple2!48256))

(assert (=> d!1285259 (= (content!7682 (toList!2925 lm!1707)) e!2707743)))

(declare-fun b!4351237 () Bool)

(assert (=> b!4351237 (= e!2707743 ((as const (Array tuple2!48256 Bool)) false))))

(declare-fun b!4351238 () Bool)

(assert (=> b!4351238 (= e!2707743 ((_ map or) (store ((as const (Array tuple2!48256 Bool)) false) (h!54415 (toList!2925 lm!1707)) true) (content!7682 (t!355924 (toList!2925 lm!1707)))))))

(assert (= (and d!1285259 c!739677) b!4351237))

(assert (= (and d!1285259 (not c!739677)) b!4351238))

(declare-fun m!4961663 () Bool)

(assert (=> b!4351238 m!4961663))

(declare-fun m!4961665 () Bool)

(assert (=> b!4351238 m!4961665))

(assert (=> d!1285099 d!1285259))

(declare-fun bs!629073 () Bool)

(declare-fun b!4351247 () Bool)

(assert (= bs!629073 (and b!4351247 b!4351161)))

(declare-fun lambda!139442 () Int)

(assert (=> bs!629073 (= (= (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (t!355923 (toList!2926 lt!1564525))) (= lambda!139442 lambda!139438))))

(declare-fun bs!629074 () Bool)

(assert (= bs!629074 (and b!4351247 b!4351154)))

(assert (=> bs!629074 (= (= (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (Cons!48879 (h!54414 (toList!2926 lt!1564525)) (t!355923 (toList!2926 lt!1564525)))) (= lambda!139442 lambda!139439))))

(declare-fun bs!629075 () Bool)

(assert (= bs!629075 (and b!4351247 b!4351155)))

(assert (=> bs!629075 (= (= (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (toList!2926 lt!1564525)) (= lambda!139442 lambda!139440))))

(assert (=> b!4351247 true))

(declare-fun bs!629076 () Bool)

(declare-fun b!4351240 () Bool)

(assert (= bs!629076 (and b!4351240 b!4351161)))

(declare-fun lambda!139443 () Int)

(assert (=> bs!629076 (= (= (Cons!48879 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) (t!355923 (toList!2926 lt!1564525))) (= lambda!139443 lambda!139438))))

(declare-fun bs!629077 () Bool)

(assert (= bs!629077 (and b!4351240 b!4351154)))

(assert (=> bs!629077 (= (= (Cons!48879 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) (Cons!48879 (h!54414 (toList!2926 lt!1564525)) (t!355923 (toList!2926 lt!1564525)))) (= lambda!139443 lambda!139439))))

(declare-fun bs!629078 () Bool)

(assert (= bs!629078 (and b!4351240 b!4351155)))

(assert (=> bs!629078 (= (= (Cons!48879 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) (toList!2926 lt!1564525)) (= lambda!139443 lambda!139440))))

(declare-fun bs!629079 () Bool)

(assert (= bs!629079 (and b!4351240 b!4351247)))

(assert (=> bs!629079 (= (= (Cons!48879 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) (= lambda!139443 lambda!139442))))

(assert (=> b!4351240 true))

(declare-fun bs!629080 () Bool)

(declare-fun b!4351241 () Bool)

(assert (= bs!629080 (and b!4351241 b!4351240)))

(declare-fun lambda!139444 () Int)

(assert (=> bs!629080 (= (= (toList!2926 (extractMap!530 (toList!2925 lm!1707))) (Cons!48879 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))))) (= lambda!139444 lambda!139443))))

(declare-fun bs!629081 () Bool)

(assert (= bs!629081 (and b!4351241 b!4351247)))

(assert (=> bs!629081 (= (= (toList!2926 (extractMap!530 (toList!2925 lm!1707))) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) (= lambda!139444 lambda!139442))))

(declare-fun bs!629082 () Bool)

(assert (= bs!629082 (and b!4351241 b!4351154)))

(assert (=> bs!629082 (= (= (toList!2926 (extractMap!530 (toList!2925 lm!1707))) (Cons!48879 (h!54414 (toList!2926 lt!1564525)) (t!355923 (toList!2926 lt!1564525)))) (= lambda!139444 lambda!139439))))

(declare-fun bs!629083 () Bool)

(assert (= bs!629083 (and b!4351241 b!4351161)))

(assert (=> bs!629083 (= (= (toList!2926 (extractMap!530 (toList!2925 lm!1707))) (t!355923 (toList!2926 lt!1564525))) (= lambda!139444 lambda!139438))))

(declare-fun bs!629084 () Bool)

(assert (= bs!629084 (and b!4351241 b!4351155)))

(assert (=> bs!629084 (= (= (toList!2926 (extractMap!530 (toList!2925 lm!1707))) (toList!2926 lt!1564525)) (= lambda!139444 lambda!139440))))

(assert (=> b!4351241 true))

(declare-fun bs!629085 () Bool)

(declare-fun b!4351243 () Bool)

(assert (= bs!629085 (and b!4351243 b!4351157)))

(declare-fun lambda!139445 () Int)

(assert (=> bs!629085 (= lambda!139445 lambda!139441)))

(declare-fun b!4351239 () Bool)

(declare-fun e!2707745 () Unit!71045)

(declare-fun Unit!71077 () Unit!71045)

(assert (=> b!4351239 (= e!2707745 Unit!71077)))

(declare-fun e!2707747 () List!49006)

(assert (=> b!4351240 (= e!2707747 (Cons!48882 (_1!27421 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) (getKeysList!110 (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))))))))

(declare-fun c!739680 () Bool)

(assert (=> b!4351240 (= c!739680 (containsKey!645 (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (_1!27421 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))))))))

(declare-fun lt!1564799 () Unit!71045)

(declare-fun e!2707746 () Unit!71045)

(assert (=> b!4351240 (= lt!1564799 e!2707746)))

(declare-fun c!739678 () Bool)

(assert (=> b!4351240 (= c!739678 (contains!11054 (getKeysList!110 (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) (_1!27421 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))))))))

(declare-fun lt!1564803 () Unit!71045)

(assert (=> b!4351240 (= lt!1564803 e!2707745)))

(declare-fun lt!1564802 () List!49006)

(assert (=> b!4351240 (= lt!1564802 (getKeysList!110 (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))))))

(declare-fun lt!1564801 () Unit!71045)

(assert (=> b!4351240 (= lt!1564801 (lemmaForallContainsAddHeadPreserves!19 (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) lt!1564802 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))))))

(assert (=> b!4351240 (forall!9085 lt!1564802 lambda!139443)))

(declare-fun lt!1564800 () Unit!71045)

(assert (=> b!4351240 (= lt!1564800 lt!1564801)))

(declare-fun res!1787687 () Bool)

(declare-fun e!2707744 () Bool)

(assert (=> b!4351241 (=> (not res!1787687) (not e!2707744))))

(declare-fun lt!1564798 () List!49006)

(assert (=> b!4351241 (= res!1787687 (forall!9085 lt!1564798 lambda!139444))))

(declare-fun b!4351242 () Bool)

(assert (=> b!4351242 false))

(declare-fun Unit!71078 () Unit!71045)

(assert (=> b!4351242 (= e!2707746 Unit!71078)))

(assert (=> b!4351243 (= e!2707744 (= (content!7686 lt!1564798) (content!7686 (map!10630 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) lambda!139445))))))

(declare-fun b!4351244 () Bool)

(declare-fun res!1787686 () Bool)

(assert (=> b!4351244 (=> (not res!1787686) (not e!2707744))))

(assert (=> b!4351244 (= res!1787686 (= (length!52 lt!1564798) (length!53 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))))))

(declare-fun b!4351245 () Bool)

(assert (=> b!4351245 (= e!2707747 Nil!48882)))

(declare-fun d!1285261 () Bool)

(assert (=> d!1285261 e!2707744))

(declare-fun res!1787685 () Bool)

(assert (=> d!1285261 (=> (not res!1787685) (not e!2707744))))

(assert (=> d!1285261 (= res!1787685 (noDuplicate!598 lt!1564798))))

(assert (=> d!1285261 (= lt!1564798 e!2707747)))

(declare-fun c!739679 () Bool)

(assert (=> d!1285261 (= c!739679 ((_ is Cons!48879) (toList!2926 (extractMap!530 (toList!2925 lm!1707)))))))

(assert (=> d!1285261 (invariantList!662 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))))

(assert (=> d!1285261 (= (getKeysList!110 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) lt!1564798)))

(declare-fun b!4351246 () Bool)

(declare-fun Unit!71079 () Unit!71045)

(assert (=> b!4351246 (= e!2707746 Unit!71079)))

(assert (=> b!4351247 false))

(declare-fun lt!1564804 () Unit!71045)

(assert (=> b!4351247 (= lt!1564804 (forallContained!1730 (getKeysList!110 (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) lambda!139442 (_1!27421 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))))))))

(declare-fun Unit!71080 () Unit!71045)

(assert (=> b!4351247 (= e!2707745 Unit!71080)))

(assert (= (and d!1285261 c!739679) b!4351240))

(assert (= (and d!1285261 (not c!739679)) b!4351245))

(assert (= (and b!4351240 c!739680) b!4351242))

(assert (= (and b!4351240 (not c!739680)) b!4351246))

(assert (= (and b!4351240 c!739678) b!4351247))

(assert (= (and b!4351240 (not c!739678)) b!4351239))

(assert (= (and d!1285261 res!1787685) b!4351244))

(assert (= (and b!4351244 res!1787686) b!4351241))

(assert (= (and b!4351241 res!1787687) b!4351243))

(declare-fun m!4961667 () Bool)

(assert (=> b!4351247 m!4961667))

(assert (=> b!4351247 m!4961667))

(declare-fun m!4961669 () Bool)

(assert (=> b!4351247 m!4961669))

(assert (=> b!4351240 m!4961667))

(assert (=> b!4351240 m!4961667))

(declare-fun m!4961671 () Bool)

(assert (=> b!4351240 m!4961671))

(declare-fun m!4961673 () Bool)

(assert (=> b!4351240 m!4961673))

(declare-fun m!4961675 () Bool)

(assert (=> b!4351240 m!4961675))

(declare-fun m!4961677 () Bool)

(assert (=> b!4351240 m!4961677))

(declare-fun m!4961679 () Bool)

(assert (=> b!4351243 m!4961679))

(declare-fun m!4961681 () Bool)

(assert (=> b!4351243 m!4961681))

(assert (=> b!4351243 m!4961681))

(declare-fun m!4961683 () Bool)

(assert (=> b!4351243 m!4961683))

(declare-fun m!4961685 () Bool)

(assert (=> b!4351241 m!4961685))

(declare-fun m!4961687 () Bool)

(assert (=> d!1285261 m!4961687))

(declare-fun m!4961689 () Bool)

(assert (=> d!1285261 m!4961689))

(declare-fun m!4961691 () Bool)

(assert (=> b!4351244 m!4961691))

(declare-fun m!4961693 () Bool)

(assert (=> b!4351244 m!4961693))

(assert (=> b!4351065 d!1285261))

(declare-fun d!1285263 () Bool)

(assert (=> d!1285263 (isDefined!7730 (getValueByKey!421 (toList!2925 lm!1707) hash!377))))

(declare-fun lt!1564807 () Unit!71045)

(declare-fun choose!26777 (List!49004 (_ BitVec 64)) Unit!71045)

(assert (=> d!1285263 (= lt!1564807 (choose!26777 (toList!2925 lm!1707) hash!377))))

(declare-fun e!2707750 () Bool)

(assert (=> d!1285263 e!2707750))

(declare-fun res!1787690 () Bool)

(assert (=> d!1285263 (=> (not res!1787690) (not e!2707750))))

(assert (=> d!1285263 (= res!1787690 (isStrictlySorted!88 (toList!2925 lm!1707)))))

(assert (=> d!1285263 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!333 (toList!2925 lm!1707) hash!377) lt!1564807)))

(declare-fun b!4351250 () Bool)

(assert (=> b!4351250 (= e!2707750 (containsKey!643 (toList!2925 lm!1707) hash!377))))

(assert (= (and d!1285263 res!1787690) b!4351250))

(assert (=> d!1285263 m!4961147))

(assert (=> d!1285263 m!4961147))

(assert (=> d!1285263 m!4961149))

(declare-fun m!4961695 () Bool)

(assert (=> d!1285263 m!4961695))

(assert (=> d!1285263 m!4961151))

(assert (=> b!4351250 m!4961143))

(assert (=> b!4350859 d!1285263))

(declare-fun d!1285265 () Bool)

(declare-fun isEmpty!28181 (Option!10435) Bool)

(assert (=> d!1285265 (= (isDefined!7730 (getValueByKey!421 (toList!2925 lm!1707) hash!377)) (not (isEmpty!28181 (getValueByKey!421 (toList!2925 lm!1707) hash!377))))))

(declare-fun bs!629086 () Bool)

(assert (= bs!629086 d!1285265))

(assert (=> bs!629086 m!4961147))

(declare-fun m!4961697 () Bool)

(assert (=> bs!629086 m!4961697))

(assert (=> b!4350859 d!1285265))

(declare-fun b!4351254 () Bool)

(declare-fun e!2707752 () Option!10435)

(assert (=> b!4351254 (= e!2707752 None!10434)))

(declare-fun b!4351251 () Bool)

(declare-fun e!2707751 () Option!10435)

(assert (=> b!4351251 (= e!2707751 (Some!10434 (_2!27422 (h!54415 (toList!2925 lm!1707)))))))

(declare-fun b!4351252 () Bool)

(assert (=> b!4351252 (= e!2707751 e!2707752)))

(declare-fun c!739682 () Bool)

(assert (=> b!4351252 (= c!739682 (and ((_ is Cons!48880) (toList!2925 lm!1707)) (not (= (_1!27422 (h!54415 (toList!2925 lm!1707))) hash!377))))))

(declare-fun b!4351253 () Bool)

(assert (=> b!4351253 (= e!2707752 (getValueByKey!421 (t!355924 (toList!2925 lm!1707)) hash!377))))

(declare-fun d!1285267 () Bool)

(declare-fun c!739681 () Bool)

(assert (=> d!1285267 (= c!739681 (and ((_ is Cons!48880) (toList!2925 lm!1707)) (= (_1!27422 (h!54415 (toList!2925 lm!1707))) hash!377)))))

(assert (=> d!1285267 (= (getValueByKey!421 (toList!2925 lm!1707) hash!377) e!2707751)))

(assert (= (and d!1285267 c!739681) b!4351251))

(assert (= (and d!1285267 (not c!739681)) b!4351252))

(assert (= (and b!4351252 c!739682) b!4351253))

(assert (= (and b!4351252 (not c!739682)) b!4351254))

(declare-fun m!4961699 () Bool)

(assert (=> b!4351253 m!4961699))

(assert (=> b!4350859 d!1285267))

(declare-fun bs!629087 () Bool)

(declare-fun d!1285269 () Bool)

(assert (= bs!629087 (and d!1285269 d!1285143)))

(declare-fun lambda!139446 () Int)

(assert (=> bs!629087 (= lambda!139446 lambda!139409)))

(declare-fun bs!629088 () Bool)

(assert (= bs!629088 (and d!1285269 d!1285135)))

(assert (=> bs!629088 (= lambda!139446 lambda!139406)))

(declare-fun bs!629089 () Bool)

(assert (= bs!629089 (and d!1285269 d!1285173)))

(assert (=> bs!629089 (= lambda!139446 lambda!139419)))

(declare-fun bs!629090 () Bool)

(assert (= bs!629090 (and d!1285269 start!420404)))

(assert (=> bs!629090 (= lambda!139446 lambda!139387)))

(declare-fun bs!629091 () Bool)

(assert (= bs!629091 (and d!1285269 d!1285189)))

(assert (=> bs!629091 (= lambda!139446 lambda!139423)))

(declare-fun bs!629092 () Bool)

(assert (= bs!629092 (and d!1285269 d!1285147)))

(assert (=> bs!629092 (= lambda!139446 lambda!139411)))

(declare-fun bs!629093 () Bool)

(assert (= bs!629093 (and d!1285269 d!1285153)))

(assert (=> bs!629093 (= lambda!139446 lambda!139416)))

(declare-fun bs!629094 () Bool)

(assert (= bs!629094 (and d!1285269 d!1285179)))

(assert (=> bs!629094 (not (= lambda!139446 lambda!139422))))

(declare-fun lt!1564808 () ListMap!2169)

(assert (=> d!1285269 (invariantList!662 (toList!2926 lt!1564808))))

(declare-fun e!2707753 () ListMap!2169)

(assert (=> d!1285269 (= lt!1564808 e!2707753)))

(declare-fun c!739683 () Bool)

(assert (=> d!1285269 (= c!739683 ((_ is Cons!48880) (toList!2925 (+!599 lt!1564518 (tuple2!48257 hash!377 newBucket!200)))))))

(assert (=> d!1285269 (forall!9081 (toList!2925 (+!599 lt!1564518 (tuple2!48257 hash!377 newBucket!200))) lambda!139446)))

(assert (=> d!1285269 (= (extractMap!530 (toList!2925 (+!599 lt!1564518 (tuple2!48257 hash!377 newBucket!200)))) lt!1564808)))

(declare-fun b!4351255 () Bool)

(assert (=> b!4351255 (= e!2707753 (addToMapMapFromBucket!169 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 (tuple2!48257 hash!377 newBucket!200))))) (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 (tuple2!48257 hash!377 newBucket!200)))))))))

(declare-fun b!4351256 () Bool)

(assert (=> b!4351256 (= e!2707753 (ListMap!2170 Nil!48879))))

(assert (= (and d!1285269 c!739683) b!4351255))

(assert (= (and d!1285269 (not c!739683)) b!4351256))

(declare-fun m!4961701 () Bool)

(assert (=> d!1285269 m!4961701))

(declare-fun m!4961703 () Bool)

(assert (=> d!1285269 m!4961703))

(declare-fun m!4961705 () Bool)

(assert (=> b!4351255 m!4961705))

(assert (=> b!4351255 m!4961705))

(declare-fun m!4961707 () Bool)

(assert (=> b!4351255 m!4961707))

(assert (=> d!1285153 d!1285269))

(assert (=> d!1285153 d!1285135))

(declare-fun d!1285271 () Bool)

(assert (=> d!1285271 (eq!241 (extractMap!530 (toList!2925 (+!599 lt!1564518 (tuple2!48257 hash!377 newBucket!200)))) (+!600 (extractMap!530 (toList!2925 lt!1564518)) (tuple2!48255 key!3918 newValue!99)))))

(assert (=> d!1285271 true))

(declare-fun _$10!140 () Unit!71045)

(assert (=> d!1285271 (= (choose!26770 lt!1564518 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) _$10!140)))

(declare-fun bs!629095 () Bool)

(assert (= bs!629095 d!1285271))

(assert (=> bs!629095 m!4961453))

(assert (=> bs!629095 m!4961457))

(assert (=> bs!629095 m!4961459))

(assert (=> bs!629095 m!4961463))

(assert (=> bs!629095 m!4961457))

(assert (=> bs!629095 m!4961045))

(assert (=> bs!629095 m!4961045))

(assert (=> bs!629095 m!4961459))

(assert (=> d!1285153 d!1285271))

(declare-fun d!1285273 () Bool)

(declare-fun e!2707754 () Bool)

(assert (=> d!1285273 e!2707754))

(declare-fun res!1787692 () Bool)

(assert (=> d!1285273 (=> (not res!1787692) (not e!2707754))))

(declare-fun lt!1564809 () ListMap!2169)

(assert (=> d!1285273 (= res!1787692 (contains!11051 lt!1564809 (_1!27421 (tuple2!48255 key!3918 newValue!99))))))

(declare-fun lt!1564810 () List!49003)

(assert (=> d!1285273 (= lt!1564809 (ListMap!2170 lt!1564810))))

(declare-fun lt!1564811 () Unit!71045)

(declare-fun lt!1564812 () Unit!71045)

(assert (=> d!1285273 (= lt!1564811 lt!1564812)))

(assert (=> d!1285273 (= (getValueByKey!423 lt!1564810 (_1!27421 (tuple2!48255 key!3918 newValue!99))) (Some!10436 (_2!27421 (tuple2!48255 key!3918 newValue!99))))))

(assert (=> d!1285273 (= lt!1564812 (lemmaContainsTupThenGetReturnValue!198 lt!1564810 (_1!27421 (tuple2!48255 key!3918 newValue!99)) (_2!27421 (tuple2!48255 key!3918 newValue!99))))))

(assert (=> d!1285273 (= lt!1564810 (insertNoDuplicatedKeys!87 (toList!2926 (extractMap!530 (toList!2925 lt!1564518))) (_1!27421 (tuple2!48255 key!3918 newValue!99)) (_2!27421 (tuple2!48255 key!3918 newValue!99))))))

(assert (=> d!1285273 (= (+!600 (extractMap!530 (toList!2925 lt!1564518)) (tuple2!48255 key!3918 newValue!99)) lt!1564809)))

(declare-fun b!4351257 () Bool)

(declare-fun res!1787691 () Bool)

(assert (=> b!4351257 (=> (not res!1787691) (not e!2707754))))

(assert (=> b!4351257 (= res!1787691 (= (getValueByKey!423 (toList!2926 lt!1564809) (_1!27421 (tuple2!48255 key!3918 newValue!99))) (Some!10436 (_2!27421 (tuple2!48255 key!3918 newValue!99)))))))

(declare-fun b!4351258 () Bool)

(assert (=> b!4351258 (= e!2707754 (contains!11056 (toList!2926 lt!1564809) (tuple2!48255 key!3918 newValue!99)))))

(assert (= (and d!1285273 res!1787692) b!4351257))

(assert (= (and b!4351257 res!1787691) b!4351258))

(declare-fun m!4961709 () Bool)

(assert (=> d!1285273 m!4961709))

(declare-fun m!4961711 () Bool)

(assert (=> d!1285273 m!4961711))

(declare-fun m!4961713 () Bool)

(assert (=> d!1285273 m!4961713))

(declare-fun m!4961715 () Bool)

(assert (=> d!1285273 m!4961715))

(declare-fun m!4961717 () Bool)

(assert (=> b!4351257 m!4961717))

(declare-fun m!4961719 () Bool)

(assert (=> b!4351258 m!4961719))

(assert (=> d!1285153 d!1285273))

(declare-fun d!1285275 () Bool)

(declare-fun res!1787693 () Bool)

(declare-fun e!2707755 () Bool)

(assert (=> d!1285275 (=> res!1787693 e!2707755)))

(assert (=> d!1285275 (= res!1787693 ((_ is Nil!48880) (toList!2925 lt!1564518)))))

(assert (=> d!1285275 (= (forall!9081 (toList!2925 lt!1564518) lambda!139416) e!2707755)))

(declare-fun b!4351259 () Bool)

(declare-fun e!2707756 () Bool)

(assert (=> b!4351259 (= e!2707755 e!2707756)))

(declare-fun res!1787694 () Bool)

(assert (=> b!4351259 (=> (not res!1787694) (not e!2707756))))

(assert (=> b!4351259 (= res!1787694 (dynLambda!20612 lambda!139416 (h!54415 (toList!2925 lt!1564518))))))

(declare-fun b!4351260 () Bool)

(assert (=> b!4351260 (= e!2707756 (forall!9081 (t!355924 (toList!2925 lt!1564518)) lambda!139416))))

(assert (= (and d!1285275 (not res!1787693)) b!4351259))

(assert (= (and b!4351259 res!1787694) b!4351260))

(declare-fun b_lambda!130579 () Bool)

(assert (=> (not b_lambda!130579) (not b!4351259)))

(declare-fun m!4961721 () Bool)

(assert (=> b!4351259 m!4961721))

(declare-fun m!4961723 () Bool)

(assert (=> b!4351260 m!4961723))

(assert (=> d!1285153 d!1285275))

(declare-fun d!1285277 () Bool)

(declare-fun e!2707757 () Bool)

(assert (=> d!1285277 e!2707757))

(declare-fun res!1787695 () Bool)

(assert (=> d!1285277 (=> (not res!1787695) (not e!2707757))))

(declare-fun lt!1564814 () ListLongMap!1575)

(assert (=> d!1285277 (= res!1787695 (contains!11052 lt!1564814 (_1!27422 (tuple2!48257 hash!377 newBucket!200))))))

(declare-fun lt!1564813 () List!49004)

(assert (=> d!1285277 (= lt!1564814 (ListLongMap!1576 lt!1564813))))

(declare-fun lt!1564816 () Unit!71045)

(declare-fun lt!1564815 () Unit!71045)

(assert (=> d!1285277 (= lt!1564816 lt!1564815)))

(assert (=> d!1285277 (= (getValueByKey!421 lt!1564813 (_1!27422 (tuple2!48257 hash!377 newBucket!200))) (Some!10434 (_2!27422 (tuple2!48257 hash!377 newBucket!200))))))

(assert (=> d!1285277 (= lt!1564815 (lemmaContainsTupThenGetReturnValue!195 lt!1564813 (_1!27422 (tuple2!48257 hash!377 newBucket!200)) (_2!27422 (tuple2!48257 hash!377 newBucket!200))))))

(assert (=> d!1285277 (= lt!1564813 (insertStrictlySorted!118 (toList!2925 lt!1564518) (_1!27422 (tuple2!48257 hash!377 newBucket!200)) (_2!27422 (tuple2!48257 hash!377 newBucket!200))))))

(assert (=> d!1285277 (= (+!599 lt!1564518 (tuple2!48257 hash!377 newBucket!200)) lt!1564814)))

(declare-fun b!4351261 () Bool)

(declare-fun res!1787696 () Bool)

(assert (=> b!4351261 (=> (not res!1787696) (not e!2707757))))

(assert (=> b!4351261 (= res!1787696 (= (getValueByKey!421 (toList!2925 lt!1564814) (_1!27422 (tuple2!48257 hash!377 newBucket!200))) (Some!10434 (_2!27422 (tuple2!48257 hash!377 newBucket!200)))))))

(declare-fun b!4351262 () Bool)

(assert (=> b!4351262 (= e!2707757 (contains!11050 (toList!2925 lt!1564814) (tuple2!48257 hash!377 newBucket!200)))))

(assert (= (and d!1285277 res!1787695) b!4351261))

(assert (= (and b!4351261 res!1787696) b!4351262))

(declare-fun m!4961725 () Bool)

(assert (=> d!1285277 m!4961725))

(declare-fun m!4961727 () Bool)

(assert (=> d!1285277 m!4961727))

(declare-fun m!4961729 () Bool)

(assert (=> d!1285277 m!4961729))

(declare-fun m!4961731 () Bool)

(assert (=> d!1285277 m!4961731))

(declare-fun m!4961733 () Bool)

(assert (=> b!4351261 m!4961733))

(declare-fun m!4961735 () Bool)

(assert (=> b!4351262 m!4961735))

(assert (=> d!1285153 d!1285277))

(declare-fun d!1285279 () Bool)

(assert (=> d!1285279 (= (eq!241 (extractMap!530 (toList!2925 (+!599 lt!1564518 (tuple2!48257 hash!377 newBucket!200)))) (+!600 (extractMap!530 (toList!2925 lt!1564518)) (tuple2!48255 key!3918 newValue!99))) (= (content!7683 (toList!2926 (extractMap!530 (toList!2925 (+!599 lt!1564518 (tuple2!48257 hash!377 newBucket!200)))))) (content!7683 (toList!2926 (+!600 (extractMap!530 (toList!2925 lt!1564518)) (tuple2!48255 key!3918 newValue!99))))))))

(declare-fun bs!629096 () Bool)

(assert (= bs!629096 d!1285279))

(declare-fun m!4961737 () Bool)

(assert (=> bs!629096 m!4961737))

(declare-fun m!4961739 () Bool)

(assert (=> bs!629096 m!4961739))

(assert (=> d!1285153 d!1285279))

(declare-fun d!1285281 () Bool)

(declare-fun lt!1564817 () Bool)

(assert (=> d!1285281 (= lt!1564817 (select (content!7682 (t!355924 (toList!2925 lm!1707))) lt!1564519))))

(declare-fun e!2707759 () Bool)

(assert (=> d!1285281 (= lt!1564817 e!2707759)))

(declare-fun res!1787698 () Bool)

(assert (=> d!1285281 (=> (not res!1787698) (not e!2707759))))

(assert (=> d!1285281 (= res!1787698 ((_ is Cons!48880) (t!355924 (toList!2925 lm!1707))))))

(assert (=> d!1285281 (= (contains!11050 (t!355924 (toList!2925 lm!1707)) lt!1564519) lt!1564817)))

(declare-fun b!4351263 () Bool)

(declare-fun e!2707758 () Bool)

(assert (=> b!4351263 (= e!2707759 e!2707758)))

(declare-fun res!1787697 () Bool)

(assert (=> b!4351263 (=> res!1787697 e!2707758)))

(assert (=> b!4351263 (= res!1787697 (= (h!54415 (t!355924 (toList!2925 lm!1707))) lt!1564519))))

(declare-fun b!4351264 () Bool)

(assert (=> b!4351264 (= e!2707758 (contains!11050 (t!355924 (t!355924 (toList!2925 lm!1707))) lt!1564519))))

(assert (= (and d!1285281 res!1787698) b!4351263))

(assert (= (and b!4351263 (not res!1787697)) b!4351264))

(assert (=> d!1285281 m!4961665))

(declare-fun m!4961741 () Bool)

(assert (=> d!1285281 m!4961741))

(declare-fun m!4961743 () Bool)

(assert (=> b!4351264 m!4961743))

(assert (=> b!4350912 d!1285281))

(assert (=> b!4350861 d!1285265))

(assert (=> b!4350861 d!1285267))

(declare-fun d!1285283 () Bool)

(assert (=> d!1285283 (= (get!15870 (getValueByKey!421 (toList!2925 lm!1707) (_1!27422 (h!54415 (toList!2925 lm!1707))))) (v!43260 (getValueByKey!421 (toList!2925 lm!1707) (_1!27422 (h!54415 (toList!2925 lm!1707))))))))

(assert (=> d!1285141 d!1285283))

(declare-fun b!4351268 () Bool)

(declare-fun e!2707761 () Option!10435)

(assert (=> b!4351268 (= e!2707761 None!10434)))

(declare-fun b!4351265 () Bool)

(declare-fun e!2707760 () Option!10435)

(assert (=> b!4351265 (= e!2707760 (Some!10434 (_2!27422 (h!54415 (toList!2925 lm!1707)))))))

(declare-fun b!4351266 () Bool)

(assert (=> b!4351266 (= e!2707760 e!2707761)))

(declare-fun c!739685 () Bool)

(assert (=> b!4351266 (= c!739685 (and ((_ is Cons!48880) (toList!2925 lm!1707)) (not (= (_1!27422 (h!54415 (toList!2925 lm!1707))) (_1!27422 (h!54415 (toList!2925 lm!1707)))))))))

(declare-fun b!4351267 () Bool)

(assert (=> b!4351267 (= e!2707761 (getValueByKey!421 (t!355924 (toList!2925 lm!1707)) (_1!27422 (h!54415 (toList!2925 lm!1707)))))))

(declare-fun d!1285285 () Bool)

(declare-fun c!739684 () Bool)

(assert (=> d!1285285 (= c!739684 (and ((_ is Cons!48880) (toList!2925 lm!1707)) (= (_1!27422 (h!54415 (toList!2925 lm!1707))) (_1!27422 (h!54415 (toList!2925 lm!1707))))))))

(assert (=> d!1285285 (= (getValueByKey!421 (toList!2925 lm!1707) (_1!27422 (h!54415 (toList!2925 lm!1707)))) e!2707760)))

(assert (= (and d!1285285 c!739684) b!4351265))

(assert (= (and d!1285285 (not c!739684)) b!4351266))

(assert (= (and b!4351266 c!739685) b!4351267))

(assert (= (and b!4351266 (not c!739685)) b!4351268))

(declare-fun m!4961745 () Bool)

(assert (=> b!4351267 m!4961745))

(assert (=> d!1285141 d!1285285))

(declare-fun d!1285287 () Bool)

(declare-fun lt!1564820 () Bool)

(assert (=> d!1285287 (= lt!1564820 (select (content!7683 (toList!2926 lt!1564654)) lt!1564527))))

(declare-fun e!2707766 () Bool)

(assert (=> d!1285287 (= lt!1564820 e!2707766)))

(declare-fun res!1787703 () Bool)

(assert (=> d!1285287 (=> (not res!1787703) (not e!2707766))))

(assert (=> d!1285287 (= res!1787703 ((_ is Cons!48879) (toList!2926 lt!1564654)))))

(assert (=> d!1285287 (= (contains!11056 (toList!2926 lt!1564654) lt!1564527) lt!1564820)))

(declare-fun b!4351273 () Bool)

(declare-fun e!2707767 () Bool)

(assert (=> b!4351273 (= e!2707766 e!2707767)))

(declare-fun res!1787704 () Bool)

(assert (=> b!4351273 (=> res!1787704 e!2707767)))

(assert (=> b!4351273 (= res!1787704 (= (h!54414 (toList!2926 lt!1564654)) lt!1564527))))

(declare-fun b!4351274 () Bool)

(assert (=> b!4351274 (= e!2707767 (contains!11056 (t!355923 (toList!2926 lt!1564654)) lt!1564527))))

(assert (= (and d!1285287 res!1787703) b!4351273))

(assert (= (and b!4351273 (not res!1787704)) b!4351274))

(declare-fun m!4961747 () Bool)

(assert (=> d!1285287 m!4961747))

(declare-fun m!4961749 () Bool)

(assert (=> d!1285287 m!4961749))

(declare-fun m!4961751 () Bool)

(assert (=> b!4351274 m!4961751))

(assert (=> b!4350983 d!1285287))

(declare-fun bs!629151 () Bool)

(declare-fun b!4351428 () Bool)

(assert (= bs!629151 (and b!4351428 d!1285101)))

(declare-fun lambda!139526 () Int)

(assert (=> bs!629151 (not (= lambda!139526 lambda!139390))))

(assert (=> b!4351428 true))

(declare-fun bs!629152 () Bool)

(declare-fun b!4351429 () Bool)

(assert (= bs!629152 (and b!4351429 d!1285101)))

(declare-fun lambda!139527 () Int)

(assert (=> bs!629152 (not (= lambda!139527 lambda!139390))))

(declare-fun bs!629153 () Bool)

(assert (= bs!629153 (and b!4351429 b!4351428)))

(assert (=> bs!629153 (= lambda!139527 lambda!139526)))

(assert (=> b!4351429 true))

(declare-fun lambda!139528 () Int)

(assert (=> bs!629152 (not (= lambda!139528 lambda!139390))))

(declare-fun lt!1565007 () ListMap!2169)

(assert (=> bs!629153 (= (= lt!1565007 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139528 lambda!139526))))

(assert (=> b!4351429 (= (= lt!1565007 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139528 lambda!139527))))

(assert (=> b!4351429 true))

(declare-fun bs!629154 () Bool)

(declare-fun d!1285289 () Bool)

(assert (= bs!629154 (and d!1285289 d!1285101)))

(declare-fun lambda!139529 () Int)

(assert (=> bs!629154 (not (= lambda!139529 lambda!139390))))

(declare-fun bs!629155 () Bool)

(assert (= bs!629155 (and d!1285289 b!4351428)))

(declare-fun lt!1565005 () ListMap!2169)

(assert (=> bs!629155 (= (= lt!1565005 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139529 lambda!139526))))

(declare-fun bs!629156 () Bool)

(assert (= bs!629156 (and d!1285289 b!4351429)))

(assert (=> bs!629156 (= (= lt!1565005 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139529 lambda!139527))))

(assert (=> bs!629156 (= (= lt!1565005 lt!1565007) (= lambda!139529 lambda!139528))))

(assert (=> d!1285289 true))

(declare-fun b!4351426 () Bool)

(declare-fun e!2707868 () Bool)

(assert (=> b!4351426 (= e!2707868 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) lambda!139528))))

(declare-fun call!302418 () Bool)

(declare-fun bm!302412 () Bool)

(declare-fun c!739717 () Bool)

(declare-fun lt!1565008 () ListMap!2169)

(assert (=> bm!302412 (= call!302418 (forall!9083 (ite c!739717 (toList!2926 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (toList!2926 lt!1565008)) (ite c!739717 lambda!139526 lambda!139528)))))

(declare-fun bm!302413 () Bool)

(declare-fun call!302417 () Unit!71045)

(declare-fun lemmaContainsAllItsOwnKeys!53 (ListMap!2169) Unit!71045)

(assert (=> bm!302413 (= call!302417 (lemmaContainsAllItsOwnKeys!53 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))))))

(declare-fun b!4351427 () Bool)

(declare-fun res!1787790 () Bool)

(declare-fun e!2707867 () Bool)

(assert (=> b!4351427 (=> (not res!1787790) (not e!2707867))))

(assert (=> b!4351427 (= res!1787790 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) lambda!139529))))

(assert (=> d!1285289 e!2707867))

(declare-fun res!1787791 () Bool)

(assert (=> d!1285289 (=> (not res!1787791) (not e!2707867))))

(assert (=> d!1285289 (= res!1787791 (forall!9083 (_2!27422 (h!54415 (toList!2925 lt!1564518))) lambda!139529))))

(declare-fun e!2707869 () ListMap!2169)

(assert (=> d!1285289 (= lt!1565005 e!2707869)))

(assert (=> d!1285289 (= c!739717 ((_ is Nil!48879) (_2!27422 (h!54415 (toList!2925 lt!1564518)))))))

(assert (=> d!1285289 (noDuplicateKeys!471 (_2!27422 (h!54415 (toList!2925 lt!1564518))))))

(assert (=> d!1285289 (= (addToMapMapFromBucket!169 (_2!27422 (h!54415 (toList!2925 lt!1564518))) (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) lt!1565005)))

(assert (=> b!4351428 (= e!2707869 (extractMap!530 (t!355924 (toList!2925 lt!1564518))))))

(declare-fun lt!1564996 () Unit!71045)

(assert (=> b!4351428 (= lt!1564996 call!302417)))

(declare-fun call!302419 () Bool)

(assert (=> b!4351428 call!302419))

(declare-fun lt!1565000 () Unit!71045)

(assert (=> b!4351428 (= lt!1565000 lt!1564996)))

(assert (=> b!4351428 call!302418))

(declare-fun lt!1564995 () Unit!71045)

(declare-fun Unit!71085 () Unit!71045)

(assert (=> b!4351428 (= lt!1564995 Unit!71085)))

(assert (=> b!4351429 (= e!2707869 lt!1565007)))

(assert (=> b!4351429 (= lt!1565008 (+!600 (extractMap!530 (t!355924 (toList!2925 lt!1564518))) (h!54414 (_2!27422 (h!54415 (toList!2925 lt!1564518))))))))

(assert (=> b!4351429 (= lt!1565007 (addToMapMapFromBucket!169 (t!355923 (_2!27422 (h!54415 (toList!2925 lt!1564518)))) (+!600 (extractMap!530 (t!355924 (toList!2925 lt!1564518))) (h!54414 (_2!27422 (h!54415 (toList!2925 lt!1564518)))))))))

(declare-fun lt!1565010 () Unit!71045)

(assert (=> b!4351429 (= lt!1565010 call!302417)))

(assert (=> b!4351429 call!302419))

(declare-fun lt!1565011 () Unit!71045)

(assert (=> b!4351429 (= lt!1565011 lt!1565010)))

(assert (=> b!4351429 call!302418))

(declare-fun lt!1564993 () Unit!71045)

(declare-fun Unit!71086 () Unit!71045)

(assert (=> b!4351429 (= lt!1564993 Unit!71086)))

(assert (=> b!4351429 (forall!9083 (t!355923 (_2!27422 (h!54415 (toList!2925 lt!1564518)))) lambda!139528)))

(declare-fun lt!1564999 () Unit!71045)

(declare-fun Unit!71087 () Unit!71045)

(assert (=> b!4351429 (= lt!1564999 Unit!71087)))

(declare-fun lt!1565002 () Unit!71045)

(declare-fun Unit!71088 () Unit!71045)

(assert (=> b!4351429 (= lt!1565002 Unit!71088)))

(declare-fun lt!1564998 () Unit!71045)

(declare-fun forallContained!1733 (List!49003 Int tuple2!48254) Unit!71045)

(assert (=> b!4351429 (= lt!1564998 (forallContained!1733 (toList!2926 lt!1565008) lambda!139528 (h!54414 (_2!27422 (h!54415 (toList!2925 lt!1564518))))))))

(assert (=> b!4351429 (contains!11051 lt!1565008 (_1!27421 (h!54414 (_2!27422 (h!54415 (toList!2925 lt!1564518))))))))

(declare-fun lt!1565006 () Unit!71045)

(declare-fun Unit!71089 () Unit!71045)

(assert (=> b!4351429 (= lt!1565006 Unit!71089)))

(assert (=> b!4351429 (contains!11051 lt!1565007 (_1!27421 (h!54414 (_2!27422 (h!54415 (toList!2925 lt!1564518))))))))

(declare-fun lt!1565003 () Unit!71045)

(declare-fun Unit!71090 () Unit!71045)

(assert (=> b!4351429 (= lt!1565003 Unit!71090)))

(assert (=> b!4351429 (forall!9083 (_2!27422 (h!54415 (toList!2925 lt!1564518))) lambda!139528)))

(declare-fun lt!1565004 () Unit!71045)

(declare-fun Unit!71091 () Unit!71045)

(assert (=> b!4351429 (= lt!1565004 Unit!71091)))

(assert (=> b!4351429 (forall!9083 (toList!2926 lt!1565008) lambda!139528)))

(declare-fun lt!1564997 () Unit!71045)

(declare-fun Unit!71092 () Unit!71045)

(assert (=> b!4351429 (= lt!1564997 Unit!71092)))

(declare-fun lt!1565012 () Unit!71045)

(declare-fun Unit!71093 () Unit!71045)

(assert (=> b!4351429 (= lt!1565012 Unit!71093)))

(declare-fun lt!1564994 () Unit!71045)

(declare-fun addForallContainsKeyThenBeforeAdding!53 (ListMap!2169 ListMap!2169 K!10245 V!10491) Unit!71045)

(assert (=> b!4351429 (= lt!1564994 (addForallContainsKeyThenBeforeAdding!53 (extractMap!530 (t!355924 (toList!2925 lt!1564518))) lt!1565007 (_1!27421 (h!54414 (_2!27422 (h!54415 (toList!2925 lt!1564518))))) (_2!27421 (h!54414 (_2!27422 (h!54415 (toList!2925 lt!1564518)))))))))

(assert (=> b!4351429 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) lambda!139528)))

(declare-fun lt!1565013 () Unit!71045)

(assert (=> b!4351429 (= lt!1565013 lt!1564994)))

(assert (=> b!4351429 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) lambda!139528)))

(declare-fun lt!1565001 () Unit!71045)

(declare-fun Unit!71095 () Unit!71045)

(assert (=> b!4351429 (= lt!1565001 Unit!71095)))

(declare-fun res!1787792 () Bool)

(assert (=> b!4351429 (= res!1787792 (forall!9083 (_2!27422 (h!54415 (toList!2925 lt!1564518))) lambda!139528))))

(assert (=> b!4351429 (=> (not res!1787792) (not e!2707868))))

(assert (=> b!4351429 e!2707868))

(declare-fun lt!1565009 () Unit!71045)

(declare-fun Unit!71096 () Unit!71045)

(assert (=> b!4351429 (= lt!1565009 Unit!71096)))

(declare-fun b!4351430 () Bool)

(assert (=> b!4351430 (= e!2707867 (invariantList!662 (toList!2926 lt!1565005)))))

(declare-fun bm!302414 () Bool)

(assert (=> bm!302414 (= call!302419 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (ite c!739717 lambda!139526 lambda!139527)))))

(assert (= (and d!1285289 c!739717) b!4351428))

(assert (= (and d!1285289 (not c!739717)) b!4351429))

(assert (= (and b!4351429 res!1787792) b!4351426))

(assert (= (or b!4351428 b!4351429) bm!302413))

(assert (= (or b!4351428 b!4351429) bm!302414))

(assert (= (or b!4351428 b!4351429) bm!302412))

(assert (= (and d!1285289 res!1787791) b!4351427))

(assert (= (and b!4351427 res!1787790) b!4351430))

(assert (=> bm!302413 m!4961339))

(declare-fun m!4961999 () Bool)

(assert (=> bm!302413 m!4961999))

(declare-fun m!4962001 () Bool)

(assert (=> bm!302414 m!4962001))

(declare-fun m!4962003 () Bool)

(assert (=> b!4351427 m!4962003))

(declare-fun m!4962005 () Bool)

(assert (=> bm!302412 m!4962005))

(assert (=> b!4351429 m!4961339))

(declare-fun m!4962007 () Bool)

(assert (=> b!4351429 m!4962007))

(declare-fun m!4962009 () Bool)

(assert (=> b!4351429 m!4962009))

(declare-fun m!4962011 () Bool)

(assert (=> b!4351429 m!4962011))

(declare-fun m!4962013 () Bool)

(assert (=> b!4351429 m!4962013))

(declare-fun m!4962015 () Bool)

(assert (=> b!4351429 m!4962015))

(assert (=> b!4351429 m!4962007))

(declare-fun m!4962017 () Bool)

(assert (=> b!4351429 m!4962017))

(assert (=> b!4351429 m!4962013))

(declare-fun m!4962019 () Bool)

(assert (=> b!4351429 m!4962019))

(declare-fun m!4962021 () Bool)

(assert (=> b!4351429 m!4962021))

(assert (=> b!4351429 m!4961339))

(declare-fun m!4962023 () Bool)

(assert (=> b!4351429 m!4962023))

(declare-fun m!4962025 () Bool)

(assert (=> b!4351429 m!4962025))

(assert (=> b!4351429 m!4962019))

(declare-fun m!4962027 () Bool)

(assert (=> b!4351430 m!4962027))

(assert (=> b!4351426 m!4962013))

(declare-fun m!4962029 () Bool)

(assert (=> d!1285289 m!4962029))

(declare-fun m!4962031 () Bool)

(assert (=> d!1285289 m!4962031))

(assert (=> b!4351005 d!1285289))

(declare-fun bs!629157 () Bool)

(declare-fun d!1285375 () Bool)

(assert (= bs!629157 (and d!1285375 d!1285143)))

(declare-fun lambda!139530 () Int)

(assert (=> bs!629157 (= lambda!139530 lambda!139409)))

(declare-fun bs!629158 () Bool)

(assert (= bs!629158 (and d!1285375 d!1285135)))

(assert (=> bs!629158 (= lambda!139530 lambda!139406)))

(declare-fun bs!629159 () Bool)

(assert (= bs!629159 (and d!1285375 d!1285173)))

(assert (=> bs!629159 (= lambda!139530 lambda!139419)))

(declare-fun bs!629160 () Bool)

(assert (= bs!629160 (and d!1285375 start!420404)))

(assert (=> bs!629160 (= lambda!139530 lambda!139387)))

(declare-fun bs!629161 () Bool)

(assert (= bs!629161 (and d!1285375 d!1285189)))

(assert (=> bs!629161 (= lambda!139530 lambda!139423)))

(declare-fun bs!629162 () Bool)

(assert (= bs!629162 (and d!1285375 d!1285147)))

(assert (=> bs!629162 (= lambda!139530 lambda!139411)))

(declare-fun bs!629163 () Bool)

(assert (= bs!629163 (and d!1285375 d!1285269)))

(assert (=> bs!629163 (= lambda!139530 lambda!139446)))

(declare-fun bs!629164 () Bool)

(assert (= bs!629164 (and d!1285375 d!1285153)))

(assert (=> bs!629164 (= lambda!139530 lambda!139416)))

(declare-fun bs!629165 () Bool)

(assert (= bs!629165 (and d!1285375 d!1285179)))

(assert (=> bs!629165 (not (= lambda!139530 lambda!139422))))

(declare-fun lt!1565016 () ListMap!2169)

(assert (=> d!1285375 (invariantList!662 (toList!2926 lt!1565016))))

(declare-fun e!2707876 () ListMap!2169)

(assert (=> d!1285375 (= lt!1565016 e!2707876)))

(declare-fun c!739724 () Bool)

(assert (=> d!1285375 (= c!739724 ((_ is Cons!48880) (t!355924 (toList!2925 lt!1564518))))))

(assert (=> d!1285375 (forall!9081 (t!355924 (toList!2925 lt!1564518)) lambda!139530)))

(assert (=> d!1285375 (= (extractMap!530 (t!355924 (toList!2925 lt!1564518))) lt!1565016)))

(declare-fun b!4351445 () Bool)

(assert (=> b!4351445 (= e!2707876 (addToMapMapFromBucket!169 (_2!27422 (h!54415 (t!355924 (toList!2925 lt!1564518)))) (extractMap!530 (t!355924 (t!355924 (toList!2925 lt!1564518))))))))

(declare-fun b!4351446 () Bool)

(assert (=> b!4351446 (= e!2707876 (ListMap!2170 Nil!48879))))

(assert (= (and d!1285375 c!739724) b!4351445))

(assert (= (and d!1285375 (not c!739724)) b!4351446))

(declare-fun m!4962033 () Bool)

(assert (=> d!1285375 m!4962033))

(declare-fun m!4962035 () Bool)

(assert (=> d!1285375 m!4962035))

(declare-fun m!4962037 () Bool)

(assert (=> b!4351445 m!4962037))

(assert (=> b!4351445 m!4962037))

(declare-fun m!4962039 () Bool)

(assert (=> b!4351445 m!4962039))

(assert (=> b!4351005 d!1285375))

(declare-fun d!1285377 () Bool)

(declare-fun lt!1565019 () Bool)

(assert (=> d!1285377 (= lt!1565019 (select (content!7686 e!2707595) key!3918))))

(declare-fun e!2707885 () Bool)

(assert (=> d!1285377 (= lt!1565019 e!2707885)))

(declare-fun res!1787802 () Bool)

(assert (=> d!1285377 (=> (not res!1787802) (not e!2707885))))

(assert (=> d!1285377 (= res!1787802 ((_ is Cons!48882) e!2707595))))

(assert (=> d!1285377 (= (contains!11054 e!2707595 key!3918) lt!1565019)))

(declare-fun b!4351459 () Bool)

(declare-fun e!2707886 () Bool)

(assert (=> b!4351459 (= e!2707885 e!2707886)))

(declare-fun res!1787801 () Bool)

(assert (=> b!4351459 (=> res!1787801 e!2707886)))

(assert (=> b!4351459 (= res!1787801 (= (h!54419 e!2707595) key!3918))))

(declare-fun b!4351460 () Bool)

(assert (=> b!4351460 (= e!2707886 (contains!11054 (t!355926 e!2707595) key!3918))))

(assert (= (and d!1285377 res!1787802) b!4351459))

(assert (= (and b!4351459 (not res!1787801)) b!4351460))

(declare-fun m!4962041 () Bool)

(assert (=> d!1285377 m!4962041))

(declare-fun m!4962043 () Bool)

(assert (=> d!1285377 m!4962043))

(declare-fun m!4962045 () Bool)

(assert (=> b!4351460 m!4962045))

(assert (=> bm!302381 d!1285377))

(declare-fun d!1285379 () Bool)

(declare-fun choose!26778 (Hashable!4863 K!10245) (_ BitVec 64))

(assert (=> d!1285379 (= (hash!1486 hashF!1247 key!3918) (choose!26778 hashF!1247 key!3918))))

(declare-fun bs!629166 () Bool)

(assert (= bs!629166 d!1285379))

(declare-fun m!4962047 () Bool)

(assert (=> bs!629166 m!4962047))

(assert (=> d!1285191 d!1285379))

(declare-fun d!1285381 () Bool)

(assert (=> d!1285381 (= (isEmpty!28179 (toList!2925 lm!1707)) ((_ is Nil!48880) (toList!2925 lm!1707)))))

(assert (=> d!1285151 d!1285381))

(declare-fun bs!629175 () Bool)

(declare-fun b!4351506 () Bool)

(assert (= bs!629175 (and b!4351506 b!4351240)))

(declare-fun lambda!139537 () Int)

(assert (=> bs!629175 (= (= (toList!2926 lt!1564520) (Cons!48879 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))))) (= lambda!139537 lambda!139443))))

(declare-fun bs!629176 () Bool)

(assert (= bs!629176 (and b!4351506 b!4351247)))

(assert (=> bs!629176 (= (= (toList!2926 lt!1564520) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) (= lambda!139537 lambda!139442))))

(declare-fun bs!629177 () Bool)

(assert (= bs!629177 (and b!4351506 b!4351241)))

(assert (=> bs!629177 (= (= (toList!2926 lt!1564520) (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (= lambda!139537 lambda!139444))))

(declare-fun bs!629178 () Bool)

(assert (= bs!629178 (and b!4351506 b!4351154)))

(assert (=> bs!629178 (= (= (toList!2926 lt!1564520) (Cons!48879 (h!54414 (toList!2926 lt!1564525)) (t!355923 (toList!2926 lt!1564525)))) (= lambda!139537 lambda!139439))))

(declare-fun bs!629179 () Bool)

(assert (= bs!629179 (and b!4351506 b!4351161)))

(assert (=> bs!629179 (= (= (toList!2926 lt!1564520) (t!355923 (toList!2926 lt!1564525))) (= lambda!139537 lambda!139438))))

(declare-fun bs!629180 () Bool)

(assert (= bs!629180 (and b!4351506 b!4351155)))

(assert (=> bs!629180 (= (= (toList!2926 lt!1564520) (toList!2926 lt!1564525)) (= lambda!139537 lambda!139440))))

(assert (=> b!4351506 true))

(declare-fun bs!629181 () Bool)

(declare-fun b!4351507 () Bool)

(assert (= bs!629181 (and b!4351507 b!4351157)))

(declare-fun lambda!139538 () Int)

(assert (=> bs!629181 (= lambda!139538 lambda!139441)))

(declare-fun bs!629183 () Bool)

(assert (= bs!629183 (and b!4351507 b!4351243)))

(assert (=> bs!629183 (= lambda!139538 lambda!139445)))

(declare-fun d!1285383 () Bool)

(declare-fun e!2707909 () Bool)

(assert (=> d!1285383 e!2707909))

(declare-fun res!1787822 () Bool)

(assert (=> d!1285383 (=> (not res!1787822) (not e!2707909))))

(declare-fun lt!1565031 () List!49006)

(assert (=> d!1285383 (= res!1787822 (noDuplicate!598 lt!1565031))))

(assert (=> d!1285383 (= lt!1565031 (getKeysList!110 (toList!2926 lt!1564520)))))

(assert (=> d!1285383 (= (keys!16494 lt!1564520) lt!1565031)))

(declare-fun b!4351505 () Bool)

(declare-fun res!1787821 () Bool)

(assert (=> b!4351505 (=> (not res!1787821) (not e!2707909))))

(assert (=> b!4351505 (= res!1787821 (= (length!52 lt!1565031) (length!53 (toList!2926 lt!1564520))))))

(declare-fun res!1787823 () Bool)

(assert (=> b!4351506 (=> (not res!1787823) (not e!2707909))))

(assert (=> b!4351506 (= res!1787823 (forall!9085 lt!1565031 lambda!139537))))

(assert (=> b!4351507 (= e!2707909 (= (content!7686 lt!1565031) (content!7686 (map!10630 (toList!2926 lt!1564520) lambda!139538))))))

(assert (= (and d!1285383 res!1787822) b!4351505))

(assert (= (and b!4351505 res!1787821) b!4351506))

(assert (= (and b!4351506 res!1787823) b!4351507))

(declare-fun m!4962109 () Bool)

(assert (=> d!1285383 m!4962109))

(assert (=> d!1285383 m!4961293))

(declare-fun m!4962111 () Bool)

(assert (=> b!4351505 m!4962111))

(declare-fun m!4962113 () Bool)

(assert (=> b!4351505 m!4962113))

(declare-fun m!4962115 () Bool)

(assert (=> b!4351506 m!4962115))

(declare-fun m!4962117 () Bool)

(assert (=> b!4351507 m!4962117))

(declare-fun m!4962119 () Bool)

(assert (=> b!4351507 m!4962119))

(assert (=> b!4351507 m!4962119))

(declare-fun m!4962121 () Bool)

(assert (=> b!4351507 m!4962121))

(assert (=> b!4350992 d!1285383))

(assert (=> b!4350906 d!1285267))

(declare-fun d!1285403 () Bool)

(declare-fun isEmpty!28183 (Option!10437) Bool)

(assert (=> d!1285403 (= (isDefined!7732 (getValueByKey!423 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918)) (not (isEmpty!28183 (getValueByKey!423 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918))))))

(declare-fun bs!629193 () Bool)

(assert (= bs!629193 d!1285403))

(assert (=> bs!629193 m!4961501))

(declare-fun m!4962123 () Bool)

(assert (=> bs!629193 m!4962123))

(assert (=> b!4351060 d!1285403))

(declare-fun b!4351526 () Bool)

(declare-fun e!2707918 () Option!10437)

(assert (=> b!4351526 (= e!2707918 None!10436)))

(declare-fun b!4351523 () Bool)

(declare-fun e!2707917 () Option!10437)

(assert (=> b!4351523 (= e!2707917 (Some!10436 (_2!27421 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))))))))

(declare-fun b!4351524 () Bool)

(assert (=> b!4351524 (= e!2707917 e!2707918)))

(declare-fun c!739746 () Bool)

(assert (=> b!4351524 (= c!739746 (and ((_ is Cons!48879) (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (not (= (_1!27421 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) key!3918))))))

(declare-fun b!4351525 () Bool)

(assert (=> b!4351525 (= e!2707918 (getValueByKey!423 (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) key!3918))))

(declare-fun d!1285405 () Bool)

(declare-fun c!739745 () Bool)

(assert (=> d!1285405 (= c!739745 (and ((_ is Cons!48879) (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (= (_1!27421 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) key!3918)))))

(assert (=> d!1285405 (= (getValueByKey!423 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918) e!2707917)))

(assert (= (and d!1285405 c!739745) b!4351523))

(assert (= (and d!1285405 (not c!739745)) b!4351524))

(assert (= (and b!4351524 c!739746) b!4351525))

(assert (= (and b!4351524 (not c!739746)) b!4351526))

(declare-fun m!4962125 () Bool)

(assert (=> b!4351525 m!4962125))

(assert (=> b!4351060 d!1285405))

(declare-fun d!1285407 () Bool)

(assert (=> d!1285407 (= (invariantList!662 (toList!2926 lt!1564695)) (noDuplicatedKeys!113 (toList!2926 lt!1564695)))))

(declare-fun bs!629207 () Bool)

(assert (= bs!629207 d!1285407))

(declare-fun m!4962127 () Bool)

(assert (=> bs!629207 m!4962127))

(assert (=> d!1285147 d!1285407))

(declare-fun d!1285409 () Bool)

(declare-fun res!1787827 () Bool)

(declare-fun e!2707919 () Bool)

(assert (=> d!1285409 (=> res!1787827 e!2707919)))

(assert (=> d!1285409 (= res!1787827 ((_ is Nil!48880) (t!355924 (toList!2925 lm!1707))))))

(assert (=> d!1285409 (= (forall!9081 (t!355924 (toList!2925 lm!1707)) lambda!139411) e!2707919)))

(declare-fun b!4351527 () Bool)

(declare-fun e!2707920 () Bool)

(assert (=> b!4351527 (= e!2707919 e!2707920)))

(declare-fun res!1787828 () Bool)

(assert (=> b!4351527 (=> (not res!1787828) (not e!2707920))))

(assert (=> b!4351527 (= res!1787828 (dynLambda!20612 lambda!139411 (h!54415 (t!355924 (toList!2925 lm!1707)))))))

(declare-fun b!4351528 () Bool)

(assert (=> b!4351528 (= e!2707920 (forall!9081 (t!355924 (t!355924 (toList!2925 lm!1707))) lambda!139411))))

(assert (= (and d!1285409 (not res!1787827)) b!4351527))

(assert (= (and b!4351527 res!1787828) b!4351528))

(declare-fun b_lambda!130591 () Bool)

(assert (=> (not b_lambda!130591) (not b!4351527)))

(declare-fun m!4962129 () Bool)

(assert (=> b!4351527 m!4962129))

(declare-fun m!4962131 () Bool)

(assert (=> b!4351528 m!4962131))

(assert (=> d!1285147 d!1285409))

(declare-fun d!1285411 () Bool)

(declare-fun lt!1565053 () Bool)

(assert (=> d!1285411 (= lt!1565053 (select (content!7682 (toList!2925 lt!1564659)) lt!1564522))))

(declare-fun e!2707922 () Bool)

(assert (=> d!1285411 (= lt!1565053 e!2707922)))

(declare-fun res!1787830 () Bool)

(assert (=> d!1285411 (=> (not res!1787830) (not e!2707922))))

(assert (=> d!1285411 (= res!1787830 ((_ is Cons!48880) (toList!2925 lt!1564659)))))

(assert (=> d!1285411 (= (contains!11050 (toList!2925 lt!1564659) lt!1564522) lt!1565053)))

(declare-fun b!4351529 () Bool)

(declare-fun e!2707921 () Bool)

(assert (=> b!4351529 (= e!2707922 e!2707921)))

(declare-fun res!1787829 () Bool)

(assert (=> b!4351529 (=> res!1787829 e!2707921)))

(assert (=> b!4351529 (= res!1787829 (= (h!54415 (toList!2925 lt!1564659)) lt!1564522))))

(declare-fun b!4351530 () Bool)

(assert (=> b!4351530 (= e!2707921 (contains!11050 (t!355924 (toList!2925 lt!1564659)) lt!1564522))))

(assert (= (and d!1285411 res!1787830) b!4351529))

(assert (= (and b!4351529 (not res!1787829)) b!4351530))

(declare-fun m!4962133 () Bool)

(assert (=> d!1285411 m!4962133))

(declare-fun m!4962135 () Bool)

(assert (=> d!1285411 m!4962135))

(declare-fun m!4962137 () Bool)

(assert (=> b!4351530 m!4962137))

(assert (=> b!4350985 d!1285411))

(assert (=> d!1285131 d!1285129))

(declare-fun d!1285413 () Bool)

(assert (=> d!1285413 (contains!11051 lt!1564520 key!3918)))

(assert (=> d!1285413 true))

(declare-fun _$11!1143 () Unit!71045)

(assert (=> d!1285413 (= (choose!26768 (_2!27422 (h!54415 (toList!2925 lm!1707))) key!3918 newValue!99 lt!1564520) _$11!1143)))

(declare-fun bs!629218 () Bool)

(assert (= bs!629218 d!1285413))

(assert (=> bs!629218 m!4961039))

(assert (=> d!1285131 d!1285413))

(declare-fun d!1285419 () Bool)

(declare-fun res!1787831 () Bool)

(declare-fun e!2707924 () Bool)

(assert (=> d!1285419 (=> res!1787831 e!2707924)))

(assert (=> d!1285419 (= res!1787831 (not ((_ is Cons!48879) (_2!27422 (h!54415 (toList!2925 lm!1707))))))))

(assert (=> d!1285419 (= (noDuplicateKeys!471 (_2!27422 (h!54415 (toList!2925 lm!1707)))) e!2707924)))

(declare-fun b!4351533 () Bool)

(declare-fun e!2707925 () Bool)

(assert (=> b!4351533 (= e!2707924 e!2707925)))

(declare-fun res!1787832 () Bool)

(assert (=> b!4351533 (=> (not res!1787832) (not e!2707925))))

(assert (=> b!4351533 (= res!1787832 (not (containsKey!642 (t!355923 (_2!27422 (h!54415 (toList!2925 lm!1707)))) (_1!27421 (h!54414 (_2!27422 (h!54415 (toList!2925 lm!1707))))))))))

(declare-fun b!4351534 () Bool)

(assert (=> b!4351534 (= e!2707925 (noDuplicateKeys!471 (t!355923 (_2!27422 (h!54415 (toList!2925 lm!1707))))))))

(assert (= (and d!1285419 (not res!1787831)) b!4351533))

(assert (= (and b!4351533 res!1787832) b!4351534))

(declare-fun m!4962185 () Bool)

(assert (=> b!4351533 m!4962185))

(declare-fun m!4962187 () Bool)

(assert (=> b!4351534 m!4962187))

(assert (=> d!1285131 d!1285419))

(declare-fun d!1285423 () Bool)

(declare-fun lt!1565062 () Bool)

(assert (=> d!1285423 (= lt!1565062 (select (content!7682 (toList!2925 lm!1707)) (tuple2!48257 hash!377 lt!1564517)))))

(declare-fun e!2707931 () Bool)

(assert (=> d!1285423 (= lt!1565062 e!2707931)))

(declare-fun res!1787837 () Bool)

(assert (=> d!1285423 (=> (not res!1787837) (not e!2707931))))

(assert (=> d!1285423 (= res!1787837 ((_ is Cons!48880) (toList!2925 lm!1707)))))

(assert (=> d!1285423 (= (contains!11050 (toList!2925 lm!1707) (tuple2!48257 hash!377 lt!1564517)) lt!1565062)))

(declare-fun b!4351544 () Bool)

(declare-fun e!2707930 () Bool)

(assert (=> b!4351544 (= e!2707931 e!2707930)))

(declare-fun res!1787836 () Bool)

(assert (=> b!4351544 (=> res!1787836 e!2707930)))

(assert (=> b!4351544 (= res!1787836 (= (h!54415 (toList!2925 lm!1707)) (tuple2!48257 hash!377 lt!1564517)))))

(declare-fun b!4351545 () Bool)

(assert (=> b!4351545 (= e!2707930 (contains!11050 (t!355924 (toList!2925 lm!1707)) (tuple2!48257 hash!377 lt!1564517)))))

(assert (= (and d!1285423 res!1787837) b!4351544))

(assert (= (and b!4351544 (not res!1787836)) b!4351545))

(assert (=> d!1285423 m!4961189))

(declare-fun m!4962189 () Bool)

(assert (=> d!1285423 m!4962189))

(declare-fun m!4962191 () Bool)

(assert (=> b!4351545 m!4962191))

(assert (=> d!1285097 d!1285423))

(declare-fun d!1285425 () Bool)

(assert (=> d!1285425 (contains!11050 (toList!2925 lm!1707) (tuple2!48257 hash!377 lt!1564517))))

(assert (=> d!1285425 true))

(declare-fun _$14!741 () Unit!71045)

(assert (=> d!1285425 (= (choose!26765 (toList!2925 lm!1707) hash!377 lt!1564517) _$14!741)))

(declare-fun bs!629233 () Bool)

(assert (= bs!629233 d!1285425))

(assert (=> bs!629233 m!4961185))

(assert (=> d!1285097 d!1285425))

(assert (=> d!1285097 d!1285243))

(declare-fun bs!629242 () Bool)

(declare-fun b!4351548 () Bool)

(assert (= bs!629242 (and b!4351548 b!4351428)))

(declare-fun lambda!139547 () Int)

(assert (=> bs!629242 (= (= (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707)))) (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139547 lambda!139526))))

(declare-fun bs!629244 () Bool)

(assert (= bs!629244 (and b!4351548 d!1285289)))

(assert (=> bs!629244 (= (= (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707)))) lt!1565005) (= lambda!139547 lambda!139529))))

(declare-fun bs!629246 () Bool)

(assert (= bs!629246 (and b!4351548 b!4351429)))

(assert (=> bs!629246 (= (= (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707)))) lt!1565007) (= lambda!139547 lambda!139528))))

(assert (=> bs!629246 (= (= (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707)))) (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139547 lambda!139527))))

(declare-fun bs!629249 () Bool)

(assert (= bs!629249 (and b!4351548 d!1285101)))

(assert (=> bs!629249 (not (= lambda!139547 lambda!139390))))

(assert (=> b!4351548 true))

(declare-fun bs!629250 () Bool)

(declare-fun b!4351549 () Bool)

(assert (= bs!629250 (and b!4351549 b!4351428)))

(declare-fun lambda!139549 () Int)

(assert (=> bs!629250 (= (= (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707)))) (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139549 lambda!139526))))

(declare-fun bs!629251 () Bool)

(assert (= bs!629251 (and b!4351549 d!1285289)))

(assert (=> bs!629251 (= (= (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707)))) lt!1565005) (= lambda!139549 lambda!139529))))

(declare-fun bs!629252 () Bool)

(assert (= bs!629252 (and b!4351549 b!4351429)))

(assert (=> bs!629252 (= (= (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707)))) lt!1565007) (= lambda!139549 lambda!139528))))

(assert (=> bs!629252 (= (= (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707)))) (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139549 lambda!139527))))

(declare-fun bs!629253 () Bool)

(assert (= bs!629253 (and b!4351549 d!1285101)))

(assert (=> bs!629253 (not (= lambda!139549 lambda!139390))))

(declare-fun bs!629254 () Bool)

(assert (= bs!629254 (and b!4351549 b!4351548)))

(assert (=> bs!629254 (= lambda!139549 lambda!139547)))

(assert (=> b!4351549 true))

(declare-fun lambda!139550 () Int)

(declare-fun lt!1565077 () ListMap!2169)

(assert (=> bs!629250 (= (= lt!1565077 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139550 lambda!139526))))

(assert (=> bs!629251 (= (= lt!1565077 lt!1565005) (= lambda!139550 lambda!139529))))

(assert (=> bs!629252 (= (= lt!1565077 lt!1565007) (= lambda!139550 lambda!139528))))

(assert (=> bs!629252 (= (= lt!1565077 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139550 lambda!139527))))

(assert (=> b!4351549 (= (= lt!1565077 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139550 lambda!139549))))

(assert (=> bs!629253 (not (= lambda!139550 lambda!139390))))

(assert (=> bs!629254 (= (= lt!1565077 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139550 lambda!139547))))

(assert (=> b!4351549 true))

(declare-fun bs!629255 () Bool)

(declare-fun d!1285427 () Bool)

(assert (= bs!629255 (and d!1285427 b!4351428)))

(declare-fun lambda!139551 () Int)

(declare-fun lt!1565075 () ListMap!2169)

(assert (=> bs!629255 (= (= lt!1565075 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139551 lambda!139526))))

(declare-fun bs!629256 () Bool)

(assert (= bs!629256 (and d!1285427 d!1285289)))

(assert (=> bs!629256 (= (= lt!1565075 lt!1565005) (= lambda!139551 lambda!139529))))

(declare-fun bs!629257 () Bool)

(assert (= bs!629257 (and d!1285427 b!4351429)))

(assert (=> bs!629257 (= (= lt!1565075 lt!1565007) (= lambda!139551 lambda!139528))))

(assert (=> bs!629257 (= (= lt!1565075 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139551 lambda!139527))))

(declare-fun bs!629258 () Bool)

(assert (= bs!629258 (and d!1285427 b!4351549)))

(assert (=> bs!629258 (= (= lt!1565075 lt!1565077) (= lambda!139551 lambda!139550))))

(assert (=> bs!629258 (= (= lt!1565075 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139551 lambda!139549))))

(declare-fun bs!629259 () Bool)

(assert (= bs!629259 (and d!1285427 d!1285101)))

(assert (=> bs!629259 (not (= lambda!139551 lambda!139390))))

(declare-fun bs!629260 () Bool)

(assert (= bs!629260 (and d!1285427 b!4351548)))

(assert (=> bs!629260 (= (= lt!1565075 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139551 lambda!139547))))

(assert (=> d!1285427 true))

(declare-fun b!4351546 () Bool)

(declare-fun e!2707933 () Bool)

(assert (=> b!4351546 (= e!2707933 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) lambda!139550))))

(declare-fun lt!1565078 () ListMap!2169)

(declare-fun call!302436 () Bool)

(declare-fun c!739751 () Bool)

(declare-fun bm!302430 () Bool)

(assert (=> bm!302430 (= call!302436 (forall!9083 (ite c!739751 (toList!2926 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (toList!2926 lt!1565078)) (ite c!739751 lambda!139547 lambda!139550)))))

(declare-fun bm!302431 () Bool)

(declare-fun call!302435 () Unit!71045)

(assert (=> bm!302431 (= call!302435 (lemmaContainsAllItsOwnKeys!53 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))))))

(declare-fun b!4351547 () Bool)

(declare-fun res!1787838 () Bool)

(declare-fun e!2707932 () Bool)

(assert (=> b!4351547 (=> (not res!1787838) (not e!2707932))))

(assert (=> b!4351547 (= res!1787838 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) lambda!139551))))

(assert (=> d!1285427 e!2707932))

(declare-fun res!1787839 () Bool)

(assert (=> d!1285427 (=> (not res!1787839) (not e!2707932))))

(assert (=> d!1285427 (= res!1787839 (forall!9083 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707)))) lambda!139551))))

(declare-fun e!2707934 () ListMap!2169)

(assert (=> d!1285427 (= lt!1565075 e!2707934)))

(assert (=> d!1285427 (= c!739751 ((_ is Nil!48879) (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707))))))))

(assert (=> d!1285427 (noDuplicateKeys!471 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707)))))))

(assert (=> d!1285427 (= (addToMapMapFromBucket!169 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707)))) (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) lt!1565075)))

(assert (=> b!4351548 (= e!2707934 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707)))))))

(declare-fun lt!1565066 () Unit!71045)

(assert (=> b!4351548 (= lt!1565066 call!302435)))

(declare-fun call!302437 () Bool)

(assert (=> b!4351548 call!302437))

(declare-fun lt!1565070 () Unit!71045)

(assert (=> b!4351548 (= lt!1565070 lt!1565066)))

(assert (=> b!4351548 call!302436))

(declare-fun lt!1565065 () Unit!71045)

(declare-fun Unit!71109 () Unit!71045)

(assert (=> b!4351548 (= lt!1565065 Unit!71109)))

(assert (=> b!4351549 (= e!2707934 lt!1565077)))

(assert (=> b!4351549 (= lt!1565078 (+!600 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707)))) (h!54414 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707)))))))))

(assert (=> b!4351549 (= lt!1565077 (addToMapMapFromBucket!169 (t!355923 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707))))) (+!600 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707)))) (h!54414 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707))))))))))

(declare-fun lt!1565080 () Unit!71045)

(assert (=> b!4351549 (= lt!1565080 call!302435)))

(assert (=> b!4351549 call!302437))

(declare-fun lt!1565081 () Unit!71045)

(assert (=> b!4351549 (= lt!1565081 lt!1565080)))

(assert (=> b!4351549 call!302436))

(declare-fun lt!1565063 () Unit!71045)

(declare-fun Unit!71110 () Unit!71045)

(assert (=> b!4351549 (= lt!1565063 Unit!71110)))

(assert (=> b!4351549 (forall!9083 (t!355923 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707))))) lambda!139550)))

(declare-fun lt!1565069 () Unit!71045)

(declare-fun Unit!71111 () Unit!71045)

(assert (=> b!4351549 (= lt!1565069 Unit!71111)))

(declare-fun lt!1565072 () Unit!71045)

(declare-fun Unit!71112 () Unit!71045)

(assert (=> b!4351549 (= lt!1565072 Unit!71112)))

(declare-fun lt!1565068 () Unit!71045)

(assert (=> b!4351549 (= lt!1565068 (forallContained!1733 (toList!2926 lt!1565078) lambda!139550 (h!54414 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707)))))))))

(assert (=> b!4351549 (contains!11051 lt!1565078 (_1!27421 (h!54414 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707)))))))))

(declare-fun lt!1565076 () Unit!71045)

(declare-fun Unit!71113 () Unit!71045)

(assert (=> b!4351549 (= lt!1565076 Unit!71113)))

(assert (=> b!4351549 (contains!11051 lt!1565077 (_1!27421 (h!54414 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707)))))))))

(declare-fun lt!1565073 () Unit!71045)

(declare-fun Unit!71114 () Unit!71045)

(assert (=> b!4351549 (= lt!1565073 Unit!71114)))

(assert (=> b!4351549 (forall!9083 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707)))) lambda!139550)))

(declare-fun lt!1565074 () Unit!71045)

(declare-fun Unit!71115 () Unit!71045)

(assert (=> b!4351549 (= lt!1565074 Unit!71115)))

(assert (=> b!4351549 (forall!9083 (toList!2926 lt!1565078) lambda!139550)))

(declare-fun lt!1565067 () Unit!71045)

(declare-fun Unit!71116 () Unit!71045)

(assert (=> b!4351549 (= lt!1565067 Unit!71116)))

(declare-fun lt!1565082 () Unit!71045)

(declare-fun Unit!71117 () Unit!71045)

(assert (=> b!4351549 (= lt!1565082 Unit!71117)))

(declare-fun lt!1565064 () Unit!71045)

(assert (=> b!4351549 (= lt!1565064 (addForallContainsKeyThenBeforeAdding!53 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707)))) lt!1565077 (_1!27421 (h!54414 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707)))))) (_2!27421 (h!54414 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707))))))))))

(assert (=> b!4351549 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) lambda!139550)))

(declare-fun lt!1565083 () Unit!71045)

(assert (=> b!4351549 (= lt!1565083 lt!1565064)))

(assert (=> b!4351549 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) lambda!139550)))

(declare-fun lt!1565071 () Unit!71045)

(declare-fun Unit!71118 () Unit!71045)

(assert (=> b!4351549 (= lt!1565071 Unit!71118)))

(declare-fun res!1787840 () Bool)

(assert (=> b!4351549 (= res!1787840 (forall!9083 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707)))) lambda!139550))))

(assert (=> b!4351549 (=> (not res!1787840) (not e!2707933))))

(assert (=> b!4351549 e!2707933))

(declare-fun lt!1565079 () Unit!71045)

(declare-fun Unit!71119 () Unit!71045)

(assert (=> b!4351549 (= lt!1565079 Unit!71119)))

(declare-fun b!4351550 () Bool)

(assert (=> b!4351550 (= e!2707932 (invariantList!662 (toList!2926 lt!1565075)))))

(declare-fun bm!302432 () Bool)

(assert (=> bm!302432 (= call!302437 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (ite c!739751 lambda!139547 lambda!139549)))))

(assert (= (and d!1285427 c!739751) b!4351548))

(assert (= (and d!1285427 (not c!739751)) b!4351549))

(assert (= (and b!4351549 res!1787840) b!4351546))

(assert (= (or b!4351548 b!4351549) bm!302431))

(assert (= (or b!4351548 b!4351549) bm!302432))

(assert (= (or b!4351548 b!4351549) bm!302430))

(assert (= (and d!1285427 res!1787839) b!4351547))

(assert (= (and b!4351547 res!1787838) b!4351550))

(assert (=> bm!302431 m!4961365))

(declare-fun m!4962223 () Bool)

(assert (=> bm!302431 m!4962223))

(declare-fun m!4962227 () Bool)

(assert (=> bm!302432 m!4962227))

(declare-fun m!4962231 () Bool)

(assert (=> b!4351547 m!4962231))

(declare-fun m!4962233 () Bool)

(assert (=> bm!302430 m!4962233))

(assert (=> b!4351549 m!4961365))

(declare-fun m!4962235 () Bool)

(assert (=> b!4351549 m!4962235))

(declare-fun m!4962237 () Bool)

(assert (=> b!4351549 m!4962237))

(declare-fun m!4962239 () Bool)

(assert (=> b!4351549 m!4962239))

(declare-fun m!4962241 () Bool)

(assert (=> b!4351549 m!4962241))

(declare-fun m!4962243 () Bool)

(assert (=> b!4351549 m!4962243))

(assert (=> b!4351549 m!4962235))

(declare-fun m!4962245 () Bool)

(assert (=> b!4351549 m!4962245))

(assert (=> b!4351549 m!4962241))

(declare-fun m!4962247 () Bool)

(assert (=> b!4351549 m!4962247))

(declare-fun m!4962249 () Bool)

(assert (=> b!4351549 m!4962249))

(assert (=> b!4351549 m!4961365))

(declare-fun m!4962251 () Bool)

(assert (=> b!4351549 m!4962251))

(declare-fun m!4962253 () Bool)

(assert (=> b!4351549 m!4962253))

(assert (=> b!4351549 m!4962247))

(declare-fun m!4962257 () Bool)

(assert (=> b!4351550 m!4962257))

(assert (=> b!4351546 m!4962241))

(declare-fun m!4962261 () Bool)

(assert (=> d!1285427 m!4962261))

(declare-fun m!4962265 () Bool)

(assert (=> d!1285427 m!4962265))

(assert (=> b!4351011 d!1285427))

(declare-fun bs!629262 () Bool)

(declare-fun d!1285443 () Bool)

(assert (= bs!629262 (and d!1285443 d!1285143)))

(declare-fun lambda!139552 () Int)

(assert (=> bs!629262 (= lambda!139552 lambda!139409)))

(declare-fun bs!629263 () Bool)

(assert (= bs!629263 (and d!1285443 d!1285135)))

(assert (=> bs!629263 (= lambda!139552 lambda!139406)))

(declare-fun bs!629265 () Bool)

(assert (= bs!629265 (and d!1285443 d!1285173)))

(assert (=> bs!629265 (= lambda!139552 lambda!139419)))

(declare-fun bs!629267 () Bool)

(assert (= bs!629267 (and d!1285443 start!420404)))

(assert (=> bs!629267 (= lambda!139552 lambda!139387)))

(declare-fun bs!629269 () Bool)

(assert (= bs!629269 (and d!1285443 d!1285189)))

(assert (=> bs!629269 (= lambda!139552 lambda!139423)))

(declare-fun bs!629271 () Bool)

(assert (= bs!629271 (and d!1285443 d!1285375)))

(assert (=> bs!629271 (= lambda!139552 lambda!139530)))

(declare-fun bs!629273 () Bool)

(assert (= bs!629273 (and d!1285443 d!1285147)))

(assert (=> bs!629273 (= lambda!139552 lambda!139411)))

(declare-fun bs!629275 () Bool)

(assert (= bs!629275 (and d!1285443 d!1285269)))

(assert (=> bs!629275 (= lambda!139552 lambda!139446)))

(declare-fun bs!629277 () Bool)

(assert (= bs!629277 (and d!1285443 d!1285153)))

(assert (=> bs!629277 (= lambda!139552 lambda!139416)))

(declare-fun bs!629279 () Bool)

(assert (= bs!629279 (and d!1285443 d!1285179)))

(assert (=> bs!629279 (not (= lambda!139552 lambda!139422))))

(declare-fun lt!1565088 () ListMap!2169)

(assert (=> d!1285443 (invariantList!662 (toList!2926 lt!1565088))))

(declare-fun e!2707942 () ListMap!2169)

(assert (=> d!1285443 (= lt!1565088 e!2707942)))

(declare-fun c!739752 () Bool)

(assert (=> d!1285443 (= c!739752 ((_ is Cons!48880) (t!355924 (t!355924 (toList!2925 lm!1707)))))))

(assert (=> d!1285443 (forall!9081 (t!355924 (t!355924 (toList!2925 lm!1707))) lambda!139552)))

(assert (=> d!1285443 (= (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707)))) lt!1565088)))

(declare-fun b!4351559 () Bool)

(assert (=> b!4351559 (= e!2707942 (addToMapMapFromBucket!169 (_2!27422 (h!54415 (t!355924 (t!355924 (toList!2925 lm!1707))))) (extractMap!530 (t!355924 (t!355924 (t!355924 (toList!2925 lm!1707)))))))))

(declare-fun b!4351560 () Bool)

(assert (=> b!4351560 (= e!2707942 (ListMap!2170 Nil!48879))))

(assert (= (and d!1285443 c!739752) b!4351559))

(assert (= (and d!1285443 (not c!739752)) b!4351560))

(declare-fun m!4962273 () Bool)

(assert (=> d!1285443 m!4962273))

(declare-fun m!4962275 () Bool)

(assert (=> d!1285443 m!4962275))

(declare-fun m!4962277 () Bool)

(assert (=> b!4351559 m!4962277))

(assert (=> b!4351559 m!4962277))

(declare-fun m!4962279 () Bool)

(assert (=> b!4351559 m!4962279))

(assert (=> b!4351011 d!1285443))

(declare-fun d!1285447 () Bool)

(assert (=> d!1285447 (= (isDefined!7732 (getValueByKey!423 (toList!2926 lt!1564525) key!3918)) (not (isEmpty!28183 (getValueByKey!423 (toList!2926 lt!1564525) key!3918))))))

(declare-fun bs!629282 () Bool)

(assert (= bs!629282 d!1285447))

(assert (=> bs!629282 m!4961233))

(declare-fun m!4962289 () Bool)

(assert (=> bs!629282 m!4962289))

(assert (=> b!4350970 d!1285447))

(declare-fun b!4351566 () Bool)

(declare-fun e!2707945 () Option!10437)

(assert (=> b!4351566 (= e!2707945 None!10436)))

(declare-fun b!4351563 () Bool)

(declare-fun e!2707944 () Option!10437)

(assert (=> b!4351563 (= e!2707944 (Some!10436 (_2!27421 (h!54414 (toList!2926 lt!1564525)))))))

(declare-fun b!4351564 () Bool)

(assert (=> b!4351564 (= e!2707944 e!2707945)))

(declare-fun c!739755 () Bool)

(assert (=> b!4351564 (= c!739755 (and ((_ is Cons!48879) (toList!2926 lt!1564525)) (not (= (_1!27421 (h!54414 (toList!2926 lt!1564525))) key!3918))))))

(declare-fun b!4351565 () Bool)

(assert (=> b!4351565 (= e!2707945 (getValueByKey!423 (t!355923 (toList!2926 lt!1564525)) key!3918))))

(declare-fun d!1285449 () Bool)

(declare-fun c!739754 () Bool)

(assert (=> d!1285449 (= c!739754 (and ((_ is Cons!48879) (toList!2926 lt!1564525)) (= (_1!27421 (h!54414 (toList!2926 lt!1564525))) key!3918)))))

(assert (=> d!1285449 (= (getValueByKey!423 (toList!2926 lt!1564525) key!3918) e!2707944)))

(assert (= (and d!1285449 c!739754) b!4351563))

(assert (= (and d!1285449 (not c!739754)) b!4351564))

(assert (= (and b!4351564 c!739755) b!4351565))

(assert (= (and b!4351564 (not c!739755)) b!4351566))

(declare-fun m!4962291 () Bool)

(assert (=> b!4351565 m!4962291))

(assert (=> b!4350970 d!1285449))

(declare-fun d!1285453 () Bool)

(declare-fun res!1787851 () Bool)

(declare-fun e!2707948 () Bool)

(assert (=> d!1285453 (=> res!1787851 e!2707948)))

(assert (=> d!1285453 (= res!1787851 (and ((_ is Cons!48879) (toList!2926 lt!1564525)) (= (_1!27421 (h!54414 (toList!2926 lt!1564525))) key!3918)))))

(assert (=> d!1285453 (= (containsKey!645 (toList!2926 lt!1564525) key!3918) e!2707948)))

(declare-fun b!4351569 () Bool)

(declare-fun e!2707949 () Bool)

(assert (=> b!4351569 (= e!2707948 e!2707949)))

(declare-fun res!1787852 () Bool)

(assert (=> b!4351569 (=> (not res!1787852) (not e!2707949))))

(assert (=> b!4351569 (= res!1787852 ((_ is Cons!48879) (toList!2926 lt!1564525)))))

(declare-fun b!4351570 () Bool)

(assert (=> b!4351570 (= e!2707949 (containsKey!645 (t!355923 (toList!2926 lt!1564525)) key!3918))))

(assert (= (and d!1285453 (not res!1787851)) b!4351569))

(assert (= (and b!4351569 res!1787852) b!4351570))

(declare-fun m!4962297 () Bool)

(assert (=> b!4351570 m!4962297))

(assert (=> b!4350968 d!1285453))

(declare-fun d!1285457 () Bool)

(assert (=> d!1285457 (containsKey!645 (toList!2926 lt!1564525) key!3918)))

(declare-fun lt!1565096 () Unit!71045)

(declare-fun choose!26780 (List!49003 K!10245) Unit!71045)

(assert (=> d!1285457 (= lt!1565096 (choose!26780 (toList!2926 lt!1564525) key!3918))))

(assert (=> d!1285457 (invariantList!662 (toList!2926 lt!1564525))))

(assert (=> d!1285457 (= (lemmaInGetKeysListThenContainsKey!108 (toList!2926 lt!1564525) key!3918) lt!1565096)))

(declare-fun bs!629284 () Bool)

(assert (= bs!629284 d!1285457))

(assert (=> bs!629284 m!4961223))

(declare-fun m!4962315 () Bool)

(assert (=> bs!629284 m!4962315))

(assert (=> bs!629284 m!4961615))

(assert (=> b!4350968 d!1285457))

(declare-fun d!1285463 () Bool)

(declare-fun lt!1565097 () Bool)

(assert (=> d!1285463 (= lt!1565097 (select (content!7686 (keys!16494 lt!1564520)) key!3918))))

(declare-fun e!2707951 () Bool)

(assert (=> d!1285463 (= lt!1565097 e!2707951)))

(declare-fun res!1787856 () Bool)

(assert (=> d!1285463 (=> (not res!1787856) (not e!2707951))))

(assert (=> d!1285463 (= res!1787856 ((_ is Cons!48882) (keys!16494 lt!1564520)))))

(assert (=> d!1285463 (= (contains!11054 (keys!16494 lt!1564520) key!3918) lt!1565097)))

(declare-fun b!4351573 () Bool)

(declare-fun e!2707952 () Bool)

(assert (=> b!4351573 (= e!2707951 e!2707952)))

(declare-fun res!1787855 () Bool)

(assert (=> b!4351573 (=> res!1787855 e!2707952)))

(assert (=> b!4351573 (= res!1787855 (= (h!54419 (keys!16494 lt!1564520)) key!3918))))

(declare-fun b!4351574 () Bool)

(assert (=> b!4351574 (= e!2707952 (contains!11054 (t!355926 (keys!16494 lt!1564520)) key!3918))))

(assert (= (and d!1285463 res!1787856) b!4351573))

(assert (= (and b!4351573 (not res!1787855)) b!4351574))

(assert (=> d!1285463 m!4961289))

(declare-fun m!4962317 () Bool)

(assert (=> d!1285463 m!4962317))

(declare-fun m!4962319 () Bool)

(assert (=> d!1285463 m!4962319))

(declare-fun m!4962321 () Bool)

(assert (=> b!4351574 m!4962321))

(assert (=> b!4350988 d!1285463))

(assert (=> b!4350988 d!1285383))

(assert (=> b!4350903 d!1285099))

(declare-fun d!1285465 () Bool)

(declare-fun res!1787857 () Bool)

(declare-fun e!2707953 () Bool)

(assert (=> d!1285465 (=> res!1787857 e!2707953)))

(assert (=> d!1285465 (= res!1787857 (and ((_ is Cons!48879) lt!1564596) (= (_1!27421 (h!54414 lt!1564596)) key!3918)))))

(assert (=> d!1285465 (= (containsKey!642 lt!1564596 key!3918) e!2707953)))

(declare-fun b!4351575 () Bool)

(declare-fun e!2707954 () Bool)

(assert (=> b!4351575 (= e!2707953 e!2707954)))

(declare-fun res!1787858 () Bool)

(assert (=> b!4351575 (=> (not res!1787858) (not e!2707954))))

(assert (=> b!4351575 (= res!1787858 ((_ is Cons!48879) lt!1564596))))

(declare-fun b!4351576 () Bool)

(assert (=> b!4351576 (= e!2707954 (containsKey!642 (t!355923 lt!1564596) key!3918))))

(assert (= (and d!1285465 (not res!1787857)) b!4351575))

(assert (= (and b!4351575 res!1787858) b!4351576))

(declare-fun m!4962323 () Bool)

(assert (=> b!4351576 m!4962323))

(assert (=> d!1285091 d!1285465))

(declare-fun d!1285467 () Bool)

(declare-fun res!1787859 () Bool)

(declare-fun e!2707955 () Bool)

(assert (=> d!1285467 (=> res!1787859 e!2707955)))

(assert (=> d!1285467 (= res!1787859 (not ((_ is Cons!48879) lt!1564517)))))

(assert (=> d!1285467 (= (noDuplicateKeys!471 lt!1564517) e!2707955)))

(declare-fun b!4351577 () Bool)

(declare-fun e!2707956 () Bool)

(assert (=> b!4351577 (= e!2707955 e!2707956)))

(declare-fun res!1787860 () Bool)

(assert (=> b!4351577 (=> (not res!1787860) (not e!2707956))))

(assert (=> b!4351577 (= res!1787860 (not (containsKey!642 (t!355923 lt!1564517) (_1!27421 (h!54414 lt!1564517)))))))

(declare-fun b!4351578 () Bool)

(assert (=> b!4351578 (= e!2707956 (noDuplicateKeys!471 (t!355923 lt!1564517)))))

(assert (= (and d!1285467 (not res!1787859)) b!4351577))

(assert (= (and b!4351577 res!1787860) b!4351578))

(declare-fun m!4962325 () Bool)

(assert (=> b!4351577 m!4962325))

(declare-fun m!4962327 () Bool)

(assert (=> b!4351578 m!4962327))

(assert (=> d!1285091 d!1285467))

(declare-fun d!1285469 () Bool)

(declare-fun res!1787861 () Bool)

(declare-fun e!2707957 () Bool)

(assert (=> d!1285469 (=> res!1787861 e!2707957)))

(assert (=> d!1285469 (= res!1787861 (and ((_ is Cons!48879) (t!355923 (apply!11323 lm!1707 (_1!27422 (h!54415 (toList!2925 lm!1707)))))) (= (_1!27421 (h!54414 (t!355923 (apply!11323 lm!1707 (_1!27422 (h!54415 (toList!2925 lm!1707))))))) key!3918)))))

(assert (=> d!1285469 (= (containsKey!642 (t!355923 (apply!11323 lm!1707 (_1!27422 (h!54415 (toList!2925 lm!1707))))) key!3918) e!2707957)))

(declare-fun b!4351579 () Bool)

(declare-fun e!2707958 () Bool)

(assert (=> b!4351579 (= e!2707957 e!2707958)))

(declare-fun res!1787862 () Bool)

(assert (=> b!4351579 (=> (not res!1787862) (not e!2707958))))

(assert (=> b!4351579 (= res!1787862 ((_ is Cons!48879) (t!355923 (apply!11323 lm!1707 (_1!27422 (h!54415 (toList!2925 lm!1707)))))))))

(declare-fun b!4351580 () Bool)

(assert (=> b!4351580 (= e!2707958 (containsKey!642 (t!355923 (t!355923 (apply!11323 lm!1707 (_1!27422 (h!54415 (toList!2925 lm!1707)))))) key!3918))))

(assert (= (and d!1285469 (not res!1787861)) b!4351579))

(assert (= (and b!4351579 res!1787862) b!4351580))

(declare-fun m!4962329 () Bool)

(assert (=> b!4351580 m!4962329))

(assert (=> b!4351010 d!1285469))

(declare-fun d!1285471 () Bool)

(declare-fun res!1787863 () Bool)

(declare-fun e!2707959 () Bool)

(assert (=> d!1285471 (=> res!1787863 e!2707959)))

(assert (=> d!1285471 (= res!1787863 (not ((_ is Cons!48879) (_2!27422 (h!54415 (toList!2925 lt!1564521))))))))

(assert (=> d!1285471 (= (noDuplicateKeys!471 (_2!27422 (h!54415 (toList!2925 lt!1564521)))) e!2707959)))

(declare-fun b!4351581 () Bool)

(declare-fun e!2707960 () Bool)

(assert (=> b!4351581 (= e!2707959 e!2707960)))

(declare-fun res!1787864 () Bool)

(assert (=> b!4351581 (=> (not res!1787864) (not e!2707960))))

(assert (=> b!4351581 (= res!1787864 (not (containsKey!642 (t!355923 (_2!27422 (h!54415 (toList!2925 lt!1564521)))) (_1!27421 (h!54414 (_2!27422 (h!54415 (toList!2925 lt!1564521))))))))))

(declare-fun b!4351582 () Bool)

(assert (=> b!4351582 (= e!2707960 (noDuplicateKeys!471 (t!355923 (_2!27422 (h!54415 (toList!2925 lt!1564521))))))))

(assert (= (and d!1285471 (not res!1787863)) b!4351581))

(assert (= (and b!4351581 res!1787864) b!4351582))

(declare-fun m!4962331 () Bool)

(assert (=> b!4351581 m!4962331))

(declare-fun m!4962333 () Bool)

(assert (=> b!4351582 m!4962333))

(assert (=> bs!629062 d!1285471))

(declare-fun d!1285473 () Bool)

(declare-fun res!1787865 () Bool)

(declare-fun e!2707961 () Bool)

(assert (=> d!1285473 (=> res!1787865 e!2707961)))

(assert (=> d!1285473 (= res!1787865 (and ((_ is Cons!48879) (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (= (_1!27421 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) key!3918)))))

(assert (=> d!1285473 (= (containsKey!645 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918) e!2707961)))

(declare-fun b!4351583 () Bool)

(declare-fun e!2707962 () Bool)

(assert (=> b!4351583 (= e!2707961 e!2707962)))

(declare-fun res!1787866 () Bool)

(assert (=> b!4351583 (=> (not res!1787866) (not e!2707962))))

(assert (=> b!4351583 (= res!1787866 ((_ is Cons!48879) (toList!2926 (extractMap!530 (toList!2925 lm!1707)))))))

(declare-fun b!4351584 () Bool)

(assert (=> b!4351584 (= e!2707962 (containsKey!645 (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) key!3918))))

(assert (= (and d!1285473 (not res!1787865)) b!4351583))

(assert (= (and b!4351583 res!1787866) b!4351584))

(declare-fun m!4962335 () Bool)

(assert (=> b!4351584 m!4962335))

(assert (=> d!1285187 d!1285473))

(declare-fun b!4351588 () Bool)

(declare-fun e!2707964 () Option!10435)

(assert (=> b!4351588 (= e!2707964 None!10434)))

(declare-fun b!4351585 () Bool)

(declare-fun e!2707963 () Option!10435)

(assert (=> b!4351585 (= e!2707963 (Some!10434 (_2!27422 (h!54415 (toList!2925 lt!1564552)))))))

(declare-fun b!4351586 () Bool)

(assert (=> b!4351586 (= e!2707963 e!2707964)))

(declare-fun c!739757 () Bool)

(assert (=> b!4351586 (= c!739757 (and ((_ is Cons!48880) (toList!2925 lt!1564552)) (not (= (_1!27422 (h!54415 (toList!2925 lt!1564552))) (_1!27422 lt!1564522)))))))

(declare-fun b!4351587 () Bool)

(assert (=> b!4351587 (= e!2707964 (getValueByKey!421 (t!355924 (toList!2925 lt!1564552)) (_1!27422 lt!1564522)))))

(declare-fun d!1285475 () Bool)

(declare-fun c!739756 () Bool)

(assert (=> d!1285475 (= c!739756 (and ((_ is Cons!48880) (toList!2925 lt!1564552)) (= (_1!27422 (h!54415 (toList!2925 lt!1564552))) (_1!27422 lt!1564522))))))

(assert (=> d!1285475 (= (getValueByKey!421 (toList!2925 lt!1564552) (_1!27422 lt!1564522)) e!2707963)))

(assert (= (and d!1285475 c!739756) b!4351585))

(assert (= (and d!1285475 (not c!739756)) b!4351586))

(assert (= (and b!4351586 c!739757) b!4351587))

(assert (= (and b!4351586 (not c!739757)) b!4351588))

(declare-fun m!4962337 () Bool)

(assert (=> b!4351587 m!4962337))

(assert (=> b!4350845 d!1285475))

(assert (=> b!4351058 d!1285473))

(declare-fun d!1285477 () Bool)

(assert (=> d!1285477 (containsKey!645 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918)))

(declare-fun lt!1565098 () Unit!71045)

(assert (=> d!1285477 (= lt!1565098 (choose!26780 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918))))

(assert (=> d!1285477 (invariantList!662 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))))

(assert (=> d!1285477 (= (lemmaInGetKeysListThenContainsKey!108 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918) lt!1565098)))

(declare-fun bs!629285 () Bool)

(assert (= bs!629285 d!1285477))

(assert (=> bs!629285 m!4961491))

(declare-fun m!4962339 () Bool)

(assert (=> bs!629285 m!4962339))

(assert (=> bs!629285 m!4961689))

(assert (=> b!4351058 d!1285477))

(declare-fun d!1285479 () Bool)

(declare-fun res!1787867 () Bool)

(declare-fun e!2707965 () Bool)

(assert (=> d!1285479 (=> res!1787867 e!2707965)))

(assert (=> d!1285479 (= res!1787867 ((_ is Nil!48880) (t!355924 (toList!2925 lt!1564521))))))

(assert (=> d!1285479 (= (forall!9081 (t!355924 (toList!2925 lt!1564521)) lambda!139387) e!2707965)))

(declare-fun b!4351589 () Bool)

(declare-fun e!2707966 () Bool)

(assert (=> b!4351589 (= e!2707965 e!2707966)))

(declare-fun res!1787868 () Bool)

(assert (=> b!4351589 (=> (not res!1787868) (not e!2707966))))

(assert (=> b!4351589 (= res!1787868 (dynLambda!20612 lambda!139387 (h!54415 (t!355924 (toList!2925 lt!1564521)))))))

(declare-fun b!4351590 () Bool)

(assert (=> b!4351590 (= e!2707966 (forall!9081 (t!355924 (t!355924 (toList!2925 lt!1564521))) lambda!139387))))

(assert (= (and d!1285479 (not res!1787867)) b!4351589))

(assert (= (and b!4351589 res!1787868) b!4351590))

(declare-fun b_lambda!130597 () Bool)

(assert (=> (not b_lambda!130597) (not b!4351589)))

(declare-fun m!4962341 () Bool)

(assert (=> b!4351589 m!4962341))

(declare-fun m!4962343 () Bool)

(assert (=> b!4351590 m!4962343))

(assert (=> b!4350828 d!1285479))

(declare-fun d!1285481 () Bool)

(assert (=> d!1285481 (isDefined!7732 (getValueByKey!423 (toList!2926 lt!1564520) key!3918))))

(declare-fun lt!1565101 () Unit!71045)

(declare-fun choose!26782 (List!49003 K!10245) Unit!71045)

(assert (=> d!1285481 (= lt!1565101 (choose!26782 (toList!2926 lt!1564520) key!3918))))

(assert (=> d!1285481 (invariantList!662 (toList!2926 lt!1564520))))

(assert (=> d!1285481 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!335 (toList!2926 lt!1564520) key!3918) lt!1565101)))

(declare-fun bs!629286 () Bool)

(assert (= bs!629286 d!1285481))

(assert (=> bs!629286 m!4961295))

(assert (=> bs!629286 m!4961295))

(assert (=> bs!629286 m!4961297))

(declare-fun m!4962345 () Bool)

(assert (=> bs!629286 m!4962345))

(declare-fun m!4962347 () Bool)

(assert (=> bs!629286 m!4962347))

(assert (=> b!4350990 d!1285481))

(declare-fun d!1285483 () Bool)

(assert (=> d!1285483 (= (isDefined!7732 (getValueByKey!423 (toList!2926 lt!1564520) key!3918)) (not (isEmpty!28183 (getValueByKey!423 (toList!2926 lt!1564520) key!3918))))))

(declare-fun bs!629287 () Bool)

(assert (= bs!629287 d!1285483))

(assert (=> bs!629287 m!4961295))

(declare-fun m!4962349 () Bool)

(assert (=> bs!629287 m!4962349))

(assert (=> b!4350990 d!1285483))

(declare-fun b!4351594 () Bool)

(declare-fun e!2707968 () Option!10437)

(assert (=> b!4351594 (= e!2707968 None!10436)))

(declare-fun b!4351591 () Bool)

(declare-fun e!2707967 () Option!10437)

(assert (=> b!4351591 (= e!2707967 (Some!10436 (_2!27421 (h!54414 (toList!2926 lt!1564520)))))))

(declare-fun b!4351592 () Bool)

(assert (=> b!4351592 (= e!2707967 e!2707968)))

(declare-fun c!739759 () Bool)

(assert (=> b!4351592 (= c!739759 (and ((_ is Cons!48879) (toList!2926 lt!1564520)) (not (= (_1!27421 (h!54414 (toList!2926 lt!1564520))) key!3918))))))

(declare-fun b!4351593 () Bool)

(assert (=> b!4351593 (= e!2707968 (getValueByKey!423 (t!355923 (toList!2926 lt!1564520)) key!3918))))

(declare-fun d!1285485 () Bool)

(declare-fun c!739758 () Bool)

(assert (=> d!1285485 (= c!739758 (and ((_ is Cons!48879) (toList!2926 lt!1564520)) (= (_1!27421 (h!54414 (toList!2926 lt!1564520))) key!3918)))))

(assert (=> d!1285485 (= (getValueByKey!423 (toList!2926 lt!1564520) key!3918) e!2707967)))

(assert (= (and d!1285485 c!739758) b!4351591))

(assert (= (and d!1285485 (not c!739758)) b!4351592))

(assert (= (and b!4351592 c!739759) b!4351593))

(assert (= (and b!4351592 (not c!739759)) b!4351594))

(declare-fun m!4962351 () Bool)

(assert (=> b!4351593 m!4962351))

(assert (=> b!4350990 d!1285485))

(declare-fun d!1285487 () Bool)

(assert (=> d!1285487 (contains!11054 (getKeysList!110 (toList!2926 lt!1564520)) key!3918)))

(declare-fun lt!1565104 () Unit!71045)

(declare-fun choose!26783 (List!49003 K!10245) Unit!71045)

(assert (=> d!1285487 (= lt!1565104 (choose!26783 (toList!2926 lt!1564520) key!3918))))

(assert (=> d!1285487 (invariantList!662 (toList!2926 lt!1564520))))

(assert (=> d!1285487 (= (lemmaInListThenGetKeysListContains!107 (toList!2926 lt!1564520) key!3918) lt!1565104)))

(declare-fun bs!629288 () Bool)

(assert (= bs!629288 d!1285487))

(assert (=> bs!629288 m!4961293))

(assert (=> bs!629288 m!4961293))

(declare-fun m!4962353 () Bool)

(assert (=> bs!629288 m!4962353))

(declare-fun m!4962355 () Bool)

(assert (=> bs!629288 m!4962355))

(assert (=> bs!629288 m!4962347))

(assert (=> b!4350990 d!1285487))

(assert (=> bs!629057 d!1285419))

(declare-fun d!1285489 () Bool)

(assert (=> d!1285489 (= (invariantList!662 (toList!2926 lt!1564690)) (noDuplicatedKeys!113 (toList!2926 lt!1564690)))))

(declare-fun bs!629289 () Bool)

(assert (= bs!629289 d!1285489))

(declare-fun m!4962357 () Bool)

(assert (=> bs!629289 m!4962357))

(assert (=> d!1285135 d!1285489))

(declare-fun d!1285491 () Bool)

(declare-fun res!1787869 () Bool)

(declare-fun e!2707969 () Bool)

(assert (=> d!1285491 (=> res!1787869 e!2707969)))

(assert (=> d!1285491 (= res!1787869 ((_ is Nil!48880) (toList!2925 lt!1564518)))))

(assert (=> d!1285491 (= (forall!9081 (toList!2925 lt!1564518) lambda!139406) e!2707969)))

(declare-fun b!4351595 () Bool)

(declare-fun e!2707970 () Bool)

(assert (=> b!4351595 (= e!2707969 e!2707970)))

(declare-fun res!1787870 () Bool)

(assert (=> b!4351595 (=> (not res!1787870) (not e!2707970))))

(assert (=> b!4351595 (= res!1787870 (dynLambda!20612 lambda!139406 (h!54415 (toList!2925 lt!1564518))))))

(declare-fun b!4351596 () Bool)

(assert (=> b!4351596 (= e!2707970 (forall!9081 (t!355924 (toList!2925 lt!1564518)) lambda!139406))))

(assert (= (and d!1285491 (not res!1787869)) b!4351595))

(assert (= (and b!4351595 res!1787870) b!4351596))

(declare-fun b_lambda!130599 () Bool)

(assert (=> (not b_lambda!130599) (not b!4351595)))

(declare-fun m!4962359 () Bool)

(assert (=> b!4351595 m!4962359))

(declare-fun m!4962361 () Bool)

(assert (=> b!4351596 m!4962361))

(assert (=> d!1285135 d!1285491))

(declare-fun d!1285493 () Bool)

(declare-fun res!1787871 () Bool)

(declare-fun e!2707971 () Bool)

(assert (=> d!1285493 (=> res!1787871 e!2707971)))

(assert (=> d!1285493 (= res!1787871 ((_ is Nil!48880) (toList!2925 (+!599 lm!1707 (tuple2!48257 hash!377 newBucket!200)))))))

(assert (=> d!1285493 (= (forall!9081 (toList!2925 (+!599 lm!1707 (tuple2!48257 hash!377 newBucket!200))) lambda!139387) e!2707971)))

(declare-fun b!4351597 () Bool)

(declare-fun e!2707972 () Bool)

(assert (=> b!4351597 (= e!2707971 e!2707972)))

(declare-fun res!1787872 () Bool)

(assert (=> b!4351597 (=> (not res!1787872) (not e!2707972))))

(assert (=> b!4351597 (= res!1787872 (dynLambda!20612 lambda!139387 (h!54415 (toList!2925 (+!599 lm!1707 (tuple2!48257 hash!377 newBucket!200))))))))

(declare-fun b!4351598 () Bool)

(assert (=> b!4351598 (= e!2707972 (forall!9081 (t!355924 (toList!2925 (+!599 lm!1707 (tuple2!48257 hash!377 newBucket!200)))) lambda!139387))))

(assert (= (and d!1285493 (not res!1787871)) b!4351597))

(assert (= (and b!4351597 res!1787872) b!4351598))

(declare-fun b_lambda!130601 () Bool)

(assert (=> (not b_lambda!130601) (not b!4351597)))

(declare-fun m!4962363 () Bool)

(assert (=> b!4351597 m!4962363))

(declare-fun m!4962365 () Bool)

(assert (=> b!4351598 m!4962365))

(assert (=> d!1285081 d!1285493))

(declare-fun d!1285495 () Bool)

(declare-fun e!2707973 () Bool)

(assert (=> d!1285495 e!2707973))

(declare-fun res!1787873 () Bool)

(assert (=> d!1285495 (=> (not res!1787873) (not e!2707973))))

(declare-fun lt!1565106 () ListLongMap!1575)

(assert (=> d!1285495 (= res!1787873 (contains!11052 lt!1565106 (_1!27422 (tuple2!48257 hash!377 newBucket!200))))))

(declare-fun lt!1565105 () List!49004)

(assert (=> d!1285495 (= lt!1565106 (ListLongMap!1576 lt!1565105))))

(declare-fun lt!1565108 () Unit!71045)

(declare-fun lt!1565107 () Unit!71045)

(assert (=> d!1285495 (= lt!1565108 lt!1565107)))

(assert (=> d!1285495 (= (getValueByKey!421 lt!1565105 (_1!27422 (tuple2!48257 hash!377 newBucket!200))) (Some!10434 (_2!27422 (tuple2!48257 hash!377 newBucket!200))))))

(assert (=> d!1285495 (= lt!1565107 (lemmaContainsTupThenGetReturnValue!195 lt!1565105 (_1!27422 (tuple2!48257 hash!377 newBucket!200)) (_2!27422 (tuple2!48257 hash!377 newBucket!200))))))

(assert (=> d!1285495 (= lt!1565105 (insertStrictlySorted!118 (toList!2925 lm!1707) (_1!27422 (tuple2!48257 hash!377 newBucket!200)) (_2!27422 (tuple2!48257 hash!377 newBucket!200))))))

(assert (=> d!1285495 (= (+!599 lm!1707 (tuple2!48257 hash!377 newBucket!200)) lt!1565106)))

(declare-fun b!4351599 () Bool)

(declare-fun res!1787874 () Bool)

(assert (=> b!4351599 (=> (not res!1787874) (not e!2707973))))

(assert (=> b!4351599 (= res!1787874 (= (getValueByKey!421 (toList!2925 lt!1565106) (_1!27422 (tuple2!48257 hash!377 newBucket!200))) (Some!10434 (_2!27422 (tuple2!48257 hash!377 newBucket!200)))))))

(declare-fun b!4351600 () Bool)

(assert (=> b!4351600 (= e!2707973 (contains!11050 (toList!2925 lt!1565106) (tuple2!48257 hash!377 newBucket!200)))))

(assert (= (and d!1285495 res!1787873) b!4351599))

(assert (= (and b!4351599 res!1787874) b!4351600))

(declare-fun m!4962367 () Bool)

(assert (=> d!1285495 m!4962367))

(declare-fun m!4962369 () Bool)

(assert (=> d!1285495 m!4962369))

(declare-fun m!4962371 () Bool)

(assert (=> d!1285495 m!4962371))

(declare-fun m!4962373 () Bool)

(assert (=> d!1285495 m!4962373))

(declare-fun m!4962375 () Bool)

(assert (=> b!4351599 m!4962375))

(declare-fun m!4962377 () Bool)

(assert (=> b!4351600 m!4962377))

(assert (=> d!1285081 d!1285495))

(declare-fun d!1285497 () Bool)

(assert (=> d!1285497 (forall!9081 (toList!2925 (+!599 lm!1707 (tuple2!48257 hash!377 newBucket!200))) lambda!139387)))

(assert (=> d!1285497 true))

(declare-fun _$31!214 () Unit!71045)

(assert (=> d!1285497 (= (choose!26763 lm!1707 lambda!139387 hash!377 newBucket!200) _$31!214)))

(declare-fun bs!629291 () Bool)

(assert (= bs!629291 d!1285497))

(assert (=> bs!629291 m!4961131))

(assert (=> bs!629291 m!4961133))

(assert (=> d!1285081 d!1285497))

(assert (=> d!1285081 d!1285083))

(declare-fun b!4351607 () Bool)

(declare-fun e!2707979 () List!49003)

(assert (=> b!4351607 (= e!2707979 (t!355923 (t!355923 lt!1564517)))))

(declare-fun b!4351608 () Bool)

(declare-fun e!2707980 () List!49003)

(assert (=> b!4351608 (= e!2707979 e!2707980)))

(declare-fun c!739761 () Bool)

(assert (=> b!4351608 (= c!739761 ((_ is Cons!48879) (t!355923 lt!1564517)))))

(declare-fun b!4351609 () Bool)

(assert (=> b!4351609 (= e!2707980 (Cons!48879 (h!54414 (t!355923 lt!1564517)) (removePairForKey!441 (t!355923 (t!355923 lt!1564517)) key!3918)))))

(declare-fun d!1285503 () Bool)

(declare-fun lt!1565113 () List!49003)

(assert (=> d!1285503 (not (containsKey!642 lt!1565113 key!3918))))

(assert (=> d!1285503 (= lt!1565113 e!2707979)))

(declare-fun c!739760 () Bool)

(assert (=> d!1285503 (= c!739760 (and ((_ is Cons!48879) (t!355923 lt!1564517)) (= (_1!27421 (h!54414 (t!355923 lt!1564517))) key!3918)))))

(assert (=> d!1285503 (noDuplicateKeys!471 (t!355923 lt!1564517))))

(assert (=> d!1285503 (= (removePairForKey!441 (t!355923 lt!1564517) key!3918) lt!1565113)))

(declare-fun b!4351610 () Bool)

(assert (=> b!4351610 (= e!2707980 Nil!48879)))

(assert (= (and d!1285503 c!739760) b!4351607))

(assert (= (and d!1285503 (not c!739760)) b!4351608))

(assert (= (and b!4351608 c!739761) b!4351609))

(assert (= (and b!4351608 (not c!739761)) b!4351610))

(declare-fun m!4962387 () Bool)

(assert (=> b!4351609 m!4962387))

(declare-fun m!4962389 () Bool)

(assert (=> d!1285503 m!4962389))

(assert (=> d!1285503 m!4962327))

(assert (=> b!4350899 d!1285503))

(declare-fun d!1285507 () Bool)

(assert (=> d!1285507 (= (invariantList!662 (toList!2926 lt!1564691)) (noDuplicatedKeys!113 (toList!2926 lt!1564691)))))

(declare-fun bs!629292 () Bool)

(assert (= bs!629292 d!1285507))

(declare-fun m!4962391 () Bool)

(assert (=> bs!629292 m!4962391))

(assert (=> d!1285143 d!1285507))

(declare-fun d!1285509 () Bool)

(declare-fun res!1787880 () Bool)

(declare-fun e!2707981 () Bool)

(assert (=> d!1285509 (=> res!1787880 e!2707981)))

(assert (=> d!1285509 (= res!1787880 ((_ is Nil!48880) (toList!2925 (+!599 lt!1564518 lt!1564522))))))

(assert (=> d!1285509 (= (forall!9081 (toList!2925 (+!599 lt!1564518 lt!1564522)) lambda!139409) e!2707981)))

(declare-fun b!4351611 () Bool)

(declare-fun e!2707982 () Bool)

(assert (=> b!4351611 (= e!2707981 e!2707982)))

(declare-fun res!1787881 () Bool)

(assert (=> b!4351611 (=> (not res!1787881) (not e!2707982))))

(assert (=> b!4351611 (= res!1787881 (dynLambda!20612 lambda!139409 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522)))))))

(declare-fun b!4351612 () Bool)

(assert (=> b!4351612 (= e!2707982 (forall!9081 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))) lambda!139409))))

(assert (= (and d!1285509 (not res!1787880)) b!4351611))

(assert (= (and b!4351611 res!1787881) b!4351612))

(declare-fun b_lambda!130603 () Bool)

(assert (=> (not b_lambda!130603) (not b!4351611)))

(declare-fun m!4962393 () Bool)

(assert (=> b!4351611 m!4962393))

(declare-fun m!4962395 () Bool)

(assert (=> b!4351612 m!4962395))

(assert (=> d!1285143 d!1285509))

(declare-fun b!4351613 () Bool)

(declare-fun e!2707985 () Bool)

(assert (=> b!4351613 (= e!2707985 (not (contains!11054 (keys!16494 lt!1564654) (_1!27421 lt!1564527))))))

(declare-fun b!4351614 () Bool)

(assert (=> b!4351614 false))

(declare-fun lt!1565117 () Unit!71045)

(declare-fun lt!1565116 () Unit!71045)

(assert (=> b!4351614 (= lt!1565117 lt!1565116)))

(assert (=> b!4351614 (containsKey!645 (toList!2926 lt!1564654) (_1!27421 lt!1564527))))

(assert (=> b!4351614 (= lt!1565116 (lemmaInGetKeysListThenContainsKey!108 (toList!2926 lt!1564654) (_1!27421 lt!1564527)))))

(declare-fun e!2707986 () Unit!71045)

(declare-fun Unit!71135 () Unit!71045)

(assert (=> b!4351614 (= e!2707986 Unit!71135)))

(declare-fun b!4351615 () Bool)

(declare-fun e!2707984 () Bool)

(assert (=> b!4351615 (= e!2707984 (contains!11054 (keys!16494 lt!1564654) (_1!27421 lt!1564527)))))

(declare-fun b!4351617 () Bool)

(declare-fun e!2707987 () Unit!71045)

(declare-fun lt!1565114 () Unit!71045)

(assert (=> b!4351617 (= e!2707987 lt!1565114)))

(declare-fun lt!1565119 () Unit!71045)

(assert (=> b!4351617 (= lt!1565119 (lemmaContainsKeyImpliesGetValueByKeyDefined!335 (toList!2926 lt!1564654) (_1!27421 lt!1564527)))))

(assert (=> b!4351617 (isDefined!7732 (getValueByKey!423 (toList!2926 lt!1564654) (_1!27421 lt!1564527)))))

(declare-fun lt!1565121 () Unit!71045)

(assert (=> b!4351617 (= lt!1565121 lt!1565119)))

(assert (=> b!4351617 (= lt!1565114 (lemmaInListThenGetKeysListContains!107 (toList!2926 lt!1564654) (_1!27421 lt!1564527)))))

(declare-fun call!302438 () Bool)

(assert (=> b!4351617 call!302438))

(declare-fun b!4351618 () Bool)

(assert (=> b!4351618 (= e!2707987 e!2707986)))

(declare-fun c!739763 () Bool)

(assert (=> b!4351618 (= c!739763 call!302438)))

(declare-fun b!4351619 () Bool)

(declare-fun e!2707988 () List!49006)

(assert (=> b!4351619 (= e!2707988 (keys!16494 lt!1564654))))

(declare-fun b!4351620 () Bool)

(declare-fun Unit!71136 () Unit!71045)

(assert (=> b!4351620 (= e!2707986 Unit!71136)))

(declare-fun bm!302433 () Bool)

(assert (=> bm!302433 (= call!302438 (contains!11054 e!2707988 (_1!27421 lt!1564527)))))

(declare-fun c!739762 () Bool)

(declare-fun c!739764 () Bool)

(assert (=> bm!302433 (= c!739762 c!739764)))

(declare-fun b!4351621 () Bool)

(assert (=> b!4351621 (= e!2707988 (getKeysList!110 (toList!2926 lt!1564654)))))

(declare-fun d!1285511 () Bool)

(declare-fun e!2707983 () Bool)

(assert (=> d!1285511 e!2707983))

(declare-fun res!1787883 () Bool)

(assert (=> d!1285511 (=> res!1787883 e!2707983)))

(assert (=> d!1285511 (= res!1787883 e!2707985)))

(declare-fun res!1787882 () Bool)

(assert (=> d!1285511 (=> (not res!1787882) (not e!2707985))))

(declare-fun lt!1565115 () Bool)

(assert (=> d!1285511 (= res!1787882 (not lt!1565115))))

(declare-fun lt!1565120 () Bool)

(assert (=> d!1285511 (= lt!1565115 lt!1565120)))

(declare-fun lt!1565118 () Unit!71045)

(assert (=> d!1285511 (= lt!1565118 e!2707987)))

(assert (=> d!1285511 (= c!739764 lt!1565120)))

(assert (=> d!1285511 (= lt!1565120 (containsKey!645 (toList!2926 lt!1564654) (_1!27421 lt!1564527)))))

(assert (=> d!1285511 (= (contains!11051 lt!1564654 (_1!27421 lt!1564527)) lt!1565115)))

(declare-fun b!4351616 () Bool)

(assert (=> b!4351616 (= e!2707983 e!2707984)))

(declare-fun res!1787884 () Bool)

(assert (=> b!4351616 (=> (not res!1787884) (not e!2707984))))

(assert (=> b!4351616 (= res!1787884 (isDefined!7732 (getValueByKey!423 (toList!2926 lt!1564654) (_1!27421 lt!1564527))))))

(assert (= (and d!1285511 c!739764) b!4351617))

(assert (= (and d!1285511 (not c!739764)) b!4351618))

(assert (= (and b!4351618 c!739763) b!4351614))

(assert (= (and b!4351618 (not c!739763)) b!4351620))

(assert (= (or b!4351617 b!4351618) bm!302433))

(assert (= (and bm!302433 c!739762) b!4351621))

(assert (= (and bm!302433 (not c!739762)) b!4351619))

(assert (= (and d!1285511 res!1787882) b!4351613))

(assert (= (and d!1285511 (not res!1787883)) b!4351616))

(assert (= (and b!4351616 res!1787884) b!4351615))

(declare-fun m!4962397 () Bool)

(assert (=> d!1285511 m!4962397))

(declare-fun m!4962399 () Bool)

(assert (=> bm!302433 m!4962399))

(declare-fun m!4962401 () Bool)

(assert (=> b!4351613 m!4962401))

(assert (=> b!4351613 m!4962401))

(declare-fun m!4962403 () Bool)

(assert (=> b!4351613 m!4962403))

(declare-fun m!4962405 () Bool)

(assert (=> b!4351621 m!4962405))

(assert (=> b!4351616 m!4961263))

(assert (=> b!4351616 m!4961263))

(declare-fun m!4962407 () Bool)

(assert (=> b!4351616 m!4962407))

(declare-fun m!4962409 () Bool)

(assert (=> b!4351617 m!4962409))

(assert (=> b!4351617 m!4961263))

(assert (=> b!4351617 m!4961263))

(assert (=> b!4351617 m!4962407))

(declare-fun m!4962411 () Bool)

(assert (=> b!4351617 m!4962411))

(assert (=> b!4351614 m!4962397))

(declare-fun m!4962413 () Bool)

(assert (=> b!4351614 m!4962413))

(assert (=> b!4351615 m!4962401))

(assert (=> b!4351615 m!4962401))

(assert (=> b!4351615 m!4962403))

(assert (=> b!4351619 m!4962401))

(assert (=> d!1285119 d!1285511))

(declare-fun b!4351631 () Bool)

(declare-fun e!2707996 () Option!10437)

(assert (=> b!4351631 (= e!2707996 None!10436)))

(declare-fun b!4351628 () Bool)

(declare-fun e!2707995 () Option!10437)

(assert (=> b!4351628 (= e!2707995 (Some!10436 (_2!27421 (h!54414 lt!1564655))))))

(declare-fun b!4351629 () Bool)

(assert (=> b!4351629 (= e!2707995 e!2707996)))

(declare-fun c!739766 () Bool)

(assert (=> b!4351629 (= c!739766 (and ((_ is Cons!48879) lt!1564655) (not (= (_1!27421 (h!54414 lt!1564655)) (_1!27421 lt!1564527)))))))

(declare-fun b!4351630 () Bool)

(assert (=> b!4351630 (= e!2707996 (getValueByKey!423 (t!355923 lt!1564655) (_1!27421 lt!1564527)))))

(declare-fun d!1285513 () Bool)

(declare-fun c!739765 () Bool)

(assert (=> d!1285513 (= c!739765 (and ((_ is Cons!48879) lt!1564655) (= (_1!27421 (h!54414 lt!1564655)) (_1!27421 lt!1564527))))))

(assert (=> d!1285513 (= (getValueByKey!423 lt!1564655 (_1!27421 lt!1564527)) e!2707995)))

(assert (= (and d!1285513 c!739765) b!4351628))

(assert (= (and d!1285513 (not c!739765)) b!4351629))

(assert (= (and b!4351629 c!739766) b!4351630))

(assert (= (and b!4351629 (not c!739766)) b!4351631))

(declare-fun m!4962419 () Bool)

(assert (=> b!4351630 m!4962419))

(assert (=> d!1285119 d!1285513))

(declare-fun d!1285517 () Bool)

(assert (=> d!1285517 (= (getValueByKey!423 lt!1564655 (_1!27421 lt!1564527)) (Some!10436 (_2!27421 lt!1564527)))))

(declare-fun lt!1565126 () Unit!71045)

(declare-fun choose!26784 (List!49003 K!10245 V!10491) Unit!71045)

(assert (=> d!1285517 (= lt!1565126 (choose!26784 lt!1564655 (_1!27421 lt!1564527) (_2!27421 lt!1564527)))))

(declare-fun e!2708011 () Bool)

(assert (=> d!1285517 e!2708011))

(declare-fun res!1787905 () Bool)

(assert (=> d!1285517 (=> (not res!1787905) (not e!2708011))))

(assert (=> d!1285517 (= res!1787905 (invariantList!662 lt!1564655))))

(assert (=> d!1285517 (= (lemmaContainsTupThenGetReturnValue!198 lt!1564655 (_1!27421 lt!1564527) (_2!27421 lt!1564527)) lt!1565126)))

(declare-fun b!4351650 () Bool)

(declare-fun res!1787906 () Bool)

(assert (=> b!4351650 (=> (not res!1787906) (not e!2708011))))

(assert (=> b!4351650 (= res!1787906 (containsKey!645 lt!1564655 (_1!27421 lt!1564527)))))

(declare-fun b!4351651 () Bool)

(assert (=> b!4351651 (= e!2708011 (contains!11056 lt!1564655 (tuple2!48255 (_1!27421 lt!1564527) (_2!27421 lt!1564527))))))

(assert (= (and d!1285517 res!1787905) b!4351650))

(assert (= (and b!4351650 res!1787906) b!4351651))

(assert (=> d!1285517 m!4961257))

(declare-fun m!4962443 () Bool)

(assert (=> d!1285517 m!4962443))

(declare-fun m!4962445 () Bool)

(assert (=> d!1285517 m!4962445))

(declare-fun m!4962447 () Bool)

(assert (=> b!4351650 m!4962447))

(declare-fun m!4962449 () Bool)

(assert (=> b!4351651 m!4962449))

(assert (=> d!1285119 d!1285517))

(declare-fun b!4351708 () Bool)

(declare-fun res!1787930 () Bool)

(declare-fun e!2708048 () Bool)

(assert (=> b!4351708 (=> (not res!1787930) (not e!2708048))))

(declare-fun lt!1565185 () List!49003)

(assert (=> b!4351708 (= res!1787930 (containsKey!645 lt!1565185 (_1!27421 lt!1564527)))))

(declare-fun b!4351709 () Bool)

(declare-fun c!739789 () Bool)

(assert (=> b!4351709 (= c!739789 ((_ is Cons!48879) (toList!2926 lt!1564525)))))

(declare-fun e!2708049 () List!49003)

(declare-fun e!2708047 () List!49003)

(assert (=> b!4351709 (= e!2708049 e!2708047)))

(declare-fun c!739786 () Bool)

(declare-fun bm!302446 () Bool)

(declare-fun call!302454 () List!49003)

(declare-fun c!739790 () Bool)

(declare-fun e!2708043 () List!49003)

(declare-fun $colon$colon!682 (List!49003 tuple2!48254) List!49003)

(assert (=> bm!302446 (= call!302454 ($colon$colon!682 (ite c!739790 (t!355923 (toList!2926 lt!1564525)) (ite c!739786 (toList!2926 lt!1564525) e!2708043)) (ite (or c!739790 c!739786) (tuple2!48255 (_1!27421 lt!1564527) (_2!27421 lt!1564527)) (ite c!739789 (h!54414 (toList!2926 lt!1564525)) (tuple2!48255 (_1!27421 lt!1564527) (_2!27421 lt!1564527))))))))

(declare-fun b!4351710 () Bool)

(declare-fun res!1787929 () Bool)

(assert (=> b!4351710 (=> (not res!1787929) (not e!2708048))))

(assert (=> b!4351710 (= res!1787929 (contains!11056 lt!1565185 (tuple2!48255 (_1!27421 lt!1564527) (_2!27421 lt!1564527))))))

(declare-fun b!4351711 () Bool)

(declare-fun e!2708045 () List!49003)

(assert (=> b!4351711 (= e!2708045 call!302454)))

(declare-fun lt!1565183 () List!49006)

(declare-fun call!302451 () List!49006)

(assert (=> b!4351711 (= lt!1565183 call!302451)))

(declare-fun lt!1565182 () Unit!71045)

(declare-fun lemmaSubseqRefl!65 (List!49006) Unit!71045)

(assert (=> b!4351711 (= lt!1565182 (lemmaSubseqRefl!65 lt!1565183))))

(declare-fun subseq!581 (List!49006 List!49006) Bool)

(assert (=> b!4351711 (subseq!581 lt!1565183 lt!1565183)))

(declare-fun lt!1565192 () Unit!71045)

(assert (=> b!4351711 (= lt!1565192 lt!1565182)))

(declare-fun bm!302447 () Bool)

(declare-fun call!302453 () List!49003)

(declare-fun call!302452 () List!49003)

(assert (=> bm!302447 (= call!302453 call!302452)))

(declare-fun c!739787 () Bool)

(assert (=> bm!302447 (= c!739787 c!739789)))

(declare-fun d!1285535 () Bool)

(assert (=> d!1285535 e!2708048))

(declare-fun res!1787931 () Bool)

(assert (=> d!1285535 (=> (not res!1787931) (not e!2708048))))

(assert (=> d!1285535 (= res!1787931 (invariantList!662 lt!1565185))))

(assert (=> d!1285535 (= lt!1565185 e!2708045)))

(assert (=> d!1285535 (= c!739790 (and ((_ is Cons!48879) (toList!2926 lt!1564525)) (= (_1!27421 (h!54414 (toList!2926 lt!1564525))) (_1!27421 lt!1564527))))))

(assert (=> d!1285535 (invariantList!662 (toList!2926 lt!1564525))))

(assert (=> d!1285535 (= (insertNoDuplicatedKeys!87 (toList!2926 lt!1564525) (_1!27421 lt!1564527) (_2!27421 lt!1564527)) lt!1565185)))

(declare-fun b!4351712 () Bool)

(assert (=> b!4351712 (= e!2708047 call!302453)))

(declare-fun b!4351713 () Bool)

(assert (=> b!4351713 (= e!2708048 (= (content!7686 (getKeysList!110 lt!1565185)) ((_ map or) (content!7686 (getKeysList!110 (toList!2926 lt!1564525))) (store ((as const (Array K!10245 Bool)) false) (_1!27421 lt!1564527) true))))))

(declare-fun b!4351714 () Bool)

(declare-fun lt!1565188 () List!49003)

(assert (=> b!4351714 (= e!2708047 lt!1565188)))

(assert (=> b!4351714 (= lt!1565188 call!302453)))

(declare-fun c!739788 () Bool)

(assert (=> b!4351714 (= c!739788 (containsKey!645 (insertNoDuplicatedKeys!87 (t!355923 (toList!2926 lt!1564525)) (_1!27421 lt!1564527) (_2!27421 lt!1564527)) (_1!27421 (h!54414 (toList!2926 lt!1564525)))))))

(declare-fun lt!1565186 () Unit!71045)

(declare-fun e!2708046 () Unit!71045)

(assert (=> b!4351714 (= lt!1565186 e!2708046)))

(declare-fun b!4351715 () Bool)

(assert (=> b!4351715 (= e!2708043 Nil!48879)))

(declare-fun b!4351716 () Bool)

(assert (=> b!4351716 (= e!2708049 call!302452)))

(declare-fun b!4351717 () Bool)

(declare-fun e!2708044 () Bool)

(assert (=> b!4351717 (= e!2708044 (not (containsKey!645 (toList!2926 lt!1564525) (_1!27421 lt!1564527))))))

(declare-fun b!4351718 () Bool)

(assert (=> b!4351718 (= e!2708045 e!2708049)))

(declare-fun res!1787932 () Bool)

(assert (=> b!4351718 (= res!1787932 ((_ is Cons!48879) (toList!2926 lt!1564525)))))

(assert (=> b!4351718 (=> (not res!1787932) (not e!2708044))))

(assert (=> b!4351718 (= c!739786 e!2708044)))

(declare-fun bm!302448 () Bool)

(assert (=> bm!302448 (= call!302452 call!302454)))

(declare-fun b!4351719 () Bool)

(declare-fun Unit!71137 () Unit!71045)

(assert (=> b!4351719 (= e!2708046 Unit!71137)))

(declare-fun b!4351720 () Bool)

(assert (=> b!4351720 (= e!2708043 (insertNoDuplicatedKeys!87 (t!355923 (toList!2926 lt!1564525)) (_1!27421 lt!1564527) (_2!27421 lt!1564527)))))

(declare-fun lt!1565191 () List!49003)

(declare-fun bm!302449 () Bool)

(assert (=> bm!302449 (= call!302451 (getKeysList!110 (ite c!739790 (toList!2926 lt!1564525) lt!1565191)))))

(declare-fun b!4351721 () Bool)

(assert (=> b!4351721 false))

(declare-fun lt!1565187 () Unit!71045)

(declare-fun lt!1565184 () Unit!71045)

(assert (=> b!4351721 (= lt!1565187 lt!1565184)))

(assert (=> b!4351721 (containsKey!645 (t!355923 (toList!2926 lt!1564525)) (_1!27421 (h!54414 (toList!2926 lt!1564525))))))

(assert (=> b!4351721 (= lt!1565184 (lemmaInGetKeysListThenContainsKey!108 (t!355923 (toList!2926 lt!1564525)) (_1!27421 (h!54414 (toList!2926 lt!1564525)))))))

(declare-fun lt!1565190 () Unit!71045)

(declare-fun lt!1565189 () Unit!71045)

(assert (=> b!4351721 (= lt!1565190 lt!1565189)))

(assert (=> b!4351721 (contains!11054 call!302451 (_1!27421 (h!54414 (toList!2926 lt!1564525))))))

(assert (=> b!4351721 (= lt!1565189 (lemmaInListThenGetKeysListContains!107 lt!1565191 (_1!27421 (h!54414 (toList!2926 lt!1564525)))))))

(assert (=> b!4351721 (= lt!1565191 (insertNoDuplicatedKeys!87 (t!355923 (toList!2926 lt!1564525)) (_1!27421 lt!1564527) (_2!27421 lt!1564527)))))

(declare-fun Unit!71138 () Unit!71045)

(assert (=> b!4351721 (= e!2708046 Unit!71138)))

(assert (= (and d!1285535 c!739790) b!4351711))

(assert (= (and d!1285535 (not c!739790)) b!4351718))

(assert (= (and b!4351718 res!1787932) b!4351717))

(assert (= (and b!4351718 c!739786) b!4351716))

(assert (= (and b!4351718 (not c!739786)) b!4351709))

(assert (= (and b!4351709 c!739789) b!4351714))

(assert (= (and b!4351709 (not c!739789)) b!4351712))

(assert (= (and b!4351714 c!739788) b!4351721))

(assert (= (and b!4351714 (not c!739788)) b!4351719))

(assert (= (or b!4351714 b!4351712) bm!302447))

(assert (= (and bm!302447 c!739787) b!4351720))

(assert (= (and bm!302447 (not c!739787)) b!4351715))

(assert (= (or b!4351716 bm!302447) bm!302448))

(assert (= (or b!4351711 b!4351721) bm!302449))

(assert (= (or b!4351711 bm!302448) bm!302446))

(assert (= (and d!1285535 res!1787931) b!4351708))

(assert (= (and b!4351708 res!1787930) b!4351710))

(assert (= (and b!4351710 res!1787929) b!4351713))

(declare-fun m!4962527 () Bool)

(assert (=> b!4351711 m!4962527))

(declare-fun m!4962529 () Bool)

(assert (=> b!4351711 m!4962529))

(declare-fun m!4962531 () Bool)

(assert (=> bm!302446 m!4962531))

(declare-fun m!4962533 () Bool)

(assert (=> b!4351721 m!4962533))

(declare-fun m!4962535 () Bool)

(assert (=> b!4351721 m!4962535))

(assert (=> b!4351721 m!4961601))

(declare-fun m!4962537 () Bool)

(assert (=> b!4351721 m!4962537))

(declare-fun m!4962539 () Bool)

(assert (=> b!4351721 m!4962539))

(declare-fun m!4962541 () Bool)

(assert (=> b!4351713 m!4962541))

(assert (=> b!4351713 m!4961231))

(declare-fun m!4962543 () Bool)

(assert (=> b!4351713 m!4962543))

(declare-fun m!4962545 () Bool)

(assert (=> b!4351713 m!4962545))

(assert (=> b!4351713 m!4962545))

(declare-fun m!4962547 () Bool)

(assert (=> b!4351713 m!4962547))

(assert (=> b!4351713 m!4961231))

(declare-fun m!4962549 () Bool)

(assert (=> b!4351708 m!4962549))

(declare-fun m!4962551 () Bool)

(assert (=> b!4351710 m!4962551))

(assert (=> b!4351720 m!4962533))

(assert (=> b!4351714 m!4962533))

(assert (=> b!4351714 m!4962533))

(declare-fun m!4962553 () Bool)

(assert (=> b!4351714 m!4962553))

(declare-fun m!4962555 () Bool)

(assert (=> bm!302449 m!4962555))

(declare-fun m!4962557 () Bool)

(assert (=> d!1285535 m!4962557))

(assert (=> d!1285535 m!4961615))

(declare-fun m!4962559 () Bool)

(assert (=> b!4351717 m!4962559))

(assert (=> d!1285119 d!1285535))

(declare-fun d!1285551 () Bool)

(assert (=> d!1285551 (dynLambda!20612 lambda!139387 lt!1564519)))

(assert (=> d!1285551 true))

(declare-fun _$7!1459 () Unit!71045)

(assert (=> d!1285551 (= (choose!26764 (toList!2925 lm!1707) lambda!139387 lt!1564519) _$7!1459)))

(declare-fun b_lambda!130611 () Bool)

(assert (=> (not b_lambda!130611) (not d!1285551)))

(declare-fun bs!629340 () Bool)

(assert (= bs!629340 d!1285551))

(assert (=> bs!629340 m!4961181))

(assert (=> d!1285093 d!1285551))

(assert (=> d!1285093 d!1285083))

(declare-fun bs!629341 () Bool)

(declare-fun b!4351724 () Bool)

(assert (= bs!629341 (and b!4351724 b!4351428)))

(declare-fun lambda!139559 () Int)

(assert (=> bs!629341 (= (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139559 lambda!139526))))

(declare-fun bs!629342 () Bool)

(assert (= bs!629342 (and b!4351724 d!1285289)))

(assert (=> bs!629342 (= (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) lt!1565005) (= lambda!139559 lambda!139529))))

(declare-fun bs!629343 () Bool)

(assert (= bs!629343 (and b!4351724 b!4351429)))

(assert (=> bs!629343 (= (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) lt!1565007) (= lambda!139559 lambda!139528))))

(declare-fun bs!629344 () Bool)

(assert (= bs!629344 (and b!4351724 d!1285427)))

(assert (=> bs!629344 (= (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) lt!1565075) (= lambda!139559 lambda!139551))))

(assert (=> bs!629343 (= (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139559 lambda!139527))))

(declare-fun bs!629345 () Bool)

(assert (= bs!629345 (and b!4351724 b!4351549)))

(assert (=> bs!629345 (= (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) lt!1565077) (= lambda!139559 lambda!139550))))

(assert (=> bs!629345 (= (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139559 lambda!139549))))

(declare-fun bs!629346 () Bool)

(assert (= bs!629346 (and b!4351724 d!1285101)))

(assert (=> bs!629346 (not (= lambda!139559 lambda!139390))))

(declare-fun bs!629347 () Bool)

(assert (= bs!629347 (and b!4351724 b!4351548)))

(assert (=> bs!629347 (= (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139559 lambda!139547))))

(assert (=> b!4351724 true))

(declare-fun bs!629348 () Bool)

(declare-fun b!4351725 () Bool)

(assert (= bs!629348 (and b!4351725 b!4351428)))

(declare-fun lambda!139560 () Int)

(assert (=> bs!629348 (= (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139560 lambda!139526))))

(declare-fun bs!629349 () Bool)

(assert (= bs!629349 (and b!4351725 d!1285289)))

(assert (=> bs!629349 (= (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) lt!1565005) (= lambda!139560 lambda!139529))))

(declare-fun bs!629350 () Bool)

(assert (= bs!629350 (and b!4351725 b!4351429)))

(assert (=> bs!629350 (= (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) lt!1565007) (= lambda!139560 lambda!139528))))

(declare-fun bs!629351 () Bool)

(assert (= bs!629351 (and b!4351725 b!4351724)))

(assert (=> bs!629351 (= lambda!139560 lambda!139559)))

(declare-fun bs!629352 () Bool)

(assert (= bs!629352 (and b!4351725 d!1285427)))

(assert (=> bs!629352 (= (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) lt!1565075) (= lambda!139560 lambda!139551))))

(assert (=> bs!629350 (= (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139560 lambda!139527))))

(declare-fun bs!629353 () Bool)

(assert (= bs!629353 (and b!4351725 b!4351549)))

(assert (=> bs!629353 (= (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) lt!1565077) (= lambda!139560 lambda!139550))))

(assert (=> bs!629353 (= (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139560 lambda!139549))))

(declare-fun bs!629354 () Bool)

(assert (= bs!629354 (and b!4351725 d!1285101)))

(assert (=> bs!629354 (not (= lambda!139560 lambda!139390))))

(declare-fun bs!629355 () Bool)

(assert (= bs!629355 (and b!4351725 b!4351548)))

(assert (=> bs!629355 (= (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139560 lambda!139547))))

(assert (=> b!4351725 true))

(declare-fun lt!1565207 () ListMap!2169)

(declare-fun lambda!139561 () Int)

(assert (=> bs!629348 (= (= lt!1565207 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139561 lambda!139526))))

(assert (=> b!4351725 (= (= lt!1565207 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (= lambda!139561 lambda!139560))))

(assert (=> bs!629349 (= (= lt!1565207 lt!1565005) (= lambda!139561 lambda!139529))))

(assert (=> bs!629350 (= (= lt!1565207 lt!1565007) (= lambda!139561 lambda!139528))))

(assert (=> bs!629351 (= (= lt!1565207 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (= lambda!139561 lambda!139559))))

(assert (=> bs!629352 (= (= lt!1565207 lt!1565075) (= lambda!139561 lambda!139551))))

(assert (=> bs!629350 (= (= lt!1565207 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139561 lambda!139527))))

(assert (=> bs!629353 (= (= lt!1565207 lt!1565077) (= lambda!139561 lambda!139550))))

(assert (=> bs!629353 (= (= lt!1565207 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139561 lambda!139549))))

(assert (=> bs!629354 (not (= lambda!139561 lambda!139390))))

(assert (=> bs!629355 (= (= lt!1565207 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139561 lambda!139547))))

(assert (=> b!4351725 true))

(declare-fun bs!629356 () Bool)

(declare-fun d!1285553 () Bool)

(assert (= bs!629356 (and d!1285553 b!4351428)))

(declare-fun lambda!139562 () Int)

(declare-fun lt!1565205 () ListMap!2169)

(assert (=> bs!629356 (= (= lt!1565205 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139562 lambda!139526))))

(declare-fun bs!629357 () Bool)

(assert (= bs!629357 (and d!1285553 b!4351725)))

(assert (=> bs!629357 (= (= lt!1565205 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (= lambda!139562 lambda!139560))))

(declare-fun bs!629358 () Bool)

(assert (= bs!629358 (and d!1285553 d!1285289)))

(assert (=> bs!629358 (= (= lt!1565205 lt!1565005) (= lambda!139562 lambda!139529))))

(declare-fun bs!629359 () Bool)

(assert (= bs!629359 (and d!1285553 b!4351429)))

(assert (=> bs!629359 (= (= lt!1565205 lt!1565007) (= lambda!139562 lambda!139528))))

(declare-fun bs!629360 () Bool)

(assert (= bs!629360 (and d!1285553 b!4351724)))

(assert (=> bs!629360 (= (= lt!1565205 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (= lambda!139562 lambda!139559))))

(declare-fun bs!629361 () Bool)

(assert (= bs!629361 (and d!1285553 d!1285427)))

(assert (=> bs!629361 (= (= lt!1565205 lt!1565075) (= lambda!139562 lambda!139551))))

(assert (=> bs!629359 (= (= lt!1565205 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139562 lambda!139527))))

(declare-fun bs!629362 () Bool)

(assert (= bs!629362 (and d!1285553 b!4351549)))

(assert (=> bs!629362 (= (= lt!1565205 lt!1565077) (= lambda!139562 lambda!139550))))

(assert (=> bs!629362 (= (= lt!1565205 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139562 lambda!139549))))

(assert (=> bs!629357 (= (= lt!1565205 lt!1565207) (= lambda!139562 lambda!139561))))

(declare-fun bs!629363 () Bool)

(assert (= bs!629363 (and d!1285553 d!1285101)))

(assert (=> bs!629363 (not (= lambda!139562 lambda!139390))))

(declare-fun bs!629364 () Bool)

(assert (= bs!629364 (and d!1285553 b!4351548)))

(assert (=> bs!629364 (= (= lt!1565205 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139562 lambda!139547))))

(assert (=> d!1285553 true))

(declare-fun e!2708051 () Bool)

(declare-fun b!4351722 () Bool)

(assert (=> b!4351722 (= e!2708051 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) lambda!139561))))

(declare-fun bm!302450 () Bool)

(declare-fun lt!1565208 () ListMap!2169)

(declare-fun call!302456 () Bool)

(declare-fun c!739791 () Bool)

(assert (=> bm!302450 (= call!302456 (forall!9083 (ite c!739791 (toList!2926 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (toList!2926 lt!1565208)) (ite c!739791 lambda!139559 lambda!139561)))))

(declare-fun bm!302451 () Bool)

(declare-fun call!302455 () Unit!71045)

(assert (=> bm!302451 (= call!302455 (lemmaContainsAllItsOwnKeys!53 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))))))

(declare-fun b!4351723 () Bool)

(declare-fun res!1787933 () Bool)

(declare-fun e!2708050 () Bool)

(assert (=> b!4351723 (=> (not res!1787933) (not e!2708050))))

(assert (=> b!4351723 (= res!1787933 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) lambda!139562))))

(assert (=> d!1285553 e!2708050))

(declare-fun res!1787934 () Bool)

(assert (=> d!1285553 (=> (not res!1787934) (not e!2708050))))

(assert (=> d!1285553 (= res!1787934 (forall!9083 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522)))) lambda!139562))))

(declare-fun e!2708052 () ListMap!2169)

(assert (=> d!1285553 (= lt!1565205 e!2708052)))

(assert (=> d!1285553 (= c!739791 ((_ is Nil!48879) (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522))))))))

(assert (=> d!1285553 (noDuplicateKeys!471 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522)))))))

(assert (=> d!1285553 (= (addToMapMapFromBucket!169 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522)))) (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) lt!1565205)))

(assert (=> b!4351724 (= e!2708052 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))))))

(declare-fun lt!1565196 () Unit!71045)

(assert (=> b!4351724 (= lt!1565196 call!302455)))

(declare-fun call!302457 () Bool)

(assert (=> b!4351724 call!302457))

(declare-fun lt!1565200 () Unit!71045)

(assert (=> b!4351724 (= lt!1565200 lt!1565196)))

(assert (=> b!4351724 call!302456))

(declare-fun lt!1565195 () Unit!71045)

(declare-fun Unit!71139 () Unit!71045)

(assert (=> b!4351724 (= lt!1565195 Unit!71139)))

(assert (=> b!4351725 (= e!2708052 lt!1565207)))

(assert (=> b!4351725 (= lt!1565208 (+!600 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) (h!54414 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522)))))))))

(assert (=> b!4351725 (= lt!1565207 (addToMapMapFromBucket!169 (t!355923 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (+!600 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) (h!54414 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522))))))))))

(declare-fun lt!1565210 () Unit!71045)

(assert (=> b!4351725 (= lt!1565210 call!302455)))

(assert (=> b!4351725 call!302457))

(declare-fun lt!1565211 () Unit!71045)

(assert (=> b!4351725 (= lt!1565211 lt!1565210)))

(assert (=> b!4351725 call!302456))

(declare-fun lt!1565193 () Unit!71045)

(declare-fun Unit!71140 () Unit!71045)

(assert (=> b!4351725 (= lt!1565193 Unit!71140)))

(assert (=> b!4351725 (forall!9083 (t!355923 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522))))) lambda!139561)))

(declare-fun lt!1565199 () Unit!71045)

(declare-fun Unit!71141 () Unit!71045)

(assert (=> b!4351725 (= lt!1565199 Unit!71141)))

(declare-fun lt!1565202 () Unit!71045)

(declare-fun Unit!71142 () Unit!71045)

(assert (=> b!4351725 (= lt!1565202 Unit!71142)))

(declare-fun lt!1565198 () Unit!71045)

(assert (=> b!4351725 (= lt!1565198 (forallContained!1733 (toList!2926 lt!1565208) lambda!139561 (h!54414 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522)))))))))

(assert (=> b!4351725 (contains!11051 lt!1565208 (_1!27421 (h!54414 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522)))))))))

(declare-fun lt!1565206 () Unit!71045)

(declare-fun Unit!71143 () Unit!71045)

(assert (=> b!4351725 (= lt!1565206 Unit!71143)))

(assert (=> b!4351725 (contains!11051 lt!1565207 (_1!27421 (h!54414 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522)))))))))

(declare-fun lt!1565203 () Unit!71045)

(declare-fun Unit!71144 () Unit!71045)

(assert (=> b!4351725 (= lt!1565203 Unit!71144)))

(assert (=> b!4351725 (forall!9083 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522)))) lambda!139561)))

(declare-fun lt!1565204 () Unit!71045)

(declare-fun Unit!71145 () Unit!71045)

(assert (=> b!4351725 (= lt!1565204 Unit!71145)))

(assert (=> b!4351725 (forall!9083 (toList!2926 lt!1565208) lambda!139561)))

(declare-fun lt!1565197 () Unit!71045)

(declare-fun Unit!71146 () Unit!71045)

(assert (=> b!4351725 (= lt!1565197 Unit!71146)))

(declare-fun lt!1565212 () Unit!71045)

(declare-fun Unit!71147 () Unit!71045)

(assert (=> b!4351725 (= lt!1565212 Unit!71147)))

(declare-fun lt!1565194 () Unit!71045)

(assert (=> b!4351725 (= lt!1565194 (addForallContainsKeyThenBeforeAdding!53 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) lt!1565207 (_1!27421 (h!54414 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522)))))) (_2!27421 (h!54414 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522))))))))))

(assert (=> b!4351725 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) lambda!139561)))

(declare-fun lt!1565213 () Unit!71045)

(assert (=> b!4351725 (= lt!1565213 lt!1565194)))

(assert (=> b!4351725 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) lambda!139561)))

(declare-fun lt!1565201 () Unit!71045)

(declare-fun Unit!71149 () Unit!71045)

(assert (=> b!4351725 (= lt!1565201 Unit!71149)))

(declare-fun res!1787935 () Bool)

(assert (=> b!4351725 (= res!1787935 (forall!9083 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522)))) lambda!139561))))

(assert (=> b!4351725 (=> (not res!1787935) (not e!2708051))))

(assert (=> b!4351725 e!2708051))

(declare-fun lt!1565209 () Unit!71045)

(declare-fun Unit!71150 () Unit!71045)

(assert (=> b!4351725 (= lt!1565209 Unit!71150)))

(declare-fun b!4351726 () Bool)

(assert (=> b!4351726 (= e!2708050 (invariantList!662 (toList!2926 lt!1565205)))))

(declare-fun bm!302452 () Bool)

(assert (=> bm!302452 (= call!302457 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (ite c!739791 lambda!139559 lambda!139560)))))

(assert (= (and d!1285553 c!739791) b!4351724))

(assert (= (and d!1285553 (not c!739791)) b!4351725))

(assert (= (and b!4351725 res!1787935) b!4351722))

(assert (= (or b!4351724 b!4351725) bm!302451))

(assert (= (or b!4351724 b!4351725) bm!302452))

(assert (= (or b!4351724 b!4351725) bm!302450))

(assert (= (and d!1285553 res!1787934) b!4351723))

(assert (= (and b!4351723 res!1787933) b!4351726))

(assert (=> bm!302451 m!4961351))

(declare-fun m!4962561 () Bool)

(assert (=> bm!302451 m!4962561))

(declare-fun m!4962563 () Bool)

(assert (=> bm!302452 m!4962563))

(declare-fun m!4962565 () Bool)

(assert (=> b!4351723 m!4962565))

(declare-fun m!4962567 () Bool)

(assert (=> bm!302450 m!4962567))

(assert (=> b!4351725 m!4961351))

(declare-fun m!4962569 () Bool)

(assert (=> b!4351725 m!4962569))

(declare-fun m!4962571 () Bool)

(assert (=> b!4351725 m!4962571))

(declare-fun m!4962573 () Bool)

(assert (=> b!4351725 m!4962573))

(declare-fun m!4962575 () Bool)

(assert (=> b!4351725 m!4962575))

(declare-fun m!4962577 () Bool)

(assert (=> b!4351725 m!4962577))

(assert (=> b!4351725 m!4962569))

(declare-fun m!4962579 () Bool)

(assert (=> b!4351725 m!4962579))

(assert (=> b!4351725 m!4962575))

(declare-fun m!4962581 () Bool)

(assert (=> b!4351725 m!4962581))

(declare-fun m!4962583 () Bool)

(assert (=> b!4351725 m!4962583))

(assert (=> b!4351725 m!4961351))

(declare-fun m!4962585 () Bool)

(assert (=> b!4351725 m!4962585))

(declare-fun m!4962587 () Bool)

(assert (=> b!4351725 m!4962587))

(assert (=> b!4351725 m!4962581))

(declare-fun m!4962589 () Bool)

(assert (=> b!4351726 m!4962589))

(assert (=> b!4351722 m!4962575))

(declare-fun m!4962591 () Bool)

(assert (=> d!1285553 m!4962591))

(declare-fun m!4962593 () Bool)

(assert (=> d!1285553 m!4962593))

(assert (=> b!4351007 d!1285553))

(declare-fun bs!629365 () Bool)

(declare-fun d!1285555 () Bool)

(assert (= bs!629365 (and d!1285555 d!1285143)))

(declare-fun lambda!139563 () Int)

(assert (=> bs!629365 (= lambda!139563 lambda!139409)))

(declare-fun bs!629366 () Bool)

(assert (= bs!629366 (and d!1285555 d!1285135)))

(assert (=> bs!629366 (= lambda!139563 lambda!139406)))

(declare-fun bs!629367 () Bool)

(assert (= bs!629367 (and d!1285555 d!1285173)))

(assert (=> bs!629367 (= lambda!139563 lambda!139419)))

(declare-fun bs!629368 () Bool)

(assert (= bs!629368 (and d!1285555 start!420404)))

(assert (=> bs!629368 (= lambda!139563 lambda!139387)))

(declare-fun bs!629369 () Bool)

(assert (= bs!629369 (and d!1285555 d!1285189)))

(assert (=> bs!629369 (= lambda!139563 lambda!139423)))

(declare-fun bs!629370 () Bool)

(assert (= bs!629370 (and d!1285555 d!1285375)))

(assert (=> bs!629370 (= lambda!139563 lambda!139530)))

(declare-fun bs!629371 () Bool)

(assert (= bs!629371 (and d!1285555 d!1285269)))

(assert (=> bs!629371 (= lambda!139563 lambda!139446)))

(declare-fun bs!629372 () Bool)

(assert (= bs!629372 (and d!1285555 d!1285153)))

(assert (=> bs!629372 (= lambda!139563 lambda!139416)))

(declare-fun bs!629373 () Bool)

(assert (= bs!629373 (and d!1285555 d!1285179)))

(assert (=> bs!629373 (not (= lambda!139563 lambda!139422))))

(declare-fun bs!629374 () Bool)

(assert (= bs!629374 (and d!1285555 d!1285443)))

(assert (=> bs!629374 (= lambda!139563 lambda!139552)))

(declare-fun bs!629375 () Bool)

(assert (= bs!629375 (and d!1285555 d!1285147)))

(assert (=> bs!629375 (= lambda!139563 lambda!139411)))

(declare-fun lt!1565236 () ListMap!2169)

(assert (=> d!1285555 (invariantList!662 (toList!2926 lt!1565236))))

(declare-fun e!2708065 () ListMap!2169)

(assert (=> d!1285555 (= lt!1565236 e!2708065)))

(declare-fun c!739802 () Bool)

(assert (=> d!1285555 (= c!739802 ((_ is Cons!48880) (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))))))

(assert (=> d!1285555 (forall!9081 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))) lambda!139563)))

(assert (=> d!1285555 (= (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))) lt!1565236)))

(declare-fun b!4351749 () Bool)

(assert (=> b!4351749 (= e!2708065 (addToMapMapFromBucket!169 (_2!27422 (h!54415 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (extractMap!530 (t!355924 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522)))))))))

(declare-fun b!4351750 () Bool)

(assert (=> b!4351750 (= e!2708065 (ListMap!2170 Nil!48879))))

(assert (= (and d!1285555 c!739802) b!4351749))

(assert (= (and d!1285555 (not c!739802)) b!4351750))

(declare-fun m!4962595 () Bool)

(assert (=> d!1285555 m!4962595))

(declare-fun m!4962597 () Bool)

(assert (=> d!1285555 m!4962597))

(declare-fun m!4962599 () Bool)

(assert (=> b!4351749 m!4962599))

(assert (=> b!4351749 m!4962599))

(declare-fun m!4962601 () Bool)

(assert (=> b!4351749 m!4962601))

(assert (=> b!4351007 d!1285555))

(assert (=> b!4350986 d!1285463))

(assert (=> b!4350986 d!1285383))

(declare-fun d!1285557 () Bool)

(declare-fun res!1787944 () Bool)

(declare-fun e!2708068 () Bool)

(assert (=> d!1285557 (=> res!1787944 e!2708068)))

(assert (=> d!1285557 (= res!1787944 (not ((_ is Cons!48879) (t!355923 newBucket!200))))))

(assert (=> d!1285557 (= (noDuplicateKeys!471 (t!355923 newBucket!200)) e!2708068)))

(declare-fun b!4351757 () Bool)

(declare-fun e!2708069 () Bool)

(assert (=> b!4351757 (= e!2708068 e!2708069)))

(declare-fun res!1787945 () Bool)

(assert (=> b!4351757 (=> (not res!1787945) (not e!2708069))))

(assert (=> b!4351757 (= res!1787945 (not (containsKey!642 (t!355923 (t!355923 newBucket!200)) (_1!27421 (h!54414 (t!355923 newBucket!200))))))))

(declare-fun b!4351758 () Bool)

(assert (=> b!4351758 (= e!2708069 (noDuplicateKeys!471 (t!355923 (t!355923 newBucket!200))))))

(assert (= (and d!1285557 (not res!1787944)) b!4351757))

(assert (= (and b!4351757 res!1787945) b!4351758))

(declare-fun m!4962603 () Bool)

(assert (=> b!4351757 m!4962603))

(declare-fun m!4962605 () Bool)

(assert (=> b!4351758 m!4962605))

(assert (=> b!4351056 d!1285557))

(assert (=> d!1285105 d!1285453))

(declare-fun d!1285559 () Bool)

(declare-fun res!1787950 () Bool)

(declare-fun e!2708074 () Bool)

(assert (=> d!1285559 (=> res!1787950 e!2708074)))

(assert (=> d!1285559 (= res!1787950 (and ((_ is Cons!48880) (toList!2925 lm!1707)) (= (_1!27422 (h!54415 (toList!2925 lm!1707))) hash!377)))))

(assert (=> d!1285559 (= (containsKey!643 (toList!2925 lm!1707) hash!377) e!2708074)))

(declare-fun b!4351763 () Bool)

(declare-fun e!2708075 () Bool)

(assert (=> b!4351763 (= e!2708074 e!2708075)))

(declare-fun res!1787951 () Bool)

(assert (=> b!4351763 (=> (not res!1787951) (not e!2708075))))

(assert (=> b!4351763 (= res!1787951 (and (or (not ((_ is Cons!48880) (toList!2925 lm!1707))) (bvsle (_1!27422 (h!54415 (toList!2925 lm!1707))) hash!377)) ((_ is Cons!48880) (toList!2925 lm!1707)) (bvslt (_1!27422 (h!54415 (toList!2925 lm!1707))) hash!377)))))

(declare-fun b!4351764 () Bool)

(assert (=> b!4351764 (= e!2708075 (containsKey!643 (t!355924 (toList!2925 lm!1707)) hash!377))))

(assert (= (and d!1285559 (not res!1787950)) b!4351763))

(assert (= (and b!4351763 res!1787951) b!4351764))

(declare-fun m!4962607 () Bool)

(assert (=> b!4351764 m!4962607))

(assert (=> d!1285085 d!1285559))

(declare-fun d!1285561 () Bool)

(assert (=> d!1285561 (isDefined!7732 (getValueByKey!423 (toList!2926 lt!1564525) key!3918))))

(declare-fun lt!1565237 () Unit!71045)

(assert (=> d!1285561 (= lt!1565237 (choose!26782 (toList!2926 lt!1564525) key!3918))))

(assert (=> d!1285561 (invariantList!662 (toList!2926 lt!1564525))))

(assert (=> d!1285561 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!335 (toList!2926 lt!1564525) key!3918) lt!1565237)))

(declare-fun bs!629376 () Bool)

(assert (= bs!629376 d!1285561))

(assert (=> bs!629376 m!4961233))

(assert (=> bs!629376 m!4961233))

(assert (=> bs!629376 m!4961235))

(declare-fun m!4962609 () Bool)

(assert (=> bs!629376 m!4962609))

(assert (=> bs!629376 m!4961615))

(assert (=> b!4350971 d!1285561))

(assert (=> b!4350971 d!1285447))

(assert (=> b!4350971 d!1285449))

(declare-fun d!1285563 () Bool)

(assert (=> d!1285563 (contains!11054 (getKeysList!110 (toList!2926 lt!1564525)) key!3918)))

(declare-fun lt!1565238 () Unit!71045)

(assert (=> d!1285563 (= lt!1565238 (choose!26783 (toList!2926 lt!1564525) key!3918))))

(assert (=> d!1285563 (invariantList!662 (toList!2926 lt!1564525))))

(assert (=> d!1285563 (= (lemmaInListThenGetKeysListContains!107 (toList!2926 lt!1564525) key!3918) lt!1565238)))

(declare-fun bs!629377 () Bool)

(assert (= bs!629377 d!1285563))

(assert (=> bs!629377 m!4961231))

(assert (=> bs!629377 m!4961231))

(declare-fun m!4962611 () Bool)

(assert (=> bs!629377 m!4962611))

(declare-fun m!4962613 () Bool)

(assert (=> bs!629377 m!4962613))

(assert (=> bs!629377 m!4961615))

(assert (=> b!4350971 d!1285563))

(declare-fun d!1285565 () Bool)

(declare-fun res!1787952 () Bool)

(declare-fun e!2708076 () Bool)

(assert (=> d!1285565 (=> res!1787952 e!2708076)))

(assert (=> d!1285565 (= res!1787952 ((_ is Nil!48880) (t!355924 (toList!2925 lm!1707))))))

(assert (=> d!1285565 (= (forall!9081 (t!355924 (toList!2925 lm!1707)) lambda!139387) e!2708076)))

(declare-fun b!4351765 () Bool)

(declare-fun e!2708077 () Bool)

(assert (=> b!4351765 (= e!2708076 e!2708077)))

(declare-fun res!1787953 () Bool)

(assert (=> b!4351765 (=> (not res!1787953) (not e!2708077))))

(assert (=> b!4351765 (= res!1787953 (dynLambda!20612 lambda!139387 (h!54415 (t!355924 (toList!2925 lm!1707)))))))

(declare-fun b!4351766 () Bool)

(assert (=> b!4351766 (= e!2708077 (forall!9081 (t!355924 (t!355924 (toList!2925 lm!1707))) lambda!139387))))

(assert (= (and d!1285565 (not res!1787952)) b!4351765))

(assert (= (and b!4351765 res!1787953) b!4351766))

(declare-fun b_lambda!130613 () Bool)

(assert (=> (not b_lambda!130613) (not b!4351765)))

(declare-fun m!4962615 () Bool)

(assert (=> b!4351765 m!4962615))

(declare-fun m!4962617 () Bool)

(assert (=> b!4351766 m!4962617))

(assert (=> b!4350852 d!1285565))

(declare-fun d!1285567 () Bool)

(declare-fun lt!1565239 () Bool)

(assert (=> d!1285567 (= lt!1565239 (select (content!7686 e!2707643) key!3918))))

(declare-fun e!2708078 () Bool)

(assert (=> d!1285567 (= lt!1565239 e!2708078)))

(declare-fun res!1787955 () Bool)

(assert (=> d!1285567 (=> (not res!1787955) (not e!2708078))))

(assert (=> d!1285567 (= res!1787955 ((_ is Cons!48882) e!2707643))))

(assert (=> d!1285567 (= (contains!11054 e!2707643 key!3918) lt!1565239)))

(declare-fun b!4351767 () Bool)

(declare-fun e!2708079 () Bool)

(assert (=> b!4351767 (= e!2708078 e!2708079)))

(declare-fun res!1787954 () Bool)

(assert (=> b!4351767 (=> res!1787954 e!2708079)))

(assert (=> b!4351767 (= res!1787954 (= (h!54419 e!2707643) key!3918))))

(declare-fun b!4351768 () Bool)

(assert (=> b!4351768 (= e!2708079 (contains!11054 (t!355926 e!2707643) key!3918))))

(assert (= (and d!1285567 res!1787955) b!4351767))

(assert (= (and b!4351767 (not res!1787954)) b!4351768))

(declare-fun m!4962619 () Bool)

(assert (=> d!1285567 m!4962619))

(declare-fun m!4962621 () Bool)

(assert (=> d!1285567 m!4962621))

(declare-fun m!4962623 () Bool)

(assert (=> b!4351768 m!4962623))

(assert (=> bm!302384 d!1285567))

(declare-fun d!1285569 () Bool)

(declare-fun res!1787960 () Bool)

(declare-fun e!2708087 () Bool)

(assert (=> d!1285569 (=> res!1787960 e!2708087)))

(assert (=> d!1285569 (= res!1787960 (and ((_ is Cons!48879) (t!355923 (_2!27422 (h!54415 (toList!2925 lm!1707))))) (= (_1!27421 (h!54414 (t!355923 (_2!27422 (h!54415 (toList!2925 lm!1707)))))) key!3918)))))

(assert (=> d!1285569 (= (containsKey!642 (t!355923 (_2!27422 (h!54415 (toList!2925 lm!1707)))) key!3918) e!2708087)))

(declare-fun b!4351783 () Bool)

(declare-fun e!2708088 () Bool)

(assert (=> b!4351783 (= e!2708087 e!2708088)))

(declare-fun res!1787961 () Bool)

(assert (=> b!4351783 (=> (not res!1787961) (not e!2708088))))

(assert (=> b!4351783 (= res!1787961 ((_ is Cons!48879) (t!355923 (_2!27422 (h!54415 (toList!2925 lm!1707))))))))

(declare-fun b!4351784 () Bool)

(assert (=> b!4351784 (= e!2708088 (containsKey!642 (t!355923 (t!355923 (_2!27422 (h!54415 (toList!2925 lm!1707))))) key!3918))))

(assert (= (and d!1285569 (not res!1787960)) b!4351783))

(assert (= (and b!4351783 res!1787961) b!4351784))

(declare-fun m!4962625 () Bool)

(assert (=> b!4351784 m!4962625))

(assert (=> b!4350926 d!1285569))

(declare-fun d!1285571 () Bool)

(declare-fun lt!1565251 () Bool)

(assert (=> d!1285571 (= lt!1565251 (select (content!7686 e!2707584) key!3918))))

(declare-fun e!2708089 () Bool)

(assert (=> d!1285571 (= lt!1565251 e!2708089)))

(declare-fun res!1787963 () Bool)

(assert (=> d!1285571 (=> (not res!1787963) (not e!2708089))))

(assert (=> d!1285571 (= res!1787963 ((_ is Cons!48882) e!2707584))))

(assert (=> d!1285571 (= (contains!11054 e!2707584 key!3918) lt!1565251)))

(declare-fun b!4351785 () Bool)

(declare-fun e!2708090 () Bool)

(assert (=> b!4351785 (= e!2708089 e!2708090)))

(declare-fun res!1787962 () Bool)

(assert (=> b!4351785 (=> res!1787962 e!2708090)))

(assert (=> b!4351785 (= res!1787962 (= (h!54419 e!2707584) key!3918))))

(declare-fun b!4351786 () Bool)

(assert (=> b!4351786 (= e!2708090 (contains!11054 (t!355926 e!2707584) key!3918))))

(assert (= (and d!1285571 res!1787963) b!4351785))

(assert (= (and b!4351785 (not res!1787962)) b!4351786))

(declare-fun m!4962627 () Bool)

(assert (=> d!1285571 m!4962627))

(declare-fun m!4962629 () Bool)

(assert (=> d!1285571 m!4962629))

(declare-fun m!4962631 () Bool)

(assert (=> b!4351786 m!4962631))

(assert (=> bm!302380 d!1285571))

(declare-fun d!1285573 () Bool)

(assert (=> d!1285573 (= (get!15870 (getValueByKey!421 (toList!2925 lm!1707) hash!377)) (v!43260 (getValueByKey!421 (toList!2925 lm!1707) hash!377)))))

(assert (=> d!1285089 d!1285573))

(assert (=> d!1285089 d!1285267))

(declare-fun bs!629378 () Bool)

(declare-fun b!4351788 () Bool)

(assert (= bs!629378 (and b!4351788 b!4351240)))

(declare-fun lambda!139564 () Int)

(assert (=> bs!629378 (= (= (toList!2926 lt!1564525) (Cons!48879 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))))) (= lambda!139564 lambda!139443))))

(declare-fun bs!629379 () Bool)

(assert (= bs!629379 (and b!4351788 b!4351247)))

(assert (=> bs!629379 (= (= (toList!2926 lt!1564525) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) (= lambda!139564 lambda!139442))))

(declare-fun bs!629380 () Bool)

(assert (= bs!629380 (and b!4351788 b!4351506)))

(assert (=> bs!629380 (= (= (toList!2926 lt!1564525) (toList!2926 lt!1564520)) (= lambda!139564 lambda!139537))))

(declare-fun bs!629381 () Bool)

(assert (= bs!629381 (and b!4351788 b!4351241)))

(assert (=> bs!629381 (= (= (toList!2926 lt!1564525) (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (= lambda!139564 lambda!139444))))

(declare-fun bs!629382 () Bool)

(assert (= bs!629382 (and b!4351788 b!4351154)))

(assert (=> bs!629382 (= (= (toList!2926 lt!1564525) (Cons!48879 (h!54414 (toList!2926 lt!1564525)) (t!355923 (toList!2926 lt!1564525)))) (= lambda!139564 lambda!139439))))

(declare-fun bs!629383 () Bool)

(assert (= bs!629383 (and b!4351788 b!4351161)))

(assert (=> bs!629383 (= (= (toList!2926 lt!1564525) (t!355923 (toList!2926 lt!1564525))) (= lambda!139564 lambda!139438))))

(declare-fun bs!629384 () Bool)

(assert (= bs!629384 (and b!4351788 b!4351155)))

(assert (=> bs!629384 (= lambda!139564 lambda!139440)))

(assert (=> b!4351788 true))

(declare-fun bs!629385 () Bool)

(declare-fun b!4351789 () Bool)

(assert (= bs!629385 (and b!4351789 b!4351157)))

(declare-fun lambda!139565 () Int)

(assert (=> bs!629385 (= lambda!139565 lambda!139441)))

(declare-fun bs!629386 () Bool)

(assert (= bs!629386 (and b!4351789 b!4351243)))

(assert (=> bs!629386 (= lambda!139565 lambda!139445)))

(declare-fun bs!629387 () Bool)

(assert (= bs!629387 (and b!4351789 b!4351507)))

(assert (=> bs!629387 (= lambda!139565 lambda!139538)))

(declare-fun d!1285575 () Bool)

(declare-fun e!2708091 () Bool)

(assert (=> d!1285575 e!2708091))

(declare-fun res!1787965 () Bool)

(assert (=> d!1285575 (=> (not res!1787965) (not e!2708091))))

(declare-fun lt!1565252 () List!49006)

(assert (=> d!1285575 (= res!1787965 (noDuplicate!598 lt!1565252))))

(assert (=> d!1285575 (= lt!1565252 (getKeysList!110 (toList!2926 lt!1564525)))))

(assert (=> d!1285575 (= (keys!16494 lt!1564525) lt!1565252)))

(declare-fun b!4351787 () Bool)

(declare-fun res!1787964 () Bool)

(assert (=> b!4351787 (=> (not res!1787964) (not e!2708091))))

(assert (=> b!4351787 (= res!1787964 (= (length!52 lt!1565252) (length!53 (toList!2926 lt!1564525))))))

(declare-fun res!1787966 () Bool)

(assert (=> b!4351788 (=> (not res!1787966) (not e!2708091))))

(assert (=> b!4351788 (= res!1787966 (forall!9085 lt!1565252 lambda!139564))))

(assert (=> b!4351789 (= e!2708091 (= (content!7686 lt!1565252) (content!7686 (map!10630 (toList!2926 lt!1564525) lambda!139565))))))

(assert (= (and d!1285575 res!1787965) b!4351787))

(assert (= (and b!4351787 res!1787964) b!4351788))

(assert (= (and b!4351788 res!1787966) b!4351789))

(declare-fun m!4962659 () Bool)

(assert (=> d!1285575 m!4962659))

(assert (=> d!1285575 m!4961231))

(declare-fun m!4962665 () Bool)

(assert (=> b!4351787 m!4962665))

(assert (=> b!4351787 m!4961619))

(declare-fun m!4962671 () Bool)

(assert (=> b!4351788 m!4962671))

(declare-fun m!4962673 () Bool)

(assert (=> b!4351789 m!4962673))

(declare-fun m!4962675 () Bool)

(assert (=> b!4351789 m!4962675))

(assert (=> b!4351789 m!4962675))

(declare-fun m!4962677 () Bool)

(assert (=> b!4351789 m!4962677))

(assert (=> b!4350973 d!1285575))

(declare-fun d!1285579 () Bool)

(declare-fun res!1787967 () Bool)

(declare-fun e!2708092 () Bool)

(assert (=> d!1285579 (=> res!1787967 e!2708092)))

(assert (=> d!1285579 (= res!1787967 (not ((_ is Cons!48879) (_2!27422 lt!1564519))))))

(assert (=> d!1285579 (= (noDuplicateKeys!471 (_2!27422 lt!1564519)) e!2708092)))

(declare-fun b!4351790 () Bool)

(declare-fun e!2708093 () Bool)

(assert (=> b!4351790 (= e!2708092 e!2708093)))

(declare-fun res!1787968 () Bool)

(assert (=> b!4351790 (=> (not res!1787968) (not e!2708093))))

(assert (=> b!4351790 (= res!1787968 (not (containsKey!642 (t!355923 (_2!27422 lt!1564519)) (_1!27421 (h!54414 (_2!27422 lt!1564519))))))))

(declare-fun b!4351791 () Bool)

(assert (=> b!4351791 (= e!2708093 (noDuplicateKeys!471 (t!355923 (_2!27422 lt!1564519))))))

(assert (= (and d!1285579 (not res!1787967)) b!4351790))

(assert (= (and b!4351790 res!1787968) b!4351791))

(declare-fun m!4962679 () Bool)

(assert (=> b!4351790 m!4962679))

(declare-fun m!4962681 () Bool)

(assert (=> b!4351791 m!4962681))

(assert (=> bs!629060 d!1285579))

(declare-fun d!1285581 () Bool)

(declare-fun lt!1565260 () Bool)

(assert (=> d!1285581 (= lt!1565260 (select (content!7686 (keys!16494 (extractMap!530 (toList!2925 lm!1707)))) key!3918))))

(declare-fun e!2708098 () Bool)

(assert (=> d!1285581 (= lt!1565260 e!2708098)))

(declare-fun res!1787973 () Bool)

(assert (=> d!1285581 (=> (not res!1787973) (not e!2708098))))

(assert (=> d!1285581 (= res!1787973 ((_ is Cons!48882) (keys!16494 (extractMap!530 (toList!2925 lm!1707)))))))

(assert (=> d!1285581 (= (contains!11054 (keys!16494 (extractMap!530 (toList!2925 lm!1707))) key!3918) lt!1565260)))

(declare-fun b!4351801 () Bool)

(declare-fun e!2708099 () Bool)

(assert (=> b!4351801 (= e!2708098 e!2708099)))

(declare-fun res!1787972 () Bool)

(assert (=> b!4351801 (=> res!1787972 e!2708099)))

(assert (=> b!4351801 (= res!1787972 (= (h!54419 (keys!16494 (extractMap!530 (toList!2925 lm!1707)))) key!3918))))

(declare-fun b!4351802 () Bool)

(assert (=> b!4351802 (= e!2708099 (contains!11054 (t!355926 (keys!16494 (extractMap!530 (toList!2925 lm!1707)))) key!3918))))

(assert (= (and d!1285581 res!1787973) b!4351801))

(assert (= (and b!4351801 (not res!1787972)) b!4351802))

(assert (=> d!1285581 m!4961495))

(declare-fun m!4962683 () Bool)

(assert (=> d!1285581 m!4962683))

(declare-fun m!4962685 () Bool)

(assert (=> d!1285581 m!4962685))

(declare-fun m!4962687 () Bool)

(assert (=> b!4351802 m!4962687))

(assert (=> b!4351059 d!1285581))

(declare-fun bs!629394 () Bool)

(declare-fun b!4351804 () Bool)

(assert (= bs!629394 (and b!4351804 b!4351240)))

(declare-fun lambda!139567 () Int)

(assert (=> bs!629394 (= (= (toList!2926 (extractMap!530 (toList!2925 lm!1707))) (Cons!48879 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))))) (= lambda!139567 lambda!139443))))

(declare-fun bs!629396 () Bool)

(assert (= bs!629396 (and b!4351804 b!4351247)))

(assert (=> bs!629396 (= (= (toList!2926 (extractMap!530 (toList!2925 lm!1707))) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) (= lambda!139567 lambda!139442))))

(declare-fun bs!629398 () Bool)

(assert (= bs!629398 (and b!4351804 b!4351506)))

(assert (=> bs!629398 (= (= (toList!2926 (extractMap!530 (toList!2925 lm!1707))) (toList!2926 lt!1564520)) (= lambda!139567 lambda!139537))))

(declare-fun bs!629400 () Bool)

(assert (= bs!629400 (and b!4351804 b!4351241)))

(assert (=> bs!629400 (= lambda!139567 lambda!139444)))

(declare-fun bs!629401 () Bool)

(assert (= bs!629401 (and b!4351804 b!4351788)))

(assert (=> bs!629401 (= (= (toList!2926 (extractMap!530 (toList!2925 lm!1707))) (toList!2926 lt!1564525)) (= lambda!139567 lambda!139564))))

(declare-fun bs!629402 () Bool)

(assert (= bs!629402 (and b!4351804 b!4351154)))

(assert (=> bs!629402 (= (= (toList!2926 (extractMap!530 (toList!2925 lm!1707))) (Cons!48879 (h!54414 (toList!2926 lt!1564525)) (t!355923 (toList!2926 lt!1564525)))) (= lambda!139567 lambda!139439))))

(declare-fun bs!629403 () Bool)

(assert (= bs!629403 (and b!4351804 b!4351161)))

(assert (=> bs!629403 (= (= (toList!2926 (extractMap!530 (toList!2925 lm!1707))) (t!355923 (toList!2926 lt!1564525))) (= lambda!139567 lambda!139438))))

(declare-fun bs!629404 () Bool)

(assert (= bs!629404 (and b!4351804 b!4351155)))

(assert (=> bs!629404 (= (= (toList!2926 (extractMap!530 (toList!2925 lm!1707))) (toList!2926 lt!1564525)) (= lambda!139567 lambda!139440))))

(assert (=> b!4351804 true))

(declare-fun bs!629407 () Bool)

(declare-fun b!4351805 () Bool)

(assert (= bs!629407 (and b!4351805 b!4351157)))

(declare-fun lambda!139569 () Int)

(assert (=> bs!629407 (= lambda!139569 lambda!139441)))

(declare-fun bs!629411 () Bool)

(assert (= bs!629411 (and b!4351805 b!4351243)))

(assert (=> bs!629411 (= lambda!139569 lambda!139445)))

(declare-fun bs!629412 () Bool)

(assert (= bs!629412 (and b!4351805 b!4351507)))

(assert (=> bs!629412 (= lambda!139569 lambda!139538)))

(declare-fun bs!629414 () Bool)

(assert (= bs!629414 (and b!4351805 b!4351789)))

(assert (=> bs!629414 (= lambda!139569 lambda!139565)))

(declare-fun d!1285583 () Bool)

(declare-fun e!2708100 () Bool)

(assert (=> d!1285583 e!2708100))

(declare-fun res!1787975 () Bool)

(assert (=> d!1285583 (=> (not res!1787975) (not e!2708100))))

(declare-fun lt!1565261 () List!49006)

(assert (=> d!1285583 (= res!1787975 (noDuplicate!598 lt!1565261))))

(assert (=> d!1285583 (= lt!1565261 (getKeysList!110 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))))))

(assert (=> d!1285583 (= (keys!16494 (extractMap!530 (toList!2925 lm!1707))) lt!1565261)))

(declare-fun b!4351803 () Bool)

(declare-fun res!1787974 () Bool)

(assert (=> b!4351803 (=> (not res!1787974) (not e!2708100))))

(assert (=> b!4351803 (= res!1787974 (= (length!52 lt!1565261) (length!53 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))))))

(declare-fun res!1787976 () Bool)

(assert (=> b!4351804 (=> (not res!1787976) (not e!2708100))))

(assert (=> b!4351804 (= res!1787976 (forall!9085 lt!1565261 lambda!139567))))

(assert (=> b!4351805 (= e!2708100 (= (content!7686 lt!1565261) (content!7686 (map!10630 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) lambda!139569))))))

(assert (= (and d!1285583 res!1787975) b!4351803))

(assert (= (and b!4351803 res!1787974) b!4351804))

(assert (= (and b!4351804 res!1787976) b!4351805))

(declare-fun m!4962689 () Bool)

(assert (=> d!1285583 m!4962689))

(assert (=> d!1285583 m!4961499))

(declare-fun m!4962691 () Bool)

(assert (=> b!4351803 m!4962691))

(assert (=> b!4351803 m!4961693))

(declare-fun m!4962693 () Bool)

(assert (=> b!4351804 m!4962693))

(declare-fun m!4962695 () Bool)

(assert (=> b!4351805 m!4962695))

(declare-fun m!4962697 () Bool)

(assert (=> b!4351805 m!4962697))

(assert (=> b!4351805 m!4962697))

(declare-fun m!4962699 () Bool)

(assert (=> b!4351805 m!4962699))

(assert (=> b!4351059 d!1285583))

(declare-fun d!1285585 () Bool)

(declare-fun lt!1565262 () Bool)

(assert (=> d!1285585 (= lt!1565262 (select (content!7686 (keys!16494 lt!1564525)) key!3918))))

(declare-fun e!2708101 () Bool)

(assert (=> d!1285585 (= lt!1565262 e!2708101)))

(declare-fun res!1787978 () Bool)

(assert (=> d!1285585 (=> (not res!1787978) (not e!2708101))))

(assert (=> d!1285585 (= res!1787978 ((_ is Cons!48882) (keys!16494 lt!1564525)))))

(assert (=> d!1285585 (= (contains!11054 (keys!16494 lt!1564525) key!3918) lt!1565262)))

(declare-fun b!4351806 () Bool)

(declare-fun e!2708102 () Bool)

(assert (=> b!4351806 (= e!2708101 e!2708102)))

(declare-fun res!1787977 () Bool)

(assert (=> b!4351806 (=> res!1787977 e!2708102)))

(assert (=> b!4351806 (= res!1787977 (= (h!54419 (keys!16494 lt!1564525)) key!3918))))

(declare-fun b!4351807 () Bool)

(assert (=> b!4351807 (= e!2708102 (contains!11054 (t!355926 (keys!16494 lt!1564525)) key!3918))))

(assert (= (and d!1285585 res!1787978) b!4351806))

(assert (= (and b!4351806 (not res!1787977)) b!4351807))

(assert (=> d!1285585 m!4961227))

(declare-fun m!4962701 () Bool)

(assert (=> d!1285585 m!4962701))

(declare-fun m!4962703 () Bool)

(assert (=> d!1285585 m!4962703))

(declare-fun m!4962705 () Bool)

(assert (=> b!4351807 m!4962705))

(assert (=> b!4350967 d!1285585))

(assert (=> b!4350967 d!1285575))

(declare-fun d!1285587 () Bool)

(declare-fun e!2708104 () Bool)

(assert (=> d!1285587 e!2708104))

(declare-fun res!1787979 () Bool)

(assert (=> d!1285587 (=> res!1787979 e!2708104)))

(declare-fun lt!1565265 () Bool)

(assert (=> d!1285587 (= res!1787979 (not lt!1565265))))

(declare-fun lt!1565264 () Bool)

(assert (=> d!1285587 (= lt!1565265 lt!1565264)))

(declare-fun lt!1565266 () Unit!71045)

(declare-fun e!2708103 () Unit!71045)

(assert (=> d!1285587 (= lt!1565266 e!2708103)))

(declare-fun c!739811 () Bool)

(assert (=> d!1285587 (= c!739811 lt!1565264)))

(assert (=> d!1285587 (= lt!1565264 (containsKey!643 (toList!2925 lt!1564552) (_1!27422 lt!1564522)))))

(assert (=> d!1285587 (= (contains!11052 lt!1564552 (_1!27422 lt!1564522)) lt!1565265)))

(declare-fun b!4351808 () Bool)

(declare-fun lt!1565263 () Unit!71045)

(assert (=> b!4351808 (= e!2708103 lt!1565263)))

(assert (=> b!4351808 (= lt!1565263 (lemmaContainsKeyImpliesGetValueByKeyDefined!333 (toList!2925 lt!1564552) (_1!27422 lt!1564522)))))

(assert (=> b!4351808 (isDefined!7730 (getValueByKey!421 (toList!2925 lt!1564552) (_1!27422 lt!1564522)))))

(declare-fun b!4351809 () Bool)

(declare-fun Unit!71165 () Unit!71045)

(assert (=> b!4351809 (= e!2708103 Unit!71165)))

(declare-fun b!4351810 () Bool)

(assert (=> b!4351810 (= e!2708104 (isDefined!7730 (getValueByKey!421 (toList!2925 lt!1564552) (_1!27422 lt!1564522))))))

(assert (= (and d!1285587 c!739811) b!4351808))

(assert (= (and d!1285587 (not c!739811)) b!4351809))

(assert (= (and d!1285587 (not res!1787979)) b!4351810))

(declare-fun m!4962707 () Bool)

(assert (=> d!1285587 m!4962707))

(declare-fun m!4962709 () Bool)

(assert (=> b!4351808 m!4962709))

(assert (=> b!4351808 m!4961127))

(assert (=> b!4351808 m!4961127))

(declare-fun m!4962711 () Bool)

(assert (=> b!4351808 m!4962711))

(assert (=> b!4351810 m!4961127))

(assert (=> b!4351810 m!4961127))

(assert (=> b!4351810 m!4962711))

(assert (=> d!1285073 d!1285587))

(declare-fun b!4351814 () Bool)

(declare-fun e!2708106 () Option!10435)

(assert (=> b!4351814 (= e!2708106 None!10434)))

(declare-fun b!4351811 () Bool)

(declare-fun e!2708105 () Option!10435)

(assert (=> b!4351811 (= e!2708105 (Some!10434 (_2!27422 (h!54415 lt!1564551))))))

(declare-fun b!4351812 () Bool)

(assert (=> b!4351812 (= e!2708105 e!2708106)))

(declare-fun c!739813 () Bool)

(assert (=> b!4351812 (= c!739813 (and ((_ is Cons!48880) lt!1564551) (not (= (_1!27422 (h!54415 lt!1564551)) (_1!27422 lt!1564522)))))))

(declare-fun b!4351813 () Bool)

(assert (=> b!4351813 (= e!2708106 (getValueByKey!421 (t!355924 lt!1564551) (_1!27422 lt!1564522)))))

(declare-fun d!1285589 () Bool)

(declare-fun c!739812 () Bool)

(assert (=> d!1285589 (= c!739812 (and ((_ is Cons!48880) lt!1564551) (= (_1!27422 (h!54415 lt!1564551)) (_1!27422 lt!1564522))))))

(assert (=> d!1285589 (= (getValueByKey!421 lt!1564551 (_1!27422 lt!1564522)) e!2708105)))

(assert (= (and d!1285589 c!739812) b!4351811))

(assert (= (and d!1285589 (not c!739812)) b!4351812))

(assert (= (and b!4351812 c!739813) b!4351813))

(assert (= (and b!4351812 (not c!739813)) b!4351814))

(declare-fun m!4962713 () Bool)

(assert (=> b!4351813 m!4962713))

(assert (=> d!1285073 d!1285589))

(declare-fun d!1285591 () Bool)

(assert (=> d!1285591 (= (getValueByKey!421 lt!1564551 (_1!27422 lt!1564522)) (Some!10434 (_2!27422 lt!1564522)))))

(declare-fun lt!1565267 () Unit!71045)

(assert (=> d!1285591 (= lt!1565267 (choose!26776 lt!1564551 (_1!27422 lt!1564522) (_2!27422 lt!1564522)))))

(declare-fun e!2708107 () Bool)

(assert (=> d!1285591 e!2708107))

(declare-fun res!1787980 () Bool)

(assert (=> d!1285591 (=> (not res!1787980) (not e!2708107))))

(assert (=> d!1285591 (= res!1787980 (isStrictlySorted!88 lt!1564551))))

(assert (=> d!1285591 (= (lemmaContainsTupThenGetReturnValue!195 lt!1564551 (_1!27422 lt!1564522) (_2!27422 lt!1564522)) lt!1565267)))

(declare-fun b!4351815 () Bool)

(declare-fun res!1787981 () Bool)

(assert (=> b!4351815 (=> (not res!1787981) (not e!2708107))))

(assert (=> b!4351815 (= res!1787981 (containsKey!643 lt!1564551 (_1!27422 lt!1564522)))))

(declare-fun b!4351816 () Bool)

(assert (=> b!4351816 (= e!2708107 (contains!11050 lt!1564551 (tuple2!48257 (_1!27422 lt!1564522) (_2!27422 lt!1564522))))))

(assert (= (and d!1285591 res!1787980) b!4351815))

(assert (= (and b!4351815 res!1787981) b!4351816))

(assert (=> d!1285591 m!4961121))

(declare-fun m!4962715 () Bool)

(assert (=> d!1285591 m!4962715))

(declare-fun m!4962717 () Bool)

(assert (=> d!1285591 m!4962717))

(declare-fun m!4962719 () Bool)

(assert (=> b!4351815 m!4962719))

(declare-fun m!4962721 () Bool)

(assert (=> b!4351816 m!4962721))

(assert (=> d!1285073 d!1285591))

(declare-fun b!4351817 () Bool)

(declare-fun e!2708110 () List!49004)

(assert (=> b!4351817 (= e!2708110 (insertStrictlySorted!118 (t!355924 (toList!2925 lm!1707)) (_1!27422 lt!1564522) (_2!27422 lt!1564522)))))

(declare-fun bm!302465 () Bool)

(declare-fun call!302470 () List!49004)

(declare-fun call!302471 () List!49004)

(assert (=> bm!302465 (= call!302470 call!302471)))

(declare-fun b!4351818 () Bool)

(declare-fun e!2708112 () List!49004)

(declare-fun call!302472 () List!49004)

(assert (=> b!4351818 (= e!2708112 call!302472)))

(declare-fun b!4351819 () Bool)

(declare-fun e!2708109 () List!49004)

(assert (=> b!4351819 (= e!2708109 call!302470)))

(declare-fun bm!302466 () Bool)

(assert (=> bm!302466 (= call!302471 call!302472)))

(declare-fun c!739816 () Bool)

(declare-fun bm!302467 () Bool)

(assert (=> bm!302467 (= call!302472 ($colon$colon!680 e!2708110 (ite c!739816 (h!54415 (toList!2925 lm!1707)) (tuple2!48257 (_1!27422 lt!1564522) (_2!27422 lt!1564522)))))))

(declare-fun c!739814 () Bool)

(assert (=> bm!302467 (= c!739814 c!739816)))

(declare-fun b!4351821 () Bool)

(assert (=> b!4351821 (= e!2708109 call!302470)))

(declare-fun b!4351822 () Bool)

(declare-fun e!2708111 () List!49004)

(assert (=> b!4351822 (= e!2708111 call!302471)))

(declare-fun b!4351823 () Bool)

(assert (=> b!4351823 (= e!2708112 e!2708111)))

(declare-fun c!739817 () Bool)

(assert (=> b!4351823 (= c!739817 (and ((_ is Cons!48880) (toList!2925 lm!1707)) (= (_1!27422 (h!54415 (toList!2925 lm!1707))) (_1!27422 lt!1564522))))))

(declare-fun b!4351824 () Bool)

(declare-fun e!2708108 () Bool)

(declare-fun lt!1565268 () List!49004)

(assert (=> b!4351824 (= e!2708108 (contains!11050 lt!1565268 (tuple2!48257 (_1!27422 lt!1564522) (_2!27422 lt!1564522))))))

(declare-fun b!4351825 () Bool)

(declare-fun res!1787982 () Bool)

(assert (=> b!4351825 (=> (not res!1787982) (not e!2708108))))

(assert (=> b!4351825 (= res!1787982 (containsKey!643 lt!1565268 (_1!27422 lt!1564522)))))

(declare-fun b!4351826 () Bool)

(declare-fun c!739815 () Bool)

(assert (=> b!4351826 (= e!2708110 (ite c!739817 (t!355924 (toList!2925 lm!1707)) (ite c!739815 (Cons!48880 (h!54415 (toList!2925 lm!1707)) (t!355924 (toList!2925 lm!1707))) Nil!48880)))))

(declare-fun d!1285593 () Bool)

(assert (=> d!1285593 e!2708108))

(declare-fun res!1787983 () Bool)

(assert (=> d!1285593 (=> (not res!1787983) (not e!2708108))))

(assert (=> d!1285593 (= res!1787983 (isStrictlySorted!88 lt!1565268))))

(assert (=> d!1285593 (= lt!1565268 e!2708112)))

(assert (=> d!1285593 (= c!739816 (and ((_ is Cons!48880) (toList!2925 lm!1707)) (bvslt (_1!27422 (h!54415 (toList!2925 lm!1707))) (_1!27422 lt!1564522))))))

(assert (=> d!1285593 (isStrictlySorted!88 (toList!2925 lm!1707))))

(assert (=> d!1285593 (= (insertStrictlySorted!118 (toList!2925 lm!1707) (_1!27422 lt!1564522) (_2!27422 lt!1564522)) lt!1565268)))

(declare-fun b!4351820 () Bool)

(assert (=> b!4351820 (= c!739815 (and ((_ is Cons!48880) (toList!2925 lm!1707)) (bvsgt (_1!27422 (h!54415 (toList!2925 lm!1707))) (_1!27422 lt!1564522))))))

(assert (=> b!4351820 (= e!2708111 e!2708109)))

(assert (= (and d!1285593 c!739816) b!4351818))

(assert (= (and d!1285593 (not c!739816)) b!4351823))

(assert (= (and b!4351823 c!739817) b!4351822))

(assert (= (and b!4351823 (not c!739817)) b!4351820))

(assert (= (and b!4351820 c!739815) b!4351821))

(assert (= (and b!4351820 (not c!739815)) b!4351819))

(assert (= (or b!4351821 b!4351819) bm!302465))

(assert (= (or b!4351822 bm!302465) bm!302466))

(assert (= (or b!4351818 bm!302466) bm!302467))

(assert (= (and bm!302467 c!739814) b!4351817))

(assert (= (and bm!302467 (not c!739814)) b!4351826))

(assert (= (and d!1285593 res!1787983) b!4351825))

(assert (= (and b!4351825 res!1787982) b!4351824))

(declare-fun m!4962747 () Bool)

(assert (=> b!4351817 m!4962747))

(declare-fun m!4962749 () Bool)

(assert (=> b!4351825 m!4962749))

(declare-fun m!4962751 () Bool)

(assert (=> b!4351824 m!4962751))

(declare-fun m!4962753 () Bool)

(assert (=> bm!302467 m!4962753))

(declare-fun m!4962755 () Bool)

(assert (=> d!1285593 m!4962755))

(assert (=> d!1285593 m!4961151))

(assert (=> d!1285073 d!1285593))

(declare-fun d!1285597 () Bool)

(declare-fun c!739820 () Bool)

(assert (=> d!1285597 (= c!739820 ((_ is Nil!48879) (toList!2926 (extractMap!530 (toList!2925 (+!599 lt!1564518 lt!1564522))))))))

(declare-fun e!2708119 () (InoxSet tuple2!48254))

(assert (=> d!1285597 (= (content!7683 (toList!2926 (extractMap!530 (toList!2925 (+!599 lt!1564518 lt!1564522))))) e!2708119)))

(declare-fun b!4351835 () Bool)

(assert (=> b!4351835 (= e!2708119 ((as const (Array tuple2!48254 Bool)) false))))

(declare-fun b!4351836 () Bool)

(assert (=> b!4351836 (= e!2708119 ((_ map or) (store ((as const (Array tuple2!48254 Bool)) false) (h!54414 (toList!2926 (extractMap!530 (toList!2925 (+!599 lt!1564518 lt!1564522))))) true) (content!7683 (t!355923 (toList!2926 (extractMap!530 (toList!2925 (+!599 lt!1564518 lt!1564522))))))))))

(assert (= (and d!1285597 c!739820) b!4351835))

(assert (= (and d!1285597 (not c!739820)) b!4351836))

(declare-fun m!4962757 () Bool)

(assert (=> b!4351836 m!4962757))

(declare-fun m!4962759 () Bool)

(assert (=> b!4351836 m!4962759))

(assert (=> d!1285125 d!1285597))

(declare-fun d!1285599 () Bool)

(declare-fun c!739821 () Bool)

(assert (=> d!1285599 (= c!739821 ((_ is Nil!48879) (toList!2926 (+!600 lt!1564525 lt!1564527))))))

(declare-fun e!2708121 () (InoxSet tuple2!48254))

(assert (=> d!1285599 (= (content!7683 (toList!2926 (+!600 lt!1564525 lt!1564527))) e!2708121)))

(declare-fun b!4351837 () Bool)

(assert (=> b!4351837 (= e!2708121 ((as const (Array tuple2!48254 Bool)) false))))

(declare-fun b!4351839 () Bool)

(assert (=> b!4351839 (= e!2708121 ((_ map or) (store ((as const (Array tuple2!48254 Bool)) false) (h!54414 (toList!2926 (+!600 lt!1564525 lt!1564527))) true) (content!7683 (t!355923 (toList!2926 (+!600 lt!1564525 lt!1564527))))))))

(assert (= (and d!1285599 c!739821) b!4351837))

(assert (= (and d!1285599 (not c!739821)) b!4351839))

(declare-fun m!4962761 () Bool)

(assert (=> b!4351839 m!4962761))

(declare-fun m!4962763 () Bool)

(assert (=> b!4351839 m!4962763))

(assert (=> d!1285125 d!1285599))

(declare-fun b!4351844 () Bool)

(declare-fun e!2708124 () Option!10435)

(assert (=> b!4351844 (= e!2708124 None!10434)))

(declare-fun b!4351841 () Bool)

(declare-fun e!2708123 () Option!10435)

(assert (=> b!4351841 (= e!2708123 (Some!10434 (_2!27422 (h!54415 (toList!2925 lt!1564659)))))))

(declare-fun b!4351842 () Bool)

(assert (=> b!4351842 (= e!2708123 e!2708124)))

(declare-fun c!739823 () Bool)

(assert (=> b!4351842 (= c!739823 (and ((_ is Cons!48880) (toList!2925 lt!1564659)) (not (= (_1!27422 (h!54415 (toList!2925 lt!1564659))) (_1!27422 lt!1564522)))))))

(declare-fun b!4351843 () Bool)

(assert (=> b!4351843 (= e!2708124 (getValueByKey!421 (t!355924 (toList!2925 lt!1564659)) (_1!27422 lt!1564522)))))

(declare-fun d!1285601 () Bool)

(declare-fun c!739822 () Bool)

(assert (=> d!1285601 (= c!739822 (and ((_ is Cons!48880) (toList!2925 lt!1564659)) (= (_1!27422 (h!54415 (toList!2925 lt!1564659))) (_1!27422 lt!1564522))))))

(assert (=> d!1285601 (= (getValueByKey!421 (toList!2925 lt!1564659) (_1!27422 lt!1564522)) e!2708123)))

(assert (= (and d!1285601 c!739822) b!4351841))

(assert (= (and d!1285601 (not c!739822)) b!4351842))

(assert (= (and b!4351842 c!739823) b!4351843))

(assert (= (and b!4351842 (not c!739823)) b!4351844))

(declare-fun m!4962767 () Bool)

(assert (=> b!4351843 m!4962767))

(assert (=> b!4350984 d!1285601))

(declare-fun b!4351852 () Bool)

(declare-fun e!2708128 () Option!10437)

(assert (=> b!4351852 (= e!2708128 None!10436)))

(declare-fun b!4351849 () Bool)

(declare-fun e!2708127 () Option!10437)

(assert (=> b!4351849 (= e!2708127 (Some!10436 (_2!27421 (h!54414 (toList!2926 lt!1564654)))))))

(declare-fun b!4351850 () Bool)

(assert (=> b!4351850 (= e!2708127 e!2708128)))

(declare-fun c!739827 () Bool)

(assert (=> b!4351850 (= c!739827 (and ((_ is Cons!48879) (toList!2926 lt!1564654)) (not (= (_1!27421 (h!54414 (toList!2926 lt!1564654))) (_1!27421 lt!1564527)))))))

(declare-fun b!4351851 () Bool)

(assert (=> b!4351851 (= e!2708128 (getValueByKey!423 (t!355923 (toList!2926 lt!1564654)) (_1!27421 lt!1564527)))))

(declare-fun d!1285607 () Bool)

(declare-fun c!739826 () Bool)

(assert (=> d!1285607 (= c!739826 (and ((_ is Cons!48879) (toList!2926 lt!1564654)) (= (_1!27421 (h!54414 (toList!2926 lt!1564654))) (_1!27421 lt!1564527))))))

(assert (=> d!1285607 (= (getValueByKey!423 (toList!2926 lt!1564654) (_1!27421 lt!1564527)) e!2708127)))

(assert (= (and d!1285607 c!739826) b!4351849))

(assert (= (and d!1285607 (not c!739826)) b!4351850))

(assert (= (and b!4351850 c!739827) b!4351851))

(assert (= (and b!4351850 (not c!739827)) b!4351852))

(declare-fun m!4962771 () Bool)

(assert (=> b!4351851 m!4962771))

(assert (=> b!4350982 d!1285607))

(assert (=> b!4350969 d!1285585))

(assert (=> b!4350969 d!1285575))

(declare-fun d!1285611 () Bool)

(declare-fun res!1787990 () Bool)

(declare-fun e!2708129 () Bool)

(assert (=> d!1285611 (=> res!1787990 e!2708129)))

(assert (=> d!1285611 (= res!1787990 (not ((_ is Cons!48879) (_2!27422 (tuple2!48257 hash!377 newBucket!200)))))))

(assert (=> d!1285611 (= (noDuplicateKeys!471 (_2!27422 (tuple2!48257 hash!377 newBucket!200))) e!2708129)))

(declare-fun b!4351853 () Bool)

(declare-fun e!2708130 () Bool)

(assert (=> b!4351853 (= e!2708129 e!2708130)))

(declare-fun res!1787991 () Bool)

(assert (=> b!4351853 (=> (not res!1787991) (not e!2708130))))

(assert (=> b!4351853 (= res!1787991 (not (containsKey!642 (t!355923 (_2!27422 (tuple2!48257 hash!377 newBucket!200))) (_1!27421 (h!54414 (_2!27422 (tuple2!48257 hash!377 newBucket!200)))))))))

(declare-fun b!4351854 () Bool)

(assert (=> b!4351854 (= e!2708130 (noDuplicateKeys!471 (t!355923 (_2!27422 (tuple2!48257 hash!377 newBucket!200)))))))

(assert (= (and d!1285611 (not res!1787990)) b!4351853))

(assert (= (and b!4351853 res!1787991) b!4351854))

(declare-fun m!4962775 () Bool)

(assert (=> b!4351853 m!4962775))

(declare-fun m!4962777 () Bool)

(assert (=> b!4351854 m!4962777))

(assert (=> bs!629063 d!1285611))

(declare-fun d!1285615 () Bool)

(assert (=> d!1285615 (isDefined!7732 (getValueByKey!423 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918))))

(declare-fun lt!1565269 () Unit!71045)

(assert (=> d!1285615 (= lt!1565269 (choose!26782 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918))))

(assert (=> d!1285615 (invariantList!662 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))))

(assert (=> d!1285615 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!335 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918) lt!1565269)))

(declare-fun bs!629436 () Bool)

(assert (= bs!629436 d!1285615))

(assert (=> bs!629436 m!4961501))

(assert (=> bs!629436 m!4961501))

(assert (=> bs!629436 m!4961503))

(declare-fun m!4962779 () Bool)

(assert (=> bs!629436 m!4962779))

(assert (=> bs!629436 m!4961689))

(assert (=> b!4351061 d!1285615))

(assert (=> b!4351061 d!1285403))

(assert (=> b!4351061 d!1285405))

(declare-fun d!1285617 () Bool)

(assert (=> d!1285617 (contains!11054 (getKeysList!110 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) key!3918)))

(declare-fun lt!1565270 () Unit!71045)

(assert (=> d!1285617 (= lt!1565270 (choose!26783 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918))))

(assert (=> d!1285617 (invariantList!662 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))))

(assert (=> d!1285617 (= (lemmaInListThenGetKeysListContains!107 (toList!2926 (extractMap!530 (toList!2925 lm!1707))) key!3918) lt!1565270)))

(declare-fun bs!629437 () Bool)

(assert (= bs!629437 d!1285617))

(assert (=> bs!629437 m!4961499))

(assert (=> bs!629437 m!4961499))

(declare-fun m!4962785 () Bool)

(assert (=> bs!629437 m!4962785))

(declare-fun m!4962787 () Bool)

(assert (=> bs!629437 m!4962787))

(assert (=> bs!629437 m!4961689))

(assert (=> b!4351061 d!1285617))

(assert (=> b!4351063 d!1285583))

(declare-fun bs!629438 () Bool)

(declare-fun b!4351865 () Bool)

(assert (= bs!629438 (and b!4351865 b!4351240)))

(declare-fun lambda!139572 () Int)

(assert (=> bs!629438 (= (= (t!355923 (toList!2926 lt!1564520)) (Cons!48879 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))))) (= lambda!139572 lambda!139443))))

(declare-fun bs!629439 () Bool)

(assert (= bs!629439 (and b!4351865 b!4351247)))

(assert (=> bs!629439 (= (= (t!355923 (toList!2926 lt!1564520)) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) (= lambda!139572 lambda!139442))))

(declare-fun bs!629440 () Bool)

(assert (= bs!629440 (and b!4351865 b!4351804)))

(assert (=> bs!629440 (= (= (t!355923 (toList!2926 lt!1564520)) (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (= lambda!139572 lambda!139567))))

(declare-fun bs!629441 () Bool)

(assert (= bs!629441 (and b!4351865 b!4351506)))

(assert (=> bs!629441 (= (= (t!355923 (toList!2926 lt!1564520)) (toList!2926 lt!1564520)) (= lambda!139572 lambda!139537))))

(declare-fun bs!629442 () Bool)

(assert (= bs!629442 (and b!4351865 b!4351241)))

(assert (=> bs!629442 (= (= (t!355923 (toList!2926 lt!1564520)) (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (= lambda!139572 lambda!139444))))

(declare-fun bs!629443 () Bool)

(assert (= bs!629443 (and b!4351865 b!4351788)))

(assert (=> bs!629443 (= (= (t!355923 (toList!2926 lt!1564520)) (toList!2926 lt!1564525)) (= lambda!139572 lambda!139564))))

(declare-fun bs!629444 () Bool)

(assert (= bs!629444 (and b!4351865 b!4351154)))

(assert (=> bs!629444 (= (= (t!355923 (toList!2926 lt!1564520)) (Cons!48879 (h!54414 (toList!2926 lt!1564525)) (t!355923 (toList!2926 lt!1564525)))) (= lambda!139572 lambda!139439))))

(declare-fun bs!629445 () Bool)

(assert (= bs!629445 (and b!4351865 b!4351161)))

(assert (=> bs!629445 (= (= (t!355923 (toList!2926 lt!1564520)) (t!355923 (toList!2926 lt!1564525))) (= lambda!139572 lambda!139438))))

(declare-fun bs!629446 () Bool)

(assert (= bs!629446 (and b!4351865 b!4351155)))

(assert (=> bs!629446 (= (= (t!355923 (toList!2926 lt!1564520)) (toList!2926 lt!1564525)) (= lambda!139572 lambda!139440))))

(assert (=> b!4351865 true))

(declare-fun bs!629447 () Bool)

(declare-fun b!4351858 () Bool)

(assert (= bs!629447 (and b!4351858 b!4351240)))

(declare-fun lambda!139573 () Int)

(assert (=> bs!629447 (= (= (Cons!48879 (h!54414 (toList!2926 lt!1564520)) (t!355923 (toList!2926 lt!1564520))) (Cons!48879 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))))) (= lambda!139573 lambda!139443))))

(declare-fun bs!629448 () Bool)

(assert (= bs!629448 (and b!4351858 b!4351247)))

(assert (=> bs!629448 (= (= (Cons!48879 (h!54414 (toList!2926 lt!1564520)) (t!355923 (toList!2926 lt!1564520))) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) (= lambda!139573 lambda!139442))))

(declare-fun bs!629449 () Bool)

(assert (= bs!629449 (and b!4351858 b!4351804)))

(assert (=> bs!629449 (= (= (Cons!48879 (h!54414 (toList!2926 lt!1564520)) (t!355923 (toList!2926 lt!1564520))) (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (= lambda!139573 lambda!139567))))

(declare-fun bs!629450 () Bool)

(assert (= bs!629450 (and b!4351858 b!4351506)))

(assert (=> bs!629450 (= (= (Cons!48879 (h!54414 (toList!2926 lt!1564520)) (t!355923 (toList!2926 lt!1564520))) (toList!2926 lt!1564520)) (= lambda!139573 lambda!139537))))

(declare-fun bs!629451 () Bool)

(assert (= bs!629451 (and b!4351858 b!4351865)))

(assert (=> bs!629451 (= (= (Cons!48879 (h!54414 (toList!2926 lt!1564520)) (t!355923 (toList!2926 lt!1564520))) (t!355923 (toList!2926 lt!1564520))) (= lambda!139573 lambda!139572))))

(declare-fun bs!629452 () Bool)

(assert (= bs!629452 (and b!4351858 b!4351241)))

(assert (=> bs!629452 (= (= (Cons!48879 (h!54414 (toList!2926 lt!1564520)) (t!355923 (toList!2926 lt!1564520))) (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (= lambda!139573 lambda!139444))))

(declare-fun bs!629453 () Bool)

(assert (= bs!629453 (and b!4351858 b!4351788)))

(assert (=> bs!629453 (= (= (Cons!48879 (h!54414 (toList!2926 lt!1564520)) (t!355923 (toList!2926 lt!1564520))) (toList!2926 lt!1564525)) (= lambda!139573 lambda!139564))))

(declare-fun bs!629454 () Bool)

(assert (= bs!629454 (and b!4351858 b!4351154)))

(assert (=> bs!629454 (= (= (Cons!48879 (h!54414 (toList!2926 lt!1564520)) (t!355923 (toList!2926 lt!1564520))) (Cons!48879 (h!54414 (toList!2926 lt!1564525)) (t!355923 (toList!2926 lt!1564525)))) (= lambda!139573 lambda!139439))))

(declare-fun bs!629456 () Bool)

(assert (= bs!629456 (and b!4351858 b!4351161)))

(assert (=> bs!629456 (= (= (Cons!48879 (h!54414 (toList!2926 lt!1564520)) (t!355923 (toList!2926 lt!1564520))) (t!355923 (toList!2926 lt!1564525))) (= lambda!139573 lambda!139438))))

(declare-fun bs!629457 () Bool)

(assert (= bs!629457 (and b!4351858 b!4351155)))

(assert (=> bs!629457 (= (= (Cons!48879 (h!54414 (toList!2926 lt!1564520)) (t!355923 (toList!2926 lt!1564520))) (toList!2926 lt!1564525)) (= lambda!139573 lambda!139440))))

(assert (=> b!4351858 true))

(declare-fun bs!629458 () Bool)

(declare-fun b!4351859 () Bool)

(assert (= bs!629458 (and b!4351859 b!4351240)))

(declare-fun lambda!139574 () Int)

(assert (=> bs!629458 (= (= (toList!2926 lt!1564520) (Cons!48879 (h!54414 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707)))))) (= lambda!139574 lambda!139443))))

(declare-fun bs!629459 () Bool)

(assert (= bs!629459 (and b!4351859 b!4351247)))

(assert (=> bs!629459 (= (= (toList!2926 lt!1564520) (t!355923 (toList!2926 (extractMap!530 (toList!2925 lm!1707))))) (= lambda!139574 lambda!139442))))

(declare-fun bs!629460 () Bool)

(assert (= bs!629460 (and b!4351859 b!4351804)))

(assert (=> bs!629460 (= (= (toList!2926 lt!1564520) (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (= lambda!139574 lambda!139567))))

(declare-fun bs!629461 () Bool)

(assert (= bs!629461 (and b!4351859 b!4351506)))

(assert (=> bs!629461 (= lambda!139574 lambda!139537)))

(declare-fun bs!629462 () Bool)

(assert (= bs!629462 (and b!4351859 b!4351865)))

(assert (=> bs!629462 (= (= (toList!2926 lt!1564520) (t!355923 (toList!2926 lt!1564520))) (= lambda!139574 lambda!139572))))

(declare-fun bs!629463 () Bool)

(assert (= bs!629463 (and b!4351859 b!4351241)))

(assert (=> bs!629463 (= (= (toList!2926 lt!1564520) (toList!2926 (extractMap!530 (toList!2925 lm!1707)))) (= lambda!139574 lambda!139444))))

(declare-fun bs!629464 () Bool)

(assert (= bs!629464 (and b!4351859 b!4351788)))

(assert (=> bs!629464 (= (= (toList!2926 lt!1564520) (toList!2926 lt!1564525)) (= lambda!139574 lambda!139564))))

(declare-fun bs!629465 () Bool)

(assert (= bs!629465 (and b!4351859 b!4351154)))

(assert (=> bs!629465 (= (= (toList!2926 lt!1564520) (Cons!48879 (h!54414 (toList!2926 lt!1564525)) (t!355923 (toList!2926 lt!1564525)))) (= lambda!139574 lambda!139439))))

(declare-fun bs!629466 () Bool)

(assert (= bs!629466 (and b!4351859 b!4351858)))

(assert (=> bs!629466 (= (= (toList!2926 lt!1564520) (Cons!48879 (h!54414 (toList!2926 lt!1564520)) (t!355923 (toList!2926 lt!1564520)))) (= lambda!139574 lambda!139573))))

(declare-fun bs!629467 () Bool)

(assert (= bs!629467 (and b!4351859 b!4351161)))

(assert (=> bs!629467 (= (= (toList!2926 lt!1564520) (t!355923 (toList!2926 lt!1564525))) (= lambda!139574 lambda!139438))))

(declare-fun bs!629468 () Bool)

(assert (= bs!629468 (and b!4351859 b!4351155)))

(assert (=> bs!629468 (= (= (toList!2926 lt!1564520) (toList!2926 lt!1564525)) (= lambda!139574 lambda!139440))))

(assert (=> b!4351859 true))

(declare-fun bs!629469 () Bool)

(declare-fun b!4351861 () Bool)

(assert (= bs!629469 (and b!4351861 b!4351157)))

(declare-fun lambda!139575 () Int)

(assert (=> bs!629469 (= lambda!139575 lambda!139441)))

(declare-fun bs!629470 () Bool)

(assert (= bs!629470 (and b!4351861 b!4351243)))

(assert (=> bs!629470 (= lambda!139575 lambda!139445)))

(declare-fun bs!629471 () Bool)

(assert (= bs!629471 (and b!4351861 b!4351507)))

(assert (=> bs!629471 (= lambda!139575 lambda!139538)))

(declare-fun bs!629472 () Bool)

(assert (= bs!629472 (and b!4351861 b!4351789)))

(assert (=> bs!629472 (= lambda!139575 lambda!139565)))

(declare-fun bs!629473 () Bool)

(assert (= bs!629473 (and b!4351861 b!4351805)))

(assert (=> bs!629473 (= lambda!139575 lambda!139569)))

(declare-fun b!4351857 () Bool)

(declare-fun e!2708134 () Unit!71045)

(declare-fun Unit!71170 () Unit!71045)

(assert (=> b!4351857 (= e!2708134 Unit!71170)))

(declare-fun e!2708136 () List!49006)

(assert (=> b!4351858 (= e!2708136 (Cons!48882 (_1!27421 (h!54414 (toList!2926 lt!1564520))) (getKeysList!110 (t!355923 (toList!2926 lt!1564520)))))))

(declare-fun c!739830 () Bool)

(assert (=> b!4351858 (= c!739830 (containsKey!645 (t!355923 (toList!2926 lt!1564520)) (_1!27421 (h!54414 (toList!2926 lt!1564520)))))))

(declare-fun lt!1565272 () Unit!71045)

(declare-fun e!2708135 () Unit!71045)

(assert (=> b!4351858 (= lt!1565272 e!2708135)))

(declare-fun c!739828 () Bool)

(assert (=> b!4351858 (= c!739828 (contains!11054 (getKeysList!110 (t!355923 (toList!2926 lt!1564520))) (_1!27421 (h!54414 (toList!2926 lt!1564520)))))))

(declare-fun lt!1565276 () Unit!71045)

(assert (=> b!4351858 (= lt!1565276 e!2708134)))

(declare-fun lt!1565275 () List!49006)

(assert (=> b!4351858 (= lt!1565275 (getKeysList!110 (t!355923 (toList!2926 lt!1564520))))))

(declare-fun lt!1565274 () Unit!71045)

(assert (=> b!4351858 (= lt!1565274 (lemmaForallContainsAddHeadPreserves!19 (t!355923 (toList!2926 lt!1564520)) lt!1565275 (h!54414 (toList!2926 lt!1564520))))))

(assert (=> b!4351858 (forall!9085 lt!1565275 lambda!139573)))

(declare-fun lt!1565273 () Unit!71045)

(assert (=> b!4351858 (= lt!1565273 lt!1565274)))

(declare-fun res!1787996 () Bool)

(declare-fun e!2708133 () Bool)

(assert (=> b!4351859 (=> (not res!1787996) (not e!2708133))))

(declare-fun lt!1565271 () List!49006)

(assert (=> b!4351859 (= res!1787996 (forall!9085 lt!1565271 lambda!139574))))

(declare-fun b!4351860 () Bool)

(assert (=> b!4351860 false))

(declare-fun Unit!71171 () Unit!71045)

(assert (=> b!4351860 (= e!2708135 Unit!71171)))

(assert (=> b!4351861 (= e!2708133 (= (content!7686 lt!1565271) (content!7686 (map!10630 (toList!2926 lt!1564520) lambda!139575))))))

(declare-fun b!4351862 () Bool)

(declare-fun res!1787995 () Bool)

(assert (=> b!4351862 (=> (not res!1787995) (not e!2708133))))

(assert (=> b!4351862 (= res!1787995 (= (length!52 lt!1565271) (length!53 (toList!2926 lt!1564520))))))

(declare-fun b!4351863 () Bool)

(assert (=> b!4351863 (= e!2708136 Nil!48882)))

(declare-fun d!1285621 () Bool)

(assert (=> d!1285621 e!2708133))

(declare-fun res!1787994 () Bool)

(assert (=> d!1285621 (=> (not res!1787994) (not e!2708133))))

(assert (=> d!1285621 (= res!1787994 (noDuplicate!598 lt!1565271))))

(assert (=> d!1285621 (= lt!1565271 e!2708136)))

(declare-fun c!739829 () Bool)

(assert (=> d!1285621 (= c!739829 ((_ is Cons!48879) (toList!2926 lt!1564520)))))

(assert (=> d!1285621 (invariantList!662 (toList!2926 lt!1564520))))

(assert (=> d!1285621 (= (getKeysList!110 (toList!2926 lt!1564520)) lt!1565271)))

(declare-fun b!4351864 () Bool)

(declare-fun Unit!71172 () Unit!71045)

(assert (=> b!4351864 (= e!2708135 Unit!71172)))

(assert (=> b!4351865 false))

(declare-fun lt!1565277 () Unit!71045)

(assert (=> b!4351865 (= lt!1565277 (forallContained!1730 (getKeysList!110 (t!355923 (toList!2926 lt!1564520))) lambda!139572 (_1!27421 (h!54414 (toList!2926 lt!1564520)))))))

(declare-fun Unit!71173 () Unit!71045)

(assert (=> b!4351865 (= e!2708134 Unit!71173)))

(assert (= (and d!1285621 c!739829) b!4351858))

(assert (= (and d!1285621 (not c!739829)) b!4351863))

(assert (= (and b!4351858 c!739830) b!4351860))

(assert (= (and b!4351858 (not c!739830)) b!4351864))

(assert (= (and b!4351858 c!739828) b!4351865))

(assert (= (and b!4351858 (not c!739828)) b!4351857))

(assert (= (and d!1285621 res!1787994) b!4351862))

(assert (= (and b!4351862 res!1787995) b!4351859))

(assert (= (and b!4351859 res!1787996) b!4351861))

(declare-fun m!4962801 () Bool)

(assert (=> b!4351865 m!4962801))

(assert (=> b!4351865 m!4962801))

(declare-fun m!4962803 () Bool)

(assert (=> b!4351865 m!4962803))

(assert (=> b!4351858 m!4962801))

(assert (=> b!4351858 m!4962801))

(declare-fun m!4962807 () Bool)

(assert (=> b!4351858 m!4962807))

(declare-fun m!4962809 () Bool)

(assert (=> b!4351858 m!4962809))

(declare-fun m!4962813 () Bool)

(assert (=> b!4351858 m!4962813))

(declare-fun m!4962815 () Bool)

(assert (=> b!4351858 m!4962815))

(declare-fun m!4962817 () Bool)

(assert (=> b!4351861 m!4962817))

(declare-fun m!4962819 () Bool)

(assert (=> b!4351861 m!4962819))

(assert (=> b!4351861 m!4962819))

(declare-fun m!4962821 () Bool)

(assert (=> b!4351861 m!4962821))

(declare-fun m!4962823 () Bool)

(assert (=> b!4351859 m!4962823))

(declare-fun m!4962825 () Bool)

(assert (=> d!1285621 m!4962825))

(assert (=> d!1285621 m!4962347))

(declare-fun m!4962827 () Bool)

(assert (=> b!4351862 m!4962827))

(assert (=> b!4351862 m!4962113))

(assert (=> b!4350994 d!1285621))

(declare-fun bs!629474 () Bool)

(declare-fun b!4351888 () Bool)

(assert (= bs!629474 (and b!4351888 b!4351428)))

(declare-fun lambda!139576 () Int)

(assert (=> bs!629474 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139576 lambda!139526))))

(declare-fun bs!629475 () Bool)

(assert (= bs!629475 (and b!4351888 b!4351725)))

(assert (=> bs!629475 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (= lambda!139576 lambda!139560))))

(declare-fun bs!629476 () Bool)

(assert (= bs!629476 (and b!4351888 d!1285289)))

(assert (=> bs!629476 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) lt!1565005) (= lambda!139576 lambda!139529))))

(declare-fun bs!629477 () Bool)

(assert (= bs!629477 (and b!4351888 b!4351429)))

(assert (=> bs!629477 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) lt!1565007) (= lambda!139576 lambda!139528))))

(declare-fun bs!629478 () Bool)

(assert (= bs!629478 (and b!4351888 d!1285427)))

(assert (=> bs!629478 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) lt!1565075) (= lambda!139576 lambda!139551))))

(assert (=> bs!629477 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139576 lambda!139527))))

(declare-fun bs!629479 () Bool)

(assert (= bs!629479 (and b!4351888 b!4351549)))

(assert (=> bs!629479 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) lt!1565077) (= lambda!139576 lambda!139550))))

(assert (=> bs!629479 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139576 lambda!139549))))

(assert (=> bs!629475 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) lt!1565207) (= lambda!139576 lambda!139561))))

(declare-fun bs!629480 () Bool)

(assert (= bs!629480 (and b!4351888 b!4351724)))

(assert (=> bs!629480 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (= lambda!139576 lambda!139559))))

(declare-fun bs!629481 () Bool)

(assert (= bs!629481 (and b!4351888 d!1285553)))

(assert (=> bs!629481 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) lt!1565205) (= lambda!139576 lambda!139562))))

(declare-fun bs!629483 () Bool)

(assert (= bs!629483 (and b!4351888 d!1285101)))

(assert (=> bs!629483 (not (= lambda!139576 lambda!139390))))

(declare-fun bs!629484 () Bool)

(assert (= bs!629484 (and b!4351888 b!4351548)))

(assert (=> bs!629484 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139576 lambda!139547))))

(assert (=> b!4351888 true))

(declare-fun bs!629489 () Bool)

(declare-fun b!4351889 () Bool)

(assert (= bs!629489 (and b!4351889 b!4351428)))

(declare-fun lambda!139577 () Int)

(assert (=> bs!629489 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139577 lambda!139526))))

(declare-fun bs!629491 () Bool)

(assert (= bs!629491 (and b!4351889 b!4351725)))

(assert (=> bs!629491 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (= lambda!139577 lambda!139560))))

(declare-fun bs!629493 () Bool)

(assert (= bs!629493 (and b!4351889 d!1285289)))

(assert (=> bs!629493 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) lt!1565005) (= lambda!139577 lambda!139529))))

(declare-fun bs!629494 () Bool)

(assert (= bs!629494 (and b!4351889 b!4351888)))

(assert (=> bs!629494 (= lambda!139577 lambda!139576)))

(declare-fun bs!629496 () Bool)

(assert (= bs!629496 (and b!4351889 b!4351429)))

(assert (=> bs!629496 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) lt!1565007) (= lambda!139577 lambda!139528))))

(declare-fun bs!629498 () Bool)

(assert (= bs!629498 (and b!4351889 d!1285427)))

(assert (=> bs!629498 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) lt!1565075) (= lambda!139577 lambda!139551))))

(assert (=> bs!629496 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139577 lambda!139527))))

(declare-fun bs!629500 () Bool)

(assert (= bs!629500 (and b!4351889 b!4351549)))

(assert (=> bs!629500 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) lt!1565077) (= lambda!139577 lambda!139550))))

(assert (=> bs!629500 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139577 lambda!139549))))

(assert (=> bs!629491 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) lt!1565207) (= lambda!139577 lambda!139561))))

(declare-fun bs!629502 () Bool)

(assert (= bs!629502 (and b!4351889 b!4351724)))

(assert (=> bs!629502 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (= lambda!139577 lambda!139559))))

(declare-fun bs!629503 () Bool)

(assert (= bs!629503 (and b!4351889 d!1285553)))

(assert (=> bs!629503 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) lt!1565205) (= lambda!139577 lambda!139562))))

(declare-fun bs!629504 () Bool)

(assert (= bs!629504 (and b!4351889 d!1285101)))

(assert (=> bs!629504 (not (= lambda!139577 lambda!139390))))

(declare-fun bs!629505 () Bool)

(assert (= bs!629505 (and b!4351889 b!4351548)))

(assert (=> bs!629505 (= (= (extractMap!530 (t!355924 (toList!2925 lm!1707))) (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139577 lambda!139547))))

(assert (=> b!4351889 true))

(declare-fun lambda!139578 () Int)

(declare-fun lt!1565294 () ListMap!2169)

(assert (=> bs!629489 (= (= lt!1565294 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139578 lambda!139526))))

(assert (=> bs!629491 (= (= lt!1565294 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (= lambda!139578 lambda!139560))))

(assert (=> bs!629493 (= (= lt!1565294 lt!1565005) (= lambda!139578 lambda!139529))))

(assert (=> bs!629494 (= (= lt!1565294 (extractMap!530 (t!355924 (toList!2925 lm!1707)))) (= lambda!139578 lambda!139576))))

(assert (=> bs!629496 (= (= lt!1565294 lt!1565007) (= lambda!139578 lambda!139528))))

(assert (=> bs!629498 (= (= lt!1565294 lt!1565075) (= lambda!139578 lambda!139551))))

(assert (=> bs!629496 (= (= lt!1565294 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139578 lambda!139527))))

(assert (=> bs!629500 (= (= lt!1565294 lt!1565077) (= lambda!139578 lambda!139550))))

(assert (=> bs!629491 (= (= lt!1565294 lt!1565207) (= lambda!139578 lambda!139561))))

(assert (=> bs!629502 (= (= lt!1565294 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (= lambda!139578 lambda!139559))))

(assert (=> bs!629503 (= (= lt!1565294 lt!1565205) (= lambda!139578 lambda!139562))))

(assert (=> bs!629504 (not (= lambda!139578 lambda!139390))))

(assert (=> bs!629505 (= (= lt!1565294 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139578 lambda!139547))))

(assert (=> bs!629500 (= (= lt!1565294 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139578 lambda!139549))))

(assert (=> b!4351889 (= (= lt!1565294 (extractMap!530 (t!355924 (toList!2925 lm!1707)))) (= lambda!139578 lambda!139577))))

(assert (=> b!4351889 true))

(declare-fun bs!629506 () Bool)

(declare-fun d!1285633 () Bool)

(assert (= bs!629506 (and d!1285633 b!4351428)))

(declare-fun lt!1565292 () ListMap!2169)

(declare-fun lambda!139579 () Int)

(assert (=> bs!629506 (= (= lt!1565292 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139579 lambda!139526))))

(declare-fun bs!629507 () Bool)

(assert (= bs!629507 (and d!1285633 d!1285289)))

(assert (=> bs!629507 (= (= lt!1565292 lt!1565005) (= lambda!139579 lambda!139529))))

(declare-fun bs!629508 () Bool)

(assert (= bs!629508 (and d!1285633 b!4351888)))

(assert (=> bs!629508 (= (= lt!1565292 (extractMap!530 (t!355924 (toList!2925 lm!1707)))) (= lambda!139579 lambda!139576))))

(declare-fun bs!629509 () Bool)

(assert (= bs!629509 (and d!1285633 b!4351429)))

(assert (=> bs!629509 (= (= lt!1565292 lt!1565007) (= lambda!139579 lambda!139528))))

(declare-fun bs!629510 () Bool)

(assert (= bs!629510 (and d!1285633 d!1285427)))

(assert (=> bs!629510 (= (= lt!1565292 lt!1565075) (= lambda!139579 lambda!139551))))

(assert (=> bs!629509 (= (= lt!1565292 (extractMap!530 (t!355924 (toList!2925 lt!1564518)))) (= lambda!139579 lambda!139527))))

(declare-fun bs!629511 () Bool)

(assert (= bs!629511 (and d!1285633 b!4351549)))

(assert (=> bs!629511 (= (= lt!1565292 lt!1565077) (= lambda!139579 lambda!139550))))

(declare-fun bs!629512 () Bool)

(assert (= bs!629512 (and d!1285633 b!4351725)))

(assert (=> bs!629512 (= (= lt!1565292 lt!1565207) (= lambda!139579 lambda!139561))))

(declare-fun bs!629513 () Bool)

(assert (= bs!629513 (and d!1285633 b!4351889)))

(assert (=> bs!629513 (= (= lt!1565292 lt!1565294) (= lambda!139579 lambda!139578))))

(assert (=> bs!629512 (= (= lt!1565292 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (= lambda!139579 lambda!139560))))

(declare-fun bs!629514 () Bool)

(assert (= bs!629514 (and d!1285633 b!4351724)))

(assert (=> bs!629514 (= (= lt!1565292 (extractMap!530 (t!355924 (toList!2925 (+!599 lt!1564518 lt!1564522))))) (= lambda!139579 lambda!139559))))

(declare-fun bs!629515 () Bool)

(assert (= bs!629515 (and d!1285633 d!1285553)))

(assert (=> bs!629515 (= (= lt!1565292 lt!1565205) (= lambda!139579 lambda!139562))))

(declare-fun bs!629516 () Bool)

(assert (= bs!629516 (and d!1285633 d!1285101)))

(assert (=> bs!629516 (not (= lambda!139579 lambda!139390))))

(declare-fun bs!629517 () Bool)

(assert (= bs!629517 (and d!1285633 b!4351548)))

(assert (=> bs!629517 (= (= lt!1565292 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139579 lambda!139547))))

(assert (=> bs!629511 (= (= lt!1565292 (extractMap!530 (t!355924 (t!355924 (toList!2925 lm!1707))))) (= lambda!139579 lambda!139549))))

(assert (=> bs!629513 (= (= lt!1565292 (extractMap!530 (t!355924 (toList!2925 lm!1707)))) (= lambda!139579 lambda!139577))))

(assert (=> d!1285633 true))

(declare-fun b!4351886 () Bool)

(declare-fun e!2708149 () Bool)

(assert (=> b!4351886 (= e!2708149 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (toList!2925 lm!1707)))) lambda!139578))))

(declare-fun c!739840 () Bool)

(declare-fun bm!302468 () Bool)

(declare-fun lt!1565295 () ListMap!2169)

(declare-fun call!302474 () Bool)

(assert (=> bm!302468 (= call!302474 (forall!9083 (ite c!739840 (toList!2926 (extractMap!530 (t!355924 (toList!2925 lm!1707)))) (toList!2926 lt!1565295)) (ite c!739840 lambda!139576 lambda!139578)))))

(declare-fun bm!302469 () Bool)

(declare-fun call!302473 () Unit!71045)

(assert (=> bm!302469 (= call!302473 (lemmaContainsAllItsOwnKeys!53 (extractMap!530 (t!355924 (toList!2925 lm!1707)))))))

(declare-fun b!4351887 () Bool)

(declare-fun res!1787999 () Bool)

(declare-fun e!2708148 () Bool)

(assert (=> b!4351887 (=> (not res!1787999) (not e!2708148))))

(assert (=> b!4351887 (= res!1787999 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (toList!2925 lm!1707)))) lambda!139579))))

(assert (=> d!1285633 e!2708148))

(declare-fun res!1788000 () Bool)

(assert (=> d!1285633 (=> (not res!1788000) (not e!2708148))))

(assert (=> d!1285633 (= res!1788000 (forall!9083 (_2!27422 (h!54415 (toList!2925 lm!1707))) lambda!139579))))

(declare-fun e!2708150 () ListMap!2169)

(assert (=> d!1285633 (= lt!1565292 e!2708150)))

(assert (=> d!1285633 (= c!739840 ((_ is Nil!48879) (_2!27422 (h!54415 (toList!2925 lm!1707)))))))

(assert (=> d!1285633 (noDuplicateKeys!471 (_2!27422 (h!54415 (toList!2925 lm!1707))))))

(assert (=> d!1285633 (= (addToMapMapFromBucket!169 (_2!27422 (h!54415 (toList!2925 lm!1707))) (extractMap!530 (t!355924 (toList!2925 lm!1707)))) lt!1565292)))

(assert (=> b!4351888 (= e!2708150 (extractMap!530 (t!355924 (toList!2925 lm!1707))))))

(declare-fun lt!1565283 () Unit!71045)

(assert (=> b!4351888 (= lt!1565283 call!302473)))

(declare-fun call!302475 () Bool)

(assert (=> b!4351888 call!302475))

(declare-fun lt!1565287 () Unit!71045)

(assert (=> b!4351888 (= lt!1565287 lt!1565283)))

(assert (=> b!4351888 call!302474))

(declare-fun lt!1565282 () Unit!71045)

(declare-fun Unit!71174 () Unit!71045)

(assert (=> b!4351888 (= lt!1565282 Unit!71174)))

(assert (=> b!4351889 (= e!2708150 lt!1565294)))

(assert (=> b!4351889 (= lt!1565295 (+!600 (extractMap!530 (t!355924 (toList!2925 lm!1707))) (h!54414 (_2!27422 (h!54415 (toList!2925 lm!1707))))))))

(assert (=> b!4351889 (= lt!1565294 (addToMapMapFromBucket!169 (t!355923 (_2!27422 (h!54415 (toList!2925 lm!1707)))) (+!600 (extractMap!530 (t!355924 (toList!2925 lm!1707))) (h!54414 (_2!27422 (h!54415 (toList!2925 lm!1707)))))))))

(declare-fun lt!1565297 () Unit!71045)

(assert (=> b!4351889 (= lt!1565297 call!302473)))

(assert (=> b!4351889 call!302475))

(declare-fun lt!1565298 () Unit!71045)

(assert (=> b!4351889 (= lt!1565298 lt!1565297)))

(assert (=> b!4351889 call!302474))

(declare-fun lt!1565280 () Unit!71045)

(declare-fun Unit!71175 () Unit!71045)

(assert (=> b!4351889 (= lt!1565280 Unit!71175)))

(assert (=> b!4351889 (forall!9083 (t!355923 (_2!27422 (h!54415 (toList!2925 lm!1707)))) lambda!139578)))

(declare-fun lt!1565286 () Unit!71045)

(declare-fun Unit!71176 () Unit!71045)

(assert (=> b!4351889 (= lt!1565286 Unit!71176)))

(declare-fun lt!1565289 () Unit!71045)

(declare-fun Unit!71177 () Unit!71045)

(assert (=> b!4351889 (= lt!1565289 Unit!71177)))

(declare-fun lt!1565285 () Unit!71045)

(assert (=> b!4351889 (= lt!1565285 (forallContained!1733 (toList!2926 lt!1565295) lambda!139578 (h!54414 (_2!27422 (h!54415 (toList!2925 lm!1707))))))))

(assert (=> b!4351889 (contains!11051 lt!1565295 (_1!27421 (h!54414 (_2!27422 (h!54415 (toList!2925 lm!1707))))))))

(declare-fun lt!1565293 () Unit!71045)

(declare-fun Unit!71178 () Unit!71045)

(assert (=> b!4351889 (= lt!1565293 Unit!71178)))

(assert (=> b!4351889 (contains!11051 lt!1565294 (_1!27421 (h!54414 (_2!27422 (h!54415 (toList!2925 lm!1707))))))))

(declare-fun lt!1565290 () Unit!71045)

(declare-fun Unit!71179 () Unit!71045)

(assert (=> b!4351889 (= lt!1565290 Unit!71179)))

(assert (=> b!4351889 (forall!9083 (_2!27422 (h!54415 (toList!2925 lm!1707))) lambda!139578)))

(declare-fun lt!1565291 () Unit!71045)

(declare-fun Unit!71180 () Unit!71045)

(assert (=> b!4351889 (= lt!1565291 Unit!71180)))

(assert (=> b!4351889 (forall!9083 (toList!2926 lt!1565295) lambda!139578)))

(declare-fun lt!1565284 () Unit!71045)

(declare-fun Unit!71181 () Unit!71045)

(assert (=> b!4351889 (= lt!1565284 Unit!71181)))

(declare-fun lt!1565299 () Unit!71045)

(declare-fun Unit!71182 () Unit!71045)

(assert (=> b!4351889 (= lt!1565299 Unit!71182)))

(declare-fun lt!1565281 () Unit!71045)

(assert (=> b!4351889 (= lt!1565281 (addForallContainsKeyThenBeforeAdding!53 (extractMap!530 (t!355924 (toList!2925 lm!1707))) lt!1565294 (_1!27421 (h!54414 (_2!27422 (h!54415 (toList!2925 lm!1707))))) (_2!27421 (h!54414 (_2!27422 (h!54415 (toList!2925 lm!1707)))))))))

(assert (=> b!4351889 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (toList!2925 lm!1707)))) lambda!139578)))

(declare-fun lt!1565300 () Unit!71045)

(assert (=> b!4351889 (= lt!1565300 lt!1565281)))

(assert (=> b!4351889 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (toList!2925 lm!1707)))) lambda!139578)))

(declare-fun lt!1565288 () Unit!71045)

(declare-fun Unit!71183 () Unit!71045)

(assert (=> b!4351889 (= lt!1565288 Unit!71183)))

(declare-fun res!1788001 () Bool)

(assert (=> b!4351889 (= res!1788001 (forall!9083 (_2!27422 (h!54415 (toList!2925 lm!1707))) lambda!139578))))

(assert (=> b!4351889 (=> (not res!1788001) (not e!2708149))))

(assert (=> b!4351889 e!2708149))

(declare-fun lt!1565296 () Unit!71045)

(declare-fun Unit!71184 () Unit!71045)

(assert (=> b!4351889 (= lt!1565296 Unit!71184)))

(declare-fun b!4351890 () Bool)

(assert (=> b!4351890 (= e!2708148 (invariantList!662 (toList!2926 lt!1565292)))))

(declare-fun bm!302470 () Bool)

(assert (=> bm!302470 (= call!302475 (forall!9083 (toList!2926 (extractMap!530 (t!355924 (toList!2925 lm!1707)))) (ite c!739840 lambda!139576 lambda!139577)))))

(assert (= (and d!1285633 c!739840) b!4351888))

(assert (= (and d!1285633 (not c!739840)) b!4351889))

(assert (= (and b!4351889 res!1788001) b!4351886))

(assert (= (or b!4351888 b!4351889) bm!302469))

(assert (= (or b!4351888 b!4351889) bm!302470))

(assert (= (or b!4351888 b!4351889) bm!302468))

(assert (= (and d!1285633 res!1788000) b!4351887))

(assert (= (and b!4351887 res!1787999) b!4351890))

(assert (=> bm!302469 m!4961035))

(declare-fun m!4962841 () Bool)

(assert (=> bm!302469 m!4962841))

(declare-fun m!4962843 () Bool)

(assert (=> bm!302470 m!4962843))

(declare-fun m!4962845 () Bool)

(assert (=> b!4351887 m!4962845))

(declare-fun m!4962847 () Bool)

(assert (=> bm!302468 m!4962847))

(assert (=> b!4351889 m!4961035))

(declare-fun m!4962849 () Bool)

(assert (=> b!4351889 m!4962849))

(declare-fun m!4962851 () Bool)

(assert (=> b!4351889 m!4962851))

(declare-fun m!4962853 () Bool)

(assert (=> b!4351889 m!4962853))

(declare-fun m!4962855 () Bool)

(assert (=> b!4351889 m!4962855))

(declare-fun m!4962857 () Bool)

(assert (=> b!4351889 m!4962857))

(assert (=> b!4351889 m!4962849))

(declare-fun m!4962859 () Bool)

(assert (=> b!4351889 m!4962859))

(assert (=> b!4351889 m!4962855))

(declare-fun m!4962861 () Bool)

(assert (=> b!4351889 m!4962861))

(declare-fun m!4962863 () Bool)

(assert (=> b!4351889 m!4962863))

(assert (=> b!4351889 m!4961035))

(declare-fun m!4962865 () Bool)

(assert (=> b!4351889 m!4962865))

(declare-fun m!4962867 () Bool)

(assert (=> b!4351889 m!4962867))

(assert (=> b!4351889 m!4962861))

(declare-fun m!4962869 () Bool)

(assert (=> b!4351890 m!4962869))

(assert (=> b!4351886 m!4962855))

(declare-fun m!4962871 () Bool)

(assert (=> d!1285633 m!4962871))

(assert (=> d!1285633 m!4961319))

(assert (=> b!4351072 d!1285633))

(assert (=> b!4351072 d!1285147))

(declare-fun d!1285657 () Bool)

(declare-fun res!1788006 () Bool)

(declare-fun e!2708158 () Bool)

(assert (=> d!1285657 (=> res!1788006 e!2708158)))

(assert (=> d!1285657 (= res!1788006 ((_ is Nil!48879) newBucket!200))))

(assert (=> d!1285657 (= (forall!9083 newBucket!200 lambda!139390) e!2708158)))

(declare-fun b!4351898 () Bool)

(declare-fun e!2708159 () Bool)

(assert (=> b!4351898 (= e!2708158 e!2708159)))

(declare-fun res!1788007 () Bool)

(assert (=> b!4351898 (=> (not res!1788007) (not e!2708159))))

(declare-fun dynLambda!20615 (Int tuple2!48254) Bool)

(assert (=> b!4351898 (= res!1788007 (dynLambda!20615 lambda!139390 (h!54414 newBucket!200)))))

(declare-fun b!4351899 () Bool)

(assert (=> b!4351899 (= e!2708159 (forall!9083 (t!355923 newBucket!200) lambda!139390))))

(assert (= (and d!1285657 (not res!1788006)) b!4351898))

(assert (= (and b!4351898 res!1788007) b!4351899))

(declare-fun b_lambda!130641 () Bool)

(assert (=> (not b_lambda!130641) (not b!4351898)))

(declare-fun m!4962873 () Bool)

(assert (=> b!4351898 m!4962873))

(declare-fun m!4962875 () Bool)

(assert (=> b!4351899 m!4962875))

(assert (=> d!1285101 d!1285657))

(assert (=> b!4350987 d!1285245))

(declare-fun d!1285659 () Bool)

(assert (=> d!1285659 (containsKey!645 (toList!2926 lt!1564520) key!3918)))

(declare-fun lt!1565301 () Unit!71045)

(assert (=> d!1285659 (= lt!1565301 (choose!26780 (toList!2926 lt!1564520) key!3918))))

(assert (=> d!1285659 (invariantList!662 (toList!2926 lt!1564520))))

(assert (=> d!1285659 (= (lemmaInGetKeysListThenContainsKey!108 (toList!2926 lt!1564520) key!3918) lt!1565301)))

(declare-fun bs!629518 () Bool)

(assert (= bs!629518 d!1285659))

(assert (=> bs!629518 m!4961285))

(declare-fun m!4962877 () Bool)

(assert (=> bs!629518 m!4962877))

(assert (=> bs!629518 m!4962347))

(assert (=> b!4350987 d!1285659))

(declare-fun d!1285661 () Bool)

(declare-fun lt!1565302 () Bool)

(assert (=> d!1285661 (= lt!1565302 (select (content!7682 (toList!2925 lt!1564552)) lt!1564522))))

(declare-fun e!2708161 () Bool)

(assert (=> d!1285661 (= lt!1565302 e!2708161)))

(declare-fun res!1788009 () Bool)

(assert (=> d!1285661 (=> (not res!1788009) (not e!2708161))))

(assert (=> d!1285661 (= res!1788009 ((_ is Cons!48880) (toList!2925 lt!1564552)))))

(assert (=> d!1285661 (= (contains!11050 (toList!2925 lt!1564552) lt!1564522) lt!1565302)))

(declare-fun b!4351900 () Bool)

(declare-fun e!2708160 () Bool)

(assert (=> b!4351900 (= e!2708161 e!2708160)))

(declare-fun res!1788008 () Bool)

(assert (=> b!4351900 (=> res!1788008 e!2708160)))

(assert (=> b!4351900 (= res!1788008 (= (h!54415 (toList!2925 lt!1564552)) lt!1564522))))

(declare-fun b!4351901 () Bool)

(assert (=> b!4351901 (= e!2708160 (contains!11050 (t!355924 (toList!2925 lt!1564552)) lt!1564522))))

(assert (= (and d!1285661 res!1788009) b!4351900))

(assert (= (and b!4351900 (not res!1788008)) b!4351901))

(declare-fun m!4962879 () Bool)

(assert (=> d!1285661 m!4962879))

(declare-fun m!4962881 () Bool)

(assert (=> d!1285661 m!4962881))

(declare-fun m!4962883 () Bool)

(assert (=> b!4351901 m!4962883))

(assert (=> b!4350846 d!1285661))

(assert (=> b!4350989 d!1285483))

(assert (=> b!4350989 d!1285485))

(assert (=> b!4351057 d!1285581))

(assert (=> b!4351057 d!1285583))

(declare-fun tp!1329879 () Bool)

(declare-fun e!2708162 () Bool)

(declare-fun b!4351902 () Bool)

(assert (=> b!4351902 (= e!2708162 (and tp_is_empty!25121 tp_is_empty!25123 tp!1329879))))

(assert (=> b!4351096 (= tp!1329873 e!2708162)))

(assert (= (and b!4351096 ((_ is Cons!48879) (_2!27422 (h!54415 (toList!2925 lm!1707))))) b!4351902))

(declare-fun b!4351903 () Bool)

(declare-fun e!2708163 () Bool)

(declare-fun tp!1329880 () Bool)

(declare-fun tp!1329881 () Bool)

(assert (=> b!4351903 (= e!2708163 (and tp!1329880 tp!1329881))))

(assert (=> b!4351096 (= tp!1329874 e!2708163)))

(assert (= (and b!4351096 ((_ is Cons!48880) (t!355924 (toList!2925 lm!1707)))) b!4351903))

(declare-fun e!2708164 () Bool)

(declare-fun b!4351904 () Bool)

(declare-fun tp!1329882 () Bool)

(assert (=> b!4351904 (= e!2708164 (and tp_is_empty!25121 tp_is_empty!25123 tp!1329882))))

(assert (=> b!4351090 (= tp!1329864 e!2708164)))

(assert (= (and b!4351090 ((_ is Cons!48879) (t!355923 (t!355923 newBucket!200)))) b!4351904))

(declare-fun b_lambda!130643 () Bool)

(assert (= b_lambda!130579 (or d!1285153 b_lambda!130643)))

(declare-fun bs!629519 () Bool)

(declare-fun d!1285663 () Bool)

(assert (= bs!629519 (and d!1285663 d!1285153)))

(assert (=> bs!629519 (= (dynLambda!20612 lambda!139416 (h!54415 (toList!2925 lt!1564518))) (noDuplicateKeys!471 (_2!27422 (h!54415 (toList!2925 lt!1564518)))))))

(assert (=> bs!629519 m!4962031))

(assert (=> b!4351259 d!1285663))

(declare-fun b_lambda!130645 () Bool)

(assert (= b_lambda!130603 (or d!1285143 b_lambda!130645)))

(declare-fun bs!629520 () Bool)

(declare-fun d!1285665 () Bool)

(assert (= bs!629520 (and d!1285665 d!1285143)))

(assert (=> bs!629520 (= (dynLambda!20612 lambda!139409 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522)))) (noDuplicateKeys!471 (_2!27422 (h!54415 (toList!2925 (+!599 lt!1564518 lt!1564522))))))))

(assert (=> bs!629520 m!4962593))

(assert (=> b!4351611 d!1285665))

(declare-fun b_lambda!130647 () Bool)

(assert (= b_lambda!130601 (or start!420404 b_lambda!130647)))

(declare-fun bs!629521 () Bool)

(declare-fun d!1285667 () Bool)

(assert (= bs!629521 (and d!1285667 start!420404)))

(assert (=> bs!629521 (= (dynLambda!20612 lambda!139387 (h!54415 (toList!2925 (+!599 lm!1707 (tuple2!48257 hash!377 newBucket!200))))) (noDuplicateKeys!471 (_2!27422 (h!54415 (toList!2925 (+!599 lm!1707 (tuple2!48257 hash!377 newBucket!200)))))))))

(declare-fun m!4962885 () Bool)

(assert (=> bs!629521 m!4962885))

(assert (=> b!4351597 d!1285667))

(declare-fun b_lambda!130649 () Bool)

(assert (= b_lambda!130611 (or start!420404 b_lambda!130649)))

(assert (=> d!1285551 d!1285201))

(declare-fun b_lambda!130651 () Bool)

(assert (= b_lambda!130591 (or d!1285147 b_lambda!130651)))

(declare-fun bs!629522 () Bool)

(declare-fun d!1285669 () Bool)

(assert (= bs!629522 (and d!1285669 d!1285147)))

(assert (=> bs!629522 (= (dynLambda!20612 lambda!139411 (h!54415 (t!355924 (toList!2925 lm!1707)))) (noDuplicateKeys!471 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707))))))))

(assert (=> bs!629522 m!4962265))

(assert (=> b!4351527 d!1285669))

(declare-fun b_lambda!130653 () Bool)

(assert (= b_lambda!130577 (or d!1285179 b_lambda!130653)))

(declare-fun bs!629523 () Bool)

(declare-fun d!1285671 () Bool)

(assert (= bs!629523 (and d!1285671 d!1285179)))

(assert (=> bs!629523 (= (dynLambda!20612 lambda!139422 (h!54415 (toList!2925 lm!1707))) (allKeysSameHash!429 (_2!27422 (h!54415 (toList!2925 lm!1707))) (_1!27422 (h!54415 (toList!2925 lm!1707))) hashF!1247))))

(declare-fun m!4962887 () Bool)

(assert (=> bs!629523 m!4962887))

(assert (=> b!4351180 d!1285671))

(declare-fun b_lambda!130655 () Bool)

(assert (= b_lambda!130575 (or d!1285173 b_lambda!130655)))

(declare-fun bs!629524 () Bool)

(declare-fun d!1285673 () Bool)

(assert (= bs!629524 (and d!1285673 d!1285173)))

(assert (=> bs!629524 (= (dynLambda!20612 lambda!139419 (h!54415 (toList!2925 lm!1707))) (noDuplicateKeys!471 (_2!27422 (h!54415 (toList!2925 lm!1707)))))))

(assert (=> bs!629524 m!4961319))

(assert (=> b!4351164 d!1285673))

(declare-fun b_lambda!130657 () Bool)

(assert (= b_lambda!130599 (or d!1285135 b_lambda!130657)))

(declare-fun bs!629525 () Bool)

(declare-fun d!1285675 () Bool)

(assert (= bs!629525 (and d!1285675 d!1285135)))

(assert (=> bs!629525 (= (dynLambda!20612 lambda!139406 (h!54415 (toList!2925 lt!1564518))) (noDuplicateKeys!471 (_2!27422 (h!54415 (toList!2925 lt!1564518)))))))

(assert (=> bs!629525 m!4962031))

(assert (=> b!4351595 d!1285675))

(declare-fun b_lambda!130659 () Bool)

(assert (= b_lambda!130641 (or d!1285101 b_lambda!130659)))

(declare-fun bs!629526 () Bool)

(declare-fun d!1285677 () Bool)

(assert (= bs!629526 (and d!1285677 d!1285101)))

(assert (=> bs!629526 (= (dynLambda!20615 lambda!139390 (h!54414 newBucket!200)) (= (hash!1480 hashF!1247 (_1!27421 (h!54414 newBucket!200))) hash!377))))

(declare-fun m!4962889 () Bool)

(assert (=> bs!629526 m!4962889))

(assert (=> b!4351898 d!1285677))

(declare-fun b_lambda!130661 () Bool)

(assert (= b_lambda!130597 (or start!420404 b_lambda!130661)))

(declare-fun bs!629527 () Bool)

(declare-fun d!1285679 () Bool)

(assert (= bs!629527 (and d!1285679 start!420404)))

(assert (=> bs!629527 (= (dynLambda!20612 lambda!139387 (h!54415 (t!355924 (toList!2925 lt!1564521)))) (noDuplicateKeys!471 (_2!27422 (h!54415 (t!355924 (toList!2925 lt!1564521))))))))

(declare-fun m!4962891 () Bool)

(assert (=> bs!629527 m!4962891))

(assert (=> b!4351589 d!1285679))

(declare-fun b_lambda!130663 () Bool)

(assert (= b_lambda!130571 (or d!1285189 b_lambda!130663)))

(declare-fun bs!629528 () Bool)

(declare-fun d!1285681 () Bool)

(assert (= bs!629528 (and d!1285681 d!1285189)))

(assert (=> bs!629528 (= (dynLambda!20612 lambda!139423 (h!54415 (toList!2925 lm!1707))) (noDuplicateKeys!471 (_2!27422 (h!54415 (toList!2925 lm!1707)))))))

(assert (=> bs!629528 m!4961319))

(assert (=> b!4351114 d!1285681))

(declare-fun b_lambda!130665 () Bool)

(assert (= b_lambda!130613 (or start!420404 b_lambda!130665)))

(declare-fun bs!629529 () Bool)

(declare-fun d!1285683 () Bool)

(assert (= bs!629529 (and d!1285683 start!420404)))

(assert (=> bs!629529 (= (dynLambda!20612 lambda!139387 (h!54415 (t!355924 (toList!2925 lm!1707)))) (noDuplicateKeys!471 (_2!27422 (h!54415 (t!355924 (toList!2925 lm!1707))))))))

(assert (=> bs!629529 m!4962265))

(assert (=> b!4351765 d!1285683))

(check-sat (not b!4351264) (not b!4351615) (not b!4351757) (not bs!629526) (not d!1285289) (not b!4351507) (not d!1285587) (not d!1285497) (not b!4351711) (not b!4351587) (not b!4351723) (not b!4351619) (not b!4351861) (not b!4351758) (not bm!302431) (not b!4351598) (not b!4351787) (not b!4351858) (not b!4351862) (not b!4351708) (not bm!302467) (not d!1285265) (not d!1285555) (not b!4351804) (not d!1285659) (not b!4351223) (not bs!629521) (not b_lambda!130569) (not b!4351165) (not b!4351613) (not d!1285617) (not b!4351854) (not b!4351815) (not b!4351843) (not b!4351725) (not b!4351789) (not bm!302393) (not b!4351545) (not b!4351599) (not d!1285379) (not b!4351547) tp_is_empty!25121 (not b!4351173) (not b!4351262) (not b!4351593) (not bs!629520) (not d!1285263) (not d!1285215) (not b!4351903) (not b!4351836) (not b_lambda!130649) (not b!4351886) (not b!4351581) (not d!1285287) (not bs!629523) (not b!4351714) (not b_lambda!130643) (not b!4351576) (not b!4351179) (not d!1285561) (not b!4351565) (not b!4351574) (not b!4351807) (not d!1285273) (not d!1285495) (not b!4351201) (not d!1285223) (not b!4351766) (not b!4351865) (not b!4351726) (not b!4351899) (not b!4351859) (not d!1285503) (not b!4351810) (not d!1285535) (not b!4351817) (not b!4351274) (not b!4351546) (not b!4351802) (not d!1285411) (not d!1285423) (not b!4351768) (not b!4351584) (not b!4351549) (not b!4351231) (not b!4351722) (not d!1285633) (not d!1285489) (not b_lambda!130651) (not bm!302449) (not b!4351651) (not b_lambda!130563) (not b!4351596) (not d!1285377) (not d!1285621) (not b_lambda!130655) (not b!4351427) (not b!4351713) (not b!4351887) (not d!1285443) (not d!1285553) (not b!4351600) (not d!1285237) (not d!1285279) (not b!4351429) (not bm!302432) (not b!4351790) (not b!4351533) (not b!4351578) (not b!4351710) (not b_lambda!130659) (not b!4351889) (not b!4351617) (not d!1285251) (not d!1285517) (not d!1285403) (not b!4351808) (not b!4351445) (not b!4351241) (not b!4351550) (not b!4351528) (not bm!302412) (not b!4351238) (not bm!302451) (not b!4351721) (not b!4351813) (not b!4351184) (not bm!302468) (not b!4351167) (not d!1285563) (not b!4351258) (not bs!629524) (not b!4351580) (not b_lambda!130647) (not b!4351851) (not b!4351257) (not d!1285593) (not b!4351749) (not b!4351904) (not d!1285413) (not b!4351255) (not b!4351525) (not b!4351590) (not bs!629529) (not b!4351621) (not d!1285447) (not b!4351506) (not d!1285581) (not b!4351426) (not b!4351243) (not b!4351839) (not b!4351240) (not d!1285271) (not b_lambda!130661) (not b!4351230) (not b!4351154) (not b!4351157) (not d!1285575) (not b!4351720) (not b!4351182) (not b!4351824) (not b!4351764) (not b!4351901) (not d!1285407) (not b_lambda!130663) (not d!1285257) (not b!4351534) (not bs!629519) (not b!4351260) (not b!4351247) (not bm!302470) (not bm!302433) (not b!4351902) (not b_lambda!130657) (not b!4351630) (not b!4351788) (not b!4351612) (not d!1285507) (not b!4351244) (not d!1285483) (not d!1285583) (not d!1285585) (not b!4351250) (not b!4351253) (not bs!629528) (not b_lambda!130665) (not d!1285615) (not b!4351570) (not b!4351577) (not d!1285375) (not b!4351853) (not b!4351261) (not b!4351155) (not bm!302452) (not bs!629522) (not b_lambda!130645) (not d!1285277) (not bm!302414) (not b!4351784) (not b!4351582) (not b!4351158) (not b!4351195) (not b!4351816) (not d!1285261) (not d!1285591) (not bs!629525) (not d!1285463) (not b!4351805) (not d!1285571) (not d!1285567) (not b!4351267) (not bm!302450) (not d!1285425) (not d!1285487) (not b!4351181) (not b!4351791) (not bm!302469) (not d!1285661) (not b!4351161) (not b!4351717) (not d!1285457) (not b!4351115) (not b!4351825) (not b!4351614) (not d!1285477) (not bm!302446) (not bm!302430) tp_is_empty!25123 (not d!1285255) (not b!4351460) (not b!4351430) (not b!4351890) (not b!4351609) (not b!4351559) (not d!1285427) (not bm!302413) (not b!4351803) (not bs!629527) (not d!1285281) (not b_lambda!130653) (not d!1285511) (not b_lambda!130567) (not b!4351786) (not b_lambda!130565) (not d!1285269) (not b!4351650) (not b!4351616) (not d!1285383) (not d!1285481) (not b!4351202) (not b!4351530) (not b!4351505))
(check-sat)
