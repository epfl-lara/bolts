; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478292 () Bool)

(assert start!478292)

(declare-fun b!4708178 () Bool)

(declare-fun res!1989263 () Bool)

(declare-fun e!2936784 () Bool)

(assert (=> b!4708178 (=> (not res!1989263) (not e!2936784))))

(declare-datatypes ((Hashable!6297 0))(
  ( (HashableExt!6296 (__x!32000 Int)) )
))
(declare-fun hashF!1323 () Hashable!6297)

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((K!13970 0))(
  ( (K!13971 (val!19447 Int)) )
))
(declare-fun key!4653 () K!13970)

(declare-fun hash!4244 (Hashable!6297 K!13970) (_ BitVec 64))

(assert (=> b!4708178 (= res!1989263 (= (hash!4244 hashF!1323 key!4653) hash!405))))

(declare-fun b!4708179 () Bool)

(declare-fun res!1989259 () Bool)

(declare-fun e!2936780 () Bool)

(assert (=> b!4708179 (=> (not res!1989259) (not e!2936780))))

(declare-datatypes ((V!14216 0))(
  ( (V!14217 (val!19448 Int)) )
))
(declare-datatypes ((tuple2!54106 0))(
  ( (tuple2!54107 (_1!30347 K!13970) (_2!30347 V!14216)) )
))
(declare-datatypes ((List!52737 0))(
  ( (Nil!52613) (Cons!52613 (h!58914 tuple2!54106) (t!359969 List!52737)) )
))
(declare-fun oldBucket!34 () List!52737)

(declare-fun noDuplicateKeys!1928 (List!52737) Bool)

(assert (=> b!4708179 (= res!1989259 (noDuplicateKeys!1928 oldBucket!34))))

(declare-fun res!1989268 () Bool)

(assert (=> start!478292 (=> (not res!1989268) (not e!2936780))))

(declare-datatypes ((tuple2!54108 0))(
  ( (tuple2!54109 (_1!30348 (_ BitVec 64)) (_2!30348 List!52737)) )
))
(declare-datatypes ((List!52738 0))(
  ( (Nil!52614) (Cons!52614 (h!58915 tuple2!54108) (t!359970 List!52738)) )
))
(declare-datatypes ((ListLongMap!4275 0))(
  ( (ListLongMap!4276 (toList!5745 List!52738)) )
))
(declare-fun lm!2023 () ListLongMap!4275)

(declare-fun lambda!212079 () Int)

(declare-fun forall!11451 (List!52738 Int) Bool)

(assert (=> start!478292 (= res!1989268 (forall!11451 (toList!5745 lm!2023) lambda!212079))))

(assert (=> start!478292 e!2936780))

(declare-fun e!2936785 () Bool)

(declare-fun inv!67844 (ListLongMap!4275) Bool)

(assert (=> start!478292 (and (inv!67844 lm!2023) e!2936785)))

(declare-fun tp_is_empty!31005 () Bool)

(assert (=> start!478292 tp_is_empty!31005))

(declare-fun e!2936783 () Bool)

(assert (=> start!478292 e!2936783))

(assert (=> start!478292 true))

(declare-fun e!2936782 () Bool)

(assert (=> start!478292 e!2936782))

(declare-fun b!4708180 () Bool)

(declare-fun res!1989258 () Bool)

(assert (=> b!4708180 (=> (not res!1989258) (not e!2936784))))

(get-info :version)

(assert (=> b!4708180 (= res!1989258 ((_ is Cons!52614) (toList!5745 lm!2023)))))

(declare-fun tp_is_empty!31007 () Bool)

(declare-fun b!4708181 () Bool)

(declare-fun tp!1347141 () Bool)

(assert (=> b!4708181 (= e!2936782 (and tp_is_empty!31005 tp_is_empty!31007 tp!1347141))))

(declare-fun b!4708182 () Bool)

(declare-fun e!2936786 () Bool)

(assert (=> b!4708182 (= e!2936784 (not e!2936786))))

(declare-fun res!1989264 () Bool)

