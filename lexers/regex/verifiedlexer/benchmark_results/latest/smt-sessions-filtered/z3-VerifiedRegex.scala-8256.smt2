; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!429100 () Bool)

(assert start!429100)

(declare-fun b!4410505 () Bool)

(declare-fun res!1820409 () Bool)

(declare-fun e!2746676 () Bool)

(assert (=> b!4410505 (=> (not res!1820409) (not e!2746676))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((K!10685 0))(
  ( (K!10686 (val!16819 Int)) )
))
(declare-fun key!3918 () K!10685)

(declare-datatypes ((Hashable!5039 0))(
  ( (HashableExt!5038 (__x!30742 Int)) )
))
(declare-fun hashF!1247 () Hashable!5039)

(declare-fun hash!1941 (Hashable!5039 K!10685) (_ BitVec 64))

(assert (=> b!4410505 (= res!1820409 (= (hash!1941 hashF!1247 key!3918) hash!377))))

(declare-fun b!4410506 () Bool)

(declare-fun e!2746668 () Bool)

(declare-fun tp!1332100 () Bool)

(declare-fun tp_is_empty!25827 () Bool)

(declare-fun tp_is_empty!25825 () Bool)

(assert (=> b!4410506 (= e!2746668 (and tp_is_empty!25825 tp_is_empty!25827 tp!1332100))))

(declare-fun b!4410507 () Bool)

(declare-fun e!2746671 () Bool)

(declare-datatypes ((V!10931 0))(
  ( (V!10932 (val!16820 Int)) )
))
(declare-datatypes ((tuple2!48958 0))(
  ( (tuple2!48959 (_1!27773 K!10685) (_2!27773 V!10931)) )
))
(declare-datatypes ((List!49456 0))(
  ( (Nil!49332) (Cons!49332 (h!54971 tuple2!48958) (t!356394 List!49456)) )
))
(declare-datatypes ((tuple2!48960 0))(
  ( (tuple2!48961 (_1!27774 (_ BitVec 64)) (_2!27774 List!49456)) )
))
(declare-datatypes ((List!49457 0))(
  ( (Nil!49333) (Cons!49333 (h!54972 tuple2!48960) (t!356395 List!49457)) )
))
(declare-datatypes ((ListLongMap!1927 0))(
  ( (ListLongMap!1928 (toList!3277 List!49457)) )
))
(declare-fun lm!1707 () ListLongMap!1927)

(declare-fun lt!1613663 () tuple2!48960)

(declare-fun head!9136 (ListLongMap!1927) tuple2!48960)

(assert (=> b!4410507 (= e!2746671 (not (= (head!9136 lm!1707) lt!1613663)))))

(declare-fun b!4410508 () Bool)

(declare-fun e!2746675 () Bool)

(declare-fun containsKey!981 (List!49456 K!10685) Bool)

(assert (=> b!4410508 (= e!2746675 (not (containsKey!981 (_2!27774 (h!54972 (toList!3277 lm!1707))) key!3918)))))

(declare-fun b!4410509 () Bool)

(declare-fun res!1820408 () Bool)

(assert (=> b!4410509 (=> (not res!1820408) (not e!2746676))))

(declare-fun newBucket!200 () List!49456)

(declare-fun allKeysSameHash!605 (List!49456 (_ BitVec 64) Hashable!5039) Bool)

(assert (=> b!4410509 (= res!1820408 (allKeysSameHash!605 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4410510 () Bool)

(declare-fun res!1820412 () Bool)

(assert (=> b!4410510 (=> (not res!1820412) (not e!2746676))))

(declare-fun allKeysSameHashInMap!751 (ListLongMap!1927 Hashable!5039) Bool)

(assert (=> b!4410510 (= res!1820412 (allKeysSameHashInMap!751 lm!1707 hashF!1247))))

(declare-fun b!4410511 () Bool)

(declare-fun e!2746673 () Bool)

(declare-fun e!2746669 () Bool)

(assert (=> b!4410511 (= e!2746673 (not e!2746669))))

(declare-fun res!1820411 () Bool)

(assert (=> b!4410511 (=> res!1820411 e!2746669)))

(declare-fun lt!1613679 () tuple2!48958)

(declare-fun lt!1613661 () List!49456)

(declare-fun removePairForKey!615 (List!49456 K!10685) List!49456)

(assert (=> b!4410511 (= res!1820411 (not (= newBucket!200 (Cons!49332 lt!1613679 (removePairForKey!615 lt!1613661 key!3918)))))))

(declare-fun newValue!99 () V!10931)

(assert (=> b!4410511 (= lt!1613679 (tuple2!48959 key!3918 newValue!99))))

(declare-fun lambda!150577 () Int)

(declare-datatypes ((Unit!80403 0))(
  ( (Unit!80404) )
))
(declare-fun lt!1613680 () Unit!80403)

(declare-fun lt!1613666 () tuple2!48960)

(declare-fun forallContained!2041 (List!49457 Int tuple2!48960) Unit!80403)

(assert (=> b!4410511 (= lt!1613680 (forallContained!2041 (toList!3277 lm!1707) lambda!150577 lt!1613666))))

(declare-fun contains!11753 (List!49457 tuple2!48960) Bool)

(assert (=> b!4410511 (contains!11753 (toList!3277 lm!1707) lt!1613666)))

(assert (=> b!4410511 (= lt!1613666 (tuple2!48961 hash!377 lt!1613661))))

(declare-fun lt!1613678 () Unit!80403)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!492 (List!49457 (_ BitVec 64) List!49456) Unit!80403)

(assert (=> b!4410511 (= lt!1613678 (lemmaGetValueByKeyImpliesContainsTuple!492 (toList!3277 lm!1707) hash!377 lt!1613661))))

(declare-fun apply!11499 (ListLongMap!1927 (_ BitVec 64)) List!49456)

(assert (=> b!4410511 (= lt!1613661 (apply!11499 lm!1707 hash!377))))

(declare-fun b!4410512 () Bool)

(declare-fun e!2746672 () Bool)

(assert (=> b!4410512 (= e!2746669 e!2746672)))

(declare-fun res!1820410 () Bool)

(assert (=> b!4410512 (=> res!1820410 e!2746672)))

(get-info :version)

(assert (=> b!4410512 (= res!1820410 (or (and ((_ is Cons!49333) (toList!3277 lm!1707)) (= (_1!27774 (h!54972 (toList!3277 lm!1707))) hash!377)) (not ((_ is Cons!49333) (toList!3277 lm!1707))) (= (_1!27774 (h!54972 (toList!3277 lm!1707))) hash!377)))))

(declare-fun e!2746674 () Bool)

(assert (=> b!4410512 e!2746674))

(declare-fun res!1820405 () Bool)

(assert (=> b!4410512 (=> (not res!1820405) (not e!2746674))))

(declare-fun lt!1613683 () ListLongMap!1927)

(declare-fun forall!9406 (List!49457 Int) Bool)

(assert (=> b!4410512 (= res!1820405 (forall!9406 (toList!3277 lt!1613683) lambda!150577))))

(declare-fun +!909 (ListLongMap!1927 tuple2!48960) ListLongMap!1927)

(assert (=> b!4410512 (= lt!1613683 (+!909 lm!1707 lt!1613663))))

(assert (=> b!4410512 (= lt!1613663 (tuple2!48961 hash!377 newBucket!200))))

(declare-fun lt!1613662 () Unit!80403)

(declare-fun addValidProp!293 (ListLongMap!1927 Int (_ BitVec 64) List!49456) Unit!80403)

(assert (=> b!4410512 (= lt!1613662 (addValidProp!293 lm!1707 lambda!150577 hash!377 newBucket!200))))

(assert (=> b!4410512 (forall!9406 (toList!3277 lm!1707) lambda!150577)))

(declare-fun b!4410513 () Bool)

(assert (=> b!4410513 (= e!2746674 (forall!9406 (toList!3277 lt!1613683) lambda!150577))))

(declare-fun b!4410514 () Bool)

(declare-fun e!2746667 () Bool)

(assert (=> b!4410514 (= e!2746672 e!2746667)))

(declare-fun res!1820403 () Bool)

(assert (=> b!4410514 (=> res!1820403 e!2746667)))

(declare-datatypes ((ListMap!2521 0))(
  ( (ListMap!2522 (toList!3278 List!49456)) )
))
(declare-fun lt!1613684 () ListMap!2521)

(declare-fun lt!1613660 () ListMap!2521)

(declare-fun eq!353 (ListMap!2521 ListMap!2521) Bool)

(assert (=> b!4410514 (= res!1820403 (not (eq!353 lt!1613684 lt!1613660)))))

(declare-fun lt!1613681 () ListMap!2521)

(declare-fun lt!1613674 () ListMap!2521)

(assert (=> b!4410514 (eq!353 lt!1613681 lt!1613674)))

(declare-fun +!910 (ListMap!2521 tuple2!48958) ListMap!2521)

(assert (=> b!4410514 (= lt!1613674 (+!910 lt!1613684 lt!1613679))))

(declare-fun lt!1613667 () ListMap!2521)

(declare-fun addToMapMapFromBucket!313 (List!49456 ListMap!2521) ListMap!2521)

(assert (=> b!4410514 (= lt!1613681 (addToMapMapFromBucket!313 (_2!27774 (h!54972 (toList!3277 lm!1707))) lt!1613667))))

(declare-fun lt!1613664 () Unit!80403)

(declare-fun lt!1613670 () ListMap!2521)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!152 (ListMap!2521 K!10685 V!10931 List!49456) Unit!80403)

(assert (=> b!4410514 (= lt!1613664 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!152 lt!1613670 key!3918 newValue!99 (_2!27774 (h!54972 (toList!3277 lm!1707)))))))

(assert (=> b!4410514 (= lt!1613660 lt!1613684)))

(assert (=> b!4410514 (= lt!1613684 (addToMapMapFromBucket!313 (_2!27774 (h!54972 (toList!3277 lm!1707))) lt!1613670))))

(assert (=> b!4410514 e!2746671))

(declare-fun res!1820402 () Bool)

(assert (=> b!4410514 (=> (not res!1820402) (not e!2746671))))

(declare-fun lt!1613675 () ListMap!2521)

(assert (=> b!4410514 (= res!1820402 (eq!353 lt!1613675 lt!1613667))))

(assert (=> b!4410514 (= lt!1613667 (+!910 lt!1613670 lt!1613679))))

(declare-fun lt!1613668 () ListLongMap!1927)

(declare-fun extractMap!706 (List!49457) ListMap!2521)

(assert (=> b!4410514 (= lt!1613675 (extractMap!706 (toList!3277 (+!909 lt!1613668 lt!1613663))))))

(declare-fun lt!1613676 () Unit!80403)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!151 (ListLongMap!1927 (_ BitVec 64) List!49456 K!10685 V!10931 Hashable!5039) Unit!80403)

