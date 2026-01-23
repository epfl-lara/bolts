; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!472172 () Bool)

(assert start!472172)

(declare-fun b!4677777 () Bool)

(declare-fun res!1970667 () Bool)

(declare-fun e!2918560 () Bool)

(assert (=> b!4677777 (=> res!1970667 e!2918560)))

(declare-datatypes ((K!13595 0))(
  ( (K!13596 (val!19147 Int)) )
))
(declare-datatypes ((V!13841 0))(
  ( (V!13842 (val!19148 Int)) )
))
(declare-datatypes ((tuple2!53506 0))(
  ( (tuple2!53507 (_1!30047 K!13595) (_2!30047 V!13841)) )
))
(declare-datatypes ((List!52339 0))(
  ( (Nil!52215) (Cons!52215 (h!58418 tuple2!53506) (t!359485 List!52339)) )
))
(declare-datatypes ((ListMap!4809 0))(
  ( (ListMap!4810 (toList!5445 List!52339)) )
))
(declare-fun lt!1837324 () ListMap!4809)

(declare-fun lt!1837321 () ListMap!4809)

(assert (=> b!4677777 (= res!1970667 (not (= lt!1837324 lt!1837321)))))

(declare-fun b!4677778 () Bool)

(declare-fun res!1970674 () Bool)

(declare-fun e!2918565 () Bool)

(assert (=> b!4677778 (=> (not res!1970674) (not e!2918565))))

(declare-fun key!4653 () K!13595)

(declare-fun newBucket!218 () List!52339)

(declare-fun oldBucket!34 () List!52339)

(declare-fun removePairForKey!1373 (List!52339 K!13595) List!52339)

