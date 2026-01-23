; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461436 () Bool)

(assert start!461436)

(declare-fun b!4613664 () Bool)

(declare-fun e!2877828 () Bool)

(declare-fun e!2877838 () Bool)

(assert (=> b!4613664 (= e!2877828 e!2877838)))

(declare-fun res!1932560 () Bool)

(assert (=> b!4613664 (=> (not res!1932560) (not e!2877838))))

(declare-datatypes ((K!12725 0))(
  ( (K!12726 (val!18451 Int)) )
))
(declare-datatypes ((V!12971 0))(
  ( (V!12972 (val!18452 Int)) )
))
(declare-datatypes ((tuple2!52166 0))(
  ( (tuple2!52167 (_1!29377 K!12725) (_2!29377 V!12971)) )
))
(declare-datatypes ((List!51461 0))(
  ( (Nil!51337) (Cons!51337 (h!57341 tuple2!52166) (t!358457 List!51461)) )
))
(declare-datatypes ((ListMap!4129 0))(
  ( (ListMap!4130 (toList!4825 List!51461)) )
))
(declare-fun lt!1768686 () ListMap!4129)

(declare-fun key!4968 () K!12725)

(declare-fun contains!14304 (ListMap!4129 K!12725) Bool)

(assert (=> b!4613664 (= res!1932560 (contains!14304 lt!1768686 key!4968))))

(declare-datatypes ((tuple2!52168 0))(
  ( (tuple2!52169 (_1!29378 (_ BitVec 64)) (_2!29378 List!51461)) )
))
(declare-datatypes ((List!51462 0))(
  ( (Nil!51338) (Cons!51338 (h!57342 tuple2!52168) (t!358458 List!51462)) )
))
(declare-fun lt!1768676 () List!51462)

(declare-fun extractMap!1486 (List!51462) ListMap!4129)

