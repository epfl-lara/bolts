; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419256 () Bool)

(assert start!419256)

(declare-fun b!4344455 () Bool)

(declare-fun res!1783465 () Bool)

(declare-fun e!2703519 () Bool)

(assert (=> b!4344455 (=> (not res!1783465) (not e!2703519))))

(declare-datatypes ((V!10366 0))(
  ( (V!10367 (val!16367 Int)) )
))
(declare-datatypes ((K!10120 0))(
  ( (K!10121 (val!16368 Int)) )
))
(declare-datatypes ((tuple2!48054 0))(
  ( (tuple2!48055 (_1!27321 K!10120) (_2!27321 V!10366)) )
))
(declare-datatypes ((List!48887 0))(
  ( (Nil!48763) (Cons!48763 (h!54282 tuple2!48054) (t!355807 List!48887)) )
))
(declare-datatypes ((tuple2!48056 0))(
  ( (tuple2!48057 (_1!27322 (_ BitVec 64)) (_2!27322 List!48887)) )
))
(declare-datatypes ((List!48888 0))(
  ( (Nil!48764) (Cons!48764 (h!54283 tuple2!48056) (t!355808 List!48888)) )
))
(declare-datatypes ((ListLongMap!1475 0))(
  ( (ListLongMap!1476 (toList!2825 List!48888)) )
))
(declare-fun lm!1707 () ListLongMap!1475)

(declare-datatypes ((Hashable!4813 0))(
  ( (HashableExt!4812 (__x!30516 Int)) )
))
(declare-fun hashF!1247 () Hashable!4813)

(declare-fun allKeysSameHashInMap!525 (ListLongMap!1475 Hashable!4813) Bool)

(assert (=> b!4344455 (= res!1783465 (allKeysSameHashInMap!525 lm!1707 hashF!1247))))

(declare-fun b!4344456 () Bool)

(declare-fun res!1783471 () Bool)

