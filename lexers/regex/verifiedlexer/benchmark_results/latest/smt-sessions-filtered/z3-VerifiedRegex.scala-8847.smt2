; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472728 () Bool)

(assert start!472728)

(declare-fun b!4681016 () Bool)

(declare-fun e!2920554 () Bool)

(declare-fun e!2920551 () Bool)

(assert (=> b!4681016 (= e!2920554 (not e!2920551))))

(declare-fun res!1972692 () Bool)

(assert (=> b!4681016 (=> res!1972692 e!2920551)))

(declare-datatypes ((K!13640 0))(
  ( (K!13641 (val!19183 Int)) )
))
(declare-datatypes ((V!13886 0))(
  ( (V!13887 (val!19184 Int)) )
))
(declare-datatypes ((tuple2!53578 0))(
  ( (tuple2!53579 (_1!30083 K!13640) (_2!30083 V!13886)) )
))
(declare-datatypes ((List!52387 0))(
  ( (Nil!52263) (Cons!52263 (h!58478 tuple2!53578) (t!359545 List!52387)) )
))
(declare-fun oldBucket!34 () List!52387)

(declare-fun key!4653 () K!13640)

(get-info :version)

(assert (=> b!4681016 (= res!1972692 (or (not ((_ is Cons!52263) oldBucket!34)) (not (= (_1!30083 (h!58478 oldBucket!34)) key!4653))))))

(declare-datatypes ((ListMap!4845 0))(
  ( (ListMap!4846 (toList!5481 List!52387)) )
))
(declare-fun lt!1840914 () ListMap!4845)

(declare-datatypes ((tuple2!53580 0))(
  ( (tuple2!53581 (_1!30084 (_ BitVec 64)) (_2!30084 List!52387)) )
))
(declare-datatypes ((List!52388 0))(
  ( (Nil!52264) (Cons!52264 (h!58479 tuple2!53580) (t!359546 List!52388)) )
))
(declare-datatypes ((ListLongMap!4011 0))(
  ( (ListLongMap!4012 (toList!5482 List!52388)) )
))
(declare-fun lm!2023 () ListLongMap!4011)

(declare-fun lt!1840919 () ListMap!4845)

(declare-fun addToMapMapFromBucket!1228 (List!52387 ListMap!4845) ListMap!4845)

(assert (=> b!4681016 (= lt!1840914 (addToMapMapFromBucket!1228 (_2!30084 (h!58479 (toList!5482 lm!2023))) lt!1840919))))

(declare-fun extractMap!1822 (List!52388) ListMap!4845)

(assert (=> b!4681016 (= lt!1840919 (extractMap!1822 (t!359546 (toList!5482 lm!2023))))))

(declare-fun tail!8454 (ListLongMap!4011) ListLongMap!4011)

(assert (=> b!4681016 (= (t!359546 (toList!5482 lm!2023)) (toList!5482 (tail!8454 lm!2023)))))

(declare-fun b!4681017 () Bool)

(declare-fun e!2920544 () Bool)

(declare-fun e!2920552 () Bool)

(assert (=> b!4681017 (= e!2920544 e!2920552)))

(declare-fun res!1972689 () Bool)

(assert (=> b!4681017 (=> res!1972689 e!2920552)))

(declare-fun lt!1840924 () ListMap!4845)

(declare-fun lt!1840921 () ListMap!4845)

(declare-fun eq!985 (ListMap!4845 ListMap!4845) Bool)

(assert (=> b!4681017 (= res!1972689 (not (eq!985 lt!1840924 lt!1840921)))))

(declare-fun lt!1840923 () tuple2!53580)

(assert (=> b!4681017 (= lt!1840921 (extractMap!1822 (Cons!52264 lt!1840923 (t!359546 (toList!5482 lm!2023)))))))

(declare-fun b!4681018 () Bool)

(declare-fun e!2920546 () Bool)

(declare-fun e!2920553 () Bool)

(assert (=> b!4681018 (= e!2920546 e!2920553)))