(assert (=> b!4613664 (= lt!1768686 (extractMap!1486 lt!1768676))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51461)

(assert (=> b!4613664 (= lt!1768676 (Cons!51338 (tuple2!52169 hash!414 oldBucket!40) Nil!51338))))

(declare-fun b!4613665 () Bool)

(declare-fun res!1932557 () Bool)

(assert (=> b!4613665 (=> (not res!1932557) (not e!2877828))))

(declare-datatypes ((Hashable!5827 0))(
  ( (HashableExt!5826 (__x!31530 Int)) )
))
(declare-fun hashF!1389 () Hashable!5827)

(declare-fun allKeysSameHash!1284 (List!51461 (_ BitVec 64) Hashable!5827) Bool)

(assert (=> b!4613665 (= res!1932557 (allKeysSameHash!1284 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4613666 () Bool)

(declare-fun e!2877836 () Bool)

(declare-fun e!2877827 () Bool)

(assert (=> b!4613666 (= e!2877836 e!2877827)))

(declare-fun res!1932561 () Bool)

(assert (=> b!4613666 (=> res!1932561 e!2877827)))

(declare-fun lt!1768682 () ListMap!4129)

(declare-fun lt!1768683 () ListMap!4129)

(declare-fun -!520 (ListMap!4129 K!12725) ListMap!4129)

(assert (=> b!4613666 (= res!1932561 (not (= (-!520 lt!1768683 key!4968) lt!1768682)))))

(declare-fun +!1815 (ListMap!4129 tuple2!52166) ListMap!4129)

(assert (=> b!4613666 (= (-!520 (+!1815 lt!1768682 (tuple2!52167 key!4968 (_2!29377 (h!57341 oldBucket!40)))) key!4968) lt!1768682)))

(declare-datatypes ((Unit!109630 0))(
  ( (Unit!109631) )
))
(declare-fun lt!1768680 () Unit!109630)

(declare-fun addThenRemoveForNewKeyIsSame!3 (ListMap!4129 K!12725 V!12971) Unit!109630)

(assert (=> b!4613666 (= lt!1768680 (addThenRemoveForNewKeyIsSame!3 lt!1768682 key!4968 (_2!29377 (h!57341 oldBucket!40))))))

(declare-fun b!4613667 () Bool)

(declare-fun res!1932565 () Bool)

(assert (=> b!4613667 (=> (not res!1932565) (not e!2877828))))

(declare-fun newBucket!224 () List!51461)

(declare-fun noDuplicateKeys!1430 (List!51461) Bool)

(assert (=> b!4613667 (= res!1932565 (noDuplicateKeys!1430 newBucket!224))))

(declare-fun b!4613668 () Bool)

(declare-fun res!1932558 () Bool)

(assert (=> b!4613668 (=> (not res!1932558) (not e!2877838))))

(assert (=> b!4613668 (= res!1932558 (allKeysSameHash!1284 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4613669 () Bool)

(declare-fun res!1932570 () Bool)

(assert (=> b!4613669 (=> (not res!1932570) (not e!2877828))))

(declare-fun removePairForKey!1053 (List!51461 K!12725) List!51461)

(assert (=> b!4613669 (= res!1932570 (= (removePairForKey!1053 oldBucket!40 key!4968) newBucket!224))))

(declare-fun tp!1341467 () Bool)

(declare-fun b!4613670 () Bool)

(declare-fun tp_is_empty!29015 () Bool)

(declare-fun e!2877837 () Bool)

(declare-fun tp_is_empty!29013 () Bool)

(assert (=> b!4613670 (= e!2877837 (and tp_is_empty!29013 tp_is_empty!29015 tp!1341467))))

(declare-fun b!4613671 () Bool)

(declare-fun e!2877835 () Bool)

(declare-fun e!2877833 () Bool)

(assert (=> b!4613671 (= e!2877835 e!2877833)))

(declare-fun res!1932556 () Bool)

(assert (=> b!4613671 (=> res!1932556 e!2877833)))

(declare-fun addToMapMapFromBucket!891 (List!51461 ListMap!4129) ListMap!4129)

(assert (=> b!4613671 (= res!1932556 (not (= lt!1768682 (addToMapMapFromBucket!891 newBucket!224 (ListMap!4130 Nil!51337)))))))

(declare-fun lt!1768687 () List!51461)

(assert (=> b!4613671 (= lt!1768682 (addToMapMapFromBucket!891 lt!1768687 (ListMap!4130 Nil!51337)))))

(declare-fun b!4613672 () Bool)

(declare-fun e!2877830 () Bool)

(assert (=> b!4613672 (= e!2877830 e!2877836)))

(declare-fun res!1932571 () Bool)

(assert (=> b!4613672 (=> res!1932571 e!2877836)))

(assert (=> b!4613672 (= res!1932571 (contains!14304 lt!1768682 key!4968))))

(declare-fun lt!1768679 () ListMap!4129)

(assert (=> b!4613672 (not (contains!14304 lt!1768679 key!4968))))

(declare-fun lt!1768677 () List!51462)

(declare-fun lt!1768678 () Unit!109630)

(declare-datatypes ((ListLongMap!3415 0))(
  ( (ListLongMap!3416 (toList!4826 List!51462)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!344 (ListLongMap!3415 K!12725 Hashable!5827) Unit!109630)

(assert (=> b!4613672 (= lt!1768678 (lemmaNotInItsHashBucketThenNotInMap!344 (ListLongMap!3416 lt!1768677) key!4968 hashF!1389))))

(declare-fun res!1932564 () Bool)

(assert (=> start!461436 (=> (not res!1932564) (not e!2877828))))

(assert (=> start!461436 (= res!1932564 (noDuplicateKeys!1430 oldBucket!40))))

(assert (=> start!461436 e!2877828))

(assert (=> start!461436 true))

(declare-fun e!2877834 () Bool)

(assert (=> start!461436 e!2877834))

(assert (=> start!461436 tp_is_empty!29013))

(assert (=> start!461436 e!2877837))

(declare-fun b!4613673 () Bool)

(declare-fun e!2877832 () Bool)

(declare-fun lt!1768684 () ListMap!4129)

(assert (=> b!4613673 (= e!2877832 (= lt!1768684 (ListMap!4130 Nil!51337)))))

(declare-fun b!4613674 () Bool)

(declare-fun res!1932569 () Bool)

(assert (=> b!4613674 (=> (not res!1932569) (not e!2877838))))

(declare-fun hash!3375 (Hashable!5827 K!12725) (_ BitVec 64))

(assert (=> b!4613674 (= res!1932569 (= (hash!3375 hashF!1389 key!4968) hash!414))))

(declare-fun b!4613675 () Bool)

(declare-fun res!1932566 () Bool)

(assert (=> b!4613675 (=> res!1932566 e!2877830)))

(declare-fun containsKey!2302 (List!51461 K!12725) Bool)

(assert (=> b!4613675 (= res!1932566 (containsKey!2302 lt!1768687 key!4968))))

(declare-fun b!4613676 () Bool)

(assert (=> b!4613676 (= e!2877833 e!2877830)))

(declare-fun res!1932562 () Bool)

(assert (=> b!4613676 (=> res!1932562 e!2877830)))

(declare-fun eq!773 (ListMap!4129 ListMap!4129) Bool)

(assert (=> b!4613676 (= res!1932562 (not (eq!773 lt!1768683 (addToMapMapFromBucket!891 oldBucket!40 (ListMap!4130 Nil!51337)))))))

(assert (=> b!4613676 (= lt!1768683 (+!1815 lt!1768682 (h!57341 oldBucket!40)))))

(declare-fun lt!1768685 () tuple2!52166)

(assert (=> b!4613676 (eq!773 (addToMapMapFromBucket!891 (Cons!51337 lt!1768685 lt!1768687) (ListMap!4130 Nil!51337)) (+!1815 lt!1768682 lt!1768685))))

(declare-fun lt!1768681 () Unit!109630)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!24 (tuple2!52166 List!51461 ListMap!4129) Unit!109630)

(assert (=> b!4613676 (= lt!1768681 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!24 lt!1768685 lt!1768687 (ListMap!4130 Nil!51337)))))

(declare-fun head!9590 (List!51461) tuple2!52166)

(assert (=> b!4613676 (= lt!1768685 (head!9590 oldBucket!40))))

(declare-fun b!4613677 () Bool)

(declare-fun res!1932563 () Bool)

(assert (=> b!4613677 (=> res!1932563 e!2877830)))

(assert (=> b!4613677 (= res!1932563 (not (= lt!1768682 lt!1768679)))))

(declare-fun b!4613678 () Bool)

(declare-fun e!2877831 () Bool)

(declare-fun e!2877829 () Bool)

(assert (=> b!4613678 (= e!2877831 e!2877829)))

(declare-fun res!1932572 () Bool)

(assert (=> b!4613678 (=> res!1932572 e!2877829)))

(assert (=> b!4613678 (= res!1932572 (not (= lt!1768687 newBucket!224)))))

(declare-fun tail!8077 (List!51461) List!51461)

(assert (=> b!4613678 (= lt!1768687 (tail!8077 oldBucket!40))))

(declare-fun b!4613679 () Bool)

(declare-fun lambda!188820 () Int)

(declare-fun forall!10724 (List!51462 Int) Bool)

(assert (=> b!4613679 (= e!2877827 (forall!10724 lt!1768676 lambda!188820))))

(declare-fun b!4613680 () Bool)

(declare-fun tp!1341466 () Bool)

(assert (=> b!4613680 (= e!2877834 (and tp_is_empty!29013 tp_is_empty!29015 tp!1341466))))

(declare-fun b!4613681 () Bool)

(assert (=> b!4613681 (= e!2877829 e!2877835)))

(declare-fun res!1932567 () Bool)

(assert (=> b!4613681 (=> res!1932567 e!2877835)))

(assert (=> b!4613681 (= res!1932567 (not (= lt!1768679 (extractMap!1486 (Cons!51338 (tuple2!52169 hash!414 newBucket!224) Nil!51338)))))))

(assert (=> b!4613681 (= lt!1768679 (extractMap!1486 lt!1768677))))

(assert (=> b!4613681 (= lt!1768677 (Cons!51338 (tuple2!52169 hash!414 lt!1768687) Nil!51338))))

(declare-fun b!4613682 () Bool)

(assert (=> b!4613682 (= e!2877838 (not e!2877831))))

(declare-fun res!1932559 () Bool)

(assert (=> b!4613682 (=> res!1932559 e!2877831)))

(get-info :version)

(assert (=> b!4613682 (= res!1932559 (or (not ((_ is Cons!51337) oldBucket!40)) (not (= (_1!29377 (h!57341 oldBucket!40)) key!4968))))))

(assert (=> b!4613682 e!2877832))

(declare-fun res!1932568 () Bool)

(assert (=> b!4613682 (=> (not res!1932568) (not e!2877832))))

(assert (=> b!4613682 (= res!1932568 (= lt!1768686 (addToMapMapFromBucket!891 oldBucket!40 lt!1768684)))))

(assert (=> b!4613682 (= lt!1768684 (extractMap!1486 Nil!51338))))

(assert (=> b!4613682 true))

(assert (= (and start!461436 res!1932564) b!4613667))

(assert (= (and b!4613667 res!1932565) b!4613669))

(assert (= (and b!4613669 res!1932570) b!4613665))

(assert (= (and b!4613665 res!1932557) b!4613664))

(assert (= (and b!4613664 res!1932560) b!4613674))

(assert (= (and b!4613674 res!1932569) b!4613668))

(assert (= (and b!4613668 res!1932558) b!4613682))

(assert (= (and b!4613682 res!1932568) b!4613673))

(assert (= (and b!4613682 (not res!1932559)) b!4613678))

(assert (= (and b!4613678 (not res!1932572)) b!4613681))

(assert (= (and b!4613681 (not res!1932567)) b!4613671))

(assert (= (and b!4613671 (not res!1932556)) b!4613676))

(assert (= (and b!4613676 (not res!1932562)) b!4613675))

(assert (= (and b!4613675 (not res!1932566)) b!4613677))

(assert (= (and b!4613677 (not res!1932563)) b!4613672))

(assert (= (and b!4613672 (not res!1932571)) b!4613666))

(assert (= (and b!4613666 (not res!1932561)) b!4613679))

(assert (= (and start!461436 ((_ is Cons!51337) oldBucket!40)) b!4613680))

(assert (= (and start!461436 ((_ is Cons!51337) newBucket!224)) b!4613670))

(declare-fun m!5445231 () Bool)

(assert (=> b!4613666 m!5445231))

(declare-fun m!5445233 () Bool)

(assert (=> b!4613666 m!5445233))

(assert (=> b!4613666 m!5445233))

(declare-fun m!5445235 () Bool)

(assert (=> b!4613666 m!5445235))

(declare-fun m!5445237 () Bool)

(assert (=> b!4613666 m!5445237))

(declare-fun m!5445239 () Bool)

(assert (=> b!4613681 m!5445239))

(declare-fun m!5445241 () Bool)

(assert (=> b!4613681 m!5445241))

(declare-fun m!5445243 () Bool)

(assert (=> b!4613669 m!5445243))

(declare-fun m!5445245 () Bool)

(assert (=> b!4613678 m!5445245))

(declare-fun m!5445247 () Bool)

(assert (=> b!4613667 m!5445247))

(declare-fun m!5445249 () Bool)

(assert (=> b!4613676 m!5445249))

(declare-fun m!5445251 () Bool)

(assert (=> b!4613676 m!5445251))

(assert (=> b!4613676 m!5445249))

(declare-fun m!5445253 () Bool)

(assert (=> b!4613676 m!5445253))

(declare-fun m!5445255 () Bool)

(assert (=> b!4613676 m!5445255))

(declare-fun m!5445257 () Bool)

(assert (=> b!4613676 m!5445257))

(declare-fun m!5445259 () Bool)

(assert (=> b!4613676 m!5445259))

(assert (=> b!4613676 m!5445255))

(declare-fun m!5445261 () Bool)

(assert (=> b!4613676 m!5445261))

(declare-fun m!5445263 () Bool)

(assert (=> b!4613676 m!5445263))

(assert (=> b!4613676 m!5445257))

(declare-fun m!5445265 () Bool)

(assert (=> b!4613679 m!5445265))

(declare-fun m!5445267 () Bool)

(assert (=> b!4613674 m!5445267))

(declare-fun m!5445269 () Bool)

(assert (=> start!461436 m!5445269))

(declare-fun m!5445271 () Bool)

(assert (=> b!4613675 m!5445271))

(declare-fun m!5445273 () Bool)

(assert (=> b!4613671 m!5445273))

(declare-fun m!5445275 () Bool)

(assert (=> b!4613671 m!5445275))

(declare-fun m!5445277 () Bool)

(assert (=> b!4613668 m!5445277))

(declare-fun m!5445279 () Bool)

(assert (=> b!4613672 m!5445279))

(declare-fun m!5445281 () Bool)

(assert (=> b!4613672 m!5445281))

(declare-fun m!5445283 () Bool)

(assert (=> b!4613672 m!5445283))

(declare-fun m!5445285 () Bool)

(assert (=> b!4613665 m!5445285))

(declare-fun m!5445287 () Bool)

(assert (=> b!4613664 m!5445287))

(declare-fun m!5445289 () Bool)

(assert (=> b!4613664 m!5445289))

(declare-fun m!5445291 () Bool)

(assert (=> b!4613682 m!5445291))

(declare-fun m!5445293 () Bool)

(assert (=> b!4613682 m!5445293))

(check-sat (not b!4613681) (not b!4613682) (not b!4613670) (not b!4613668) tp_is_empty!29015 (not start!461436) (not b!4613678) (not b!4613664) (not b!4613669) (not b!4613665) (not b!4613679) (not b!4613676) (not b!4613674) (not b!4613671) (not b!4613672) (not b!4613666) (not b!4613667) tp_is_empty!29013 (not b!4613675) (not b!4613680))
(check-sat)
(get-model)

(declare-fun d!1453283 () Bool)

(assert (=> d!1453283 true))

(assert (=> d!1453283 true))

(declare-fun lambda!188823 () Int)

(declare-fun forall!10726 (List!51461 Int) Bool)

(assert (=> d!1453283 (= (allKeysSameHash!1284 newBucket!224 hash!414 hashF!1389) (forall!10726 newBucket!224 lambda!188823))))

(declare-fun bs!1016574 () Bool)

(assert (= bs!1016574 d!1453283))

(declare-fun m!5445295 () Bool)

(assert (=> bs!1016574 m!5445295))

(assert (=> b!4613668 d!1453283))

(declare-fun d!1453285 () Bool)

(declare-fun res!1932586 () Bool)

(declare-fun e!2877861 () Bool)

(assert (=> d!1453285 (=> res!1932586 e!2877861)))

(assert (=> d!1453285 (= res!1932586 ((_ is Nil!51338) lt!1768676))))

(assert (=> d!1453285 (= (forall!10724 lt!1768676 lambda!188820) e!2877861)))

(declare-fun b!4613718 () Bool)

(declare-fun e!2877862 () Bool)

(assert (=> b!4613718 (= e!2877861 e!2877862)))

(declare-fun res!1932587 () Bool)

(assert (=> b!4613718 (=> (not res!1932587) (not e!2877862))))

(declare-fun dynLambda!21452 (Int tuple2!52168) Bool)

(assert (=> b!4613718 (= res!1932587 (dynLambda!21452 lambda!188820 (h!57342 lt!1768676)))))

(declare-fun b!4613719 () Bool)

(assert (=> b!4613719 (= e!2877862 (forall!10724 (t!358458 lt!1768676) lambda!188820))))

(assert (= (and d!1453285 (not res!1932586)) b!4613718))

(assert (= (and b!4613718 res!1932587) b!4613719))

(declare-fun b_lambda!170493 () Bool)

(assert (=> (not b_lambda!170493) (not b!4613718)))

(declare-fun m!5445317 () Bool)

(assert (=> b!4613718 m!5445317))

(declare-fun m!5445319 () Bool)

(assert (=> b!4613719 m!5445319))

(assert (=> b!4613679 d!1453285))

(declare-fun b!4613746 () Bool)

(declare-fun e!2877877 () List!51461)

(assert (=> b!4613746 (= e!2877877 Nil!51337)))

(declare-fun b!4613745 () Bool)

(assert (=> b!4613745 (= e!2877877 (Cons!51337 (h!57341 oldBucket!40) (removePairForKey!1053 (t!358457 oldBucket!40) key!4968)))))

(declare-fun b!4613744 () Bool)

(declare-fun e!2877876 () List!51461)

(assert (=> b!4613744 (= e!2877876 e!2877877)))

(declare-fun c!789955 () Bool)

(assert (=> b!4613744 (= c!789955 ((_ is Cons!51337) oldBucket!40))))

(declare-fun b!4613743 () Bool)

(assert (=> b!4613743 (= e!2877876 (t!358457 oldBucket!40))))

(declare-fun d!1453289 () Bool)

(declare-fun lt!1768725 () List!51461)

(assert (=> d!1453289 (not (containsKey!2302 lt!1768725 key!4968))))

(assert (=> d!1453289 (= lt!1768725 e!2877876)))

(declare-fun c!789954 () Bool)

(assert (=> d!1453289 (= c!789954 (and ((_ is Cons!51337) oldBucket!40) (= (_1!29377 (h!57341 oldBucket!40)) key!4968)))))

(assert (=> d!1453289 (noDuplicateKeys!1430 oldBucket!40)))

(assert (=> d!1453289 (= (removePairForKey!1053 oldBucket!40 key!4968) lt!1768725)))

(assert (= (and d!1453289 c!789954) b!4613743))

(assert (= (and d!1453289 (not c!789954)) b!4613744))

(assert (= (and b!4613744 c!789955) b!4613745))

(assert (= (and b!4613744 (not c!789955)) b!4613746))

(declare-fun m!5445341 () Bool)

(assert (=> b!4613745 m!5445341))

(declare-fun m!5445349 () Bool)

(assert (=> d!1453289 m!5445349))

(assert (=> d!1453289 m!5445269))

(assert (=> b!4613669 d!1453289))

(declare-fun d!1453295 () Bool)

(declare-fun res!1932598 () Bool)

(declare-fun e!2877888 () Bool)

(assert (=> d!1453295 (=> res!1932598 e!2877888)))

(assert (=> d!1453295 (= res!1932598 (not ((_ is Cons!51337) newBucket!224)))))

(assert (=> d!1453295 (= (noDuplicateKeys!1430 newBucket!224) e!2877888)))

(declare-fun b!4613760 () Bool)

(declare-fun e!2877889 () Bool)

(assert (=> b!4613760 (= e!2877888 e!2877889)))

(declare-fun res!1932599 () Bool)

(assert (=> b!4613760 (=> (not res!1932599) (not e!2877889))))

(assert (=> b!4613760 (= res!1932599 (not (containsKey!2302 (t!358457 newBucket!224) (_1!29377 (h!57341 newBucket!224)))))))

(declare-fun b!4613761 () Bool)

(assert (=> b!4613761 (= e!2877889 (noDuplicateKeys!1430 (t!358457 newBucket!224)))))

(assert (= (and d!1453295 (not res!1932598)) b!4613760))

(assert (= (and b!4613760 res!1932599) b!4613761))

(declare-fun m!5445375 () Bool)

(assert (=> b!4613760 m!5445375))

(declare-fun m!5445377 () Bool)

(assert (=> b!4613761 m!5445377))

(assert (=> b!4613667 d!1453295))

(declare-fun d!1453301 () Bool)

(assert (=> d!1453301 (= (tail!8077 oldBucket!40) (t!358457 oldBucket!40))))

(assert (=> b!4613678 d!1453301))

(declare-fun d!1453303 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8710 (List!51461) (InoxSet tuple2!52166))

(assert (=> d!1453303 (= (eq!773 (addToMapMapFromBucket!891 (Cons!51337 lt!1768685 lt!1768687) (ListMap!4130 Nil!51337)) (+!1815 lt!1768682 lt!1768685)) (= (content!8710 (toList!4825 (addToMapMapFromBucket!891 (Cons!51337 lt!1768685 lt!1768687) (ListMap!4130 Nil!51337)))) (content!8710 (toList!4825 (+!1815 lt!1768682 lt!1768685)))))))

(declare-fun bs!1016577 () Bool)

(assert (= bs!1016577 d!1453303))

(declare-fun m!5445379 () Bool)

(assert (=> bs!1016577 m!5445379))

(declare-fun m!5445381 () Bool)

(assert (=> bs!1016577 m!5445381))

(assert (=> b!4613676 d!1453303))

(declare-fun d!1453305 () Bool)

(declare-fun e!2877904 () Bool)

(assert (=> d!1453305 e!2877904))

(declare-fun res!1932610 () Bool)

(assert (=> d!1453305 (=> (not res!1932610) (not e!2877904))))

(declare-fun lt!1768749 () ListMap!4129)

(assert (=> d!1453305 (= res!1932610 (contains!14304 lt!1768749 (_1!29377 (h!57341 oldBucket!40))))))

(declare-fun lt!1768751 () List!51461)

(assert (=> d!1453305 (= lt!1768749 (ListMap!4130 lt!1768751))))

(declare-fun lt!1768748 () Unit!109630)

(declare-fun lt!1768750 () Unit!109630)

(assert (=> d!1453305 (= lt!1768748 lt!1768750)))

(declare-datatypes ((Option!11462 0))(
  ( (None!11461) (Some!11461 (v!45527 V!12971)) )
))
(declare-fun getValueByKey!1376 (List!51461 K!12725) Option!11462)

(assert (=> d!1453305 (= (getValueByKey!1376 lt!1768751 (_1!29377 (h!57341 oldBucket!40))) (Some!11461 (_2!29377 (h!57341 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!811 (List!51461 K!12725 V!12971) Unit!109630)

(assert (=> d!1453305 (= lt!1768750 (lemmaContainsTupThenGetReturnValue!811 lt!1768751 (_1!29377 (h!57341 oldBucket!40)) (_2!29377 (h!57341 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!319 (List!51461 K!12725 V!12971) List!51461)

(assert (=> d!1453305 (= lt!1768751 (insertNoDuplicatedKeys!319 (toList!4825 lt!1768682) (_1!29377 (h!57341 oldBucket!40)) (_2!29377 (h!57341 oldBucket!40))))))

(assert (=> d!1453305 (= (+!1815 lt!1768682 (h!57341 oldBucket!40)) lt!1768749)))

(declare-fun b!4613784 () Bool)

(declare-fun res!1932611 () Bool)

(assert (=> b!4613784 (=> (not res!1932611) (not e!2877904))))

(assert (=> b!4613784 (= res!1932611 (= (getValueByKey!1376 (toList!4825 lt!1768749) (_1!29377 (h!57341 oldBucket!40))) (Some!11461 (_2!29377 (h!57341 oldBucket!40)))))))

(declare-fun b!4613785 () Bool)

(declare-fun contains!14306 (List!51461 tuple2!52166) Bool)

(assert (=> b!4613785 (= e!2877904 (contains!14306 (toList!4825 lt!1768749) (h!57341 oldBucket!40)))))

(assert (= (and d!1453305 res!1932610) b!4613784))

(assert (= (and b!4613784 res!1932611) b!4613785))

(declare-fun m!5445399 () Bool)

(assert (=> d!1453305 m!5445399))

(declare-fun m!5445401 () Bool)

(assert (=> d!1453305 m!5445401))

(declare-fun m!5445403 () Bool)

(assert (=> d!1453305 m!5445403))

(declare-fun m!5445405 () Bool)

(assert (=> d!1453305 m!5445405))

(declare-fun m!5445407 () Bool)

(assert (=> b!4613784 m!5445407))

(declare-fun m!5445409 () Bool)

(assert (=> b!4613785 m!5445409))

(assert (=> b!4613676 d!1453305))

(declare-fun d!1453313 () Bool)

(declare-fun e!2877905 () Bool)

(assert (=> d!1453313 e!2877905))

(declare-fun res!1932612 () Bool)

(assert (=> d!1453313 (=> (not res!1932612) (not e!2877905))))

(declare-fun lt!1768753 () ListMap!4129)

(assert (=> d!1453313 (= res!1932612 (contains!14304 lt!1768753 (_1!29377 lt!1768685)))))

(declare-fun lt!1768755 () List!51461)

(assert (=> d!1453313 (= lt!1768753 (ListMap!4130 lt!1768755))))

(declare-fun lt!1768752 () Unit!109630)

(declare-fun lt!1768754 () Unit!109630)

(assert (=> d!1453313 (= lt!1768752 lt!1768754)))

(assert (=> d!1453313 (= (getValueByKey!1376 lt!1768755 (_1!29377 lt!1768685)) (Some!11461 (_2!29377 lt!1768685)))))

(assert (=> d!1453313 (= lt!1768754 (lemmaContainsTupThenGetReturnValue!811 lt!1768755 (_1!29377 lt!1768685) (_2!29377 lt!1768685)))))

(assert (=> d!1453313 (= lt!1768755 (insertNoDuplicatedKeys!319 (toList!4825 lt!1768682) (_1!29377 lt!1768685) (_2!29377 lt!1768685)))))

(assert (=> d!1453313 (= (+!1815 lt!1768682 lt!1768685) lt!1768753)))

(declare-fun b!4613786 () Bool)

(declare-fun res!1932613 () Bool)

(assert (=> b!4613786 (=> (not res!1932613) (not e!2877905))))

(assert (=> b!4613786 (= res!1932613 (= (getValueByKey!1376 (toList!4825 lt!1768753) (_1!29377 lt!1768685)) (Some!11461 (_2!29377 lt!1768685))))))

(declare-fun b!4613787 () Bool)

(assert (=> b!4613787 (= e!2877905 (contains!14306 (toList!4825 lt!1768753) lt!1768685))))

(assert (= (and d!1453313 res!1932612) b!4613786))

(assert (= (and b!4613786 res!1932613) b!4613787))

(declare-fun m!5445411 () Bool)

(assert (=> d!1453313 m!5445411))

(declare-fun m!5445413 () Bool)

(assert (=> d!1453313 m!5445413))

(declare-fun m!5445415 () Bool)

(assert (=> d!1453313 m!5445415))

(declare-fun m!5445417 () Bool)

(assert (=> d!1453313 m!5445417))

(declare-fun m!5445419 () Bool)

(assert (=> b!4613786 m!5445419))

(declare-fun m!5445421 () Bool)

(assert (=> b!4613787 m!5445421))

(assert (=> b!4613676 d!1453313))

(declare-fun d!1453315 () Bool)

(assert (=> d!1453315 (= (head!9590 oldBucket!40) (h!57341 oldBucket!40))))

(assert (=> b!4613676 d!1453315))

(declare-fun bs!1016642 () Bool)

(declare-fun b!4613852 () Bool)

(assert (= bs!1016642 (and b!4613852 d!1453283)))

(declare-fun lambda!188904 () Int)

(assert (=> bs!1016642 (not (= lambda!188904 lambda!188823))))

(assert (=> b!4613852 true))

(declare-fun bs!1016649 () Bool)

(declare-fun b!4613853 () Bool)

(assert (= bs!1016649 (and b!4613853 d!1453283)))

(declare-fun lambda!188906 () Int)

(assert (=> bs!1016649 (not (= lambda!188906 lambda!188823))))

(declare-fun bs!1016650 () Bool)

(assert (= bs!1016650 (and b!4613853 b!4613852)))

(assert (=> bs!1016650 (= lambda!188906 lambda!188904)))

(assert (=> b!4613853 true))

(declare-fun lambda!188907 () Int)

(assert (=> bs!1016649 (not (= lambda!188907 lambda!188823))))

(declare-fun lt!1768935 () ListMap!4129)

(assert (=> bs!1016650 (= (= lt!1768935 (ListMap!4130 Nil!51337)) (= lambda!188907 lambda!188904))))

(assert (=> b!4613853 (= (= lt!1768935 (ListMap!4130 Nil!51337)) (= lambda!188907 lambda!188906))))

(assert (=> b!4613853 true))

(declare-fun bs!1016654 () Bool)

(declare-fun d!1453317 () Bool)

(assert (= bs!1016654 (and d!1453317 d!1453283)))

(declare-fun lambda!188908 () Int)

(assert (=> bs!1016654 (not (= lambda!188908 lambda!188823))))

(declare-fun bs!1016655 () Bool)

(assert (= bs!1016655 (and d!1453317 b!4613852)))

(declare-fun lt!1768930 () ListMap!4129)

(assert (=> bs!1016655 (= (= lt!1768930 (ListMap!4130 Nil!51337)) (= lambda!188908 lambda!188904))))

(declare-fun bs!1016656 () Bool)

(assert (= bs!1016656 (and d!1453317 b!4613853)))

(assert (=> bs!1016656 (= (= lt!1768930 (ListMap!4130 Nil!51337)) (= lambda!188908 lambda!188906))))

(assert (=> bs!1016656 (= (= lt!1768930 lt!1768935) (= lambda!188908 lambda!188907))))

(assert (=> d!1453317 true))

(declare-fun b!4613851 () Bool)

(declare-fun res!1932653 () Bool)

(declare-fun e!2877945 () Bool)

(assert (=> b!4613851 (=> (not res!1932653) (not e!2877945))))

(assert (=> b!4613851 (= res!1932653 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) lambda!188908))))

(declare-fun c!789975 () Bool)

(declare-fun bm!321597 () Bool)

(declare-fun call!321603 () Bool)

(assert (=> bm!321597 (= call!321603 (forall!10726 (ite c!789975 (toList!4825 (ListMap!4130 Nil!51337)) (t!358457 oldBucket!40)) (ite c!789975 lambda!188904 lambda!188907)))))

(declare-fun e!2877943 () ListMap!4129)

(assert (=> b!4613852 (= e!2877943 (ListMap!4130 Nil!51337))))

(declare-fun lt!1768934 () Unit!109630)

(declare-fun call!321602 () Unit!109630)

(assert (=> b!4613852 (= lt!1768934 call!321602)))

(declare-fun call!321604 () Bool)

(assert (=> b!4613852 call!321604))

(declare-fun lt!1768932 () Unit!109630)

(assert (=> b!4613852 (= lt!1768932 lt!1768934)))

(assert (=> b!4613852 call!321603))

(declare-fun lt!1768939 () Unit!109630)

(declare-fun Unit!109660 () Unit!109630)

(assert (=> b!4613852 (= lt!1768939 Unit!109660)))

(assert (=> d!1453317 e!2877945))

(declare-fun res!1932652 () Bool)

(assert (=> d!1453317 (=> (not res!1932652) (not e!2877945))))

(assert (=> d!1453317 (= res!1932652 (forall!10726 oldBucket!40 lambda!188908))))

(assert (=> d!1453317 (= lt!1768930 e!2877943)))

(assert (=> d!1453317 (= c!789975 ((_ is Nil!51337) oldBucket!40))))

(assert (=> d!1453317 (noDuplicateKeys!1430 oldBucket!40)))

(assert (=> d!1453317 (= (addToMapMapFromBucket!891 oldBucket!40 (ListMap!4130 Nil!51337)) lt!1768930)))

(declare-fun bm!321598 () Bool)

(assert (=> bm!321598 (= call!321604 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) (ite c!789975 lambda!188904 lambda!188907)))))

(assert (=> b!4613853 (= e!2877943 lt!1768935)))

(declare-fun lt!1768933 () ListMap!4129)

(assert (=> b!4613853 (= lt!1768933 (+!1815 (ListMap!4130 Nil!51337) (h!57341 oldBucket!40)))))

(assert (=> b!4613853 (= lt!1768935 (addToMapMapFromBucket!891 (t!358457 oldBucket!40) (+!1815 (ListMap!4130 Nil!51337) (h!57341 oldBucket!40))))))

(declare-fun lt!1768931 () Unit!109630)

(assert (=> b!4613853 (= lt!1768931 call!321602)))

(assert (=> b!4613853 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) lambda!188906)))

(declare-fun lt!1768940 () Unit!109630)

(assert (=> b!4613853 (= lt!1768940 lt!1768931)))

(assert (=> b!4613853 (forall!10726 (toList!4825 lt!1768933) lambda!188907)))

(declare-fun lt!1768942 () Unit!109630)

(declare-fun Unit!109661 () Unit!109630)

(assert (=> b!4613853 (= lt!1768942 Unit!109661)))

(assert (=> b!4613853 call!321603))

(declare-fun lt!1768936 () Unit!109630)

(declare-fun Unit!109662 () Unit!109630)

(assert (=> b!4613853 (= lt!1768936 Unit!109662)))

(declare-fun lt!1768938 () Unit!109630)

(declare-fun Unit!109663 () Unit!109630)

(assert (=> b!4613853 (= lt!1768938 Unit!109663)))

(declare-fun lt!1768944 () Unit!109630)

(declare-fun forallContained!2953 (List!51461 Int tuple2!52166) Unit!109630)

(assert (=> b!4613853 (= lt!1768944 (forallContained!2953 (toList!4825 lt!1768933) lambda!188907 (h!57341 oldBucket!40)))))

(assert (=> b!4613853 (contains!14304 lt!1768933 (_1!29377 (h!57341 oldBucket!40)))))

(declare-fun lt!1768943 () Unit!109630)

(declare-fun Unit!109664 () Unit!109630)

(assert (=> b!4613853 (= lt!1768943 Unit!109664)))

(assert (=> b!4613853 (contains!14304 lt!1768935 (_1!29377 (h!57341 oldBucket!40)))))

(declare-fun lt!1768945 () Unit!109630)

(declare-fun Unit!109665 () Unit!109630)

(assert (=> b!4613853 (= lt!1768945 Unit!109665)))

(assert (=> b!4613853 (forall!10726 oldBucket!40 lambda!188907)))

(declare-fun lt!1768941 () Unit!109630)

(declare-fun Unit!109666 () Unit!109630)

(assert (=> b!4613853 (= lt!1768941 Unit!109666)))

(assert (=> b!4613853 (forall!10726 (toList!4825 lt!1768933) lambda!188907)))

(declare-fun lt!1768927 () Unit!109630)

(declare-fun Unit!109667 () Unit!109630)

(assert (=> b!4613853 (= lt!1768927 Unit!109667)))

(declare-fun lt!1768928 () Unit!109630)

(declare-fun Unit!109668 () Unit!109630)

(assert (=> b!4613853 (= lt!1768928 Unit!109668)))

(declare-fun lt!1768926 () Unit!109630)

(declare-fun addForallContainsKeyThenBeforeAdding!460 (ListMap!4129 ListMap!4129 K!12725 V!12971) Unit!109630)

(assert (=> b!4613853 (= lt!1768926 (addForallContainsKeyThenBeforeAdding!460 (ListMap!4130 Nil!51337) lt!1768935 (_1!29377 (h!57341 oldBucket!40)) (_2!29377 (h!57341 oldBucket!40))))))

(assert (=> b!4613853 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) lambda!188907)))

(declare-fun lt!1768929 () Unit!109630)

(assert (=> b!4613853 (= lt!1768929 lt!1768926)))

(assert (=> b!4613853 call!321604))

(declare-fun lt!1768937 () Unit!109630)

(declare-fun Unit!109669 () Unit!109630)

(assert (=> b!4613853 (= lt!1768937 Unit!109669)))

(declare-fun res!1932651 () Bool)

(assert (=> b!4613853 (= res!1932651 (forall!10726 oldBucket!40 lambda!188907))))

(declare-fun e!2877944 () Bool)

(assert (=> b!4613853 (=> (not res!1932651) (not e!2877944))))

(assert (=> b!4613853 e!2877944))

(declare-fun lt!1768925 () Unit!109630)

(declare-fun Unit!109670 () Unit!109630)

(assert (=> b!4613853 (= lt!1768925 Unit!109670)))

(declare-fun bm!321599 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!461 (ListMap!4129) Unit!109630)

(assert (=> bm!321599 (= call!321602 (lemmaContainsAllItsOwnKeys!461 (ListMap!4130 Nil!51337)))))

(declare-fun b!4613854 () Bool)

(declare-fun invariantList!1159 (List!51461) Bool)

(assert (=> b!4613854 (= e!2877945 (invariantList!1159 (toList!4825 lt!1768930)))))

(declare-fun b!4613855 () Bool)

(assert (=> b!4613855 (= e!2877944 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) lambda!188907))))

(assert (= (and d!1453317 c!789975) b!4613852))

(assert (= (and d!1453317 (not c!789975)) b!4613853))

(assert (= (and b!4613853 res!1932651) b!4613855))

(assert (= (or b!4613852 b!4613853) bm!321599))

(assert (= (or b!4613852 b!4613853) bm!321597))

(assert (= (or b!4613852 b!4613853) bm!321598))

(assert (= (and d!1453317 res!1932652) b!4613851))

(assert (= (and b!4613851 res!1932653) b!4613854))

(declare-fun m!5445601 () Bool)

(assert (=> d!1453317 m!5445601))

(assert (=> d!1453317 m!5445269))

(declare-fun m!5445603 () Bool)

(assert (=> bm!321597 m!5445603))

(declare-fun m!5445605 () Bool)

(assert (=> b!4613853 m!5445605))

(assert (=> b!4613853 m!5445605))

(declare-fun m!5445607 () Bool)

(assert (=> b!4613853 m!5445607))

(declare-fun m!5445609 () Bool)

(assert (=> b!4613853 m!5445609))

(declare-fun m!5445611 () Bool)

(assert (=> b!4613853 m!5445611))

(assert (=> b!4613853 m!5445611))

(declare-fun m!5445613 () Bool)

(assert (=> b!4613853 m!5445613))

(declare-fun m!5445615 () Bool)

(assert (=> b!4613853 m!5445615))

(declare-fun m!5445617 () Bool)

(assert (=> b!4613853 m!5445617))

(declare-fun m!5445619 () Bool)

(assert (=> b!4613853 m!5445619))

(assert (=> b!4613853 m!5445615))

(declare-fun m!5445621 () Bool)

(assert (=> b!4613853 m!5445621))

(declare-fun m!5445623 () Bool)

(assert (=> b!4613853 m!5445623))

(declare-fun m!5445625 () Bool)

(assert (=> bm!321599 m!5445625))

(declare-fun m!5445627 () Bool)

(assert (=> bm!321598 m!5445627))

(declare-fun m!5445629 () Bool)

(assert (=> b!4613851 m!5445629))

(assert (=> b!4613855 m!5445623))

(declare-fun m!5445631 () Bool)

(assert (=> b!4613854 m!5445631))

(assert (=> b!4613676 d!1453317))

(declare-fun bs!1016659 () Bool)

(declare-fun b!4613861 () Bool)

(assert (= bs!1016659 (and b!4613861 d!1453317)))

(declare-fun lambda!188909 () Int)

(assert (=> bs!1016659 (= (= (ListMap!4130 Nil!51337) lt!1768930) (= lambda!188909 lambda!188908))))

(declare-fun bs!1016660 () Bool)

(assert (= bs!1016660 (and b!4613861 b!4613853)))

(assert (=> bs!1016660 (= (= (ListMap!4130 Nil!51337) lt!1768935) (= lambda!188909 lambda!188907))))

(assert (=> bs!1016660 (= lambda!188909 lambda!188906)))

(declare-fun bs!1016661 () Bool)

(assert (= bs!1016661 (and b!4613861 b!4613852)))

(assert (=> bs!1016661 (= lambda!188909 lambda!188904)))

(declare-fun bs!1016662 () Bool)

(assert (= bs!1016662 (and b!4613861 d!1453283)))

(assert (=> bs!1016662 (not (= lambda!188909 lambda!188823))))

(assert (=> b!4613861 true))

(declare-fun bs!1016663 () Bool)

(declare-fun b!4613862 () Bool)

(assert (= bs!1016663 (and b!4613862 d!1453317)))

(declare-fun lambda!188910 () Int)

(assert (=> bs!1016663 (= (= (ListMap!4130 Nil!51337) lt!1768930) (= lambda!188910 lambda!188908))))

(declare-fun bs!1016664 () Bool)

(assert (= bs!1016664 (and b!4613862 b!4613853)))

(assert (=> bs!1016664 (= (= (ListMap!4130 Nil!51337) lt!1768935) (= lambda!188910 lambda!188907))))

(assert (=> bs!1016664 (= lambda!188910 lambda!188906)))

(declare-fun bs!1016665 () Bool)

(assert (= bs!1016665 (and b!4613862 b!4613852)))

(assert (=> bs!1016665 (= lambda!188910 lambda!188904)))

(declare-fun bs!1016666 () Bool)

(assert (= bs!1016666 (and b!4613862 b!4613861)))

(assert (=> bs!1016666 (= lambda!188910 lambda!188909)))

(declare-fun bs!1016667 () Bool)

(assert (= bs!1016667 (and b!4613862 d!1453283)))

(assert (=> bs!1016667 (not (= lambda!188910 lambda!188823))))

(assert (=> b!4613862 true))

(declare-fun lambda!188911 () Int)

(declare-fun lt!1768956 () ListMap!4129)

(assert (=> bs!1016663 (= (= lt!1768956 lt!1768930) (= lambda!188911 lambda!188908))))

(assert (=> bs!1016664 (= (= lt!1768956 (ListMap!4130 Nil!51337)) (= lambda!188911 lambda!188906))))

(assert (=> bs!1016665 (= (= lt!1768956 (ListMap!4130 Nil!51337)) (= lambda!188911 lambda!188904))))

(assert (=> bs!1016666 (= (= lt!1768956 (ListMap!4130 Nil!51337)) (= lambda!188911 lambda!188909))))

(assert (=> bs!1016667 (not (= lambda!188911 lambda!188823))))

(assert (=> bs!1016664 (= (= lt!1768956 lt!1768935) (= lambda!188911 lambda!188907))))

(assert (=> b!4613862 (= (= lt!1768956 (ListMap!4130 Nil!51337)) (= lambda!188911 lambda!188910))))

(assert (=> b!4613862 true))

(declare-fun bs!1016668 () Bool)

(declare-fun d!1453351 () Bool)

(assert (= bs!1016668 (and d!1453351 d!1453317)))

(declare-fun lt!1768951 () ListMap!4129)

(declare-fun lambda!188912 () Int)

(assert (=> bs!1016668 (= (= lt!1768951 lt!1768930) (= lambda!188912 lambda!188908))))

(declare-fun bs!1016669 () Bool)

(assert (= bs!1016669 (and d!1453351 b!4613853)))

(assert (=> bs!1016669 (= (= lt!1768951 (ListMap!4130 Nil!51337)) (= lambda!188912 lambda!188906))))

(declare-fun bs!1016670 () Bool)

(assert (= bs!1016670 (and d!1453351 b!4613862)))

(assert (=> bs!1016670 (= (= lt!1768951 lt!1768956) (= lambda!188912 lambda!188911))))

(declare-fun bs!1016671 () Bool)

(assert (= bs!1016671 (and d!1453351 b!4613852)))

(assert (=> bs!1016671 (= (= lt!1768951 (ListMap!4130 Nil!51337)) (= lambda!188912 lambda!188904))))

(declare-fun bs!1016672 () Bool)

(assert (= bs!1016672 (and d!1453351 b!4613861)))

(assert (=> bs!1016672 (= (= lt!1768951 (ListMap!4130 Nil!51337)) (= lambda!188912 lambda!188909))))

(declare-fun bs!1016673 () Bool)

(assert (= bs!1016673 (and d!1453351 d!1453283)))

(assert (=> bs!1016673 (not (= lambda!188912 lambda!188823))))

(assert (=> bs!1016669 (= (= lt!1768951 lt!1768935) (= lambda!188912 lambda!188907))))

(assert (=> bs!1016670 (= (= lt!1768951 (ListMap!4130 Nil!51337)) (= lambda!188912 lambda!188910))))

(assert (=> d!1453351 true))

(declare-fun b!4613860 () Bool)

(declare-fun res!1932658 () Bool)

(declare-fun e!2877950 () Bool)

(assert (=> b!4613860 (=> (not res!1932658) (not e!2877950))))

(assert (=> b!4613860 (= res!1932658 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) lambda!188912))))

(declare-fun bm!321600 () Bool)

(declare-fun c!789976 () Bool)

(declare-fun call!321606 () Bool)

(assert (=> bm!321600 (= call!321606 (forall!10726 (ite c!789976 (toList!4825 (ListMap!4130 Nil!51337)) (t!358457 (Cons!51337 lt!1768685 lt!1768687))) (ite c!789976 lambda!188909 lambda!188911)))))

(declare-fun e!2877948 () ListMap!4129)

(assert (=> b!4613861 (= e!2877948 (ListMap!4130 Nil!51337))))

(declare-fun lt!1768955 () Unit!109630)

(declare-fun call!321605 () Unit!109630)

(assert (=> b!4613861 (= lt!1768955 call!321605)))

(declare-fun call!321607 () Bool)

(assert (=> b!4613861 call!321607))

(declare-fun lt!1768953 () Unit!109630)

(assert (=> b!4613861 (= lt!1768953 lt!1768955)))

(assert (=> b!4613861 call!321606))

(declare-fun lt!1768960 () Unit!109630)

(declare-fun Unit!109671 () Unit!109630)

(assert (=> b!4613861 (= lt!1768960 Unit!109671)))

(assert (=> d!1453351 e!2877950))

(declare-fun res!1932657 () Bool)

(assert (=> d!1453351 (=> (not res!1932657) (not e!2877950))))

(assert (=> d!1453351 (= res!1932657 (forall!10726 (Cons!51337 lt!1768685 lt!1768687) lambda!188912))))

(assert (=> d!1453351 (= lt!1768951 e!2877948)))

(assert (=> d!1453351 (= c!789976 ((_ is Nil!51337) (Cons!51337 lt!1768685 lt!1768687)))))

(assert (=> d!1453351 (noDuplicateKeys!1430 (Cons!51337 lt!1768685 lt!1768687))))

(assert (=> d!1453351 (= (addToMapMapFromBucket!891 (Cons!51337 lt!1768685 lt!1768687) (ListMap!4130 Nil!51337)) lt!1768951)))

(declare-fun bm!321601 () Bool)

(assert (=> bm!321601 (= call!321607 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) (ite c!789976 lambda!188909 lambda!188911)))))

(assert (=> b!4613862 (= e!2877948 lt!1768956)))

(declare-fun lt!1768954 () ListMap!4129)

(assert (=> b!4613862 (= lt!1768954 (+!1815 (ListMap!4130 Nil!51337) (h!57341 (Cons!51337 lt!1768685 lt!1768687))))))

(assert (=> b!4613862 (= lt!1768956 (addToMapMapFromBucket!891 (t!358457 (Cons!51337 lt!1768685 lt!1768687)) (+!1815 (ListMap!4130 Nil!51337) (h!57341 (Cons!51337 lt!1768685 lt!1768687)))))))

(declare-fun lt!1768952 () Unit!109630)

(assert (=> b!4613862 (= lt!1768952 call!321605)))

(assert (=> b!4613862 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) lambda!188910)))

(declare-fun lt!1768961 () Unit!109630)

(assert (=> b!4613862 (= lt!1768961 lt!1768952)))

(assert (=> b!4613862 (forall!10726 (toList!4825 lt!1768954) lambda!188911)))

(declare-fun lt!1768963 () Unit!109630)

(declare-fun Unit!109672 () Unit!109630)

(assert (=> b!4613862 (= lt!1768963 Unit!109672)))

(assert (=> b!4613862 call!321606))

(declare-fun lt!1768957 () Unit!109630)

(declare-fun Unit!109673 () Unit!109630)

(assert (=> b!4613862 (= lt!1768957 Unit!109673)))

(declare-fun lt!1768959 () Unit!109630)

(declare-fun Unit!109674 () Unit!109630)

(assert (=> b!4613862 (= lt!1768959 Unit!109674)))

(declare-fun lt!1768965 () Unit!109630)

(assert (=> b!4613862 (= lt!1768965 (forallContained!2953 (toList!4825 lt!1768954) lambda!188911 (h!57341 (Cons!51337 lt!1768685 lt!1768687))))))

(assert (=> b!4613862 (contains!14304 lt!1768954 (_1!29377 (h!57341 (Cons!51337 lt!1768685 lt!1768687))))))

(declare-fun lt!1768964 () Unit!109630)

(declare-fun Unit!109675 () Unit!109630)

(assert (=> b!4613862 (= lt!1768964 Unit!109675)))

(assert (=> b!4613862 (contains!14304 lt!1768956 (_1!29377 (h!57341 (Cons!51337 lt!1768685 lt!1768687))))))

(declare-fun lt!1768966 () Unit!109630)

(declare-fun Unit!109676 () Unit!109630)

(assert (=> b!4613862 (= lt!1768966 Unit!109676)))

(assert (=> b!4613862 (forall!10726 (Cons!51337 lt!1768685 lt!1768687) lambda!188911)))

(declare-fun lt!1768962 () Unit!109630)

(declare-fun Unit!109677 () Unit!109630)

(assert (=> b!4613862 (= lt!1768962 Unit!109677)))

(assert (=> b!4613862 (forall!10726 (toList!4825 lt!1768954) lambda!188911)))

(declare-fun lt!1768948 () Unit!109630)

(declare-fun Unit!109678 () Unit!109630)

(assert (=> b!4613862 (= lt!1768948 Unit!109678)))

(declare-fun lt!1768949 () Unit!109630)

(declare-fun Unit!109679 () Unit!109630)

(assert (=> b!4613862 (= lt!1768949 Unit!109679)))

(declare-fun lt!1768947 () Unit!109630)

(assert (=> b!4613862 (= lt!1768947 (addForallContainsKeyThenBeforeAdding!460 (ListMap!4130 Nil!51337) lt!1768956 (_1!29377 (h!57341 (Cons!51337 lt!1768685 lt!1768687))) (_2!29377 (h!57341 (Cons!51337 lt!1768685 lt!1768687)))))))

(assert (=> b!4613862 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) lambda!188911)))