(assert (=> b!4708182 (=> res!1989264 e!2936786)))

(assert (=> b!4708182 (= res!1989264 (or (and ((_ is Cons!52613) oldBucket!34) (= (_1!30347 (h!58914 oldBucket!34)) key!4653)) (and ((_ is Cons!52613) oldBucket!34) (not (= (_1!30347 (h!58914 oldBucket!34)) key!4653))) (not ((_ is Nil!52613) oldBucket!34))))))

(declare-fun e!2936781 () Bool)

(assert (=> b!4708182 e!2936781))

(declare-fun res!1989269 () Bool)

(assert (=> b!4708182 (=> (not res!1989269) (not e!2936781))))

(declare-fun tail!8799 (ListLongMap!4275) ListLongMap!4275)

(assert (=> b!4708182 (= res!1989269 (= (t!359970 (toList!5745 lm!2023)) (toList!5745 (tail!8799 lm!2023))))))

(declare-fun b!4708183 () Bool)

(declare-fun tp!1347142 () Bool)

(assert (=> b!4708183 (= e!2936783 (and tp_is_empty!31005 tp_is_empty!31007 tp!1347142))))

(declare-fun b!4708184 () Bool)

(declare-fun tp!1347143 () Bool)

(assert (=> b!4708184 (= e!2936785 tp!1347143)))

(declare-fun b!4708185 () Bool)

(declare-fun res!1989257 () Bool)

(assert (=> b!4708185 (=> (not res!1989257) (not e!2936780))))

(declare-fun newBucket!218 () List!52737)

(declare-fun removePairForKey!1523 (List!52737 K!13970) List!52737)

