; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471708 () Bool)

(assert start!471708)

(declare-fun b!4673996 () Bool)

(declare-fun res!1968120 () Bool)

(declare-fun e!2916617 () Bool)

(assert (=> b!4673996 (=> (not res!1968120) (not e!2916617))))

(declare-datatypes ((K!13495 0))(
  ( (K!13496 (val!19067 Int)) )
))
(declare-datatypes ((V!13741 0))(
  ( (V!13742 (val!19068 Int)) )
))
(declare-datatypes ((tuple2!53346 0))(
  ( (tuple2!53347 (_1!29967 K!13495) (_2!29967 V!13741)) )
))
(declare-datatypes ((List!52247 0))(
  ( (Nil!52123) (Cons!52123 (h!58314 tuple2!53346) (t!359385 List!52247)) )
))
(declare-datatypes ((tuple2!53348 0))(
  ( (tuple2!53349 (_1!29968 (_ BitVec 64)) (_2!29968 List!52247)) )
))
(declare-datatypes ((List!52248 0))(
  ( (Nil!52124) (Cons!52124 (h!58315 tuple2!53348) (t!359386 List!52248)) )
))
(declare-datatypes ((ListLongMap!3895 0))(
  ( (ListLongMap!3896 (toList!5365 List!52248)) )
))
(declare-fun lm!2023 () ListLongMap!3895)

(declare-fun oldBucket!34 () List!52247)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!9778 (List!52248) tuple2!53348)

(assert (=> b!4673996 (= res!1968120 (= (head!9778 (toList!5365 lm!2023)) (tuple2!53349 hash!405 oldBucket!34)))))

(declare-fun res!1968111 () Bool)

(declare-fun e!2916619 () Bool)

(assert (=> start!471708 (=> (not res!1968111) (not e!2916619))))

(declare-fun lambda!203179 () Int)

(declare-fun forall!11151 (List!52248 Int) Bool)

(assert (=> start!471708 (= res!1968111 (forall!11151 (toList!5365 lm!2023) lambda!203179))))

(assert (=> start!471708 e!2916619))

(declare-fun e!2916615 () Bool)

(declare-fun inv!67369 (ListLongMap!3895) Bool)

(assert (=> start!471708 (and (inv!67369 lm!2023) e!2916615)))

(declare-fun tp_is_empty!30245 () Bool)

(assert (=> start!471708 tp_is_empty!30245))

(declare-fun e!2916622 () Bool)

(assert (=> start!471708 e!2916622))

(assert (=> start!471708 true))

(declare-fun e!2916616 () Bool)

(assert (=> start!471708 e!2916616))

(declare-fun b!4673997 () Bool)

(declare-fun e!2916620 () Bool)

(assert (=> b!4673997 (= e!2916620 (not (= oldBucket!34 Nil!52123)))))

(declare-fun b!4673998 () Bool)

(declare-fun e!2916621 () Bool)

(declare-datatypes ((ListMap!4729 0))(
  ( (ListMap!4730 (toList!5366 List!52247)) )
))
(declare-fun lt!1834654 () ListMap!4729)

(declare-fun addToMapMapFromBucket!1170 (List!52247 ListMap!4729) ListMap!4729)

(declare-fun extractMap!1764 (List!52248) ListMap!4729)

(assert (=> b!4673998 (= e!2916621 (= lt!1834654 (addToMapMapFromBucket!1170 (_2!29968 (h!58315 (toList!5365 lm!2023))) (extractMap!1764 (t!359386 (toList!5365 lm!2023))))))))

(declare-fun b!4673999 () Bool)

(declare-fun res!1968123 () Bool)

(assert (=> b!4673999 (=> (not res!1968123) (not e!2916617))))

(get-info :version)

(assert (=> b!4673999 (= res!1968123 ((_ is Cons!52124) (toList!5365 lm!2023)))))

(declare-fun b!4674000 () Bool)

(declare-fun res!1968115 () Bool)

(assert (=> b!4674000 (=> (not res!1968115) (not e!2916619))))

(declare-fun newBucket!218 () List!52247)

(declare-fun key!4653 () K!13495)

(declare-fun removePairForKey!1333 (List!52247 K!13495) List!52247)

(assert (=> b!4674000 (= res!1968115 (= (removePairForKey!1333 oldBucket!34 key!4653) newBucket!218))))

(declare-fun tp!1344331 () Bool)