(assert (=> b!4344456 (=> (not res!1783471) (not e!2703519))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun key!3918 () K!10120)

(declare-fun hash!1388 (Hashable!4813 K!10120) (_ BitVec 64))

(assert (=> b!4344456 (= res!1783471 (= (hash!1388 hashF!1247 key!3918) hash!377))))

(declare-fun tp!1329388 () Bool)

(declare-fun b!4344457 () Bool)

(declare-fun tp_is_empty!24921 () Bool)

(declare-fun e!2703518 () Bool)

(declare-fun tp_is_empty!24923 () Bool)

(assert (=> b!4344457 (= e!2703518 (and tp_is_empty!24921 tp_is_empty!24923 tp!1329388))))

(declare-fun b!4344458 () Bool)

(declare-fun res!1783467 () Bool)

(declare-fun e!2703515 () Bool)

(assert (=> b!4344458 (=> (not res!1783467) (not e!2703515))))

(declare-fun contains!10876 (ListLongMap!1475 (_ BitVec 64)) Bool)

(assert (=> b!4344458 (= res!1783467 (contains!10876 lm!1707 hash!377))))

(declare-fun b!4344459 () Bool)

(declare-fun e!2703513 () Bool)

(declare-fun e!2703517 () Bool)

(assert (=> b!4344459 (= e!2703513 e!2703517)))

(declare-fun res!1783469 () Bool)

(assert (=> b!4344459 (=> res!1783469 e!2703517)))

(get-info :version)

(assert (=> b!4344459 (= res!1783469 (or (not ((_ is Cons!48764) (toList!2825 lm!1707))) (not (= (_1!27322 (h!54283 (toList!2825 lm!1707))) hash!377))))))

(declare-fun e!2703514 () Bool)

(assert (=> b!4344459 e!2703514))

(declare-fun res!1783460 () Bool)

(assert (=> b!4344459 (=> (not res!1783460) (not e!2703514))))

(declare-fun lt!1557993 () ListLongMap!1475)

(declare-fun lambda!137749 () Int)

(declare-fun forall!9009 (List!48888 Int) Bool)

(assert (=> b!4344459 (= res!1783460 (forall!9009 (toList!2825 lt!1557993) lambda!137749))))

(declare-fun lt!1558006 () tuple2!48056)

(declare-fun +!513 (ListLongMap!1475 tuple2!48056) ListLongMap!1475)

(assert (=> b!4344459 (= lt!1557993 (+!513 lm!1707 lt!1558006))))

(declare-fun newBucket!200 () List!48887)

(assert (=> b!4344459 (= lt!1558006 (tuple2!48057 hash!377 newBucket!200))))

(declare-datatypes ((Unit!70279 0))(
  ( (Unit!70280) )
))
(declare-fun lt!1558011 () Unit!70279)

(declare-fun addValidProp!75 (ListLongMap!1475 Int (_ BitVec 64) List!48887) Unit!70279)

(assert (=> b!4344459 (= lt!1558011 (addValidProp!75 lm!1707 lambda!137749 hash!377 newBucket!200))))

(assert (=> b!4344459 (forall!9009 (toList!2825 lm!1707) lambda!137749)))

(declare-fun b!4344461 () Bool)

(assert (=> b!4344461 (= e!2703519 e!2703515)))

(declare-fun res!1783468 () Bool)

(assert (=> b!4344461 (=> (not res!1783468) (not e!2703515))))

(declare-datatypes ((ListMap!2069 0))(
  ( (ListMap!2070 (toList!2826 List!48887)) )
))
(declare-fun lt!1557995 () ListMap!2069)

(declare-fun contains!10877 (ListMap!2069 K!10120) Bool)

(assert (=> b!4344461 (= res!1783468 (contains!10877 lt!1557995 key!3918))))

(declare-fun extractMap!480 (List!48888) ListMap!2069)

(assert (=> b!4344461 (= lt!1557995 (extractMap!480 (toList!2825 lm!1707)))))

(declare-fun b!4344462 () Bool)

(declare-fun e!2703520 () Bool)

(declare-fun tp!1329387 () Bool)

(assert (=> b!4344462 (= e!2703520 tp!1329387)))

(declare-fun b!4344463 () Bool)

(declare-fun e!2703516 () Bool)

(declare-fun lt!1557994 () ListMap!2069)

(declare-fun lt!1558001 () ListMap!2069)

(declare-fun eq!211 (ListMap!2069 ListMap!2069) Bool)

(assert (=> b!4344463 (= e!2703516 (eq!211 lt!1557994 lt!1558001))))

(declare-fun b!4344464 () Bool)

(declare-fun res!1783470 () Bool)

(assert (=> b!4344464 (=> res!1783470 e!2703513)))

(declare-fun noDuplicateKeys!421 (List!48887) Bool)

(assert (=> b!4344464 (= res!1783470 (not (noDuplicateKeys!421 newBucket!200)))))

(declare-fun b!4344465 () Bool)

(declare-fun res!1783466 () Bool)

(assert (=> b!4344465 (=> (not res!1783466) (not e!2703514))))

(assert (=> b!4344465 (= res!1783466 (forall!9009 (toList!2825 lt!1557993) lambda!137749))))

(declare-fun b!4344466 () Bool)

(assert (=> b!4344466 (= e!2703517 (forall!9009 (toList!2825 lm!1707) lambda!137749))))

(declare-fun lt!1558014 () ListMap!2069)

(declare-fun -!222 (ListMap!2069 K!10120) ListMap!2069)

(assert (=> b!4344466 (eq!211 lt!1558014 (-!222 lt!1557995 key!3918))))

(declare-fun lt!1558002 () List!48887)

(declare-fun lt!1557999 () Unit!70279)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!37 (ListLongMap!1475 (_ BitVec 64) List!48887 K!10120 Hashable!4813) Unit!70279)

(assert (=> b!4344466 (= lt!1557999 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!37 lm!1707 hash!377 lt!1558002 key!3918 hashF!1247))))

(declare-fun lt!1558012 () ListMap!2069)

(assert (=> b!4344466 (= lt!1558012 lt!1558014)))

(declare-fun lt!1558007 () ListLongMap!1475)

(assert (=> b!4344466 (= lt!1558014 (extractMap!480 (toList!2825 lt!1558007)))))

(declare-fun lt!1558000 () List!48887)

(assert (=> b!4344466 (= lt!1558002 lt!1558000)))

(assert (=> b!4344466 (= lt!1558007 (+!513 lm!1707 (tuple2!48057 hash!377 lt!1558002)))))

(declare-fun tail!6919 (List!48887) List!48887)

(assert (=> b!4344466 (= lt!1558002 (tail!6919 newBucket!200))))

(assert (=> b!4344466 e!2703516))

(declare-fun res!1783463 () Bool)

(assert (=> b!4344466 (=> (not res!1783463) (not e!2703516))))

(declare-fun lt!1558009 () ListMap!2069)

(assert (=> b!4344466 (= res!1783463 (eq!211 lt!1558009 lt!1558001))))

(declare-fun lt!1558003 () tuple2!48054)

(declare-fun +!514 (ListMap!2069 tuple2!48054) ListMap!2069)

(assert (=> b!4344466 (= lt!1558001 (+!514 lt!1558012 lt!1558003))))

(declare-fun lt!1558010 () ListMap!2069)

(declare-fun addToMapMapFromBucket!129 (List!48887 ListMap!2069) ListMap!2069)

(assert (=> b!4344466 (= lt!1558012 (addToMapMapFromBucket!129 lt!1558000 lt!1558010))))