(assert (=> b!4677778 (= res!1970674 (= (removePairForKey!1373 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4677779 () Bool)

(declare-fun res!1970677 () Bool)

(assert (=> b!4677779 (=> res!1970677 e!2918560)))

(declare-fun lt!1837329 () List!52339)

(declare-fun containsKey!2915 (List!52339 K!13595) Bool)

(assert (=> b!4677779 (= res!1970677 (containsKey!2915 lt!1837329 key!4653))))

(declare-fun b!4677780 () Bool)

(declare-fun e!2918557 () Bool)

(declare-fun tp!1344813 () Bool)

(assert (=> b!4677780 (= e!2918557 tp!1344813)))

(declare-fun b!4677781 () Bool)

(declare-fun tp!1344812 () Bool)

(declare-fun e!2918566 () Bool)

(declare-fun tp_is_empty!30407 () Bool)

(declare-fun tp_is_empty!30405 () Bool)

(assert (=> b!4677781 (= e!2918566 (and tp_is_empty!30405 tp_is_empty!30407 tp!1344812))))

(declare-fun b!4677782 () Bool)

(declare-fun e!2918562 () Bool)

(assert (=> b!4677782 (= e!2918565 e!2918562)))

(declare-fun res!1970663 () Bool)

(assert (=> b!4677782 (=> (not res!1970663) (not e!2918562))))

(declare-fun lt!1837327 () ListMap!4809)

(declare-fun contains!15354 (ListMap!4809 K!13595) Bool)

(assert (=> b!4677782 (= res!1970663 (contains!15354 lt!1837327 key!4653))))

(declare-datatypes ((tuple2!53508 0))(
  ( (tuple2!53509 (_1!30048 (_ BitVec 64)) (_2!30048 List!52339)) )
))
(declare-datatypes ((List!52340 0))(
  ( (Nil!52216) (Cons!52216 (h!58419 tuple2!53508) (t!359486 List!52340)) )
))
(declare-datatypes ((ListLongMap!3975 0))(
  ( (ListLongMap!3976 (toList!5446 List!52340)) )
))
(declare-fun lm!2023 () ListLongMap!3975)

(declare-fun extractMap!1804 (List!52340) ListMap!4809)

(assert (=> b!4677782 (= lt!1837327 (extractMap!1804 (toList!5446 lm!2023)))))

(declare-fun b!4677783 () Bool)

(declare-fun res!1970672 () Bool)

(assert (=> b!4677783 (=> (not res!1970672) (not e!2918562))))

(get-info :version)

(assert (=> b!4677783 (= res!1970672 ((_ is Cons!52216) (toList!5446 lm!2023)))))

(declare-fun b!4677784 () Bool)

(declare-fun res!1970678 () Bool)

(assert (=> b!4677784 (=> (not res!1970678) (not e!2918565))))

(declare-fun noDuplicateKeys!1778 (List!52339) Bool)

(assert (=> b!4677784 (= res!1970678 (noDuplicateKeys!1778 oldBucket!34))))

(declare-fun b!4677785 () Bool)

(declare-fun e!2918559 () Bool)

(assert (=> b!4677785 (= e!2918559 e!2918560)))

(declare-fun res!1970673 () Bool)

(assert (=> b!4677785 (=> res!1970673 e!2918560)))

(declare-fun lt!1837322 () ListMap!4809)

(declare-fun eq!967 (ListMap!4809 ListMap!4809) Bool)

(declare-fun +!2080 (ListMap!4809 tuple2!53506) ListMap!4809)

(declare-fun addToMapMapFromBucket!1210 (List!52339 ListMap!4809) ListMap!4809)

(assert (=> b!4677785 (= res!1970673 (not (eq!967 (+!2080 lt!1837324 (h!58418 oldBucket!34)) (addToMapMapFromBucket!1210 oldBucket!34 lt!1837322))))))

(declare-fun lt!1837325 () tuple2!53506)

(assert (=> b!4677785 (eq!967 (addToMapMapFromBucket!1210 (Cons!52215 lt!1837325 lt!1837329) lt!1837322) (+!2080 lt!1837324 lt!1837325))))

(declare-datatypes ((Unit!121977 0))(
  ( (Unit!121978) )
))
(declare-fun lt!1837323 () Unit!121977)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!216 (tuple2!53506 List!52339 ListMap!4809) Unit!121977)

(assert (=> b!4677785 (= lt!1837323 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!216 lt!1837325 lt!1837329 lt!1837322))))

(declare-fun head!9847 (List!52339) tuple2!53506)

(assert (=> b!4677785 (= lt!1837325 (head!9847 oldBucket!34))))

(declare-fun b!4677786 () Bool)

(declare-fun e!2918564 () Bool)

(assert (=> b!4677786 (= e!2918564 e!2918559)))

(declare-fun res!1970679 () Bool)

(assert (=> b!4677786 (=> res!1970679 e!2918559)))

(assert (=> b!4677786 (= res!1970679 (not (= lt!1837324 (addToMapMapFromBucket!1210 newBucket!218 lt!1837322))))))

(assert (=> b!4677786 (= lt!1837324 (addToMapMapFromBucket!1210 lt!1837329 lt!1837322))))

(declare-fun e!2918558 () Bool)

(declare-fun b!4677787 () Bool)

(declare-fun tp!1344811 () Bool)

(assert (=> b!4677787 (= e!2918558 (and tp_is_empty!30405 tp_is_empty!30407 tp!1344811))))

(declare-fun b!4677788 () Bool)

(declare-fun e!2918563 () Bool)

(assert (=> b!4677788 (= e!2918563 e!2918564)))

(declare-fun res!1970669 () Bool)

(assert (=> b!4677788 (=> res!1970669 e!2918564)))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4677788 (= res!1970669 (not (= lt!1837321 (extractMap!1804 (Cons!52216 (tuple2!53509 hash!405 newBucket!218) (t!359486 (toList!5446 lm!2023)))))))))

(declare-fun lt!1837330 () List!52340)

(assert (=> b!4677788 (= lt!1837321 (extractMap!1804 lt!1837330))))

(assert (=> b!4677788 (= lt!1837330 (Cons!52216 (tuple2!53509 hash!405 lt!1837329) (t!359486 (toList!5446 lm!2023))))))

(declare-fun b!4677789 () Bool)

(declare-fun e!2918561 () Bool)

(assert (=> b!4677789 (= e!2918561 e!2918563)))

(declare-fun res!1970664 () Bool)

(assert (=> b!4677789 (=> res!1970664 e!2918563)))

(assert (=> b!4677789 (= res!1970664 (not (= lt!1837329 newBucket!218)))))

(declare-fun tail!8406 (List!52339) List!52339)

(assert (=> b!4677789 (= lt!1837329 (tail!8406 oldBucket!34))))

(declare-fun b!4677790 () Bool)

(declare-fun res!1970671 () Bool)

(assert (=> b!4677790 (=> (not res!1970671) (not e!2918562))))

(declare-datatypes ((Hashable!6147 0))(
  ( (HashableExt!6146 (__x!31850 Int)) )
))
(declare-fun hashF!1323 () Hashable!6147)

(declare-fun hash!3948 (Hashable!6147 K!13595) (_ BitVec 64))

(assert (=> b!4677790 (= res!1970671 (= (hash!3948 hashF!1323 key!4653) hash!405))))

(declare-fun b!4677791 () Bool)

(assert (=> b!4677791 (= e!2918562 (not e!2918561))))