(declare-fun lt!1768950 () Unit!109630)

(assert (=> b!4613862 (= lt!1768950 lt!1768947)))

(assert (=> b!4613862 call!321607))

(declare-fun lt!1768958 () Unit!109630)

(declare-fun Unit!109680 () Unit!109630)

(assert (=> b!4613862 (= lt!1768958 Unit!109680)))

(declare-fun res!1932656 () Bool)

(assert (=> b!4613862 (= res!1932656 (forall!10726 (Cons!51337 lt!1768685 lt!1768687) lambda!188911))))

(declare-fun e!2877949 () Bool)

(assert (=> b!4613862 (=> (not res!1932656) (not e!2877949))))

(assert (=> b!4613862 e!2877949))

(declare-fun lt!1768946 () Unit!109630)

(declare-fun Unit!109681 () Unit!109630)

(assert (=> b!4613862 (= lt!1768946 Unit!109681)))

(declare-fun bm!321602 () Bool)

(assert (=> bm!321602 (= call!321605 (lemmaContainsAllItsOwnKeys!461 (ListMap!4130 Nil!51337)))))

(declare-fun b!4613863 () Bool)

(assert (=> b!4613863 (= e!2877950 (invariantList!1159 (toList!4825 lt!1768951)))))

(declare-fun b!4613864 () Bool)

(assert (=> b!4613864 (= e!2877949 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) lambda!188911))))

(assert (= (and d!1453351 c!789976) b!4613861))

(assert (= (and d!1453351 (not c!789976)) b!4613862))

(assert (= (and b!4613862 res!1932656) b!4613864))

(assert (= (or b!4613861 b!4613862) bm!321602))

(assert (= (or b!4613861 b!4613862) bm!321600))

(assert (= (or b!4613861 b!4613862) bm!321601))

(assert (= (and d!1453351 res!1932657) b!4613860))

(assert (= (and b!4613860 res!1932658) b!4613863))

(declare-fun m!5445633 () Bool)

(assert (=> d!1453351 m!5445633))

(declare-fun m!5445635 () Bool)

(assert (=> d!1453351 m!5445635))

(declare-fun m!5445637 () Bool)

(assert (=> bm!321600 m!5445637))

(declare-fun m!5445639 () Bool)

(assert (=> b!4613862 m!5445639))

(assert (=> b!4613862 m!5445639))

(declare-fun m!5445641 () Bool)

(assert (=> b!4613862 m!5445641))

(declare-fun m!5445643 () Bool)

(assert (=> b!4613862 m!5445643))

(declare-fun m!5445645 () Bool)

(assert (=> b!4613862 m!5445645))

(assert (=> b!4613862 m!5445645))

(declare-fun m!5445647 () Bool)

(assert (=> b!4613862 m!5445647))

(declare-fun m!5445649 () Bool)

(assert (=> b!4613862 m!5445649))

(declare-fun m!5445651 () Bool)

(assert (=> b!4613862 m!5445651))

(declare-fun m!5445653 () Bool)

(assert (=> b!4613862 m!5445653))

(assert (=> b!4613862 m!5445649))

(declare-fun m!5445655 () Bool)

(assert (=> b!4613862 m!5445655))

(declare-fun m!5445657 () Bool)

(assert (=> b!4613862 m!5445657))

(assert (=> bm!321602 m!5445625))

(declare-fun m!5445659 () Bool)

(assert (=> bm!321601 m!5445659))

(declare-fun m!5445661 () Bool)

(assert (=> b!4613860 m!5445661))

(assert (=> b!4613864 m!5445657))

(declare-fun m!5445663 () Bool)

(assert (=> b!4613863 m!5445663))

(assert (=> b!4613676 d!1453351))

(declare-fun d!1453353 () Bool)

(assert (=> d!1453353 (eq!773 (addToMapMapFromBucket!891 (Cons!51337 lt!1768685 lt!1768687) (ListMap!4130 Nil!51337)) (+!1815 (addToMapMapFromBucket!891 lt!1768687 (ListMap!4130 Nil!51337)) lt!1768685))))

(declare-fun lt!1768993 () Unit!109630)

(declare-fun choose!31054 (tuple2!52166 List!51461 ListMap!4129) Unit!109630)

(assert (=> d!1453353 (= lt!1768993 (choose!31054 lt!1768685 lt!1768687 (ListMap!4130 Nil!51337)))))

(assert (=> d!1453353 (noDuplicateKeys!1430 lt!1768687)))

(assert (=> d!1453353 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!24 lt!1768685 lt!1768687 (ListMap!4130 Nil!51337)) lt!1768993)))

(declare-fun bs!1016711 () Bool)

(assert (= bs!1016711 d!1453353))

(assert (=> bs!1016711 m!5445275))

(declare-fun m!5445671 () Bool)

(assert (=> bs!1016711 m!5445671))

(assert (=> bs!1016711 m!5445255))

(assert (=> bs!1016711 m!5445255))

(declare-fun m!5445673 () Bool)

(assert (=> bs!1016711 m!5445673))

(declare-fun m!5445675 () Bool)

(assert (=> bs!1016711 m!5445675))

(declare-fun m!5445677 () Bool)

(assert (=> bs!1016711 m!5445677))

(assert (=> bs!1016711 m!5445275))

(assert (=> bs!1016711 m!5445673))

(assert (=> b!4613676 d!1453353))

(declare-fun d!1453359 () Bool)

(assert (=> d!1453359 (= (eq!773 lt!1768683 (addToMapMapFromBucket!891 oldBucket!40 (ListMap!4130 Nil!51337))) (= (content!8710 (toList!4825 lt!1768683)) (content!8710 (toList!4825 (addToMapMapFromBucket!891 oldBucket!40 (ListMap!4130 Nil!51337))))))))

(declare-fun bs!1016712 () Bool)

(assert (= bs!1016712 d!1453359))

(declare-fun m!5445679 () Bool)

(assert (=> bs!1016712 m!5445679))

(declare-fun m!5445681 () Bool)

(assert (=> bs!1016712 m!5445681))

(assert (=> b!4613676 d!1453359))

(declare-fun d!1453361 () Bool)

(declare-fun e!2877961 () Bool)

(assert (=> d!1453361 e!2877961))

(declare-fun res!1932671 () Bool)

(assert (=> d!1453361 (=> (not res!1932671) (not e!2877961))))

(declare-fun lt!1769025 () ListMap!4129)