(assert (=> b!4410514 (= lt!1613676 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!151 lt!1613668 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11754 (ListMap!2521 K!10685) Bool)

(assert (=> b!4410514 (contains!11754 lt!1613670 key!3918)))

(assert (=> b!4410514 (= lt!1613670 (extractMap!706 (toList!3277 lt!1613668)))))

(declare-fun tail!7147 (ListLongMap!1927) ListLongMap!1927)

(assert (=> b!4410514 (= lt!1613668 (tail!7147 lm!1707))))

(declare-fun lt!1613671 () ListMap!2521)

(assert (=> b!4410514 (contains!11754 lt!1613671 key!3918)))

(declare-fun lt!1613677 () Unit!80403)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!106 (List!49456 K!10685 V!10931 ListMap!2521) Unit!80403)

(assert (=> b!4410514 (= lt!1613677 (lemmaAddToMapContainsAndNotInListThenInAcc!106 (_2!27774 (h!54972 (toList!3277 lm!1707))) key!3918 newValue!99 lt!1613671))))

(assert (=> b!4410514 (= lt!1613671 (extractMap!706 (t!356395 (toList!3277 lm!1707))))))

(assert (=> b!4410514 e!2746675))

(declare-fun res!1820407 () Bool)

(assert (=> b!4410514 (=> (not res!1820407) (not e!2746675))))

(assert (=> b!4410514 (= res!1820407 (not (containsKey!981 (apply!11499 lm!1707 (_1!27774 (h!54972 (toList!3277 lm!1707)))) key!3918)))))

(declare-fun lt!1613673 () Unit!80403)

(declare-fun lemmaNotSameHashThenCannotContainKey!118 (ListLongMap!1927 K!10685 (_ BitVec 64) Hashable!5039) Unit!80403)

(assert (=> b!4410514 (= lt!1613673 (lemmaNotSameHashThenCannotContainKey!118 lm!1707 key!3918 (_1!27774 (h!54972 (toList!3277 lm!1707))) hashF!1247))))

(declare-fun b!4410515 () Bool)

(assert (=> b!4410515 (= e!2746667 true)))

(declare-fun lt!1613665 () Bool)

(declare-fun lt!1613669 () ListMap!2521)

(assert (=> b!4410515 (= lt!1613665 (eq!353 (extractMap!706 (toList!3277 lt!1613683)) lt!1613669))))

(assert (=> b!4410515 (eq!353 lt!1613681 (addToMapMapFromBucket!313 (_2!27774 (h!54972 (toList!3277 lm!1707))) lt!1613675))))

(declare-fun lt!1613672 () Unit!80403)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!12 (ListMap!2521 ListMap!2521 List!49456) Unit!80403)

