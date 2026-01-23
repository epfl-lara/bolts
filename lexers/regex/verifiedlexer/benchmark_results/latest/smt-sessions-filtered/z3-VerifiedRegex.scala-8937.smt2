; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!479340 () Bool)

(assert start!479340)

(declare-fun b!4714238 () Bool)

(declare-fun e!2940253 () Bool)

(declare-fun e!2940261 () Bool)

(assert (=> b!4714238 (= e!2940253 e!2940261)))

(declare-fun res!1993012 () Bool)

(assert (=> b!4714238 (=> res!1993012 e!2940261)))

(declare-datatypes ((K!14090 0))(
  ( (K!14091 (val!19543 Int)) )
))
(declare-datatypes ((V!14336 0))(
  ( (V!14337 (val!19544 Int)) )
))
(declare-datatypes ((tuple2!54298 0))(
  ( (tuple2!54299 (_1!30443 K!14090) (_2!30443 V!14336)) )
))
(declare-datatypes ((List!52855 0))(
  ( (Nil!52731) (Cons!52731 (h!59054 tuple2!54298) (t!360101 List!52855)) )
))
(declare-fun oldBucket!34 () List!52855)

(declare-fun key!4653 () K!14090)

(declare-fun containsKey!3301 (List!52855 K!14090) Bool)

(assert (=> b!4714238 (= res!1993012 (not (containsKey!3301 (t!360101 oldBucket!34) key!4653)))))

(assert (=> b!4714238 (containsKey!3301 oldBucket!34 key!4653)))

(declare-datatypes ((Hashable!6345 0))(
  ( (HashableExt!6344 (__x!32048 Int)) )
))
(declare-fun hashF!1323 () Hashable!6345)

(declare-datatypes ((Unit!128484 0))(
  ( (Unit!128485) )
))
(declare-fun lt!1878790 () Unit!128484)

(declare-fun lemmaGetPairDefinedThenContainsKey!290 (List!52855 K!14090 Hashable!6345) Unit!128484)