(declare-fun res!1972685 () Bool)

(assert (=> b!4681018 (=> res!1972685 e!2920553)))

(declare-fun newBucket!218 () List!52387)

(declare-fun lt!1840925 () ListMap!4845)

(assert (=> b!4681018 (= res!1972685 (not (= lt!1840925 (addToMapMapFromBucket!1228 newBucket!218 lt!1840919))))))

(declare-fun lt!1840927 () List!52387)

(assert (=> b!4681018 (= lt!1840925 (addToMapMapFromBucket!1228 lt!1840927 lt!1840919))))

(declare-fun res!1972687 () Bool)

(declare-fun e!2920549 () Bool)

(assert (=> start!472728 (=> (not res!1972687) (not e!2920549))))

(declare-fun lambda!204859 () Int)

(declare-fun forall!11233 (List!52388 Int) Bool)

(assert (=> start!472728 (= res!1972687 (forall!11233 (toList!5482 lm!2023) lambda!204859))))

(assert (=> start!472728 e!2920549))

(declare-fun e!2920556 () Bool)

(declare-fun inv!67514 (ListLongMap!4011) Bool)

(assert (=> start!472728 (and (inv!67514 lm!2023) e!2920556)))

(declare-fun tp_is_empty!30477 () Bool)

(assert (=> start!472728 tp_is_empty!30477))

(declare-fun e!2920545 () Bool)

(assert (=> start!472728 e!2920545))

(assert (=> start!472728 true))

(declare-fun e!2920547 () Bool)

(assert (=> start!472728 e!2920547))

(declare-fun b!4681019 () Bool)

(declare-fun e!2920555 () Bool)

(assert (=> b!4681019 (= e!2920549 e!2920555)))

(declare-fun res!1972680 () Bool)

(assert (=> b!4681019 (=> (not res!1972680) (not e!2920555))))

(declare-fun contains!15396 (ListMap!4845 K!13640) Bool)

(assert (=> b!4681019 (= res!1972680 (contains!15396 lt!1840914 key!4653))))

(assert (=> b!4681019 (= lt!1840914 (extractMap!1822 (toList!5482 lm!2023)))))

(declare-fun b!4681020 () Bool)

(declare-fun res!1972682 () Bool)

(assert (=> b!4681020 (=> (not res!1972682) (not e!2920549))))

(declare-fun noDuplicateKeys!1796 (List!52387) Bool)

(assert (=> b!4681020 (= res!1972682 (noDuplicateKeys!1796 oldBucket!34))))

(declare-fun b!4681021 () Bool)

(declare-fun res!1972678 () Bool)

(declare-fun e!2920550 () Bool)

(assert (=> b!4681021 (=> res!1972678 e!2920550)))

(declare-fun lt!1840920 () ListMap!4845)

(assert (=> b!4681021 (= res!1972678 (not (= lt!1840925 lt!1840920)))))

(declare-fun b!4681022 () Bool)

(declare-fun tp_is_empty!30479 () Bool)

(declare-fun tp!1345094 () Bool)

(assert (=> b!4681022 (= e!2920547 (and tp_is_empty!30477 tp_is_empty!30479 tp!1345094))))

(declare-fun b!4681023 () Bool)

(declare-fun res!1972676 () Bool)

(assert (=> b!4681023 (=> (not res!1972676) (not e!2920554))))

(assert (=> b!4681023 (= res!1972676 ((_ is Cons!52264) (toList!5482 lm!2023)))))

(declare-fun b!4681024 () Bool)

(declare-fun e!2920558 () Bool)

(assert (=> b!4681024 (= e!2920558 (not (= (toList!5482 lm!2023) Nil!52264)))))

(declare-fun b!4681025 () Bool)

(declare-fun e!2920557 () Bool)

(assert (=> b!4681025 (= e!2920550 e!2920557)))

(declare-fun res!1972690 () Bool)

(assert (=> b!4681025 (=> res!1972690 e!2920557)))

