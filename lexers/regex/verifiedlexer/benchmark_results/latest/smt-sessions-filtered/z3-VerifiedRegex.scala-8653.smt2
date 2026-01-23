; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461336 () Bool)

(assert start!461336)

(declare-fun b!4612307 () Bool)

(declare-fun res!1931469 () Bool)

(declare-fun e!2877022 () Bool)

(assert (=> b!4612307 (=> (not res!1931469) (not e!2877022))))

(declare-datatypes ((Hashable!5805 0))(
  ( (HashableExt!5804 (__x!31508 Int)) )
))
(declare-fun hashF!1389 () Hashable!5805)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!12670 0))(
  ( (K!12671 (val!18407 Int)) )
))
(declare-datatypes ((V!12916 0))(
  ( (V!12917 (val!18408 Int)) )
))
(declare-datatypes ((tuple2!52078 0))(
  ( (tuple2!52079 (_1!29333 K!12670) (_2!29333 V!12916)) )
))
(declare-datatypes ((List!51415 0))(
  ( (Nil!51291) (Cons!51291 (h!57293 tuple2!52078) (t!358409 List!51415)) )
))
(declare-fun newBucket!224 () List!51415)

(declare-fun allKeysSameHash!1262 (List!51415 (_ BitVec 64) Hashable!5805) Bool)

