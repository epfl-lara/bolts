; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!478304 () Bool)

(assert start!478304)

(declare-fun b!4708460 () Bool)

(declare-fun e!2936905 () Bool)

(declare-fun e!2936901 () Bool)

(assert (=> b!4708460 (= e!2936905 (not e!2936901))))

(declare-fun res!1989486 () Bool)

(assert (=> b!4708460 (=> res!1989486 e!2936901)))

(declare-datatypes ((K!13985 0))(
  ( (K!13986 (val!19459 Int)) )
))
(declare-datatypes ((V!14231 0))(
  ( (V!14232 (val!19460 Int)) )
))
(declare-datatypes ((tuple2!54130 0))(
  ( (tuple2!54131 (_1!30359 K!13985) (_2!30359 V!14231)) )
))
(declare-datatypes ((List!52749 0))(
  ( (Nil!52625) (Cons!52625 (h!58926 tuple2!54130) (t!359981 List!52749)) )
))
(declare-fun oldBucket!34 () List!52749)

(declare-fun key!4653 () K!13985)

(get-info :version)

(assert (=> b!4708460 (= res!1989486 (or (and ((_ is Cons!52625) oldBucket!34) (= (_1!30359 (h!58926 oldBucket!34)) key!4653)) (and ((_ is Cons!52625) oldBucket!34) (not (= (_1!30359 (h!58926 oldBucket!34)) key!4653))) ((_ is Nil!52625) oldBucket!34)))))

(declare-fun e!2936906 () Bool)

(assert (=> b!4708460 e!2936906))

(declare-fun res!1989489 () Bool)

(assert (=> b!4708460 (=> (not res!1989489) (not e!2936906))))

(declare-datatypes ((tuple2!54132 0))(
  ( (tuple2!54133 (_1!30360 (_ BitVec 64)) (_2!30360 List!52749)) )
))
(declare-datatypes ((List!52750 0))(
  ( (Nil!52626) (Cons!52626 (h!58927 tuple2!54132) (t!359982 List!52750)) )
))
(declare-datatypes ((ListLongMap!4287 0))(
  ( (ListLongMap!4288 (toList!5757 List!52750)) )
))
(declare-fun lm!2023 () ListLongMap!4287)

(declare-fun tail!8808 (ListLongMap!4287) ListLongMap!4287)

(assert (=> b!4708460 (= res!1989489 (= (t!359982 (toList!5757 lm!2023)) (toList!5757 (tail!8808 lm!2023))))))

(declare-fun res!1989494 () Bool)

(declare-fun e!2936902 () Bool)

(assert (=> start!478304 (=> (not res!1989494) (not e!2936902))))

(declare-fun lambda!212101 () Int)

(declare-fun forall!11457 (List!52750 Int) Bool)

(assert (=> start!478304 (= res!1989494 (forall!11457 (toList!5757 lm!2023) lambda!212101))))

(assert (=> start!478304 e!2936902))

(declare-fun e!2936904 () Bool)

(declare-fun inv!67859 (ListLongMap!4287) Bool)

(assert (=> start!478304 (and (inv!67859 lm!2023) e!2936904)))

(declare-fun tp_is_empty!31029 () Bool)

(assert (=> start!478304 tp_is_empty!31029))

(declare-fun e!2936900 () Bool)

(assert (=> start!478304 e!2936900))

(assert (=> start!478304 true))

(declare-fun e!2936903 () Bool)

(assert (=> start!478304 e!2936903))

(declare-fun b!4708461 () Bool)

(declare-fun res!1989497 () Bool)

(assert (=> b!4708461 (=> (not res!1989497) (not e!2936905))))

(assert (=> b!4708461 (= res!1989497 ((_ is Cons!52626) (toList!5757 lm!2023)))))

(declare-fun b!4708462 () Bool)

(declare-fun res!1989491 () Bool)

(assert (=> b!4708462 (=> (not res!1989491) (not e!2936902))))

(declare-fun newBucket!218 () List!52749)

(declare-fun noDuplicateKeys!1934 (List!52749) Bool)