(assert (=> b!4681025 (= res!1972690 (contains!15396 lt!1840925 key!4653))))

(assert (=> b!4681025 (not (contains!15396 lt!1840920 key!4653))))

(declare-fun lt!1840930 () List!52388)

(declare-datatypes ((Hashable!6165 0))(
  ( (HashableExt!6164 (__x!31868 Int)) )
))
(declare-fun hashF!1323 () Hashable!6165)

(declare-datatypes ((Unit!122745 0))(
  ( (Unit!122746) )
))
(declare-fun lt!1840928 () Unit!122745)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!396 (ListLongMap!4011 K!13640 Hashable!6165) Unit!122745)

(assert (=> b!4681025 (= lt!1840928 (lemmaNotInItsHashBucketThenNotInMap!396 (ListLongMap!4012 lt!1840930) key!4653 hashF!1323))))

(declare-fun b!4681026 () Bool)

(declare-fun res!1972684 () Bool)

(assert (=> b!4681026 (=> (not res!1972684) (not e!2920555))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!3978 (Hashable!6165 K!13640) (_ BitVec 64))

(assert (=> b!4681026 (= res!1972684 (= (hash!3978 hashF!1323 key!4653) hash!405))))

(declare-fun b!4681027 () Bool)

(assert (=> b!4681027 (= e!2920555 e!2920554)))

(declare-fun res!1972679 () Bool)

(assert (=> b!4681027 (=> (not res!1972679) (not e!2920554))))

(declare-fun head!9883 (List!52388) tuple2!53580)

(assert (=> b!4681027 (= res!1972679 (= (head!9883 (toList!5482 lm!2023)) lt!1840923))))

(assert (=> b!4681027 (= lt!1840923 (tuple2!53581 hash!405 oldBucket!34))))

(declare-fun b!4681028 () Bool)

(declare-fun res!1972675 () Bool)

(assert (=> b!4681028 (=> (not res!1972675) (not e!2920555))))

(declare-fun allKeysSameHash!1622 (List!52387 (_ BitVec 64) Hashable!6165) Bool)

(assert (=> b!4681028 (= res!1972675 (allKeysSameHash!1622 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4681029 () Bool)

(declare-fun e!2920548 () Bool)

(assert (=> b!4681029 (= e!2920548 e!2920546)))

(declare-fun res!1972694 () Bool)

(assert (=> b!4681029 (=> res!1972694 e!2920546)))

(declare-fun lt!1840929 () ListMap!4845)

(assert (=> b!4681029 (= res!1972694 (not (= lt!1840920 lt!1840929)))))

(assert (=> b!4681029 (= lt!1840929 (extractMap!1822 (Cons!52264 (tuple2!53581 hash!405 newBucket!218) (t!359546 (toList!5482 lm!2023)))))))

(assert (=> b!4681029 (= lt!1840920 (extractMap!1822 lt!1840930))))

(assert (=> b!4681029 (= lt!1840930 (Cons!52264 (tuple2!53581 hash!405 lt!1840927) (t!359546 (toList!5482 lm!2023))))))

(declare-fun b!4681030 () Bool)

(declare-fun res!1972691 () Bool)

(assert (=> b!4681030 (=> res!1972691 e!2920558)))

(declare-fun lt!1840916 () ListMap!4845)

(assert (=> b!4681030 (= res!1972691 (not (eq!985 lt!1840929 lt!1840916)))))

(declare-fun b!4681031 () Bool)

(declare-fun res!1972696 () Bool)

(assert (=> b!4681031 (=> res!1972696 e!2920550)))

(declare-fun containsKey!2945 (List!52387 K!13640) Bool)

(assert (=> b!4681031 (= res!1972696 (containsKey!2945 lt!1840927 key!4653))))

(declare-fun b!4681032 () Bool)

(assert (=> b!4681032 (= e!2920553 e!2920550)))

(declare-fun res!1972697 () Bool)

(assert (=> b!4681032 (=> res!1972697 e!2920550)))

(assert (=> b!4681032 (= res!1972697 (not (eq!985 lt!1840924 (addToMapMapFromBucket!1228 oldBucket!34 lt!1840919))))))

(declare-fun +!2098 (ListMap!4845 tuple2!53578) ListMap!4845)

(assert (=> b!4681032 (= lt!1840924 (+!2098 lt!1840925 (h!58478 oldBucket!34)))))

(declare-fun lt!1840926 () tuple2!53578)

(assert (=> b!4681032 (eq!985 (addToMapMapFromBucket!1228 (Cons!52263 lt!1840926 lt!1840927) lt!1840919) (+!2098 lt!1840925 lt!1840926))))

(declare-fun lt!1840922 () Unit!122745)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!234 (tuple2!53578 List!52387 ListMap!4845) Unit!122745)

(assert (=> b!4681032 (= lt!1840922 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!234 lt!1840926 lt!1840927 lt!1840919))))

(declare-fun head!9884 (List!52387) tuple2!53578)

(assert (=> b!4681032 (= lt!1840926 (head!9884 oldBucket!34))))

(declare-fun b!4681033 () Bool)

(declare-fun tp!1345095 () Bool)

(assert (=> b!4681033 (= e!2920545 (and tp_is_empty!30477 tp_is_empty!30479 tp!1345095))))

(declare-fun b!4681034 () Bool)

(assert (=> b!4681034 (= e!2920551 e!2920548)))

(declare-fun res!1972693 () Bool)

(assert (=> b!4681034 (=> res!1972693 e!2920548)))

(assert (=> b!4681034 (= res!1972693 (not (= lt!1840927 newBucket!218)))))

(declare-fun tail!8455 (List!52387) List!52387)

(assert (=> b!4681034 (= lt!1840927 (tail!8455 oldBucket!34))))

(declare-fun b!4681035 () Bool)

(declare-fun res!1972683 () Bool)

(assert (=> b!4681035 (=> (not res!1972683) (not e!2920549))))

(assert (=> b!4681035 (= res!1972683 (noDuplicateKeys!1796 newBucket!218))))

(declare-fun b!4681036 () Bool)

(declare-fun res!1972677 () Bool)

(assert (=> b!4681036 (=> (not res!1972677) (not e!2920549))))

(declare-fun removePairForKey!1391 (List!52387 K!13640) List!52387)

(assert (=> b!4681036 (= res!1972677 (= (removePairForKey!1391 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4681037 () Bool)

(declare-fun res!1972681 () Bool)

(assert (=> b!4681037 (=> (not res!1972681) (not e!2920555))))

(declare-fun allKeysSameHashInMap!1710 (ListLongMap!4011 Hashable!6165) Bool)

(assert (=> b!4681037 (= res!1972681 (allKeysSameHashInMap!1710 lm!2023 hashF!1323))))

(declare-fun b!4681038 () Bool)

(assert (=> b!4681038 (= e!2920557 e!2920544)))

(declare-fun res!1972695 () Bool)

(assert (=> b!4681038 (=> res!1972695 e!2920544)))

(declare-fun lt!1840918 () ListMap!4845)

(assert (=> b!4681038 (= res!1972695 (not (= lt!1840918 lt!1840925)))))

(declare-fun -!660 (ListMap!4845 K!13640) ListMap!4845)

(assert (=> b!4681038 (= lt!1840918 (-!660 lt!1840924 key!4653))))

(assert (=> b!4681038 (= (-!660 (+!2098 lt!1840925 (tuple2!53579 key!4653 (_2!30083 (h!58478 oldBucket!34)))) key!4653) lt!1840925)))

(declare-fun lt!1840915 () Unit!122745)

(declare-fun addThenRemoveForNewKeyIsSame!51 (ListMap!4845 K!13640 V!13886) Unit!122745)

(assert (=> b!4681038 (= lt!1840915 (addThenRemoveForNewKeyIsSame!51 lt!1840925 key!4653 (_2!30083 (h!58478 oldBucket!34))))))

(declare-fun b!4681039 () Bool)

(declare-fun tp!1345093 () Bool)

(assert (=> b!4681039 (= e!2920556 tp!1345093)))

(declare-fun b!4681040 () Bool)

(assert (=> b!4681040 (= e!2920552 e!2920558)))

(declare-fun res!1972688 () Bool)

(assert (=> b!4681040 (=> res!1972688 e!2920558)))

(assert (=> b!4681040 (= res!1972688 (not (eq!985 lt!1840916 lt!1840920)))))

(assert (=> b!4681040 (eq!985 lt!1840918 lt!1840916)))

(assert (=> b!4681040 (= lt!1840916 (-!660 lt!1840921 key!4653))))

(declare-fun lt!1840917 () Unit!122745)

(declare-fun lemmaRemovePreservesEq!80 (ListMap!4845 ListMap!4845 K!13640) Unit!122745)

(assert (=> b!4681040 (= lt!1840917 (lemmaRemovePreservesEq!80 lt!1840924 lt!1840921 key!4653))))

(declare-fun b!4681041 () Bool)

(declare-fun res!1972686 () Bool)

(assert (=> b!4681041 (=> (not res!1972686) (not e!2920549))))

(assert (=> b!4681041 (= res!1972686 (allKeysSameHash!1622 oldBucket!34 hash!405 hashF!1323))))

(assert (= (and start!472728 res!1972687) b!4681020))

(assert (= (and b!4681020 res!1972682) b!4681035))

(assert (= (and b!4681035 res!1972683) b!4681036))

(assert (= (and b!4681036 res!1972677) b!4681041))

(assert (= (and b!4681041 res!1972686) b!4681019))

(assert (= (and b!4681019 res!1972680) b!4681026))

(assert (= (and b!4681026 res!1972684) b!4681028))

(assert (= (and b!4681028 res!1972675) b!4681037))

(assert (= (and b!4681037 res!1972681) b!4681027))

(assert (= (and b!4681027 res!1972679) b!4681023))

(assert (= (and b!4681023 res!1972676) b!4681016))

(assert (= (and b!4681016 (not res!1972692)) b!4681034))

(assert (= (and b!4681034 (not res!1972693)) b!4681029))

(assert (= (and b!4681029 (not res!1972694)) b!4681018))

(assert (= (and b!4681018 (not res!1972685)) b!4681032))

(assert (= (and b!4681032 (not res!1972697)) b!4681031))

(assert (= (and b!4681031 (not res!1972696)) b!4681021))

(assert (= (and b!4681021 (not res!1972678)) b!4681025))

(assert (= (and b!4681025 (not res!1972690)) b!4681038))

(assert (= (and b!4681038 (not res!1972695)) b!4681017))

(assert (= (and b!4681017 (not res!1972689)) b!4681040))

(assert (= (and b!4681040 (not res!1972688)) b!4681030))

(assert (= (and b!4681030 (not res!1972691)) b!4681024))

(assert (= start!472728 b!4681039))

(assert (= (and start!472728 ((_ is Cons!52263) oldBucket!34)) b!4681033))

(assert (= (and start!472728 ((_ is Cons!52263) newBucket!218)) b!4681022))

(declare-fun m!5578431 () Bool)

(assert (=> b!4681028 m!5578431))

(declare-fun m!5578433 () Bool)

(assert (=> b!4681035 m!5578433))

(declare-fun m!5578435 () Bool)

(assert (=> b!4681026 m!5578435))

(declare-fun m!5578437 () Bool)

(assert (=> b!4681031 m!5578437))

(declare-fun m!5578439 () Bool)

(assert (=> b!4681017 m!5578439))

(declare-fun m!5578441 () Bool)

(assert (=> b!4681017 m!5578441))

(declare-fun m!5578443 () Bool)

(assert (=> b!4681019 m!5578443))

(declare-fun m!5578445 () Bool)

(assert (=> b!4681019 m!5578445))

(declare-fun m!5578447 () Bool)

(assert (=> b!4681020 m!5578447))

(declare-fun m!5578449 () Bool)

(assert (=> start!472728 m!5578449))

(declare-fun m!5578451 () Bool)

(assert (=> start!472728 m!5578451))

(declare-fun m!5578453 () Bool)

(assert (=> b!4681034 m!5578453))

(declare-fun m!5578455 () Bool)

(assert (=> b!4681036 m!5578455))

(declare-fun m!5578457 () Bool)

(assert (=> b!4681030 m!5578457))

(declare-fun m!5578459 () Bool)

(assert (=> b!4681027 m!5578459))

(declare-fun m!5578461 () Bool)

(assert (=> b!4681040 m!5578461))

(declare-fun m!5578463 () Bool)

(assert (=> b!4681040 m!5578463))

(declare-fun m!5578465 () Bool)

(assert (=> b!4681040 m!5578465))

(declare-fun m!5578467 () Bool)

(assert (=> b!4681040 m!5578467))

(declare-fun m!5578469 () Bool)

(assert (=> b!4681029 m!5578469))

(declare-fun m!5578471 () Bool)

(assert (=> b!4681029 m!5578471))

(declare-fun m!5578473 () Bool)

(assert (=> b!4681041 m!5578473))

(declare-fun m!5578475 () Bool)

(assert (=> b!4681025 m!5578475))

(declare-fun m!5578477 () Bool)

(assert (=> b!4681025 m!5578477))

(declare-fun m!5578479 () Bool)

(assert (=> b!4681025 m!5578479))

(declare-fun m!5578481 () Bool)

(assert (=> b!4681032 m!5578481))

(declare-fun m!5578483 () Bool)

(assert (=> b!4681032 m!5578483))

(declare-fun m!5578485 () Bool)

(assert (=> b!4681032 m!5578485))

(declare-fun m!5578487 () Bool)

(assert (=> b!4681032 m!5578487))

(declare-fun m!5578489 () Bool)

(assert (=> b!4681032 m!5578489))

(declare-fun m!5578491 () Bool)

(assert (=> b!4681032 m!5578491))

(assert (=> b!4681032 m!5578485))

(declare-fun m!5578493 () Bool)

(assert (=> b!4681032 m!5578493))

(assert (=> b!4681032 m!5578491))

(assert (=> b!4681032 m!5578481))

(declare-fun m!5578495 () Bool)

(assert (=> b!4681032 m!5578495))

(declare-fun m!5578497 () Bool)

(assert (=> b!4681037 m!5578497))

(declare-fun m!5578499 () Bool)

(assert (=> b!4681018 m!5578499))

(declare-fun m!5578501 () Bool)

(assert (=> b!4681018 m!5578501))

(declare-fun m!5578503 () Bool)

(assert (=> b!4681038 m!5578503))

(declare-fun m!5578505 () Bool)

(assert (=> b!4681038 m!5578505))

(assert (=> b!4681038 m!5578505))

(declare-fun m!5578507 () Bool)

(assert (=> b!4681038 m!5578507))

(declare-fun m!5578509 () Bool)

(assert (=> b!4681038 m!5578509))

(declare-fun m!5578511 () Bool)

(assert (=> b!4681016 m!5578511))

(declare-fun m!5578513 () Bool)

(assert (=> b!4681016 m!5578513))

(declare-fun m!5578515 () Bool)

(assert (=> b!4681016 m!5578515))

(check-sat (not b!4681039) (not b!4681026) (not b!4681035) (not b!4681028) (not b!4681030) (not b!4681019) (not b!4681027) (not b!4681018) (not b!4681032) (not b!4681025) tp_is_empty!30479 (not b!4681016) (not start!472728) (not b!4681034) (not b!4681038) (not b!4681020) (not b!4681031) (not b!4681017) (not b!4681036) (not b!4681022) (not b!4681041) (not b!4681040) (not b!4681033) (not b!4681037) tp_is_empty!30477 (not b!4681029))
(check-sat)