(assert (=> d!1453361 (= res!1932671 (not (contains!14304 lt!1769025 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!234 (List!51461 K!12725) List!51461)

(assert (=> d!1453361 (= lt!1769025 (ListMap!4130 (removePresrvNoDuplicatedKeys!234 (toList!4825 lt!1768683) key!4968)))))

(assert (=> d!1453361 (= (-!520 lt!1768683 key!4968) lt!1769025)))

(declare-fun b!4613881 () Bool)

(declare-datatypes ((List!51464 0))(
  ( (Nil!51340) (Cons!51340 (h!57346 K!12725) (t!358462 List!51464)) )
))
(declare-fun content!8712 (List!51464) (InoxSet K!12725))

(declare-fun keys!18033 (ListMap!4129) List!51464)

(assert (=> b!4613881 (= e!2877961 (= ((_ map and) (content!8712 (keys!18033 lt!1768683)) ((_ map not) (store ((as const (Array K!12725 Bool)) false) key!4968 true))) (content!8712 (keys!18033 lt!1769025))))))

(assert (= (and d!1453361 res!1932671) b!4613881))

(declare-fun m!5445737 () Bool)

(assert (=> d!1453361 m!5445737))

(declare-fun m!5445739 () Bool)

(assert (=> d!1453361 m!5445739))

(declare-fun m!5445741 () Bool)

(assert (=> b!4613881 m!5445741))

(declare-fun m!5445743 () Bool)

(assert (=> b!4613881 m!5445743))

(declare-fun m!5445745 () Bool)

(assert (=> b!4613881 m!5445745))

(assert (=> b!4613881 m!5445745))

(declare-fun m!5445747 () Bool)

(assert (=> b!4613881 m!5445747))

(declare-fun m!5445749 () Bool)

(assert (=> b!4613881 m!5445749))

(assert (=> b!4613881 m!5445741))

(assert (=> b!4613666 d!1453361))

(declare-fun d!1453369 () Bool)

(declare-fun e!2877962 () Bool)

(assert (=> d!1453369 e!2877962))

(declare-fun res!1932672 () Bool)

(assert (=> d!1453369 (=> (not res!1932672) (not e!2877962))))

(declare-fun lt!1769026 () ListMap!4129)

(assert (=> d!1453369 (= res!1932672 (not (contains!14304 lt!1769026 key!4968)))))

(assert (=> d!1453369 (= lt!1769026 (ListMap!4130 (removePresrvNoDuplicatedKeys!234 (toList!4825 (+!1815 lt!1768682 (tuple2!52167 key!4968 (_2!29377 (h!57341 oldBucket!40))))) key!4968)))))

(assert (=> d!1453369 (= (-!520 (+!1815 lt!1768682 (tuple2!52167 key!4968 (_2!29377 (h!57341 oldBucket!40)))) key!4968) lt!1769026)))

(declare-fun b!4613882 () Bool)

(assert (=> b!4613882 (= e!2877962 (= ((_ map and) (content!8712 (keys!18033 (+!1815 lt!1768682 (tuple2!52167 key!4968 (_2!29377 (h!57341 oldBucket!40)))))) ((_ map not) (store ((as const (Array K!12725 Bool)) false) key!4968 true))) (content!8712 (keys!18033 lt!1769026))))))

(assert (= (and d!1453369 res!1932672) b!4613882))

(declare-fun m!5445751 () Bool)

(assert (=> d!1453369 m!5445751))

(declare-fun m!5445753 () Bool)

(assert (=> d!1453369 m!5445753))

(declare-fun m!5445755 () Bool)

(assert (=> b!4613882 m!5445755))

(declare-fun m!5445757 () Bool)

(assert (=> b!4613882 m!5445757))

(declare-fun m!5445759 () Bool)

(assert (=> b!4613882 m!5445759))

(assert (=> b!4613882 m!5445759))

(declare-fun m!5445761 () Bool)

(assert (=> b!4613882 m!5445761))

(assert (=> b!4613882 m!5445749))

(assert (=> b!4613882 m!5445233))

(assert (=> b!4613882 m!5445755))

(assert (=> b!4613666 d!1453369))

(declare-fun d!1453371 () Bool)

(declare-fun e!2877963 () Bool)

(assert (=> d!1453371 e!2877963))

(declare-fun res!1932673 () Bool)

(assert (=> d!1453371 (=> (not res!1932673) (not e!2877963))))

(declare-fun lt!1769028 () ListMap!4129)

(assert (=> d!1453371 (= res!1932673 (contains!14304 lt!1769028 (_1!29377 (tuple2!52167 key!4968 (_2!29377 (h!57341 oldBucket!40))))))))

(declare-fun lt!1769030 () List!51461)

(assert (=> d!1453371 (= lt!1769028 (ListMap!4130 lt!1769030))))

(declare-fun lt!1769027 () Unit!109630)

(declare-fun lt!1769029 () Unit!109630)

(assert (=> d!1453371 (= lt!1769027 lt!1769029)))

(assert (=> d!1453371 (= (getValueByKey!1376 lt!1769030 (_1!29377 (tuple2!52167 key!4968 (_2!29377 (h!57341 oldBucket!40))))) (Some!11461 (_2!29377 (tuple2!52167 key!4968 (_2!29377 (h!57341 oldBucket!40))))))))

(assert (=> d!1453371 (= lt!1769029 (lemmaContainsTupThenGetReturnValue!811 lt!1769030 (_1!29377 (tuple2!52167 key!4968 (_2!29377 (h!57341 oldBucket!40)))) (_2!29377 (tuple2!52167 key!4968 (_2!29377 (h!57341 oldBucket!40))))))))

(assert (=> d!1453371 (= lt!1769030 (insertNoDuplicatedKeys!319 (toList!4825 lt!1768682) (_1!29377 (tuple2!52167 key!4968 (_2!29377 (h!57341 oldBucket!40)))) (_2!29377 (tuple2!52167 key!4968 (_2!29377 (h!57341 oldBucket!40))))))))

(assert (=> d!1453371 (= (+!1815 lt!1768682 (tuple2!52167 key!4968 (_2!29377 (h!57341 oldBucket!40)))) lt!1769028)))

(declare-fun b!4613883 () Bool)

(declare-fun res!1932674 () Bool)

(assert (=> b!4613883 (=> (not res!1932674) (not e!2877963))))

(assert (=> b!4613883 (= res!1932674 (= (getValueByKey!1376 (toList!4825 lt!1769028) (_1!29377 (tuple2!52167 key!4968 (_2!29377 (h!57341 oldBucket!40))))) (Some!11461 (_2!29377 (tuple2!52167 key!4968 (_2!29377 (h!57341 oldBucket!40)))))))))

(declare-fun b!4613884 () Bool)

(assert (=> b!4613884 (= e!2877963 (contains!14306 (toList!4825 lt!1769028) (tuple2!52167 key!4968 (_2!29377 (h!57341 oldBucket!40)))))))

(assert (= (and d!1453371 res!1932673) b!4613883))

(assert (= (and b!4613883 res!1932674) b!4613884))

(declare-fun m!5445763 () Bool)

(assert (=> d!1453371 m!5445763))

(declare-fun m!5445765 () Bool)

(assert (=> d!1453371 m!5445765))

(declare-fun m!5445767 () Bool)

(assert (=> d!1453371 m!5445767))

(declare-fun m!5445769 () Bool)

(assert (=> d!1453371 m!5445769))

(declare-fun m!5445771 () Bool)

(assert (=> b!4613883 m!5445771))

(declare-fun m!5445773 () Bool)

(assert (=> b!4613884 m!5445773))

(assert (=> b!4613666 d!1453371))

(declare-fun d!1453373 () Bool)

(assert (=> d!1453373 (= (-!520 (+!1815 lt!1768682 (tuple2!52167 key!4968 (_2!29377 (h!57341 oldBucket!40)))) key!4968) lt!1768682)))

(declare-fun lt!1769033 () Unit!109630)

(declare-fun choose!31055 (ListMap!4129 K!12725 V!12971) Unit!109630)

(assert (=> d!1453373 (= lt!1769033 (choose!31055 lt!1768682 key!4968 (_2!29377 (h!57341 oldBucket!40))))))

(assert (=> d!1453373 (not (contains!14304 lt!1768682 key!4968))))

(assert (=> d!1453373 (= (addThenRemoveForNewKeyIsSame!3 lt!1768682 key!4968 (_2!29377 (h!57341 oldBucket!40))) lt!1769033)))

(declare-fun bs!1016758 () Bool)

(assert (= bs!1016758 d!1453373))

(assert (=> bs!1016758 m!5445233))

(assert (=> bs!1016758 m!5445233))

(assert (=> bs!1016758 m!5445235))

(declare-fun m!5445811 () Bool)

(assert (=> bs!1016758 m!5445811))

(assert (=> bs!1016758 m!5445279))

(assert (=> b!4613666 d!1453373))

(declare-fun bm!321611 () Bool)

(declare-fun call!321616 () Bool)

(declare-fun e!2877991 () List!51464)

(declare-fun contains!14308 (List!51464 K!12725) Bool)

(assert (=> bm!321611 (= call!321616 (contains!14308 e!2877991 key!4968))))

(declare-fun c!789985 () Bool)

(declare-fun c!789986 () Bool)

(assert (=> bm!321611 (= c!789985 c!789986)))

(declare-fun b!4613915 () Bool)

(assert (=> b!4613915 (= e!2877991 (keys!18033 lt!1768686))))

(declare-fun b!4613916 () Bool)

(declare-fun e!2877987 () Bool)

(assert (=> b!4613916 (= e!2877987 (contains!14308 (keys!18033 lt!1768686) key!4968))))

(declare-fun b!4613917 () Bool)

(assert (=> b!4613917 false))

(declare-fun lt!1769052 () Unit!109630)

(declare-fun lt!1769057 () Unit!109630)

(assert (=> b!4613917 (= lt!1769052 lt!1769057)))

(declare-fun containsKey!2304 (List!51461 K!12725) Bool)

(assert (=> b!4613917 (containsKey!2304 (toList!4825 lt!1768686) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!609 (List!51461 K!12725) Unit!109630)

(assert (=> b!4613917 (= lt!1769057 (lemmaInGetKeysListThenContainsKey!609 (toList!4825 lt!1768686) key!4968))))

(declare-fun e!2877988 () Unit!109630)

(declare-fun Unit!109693 () Unit!109630)

(assert (=> b!4613917 (= e!2877988 Unit!109693)))

(declare-fun b!4613918 () Bool)

(declare-fun e!2877986 () Bool)

(assert (=> b!4613918 (= e!2877986 (not (contains!14308 (keys!18033 lt!1768686) key!4968)))))

(declare-fun b!4613919 () Bool)

(declare-fun e!2877990 () Unit!109630)

(declare-fun lt!1769055 () Unit!109630)

(assert (=> b!4613919 (= e!2877990 lt!1769055)))

(declare-fun lt!1769054 () Unit!109630)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1278 (List!51461 K!12725) Unit!109630)

(assert (=> b!4613919 (= lt!1769054 (lemmaContainsKeyImpliesGetValueByKeyDefined!1278 (toList!4825 lt!1768686) key!4968))))

(declare-fun isDefined!8727 (Option!11462) Bool)

(assert (=> b!4613919 (isDefined!8727 (getValueByKey!1376 (toList!4825 lt!1768686) key!4968))))

(declare-fun lt!1769056 () Unit!109630)

(assert (=> b!4613919 (= lt!1769056 lt!1769054)))

(declare-fun lemmaInListThenGetKeysListContains!605 (List!51461 K!12725) Unit!109630)

(assert (=> b!4613919 (= lt!1769055 (lemmaInListThenGetKeysListContains!605 (toList!4825 lt!1768686) key!4968))))

(assert (=> b!4613919 call!321616))

(declare-fun b!4613920 () Bool)

(declare-fun e!2877989 () Bool)

(assert (=> b!4613920 (= e!2877989 e!2877987)))

(declare-fun res!1932688 () Bool)

(assert (=> b!4613920 (=> (not res!1932688) (not e!2877987))))

(assert (=> b!4613920 (= res!1932688 (isDefined!8727 (getValueByKey!1376 (toList!4825 lt!1768686) key!4968)))))

(declare-fun b!4613922 () Bool)

(assert (=> b!4613922 (= e!2877990 e!2877988)))

(declare-fun c!789987 () Bool)

(assert (=> b!4613922 (= c!789987 call!321616)))

(declare-fun b!4613923 () Bool)

(declare-fun getKeysList!610 (List!51461) List!51464)

(assert (=> b!4613923 (= e!2877991 (getKeysList!610 (toList!4825 lt!1768686)))))

(declare-fun d!1453379 () Bool)

(assert (=> d!1453379 e!2877989))

(declare-fun res!1932687 () Bool)

(assert (=> d!1453379 (=> res!1932687 e!2877989)))

(assert (=> d!1453379 (= res!1932687 e!2877986)))

(declare-fun res!1932689 () Bool)

(assert (=> d!1453379 (=> (not res!1932689) (not e!2877986))))

(declare-fun lt!1769051 () Bool)

(assert (=> d!1453379 (= res!1932689 (not lt!1769051))))

(declare-fun lt!1769050 () Bool)

(assert (=> d!1453379 (= lt!1769051 lt!1769050)))

(declare-fun lt!1769053 () Unit!109630)

(assert (=> d!1453379 (= lt!1769053 e!2877990)))

(assert (=> d!1453379 (= c!789986 lt!1769050)))

(assert (=> d!1453379 (= lt!1769050 (containsKey!2304 (toList!4825 lt!1768686) key!4968))))

(assert (=> d!1453379 (= (contains!14304 lt!1768686 key!4968) lt!1769051)))

(declare-fun b!4613921 () Bool)

(declare-fun Unit!109694 () Unit!109630)

(assert (=> b!4613921 (= e!2877988 Unit!109694)))

(assert (= (and d!1453379 c!789986) b!4613919))

(assert (= (and d!1453379 (not c!789986)) b!4613922))

(assert (= (and b!4613922 c!789987) b!4613917))

(assert (= (and b!4613922 (not c!789987)) b!4613921))

(assert (= (or b!4613919 b!4613922) bm!321611))

(assert (= (and bm!321611 c!789985) b!4613923))

(assert (= (and bm!321611 (not c!789985)) b!4613915))

(assert (= (and d!1453379 res!1932689) b!4613918))

(assert (= (and d!1453379 (not res!1932687)) b!4613920))

(assert (= (and b!4613920 res!1932688) b!4613916))

(declare-fun m!5445815 () Bool)

(assert (=> b!4613923 m!5445815))

(declare-fun m!5445817 () Bool)

(assert (=> d!1453379 m!5445817))

(declare-fun m!5445819 () Bool)

(assert (=> b!4613916 m!5445819))

(assert (=> b!4613916 m!5445819))

(declare-fun m!5445821 () Bool)

(assert (=> b!4613916 m!5445821))

(declare-fun m!5445823 () Bool)

(assert (=> b!4613920 m!5445823))

(assert (=> b!4613920 m!5445823))

(declare-fun m!5445825 () Bool)

(assert (=> b!4613920 m!5445825))

(declare-fun m!5445827 () Bool)

(assert (=> b!4613919 m!5445827))

(assert (=> b!4613919 m!5445823))

(assert (=> b!4613919 m!5445823))

(assert (=> b!4613919 m!5445825))

(declare-fun m!5445829 () Bool)

(assert (=> b!4613919 m!5445829))

(assert (=> b!4613915 m!5445819))

(assert (=> b!4613918 m!5445819))

(assert (=> b!4613918 m!5445819))

(assert (=> b!4613918 m!5445821))

(declare-fun m!5445831 () Bool)

(assert (=> bm!321611 m!5445831))

(assert (=> b!4613917 m!5445817))

(declare-fun m!5445833 () Bool)

(assert (=> b!4613917 m!5445833))

(assert (=> b!4613664 d!1453379))

(declare-fun bs!1016760 () Bool)

(declare-fun d!1453383 () Bool)

(assert (= bs!1016760 (and d!1453383 b!4613679)))

(declare-fun lambda!188923 () Int)

(assert (=> bs!1016760 (= lambda!188923 lambda!188820)))

(declare-fun lt!1769060 () ListMap!4129)

(assert (=> d!1453383 (invariantList!1159 (toList!4825 lt!1769060))))

(declare-fun e!2877994 () ListMap!4129)

(assert (=> d!1453383 (= lt!1769060 e!2877994)))

(declare-fun c!789990 () Bool)

(assert (=> d!1453383 (= c!789990 ((_ is Cons!51338) lt!1768676))))

(assert (=> d!1453383 (forall!10724 lt!1768676 lambda!188923)))

(assert (=> d!1453383 (= (extractMap!1486 lt!1768676) lt!1769060)))

(declare-fun b!4613928 () Bool)

(assert (=> b!4613928 (= e!2877994 (addToMapMapFromBucket!891 (_2!29378 (h!57342 lt!1768676)) (extractMap!1486 (t!358458 lt!1768676))))))

(declare-fun b!4613929 () Bool)

(assert (=> b!4613929 (= e!2877994 (ListMap!4130 Nil!51337))))

(assert (= (and d!1453383 c!789990) b!4613928))

(assert (= (and d!1453383 (not c!789990)) b!4613929))

(declare-fun m!5445835 () Bool)

(assert (=> d!1453383 m!5445835))

(declare-fun m!5445837 () Bool)

(assert (=> d!1453383 m!5445837))

(declare-fun m!5445839 () Bool)

(assert (=> b!4613928 m!5445839))

(assert (=> b!4613928 m!5445839))

(declare-fun m!5445841 () Bool)

(assert (=> b!4613928 m!5445841))

(assert (=> b!4613664 d!1453383))

(declare-fun d!1453385 () Bool)

(declare-fun res!1932694 () Bool)

(declare-fun e!2877999 () Bool)

(assert (=> d!1453385 (=> res!1932694 e!2877999)))

(assert (=> d!1453385 (= res!1932694 (and ((_ is Cons!51337) lt!1768687) (= (_1!29377 (h!57341 lt!1768687)) key!4968)))))

(assert (=> d!1453385 (= (containsKey!2302 lt!1768687 key!4968) e!2877999)))

(declare-fun b!4613934 () Bool)

(declare-fun e!2878000 () Bool)

(assert (=> b!4613934 (= e!2877999 e!2878000)))

(declare-fun res!1932695 () Bool)

(assert (=> b!4613934 (=> (not res!1932695) (not e!2878000))))

(assert (=> b!4613934 (= res!1932695 ((_ is Cons!51337) lt!1768687))))

(declare-fun b!4613935 () Bool)

(assert (=> b!4613935 (= e!2878000 (containsKey!2302 (t!358457 lt!1768687) key!4968))))

(assert (= (and d!1453385 (not res!1932694)) b!4613934))

(assert (= (and b!4613934 res!1932695) b!4613935))

(declare-fun m!5445843 () Bool)

(assert (=> b!4613935 m!5445843))

(assert (=> b!4613675 d!1453385))

(declare-fun bs!1016761 () Bool)

(declare-fun d!1453387 () Bool)

(assert (= bs!1016761 (and d!1453387 d!1453317)))

(declare-fun lambda!188924 () Int)

(assert (=> bs!1016761 (not (= lambda!188924 lambda!188908))))

(declare-fun bs!1016762 () Bool)

(assert (= bs!1016762 (and d!1453387 b!4613853)))

(assert (=> bs!1016762 (not (= lambda!188924 lambda!188906))))

(declare-fun bs!1016763 () Bool)

(assert (= bs!1016763 (and d!1453387 b!4613862)))

(assert (=> bs!1016763 (not (= lambda!188924 lambda!188911))))

(declare-fun bs!1016764 () Bool)

(assert (= bs!1016764 (and d!1453387 b!4613852)))

(assert (=> bs!1016764 (not (= lambda!188924 lambda!188904))))

(declare-fun bs!1016765 () Bool)

(assert (= bs!1016765 (and d!1453387 b!4613861)))

(assert (=> bs!1016765 (not (= lambda!188924 lambda!188909))))

(declare-fun bs!1016766 () Bool)

(assert (= bs!1016766 (and d!1453387 d!1453283)))

(assert (=> bs!1016766 (= lambda!188924 lambda!188823)))

(declare-fun bs!1016767 () Bool)

(assert (= bs!1016767 (and d!1453387 d!1453351)))

(assert (=> bs!1016767 (not (= lambda!188924 lambda!188912))))

(assert (=> bs!1016762 (not (= lambda!188924 lambda!188907))))

(assert (=> bs!1016763 (not (= lambda!188924 lambda!188910))))

(assert (=> d!1453387 true))

(assert (=> d!1453387 true))

(assert (=> d!1453387 (= (allKeysSameHash!1284 oldBucket!40 hash!414 hashF!1389) (forall!10726 oldBucket!40 lambda!188924))))

(declare-fun bs!1016768 () Bool)

(assert (= bs!1016768 d!1453387))

(declare-fun m!5445845 () Bool)

(assert (=> bs!1016768 m!5445845))

(assert (=> b!4613665 d!1453387))

(declare-fun d!1453389 () Bool)

(declare-fun hash!3377 (Hashable!5827 K!12725) (_ BitVec 64))

(assert (=> d!1453389 (= (hash!3375 hashF!1389 key!4968) (hash!3377 hashF!1389 key!4968))))

(declare-fun bs!1016769 () Bool)

(assert (= bs!1016769 d!1453389))

(declare-fun m!5445847 () Bool)

(assert (=> bs!1016769 m!5445847))

(assert (=> b!4613674 d!1453389))

(declare-fun bm!321612 () Bool)

(declare-fun call!321617 () Bool)

(declare-fun e!2878006 () List!51464)

(assert (=> bm!321612 (= call!321617 (contains!14308 e!2878006 key!4968))))

(declare-fun c!789991 () Bool)

(declare-fun c!789992 () Bool)

(assert (=> bm!321612 (= c!789991 c!789992)))

(declare-fun b!4613936 () Bool)

(assert (=> b!4613936 (= e!2878006 (keys!18033 lt!1768682))))

(declare-fun b!4613937 () Bool)

(declare-fun e!2878002 () Bool)

(assert (=> b!4613937 (= e!2878002 (contains!14308 (keys!18033 lt!1768682) key!4968))))

(declare-fun b!4613938 () Bool)

(assert (=> b!4613938 false))

(declare-fun lt!1769063 () Unit!109630)

(declare-fun lt!1769068 () Unit!109630)

(assert (=> b!4613938 (= lt!1769063 lt!1769068)))

(assert (=> b!4613938 (containsKey!2304 (toList!4825 lt!1768682) key!4968)))

(assert (=> b!4613938 (= lt!1769068 (lemmaInGetKeysListThenContainsKey!609 (toList!4825 lt!1768682) key!4968))))

(declare-fun e!2878003 () Unit!109630)

(declare-fun Unit!109695 () Unit!109630)

(assert (=> b!4613938 (= e!2878003 Unit!109695)))

(declare-fun b!4613939 () Bool)

(declare-fun e!2878001 () Bool)

(assert (=> b!4613939 (= e!2878001 (not (contains!14308 (keys!18033 lt!1768682) key!4968)))))

(declare-fun b!4613940 () Bool)

(declare-fun e!2878005 () Unit!109630)

(declare-fun lt!1769066 () Unit!109630)

(assert (=> b!4613940 (= e!2878005 lt!1769066)))

(declare-fun lt!1769065 () Unit!109630)

(assert (=> b!4613940 (= lt!1769065 (lemmaContainsKeyImpliesGetValueByKeyDefined!1278 (toList!4825 lt!1768682) key!4968))))

(assert (=> b!4613940 (isDefined!8727 (getValueByKey!1376 (toList!4825 lt!1768682) key!4968))))

(declare-fun lt!1769067 () Unit!109630)

(assert (=> b!4613940 (= lt!1769067 lt!1769065)))

(assert (=> b!4613940 (= lt!1769066 (lemmaInListThenGetKeysListContains!605 (toList!4825 lt!1768682) key!4968))))

(assert (=> b!4613940 call!321617))

(declare-fun b!4613941 () Bool)

(declare-fun e!2878004 () Bool)

(assert (=> b!4613941 (= e!2878004 e!2878002)))

(declare-fun res!1932697 () Bool)

(assert (=> b!4613941 (=> (not res!1932697) (not e!2878002))))

(assert (=> b!4613941 (= res!1932697 (isDefined!8727 (getValueByKey!1376 (toList!4825 lt!1768682) key!4968)))))

(declare-fun b!4613943 () Bool)

(assert (=> b!4613943 (= e!2878005 e!2878003)))

(declare-fun c!789993 () Bool)

(assert (=> b!4613943 (= c!789993 call!321617)))

(declare-fun b!4613944 () Bool)

(assert (=> b!4613944 (= e!2878006 (getKeysList!610 (toList!4825 lt!1768682)))))

(declare-fun d!1453391 () Bool)

(assert (=> d!1453391 e!2878004))

(declare-fun res!1932696 () Bool)

(assert (=> d!1453391 (=> res!1932696 e!2878004)))

(assert (=> d!1453391 (= res!1932696 e!2878001)))

(declare-fun res!1932698 () Bool)

(assert (=> d!1453391 (=> (not res!1932698) (not e!2878001))))

(declare-fun lt!1769062 () Bool)

(assert (=> d!1453391 (= res!1932698 (not lt!1769062))))

(declare-fun lt!1769061 () Bool)

(assert (=> d!1453391 (= lt!1769062 lt!1769061)))

(declare-fun lt!1769064 () Unit!109630)

(assert (=> d!1453391 (= lt!1769064 e!2878005)))

(assert (=> d!1453391 (= c!789992 lt!1769061)))

(assert (=> d!1453391 (= lt!1769061 (containsKey!2304 (toList!4825 lt!1768682) key!4968))))

(assert (=> d!1453391 (= (contains!14304 lt!1768682 key!4968) lt!1769062)))

(declare-fun b!4613942 () Bool)

(declare-fun Unit!109696 () Unit!109630)

(assert (=> b!4613942 (= e!2878003 Unit!109696)))

(assert (= (and d!1453391 c!789992) b!4613940))

(assert (= (and d!1453391 (not c!789992)) b!4613943))

(assert (= (and b!4613943 c!789993) b!4613938))

(assert (= (and b!4613943 (not c!789993)) b!4613942))

(assert (= (or b!4613940 b!4613943) bm!321612))

(assert (= (and bm!321612 c!789991) b!4613944))

(assert (= (and bm!321612 (not c!789991)) b!4613936))

(assert (= (and d!1453391 res!1932698) b!4613939))

(assert (= (and d!1453391 (not res!1932696)) b!4613941))

(assert (= (and b!4613941 res!1932697) b!4613937))

(declare-fun m!5445849 () Bool)

(assert (=> b!4613944 m!5445849))

(declare-fun m!5445851 () Bool)

(assert (=> d!1453391 m!5445851))

(declare-fun m!5445853 () Bool)

(assert (=> b!4613937 m!5445853))

(assert (=> b!4613937 m!5445853))

(declare-fun m!5445855 () Bool)

(assert (=> b!4613937 m!5445855))

(declare-fun m!5445857 () Bool)

(assert (=> b!4613941 m!5445857))

(assert (=> b!4613941 m!5445857))

(declare-fun m!5445859 () Bool)

(assert (=> b!4613941 m!5445859))

(declare-fun m!5445861 () Bool)

(assert (=> b!4613940 m!5445861))

(assert (=> b!4613940 m!5445857))

(assert (=> b!4613940 m!5445857))

(assert (=> b!4613940 m!5445859))

(declare-fun m!5445863 () Bool)

(assert (=> b!4613940 m!5445863))

(assert (=> b!4613936 m!5445853))

(assert (=> b!4613939 m!5445853))

(assert (=> b!4613939 m!5445853))

(assert (=> b!4613939 m!5445855))

(declare-fun m!5445865 () Bool)

(assert (=> bm!321612 m!5445865))

(assert (=> b!4613938 m!5445851))

(declare-fun m!5445867 () Bool)

(assert (=> b!4613938 m!5445867))

(assert (=> b!4613672 d!1453391))

(declare-fun bm!321613 () Bool)

(declare-fun call!321618 () Bool)

(declare-fun e!2878012 () List!51464)

(assert (=> bm!321613 (= call!321618 (contains!14308 e!2878012 key!4968))))

(declare-fun c!789994 () Bool)

(declare-fun c!789995 () Bool)

(assert (=> bm!321613 (= c!789994 c!789995)))

(declare-fun b!4613945 () Bool)

(assert (=> b!4613945 (= e!2878012 (keys!18033 lt!1768679))))

(declare-fun b!4613946 () Bool)

(declare-fun e!2878008 () Bool)

(assert (=> b!4613946 (= e!2878008 (contains!14308 (keys!18033 lt!1768679) key!4968))))

(declare-fun b!4613947 () Bool)

(assert (=> b!4613947 false))

(declare-fun lt!1769071 () Unit!109630)

(declare-fun lt!1769076 () Unit!109630)

(assert (=> b!4613947 (= lt!1769071 lt!1769076)))

(assert (=> b!4613947 (containsKey!2304 (toList!4825 lt!1768679) key!4968)))

(assert (=> b!4613947 (= lt!1769076 (lemmaInGetKeysListThenContainsKey!609 (toList!4825 lt!1768679) key!4968))))

(declare-fun e!2878009 () Unit!109630)

(declare-fun Unit!109697 () Unit!109630)

(assert (=> b!4613947 (= e!2878009 Unit!109697)))

(declare-fun b!4613948 () Bool)

(declare-fun e!2878007 () Bool)

(assert (=> b!4613948 (= e!2878007 (not (contains!14308 (keys!18033 lt!1768679) key!4968)))))

(declare-fun b!4613949 () Bool)

(declare-fun e!2878011 () Unit!109630)

(declare-fun lt!1769074 () Unit!109630)

(assert (=> b!4613949 (= e!2878011 lt!1769074)))

(declare-fun lt!1769073 () Unit!109630)

(assert (=> b!4613949 (= lt!1769073 (lemmaContainsKeyImpliesGetValueByKeyDefined!1278 (toList!4825 lt!1768679) key!4968))))

(assert (=> b!4613949 (isDefined!8727 (getValueByKey!1376 (toList!4825 lt!1768679) key!4968))))

(declare-fun lt!1769075 () Unit!109630)

(assert (=> b!4613949 (= lt!1769075 lt!1769073)))

(assert (=> b!4613949 (= lt!1769074 (lemmaInListThenGetKeysListContains!605 (toList!4825 lt!1768679) key!4968))))

(assert (=> b!4613949 call!321618))

(declare-fun b!4613950 () Bool)

(declare-fun e!2878010 () Bool)

(assert (=> b!4613950 (= e!2878010 e!2878008)))

(declare-fun res!1932700 () Bool)

(assert (=> b!4613950 (=> (not res!1932700) (not e!2878008))))

(assert (=> b!4613950 (= res!1932700 (isDefined!8727 (getValueByKey!1376 (toList!4825 lt!1768679) key!4968)))))

(declare-fun b!4613952 () Bool)

(assert (=> b!4613952 (= e!2878011 e!2878009)))

(declare-fun c!789996 () Bool)

(assert (=> b!4613952 (= c!789996 call!321618)))

(declare-fun b!4613953 () Bool)

(assert (=> b!4613953 (= e!2878012 (getKeysList!610 (toList!4825 lt!1768679)))))

(declare-fun d!1453393 () Bool)

(assert (=> d!1453393 e!2878010))

(declare-fun res!1932699 () Bool)

(assert (=> d!1453393 (=> res!1932699 e!2878010)))

(assert (=> d!1453393 (= res!1932699 e!2878007)))

(declare-fun res!1932701 () Bool)

(assert (=> d!1453393 (=> (not res!1932701) (not e!2878007))))

(declare-fun lt!1769070 () Bool)

(assert (=> d!1453393 (= res!1932701 (not lt!1769070))))

(declare-fun lt!1769069 () Bool)

(assert (=> d!1453393 (= lt!1769070 lt!1769069)))

(declare-fun lt!1769072 () Unit!109630)

(assert (=> d!1453393 (= lt!1769072 e!2878011)))

(assert (=> d!1453393 (= c!789995 lt!1769069)))

(assert (=> d!1453393 (= lt!1769069 (containsKey!2304 (toList!4825 lt!1768679) key!4968))))

(assert (=> d!1453393 (= (contains!14304 lt!1768679 key!4968) lt!1769070)))

(declare-fun b!4613951 () Bool)

(declare-fun Unit!109698 () Unit!109630)

(assert (=> b!4613951 (= e!2878009 Unit!109698)))

(assert (= (and d!1453393 c!789995) b!4613949))

(assert (= (and d!1453393 (not c!789995)) b!4613952))

(assert (= (and b!4613952 c!789996) b!4613947))

(assert (= (and b!4613952 (not c!789996)) b!4613951))

(assert (= (or b!4613949 b!4613952) bm!321613))

(assert (= (and bm!321613 c!789994) b!4613953))

(assert (= (and bm!321613 (not c!789994)) b!4613945))

(assert (= (and d!1453393 res!1932701) b!4613948))

(assert (= (and d!1453393 (not res!1932699)) b!4613950))

(assert (= (and b!4613950 res!1932700) b!4613946))

(declare-fun m!5445869 () Bool)

(assert (=> b!4613953 m!5445869))

(declare-fun m!5445871 () Bool)

(assert (=> d!1453393 m!5445871))

(declare-fun m!5445873 () Bool)

(assert (=> b!4613946 m!5445873))

(assert (=> b!4613946 m!5445873))

(declare-fun m!5445875 () Bool)

(assert (=> b!4613946 m!5445875))

(declare-fun m!5445877 () Bool)

(assert (=> b!4613950 m!5445877))

(assert (=> b!4613950 m!5445877))

(declare-fun m!5445879 () Bool)

(assert (=> b!4613950 m!5445879))

(declare-fun m!5445881 () Bool)

(assert (=> b!4613949 m!5445881))

(assert (=> b!4613949 m!5445877))

(assert (=> b!4613949 m!5445877))

(assert (=> b!4613949 m!5445879))

(declare-fun m!5445883 () Bool)

(assert (=> b!4613949 m!5445883))

(assert (=> b!4613945 m!5445873))

(assert (=> b!4613948 m!5445873))

(assert (=> b!4613948 m!5445873))

(assert (=> b!4613948 m!5445875))

(declare-fun m!5445885 () Bool)

(assert (=> bm!321613 m!5445885))

(assert (=> b!4613947 m!5445871))

(declare-fun m!5445887 () Bool)

(assert (=> b!4613947 m!5445887))

(assert (=> b!4613672 d!1453393))

(declare-fun bs!1016770 () Bool)

(declare-fun d!1453395 () Bool)

(assert (= bs!1016770 (and d!1453395 b!4613679)))

(declare-fun lambda!188927 () Int)

(assert (=> bs!1016770 (= lambda!188927 lambda!188820)))

(declare-fun bs!1016771 () Bool)

(assert (= bs!1016771 (and d!1453395 d!1453383)))

(assert (=> bs!1016771 (= lambda!188927 lambda!188923)))

(assert (=> d!1453395 (not (contains!14304 (extractMap!1486 (toList!4826 (ListLongMap!3416 lt!1768677))) key!4968))))

(declare-fun lt!1769079 () Unit!109630)

(declare-fun choose!31057 (ListLongMap!3415 K!12725 Hashable!5827) Unit!109630)

(assert (=> d!1453395 (= lt!1769079 (choose!31057 (ListLongMap!3416 lt!1768677) key!4968 hashF!1389))))

(assert (=> d!1453395 (forall!10724 (toList!4826 (ListLongMap!3416 lt!1768677)) lambda!188927)))

(assert (=> d!1453395 (= (lemmaNotInItsHashBucketThenNotInMap!344 (ListLongMap!3416 lt!1768677) key!4968 hashF!1389) lt!1769079)))

(declare-fun bs!1016772 () Bool)

(assert (= bs!1016772 d!1453395))

(declare-fun m!5445889 () Bool)

(assert (=> bs!1016772 m!5445889))

(assert (=> bs!1016772 m!5445889))

(declare-fun m!5445891 () Bool)

(assert (=> bs!1016772 m!5445891))

(declare-fun m!5445893 () Bool)

(assert (=> bs!1016772 m!5445893))

(declare-fun m!5445895 () Bool)

(assert (=> bs!1016772 m!5445895))

(assert (=> b!4613672 d!1453395))

(declare-fun bs!1016773 () Bool)

(declare-fun b!4613955 () Bool)

(assert (= bs!1016773 (and b!4613955 d!1453387)))

(declare-fun lambda!188928 () Int)

(assert (=> bs!1016773 (not (= lambda!188928 lambda!188924))))

(declare-fun bs!1016774 () Bool)

(assert (= bs!1016774 (and b!4613955 d!1453317)))

(assert (=> bs!1016774 (= (= (ListMap!4130 Nil!51337) lt!1768930) (= lambda!188928 lambda!188908))))

(declare-fun bs!1016775 () Bool)

(assert (= bs!1016775 (and b!4613955 b!4613853)))

(assert (=> bs!1016775 (= lambda!188928 lambda!188906)))

(declare-fun bs!1016776 () Bool)

(assert (= bs!1016776 (and b!4613955 b!4613862)))

(assert (=> bs!1016776 (= (= (ListMap!4130 Nil!51337) lt!1768956) (= lambda!188928 lambda!188911))))

(declare-fun bs!1016777 () Bool)

(assert (= bs!1016777 (and b!4613955 b!4613852)))

(assert (=> bs!1016777 (= lambda!188928 lambda!188904)))

(declare-fun bs!1016778 () Bool)

(assert (= bs!1016778 (and b!4613955 b!4613861)))

(assert (=> bs!1016778 (= lambda!188928 lambda!188909)))

(declare-fun bs!1016779 () Bool)

(assert (= bs!1016779 (and b!4613955 d!1453283)))

(assert (=> bs!1016779 (not (= lambda!188928 lambda!188823))))

(declare-fun bs!1016780 () Bool)

(assert (= bs!1016780 (and b!4613955 d!1453351)))

(assert (=> bs!1016780 (= (= (ListMap!4130 Nil!51337) lt!1768951) (= lambda!188928 lambda!188912))))

(assert (=> bs!1016775 (= (= (ListMap!4130 Nil!51337) lt!1768935) (= lambda!188928 lambda!188907))))

(assert (=> bs!1016776 (= lambda!188928 lambda!188910)))

(assert (=> b!4613955 true))

(declare-fun bs!1016781 () Bool)

(declare-fun b!4613956 () Bool)

(assert (= bs!1016781 (and b!4613956 d!1453387)))

(declare-fun lambda!188929 () Int)

(assert (=> bs!1016781 (not (= lambda!188929 lambda!188924))))

(declare-fun bs!1016782 () Bool)

(assert (= bs!1016782 (and b!4613956 d!1453317)))

(assert (=> bs!1016782 (= (= (ListMap!4130 Nil!51337) lt!1768930) (= lambda!188929 lambda!188908))))

(declare-fun bs!1016783 () Bool)

(assert (= bs!1016783 (and b!4613956 b!4613955)))

(assert (=> bs!1016783 (= lambda!188929 lambda!188928)))

(declare-fun bs!1016784 () Bool)

(assert (= bs!1016784 (and b!4613956 b!4613853)))

(assert (=> bs!1016784 (= lambda!188929 lambda!188906)))

(declare-fun bs!1016785 () Bool)

(assert (= bs!1016785 (and b!4613956 b!4613862)))

(assert (=> bs!1016785 (= (= (ListMap!4130 Nil!51337) lt!1768956) (= lambda!188929 lambda!188911))))

(declare-fun bs!1016786 () Bool)

(assert (= bs!1016786 (and b!4613956 b!4613852)))

(assert (=> bs!1016786 (= lambda!188929 lambda!188904)))

(declare-fun bs!1016787 () Bool)

(assert (= bs!1016787 (and b!4613956 b!4613861)))

(assert (=> bs!1016787 (= lambda!188929 lambda!188909)))

(declare-fun bs!1016788 () Bool)

(assert (= bs!1016788 (and b!4613956 d!1453283)))

(assert (=> bs!1016788 (not (= lambda!188929 lambda!188823))))

(declare-fun bs!1016789 () Bool)

(assert (= bs!1016789 (and b!4613956 d!1453351)))

(assert (=> bs!1016789 (= (= (ListMap!4130 Nil!51337) lt!1768951) (= lambda!188929 lambda!188912))))

(assert (=> bs!1016784 (= (= (ListMap!4130 Nil!51337) lt!1768935) (= lambda!188929 lambda!188907))))

(assert (=> bs!1016785 (= lambda!188929 lambda!188910)))

(assert (=> b!4613956 true))

(declare-fun lambda!188930 () Int)

(assert (=> bs!1016781 (not (= lambda!188930 lambda!188924))))

(declare-fun lt!1769090 () ListMap!4129)

(assert (=> bs!1016782 (= (= lt!1769090 lt!1768930) (= lambda!188930 lambda!188908))))

(assert (=> bs!1016783 (= (= lt!1769090 (ListMap!4130 Nil!51337)) (= lambda!188930 lambda!188928))))

(assert (=> b!4613956 (= (= lt!1769090 (ListMap!4130 Nil!51337)) (= lambda!188930 lambda!188929))))

(assert (=> bs!1016784 (= (= lt!1769090 (ListMap!4130 Nil!51337)) (= lambda!188930 lambda!188906))))

(assert (=> bs!1016785 (= (= lt!1769090 lt!1768956) (= lambda!188930 lambda!188911))))

(assert (=> bs!1016786 (= (= lt!1769090 (ListMap!4130 Nil!51337)) (= lambda!188930 lambda!188904))))

(assert (=> bs!1016787 (= (= lt!1769090 (ListMap!4130 Nil!51337)) (= lambda!188930 lambda!188909))))

(assert (=> bs!1016788 (not (= lambda!188930 lambda!188823))))

(assert (=> bs!1016789 (= (= lt!1769090 lt!1768951) (= lambda!188930 lambda!188912))))

(assert (=> bs!1016784 (= (= lt!1769090 lt!1768935) (= lambda!188930 lambda!188907))))

(assert (=> bs!1016785 (= (= lt!1769090 (ListMap!4130 Nil!51337)) (= lambda!188930 lambda!188910))))

(assert (=> b!4613956 true))

(declare-fun bs!1016790 () Bool)

(declare-fun d!1453397 () Bool)

(assert (= bs!1016790 (and d!1453397 d!1453387)))

(declare-fun lambda!188931 () Int)

(assert (=> bs!1016790 (not (= lambda!188931 lambda!188924))))

(declare-fun bs!1016791 () Bool)

(assert (= bs!1016791 (and d!1453397 b!4613956)))

(declare-fun lt!1769085 () ListMap!4129)

(assert (=> bs!1016791 (= (= lt!1769085 lt!1769090) (= lambda!188931 lambda!188930))))

(declare-fun bs!1016792 () Bool)

(assert (= bs!1016792 (and d!1453397 d!1453317)))

(assert (=> bs!1016792 (= (= lt!1769085 lt!1768930) (= lambda!188931 lambda!188908))))

(declare-fun bs!1016793 () Bool)

(assert (= bs!1016793 (and d!1453397 b!4613955)))

(assert (=> bs!1016793 (= (= lt!1769085 (ListMap!4130 Nil!51337)) (= lambda!188931 lambda!188928))))

(assert (=> bs!1016791 (= (= lt!1769085 (ListMap!4130 Nil!51337)) (= lambda!188931 lambda!188929))))

(declare-fun bs!1016794 () Bool)

(assert (= bs!1016794 (and d!1453397 b!4613853)))

(assert (=> bs!1016794 (= (= lt!1769085 (ListMap!4130 Nil!51337)) (= lambda!188931 lambda!188906))))

(declare-fun bs!1016795 () Bool)

(assert (= bs!1016795 (and d!1453397 b!4613862)))

(assert (=> bs!1016795 (= (= lt!1769085 lt!1768956) (= lambda!188931 lambda!188911))))

(declare-fun bs!1016796 () Bool)

(assert (= bs!1016796 (and d!1453397 b!4613852)))

(assert (=> bs!1016796 (= (= lt!1769085 (ListMap!4130 Nil!51337)) (= lambda!188931 lambda!188904))))

(declare-fun bs!1016797 () Bool)

(assert (= bs!1016797 (and d!1453397 b!4613861)))

(assert (=> bs!1016797 (= (= lt!1769085 (ListMap!4130 Nil!51337)) (= lambda!188931 lambda!188909))))

(declare-fun bs!1016798 () Bool)

(assert (= bs!1016798 (and d!1453397 d!1453283)))

(assert (=> bs!1016798 (not (= lambda!188931 lambda!188823))))

(declare-fun bs!1016799 () Bool)

(assert (= bs!1016799 (and d!1453397 d!1453351)))

(assert (=> bs!1016799 (= (= lt!1769085 lt!1768951) (= lambda!188931 lambda!188912))))

(assert (=> bs!1016794 (= (= lt!1769085 lt!1768935) (= lambda!188931 lambda!188907))))

(assert (=> bs!1016795 (= (= lt!1769085 (ListMap!4130 Nil!51337)) (= lambda!188931 lambda!188910))))

(assert (=> d!1453397 true))

(declare-fun b!4613954 () Bool)

(declare-fun res!1932704 () Bool)

(declare-fun e!2878015 () Bool)

(assert (=> b!4613954 (=> (not res!1932704) (not e!2878015))))

(assert (=> b!4613954 (= res!1932704 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) lambda!188931))))

(declare-fun call!321620 () Bool)

(declare-fun c!789997 () Bool)

(declare-fun bm!321614 () Bool)

(assert (=> bm!321614 (= call!321620 (forall!10726 (ite c!789997 (toList!4825 (ListMap!4130 Nil!51337)) (t!358457 newBucket!224)) (ite c!789997 lambda!188928 lambda!188930)))))

(declare-fun e!2878013 () ListMap!4129)

(assert (=> b!4613955 (= e!2878013 (ListMap!4130 Nil!51337))))

(declare-fun lt!1769089 () Unit!109630)

(declare-fun call!321619 () Unit!109630)

(assert (=> b!4613955 (= lt!1769089 call!321619)))

(declare-fun call!321621 () Bool)

(assert (=> b!4613955 call!321621))

(declare-fun lt!1769087 () Unit!109630)

(assert (=> b!4613955 (= lt!1769087 lt!1769089)))

(assert (=> b!4613955 call!321620))

(declare-fun lt!1769094 () Unit!109630)

(declare-fun Unit!109710 () Unit!109630)

(assert (=> b!4613955 (= lt!1769094 Unit!109710)))

(assert (=> d!1453397 e!2878015))

(declare-fun res!1932703 () Bool)

(assert (=> d!1453397 (=> (not res!1932703) (not e!2878015))))

(assert (=> d!1453397 (= res!1932703 (forall!10726 newBucket!224 lambda!188931))))

(assert (=> d!1453397 (= lt!1769085 e!2878013)))

(assert (=> d!1453397 (= c!789997 ((_ is Nil!51337) newBucket!224))))

(assert (=> d!1453397 (noDuplicateKeys!1430 newBucket!224)))

(assert (=> d!1453397 (= (addToMapMapFromBucket!891 newBucket!224 (ListMap!4130 Nil!51337)) lt!1769085)))

(declare-fun bm!321615 () Bool)

(assert (=> bm!321615 (= call!321621 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) (ite c!789997 lambda!188928 lambda!188930)))))

(assert (=> b!4613956 (= e!2878013 lt!1769090)))

(declare-fun lt!1769088 () ListMap!4129)

(assert (=> b!4613956 (= lt!1769088 (+!1815 (ListMap!4130 Nil!51337) (h!57341 newBucket!224)))))

(assert (=> b!4613956 (= lt!1769090 (addToMapMapFromBucket!891 (t!358457 newBucket!224) (+!1815 (ListMap!4130 Nil!51337) (h!57341 newBucket!224))))))

(declare-fun lt!1769086 () Unit!109630)

(assert (=> b!4613956 (= lt!1769086 call!321619)))

(assert (=> b!4613956 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) lambda!188929)))