(assert (=> b!4708462 (= res!1989491 (noDuplicateKeys!1934 newBucket!218))))

(declare-fun b!4708463 () Bool)

(declare-fun res!1989490 () Bool)

(assert (=> b!4708463 (=> (not res!1989490) (not e!2936905))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6303 0))(
  ( (HashableExt!6302 (__x!32006 Int)) )
))
(declare-fun hashF!1323 () Hashable!6303)

(declare-fun allKeysSameHash!1760 (List!52749 (_ BitVec 64) Hashable!6303) Bool)

(assert (=> b!4708463 (= res!1989490 (allKeysSameHash!1760 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4708464 () Bool)

(declare-fun res!1989495 () Bool)

(assert (=> b!4708464 (=> (not res!1989495) (not e!2936905))))

(declare-fun hash!4250 (Hashable!6303 K!13985) (_ BitVec 64))

(assert (=> b!4708464 (= res!1989495 (= (hash!4250 hashF!1323 key!4653) hash!405))))

(declare-fun b!4708465 () Bool)

(declare-fun res!1989492 () Bool)

(assert (=> b!4708465 (=> (not res!1989492) (not e!2936905))))

(declare-fun head!10120 (List!52750) tuple2!54132)

(assert (=> b!4708465 (= res!1989492 (= (head!10120 (toList!5757 lm!2023)) (tuple2!54133 hash!405 oldBucket!34)))))

(declare-fun tp!1347195 () Bool)

(declare-fun tp_is_empty!31031 () Bool)

(declare-fun b!4708466 () Bool)

(assert (=> b!4708466 (= e!2936900 (and tp_is_empty!31029 tp_is_empty!31031 tp!1347195))))

(declare-fun b!4708467 () Bool)

(declare-fun res!1989488 () Bool)

(assert (=> b!4708467 (=> (not res!1989488) (not e!2936902))))

(assert (=> b!4708467 (= res!1989488 (allKeysSameHash!1760 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4708468 () Bool)

(declare-fun res!1989496 () Bool)

(assert (=> b!4708468 (=> (not res!1989496) (not e!2936902))))

(declare-fun removePairForKey!1529 (List!52749 K!13985) List!52749)

(assert (=> b!4708468 (= res!1989496 (= (removePairForKey!1529 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4708469 () Bool)

(assert (=> b!4708469 (= e!2936902 e!2936905)))

(declare-fun res!1989487 () Bool)

(assert (=> b!4708469 (=> (not res!1989487) (not e!2936905))))

(declare-datatypes ((ListMap!5121 0))(
  ( (ListMap!5122 (toList!5758 List!52749)) )
))
(declare-fun lt!1873295 () ListMap!5121)

(declare-fun contains!15942 (ListMap!5121 K!13985) Bool)

(assert (=> b!4708469 (= res!1989487 (contains!15942 lt!1873295 key!4653))))

(declare-fun extractMap!1960 (List!52750) ListMap!5121)

(assert (=> b!4708469 (= lt!1873295 (extractMap!1960 (toList!5757 lm!2023)))))

(declare-fun b!4708470 () Bool)

(declare-fun res!1989493 () Bool)

(assert (=> b!4708470 (=> (not res!1989493) (not e!2936905))))

(declare-fun allKeysSameHashInMap!1848 (ListLongMap!4287 Hashable!6303) Bool)

(assert (=> b!4708470 (= res!1989493 (allKeysSameHashInMap!1848 lm!2023 hashF!1323))))

(declare-fun b!4708471 () Bool)

(declare-fun tp!1347197 () Bool)

(assert (=> b!4708471 (= e!2936904 tp!1347197)))

(declare-fun b!4708472 () Bool)

(declare-fun addToMapMapFromBucket!1366 (List!52749 ListMap!5121) ListMap!5121)

(assert (=> b!4708472 (= e!2936906 (= lt!1873295 (addToMapMapFromBucket!1366 (_2!30360 (h!58927 (toList!5757 lm!2023))) (extractMap!1960 (t!359982 (toList!5757 lm!2023))))))))

(declare-fun b!4708473 () Bool)

(assert (=> b!4708473 (= e!2936901 (not (= (toList!5757 lm!2023) Nil!52626)))))

(declare-fun lt!1873296 () ListMap!5121)

(declare-fun tail!8809 (List!52750) List!52750)

(assert (=> b!4708473 (= lt!1873296 (extractMap!1960 (Cons!52626 (tuple2!54133 hash!405 newBucket!218) (tail!8809 (toList!5757 lm!2023)))))))

(declare-fun tp!1347196 () Bool)

(declare-fun b!4708474 () Bool)

(assert (=> b!4708474 (= e!2936903 (and tp_is_empty!31029 tp_is_empty!31031 tp!1347196))))

(declare-fun b!4708475 () Bool)

(declare-fun res!1989485 () Bool)

(assert (=> b!4708475 (=> (not res!1989485) (not e!2936902))))

(assert (=> b!4708475 (= res!1989485 (noDuplicateKeys!1934 oldBucket!34))))

(assert (= (and start!478304 res!1989494) b!4708475))

(assert (= (and b!4708475 res!1989485) b!4708462))

(assert (= (and b!4708462 res!1989491) b!4708468))

(assert (= (and b!4708468 res!1989496) b!4708467))

(assert (= (and b!4708467 res!1989488) b!4708469))

(assert (= (and b!4708469 res!1989487) b!4708464))

(assert (= (and b!4708464 res!1989495) b!4708463))

(assert (= (and b!4708463 res!1989490) b!4708470))

(assert (= (and b!4708470 res!1989493) b!4708465))

(assert (= (and b!4708465 res!1989492) b!4708461))

(assert (= (and b!4708461 res!1989497) b!4708460))

(assert (= (and b!4708460 res!1989489) b!4708472))

(assert (= (and b!4708460 (not res!1989486)) b!4708473))

(assert (= start!478304 b!4708471))

(assert (= (and start!478304 ((_ is Cons!52625) oldBucket!34)) b!4708466))

(assert (= (and start!478304 ((_ is Cons!52625) newBucket!218)) b!4708474))

(declare-fun m!5632891 () Bool)

(assert (=> b!4708472 m!5632891))

(assert (=> b!4708472 m!5632891))

(declare-fun m!5632893 () Bool)

(assert (=> b!4708472 m!5632893))

(declare-fun m!5632895 () Bool)

(assert (=> b!4708460 m!5632895))

(declare-fun m!5632897 () Bool)

(assert (=> b!4708468 m!5632897))

(declare-fun m!5632899 () Bool)

(assert (=> b!4708469 m!5632899))

(declare-fun m!5632901 () Bool)

(assert (=> b!4708469 m!5632901))

(declare-fun m!5632903 () Bool)

(assert (=> b!4708464 m!5632903))

(declare-fun m!5632905 () Bool)

(assert (=> b!4708462 m!5632905))

(declare-fun m!5632907 () Bool)

(assert (=> b!4708470 m!5632907))

(declare-fun m!5632909 () Bool)

(assert (=> b!4708473 m!5632909))

(declare-fun m!5632911 () Bool)

(assert (=> b!4708473 m!5632911))

(declare-fun m!5632913 () Bool)

(assert (=> b!4708463 m!5632913))

(declare-fun m!5632915 () Bool)

(assert (=> b!4708475 m!5632915))

(declare-fun m!5632917 () Bool)

(assert (=> b!4708467 m!5632917))

(declare-fun m!5632919 () Bool)

(assert (=> b!4708465 m!5632919))

(declare-fun m!5632921 () Bool)

(assert (=> start!478304 m!5632921))

(declare-fun m!5632923 () Bool)

(assert (=> start!478304 m!5632923))

(check-sat (not b!4708469) (not b!4708460) (not b!4708471) (not b!4708462) (not start!478304) (not b!4708466) tp_is_empty!31029 (not b!4708468) (not b!4708465) (not b!4708463) (not b!4708475) (not b!4708467) (not b!4708464) (not b!4708473) (not b!4708472) tp_is_empty!31031 (not b!4708474) (not b!4708470))
(check-sat)