(declare-fun newValue!99 () V!10366)

(declare-fun lt!1558013 () Unit!70279)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!40 (ListMap!2069 K!10120 V!10366 List!48887) Unit!70279)

(assert (=> b!4344466 (= lt!1558013 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!40 lt!1558010 key!3918 newValue!99 lt!1558000))))

(assert (=> b!4344466 (= lt!1557994 lt!1558009)))

(assert (=> b!4344466 (= lt!1558009 (addToMapMapFromBucket!129 lt!1558000 (+!514 lt!1558010 lt!1558003)))))

(declare-fun lt!1557998 () ListMap!2069)

(assert (=> b!4344466 (= lt!1557998 lt!1557994)))

(declare-fun lt!1558008 () List!48887)

(assert (=> b!4344466 (= lt!1557994 (addToMapMapFromBucket!129 lt!1558008 lt!1558010))))

(assert (=> b!4344466 (= lt!1557998 (addToMapMapFromBucket!129 newBucket!200 lt!1558010))))

(assert (=> b!4344466 (= lt!1557998 (extractMap!480 (toList!2825 lt!1557993)))))

(assert (=> b!4344466 (= lt!1558010 (extractMap!480 (t!355808 (toList!2825 lm!1707))))))

(declare-fun b!4344467 () Bool)

(assert (=> b!4344467 (= e!2703515 (not e!2703513))))

(declare-fun res!1783462 () Bool)

(assert (=> b!4344467 (=> res!1783462 e!2703513)))

(assert (=> b!4344467 (= res!1783462 (not (= newBucket!200 lt!1558008)))))

(assert (=> b!4344467 (= lt!1558008 (Cons!48763 lt!1558003 lt!1558000))))

(declare-fun lt!1557997 () List!48887)

(declare-fun removePairForKey!391 (List!48887 K!10120) List!48887)

(assert (=> b!4344467 (= lt!1558000 (removePairForKey!391 lt!1557997 key!3918))))

(assert (=> b!4344467 (= lt!1558003 (tuple2!48055 key!3918 newValue!99))))

(declare-fun lt!1558004 () tuple2!48056)

(declare-fun lt!1558005 () Unit!70279)

(declare-fun forallContained!1659 (List!48888 Int tuple2!48056) Unit!70279)

(assert (=> b!4344467 (= lt!1558005 (forallContained!1659 (toList!2825 lm!1707) lambda!137749 lt!1558004))))

(declare-fun contains!10878 (List!48888 tuple2!48056) Bool)

(assert (=> b!4344467 (contains!10878 (toList!2825 lm!1707) lt!1558004)))

(assert (=> b!4344467 (= lt!1558004 (tuple2!48057 hash!377 lt!1557997))))

(declare-fun lt!1557996 () Unit!70279)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!268 (List!48888 (_ BitVec 64) List!48887) Unit!70279)

(assert (=> b!4344467 (= lt!1557996 (lemmaGetValueByKeyImpliesContainsTuple!268 (toList!2825 lm!1707) hash!377 lt!1557997))))

(declare-fun apply!11273 (ListLongMap!1475 (_ BitVec 64)) List!48887)

(assert (=> b!4344467 (= lt!1557997 (apply!11273 lm!1707 hash!377))))

(declare-fun b!4344468 () Bool)

(declare-fun res!1783464 () Bool)

(assert (=> b!4344468 (=> (not res!1783464) (not e!2703519))))

(declare-fun allKeysSameHash!379 (List!48887 (_ BitVec 64) Hashable!4813) Bool)

(assert (=> b!4344468 (= res!1783464 (allKeysSameHash!379 newBucket!200 hash!377 hashF!1247))))

(declare-fun res!1783461 () Bool)

(assert (=> start!419256 (=> (not res!1783461) (not e!2703519))))

(assert (=> start!419256 (= res!1783461 (forall!9009 (toList!2825 lm!1707) lambda!137749))))

(assert (=> start!419256 e!2703519))

(assert (=> start!419256 e!2703518))

(assert (=> start!419256 true))

(declare-fun inv!64306 (ListLongMap!1475) Bool)

(assert (=> start!419256 (and (inv!64306 lm!1707) e!2703520)))

(assert (=> start!419256 tp_is_empty!24921))

(assert (=> start!419256 tp_is_empty!24923))

(declare-fun b!4344460 () Bool)

(assert (=> b!4344460 (= e!2703514 (or (not ((_ is Cons!48764) (toList!2825 lm!1707))) (not (= (_1!27322 (h!54283 (toList!2825 lm!1707))) hash!377)) (= lt!1557993 (ListLongMap!1476 (Cons!48764 lt!1558006 (t!355808 (toList!2825 lm!1707)))))))))