(declare-fun b!4674001 () Bool)

(declare-fun tp_is_empty!30247 () Bool)

(assert (=> b!4674001 (= e!2916622 (and tp_is_empty!30245 tp_is_empty!30247 tp!1344331))))

(declare-fun b!4674002 () Bool)

(declare-fun res!1968112 () Bool)

(assert (=> b!4674002 (=> (not res!1968112) (not e!2916617))))

(declare-datatypes ((Hashable!6107 0))(
  ( (HashableExt!6106 (__x!31810 Int)) )
))
(declare-fun hashF!1323 () Hashable!6107)

(declare-fun allKeysSameHash!1564 (List!52247 (_ BitVec 64) Hashable!6107) Bool)

(assert (=> b!4674002 (= res!1968112 (allKeysSameHash!1564 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4674003 () Bool)

(declare-fun e!2916618 () Bool)

(assert (=> b!4674003 (= e!2916617 (not e!2916618))))

(declare-fun res!1968113 () Bool)

(assert (=> b!4674003 (=> res!1968113 e!2916618)))

(assert (=> b!4674003 (= res!1968113 (or (not ((_ is Cons!52123) oldBucket!34)) (not (= (_1!29967 (h!58314 oldBucket!34)) key!4653))))))

(assert (=> b!4674003 e!2916621))

(declare-fun res!1968122 () Bool)

(assert (=> b!4674003 (=> (not res!1968122) (not e!2916621))))

(declare-fun tail!8314 (ListLongMap!3895) ListLongMap!3895)

(assert (=> b!4674003 (= res!1968122 (= (t!359386 (toList!5365 lm!2023)) (toList!5365 (tail!8314 lm!2023))))))

(declare-fun b!4674004 () Bool)

(declare-fun res!1968118 () Bool)

(assert (=> b!4674004 (=> (not res!1968118) (not e!2916617))))

(declare-fun allKeysSameHashInMap!1652 (ListLongMap!3895 Hashable!6107) Bool)

(assert (=> b!4674004 (= res!1968118 (allKeysSameHashInMap!1652 lm!2023 hashF!1323))))

(declare-fun b!4674005 () Bool)

(assert (=> b!4674005 (= e!2916619 e!2916617)))

(declare-fun res!1968109 () Bool)

(assert (=> b!4674005 (=> (not res!1968109) (not e!2916617))))

(declare-fun contains!15290 (ListMap!4729 K!13495) Bool)

(assert (=> b!4674005 (= res!1968109 (contains!15290 lt!1834654 key!4653))))

(assert (=> b!4674005 (= lt!1834654 (extractMap!1764 (toList!5365 lm!2023)))))

(declare-fun tp!1344333 () Bool)

(declare-fun b!4674006 () Bool)

(assert (=> b!4674006 (= e!2916616 (and tp_is_empty!30245 tp_is_empty!30247 tp!1344333))))

(declare-fun b!4674007 () Bool)

(declare-fun res!1968114 () Bool)

(assert (=> b!4674007 (=> res!1968114 e!2916620)))

(declare-fun lt!1834653 () List!52247)

(assert (=> b!4674007 (= res!1968114 (not (= (extractMap!1764 (Cons!52124 (tuple2!53349 hash!405 lt!1834653) (t!359386 (toList!5365 lm!2023)))) (extractMap!1764 (Cons!52124 (tuple2!53349 hash!405 newBucket!218) (t!359386 (toList!5365 lm!2023)))))))))

(declare-fun b!4674008 () Bool)

(assert (=> b!4674008 (= e!2916618 e!2916620)))

(declare-fun res!1968119 () Bool)

(assert (=> b!4674008 (=> res!1968119 e!2916620)))

(assert (=> b!4674008 (= res!1968119 (not (= lt!1834653 newBucket!218)))))

(declare-fun tail!8315 (List!52247) List!52247)

(assert (=> b!4674008 (= lt!1834653 (tail!8315 oldBucket!34))))

(declare-fun b!4674009 () Bool)

(declare-fun res!1968117 () Bool)

(assert (=> b!4674009 (=> (not res!1968117) (not e!2916619))))

(declare-fun noDuplicateKeys!1738 (List!52247) Bool)

(assert (=> b!4674009 (= res!1968117 (noDuplicateKeys!1738 newBucket!218))))

(declare-fun b!4674010 () Bool)

(declare-fun res!1968116 () Bool)

(assert (=> b!4674010 (=> (not res!1968116) (not e!2916619))))

(assert (=> b!4674010 (= res!1968116 (allKeysSameHash!1564 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4674011 () Bool)

(declare-fun res!1968121 () Bool)

(assert (=> b!4674011 (=> (not res!1968121) (not e!2916617))))

(declare-fun hash!3896 (Hashable!6107 K!13495) (_ BitVec 64))

(assert (=> b!4674011 (= res!1968121 (= (hash!3896 hashF!1323 key!4653) hash!405))))

(declare-fun b!4674012 () Bool)

(declare-fun res!1968110 () Bool)

(assert (=> b!4674012 (=> (not res!1968110) (not e!2916619))))

(assert (=> b!4674012 (= res!1968110 (noDuplicateKeys!1738 oldBucket!34))))

(declare-fun b!4674013 () Bool)

(declare-fun tp!1344332 () Bool)

(assert (=> b!4674013 (= e!2916615 tp!1344332)))

(assert (= (and start!471708 res!1968111) b!4674012))

(assert (= (and b!4674012 res!1968110) b!4674009))

(assert (= (and b!4674009 res!1968117) b!4674000))

(assert (= (and b!4674000 res!1968115) b!4674010))

(assert (= (and b!4674010 res!1968116) b!4674005))

(assert (= (and b!4674005 res!1968109) b!4674011))

(assert (= (and b!4674011 res!1968121) b!4674002))

(assert (= (and b!4674002 res!1968112) b!4674004))

(assert (= (and b!4674004 res!1968118) b!4673996))

(assert (= (and b!4673996 res!1968120) b!4673999))

(assert (= (and b!4673999 res!1968123) b!4674003))

(assert (= (and b!4674003 res!1968122) b!4673998))

(assert (= (and b!4674003 (not res!1968113)) b!4674008))

(assert (= (and b!4674008 (not res!1968119)) b!4674007))

(assert (= (and b!4674007 (not res!1968114)) b!4673997))

(assert (= start!471708 b!4674013))

(assert (= (and start!471708 ((_ is Cons!52123) oldBucket!34)) b!4674001))

(assert (= (and start!471708 ((_ is Cons!52123) newBucket!218)) b!4674006))

(declare-fun m!5567451 () Bool)

(assert (=> b!4674002 m!5567451))

(declare-fun m!5567453 () Bool)

(assert (=> b!4673998 m!5567453))

(assert (=> b!4673998 m!5567453))

(declare-fun m!5567455 () Bool)

(assert (=> b!4673998 m!5567455))

(declare-fun m!5567457 () Bool)

(assert (=> b!4674005 m!5567457))

(declare-fun m!5567459 () Bool)

(assert (=> b!4674005 m!5567459))

(declare-fun m!5567461 () Bool)

(assert (=> b!4674012 m!5567461))

(declare-fun m!5567463 () Bool)

(assert (=> b!4674008 m!5567463))

(declare-fun m!5567465 () Bool)

(assert (=> b!4674000 m!5567465))

(declare-fun m!5567467 () Bool)

(assert (=> b!4674011 m!5567467))

(declare-fun m!5567469 () Bool)

(assert (=> b!4674009 m!5567469))

(declare-fun m!5567471 () Bool)

(assert (=> b!4674003 m!5567471))

(declare-fun m!5567473 () Bool)

(assert (=> start!471708 m!5567473))

(declare-fun m!5567475 () Bool)

(assert (=> start!471708 m!5567475))

(declare-fun m!5567477 () Bool)

(assert (=> b!4674010 m!5567477))

(declare-fun m!5567479 () Bool)

(assert (=> b!4674004 m!5567479))

(declare-fun m!5567481 () Bool)

(assert (=> b!4673996 m!5567481))

(declare-fun m!5567483 () Bool)

(assert (=> b!4674007 m!5567483))

(declare-fun m!5567485 () Bool)

(assert (=> b!4674007 m!5567485))

(check-sat (not b!4674005) (not b!4674006) (not b!4674009) (not b!4673996) (not b!4674000) (not b!4674010) (not b!4674007) (not b!4674002) (not start!471708) (not b!4674011) (not b!4674013) (not b!4674003) tp_is_empty!30245 (not b!4673998) (not b!4674012) (not b!4674004) tp_is_empty!30247 (not b!4674008) (not b!4674001))
(check-sat)
