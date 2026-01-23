; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!461344 () Bool)

(assert start!461344)

(declare-fun b!4612475 () Bool)

(declare-fun tp_is_empty!28943 () Bool)

(declare-fun tp_is_empty!28941 () Bool)

(declare-fun tp!1341351 () Bool)

(declare-fun e!2877116 () Bool)

(assert (=> b!4612475 (= e!2877116 (and tp_is_empty!28941 tp_is_empty!28943 tp!1341351))))

(declare-fun b!4612477 () Bool)

(declare-fun res!1931614 () Bool)

(declare-fun e!2877120 () Bool)

(assert (=> b!4612477 (=> (not res!1931614) (not e!2877120))))

(declare-datatypes ((Hashable!5809 0))(
  ( (HashableExt!5808 (__x!31512 Int)) )
))
(declare-fun hashF!1389 () Hashable!5809)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!12680 0))(
  ( (K!12681 (val!18415 Int)) )
))
(declare-datatypes ((V!12926 0))(
  ( (V!12927 (val!18416 Int)) )
))
(declare-datatypes ((tuple2!52094 0))(
  ( (tuple2!52095 (_1!29341 K!12680) (_2!29341 V!12926)) )
))
(declare-datatypes ((List!51423 0))(
  ( (Nil!51299) (Cons!51299 (h!57301 tuple2!52094) (t!358417 List!51423)) )
))
(declare-fun newBucket!224 () List!51423)

(declare-fun allKeysSameHash!1266 (List!51423 (_ BitVec 64) Hashable!5809) Bool)

