; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!462688 () Bool)

(assert start!462688)

(declare-fun b!4620933 () Bool)

(declare-fun e!2882406 () Bool)

(declare-fun e!2882410 () Bool)

(assert (=> b!4620933 (= e!2882406 e!2882410)))

(declare-fun res!1937035 () Bool)

(assert (=> b!4620933 (=> (not res!1937035) (not e!2882410))))

(declare-datatypes ((K!12860 0))(
  ( (K!12861 (val!18559 Int)) )
))
(declare-datatypes ((V!13106 0))(
  ( (V!13107 (val!18560 Int)) )
))
(declare-datatypes ((tuple2!52382 0))(
  ( (tuple2!52383 (_1!29485 K!12860) (_2!29485 V!13106)) )
))
(declare-datatypes ((List!51598 0))(
  ( (Nil!51474) (Cons!51474 (h!57508 tuple2!52382) (t!358614 List!51598)) )
))
(declare-datatypes ((ListMap!4237 0))(
  ( (ListMap!4238 (toList!4933 List!51598)) )
))
(declare-fun lt!1777120 () ListMap!4237)

(declare-fun key!4968 () K!12860)

(declare-fun contains!14479 (ListMap!4237 K!12860) Bool)

(assert (=> b!4620933 (= res!1937035 (contains!14479 lt!1777120 key!4968))))

(declare-datatypes ((tuple2!52384 0))(
  ( (tuple2!52385 (_1!29486 (_ BitVec 64)) (_2!29486 List!51598)) )
))
(declare-datatypes ((List!51599 0))(
  ( (Nil!51475) (Cons!51475 (h!57509 tuple2!52384) (t!358615 List!51599)) )
))
(declare-fun lt!1777111 () List!51599)

(declare-fun extractMap!1540 (List!51599) ListMap!4237)