(declare-fun lt!1769095 () Unit!109630)

(assert (=> b!4613956 (= lt!1769095 lt!1769086)))

(assert (=> b!4613956 (forall!10726 (toList!4825 lt!1769088) lambda!188930)))

(declare-fun lt!1769097 () Unit!109630)

(declare-fun Unit!109711 () Unit!109630)

(assert (=> b!4613956 (= lt!1769097 Unit!109711)))

(assert (=> b!4613956 call!321620))

(declare-fun lt!1769091 () Unit!109630)

(declare-fun Unit!109712 () Unit!109630)

(assert (=> b!4613956 (= lt!1769091 Unit!109712)))

(declare-fun lt!1769093 () Unit!109630)

(declare-fun Unit!109713 () Unit!109630)

(assert (=> b!4613956 (= lt!1769093 Unit!109713)))

(declare-fun lt!1769099 () Unit!109630)

(assert (=> b!4613956 (= lt!1769099 (forallContained!2953 (toList!4825 lt!1769088) lambda!188930 (h!57341 newBucket!224)))))

(assert (=> b!4613956 (contains!14304 lt!1769088 (_1!29377 (h!57341 newBucket!224)))))

(declare-fun lt!1769098 () Unit!109630)

(declare-fun Unit!109714 () Unit!109630)