(assert (=> b!4410515 (= lt!1613672 (lemmaAddToMapFromBucketPreservesEquivalence!12 lt!1613667 lt!1613675 (_2!27774 (h!54972 (toList!3277 lm!1707)))))))

(assert (=> b!4410515 (eq!353 lt!1613669 lt!1613674)))

(assert (=> b!4410515 (= lt!1613669 (+!910 lt!1613660 lt!1613679))))

(declare-fun lt!1613682 () Unit!80403)

(declare-fun lemmaAddToEqMapsPreservesEq!24 (ListMap!2521 ListMap!2521 K!10685 V!10931) Unit!80403)

(assert (=> b!4410515 (= lt!1613682 (lemmaAddToEqMapsPreservesEq!24 lt!1613660 lt!1613684 key!3918 newValue!99))))

(declare-fun res!1820406 () Bool)

(assert (=> start!429100 (=> (not res!1820406) (not e!2746676))))

(assert (=> start!429100 (= res!1820406 (forall!9406 (toList!3277 lm!1707) lambda!150577))))

(assert (=> start!429100 e!2746676))

(assert (=> start!429100 e!2746668))

(assert (=> start!429100 true))

(declare-fun e!2746670 () Bool)

(declare-fun inv!64871 (ListLongMap!1927) Bool)