(assert (=> b!4620933 (= lt!1777120 (extractMap!1540 lt!1777111))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51598)

(assert (=> b!4620933 (= lt!1777111 (Cons!51475 (tuple2!52385 hash!414 oldBucket!40) Nil!51475))))

(declare-fun tp_is_empty!29229 () Bool)

(declare-fun tp!1341910 () Bool)

(declare-fun tp_is_empty!29231 () Bool)

(declare-fun b!4620934 () Bool)

(declare-fun e!2882413 () Bool)

(assert (=> b!4620934 (= e!2882413 (and tp_is_empty!29229 tp_is_empty!29231 tp!1341910))))

(declare-fun b!4620935 () Bool)

(declare-fun res!1937040 () Bool)

(assert (=> b!4620935 (=> (not res!1937040) (not e!2882406))))

(declare-datatypes ((Hashable!5881 0))(
  ( (HashableExt!5880 (__x!31584 Int)) )
))
(declare-fun hashF!1389 () Hashable!5881)

(declare-fun allKeysSameHash!1338 (List!51598 (_ BitVec 64) Hashable!5881) Bool)

(assert (=> b!4620935 (= res!1937040 (allKeysSameHash!1338 oldBucket!40 hash!414 hashF!1389))))

(declare-fun res!1937042 () Bool)

(assert (=> start!462688 (=> (not res!1937042) (not e!2882406))))

(declare-fun noDuplicateKeys!1484 (List!51598) Bool)

(assert (=> start!462688 (= res!1937042 (noDuplicateKeys!1484 oldBucket!40))))

(assert (=> start!462688 e!2882406))

(assert (=> start!462688 true))

(assert (=> start!462688 e!2882413))

(assert (=> start!462688 tp_is_empty!29229))

(declare-fun e!2882409 () Bool)

(assert (=> start!462688 e!2882409))

(declare-fun tp!1341911 () Bool)

(declare-fun b!4620936 () Bool)

(assert (=> b!4620936 (= e!2882409 (and tp_is_empty!29229 tp_is_empty!29231 tp!1341911))))

(declare-fun b!4620937 () Bool)

(declare-fun res!1937037 () Bool)

(assert (=> b!4620937 (=> (not res!1937037) (not e!2882406))))

(declare-fun newBucket!224 () List!51598)

(assert (=> b!4620937 (= res!1937037 (noDuplicateKeys!1484 newBucket!224))))

(declare-fun b!4620938 () Bool)

(declare-fun e!2882414 () Bool)

(declare-fun e!2882411 () Bool)

(assert (=> b!4620938 (= e!2882414 e!2882411)))

(declare-fun res!1937043 () Bool)

(assert (=> b!4620938 (=> res!1937043 e!2882411)))

(declare-fun lt!1777110 () List!51598)

(declare-fun lt!1777108 () List!51598)

(declare-fun removePairForKey!1107 (List!51598 K!12860) List!51598)

(assert (=> b!4620938 (= res!1937043 (not (= (removePairForKey!1107 lt!1777110 key!4968) lt!1777108)))))

(declare-fun tail!8119 (List!51598) List!51598)

(assert (=> b!4620938 (= lt!1777108 (tail!8119 newBucket!224))))

(assert (=> b!4620938 (= lt!1777110 (tail!8119 oldBucket!40))))

(declare-fun b!4620939 () Bool)

(assert (=> b!4620939 (= e!2882411 (not (= oldBucket!40 Nil!51474)))))

(declare-fun lt!1777106 () tuple2!52382)

(declare-fun eq!799 (ListMap!4237 ListMap!4237) Bool)

(declare-fun addToMapMapFromBucket!945 (List!51598 ListMap!4237) ListMap!4237)

(declare-fun +!1850 (ListMap!4237 tuple2!52382) ListMap!4237)

(assert (=> b!4620939 (eq!799 (addToMapMapFromBucket!945 (Cons!51474 lt!1777106 lt!1777108) (ListMap!4238 Nil!51474)) (+!1850 (addToMapMapFromBucket!945 lt!1777108 (ListMap!4238 Nil!51474)) lt!1777106))))

(declare-datatypes ((Unit!111028 0))(
  ( (Unit!111029) )
))
(declare-fun lt!1777107 () Unit!111028)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!50 (tuple2!52382 List!51598 ListMap!4237) Unit!111028)

(assert (=> b!4620939 (= lt!1777107 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!50 lt!1777106 lt!1777108 (ListMap!4238 Nil!51474)))))

(declare-fun head!9618 (List!51598) tuple2!52382)

(assert (=> b!4620939 (= lt!1777106 (head!9618 newBucket!224))))

(declare-fun lt!1777117 () tuple2!52382)

(assert (=> b!4620939 (eq!799 (addToMapMapFromBucket!945 (Cons!51474 lt!1777117 lt!1777110) (ListMap!4238 Nil!51474)) (+!1850 (addToMapMapFromBucket!945 lt!1777110 (ListMap!4238 Nil!51474)) lt!1777117))))

(declare-fun lt!1777123 () Unit!111028)

(assert (=> b!4620939 (= lt!1777123 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!50 lt!1777117 lt!1777110 (ListMap!4238 Nil!51474)))))

(assert (=> b!4620939 (= lt!1777117 (head!9618 oldBucket!40))))

(declare-fun lt!1777122 () List!51599)

(assert (=> b!4620939 (contains!14479 (extractMap!1540 lt!1777122) key!4968)))

(declare-fun lt!1777116 () Unit!111028)