(declare-fun res!1970665 () Bool)

(assert (=> b!4677791 (=> res!1970665 e!2918561)))

(assert (=> b!4677791 (= res!1970665 (or (not ((_ is Cons!52215) oldBucket!34)) (not (= (_1!30047 (h!58418 oldBucket!34)) key!4653))))))

(assert (=> b!4677791 (= lt!1837327 (addToMapMapFromBucket!1210 (_2!30048 (h!58419 (toList!5446 lm!2023))) lt!1837322))))

(assert (=> b!4677791 (= lt!1837322 (extractMap!1804 (t!359486 (toList!5446 lm!2023))))))

(declare-fun tail!8407 (ListLongMap!3975) ListLongMap!3975)

(assert (=> b!4677791 (= (t!359486 (toList!5446 lm!2023)) (toList!5446 (tail!8407 lm!2023)))))

(declare-fun b!4677792 () Bool)

(declare-fun res!1970675 () Bool)

(assert (=> b!4677792 (=> (not res!1970675) (not e!2918565))))

(assert (=> b!4677792 (= res!1970675 (noDuplicateKeys!1778 newBucket!218))))

(declare-fun b!4677793 () Bool)

(declare-fun res!1970668 () Bool)

(assert (=> b!4677793 (=> (not res!1970668) (not e!2918562))))

(declare-fun allKeysSameHashInMap!1692 (ListLongMap!3975 Hashable!6147) Bool)

(assert (=> b!4677793 (= res!1970668 (allKeysSameHashInMap!1692 lm!2023 hashF!1323))))

(declare-fun b!4677794 () Bool)

(declare-fun res!1970670 () Bool)

(assert (=> b!4677794 (=> (not res!1970670) (not e!2918562))))

(declare-fun allKeysSameHash!1604 (List!52339 (_ BitVec 64) Hashable!6147) Bool)