(assert (=> b!4612307 (= res!1931469 (allKeysSameHash!1262 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4612308 () Bool)

(declare-fun e!2877024 () Bool)

(declare-fun e!2877021 () Bool)

(assert (=> b!4612308 (= e!2877024 e!2877021)))

(declare-fun res!1931468 () Bool)

(assert (=> b!4612308 (=> res!1931468 e!2877021)))

(declare-datatypes ((ListMap!4085 0))(
  ( (ListMap!4086 (toList!4796 List!51415)) )
))
(declare-fun lt!1767763 () ListMap!4085)

(declare-fun addToMapMapFromBucket!869 (List!51415 ListMap!4085) ListMap!4085)

(assert (=> b!4612308 (= res!1931468 (not (= lt!1767763 (addToMapMapFromBucket!869 newBucket!224 (ListMap!4086 Nil!51291)))))))

(declare-fun lt!1767765 () List!51415)

(assert (=> b!4612308 (= lt!1767763 (addToMapMapFromBucket!869 lt!1767765 (ListMap!4086 Nil!51291)))))

(declare-fun b!4612309 () Bool)

(declare-fun res!1931470 () Bool)

(assert (=> b!4612309 (=> res!1931470 e!2877024)))

(declare-datatypes ((tuple2!52080 0))(
  ( (tuple2!52081 (_1!29334 (_ BitVec 64)) (_2!29334 List!51415)) )
))
(declare-datatypes ((List!51416 0))(
  ( (Nil!51292) (Cons!51292 (h!57294 tuple2!52080) (t!358410 List!51416)) )
))
(declare-fun extractMap!1464 (List!51416) ListMap!4085)

(assert (=> b!4612309 (= res!1931470 (not (= (extractMap!1464 (Cons!51292 (tuple2!52081 hash!414 lt!1767765) Nil!51292)) (extractMap!1464 (Cons!51292 (tuple2!52081 hash!414 newBucket!224) Nil!51292)))))))

(declare-fun res!1931472 () Bool)

(declare-fun e!2877026 () Bool)

(assert (=> start!461336 (=> (not res!1931472) (not e!2877026))))

(declare-fun oldBucket!40 () List!51415)

(declare-fun noDuplicateKeys!1408 (List!51415) Bool)

(assert (=> start!461336 (= res!1931472 (noDuplicateKeys!1408 oldBucket!40))))

(assert (=> start!461336 e!2877026))

(assert (=> start!461336 true))

(declare-fun e!2877025 () Bool)

(assert (=> start!461336 e!2877025))

(declare-fun tp_is_empty!28925 () Bool)

(assert (=> start!461336 tp_is_empty!28925))

(declare-fun e!2877019 () Bool)

(assert (=> start!461336 e!2877019))

(declare-fun b!4612310 () Bool)

(declare-fun res!1931473 () Bool)

(assert (=> b!4612310 (=> (not res!1931473) (not e!2877022))))

(declare-fun key!4968 () K!12670)

(declare-fun hash!3351 (Hashable!5805 K!12670) (_ BitVec 64))

(assert (=> b!4612310 (= res!1931473 (= (hash!3351 hashF!1389 key!4968) hash!414))))

(declare-fun b!4612311 () Bool)

(declare-fun res!1931475 () Bool)

(assert (=> b!4612311 (=> (not res!1931475) (not e!2877026))))

(assert (=> b!4612311 (= res!1931475 (noDuplicateKeys!1408 newBucket!224))))

(declare-fun b!4612312 () Bool)

(declare-fun e!2877023 () Bool)

(assert (=> b!4612312 (= e!2877022 (not e!2877023))))

(declare-fun res!1931477 () Bool)

(assert (=> b!4612312 (=> res!1931477 e!2877023)))

(get-info :version)

(assert (=> b!4612312 (= res!1931477 (or (not ((_ is Cons!51291) oldBucket!40)) (not (= (_1!29333 (h!57293 oldBucket!40)) key!4968))))))

(declare-fun e!2877020 () Bool)

(assert (=> b!4612312 e!2877020))

(declare-fun res!1931474 () Bool)

(assert (=> b!4612312 (=> (not res!1931474) (not e!2877020))))

(declare-fun lt!1767762 () ListMap!4085)

(declare-fun lt!1767767 () ListMap!4085)

(assert (=> b!4612312 (= res!1931474 (= lt!1767762 (addToMapMapFromBucket!869 oldBucket!40 lt!1767767)))))

(assert (=> b!4612312 (= lt!1767767 (extractMap!1464 Nil!51292))))

(assert (=> b!4612312 true))

(declare-fun b!4612313 () Bool)

(declare-fun res!1931478 () Bool)

(assert (=> b!4612313 (=> (not res!1931478) (not e!2877026))))

(assert (=> b!4612313 (= res!1931478 (allKeysSameHash!1262 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4612314 () Bool)

(assert (=> b!4612314 (= e!2877026 e!2877022)))

(declare-fun res!1931471 () Bool)

(assert (=> b!4612314 (=> (not res!1931471) (not e!2877022))))

(declare-fun contains!14274 (ListMap!4085 K!12670) Bool)

(assert (=> b!4612314 (= res!1931471 (contains!14274 lt!1767762 key!4968))))

(assert (=> b!4612314 (= lt!1767762 (extractMap!1464 (Cons!51292 (tuple2!52081 hash!414 oldBucket!40) Nil!51292)))))

(declare-fun b!4612315 () Bool)

(assert (=> b!4612315 (= e!2877021 (not (= oldBucket!40 Nil!51291)))))

(declare-fun lt!1767766 () tuple2!52078)

(declare-fun eq!751 (ListMap!4085 ListMap!4085) Bool)

(declare-fun +!1793 (ListMap!4085 tuple2!52078) ListMap!4085)

(assert (=> b!4612315 (eq!751 (addToMapMapFromBucket!869 (Cons!51291 lt!1767766 lt!1767765) (ListMap!4086 Nil!51291)) (+!1793 lt!1767763 lt!1767766))))

(declare-datatypes ((Unit!109472 0))(
  ( (Unit!109473) )
))
(declare-fun lt!1767764 () Unit!109472)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!2 (tuple2!52078 List!51415 ListMap!4085) Unit!109472)

(assert (=> b!4612315 (= lt!1767764 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!2 lt!1767766 lt!1767765 (ListMap!4086 Nil!51291)))))

(declare-fun head!9568 (List!51415) tuple2!52078)

(assert (=> b!4612315 (= lt!1767766 (head!9568 oldBucket!40))))

(declare-fun b!4612316 () Bool)

(assert (=> b!4612316 (= e!2877023 e!2877024)))

(declare-fun res!1931467 () Bool)

(assert (=> b!4612316 (=> res!1931467 e!2877024)))

(assert (=> b!4612316 (= res!1931467 (not (= lt!1767765 newBucket!224)))))

(declare-fun tail!8055 (List!51415) List!51415)

(assert (=> b!4612316 (= lt!1767765 (tail!8055 oldBucket!40))))

(declare-fun b!4612317 () Bool)

(declare-fun tp_is_empty!28927 () Bool)

(declare-fun tp!1341326 () Bool)

(assert (=> b!4612317 (= e!2877025 (and tp_is_empty!28925 tp_is_empty!28927 tp!1341326))))

(declare-fun b!4612318 () Bool)

(declare-fun res!1931476 () Bool)

(assert (=> b!4612318 (=> (not res!1931476) (not e!2877026))))

(declare-fun removePairForKey!1031 (List!51415 K!12670) List!51415)

(assert (=> b!4612318 (= res!1931476 (= (removePairForKey!1031 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4612319 () Bool)

(declare-fun tp!1341327 () Bool)

(assert (=> b!4612319 (= e!2877019 (and tp_is_empty!28925 tp_is_empty!28927 tp!1341327))))

(declare-fun b!4612320 () Bool)

(assert (=> b!4612320 (= e!2877020 (= lt!1767767 (ListMap!4086 Nil!51291)))))

(assert (= (and start!461336 res!1931472) b!4612311))

(assert (= (and b!4612311 res!1931475) b!4612318))

(assert (= (and b!4612318 res!1931476) b!4612313))

(assert (= (and b!4612313 res!1931478) b!4612314))

(assert (= (and b!4612314 res!1931471) b!4612310))

(assert (= (and b!4612310 res!1931473) b!4612307))

(assert (= (and b!4612307 res!1931469) b!4612312))

(assert (= (and b!4612312 res!1931474) b!4612320))

(assert (= (and b!4612312 (not res!1931477)) b!4612316))

(assert (= (and b!4612316 (not res!1931467)) b!4612309))

(assert (= (and b!4612309 (not res!1931470)) b!4612308))

(assert (= (and b!4612308 (not res!1931468)) b!4612315))

(assert (= (and start!461336 ((_ is Cons!51291) oldBucket!40)) b!4612317))

(assert (= (and start!461336 ((_ is Cons!51291) newBucket!224)) b!4612319))

(declare-fun m!5443597 () Bool)

(assert (=> b!4612313 m!5443597))

(declare-fun m!5443599 () Bool)

(assert (=> b!4612312 m!5443599))

(declare-fun m!5443601 () Bool)

(assert (=> b!4612312 m!5443601))

(declare-fun m!5443603 () Bool)

(assert (=> b!4612314 m!5443603))

(declare-fun m!5443605 () Bool)

(assert (=> b!4612314 m!5443605))

(declare-fun m!5443607 () Bool)

(assert (=> b!4612307 m!5443607))

(declare-fun m!5443609 () Bool)

(assert (=> b!4612311 m!5443609))

(declare-fun m!5443611 () Bool)

(assert (=> b!4612308 m!5443611))

(declare-fun m!5443613 () Bool)

(assert (=> b!4612308 m!5443613))

(declare-fun m!5443615 () Bool)

(assert (=> b!4612309 m!5443615))

(declare-fun m!5443617 () Bool)

(assert (=> b!4612309 m!5443617))

(declare-fun m!5443619 () Bool)

(assert (=> b!4612316 m!5443619))

(declare-fun m!5443621 () Bool)

(assert (=> b!4612315 m!5443621))

(declare-fun m!5443623 () Bool)

(assert (=> b!4612315 m!5443623))

(assert (=> b!4612315 m!5443621))

(declare-fun m!5443625 () Bool)

(assert (=> b!4612315 m!5443625))

(declare-fun m!5443627 () Bool)

(assert (=> b!4612315 m!5443627))

(declare-fun m!5443629 () Bool)

(assert (=> b!4612315 m!5443629))

(assert (=> b!4612315 m!5443625))

(declare-fun m!5443631 () Bool)

(assert (=> start!461336 m!5443631))

(declare-fun m!5443633 () Bool)

(assert (=> b!4612310 m!5443633))

(declare-fun m!5443635 () Bool)

(assert (=> b!4612318 m!5443635))

(check-sat (not b!4612311) (not b!4612319) (not b!4612318) (not b!4612307) tp_is_empty!28927 (not b!4612314) (not b!4612317) (not b!4612316) (not b!4612312) (not b!4612313) (not b!4612310) (not start!461336) (not b!4612308) (not b!4612309) tp_is_empty!28925 (not b!4612315))
(check-sat)
