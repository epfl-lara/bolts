; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471776 () Bool)

(assert start!471776)

(declare-fun tp_is_empty!30277 () Bool)

(declare-fun e!2916932 () Bool)

(declare-fun tp_is_empty!30279 () Bool)

(declare-fun b!4674624 () Bool)

(declare-fun tp!1344425 () Bool)

(assert (=> b!4674624 (= e!2916932 (and tp_is_empty!30277 tp_is_empty!30279 tp!1344425))))

(declare-fun tp!1344424 () Bool)

(declare-fun b!4674625 () Bool)

(declare-fun e!2916929 () Bool)

(assert (=> b!4674625 (= e!2916929 (and tp_is_empty!30277 tp_is_empty!30279 tp!1344424))))

(declare-fun b!4674626 () Bool)

(declare-fun res!1968539 () Bool)

(declare-fun e!2916928 () Bool)

(assert (=> b!4674626 (=> res!1968539 e!2916928)))

(declare-datatypes ((K!13515 0))(
  ( (K!13516 (val!19083 Int)) )
))
(declare-datatypes ((V!13761 0))(
  ( (V!13762 (val!19084 Int)) )
))
(declare-datatypes ((tuple2!53378 0))(
  ( (tuple2!53379 (_1!29983 K!13515) (_2!29983 V!13761)) )
))
(declare-datatypes ((List!52265 0))(
  ( (Nil!52141) (Cons!52141 (h!58334 tuple2!53378) (t!359403 List!52265)) )
))
(declare-fun lt!1834910 () List!52265)

(declare-fun newBucket!218 () List!52265)

(declare-datatypes ((ListMap!4745 0))(
  ( (ListMap!4746 (toList!5381 List!52265)) )
))
(declare-fun lt!1834912 () ListMap!4745)

(declare-fun addToMapMapFromBucket!1178 (List!52265 ListMap!4745) ListMap!4745)

(assert (=> b!4674626 (= res!1968539 (not (= (addToMapMapFromBucket!1178 lt!1834910 lt!1834912) (addToMapMapFromBucket!1178 newBucket!218 lt!1834912))))))

(declare-fun b!4674627 () Bool)

(declare-fun res!1968543 () Bool)

(declare-fun e!2916926 () Bool)

(assert (=> b!4674627 (=> (not res!1968543) (not e!2916926))))

(declare-datatypes ((Hashable!6115 0))(
  ( (HashableExt!6114 (__x!31818 Int)) )
))
(declare-fun hashF!1323 () Hashable!6115)

(declare-fun oldBucket!34 () List!52265)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1572 (List!52265 (_ BitVec 64) Hashable!6115) Bool)