(assert (=> b!4714238 (= lt!1878790 (lemmaGetPairDefinedThenContainsKey!290 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1878796 () List!52855)

(declare-datatypes ((Option!12304 0))(
  ( (None!12303) (Some!12303 (v!46850 tuple2!54298)) )
))
(declare-fun isDefined!9558 (Option!12304) Bool)

(declare-fun getPair!542 (List!52855 K!14090) Option!12304)

(assert (=> b!4714238 (isDefined!9558 (getPair!542 lt!1878796 key!4653))))

(declare-fun lt!1878793 () Unit!128484)

(declare-datatypes ((tuple2!54300 0))(
  ( (tuple2!54301 (_1!30444 (_ BitVec 64)) (_2!30444 List!52855)) )
))
(declare-datatypes ((List!52856 0))(
  ( (Nil!52732) (Cons!52732 (h!59055 tuple2!54300) (t!360102 List!52856)) )
))
(declare-datatypes ((ListLongMap!4371 0))(
  ( (ListLongMap!4372 (toList!5841 List!52856)) )
))
(declare-fun lm!2023 () ListLongMap!4371)

(declare-fun lambda!213593 () Int)

(declare-fun lt!1878787 () tuple2!54300)

(declare-fun forallContained!3590 (List!52856 Int tuple2!54300) Unit!128484)

(assert (=> b!4714238 (= lt!1878793 (forallContained!3590 (toList!5841 lm!2023) lambda!213593 lt!1878787))))

(declare-fun contains!16055 (List!52856 tuple2!54300) Bool)

(assert (=> b!4714238 (contains!16055 (toList!5841 lm!2023) lt!1878787)))

(declare-fun lt!1878786 () (_ BitVec 64))

(assert (=> b!4714238 (= lt!1878787 (tuple2!54301 lt!1878786 lt!1878796))))

(declare-fun lt!1878789 () Unit!128484)

(declare-fun lemmaGetValueImpliesTupleContained!347 (ListLongMap!4371 (_ BitVec 64) List!52855) Unit!128484)

(assert (=> b!4714238 (= lt!1878789 (lemmaGetValueImpliesTupleContained!347 lm!2023 lt!1878786 lt!1878796))))

(declare-fun apply!12425 (ListLongMap!4371 (_ BitVec 64)) List!52855)

(assert (=> b!4714238 (= lt!1878796 (apply!12425 lm!2023 lt!1878786))))

(declare-fun contains!16056 (ListLongMap!4371 (_ BitVec 64)) Bool)

(assert (=> b!4714238 (contains!16056 lm!2023 lt!1878786)))

(declare-fun lt!1878803 () Unit!128484)

(declare-fun lemmaInGenMapThenLongMapContainsHash!748 (ListLongMap!4371 K!14090 Hashable!6345) Unit!128484)

(assert (=> b!4714238 (= lt!1878803 (lemmaInGenMapThenLongMapContainsHash!748 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1878799 () Unit!128484)

(declare-fun lemmaInGenMapThenGetPairDefined!338 (ListLongMap!4371 K!14090 Hashable!6345) Unit!128484)

(assert (=> b!4714238 (= lt!1878799 (lemmaInGenMapThenGetPairDefined!338 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4714239 () Bool)

(declare-fun e!2940262 () Bool)

(declare-fun e!2940260 () Bool)

(assert (=> b!4714239 (= e!2940262 e!2940260)))

(declare-fun res!1993005 () Bool)

(assert (=> b!4714239 (=> (not res!1993005) (not e!2940260))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4714239 (= res!1993005 (= lt!1878786 hash!405))))

(declare-fun hash!4314 (Hashable!6345 K!14090) (_ BitVec 64))

(assert (=> b!4714239 (= lt!1878786 (hash!4314 hashF!1323 key!4653))))

(declare-fun b!4714240 () Bool)

(declare-fun res!1993013 () Bool)

(declare-fun e!2940256 () Bool)

(assert (=> b!4714240 (=> res!1993013 e!2940256)))

(declare-fun lt!1878794 () tuple2!54298)

(assert (=> b!4714240 (= res!1993013 (not (= (h!59054 oldBucket!34) lt!1878794)))))

(declare-fun b!4714241 () Bool)

(declare-fun res!1993000 () Bool)

(declare-fun e!2940254 () Bool)

(assert (=> b!4714241 (=> (not res!1993000) (not e!2940254))))

(declare-fun allKeysSameHash!1802 (List!52855 (_ BitVec 64) Hashable!6345) Bool)

(assert (=> b!4714241 (= res!1993000 (allKeysSameHash!1802 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4714242 () Bool)

(declare-fun res!1992998 () Bool)

(assert (=> b!4714242 (=> (not res!1992998) (not e!2940254))))

(declare-fun newBucket!218 () List!52855)

(declare-fun noDuplicateKeys!1976 (List!52855) Bool)

(assert (=> b!4714242 (= res!1992998 (noDuplicateKeys!1976 newBucket!218))))

(declare-fun b!4714243 () Bool)

(declare-fun res!1993002 () Bool)

(assert (=> b!4714243 (=> (not res!1993002) (not e!2940260))))

(declare-fun allKeysSameHashInMap!1890 (ListLongMap!4371 Hashable!6345) Bool)

(assert (=> b!4714243 (= res!1993002 (allKeysSameHashInMap!1890 lm!2023 hashF!1323))))

(declare-datatypes ((ListMap!5205 0))(
  ( (ListMap!5206 (toList!5842 List!52855)) )
))
(declare-fun lt!1878795 () ListMap!5205)

(declare-fun b!4714245 () Bool)

(declare-fun lt!1878792 () ListMap!5205)

(declare-fun eq!1103 (ListMap!5205 ListMap!5205) Bool)

(declare-fun +!2236 (ListMap!5205 tuple2!54298) ListMap!5205)

(assert (=> b!4714245 (= e!2940256 (eq!1103 lt!1878795 (+!2236 lt!1878792 lt!1878794)))))

(declare-fun b!4714246 () Bool)

(declare-fun res!1993009 () Bool)

(declare-fun e!2940252 () Bool)

(assert (=> b!4714246 (=> res!1993009 e!2940252)))

(declare-fun lt!1878802 () List!52855)

(declare-fun removePairForKey!1571 (List!52855 K!14090) List!52855)

(assert (=> b!4714246 (= res!1993009 (not (= (removePairForKey!1571 (t!360101 oldBucket!34) key!4653) lt!1878802)))))

(declare-fun b!4714247 () Bool)

(declare-fun res!1993003 () Bool)

(assert (=> b!4714247 (=> (not res!1993003) (not e!2940254))))

(assert (=> b!4714247 (= res!1993003 (= (removePairForKey!1571 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4714248 () Bool)

(assert (=> b!4714248 (= e!2940252 e!2940256)))

(declare-fun res!1993001 () Bool)

(assert (=> b!4714248 (=> res!1993001 e!2940256)))

(assert (=> b!4714248 (= res!1993001 (not (eq!1103 lt!1878795 (+!2236 lt!1878792 (h!59054 oldBucket!34)))))))

(declare-fun lt!1878788 () List!52855)

(declare-fun extractMap!2002 (List!52856) ListMap!5205)

(assert (=> b!4714248 (= lt!1878792 (extractMap!2002 (Cons!52732 (tuple2!54301 hash!405 lt!1878788) (t!360102 (toList!5841 lm!2023)))))))

(declare-fun lt!1878805 () tuple2!54300)

(assert (=> b!4714248 (= lt!1878795 (extractMap!2002 (Cons!52732 lt!1878805 (t!360102 (toList!5841 lm!2023)))))))

(declare-fun lt!1878791 () ListMap!5205)

(declare-fun addToMapMapFromBucket!1406 (List!52855 ListMap!5205) ListMap!5205)

(assert (=> b!4714248 (eq!1103 (addToMapMapFromBucket!1406 (Cons!52731 lt!1878794 lt!1878802) lt!1878791) (+!2236 (addToMapMapFromBucket!1406 lt!1878802 lt!1878791) lt!1878794))))

(declare-fun lt!1878801 () Unit!128484)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!352 (tuple2!54298 List!52855 ListMap!5205) Unit!128484)

(assert (=> b!4714248 (= lt!1878801 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!352 lt!1878794 lt!1878802 lt!1878791))))

(declare-fun head!10181 (List!52855) tuple2!54298)

(assert (=> b!4714248 (= lt!1878794 (head!10181 newBucket!218))))

(declare-fun lt!1878798 () tuple2!54298)

(assert (=> b!4714248 (eq!1103 (addToMapMapFromBucket!1406 (Cons!52731 lt!1878798 lt!1878788) lt!1878791) (+!2236 (addToMapMapFromBucket!1406 lt!1878788 lt!1878791) lt!1878798))))

(declare-fun lt!1878806 () Unit!128484)

(assert (=> b!4714248 (= lt!1878806 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!352 lt!1878798 lt!1878788 lt!1878791))))

(assert (=> b!4714248 (= lt!1878798 (head!10181 oldBucket!34))))

(declare-fun lt!1878800 () List!52856)

(declare-fun contains!16057 (ListMap!5205 K!14090) Bool)

(assert (=> b!4714248 (contains!16057 (extractMap!2002 lt!1878800) key!4653)))

(declare-fun lt!1878797 () Unit!128484)

(declare-fun lemmaListContainsThenExtractedMapContains!522 (ListLongMap!4371 K!14090 Hashable!6345) Unit!128484)

(assert (=> b!4714248 (= lt!1878797 (lemmaListContainsThenExtractedMapContains!522 (ListLongMap!4372 lt!1878800) key!4653 hashF!1323))))

(assert (=> b!4714248 (= lt!1878800 (Cons!52732 (tuple2!54301 hash!405 (t!360101 oldBucket!34)) (t!360102 (toList!5841 lm!2023))))))

(declare-fun b!4714249 () Bool)

(declare-fun res!1993007 () Bool)

(declare-fun e!2940259 () Bool)

(assert (=> b!4714249 (=> (not res!1993007) (not e!2940259))))

(get-info :version)

(assert (=> b!4714249 (= res!1993007 ((_ is Cons!52732) (toList!5841 lm!2023)))))

(declare-fun b!4714250 () Bool)

(declare-fun e!2940257 () Bool)

(declare-fun tp!1347794 () Bool)

(assert (=> b!4714250 (= e!2940257 tp!1347794)))

(declare-fun b!4714251 () Bool)

(assert (=> b!4714251 (= e!2940259 (not e!2940253))))

(declare-fun res!1992999 () Bool)

(assert (=> b!4714251 (=> res!1992999 e!2940253)))

(assert (=> b!4714251 (= res!1992999 (or (and ((_ is Cons!52731) oldBucket!34) (= (_1!30443 (h!59054 oldBucket!34)) key!4653)) (not ((_ is Cons!52731) oldBucket!34)) (= (_1!30443 (h!59054 oldBucket!34)) key!4653)))))

(declare-fun lt!1878804 () ListMap!5205)

(assert (=> b!4714251 (= lt!1878804 (addToMapMapFromBucket!1406 (_2!30444 (h!59055 (toList!5841 lm!2023))) lt!1878791))))

(assert (=> b!4714251 (= lt!1878791 (extractMap!2002 (t!360102 (toList!5841 lm!2023))))))

(declare-fun tail!8905 (ListLongMap!4371) ListLongMap!4371)

(assert (=> b!4714251 (= (t!360102 (toList!5841 lm!2023)) (toList!5841 (tail!8905 lm!2023)))))

(declare-fun b!4714252 () Bool)

(assert (=> b!4714252 (= e!2940261 e!2940252)))

(declare-fun res!1993008 () Bool)

(assert (=> b!4714252 (=> res!1993008 e!2940252)))

(assert (=> b!4714252 (= res!1993008 (not (= (removePairForKey!1571 lt!1878788 key!4653) lt!1878802)))))

(declare-fun tail!8906 (List!52855) List!52855)

(assert (=> b!4714252 (= lt!1878802 (tail!8906 newBucket!218))))

(assert (=> b!4714252 (= lt!1878788 (tail!8906 oldBucket!34))))

(declare-fun tp_is_empty!31197 () Bool)

(declare-fun tp_is_empty!31199 () Bool)

(declare-fun e!2940258 () Bool)

(declare-fun tp!1347793 () Bool)

(declare-fun b!4714253 () Bool)

(assert (=> b!4714253 (= e!2940258 (and tp_is_empty!31197 tp_is_empty!31199 tp!1347793))))

(declare-fun e!2940255 () Bool)

(declare-fun b!4714254 () Bool)

(declare-fun tp!1347795 () Bool)

(assert (=> b!4714254 (= e!2940255 (and tp_is_empty!31197 tp_is_empty!31199 tp!1347795))))

(declare-fun b!4714255 () Bool)

(assert (=> b!4714255 (= e!2940260 e!2940259)))

(declare-fun res!1993004 () Bool)

(assert (=> b!4714255 (=> (not res!1993004) (not e!2940259))))

(declare-fun head!10182 (List!52856) tuple2!54300)

(assert (=> b!4714255 (= res!1993004 (= (head!10182 (toList!5841 lm!2023)) lt!1878805))))

(assert (=> b!4714255 (= lt!1878805 (tuple2!54301 hash!405 oldBucket!34))))

(declare-fun res!1993011 () Bool)

(assert (=> start!479340 (=> (not res!1993011) (not e!2940254))))

(declare-fun forall!11521 (List!52856 Int) Bool)

(assert (=> start!479340 (= res!1993011 (forall!11521 (toList!5841 lm!2023) lambda!213593))))

(assert (=> start!479340 e!2940254))

(declare-fun inv!67964 (ListLongMap!4371) Bool)

(assert (=> start!479340 (and (inv!67964 lm!2023) e!2940257)))

(assert (=> start!479340 tp_is_empty!31197))

(assert (=> start!479340 e!2940258))

(assert (=> start!479340 true))

(assert (=> start!479340 e!2940255))

(declare-fun b!4714244 () Bool)

(assert (=> b!4714244 (= e!2940254 e!2940262)))

(declare-fun res!1993010 () Bool)

(assert (=> b!4714244 (=> (not res!1993010) (not e!2940262))))

(assert (=> b!4714244 (= res!1993010 (contains!16057 lt!1878804 key!4653))))

(assert (=> b!4714244 (= lt!1878804 (extractMap!2002 (toList!5841 lm!2023)))))

(declare-fun b!4714256 () Bool)

(declare-fun res!1993006 () Bool)

(assert (=> b!4714256 (=> (not res!1993006) (not e!2940260))))

(assert (=> b!4714256 (= res!1993006 (allKeysSameHash!1802 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4714257 () Bool)

(declare-fun res!1992997 () Bool)

(assert (=> b!4714257 (=> (not res!1992997) (not e!2940254))))

(assert (=> b!4714257 (= res!1992997 (noDuplicateKeys!1976 oldBucket!34))))

(assert (= (and start!479340 res!1993011) b!4714257))

(assert (= (and b!4714257 res!1992997) b!4714242))

(assert (= (and b!4714242 res!1992998) b!4714247))

(assert (= (and b!4714247 res!1993003) b!4714241))

(assert (= (and b!4714241 res!1993000) b!4714244))

(assert (= (and b!4714244 res!1993010) b!4714239))

(assert (= (and b!4714239 res!1993005) b!4714256))

(assert (= (and b!4714256 res!1993006) b!4714243))

(assert (= (and b!4714243 res!1993002) b!4714255))

(assert (= (and b!4714255 res!1993004) b!4714249))

(assert (= (and b!4714249 res!1993007) b!4714251))

(assert (= (and b!4714251 (not res!1992999)) b!4714238))

(assert (= (and b!4714238 (not res!1993012)) b!4714252))

(assert (= (and b!4714252 (not res!1993008)) b!4714246))

(assert (= (and b!4714246 (not res!1993009)) b!4714248))

(assert (= (and b!4714248 (not res!1993001)) b!4714240))

(assert (= (and b!4714240 (not res!1993013)) b!4714245))

(assert (= start!479340 b!4714250))

(assert (= (and start!479340 ((_ is Cons!52731) oldBucket!34)) b!4714253))

(assert (= (and start!479340 ((_ is Cons!52731) newBucket!218)) b!4714254))

(declare-fun m!5641557 () Bool)

(assert (=> b!4714257 m!5641557))

(declare-fun m!5641559 () Bool)

(assert (=> b!4714242 m!5641559))

(declare-fun m!5641561 () Bool)

(assert (=> start!479340 m!5641561))

(declare-fun m!5641563 () Bool)

(assert (=> start!479340 m!5641563))

(declare-fun m!5641565 () Bool)

(assert (=> b!4714247 m!5641565))

(declare-fun m!5641567 () Bool)

(assert (=> b!4714246 m!5641567))

(declare-fun m!5641569 () Bool)

(assert (=> b!4714238 m!5641569))

(declare-fun m!5641571 () Bool)

(assert (=> b!4714238 m!5641571))

(declare-fun m!5641573 () Bool)

(assert (=> b!4714238 m!5641573))

(declare-fun m!5641575 () Bool)

(assert (=> b!4714238 m!5641575))

(declare-fun m!5641577 () Bool)

(assert (=> b!4714238 m!5641577))

(declare-fun m!5641579 () Bool)

(assert (=> b!4714238 m!5641579))

(declare-fun m!5641581 () Bool)

(assert (=> b!4714238 m!5641581))

(declare-fun m!5641583 () Bool)

(assert (=> b!4714238 m!5641583))

(declare-fun m!5641585 () Bool)

(assert (=> b!4714238 m!5641585))

(declare-fun m!5641587 () Bool)

(assert (=> b!4714238 m!5641587))

(declare-fun m!5641589 () Bool)

(assert (=> b!4714238 m!5641589))

(assert (=> b!4714238 m!5641573))

(declare-fun m!5641591 () Bool)

(assert (=> b!4714238 m!5641591))

(declare-fun m!5641593 () Bool)

(assert (=> b!4714252 m!5641593))

(declare-fun m!5641595 () Bool)

(assert (=> b!4714252 m!5641595))

(declare-fun m!5641597 () Bool)

(assert (=> b!4714252 m!5641597))

(declare-fun m!5641599 () Bool)

(assert (=> b!4714256 m!5641599))

(declare-fun m!5641601 () Bool)

(assert (=> b!4714255 m!5641601))

(declare-fun m!5641603 () Bool)

(assert (=> b!4714241 m!5641603))

(declare-fun m!5641605 () Bool)

(assert (=> b!4714245 m!5641605))

(assert (=> b!4714245 m!5641605))

(declare-fun m!5641607 () Bool)

(assert (=> b!4714245 m!5641607))

(declare-fun m!5641609 () Bool)

(assert (=> b!4714239 m!5641609))

(declare-fun m!5641611 () Bool)

(assert (=> b!4714244 m!5641611))

(declare-fun m!5641613 () Bool)

(assert (=> b!4714244 m!5641613))

(declare-fun m!5641615 () Bool)

(assert (=> b!4714243 m!5641615))

(declare-fun m!5641617 () Bool)

(assert (=> b!4714251 m!5641617))

(declare-fun m!5641619 () Bool)

(assert (=> b!4714251 m!5641619))

(declare-fun m!5641621 () Bool)

(assert (=> b!4714251 m!5641621))

(declare-fun m!5641623 () Bool)

(assert (=> b!4714248 m!5641623))

(declare-fun m!5641625 () Bool)

(assert (=> b!4714248 m!5641625))

(declare-fun m!5641627 () Bool)

(assert (=> b!4714248 m!5641627))

(declare-fun m!5641629 () Bool)

(assert (=> b!4714248 m!5641629))

(declare-fun m!5641631 () Bool)

(assert (=> b!4714248 m!5641631))

(declare-fun m!5641633 () Bool)

(assert (=> b!4714248 m!5641633))

(declare-fun m!5641635 () Bool)

(assert (=> b!4714248 m!5641635))

(assert (=> b!4714248 m!5641625))

(declare-fun m!5641637 () Bool)

(assert (=> b!4714248 m!5641637))

(declare-fun m!5641639 () Bool)

(assert (=> b!4714248 m!5641639))

(declare-fun m!5641641 () Bool)

(assert (=> b!4714248 m!5641641))

(declare-fun m!5641643 () Bool)

(assert (=> b!4714248 m!5641643))

(assert (=> b!4714248 m!5641633))

(declare-fun m!5641645 () Bool)

(assert (=> b!4714248 m!5641645))

(declare-fun m!5641647 () Bool)

(assert (=> b!4714248 m!5641647))

(assert (=> b!4714248 m!5641641))

(declare-fun m!5641649 () Bool)

(assert (=> b!4714248 m!5641649))

(assert (=> b!4714248 m!5641629))

(declare-fun m!5641651 () Bool)

(assert (=> b!4714248 m!5641651))

(declare-fun m!5641653 () Bool)

(assert (=> b!4714248 m!5641653))

(assert (=> b!4714248 m!5641639))

(declare-fun m!5641655 () Bool)

(assert (=> b!4714248 m!5641655))

(assert (=> b!4714248 m!5641647))

(declare-fun m!5641657 () Bool)

(assert (=> b!4714248 m!5641657))

(declare-fun m!5641659 () Bool)

(assert (=> b!4714248 m!5641659))

(assert (=> b!4714248 m!5641643))

(assert (=> b!4714248 m!5641651))

(check-sat (not b!4714238) (not b!4714253) (not b!4714239) (not b!4714247) (not start!479340) (not b!4714246) (not b!4714244) tp_is_empty!31197 (not b!4714242) (not b!4714256) (not b!4714241) (not b!4714252) tp_is_empty!31199 (not b!4714248) (not b!4714245) (not b!4714254) (not b!4714251) (not b!4714243) (not b!4714255) (not b!4714250) (not b!4714257))
(check-sat)
