; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471916 () Bool)

(assert start!471916)

(declare-fun b!4675636 () Bool)

(declare-fun e!2917442 () Bool)

(declare-fun e!2917441 () Bool)

(assert (=> b!4675636 (= e!2917442 e!2917441)))

(declare-fun res!1969165 () Bool)

(assert (=> b!4675636 (=> res!1969165 e!2917441)))

(declare-datatypes ((K!13540 0))(
  ( (K!13541 (val!19103 Int)) )
))
(declare-datatypes ((V!13786 0))(
  ( (V!13787 (val!19104 Int)) )
))
(declare-datatypes ((tuple2!53418 0))(
  ( (tuple2!53419 (_1!30003 K!13540) (_2!30003 V!13786)) )
))
(declare-datatypes ((List!52289 0))(
  ( (Nil!52165) (Cons!52165 (h!58362 tuple2!53418) (t!359429 List!52289)) )
))
(declare-fun lt!1835684 () List!52289)

(declare-fun newBucket!218 () List!52289)

(assert (=> b!4675636 (= res!1969165 (not (= lt!1835684 newBucket!218)))))

(declare-fun oldBucket!34 () List!52289)

(declare-fun tail!8356 (List!52289) List!52289)

(assert (=> b!4675636 (= lt!1835684 (tail!8356 oldBucket!34))))

(declare-fun b!4675637 () Bool)

(declare-fun e!2917443 () Bool)

(declare-fun e!2917439 () Bool)

(assert (=> b!4675637 (= e!2917443 e!2917439)))

(declare-fun res!1969179 () Bool)

(assert (=> b!4675637 (=> (not res!1969179) (not e!2917439))))

(declare-datatypes ((ListMap!4765 0))(
  ( (ListMap!4766 (toList!5401 List!52289)) )
))
(declare-fun lt!1835683 () ListMap!4765)

(declare-fun key!4653 () K!13540)

(declare-fun contains!15316 (ListMap!4765 K!13540) Bool)

(assert (=> b!4675637 (= res!1969179 (contains!15316 lt!1835683 key!4653))))

(declare-datatypes ((tuple2!53420 0))(
  ( (tuple2!53421 (_1!30004 (_ BitVec 64)) (_2!30004 List!52289)) )
))
(declare-datatypes ((List!52290 0))(
  ( (Nil!52166) (Cons!52166 (h!58363 tuple2!53420) (t!359430 List!52290)) )
))
(declare-datatypes ((ListLongMap!3931 0))(
  ( (ListLongMap!3932 (toList!5402 List!52290)) )
))
(declare-fun lm!2023 () ListLongMap!3931)

(declare-fun extractMap!1782 (List!52290) ListMap!4765)

(assert (=> b!4675637 (= lt!1835683 (extractMap!1782 (toList!5402 lm!2023)))))

(declare-fun b!4675638 () Bool)

(declare-fun res!1969178 () Bool)