(assert (=> b!4708185 (= res!1989257 (= (removePairForKey!1523 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4708186 () Bool)

(declare-fun res!1989266 () Bool)

(assert (=> b!4708186 (=> (not res!1989266) (not e!2936784))))

(declare-fun allKeysSameHashInMap!1842 (ListLongMap!4275 Hashable!6297) Bool)

(assert (=> b!4708186 (= res!1989266 (allKeysSameHashInMap!1842 lm!2023 hashF!1323))))

(declare-fun b!4708187 () Bool)

(declare-fun res!1989261 () Bool)

(assert (=> b!4708187 (=> (not res!1989261) (not e!2936784))))

(declare-fun head!10114 (List!52738) tuple2!54108)

(assert (=> b!4708187 (= res!1989261 (= (head!10114 (toList!5745 lm!2023)) (tuple2!54109 hash!405 oldBucket!34)))))

(declare-fun b!4708188 () Bool)

(declare-fun res!1989260 () Bool)

(assert (=> b!4708188 (=> (not res!1989260) (not e!2936780))))

(declare-fun allKeysSameHash!1754 (List!52737 (_ BitVec 64) Hashable!6297) Bool)

(assert (=> b!4708188 (= res!1989260 (allKeysSameHash!1754 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4708189 () Bool)

(declare-datatypes ((ListMap!5109 0))(
  ( (ListMap!5110 (toList!5746 List!52737)) )
))
(declare-fun lt!1873271 () ListMap!5109)

(declare-fun addToMapMapFromBucket!1360 (List!52737 ListMap!5109) ListMap!5109)

(declare-fun extractMap!1954 (List!52738) ListMap!5109)

(assert (=> b!4708189 (= e!2936781 (= lt!1873271 (addToMapMapFromBucket!1360 (_2!30348 (h!58915 (toList!5745 lm!2023))) (extractMap!1954 (t!359970 (toList!5745 lm!2023))))))))

(declare-fun b!4708190 () Bool)

(assert (=> b!4708190 (= e!2936786 true)))

(assert (=> b!4708190 false))

(declare-datatypes ((Unit!127492 0))(
  ( (Unit!127493) )
))
(declare-fun lt!1873272 () Unit!127492)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!404 (ListLongMap!4275 K!13970 Hashable!6297) Unit!127492)

(assert (=> b!4708190 (= lt!1873272 (lemmaNotInItsHashBucketThenNotInMap!404 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4708191 () Bool)

(declare-fun res!1989267 () Bool)

(assert (=> b!4708191 (=> (not res!1989267) (not e!2936784))))

(assert (=> b!4708191 (= res!1989267 (allKeysSameHash!1754 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4708192 () Bool)

(assert (=> b!4708192 (= e!2936780 e!2936784)))

(declare-fun res!1989262 () Bool)

(assert (=> b!4708192 (=> (not res!1989262) (not e!2936784))))

(declare-fun contains!15936 (ListMap!5109 K!13970) Bool)

(assert (=> b!4708192 (= res!1989262 (contains!15936 lt!1873271 key!4653))))

(assert (=> b!4708192 (= lt!1873271 (extractMap!1954 (toList!5745 lm!2023)))))

(declare-fun b!4708193 () Bool)

(declare-fun res!1989265 () Bool)

(assert (=> b!4708193 (=> (not res!1989265) (not e!2936780))))

(assert (=> b!4708193 (= res!1989265 (noDuplicateKeys!1928 newBucket!218))))

(assert (= (and start!478292 res!1989268) b!4708179))

(assert (= (and b!4708179 res!1989259) b!4708193))

(assert (= (and b!4708193 res!1989265) b!4708185))

(assert (= (and b!4708185 res!1989257) b!4708188))

(assert (= (and b!4708188 res!1989260) b!4708192))

(assert (= (and b!4708192 res!1989262) b!4708178))

(assert (= (and b!4708178 res!1989263) b!4708191))

(assert (= (and b!4708191 res!1989267) b!4708186))

(assert (= (and b!4708186 res!1989266) b!4708187))

(assert (= (and b!4708187 res!1989261) b!4708180))

(assert (= (and b!4708180 res!1989258) b!4708182))

(assert (= (and b!4708182 res!1989269) b!4708189))

(assert (= (and b!4708182 (not res!1989264)) b!4708190))

(assert (= start!478292 b!4708184))

(assert (= (and start!478292 ((_ is Cons!52613) oldBucket!34)) b!4708183))

(assert (= (and start!478292 ((_ is Cons!52613) newBucket!218)) b!4708181))

(declare-fun m!5632697 () Bool)

(assert (=> b!4708191 m!5632697))

(declare-fun m!5632699 () Bool)

(assert (=> b!4708185 m!5632699))

(declare-fun m!5632701 () Bool)

(assert (=> b!4708190 m!5632701))

(declare-fun m!5632703 () Bool)

(assert (=> b!4708187 m!5632703))

(declare-fun m!5632705 () Bool)

(assert (=> b!4708193 m!5632705))

(declare-fun m!5632707 () Bool)

(assert (=> b!4708189 m!5632707))

(assert (=> b!4708189 m!5632707))

(declare-fun m!5632709 () Bool)

(assert (=> b!4708189 m!5632709))

(declare-fun m!5632711 () Bool)

(assert (=> start!478292 m!5632711))

(declare-fun m!5632713 () Bool)

(assert (=> start!478292 m!5632713))

(declare-fun m!5632715 () Bool)

(assert (=> b!4708178 m!5632715))

(declare-fun m!5632717 () Bool)

(assert (=> b!4708179 m!5632717))

(declare-fun m!5632719 () Bool)

(assert (=> b!4708182 m!5632719))

(declare-fun m!5632721 () Bool)

(assert (=> b!4708186 m!5632721))

(declare-fun m!5632723 () Bool)

(assert (=> b!4708192 m!5632723))

(declare-fun m!5632725 () Bool)

(assert (=> b!4708192 m!5632725))

(declare-fun m!5632727 () Bool)

(assert (=> b!4708188 m!5632727))

(check-sat (not b!4708191) (not b!4708189) (not b!4708190) (not b!4708187) (not b!4708179) tp_is_empty!31007 (not b!4708188) (not b!4708185) (not b!4708184) (not b!4708181) (not b!4708183) (not b!4708178) (not b!4708193) tp_is_empty!31005 (not b!4708182) (not b!4708186) (not start!478292) (not b!4708192))
(check-sat)
