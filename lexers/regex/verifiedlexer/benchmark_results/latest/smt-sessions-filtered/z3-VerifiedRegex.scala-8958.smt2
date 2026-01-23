; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!481108 () Bool)

(assert start!481108)

(declare-fun b!4725600 () Bool)

(declare-fun e!2947350 () Bool)

(declare-fun e!2947349 () Bool)

(assert (=> b!4725600 (= e!2947350 e!2947349)))

(declare-fun res!1999770 () Bool)

(assert (=> b!4725600 (=> res!1999770 e!2947349)))

(declare-datatypes ((K!14195 0))(
  ( (K!14196 (val!19627 Int)) )
))
(declare-datatypes ((V!14441 0))(
  ( (V!14442 (val!19628 Int)) )
))
(declare-datatypes ((tuple2!54466 0))(
  ( (tuple2!54467 (_1!30527 K!14195) (_2!30527 V!14441)) )
))
(declare-datatypes ((List!52966 0))(
  ( (Nil!52842) (Cons!52842 (h!59193 tuple2!54466) (t!360240 List!52966)) )
))
(declare-fun lt!1890425 () List!52966)

(declare-fun newBucket!218 () List!52966)

(assert (=> b!4725600 (= res!1999770 (not (= lt!1890425 newBucket!218)))))

(declare-fun oldBucket!34 () List!52966)

(declare-fun tail!9015 (List!52966) List!52966)

(assert (=> b!4725600 (= lt!1890425 (tail!9015 oldBucket!34))))

(declare-fun b!4725601 () Bool)

(declare-fun res!1999773 () Bool)

(declare-fun e!2947353 () Bool)

(assert (=> b!4725601 (=> res!1999773 e!2947353)))

(declare-datatypes ((ListMap!5289 0))(
  ( (ListMap!5290 (toList!5925 List!52966)) )
))
(declare-fun lt!1890431 () ListMap!5289)

(declare-fun lt!1890430 () ListMap!5289)

(declare-fun eq!1135 (ListMap!5289 ListMap!5289) Bool)

(assert (=> b!4725601 (= res!1999773 (not (eq!1135 lt!1890431 lt!1890430)))))

(declare-fun tp_is_empty!31367 () Bool)

(declare-fun tp_is_empty!31365 () Bool)

(declare-fun tp!1348502 () Bool)

(declare-fun b!4725602 () Bool)

(declare-fun e!2947355 () Bool)

(assert (=> b!4725602 (= e!2947355 (and tp_is_empty!31365 tp_is_empty!31367 tp!1348502))))

(declare-fun b!4725603 () Bool)

(declare-fun e!2947346 () Bool)

(assert (=> b!4725603 (= e!2947346 e!2947353)))

(declare-fun res!1999766 () Bool)

(assert (=> b!4725603 (=> res!1999766 e!2947353)))

(declare-fun lt!1890419 () ListMap!5289)

(assert (=> b!4725603 (= res!1999766 (not (eq!1135 lt!1890430 lt!1890419)))))

(declare-fun lt!1890418 () ListMap!5289)

(assert (=> b!4725603 (eq!1135 lt!1890418 lt!1890430)))

(declare-fun lt!1890428 () ListMap!5289)

(declare-fun key!4653 () K!14195)

(declare-fun -!754 (ListMap!5289 K!14195) ListMap!5289)

(assert (=> b!4725603 (= lt!1890430 (-!754 lt!1890428 key!4653))))

(declare-datatypes ((Unit!130883 0))(
  ( (Unit!130884) )
))
(declare-fun lt!1890427 () Unit!130883)

(declare-fun lt!1890424 () ListMap!5289)

(declare-fun lemmaRemovePreservesEq!122 (ListMap!5289 ListMap!5289 K!14195) Unit!130883)

(assert (=> b!4725603 (= lt!1890427 (lemmaRemovePreservesEq!122 lt!1890424 lt!1890428 key!4653))))

(declare-fun b!4725604 () Bool)

(declare-fun e!2947354 () Bool)

(declare-fun tp!1348501 () Bool)

(assert (=> b!4725604 (= e!2947354 tp!1348501)))

(declare-fun b!4725605 () Bool)

(declare-fun e!2947345 () Bool)

(assert (=> b!4725605 (= e!2947345 (not e!2947350))))

(declare-fun res!1999761 () Bool)

(assert (=> b!4725605 (=> res!1999761 e!2947350)))

(get-info :version)

(assert (=> b!4725605 (= res!1999761 (or (not ((_ is Cons!52842) oldBucket!34)) (not (= (_1!30527 (h!59193 oldBucket!34)) key!4653))))))

(declare-fun lt!1890417 () ListMap!5289)

(declare-datatypes ((tuple2!54468 0))(
  ( (tuple2!54469 (_1!30528 (_ BitVec 64)) (_2!30528 List!52966)) )
))
(declare-datatypes ((List!52967 0))(
  ( (Nil!52843) (Cons!52843 (h!59194 tuple2!54468) (t!360241 List!52967)) )
))
(declare-datatypes ((ListLongMap!4455 0))(
  ( (ListLongMap!4456 (toList!5926 List!52967)) )
))
(declare-fun lm!2023 () ListLongMap!4455)

(declare-fun lt!1890429 () ListMap!5289)

(declare-fun addToMapMapFromBucket!1448 (List!52966 ListMap!5289) ListMap!5289)

(assert (=> b!4725605 (= lt!1890417 (addToMapMapFromBucket!1448 (_2!30528 (h!59194 (toList!5926 lm!2023))) lt!1890429))))

(declare-fun extractMap!2044 (List!52967) ListMap!5289)

(assert (=> b!4725605 (= lt!1890429 (extractMap!2044 (t!360241 (toList!5926 lm!2023))))))

(declare-fun tail!9016 (ListLongMap!4455) ListLongMap!4455)

(assert (=> b!4725605 (= (t!360241 (toList!5926 lm!2023)) (toList!5926 (tail!9016 lm!2023)))))

(declare-fun res!1999757 () Bool)

(declare-fun e!2947348 () Bool)

(assert (=> start!481108 (=> (not res!1999757) (not e!2947348))))

(declare-fun lambda!216090 () Int)

(declare-fun forall!11600 (List!52967 Int) Bool)

(assert (=> start!481108 (= res!1999757 (forall!11600 (toList!5926 lm!2023) lambda!216090))))

(assert (=> start!481108 e!2947348))

(declare-fun inv!68069 (ListLongMap!4455) Bool)

(assert (=> start!481108 (and (inv!68069 lm!2023) e!2947354)))

(assert (=> start!481108 tp_is_empty!31365))

(assert (=> start!481108 e!2947355))

(assert (=> start!481108 true))

(declare-fun e!2947342 () Bool)

(assert (=> start!481108 e!2947342))

(declare-fun b!4725606 () Bool)

(declare-fun res!1999751 () Bool)

(declare-fun e!2947347 () Bool)

(assert (=> b!4725606 (=> (not res!1999751) (not e!2947347))))

(declare-datatypes ((Hashable!6387 0))(
  ( (HashableExt!6386 (__x!32090 Int)) )
))
(declare-fun hashF!1323 () Hashable!6387)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!4392 (Hashable!6387 K!14195) (_ BitVec 64))

(assert (=> b!4725606 (= res!1999751 (= (hash!4392 hashF!1323 key!4653) hash!405))))

(declare-fun b!4725607 () Bool)

(declare-fun tp!1348503 () Bool)

(assert (=> b!4725607 (= e!2947342 (and tp_is_empty!31365 tp_is_empty!31367 tp!1348503))))

(declare-fun b!4725608 () Bool)

(declare-fun res!1999769 () Bool)

(assert (=> b!4725608 (=> (not res!1999769) (not e!2947348))))

(declare-fun noDuplicateKeys!2018 (List!52966) Bool)

(assert (=> b!4725608 (= res!1999769 (noDuplicateKeys!2018 newBucket!218))))

(declare-fun b!4725609 () Bool)

(declare-fun res!1999765 () Bool)

(assert (=> b!4725609 (=> (not res!1999765) (not e!2947347))))

(declare-fun allKeysSameHashInMap!1932 (ListLongMap!4455 Hashable!6387) Bool)

(assert (=> b!4725609 (= res!1999765 (allKeysSameHashInMap!1932 lm!2023 hashF!1323))))

(declare-fun b!4725610 () Bool)

(declare-fun res!1999754 () Bool)

(assert (=> b!4725610 (=> (not res!1999754) (not e!2947347))))

(declare-fun allKeysSameHash!1844 (List!52966 (_ BitVec 64) Hashable!6387) Bool)