(assert (=> b!4613956 (= lt!1769098 Unit!109714)))

(assert (=> b!4613956 (contains!14304 lt!1769090 (_1!29377 (h!57341 newBucket!224)))))

(declare-fun lt!1769100 () Unit!109630)

(declare-fun Unit!109715 () Unit!109630)

(assert (=> b!4613956 (= lt!1769100 Unit!109715)))

(assert (=> b!4613956 (forall!10726 newBucket!224 lambda!188930)))

(declare-fun lt!1769096 () Unit!109630)

(declare-fun Unit!109716 () Unit!109630)

(assert (=> b!4613956 (= lt!1769096 Unit!109716)))

(assert (=> b!4613956 (forall!10726 (toList!4825 lt!1769088) lambda!188930)))

(declare-fun lt!1769082 () Unit!109630)

(declare-fun Unit!109717 () Unit!109630)

(assert (=> b!4613956 (= lt!1769082 Unit!109717)))

(declare-fun lt!1769083 () Unit!109630)

(declare-fun Unit!109718 () Unit!109630)

(assert (=> b!4613956 (= lt!1769083 Unit!109718)))

(declare-fun lt!1769081 () Unit!109630)

(assert (=> b!4613956 (= lt!1769081 (addForallContainsKeyThenBeforeAdding!460 (ListMap!4130 Nil!51337) lt!1769090 (_1!29377 (h!57341 newBucket!224)) (_2!29377 (h!57341 newBucket!224))))))

(assert (=> b!4613956 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) lambda!188930)))

(declare-fun lt!1769084 () Unit!109630)

(assert (=> b!4613956 (= lt!1769084 lt!1769081)))

(assert (=> b!4613956 call!321621))

(declare-fun lt!1769092 () Unit!109630)

(declare-fun Unit!109719 () Unit!109630)

(assert (=> b!4613956 (= lt!1769092 Unit!109719)))

(declare-fun res!1932702 () Bool)

(assert (=> b!4613956 (= res!1932702 (forall!10726 newBucket!224 lambda!188930))))

(declare-fun e!2878014 () Bool)

(assert (=> b!4613956 (=> (not res!1932702) (not e!2878014))))

(assert (=> b!4613956 e!2878014))

(declare-fun lt!1769080 () Unit!109630)

(declare-fun Unit!109720 () Unit!109630)

(assert (=> b!4613956 (= lt!1769080 Unit!109720)))

(declare-fun bm!321616 () Bool)

(assert (=> bm!321616 (= call!321619 (lemmaContainsAllItsOwnKeys!461 (ListMap!4130 Nil!51337)))))

(declare-fun b!4613957 () Bool)

(assert (=> b!4613957 (= e!2878015 (invariantList!1159 (toList!4825 lt!1769085)))))

(declare-fun b!4613958 () Bool)

(assert (=> b!4613958 (= e!2878014 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) lambda!188930))))

(assert (= (and d!1453397 c!789997) b!4613955))

(assert (= (and d!1453397 (not c!789997)) b!4613956))

(assert (= (and b!4613956 res!1932702) b!4613958))

(assert (= (or b!4613955 b!4613956) bm!321616))

(assert (= (or b!4613955 b!4613956) bm!321614))

(assert (= (or b!4613955 b!4613956) bm!321615))

(assert (= (and d!1453397 res!1932703) b!4613954))

(assert (= (and b!4613954 res!1932704) b!4613957))

(declare-fun m!5445897 () Bool)

(assert (=> d!1453397 m!5445897))

(assert (=> d!1453397 m!5445247))

(declare-fun m!5445899 () Bool)

(assert (=> bm!321614 m!5445899))

(declare-fun m!5445901 () Bool)

(assert (=> b!4613956 m!5445901))

(assert (=> b!4613956 m!5445901))

(declare-fun m!5445903 () Bool)

(assert (=> b!4613956 m!5445903))

(declare-fun m!5445905 () Bool)

(assert (=> b!4613956 m!5445905))

(declare-fun m!5445907 () Bool)

(assert (=> b!4613956 m!5445907))

(assert (=> b!4613956 m!5445907))

(declare-fun m!5445909 () Bool)

(assert (=> b!4613956 m!5445909))

(declare-fun m!5445911 () Bool)

(assert (=> b!4613956 m!5445911))

(declare-fun m!5445913 () Bool)

(assert (=> b!4613956 m!5445913))

(declare-fun m!5445915 () Bool)

(assert (=> b!4613956 m!5445915))

(assert (=> b!4613956 m!5445911))

(declare-fun m!5445917 () Bool)

(assert (=> b!4613956 m!5445917))

(declare-fun m!5445919 () Bool)

(assert (=> b!4613956 m!5445919))

(assert (=> bm!321616 m!5445625))

(declare-fun m!5445921 () Bool)

(assert (=> bm!321615 m!5445921))

(declare-fun m!5445923 () Bool)

(assert (=> b!4613954 m!5445923))

(assert (=> b!4613958 m!5445919))

(declare-fun m!5445925 () Bool)

(assert (=> b!4613957 m!5445925))

(assert (=> b!4613671 d!1453397))

(declare-fun bs!1016800 () Bool)

(declare-fun b!4613960 () Bool)

(assert (= bs!1016800 (and b!4613960 d!1453387)))

(declare-fun lambda!188932 () Int)

(assert (=> bs!1016800 (not (= lambda!188932 lambda!188924))))

(declare-fun bs!1016801 () Bool)

(assert (= bs!1016801 (and b!4613960 b!4613956)))

(assert (=> bs!1016801 (= (= (ListMap!4130 Nil!51337) lt!1769090) (= lambda!188932 lambda!188930))))

(declare-fun bs!1016802 () Bool)

(assert (= bs!1016802 (and b!4613960 d!1453317)))

(assert (=> bs!1016802 (= (= (ListMap!4130 Nil!51337) lt!1768930) (= lambda!188932 lambda!188908))))

(declare-fun bs!1016803 () Bool)

(assert (= bs!1016803 (and b!4613960 b!4613955)))

(assert (=> bs!1016803 (= lambda!188932 lambda!188928)))

(assert (=> bs!1016801 (= lambda!188932 lambda!188929)))

(declare-fun bs!1016804 () Bool)

(assert (= bs!1016804 (and b!4613960 b!4613853)))

(assert (=> bs!1016804 (= lambda!188932 lambda!188906)))

(declare-fun bs!1016805 () Bool)

(assert (= bs!1016805 (and b!4613960 b!4613862)))

(assert (=> bs!1016805 (= (= (ListMap!4130 Nil!51337) lt!1768956) (= lambda!188932 lambda!188911))))

(declare-fun bs!1016806 () Bool)

(assert (= bs!1016806 (and b!4613960 d!1453397)))

(assert (=> bs!1016806 (= (= (ListMap!4130 Nil!51337) lt!1769085) (= lambda!188932 lambda!188931))))

(declare-fun bs!1016807 () Bool)

(assert (= bs!1016807 (and b!4613960 b!4613852)))

(assert (=> bs!1016807 (= lambda!188932 lambda!188904)))

(declare-fun bs!1016808 () Bool)

(assert (= bs!1016808 (and b!4613960 b!4613861)))

(assert (=> bs!1016808 (= lambda!188932 lambda!188909)))

(declare-fun bs!1016809 () Bool)

(assert (= bs!1016809 (and b!4613960 d!1453283)))

(assert (=> bs!1016809 (not (= lambda!188932 lambda!188823))))

(declare-fun bs!1016810 () Bool)

(assert (= bs!1016810 (and b!4613960 d!1453351)))

(assert (=> bs!1016810 (= (= (ListMap!4130 Nil!51337) lt!1768951) (= lambda!188932 lambda!188912))))

(assert (=> bs!1016804 (= (= (ListMap!4130 Nil!51337) lt!1768935) (= lambda!188932 lambda!188907))))

(assert (=> bs!1016805 (= lambda!188932 lambda!188910)))

(assert (=> b!4613960 true))

(declare-fun bs!1016811 () Bool)

(declare-fun b!4613961 () Bool)

(assert (= bs!1016811 (and b!4613961 d!1453387)))

(declare-fun lambda!188933 () Int)

(assert (=> bs!1016811 (not (= lambda!188933 lambda!188924))))

(declare-fun bs!1016812 () Bool)

(assert (= bs!1016812 (and b!4613961 b!4613960)))

(assert (=> bs!1016812 (= lambda!188933 lambda!188932)))

(declare-fun bs!1016813 () Bool)

(assert (= bs!1016813 (and b!4613961 b!4613956)))

(assert (=> bs!1016813 (= (= (ListMap!4130 Nil!51337) lt!1769090) (= lambda!188933 lambda!188930))))

(declare-fun bs!1016814 () Bool)

(assert (= bs!1016814 (and b!4613961 d!1453317)))

(assert (=> bs!1016814 (= (= (ListMap!4130 Nil!51337) lt!1768930) (= lambda!188933 lambda!188908))))

(declare-fun bs!1016815 () Bool)

(assert (= bs!1016815 (and b!4613961 b!4613955)))

(assert (=> bs!1016815 (= lambda!188933 lambda!188928)))

(assert (=> bs!1016813 (= lambda!188933 lambda!188929)))

(declare-fun bs!1016816 () Bool)

(assert (= bs!1016816 (and b!4613961 b!4613853)))

(assert (=> bs!1016816 (= lambda!188933 lambda!188906)))

(declare-fun bs!1016817 () Bool)

(assert (= bs!1016817 (and b!4613961 b!4613862)))

(assert (=> bs!1016817 (= (= (ListMap!4130 Nil!51337) lt!1768956) (= lambda!188933 lambda!188911))))

(declare-fun bs!1016818 () Bool)

(assert (= bs!1016818 (and b!4613961 d!1453397)))

(assert (=> bs!1016818 (= (= (ListMap!4130 Nil!51337) lt!1769085) (= lambda!188933 lambda!188931))))

(declare-fun bs!1016819 () Bool)

(assert (= bs!1016819 (and b!4613961 b!4613852)))

(assert (=> bs!1016819 (= lambda!188933 lambda!188904)))

(declare-fun bs!1016820 () Bool)

(assert (= bs!1016820 (and b!4613961 b!4613861)))

(assert (=> bs!1016820 (= lambda!188933 lambda!188909)))

(declare-fun bs!1016821 () Bool)

(assert (= bs!1016821 (and b!4613961 d!1453283)))

(assert (=> bs!1016821 (not (= lambda!188933 lambda!188823))))

(declare-fun bs!1016822 () Bool)

(assert (= bs!1016822 (and b!4613961 d!1453351)))

(assert (=> bs!1016822 (= (= (ListMap!4130 Nil!51337) lt!1768951) (= lambda!188933 lambda!188912))))

(assert (=> bs!1016816 (= (= (ListMap!4130 Nil!51337) lt!1768935) (= lambda!188933 lambda!188907))))

(assert (=> bs!1016817 (= lambda!188933 lambda!188910)))

(assert (=> b!4613961 true))

(declare-fun lambda!188934 () Int)

(assert (=> bs!1016811 (not (= lambda!188934 lambda!188924))))

(declare-fun lt!1769111 () ListMap!4129)

(assert (=> bs!1016812 (= (= lt!1769111 (ListMap!4130 Nil!51337)) (= lambda!188934 lambda!188932))))

(assert (=> bs!1016813 (= (= lt!1769111 lt!1769090) (= lambda!188934 lambda!188930))))

(assert (=> bs!1016814 (= (= lt!1769111 lt!1768930) (= lambda!188934 lambda!188908))))

(assert (=> bs!1016815 (= (= lt!1769111 (ListMap!4130 Nil!51337)) (= lambda!188934 lambda!188928))))

(assert (=> bs!1016813 (= (= lt!1769111 (ListMap!4130 Nil!51337)) (= lambda!188934 lambda!188929))))

(assert (=> bs!1016816 (= (= lt!1769111 (ListMap!4130 Nil!51337)) (= lambda!188934 lambda!188906))))

(assert (=> bs!1016817 (= (= lt!1769111 lt!1768956) (= lambda!188934 lambda!188911))))

(assert (=> bs!1016818 (= (= lt!1769111 lt!1769085) (= lambda!188934 lambda!188931))))

(assert (=> bs!1016819 (= (= lt!1769111 (ListMap!4130 Nil!51337)) (= lambda!188934 lambda!188904))))

(assert (=> bs!1016820 (= (= lt!1769111 (ListMap!4130 Nil!51337)) (= lambda!188934 lambda!188909))))

(assert (=> bs!1016821 (not (= lambda!188934 lambda!188823))))

(assert (=> bs!1016822 (= (= lt!1769111 lt!1768951) (= lambda!188934 lambda!188912))))

(assert (=> b!4613961 (= (= lt!1769111 (ListMap!4130 Nil!51337)) (= lambda!188934 lambda!188933))))

(assert (=> bs!1016816 (= (= lt!1769111 lt!1768935) (= lambda!188934 lambda!188907))))

(assert (=> bs!1016817 (= (= lt!1769111 (ListMap!4130 Nil!51337)) (= lambda!188934 lambda!188910))))

(assert (=> b!4613961 true))

(declare-fun bs!1016823 () Bool)

(declare-fun d!1453399 () Bool)

(assert (= bs!1016823 (and d!1453399 d!1453387)))

(declare-fun lambda!188935 () Int)

(assert (=> bs!1016823 (not (= lambda!188935 lambda!188924))))

(declare-fun bs!1016824 () Bool)

(assert (= bs!1016824 (and d!1453399 b!4613960)))

(declare-fun lt!1769106 () ListMap!4129)

(assert (=> bs!1016824 (= (= lt!1769106 (ListMap!4130 Nil!51337)) (= lambda!188935 lambda!188932))))

(declare-fun bs!1016825 () Bool)

(assert (= bs!1016825 (and d!1453399 b!4613956)))

(assert (=> bs!1016825 (= (= lt!1769106 lt!1769090) (= lambda!188935 lambda!188930))))

(declare-fun bs!1016826 () Bool)

(assert (= bs!1016826 (and d!1453399 d!1453317)))

(assert (=> bs!1016826 (= (= lt!1769106 lt!1768930) (= lambda!188935 lambda!188908))))

(declare-fun bs!1016827 () Bool)

(assert (= bs!1016827 (and d!1453399 b!4613955)))

(assert (=> bs!1016827 (= (= lt!1769106 (ListMap!4130 Nil!51337)) (= lambda!188935 lambda!188928))))

(assert (=> bs!1016825 (= (= lt!1769106 (ListMap!4130 Nil!51337)) (= lambda!188935 lambda!188929))))

(declare-fun bs!1016828 () Bool)

(assert (= bs!1016828 (and d!1453399 b!4613853)))

(assert (=> bs!1016828 (= (= lt!1769106 (ListMap!4130 Nil!51337)) (= lambda!188935 lambda!188906))))

(declare-fun bs!1016829 () Bool)

(assert (= bs!1016829 (and d!1453399 b!4613862)))

(assert (=> bs!1016829 (= (= lt!1769106 lt!1768956) (= lambda!188935 lambda!188911))))

(declare-fun bs!1016830 () Bool)

(assert (= bs!1016830 (and d!1453399 d!1453397)))

(assert (=> bs!1016830 (= (= lt!1769106 lt!1769085) (= lambda!188935 lambda!188931))))

(declare-fun bs!1016831 () Bool)

(assert (= bs!1016831 (and d!1453399 b!4613861)))

(assert (=> bs!1016831 (= (= lt!1769106 (ListMap!4130 Nil!51337)) (= lambda!188935 lambda!188909))))

(declare-fun bs!1016832 () Bool)

(assert (= bs!1016832 (and d!1453399 d!1453283)))

(assert (=> bs!1016832 (not (= lambda!188935 lambda!188823))))

(declare-fun bs!1016833 () Bool)

(assert (= bs!1016833 (and d!1453399 d!1453351)))

(assert (=> bs!1016833 (= (= lt!1769106 lt!1768951) (= lambda!188935 lambda!188912))))

(declare-fun bs!1016834 () Bool)

(assert (= bs!1016834 (and d!1453399 b!4613961)))

(assert (=> bs!1016834 (= (= lt!1769106 (ListMap!4130 Nil!51337)) (= lambda!188935 lambda!188933))))

(assert (=> bs!1016828 (= (= lt!1769106 lt!1768935) (= lambda!188935 lambda!188907))))

(assert (=> bs!1016829 (= (= lt!1769106 (ListMap!4130 Nil!51337)) (= lambda!188935 lambda!188910))))

(declare-fun bs!1016835 () Bool)

(assert (= bs!1016835 (and d!1453399 b!4613852)))

(assert (=> bs!1016835 (= (= lt!1769106 (ListMap!4130 Nil!51337)) (= lambda!188935 lambda!188904))))

(assert (=> bs!1016834 (= (= lt!1769106 lt!1769111) (= lambda!188935 lambda!188934))))

(assert (=> d!1453399 true))

(declare-fun b!4613959 () Bool)

(declare-fun res!1932707 () Bool)

(declare-fun e!2878018 () Bool)

(assert (=> b!4613959 (=> (not res!1932707) (not e!2878018))))

(assert (=> b!4613959 (= res!1932707 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) lambda!188935))))

(declare-fun call!321623 () Bool)

(declare-fun c!789998 () Bool)

(declare-fun bm!321617 () Bool)

(assert (=> bm!321617 (= call!321623 (forall!10726 (ite c!789998 (toList!4825 (ListMap!4130 Nil!51337)) (t!358457 lt!1768687)) (ite c!789998 lambda!188932 lambda!188934)))))

(declare-fun e!2878016 () ListMap!4129)

(assert (=> b!4613960 (= e!2878016 (ListMap!4130 Nil!51337))))

(declare-fun lt!1769110 () Unit!109630)

(declare-fun call!321622 () Unit!109630)

(assert (=> b!4613960 (= lt!1769110 call!321622)))

(declare-fun call!321624 () Bool)

(assert (=> b!4613960 call!321624))

(declare-fun lt!1769108 () Unit!109630)

(assert (=> b!4613960 (= lt!1769108 lt!1769110)))

(assert (=> b!4613960 call!321623))

(declare-fun lt!1769115 () Unit!109630)

(declare-fun Unit!109721 () Unit!109630)

(assert (=> b!4613960 (= lt!1769115 Unit!109721)))

(assert (=> d!1453399 e!2878018))

(declare-fun res!1932706 () Bool)

(assert (=> d!1453399 (=> (not res!1932706) (not e!2878018))))

(assert (=> d!1453399 (= res!1932706 (forall!10726 lt!1768687 lambda!188935))))

(assert (=> d!1453399 (= lt!1769106 e!2878016)))

(assert (=> d!1453399 (= c!789998 ((_ is Nil!51337) lt!1768687))))

(assert (=> d!1453399 (noDuplicateKeys!1430 lt!1768687)))

(assert (=> d!1453399 (= (addToMapMapFromBucket!891 lt!1768687 (ListMap!4130 Nil!51337)) lt!1769106)))

(declare-fun bm!321618 () Bool)

(assert (=> bm!321618 (= call!321624 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) (ite c!789998 lambda!188932 lambda!188934)))))

(assert (=> b!4613961 (= e!2878016 lt!1769111)))

(declare-fun lt!1769109 () ListMap!4129)

(assert (=> b!4613961 (= lt!1769109 (+!1815 (ListMap!4130 Nil!51337) (h!57341 lt!1768687)))))

(assert (=> b!4613961 (= lt!1769111 (addToMapMapFromBucket!891 (t!358457 lt!1768687) (+!1815 (ListMap!4130 Nil!51337) (h!57341 lt!1768687))))))

(declare-fun lt!1769107 () Unit!109630)

(assert (=> b!4613961 (= lt!1769107 call!321622)))

(assert (=> b!4613961 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) lambda!188933)))

(declare-fun lt!1769116 () Unit!109630)

(assert (=> b!4613961 (= lt!1769116 lt!1769107)))

(assert (=> b!4613961 (forall!10726 (toList!4825 lt!1769109) lambda!188934)))

(declare-fun lt!1769118 () Unit!109630)

(declare-fun Unit!109722 () Unit!109630)

(assert (=> b!4613961 (= lt!1769118 Unit!109722)))

(assert (=> b!4613961 call!321623))

