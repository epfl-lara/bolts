; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!421644 () Bool)

(assert start!421644)

(declare-fun b!4356553 () Bool)

(declare-fun e!2711141 () Bool)

(declare-datatypes ((V!10541 0))(
  ( (V!10542 (val!16507 Int)) )
))
(declare-datatypes ((K!10295 0))(
  ( (K!10296 (val!16508 Int)) )
))
(declare-datatypes ((tuple2!48334 0))(
  ( (tuple2!48335 (_1!27461 K!10295) (_2!27461 V!10541)) )
))
(declare-datatypes ((List!49059 0))(
  ( (Nil!48935) (Cons!48935 (h!54486 tuple2!48334) (t!355979 List!49059)) )
))
(declare-datatypes ((tuple2!48336 0))(
  ( (tuple2!48337 (_1!27462 (_ BitVec 64)) (_2!27462 List!49059)) )
))
(declare-datatypes ((List!49060 0))(
  ( (Nil!48936) (Cons!48936 (h!54487 tuple2!48336) (t!355980 List!49060)) )
))
(declare-datatypes ((ListLongMap!1615 0))(
  ( (ListLongMap!1616 (toList!2965 List!49060)) )
))
(declare-fun lt!1569108 () ListLongMap!1615)

(declare-fun lambda!140479 () Int)

(declare-fun forall!9122 (List!49060 Int) Bool)

(assert (=> b!4356553 (= e!2711141 (forall!9122 (toList!2965 lt!1569108) lambda!140479))))

(declare-fun b!4356554 () Bool)

(declare-fun e!2711142 () Bool)

(declare-fun e!2711147 () Bool)

(assert (=> b!4356554 (= e!2711142 (not e!2711147))))

(declare-fun res!1790583 () Bool)

(assert (=> b!4356554 (=> res!1790583 e!2711147)))

(declare-fun newBucket!200 () List!49059)

(declare-fun lt!1569096 () List!49059)

(declare-fun lt!1569109 () tuple2!48334)

(declare-fun key!3918 () K!10295)

(declare-fun removePairForKey!461 (List!49059 K!10295) List!49059)

(assert (=> b!4356554 (= res!1790583 (not (= newBucket!200 (Cons!48935 lt!1569109 (removePairForKey!461 lt!1569096 key!3918)))))))

(declare-fun newValue!99 () V!10541)

(assert (=> b!4356554 (= lt!1569109 (tuple2!48335 key!3918 newValue!99))))

(declare-fun lt!1569102 () tuple2!48336)

(declare-fun lm!1707 () ListLongMap!1615)

(declare-datatypes ((Unit!71637 0))(
  ( (Unit!71638) )
))
(declare-fun lt!1569112 () Unit!71637)

(declare-fun forallContained!1763 (List!49060 Int tuple2!48336) Unit!71637)

(assert (=> b!4356554 (= lt!1569112 (forallContained!1763 (toList!2965 lm!1707) lambda!140479 lt!1569102))))

(declare-fun contains!11141 (List!49060 tuple2!48336) Bool)

(assert (=> b!4356554 (contains!11141 (toList!2965 lm!1707) lt!1569102)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4356554 (= lt!1569102 (tuple2!48337 hash!377 lt!1569096))))

(declare-fun lt!1569097 () Unit!71637)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!338 (List!49060 (_ BitVec 64) List!49059) Unit!71637)

(assert (=> b!4356554 (= lt!1569097 (lemmaGetValueByKeyImpliesContainsTuple!338 (toList!2965 lm!1707) hash!377 lt!1569096))))

(declare-fun apply!11343 (ListLongMap!1615 (_ BitVec 64)) List!49059)

(assert (=> b!4356554 (= lt!1569096 (apply!11343 lm!1707 hash!377))))

(declare-fun tp_is_empty!25203 () Bool)

(declare-fun b!4356555 () Bool)

(declare-fun e!2711145 () Bool)

(declare-fun tp!1330143 () Bool)

(declare-fun tp_is_empty!25201 () Bool)

(assert (=> b!4356555 (= e!2711145 (and tp_is_empty!25201 tp_is_empty!25203 tp!1330143))))

(declare-fun b!4356556 () Bool)

(declare-fun res!1790576 () Bool)

(declare-fun e!2711143 () Bool)

(assert (=> b!4356556 (=> (not res!1790576) (not e!2711143))))

(declare-datatypes ((Hashable!4883 0))(
  ( (HashableExt!4882 (__x!30586 Int)) )
))
(declare-fun hashF!1247 () Hashable!4883)

(declare-fun hash!1559 (Hashable!4883 K!10295) (_ BitVec 64))

(assert (=> b!4356556 (= res!1790576 (= (hash!1559 hashF!1247 key!3918) hash!377))))

(declare-fun b!4356557 () Bool)

(declare-fun res!1790580 () Bool)

(assert (=> b!4356557 (=> res!1790580 e!2711147)))

(declare-fun noDuplicateKeys!491 (List!49059) Bool)

(assert (=> b!4356557 (= res!1790580 (not (noDuplicateKeys!491 newBucket!200)))))

(declare-fun b!4356558 () Bool)

(declare-fun e!2711148 () Bool)

(declare-fun tp!1330144 () Bool)

(assert (=> b!4356558 (= e!2711148 tp!1330144)))

(declare-fun b!4356559 () Bool)

(declare-fun e!2711146 () Bool)

(assert (=> b!4356559 (= e!2711147 e!2711146)))

(declare-fun res!1790581 () Bool)

(assert (=> b!4356559 (=> res!1790581 e!2711146)))

(get-info :version)

(assert (=> b!4356559 (= res!1790581 (or (and ((_ is Cons!48936) (toList!2965 lm!1707)) (= (_1!27462 (h!54487 (toList!2965 lm!1707))) hash!377)) (not ((_ is Cons!48936) (toList!2965 lm!1707))) (= (_1!27462 (h!54487 (toList!2965 lm!1707))) hash!377)))))

(assert (=> b!4356559 e!2711141))

(declare-fun res!1790578 () Bool)

(assert (=> b!4356559 (=> (not res!1790578) (not e!2711141))))

(assert (=> b!4356559 (= res!1790578 (forall!9122 (toList!2965 lt!1569108) lambda!140479))))

(declare-fun lt!1569101 () tuple2!48336)

(declare-fun +!639 (ListLongMap!1615 tuple2!48336) ListLongMap!1615)

(assert (=> b!4356559 (= lt!1569108 (+!639 lm!1707 lt!1569101))))

(assert (=> b!4356559 (= lt!1569101 (tuple2!48337 hash!377 newBucket!200))))

(declare-fun lt!1569111 () Unit!71637)

(declare-fun addValidProp!145 (ListLongMap!1615 Int (_ BitVec 64) List!49059) Unit!71637)

(assert (=> b!4356559 (= lt!1569111 (addValidProp!145 lm!1707 lambda!140479 hash!377 newBucket!200))))

(assert (=> b!4356559 (forall!9122 (toList!2965 lm!1707) lambda!140479)))

(declare-fun b!4356560 () Bool)

(declare-fun isEmpty!28201 (ListLongMap!1615) Bool)

(assert (=> b!4356560 (= e!2711146 (not (isEmpty!28201 lm!1707)))))

(declare-datatypes ((ListMap!2209 0))(
  ( (ListMap!2210 (toList!2966 List!49059)) )
))
(declare-fun lt!1569100 () ListMap!2209)

(declare-fun lt!1569106 () ListMap!2209)

(declare-fun eq!261 (ListMap!2209 ListMap!2209) Bool)

(declare-fun addToMapMapFromBucket!187 (List!49059 ListMap!2209) ListMap!2209)

(declare-fun +!640 (ListMap!2209 tuple2!48334) ListMap!2209)

(assert (=> b!4356560 (eq!261 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) lt!1569106) (+!640 lt!1569100 lt!1569109))))

(declare-fun lt!1569103 () ListMap!2209)

(declare-fun lt!1569105 () Unit!71637)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!70 (ListMap!2209 K!10295 V!10541 List!49059) Unit!71637)

(assert (=> b!4356560 (= lt!1569105 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!70 lt!1569103 key!3918 newValue!99 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(declare-fun lt!1569110 () ListMap!2209)

(assert (=> b!4356560 (= lt!1569110 lt!1569100)))

(assert (=> b!4356560 (= lt!1569100 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) lt!1569103))))

(declare-fun e!2711140 () Bool)

(assert (=> b!4356560 e!2711140))

(declare-fun res!1790575 () Bool)

(assert (=> b!4356560 (=> (not res!1790575) (not e!2711140))))

(declare-fun lt!1569114 () ListMap!2209)

(assert (=> b!4356560 (= res!1790575 (eq!261 lt!1569114 lt!1569106))))

(assert (=> b!4356560 (= lt!1569106 (+!640 lt!1569103 lt!1569109))))

(declare-fun lt!1569099 () ListLongMap!1615)

(declare-fun extractMap!550 (List!49060) ListMap!2209)

(assert (=> b!4356560 (= lt!1569114 (extractMap!550 (toList!2965 (+!639 lt!1569099 lt!1569101))))))

(declare-fun lt!1569098 () Unit!71637)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!95 (ListLongMap!1615 (_ BitVec 64) List!49059 K!10295 V!10541 Hashable!4883) Unit!71637)

(assert (=> b!4356560 (= lt!1569098 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!95 lt!1569099 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11142 (ListMap!2209 K!10295) Bool)

(assert (=> b!4356560 (contains!11142 lt!1569103 key!3918)))

(assert (=> b!4356560 (= lt!1569103 (extractMap!550 (toList!2965 lt!1569099)))))

(declare-fun tail!6998 (ListLongMap!1615) ListLongMap!1615)

(assert (=> b!4356560 (= lt!1569099 (tail!6998 lm!1707))))

(declare-fun lt!1569104 () ListMap!2209)

(assert (=> b!4356560 (contains!11142 lt!1569104 key!3918)))

(declare-fun lt!1569107 () Unit!71637)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!34 (List!49059 K!10295 V!10541 ListMap!2209) Unit!71637)

(assert (=> b!4356560 (= lt!1569107 (lemmaAddToMapContainsAndNotInListThenInAcc!34 (_2!27462 (h!54487 (toList!2965 lm!1707))) key!3918 newValue!99 lt!1569104))))

(assert (=> b!4356560 (= lt!1569104 (extractMap!550 (t!355980 (toList!2965 lm!1707))))))

(declare-fun e!2711144 () Bool)

(assert (=> b!4356560 e!2711144))

(declare-fun res!1790573 () Bool)

(assert (=> b!4356560 (=> (not res!1790573) (not e!2711144))))

(declare-fun containsKey!692 (List!49059 K!10295) Bool)

(assert (=> b!4356560 (= res!1790573 (not (containsKey!692 (apply!11343 lm!1707 (_1!27462 (h!54487 (toList!2965 lm!1707)))) key!3918)))))

(declare-fun lt!1569113 () Unit!71637)

(declare-fun lemmaNotSameHashThenCannotContainKey!38 (ListLongMap!1615 K!10295 (_ BitVec 64) Hashable!4883) Unit!71637)

(assert (=> b!4356560 (= lt!1569113 (lemmaNotSameHashThenCannotContainKey!38 lm!1707 key!3918 (_1!27462 (h!54487 (toList!2965 lm!1707))) hashF!1247))))

(declare-fun b!4356561 () Bool)

(declare-fun res!1790582 () Bool)

(assert (=> b!4356561 (=> (not res!1790582) (not e!2711143))))

(declare-fun allKeysSameHash!449 (List!49059 (_ BitVec 64) Hashable!4883) Bool)

(assert (=> b!4356561 (= res!1790582 (allKeysSameHash!449 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4356562 () Bool)

(declare-fun res!1790574 () Bool)

(assert (=> b!4356562 (=> (not res!1790574) (not e!2711142))))

(declare-fun contains!11143 (ListLongMap!1615 (_ BitVec 64)) Bool)

(assert (=> b!4356562 (= res!1790574 (contains!11143 lm!1707 hash!377))))

(declare-fun res!1790572 () Bool)

(assert (=> start!421644 (=> (not res!1790572) (not e!2711143))))

(assert (=> start!421644 (= res!1790572 (forall!9122 (toList!2965 lm!1707) lambda!140479))))

(assert (=> start!421644 e!2711143))

(assert (=> start!421644 e!2711145))

(assert (=> start!421644 true))

(declare-fun inv!64481 (ListLongMap!1615) Bool)

(assert (=> start!421644 (and (inv!64481 lm!1707) e!2711148)))

(assert (=> start!421644 tp_is_empty!25201))

(assert (=> start!421644 tp_is_empty!25203))

(declare-fun b!4356563 () Bool)

(declare-fun head!9050 (ListLongMap!1615) tuple2!48336)

(assert (=> b!4356563 (= e!2711140 (not (= (head!9050 lm!1707) lt!1569101)))))

(declare-fun b!4356564 () Bool)

(assert (=> b!4356564 (= e!2711143 e!2711142)))

(declare-fun res!1790577 () Bool)

(assert (=> b!4356564 (=> (not res!1790577) (not e!2711142))))

(assert (=> b!4356564 (= res!1790577 (contains!11142 lt!1569110 key!3918))))

(assert (=> b!4356564 (= lt!1569110 (extractMap!550 (toList!2965 lm!1707)))))

(declare-fun b!4356565 () Bool)

(declare-fun res!1790579 () Bool)

(assert (=> b!4356565 (=> (not res!1790579) (not e!2711143))))

(declare-fun allKeysSameHashInMap!595 (ListLongMap!1615 Hashable!4883) Bool)

(assert (=> b!4356565 (= res!1790579 (allKeysSameHashInMap!595 lm!1707 hashF!1247))))

(declare-fun b!4356566 () Bool)

(assert (=> b!4356566 (= e!2711144 (not (containsKey!692 (_2!27462 (h!54487 (toList!2965 lm!1707))) key!3918)))))

(assert (= (and start!421644 res!1790572) b!4356565))

(assert (= (and b!4356565 res!1790579) b!4356556))

(assert (= (and b!4356556 res!1790576) b!4356561))

(assert (= (and b!4356561 res!1790582) b!4356564))

(assert (= (and b!4356564 res!1790577) b!4356562))

(assert (= (and b!4356562 res!1790574) b!4356554))

(assert (= (and b!4356554 (not res!1790583)) b!4356557))

(assert (= (and b!4356557 (not res!1790580)) b!4356559))

(assert (= (and b!4356559 res!1790578) b!4356553))

(assert (= (and b!4356559 (not res!1790581)) b!4356560))

(assert (= (and b!4356560 res!1790573) b!4356566))

(assert (= (and b!4356560 res!1790575) b!4356563))

(assert (= (and start!421644 ((_ is Cons!48935) newBucket!200)) b!4356555))

(assert (= start!421644 b!4356558))

(declare-fun m!4970531 () Bool)

(assert (=> b!4356557 m!4970531))

(declare-fun m!4970533 () Bool)

(assert (=> b!4356556 m!4970533))

(declare-fun m!4970535 () Bool)

(assert (=> b!4356565 m!4970535))

(declare-fun m!4970537 () Bool)

(assert (=> b!4356563 m!4970537))

(declare-fun m!4970539 () Bool)

(assert (=> start!421644 m!4970539))

(declare-fun m!4970541 () Bool)

(assert (=> start!421644 m!4970541))

(declare-fun m!4970543 () Bool)

(assert (=> b!4356566 m!4970543))

(declare-fun m!4970545 () Bool)

(assert (=> b!4356561 m!4970545))

(declare-fun m!4970547 () Bool)

(assert (=> b!4356560 m!4970547))

(declare-fun m!4970549 () Bool)

(assert (=> b!4356560 m!4970549))

(declare-fun m!4970551 () Bool)

(assert (=> b!4356560 m!4970551))

(declare-fun m!4970553 () Bool)

(assert (=> b!4356560 m!4970553))

(declare-fun m!4970555 () Bool)

(assert (=> b!4356560 m!4970555))

(declare-fun m!4970557 () Bool)

(assert (=> b!4356560 m!4970557))

(declare-fun m!4970559 () Bool)

(assert (=> b!4356560 m!4970559))

(declare-fun m!4970561 () Bool)

(assert (=> b!4356560 m!4970561))

(declare-fun m!4970563 () Bool)

(assert (=> b!4356560 m!4970563))

(declare-fun m!4970565 () Bool)

(assert (=> b!4356560 m!4970565))

(declare-fun m!4970567 () Bool)

(assert (=> b!4356560 m!4970567))

(assert (=> b!4356560 m!4970557))

(declare-fun m!4970569 () Bool)

(assert (=> b!4356560 m!4970569))

(assert (=> b!4356560 m!4970559))

(declare-fun m!4970571 () Bool)

(assert (=> b!4356560 m!4970571))

(declare-fun m!4970573 () Bool)

(assert (=> b!4356560 m!4970573))

(declare-fun m!4970575 () Bool)

(assert (=> b!4356560 m!4970575))

(declare-fun m!4970577 () Bool)

(assert (=> b!4356560 m!4970577))

(declare-fun m!4970579 () Bool)

(assert (=> b!4356560 m!4970579))

(declare-fun m!4970581 () Bool)

(assert (=> b!4356560 m!4970581))

(declare-fun m!4970583 () Bool)

(assert (=> b!4356560 m!4970583))

(assert (=> b!4356560 m!4970583))

(declare-fun m!4970585 () Bool)

(assert (=> b!4356560 m!4970585))

(declare-fun m!4970587 () Bool)

(assert (=> b!4356562 m!4970587))

(declare-fun m!4970589 () Bool)

(assert (=> b!4356564 m!4970589))

(declare-fun m!4970591 () Bool)

(assert (=> b!4356564 m!4970591))

(declare-fun m!4970593 () Bool)

(assert (=> b!4356553 m!4970593))

(assert (=> b!4356559 m!4970593))

(declare-fun m!4970595 () Bool)

(assert (=> b!4356559 m!4970595))

(declare-fun m!4970597 () Bool)

(assert (=> b!4356559 m!4970597))

(assert (=> b!4356559 m!4970539))

(declare-fun m!4970599 () Bool)

(assert (=> b!4356554 m!4970599))

(declare-fun m!4970601 () Bool)

(assert (=> b!4356554 m!4970601))

(declare-fun m!4970603 () Bool)

(assert (=> b!4356554 m!4970603))

(declare-fun m!4970605 () Bool)

(assert (=> b!4356554 m!4970605))

(declare-fun m!4970607 () Bool)

(assert (=> b!4356554 m!4970607))

(check-sat (not b!4356562) (not b!4356561) (not b!4356557) (not b!4356559) (not b!4356563) (not b!4356560) (not b!4356565) (not b!4356554) tp_is_empty!25201 (not b!4356555) (not b!4356558) (not b!4356564) (not b!4356566) (not b!4356553) tp_is_empty!25203 (not b!4356556) (not start!421644))
(check-sat)
(get-model)

(declare-fun d!1287841 () Bool)

(declare-fun res!1790614 () Bool)

(declare-fun e!2711185 () Bool)

(assert (=> d!1287841 (=> res!1790614 e!2711185)))

(assert (=> d!1287841 (= res!1790614 (not ((_ is Cons!48935) newBucket!200)))))

(assert (=> d!1287841 (= (noDuplicateKeys!491 newBucket!200) e!2711185)))

(declare-fun b!4356622 () Bool)

(declare-fun e!2711186 () Bool)

(assert (=> b!4356622 (= e!2711185 e!2711186)))

(declare-fun res!1790615 () Bool)

(assert (=> b!4356622 (=> (not res!1790615) (not e!2711186))))

(assert (=> b!4356622 (= res!1790615 (not (containsKey!692 (t!355979 newBucket!200) (_1!27461 (h!54486 newBucket!200)))))))

(declare-fun b!4356623 () Bool)

(assert (=> b!4356623 (= e!2711186 (noDuplicateKeys!491 (t!355979 newBucket!200)))))

(assert (= (and d!1287841 (not res!1790614)) b!4356622))

(assert (= (and b!4356622 res!1790615) b!4356623))

(declare-fun m!4970661 () Bool)

(assert (=> b!4356622 m!4970661))

(declare-fun m!4970663 () Bool)

(assert (=> b!4356623 m!4970663))

(assert (=> b!4356557 d!1287841))

(declare-fun d!1287845 () Bool)

(declare-fun res!1790620 () Bool)

(declare-fun e!2711191 () Bool)

(assert (=> d!1287845 (=> res!1790620 e!2711191)))

(assert (=> d!1287845 (= res!1790620 (and ((_ is Cons!48935) (_2!27462 (h!54487 (toList!2965 lm!1707)))) (= (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) key!3918)))))

(assert (=> d!1287845 (= (containsKey!692 (_2!27462 (h!54487 (toList!2965 lm!1707))) key!3918) e!2711191)))

(declare-fun b!4356628 () Bool)

(declare-fun e!2711192 () Bool)

(assert (=> b!4356628 (= e!2711191 e!2711192)))

(declare-fun res!1790621 () Bool)

(assert (=> b!4356628 (=> (not res!1790621) (not e!2711192))))

(assert (=> b!4356628 (= res!1790621 ((_ is Cons!48935) (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(declare-fun b!4356629 () Bool)

(assert (=> b!4356629 (= e!2711192 (containsKey!692 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) key!3918))))

(assert (= (and d!1287845 (not res!1790620)) b!4356628))

(assert (= (and b!4356628 res!1790621) b!4356629))

(declare-fun m!4970665 () Bool)

(assert (=> b!4356629 m!4970665))

(assert (=> b!4356566 d!1287845))

(declare-fun d!1287847 () Bool)

(declare-fun hash!1565 (Hashable!4883 K!10295) (_ BitVec 64))

(assert (=> d!1287847 (= (hash!1559 hashF!1247 key!3918) (hash!1565 hashF!1247 key!3918))))

(declare-fun bs!631404 () Bool)

(assert (= bs!631404 d!1287847))

(declare-fun m!4970667 () Bool)

(assert (=> bs!631404 m!4970667))

(assert (=> b!4356556 d!1287847))

(declare-fun d!1287849 () Bool)

(declare-datatypes ((Option!10468 0))(
  ( (None!10467) (Some!10467 (v!43343 List!49059)) )
))
(declare-fun get!15896 (Option!10468) List!49059)

(declare-fun getValueByKey!454 (List!49060 (_ BitVec 64)) Option!10468)

(assert (=> d!1287849 (= (apply!11343 lm!1707 hash!377) (get!15896 (getValueByKey!454 (toList!2965 lm!1707) hash!377)))))

(declare-fun bs!631407 () Bool)

(assert (= bs!631407 d!1287849))

(declare-fun m!4970675 () Bool)

(assert (=> bs!631407 m!4970675))

(assert (=> bs!631407 m!4970675))

(declare-fun m!4970677 () Bool)

(assert (=> bs!631407 m!4970677))

(assert (=> b!4356554 d!1287849))

(declare-fun d!1287853 () Bool)

(declare-fun lt!1569174 () List!49059)

(assert (=> d!1287853 (not (containsKey!692 lt!1569174 key!3918))))

(declare-fun e!2711213 () List!49059)

(assert (=> d!1287853 (= lt!1569174 e!2711213)))

(declare-fun c!740703 () Bool)

(assert (=> d!1287853 (= c!740703 (and ((_ is Cons!48935) lt!1569096) (= (_1!27461 (h!54486 lt!1569096)) key!3918)))))

(assert (=> d!1287853 (noDuplicateKeys!491 lt!1569096)))

(assert (=> d!1287853 (= (removePairForKey!461 lt!1569096 key!3918) lt!1569174)))

(declare-fun b!4356659 () Bool)

(assert (=> b!4356659 (= e!2711213 (t!355979 lt!1569096))))

(declare-fun b!4356662 () Bool)

(declare-fun e!2711212 () List!49059)

(assert (=> b!4356662 (= e!2711212 Nil!48935)))

(declare-fun b!4356661 () Bool)

(assert (=> b!4356661 (= e!2711212 (Cons!48935 (h!54486 lt!1569096) (removePairForKey!461 (t!355979 lt!1569096) key!3918)))))

(declare-fun b!4356660 () Bool)

(assert (=> b!4356660 (= e!2711213 e!2711212)))

(declare-fun c!740702 () Bool)

(assert (=> b!4356660 (= c!740702 ((_ is Cons!48935) lt!1569096))))

(assert (= (and d!1287853 c!740703) b!4356659))

(assert (= (and d!1287853 (not c!740703)) b!4356660))

(assert (= (and b!4356660 c!740702) b!4356661))

(assert (= (and b!4356660 (not c!740702)) b!4356662))

(declare-fun m!4970695 () Bool)

(assert (=> d!1287853 m!4970695))

(declare-fun m!4970697 () Bool)

(assert (=> d!1287853 m!4970697))

(declare-fun m!4970699 () Bool)

(assert (=> b!4356661 m!4970699))

(assert (=> b!4356554 d!1287853))

(declare-fun d!1287861 () Bool)

(declare-fun lt!1569183 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7720 (List!49060) (InoxSet tuple2!48336))

(assert (=> d!1287861 (= lt!1569183 (select (content!7720 (toList!2965 lm!1707)) lt!1569102))))

(declare-fun e!2711228 () Bool)

(assert (=> d!1287861 (= lt!1569183 e!2711228)))

(declare-fun res!1790638 () Bool)

(assert (=> d!1287861 (=> (not res!1790638) (not e!2711228))))

(assert (=> d!1287861 (= res!1790638 ((_ is Cons!48936) (toList!2965 lm!1707)))))

(assert (=> d!1287861 (= (contains!11141 (toList!2965 lm!1707) lt!1569102) lt!1569183)))

(declare-fun b!4356682 () Bool)

(declare-fun e!2711227 () Bool)

(assert (=> b!4356682 (= e!2711228 e!2711227)))

(declare-fun res!1790639 () Bool)

(assert (=> b!4356682 (=> res!1790639 e!2711227)))

(assert (=> b!4356682 (= res!1790639 (= (h!54487 (toList!2965 lm!1707)) lt!1569102))))

(declare-fun b!4356683 () Bool)

(assert (=> b!4356683 (= e!2711227 (contains!11141 (t!355980 (toList!2965 lm!1707)) lt!1569102))))

(assert (= (and d!1287861 res!1790638) b!4356682))

(assert (= (and b!4356682 (not res!1790639)) b!4356683))

(declare-fun m!4970711 () Bool)

(assert (=> d!1287861 m!4970711))

(declare-fun m!4970713 () Bool)

(assert (=> d!1287861 m!4970713))

(declare-fun m!4970715 () Bool)

(assert (=> b!4356683 m!4970715))

(assert (=> b!4356554 d!1287861))

(declare-fun d!1287867 () Bool)

(declare-fun dynLambda!20635 (Int tuple2!48336) Bool)

(assert (=> d!1287867 (dynLambda!20635 lambda!140479 lt!1569102)))

(declare-fun lt!1569189 () Unit!71637)

(declare-fun choose!26910 (List!49060 Int tuple2!48336) Unit!71637)

(assert (=> d!1287867 (= lt!1569189 (choose!26910 (toList!2965 lm!1707) lambda!140479 lt!1569102))))

(declare-fun e!2711240 () Bool)

(assert (=> d!1287867 e!2711240))

(declare-fun res!1790651 () Bool)

(assert (=> d!1287867 (=> (not res!1790651) (not e!2711240))))

(assert (=> d!1287867 (= res!1790651 (forall!9122 (toList!2965 lm!1707) lambda!140479))))

(assert (=> d!1287867 (= (forallContained!1763 (toList!2965 lm!1707) lambda!140479 lt!1569102) lt!1569189)))

(declare-fun b!4356695 () Bool)

(assert (=> b!4356695 (= e!2711240 (contains!11141 (toList!2965 lm!1707) lt!1569102))))

(assert (= (and d!1287867 res!1790651) b!4356695))

(declare-fun b_lambda!131191 () Bool)

(assert (=> (not b_lambda!131191) (not d!1287867)))

(declare-fun m!4970729 () Bool)

(assert (=> d!1287867 m!4970729))

(declare-fun m!4970731 () Bool)

(assert (=> d!1287867 m!4970731))

(assert (=> d!1287867 m!4970539))

(assert (=> b!4356695 m!4970599))

(assert (=> b!4356554 d!1287867))

(declare-fun d!1287877 () Bool)

(assert (=> d!1287877 (contains!11141 (toList!2965 lm!1707) (tuple2!48337 hash!377 lt!1569096))))

(declare-fun lt!1569203 () Unit!71637)

(declare-fun choose!26911 (List!49060 (_ BitVec 64) List!49059) Unit!71637)

(assert (=> d!1287877 (= lt!1569203 (choose!26911 (toList!2965 lm!1707) hash!377 lt!1569096))))

(declare-fun e!2711251 () Bool)

(assert (=> d!1287877 e!2711251))

(declare-fun res!1790658 () Bool)

(assert (=> d!1287877 (=> (not res!1790658) (not e!2711251))))

(declare-fun isStrictlySorted!104 (List!49060) Bool)

(assert (=> d!1287877 (= res!1790658 (isStrictlySorted!104 (toList!2965 lm!1707)))))

(assert (=> d!1287877 (= (lemmaGetValueByKeyImpliesContainsTuple!338 (toList!2965 lm!1707) hash!377 lt!1569096) lt!1569203)))

(declare-fun b!4356707 () Bool)

(assert (=> b!4356707 (= e!2711251 (= (getValueByKey!454 (toList!2965 lm!1707) hash!377) (Some!10467 lt!1569096)))))

(assert (= (and d!1287877 res!1790658) b!4356707))

(declare-fun m!4970763 () Bool)

(assert (=> d!1287877 m!4970763))

(declare-fun m!4970765 () Bool)

(assert (=> d!1287877 m!4970765))

(declare-fun m!4970767 () Bool)

(assert (=> d!1287877 m!4970767))

(assert (=> b!4356707 m!4970675))

(assert (=> b!4356554 d!1287877))

(declare-fun bs!631417 () Bool)

(declare-fun d!1287883 () Bool)

(assert (= bs!631417 (and d!1287883 start!421644)))

(declare-fun lambda!140494 () Int)

(assert (=> bs!631417 (not (= lambda!140494 lambda!140479))))

(assert (=> d!1287883 true))

(assert (=> d!1287883 (= (allKeysSameHashInMap!595 lm!1707 hashF!1247) (forall!9122 (toList!2965 lm!1707) lambda!140494))))

(declare-fun bs!631419 () Bool)

(assert (= bs!631419 d!1287883))

(declare-fun m!4970799 () Bool)

(assert (=> bs!631419 m!4970799))

(assert (=> b!4356565 d!1287883))

(declare-fun d!1287895 () Bool)

(declare-fun res!1790670 () Bool)

(declare-fun e!2711262 () Bool)

(assert (=> d!1287895 (=> res!1790670 e!2711262)))

(assert (=> d!1287895 (= res!1790670 ((_ is Nil!48936) (toList!2965 lt!1569108)))))

(assert (=> d!1287895 (= (forall!9122 (toList!2965 lt!1569108) lambda!140479) e!2711262)))

(declare-fun b!4356724 () Bool)

(declare-fun e!2711263 () Bool)

(assert (=> b!4356724 (= e!2711262 e!2711263)))

(declare-fun res!1790671 () Bool)

(assert (=> b!4356724 (=> (not res!1790671) (not e!2711263))))

(assert (=> b!4356724 (= res!1790671 (dynLambda!20635 lambda!140479 (h!54487 (toList!2965 lt!1569108))))))

(declare-fun b!4356725 () Bool)

(assert (=> b!4356725 (= e!2711263 (forall!9122 (t!355980 (toList!2965 lt!1569108)) lambda!140479))))

(assert (= (and d!1287895 (not res!1790670)) b!4356724))

(assert (= (and b!4356724 res!1790671) b!4356725))

(declare-fun b_lambda!131193 () Bool)

(assert (=> (not b_lambda!131193) (not b!4356724)))

(declare-fun m!4970805 () Bool)

(assert (=> b!4356724 m!4970805))

(declare-fun m!4970807 () Bool)

(assert (=> b!4356725 m!4970807))

(assert (=> b!4356553 d!1287895))

(declare-fun b!4356744 () Bool)

(declare-fun e!2711279 () Bool)

(declare-datatypes ((List!49062 0))(
  ( (Nil!48938) (Cons!48938 (h!54491 K!10295) (t!355982 List!49062)) )
))
(declare-fun contains!11145 (List!49062 K!10295) Bool)

(declare-fun keys!16530 (ListMap!2209) List!49062)

(assert (=> b!4356744 (= e!2711279 (not (contains!11145 (keys!16530 lt!1569110) key!3918)))))

(declare-fun b!4356745 () Bool)

(declare-fun e!2711281 () Bool)

(assert (=> b!4356745 (= e!2711281 (contains!11145 (keys!16530 lt!1569110) key!3918))))

(declare-fun b!4356746 () Bool)

(declare-fun e!2711280 () Unit!71637)

(declare-fun Unit!71656 () Unit!71637)

(assert (=> b!4356746 (= e!2711280 Unit!71656)))

(declare-fun b!4356747 () Bool)

(declare-fun e!2711278 () Unit!71637)

(declare-fun lt!1569229 () Unit!71637)

(assert (=> b!4356747 (= e!2711278 lt!1569229)))

(declare-fun lt!1569235 () Unit!71637)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!365 (List!49059 K!10295) Unit!71637)

(assert (=> b!4356747 (= lt!1569235 (lemmaContainsKeyImpliesGetValueByKeyDefined!365 (toList!2966 lt!1569110) key!3918))))

(declare-datatypes ((Option!10469 0))(
  ( (None!10468) (Some!10468 (v!43344 V!10541)) )
))
(declare-fun isDefined!7762 (Option!10469) Bool)

(declare-fun getValueByKey!455 (List!49059 K!10295) Option!10469)

(assert (=> b!4356747 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569110) key!3918))))

(declare-fun lt!1569228 () Unit!71637)

(assert (=> b!4356747 (= lt!1569228 lt!1569235)))

(declare-fun lemmaInListThenGetKeysListContains!123 (List!49059 K!10295) Unit!71637)

(assert (=> b!4356747 (= lt!1569229 (lemmaInListThenGetKeysListContains!123 (toList!2966 lt!1569110) key!3918))))

(declare-fun call!302758 () Bool)

(assert (=> b!4356747 call!302758))

(declare-fun bm!302753 () Bool)

(declare-fun e!2711276 () List!49062)

(assert (=> bm!302753 (= call!302758 (contains!11145 e!2711276 key!3918))))

(declare-fun c!740721 () Bool)

(declare-fun c!740720 () Bool)

(assert (=> bm!302753 (= c!740721 c!740720)))

(declare-fun b!4356748 () Bool)

(assert (=> b!4356748 (= e!2711276 (keys!16530 lt!1569110))))

(declare-fun b!4356749 () Bool)

(assert (=> b!4356749 (= e!2711278 e!2711280)))

(declare-fun c!740722 () Bool)

(assert (=> b!4356749 (= c!740722 call!302758)))

(declare-fun d!1287899 () Bool)

(declare-fun e!2711277 () Bool)

(assert (=> d!1287899 e!2711277))

(declare-fun res!1790679 () Bool)

(assert (=> d!1287899 (=> res!1790679 e!2711277)))

(assert (=> d!1287899 (= res!1790679 e!2711279)))

(declare-fun res!1790680 () Bool)

(assert (=> d!1287899 (=> (not res!1790680) (not e!2711279))))

(declare-fun lt!1569233 () Bool)

(assert (=> d!1287899 (= res!1790680 (not lt!1569233))))

(declare-fun lt!1569230 () Bool)

(assert (=> d!1287899 (= lt!1569233 lt!1569230)))

(declare-fun lt!1569234 () Unit!71637)

(assert (=> d!1287899 (= lt!1569234 e!2711278)))

(assert (=> d!1287899 (= c!740720 lt!1569230)))

(declare-fun containsKey!695 (List!49059 K!10295) Bool)

(assert (=> d!1287899 (= lt!1569230 (containsKey!695 (toList!2966 lt!1569110) key!3918))))

(assert (=> d!1287899 (= (contains!11142 lt!1569110 key!3918) lt!1569233)))

(declare-fun b!4356750 () Bool)

(assert (=> b!4356750 false))

(declare-fun lt!1569231 () Unit!71637)

(declare-fun lt!1569232 () Unit!71637)

(assert (=> b!4356750 (= lt!1569231 lt!1569232)))

(assert (=> b!4356750 (containsKey!695 (toList!2966 lt!1569110) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!124 (List!49059 K!10295) Unit!71637)

(assert (=> b!4356750 (= lt!1569232 (lemmaInGetKeysListThenContainsKey!124 (toList!2966 lt!1569110) key!3918))))

(declare-fun Unit!71666 () Unit!71637)

(assert (=> b!4356750 (= e!2711280 Unit!71666)))

(declare-fun b!4356751 () Bool)

(declare-fun getKeysList!126 (List!49059) List!49062)

(assert (=> b!4356751 (= e!2711276 (getKeysList!126 (toList!2966 lt!1569110)))))

(declare-fun b!4356752 () Bool)

(assert (=> b!4356752 (= e!2711277 e!2711281)))

(declare-fun res!1790678 () Bool)

(assert (=> b!4356752 (=> (not res!1790678) (not e!2711281))))

(assert (=> b!4356752 (= res!1790678 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569110) key!3918)))))

(assert (= (and d!1287899 c!740720) b!4356747))

(assert (= (and d!1287899 (not c!740720)) b!4356749))

(assert (= (and b!4356749 c!740722) b!4356750))

(assert (= (and b!4356749 (not c!740722)) b!4356746))

(assert (= (or b!4356747 b!4356749) bm!302753))

(assert (= (and bm!302753 c!740721) b!4356751))

(assert (= (and bm!302753 (not c!740721)) b!4356748))

(assert (= (and d!1287899 res!1790680) b!4356744))

(assert (= (and d!1287899 (not res!1790679)) b!4356752))

(assert (= (and b!4356752 res!1790678) b!4356745))

(declare-fun m!4970809 () Bool)

(assert (=> bm!302753 m!4970809))

(declare-fun m!4970811 () Bool)

(assert (=> d!1287899 m!4970811))

(declare-fun m!4970813 () Bool)

(assert (=> b!4356745 m!4970813))

(assert (=> b!4356745 m!4970813))

(declare-fun m!4970815 () Bool)

(assert (=> b!4356745 m!4970815))

(declare-fun m!4970817 () Bool)

(assert (=> b!4356747 m!4970817))

(declare-fun m!4970819 () Bool)

(assert (=> b!4356747 m!4970819))

(assert (=> b!4356747 m!4970819))

(declare-fun m!4970821 () Bool)

(assert (=> b!4356747 m!4970821))

(declare-fun m!4970823 () Bool)

(assert (=> b!4356747 m!4970823))

(declare-fun m!4970825 () Bool)

(assert (=> b!4356751 m!4970825))

(assert (=> b!4356744 m!4970813))

(assert (=> b!4356744 m!4970813))

(assert (=> b!4356744 m!4970815))

(assert (=> b!4356752 m!4970819))

(assert (=> b!4356752 m!4970819))

(assert (=> b!4356752 m!4970821))

(assert (=> b!4356748 m!4970813))

(assert (=> b!4356750 m!4970811))

(declare-fun m!4970827 () Bool)

(assert (=> b!4356750 m!4970827))

(assert (=> b!4356564 d!1287899))

(declare-fun bs!631424 () Bool)

(declare-fun d!1287901 () Bool)

(assert (= bs!631424 (and d!1287901 start!421644)))

(declare-fun lambda!140498 () Int)

(assert (=> bs!631424 (= lambda!140498 lambda!140479)))

(declare-fun bs!631425 () Bool)

(assert (= bs!631425 (and d!1287901 d!1287883)))

(assert (=> bs!631425 (not (= lambda!140498 lambda!140494))))

(declare-fun lt!1569238 () ListMap!2209)

(declare-fun invariantList!678 (List!49059) Bool)

(assert (=> d!1287901 (invariantList!678 (toList!2966 lt!1569238))))

(declare-fun e!2711284 () ListMap!2209)

(assert (=> d!1287901 (= lt!1569238 e!2711284)))

(declare-fun c!740725 () Bool)

(assert (=> d!1287901 (= c!740725 ((_ is Cons!48936) (toList!2965 lm!1707)))))

(assert (=> d!1287901 (forall!9122 (toList!2965 lm!1707) lambda!140498)))

(assert (=> d!1287901 (= (extractMap!550 (toList!2965 lm!1707)) lt!1569238)))

(declare-fun b!4356757 () Bool)

(assert (=> b!4356757 (= e!2711284 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) (extractMap!550 (t!355980 (toList!2965 lm!1707)))))))

(declare-fun b!4356758 () Bool)

(assert (=> b!4356758 (= e!2711284 (ListMap!2210 Nil!48935))))

(assert (= (and d!1287901 c!740725) b!4356757))

(assert (= (and d!1287901 (not c!740725)) b!4356758))

(declare-fun m!4970829 () Bool)

(assert (=> d!1287901 m!4970829))

(declare-fun m!4970831 () Bool)

(assert (=> d!1287901 m!4970831))

(assert (=> b!4356757 m!4970547))

(assert (=> b!4356757 m!4970547))

(declare-fun m!4970833 () Bool)

(assert (=> b!4356757 m!4970833))

(assert (=> b!4356564 d!1287901))

(declare-fun d!1287903 () Bool)

(declare-fun e!2711291 () Bool)

(assert (=> d!1287903 e!2711291))

(declare-fun res!1790683 () Bool)

(assert (=> d!1287903 (=> res!1790683 e!2711291)))

(declare-fun lt!1569255 () Bool)

(assert (=> d!1287903 (= res!1790683 (not lt!1569255))))

(declare-fun lt!1569253 () Bool)

(assert (=> d!1287903 (= lt!1569255 lt!1569253)))

(declare-fun lt!1569256 () Unit!71637)

(declare-fun e!2711292 () Unit!71637)

(assert (=> d!1287903 (= lt!1569256 e!2711292)))

(declare-fun c!740730 () Bool)

(assert (=> d!1287903 (= c!740730 lt!1569253)))

(declare-fun containsKey!696 (List!49060 (_ BitVec 64)) Bool)

(assert (=> d!1287903 (= lt!1569253 (containsKey!696 (toList!2965 lm!1707) hash!377))))

(assert (=> d!1287903 (= (contains!11143 lm!1707 hash!377) lt!1569255)))

(declare-fun b!4356769 () Bool)

(declare-fun lt!1569254 () Unit!71637)

(assert (=> b!4356769 (= e!2711292 lt!1569254)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!366 (List!49060 (_ BitVec 64)) Unit!71637)

(assert (=> b!4356769 (= lt!1569254 (lemmaContainsKeyImpliesGetValueByKeyDefined!366 (toList!2965 lm!1707) hash!377))))

(declare-fun isDefined!7763 (Option!10468) Bool)

(assert (=> b!4356769 (isDefined!7763 (getValueByKey!454 (toList!2965 lm!1707) hash!377))))

(declare-fun b!4356770 () Bool)

(declare-fun Unit!71668 () Unit!71637)

(assert (=> b!4356770 (= e!2711292 Unit!71668)))

(declare-fun b!4356771 () Bool)

(assert (=> b!4356771 (= e!2711291 (isDefined!7763 (getValueByKey!454 (toList!2965 lm!1707) hash!377)))))

(assert (= (and d!1287903 c!740730) b!4356769))

(assert (= (and d!1287903 (not c!740730)) b!4356770))

(assert (= (and d!1287903 (not res!1790683)) b!4356771))

(declare-fun m!4970835 () Bool)

(assert (=> d!1287903 m!4970835))

(declare-fun m!4970837 () Bool)

(assert (=> b!4356769 m!4970837))

(assert (=> b!4356769 m!4970675))

(assert (=> b!4356769 m!4970675))

(declare-fun m!4970839 () Bool)

(assert (=> b!4356769 m!4970839))

(assert (=> b!4356771 m!4970675))

(assert (=> b!4356771 m!4970675))

(assert (=> b!4356771 m!4970839))

(assert (=> b!4356562 d!1287903))

(declare-fun d!1287905 () Bool)

(declare-fun head!9051 (List!49060) tuple2!48336)

(assert (=> d!1287905 (= (head!9050 lm!1707) (head!9051 (toList!2965 lm!1707)))))

(declare-fun bs!631426 () Bool)

(assert (= bs!631426 d!1287905))

(declare-fun m!4970841 () Bool)

(assert (=> bs!631426 m!4970841))

(assert (=> b!4356563 d!1287905))

(declare-fun d!1287907 () Bool)

(assert (=> d!1287907 true))

(assert (=> d!1287907 true))

(declare-fun lambda!140513 () Int)

(declare-fun forall!9124 (List!49059 Int) Bool)

(assert (=> d!1287907 (= (allKeysSameHash!449 newBucket!200 hash!377 hashF!1247) (forall!9124 newBucket!200 lambda!140513))))

(declare-fun bs!631427 () Bool)

(assert (= bs!631427 d!1287907))

(declare-fun m!4970843 () Bool)

(assert (=> bs!631427 m!4970843))

(assert (=> b!4356561 d!1287907))

(declare-fun d!1287909 () Bool)

(declare-fun res!1790684 () Bool)

(declare-fun e!2711293 () Bool)

(assert (=> d!1287909 (=> res!1790684 e!2711293)))

(assert (=> d!1287909 (= res!1790684 ((_ is Nil!48936) (toList!2965 lm!1707)))))

(assert (=> d!1287909 (= (forall!9122 (toList!2965 lm!1707) lambda!140479) e!2711293)))

(declare-fun b!4356776 () Bool)

(declare-fun e!2711294 () Bool)

(assert (=> b!4356776 (= e!2711293 e!2711294)))

(declare-fun res!1790685 () Bool)

(assert (=> b!4356776 (=> (not res!1790685) (not e!2711294))))

(assert (=> b!4356776 (= res!1790685 (dynLambda!20635 lambda!140479 (h!54487 (toList!2965 lm!1707))))))

(declare-fun b!4356777 () Bool)

(assert (=> b!4356777 (= e!2711294 (forall!9122 (t!355980 (toList!2965 lm!1707)) lambda!140479))))

(assert (= (and d!1287909 (not res!1790684)) b!4356776))

(assert (= (and b!4356776 res!1790685) b!4356777))

(declare-fun b_lambda!131195 () Bool)

(assert (=> (not b_lambda!131195) (not b!4356776)))

(declare-fun m!4970845 () Bool)

(assert (=> b!4356776 m!4970845))

(declare-fun m!4970847 () Bool)

(assert (=> b!4356777 m!4970847))

(assert (=> start!421644 d!1287909))

(declare-fun d!1287911 () Bool)

(assert (=> d!1287911 (= (inv!64481 lm!1707) (isStrictlySorted!104 (toList!2965 lm!1707)))))

(declare-fun bs!631428 () Bool)

(assert (= bs!631428 d!1287911))

(assert (=> bs!631428 m!4970767))

(assert (=> start!421644 d!1287911))

(declare-fun d!1287913 () Bool)

(declare-fun content!7721 (List!49059) (InoxSet tuple2!48334))

(assert (=> d!1287913 (= (eq!261 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) lt!1569106) (+!640 lt!1569100 lt!1569109)) (= (content!7721 (toList!2966 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) lt!1569106))) (content!7721 (toList!2966 (+!640 lt!1569100 lt!1569109)))))))

(declare-fun bs!631429 () Bool)

(assert (= bs!631429 d!1287913))

(declare-fun m!4970849 () Bool)

(assert (=> bs!631429 m!4970849))

(declare-fun m!4970851 () Bool)

(assert (=> bs!631429 m!4970851))

(assert (=> b!4356560 d!1287913))

(declare-fun d!1287915 () Bool)

(assert (=> d!1287915 (= (eq!261 lt!1569114 lt!1569106) (= (content!7721 (toList!2966 lt!1569114)) (content!7721 (toList!2966 lt!1569106))))))

(declare-fun bs!631430 () Bool)

(assert (= bs!631430 d!1287915))

(declare-fun m!4970853 () Bool)

(assert (=> bs!631430 m!4970853))

(declare-fun m!4970855 () Bool)

(assert (=> bs!631430 m!4970855))

(assert (=> b!4356560 d!1287915))

(declare-fun d!1287917 () Bool)

(assert (=> d!1287917 (= (apply!11343 lm!1707 (_1!27462 (h!54487 (toList!2965 lm!1707)))) (get!15896 (getValueByKey!454 (toList!2965 lm!1707) (_1!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun bs!631431 () Bool)

(assert (= bs!631431 d!1287917))

(declare-fun m!4970857 () Bool)

(assert (=> bs!631431 m!4970857))

(assert (=> bs!631431 m!4970857))

(declare-fun m!4970859 () Bool)

(assert (=> bs!631431 m!4970859))

(assert (=> b!4356560 d!1287917))

(declare-fun d!1287919 () Bool)

(declare-fun res!1790688 () Bool)

(declare-fun e!2711297 () Bool)

(assert (=> d!1287919 (=> res!1790688 e!2711297)))

(assert (=> d!1287919 (= res!1790688 (and ((_ is Cons!48935) (apply!11343 lm!1707 (_1!27462 (h!54487 (toList!2965 lm!1707))))) (= (_1!27461 (h!54486 (apply!11343 lm!1707 (_1!27462 (h!54487 (toList!2965 lm!1707)))))) key!3918)))))

(assert (=> d!1287919 (= (containsKey!692 (apply!11343 lm!1707 (_1!27462 (h!54487 (toList!2965 lm!1707)))) key!3918) e!2711297)))

(declare-fun b!4356780 () Bool)

(declare-fun e!2711298 () Bool)

(assert (=> b!4356780 (= e!2711297 e!2711298)))

(declare-fun res!1790689 () Bool)

(assert (=> b!4356780 (=> (not res!1790689) (not e!2711298))))

(assert (=> b!4356780 (= res!1790689 ((_ is Cons!48935) (apply!11343 lm!1707 (_1!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun b!4356781 () Bool)

(assert (=> b!4356781 (= e!2711298 (containsKey!692 (t!355979 (apply!11343 lm!1707 (_1!27462 (h!54487 (toList!2965 lm!1707))))) key!3918))))

(assert (= (and d!1287919 (not res!1790688)) b!4356780))

(assert (= (and b!4356780 res!1790689) b!4356781))

(declare-fun m!4970861 () Bool)

(assert (=> b!4356781 m!4970861))

(assert (=> b!4356560 d!1287919))

(declare-fun d!1287921 () Bool)

(declare-fun e!2711306 () Bool)

(assert (=> d!1287921 e!2711306))

(declare-fun res!1790701 () Bool)

(assert (=> d!1287921 (=> (not res!1790701) (not e!2711306))))

(declare-fun lt!1569324 () ListMap!2209)

(assert (=> d!1287921 (= res!1790701 (contains!11142 lt!1569324 (_1!27461 lt!1569109)))))

(declare-fun lt!1569325 () List!49059)

(assert (=> d!1287921 (= lt!1569324 (ListMap!2210 lt!1569325))))

(declare-fun lt!1569322 () Unit!71637)

(declare-fun lt!1569323 () Unit!71637)

(assert (=> d!1287921 (= lt!1569322 lt!1569323)))

(assert (=> d!1287921 (= (getValueByKey!455 lt!1569325 (_1!27461 lt!1569109)) (Some!10468 (_2!27461 lt!1569109)))))

(declare-fun lemmaContainsTupThenGetReturnValue!227 (List!49059 K!10295 V!10541) Unit!71637)

(assert (=> d!1287921 (= lt!1569323 (lemmaContainsTupThenGetReturnValue!227 lt!1569325 (_1!27461 lt!1569109) (_2!27461 lt!1569109)))))

(declare-fun insertNoDuplicatedKeys!101 (List!49059 K!10295 V!10541) List!49059)

(assert (=> d!1287921 (= lt!1569325 (insertNoDuplicatedKeys!101 (toList!2966 lt!1569103) (_1!27461 lt!1569109) (_2!27461 lt!1569109)))))

(assert (=> d!1287921 (= (+!640 lt!1569103 lt!1569109) lt!1569324)))

(declare-fun b!4356797 () Bool)

(declare-fun res!1790702 () Bool)

(assert (=> b!4356797 (=> (not res!1790702) (not e!2711306))))

(assert (=> b!4356797 (= res!1790702 (= (getValueByKey!455 (toList!2966 lt!1569324) (_1!27461 lt!1569109)) (Some!10468 (_2!27461 lt!1569109))))))

(declare-fun b!4356798 () Bool)

(declare-fun contains!11146 (List!49059 tuple2!48334) Bool)

(assert (=> b!4356798 (= e!2711306 (contains!11146 (toList!2966 lt!1569324) lt!1569109))))

(assert (= (and d!1287921 res!1790701) b!4356797))

(assert (= (and b!4356797 res!1790702) b!4356798))

(declare-fun m!4970865 () Bool)

(assert (=> d!1287921 m!4970865))

(declare-fun m!4970869 () Bool)

(assert (=> d!1287921 m!4970869))

(declare-fun m!4970873 () Bool)

(assert (=> d!1287921 m!4970873))

(declare-fun m!4970877 () Bool)

(assert (=> d!1287921 m!4970877))

(declare-fun m!4970881 () Bool)

(assert (=> b!4356797 m!4970881))

(declare-fun m!4970885 () Bool)

(assert (=> b!4356798 m!4970885))

(assert (=> b!4356560 d!1287921))

(declare-fun d!1287923 () Bool)

(declare-fun e!2711307 () Bool)

(assert (=> d!1287923 e!2711307))

(declare-fun res!1790703 () Bool)

(assert (=> d!1287923 (=> (not res!1790703) (not e!2711307))))

(declare-fun lt!1569328 () ListMap!2209)

(assert (=> d!1287923 (= res!1790703 (contains!11142 lt!1569328 (_1!27461 lt!1569109)))))

(declare-fun lt!1569329 () List!49059)

(assert (=> d!1287923 (= lt!1569328 (ListMap!2210 lt!1569329))))

(declare-fun lt!1569326 () Unit!71637)

(declare-fun lt!1569327 () Unit!71637)

(assert (=> d!1287923 (= lt!1569326 lt!1569327)))

(assert (=> d!1287923 (= (getValueByKey!455 lt!1569329 (_1!27461 lt!1569109)) (Some!10468 (_2!27461 lt!1569109)))))

(assert (=> d!1287923 (= lt!1569327 (lemmaContainsTupThenGetReturnValue!227 lt!1569329 (_1!27461 lt!1569109) (_2!27461 lt!1569109)))))

(assert (=> d!1287923 (= lt!1569329 (insertNoDuplicatedKeys!101 (toList!2966 lt!1569100) (_1!27461 lt!1569109) (_2!27461 lt!1569109)))))

(assert (=> d!1287923 (= (+!640 lt!1569100 lt!1569109) lt!1569328)))

(declare-fun b!4356799 () Bool)

(declare-fun res!1790704 () Bool)

(assert (=> b!4356799 (=> (not res!1790704) (not e!2711307))))

(assert (=> b!4356799 (= res!1790704 (= (getValueByKey!455 (toList!2966 lt!1569328) (_1!27461 lt!1569109)) (Some!10468 (_2!27461 lt!1569109))))))

(declare-fun b!4356800 () Bool)

(assert (=> b!4356800 (= e!2711307 (contains!11146 (toList!2966 lt!1569328) lt!1569109))))

(assert (= (and d!1287923 res!1790703) b!4356799))

(assert (= (and b!4356799 res!1790704) b!4356800))

(declare-fun m!4970907 () Bool)

(assert (=> d!1287923 m!4970907))

(declare-fun m!4970913 () Bool)

(assert (=> d!1287923 m!4970913))

(declare-fun m!4970915 () Bool)

(assert (=> d!1287923 m!4970915))

(declare-fun m!4970917 () Bool)

(assert (=> d!1287923 m!4970917))

(declare-fun m!4970919 () Bool)

(assert (=> b!4356799 m!4970919))

(declare-fun m!4970921 () Bool)

(assert (=> b!4356800 m!4970921))

(assert (=> b!4356560 d!1287923))

(declare-fun d!1287927 () Bool)

(assert (=> d!1287927 (contains!11142 lt!1569104 key!3918)))

(declare-fun lt!1569334 () Unit!71637)

(declare-fun choose!26913 (List!49059 K!10295 V!10541 ListMap!2209) Unit!71637)

(assert (=> d!1287927 (= lt!1569334 (choose!26913 (_2!27462 (h!54487 (toList!2965 lm!1707))) key!3918 newValue!99 lt!1569104))))

(assert (=> d!1287927 (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 lm!1707))))))

(assert (=> d!1287927 (= (lemmaAddToMapContainsAndNotInListThenInAcc!34 (_2!27462 (h!54487 (toList!2965 lm!1707))) key!3918 newValue!99 lt!1569104) lt!1569334)))

(declare-fun bs!631439 () Bool)

(assert (= bs!631439 d!1287927))

(assert (=> bs!631439 m!4970571))

(declare-fun m!4970927 () Bool)

(assert (=> bs!631439 m!4970927))

(declare-fun m!4970929 () Bool)

(assert (=> bs!631439 m!4970929))

(assert (=> b!4356560 d!1287927))

(declare-fun b!4356801 () Bool)

(declare-fun e!2711311 () Bool)

(assert (=> b!4356801 (= e!2711311 (not (contains!11145 (keys!16530 lt!1569103) key!3918)))))

(declare-fun b!4356802 () Bool)

(declare-fun e!2711313 () Bool)

(assert (=> b!4356802 (= e!2711313 (contains!11145 (keys!16530 lt!1569103) key!3918))))

(declare-fun b!4356803 () Bool)

(declare-fun e!2711312 () Unit!71637)

(declare-fun Unit!71671 () Unit!71637)

(assert (=> b!4356803 (= e!2711312 Unit!71671)))

(declare-fun b!4356804 () Bool)

(declare-fun e!2711310 () Unit!71637)

(declare-fun lt!1569336 () Unit!71637)

(assert (=> b!4356804 (= e!2711310 lt!1569336)))

(declare-fun lt!1569342 () Unit!71637)

(assert (=> b!4356804 (= lt!1569342 (lemmaContainsKeyImpliesGetValueByKeyDefined!365 (toList!2966 lt!1569103) key!3918))))

(assert (=> b!4356804 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569103) key!3918))))

(declare-fun lt!1569335 () Unit!71637)

(assert (=> b!4356804 (= lt!1569335 lt!1569342)))

(assert (=> b!4356804 (= lt!1569336 (lemmaInListThenGetKeysListContains!123 (toList!2966 lt!1569103) key!3918))))

(declare-fun call!302768 () Bool)

(assert (=> b!4356804 call!302768))

(declare-fun bm!302763 () Bool)

(declare-fun e!2711308 () List!49062)

(assert (=> bm!302763 (= call!302768 (contains!11145 e!2711308 key!3918))))

(declare-fun c!740733 () Bool)

(declare-fun c!740732 () Bool)

(assert (=> bm!302763 (= c!740733 c!740732)))

(declare-fun b!4356805 () Bool)

(assert (=> b!4356805 (= e!2711308 (keys!16530 lt!1569103))))

(declare-fun b!4356806 () Bool)

(assert (=> b!4356806 (= e!2711310 e!2711312)))

(declare-fun c!740734 () Bool)

(assert (=> b!4356806 (= c!740734 call!302768)))

(declare-fun d!1287931 () Bool)

(declare-fun e!2711309 () Bool)

(assert (=> d!1287931 e!2711309))

(declare-fun res!1790706 () Bool)

(assert (=> d!1287931 (=> res!1790706 e!2711309)))

(assert (=> d!1287931 (= res!1790706 e!2711311)))

(declare-fun res!1790707 () Bool)

(assert (=> d!1287931 (=> (not res!1790707) (not e!2711311))))

(declare-fun lt!1569340 () Bool)

(assert (=> d!1287931 (= res!1790707 (not lt!1569340))))

(declare-fun lt!1569337 () Bool)

(assert (=> d!1287931 (= lt!1569340 lt!1569337)))

(declare-fun lt!1569341 () Unit!71637)

(assert (=> d!1287931 (= lt!1569341 e!2711310)))

(assert (=> d!1287931 (= c!740732 lt!1569337)))

(assert (=> d!1287931 (= lt!1569337 (containsKey!695 (toList!2966 lt!1569103) key!3918))))

(assert (=> d!1287931 (= (contains!11142 lt!1569103 key!3918) lt!1569340)))

(declare-fun b!4356807 () Bool)

(assert (=> b!4356807 false))

(declare-fun lt!1569338 () Unit!71637)

(declare-fun lt!1569339 () Unit!71637)

(assert (=> b!4356807 (= lt!1569338 lt!1569339)))

(assert (=> b!4356807 (containsKey!695 (toList!2966 lt!1569103) key!3918)))

(assert (=> b!4356807 (= lt!1569339 (lemmaInGetKeysListThenContainsKey!124 (toList!2966 lt!1569103) key!3918))))

(declare-fun Unit!71672 () Unit!71637)

(assert (=> b!4356807 (= e!2711312 Unit!71672)))

(declare-fun b!4356808 () Bool)

(assert (=> b!4356808 (= e!2711308 (getKeysList!126 (toList!2966 lt!1569103)))))

(declare-fun b!4356809 () Bool)

(assert (=> b!4356809 (= e!2711309 e!2711313)))

(declare-fun res!1790705 () Bool)

(assert (=> b!4356809 (=> (not res!1790705) (not e!2711313))))

(assert (=> b!4356809 (= res!1790705 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569103) key!3918)))))

(assert (= (and d!1287931 c!740732) b!4356804))

(assert (= (and d!1287931 (not c!740732)) b!4356806))

(assert (= (and b!4356806 c!740734) b!4356807))

(assert (= (and b!4356806 (not c!740734)) b!4356803))

(assert (= (or b!4356804 b!4356806) bm!302763))

(assert (= (and bm!302763 c!740733) b!4356808))

(assert (= (and bm!302763 (not c!740733)) b!4356805))

(assert (= (and d!1287931 res!1790707) b!4356801))

(assert (= (and d!1287931 (not res!1790706)) b!4356809))

(assert (= (and b!4356809 res!1790705) b!4356802))

(declare-fun m!4970933 () Bool)

(assert (=> bm!302763 m!4970933))

(declare-fun m!4970935 () Bool)

(assert (=> d!1287931 m!4970935))

(declare-fun m!4970937 () Bool)

(assert (=> b!4356802 m!4970937))

(assert (=> b!4356802 m!4970937))

(declare-fun m!4970939 () Bool)

(assert (=> b!4356802 m!4970939))

(declare-fun m!4970941 () Bool)

(assert (=> b!4356804 m!4970941))

(declare-fun m!4970943 () Bool)

(assert (=> b!4356804 m!4970943))

(assert (=> b!4356804 m!4970943))

(declare-fun m!4970945 () Bool)

(assert (=> b!4356804 m!4970945))

(declare-fun m!4970947 () Bool)

(assert (=> b!4356804 m!4970947))

(declare-fun m!4970949 () Bool)

(assert (=> b!4356808 m!4970949))

(assert (=> b!4356801 m!4970937))

(assert (=> b!4356801 m!4970937))

(assert (=> b!4356801 m!4970939))

(assert (=> b!4356809 m!4970943))

(assert (=> b!4356809 m!4970943))

(assert (=> b!4356809 m!4970945))

(assert (=> b!4356805 m!4970937))

(assert (=> b!4356807 m!4970935))

(declare-fun m!4970951 () Bool)

(assert (=> b!4356807 m!4970951))

(assert (=> b!4356560 d!1287931))

(declare-fun d!1287935 () Bool)

(declare-fun tail!7000 (List!49060) List!49060)

(assert (=> d!1287935 (= (tail!6998 lm!1707) (ListLongMap!1616 (tail!7000 (toList!2965 lm!1707))))))

(declare-fun bs!631450 () Bool)

(assert (= bs!631450 d!1287935))

(declare-fun m!4970953 () Bool)

(assert (=> bs!631450 m!4970953))

(assert (=> b!4356560 d!1287935))

(declare-fun bs!631451 () Bool)

(declare-fun d!1287937 () Bool)

(assert (= bs!631451 (and d!1287937 start!421644)))

(declare-fun lambda!140537 () Int)

(assert (=> bs!631451 (= lambda!140537 lambda!140479)))

(declare-fun bs!631452 () Bool)

(assert (= bs!631452 (and d!1287937 d!1287883)))

(assert (=> bs!631452 (not (= lambda!140537 lambda!140494))))

(declare-fun bs!631453 () Bool)

(assert (= bs!631453 (and d!1287937 d!1287901)))

(assert (=> bs!631453 (= lambda!140537 lambda!140498)))

(declare-fun lt!1569365 () ListMap!2209)

(assert (=> d!1287937 (invariantList!678 (toList!2966 lt!1569365))))

(declare-fun e!2711317 () ListMap!2209)

(assert (=> d!1287937 (= lt!1569365 e!2711317)))

(declare-fun c!740736 () Bool)

(assert (=> d!1287937 (= c!740736 ((_ is Cons!48936) (toList!2965 (+!639 lt!1569099 lt!1569101))))))

(assert (=> d!1287937 (forall!9122 (toList!2965 (+!639 lt!1569099 lt!1569101)) lambda!140537)))

(assert (=> d!1287937 (= (extractMap!550 (toList!2965 (+!639 lt!1569099 lt!1569101))) lt!1569365)))

(declare-fun b!4356815 () Bool)

(assert (=> b!4356815 (= e!2711317 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101)))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))))))

(declare-fun b!4356816 () Bool)

(assert (=> b!4356816 (= e!2711317 (ListMap!2210 Nil!48935))))

(assert (= (and d!1287937 c!740736) b!4356815))

(assert (= (and d!1287937 (not c!740736)) b!4356816))

(declare-fun m!4970955 () Bool)

(assert (=> d!1287937 m!4970955))

(declare-fun m!4970957 () Bool)

(assert (=> d!1287937 m!4970957))

(declare-fun m!4970959 () Bool)

(assert (=> b!4356815 m!4970959))

(assert (=> b!4356815 m!4970959))

(declare-fun m!4970961 () Bool)

(assert (=> b!4356815 m!4970961))

(assert (=> b!4356560 d!1287937))

(declare-fun d!1287939 () Bool)

(assert (=> d!1287939 (eq!261 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (+!640 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) lt!1569103) (tuple2!48335 key!3918 newValue!99)))))

(declare-fun lt!1569376 () Unit!71637)

(declare-fun choose!26914 (ListMap!2209 K!10295 V!10541 List!49059) Unit!71637)

(assert (=> d!1287939 (= lt!1569376 (choose!26914 lt!1569103 key!3918 newValue!99 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(assert (=> d!1287939 (not (containsKey!692 (_2!27462 (h!54487 (toList!2965 lm!1707))) key!3918))))

(assert (=> d!1287939 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!70 lt!1569103 key!3918 newValue!99 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lt!1569376)))

(declare-fun bs!631460 () Bool)

(assert (= bs!631460 d!1287939))

(assert (=> bs!631460 m!4970543))

(declare-fun m!4971017 () Bool)

(assert (=> bs!631460 m!4971017))

(declare-fun m!4971019 () Bool)

(assert (=> bs!631460 m!4971019))

(declare-fun m!4971021 () Bool)

(assert (=> bs!631460 m!4971021))

(assert (=> bs!631460 m!4971017))

(assert (=> bs!631460 m!4971019))

(declare-fun m!4971023 () Bool)

(assert (=> bs!631460 m!4971023))

(declare-fun m!4971025 () Bool)

(assert (=> bs!631460 m!4971025))

(assert (=> bs!631460 m!4970575))

(assert (=> bs!631460 m!4970575))

(assert (=> bs!631460 m!4971023))

(assert (=> b!4356560 d!1287939))

(declare-fun bs!631461 () Bool)

(declare-fun d!1287945 () Bool)

(assert (= bs!631461 (and d!1287945 start!421644)))

(declare-fun lambda!140541 () Int)

(assert (=> bs!631461 (= lambda!140541 lambda!140479)))

(declare-fun bs!631462 () Bool)

(assert (= bs!631462 (and d!1287945 d!1287883)))

(assert (=> bs!631462 (not (= lambda!140541 lambda!140494))))

(declare-fun bs!631463 () Bool)

(assert (= bs!631463 (and d!1287945 d!1287901)))

(assert (=> bs!631463 (= lambda!140541 lambda!140498)))

(declare-fun bs!631464 () Bool)

(assert (= bs!631464 (and d!1287945 d!1287937)))

(assert (=> bs!631464 (= lambda!140541 lambda!140537)))

(assert (=> d!1287945 (not (containsKey!692 (apply!11343 lm!1707 (_1!27462 (h!54487 (toList!2965 lm!1707)))) key!3918))))

(declare-fun lt!1569379 () Unit!71637)

(declare-fun choose!26915 (ListLongMap!1615 K!10295 (_ BitVec 64) Hashable!4883) Unit!71637)

(assert (=> d!1287945 (= lt!1569379 (choose!26915 lm!1707 key!3918 (_1!27462 (h!54487 (toList!2965 lm!1707))) hashF!1247))))

(assert (=> d!1287945 (forall!9122 (toList!2965 lm!1707) lambda!140541)))

(assert (=> d!1287945 (= (lemmaNotSameHashThenCannotContainKey!38 lm!1707 key!3918 (_1!27462 (h!54487 (toList!2965 lm!1707))) hashF!1247) lt!1569379)))

(declare-fun bs!631465 () Bool)

(assert (= bs!631465 d!1287945))

(assert (=> bs!631465 m!4970583))

(assert (=> bs!631465 m!4970583))

(assert (=> bs!631465 m!4970585))

(declare-fun m!4971027 () Bool)

(assert (=> bs!631465 m!4971027))

(declare-fun m!4971029 () Bool)

(assert (=> bs!631465 m!4971029))

(assert (=> b!4356560 d!1287945))

(declare-fun bs!631466 () Bool)

(declare-fun d!1287947 () Bool)

(assert (= bs!631466 (and d!1287947 d!1287937)))

(declare-fun lambda!140542 () Int)

(assert (=> bs!631466 (= lambda!140542 lambda!140537)))

(declare-fun bs!631467 () Bool)

(assert (= bs!631467 (and d!1287947 start!421644)))

(assert (=> bs!631467 (= lambda!140542 lambda!140479)))

(declare-fun bs!631468 () Bool)

(assert (= bs!631468 (and d!1287947 d!1287901)))

(assert (=> bs!631468 (= lambda!140542 lambda!140498)))

(declare-fun bs!631469 () Bool)

(assert (= bs!631469 (and d!1287947 d!1287883)))

(assert (=> bs!631469 (not (= lambda!140542 lambda!140494))))

(declare-fun bs!631470 () Bool)

(assert (= bs!631470 (and d!1287947 d!1287945)))

(assert (=> bs!631470 (= lambda!140542 lambda!140541)))

(declare-fun lt!1569380 () ListMap!2209)

(assert (=> d!1287947 (invariantList!678 (toList!2966 lt!1569380))))

(declare-fun e!2711324 () ListMap!2209)

(assert (=> d!1287947 (= lt!1569380 e!2711324)))

(declare-fun c!740740 () Bool)

(assert (=> d!1287947 (= c!740740 ((_ is Cons!48936) (toList!2965 lt!1569099)))))

(assert (=> d!1287947 (forall!9122 (toList!2965 lt!1569099) lambda!140542)))

(assert (=> d!1287947 (= (extractMap!550 (toList!2965 lt!1569099)) lt!1569380)))

(declare-fun b!4356826 () Bool)

(assert (=> b!4356826 (= e!2711324 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lt!1569099))) (extractMap!550 (t!355980 (toList!2965 lt!1569099)))))))

(declare-fun b!4356827 () Bool)

(assert (=> b!4356827 (= e!2711324 (ListMap!2210 Nil!48935))))

(assert (= (and d!1287947 c!740740) b!4356826))

(assert (= (and d!1287947 (not c!740740)) b!4356827))

(declare-fun m!4971031 () Bool)

(assert (=> d!1287947 m!4971031))

(declare-fun m!4971033 () Bool)

(assert (=> d!1287947 m!4971033))

(declare-fun m!4971035 () Bool)

(assert (=> b!4356826 m!4971035))

(assert (=> b!4356826 m!4971035))

(declare-fun m!4971037 () Bool)

(assert (=> b!4356826 m!4971037))

(assert (=> b!4356560 d!1287947))

(declare-fun bs!631497 () Bool)

(declare-fun b!4356862 () Bool)

(assert (= bs!631497 (and b!4356862 d!1287907)))

(declare-fun lambda!140576 () Int)

(assert (=> bs!631497 (not (= lambda!140576 lambda!140513))))

(assert (=> b!4356862 true))

(declare-fun bs!631498 () Bool)

(declare-fun b!4356864 () Bool)

(assert (= bs!631498 (and b!4356864 d!1287907)))

(declare-fun lambda!140577 () Int)

(assert (=> bs!631498 (not (= lambda!140577 lambda!140513))))

(declare-fun bs!631499 () Bool)

(assert (= bs!631499 (and b!4356864 b!4356862)))

(assert (=> bs!631499 (= lambda!140577 lambda!140576)))

(assert (=> b!4356864 true))

(declare-fun lambda!140578 () Int)

(assert (=> bs!631498 (not (= lambda!140578 lambda!140513))))

(declare-fun lt!1569449 () ListMap!2209)

(assert (=> bs!631499 (= (= lt!1569449 lt!1569106) (= lambda!140578 lambda!140576))))

(assert (=> b!4356864 (= (= lt!1569449 lt!1569106) (= lambda!140578 lambda!140577))))

(assert (=> b!4356864 true))

(declare-fun bs!631500 () Bool)

(declare-fun d!1287949 () Bool)

(assert (= bs!631500 (and d!1287949 d!1287907)))

(declare-fun lambda!140579 () Int)

(assert (=> bs!631500 (not (= lambda!140579 lambda!140513))))

(declare-fun bs!631501 () Bool)

(assert (= bs!631501 (and d!1287949 b!4356862)))

(declare-fun lt!1569453 () ListMap!2209)

(assert (=> bs!631501 (= (= lt!1569453 lt!1569106) (= lambda!140579 lambda!140576))))

(declare-fun bs!631502 () Bool)

(assert (= bs!631502 (and d!1287949 b!4356864)))

(assert (=> bs!631502 (= (= lt!1569453 lt!1569106) (= lambda!140579 lambda!140577))))

(assert (=> bs!631502 (= (= lt!1569453 lt!1569449) (= lambda!140579 lambda!140578))))

(assert (=> d!1287949 true))

(declare-fun e!2711345 () ListMap!2209)

(assert (=> b!4356862 (= e!2711345 lt!1569106)))

(declare-fun lt!1569462 () Unit!71637)

(declare-fun call!302780 () Unit!71637)

(assert (=> b!4356862 (= lt!1569462 call!302780)))

(declare-fun call!302781 () Bool)

(assert (=> b!4356862 call!302781))

(declare-fun lt!1569457 () Unit!71637)

(assert (=> b!4356862 (= lt!1569457 lt!1569462)))

(declare-fun call!302779 () Bool)

(assert (=> b!4356862 call!302779))

(declare-fun lt!1569451 () Unit!71637)

(declare-fun Unit!71673 () Unit!71637)

(assert (=> b!4356862 (= lt!1569451 Unit!71673)))

(declare-fun e!2711347 () Bool)

(assert (=> d!1287949 e!2711347))

(declare-fun res!1790730 () Bool)

(assert (=> d!1287949 (=> (not res!1790730) (not e!2711347))))

(assert (=> d!1287949 (= res!1790730 (forall!9124 (_2!27462 (h!54487 (toList!2965 lm!1707))) lambda!140579))))

(assert (=> d!1287949 (= lt!1569453 e!2711345)))

(declare-fun c!740745 () Bool)

(assert (=> d!1287949 (= c!740745 ((_ is Nil!48935) (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(assert (=> d!1287949 (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 lm!1707))))))

(assert (=> d!1287949 (= (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) lt!1569106) lt!1569453)))

(declare-fun b!4356863 () Bool)

(declare-fun e!2711346 () Bool)

(assert (=> b!4356863 (= e!2711346 call!302781)))

(declare-fun bm!302774 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!61 (ListMap!2209) Unit!71637)

(assert (=> bm!302774 (= call!302780 (lemmaContainsAllItsOwnKeys!61 lt!1569106))))

(assert (=> b!4356864 (= e!2711345 lt!1569449)))

(declare-fun lt!1569448 () ListMap!2209)

(assert (=> b!4356864 (= lt!1569448 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> b!4356864 (= lt!1569449 (addToMapMapFromBucket!187 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun lt!1569463 () Unit!71637)

(assert (=> b!4356864 (= lt!1569463 call!302780)))

(assert (=> b!4356864 (forall!9124 (toList!2966 lt!1569106) lambda!140577)))

(declare-fun lt!1569454 () Unit!71637)

(assert (=> b!4356864 (= lt!1569454 lt!1569463)))

(assert (=> b!4356864 (forall!9124 (toList!2966 lt!1569448) lambda!140578)))

(declare-fun lt!1569456 () Unit!71637)

(declare-fun Unit!71674 () Unit!71637)

(assert (=> b!4356864 (= lt!1569456 Unit!71674)))

(assert (=> b!4356864 (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lambda!140578)))

(declare-fun lt!1569447 () Unit!71637)

(declare-fun Unit!71675 () Unit!71637)

(assert (=> b!4356864 (= lt!1569447 Unit!71675)))

(declare-fun lt!1569464 () Unit!71637)

(declare-fun Unit!71676 () Unit!71637)

(assert (=> b!4356864 (= lt!1569464 Unit!71676)))

(declare-fun lt!1569444 () Unit!71637)

(declare-fun forallContained!1765 (List!49059 Int tuple2!48334) Unit!71637)

(assert (=> b!4356864 (= lt!1569444 (forallContained!1765 (toList!2966 lt!1569448) lambda!140578 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> b!4356864 (contains!11142 lt!1569448 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun lt!1569452 () Unit!71637)

(declare-fun Unit!71677 () Unit!71637)

(assert (=> b!4356864 (= lt!1569452 Unit!71677)))

(assert (=> b!4356864 (contains!11142 lt!1569449 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun lt!1569460 () Unit!71637)

(declare-fun Unit!71678 () Unit!71637)

(assert (=> b!4356864 (= lt!1569460 Unit!71678)))

(assert (=> b!4356864 (forall!9124 (_2!27462 (h!54487 (toList!2965 lm!1707))) lambda!140578)))

(declare-fun lt!1569445 () Unit!71637)

(declare-fun Unit!71679 () Unit!71637)

(assert (=> b!4356864 (= lt!1569445 Unit!71679)))

(assert (=> b!4356864 (forall!9124 (toList!2966 lt!1569448) lambda!140578)))

(declare-fun lt!1569446 () Unit!71637)

(declare-fun Unit!71680 () Unit!71637)

(assert (=> b!4356864 (= lt!1569446 Unit!71680)))

(declare-fun lt!1569450 () Unit!71637)

(declare-fun Unit!71681 () Unit!71637)

(assert (=> b!4356864 (= lt!1569450 Unit!71681)))

(declare-fun lt!1569461 () Unit!71637)

(declare-fun addForallContainsKeyThenBeforeAdding!61 (ListMap!2209 ListMap!2209 K!10295 V!10541) Unit!71637)

(assert (=> b!4356864 (= lt!1569461 (addForallContainsKeyThenBeforeAdding!61 lt!1569106 lt!1569449 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> b!4356864 call!302779))

(declare-fun lt!1569459 () Unit!71637)

(assert (=> b!4356864 (= lt!1569459 lt!1569461)))

(assert (=> b!4356864 (forall!9124 (toList!2966 lt!1569106) lambda!140578)))

(declare-fun lt!1569458 () Unit!71637)

(declare-fun Unit!71682 () Unit!71637)

(assert (=> b!4356864 (= lt!1569458 Unit!71682)))

(declare-fun res!1790731 () Bool)

(assert (=> b!4356864 (= res!1790731 (forall!9124 (_2!27462 (h!54487 (toList!2965 lm!1707))) lambda!140578))))

(assert (=> b!4356864 (=> (not res!1790731) (not e!2711346))))

(assert (=> b!4356864 e!2711346))

(declare-fun lt!1569455 () Unit!71637)

(declare-fun Unit!71683 () Unit!71637)

(assert (=> b!4356864 (= lt!1569455 Unit!71683)))

(declare-fun bm!302775 () Bool)

(assert (=> bm!302775 (= call!302781 (forall!9124 (toList!2966 lt!1569106) (ite c!740745 lambda!140576 lambda!140578)))))

(declare-fun b!4356865 () Bool)

(assert (=> b!4356865 (= e!2711347 (invariantList!678 (toList!2966 lt!1569453)))))

(declare-fun bm!302776 () Bool)

(assert (=> bm!302776 (= call!302779 (forall!9124 (toList!2966 lt!1569106) (ite c!740745 lambda!140576 lambda!140578)))))

(declare-fun b!4356866 () Bool)

(declare-fun res!1790732 () Bool)

(assert (=> b!4356866 (=> (not res!1790732) (not e!2711347))))

(assert (=> b!4356866 (= res!1790732 (forall!9124 (toList!2966 lt!1569106) lambda!140579))))

(assert (= (and d!1287949 c!740745) b!4356862))

(assert (= (and d!1287949 (not c!740745)) b!4356864))

(assert (= (and b!4356864 res!1790731) b!4356863))

(assert (= (or b!4356862 b!4356864) bm!302774))

(assert (= (or b!4356862 b!4356864) bm!302776))

(assert (= (or b!4356862 b!4356863) bm!302775))

(assert (= (and d!1287949 res!1790730) b!4356866))

(assert (= (and b!4356866 res!1790732) b!4356865))

(declare-fun m!4971105 () Bool)

(assert (=> b!4356864 m!4971105))

(declare-fun m!4971107 () Bool)

(assert (=> b!4356864 m!4971107))

(declare-fun m!4971109 () Bool)

(assert (=> b!4356864 m!4971109))

(declare-fun m!4971111 () Bool)

(assert (=> b!4356864 m!4971111))

(assert (=> b!4356864 m!4971105))

(declare-fun m!4971113 () Bool)

(assert (=> b!4356864 m!4971113))

(declare-fun m!4971115 () Bool)

(assert (=> b!4356864 m!4971115))

(declare-fun m!4971117 () Bool)

(assert (=> b!4356864 m!4971117))

(declare-fun m!4971119 () Bool)

(assert (=> b!4356864 m!4971119))

(declare-fun m!4971121 () Bool)

(assert (=> b!4356864 m!4971121))

(declare-fun m!4971123 () Bool)

(assert (=> b!4356864 m!4971123))

(assert (=> b!4356864 m!4971123))

(assert (=> b!4356864 m!4971115))

(declare-fun m!4971125 () Bool)

(assert (=> b!4356864 m!4971125))

(declare-fun m!4971127 () Bool)

(assert (=> b!4356866 m!4971127))

(declare-fun m!4971129 () Bool)

(assert (=> bm!302775 m!4971129))

(assert (=> bm!302776 m!4971129))

(declare-fun m!4971131 () Bool)

(assert (=> d!1287949 m!4971131))

(assert (=> d!1287949 m!4970929))

(declare-fun m!4971133 () Bool)

(assert (=> b!4356865 m!4971133))

(declare-fun m!4971135 () Bool)

(assert (=> bm!302774 m!4971135))

(assert (=> b!4356560 d!1287949))

(declare-fun bs!631503 () Bool)

(declare-fun b!4356869 () Bool)

(assert (= bs!631503 (and b!4356869 d!1287949)))

(declare-fun lambda!140580 () Int)

(assert (=> bs!631503 (= (= lt!1569103 lt!1569453) (= lambda!140580 lambda!140579))))

(declare-fun bs!631504 () Bool)

(assert (= bs!631504 (and b!4356869 b!4356862)))

(assert (=> bs!631504 (= (= lt!1569103 lt!1569106) (= lambda!140580 lambda!140576))))

(declare-fun bs!631505 () Bool)

(assert (= bs!631505 (and b!4356869 b!4356864)))

(assert (=> bs!631505 (= (= lt!1569103 lt!1569106) (= lambda!140580 lambda!140577))))

(assert (=> bs!631505 (= (= lt!1569103 lt!1569449) (= lambda!140580 lambda!140578))))

(declare-fun bs!631506 () Bool)

(assert (= bs!631506 (and b!4356869 d!1287907)))

(assert (=> bs!631506 (not (= lambda!140580 lambda!140513))))

(assert (=> b!4356869 true))

(declare-fun bs!631507 () Bool)

(declare-fun b!4356871 () Bool)

(assert (= bs!631507 (and b!4356871 d!1287949)))

(declare-fun lambda!140581 () Int)

(assert (=> bs!631507 (= (= lt!1569103 lt!1569453) (= lambda!140581 lambda!140579))))

(declare-fun bs!631508 () Bool)

(assert (= bs!631508 (and b!4356871 b!4356862)))

(assert (=> bs!631508 (= (= lt!1569103 lt!1569106) (= lambda!140581 lambda!140576))))

(declare-fun bs!631509 () Bool)

(assert (= bs!631509 (and b!4356871 b!4356864)))

(assert (=> bs!631509 (= (= lt!1569103 lt!1569106) (= lambda!140581 lambda!140577))))

(assert (=> bs!631509 (= (= lt!1569103 lt!1569449) (= lambda!140581 lambda!140578))))

(declare-fun bs!631510 () Bool)

(assert (= bs!631510 (and b!4356871 d!1287907)))

(assert (=> bs!631510 (not (= lambda!140581 lambda!140513))))

(declare-fun bs!631511 () Bool)

(assert (= bs!631511 (and b!4356871 b!4356869)))

(assert (=> bs!631511 (= lambda!140581 lambda!140580)))

(assert (=> b!4356871 true))

(declare-fun lambda!140582 () Int)

(declare-fun lt!1569470 () ListMap!2209)

(assert (=> bs!631507 (= (= lt!1569470 lt!1569453) (= lambda!140582 lambda!140579))))

(assert (=> bs!631508 (= (= lt!1569470 lt!1569106) (= lambda!140582 lambda!140576))))

(assert (=> bs!631509 (= (= lt!1569470 lt!1569106) (= lambda!140582 lambda!140577))))

(assert (=> bs!631509 (= (= lt!1569470 lt!1569449) (= lambda!140582 lambda!140578))))

(assert (=> b!4356871 (= (= lt!1569470 lt!1569103) (= lambda!140582 lambda!140581))))

(assert (=> bs!631510 (not (= lambda!140582 lambda!140513))))

(assert (=> bs!631511 (= (= lt!1569470 lt!1569103) (= lambda!140582 lambda!140580))))

(assert (=> b!4356871 true))

(declare-fun bs!631512 () Bool)

(declare-fun d!1287975 () Bool)

(assert (= bs!631512 (and d!1287975 b!4356871)))

(declare-fun lt!1569474 () ListMap!2209)

(declare-fun lambda!140583 () Int)

(assert (=> bs!631512 (= (= lt!1569474 lt!1569470) (= lambda!140583 lambda!140582))))

(declare-fun bs!631513 () Bool)

(assert (= bs!631513 (and d!1287975 d!1287949)))

(assert (=> bs!631513 (= (= lt!1569474 lt!1569453) (= lambda!140583 lambda!140579))))

(declare-fun bs!631514 () Bool)

(assert (= bs!631514 (and d!1287975 b!4356862)))

(assert (=> bs!631514 (= (= lt!1569474 lt!1569106) (= lambda!140583 lambda!140576))))

(declare-fun bs!631515 () Bool)

(assert (= bs!631515 (and d!1287975 b!4356864)))

(assert (=> bs!631515 (= (= lt!1569474 lt!1569106) (= lambda!140583 lambda!140577))))

(assert (=> bs!631515 (= (= lt!1569474 lt!1569449) (= lambda!140583 lambda!140578))))

(assert (=> bs!631512 (= (= lt!1569474 lt!1569103) (= lambda!140583 lambda!140581))))

(declare-fun bs!631516 () Bool)

(assert (= bs!631516 (and d!1287975 d!1287907)))

(assert (=> bs!631516 (not (= lambda!140583 lambda!140513))))

(declare-fun bs!631517 () Bool)

(assert (= bs!631517 (and d!1287975 b!4356869)))

(assert (=> bs!631517 (= (= lt!1569474 lt!1569103) (= lambda!140583 lambda!140580))))

(assert (=> d!1287975 true))

(declare-fun e!2711348 () ListMap!2209)

(assert (=> b!4356869 (= e!2711348 lt!1569103)))

(declare-fun lt!1569483 () Unit!71637)

(declare-fun call!302783 () Unit!71637)

(assert (=> b!4356869 (= lt!1569483 call!302783)))

(declare-fun call!302784 () Bool)

(assert (=> b!4356869 call!302784))

(declare-fun lt!1569478 () Unit!71637)

(assert (=> b!4356869 (= lt!1569478 lt!1569483)))

(declare-fun call!302782 () Bool)

(assert (=> b!4356869 call!302782))

(declare-fun lt!1569472 () Unit!71637)

(declare-fun Unit!71684 () Unit!71637)

(assert (=> b!4356869 (= lt!1569472 Unit!71684)))

(declare-fun e!2711350 () Bool)

(assert (=> d!1287975 e!2711350))

(declare-fun res!1790733 () Bool)

(assert (=> d!1287975 (=> (not res!1790733) (not e!2711350))))

(assert (=> d!1287975 (= res!1790733 (forall!9124 (_2!27462 (h!54487 (toList!2965 lm!1707))) lambda!140583))))

(assert (=> d!1287975 (= lt!1569474 e!2711348)))

(declare-fun c!740746 () Bool)

(assert (=> d!1287975 (= c!740746 ((_ is Nil!48935) (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(assert (=> d!1287975 (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 lm!1707))))))

(assert (=> d!1287975 (= (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) lt!1569103) lt!1569474)))

(declare-fun b!4356870 () Bool)

(declare-fun e!2711349 () Bool)

(assert (=> b!4356870 (= e!2711349 call!302784)))

(declare-fun bm!302777 () Bool)

(assert (=> bm!302777 (= call!302783 (lemmaContainsAllItsOwnKeys!61 lt!1569103))))

(assert (=> b!4356871 (= e!2711348 lt!1569470)))

(declare-fun lt!1569469 () ListMap!2209)

(assert (=> b!4356871 (= lt!1569469 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> b!4356871 (= lt!1569470 (addToMapMapFromBucket!187 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun lt!1569484 () Unit!71637)

(assert (=> b!4356871 (= lt!1569484 call!302783)))

(assert (=> b!4356871 (forall!9124 (toList!2966 lt!1569103) lambda!140581)))

(declare-fun lt!1569475 () Unit!71637)

(assert (=> b!4356871 (= lt!1569475 lt!1569484)))

(assert (=> b!4356871 (forall!9124 (toList!2966 lt!1569469) lambda!140582)))

(declare-fun lt!1569477 () Unit!71637)

(declare-fun Unit!71685 () Unit!71637)

(assert (=> b!4356871 (= lt!1569477 Unit!71685)))

(assert (=> b!4356871 (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lambda!140582)))

(declare-fun lt!1569468 () Unit!71637)

(declare-fun Unit!71686 () Unit!71637)

(assert (=> b!4356871 (= lt!1569468 Unit!71686)))

(declare-fun lt!1569485 () Unit!71637)

(declare-fun Unit!71687 () Unit!71637)

(assert (=> b!4356871 (= lt!1569485 Unit!71687)))

(declare-fun lt!1569465 () Unit!71637)

(assert (=> b!4356871 (= lt!1569465 (forallContained!1765 (toList!2966 lt!1569469) lambda!140582 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> b!4356871 (contains!11142 lt!1569469 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun lt!1569473 () Unit!71637)

(declare-fun Unit!71688 () Unit!71637)

(assert (=> b!4356871 (= lt!1569473 Unit!71688)))

(assert (=> b!4356871 (contains!11142 lt!1569470 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun lt!1569481 () Unit!71637)

(declare-fun Unit!71689 () Unit!71637)

(assert (=> b!4356871 (= lt!1569481 Unit!71689)))

(assert (=> b!4356871 (forall!9124 (_2!27462 (h!54487 (toList!2965 lm!1707))) lambda!140582)))

(declare-fun lt!1569466 () Unit!71637)

(declare-fun Unit!71690 () Unit!71637)

(assert (=> b!4356871 (= lt!1569466 Unit!71690)))

(assert (=> b!4356871 (forall!9124 (toList!2966 lt!1569469) lambda!140582)))

(declare-fun lt!1569467 () Unit!71637)

(declare-fun Unit!71691 () Unit!71637)

(assert (=> b!4356871 (= lt!1569467 Unit!71691)))

(declare-fun lt!1569471 () Unit!71637)

(declare-fun Unit!71692 () Unit!71637)

(assert (=> b!4356871 (= lt!1569471 Unit!71692)))

(declare-fun lt!1569482 () Unit!71637)

(assert (=> b!4356871 (= lt!1569482 (addForallContainsKeyThenBeforeAdding!61 lt!1569103 lt!1569470 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> b!4356871 call!302782))

(declare-fun lt!1569480 () Unit!71637)

(assert (=> b!4356871 (= lt!1569480 lt!1569482)))

(assert (=> b!4356871 (forall!9124 (toList!2966 lt!1569103) lambda!140582)))

(declare-fun lt!1569479 () Unit!71637)

(declare-fun Unit!71693 () Unit!71637)

(assert (=> b!4356871 (= lt!1569479 Unit!71693)))

(declare-fun res!1790734 () Bool)

(assert (=> b!4356871 (= res!1790734 (forall!9124 (_2!27462 (h!54487 (toList!2965 lm!1707))) lambda!140582))))

(assert (=> b!4356871 (=> (not res!1790734) (not e!2711349))))

(assert (=> b!4356871 e!2711349))

(declare-fun lt!1569476 () Unit!71637)

(declare-fun Unit!71694 () Unit!71637)

(assert (=> b!4356871 (= lt!1569476 Unit!71694)))

(declare-fun bm!302778 () Bool)

(assert (=> bm!302778 (= call!302784 (forall!9124 (toList!2966 lt!1569103) (ite c!740746 lambda!140580 lambda!140582)))))

(declare-fun b!4356872 () Bool)

(assert (=> b!4356872 (= e!2711350 (invariantList!678 (toList!2966 lt!1569474)))))

(declare-fun bm!302779 () Bool)

(assert (=> bm!302779 (= call!302782 (forall!9124 (toList!2966 lt!1569103) (ite c!740746 lambda!140580 lambda!140582)))))

(declare-fun b!4356873 () Bool)

(declare-fun res!1790735 () Bool)

(assert (=> b!4356873 (=> (not res!1790735) (not e!2711350))))

(assert (=> b!4356873 (= res!1790735 (forall!9124 (toList!2966 lt!1569103) lambda!140583))))

(assert (= (and d!1287975 c!740746) b!4356869))

(assert (= (and d!1287975 (not c!740746)) b!4356871))

(assert (= (and b!4356871 res!1790734) b!4356870))

(assert (= (or b!4356869 b!4356871) bm!302777))

(assert (= (or b!4356869 b!4356871) bm!302779))

(assert (= (or b!4356869 b!4356870) bm!302778))

(assert (= (and d!1287975 res!1790733) b!4356873))

(assert (= (and b!4356873 res!1790735) b!4356872))

(declare-fun m!4971137 () Bool)

(assert (=> b!4356871 m!4971137))

(declare-fun m!4971139 () Bool)

(assert (=> b!4356871 m!4971139))

(declare-fun m!4971141 () Bool)

(assert (=> b!4356871 m!4971141))

(declare-fun m!4971143 () Bool)

(assert (=> b!4356871 m!4971143))

(assert (=> b!4356871 m!4971137))

(declare-fun m!4971145 () Bool)

(assert (=> b!4356871 m!4971145))

(declare-fun m!4971147 () Bool)

(assert (=> b!4356871 m!4971147))

(declare-fun m!4971149 () Bool)

(assert (=> b!4356871 m!4971149))

(declare-fun m!4971151 () Bool)

(assert (=> b!4356871 m!4971151))

(declare-fun m!4971153 () Bool)

(assert (=> b!4356871 m!4971153))

(declare-fun m!4971155 () Bool)

(assert (=> b!4356871 m!4971155))

(assert (=> b!4356871 m!4971155))

(assert (=> b!4356871 m!4971147))

(declare-fun m!4971157 () Bool)

(assert (=> b!4356871 m!4971157))

(declare-fun m!4971159 () Bool)

(assert (=> b!4356873 m!4971159))

(declare-fun m!4971161 () Bool)

(assert (=> bm!302778 m!4971161))

(assert (=> bm!302779 m!4971161))

(declare-fun m!4971163 () Bool)

(assert (=> d!1287975 m!4971163))

(assert (=> d!1287975 m!4970929))

(declare-fun m!4971165 () Bool)

(assert (=> b!4356872 m!4971165))

(declare-fun m!4971167 () Bool)

(assert (=> bm!302777 m!4971167))

(assert (=> b!4356560 d!1287975))

(declare-fun b!4356874 () Bool)

(declare-fun e!2711354 () Bool)

(assert (=> b!4356874 (= e!2711354 (not (contains!11145 (keys!16530 lt!1569104) key!3918)))))

(declare-fun b!4356875 () Bool)

(declare-fun e!2711356 () Bool)

(assert (=> b!4356875 (= e!2711356 (contains!11145 (keys!16530 lt!1569104) key!3918))))

(declare-fun b!4356876 () Bool)

(declare-fun e!2711355 () Unit!71637)

(declare-fun Unit!71695 () Unit!71637)

(assert (=> b!4356876 (= e!2711355 Unit!71695)))

(declare-fun b!4356877 () Bool)

(declare-fun e!2711353 () Unit!71637)

(declare-fun lt!1569487 () Unit!71637)

(assert (=> b!4356877 (= e!2711353 lt!1569487)))

(declare-fun lt!1569493 () Unit!71637)

(assert (=> b!4356877 (= lt!1569493 (lemmaContainsKeyImpliesGetValueByKeyDefined!365 (toList!2966 lt!1569104) key!3918))))

(assert (=> b!4356877 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569104) key!3918))))

(declare-fun lt!1569486 () Unit!71637)

(assert (=> b!4356877 (= lt!1569486 lt!1569493)))

(assert (=> b!4356877 (= lt!1569487 (lemmaInListThenGetKeysListContains!123 (toList!2966 lt!1569104) key!3918))))

(declare-fun call!302785 () Bool)

(assert (=> b!4356877 call!302785))

(declare-fun bm!302780 () Bool)

(declare-fun e!2711351 () List!49062)

(assert (=> bm!302780 (= call!302785 (contains!11145 e!2711351 key!3918))))

(declare-fun c!740748 () Bool)

(declare-fun c!740747 () Bool)

(assert (=> bm!302780 (= c!740748 c!740747)))

(declare-fun b!4356878 () Bool)

(assert (=> b!4356878 (= e!2711351 (keys!16530 lt!1569104))))

(declare-fun b!4356879 () Bool)

(assert (=> b!4356879 (= e!2711353 e!2711355)))

(declare-fun c!740749 () Bool)

(assert (=> b!4356879 (= c!740749 call!302785)))

(declare-fun d!1287977 () Bool)

(declare-fun e!2711352 () Bool)

(assert (=> d!1287977 e!2711352))

(declare-fun res!1790737 () Bool)

(assert (=> d!1287977 (=> res!1790737 e!2711352)))

(assert (=> d!1287977 (= res!1790737 e!2711354)))

(declare-fun res!1790738 () Bool)

(assert (=> d!1287977 (=> (not res!1790738) (not e!2711354))))

(declare-fun lt!1569491 () Bool)

(assert (=> d!1287977 (= res!1790738 (not lt!1569491))))

(declare-fun lt!1569488 () Bool)

(assert (=> d!1287977 (= lt!1569491 lt!1569488)))

(declare-fun lt!1569492 () Unit!71637)

(assert (=> d!1287977 (= lt!1569492 e!2711353)))

(assert (=> d!1287977 (= c!740747 lt!1569488)))

(assert (=> d!1287977 (= lt!1569488 (containsKey!695 (toList!2966 lt!1569104) key!3918))))

(assert (=> d!1287977 (= (contains!11142 lt!1569104 key!3918) lt!1569491)))

(declare-fun b!4356880 () Bool)

(assert (=> b!4356880 false))

(declare-fun lt!1569489 () Unit!71637)

(declare-fun lt!1569490 () Unit!71637)

(assert (=> b!4356880 (= lt!1569489 lt!1569490)))

(assert (=> b!4356880 (containsKey!695 (toList!2966 lt!1569104) key!3918)))

(assert (=> b!4356880 (= lt!1569490 (lemmaInGetKeysListThenContainsKey!124 (toList!2966 lt!1569104) key!3918))))

(declare-fun Unit!71696 () Unit!71637)

(assert (=> b!4356880 (= e!2711355 Unit!71696)))

(declare-fun b!4356881 () Bool)

(assert (=> b!4356881 (= e!2711351 (getKeysList!126 (toList!2966 lt!1569104)))))

(declare-fun b!4356882 () Bool)

(assert (=> b!4356882 (= e!2711352 e!2711356)))

(declare-fun res!1790736 () Bool)

(assert (=> b!4356882 (=> (not res!1790736) (not e!2711356))))

(assert (=> b!4356882 (= res!1790736 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569104) key!3918)))))

(assert (= (and d!1287977 c!740747) b!4356877))

(assert (= (and d!1287977 (not c!740747)) b!4356879))

(assert (= (and b!4356879 c!740749) b!4356880))

(assert (= (and b!4356879 (not c!740749)) b!4356876))

(assert (= (or b!4356877 b!4356879) bm!302780))

(assert (= (and bm!302780 c!740748) b!4356881))

(assert (= (and bm!302780 (not c!740748)) b!4356878))

(assert (= (and d!1287977 res!1790738) b!4356874))

(assert (= (and d!1287977 (not res!1790737)) b!4356882))

(assert (= (and b!4356882 res!1790736) b!4356875))

(declare-fun m!4971169 () Bool)

(assert (=> bm!302780 m!4971169))

(declare-fun m!4971171 () Bool)

(assert (=> d!1287977 m!4971171))

(declare-fun m!4971173 () Bool)

(assert (=> b!4356875 m!4971173))

(assert (=> b!4356875 m!4971173))

(declare-fun m!4971175 () Bool)

(assert (=> b!4356875 m!4971175))

(declare-fun m!4971177 () Bool)

(assert (=> b!4356877 m!4971177))

(declare-fun m!4971179 () Bool)

(assert (=> b!4356877 m!4971179))

(assert (=> b!4356877 m!4971179))

(declare-fun m!4971181 () Bool)

(assert (=> b!4356877 m!4971181))

(declare-fun m!4971183 () Bool)

(assert (=> b!4356877 m!4971183))

(declare-fun m!4971185 () Bool)

(assert (=> b!4356881 m!4971185))

(assert (=> b!4356874 m!4971173))

(assert (=> b!4356874 m!4971173))

(assert (=> b!4356874 m!4971175))

(assert (=> b!4356882 m!4971179))

(assert (=> b!4356882 m!4971179))

(assert (=> b!4356882 m!4971181))

(assert (=> b!4356878 m!4971173))

(assert (=> b!4356880 m!4971171))

(declare-fun m!4971187 () Bool)

(assert (=> b!4356880 m!4971187))

(assert (=> b!4356560 d!1287977))

(declare-fun d!1287979 () Bool)

(declare-fun e!2711359 () Bool)

(assert (=> d!1287979 e!2711359))

(declare-fun res!1790744 () Bool)

(assert (=> d!1287979 (=> (not res!1790744) (not e!2711359))))

(declare-fun lt!1569503 () ListLongMap!1615)

(assert (=> d!1287979 (= res!1790744 (contains!11143 lt!1569503 (_1!27462 lt!1569101)))))

(declare-fun lt!1569505 () List!49060)

(assert (=> d!1287979 (= lt!1569503 (ListLongMap!1616 lt!1569505))))

(declare-fun lt!1569502 () Unit!71637)

(declare-fun lt!1569504 () Unit!71637)

(assert (=> d!1287979 (= lt!1569502 lt!1569504)))

(assert (=> d!1287979 (= (getValueByKey!454 lt!1569505 (_1!27462 lt!1569101)) (Some!10467 (_2!27462 lt!1569101)))))

(declare-fun lemmaContainsTupThenGetReturnValue!229 (List!49060 (_ BitVec 64) List!49059) Unit!71637)

(assert (=> d!1287979 (= lt!1569504 (lemmaContainsTupThenGetReturnValue!229 lt!1569505 (_1!27462 lt!1569101) (_2!27462 lt!1569101)))))

(declare-fun insertStrictlySorted!135 (List!49060 (_ BitVec 64) List!49059) List!49060)

(assert (=> d!1287979 (= lt!1569505 (insertStrictlySorted!135 (toList!2965 lt!1569099) (_1!27462 lt!1569101) (_2!27462 lt!1569101)))))

(assert (=> d!1287979 (= (+!639 lt!1569099 lt!1569101) lt!1569503)))

(declare-fun b!4356887 () Bool)

(declare-fun res!1790743 () Bool)

(assert (=> b!4356887 (=> (not res!1790743) (not e!2711359))))

(assert (=> b!4356887 (= res!1790743 (= (getValueByKey!454 (toList!2965 lt!1569503) (_1!27462 lt!1569101)) (Some!10467 (_2!27462 lt!1569101))))))

(declare-fun b!4356888 () Bool)

(assert (=> b!4356888 (= e!2711359 (contains!11141 (toList!2965 lt!1569503) lt!1569101))))

(assert (= (and d!1287979 res!1790744) b!4356887))

(assert (= (and b!4356887 res!1790743) b!4356888))

(declare-fun m!4971189 () Bool)

(assert (=> d!1287979 m!4971189))

(declare-fun m!4971191 () Bool)

(assert (=> d!1287979 m!4971191))

(declare-fun m!4971193 () Bool)

(assert (=> d!1287979 m!4971193))

(declare-fun m!4971195 () Bool)

(assert (=> d!1287979 m!4971195))

(declare-fun m!4971197 () Bool)

(assert (=> b!4356887 m!4971197))

(declare-fun m!4971199 () Bool)

(assert (=> b!4356888 m!4971199))

(assert (=> b!4356560 d!1287979))

(declare-fun bs!631518 () Bool)

(declare-fun d!1287981 () Bool)

(assert (= bs!631518 (and d!1287981 d!1287937)))

(declare-fun lambda!140586 () Int)

(assert (=> bs!631518 (= lambda!140586 lambda!140537)))

(declare-fun bs!631519 () Bool)

(assert (= bs!631519 (and d!1287981 start!421644)))

(assert (=> bs!631519 (= lambda!140586 lambda!140479)))

(declare-fun bs!631520 () Bool)

(assert (= bs!631520 (and d!1287981 d!1287947)))

(assert (=> bs!631520 (= lambda!140586 lambda!140542)))

(declare-fun bs!631521 () Bool)

(assert (= bs!631521 (and d!1287981 d!1287901)))

(assert (=> bs!631521 (= lambda!140586 lambda!140498)))

(declare-fun bs!631522 () Bool)

(assert (= bs!631522 (and d!1287981 d!1287883)))

(assert (=> bs!631522 (not (= lambda!140586 lambda!140494))))

(declare-fun bs!631523 () Bool)

(assert (= bs!631523 (and d!1287981 d!1287945)))

(assert (=> bs!631523 (= lambda!140586 lambda!140541)))

(assert (=> d!1287981 (eq!261 (extractMap!550 (toList!2965 (+!639 lt!1569099 (tuple2!48337 hash!377 newBucket!200)))) (+!640 (extractMap!550 (toList!2965 lt!1569099)) (tuple2!48335 key!3918 newValue!99)))))

(declare-fun lt!1569508 () Unit!71637)

(declare-fun choose!26916 (ListLongMap!1615 (_ BitVec 64) List!49059 K!10295 V!10541 Hashable!4883) Unit!71637)

(assert (=> d!1287981 (= lt!1569508 (choose!26916 lt!1569099 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(assert (=> d!1287981 (forall!9122 (toList!2965 lt!1569099) lambda!140586)))

(assert (=> d!1287981 (= (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!95 lt!1569099 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) lt!1569508)))

(declare-fun bs!631524 () Bool)

(assert (= bs!631524 d!1287981))

(declare-fun m!4971201 () Bool)

(assert (=> bs!631524 m!4971201))

(assert (=> bs!631524 m!4970569))

(declare-fun m!4971203 () Bool)

(assert (=> bs!631524 m!4971203))

(declare-fun m!4971205 () Bool)

(assert (=> bs!631524 m!4971205))

(declare-fun m!4971207 () Bool)

(assert (=> bs!631524 m!4971207))

(declare-fun m!4971209 () Bool)

(assert (=> bs!631524 m!4971209))

(declare-fun m!4971211 () Bool)

(assert (=> bs!631524 m!4971211))

(assert (=> bs!631524 m!4970569))

(assert (=> bs!631524 m!4971207))

(assert (=> bs!631524 m!4971205))

(assert (=> b!4356560 d!1287981))

(declare-fun bs!631525 () Bool)

(declare-fun d!1287983 () Bool)

(assert (= bs!631525 (and d!1287983 d!1287937)))

(declare-fun lambda!140587 () Int)

(assert (=> bs!631525 (= lambda!140587 lambda!140537)))

(declare-fun bs!631526 () Bool)

(assert (= bs!631526 (and d!1287983 start!421644)))

(assert (=> bs!631526 (= lambda!140587 lambda!140479)))

(declare-fun bs!631527 () Bool)

(assert (= bs!631527 (and d!1287983 d!1287947)))

(assert (=> bs!631527 (= lambda!140587 lambda!140542)))

(declare-fun bs!631528 () Bool)

(assert (= bs!631528 (and d!1287983 d!1287901)))

(assert (=> bs!631528 (= lambda!140587 lambda!140498)))

(declare-fun bs!631529 () Bool)

(assert (= bs!631529 (and d!1287983 d!1287945)))

(assert (=> bs!631529 (= lambda!140587 lambda!140541)))

(declare-fun bs!631530 () Bool)

(assert (= bs!631530 (and d!1287983 d!1287883)))

(assert (=> bs!631530 (not (= lambda!140587 lambda!140494))))

(declare-fun bs!631531 () Bool)

(assert (= bs!631531 (and d!1287983 d!1287981)))

(assert (=> bs!631531 (= lambda!140587 lambda!140586)))

(declare-fun lt!1569509 () ListMap!2209)

(assert (=> d!1287983 (invariantList!678 (toList!2966 lt!1569509))))

(declare-fun e!2711360 () ListMap!2209)

(assert (=> d!1287983 (= lt!1569509 e!2711360)))

(declare-fun c!740750 () Bool)

(assert (=> d!1287983 (= c!740750 ((_ is Cons!48936) (t!355980 (toList!2965 lm!1707))))))

(assert (=> d!1287983 (forall!9122 (t!355980 (toList!2965 lm!1707)) lambda!140587)))

(assert (=> d!1287983 (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569509)))

(declare-fun b!4356889 () Bool)

(assert (=> b!4356889 (= e!2711360 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707)))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))))))

(declare-fun b!4356890 () Bool)

(assert (=> b!4356890 (= e!2711360 (ListMap!2210 Nil!48935))))

(assert (= (and d!1287983 c!740750) b!4356889))

(assert (= (and d!1287983 (not c!740750)) b!4356890))

(declare-fun m!4971213 () Bool)

(assert (=> d!1287983 m!4971213))

(declare-fun m!4971215 () Bool)

(assert (=> d!1287983 m!4971215))

(declare-fun m!4971217 () Bool)

(assert (=> b!4356889 m!4971217))

(assert (=> b!4356889 m!4971217))

(declare-fun m!4971219 () Bool)

(assert (=> b!4356889 m!4971219))

(assert (=> b!4356560 d!1287983))

(declare-fun d!1287985 () Bool)

(declare-fun isEmpty!28203 (List!49060) Bool)

(assert (=> d!1287985 (= (isEmpty!28201 lm!1707) (isEmpty!28203 (toList!2965 lm!1707)))))

(declare-fun bs!631532 () Bool)

(assert (= bs!631532 d!1287985))

(declare-fun m!4971221 () Bool)

(assert (=> bs!631532 m!4971221))

(assert (=> b!4356560 d!1287985))

(assert (=> b!4356559 d!1287895))

(declare-fun d!1287987 () Bool)

(declare-fun e!2711361 () Bool)

(assert (=> d!1287987 e!2711361))

(declare-fun res!1790746 () Bool)

(assert (=> d!1287987 (=> (not res!1790746) (not e!2711361))))

(declare-fun lt!1569511 () ListLongMap!1615)

(assert (=> d!1287987 (= res!1790746 (contains!11143 lt!1569511 (_1!27462 lt!1569101)))))

(declare-fun lt!1569513 () List!49060)

(assert (=> d!1287987 (= lt!1569511 (ListLongMap!1616 lt!1569513))))

(declare-fun lt!1569510 () Unit!71637)

(declare-fun lt!1569512 () Unit!71637)

(assert (=> d!1287987 (= lt!1569510 lt!1569512)))

(assert (=> d!1287987 (= (getValueByKey!454 lt!1569513 (_1!27462 lt!1569101)) (Some!10467 (_2!27462 lt!1569101)))))

(assert (=> d!1287987 (= lt!1569512 (lemmaContainsTupThenGetReturnValue!229 lt!1569513 (_1!27462 lt!1569101) (_2!27462 lt!1569101)))))

(assert (=> d!1287987 (= lt!1569513 (insertStrictlySorted!135 (toList!2965 lm!1707) (_1!27462 lt!1569101) (_2!27462 lt!1569101)))))

(assert (=> d!1287987 (= (+!639 lm!1707 lt!1569101) lt!1569511)))

(declare-fun b!4356891 () Bool)

(declare-fun res!1790745 () Bool)

(assert (=> b!4356891 (=> (not res!1790745) (not e!2711361))))

(assert (=> b!4356891 (= res!1790745 (= (getValueByKey!454 (toList!2965 lt!1569511) (_1!27462 lt!1569101)) (Some!10467 (_2!27462 lt!1569101))))))

(declare-fun b!4356892 () Bool)

(assert (=> b!4356892 (= e!2711361 (contains!11141 (toList!2965 lt!1569511) lt!1569101))))

(assert (= (and d!1287987 res!1790746) b!4356891))

(assert (= (and b!4356891 res!1790745) b!4356892))

(declare-fun m!4971223 () Bool)

(assert (=> d!1287987 m!4971223))

(declare-fun m!4971225 () Bool)

(assert (=> d!1287987 m!4971225))

(declare-fun m!4971227 () Bool)

(assert (=> d!1287987 m!4971227))

(declare-fun m!4971229 () Bool)

(assert (=> d!1287987 m!4971229))

(declare-fun m!4971231 () Bool)

(assert (=> b!4356891 m!4971231))

(declare-fun m!4971233 () Bool)

(assert (=> b!4356892 m!4971233))

(assert (=> b!4356559 d!1287987))

(declare-fun d!1287989 () Bool)

(assert (=> d!1287989 (forall!9122 (toList!2965 (+!639 lm!1707 (tuple2!48337 hash!377 newBucket!200))) lambda!140479)))

(declare-fun lt!1569516 () Unit!71637)

(declare-fun choose!26917 (ListLongMap!1615 Int (_ BitVec 64) List!49059) Unit!71637)

(assert (=> d!1287989 (= lt!1569516 (choose!26917 lm!1707 lambda!140479 hash!377 newBucket!200))))

(declare-fun e!2711364 () Bool)

(assert (=> d!1287989 e!2711364))

(declare-fun res!1790749 () Bool)

(assert (=> d!1287989 (=> (not res!1790749) (not e!2711364))))

(assert (=> d!1287989 (= res!1790749 (forall!9122 (toList!2965 lm!1707) lambda!140479))))

(assert (=> d!1287989 (= (addValidProp!145 lm!1707 lambda!140479 hash!377 newBucket!200) lt!1569516)))

(declare-fun b!4356896 () Bool)

(assert (=> b!4356896 (= e!2711364 (dynLambda!20635 lambda!140479 (tuple2!48337 hash!377 newBucket!200)))))

(assert (= (and d!1287989 res!1790749) b!4356896))

(declare-fun b_lambda!131205 () Bool)

(assert (=> (not b_lambda!131205) (not b!4356896)))

(declare-fun m!4971235 () Bool)

(assert (=> d!1287989 m!4971235))

(declare-fun m!4971237 () Bool)

(assert (=> d!1287989 m!4971237))

(declare-fun m!4971239 () Bool)

(assert (=> d!1287989 m!4971239))

(assert (=> d!1287989 m!4970539))

(declare-fun m!4971241 () Bool)

(assert (=> b!4356896 m!4971241))

(assert (=> b!4356559 d!1287989))

(assert (=> b!4356559 d!1287909))

(declare-fun tp!1330156 () Bool)

(declare-fun e!2711367 () Bool)

(declare-fun b!4356901 () Bool)

(assert (=> b!4356901 (= e!2711367 (and tp_is_empty!25201 tp_is_empty!25203 tp!1330156))))

(assert (=> b!4356555 (= tp!1330143 e!2711367)))

(assert (= (and b!4356555 ((_ is Cons!48935) (t!355979 newBucket!200))) b!4356901))

(declare-fun b!4356906 () Bool)

(declare-fun e!2711370 () Bool)

(declare-fun tp!1330161 () Bool)

(declare-fun tp!1330162 () Bool)

(assert (=> b!4356906 (= e!2711370 (and tp!1330161 tp!1330162))))

(assert (=> b!4356558 (= tp!1330144 e!2711370)))

(assert (= (and b!4356558 ((_ is Cons!48936) (toList!2965 lm!1707))) b!4356906))

(declare-fun b_lambda!131207 () Bool)

(assert (= b_lambda!131193 (or start!421644 b_lambda!131207)))

(declare-fun bs!631533 () Bool)

(declare-fun d!1287991 () Bool)

(assert (= bs!631533 (and d!1287991 start!421644)))

(assert (=> bs!631533 (= (dynLambda!20635 lambda!140479 (h!54487 (toList!2965 lt!1569108))) (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 lt!1569108)))))))

(declare-fun m!4971243 () Bool)

(assert (=> bs!631533 m!4971243))

(assert (=> b!4356724 d!1287991))

(declare-fun b_lambda!131209 () Bool)

(assert (= b_lambda!131195 (or start!421644 b_lambda!131209)))

(declare-fun bs!631534 () Bool)

(declare-fun d!1287993 () Bool)

(assert (= bs!631534 (and d!1287993 start!421644)))

(assert (=> bs!631534 (= (dynLambda!20635 lambda!140479 (h!54487 (toList!2965 lm!1707))) (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(assert (=> bs!631534 m!4970929))

(assert (=> b!4356776 d!1287993))

(declare-fun b_lambda!131211 () Bool)

(assert (= b_lambda!131205 (or start!421644 b_lambda!131211)))

(declare-fun bs!631535 () Bool)

(declare-fun d!1287995 () Bool)

(assert (= bs!631535 (and d!1287995 start!421644)))

(assert (=> bs!631535 (= (dynLambda!20635 lambda!140479 (tuple2!48337 hash!377 newBucket!200)) (noDuplicateKeys!491 (_2!27462 (tuple2!48337 hash!377 newBucket!200))))))

(declare-fun m!4971245 () Bool)

(assert (=> bs!631535 m!4971245))

(assert (=> b!4356896 d!1287995))

(declare-fun b_lambda!131213 () Bool)

(assert (= b_lambda!131191 (or start!421644 b_lambda!131213)))

(declare-fun bs!631536 () Bool)

(declare-fun d!1287997 () Bool)

(assert (= bs!631536 (and d!1287997 start!421644)))

(assert (=> bs!631536 (= (dynLambda!20635 lambda!140479 lt!1569102) (noDuplicateKeys!491 (_2!27462 lt!1569102)))))

(declare-fun m!4971247 () Bool)

(assert (=> bs!631536 m!4971247))

(assert (=> d!1287867 d!1287997))

(check-sat (not b!4356805) (not b_lambda!131211) (not bm!302778) (not d!1287901) (not d!1287935) (not d!1287975) (not d!1287989) (not b!4356808) (not b!4356888) (not d!1287977) (not b!4356629) (not bm!302779) (not b!4356874) (not d!1287983) (not b!4356892) (not d!1287985) (not b!4356745) (not b!4356866) (not b!4356801) (not b!4356623) (not bm!302775) (not d!1287907) (not b!4356777) (not d!1287867) (not d!1287947) (not b!4356889) (not b!4356881) (not b!4356880) (not b!4356747) (not d!1287899) (not b!4356744) (not d!1287917) (not d!1287927) (not b!4356901) (not b!4356887) (not b!4356800) (not bs!631534) (not b!4356891) (not b!4356683) (not bs!631536) (not d!1287921) (not b!4356906) (not d!1287939) (not d!1287937) (not d!1287911) (not d!1287945) (not b!4356695) (not bs!631535) (not d!1287981) tp_is_empty!25203 (not bs!631533) (not b_lambda!131209) (not b!4356804) (not b!4356865) (not bm!302780) (not b!4356798) (not b!4356815) (not bm!302777) (not b!4356802) (not bm!302763) (not d!1287877) (not d!1287849) (not d!1287847) (not b!4356748) (not b!4356757) (not d!1287913) (not b!4356750) (not bm!302753) (not b!4356809) (not b!4356877) tp_is_empty!25201 (not b!4356797) (not d!1287915) (not b!4356769) (not d!1287905) (not d!1287949) (not d!1287861) (not b!4356752) (not b_lambda!131207) (not b!4356826) (not bm!302776) (not b!4356882) (not b!4356864) (not b!4356622) (not b!4356781) (not b!4356878) (not d!1287903) (not b_lambda!131213) (not b!4356875) (not d!1287931) (not b!4356751) (not d!1287987) (not b!4356872) (not b!4356799) (not b!4356707) (not d!1287883) (not d!1287923) (not b!4356661) (not b!4356771) (not b!4356873) (not b!4356725) (not b!4356871) (not d!1287979) (not bm!302774) (not b!4356807) (not d!1287853))
(check-sat)
(get-model)

(declare-fun b!4356914 () Bool)

(assert (=> b!4356914 true))

(declare-fun d!1287999 () Bool)

(declare-fun e!2711373 () Bool)

(assert (=> d!1287999 e!2711373))

(declare-fun res!1790756 () Bool)

(assert (=> d!1287999 (=> (not res!1790756) (not e!2711373))))

(declare-fun lt!1569522 () List!49062)

(declare-fun noDuplicate!603 (List!49062) Bool)

(assert (=> d!1287999 (= res!1790756 (noDuplicate!603 lt!1569522))))

(assert (=> d!1287999 (= lt!1569522 (getKeysList!126 (toList!2966 lt!1569110)))))

(assert (=> d!1287999 (= (keys!16530 lt!1569110) lt!1569522)))

(declare-fun b!4356913 () Bool)

(declare-fun res!1790757 () Bool)

(assert (=> b!4356913 (=> (not res!1790757) (not e!2711373))))

(declare-fun length!62 (List!49062) Int)

(declare-fun length!63 (List!49059) Int)

(assert (=> b!4356913 (= res!1790757 (= (length!62 lt!1569522) (length!63 (toList!2966 lt!1569110))))))

(declare-fun res!1790758 () Bool)

(assert (=> b!4356914 (=> (not res!1790758) (not e!2711373))))

(declare-fun lambda!140592 () Int)

(declare-fun forall!9125 (List!49062 Int) Bool)

(assert (=> b!4356914 (= res!1790758 (forall!9125 lt!1569522 lambda!140592))))

(declare-fun b!4356915 () Bool)

(declare-fun lambda!140593 () Int)

(declare-fun content!7722 (List!49062) (InoxSet K!10295))

(declare-fun map!10645 (List!49059 Int) List!49062)

(assert (=> b!4356915 (= e!2711373 (= (content!7722 lt!1569522) (content!7722 (map!10645 (toList!2966 lt!1569110) lambda!140593))))))

(assert (= (and d!1287999 res!1790756) b!4356913))

(assert (= (and b!4356913 res!1790757) b!4356914))

(assert (= (and b!4356914 res!1790758) b!4356915))

(declare-fun m!4971255 () Bool)

(assert (=> d!1287999 m!4971255))

(assert (=> d!1287999 m!4970825))

(declare-fun m!4971257 () Bool)

(assert (=> b!4356913 m!4971257))

(declare-fun m!4971259 () Bool)

(assert (=> b!4356913 m!4971259))

(declare-fun m!4971261 () Bool)

(assert (=> b!4356914 m!4971261))

(declare-fun m!4971263 () Bool)

(assert (=> b!4356915 m!4971263))

(declare-fun m!4971265 () Bool)

(assert (=> b!4356915 m!4971265))

(assert (=> b!4356915 m!4971265))

(declare-fun m!4971267 () Bool)

(assert (=> b!4356915 m!4971267))

(assert (=> b!4356748 d!1287999))

(declare-fun d!1288007 () Bool)

(declare-fun noDuplicatedKeys!119 (List!49059) Bool)

(assert (=> d!1288007 (= (invariantList!678 (toList!2966 lt!1569365)) (noDuplicatedKeys!119 (toList!2966 lt!1569365)))))

(declare-fun bs!631539 () Bool)

(assert (= bs!631539 d!1288007))

(declare-fun m!4971269 () Bool)

(assert (=> bs!631539 m!4971269))

(assert (=> d!1287937 d!1288007))

(declare-fun d!1288009 () Bool)

(declare-fun res!1790759 () Bool)

(declare-fun e!2711374 () Bool)

(assert (=> d!1288009 (=> res!1790759 e!2711374)))

(assert (=> d!1288009 (= res!1790759 ((_ is Nil!48936) (toList!2965 (+!639 lt!1569099 lt!1569101))))))

(assert (=> d!1288009 (= (forall!9122 (toList!2965 (+!639 lt!1569099 lt!1569101)) lambda!140537) e!2711374)))

(declare-fun b!4356918 () Bool)

(declare-fun e!2711375 () Bool)

(assert (=> b!4356918 (= e!2711374 e!2711375)))

(declare-fun res!1790760 () Bool)

(assert (=> b!4356918 (=> (not res!1790760) (not e!2711375))))

(assert (=> b!4356918 (= res!1790760 (dynLambda!20635 lambda!140537 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101)))))))

(declare-fun b!4356919 () Bool)

(assert (=> b!4356919 (= e!2711375 (forall!9122 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))) lambda!140537))))

(assert (= (and d!1288009 (not res!1790759)) b!4356918))

(assert (= (and b!4356918 res!1790760) b!4356919))

(declare-fun b_lambda!131215 () Bool)

(assert (=> (not b_lambda!131215) (not b!4356918)))

(declare-fun m!4971271 () Bool)

(assert (=> b!4356918 m!4971271))

(declare-fun m!4971273 () Bool)

(assert (=> b!4356919 m!4971273))

(assert (=> d!1287937 d!1288009))

(declare-fun d!1288011 () Bool)

(declare-fun isEmpty!28204 (Option!10469) Bool)

(assert (=> d!1288011 (= (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569104) key!3918)) (not (isEmpty!28204 (getValueByKey!455 (toList!2966 lt!1569104) key!3918))))))

(declare-fun bs!631540 () Bool)

(assert (= bs!631540 d!1288011))

(assert (=> bs!631540 m!4971179))

(declare-fun m!4971275 () Bool)

(assert (=> bs!631540 m!4971275))

(assert (=> b!4356882 d!1288011))

(declare-fun b!4356943 () Bool)

(declare-fun e!2711387 () Option!10469)

(assert (=> b!4356943 (= e!2711387 None!10468)))

(declare-fun b!4356940 () Bool)

(declare-fun e!2711386 () Option!10469)

(assert (=> b!4356940 (= e!2711386 (Some!10468 (_2!27461 (h!54486 (toList!2966 lt!1569104)))))))

(declare-fun b!4356942 () Bool)

(assert (=> b!4356942 (= e!2711387 (getValueByKey!455 (t!355979 (toList!2966 lt!1569104)) key!3918))))

(declare-fun b!4356941 () Bool)

(assert (=> b!4356941 (= e!2711386 e!2711387)))

(declare-fun c!740762 () Bool)

(assert (=> b!4356941 (= c!740762 (and ((_ is Cons!48935) (toList!2966 lt!1569104)) (not (= (_1!27461 (h!54486 (toList!2966 lt!1569104))) key!3918))))))

(declare-fun d!1288013 () Bool)

(declare-fun c!740761 () Bool)

(assert (=> d!1288013 (= c!740761 (and ((_ is Cons!48935) (toList!2966 lt!1569104)) (= (_1!27461 (h!54486 (toList!2966 lt!1569104))) key!3918)))))

(assert (=> d!1288013 (= (getValueByKey!455 (toList!2966 lt!1569104) key!3918) e!2711386)))

(assert (= (and d!1288013 c!740761) b!4356940))

(assert (= (and d!1288013 (not c!740761)) b!4356941))

(assert (= (and b!4356941 c!740762) b!4356942))

(assert (= (and b!4356941 (not c!740762)) b!4356943))

(declare-fun m!4971279 () Bool)

(assert (=> b!4356942 m!4971279))

(assert (=> b!4356882 d!1288013))

(declare-fun bs!631541 () Bool)

(declare-fun b!4356945 () Bool)

(assert (= bs!631541 (and b!4356945 b!4356914)))

(declare-fun lambda!140594 () Int)

(assert (=> bs!631541 (= (= (toList!2966 lt!1569104) (toList!2966 lt!1569110)) (= lambda!140594 lambda!140592))))

(assert (=> b!4356945 true))

(declare-fun bs!631542 () Bool)

(declare-fun b!4356946 () Bool)

(assert (= bs!631542 (and b!4356946 b!4356915)))

(declare-fun lambda!140595 () Int)

(assert (=> bs!631542 (= lambda!140595 lambda!140593)))

(declare-fun d!1288017 () Bool)

(declare-fun e!2711388 () Bool)

(assert (=> d!1288017 e!2711388))

(declare-fun res!1790761 () Bool)

(assert (=> d!1288017 (=> (not res!1790761) (not e!2711388))))

(declare-fun lt!1569523 () List!49062)

(assert (=> d!1288017 (= res!1790761 (noDuplicate!603 lt!1569523))))

(assert (=> d!1288017 (= lt!1569523 (getKeysList!126 (toList!2966 lt!1569104)))))

(assert (=> d!1288017 (= (keys!16530 lt!1569104) lt!1569523)))

(declare-fun b!4356944 () Bool)

(declare-fun res!1790762 () Bool)

(assert (=> b!4356944 (=> (not res!1790762) (not e!2711388))))

(assert (=> b!4356944 (= res!1790762 (= (length!62 lt!1569523) (length!63 (toList!2966 lt!1569104))))))

(declare-fun res!1790763 () Bool)

(assert (=> b!4356945 (=> (not res!1790763) (not e!2711388))))

(assert (=> b!4356945 (= res!1790763 (forall!9125 lt!1569523 lambda!140594))))

(assert (=> b!4356946 (= e!2711388 (= (content!7722 lt!1569523) (content!7722 (map!10645 (toList!2966 lt!1569104) lambda!140595))))))

(assert (= (and d!1288017 res!1790761) b!4356944))

(assert (= (and b!4356944 res!1790762) b!4356945))

(assert (= (and b!4356945 res!1790763) b!4356946))

(declare-fun m!4971281 () Bool)

(assert (=> d!1288017 m!4971281))

(assert (=> d!1288017 m!4971185))

(declare-fun m!4971283 () Bool)

(assert (=> b!4356944 m!4971283))

(declare-fun m!4971285 () Bool)

(assert (=> b!4356944 m!4971285))

(declare-fun m!4971287 () Bool)

(assert (=> b!4356945 m!4971287))

(declare-fun m!4971289 () Bool)

(assert (=> b!4356946 m!4971289))

(declare-fun m!4971291 () Bool)

(assert (=> b!4356946 m!4971291))

(assert (=> b!4356946 m!4971291))

(declare-fun m!4971293 () Bool)

(assert (=> b!4356946 m!4971293))

(assert (=> b!4356878 d!1288017))

(declare-fun d!1288019 () Bool)

(declare-fun lt!1569524 () List!49059)

(assert (=> d!1288019 (not (containsKey!692 lt!1569524 key!3918))))

(declare-fun e!2711390 () List!49059)

(assert (=> d!1288019 (= lt!1569524 e!2711390)))

(declare-fun c!740764 () Bool)

(assert (=> d!1288019 (= c!740764 (and ((_ is Cons!48935) (t!355979 lt!1569096)) (= (_1!27461 (h!54486 (t!355979 lt!1569096))) key!3918)))))

(assert (=> d!1288019 (noDuplicateKeys!491 (t!355979 lt!1569096))))

(assert (=> d!1288019 (= (removePairForKey!461 (t!355979 lt!1569096) key!3918) lt!1569524)))

(declare-fun b!4356947 () Bool)

(assert (=> b!4356947 (= e!2711390 (t!355979 (t!355979 lt!1569096)))))

(declare-fun b!4356950 () Bool)

(declare-fun e!2711389 () List!49059)

(assert (=> b!4356950 (= e!2711389 Nil!48935)))

(declare-fun b!4356949 () Bool)

(assert (=> b!4356949 (= e!2711389 (Cons!48935 (h!54486 (t!355979 lt!1569096)) (removePairForKey!461 (t!355979 (t!355979 lt!1569096)) key!3918)))))

(declare-fun b!4356948 () Bool)

(assert (=> b!4356948 (= e!2711390 e!2711389)))

(declare-fun c!740763 () Bool)

(assert (=> b!4356948 (= c!740763 ((_ is Cons!48935) (t!355979 lt!1569096)))))

(assert (= (and d!1288019 c!740764) b!4356947))

(assert (= (and d!1288019 (not c!740764)) b!4356948))

(assert (= (and b!4356948 c!740763) b!4356949))

(assert (= (and b!4356948 (not c!740763)) b!4356950))

(declare-fun m!4971295 () Bool)

(assert (=> d!1288019 m!4971295))

(declare-fun m!4971297 () Bool)

(assert (=> d!1288019 m!4971297))

(declare-fun m!4971299 () Bool)

(assert (=> b!4356949 m!4971299))

(assert (=> b!4356661 d!1288019))

(declare-fun d!1288021 () Bool)

(declare-fun res!1790764 () Bool)

(declare-fun e!2711391 () Bool)

(assert (=> d!1288021 (=> res!1790764 e!2711391)))

(assert (=> d!1288021 (= res!1790764 (and ((_ is Cons!48935) (t!355979 (apply!11343 lm!1707 (_1!27462 (h!54487 (toList!2965 lm!1707)))))) (= (_1!27461 (h!54486 (t!355979 (apply!11343 lm!1707 (_1!27462 (h!54487 (toList!2965 lm!1707))))))) key!3918)))))

(assert (=> d!1288021 (= (containsKey!692 (t!355979 (apply!11343 lm!1707 (_1!27462 (h!54487 (toList!2965 lm!1707))))) key!3918) e!2711391)))

(declare-fun b!4356951 () Bool)

(declare-fun e!2711392 () Bool)

(assert (=> b!4356951 (= e!2711391 e!2711392)))

(declare-fun res!1790765 () Bool)

(assert (=> b!4356951 (=> (not res!1790765) (not e!2711392))))

(assert (=> b!4356951 (= res!1790765 ((_ is Cons!48935) (t!355979 (apply!11343 lm!1707 (_1!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun b!4356952 () Bool)

(assert (=> b!4356952 (= e!2711392 (containsKey!692 (t!355979 (t!355979 (apply!11343 lm!1707 (_1!27462 (h!54487 (toList!2965 lm!1707)))))) key!3918))))

(assert (= (and d!1288021 (not res!1790764)) b!4356951))

(assert (= (and b!4356951 res!1790765) b!4356952))

(declare-fun m!4971301 () Bool)

(assert (=> b!4356952 m!4971301))

(assert (=> b!4356781 d!1288021))

(declare-fun bs!631545 () Bool)

(declare-fun b!4356993 () Bool)

(assert (= bs!631545 (and b!4356993 b!4356914)))

(declare-fun lambda!140604 () Int)

(assert (=> bs!631545 (= (= (t!355979 (toList!2966 lt!1569103)) (toList!2966 lt!1569110)) (= lambda!140604 lambda!140592))))

(declare-fun bs!631546 () Bool)

(assert (= bs!631546 (and b!4356993 b!4356945)))

(assert (=> bs!631546 (= (= (t!355979 (toList!2966 lt!1569103)) (toList!2966 lt!1569104)) (= lambda!140604 lambda!140594))))

(assert (=> b!4356993 true))

(declare-fun bs!631548 () Bool)

(declare-fun b!4356996 () Bool)

(assert (= bs!631548 (and b!4356996 b!4356914)))

(declare-fun lambda!140605 () Int)

(assert (=> bs!631548 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569103)) (t!355979 (toList!2966 lt!1569103))) (toList!2966 lt!1569110)) (= lambda!140605 lambda!140592))))

(declare-fun bs!631549 () Bool)

(assert (= bs!631549 (and b!4356996 b!4356945)))

(assert (=> bs!631549 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569103)) (t!355979 (toList!2966 lt!1569103))) (toList!2966 lt!1569104)) (= lambda!140605 lambda!140594))))

(declare-fun bs!631550 () Bool)

(assert (= bs!631550 (and b!4356996 b!4356993)))

(assert (=> bs!631550 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569103)) (t!355979 (toList!2966 lt!1569103))) (t!355979 (toList!2966 lt!1569103))) (= lambda!140605 lambda!140604))))

(assert (=> b!4356996 true))

(declare-fun bs!631551 () Bool)

(declare-fun b!4356991 () Bool)

(assert (= bs!631551 (and b!4356991 b!4356914)))

(declare-fun lambda!140606 () Int)

(assert (=> bs!631551 (= (= (toList!2966 lt!1569103) (toList!2966 lt!1569110)) (= lambda!140606 lambda!140592))))

(declare-fun bs!631552 () Bool)

(assert (= bs!631552 (and b!4356991 b!4356945)))

(assert (=> bs!631552 (= (= (toList!2966 lt!1569103) (toList!2966 lt!1569104)) (= lambda!140606 lambda!140594))))

(declare-fun bs!631553 () Bool)

(assert (= bs!631553 (and b!4356991 b!4356993)))

(assert (=> bs!631553 (= (= (toList!2966 lt!1569103) (t!355979 (toList!2966 lt!1569103))) (= lambda!140606 lambda!140604))))

(declare-fun bs!631554 () Bool)

(assert (= bs!631554 (and b!4356991 b!4356996)))

(assert (=> bs!631554 (= (= (toList!2966 lt!1569103) (Cons!48935 (h!54486 (toList!2966 lt!1569103)) (t!355979 (toList!2966 lt!1569103)))) (= lambda!140606 lambda!140605))))

(assert (=> b!4356991 true))

(declare-fun bs!631555 () Bool)

(declare-fun b!4356999 () Bool)

(assert (= bs!631555 (and b!4356999 b!4356915)))

(declare-fun lambda!140607 () Int)

(assert (=> bs!631555 (= lambda!140607 lambda!140593)))

(declare-fun bs!631556 () Bool)

(assert (= bs!631556 (and b!4356999 b!4356946)))

(assert (=> bs!631556 (= lambda!140607 lambda!140595)))

(declare-fun b!4356990 () Bool)

(declare-fun e!2711415 () Unit!71637)

(declare-fun Unit!71697 () Unit!71637)

(assert (=> b!4356990 (= e!2711415 Unit!71697)))

(declare-fun res!1790781 () Bool)

(declare-fun e!2711416 () Bool)

(assert (=> b!4356991 (=> (not res!1790781) (not e!2711416))))

(declare-fun lt!1569545 () List!49062)

(assert (=> b!4356991 (= res!1790781 (forall!9125 lt!1569545 lambda!140606))))

(declare-fun b!4356992 () Bool)

(declare-fun res!1790780 () Bool)

(assert (=> b!4356992 (=> (not res!1790780) (not e!2711416))))

(assert (=> b!4356992 (= res!1790780 (= (length!62 lt!1569545) (length!63 (toList!2966 lt!1569103))))))

(assert (=> b!4356993 false))

(declare-fun lt!1569546 () Unit!71637)

(declare-fun forallContained!1766 (List!49062 Int K!10295) Unit!71637)

(assert (=> b!4356993 (= lt!1569546 (forallContained!1766 (getKeysList!126 (t!355979 (toList!2966 lt!1569103))) lambda!140604 (_1!27461 (h!54486 (toList!2966 lt!1569103)))))))

(declare-fun e!2711417 () Unit!71637)

(declare-fun Unit!71698 () Unit!71637)

(assert (=> b!4356993 (= e!2711417 Unit!71698)))

(declare-fun b!4356994 () Bool)

(assert (=> b!4356994 false))

(declare-fun Unit!71699 () Unit!71637)

(assert (=> b!4356994 (= e!2711415 Unit!71699)))

(declare-fun e!2711414 () List!49062)

(assert (=> b!4356996 (= e!2711414 (Cons!48938 (_1!27461 (h!54486 (toList!2966 lt!1569103))) (getKeysList!126 (t!355979 (toList!2966 lt!1569103)))))))

(declare-fun c!740779 () Bool)

(assert (=> b!4356996 (= c!740779 (containsKey!695 (t!355979 (toList!2966 lt!1569103)) (_1!27461 (h!54486 (toList!2966 lt!1569103)))))))

(declare-fun lt!1569551 () Unit!71637)

(assert (=> b!4356996 (= lt!1569551 e!2711415)))

(declare-fun c!740778 () Bool)

(assert (=> b!4356996 (= c!740778 (contains!11145 (getKeysList!126 (t!355979 (toList!2966 lt!1569103))) (_1!27461 (h!54486 (toList!2966 lt!1569103)))))))

(declare-fun lt!1569547 () Unit!71637)

(assert (=> b!4356996 (= lt!1569547 e!2711417)))

(declare-fun lt!1569550 () List!49062)

(assert (=> b!4356996 (= lt!1569550 (getKeysList!126 (t!355979 (toList!2966 lt!1569103))))))

(declare-fun lt!1569549 () Unit!71637)

(declare-fun lemmaForallContainsAddHeadPreserves!25 (List!49059 List!49062 tuple2!48334) Unit!71637)

(assert (=> b!4356996 (= lt!1569549 (lemmaForallContainsAddHeadPreserves!25 (t!355979 (toList!2966 lt!1569103)) lt!1569550 (h!54486 (toList!2966 lt!1569103))))))

(assert (=> b!4356996 (forall!9125 lt!1569550 lambda!140605)))

(declare-fun lt!1569548 () Unit!71637)

(assert (=> b!4356996 (= lt!1569548 lt!1569549)))

(declare-fun d!1288023 () Bool)

(assert (=> d!1288023 e!2711416))

(declare-fun res!1790779 () Bool)

(assert (=> d!1288023 (=> (not res!1790779) (not e!2711416))))

(assert (=> d!1288023 (= res!1790779 (noDuplicate!603 lt!1569545))))

(assert (=> d!1288023 (= lt!1569545 e!2711414)))

(declare-fun c!740777 () Bool)

(assert (=> d!1288023 (= c!740777 ((_ is Cons!48935) (toList!2966 lt!1569103)))))

(assert (=> d!1288023 (invariantList!678 (toList!2966 lt!1569103))))

(assert (=> d!1288023 (= (getKeysList!126 (toList!2966 lt!1569103)) lt!1569545)))

(declare-fun b!4356998 () Bool)

(declare-fun Unit!71700 () Unit!71637)

(assert (=> b!4356998 (= e!2711417 Unit!71700)))

(assert (=> b!4356999 (= e!2711416 (= (content!7722 lt!1569545) (content!7722 (map!10645 (toList!2966 lt!1569103) lambda!140607))))))

(declare-fun b!4357000 () Bool)

(assert (=> b!4357000 (= e!2711414 Nil!48938)))

(assert (= (and d!1288023 c!740777) b!4356996))

(assert (= (and d!1288023 (not c!740777)) b!4357000))

(assert (= (and b!4356996 c!740779) b!4356994))

(assert (= (and b!4356996 (not c!740779)) b!4356990))

(assert (= (and b!4356996 c!740778) b!4356993))

(assert (= (and b!4356996 (not c!740778)) b!4356998))

(assert (= (and d!1288023 res!1790779) b!4356992))

(assert (= (and b!4356992 res!1790780) b!4356991))

(assert (= (and b!4356991 res!1790781) b!4356999))

(declare-fun m!4971319 () Bool)

(assert (=> b!4356996 m!4971319))

(declare-fun m!4971321 () Bool)

(assert (=> b!4356996 m!4971321))

(assert (=> b!4356996 m!4971319))

(declare-fun m!4971323 () Bool)

(assert (=> b!4356996 m!4971323))

(declare-fun m!4971325 () Bool)

(assert (=> b!4356996 m!4971325))

(declare-fun m!4971327 () Bool)

(assert (=> b!4356996 m!4971327))

(assert (=> b!4356993 m!4971319))

(assert (=> b!4356993 m!4971319))

(declare-fun m!4971329 () Bool)

(assert (=> b!4356993 m!4971329))

(declare-fun m!4971331 () Bool)

(assert (=> b!4356992 m!4971331))

(declare-fun m!4971333 () Bool)

(assert (=> b!4356992 m!4971333))

(declare-fun m!4971335 () Bool)

(assert (=> b!4356991 m!4971335))

(declare-fun m!4971337 () Bool)

(assert (=> b!4356999 m!4971337))

(declare-fun m!4971339 () Bool)

(assert (=> b!4356999 m!4971339))

(assert (=> b!4356999 m!4971339))

(declare-fun m!4971341 () Bool)

(assert (=> b!4356999 m!4971341))

(declare-fun m!4971343 () Bool)

(assert (=> d!1288023 m!4971343))

(declare-fun m!4971345 () Bool)

(assert (=> d!1288023 m!4971345))

(assert (=> b!4356808 d!1288023))

(declare-fun d!1288041 () Bool)

(declare-fun res!1790793 () Bool)

(declare-fun e!2711431 () Bool)

(assert (=> d!1288041 (=> res!1790793 e!2711431)))

(assert (=> d!1288041 (= res!1790793 ((_ is Nil!48935) (toList!2966 lt!1569103)))))

(assert (=> d!1288041 (= (forall!9124 (toList!2966 lt!1569103) (ite c!740746 lambda!140580 lambda!140582)) e!2711431)))

(declare-fun b!4357018 () Bool)

(declare-fun e!2711432 () Bool)

(assert (=> b!4357018 (= e!2711431 e!2711432)))

(declare-fun res!1790794 () Bool)

(assert (=> b!4357018 (=> (not res!1790794) (not e!2711432))))

(declare-fun dynLambda!20636 (Int tuple2!48334) Bool)

(assert (=> b!4357018 (= res!1790794 (dynLambda!20636 (ite c!740746 lambda!140580 lambda!140582) (h!54486 (toList!2966 lt!1569103))))))

(declare-fun b!4357019 () Bool)

(assert (=> b!4357019 (= e!2711432 (forall!9124 (t!355979 (toList!2966 lt!1569103)) (ite c!740746 lambda!140580 lambda!140582)))))

(assert (= (and d!1288041 (not res!1790793)) b!4357018))

(assert (= (and b!4357018 res!1790794) b!4357019))

(declare-fun b_lambda!131219 () Bool)

(assert (=> (not b_lambda!131219) (not b!4357018)))

(declare-fun m!4971353 () Bool)

(assert (=> b!4357018 m!4971353))

(declare-fun m!4971355 () Bool)

(assert (=> b!4357019 m!4971355))

(assert (=> bm!302778 d!1288041))

(declare-fun d!1288047 () Bool)

(declare-fun res!1790795 () Bool)

(declare-fun e!2711433 () Bool)

(assert (=> d!1288047 (=> res!1790795 e!2711433)))

(assert (=> d!1288047 (= res!1790795 ((_ is Nil!48936) (t!355980 (toList!2965 lt!1569108))))))

(assert (=> d!1288047 (= (forall!9122 (t!355980 (toList!2965 lt!1569108)) lambda!140479) e!2711433)))

(declare-fun b!4357020 () Bool)

(declare-fun e!2711434 () Bool)

(assert (=> b!4357020 (= e!2711433 e!2711434)))

(declare-fun res!1790796 () Bool)

(assert (=> b!4357020 (=> (not res!1790796) (not e!2711434))))

(assert (=> b!4357020 (= res!1790796 (dynLambda!20635 lambda!140479 (h!54487 (t!355980 (toList!2965 lt!1569108)))))))

(declare-fun b!4357021 () Bool)

(assert (=> b!4357021 (= e!2711434 (forall!9122 (t!355980 (t!355980 (toList!2965 lt!1569108))) lambda!140479))))

(assert (= (and d!1288047 (not res!1790795)) b!4357020))

(assert (= (and b!4357020 res!1790796) b!4357021))

(declare-fun b_lambda!131221 () Bool)

(assert (=> (not b_lambda!131221) (not b!4357020)))

(declare-fun m!4971357 () Bool)

(assert (=> b!4357020 m!4971357))

(declare-fun m!4971359 () Bool)

(assert (=> b!4357021 m!4971359))

(assert (=> b!4356725 d!1288047))

(declare-fun bs!631565 () Bool)

(declare-fun b!4357022 () Bool)

(assert (= bs!631565 (and b!4357022 b!4356871)))

(declare-fun lambda!140609 () Int)

(assert (=> bs!631565 (= (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569470) (= lambda!140609 lambda!140582))))

(declare-fun bs!631566 () Bool)

(assert (= bs!631566 (and b!4357022 d!1287949)))

(assert (=> bs!631566 (= (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569453) (= lambda!140609 lambda!140579))))

(declare-fun bs!631567 () Bool)

(assert (= bs!631567 (and b!4357022 b!4356862)))

(assert (=> bs!631567 (= (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569106) (= lambda!140609 lambda!140576))))

(declare-fun bs!631568 () Bool)

(assert (= bs!631568 (and b!4357022 b!4356864)))

(assert (=> bs!631568 (= (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569106) (= lambda!140609 lambda!140577))))

(assert (=> bs!631568 (= (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569449) (= lambda!140609 lambda!140578))))

(assert (=> bs!631565 (= (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569103) (= lambda!140609 lambda!140581))))

(declare-fun bs!631569 () Bool)

(assert (= bs!631569 (and b!4357022 d!1287975)))

(assert (=> bs!631569 (= (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569474) (= lambda!140609 lambda!140583))))

(declare-fun bs!631570 () Bool)

(assert (= bs!631570 (and b!4357022 d!1287907)))

(assert (=> bs!631570 (not (= lambda!140609 lambda!140513))))

(declare-fun bs!631571 () Bool)

(assert (= bs!631571 (and b!4357022 b!4356869)))

(assert (=> bs!631571 (= (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569103) (= lambda!140609 lambda!140580))))

(assert (=> b!4357022 true))

(declare-fun bs!631575 () Bool)

(declare-fun b!4357024 () Bool)

(assert (= bs!631575 (and b!4357024 b!4356871)))

(declare-fun lambda!140611 () Int)

(assert (=> bs!631575 (= (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569470) (= lambda!140611 lambda!140582))))

(declare-fun bs!631577 () Bool)

(assert (= bs!631577 (and b!4357024 d!1287949)))

(assert (=> bs!631577 (= (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569453) (= lambda!140611 lambda!140579))))

(declare-fun bs!631578 () Bool)

(assert (= bs!631578 (and b!4357024 b!4356862)))

(assert (=> bs!631578 (= (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569106) (= lambda!140611 lambda!140576))))

(declare-fun bs!631580 () Bool)

(assert (= bs!631580 (and b!4357024 b!4356864)))

(assert (=> bs!631580 (= (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569106) (= lambda!140611 lambda!140577))))

(assert (=> bs!631580 (= (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569449) (= lambda!140611 lambda!140578))))

(assert (=> bs!631575 (= (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569103) (= lambda!140611 lambda!140581))))

(declare-fun bs!631582 () Bool)

(assert (= bs!631582 (and b!4357024 d!1287975)))

(assert (=> bs!631582 (= (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569474) (= lambda!140611 lambda!140583))))

(declare-fun bs!631583 () Bool)

(assert (= bs!631583 (and b!4357024 d!1287907)))

(assert (=> bs!631583 (not (= lambda!140611 lambda!140513))))

(declare-fun bs!631584 () Bool)

(assert (= bs!631584 (and b!4357024 b!4357022)))

(assert (=> bs!631584 (= lambda!140611 lambda!140609)))

(declare-fun bs!631586 () Bool)

(assert (= bs!631586 (and b!4357024 b!4356869)))

(assert (=> bs!631586 (= (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569103) (= lambda!140611 lambda!140580))))

(assert (=> b!4357024 true))

(declare-fun lambda!140612 () Int)

(declare-fun lt!1569578 () ListMap!2209)

(assert (=> bs!631575 (= (= lt!1569578 lt!1569470) (= lambda!140612 lambda!140582))))

(assert (=> bs!631577 (= (= lt!1569578 lt!1569453) (= lambda!140612 lambda!140579))))

(assert (=> bs!631578 (= (= lt!1569578 lt!1569106) (= lambda!140612 lambda!140576))))

(assert (=> bs!631580 (= (= lt!1569578 lt!1569106) (= lambda!140612 lambda!140577))))

(assert (=> bs!631580 (= (= lt!1569578 lt!1569449) (= lambda!140612 lambda!140578))))

(assert (=> bs!631575 (= (= lt!1569578 lt!1569103) (= lambda!140612 lambda!140581))))

(assert (=> bs!631582 (= (= lt!1569578 lt!1569474) (= lambda!140612 lambda!140583))))

(assert (=> bs!631583 (not (= lambda!140612 lambda!140513))))

(assert (=> b!4357024 (= (= lt!1569578 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140612 lambda!140611))))

(assert (=> bs!631584 (= (= lt!1569578 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140612 lambda!140609))))

(assert (=> bs!631586 (= (= lt!1569578 lt!1569103) (= lambda!140612 lambda!140580))))

(assert (=> b!4357024 true))

(declare-fun bs!631588 () Bool)

(declare-fun d!1288049 () Bool)

(assert (= bs!631588 (and d!1288049 b!4356871)))

(declare-fun lambda!140614 () Int)

(declare-fun lt!1569582 () ListMap!2209)

(assert (=> bs!631588 (= (= lt!1569582 lt!1569470) (= lambda!140614 lambda!140582))))

(declare-fun bs!631589 () Bool)

(assert (= bs!631589 (and d!1288049 d!1287949)))

(assert (=> bs!631589 (= (= lt!1569582 lt!1569453) (= lambda!140614 lambda!140579))))

(declare-fun bs!631590 () Bool)

(assert (= bs!631590 (and d!1288049 b!4356862)))

(assert (=> bs!631590 (= (= lt!1569582 lt!1569106) (= lambda!140614 lambda!140576))))

(declare-fun bs!631591 () Bool)

(assert (= bs!631591 (and d!1288049 b!4356864)))

(assert (=> bs!631591 (= (= lt!1569582 lt!1569106) (= lambda!140614 lambda!140577))))

(assert (=> bs!631591 (= (= lt!1569582 lt!1569449) (= lambda!140614 lambda!140578))))

(assert (=> bs!631588 (= (= lt!1569582 lt!1569103) (= lambda!140614 lambda!140581))))

(declare-fun bs!631592 () Bool)

(assert (= bs!631592 (and d!1288049 d!1287975)))

(assert (=> bs!631592 (= (= lt!1569582 lt!1569474) (= lambda!140614 lambda!140583))))

(declare-fun bs!631593 () Bool)

(assert (= bs!631593 (and d!1288049 d!1287907)))

(assert (=> bs!631593 (not (= lambda!140614 lambda!140513))))

(declare-fun bs!631594 () Bool)

(assert (= bs!631594 (and d!1288049 b!4357024)))

(assert (=> bs!631594 (= (= lt!1569582 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140614 lambda!140611))))

(declare-fun bs!631595 () Bool)

(assert (= bs!631595 (and d!1288049 b!4356869)))

(assert (=> bs!631595 (= (= lt!1569582 lt!1569103) (= lambda!140614 lambda!140580))))

(declare-fun bs!631596 () Bool)

(assert (= bs!631596 (and d!1288049 b!4357022)))

(assert (=> bs!631596 (= (= lt!1569582 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140614 lambda!140609))))

(assert (=> bs!631594 (= (= lt!1569582 lt!1569578) (= lambda!140614 lambda!140612))))

(assert (=> d!1288049 true))

(declare-fun e!2711435 () ListMap!2209)

(assert (=> b!4357022 (= e!2711435 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))))))

(declare-fun lt!1569591 () Unit!71637)

(declare-fun call!302790 () Unit!71637)

(assert (=> b!4357022 (= lt!1569591 call!302790)))

(declare-fun call!302791 () Bool)

(assert (=> b!4357022 call!302791))

(declare-fun lt!1569586 () Unit!71637)

(assert (=> b!4357022 (= lt!1569586 lt!1569591)))

(declare-fun call!302789 () Bool)

(assert (=> b!4357022 call!302789))

(declare-fun lt!1569580 () Unit!71637)

(declare-fun Unit!71701 () Unit!71637)

(assert (=> b!4357022 (= lt!1569580 Unit!71701)))

(declare-fun e!2711437 () Bool)

(assert (=> d!1288049 e!2711437))

(declare-fun res!1790797 () Bool)

(assert (=> d!1288049 (=> (not res!1790797) (not e!2711437))))

(assert (=> d!1288049 (= res!1790797 (forall!9124 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lambda!140614))))

(assert (=> d!1288049 (= lt!1569582 e!2711435)))

(declare-fun c!740783 () Bool)

(assert (=> d!1288049 (= c!740783 ((_ is Nil!48935) (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101))))))))

(assert (=> d!1288049 (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101)))))))

(assert (=> d!1288049 (= (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101)))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) lt!1569582)))

(declare-fun b!4357023 () Bool)

(declare-fun e!2711436 () Bool)

(assert (=> b!4357023 (= e!2711436 call!302791)))

(declare-fun bm!302784 () Bool)

(assert (=> bm!302784 (= call!302790 (lemmaContainsAllItsOwnKeys!61 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))))))

(assert (=> b!4357024 (= e!2711435 lt!1569578)))

(declare-fun lt!1569577 () ListMap!2209)

(assert (=> b!4357024 (= lt!1569577 (+!640 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) (h!54486 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101)))))))))

(assert (=> b!4357024 (= lt!1569578 (addToMapMapFromBucket!187 (t!355979 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (+!640 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) (h!54486 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101))))))))))

(declare-fun lt!1569592 () Unit!71637)

(assert (=> b!4357024 (= lt!1569592 call!302790)))

(assert (=> b!4357024 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) lambda!140611)))

(declare-fun lt!1569583 () Unit!71637)

(assert (=> b!4357024 (= lt!1569583 lt!1569592)))

(assert (=> b!4357024 (forall!9124 (toList!2966 lt!1569577) lambda!140612)))

(declare-fun lt!1569585 () Unit!71637)

(declare-fun Unit!71702 () Unit!71637)

(assert (=> b!4357024 (= lt!1569585 Unit!71702)))

(assert (=> b!4357024 (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101))))) lambda!140612)))

(declare-fun lt!1569576 () Unit!71637)

(declare-fun Unit!71703 () Unit!71637)

(assert (=> b!4357024 (= lt!1569576 Unit!71703)))

(declare-fun lt!1569593 () Unit!71637)

(declare-fun Unit!71704 () Unit!71637)

(assert (=> b!4357024 (= lt!1569593 Unit!71704)))

(declare-fun lt!1569573 () Unit!71637)

(assert (=> b!4357024 (= lt!1569573 (forallContained!1765 (toList!2966 lt!1569577) lambda!140612 (h!54486 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101)))))))))

(assert (=> b!4357024 (contains!11142 lt!1569577 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101)))))))))

(declare-fun lt!1569581 () Unit!71637)

(declare-fun Unit!71705 () Unit!71637)

(assert (=> b!4357024 (= lt!1569581 Unit!71705)))

(assert (=> b!4357024 (contains!11142 lt!1569578 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101)))))))))

(declare-fun lt!1569589 () Unit!71637)

(declare-fun Unit!71706 () Unit!71637)

(assert (=> b!4357024 (= lt!1569589 Unit!71706)))

(assert (=> b!4357024 (forall!9124 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lambda!140612)))

(declare-fun lt!1569574 () Unit!71637)

(declare-fun Unit!71707 () Unit!71637)

(assert (=> b!4357024 (= lt!1569574 Unit!71707)))

(assert (=> b!4357024 (forall!9124 (toList!2966 lt!1569577) lambda!140612)))

(declare-fun lt!1569575 () Unit!71637)

(declare-fun Unit!71708 () Unit!71637)

(assert (=> b!4357024 (= lt!1569575 Unit!71708)))

(declare-fun lt!1569579 () Unit!71637)

(declare-fun Unit!71709 () Unit!71637)

(assert (=> b!4357024 (= lt!1569579 Unit!71709)))

(declare-fun lt!1569590 () Unit!71637)

(assert (=> b!4357024 (= lt!1569590 (addForallContainsKeyThenBeforeAdding!61 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569578 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101)))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101))))))))))

(assert (=> b!4357024 call!302789))

(declare-fun lt!1569588 () Unit!71637)

(assert (=> b!4357024 (= lt!1569588 lt!1569590)))

(assert (=> b!4357024 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) lambda!140612)))

(declare-fun lt!1569587 () Unit!71637)

(declare-fun Unit!71710 () Unit!71637)

(assert (=> b!4357024 (= lt!1569587 Unit!71710)))

(declare-fun res!1790798 () Bool)

(assert (=> b!4357024 (= res!1790798 (forall!9124 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lambda!140612))))

(assert (=> b!4357024 (=> (not res!1790798) (not e!2711436))))

(assert (=> b!4357024 e!2711436))

(declare-fun lt!1569584 () Unit!71637)

(declare-fun Unit!71711 () Unit!71637)

(assert (=> b!4357024 (= lt!1569584 Unit!71711)))

(declare-fun bm!302785 () Bool)

(assert (=> bm!302785 (= call!302791 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (ite c!740783 lambda!140609 lambda!140612)))))

(declare-fun b!4357025 () Bool)

(assert (=> b!4357025 (= e!2711437 (invariantList!678 (toList!2966 lt!1569582)))))

(declare-fun bm!302786 () Bool)

(assert (=> bm!302786 (= call!302789 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (ite c!740783 lambda!140609 lambda!140612)))))

(declare-fun b!4357026 () Bool)

(declare-fun res!1790799 () Bool)

(assert (=> b!4357026 (=> (not res!1790799) (not e!2711437))))

(assert (=> b!4357026 (= res!1790799 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) lambda!140614))))

(assert (= (and d!1288049 c!740783) b!4357022))

(assert (= (and d!1288049 (not c!740783)) b!4357024))

(assert (= (and b!4357024 res!1790798) b!4357023))

(assert (= (or b!4357022 b!4357024) bm!302784))

(assert (= (or b!4357022 b!4357024) bm!302786))

(assert (= (or b!4357022 b!4357023) bm!302785))

(assert (= (and d!1288049 res!1790797) b!4357026))

(assert (= (and b!4357026 res!1790799) b!4357025))

(declare-fun m!4971361 () Bool)

(assert (=> b!4357024 m!4971361))

(declare-fun m!4971363 () Bool)

(assert (=> b!4357024 m!4971363))

(declare-fun m!4971365 () Bool)

(assert (=> b!4357024 m!4971365))

(declare-fun m!4971367 () Bool)

(assert (=> b!4357024 m!4971367))

(assert (=> b!4357024 m!4971361))

(declare-fun m!4971369 () Bool)

(assert (=> b!4357024 m!4971369))

(declare-fun m!4971371 () Bool)

(assert (=> b!4357024 m!4971371))

(declare-fun m!4971373 () Bool)

(assert (=> b!4357024 m!4971373))

(assert (=> b!4357024 m!4970959))

(declare-fun m!4971375 () Bool)

(assert (=> b!4357024 m!4971375))

(declare-fun m!4971377 () Bool)

(assert (=> b!4357024 m!4971377))

(declare-fun m!4971379 () Bool)

(assert (=> b!4357024 m!4971379))

(assert (=> b!4357024 m!4971379))

(assert (=> b!4357024 m!4970959))

(assert (=> b!4357024 m!4971371))

(declare-fun m!4971381 () Bool)

(assert (=> b!4357024 m!4971381))

(declare-fun m!4971383 () Bool)

(assert (=> b!4357026 m!4971383))

(declare-fun m!4971385 () Bool)

(assert (=> bm!302785 m!4971385))

(assert (=> bm!302786 m!4971385))

(declare-fun m!4971387 () Bool)

(assert (=> d!1288049 m!4971387))

(declare-fun m!4971389 () Bool)

(assert (=> d!1288049 m!4971389))

(declare-fun m!4971391 () Bool)

(assert (=> b!4357025 m!4971391))

(assert (=> bm!302784 m!4970959))

(declare-fun m!4971393 () Bool)

(assert (=> bm!302784 m!4971393))

(assert (=> b!4356815 d!1288049))

(declare-fun bs!631606 () Bool)

(declare-fun d!1288051 () Bool)

(assert (= bs!631606 (and d!1288051 d!1287937)))

(declare-fun lambda!140616 () Int)

(assert (=> bs!631606 (= lambda!140616 lambda!140537)))

(declare-fun bs!631607 () Bool)

(assert (= bs!631607 (and d!1288051 start!421644)))

(assert (=> bs!631607 (= lambda!140616 lambda!140479)))

(declare-fun bs!631608 () Bool)

(assert (= bs!631608 (and d!1288051 d!1287947)))

(assert (=> bs!631608 (= lambda!140616 lambda!140542)))

(declare-fun bs!631609 () Bool)

(assert (= bs!631609 (and d!1288051 d!1287983)))

(assert (=> bs!631609 (= lambda!140616 lambda!140587)))

(declare-fun bs!631610 () Bool)

(assert (= bs!631610 (and d!1288051 d!1287901)))

(assert (=> bs!631610 (= lambda!140616 lambda!140498)))

(declare-fun bs!631611 () Bool)

(assert (= bs!631611 (and d!1288051 d!1287945)))

(assert (=> bs!631611 (= lambda!140616 lambda!140541)))

(declare-fun bs!631612 () Bool)

(assert (= bs!631612 (and d!1288051 d!1287883)))

(assert (=> bs!631612 (not (= lambda!140616 lambda!140494))))

(declare-fun bs!631613 () Bool)

(assert (= bs!631613 (and d!1288051 d!1287981)))

(assert (=> bs!631613 (= lambda!140616 lambda!140586)))

(declare-fun lt!1569594 () ListMap!2209)

(assert (=> d!1288051 (invariantList!678 (toList!2966 lt!1569594))))

(declare-fun e!2711438 () ListMap!2209)

(assert (=> d!1288051 (= lt!1569594 e!2711438)))

(declare-fun c!740784 () Bool)

(assert (=> d!1288051 (= c!740784 ((_ is Cons!48936) (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))))))

(assert (=> d!1288051 (forall!9122 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))) lambda!140616)))

(assert (=> d!1288051 (= (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))) lt!1569594)))

(declare-fun b!4357027 () Bool)

(assert (=> b!4357027 (= e!2711438 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (extractMap!550 (t!355980 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101)))))))))

(declare-fun b!4357028 () Bool)

(assert (=> b!4357028 (= e!2711438 (ListMap!2210 Nil!48935))))

(assert (= (and d!1288051 c!740784) b!4357027))

(assert (= (and d!1288051 (not c!740784)) b!4357028))

(declare-fun m!4971395 () Bool)

(assert (=> d!1288051 m!4971395))

(declare-fun m!4971397 () Bool)

(assert (=> d!1288051 m!4971397))

(declare-fun m!4971399 () Bool)

(assert (=> b!4357027 m!4971399))

(assert (=> b!4357027 m!4971399))

(declare-fun m!4971401 () Bool)

(assert (=> b!4357027 m!4971401))

(assert (=> b!4356815 d!1288051))

(declare-fun b!4357029 () Bool)

(declare-fun e!2711442 () Bool)

(assert (=> b!4357029 (= e!2711442 (not (contains!11145 (keys!16530 lt!1569324) (_1!27461 lt!1569109))))))

(declare-fun b!4357030 () Bool)

(declare-fun e!2711444 () Bool)

(assert (=> b!4357030 (= e!2711444 (contains!11145 (keys!16530 lt!1569324) (_1!27461 lt!1569109)))))

(declare-fun b!4357031 () Bool)

(declare-fun e!2711443 () Unit!71637)

(declare-fun Unit!71721 () Unit!71637)

(assert (=> b!4357031 (= e!2711443 Unit!71721)))

(declare-fun b!4357032 () Bool)

(declare-fun e!2711441 () Unit!71637)

(declare-fun lt!1569596 () Unit!71637)

(assert (=> b!4357032 (= e!2711441 lt!1569596)))

(declare-fun lt!1569602 () Unit!71637)

(assert (=> b!4357032 (= lt!1569602 (lemmaContainsKeyImpliesGetValueByKeyDefined!365 (toList!2966 lt!1569324) (_1!27461 lt!1569109)))))

(assert (=> b!4357032 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569324) (_1!27461 lt!1569109)))))

(declare-fun lt!1569595 () Unit!71637)

(assert (=> b!4357032 (= lt!1569595 lt!1569602)))

(assert (=> b!4357032 (= lt!1569596 (lemmaInListThenGetKeysListContains!123 (toList!2966 lt!1569324) (_1!27461 lt!1569109)))))

(declare-fun call!302792 () Bool)

(assert (=> b!4357032 call!302792))

(declare-fun bm!302787 () Bool)

(declare-fun e!2711439 () List!49062)

(assert (=> bm!302787 (= call!302792 (contains!11145 e!2711439 (_1!27461 lt!1569109)))))

(declare-fun c!740786 () Bool)

(declare-fun c!740785 () Bool)

(assert (=> bm!302787 (= c!740786 c!740785)))

(declare-fun b!4357033 () Bool)

(assert (=> b!4357033 (= e!2711439 (keys!16530 lt!1569324))))

(declare-fun b!4357034 () Bool)

(assert (=> b!4357034 (= e!2711441 e!2711443)))

(declare-fun c!740787 () Bool)

(assert (=> b!4357034 (= c!740787 call!302792)))

(declare-fun d!1288053 () Bool)

(declare-fun e!2711440 () Bool)

(assert (=> d!1288053 e!2711440))

(declare-fun res!1790801 () Bool)

(assert (=> d!1288053 (=> res!1790801 e!2711440)))

(assert (=> d!1288053 (= res!1790801 e!2711442)))

(declare-fun res!1790802 () Bool)

(assert (=> d!1288053 (=> (not res!1790802) (not e!2711442))))

(declare-fun lt!1569600 () Bool)

(assert (=> d!1288053 (= res!1790802 (not lt!1569600))))

(declare-fun lt!1569597 () Bool)

(assert (=> d!1288053 (= lt!1569600 lt!1569597)))

(declare-fun lt!1569601 () Unit!71637)

(assert (=> d!1288053 (= lt!1569601 e!2711441)))

(assert (=> d!1288053 (= c!740785 lt!1569597)))

(assert (=> d!1288053 (= lt!1569597 (containsKey!695 (toList!2966 lt!1569324) (_1!27461 lt!1569109)))))

(assert (=> d!1288053 (= (contains!11142 lt!1569324 (_1!27461 lt!1569109)) lt!1569600)))

(declare-fun b!4357035 () Bool)

(assert (=> b!4357035 false))

(declare-fun lt!1569598 () Unit!71637)

(declare-fun lt!1569599 () Unit!71637)

(assert (=> b!4357035 (= lt!1569598 lt!1569599)))

(assert (=> b!4357035 (containsKey!695 (toList!2966 lt!1569324) (_1!27461 lt!1569109))))

(assert (=> b!4357035 (= lt!1569599 (lemmaInGetKeysListThenContainsKey!124 (toList!2966 lt!1569324) (_1!27461 lt!1569109)))))

(declare-fun Unit!71724 () Unit!71637)

(assert (=> b!4357035 (= e!2711443 Unit!71724)))

(declare-fun b!4357036 () Bool)

(assert (=> b!4357036 (= e!2711439 (getKeysList!126 (toList!2966 lt!1569324)))))

(declare-fun b!4357037 () Bool)

(assert (=> b!4357037 (= e!2711440 e!2711444)))

(declare-fun res!1790800 () Bool)

(assert (=> b!4357037 (=> (not res!1790800) (not e!2711444))))

(assert (=> b!4357037 (= res!1790800 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569324) (_1!27461 lt!1569109))))))

(assert (= (and d!1288053 c!740785) b!4357032))

(assert (= (and d!1288053 (not c!740785)) b!4357034))

(assert (= (and b!4357034 c!740787) b!4357035))

(assert (= (and b!4357034 (not c!740787)) b!4357031))

(assert (= (or b!4357032 b!4357034) bm!302787))

(assert (= (and bm!302787 c!740786) b!4357036))

(assert (= (and bm!302787 (not c!740786)) b!4357033))

(assert (= (and d!1288053 res!1790802) b!4357029))

(assert (= (and d!1288053 (not res!1790801)) b!4357037))

(assert (= (and b!4357037 res!1790800) b!4357030))

(declare-fun m!4971403 () Bool)

(assert (=> bm!302787 m!4971403))

(declare-fun m!4971405 () Bool)

(assert (=> d!1288053 m!4971405))

(declare-fun m!4971407 () Bool)

(assert (=> b!4357030 m!4971407))

(assert (=> b!4357030 m!4971407))

(declare-fun m!4971409 () Bool)

(assert (=> b!4357030 m!4971409))

(declare-fun m!4971411 () Bool)

(assert (=> b!4357032 m!4971411))

(assert (=> b!4357032 m!4970881))

(assert (=> b!4357032 m!4970881))

(declare-fun m!4971415 () Bool)

(assert (=> b!4357032 m!4971415))

(declare-fun m!4971417 () Bool)

(assert (=> b!4357032 m!4971417))

(declare-fun m!4971419 () Bool)

(assert (=> b!4357036 m!4971419))

(assert (=> b!4357029 m!4971407))

(assert (=> b!4357029 m!4971407))

(assert (=> b!4357029 m!4971409))

(assert (=> b!4357037 m!4970881))

(assert (=> b!4357037 m!4970881))

(assert (=> b!4357037 m!4971415))

(assert (=> b!4357033 m!4971407))

(assert (=> b!4357035 m!4971405))

(declare-fun m!4971425 () Bool)

(assert (=> b!4357035 m!4971425))

(assert (=> d!1287921 d!1288053))

(declare-fun b!4357041 () Bool)

(declare-fun e!2711446 () Option!10469)

(assert (=> b!4357041 (= e!2711446 None!10468)))

(declare-fun b!4357038 () Bool)

(declare-fun e!2711445 () Option!10469)

(assert (=> b!4357038 (= e!2711445 (Some!10468 (_2!27461 (h!54486 lt!1569325))))))

(declare-fun b!4357040 () Bool)

(assert (=> b!4357040 (= e!2711446 (getValueByKey!455 (t!355979 lt!1569325) (_1!27461 lt!1569109)))))

(declare-fun b!4357039 () Bool)

(assert (=> b!4357039 (= e!2711445 e!2711446)))

(declare-fun c!740789 () Bool)

(assert (=> b!4357039 (= c!740789 (and ((_ is Cons!48935) lt!1569325) (not (= (_1!27461 (h!54486 lt!1569325)) (_1!27461 lt!1569109)))))))

(declare-fun d!1288055 () Bool)

(declare-fun c!740788 () Bool)

(assert (=> d!1288055 (= c!740788 (and ((_ is Cons!48935) lt!1569325) (= (_1!27461 (h!54486 lt!1569325)) (_1!27461 lt!1569109))))))

(assert (=> d!1288055 (= (getValueByKey!455 lt!1569325 (_1!27461 lt!1569109)) e!2711445)))

(assert (= (and d!1288055 c!740788) b!4357038))

(assert (= (and d!1288055 (not c!740788)) b!4357039))

(assert (= (and b!4357039 c!740789) b!4357040))

(assert (= (and b!4357039 (not c!740789)) b!4357041))

(declare-fun m!4971433 () Bool)

(assert (=> b!4357040 m!4971433))

(assert (=> d!1287921 d!1288055))

(declare-fun d!1288057 () Bool)

(assert (=> d!1288057 (= (getValueByKey!455 lt!1569325 (_1!27461 lt!1569109)) (Some!10468 (_2!27461 lt!1569109)))))

(declare-fun lt!1569606 () Unit!71637)

(declare-fun choose!26921 (List!49059 K!10295 V!10541) Unit!71637)

(assert (=> d!1288057 (= lt!1569606 (choose!26921 lt!1569325 (_1!27461 lt!1569109) (_2!27461 lt!1569109)))))

(declare-fun e!2711450 () Bool)

(assert (=> d!1288057 e!2711450))

(declare-fun res!1790807 () Bool)

(assert (=> d!1288057 (=> (not res!1790807) (not e!2711450))))

(assert (=> d!1288057 (= res!1790807 (invariantList!678 lt!1569325))))

(assert (=> d!1288057 (= (lemmaContainsTupThenGetReturnValue!227 lt!1569325 (_1!27461 lt!1569109) (_2!27461 lt!1569109)) lt!1569606)))

(declare-fun b!4357048 () Bool)

(declare-fun res!1790808 () Bool)

(assert (=> b!4357048 (=> (not res!1790808) (not e!2711450))))

(assert (=> b!4357048 (= res!1790808 (containsKey!695 lt!1569325 (_1!27461 lt!1569109)))))

(declare-fun b!4357049 () Bool)

(assert (=> b!4357049 (= e!2711450 (contains!11146 lt!1569325 (tuple2!48335 (_1!27461 lt!1569109) (_2!27461 lt!1569109))))))

(assert (= (and d!1288057 res!1790807) b!4357048))

(assert (= (and b!4357048 res!1790808) b!4357049))

(assert (=> d!1288057 m!4970869))

(declare-fun m!4971469 () Bool)

(assert (=> d!1288057 m!4971469))

(declare-fun m!4971471 () Bool)

(assert (=> d!1288057 m!4971471))

(declare-fun m!4971473 () Bool)

(assert (=> b!4357048 m!4971473))

(declare-fun m!4971475 () Bool)

(assert (=> b!4357049 m!4971475))

(assert (=> d!1287921 d!1288057))

(declare-fun b!4357110 () Bool)

(declare-fun e!2711488 () Unit!71637)

(declare-fun Unit!71725 () Unit!71637)

(assert (=> b!4357110 (= e!2711488 Unit!71725)))

(declare-fun c!740804 () Bool)

(declare-fun call!302805 () List!49062)

(declare-fun lt!1569663 () List!49059)

(declare-fun bm!302799 () Bool)

(assert (=> bm!302799 (= call!302805 (getKeysList!126 (ite c!740804 (toList!2966 lt!1569103) lt!1569663)))))

(declare-fun b!4357111 () Bool)

(declare-fun lt!1569664 () List!49059)

(declare-fun e!2711486 () Bool)

(assert (=> b!4357111 (= e!2711486 (= (content!7722 (getKeysList!126 lt!1569664)) ((_ map or) (content!7722 (getKeysList!126 (toList!2966 lt!1569103))) (store ((as const (Array K!10295 Bool)) false) (_1!27461 lt!1569109) true))))))

(declare-fun b!4357112 () Bool)

(declare-fun res!1790843 () Bool)

(assert (=> b!4357112 (=> (not res!1790843) (not e!2711486))))

(assert (=> b!4357112 (= res!1790843 (contains!11146 lt!1569664 (tuple2!48335 (_1!27461 lt!1569109) (_2!27461 lt!1569109))))))

(declare-fun b!4357113 () Bool)

(declare-fun res!1790845 () Bool)

(assert (=> b!4357113 (=> (not res!1790845) (not e!2711486))))

(assert (=> b!4357113 (= res!1790845 (containsKey!695 lt!1569664 (_1!27461 lt!1569109)))))

(declare-fun b!4357114 () Bool)

(assert (=> b!4357114 false))

(declare-fun lt!1569665 () Unit!71637)

(declare-fun lt!1569660 () Unit!71637)

(assert (=> b!4357114 (= lt!1569665 lt!1569660)))

(assert (=> b!4357114 (containsKey!695 (t!355979 (toList!2966 lt!1569103)) (_1!27461 (h!54486 (toList!2966 lt!1569103))))))

(assert (=> b!4357114 (= lt!1569660 (lemmaInGetKeysListThenContainsKey!124 (t!355979 (toList!2966 lt!1569103)) (_1!27461 (h!54486 (toList!2966 lt!1569103)))))))

(declare-fun lt!1569666 () Unit!71637)

(declare-fun lt!1569662 () Unit!71637)

(assert (=> b!4357114 (= lt!1569666 lt!1569662)))

(assert (=> b!4357114 (contains!11145 call!302805 (_1!27461 (h!54486 (toList!2966 lt!1569103))))))

(assert (=> b!4357114 (= lt!1569662 (lemmaInListThenGetKeysListContains!123 lt!1569663 (_1!27461 (h!54486 (toList!2966 lt!1569103)))))))

(assert (=> b!4357114 (= lt!1569663 (insertNoDuplicatedKeys!101 (t!355979 (toList!2966 lt!1569103)) (_1!27461 lt!1569109) (_2!27461 lt!1569109)))))

(declare-fun Unit!71726 () Unit!71637)

(assert (=> b!4357114 (= e!2711488 Unit!71726)))

(declare-fun c!740803 () Bool)

(declare-fun e!2711489 () List!49059)

(declare-fun c!740806 () Bool)

(declare-fun call!302806 () List!49059)

(declare-fun bm!302800 () Bool)

(declare-fun $colon$colon!692 (List!49059 tuple2!48334) List!49059)

(assert (=> bm!302800 (= call!302806 ($colon$colon!692 (ite c!740804 (t!355979 (toList!2966 lt!1569103)) (ite c!740803 (toList!2966 lt!1569103) e!2711489)) (ite (or c!740804 c!740803) (tuple2!48335 (_1!27461 lt!1569109) (_2!27461 lt!1569109)) (ite c!740806 (h!54486 (toList!2966 lt!1569103)) (tuple2!48335 (_1!27461 lt!1569109) (_2!27461 lt!1569109))))))))

(declare-fun b!4357116 () Bool)

(declare-fun e!2711492 () List!49059)

(declare-fun lt!1569657 () List!49059)

(assert (=> b!4357116 (= e!2711492 lt!1569657)))

(declare-fun call!302807 () List!49059)

(assert (=> b!4357116 (= lt!1569657 call!302807)))

(declare-fun c!740807 () Bool)

(assert (=> b!4357116 (= c!740807 (containsKey!695 (insertNoDuplicatedKeys!101 (t!355979 (toList!2966 lt!1569103)) (_1!27461 lt!1569109) (_2!27461 lt!1569109)) (_1!27461 (h!54486 (toList!2966 lt!1569103)))))))

(declare-fun lt!1569661 () Unit!71637)

(assert (=> b!4357116 (= lt!1569661 e!2711488)))

(declare-fun bm!302801 () Bool)

(declare-fun call!302804 () List!49059)

(assert (=> bm!302801 (= call!302807 call!302804)))

(declare-fun c!740805 () Bool)

(assert (=> bm!302801 (= c!740805 c!740806)))

(declare-fun b!4357117 () Bool)

(assert (=> b!4357117 (= e!2711492 call!302807)))

(declare-fun b!4357118 () Bool)

(declare-fun e!2711487 () Bool)

(assert (=> b!4357118 (= e!2711487 (not (containsKey!695 (toList!2966 lt!1569103) (_1!27461 lt!1569109))))))

(declare-fun b!4357119 () Bool)

(declare-fun e!2711491 () List!49059)

(assert (=> b!4357119 (= e!2711491 call!302806)))

(declare-fun lt!1569658 () List!49062)

(assert (=> b!4357119 (= lt!1569658 call!302805)))

(declare-fun lt!1569667 () Unit!71637)

(declare-fun lemmaSubseqRefl!71 (List!49062) Unit!71637)

(assert (=> b!4357119 (= lt!1569667 (lemmaSubseqRefl!71 lt!1569658))))

(declare-fun subseq!587 (List!49062 List!49062) Bool)

(assert (=> b!4357119 (subseq!587 lt!1569658 lt!1569658)))

(declare-fun lt!1569659 () Unit!71637)

(assert (=> b!4357119 (= lt!1569659 lt!1569667)))

(declare-fun b!4357120 () Bool)

(assert (=> b!4357120 (= e!2711489 (insertNoDuplicatedKeys!101 (t!355979 (toList!2966 lt!1569103)) (_1!27461 lt!1569109) (_2!27461 lt!1569109)))))

(declare-fun b!4357121 () Bool)

(declare-fun e!2711490 () List!49059)

(assert (=> b!4357121 (= e!2711491 e!2711490)))

(declare-fun res!1790844 () Bool)

(assert (=> b!4357121 (= res!1790844 ((_ is Cons!48935) (toList!2966 lt!1569103)))))

(assert (=> b!4357121 (=> (not res!1790844) (not e!2711487))))

(assert (=> b!4357121 (= c!740803 e!2711487)))

(declare-fun d!1288065 () Bool)

(assert (=> d!1288065 e!2711486))

(declare-fun res!1790846 () Bool)

(assert (=> d!1288065 (=> (not res!1790846) (not e!2711486))))

(assert (=> d!1288065 (= res!1790846 (invariantList!678 lt!1569664))))

(assert (=> d!1288065 (= lt!1569664 e!2711491)))

(assert (=> d!1288065 (= c!740804 (and ((_ is Cons!48935) (toList!2966 lt!1569103)) (= (_1!27461 (h!54486 (toList!2966 lt!1569103))) (_1!27461 lt!1569109))))))

(assert (=> d!1288065 (invariantList!678 (toList!2966 lt!1569103))))

(assert (=> d!1288065 (= (insertNoDuplicatedKeys!101 (toList!2966 lt!1569103) (_1!27461 lt!1569109) (_2!27461 lt!1569109)) lt!1569664)))

(declare-fun b!4357115 () Bool)

(assert (=> b!4357115 (= e!2711490 call!302804)))

(declare-fun b!4357122 () Bool)

(assert (=> b!4357122 (= c!740806 ((_ is Cons!48935) (toList!2966 lt!1569103)))))

(assert (=> b!4357122 (= e!2711490 e!2711492)))

(declare-fun b!4357123 () Bool)

(assert (=> b!4357123 (= e!2711489 Nil!48935)))

(declare-fun bm!302802 () Bool)

(assert (=> bm!302802 (= call!302804 call!302806)))

(assert (= (and d!1288065 c!740804) b!4357119))

(assert (= (and d!1288065 (not c!740804)) b!4357121))

(assert (= (and b!4357121 res!1790844) b!4357118))

(assert (= (and b!4357121 c!740803) b!4357115))

(assert (= (and b!4357121 (not c!740803)) b!4357122))

(assert (= (and b!4357122 c!740806) b!4357116))

(assert (= (and b!4357122 (not c!740806)) b!4357117))

(assert (= (and b!4357116 c!740807) b!4357114))

(assert (= (and b!4357116 (not c!740807)) b!4357110))

(assert (= (or b!4357116 b!4357117) bm!302801))

(assert (= (and bm!302801 c!740805) b!4357120))

(assert (= (and bm!302801 (not c!740805)) b!4357123))

(assert (= (or b!4357115 bm!302801) bm!302802))

(assert (= (or b!4357119 b!4357114) bm!302799))

(assert (= (or b!4357119 bm!302802) bm!302800))

(assert (= (and d!1288065 res!1790846) b!4357113))

(assert (= (and b!4357113 res!1790845) b!4357112))

(assert (= (and b!4357112 res!1790843) b!4357111))

(declare-fun m!4971555 () Bool)

(assert (=> b!4357119 m!4971555))

(declare-fun m!4971557 () Bool)

(assert (=> b!4357119 m!4971557))

(declare-fun m!4971559 () Bool)

(assert (=> bm!302800 m!4971559))

(declare-fun m!4971561 () Bool)

(assert (=> b!4357116 m!4971561))

(assert (=> b!4357116 m!4971561))

(declare-fun m!4971563 () Bool)

(assert (=> b!4357116 m!4971563))

(declare-fun m!4971565 () Bool)

(assert (=> b!4357111 m!4971565))

(declare-fun m!4971567 () Bool)

(assert (=> b!4357111 m!4971567))

(assert (=> b!4357111 m!4970949))

(declare-fun m!4971569 () Bool)

(assert (=> b!4357111 m!4971569))

(declare-fun m!4971571 () Bool)

(assert (=> b!4357111 m!4971571))

(assert (=> b!4357111 m!4970949))

(assert (=> b!4357111 m!4971565))

(declare-fun m!4971573 () Bool)

(assert (=> d!1288065 m!4971573))

(assert (=> d!1288065 m!4971345))

(declare-fun m!4971575 () Bool)

(assert (=> b!4357118 m!4971575))

(assert (=> b!4357120 m!4971561))

(declare-fun m!4971577 () Bool)

(assert (=> b!4357113 m!4971577))

(assert (=> b!4357114 m!4971321))

(assert (=> b!4357114 m!4971561))

(declare-fun m!4971579 () Bool)

(assert (=> b!4357114 m!4971579))

(declare-fun m!4971581 () Bool)

(assert (=> b!4357114 m!4971581))

(declare-fun m!4971583 () Bool)

(assert (=> b!4357114 m!4971583))

(declare-fun m!4971585 () Bool)

(assert (=> bm!302799 m!4971585))

(declare-fun m!4971587 () Bool)

(assert (=> b!4357112 m!4971587))

(assert (=> d!1287921 d!1288065))

(declare-fun d!1288083 () Bool)

(assert (=> d!1288083 (= (get!15896 (getValueByKey!454 (toList!2965 lm!1707) hash!377)) (v!43343 (getValueByKey!454 (toList!2965 lm!1707) hash!377)))))

(assert (=> d!1287849 d!1288083))

(declare-fun d!1288085 () Bool)

(declare-fun c!740815 () Bool)

(assert (=> d!1288085 (= c!740815 (and ((_ is Cons!48936) (toList!2965 lm!1707)) (= (_1!27462 (h!54487 (toList!2965 lm!1707))) hash!377)))))

(declare-fun e!2711505 () Option!10468)

(assert (=> d!1288085 (= (getValueByKey!454 (toList!2965 lm!1707) hash!377) e!2711505)))

(declare-fun b!4357145 () Bool)

(declare-fun e!2711506 () Option!10468)

(assert (=> b!4357145 (= e!2711506 (getValueByKey!454 (t!355980 (toList!2965 lm!1707)) hash!377))))

(declare-fun b!4357144 () Bool)

(assert (=> b!4357144 (= e!2711505 e!2711506)))

(declare-fun c!740816 () Bool)

(assert (=> b!4357144 (= c!740816 (and ((_ is Cons!48936) (toList!2965 lm!1707)) (not (= (_1!27462 (h!54487 (toList!2965 lm!1707))) hash!377))))))

(declare-fun b!4357143 () Bool)

(assert (=> b!4357143 (= e!2711505 (Some!10467 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(declare-fun b!4357146 () Bool)

(assert (=> b!4357146 (= e!2711506 None!10467)))

(assert (= (and d!1288085 c!740815) b!4357143))

(assert (= (and d!1288085 (not c!740815)) b!4357144))

(assert (= (and b!4357144 c!740816) b!4357145))

(assert (= (and b!4357144 (not c!740816)) b!4357146))

(declare-fun m!4971609 () Bool)

(assert (=> b!4357145 m!4971609))

(assert (=> d!1287849 d!1288085))

(declare-fun d!1288089 () Bool)

(declare-fun res!1790852 () Bool)

(declare-fun e!2711507 () Bool)

(assert (=> d!1288089 (=> res!1790852 e!2711507)))

(assert (=> d!1288089 (= res!1790852 ((_ is Nil!48935) (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(assert (=> d!1288089 (= (forall!9124 (_2!27462 (h!54487 (toList!2965 lm!1707))) lambda!140579) e!2711507)))

(declare-fun b!4357147 () Bool)

(declare-fun e!2711508 () Bool)

(assert (=> b!4357147 (= e!2711507 e!2711508)))

(declare-fun res!1790853 () Bool)

(assert (=> b!4357147 (=> (not res!1790853) (not e!2711508))))

(assert (=> b!4357147 (= res!1790853 (dynLambda!20636 lambda!140579 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun b!4357148 () Bool)

(assert (=> b!4357148 (= e!2711508 (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lambda!140579))))

(assert (= (and d!1288089 (not res!1790852)) b!4357147))

(assert (= (and b!4357147 res!1790853) b!4357148))

(declare-fun b_lambda!131229 () Bool)

(assert (=> (not b_lambda!131229) (not b!4357147)))

(declare-fun m!4971611 () Bool)

(assert (=> b!4357147 m!4971611))

(declare-fun m!4971613 () Bool)

(assert (=> b!4357148 m!4971613))

(assert (=> d!1287949 d!1288089))

(declare-fun d!1288091 () Bool)

(declare-fun res!1790854 () Bool)

(declare-fun e!2711509 () Bool)

(assert (=> d!1288091 (=> res!1790854 e!2711509)))

(assert (=> d!1288091 (= res!1790854 (not ((_ is Cons!48935) (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> d!1288091 (= (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 lm!1707)))) e!2711509)))

(declare-fun b!4357149 () Bool)

(declare-fun e!2711510 () Bool)

(assert (=> b!4357149 (= e!2711509 e!2711510)))

(declare-fun res!1790855 () Bool)

(assert (=> b!4357149 (=> (not res!1790855) (not e!2711510))))

(assert (=> b!4357149 (= res!1790855 (not (containsKey!692 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(declare-fun b!4357150 () Bool)

(assert (=> b!4357150 (= e!2711510 (noDuplicateKeys!491 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (= (and d!1288091 (not res!1790854)) b!4357149))

(assert (= (and b!4357149 res!1790855) b!4357150))

(declare-fun m!4971615 () Bool)

(assert (=> b!4357149 m!4971615))

(declare-fun m!4971617 () Bool)

(assert (=> b!4357150 m!4971617))

(assert (=> d!1287949 d!1288091))

(declare-fun d!1288093 () Bool)

(declare-fun res!1790856 () Bool)

(declare-fun e!2711511 () Bool)

(assert (=> d!1288093 (=> res!1790856 e!2711511)))

(assert (=> d!1288093 (= res!1790856 (and ((_ is Cons!48935) (t!355979 newBucket!200)) (= (_1!27461 (h!54486 (t!355979 newBucket!200))) (_1!27461 (h!54486 newBucket!200)))))))

(assert (=> d!1288093 (= (containsKey!692 (t!355979 newBucket!200) (_1!27461 (h!54486 newBucket!200))) e!2711511)))

(declare-fun b!4357151 () Bool)

(declare-fun e!2711512 () Bool)

(assert (=> b!4357151 (= e!2711511 e!2711512)))

(declare-fun res!1790857 () Bool)

(assert (=> b!4357151 (=> (not res!1790857) (not e!2711512))))

(assert (=> b!4357151 (= res!1790857 ((_ is Cons!48935) (t!355979 newBucket!200)))))

(declare-fun b!4357152 () Bool)

(assert (=> b!4357152 (= e!2711512 (containsKey!692 (t!355979 (t!355979 newBucket!200)) (_1!27461 (h!54486 newBucket!200))))))

(assert (= (and d!1288093 (not res!1790856)) b!4357151))

(assert (= (and b!4357151 res!1790857) b!4357152))

(declare-fun m!4971619 () Bool)

(assert (=> b!4357152 m!4971619))

(assert (=> b!4356622 d!1288093))

(declare-fun d!1288095 () Bool)

(assert (=> d!1288095 (= (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569110) key!3918)) (not (isEmpty!28204 (getValueByKey!455 (toList!2966 lt!1569110) key!3918))))))

(declare-fun bs!631666 () Bool)

(assert (= bs!631666 d!1288095))

(assert (=> bs!631666 m!4970819))

(declare-fun m!4971621 () Bool)

(assert (=> bs!631666 m!4971621))

(assert (=> b!4356752 d!1288095))

(declare-fun b!4357156 () Bool)

(declare-fun e!2711514 () Option!10469)

(assert (=> b!4357156 (= e!2711514 None!10468)))

(declare-fun b!4357153 () Bool)

(declare-fun e!2711513 () Option!10469)

(assert (=> b!4357153 (= e!2711513 (Some!10468 (_2!27461 (h!54486 (toList!2966 lt!1569110)))))))

(declare-fun b!4357155 () Bool)

(assert (=> b!4357155 (= e!2711514 (getValueByKey!455 (t!355979 (toList!2966 lt!1569110)) key!3918))))

(declare-fun b!4357154 () Bool)

(assert (=> b!4357154 (= e!2711513 e!2711514)))

(declare-fun c!740818 () Bool)

(assert (=> b!4357154 (= c!740818 (and ((_ is Cons!48935) (toList!2966 lt!1569110)) (not (= (_1!27461 (h!54486 (toList!2966 lt!1569110))) key!3918))))))

(declare-fun d!1288097 () Bool)

(declare-fun c!740817 () Bool)

(assert (=> d!1288097 (= c!740817 (and ((_ is Cons!48935) (toList!2966 lt!1569110)) (= (_1!27461 (h!54486 (toList!2966 lt!1569110))) key!3918)))))

(assert (=> d!1288097 (= (getValueByKey!455 (toList!2966 lt!1569110) key!3918) e!2711513)))

(assert (= (and d!1288097 c!740817) b!4357153))

(assert (= (and d!1288097 (not c!740817)) b!4357154))

(assert (= (and b!4357154 c!740818) b!4357155))

(assert (= (and b!4357154 (not c!740818)) b!4357156))

(declare-fun m!4971623 () Bool)

(assert (=> b!4357155 m!4971623))

(assert (=> b!4356752 d!1288097))

(declare-fun d!1288099 () Bool)

(declare-fun res!1790858 () Bool)

(declare-fun e!2711515 () Bool)

(assert (=> d!1288099 (=> res!1790858 e!2711515)))

(assert (=> d!1288099 (= res!1790858 (and ((_ is Cons!48935) (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (= (_1!27461 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) key!3918)))))

(assert (=> d!1288099 (= (containsKey!692 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) key!3918) e!2711515)))

(declare-fun b!4357157 () Bool)

(declare-fun e!2711516 () Bool)

(assert (=> b!4357157 (= e!2711515 e!2711516)))

(declare-fun res!1790859 () Bool)

(assert (=> b!4357157 (=> (not res!1790859) (not e!2711516))))

(assert (=> b!4357157 (= res!1790859 ((_ is Cons!48935) (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun b!4357158 () Bool)

(assert (=> b!4357158 (= e!2711516 (containsKey!692 (t!355979 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))) key!3918))))

(assert (= (and d!1288099 (not res!1790858)) b!4357157))

(assert (= (and b!4357157 res!1790859) b!4357158))

(declare-fun m!4971625 () Bool)

(assert (=> b!4357158 m!4971625))

(assert (=> b!4356629 d!1288099))

(declare-fun d!1288101 () Bool)

(declare-fun c!740821 () Bool)

(assert (=> d!1288101 (= c!740821 ((_ is Nil!48935) (toList!2966 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) lt!1569106))))))

(declare-fun e!2711519 () (InoxSet tuple2!48334))

(assert (=> d!1288101 (= (content!7721 (toList!2966 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) lt!1569106))) e!2711519)))

(declare-fun b!4357164 () Bool)

(assert (=> b!4357164 (= e!2711519 ((as const (Array tuple2!48334 Bool)) false))))

(declare-fun b!4357165 () Bool)

(assert (=> b!4357165 (= e!2711519 ((_ map or) (store ((as const (Array tuple2!48334 Bool)) false) (h!54486 (toList!2966 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) lt!1569106))) true) (content!7721 (t!355979 (toList!2966 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) lt!1569106))))))))

(assert (= (and d!1288101 c!740821) b!4357164))

(assert (= (and d!1288101 (not c!740821)) b!4357165))

(declare-fun m!4971627 () Bool)

(assert (=> b!4357165 m!4971627))

(declare-fun m!4971629 () Bool)

(assert (=> b!4357165 m!4971629))

(assert (=> d!1287913 d!1288101))

(declare-fun d!1288103 () Bool)

(declare-fun c!740822 () Bool)

(assert (=> d!1288103 (= c!740822 ((_ is Nil!48935) (toList!2966 (+!640 lt!1569100 lt!1569109))))))

(declare-fun e!2711520 () (InoxSet tuple2!48334))

(assert (=> d!1288103 (= (content!7721 (toList!2966 (+!640 lt!1569100 lt!1569109))) e!2711520)))

(declare-fun b!4357166 () Bool)

(assert (=> b!4357166 (= e!2711520 ((as const (Array tuple2!48334 Bool)) false))))

(declare-fun b!4357167 () Bool)

(assert (=> b!4357167 (= e!2711520 ((_ map or) (store ((as const (Array tuple2!48334 Bool)) false) (h!54486 (toList!2966 (+!640 lt!1569100 lt!1569109))) true) (content!7721 (t!355979 (toList!2966 (+!640 lt!1569100 lt!1569109))))))))

(assert (= (and d!1288103 c!740822) b!4357166))

(assert (= (and d!1288103 (not c!740822)) b!4357167))

(declare-fun m!4971631 () Bool)

(assert (=> b!4357167 m!4971631))

(declare-fun m!4971633 () Bool)

(assert (=> b!4357167 m!4971633))

(assert (=> d!1287913 d!1288103))

(declare-fun d!1288105 () Bool)

(declare-fun res!1790864 () Bool)

(declare-fun e!2711525 () Bool)

(assert (=> d!1288105 (=> res!1790864 e!2711525)))

(assert (=> d!1288105 (= res!1790864 (and ((_ is Cons!48935) (toList!2966 lt!1569103)) (= (_1!27461 (h!54486 (toList!2966 lt!1569103))) key!3918)))))

(assert (=> d!1288105 (= (containsKey!695 (toList!2966 lt!1569103) key!3918) e!2711525)))

(declare-fun b!4357172 () Bool)

(declare-fun e!2711526 () Bool)

(assert (=> b!4357172 (= e!2711525 e!2711526)))

(declare-fun res!1790865 () Bool)

(assert (=> b!4357172 (=> (not res!1790865) (not e!2711526))))

(assert (=> b!4357172 (= res!1790865 ((_ is Cons!48935) (toList!2966 lt!1569103)))))

(declare-fun b!4357173 () Bool)

(assert (=> b!4357173 (= e!2711526 (containsKey!695 (t!355979 (toList!2966 lt!1569103)) key!3918))))

(assert (= (and d!1288105 (not res!1790864)) b!4357172))

(assert (= (and b!4357172 res!1790865) b!4357173))

(declare-fun m!4971635 () Bool)

(assert (=> b!4357173 m!4971635))

(assert (=> d!1287931 d!1288105))

(declare-fun d!1288107 () Bool)

(declare-fun lt!1569679 () Bool)

(assert (=> d!1288107 (= lt!1569679 (select (content!7720 (toList!2965 lt!1569503)) lt!1569101))))

(declare-fun e!2711528 () Bool)

(assert (=> d!1288107 (= lt!1569679 e!2711528)))

(declare-fun res!1790866 () Bool)

(assert (=> d!1288107 (=> (not res!1790866) (not e!2711528))))

(assert (=> d!1288107 (= res!1790866 ((_ is Cons!48936) (toList!2965 lt!1569503)))))

(assert (=> d!1288107 (= (contains!11141 (toList!2965 lt!1569503) lt!1569101) lt!1569679)))

(declare-fun b!4357174 () Bool)

(declare-fun e!2711527 () Bool)

(assert (=> b!4357174 (= e!2711528 e!2711527)))

(declare-fun res!1790867 () Bool)

(assert (=> b!4357174 (=> res!1790867 e!2711527)))

(assert (=> b!4357174 (= res!1790867 (= (h!54487 (toList!2965 lt!1569503)) lt!1569101))))

(declare-fun b!4357175 () Bool)

(assert (=> b!4357175 (= e!2711527 (contains!11141 (t!355980 (toList!2965 lt!1569503)) lt!1569101))))

(assert (= (and d!1288107 res!1790866) b!4357174))

(assert (= (and b!4357174 (not res!1790867)) b!4357175))

(declare-fun m!4971637 () Bool)

(assert (=> d!1288107 m!4971637))

(declare-fun m!4971639 () Bool)

(assert (=> d!1288107 m!4971639))

(declare-fun m!4971641 () Bool)

(assert (=> b!4357175 m!4971641))

(assert (=> b!4356888 d!1288107))

(declare-fun d!1288109 () Bool)

(declare-fun lt!1569690 () Bool)

(assert (=> d!1288109 (= lt!1569690 (select (content!7722 (keys!16530 lt!1569110)) key!3918))))

(declare-fun e!2711539 () Bool)

(assert (=> d!1288109 (= lt!1569690 e!2711539)))

(declare-fun res!1790875 () Bool)

(assert (=> d!1288109 (=> (not res!1790875) (not e!2711539))))

(assert (=> d!1288109 (= res!1790875 ((_ is Cons!48938) (keys!16530 lt!1569110)))))

(assert (=> d!1288109 (= (contains!11145 (keys!16530 lt!1569110) key!3918) lt!1569690)))

(declare-fun b!4357189 () Bool)

(declare-fun e!2711540 () Bool)

(assert (=> b!4357189 (= e!2711539 e!2711540)))

(declare-fun res!1790876 () Bool)

(assert (=> b!4357189 (=> res!1790876 e!2711540)))

(assert (=> b!4357189 (= res!1790876 (= (h!54491 (keys!16530 lt!1569110)) key!3918))))

(declare-fun b!4357190 () Bool)

(assert (=> b!4357190 (= e!2711540 (contains!11145 (t!355982 (keys!16530 lt!1569110)) key!3918))))

(assert (= (and d!1288109 res!1790875) b!4357189))

(assert (= (and b!4357189 (not res!1790876)) b!4357190))

(assert (=> d!1288109 m!4970813))

(declare-fun m!4971655 () Bool)

(assert (=> d!1288109 m!4971655))

(declare-fun m!4971659 () Bool)

(assert (=> d!1288109 m!4971659))

(declare-fun m!4971663 () Bool)

(assert (=> b!4357190 m!4971663))

(assert (=> b!4356744 d!1288109))

(assert (=> b!4356744 d!1287999))

(declare-fun d!1288113 () Bool)

(assert (=> d!1288113 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569103) key!3918))))

(declare-fun lt!1569693 () Unit!71637)

(declare-fun choose!26922 (List!49059 K!10295) Unit!71637)

(assert (=> d!1288113 (= lt!1569693 (choose!26922 (toList!2966 lt!1569103) key!3918))))

(assert (=> d!1288113 (invariantList!678 (toList!2966 lt!1569103))))

(assert (=> d!1288113 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!365 (toList!2966 lt!1569103) key!3918) lt!1569693)))

(declare-fun bs!631681 () Bool)

(assert (= bs!631681 d!1288113))

(assert (=> bs!631681 m!4970943))

(assert (=> bs!631681 m!4970943))

(assert (=> bs!631681 m!4970945))

(declare-fun m!4971687 () Bool)

(assert (=> bs!631681 m!4971687))

(assert (=> bs!631681 m!4971345))

(assert (=> b!4356804 d!1288113))

(declare-fun d!1288123 () Bool)

(assert (=> d!1288123 (= (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569103) key!3918)) (not (isEmpty!28204 (getValueByKey!455 (toList!2966 lt!1569103) key!3918))))))

(declare-fun bs!631682 () Bool)

(assert (= bs!631682 d!1288123))

(assert (=> bs!631682 m!4970943))

(declare-fun m!4971689 () Bool)

(assert (=> bs!631682 m!4971689))

(assert (=> b!4356804 d!1288123))

(declare-fun b!4357200 () Bool)

(declare-fun e!2711548 () Option!10469)

(assert (=> b!4357200 (= e!2711548 None!10468)))

(declare-fun b!4357197 () Bool)

(declare-fun e!2711547 () Option!10469)

(assert (=> b!4357197 (= e!2711547 (Some!10468 (_2!27461 (h!54486 (toList!2966 lt!1569103)))))))

(declare-fun b!4357199 () Bool)

(assert (=> b!4357199 (= e!2711548 (getValueByKey!455 (t!355979 (toList!2966 lt!1569103)) key!3918))))

(declare-fun b!4357198 () Bool)

(assert (=> b!4357198 (= e!2711547 e!2711548)))

(declare-fun c!740827 () Bool)

(assert (=> b!4357198 (= c!740827 (and ((_ is Cons!48935) (toList!2966 lt!1569103)) (not (= (_1!27461 (h!54486 (toList!2966 lt!1569103))) key!3918))))))

(declare-fun d!1288125 () Bool)

(declare-fun c!740826 () Bool)

(assert (=> d!1288125 (= c!740826 (and ((_ is Cons!48935) (toList!2966 lt!1569103)) (= (_1!27461 (h!54486 (toList!2966 lt!1569103))) key!3918)))))

(assert (=> d!1288125 (= (getValueByKey!455 (toList!2966 lt!1569103) key!3918) e!2711547)))

(assert (= (and d!1288125 c!740826) b!4357197))

(assert (= (and d!1288125 (not c!740826)) b!4357198))

(assert (= (and b!4357198 c!740827) b!4357199))

(assert (= (and b!4357198 (not c!740827)) b!4357200))

(declare-fun m!4971691 () Bool)

(assert (=> b!4357199 m!4971691))

(assert (=> b!4356804 d!1288125))

(declare-fun d!1288127 () Bool)

(assert (=> d!1288127 (contains!11145 (getKeysList!126 (toList!2966 lt!1569103)) key!3918)))

(declare-fun lt!1569720 () Unit!71637)

(declare-fun choose!26923 (List!49059 K!10295) Unit!71637)

(assert (=> d!1288127 (= lt!1569720 (choose!26923 (toList!2966 lt!1569103) key!3918))))

(assert (=> d!1288127 (invariantList!678 (toList!2966 lt!1569103))))

(assert (=> d!1288127 (= (lemmaInListThenGetKeysListContains!123 (toList!2966 lt!1569103) key!3918) lt!1569720)))

(declare-fun bs!631688 () Bool)

(assert (= bs!631688 d!1288127))

(assert (=> bs!631688 m!4970949))

(assert (=> bs!631688 m!4970949))

(declare-fun m!4971701 () Bool)

(assert (=> bs!631688 m!4971701))

(declare-fun m!4971703 () Bool)

(assert (=> bs!631688 m!4971703))

(assert (=> bs!631688 m!4971345))

(assert (=> b!4356804 d!1288127))

(declare-fun d!1288133 () Bool)

(assert (=> d!1288133 (= (invariantList!678 (toList!2966 lt!1569453)) (noDuplicatedKeys!119 (toList!2966 lt!1569453)))))

(declare-fun bs!631692 () Bool)

(assert (= bs!631692 d!1288133))

(declare-fun m!4971705 () Bool)

(assert (=> bs!631692 m!4971705))

(assert (=> b!4356865 d!1288133))

(declare-fun d!1288135 () Bool)

(declare-fun choose!26924 (Hashable!4883 K!10295) (_ BitVec 64))

(assert (=> d!1288135 (= (hash!1565 hashF!1247 key!3918) (choose!26924 hashF!1247 key!3918))))

(declare-fun bs!631699 () Bool)

(assert (= bs!631699 d!1288135))

(declare-fun m!4971707 () Bool)

(assert (=> bs!631699 m!4971707))

(assert (=> d!1287847 d!1288135))

(declare-fun b!4357211 () Bool)

(declare-fun e!2711560 () Bool)

(assert (=> b!4357211 (= e!2711560 (not (contains!11145 (keys!16530 lt!1569328) (_1!27461 lt!1569109))))))

(declare-fun b!4357212 () Bool)

(declare-fun e!2711562 () Bool)

(assert (=> b!4357212 (= e!2711562 (contains!11145 (keys!16530 lt!1569328) (_1!27461 lt!1569109)))))

(declare-fun b!4357213 () Bool)

(declare-fun e!2711561 () Unit!71637)

(declare-fun Unit!71738 () Unit!71637)

(assert (=> b!4357213 (= e!2711561 Unit!71738)))

(declare-fun b!4357214 () Bool)

(declare-fun e!2711559 () Unit!71637)

(declare-fun lt!1569722 () Unit!71637)

(assert (=> b!4357214 (= e!2711559 lt!1569722)))

(declare-fun lt!1569728 () Unit!71637)

(assert (=> b!4357214 (= lt!1569728 (lemmaContainsKeyImpliesGetValueByKeyDefined!365 (toList!2966 lt!1569328) (_1!27461 lt!1569109)))))

(assert (=> b!4357214 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569328) (_1!27461 lt!1569109)))))

(declare-fun lt!1569721 () Unit!71637)

(assert (=> b!4357214 (= lt!1569721 lt!1569728)))

(assert (=> b!4357214 (= lt!1569722 (lemmaInListThenGetKeysListContains!123 (toList!2966 lt!1569328) (_1!27461 lt!1569109)))))

(declare-fun call!302813 () Bool)

(assert (=> b!4357214 call!302813))

(declare-fun bm!302808 () Bool)

(declare-fun e!2711557 () List!49062)

(assert (=> bm!302808 (= call!302813 (contains!11145 e!2711557 (_1!27461 lt!1569109)))))

(declare-fun c!740830 () Bool)

(declare-fun c!740829 () Bool)

(assert (=> bm!302808 (= c!740830 c!740829)))

(declare-fun b!4357215 () Bool)

(assert (=> b!4357215 (= e!2711557 (keys!16530 lt!1569328))))

(declare-fun b!4357216 () Bool)

(assert (=> b!4357216 (= e!2711559 e!2711561)))

(declare-fun c!740831 () Bool)

(assert (=> b!4357216 (= c!740831 call!302813)))

(declare-fun d!1288137 () Bool)

(declare-fun e!2711558 () Bool)

(assert (=> d!1288137 e!2711558))

(declare-fun res!1790892 () Bool)

(assert (=> d!1288137 (=> res!1790892 e!2711558)))

(assert (=> d!1288137 (= res!1790892 e!2711560)))

(declare-fun res!1790893 () Bool)

(assert (=> d!1288137 (=> (not res!1790893) (not e!2711560))))

(declare-fun lt!1569726 () Bool)

(assert (=> d!1288137 (= res!1790893 (not lt!1569726))))

(declare-fun lt!1569723 () Bool)

(assert (=> d!1288137 (= lt!1569726 lt!1569723)))

(declare-fun lt!1569727 () Unit!71637)

(assert (=> d!1288137 (= lt!1569727 e!2711559)))

(assert (=> d!1288137 (= c!740829 lt!1569723)))

(assert (=> d!1288137 (= lt!1569723 (containsKey!695 (toList!2966 lt!1569328) (_1!27461 lt!1569109)))))

(assert (=> d!1288137 (= (contains!11142 lt!1569328 (_1!27461 lt!1569109)) lt!1569726)))

(declare-fun b!4357217 () Bool)

(assert (=> b!4357217 false))

(declare-fun lt!1569724 () Unit!71637)

(declare-fun lt!1569725 () Unit!71637)

(assert (=> b!4357217 (= lt!1569724 lt!1569725)))

(assert (=> b!4357217 (containsKey!695 (toList!2966 lt!1569328) (_1!27461 lt!1569109))))

(assert (=> b!4357217 (= lt!1569725 (lemmaInGetKeysListThenContainsKey!124 (toList!2966 lt!1569328) (_1!27461 lt!1569109)))))

(declare-fun Unit!71739 () Unit!71637)

(assert (=> b!4357217 (= e!2711561 Unit!71739)))

(declare-fun b!4357218 () Bool)

(assert (=> b!4357218 (= e!2711557 (getKeysList!126 (toList!2966 lt!1569328)))))

(declare-fun b!4357219 () Bool)

(assert (=> b!4357219 (= e!2711558 e!2711562)))

(declare-fun res!1790891 () Bool)

(assert (=> b!4357219 (=> (not res!1790891) (not e!2711562))))

(assert (=> b!4357219 (= res!1790891 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569328) (_1!27461 lt!1569109))))))

(assert (= (and d!1288137 c!740829) b!4357214))

(assert (= (and d!1288137 (not c!740829)) b!4357216))

(assert (= (and b!4357216 c!740831) b!4357217))

(assert (= (and b!4357216 (not c!740831)) b!4357213))

(assert (= (or b!4357214 b!4357216) bm!302808))

(assert (= (and bm!302808 c!740830) b!4357218))

(assert (= (and bm!302808 (not c!740830)) b!4357215))

(assert (= (and d!1288137 res!1790893) b!4357211))

(assert (= (and d!1288137 (not res!1790892)) b!4357219))

(assert (= (and b!4357219 res!1790891) b!4357212))

(declare-fun m!4971709 () Bool)

(assert (=> bm!302808 m!4971709))

(declare-fun m!4971711 () Bool)

(assert (=> d!1288137 m!4971711))

(declare-fun m!4971713 () Bool)

(assert (=> b!4357212 m!4971713))

(assert (=> b!4357212 m!4971713))

(declare-fun m!4971715 () Bool)

(assert (=> b!4357212 m!4971715))

(declare-fun m!4971717 () Bool)

(assert (=> b!4357214 m!4971717))

(assert (=> b!4357214 m!4970919))

(assert (=> b!4357214 m!4970919))

(declare-fun m!4971719 () Bool)

(assert (=> b!4357214 m!4971719))

(declare-fun m!4971721 () Bool)

(assert (=> b!4357214 m!4971721))

(declare-fun m!4971723 () Bool)

(assert (=> b!4357218 m!4971723))

(assert (=> b!4357211 m!4971713))

(assert (=> b!4357211 m!4971713))

(assert (=> b!4357211 m!4971715))

(assert (=> b!4357219 m!4970919))

(assert (=> b!4357219 m!4970919))

(assert (=> b!4357219 m!4971719))

(assert (=> b!4357215 m!4971713))

(assert (=> b!4357217 m!4971711))

(declare-fun m!4971725 () Bool)

(assert (=> b!4357217 m!4971725))

(assert (=> d!1287923 d!1288137))

(declare-fun b!4357223 () Bool)

(declare-fun e!2711564 () Option!10469)

(assert (=> b!4357223 (= e!2711564 None!10468)))

(declare-fun b!4357220 () Bool)

(declare-fun e!2711563 () Option!10469)

(assert (=> b!4357220 (= e!2711563 (Some!10468 (_2!27461 (h!54486 lt!1569329))))))

(declare-fun b!4357222 () Bool)

(assert (=> b!4357222 (= e!2711564 (getValueByKey!455 (t!355979 lt!1569329) (_1!27461 lt!1569109)))))

(declare-fun b!4357221 () Bool)

(assert (=> b!4357221 (= e!2711563 e!2711564)))

(declare-fun c!740833 () Bool)

(assert (=> b!4357221 (= c!740833 (and ((_ is Cons!48935) lt!1569329) (not (= (_1!27461 (h!54486 lt!1569329)) (_1!27461 lt!1569109)))))))

(declare-fun d!1288139 () Bool)

(declare-fun c!740832 () Bool)

(assert (=> d!1288139 (= c!740832 (and ((_ is Cons!48935) lt!1569329) (= (_1!27461 (h!54486 lt!1569329)) (_1!27461 lt!1569109))))))

(assert (=> d!1288139 (= (getValueByKey!455 lt!1569329 (_1!27461 lt!1569109)) e!2711563)))

(assert (= (and d!1288139 c!740832) b!4357220))

(assert (= (and d!1288139 (not c!740832)) b!4357221))

(assert (= (and b!4357221 c!740833) b!4357222))

(assert (= (and b!4357221 (not c!740833)) b!4357223))

(declare-fun m!4971727 () Bool)

(assert (=> b!4357222 m!4971727))

(assert (=> d!1287923 d!1288139))

(declare-fun d!1288141 () Bool)

(assert (=> d!1288141 (= (getValueByKey!455 lt!1569329 (_1!27461 lt!1569109)) (Some!10468 (_2!27461 lt!1569109)))))

(declare-fun lt!1569729 () Unit!71637)

(assert (=> d!1288141 (= lt!1569729 (choose!26921 lt!1569329 (_1!27461 lt!1569109) (_2!27461 lt!1569109)))))

(declare-fun e!2711565 () Bool)

(assert (=> d!1288141 e!2711565))

(declare-fun res!1790894 () Bool)

(assert (=> d!1288141 (=> (not res!1790894) (not e!2711565))))

(assert (=> d!1288141 (= res!1790894 (invariantList!678 lt!1569329))))

(assert (=> d!1288141 (= (lemmaContainsTupThenGetReturnValue!227 lt!1569329 (_1!27461 lt!1569109) (_2!27461 lt!1569109)) lt!1569729)))

(declare-fun b!4357224 () Bool)

(declare-fun res!1790895 () Bool)

(assert (=> b!4357224 (=> (not res!1790895) (not e!2711565))))

(assert (=> b!4357224 (= res!1790895 (containsKey!695 lt!1569329 (_1!27461 lt!1569109)))))

(declare-fun b!4357225 () Bool)

(assert (=> b!4357225 (= e!2711565 (contains!11146 lt!1569329 (tuple2!48335 (_1!27461 lt!1569109) (_2!27461 lt!1569109))))))

(assert (= (and d!1288141 res!1790894) b!4357224))

(assert (= (and b!4357224 res!1790895) b!4357225))

(assert (=> d!1288141 m!4970913))

(declare-fun m!4971729 () Bool)

(assert (=> d!1288141 m!4971729))

(declare-fun m!4971731 () Bool)

(assert (=> d!1288141 m!4971731))

(declare-fun m!4971733 () Bool)

(assert (=> b!4357224 m!4971733))

(declare-fun m!4971735 () Bool)

(assert (=> b!4357225 m!4971735))

(assert (=> d!1287923 d!1288141))

(declare-fun b!4357226 () Bool)

(declare-fun e!2711568 () Unit!71637)

(declare-fun Unit!71742 () Unit!71637)

(assert (=> b!4357226 (= e!2711568 Unit!71742)))

(declare-fun lt!1569736 () List!49059)

(declare-fun bm!302809 () Bool)

(declare-fun call!302815 () List!49062)

(declare-fun c!740835 () Bool)

(assert (=> bm!302809 (= call!302815 (getKeysList!126 (ite c!740835 (toList!2966 lt!1569100) lt!1569736)))))

(declare-fun e!2711566 () Bool)

(declare-fun b!4357227 () Bool)

(declare-fun lt!1569737 () List!49059)

(assert (=> b!4357227 (= e!2711566 (= (content!7722 (getKeysList!126 lt!1569737)) ((_ map or) (content!7722 (getKeysList!126 (toList!2966 lt!1569100))) (store ((as const (Array K!10295 Bool)) false) (_1!27461 lt!1569109) true))))))

(declare-fun b!4357228 () Bool)

(declare-fun res!1790896 () Bool)

(assert (=> b!4357228 (=> (not res!1790896) (not e!2711566))))

(assert (=> b!4357228 (= res!1790896 (contains!11146 lt!1569737 (tuple2!48335 (_1!27461 lt!1569109) (_2!27461 lt!1569109))))))

(declare-fun b!4357229 () Bool)

(declare-fun res!1790898 () Bool)

(assert (=> b!4357229 (=> (not res!1790898) (not e!2711566))))

(assert (=> b!4357229 (= res!1790898 (containsKey!695 lt!1569737 (_1!27461 lt!1569109)))))

(declare-fun b!4357230 () Bool)

(assert (=> b!4357230 false))

(declare-fun lt!1569738 () Unit!71637)

(declare-fun lt!1569733 () Unit!71637)

(assert (=> b!4357230 (= lt!1569738 lt!1569733)))

(assert (=> b!4357230 (containsKey!695 (t!355979 (toList!2966 lt!1569100)) (_1!27461 (h!54486 (toList!2966 lt!1569100))))))

(assert (=> b!4357230 (= lt!1569733 (lemmaInGetKeysListThenContainsKey!124 (t!355979 (toList!2966 lt!1569100)) (_1!27461 (h!54486 (toList!2966 lt!1569100)))))))

(declare-fun lt!1569739 () Unit!71637)

(declare-fun lt!1569735 () Unit!71637)

(assert (=> b!4357230 (= lt!1569739 lt!1569735)))

(assert (=> b!4357230 (contains!11145 call!302815 (_1!27461 (h!54486 (toList!2966 lt!1569100))))))

(assert (=> b!4357230 (= lt!1569735 (lemmaInListThenGetKeysListContains!123 lt!1569736 (_1!27461 (h!54486 (toList!2966 lt!1569100)))))))

(assert (=> b!4357230 (= lt!1569736 (insertNoDuplicatedKeys!101 (t!355979 (toList!2966 lt!1569100)) (_1!27461 lt!1569109) (_2!27461 lt!1569109)))))

(declare-fun Unit!71743 () Unit!71637)

(assert (=> b!4357230 (= e!2711568 Unit!71743)))

(declare-fun c!740834 () Bool)

(declare-fun call!302816 () List!49059)

(declare-fun e!2711569 () List!49059)

(declare-fun c!740837 () Bool)

(declare-fun bm!302810 () Bool)

(assert (=> bm!302810 (= call!302816 ($colon$colon!692 (ite c!740835 (t!355979 (toList!2966 lt!1569100)) (ite c!740834 (toList!2966 lt!1569100) e!2711569)) (ite (or c!740835 c!740834) (tuple2!48335 (_1!27461 lt!1569109) (_2!27461 lt!1569109)) (ite c!740837 (h!54486 (toList!2966 lt!1569100)) (tuple2!48335 (_1!27461 lt!1569109) (_2!27461 lt!1569109))))))))

(declare-fun b!4357232 () Bool)

(declare-fun e!2711572 () List!49059)

(declare-fun lt!1569730 () List!49059)

(assert (=> b!4357232 (= e!2711572 lt!1569730)))

(declare-fun call!302817 () List!49059)

(assert (=> b!4357232 (= lt!1569730 call!302817)))

(declare-fun c!740838 () Bool)

(assert (=> b!4357232 (= c!740838 (containsKey!695 (insertNoDuplicatedKeys!101 (t!355979 (toList!2966 lt!1569100)) (_1!27461 lt!1569109) (_2!27461 lt!1569109)) (_1!27461 (h!54486 (toList!2966 lt!1569100)))))))

(declare-fun lt!1569734 () Unit!71637)

(assert (=> b!4357232 (= lt!1569734 e!2711568)))

(declare-fun bm!302811 () Bool)

(declare-fun call!302814 () List!49059)

(assert (=> bm!302811 (= call!302817 call!302814)))

(declare-fun c!740836 () Bool)

(assert (=> bm!302811 (= c!740836 c!740837)))

(declare-fun b!4357233 () Bool)

(assert (=> b!4357233 (= e!2711572 call!302817)))

(declare-fun b!4357234 () Bool)

(declare-fun e!2711567 () Bool)

(assert (=> b!4357234 (= e!2711567 (not (containsKey!695 (toList!2966 lt!1569100) (_1!27461 lt!1569109))))))

(declare-fun b!4357235 () Bool)

(declare-fun e!2711571 () List!49059)

(assert (=> b!4357235 (= e!2711571 call!302816)))

(declare-fun lt!1569731 () List!49062)

(assert (=> b!4357235 (= lt!1569731 call!302815)))

(declare-fun lt!1569740 () Unit!71637)

(assert (=> b!4357235 (= lt!1569740 (lemmaSubseqRefl!71 lt!1569731))))

(assert (=> b!4357235 (subseq!587 lt!1569731 lt!1569731)))

(declare-fun lt!1569732 () Unit!71637)

(assert (=> b!4357235 (= lt!1569732 lt!1569740)))

(declare-fun b!4357236 () Bool)

(assert (=> b!4357236 (= e!2711569 (insertNoDuplicatedKeys!101 (t!355979 (toList!2966 lt!1569100)) (_1!27461 lt!1569109) (_2!27461 lt!1569109)))))

(declare-fun b!4357237 () Bool)

(declare-fun e!2711570 () List!49059)

(assert (=> b!4357237 (= e!2711571 e!2711570)))

(declare-fun res!1790897 () Bool)

(assert (=> b!4357237 (= res!1790897 ((_ is Cons!48935) (toList!2966 lt!1569100)))))

(assert (=> b!4357237 (=> (not res!1790897) (not e!2711567))))

(assert (=> b!4357237 (= c!740834 e!2711567)))

(declare-fun d!1288143 () Bool)

(assert (=> d!1288143 e!2711566))

(declare-fun res!1790899 () Bool)

(assert (=> d!1288143 (=> (not res!1790899) (not e!2711566))))

(assert (=> d!1288143 (= res!1790899 (invariantList!678 lt!1569737))))

(assert (=> d!1288143 (= lt!1569737 e!2711571)))

(assert (=> d!1288143 (= c!740835 (and ((_ is Cons!48935) (toList!2966 lt!1569100)) (= (_1!27461 (h!54486 (toList!2966 lt!1569100))) (_1!27461 lt!1569109))))))

(assert (=> d!1288143 (invariantList!678 (toList!2966 lt!1569100))))

(assert (=> d!1288143 (= (insertNoDuplicatedKeys!101 (toList!2966 lt!1569100) (_1!27461 lt!1569109) (_2!27461 lt!1569109)) lt!1569737)))

(declare-fun b!4357231 () Bool)

(assert (=> b!4357231 (= e!2711570 call!302814)))

(declare-fun b!4357238 () Bool)

(assert (=> b!4357238 (= c!740837 ((_ is Cons!48935) (toList!2966 lt!1569100)))))

(assert (=> b!4357238 (= e!2711570 e!2711572)))

(declare-fun b!4357239 () Bool)

(assert (=> b!4357239 (= e!2711569 Nil!48935)))

(declare-fun bm!302812 () Bool)

(assert (=> bm!302812 (= call!302814 call!302816)))

(assert (= (and d!1288143 c!740835) b!4357235))

(assert (= (and d!1288143 (not c!740835)) b!4357237))

(assert (= (and b!4357237 res!1790897) b!4357234))

(assert (= (and b!4357237 c!740834) b!4357231))

(assert (= (and b!4357237 (not c!740834)) b!4357238))

(assert (= (and b!4357238 c!740837) b!4357232))

(assert (= (and b!4357238 (not c!740837)) b!4357233))

(assert (= (and b!4357232 c!740838) b!4357230))

(assert (= (and b!4357232 (not c!740838)) b!4357226))

(assert (= (or b!4357232 b!4357233) bm!302811))

(assert (= (and bm!302811 c!740836) b!4357236))

(assert (= (and bm!302811 (not c!740836)) b!4357239))

(assert (= (or b!4357231 bm!302811) bm!302812))

(assert (= (or b!4357235 b!4357230) bm!302809))

(assert (= (or b!4357235 bm!302812) bm!302810))

(assert (= (and d!1288143 res!1790899) b!4357229))

(assert (= (and b!4357229 res!1790898) b!4357228))

(assert (= (and b!4357228 res!1790896) b!4357227))

(declare-fun m!4971737 () Bool)

(assert (=> b!4357235 m!4971737))

(declare-fun m!4971739 () Bool)

(assert (=> b!4357235 m!4971739))

(declare-fun m!4971741 () Bool)

(assert (=> bm!302810 m!4971741))

(declare-fun m!4971743 () Bool)

(assert (=> b!4357232 m!4971743))

(assert (=> b!4357232 m!4971743))

(declare-fun m!4971745 () Bool)

(assert (=> b!4357232 m!4971745))

(declare-fun m!4971747 () Bool)

(assert (=> b!4357227 m!4971747))

(declare-fun m!4971749 () Bool)

(assert (=> b!4357227 m!4971749))

(declare-fun m!4971751 () Bool)

(assert (=> b!4357227 m!4971751))

(declare-fun m!4971753 () Bool)

(assert (=> b!4357227 m!4971753))

(assert (=> b!4357227 m!4971571))

(assert (=> b!4357227 m!4971751))

(assert (=> b!4357227 m!4971747))

(declare-fun m!4971755 () Bool)

(assert (=> d!1288143 m!4971755))

(declare-fun m!4971757 () Bool)

(assert (=> d!1288143 m!4971757))

(declare-fun m!4971759 () Bool)

(assert (=> b!4357234 m!4971759))

(assert (=> b!4357236 m!4971743))

(declare-fun m!4971761 () Bool)

(assert (=> b!4357229 m!4971761))

(declare-fun m!4971763 () Bool)

(assert (=> b!4357230 m!4971763))

(assert (=> b!4357230 m!4971743))

(declare-fun m!4971765 () Bool)

(assert (=> b!4357230 m!4971765))

(declare-fun m!4971767 () Bool)

(assert (=> b!4357230 m!4971767))

(declare-fun m!4971769 () Bool)

(assert (=> b!4357230 m!4971769))

(declare-fun m!4971771 () Bool)

(assert (=> bm!302809 m!4971771))

(declare-fun m!4971773 () Bool)

(assert (=> b!4357228 m!4971773))

(assert (=> d!1287923 d!1288143))

(declare-fun d!1288145 () Bool)

(declare-fun lt!1569741 () Bool)

(assert (=> d!1288145 (= lt!1569741 (select (content!7722 e!2711351) key!3918))))

(declare-fun e!2711573 () Bool)

(assert (=> d!1288145 (= lt!1569741 e!2711573)))

(declare-fun res!1790900 () Bool)

(assert (=> d!1288145 (=> (not res!1790900) (not e!2711573))))

(assert (=> d!1288145 (= res!1790900 ((_ is Cons!48938) e!2711351))))

(assert (=> d!1288145 (= (contains!11145 e!2711351 key!3918) lt!1569741)))

(declare-fun b!4357240 () Bool)

(declare-fun e!2711574 () Bool)

(assert (=> b!4357240 (= e!2711573 e!2711574)))

(declare-fun res!1790901 () Bool)

(assert (=> b!4357240 (=> res!1790901 e!2711574)))

(assert (=> b!4357240 (= res!1790901 (= (h!54491 e!2711351) key!3918))))

(declare-fun b!4357241 () Bool)

(assert (=> b!4357241 (= e!2711574 (contains!11145 (t!355982 e!2711351) key!3918))))

(assert (= (and d!1288145 res!1790900) b!4357240))

(assert (= (and b!4357240 (not res!1790901)) b!4357241))

(declare-fun m!4971775 () Bool)

(assert (=> d!1288145 m!4971775))

(declare-fun m!4971777 () Bool)

(assert (=> d!1288145 m!4971777))

(declare-fun m!4971779 () Bool)

(assert (=> b!4357241 m!4971779))

(assert (=> bm!302780 d!1288145))

(declare-fun d!1288147 () Bool)

(declare-fun res!1790902 () Bool)

(declare-fun e!2711575 () Bool)

(assert (=> d!1288147 (=> res!1790902 e!2711575)))

(assert (=> d!1288147 (= res!1790902 (and ((_ is Cons!48935) (toList!2966 lt!1569110)) (= (_1!27461 (h!54486 (toList!2966 lt!1569110))) key!3918)))))

(assert (=> d!1288147 (= (containsKey!695 (toList!2966 lt!1569110) key!3918) e!2711575)))

(declare-fun b!4357242 () Bool)

(declare-fun e!2711576 () Bool)

(assert (=> b!4357242 (= e!2711575 e!2711576)))

(declare-fun res!1790903 () Bool)

(assert (=> b!4357242 (=> (not res!1790903) (not e!2711576))))

(assert (=> b!4357242 (= res!1790903 ((_ is Cons!48935) (toList!2966 lt!1569110)))))

(declare-fun b!4357243 () Bool)

(assert (=> b!4357243 (= e!2711576 (containsKey!695 (t!355979 (toList!2966 lt!1569110)) key!3918))))

(assert (= (and d!1288147 (not res!1790902)) b!4357242))

(assert (= (and b!4357242 res!1790903) b!4357243))

(declare-fun m!4971781 () Bool)

(assert (=> b!4357243 m!4971781))

(assert (=> d!1287899 d!1288147))

(declare-fun d!1288149 () Bool)

(declare-fun lt!1569742 () Bool)

(assert (=> d!1288149 (= lt!1569742 (select (content!7722 (keys!16530 lt!1569104)) key!3918))))

(declare-fun e!2711577 () Bool)

(assert (=> d!1288149 (= lt!1569742 e!2711577)))

(declare-fun res!1790904 () Bool)

(assert (=> d!1288149 (=> (not res!1790904) (not e!2711577))))

(assert (=> d!1288149 (= res!1790904 ((_ is Cons!48938) (keys!16530 lt!1569104)))))

(assert (=> d!1288149 (= (contains!11145 (keys!16530 lt!1569104) key!3918) lt!1569742)))

(declare-fun b!4357244 () Bool)

(declare-fun e!2711578 () Bool)

(assert (=> b!4357244 (= e!2711577 e!2711578)))

(declare-fun res!1790905 () Bool)

(assert (=> b!4357244 (=> res!1790905 e!2711578)))

(assert (=> b!4357244 (= res!1790905 (= (h!54491 (keys!16530 lt!1569104)) key!3918))))

(declare-fun b!4357245 () Bool)

(assert (=> b!4357245 (= e!2711578 (contains!11145 (t!355982 (keys!16530 lt!1569104)) key!3918))))

(assert (= (and d!1288149 res!1790904) b!4357244))

(assert (= (and b!4357244 (not res!1790905)) b!4357245))

(assert (=> d!1288149 m!4971173))

(declare-fun m!4971783 () Bool)

(assert (=> d!1288149 m!4971783))

(declare-fun m!4971785 () Bool)

(assert (=> d!1288149 m!4971785))

(declare-fun m!4971787 () Bool)

(assert (=> b!4357245 m!4971787))

(assert (=> b!4356874 d!1288149))

(assert (=> b!4356874 d!1288017))

(assert (=> b!4356809 d!1288123))

(assert (=> b!4356809 d!1288125))

(declare-fun d!1288151 () Bool)

(assert (=> d!1288151 (= (invariantList!678 (toList!2966 lt!1569509)) (noDuplicatedKeys!119 (toList!2966 lt!1569509)))))

(declare-fun bs!631723 () Bool)

(assert (= bs!631723 d!1288151))

(declare-fun m!4971789 () Bool)

(assert (=> bs!631723 m!4971789))

(assert (=> d!1287983 d!1288151))

(declare-fun d!1288153 () Bool)

(declare-fun res!1790906 () Bool)

(declare-fun e!2711579 () Bool)

(assert (=> d!1288153 (=> res!1790906 e!2711579)))

(assert (=> d!1288153 (= res!1790906 ((_ is Nil!48936) (t!355980 (toList!2965 lm!1707))))))

(assert (=> d!1288153 (= (forall!9122 (t!355980 (toList!2965 lm!1707)) lambda!140587) e!2711579)))

(declare-fun b!4357246 () Bool)

(declare-fun e!2711580 () Bool)

(assert (=> b!4357246 (= e!2711579 e!2711580)))

(declare-fun res!1790907 () Bool)

(assert (=> b!4357246 (=> (not res!1790907) (not e!2711580))))

(assert (=> b!4357246 (= res!1790907 (dynLambda!20635 lambda!140587 (h!54487 (t!355980 (toList!2965 lm!1707)))))))

(declare-fun b!4357247 () Bool)

(assert (=> b!4357247 (= e!2711580 (forall!9122 (t!355980 (t!355980 (toList!2965 lm!1707))) lambda!140587))))

(assert (= (and d!1288153 (not res!1790906)) b!4357246))

(assert (= (and b!4357246 res!1790907) b!4357247))

(declare-fun b_lambda!131241 () Bool)

(assert (=> (not b_lambda!131241) (not b!4357246)))

(declare-fun m!4971791 () Bool)

(assert (=> b!4357246 m!4971791))

(declare-fun m!4971793 () Bool)

(assert (=> b!4357247 m!4971793))

(assert (=> d!1287983 d!1288153))

(declare-fun d!1288155 () Bool)

(declare-fun e!2711581 () Bool)

(assert (=> d!1288155 e!2711581))

(declare-fun res!1790908 () Bool)

(assert (=> d!1288155 (=> res!1790908 e!2711581)))

(declare-fun lt!1569745 () Bool)

(assert (=> d!1288155 (= res!1790908 (not lt!1569745))))

(declare-fun lt!1569743 () Bool)

(assert (=> d!1288155 (= lt!1569745 lt!1569743)))

(declare-fun lt!1569746 () Unit!71637)

(declare-fun e!2711582 () Unit!71637)

(assert (=> d!1288155 (= lt!1569746 e!2711582)))

(declare-fun c!740839 () Bool)

(assert (=> d!1288155 (= c!740839 lt!1569743)))

(assert (=> d!1288155 (= lt!1569743 (containsKey!696 (toList!2965 lt!1569503) (_1!27462 lt!1569101)))))

(assert (=> d!1288155 (= (contains!11143 lt!1569503 (_1!27462 lt!1569101)) lt!1569745)))

(declare-fun b!4357248 () Bool)

(declare-fun lt!1569744 () Unit!71637)

(assert (=> b!4357248 (= e!2711582 lt!1569744)))

(assert (=> b!4357248 (= lt!1569744 (lemmaContainsKeyImpliesGetValueByKeyDefined!366 (toList!2965 lt!1569503) (_1!27462 lt!1569101)))))

(assert (=> b!4357248 (isDefined!7763 (getValueByKey!454 (toList!2965 lt!1569503) (_1!27462 lt!1569101)))))

(declare-fun b!4357249 () Bool)

(declare-fun Unit!71746 () Unit!71637)

(assert (=> b!4357249 (= e!2711582 Unit!71746)))

(declare-fun b!4357250 () Bool)

(assert (=> b!4357250 (= e!2711581 (isDefined!7763 (getValueByKey!454 (toList!2965 lt!1569503) (_1!27462 lt!1569101))))))

(assert (= (and d!1288155 c!740839) b!4357248))

(assert (= (and d!1288155 (not c!740839)) b!4357249))

(assert (= (and d!1288155 (not res!1790908)) b!4357250))

(declare-fun m!4971795 () Bool)

(assert (=> d!1288155 m!4971795))

(declare-fun m!4971797 () Bool)

(assert (=> b!4357248 m!4971797))

(assert (=> b!4357248 m!4971197))

(assert (=> b!4357248 m!4971197))

(declare-fun m!4971799 () Bool)

(assert (=> b!4357248 m!4971799))

(assert (=> b!4357250 m!4971197))

(assert (=> b!4357250 m!4971197))

(assert (=> b!4357250 m!4971799))

(assert (=> d!1287979 d!1288155))

(declare-fun d!1288157 () Bool)

(declare-fun c!740840 () Bool)

(assert (=> d!1288157 (= c!740840 (and ((_ is Cons!48936) lt!1569505) (= (_1!27462 (h!54487 lt!1569505)) (_1!27462 lt!1569101))))))

(declare-fun e!2711583 () Option!10468)

(assert (=> d!1288157 (= (getValueByKey!454 lt!1569505 (_1!27462 lt!1569101)) e!2711583)))

(declare-fun b!4357253 () Bool)

(declare-fun e!2711584 () Option!10468)

(assert (=> b!4357253 (= e!2711584 (getValueByKey!454 (t!355980 lt!1569505) (_1!27462 lt!1569101)))))

(declare-fun b!4357252 () Bool)

(assert (=> b!4357252 (= e!2711583 e!2711584)))

(declare-fun c!740841 () Bool)

(assert (=> b!4357252 (= c!740841 (and ((_ is Cons!48936) lt!1569505) (not (= (_1!27462 (h!54487 lt!1569505)) (_1!27462 lt!1569101)))))))

(declare-fun b!4357251 () Bool)

(assert (=> b!4357251 (= e!2711583 (Some!10467 (_2!27462 (h!54487 lt!1569505))))))

(declare-fun b!4357254 () Bool)

(assert (=> b!4357254 (= e!2711584 None!10467)))

(assert (= (and d!1288157 c!740840) b!4357251))

(assert (= (and d!1288157 (not c!740840)) b!4357252))

(assert (= (and b!4357252 c!740841) b!4357253))

(assert (= (and b!4357252 (not c!740841)) b!4357254))

(declare-fun m!4971801 () Bool)

(assert (=> b!4357253 m!4971801))

(assert (=> d!1287979 d!1288157))

(declare-fun d!1288159 () Bool)

(assert (=> d!1288159 (= (getValueByKey!454 lt!1569505 (_1!27462 lt!1569101)) (Some!10467 (_2!27462 lt!1569101)))))

(declare-fun lt!1569753 () Unit!71637)

(declare-fun choose!26927 (List!49060 (_ BitVec 64) List!49059) Unit!71637)

(assert (=> d!1288159 (= lt!1569753 (choose!26927 lt!1569505 (_1!27462 lt!1569101) (_2!27462 lt!1569101)))))

(declare-fun e!2711590 () Bool)

(assert (=> d!1288159 e!2711590))

(declare-fun res!1790917 () Bool)

(assert (=> d!1288159 (=> (not res!1790917) (not e!2711590))))

(assert (=> d!1288159 (= res!1790917 (isStrictlySorted!104 lt!1569505))))

(assert (=> d!1288159 (= (lemmaContainsTupThenGetReturnValue!229 lt!1569505 (_1!27462 lt!1569101) (_2!27462 lt!1569101)) lt!1569753)))

(declare-fun b!4357263 () Bool)

(declare-fun res!1790918 () Bool)

(assert (=> b!4357263 (=> (not res!1790918) (not e!2711590))))

(assert (=> b!4357263 (= res!1790918 (containsKey!696 lt!1569505 (_1!27462 lt!1569101)))))

(declare-fun b!4357264 () Bool)

(assert (=> b!4357264 (= e!2711590 (contains!11141 lt!1569505 (tuple2!48337 (_1!27462 lt!1569101) (_2!27462 lt!1569101))))))

(assert (= (and d!1288159 res!1790917) b!4357263))

(assert (= (and b!4357263 res!1790918) b!4357264))

(assert (=> d!1288159 m!4971191))

(declare-fun m!4971855 () Bool)

(assert (=> d!1288159 m!4971855))

(declare-fun m!4971857 () Bool)

(assert (=> d!1288159 m!4971857))

(declare-fun m!4971859 () Bool)

(assert (=> b!4357263 m!4971859))

(declare-fun m!4971861 () Bool)

(assert (=> b!4357264 m!4971861))

(assert (=> d!1287979 d!1288159))

(declare-fun b!4357285 () Bool)

(declare-fun e!2711603 () Bool)

(declare-fun lt!1569756 () List!49060)

(assert (=> b!4357285 (= e!2711603 (contains!11141 lt!1569756 (tuple2!48337 (_1!27462 lt!1569101) (_2!27462 lt!1569101))))))

(declare-fun b!4357286 () Bool)

(declare-fun e!2711602 () List!49060)

(declare-fun e!2711604 () List!49060)

(assert (=> b!4357286 (= e!2711602 e!2711604)))

(declare-fun c!740852 () Bool)

(assert (=> b!4357286 (= c!740852 (and ((_ is Cons!48936) (toList!2965 lt!1569099)) (= (_1!27462 (h!54487 (toList!2965 lt!1569099))) (_1!27462 lt!1569101))))))

(declare-fun b!4357287 () Bool)

(declare-fun e!2711601 () List!49060)

(declare-fun call!302824 () List!49060)

(assert (=> b!4357287 (= e!2711601 call!302824)))

(declare-fun b!4357288 () Bool)

(declare-fun c!740851 () Bool)

(assert (=> b!4357288 (= c!740851 (and ((_ is Cons!48936) (toList!2965 lt!1569099)) (bvsgt (_1!27462 (h!54487 (toList!2965 lt!1569099))) (_1!27462 lt!1569101))))))

(assert (=> b!4357288 (= e!2711604 e!2711601)))

(declare-fun b!4357289 () Bool)

(declare-fun res!1790923 () Bool)

(assert (=> b!4357289 (=> (not res!1790923) (not e!2711603))))

(assert (=> b!4357289 (= res!1790923 (containsKey!696 lt!1569756 (_1!27462 lt!1569101)))))

(declare-fun call!302826 () List!49060)

(declare-fun bm!302819 () Bool)

(declare-fun c!740853 () Bool)

(declare-fun e!2711605 () List!49060)

(declare-fun $colon$colon!693 (List!49060 tuple2!48336) List!49060)

(assert (=> bm!302819 (= call!302826 ($colon$colon!693 e!2711605 (ite c!740853 (h!54487 (toList!2965 lt!1569099)) (tuple2!48337 (_1!27462 lt!1569101) (_2!27462 lt!1569101)))))))

(declare-fun c!740850 () Bool)

(assert (=> bm!302819 (= c!740850 c!740853)))

(declare-fun bm!302820 () Bool)

(declare-fun call!302825 () List!49060)

(assert (=> bm!302820 (= call!302824 call!302825)))

(declare-fun b!4357290 () Bool)

(assert (=> b!4357290 (= e!2711602 call!302826)))

(declare-fun bm!302821 () Bool)

(assert (=> bm!302821 (= call!302825 call!302826)))

(declare-fun d!1288167 () Bool)

(assert (=> d!1288167 e!2711603))

(declare-fun res!1790924 () Bool)

(assert (=> d!1288167 (=> (not res!1790924) (not e!2711603))))

(assert (=> d!1288167 (= res!1790924 (isStrictlySorted!104 lt!1569756))))

(assert (=> d!1288167 (= lt!1569756 e!2711602)))

(assert (=> d!1288167 (= c!740853 (and ((_ is Cons!48936) (toList!2965 lt!1569099)) (bvslt (_1!27462 (h!54487 (toList!2965 lt!1569099))) (_1!27462 lt!1569101))))))

(assert (=> d!1288167 (isStrictlySorted!104 (toList!2965 lt!1569099))))

(assert (=> d!1288167 (= (insertStrictlySorted!135 (toList!2965 lt!1569099) (_1!27462 lt!1569101) (_2!27462 lt!1569101)) lt!1569756)))

(declare-fun b!4357291 () Bool)

(assert (=> b!4357291 (= e!2711605 (insertStrictlySorted!135 (t!355980 (toList!2965 lt!1569099)) (_1!27462 lt!1569101) (_2!27462 lt!1569101)))))

(declare-fun b!4357292 () Bool)

(assert (=> b!4357292 (= e!2711605 (ite c!740852 (t!355980 (toList!2965 lt!1569099)) (ite c!740851 (Cons!48936 (h!54487 (toList!2965 lt!1569099)) (t!355980 (toList!2965 lt!1569099))) Nil!48936)))))

(declare-fun b!4357293 () Bool)

(assert (=> b!4357293 (= e!2711604 call!302825)))

(declare-fun b!4357294 () Bool)

(assert (=> b!4357294 (= e!2711601 call!302824)))

(assert (= (and d!1288167 c!740853) b!4357290))

(assert (= (and d!1288167 (not c!740853)) b!4357286))

(assert (= (and b!4357286 c!740852) b!4357293))

(assert (= (and b!4357286 (not c!740852)) b!4357288))

(assert (= (and b!4357288 c!740851) b!4357287))

(assert (= (and b!4357288 (not c!740851)) b!4357294))

(assert (= (or b!4357287 b!4357294) bm!302820))

(assert (= (or b!4357293 bm!302820) bm!302821))

(assert (= (or b!4357290 bm!302821) bm!302819))

(assert (= (and bm!302819 c!740850) b!4357291))

(assert (= (and bm!302819 (not c!740850)) b!4357292))

(assert (= (and d!1288167 res!1790924) b!4357289))

(assert (= (and b!4357289 res!1790923) b!4357285))

(declare-fun m!4971863 () Bool)

(assert (=> b!4357291 m!4971863))

(declare-fun m!4971865 () Bool)

(assert (=> b!4357289 m!4971865))

(declare-fun m!4971867 () Bool)

(assert (=> bm!302819 m!4971867))

(declare-fun m!4971869 () Bool)

(assert (=> d!1288167 m!4971869))

(declare-fun m!4971871 () Bool)

(assert (=> d!1288167 m!4971871))

(declare-fun m!4971873 () Bool)

(assert (=> b!4357285 m!4971873))

(assert (=> d!1287979 d!1288167))

(declare-fun d!1288169 () Bool)

(declare-fun res!1790925 () Bool)

(declare-fun e!2711612 () Bool)

(assert (=> d!1288169 (=> res!1790925 e!2711612)))

(assert (=> d!1288169 (= res!1790925 ((_ is Nil!48936) (toList!2965 lm!1707)))))

(assert (=> d!1288169 (= (forall!9122 (toList!2965 lm!1707) lambda!140494) e!2711612)))

(declare-fun b!4357307 () Bool)

(declare-fun e!2711613 () Bool)

(assert (=> b!4357307 (= e!2711612 e!2711613)))

(declare-fun res!1790926 () Bool)

(assert (=> b!4357307 (=> (not res!1790926) (not e!2711613))))

(assert (=> b!4357307 (= res!1790926 (dynLambda!20635 lambda!140494 (h!54487 (toList!2965 lm!1707))))))

(declare-fun b!4357308 () Bool)

(assert (=> b!4357308 (= e!2711613 (forall!9122 (t!355980 (toList!2965 lm!1707)) lambda!140494))))

(assert (= (and d!1288169 (not res!1790925)) b!4357307))

(assert (= (and b!4357307 res!1790926) b!4357308))

(declare-fun b_lambda!131245 () Bool)

(assert (=> (not b_lambda!131245) (not b!4357307)))

(declare-fun m!4971875 () Bool)

(assert (=> b!4357307 m!4971875))

(declare-fun m!4971877 () Bool)

(assert (=> b!4357308 m!4971877))

(assert (=> d!1287883 d!1288169))

(declare-fun d!1288171 () Bool)

(assert (=> d!1288171 (= (invariantList!678 (toList!2966 lt!1569474)) (noDuplicatedKeys!119 (toList!2966 lt!1569474)))))

(declare-fun bs!631732 () Bool)

(assert (= bs!631732 d!1288171))

(declare-fun m!4971879 () Bool)

(assert (=> bs!631732 m!4971879))

(assert (=> b!4356872 d!1288171))

(declare-fun d!1288173 () Bool)

(declare-fun c!740862 () Bool)

(assert (=> d!1288173 (= c!740862 ((_ is Nil!48936) (toList!2965 lm!1707)))))

(declare-fun e!2711616 () (InoxSet tuple2!48336))

(assert (=> d!1288173 (= (content!7720 (toList!2965 lm!1707)) e!2711616)))

(declare-fun b!4357313 () Bool)

(assert (=> b!4357313 (= e!2711616 ((as const (Array tuple2!48336 Bool)) false))))

(declare-fun b!4357314 () Bool)

(assert (=> b!4357314 (= e!2711616 ((_ map or) (store ((as const (Array tuple2!48336 Bool)) false) (h!54487 (toList!2965 lm!1707)) true) (content!7720 (t!355980 (toList!2965 lm!1707)))))))

(assert (= (and d!1288173 c!740862) b!4357313))

(assert (= (and d!1288173 (not c!740862)) b!4357314))

(declare-fun m!4971881 () Bool)

(assert (=> b!4357314 m!4971881))

(declare-fun m!4971883 () Bool)

(assert (=> b!4357314 m!4971883))

(assert (=> d!1287861 d!1288173))

(declare-fun b!4357322 () Bool)

(declare-fun e!2711620 () Option!10469)

(assert (=> b!4357322 (= e!2711620 None!10468)))

(declare-fun b!4357319 () Bool)

(declare-fun e!2711619 () Option!10469)

(assert (=> b!4357319 (= e!2711619 (Some!10468 (_2!27461 (h!54486 (toList!2966 lt!1569328)))))))

(declare-fun b!4357321 () Bool)

(assert (=> b!4357321 (= e!2711620 (getValueByKey!455 (t!355979 (toList!2966 lt!1569328)) (_1!27461 lt!1569109)))))

(declare-fun b!4357320 () Bool)

(assert (=> b!4357320 (= e!2711619 e!2711620)))

(declare-fun c!740864 () Bool)

(assert (=> b!4357320 (= c!740864 (and ((_ is Cons!48935) (toList!2966 lt!1569328)) (not (= (_1!27461 (h!54486 (toList!2966 lt!1569328))) (_1!27461 lt!1569109)))))))

(declare-fun d!1288175 () Bool)

(declare-fun c!740863 () Bool)

(assert (=> d!1288175 (= c!740863 (and ((_ is Cons!48935) (toList!2966 lt!1569328)) (= (_1!27461 (h!54486 (toList!2966 lt!1569328))) (_1!27461 lt!1569109))))))

(assert (=> d!1288175 (= (getValueByKey!455 (toList!2966 lt!1569328) (_1!27461 lt!1569109)) e!2711619)))

(assert (= (and d!1288175 c!740863) b!4357319))

(assert (= (and d!1288175 (not c!740863)) b!4357320))

(assert (= (and b!4357320 c!740864) b!4357321))

(assert (= (and b!4357320 (not c!740864)) b!4357322))

(declare-fun m!4971885 () Bool)

(assert (=> b!4357321 m!4971885))

(assert (=> b!4356799 d!1288175))

(declare-fun d!1288177 () Bool)

(declare-fun res!1790933 () Bool)

(declare-fun e!2711621 () Bool)

(assert (=> d!1288177 (=> res!1790933 e!2711621)))

(assert (=> d!1288177 (= res!1790933 ((_ is Nil!48936) (toList!2965 lt!1569099)))))

(assert (=> d!1288177 (= (forall!9122 (toList!2965 lt!1569099) lambda!140586) e!2711621)))

(declare-fun b!4357323 () Bool)

(declare-fun e!2711622 () Bool)

(assert (=> b!4357323 (= e!2711621 e!2711622)))

(declare-fun res!1790934 () Bool)

(assert (=> b!4357323 (=> (not res!1790934) (not e!2711622))))

(assert (=> b!4357323 (= res!1790934 (dynLambda!20635 lambda!140586 (h!54487 (toList!2965 lt!1569099))))))

(declare-fun b!4357324 () Bool)

(assert (=> b!4357324 (= e!2711622 (forall!9122 (t!355980 (toList!2965 lt!1569099)) lambda!140586))))

(assert (= (and d!1288177 (not res!1790933)) b!4357323))

(assert (= (and b!4357323 res!1790934) b!4357324))

(declare-fun b_lambda!131247 () Bool)

(assert (=> (not b_lambda!131247) (not b!4357323)))

(declare-fun m!4971887 () Bool)

(assert (=> b!4357323 m!4971887))

(declare-fun m!4971889 () Bool)

(assert (=> b!4357324 m!4971889))

(assert (=> d!1287981 d!1288177))

(declare-fun d!1288179 () Bool)

(declare-fun e!2711623 () Bool)

(assert (=> d!1288179 e!2711623))

(declare-fun res!1790936 () Bool)

(assert (=> d!1288179 (=> (not res!1790936) (not e!2711623))))

(declare-fun lt!1569772 () ListLongMap!1615)

(assert (=> d!1288179 (= res!1790936 (contains!11143 lt!1569772 (_1!27462 (tuple2!48337 hash!377 newBucket!200))))))

(declare-fun lt!1569774 () List!49060)

(assert (=> d!1288179 (= lt!1569772 (ListLongMap!1616 lt!1569774))))

(declare-fun lt!1569771 () Unit!71637)

(declare-fun lt!1569773 () Unit!71637)

(assert (=> d!1288179 (= lt!1569771 lt!1569773)))

(assert (=> d!1288179 (= (getValueByKey!454 lt!1569774 (_1!27462 (tuple2!48337 hash!377 newBucket!200))) (Some!10467 (_2!27462 (tuple2!48337 hash!377 newBucket!200))))))

(assert (=> d!1288179 (= lt!1569773 (lemmaContainsTupThenGetReturnValue!229 lt!1569774 (_1!27462 (tuple2!48337 hash!377 newBucket!200)) (_2!27462 (tuple2!48337 hash!377 newBucket!200))))))

(assert (=> d!1288179 (= lt!1569774 (insertStrictlySorted!135 (toList!2965 lt!1569099) (_1!27462 (tuple2!48337 hash!377 newBucket!200)) (_2!27462 (tuple2!48337 hash!377 newBucket!200))))))

(assert (=> d!1288179 (= (+!639 lt!1569099 (tuple2!48337 hash!377 newBucket!200)) lt!1569772)))

(declare-fun b!4357327 () Bool)

(declare-fun res!1790935 () Bool)

(assert (=> b!4357327 (=> (not res!1790935) (not e!2711623))))

(assert (=> b!4357327 (= res!1790935 (= (getValueByKey!454 (toList!2965 lt!1569772) (_1!27462 (tuple2!48337 hash!377 newBucket!200))) (Some!10467 (_2!27462 (tuple2!48337 hash!377 newBucket!200)))))))

(declare-fun b!4357328 () Bool)

(assert (=> b!4357328 (= e!2711623 (contains!11141 (toList!2965 lt!1569772) (tuple2!48337 hash!377 newBucket!200)))))

(assert (= (and d!1288179 res!1790936) b!4357327))

(assert (= (and b!4357327 res!1790935) b!4357328))

(declare-fun m!4971891 () Bool)

(assert (=> d!1288179 m!4971891))

(declare-fun m!4971893 () Bool)

(assert (=> d!1288179 m!4971893))

(declare-fun m!4971895 () Bool)

(assert (=> d!1288179 m!4971895))

(declare-fun m!4971897 () Bool)

(assert (=> d!1288179 m!4971897))

(declare-fun m!4971899 () Bool)

(assert (=> b!4357327 m!4971899))

(declare-fun m!4971901 () Bool)

(assert (=> b!4357328 m!4971901))

(assert (=> d!1287981 d!1288179))

(declare-fun d!1288181 () Bool)

(declare-fun e!2711624 () Bool)

(assert (=> d!1288181 e!2711624))

(declare-fun res!1790937 () Bool)

(assert (=> d!1288181 (=> (not res!1790937) (not e!2711624))))

(declare-fun lt!1569777 () ListMap!2209)

(assert (=> d!1288181 (= res!1790937 (contains!11142 lt!1569777 (_1!27461 (tuple2!48335 key!3918 newValue!99))))))

(declare-fun lt!1569778 () List!49059)

(assert (=> d!1288181 (= lt!1569777 (ListMap!2210 lt!1569778))))

(declare-fun lt!1569775 () Unit!71637)

(declare-fun lt!1569776 () Unit!71637)

(assert (=> d!1288181 (= lt!1569775 lt!1569776)))

(assert (=> d!1288181 (= (getValueByKey!455 lt!1569778 (_1!27461 (tuple2!48335 key!3918 newValue!99))) (Some!10468 (_2!27461 (tuple2!48335 key!3918 newValue!99))))))

(assert (=> d!1288181 (= lt!1569776 (lemmaContainsTupThenGetReturnValue!227 lt!1569778 (_1!27461 (tuple2!48335 key!3918 newValue!99)) (_2!27461 (tuple2!48335 key!3918 newValue!99))))))

(assert (=> d!1288181 (= lt!1569778 (insertNoDuplicatedKeys!101 (toList!2966 (extractMap!550 (toList!2965 lt!1569099))) (_1!27461 (tuple2!48335 key!3918 newValue!99)) (_2!27461 (tuple2!48335 key!3918 newValue!99))))))

(assert (=> d!1288181 (= (+!640 (extractMap!550 (toList!2965 lt!1569099)) (tuple2!48335 key!3918 newValue!99)) lt!1569777)))

(declare-fun b!4357329 () Bool)

(declare-fun res!1790938 () Bool)

(assert (=> b!4357329 (=> (not res!1790938) (not e!2711624))))

(assert (=> b!4357329 (= res!1790938 (= (getValueByKey!455 (toList!2966 lt!1569777) (_1!27461 (tuple2!48335 key!3918 newValue!99))) (Some!10468 (_2!27461 (tuple2!48335 key!3918 newValue!99)))))))

(declare-fun b!4357330 () Bool)

(assert (=> b!4357330 (= e!2711624 (contains!11146 (toList!2966 lt!1569777) (tuple2!48335 key!3918 newValue!99)))))

(assert (= (and d!1288181 res!1790937) b!4357329))

(assert (= (and b!4357329 res!1790938) b!4357330))

(declare-fun m!4971903 () Bool)

(assert (=> d!1288181 m!4971903))

(declare-fun m!4971905 () Bool)

(assert (=> d!1288181 m!4971905))

(declare-fun m!4971907 () Bool)

(assert (=> d!1288181 m!4971907))

(declare-fun m!4971909 () Bool)

(assert (=> d!1288181 m!4971909))

(declare-fun m!4971911 () Bool)

(assert (=> b!4357329 m!4971911))

(declare-fun m!4971913 () Bool)

(assert (=> b!4357330 m!4971913))

(assert (=> d!1287981 d!1288181))

(declare-fun d!1288183 () Bool)

(assert (=> d!1288183 (eq!261 (extractMap!550 (toList!2965 (+!639 lt!1569099 (tuple2!48337 hash!377 newBucket!200)))) (+!640 (extractMap!550 (toList!2965 lt!1569099)) (tuple2!48335 key!3918 newValue!99)))))

(assert (=> d!1288183 true))

(declare-fun _$10!158 () Unit!71637)

(assert (=> d!1288183 (= (choose!26916 lt!1569099 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247) _$10!158)))

(declare-fun bs!631740 () Bool)

(assert (= bs!631740 d!1288183))

(assert (=> bs!631740 m!4970569))

(assert (=> bs!631740 m!4970569))

(assert (=> bs!631740 m!4971207))

(assert (=> bs!631740 m!4971205))

(assert (=> bs!631740 m!4971205))

(assert (=> bs!631740 m!4971207))

(assert (=> bs!631740 m!4971209))

(assert (=> bs!631740 m!4971203))

(assert (=> d!1287981 d!1288183))

(declare-fun bs!631741 () Bool)

(declare-fun d!1288195 () Bool)

(assert (= bs!631741 (and d!1288195 d!1287937)))

(declare-fun lambda!140650 () Int)

(assert (=> bs!631741 (= lambda!140650 lambda!140537)))

(declare-fun bs!631742 () Bool)

(assert (= bs!631742 (and d!1288195 start!421644)))

(assert (=> bs!631742 (= lambda!140650 lambda!140479)))

(declare-fun bs!631744 () Bool)

(assert (= bs!631744 (and d!1288195 d!1288051)))

(assert (=> bs!631744 (= lambda!140650 lambda!140616)))

(declare-fun bs!631745 () Bool)

(assert (= bs!631745 (and d!1288195 d!1287947)))

(assert (=> bs!631745 (= lambda!140650 lambda!140542)))

(declare-fun bs!631746 () Bool)

(assert (= bs!631746 (and d!1288195 d!1287983)))

(assert (=> bs!631746 (= lambda!140650 lambda!140587)))

(declare-fun bs!631747 () Bool)

(assert (= bs!631747 (and d!1288195 d!1287901)))

(assert (=> bs!631747 (= lambda!140650 lambda!140498)))

(declare-fun bs!631748 () Bool)

(assert (= bs!631748 (and d!1288195 d!1287945)))

(assert (=> bs!631748 (= lambda!140650 lambda!140541)))

(declare-fun bs!631749 () Bool)

(assert (= bs!631749 (and d!1288195 d!1287883)))

(assert (=> bs!631749 (not (= lambda!140650 lambda!140494))))

(declare-fun bs!631750 () Bool)

(assert (= bs!631750 (and d!1288195 d!1287981)))

(assert (=> bs!631750 (= lambda!140650 lambda!140586)))

(declare-fun lt!1569790 () ListMap!2209)

(assert (=> d!1288195 (invariantList!678 (toList!2966 lt!1569790))))

(declare-fun e!2711636 () ListMap!2209)

(assert (=> d!1288195 (= lt!1569790 e!2711636)))

(declare-fun c!740872 () Bool)

(assert (=> d!1288195 (= c!740872 ((_ is Cons!48936) (toList!2965 (+!639 lt!1569099 (tuple2!48337 hash!377 newBucket!200)))))))

(assert (=> d!1288195 (forall!9122 (toList!2965 (+!639 lt!1569099 (tuple2!48337 hash!377 newBucket!200))) lambda!140650)))

(assert (=> d!1288195 (= (extractMap!550 (toList!2965 (+!639 lt!1569099 (tuple2!48337 hash!377 newBucket!200)))) lt!1569790)))

(declare-fun b!4357355 () Bool)

(assert (=> b!4357355 (= e!2711636 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 (tuple2!48337 hash!377 newBucket!200))))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 (tuple2!48337 hash!377 newBucket!200)))))))))

(declare-fun b!4357356 () Bool)

(assert (=> b!4357356 (= e!2711636 (ListMap!2210 Nil!48935))))

(assert (= (and d!1288195 c!740872) b!4357355))

(assert (= (and d!1288195 (not c!740872)) b!4357356))

(declare-fun m!4971965 () Bool)

(assert (=> d!1288195 m!4971965))

(declare-fun m!4971967 () Bool)

(assert (=> d!1288195 m!4971967))

(declare-fun m!4971969 () Bool)

(assert (=> b!4357355 m!4971969))

(assert (=> b!4357355 m!4971969))

(declare-fun m!4971971 () Bool)

(assert (=> b!4357355 m!4971971))

(assert (=> d!1287981 d!1288195))

(assert (=> d!1287981 d!1287947))

(declare-fun d!1288199 () Bool)

(assert (=> d!1288199 (= (eq!261 (extractMap!550 (toList!2965 (+!639 lt!1569099 (tuple2!48337 hash!377 newBucket!200)))) (+!640 (extractMap!550 (toList!2965 lt!1569099)) (tuple2!48335 key!3918 newValue!99))) (= (content!7721 (toList!2966 (extractMap!550 (toList!2965 (+!639 lt!1569099 (tuple2!48337 hash!377 newBucket!200)))))) (content!7721 (toList!2966 (+!640 (extractMap!550 (toList!2965 lt!1569099)) (tuple2!48335 key!3918 newValue!99))))))))

(declare-fun bs!631759 () Bool)

(assert (= bs!631759 d!1288199))

(declare-fun m!4971973 () Bool)

(assert (=> bs!631759 m!4971973))

(declare-fun m!4971975 () Bool)

(assert (=> bs!631759 m!4971975))

(assert (=> d!1287981 d!1288199))

(declare-fun d!1288201 () Bool)

(assert (=> d!1288201 (= (invariantList!678 (toList!2966 lt!1569238)) (noDuplicatedKeys!119 (toList!2966 lt!1569238)))))

(declare-fun bs!631761 () Bool)

(assert (= bs!631761 d!1288201))

(declare-fun m!4971977 () Bool)

(assert (=> bs!631761 m!4971977))

(assert (=> d!1287901 d!1288201))

(declare-fun d!1288203 () Bool)

(declare-fun res!1790949 () Bool)

(declare-fun e!2711640 () Bool)

(assert (=> d!1288203 (=> res!1790949 e!2711640)))

(assert (=> d!1288203 (= res!1790949 ((_ is Nil!48936) (toList!2965 lm!1707)))))

(assert (=> d!1288203 (= (forall!9122 (toList!2965 lm!1707) lambda!140498) e!2711640)))

(declare-fun b!4357362 () Bool)

(declare-fun e!2711641 () Bool)

(assert (=> b!4357362 (= e!2711640 e!2711641)))

(declare-fun res!1790950 () Bool)

(assert (=> b!4357362 (=> (not res!1790950) (not e!2711641))))

(assert (=> b!4357362 (= res!1790950 (dynLambda!20635 lambda!140498 (h!54487 (toList!2965 lm!1707))))))

(declare-fun b!4357363 () Bool)

(assert (=> b!4357363 (= e!2711641 (forall!9122 (t!355980 (toList!2965 lm!1707)) lambda!140498))))

(assert (= (and d!1288203 (not res!1790949)) b!4357362))

(assert (= (and b!4357362 res!1790950) b!4357363))

(declare-fun b_lambda!131251 () Bool)

(assert (=> (not b_lambda!131251) (not b!4357362)))

(declare-fun m!4971979 () Bool)

(assert (=> b!4357362 m!4971979))

(declare-fun m!4971981 () Bool)

(assert (=> b!4357363 m!4971981))

(assert (=> d!1287901 d!1288203))

(declare-fun d!1288205 () Bool)

(assert (=> d!1288205 (= (head!9051 (toList!2965 lm!1707)) (h!54487 (toList!2965 lm!1707)))))

(assert (=> d!1287905 d!1288205))

(declare-fun d!1288207 () Bool)

(declare-fun res!1790951 () Bool)

(declare-fun e!2711642 () Bool)

(assert (=> d!1288207 (=> res!1790951 e!2711642)))

(assert (=> d!1288207 (= res!1790951 (not ((_ is Cons!48935) (t!355979 newBucket!200))))))

(assert (=> d!1288207 (= (noDuplicateKeys!491 (t!355979 newBucket!200)) e!2711642)))

(declare-fun b!4357364 () Bool)

(declare-fun e!2711643 () Bool)

(assert (=> b!4357364 (= e!2711642 e!2711643)))

(declare-fun res!1790952 () Bool)

(assert (=> b!4357364 (=> (not res!1790952) (not e!2711643))))

(assert (=> b!4357364 (= res!1790952 (not (containsKey!692 (t!355979 (t!355979 newBucket!200)) (_1!27461 (h!54486 (t!355979 newBucket!200))))))))

(declare-fun b!4357365 () Bool)

(assert (=> b!4357365 (= e!2711643 (noDuplicateKeys!491 (t!355979 (t!355979 newBucket!200))))))

(assert (= (and d!1288207 (not res!1790951)) b!4357364))

(assert (= (and b!4357364 res!1790952) b!4357365))

(declare-fun m!4971983 () Bool)

(assert (=> b!4357364 m!4971983))

(declare-fun m!4971985 () Bool)

(assert (=> b!4357365 m!4971985))

(assert (=> b!4356623 d!1288207))

(declare-fun d!1288209 () Bool)

(declare-fun res!1790953 () Bool)

(declare-fun e!2711644 () Bool)

(assert (=> d!1288209 (=> res!1790953 e!2711644)))

(assert (=> d!1288209 (= res!1790953 ((_ is Nil!48935) newBucket!200))))

(assert (=> d!1288209 (= (forall!9124 newBucket!200 lambda!140513) e!2711644)))

(declare-fun b!4357366 () Bool)

(declare-fun e!2711645 () Bool)

(assert (=> b!4357366 (= e!2711644 e!2711645)))

(declare-fun res!1790954 () Bool)

(assert (=> b!4357366 (=> (not res!1790954) (not e!2711645))))

(assert (=> b!4357366 (= res!1790954 (dynLambda!20636 lambda!140513 (h!54486 newBucket!200)))))

(declare-fun b!4357367 () Bool)

(assert (=> b!4357367 (= e!2711645 (forall!9124 (t!355979 newBucket!200) lambda!140513))))

(assert (= (and d!1288209 (not res!1790953)) b!4357366))

(assert (= (and b!4357366 res!1790954) b!4357367))

(declare-fun b_lambda!131253 () Bool)

(assert (=> (not b_lambda!131253) (not b!4357366)))

(declare-fun m!4971987 () Bool)

(assert (=> b!4357366 m!4971987))

(declare-fun m!4971989 () Bool)

(assert (=> b!4357367 m!4971989))

(assert (=> d!1287907 d!1288209))

(declare-fun lt!1569812 () Bool)

(declare-fun d!1288211 () Bool)

(assert (=> d!1288211 (= lt!1569812 (select (content!7720 (toList!2965 lm!1707)) (tuple2!48337 hash!377 lt!1569096)))))

(declare-fun e!2711647 () Bool)

(assert (=> d!1288211 (= lt!1569812 e!2711647)))

(declare-fun res!1790955 () Bool)

(assert (=> d!1288211 (=> (not res!1790955) (not e!2711647))))

(assert (=> d!1288211 (= res!1790955 ((_ is Cons!48936) (toList!2965 lm!1707)))))

(assert (=> d!1288211 (= (contains!11141 (toList!2965 lm!1707) (tuple2!48337 hash!377 lt!1569096)) lt!1569812)))

(declare-fun b!4357368 () Bool)

(declare-fun e!2711646 () Bool)

(assert (=> b!4357368 (= e!2711647 e!2711646)))

(declare-fun res!1790956 () Bool)

(assert (=> b!4357368 (=> res!1790956 e!2711646)))

(assert (=> b!4357368 (= res!1790956 (= (h!54487 (toList!2965 lm!1707)) (tuple2!48337 hash!377 lt!1569096)))))

(declare-fun b!4357369 () Bool)

(assert (=> b!4357369 (= e!2711646 (contains!11141 (t!355980 (toList!2965 lm!1707)) (tuple2!48337 hash!377 lt!1569096)))))

(assert (= (and d!1288211 res!1790955) b!4357368))

(assert (= (and b!4357368 (not res!1790956)) b!4357369))

(assert (=> d!1288211 m!4970711))

(declare-fun m!4971991 () Bool)

(assert (=> d!1288211 m!4971991))

(declare-fun m!4971993 () Bool)

(assert (=> b!4357369 m!4971993))

(assert (=> d!1287877 d!1288211))

(declare-fun d!1288213 () Bool)

(assert (=> d!1288213 (contains!11141 (toList!2965 lm!1707) (tuple2!48337 hash!377 lt!1569096))))

(assert (=> d!1288213 true))

(declare-fun _$14!759 () Unit!71637)

(assert (=> d!1288213 (= (choose!26911 (toList!2965 lm!1707) hash!377 lt!1569096) _$14!759)))

(declare-fun bs!631788 () Bool)

(assert (= bs!631788 d!1288213))

(assert (=> bs!631788 m!4970763))

(assert (=> d!1287877 d!1288213))

(declare-fun d!1288215 () Bool)

(declare-fun res!1790961 () Bool)

(declare-fun e!2711652 () Bool)

(assert (=> d!1288215 (=> res!1790961 e!2711652)))

(assert (=> d!1288215 (= res!1790961 (or ((_ is Nil!48936) (toList!2965 lm!1707)) ((_ is Nil!48936) (t!355980 (toList!2965 lm!1707)))))))

(assert (=> d!1288215 (= (isStrictlySorted!104 (toList!2965 lm!1707)) e!2711652)))

(declare-fun b!4357374 () Bool)

(declare-fun e!2711653 () Bool)

(assert (=> b!4357374 (= e!2711652 e!2711653)))

(declare-fun res!1790962 () Bool)

(assert (=> b!4357374 (=> (not res!1790962) (not e!2711653))))

(assert (=> b!4357374 (= res!1790962 (bvslt (_1!27462 (h!54487 (toList!2965 lm!1707))) (_1!27462 (h!54487 (t!355980 (toList!2965 lm!1707))))))))

(declare-fun b!4357375 () Bool)

(assert (=> b!4357375 (= e!2711653 (isStrictlySorted!104 (t!355980 (toList!2965 lm!1707))))))

(assert (= (and d!1288215 (not res!1790961)) b!4357374))

(assert (= (and b!4357374 res!1790962) b!4357375))

(declare-fun m!4971995 () Bool)

(assert (=> b!4357375 m!4971995))

(assert (=> d!1287877 d!1288215))

(declare-fun d!1288217 () Bool)

(declare-fun res!1790963 () Bool)

(declare-fun e!2711654 () Bool)

(assert (=> d!1288217 (=> res!1790963 e!2711654)))

(assert (=> d!1288217 (= res!1790963 (not ((_ is Cons!48935) (_2!27462 (h!54487 (toList!2965 lt!1569108))))))))

(assert (=> d!1288217 (= (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 lt!1569108)))) e!2711654)))

(declare-fun b!4357376 () Bool)

(declare-fun e!2711655 () Bool)

(assert (=> b!4357376 (= e!2711654 e!2711655)))

(declare-fun res!1790964 () Bool)

(assert (=> b!4357376 (=> (not res!1790964) (not e!2711655))))

(assert (=> b!4357376 (= res!1790964 (not (containsKey!692 (t!355979 (_2!27462 (h!54487 (toList!2965 lt!1569108)))) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lt!1569108))))))))))

(declare-fun b!4357377 () Bool)

(assert (=> b!4357377 (= e!2711655 (noDuplicateKeys!491 (t!355979 (_2!27462 (h!54487 (toList!2965 lt!1569108))))))))

(assert (= (and d!1288217 (not res!1790963)) b!4357376))

(assert (= (and b!4357376 res!1790964) b!4357377))

(declare-fun m!4971997 () Bool)

(assert (=> b!4357376 m!4971997))

(declare-fun m!4971999 () Bool)

(assert (=> b!4357377 m!4971999))

(assert (=> bs!631533 d!1288217))

(declare-fun bs!631799 () Bool)

(declare-fun b!4357378 () Bool)

(assert (= bs!631799 (and b!4357378 b!4356871)))

(declare-fun lambda!140655 () Int)

(assert (=> bs!631799 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569470) (= lambda!140655 lambda!140582))))

(declare-fun bs!631801 () Bool)

(assert (= bs!631801 (and b!4357378 d!1287949)))

(assert (=> bs!631801 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569453) (= lambda!140655 lambda!140579))))

(declare-fun bs!631803 () Bool)

(assert (= bs!631803 (and b!4357378 b!4356862)))

(assert (=> bs!631803 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569106) (= lambda!140655 lambda!140576))))

(declare-fun bs!631805 () Bool)

(assert (= bs!631805 (and b!4357378 b!4356864)))

(assert (=> bs!631805 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569106) (= lambda!140655 lambda!140577))))

(assert (=> bs!631805 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569449) (= lambda!140655 lambda!140578))))

(assert (=> bs!631799 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569103) (= lambda!140655 lambda!140581))))

(declare-fun bs!631808 () Bool)

(assert (= bs!631808 (and b!4357378 d!1287975)))

(assert (=> bs!631808 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569474) (= lambda!140655 lambda!140583))))

(declare-fun bs!631810 () Bool)

(assert (= bs!631810 (and b!4357378 d!1287907)))

(assert (=> bs!631810 (not (= lambda!140655 lambda!140513))))

(declare-fun bs!631811 () Bool)

(assert (= bs!631811 (and b!4357378 b!4357024)))

(assert (=> bs!631811 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140655 lambda!140611))))

(declare-fun bs!631813 () Bool)

(assert (= bs!631813 (and b!4357378 d!1288049)))

(assert (=> bs!631813 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569582) (= lambda!140655 lambda!140614))))

(declare-fun bs!631815 () Bool)

(assert (= bs!631815 (and b!4357378 b!4356869)))

(assert (=> bs!631815 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569103) (= lambda!140655 lambda!140580))))

(declare-fun bs!631817 () Bool)

(assert (= bs!631817 (and b!4357378 b!4357022)))

(assert (=> bs!631817 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140655 lambda!140609))))

(assert (=> bs!631811 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569578) (= lambda!140655 lambda!140612))))

(assert (=> b!4357378 true))

(declare-fun bs!631818 () Bool)

(declare-fun b!4357380 () Bool)

(assert (= bs!631818 (and b!4357380 b!4356871)))

(declare-fun lambda!140656 () Int)

(assert (=> bs!631818 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569470) (= lambda!140656 lambda!140582))))

(declare-fun bs!631819 () Bool)

(assert (= bs!631819 (and b!4357380 d!1287949)))

(assert (=> bs!631819 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569453) (= lambda!140656 lambda!140579))))

(declare-fun bs!631820 () Bool)

(assert (= bs!631820 (and b!4357380 b!4356862)))

(assert (=> bs!631820 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569106) (= lambda!140656 lambda!140576))))

(declare-fun bs!631821 () Bool)

(assert (= bs!631821 (and b!4357380 b!4357378)))

(assert (=> bs!631821 (= lambda!140656 lambda!140655)))

(declare-fun bs!631822 () Bool)

(assert (= bs!631822 (and b!4357380 b!4356864)))

(assert (=> bs!631822 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569106) (= lambda!140656 lambda!140577))))

(assert (=> bs!631822 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569449) (= lambda!140656 lambda!140578))))

(assert (=> bs!631818 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569103) (= lambda!140656 lambda!140581))))

(declare-fun bs!631823 () Bool)

(assert (= bs!631823 (and b!4357380 d!1287975)))

(assert (=> bs!631823 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569474) (= lambda!140656 lambda!140583))))

(declare-fun bs!631824 () Bool)

(assert (= bs!631824 (and b!4357380 d!1287907)))

(assert (=> bs!631824 (not (= lambda!140656 lambda!140513))))

(declare-fun bs!631825 () Bool)

(assert (= bs!631825 (and b!4357380 b!4357024)))

(assert (=> bs!631825 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140656 lambda!140611))))

(declare-fun bs!631826 () Bool)

(assert (= bs!631826 (and b!4357380 d!1288049)))

(assert (=> bs!631826 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569582) (= lambda!140656 lambda!140614))))

(declare-fun bs!631827 () Bool)

(assert (= bs!631827 (and b!4357380 b!4356869)))

(assert (=> bs!631827 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569103) (= lambda!140656 lambda!140580))))

(declare-fun bs!631828 () Bool)

(assert (= bs!631828 (and b!4357380 b!4357022)))

(assert (=> bs!631828 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140656 lambda!140609))))

(assert (=> bs!631825 (= (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569578) (= lambda!140656 lambda!140612))))

(assert (=> b!4357380 true))

(declare-fun lambda!140657 () Int)

(declare-fun lt!1569818 () ListMap!2209)

(assert (=> bs!631818 (= (= lt!1569818 lt!1569470) (= lambda!140657 lambda!140582))))

(assert (=> bs!631819 (= (= lt!1569818 lt!1569453) (= lambda!140657 lambda!140579))))

(assert (=> b!4357380 (= (= lt!1569818 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140657 lambda!140656))))

(assert (=> bs!631820 (= (= lt!1569818 lt!1569106) (= lambda!140657 lambda!140576))))

(assert (=> bs!631821 (= (= lt!1569818 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140657 lambda!140655))))

(assert (=> bs!631822 (= (= lt!1569818 lt!1569106) (= lambda!140657 lambda!140577))))

(assert (=> bs!631822 (= (= lt!1569818 lt!1569449) (= lambda!140657 lambda!140578))))

(assert (=> bs!631818 (= (= lt!1569818 lt!1569103) (= lambda!140657 lambda!140581))))

(assert (=> bs!631823 (= (= lt!1569818 lt!1569474) (= lambda!140657 lambda!140583))))

(assert (=> bs!631824 (not (= lambda!140657 lambda!140513))))

(assert (=> bs!631825 (= (= lt!1569818 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140657 lambda!140611))))

(assert (=> bs!631826 (= (= lt!1569818 lt!1569582) (= lambda!140657 lambda!140614))))

(assert (=> bs!631827 (= (= lt!1569818 lt!1569103) (= lambda!140657 lambda!140580))))

(assert (=> bs!631828 (= (= lt!1569818 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140657 lambda!140609))))

(assert (=> bs!631825 (= (= lt!1569818 lt!1569578) (= lambda!140657 lambda!140612))))

(assert (=> b!4357380 true))

(declare-fun bs!631839 () Bool)

(declare-fun d!1288219 () Bool)

(assert (= bs!631839 (and d!1288219 b!4356871)))

(declare-fun lt!1569822 () ListMap!2209)

(declare-fun lambda!140659 () Int)

(assert (=> bs!631839 (= (= lt!1569822 lt!1569470) (= lambda!140659 lambda!140582))))

(declare-fun bs!631840 () Bool)

(assert (= bs!631840 (and d!1288219 d!1287949)))

(assert (=> bs!631840 (= (= lt!1569822 lt!1569453) (= lambda!140659 lambda!140579))))

(declare-fun bs!631841 () Bool)

(assert (= bs!631841 (and d!1288219 b!4357380)))

(assert (=> bs!631841 (= (= lt!1569822 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140659 lambda!140656))))

(declare-fun bs!631842 () Bool)

(assert (= bs!631842 (and d!1288219 b!4356862)))

(assert (=> bs!631842 (= (= lt!1569822 lt!1569106) (= lambda!140659 lambda!140576))))

(declare-fun bs!631843 () Bool)

(assert (= bs!631843 (and d!1288219 b!4357378)))

(assert (=> bs!631843 (= (= lt!1569822 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140659 lambda!140655))))

(declare-fun bs!631844 () Bool)

(assert (= bs!631844 (and d!1288219 b!4356864)))

(assert (=> bs!631844 (= (= lt!1569822 lt!1569106) (= lambda!140659 lambda!140577))))

(assert (=> bs!631844 (= (= lt!1569822 lt!1569449) (= lambda!140659 lambda!140578))))

(assert (=> bs!631839 (= (= lt!1569822 lt!1569103) (= lambda!140659 lambda!140581))))

(declare-fun bs!631845 () Bool)

(assert (= bs!631845 (and d!1288219 d!1287975)))

(assert (=> bs!631845 (= (= lt!1569822 lt!1569474) (= lambda!140659 lambda!140583))))

(declare-fun bs!631846 () Bool)

(assert (= bs!631846 (and d!1288219 d!1287907)))

(assert (=> bs!631846 (not (= lambda!140659 lambda!140513))))

(assert (=> bs!631841 (= (= lt!1569822 lt!1569818) (= lambda!140659 lambda!140657))))

(declare-fun bs!631847 () Bool)

(assert (= bs!631847 (and d!1288219 b!4357024)))

(assert (=> bs!631847 (= (= lt!1569822 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140659 lambda!140611))))

(declare-fun bs!631848 () Bool)

(assert (= bs!631848 (and d!1288219 d!1288049)))

(assert (=> bs!631848 (= (= lt!1569822 lt!1569582) (= lambda!140659 lambda!140614))))

(declare-fun bs!631849 () Bool)

(assert (= bs!631849 (and d!1288219 b!4356869)))

(assert (=> bs!631849 (= (= lt!1569822 lt!1569103) (= lambda!140659 lambda!140580))))

(declare-fun bs!631850 () Bool)

(assert (= bs!631850 (and d!1288219 b!4357022)))

(assert (=> bs!631850 (= (= lt!1569822 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140659 lambda!140609))))

(assert (=> bs!631847 (= (= lt!1569822 lt!1569578) (= lambda!140659 lambda!140612))))

(assert (=> d!1288219 true))

(declare-fun e!2711656 () ListMap!2209)

(assert (=> b!4357378 (= e!2711656 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))))))

(declare-fun lt!1569831 () Unit!71637)

(declare-fun call!302831 () Unit!71637)

(assert (=> b!4357378 (= lt!1569831 call!302831)))

(declare-fun call!302832 () Bool)

(assert (=> b!4357378 call!302832))

(declare-fun lt!1569826 () Unit!71637)

(assert (=> b!4357378 (= lt!1569826 lt!1569831)))

(declare-fun call!302830 () Bool)

(assert (=> b!4357378 call!302830))

(declare-fun lt!1569820 () Unit!71637)

(declare-fun Unit!71762 () Unit!71637)

(assert (=> b!4357378 (= lt!1569820 Unit!71762)))

(declare-fun e!2711658 () Bool)

(assert (=> d!1288219 e!2711658))

(declare-fun res!1790965 () Bool)

(assert (=> d!1288219 (=> (not res!1790965) (not e!2711658))))

(assert (=> d!1288219 (= res!1790965 (forall!9124 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707)))) lambda!140659))))

(assert (=> d!1288219 (= lt!1569822 e!2711656)))

(declare-fun c!740874 () Bool)

(assert (=> d!1288219 (= c!740874 ((_ is Nil!48935) (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707))))))))

(assert (=> d!1288219 (noDuplicateKeys!491 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707)))))))

(assert (=> d!1288219 (= (addToMapMapFromBucket!187 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707)))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) lt!1569822)))

(declare-fun b!4357379 () Bool)

(declare-fun e!2711657 () Bool)

(assert (=> b!4357379 (= e!2711657 call!302832)))

(declare-fun bm!302825 () Bool)

(assert (=> bm!302825 (= call!302831 (lemmaContainsAllItsOwnKeys!61 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))))))

(assert (=> b!4357380 (= e!2711656 lt!1569818)))

(declare-fun lt!1569817 () ListMap!2209)

(assert (=> b!4357380 (= lt!1569817 (+!640 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) (h!54486 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707)))))))))

(assert (=> b!4357380 (= lt!1569818 (addToMapMapFromBucket!187 (t!355979 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707))))) (+!640 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) (h!54486 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707))))))))))

(declare-fun lt!1569832 () Unit!71637)

(assert (=> b!4357380 (= lt!1569832 call!302831)))

(assert (=> b!4357380 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) lambda!140656)))

(declare-fun lt!1569823 () Unit!71637)

(assert (=> b!4357380 (= lt!1569823 lt!1569832)))

(assert (=> b!4357380 (forall!9124 (toList!2966 lt!1569817) lambda!140657)))

(declare-fun lt!1569825 () Unit!71637)

(declare-fun Unit!71763 () Unit!71637)

(assert (=> b!4357380 (= lt!1569825 Unit!71763)))

(assert (=> b!4357380 (forall!9124 (t!355979 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707))))) lambda!140657)))

(declare-fun lt!1569816 () Unit!71637)

(declare-fun Unit!71764 () Unit!71637)

(assert (=> b!4357380 (= lt!1569816 Unit!71764)))

(declare-fun lt!1569833 () Unit!71637)

(declare-fun Unit!71765 () Unit!71637)

(assert (=> b!4357380 (= lt!1569833 Unit!71765)))

(declare-fun lt!1569813 () Unit!71637)

(assert (=> b!4357380 (= lt!1569813 (forallContained!1765 (toList!2966 lt!1569817) lambda!140657 (h!54486 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707)))))))))

(assert (=> b!4357380 (contains!11142 lt!1569817 (_1!27461 (h!54486 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707)))))))))

(declare-fun lt!1569821 () Unit!71637)

(declare-fun Unit!71766 () Unit!71637)

(assert (=> b!4357380 (= lt!1569821 Unit!71766)))

(assert (=> b!4357380 (contains!11142 lt!1569818 (_1!27461 (h!54486 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707)))))))))

(declare-fun lt!1569829 () Unit!71637)

(declare-fun Unit!71767 () Unit!71637)

(assert (=> b!4357380 (= lt!1569829 Unit!71767)))

(assert (=> b!4357380 (forall!9124 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707)))) lambda!140657)))

(declare-fun lt!1569814 () Unit!71637)

(declare-fun Unit!71768 () Unit!71637)

(assert (=> b!4357380 (= lt!1569814 Unit!71768)))

(assert (=> b!4357380 (forall!9124 (toList!2966 lt!1569817) lambda!140657)))

(declare-fun lt!1569815 () Unit!71637)

(declare-fun Unit!71769 () Unit!71637)

(assert (=> b!4357380 (= lt!1569815 Unit!71769)))

(declare-fun lt!1569819 () Unit!71637)

(declare-fun Unit!71770 () Unit!71637)

(assert (=> b!4357380 (= lt!1569819 Unit!71770)))

(declare-fun lt!1569830 () Unit!71637)

(assert (=> b!4357380 (= lt!1569830 (addForallContainsKeyThenBeforeAdding!61 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569818 (_1!27461 (h!54486 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707)))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707))))))))))

(assert (=> b!4357380 call!302830))

(declare-fun lt!1569828 () Unit!71637)

(assert (=> b!4357380 (= lt!1569828 lt!1569830)))

(assert (=> b!4357380 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) lambda!140657)))

(declare-fun lt!1569827 () Unit!71637)

(declare-fun Unit!71771 () Unit!71637)

(assert (=> b!4357380 (= lt!1569827 Unit!71771)))

(declare-fun res!1790966 () Bool)

(assert (=> b!4357380 (= res!1790966 (forall!9124 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707)))) lambda!140657))))

(assert (=> b!4357380 (=> (not res!1790966) (not e!2711657))))

(assert (=> b!4357380 e!2711657))

(declare-fun lt!1569824 () Unit!71637)

(declare-fun Unit!71772 () Unit!71637)

(assert (=> b!4357380 (= lt!1569824 Unit!71772)))

(declare-fun bm!302826 () Bool)

(assert (=> bm!302826 (= call!302832 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (ite c!740874 lambda!140655 lambda!140657)))))

(declare-fun b!4357381 () Bool)

(assert (=> b!4357381 (= e!2711658 (invariantList!678 (toList!2966 lt!1569822)))))

(declare-fun bm!302827 () Bool)

(assert (=> bm!302827 (= call!302830 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (ite c!740874 lambda!140655 lambda!140657)))))

(declare-fun b!4357382 () Bool)

(declare-fun res!1790967 () Bool)

(assert (=> b!4357382 (=> (not res!1790967) (not e!2711658))))

(assert (=> b!4357382 (= res!1790967 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) lambda!140659))))

(assert (= (and d!1288219 c!740874) b!4357378))

(assert (= (and d!1288219 (not c!740874)) b!4357380))

(assert (= (and b!4357380 res!1790966) b!4357379))

(assert (= (or b!4357378 b!4357380) bm!302825))

(assert (= (or b!4357378 b!4357380) bm!302827))

(assert (= (or b!4357378 b!4357379) bm!302826))

(assert (= (and d!1288219 res!1790965) b!4357382))

(assert (= (and b!4357382 res!1790967) b!4357381))

(declare-fun m!4972047 () Bool)

(assert (=> b!4357380 m!4972047))

(declare-fun m!4972049 () Bool)

(assert (=> b!4357380 m!4972049))

(declare-fun m!4972051 () Bool)

(assert (=> b!4357380 m!4972051))

(declare-fun m!4972053 () Bool)

(assert (=> b!4357380 m!4972053))

(assert (=> b!4357380 m!4972047))

(declare-fun m!4972055 () Bool)

(assert (=> b!4357380 m!4972055))

(declare-fun m!4972057 () Bool)

(assert (=> b!4357380 m!4972057))

(declare-fun m!4972059 () Bool)

(assert (=> b!4357380 m!4972059))

(assert (=> b!4357380 m!4971217))

(declare-fun m!4972061 () Bool)

(assert (=> b!4357380 m!4972061))

(declare-fun m!4972063 () Bool)

(assert (=> b!4357380 m!4972063))

(declare-fun m!4972065 () Bool)

(assert (=> b!4357380 m!4972065))

(assert (=> b!4357380 m!4972065))

(assert (=> b!4357380 m!4971217))

(assert (=> b!4357380 m!4972057))

(declare-fun m!4972067 () Bool)

(assert (=> b!4357380 m!4972067))

(declare-fun m!4972069 () Bool)

(assert (=> b!4357382 m!4972069))

(declare-fun m!4972071 () Bool)

(assert (=> bm!302826 m!4972071))

(assert (=> bm!302827 m!4972071))

(declare-fun m!4972073 () Bool)

(assert (=> d!1288219 m!4972073))

(declare-fun m!4972075 () Bool)

(assert (=> d!1288219 m!4972075))

(declare-fun m!4972077 () Bool)

(assert (=> b!4357381 m!4972077))

(assert (=> bm!302825 m!4971217))

(declare-fun m!4972079 () Bool)

(assert (=> bm!302825 m!4972079))

(assert (=> b!4356889 d!1288219))

(declare-fun bs!631851 () Bool)

(declare-fun d!1288227 () Bool)

(assert (= bs!631851 (and d!1288227 d!1287937)))

(declare-fun lambda!140660 () Int)

(assert (=> bs!631851 (= lambda!140660 lambda!140537)))

(declare-fun bs!631852 () Bool)

(assert (= bs!631852 (and d!1288227 start!421644)))

(assert (=> bs!631852 (= lambda!140660 lambda!140479)))

(declare-fun bs!631853 () Bool)

(assert (= bs!631853 (and d!1288227 d!1288051)))

(assert (=> bs!631853 (= lambda!140660 lambda!140616)))

(declare-fun bs!631854 () Bool)

(assert (= bs!631854 (and d!1288227 d!1287947)))

(assert (=> bs!631854 (= lambda!140660 lambda!140542)))

(declare-fun bs!631855 () Bool)

(assert (= bs!631855 (and d!1288227 d!1287983)))

(assert (=> bs!631855 (= lambda!140660 lambda!140587)))

(declare-fun bs!631857 () Bool)

(assert (= bs!631857 (and d!1288227 d!1287901)))

(assert (=> bs!631857 (= lambda!140660 lambda!140498)))

(declare-fun bs!631858 () Bool)

(assert (= bs!631858 (and d!1288227 d!1288195)))

(assert (=> bs!631858 (= lambda!140660 lambda!140650)))

(declare-fun bs!631859 () Bool)

(assert (= bs!631859 (and d!1288227 d!1287945)))

(assert (=> bs!631859 (= lambda!140660 lambda!140541)))

(declare-fun bs!631860 () Bool)

(assert (= bs!631860 (and d!1288227 d!1287883)))

(assert (=> bs!631860 (not (= lambda!140660 lambda!140494))))

(declare-fun bs!631861 () Bool)

(assert (= bs!631861 (and d!1288227 d!1287981)))

(assert (=> bs!631861 (= lambda!140660 lambda!140586)))

(declare-fun lt!1569835 () ListMap!2209)

(assert (=> d!1288227 (invariantList!678 (toList!2966 lt!1569835))))

(declare-fun e!2711666 () ListMap!2209)

(assert (=> d!1288227 (= lt!1569835 e!2711666)))

(declare-fun c!740876 () Bool)

(assert (=> d!1288227 (= c!740876 ((_ is Cons!48936) (t!355980 (t!355980 (toList!2965 lm!1707)))))))

(assert (=> d!1288227 (forall!9122 (t!355980 (t!355980 (toList!2965 lm!1707))) lambda!140660)))

(assert (=> d!1288227 (= (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707)))) lt!1569835)))

(declare-fun b!4357391 () Bool)

(assert (=> b!4357391 (= e!2711666 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (t!355980 (t!355980 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (t!355980 (t!355980 (toList!2965 lm!1707)))))))))

(declare-fun b!4357392 () Bool)

(assert (=> b!4357392 (= e!2711666 (ListMap!2210 Nil!48935))))

(assert (= (and d!1288227 c!740876) b!4357391))

(assert (= (and d!1288227 (not c!740876)) b!4357392))

(declare-fun m!4972087 () Bool)

(assert (=> d!1288227 m!4972087))

(declare-fun m!4972089 () Bool)

(assert (=> d!1288227 m!4972089))

(declare-fun m!4972095 () Bool)

(assert (=> b!4357391 m!4972095))

(assert (=> b!4357391 m!4972095))

(declare-fun m!4972097 () Bool)

(assert (=> b!4357391 m!4972097))

(assert (=> b!4356889 d!1288227))

(declare-fun d!1288235 () Bool)

(declare-fun lt!1569841 () Bool)

(assert (=> d!1288235 (= lt!1569841 (select (content!7722 (keys!16530 lt!1569103)) key!3918))))

(declare-fun e!2711669 () Bool)

(assert (=> d!1288235 (= lt!1569841 e!2711669)))

(declare-fun res!1790976 () Bool)

(assert (=> d!1288235 (=> (not res!1790976) (not e!2711669))))

(assert (=> d!1288235 (= res!1790976 ((_ is Cons!48938) (keys!16530 lt!1569103)))))

(assert (=> d!1288235 (= (contains!11145 (keys!16530 lt!1569103) key!3918) lt!1569841)))

(declare-fun b!4357395 () Bool)

(declare-fun e!2711670 () Bool)

(assert (=> b!4357395 (= e!2711669 e!2711670)))

(declare-fun res!1790977 () Bool)

(assert (=> b!4357395 (=> res!1790977 e!2711670)))

(assert (=> b!4357395 (= res!1790977 (= (h!54491 (keys!16530 lt!1569103)) key!3918))))

(declare-fun b!4357396 () Bool)

(assert (=> b!4357396 (= e!2711670 (contains!11145 (t!355982 (keys!16530 lt!1569103)) key!3918))))

(assert (= (and d!1288235 res!1790976) b!4357395))

(assert (= (and b!4357395 (not res!1790977)) b!4357396))

(assert (=> d!1288235 m!4970937))

(declare-fun m!4972103 () Bool)

(assert (=> d!1288235 m!4972103))

(declare-fun m!4972105 () Bool)

(assert (=> d!1288235 m!4972105))

(declare-fun m!4972107 () Bool)

(assert (=> b!4357396 m!4972107))

(assert (=> b!4356801 d!1288235))

(declare-fun bs!631864 () Bool)

(declare-fun b!4357400 () Bool)

(assert (= bs!631864 (and b!4357400 b!4356991)))

(declare-fun lambda!140661 () Int)

(assert (=> bs!631864 (= lambda!140661 lambda!140606)))

(declare-fun bs!631865 () Bool)

(assert (= bs!631865 (and b!4357400 b!4356914)))

(assert (=> bs!631865 (= (= (toList!2966 lt!1569103) (toList!2966 lt!1569110)) (= lambda!140661 lambda!140592))))

(declare-fun bs!631867 () Bool)

(assert (= bs!631867 (and b!4357400 b!4356996)))

(assert (=> bs!631867 (= (= (toList!2966 lt!1569103) (Cons!48935 (h!54486 (toList!2966 lt!1569103)) (t!355979 (toList!2966 lt!1569103)))) (= lambda!140661 lambda!140605))))

(declare-fun bs!631868 () Bool)

(assert (= bs!631868 (and b!4357400 b!4356993)))

(assert (=> bs!631868 (= (= (toList!2966 lt!1569103) (t!355979 (toList!2966 lt!1569103))) (= lambda!140661 lambda!140604))))

(declare-fun bs!631870 () Bool)

(assert (= bs!631870 (and b!4357400 b!4356945)))

(assert (=> bs!631870 (= (= (toList!2966 lt!1569103) (toList!2966 lt!1569104)) (= lambda!140661 lambda!140594))))

(assert (=> b!4357400 true))

(declare-fun bs!631873 () Bool)

(declare-fun b!4357401 () Bool)

(assert (= bs!631873 (and b!4357401 b!4356915)))

(declare-fun lambda!140663 () Int)

(assert (=> bs!631873 (= lambda!140663 lambda!140593)))

(declare-fun bs!631874 () Bool)

(assert (= bs!631874 (and b!4357401 b!4356946)))

(assert (=> bs!631874 (= lambda!140663 lambda!140595)))

(declare-fun bs!631876 () Bool)

(assert (= bs!631876 (and b!4357401 b!4356999)))

(assert (=> bs!631876 (= lambda!140663 lambda!140607)))

(declare-fun d!1288239 () Bool)

(declare-fun e!2711673 () Bool)

(assert (=> d!1288239 e!2711673))

(declare-fun res!1790980 () Bool)

(assert (=> d!1288239 (=> (not res!1790980) (not e!2711673))))

(declare-fun lt!1569843 () List!49062)

(assert (=> d!1288239 (= res!1790980 (noDuplicate!603 lt!1569843))))

(assert (=> d!1288239 (= lt!1569843 (getKeysList!126 (toList!2966 lt!1569103)))))

(assert (=> d!1288239 (= (keys!16530 lt!1569103) lt!1569843)))

(declare-fun b!4357399 () Bool)

(declare-fun res!1790981 () Bool)

(assert (=> b!4357399 (=> (not res!1790981) (not e!2711673))))

(assert (=> b!4357399 (= res!1790981 (= (length!62 lt!1569843) (length!63 (toList!2966 lt!1569103))))))

(declare-fun res!1790982 () Bool)

(assert (=> b!4357400 (=> (not res!1790982) (not e!2711673))))

(assert (=> b!4357400 (= res!1790982 (forall!9125 lt!1569843 lambda!140661))))

(assert (=> b!4357401 (= e!2711673 (= (content!7722 lt!1569843) (content!7722 (map!10645 (toList!2966 lt!1569103) lambda!140663))))))

(assert (= (and d!1288239 res!1790980) b!4357399))

(assert (= (and b!4357399 res!1790981) b!4357400))

(assert (= (and b!4357400 res!1790982) b!4357401))

(declare-fun m!4972115 () Bool)

(assert (=> d!1288239 m!4972115))

(assert (=> d!1288239 m!4970949))

(declare-fun m!4972119 () Bool)

(assert (=> b!4357399 m!4972119))

(assert (=> b!4357399 m!4971333))

(declare-fun m!4972123 () Bool)

(assert (=> b!4357400 m!4972123))

(declare-fun m!4972127 () Bool)

(assert (=> b!4357401 m!4972127))

(declare-fun m!4972131 () Bool)

(assert (=> b!4357401 m!4972131))

(assert (=> b!4357401 m!4972131))

(declare-fun m!4972137 () Bool)

(assert (=> b!4357401 m!4972137))

(assert (=> b!4356801 d!1288239))

(declare-fun d!1288243 () Bool)

(declare-fun res!1790986 () Bool)

(declare-fun e!2711675 () Bool)

(assert (=> d!1288243 (=> res!1790986 e!2711675)))

(assert (=> d!1288243 (= res!1790986 ((_ is Nil!48936) (toList!2965 (+!639 lm!1707 (tuple2!48337 hash!377 newBucket!200)))))))

(assert (=> d!1288243 (= (forall!9122 (toList!2965 (+!639 lm!1707 (tuple2!48337 hash!377 newBucket!200))) lambda!140479) e!2711675)))

(declare-fun b!4357405 () Bool)

(declare-fun e!2711676 () Bool)

(assert (=> b!4357405 (= e!2711675 e!2711676)))

(declare-fun res!1790987 () Bool)

(assert (=> b!4357405 (=> (not res!1790987) (not e!2711676))))

(assert (=> b!4357405 (= res!1790987 (dynLambda!20635 lambda!140479 (h!54487 (toList!2965 (+!639 lm!1707 (tuple2!48337 hash!377 newBucket!200))))))))

(declare-fun b!4357406 () Bool)

(assert (=> b!4357406 (= e!2711676 (forall!9122 (t!355980 (toList!2965 (+!639 lm!1707 (tuple2!48337 hash!377 newBucket!200)))) lambda!140479))))

(assert (= (and d!1288243 (not res!1790986)) b!4357405))

(assert (= (and b!4357405 res!1790987) b!4357406))

(declare-fun b_lambda!131255 () Bool)

(assert (=> (not b_lambda!131255) (not b!4357405)))

(declare-fun m!4972141 () Bool)

(assert (=> b!4357405 m!4972141))

(declare-fun m!4972143 () Bool)

(assert (=> b!4357406 m!4972143))

(assert (=> d!1287989 d!1288243))

(declare-fun d!1288247 () Bool)

(declare-fun e!2711677 () Bool)

(assert (=> d!1288247 e!2711677))

(declare-fun res!1790989 () Bool)

(assert (=> d!1288247 (=> (not res!1790989) (not e!2711677))))

(declare-fun lt!1569846 () ListLongMap!1615)

(assert (=> d!1288247 (= res!1790989 (contains!11143 lt!1569846 (_1!27462 (tuple2!48337 hash!377 newBucket!200))))))

(declare-fun lt!1569848 () List!49060)

(assert (=> d!1288247 (= lt!1569846 (ListLongMap!1616 lt!1569848))))

(declare-fun lt!1569845 () Unit!71637)

(declare-fun lt!1569847 () Unit!71637)

(assert (=> d!1288247 (= lt!1569845 lt!1569847)))

(assert (=> d!1288247 (= (getValueByKey!454 lt!1569848 (_1!27462 (tuple2!48337 hash!377 newBucket!200))) (Some!10467 (_2!27462 (tuple2!48337 hash!377 newBucket!200))))))

(assert (=> d!1288247 (= lt!1569847 (lemmaContainsTupThenGetReturnValue!229 lt!1569848 (_1!27462 (tuple2!48337 hash!377 newBucket!200)) (_2!27462 (tuple2!48337 hash!377 newBucket!200))))))

(assert (=> d!1288247 (= lt!1569848 (insertStrictlySorted!135 (toList!2965 lm!1707) (_1!27462 (tuple2!48337 hash!377 newBucket!200)) (_2!27462 (tuple2!48337 hash!377 newBucket!200))))))

(assert (=> d!1288247 (= (+!639 lm!1707 (tuple2!48337 hash!377 newBucket!200)) lt!1569846)))

(declare-fun b!4357407 () Bool)

(declare-fun res!1790988 () Bool)

(assert (=> b!4357407 (=> (not res!1790988) (not e!2711677))))

(assert (=> b!4357407 (= res!1790988 (= (getValueByKey!454 (toList!2965 lt!1569846) (_1!27462 (tuple2!48337 hash!377 newBucket!200))) (Some!10467 (_2!27462 (tuple2!48337 hash!377 newBucket!200)))))))

(declare-fun b!4357408 () Bool)

(assert (=> b!4357408 (= e!2711677 (contains!11141 (toList!2965 lt!1569846) (tuple2!48337 hash!377 newBucket!200)))))

(assert (= (and d!1288247 res!1790989) b!4357407))

(assert (= (and b!4357407 res!1790988) b!4357408))

(declare-fun m!4972145 () Bool)

(assert (=> d!1288247 m!4972145))

(declare-fun m!4972147 () Bool)

(assert (=> d!1288247 m!4972147))

(declare-fun m!4972149 () Bool)

(assert (=> d!1288247 m!4972149))

(declare-fun m!4972151 () Bool)

(assert (=> d!1288247 m!4972151))

(declare-fun m!4972153 () Bool)

(assert (=> b!4357407 m!4972153))

(declare-fun m!4972155 () Bool)

(assert (=> b!4357408 m!4972155))

(assert (=> d!1287989 d!1288247))

(declare-fun d!1288249 () Bool)

(assert (=> d!1288249 (forall!9122 (toList!2965 (+!639 lm!1707 (tuple2!48337 hash!377 newBucket!200))) lambda!140479)))

(assert (=> d!1288249 true))

(declare-fun _$31!232 () Unit!71637)

(assert (=> d!1288249 (= (choose!26917 lm!1707 lambda!140479 hash!377 newBucket!200) _$31!232)))

(declare-fun bs!631880 () Bool)

(assert (= bs!631880 d!1288249))

(assert (=> bs!631880 m!4971235))

(assert (=> bs!631880 m!4971237))

(assert (=> d!1287989 d!1288249))

(assert (=> d!1287989 d!1287909))

(declare-fun d!1288265 () Bool)

(declare-fun isEmpty!28207 (Option!10468) Bool)

(assert (=> d!1288265 (= (isDefined!7763 (getValueByKey!454 (toList!2965 lm!1707) hash!377)) (not (isEmpty!28207 (getValueByKey!454 (toList!2965 lm!1707) hash!377))))))

(declare-fun bs!631881 () Bool)

(assert (= bs!631881 d!1288265))

(assert (=> bs!631881 m!4970675))

(declare-fun m!4972173 () Bool)

(assert (=> bs!631881 m!4972173))

(assert (=> b!4356771 d!1288265))

(assert (=> b!4356771 d!1288085))

(declare-fun d!1288267 () Bool)

(declare-fun lt!1569850 () Bool)

(assert (=> d!1288267 (= lt!1569850 (select (content!7722 e!2711308) key!3918))))

(declare-fun e!2711690 () Bool)

(assert (=> d!1288267 (= lt!1569850 e!2711690)))

(declare-fun res!1790998 () Bool)

(assert (=> d!1288267 (=> (not res!1790998) (not e!2711690))))

(assert (=> d!1288267 (= res!1790998 ((_ is Cons!48938) e!2711308))))

(assert (=> d!1288267 (= (contains!11145 e!2711308 key!3918) lt!1569850)))

(declare-fun b!4357426 () Bool)

(declare-fun e!2711691 () Bool)

(assert (=> b!4357426 (= e!2711690 e!2711691)))

(declare-fun res!1790999 () Bool)

(assert (=> b!4357426 (=> res!1790999 e!2711691)))

(assert (=> b!4357426 (= res!1790999 (= (h!54491 e!2711308) key!3918))))

(declare-fun b!4357427 () Bool)

(assert (=> b!4357427 (= e!2711691 (contains!11145 (t!355982 e!2711308) key!3918))))

(assert (= (and d!1288267 res!1790998) b!4357426))

(assert (= (and b!4357426 (not res!1790999)) b!4357427))

(declare-fun m!4972175 () Bool)

(assert (=> d!1288267 m!4972175))

(declare-fun m!4972177 () Bool)

(assert (=> d!1288267 m!4972177))

(declare-fun m!4972179 () Bool)

(assert (=> b!4357427 m!4972179))

(assert (=> bm!302763 d!1288267))

(assert (=> b!4356707 d!1288085))

(assert (=> b!4356745 d!1288109))

(assert (=> b!4356745 d!1287999))

(declare-fun d!1288269 () Bool)

(declare-fun res!1791000 () Bool)

(declare-fun e!2711692 () Bool)

(assert (=> d!1288269 (=> res!1791000 e!2711692)))

(assert (=> d!1288269 (= res!1791000 ((_ is Nil!48935) (toList!2966 lt!1569106)))))

(assert (=> d!1288269 (= (forall!9124 (toList!2966 lt!1569106) (ite c!740745 lambda!140576 lambda!140578)) e!2711692)))

(declare-fun b!4357428 () Bool)

(declare-fun e!2711693 () Bool)

(assert (=> b!4357428 (= e!2711692 e!2711693)))

(declare-fun res!1791001 () Bool)

(assert (=> b!4357428 (=> (not res!1791001) (not e!2711693))))

(assert (=> b!4357428 (= res!1791001 (dynLambda!20636 (ite c!740745 lambda!140576 lambda!140578) (h!54486 (toList!2966 lt!1569106))))))

(declare-fun b!4357429 () Bool)

(assert (=> b!4357429 (= e!2711693 (forall!9124 (t!355979 (toList!2966 lt!1569106)) (ite c!740745 lambda!140576 lambda!140578)))))

(assert (= (and d!1288269 (not res!1791000)) b!4357428))

(assert (= (and b!4357428 res!1791001) b!4357429))

(declare-fun b_lambda!131257 () Bool)

(assert (=> (not b_lambda!131257) (not b!4357428)))

(declare-fun m!4972187 () Bool)

(assert (=> b!4357428 m!4972187))

(declare-fun m!4972191 () Bool)

(assert (=> b!4357429 m!4972191))

(assert (=> bm!302776 d!1288269))

(declare-fun bs!631882 () Bool)

(declare-fun d!1288275 () Bool)

(assert (= bs!631882 (and d!1288275 d!1287949)))

(declare-fun lambda!140667 () Int)

(assert (=> bs!631882 (= (= lt!1569106 lt!1569453) (= lambda!140667 lambda!140579))))

(declare-fun bs!631883 () Bool)

(assert (= bs!631883 (and d!1288275 b!4357380)))

(assert (=> bs!631883 (= (= lt!1569106 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140667 lambda!140656))))

(declare-fun bs!631884 () Bool)

(assert (= bs!631884 (and d!1288275 b!4356862)))

(assert (=> bs!631884 (= lambda!140667 lambda!140576)))

(declare-fun bs!631885 () Bool)

(assert (= bs!631885 (and d!1288275 b!4357378)))

(assert (=> bs!631885 (= (= lt!1569106 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140667 lambda!140655))))

(declare-fun bs!631886 () Bool)

(assert (= bs!631886 (and d!1288275 b!4356864)))

(assert (=> bs!631886 (= lambda!140667 lambda!140577)))

(assert (=> bs!631886 (= (= lt!1569106 lt!1569449) (= lambda!140667 lambda!140578))))

(declare-fun bs!631887 () Bool)

(assert (= bs!631887 (and d!1288275 b!4356871)))

(assert (=> bs!631887 (= (= lt!1569106 lt!1569103) (= lambda!140667 lambda!140581))))

(declare-fun bs!631888 () Bool)

(assert (= bs!631888 (and d!1288275 d!1287975)))

(assert (=> bs!631888 (= (= lt!1569106 lt!1569474) (= lambda!140667 lambda!140583))))

(declare-fun bs!631889 () Bool)

(assert (= bs!631889 (and d!1288275 d!1287907)))

(assert (=> bs!631889 (not (= lambda!140667 lambda!140513))))

(assert (=> bs!631883 (= (= lt!1569106 lt!1569818) (= lambda!140667 lambda!140657))))

(declare-fun bs!631890 () Bool)

(assert (= bs!631890 (and d!1288275 b!4357024)))

(assert (=> bs!631890 (= (= lt!1569106 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140667 lambda!140611))))

(declare-fun bs!631891 () Bool)

(assert (= bs!631891 (and d!1288275 d!1288049)))

(assert (=> bs!631891 (= (= lt!1569106 lt!1569582) (= lambda!140667 lambda!140614))))

(declare-fun bs!631892 () Bool)

(assert (= bs!631892 (and d!1288275 b!4356869)))

(assert (=> bs!631892 (= (= lt!1569106 lt!1569103) (= lambda!140667 lambda!140580))))

(declare-fun bs!631893 () Bool)

(assert (= bs!631893 (and d!1288275 d!1288219)))

(assert (=> bs!631893 (= (= lt!1569106 lt!1569822) (= lambda!140667 lambda!140659))))

(assert (=> bs!631887 (= (= lt!1569106 lt!1569470) (= lambda!140667 lambda!140582))))

(declare-fun bs!631894 () Bool)

(assert (= bs!631894 (and d!1288275 b!4357022)))

(assert (=> bs!631894 (= (= lt!1569106 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140667 lambda!140609))))

(assert (=> bs!631890 (= (= lt!1569106 lt!1569578) (= lambda!140667 lambda!140612))))

(assert (=> d!1288275 true))

(assert (=> d!1288275 (forall!9124 (toList!2966 lt!1569106) lambda!140667)))

(declare-fun lt!1569860 () Unit!71637)

(declare-fun choose!26928 (ListMap!2209) Unit!71637)

(assert (=> d!1288275 (= lt!1569860 (choose!26928 lt!1569106))))

(assert (=> d!1288275 (= (lemmaContainsAllItsOwnKeys!61 lt!1569106) lt!1569860)))

(declare-fun bs!631895 () Bool)

(assert (= bs!631895 d!1288275))

(declare-fun m!4972209 () Bool)

(assert (=> bs!631895 m!4972209))

(declare-fun m!4972211 () Bool)

(assert (=> bs!631895 m!4972211))

(assert (=> bm!302774 d!1288275))

(assert (=> b!4356875 d!1288149))

(assert (=> b!4356875 d!1288017))

(assert (=> bm!302779 d!1288041))

(declare-fun d!1288283 () Bool)

(declare-fun e!2711704 () Bool)

(assert (=> d!1288283 e!2711704))

(declare-fun res!1791011 () Bool)

(assert (=> d!1288283 (=> (not res!1791011) (not e!2711704))))

(declare-fun lt!1569863 () ListMap!2209)

(assert (=> d!1288283 (= res!1791011 (contains!11142 lt!1569863 (_1!27461 (tuple2!48335 key!3918 newValue!99))))))

(declare-fun lt!1569864 () List!49059)

(assert (=> d!1288283 (= lt!1569863 (ListMap!2210 lt!1569864))))

(declare-fun lt!1569861 () Unit!71637)

(declare-fun lt!1569862 () Unit!71637)

(assert (=> d!1288283 (= lt!1569861 lt!1569862)))

(assert (=> d!1288283 (= (getValueByKey!455 lt!1569864 (_1!27461 (tuple2!48335 key!3918 newValue!99))) (Some!10468 (_2!27461 (tuple2!48335 key!3918 newValue!99))))))

(assert (=> d!1288283 (= lt!1569862 (lemmaContainsTupThenGetReturnValue!227 lt!1569864 (_1!27461 (tuple2!48335 key!3918 newValue!99)) (_2!27461 (tuple2!48335 key!3918 newValue!99))))))

(assert (=> d!1288283 (= lt!1569864 (insertNoDuplicatedKeys!101 (toList!2966 lt!1569103) (_1!27461 (tuple2!48335 key!3918 newValue!99)) (_2!27461 (tuple2!48335 key!3918 newValue!99))))))

(assert (=> d!1288283 (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569863)))

(declare-fun b!4357447 () Bool)

(declare-fun res!1791012 () Bool)

(assert (=> b!4357447 (=> (not res!1791012) (not e!2711704))))

(assert (=> b!4357447 (= res!1791012 (= (getValueByKey!455 (toList!2966 lt!1569863) (_1!27461 (tuple2!48335 key!3918 newValue!99))) (Some!10468 (_2!27461 (tuple2!48335 key!3918 newValue!99)))))))

(declare-fun b!4357448 () Bool)

(assert (=> b!4357448 (= e!2711704 (contains!11146 (toList!2966 lt!1569863) (tuple2!48335 key!3918 newValue!99)))))

(assert (= (and d!1288283 res!1791011) b!4357447))

(assert (= (and b!4357447 res!1791012) b!4357448))

(declare-fun m!4972213 () Bool)

(assert (=> d!1288283 m!4972213))

(declare-fun m!4972215 () Bool)

(assert (=> d!1288283 m!4972215))

(declare-fun m!4972217 () Bool)

(assert (=> d!1288283 m!4972217))

(declare-fun m!4972219 () Bool)

(assert (=> d!1288283 m!4972219))

(declare-fun m!4972221 () Bool)

(assert (=> b!4357447 m!4972221))

(declare-fun m!4972223 () Bool)

(assert (=> b!4357448 m!4972223))

(assert (=> d!1287939 d!1288283))

(assert (=> d!1287939 d!1287975))

(declare-fun d!1288285 () Bool)

(declare-fun e!2711705 () Bool)

(assert (=> d!1288285 e!2711705))

(declare-fun res!1791013 () Bool)

(assert (=> d!1288285 (=> (not res!1791013) (not e!2711705))))

(declare-fun lt!1569867 () ListMap!2209)

(assert (=> d!1288285 (= res!1791013 (contains!11142 lt!1569867 (_1!27461 (tuple2!48335 key!3918 newValue!99))))))

(declare-fun lt!1569868 () List!49059)

(assert (=> d!1288285 (= lt!1569867 (ListMap!2210 lt!1569868))))

(declare-fun lt!1569865 () Unit!71637)

(declare-fun lt!1569866 () Unit!71637)

(assert (=> d!1288285 (= lt!1569865 lt!1569866)))

(assert (=> d!1288285 (= (getValueByKey!455 lt!1569868 (_1!27461 (tuple2!48335 key!3918 newValue!99))) (Some!10468 (_2!27461 (tuple2!48335 key!3918 newValue!99))))))

(assert (=> d!1288285 (= lt!1569866 (lemmaContainsTupThenGetReturnValue!227 lt!1569868 (_1!27461 (tuple2!48335 key!3918 newValue!99)) (_2!27461 (tuple2!48335 key!3918 newValue!99))))))

(assert (=> d!1288285 (= lt!1569868 (insertNoDuplicatedKeys!101 (toList!2966 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) lt!1569103)) (_1!27461 (tuple2!48335 key!3918 newValue!99)) (_2!27461 (tuple2!48335 key!3918 newValue!99))))))

(assert (=> d!1288285 (= (+!640 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) lt!1569103) (tuple2!48335 key!3918 newValue!99)) lt!1569867)))

(declare-fun b!4357449 () Bool)

(declare-fun res!1791014 () Bool)

(assert (=> b!4357449 (=> (not res!1791014) (not e!2711705))))

(assert (=> b!4357449 (= res!1791014 (= (getValueByKey!455 (toList!2966 lt!1569867) (_1!27461 (tuple2!48335 key!3918 newValue!99))) (Some!10468 (_2!27461 (tuple2!48335 key!3918 newValue!99)))))))

(declare-fun b!4357450 () Bool)

(assert (=> b!4357450 (= e!2711705 (contains!11146 (toList!2966 lt!1569867) (tuple2!48335 key!3918 newValue!99)))))

(assert (= (and d!1288285 res!1791013) b!4357449))

(assert (= (and b!4357449 res!1791014) b!4357450))

(declare-fun m!4972225 () Bool)

(assert (=> d!1288285 m!4972225))

(declare-fun m!4972227 () Bool)

(assert (=> d!1288285 m!4972227))

(declare-fun m!4972229 () Bool)

(assert (=> d!1288285 m!4972229))

(declare-fun m!4972231 () Bool)

(assert (=> d!1288285 m!4972231))

(declare-fun m!4972233 () Bool)

(assert (=> b!4357449 m!4972233))

(declare-fun m!4972235 () Bool)

(assert (=> b!4357450 m!4972235))

(assert (=> d!1287939 d!1288285))

(assert (=> d!1287939 d!1287845))

(declare-fun d!1288287 () Bool)

(assert (=> d!1288287 (eq!261 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (+!640 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) lt!1569103) (tuple2!48335 key!3918 newValue!99)))))

(assert (=> d!1288287 true))

(declare-fun _$15!544 () Unit!71637)

(assert (=> d!1288287 (= (choose!26914 lt!1569103 key!3918 newValue!99 (_2!27462 (h!54487 (toList!2965 lm!1707)))) _$15!544)))

(declare-fun bs!631896 () Bool)

(assert (= bs!631896 d!1288287))

(assert (=> bs!631896 m!4970575))

(assert (=> bs!631896 m!4971023))

(assert (=> bs!631896 m!4971017))

(assert (=> bs!631896 m!4971019))

(assert (=> bs!631896 m!4971017))

(assert (=> bs!631896 m!4970575))

(assert (=> bs!631896 m!4971019))

(assert (=> bs!631896 m!4971023))

(assert (=> bs!631896 m!4971025))

(assert (=> d!1287939 d!1288287))

(declare-fun d!1288289 () Bool)

(assert (=> d!1288289 (= (eq!261 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (+!640 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) lt!1569103) (tuple2!48335 key!3918 newValue!99))) (= (content!7721 (toList!2966 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))))) (content!7721 (toList!2966 (+!640 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) lt!1569103) (tuple2!48335 key!3918 newValue!99))))))))

(declare-fun bs!631897 () Bool)

(assert (= bs!631897 d!1288289))

(declare-fun m!4972247 () Bool)

(assert (=> bs!631897 m!4972247))

(declare-fun m!4972249 () Bool)

(assert (=> bs!631897 m!4972249))

(assert (=> d!1287939 d!1288289))

(declare-fun bs!631898 () Bool)

(declare-fun b!4357483 () Bool)

(assert (= bs!631898 (and b!4357483 d!1287949)))

(declare-fun lambda!140668 () Int)

(assert (=> bs!631898 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569453) (= lambda!140668 lambda!140579))))

(declare-fun bs!631899 () Bool)

(assert (= bs!631899 (and b!4357483 b!4357380)))

(assert (=> bs!631899 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140668 lambda!140656))))

(declare-fun bs!631900 () Bool)

(assert (= bs!631900 (and b!4357483 b!4356862)))

(assert (=> bs!631900 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569106) (= lambda!140668 lambda!140576))))

(declare-fun bs!631901 () Bool)

(assert (= bs!631901 (and b!4357483 b!4357378)))

(assert (=> bs!631901 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140668 lambda!140655))))

(declare-fun bs!631902 () Bool)

(assert (= bs!631902 (and b!4357483 b!4356864)))

(assert (=> bs!631902 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569106) (= lambda!140668 lambda!140577))))

(assert (=> bs!631902 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569449) (= lambda!140668 lambda!140578))))

(declare-fun bs!631903 () Bool)

(assert (= bs!631903 (and b!4357483 d!1287975)))

(assert (=> bs!631903 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569474) (= lambda!140668 lambda!140583))))

(declare-fun bs!631904 () Bool)

(assert (= bs!631904 (and b!4357483 d!1287907)))

(assert (=> bs!631904 (not (= lambda!140668 lambda!140513))))

(assert (=> bs!631899 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569818) (= lambda!140668 lambda!140657))))

(declare-fun bs!631905 () Bool)

(assert (= bs!631905 (and b!4357483 b!4357024)))

(assert (=> bs!631905 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140668 lambda!140611))))

(declare-fun bs!631906 () Bool)

(assert (= bs!631906 (and b!4357483 d!1288049)))

(assert (=> bs!631906 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569582) (= lambda!140668 lambda!140614))))

(declare-fun bs!631907 () Bool)

(assert (= bs!631907 (and b!4357483 b!4356869)))

(assert (=> bs!631907 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569103) (= lambda!140668 lambda!140580))))

(declare-fun bs!631908 () Bool)

(assert (= bs!631908 (and b!4357483 d!1288219)))

(assert (=> bs!631908 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569822) (= lambda!140668 lambda!140659))))

(declare-fun bs!631909 () Bool)

(assert (= bs!631909 (and b!4357483 b!4356871)))

(assert (=> bs!631909 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569470) (= lambda!140668 lambda!140582))))

(declare-fun bs!631910 () Bool)

(assert (= bs!631910 (and b!4357483 d!1288275)))

(assert (=> bs!631910 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569106) (= lambda!140668 lambda!140667))))

(assert (=> bs!631909 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569103) (= lambda!140668 lambda!140581))))

(declare-fun bs!631912 () Bool)

(assert (= bs!631912 (and b!4357483 b!4357022)))

(assert (=> bs!631912 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140668 lambda!140609))))

(assert (=> bs!631905 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569578) (= lambda!140668 lambda!140612))))

(assert (=> b!4357483 true))

(declare-fun bs!631921 () Bool)

(declare-fun b!4357485 () Bool)

(assert (= bs!631921 (and b!4357485 d!1287949)))

(declare-fun lambda!140670 () Int)

(assert (=> bs!631921 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569453) (= lambda!140670 lambda!140579))))

(declare-fun bs!631922 () Bool)

(assert (= bs!631922 (and b!4357485 b!4357380)))

(assert (=> bs!631922 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140670 lambda!140656))))

(declare-fun bs!631924 () Bool)

(assert (= bs!631924 (and b!4357485 b!4357378)))

(assert (=> bs!631924 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140670 lambda!140655))))

(declare-fun bs!631926 () Bool)

(assert (= bs!631926 (and b!4357485 b!4356864)))

(assert (=> bs!631926 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569106) (= lambda!140670 lambda!140577))))

(assert (=> bs!631926 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569449) (= lambda!140670 lambda!140578))))

(declare-fun bs!631929 () Bool)

(assert (= bs!631929 (and b!4357485 d!1287975)))

(assert (=> bs!631929 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569474) (= lambda!140670 lambda!140583))))

(declare-fun bs!631931 () Bool)

(assert (= bs!631931 (and b!4357485 d!1287907)))

(assert (=> bs!631931 (not (= lambda!140670 lambda!140513))))

(assert (=> bs!631922 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569818) (= lambda!140670 lambda!140657))))

(declare-fun bs!631933 () Bool)

(assert (= bs!631933 (and b!4357485 b!4357024)))

(assert (=> bs!631933 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140670 lambda!140611))))

(declare-fun bs!631934 () Bool)

(assert (= bs!631934 (and b!4357485 d!1288049)))

(assert (=> bs!631934 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569582) (= lambda!140670 lambda!140614))))

(declare-fun bs!631936 () Bool)

(assert (= bs!631936 (and b!4357485 b!4356869)))

(assert (=> bs!631936 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569103) (= lambda!140670 lambda!140580))))

(declare-fun bs!631938 () Bool)

(assert (= bs!631938 (and b!4357485 d!1288219)))

(assert (=> bs!631938 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569822) (= lambda!140670 lambda!140659))))

(declare-fun bs!631939 () Bool)

(assert (= bs!631939 (and b!4357485 b!4356871)))

(assert (=> bs!631939 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569470) (= lambda!140670 lambda!140582))))

(declare-fun bs!631941 () Bool)

(assert (= bs!631941 (and b!4357485 b!4356862)))

(assert (=> bs!631941 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569106) (= lambda!140670 lambda!140576))))

(declare-fun bs!631943 () Bool)

(assert (= bs!631943 (and b!4357485 b!4357483)))

(assert (=> bs!631943 (= lambda!140670 lambda!140668)))

(declare-fun bs!631945 () Bool)

(assert (= bs!631945 (and b!4357485 d!1288275)))

(assert (=> bs!631945 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569106) (= lambda!140670 lambda!140667))))

(assert (=> bs!631939 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569103) (= lambda!140670 lambda!140581))))

(declare-fun bs!631946 () Bool)

(assert (= bs!631946 (and b!4357485 b!4357022)))

(assert (=> bs!631946 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140670 lambda!140609))))

(assert (=> bs!631933 (= (= (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569578) (= lambda!140670 lambda!140612))))

(assert (=> b!4357485 true))

(declare-fun lambda!140671 () Int)

(declare-fun lt!1569877 () ListMap!2209)

(assert (=> bs!631921 (= (= lt!1569877 lt!1569453) (= lambda!140671 lambda!140579))))

(assert (=> bs!631922 (= (= lt!1569877 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140671 lambda!140656))))

(assert (=> bs!631926 (= (= lt!1569877 lt!1569106) (= lambda!140671 lambda!140577))))

(assert (=> bs!631926 (= (= lt!1569877 lt!1569449) (= lambda!140671 lambda!140578))))

(assert (=> bs!631929 (= (= lt!1569877 lt!1569474) (= lambda!140671 lambda!140583))))

(assert (=> bs!631931 (not (= lambda!140671 lambda!140513))))

(assert (=> bs!631922 (= (= lt!1569877 lt!1569818) (= lambda!140671 lambda!140657))))

(assert (=> bs!631933 (= (= lt!1569877 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140671 lambda!140611))))

(assert (=> bs!631934 (= (= lt!1569877 lt!1569582) (= lambda!140671 lambda!140614))))

(assert (=> bs!631936 (= (= lt!1569877 lt!1569103) (= lambda!140671 lambda!140580))))

(assert (=> bs!631938 (= (= lt!1569877 lt!1569822) (= lambda!140671 lambda!140659))))

(assert (=> bs!631939 (= (= lt!1569877 lt!1569470) (= lambda!140671 lambda!140582))))

(assert (=> bs!631941 (= (= lt!1569877 lt!1569106) (= lambda!140671 lambda!140576))))

(assert (=> bs!631943 (= (= lt!1569877 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140671 lambda!140668))))

(assert (=> bs!631924 (= (= lt!1569877 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140671 lambda!140655))))

(assert (=> b!4357485 (= (= lt!1569877 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140671 lambda!140670))))

(assert (=> bs!631945 (= (= lt!1569877 lt!1569106) (= lambda!140671 lambda!140667))))

(assert (=> bs!631939 (= (= lt!1569877 lt!1569103) (= lambda!140671 lambda!140581))))

(assert (=> bs!631946 (= (= lt!1569877 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140671 lambda!140609))))

(assert (=> bs!631933 (= (= lt!1569877 lt!1569578) (= lambda!140671 lambda!140612))))

(assert (=> b!4357485 true))

(declare-fun bs!631968 () Bool)

(declare-fun d!1288293 () Bool)

(assert (= bs!631968 (and d!1288293 d!1287949)))

(declare-fun lambda!140674 () Int)

(declare-fun lt!1569881 () ListMap!2209)

(assert (=> bs!631968 (= (= lt!1569881 lt!1569453) (= lambda!140674 lambda!140579))))

(declare-fun bs!631969 () Bool)

(assert (= bs!631969 (and d!1288293 b!4356864)))

(assert (=> bs!631969 (= (= lt!1569881 lt!1569106) (= lambda!140674 lambda!140577))))

(assert (=> bs!631969 (= (= lt!1569881 lt!1569449) (= lambda!140674 lambda!140578))))

(declare-fun bs!631970 () Bool)

(assert (= bs!631970 (and d!1288293 d!1287975)))

(assert (=> bs!631970 (= (= lt!1569881 lt!1569474) (= lambda!140674 lambda!140583))))

(declare-fun bs!631971 () Bool)

(assert (= bs!631971 (and d!1288293 d!1287907)))

(assert (=> bs!631971 (not (= lambda!140674 lambda!140513))))

(declare-fun bs!631972 () Bool)

(assert (= bs!631972 (and d!1288293 b!4357380)))

(assert (=> bs!631972 (= (= lt!1569881 lt!1569818) (= lambda!140674 lambda!140657))))

(declare-fun bs!631973 () Bool)

(assert (= bs!631973 (and d!1288293 b!4357024)))

(assert (=> bs!631973 (= (= lt!1569881 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140674 lambda!140611))))

(declare-fun bs!631974 () Bool)

(assert (= bs!631974 (and d!1288293 d!1288049)))

(assert (=> bs!631974 (= (= lt!1569881 lt!1569582) (= lambda!140674 lambda!140614))))

(declare-fun bs!631975 () Bool)

(assert (= bs!631975 (and d!1288293 b!4356869)))

(assert (=> bs!631975 (= (= lt!1569881 lt!1569103) (= lambda!140674 lambda!140580))))

(declare-fun bs!631976 () Bool)

(assert (= bs!631976 (and d!1288293 d!1288219)))

(assert (=> bs!631976 (= (= lt!1569881 lt!1569822) (= lambda!140674 lambda!140659))))

(declare-fun bs!631977 () Bool)

(assert (= bs!631977 (and d!1288293 b!4356871)))

(assert (=> bs!631977 (= (= lt!1569881 lt!1569470) (= lambda!140674 lambda!140582))))

(assert (=> bs!631972 (= (= lt!1569881 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140674 lambda!140656))))

(declare-fun bs!631978 () Bool)

(assert (= bs!631978 (and d!1288293 b!4357485)))

(assert (=> bs!631978 (= (= lt!1569881 lt!1569877) (= lambda!140674 lambda!140671))))

(declare-fun bs!631979 () Bool)

(assert (= bs!631979 (and d!1288293 b!4356862)))

(assert (=> bs!631979 (= (= lt!1569881 lt!1569106) (= lambda!140674 lambda!140576))))

(declare-fun bs!631980 () Bool)

(assert (= bs!631980 (and d!1288293 b!4357483)))

(assert (=> bs!631980 (= (= lt!1569881 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140674 lambda!140668))))

(declare-fun bs!631981 () Bool)

(assert (= bs!631981 (and d!1288293 b!4357378)))

(assert (=> bs!631981 (= (= lt!1569881 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140674 lambda!140655))))

(assert (=> bs!631978 (= (= lt!1569881 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140674 lambda!140670))))

(declare-fun bs!631982 () Bool)

(assert (= bs!631982 (and d!1288293 d!1288275)))

(assert (=> bs!631982 (= (= lt!1569881 lt!1569106) (= lambda!140674 lambda!140667))))

(assert (=> bs!631977 (= (= lt!1569881 lt!1569103) (= lambda!140674 lambda!140581))))

(declare-fun bs!631983 () Bool)

(assert (= bs!631983 (and d!1288293 b!4357022)))

(assert (=> bs!631983 (= (= lt!1569881 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140674 lambda!140609))))

(assert (=> bs!631973 (= (= lt!1569881 lt!1569578) (= lambda!140674 lambda!140612))))

(assert (=> d!1288293 true))

(declare-fun e!2711723 () ListMap!2209)

(assert (=> b!4357483 (= e!2711723 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)))))

(declare-fun lt!1569890 () Unit!71637)

(declare-fun call!302843 () Unit!71637)

(assert (=> b!4357483 (= lt!1569890 call!302843)))

(declare-fun call!302844 () Bool)

(assert (=> b!4357483 call!302844))

(declare-fun lt!1569885 () Unit!71637)

(assert (=> b!4357483 (= lt!1569885 lt!1569890)))

(declare-fun call!302842 () Bool)

(assert (=> b!4357483 call!302842))

(declare-fun lt!1569879 () Unit!71637)

(declare-fun Unit!71784 () Unit!71637)

(assert (=> b!4357483 (= lt!1569879 Unit!71784)))

(declare-fun e!2711725 () Bool)

(assert (=> d!1288293 e!2711725))

(declare-fun res!1791023 () Bool)

(assert (=> d!1288293 (=> (not res!1791023) (not e!2711725))))

(assert (=> d!1288293 (= res!1791023 (forall!9124 (_2!27462 (h!54487 (toList!2965 lm!1707))) lambda!140674))))

(assert (=> d!1288293 (= lt!1569881 e!2711723)))

(declare-fun c!740897 () Bool)

(assert (=> d!1288293 (= c!740897 ((_ is Nil!48935) (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(assert (=> d!1288293 (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 lm!1707))))))

(assert (=> d!1288293 (= (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) lt!1569881)))

(declare-fun b!4357484 () Bool)

(declare-fun e!2711724 () Bool)

(assert (=> b!4357484 (= e!2711724 call!302844)))

(declare-fun bm!302837 () Bool)

(assert (=> bm!302837 (= call!302843 (lemmaContainsAllItsOwnKeys!61 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))))))

(assert (=> b!4357485 (= e!2711723 lt!1569877)))

(declare-fun lt!1569876 () ListMap!2209)

(assert (=> b!4357485 (= lt!1569876 (+!640 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> b!4357485 (= lt!1569877 (addToMapMapFromBucket!187 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) (+!640 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun lt!1569891 () Unit!71637)

(assert (=> b!4357485 (= lt!1569891 call!302843)))

(assert (=> b!4357485 (forall!9124 (toList!2966 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) lambda!140670)))

(declare-fun lt!1569882 () Unit!71637)

(assert (=> b!4357485 (= lt!1569882 lt!1569891)))

(assert (=> b!4357485 (forall!9124 (toList!2966 lt!1569876) lambda!140671)))

(declare-fun lt!1569884 () Unit!71637)

(declare-fun Unit!71785 () Unit!71637)

(assert (=> b!4357485 (= lt!1569884 Unit!71785)))

(assert (=> b!4357485 (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lambda!140671)))

(declare-fun lt!1569875 () Unit!71637)

(declare-fun Unit!71786 () Unit!71637)

(assert (=> b!4357485 (= lt!1569875 Unit!71786)))

(declare-fun lt!1569892 () Unit!71637)

(declare-fun Unit!71787 () Unit!71637)

(assert (=> b!4357485 (= lt!1569892 Unit!71787)))

(declare-fun lt!1569872 () Unit!71637)

(assert (=> b!4357485 (= lt!1569872 (forallContained!1765 (toList!2966 lt!1569876) lambda!140671 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> b!4357485 (contains!11142 lt!1569876 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun lt!1569880 () Unit!71637)

(declare-fun Unit!71788 () Unit!71637)

(assert (=> b!4357485 (= lt!1569880 Unit!71788)))

(assert (=> b!4357485 (contains!11142 lt!1569877 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun lt!1569888 () Unit!71637)

(declare-fun Unit!71789 () Unit!71637)

(assert (=> b!4357485 (= lt!1569888 Unit!71789)))

(assert (=> b!4357485 (forall!9124 (_2!27462 (h!54487 (toList!2965 lm!1707))) lambda!140671)))

(declare-fun lt!1569873 () Unit!71637)

(declare-fun Unit!71790 () Unit!71637)

(assert (=> b!4357485 (= lt!1569873 Unit!71790)))

(assert (=> b!4357485 (forall!9124 (toList!2966 lt!1569876) lambda!140671)))

(declare-fun lt!1569874 () Unit!71637)

(declare-fun Unit!71791 () Unit!71637)

(assert (=> b!4357485 (= lt!1569874 Unit!71791)))

(declare-fun lt!1569878 () Unit!71637)

(declare-fun Unit!71792 () Unit!71637)

(assert (=> b!4357485 (= lt!1569878 Unit!71792)))

(declare-fun lt!1569889 () Unit!71637)

(assert (=> b!4357485 (= lt!1569889 (addForallContainsKeyThenBeforeAdding!61 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99)) lt!1569877 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> b!4357485 call!302842))

(declare-fun lt!1569887 () Unit!71637)

(assert (=> b!4357485 (= lt!1569887 lt!1569889)))

(assert (=> b!4357485 (forall!9124 (toList!2966 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) lambda!140671)))

(declare-fun lt!1569886 () Unit!71637)

(declare-fun Unit!71793 () Unit!71637)

(assert (=> b!4357485 (= lt!1569886 Unit!71793)))

(declare-fun res!1791024 () Bool)

(assert (=> b!4357485 (= res!1791024 (forall!9124 (_2!27462 (h!54487 (toList!2965 lm!1707))) lambda!140671))))

(assert (=> b!4357485 (=> (not res!1791024) (not e!2711724))))

(assert (=> b!4357485 e!2711724))

(declare-fun lt!1569883 () Unit!71637)

(declare-fun Unit!71794 () Unit!71637)

(assert (=> b!4357485 (= lt!1569883 Unit!71794)))

(declare-fun bm!302838 () Bool)

(assert (=> bm!302838 (= call!302844 (forall!9124 (toList!2966 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (ite c!740897 lambda!140668 lambda!140671)))))

(declare-fun b!4357486 () Bool)

(assert (=> b!4357486 (= e!2711725 (invariantList!678 (toList!2966 lt!1569881)))))

(declare-fun bm!302839 () Bool)

(assert (=> bm!302839 (= call!302842 (forall!9124 (toList!2966 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (ite c!740897 lambda!140668 lambda!140671)))))

(declare-fun b!4357487 () Bool)

(declare-fun res!1791025 () Bool)

(assert (=> b!4357487 (=> (not res!1791025) (not e!2711725))))

(assert (=> b!4357487 (= res!1791025 (forall!9124 (toList!2966 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) lambda!140674))))

(assert (= (and d!1288293 c!740897) b!4357483))

(assert (= (and d!1288293 (not c!740897)) b!4357485))

(assert (= (and b!4357485 res!1791024) b!4357484))

(assert (= (or b!4357483 b!4357485) bm!302837))

(assert (= (or b!4357483 b!4357485) bm!302839))

(assert (= (or b!4357483 b!4357484) bm!302838))

(assert (= (and d!1288293 res!1791023) b!4357487))

(assert (= (and b!4357487 res!1791025) b!4357486))

(declare-fun m!4972255 () Bool)

(assert (=> b!4357485 m!4972255))

(declare-fun m!4972257 () Bool)

(assert (=> b!4357485 m!4972257))

(declare-fun m!4972259 () Bool)

(assert (=> b!4357485 m!4972259))

(declare-fun m!4972261 () Bool)

(assert (=> b!4357485 m!4972261))

(assert (=> b!4357485 m!4972255))

(declare-fun m!4972263 () Bool)

(assert (=> b!4357485 m!4972263))

(declare-fun m!4972265 () Bool)

(assert (=> b!4357485 m!4972265))

(declare-fun m!4972267 () Bool)

(assert (=> b!4357485 m!4972267))

(assert (=> b!4357485 m!4971017))

(declare-fun m!4972269 () Bool)

(assert (=> b!4357485 m!4972269))

(declare-fun m!4972271 () Bool)

(assert (=> b!4357485 m!4972271))

(declare-fun m!4972273 () Bool)

(assert (=> b!4357485 m!4972273))

(assert (=> b!4357485 m!4972273))

(assert (=> b!4357485 m!4971017))

(assert (=> b!4357485 m!4972265))

(declare-fun m!4972275 () Bool)

(assert (=> b!4357485 m!4972275))

(declare-fun m!4972277 () Bool)

(assert (=> b!4357487 m!4972277))

(declare-fun m!4972279 () Bool)

(assert (=> bm!302838 m!4972279))

(assert (=> bm!302839 m!4972279))

(declare-fun m!4972281 () Bool)

(assert (=> d!1288293 m!4972281))

(assert (=> d!1288293 m!4970929))

(declare-fun m!4972283 () Bool)

(assert (=> b!4357486 m!4972283))

(assert (=> bm!302837 m!4971017))

(declare-fun m!4972285 () Bool)

(assert (=> bm!302837 m!4972285))

(assert (=> d!1287939 d!1288293))

(declare-fun bs!632001 () Bool)

(declare-fun b!4357493 () Bool)

(assert (= bs!632001 (and b!4357493 d!1287949)))

(declare-fun lambda!140676 () Int)

(assert (=> bs!632001 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569453) (= lambda!140676 lambda!140579))))

(declare-fun bs!632003 () Bool)

(assert (= bs!632003 (and b!4357493 b!4356864)))

(assert (=> bs!632003 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569106) (= lambda!140676 lambda!140577))))

(assert (=> bs!632003 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569449) (= lambda!140676 lambda!140578))))

(declare-fun bs!632005 () Bool)

(assert (= bs!632005 (and b!4357493 d!1287975)))

(assert (=> bs!632005 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569474) (= lambda!140676 lambda!140583))))

(declare-fun bs!632007 () Bool)

(assert (= bs!632007 (and b!4357493 d!1287907)))

(assert (=> bs!632007 (not (= lambda!140676 lambda!140513))))

(declare-fun bs!632009 () Bool)

(assert (= bs!632009 (and b!4357493 b!4357380)))

(assert (=> bs!632009 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569818) (= lambda!140676 lambda!140657))))

(declare-fun bs!632011 () Bool)

(assert (= bs!632011 (and b!4357493 d!1288049)))

(assert (=> bs!632011 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569582) (= lambda!140676 lambda!140614))))

(declare-fun bs!632012 () Bool)

(assert (= bs!632012 (and b!4357493 b!4356869)))

(assert (=> bs!632012 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569103) (= lambda!140676 lambda!140580))))

(declare-fun bs!632013 () Bool)

(assert (= bs!632013 (and b!4357493 d!1288219)))

(assert (=> bs!632013 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569822) (= lambda!140676 lambda!140659))))

(declare-fun bs!632014 () Bool)

(assert (= bs!632014 (and b!4357493 b!4356871)))

(assert (=> bs!632014 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569470) (= lambda!140676 lambda!140582))))

(assert (=> bs!632009 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140676 lambda!140656))))

(declare-fun bs!632015 () Bool)

(assert (= bs!632015 (and b!4357493 b!4357485)))

(assert (=> bs!632015 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569877) (= lambda!140676 lambda!140671))))

(declare-fun bs!632016 () Bool)

(assert (= bs!632016 (and b!4357493 b!4356862)))

(assert (=> bs!632016 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569106) (= lambda!140676 lambda!140576))))

(declare-fun bs!632017 () Bool)

(assert (= bs!632017 (and b!4357493 b!4357483)))

(assert (=> bs!632017 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140676 lambda!140668))))

(declare-fun bs!632018 () Bool)

(assert (= bs!632018 (and b!4357493 b!4357378)))

(assert (=> bs!632018 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140676 lambda!140655))))

(assert (=> bs!632015 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140676 lambda!140670))))

(declare-fun bs!632019 () Bool)

(assert (= bs!632019 (and b!4357493 d!1288275)))

(assert (=> bs!632019 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569106) (= lambda!140676 lambda!140667))))

(assert (=> bs!632014 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569103) (= lambda!140676 lambda!140581))))

(declare-fun bs!632020 () Bool)

(assert (= bs!632020 (and b!4357493 b!4357024)))

(assert (=> bs!632020 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140676 lambda!140611))))

(declare-fun bs!632021 () Bool)

(assert (= bs!632021 (and b!4357493 d!1288293)))

(assert (=> bs!632021 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569881) (= lambda!140676 lambda!140674))))

(declare-fun bs!632022 () Bool)

(assert (= bs!632022 (and b!4357493 b!4357022)))

(assert (=> bs!632022 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140676 lambda!140609))))

(assert (=> bs!632020 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569578) (= lambda!140676 lambda!140612))))

(assert (=> b!4357493 true))

(declare-fun bs!632023 () Bool)

(declare-fun b!4357495 () Bool)

(assert (= bs!632023 (and b!4357495 b!4356864)))

(declare-fun lambda!140677 () Int)

(assert (=> bs!632023 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569106) (= lambda!140677 lambda!140577))))

(assert (=> bs!632023 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569449) (= lambda!140677 lambda!140578))))

(declare-fun bs!632024 () Bool)

(assert (= bs!632024 (and b!4357495 d!1287975)))

(assert (=> bs!632024 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569474) (= lambda!140677 lambda!140583))))

(declare-fun bs!632025 () Bool)

(assert (= bs!632025 (and b!4357495 d!1287907)))

(assert (=> bs!632025 (not (= lambda!140677 lambda!140513))))

(declare-fun bs!632026 () Bool)

(assert (= bs!632026 (and b!4357495 b!4357380)))

(assert (=> bs!632026 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569818) (= lambda!140677 lambda!140657))))

(declare-fun bs!632027 () Bool)

(assert (= bs!632027 (and b!4357495 d!1288049)))

(assert (=> bs!632027 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569582) (= lambda!140677 lambda!140614))))

(declare-fun bs!632028 () Bool)

(assert (= bs!632028 (and b!4357495 b!4356869)))

(assert (=> bs!632028 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569103) (= lambda!140677 lambda!140580))))

(declare-fun bs!632029 () Bool)

(assert (= bs!632029 (and b!4357495 d!1288219)))

(assert (=> bs!632029 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569822) (= lambda!140677 lambda!140659))))

(declare-fun bs!632030 () Bool)

(assert (= bs!632030 (and b!4357495 b!4356871)))

(assert (=> bs!632030 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569470) (= lambda!140677 lambda!140582))))

(declare-fun bs!632031 () Bool)

(assert (= bs!632031 (and b!4357495 b!4357493)))

(assert (=> bs!632031 (= lambda!140677 lambda!140676)))

(declare-fun bs!632032 () Bool)

(assert (= bs!632032 (and b!4357495 d!1287949)))

(assert (=> bs!632032 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569453) (= lambda!140677 lambda!140579))))

(assert (=> bs!632026 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140677 lambda!140656))))

(declare-fun bs!632033 () Bool)

(assert (= bs!632033 (and b!4357495 b!4357485)))

(assert (=> bs!632033 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569877) (= lambda!140677 lambda!140671))))

(declare-fun bs!632034 () Bool)

(assert (= bs!632034 (and b!4357495 b!4356862)))

(assert (=> bs!632034 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569106) (= lambda!140677 lambda!140576))))

(declare-fun bs!632035 () Bool)

(assert (= bs!632035 (and b!4357495 b!4357483)))

(assert (=> bs!632035 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140677 lambda!140668))))

(declare-fun bs!632036 () Bool)

(assert (= bs!632036 (and b!4357495 b!4357378)))

(assert (=> bs!632036 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140677 lambda!140655))))

(assert (=> bs!632033 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140677 lambda!140670))))

(declare-fun bs!632037 () Bool)

(assert (= bs!632037 (and b!4357495 d!1288275)))

(assert (=> bs!632037 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569106) (= lambda!140677 lambda!140667))))

(assert (=> bs!632030 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569103) (= lambda!140677 lambda!140581))))

(declare-fun bs!632038 () Bool)

(assert (= bs!632038 (and b!4357495 b!4357024)))

(assert (=> bs!632038 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140677 lambda!140611))))

(declare-fun bs!632039 () Bool)

(assert (= bs!632039 (and b!4357495 d!1288293)))

(assert (=> bs!632039 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569881) (= lambda!140677 lambda!140674))))

(declare-fun bs!632040 () Bool)

(assert (= bs!632040 (and b!4357495 b!4357022)))

(assert (=> bs!632040 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140677 lambda!140609))))

(assert (=> bs!632038 (= (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569578) (= lambda!140677 lambda!140612))))

(assert (=> b!4357495 true))

(declare-fun lt!1569919 () ListMap!2209)

(declare-fun lambda!140678 () Int)

(assert (=> bs!632023 (= (= lt!1569919 lt!1569106) (= lambda!140678 lambda!140577))))

(assert (=> bs!632023 (= (= lt!1569919 lt!1569449) (= lambda!140678 lambda!140578))))

(assert (=> bs!632024 (= (= lt!1569919 lt!1569474) (= lambda!140678 lambda!140583))))

(assert (=> bs!632025 (not (= lambda!140678 lambda!140513))))

(assert (=> bs!632026 (= (= lt!1569919 lt!1569818) (= lambda!140678 lambda!140657))))

(assert (=> bs!632027 (= (= lt!1569919 lt!1569582) (= lambda!140678 lambda!140614))))

(assert (=> bs!632028 (= (= lt!1569919 lt!1569103) (= lambda!140678 lambda!140580))))

(assert (=> bs!632029 (= (= lt!1569919 lt!1569822) (= lambda!140678 lambda!140659))))

(assert (=> bs!632030 (= (= lt!1569919 lt!1569470) (= lambda!140678 lambda!140582))))

(assert (=> b!4357495 (= (= lt!1569919 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140678 lambda!140677))))

(assert (=> bs!632031 (= (= lt!1569919 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140678 lambda!140676))))

(assert (=> bs!632032 (= (= lt!1569919 lt!1569453) (= lambda!140678 lambda!140579))))

(assert (=> bs!632026 (= (= lt!1569919 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140678 lambda!140656))))

(assert (=> bs!632033 (= (= lt!1569919 lt!1569877) (= lambda!140678 lambda!140671))))

(assert (=> bs!632034 (= (= lt!1569919 lt!1569106) (= lambda!140678 lambda!140576))))

(assert (=> bs!632035 (= (= lt!1569919 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140678 lambda!140668))))

(assert (=> bs!632036 (= (= lt!1569919 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140678 lambda!140655))))

(assert (=> bs!632033 (= (= lt!1569919 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140678 lambda!140670))))

(assert (=> bs!632037 (= (= lt!1569919 lt!1569106) (= lambda!140678 lambda!140667))))

(assert (=> bs!632030 (= (= lt!1569919 lt!1569103) (= lambda!140678 lambda!140581))))

(assert (=> bs!632038 (= (= lt!1569919 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140678 lambda!140611))))

(assert (=> bs!632039 (= (= lt!1569919 lt!1569881) (= lambda!140678 lambda!140674))))

(assert (=> bs!632040 (= (= lt!1569919 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140678 lambda!140609))))

(assert (=> bs!632038 (= (= lt!1569919 lt!1569578) (= lambda!140678 lambda!140612))))

(assert (=> b!4357495 true))

(declare-fun bs!632043 () Bool)

(declare-fun d!1288297 () Bool)

(assert (= bs!632043 (and d!1288297 b!4356864)))

(declare-fun lt!1569923 () ListMap!2209)

(declare-fun lambda!140679 () Int)

(assert (=> bs!632043 (= (= lt!1569923 lt!1569106) (= lambda!140679 lambda!140577))))

(assert (=> bs!632043 (= (= lt!1569923 lt!1569449) (= lambda!140679 lambda!140578))))

(declare-fun bs!632044 () Bool)

(assert (= bs!632044 (and d!1288297 d!1287975)))

(assert (=> bs!632044 (= (= lt!1569923 lt!1569474) (= lambda!140679 lambda!140583))))

(declare-fun bs!632045 () Bool)

(assert (= bs!632045 (and d!1288297 d!1287907)))

(assert (=> bs!632045 (not (= lambda!140679 lambda!140513))))

(declare-fun bs!632046 () Bool)

(assert (= bs!632046 (and d!1288297 b!4357380)))

(assert (=> bs!632046 (= (= lt!1569923 lt!1569818) (= lambda!140679 lambda!140657))))

(declare-fun bs!632047 () Bool)

(assert (= bs!632047 (and d!1288297 b!4356869)))

(assert (=> bs!632047 (= (= lt!1569923 lt!1569103) (= lambda!140679 lambda!140580))))

(declare-fun bs!632048 () Bool)

(assert (= bs!632048 (and d!1288297 d!1288219)))

(assert (=> bs!632048 (= (= lt!1569923 lt!1569822) (= lambda!140679 lambda!140659))))

(declare-fun bs!632049 () Bool)

(assert (= bs!632049 (and d!1288297 b!4356871)))

(assert (=> bs!632049 (= (= lt!1569923 lt!1569470) (= lambda!140679 lambda!140582))))

(declare-fun bs!632050 () Bool)

(assert (= bs!632050 (and d!1288297 b!4357495)))

(assert (=> bs!632050 (= (= lt!1569923 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140679 lambda!140677))))

(declare-fun bs!632051 () Bool)

(assert (= bs!632051 (and d!1288297 b!4357493)))

(assert (=> bs!632051 (= (= lt!1569923 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140679 lambda!140676))))

(declare-fun bs!632052 () Bool)

(assert (= bs!632052 (and d!1288297 d!1287949)))

(assert (=> bs!632052 (= (= lt!1569923 lt!1569453) (= lambda!140679 lambda!140579))))

(assert (=> bs!632046 (= (= lt!1569923 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140679 lambda!140656))))

(declare-fun bs!632053 () Bool)

(assert (= bs!632053 (and d!1288297 b!4357485)))

(assert (=> bs!632053 (= (= lt!1569923 lt!1569877) (= lambda!140679 lambda!140671))))

(declare-fun bs!632054 () Bool)

(assert (= bs!632054 (and d!1288297 b!4356862)))

(assert (=> bs!632054 (= (= lt!1569923 lt!1569106) (= lambda!140679 lambda!140576))))

(declare-fun bs!632055 () Bool)

(assert (= bs!632055 (and d!1288297 b!4357483)))

(assert (=> bs!632055 (= (= lt!1569923 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140679 lambda!140668))))

(declare-fun bs!632056 () Bool)

(assert (= bs!632056 (and d!1288297 b!4357378)))

(assert (=> bs!632056 (= (= lt!1569923 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140679 lambda!140655))))

(assert (=> bs!632053 (= (= lt!1569923 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140679 lambda!140670))))

(declare-fun bs!632057 () Bool)

(assert (= bs!632057 (and d!1288297 d!1288275)))

(assert (=> bs!632057 (= (= lt!1569923 lt!1569106) (= lambda!140679 lambda!140667))))

(assert (=> bs!632049 (= (= lt!1569923 lt!1569103) (= lambda!140679 lambda!140581))))

(declare-fun bs!632058 () Bool)

(assert (= bs!632058 (and d!1288297 b!4357024)))

(assert (=> bs!632058 (= (= lt!1569923 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140679 lambda!140611))))

(declare-fun bs!632059 () Bool)

(assert (= bs!632059 (and d!1288297 d!1288293)))

(assert (=> bs!632059 (= (= lt!1569923 lt!1569881) (= lambda!140679 lambda!140674))))

(declare-fun bs!632061 () Bool)

(assert (= bs!632061 (and d!1288297 d!1288049)))

(assert (=> bs!632061 (= (= lt!1569923 lt!1569582) (= lambda!140679 lambda!140614))))

(assert (=> bs!632050 (= (= lt!1569923 lt!1569919) (= lambda!140679 lambda!140678))))

(declare-fun bs!632063 () Bool)

(assert (= bs!632063 (and d!1288297 b!4357022)))

(assert (=> bs!632063 (= (= lt!1569923 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140679 lambda!140609))))

(assert (=> bs!632058 (= (= lt!1569923 lt!1569578) (= lambda!140679 lambda!140612))))

(assert (=> d!1288297 true))

(declare-fun e!2711729 () ListMap!2209)

(assert (=> b!4357493 (= e!2711729 (extractMap!550 (t!355980 (toList!2965 lt!1569099))))))

(declare-fun lt!1569932 () Unit!71637)

(declare-fun call!302849 () Unit!71637)

(assert (=> b!4357493 (= lt!1569932 call!302849)))

(declare-fun call!302850 () Bool)

(assert (=> b!4357493 call!302850))

(declare-fun lt!1569927 () Unit!71637)

(assert (=> b!4357493 (= lt!1569927 lt!1569932)))

(declare-fun call!302848 () Bool)

(assert (=> b!4357493 call!302848))

(declare-fun lt!1569921 () Unit!71637)

(declare-fun Unit!71796 () Unit!71637)

(assert (=> b!4357493 (= lt!1569921 Unit!71796)))

(declare-fun e!2711731 () Bool)

(assert (=> d!1288297 e!2711731))

(declare-fun res!1791029 () Bool)

(assert (=> d!1288297 (=> (not res!1791029) (not e!2711731))))

(assert (=> d!1288297 (= res!1791029 (forall!9124 (_2!27462 (h!54487 (toList!2965 lt!1569099))) lambda!140679))))

(assert (=> d!1288297 (= lt!1569923 e!2711729)))

(declare-fun c!740899 () Bool)

(assert (=> d!1288297 (= c!740899 ((_ is Nil!48935) (_2!27462 (h!54487 (toList!2965 lt!1569099)))))))

(assert (=> d!1288297 (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 lt!1569099))))))

(assert (=> d!1288297 (= (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lt!1569099))) (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) lt!1569923)))

(declare-fun b!4357494 () Bool)

(declare-fun e!2711730 () Bool)

(assert (=> b!4357494 (= e!2711730 call!302850)))

(declare-fun bm!302843 () Bool)

(assert (=> bm!302843 (= call!302849 (lemmaContainsAllItsOwnKeys!61 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))))))

(assert (=> b!4357495 (= e!2711729 lt!1569919)))

(declare-fun lt!1569918 () ListMap!2209)

(assert (=> b!4357495 (= lt!1569918 (+!640 (extractMap!550 (t!355980 (toList!2965 lt!1569099))) (h!54486 (_2!27462 (h!54487 (toList!2965 lt!1569099))))))))

(assert (=> b!4357495 (= lt!1569919 (addToMapMapFromBucket!187 (t!355979 (_2!27462 (h!54487 (toList!2965 lt!1569099)))) (+!640 (extractMap!550 (t!355980 (toList!2965 lt!1569099))) (h!54486 (_2!27462 (h!54487 (toList!2965 lt!1569099)))))))))

(declare-fun lt!1569933 () Unit!71637)

(assert (=> b!4357495 (= lt!1569933 call!302849)))

(assert (=> b!4357495 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) lambda!140677)))

(declare-fun lt!1569924 () Unit!71637)

(assert (=> b!4357495 (= lt!1569924 lt!1569933)))

(assert (=> b!4357495 (forall!9124 (toList!2966 lt!1569918) lambda!140678)))

(declare-fun lt!1569926 () Unit!71637)

(declare-fun Unit!71797 () Unit!71637)

(assert (=> b!4357495 (= lt!1569926 Unit!71797)))

(assert (=> b!4357495 (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lt!1569099)))) lambda!140678)))

(declare-fun lt!1569917 () Unit!71637)

(declare-fun Unit!71798 () Unit!71637)

(assert (=> b!4357495 (= lt!1569917 Unit!71798)))

(declare-fun lt!1569934 () Unit!71637)

(declare-fun Unit!71799 () Unit!71637)

(assert (=> b!4357495 (= lt!1569934 Unit!71799)))

(declare-fun lt!1569914 () Unit!71637)

(assert (=> b!4357495 (= lt!1569914 (forallContained!1765 (toList!2966 lt!1569918) lambda!140678 (h!54486 (_2!27462 (h!54487 (toList!2965 lt!1569099))))))))

(assert (=> b!4357495 (contains!11142 lt!1569918 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lt!1569099))))))))

(declare-fun lt!1569922 () Unit!71637)

(declare-fun Unit!71800 () Unit!71637)

(assert (=> b!4357495 (= lt!1569922 Unit!71800)))

(assert (=> b!4357495 (contains!11142 lt!1569919 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lt!1569099))))))))

(declare-fun lt!1569930 () Unit!71637)

(declare-fun Unit!71801 () Unit!71637)

(assert (=> b!4357495 (= lt!1569930 Unit!71801)))

(assert (=> b!4357495 (forall!9124 (_2!27462 (h!54487 (toList!2965 lt!1569099))) lambda!140678)))

(declare-fun lt!1569915 () Unit!71637)

(declare-fun Unit!71802 () Unit!71637)

(assert (=> b!4357495 (= lt!1569915 Unit!71802)))

(assert (=> b!4357495 (forall!9124 (toList!2966 lt!1569918) lambda!140678)))

(declare-fun lt!1569916 () Unit!71637)

(declare-fun Unit!71803 () Unit!71637)

(assert (=> b!4357495 (= lt!1569916 Unit!71803)))

(declare-fun lt!1569920 () Unit!71637)

(declare-fun Unit!71804 () Unit!71637)

(assert (=> b!4357495 (= lt!1569920 Unit!71804)))

(declare-fun lt!1569931 () Unit!71637)

(assert (=> b!4357495 (= lt!1569931 (addForallContainsKeyThenBeforeAdding!61 (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569919 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lt!1569099))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lt!1569099)))))))))

(assert (=> b!4357495 call!302848))

(declare-fun lt!1569929 () Unit!71637)

(assert (=> b!4357495 (= lt!1569929 lt!1569931)))

(assert (=> b!4357495 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) lambda!140678)))

(declare-fun lt!1569928 () Unit!71637)

(declare-fun Unit!71805 () Unit!71637)

(assert (=> b!4357495 (= lt!1569928 Unit!71805)))

(declare-fun res!1791030 () Bool)

(assert (=> b!4357495 (= res!1791030 (forall!9124 (_2!27462 (h!54487 (toList!2965 lt!1569099))) lambda!140678))))

(assert (=> b!4357495 (=> (not res!1791030) (not e!2711730))))

(assert (=> b!4357495 e!2711730))

(declare-fun lt!1569925 () Unit!71637)

(declare-fun Unit!71806 () Unit!71637)

(assert (=> b!4357495 (= lt!1569925 Unit!71806)))

(declare-fun bm!302844 () Bool)

(assert (=> bm!302844 (= call!302850 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (ite c!740899 lambda!140676 lambda!140678)))))

(declare-fun b!4357496 () Bool)

(assert (=> b!4357496 (= e!2711731 (invariantList!678 (toList!2966 lt!1569923)))))

(declare-fun bm!302845 () Bool)

(assert (=> bm!302845 (= call!302848 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (ite c!740899 lambda!140676 lambda!140678)))))

(declare-fun b!4357497 () Bool)

(declare-fun res!1791031 () Bool)

(assert (=> b!4357497 (=> (not res!1791031) (not e!2711731))))

(assert (=> b!4357497 (= res!1791031 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) lambda!140679))))

(assert (= (and d!1288297 c!740899) b!4357493))

(assert (= (and d!1288297 (not c!740899)) b!4357495))

(assert (= (and b!4357495 res!1791030) b!4357494))

(assert (= (or b!4357493 b!4357495) bm!302843))

(assert (= (or b!4357493 b!4357495) bm!302845))

(assert (= (or b!4357493 b!4357494) bm!302844))

(assert (= (and d!1288297 res!1791029) b!4357497))

(assert (= (and b!4357497 res!1791031) b!4357496))

(declare-fun m!4972357 () Bool)

(assert (=> b!4357495 m!4972357))

(declare-fun m!4972361 () Bool)

(assert (=> b!4357495 m!4972361))

(declare-fun m!4972363 () Bool)

(assert (=> b!4357495 m!4972363))

(declare-fun m!4972365 () Bool)

(assert (=> b!4357495 m!4972365))

(assert (=> b!4357495 m!4972357))

(declare-fun m!4972367 () Bool)

(assert (=> b!4357495 m!4972367))

(declare-fun m!4972369 () Bool)

(assert (=> b!4357495 m!4972369))

(declare-fun m!4972371 () Bool)

(assert (=> b!4357495 m!4972371))

(assert (=> b!4357495 m!4971035))

(declare-fun m!4972373 () Bool)

(assert (=> b!4357495 m!4972373))

(declare-fun m!4972375 () Bool)

(assert (=> b!4357495 m!4972375))

(declare-fun m!4972377 () Bool)

(assert (=> b!4357495 m!4972377))

(assert (=> b!4357495 m!4972377))

(assert (=> b!4357495 m!4971035))

(assert (=> b!4357495 m!4972369))

(declare-fun m!4972379 () Bool)

(assert (=> b!4357495 m!4972379))

(declare-fun m!4972381 () Bool)

(assert (=> b!4357497 m!4972381))

(declare-fun m!4972383 () Bool)

(assert (=> bm!302844 m!4972383))

(assert (=> bm!302845 m!4972383))

(declare-fun m!4972385 () Bool)

(assert (=> d!1288297 m!4972385))

(declare-fun m!4972387 () Bool)

(assert (=> d!1288297 m!4972387))

(declare-fun m!4972389 () Bool)

(assert (=> b!4357496 m!4972389))

(assert (=> bm!302843 m!4971035))

(declare-fun m!4972391 () Bool)

(assert (=> bm!302843 m!4972391))

(assert (=> b!4356826 d!1288297))

(declare-fun bs!632070 () Bool)

(declare-fun d!1288323 () Bool)

(assert (= bs!632070 (and d!1288323 d!1287937)))

(declare-fun lambda!140682 () Int)

(assert (=> bs!632070 (= lambda!140682 lambda!140537)))

(declare-fun bs!632071 () Bool)

(assert (= bs!632071 (and d!1288323 start!421644)))

(assert (=> bs!632071 (= lambda!140682 lambda!140479)))

(declare-fun bs!632072 () Bool)

(assert (= bs!632072 (and d!1288323 d!1288227)))

(assert (=> bs!632072 (= lambda!140682 lambda!140660)))

(declare-fun bs!632073 () Bool)

(assert (= bs!632073 (and d!1288323 d!1288051)))

(assert (=> bs!632073 (= lambda!140682 lambda!140616)))

(declare-fun bs!632074 () Bool)

(assert (= bs!632074 (and d!1288323 d!1287947)))

(assert (=> bs!632074 (= lambda!140682 lambda!140542)))

(declare-fun bs!632075 () Bool)

(assert (= bs!632075 (and d!1288323 d!1287983)))

(assert (=> bs!632075 (= lambda!140682 lambda!140587)))

(declare-fun bs!632076 () Bool)

(assert (= bs!632076 (and d!1288323 d!1287901)))

(assert (=> bs!632076 (= lambda!140682 lambda!140498)))

(declare-fun bs!632077 () Bool)

(assert (= bs!632077 (and d!1288323 d!1288195)))

(assert (=> bs!632077 (= lambda!140682 lambda!140650)))

(declare-fun bs!632078 () Bool)

(assert (= bs!632078 (and d!1288323 d!1287945)))

(assert (=> bs!632078 (= lambda!140682 lambda!140541)))

(declare-fun bs!632079 () Bool)

(assert (= bs!632079 (and d!1288323 d!1287883)))

(assert (=> bs!632079 (not (= lambda!140682 lambda!140494))))

(declare-fun bs!632080 () Bool)

(assert (= bs!632080 (and d!1288323 d!1287981)))

(assert (=> bs!632080 (= lambda!140682 lambda!140586)))

(declare-fun lt!1569938 () ListMap!2209)

(assert (=> d!1288323 (invariantList!678 (toList!2966 lt!1569938))))

(declare-fun e!2711747 () ListMap!2209)

(assert (=> d!1288323 (= lt!1569938 e!2711747)))

(declare-fun c!740900 () Bool)

(assert (=> d!1288323 (= c!740900 ((_ is Cons!48936) (t!355980 (toList!2965 lt!1569099))))))

(assert (=> d!1288323 (forall!9122 (t!355980 (toList!2965 lt!1569099)) lambda!140682)))

(assert (=> d!1288323 (= (extractMap!550 (t!355980 (toList!2965 lt!1569099))) lt!1569938)))

(declare-fun b!4357515 () Bool)

(assert (=> b!4357515 (= e!2711747 (addToMapMapFromBucket!187 (_2!27462 (h!54487 (t!355980 (toList!2965 lt!1569099)))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lt!1569099))))))))

(declare-fun b!4357516 () Bool)

(assert (=> b!4357516 (= e!2711747 (ListMap!2210 Nil!48935))))

(assert (= (and d!1288323 c!740900) b!4357515))

(assert (= (and d!1288323 (not c!740900)) b!4357516))

(declare-fun m!4972393 () Bool)

(assert (=> d!1288323 m!4972393))

(declare-fun m!4972395 () Bool)

(assert (=> d!1288323 m!4972395))

(declare-fun m!4972397 () Bool)

(assert (=> b!4357515 m!4972397))

(assert (=> b!4357515 m!4972397))

(declare-fun m!4972399 () Bool)

(assert (=> b!4357515 m!4972399))

(assert (=> b!4356826 d!1288323))

(declare-fun d!1288325 () Bool)

(declare-fun res!1791049 () Bool)

(declare-fun e!2711748 () Bool)

(assert (=> d!1288325 (=> res!1791049 e!2711748)))

(assert (=> d!1288325 (= res!1791049 (and ((_ is Cons!48935) (toList!2966 lt!1569104)) (= (_1!27461 (h!54486 (toList!2966 lt!1569104))) key!3918)))))

(assert (=> d!1288325 (= (containsKey!695 (toList!2966 lt!1569104) key!3918) e!2711748)))

(declare-fun b!4357517 () Bool)

(declare-fun e!2711749 () Bool)

(assert (=> b!4357517 (= e!2711748 e!2711749)))

(declare-fun res!1791050 () Bool)

(assert (=> b!4357517 (=> (not res!1791050) (not e!2711749))))

(assert (=> b!4357517 (= res!1791050 ((_ is Cons!48935) (toList!2966 lt!1569104)))))

(declare-fun b!4357518 () Bool)

(assert (=> b!4357518 (= e!2711749 (containsKey!695 (t!355979 (toList!2966 lt!1569104)) key!3918))))

(assert (= (and d!1288325 (not res!1791049)) b!4357517))

(assert (= (and b!4357517 res!1791050) b!4357518))

(declare-fun m!4972401 () Bool)

(assert (=> b!4357518 m!4972401))

(assert (=> b!4356880 d!1288325))

(declare-fun d!1288327 () Bool)

(assert (=> d!1288327 (containsKey!695 (toList!2966 lt!1569104) key!3918)))

(declare-fun lt!1569941 () Unit!71637)

(declare-fun choose!26932 (List!49059 K!10295) Unit!71637)

(assert (=> d!1288327 (= lt!1569941 (choose!26932 (toList!2966 lt!1569104) key!3918))))

(assert (=> d!1288327 (invariantList!678 (toList!2966 lt!1569104))))

(assert (=> d!1288327 (= (lemmaInGetKeysListThenContainsKey!124 (toList!2966 lt!1569104) key!3918) lt!1569941)))

(declare-fun bs!632083 () Bool)

(assert (= bs!632083 d!1288327))

(assert (=> bs!632083 m!4971171))

(declare-fun m!4972411 () Bool)

(assert (=> bs!632083 m!4972411))

(declare-fun m!4972413 () Bool)

(assert (=> bs!632083 m!4972413))

(assert (=> b!4356880 d!1288327))

(declare-fun d!1288337 () Bool)

(declare-fun res!1791057 () Bool)

(declare-fun e!2711756 () Bool)

(assert (=> d!1288337 (=> res!1791057 e!2711756)))

(assert (=> d!1288337 (= res!1791057 ((_ is Nil!48936) (t!355980 (toList!2965 lm!1707))))))

(assert (=> d!1288337 (= (forall!9122 (t!355980 (toList!2965 lm!1707)) lambda!140479) e!2711756)))

(declare-fun b!4357525 () Bool)

(declare-fun e!2711757 () Bool)

(assert (=> b!4357525 (= e!2711756 e!2711757)))

(declare-fun res!1791058 () Bool)

(assert (=> b!4357525 (=> (not res!1791058) (not e!2711757))))

(assert (=> b!4357525 (= res!1791058 (dynLambda!20635 lambda!140479 (h!54487 (t!355980 (toList!2965 lm!1707)))))))

(declare-fun b!4357526 () Bool)

(assert (=> b!4357526 (= e!2711757 (forall!9122 (t!355980 (t!355980 (toList!2965 lm!1707))) lambda!140479))))

(assert (= (and d!1288337 (not res!1791057)) b!4357525))

(assert (= (and b!4357525 res!1791058) b!4357526))

(declare-fun b_lambda!131271 () Bool)

(assert (=> (not b_lambda!131271) (not b!4357525)))

(declare-fun m!4972425 () Bool)

(assert (=> b!4357525 m!4972425))

(declare-fun m!4972427 () Bool)

(assert (=> b!4357526 m!4972427))

(assert (=> b!4356777 d!1288337))

(declare-fun d!1288343 () Bool)

(assert (=> d!1288343 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569110) key!3918))))

(declare-fun lt!1569943 () Unit!71637)

(assert (=> d!1288343 (= lt!1569943 (choose!26922 (toList!2966 lt!1569110) key!3918))))

(assert (=> d!1288343 (invariantList!678 (toList!2966 lt!1569110))))

(assert (=> d!1288343 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!365 (toList!2966 lt!1569110) key!3918) lt!1569943)))

(declare-fun bs!632084 () Bool)

(assert (= bs!632084 d!1288343))

(assert (=> bs!632084 m!4970819))

(assert (=> bs!632084 m!4970819))

(assert (=> bs!632084 m!4970821))

(declare-fun m!4972429 () Bool)

(assert (=> bs!632084 m!4972429))

(declare-fun m!4972431 () Bool)

(assert (=> bs!632084 m!4972431))

(assert (=> b!4356747 d!1288343))

(assert (=> b!4356747 d!1288095))

(assert (=> b!4356747 d!1288097))

(declare-fun d!1288345 () Bool)

(assert (=> d!1288345 (contains!11145 (getKeysList!126 (toList!2966 lt!1569110)) key!3918)))

(declare-fun lt!1569944 () Unit!71637)

(assert (=> d!1288345 (= lt!1569944 (choose!26923 (toList!2966 lt!1569110) key!3918))))

(assert (=> d!1288345 (invariantList!678 (toList!2966 lt!1569110))))

(assert (=> d!1288345 (= (lemmaInListThenGetKeysListContains!123 (toList!2966 lt!1569110) key!3918) lt!1569944)))

(declare-fun bs!632085 () Bool)

(assert (= bs!632085 d!1288345))

(assert (=> bs!632085 m!4970825))

(assert (=> bs!632085 m!4970825))

(declare-fun m!4972437 () Bool)

(assert (=> bs!632085 m!4972437))

(declare-fun m!4972439 () Bool)

(assert (=> bs!632085 m!4972439))

(assert (=> bs!632085 m!4972431))

(assert (=> b!4356747 d!1288345))

(declare-fun d!1288349 () Bool)

(assert (=> d!1288349 (= (get!15896 (getValueByKey!454 (toList!2965 lm!1707) (_1!27462 (h!54487 (toList!2965 lm!1707))))) (v!43343 (getValueByKey!454 (toList!2965 lm!1707) (_1!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> d!1287917 d!1288349))

(declare-fun d!1288351 () Bool)

(declare-fun c!740902 () Bool)

(assert (=> d!1288351 (= c!740902 (and ((_ is Cons!48936) (toList!2965 lm!1707)) (= (_1!27462 (h!54487 (toList!2965 lm!1707))) (_1!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun e!2711764 () Option!10468)

(assert (=> d!1288351 (= (getValueByKey!454 (toList!2965 lm!1707) (_1!27462 (h!54487 (toList!2965 lm!1707)))) e!2711764)))

(declare-fun b!4357536 () Bool)

(declare-fun e!2711765 () Option!10468)

(assert (=> b!4357536 (= e!2711765 (getValueByKey!454 (t!355980 (toList!2965 lm!1707)) (_1!27462 (h!54487 (toList!2965 lm!1707)))))))

(declare-fun b!4357535 () Bool)

(assert (=> b!4357535 (= e!2711764 e!2711765)))

(declare-fun c!740903 () Bool)

(assert (=> b!4357535 (= c!740903 (and ((_ is Cons!48936) (toList!2965 lm!1707)) (not (= (_1!27462 (h!54487 (toList!2965 lm!1707))) (_1!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun b!4357534 () Bool)

(assert (=> b!4357534 (= e!2711764 (Some!10467 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(declare-fun b!4357537 () Bool)

(assert (=> b!4357537 (= e!2711765 None!10467)))

(assert (= (and d!1288351 c!740902) b!4357534))

(assert (= (and d!1288351 (not c!740902)) b!4357535))

(assert (= (and b!4357535 c!740903) b!4357536))

(assert (= (and b!4357535 (not c!740903)) b!4357537))

(declare-fun m!4972447 () Bool)

(assert (=> b!4357536 m!4972447))

(assert (=> d!1287917 d!1288351))

(declare-fun bs!632086 () Bool)

(declare-fun b!4357542 () Bool)

(assert (= bs!632086 (and b!4357542 b!4356864)))

(declare-fun lambda!140683 () Int)

(assert (=> bs!632086 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569106) (= lambda!140683 lambda!140577))))

(assert (=> bs!632086 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569449) (= lambda!140683 lambda!140578))))

(declare-fun bs!632087 () Bool)

(assert (= bs!632087 (and b!4357542 d!1287975)))

(assert (=> bs!632087 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569474) (= lambda!140683 lambda!140583))))

(declare-fun bs!632088 () Bool)

(assert (= bs!632088 (and b!4357542 d!1287907)))

(assert (=> bs!632088 (not (= lambda!140683 lambda!140513))))

(declare-fun bs!632089 () Bool)

(assert (= bs!632089 (and b!4357542 b!4357380)))

(assert (=> bs!632089 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569818) (= lambda!140683 lambda!140657))))

(declare-fun bs!632090 () Bool)

(assert (= bs!632090 (and b!4357542 d!1288297)))

(assert (=> bs!632090 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569923) (= lambda!140683 lambda!140679))))

(declare-fun bs!632091 () Bool)

(assert (= bs!632091 (and b!4357542 b!4356869)))

(assert (=> bs!632091 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569103) (= lambda!140683 lambda!140580))))

(declare-fun bs!632092 () Bool)

(assert (= bs!632092 (and b!4357542 d!1288219)))

(assert (=> bs!632092 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569822) (= lambda!140683 lambda!140659))))

(declare-fun bs!632093 () Bool)

(assert (= bs!632093 (and b!4357542 b!4356871)))

(assert (=> bs!632093 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569470) (= lambda!140683 lambda!140582))))

(declare-fun bs!632094 () Bool)

(assert (= bs!632094 (and b!4357542 b!4357495)))

(assert (=> bs!632094 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140683 lambda!140677))))

(declare-fun bs!632095 () Bool)

(assert (= bs!632095 (and b!4357542 b!4357493)))

(assert (=> bs!632095 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140683 lambda!140676))))

(declare-fun bs!632096 () Bool)

(assert (= bs!632096 (and b!4357542 d!1287949)))

(assert (=> bs!632096 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569453) (= lambda!140683 lambda!140579))))

(assert (=> bs!632089 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140683 lambda!140656))))

(declare-fun bs!632097 () Bool)

(assert (= bs!632097 (and b!4357542 b!4357485)))

(assert (=> bs!632097 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569877) (= lambda!140683 lambda!140671))))

(declare-fun bs!632098 () Bool)

(assert (= bs!632098 (and b!4357542 b!4356862)))

(assert (=> bs!632098 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569106) (= lambda!140683 lambda!140576))))

(declare-fun bs!632099 () Bool)

(assert (= bs!632099 (and b!4357542 b!4357483)))

(assert (=> bs!632099 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140683 lambda!140668))))

(declare-fun bs!632100 () Bool)

(assert (= bs!632100 (and b!4357542 b!4357378)))

(assert (=> bs!632100 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140683 lambda!140655))))

(assert (=> bs!632097 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140683 lambda!140670))))

(declare-fun bs!632101 () Bool)

(assert (= bs!632101 (and b!4357542 d!1288275)))

(assert (=> bs!632101 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569106) (= lambda!140683 lambda!140667))))

(assert (=> bs!632093 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569103) (= lambda!140683 lambda!140581))))

(declare-fun bs!632102 () Bool)

(assert (= bs!632102 (and b!4357542 b!4357024)))

(assert (=> bs!632102 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140683 lambda!140611))))

(declare-fun bs!632103 () Bool)

(assert (= bs!632103 (and b!4357542 d!1288293)))

(assert (=> bs!632103 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569881) (= lambda!140683 lambda!140674))))

(declare-fun bs!632104 () Bool)

(assert (= bs!632104 (and b!4357542 d!1288049)))

(assert (=> bs!632104 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569582) (= lambda!140683 lambda!140614))))

(assert (=> bs!632094 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569919) (= lambda!140683 lambda!140678))))

(declare-fun bs!632105 () Bool)

(assert (= bs!632105 (and b!4357542 b!4357022)))

(assert (=> bs!632105 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140683 lambda!140609))))

(assert (=> bs!632102 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569578) (= lambda!140683 lambda!140612))))

(assert (=> b!4357542 true))

(declare-fun bs!632106 () Bool)

(declare-fun b!4357544 () Bool)

(assert (= bs!632106 (and b!4357544 b!4356864)))

(declare-fun lambda!140684 () Int)

(assert (=> bs!632106 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569106) (= lambda!140684 lambda!140577))))

(assert (=> bs!632106 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569449) (= lambda!140684 lambda!140578))))

(declare-fun bs!632107 () Bool)

(assert (= bs!632107 (and b!4357544 d!1287907)))

(assert (=> bs!632107 (not (= lambda!140684 lambda!140513))))

(declare-fun bs!632108 () Bool)

(assert (= bs!632108 (and b!4357544 b!4357380)))

(assert (=> bs!632108 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569818) (= lambda!140684 lambda!140657))))

(declare-fun bs!632109 () Bool)

(assert (= bs!632109 (and b!4357544 d!1288297)))

(assert (=> bs!632109 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569923) (= lambda!140684 lambda!140679))))

(declare-fun bs!632110 () Bool)

(assert (= bs!632110 (and b!4357544 b!4356869)))

(assert (=> bs!632110 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569103) (= lambda!140684 lambda!140580))))

(declare-fun bs!632111 () Bool)

(assert (= bs!632111 (and b!4357544 d!1288219)))

(assert (=> bs!632111 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569822) (= lambda!140684 lambda!140659))))

(declare-fun bs!632112 () Bool)

(assert (= bs!632112 (and b!4357544 b!4356871)))

(assert (=> bs!632112 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569470) (= lambda!140684 lambda!140582))))

(declare-fun bs!632113 () Bool)

(assert (= bs!632113 (and b!4357544 b!4357495)))

(assert (=> bs!632113 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140684 lambda!140677))))

(declare-fun bs!632114 () Bool)

(assert (= bs!632114 (and b!4357544 b!4357493)))

(assert (=> bs!632114 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140684 lambda!140676))))

(declare-fun bs!632115 () Bool)

(assert (= bs!632115 (and b!4357544 d!1287949)))

(assert (=> bs!632115 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569453) (= lambda!140684 lambda!140579))))

(assert (=> bs!632108 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140684 lambda!140656))))

(declare-fun bs!632116 () Bool)

(assert (= bs!632116 (and b!4357544 b!4357485)))

(assert (=> bs!632116 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569877) (= lambda!140684 lambda!140671))))

(declare-fun bs!632117 () Bool)

(assert (= bs!632117 (and b!4357544 b!4356862)))

(assert (=> bs!632117 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569106) (= lambda!140684 lambda!140576))))

(declare-fun bs!632118 () Bool)

(assert (= bs!632118 (and b!4357544 b!4357483)))

(assert (=> bs!632118 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140684 lambda!140668))))

(declare-fun bs!632119 () Bool)

(assert (= bs!632119 (and b!4357544 b!4357378)))

(assert (=> bs!632119 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140684 lambda!140655))))

(assert (=> bs!632116 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140684 lambda!140670))))

(declare-fun bs!632120 () Bool)

(assert (= bs!632120 (and b!4357544 d!1288275)))

(assert (=> bs!632120 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569106) (= lambda!140684 lambda!140667))))

(assert (=> bs!632112 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569103) (= lambda!140684 lambda!140581))))

(declare-fun bs!632121 () Bool)

(assert (= bs!632121 (and b!4357544 d!1287975)))

(assert (=> bs!632121 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569474) (= lambda!140684 lambda!140583))))

(declare-fun bs!632122 () Bool)

(assert (= bs!632122 (and b!4357544 b!4357542)))

(assert (=> bs!632122 (= lambda!140684 lambda!140683)))

(declare-fun bs!632123 () Bool)

(assert (= bs!632123 (and b!4357544 b!4357024)))

(assert (=> bs!632123 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140684 lambda!140611))))

(declare-fun bs!632124 () Bool)

(assert (= bs!632124 (and b!4357544 d!1288293)))

(assert (=> bs!632124 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569881) (= lambda!140684 lambda!140674))))

(declare-fun bs!632125 () Bool)

(assert (= bs!632125 (and b!4357544 d!1288049)))

(assert (=> bs!632125 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569582) (= lambda!140684 lambda!140614))))

(assert (=> bs!632113 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569919) (= lambda!140684 lambda!140678))))

(declare-fun bs!632126 () Bool)

(assert (= bs!632126 (and b!4357544 b!4357022)))

(assert (=> bs!632126 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140684 lambda!140609))))

(assert (=> bs!632123 (= (= (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569578) (= lambda!140684 lambda!140612))))

(assert (=> b!4357544 true))

(declare-fun lt!1569954 () ListMap!2209)

(declare-fun lambda!140685 () Int)

(assert (=> bs!632106 (= (= lt!1569954 lt!1569106) (= lambda!140685 lambda!140577))))

(assert (=> bs!632106 (= (= lt!1569954 lt!1569449) (= lambda!140685 lambda!140578))))

(assert (=> bs!632107 (not (= lambda!140685 lambda!140513))))

(assert (=> bs!632108 (= (= lt!1569954 lt!1569818) (= lambda!140685 lambda!140657))))

(assert (=> bs!632110 (= (= lt!1569954 lt!1569103) (= lambda!140685 lambda!140580))))

(assert (=> bs!632111 (= (= lt!1569954 lt!1569822) (= lambda!140685 lambda!140659))))

(assert (=> bs!632112 (= (= lt!1569954 lt!1569470) (= lambda!140685 lambda!140582))))

(assert (=> bs!632113 (= (= lt!1569954 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140685 lambda!140677))))

(assert (=> bs!632114 (= (= lt!1569954 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140685 lambda!140676))))

(assert (=> bs!632115 (= (= lt!1569954 lt!1569453) (= lambda!140685 lambda!140579))))

(assert (=> bs!632108 (= (= lt!1569954 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140685 lambda!140656))))

(assert (=> bs!632116 (= (= lt!1569954 lt!1569877) (= lambda!140685 lambda!140671))))

(assert (=> bs!632117 (= (= lt!1569954 lt!1569106) (= lambda!140685 lambda!140576))))

(assert (=> bs!632118 (= (= lt!1569954 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140685 lambda!140668))))

(assert (=> bs!632119 (= (= lt!1569954 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140685 lambda!140655))))

(assert (=> bs!632116 (= (= lt!1569954 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140685 lambda!140670))))

(assert (=> bs!632120 (= (= lt!1569954 lt!1569106) (= lambda!140685 lambda!140667))))

(assert (=> bs!632112 (= (= lt!1569954 lt!1569103) (= lambda!140685 lambda!140581))))

(assert (=> bs!632121 (= (= lt!1569954 lt!1569474) (= lambda!140685 lambda!140583))))

(assert (=> bs!632122 (= (= lt!1569954 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140685 lambda!140683))))

(assert (=> bs!632109 (= (= lt!1569954 lt!1569923) (= lambda!140685 lambda!140679))))

(assert (=> b!4357544 (= (= lt!1569954 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140685 lambda!140684))))

(assert (=> bs!632123 (= (= lt!1569954 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140685 lambda!140611))))

(assert (=> bs!632124 (= (= lt!1569954 lt!1569881) (= lambda!140685 lambda!140674))))

(assert (=> bs!632125 (= (= lt!1569954 lt!1569582) (= lambda!140685 lambda!140614))))

(assert (=> bs!632113 (= (= lt!1569954 lt!1569919) (= lambda!140685 lambda!140678))))

(assert (=> bs!632126 (= (= lt!1569954 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140685 lambda!140609))))

(assert (=> bs!632123 (= (= lt!1569954 lt!1569578) (= lambda!140685 lambda!140612))))

(assert (=> b!4357544 true))

(declare-fun bs!632127 () Bool)

(declare-fun d!1288355 () Bool)

(assert (= bs!632127 (and d!1288355 b!4356864)))

(declare-fun lt!1569958 () ListMap!2209)

(declare-fun lambda!140686 () Int)

(assert (=> bs!632127 (= (= lt!1569958 lt!1569106) (= lambda!140686 lambda!140577))))

(assert (=> bs!632127 (= (= lt!1569958 lt!1569449) (= lambda!140686 lambda!140578))))

(declare-fun bs!632128 () Bool)

(assert (= bs!632128 (and d!1288355 b!4357544)))

(assert (=> bs!632128 (= (= lt!1569958 lt!1569954) (= lambda!140686 lambda!140685))))

(declare-fun bs!632129 () Bool)

(assert (= bs!632129 (and d!1288355 d!1287907)))

(assert (=> bs!632129 (not (= lambda!140686 lambda!140513))))

(declare-fun bs!632130 () Bool)

(assert (= bs!632130 (and d!1288355 b!4357380)))

(assert (=> bs!632130 (= (= lt!1569958 lt!1569818) (= lambda!140686 lambda!140657))))

(declare-fun bs!632131 () Bool)

(assert (= bs!632131 (and d!1288355 b!4356869)))

(assert (=> bs!632131 (= (= lt!1569958 lt!1569103) (= lambda!140686 lambda!140580))))

(declare-fun bs!632132 () Bool)

(assert (= bs!632132 (and d!1288355 d!1288219)))

(assert (=> bs!632132 (= (= lt!1569958 lt!1569822) (= lambda!140686 lambda!140659))))

(declare-fun bs!632133 () Bool)

(assert (= bs!632133 (and d!1288355 b!4356871)))

(assert (=> bs!632133 (= (= lt!1569958 lt!1569470) (= lambda!140686 lambda!140582))))

(declare-fun bs!632134 () Bool)

(assert (= bs!632134 (and d!1288355 b!4357495)))

(assert (=> bs!632134 (= (= lt!1569958 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140686 lambda!140677))))

(declare-fun bs!632135 () Bool)

(assert (= bs!632135 (and d!1288355 b!4357493)))

(assert (=> bs!632135 (= (= lt!1569958 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140686 lambda!140676))))

(declare-fun bs!632136 () Bool)

(assert (= bs!632136 (and d!1288355 d!1287949)))

(assert (=> bs!632136 (= (= lt!1569958 lt!1569453) (= lambda!140686 lambda!140579))))

(assert (=> bs!632130 (= (= lt!1569958 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140686 lambda!140656))))

(declare-fun bs!632137 () Bool)

(assert (= bs!632137 (and d!1288355 b!4357485)))

(assert (=> bs!632137 (= (= lt!1569958 lt!1569877) (= lambda!140686 lambda!140671))))

(declare-fun bs!632138 () Bool)

(assert (= bs!632138 (and d!1288355 b!4356862)))

(assert (=> bs!632138 (= (= lt!1569958 lt!1569106) (= lambda!140686 lambda!140576))))

(declare-fun bs!632139 () Bool)

(assert (= bs!632139 (and d!1288355 b!4357483)))

(assert (=> bs!632139 (= (= lt!1569958 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140686 lambda!140668))))

(declare-fun bs!632140 () Bool)

(assert (= bs!632140 (and d!1288355 b!4357378)))

(assert (=> bs!632140 (= (= lt!1569958 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140686 lambda!140655))))

(assert (=> bs!632137 (= (= lt!1569958 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140686 lambda!140670))))

(declare-fun bs!632141 () Bool)

(assert (= bs!632141 (and d!1288355 d!1288275)))

(assert (=> bs!632141 (= (= lt!1569958 lt!1569106) (= lambda!140686 lambda!140667))))

(assert (=> bs!632133 (= (= lt!1569958 lt!1569103) (= lambda!140686 lambda!140581))))

(declare-fun bs!632142 () Bool)

(assert (= bs!632142 (and d!1288355 d!1287975)))

(assert (=> bs!632142 (= (= lt!1569958 lt!1569474) (= lambda!140686 lambda!140583))))

(declare-fun bs!632143 () Bool)

(assert (= bs!632143 (and d!1288355 b!4357542)))

(assert (=> bs!632143 (= (= lt!1569958 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140686 lambda!140683))))

(declare-fun bs!632144 () Bool)

(assert (= bs!632144 (and d!1288355 d!1288297)))

(assert (=> bs!632144 (= (= lt!1569958 lt!1569923) (= lambda!140686 lambda!140679))))

(assert (=> bs!632128 (= (= lt!1569958 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140686 lambda!140684))))

(declare-fun bs!632145 () Bool)

(assert (= bs!632145 (and d!1288355 b!4357024)))

(assert (=> bs!632145 (= (= lt!1569958 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140686 lambda!140611))))

(declare-fun bs!632146 () Bool)

(assert (= bs!632146 (and d!1288355 d!1288293)))

(assert (=> bs!632146 (= (= lt!1569958 lt!1569881) (= lambda!140686 lambda!140674))))

(declare-fun bs!632147 () Bool)

(assert (= bs!632147 (and d!1288355 d!1288049)))

(assert (=> bs!632147 (= (= lt!1569958 lt!1569582) (= lambda!140686 lambda!140614))))

(assert (=> bs!632134 (= (= lt!1569958 lt!1569919) (= lambda!140686 lambda!140678))))

(declare-fun bs!632148 () Bool)

(assert (= bs!632148 (and d!1288355 b!4357022)))

(assert (=> bs!632148 (= (= lt!1569958 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140686 lambda!140609))))

(assert (=> bs!632145 (= (= lt!1569958 lt!1569578) (= lambda!140686 lambda!140612))))

(assert (=> d!1288355 true))

(declare-fun e!2711768 () ListMap!2209)

(assert (=> b!4357542 (= e!2711768 (extractMap!550 (t!355980 (toList!2965 lm!1707))))))

(declare-fun lt!1569967 () Unit!71637)

(declare-fun call!302852 () Unit!71637)

(assert (=> b!4357542 (= lt!1569967 call!302852)))

(declare-fun call!302853 () Bool)

(assert (=> b!4357542 call!302853))

(declare-fun lt!1569962 () Unit!71637)

(assert (=> b!4357542 (= lt!1569962 lt!1569967)))

(declare-fun call!302851 () Bool)

(assert (=> b!4357542 call!302851))

(declare-fun lt!1569956 () Unit!71637)

(declare-fun Unit!71818 () Unit!71637)

(assert (=> b!4357542 (= lt!1569956 Unit!71818)))

(declare-fun e!2711770 () Bool)

(assert (=> d!1288355 e!2711770))

(declare-fun res!1791064 () Bool)

(assert (=> d!1288355 (=> (not res!1791064) (not e!2711770))))

(assert (=> d!1288355 (= res!1791064 (forall!9124 (_2!27462 (h!54487 (toList!2965 lm!1707))) lambda!140686))))

(assert (=> d!1288355 (= lt!1569958 e!2711768)))

(declare-fun c!740906 () Bool)

(assert (=> d!1288355 (= c!740906 ((_ is Nil!48935) (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(assert (=> d!1288355 (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 lm!1707))))))

(assert (=> d!1288355 (= (addToMapMapFromBucket!187 (_2!27462 (h!54487 (toList!2965 lm!1707))) (extractMap!550 (t!355980 (toList!2965 lm!1707)))) lt!1569958)))

(declare-fun b!4357543 () Bool)

(declare-fun e!2711769 () Bool)

(assert (=> b!4357543 (= e!2711769 call!302853)))

(declare-fun bm!302846 () Bool)

(assert (=> bm!302846 (= call!302852 (lemmaContainsAllItsOwnKeys!61 (extractMap!550 (t!355980 (toList!2965 lm!1707)))))))

(assert (=> b!4357544 (= e!2711768 lt!1569954)))

(declare-fun lt!1569953 () ListMap!2209)

(assert (=> b!4357544 (= lt!1569953 (+!640 (extractMap!550 (t!355980 (toList!2965 lm!1707))) (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> b!4357544 (= lt!1569954 (addToMapMapFromBucket!187 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) (+!640 (extractMap!550 (t!355980 (toList!2965 lm!1707))) (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun lt!1569968 () Unit!71637)

(assert (=> b!4357544 (= lt!1569968 call!302852)))

(assert (=> b!4357544 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) lambda!140684)))

(declare-fun lt!1569959 () Unit!71637)

(assert (=> b!4357544 (= lt!1569959 lt!1569968)))

(assert (=> b!4357544 (forall!9124 (toList!2966 lt!1569953) lambda!140685)))

(declare-fun lt!1569961 () Unit!71637)

(declare-fun Unit!71819 () Unit!71637)

(assert (=> b!4357544 (= lt!1569961 Unit!71819)))

(assert (=> b!4357544 (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lambda!140685)))

(declare-fun lt!1569952 () Unit!71637)

(declare-fun Unit!71820 () Unit!71637)

(assert (=> b!4357544 (= lt!1569952 Unit!71820)))

(declare-fun lt!1569969 () Unit!71637)

(declare-fun Unit!71821 () Unit!71637)

(assert (=> b!4357544 (= lt!1569969 Unit!71821)))

(declare-fun lt!1569949 () Unit!71637)

(assert (=> b!4357544 (= lt!1569949 (forallContained!1765 (toList!2966 lt!1569953) lambda!140685 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> b!4357544 (contains!11142 lt!1569953 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun lt!1569957 () Unit!71637)

(declare-fun Unit!71822 () Unit!71637)

(assert (=> b!4357544 (= lt!1569957 Unit!71822)))

(assert (=> b!4357544 (contains!11142 lt!1569954 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun lt!1569965 () Unit!71637)

(declare-fun Unit!71823 () Unit!71637)

(assert (=> b!4357544 (= lt!1569965 Unit!71823)))

(assert (=> b!4357544 (forall!9124 (_2!27462 (h!54487 (toList!2965 lm!1707))) lambda!140685)))

(declare-fun lt!1569950 () Unit!71637)

(declare-fun Unit!71824 () Unit!71637)

(assert (=> b!4357544 (= lt!1569950 Unit!71824)))

(assert (=> b!4357544 (forall!9124 (toList!2966 lt!1569953) lambda!140685)))

(declare-fun lt!1569951 () Unit!71637)

(declare-fun Unit!71825 () Unit!71637)

(assert (=> b!4357544 (= lt!1569951 Unit!71825)))

(declare-fun lt!1569955 () Unit!71637)

(declare-fun Unit!71826 () Unit!71637)

(assert (=> b!4357544 (= lt!1569955 Unit!71826)))

(declare-fun lt!1569966 () Unit!71637)

(assert (=> b!4357544 (= lt!1569966 (addForallContainsKeyThenBeforeAdding!61 (extractMap!550 (t!355980 (toList!2965 lm!1707))) lt!1569954 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> b!4357544 call!302851))

(declare-fun lt!1569964 () Unit!71637)

(assert (=> b!4357544 (= lt!1569964 lt!1569966)))

(assert (=> b!4357544 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) lambda!140685)))

(declare-fun lt!1569963 () Unit!71637)

(declare-fun Unit!71827 () Unit!71637)

(assert (=> b!4357544 (= lt!1569963 Unit!71827)))

(declare-fun res!1791065 () Bool)

(assert (=> b!4357544 (= res!1791065 (forall!9124 (_2!27462 (h!54487 (toList!2965 lm!1707))) lambda!140685))))

(assert (=> b!4357544 (=> (not res!1791065) (not e!2711769))))

(assert (=> b!4357544 e!2711769))

(declare-fun lt!1569960 () Unit!71637)

(declare-fun Unit!71828 () Unit!71637)

(assert (=> b!4357544 (= lt!1569960 Unit!71828)))

(declare-fun bm!302847 () Bool)

(assert (=> bm!302847 (= call!302853 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (ite c!740906 lambda!140683 lambda!140685)))))

(declare-fun b!4357545 () Bool)

(assert (=> b!4357545 (= e!2711770 (invariantList!678 (toList!2966 lt!1569958)))))

(declare-fun bm!302848 () Bool)

(assert (=> bm!302848 (= call!302851 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (ite c!740906 lambda!140683 lambda!140685)))))

(declare-fun b!4357546 () Bool)

(declare-fun res!1791066 () Bool)

(assert (=> b!4357546 (=> (not res!1791066) (not e!2711770))))

(assert (=> b!4357546 (= res!1791066 (forall!9124 (toList!2966 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) lambda!140686))))

(assert (= (and d!1288355 c!740906) b!4357542))

(assert (= (and d!1288355 (not c!740906)) b!4357544))

(assert (= (and b!4357544 res!1791065) b!4357543))

(assert (= (or b!4357542 b!4357544) bm!302846))

(assert (= (or b!4357542 b!4357544) bm!302848))

(assert (= (or b!4357542 b!4357543) bm!302847))

(assert (= (and d!1288355 res!1791064) b!4357546))

(assert (= (and b!4357546 res!1791066) b!4357545))

(declare-fun m!4972511 () Bool)

(assert (=> b!4357544 m!4972511))

(declare-fun m!4972513 () Bool)

(assert (=> b!4357544 m!4972513))

(declare-fun m!4972515 () Bool)

(assert (=> b!4357544 m!4972515))

(declare-fun m!4972517 () Bool)

(assert (=> b!4357544 m!4972517))

(assert (=> b!4357544 m!4972511))

(declare-fun m!4972519 () Bool)

(assert (=> b!4357544 m!4972519))

(declare-fun m!4972521 () Bool)

(assert (=> b!4357544 m!4972521))

(declare-fun m!4972523 () Bool)

(assert (=> b!4357544 m!4972523))

(assert (=> b!4357544 m!4970547))

(declare-fun m!4972525 () Bool)

(assert (=> b!4357544 m!4972525))

(declare-fun m!4972527 () Bool)

(assert (=> b!4357544 m!4972527))

(declare-fun m!4972529 () Bool)

(assert (=> b!4357544 m!4972529))

(assert (=> b!4357544 m!4972529))

(assert (=> b!4357544 m!4970547))

(assert (=> b!4357544 m!4972521))

(declare-fun m!4972531 () Bool)

(assert (=> b!4357544 m!4972531))

(declare-fun m!4972533 () Bool)

(assert (=> b!4357546 m!4972533))

(declare-fun m!4972535 () Bool)

(assert (=> bm!302847 m!4972535))

(assert (=> bm!302848 m!4972535))

(declare-fun m!4972537 () Bool)

(assert (=> d!1288355 m!4972537))

(assert (=> d!1288355 m!4970929))

(declare-fun m!4972539 () Bool)

(assert (=> b!4357545 m!4972539))

(assert (=> bm!302846 m!4970547))

(declare-fun m!4972541 () Bool)

(assert (=> bm!302846 m!4972541))

(assert (=> b!4356757 d!1288355))

(assert (=> b!4356757 d!1287983))

(declare-fun d!1288375 () Bool)

(declare-fun res!1791084 () Bool)

(declare-fun e!2711794 () Bool)

(assert (=> d!1288375 (=> res!1791084 e!2711794)))

(assert (=> d!1288375 (= res!1791084 ((_ is Nil!48935) (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(assert (=> d!1288375 (= (forall!9124 (_2!27462 (h!54487 (toList!2965 lm!1707))) lambda!140583) e!2711794)))

(declare-fun b!4357586 () Bool)

(declare-fun e!2711795 () Bool)

(assert (=> b!4357586 (= e!2711794 e!2711795)))

(declare-fun res!1791085 () Bool)

(assert (=> b!4357586 (=> (not res!1791085) (not e!2711795))))

(assert (=> b!4357586 (= res!1791085 (dynLambda!20636 lambda!140583 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun b!4357587 () Bool)

(assert (=> b!4357587 (= e!2711795 (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lambda!140583))))

(assert (= (and d!1288375 (not res!1791084)) b!4357586))

(assert (= (and b!4357586 res!1791085) b!4357587))

(declare-fun b_lambda!131277 () Bool)

(assert (=> (not b_lambda!131277) (not b!4357586)))

(declare-fun m!4972543 () Bool)

(assert (=> b!4357586 m!4972543))

(declare-fun m!4972545 () Bool)

(assert (=> b!4357587 m!4972545))

(assert (=> d!1287975 d!1288375))

(assert (=> d!1287975 d!1288091))

(declare-fun d!1288377 () Bool)

(declare-fun lt!1569986 () Bool)

(assert (=> d!1288377 (= lt!1569986 (select (content!7721 (toList!2966 lt!1569328)) lt!1569109))))

(declare-fun e!2711800 () Bool)

(assert (=> d!1288377 (= lt!1569986 e!2711800)))

(declare-fun res!1791091 () Bool)

(assert (=> d!1288377 (=> (not res!1791091) (not e!2711800))))

(assert (=> d!1288377 (= res!1791091 ((_ is Cons!48935) (toList!2966 lt!1569328)))))

(assert (=> d!1288377 (= (contains!11146 (toList!2966 lt!1569328) lt!1569109) lt!1569986)))

(declare-fun b!4357592 () Bool)

(declare-fun e!2711801 () Bool)

(assert (=> b!4357592 (= e!2711800 e!2711801)))

(declare-fun res!1791090 () Bool)

(assert (=> b!4357592 (=> res!1791090 e!2711801)))

(assert (=> b!4357592 (= res!1791090 (= (h!54486 (toList!2966 lt!1569328)) lt!1569109))))

(declare-fun b!4357593 () Bool)

(assert (=> b!4357593 (= e!2711801 (contains!11146 (t!355979 (toList!2966 lt!1569328)) lt!1569109))))

(assert (= (and d!1288377 res!1791091) b!4357592))

(assert (= (and b!4357592 (not res!1791090)) b!4357593))

(declare-fun m!4972547 () Bool)

(assert (=> d!1288377 m!4972547))

(declare-fun m!4972549 () Bool)

(assert (=> d!1288377 m!4972549))

(declare-fun m!4972551 () Bool)

(assert (=> b!4357593 m!4972551))

(assert (=> b!4356800 d!1288377))

(assert (=> d!1287927 d!1287977))

(declare-fun d!1288379 () Bool)

(assert (=> d!1288379 (contains!11142 lt!1569104 key!3918)))

(assert (=> d!1288379 true))

(declare-fun _$11!1161 () Unit!71637)

(assert (=> d!1288379 (= (choose!26913 (_2!27462 (h!54487 (toList!2965 lm!1707))) key!3918 newValue!99 lt!1569104) _$11!1161)))

(declare-fun bs!632149 () Bool)

(assert (= bs!632149 d!1288379))

(assert (=> bs!632149 m!4970571))

(assert (=> d!1287927 d!1288379))

(assert (=> d!1287927 d!1288091))

(assert (=> b!4356750 d!1288147))

(declare-fun d!1288381 () Bool)

(assert (=> d!1288381 (containsKey!695 (toList!2966 lt!1569110) key!3918)))

(declare-fun lt!1569987 () Unit!71637)

(assert (=> d!1288381 (= lt!1569987 (choose!26932 (toList!2966 lt!1569110) key!3918))))

(assert (=> d!1288381 (invariantList!678 (toList!2966 lt!1569110))))

(assert (=> d!1288381 (= (lemmaInGetKeysListThenContainsKey!124 (toList!2966 lt!1569110) key!3918) lt!1569987)))

(declare-fun bs!632150 () Bool)

(assert (= bs!632150 d!1288381))

(assert (=> bs!632150 m!4970811))

(declare-fun m!4972553 () Bool)

(assert (=> bs!632150 m!4972553))

(assert (=> bs!632150 m!4972431))

(assert (=> b!4356750 d!1288381))

(declare-fun d!1288383 () Bool)

(declare-fun res!1791092 () Bool)

(declare-fun e!2711802 () Bool)

(assert (=> d!1288383 (=> res!1791092 e!2711802)))

(assert (=> d!1288383 (= res!1791092 (not ((_ is Cons!48935) (_2!27462 (tuple2!48337 hash!377 newBucket!200)))))))

(assert (=> d!1288383 (= (noDuplicateKeys!491 (_2!27462 (tuple2!48337 hash!377 newBucket!200))) e!2711802)))

(declare-fun b!4357594 () Bool)

(declare-fun e!2711803 () Bool)

(assert (=> b!4357594 (= e!2711802 e!2711803)))

(declare-fun res!1791093 () Bool)

(assert (=> b!4357594 (=> (not res!1791093) (not e!2711803))))

(assert (=> b!4357594 (= res!1791093 (not (containsKey!692 (t!355979 (_2!27462 (tuple2!48337 hash!377 newBucket!200))) (_1!27461 (h!54486 (_2!27462 (tuple2!48337 hash!377 newBucket!200)))))))))

(declare-fun b!4357595 () Bool)

(assert (=> b!4357595 (= e!2711803 (noDuplicateKeys!491 (t!355979 (_2!27462 (tuple2!48337 hash!377 newBucket!200)))))))

(assert (= (and d!1288383 (not res!1791092)) b!4357594))

(assert (= (and b!4357594 res!1791093) b!4357595))

(declare-fun m!4972555 () Bool)

(assert (=> b!4357594 m!4972555))

(declare-fun m!4972557 () Bool)

(assert (=> b!4357595 m!4972557))

(assert (=> bs!631535 d!1288383))

(declare-fun b!4357599 () Bool)

(declare-fun e!2711805 () Option!10469)

(assert (=> b!4357599 (= e!2711805 None!10468)))

(declare-fun b!4357596 () Bool)

(declare-fun e!2711804 () Option!10469)

(assert (=> b!4357596 (= e!2711804 (Some!10468 (_2!27461 (h!54486 (toList!2966 lt!1569324)))))))

(declare-fun b!4357598 () Bool)

(assert (=> b!4357598 (= e!2711805 (getValueByKey!455 (t!355979 (toList!2966 lt!1569324)) (_1!27461 lt!1569109)))))

(declare-fun b!4357597 () Bool)

(assert (=> b!4357597 (= e!2711804 e!2711805)))

(declare-fun c!740919 () Bool)

(assert (=> b!4357597 (= c!740919 (and ((_ is Cons!48935) (toList!2966 lt!1569324)) (not (= (_1!27461 (h!54486 (toList!2966 lt!1569324))) (_1!27461 lt!1569109)))))))

(declare-fun d!1288385 () Bool)

(declare-fun c!740918 () Bool)

(assert (=> d!1288385 (= c!740918 (and ((_ is Cons!48935) (toList!2966 lt!1569324)) (= (_1!27461 (h!54486 (toList!2966 lt!1569324))) (_1!27461 lt!1569109))))))

(assert (=> d!1288385 (= (getValueByKey!455 (toList!2966 lt!1569324) (_1!27461 lt!1569109)) e!2711804)))

(assert (= (and d!1288385 c!740918) b!4357596))

(assert (= (and d!1288385 (not c!740918)) b!4357597))

(assert (= (and b!4357597 c!740919) b!4357598))

(assert (= (and b!4357597 (not c!740919)) b!4357599))

(declare-fun m!4972559 () Bool)

(assert (=> b!4357598 m!4972559))

(assert (=> b!4356797 d!1288385))

(declare-fun d!1288387 () Bool)

(assert (=> d!1288387 (= (tail!7000 (toList!2965 lm!1707)) (t!355980 (toList!2965 lm!1707)))))

(assert (=> d!1287935 d!1288387))

(declare-fun d!1288389 () Bool)

(declare-fun lt!1569988 () Bool)

(assert (=> d!1288389 (= lt!1569988 (select (content!7720 (t!355980 (toList!2965 lm!1707))) lt!1569102))))

(declare-fun e!2711807 () Bool)

(assert (=> d!1288389 (= lt!1569988 e!2711807)))

(declare-fun res!1791094 () Bool)

(assert (=> d!1288389 (=> (not res!1791094) (not e!2711807))))

(assert (=> d!1288389 (= res!1791094 ((_ is Cons!48936) (t!355980 (toList!2965 lm!1707))))))

(assert (=> d!1288389 (= (contains!11141 (t!355980 (toList!2965 lm!1707)) lt!1569102) lt!1569988)))

(declare-fun b!4357600 () Bool)

(declare-fun e!2711806 () Bool)

(assert (=> b!4357600 (= e!2711807 e!2711806)))

(declare-fun res!1791095 () Bool)

(assert (=> b!4357600 (=> res!1791095 e!2711806)))

(assert (=> b!4357600 (= res!1791095 (= (h!54487 (t!355980 (toList!2965 lm!1707))) lt!1569102))))

(declare-fun b!4357601 () Bool)

(assert (=> b!4357601 (= e!2711806 (contains!11141 (t!355980 (t!355980 (toList!2965 lm!1707))) lt!1569102))))

(assert (= (and d!1288389 res!1791094) b!4357600))

(assert (= (and b!4357600 (not res!1791095)) b!4357601))

(assert (=> d!1288389 m!4971883))

(declare-fun m!4972561 () Bool)

(assert (=> d!1288389 m!4972561))

(declare-fun m!4972563 () Bool)

(assert (=> b!4357601 m!4972563))

(assert (=> b!4356683 d!1288389))

(declare-fun d!1288391 () Bool)

(assert (=> d!1288391 (dynLambda!20635 lambda!140479 lt!1569102)))

(assert (=> d!1288391 true))

(declare-fun _$7!1477 () Unit!71637)

(assert (=> d!1288391 (= (choose!26910 (toList!2965 lm!1707) lambda!140479 lt!1569102) _$7!1477)))

(declare-fun b_lambda!131279 () Bool)

(assert (=> (not b_lambda!131279) (not d!1288391)))

(declare-fun bs!632151 () Bool)

(assert (= bs!632151 d!1288391))

(assert (=> bs!632151 m!4970729))

(assert (=> d!1287867 d!1288391))

(assert (=> d!1287867 d!1287909))

(assert (=> b!4356695 d!1287861))

(assert (=> b!4356805 d!1288239))

(declare-fun d!1288393 () Bool)

(declare-fun res!1791100 () Bool)

(declare-fun e!2711812 () Bool)

(assert (=> d!1288393 (=> res!1791100 e!2711812)))

(assert (=> d!1288393 (= res!1791100 (and ((_ is Cons!48936) (toList!2965 lm!1707)) (= (_1!27462 (h!54487 (toList!2965 lm!1707))) hash!377)))))

(assert (=> d!1288393 (= (containsKey!696 (toList!2965 lm!1707) hash!377) e!2711812)))

(declare-fun b!4357606 () Bool)

(declare-fun e!2711813 () Bool)

(assert (=> b!4357606 (= e!2711812 e!2711813)))

(declare-fun res!1791101 () Bool)

(assert (=> b!4357606 (=> (not res!1791101) (not e!2711813))))

(assert (=> b!4357606 (= res!1791101 (and (or (not ((_ is Cons!48936) (toList!2965 lm!1707))) (bvsle (_1!27462 (h!54487 (toList!2965 lm!1707))) hash!377)) ((_ is Cons!48936) (toList!2965 lm!1707)) (bvslt (_1!27462 (h!54487 (toList!2965 lm!1707))) hash!377)))))

(declare-fun b!4357607 () Bool)

(assert (=> b!4357607 (= e!2711813 (containsKey!696 (t!355980 (toList!2965 lm!1707)) hash!377))))

(assert (= (and d!1288393 (not res!1791100)) b!4357606))

(assert (= (and b!4357606 res!1791101) b!4357607))

(declare-fun m!4972565 () Bool)

(assert (=> b!4357607 m!4972565))

(assert (=> d!1287903 d!1288393))

(declare-fun d!1288395 () Bool)

(declare-fun res!1791102 () Bool)

(declare-fun e!2711816 () Bool)

(assert (=> d!1288395 (=> res!1791102 e!2711816)))

(assert (=> d!1288395 (= res!1791102 ((_ is Nil!48935) (toList!2966 lt!1569106)))))

(assert (=> d!1288395 (= (forall!9124 (toList!2966 lt!1569106) lambda!140579) e!2711816)))

(declare-fun b!4357612 () Bool)

(declare-fun e!2711817 () Bool)

(assert (=> b!4357612 (= e!2711816 e!2711817)))

(declare-fun res!1791103 () Bool)

(assert (=> b!4357612 (=> (not res!1791103) (not e!2711817))))

(assert (=> b!4357612 (= res!1791103 (dynLambda!20636 lambda!140579 (h!54486 (toList!2966 lt!1569106))))))

(declare-fun b!4357613 () Bool)

(assert (=> b!4357613 (= e!2711817 (forall!9124 (t!355979 (toList!2966 lt!1569106)) lambda!140579))))

(assert (= (and d!1288395 (not res!1791102)) b!4357612))

(assert (= (and b!4357612 res!1791103) b!4357613))

(declare-fun b_lambda!131281 () Bool)

(assert (=> (not b_lambda!131281) (not b!4357612)))

(declare-fun m!4972567 () Bool)

(assert (=> b!4357612 m!4972567))

(declare-fun m!4972569 () Bool)

(assert (=> b!4357613 m!4972569))

(assert (=> b!4356866 d!1288395))

(assert (=> b!4356802 d!1288235))

(assert (=> b!4356802 d!1288239))

(declare-fun d!1288397 () Bool)

(declare-fun res!1791106 () Bool)

(declare-fun e!2711824 () Bool)

(assert (=> d!1288397 (=> res!1791106 e!2711824)))

(assert (=> d!1288397 (= res!1791106 ((_ is Nil!48935) (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> d!1288397 (= (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lambda!140578) e!2711824)))

(declare-fun b!4357624 () Bool)

(declare-fun e!2711825 () Bool)

(assert (=> b!4357624 (= e!2711824 e!2711825)))

(declare-fun res!1791107 () Bool)

(assert (=> b!4357624 (=> (not res!1791107) (not e!2711825))))

(assert (=> b!4357624 (= res!1791107 (dynLambda!20636 lambda!140578 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun b!4357625 () Bool)

(assert (=> b!4357625 (= e!2711825 (forall!9124 (t!355979 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lambda!140578))))

(assert (= (and d!1288397 (not res!1791106)) b!4357624))

(assert (= (and b!4357624 res!1791107) b!4357625))

(declare-fun b_lambda!131283 () Bool)

(assert (=> (not b_lambda!131283) (not b!4357624)))

(declare-fun m!4972571 () Bool)

(assert (=> b!4357624 m!4972571))

(declare-fun m!4972573 () Bool)

(assert (=> b!4357625 m!4972573))

(assert (=> b!4356864 d!1288397))

(declare-fun d!1288399 () Bool)

(declare-fun e!2711828 () Bool)

(assert (=> d!1288399 e!2711828))

(declare-fun res!1791108 () Bool)

(assert (=> d!1288399 (=> (not res!1791108) (not e!2711828))))

(declare-fun lt!1570013 () ListMap!2209)

(assert (=> d!1288399 (= res!1791108 (contains!11142 lt!1570013 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun lt!1570014 () List!49059)

(assert (=> d!1288399 (= lt!1570013 (ListMap!2210 lt!1570014))))

(declare-fun lt!1570011 () Unit!71637)

(declare-fun lt!1570012 () Unit!71637)

(assert (=> d!1288399 (= lt!1570011 lt!1570012)))

(assert (=> d!1288399 (= (getValueByKey!455 lt!1570014 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (Some!10468 (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> d!1288399 (= lt!1570012 (lemmaContainsTupThenGetReturnValue!227 lt!1570014 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> d!1288399 (= lt!1570014 (insertNoDuplicatedKeys!101 (toList!2966 lt!1569106) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> d!1288399 (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1570013)))

(declare-fun b!4357630 () Bool)

(declare-fun res!1791109 () Bool)

(assert (=> b!4357630 (=> (not res!1791109) (not e!2711828))))

(assert (=> b!4357630 (= res!1791109 (= (getValueByKey!455 (toList!2966 lt!1570013) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (Some!10468 (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(declare-fun b!4357631 () Bool)

(assert (=> b!4357631 (= e!2711828 (contains!11146 (toList!2966 lt!1570013) (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (= (and d!1288399 res!1791108) b!4357630))

(assert (= (and b!4357630 res!1791109) b!4357631))

(declare-fun m!4972575 () Bool)

(assert (=> d!1288399 m!4972575))

(declare-fun m!4972577 () Bool)

(assert (=> d!1288399 m!4972577))

(declare-fun m!4972579 () Bool)

(assert (=> d!1288399 m!4972579))

(declare-fun m!4972581 () Bool)

(assert (=> d!1288399 m!4972581))

(declare-fun m!4972583 () Bool)

(assert (=> b!4357630 m!4972583))

(declare-fun m!4972585 () Bool)

(assert (=> b!4357631 m!4972585))

(assert (=> b!4356864 d!1288399))

(declare-fun d!1288401 () Bool)

(declare-fun res!1791110 () Bool)

(declare-fun e!2711830 () Bool)

(assert (=> d!1288401 (=> res!1791110 e!2711830)))

(assert (=> d!1288401 (= res!1791110 ((_ is Nil!48935) (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(assert (=> d!1288401 (= (forall!9124 (_2!27462 (h!54487 (toList!2965 lm!1707))) lambda!140578) e!2711830)))

(declare-fun b!4357636 () Bool)

(declare-fun e!2711831 () Bool)

(assert (=> b!4357636 (= e!2711830 e!2711831)))

(declare-fun res!1791111 () Bool)

(assert (=> b!4357636 (=> (not res!1791111) (not e!2711831))))

(assert (=> b!4357636 (= res!1791111 (dynLambda!20636 lambda!140578 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun b!4357637 () Bool)

(assert (=> b!4357637 (= e!2711831 (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lambda!140578))))

(assert (= (and d!1288401 (not res!1791110)) b!4357636))

(assert (= (and b!4357636 res!1791111) b!4357637))

(declare-fun b_lambda!131285 () Bool)

(assert (=> (not b_lambda!131285) (not b!4357636)))

(declare-fun m!4972587 () Bool)

(assert (=> b!4357636 m!4972587))

(assert (=> b!4357637 m!4971109))

(assert (=> b!4356864 d!1288401))

(declare-fun bs!632152 () Bool)

(declare-fun b!4357638 () Bool)

(assert (= bs!632152 (and b!4357638 b!4356864)))

(declare-fun lambda!140687 () Int)

(assert (=> bs!632152 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569106) (= lambda!140687 lambda!140577))))

(assert (=> bs!632152 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569449) (= lambda!140687 lambda!140578))))

(declare-fun bs!632153 () Bool)

(assert (= bs!632153 (and b!4357638 b!4357544)))

(assert (=> bs!632153 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569954) (= lambda!140687 lambda!140685))))

(declare-fun bs!632154 () Bool)

(assert (= bs!632154 (and b!4357638 d!1287907)))

(assert (=> bs!632154 (not (= lambda!140687 lambda!140513))))

(declare-fun bs!632155 () Bool)

(assert (= bs!632155 (and b!4357638 b!4357380)))

(assert (=> bs!632155 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569818) (= lambda!140687 lambda!140657))))

(declare-fun bs!632156 () Bool)

(assert (= bs!632156 (and b!4357638 d!1288355)))

(assert (=> bs!632156 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569958) (= lambda!140687 lambda!140686))))

(declare-fun bs!632157 () Bool)

(assert (= bs!632157 (and b!4357638 b!4356869)))

(assert (=> bs!632157 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569103) (= lambda!140687 lambda!140580))))

(declare-fun bs!632158 () Bool)

(assert (= bs!632158 (and b!4357638 d!1288219)))

(assert (=> bs!632158 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569822) (= lambda!140687 lambda!140659))))

(declare-fun bs!632159 () Bool)

(assert (= bs!632159 (and b!4357638 b!4356871)))

(assert (=> bs!632159 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569470) (= lambda!140687 lambda!140582))))

(declare-fun bs!632160 () Bool)

(assert (= bs!632160 (and b!4357638 b!4357495)))

(assert (=> bs!632160 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140687 lambda!140677))))

(declare-fun bs!632161 () Bool)

(assert (= bs!632161 (and b!4357638 b!4357493)))

(assert (=> bs!632161 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140687 lambda!140676))))

(declare-fun bs!632162 () Bool)

(assert (= bs!632162 (and b!4357638 d!1287949)))

(assert (=> bs!632162 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569453) (= lambda!140687 lambda!140579))))

(assert (=> bs!632155 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140687 lambda!140656))))

(declare-fun bs!632163 () Bool)

(assert (= bs!632163 (and b!4357638 b!4357485)))

(assert (=> bs!632163 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569877) (= lambda!140687 lambda!140671))))

(declare-fun bs!632164 () Bool)

(assert (= bs!632164 (and b!4357638 b!4356862)))

(assert (=> bs!632164 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569106) (= lambda!140687 lambda!140576))))

(declare-fun bs!632165 () Bool)

(assert (= bs!632165 (and b!4357638 b!4357483)))

(assert (=> bs!632165 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140687 lambda!140668))))

(declare-fun bs!632166 () Bool)

(assert (= bs!632166 (and b!4357638 b!4357378)))

(assert (=> bs!632166 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140687 lambda!140655))))

(assert (=> bs!632163 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140687 lambda!140670))))

(declare-fun bs!632167 () Bool)

(assert (= bs!632167 (and b!4357638 d!1288275)))

(assert (=> bs!632167 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569106) (= lambda!140687 lambda!140667))))

(assert (=> bs!632159 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569103) (= lambda!140687 lambda!140581))))

(declare-fun bs!632168 () Bool)

(assert (= bs!632168 (and b!4357638 d!1287975)))

(assert (=> bs!632168 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569474) (= lambda!140687 lambda!140583))))

(declare-fun bs!632169 () Bool)

(assert (= bs!632169 (and b!4357638 b!4357542)))

(assert (=> bs!632169 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140687 lambda!140683))))

(declare-fun bs!632170 () Bool)

(assert (= bs!632170 (and b!4357638 d!1288297)))

(assert (=> bs!632170 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569923) (= lambda!140687 lambda!140679))))

(assert (=> bs!632153 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140687 lambda!140684))))

(declare-fun bs!632171 () Bool)

(assert (= bs!632171 (and b!4357638 b!4357024)))

(assert (=> bs!632171 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140687 lambda!140611))))

(declare-fun bs!632172 () Bool)

(assert (= bs!632172 (and b!4357638 d!1288293)))

(assert (=> bs!632172 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569881) (= lambda!140687 lambda!140674))))

(declare-fun bs!632173 () Bool)

(assert (= bs!632173 (and b!4357638 d!1288049)))

(assert (=> bs!632173 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569582) (= lambda!140687 lambda!140614))))

(assert (=> bs!632160 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569919) (= lambda!140687 lambda!140678))))

(declare-fun bs!632174 () Bool)

(assert (= bs!632174 (and b!4357638 b!4357022)))

(assert (=> bs!632174 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140687 lambda!140609))))

(assert (=> bs!632171 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569578) (= lambda!140687 lambda!140612))))

(assert (=> b!4357638 true))

(declare-fun bs!632175 () Bool)

(declare-fun b!4357640 () Bool)

(assert (= bs!632175 (and b!4357640 b!4356864)))

(declare-fun lambda!140688 () Int)

(assert (=> bs!632175 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569106) (= lambda!140688 lambda!140577))))

(declare-fun bs!632176 () Bool)

(assert (= bs!632176 (and b!4357640 b!4357544)))

(assert (=> bs!632176 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569954) (= lambda!140688 lambda!140685))))

(declare-fun bs!632177 () Bool)

(assert (= bs!632177 (and b!4357640 d!1287907)))

(assert (=> bs!632177 (not (= lambda!140688 lambda!140513))))

(declare-fun bs!632178 () Bool)

(assert (= bs!632178 (and b!4357640 b!4357380)))

(assert (=> bs!632178 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569818) (= lambda!140688 lambda!140657))))

(declare-fun bs!632179 () Bool)

(assert (= bs!632179 (and b!4357640 d!1288355)))

(assert (=> bs!632179 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569958) (= lambda!140688 lambda!140686))))

(declare-fun bs!632180 () Bool)

(assert (= bs!632180 (and b!4357640 b!4356869)))

(assert (=> bs!632180 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569103) (= lambda!140688 lambda!140580))))

(declare-fun bs!632181 () Bool)

(assert (= bs!632181 (and b!4357640 d!1288219)))

(assert (=> bs!632181 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569822) (= lambda!140688 lambda!140659))))

(declare-fun bs!632182 () Bool)

(assert (= bs!632182 (and b!4357640 b!4356871)))

(assert (=> bs!632182 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569470) (= lambda!140688 lambda!140582))))

(declare-fun bs!632183 () Bool)

(assert (= bs!632183 (and b!4357640 b!4357495)))

(assert (=> bs!632183 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140688 lambda!140677))))

(declare-fun bs!632184 () Bool)

(assert (= bs!632184 (and b!4357640 b!4357493)))

(assert (=> bs!632184 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140688 lambda!140676))))

(declare-fun bs!632185 () Bool)

(assert (= bs!632185 (and b!4357640 d!1287949)))

(assert (=> bs!632185 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569453) (= lambda!140688 lambda!140579))))

(assert (=> bs!632178 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140688 lambda!140656))))

(declare-fun bs!632186 () Bool)

(assert (= bs!632186 (and b!4357640 b!4357485)))

(assert (=> bs!632186 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569877) (= lambda!140688 lambda!140671))))

(declare-fun bs!632187 () Bool)

(assert (= bs!632187 (and b!4357640 b!4356862)))

(assert (=> bs!632187 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569106) (= lambda!140688 lambda!140576))))

(declare-fun bs!632188 () Bool)

(assert (= bs!632188 (and b!4357640 b!4357483)))

(assert (=> bs!632188 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140688 lambda!140668))))

(declare-fun bs!632189 () Bool)

(assert (= bs!632189 (and b!4357640 b!4357378)))

(assert (=> bs!632189 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140688 lambda!140655))))

(assert (=> bs!632186 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140688 lambda!140670))))

(assert (=> bs!632175 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569449) (= lambda!140688 lambda!140578))))

(declare-fun bs!632190 () Bool)

(assert (= bs!632190 (and b!4357640 b!4357638)))

(assert (=> bs!632190 (= lambda!140688 lambda!140687)))

(declare-fun bs!632191 () Bool)

(assert (= bs!632191 (and b!4357640 d!1288275)))

(assert (=> bs!632191 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569106) (= lambda!140688 lambda!140667))))

(assert (=> bs!632182 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569103) (= lambda!140688 lambda!140581))))

(declare-fun bs!632192 () Bool)

(assert (= bs!632192 (and b!4357640 d!1287975)))

(assert (=> bs!632192 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569474) (= lambda!140688 lambda!140583))))

(declare-fun bs!632193 () Bool)

(assert (= bs!632193 (and b!4357640 b!4357542)))

(assert (=> bs!632193 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140688 lambda!140683))))

(declare-fun bs!632194 () Bool)

(assert (= bs!632194 (and b!4357640 d!1288297)))

(assert (=> bs!632194 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569923) (= lambda!140688 lambda!140679))))

(assert (=> bs!632176 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140688 lambda!140684))))

(declare-fun bs!632195 () Bool)

(assert (= bs!632195 (and b!4357640 b!4357024)))

(assert (=> bs!632195 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140688 lambda!140611))))

(declare-fun bs!632196 () Bool)

(assert (= bs!632196 (and b!4357640 d!1288293)))

(assert (=> bs!632196 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569881) (= lambda!140688 lambda!140674))))

(declare-fun bs!632197 () Bool)

(assert (= bs!632197 (and b!4357640 d!1288049)))

(assert (=> bs!632197 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569582) (= lambda!140688 lambda!140614))))

(assert (=> bs!632183 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569919) (= lambda!140688 lambda!140678))))

(declare-fun bs!632198 () Bool)

(assert (= bs!632198 (and b!4357640 b!4357022)))

(assert (=> bs!632198 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140688 lambda!140609))))

(assert (=> bs!632195 (= (= (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569578) (= lambda!140688 lambda!140612))))

(assert (=> b!4357640 true))

(declare-fun lt!1570020 () ListMap!2209)

(declare-fun lambda!140689 () Int)

(assert (=> bs!632175 (= (= lt!1570020 lt!1569106) (= lambda!140689 lambda!140577))))

(assert (=> bs!632176 (= (= lt!1570020 lt!1569954) (= lambda!140689 lambda!140685))))

(assert (=> bs!632178 (= (= lt!1570020 lt!1569818) (= lambda!140689 lambda!140657))))

(assert (=> bs!632179 (= (= lt!1570020 lt!1569958) (= lambda!140689 lambda!140686))))

(assert (=> bs!632180 (= (= lt!1570020 lt!1569103) (= lambda!140689 lambda!140580))))

(assert (=> bs!632181 (= (= lt!1570020 lt!1569822) (= lambda!140689 lambda!140659))))

(assert (=> bs!632182 (= (= lt!1570020 lt!1569470) (= lambda!140689 lambda!140582))))

(assert (=> bs!632183 (= (= lt!1570020 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140689 lambda!140677))))

(assert (=> bs!632184 (= (= lt!1570020 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140689 lambda!140676))))

(assert (=> bs!632185 (= (= lt!1570020 lt!1569453) (= lambda!140689 lambda!140579))))

(assert (=> bs!632178 (= (= lt!1570020 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140689 lambda!140656))))

(assert (=> bs!632186 (= (= lt!1570020 lt!1569877) (= lambda!140689 lambda!140671))))

(assert (=> bs!632187 (= (= lt!1570020 lt!1569106) (= lambda!140689 lambda!140576))))

(assert (=> bs!632188 (= (= lt!1570020 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140689 lambda!140668))))

(assert (=> bs!632189 (= (= lt!1570020 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140689 lambda!140655))))

(assert (=> bs!632186 (= (= lt!1570020 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140689 lambda!140670))))

(assert (=> bs!632175 (= (= lt!1570020 lt!1569449) (= lambda!140689 lambda!140578))))

(assert (=> bs!632190 (= (= lt!1570020 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140689 lambda!140687))))

(assert (=> bs!632191 (= (= lt!1570020 lt!1569106) (= lambda!140689 lambda!140667))))

(assert (=> bs!632182 (= (= lt!1570020 lt!1569103) (= lambda!140689 lambda!140581))))

(assert (=> bs!632192 (= (= lt!1570020 lt!1569474) (= lambda!140689 lambda!140583))))

(assert (=> bs!632193 (= (= lt!1570020 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140689 lambda!140683))))

(assert (=> bs!632177 (not (= lambda!140689 lambda!140513))))

(assert (=> b!4357640 (= (= lt!1570020 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140689 lambda!140688))))

(assert (=> bs!632194 (= (= lt!1570020 lt!1569923) (= lambda!140689 lambda!140679))))

(assert (=> bs!632176 (= (= lt!1570020 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140689 lambda!140684))))

(assert (=> bs!632195 (= (= lt!1570020 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140689 lambda!140611))))

(assert (=> bs!632196 (= (= lt!1570020 lt!1569881) (= lambda!140689 lambda!140674))))

(assert (=> bs!632197 (= (= lt!1570020 lt!1569582) (= lambda!140689 lambda!140614))))

(assert (=> bs!632183 (= (= lt!1570020 lt!1569919) (= lambda!140689 lambda!140678))))

(assert (=> bs!632198 (= (= lt!1570020 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140689 lambda!140609))))

(assert (=> bs!632195 (= (= lt!1570020 lt!1569578) (= lambda!140689 lambda!140612))))

(assert (=> b!4357640 true))

(declare-fun bs!632199 () Bool)

(declare-fun d!1288403 () Bool)

(assert (= bs!632199 (and d!1288403 b!4356864)))

(declare-fun lt!1570024 () ListMap!2209)

(declare-fun lambda!140690 () Int)

(assert (=> bs!632199 (= (= lt!1570024 lt!1569106) (= lambda!140690 lambda!140577))))

(declare-fun bs!632200 () Bool)

(assert (= bs!632200 (and d!1288403 b!4357544)))

(assert (=> bs!632200 (= (= lt!1570024 lt!1569954) (= lambda!140690 lambda!140685))))

(declare-fun bs!632201 () Bool)

(assert (= bs!632201 (and d!1288403 b!4357380)))

(assert (=> bs!632201 (= (= lt!1570024 lt!1569818) (= lambda!140690 lambda!140657))))

(declare-fun bs!632202 () Bool)

(assert (= bs!632202 (and d!1288403 d!1288355)))

(assert (=> bs!632202 (= (= lt!1570024 lt!1569958) (= lambda!140690 lambda!140686))))

(declare-fun bs!632203 () Bool)

(assert (= bs!632203 (and d!1288403 b!4356869)))

(assert (=> bs!632203 (= (= lt!1570024 lt!1569103) (= lambda!140690 lambda!140580))))

(declare-fun bs!632204 () Bool)

(assert (= bs!632204 (and d!1288403 d!1288219)))

(assert (=> bs!632204 (= (= lt!1570024 lt!1569822) (= lambda!140690 lambda!140659))))

(declare-fun bs!632205 () Bool)

(assert (= bs!632205 (and d!1288403 b!4356871)))

(assert (=> bs!632205 (= (= lt!1570024 lt!1569470) (= lambda!140690 lambda!140582))))

(declare-fun bs!632206 () Bool)

(assert (= bs!632206 (and d!1288403 b!4357495)))

(assert (=> bs!632206 (= (= lt!1570024 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140690 lambda!140677))))

(declare-fun bs!632207 () Bool)

(assert (= bs!632207 (and d!1288403 b!4357493)))

(assert (=> bs!632207 (= (= lt!1570024 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140690 lambda!140676))))

(declare-fun bs!632208 () Bool)

(assert (= bs!632208 (and d!1288403 d!1287949)))

(assert (=> bs!632208 (= (= lt!1570024 lt!1569453) (= lambda!140690 lambda!140579))))

(assert (=> bs!632201 (= (= lt!1570024 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140690 lambda!140656))))

(declare-fun bs!632209 () Bool)

(assert (= bs!632209 (and d!1288403 b!4357485)))

(assert (=> bs!632209 (= (= lt!1570024 lt!1569877) (= lambda!140690 lambda!140671))))

(declare-fun bs!632210 () Bool)

(assert (= bs!632210 (and d!1288403 b!4356862)))

(assert (=> bs!632210 (= (= lt!1570024 lt!1569106) (= lambda!140690 lambda!140576))))

(declare-fun bs!632211 () Bool)

(assert (= bs!632211 (and d!1288403 b!4357483)))

(assert (=> bs!632211 (= (= lt!1570024 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140690 lambda!140668))))

(declare-fun bs!632212 () Bool)

(assert (= bs!632212 (and d!1288403 b!4357378)))

(assert (=> bs!632212 (= (= lt!1570024 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140690 lambda!140655))))

(assert (=> bs!632209 (= (= lt!1570024 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140690 lambda!140670))))

(assert (=> bs!632199 (= (= lt!1570024 lt!1569449) (= lambda!140690 lambda!140578))))

(declare-fun bs!632213 () Bool)

(assert (= bs!632213 (and d!1288403 b!4357638)))

(assert (=> bs!632213 (= (= lt!1570024 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140690 lambda!140687))))

(declare-fun bs!632214 () Bool)

(assert (= bs!632214 (and d!1288403 d!1288275)))

(assert (=> bs!632214 (= (= lt!1570024 lt!1569106) (= lambda!140690 lambda!140667))))

(assert (=> bs!632205 (= (= lt!1570024 lt!1569103) (= lambda!140690 lambda!140581))))

(declare-fun bs!632215 () Bool)

(assert (= bs!632215 (and d!1288403 d!1287975)))

(assert (=> bs!632215 (= (= lt!1570024 lt!1569474) (= lambda!140690 lambda!140583))))

(declare-fun bs!632216 () Bool)

(assert (= bs!632216 (and d!1288403 b!4357542)))

(assert (=> bs!632216 (= (= lt!1570024 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140690 lambda!140683))))

(declare-fun bs!632217 () Bool)

(assert (= bs!632217 (and d!1288403 d!1287907)))

(assert (=> bs!632217 (not (= lambda!140690 lambda!140513))))

(declare-fun bs!632218 () Bool)

(assert (= bs!632218 (and d!1288403 b!4357640)))

(assert (=> bs!632218 (= (= lt!1570024 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140690 lambda!140688))))

(declare-fun bs!632219 () Bool)

(assert (= bs!632219 (and d!1288403 d!1288297)))

(assert (=> bs!632219 (= (= lt!1570024 lt!1569923) (= lambda!140690 lambda!140679))))

(assert (=> bs!632200 (= (= lt!1570024 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140690 lambda!140684))))

(declare-fun bs!632221 () Bool)

(assert (= bs!632221 (and d!1288403 b!4357024)))

(assert (=> bs!632221 (= (= lt!1570024 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140690 lambda!140611))))

(declare-fun bs!632222 () Bool)

(assert (= bs!632222 (and d!1288403 d!1288293)))

(assert (=> bs!632222 (= (= lt!1570024 lt!1569881) (= lambda!140690 lambda!140674))))

(declare-fun bs!632223 () Bool)

(assert (= bs!632223 (and d!1288403 d!1288049)))

(assert (=> bs!632223 (= (= lt!1570024 lt!1569582) (= lambda!140690 lambda!140614))))

(assert (=> bs!632206 (= (= lt!1570024 lt!1569919) (= lambda!140690 lambda!140678))))

(declare-fun bs!632225 () Bool)

(assert (= bs!632225 (and d!1288403 b!4357022)))

(assert (=> bs!632225 (= (= lt!1570024 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140690 lambda!140609))))

(assert (=> bs!632218 (= (= lt!1570024 lt!1570020) (= lambda!140690 lambda!140689))))

(assert (=> bs!632221 (= (= lt!1570024 lt!1569578) (= lambda!140690 lambda!140612))))

(assert (=> d!1288403 true))

(declare-fun e!2711833 () ListMap!2209)

(assert (=> b!4357638 (= e!2711833 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun lt!1570033 () Unit!71637)

(declare-fun call!302861 () Unit!71637)

(assert (=> b!4357638 (= lt!1570033 call!302861)))

(declare-fun call!302862 () Bool)

(assert (=> b!4357638 call!302862))

(declare-fun lt!1570028 () Unit!71637)

(assert (=> b!4357638 (= lt!1570028 lt!1570033)))

(declare-fun call!302860 () Bool)

(assert (=> b!4357638 call!302860))

(declare-fun lt!1570022 () Unit!71637)

(declare-fun Unit!71834 () Unit!71637)

(assert (=> b!4357638 (= lt!1570022 Unit!71834)))

(declare-fun e!2711835 () Bool)

(assert (=> d!1288403 e!2711835))

(declare-fun res!1791112 () Bool)

(assert (=> d!1288403 (=> (not res!1791112) (not e!2711835))))

(assert (=> d!1288403 (= res!1791112 (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lambda!140690))))

(assert (=> d!1288403 (= lt!1570024 e!2711833)))

(declare-fun c!740930 () Bool)

(assert (=> d!1288403 (= c!740930 ((_ is Nil!48935) (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> d!1288403 (noDuplicateKeys!491 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(assert (=> d!1288403 (= (addToMapMapFromBucket!187 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) lt!1570024)))

(declare-fun b!4357639 () Bool)

(declare-fun e!2711834 () Bool)

(assert (=> b!4357639 (= e!2711834 call!302862)))

(declare-fun bm!302855 () Bool)

(assert (=> bm!302855 (= call!302861 (lemmaContainsAllItsOwnKeys!61 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> b!4357640 (= e!2711833 lt!1570020)))

(declare-fun lt!1570019 () ListMap!2209)

(assert (=> b!4357640 (= lt!1570019 (+!640 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> b!4357640 (= lt!1570020 (addToMapMapFromBucket!187 (t!355979 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (+!640 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(declare-fun lt!1570034 () Unit!71637)

(assert (=> b!4357640 (= lt!1570034 call!302861)))

(assert (=> b!4357640 (forall!9124 (toList!2966 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) lambda!140688)))

(declare-fun lt!1570025 () Unit!71637)

(assert (=> b!4357640 (= lt!1570025 lt!1570034)))

(assert (=> b!4357640 (forall!9124 (toList!2966 lt!1570019) lambda!140689)))

(declare-fun lt!1570027 () Unit!71637)

(declare-fun Unit!71835 () Unit!71637)

(assert (=> b!4357640 (= lt!1570027 Unit!71835)))

(assert (=> b!4357640 (forall!9124 (t!355979 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lambda!140689)))

(declare-fun lt!1570018 () Unit!71637)

(declare-fun Unit!71836 () Unit!71637)

(assert (=> b!4357640 (= lt!1570018 Unit!71836)))

(declare-fun lt!1570035 () Unit!71637)

(declare-fun Unit!71837 () Unit!71637)

(assert (=> b!4357640 (= lt!1570035 Unit!71837)))

(declare-fun lt!1570015 () Unit!71637)

(assert (=> b!4357640 (= lt!1570015 (forallContained!1765 (toList!2966 lt!1570019) lambda!140689 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> b!4357640 (contains!11142 lt!1570019 (_1!27461 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun lt!1570023 () Unit!71637)

(declare-fun Unit!71838 () Unit!71637)

(assert (=> b!4357640 (= lt!1570023 Unit!71838)))

(assert (=> b!4357640 (contains!11142 lt!1570020 (_1!27461 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun lt!1570031 () Unit!71637)

(declare-fun Unit!71839 () Unit!71637)

(assert (=> b!4357640 (= lt!1570031 Unit!71839)))

(assert (=> b!4357640 (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lambda!140689)))

(declare-fun lt!1570016 () Unit!71637)

(declare-fun Unit!71840 () Unit!71637)

(assert (=> b!4357640 (= lt!1570016 Unit!71840)))

(assert (=> b!4357640 (forall!9124 (toList!2966 lt!1570019) lambda!140689)))

(declare-fun lt!1570017 () Unit!71637)

(declare-fun Unit!71841 () Unit!71637)

(assert (=> b!4357640 (= lt!1570017 Unit!71841)))

(declare-fun lt!1570021 () Unit!71637)

(declare-fun Unit!71842 () Unit!71637)

(assert (=> b!4357640 (= lt!1570021 Unit!71842)))

(declare-fun lt!1570032 () Unit!71637)

(assert (=> b!4357640 (= lt!1570032 (addForallContainsKeyThenBeforeAdding!61 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1570020 (_1!27461 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (_2!27461 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(assert (=> b!4357640 call!302860))

(declare-fun lt!1570030 () Unit!71637)

(assert (=> b!4357640 (= lt!1570030 lt!1570032)))

(assert (=> b!4357640 (forall!9124 (toList!2966 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) lambda!140689)))

(declare-fun lt!1570029 () Unit!71637)

(declare-fun Unit!71843 () Unit!71637)

(assert (=> b!4357640 (= lt!1570029 Unit!71843)))

(declare-fun res!1791113 () Bool)

(assert (=> b!4357640 (= res!1791113 (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lambda!140689))))

(assert (=> b!4357640 (=> (not res!1791113) (not e!2711834))))

(assert (=> b!4357640 e!2711834))

(declare-fun lt!1570026 () Unit!71637)

(declare-fun Unit!71844 () Unit!71637)

(assert (=> b!4357640 (= lt!1570026 Unit!71844)))

(declare-fun bm!302856 () Bool)

(assert (=> bm!302856 (= call!302862 (forall!9124 (toList!2966 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (ite c!740930 lambda!140687 lambda!140689)))))

(declare-fun b!4357641 () Bool)

(assert (=> b!4357641 (= e!2711835 (invariantList!678 (toList!2966 lt!1570024)))))

(declare-fun bm!302857 () Bool)

(assert (=> bm!302857 (= call!302860 (forall!9124 (toList!2966 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (ite c!740930 lambda!140687 lambda!140689)))))

(declare-fun b!4357642 () Bool)

(declare-fun res!1791114 () Bool)

(assert (=> b!4357642 (=> (not res!1791114) (not e!2711835))))

(assert (=> b!4357642 (= res!1791114 (forall!9124 (toList!2966 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) lambda!140690))))

(assert (= (and d!1288403 c!740930) b!4357638))

(assert (= (and d!1288403 (not c!740930)) b!4357640))

(assert (= (and b!4357640 res!1791113) b!4357639))

(assert (= (or b!4357638 b!4357640) bm!302855))

(assert (= (or b!4357638 b!4357640) bm!302857))

(assert (= (or b!4357638 b!4357639) bm!302856))

(assert (= (and d!1288403 res!1791112) b!4357642))

(assert (= (and b!4357642 res!1791114) b!4357641))

(declare-fun m!4972635 () Bool)

(assert (=> b!4357640 m!4972635))

(declare-fun m!4972637 () Bool)

(assert (=> b!4357640 m!4972637))

(declare-fun m!4972639 () Bool)

(assert (=> b!4357640 m!4972639))

(declare-fun m!4972641 () Bool)

(assert (=> b!4357640 m!4972641))

(assert (=> b!4357640 m!4972635))

(declare-fun m!4972643 () Bool)

(assert (=> b!4357640 m!4972643))

(declare-fun m!4972645 () Bool)

(assert (=> b!4357640 m!4972645))

(declare-fun m!4972647 () Bool)

(assert (=> b!4357640 m!4972647))

(assert (=> b!4357640 m!4971115))

(declare-fun m!4972649 () Bool)

(assert (=> b!4357640 m!4972649))

(declare-fun m!4972651 () Bool)

(assert (=> b!4357640 m!4972651))

(declare-fun m!4972653 () Bool)

(assert (=> b!4357640 m!4972653))

(assert (=> b!4357640 m!4972653))

(assert (=> b!4357640 m!4971115))

(assert (=> b!4357640 m!4972645))

(declare-fun m!4972655 () Bool)

(assert (=> b!4357640 m!4972655))

(declare-fun m!4972657 () Bool)

(assert (=> b!4357642 m!4972657))

(declare-fun m!4972659 () Bool)

(assert (=> bm!302856 m!4972659))

(assert (=> bm!302857 m!4972659))

(declare-fun m!4972661 () Bool)

(assert (=> d!1288403 m!4972661))

(assert (=> d!1288403 m!4971617))

(declare-fun m!4972663 () Bool)

(assert (=> b!4357641 m!4972663))

(assert (=> bm!302855 m!4971115))

(declare-fun m!4972665 () Bool)

(assert (=> bm!302855 m!4972665))

(assert (=> b!4356864 d!1288403))

(declare-fun d!1288417 () Bool)

(declare-fun res!1791129 () Bool)

(declare-fun e!2711851 () Bool)

(assert (=> d!1288417 (=> res!1791129 e!2711851)))

(assert (=> d!1288417 (= res!1791129 ((_ is Nil!48935) (toList!2966 lt!1569448)))))

(assert (=> d!1288417 (= (forall!9124 (toList!2966 lt!1569448) lambda!140578) e!2711851)))

(declare-fun b!4357671 () Bool)

(declare-fun e!2711852 () Bool)

(assert (=> b!4357671 (= e!2711851 e!2711852)))

(declare-fun res!1791130 () Bool)

(assert (=> b!4357671 (=> (not res!1791130) (not e!2711852))))

(assert (=> b!4357671 (= res!1791130 (dynLambda!20636 lambda!140578 (h!54486 (toList!2966 lt!1569448))))))

(declare-fun b!4357672 () Bool)

(assert (=> b!4357672 (= e!2711852 (forall!9124 (t!355979 (toList!2966 lt!1569448)) lambda!140578))))

(assert (= (and d!1288417 (not res!1791129)) b!4357671))

(assert (= (and b!4357671 res!1791130) b!4357672))

(declare-fun b_lambda!131289 () Bool)

(assert (=> (not b_lambda!131289) (not b!4357671)))

(declare-fun m!4972667 () Bool)

(assert (=> b!4357671 m!4972667))

(declare-fun m!4972669 () Bool)

(assert (=> b!4357672 m!4972669))

(assert (=> b!4356864 d!1288417))

(declare-fun d!1288419 () Bool)

(declare-fun res!1791131 () Bool)

(declare-fun e!2711853 () Bool)

(assert (=> d!1288419 (=> res!1791131 e!2711853)))

(assert (=> d!1288419 (= res!1791131 ((_ is Nil!48935) (toList!2966 lt!1569106)))))

(assert (=> d!1288419 (= (forall!9124 (toList!2966 lt!1569106) lambda!140577) e!2711853)))

(declare-fun b!4357673 () Bool)

(declare-fun e!2711854 () Bool)

(assert (=> b!4357673 (= e!2711853 e!2711854)))

(declare-fun res!1791132 () Bool)

(assert (=> b!4357673 (=> (not res!1791132) (not e!2711854))))

(assert (=> b!4357673 (= res!1791132 (dynLambda!20636 lambda!140577 (h!54486 (toList!2966 lt!1569106))))))

(declare-fun b!4357674 () Bool)

(assert (=> b!4357674 (= e!2711854 (forall!9124 (t!355979 (toList!2966 lt!1569106)) lambda!140577))))

(assert (= (and d!1288419 (not res!1791131)) b!4357673))

(assert (= (and b!4357673 res!1791132) b!4357674))

(declare-fun b_lambda!131291 () Bool)

(assert (=> (not b_lambda!131291) (not b!4357673)))

(declare-fun m!4972671 () Bool)

(assert (=> b!4357673 m!4972671))

(declare-fun m!4972673 () Bool)

(assert (=> b!4357674 m!4972673))

(assert (=> b!4356864 d!1288419))

(declare-fun d!1288421 () Bool)

(assert (=> d!1288421 (dynLambda!20636 lambda!140578 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(declare-fun lt!1570050 () Unit!71637)

(declare-fun choose!26934 (List!49059 Int tuple2!48334) Unit!71637)

(assert (=> d!1288421 (= lt!1570050 (choose!26934 (toList!2966 lt!1569448) lambda!140578 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun e!2711857 () Bool)

(assert (=> d!1288421 e!2711857))

(declare-fun res!1791135 () Bool)

(assert (=> d!1288421 (=> (not res!1791135) (not e!2711857))))

(assert (=> d!1288421 (= res!1791135 (forall!9124 (toList!2966 lt!1569448) lambda!140578))))

(assert (=> d!1288421 (= (forallContained!1765 (toList!2966 lt!1569448) lambda!140578 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1570050)))

(declare-fun b!4357677 () Bool)

(assert (=> b!4357677 (= e!2711857 (contains!11146 (toList!2966 lt!1569448) (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (= (and d!1288421 res!1791135) b!4357677))

(declare-fun b_lambda!131293 () Bool)

(assert (=> (not b_lambda!131293) (not d!1288421)))

(assert (=> d!1288421 m!4972587))

(declare-fun m!4972675 () Bool)

(assert (=> d!1288421 m!4972675))

(assert (=> d!1288421 m!4971105))

(declare-fun m!4972677 () Bool)

(assert (=> b!4357677 m!4972677))

(assert (=> b!4356864 d!1288421))

(declare-fun d!1288423 () Bool)

(declare-fun res!1791136 () Bool)

(declare-fun e!2711858 () Bool)

(assert (=> d!1288423 (=> res!1791136 e!2711858)))

(assert (=> d!1288423 (= res!1791136 ((_ is Nil!48935) (toList!2966 lt!1569106)))))

(assert (=> d!1288423 (= (forall!9124 (toList!2966 lt!1569106) lambda!140578) e!2711858)))

(declare-fun b!4357678 () Bool)

(declare-fun e!2711859 () Bool)

(assert (=> b!4357678 (= e!2711858 e!2711859)))

(declare-fun res!1791137 () Bool)

(assert (=> b!4357678 (=> (not res!1791137) (not e!2711859))))

(assert (=> b!4357678 (= res!1791137 (dynLambda!20636 lambda!140578 (h!54486 (toList!2966 lt!1569106))))))

(declare-fun b!4357679 () Bool)

(assert (=> b!4357679 (= e!2711859 (forall!9124 (t!355979 (toList!2966 lt!1569106)) lambda!140578))))

(assert (= (and d!1288423 (not res!1791136)) b!4357678))

(assert (= (and b!4357678 res!1791137) b!4357679))

(declare-fun b_lambda!131295 () Bool)

(assert (=> (not b_lambda!131295) (not b!4357678)))

(declare-fun m!4972679 () Bool)

(assert (=> b!4357678 m!4972679))

(declare-fun m!4972681 () Bool)

(assert (=> b!4357679 m!4972681))

(assert (=> b!4356864 d!1288423))

(declare-fun b!4357680 () Bool)

(declare-fun e!2711863 () Bool)

(assert (=> b!4357680 (= e!2711863 (not (contains!11145 (keys!16530 lt!1569448) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(declare-fun b!4357681 () Bool)

(declare-fun e!2711865 () Bool)

(assert (=> b!4357681 (= e!2711865 (contains!11145 (keys!16530 lt!1569448) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun b!4357682 () Bool)

(declare-fun e!2711864 () Unit!71637)

(declare-fun Unit!71845 () Unit!71637)

(assert (=> b!4357682 (= e!2711864 Unit!71845)))

(declare-fun b!4357683 () Bool)

(declare-fun e!2711862 () Unit!71637)

(declare-fun lt!1570052 () Unit!71637)

(assert (=> b!4357683 (= e!2711862 lt!1570052)))

(declare-fun lt!1570058 () Unit!71637)

(assert (=> b!4357683 (= lt!1570058 (lemmaContainsKeyImpliesGetValueByKeyDefined!365 (toList!2966 lt!1569448) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> b!4357683 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569448) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun lt!1570051 () Unit!71637)

(assert (=> b!4357683 (= lt!1570051 lt!1570058)))

(assert (=> b!4357683 (= lt!1570052 (lemmaInListThenGetKeysListContains!123 (toList!2966 lt!1569448) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun call!302873 () Bool)

(assert (=> b!4357683 call!302873))

(declare-fun bm!302868 () Bool)

(declare-fun e!2711860 () List!49062)

(assert (=> bm!302868 (= call!302873 (contains!11145 e!2711860 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun c!740939 () Bool)

(declare-fun c!740938 () Bool)

(assert (=> bm!302868 (= c!740939 c!740938)))

(declare-fun b!4357684 () Bool)

(assert (=> b!4357684 (= e!2711860 (keys!16530 lt!1569448))))

(declare-fun b!4357685 () Bool)

(assert (=> b!4357685 (= e!2711862 e!2711864)))

(declare-fun c!740940 () Bool)

(assert (=> b!4357685 (= c!740940 call!302873)))

(declare-fun d!1288425 () Bool)

(declare-fun e!2711861 () Bool)

(assert (=> d!1288425 e!2711861))

(declare-fun res!1791139 () Bool)

(assert (=> d!1288425 (=> res!1791139 e!2711861)))

(assert (=> d!1288425 (= res!1791139 e!2711863)))

(declare-fun res!1791140 () Bool)

(assert (=> d!1288425 (=> (not res!1791140) (not e!2711863))))

(declare-fun lt!1570056 () Bool)

(assert (=> d!1288425 (= res!1791140 (not lt!1570056))))

(declare-fun lt!1570053 () Bool)

(assert (=> d!1288425 (= lt!1570056 lt!1570053)))

(declare-fun lt!1570057 () Unit!71637)

(assert (=> d!1288425 (= lt!1570057 e!2711862)))

(assert (=> d!1288425 (= c!740938 lt!1570053)))

(assert (=> d!1288425 (= lt!1570053 (containsKey!695 (toList!2966 lt!1569448) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> d!1288425 (= (contains!11142 lt!1569448 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) lt!1570056)))

(declare-fun b!4357686 () Bool)

(assert (=> b!4357686 false))

(declare-fun lt!1570054 () Unit!71637)

(declare-fun lt!1570055 () Unit!71637)

(assert (=> b!4357686 (= lt!1570054 lt!1570055)))

(assert (=> b!4357686 (containsKey!695 (toList!2966 lt!1569448) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> b!4357686 (= lt!1570055 (lemmaInGetKeysListThenContainsKey!124 (toList!2966 lt!1569448) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun Unit!71846 () Unit!71637)

(assert (=> b!4357686 (= e!2711864 Unit!71846)))

(declare-fun b!4357687 () Bool)

(assert (=> b!4357687 (= e!2711860 (getKeysList!126 (toList!2966 lt!1569448)))))

(declare-fun b!4357688 () Bool)

(assert (=> b!4357688 (= e!2711861 e!2711865)))

(declare-fun res!1791138 () Bool)

(assert (=> b!4357688 (=> (not res!1791138) (not e!2711865))))

(assert (=> b!4357688 (= res!1791138 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569448) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(assert (= (and d!1288425 c!740938) b!4357683))

(assert (= (and d!1288425 (not c!740938)) b!4357685))

(assert (= (and b!4357685 c!740940) b!4357686))

(assert (= (and b!4357685 (not c!740940)) b!4357682))

(assert (= (or b!4357683 b!4357685) bm!302868))

(assert (= (and bm!302868 c!740939) b!4357687))

(assert (= (and bm!302868 (not c!740939)) b!4357684))

(assert (= (and d!1288425 res!1791140) b!4357680))

(assert (= (and d!1288425 (not res!1791139)) b!4357688))

(assert (= (and b!4357688 res!1791138) b!4357681))

(declare-fun m!4972683 () Bool)

(assert (=> bm!302868 m!4972683))

(declare-fun m!4972685 () Bool)

(assert (=> d!1288425 m!4972685))

(declare-fun m!4972687 () Bool)

(assert (=> b!4357681 m!4972687))

(assert (=> b!4357681 m!4972687))

(declare-fun m!4972689 () Bool)

(assert (=> b!4357681 m!4972689))

(declare-fun m!4972691 () Bool)

(assert (=> b!4357683 m!4972691))

(declare-fun m!4972693 () Bool)

(assert (=> b!4357683 m!4972693))

(assert (=> b!4357683 m!4972693))

(declare-fun m!4972695 () Bool)

(assert (=> b!4357683 m!4972695))

(declare-fun m!4972697 () Bool)

(assert (=> b!4357683 m!4972697))

(declare-fun m!4972699 () Bool)

(assert (=> b!4357687 m!4972699))

(assert (=> b!4357680 m!4972687))

(assert (=> b!4357680 m!4972687))

(assert (=> b!4357680 m!4972689))

(assert (=> b!4357688 m!4972693))

(assert (=> b!4357688 m!4972693))

(assert (=> b!4357688 m!4972695))

(assert (=> b!4357684 m!4972687))

(assert (=> b!4357686 m!4972685))

(declare-fun m!4972701 () Bool)

(assert (=> b!4357686 m!4972701))

(assert (=> b!4356864 d!1288425))

(declare-fun bs!632239 () Bool)

(declare-fun d!1288427 () Bool)

(assert (= bs!632239 (and d!1288427 b!4356864)))

(declare-fun lambda!140696 () Int)

(assert (=> bs!632239 (= (= lt!1569449 lt!1569106) (= lambda!140696 lambda!140577))))

(declare-fun bs!632240 () Bool)

(assert (= bs!632240 (and d!1288427 b!4357544)))

(assert (=> bs!632240 (= (= lt!1569449 lt!1569954) (= lambda!140696 lambda!140685))))

(declare-fun bs!632241 () Bool)

(assert (= bs!632241 (and d!1288427 b!4357380)))

(assert (=> bs!632241 (= (= lt!1569449 lt!1569818) (= lambda!140696 lambda!140657))))

(declare-fun bs!632242 () Bool)

(assert (= bs!632242 (and d!1288427 d!1288355)))

(assert (=> bs!632242 (= (= lt!1569449 lt!1569958) (= lambda!140696 lambda!140686))))

(declare-fun bs!632243 () Bool)

(assert (= bs!632243 (and d!1288427 b!4356869)))

(assert (=> bs!632243 (= (= lt!1569449 lt!1569103) (= lambda!140696 lambda!140580))))

(declare-fun bs!632244 () Bool)

(assert (= bs!632244 (and d!1288427 d!1288219)))

(assert (=> bs!632244 (= (= lt!1569449 lt!1569822) (= lambda!140696 lambda!140659))))

(declare-fun bs!632245 () Bool)

(assert (= bs!632245 (and d!1288427 b!4356871)))

(assert (=> bs!632245 (= (= lt!1569449 lt!1569470) (= lambda!140696 lambda!140582))))

(declare-fun bs!632246 () Bool)

(assert (= bs!632246 (and d!1288427 b!4357495)))

(assert (=> bs!632246 (= (= lt!1569449 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140696 lambda!140677))))

(declare-fun bs!632247 () Bool)

(assert (= bs!632247 (and d!1288427 b!4357493)))

(assert (=> bs!632247 (= (= lt!1569449 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140696 lambda!140676))))

(declare-fun bs!632249 () Bool)

(assert (= bs!632249 (and d!1288427 d!1287949)))

(assert (=> bs!632249 (= (= lt!1569449 lt!1569453) (= lambda!140696 lambda!140579))))

(assert (=> bs!632241 (= (= lt!1569449 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140696 lambda!140656))))

(declare-fun bs!632251 () Bool)

(assert (= bs!632251 (and d!1288427 b!4357485)))

(assert (=> bs!632251 (= (= lt!1569449 lt!1569877) (= lambda!140696 lambda!140671))))

(declare-fun bs!632252 () Bool)

(assert (= bs!632252 (and d!1288427 b!4356862)))

(assert (=> bs!632252 (= (= lt!1569449 lt!1569106) (= lambda!140696 lambda!140576))))

(declare-fun bs!632253 () Bool)

(assert (= bs!632253 (and d!1288427 b!4357483)))

(assert (=> bs!632253 (= (= lt!1569449 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140696 lambda!140668))))

(declare-fun bs!632255 () Bool)

(assert (= bs!632255 (and d!1288427 b!4357378)))

(assert (=> bs!632255 (= (= lt!1569449 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140696 lambda!140655))))

(assert (=> bs!632251 (= (= lt!1569449 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140696 lambda!140670))))

(assert (=> bs!632239 (= lambda!140696 lambda!140578)))

(declare-fun bs!632259 () Bool)

(assert (= bs!632259 (and d!1288427 b!4357638)))

(assert (=> bs!632259 (= (= lt!1569449 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140696 lambda!140687))))

(declare-fun bs!632261 () Bool)

(assert (= bs!632261 (and d!1288427 d!1288275)))

(assert (=> bs!632261 (= (= lt!1569449 lt!1569106) (= lambda!140696 lambda!140667))))

(assert (=> bs!632245 (= (= lt!1569449 lt!1569103) (= lambda!140696 lambda!140581))))

(declare-fun bs!632264 () Bool)

(assert (= bs!632264 (and d!1288427 d!1287975)))

(assert (=> bs!632264 (= (= lt!1569449 lt!1569474) (= lambda!140696 lambda!140583))))

(declare-fun bs!632266 () Bool)

(assert (= bs!632266 (and d!1288427 b!4357542)))

(assert (=> bs!632266 (= (= lt!1569449 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140696 lambda!140683))))

(declare-fun bs!632268 () Bool)

(assert (= bs!632268 (and d!1288427 d!1287907)))

(assert (=> bs!632268 (not (= lambda!140696 lambda!140513))))

(declare-fun bs!632270 () Bool)

(assert (= bs!632270 (and d!1288427 b!4357640)))

(assert (=> bs!632270 (= (= lt!1569449 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140696 lambda!140688))))

(declare-fun bs!632272 () Bool)

(assert (= bs!632272 (and d!1288427 d!1288297)))

(assert (=> bs!632272 (= (= lt!1569449 lt!1569923) (= lambda!140696 lambda!140679))))

(assert (=> bs!632240 (= (= lt!1569449 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140696 lambda!140684))))

(declare-fun bs!632274 () Bool)

(assert (= bs!632274 (and d!1288427 b!4357024)))

(assert (=> bs!632274 (= (= lt!1569449 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140696 lambda!140611))))

(declare-fun bs!632276 () Bool)

(assert (= bs!632276 (and d!1288427 d!1288293)))

(assert (=> bs!632276 (= (= lt!1569449 lt!1569881) (= lambda!140696 lambda!140674))))

(declare-fun bs!632278 () Bool)

(assert (= bs!632278 (and d!1288427 d!1288049)))

(assert (=> bs!632278 (= (= lt!1569449 lt!1569582) (= lambda!140696 lambda!140614))))

(assert (=> bs!632246 (= (= lt!1569449 lt!1569919) (= lambda!140696 lambda!140678))))

(declare-fun bs!632280 () Bool)

(assert (= bs!632280 (and d!1288427 b!4357022)))

(assert (=> bs!632280 (= (= lt!1569449 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140696 lambda!140609))))

(assert (=> bs!632274 (= (= lt!1569449 lt!1569578) (= lambda!140696 lambda!140612))))

(assert (=> bs!632270 (= (= lt!1569449 lt!1570020) (= lambda!140696 lambda!140689))))

(declare-fun bs!632283 () Bool)

(assert (= bs!632283 (and d!1288427 d!1288403)))

(assert (=> bs!632283 (= (= lt!1569449 lt!1570024) (= lambda!140696 lambda!140690))))

(assert (=> d!1288427 true))

(assert (=> d!1288427 (forall!9124 (toList!2966 lt!1569106) lambda!140696)))

(declare-fun lt!1570078 () Unit!71637)

(declare-fun choose!26935 (ListMap!2209 ListMap!2209 K!10295 V!10541) Unit!71637)

(assert (=> d!1288427 (= lt!1570078 (choose!26935 lt!1569106 lt!1569449 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> d!1288427 (forall!9124 (toList!2966 (+!640 lt!1569106 (tuple2!48335 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))) lambda!140696)))

(assert (=> d!1288427 (= (addForallContainsKeyThenBeforeAdding!61 lt!1569106 lt!1569449 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) lt!1570078)))

(declare-fun bs!632288 () Bool)

(assert (= bs!632288 d!1288427))

(declare-fun m!4972763 () Bool)

(assert (=> bs!632288 m!4972763))

(declare-fun m!4972765 () Bool)

(assert (=> bs!632288 m!4972765))

(declare-fun m!4972767 () Bool)

(assert (=> bs!632288 m!4972767))

(declare-fun m!4972769 () Bool)

(assert (=> bs!632288 m!4972769))

(assert (=> b!4356864 d!1288427))

(declare-fun b!4357705 () Bool)

(declare-fun e!2711877 () Bool)

(assert (=> b!4357705 (= e!2711877 (not (contains!11145 (keys!16530 lt!1569449) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(declare-fun b!4357706 () Bool)

(declare-fun e!2711879 () Bool)

(assert (=> b!4357706 (= e!2711879 (contains!11145 (keys!16530 lt!1569449) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun b!4357707 () Bool)

(declare-fun e!2711878 () Unit!71637)

(declare-fun Unit!71847 () Unit!71637)

(assert (=> b!4357707 (= e!2711878 Unit!71847)))

(declare-fun b!4357708 () Bool)

(declare-fun e!2711876 () Unit!71637)

(declare-fun lt!1570101 () Unit!71637)

(assert (=> b!4357708 (= e!2711876 lt!1570101)))

(declare-fun lt!1570107 () Unit!71637)

(assert (=> b!4357708 (= lt!1570107 (lemmaContainsKeyImpliesGetValueByKeyDefined!365 (toList!2966 lt!1569449) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> b!4357708 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569449) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun lt!1570100 () Unit!71637)

(assert (=> b!4357708 (= lt!1570100 lt!1570107)))

(assert (=> b!4357708 (= lt!1570101 (lemmaInListThenGetKeysListContains!123 (toList!2966 lt!1569449) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun call!302877 () Bool)

(assert (=> b!4357708 call!302877))

(declare-fun bm!302872 () Bool)

(declare-fun e!2711874 () List!49062)

(assert (=> bm!302872 (= call!302877 (contains!11145 e!2711874 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun c!740944 () Bool)

(declare-fun c!740943 () Bool)

(assert (=> bm!302872 (= c!740944 c!740943)))

(declare-fun b!4357709 () Bool)

(assert (=> b!4357709 (= e!2711874 (keys!16530 lt!1569449))))

(declare-fun b!4357710 () Bool)

(assert (=> b!4357710 (= e!2711876 e!2711878)))

(declare-fun c!740945 () Bool)

(assert (=> b!4357710 (= c!740945 call!302877)))

(declare-fun d!1288443 () Bool)

(declare-fun e!2711875 () Bool)

(assert (=> d!1288443 e!2711875))

(declare-fun res!1791153 () Bool)

(assert (=> d!1288443 (=> res!1791153 e!2711875)))

(assert (=> d!1288443 (= res!1791153 e!2711877)))

(declare-fun res!1791154 () Bool)

(assert (=> d!1288443 (=> (not res!1791154) (not e!2711877))))

(declare-fun lt!1570105 () Bool)

(assert (=> d!1288443 (= res!1791154 (not lt!1570105))))

(declare-fun lt!1570102 () Bool)

(assert (=> d!1288443 (= lt!1570105 lt!1570102)))

(declare-fun lt!1570106 () Unit!71637)

(assert (=> d!1288443 (= lt!1570106 e!2711876)))

(assert (=> d!1288443 (= c!740943 lt!1570102)))

(assert (=> d!1288443 (= lt!1570102 (containsKey!695 (toList!2966 lt!1569449) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> d!1288443 (= (contains!11142 lt!1569449 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) lt!1570105)))

(declare-fun b!4357711 () Bool)

(assert (=> b!4357711 false))

(declare-fun lt!1570103 () Unit!71637)

(declare-fun lt!1570104 () Unit!71637)

(assert (=> b!4357711 (= lt!1570103 lt!1570104)))

(assert (=> b!4357711 (containsKey!695 (toList!2966 lt!1569449) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> b!4357711 (= lt!1570104 (lemmaInGetKeysListThenContainsKey!124 (toList!2966 lt!1569449) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun Unit!71848 () Unit!71637)

(assert (=> b!4357711 (= e!2711878 Unit!71848)))

(declare-fun b!4357712 () Bool)

(assert (=> b!4357712 (= e!2711874 (getKeysList!126 (toList!2966 lt!1569449)))))

(declare-fun b!4357713 () Bool)

(assert (=> b!4357713 (= e!2711875 e!2711879)))

(declare-fun res!1791152 () Bool)

(assert (=> b!4357713 (=> (not res!1791152) (not e!2711879))))

(assert (=> b!4357713 (= res!1791152 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569449) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(assert (= (and d!1288443 c!740943) b!4357708))

(assert (= (and d!1288443 (not c!740943)) b!4357710))

(assert (= (and b!4357710 c!740945) b!4357711))

(assert (= (and b!4357710 (not c!740945)) b!4357707))

(assert (= (or b!4357708 b!4357710) bm!302872))

(assert (= (and bm!302872 c!740944) b!4357712))

(assert (= (and bm!302872 (not c!740944)) b!4357709))

(assert (= (and d!1288443 res!1791154) b!4357705))

(assert (= (and d!1288443 (not res!1791153)) b!4357713))

(assert (= (and b!4357713 res!1791152) b!4357706))

(declare-fun m!4972771 () Bool)

(assert (=> bm!302872 m!4972771))

(declare-fun m!4972773 () Bool)

(assert (=> d!1288443 m!4972773))

(declare-fun m!4972775 () Bool)

(assert (=> b!4357706 m!4972775))

(assert (=> b!4357706 m!4972775))

(declare-fun m!4972777 () Bool)

(assert (=> b!4357706 m!4972777))

(declare-fun m!4972779 () Bool)

(assert (=> b!4357708 m!4972779))

(declare-fun m!4972781 () Bool)

(assert (=> b!4357708 m!4972781))

(assert (=> b!4357708 m!4972781))

(declare-fun m!4972783 () Bool)

(assert (=> b!4357708 m!4972783))

(declare-fun m!4972785 () Bool)

(assert (=> b!4357708 m!4972785))

(declare-fun m!4972787 () Bool)

(assert (=> b!4357712 m!4972787))

(assert (=> b!4357705 m!4972775))

(assert (=> b!4357705 m!4972775))

(assert (=> b!4357705 m!4972777))

(assert (=> b!4357713 m!4972781))

(assert (=> b!4357713 m!4972781))

(assert (=> b!4357713 m!4972783))

(assert (=> b!4357709 m!4972775))

(assert (=> b!4357711 m!4972773))

(declare-fun m!4972789 () Bool)

(assert (=> b!4357711 m!4972789))

(assert (=> b!4356864 d!1288443))

(declare-fun bs!632307 () Bool)

(declare-fun b!4357717 () Bool)

(assert (= bs!632307 (and b!4357717 b!4356991)))

(declare-fun lambda!140699 () Int)

(assert (=> bs!632307 (= (= (t!355979 (toList!2966 lt!1569104)) (toList!2966 lt!1569103)) (= lambda!140699 lambda!140606))))

(declare-fun bs!632310 () Bool)

(assert (= bs!632310 (and b!4357717 b!4356914)))

(assert (=> bs!632310 (= (= (t!355979 (toList!2966 lt!1569104)) (toList!2966 lt!1569110)) (= lambda!140699 lambda!140592))))

(declare-fun bs!632312 () Bool)

(assert (= bs!632312 (and b!4357717 b!4357400)))

(assert (=> bs!632312 (= (= (t!355979 (toList!2966 lt!1569104)) (toList!2966 lt!1569103)) (= lambda!140699 lambda!140661))))

(declare-fun bs!632313 () Bool)

(assert (= bs!632313 (and b!4357717 b!4356996)))

(assert (=> bs!632313 (= (= (t!355979 (toList!2966 lt!1569104)) (Cons!48935 (h!54486 (toList!2966 lt!1569103)) (t!355979 (toList!2966 lt!1569103)))) (= lambda!140699 lambda!140605))))

(declare-fun bs!632314 () Bool)

(assert (= bs!632314 (and b!4357717 b!4356993)))

(assert (=> bs!632314 (= (= (t!355979 (toList!2966 lt!1569104)) (t!355979 (toList!2966 lt!1569103))) (= lambda!140699 lambda!140604))))

(declare-fun bs!632316 () Bool)

(assert (= bs!632316 (and b!4357717 b!4356945)))

(assert (=> bs!632316 (= (= (t!355979 (toList!2966 lt!1569104)) (toList!2966 lt!1569104)) (= lambda!140699 lambda!140594))))

(assert (=> b!4357717 true))

(declare-fun bs!632319 () Bool)

(declare-fun b!4357719 () Bool)

(assert (= bs!632319 (and b!4357719 b!4356991)))

(declare-fun lambda!140700 () Int)

(assert (=> bs!632319 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569104)) (t!355979 (toList!2966 lt!1569104))) (toList!2966 lt!1569103)) (= lambda!140700 lambda!140606))))

(declare-fun bs!632320 () Bool)

(assert (= bs!632320 (and b!4357719 b!4357717)))

(assert (=> bs!632320 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569104)) (t!355979 (toList!2966 lt!1569104))) (t!355979 (toList!2966 lt!1569104))) (= lambda!140700 lambda!140699))))

(declare-fun bs!632321 () Bool)

(assert (= bs!632321 (and b!4357719 b!4356914)))

(assert (=> bs!632321 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569104)) (t!355979 (toList!2966 lt!1569104))) (toList!2966 lt!1569110)) (= lambda!140700 lambda!140592))))

(declare-fun bs!632322 () Bool)

(assert (= bs!632322 (and b!4357719 b!4357400)))

(assert (=> bs!632322 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569104)) (t!355979 (toList!2966 lt!1569104))) (toList!2966 lt!1569103)) (= lambda!140700 lambda!140661))))

(declare-fun bs!632323 () Bool)

(assert (= bs!632323 (and b!4357719 b!4356996)))

(assert (=> bs!632323 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569104)) (t!355979 (toList!2966 lt!1569104))) (Cons!48935 (h!54486 (toList!2966 lt!1569103)) (t!355979 (toList!2966 lt!1569103)))) (= lambda!140700 lambda!140605))))

(declare-fun bs!632324 () Bool)

(assert (= bs!632324 (and b!4357719 b!4356993)))

(assert (=> bs!632324 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569104)) (t!355979 (toList!2966 lt!1569104))) (t!355979 (toList!2966 lt!1569103))) (= lambda!140700 lambda!140604))))

(declare-fun bs!632325 () Bool)

(assert (= bs!632325 (and b!4357719 b!4356945)))

(assert (=> bs!632325 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569104)) (t!355979 (toList!2966 lt!1569104))) (toList!2966 lt!1569104)) (= lambda!140700 lambda!140594))))

(assert (=> b!4357719 true))

(declare-fun bs!632326 () Bool)

(declare-fun b!4357715 () Bool)

(assert (= bs!632326 (and b!4357715 b!4357719)))

(declare-fun lambda!140702 () Int)

(assert (=> bs!632326 (= (= (toList!2966 lt!1569104) (Cons!48935 (h!54486 (toList!2966 lt!1569104)) (t!355979 (toList!2966 lt!1569104)))) (= lambda!140702 lambda!140700))))

(declare-fun bs!632327 () Bool)

(assert (= bs!632327 (and b!4357715 b!4356991)))

(assert (=> bs!632327 (= (= (toList!2966 lt!1569104) (toList!2966 lt!1569103)) (= lambda!140702 lambda!140606))))

(declare-fun bs!632328 () Bool)

(assert (= bs!632328 (and b!4357715 b!4357717)))

(assert (=> bs!632328 (= (= (toList!2966 lt!1569104) (t!355979 (toList!2966 lt!1569104))) (= lambda!140702 lambda!140699))))

(declare-fun bs!632329 () Bool)

(assert (= bs!632329 (and b!4357715 b!4356914)))

(assert (=> bs!632329 (= (= (toList!2966 lt!1569104) (toList!2966 lt!1569110)) (= lambda!140702 lambda!140592))))

(declare-fun bs!632330 () Bool)

(assert (= bs!632330 (and b!4357715 b!4357400)))

(assert (=> bs!632330 (= (= (toList!2966 lt!1569104) (toList!2966 lt!1569103)) (= lambda!140702 lambda!140661))))

(declare-fun bs!632331 () Bool)

(assert (= bs!632331 (and b!4357715 b!4356996)))

(assert (=> bs!632331 (= (= (toList!2966 lt!1569104) (Cons!48935 (h!54486 (toList!2966 lt!1569103)) (t!355979 (toList!2966 lt!1569103)))) (= lambda!140702 lambda!140605))))

(declare-fun bs!632332 () Bool)

(assert (= bs!632332 (and b!4357715 b!4356993)))

(assert (=> bs!632332 (= (= (toList!2966 lt!1569104) (t!355979 (toList!2966 lt!1569103))) (= lambda!140702 lambda!140604))))

(declare-fun bs!632333 () Bool)

(assert (= bs!632333 (and b!4357715 b!4356945)))

(assert (=> bs!632333 (= lambda!140702 lambda!140594)))

(assert (=> b!4357715 true))

(declare-fun bs!632334 () Bool)

(declare-fun b!4357721 () Bool)

(assert (= bs!632334 (and b!4357721 b!4356915)))

(declare-fun lambda!140703 () Int)

(assert (=> bs!632334 (= lambda!140703 lambda!140593)))

(declare-fun bs!632335 () Bool)

(assert (= bs!632335 (and b!4357721 b!4356946)))

(assert (=> bs!632335 (= lambda!140703 lambda!140595)))

(declare-fun bs!632336 () Bool)

(assert (= bs!632336 (and b!4357721 b!4356999)))

(assert (=> bs!632336 (= lambda!140703 lambda!140607)))

(declare-fun bs!632337 () Bool)

(assert (= bs!632337 (and b!4357721 b!4357401)))

(assert (=> bs!632337 (= lambda!140703 lambda!140663)))

(declare-fun b!4357714 () Bool)

(declare-fun e!2711881 () Unit!71637)

(declare-fun Unit!71849 () Unit!71637)

(assert (=> b!4357714 (= e!2711881 Unit!71849)))

(declare-fun res!1791157 () Bool)

(declare-fun e!2711882 () Bool)

(assert (=> b!4357715 (=> (not res!1791157) (not e!2711882))))

(declare-fun lt!1570108 () List!49062)

(assert (=> b!4357715 (= res!1791157 (forall!9125 lt!1570108 lambda!140702))))

(declare-fun b!4357716 () Bool)

(declare-fun res!1791156 () Bool)

(assert (=> b!4357716 (=> (not res!1791156) (not e!2711882))))

(assert (=> b!4357716 (= res!1791156 (= (length!62 lt!1570108) (length!63 (toList!2966 lt!1569104))))))

(assert (=> b!4357717 false))

(declare-fun lt!1570109 () Unit!71637)

(assert (=> b!4357717 (= lt!1570109 (forallContained!1766 (getKeysList!126 (t!355979 (toList!2966 lt!1569104))) lambda!140699 (_1!27461 (h!54486 (toList!2966 lt!1569104)))))))

(declare-fun e!2711883 () Unit!71637)

(declare-fun Unit!71850 () Unit!71637)

(assert (=> b!4357717 (= e!2711883 Unit!71850)))

(declare-fun b!4357718 () Bool)

(assert (=> b!4357718 false))

(declare-fun Unit!71851 () Unit!71637)

(assert (=> b!4357718 (= e!2711881 Unit!71851)))

(declare-fun e!2711880 () List!49062)

(assert (=> b!4357719 (= e!2711880 (Cons!48938 (_1!27461 (h!54486 (toList!2966 lt!1569104))) (getKeysList!126 (t!355979 (toList!2966 lt!1569104)))))))

(declare-fun c!740948 () Bool)

(assert (=> b!4357719 (= c!740948 (containsKey!695 (t!355979 (toList!2966 lt!1569104)) (_1!27461 (h!54486 (toList!2966 lt!1569104)))))))

(declare-fun lt!1570114 () Unit!71637)

(assert (=> b!4357719 (= lt!1570114 e!2711881)))

(declare-fun c!740947 () Bool)

(assert (=> b!4357719 (= c!740947 (contains!11145 (getKeysList!126 (t!355979 (toList!2966 lt!1569104))) (_1!27461 (h!54486 (toList!2966 lt!1569104)))))))

(declare-fun lt!1570110 () Unit!71637)

(assert (=> b!4357719 (= lt!1570110 e!2711883)))

(declare-fun lt!1570113 () List!49062)

(assert (=> b!4357719 (= lt!1570113 (getKeysList!126 (t!355979 (toList!2966 lt!1569104))))))

(declare-fun lt!1570112 () Unit!71637)

(assert (=> b!4357719 (= lt!1570112 (lemmaForallContainsAddHeadPreserves!25 (t!355979 (toList!2966 lt!1569104)) lt!1570113 (h!54486 (toList!2966 lt!1569104))))))

(assert (=> b!4357719 (forall!9125 lt!1570113 lambda!140700)))

(declare-fun lt!1570111 () Unit!71637)

(assert (=> b!4357719 (= lt!1570111 lt!1570112)))

(declare-fun d!1288445 () Bool)

(assert (=> d!1288445 e!2711882))

(declare-fun res!1791155 () Bool)

(assert (=> d!1288445 (=> (not res!1791155) (not e!2711882))))

(assert (=> d!1288445 (= res!1791155 (noDuplicate!603 lt!1570108))))

(assert (=> d!1288445 (= lt!1570108 e!2711880)))

(declare-fun c!740946 () Bool)

(assert (=> d!1288445 (= c!740946 ((_ is Cons!48935) (toList!2966 lt!1569104)))))

(assert (=> d!1288445 (invariantList!678 (toList!2966 lt!1569104))))

(assert (=> d!1288445 (= (getKeysList!126 (toList!2966 lt!1569104)) lt!1570108)))

(declare-fun b!4357720 () Bool)

(declare-fun Unit!71852 () Unit!71637)

(assert (=> b!4357720 (= e!2711883 Unit!71852)))

(assert (=> b!4357721 (= e!2711882 (= (content!7722 lt!1570108) (content!7722 (map!10645 (toList!2966 lt!1569104) lambda!140703))))))

(declare-fun b!4357722 () Bool)

(assert (=> b!4357722 (= e!2711880 Nil!48938)))

(assert (= (and d!1288445 c!740946) b!4357719))

(assert (= (and d!1288445 (not c!740946)) b!4357722))

(assert (= (and b!4357719 c!740948) b!4357718))

(assert (= (and b!4357719 (not c!740948)) b!4357714))

(assert (= (and b!4357719 c!740947) b!4357717))

(assert (= (and b!4357719 (not c!740947)) b!4357720))

(assert (= (and d!1288445 res!1791155) b!4357716))

(assert (= (and b!4357716 res!1791156) b!4357715))

(assert (= (and b!4357715 res!1791157) b!4357721))

(declare-fun m!4972791 () Bool)

(assert (=> b!4357719 m!4972791))

(declare-fun m!4972793 () Bool)

(assert (=> b!4357719 m!4972793))

(assert (=> b!4357719 m!4972791))

(declare-fun m!4972795 () Bool)

(assert (=> b!4357719 m!4972795))

(declare-fun m!4972797 () Bool)

(assert (=> b!4357719 m!4972797))

(declare-fun m!4972799 () Bool)

(assert (=> b!4357719 m!4972799))

(assert (=> b!4357717 m!4972791))

(assert (=> b!4357717 m!4972791))

(declare-fun m!4972801 () Bool)

(assert (=> b!4357717 m!4972801))

(declare-fun m!4972803 () Bool)

(assert (=> b!4357716 m!4972803))

(assert (=> b!4357716 m!4971285))

(declare-fun m!4972805 () Bool)

(assert (=> b!4357715 m!4972805))

(declare-fun m!4972807 () Bool)

(assert (=> b!4357721 m!4972807))

(declare-fun m!4972809 () Bool)

(assert (=> b!4357721 m!4972809))

(assert (=> b!4357721 m!4972809))

(declare-fun m!4972811 () Bool)

(assert (=> b!4357721 m!4972811))

(declare-fun m!4972813 () Bool)

(assert (=> d!1288445 m!4972813))

(assert (=> d!1288445 m!4972413))

(assert (=> b!4356881 d!1288445))

(declare-fun d!1288447 () Bool)

(assert (=> d!1288447 (= (isEmpty!28203 (toList!2965 lm!1707)) ((_ is Nil!48936) (toList!2965 lm!1707)))))

(assert (=> d!1287985 d!1288447))

(declare-fun d!1288449 () Bool)

(declare-fun res!1791158 () Bool)

(declare-fun e!2711884 () Bool)

(assert (=> d!1288449 (=> res!1791158 e!2711884)))

(assert (=> d!1288449 (= res!1791158 ((_ is Nil!48935) (toList!2966 lt!1569103)))))

(assert (=> d!1288449 (= (forall!9124 (toList!2966 lt!1569103) lambda!140583) e!2711884)))

(declare-fun b!4357723 () Bool)

(declare-fun e!2711885 () Bool)

(assert (=> b!4357723 (= e!2711884 e!2711885)))

(declare-fun res!1791159 () Bool)

(assert (=> b!4357723 (=> (not res!1791159) (not e!2711885))))

(assert (=> b!4357723 (= res!1791159 (dynLambda!20636 lambda!140583 (h!54486 (toList!2966 lt!1569103))))))

(declare-fun b!4357724 () Bool)

(assert (=> b!4357724 (= e!2711885 (forall!9124 (t!355979 (toList!2966 lt!1569103)) lambda!140583))))

(assert (= (and d!1288449 (not res!1791158)) b!4357723))

(assert (= (and b!4357723 res!1791159) b!4357724))

(declare-fun b_lambda!131297 () Bool)

(assert (=> (not b_lambda!131297) (not b!4357723)))

(declare-fun m!4972815 () Bool)

(assert (=> b!4357723 m!4972815))

(declare-fun m!4972817 () Bool)

(assert (=> b!4357724 m!4972817))

(assert (=> b!4356873 d!1288449))

(declare-fun d!1288451 () Bool)

(declare-fun res!1791160 () Bool)

(declare-fun e!2711886 () Bool)

(assert (=> d!1288451 (=> res!1791160 e!2711886)))

(assert (=> d!1288451 (= res!1791160 ((_ is Nil!48935) (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(assert (=> d!1288451 (= (forall!9124 (_2!27462 (h!54487 (toList!2965 lm!1707))) lambda!140582) e!2711886)))

(declare-fun b!4357725 () Bool)

(declare-fun e!2711887 () Bool)

(assert (=> b!4357725 (= e!2711886 e!2711887)))

(declare-fun res!1791161 () Bool)

(assert (=> b!4357725 (=> (not res!1791161) (not e!2711887))))

(assert (=> b!4357725 (= res!1791161 (dynLambda!20636 lambda!140582 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun b!4357726 () Bool)

(assert (=> b!4357726 (= e!2711887 (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lambda!140582))))

(assert (= (and d!1288451 (not res!1791160)) b!4357725))

(assert (= (and b!4357725 res!1791161) b!4357726))

(declare-fun b_lambda!131299 () Bool)

(assert (=> (not b_lambda!131299) (not b!4357725)))

(declare-fun m!4972819 () Bool)

(assert (=> b!4357725 m!4972819))

(assert (=> b!4357726 m!4971141))

(assert (=> b!4356871 d!1288451))

(declare-fun b!4357727 () Bool)

(declare-fun e!2711891 () Bool)

(assert (=> b!4357727 (= e!2711891 (not (contains!11145 (keys!16530 lt!1569469) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(declare-fun b!4357728 () Bool)

(declare-fun e!2711893 () Bool)

(assert (=> b!4357728 (= e!2711893 (contains!11145 (keys!16530 lt!1569469) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun b!4357729 () Bool)

(declare-fun e!2711892 () Unit!71637)

(declare-fun Unit!71857 () Unit!71637)

(assert (=> b!4357729 (= e!2711892 Unit!71857)))

(declare-fun b!4357730 () Bool)

(declare-fun e!2711890 () Unit!71637)

(declare-fun lt!1570116 () Unit!71637)

(assert (=> b!4357730 (= e!2711890 lt!1570116)))

(declare-fun lt!1570122 () Unit!71637)

(assert (=> b!4357730 (= lt!1570122 (lemmaContainsKeyImpliesGetValueByKeyDefined!365 (toList!2966 lt!1569469) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> b!4357730 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569469) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun lt!1570115 () Unit!71637)

(assert (=> b!4357730 (= lt!1570115 lt!1570122)))

(assert (=> b!4357730 (= lt!1570116 (lemmaInListThenGetKeysListContains!123 (toList!2966 lt!1569469) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun call!302878 () Bool)

(assert (=> b!4357730 call!302878))

(declare-fun bm!302873 () Bool)

(declare-fun e!2711888 () List!49062)

(assert (=> bm!302873 (= call!302878 (contains!11145 e!2711888 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun c!740950 () Bool)

(declare-fun c!740949 () Bool)

(assert (=> bm!302873 (= c!740950 c!740949)))

(declare-fun b!4357731 () Bool)

(assert (=> b!4357731 (= e!2711888 (keys!16530 lt!1569469))))

(declare-fun b!4357732 () Bool)

(assert (=> b!4357732 (= e!2711890 e!2711892)))

(declare-fun c!740951 () Bool)

(assert (=> b!4357732 (= c!740951 call!302878)))

(declare-fun d!1288453 () Bool)

(declare-fun e!2711889 () Bool)

(assert (=> d!1288453 e!2711889))

(declare-fun res!1791163 () Bool)

(assert (=> d!1288453 (=> res!1791163 e!2711889)))

(assert (=> d!1288453 (= res!1791163 e!2711891)))

(declare-fun res!1791164 () Bool)

(assert (=> d!1288453 (=> (not res!1791164) (not e!2711891))))

(declare-fun lt!1570120 () Bool)

(assert (=> d!1288453 (= res!1791164 (not lt!1570120))))

(declare-fun lt!1570117 () Bool)

(assert (=> d!1288453 (= lt!1570120 lt!1570117)))

(declare-fun lt!1570121 () Unit!71637)

(assert (=> d!1288453 (= lt!1570121 e!2711890)))

(assert (=> d!1288453 (= c!740949 lt!1570117)))

(assert (=> d!1288453 (= lt!1570117 (containsKey!695 (toList!2966 lt!1569469) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> d!1288453 (= (contains!11142 lt!1569469 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) lt!1570120)))

(declare-fun b!4357733 () Bool)

(assert (=> b!4357733 false))

(declare-fun lt!1570118 () Unit!71637)

(declare-fun lt!1570119 () Unit!71637)

(assert (=> b!4357733 (= lt!1570118 lt!1570119)))

(assert (=> b!4357733 (containsKey!695 (toList!2966 lt!1569469) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> b!4357733 (= lt!1570119 (lemmaInGetKeysListThenContainsKey!124 (toList!2966 lt!1569469) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun Unit!71865 () Unit!71637)

(assert (=> b!4357733 (= e!2711892 Unit!71865)))

(declare-fun b!4357734 () Bool)

(assert (=> b!4357734 (= e!2711888 (getKeysList!126 (toList!2966 lt!1569469)))))

(declare-fun b!4357735 () Bool)

(assert (=> b!4357735 (= e!2711889 e!2711893)))

(declare-fun res!1791162 () Bool)

(assert (=> b!4357735 (=> (not res!1791162) (not e!2711893))))

(assert (=> b!4357735 (= res!1791162 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569469) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(assert (= (and d!1288453 c!740949) b!4357730))

(assert (= (and d!1288453 (not c!740949)) b!4357732))

(assert (= (and b!4357732 c!740951) b!4357733))

(assert (= (and b!4357732 (not c!740951)) b!4357729))

(assert (= (or b!4357730 b!4357732) bm!302873))

(assert (= (and bm!302873 c!740950) b!4357734))

(assert (= (and bm!302873 (not c!740950)) b!4357731))

(assert (= (and d!1288453 res!1791164) b!4357727))

(assert (= (and d!1288453 (not res!1791163)) b!4357735))

(assert (= (and b!4357735 res!1791162) b!4357728))

(declare-fun m!4972821 () Bool)

(assert (=> bm!302873 m!4972821))

(declare-fun m!4972823 () Bool)

(assert (=> d!1288453 m!4972823))

(declare-fun m!4972825 () Bool)

(assert (=> b!4357728 m!4972825))

(assert (=> b!4357728 m!4972825))

(declare-fun m!4972827 () Bool)

(assert (=> b!4357728 m!4972827))

(declare-fun m!4972829 () Bool)

(assert (=> b!4357730 m!4972829))

(declare-fun m!4972831 () Bool)

(assert (=> b!4357730 m!4972831))

(assert (=> b!4357730 m!4972831))

(declare-fun m!4972833 () Bool)

(assert (=> b!4357730 m!4972833))

(declare-fun m!4972835 () Bool)

(assert (=> b!4357730 m!4972835))

(declare-fun m!4972837 () Bool)

(assert (=> b!4357734 m!4972837))

(assert (=> b!4357727 m!4972825))

(assert (=> b!4357727 m!4972825))

(assert (=> b!4357727 m!4972827))

(assert (=> b!4357735 m!4972831))

(assert (=> b!4357735 m!4972831))

(assert (=> b!4357735 m!4972833))

(assert (=> b!4357731 m!4972825))

(assert (=> b!4357733 m!4972823))

(declare-fun m!4972839 () Bool)

(assert (=> b!4357733 m!4972839))

(assert (=> b!4356871 d!1288453))

(declare-fun d!1288455 () Bool)

(declare-fun res!1791165 () Bool)

(declare-fun e!2711894 () Bool)

(assert (=> d!1288455 (=> res!1791165 e!2711894)))

(assert (=> d!1288455 (= res!1791165 ((_ is Nil!48935) (toList!2966 lt!1569103)))))

(assert (=> d!1288455 (= (forall!9124 (toList!2966 lt!1569103) lambda!140582) e!2711894)))

(declare-fun b!4357736 () Bool)

(declare-fun e!2711895 () Bool)

(assert (=> b!4357736 (= e!2711894 e!2711895)))

(declare-fun res!1791166 () Bool)

(assert (=> b!4357736 (=> (not res!1791166) (not e!2711895))))

(assert (=> b!4357736 (= res!1791166 (dynLambda!20636 lambda!140582 (h!54486 (toList!2966 lt!1569103))))))

(declare-fun b!4357737 () Bool)

(assert (=> b!4357737 (= e!2711895 (forall!9124 (t!355979 (toList!2966 lt!1569103)) lambda!140582))))

(assert (= (and d!1288455 (not res!1791165)) b!4357736))

(assert (= (and b!4357736 res!1791166) b!4357737))

(declare-fun b_lambda!131301 () Bool)

(assert (=> (not b_lambda!131301) (not b!4357736)))

(declare-fun m!4972841 () Bool)

(assert (=> b!4357736 m!4972841))

(declare-fun m!4972843 () Bool)

(assert (=> b!4357737 m!4972843))

(assert (=> b!4356871 d!1288455))

(declare-fun d!1288457 () Bool)

(declare-fun e!2711896 () Bool)

(assert (=> d!1288457 e!2711896))

(declare-fun res!1791167 () Bool)

(assert (=> d!1288457 (=> (not res!1791167) (not e!2711896))))

(declare-fun lt!1570125 () ListMap!2209)

(assert (=> d!1288457 (= res!1791167 (contains!11142 lt!1570125 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun lt!1570126 () List!49059)

(assert (=> d!1288457 (= lt!1570125 (ListMap!2210 lt!1570126))))

(declare-fun lt!1570123 () Unit!71637)

(declare-fun lt!1570124 () Unit!71637)

(assert (=> d!1288457 (= lt!1570123 lt!1570124)))

(assert (=> d!1288457 (= (getValueByKey!455 lt!1570126 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (Some!10468 (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> d!1288457 (= lt!1570124 (lemmaContainsTupThenGetReturnValue!227 lt!1570126 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> d!1288457 (= lt!1570126 (insertNoDuplicatedKeys!101 (toList!2966 lt!1569103) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> d!1288457 (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1570125)))

(declare-fun b!4357738 () Bool)

(declare-fun res!1791168 () Bool)

(assert (=> b!4357738 (=> (not res!1791168) (not e!2711896))))

(assert (=> b!4357738 (= res!1791168 (= (getValueByKey!455 (toList!2966 lt!1570125) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (Some!10468 (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(declare-fun b!4357739 () Bool)

(assert (=> b!4357739 (= e!2711896 (contains!11146 (toList!2966 lt!1570125) (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (= (and d!1288457 res!1791167) b!4357738))

(assert (= (and b!4357738 res!1791168) b!4357739))

(declare-fun m!4972845 () Bool)

(assert (=> d!1288457 m!4972845))

(declare-fun m!4972847 () Bool)

(assert (=> d!1288457 m!4972847))

(declare-fun m!4972849 () Bool)

(assert (=> d!1288457 m!4972849))

(declare-fun m!4972851 () Bool)

(assert (=> d!1288457 m!4972851))

(declare-fun m!4972853 () Bool)

(assert (=> b!4357738 m!4972853))

(declare-fun m!4972855 () Bool)

(assert (=> b!4357739 m!4972855))

(assert (=> b!4356871 d!1288457))

(declare-fun b!4357740 () Bool)

(declare-fun e!2711900 () Bool)

(assert (=> b!4357740 (= e!2711900 (not (contains!11145 (keys!16530 lt!1569470) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(declare-fun b!4357741 () Bool)

(declare-fun e!2711902 () Bool)

(assert (=> b!4357741 (= e!2711902 (contains!11145 (keys!16530 lt!1569470) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun b!4357742 () Bool)

(declare-fun e!2711901 () Unit!71637)

(declare-fun Unit!71866 () Unit!71637)

(assert (=> b!4357742 (= e!2711901 Unit!71866)))

(declare-fun b!4357743 () Bool)

(declare-fun e!2711899 () Unit!71637)

(declare-fun lt!1570128 () Unit!71637)

(assert (=> b!4357743 (= e!2711899 lt!1570128)))

(declare-fun lt!1570134 () Unit!71637)

(assert (=> b!4357743 (= lt!1570134 (lemmaContainsKeyImpliesGetValueByKeyDefined!365 (toList!2966 lt!1569470) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> b!4357743 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569470) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun lt!1570127 () Unit!71637)

(assert (=> b!4357743 (= lt!1570127 lt!1570134)))

(assert (=> b!4357743 (= lt!1570128 (lemmaInListThenGetKeysListContains!123 (toList!2966 lt!1569470) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun call!302879 () Bool)

(assert (=> b!4357743 call!302879))

(declare-fun bm!302874 () Bool)

(declare-fun e!2711897 () List!49062)

(assert (=> bm!302874 (= call!302879 (contains!11145 e!2711897 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun c!740953 () Bool)

(declare-fun c!740952 () Bool)

(assert (=> bm!302874 (= c!740953 c!740952)))

(declare-fun b!4357744 () Bool)

(assert (=> b!4357744 (= e!2711897 (keys!16530 lt!1569470))))

(declare-fun b!4357745 () Bool)

(assert (=> b!4357745 (= e!2711899 e!2711901)))

(declare-fun c!740954 () Bool)

(assert (=> b!4357745 (= c!740954 call!302879)))

(declare-fun d!1288459 () Bool)

(declare-fun e!2711898 () Bool)

(assert (=> d!1288459 e!2711898))

(declare-fun res!1791170 () Bool)

(assert (=> d!1288459 (=> res!1791170 e!2711898)))

(assert (=> d!1288459 (= res!1791170 e!2711900)))

(declare-fun res!1791171 () Bool)

(assert (=> d!1288459 (=> (not res!1791171) (not e!2711900))))

(declare-fun lt!1570132 () Bool)

(assert (=> d!1288459 (= res!1791171 (not lt!1570132))))

(declare-fun lt!1570129 () Bool)

(assert (=> d!1288459 (= lt!1570132 lt!1570129)))

(declare-fun lt!1570133 () Unit!71637)

(assert (=> d!1288459 (= lt!1570133 e!2711899)))

(assert (=> d!1288459 (= c!740952 lt!1570129)))

(assert (=> d!1288459 (= lt!1570129 (containsKey!695 (toList!2966 lt!1569470) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> d!1288459 (= (contains!11142 lt!1569470 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) lt!1570132)))

(declare-fun b!4357746 () Bool)

(assert (=> b!4357746 false))

(declare-fun lt!1570130 () Unit!71637)

(declare-fun lt!1570131 () Unit!71637)

(assert (=> b!4357746 (= lt!1570130 lt!1570131)))

(assert (=> b!4357746 (containsKey!695 (toList!2966 lt!1569470) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> b!4357746 (= lt!1570131 (lemmaInGetKeysListThenContainsKey!124 (toList!2966 lt!1569470) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun Unit!71867 () Unit!71637)

(assert (=> b!4357746 (= e!2711901 Unit!71867)))

(declare-fun b!4357747 () Bool)

(assert (=> b!4357747 (= e!2711897 (getKeysList!126 (toList!2966 lt!1569470)))))

(declare-fun b!4357748 () Bool)

(assert (=> b!4357748 (= e!2711898 e!2711902)))

(declare-fun res!1791169 () Bool)

(assert (=> b!4357748 (=> (not res!1791169) (not e!2711902))))

(assert (=> b!4357748 (= res!1791169 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569470) (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(assert (= (and d!1288459 c!740952) b!4357743))

(assert (= (and d!1288459 (not c!740952)) b!4357745))

(assert (= (and b!4357745 c!740954) b!4357746))

(assert (= (and b!4357745 (not c!740954)) b!4357742))

(assert (= (or b!4357743 b!4357745) bm!302874))

(assert (= (and bm!302874 c!740953) b!4357747))

(assert (= (and bm!302874 (not c!740953)) b!4357744))

(assert (= (and d!1288459 res!1791171) b!4357740))

(assert (= (and d!1288459 (not res!1791170)) b!4357748))

(assert (= (and b!4357748 res!1791169) b!4357741))

(declare-fun m!4972867 () Bool)

(assert (=> bm!302874 m!4972867))

(declare-fun m!4972869 () Bool)

(assert (=> d!1288459 m!4972869))

(declare-fun m!4972871 () Bool)

(assert (=> b!4357741 m!4972871))

(assert (=> b!4357741 m!4972871))

(declare-fun m!4972875 () Bool)

(assert (=> b!4357741 m!4972875))

(declare-fun m!4972877 () Bool)

(assert (=> b!4357743 m!4972877))

(declare-fun m!4972881 () Bool)

(assert (=> b!4357743 m!4972881))

(assert (=> b!4357743 m!4972881))

(declare-fun m!4972885 () Bool)

(assert (=> b!4357743 m!4972885))

(declare-fun m!4972889 () Bool)

(assert (=> b!4357743 m!4972889))

(declare-fun m!4972893 () Bool)

(assert (=> b!4357747 m!4972893))

(assert (=> b!4357740 m!4972871))

(assert (=> b!4357740 m!4972871))

(assert (=> b!4357740 m!4972875))

(assert (=> b!4357748 m!4972881))

(assert (=> b!4357748 m!4972881))

(assert (=> b!4357748 m!4972885))

(assert (=> b!4357744 m!4972871))

(assert (=> b!4357746 m!4972869))

(declare-fun m!4972901 () Bool)

(assert (=> b!4357746 m!4972901))

(assert (=> b!4356871 d!1288459))

(declare-fun d!1288461 () Bool)

(assert (=> d!1288461 (dynLambda!20636 lambda!140582 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(declare-fun lt!1570135 () Unit!71637)

(assert (=> d!1288461 (= lt!1570135 (choose!26934 (toList!2966 lt!1569469) lambda!140582 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun e!2711903 () Bool)

(assert (=> d!1288461 e!2711903))

(declare-fun res!1791172 () Bool)

(assert (=> d!1288461 (=> (not res!1791172) (not e!2711903))))

(assert (=> d!1288461 (= res!1791172 (forall!9124 (toList!2966 lt!1569469) lambda!140582))))

(assert (=> d!1288461 (= (forallContained!1765 (toList!2966 lt!1569469) lambda!140582 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1570135)))

(declare-fun b!4357749 () Bool)

(assert (=> b!4357749 (= e!2711903 (contains!11146 (toList!2966 lt!1569469) (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (= (and d!1288461 res!1791172) b!4357749))

(declare-fun b_lambda!131303 () Bool)

(assert (=> (not b_lambda!131303) (not d!1288461)))

(assert (=> d!1288461 m!4972819))

(declare-fun m!4972911 () Bool)

(assert (=> d!1288461 m!4972911))

(assert (=> d!1288461 m!4971137))

(declare-fun m!4972913 () Bool)

(assert (=> b!4357749 m!4972913))

(assert (=> b!4356871 d!1288461))

(declare-fun d!1288465 () Bool)

(declare-fun res!1791173 () Bool)

(declare-fun e!2711904 () Bool)

(assert (=> d!1288465 (=> res!1791173 e!2711904)))

(assert (=> d!1288465 (= res!1791173 ((_ is Nil!48935) (toList!2966 lt!1569103)))))

(assert (=> d!1288465 (= (forall!9124 (toList!2966 lt!1569103) lambda!140581) e!2711904)))

(declare-fun b!4357750 () Bool)

(declare-fun e!2711905 () Bool)

(assert (=> b!4357750 (= e!2711904 e!2711905)))

(declare-fun res!1791174 () Bool)

(assert (=> b!4357750 (=> (not res!1791174) (not e!2711905))))

(assert (=> b!4357750 (= res!1791174 (dynLambda!20636 lambda!140581 (h!54486 (toList!2966 lt!1569103))))))

(declare-fun b!4357751 () Bool)

(assert (=> b!4357751 (= e!2711905 (forall!9124 (t!355979 (toList!2966 lt!1569103)) lambda!140581))))

(assert (= (and d!1288465 (not res!1791173)) b!4357750))

(assert (= (and b!4357750 res!1791174) b!4357751))

(declare-fun b_lambda!131305 () Bool)

(assert (=> (not b_lambda!131305) (not b!4357750)))

(declare-fun m!4972919 () Bool)

(assert (=> b!4357750 m!4972919))

(declare-fun m!4972921 () Bool)

(assert (=> b!4357751 m!4972921))

(assert (=> b!4356871 d!1288465))

(declare-fun d!1288469 () Bool)

(declare-fun res!1791175 () Bool)

(declare-fun e!2711906 () Bool)

(assert (=> d!1288469 (=> res!1791175 e!2711906)))

(assert (=> d!1288469 (= res!1791175 ((_ is Nil!48935) (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> d!1288469 (= (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lambda!140582) e!2711906)))

(declare-fun b!4357752 () Bool)

(declare-fun e!2711907 () Bool)

(assert (=> b!4357752 (= e!2711906 e!2711907)))

(declare-fun res!1791176 () Bool)

(assert (=> b!4357752 (=> (not res!1791176) (not e!2711907))))

(assert (=> b!4357752 (= res!1791176 (dynLambda!20636 lambda!140582 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun b!4357753 () Bool)

(assert (=> b!4357753 (= e!2711907 (forall!9124 (t!355979 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lambda!140582))))

(assert (= (and d!1288469 (not res!1791175)) b!4357752))

(assert (= (and b!4357752 res!1791176) b!4357753))

(declare-fun b_lambda!131307 () Bool)

(assert (=> (not b_lambda!131307) (not b!4357752)))

(declare-fun m!4972923 () Bool)

(assert (=> b!4357752 m!4972923))

(declare-fun m!4972925 () Bool)

(assert (=> b!4357753 m!4972925))

(assert (=> b!4356871 d!1288469))

(declare-fun bs!632364 () Bool)

(declare-fun b!4357754 () Bool)

(assert (= bs!632364 (and b!4357754 d!1288427)))

(declare-fun lambda!140705 () Int)

(assert (=> bs!632364 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569449) (= lambda!140705 lambda!140696))))

(declare-fun bs!632365 () Bool)

(assert (= bs!632365 (and b!4357754 b!4356864)))

(assert (=> bs!632365 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569106) (= lambda!140705 lambda!140577))))

(declare-fun bs!632366 () Bool)

(assert (= bs!632366 (and b!4357754 b!4357544)))

(assert (=> bs!632366 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569954) (= lambda!140705 lambda!140685))))

(declare-fun bs!632367 () Bool)

(assert (= bs!632367 (and b!4357754 b!4357380)))

(assert (=> bs!632367 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569818) (= lambda!140705 lambda!140657))))

(declare-fun bs!632368 () Bool)

(assert (= bs!632368 (and b!4357754 d!1288355)))

(assert (=> bs!632368 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569958) (= lambda!140705 lambda!140686))))

(declare-fun bs!632369 () Bool)

(assert (= bs!632369 (and b!4357754 b!4356869)))

(assert (=> bs!632369 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569103) (= lambda!140705 lambda!140580))))

(declare-fun bs!632370 () Bool)

(assert (= bs!632370 (and b!4357754 d!1288219)))

(assert (=> bs!632370 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569822) (= lambda!140705 lambda!140659))))

(declare-fun bs!632371 () Bool)

(assert (= bs!632371 (and b!4357754 b!4356871)))

(assert (=> bs!632371 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569470) (= lambda!140705 lambda!140582))))

(declare-fun bs!632372 () Bool)

(assert (= bs!632372 (and b!4357754 b!4357495)))

(assert (=> bs!632372 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140705 lambda!140677))))

(declare-fun bs!632373 () Bool)

(assert (= bs!632373 (and b!4357754 b!4357493)))

(assert (=> bs!632373 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140705 lambda!140676))))

(declare-fun bs!632374 () Bool)

(assert (= bs!632374 (and b!4357754 d!1287949)))

(assert (=> bs!632374 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569453) (= lambda!140705 lambda!140579))))

(assert (=> bs!632367 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140705 lambda!140656))))

(declare-fun bs!632375 () Bool)

(assert (= bs!632375 (and b!4357754 b!4357485)))

(assert (=> bs!632375 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569877) (= lambda!140705 lambda!140671))))

(declare-fun bs!632376 () Bool)

(assert (= bs!632376 (and b!4357754 b!4356862)))

(assert (=> bs!632376 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569106) (= lambda!140705 lambda!140576))))

(declare-fun bs!632377 () Bool)

(assert (= bs!632377 (and b!4357754 b!4357483)))

(assert (=> bs!632377 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140705 lambda!140668))))

(declare-fun bs!632378 () Bool)

(assert (= bs!632378 (and b!4357754 b!4357378)))

(assert (=> bs!632378 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140705 lambda!140655))))

(assert (=> bs!632375 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140705 lambda!140670))))

(assert (=> bs!632365 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569449) (= lambda!140705 lambda!140578))))

(declare-fun bs!632379 () Bool)

(assert (= bs!632379 (and b!4357754 b!4357638)))

(assert (=> bs!632379 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140705 lambda!140687))))

(declare-fun bs!632380 () Bool)

(assert (= bs!632380 (and b!4357754 d!1288275)))

(assert (=> bs!632380 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569106) (= lambda!140705 lambda!140667))))

(assert (=> bs!632371 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569103) (= lambda!140705 lambda!140581))))

(declare-fun bs!632381 () Bool)

(assert (= bs!632381 (and b!4357754 d!1287975)))

(assert (=> bs!632381 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569474) (= lambda!140705 lambda!140583))))

(declare-fun bs!632382 () Bool)

(assert (= bs!632382 (and b!4357754 b!4357542)))

(assert (=> bs!632382 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140705 lambda!140683))))

(declare-fun bs!632383 () Bool)

(assert (= bs!632383 (and b!4357754 d!1287907)))

(assert (=> bs!632383 (not (= lambda!140705 lambda!140513))))

(declare-fun bs!632384 () Bool)

(assert (= bs!632384 (and b!4357754 b!4357640)))

(assert (=> bs!632384 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140705 lambda!140688))))

(declare-fun bs!632385 () Bool)

(assert (= bs!632385 (and b!4357754 d!1288297)))

(assert (=> bs!632385 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569923) (= lambda!140705 lambda!140679))))

(assert (=> bs!632366 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140705 lambda!140684))))

(declare-fun bs!632386 () Bool)

(assert (= bs!632386 (and b!4357754 b!4357024)))

(assert (=> bs!632386 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140705 lambda!140611))))

(declare-fun bs!632387 () Bool)

(assert (= bs!632387 (and b!4357754 d!1288293)))

(assert (=> bs!632387 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569881) (= lambda!140705 lambda!140674))))

(declare-fun bs!632388 () Bool)

(assert (= bs!632388 (and b!4357754 d!1288049)))

(assert (=> bs!632388 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569582) (= lambda!140705 lambda!140614))))

(assert (=> bs!632372 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569919) (= lambda!140705 lambda!140678))))

(declare-fun bs!632389 () Bool)

(assert (= bs!632389 (and b!4357754 b!4357022)))

(assert (=> bs!632389 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140705 lambda!140609))))

(assert (=> bs!632386 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569578) (= lambda!140705 lambda!140612))))

(assert (=> bs!632384 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1570020) (= lambda!140705 lambda!140689))))

(declare-fun bs!632390 () Bool)

(assert (= bs!632390 (and b!4357754 d!1288403)))

(assert (=> bs!632390 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1570024) (= lambda!140705 lambda!140690))))

(assert (=> b!4357754 true))

(declare-fun bs!632391 () Bool)

(declare-fun b!4357756 () Bool)

(assert (= bs!632391 (and b!4357756 d!1288427)))

(declare-fun lambda!140706 () Int)

(assert (=> bs!632391 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569449) (= lambda!140706 lambda!140696))))

(declare-fun bs!632392 () Bool)

(assert (= bs!632392 (and b!4357756 b!4356864)))

(assert (=> bs!632392 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569106) (= lambda!140706 lambda!140577))))

(declare-fun bs!632393 () Bool)

(assert (= bs!632393 (and b!4357756 b!4357544)))

(assert (=> bs!632393 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569954) (= lambda!140706 lambda!140685))))

(declare-fun bs!632394 () Bool)

(assert (= bs!632394 (and b!4357756 b!4357380)))

(assert (=> bs!632394 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569818) (= lambda!140706 lambda!140657))))

(declare-fun bs!632395 () Bool)

(assert (= bs!632395 (and b!4357756 d!1288355)))

(assert (=> bs!632395 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569958) (= lambda!140706 lambda!140686))))

(declare-fun bs!632396 () Bool)

(assert (= bs!632396 (and b!4357756 b!4356869)))

(assert (=> bs!632396 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569103) (= lambda!140706 lambda!140580))))

(declare-fun bs!632397 () Bool)

(assert (= bs!632397 (and b!4357756 d!1288219)))

(assert (=> bs!632397 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569822) (= lambda!140706 lambda!140659))))

(declare-fun bs!632398 () Bool)

(assert (= bs!632398 (and b!4357756 b!4356871)))

(assert (=> bs!632398 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569470) (= lambda!140706 lambda!140582))))

(declare-fun bs!632399 () Bool)

(assert (= bs!632399 (and b!4357756 b!4357495)))

(assert (=> bs!632399 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140706 lambda!140677))))

(declare-fun bs!632400 () Bool)

(assert (= bs!632400 (and b!4357756 b!4357493)))

(assert (=> bs!632400 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140706 lambda!140676))))

(declare-fun bs!632401 () Bool)

(assert (= bs!632401 (and b!4357756 d!1287949)))

(assert (=> bs!632401 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569453) (= lambda!140706 lambda!140579))))

(declare-fun bs!632402 () Bool)

(assert (= bs!632402 (and b!4357756 b!4357754)))

(assert (=> bs!632402 (= lambda!140706 lambda!140705)))

(assert (=> bs!632394 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140706 lambda!140656))))

(declare-fun bs!632403 () Bool)

(assert (= bs!632403 (and b!4357756 b!4357485)))

(assert (=> bs!632403 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569877) (= lambda!140706 lambda!140671))))

(declare-fun bs!632404 () Bool)

(assert (= bs!632404 (and b!4357756 b!4356862)))

(assert (=> bs!632404 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569106) (= lambda!140706 lambda!140576))))

(declare-fun bs!632405 () Bool)

(assert (= bs!632405 (and b!4357756 b!4357483)))

(assert (=> bs!632405 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140706 lambda!140668))))

(declare-fun bs!632406 () Bool)

(assert (= bs!632406 (and b!4357756 b!4357378)))

(assert (=> bs!632406 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140706 lambda!140655))))

(assert (=> bs!632403 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140706 lambda!140670))))

(assert (=> bs!632392 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569449) (= lambda!140706 lambda!140578))))

(declare-fun bs!632407 () Bool)

(assert (= bs!632407 (and b!4357756 b!4357638)))

(assert (=> bs!632407 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140706 lambda!140687))))

(declare-fun bs!632408 () Bool)

(assert (= bs!632408 (and b!4357756 d!1288275)))

(assert (=> bs!632408 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569106) (= lambda!140706 lambda!140667))))

(assert (=> bs!632398 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569103) (= lambda!140706 lambda!140581))))

(declare-fun bs!632409 () Bool)

(assert (= bs!632409 (and b!4357756 d!1287975)))

(assert (=> bs!632409 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569474) (= lambda!140706 lambda!140583))))

(declare-fun bs!632410 () Bool)

(assert (= bs!632410 (and b!4357756 b!4357542)))

(assert (=> bs!632410 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140706 lambda!140683))))

(declare-fun bs!632411 () Bool)

(assert (= bs!632411 (and b!4357756 d!1287907)))

(assert (=> bs!632411 (not (= lambda!140706 lambda!140513))))

(declare-fun bs!632412 () Bool)

(assert (= bs!632412 (and b!4357756 b!4357640)))

(assert (=> bs!632412 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140706 lambda!140688))))

(declare-fun bs!632413 () Bool)

(assert (= bs!632413 (and b!4357756 d!1288297)))

(assert (=> bs!632413 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569923) (= lambda!140706 lambda!140679))))

(assert (=> bs!632393 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140706 lambda!140684))))

(declare-fun bs!632414 () Bool)

(assert (= bs!632414 (and b!4357756 b!4357024)))

(assert (=> bs!632414 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140706 lambda!140611))))

(declare-fun bs!632415 () Bool)

(assert (= bs!632415 (and b!4357756 d!1288293)))

(assert (=> bs!632415 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569881) (= lambda!140706 lambda!140674))))

(declare-fun bs!632416 () Bool)

(assert (= bs!632416 (and b!4357756 d!1288049)))

(assert (=> bs!632416 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569582) (= lambda!140706 lambda!140614))))

(assert (=> bs!632399 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569919) (= lambda!140706 lambda!140678))))

(declare-fun bs!632417 () Bool)

(assert (= bs!632417 (and b!4357756 b!4357022)))

(assert (=> bs!632417 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140706 lambda!140609))))

(assert (=> bs!632414 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1569578) (= lambda!140706 lambda!140612))))

(assert (=> bs!632412 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1570020) (= lambda!140706 lambda!140689))))

(declare-fun bs!632418 () Bool)

(assert (= bs!632418 (and b!4357756 d!1288403)))

(assert (=> bs!632418 (= (= (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1570024) (= lambda!140706 lambda!140690))))

(assert (=> b!4357756 true))

(declare-fun lambda!140707 () Int)

(declare-fun lt!1570141 () ListMap!2209)

(assert (=> bs!632391 (= (= lt!1570141 lt!1569449) (= lambda!140707 lambda!140696))))

(assert (=> b!4357756 (= (= lt!1570141 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140707 lambda!140706))))

(assert (=> bs!632392 (= (= lt!1570141 lt!1569106) (= lambda!140707 lambda!140577))))

(assert (=> bs!632393 (= (= lt!1570141 lt!1569954) (= lambda!140707 lambda!140685))))

(assert (=> bs!632394 (= (= lt!1570141 lt!1569818) (= lambda!140707 lambda!140657))))

(assert (=> bs!632395 (= (= lt!1570141 lt!1569958) (= lambda!140707 lambda!140686))))

(assert (=> bs!632396 (= (= lt!1570141 lt!1569103) (= lambda!140707 lambda!140580))))

(assert (=> bs!632397 (= (= lt!1570141 lt!1569822) (= lambda!140707 lambda!140659))))

(assert (=> bs!632398 (= (= lt!1570141 lt!1569470) (= lambda!140707 lambda!140582))))

(assert (=> bs!632399 (= (= lt!1570141 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140707 lambda!140677))))

(assert (=> bs!632400 (= (= lt!1570141 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140707 lambda!140676))))

(assert (=> bs!632401 (= (= lt!1570141 lt!1569453) (= lambda!140707 lambda!140579))))

(assert (=> bs!632402 (= (= lt!1570141 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140707 lambda!140705))))

(assert (=> bs!632394 (= (= lt!1570141 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140707 lambda!140656))))

(assert (=> bs!632403 (= (= lt!1570141 lt!1569877) (= lambda!140707 lambda!140671))))

(assert (=> bs!632404 (= (= lt!1570141 lt!1569106) (= lambda!140707 lambda!140576))))

(assert (=> bs!632405 (= (= lt!1570141 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140707 lambda!140668))))

(assert (=> bs!632406 (= (= lt!1570141 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140707 lambda!140655))))

(assert (=> bs!632403 (= (= lt!1570141 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140707 lambda!140670))))

(assert (=> bs!632392 (= (= lt!1570141 lt!1569449) (= lambda!140707 lambda!140578))))

(assert (=> bs!632407 (= (= lt!1570141 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140707 lambda!140687))))

(assert (=> bs!632408 (= (= lt!1570141 lt!1569106) (= lambda!140707 lambda!140667))))

(assert (=> bs!632398 (= (= lt!1570141 lt!1569103) (= lambda!140707 lambda!140581))))

(assert (=> bs!632409 (= (= lt!1570141 lt!1569474) (= lambda!140707 lambda!140583))))

(assert (=> bs!632410 (= (= lt!1570141 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140707 lambda!140683))))

(assert (=> bs!632411 (not (= lambda!140707 lambda!140513))))

(assert (=> bs!632412 (= (= lt!1570141 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140707 lambda!140688))))

(assert (=> bs!632413 (= (= lt!1570141 lt!1569923) (= lambda!140707 lambda!140679))))

(assert (=> bs!632393 (= (= lt!1570141 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140707 lambda!140684))))

(assert (=> bs!632414 (= (= lt!1570141 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140707 lambda!140611))))

(assert (=> bs!632415 (= (= lt!1570141 lt!1569881) (= lambda!140707 lambda!140674))))

(assert (=> bs!632416 (= (= lt!1570141 lt!1569582) (= lambda!140707 lambda!140614))))

(assert (=> bs!632399 (= (= lt!1570141 lt!1569919) (= lambda!140707 lambda!140678))))

(assert (=> bs!632417 (= (= lt!1570141 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140707 lambda!140609))))

(assert (=> bs!632414 (= (= lt!1570141 lt!1569578) (= lambda!140707 lambda!140612))))

(assert (=> bs!632412 (= (= lt!1570141 lt!1570020) (= lambda!140707 lambda!140689))))

(assert (=> bs!632418 (= (= lt!1570141 lt!1570024) (= lambda!140707 lambda!140690))))

(assert (=> b!4357756 true))

(declare-fun bs!632426 () Bool)

(declare-fun d!1288471 () Bool)

(assert (= bs!632426 (and d!1288471 d!1288427)))

(declare-fun lt!1570145 () ListMap!2209)

(declare-fun lambda!140709 () Int)

(assert (=> bs!632426 (= (= lt!1570145 lt!1569449) (= lambda!140709 lambda!140696))))

(declare-fun bs!632428 () Bool)

(assert (= bs!632428 (and d!1288471 b!4357756)))

(assert (=> bs!632428 (= (= lt!1570145 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140709 lambda!140706))))

(declare-fun bs!632430 () Bool)

(assert (= bs!632430 (and d!1288471 b!4356864)))

(assert (=> bs!632430 (= (= lt!1570145 lt!1569106) (= lambda!140709 lambda!140577))))

(declare-fun bs!632432 () Bool)

(assert (= bs!632432 (and d!1288471 b!4357544)))

(assert (=> bs!632432 (= (= lt!1570145 lt!1569954) (= lambda!140709 lambda!140685))))

(assert (=> bs!632428 (= (= lt!1570145 lt!1570141) (= lambda!140709 lambda!140707))))

(declare-fun bs!632435 () Bool)

(assert (= bs!632435 (and d!1288471 b!4357380)))

(assert (=> bs!632435 (= (= lt!1570145 lt!1569818) (= lambda!140709 lambda!140657))))

(declare-fun bs!632437 () Bool)

(assert (= bs!632437 (and d!1288471 d!1288355)))

(assert (=> bs!632437 (= (= lt!1570145 lt!1569958) (= lambda!140709 lambda!140686))))

(declare-fun bs!632439 () Bool)

(assert (= bs!632439 (and d!1288471 b!4356869)))

(assert (=> bs!632439 (= (= lt!1570145 lt!1569103) (= lambda!140709 lambda!140580))))

(declare-fun bs!632441 () Bool)

(assert (= bs!632441 (and d!1288471 d!1288219)))

(assert (=> bs!632441 (= (= lt!1570145 lt!1569822) (= lambda!140709 lambda!140659))))

(declare-fun bs!632443 () Bool)

(assert (= bs!632443 (and d!1288471 b!4356871)))

(assert (=> bs!632443 (= (= lt!1570145 lt!1569470) (= lambda!140709 lambda!140582))))

(declare-fun bs!632445 () Bool)

(assert (= bs!632445 (and d!1288471 b!4357495)))

(assert (=> bs!632445 (= (= lt!1570145 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140709 lambda!140677))))

(declare-fun bs!632447 () Bool)

(assert (= bs!632447 (and d!1288471 b!4357493)))

(assert (=> bs!632447 (= (= lt!1570145 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140709 lambda!140676))))

(declare-fun bs!632448 () Bool)

(assert (= bs!632448 (and d!1288471 d!1287949)))

(assert (=> bs!632448 (= (= lt!1570145 lt!1569453) (= lambda!140709 lambda!140579))))

(declare-fun bs!632450 () Bool)

(assert (= bs!632450 (and d!1288471 b!4357754)))

(assert (=> bs!632450 (= (= lt!1570145 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140709 lambda!140705))))

(assert (=> bs!632435 (= (= lt!1570145 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140709 lambda!140656))))

(declare-fun bs!632452 () Bool)

(assert (= bs!632452 (and d!1288471 b!4357485)))

(assert (=> bs!632452 (= (= lt!1570145 lt!1569877) (= lambda!140709 lambda!140671))))

(declare-fun bs!632454 () Bool)

(assert (= bs!632454 (and d!1288471 b!4356862)))

(assert (=> bs!632454 (= (= lt!1570145 lt!1569106) (= lambda!140709 lambda!140576))))

(declare-fun bs!632455 () Bool)

(assert (= bs!632455 (and d!1288471 b!4357483)))

(assert (=> bs!632455 (= (= lt!1570145 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140709 lambda!140668))))

(declare-fun bs!632457 () Bool)

(assert (= bs!632457 (and d!1288471 b!4357378)))

(assert (=> bs!632457 (= (= lt!1570145 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140709 lambda!140655))))

(assert (=> bs!632452 (= (= lt!1570145 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140709 lambda!140670))))

(assert (=> bs!632430 (= (= lt!1570145 lt!1569449) (= lambda!140709 lambda!140578))))

(declare-fun bs!632460 () Bool)

(assert (= bs!632460 (and d!1288471 b!4357638)))

(assert (=> bs!632460 (= (= lt!1570145 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140709 lambda!140687))))

(declare-fun bs!632462 () Bool)

(assert (= bs!632462 (and d!1288471 d!1288275)))

(assert (=> bs!632462 (= (= lt!1570145 lt!1569106) (= lambda!140709 lambda!140667))))

(assert (=> bs!632443 (= (= lt!1570145 lt!1569103) (= lambda!140709 lambda!140581))))

(declare-fun bs!632464 () Bool)

(assert (= bs!632464 (and d!1288471 d!1287975)))

(assert (=> bs!632464 (= (= lt!1570145 lt!1569474) (= lambda!140709 lambda!140583))))

(declare-fun bs!632466 () Bool)

(assert (= bs!632466 (and d!1288471 b!4357542)))

(assert (=> bs!632466 (= (= lt!1570145 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140709 lambda!140683))))

(declare-fun bs!632467 () Bool)

(assert (= bs!632467 (and d!1288471 d!1287907)))

(assert (=> bs!632467 (not (= lambda!140709 lambda!140513))))

(declare-fun bs!632469 () Bool)

(assert (= bs!632469 (and d!1288471 b!4357640)))

(assert (=> bs!632469 (= (= lt!1570145 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140709 lambda!140688))))

(declare-fun bs!632471 () Bool)

(assert (= bs!632471 (and d!1288471 d!1288297)))

(assert (=> bs!632471 (= (= lt!1570145 lt!1569923) (= lambda!140709 lambda!140679))))

(assert (=> bs!632432 (= (= lt!1570145 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140709 lambda!140684))))

(declare-fun bs!632473 () Bool)

(assert (= bs!632473 (and d!1288471 b!4357024)))

(assert (=> bs!632473 (= (= lt!1570145 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140709 lambda!140611))))

(declare-fun bs!632474 () Bool)

(assert (= bs!632474 (and d!1288471 d!1288293)))

(assert (=> bs!632474 (= (= lt!1570145 lt!1569881) (= lambda!140709 lambda!140674))))

(declare-fun bs!632475 () Bool)

(assert (= bs!632475 (and d!1288471 d!1288049)))

(assert (=> bs!632475 (= (= lt!1570145 lt!1569582) (= lambda!140709 lambda!140614))))

(assert (=> bs!632445 (= (= lt!1570145 lt!1569919) (= lambda!140709 lambda!140678))))

(declare-fun bs!632476 () Bool)

(assert (= bs!632476 (and d!1288471 b!4357022)))

(assert (=> bs!632476 (= (= lt!1570145 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140709 lambda!140609))))

(assert (=> bs!632473 (= (= lt!1570145 lt!1569578) (= lambda!140709 lambda!140612))))

(assert (=> bs!632469 (= (= lt!1570145 lt!1570020) (= lambda!140709 lambda!140689))))

(declare-fun bs!632477 () Bool)

(assert (= bs!632477 (and d!1288471 d!1288403)))

(assert (=> bs!632477 (= (= lt!1570145 lt!1570024) (= lambda!140709 lambda!140690))))

(assert (=> d!1288471 true))

(declare-fun e!2711908 () ListMap!2209)

(assert (=> b!4357754 (= e!2711908 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(declare-fun lt!1570154 () Unit!71637)

(declare-fun call!302881 () Unit!71637)

(assert (=> b!4357754 (= lt!1570154 call!302881)))

(declare-fun call!302882 () Bool)

(assert (=> b!4357754 call!302882))

(declare-fun lt!1570149 () Unit!71637)

(assert (=> b!4357754 (= lt!1570149 lt!1570154)))

(declare-fun call!302880 () Bool)

(assert (=> b!4357754 call!302880))

(declare-fun lt!1570143 () Unit!71637)

(declare-fun Unit!71870 () Unit!71637)

(assert (=> b!4357754 (= lt!1570143 Unit!71870)))

(declare-fun e!2711910 () Bool)

(assert (=> d!1288471 e!2711910))

(declare-fun res!1791177 () Bool)

(assert (=> d!1288471 (=> (not res!1791177) (not e!2711910))))

(assert (=> d!1288471 (= res!1791177 (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lambda!140709))))

(assert (=> d!1288471 (= lt!1570145 e!2711908)))

(declare-fun c!740955 () Bool)

(assert (=> d!1288471 (= c!740955 ((_ is Nil!48935) (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))

(assert (=> d!1288471 (noDuplicateKeys!491 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(assert (=> d!1288471 (= (addToMapMapFromBucket!187 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) lt!1570145)))

(declare-fun b!4357755 () Bool)

(declare-fun e!2711909 () Bool)

(assert (=> b!4357755 (= e!2711909 call!302882)))

(declare-fun bm!302875 () Bool)

(assert (=> bm!302875 (= call!302881 (lemmaContainsAllItsOwnKeys!61 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> b!4357756 (= e!2711908 lt!1570141)))

(declare-fun lt!1570140 () ListMap!2209)

(assert (=> b!4357756 (= lt!1570140 (+!640 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> b!4357756 (= lt!1570141 (addToMapMapFromBucket!187 (t!355979 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (+!640 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(declare-fun lt!1570155 () Unit!71637)

(assert (=> b!4357756 (= lt!1570155 call!302881)))

(assert (=> b!4357756 (forall!9124 (toList!2966 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) lambda!140706)))

(declare-fun lt!1570146 () Unit!71637)

(assert (=> b!4357756 (= lt!1570146 lt!1570155)))

(assert (=> b!4357756 (forall!9124 (toList!2966 lt!1570140) lambda!140707)))

(declare-fun lt!1570148 () Unit!71637)

(declare-fun Unit!71878 () Unit!71637)

(assert (=> b!4357756 (= lt!1570148 Unit!71878)))

(assert (=> b!4357756 (forall!9124 (t!355979 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lambda!140707)))

(declare-fun lt!1570139 () Unit!71637)

(declare-fun Unit!71879 () Unit!71637)

(assert (=> b!4357756 (= lt!1570139 Unit!71879)))

(declare-fun lt!1570156 () Unit!71637)

(declare-fun Unit!71880 () Unit!71637)

(assert (=> b!4357756 (= lt!1570156 Unit!71880)))

(declare-fun lt!1570136 () Unit!71637)

(assert (=> b!4357756 (= lt!1570136 (forallContained!1765 (toList!2966 lt!1570140) lambda!140707 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> b!4357756 (contains!11142 lt!1570140 (_1!27461 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun lt!1570144 () Unit!71637)

(declare-fun Unit!71882 () Unit!71637)

(assert (=> b!4357756 (= lt!1570144 Unit!71882)))

(assert (=> b!4357756 (contains!11142 lt!1570141 (_1!27461 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun lt!1570152 () Unit!71637)

(declare-fun Unit!71884 () Unit!71637)

(assert (=> b!4357756 (= lt!1570152 Unit!71884)))

(assert (=> b!4357756 (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lambda!140707)))

(declare-fun lt!1570137 () Unit!71637)

(declare-fun Unit!71885 () Unit!71637)

(assert (=> b!4357756 (= lt!1570137 Unit!71885)))

(assert (=> b!4357756 (forall!9124 (toList!2966 lt!1570140) lambda!140707)))

(declare-fun lt!1570138 () Unit!71637)

(declare-fun Unit!71886 () Unit!71637)

(assert (=> b!4357756 (= lt!1570138 Unit!71886)))

(declare-fun lt!1570142 () Unit!71637)

(declare-fun Unit!71887 () Unit!71637)

(assert (=> b!4357756 (= lt!1570142 Unit!71887)))

(declare-fun lt!1570153 () Unit!71637)

(assert (=> b!4357756 (= lt!1570153 (addForallContainsKeyThenBeforeAdding!61 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) lt!1570141 (_1!27461 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (_2!27461 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(assert (=> b!4357756 call!302880))

(declare-fun lt!1570151 () Unit!71637)

(assert (=> b!4357756 (= lt!1570151 lt!1570153)))

(assert (=> b!4357756 (forall!9124 (toList!2966 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) lambda!140707)))

(declare-fun lt!1570150 () Unit!71637)

(declare-fun Unit!71888 () Unit!71637)

(assert (=> b!4357756 (= lt!1570150 Unit!71888)))

(declare-fun res!1791178 () Bool)

(assert (=> b!4357756 (= res!1791178 (forall!9124 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))) lambda!140707))))

(assert (=> b!4357756 (=> (not res!1791178) (not e!2711909))))

(assert (=> b!4357756 e!2711909))

(declare-fun lt!1570147 () Unit!71637)

(declare-fun Unit!71889 () Unit!71637)

(assert (=> b!4357756 (= lt!1570147 Unit!71889)))

(declare-fun bm!302876 () Bool)

(assert (=> bm!302876 (= call!302882 (forall!9124 (toList!2966 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (ite c!740955 lambda!140705 lambda!140707)))))

(declare-fun b!4357757 () Bool)

(assert (=> b!4357757 (= e!2711910 (invariantList!678 (toList!2966 lt!1570145)))))

(declare-fun bm!302877 () Bool)

(assert (=> bm!302877 (= call!302880 (forall!9124 (toList!2966 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (ite c!740955 lambda!140705 lambda!140707)))))

(declare-fun b!4357758 () Bool)

(declare-fun res!1791179 () Bool)

(assert (=> b!4357758 (=> (not res!1791179) (not e!2711910))))

(assert (=> b!4357758 (= res!1791179 (forall!9124 (toList!2966 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) lambda!140709))))

(assert (= (and d!1288471 c!740955) b!4357754))

(assert (= (and d!1288471 (not c!740955)) b!4357756))

(assert (= (and b!4357756 res!1791178) b!4357755))

(assert (= (or b!4357754 b!4357756) bm!302875))

(assert (= (or b!4357754 b!4357756) bm!302877))

(assert (= (or b!4357754 b!4357755) bm!302876))

(assert (= (and d!1288471 res!1791177) b!4357758))

(assert (= (and b!4357758 res!1791179) b!4357757))

(declare-fun m!4972941 () Bool)

(assert (=> b!4357756 m!4972941))

(declare-fun m!4972943 () Bool)

(assert (=> b!4357756 m!4972943))

(declare-fun m!4972945 () Bool)

(assert (=> b!4357756 m!4972945))

(declare-fun m!4972947 () Bool)

(assert (=> b!4357756 m!4972947))

(assert (=> b!4357756 m!4972941))

(declare-fun m!4972949 () Bool)

(assert (=> b!4357756 m!4972949))

(declare-fun m!4972951 () Bool)

(assert (=> b!4357756 m!4972951))

(declare-fun m!4972953 () Bool)

(assert (=> b!4357756 m!4972953))

(assert (=> b!4357756 m!4971147))

(declare-fun m!4972955 () Bool)

(assert (=> b!4357756 m!4972955))

(declare-fun m!4972957 () Bool)

(assert (=> b!4357756 m!4972957))

(declare-fun m!4972959 () Bool)

(assert (=> b!4357756 m!4972959))

(assert (=> b!4357756 m!4972959))

(assert (=> b!4357756 m!4971147))

(assert (=> b!4357756 m!4972951))

(declare-fun m!4972961 () Bool)

(assert (=> b!4357756 m!4972961))

(declare-fun m!4972963 () Bool)

(assert (=> b!4357758 m!4972963))

(declare-fun m!4972965 () Bool)

(assert (=> bm!302876 m!4972965))

(assert (=> bm!302877 m!4972965))

(declare-fun m!4972967 () Bool)

(assert (=> d!1288471 m!4972967))

(assert (=> d!1288471 m!4971617))

(declare-fun m!4972969 () Bool)

(assert (=> b!4357757 m!4972969))

(assert (=> bm!302875 m!4971147))

(declare-fun m!4972971 () Bool)

(assert (=> bm!302875 m!4972971))

(assert (=> b!4356871 d!1288471))

(declare-fun d!1288485 () Bool)

(declare-fun res!1791185 () Bool)

(declare-fun e!2711918 () Bool)

(assert (=> d!1288485 (=> res!1791185 e!2711918)))

(assert (=> d!1288485 (= res!1791185 ((_ is Nil!48935) (toList!2966 lt!1569469)))))

(assert (=> d!1288485 (= (forall!9124 (toList!2966 lt!1569469) lambda!140582) e!2711918)))

(declare-fun b!4357770 () Bool)

(declare-fun e!2711919 () Bool)

(assert (=> b!4357770 (= e!2711918 e!2711919)))

(declare-fun res!1791186 () Bool)

(assert (=> b!4357770 (=> (not res!1791186) (not e!2711919))))

(assert (=> b!4357770 (= res!1791186 (dynLambda!20636 lambda!140582 (h!54486 (toList!2966 lt!1569469))))))

(declare-fun b!4357771 () Bool)

(assert (=> b!4357771 (= e!2711919 (forall!9124 (t!355979 (toList!2966 lt!1569469)) lambda!140582))))

(assert (= (and d!1288485 (not res!1791185)) b!4357770))

(assert (= (and b!4357770 res!1791186) b!4357771))

(declare-fun b_lambda!131309 () Bool)

(assert (=> (not b_lambda!131309) (not b!4357770)))

(declare-fun m!4972973 () Bool)

(assert (=> b!4357770 m!4972973))

(declare-fun m!4972975 () Bool)

(assert (=> b!4357771 m!4972975))

(assert (=> b!4356871 d!1288485))

(declare-fun bs!632505 () Bool)

(declare-fun d!1288487 () Bool)

(assert (= bs!632505 (and d!1288487 d!1288427)))

(declare-fun lambda!140712 () Int)

(assert (=> bs!632505 (= (= lt!1569470 lt!1569449) (= lambda!140712 lambda!140696))))

(declare-fun bs!632506 () Bool)

(assert (= bs!632506 (and d!1288487 b!4357756)))

(assert (=> bs!632506 (= (= lt!1569470 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140712 lambda!140706))))

(declare-fun bs!632507 () Bool)

(assert (= bs!632507 (and d!1288487 b!4356864)))

(assert (=> bs!632507 (= (= lt!1569470 lt!1569106) (= lambda!140712 lambda!140577))))

(declare-fun bs!632508 () Bool)

(assert (= bs!632508 (and d!1288487 b!4357544)))

(assert (=> bs!632508 (= (= lt!1569470 lt!1569954) (= lambda!140712 lambda!140685))))

(assert (=> bs!632506 (= (= lt!1569470 lt!1570141) (= lambda!140712 lambda!140707))))

(declare-fun bs!632509 () Bool)

(assert (= bs!632509 (and d!1288487 b!4357380)))

(assert (=> bs!632509 (= (= lt!1569470 lt!1569818) (= lambda!140712 lambda!140657))))

(declare-fun bs!632510 () Bool)

(assert (= bs!632510 (and d!1288487 d!1288355)))

(assert (=> bs!632510 (= (= lt!1569470 lt!1569958) (= lambda!140712 lambda!140686))))

(declare-fun bs!632511 () Bool)

(assert (= bs!632511 (and d!1288487 b!4356869)))

(assert (=> bs!632511 (= (= lt!1569470 lt!1569103) (= lambda!140712 lambda!140580))))

(declare-fun bs!632512 () Bool)

(assert (= bs!632512 (and d!1288487 d!1288219)))

(assert (=> bs!632512 (= (= lt!1569470 lt!1569822) (= lambda!140712 lambda!140659))))

(declare-fun bs!632513 () Bool)

(assert (= bs!632513 (and d!1288487 d!1288471)))

(assert (=> bs!632513 (= (= lt!1569470 lt!1570145) (= lambda!140712 lambda!140709))))

(declare-fun bs!632514 () Bool)

(assert (= bs!632514 (and d!1288487 b!4356871)))

(assert (=> bs!632514 (= lambda!140712 lambda!140582)))

(declare-fun bs!632515 () Bool)

(assert (= bs!632515 (and d!1288487 b!4357495)))

(assert (=> bs!632515 (= (= lt!1569470 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140712 lambda!140677))))

(declare-fun bs!632516 () Bool)

(assert (= bs!632516 (and d!1288487 b!4357493)))

(assert (=> bs!632516 (= (= lt!1569470 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140712 lambda!140676))))

(declare-fun bs!632517 () Bool)

(assert (= bs!632517 (and d!1288487 d!1287949)))

(assert (=> bs!632517 (= (= lt!1569470 lt!1569453) (= lambda!140712 lambda!140579))))

(declare-fun bs!632518 () Bool)

(assert (= bs!632518 (and d!1288487 b!4357754)))

(assert (=> bs!632518 (= (= lt!1569470 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140712 lambda!140705))))

(assert (=> bs!632509 (= (= lt!1569470 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140712 lambda!140656))))

(declare-fun bs!632519 () Bool)

(assert (= bs!632519 (and d!1288487 b!4357485)))

(assert (=> bs!632519 (= (= lt!1569470 lt!1569877) (= lambda!140712 lambda!140671))))

(declare-fun bs!632520 () Bool)

(assert (= bs!632520 (and d!1288487 b!4356862)))

(assert (=> bs!632520 (= (= lt!1569470 lt!1569106) (= lambda!140712 lambda!140576))))

(declare-fun bs!632521 () Bool)

(assert (= bs!632521 (and d!1288487 b!4357483)))

(assert (=> bs!632521 (= (= lt!1569470 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140712 lambda!140668))))

(declare-fun bs!632522 () Bool)

(assert (= bs!632522 (and d!1288487 b!4357378)))

(assert (=> bs!632522 (= (= lt!1569470 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140712 lambda!140655))))

(assert (=> bs!632519 (= (= lt!1569470 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140712 lambda!140670))))

(assert (=> bs!632507 (= (= lt!1569470 lt!1569449) (= lambda!140712 lambda!140578))))

(declare-fun bs!632523 () Bool)

(assert (= bs!632523 (and d!1288487 b!4357638)))

(assert (=> bs!632523 (= (= lt!1569470 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140712 lambda!140687))))

(declare-fun bs!632524 () Bool)

(assert (= bs!632524 (and d!1288487 d!1288275)))

(assert (=> bs!632524 (= (= lt!1569470 lt!1569106) (= lambda!140712 lambda!140667))))

(assert (=> bs!632514 (= (= lt!1569470 lt!1569103) (= lambda!140712 lambda!140581))))

(declare-fun bs!632525 () Bool)

(assert (= bs!632525 (and d!1288487 d!1287975)))

(assert (=> bs!632525 (= (= lt!1569470 lt!1569474) (= lambda!140712 lambda!140583))))

(declare-fun bs!632526 () Bool)

(assert (= bs!632526 (and d!1288487 b!4357542)))

(assert (=> bs!632526 (= (= lt!1569470 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140712 lambda!140683))))

(declare-fun bs!632527 () Bool)

(assert (= bs!632527 (and d!1288487 d!1287907)))

(assert (=> bs!632527 (not (= lambda!140712 lambda!140513))))

(declare-fun bs!632528 () Bool)

(assert (= bs!632528 (and d!1288487 b!4357640)))

(assert (=> bs!632528 (= (= lt!1569470 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140712 lambda!140688))))

(declare-fun bs!632529 () Bool)

(assert (= bs!632529 (and d!1288487 d!1288297)))

(assert (=> bs!632529 (= (= lt!1569470 lt!1569923) (= lambda!140712 lambda!140679))))

(assert (=> bs!632508 (= (= lt!1569470 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140712 lambda!140684))))

(declare-fun bs!632530 () Bool)

(assert (= bs!632530 (and d!1288487 b!4357024)))

(assert (=> bs!632530 (= (= lt!1569470 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140712 lambda!140611))))

(declare-fun bs!632531 () Bool)

(assert (= bs!632531 (and d!1288487 d!1288293)))

(assert (=> bs!632531 (= (= lt!1569470 lt!1569881) (= lambda!140712 lambda!140674))))

(declare-fun bs!632532 () Bool)

(assert (= bs!632532 (and d!1288487 d!1288049)))

(assert (=> bs!632532 (= (= lt!1569470 lt!1569582) (= lambda!140712 lambda!140614))))

(assert (=> bs!632515 (= (= lt!1569470 lt!1569919) (= lambda!140712 lambda!140678))))

(declare-fun bs!632533 () Bool)

(assert (= bs!632533 (and d!1288487 b!4357022)))

(assert (=> bs!632533 (= (= lt!1569470 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140712 lambda!140609))))

(assert (=> bs!632530 (= (= lt!1569470 lt!1569578) (= lambda!140712 lambda!140612))))

(assert (=> bs!632528 (= (= lt!1569470 lt!1570020) (= lambda!140712 lambda!140689))))

(declare-fun bs!632534 () Bool)

(assert (= bs!632534 (and d!1288487 d!1288403)))

(assert (=> bs!632534 (= (= lt!1569470 lt!1570024) (= lambda!140712 lambda!140690))))

(assert (=> d!1288487 true))

(assert (=> d!1288487 (forall!9124 (toList!2966 lt!1569103) lambda!140712)))

(declare-fun lt!1570180 () Unit!71637)

(assert (=> d!1288487 (= lt!1570180 (choose!26935 lt!1569103 lt!1569470 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> d!1288487 (forall!9124 (toList!2966 (+!640 lt!1569103 (tuple2!48335 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))) lambda!140712)))

(assert (=> d!1288487 (= (addForallContainsKeyThenBeforeAdding!61 lt!1569103 lt!1569470 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (_2!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) lt!1570180)))

(declare-fun bs!632535 () Bool)

(assert (= bs!632535 d!1288487))

(declare-fun m!4972977 () Bool)

(assert (=> bs!632535 m!4972977))

(declare-fun m!4972979 () Bool)

(assert (=> bs!632535 m!4972979))

(declare-fun m!4972981 () Bool)

(assert (=> bs!632535 m!4972981))

(declare-fun m!4972983 () Bool)

(assert (=> bs!632535 m!4972983))

(assert (=> b!4356871 d!1288487))

(declare-fun d!1288489 () Bool)

(declare-fun lt!1570181 () Bool)

(assert (=> d!1288489 (= lt!1570181 (select (content!7720 (toList!2965 lt!1569511)) lt!1569101))))

(declare-fun e!2711921 () Bool)

(assert (=> d!1288489 (= lt!1570181 e!2711921)))

(declare-fun res!1791187 () Bool)

(assert (=> d!1288489 (=> (not res!1791187) (not e!2711921))))

(assert (=> d!1288489 (= res!1791187 ((_ is Cons!48936) (toList!2965 lt!1569511)))))

(assert (=> d!1288489 (= (contains!11141 (toList!2965 lt!1569511) lt!1569101) lt!1570181)))

(declare-fun b!4357772 () Bool)

(declare-fun e!2711920 () Bool)

(assert (=> b!4357772 (= e!2711921 e!2711920)))

(declare-fun res!1791188 () Bool)

(assert (=> b!4357772 (=> res!1791188 e!2711920)))

(assert (=> b!4357772 (= res!1791188 (= (h!54487 (toList!2965 lt!1569511)) lt!1569101))))

(declare-fun b!4357773 () Bool)

(assert (=> b!4357773 (= e!2711920 (contains!11141 (t!355980 (toList!2965 lt!1569511)) lt!1569101))))

(assert (= (and d!1288489 res!1791187) b!4357772))

(assert (= (and b!4357772 (not res!1791188)) b!4357773))

(declare-fun m!4972985 () Bool)

(assert (=> d!1288489 m!4972985))

(declare-fun m!4972987 () Bool)

(assert (=> d!1288489 m!4972987))

(declare-fun m!4972989 () Bool)

(assert (=> b!4357773 m!4972989))

(assert (=> b!4356892 d!1288489))

(declare-fun d!1288491 () Bool)

(declare-fun lt!1570182 () Bool)

(assert (=> d!1288491 (= lt!1570182 (select (content!7722 e!2711276) key!3918))))

(declare-fun e!2711922 () Bool)

(assert (=> d!1288491 (= lt!1570182 e!2711922)))

(declare-fun res!1791189 () Bool)

(assert (=> d!1288491 (=> (not res!1791189) (not e!2711922))))

(assert (=> d!1288491 (= res!1791189 ((_ is Cons!48938) e!2711276))))

(assert (=> d!1288491 (= (contains!11145 e!2711276 key!3918) lt!1570182)))

(declare-fun b!4357774 () Bool)

(declare-fun e!2711923 () Bool)

(assert (=> b!4357774 (= e!2711922 e!2711923)))

(declare-fun res!1791190 () Bool)

(assert (=> b!4357774 (=> res!1791190 e!2711923)))

(assert (=> b!4357774 (= res!1791190 (= (h!54491 e!2711276) key!3918))))

(declare-fun b!4357775 () Bool)

(assert (=> b!4357775 (= e!2711923 (contains!11145 (t!355982 e!2711276) key!3918))))

(assert (= (and d!1288491 res!1791189) b!4357774))

(assert (= (and b!4357774 (not res!1791190)) b!4357775))

(declare-fun m!4972991 () Bool)

(assert (=> d!1288491 m!4972991))

(declare-fun m!4972993 () Bool)

(assert (=> d!1288491 m!4972993))

(declare-fun m!4972995 () Bool)

(assert (=> b!4357775 m!4972995))

(assert (=> bm!302753 d!1288491))

(declare-fun d!1288493 () Bool)

(declare-fun c!740959 () Bool)

(assert (=> d!1288493 (= c!740959 ((_ is Nil!48935) (toList!2966 lt!1569114)))))

(declare-fun e!2711924 () (InoxSet tuple2!48334))

(assert (=> d!1288493 (= (content!7721 (toList!2966 lt!1569114)) e!2711924)))

(declare-fun b!4357776 () Bool)

(assert (=> b!4357776 (= e!2711924 ((as const (Array tuple2!48334 Bool)) false))))

(declare-fun b!4357777 () Bool)

(assert (=> b!4357777 (= e!2711924 ((_ map or) (store ((as const (Array tuple2!48334 Bool)) false) (h!54486 (toList!2966 lt!1569114)) true) (content!7721 (t!355979 (toList!2966 lt!1569114)))))))

(assert (= (and d!1288493 c!740959) b!4357776))

(assert (= (and d!1288493 (not c!740959)) b!4357777))

(declare-fun m!4972997 () Bool)

(assert (=> b!4357777 m!4972997))

(declare-fun m!4972999 () Bool)

(assert (=> b!4357777 m!4972999))

(assert (=> d!1287915 d!1288493))

(declare-fun d!1288495 () Bool)

(declare-fun c!740960 () Bool)

(assert (=> d!1288495 (= c!740960 ((_ is Nil!48935) (toList!2966 lt!1569106)))))

(declare-fun e!2711925 () (InoxSet tuple2!48334))

(assert (=> d!1288495 (= (content!7721 (toList!2966 lt!1569106)) e!2711925)))

(declare-fun b!4357778 () Bool)

(assert (=> b!4357778 (= e!2711925 ((as const (Array tuple2!48334 Bool)) false))))

(declare-fun b!4357779 () Bool)

(assert (=> b!4357779 (= e!2711925 ((_ map or) (store ((as const (Array tuple2!48334 Bool)) false) (h!54486 (toList!2966 lt!1569106)) true) (content!7721 (t!355979 (toList!2966 lt!1569106)))))))

(assert (= (and d!1288495 c!740960) b!4357778))

(assert (= (and d!1288495 (not c!740960)) b!4357779))

(declare-fun m!4973001 () Bool)

(assert (=> b!4357779 m!4973001))

(declare-fun m!4973003 () Bool)

(assert (=> b!4357779 m!4973003))

(assert (=> d!1287915 d!1288495))

(assert (=> b!4356807 d!1288105))

(declare-fun d!1288497 () Bool)

(assert (=> d!1288497 (containsKey!695 (toList!2966 lt!1569103) key!3918)))

(declare-fun lt!1570183 () Unit!71637)

(assert (=> d!1288497 (= lt!1570183 (choose!26932 (toList!2966 lt!1569103) key!3918))))

(assert (=> d!1288497 (invariantList!678 (toList!2966 lt!1569103))))

(assert (=> d!1288497 (= (lemmaInGetKeysListThenContainsKey!124 (toList!2966 lt!1569103) key!3918) lt!1570183)))

(declare-fun bs!632553 () Bool)

(assert (= bs!632553 d!1288497))

(assert (=> bs!632553 m!4970935))

(declare-fun m!4973005 () Bool)

(assert (=> bs!632553 m!4973005))

(assert (=> bs!632553 m!4971345))

(assert (=> b!4356807 d!1288497))

(declare-fun d!1288499 () Bool)

(declare-fun res!1791191 () Bool)

(declare-fun e!2711926 () Bool)

(assert (=> d!1288499 (=> res!1791191 e!2711926)))

(assert (=> d!1288499 (= res!1791191 (and ((_ is Cons!48935) lt!1569174) (= (_1!27461 (h!54486 lt!1569174)) key!3918)))))

(assert (=> d!1288499 (= (containsKey!692 lt!1569174 key!3918) e!2711926)))

(declare-fun b!4357780 () Bool)

(declare-fun e!2711927 () Bool)

(assert (=> b!4357780 (= e!2711926 e!2711927)))

(declare-fun res!1791192 () Bool)

(assert (=> b!4357780 (=> (not res!1791192) (not e!2711927))))

(assert (=> b!4357780 (= res!1791192 ((_ is Cons!48935) lt!1569174))))

(declare-fun b!4357781 () Bool)

(assert (=> b!4357781 (= e!2711927 (containsKey!692 (t!355979 lt!1569174) key!3918))))

(assert (= (and d!1288499 (not res!1791191)) b!4357780))

(assert (= (and b!4357780 res!1791192) b!4357781))

(declare-fun m!4973007 () Bool)

(assert (=> b!4357781 m!4973007))

(assert (=> d!1287853 d!1288499))

(declare-fun d!1288501 () Bool)

(declare-fun res!1791193 () Bool)

(declare-fun e!2711928 () Bool)

(assert (=> d!1288501 (=> res!1791193 e!2711928)))

(assert (=> d!1288501 (= res!1791193 (not ((_ is Cons!48935) lt!1569096)))))

(assert (=> d!1288501 (= (noDuplicateKeys!491 lt!1569096) e!2711928)))

(declare-fun b!4357782 () Bool)

(declare-fun e!2711929 () Bool)

(assert (=> b!4357782 (= e!2711928 e!2711929)))

(declare-fun res!1791194 () Bool)

(assert (=> b!4357782 (=> (not res!1791194) (not e!2711929))))

(assert (=> b!4357782 (= res!1791194 (not (containsKey!692 (t!355979 lt!1569096) (_1!27461 (h!54486 lt!1569096)))))))

(declare-fun b!4357783 () Bool)

(assert (=> b!4357783 (= e!2711929 (noDuplicateKeys!491 (t!355979 lt!1569096)))))

(assert (= (and d!1288501 (not res!1791193)) b!4357782))

(assert (= (and b!4357782 res!1791194) b!4357783))

(declare-fun m!4973009 () Bool)

(assert (=> b!4357782 m!4973009))

(assert (=> b!4357783 m!4971297))

(assert (=> d!1287853 d!1288501))

(declare-fun bs!632564 () Bool)

(declare-fun b!4357787 () Bool)

(assert (= bs!632564 (and b!4357787 b!4357719)))

(declare-fun lambda!140714 () Int)

(assert (=> bs!632564 (= (= (t!355979 (toList!2966 lt!1569110)) (Cons!48935 (h!54486 (toList!2966 lt!1569104)) (t!355979 (toList!2966 lt!1569104)))) (= lambda!140714 lambda!140700))))

(declare-fun bs!632566 () Bool)

(assert (= bs!632566 (and b!4357787 b!4356991)))

(assert (=> bs!632566 (= (= (t!355979 (toList!2966 lt!1569110)) (toList!2966 lt!1569103)) (= lambda!140714 lambda!140606))))

(declare-fun bs!632567 () Bool)

(assert (= bs!632567 (and b!4357787 b!4357717)))

(assert (=> bs!632567 (= (= (t!355979 (toList!2966 lt!1569110)) (t!355979 (toList!2966 lt!1569104))) (= lambda!140714 lambda!140699))))

(declare-fun bs!632568 () Bool)

(assert (= bs!632568 (and b!4357787 b!4356914)))

(assert (=> bs!632568 (= (= (t!355979 (toList!2966 lt!1569110)) (toList!2966 lt!1569110)) (= lambda!140714 lambda!140592))))

(declare-fun bs!632569 () Bool)

(assert (= bs!632569 (and b!4357787 b!4357400)))

(assert (=> bs!632569 (= (= (t!355979 (toList!2966 lt!1569110)) (toList!2966 lt!1569103)) (= lambda!140714 lambda!140661))))

(declare-fun bs!632570 () Bool)

(assert (= bs!632570 (and b!4357787 b!4357715)))

(assert (=> bs!632570 (= (= (t!355979 (toList!2966 lt!1569110)) (toList!2966 lt!1569104)) (= lambda!140714 lambda!140702))))

(declare-fun bs!632571 () Bool)

(assert (= bs!632571 (and b!4357787 b!4356996)))

(assert (=> bs!632571 (= (= (t!355979 (toList!2966 lt!1569110)) (Cons!48935 (h!54486 (toList!2966 lt!1569103)) (t!355979 (toList!2966 lt!1569103)))) (= lambda!140714 lambda!140605))))

(declare-fun bs!632572 () Bool)

(assert (= bs!632572 (and b!4357787 b!4356993)))

(assert (=> bs!632572 (= (= (t!355979 (toList!2966 lt!1569110)) (t!355979 (toList!2966 lt!1569103))) (= lambda!140714 lambda!140604))))

(declare-fun bs!632573 () Bool)

(assert (= bs!632573 (and b!4357787 b!4356945)))

(assert (=> bs!632573 (= (= (t!355979 (toList!2966 lt!1569110)) (toList!2966 lt!1569104)) (= lambda!140714 lambda!140594))))

(assert (=> b!4357787 true))

(declare-fun bs!632574 () Bool)

(declare-fun b!4357789 () Bool)

(assert (= bs!632574 (and b!4357789 b!4357719)))

(declare-fun lambda!140715 () Int)

(assert (=> bs!632574 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569110)) (t!355979 (toList!2966 lt!1569110))) (Cons!48935 (h!54486 (toList!2966 lt!1569104)) (t!355979 (toList!2966 lt!1569104)))) (= lambda!140715 lambda!140700))))

(declare-fun bs!632575 () Bool)

(assert (= bs!632575 (and b!4357789 b!4356991)))

(assert (=> bs!632575 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569110)) (t!355979 (toList!2966 lt!1569110))) (toList!2966 lt!1569103)) (= lambda!140715 lambda!140606))))

(declare-fun bs!632576 () Bool)

(assert (= bs!632576 (and b!4357789 b!4357717)))

(assert (=> bs!632576 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569110)) (t!355979 (toList!2966 lt!1569110))) (t!355979 (toList!2966 lt!1569104))) (= lambda!140715 lambda!140699))))

(declare-fun bs!632577 () Bool)

(assert (= bs!632577 (and b!4357789 b!4356914)))

(assert (=> bs!632577 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569110)) (t!355979 (toList!2966 lt!1569110))) (toList!2966 lt!1569110)) (= lambda!140715 lambda!140592))))

(declare-fun bs!632578 () Bool)

(assert (= bs!632578 (and b!4357789 b!4357400)))

(assert (=> bs!632578 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569110)) (t!355979 (toList!2966 lt!1569110))) (toList!2966 lt!1569103)) (= lambda!140715 lambda!140661))))

(declare-fun bs!632579 () Bool)

(assert (= bs!632579 (and b!4357789 b!4357715)))

(assert (=> bs!632579 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569110)) (t!355979 (toList!2966 lt!1569110))) (toList!2966 lt!1569104)) (= lambda!140715 lambda!140702))))

(declare-fun bs!632580 () Bool)

(assert (= bs!632580 (and b!4357789 b!4356996)))

(assert (=> bs!632580 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569110)) (t!355979 (toList!2966 lt!1569110))) (Cons!48935 (h!54486 (toList!2966 lt!1569103)) (t!355979 (toList!2966 lt!1569103)))) (= lambda!140715 lambda!140605))))

(declare-fun bs!632581 () Bool)

(assert (= bs!632581 (and b!4357789 b!4357787)))

(assert (=> bs!632581 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569110)) (t!355979 (toList!2966 lt!1569110))) (t!355979 (toList!2966 lt!1569110))) (= lambda!140715 lambda!140714))))

(declare-fun bs!632582 () Bool)

(assert (= bs!632582 (and b!4357789 b!4356993)))

(assert (=> bs!632582 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569110)) (t!355979 (toList!2966 lt!1569110))) (t!355979 (toList!2966 lt!1569103))) (= lambda!140715 lambda!140604))))

(declare-fun bs!632583 () Bool)

(assert (= bs!632583 (and b!4357789 b!4356945)))

(assert (=> bs!632583 (= (= (Cons!48935 (h!54486 (toList!2966 lt!1569110)) (t!355979 (toList!2966 lt!1569110))) (toList!2966 lt!1569104)) (= lambda!140715 lambda!140594))))

(assert (=> b!4357789 true))

(declare-fun bs!632584 () Bool)

(declare-fun b!4357785 () Bool)

(assert (= bs!632584 (and b!4357785 b!4357719)))

(declare-fun lambda!140716 () Int)

(assert (=> bs!632584 (= (= (toList!2966 lt!1569110) (Cons!48935 (h!54486 (toList!2966 lt!1569104)) (t!355979 (toList!2966 lt!1569104)))) (= lambda!140716 lambda!140700))))

(declare-fun bs!632585 () Bool)

(assert (= bs!632585 (and b!4357785 b!4356991)))

(assert (=> bs!632585 (= (= (toList!2966 lt!1569110) (toList!2966 lt!1569103)) (= lambda!140716 lambda!140606))))

(declare-fun bs!632586 () Bool)

(assert (= bs!632586 (and b!4357785 b!4357717)))

(assert (=> bs!632586 (= (= (toList!2966 lt!1569110) (t!355979 (toList!2966 lt!1569104))) (= lambda!140716 lambda!140699))))

(declare-fun bs!632587 () Bool)

(assert (= bs!632587 (and b!4357785 b!4356914)))

(assert (=> bs!632587 (= lambda!140716 lambda!140592)))

(declare-fun bs!632588 () Bool)

(assert (= bs!632588 (and b!4357785 b!4357400)))

(assert (=> bs!632588 (= (= (toList!2966 lt!1569110) (toList!2966 lt!1569103)) (= lambda!140716 lambda!140661))))

(declare-fun bs!632589 () Bool)

(assert (= bs!632589 (and b!4357785 b!4357789)))

(assert (=> bs!632589 (= (= (toList!2966 lt!1569110) (Cons!48935 (h!54486 (toList!2966 lt!1569110)) (t!355979 (toList!2966 lt!1569110)))) (= lambda!140716 lambda!140715))))

(declare-fun bs!632590 () Bool)

(assert (= bs!632590 (and b!4357785 b!4357715)))

(assert (=> bs!632590 (= (= (toList!2966 lt!1569110) (toList!2966 lt!1569104)) (= lambda!140716 lambda!140702))))

(declare-fun bs!632591 () Bool)

(assert (= bs!632591 (and b!4357785 b!4356996)))

(assert (=> bs!632591 (= (= (toList!2966 lt!1569110) (Cons!48935 (h!54486 (toList!2966 lt!1569103)) (t!355979 (toList!2966 lt!1569103)))) (= lambda!140716 lambda!140605))))

(declare-fun bs!632592 () Bool)

(assert (= bs!632592 (and b!4357785 b!4357787)))

(assert (=> bs!632592 (= (= (toList!2966 lt!1569110) (t!355979 (toList!2966 lt!1569110))) (= lambda!140716 lambda!140714))))

(declare-fun bs!632593 () Bool)

(assert (= bs!632593 (and b!4357785 b!4356993)))

(assert (=> bs!632593 (= (= (toList!2966 lt!1569110) (t!355979 (toList!2966 lt!1569103))) (= lambda!140716 lambda!140604))))

(declare-fun bs!632594 () Bool)

(assert (= bs!632594 (and b!4357785 b!4356945)))

(assert (=> bs!632594 (= (= (toList!2966 lt!1569110) (toList!2966 lt!1569104)) (= lambda!140716 lambda!140594))))

(assert (=> b!4357785 true))

(declare-fun bs!632595 () Bool)

(declare-fun b!4357791 () Bool)

(assert (= bs!632595 (and b!4357791 b!4356946)))

(declare-fun lambda!140717 () Int)

(assert (=> bs!632595 (= lambda!140717 lambda!140595)))

(declare-fun bs!632596 () Bool)

(assert (= bs!632596 (and b!4357791 b!4357721)))

(assert (=> bs!632596 (= lambda!140717 lambda!140703)))

(declare-fun bs!632597 () Bool)

(assert (= bs!632597 (and b!4357791 b!4356999)))

(assert (=> bs!632597 (= lambda!140717 lambda!140607)))

(declare-fun bs!632598 () Bool)

(assert (= bs!632598 (and b!4357791 b!4357401)))

(assert (=> bs!632598 (= lambda!140717 lambda!140663)))

(declare-fun bs!632599 () Bool)

(assert (= bs!632599 (and b!4357791 b!4356915)))

(assert (=> bs!632599 (= lambda!140717 lambda!140593)))

(declare-fun b!4357784 () Bool)

(declare-fun e!2711931 () Unit!71637)

(declare-fun Unit!71894 () Unit!71637)

(assert (=> b!4357784 (= e!2711931 Unit!71894)))

(declare-fun res!1791197 () Bool)

(declare-fun e!2711932 () Bool)

(assert (=> b!4357785 (=> (not res!1791197) (not e!2711932))))

(declare-fun lt!1570184 () List!49062)

(assert (=> b!4357785 (= res!1791197 (forall!9125 lt!1570184 lambda!140716))))

(declare-fun b!4357786 () Bool)

(declare-fun res!1791196 () Bool)

(assert (=> b!4357786 (=> (not res!1791196) (not e!2711932))))

(assert (=> b!4357786 (= res!1791196 (= (length!62 lt!1570184) (length!63 (toList!2966 lt!1569110))))))

(assert (=> b!4357787 false))

(declare-fun lt!1570185 () Unit!71637)

(assert (=> b!4357787 (= lt!1570185 (forallContained!1766 (getKeysList!126 (t!355979 (toList!2966 lt!1569110))) lambda!140714 (_1!27461 (h!54486 (toList!2966 lt!1569110)))))))

(declare-fun e!2711933 () Unit!71637)

(declare-fun Unit!71895 () Unit!71637)

(assert (=> b!4357787 (= e!2711933 Unit!71895)))

(declare-fun b!4357788 () Bool)

(assert (=> b!4357788 false))

(declare-fun Unit!71896 () Unit!71637)

(assert (=> b!4357788 (= e!2711931 Unit!71896)))

(declare-fun e!2711930 () List!49062)

(assert (=> b!4357789 (= e!2711930 (Cons!48938 (_1!27461 (h!54486 (toList!2966 lt!1569110))) (getKeysList!126 (t!355979 (toList!2966 lt!1569110)))))))

(declare-fun c!740963 () Bool)

(assert (=> b!4357789 (= c!740963 (containsKey!695 (t!355979 (toList!2966 lt!1569110)) (_1!27461 (h!54486 (toList!2966 lt!1569110)))))))

(declare-fun lt!1570190 () Unit!71637)

(assert (=> b!4357789 (= lt!1570190 e!2711931)))

(declare-fun c!740962 () Bool)

(assert (=> b!4357789 (= c!740962 (contains!11145 (getKeysList!126 (t!355979 (toList!2966 lt!1569110))) (_1!27461 (h!54486 (toList!2966 lt!1569110)))))))

(declare-fun lt!1570186 () Unit!71637)

(assert (=> b!4357789 (= lt!1570186 e!2711933)))

(declare-fun lt!1570189 () List!49062)

(assert (=> b!4357789 (= lt!1570189 (getKeysList!126 (t!355979 (toList!2966 lt!1569110))))))

(declare-fun lt!1570188 () Unit!71637)

(assert (=> b!4357789 (= lt!1570188 (lemmaForallContainsAddHeadPreserves!25 (t!355979 (toList!2966 lt!1569110)) lt!1570189 (h!54486 (toList!2966 lt!1569110))))))

(assert (=> b!4357789 (forall!9125 lt!1570189 lambda!140715)))

(declare-fun lt!1570187 () Unit!71637)

(assert (=> b!4357789 (= lt!1570187 lt!1570188)))

(declare-fun d!1288503 () Bool)

(assert (=> d!1288503 e!2711932))

(declare-fun res!1791195 () Bool)

(assert (=> d!1288503 (=> (not res!1791195) (not e!2711932))))

(assert (=> d!1288503 (= res!1791195 (noDuplicate!603 lt!1570184))))

(assert (=> d!1288503 (= lt!1570184 e!2711930)))

(declare-fun c!740961 () Bool)

(assert (=> d!1288503 (= c!740961 ((_ is Cons!48935) (toList!2966 lt!1569110)))))

(assert (=> d!1288503 (invariantList!678 (toList!2966 lt!1569110))))

(assert (=> d!1288503 (= (getKeysList!126 (toList!2966 lt!1569110)) lt!1570184)))

(declare-fun b!4357790 () Bool)

(declare-fun Unit!71897 () Unit!71637)

(assert (=> b!4357790 (= e!2711933 Unit!71897)))

(assert (=> b!4357791 (= e!2711932 (= (content!7722 lt!1570184) (content!7722 (map!10645 (toList!2966 lt!1569110) lambda!140717))))))

(declare-fun b!4357792 () Bool)

(assert (=> b!4357792 (= e!2711930 Nil!48938)))

(assert (= (and d!1288503 c!740961) b!4357789))

(assert (= (and d!1288503 (not c!740961)) b!4357792))

(assert (= (and b!4357789 c!740963) b!4357788))

(assert (= (and b!4357789 (not c!740963)) b!4357784))

(assert (= (and b!4357789 c!740962) b!4357787))

(assert (= (and b!4357789 (not c!740962)) b!4357790))

(assert (= (and d!1288503 res!1791195) b!4357786))

(assert (= (and b!4357786 res!1791196) b!4357785))

(assert (= (and b!4357785 res!1791197) b!4357791))

(declare-fun m!4973047 () Bool)

(assert (=> b!4357789 m!4973047))

(declare-fun m!4973049 () Bool)

(assert (=> b!4357789 m!4973049))

(assert (=> b!4357789 m!4973047))

(declare-fun m!4973055 () Bool)

(assert (=> b!4357789 m!4973055))

(declare-fun m!4973059 () Bool)

(assert (=> b!4357789 m!4973059))

(declare-fun m!4973061 () Bool)

(assert (=> b!4357789 m!4973061))

(assert (=> b!4357787 m!4973047))

(assert (=> b!4357787 m!4973047))

(declare-fun m!4973063 () Bool)

(assert (=> b!4357787 m!4973063))

(declare-fun m!4973065 () Bool)

(assert (=> b!4357786 m!4973065))

(assert (=> b!4357786 m!4971259))

(declare-fun m!4973067 () Bool)

(assert (=> b!4357785 m!4973067))

(declare-fun m!4973069 () Bool)

(assert (=> b!4357791 m!4973069))

(declare-fun m!4973073 () Bool)

(assert (=> b!4357791 m!4973073))

(assert (=> b!4357791 m!4973073))

(declare-fun m!4973075 () Bool)

(assert (=> b!4357791 m!4973075))

(declare-fun m!4973079 () Bool)

(assert (=> d!1288503 m!4973079))

(assert (=> d!1288503 m!4972431))

(assert (=> b!4356751 d!1288503))

(assert (=> d!1287945 d!1287919))

(assert (=> d!1287945 d!1287917))

(declare-fun d!1288507 () Bool)

(assert (=> d!1288507 (not (containsKey!692 (apply!11343 lm!1707 (_1!27462 (h!54487 (toList!2965 lm!1707)))) key!3918))))

(assert (=> d!1288507 true))

(declare-fun _$39!280 () Unit!71637)

(assert (=> d!1288507 (= (choose!26915 lm!1707 key!3918 (_1!27462 (h!54487 (toList!2965 lm!1707))) hashF!1247) _$39!280)))

(declare-fun bs!632600 () Bool)

(assert (= bs!632600 d!1288507))

(assert (=> bs!632600 m!4970583))

(assert (=> bs!632600 m!4970583))

(assert (=> bs!632600 m!4970585))

(assert (=> d!1287945 d!1288507))

(declare-fun d!1288515 () Bool)

(declare-fun res!1791208 () Bool)

(declare-fun e!2711949 () Bool)

(assert (=> d!1288515 (=> res!1791208 e!2711949)))

(assert (=> d!1288515 (= res!1791208 ((_ is Nil!48936) (toList!2965 lm!1707)))))

(assert (=> d!1288515 (= (forall!9122 (toList!2965 lm!1707) lambda!140541) e!2711949)))

(declare-fun b!4357815 () Bool)

(declare-fun e!2711950 () Bool)

(assert (=> b!4357815 (= e!2711949 e!2711950)))

(declare-fun res!1791209 () Bool)

(assert (=> b!4357815 (=> (not res!1791209) (not e!2711950))))

(assert (=> b!4357815 (= res!1791209 (dynLambda!20635 lambda!140541 (h!54487 (toList!2965 lm!1707))))))

(declare-fun b!4357816 () Bool)

(assert (=> b!4357816 (= e!2711950 (forall!9122 (t!355980 (toList!2965 lm!1707)) lambda!140541))))

(assert (= (and d!1288515 (not res!1791208)) b!4357815))

(assert (= (and b!4357815 res!1791209) b!4357816))

(declare-fun b_lambda!131313 () Bool)

(assert (=> (not b_lambda!131313) (not b!4357815)))

(declare-fun m!4973105 () Bool)

(assert (=> b!4357815 m!4973105))

(declare-fun m!4973107 () Bool)

(assert (=> b!4357816 m!4973107))

(assert (=> d!1287945 d!1288515))

(declare-fun d!1288517 () Bool)

(declare-fun c!740970 () Bool)

(assert (=> d!1288517 (= c!740970 (and ((_ is Cons!48936) (toList!2965 lt!1569503)) (= (_1!27462 (h!54487 (toList!2965 lt!1569503))) (_1!27462 lt!1569101))))))

(declare-fun e!2711951 () Option!10468)

(assert (=> d!1288517 (= (getValueByKey!454 (toList!2965 lt!1569503) (_1!27462 lt!1569101)) e!2711951)))

(declare-fun b!4357819 () Bool)

(declare-fun e!2711952 () Option!10468)

(assert (=> b!4357819 (= e!2711952 (getValueByKey!454 (t!355980 (toList!2965 lt!1569503)) (_1!27462 lt!1569101)))))

(declare-fun b!4357818 () Bool)

(assert (=> b!4357818 (= e!2711951 e!2711952)))

(declare-fun c!740971 () Bool)

(assert (=> b!4357818 (= c!740971 (and ((_ is Cons!48936) (toList!2965 lt!1569503)) (not (= (_1!27462 (h!54487 (toList!2965 lt!1569503))) (_1!27462 lt!1569101)))))))

(declare-fun b!4357817 () Bool)

(assert (=> b!4357817 (= e!2711951 (Some!10467 (_2!27462 (h!54487 (toList!2965 lt!1569503)))))))

(declare-fun b!4357820 () Bool)

(assert (=> b!4357820 (= e!2711952 None!10467)))

(assert (= (and d!1288517 c!740970) b!4357817))

(assert (= (and d!1288517 (not c!740970)) b!4357818))

(assert (= (and b!4357818 c!740971) b!4357819))

(assert (= (and b!4357818 (not c!740971)) b!4357820))

(declare-fun m!4973127 () Bool)

(assert (=> b!4357819 m!4973127))

(assert (=> b!4356887 d!1288517))

(declare-fun d!1288519 () Bool)

(declare-fun lt!1570211 () Bool)

(assert (=> d!1288519 (= lt!1570211 (select (content!7721 (toList!2966 lt!1569324)) lt!1569109))))

(declare-fun e!2711953 () Bool)

(assert (=> d!1288519 (= lt!1570211 e!2711953)))

(declare-fun res!1791211 () Bool)

(assert (=> d!1288519 (=> (not res!1791211) (not e!2711953))))

(assert (=> d!1288519 (= res!1791211 ((_ is Cons!48935) (toList!2966 lt!1569324)))))

(assert (=> d!1288519 (= (contains!11146 (toList!2966 lt!1569324) lt!1569109) lt!1570211)))

(declare-fun b!4357821 () Bool)

(declare-fun e!2711954 () Bool)

(assert (=> b!4357821 (= e!2711953 e!2711954)))

(declare-fun res!1791210 () Bool)

(assert (=> b!4357821 (=> res!1791210 e!2711954)))

(assert (=> b!4357821 (= res!1791210 (= (h!54486 (toList!2966 lt!1569324)) lt!1569109))))

(declare-fun b!4357822 () Bool)

(assert (=> b!4357822 (= e!2711954 (contains!11146 (t!355979 (toList!2966 lt!1569324)) lt!1569109))))

(assert (= (and d!1288519 res!1791211) b!4357821))

(assert (= (and b!4357821 (not res!1791210)) b!4357822))

(declare-fun m!4973131 () Bool)

(assert (=> d!1288519 m!4973131))

(declare-fun m!4973133 () Bool)

(assert (=> d!1288519 m!4973133))

(declare-fun m!4973135 () Bool)

(assert (=> b!4357822 m!4973135))

(assert (=> b!4356798 d!1288519))

(assert (=> d!1287977 d!1288325))

(assert (=> bs!631534 d!1288091))

(declare-fun d!1288523 () Bool)

(assert (=> d!1288523 (isDefined!7763 (getValueByKey!454 (toList!2965 lm!1707) hash!377))))

(declare-fun lt!1570215 () Unit!71637)

(declare-fun choose!26936 (List!49060 (_ BitVec 64)) Unit!71637)

(assert (=> d!1288523 (= lt!1570215 (choose!26936 (toList!2965 lm!1707) hash!377))))

(declare-fun e!2711957 () Bool)

(assert (=> d!1288523 e!2711957))

(declare-fun res!1791214 () Bool)

(assert (=> d!1288523 (=> (not res!1791214) (not e!2711957))))

(assert (=> d!1288523 (= res!1791214 (isStrictlySorted!104 (toList!2965 lm!1707)))))

(assert (=> d!1288523 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!366 (toList!2965 lm!1707) hash!377) lt!1570215)))

(declare-fun b!4357825 () Bool)

(assert (=> b!4357825 (= e!2711957 (containsKey!696 (toList!2965 lm!1707) hash!377))))

(assert (= (and d!1288523 res!1791214) b!4357825))

(assert (=> d!1288523 m!4970675))

(assert (=> d!1288523 m!4970675))

(assert (=> d!1288523 m!4970839))

(declare-fun m!4973137 () Bool)

(assert (=> d!1288523 m!4973137))

(assert (=> d!1288523 m!4970767))

(assert (=> b!4357825 m!4970835))

(assert (=> b!4356769 d!1288523))

(assert (=> b!4356769 d!1288265))

(assert (=> b!4356769 d!1288085))

(declare-fun d!1288525 () Bool)

(declare-fun e!2711958 () Bool)

(assert (=> d!1288525 e!2711958))

(declare-fun res!1791215 () Bool)

(assert (=> d!1288525 (=> res!1791215 e!2711958)))

(declare-fun lt!1570218 () Bool)

(assert (=> d!1288525 (= res!1791215 (not lt!1570218))))

(declare-fun lt!1570216 () Bool)

(assert (=> d!1288525 (= lt!1570218 lt!1570216)))

(declare-fun lt!1570219 () Unit!71637)

(declare-fun e!2711959 () Unit!71637)

(assert (=> d!1288525 (= lt!1570219 e!2711959)))

(declare-fun c!740972 () Bool)

(assert (=> d!1288525 (= c!740972 lt!1570216)))

(assert (=> d!1288525 (= lt!1570216 (containsKey!696 (toList!2965 lt!1569511) (_1!27462 lt!1569101)))))

(assert (=> d!1288525 (= (contains!11143 lt!1569511 (_1!27462 lt!1569101)) lt!1570218)))

(declare-fun b!4357826 () Bool)

(declare-fun lt!1570217 () Unit!71637)

(assert (=> b!4357826 (= e!2711959 lt!1570217)))

(assert (=> b!4357826 (= lt!1570217 (lemmaContainsKeyImpliesGetValueByKeyDefined!366 (toList!2965 lt!1569511) (_1!27462 lt!1569101)))))

(assert (=> b!4357826 (isDefined!7763 (getValueByKey!454 (toList!2965 lt!1569511) (_1!27462 lt!1569101)))))

(declare-fun b!4357827 () Bool)

(declare-fun Unit!71900 () Unit!71637)

(assert (=> b!4357827 (= e!2711959 Unit!71900)))

(declare-fun b!4357828 () Bool)

(assert (=> b!4357828 (= e!2711958 (isDefined!7763 (getValueByKey!454 (toList!2965 lt!1569511) (_1!27462 lt!1569101))))))

(assert (= (and d!1288525 c!740972) b!4357826))

(assert (= (and d!1288525 (not c!740972)) b!4357827))

(assert (= (and d!1288525 (not res!1791215)) b!4357828))

(declare-fun m!4973145 () Bool)

(assert (=> d!1288525 m!4973145))

(declare-fun m!4973149 () Bool)

(assert (=> b!4357826 m!4973149))

(assert (=> b!4357826 m!4971231))

(assert (=> b!4357826 m!4971231))

(declare-fun m!4973151 () Bool)

(assert (=> b!4357826 m!4973151))

(assert (=> b!4357828 m!4971231))

(assert (=> b!4357828 m!4971231))

(assert (=> b!4357828 m!4973151))

(assert (=> d!1287987 d!1288525))

(declare-fun d!1288529 () Bool)

(declare-fun c!740973 () Bool)

(assert (=> d!1288529 (= c!740973 (and ((_ is Cons!48936) lt!1569513) (= (_1!27462 (h!54487 lt!1569513)) (_1!27462 lt!1569101))))))

(declare-fun e!2711962 () Option!10468)

(assert (=> d!1288529 (= (getValueByKey!454 lt!1569513 (_1!27462 lt!1569101)) e!2711962)))

(declare-fun b!4357833 () Bool)

(declare-fun e!2711963 () Option!10468)

(assert (=> b!4357833 (= e!2711963 (getValueByKey!454 (t!355980 lt!1569513) (_1!27462 lt!1569101)))))

(declare-fun b!4357832 () Bool)

(assert (=> b!4357832 (= e!2711962 e!2711963)))

(declare-fun c!740974 () Bool)

(assert (=> b!4357832 (= c!740974 (and ((_ is Cons!48936) lt!1569513) (not (= (_1!27462 (h!54487 lt!1569513)) (_1!27462 lt!1569101)))))))

(declare-fun b!4357831 () Bool)

(assert (=> b!4357831 (= e!2711962 (Some!10467 (_2!27462 (h!54487 lt!1569513))))))

(declare-fun b!4357834 () Bool)

(assert (=> b!4357834 (= e!2711963 None!10467)))

(assert (= (and d!1288529 c!740973) b!4357831))

(assert (= (and d!1288529 (not c!740973)) b!4357832))

(assert (= (and b!4357832 c!740974) b!4357833))

(assert (= (and b!4357832 (not c!740974)) b!4357834))

(declare-fun m!4973157 () Bool)

(assert (=> b!4357833 m!4973157))

(assert (=> d!1287987 d!1288529))

(declare-fun d!1288533 () Bool)

(assert (=> d!1288533 (= (getValueByKey!454 lt!1569513 (_1!27462 lt!1569101)) (Some!10467 (_2!27462 lt!1569101)))))

(declare-fun lt!1570220 () Unit!71637)

(assert (=> d!1288533 (= lt!1570220 (choose!26927 lt!1569513 (_1!27462 lt!1569101) (_2!27462 lt!1569101)))))

(declare-fun e!2711966 () Bool)

(assert (=> d!1288533 e!2711966))

(declare-fun res!1791220 () Bool)

(assert (=> d!1288533 (=> (not res!1791220) (not e!2711966))))

(assert (=> d!1288533 (= res!1791220 (isStrictlySorted!104 lt!1569513))))

(assert (=> d!1288533 (= (lemmaContainsTupThenGetReturnValue!229 lt!1569513 (_1!27462 lt!1569101) (_2!27462 lt!1569101)) lt!1570220)))

(declare-fun b!4357837 () Bool)

(declare-fun res!1791221 () Bool)

(assert (=> b!4357837 (=> (not res!1791221) (not e!2711966))))

(assert (=> b!4357837 (= res!1791221 (containsKey!696 lt!1569513 (_1!27462 lt!1569101)))))

(declare-fun b!4357838 () Bool)

(assert (=> b!4357838 (= e!2711966 (contains!11141 lt!1569513 (tuple2!48337 (_1!27462 lt!1569101) (_2!27462 lt!1569101))))))

(assert (= (and d!1288533 res!1791220) b!4357837))

(assert (= (and b!4357837 res!1791221) b!4357838))

(assert (=> d!1288533 m!4971225))

(declare-fun m!4973163 () Bool)

(assert (=> d!1288533 m!4973163))

(declare-fun m!4973165 () Bool)

(assert (=> d!1288533 m!4973165))

(declare-fun m!4973167 () Bool)

(assert (=> b!4357837 m!4973167))

(declare-fun m!4973171 () Bool)

(assert (=> b!4357838 m!4973171))

(assert (=> d!1287987 d!1288533))

(declare-fun b!4357843 () Bool)

(declare-fun e!2711973 () Bool)

(declare-fun lt!1570221 () List!49060)

(assert (=> b!4357843 (= e!2711973 (contains!11141 lt!1570221 (tuple2!48337 (_1!27462 lt!1569101) (_2!27462 lt!1569101))))))

(declare-fun b!4357844 () Bool)

(declare-fun e!2711972 () List!49060)

(declare-fun e!2711974 () List!49060)

(assert (=> b!4357844 (= e!2711972 e!2711974)))

(declare-fun c!740977 () Bool)

(assert (=> b!4357844 (= c!740977 (and ((_ is Cons!48936) (toList!2965 lm!1707)) (= (_1!27462 (h!54487 (toList!2965 lm!1707))) (_1!27462 lt!1569101))))))

(declare-fun b!4357845 () Bool)

(declare-fun e!2711971 () List!49060)

(declare-fun call!302888 () List!49060)

(assert (=> b!4357845 (= e!2711971 call!302888)))

(declare-fun b!4357846 () Bool)

(declare-fun c!740976 () Bool)

(assert (=> b!4357846 (= c!740976 (and ((_ is Cons!48936) (toList!2965 lm!1707)) (bvsgt (_1!27462 (h!54487 (toList!2965 lm!1707))) (_1!27462 lt!1569101))))))

(assert (=> b!4357846 (= e!2711974 e!2711971)))

(declare-fun b!4357847 () Bool)

(declare-fun res!1791226 () Bool)

(assert (=> b!4357847 (=> (not res!1791226) (not e!2711973))))

(assert (=> b!4357847 (= res!1791226 (containsKey!696 lt!1570221 (_1!27462 lt!1569101)))))

(declare-fun c!740978 () Bool)

(declare-fun e!2711975 () List!49060)

(declare-fun bm!302883 () Bool)

(declare-fun call!302890 () List!49060)

(assert (=> bm!302883 (= call!302890 ($colon$colon!693 e!2711975 (ite c!740978 (h!54487 (toList!2965 lm!1707)) (tuple2!48337 (_1!27462 lt!1569101) (_2!27462 lt!1569101)))))))

(declare-fun c!740975 () Bool)

(assert (=> bm!302883 (= c!740975 c!740978)))

(declare-fun bm!302884 () Bool)

(declare-fun call!302889 () List!49060)

(assert (=> bm!302884 (= call!302888 call!302889)))

(declare-fun b!4357848 () Bool)

(assert (=> b!4357848 (= e!2711972 call!302890)))

(declare-fun bm!302885 () Bool)

(assert (=> bm!302885 (= call!302889 call!302890)))

(declare-fun d!1288539 () Bool)

(assert (=> d!1288539 e!2711973))

(declare-fun res!1791227 () Bool)

(assert (=> d!1288539 (=> (not res!1791227) (not e!2711973))))

(assert (=> d!1288539 (= res!1791227 (isStrictlySorted!104 lt!1570221))))

(assert (=> d!1288539 (= lt!1570221 e!2711972)))

(assert (=> d!1288539 (= c!740978 (and ((_ is Cons!48936) (toList!2965 lm!1707)) (bvslt (_1!27462 (h!54487 (toList!2965 lm!1707))) (_1!27462 lt!1569101))))))

(assert (=> d!1288539 (isStrictlySorted!104 (toList!2965 lm!1707))))

(assert (=> d!1288539 (= (insertStrictlySorted!135 (toList!2965 lm!1707) (_1!27462 lt!1569101) (_2!27462 lt!1569101)) lt!1570221)))

(declare-fun b!4357849 () Bool)

(assert (=> b!4357849 (= e!2711975 (insertStrictlySorted!135 (t!355980 (toList!2965 lm!1707)) (_1!27462 lt!1569101) (_2!27462 lt!1569101)))))

(declare-fun b!4357850 () Bool)

(assert (=> b!4357850 (= e!2711975 (ite c!740977 (t!355980 (toList!2965 lm!1707)) (ite c!740976 (Cons!48936 (h!54487 (toList!2965 lm!1707)) (t!355980 (toList!2965 lm!1707))) Nil!48936)))))

(declare-fun b!4357851 () Bool)

(assert (=> b!4357851 (= e!2711974 call!302889)))

(declare-fun b!4357852 () Bool)

(assert (=> b!4357852 (= e!2711971 call!302888)))

(assert (= (and d!1288539 c!740978) b!4357848))

(assert (= (and d!1288539 (not c!740978)) b!4357844))

(assert (= (and b!4357844 c!740977) b!4357851))

(assert (= (and b!4357844 (not c!740977)) b!4357846))

(assert (= (and b!4357846 c!740976) b!4357845))

(assert (= (and b!4357846 (not c!740976)) b!4357852))

(assert (= (or b!4357845 b!4357852) bm!302884))

(assert (= (or b!4357851 bm!302884) bm!302885))

(assert (= (or b!4357848 bm!302885) bm!302883))

(assert (= (and bm!302883 c!740975) b!4357849))

(assert (= (and bm!302883 (not c!740975)) b!4357850))

(assert (= (and d!1288539 res!1791227) b!4357847))

(assert (= (and b!4357847 res!1791226) b!4357843))

(declare-fun m!4973181 () Bool)

(assert (=> b!4357849 m!4973181))

(declare-fun m!4973183 () Bool)

(assert (=> b!4357847 m!4973183))

(declare-fun m!4973185 () Bool)

(assert (=> bm!302883 m!4973185))

(declare-fun m!4973187 () Bool)

(assert (=> d!1288539 m!4973187))

(assert (=> d!1288539 m!4970767))

(declare-fun m!4973191 () Bool)

(assert (=> b!4357843 m!4973191))

(assert (=> d!1287987 d!1288539))

(declare-fun d!1288545 () Bool)

(assert (=> d!1288545 (isDefined!7762 (getValueByKey!455 (toList!2966 lt!1569104) key!3918))))

(declare-fun lt!1570223 () Unit!71637)

(assert (=> d!1288545 (= lt!1570223 (choose!26922 (toList!2966 lt!1569104) key!3918))))

(assert (=> d!1288545 (invariantList!678 (toList!2966 lt!1569104))))

(assert (=> d!1288545 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!365 (toList!2966 lt!1569104) key!3918) lt!1570223)))

(declare-fun bs!632631 () Bool)

(assert (= bs!632631 d!1288545))

(assert (=> bs!632631 m!4971179))

(assert (=> bs!632631 m!4971179))

(assert (=> bs!632631 m!4971181))

(declare-fun m!4973195 () Bool)

(assert (=> bs!632631 m!4973195))

(assert (=> bs!632631 m!4972413))

(assert (=> b!4356877 d!1288545))

(assert (=> b!4356877 d!1288011))

(assert (=> b!4356877 d!1288013))

(declare-fun d!1288549 () Bool)

(assert (=> d!1288549 (contains!11145 (getKeysList!126 (toList!2966 lt!1569104)) key!3918)))

(declare-fun lt!1570224 () Unit!71637)

(assert (=> d!1288549 (= lt!1570224 (choose!26923 (toList!2966 lt!1569104) key!3918))))

(assert (=> d!1288549 (invariantList!678 (toList!2966 lt!1569104))))

(assert (=> d!1288549 (= (lemmaInListThenGetKeysListContains!123 (toList!2966 lt!1569104) key!3918) lt!1570224)))

(declare-fun bs!632632 () Bool)

(assert (= bs!632632 d!1288549))

(assert (=> bs!632632 m!4971185))

(assert (=> bs!632632 m!4971185))

(declare-fun m!4973201 () Bool)

(assert (=> bs!632632 m!4973201))

(declare-fun m!4973203 () Bool)

(assert (=> bs!632632 m!4973203))

(assert (=> bs!632632 m!4972413))

(assert (=> b!4356877 d!1288549))

(assert (=> d!1287911 d!1288215))

(declare-fun d!1288553 () Bool)

(declare-fun res!1791236 () Bool)

(declare-fun e!2711987 () Bool)

(assert (=> d!1288553 (=> res!1791236 e!2711987)))

(assert (=> d!1288553 (= res!1791236 (not ((_ is Cons!48935) (_2!27462 lt!1569102))))))

(assert (=> d!1288553 (= (noDuplicateKeys!491 (_2!27462 lt!1569102)) e!2711987)))

(declare-fun b!4357867 () Bool)

(declare-fun e!2711988 () Bool)

(assert (=> b!4357867 (= e!2711987 e!2711988)))

(declare-fun res!1791237 () Bool)

(assert (=> b!4357867 (=> (not res!1791237) (not e!2711988))))

(assert (=> b!4357867 (= res!1791237 (not (containsKey!692 (t!355979 (_2!27462 lt!1569102)) (_1!27461 (h!54486 (_2!27462 lt!1569102))))))))

(declare-fun b!4357868 () Bool)

(assert (=> b!4357868 (= e!2711988 (noDuplicateKeys!491 (t!355979 (_2!27462 lt!1569102))))))

(assert (= (and d!1288553 (not res!1791236)) b!4357867))

(assert (= (and b!4357867 res!1791237) b!4357868))

(declare-fun m!4973205 () Bool)

(assert (=> b!4357867 m!4973205))

(declare-fun m!4973207 () Bool)

(assert (=> b!4357868 m!4973207))

(assert (=> bs!631536 d!1288553))

(declare-fun bs!632633 () Bool)

(declare-fun d!1288555 () Bool)

(assert (= bs!632633 (and d!1288555 d!1288427)))

(declare-fun lambda!140719 () Int)

(assert (=> bs!632633 (= (= lt!1569103 lt!1569449) (= lambda!140719 lambda!140696))))

(declare-fun bs!632634 () Bool)

(assert (= bs!632634 (and d!1288555 b!4357756)))

(assert (=> bs!632634 (= (= lt!1569103 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140719 lambda!140706))))

(declare-fun bs!632635 () Bool)

(assert (= bs!632635 (and d!1288555 b!4356864)))

(assert (=> bs!632635 (= (= lt!1569103 lt!1569106) (= lambda!140719 lambda!140577))))

(declare-fun bs!632636 () Bool)

(assert (= bs!632636 (and d!1288555 b!4357544)))

(assert (=> bs!632636 (= (= lt!1569103 lt!1569954) (= lambda!140719 lambda!140685))))

(assert (=> bs!632634 (= (= lt!1569103 lt!1570141) (= lambda!140719 lambda!140707))))

(declare-fun bs!632637 () Bool)

(assert (= bs!632637 (and d!1288555 b!4357380)))

(assert (=> bs!632637 (= (= lt!1569103 lt!1569818) (= lambda!140719 lambda!140657))))

(declare-fun bs!632638 () Bool)

(assert (= bs!632638 (and d!1288555 d!1288355)))

(assert (=> bs!632638 (= (= lt!1569103 lt!1569958) (= lambda!140719 lambda!140686))))

(declare-fun bs!632639 () Bool)

(assert (= bs!632639 (and d!1288555 b!4356869)))

(assert (=> bs!632639 (= lambda!140719 lambda!140580)))

(declare-fun bs!632640 () Bool)

(assert (= bs!632640 (and d!1288555 d!1288219)))

(assert (=> bs!632640 (= (= lt!1569103 lt!1569822) (= lambda!140719 lambda!140659))))

(declare-fun bs!632641 () Bool)

(assert (= bs!632641 (and d!1288555 d!1288471)))

(assert (=> bs!632641 (= (= lt!1569103 lt!1570145) (= lambda!140719 lambda!140709))))

(declare-fun bs!632642 () Bool)

(assert (= bs!632642 (and d!1288555 b!4356871)))

(assert (=> bs!632642 (= (= lt!1569103 lt!1569470) (= lambda!140719 lambda!140582))))

(declare-fun bs!632643 () Bool)

(assert (= bs!632643 (and d!1288555 b!4357495)))

(assert (=> bs!632643 (= (= lt!1569103 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140719 lambda!140677))))

(declare-fun bs!632644 () Bool)

(assert (= bs!632644 (and d!1288555 b!4357493)))

(assert (=> bs!632644 (= (= lt!1569103 (extractMap!550 (t!355980 (toList!2965 lt!1569099)))) (= lambda!140719 lambda!140676))))

(declare-fun bs!632645 () Bool)

(assert (= bs!632645 (and d!1288555 d!1287949)))

(assert (=> bs!632645 (= (= lt!1569103 lt!1569453) (= lambda!140719 lambda!140579))))

(declare-fun bs!632646 () Bool)

(assert (= bs!632646 (and d!1288555 b!4357754)))

(assert (=> bs!632646 (= (= lt!1569103 (+!640 lt!1569103 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140719 lambda!140705))))

(assert (=> bs!632637 (= (= lt!1569103 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140719 lambda!140656))))

(declare-fun bs!632647 () Bool)

(assert (= bs!632647 (and d!1288555 b!4357485)))

(assert (=> bs!632647 (= (= lt!1569103 lt!1569877) (= lambda!140719 lambda!140671))))

(declare-fun bs!632648 () Bool)

(assert (= bs!632648 (and d!1288555 b!4356862)))

(assert (=> bs!632648 (= (= lt!1569103 lt!1569106) (= lambda!140719 lambda!140576))))

(declare-fun bs!632649 () Bool)

(assert (= bs!632649 (and d!1288555 b!4357483)))

(assert (=> bs!632649 (= (= lt!1569103 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140719 lambda!140668))))

(declare-fun bs!632650 () Bool)

(assert (= bs!632650 (and d!1288555 b!4357378)))

(assert (=> bs!632650 (= (= lt!1569103 (extractMap!550 (t!355980 (t!355980 (toList!2965 lm!1707))))) (= lambda!140719 lambda!140655))))

(assert (=> bs!632647 (= (= lt!1569103 (+!640 lt!1569103 (tuple2!48335 key!3918 newValue!99))) (= lambda!140719 lambda!140670))))

(assert (=> bs!632635 (= (= lt!1569103 lt!1569449) (= lambda!140719 lambda!140578))))

(declare-fun bs!632651 () Bool)

(assert (= bs!632651 (and d!1288555 b!4357638)))

(assert (=> bs!632651 (= (= lt!1569103 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140719 lambda!140687))))

(declare-fun bs!632652 () Bool)

(assert (= bs!632652 (and d!1288555 d!1288275)))

(assert (=> bs!632652 (= (= lt!1569103 lt!1569106) (= lambda!140719 lambda!140667))))

(assert (=> bs!632642 (= lambda!140719 lambda!140581)))

(declare-fun bs!632653 () Bool)

(assert (= bs!632653 (and d!1288555 d!1287975)))

(assert (=> bs!632653 (= (= lt!1569103 lt!1569474) (= lambda!140719 lambda!140583))))

(declare-fun bs!632654 () Bool)

(assert (= bs!632654 (and d!1288555 d!1288487)))

(assert (=> bs!632654 (= (= lt!1569103 lt!1569470) (= lambda!140719 lambda!140712))))

(declare-fun bs!632655 () Bool)

(assert (= bs!632655 (and d!1288555 b!4357542)))

(assert (=> bs!632655 (= (= lt!1569103 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140719 lambda!140683))))

(declare-fun bs!632656 () Bool)

(assert (= bs!632656 (and d!1288555 d!1287907)))

(assert (=> bs!632656 (not (= lambda!140719 lambda!140513))))

(declare-fun bs!632657 () Bool)

(assert (= bs!632657 (and d!1288555 b!4357640)))

(assert (=> bs!632657 (= (= lt!1569103 (+!640 lt!1569106 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (= lambda!140719 lambda!140688))))

(declare-fun bs!632658 () Bool)

(assert (= bs!632658 (and d!1288555 d!1288297)))

(assert (=> bs!632658 (= (= lt!1569103 lt!1569923) (= lambda!140719 lambda!140679))))

(assert (=> bs!632636 (= (= lt!1569103 (extractMap!550 (t!355980 (toList!2965 lm!1707)))) (= lambda!140719 lambda!140684))))

(declare-fun bs!632659 () Bool)

(assert (= bs!632659 (and d!1288555 b!4357024)))

(assert (=> bs!632659 (= (= lt!1569103 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140719 lambda!140611))))

(declare-fun bs!632660 () Bool)

(assert (= bs!632660 (and d!1288555 d!1288293)))

(assert (=> bs!632660 (= (= lt!1569103 lt!1569881) (= lambda!140719 lambda!140674))))

(declare-fun bs!632661 () Bool)

(assert (= bs!632661 (and d!1288555 d!1288049)))

(assert (=> bs!632661 (= (= lt!1569103 lt!1569582) (= lambda!140719 lambda!140614))))

(assert (=> bs!632643 (= (= lt!1569103 lt!1569919) (= lambda!140719 lambda!140678))))

(declare-fun bs!632662 () Bool)

(assert (= bs!632662 (and d!1288555 b!4357022)))

(assert (=> bs!632662 (= (= lt!1569103 (extractMap!550 (t!355980 (toList!2965 (+!639 lt!1569099 lt!1569101))))) (= lambda!140719 lambda!140609))))

(assert (=> bs!632659 (= (= lt!1569103 lt!1569578) (= lambda!140719 lambda!140612))))

(assert (=> bs!632657 (= (= lt!1569103 lt!1570020) (= lambda!140719 lambda!140689))))

(declare-fun bs!632663 () Bool)

(assert (= bs!632663 (and d!1288555 d!1288403)))

(assert (=> bs!632663 (= (= lt!1569103 lt!1570024) (= lambda!140719 lambda!140690))))

(assert (=> d!1288555 true))

(assert (=> d!1288555 (forall!9124 (toList!2966 lt!1569103) lambda!140719)))

(declare-fun lt!1570233 () Unit!71637)

(assert (=> d!1288555 (= lt!1570233 (choose!26928 lt!1569103))))

(assert (=> d!1288555 (= (lemmaContainsAllItsOwnKeys!61 lt!1569103) lt!1570233)))

(declare-fun bs!632664 () Bool)

(assert (= bs!632664 d!1288555))

(declare-fun m!4973265 () Bool)

(assert (=> bs!632664 m!4973265))

(declare-fun m!4973269 () Bool)

(assert (=> bs!632664 m!4973269))

(assert (=> bm!302777 d!1288555))

(declare-fun d!1288563 () Bool)

(declare-fun c!740989 () Bool)

(assert (=> d!1288563 (= c!740989 (and ((_ is Cons!48936) (toList!2965 lt!1569511)) (= (_1!27462 (h!54487 (toList!2965 lt!1569511))) (_1!27462 lt!1569101))))))

(declare-fun e!2712000 () Option!10468)

(assert (=> d!1288563 (= (getValueByKey!454 (toList!2965 lt!1569511) (_1!27462 lt!1569101)) e!2712000)))

(declare-fun b!4357893 () Bool)

(declare-fun e!2712001 () Option!10468)

(assert (=> b!4357893 (= e!2712001 (getValueByKey!454 (t!355980 (toList!2965 lt!1569511)) (_1!27462 lt!1569101)))))

(declare-fun b!4357891 () Bool)

(assert (=> b!4357891 (= e!2712000 e!2712001)))

(declare-fun c!740990 () Bool)

(assert (=> b!4357891 (= c!740990 (and ((_ is Cons!48936) (toList!2965 lt!1569511)) (not (= (_1!27462 (h!54487 (toList!2965 lt!1569511))) (_1!27462 lt!1569101)))))))

(declare-fun b!4357889 () Bool)

(assert (=> b!4357889 (= e!2712000 (Some!10467 (_2!27462 (h!54487 (toList!2965 lt!1569511)))))))

(declare-fun b!4357894 () Bool)

(assert (=> b!4357894 (= e!2712001 None!10467)))

(assert (= (and d!1288563 c!740989) b!4357889))

(assert (= (and d!1288563 (not c!740989)) b!4357891))

(assert (= (and b!4357891 c!740990) b!4357893))

(assert (= (and b!4357891 (not c!740990)) b!4357894))

(declare-fun m!4973283 () Bool)

(assert (=> b!4357893 m!4973283))

(assert (=> b!4356891 d!1288563))

(assert (=> bm!302775 d!1288269))

(declare-fun d!1288569 () Bool)

(assert (=> d!1288569 (= (invariantList!678 (toList!2966 lt!1569380)) (noDuplicatedKeys!119 (toList!2966 lt!1569380)))))

(declare-fun bs!632665 () Bool)

(assert (= bs!632665 d!1288569))

(declare-fun m!4973285 () Bool)

(assert (=> bs!632665 m!4973285))

(assert (=> d!1287947 d!1288569))

(declare-fun d!1288571 () Bool)

(declare-fun res!1791246 () Bool)

(declare-fun e!2712003 () Bool)

(assert (=> d!1288571 (=> res!1791246 e!2712003)))

(assert (=> d!1288571 (= res!1791246 ((_ is Nil!48936) (toList!2965 lt!1569099)))))

(assert (=> d!1288571 (= (forall!9122 (toList!2965 lt!1569099) lambda!140542) e!2712003)))

(declare-fun b!4357895 () Bool)

(declare-fun e!2712004 () Bool)

(assert (=> b!4357895 (= e!2712003 e!2712004)))

(declare-fun res!1791247 () Bool)

(assert (=> b!4357895 (=> (not res!1791247) (not e!2712004))))

(assert (=> b!4357895 (= res!1791247 (dynLambda!20635 lambda!140542 (h!54487 (toList!2965 lt!1569099))))))

(declare-fun b!4357896 () Bool)

(assert (=> b!4357896 (= e!2712004 (forall!9122 (t!355980 (toList!2965 lt!1569099)) lambda!140542))))

(assert (= (and d!1288571 (not res!1791246)) b!4357895))

(assert (= (and b!4357895 res!1791247) b!4357896))

(declare-fun b_lambda!131327 () Bool)

(assert (=> (not b_lambda!131327) (not b!4357895)))

(declare-fun m!4973287 () Bool)

(assert (=> b!4357895 m!4973287))

(declare-fun m!4973289 () Bool)

(assert (=> b!4357896 m!4973289))

(assert (=> d!1287947 d!1288571))

(declare-fun e!2712005 () Bool)

(declare-fun b!4357897 () Bool)

(declare-fun tp!1330163 () Bool)

(assert (=> b!4357897 (= e!2712005 (and tp_is_empty!25201 tp_is_empty!25203 tp!1330163))))

(assert (=> b!4356906 (= tp!1330161 e!2712005)))

(assert (= (and b!4356906 ((_ is Cons!48935) (_2!27462 (h!54487 (toList!2965 lm!1707))))) b!4357897))

(declare-fun b!4357898 () Bool)

(declare-fun e!2712006 () Bool)

(declare-fun tp!1330164 () Bool)

(declare-fun tp!1330165 () Bool)

(assert (=> b!4357898 (= e!2712006 (and tp!1330164 tp!1330165))))

(assert (=> b!4356906 (= tp!1330162 e!2712006)))

(assert (= (and b!4356906 ((_ is Cons!48936) (t!355980 (toList!2965 lm!1707)))) b!4357898))

(declare-fun e!2712007 () Bool)

(declare-fun tp!1330166 () Bool)

(declare-fun b!4357899 () Bool)

(assert (=> b!4357899 (= e!2712007 (and tp_is_empty!25201 tp_is_empty!25203 tp!1330166))))

(assert (=> b!4356901 (= tp!1330156 e!2712007)))

(assert (= (and b!4356901 ((_ is Cons!48935) (t!355979 (t!355979 newBucket!200)))) b!4357899))

(declare-fun b_lambda!131329 () Bool)

(assert (= b_lambda!131309 (or b!4356871 b_lambda!131329)))

(declare-fun bs!632666 () Bool)

(declare-fun d!1288573 () Bool)

(assert (= bs!632666 (and d!1288573 b!4356871)))

(assert (=> bs!632666 (= (dynLambda!20636 lambda!140582 (h!54486 (toList!2966 lt!1569469))) (contains!11142 lt!1569470 (_1!27461 (h!54486 (toList!2966 lt!1569469)))))))

(declare-fun m!4973291 () Bool)

(assert (=> bs!632666 m!4973291))

(assert (=> b!4357770 d!1288573))

(declare-fun b_lambda!131331 () Bool)

(assert (= b_lambda!131293 (or b!4356864 b_lambda!131331)))

(declare-fun bs!632667 () Bool)

(declare-fun d!1288575 () Bool)

(assert (= bs!632667 (and d!1288575 b!4356864)))

(assert (=> bs!632667 (= (dynLambda!20636 lambda!140578 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (contains!11142 lt!1569449 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> bs!632667 m!4971107))

(assert (=> d!1288421 d!1288575))

(declare-fun b_lambda!131333 () Bool)

(assert (= b_lambda!131245 (or d!1287883 b_lambda!131333)))

(declare-fun bs!632668 () Bool)

(declare-fun d!1288577 () Bool)

(assert (= bs!632668 (and d!1288577 d!1287883)))

(assert (=> bs!632668 (= (dynLambda!20635 lambda!140494 (h!54487 (toList!2965 lm!1707))) (allKeysSameHash!449 (_2!27462 (h!54487 (toList!2965 lm!1707))) (_1!27462 (h!54487 (toList!2965 lm!1707))) hashF!1247))))

(declare-fun m!4973293 () Bool)

(assert (=> bs!632668 m!4973293))

(assert (=> b!4357307 d!1288577))

(declare-fun b_lambda!131335 () Bool)

(assert (= b_lambda!131279 (or start!421644 b_lambda!131335)))

(assert (=> d!1288391 d!1287997))

(declare-fun b_lambda!131337 () Bool)

(assert (= b_lambda!131229 (or d!1287949 b_lambda!131337)))

(declare-fun bs!632669 () Bool)

(declare-fun d!1288579 () Bool)

(assert (= bs!632669 (and d!1288579 d!1287949)))

(assert (=> bs!632669 (= (dynLambda!20636 lambda!140579 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (contains!11142 lt!1569453 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun m!4973295 () Bool)

(assert (=> bs!632669 m!4973295))

(assert (=> b!4357147 d!1288579))

(declare-fun b_lambda!131339 () Bool)

(assert (= b_lambda!131301 (or b!4356871 b_lambda!131339)))

(declare-fun bs!632670 () Bool)

(declare-fun d!1288581 () Bool)

(assert (= bs!632670 (and d!1288581 b!4356871)))

(assert (=> bs!632670 (= (dynLambda!20636 lambda!140582 (h!54486 (toList!2966 lt!1569103))) (contains!11142 lt!1569470 (_1!27461 (h!54486 (toList!2966 lt!1569103)))))))

(declare-fun m!4973297 () Bool)

(assert (=> bs!632670 m!4973297))

(assert (=> b!4357736 d!1288581))

(declare-fun b_lambda!131341 () Bool)

(assert (= b_lambda!131313 (or d!1287945 b_lambda!131341)))

(declare-fun bs!632671 () Bool)

(declare-fun d!1288583 () Bool)

(assert (= bs!632671 (and d!1288583 d!1287945)))

(assert (=> bs!632671 (= (dynLambda!20635 lambda!140541 (h!54487 (toList!2965 lm!1707))) (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(assert (=> bs!632671 m!4970929))

(assert (=> b!4357815 d!1288583))

(declare-fun b_lambda!131343 () Bool)

(assert (= b_lambda!131281 (or d!1287949 b_lambda!131343)))

(declare-fun bs!632672 () Bool)

(declare-fun d!1288585 () Bool)

(assert (= bs!632672 (and d!1288585 d!1287949)))

(assert (=> bs!632672 (= (dynLambda!20636 lambda!140579 (h!54486 (toList!2966 lt!1569106))) (contains!11142 lt!1569453 (_1!27461 (h!54486 (toList!2966 lt!1569106)))))))

(declare-fun m!4973299 () Bool)

(assert (=> bs!632672 m!4973299))

(assert (=> b!4357612 d!1288585))

(declare-fun b_lambda!131345 () Bool)

(assert (= b_lambda!131305 (or b!4356871 b_lambda!131345)))

(declare-fun bs!632673 () Bool)

(declare-fun d!1288587 () Bool)

(assert (= bs!632673 (and d!1288587 b!4356871)))

(assert (=> bs!632673 (= (dynLambda!20636 lambda!140581 (h!54486 (toList!2966 lt!1569103))) (contains!11142 lt!1569103 (_1!27461 (h!54486 (toList!2966 lt!1569103)))))))

(declare-fun m!4973301 () Bool)

(assert (=> bs!632673 m!4973301))

(assert (=> b!4357750 d!1288587))

(declare-fun b_lambda!131347 () Bool)

(assert (= b_lambda!131253 (or d!1287907 b_lambda!131347)))

(declare-fun bs!632674 () Bool)

(declare-fun d!1288589 () Bool)

(assert (= bs!632674 (and d!1288589 d!1287907)))

(assert (=> bs!632674 (= (dynLambda!20636 lambda!140513 (h!54486 newBucket!200)) (= (hash!1559 hashF!1247 (_1!27461 (h!54486 newBucket!200))) hash!377))))

(declare-fun m!4973303 () Bool)

(assert (=> bs!632674 m!4973303))

(assert (=> b!4357366 d!1288589))

(declare-fun b_lambda!131349 () Bool)

(assert (= b_lambda!131241 (or d!1287983 b_lambda!131349)))

(declare-fun bs!632675 () Bool)

(declare-fun d!1288591 () Bool)

(assert (= bs!632675 (and d!1288591 d!1287983)))

(assert (=> bs!632675 (= (dynLambda!20635 lambda!140587 (h!54487 (t!355980 (toList!2965 lm!1707)))) (noDuplicateKeys!491 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707))))))))

(assert (=> bs!632675 m!4972075))

(assert (=> b!4357246 d!1288591))

(declare-fun b_lambda!131351 () Bool)

(assert (= b_lambda!131255 (or start!421644 b_lambda!131351)))

(declare-fun bs!632676 () Bool)

(declare-fun d!1288593 () Bool)

(assert (= bs!632676 (and d!1288593 start!421644)))

(assert (=> bs!632676 (= (dynLambda!20635 lambda!140479 (h!54487 (toList!2965 (+!639 lm!1707 (tuple2!48337 hash!377 newBucket!200))))) (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 (+!639 lm!1707 (tuple2!48337 hash!377 newBucket!200)))))))))

(declare-fun m!4973305 () Bool)

(assert (=> bs!632676 m!4973305))

(assert (=> b!4357405 d!1288593))

(declare-fun b_lambda!131353 () Bool)

(assert (= b_lambda!131327 (or d!1287947 b_lambda!131353)))

(declare-fun bs!632677 () Bool)

(declare-fun d!1288595 () Bool)

(assert (= bs!632677 (and d!1288595 d!1287947)))

(assert (=> bs!632677 (= (dynLambda!20635 lambda!140542 (h!54487 (toList!2965 lt!1569099))) (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 lt!1569099)))))))

(assert (=> bs!632677 m!4972387))

(assert (=> b!4357895 d!1288595))

(declare-fun b_lambda!131355 () Bool)

(assert (= b_lambda!131271 (or start!421644 b_lambda!131355)))

(declare-fun bs!632678 () Bool)

(declare-fun d!1288597 () Bool)

(assert (= bs!632678 (and d!1288597 start!421644)))

(assert (=> bs!632678 (= (dynLambda!20635 lambda!140479 (h!54487 (t!355980 (toList!2965 lm!1707)))) (noDuplicateKeys!491 (_2!27462 (h!54487 (t!355980 (toList!2965 lm!1707))))))))

(assert (=> bs!632678 m!4972075))

(assert (=> b!4357525 d!1288597))

(declare-fun b_lambda!131357 () Bool)

(assert (= b_lambda!131291 (or b!4356864 b_lambda!131357)))

(declare-fun bs!632679 () Bool)

(declare-fun d!1288599 () Bool)

(assert (= bs!632679 (and d!1288599 b!4356864)))

(assert (=> bs!632679 (= (dynLambda!20636 lambda!140577 (h!54486 (toList!2966 lt!1569106))) (contains!11142 lt!1569106 (_1!27461 (h!54486 (toList!2966 lt!1569106)))))))

(declare-fun m!4973307 () Bool)

(assert (=> bs!632679 m!4973307))

(assert (=> b!4357673 d!1288599))

(declare-fun b_lambda!131359 () Bool)

(assert (= b_lambda!131277 (or d!1287975 b_lambda!131359)))

(declare-fun bs!632680 () Bool)

(declare-fun d!1288601 () Bool)

(assert (= bs!632680 (and d!1288601 d!1287975)))

(assert (=> bs!632680 (= (dynLambda!20636 lambda!140583 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (contains!11142 lt!1569474 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(declare-fun m!4973309 () Bool)

(assert (=> bs!632680 m!4973309))

(assert (=> b!4357586 d!1288601))

(declare-fun b_lambda!131361 () Bool)

(assert (= b_lambda!131283 (or b!4356864 b_lambda!131361)))

(declare-fun bs!632681 () Bool)

(declare-fun d!1288603 () Bool)

(assert (= bs!632681 (and d!1288603 b!4356864)))

(assert (=> bs!632681 (= (dynLambda!20636 lambda!140578 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (contains!11142 lt!1569449 (_1!27461 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(declare-fun m!4973311 () Bool)

(assert (=> bs!632681 m!4973311))

(assert (=> b!4357624 d!1288603))

(declare-fun b_lambda!131363 () Bool)

(assert (= b_lambda!131221 (or start!421644 b_lambda!131363)))

(declare-fun bs!632682 () Bool)

(declare-fun d!1288605 () Bool)

(assert (= bs!632682 (and d!1288605 start!421644)))

(assert (=> bs!632682 (= (dynLambda!20635 lambda!140479 (h!54487 (t!355980 (toList!2965 lt!1569108)))) (noDuplicateKeys!491 (_2!27462 (h!54487 (t!355980 (toList!2965 lt!1569108))))))))

(declare-fun m!4973313 () Bool)

(assert (=> bs!632682 m!4973313))

(assert (=> b!4357020 d!1288605))

(declare-fun b_lambda!131365 () Bool)

(assert (= b_lambda!131285 (or b!4356864 b_lambda!131365)))

(assert (=> b!4357636 d!1288575))

(declare-fun b_lambda!131367 () Bool)

(assert (= b_lambda!131303 (or b!4356871 b_lambda!131367)))

(declare-fun bs!632683 () Bool)

(declare-fun d!1288607 () Bool)

(assert (= bs!632683 (and d!1288607 b!4356871)))

(assert (=> bs!632683 (= (dynLambda!20636 lambda!140582 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707))))) (contains!11142 lt!1569470 (_1!27461 (h!54486 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))))

(assert (=> bs!632683 m!4971139))

(assert (=> d!1288461 d!1288607))

(declare-fun b_lambda!131369 () Bool)

(assert (= b_lambda!131247 (or d!1287981 b_lambda!131369)))

(declare-fun bs!632684 () Bool)

(declare-fun d!1288609 () Bool)

(assert (= bs!632684 (and d!1288609 d!1287981)))

(assert (=> bs!632684 (= (dynLambda!20635 lambda!140586 (h!54487 (toList!2965 lt!1569099))) (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 lt!1569099)))))))

(assert (=> bs!632684 m!4972387))

(assert (=> b!4357323 d!1288609))

(declare-fun b_lambda!131371 () Bool)

(assert (= b_lambda!131297 (or d!1287975 b_lambda!131371)))

(declare-fun bs!632685 () Bool)

(declare-fun d!1288611 () Bool)

(assert (= bs!632685 (and d!1288611 d!1287975)))

(assert (=> bs!632685 (= (dynLambda!20636 lambda!140583 (h!54486 (toList!2966 lt!1569103))) (contains!11142 lt!1569474 (_1!27461 (h!54486 (toList!2966 lt!1569103)))))))

(declare-fun m!4973315 () Bool)

(assert (=> bs!632685 m!4973315))

(assert (=> b!4357723 d!1288611))

(declare-fun b_lambda!131373 () Bool)

(assert (= b_lambda!131307 (or b!4356871 b_lambda!131373)))

(declare-fun bs!632686 () Bool)

(declare-fun d!1288613 () Bool)

(assert (= bs!632686 (and d!1288613 b!4356871)))

(assert (=> bs!632686 (= (dynLambda!20636 lambda!140582 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707)))))) (contains!11142 lt!1569470 (_1!27461 (h!54486 (t!355979 (_2!27462 (h!54487 (toList!2965 lm!1707))))))))))

(declare-fun m!4973317 () Bool)

(assert (=> bs!632686 m!4973317))

(assert (=> b!4357752 d!1288613))

(declare-fun b_lambda!131375 () Bool)

(assert (= b_lambda!131299 (or b!4356871 b_lambda!131375)))

(assert (=> b!4357725 d!1288607))

(declare-fun b_lambda!131377 () Bool)

(assert (= b_lambda!131295 (or b!4356864 b_lambda!131377)))

(declare-fun bs!632687 () Bool)

(declare-fun d!1288615 () Bool)

(assert (= bs!632687 (and d!1288615 b!4356864)))

(assert (=> bs!632687 (= (dynLambda!20636 lambda!140578 (h!54486 (toList!2966 lt!1569106))) (contains!11142 lt!1569449 (_1!27461 (h!54486 (toList!2966 lt!1569106)))))))

(declare-fun m!4973319 () Bool)

(assert (=> bs!632687 m!4973319))

(assert (=> b!4357678 d!1288615))

(declare-fun b_lambda!131379 () Bool)

(assert (= b_lambda!131215 (or d!1287937 b_lambda!131379)))

(declare-fun bs!632688 () Bool)

(declare-fun d!1288617 () Bool)

(assert (= bs!632688 (and d!1288617 d!1287937)))

(assert (=> bs!632688 (= (dynLambda!20635 lambda!140537 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101)))) (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 (+!639 lt!1569099 lt!1569101))))))))

(assert (=> bs!632688 m!4971389))

(assert (=> b!4356918 d!1288617))

(declare-fun b_lambda!131381 () Bool)

(assert (= b_lambda!131289 (or b!4356864 b_lambda!131381)))

(declare-fun bs!632689 () Bool)

(declare-fun d!1288619 () Bool)

(assert (= bs!632689 (and d!1288619 b!4356864)))

(assert (=> bs!632689 (= (dynLambda!20636 lambda!140578 (h!54486 (toList!2966 lt!1569448))) (contains!11142 lt!1569449 (_1!27461 (h!54486 (toList!2966 lt!1569448)))))))

(declare-fun m!4973321 () Bool)

(assert (=> bs!632689 m!4973321))

(assert (=> b!4357671 d!1288619))

(declare-fun b_lambda!131383 () Bool)

(assert (= b_lambda!131251 (or d!1287901 b_lambda!131383)))

(declare-fun bs!632690 () Bool)

(declare-fun d!1288621 () Bool)

(assert (= bs!632690 (and d!1288621 d!1287901)))

(assert (=> bs!632690 (= (dynLambda!20635 lambda!140498 (h!54487 (toList!2965 lm!1707))) (noDuplicateKeys!491 (_2!27462 (h!54487 (toList!2965 lm!1707)))))))

(assert (=> bs!632690 m!4970929))

(assert (=> b!4357362 d!1288621))

(check-sat (not b!4357486) (not b!4357247) (not d!1288143) (not bm!302819) (not b!4357791) (not b!4357782) (not d!1288181) (not b!4357024) (not b!4357705) (not b!4357234) (not d!1288007) (not b!4357173) (not d!1288459) (not b!4357825) (not b!4356952) (not b!4357546) (not b_lambda!131341) (not b!4357739) (not bm!302786) (not bm!302846) (not b_lambda!131361) (not b!4357833) (not b!4357321) (not b_lambda!131357) (not bs!632676) (not b!4357758) (not b!4357036) (not bm!302839) (not b_lambda!131371) (not bs!632681) (not b!4357637) (not b!4357734) (not b!4357219) (not b!4357245) (not d!1288453) (not b_lambda!131347) (not bm!302876) (not b!4357607) (not b!4357155) (not b!4357487) (not bm!302784) (not b_lambda!131377) (not b!4357450) (not b!4357706) (not b!4357601) (not b!4357449) (not bm!302810) (not b!4357230) (not b!4357518) (not b!4357715) (not b_lambda!131219) (not b!4357679) (not b!4357025) (not bm!302847) (not b!4357033) (not b!4357712) (not d!1288109) (not bm!302809) (not b!4357746) (not b!4357495) (not b!4357381) (not b!4357789) (not d!1288247) (not b!4357485) (not d!1288503) (not d!1288151) (not d!1288497) (not b!4357026) (not bs!632685) (not b!4357719) (not d!1288249) (not b!4357868) (not bs!632688) (not b!4357630) (not d!1288525) (not b!4357726) (not b!4357749) (not b!4357400) (not b!4357687) (not b!4356992) (not d!1288389) (not bm!302848) (not b_lambda!131359) (not b!4357407) (not bs!632680) (not b!4357285) (not b!4357738) (not bs!632678) (not b!4357401) (not b!4356913) (not b_lambda!131383) (not b!4357329) (not d!1288471) (not b!4357545) (not b!4357291) (not b!4357116) (not b!4357241) (not d!1288457) (not b!4357735) (not d!1288427) (not b_lambda!131351) (not b!4357035) (not b!4357235) (not d!1288199) (not d!1288051) (not d!1288219) (not bs!632679) (not b!4357674) (not b!4356946) (not b!4357672) (not b!4357214) (not bs!632675) (not b!4357757) (not b!4357330) (not b!4357263) (not b!4357724) (not b!4357327) (not d!1288343) (not bs!632669) (not b!4357215) (not bs!632667) (not d!1288487) (not b!4357641) (not d!1288127) (not b!4357751) (not b!4357224) (not b!4357677) (not b!4357688) (not bs!632683) (not b_lambda!131333) (not d!1288533) (not b_lambda!131379) (not bm!302827) (not d!1288011) (not b!4357733) (not b!4357253) (not b_lambda!131367) (not d!1288443) (not d!1288403) (not bs!632687) (not d!1288107) (not bm!302799) (not b!4357113) tp_is_empty!25203 (not b!4357681) (not b!4357225) (not bs!632666) (not d!1288159) (not b!4357448) (not b!4357771) (not bm!302857) (not b!4357775) (not d!1288141) (not b!4357898) (not b_lambda!131209) (not b!4357598) (not b!4357536) (not b!4357777) (not d!1288149) (not b!4357779) (not b!4357236) (not d!1288023) (not d!1288519) (not bm!302856) (not bs!632686) (not b!4356944) (not b!4357737) (not bs!632690) (not b!4357683) (not b!4357111) (not b!4357631) (not bm!302787) (not d!1288123) (not b!4356919) (not b!4357721) (not d!1288227) (not b!4357375) (not b!4357680) (not b_lambda!131337) (not b_lambda!131363) (not b!4357893) (not b!4357587) (not bm!302883) (not d!1288179) (not d!1288461) (not d!1288137) (not d!1288053) (not d!1288297) (not b!4356945) (not b!4356996) (not b!4357838) (not b!4357731) (not b!4357781) (not d!1288285) (not b_lambda!131381) (not b!4357227) (not bs!632677) (not b!4357048) (not b!4357308) (not b!4357756) (not b!4357640) (not b!4357364) (not b!4357120) (not b_lambda!131373) (not d!1288213) (not bs!632672) (not b!4357190) (not bs!632674) (not b!4357828) (not b_lambda!131211) (not b_lambda!131345) (not b!4357032) (not bm!302800) (not b!4357684) (not d!1288201) (not b!4357212) (not b!4357711) (not d!1288507) (not bm!302838) (not b!4357727) (not b!4357229) (not b!4357328) (not b!4357021) (not bs!632684) (not b!4357029) (not b!4357211) (not bm!302872) (not d!1288167) (not b!4357363) (not bm!302785) (not b!4357406) (not b!4357152) (not d!1288555) (not d!1288445) tp_is_empty!25201 (not b!4357741) (not b!4357429) (not b_lambda!131355) (not d!1288381) (not d!1288095) (not b!4357165) (not b!4357408) (not d!1288293) (not b!4357816) (not d!1288017) (not b!4357743) (not bm!302877) (not d!1288133) (not b!4356991) (not d!1288345) (not b!4357740) (not b!4357027) (not b!4357613) (not b_lambda!131207) (not b_lambda!131335) (not bm!302868) (not bs!632668) (not b!4357158) (not b!4357593) (not b!4357515) (not b!4357167) (not b!4357787) (not b!4357899) (not d!1288019) (not b!4357248) (not b!4357199) (not b!4357748) (not b!4357786) (not d!1288113) (not bs!632670) (not b!4357380) (not d!1288135) (not b!4357222) (not d!1288421) (not b!4357843) (not d!1288265) (not b!4357391) (not b!4357625) (not b!4357497) (not b!4357747) (not b!4356914) (not d!1288195) (not d!1288289) (not bm!302826) (not b!4357019) (not d!1288355) (not b!4357708) (not d!1288171) (not d!1288267) (not d!1288145) (not b!4357716) (not b!4357040) (not b!4357822) (not b!4357744) (not b!4357369) (not b!4357686) (not b!4357376) (not b_lambda!131257) (not b!4357119) (not b!4357730) (not b!4357399) (not b!4357175) (not d!1287999) (not bm!302844) (not b!4357289) (not b_lambda!131213) (not b!4357642) (not b!4356999) (not bm!302843) (not b_lambda!131365) (not b_lambda!131343) (not b!4357365) (not b_lambda!131375) (not d!1288287) (not b!4357728) (not b!4357717) (not b!4357243) (not bs!632689) (not b_lambda!131331) (not b!4357847) (not b!4356949) (not b!4357447) (not b_lambda!131349) (not b!4357427) (not d!1288379) (not b!4357867) (not b!4357217) (not b!4357218) (not b!4357594) (not bm!302837) (not d!1288323) (not b!4356942) (not b!4357250) (not d!1288211) (not b!4357783) (not b!4357232) (not bm!302855) (not b!4357837) (not b!4357314) (not b!4357324) (not d!1288569) (not b!4356915) (not b!4357753) (not bm!302874) (not bm!302808) (not b!4357149) (not b!4357114) (not d!1288425) (not b!4357145) (not b!4357396) (not d!1288549) (not b!4357355) (not b!4357382) (not d!1288155) (not d!1288183) (not b_lambda!131353) (not b!4357709) (not d!1288049) (not b!4357496) (not d!1288491) (not d!1288275) (not b!4357030) (not b!4357150) (not b!4357713) (not d!1288327) (not bs!632682) (not d!1288489) (not bm!302873) (not d!1288235) (not d!1288057) (not d!1288545) (not b!4357826) (not b!4357595) (not bm!302845) (not b!4357264) (not b_lambda!131339) (not d!1288377) (not b!4357896) (not bs!632671) (not b!4357526) (not bs!632673) (not bm!302825) (not d!1288539) (not b_lambda!131329) (not b!4356993) (not b!4357148) (not b!4357849) (not b!4357037) (not d!1288283) (not d!1288399) (not b!4357049) (not b!4357118) (not b_lambda!131369) (not b!4357228) (not b!4357544) (not b!4357112) (not b!4357819) (not b!4357377) (not b!4357773) (not d!1288239) (not d!1288523) (not b!4357785) (not b!4357367) (not bm!302875) (not b!4357897) (not d!1288065))
(check-sat)