(assert (=> b!4675638 (=> (not res!1969178) (not e!2917439))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!9803 (List!52290) tuple2!53420)

(assert (=> b!4675638 (= res!1969178 (= (head!9803 (toList!5402 lm!2023)) (tuple2!53421 hash!405 oldBucket!34)))))

(declare-fun b!4675639 () Bool)

(declare-fun res!1969176 () Bool)

(assert (=> b!4675639 (=> (not res!1969176) (not e!2917439))))

(declare-datatypes ((Hashable!6125 0))(
  ( (HashableExt!6124 (__x!31828 Int)) )
))
(declare-fun hashF!1323 () Hashable!6125)

(declare-fun allKeysSameHashInMap!1670 (ListLongMap!3931 Hashable!6125) Bool)

(assert (=> b!4675639 (= res!1969176 (allKeysSameHashInMap!1670 lm!2023 hashF!1323))))

(declare-fun b!4675640 () Bool)

(declare-fun e!2917437 () Bool)

(assert (=> b!4675640 (= e!2917441 e!2917437)))

(declare-fun res!1969175 () Bool)

(assert (=> b!4675640 (=> res!1969175 e!2917437)))

(declare-fun lt!1835681 () ListMap!4765)

(declare-fun lt!1835682 () ListMap!4765)

(declare-fun addToMapMapFromBucket!1188 (List!52289 ListMap!4765) ListMap!4765)

(assert (=> b!4675640 (= res!1969175 (not (= lt!1835681 (addToMapMapFromBucket!1188 newBucket!218 lt!1835682))))))

(assert (=> b!4675640 (= lt!1835681 (addToMapMapFromBucket!1188 lt!1835684 lt!1835682))))

(declare-fun b!4675642 () Bool)

(declare-fun res!1969177 () Bool)

(assert (=> b!4675642 (=> (not res!1969177) (not e!2917443))))

(declare-fun removePairForKey!1351 (List!52289 K!13540) List!52289)

(assert (=> b!4675642 (= res!1969177 (= (removePairForKey!1351 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4675643 () Bool)

(declare-fun res!1969171 () Bool)

(assert (=> b!4675643 (=> (not res!1969171) (not e!2917439))))

(get-info :version)

(assert (=> b!4675643 (= res!1969171 ((_ is Cons!52166) (toList!5402 lm!2023)))))

(declare-fun b!4675644 () Bool)

(declare-fun res!1969173 () Bool)

(assert (=> b!4675644 (=> (not res!1969173) (not e!2917439))))

(declare-fun hash!3920 (Hashable!6125 K!13540) (_ BitVec 64))

(assert (=> b!4675644 (= res!1969173 (= (hash!3920 hashF!1323 key!4653) hash!405))))

(declare-fun tp!1344554 () Bool)

(declare-fun tp_is_empty!30319 () Bool)

(declare-fun b!4675645 () Bool)

(declare-fun tp_is_empty!30317 () Bool)

(declare-fun e!2917438 () Bool)

(assert (=> b!4675645 (= e!2917438 (and tp_is_empty!30317 tp_is_empty!30319 tp!1344554))))

(declare-fun b!4675646 () Bool)

(declare-fun res!1969167 () Bool)

(assert (=> b!4675646 (=> (not res!1969167) (not e!2917443))))

(declare-fun noDuplicateKeys!1756 (List!52289) Bool)

(assert (=> b!4675646 (= res!1969167 (noDuplicateKeys!1756 newBucket!218))))

(declare-fun b!4675647 () Bool)

(assert (=> b!4675647 (= e!2917439 (not e!2917442))))

(declare-fun res!1969169 () Bool)

(assert (=> b!4675647 (=> res!1969169 e!2917442)))

(assert (=> b!4675647 (= res!1969169 (or (not ((_ is Cons!52165) oldBucket!34)) (not (= (_1!30003 (h!58362 oldBucket!34)) key!4653))))))

(assert (=> b!4675647 (= lt!1835683 (addToMapMapFromBucket!1188 (_2!30004 (h!58363 (toList!5402 lm!2023))) lt!1835682))))

(assert (=> b!4675647 (= lt!1835682 (extractMap!1782 (t!359430 (toList!5402 lm!2023))))))

(declare-fun tail!8357 (ListLongMap!3931) ListLongMap!3931)

(assert (=> b!4675647 (= (t!359430 (toList!5402 lm!2023)) (toList!5402 (tail!8357 lm!2023)))))

(declare-fun res!1969174 () Bool)

(assert (=> start!471916 (=> (not res!1969174) (not e!2917443))))

(declare-fun lambda!203555 () Int)

(declare-fun forall!11175 (List!52290 Int) Bool)

(assert (=> start!471916 (= res!1969174 (forall!11175 (toList!5402 lm!2023) lambda!203555))))

(assert (=> start!471916 e!2917443))

(declare-fun e!2917444 () Bool)

(declare-fun inv!67414 (ListLongMap!3931) Bool)

(assert (=> start!471916 (and (inv!67414 lm!2023) e!2917444)))

(assert (=> start!471916 tp_is_empty!30317))

(assert (=> start!471916 e!2917438))

(assert (=> start!471916 true))

(declare-fun e!2917440 () Bool)

(assert (=> start!471916 e!2917440))

(declare-fun b!4675641 () Bool)

(declare-fun res!1969170 () Bool)

(assert (=> b!4675641 (=> (not res!1969170) (not e!2917443))))

(assert (=> b!4675641 (= res!1969170 (noDuplicateKeys!1756 oldBucket!34))))

(declare-fun b!4675648 () Bool)

(declare-fun res!1969168 () Bool)

(assert (=> b!4675648 (=> (not res!1969168) (not e!2917443))))

(declare-fun allKeysSameHash!1582 (List!52289 (_ BitVec 64) Hashable!6125) Bool)

(assert (=> b!4675648 (= res!1969168 (allKeysSameHash!1582 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4675649 () Bool)

(declare-fun res!1969166 () Bool)

(assert (=> b!4675649 (=> (not res!1969166) (not e!2917439))))

(assert (=> b!4675649 (= res!1969166 (allKeysSameHash!1582 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4675650 () Bool)

(declare-fun res!1969172 () Bool)

(assert (=> b!4675650 (=> res!1969172 e!2917441)))

(assert (=> b!4675650 (= res!1969172 (not (= (extractMap!1782 (Cons!52166 (tuple2!53421 hash!405 lt!1835684) (t!359430 (toList!5402 lm!2023)))) (extractMap!1782 (Cons!52166 (tuple2!53421 hash!405 newBucket!218) (t!359430 (toList!5402 lm!2023)))))))))

(declare-fun b!4675651 () Bool)

(declare-fun tp!1344555 () Bool)

(assert (=> b!4675651 (= e!2917444 tp!1344555)))

(declare-fun tp!1344553 () Bool)

(declare-fun b!4675652 () Bool)

(assert (=> b!4675652 (= e!2917440 (and tp_is_empty!30317 tp_is_empty!30319 tp!1344553))))

(declare-fun b!4675653 () Bool)

(assert (=> b!4675653 (= e!2917437 (noDuplicateKeys!1756 lt!1835684))))

(declare-fun lt!1835686 () tuple2!53418)

(declare-fun eq!945 (ListMap!4765 ListMap!4765) Bool)

(declare-fun +!2058 (ListMap!4765 tuple2!53418) ListMap!4765)

(assert (=> b!4675653 (eq!945 (addToMapMapFromBucket!1188 (Cons!52165 lt!1835686 lt!1835684) lt!1835682) (+!2058 lt!1835681 lt!1835686))))

(declare-datatypes ((Unit!121613 0))(
  ( (Unit!121614) )
))
(declare-fun lt!1835685 () Unit!121613)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!194 (tuple2!53418 List!52289 ListMap!4765) Unit!121613)

(assert (=> b!4675653 (= lt!1835685 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!194 lt!1835686 lt!1835684 lt!1835682))))

(declare-fun head!9804 (List!52289) tuple2!53418)

(assert (=> b!4675653 (= lt!1835686 (head!9804 oldBucket!34))))

(assert (= (and start!471916 res!1969174) b!4675641))

(assert (= (and b!4675641 res!1969170) b!4675646))

(assert (= (and b!4675646 res!1969167) b!4675642))

(assert (= (and b!4675642 res!1969177) b!4675648))

(assert (= (and b!4675648 res!1969168) b!4675637))

(assert (= (and b!4675637 res!1969179) b!4675644))

(assert (= (and b!4675644 res!1969173) b!4675649))

(assert (= (and b!4675649 res!1969166) b!4675639))

(assert (= (and b!4675639 res!1969176) b!4675638))

(assert (= (and b!4675638 res!1969178) b!4675643))

(assert (= (and b!4675643 res!1969171) b!4675647))

(assert (= (and b!4675647 (not res!1969169)) b!4675636))

(assert (= (and b!4675636 (not res!1969165)) b!4675650))

(assert (= (and b!4675650 (not res!1969172)) b!4675640))

(assert (= (and b!4675640 (not res!1969175)) b!4675653))

(assert (= start!471916 b!4675651))

(assert (= (and start!471916 ((_ is Cons!52165) oldBucket!34)) b!4675645))

(assert (= (and start!471916 ((_ is Cons!52165) newBucket!218)) b!4675652))

(declare-fun m!5569281 () Bool)

(assert (=> b!4675638 m!5569281))

(declare-fun m!5569283 () Bool)

(assert (=> b!4675637 m!5569283))

(declare-fun m!5569285 () Bool)

(assert (=> b!4675637 m!5569285))

(declare-fun m!5569287 () Bool)

(assert (=> b!4675646 m!5569287))

(declare-fun m!5569289 () Bool)

(assert (=> b!4675647 m!5569289))

(declare-fun m!5569291 () Bool)

(assert (=> b!4675647 m!5569291))

(declare-fun m!5569293 () Bool)

(assert (=> b!4675647 m!5569293))

(declare-fun m!5569295 () Bool)

(assert (=> b!4675648 m!5569295))

(declare-fun m!5569297 () Bool)

(assert (=> b!4675644 m!5569297))

(declare-fun m!5569299 () Bool)

(assert (=> b!4675636 m!5569299))

(declare-fun m!5569301 () Bool)

(assert (=> b!4675641 m!5569301))

(declare-fun m!5569303 () Bool)

(assert (=> b!4675649 m!5569303))

(declare-fun m!5569305 () Bool)

(assert (=> b!4675653 m!5569305))

(declare-fun m!5569307 () Bool)

(assert (=> b!4675653 m!5569307))

(assert (=> b!4675653 m!5569305))

(declare-fun m!5569309 () Bool)

(assert (=> b!4675653 m!5569309))

(declare-fun m!5569311 () Bool)

(assert (=> b!4675653 m!5569311))

(assert (=> b!4675653 m!5569307))

(declare-fun m!5569313 () Bool)

(assert (=> b!4675653 m!5569313))

(declare-fun m!5569315 () Bool)

(assert (=> b!4675653 m!5569315))

(declare-fun m!5569317 () Bool)

(assert (=> b!4675650 m!5569317))

(declare-fun m!5569319 () Bool)

(assert (=> b!4675650 m!5569319))

(declare-fun m!5569321 () Bool)

(assert (=> b!4675640 m!5569321))

(declare-fun m!5569323 () Bool)

(assert (=> b!4675640 m!5569323))

(declare-fun m!5569325 () Bool)

(assert (=> b!4675642 m!5569325))

(declare-fun m!5569327 () Bool)

(assert (=> b!4675639 m!5569327))

(declare-fun m!5569329 () Bool)

(assert (=> start!471916 m!5569329))

(declare-fun m!5569331 () Bool)

(assert (=> start!471916 m!5569331))

(check-sat tp_is_empty!30319 (not b!4675636) (not b!4675647) (not b!4675644) (not b!4675651) (not b!4675641) (not b!4675640) (not b!4675648) (not start!471916) (not b!4675642) (not b!4675637) (not b!4675639) (not b!4675638) (not b!4675650) (not b!4675649) (not b!4675652) tp_is_empty!30317 (not b!4675653) (not b!4675646) (not b!4675645))
(check-sat)