(declare-fun lt!1769112 () Unit!109630)

(declare-fun Unit!109723 () Unit!109630)

(assert (=> b!4613961 (= lt!1769112 Unit!109723)))

(declare-fun lt!1769114 () Unit!109630)

(declare-fun Unit!109724 () Unit!109630)

(assert (=> b!4613961 (= lt!1769114 Unit!109724)))

(declare-fun lt!1769120 () Unit!109630)

(assert (=> b!4613961 (= lt!1769120 (forallContained!2953 (toList!4825 lt!1769109) lambda!188934 (h!57341 lt!1768687)))))

(assert (=> b!4613961 (contains!14304 lt!1769109 (_1!29377 (h!57341 lt!1768687)))))

(declare-fun lt!1769119 () Unit!109630)

(declare-fun Unit!109725 () Unit!109630)

(assert (=> b!4613961 (= lt!1769119 Unit!109725)))

(assert (=> b!4613961 (contains!14304 lt!1769111 (_1!29377 (h!57341 lt!1768687)))))

(declare-fun lt!1769121 () Unit!109630)

(declare-fun Unit!109726 () Unit!109630)

(assert (=> b!4613961 (= lt!1769121 Unit!109726)))

(assert (=> b!4613961 (forall!10726 lt!1768687 lambda!188934)))

(declare-fun lt!1769117 () Unit!109630)

(declare-fun Unit!109727 () Unit!109630)

(assert (=> b!4613961 (= lt!1769117 Unit!109727)))

(assert (=> b!4613961 (forall!10726 (toList!4825 lt!1769109) lambda!188934)))

(declare-fun lt!1769103 () Unit!109630)

(declare-fun Unit!109729 () Unit!109630)

(assert (=> b!4613961 (= lt!1769103 Unit!109729)))

(declare-fun lt!1769104 () Unit!109630)

(declare-fun Unit!109730 () Unit!109630)

(assert (=> b!4613961 (= lt!1769104 Unit!109730)))

(declare-fun lt!1769102 () Unit!109630)

(assert (=> b!4613961 (= lt!1769102 (addForallContainsKeyThenBeforeAdding!460 (ListMap!4130 Nil!51337) lt!1769111 (_1!29377 (h!57341 lt!1768687)) (_2!29377 (h!57341 lt!1768687))))))

(assert (=> b!4613961 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) lambda!188934)))

(declare-fun lt!1769105 () Unit!109630)

(assert (=> b!4613961 (= lt!1769105 lt!1769102)))

(assert (=> b!4613961 call!321624))

(declare-fun lt!1769113 () Unit!109630)

(declare-fun Unit!109733 () Unit!109630)

(assert (=> b!4613961 (= lt!1769113 Unit!109733)))

(declare-fun res!1932705 () Bool)

(assert (=> b!4613961 (= res!1932705 (forall!10726 lt!1768687 lambda!188934))))

(declare-fun e!2878017 () Bool)

(assert (=> b!4613961 (=> (not res!1932705) (not e!2878017))))

(assert (=> b!4613961 e!2878017))

(declare-fun lt!1769101 () Unit!109630)

(declare-fun Unit!109736 () Unit!109630)

(assert (=> b!4613961 (= lt!1769101 Unit!109736)))

(declare-fun bm!321619 () Bool)

(assert (=> bm!321619 (= call!321622 (lemmaContainsAllItsOwnKeys!461 (ListMap!4130 Nil!51337)))))

(declare-fun b!4613962 () Bool)

(assert (=> b!4613962 (= e!2878018 (invariantList!1159 (toList!4825 lt!1769106)))))

(declare-fun b!4613963 () Bool)

(assert (=> b!4613963 (= e!2878017 (forall!10726 (toList!4825 (ListMap!4130 Nil!51337)) lambda!188934))))

(assert (= (and d!1453399 c!789998) b!4613960))

(assert (= (and d!1453399 (not c!789998)) b!4613961))

(assert (= (and b!4613961 res!1932705) b!4613963))

(assert (= (or b!4613960 b!4613961) bm!321619))

(assert (= (or b!4613960 b!4613961) bm!321617))

(assert (= (or b!4613960 b!4613961) bm!321618))

(assert (= (and d!1453399 res!1932706) b!4613959))

(assert (= (and b!4613959 res!1932707) b!4613962))

(declare-fun m!5445927 () Bool)

(assert (=> d!1453399 m!5445927))

(assert (=> d!1453399 m!5445677))

(declare-fun m!5445929 () Bool)

(assert (=> bm!321617 m!5445929))

(declare-fun m!5445931 () Bool)

(assert (=> b!4613961 m!5445931))

(assert (=> b!4613961 m!5445931))

(declare-fun m!5445933 () Bool)

(assert (=> b!4613961 m!5445933))

(declare-fun m!5445935 () Bool)

(assert (=> b!4613961 m!5445935))

(declare-fun m!5445937 () Bool)

(assert (=> b!4613961 m!5445937))

(assert (=> b!4613961 m!5445937))

(declare-fun m!5445939 () Bool)

(assert (=> b!4613961 m!5445939))

(declare-fun m!5445941 () Bool)

(assert (=> b!4613961 m!5445941))

(declare-fun m!5445943 () Bool)

(assert (=> b!4613961 m!5445943))

(declare-fun m!5445945 () Bool)

(assert (=> b!4613961 m!5445945))

(assert (=> b!4613961 m!5445941))

(declare-fun m!5445947 () Bool)

(assert (=> b!4613961 m!5445947))

(declare-fun m!5445949 () Bool)

(assert (=> b!4613961 m!5445949))

(assert (=> bm!321619 m!5445625))

(declare-fun m!5445951 () Bool)

(assert (=> bm!321618 m!5445951))

(declare-fun m!5445953 () Bool)

(assert (=> b!4613959 m!5445953))

(assert (=> b!4613963 m!5445949))

(declare-fun m!5445955 () Bool)

(assert (=> b!4613962 m!5445955))

(assert (=> b!4613671 d!1453399))

(declare-fun bs!1016836 () Bool)

(declare-fun b!4613965 () Bool)

(assert (= bs!1016836 (and b!4613965 d!1453387)))

(declare-fun lambda!188936 () Int)

(assert (=> bs!1016836 (not (= lambda!188936 lambda!188924))))

(declare-fun bs!1016837 () Bool)

(assert (= bs!1016837 (and b!4613965 b!4613960)))

(assert (=> bs!1016837 (= (= lt!1768684 (ListMap!4130 Nil!51337)) (= lambda!188936 lambda!188932))))

(declare-fun bs!1016838 () Bool)

(assert (= bs!1016838 (and b!4613965 d!1453317)))

(assert (=> bs!1016838 (= (= lt!1768684 lt!1768930) (= lambda!188936 lambda!188908))))

(declare-fun bs!1016839 () Bool)

(assert (= bs!1016839 (and b!4613965 b!4613955)))

(assert (=> bs!1016839 (= (= lt!1768684 (ListMap!4130 Nil!51337)) (= lambda!188936 lambda!188928))))

(declare-fun bs!1016840 () Bool)

(assert (= bs!1016840 (and b!4613965 b!4613956)))

(assert (=> bs!1016840 (= (= lt!1768684 (ListMap!4130 Nil!51337)) (= lambda!188936 lambda!188929))))

(declare-fun bs!1016841 () Bool)

(assert (= bs!1016841 (and b!4613965 b!4613853)))

(assert (=> bs!1016841 (= (= lt!1768684 (ListMap!4130 Nil!51337)) (= lambda!188936 lambda!188906))))

(declare-fun bs!1016842 () Bool)

(assert (= bs!1016842 (and b!4613965 b!4613862)))

(assert (=> bs!1016842 (= (= lt!1768684 lt!1768956) (= lambda!188936 lambda!188911))))

(declare-fun bs!1016843 () Bool)

(assert (= bs!1016843 (and b!4613965 d!1453397)))

(assert (=> bs!1016843 (= (= lt!1768684 lt!1769085) (= lambda!188936 lambda!188931))))

(declare-fun bs!1016844 () Bool)

(assert (= bs!1016844 (and b!4613965 b!4613861)))

(assert (=> bs!1016844 (= (= lt!1768684 (ListMap!4130 Nil!51337)) (= lambda!188936 lambda!188909))))

(declare-fun bs!1016845 () Bool)

(assert (= bs!1016845 (and b!4613965 d!1453283)))

(assert (=> bs!1016845 (not (= lambda!188936 lambda!188823))))

(declare-fun bs!1016846 () Bool)

(assert (= bs!1016846 (and b!4613965 d!1453351)))

(assert (=> bs!1016846 (= (= lt!1768684 lt!1768951) (= lambda!188936 lambda!188912))))

(declare-fun bs!1016847 () Bool)

(assert (= bs!1016847 (and b!4613965 b!4613961)))

(assert (=> bs!1016847 (= (= lt!1768684 (ListMap!4130 Nil!51337)) (= lambda!188936 lambda!188933))))

(declare-fun bs!1016848 () Bool)

(assert (= bs!1016848 (and b!4613965 d!1453399)))

(assert (=> bs!1016848 (= (= lt!1768684 lt!1769106) (= lambda!188936 lambda!188935))))

(assert (=> bs!1016840 (= (= lt!1768684 lt!1769090) (= lambda!188936 lambda!188930))))

(assert (=> bs!1016841 (= (= lt!1768684 lt!1768935) (= lambda!188936 lambda!188907))))

(assert (=> bs!1016842 (= (= lt!1768684 (ListMap!4130 Nil!51337)) (= lambda!188936 lambda!188910))))

(declare-fun bs!1016849 () Bool)

(assert (= bs!1016849 (and b!4613965 b!4613852)))

(assert (=> bs!1016849 (= (= lt!1768684 (ListMap!4130 Nil!51337)) (= lambda!188936 lambda!188904))))

(assert (=> bs!1016847 (= (= lt!1768684 lt!1769111) (= lambda!188936 lambda!188934))))

(assert (=> b!4613965 true))

(declare-fun bs!1016850 () Bool)

(declare-fun b!4613966 () Bool)

(assert (= bs!1016850 (and b!4613966 d!1453387)))

(declare-fun lambda!188937 () Int)

(assert (=> bs!1016850 (not (= lambda!188937 lambda!188924))))

(declare-fun bs!1016851 () Bool)

(assert (= bs!1016851 (and b!4613966 b!4613960)))

(assert (=> bs!1016851 (= (= lt!1768684 (ListMap!4130 Nil!51337)) (= lambda!188937 lambda!188932))))

(declare-fun bs!1016852 () Bool)

(assert (= bs!1016852 (and b!4613966 d!1453317)))

(assert (=> bs!1016852 (= (= lt!1768684 lt!1768930) (= lambda!188937 lambda!188908))))

(declare-fun bs!1016853 () Bool)

(assert (= bs!1016853 (and b!4613966 b!4613955)))

(assert (=> bs!1016853 (= (= lt!1768684 (ListMap!4130 Nil!51337)) (= lambda!188937 lambda!188928))))

(declare-fun bs!1016854 () Bool)

(assert (= bs!1016854 (and b!4613966 b!4613956)))

(assert (=> bs!1016854 (= (= lt!1768684 (ListMap!4130 Nil!51337)) (= lambda!188937 lambda!188929))))

(declare-fun bs!1016855 () Bool)

(assert (= bs!1016855 (and b!4613966 b!4613853)))

(assert (=> bs!1016855 (= (= lt!1768684 (ListMap!4130 Nil!51337)) (= lambda!188937 lambda!188906))))

(declare-fun bs!1016856 () Bool)

(assert (= bs!1016856 (and b!4613966 b!4613862)))

(assert (=> bs!1016856 (= (= lt!1768684 lt!1768956) (= lambda!188937 lambda!188911))))

(declare-fun bs!1016857 () Bool)

(assert (= bs!1016857 (and b!4613966 d!1453397)))

(assert (=> bs!1016857 (= (= lt!1768684 lt!1769085) (= lambda!188937 lambda!188931))))

(declare-fun bs!1016858 () Bool)

(assert (= bs!1016858 (and b!4613966 b!4613965)))

(assert (=> bs!1016858 (= lambda!188937 lambda!188936)))

(declare-fun bs!1016859 () Bool)

(assert (= bs!1016859 (and b!4613966 b!4613861)))

(assert (=> bs!1016859 (= (= lt!1768684 (ListMap!4130 Nil!51337)) (= lambda!188937 lambda!188909))))

(declare-fun bs!1016860 () Bool)

(assert (= bs!1016860 (and b!4613966 d!1453283)))

(assert (=> bs!1016860 (not (= lambda!188937 lambda!188823))))

(declare-fun bs!1016861 () Bool)

(assert (= bs!1016861 (and b!4613966 d!1453351)))

(assert (=> bs!1016861 (= (= lt!1768684 lt!1768951) (= lambda!188937 lambda!188912))))

(declare-fun bs!1016862 () Bool)

(assert (= bs!1016862 (and b!4613966 b!4613961)))

(assert (=> bs!1016862 (= (= lt!1768684 (ListMap!4130 Nil!51337)) (= lambda!188937 lambda!188933))))

(declare-fun bs!1016863 () Bool)

(assert (= bs!1016863 (and b!4613966 d!1453399)))

(assert (=> bs!1016863 (= (= lt!1768684 lt!1769106) (= lambda!188937 lambda!188935))))

(assert (=> bs!1016854 (= (= lt!1768684 lt!1769090) (= lambda!188937 lambda!188930))))

(assert (=> bs!1016855 (= (= lt!1768684 lt!1768935) (= lambda!188937 lambda!188907))))

(assert (=> bs!1016856 (= (= lt!1768684 (ListMap!4130 Nil!51337)) (= lambda!188937 lambda!188910))))

(declare-fun bs!1016864 () Bool)

(assert (= bs!1016864 (and b!4613966 b!4613852)))

(assert (=> bs!1016864 (= (= lt!1768684 (ListMap!4130 Nil!51337)) (= lambda!188937 lambda!188904))))

(assert (=> bs!1016862 (= (= lt!1768684 lt!1769111) (= lambda!188937 lambda!188934))))

(assert (=> b!4613966 true))

(declare-fun lambda!188938 () Int)

(assert (=> bs!1016850 (not (= lambda!188938 lambda!188924))))

(declare-fun lt!1769132 () ListMap!4129)

(assert (=> bs!1016851 (= (= lt!1769132 (ListMap!4130 Nil!51337)) (= lambda!188938 lambda!188932))))

(assert (=> bs!1016852 (= (= lt!1769132 lt!1768930) (= lambda!188938 lambda!188908))))

(assert (=> bs!1016853 (= (= lt!1769132 (ListMap!4130 Nil!51337)) (= lambda!188938 lambda!188928))))

(assert (=> bs!1016854 (= (= lt!1769132 (ListMap!4130 Nil!51337)) (= lambda!188938 lambda!188929))))

(assert (=> bs!1016855 (= (= lt!1769132 (ListMap!4130 Nil!51337)) (= lambda!188938 lambda!188906))))

(assert (=> bs!1016856 (= (= lt!1769132 lt!1768956) (= lambda!188938 lambda!188911))))

(assert (=> bs!1016857 (= (= lt!1769132 lt!1769085) (= lambda!188938 lambda!188931))))

(assert (=> bs!1016858 (= (= lt!1769132 lt!1768684) (= lambda!188938 lambda!188936))))

(assert (=> bs!1016859 (= (= lt!1769132 (ListMap!4130 Nil!51337)) (= lambda!188938 lambda!188909))))

(assert (=> bs!1016860 (not (= lambda!188938 lambda!188823))))

(assert (=> bs!1016861 (= (= lt!1769132 lt!1768951) (= lambda!188938 lambda!188912))))

(assert (=> bs!1016863 (= (= lt!1769132 lt!1769106) (= lambda!188938 lambda!188935))))

(assert (=> bs!1016854 (= (= lt!1769132 lt!1769090) (= lambda!188938 lambda!188930))))

(assert (=> bs!1016855 (= (= lt!1769132 lt!1768935) (= lambda!188938 lambda!188907))))

(assert (=> bs!1016856 (= (= lt!1769132 (ListMap!4130 Nil!51337)) (= lambda!188938 lambda!188910))))

(assert (=> bs!1016864 (= (= lt!1769132 (ListMap!4130 Nil!51337)) (= lambda!188938 lambda!188904))))

(assert (=> bs!1016862 (= (= lt!1769132 lt!1769111) (= lambda!188938 lambda!188934))))

(assert (=> bs!1016862 (= (= lt!1769132 (ListMap!4130 Nil!51337)) (= lambda!188938 lambda!188933))))

(assert (=> b!4613966 (= (= lt!1769132 lt!1768684) (= lambda!188938 lambda!188937))))

(assert (=> b!4613966 true))

(declare-fun bs!1016865 () Bool)

(declare-fun d!1453401 () Bool)

(assert (= bs!1016865 (and d!1453401 d!1453387)))

(declare-fun lambda!188939 () Int)

(assert (=> bs!1016865 (not (= lambda!188939 lambda!188924))))

(declare-fun bs!1016866 () Bool)

(assert (= bs!1016866 (and d!1453401 b!4613960)))

(declare-fun lt!1769127 () ListMap!4129)

(assert (=> bs!1016866 (= (= lt!1769127 (ListMap!4130 Nil!51337)) (= lambda!188939 lambda!188932))))

(declare-fun bs!1016867 () Bool)

(assert (= bs!1016867 (and d!1453401 d!1453317)))

(assert (=> bs!1016867 (= (= lt!1769127 lt!1768930) (= lambda!188939 lambda!188908))))

(declare-fun bs!1016868 () Bool)

(assert (= bs!1016868 (and d!1453401 b!4613955)))

(assert (=> bs!1016868 (= (= lt!1769127 (ListMap!4130 Nil!51337)) (= lambda!188939 lambda!188928))))

(declare-fun bs!1016869 () Bool)

(assert (= bs!1016869 (and d!1453401 b!4613956)))

(assert (=> bs!1016869 (= (= lt!1769127 (ListMap!4130 Nil!51337)) (= lambda!188939 lambda!188929))))

(declare-fun bs!1016870 () Bool)

(assert (= bs!1016870 (and d!1453401 b!4613853)))

(assert (=> bs!1016870 (= (= lt!1769127 (ListMap!4130 Nil!51337)) (= lambda!188939 lambda!188906))))

(declare-fun bs!1016871 () Bool)

(assert (= bs!1016871 (and d!1453401 b!4613862)))

(assert (=> bs!1016871 (= (= lt!1769127 lt!1768956) (= lambda!188939 lambda!188911))))

(declare-fun bs!1016872 () Bool)

(assert (= bs!1016872 (and d!1453401 d!1453397)))

(assert (=> bs!1016872 (= (= lt!1769127 lt!1769085) (= lambda!188939 lambda!188931))))

(declare-fun bs!1016873 () Bool)

(assert (= bs!1016873 (and d!1453401 b!4613965)))

(assert (=> bs!1016873 (= (= lt!1769127 lt!1768684) (= lambda!188939 lambda!188936))))

(declare-fun bs!1016874 () Bool)

(assert (= bs!1016874 (and d!1453401 b!4613861)))

(assert (=> bs!1016874 (= (= lt!1769127 (ListMap!4130 Nil!51337)) (= lambda!188939 lambda!188909))))

(declare-fun bs!1016875 () Bool)

(assert (= bs!1016875 (and d!1453401 d!1453283)))

(assert (=> bs!1016875 (not (= lambda!188939 lambda!188823))))

(declare-fun bs!1016876 () Bool)

(assert (= bs!1016876 (and d!1453401 d!1453351)))

(assert (=> bs!1016876 (= (= lt!1769127 lt!1768951) (= lambda!188939 lambda!188912))))

(declare-fun bs!1016877 () Bool)

(assert (= bs!1016877 (and d!1453401 d!1453399)))

(assert (=> bs!1016877 (= (= lt!1769127 lt!1769106) (= lambda!188939 lambda!188935))))

(assert (=> bs!1016869 (= (= lt!1769127 lt!1769090) (= lambda!188939 lambda!188930))))

(assert (=> bs!1016870 (= (= lt!1769127 lt!1768935) (= lambda!188939 lambda!188907))))

(assert (=> bs!1016871 (= (= lt!1769127 (ListMap!4130 Nil!51337)) (= lambda!188939 lambda!188910))))

(declare-fun bs!1016878 () Bool)

(assert (= bs!1016878 (and d!1453401 b!4613852)))

(assert (=> bs!1016878 (= (= lt!1769127 (ListMap!4130 Nil!51337)) (= lambda!188939 lambda!188904))))

(declare-fun bs!1016879 () Bool)

(assert (= bs!1016879 (and d!1453401 b!4613961)))

(assert (=> bs!1016879 (= (= lt!1769127 lt!1769111) (= lambda!188939 lambda!188934))))

(declare-fun bs!1016880 () Bool)

(assert (= bs!1016880 (and d!1453401 b!4613966)))

(assert (=> bs!1016880 (= (= lt!1769127 lt!1769132) (= lambda!188939 lambda!188938))))

(assert (=> bs!1016879 (= (= lt!1769127 (ListMap!4130 Nil!51337)) (= lambda!188939 lambda!188933))))

(assert (=> bs!1016880 (= (= lt!1769127 lt!1768684) (= lambda!188939 lambda!188937))))

(assert (=> d!1453401 true))

(declare-fun b!4613964 () Bool)

(declare-fun res!1932710 () Bool)

(declare-fun e!2878021 () Bool)

(assert (=> b!4613964 (=> (not res!1932710) (not e!2878021))))

(assert (=> b!4613964 (= res!1932710 (forall!10726 (toList!4825 lt!1768684) lambda!188939))))

