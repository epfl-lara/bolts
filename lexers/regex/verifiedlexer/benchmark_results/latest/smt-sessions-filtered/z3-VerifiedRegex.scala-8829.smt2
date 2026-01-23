; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471992 () Bool)

(assert start!471992)

(declare-fun b!4676100 () Bool)

(declare-fun res!1969459 () Bool)

(declare-fun e!2917687 () Bool)

(assert (=> b!4676100 (=> (not res!1969459) (not e!2917687))))

(declare-datatypes ((K!13550 0))(
  ( (K!13551 (val!19111 Int)) )
))
(declare-datatypes ((V!13796 0))(
  ( (V!13797 (val!19112 Int)) )
))
(declare-datatypes ((tuple2!53434 0))(
  ( (tuple2!53435 (_1!30011 K!13550) (_2!30011 V!13796)) )
))
(declare-datatypes ((List!52299 0))(
  ( (Nil!52175) (Cons!52175 (h!58374 tuple2!53434) (t!359441 List!52299)) )
))
(declare-fun oldBucket!34 () List!52299)

(declare-fun noDuplicateKeys!1760 (List!52299) Bool)

(assert (=> b!4676100 (= res!1969459 (noDuplicateKeys!1760 oldBucket!34))))

(declare-fun b!4676101 () Bool)

(declare-fun e!2917689 () Bool)

(declare-fun tp!1344609 () Bool)

(assert (=> b!4676101 (= e!2917689 tp!1344609)))

(declare-fun e!2917685 () Bool)

(declare-fun b!4676102 () Bool)

(declare-fun tp!1344611 () Bool)

(declare-fun tp_is_empty!30333 () Bool)

(declare-fun tp_is_empty!30335 () Bool)

(assert (=> b!4676102 (= e!2917685 (and tp_is_empty!30333 tp_is_empty!30335 tp!1344611))))

(declare-fun b!4676103 () Bool)

(declare-fun res!1969457 () Bool)

(declare-fun e!2917686 () Bool)

(assert (=> b!4676103 (=> (not res!1969457) (not e!2917686))))

(declare-datatypes ((tuple2!53436 0))(
  ( (tuple2!53437 (_1!30012 (_ BitVec 64)) (_2!30012 List!52299)) )
))
(declare-datatypes ((List!52300 0))(
  ( (Nil!52176) (Cons!52176 (h!58375 tuple2!53436) (t!359442 List!52300)) )
))
(declare-datatypes ((ListLongMap!3939 0))(
  ( (ListLongMap!3940 (toList!5409 List!52300)) )
))
(declare-fun lm!2023 () ListLongMap!3939)

(get-info :version)

(assert (=> b!4676103 (= res!1969457 ((_ is Cons!52176) (toList!5409 lm!2023)))))

(declare-fun b!4676105 () Bool)

(declare-fun res!1969451 () Bool)

(assert (=> b!4676105 (=> (not res!1969451) (not e!2917686))))

(declare-fun key!4653 () K!13550)

(declare-datatypes ((Hashable!6129 0))(
  ( (HashableExt!6128 (__x!31832 Int)) )
))
(declare-fun hashF!1323 () Hashable!6129)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun hash!3926 (Hashable!6129 K!13550) (_ BitVec 64))

(assert (=> b!4676105 (= res!1969451 (= (hash!3926 hashF!1323 key!4653) hash!405))))

(declare-fun b!4676106 () Bool)

(declare-fun res!1969447 () Bool)

(assert (=> b!4676106 (=> (not res!1969447) (not e!2917687))))

(declare-fun newBucket!218 () List!52299)

(assert (=> b!4676106 (= res!1969447 (noDuplicateKeys!1760 newBucket!218))))

(declare-fun b!4676107 () Bool)

(assert (=> b!4676107 (= e!2917687 e!2917686)))

(declare-fun res!1969455 () Bool)

(assert (=> b!4676107 (=> (not res!1969455) (not e!2917686))))