(assert (=> start!429100 (and (inv!64871 lm!1707) e!2746670)))

(assert (=> start!429100 tp_is_empty!25825))

(assert (=> start!429100 tp_is_empty!25827))

(declare-fun b!4410516 () Bool)

(assert (=> b!4410516 (= e!2746676 e!2746673)))

(declare-fun res!1820400 () Bool)

(assert (=> b!4410516 (=> (not res!1820400) (not e!2746673))))

(assert (=> b!4410516 (= res!1820400 (contains!11754 lt!1613660 key!3918))))

(assert (=> b!4410516 (= lt!1613660 (extractMap!706 (toList!3277 lm!1707)))))

(declare-fun b!4410517 () Bool)

(declare-fun res!1820401 () Bool)

(assert (=> b!4410517 (=> res!1820401 e!2746669)))

(declare-fun noDuplicateKeys!647 (List!49456) Bool)

(assert (=> b!4410517 (= res!1820401 (not (noDuplicateKeys!647 newBucket!200)))))

(declare-fun b!4410518 () Bool)

(declare-fun tp!1332099 () Bool)

(assert (=> b!4410518 (= e!2746670 tp!1332099)))

(declare-fun b!4410519 () Bool)

(declare-fun res!1820404 () Bool)

(assert (=> b!4410519 (=> (not res!1820404) (not e!2746673))))

(declare-fun contains!11755 (ListLongMap!1927 (_ BitVec 64)) Bool)

(assert (=> b!4410519 (= res!1820404 (contains!11755 lm!1707 hash!377))))

(assert (= (and start!429100 res!1820406) b!4410510))

(assert (= (and b!4410510 res!1820412) b!4410505))

(assert (= (and b!4410505 res!1820409) b!4410509))

(assert (= (and b!4410509 res!1820408) b!4410516))

(assert (= (and b!4410516 res!1820400) b!4410519))

(assert (= (and b!4410519 res!1820404) b!4410511))

(assert (= (and b!4410511 (not res!1820411)) b!4410517))

(assert (= (and b!4410517 (not res!1820401)) b!4410512))

(assert (= (and b!4410512 res!1820405) b!4410513))

(assert (= (and b!4410512 (not res!1820410)) b!4410514))

(assert (= (and b!4410514 res!1820407) b!4410508))

(assert (= (and b!4410514 res!1820402) b!4410507))

(assert (= (and b!4410514 (not res!1820403)) b!4410515))

(assert (= (and start!429100 ((_ is Cons!49332) newBucket!200)) b!4410506))

(assert (= start!429100 b!4410518))

(declare-fun m!5086165 () Bool)

(assert (=> b!4410510 m!5086165))

(declare-fun m!5086167 () Bool)

(assert (=> b!4410508 m!5086167))

(declare-fun m!5086169 () Bool)

(assert (=> start!429100 m!5086169))

(declare-fun m!5086171 () Bool)

(assert (=> start!429100 m!5086171))

(declare-fun m!5086173 () Bool)

(assert (=> b!4410507 m!5086173))

(declare-fun m!5086175 () Bool)