(assert (=> b!4674627 (= res!1968543 (allKeysSameHash!1572 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4674629 () Bool)

(declare-fun res!1968544 () Bool)

(declare-fun e!2916931 () Bool)

(assert (=> b!4674629 (=> (not res!1968544) (not e!2916931))))

(declare-datatypes ((tuple2!53380 0))(
  ( (tuple2!53381 (_1!29984 (_ BitVec 64)) (_2!29984 List!52265)) )
))
(declare-datatypes ((List!52266 0))(
  ( (Nil!52142) (Cons!52142 (h!58335 tuple2!53380) (t!359404 List!52266)) )
))
(declare-datatypes ((ListLongMap!3911 0))(
  ( (ListLongMap!3912 (toList!5382 List!52266)) )
))
(declare-fun lm!2023 () ListLongMap!3911)

(get-info :version)

(assert (=> b!4674629 (= res!1968544 ((_ is Cons!52142) (toList!5382 lm!2023)))))

(declare-fun b!4674630 () Bool)

(declare-fun res!1968541 () Bool)

(assert (=> b!4674630 (=> (not res!1968541) (not e!2916931))))

(declare-fun allKeysSameHashInMap!1660 (ListLongMap!3911 Hashable!6115) Bool)

(assert (=> b!4674630 (= res!1968541 (allKeysSameHashInMap!1660 lm!2023 hashF!1323))))

(declare-fun b!4674631 () Bool)

(declare-fun res!1968540 () Bool)

(assert (=> b!4674631 (=> (not res!1968540) (not e!2916926))))

(declare-fun noDuplicateKeys!1746 (List!52265) Bool)

(assert (=> b!4674631 (= res!1968540 (noDuplicateKeys!1746 oldBucket!34))))

(declare-fun b!4674632 () Bool)

(declare-fun res!1968532 () Bool)

(assert (=> b!4674632 (=> res!1968532 e!2916928)))

(declare-fun extractMap!1772 (List!52266) ListMap!4745)

(assert (=> b!4674632 (= res!1968532 (not (= (extractMap!1772 (Cons!52142 (tuple2!53381 hash!405 lt!1834910) (t!359404 (toList!5382 lm!2023)))) (extractMap!1772 (Cons!52142 (tuple2!53381 hash!405 newBucket!218) (t!359404 (toList!5382 lm!2023)))))))))

(declare-fun b!4674633 () Bool)

(declare-fun res!1968536 () Bool)

(assert (=> b!4674633 (=> (not res!1968536) (not e!2916931))))

(declare-fun key!4653 () K!13515)

(declare-fun hash!3906 (Hashable!6115 K!13515) (_ BitVec 64))

(assert (=> b!4674633 (= res!1968536 (= (hash!3906 hashF!1323 key!4653) hash!405))))

(declare-fun b!4674634 () Bool)

(declare-fun res!1968545 () Bool)

(assert (=> b!4674634 (=> (not res!1968545) (not e!2916931))))

(declare-fun head!9786 (List!52266) tuple2!53380)

(assert (=> b!4674634 (= res!1968545 (= (head!9786 (toList!5382 lm!2023)) (tuple2!53381 hash!405 oldBucket!34)))))

(declare-fun b!4674635 () Bool)

(declare-fun res!1968535 () Bool)

(assert (=> b!4674635 (=> (not res!1968535) (not e!2916926))))

(declare-fun removePairForKey!1341 (List!52265 K!13515) List!52265)

(assert (=> b!4674635 (= res!1968535 (= (removePairForKey!1341 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4674636 () Bool)

(declare-fun e!2916930 () Bool)

(declare-fun tp!1344423 () Bool)

(assert (=> b!4674636 (= e!2916930 tp!1344423)))

(declare-fun b!4674637 () Bool)

(declare-fun res!1968542 () Bool)

(assert (=> b!4674637 (=> (not res!1968542) (not e!2916926))))

(assert (=> b!4674637 (= res!1968542 (noDuplicateKeys!1746 newBucket!218))))

(declare-fun b!4674628 () Bool)

(assert (=> b!4674628 (= e!2916926 e!2916931)))

(declare-fun res!1968537 () Bool)

(assert (=> b!4674628 (=> (not res!1968537) (not e!2916931))))

(declare-fun lt!1834911 () ListMap!4745)

(declare-fun contains!15300 (ListMap!4745 K!13515) Bool)

(assert (=> b!4674628 (= res!1968537 (contains!15300 lt!1834911 key!4653))))

(assert (=> b!4674628 (= lt!1834911 (extractMap!1772 (toList!5382 lm!2023)))))

(declare-fun res!1968533 () Bool)

(assert (=> start!471776 (=> (not res!1968533) (not e!2916926))))

(declare-fun lambda!203297 () Int)

(declare-fun forall!11161 (List!52266 Int) Bool)

(assert (=> start!471776 (= res!1968533 (forall!11161 (toList!5382 lm!2023) lambda!203297))))

(assert (=> start!471776 e!2916926))

(declare-fun inv!67389 (ListLongMap!3911) Bool)

(assert (=> start!471776 (and (inv!67389 lm!2023) e!2916930)))

(assert (=> start!471776 tp_is_empty!30277))

(assert (=> start!471776 e!2916929))

(assert (=> start!471776 true))

(assert (=> start!471776 e!2916932))

(declare-fun b!4674638 () Bool)

(declare-fun e!2916927 () Bool)

(assert (=> b!4674638 (= e!2916927 e!2916928)))

(declare-fun res!1968534 () Bool)

(assert (=> b!4674638 (=> res!1968534 e!2916928)))

(assert (=> b!4674638 (= res!1968534 (not (= lt!1834910 newBucket!218)))))

(declare-fun tail!8332 (List!52265) List!52265)

(assert (=> b!4674638 (= lt!1834910 (tail!8332 oldBucket!34))))

(declare-fun b!4674639 () Bool)

(declare-fun res!1968531 () Bool)

(assert (=> b!4674639 (=> (not res!1968531) (not e!2916931))))

(assert (=> b!4674639 (= res!1968531 (allKeysSameHash!1572 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4674640 () Bool)

(assert (=> b!4674640 (= e!2916928 (not (= oldBucket!34 Nil!52141)))))

(declare-fun b!4674641 () Bool)

(assert (=> b!4674641 (= e!2916931 (not e!2916927))))

(declare-fun res!1968538 () Bool)

(assert (=> b!4674641 (=> res!1968538 e!2916927)))

(assert (=> b!4674641 (= res!1968538 (or (not ((_ is Cons!52141) oldBucket!34)) (not (= (_1!29983 (h!58334 oldBucket!34)) key!4653))))))

(assert (=> b!4674641 (= lt!1834911 (addToMapMapFromBucket!1178 (_2!29984 (h!58335 (toList!5382 lm!2023))) lt!1834912))))

(assert (=> b!4674641 (= lt!1834912 (extractMap!1772 (t!359404 (toList!5382 lm!2023))))))

(declare-fun tail!8333 (ListLongMap!3911) ListLongMap!3911)

(assert (=> b!4674641 (= (t!359404 (toList!5382 lm!2023)) (toList!5382 (tail!8333 lm!2023)))))

(assert (= (and start!471776 res!1968533) b!4674631))

(assert (= (and b!4674631 res!1968540) b!4674637))

(assert (= (and b!4674637 res!1968542) b!4674635))

(assert (= (and b!4674635 res!1968535) b!4674627))

(assert (= (and b!4674627 res!1968543) b!4674628))

(assert (= (and b!4674628 res!1968537) b!4674633))

(assert (= (and b!4674633 res!1968536) b!4674639))

(assert (= (and b!4674639 res!1968531) b!4674630))

(assert (= (and b!4674630 res!1968541) b!4674634))

(assert (= (and b!4674634 res!1968545) b!4674629))

(assert (= (and b!4674629 res!1968544) b!4674641))

(assert (= (and b!4674641 (not res!1968538)) b!4674638))

(assert (= (and b!4674638 (not res!1968534)) b!4674632))

(assert (= (and b!4674632 (not res!1968532)) b!4674626))

(assert (= (and b!4674626 (not res!1968539)) b!4674640))

(assert (= start!471776 b!4674636))

(assert (= (and start!471776 ((_ is Cons!52141) oldBucket!34)) b!4674625))

(assert (= (and start!471776 ((_ is Cons!52141) newBucket!218)) b!4674624))

(declare-fun m!5567981 () Bool)

(assert (=> start!471776 m!5567981))

(declare-fun m!5567983 () Bool)

(assert (=> start!471776 m!5567983))

(declare-fun m!5567985 () Bool)

(assert (=> b!4674627 m!5567985))

(declare-fun m!5567987 () Bool)

(assert (=> b!4674637 m!5567987))

(declare-fun m!5567989 () Bool)

(assert (=> b!4674641 m!5567989))

(declare-fun m!5567991 () Bool)

(assert (=> b!4674641 m!5567991))

(declare-fun m!5567993 () Bool)

(assert (=> b!4674641 m!5567993))

(declare-fun m!5567995 () Bool)

(assert (=> b!4674633 m!5567995))

(declare-fun m!5567997 () Bool)

(assert (=> b!4674631 m!5567997))

(declare-fun m!5567999 () Bool)

(assert (=> b!4674638 m!5567999))

(declare-fun m!5568001 () Bool)

(assert (=> b!4674634 m!5568001))

(declare-fun m!5568003 () Bool)

(assert (=> b!4674632 m!5568003))

(declare-fun m!5568005 () Bool)

(assert (=> b!4674632 m!5568005))

(declare-fun m!5568007 () Bool)

(assert (=> b!4674639 m!5568007))

(declare-fun m!5568009 () Bool)

(assert (=> b!4674635 m!5568009))

(declare-fun m!5568011 () Bool)

(assert (=> b!4674630 m!5568011))

(declare-fun m!5568013 () Bool)

(assert (=> b!4674628 m!5568013))

(declare-fun m!5568015 () Bool)

(assert (=> b!4674628 m!5568015))

(declare-fun m!5568017 () Bool)

(assert (=> b!4674626 m!5568017))

(declare-fun m!5568019 () Bool)

(assert (=> b!4674626 m!5568019))

(check-sat (not b!4674625) (not b!4674632) (not b!4674624) tp_is_empty!30277 (not b!4674639) (not start!471776) (not b!4674627) (not b!4674630) (not b!4674637) (not b!4674631) (not b!4674638) (not b!4674628) (not b!4674633) (not b!4674635) (not b!4674626) (not b!4674634) tp_is_empty!30279 (not b!4674641) (not b!4674636))
(check-sat)