(declare-fun c!789999 () Bool)

(declare-fun bm!321620 () Bool)

(declare-fun call!321626 () Bool)

(assert (=> bm!321620 (= call!321626 (forall!10726 (ite c!789999 (toList!4825 lt!1768684) (t!358457 oldBucket!40)) (ite c!789999 lambda!188936 lambda!188938)))))

(declare-fun e!2878019 () ListMap!4129)

(assert (=> b!4613965 (= e!2878019 lt!1768684)))

(declare-fun lt!1769131 () Unit!109630)

(declare-fun call!321625 () Unit!109630)

(assert (=> b!4613965 (= lt!1769131 call!321625)))

(declare-fun call!321627 () Bool)

(assert (=> b!4613965 call!321627))

(declare-fun lt!1769129 () Unit!109630)

(assert (=> b!4613965 (= lt!1769129 lt!1769131)))

(assert (=> b!4613965 call!321626))

(declare-fun lt!1769136 () Unit!109630)

(declare-fun Unit!109743 () Unit!109630)

(assert (=> b!4613965 (= lt!1769136 Unit!109743)))

(assert (=> d!1453401 e!2878021))

(declare-fun res!1932709 () Bool)

(assert (=> d!1453401 (=> (not res!1932709) (not e!2878021))))

(assert (=> d!1453401 (= res!1932709 (forall!10726 oldBucket!40 lambda!188939))))

(assert (=> d!1453401 (= lt!1769127 e!2878019)))

(assert (=> d!1453401 (= c!789999 ((_ is Nil!51337) oldBucket!40))))

(assert (=> d!1453401 (noDuplicateKeys!1430 oldBucket!40)))

(assert (=> d!1453401 (= (addToMapMapFromBucket!891 oldBucket!40 lt!1768684) lt!1769127)))

(declare-fun bm!321621 () Bool)

(assert (=> bm!321621 (= call!321627 (forall!10726 (toList!4825 lt!1768684) (ite c!789999 lambda!188936 lambda!188938)))))

(assert (=> b!4613966 (= e!2878019 lt!1769132)))

(declare-fun lt!1769130 () ListMap!4129)

(assert (=> b!4613966 (= lt!1769130 (+!1815 lt!1768684 (h!57341 oldBucket!40)))))

(assert (=> b!4613966 (= lt!1769132 (addToMapMapFromBucket!891 (t!358457 oldBucket!40) (+!1815 lt!1768684 (h!57341 oldBucket!40))))))

(declare-fun lt!1769128 () Unit!109630)

(assert (=> b!4613966 (= lt!1769128 call!321625)))

(assert (=> b!4613966 (forall!10726 (toList!4825 lt!1768684) lambda!188937)))

(declare-fun lt!1769137 () Unit!109630)

(assert (=> b!4613966 (= lt!1769137 lt!1769128)))

(assert (=> b!4613966 (forall!10726 (toList!4825 lt!1769130) lambda!188938)))

(declare-fun lt!1769139 () Unit!109630)

(declare-fun Unit!109744 () Unit!109630)

(assert (=> b!4613966 (= lt!1769139 Unit!109744)))

(assert (=> b!4613966 call!321626))

(declare-fun lt!1769133 () Unit!109630)

(declare-fun Unit!109745 () Unit!109630)

(assert (=> b!4613966 (= lt!1769133 Unit!109745)))

(declare-fun lt!1769135 () Unit!109630)

(declare-fun Unit!109746 () Unit!109630)

(assert (=> b!4613966 (= lt!1769135 Unit!109746)))

(declare-fun lt!1769141 () Unit!109630)

(assert (=> b!4613966 (= lt!1769141 (forallContained!2953 (toList!4825 lt!1769130) lambda!188938 (h!57341 oldBucket!40)))))

(assert (=> b!4613966 (contains!14304 lt!1769130 (_1!29377 (h!57341 oldBucket!40)))))

(declare-fun lt!1769140 () Unit!109630)

(declare-fun Unit!109747 () Unit!109630)

(assert (=> b!4613966 (= lt!1769140 Unit!109747)))

(assert (=> b!4613966 (contains!14304 lt!1769132 (_1!29377 (h!57341 oldBucket!40)))))

(declare-fun lt!1769142 () Unit!109630)

(declare-fun Unit!109748 () Unit!109630)

(assert (=> b!4613966 (= lt!1769142 Unit!109748)))

(assert (=> b!4613966 (forall!10726 oldBucket!40 lambda!188938)))

(declare-fun lt!1769138 () Unit!109630)

(declare-fun Unit!109749 () Unit!109630)

(assert (=> b!4613966 (= lt!1769138 Unit!109749)))

(assert (=> b!4613966 (forall!10726 (toList!4825 lt!1769130) lambda!188938)))

(declare-fun lt!1769124 () Unit!109630)

(declare-fun Unit!109750 () Unit!109630)

(assert (=> b!4613966 (= lt!1769124 Unit!109750)))

(declare-fun lt!1769125 () Unit!109630)

(declare-fun Unit!109751 () Unit!109630)

(assert (=> b!4613966 (= lt!1769125 Unit!109751)))

(declare-fun lt!1769123 () Unit!109630)

(assert (=> b!4613966 (= lt!1769123 (addForallContainsKeyThenBeforeAdding!460 lt!1768684 lt!1769132 (_1!29377 (h!57341 oldBucket!40)) (_2!29377 (h!57341 oldBucket!40))))))

(assert (=> b!4613966 (forall!10726 (toList!4825 lt!1768684) lambda!188938)))

(declare-fun lt!1769126 () Unit!109630)

(assert (=> b!4613966 (= lt!1769126 lt!1769123)))

(assert (=> b!4613966 call!321627))

(declare-fun lt!1769134 () Unit!109630)

(declare-fun Unit!109752 () Unit!109630)

(assert (=> b!4613966 (= lt!1769134 Unit!109752)))

(declare-fun res!1932708 () Bool)

(assert (=> b!4613966 (= res!1932708 (forall!10726 oldBucket!40 lambda!188938))))

(declare-fun e!2878020 () Bool)

(assert (=> b!4613966 (=> (not res!1932708) (not e!2878020))))

(assert (=> b!4613966 e!2878020))

(declare-fun lt!1769122 () Unit!109630)

(declare-fun Unit!109753 () Unit!109630)

(assert (=> b!4613966 (= lt!1769122 Unit!109753)))

(declare-fun bm!321622 () Bool)

(assert (=> bm!321622 (= call!321625 (lemmaContainsAllItsOwnKeys!461 lt!1768684))))

(declare-fun b!4613967 () Bool)

(assert (=> b!4613967 (= e!2878021 (invariantList!1159 (toList!4825 lt!1769127)))))

(declare-fun b!4613968 () Bool)

(assert (=> b!4613968 (= e!2878020 (forall!10726 (toList!4825 lt!1768684) lambda!188938))))

(assert (= (and d!1453401 c!789999) b!4613965))

(assert (= (and d!1453401 (not c!789999)) b!4613966))

(assert (= (and b!4613966 res!1932708) b!4613968))

(assert (= (or b!4613965 b!4613966) bm!321622))

(assert (= (or b!4613965 b!4613966) bm!321620))

(assert (= (or b!4613965 b!4613966) bm!321621))

(assert (= (and d!1453401 res!1932709) b!4613964))

(assert (= (and b!4613964 res!1932710) b!4613967))

(declare-fun m!5445957 () Bool)

(assert (=> d!1453401 m!5445957))

(assert (=> d!1453401 m!5445269))

(declare-fun m!5445959 () Bool)

(assert (=> bm!321620 m!5445959))

(declare-fun m!5445961 () Bool)

(assert (=> b!4613966 m!5445961))

(assert (=> b!4613966 m!5445961))

(declare-fun m!5445963 () Bool)

(assert (=> b!4613966 m!5445963))

(declare-fun m!5445965 () Bool)

(assert (=> b!4613966 m!5445965))

(declare-fun m!5445967 () Bool)

(assert (=> b!4613966 m!5445967))

(assert (=> b!4613966 m!5445967))

(declare-fun m!5445969 () Bool)

(assert (=> b!4613966 m!5445969))

(declare-fun m!5445971 () Bool)

(assert (=> b!4613966 m!5445971))

(declare-fun m!5445973 () Bool)

(assert (=> b!4613966 m!5445973))

(declare-fun m!5445975 () Bool)

(assert (=> b!4613966 m!5445975))

(assert (=> b!4613966 m!5445971))

(declare-fun m!5445977 () Bool)

(assert (=> b!4613966 m!5445977))

(declare-fun m!5445979 () Bool)

(assert (=> b!4613966 m!5445979))

(declare-fun m!5445981 () Bool)

(assert (=> bm!321622 m!5445981))

(declare-fun m!5445983 () Bool)

(assert (=> bm!321621 m!5445983))

(declare-fun m!5445985 () Bool)

(assert (=> b!4613964 m!5445985))

(assert (=> b!4613968 m!5445979))

(declare-fun m!5445987 () Bool)

(assert (=> b!4613967 m!5445987))

(assert (=> b!4613682 d!1453401))

(declare-fun bs!1016881 () Bool)

(declare-fun d!1453403 () Bool)

(assert (= bs!1016881 (and d!1453403 b!4613679)))

(declare-fun lambda!188940 () Int)

(assert (=> bs!1016881 (= lambda!188940 lambda!188820)))

(declare-fun bs!1016882 () Bool)

(assert (= bs!1016882 (and d!1453403 d!1453383)))

(assert (=> bs!1016882 (= lambda!188940 lambda!188923)))

(declare-fun bs!1016883 () Bool)

(assert (= bs!1016883 (and d!1453403 d!1453395)))

(assert (=> bs!1016883 (= lambda!188940 lambda!188927)))

(declare-fun lt!1769143 () ListMap!4129)

(assert (=> d!1453403 (invariantList!1159 (toList!4825 lt!1769143))))

(declare-fun e!2878022 () ListMap!4129)

(assert (=> d!1453403 (= lt!1769143 e!2878022)))

(declare-fun c!790000 () Bool)

(assert (=> d!1453403 (= c!790000 ((_ is Cons!51338) Nil!51338))))

(assert (=> d!1453403 (forall!10724 Nil!51338 lambda!188940)))

(assert (=> d!1453403 (= (extractMap!1486 Nil!51338) lt!1769143)))

(declare-fun b!4613969 () Bool)

(assert (=> b!4613969 (= e!2878022 (addToMapMapFromBucket!891 (_2!29378 (h!57342 Nil!51338)) (extractMap!1486 (t!358458 Nil!51338))))))

(declare-fun b!4613970 () Bool)

(assert (=> b!4613970 (= e!2878022 (ListMap!4130 Nil!51337))))

(assert (= (and d!1453403 c!790000) b!4613969))

(assert (= (and d!1453403 (not c!790000)) b!4613970))

(declare-fun m!5445989 () Bool)

(assert (=> d!1453403 m!5445989))

(declare-fun m!5445991 () Bool)

(assert (=> d!1453403 m!5445991))

(declare-fun m!5445993 () Bool)

(assert (=> b!4613969 m!5445993))

(assert (=> b!4613969 m!5445993))

(declare-fun m!5445995 () Bool)

(assert (=> b!4613969 m!5445995))

(assert (=> b!4613682 d!1453403))

(declare-fun d!1453405 () Bool)

(declare-fun res!1932711 () Bool)

(declare-fun e!2878023 () Bool)

(assert (=> d!1453405 (=> res!1932711 e!2878023)))

(assert (=> d!1453405 (= res!1932711 (not ((_ is Cons!51337) oldBucket!40)))))

(assert (=> d!1453405 (= (noDuplicateKeys!1430 oldBucket!40) e!2878023)))

(declare-fun b!4613971 () Bool)

(declare-fun e!2878024 () Bool)

(assert (=> b!4613971 (= e!2878023 e!2878024)))

(declare-fun res!1932712 () Bool)

(assert (=> b!4613971 (=> (not res!1932712) (not e!2878024))))

(assert (=> b!4613971 (= res!1932712 (not (containsKey!2302 (t!358457 oldBucket!40) (_1!29377 (h!57341 oldBucket!40)))))))

(declare-fun b!4613972 () Bool)

(assert (=> b!4613972 (= e!2878024 (noDuplicateKeys!1430 (t!358457 oldBucket!40)))))

(assert (= (and d!1453405 (not res!1932711)) b!4613971))

(assert (= (and b!4613971 res!1932712) b!4613972))

(declare-fun m!5445997 () Bool)

(assert (=> b!4613971 m!5445997))

(declare-fun m!5445999 () Bool)

(assert (=> b!4613972 m!5445999))

(assert (=> start!461436 d!1453405))

(declare-fun bs!1016884 () Bool)

(declare-fun d!1453407 () Bool)

(assert (= bs!1016884 (and d!1453407 b!4613679)))

(declare-fun lambda!188941 () Int)

(assert (=> bs!1016884 (= lambda!188941 lambda!188820)))

(declare-fun bs!1016885 () Bool)

(assert (= bs!1016885 (and d!1453407 d!1453383)))

(assert (=> bs!1016885 (= lambda!188941 lambda!188923)))

(declare-fun bs!1016886 () Bool)

(assert (= bs!1016886 (and d!1453407 d!1453395)))

(assert (=> bs!1016886 (= lambda!188941 lambda!188927)))

(declare-fun bs!1016887 () Bool)

(assert (= bs!1016887 (and d!1453407 d!1453403)))

(assert (=> bs!1016887 (= lambda!188941 lambda!188940)))

(declare-fun lt!1769144 () ListMap!4129)

(assert (=> d!1453407 (invariantList!1159 (toList!4825 lt!1769144))))

(declare-fun e!2878025 () ListMap!4129)

(assert (=> d!1453407 (= lt!1769144 e!2878025)))

(declare-fun c!790001 () Bool)

(assert (=> d!1453407 (= c!790001 ((_ is Cons!51338) (Cons!51338 (tuple2!52169 hash!414 newBucket!224) Nil!51338)))))

(assert (=> d!1453407 (forall!10724 (Cons!51338 (tuple2!52169 hash!414 newBucket!224) Nil!51338) lambda!188941)))

(assert (=> d!1453407 (= (extractMap!1486 (Cons!51338 (tuple2!52169 hash!414 newBucket!224) Nil!51338)) lt!1769144)))

(declare-fun b!4613973 () Bool)

(assert (=> b!4613973 (= e!2878025 (addToMapMapFromBucket!891 (_2!29378 (h!57342 (Cons!51338 (tuple2!52169 hash!414 newBucket!224) Nil!51338))) (extractMap!1486 (t!358458 (Cons!51338 (tuple2!52169 hash!414 newBucket!224) Nil!51338)))))))

(declare-fun b!4613974 () Bool)

(assert (=> b!4613974 (= e!2878025 (ListMap!4130 Nil!51337))))

(assert (= (and d!1453407 c!790001) b!4613973))

(assert (= (and d!1453407 (not c!790001)) b!4613974))

(declare-fun m!5446001 () Bool)

(assert (=> d!1453407 m!5446001))

(declare-fun m!5446003 () Bool)

(assert (=> d!1453407 m!5446003))

(declare-fun m!5446005 () Bool)

(assert (=> b!4613973 m!5446005))

(assert (=> b!4613973 m!5446005))

(declare-fun m!5446007 () Bool)

(assert (=> b!4613973 m!5446007))

(assert (=> b!4613681 d!1453407))

(declare-fun bs!1016888 () Bool)

(declare-fun d!1453409 () Bool)

(assert (= bs!1016888 (and d!1453409 b!4613679)))

(declare-fun lambda!188942 () Int)

(assert (=> bs!1016888 (= lambda!188942 lambda!188820)))

(declare-fun bs!1016889 () Bool)

(assert (= bs!1016889 (and d!1453409 d!1453403)))

(assert (=> bs!1016889 (= lambda!188942 lambda!188940)))

(declare-fun bs!1016890 () Bool)

(assert (= bs!1016890 (and d!1453409 d!1453395)))

(assert (=> bs!1016890 (= lambda!188942 lambda!188927)))

(declare-fun bs!1016891 () Bool)

(assert (= bs!1016891 (and d!1453409 d!1453383)))

(assert (=> bs!1016891 (= lambda!188942 lambda!188923)))

(declare-fun bs!1016892 () Bool)

(assert (= bs!1016892 (and d!1453409 d!1453407)))

(assert (=> bs!1016892 (= lambda!188942 lambda!188941)))

(declare-fun lt!1769145 () ListMap!4129)

(assert (=> d!1453409 (invariantList!1159 (toList!4825 lt!1769145))))

(declare-fun e!2878026 () ListMap!4129)

(assert (=> d!1453409 (= lt!1769145 e!2878026)))

(declare-fun c!790002 () Bool)

(assert (=> d!1453409 (= c!790002 ((_ is Cons!51338) lt!1768677))))

(assert (=> d!1453409 (forall!10724 lt!1768677 lambda!188942)))

(assert (=> d!1453409 (= (extractMap!1486 lt!1768677) lt!1769145)))

(declare-fun b!4613975 () Bool)

(assert (=> b!4613975 (= e!2878026 (addToMapMapFromBucket!891 (_2!29378 (h!57342 lt!1768677)) (extractMap!1486 (t!358458 lt!1768677))))))

(declare-fun b!4613976 () Bool)

(assert (=> b!4613976 (= e!2878026 (ListMap!4130 Nil!51337))))

(assert (= (and d!1453409 c!790002) b!4613975))

(assert (= (and d!1453409 (not c!790002)) b!4613976))

(declare-fun m!5446009 () Bool)

(assert (=> d!1453409 m!5446009))

(declare-fun m!5446011 () Bool)

(assert (=> d!1453409 m!5446011))

(declare-fun m!5446013 () Bool)

(assert (=> b!4613975 m!5446013))

(assert (=> b!4613975 m!5446013))

(declare-fun m!5446015 () Bool)

(assert (=> b!4613975 m!5446015))

(assert (=> b!4613681 d!1453409))

(declare-fun tp!1341474 () Bool)

(declare-fun b!4613981 () Bool)

(declare-fun e!2878029 () Bool)

(assert (=> b!4613981 (= e!2878029 (and tp_is_empty!29013 tp_is_empty!29015 tp!1341474))))

(assert (=> b!4613680 (= tp!1341466 e!2878029)))

(assert (= (and b!4613680 ((_ is Cons!51337) (t!358457 oldBucket!40))) b!4613981))

(declare-fun b!4613982 () Bool)

(declare-fun e!2878030 () Bool)

(declare-fun tp!1341475 () Bool)

(assert (=> b!4613982 (= e!2878030 (and tp_is_empty!29013 tp_is_empty!29015 tp!1341475))))

(assert (=> b!4613670 (= tp!1341467 e!2878030)))

(assert (= (and b!4613670 ((_ is Cons!51337) (t!358457 newBucket!224))) b!4613982))

(declare-fun b_lambda!170499 () Bool)

(assert (= b_lambda!170493 (or b!4613679 b_lambda!170499)))

(declare-fun bs!1016893 () Bool)

(declare-fun d!1453411 () Bool)

(assert (= bs!1016893 (and d!1453411 b!4613679)))

(assert (=> bs!1016893 (= (dynLambda!21452 lambda!188820 (h!57342 lt!1768676)) (noDuplicateKeys!1430 (_2!29378 (h!57342 lt!1768676))))))

(declare-fun m!5446017 () Bool)

(assert (=> bs!1016893 m!5446017))

(assert (=> b!4613718 d!1453411))

(check-sat (not b!4613945) (not d!1453317) (not b!4613947) (not bm!321597) (not b!4613787) (not b!4613968) (not d!1453401) (not b!4613882) (not b!4613939) (not d!1453391) (not b!4613935) (not b!4613969) (not d!1453351) (not b!4613928) (not b!4613917) (not b!4613963) (not b!4613954) (not b!4613745) (not b!4613786) (not bm!321621) (not b!4613919) (not d!1453409) (not b!4613941) (not b!4613863) (not bm!321600) (not b!4613881) (not bm!321622) (not b!4613950) (not d!1453395) (not bm!321599) (not bm!321598) (not d!1453407) (not b!4613973) (not d!1453371) (not bm!321615) (not b!4613962) (not b!4613940) (not b_lambda!170499) tp_is_empty!29015 (not b!4613975) (not b!4613923) (not b!4613957) (not b!4613966) (not d!1453389) (not d!1453369) (not bm!321619) (not d!1453397) (not b!4613936) (not d!1453353) (not bm!321616) (not d!1453305) (not b!4613959) (not b!4613958) (not d!1453387) (not b!4613853) (not bm!321618) (not bs!1016893) (not b!4613864) (not b!4613949) (not b!4613937) (not bm!321617) (not d!1453359) (not d!1453403) (not bm!321614) (not bm!321611) (not b!4613961) (not b!4613944) (not d!1453383) (not b!4613915) (not b!4613981) (not d!1453373) (not b!4613967) (not b!4613972) (not bm!321601) (not b!4613956) (not b!4613785) (not b!4613938) (not b!4613884) (not d!1453379) (not b!4613851) (not b!4613855) (not b!4613862) (not b!4613918) (not b!4613883) (not b!4613920) (not d!1453313) (not bm!321612) (not d!1453399) tp_is_empty!29013 (not b!4613784) (not b!4613946) (not bm!321620) (not d!1453393) (not d!1453303) (not b!4613948) (not b!4613719) (not b!4613761) (not d!1453361) (not d!1453289) (not b!4613953) (not b!4613854) (not b!4613760) (not b!4613916) (not bm!321613) (not b!4613860) (not bm!321602) (not b!4613964) (not b!4613982) (not d!1453283) (not b!4613971))
(check-sat)