(assert (=> b!4410509 m!5086175))

(declare-fun m!5086177 () Bool)

(assert (=> b!4410511 m!5086177))

(declare-fun m!5086179 () Bool)

(assert (=> b!4410511 m!5086179))

(declare-fun m!5086181 () Bool)

(assert (=> b!4410511 m!5086181))

(declare-fun m!5086183 () Bool)

(assert (=> b!4410511 m!5086183))

(declare-fun m!5086185 () Bool)

(assert (=> b!4410511 m!5086185))

(declare-fun m!5086187 () Bool)

(assert (=> b!4410515 m!5086187))

(declare-fun m!5086189 () Bool)

(assert (=> b!4410515 m!5086189))

(assert (=> b!4410515 m!5086187))

(declare-fun m!5086191 () Bool)

(assert (=> b!4410515 m!5086191))

(declare-fun m!5086193 () Bool)

(assert (=> b!4410515 m!5086193))

(declare-fun m!5086195 () Bool)

(assert (=> b!4410515 m!5086195))

(assert (=> b!4410515 m!5086191))

(declare-fun m!5086197 () Bool)

(assert (=> b!4410515 m!5086197))

(declare-fun m!5086199 () Bool)

(assert (=> b!4410515 m!5086199))

(declare-fun m!5086201 () Bool)

(assert (=> b!4410515 m!5086201))

(declare-fun m!5086203 () Bool)

(assert (=> b!4410513 m!5086203))

(declare-fun m!5086205 () Bool)

(assert (=> b!4410505 m!5086205))

(assert (=> b!4410512 m!5086203))

(declare-fun m!5086207 () Bool)

(assert (=> b!4410512 m!5086207))

(declare-fun m!5086209 () Bool)

(assert (=> b!4410512 m!5086209))

(assert (=> b!4410512 m!5086169))

(declare-fun m!5086211 () Bool)

(assert (=> b!4410519 m!5086211))

(declare-fun m!5086213 () Bool)

(assert (=> b!4410514 m!5086213))

(declare-fun m!5086215 () Bool)

(assert (=> b!4410514 m!5086215))

(declare-fun m!5086217 () Bool)

(assert (=> b!4410514 m!5086217))

(declare-fun m!5086219 () Bool)

(assert (=> b!4410514 m!5086219))

(declare-fun m!5086221 () Bool)

(assert (=> b!4410514 m!5086221))

(declare-fun m!5086223 () Bool)

(assert (=> b!4410514 m!5086223))

(declare-fun m!5086225 () Bool)

(assert (=> b!4410514 m!5086225))

(declare-fun m!5086227 () Bool)

(assert (=> b!4410514 m!5086227))

(declare-fun m!5086229 () Bool)

(assert (=> b!4410514 m!5086229))

(declare-fun m!5086231 () Bool)

(assert (=> b!4410514 m!5086231))

(declare-fun m!5086233 () Bool)

(assert (=> b!4410514 m!5086233))

(declare-fun m!5086235 () Bool)

(assert (=> b!4410514 m!5086235))

(declare-fun m!5086237 () Bool)

(assert (=> b!4410514 m!5086237))

(declare-fun m!5086239 () Bool)

(assert (=> b!4410514 m!5086239))

(declare-fun m!5086241 () Bool)

(assert (=> b!4410514 m!5086241))

(assert (=> b!4410514 m!5086241))

(declare-fun m!5086243 () Bool)

(assert (=> b!4410514 m!5086243))

(declare-fun m!5086245 () Bool)

(assert (=> b!4410514 m!5086245))

(declare-fun m!5086247 () Bool)

(assert (=> b!4410514 m!5086247))

(declare-fun m!5086249 () Bool)

(assert (=> b!4410514 m!5086249))

(declare-fun m!5086251 () Bool)

(assert (=> b!4410514 m!5086251))

(declare-fun m!5086253 () Bool)

(assert (=> b!4410516 m!5086253))

(declare-fun m!5086255 () Bool)

(assert (=> b!4410516 m!5086255))

(declare-fun m!5086257 () Bool)

(assert (=> b!4410517 m!5086257))

(check-sat (not b!4410515) (not b!4410509) (not b!4410507) (not b!4410513) (not start!429100) (not b!4410514) (not b!4410516) (not b!4410519) (not b!4410518) (not b!4410508) (not b!4410511) (not b!4410510) (not b!4410517) (not b!4410505) (not b!4410512) (not b!4410506) tp_is_empty!25827 tp_is_empty!25825)
(check-sat)