(assert (= (and start!419256 res!1783461) b!4344455))

(assert (= (and b!4344455 res!1783465) b!4344456))

(assert (= (and b!4344456 res!1783471) b!4344468))

(assert (= (and b!4344468 res!1783464) b!4344461))

(assert (= (and b!4344461 res!1783468) b!4344458))

(assert (= (and b!4344458 res!1783467) b!4344467))

(assert (= (and b!4344467 (not res!1783462)) b!4344464))

(assert (= (and b!4344464 (not res!1783470)) b!4344459))

(assert (= (and b!4344459 res!1783460) b!4344465))

(assert (= (and b!4344465 res!1783466) b!4344460))

(assert (= (and b!4344459 (not res!1783469)) b!4344466))

(assert (= (and b!4344466 res!1783463) b!4344463))

(assert (= (and start!419256 ((_ is Cons!48763) newBucket!200)) b!4344457))

(assert (= start!419256 b!4344462))

(declare-fun m!4950611 () Bool)

(assert (=> b!4344461 m!4950611))

(declare-fun m!4950613 () Bool)

(assert (=> b!4344461 m!4950613))

(declare-fun m!4950615 () Bool)

(assert (=> b!4344464 m!4950615))

(declare-fun m!4950617 () Bool)

(assert (=> b!4344456 m!4950617))

(declare-fun m!4950619 () Bool)

(assert (=> b!4344467 m!4950619))

(declare-fun m!4950621 () Bool)

(assert (=> b!4344467 m!4950621))

(declare-fun m!4950623 () Bool)

(assert (=> b!4344467 m!4950623))

(declare-fun m!4950625 () Bool)

(assert (=> b!4344467 m!4950625))

(declare-fun m!4950627 () Bool)

(assert (=> b!4344467 m!4950627))

(declare-fun m!4950629 () Bool)

(assert (=> b!4344468 m!4950629))

(declare-fun m!4950631 () Bool)

(assert (=> b!4344458 m!4950631))

(declare-fun m!4950633 () Bool)

(assert (=> start!419256 m!4950633))

(declare-fun m!4950635 () Bool)

(assert (=> start!419256 m!4950635))

(declare-fun m!4950637 () Bool)

(assert (=> b!4344463 m!4950637))

(declare-fun m!4950639 () Bool)

(assert (=> b!4344466 m!4950639))

(assert (=> b!4344466 m!4950633))

(declare-fun m!4950641 () Bool)

(assert (=> b!4344466 m!4950641))

(declare-fun m!4950643 () Bool)

(assert (=> b!4344466 m!4950643))

(declare-fun m!4950645 () Bool)

(assert (=> b!4344466 m!4950645))

(declare-fun m!4950647 () Bool)

(assert (=> b!4344466 m!4950647))

(declare-fun m!4950649 () Bool)

(assert (=> b!4344466 m!4950649))

(declare-fun m!4950651 () Bool)

(assert (=> b!4344466 m!4950651))

(declare-fun m!4950653 () Bool)

(assert (=> b!4344466 m!4950653))

(assert (=> b!4344466 m!4950641))

(declare-fun m!4950655 () Bool)

(assert (=> b!4344466 m!4950655))

(declare-fun m!4950657 () Bool)

(assert (=> b!4344466 m!4950657))

(declare-fun m!4950659 () Bool)

(assert (=> b!4344466 m!4950659))

(declare-fun m!4950661 () Bool)

(assert (=> b!4344466 m!4950661))

(declare-fun m!4950663 () Bool)

(assert (=> b!4344466 m!4950663))

(declare-fun m!4950665 () Bool)

(assert (=> b!4344466 m!4950665))

(declare-fun m!4950667 () Bool)

(assert (=> b!4344466 m!4950667))

(assert (=> b!4344466 m!4950645))

(declare-fun m!4950669 () Bool)

(assert (=> b!4344466 m!4950669))

(declare-fun m!4950671 () Bool)

(assert (=> b!4344455 m!4950671))

(declare-fun m!4950673 () Bool)

(assert (=> b!4344459 m!4950673))

(declare-fun m!4950675 () Bool)

(assert (=> b!4344459 m!4950675))

(declare-fun m!4950677 () Bool)

(assert (=> b!4344459 m!4950677))

(assert (=> b!4344459 m!4950633))

(assert (=> b!4344465 m!4950673))

(check-sat (not b!4344468) (not b!4344462) (not b!4344461) tp_is_empty!24921 (not b!4344464) (not b!4344467) (not b!4344456) (not b!4344458) (not b!4344459) (not b!4344457) (not b!4344455) (not b!4344465) (not b!4344463) tp_is_empty!24923 (not b!4344466) (not start!419256))
(check-sat)