(declare-datatypes ((ListMap!4773 0))(
  ( (ListMap!4774 (toList!5410 List!52299)) )
))
(declare-fun lt!1836121 () ListMap!4773)

(declare-fun contains!15324 (ListMap!4773 K!13550) Bool)

(assert (=> b!4676107 (= res!1969455 (contains!15324 lt!1836121 key!4653))))

(declare-fun extractMap!1786 (List!52300) ListMap!4773)

(assert (=> b!4676107 (= lt!1836121 (extractMap!1786 (toList!5409 lm!2023)))))

(declare-fun b!4676108 () Bool)

(declare-fun res!1969453 () Bool)

(assert (=> b!4676108 (=> (not res!1969453) (not e!2917687))))

(declare-fun allKeysSameHash!1586 (List!52299 (_ BitVec 64) Hashable!6129) Bool)

(assert (=> b!4676108 (= res!1969453 (allKeysSameHash!1586 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4676109 () Bool)

(declare-fun e!2917684 () Bool)

(declare-fun e!2917690 () Bool)

(assert (=> b!4676109 (= e!2917684 e!2917690)))

(declare-fun res!1969461 () Bool)

(assert (=> b!4676109 (=> res!1969461 e!2917690)))

(declare-fun lt!1836122 () List!52299)

(assert (=> b!4676109 (= res!1969461 (not (= lt!1836122 newBucket!218)))))

(declare-fun tail!8366 (List!52299) List!52299)

(assert (=> b!4676109 (= lt!1836122 (tail!8366 oldBucket!34))))

(declare-fun b!4676110 () Bool)

(declare-fun e!2917688 () Bool)

(assert (=> b!4676110 (= e!2917690 e!2917688)))

(declare-fun res!1969454 () Bool)

(assert (=> b!4676110 (=> res!1969454 e!2917688)))

(declare-fun lt!1836124 () ListMap!4773)

(declare-fun lt!1836126 () ListMap!4773)

(declare-fun addToMapMapFromBucket!1192 (List!52299 ListMap!4773) ListMap!4773)

(assert (=> b!4676110 (= res!1969454 (not (= lt!1836124 (addToMapMapFromBucket!1192 newBucket!218 lt!1836126))))))

(assert (=> b!4676110 (= lt!1836124 (addToMapMapFromBucket!1192 lt!1836122 lt!1836126))))

(declare-fun b!4676111 () Bool)

(declare-fun res!1969458 () Bool)

(assert (=> b!4676111 (=> (not res!1969458) (not e!2917686))))

(declare-fun allKeysSameHashInMap!1674 (ListLongMap!3939 Hashable!6129) Bool)

(assert (=> b!4676111 (= res!1969458 (allKeysSameHashInMap!1674 lm!2023 hashF!1323))))

(declare-fun b!4676112 () Bool)

(declare-fun res!1969460 () Bool)

(assert (=> b!4676112 (=> (not res!1969460) (not e!2917687))))

(declare-fun removePairForKey!1355 (List!52299 K!13550) List!52299)

(assert (=> b!4676112 (= res!1969460 (= (removePairForKey!1355 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4676113 () Bool)

(assert (=> b!4676113 (= e!2917686 (not e!2917684))))

(declare-fun res!1969448 () Bool)

(assert (=> b!4676113 (=> res!1969448 e!2917684)))

(assert (=> b!4676113 (= res!1969448 (or (not ((_ is Cons!52175) oldBucket!34)) (not (= (_1!30011 (h!58374 oldBucket!34)) key!4653))))))

(assert (=> b!4676113 (= lt!1836121 (addToMapMapFromBucket!1192 (_2!30012 (h!58375 (toList!5409 lm!2023))) lt!1836126))))

(assert (=> b!4676113 (= lt!1836126 (extractMap!1786 (t!359442 (toList!5409 lm!2023))))))

(declare-fun tail!8367 (ListLongMap!3939) ListLongMap!3939)

(assert (=> b!4676113 (= (t!359442 (toList!5409 lm!2023)) (toList!5409 (tail!8367 lm!2023)))))

(declare-fun b!4676114 () Bool)

(declare-fun res!1969456 () Bool)

(assert (=> b!4676114 (=> res!1969456 e!2917690)))

(assert (=> b!4676114 (= res!1969456 (not (= (extractMap!1786 (Cons!52176 (tuple2!53437 hash!405 lt!1836122) (t!359442 (toList!5409 lm!2023)))) (extractMap!1786 (Cons!52176 (tuple2!53437 hash!405 newBucket!218) (t!359442 (toList!5409 lm!2023)))))))))

(declare-fun b!4676115 () Bool)

(declare-fun res!1969452 () Bool)

(assert (=> b!4676115 (=> (not res!1969452) (not e!2917686))))

(assert (=> b!4676115 (= res!1969452 (allKeysSameHash!1586 newBucket!218 hash!405 hashF!1323))))

(declare-fun e!2917683 () Bool)

(declare-fun tp!1344610 () Bool)

(declare-fun b!4676104 () Bool)

(assert (=> b!4676104 (= e!2917683 (and tp_is_empty!30333 tp_is_empty!30335 tp!1344610))))

(declare-fun res!1969450 () Bool)

(assert (=> start!471992 (=> (not res!1969450) (not e!2917687))))

(declare-fun lambda!203685 () Int)

(declare-fun forall!11181 (List!52300 Int) Bool)

(assert (=> start!471992 (= res!1969450 (forall!11181 (toList!5409 lm!2023) lambda!203685))))

(assert (=> start!471992 e!2917687))

(declare-fun inv!67424 (ListLongMap!3939) Bool)

(assert (=> start!471992 (and (inv!67424 lm!2023) e!2917689)))

(assert (=> start!471992 tp_is_empty!30333))

(assert (=> start!471992 e!2917685))

(assert (=> start!471992 true))

(assert (=> start!471992 e!2917683))

(declare-fun b!4676116 () Bool)

(declare-fun res!1969449 () Bool)

(assert (=> b!4676116 (=> (not res!1969449) (not e!2917686))))

(declare-fun head!9811 (List!52300) tuple2!53436)

(assert (=> b!4676116 (= res!1969449 (= (head!9811 (toList!5409 lm!2023)) (tuple2!53437 hash!405 oldBucket!34)))))

(declare-fun b!4676117 () Bool)

(assert (=> b!4676117 (= e!2917688 true)))

(declare-fun lt!1836125 () ListMap!4773)

(declare-fun +!2062 (ListMap!4773 tuple2!53434) ListMap!4773)

(assert (=> b!4676117 (= lt!1836125 (+!2062 lt!1836124 (h!58374 oldBucket!34)))))

(declare-fun lt!1836123 () tuple2!53434)

(declare-fun eq!949 (ListMap!4773 ListMap!4773) Bool)

(assert (=> b!4676117 (eq!949 (addToMapMapFromBucket!1192 (Cons!52175 lt!1836123 lt!1836122) lt!1836126) (+!2062 lt!1836124 lt!1836123))))

(declare-datatypes ((Unit!121713 0))(
  ( (Unit!121714) )
))
(declare-fun lt!1836120 () Unit!121713)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!198 (tuple2!53434 List!52299 ListMap!4773) Unit!121713)

(assert (=> b!4676117 (= lt!1836120 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!198 lt!1836123 lt!1836122 lt!1836126))))

(declare-fun head!9812 (List!52299) tuple2!53434)

(assert (=> b!4676117 (= lt!1836123 (head!9812 oldBucket!34))))

(assert (= (and start!471992 res!1969450) b!4676100))

(assert (= (and b!4676100 res!1969459) b!4676106))

(assert (= (and b!4676106 res!1969447) b!4676112))

(assert (= (and b!4676112 res!1969460) b!4676108))

(assert (= (and b!4676108 res!1969453) b!4676107))

(assert (= (and b!4676107 res!1969455) b!4676105))

(assert (= (and b!4676105 res!1969451) b!4676115))

(assert (= (and b!4676115 res!1969452) b!4676111))

(assert (= (and b!4676111 res!1969458) b!4676116))

(assert (= (and b!4676116 res!1969449) b!4676103))

(assert (= (and b!4676103 res!1969457) b!4676113))

(assert (= (and b!4676113 (not res!1969448)) b!4676109))

(assert (= (and b!4676109 (not res!1969461)) b!4676114))

(assert (= (and b!4676114 (not res!1969456)) b!4676110))

(assert (= (and b!4676110 (not res!1969454)) b!4676117))

(assert (= start!471992 b!4676101))

(assert (= (and start!471992 ((_ is Cons!52175) oldBucket!34)) b!4676102))

(assert (= (and start!471992 ((_ is Cons!52175) newBucket!218)) b!4676104))

(declare-fun m!5569997 () Bool)

(assert (=> b!4676105 m!5569997))

(declare-fun m!5569999 () Bool)

(assert (=> b!4676109 m!5569999))

(declare-fun m!5570001 () Bool)

(assert (=> b!4676117 m!5570001))

(declare-fun m!5570003 () Bool)

(assert (=> b!4676117 m!5570003))

(declare-fun m!5570005 () Bool)

(assert (=> b!4676117 m!5570005))

(declare-fun m!5570007 () Bool)

(assert (=> b!4676117 m!5570007))

(declare-fun m!5570009 () Bool)

(assert (=> b!4676117 m!5570009))

(assert (=> b!4676117 m!5570009))

(assert (=> b!4676117 m!5570003))

(declare-fun m!5570011 () Bool)

(assert (=> b!4676117 m!5570011))

(declare-fun m!5570013 () Bool)

(assert (=> b!4676106 m!5570013))

(declare-fun m!5570015 () Bool)

(assert (=> b!4676110 m!5570015))

(declare-fun m!5570017 () Bool)

(assert (=> b!4676110 m!5570017))

(declare-fun m!5570019 () Bool)

(assert (=> b!4676116 m!5570019))

(declare-fun m!5570021 () Bool)

(assert (=> b!4676113 m!5570021))

(declare-fun m!5570023 () Bool)

(assert (=> b!4676113 m!5570023))

(declare-fun m!5570025 () Bool)

(assert (=> b!4676113 m!5570025))

(declare-fun m!5570027 () Bool)

(assert (=> b!4676100 m!5570027))

(declare-fun m!5570029 () Bool)

(assert (=> start!471992 m!5570029))

(declare-fun m!5570031 () Bool)

(assert (=> start!471992 m!5570031))

(declare-fun m!5570033 () Bool)

(assert (=> b!4676111 m!5570033))

(declare-fun m!5570035 () Bool)

(assert (=> b!4676114 m!5570035))

(declare-fun m!5570037 () Bool)

(assert (=> b!4676114 m!5570037))

(declare-fun m!5570039 () Bool)

(assert (=> b!4676108 m!5570039))

(declare-fun m!5570041 () Bool)

(assert (=> b!4676115 m!5570041))

(declare-fun m!5570043 () Bool)

(assert (=> b!4676112 m!5570043))

(declare-fun m!5570045 () Bool)

(assert (=> b!4676107 m!5570045))

(declare-fun m!5570047 () Bool)

(assert (=> b!4676107 m!5570047))

(check-sat (not b!4676117) (not start!471992) (not b!4676114) (not b!4676108) (not b!4676109) (not b!4676107) (not b!4676104) (not b!4676101) tp_is_empty!30335 (not b!4676105) (not b!4676106) (not b!4676112) (not b!4676100) (not b!4676113) (not b!4676116) tp_is_empty!30333 (not b!4676110) (not b!4676102) (not b!4676111) (not b!4676115))
(check-sat)