(declare-datatypes ((ListLongMap!3523 0))(
  ( (ListLongMap!3524 (toList!4934 List!51599)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!302 (ListLongMap!3523 K!12860 Hashable!5881) Unit!111028)

(assert (=> b!4620939 (= lt!1777116 (lemmaListContainsThenExtractedMapContains!302 (ListLongMap!3524 lt!1777122) key!4968 hashF!1389))))

(assert (=> b!4620939 (= lt!1777122 (Cons!51475 (tuple2!52385 hash!414 (t!358614 oldBucket!40)) Nil!51475))))

(declare-fun b!4620940 () Bool)

(declare-fun e!2882412 () Bool)

(declare-fun lt!1777113 () ListMap!4237)

(assert (=> b!4620940 (= e!2882412 (= lt!1777113 (ListMap!4238 Nil!51474)))))

(declare-fun b!4620941 () Bool)

(declare-fun res!1937046 () Bool)

(assert (=> b!4620941 (=> (not res!1937046) (not e!2882406))))

(assert (=> b!4620941 (= res!1937046 (= (removePairForKey!1107 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4620942 () Bool)

(declare-fun e!2882407 () Bool)

(assert (=> b!4620942 (= e!2882410 e!2882407)))

(declare-fun res!1937045 () Bool)

(assert (=> b!4620942 (=> (not res!1937045) (not e!2882407))))

(declare-fun lt!1777109 () (_ BitVec 64))

(assert (=> b!4620942 (= res!1937045 (= lt!1777109 hash!414))))

(declare-fun hash!3458 (Hashable!5881 K!12860) (_ BitVec 64))

(assert (=> b!4620942 (= lt!1777109 (hash!3458 hashF!1389 key!4968))))

(declare-fun b!4620943 () Bool)

(declare-fun res!1937038 () Bool)

(assert (=> b!4620943 (=> res!1937038 e!2882411)))

(assert (=> b!4620943 (= res!1937038 (not (= (removePairForKey!1107 (t!358614 oldBucket!40) key!4968) lt!1777108)))))

(declare-fun b!4620944 () Bool)

(declare-fun res!1937044 () Bool)

(assert (=> b!4620944 (=> (not res!1937044) (not e!2882407))))

(assert (=> b!4620944 (= res!1937044 (allKeysSameHash!1338 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4620945 () Bool)

(declare-fun e!2882408 () Bool)

(assert (=> b!4620945 (= e!2882407 (not e!2882408))))

(declare-fun res!1937041 () Bool)

(assert (=> b!4620945 (=> res!1937041 e!2882408)))

(get-info :version)

(assert (=> b!4620945 (= res!1937041 (or (and ((_ is Cons!51474) oldBucket!40) (= (_1!29485 (h!57508 oldBucket!40)) key!4968)) (not ((_ is Cons!51474) oldBucket!40)) (= (_1!29485 (h!57508 oldBucket!40)) key!4968)))))

(assert (=> b!4620945 e!2882412))

(declare-fun res!1937039 () Bool)

(assert (=> b!4620945 (=> (not res!1937039) (not e!2882412))))

(assert (=> b!4620945 (= res!1937039 (= lt!1777120 (addToMapMapFromBucket!945 oldBucket!40 lt!1777113)))))

(assert (=> b!4620945 (= lt!1777113 (extractMap!1540 Nil!51475))))

(assert (=> b!4620945 true))

(declare-fun b!4620946 () Bool)

(assert (=> b!4620946 (= e!2882408 e!2882414)))

(declare-fun res!1937036 () Bool)

(assert (=> b!4620946 (=> res!1937036 e!2882414)))

(declare-fun containsKey!2392 (List!51598 K!12860) Bool)

(assert (=> b!4620946 (= res!1937036 (not (containsKey!2392 (t!358614 oldBucket!40) key!4968)))))

(assert (=> b!4620946 (containsKey!2392 oldBucket!40 key!4968)))

(declare-fun lt!1777118 () Unit!111028)

(declare-fun lemmaGetPairDefinedThenContainsKey!30 (List!51598 K!12860 Hashable!5881) Unit!111028)

(assert (=> b!4620946 (= lt!1777118 (lemmaGetPairDefinedThenContainsKey!30 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1777119 () List!51598)

(declare-datatypes ((Option!11534 0))(
  ( (None!11533) (Some!11533 (v!45627 tuple2!52382)) )
))
(declare-fun isDefined!8799 (Option!11534) Bool)

(declare-fun getPair!276 (List!51598 K!12860) Option!11534)

(assert (=> b!4620946 (isDefined!8799 (getPair!276 lt!1777119 key!4968))))

(declare-fun lt!1777115 () tuple2!52384)

(declare-fun lt!1777105 () Unit!111028)

(declare-fun lambda!190742 () Int)

(declare-fun forallContained!3012 (List!51599 Int tuple2!52384) Unit!111028)

(assert (=> b!4620946 (= lt!1777105 (forallContained!3012 lt!1777111 lambda!190742 lt!1777115))))

(declare-fun contains!14480 (List!51599 tuple2!52384) Bool)

(assert (=> b!4620946 (contains!14480 lt!1777111 lt!1777115)))

(assert (=> b!4620946 (= lt!1777115 (tuple2!52385 lt!1777109 lt!1777119))))

(declare-fun lt!1777112 () ListLongMap!3523)

(declare-fun lt!1777121 () Unit!111028)

(declare-fun lemmaGetValueImpliesTupleContained!81 (ListLongMap!3523 (_ BitVec 64) List!51598) Unit!111028)

(assert (=> b!4620946 (= lt!1777121 (lemmaGetValueImpliesTupleContained!81 lt!1777112 lt!1777109 lt!1777119))))

(declare-fun apply!12149 (ListLongMap!3523 (_ BitVec 64)) List!51598)

(assert (=> b!4620946 (= lt!1777119 (apply!12149 lt!1777112 lt!1777109))))

(declare-fun contains!14481 (ListLongMap!3523 (_ BitVec 64)) Bool)

(assert (=> b!4620946 (contains!14481 lt!1777112 lt!1777109)))

(declare-fun lt!1777114 () Unit!111028)

(declare-fun lemmaInGenMapThenLongMapContainsHash!482 (ListLongMap!3523 K!12860 Hashable!5881) Unit!111028)

(assert (=> b!4620946 (= lt!1777114 (lemmaInGenMapThenLongMapContainsHash!482 lt!1777112 key!4968 hashF!1389))))

(declare-fun lt!1777104 () Unit!111028)

(declare-fun lemmaInGenMapThenGetPairDefined!72 (ListLongMap!3523 K!12860 Hashable!5881) Unit!111028)

(assert (=> b!4620946 (= lt!1777104 (lemmaInGenMapThenGetPairDefined!72 lt!1777112 key!4968 hashF!1389))))

(assert (=> b!4620946 (= lt!1777112 (ListLongMap!3524 lt!1777111))))

(assert (= (and start!462688 res!1937042) b!4620937))

(assert (= (and b!4620937 res!1937037) b!4620941))

(assert (= (and b!4620941 res!1937046) b!4620935))

(assert (= (and b!4620935 res!1937040) b!4620933))

(assert (= (and b!4620933 res!1937035) b!4620942))

(assert (= (and b!4620942 res!1937045) b!4620944))

(assert (= (and b!4620944 res!1937044) b!4620945))

(assert (= (and b!4620945 res!1937039) b!4620940))

(assert (= (and b!4620945 (not res!1937041)) b!4620946))

(assert (= (and b!4620946 (not res!1937036)) b!4620938))

(assert (= (and b!4620938 (not res!1937043)) b!4620943))

(assert (= (and b!4620943 (not res!1937038)) b!4620939))

(assert (= (and start!462688 ((_ is Cons!51474) oldBucket!40)) b!4620934))

(assert (= (and start!462688 ((_ is Cons!51474) newBucket!224)) b!4620936))

(declare-fun m!5457609 () Bool)

(assert (=> b!4620935 m!5457609))

(declare-fun m!5457611 () Bool)

(assert (=> b!4620942 m!5457611))

(declare-fun m!5457613 () Bool)

(assert (=> b!4620943 m!5457613))

(declare-fun m!5457615 () Bool)

(assert (=> b!4620938 m!5457615))

(declare-fun m!5457617 () Bool)

(assert (=> b!4620938 m!5457617))

(declare-fun m!5457619 () Bool)

(assert (=> b!4620938 m!5457619))

(declare-fun m!5457621 () Bool)

(assert (=> b!4620937 m!5457621))

(declare-fun m!5457623 () Bool)

(assert (=> b!4620933 m!5457623))

(declare-fun m!5457625 () Bool)

(assert (=> b!4620933 m!5457625))

(declare-fun m!5457627 () Bool)

(assert (=> b!4620939 m!5457627))

(declare-fun m!5457629 () Bool)

(assert (=> b!4620939 m!5457629))

(declare-fun m!5457631 () Bool)

(assert (=> b!4620939 m!5457631))

(declare-fun m!5457633 () Bool)

(assert (=> b!4620939 m!5457633))

(declare-fun m!5457635 () Bool)

(assert (=> b!4620939 m!5457635))

(declare-fun m!5457637 () Bool)

(assert (=> b!4620939 m!5457637))

(assert (=> b!4620939 m!5457627))

(declare-fun m!5457639 () Bool)

(assert (=> b!4620939 m!5457639))

(assert (=> b!4620939 m!5457635))

(assert (=> b!4620939 m!5457631))

(declare-fun m!5457641 () Bool)

(assert (=> b!4620939 m!5457641))

(declare-fun m!5457643 () Bool)

(assert (=> b!4620939 m!5457643))

(declare-fun m!5457645 () Bool)

(assert (=> b!4620939 m!5457645))

(assert (=> b!4620939 m!5457639))

(assert (=> b!4620939 m!5457633))

(declare-fun m!5457647 () Bool)

(assert (=> b!4620939 m!5457647))

(assert (=> b!4620939 m!5457647))

(assert (=> b!4620939 m!5457641))

(declare-fun m!5457649 () Bool)

(assert (=> b!4620939 m!5457649))

(declare-fun m!5457651 () Bool)

(assert (=> b!4620939 m!5457651))

(declare-fun m!5457653 () Bool)

(assert (=> b!4620939 m!5457653))

(declare-fun m!5457655 () Bool)

(assert (=> b!4620939 m!5457655))

(declare-fun m!5457657 () Bool)

(assert (=> b!4620941 m!5457657))

(declare-fun m!5457659 () Bool)

(assert (=> b!4620945 m!5457659))

(declare-fun m!5457661 () Bool)

(assert (=> b!4620945 m!5457661))

(declare-fun m!5457663 () Bool)

(assert (=> b!4620944 m!5457663))

(declare-fun m!5457665 () Bool)

(assert (=> start!462688 m!5457665))

(declare-fun m!5457667 () Bool)

(assert (=> b!4620946 m!5457667))

(declare-fun m!5457669 () Bool)

(assert (=> b!4620946 m!5457669))

(declare-fun m!5457671 () Bool)

(assert (=> b!4620946 m!5457671))

(declare-fun m!5457673 () Bool)

(assert (=> b!4620946 m!5457673))

(declare-fun m!5457675 () Bool)

(assert (=> b!4620946 m!5457675))

(declare-fun m!5457677 () Bool)

(assert (=> b!4620946 m!5457677))

(declare-fun m!5457679 () Bool)

(assert (=> b!4620946 m!5457679))

(declare-fun m!5457681 () Bool)

(assert (=> b!4620946 m!5457681))

(declare-fun m!5457683 () Bool)

(assert (=> b!4620946 m!5457683))

(declare-fun m!5457685 () Bool)

(assert (=> b!4620946 m!5457685))

(assert (=> b!4620946 m!5457677))

(declare-fun m!5457687 () Bool)

(assert (=> b!4620946 m!5457687))

(declare-fun m!5457689 () Bool)

(assert (=> b!4620946 m!5457689))

(check-sat (not b!4620943) (not start!462688) (not b!4620935) (not b!4620933) (not b!4620936) tp_is_empty!29231 (not b!4620944) (not b!4620941) tp_is_empty!29229 (not b!4620946) (not b!4620934) (not b!4620942) (not b!4620938) (not b!4620939) (not b!4620945) (not b!4620937))
(check-sat)