(assert (=> b!4612477 (= res!1931614 (allKeysSameHash!1266 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4612478 () Bool)

(declare-fun res!1931620 () Bool)

(assert (=> b!4612478 (=> (not res!1931620) (not e!2877120))))

(declare-fun key!4968 () K!12680)

(declare-fun hash!3355 (Hashable!5809 K!12680) (_ BitVec 64))

(assert (=> b!4612478 (= res!1931620 (= (hash!3355 hashF!1389 key!4968) hash!414))))

(declare-fun b!4612479 () Bool)

(declare-fun e!2877118 () Bool)

(declare-fun e!2877119 () Bool)

(assert (=> b!4612479 (= e!2877118 e!2877119)))

(declare-fun res!1931621 () Bool)

(assert (=> b!4612479 (=> res!1931621 e!2877119)))

(declare-datatypes ((ListMap!4093 0))(
  ( (ListMap!4094 (toList!4800 List!51423)) )
))
(declare-fun lt!1767839 () ListMap!4093)

(declare-fun addToMapMapFromBucket!873 (List!51423 ListMap!4093) ListMap!4093)

(assert (=> b!4612479 (= res!1931621 (not (= lt!1767839 (addToMapMapFromBucket!873 newBucket!224 (ListMap!4094 Nil!51299)))))))

(declare-fun lt!1767844 () List!51423)

(assert (=> b!4612479 (= lt!1767839 (addToMapMapFromBucket!873 lt!1767844 (ListMap!4094 Nil!51299)))))

(declare-fun b!4612480 () Bool)

(declare-fun res!1931622 () Bool)

(declare-fun e!2877115 () Bool)

(assert (=> b!4612480 (=> (not res!1931622) (not e!2877115))))

(declare-fun oldBucket!40 () List!51423)

(assert (=> b!4612480 (= res!1931622 (allKeysSameHash!1266 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4612481 () Bool)

(assert (=> b!4612481 (= e!2877119 true)))

(declare-fun lt!1767841 () ListMap!4093)

(declare-fun +!1797 (ListMap!4093 tuple2!52094) ListMap!4093)

(assert (=> b!4612481 (= lt!1767841 (+!1797 lt!1767839 (h!57301 oldBucket!40)))))

(declare-fun lt!1767845 () tuple2!52094)

(declare-fun eq!755 (ListMap!4093 ListMap!4093) Bool)

(assert (=> b!4612481 (eq!755 (addToMapMapFromBucket!873 (Cons!51299 lt!1767845 lt!1767844) (ListMap!4094 Nil!51299)) (+!1797 lt!1767839 lt!1767845))))

(declare-datatypes ((Unit!109480 0))(
  ( (Unit!109481) )
))
(declare-fun lt!1767840 () Unit!109480)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!6 (tuple2!52094 List!51423 ListMap!4093) Unit!109480)

(assert (=> b!4612481 (= lt!1767840 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!6 lt!1767845 lt!1767844 (ListMap!4094 Nil!51299)))))

(declare-fun head!9572 (List!51423) tuple2!52094)

(assert (=> b!4612481 (= lt!1767845 (head!9572 oldBucket!40))))

(declare-fun b!4612482 () Bool)

(declare-fun res!1931619 () Bool)

(assert (=> b!4612482 (=> (not res!1931619) (not e!2877115))))

(declare-fun noDuplicateKeys!1412 (List!51423) Bool)

(assert (=> b!4612482 (= res!1931619 (noDuplicateKeys!1412 newBucket!224))))

(declare-fun tp!1341350 () Bool)

(declare-fun e!2877121 () Bool)

(declare-fun b!4612483 () Bool)

(assert (=> b!4612483 (= e!2877121 (and tp_is_empty!28941 tp_is_empty!28943 tp!1341350))))

(declare-fun b!4612484 () Bool)

(declare-fun e!2877117 () Bool)

(assert (=> b!4612484 (= e!2877117 e!2877118)))

(declare-fun res!1931616 () Bool)

(assert (=> b!4612484 (=> res!1931616 e!2877118)))

(assert (=> b!4612484 (= res!1931616 (not (= lt!1767844 newBucket!224)))))

(declare-fun tail!8059 (List!51423) List!51423)

(assert (=> b!4612484 (= lt!1767844 (tail!8059 oldBucket!40))))

(declare-fun b!4612476 () Bool)

(declare-fun res!1931617 () Bool)

(assert (=> b!4612476 (=> res!1931617 e!2877118)))

(declare-datatypes ((tuple2!52096 0))(
  ( (tuple2!52097 (_1!29342 (_ BitVec 64)) (_2!29342 List!51423)) )
))
(declare-datatypes ((List!51424 0))(
  ( (Nil!51300) (Cons!51300 (h!57302 tuple2!52096) (t!358418 List!51424)) )
))
(declare-fun extractMap!1468 (List!51424) ListMap!4093)

(assert (=> b!4612476 (= res!1931617 (not (= (extractMap!1468 (Cons!51300 (tuple2!52097 hash!414 lt!1767844) Nil!51300)) (extractMap!1468 (Cons!51300 (tuple2!52097 hash!414 newBucket!224) Nil!51300)))))))

(declare-fun res!1931612 () Bool)

(assert (=> start!461344 (=> (not res!1931612) (not e!2877115))))

(assert (=> start!461344 (= res!1931612 (noDuplicateKeys!1412 oldBucket!40))))

(assert (=> start!461344 e!2877115))

(assert (=> start!461344 true))

(assert (=> start!461344 e!2877116))

(assert (=> start!461344 tp_is_empty!28941))

(assert (=> start!461344 e!2877121))

(declare-fun b!4612485 () Bool)

(assert (=> b!4612485 (= e!2877115 e!2877120)))

(declare-fun res!1931613 () Bool)

(assert (=> b!4612485 (=> (not res!1931613) (not e!2877120))))

(declare-fun lt!1767842 () ListMap!4093)

(declare-fun contains!14278 (ListMap!4093 K!12680) Bool)

(assert (=> b!4612485 (= res!1931613 (contains!14278 lt!1767842 key!4968))))

(assert (=> b!4612485 (= lt!1767842 (extractMap!1468 (Cons!51300 (tuple2!52097 hash!414 oldBucket!40) Nil!51300)))))

(declare-fun b!4612486 () Bool)

(assert (=> b!4612486 (= e!2877120 (not e!2877117))))

(declare-fun res!1931615 () Bool)

(assert (=> b!4612486 (=> res!1931615 e!2877117)))

(get-info :version)

(assert (=> b!4612486 (= res!1931615 (or (not ((_ is Cons!51299) oldBucket!40)) (not (= (_1!29341 (h!57301 oldBucket!40)) key!4968))))))

(declare-fun e!2877122 () Bool)

(assert (=> b!4612486 e!2877122))

(declare-fun res!1931611 () Bool)

(assert (=> b!4612486 (=> (not res!1931611) (not e!2877122))))

(declare-fun lt!1767843 () ListMap!4093)

(assert (=> b!4612486 (= res!1931611 (= lt!1767842 (addToMapMapFromBucket!873 oldBucket!40 lt!1767843)))))

(assert (=> b!4612486 (= lt!1767843 (extractMap!1468 Nil!51300))))

(assert (=> b!4612486 true))

(declare-fun b!4612487 () Bool)

(assert (=> b!4612487 (= e!2877122 (= lt!1767843 (ListMap!4094 Nil!51299)))))

(declare-fun b!4612488 () Bool)

(declare-fun res!1931618 () Bool)

(assert (=> b!4612488 (=> (not res!1931618) (not e!2877115))))

(declare-fun removePairForKey!1035 (List!51423 K!12680) List!51423)

(assert (=> b!4612488 (= res!1931618 (= (removePairForKey!1035 oldBucket!40 key!4968) newBucket!224))))

(assert (= (and start!461344 res!1931612) b!4612482))

(assert (= (and b!4612482 res!1931619) b!4612488))

(assert (= (and b!4612488 res!1931618) b!4612480))

(assert (= (and b!4612480 res!1931622) b!4612485))

(assert (= (and b!4612485 res!1931613) b!4612478))

(assert (= (and b!4612478 res!1931620) b!4612477))

(assert (= (and b!4612477 res!1931614) b!4612486))

(assert (= (and b!4612486 res!1931611) b!4612487))

(assert (= (and b!4612486 (not res!1931615)) b!4612484))

(assert (= (and b!4612484 (not res!1931616)) b!4612476))

(assert (= (and b!4612476 (not res!1931617)) b!4612479))

(assert (= (and b!4612479 (not res!1931621)) b!4612481))

(assert (= (and start!461344 ((_ is Cons!51299) oldBucket!40)) b!4612475))

(assert (= (and start!461344 ((_ is Cons!51299) newBucket!224)) b!4612483))

(declare-fun m!5443763 () Bool)

(assert (=> b!4612477 m!5443763))

(declare-fun m!5443765 () Bool)

(assert (=> b!4612480 m!5443765))

(declare-fun m!5443767 () Bool)

(assert (=> b!4612485 m!5443767))

(declare-fun m!5443769 () Bool)

(assert (=> b!4612485 m!5443769))

(declare-fun m!5443771 () Bool)

(assert (=> b!4612481 m!5443771))

(declare-fun m!5443773 () Bool)

(assert (=> b!4612481 m!5443773))

(declare-fun m!5443775 () Bool)

(assert (=> b!4612481 m!5443775))

(assert (=> b!4612481 m!5443775))

(declare-fun m!5443777 () Bool)

(assert (=> b!4612481 m!5443777))

(declare-fun m!5443779 () Bool)

(assert (=> b!4612481 m!5443779))

(declare-fun m!5443781 () Bool)

(assert (=> b!4612481 m!5443781))

(assert (=> b!4612481 m!5443777))

(declare-fun m!5443783 () Bool)

(assert (=> b!4612488 m!5443783))

(declare-fun m!5443785 () Bool)

(assert (=> b!4612486 m!5443785))

(declare-fun m!5443787 () Bool)

(assert (=> b!4612486 m!5443787))

(declare-fun m!5443789 () Bool)

(assert (=> start!461344 m!5443789))

(declare-fun m!5443791 () Bool)

(assert (=> b!4612484 m!5443791))

(declare-fun m!5443793 () Bool)

(assert (=> b!4612476 m!5443793))

(declare-fun m!5443795 () Bool)

(assert (=> b!4612476 m!5443795))

(declare-fun m!5443797 () Bool)

(assert (=> b!4612482 m!5443797))

(declare-fun m!5443799 () Bool)

(assert (=> b!4612478 m!5443799))

(declare-fun m!5443801 () Bool)

(assert (=> b!4612479 m!5443801))

(declare-fun m!5443803 () Bool)

(assert (=> b!4612479 m!5443803))

(check-sat (not b!4612477) (not b!4612483) (not b!4612476) (not b!4612478) (not b!4612485) (not b!4612482) (not b!4612479) (not b!4612488) (not b!4612480) (not b!4612484) tp_is_empty!28943 tp_is_empty!28941 (not start!461344) (not b!4612481) (not b!4612486) (not b!4612475))
(check-sat)