(assert (=> b!4677794 (= res!1970670 (allKeysSameHash!1604 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4677795 () Bool)

(declare-fun res!1970676 () Bool)

(assert (=> b!4677795 (=> (not res!1970676) (not e!2918565))))

(assert (=> b!4677795 (= res!1970676 (allKeysSameHash!1604 oldBucket!34 hash!405 hashF!1323))))

(declare-fun res!1970662 () Bool)

(assert (=> start!472172 (=> (not res!1970662) (not e!2918565))))

(declare-fun lambda!204003 () Int)

(declare-fun forall!11203 (List!52340 Int) Bool)

(assert (=> start!472172 (= res!1970662 (forall!11203 (toList!5446 lm!2023) lambda!204003))))

(assert (=> start!472172 e!2918565))

(declare-fun inv!67469 (ListLongMap!3975) Bool)

(assert (=> start!472172 (and (inv!67469 lm!2023) e!2918557)))

(assert (=> start!472172 tp_is_empty!30405))

(assert (=> start!472172 e!2918558))

(assert (=> start!472172 true))

(assert (=> start!472172 e!2918566))

(declare-fun b!4677796 () Bool)

(assert (=> b!4677796 (= e!2918560 true)))

(declare-fun lt!1837326 () Bool)

(assert (=> b!4677796 (= lt!1837326 (contains!15354 lt!1837324 key!4653))))

(assert (=> b!4677796 (not (contains!15354 lt!1837321 key!4653))))

(declare-fun lt!1837328 () Unit!121977)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!378 (ListLongMap!3975 K!13595 Hashable!6147) Unit!121977)

(assert (=> b!4677796 (= lt!1837328 (lemmaNotInItsHashBucketThenNotInMap!378 (ListLongMap!3976 lt!1837330) key!4653 hashF!1323))))

(declare-fun b!4677797 () Bool)

(declare-fun res!1970666 () Bool)

(assert (=> b!4677797 (=> (not res!1970666) (not e!2918562))))

(declare-fun head!9848 (List!52340) tuple2!53508)

(assert (=> b!4677797 (= res!1970666 (= (head!9848 (toList!5446 lm!2023)) (tuple2!53509 hash!405 oldBucket!34)))))

(assert (= (and start!472172 res!1970662) b!4677784))

(assert (= (and b!4677784 res!1970678) b!4677792))

(assert (= (and b!4677792 res!1970675) b!4677778))

(assert (= (and b!4677778 res!1970674) b!4677795))

(assert (= (and b!4677795 res!1970676) b!4677782))

(assert (= (and b!4677782 res!1970663) b!4677790))

(assert (= (and b!4677790 res!1970671) b!4677794))

(assert (= (and b!4677794 res!1970670) b!4677793))

(assert (= (and b!4677793 res!1970668) b!4677797))

(assert (= (and b!4677797 res!1970666) b!4677783))

(assert (= (and b!4677783 res!1970672) b!4677791))

(assert (= (and b!4677791 (not res!1970665)) b!4677789))

(assert (= (and b!4677789 (not res!1970664)) b!4677788))

(assert (= (and b!4677788 (not res!1970669)) b!4677786))

(assert (= (and b!4677786 (not res!1970679)) b!4677785))

(assert (= (and b!4677785 (not res!1970673)) b!4677779))

(assert (= (and b!4677779 (not res!1970677)) b!4677777))

(assert (= (and b!4677777 (not res!1970667)) b!4677796))

(assert (= start!472172 b!4677780))

(assert (= (and start!472172 ((_ is Cons!52215) oldBucket!34)) b!4677787))

(assert (= (and start!472172 ((_ is Cons!52215) newBucket!218)) b!4677781))

(declare-fun m!5572203 () Bool)

(assert (=> b!4677784 m!5572203))

(declare-fun m!5572205 () Bool)

(assert (=> b!4677790 m!5572205))

(declare-fun m!5572207 () Bool)

(assert (=> b!4677792 m!5572207))

(declare-fun m!5572209 () Bool)

(assert (=> b!4677791 m!5572209))

(declare-fun m!5572211 () Bool)

(assert (=> b!4677791 m!5572211))

(declare-fun m!5572213 () Bool)

(assert (=> b!4677791 m!5572213))

(declare-fun m!5572215 () Bool)

(assert (=> b!4677794 m!5572215))

(declare-fun m!5572217 () Bool)

(assert (=> b!4677796 m!5572217))

(declare-fun m!5572219 () Bool)

(assert (=> b!4677796 m!5572219))

(declare-fun m!5572221 () Bool)

(assert (=> b!4677796 m!5572221))

(declare-fun m!5572223 () Bool)

(assert (=> b!4677782 m!5572223))

(declare-fun m!5572225 () Bool)

(assert (=> b!4677782 m!5572225))

(declare-fun m!5572227 () Bool)

(assert (=> b!4677797 m!5572227))

(declare-fun m!5572229 () Bool)

(assert (=> b!4677778 m!5572229))

(declare-fun m!5572231 () Bool)

(assert (=> b!4677788 m!5572231))

(declare-fun m!5572233 () Bool)

(assert (=> b!4677788 m!5572233))

(declare-fun m!5572235 () Bool)

(assert (=> start!472172 m!5572235))

(declare-fun m!5572237 () Bool)

(assert (=> start!472172 m!5572237))

(declare-fun m!5572239 () Bool)

(assert (=> b!4677786 m!5572239))

(declare-fun m!5572241 () Bool)

(assert (=> b!4677786 m!5572241))

(declare-fun m!5572243 () Bool)

(assert (=> b!4677793 m!5572243))

(declare-fun m!5572245 () Bool)

(assert (=> b!4677795 m!5572245))

(declare-fun m!5572247 () Bool)

(assert (=> b!4677789 m!5572247))

(declare-fun m!5572249 () Bool)

(assert (=> b!4677785 m!5572249))

(declare-fun m!5572251 () Bool)

(assert (=> b!4677785 m!5572251))

(declare-fun m!5572253 () Bool)

(assert (=> b!4677785 m!5572253))

(declare-fun m!5572255 () Bool)

(assert (=> b!4677785 m!5572255))

(declare-fun m!5572257 () Bool)

(assert (=> b!4677785 m!5572257))

(declare-fun m!5572259 () Bool)

(assert (=> b!4677785 m!5572259))

(assert (=> b!4677785 m!5572255))

(assert (=> b!4677785 m!5572249))

(declare-fun m!5572261 () Bool)

(assert (=> b!4677785 m!5572261))

(declare-fun m!5572263 () Bool)

(assert (=> b!4677785 m!5572263))

(assert (=> b!4677785 m!5572261))

(assert (=> b!4677785 m!5572253))

(declare-fun m!5572265 () Bool)

(assert (=> b!4677779 m!5572265))

(check-sat (not b!4677791) (not b!4677787) (not start!472172) tp_is_empty!30407 (not b!4677792) (not b!4677790) (not b!4677778) (not b!4677795) (not b!4677780) (not b!4677785) (not b!4677781) (not b!4677786) (not b!4677784) (not b!4677789) (not b!4677793) (not b!4677794) (not b!4677782) (not b!4677788) (not b!4677797) tp_is_empty!30405 (not b!4677779) (not b!4677796))
(check-sat)