(assert (=> b!4725610 (= res!1999754 (allKeysSameHash!1844 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4725611 () Bool)

(assert (=> b!4725611 (= e!2947348 e!2947347)))

(declare-fun res!1999760 () Bool)

(assert (=> b!4725611 (=> (not res!1999760) (not e!2947347))))

(declare-fun contains!16190 (ListMap!5289 K!14195) Bool)

(assert (=> b!4725611 (= res!1999760 (contains!16190 lt!1890417 key!4653))))

(assert (=> b!4725611 (= lt!1890417 (extractMap!2044 (toList!5926 lm!2023)))))

(declare-fun b!4725612 () Bool)

(declare-fun res!1999756 () Bool)

(assert (=> b!4725612 (=> (not res!1999756) (not e!2947348))))

(assert (=> b!4725612 (= res!1999756 (allKeysSameHash!1844 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4725613 () Bool)

(declare-fun e!2947351 () Bool)

(declare-fun e!2947356 () Bool)

(assert (=> b!4725613 (= e!2947351 e!2947356)))

(declare-fun res!1999758 () Bool)

(assert (=> b!4725613 (=> res!1999758 e!2947356)))

(declare-fun lt!1890415 () ListMap!5289)

(assert (=> b!4725613 (= res!1999758 (contains!16190 lt!1890415 key!4653))))

(assert (=> b!4725613 (not (contains!16190 lt!1890419 key!4653))))

(declare-fun lt!1890416 () Unit!130883)

(declare-fun lt!1890422 () List!52967)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!416 (ListLongMap!4455 K!14195 Hashable!6387) Unit!130883)

(assert (=> b!4725613 (= lt!1890416 (lemmaNotInItsHashBucketThenNotInMap!416 (ListLongMap!4456 lt!1890422) key!4653 hashF!1323))))

(declare-fun b!4725614 () Bool)

(declare-fun res!1999755 () Bool)

(assert (=> b!4725614 (=> res!1999755 e!2947351)))

(declare-fun containsKey!3381 (List!52966 K!14195) Bool)

(assert (=> b!4725614 (= res!1999755 (containsKey!3381 lt!1890425 key!4653))))

(declare-fun b!4725615 () Bool)

(declare-fun e!2947352 () Bool)

(assert (=> b!4725615 (= e!2947349 e!2947352)))

(declare-fun res!1999768 () Bool)

(assert (=> b!4725615 (=> res!1999768 e!2947352)))

(assert (=> b!4725615 (= res!1999768 (not (= lt!1890419 lt!1890431)))))

(declare-fun lt!1890420 () tuple2!54468)

(assert (=> b!4725615 (= lt!1890431 (extractMap!2044 (Cons!52843 lt!1890420 (t!360241 (toList!5926 lm!2023)))))))

(assert (=> b!4725615 (= lt!1890419 (extractMap!2044 lt!1890422))))

(assert (=> b!4725615 (= lt!1890420 (tuple2!54469 hash!405 newBucket!218))))

(assert (=> b!4725615 (= lt!1890422 (Cons!52843 (tuple2!54469 hash!405 lt!1890425) (t!360241 (toList!5926 lm!2023))))))

(declare-fun b!4725616 () Bool)

(declare-fun res!1999752 () Bool)

(assert (=> b!4725616 (=> (not res!1999752) (not e!2947348))))

(assert (=> b!4725616 (= res!1999752 (noDuplicateKeys!2018 oldBucket!34))))

(declare-fun b!4725617 () Bool)

(declare-fun e!2947344 () Bool)

(assert (=> b!4725617 (= e!2947344 e!2947346)))

(declare-fun res!1999764 () Bool)

(assert (=> b!4725617 (=> res!1999764 e!2947346)))

(assert (=> b!4725617 (= res!1999764 (not (eq!1135 lt!1890424 lt!1890428)))))

(declare-fun lt!1890421 () tuple2!54468)

(assert (=> b!4725617 (= lt!1890428 (extractMap!2044 (Cons!52843 lt!1890421 (t!360241 (toList!5926 lm!2023)))))))

(declare-fun b!4725618 () Bool)

(declare-fun res!1999753 () Bool)

(assert (=> b!4725618 (=> res!1999753 e!2947351)))

(assert (=> b!4725618 (= res!1999753 (not (= lt!1890415 lt!1890419)))))

(declare-fun b!4725619 () Bool)

(declare-fun e!2947343 () Bool)

(assert (=> b!4725619 (= e!2947343 e!2947351)))

(declare-fun res!1999759 () Bool)

(assert (=> b!4725619 (=> res!1999759 e!2947351)))

(assert (=> b!4725619 (= res!1999759 (not (eq!1135 lt!1890424 (addToMapMapFromBucket!1448 oldBucket!34 lt!1890429))))))

(declare-fun +!2273 (ListMap!5289 tuple2!54466) ListMap!5289)

(assert (=> b!4725619 (= lt!1890424 (+!2273 lt!1890415 (h!59193 oldBucket!34)))))

(declare-fun lt!1890423 () tuple2!54466)

(assert (=> b!4725619 (eq!1135 (addToMapMapFromBucket!1448 (Cons!52842 lt!1890423 lt!1890425) lt!1890429) (+!2273 lt!1890415 lt!1890423))))

(declare-fun lt!1890433 () Unit!130883)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!384 (tuple2!54466 List!52966 ListMap!5289) Unit!130883)

(assert (=> b!4725619 (= lt!1890433 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!384 lt!1890423 lt!1890425 lt!1890429))))

(declare-fun head!10257 (List!52966) tuple2!54466)

(assert (=> b!4725619 (= lt!1890423 (head!10257 oldBucket!34))))

(declare-fun b!4725620 () Bool)

(declare-fun res!1999763 () Bool)

(assert (=> b!4725620 (=> (not res!1999763) (not e!2947348))))

(declare-fun removePairForKey!1613 (List!52966 K!14195) List!52966)

(assert (=> b!4725620 (= res!1999763 (= (removePairForKey!1613 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4725621 () Bool)

(declare-fun res!1999772 () Bool)

(assert (=> b!4725621 (=> (not res!1999772) (not e!2947345))))

(assert (=> b!4725621 (= res!1999772 ((_ is Cons!52843) (toList!5926 lm!2023)))))

(declare-fun b!4725622 () Bool)

(assert (=> b!4725622 (= e!2947347 e!2947345)))

(declare-fun res!1999762 () Bool)

(assert (=> b!4725622 (=> (not res!1999762) (not e!2947345))))

(declare-fun head!10258 (List!52967) tuple2!54468)

(assert (=> b!4725622 (= res!1999762 (= (head!10258 (toList!5926 lm!2023)) lt!1890421))))

(assert (=> b!4725622 (= lt!1890421 (tuple2!54469 hash!405 oldBucket!34))))

(declare-fun b!4725623 () Bool)

(assert (=> b!4725623 (= e!2947356 e!2947344)))

(declare-fun res!1999767 () Bool)

(assert (=> b!4725623 (=> res!1999767 e!2947344)))

(assert (=> b!4725623 (= res!1999767 (not (= lt!1890418 lt!1890415)))))

(assert (=> b!4725623 (= lt!1890418 (-!754 lt!1890424 key!4653))))

(assert (=> b!4725623 (= (-!754 (+!2273 lt!1890415 (tuple2!54467 key!4653 (_2!30527 (h!59193 oldBucket!34)))) key!4653) lt!1890415)))

(declare-fun lt!1890432 () Unit!130883)

(declare-fun addThenRemoveForNewKeyIsSame!67 (ListMap!5289 K!14195 V!14441) Unit!130883)

(assert (=> b!4725623 (= lt!1890432 (addThenRemoveForNewKeyIsSame!67 lt!1890415 key!4653 (_2!30527 (h!59193 oldBucket!34))))))

(declare-fun b!4725624 () Bool)

(assert (=> b!4725624 (= e!2947352 e!2947343)))

(declare-fun res!1999771 () Bool)

(assert (=> b!4725624 (=> res!1999771 e!2947343)))

(assert (=> b!4725624 (= res!1999771 (not (= lt!1890415 (addToMapMapFromBucket!1448 newBucket!218 lt!1890429))))))

(assert (=> b!4725624 (= lt!1890415 (addToMapMapFromBucket!1448 lt!1890425 lt!1890429))))

(declare-fun lt!1890426 () List!52967)

(declare-fun b!4725625 () Bool)

(assert (=> b!4725625 (= e!2947353 (eq!1135 (extractMap!2044 (Cons!52843 lt!1890420 lt!1890426)) (-!754 (extractMap!2044 (Cons!52843 lt!1890421 lt!1890426)) key!4653)))))

(declare-fun tail!9017 (List!52967) List!52967)

(assert (=> b!4725625 (= lt!1890426 (tail!9017 (toList!5926 lm!2023)))))

(assert (= (and start!481108 res!1999757) b!4725616))

(assert (= (and b!4725616 res!1999752) b!4725608))

(assert (= (and b!4725608 res!1999769) b!4725620))

(assert (= (and b!4725620 res!1999763) b!4725612))

(assert (= (and b!4725612 res!1999756) b!4725611))

(assert (= (and b!4725611 res!1999760) b!4725606))

(assert (= (and b!4725606 res!1999751) b!4725610))

(assert (= (and b!4725610 res!1999754) b!4725609))

(assert (= (and b!4725609 res!1999765) b!4725622))

(assert (= (and b!4725622 res!1999762) b!4725621))

(assert (= (and b!4725621 res!1999772) b!4725605))

(assert (= (and b!4725605 (not res!1999761)) b!4725600))

(assert (= (and b!4725600 (not res!1999770)) b!4725615))

(assert (= (and b!4725615 (not res!1999768)) b!4725624))

(assert (= (and b!4725624 (not res!1999771)) b!4725619))

(assert (= (and b!4725619 (not res!1999759)) b!4725614))

(assert (= (and b!4725614 (not res!1999755)) b!4725618))

(assert (= (and b!4725618 (not res!1999753)) b!4725613))

(assert (= (and b!4725613 (not res!1999758)) b!4725623))

(assert (= (and b!4725623 (not res!1999767)) b!4725617))

(assert (= (and b!4725617 (not res!1999764)) b!4725603))

(assert (= (and b!4725603 (not res!1999766)) b!4725601))

(assert (= (and b!4725601 (not res!1999773)) b!4725625))

(assert (= start!481108 b!4725604))

(assert (= (and start!481108 ((_ is Cons!52842) oldBucket!34)) b!4725602))

(assert (= (and start!481108 ((_ is Cons!52842) newBucket!218)) b!4725607))

(declare-fun m!5664799 () Bool)

(assert (=> b!4725609 m!5664799))

(declare-fun m!5664801 () Bool)

(assert (=> b!4725623 m!5664801))

(declare-fun m!5664803 () Bool)

(assert (=> b!4725623 m!5664803))

(assert (=> b!4725623 m!5664803))

(declare-fun m!5664805 () Bool)

(assert (=> b!4725623 m!5664805))

(declare-fun m!5664807 () Bool)

(assert (=> b!4725623 m!5664807))

(declare-fun m!5664809 () Bool)

(assert (=> b!4725606 m!5664809))

(declare-fun m!5664811 () Bool)

(assert (=> b!4725601 m!5664811))

(declare-fun m!5664813 () Bool)

(assert (=> b!4725617 m!5664813))

(declare-fun m!5664815 () Bool)

(assert (=> b!4725617 m!5664815))

(declare-fun m!5664817 () Bool)

(assert (=> b!4725615 m!5664817))

(declare-fun m!5664819 () Bool)

(assert (=> b!4725615 m!5664819))

(declare-fun m!5664821 () Bool)

(assert (=> b!4725616 m!5664821))

(declare-fun m!5664823 () Bool)

(assert (=> start!481108 m!5664823))

(declare-fun m!5664825 () Bool)

(assert (=> start!481108 m!5664825))

(declare-fun m!5664827 () Bool)

(assert (=> b!4725612 m!5664827))

(declare-fun m!5664829 () Bool)

(assert (=> b!4725620 m!5664829))

(declare-fun m!5664831 () Bool)

(assert (=> b!4725613 m!5664831))

(declare-fun m!5664833 () Bool)

(assert (=> b!4725613 m!5664833))

(declare-fun m!5664835 () Bool)

(assert (=> b!4725613 m!5664835))

(declare-fun m!5664837 () Bool)

(assert (=> b!4725625 m!5664837))

(declare-fun m!5664839 () Bool)

(assert (=> b!4725625 m!5664839))

(declare-fun m!5664841 () Bool)

(assert (=> b!4725625 m!5664841))

(assert (=> b!4725625 m!5664837))

(declare-fun m!5664843 () Bool)

(assert (=> b!4725625 m!5664843))

(assert (=> b!4725625 m!5664841))

(assert (=> b!4725625 m!5664839))

(declare-fun m!5664845 () Bool)

(assert (=> b!4725625 m!5664845))

(declare-fun m!5664847 () Bool)

(assert (=> b!4725614 m!5664847))

(declare-fun m!5664849 () Bool)

(assert (=> b!4725603 m!5664849))

(declare-fun m!5664851 () Bool)

(assert (=> b!4725603 m!5664851))

(declare-fun m!5664853 () Bool)

(assert (=> b!4725603 m!5664853))

(declare-fun m!5664855 () Bool)

(assert (=> b!4725603 m!5664855))

(declare-fun m!5664857 () Bool)

(assert (=> b!4725619 m!5664857))

(declare-fun m!5664859 () Bool)

(assert (=> b!4725619 m!5664859))

(declare-fun m!5664861 () Bool)

(assert (=> b!4725619 m!5664861))

(declare-fun m!5664863 () Bool)

(assert (=> b!4725619 m!5664863))

(declare-fun m!5664865 () Bool)

(assert (=> b!4725619 m!5664865))

(assert (=> b!4725619 m!5664861))

(declare-fun m!5664867 () Bool)

(assert (=> b!4725619 m!5664867))

(assert (=> b!4725619 m!5664863))

(declare-fun m!5664869 () Bool)

(assert (=> b!4725619 m!5664869))

(assert (=> b!4725619 m!5664857))

(declare-fun m!5664871 () Bool)

(assert (=> b!4725619 m!5664871))

(declare-fun m!5664873 () Bool)

(assert (=> b!4725610 m!5664873))

(declare-fun m!5664875 () Bool)

(assert (=> b!4725624 m!5664875))

(declare-fun m!5664877 () Bool)

(assert (=> b!4725624 m!5664877))

(declare-fun m!5664879 () Bool)

(assert (=> b!4725611 m!5664879))

(declare-fun m!5664881 () Bool)

(assert (=> b!4725611 m!5664881))

(declare-fun m!5664883 () Bool)

(assert (=> b!4725608 m!5664883))

(declare-fun m!5664885 () Bool)

(assert (=> b!4725605 m!5664885))

(declare-fun m!5664887 () Bool)

(assert (=> b!4725605 m!5664887))

(declare-fun m!5664889 () Bool)

(assert (=> b!4725605 m!5664889))

(declare-fun m!5664891 () Bool)

(assert (=> b!4725622 m!5664891))

(declare-fun m!5664893 () Bool)

(assert (=> b!4725600 m!5664893))

(check-sat (not b!4725613) (not b!4725605) (not b!4725603) (not b!4725623) (not b!4725619) (not b!4725600) (not b!4725604) tp_is_empty!31367 (not b!4725609) (not b!4725625) (not b!4725615) (not b!4725607) (not b!4725606) (not b!4725608) (not b!4725602) (not start!481108) (not b!4725601) (not b!4725614) (not b!4725611) (not b!4725624) (not b!4725617) (not b!4725616) (not b!4725612) (not b!4725620) (not b!4725622) tp_is_empty!31365 (not b!4725610))
(check-sat)
(get-model)

(declare-fun d!1505585 () Bool)

(declare-fun res!1999778 () Bool)

(declare-fun e!2947361 () Bool)

(assert (=> d!1505585 (=> res!1999778 e!2947361)))

(assert (=> d!1505585 (= res!1999778 (not ((_ is Cons!52842) oldBucket!34)))))

(assert (=> d!1505585 (= (noDuplicateKeys!2018 oldBucket!34) e!2947361)))

(declare-fun b!4725630 () Bool)

(declare-fun e!2947362 () Bool)

(assert (=> b!4725630 (= e!2947361 e!2947362)))

(declare-fun res!1999779 () Bool)

(assert (=> b!4725630 (=> (not res!1999779) (not e!2947362))))

(assert (=> b!4725630 (= res!1999779 (not (containsKey!3381 (t!360240 oldBucket!34) (_1!30527 (h!59193 oldBucket!34)))))))

(declare-fun b!4725631 () Bool)

(assert (=> b!4725631 (= e!2947362 (noDuplicateKeys!2018 (t!360240 oldBucket!34)))))

(assert (= (and d!1505585 (not res!1999778)) b!4725630))

(assert (= (and b!4725630 res!1999779) b!4725631))

(declare-fun m!5664895 () Bool)

(assert (=> b!4725630 m!5664895))

(declare-fun m!5664897 () Bool)

(assert (=> b!4725631 m!5664897))

(assert (=> b!4725616 d!1505585))

(declare-fun d!1505587 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9403 (List!52966) (InoxSet tuple2!54466))

(assert (=> d!1505587 (= (eq!1135 lt!1890424 lt!1890428) (= (content!9403 (toList!5925 lt!1890424)) (content!9403 (toList!5925 lt!1890428))))))

(declare-fun bs!1117564 () Bool)

(assert (= bs!1117564 d!1505587))

(declare-fun m!5664899 () Bool)

(assert (=> bs!1117564 m!5664899))

(declare-fun m!5664901 () Bool)

(assert (=> bs!1117564 m!5664901))

(assert (=> b!4725617 d!1505587))

(declare-fun bs!1117566 () Bool)

(declare-fun d!1505589 () Bool)

(assert (= bs!1117566 (and d!1505589 start!481108)))

(declare-fun lambda!216093 () Int)

(assert (=> bs!1117566 (= lambda!216093 lambda!216090)))

(declare-fun lt!1890436 () ListMap!5289)

(declare-fun invariantList!1515 (List!52966) Bool)

(assert (=> d!1505589 (invariantList!1515 (toList!5925 lt!1890436))))

(declare-fun e!2947365 () ListMap!5289)

(assert (=> d!1505589 (= lt!1890436 e!2947365)))

(declare-fun c!807082 () Bool)

(assert (=> d!1505589 (= c!807082 ((_ is Cons!52843) (Cons!52843 lt!1890421 (t!360241 (toList!5926 lm!2023)))))))

(assert (=> d!1505589 (forall!11600 (Cons!52843 lt!1890421 (t!360241 (toList!5926 lm!2023))) lambda!216093)))

(assert (=> d!1505589 (= (extractMap!2044 (Cons!52843 lt!1890421 (t!360241 (toList!5926 lm!2023)))) lt!1890436)))

(declare-fun b!4725636 () Bool)

(assert (=> b!4725636 (= e!2947365 (addToMapMapFromBucket!1448 (_2!30528 (h!59194 (Cons!52843 lt!1890421 (t!360241 (toList!5926 lm!2023))))) (extractMap!2044 (t!360241 (Cons!52843 lt!1890421 (t!360241 (toList!5926 lm!2023)))))))))

(declare-fun b!4725637 () Bool)

(assert (=> b!4725637 (= e!2947365 (ListMap!5290 Nil!52842))))

(assert (= (and d!1505589 c!807082) b!4725636))

(assert (= (and d!1505589 (not c!807082)) b!4725637))

(declare-fun m!5664905 () Bool)

(assert (=> d!1505589 m!5664905))

(declare-fun m!5664907 () Bool)

(assert (=> d!1505589 m!5664907))

(declare-fun m!5664909 () Bool)

(assert (=> b!4725636 m!5664909))

(assert (=> b!4725636 m!5664909))

(declare-fun m!5664911 () Bool)

(assert (=> b!4725636 m!5664911))

(assert (=> b!4725617 d!1505589))

(declare-fun d!1505595 () Bool)

(declare-fun hash!4394 (Hashable!6387 K!14195) (_ BitVec 64))

(assert (=> d!1505595 (= (hash!4392 hashF!1323 key!4653) (hash!4394 hashF!1323 key!4653))))

(declare-fun bs!1117567 () Bool)

(assert (= bs!1117567 d!1505595))

(declare-fun m!5664913 () Bool)

(assert (=> bs!1117567 m!5664913))

(assert (=> b!4725606 d!1505595))

(declare-fun b!4725676 () Bool)

(declare-fun e!2947389 () List!52966)

(assert (=> b!4725676 (= e!2947389 Nil!52842)))

(declare-fun d!1505597 () Bool)

(declare-fun lt!1890463 () List!52966)

(assert (=> d!1505597 (not (containsKey!3381 lt!1890463 key!4653))))

(declare-fun e!2947388 () List!52966)

(assert (=> d!1505597 (= lt!1890463 e!2947388)))

(declare-fun c!807096 () Bool)

(assert (=> d!1505597 (= c!807096 (and ((_ is Cons!52842) oldBucket!34) (= (_1!30527 (h!59193 oldBucket!34)) key!4653)))))

(assert (=> d!1505597 (noDuplicateKeys!2018 oldBucket!34)))

(assert (=> d!1505597 (= (removePairForKey!1613 oldBucket!34 key!4653) lt!1890463)))

(declare-fun b!4725673 () Bool)

(assert (=> b!4725673 (= e!2947388 (t!360240 oldBucket!34))))

(declare-fun b!4725674 () Bool)

(assert (=> b!4725674 (= e!2947388 e!2947389)))

(declare-fun c!807097 () Bool)

(assert (=> b!4725674 (= c!807097 ((_ is Cons!52842) oldBucket!34))))

(declare-fun b!4725675 () Bool)

(assert (=> b!4725675 (= e!2947389 (Cons!52842 (h!59193 oldBucket!34) (removePairForKey!1613 (t!360240 oldBucket!34) key!4653)))))

(assert (= (and d!1505597 c!807096) b!4725673))

(assert (= (and d!1505597 (not c!807096)) b!4725674))

(assert (= (and b!4725674 c!807097) b!4725675))

(assert (= (and b!4725674 (not c!807097)) b!4725676))

(declare-fun m!5664935 () Bool)

(assert (=> d!1505597 m!5664935))

(assert (=> d!1505597 m!5664821))

(declare-fun m!5664937 () Bool)

(assert (=> b!4725675 m!5664937))

(assert (=> b!4725620 d!1505597))

(declare-fun d!1505601 () Bool)

(assert (=> d!1505601 true))

(assert (=> d!1505601 true))

(declare-fun lambda!216096 () Int)

(declare-fun forall!11602 (List!52966 Int) Bool)

(assert (=> d!1505601 (= (allKeysSameHash!1844 newBucket!218 hash!405 hashF!1323) (forall!11602 newBucket!218 lambda!216096))))

(declare-fun bs!1117568 () Bool)

(assert (= bs!1117568 d!1505601))

(declare-fun m!5664939 () Bool)

(assert (=> bs!1117568 m!5664939))

(assert (=> b!4725610 d!1505601))

(declare-fun d!1505603 () Bool)

(declare-fun e!2947399 () Bool)

(assert (=> d!1505603 e!2947399))

(declare-fun res!1999797 () Bool)

(assert (=> d!1505603 (=> (not res!1999797) (not e!2947399))))

(declare-fun lt!1890480 () ListMap!5289)

(assert (=> d!1505603 (= res!1999797 (contains!16190 lt!1890480 (_1!30527 lt!1890423)))))

(declare-fun lt!1890482 () List!52966)

(assert (=> d!1505603 (= lt!1890480 (ListMap!5290 lt!1890482))))

(declare-fun lt!1890481 () Unit!130883)

(declare-fun lt!1890479 () Unit!130883)

(assert (=> d!1505603 (= lt!1890481 lt!1890479)))

(declare-datatypes ((Option!12367 0))(
  ( (None!12366) (Some!12366 (v!46951 V!14441)) )
))
(declare-fun getValueByKey!1963 (List!52966 K!14195) Option!12367)

(assert (=> d!1505603 (= (getValueByKey!1963 lt!1890482 (_1!30527 lt!1890423)) (Some!12366 (_2!30527 lt!1890423)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1090 (List!52966 K!14195 V!14441) Unit!130883)

(assert (=> d!1505603 (= lt!1890479 (lemmaContainsTupThenGetReturnValue!1090 lt!1890482 (_1!30527 lt!1890423) (_2!30527 lt!1890423)))))

(declare-fun insertNoDuplicatedKeys!598 (List!52966 K!14195 V!14441) List!52966)

(assert (=> d!1505603 (= lt!1890482 (insertNoDuplicatedKeys!598 (toList!5925 lt!1890415) (_1!30527 lt!1890423) (_2!30527 lt!1890423)))))

(assert (=> d!1505603 (= (+!2273 lt!1890415 lt!1890423) lt!1890480)))

(declare-fun b!4725695 () Bool)

(declare-fun res!1999798 () Bool)

(assert (=> b!4725695 (=> (not res!1999798) (not e!2947399))))

(assert (=> b!4725695 (= res!1999798 (= (getValueByKey!1963 (toList!5925 lt!1890480) (_1!30527 lt!1890423)) (Some!12366 (_2!30527 lt!1890423))))))

(declare-fun b!4725696 () Bool)

(declare-fun contains!16193 (List!52966 tuple2!54466) Bool)

(assert (=> b!4725696 (= e!2947399 (contains!16193 (toList!5925 lt!1890480) lt!1890423))))

(assert (= (and d!1505603 res!1999797) b!4725695))

(assert (= (and b!4725695 res!1999798) b!4725696))

(declare-fun m!5664973 () Bool)

(assert (=> d!1505603 m!5664973))

(declare-fun m!5664975 () Bool)

(assert (=> d!1505603 m!5664975))

(declare-fun m!5664977 () Bool)

(assert (=> d!1505603 m!5664977))

(declare-fun m!5664979 () Bool)

(assert (=> d!1505603 m!5664979))

(declare-fun m!5664981 () Bool)

(assert (=> b!4725695 m!5664981))

(declare-fun m!5664983 () Bool)

(assert (=> b!4725696 m!5664983))

(assert (=> b!4725619 d!1505603))

(declare-fun d!1505611 () Bool)

(assert (=> d!1505611 (= (eq!1135 lt!1890424 (addToMapMapFromBucket!1448 oldBucket!34 lt!1890429)) (= (content!9403 (toList!5925 lt!1890424)) (content!9403 (toList!5925 (addToMapMapFromBucket!1448 oldBucket!34 lt!1890429)))))))

(declare-fun bs!1117570 () Bool)

(assert (= bs!1117570 d!1505611))

(assert (=> bs!1117570 m!5664899))

(declare-fun m!5664985 () Bool)

(assert (=> bs!1117570 m!5664985))

(assert (=> b!4725619 d!1505611))

(declare-fun d!1505613 () Bool)

(declare-fun e!2947402 () Bool)

(assert (=> d!1505613 e!2947402))

(declare-fun res!1999803 () Bool)

(assert (=> d!1505613 (=> (not res!1999803) (not e!2947402))))

(declare-fun lt!1890492 () ListMap!5289)

(assert (=> d!1505613 (= res!1999803 (contains!16190 lt!1890492 (_1!30527 (h!59193 oldBucket!34))))))

(declare-fun lt!1890494 () List!52966)

(assert (=> d!1505613 (= lt!1890492 (ListMap!5290 lt!1890494))))

(declare-fun lt!1890493 () Unit!130883)

(declare-fun lt!1890491 () Unit!130883)

(assert (=> d!1505613 (= lt!1890493 lt!1890491)))

(assert (=> d!1505613 (= (getValueByKey!1963 lt!1890494 (_1!30527 (h!59193 oldBucket!34))) (Some!12366 (_2!30527 (h!59193 oldBucket!34))))))

(assert (=> d!1505613 (= lt!1890491 (lemmaContainsTupThenGetReturnValue!1090 lt!1890494 (_1!30527 (h!59193 oldBucket!34)) (_2!30527 (h!59193 oldBucket!34))))))

(assert (=> d!1505613 (= lt!1890494 (insertNoDuplicatedKeys!598 (toList!5925 lt!1890415) (_1!30527 (h!59193 oldBucket!34)) (_2!30527 (h!59193 oldBucket!34))))))

(assert (=> d!1505613 (= (+!2273 lt!1890415 (h!59193 oldBucket!34)) lt!1890492)))

(declare-fun b!4725701 () Bool)

(declare-fun res!1999804 () Bool)

(assert (=> b!4725701 (=> (not res!1999804) (not e!2947402))))

(assert (=> b!4725701 (= res!1999804 (= (getValueByKey!1963 (toList!5925 lt!1890492) (_1!30527 (h!59193 oldBucket!34))) (Some!12366 (_2!30527 (h!59193 oldBucket!34)))))))

(declare-fun b!4725702 () Bool)

(assert (=> b!4725702 (= e!2947402 (contains!16193 (toList!5925 lt!1890492) (h!59193 oldBucket!34)))))

(assert (= (and d!1505613 res!1999803) b!4725701))

(assert (= (and b!4725701 res!1999804) b!4725702))

(declare-fun m!5664987 () Bool)

(assert (=> d!1505613 m!5664987))

(declare-fun m!5664989 () Bool)

(assert (=> d!1505613 m!5664989))

(declare-fun m!5664991 () Bool)

(assert (=> d!1505613 m!5664991))

(declare-fun m!5664993 () Bool)

(assert (=> d!1505613 m!5664993))

(declare-fun m!5664995 () Bool)

(assert (=> b!4725701 m!5664995))

(declare-fun m!5664997 () Bool)

(assert (=> b!4725702 m!5664997))

(assert (=> b!4725619 d!1505613))

(declare-fun d!1505615 () Bool)

(assert (=> d!1505615 (= (eq!1135 (addToMapMapFromBucket!1448 (Cons!52842 lt!1890423 lt!1890425) lt!1890429) (+!2273 lt!1890415 lt!1890423)) (= (content!9403 (toList!5925 (addToMapMapFromBucket!1448 (Cons!52842 lt!1890423 lt!1890425) lt!1890429))) (content!9403 (toList!5925 (+!2273 lt!1890415 lt!1890423)))))))

(declare-fun bs!1117571 () Bool)

(assert (= bs!1117571 d!1505615))

(declare-fun m!5664999 () Bool)

(assert (=> bs!1117571 m!5664999))

(declare-fun m!5665001 () Bool)

(assert (=> bs!1117571 m!5665001))

(assert (=> b!4725619 d!1505615))

(declare-fun d!1505617 () Bool)

(assert (=> d!1505617 (eq!1135 (addToMapMapFromBucket!1448 (Cons!52842 lt!1890423 lt!1890425) lt!1890429) (+!2273 (addToMapMapFromBucket!1448 lt!1890425 lt!1890429) lt!1890423))))

(declare-fun lt!1890509 () Unit!130883)

(declare-fun choose!33363 (tuple2!54466 List!52966 ListMap!5289) Unit!130883)

(assert (=> d!1505617 (= lt!1890509 (choose!33363 lt!1890423 lt!1890425 lt!1890429))))

(assert (=> d!1505617 (noDuplicateKeys!2018 lt!1890425)))

(assert (=> d!1505617 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!384 lt!1890423 lt!1890425 lt!1890429) lt!1890509)))

(declare-fun bs!1117579 () Bool)

(assert (= bs!1117579 d!1505617))

(assert (=> bs!1117579 m!5664861))

(assert (=> bs!1117579 m!5664861))

(declare-fun m!5665039 () Bool)

(assert (=> bs!1117579 m!5665039))

(declare-fun m!5665041 () Bool)

(assert (=> bs!1117579 m!5665041))

(declare-fun m!5665043 () Bool)

(assert (=> bs!1117579 m!5665043))

(assert (=> bs!1117579 m!5664877))

(assert (=> bs!1117579 m!5665039))

(declare-fun m!5665045 () Bool)

(assert (=> bs!1117579 m!5665045))

(assert (=> bs!1117579 m!5664877))

(assert (=> b!4725619 d!1505617))

(declare-fun bs!1117705 () Bool)

(declare-fun b!4725795 () Bool)

(assert (= bs!1117705 (and b!4725795 d!1505601)))

(declare-fun lambda!216184 () Int)

(assert (=> bs!1117705 (not (= lambda!216184 lambda!216096))))

(assert (=> b!4725795 true))

(declare-fun bs!1117706 () Bool)

(declare-fun b!4725799 () Bool)

(assert (= bs!1117706 (and b!4725799 d!1505601)))

(declare-fun lambda!216186 () Int)

(assert (=> bs!1117706 (not (= lambda!216186 lambda!216096))))

(declare-fun bs!1117707 () Bool)

(assert (= bs!1117707 (and b!4725799 b!4725795)))

(assert (=> bs!1117707 (= lambda!216186 lambda!216184)))

(assert (=> b!4725799 true))

(declare-fun lambda!216187 () Int)

(assert (=> bs!1117706 (not (= lambda!216187 lambda!216096))))

(declare-fun lt!1890725 () ListMap!5289)

(assert (=> bs!1117707 (= (= lt!1890725 lt!1890429) (= lambda!216187 lambda!216184))))

(assert (=> b!4725799 (= (= lt!1890725 lt!1890429) (= lambda!216187 lambda!216186))))

(assert (=> b!4725799 true))

(declare-fun bs!1117708 () Bool)

(declare-fun d!1505631 () Bool)

(assert (= bs!1117708 (and d!1505631 d!1505601)))

(declare-fun lambda!216188 () Int)

(assert (=> bs!1117708 (not (= lambda!216188 lambda!216096))))

(declare-fun bs!1117710 () Bool)

(assert (= bs!1117710 (and d!1505631 b!4725795)))

(declare-fun lt!1890732 () ListMap!5289)

(assert (=> bs!1117710 (= (= lt!1890732 lt!1890429) (= lambda!216188 lambda!216184))))

(declare-fun bs!1117712 () Bool)

(assert (= bs!1117712 (and d!1505631 b!4725799)))

(assert (=> bs!1117712 (= (= lt!1890732 lt!1890429) (= lambda!216188 lambda!216186))))

(assert (=> bs!1117712 (= (= lt!1890732 lt!1890725) (= lambda!216188 lambda!216187))))

(assert (=> d!1505631 true))

(declare-fun e!2947457 () ListMap!5289)

(assert (=> b!4725795 (= e!2947457 lt!1890429)))

(declare-fun lt!1890731 () Unit!130883)

(declare-fun call!330654 () Unit!130883)

(assert (=> b!4725795 (= lt!1890731 call!330654)))

(declare-fun call!330652 () Bool)

(assert (=> b!4725795 call!330652))

(declare-fun lt!1890729 () Unit!130883)

(assert (=> b!4725795 (= lt!1890729 lt!1890731)))

(declare-fun call!330653 () Bool)

(assert (=> b!4725795 call!330653))

(declare-fun lt!1890728 () Unit!130883)

(declare-fun Unit!130898 () Unit!130883)

(assert (=> b!4725795 (= lt!1890728 Unit!130898)))

(declare-fun b!4725796 () Bool)

(declare-fun res!1999852 () Bool)

(declare-fun e!2947456 () Bool)

(assert (=> b!4725796 (=> (not res!1999852) (not e!2947456))))

(assert (=> b!4725796 (= res!1999852 (forall!11602 (toList!5925 lt!1890429) lambda!216188))))

(declare-fun bm!330647 () Bool)

(declare-fun c!807120 () Bool)

(assert (=> bm!330647 (= call!330652 (forall!11602 (ite c!807120 (toList!5925 lt!1890429) oldBucket!34) (ite c!807120 lambda!216184 lambda!216187)))))

(declare-fun bm!330648 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!801 (ListMap!5289) Unit!130883)

(assert (=> bm!330648 (= call!330654 (lemmaContainsAllItsOwnKeys!801 lt!1890429))))

(assert (=> d!1505631 e!2947456))

(declare-fun res!1999853 () Bool)

(assert (=> d!1505631 (=> (not res!1999853) (not e!2947456))))

(assert (=> d!1505631 (= res!1999853 (forall!11602 oldBucket!34 lambda!216188))))

(assert (=> d!1505631 (= lt!1890732 e!2947457)))

(assert (=> d!1505631 (= c!807120 ((_ is Nil!52842) oldBucket!34))))

(assert (=> d!1505631 (noDuplicateKeys!2018 oldBucket!34)))

(assert (=> d!1505631 (= (addToMapMapFromBucket!1448 oldBucket!34 lt!1890429) lt!1890732)))

(declare-fun b!4725797 () Bool)

(assert (=> b!4725797 (= e!2947456 (invariantList!1515 (toList!5925 lt!1890732)))))

(declare-fun bm!330649 () Bool)

(assert (=> bm!330649 (= call!330653 (forall!11602 (toList!5925 lt!1890429) (ite c!807120 lambda!216184 lambda!216187)))))

(declare-fun b!4725798 () Bool)

(declare-fun e!2947458 () Bool)

(assert (=> b!4725798 (= e!2947458 call!330653)))

(assert (=> b!4725799 (= e!2947457 lt!1890725)))

(declare-fun lt!1890716 () ListMap!5289)

(assert (=> b!4725799 (= lt!1890716 (+!2273 lt!1890429 (h!59193 oldBucket!34)))))

(assert (=> b!4725799 (= lt!1890725 (addToMapMapFromBucket!1448 (t!360240 oldBucket!34) (+!2273 lt!1890429 (h!59193 oldBucket!34))))))

(declare-fun lt!1890726 () Unit!130883)

(assert (=> b!4725799 (= lt!1890726 call!330654)))

(assert (=> b!4725799 (forall!11602 (toList!5925 lt!1890429) lambda!216186)))

(declare-fun lt!1890713 () Unit!130883)

(assert (=> b!4725799 (= lt!1890713 lt!1890726)))

(assert (=> b!4725799 (forall!11602 (toList!5925 lt!1890716) lambda!216187)))

(declare-fun lt!1890722 () Unit!130883)

(declare-fun Unit!130899 () Unit!130883)

(assert (=> b!4725799 (= lt!1890722 Unit!130899)))

(assert (=> b!4725799 (forall!11602 (t!360240 oldBucket!34) lambda!216187)))

(declare-fun lt!1890718 () Unit!130883)

(declare-fun Unit!130900 () Unit!130883)

(assert (=> b!4725799 (= lt!1890718 Unit!130900)))

(declare-fun lt!1890733 () Unit!130883)

(declare-fun Unit!130901 () Unit!130883)

(assert (=> b!4725799 (= lt!1890733 Unit!130901)))

(declare-fun lt!1890714 () Unit!130883)

(declare-fun forallContained!3647 (List!52966 Int tuple2!54466) Unit!130883)

(assert (=> b!4725799 (= lt!1890714 (forallContained!3647 (toList!5925 lt!1890716) lambda!216187 (h!59193 oldBucket!34)))))

(assert (=> b!4725799 (contains!16190 lt!1890716 (_1!30527 (h!59193 oldBucket!34)))))

(declare-fun lt!1890723 () Unit!130883)

(declare-fun Unit!130902 () Unit!130883)

(assert (=> b!4725799 (= lt!1890723 Unit!130902)))

(assert (=> b!4725799 (contains!16190 lt!1890725 (_1!30527 (h!59193 oldBucket!34)))))

(declare-fun lt!1890727 () Unit!130883)

(declare-fun Unit!130903 () Unit!130883)

(assert (=> b!4725799 (= lt!1890727 Unit!130903)))

(assert (=> b!4725799 call!330652))

(declare-fun lt!1890719 () Unit!130883)

(declare-fun Unit!130904 () Unit!130883)

(assert (=> b!4725799 (= lt!1890719 Unit!130904)))

(assert (=> b!4725799 (forall!11602 (toList!5925 lt!1890716) lambda!216187)))

(declare-fun lt!1890721 () Unit!130883)

(declare-fun Unit!130905 () Unit!130883)

(assert (=> b!4725799 (= lt!1890721 Unit!130905)))

(declare-fun lt!1890724 () Unit!130883)

(declare-fun Unit!130906 () Unit!130883)

(assert (=> b!4725799 (= lt!1890724 Unit!130906)))

(declare-fun lt!1890717 () Unit!130883)

(declare-fun addForallContainsKeyThenBeforeAdding!800 (ListMap!5289 ListMap!5289 K!14195 V!14441) Unit!130883)

(assert (=> b!4725799 (= lt!1890717 (addForallContainsKeyThenBeforeAdding!800 lt!1890429 lt!1890725 (_1!30527 (h!59193 oldBucket!34)) (_2!30527 (h!59193 oldBucket!34))))))

(assert (=> b!4725799 (forall!11602 (toList!5925 lt!1890429) lambda!216187)))

(declare-fun lt!1890720 () Unit!130883)

(assert (=> b!4725799 (= lt!1890720 lt!1890717)))

(assert (=> b!4725799 (forall!11602 (toList!5925 lt!1890429) lambda!216187)))

(declare-fun lt!1890730 () Unit!130883)

(declare-fun Unit!130907 () Unit!130883)

(assert (=> b!4725799 (= lt!1890730 Unit!130907)))

(declare-fun res!1999851 () Bool)

(assert (=> b!4725799 (= res!1999851 (forall!11602 oldBucket!34 lambda!216187))))

(assert (=> b!4725799 (=> (not res!1999851) (not e!2947458))))

(assert (=> b!4725799 e!2947458))

(declare-fun lt!1890715 () Unit!130883)

(declare-fun Unit!130908 () Unit!130883)

(assert (=> b!4725799 (= lt!1890715 Unit!130908)))

(assert (= (and d!1505631 c!807120) b!4725795))

(assert (= (and d!1505631 (not c!807120)) b!4725799))

(assert (= (and b!4725799 res!1999851) b!4725798))

(assert (= (or b!4725795 b!4725799) bm!330648))

(assert (= (or b!4725795 b!4725798) bm!330649))

(assert (= (or b!4725795 b!4725799) bm!330647))

(assert (= (and d!1505631 res!1999853) b!4725796))

(assert (= (and b!4725796 res!1999852) b!4725797))

(declare-fun m!5665251 () Bool)

(assert (=> bm!330647 m!5665251))

(declare-fun m!5665253 () Bool)

(assert (=> bm!330648 m!5665253))

(declare-fun m!5665255 () Bool)

(assert (=> b!4725799 m!5665255))

(declare-fun m!5665257 () Bool)

(assert (=> b!4725799 m!5665257))

(assert (=> b!4725799 m!5665257))

(declare-fun m!5665259 () Bool)

(assert (=> b!4725799 m!5665259))

(declare-fun m!5665261 () Bool)

(assert (=> b!4725799 m!5665261))

(declare-fun m!5665263 () Bool)

(assert (=> b!4725799 m!5665263))

(declare-fun m!5665265 () Bool)

(assert (=> b!4725799 m!5665265))

(assert (=> b!4725799 m!5665261))

(declare-fun m!5665267 () Bool)

(assert (=> b!4725799 m!5665267))

(declare-fun m!5665269 () Bool)

(assert (=> b!4725799 m!5665269))

(assert (=> b!4725799 m!5665265))

(declare-fun m!5665271 () Bool)

(assert (=> b!4725799 m!5665271))

(declare-fun m!5665273 () Bool)

(assert (=> b!4725799 m!5665273))

(declare-fun m!5665275 () Bool)

(assert (=> b!4725799 m!5665275))

(declare-fun m!5665277 () Bool)

(assert (=> b!4725797 m!5665277))

(declare-fun m!5665279 () Bool)

(assert (=> d!1505631 m!5665279))

(assert (=> d!1505631 m!5664821))

(declare-fun m!5665281 () Bool)

(assert (=> bm!330649 m!5665281))

(declare-fun m!5665283 () Bool)

(assert (=> b!4725796 m!5665283))

(assert (=> b!4725619 d!1505631))

(declare-fun d!1505669 () Bool)

(assert (=> d!1505669 (= (head!10257 oldBucket!34) (h!59193 oldBucket!34))))

(assert (=> b!4725619 d!1505669))

(declare-fun bs!1117726 () Bool)

(declare-fun b!4725802 () Bool)

(assert (= bs!1117726 (and b!4725802 b!4725799)))

(declare-fun lambda!216190 () Int)

(assert (=> bs!1117726 (= (= lt!1890429 lt!1890725) (= lambda!216190 lambda!216187))))

(declare-fun bs!1117728 () Bool)

(assert (= bs!1117728 (and b!4725802 d!1505631)))

(assert (=> bs!1117728 (= (= lt!1890429 lt!1890732) (= lambda!216190 lambda!216188))))

(declare-fun bs!1117730 () Bool)

(assert (= bs!1117730 (and b!4725802 d!1505601)))

(assert (=> bs!1117730 (not (= lambda!216190 lambda!216096))))

(assert (=> bs!1117726 (= lambda!216190 lambda!216186)))

(declare-fun bs!1117733 () Bool)

(assert (= bs!1117733 (and b!4725802 b!4725795)))

(assert (=> bs!1117733 (= lambda!216190 lambda!216184)))

(assert (=> b!4725802 true))

(declare-fun bs!1117737 () Bool)

(declare-fun b!4725806 () Bool)

(assert (= bs!1117737 (and b!4725806 b!4725799)))

(declare-fun lambda!216192 () Int)

(assert (=> bs!1117737 (= (= lt!1890429 lt!1890725) (= lambda!216192 lambda!216187))))

(declare-fun bs!1117738 () Bool)

(assert (= bs!1117738 (and b!4725806 d!1505631)))

(assert (=> bs!1117738 (= (= lt!1890429 lt!1890732) (= lambda!216192 lambda!216188))))

(declare-fun bs!1117739 () Bool)

(assert (= bs!1117739 (and b!4725806 d!1505601)))

(assert (=> bs!1117739 (not (= lambda!216192 lambda!216096))))

(declare-fun bs!1117740 () Bool)

(assert (= bs!1117740 (and b!4725806 b!4725802)))

(assert (=> bs!1117740 (= lambda!216192 lambda!216190)))

(assert (=> bs!1117737 (= lambda!216192 lambda!216186)))

(declare-fun bs!1117741 () Bool)

(assert (= bs!1117741 (and b!4725806 b!4725795)))

(assert (=> bs!1117741 (= lambda!216192 lambda!216184)))

(assert (=> b!4725806 true))

(declare-fun lt!1890746 () ListMap!5289)

(declare-fun lambda!216193 () Int)

(assert (=> bs!1117737 (= (= lt!1890746 lt!1890725) (= lambda!216193 lambda!216187))))

(assert (=> bs!1117738 (= (= lt!1890746 lt!1890732) (= lambda!216193 lambda!216188))))

(assert (=> bs!1117739 (not (= lambda!216193 lambda!216096))))

(assert (=> bs!1117740 (= (= lt!1890746 lt!1890429) (= lambda!216193 lambda!216190))))

(assert (=> b!4725806 (= (= lt!1890746 lt!1890429) (= lambda!216193 lambda!216192))))

(assert (=> bs!1117737 (= (= lt!1890746 lt!1890429) (= lambda!216193 lambda!216186))))

(assert (=> bs!1117741 (= (= lt!1890746 lt!1890429) (= lambda!216193 lambda!216184))))

(assert (=> b!4725806 true))

(declare-fun bs!1117743 () Bool)

(declare-fun d!1505671 () Bool)

(assert (= bs!1117743 (and d!1505671 b!4725799)))

(declare-fun lambda!216194 () Int)

(declare-fun lt!1890753 () ListMap!5289)

(assert (=> bs!1117743 (= (= lt!1890753 lt!1890725) (= lambda!216194 lambda!216187))))

(declare-fun bs!1117744 () Bool)

(assert (= bs!1117744 (and d!1505671 d!1505631)))

(assert (=> bs!1117744 (= (= lt!1890753 lt!1890732) (= lambda!216194 lambda!216188))))

(declare-fun bs!1117745 () Bool)

(assert (= bs!1117745 (and d!1505671 d!1505601)))

(assert (=> bs!1117745 (not (= lambda!216194 lambda!216096))))

(declare-fun bs!1117746 () Bool)

(assert (= bs!1117746 (and d!1505671 b!4725802)))

(assert (=> bs!1117746 (= (= lt!1890753 lt!1890429) (= lambda!216194 lambda!216190))))

(declare-fun bs!1117747 () Bool)

(assert (= bs!1117747 (and d!1505671 b!4725806)))

(assert (=> bs!1117747 (= (= lt!1890753 lt!1890429) (= lambda!216194 lambda!216192))))

(assert (=> bs!1117747 (= (= lt!1890753 lt!1890746) (= lambda!216194 lambda!216193))))

(assert (=> bs!1117743 (= (= lt!1890753 lt!1890429) (= lambda!216194 lambda!216186))))

(declare-fun bs!1117748 () Bool)

(assert (= bs!1117748 (and d!1505671 b!4725795)))

(assert (=> bs!1117748 (= (= lt!1890753 lt!1890429) (= lambda!216194 lambda!216184))))

(assert (=> d!1505671 true))

(declare-fun e!2947460 () ListMap!5289)

(assert (=> b!4725802 (= e!2947460 lt!1890429)))

(declare-fun lt!1890752 () Unit!130883)

(declare-fun call!330657 () Unit!130883)

(assert (=> b!4725802 (= lt!1890752 call!330657)))

(declare-fun call!330655 () Bool)

(assert (=> b!4725802 call!330655))

(declare-fun lt!1890750 () Unit!130883)

(assert (=> b!4725802 (= lt!1890750 lt!1890752)))

(declare-fun call!330656 () Bool)

(assert (=> b!4725802 call!330656))

(declare-fun lt!1890749 () Unit!130883)

(declare-fun Unit!130920 () Unit!130883)

(assert (=> b!4725802 (= lt!1890749 Unit!130920)))

(declare-fun b!4725803 () Bool)

(declare-fun res!1999855 () Bool)

(declare-fun e!2947459 () Bool)

(assert (=> b!4725803 (=> (not res!1999855) (not e!2947459))))

(assert (=> b!4725803 (= res!1999855 (forall!11602 (toList!5925 lt!1890429) lambda!216194))))

(declare-fun bm!330650 () Bool)

(declare-fun c!807121 () Bool)

(assert (=> bm!330650 (= call!330655 (forall!11602 (ite c!807121 (toList!5925 lt!1890429) (Cons!52842 lt!1890423 lt!1890425)) (ite c!807121 lambda!216190 lambda!216193)))))

(declare-fun bm!330651 () Bool)

(assert (=> bm!330651 (= call!330657 (lemmaContainsAllItsOwnKeys!801 lt!1890429))))

(assert (=> d!1505671 e!2947459))

(declare-fun res!1999856 () Bool)

(assert (=> d!1505671 (=> (not res!1999856) (not e!2947459))))

(assert (=> d!1505671 (= res!1999856 (forall!11602 (Cons!52842 lt!1890423 lt!1890425) lambda!216194))))

(assert (=> d!1505671 (= lt!1890753 e!2947460)))

(assert (=> d!1505671 (= c!807121 ((_ is Nil!52842) (Cons!52842 lt!1890423 lt!1890425)))))

(assert (=> d!1505671 (noDuplicateKeys!2018 (Cons!52842 lt!1890423 lt!1890425))))

(assert (=> d!1505671 (= (addToMapMapFromBucket!1448 (Cons!52842 lt!1890423 lt!1890425) lt!1890429) lt!1890753)))

(declare-fun b!4725804 () Bool)

(assert (=> b!4725804 (= e!2947459 (invariantList!1515 (toList!5925 lt!1890753)))))

(declare-fun bm!330652 () Bool)

(assert (=> bm!330652 (= call!330656 (forall!11602 (toList!5925 lt!1890429) (ite c!807121 lambda!216190 lambda!216193)))))

(declare-fun b!4725805 () Bool)

(declare-fun e!2947461 () Bool)

(assert (=> b!4725805 (= e!2947461 call!330656)))

(assert (=> b!4725806 (= e!2947460 lt!1890746)))

(declare-fun lt!1890737 () ListMap!5289)

(assert (=> b!4725806 (= lt!1890737 (+!2273 lt!1890429 (h!59193 (Cons!52842 lt!1890423 lt!1890425))))))

(assert (=> b!4725806 (= lt!1890746 (addToMapMapFromBucket!1448 (t!360240 (Cons!52842 lt!1890423 lt!1890425)) (+!2273 lt!1890429 (h!59193 (Cons!52842 lt!1890423 lt!1890425)))))))

(declare-fun lt!1890747 () Unit!130883)

(assert (=> b!4725806 (= lt!1890747 call!330657)))

(assert (=> b!4725806 (forall!11602 (toList!5925 lt!1890429) lambda!216192)))

(declare-fun lt!1890734 () Unit!130883)

(assert (=> b!4725806 (= lt!1890734 lt!1890747)))

(assert (=> b!4725806 (forall!11602 (toList!5925 lt!1890737) lambda!216193)))

(declare-fun lt!1890743 () Unit!130883)

(declare-fun Unit!130921 () Unit!130883)

(assert (=> b!4725806 (= lt!1890743 Unit!130921)))

(assert (=> b!4725806 (forall!11602 (t!360240 (Cons!52842 lt!1890423 lt!1890425)) lambda!216193)))

(declare-fun lt!1890739 () Unit!130883)

(declare-fun Unit!130922 () Unit!130883)

(assert (=> b!4725806 (= lt!1890739 Unit!130922)))

(declare-fun lt!1890754 () Unit!130883)

(declare-fun Unit!130923 () Unit!130883)

(assert (=> b!4725806 (= lt!1890754 Unit!130923)))

(declare-fun lt!1890735 () Unit!130883)

(assert (=> b!4725806 (= lt!1890735 (forallContained!3647 (toList!5925 lt!1890737) lambda!216193 (h!59193 (Cons!52842 lt!1890423 lt!1890425))))))

(assert (=> b!4725806 (contains!16190 lt!1890737 (_1!30527 (h!59193 (Cons!52842 lt!1890423 lt!1890425))))))

(declare-fun lt!1890744 () Unit!130883)

(declare-fun Unit!130924 () Unit!130883)

(assert (=> b!4725806 (= lt!1890744 Unit!130924)))

(assert (=> b!4725806 (contains!16190 lt!1890746 (_1!30527 (h!59193 (Cons!52842 lt!1890423 lt!1890425))))))

(declare-fun lt!1890748 () Unit!130883)

(declare-fun Unit!130925 () Unit!130883)

(assert (=> b!4725806 (= lt!1890748 Unit!130925)))

(assert (=> b!4725806 call!330655))

(declare-fun lt!1890740 () Unit!130883)

(declare-fun Unit!130926 () Unit!130883)

(assert (=> b!4725806 (= lt!1890740 Unit!130926)))

(assert (=> b!4725806 (forall!11602 (toList!5925 lt!1890737) lambda!216193)))

(declare-fun lt!1890742 () Unit!130883)

(declare-fun Unit!130927 () Unit!130883)

(assert (=> b!4725806 (= lt!1890742 Unit!130927)))

(declare-fun lt!1890745 () Unit!130883)

(declare-fun Unit!130928 () Unit!130883)

(assert (=> b!4725806 (= lt!1890745 Unit!130928)))

(declare-fun lt!1890738 () Unit!130883)

(assert (=> b!4725806 (= lt!1890738 (addForallContainsKeyThenBeforeAdding!800 lt!1890429 lt!1890746 (_1!30527 (h!59193 (Cons!52842 lt!1890423 lt!1890425))) (_2!30527 (h!59193 (Cons!52842 lt!1890423 lt!1890425)))))))

(assert (=> b!4725806 (forall!11602 (toList!5925 lt!1890429) lambda!216193)))

(declare-fun lt!1890741 () Unit!130883)

(assert (=> b!4725806 (= lt!1890741 lt!1890738)))

(assert (=> b!4725806 (forall!11602 (toList!5925 lt!1890429) lambda!216193)))

(declare-fun lt!1890751 () Unit!130883)

(declare-fun Unit!130929 () Unit!130883)

(assert (=> b!4725806 (= lt!1890751 Unit!130929)))

(declare-fun res!1999854 () Bool)

(assert (=> b!4725806 (= res!1999854 (forall!11602 (Cons!52842 lt!1890423 lt!1890425) lambda!216193))))

(assert (=> b!4725806 (=> (not res!1999854) (not e!2947461))))

(assert (=> b!4725806 e!2947461))

(declare-fun lt!1890736 () Unit!130883)

(declare-fun Unit!130930 () Unit!130883)

(assert (=> b!4725806 (= lt!1890736 Unit!130930)))

(assert (= (and d!1505671 c!807121) b!4725802))

(assert (= (and d!1505671 (not c!807121)) b!4725806))

(assert (= (and b!4725806 res!1999854) b!4725805))

(assert (= (or b!4725802 b!4725806) bm!330651))

(assert (= (or b!4725802 b!4725805) bm!330652))

(assert (= (or b!4725802 b!4725806) bm!330650))

(assert (= (and d!1505671 res!1999856) b!4725803))

(assert (= (and b!4725803 res!1999855) b!4725804))

(declare-fun m!5665329 () Bool)

(assert (=> bm!330650 m!5665329))

(assert (=> bm!330651 m!5665253))

(declare-fun m!5665331 () Bool)

(assert (=> b!4725806 m!5665331))

(declare-fun m!5665333 () Bool)

(assert (=> b!4725806 m!5665333))

(assert (=> b!4725806 m!5665333))

(declare-fun m!5665335 () Bool)

(assert (=> b!4725806 m!5665335))

(declare-fun m!5665337 () Bool)

(assert (=> b!4725806 m!5665337))

(declare-fun m!5665339 () Bool)

(assert (=> b!4725806 m!5665339))

(declare-fun m!5665341 () Bool)

(assert (=> b!4725806 m!5665341))

(assert (=> b!4725806 m!5665337))

(declare-fun m!5665343 () Bool)

(assert (=> b!4725806 m!5665343))

(declare-fun m!5665345 () Bool)

(assert (=> b!4725806 m!5665345))

(assert (=> b!4725806 m!5665341))

(declare-fun m!5665347 () Bool)

(assert (=> b!4725806 m!5665347))

(declare-fun m!5665349 () Bool)

(assert (=> b!4725806 m!5665349))

(declare-fun m!5665351 () Bool)

(assert (=> b!4725806 m!5665351))

(declare-fun m!5665353 () Bool)

(assert (=> b!4725804 m!5665353))

(declare-fun m!5665355 () Bool)

(assert (=> d!1505671 m!5665355))

(declare-fun m!5665357 () Bool)

(assert (=> d!1505671 m!5665357))

(declare-fun m!5665359 () Bool)

(assert (=> bm!330652 m!5665359))

(declare-fun m!5665361 () Bool)

(assert (=> b!4725803 m!5665361))

(assert (=> b!4725619 d!1505671))

(declare-fun d!1505683 () Bool)

(declare-fun res!1999863 () Bool)

(declare-fun e!2947469 () Bool)

(assert (=> d!1505683 (=> res!1999863 e!2947469)))

(assert (=> d!1505683 (= res!1999863 (not ((_ is Cons!52842) newBucket!218)))))

(assert (=> d!1505683 (= (noDuplicateKeys!2018 newBucket!218) e!2947469)))

(declare-fun b!4725815 () Bool)

(declare-fun e!2947470 () Bool)

(assert (=> b!4725815 (= e!2947469 e!2947470)))

(declare-fun res!1999864 () Bool)

(assert (=> b!4725815 (=> (not res!1999864) (not e!2947470))))

(assert (=> b!4725815 (= res!1999864 (not (containsKey!3381 (t!360240 newBucket!218) (_1!30527 (h!59193 newBucket!218)))))))

(declare-fun b!4725816 () Bool)

(assert (=> b!4725816 (= e!2947470 (noDuplicateKeys!2018 (t!360240 newBucket!218)))))

(assert (= (and d!1505683 (not res!1999863)) b!4725815))

(assert (= (and b!4725815 res!1999864) b!4725816))

(declare-fun m!5665363 () Bool)

(assert (=> b!4725815 m!5665363))

(declare-fun m!5665365 () Bool)

(assert (=> b!4725816 m!5665365))

(assert (=> b!4725608 d!1505683))

(declare-fun bs!1117752 () Bool)

(declare-fun d!1505685 () Bool)

(assert (= bs!1117752 (and d!1505685 start!481108)))

(declare-fun lambda!216197 () Int)

(assert (=> bs!1117752 (not (= lambda!216197 lambda!216090))))

(declare-fun bs!1117753 () Bool)

(assert (= bs!1117753 (and d!1505685 d!1505589)))

(assert (=> bs!1117753 (not (= lambda!216197 lambda!216093))))

(assert (=> d!1505685 true))

(assert (=> d!1505685 (= (allKeysSameHashInMap!1932 lm!2023 hashF!1323) (forall!11600 (toList!5926 lm!2023) lambda!216197))))

(declare-fun bs!1117754 () Bool)

(assert (= bs!1117754 d!1505685))

(declare-fun m!5665387 () Bool)

(assert (=> bs!1117754 m!5665387))

(assert (=> b!4725609 d!1505685))

(declare-fun d!1505695 () Bool)

(declare-fun e!2947475 () Bool)

(assert (=> d!1505695 e!2947475))

(declare-fun res!1999868 () Bool)

(assert (=> d!1505695 (=> (not res!1999868) (not e!2947475))))

(declare-fun lt!1890763 () ListMap!5289)

(assert (=> d!1505695 (= res!1999868 (not (contains!16190 lt!1890763 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!401 (List!52966 K!14195) List!52966)

(assert (=> d!1505695 (= lt!1890763 (ListMap!5290 (removePresrvNoDuplicatedKeys!401 (toList!5925 lt!1890424) key!4653)))))

(assert (=> d!1505695 (= (-!754 lt!1890424 key!4653) lt!1890763)))

(declare-fun b!4725824 () Bool)

(declare-datatypes ((List!52969 0))(
  ( (Nil!52845) (Cons!52845 (h!59198 K!14195) (t!360245 List!52969)) )
))
(declare-fun content!9405 (List!52969) (InoxSet K!14195))

(declare-fun keys!18982 (ListMap!5289) List!52969)

(assert (=> b!4725824 (= e!2947475 (= ((_ map and) (content!9405 (keys!18982 lt!1890424)) ((_ map not) (store ((as const (Array K!14195 Bool)) false) key!4653 true))) (content!9405 (keys!18982 lt!1890763))))))

(assert (= (and d!1505695 res!1999868) b!4725824))

(declare-fun m!5665405 () Bool)

(assert (=> d!1505695 m!5665405))

(declare-fun m!5665407 () Bool)

(assert (=> d!1505695 m!5665407))

(declare-fun m!5665409 () Bool)

(assert (=> b!4725824 m!5665409))

(declare-fun m!5665411 () Bool)

(assert (=> b!4725824 m!5665411))

(declare-fun m!5665413 () Bool)

(assert (=> b!4725824 m!5665413))

(declare-fun m!5665415 () Bool)

(assert (=> b!4725824 m!5665415))

(assert (=> b!4725824 m!5665409))

(declare-fun m!5665417 () Bool)

(assert (=> b!4725824 m!5665417))

(assert (=> b!4725824 m!5665411))

(assert (=> b!4725623 d!1505695))

(declare-fun d!1505707 () Bool)

(declare-fun e!2947482 () Bool)

(assert (=> d!1505707 e!2947482))

(declare-fun res!1999872 () Bool)

(assert (=> d!1505707 (=> (not res!1999872) (not e!2947482))))

(declare-fun lt!1890772 () ListMap!5289)

(assert (=> d!1505707 (= res!1999872 (not (contains!16190 lt!1890772 key!4653)))))

(assert (=> d!1505707 (= lt!1890772 (ListMap!5290 (removePresrvNoDuplicatedKeys!401 (toList!5925 (+!2273 lt!1890415 (tuple2!54467 key!4653 (_2!30527 (h!59193 oldBucket!34))))) key!4653)))))

(assert (=> d!1505707 (= (-!754 (+!2273 lt!1890415 (tuple2!54467 key!4653 (_2!30527 (h!59193 oldBucket!34)))) key!4653) lt!1890772)))

(declare-fun b!4725834 () Bool)

(assert (=> b!4725834 (= e!2947482 (= ((_ map and) (content!9405 (keys!18982 (+!2273 lt!1890415 (tuple2!54467 key!4653 (_2!30527 (h!59193 oldBucket!34)))))) ((_ map not) (store ((as const (Array K!14195 Bool)) false) key!4653 true))) (content!9405 (keys!18982 lt!1890772))))))

(assert (= (and d!1505707 res!1999872) b!4725834))

(declare-fun m!5665419 () Bool)

(assert (=> d!1505707 m!5665419))

(declare-fun m!5665421 () Bool)

(assert (=> d!1505707 m!5665421))

(declare-fun m!5665423 () Bool)

(assert (=> b!4725834 m!5665423))

(declare-fun m!5665425 () Bool)

(assert (=> b!4725834 m!5665425))

(declare-fun m!5665427 () Bool)

(assert (=> b!4725834 m!5665427))

(assert (=> b!4725834 m!5665415))

(assert (=> b!4725834 m!5665423))

(declare-fun m!5665429 () Bool)

(assert (=> b!4725834 m!5665429))

(assert (=> b!4725834 m!5664803))

(assert (=> b!4725834 m!5665425))

(assert (=> b!4725623 d!1505707))

(declare-fun d!1505709 () Bool)

(declare-fun e!2947483 () Bool)

(assert (=> d!1505709 e!2947483))

(declare-fun res!1999873 () Bool)

(assert (=> d!1505709 (=> (not res!1999873) (not e!2947483))))

(declare-fun lt!1890774 () ListMap!5289)

(assert (=> d!1505709 (= res!1999873 (contains!16190 lt!1890774 (_1!30527 (tuple2!54467 key!4653 (_2!30527 (h!59193 oldBucket!34))))))))

(declare-fun lt!1890776 () List!52966)

(assert (=> d!1505709 (= lt!1890774 (ListMap!5290 lt!1890776))))

(declare-fun lt!1890775 () Unit!130883)

(declare-fun lt!1890773 () Unit!130883)

(assert (=> d!1505709 (= lt!1890775 lt!1890773)))

(assert (=> d!1505709 (= (getValueByKey!1963 lt!1890776 (_1!30527 (tuple2!54467 key!4653 (_2!30527 (h!59193 oldBucket!34))))) (Some!12366 (_2!30527 (tuple2!54467 key!4653 (_2!30527 (h!59193 oldBucket!34))))))))

(assert (=> d!1505709 (= lt!1890773 (lemmaContainsTupThenGetReturnValue!1090 lt!1890776 (_1!30527 (tuple2!54467 key!4653 (_2!30527 (h!59193 oldBucket!34)))) (_2!30527 (tuple2!54467 key!4653 (_2!30527 (h!59193 oldBucket!34))))))))

(assert (=> d!1505709 (= lt!1890776 (insertNoDuplicatedKeys!598 (toList!5925 lt!1890415) (_1!30527 (tuple2!54467 key!4653 (_2!30527 (h!59193 oldBucket!34)))) (_2!30527 (tuple2!54467 key!4653 (_2!30527 (h!59193 oldBucket!34))))))))

(assert (=> d!1505709 (= (+!2273 lt!1890415 (tuple2!54467 key!4653 (_2!30527 (h!59193 oldBucket!34)))) lt!1890774)))

(declare-fun b!4725835 () Bool)

(declare-fun res!1999874 () Bool)

(assert (=> b!4725835 (=> (not res!1999874) (not e!2947483))))

(assert (=> b!4725835 (= res!1999874 (= (getValueByKey!1963 (toList!5925 lt!1890774) (_1!30527 (tuple2!54467 key!4653 (_2!30527 (h!59193 oldBucket!34))))) (Some!12366 (_2!30527 (tuple2!54467 key!4653 (_2!30527 (h!59193 oldBucket!34)))))))))

(declare-fun b!4725836 () Bool)

(assert (=> b!4725836 (= e!2947483 (contains!16193 (toList!5925 lt!1890774) (tuple2!54467 key!4653 (_2!30527 (h!59193 oldBucket!34)))))))

(assert (= (and d!1505709 res!1999873) b!4725835))

(assert (= (and b!4725835 res!1999874) b!4725836))

(declare-fun m!5665447 () Bool)

(assert (=> d!1505709 m!5665447))

(declare-fun m!5665449 () Bool)

(assert (=> d!1505709 m!5665449))

(declare-fun m!5665453 () Bool)

(assert (=> d!1505709 m!5665453))

(declare-fun m!5665457 () Bool)

(assert (=> d!1505709 m!5665457))

(declare-fun m!5665459 () Bool)

(assert (=> b!4725835 m!5665459))

(declare-fun m!5665461 () Bool)

(assert (=> b!4725836 m!5665461))

(assert (=> b!4725623 d!1505709))

(declare-fun d!1505713 () Bool)

(assert (=> d!1505713 (= (-!754 (+!2273 lt!1890415 (tuple2!54467 key!4653 (_2!30527 (h!59193 oldBucket!34)))) key!4653) lt!1890415)))

(declare-fun lt!1890787 () Unit!130883)

(declare-fun choose!33364 (ListMap!5289 K!14195 V!14441) Unit!130883)

(assert (=> d!1505713 (= lt!1890787 (choose!33364 lt!1890415 key!4653 (_2!30527 (h!59193 oldBucket!34))))))

(assert (=> d!1505713 (not (contains!16190 lt!1890415 key!4653))))

(assert (=> d!1505713 (= (addThenRemoveForNewKeyIsSame!67 lt!1890415 key!4653 (_2!30527 (h!59193 oldBucket!34))) lt!1890787)))

(declare-fun bs!1117766 () Bool)

(assert (= bs!1117766 d!1505713))

(assert (=> bs!1117766 m!5664803))

(assert (=> bs!1117766 m!5664803))

(assert (=> bs!1117766 m!5664805))

(declare-fun m!5665483 () Bool)

(assert (=> bs!1117766 m!5665483))

(assert (=> bs!1117766 m!5664831))

(assert (=> b!4725623 d!1505713))

(declare-fun bs!1117767 () Bool)

(declare-fun d!1505717 () Bool)

(assert (= bs!1117767 (and d!1505717 b!4725799)))

(declare-fun lambda!216199 () Int)

(assert (=> bs!1117767 (not (= lambda!216199 lambda!216187))))

(declare-fun bs!1117768 () Bool)

(assert (= bs!1117768 (and d!1505717 d!1505631)))

(assert (=> bs!1117768 (not (= lambda!216199 lambda!216188))))

(declare-fun bs!1117769 () Bool)

(assert (= bs!1117769 (and d!1505717 d!1505601)))

(assert (=> bs!1117769 (= lambda!216199 lambda!216096)))

(declare-fun bs!1117770 () Bool)

(assert (= bs!1117770 (and d!1505717 b!4725802)))

(assert (=> bs!1117770 (not (= lambda!216199 lambda!216190))))

(declare-fun bs!1117771 () Bool)

(assert (= bs!1117771 (and d!1505717 d!1505671)))

(assert (=> bs!1117771 (not (= lambda!216199 lambda!216194))))

(declare-fun bs!1117772 () Bool)

(assert (= bs!1117772 (and d!1505717 b!4725806)))

(assert (=> bs!1117772 (not (= lambda!216199 lambda!216192))))

(assert (=> bs!1117772 (not (= lambda!216199 lambda!216193))))

(assert (=> bs!1117767 (not (= lambda!216199 lambda!216186))))

(declare-fun bs!1117773 () Bool)

(assert (= bs!1117773 (and d!1505717 b!4725795)))

(assert (=> bs!1117773 (not (= lambda!216199 lambda!216184))))

(assert (=> d!1505717 true))

(assert (=> d!1505717 true))

(assert (=> d!1505717 (= (allKeysSameHash!1844 oldBucket!34 hash!405 hashF!1323) (forall!11602 oldBucket!34 lambda!216199))))

(declare-fun bs!1117774 () Bool)

(assert (= bs!1117774 d!1505717))

(declare-fun m!5665485 () Bool)

(assert (=> bs!1117774 m!5665485))

(assert (=> b!4725612 d!1505717))

(declare-fun b!4725877 () Bool)

(declare-fun e!2947515 () Unit!130883)

(declare-fun Unit!130931 () Unit!130883)

(assert (=> b!4725877 (= e!2947515 Unit!130931)))

(declare-fun b!4725878 () Bool)

(declare-fun e!2947513 () List!52969)

(declare-fun getKeysList!955 (List!52966) List!52969)

(assert (=> b!4725878 (= e!2947513 (getKeysList!955 (toList!5925 lt!1890415)))))

(declare-fun b!4725879 () Bool)

(declare-fun e!2947516 () Bool)

(declare-fun contains!16194 (List!52969 K!14195) Bool)

(assert (=> b!4725879 (= e!2947516 (contains!16194 (keys!18982 lt!1890415) key!4653))))

(declare-fun d!1505719 () Bool)

(declare-fun e!2947512 () Bool)

(assert (=> d!1505719 e!2947512))

(declare-fun res!1999887 () Bool)

(assert (=> d!1505719 (=> res!1999887 e!2947512)))

(declare-fun e!2947511 () Bool)

(assert (=> d!1505719 (= res!1999887 e!2947511)))

(declare-fun res!1999888 () Bool)

(assert (=> d!1505719 (=> (not res!1999888) (not e!2947511))))

(declare-fun lt!1890814 () Bool)

(assert (=> d!1505719 (= res!1999888 (not lt!1890814))))

(declare-fun lt!1890812 () Bool)

(assert (=> d!1505719 (= lt!1890814 lt!1890812)))

(declare-fun lt!1890808 () Unit!130883)

(declare-fun e!2947514 () Unit!130883)

(assert (=> d!1505719 (= lt!1890808 e!2947514)))

(declare-fun c!807138 () Bool)

(assert (=> d!1505719 (= c!807138 lt!1890812)))

(declare-fun containsKey!3383 (List!52966 K!14195) Bool)

(assert (=> d!1505719 (= lt!1890812 (containsKey!3383 (toList!5925 lt!1890415) key!4653))))

(assert (=> d!1505719 (= (contains!16190 lt!1890415 key!4653) lt!1890814)))

(declare-fun b!4725880 () Bool)

(assert (=> b!4725880 (= e!2947513 (keys!18982 lt!1890415))))

(declare-fun b!4725881 () Bool)

(assert (=> b!4725881 (= e!2947514 e!2947515)))

(declare-fun c!807137 () Bool)

(declare-fun call!330662 () Bool)

(assert (=> b!4725881 (= c!807137 call!330662)))

(declare-fun bm!330657 () Bool)

(assert (=> bm!330657 (= call!330662 (contains!16194 e!2947513 key!4653))))

(declare-fun c!807136 () Bool)

(assert (=> bm!330657 (= c!807136 c!807138)))

(declare-fun b!4725882 () Bool)

(assert (=> b!4725882 (= e!2947512 e!2947516)))

(declare-fun res!1999886 () Bool)

(assert (=> b!4725882 (=> (not res!1999886) (not e!2947516))))

(declare-fun isDefined!9621 (Option!12367) Bool)

(assert (=> b!4725882 (= res!1999886 (isDefined!9621 (getValueByKey!1963 (toList!5925 lt!1890415) key!4653)))))

(declare-fun b!4725883 () Bool)

(declare-fun lt!1890811 () Unit!130883)

(assert (=> b!4725883 (= e!2947514 lt!1890811)))

(declare-fun lt!1890809 () Unit!130883)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1854 (List!52966 K!14195) Unit!130883)

(assert (=> b!4725883 (= lt!1890809 (lemmaContainsKeyImpliesGetValueByKeyDefined!1854 (toList!5925 lt!1890415) key!4653))))

(assert (=> b!4725883 (isDefined!9621 (getValueByKey!1963 (toList!5925 lt!1890415) key!4653))))

(declare-fun lt!1890810 () Unit!130883)

(assert (=> b!4725883 (= lt!1890810 lt!1890809)))

(declare-fun lemmaInListThenGetKeysListContains!950 (List!52966 K!14195) Unit!130883)

(assert (=> b!4725883 (= lt!1890811 (lemmaInListThenGetKeysListContains!950 (toList!5925 lt!1890415) key!4653))))

(assert (=> b!4725883 call!330662))

(declare-fun b!4725884 () Bool)

(assert (=> b!4725884 (= e!2947511 (not (contains!16194 (keys!18982 lt!1890415) key!4653)))))

(declare-fun b!4725885 () Bool)

(assert (=> b!4725885 false))

(declare-fun lt!1890807 () Unit!130883)

(declare-fun lt!1890813 () Unit!130883)

(assert (=> b!4725885 (= lt!1890807 lt!1890813)))

(assert (=> b!4725885 (containsKey!3383 (toList!5925 lt!1890415) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!954 (List!52966 K!14195) Unit!130883)

(assert (=> b!4725885 (= lt!1890813 (lemmaInGetKeysListThenContainsKey!954 (toList!5925 lt!1890415) key!4653))))

(declare-fun Unit!130932 () Unit!130883)

(assert (=> b!4725885 (= e!2947515 Unit!130932)))

(assert (= (and d!1505719 c!807138) b!4725883))

(assert (= (and d!1505719 (not c!807138)) b!4725881))

(assert (= (and b!4725881 c!807137) b!4725885))

(assert (= (and b!4725881 (not c!807137)) b!4725877))

(assert (= (or b!4725883 b!4725881) bm!330657))

(assert (= (and bm!330657 c!807136) b!4725878))

(assert (= (and bm!330657 (not c!807136)) b!4725880))

(assert (= (and d!1505719 res!1999888) b!4725884))

(assert (= (and d!1505719 (not res!1999887)) b!4725882))

(assert (= (and b!4725882 res!1999886) b!4725879))

(declare-fun m!5665501 () Bool)

(assert (=> d!1505719 m!5665501))

(declare-fun m!5665503 () Bool)

(assert (=> bm!330657 m!5665503))

(declare-fun m!5665505 () Bool)

(assert (=> b!4725880 m!5665505))

(declare-fun m!5665507 () Bool)

(assert (=> b!4725882 m!5665507))

(assert (=> b!4725882 m!5665507))

(declare-fun m!5665509 () Bool)

(assert (=> b!4725882 m!5665509))

(assert (=> b!4725885 m!5665501))

(declare-fun m!5665511 () Bool)

(assert (=> b!4725885 m!5665511))

(assert (=> b!4725884 m!5665505))

(assert (=> b!4725884 m!5665505))

(declare-fun m!5665513 () Bool)

(assert (=> b!4725884 m!5665513))

(declare-fun m!5665515 () Bool)

(assert (=> b!4725878 m!5665515))

(declare-fun m!5665517 () Bool)

(assert (=> b!4725883 m!5665517))

(assert (=> b!4725883 m!5665507))

(assert (=> b!4725883 m!5665507))

(assert (=> b!4725883 m!5665509))

(declare-fun m!5665519 () Bool)

(assert (=> b!4725883 m!5665519))

(assert (=> b!4725879 m!5665505))

(assert (=> b!4725879 m!5665505))

(assert (=> b!4725879 m!5665513))

(assert (=> b!4725613 d!1505719))

(declare-fun b!4725886 () Bool)

(declare-fun e!2947521 () Unit!130883)

(declare-fun Unit!130933 () Unit!130883)

(assert (=> b!4725886 (= e!2947521 Unit!130933)))

(declare-fun b!4725887 () Bool)

(declare-fun e!2947519 () List!52969)

(assert (=> b!4725887 (= e!2947519 (getKeysList!955 (toList!5925 lt!1890419)))))

(declare-fun b!4725888 () Bool)

(declare-fun e!2947522 () Bool)

(assert (=> b!4725888 (= e!2947522 (contains!16194 (keys!18982 lt!1890419) key!4653))))

(declare-fun d!1505727 () Bool)

(declare-fun e!2947518 () Bool)

(assert (=> d!1505727 e!2947518))

(declare-fun res!1999890 () Bool)

(assert (=> d!1505727 (=> res!1999890 e!2947518)))

(declare-fun e!2947517 () Bool)

(assert (=> d!1505727 (= res!1999890 e!2947517)))

(declare-fun res!1999891 () Bool)

(assert (=> d!1505727 (=> (not res!1999891) (not e!2947517))))

(declare-fun lt!1890822 () Bool)

(assert (=> d!1505727 (= res!1999891 (not lt!1890822))))

(declare-fun lt!1890820 () Bool)

(assert (=> d!1505727 (= lt!1890822 lt!1890820)))

(declare-fun lt!1890816 () Unit!130883)

(declare-fun e!2947520 () Unit!130883)

(assert (=> d!1505727 (= lt!1890816 e!2947520)))

(declare-fun c!807141 () Bool)

(assert (=> d!1505727 (= c!807141 lt!1890820)))

(assert (=> d!1505727 (= lt!1890820 (containsKey!3383 (toList!5925 lt!1890419) key!4653))))

(assert (=> d!1505727 (= (contains!16190 lt!1890419 key!4653) lt!1890822)))

(declare-fun b!4725889 () Bool)

(assert (=> b!4725889 (= e!2947519 (keys!18982 lt!1890419))))

(declare-fun b!4725890 () Bool)

(assert (=> b!4725890 (= e!2947520 e!2947521)))

(declare-fun c!807140 () Bool)

(declare-fun call!330663 () Bool)

(assert (=> b!4725890 (= c!807140 call!330663)))

(declare-fun bm!330658 () Bool)

(assert (=> bm!330658 (= call!330663 (contains!16194 e!2947519 key!4653))))

(declare-fun c!807139 () Bool)

(assert (=> bm!330658 (= c!807139 c!807141)))

(declare-fun b!4725891 () Bool)

(assert (=> b!4725891 (= e!2947518 e!2947522)))

(declare-fun res!1999889 () Bool)

(assert (=> b!4725891 (=> (not res!1999889) (not e!2947522))))

(assert (=> b!4725891 (= res!1999889 (isDefined!9621 (getValueByKey!1963 (toList!5925 lt!1890419) key!4653)))))

(declare-fun b!4725892 () Bool)

(declare-fun lt!1890819 () Unit!130883)

(assert (=> b!4725892 (= e!2947520 lt!1890819)))

(declare-fun lt!1890817 () Unit!130883)

(assert (=> b!4725892 (= lt!1890817 (lemmaContainsKeyImpliesGetValueByKeyDefined!1854 (toList!5925 lt!1890419) key!4653))))

(assert (=> b!4725892 (isDefined!9621 (getValueByKey!1963 (toList!5925 lt!1890419) key!4653))))

(declare-fun lt!1890818 () Unit!130883)

(assert (=> b!4725892 (= lt!1890818 lt!1890817)))

(assert (=> b!4725892 (= lt!1890819 (lemmaInListThenGetKeysListContains!950 (toList!5925 lt!1890419) key!4653))))

(assert (=> b!4725892 call!330663))

(declare-fun b!4725893 () Bool)

(assert (=> b!4725893 (= e!2947517 (not (contains!16194 (keys!18982 lt!1890419) key!4653)))))

(declare-fun b!4725894 () Bool)

(assert (=> b!4725894 false))

(declare-fun lt!1890815 () Unit!130883)

(declare-fun lt!1890821 () Unit!130883)

(assert (=> b!4725894 (= lt!1890815 lt!1890821)))

(assert (=> b!4725894 (containsKey!3383 (toList!5925 lt!1890419) key!4653)))

(assert (=> b!4725894 (= lt!1890821 (lemmaInGetKeysListThenContainsKey!954 (toList!5925 lt!1890419) key!4653))))

(declare-fun Unit!130934 () Unit!130883)

(assert (=> b!4725894 (= e!2947521 Unit!130934)))

(assert (= (and d!1505727 c!807141) b!4725892))

(assert (= (and d!1505727 (not c!807141)) b!4725890))

(assert (= (and b!4725890 c!807140) b!4725894))

(assert (= (and b!4725890 (not c!807140)) b!4725886))

(assert (= (or b!4725892 b!4725890) bm!330658))

(assert (= (and bm!330658 c!807139) b!4725887))

(assert (= (and bm!330658 (not c!807139)) b!4725889))

(assert (= (and d!1505727 res!1999891) b!4725893))

(assert (= (and d!1505727 (not res!1999890)) b!4725891))

(assert (= (and b!4725891 res!1999889) b!4725888))

(declare-fun m!5665521 () Bool)

(assert (=> d!1505727 m!5665521))

(declare-fun m!5665523 () Bool)

(assert (=> bm!330658 m!5665523))

(declare-fun m!5665525 () Bool)

(assert (=> b!4725889 m!5665525))

(declare-fun m!5665527 () Bool)

(assert (=> b!4725891 m!5665527))

(assert (=> b!4725891 m!5665527))

(declare-fun m!5665529 () Bool)

(assert (=> b!4725891 m!5665529))

(assert (=> b!4725894 m!5665521))

(declare-fun m!5665531 () Bool)

(assert (=> b!4725894 m!5665531))

(assert (=> b!4725893 m!5665525))

(assert (=> b!4725893 m!5665525))

(declare-fun m!5665533 () Bool)

(assert (=> b!4725893 m!5665533))

(declare-fun m!5665535 () Bool)

(assert (=> b!4725887 m!5665535))

(declare-fun m!5665537 () Bool)

(assert (=> b!4725892 m!5665537))

(assert (=> b!4725892 m!5665527))

(assert (=> b!4725892 m!5665527))

(assert (=> b!4725892 m!5665529))

(declare-fun m!5665539 () Bool)

(assert (=> b!4725892 m!5665539))

(assert (=> b!4725888 m!5665525))

(assert (=> b!4725888 m!5665525))

(assert (=> b!4725888 m!5665533))

(assert (=> b!4725613 d!1505727))

(declare-fun bs!1117803 () Bool)

(declare-fun d!1505729 () Bool)

(assert (= bs!1117803 (and d!1505729 start!481108)))

(declare-fun lambda!216206 () Int)

(assert (=> bs!1117803 (= lambda!216206 lambda!216090)))

(declare-fun bs!1117804 () Bool)

(assert (= bs!1117804 (and d!1505729 d!1505589)))

(assert (=> bs!1117804 (= lambda!216206 lambda!216093)))

(declare-fun bs!1117805 () Bool)

(assert (= bs!1117805 (and d!1505729 d!1505685)))

(assert (=> bs!1117805 (not (= lambda!216206 lambda!216197))))

(assert (=> d!1505729 (not (contains!16190 (extractMap!2044 (toList!5926 (ListLongMap!4456 lt!1890422))) key!4653))))

(declare-fun lt!1890825 () Unit!130883)

(declare-fun choose!33365 (ListLongMap!4455 K!14195 Hashable!6387) Unit!130883)

(assert (=> d!1505729 (= lt!1890825 (choose!33365 (ListLongMap!4456 lt!1890422) key!4653 hashF!1323))))

(assert (=> d!1505729 (forall!11600 (toList!5926 (ListLongMap!4456 lt!1890422)) lambda!216206)))

(assert (=> d!1505729 (= (lemmaNotInItsHashBucketThenNotInMap!416 (ListLongMap!4456 lt!1890422) key!4653 hashF!1323) lt!1890825)))

(declare-fun bs!1117806 () Bool)

(assert (= bs!1117806 d!1505729))

(declare-fun m!5665541 () Bool)

(assert (=> bs!1117806 m!5665541))

(assert (=> bs!1117806 m!5665541))

(declare-fun m!5665543 () Bool)

(assert (=> bs!1117806 m!5665543))

(declare-fun m!5665545 () Bool)

(assert (=> bs!1117806 m!5665545))

(declare-fun m!5665547 () Bool)

(assert (=> bs!1117806 m!5665547))

(assert (=> b!4725613 d!1505729))

(declare-fun b!4725895 () Bool)

(declare-fun e!2947527 () Unit!130883)

(declare-fun Unit!130942 () Unit!130883)

(assert (=> b!4725895 (= e!2947527 Unit!130942)))

(declare-fun b!4725896 () Bool)

(declare-fun e!2947525 () List!52969)

(assert (=> b!4725896 (= e!2947525 (getKeysList!955 (toList!5925 lt!1890417)))))

(declare-fun b!4725897 () Bool)

(declare-fun e!2947528 () Bool)

(assert (=> b!4725897 (= e!2947528 (contains!16194 (keys!18982 lt!1890417) key!4653))))

(declare-fun d!1505731 () Bool)

(declare-fun e!2947524 () Bool)

(assert (=> d!1505731 e!2947524))

(declare-fun res!1999893 () Bool)

(assert (=> d!1505731 (=> res!1999893 e!2947524)))

(declare-fun e!2947523 () Bool)

(assert (=> d!1505731 (= res!1999893 e!2947523)))

(declare-fun res!1999894 () Bool)

(assert (=> d!1505731 (=> (not res!1999894) (not e!2947523))))

(declare-fun lt!1890833 () Bool)

(assert (=> d!1505731 (= res!1999894 (not lt!1890833))))

(declare-fun lt!1890831 () Bool)

(assert (=> d!1505731 (= lt!1890833 lt!1890831)))

(declare-fun lt!1890827 () Unit!130883)

(declare-fun e!2947526 () Unit!130883)

(assert (=> d!1505731 (= lt!1890827 e!2947526)))

(declare-fun c!807144 () Bool)

(assert (=> d!1505731 (= c!807144 lt!1890831)))

(assert (=> d!1505731 (= lt!1890831 (containsKey!3383 (toList!5925 lt!1890417) key!4653))))

(assert (=> d!1505731 (= (contains!16190 lt!1890417 key!4653) lt!1890833)))

(declare-fun b!4725898 () Bool)

(assert (=> b!4725898 (= e!2947525 (keys!18982 lt!1890417))))

(declare-fun b!4725899 () Bool)

(assert (=> b!4725899 (= e!2947526 e!2947527)))

(declare-fun c!807143 () Bool)

(declare-fun call!330664 () Bool)

(assert (=> b!4725899 (= c!807143 call!330664)))

(declare-fun bm!330659 () Bool)

(assert (=> bm!330659 (= call!330664 (contains!16194 e!2947525 key!4653))))

(declare-fun c!807142 () Bool)

(assert (=> bm!330659 (= c!807142 c!807144)))

(declare-fun b!4725900 () Bool)

(assert (=> b!4725900 (= e!2947524 e!2947528)))

(declare-fun res!1999892 () Bool)

(assert (=> b!4725900 (=> (not res!1999892) (not e!2947528))))

(assert (=> b!4725900 (= res!1999892 (isDefined!9621 (getValueByKey!1963 (toList!5925 lt!1890417) key!4653)))))

(declare-fun b!4725901 () Bool)

(declare-fun lt!1890830 () Unit!130883)

(assert (=> b!4725901 (= e!2947526 lt!1890830)))

(declare-fun lt!1890828 () Unit!130883)

(assert (=> b!4725901 (= lt!1890828 (lemmaContainsKeyImpliesGetValueByKeyDefined!1854 (toList!5925 lt!1890417) key!4653))))

(assert (=> b!4725901 (isDefined!9621 (getValueByKey!1963 (toList!5925 lt!1890417) key!4653))))

(declare-fun lt!1890829 () Unit!130883)

(assert (=> b!4725901 (= lt!1890829 lt!1890828)))

(assert (=> b!4725901 (= lt!1890830 (lemmaInListThenGetKeysListContains!950 (toList!5925 lt!1890417) key!4653))))

(assert (=> b!4725901 call!330664))

(declare-fun b!4725902 () Bool)

(assert (=> b!4725902 (= e!2947523 (not (contains!16194 (keys!18982 lt!1890417) key!4653)))))

(declare-fun b!4725903 () Bool)

(assert (=> b!4725903 false))

(declare-fun lt!1890826 () Unit!130883)

(declare-fun lt!1890832 () Unit!130883)

(assert (=> b!4725903 (= lt!1890826 lt!1890832)))

(assert (=> b!4725903 (containsKey!3383 (toList!5925 lt!1890417) key!4653)))

(assert (=> b!4725903 (= lt!1890832 (lemmaInGetKeysListThenContainsKey!954 (toList!5925 lt!1890417) key!4653))))

(declare-fun Unit!130947 () Unit!130883)

(assert (=> b!4725903 (= e!2947527 Unit!130947)))

(assert (= (and d!1505731 c!807144) b!4725901))

(assert (= (and d!1505731 (not c!807144)) b!4725899))

(assert (= (and b!4725899 c!807143) b!4725903))

(assert (= (and b!4725899 (not c!807143)) b!4725895))

(assert (= (or b!4725901 b!4725899) bm!330659))

(assert (= (and bm!330659 c!807142) b!4725896))

(assert (= (and bm!330659 (not c!807142)) b!4725898))

(assert (= (and d!1505731 res!1999894) b!4725902))

(assert (= (and d!1505731 (not res!1999893)) b!4725900))

(assert (= (and b!4725900 res!1999892) b!4725897))

(declare-fun m!5665549 () Bool)

(assert (=> d!1505731 m!5665549))

(declare-fun m!5665551 () Bool)

(assert (=> bm!330659 m!5665551))

(declare-fun m!5665553 () Bool)

(assert (=> b!4725898 m!5665553))

(declare-fun m!5665555 () Bool)

(assert (=> b!4725900 m!5665555))

(assert (=> b!4725900 m!5665555))

(declare-fun m!5665557 () Bool)

(assert (=> b!4725900 m!5665557))

(assert (=> b!4725903 m!5665549))

(declare-fun m!5665559 () Bool)

(assert (=> b!4725903 m!5665559))

(assert (=> b!4725902 m!5665553))

(assert (=> b!4725902 m!5665553))

(declare-fun m!5665561 () Bool)

(assert (=> b!4725902 m!5665561))

(declare-fun m!5665563 () Bool)

(assert (=> b!4725896 m!5665563))

(declare-fun m!5665565 () Bool)

(assert (=> b!4725901 m!5665565))

(assert (=> b!4725901 m!5665555))

(assert (=> b!4725901 m!5665555))

(assert (=> b!4725901 m!5665557))

(declare-fun m!5665567 () Bool)

(assert (=> b!4725901 m!5665567))

(assert (=> b!4725897 m!5665553))

(assert (=> b!4725897 m!5665553))

(assert (=> b!4725897 m!5665561))

(assert (=> b!4725611 d!1505731))

(declare-fun bs!1117807 () Bool)

(declare-fun d!1505733 () Bool)

(assert (= bs!1117807 (and d!1505733 start!481108)))

(declare-fun lambda!216207 () Int)

(assert (=> bs!1117807 (= lambda!216207 lambda!216090)))

(declare-fun bs!1117808 () Bool)

(assert (= bs!1117808 (and d!1505733 d!1505589)))

(assert (=> bs!1117808 (= lambda!216207 lambda!216093)))

(declare-fun bs!1117809 () Bool)

(assert (= bs!1117809 (and d!1505733 d!1505685)))

(assert (=> bs!1117809 (not (= lambda!216207 lambda!216197))))

(declare-fun bs!1117810 () Bool)

(assert (= bs!1117810 (and d!1505733 d!1505729)))

(assert (=> bs!1117810 (= lambda!216207 lambda!216206)))

(declare-fun lt!1890834 () ListMap!5289)

(assert (=> d!1505733 (invariantList!1515 (toList!5925 lt!1890834))))

(declare-fun e!2947529 () ListMap!5289)

(assert (=> d!1505733 (= lt!1890834 e!2947529)))

(declare-fun c!807145 () Bool)

(assert (=> d!1505733 (= c!807145 ((_ is Cons!52843) (toList!5926 lm!2023)))))

(assert (=> d!1505733 (forall!11600 (toList!5926 lm!2023) lambda!216207)))

(assert (=> d!1505733 (= (extractMap!2044 (toList!5926 lm!2023)) lt!1890834)))

(declare-fun b!4725904 () Bool)

(assert (=> b!4725904 (= e!2947529 (addToMapMapFromBucket!1448 (_2!30528 (h!59194 (toList!5926 lm!2023))) (extractMap!2044 (t!360241 (toList!5926 lm!2023)))))))

(declare-fun b!4725905 () Bool)

(assert (=> b!4725905 (= e!2947529 (ListMap!5290 Nil!52842))))

(assert (= (and d!1505733 c!807145) b!4725904))

(assert (= (and d!1505733 (not c!807145)) b!4725905))

(declare-fun m!5665569 () Bool)

(assert (=> d!1505733 m!5665569))

(declare-fun m!5665571 () Bool)

(assert (=> d!1505733 m!5665571))

(assert (=> b!4725904 m!5664887))

(assert (=> b!4725904 m!5664887))

(declare-fun m!5665573 () Bool)

(assert (=> b!4725904 m!5665573))

(assert (=> b!4725611 d!1505733))

(declare-fun d!1505735 () Bool)

(assert (=> d!1505735 (= (tail!9015 oldBucket!34) (t!360240 oldBucket!34))))

(assert (=> b!4725600 d!1505735))

(declare-fun d!1505737 () Bool)

(assert (=> d!1505737 (= (eq!1135 lt!1890431 lt!1890430) (= (content!9403 (toList!5925 lt!1890431)) (content!9403 (toList!5925 lt!1890430))))))

(declare-fun bs!1117811 () Bool)

(assert (= bs!1117811 d!1505737))

(declare-fun m!5665575 () Bool)

(assert (=> bs!1117811 m!5665575))

(declare-fun m!5665577 () Bool)

(assert (=> bs!1117811 m!5665577))

(assert (=> b!4725601 d!1505737))

(declare-fun d!1505739 () Bool)

(declare-fun res!1999899 () Bool)

(declare-fun e!2947534 () Bool)

(assert (=> d!1505739 (=> res!1999899 e!2947534)))

(assert (=> d!1505739 (= res!1999899 ((_ is Nil!52843) (toList!5926 lm!2023)))))

(assert (=> d!1505739 (= (forall!11600 (toList!5926 lm!2023) lambda!216090) e!2947534)))

(declare-fun b!4725910 () Bool)

(declare-fun e!2947535 () Bool)

(assert (=> b!4725910 (= e!2947534 e!2947535)))

(declare-fun res!1999900 () Bool)

(assert (=> b!4725910 (=> (not res!1999900) (not e!2947535))))

(declare-fun dynLambda!21827 (Int tuple2!54468) Bool)

(assert (=> b!4725910 (= res!1999900 (dynLambda!21827 lambda!216090 (h!59194 (toList!5926 lm!2023))))))

(declare-fun b!4725911 () Bool)

(assert (=> b!4725911 (= e!2947535 (forall!11600 (t!360241 (toList!5926 lm!2023)) lambda!216090))))

(assert (= (and d!1505739 (not res!1999899)) b!4725910))

(assert (= (and b!4725910 res!1999900) b!4725911))

(declare-fun b_lambda!179613 () Bool)

(assert (=> (not b_lambda!179613) (not b!4725910)))

(declare-fun m!5665579 () Bool)

(assert (=> b!4725910 m!5665579))

(declare-fun m!5665581 () Bool)

(assert (=> b!4725911 m!5665581))

(assert (=> start!481108 d!1505739))

(declare-fun d!1505741 () Bool)

(declare-fun isStrictlySorted!753 (List!52967) Bool)

(assert (=> d!1505741 (= (inv!68069 lm!2023) (isStrictlySorted!753 (toList!5926 lm!2023)))))

(declare-fun bs!1117812 () Bool)

(assert (= bs!1117812 d!1505741))

(declare-fun m!5665583 () Bool)

(assert (=> bs!1117812 m!5665583))

(assert (=> start!481108 d!1505741))

(declare-fun d!1505743 () Bool)

(assert (=> d!1505743 (= (head!10258 (toList!5926 lm!2023)) (h!59194 (toList!5926 lm!2023)))))

(assert (=> b!4725622 d!1505743))

(declare-fun bs!1117813 () Bool)

(declare-fun d!1505745 () Bool)

(assert (= bs!1117813 (and d!1505745 d!1505733)))

(declare-fun lambda!216208 () Int)

(assert (=> bs!1117813 (= lambda!216208 lambda!216207)))

(declare-fun bs!1117814 () Bool)

(assert (= bs!1117814 (and d!1505745 d!1505589)))

(assert (=> bs!1117814 (= lambda!216208 lambda!216093)))

(declare-fun bs!1117815 () Bool)

(assert (= bs!1117815 (and d!1505745 d!1505729)))

(assert (=> bs!1117815 (= lambda!216208 lambda!216206)))

(declare-fun bs!1117816 () Bool)

(assert (= bs!1117816 (and d!1505745 start!481108)))

(assert (=> bs!1117816 (= lambda!216208 lambda!216090)))

(declare-fun bs!1117817 () Bool)

(assert (= bs!1117817 (and d!1505745 d!1505685)))

(assert (=> bs!1117817 (not (= lambda!216208 lambda!216197))))

(declare-fun lt!1890835 () ListMap!5289)

(assert (=> d!1505745 (invariantList!1515 (toList!5925 lt!1890835))))

(declare-fun e!2947536 () ListMap!5289)

(assert (=> d!1505745 (= lt!1890835 e!2947536)))

(declare-fun c!807146 () Bool)

(assert (=> d!1505745 (= c!807146 ((_ is Cons!52843) (Cons!52843 lt!1890420 (t!360241 (toList!5926 lm!2023)))))))

(assert (=> d!1505745 (forall!11600 (Cons!52843 lt!1890420 (t!360241 (toList!5926 lm!2023))) lambda!216208)))

(assert (=> d!1505745 (= (extractMap!2044 (Cons!52843 lt!1890420 (t!360241 (toList!5926 lm!2023)))) lt!1890835)))

(declare-fun b!4725912 () Bool)

(assert (=> b!4725912 (= e!2947536 (addToMapMapFromBucket!1448 (_2!30528 (h!59194 (Cons!52843 lt!1890420 (t!360241 (toList!5926 lm!2023))))) (extractMap!2044 (t!360241 (Cons!52843 lt!1890420 (t!360241 (toList!5926 lm!2023)))))))))

(declare-fun b!4725913 () Bool)

(assert (=> b!4725913 (= e!2947536 (ListMap!5290 Nil!52842))))

(assert (= (and d!1505745 c!807146) b!4725912))

(assert (= (and d!1505745 (not c!807146)) b!4725913))

(declare-fun m!5665585 () Bool)

(assert (=> d!1505745 m!5665585))

(declare-fun m!5665587 () Bool)

(assert (=> d!1505745 m!5665587))

(declare-fun m!5665589 () Bool)

(assert (=> b!4725912 m!5665589))

(assert (=> b!4725912 m!5665589))

(declare-fun m!5665591 () Bool)

(assert (=> b!4725912 m!5665591))

(assert (=> b!4725615 d!1505745))

(declare-fun bs!1117818 () Bool)

(declare-fun d!1505747 () Bool)

(assert (= bs!1117818 (and d!1505747 d!1505733)))

(declare-fun lambda!216209 () Int)

(assert (=> bs!1117818 (= lambda!216209 lambda!216207)))

(declare-fun bs!1117819 () Bool)

(assert (= bs!1117819 (and d!1505747 d!1505589)))

(assert (=> bs!1117819 (= lambda!216209 lambda!216093)))

(declare-fun bs!1117820 () Bool)

(assert (= bs!1117820 (and d!1505747 d!1505729)))

(assert (=> bs!1117820 (= lambda!216209 lambda!216206)))

(declare-fun bs!1117821 () Bool)

(assert (= bs!1117821 (and d!1505747 start!481108)))

(assert (=> bs!1117821 (= lambda!216209 lambda!216090)))

(declare-fun bs!1117822 () Bool)

(assert (= bs!1117822 (and d!1505747 d!1505685)))

(assert (=> bs!1117822 (not (= lambda!216209 lambda!216197))))

(declare-fun bs!1117823 () Bool)

(assert (= bs!1117823 (and d!1505747 d!1505745)))

(assert (=> bs!1117823 (= lambda!216209 lambda!216208)))

(declare-fun lt!1890836 () ListMap!5289)

(assert (=> d!1505747 (invariantList!1515 (toList!5925 lt!1890836))))

(declare-fun e!2947537 () ListMap!5289)

(assert (=> d!1505747 (= lt!1890836 e!2947537)))

(declare-fun c!807147 () Bool)

(assert (=> d!1505747 (= c!807147 ((_ is Cons!52843) lt!1890422))))

(assert (=> d!1505747 (forall!11600 lt!1890422 lambda!216209)))

(assert (=> d!1505747 (= (extractMap!2044 lt!1890422) lt!1890836)))

(declare-fun b!4725914 () Bool)

(assert (=> b!4725914 (= e!2947537 (addToMapMapFromBucket!1448 (_2!30528 (h!59194 lt!1890422)) (extractMap!2044 (t!360241 lt!1890422))))))

(declare-fun b!4725915 () Bool)

(assert (=> b!4725915 (= e!2947537 (ListMap!5290 Nil!52842))))

(assert (= (and d!1505747 c!807147) b!4725914))

(assert (= (and d!1505747 (not c!807147)) b!4725915))

(declare-fun m!5665593 () Bool)

(assert (=> d!1505747 m!5665593))

(declare-fun m!5665595 () Bool)

(assert (=> d!1505747 m!5665595))

(declare-fun m!5665597 () Bool)

(assert (=> b!4725914 m!5665597))

(assert (=> b!4725914 m!5665597))

(declare-fun m!5665599 () Bool)

(assert (=> b!4725914 m!5665599))

(assert (=> b!4725615 d!1505747))

(declare-fun bs!1117824 () Bool)

(declare-fun b!4725916 () Bool)

(assert (= bs!1117824 (and b!4725916 d!1505631)))

(declare-fun lambda!216210 () Int)

(assert (=> bs!1117824 (= (= lt!1890429 lt!1890732) (= lambda!216210 lambda!216188))))

(declare-fun bs!1117825 () Bool)

(assert (= bs!1117825 (and b!4725916 d!1505601)))

(assert (=> bs!1117825 (not (= lambda!216210 lambda!216096))))

(declare-fun bs!1117826 () Bool)

(assert (= bs!1117826 (and b!4725916 b!4725802)))

(assert (=> bs!1117826 (= lambda!216210 lambda!216190)))

(declare-fun bs!1117827 () Bool)

(assert (= bs!1117827 (and b!4725916 d!1505671)))

(assert (=> bs!1117827 (= (= lt!1890429 lt!1890753) (= lambda!216210 lambda!216194))))

(declare-fun bs!1117828 () Bool)

(assert (= bs!1117828 (and b!4725916 b!4725806)))

(assert (=> bs!1117828 (= lambda!216210 lambda!216192)))

(assert (=> bs!1117828 (= (= lt!1890429 lt!1890746) (= lambda!216210 lambda!216193))))

(declare-fun bs!1117829 () Bool)

(assert (= bs!1117829 (and b!4725916 b!4725799)))

(assert (=> bs!1117829 (= lambda!216210 lambda!216186)))

(declare-fun bs!1117830 () Bool)

(assert (= bs!1117830 (and b!4725916 b!4725795)))

(assert (=> bs!1117830 (= lambda!216210 lambda!216184)))

(assert (=> bs!1117829 (= (= lt!1890429 lt!1890725) (= lambda!216210 lambda!216187))))

(declare-fun bs!1117831 () Bool)

(assert (= bs!1117831 (and b!4725916 d!1505717)))

(assert (=> bs!1117831 (not (= lambda!216210 lambda!216199))))

(assert (=> b!4725916 true))

(declare-fun bs!1117832 () Bool)

(declare-fun b!4725920 () Bool)

(assert (= bs!1117832 (and b!4725920 d!1505631)))

(declare-fun lambda!216211 () Int)

(assert (=> bs!1117832 (= (= lt!1890429 lt!1890732) (= lambda!216211 lambda!216188))))

(declare-fun bs!1117833 () Bool)

(assert (= bs!1117833 (and b!4725920 d!1505601)))

(assert (=> bs!1117833 (not (= lambda!216211 lambda!216096))))

(declare-fun bs!1117834 () Bool)

(assert (= bs!1117834 (and b!4725920 b!4725802)))

(assert (=> bs!1117834 (= lambda!216211 lambda!216190)))

(declare-fun bs!1117835 () Bool)

(assert (= bs!1117835 (and b!4725920 d!1505671)))

(assert (=> bs!1117835 (= (= lt!1890429 lt!1890753) (= lambda!216211 lambda!216194))))

(declare-fun bs!1117836 () Bool)

(assert (= bs!1117836 (and b!4725920 b!4725806)))

(assert (=> bs!1117836 (= lambda!216211 lambda!216192)))

(assert (=> bs!1117836 (= (= lt!1890429 lt!1890746) (= lambda!216211 lambda!216193))))

(declare-fun bs!1117837 () Bool)

(assert (= bs!1117837 (and b!4725920 b!4725916)))

(assert (=> bs!1117837 (= lambda!216211 lambda!216210)))

(declare-fun bs!1117838 () Bool)

(assert (= bs!1117838 (and b!4725920 b!4725799)))

(assert (=> bs!1117838 (= lambda!216211 lambda!216186)))

(declare-fun bs!1117839 () Bool)

(assert (= bs!1117839 (and b!4725920 b!4725795)))

(assert (=> bs!1117839 (= lambda!216211 lambda!216184)))

(assert (=> bs!1117838 (= (= lt!1890429 lt!1890725) (= lambda!216211 lambda!216187))))

(declare-fun bs!1117840 () Bool)

(assert (= bs!1117840 (and b!4725920 d!1505717)))

(assert (=> bs!1117840 (not (= lambda!216211 lambda!216199))))

(assert (=> b!4725920 true))

(declare-fun lambda!216212 () Int)

(declare-fun lt!1890849 () ListMap!5289)

(assert (=> bs!1117832 (= (= lt!1890849 lt!1890732) (= lambda!216212 lambda!216188))))

(assert (=> bs!1117833 (not (= lambda!216212 lambda!216096))))

(assert (=> bs!1117834 (= (= lt!1890849 lt!1890429) (= lambda!216212 lambda!216190))))

(assert (=> bs!1117835 (= (= lt!1890849 lt!1890753) (= lambda!216212 lambda!216194))))

(assert (=> bs!1117836 (= (= lt!1890849 lt!1890429) (= lambda!216212 lambda!216192))))

(assert (=> bs!1117836 (= (= lt!1890849 lt!1890746) (= lambda!216212 lambda!216193))))

(assert (=> bs!1117837 (= (= lt!1890849 lt!1890429) (= lambda!216212 lambda!216210))))

(assert (=> bs!1117838 (= (= lt!1890849 lt!1890429) (= lambda!216212 lambda!216186))))

(assert (=> b!4725920 (= (= lt!1890849 lt!1890429) (= lambda!216212 lambda!216211))))

(assert (=> bs!1117839 (= (= lt!1890849 lt!1890429) (= lambda!216212 lambda!216184))))

(assert (=> bs!1117838 (= (= lt!1890849 lt!1890725) (= lambda!216212 lambda!216187))))

(assert (=> bs!1117840 (not (= lambda!216212 lambda!216199))))

(assert (=> b!4725920 true))

(declare-fun bs!1117841 () Bool)

(declare-fun d!1505749 () Bool)

(assert (= bs!1117841 (and d!1505749 d!1505631)))

(declare-fun lt!1890856 () ListMap!5289)

(declare-fun lambda!216213 () Int)

(assert (=> bs!1117841 (= (= lt!1890856 lt!1890732) (= lambda!216213 lambda!216188))))

(declare-fun bs!1117842 () Bool)

(assert (= bs!1117842 (and d!1505749 d!1505601)))

(assert (=> bs!1117842 (not (= lambda!216213 lambda!216096))))

(declare-fun bs!1117843 () Bool)

(assert (= bs!1117843 (and d!1505749 b!4725802)))

(assert (=> bs!1117843 (= (= lt!1890856 lt!1890429) (= lambda!216213 lambda!216190))))

(declare-fun bs!1117844 () Bool)

(assert (= bs!1117844 (and d!1505749 d!1505671)))

(assert (=> bs!1117844 (= (= lt!1890856 lt!1890753) (= lambda!216213 lambda!216194))))

(declare-fun bs!1117845 () Bool)

(assert (= bs!1117845 (and d!1505749 b!4725806)))

(assert (=> bs!1117845 (= (= lt!1890856 lt!1890429) (= lambda!216213 lambda!216192))))

(assert (=> bs!1117845 (= (= lt!1890856 lt!1890746) (= lambda!216213 lambda!216193))))

(declare-fun bs!1117846 () Bool)

(assert (= bs!1117846 (and d!1505749 b!4725920)))

(assert (=> bs!1117846 (= (= lt!1890856 lt!1890849) (= lambda!216213 lambda!216212))))

(declare-fun bs!1117847 () Bool)

(assert (= bs!1117847 (and d!1505749 b!4725916)))

(assert (=> bs!1117847 (= (= lt!1890856 lt!1890429) (= lambda!216213 lambda!216210))))

(declare-fun bs!1117848 () Bool)

(assert (= bs!1117848 (and d!1505749 b!4725799)))

(assert (=> bs!1117848 (= (= lt!1890856 lt!1890429) (= lambda!216213 lambda!216186))))

(assert (=> bs!1117846 (= (= lt!1890856 lt!1890429) (= lambda!216213 lambda!216211))))

(declare-fun bs!1117849 () Bool)

(assert (= bs!1117849 (and d!1505749 b!4725795)))

(assert (=> bs!1117849 (= (= lt!1890856 lt!1890429) (= lambda!216213 lambda!216184))))

(assert (=> bs!1117848 (= (= lt!1890856 lt!1890725) (= lambda!216213 lambda!216187))))

(declare-fun bs!1117850 () Bool)

(assert (= bs!1117850 (and d!1505749 d!1505717)))

(assert (=> bs!1117850 (not (= lambda!216213 lambda!216199))))

(assert (=> d!1505749 true))

(declare-fun e!2947539 () ListMap!5289)

(assert (=> b!4725916 (= e!2947539 lt!1890429)))

(declare-fun lt!1890855 () Unit!130883)

(declare-fun call!330667 () Unit!130883)

(assert (=> b!4725916 (= lt!1890855 call!330667)))

(declare-fun call!330665 () Bool)

(assert (=> b!4725916 call!330665))

(declare-fun lt!1890853 () Unit!130883)

(assert (=> b!4725916 (= lt!1890853 lt!1890855)))

(declare-fun call!330666 () Bool)

(assert (=> b!4725916 call!330666))

(declare-fun lt!1890852 () Unit!130883)

(declare-fun Unit!130950 () Unit!130883)

(assert (=> b!4725916 (= lt!1890852 Unit!130950)))

(declare-fun b!4725917 () Bool)

(declare-fun res!1999902 () Bool)

(declare-fun e!2947538 () Bool)

(assert (=> b!4725917 (=> (not res!1999902) (not e!2947538))))

(assert (=> b!4725917 (= res!1999902 (forall!11602 (toList!5925 lt!1890429) lambda!216213))))

(declare-fun bm!330660 () Bool)

(declare-fun c!807148 () Bool)

(assert (=> bm!330660 (= call!330665 (forall!11602 (ite c!807148 (toList!5925 lt!1890429) (_2!30528 (h!59194 (toList!5926 lm!2023)))) (ite c!807148 lambda!216210 lambda!216212)))))

(declare-fun bm!330661 () Bool)

(assert (=> bm!330661 (= call!330667 (lemmaContainsAllItsOwnKeys!801 lt!1890429))))

(assert (=> d!1505749 e!2947538))

(declare-fun res!1999903 () Bool)

(assert (=> d!1505749 (=> (not res!1999903) (not e!2947538))))

(assert (=> d!1505749 (= res!1999903 (forall!11602 (_2!30528 (h!59194 (toList!5926 lm!2023))) lambda!216213))))

(assert (=> d!1505749 (= lt!1890856 e!2947539)))

(assert (=> d!1505749 (= c!807148 ((_ is Nil!52842) (_2!30528 (h!59194 (toList!5926 lm!2023)))))))

(assert (=> d!1505749 (noDuplicateKeys!2018 (_2!30528 (h!59194 (toList!5926 lm!2023))))))

(assert (=> d!1505749 (= (addToMapMapFromBucket!1448 (_2!30528 (h!59194 (toList!5926 lm!2023))) lt!1890429) lt!1890856)))

(declare-fun b!4725918 () Bool)

(assert (=> b!4725918 (= e!2947538 (invariantList!1515 (toList!5925 lt!1890856)))))

(declare-fun bm!330662 () Bool)

(assert (=> bm!330662 (= call!330666 (forall!11602 (toList!5925 lt!1890429) (ite c!807148 lambda!216210 lambda!216212)))))

(declare-fun b!4725919 () Bool)

(declare-fun e!2947540 () Bool)

(assert (=> b!4725919 (= e!2947540 call!330666)))

(assert (=> b!4725920 (= e!2947539 lt!1890849)))

(declare-fun lt!1890840 () ListMap!5289)

(assert (=> b!4725920 (= lt!1890840 (+!2273 lt!1890429 (h!59193 (_2!30528 (h!59194 (toList!5926 lm!2023))))))))

(assert (=> b!4725920 (= lt!1890849 (addToMapMapFromBucket!1448 (t!360240 (_2!30528 (h!59194 (toList!5926 lm!2023)))) (+!2273 lt!1890429 (h!59193 (_2!30528 (h!59194 (toList!5926 lm!2023)))))))))

(declare-fun lt!1890850 () Unit!130883)

(assert (=> b!4725920 (= lt!1890850 call!330667)))

(assert (=> b!4725920 (forall!11602 (toList!5925 lt!1890429) lambda!216211)))

(declare-fun lt!1890837 () Unit!130883)

(assert (=> b!4725920 (= lt!1890837 lt!1890850)))

(assert (=> b!4725920 (forall!11602 (toList!5925 lt!1890840) lambda!216212)))

(declare-fun lt!1890846 () Unit!130883)

(declare-fun Unit!130958 () Unit!130883)

(assert (=> b!4725920 (= lt!1890846 Unit!130958)))

(assert (=> b!4725920 (forall!11602 (t!360240 (_2!30528 (h!59194 (toList!5926 lm!2023)))) lambda!216212)))

(declare-fun lt!1890842 () Unit!130883)

(declare-fun Unit!130959 () Unit!130883)

(assert (=> b!4725920 (= lt!1890842 Unit!130959)))

(declare-fun lt!1890857 () Unit!130883)

(declare-fun Unit!130960 () Unit!130883)

(assert (=> b!4725920 (= lt!1890857 Unit!130960)))

(declare-fun lt!1890838 () Unit!130883)

(assert (=> b!4725920 (= lt!1890838 (forallContained!3647 (toList!5925 lt!1890840) lambda!216212 (h!59193 (_2!30528 (h!59194 (toList!5926 lm!2023))))))))

(assert (=> b!4725920 (contains!16190 lt!1890840 (_1!30527 (h!59193 (_2!30528 (h!59194 (toList!5926 lm!2023))))))))

(declare-fun lt!1890847 () Unit!130883)

(declare-fun Unit!130962 () Unit!130883)

(assert (=> b!4725920 (= lt!1890847 Unit!130962)))

(assert (=> b!4725920 (contains!16190 lt!1890849 (_1!30527 (h!59193 (_2!30528 (h!59194 (toList!5926 lm!2023))))))))

(declare-fun lt!1890851 () Unit!130883)

(declare-fun Unit!130963 () Unit!130883)

(assert (=> b!4725920 (= lt!1890851 Unit!130963)))

(assert (=> b!4725920 call!330665))

(declare-fun lt!1890843 () Unit!130883)

(declare-fun Unit!130965 () Unit!130883)

(assert (=> b!4725920 (= lt!1890843 Unit!130965)))

(assert (=> b!4725920 (forall!11602 (toList!5925 lt!1890840) lambda!216212)))

(declare-fun lt!1890845 () Unit!130883)

(declare-fun Unit!130966 () Unit!130883)

(assert (=> b!4725920 (= lt!1890845 Unit!130966)))

(declare-fun lt!1890848 () Unit!130883)

(declare-fun Unit!130967 () Unit!130883)

(assert (=> b!4725920 (= lt!1890848 Unit!130967)))

(declare-fun lt!1890841 () Unit!130883)

(assert (=> b!4725920 (= lt!1890841 (addForallContainsKeyThenBeforeAdding!800 lt!1890429 lt!1890849 (_1!30527 (h!59193 (_2!30528 (h!59194 (toList!5926 lm!2023))))) (_2!30527 (h!59193 (_2!30528 (h!59194 (toList!5926 lm!2023)))))))))

(assert (=> b!4725920 (forall!11602 (toList!5925 lt!1890429) lambda!216212)))

(declare-fun lt!1890844 () Unit!130883)

(assert (=> b!4725920 (= lt!1890844 lt!1890841)))

(assert (=> b!4725920 (forall!11602 (toList!5925 lt!1890429) lambda!216212)))

(declare-fun lt!1890854 () Unit!130883)

(declare-fun Unit!130968 () Unit!130883)

(assert (=> b!4725920 (= lt!1890854 Unit!130968)))

(declare-fun res!1999901 () Bool)

(assert (=> b!4725920 (= res!1999901 (forall!11602 (_2!30528 (h!59194 (toList!5926 lm!2023))) lambda!216212))))

(assert (=> b!4725920 (=> (not res!1999901) (not e!2947540))))

(assert (=> b!4725920 e!2947540))

(declare-fun lt!1890839 () Unit!130883)

(declare-fun Unit!130969 () Unit!130883)

(assert (=> b!4725920 (= lt!1890839 Unit!130969)))

(assert (= (and d!1505749 c!807148) b!4725916))

(assert (= (and d!1505749 (not c!807148)) b!4725920))

(assert (= (and b!4725920 res!1999901) b!4725919))

(assert (= (or b!4725916 b!4725920) bm!330661))

(assert (= (or b!4725916 b!4725919) bm!330662))

(assert (= (or b!4725916 b!4725920) bm!330660))

(assert (= (and d!1505749 res!1999903) b!4725917))

(assert (= (and b!4725917 res!1999902) b!4725918))

(declare-fun m!5665601 () Bool)

(assert (=> bm!330660 m!5665601))

(assert (=> bm!330661 m!5665253))

(declare-fun m!5665603 () Bool)

(assert (=> b!4725920 m!5665603))

(declare-fun m!5665605 () Bool)

(assert (=> b!4725920 m!5665605))

(assert (=> b!4725920 m!5665605))

(declare-fun m!5665607 () Bool)

(assert (=> b!4725920 m!5665607))

(declare-fun m!5665609 () Bool)

(assert (=> b!4725920 m!5665609))

(declare-fun m!5665611 () Bool)

(assert (=> b!4725920 m!5665611))

(declare-fun m!5665613 () Bool)

(assert (=> b!4725920 m!5665613))

(assert (=> b!4725920 m!5665609))

(declare-fun m!5665615 () Bool)

(assert (=> b!4725920 m!5665615))

(declare-fun m!5665617 () Bool)

(assert (=> b!4725920 m!5665617))

(assert (=> b!4725920 m!5665613))

(declare-fun m!5665619 () Bool)

(assert (=> b!4725920 m!5665619))

(declare-fun m!5665621 () Bool)

(assert (=> b!4725920 m!5665621))

(declare-fun m!5665623 () Bool)

(assert (=> b!4725920 m!5665623))

(declare-fun m!5665625 () Bool)

(assert (=> b!4725918 m!5665625))

(declare-fun m!5665627 () Bool)

(assert (=> d!1505749 m!5665627))

(declare-fun m!5665629 () Bool)

(assert (=> d!1505749 m!5665629))

(declare-fun m!5665631 () Bool)

(assert (=> bm!330662 m!5665631))

(declare-fun m!5665633 () Bool)

(assert (=> b!4725917 m!5665633))

(assert (=> b!4725605 d!1505749))

(declare-fun bs!1117851 () Bool)

(declare-fun d!1505751 () Bool)

(assert (= bs!1117851 (and d!1505751 d!1505733)))

(declare-fun lambda!216214 () Int)

(assert (=> bs!1117851 (= lambda!216214 lambda!216207)))

(declare-fun bs!1117852 () Bool)

(assert (= bs!1117852 (and d!1505751 d!1505589)))

(assert (=> bs!1117852 (= lambda!216214 lambda!216093)))

(declare-fun bs!1117853 () Bool)

(assert (= bs!1117853 (and d!1505751 d!1505729)))

(assert (=> bs!1117853 (= lambda!216214 lambda!216206)))

(declare-fun bs!1117854 () Bool)

(assert (= bs!1117854 (and d!1505751 start!481108)))

(assert (=> bs!1117854 (= lambda!216214 lambda!216090)))

(declare-fun bs!1117855 () Bool)

(assert (= bs!1117855 (and d!1505751 d!1505747)))

(assert (=> bs!1117855 (= lambda!216214 lambda!216209)))

(declare-fun bs!1117856 () Bool)

(assert (= bs!1117856 (and d!1505751 d!1505685)))

(assert (=> bs!1117856 (not (= lambda!216214 lambda!216197))))

(declare-fun bs!1117857 () Bool)

(assert (= bs!1117857 (and d!1505751 d!1505745)))

(assert (=> bs!1117857 (= lambda!216214 lambda!216208)))

(declare-fun lt!1890858 () ListMap!5289)

(assert (=> d!1505751 (invariantList!1515 (toList!5925 lt!1890858))))

(declare-fun e!2947541 () ListMap!5289)

(assert (=> d!1505751 (= lt!1890858 e!2947541)))

(declare-fun c!807149 () Bool)

(assert (=> d!1505751 (= c!807149 ((_ is Cons!52843) (t!360241 (toList!5926 lm!2023))))))

(assert (=> d!1505751 (forall!11600 (t!360241 (toList!5926 lm!2023)) lambda!216214)))

(assert (=> d!1505751 (= (extractMap!2044 (t!360241 (toList!5926 lm!2023))) lt!1890858)))

(declare-fun b!4725921 () Bool)

(assert (=> b!4725921 (= e!2947541 (addToMapMapFromBucket!1448 (_2!30528 (h!59194 (t!360241 (toList!5926 lm!2023)))) (extractMap!2044 (t!360241 (t!360241 (toList!5926 lm!2023))))))))

(declare-fun b!4725922 () Bool)

(assert (=> b!4725922 (= e!2947541 (ListMap!5290 Nil!52842))))

(assert (= (and d!1505751 c!807149) b!4725921))

(assert (= (and d!1505751 (not c!807149)) b!4725922))

(declare-fun m!5665635 () Bool)

(assert (=> d!1505751 m!5665635))

(declare-fun m!5665637 () Bool)

(assert (=> d!1505751 m!5665637))

(declare-fun m!5665639 () Bool)

(assert (=> b!4725921 m!5665639))

(assert (=> b!4725921 m!5665639))

(declare-fun m!5665641 () Bool)

(assert (=> b!4725921 m!5665641))

(assert (=> b!4725605 d!1505751))

(declare-fun d!1505753 () Bool)

(assert (=> d!1505753 (= (tail!9016 lm!2023) (ListLongMap!4456 (tail!9017 (toList!5926 lm!2023))))))

(declare-fun bs!1117858 () Bool)

(assert (= bs!1117858 d!1505753))

(assert (=> bs!1117858 m!5664843))

(assert (=> b!4725605 d!1505753))

(declare-fun d!1505755 () Bool)

(assert (=> d!1505755 (= (eq!1135 lt!1890430 lt!1890419) (= (content!9403 (toList!5925 lt!1890430)) (content!9403 (toList!5925 lt!1890419))))))

(declare-fun bs!1117859 () Bool)

(assert (= bs!1117859 d!1505755))

(assert (=> bs!1117859 m!5665577))

(declare-fun m!5665643 () Bool)

(assert (=> bs!1117859 m!5665643))

(assert (=> b!4725603 d!1505755))

(declare-fun d!1505757 () Bool)

(assert (=> d!1505757 (= (eq!1135 lt!1890418 lt!1890430) (= (content!9403 (toList!5925 lt!1890418)) (content!9403 (toList!5925 lt!1890430))))))

(declare-fun bs!1117860 () Bool)

(assert (= bs!1117860 d!1505757))

(declare-fun m!5665645 () Bool)

(assert (=> bs!1117860 m!5665645))

(assert (=> bs!1117860 m!5665577))

(assert (=> b!4725603 d!1505757))

(declare-fun d!1505759 () Bool)

(declare-fun e!2947542 () Bool)

(assert (=> d!1505759 e!2947542))

(declare-fun res!1999904 () Bool)

(assert (=> d!1505759 (=> (not res!1999904) (not e!2947542))))

(declare-fun lt!1890859 () ListMap!5289)

(assert (=> d!1505759 (= res!1999904 (not (contains!16190 lt!1890859 key!4653)))))

(assert (=> d!1505759 (= lt!1890859 (ListMap!5290 (removePresrvNoDuplicatedKeys!401 (toList!5925 lt!1890428) key!4653)))))

(assert (=> d!1505759 (= (-!754 lt!1890428 key!4653) lt!1890859)))

(declare-fun b!4725923 () Bool)

(assert (=> b!4725923 (= e!2947542 (= ((_ map and) (content!9405 (keys!18982 lt!1890428)) ((_ map not) (store ((as const (Array K!14195 Bool)) false) key!4653 true))) (content!9405 (keys!18982 lt!1890859))))))

(assert (= (and d!1505759 res!1999904) b!4725923))

(declare-fun m!5665647 () Bool)

(assert (=> d!1505759 m!5665647))

(declare-fun m!5665649 () Bool)

(assert (=> d!1505759 m!5665649))

(declare-fun m!5665651 () Bool)

(assert (=> b!4725923 m!5665651))

(declare-fun m!5665653 () Bool)

(assert (=> b!4725923 m!5665653))

(declare-fun m!5665655 () Bool)

(assert (=> b!4725923 m!5665655))

(assert (=> b!4725923 m!5665415))

(assert (=> b!4725923 m!5665651))

(declare-fun m!5665657 () Bool)

(assert (=> b!4725923 m!5665657))

(assert (=> b!4725923 m!5665653))

(assert (=> b!4725603 d!1505759))

(declare-fun d!1505761 () Bool)

(assert (=> d!1505761 (eq!1135 (-!754 lt!1890424 key!4653) (-!754 lt!1890428 key!4653))))

(declare-fun lt!1890862 () Unit!130883)

(declare-fun choose!33366 (ListMap!5289 ListMap!5289 K!14195) Unit!130883)

(assert (=> d!1505761 (= lt!1890862 (choose!33366 lt!1890424 lt!1890428 key!4653))))

(assert (=> d!1505761 (eq!1135 lt!1890424 lt!1890428)))

(assert (=> d!1505761 (= (lemmaRemovePreservesEq!122 lt!1890424 lt!1890428 key!4653) lt!1890862)))

(declare-fun bs!1117861 () Bool)

(assert (= bs!1117861 d!1505761))

(assert (=> bs!1117861 m!5664853))

(assert (=> bs!1117861 m!5664813))

(declare-fun m!5665659 () Bool)

(assert (=> bs!1117861 m!5665659))

(assert (=> bs!1117861 m!5664801))

(assert (=> bs!1117861 m!5664801))

(assert (=> bs!1117861 m!5664853))

(declare-fun m!5665661 () Bool)

(assert (=> bs!1117861 m!5665661))

(assert (=> b!4725603 d!1505761))

(declare-fun bs!1117862 () Bool)

(declare-fun b!4725924 () Bool)

(assert (= bs!1117862 (and b!4725924 d!1505631)))

(declare-fun lambda!216215 () Int)

(assert (=> bs!1117862 (= (= lt!1890429 lt!1890732) (= lambda!216215 lambda!216188))))

(declare-fun bs!1117863 () Bool)

(assert (= bs!1117863 (and b!4725924 d!1505601)))

(assert (=> bs!1117863 (not (= lambda!216215 lambda!216096))))

(declare-fun bs!1117864 () Bool)

(assert (= bs!1117864 (and b!4725924 b!4725802)))

(assert (=> bs!1117864 (= lambda!216215 lambda!216190)))

(declare-fun bs!1117865 () Bool)

(assert (= bs!1117865 (and b!4725924 d!1505671)))

(assert (=> bs!1117865 (= (= lt!1890429 lt!1890753) (= lambda!216215 lambda!216194))))

(declare-fun bs!1117866 () Bool)

(assert (= bs!1117866 (and b!4725924 b!4725806)))

(assert (=> bs!1117866 (= lambda!216215 lambda!216192)))

(assert (=> bs!1117866 (= (= lt!1890429 lt!1890746) (= lambda!216215 lambda!216193))))

(declare-fun bs!1117867 () Bool)

(assert (= bs!1117867 (and b!4725924 b!4725920)))

(assert (=> bs!1117867 (= (= lt!1890429 lt!1890849) (= lambda!216215 lambda!216212))))

(declare-fun bs!1117868 () Bool)

(assert (= bs!1117868 (and b!4725924 b!4725916)))

(assert (=> bs!1117868 (= lambda!216215 lambda!216210)))

(declare-fun bs!1117869 () Bool)

(assert (= bs!1117869 (and b!4725924 b!4725799)))

(assert (=> bs!1117869 (= lambda!216215 lambda!216186)))

(declare-fun bs!1117870 () Bool)

(assert (= bs!1117870 (and b!4725924 b!4725795)))

(assert (=> bs!1117870 (= lambda!216215 lambda!216184)))

(assert (=> bs!1117869 (= (= lt!1890429 lt!1890725) (= lambda!216215 lambda!216187))))

(declare-fun bs!1117871 () Bool)

(assert (= bs!1117871 (and b!4725924 d!1505717)))

(assert (=> bs!1117871 (not (= lambda!216215 lambda!216199))))

(declare-fun bs!1117872 () Bool)

(assert (= bs!1117872 (and b!4725924 d!1505749)))

(assert (=> bs!1117872 (= (= lt!1890429 lt!1890856) (= lambda!216215 lambda!216213))))

(assert (=> bs!1117867 (= lambda!216215 lambda!216211)))

(assert (=> b!4725924 true))

(declare-fun bs!1117873 () Bool)

(declare-fun b!4725928 () Bool)

(assert (= bs!1117873 (and b!4725928 d!1505631)))

(declare-fun lambda!216216 () Int)

(assert (=> bs!1117873 (= (= lt!1890429 lt!1890732) (= lambda!216216 lambda!216188))))

(declare-fun bs!1117874 () Bool)

(assert (= bs!1117874 (and b!4725928 d!1505601)))

(assert (=> bs!1117874 (not (= lambda!216216 lambda!216096))))

(declare-fun bs!1117875 () Bool)

(assert (= bs!1117875 (and b!4725928 b!4725802)))

(assert (=> bs!1117875 (= lambda!216216 lambda!216190)))

(declare-fun bs!1117876 () Bool)

(assert (= bs!1117876 (and b!4725928 d!1505671)))

(assert (=> bs!1117876 (= (= lt!1890429 lt!1890753) (= lambda!216216 lambda!216194))))

(declare-fun bs!1117877 () Bool)

(assert (= bs!1117877 (and b!4725928 b!4725806)))

(assert (=> bs!1117877 (= lambda!216216 lambda!216192)))

(assert (=> bs!1117877 (= (= lt!1890429 lt!1890746) (= lambda!216216 lambda!216193))))

(declare-fun bs!1117878 () Bool)

(assert (= bs!1117878 (and b!4725928 b!4725920)))

(assert (=> bs!1117878 (= (= lt!1890429 lt!1890849) (= lambda!216216 lambda!216212))))

(declare-fun bs!1117879 () Bool)

(assert (= bs!1117879 (and b!4725928 b!4725916)))

(assert (=> bs!1117879 (= lambda!216216 lambda!216210)))

(declare-fun bs!1117880 () Bool)

(assert (= bs!1117880 (and b!4725928 b!4725799)))

(assert (=> bs!1117880 (= lambda!216216 lambda!216186)))

(declare-fun bs!1117881 () Bool)

(assert (= bs!1117881 (and b!4725928 b!4725924)))

(assert (=> bs!1117881 (= lambda!216216 lambda!216215)))

(declare-fun bs!1117882 () Bool)

(assert (= bs!1117882 (and b!4725928 b!4725795)))

(assert (=> bs!1117882 (= lambda!216216 lambda!216184)))

(assert (=> bs!1117880 (= (= lt!1890429 lt!1890725) (= lambda!216216 lambda!216187))))

(declare-fun bs!1117883 () Bool)

(assert (= bs!1117883 (and b!4725928 d!1505717)))

(assert (=> bs!1117883 (not (= lambda!216216 lambda!216199))))

(declare-fun bs!1117884 () Bool)

(assert (= bs!1117884 (and b!4725928 d!1505749)))

(assert (=> bs!1117884 (= (= lt!1890429 lt!1890856) (= lambda!216216 lambda!216213))))

(assert (=> bs!1117878 (= lambda!216216 lambda!216211)))

(assert (=> b!4725928 true))

(declare-fun lambda!216217 () Int)

(declare-fun lt!1890875 () ListMap!5289)

(assert (=> bs!1117873 (= (= lt!1890875 lt!1890732) (= lambda!216217 lambda!216188))))

(assert (=> bs!1117874 (not (= lambda!216217 lambda!216096))))

(assert (=> bs!1117875 (= (= lt!1890875 lt!1890429) (= lambda!216217 lambda!216190))))

(assert (=> bs!1117876 (= (= lt!1890875 lt!1890753) (= lambda!216217 lambda!216194))))

(assert (=> bs!1117877 (= (= lt!1890875 lt!1890429) (= lambda!216217 lambda!216192))))

(assert (=> bs!1117877 (= (= lt!1890875 lt!1890746) (= lambda!216217 lambda!216193))))

(assert (=> b!4725928 (= (= lt!1890875 lt!1890429) (= lambda!216217 lambda!216216))))

(assert (=> bs!1117878 (= (= lt!1890875 lt!1890849) (= lambda!216217 lambda!216212))))

(assert (=> bs!1117879 (= (= lt!1890875 lt!1890429) (= lambda!216217 lambda!216210))))

(assert (=> bs!1117880 (= (= lt!1890875 lt!1890429) (= lambda!216217 lambda!216186))))

(assert (=> bs!1117881 (= (= lt!1890875 lt!1890429) (= lambda!216217 lambda!216215))))

(assert (=> bs!1117882 (= (= lt!1890875 lt!1890429) (= lambda!216217 lambda!216184))))

(assert (=> bs!1117880 (= (= lt!1890875 lt!1890725) (= lambda!216217 lambda!216187))))

(assert (=> bs!1117883 (not (= lambda!216217 lambda!216199))))

(assert (=> bs!1117884 (= (= lt!1890875 lt!1890856) (= lambda!216217 lambda!216213))))

(assert (=> bs!1117878 (= (= lt!1890875 lt!1890429) (= lambda!216217 lambda!216211))))

(assert (=> b!4725928 true))

(declare-fun bs!1117885 () Bool)

(declare-fun d!1505763 () Bool)

(assert (= bs!1117885 (and d!1505763 d!1505631)))

(declare-fun lambda!216218 () Int)

(declare-fun lt!1890882 () ListMap!5289)

(assert (=> bs!1117885 (= (= lt!1890882 lt!1890732) (= lambda!216218 lambda!216188))))

(declare-fun bs!1117886 () Bool)

(assert (= bs!1117886 (and d!1505763 d!1505601)))

(assert (=> bs!1117886 (not (= lambda!216218 lambda!216096))))

(declare-fun bs!1117887 () Bool)

(assert (= bs!1117887 (and d!1505763 d!1505671)))

(assert (=> bs!1117887 (= (= lt!1890882 lt!1890753) (= lambda!216218 lambda!216194))))

(declare-fun bs!1117888 () Bool)

(assert (= bs!1117888 (and d!1505763 b!4725806)))

(assert (=> bs!1117888 (= (= lt!1890882 lt!1890429) (= lambda!216218 lambda!216192))))

(assert (=> bs!1117888 (= (= lt!1890882 lt!1890746) (= lambda!216218 lambda!216193))))

(declare-fun bs!1117889 () Bool)

(assert (= bs!1117889 (and d!1505763 b!4725928)))

(assert (=> bs!1117889 (= (= lt!1890882 lt!1890429) (= lambda!216218 lambda!216216))))

(declare-fun bs!1117890 () Bool)

(assert (= bs!1117890 (and d!1505763 b!4725920)))

(assert (=> bs!1117890 (= (= lt!1890882 lt!1890849) (= lambda!216218 lambda!216212))))

(declare-fun bs!1117891 () Bool)

(assert (= bs!1117891 (and d!1505763 b!4725916)))

(assert (=> bs!1117891 (= (= lt!1890882 lt!1890429) (= lambda!216218 lambda!216210))))

(declare-fun bs!1117892 () Bool)

(assert (= bs!1117892 (and d!1505763 b!4725799)))

(assert (=> bs!1117892 (= (= lt!1890882 lt!1890429) (= lambda!216218 lambda!216186))))

(declare-fun bs!1117893 () Bool)

(assert (= bs!1117893 (and d!1505763 b!4725924)))

(assert (=> bs!1117893 (= (= lt!1890882 lt!1890429) (= lambda!216218 lambda!216215))))

(declare-fun bs!1117894 () Bool)

(assert (= bs!1117894 (and d!1505763 b!4725795)))

(assert (=> bs!1117894 (= (= lt!1890882 lt!1890429) (= lambda!216218 lambda!216184))))

(assert (=> bs!1117892 (= (= lt!1890882 lt!1890725) (= lambda!216218 lambda!216187))))

(declare-fun bs!1117895 () Bool)

(assert (= bs!1117895 (and d!1505763 d!1505717)))

(assert (=> bs!1117895 (not (= lambda!216218 lambda!216199))))

(assert (=> bs!1117889 (= (= lt!1890882 lt!1890875) (= lambda!216218 lambda!216217))))

(declare-fun bs!1117896 () Bool)

(assert (= bs!1117896 (and d!1505763 b!4725802)))

(assert (=> bs!1117896 (= (= lt!1890882 lt!1890429) (= lambda!216218 lambda!216190))))

(declare-fun bs!1117897 () Bool)

(assert (= bs!1117897 (and d!1505763 d!1505749)))

(assert (=> bs!1117897 (= (= lt!1890882 lt!1890856) (= lambda!216218 lambda!216213))))

(assert (=> bs!1117890 (= (= lt!1890882 lt!1890429) (= lambda!216218 lambda!216211))))

(assert (=> d!1505763 true))

(declare-fun e!2947544 () ListMap!5289)

(assert (=> b!4725924 (= e!2947544 lt!1890429)))

(declare-fun lt!1890881 () Unit!130883)

(declare-fun call!330670 () Unit!130883)

(assert (=> b!4725924 (= lt!1890881 call!330670)))

(declare-fun call!330668 () Bool)

(assert (=> b!4725924 call!330668))

(declare-fun lt!1890879 () Unit!130883)

(assert (=> b!4725924 (= lt!1890879 lt!1890881)))

(declare-fun call!330669 () Bool)

(assert (=> b!4725924 call!330669))

(declare-fun lt!1890878 () Unit!130883)

(declare-fun Unit!130970 () Unit!130883)

(assert (=> b!4725924 (= lt!1890878 Unit!130970)))

(declare-fun b!4725925 () Bool)

(declare-fun res!1999906 () Bool)

(declare-fun e!2947543 () Bool)

(assert (=> b!4725925 (=> (not res!1999906) (not e!2947543))))

(assert (=> b!4725925 (= res!1999906 (forall!11602 (toList!5925 lt!1890429) lambda!216218))))

(declare-fun bm!330663 () Bool)

(declare-fun c!807150 () Bool)

(assert (=> bm!330663 (= call!330668 (forall!11602 (ite c!807150 (toList!5925 lt!1890429) newBucket!218) (ite c!807150 lambda!216215 lambda!216217)))))

(declare-fun bm!330664 () Bool)

(assert (=> bm!330664 (= call!330670 (lemmaContainsAllItsOwnKeys!801 lt!1890429))))

(assert (=> d!1505763 e!2947543))

(declare-fun res!1999907 () Bool)

(assert (=> d!1505763 (=> (not res!1999907) (not e!2947543))))

(assert (=> d!1505763 (= res!1999907 (forall!11602 newBucket!218 lambda!216218))))

(assert (=> d!1505763 (= lt!1890882 e!2947544)))

(assert (=> d!1505763 (= c!807150 ((_ is Nil!52842) newBucket!218))))

(assert (=> d!1505763 (noDuplicateKeys!2018 newBucket!218)))

(assert (=> d!1505763 (= (addToMapMapFromBucket!1448 newBucket!218 lt!1890429) lt!1890882)))

(declare-fun b!4725926 () Bool)

(assert (=> b!4725926 (= e!2947543 (invariantList!1515 (toList!5925 lt!1890882)))))

(declare-fun bm!330665 () Bool)

(assert (=> bm!330665 (= call!330669 (forall!11602 (toList!5925 lt!1890429) (ite c!807150 lambda!216215 lambda!216217)))))

(declare-fun b!4725927 () Bool)

(declare-fun e!2947545 () Bool)

(assert (=> b!4725927 (= e!2947545 call!330669)))

(assert (=> b!4725928 (= e!2947544 lt!1890875)))

(declare-fun lt!1890866 () ListMap!5289)

(assert (=> b!4725928 (= lt!1890866 (+!2273 lt!1890429 (h!59193 newBucket!218)))))

(assert (=> b!4725928 (= lt!1890875 (addToMapMapFromBucket!1448 (t!360240 newBucket!218) (+!2273 lt!1890429 (h!59193 newBucket!218))))))

(declare-fun lt!1890876 () Unit!130883)

(assert (=> b!4725928 (= lt!1890876 call!330670)))

(assert (=> b!4725928 (forall!11602 (toList!5925 lt!1890429) lambda!216216)))

(declare-fun lt!1890863 () Unit!130883)

(assert (=> b!4725928 (= lt!1890863 lt!1890876)))

(assert (=> b!4725928 (forall!11602 (toList!5925 lt!1890866) lambda!216217)))

(declare-fun lt!1890872 () Unit!130883)

(declare-fun Unit!130971 () Unit!130883)

(assert (=> b!4725928 (= lt!1890872 Unit!130971)))

(assert (=> b!4725928 (forall!11602 (t!360240 newBucket!218) lambda!216217)))

(declare-fun lt!1890868 () Unit!130883)

(declare-fun Unit!130972 () Unit!130883)

(assert (=> b!4725928 (= lt!1890868 Unit!130972)))

(declare-fun lt!1890883 () Unit!130883)

(declare-fun Unit!130973 () Unit!130883)

(assert (=> b!4725928 (= lt!1890883 Unit!130973)))

(declare-fun lt!1890864 () Unit!130883)

(assert (=> b!4725928 (= lt!1890864 (forallContained!3647 (toList!5925 lt!1890866) lambda!216217 (h!59193 newBucket!218)))))

(assert (=> b!4725928 (contains!16190 lt!1890866 (_1!30527 (h!59193 newBucket!218)))))

(declare-fun lt!1890873 () Unit!130883)

(declare-fun Unit!130974 () Unit!130883)

(assert (=> b!4725928 (= lt!1890873 Unit!130974)))

(assert (=> b!4725928 (contains!16190 lt!1890875 (_1!30527 (h!59193 newBucket!218)))))

(declare-fun lt!1890877 () Unit!130883)

(declare-fun Unit!130975 () Unit!130883)

(assert (=> b!4725928 (= lt!1890877 Unit!130975)))

(assert (=> b!4725928 call!330668))

(declare-fun lt!1890869 () Unit!130883)

(declare-fun Unit!130976 () Unit!130883)

(assert (=> b!4725928 (= lt!1890869 Unit!130976)))

(assert (=> b!4725928 (forall!11602 (toList!5925 lt!1890866) lambda!216217)))

(declare-fun lt!1890871 () Unit!130883)

(declare-fun Unit!130977 () Unit!130883)

(assert (=> b!4725928 (= lt!1890871 Unit!130977)))

(declare-fun lt!1890874 () Unit!130883)

(declare-fun Unit!130978 () Unit!130883)

(assert (=> b!4725928 (= lt!1890874 Unit!130978)))

(declare-fun lt!1890867 () Unit!130883)

(assert (=> b!4725928 (= lt!1890867 (addForallContainsKeyThenBeforeAdding!800 lt!1890429 lt!1890875 (_1!30527 (h!59193 newBucket!218)) (_2!30527 (h!59193 newBucket!218))))))

(assert (=> b!4725928 (forall!11602 (toList!5925 lt!1890429) lambda!216217)))

(declare-fun lt!1890870 () Unit!130883)

(assert (=> b!4725928 (= lt!1890870 lt!1890867)))

(assert (=> b!4725928 (forall!11602 (toList!5925 lt!1890429) lambda!216217)))

(declare-fun lt!1890880 () Unit!130883)

(declare-fun Unit!130979 () Unit!130883)

(assert (=> b!4725928 (= lt!1890880 Unit!130979)))

(declare-fun res!1999905 () Bool)

(assert (=> b!4725928 (= res!1999905 (forall!11602 newBucket!218 lambda!216217))))

(assert (=> b!4725928 (=> (not res!1999905) (not e!2947545))))

(assert (=> b!4725928 e!2947545))

(declare-fun lt!1890865 () Unit!130883)

(declare-fun Unit!130980 () Unit!130883)

(assert (=> b!4725928 (= lt!1890865 Unit!130980)))

(assert (= (and d!1505763 c!807150) b!4725924))

(assert (= (and d!1505763 (not c!807150)) b!4725928))

(assert (= (and b!4725928 res!1999905) b!4725927))

(assert (= (or b!4725924 b!4725928) bm!330664))

(assert (= (or b!4725924 b!4725927) bm!330665))

(assert (= (or b!4725924 b!4725928) bm!330663))

(assert (= (and d!1505763 res!1999907) b!4725925))

(assert (= (and b!4725925 res!1999906) b!4725926))

(declare-fun m!5665663 () Bool)

(assert (=> bm!330663 m!5665663))

(assert (=> bm!330664 m!5665253))

(declare-fun m!5665665 () Bool)

(assert (=> b!4725928 m!5665665))

(declare-fun m!5665667 () Bool)

(assert (=> b!4725928 m!5665667))

(assert (=> b!4725928 m!5665667))

(declare-fun m!5665669 () Bool)

(assert (=> b!4725928 m!5665669))

(declare-fun m!5665671 () Bool)

(assert (=> b!4725928 m!5665671))

(declare-fun m!5665673 () Bool)

(assert (=> b!4725928 m!5665673))

(declare-fun m!5665675 () Bool)

(assert (=> b!4725928 m!5665675))

(assert (=> b!4725928 m!5665671))

(declare-fun m!5665677 () Bool)

(assert (=> b!4725928 m!5665677))

(declare-fun m!5665679 () Bool)

(assert (=> b!4725928 m!5665679))

(assert (=> b!4725928 m!5665675))

(declare-fun m!5665681 () Bool)

(assert (=> b!4725928 m!5665681))

(declare-fun m!5665683 () Bool)

(assert (=> b!4725928 m!5665683))

(declare-fun m!5665685 () Bool)

(assert (=> b!4725928 m!5665685))

(declare-fun m!5665687 () Bool)

(assert (=> b!4725926 m!5665687))

(declare-fun m!5665689 () Bool)

(assert (=> d!1505763 m!5665689))

(assert (=> d!1505763 m!5664883))

(declare-fun m!5665691 () Bool)

(assert (=> bm!330665 m!5665691))

(declare-fun m!5665693 () Bool)

(assert (=> b!4725925 m!5665693))

(assert (=> b!4725624 d!1505763))

(declare-fun bs!1117898 () Bool)

(declare-fun b!4725929 () Bool)

(assert (= bs!1117898 (and b!4725929 d!1505631)))

(declare-fun lambda!216219 () Int)

(assert (=> bs!1117898 (= (= lt!1890429 lt!1890732) (= lambda!216219 lambda!216188))))

(declare-fun bs!1117899 () Bool)

(assert (= bs!1117899 (and b!4725929 d!1505601)))

(assert (=> bs!1117899 (not (= lambda!216219 lambda!216096))))

(declare-fun bs!1117900 () Bool)

(assert (= bs!1117900 (and b!4725929 d!1505671)))

(assert (=> bs!1117900 (= (= lt!1890429 lt!1890753) (= lambda!216219 lambda!216194))))

(declare-fun bs!1117901 () Bool)

(assert (= bs!1117901 (and b!4725929 b!4725806)))

(assert (=> bs!1117901 (= lambda!216219 lambda!216192)))

(assert (=> bs!1117901 (= (= lt!1890429 lt!1890746) (= lambda!216219 lambda!216193))))

(declare-fun bs!1117902 () Bool)

(assert (= bs!1117902 (and b!4725929 b!4725928)))

(assert (=> bs!1117902 (= lambda!216219 lambda!216216)))

(declare-fun bs!1117903 () Bool)

(assert (= bs!1117903 (and b!4725929 b!4725920)))

(assert (=> bs!1117903 (= (= lt!1890429 lt!1890849) (= lambda!216219 lambda!216212))))

(declare-fun bs!1117904 () Bool)

(assert (= bs!1117904 (and b!4725929 b!4725916)))

(assert (=> bs!1117904 (= lambda!216219 lambda!216210)))

(declare-fun bs!1117905 () Bool)

(assert (= bs!1117905 (and b!4725929 d!1505763)))

(assert (=> bs!1117905 (= (= lt!1890429 lt!1890882) (= lambda!216219 lambda!216218))))

(declare-fun bs!1117906 () Bool)

(assert (= bs!1117906 (and b!4725929 b!4725799)))

(assert (=> bs!1117906 (= lambda!216219 lambda!216186)))

(declare-fun bs!1117907 () Bool)

(assert (= bs!1117907 (and b!4725929 b!4725924)))

(assert (=> bs!1117907 (= lambda!216219 lambda!216215)))

(declare-fun bs!1117908 () Bool)

(assert (= bs!1117908 (and b!4725929 b!4725795)))

(assert (=> bs!1117908 (= lambda!216219 lambda!216184)))

(assert (=> bs!1117906 (= (= lt!1890429 lt!1890725) (= lambda!216219 lambda!216187))))

(declare-fun bs!1117909 () Bool)

(assert (= bs!1117909 (and b!4725929 d!1505717)))

(assert (=> bs!1117909 (not (= lambda!216219 lambda!216199))))

(assert (=> bs!1117902 (= (= lt!1890429 lt!1890875) (= lambda!216219 lambda!216217))))

(declare-fun bs!1117910 () Bool)

(assert (= bs!1117910 (and b!4725929 b!4725802)))

(assert (=> bs!1117910 (= lambda!216219 lambda!216190)))

(declare-fun bs!1117911 () Bool)

(assert (= bs!1117911 (and b!4725929 d!1505749)))

(assert (=> bs!1117911 (= (= lt!1890429 lt!1890856) (= lambda!216219 lambda!216213))))

(assert (=> bs!1117903 (= lambda!216219 lambda!216211)))

(assert (=> b!4725929 true))

(declare-fun bs!1117912 () Bool)

(declare-fun b!4725933 () Bool)

(assert (= bs!1117912 (and b!4725933 d!1505631)))

(declare-fun lambda!216220 () Int)

(assert (=> bs!1117912 (= (= lt!1890429 lt!1890732) (= lambda!216220 lambda!216188))))

(declare-fun bs!1117913 () Bool)

(assert (= bs!1117913 (and b!4725933 d!1505671)))

(assert (=> bs!1117913 (= (= lt!1890429 lt!1890753) (= lambda!216220 lambda!216194))))

(declare-fun bs!1117914 () Bool)

(assert (= bs!1117914 (and b!4725933 b!4725806)))

(assert (=> bs!1117914 (= lambda!216220 lambda!216192)))

(assert (=> bs!1117914 (= (= lt!1890429 lt!1890746) (= lambda!216220 lambda!216193))))

(declare-fun bs!1117915 () Bool)

(assert (= bs!1117915 (and b!4725933 b!4725928)))

(assert (=> bs!1117915 (= lambda!216220 lambda!216216)))

(declare-fun bs!1117916 () Bool)

(assert (= bs!1117916 (and b!4725933 b!4725920)))

(assert (=> bs!1117916 (= (= lt!1890429 lt!1890849) (= lambda!216220 lambda!216212))))

(declare-fun bs!1117917 () Bool)

(assert (= bs!1117917 (and b!4725933 b!4725916)))

(assert (=> bs!1117917 (= lambda!216220 lambda!216210)))

(declare-fun bs!1117918 () Bool)

(assert (= bs!1117918 (and b!4725933 d!1505763)))

(assert (=> bs!1117918 (= (= lt!1890429 lt!1890882) (= lambda!216220 lambda!216218))))

(declare-fun bs!1117919 () Bool)

(assert (= bs!1117919 (and b!4725933 b!4725799)))

(assert (=> bs!1117919 (= lambda!216220 lambda!216186)))

(declare-fun bs!1117920 () Bool)

(assert (= bs!1117920 (and b!4725933 b!4725924)))

(assert (=> bs!1117920 (= lambda!216220 lambda!216215)))

(declare-fun bs!1117921 () Bool)

(assert (= bs!1117921 (and b!4725933 b!4725795)))

(assert (=> bs!1117921 (= lambda!216220 lambda!216184)))

(assert (=> bs!1117919 (= (= lt!1890429 lt!1890725) (= lambda!216220 lambda!216187))))

(declare-fun bs!1117922 () Bool)

(assert (= bs!1117922 (and b!4725933 d!1505717)))

(assert (=> bs!1117922 (not (= lambda!216220 lambda!216199))))

(declare-fun bs!1117923 () Bool)

(assert (= bs!1117923 (and b!4725933 b!4725929)))

(assert (=> bs!1117923 (= lambda!216220 lambda!216219)))

(declare-fun bs!1117924 () Bool)

(assert (= bs!1117924 (and b!4725933 d!1505601)))

(assert (=> bs!1117924 (not (= lambda!216220 lambda!216096))))

(assert (=> bs!1117915 (= (= lt!1890429 lt!1890875) (= lambda!216220 lambda!216217))))

(declare-fun bs!1117925 () Bool)

(assert (= bs!1117925 (and b!4725933 b!4725802)))

(assert (=> bs!1117925 (= lambda!216220 lambda!216190)))

(declare-fun bs!1117926 () Bool)

(assert (= bs!1117926 (and b!4725933 d!1505749)))

(assert (=> bs!1117926 (= (= lt!1890429 lt!1890856) (= lambda!216220 lambda!216213))))

(assert (=> bs!1117916 (= lambda!216220 lambda!216211)))

(assert (=> b!4725933 true))

(declare-fun lt!1890896 () ListMap!5289)

(declare-fun lambda!216221 () Int)

(assert (=> bs!1117912 (= (= lt!1890896 lt!1890732) (= lambda!216221 lambda!216188))))

(assert (=> bs!1117913 (= (= lt!1890896 lt!1890753) (= lambda!216221 lambda!216194))))

(assert (=> bs!1117914 (= (= lt!1890896 lt!1890429) (= lambda!216221 lambda!216192))))

(assert (=> bs!1117914 (= (= lt!1890896 lt!1890746) (= lambda!216221 lambda!216193))))

(assert (=> bs!1117915 (= (= lt!1890896 lt!1890429) (= lambda!216221 lambda!216216))))

(assert (=> bs!1117916 (= (= lt!1890896 lt!1890849) (= lambda!216221 lambda!216212))))

(assert (=> bs!1117917 (= (= lt!1890896 lt!1890429) (= lambda!216221 lambda!216210))))

(assert (=> bs!1117918 (= (= lt!1890896 lt!1890882) (= lambda!216221 lambda!216218))))

(assert (=> bs!1117919 (= (= lt!1890896 lt!1890429) (= lambda!216221 lambda!216186))))

(assert (=> bs!1117920 (= (= lt!1890896 lt!1890429) (= lambda!216221 lambda!216215))))

(assert (=> b!4725933 (= (= lt!1890896 lt!1890429) (= lambda!216221 lambda!216220))))

(assert (=> bs!1117921 (= (= lt!1890896 lt!1890429) (= lambda!216221 lambda!216184))))

(assert (=> bs!1117919 (= (= lt!1890896 lt!1890725) (= lambda!216221 lambda!216187))))

(assert (=> bs!1117922 (not (= lambda!216221 lambda!216199))))

(assert (=> bs!1117923 (= (= lt!1890896 lt!1890429) (= lambda!216221 lambda!216219))))

(assert (=> bs!1117924 (not (= lambda!216221 lambda!216096))))

(assert (=> bs!1117915 (= (= lt!1890896 lt!1890875) (= lambda!216221 lambda!216217))))

(assert (=> bs!1117925 (= (= lt!1890896 lt!1890429) (= lambda!216221 lambda!216190))))

(assert (=> bs!1117926 (= (= lt!1890896 lt!1890856) (= lambda!216221 lambda!216213))))

(assert (=> bs!1117916 (= (= lt!1890896 lt!1890429) (= lambda!216221 lambda!216211))))

(assert (=> b!4725933 true))

(declare-fun bs!1117927 () Bool)

(declare-fun d!1505765 () Bool)

(assert (= bs!1117927 (and d!1505765 d!1505631)))

(declare-fun lt!1890903 () ListMap!5289)

(declare-fun lambda!216222 () Int)

(assert (=> bs!1117927 (= (= lt!1890903 lt!1890732) (= lambda!216222 lambda!216188))))

(declare-fun bs!1117928 () Bool)

(assert (= bs!1117928 (and d!1505765 d!1505671)))

(assert (=> bs!1117928 (= (= lt!1890903 lt!1890753) (= lambda!216222 lambda!216194))))

(declare-fun bs!1117929 () Bool)

(assert (= bs!1117929 (and d!1505765 b!4725806)))

(assert (=> bs!1117929 (= (= lt!1890903 lt!1890429) (= lambda!216222 lambda!216192))))

(assert (=> bs!1117929 (= (= lt!1890903 lt!1890746) (= lambda!216222 lambda!216193))))

(declare-fun bs!1117930 () Bool)

(assert (= bs!1117930 (and d!1505765 b!4725928)))

(assert (=> bs!1117930 (= (= lt!1890903 lt!1890429) (= lambda!216222 lambda!216216))))

(declare-fun bs!1117931 () Bool)

(assert (= bs!1117931 (and d!1505765 b!4725920)))

(assert (=> bs!1117931 (= (= lt!1890903 lt!1890849) (= lambda!216222 lambda!216212))))

(declare-fun bs!1117932 () Bool)

(assert (= bs!1117932 (and d!1505765 d!1505763)))

(assert (=> bs!1117932 (= (= lt!1890903 lt!1890882) (= lambda!216222 lambda!216218))))

(declare-fun bs!1117933 () Bool)

(assert (= bs!1117933 (and d!1505765 b!4725799)))

(assert (=> bs!1117933 (= (= lt!1890903 lt!1890429) (= lambda!216222 lambda!216186))))

(declare-fun bs!1117934 () Bool)

(assert (= bs!1117934 (and d!1505765 b!4725924)))

(assert (=> bs!1117934 (= (= lt!1890903 lt!1890429) (= lambda!216222 lambda!216215))))

(declare-fun bs!1117935 () Bool)

(assert (= bs!1117935 (and d!1505765 b!4725933)))

(assert (=> bs!1117935 (= (= lt!1890903 lt!1890429) (= lambda!216222 lambda!216220))))

(declare-fun bs!1117936 () Bool)

(assert (= bs!1117936 (and d!1505765 b!4725795)))

(assert (=> bs!1117936 (= (= lt!1890903 lt!1890429) (= lambda!216222 lambda!216184))))

(assert (=> bs!1117933 (= (= lt!1890903 lt!1890725) (= lambda!216222 lambda!216187))))

(declare-fun bs!1117937 () Bool)

(assert (= bs!1117937 (and d!1505765 d!1505717)))

(assert (=> bs!1117937 (not (= lambda!216222 lambda!216199))))

(declare-fun bs!1117938 () Bool)

(assert (= bs!1117938 (and d!1505765 b!4725929)))

(assert (=> bs!1117938 (= (= lt!1890903 lt!1890429) (= lambda!216222 lambda!216219))))

(declare-fun bs!1117939 () Bool)

(assert (= bs!1117939 (and d!1505765 d!1505601)))

(assert (=> bs!1117939 (not (= lambda!216222 lambda!216096))))

(assert (=> bs!1117930 (= (= lt!1890903 lt!1890875) (= lambda!216222 lambda!216217))))

(declare-fun bs!1117940 () Bool)

(assert (= bs!1117940 (and d!1505765 b!4725802)))

(assert (=> bs!1117940 (= (= lt!1890903 lt!1890429) (= lambda!216222 lambda!216190))))

(assert (=> bs!1117935 (= (= lt!1890903 lt!1890896) (= lambda!216222 lambda!216221))))

(declare-fun bs!1117941 () Bool)

(assert (= bs!1117941 (and d!1505765 b!4725916)))

(assert (=> bs!1117941 (= (= lt!1890903 lt!1890429) (= lambda!216222 lambda!216210))))

(declare-fun bs!1117942 () Bool)

(assert (= bs!1117942 (and d!1505765 d!1505749)))

(assert (=> bs!1117942 (= (= lt!1890903 lt!1890856) (= lambda!216222 lambda!216213))))

(assert (=> bs!1117931 (= (= lt!1890903 lt!1890429) (= lambda!216222 lambda!216211))))

(assert (=> d!1505765 true))

(declare-fun e!2947547 () ListMap!5289)

(assert (=> b!4725929 (= e!2947547 lt!1890429)))

(declare-fun lt!1890902 () Unit!130883)

(declare-fun call!330673 () Unit!130883)

(assert (=> b!4725929 (= lt!1890902 call!330673)))

(declare-fun call!330671 () Bool)

(assert (=> b!4725929 call!330671))

(declare-fun lt!1890900 () Unit!130883)

(assert (=> b!4725929 (= lt!1890900 lt!1890902)))

(declare-fun call!330672 () Bool)

(assert (=> b!4725929 call!330672))

(declare-fun lt!1890899 () Unit!130883)

(declare-fun Unit!130992 () Unit!130883)

(assert (=> b!4725929 (= lt!1890899 Unit!130992)))

(declare-fun b!4725930 () Bool)

(declare-fun res!1999909 () Bool)

(declare-fun e!2947546 () Bool)

(assert (=> b!4725930 (=> (not res!1999909) (not e!2947546))))

(assert (=> b!4725930 (= res!1999909 (forall!11602 (toList!5925 lt!1890429) lambda!216222))))

(declare-fun c!807151 () Bool)

(declare-fun bm!330666 () Bool)

(assert (=> bm!330666 (= call!330671 (forall!11602 (ite c!807151 (toList!5925 lt!1890429) lt!1890425) (ite c!807151 lambda!216219 lambda!216221)))))

(declare-fun bm!330667 () Bool)

(assert (=> bm!330667 (= call!330673 (lemmaContainsAllItsOwnKeys!801 lt!1890429))))

(assert (=> d!1505765 e!2947546))

(declare-fun res!1999910 () Bool)

(assert (=> d!1505765 (=> (not res!1999910) (not e!2947546))))

(assert (=> d!1505765 (= res!1999910 (forall!11602 lt!1890425 lambda!216222))))

(assert (=> d!1505765 (= lt!1890903 e!2947547)))

(assert (=> d!1505765 (= c!807151 ((_ is Nil!52842) lt!1890425))))

(assert (=> d!1505765 (noDuplicateKeys!2018 lt!1890425)))

(assert (=> d!1505765 (= (addToMapMapFromBucket!1448 lt!1890425 lt!1890429) lt!1890903)))

(declare-fun b!4725931 () Bool)

(assert (=> b!4725931 (= e!2947546 (invariantList!1515 (toList!5925 lt!1890903)))))

(declare-fun bm!330668 () Bool)

(assert (=> bm!330668 (= call!330672 (forall!11602 (toList!5925 lt!1890429) (ite c!807151 lambda!216219 lambda!216221)))))

(declare-fun b!4725932 () Bool)

(declare-fun e!2947548 () Bool)

(assert (=> b!4725932 (= e!2947548 call!330672)))

(assert (=> b!4725933 (= e!2947547 lt!1890896)))

(declare-fun lt!1890887 () ListMap!5289)

(assert (=> b!4725933 (= lt!1890887 (+!2273 lt!1890429 (h!59193 lt!1890425)))))

(assert (=> b!4725933 (= lt!1890896 (addToMapMapFromBucket!1448 (t!360240 lt!1890425) (+!2273 lt!1890429 (h!59193 lt!1890425))))))

(declare-fun lt!1890897 () Unit!130883)

(assert (=> b!4725933 (= lt!1890897 call!330673)))

(assert (=> b!4725933 (forall!11602 (toList!5925 lt!1890429) lambda!216220)))

(declare-fun lt!1890884 () Unit!130883)

(assert (=> b!4725933 (= lt!1890884 lt!1890897)))

(assert (=> b!4725933 (forall!11602 (toList!5925 lt!1890887) lambda!216221)))

(declare-fun lt!1890893 () Unit!130883)

(declare-fun Unit!130993 () Unit!130883)

(assert (=> b!4725933 (= lt!1890893 Unit!130993)))

(assert (=> b!4725933 (forall!11602 (t!360240 lt!1890425) lambda!216221)))

(declare-fun lt!1890889 () Unit!130883)

(declare-fun Unit!130994 () Unit!130883)

(assert (=> b!4725933 (= lt!1890889 Unit!130994)))

(declare-fun lt!1890904 () Unit!130883)

(declare-fun Unit!130995 () Unit!130883)

(assert (=> b!4725933 (= lt!1890904 Unit!130995)))

(declare-fun lt!1890885 () Unit!130883)

(assert (=> b!4725933 (= lt!1890885 (forallContained!3647 (toList!5925 lt!1890887) lambda!216221 (h!59193 lt!1890425)))))

(assert (=> b!4725933 (contains!16190 lt!1890887 (_1!30527 (h!59193 lt!1890425)))))

(declare-fun lt!1890894 () Unit!130883)

(declare-fun Unit!130996 () Unit!130883)

(assert (=> b!4725933 (= lt!1890894 Unit!130996)))

(assert (=> b!4725933 (contains!16190 lt!1890896 (_1!30527 (h!59193 lt!1890425)))))

(declare-fun lt!1890898 () Unit!130883)

(declare-fun Unit!130997 () Unit!130883)

(assert (=> b!4725933 (= lt!1890898 Unit!130997)))

(assert (=> b!4725933 call!330671))

(declare-fun lt!1890890 () Unit!130883)

(declare-fun Unit!130998 () Unit!130883)

(assert (=> b!4725933 (= lt!1890890 Unit!130998)))

(assert (=> b!4725933 (forall!11602 (toList!5925 lt!1890887) lambda!216221)))

(declare-fun lt!1890892 () Unit!130883)

(declare-fun Unit!130999 () Unit!130883)

(assert (=> b!4725933 (= lt!1890892 Unit!130999)))

(declare-fun lt!1890895 () Unit!130883)

(declare-fun Unit!131000 () Unit!130883)

(assert (=> b!4725933 (= lt!1890895 Unit!131000)))

(declare-fun lt!1890888 () Unit!130883)

(assert (=> b!4725933 (= lt!1890888 (addForallContainsKeyThenBeforeAdding!800 lt!1890429 lt!1890896 (_1!30527 (h!59193 lt!1890425)) (_2!30527 (h!59193 lt!1890425))))))

(assert (=> b!4725933 (forall!11602 (toList!5925 lt!1890429) lambda!216221)))

(declare-fun lt!1890891 () Unit!130883)

(assert (=> b!4725933 (= lt!1890891 lt!1890888)))

(assert (=> b!4725933 (forall!11602 (toList!5925 lt!1890429) lambda!216221)))

(declare-fun lt!1890901 () Unit!130883)

(declare-fun Unit!131001 () Unit!130883)

(assert (=> b!4725933 (= lt!1890901 Unit!131001)))

(declare-fun res!1999908 () Bool)

(assert (=> b!4725933 (= res!1999908 (forall!11602 lt!1890425 lambda!216221))))

(assert (=> b!4725933 (=> (not res!1999908) (not e!2947548))))

(assert (=> b!4725933 e!2947548))

(declare-fun lt!1890886 () Unit!130883)

(declare-fun Unit!131002 () Unit!130883)

(assert (=> b!4725933 (= lt!1890886 Unit!131002)))

(assert (= (and d!1505765 c!807151) b!4725929))

(assert (= (and d!1505765 (not c!807151)) b!4725933))

(assert (= (and b!4725933 res!1999908) b!4725932))

(assert (= (or b!4725929 b!4725933) bm!330667))

(assert (= (or b!4725929 b!4725932) bm!330668))

(assert (= (or b!4725929 b!4725933) bm!330666))

(assert (= (and d!1505765 res!1999910) b!4725930))

(assert (= (and b!4725930 res!1999909) b!4725931))

(declare-fun m!5665695 () Bool)

(assert (=> bm!330666 m!5665695))

(assert (=> bm!330667 m!5665253))

(declare-fun m!5665697 () Bool)

(assert (=> b!4725933 m!5665697))

(declare-fun m!5665699 () Bool)

(assert (=> b!4725933 m!5665699))

(assert (=> b!4725933 m!5665699))

(declare-fun m!5665701 () Bool)

(assert (=> b!4725933 m!5665701))

(declare-fun m!5665703 () Bool)

(assert (=> b!4725933 m!5665703))

(declare-fun m!5665705 () Bool)

(assert (=> b!4725933 m!5665705))

(declare-fun m!5665707 () Bool)

(assert (=> b!4725933 m!5665707))

(assert (=> b!4725933 m!5665703))

(declare-fun m!5665709 () Bool)

(assert (=> b!4725933 m!5665709))

(declare-fun m!5665711 () Bool)

(assert (=> b!4725933 m!5665711))

(assert (=> b!4725933 m!5665707))

(declare-fun m!5665713 () Bool)

(assert (=> b!4725933 m!5665713))

(declare-fun m!5665715 () Bool)

(assert (=> b!4725933 m!5665715))

(declare-fun m!5665717 () Bool)

(assert (=> b!4725933 m!5665717))

(declare-fun m!5665719 () Bool)

(assert (=> b!4725931 m!5665719))

(declare-fun m!5665721 () Bool)

(assert (=> d!1505765 m!5665721))

(assert (=> d!1505765 m!5665045))

(declare-fun m!5665723 () Bool)

(assert (=> bm!330668 m!5665723))

(declare-fun m!5665725 () Bool)

(assert (=> b!4725930 m!5665725))

(assert (=> b!4725624 d!1505765))

(declare-fun d!1505767 () Bool)

(declare-fun e!2947549 () Bool)

(assert (=> d!1505767 e!2947549))

(declare-fun res!1999911 () Bool)

(assert (=> d!1505767 (=> (not res!1999911) (not e!2947549))))

(declare-fun lt!1890905 () ListMap!5289)

(assert (=> d!1505767 (= res!1999911 (not (contains!16190 lt!1890905 key!4653)))))

(assert (=> d!1505767 (= lt!1890905 (ListMap!5290 (removePresrvNoDuplicatedKeys!401 (toList!5925 (extractMap!2044 (Cons!52843 lt!1890421 lt!1890426))) key!4653)))))

(assert (=> d!1505767 (= (-!754 (extractMap!2044 (Cons!52843 lt!1890421 lt!1890426)) key!4653) lt!1890905)))

(declare-fun b!4725934 () Bool)

(assert (=> b!4725934 (= e!2947549 (= ((_ map and) (content!9405 (keys!18982 (extractMap!2044 (Cons!52843 lt!1890421 lt!1890426)))) ((_ map not) (store ((as const (Array K!14195 Bool)) false) key!4653 true))) (content!9405 (keys!18982 lt!1890905))))))

(assert (= (and d!1505767 res!1999911) b!4725934))

(declare-fun m!5665727 () Bool)

(assert (=> d!1505767 m!5665727))

(declare-fun m!5665729 () Bool)

(assert (=> d!1505767 m!5665729))

(declare-fun m!5665731 () Bool)

(assert (=> b!4725934 m!5665731))

(declare-fun m!5665733 () Bool)

(assert (=> b!4725934 m!5665733))

(declare-fun m!5665735 () Bool)

(assert (=> b!4725934 m!5665735))

(assert (=> b!4725934 m!5665415))

(assert (=> b!4725934 m!5665731))

(declare-fun m!5665737 () Bool)

(assert (=> b!4725934 m!5665737))

(assert (=> b!4725934 m!5664837))

(assert (=> b!4725934 m!5665733))

(assert (=> b!4725625 d!1505767))

(declare-fun d!1505769 () Bool)

(assert (=> d!1505769 (= (eq!1135 (extractMap!2044 (Cons!52843 lt!1890420 lt!1890426)) (-!754 (extractMap!2044 (Cons!52843 lt!1890421 lt!1890426)) key!4653)) (= (content!9403 (toList!5925 (extractMap!2044 (Cons!52843 lt!1890420 lt!1890426)))) (content!9403 (toList!5925 (-!754 (extractMap!2044 (Cons!52843 lt!1890421 lt!1890426)) key!4653)))))))

(declare-fun bs!1117943 () Bool)

(assert (= bs!1117943 d!1505769))

(declare-fun m!5665739 () Bool)

(assert (=> bs!1117943 m!5665739))

(declare-fun m!5665741 () Bool)

(assert (=> bs!1117943 m!5665741))

(assert (=> b!4725625 d!1505769))

(declare-fun bs!1117944 () Bool)

(declare-fun d!1505771 () Bool)

(assert (= bs!1117944 (and d!1505771 d!1505733)))

(declare-fun lambda!216223 () Int)

(assert (=> bs!1117944 (= lambda!216223 lambda!216207)))

(declare-fun bs!1117945 () Bool)

(assert (= bs!1117945 (and d!1505771 d!1505589)))

(assert (=> bs!1117945 (= lambda!216223 lambda!216093)))

(declare-fun bs!1117946 () Bool)

(assert (= bs!1117946 (and d!1505771 d!1505729)))

(assert (=> bs!1117946 (= lambda!216223 lambda!216206)))

(declare-fun bs!1117947 () Bool)

(assert (= bs!1117947 (and d!1505771 d!1505751)))

(assert (=> bs!1117947 (= lambda!216223 lambda!216214)))

(declare-fun bs!1117948 () Bool)

(assert (= bs!1117948 (and d!1505771 start!481108)))

(assert (=> bs!1117948 (= lambda!216223 lambda!216090)))

(declare-fun bs!1117949 () Bool)

(assert (= bs!1117949 (and d!1505771 d!1505747)))

(assert (=> bs!1117949 (= lambda!216223 lambda!216209)))

(declare-fun bs!1117950 () Bool)

(assert (= bs!1117950 (and d!1505771 d!1505685)))

(assert (=> bs!1117950 (not (= lambda!216223 lambda!216197))))

(declare-fun bs!1117951 () Bool)

(assert (= bs!1117951 (and d!1505771 d!1505745)))

(assert (=> bs!1117951 (= lambda!216223 lambda!216208)))

(declare-fun lt!1890906 () ListMap!5289)

(assert (=> d!1505771 (invariantList!1515 (toList!5925 lt!1890906))))

(declare-fun e!2947550 () ListMap!5289)

(assert (=> d!1505771 (= lt!1890906 e!2947550)))

(declare-fun c!807152 () Bool)

(assert (=> d!1505771 (= c!807152 ((_ is Cons!52843) (Cons!52843 lt!1890420 lt!1890426)))))

(assert (=> d!1505771 (forall!11600 (Cons!52843 lt!1890420 lt!1890426) lambda!216223)))

(assert (=> d!1505771 (= (extractMap!2044 (Cons!52843 lt!1890420 lt!1890426)) lt!1890906)))

(declare-fun b!4725935 () Bool)

(assert (=> b!4725935 (= e!2947550 (addToMapMapFromBucket!1448 (_2!30528 (h!59194 (Cons!52843 lt!1890420 lt!1890426))) (extractMap!2044 (t!360241 (Cons!52843 lt!1890420 lt!1890426)))))))

(declare-fun b!4725936 () Bool)

(assert (=> b!4725936 (= e!2947550 (ListMap!5290 Nil!52842))))

(assert (= (and d!1505771 c!807152) b!4725935))

(assert (= (and d!1505771 (not c!807152)) b!4725936))

(declare-fun m!5665743 () Bool)

(assert (=> d!1505771 m!5665743))

(declare-fun m!5665745 () Bool)

(assert (=> d!1505771 m!5665745))

(declare-fun m!5665747 () Bool)

(assert (=> b!4725935 m!5665747))

(assert (=> b!4725935 m!5665747))

(declare-fun m!5665749 () Bool)

(assert (=> b!4725935 m!5665749))

(assert (=> b!4725625 d!1505771))

(declare-fun d!1505773 () Bool)

(assert (=> d!1505773 (= (tail!9017 (toList!5926 lm!2023)) (t!360241 (toList!5926 lm!2023)))))

(assert (=> b!4725625 d!1505773))

(declare-fun bs!1117952 () Bool)

(declare-fun d!1505775 () Bool)

(assert (= bs!1117952 (and d!1505775 d!1505733)))

(declare-fun lambda!216224 () Int)

(assert (=> bs!1117952 (= lambda!216224 lambda!216207)))

(declare-fun bs!1117953 () Bool)

(assert (= bs!1117953 (and d!1505775 d!1505589)))

(assert (=> bs!1117953 (= lambda!216224 lambda!216093)))

(declare-fun bs!1117954 () Bool)

(assert (= bs!1117954 (and d!1505775 d!1505751)))

(assert (=> bs!1117954 (= lambda!216224 lambda!216214)))

(declare-fun bs!1117955 () Bool)

(assert (= bs!1117955 (and d!1505775 start!481108)))

(assert (=> bs!1117955 (= lambda!216224 lambda!216090)))

(declare-fun bs!1117956 () Bool)

(assert (= bs!1117956 (and d!1505775 d!1505747)))

(assert (=> bs!1117956 (= lambda!216224 lambda!216209)))

(declare-fun bs!1117957 () Bool)

(assert (= bs!1117957 (and d!1505775 d!1505771)))

(assert (=> bs!1117957 (= lambda!216224 lambda!216223)))

(declare-fun bs!1117958 () Bool)

(assert (= bs!1117958 (and d!1505775 d!1505729)))

(assert (=> bs!1117958 (= lambda!216224 lambda!216206)))

(declare-fun bs!1117959 () Bool)

(assert (= bs!1117959 (and d!1505775 d!1505685)))

(assert (=> bs!1117959 (not (= lambda!216224 lambda!216197))))

(declare-fun bs!1117960 () Bool)

(assert (= bs!1117960 (and d!1505775 d!1505745)))

(assert (=> bs!1117960 (= lambda!216224 lambda!216208)))

(declare-fun lt!1890907 () ListMap!5289)

(assert (=> d!1505775 (invariantList!1515 (toList!5925 lt!1890907))))

(declare-fun e!2947551 () ListMap!5289)

(assert (=> d!1505775 (= lt!1890907 e!2947551)))

(declare-fun c!807153 () Bool)

(assert (=> d!1505775 (= c!807153 ((_ is Cons!52843) (Cons!52843 lt!1890421 lt!1890426)))))

(assert (=> d!1505775 (forall!11600 (Cons!52843 lt!1890421 lt!1890426) lambda!216224)))

(assert (=> d!1505775 (= (extractMap!2044 (Cons!52843 lt!1890421 lt!1890426)) lt!1890907)))

(declare-fun b!4725937 () Bool)

(assert (=> b!4725937 (= e!2947551 (addToMapMapFromBucket!1448 (_2!30528 (h!59194 (Cons!52843 lt!1890421 lt!1890426))) (extractMap!2044 (t!360241 (Cons!52843 lt!1890421 lt!1890426)))))))

(declare-fun b!4725938 () Bool)

(assert (=> b!4725938 (= e!2947551 (ListMap!5290 Nil!52842))))

(assert (= (and d!1505775 c!807153) b!4725937))

(assert (= (and d!1505775 (not c!807153)) b!4725938))

(declare-fun m!5665751 () Bool)

(assert (=> d!1505775 m!5665751))

(declare-fun m!5665753 () Bool)

(assert (=> d!1505775 m!5665753))

(declare-fun m!5665755 () Bool)

(assert (=> b!4725937 m!5665755))

(assert (=> b!4725937 m!5665755))

(declare-fun m!5665757 () Bool)

(assert (=> b!4725937 m!5665757))

(assert (=> b!4725625 d!1505775))

(declare-fun d!1505777 () Bool)

(declare-fun res!1999916 () Bool)

(declare-fun e!2947556 () Bool)

(assert (=> d!1505777 (=> res!1999916 e!2947556)))

(assert (=> d!1505777 (= res!1999916 (and ((_ is Cons!52842) lt!1890425) (= (_1!30527 (h!59193 lt!1890425)) key!4653)))))

(assert (=> d!1505777 (= (containsKey!3381 lt!1890425 key!4653) e!2947556)))

(declare-fun b!4725943 () Bool)

(declare-fun e!2947557 () Bool)

(assert (=> b!4725943 (= e!2947556 e!2947557)))

(declare-fun res!1999917 () Bool)

(assert (=> b!4725943 (=> (not res!1999917) (not e!2947557))))

(assert (=> b!4725943 (= res!1999917 ((_ is Cons!52842) lt!1890425))))

(declare-fun b!4725944 () Bool)

(assert (=> b!4725944 (= e!2947557 (containsKey!3381 (t!360240 lt!1890425) key!4653))))

(assert (= (and d!1505777 (not res!1999916)) b!4725943))

(assert (= (and b!4725943 res!1999917) b!4725944))

(declare-fun m!5665759 () Bool)

(assert (=> b!4725944 m!5665759))

(assert (=> b!4725614 d!1505777))

(declare-fun tp!1348516 () Bool)

(declare-fun b!4725949 () Bool)

(declare-fun e!2947560 () Bool)

(assert (=> b!4725949 (= e!2947560 (and tp_is_empty!31365 tp_is_empty!31367 tp!1348516))))

(assert (=> b!4725607 (= tp!1348503 e!2947560)))

(assert (= (and b!4725607 ((_ is Cons!52842) (t!360240 newBucket!218))) b!4725949))

(declare-fun b!4725950 () Bool)

(declare-fun tp!1348517 () Bool)

(declare-fun e!2947561 () Bool)

(assert (=> b!4725950 (= e!2947561 (and tp_is_empty!31365 tp_is_empty!31367 tp!1348517))))

(assert (=> b!4725602 (= tp!1348502 e!2947561)))

(assert (= (and b!4725602 ((_ is Cons!52842) (t!360240 oldBucket!34))) b!4725950))

(declare-fun b!4725955 () Bool)

(declare-fun e!2947564 () Bool)

(declare-fun tp!1348522 () Bool)

(declare-fun tp!1348523 () Bool)

(assert (=> b!4725955 (= e!2947564 (and tp!1348522 tp!1348523))))

(assert (=> b!4725604 (= tp!1348501 e!2947564)))

(assert (= (and b!4725604 ((_ is Cons!52843) (toList!5926 lm!2023))) b!4725955))

(declare-fun b_lambda!179615 () Bool)

(assert (= b_lambda!179613 (or start!481108 b_lambda!179615)))

(declare-fun bs!1117961 () Bool)

(declare-fun d!1505779 () Bool)

(assert (= bs!1117961 (and d!1505779 start!481108)))

(assert (=> bs!1117961 (= (dynLambda!21827 lambda!216090 (h!59194 (toList!5926 lm!2023))) (noDuplicateKeys!2018 (_2!30528 (h!59194 (toList!5926 lm!2023)))))))

(assert (=> bs!1117961 m!5665629))

(assert (=> b!4725910 d!1505779))

(check-sat (not b!4725891) (not b!4725888) (not bm!330647) (not b!4725937) (not b!4725806) (not bs!1117961) (not d!1505745) (not d!1505729) (not d!1505709) (not d!1505737) (not b!4725799) (not bm!330662) (not bm!330664) (not bm!330658) (not b!4725675) (not bm!330650) (not b!4725883) (not d!1505685) (not b!4725920) (not d!1505595) (not b!4725931) (not bm!330649) (not d!1505749) (not b!4725930) (not b!4725900) (not d!1505753) (not b!4725815) (not bm!330651) (not b!4725882) (not b!4725878) (not d!1505751) (not d!1505771) (not bm!330657) (not b!4725955) (not b!4725926) (not b!4725934) (not d!1505741) (not b!4725636) (not d!1505747) (not d!1505767) (not d!1505589) (not b!4725933) (not bm!330661) (not b!4725914) (not b!4725816) (not b!4725901) (not d!1505671) (not b!4725702) (not d!1505719) (not d!1505757) (not b!4725904) (not bm!330652) (not d!1505731) (not bm!330667) (not d!1505775) (not bm!330666) (not b!4725630) (not b!4725893) (not b!4725902) (not b!4725892) (not b!4725701) (not d!1505733) (not d!1505601) (not b!4725835) (not b!4725631) (not b!4725836) (not b!4725797) (not b!4725803) (not bm!330665) (not b!4725911) (not b!4725903) (not b!4725796) (not b!4725897) (not b!4725834) (not d!1505717) (not b!4725950) (not d!1505759) (not d!1505603) (not b!4725824) (not bm!330668) (not b!4725879) (not b!4725923) (not b!4725885) (not b!4725921) (not b!4725889) tp_is_empty!31367 (not d!1505611) (not d!1505713) (not d!1505727) (not b!4725917) (not d!1505769) (not b!4725884) tp_is_empty!31365 (not d!1505763) (not d!1505613) (not b!4725887) (not b!4725898) (not bm!330660) (not b!4725928) (not bm!330648) (not d!1505761) (not b!4725894) (not bm!330663) (not d!1505597) (not d!1505615) (not b!4725944) (not b!4725949) (not d!1505587) (not d!1505695) (not d!1505765) (not b!4725804) (not b!4725918) (not bm!330659) (not b!4725912) (not b!4725880) (not d!1505631) (not b!4725695) (not b!4725925) (not b!4725935) (not d!1505707) (not d!1505755) (not b!4725696) (not b!4725896) (not d!1505617) (not b_lambda!179615))
(check-sat)
