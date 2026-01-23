; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!440872 () Bool)

(assert start!440872)

(declare-fun b!4481504 () Bool)

(declare-fun res!1860721 () Bool)

(declare-fun e!2791180 () Bool)

(assert (=> b!4481504 (=> res!1860721 e!2791180)))

(declare-datatypes ((K!11790 0))(
  ( (K!11791 (val!17703 Int)) )
))
(declare-datatypes ((V!12036 0))(
  ( (V!12037 (val!17704 Int)) )
))
(declare-datatypes ((tuple2!50674 0))(
  ( (tuple2!50675 (_1!28631 K!11790) (_2!28631 V!12036)) )
))
(declare-datatypes ((List!50504 0))(
  ( (Nil!50380) (Cons!50380 (h!56167 tuple2!50674) (t!357458 List!50504)) )
))
(declare-fun newBucket!178 () List!50504)

(declare-datatypes ((tuple2!50676 0))(
  ( (tuple2!50677 (_1!28632 (_ BitVec 64)) (_2!28632 List!50504)) )
))
(declare-datatypes ((List!50505 0))(
  ( (Nil!50381) (Cons!50381 (h!56168 tuple2!50676) (t!357459 List!50505)) )
))
(declare-datatypes ((ListLongMap!2759 0))(
  ( (ListLongMap!2760 (toList!4127 List!50505)) )
))
(declare-fun lt!1668239 () ListLongMap!2759)

(declare-datatypes ((ListMap!3389 0))(
  ( (ListMap!3390 (toList!4128 List!50504)) )
))
(declare-fun lt!1668230 () ListMap!3389)

(declare-fun eq!553 (ListMap!3389 ListMap!3389) Bool)

(declare-fun extractMap!1116 (List!50505) ListMap!3389)

(declare-fun addToMapMapFromBucket!615 (List!50504 ListMap!3389) ListMap!3389)

(assert (=> b!4481504 (= res!1860721 (not (eq!553 (extractMap!1116 (toList!4127 lt!1668239)) (addToMapMapFromBucket!615 newBucket!178 lt!1668230))))))

(declare-fun b!4481505 () Bool)

(declare-fun e!2791178 () Bool)

(declare-fun lm!1477 () ListLongMap!2759)

(declare-fun lambda!165491 () Int)

(declare-fun forall!10056 (List!50505 Int) Bool)

(assert (=> b!4481505 (= e!2791178 (forall!10056 (toList!4127 lm!1477) lambda!165491))))

(declare-fun b!4481506 () Bool)

(declare-datatypes ((Unit!89785 0))(
  ( (Unit!89786) )
))
(declare-fun e!2791182 () Unit!89785)

(declare-fun Unit!89787 () Unit!89785)

(assert (=> b!4481506 (= e!2791182 Unit!89787)))

(declare-datatypes ((Hashable!5455 0))(
  ( (HashableExt!5454 (__x!31158 Int)) )
))
(declare-fun hashF!1107 () Hashable!5455)

(declare-fun key!3287 () K!11790)

(declare-fun lt!1668217 () Unit!89785)

(declare-fun lt!1668225 () ListLongMap!2759)

(declare-fun lemmaInGenMapThenLongMapContainsHash!134 (ListLongMap!2759 K!11790 Hashable!5455) Unit!89785)

(assert (=> b!4481506 (= lt!1668217 (lemmaInGenMapThenLongMapContainsHash!134 lt!1668225 key!3287 hashF!1107))))

(declare-fun res!1860709 () Bool)

(declare-fun lt!1668234 () (_ BitVec 64))

(declare-fun contains!12973 (ListLongMap!2759 (_ BitVec 64)) Bool)

(assert (=> b!4481506 (= res!1860709 (contains!12973 lt!1668225 lt!1668234))))

(declare-fun e!2791175 () Bool)

(assert (=> b!4481506 (=> (not res!1860709) (not e!2791175))))

(assert (=> b!4481506 e!2791175))

(declare-fun b!4481507 () Bool)

(assert (=> b!4481507 (= e!2791175 false)))

(declare-fun b!4481509 () Bool)

(declare-fun e!2791173 () Bool)

(declare-fun e!2791177 () Bool)

(assert (=> b!4481509 (= e!2791173 e!2791177)))

(declare-fun res!1860720 () Bool)

(assert (=> b!4481509 (=> res!1860720 e!2791177)))

(declare-fun lt!1668227 () Bool)

(assert (=> b!4481509 (= res!1860720 lt!1668227)))

(declare-fun lt!1668236 () Unit!89785)

(assert (=> b!4481509 (= lt!1668236 e!2791182)))

(declare-fun c!763391 () Bool)

(assert (=> b!4481509 (= c!763391 lt!1668227)))

(declare-fun lt!1668240 () ListMap!3389)

(declare-fun contains!12974 (ListMap!3389 K!11790) Bool)

(assert (=> b!4481509 (= lt!1668227 (contains!12974 lt!1668240 key!3287))))

(declare-fun b!4481510 () Bool)

(declare-fun e!2791183 () Bool)

(declare-fun e!2791184 () Bool)

(assert (=> b!4481510 (= e!2791183 e!2791184)))

(declare-fun res!1860716 () Bool)

(assert (=> b!4481510 (=> (not res!1860716) (not e!2791184))))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4481510 (= res!1860716 (= lt!1668234 hash!344))))

(declare-fun hash!2553 (Hashable!5455 K!11790) (_ BitVec 64))

(assert (=> b!4481510 (= lt!1668234 (hash!2553 hashF!1107 key!3287))))

(declare-fun b!4481511 () Bool)

(declare-fun e!2791179 () Bool)

(assert (=> b!4481511 (= e!2791179 e!2791183)))

(declare-fun res!1860707 () Bool)

(assert (=> b!4481511 (=> (not res!1860707) (not e!2791183))))

(declare-fun lt!1668232 () ListMap!3389)

(assert (=> b!4481511 (= res!1860707 (contains!12974 lt!1668232 key!3287))))

(assert (=> b!4481511 (= lt!1668232 (extractMap!1116 (toList!4127 lm!1477)))))

(declare-fun b!4481512 () Bool)

(declare-fun res!1860718 () Bool)

(assert (=> b!4481512 (=> (not res!1860718) (not e!2791179))))

(declare-fun allKeysSameHashInMap!1167 (ListLongMap!2759 Hashable!5455) Bool)

(assert (=> b!4481512 (= res!1860718 (allKeysSameHashInMap!1167 lm!1477 hashF!1107))))

(declare-fun b!4481513 () Bool)

(declare-fun res!1860717 () Bool)

(declare-fun e!2791185 () Bool)

(assert (=> b!4481513 (=> res!1860717 e!2791185)))

(get-info :version)

(assert (=> b!4481513 (= res!1860717 (or ((_ is Nil!50381) (toList!4127 lm!1477)) (not (= (_1!28632 (h!56168 (toList!4127 lm!1477))) hash!344))))))

(declare-fun tp!1336699 () Bool)

(declare-fun e!2791171 () Bool)

(declare-fun b!4481514 () Bool)

(declare-fun tp_is_empty!27517 () Bool)

(declare-fun tp_is_empty!27519 () Bool)

(assert (=> b!4481514 (= e!2791171 (and tp_is_empty!27517 tp_is_empty!27519 tp!1336699))))

(declare-fun b!4481515 () Bool)

(declare-fun e!2791174 () Unit!89785)

(declare-fun Unit!89788 () Unit!89785)

(assert (=> b!4481515 (= e!2791174 Unit!89788)))

(declare-fun lt!1668238 () Unit!89785)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!60 (ListLongMap!2759 K!11790 Hashable!5455) Unit!89785)

(assert (=> b!4481515 (= lt!1668238 (lemmaNotInItsHashBucketThenNotInMap!60 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4481515 false))

(declare-fun b!4481516 () Bool)

(assert (=> b!4481516 (= e!2791177 e!2791180)))

(declare-fun res!1860708 () Bool)

(assert (=> b!4481516 (=> res!1860708 e!2791180)))

(declare-fun lt!1668223 () tuple2!50676)

(assert (=> b!4481516 (= res!1860708 (not (= (toList!4127 lt!1668239) (Cons!50381 lt!1668223 (t!357459 (toList!4127 lm!1477))))))))

(declare-fun lt!1668231 () tuple2!50676)

(declare-fun lt!1668235 () List!50505)

(declare-fun -!322 (ListMap!3389 K!11790) ListMap!3389)

(assert (=> b!4481516 (eq!553 (extractMap!1116 (Cons!50381 lt!1668223 lt!1668235)) (-!322 (extractMap!1116 (Cons!50381 lt!1668231 lt!1668235)) key!3287))))

(declare-fun tail!7572 (List!50505) List!50505)

(assert (=> b!4481516 (= lt!1668235 (tail!7572 (toList!4127 lm!1477)))))

(declare-fun lt!1668220 () Unit!89785)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!20 (ListLongMap!2759 (_ BitVec 64) List!50504 List!50504 K!11790 Hashable!5455) Unit!89785)

(assert (=> b!4481516 (= lt!1668220 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!20 lm!1477 hash!344 (_2!28632 (h!56168 (toList!4127 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4481517 () Bool)

(declare-fun e!2791169 () Bool)

(declare-fun e!2791172 () Bool)

(assert (=> b!4481517 (= e!2791169 e!2791172)))

(declare-fun res!1860713 () Bool)

(assert (=> b!4481517 (=> res!1860713 e!2791172)))

(declare-fun lt!1668228 () List!50505)

(declare-fun containsKeyBiggerList!60 (List!50505 K!11790) Bool)

(assert (=> b!4481517 (= res!1860713 (not (containsKeyBiggerList!60 lt!1668228 key!3287)))))

(assert (=> b!4481517 (= lt!1668228 (Cons!50381 (h!56168 (toList!4127 lm!1477)) Nil!50381))))

(declare-fun res!1860712 () Bool)

(assert (=> start!440872 (=> (not res!1860712) (not e!2791179))))

(assert (=> start!440872 (= res!1860712 (forall!10056 (toList!4127 lm!1477) lambda!165491))))

(assert (=> start!440872 e!2791179))

(assert (=> start!440872 true))

(declare-fun e!2791181 () Bool)

(declare-fun inv!65974 (ListLongMap!2759) Bool)

(assert (=> start!440872 (and (inv!65974 lm!1477) e!2791181)))

(assert (=> start!440872 tp_is_empty!27517))

(assert (=> start!440872 e!2791171))

(declare-fun b!4481508 () Bool)

(declare-fun tp!1336698 () Bool)

(assert (=> b!4481508 (= e!2791181 tp!1336698)))

(declare-fun b!4481518 () Bool)

(declare-fun e!2791170 () Bool)

(assert (=> b!4481518 (= e!2791170 e!2791173)))

(declare-fun res!1860722 () Bool)

(assert (=> b!4481518 (=> res!1860722 e!2791173)))

(assert (=> b!4481518 (= res!1860722 (not (= lt!1668240 lt!1668230)))))

(assert (=> b!4481518 (= lt!1668230 (extractMap!1116 (t!357459 (toList!4127 lm!1477))))))

(assert (=> b!4481518 (= lt!1668240 (extractMap!1116 (toList!4127 lt!1668225)))))

(declare-fun b!4481519 () Bool)

(declare-fun e!2791176 () Bool)

(assert (=> b!4481519 (= e!2791176 e!2791170)))

(declare-fun res!1860705 () Bool)

(assert (=> b!4481519 (=> res!1860705 e!2791170)))

(declare-fun +!1418 (ListLongMap!2759 tuple2!50676) ListLongMap!2759)

(assert (=> b!4481519 (= res!1860705 (not (= lt!1668239 (+!1418 lt!1668225 lt!1668223))))))

(declare-fun tail!7573 (ListLongMap!2759) ListLongMap!2759)

(assert (=> b!4481519 (= lt!1668225 (tail!7573 lm!1477))))

(declare-fun b!4481520 () Bool)

(declare-fun res!1860714 () Bool)

(assert (=> b!4481520 (=> res!1860714 e!2791185)))

(declare-fun noDuplicateKeys!1060 (List!50504) Bool)

(assert (=> b!4481520 (= res!1860714 (not (noDuplicateKeys!1060 newBucket!178)))))

(declare-fun b!4481521 () Bool)

(assert (=> b!4481521 (= e!2791184 (not e!2791185))))

(declare-fun res!1860706 () Bool)

(assert (=> b!4481521 (=> res!1860706 e!2791185)))

(declare-fun lt!1668219 () List!50504)

(declare-fun removePairForKey!687 (List!50504 K!11790) List!50504)

(assert (=> b!4481521 (= res!1860706 (not (= newBucket!178 (removePairForKey!687 lt!1668219 key!3287))))))

(declare-fun lt!1668218 () tuple2!50676)

(declare-fun lt!1668237 () Unit!89785)

(declare-fun forallContained!2317 (List!50505 Int tuple2!50676) Unit!89785)

(assert (=> b!4481521 (= lt!1668237 (forallContained!2317 (toList!4127 lm!1477) lambda!165491 lt!1668218))))

(declare-fun contains!12975 (List!50505 tuple2!50676) Bool)

(assert (=> b!4481521 (contains!12975 (toList!4127 lm!1477) lt!1668218)))

(assert (=> b!4481521 (= lt!1668218 (tuple2!50677 hash!344 lt!1668219))))

(declare-fun lt!1668224 () Unit!89785)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!572 (List!50505 (_ BitVec 64) List!50504) Unit!89785)

(assert (=> b!4481521 (= lt!1668224 (lemmaGetValueByKeyImpliesContainsTuple!572 (toList!4127 lm!1477) hash!344 lt!1668219))))

(declare-fun apply!11797 (ListLongMap!2759 (_ BitVec 64)) List!50504)

(assert (=> b!4481521 (= lt!1668219 (apply!11797 lm!1477 hash!344))))

(assert (=> b!4481521 (contains!12973 lm!1477 lt!1668234)))

(declare-fun lt!1668226 () Unit!89785)

(assert (=> b!4481521 (= lt!1668226 (lemmaInGenMapThenLongMapContainsHash!134 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4481522 () Bool)

(declare-fun res!1860715 () Bool)

(assert (=> b!4481522 (=> res!1860715 e!2791178)))

(declare-fun lt!1668221 () ListMap!3389)

(assert (=> b!4481522 (= res!1860715 (not (eq!553 lt!1668221 lt!1668232)))))

(declare-fun b!4481523 () Bool)

(declare-fun Unit!89789 () Unit!89785)

(assert (=> b!4481523 (= e!2791174 Unit!89789)))

(declare-fun b!4481524 () Bool)

(assert (=> b!4481524 (= e!2791180 e!2791178)))

(declare-fun res!1860704 () Bool)

(assert (=> b!4481524 (=> res!1860704 e!2791178)))

(assert (=> b!4481524 (= res!1860704 (not (eq!553 lt!1668221 (addToMapMapFromBucket!615 (_2!28632 (h!56168 (toList!4127 lm!1477))) lt!1668230))))))

(assert (=> b!4481524 (= lt!1668221 (extractMap!1116 (toList!4127 (+!1418 lm!1477 lt!1668231))))))

(declare-fun b!4481525 () Bool)

(declare-fun res!1860711 () Bool)

(assert (=> b!4481525 (=> (not res!1860711) (not e!2791184))))

(declare-fun allKeysSameHash!914 (List!50504 (_ BitVec 64) Hashable!5455) Bool)

(assert (=> b!4481525 (= res!1860711 (allKeysSameHash!914 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4481526 () Bool)

(assert (=> b!4481526 (= e!2791172 e!2791176)))

(declare-fun res!1860710 () Bool)

(assert (=> b!4481526 (=> res!1860710 e!2791176)))

(assert (=> b!4481526 (= res!1860710 (not (= (t!357459 (toList!4127 lm!1477)) (tail!7572 (toList!4127 lt!1668239)))))))

(assert (=> b!4481526 (= lt!1668239 (+!1418 lm!1477 lt!1668223))))

(assert (=> b!4481526 (eq!553 (extractMap!1116 (Cons!50381 lt!1668223 Nil!50381)) (-!322 (extractMap!1116 (Cons!50381 lt!1668231 Nil!50381)) key!3287))))

(assert (=> b!4481526 (= lt!1668231 (tuple2!50677 hash!344 (_2!28632 (h!56168 (toList!4127 lm!1477)))))))

(assert (=> b!4481526 (= lt!1668223 (tuple2!50677 hash!344 newBucket!178))))

(declare-fun lt!1668216 () Unit!89785)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!52 ((_ BitVec 64) List!50504 List!50504 K!11790 Hashable!5455) Unit!89785)

(assert (=> b!4481526 (= lt!1668216 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!52 hash!344 (_2!28632 (h!56168 (toList!4127 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4481526 (contains!12974 (extractMap!1116 lt!1668228) key!3287)))

(declare-fun lt!1668229 () Unit!89785)

(declare-fun lemmaListContainsThenExtractedMapContains!56 (ListLongMap!2759 K!11790 Hashable!5455) Unit!89785)

(assert (=> b!4481526 (= lt!1668229 (lemmaListContainsThenExtractedMapContains!56 (ListLongMap!2760 lt!1668228) key!3287 hashF!1107))))

(declare-fun b!4481527 () Bool)

(declare-fun Unit!89790 () Unit!89785)

(assert (=> b!4481527 (= e!2791182 Unit!89790)))

(declare-fun b!4481528 () Bool)

(assert (=> b!4481528 (= e!2791185 e!2791169)))

(declare-fun res!1860719 () Bool)

(assert (=> b!4481528 (=> res!1860719 e!2791169)))

(declare-fun lt!1668222 () Bool)

(assert (=> b!4481528 (= res!1860719 lt!1668222)))

(declare-fun lt!1668233 () Unit!89785)

(assert (=> b!4481528 (= lt!1668233 e!2791174)))

(declare-fun c!763390 () Bool)

(assert (=> b!4481528 (= c!763390 lt!1668222)))

(declare-fun containsKey!1552 (List!50504 K!11790) Bool)

(assert (=> b!4481528 (= lt!1668222 (not (containsKey!1552 (_2!28632 (h!56168 (toList!4127 lm!1477))) key!3287)))))

(assert (= (and start!440872 res!1860712) b!4481512))

(assert (= (and b!4481512 res!1860718) b!4481511))

(assert (= (and b!4481511 res!1860707) b!4481510))

(assert (= (and b!4481510 res!1860716) b!4481525))

(assert (= (and b!4481525 res!1860711) b!4481521))

(assert (= (and b!4481521 (not res!1860706)) b!4481520))

(assert (= (and b!4481520 (not res!1860714)) b!4481513))

(assert (= (and b!4481513 (not res!1860717)) b!4481528))

(assert (= (and b!4481528 c!763390) b!4481515))

(assert (= (and b!4481528 (not c!763390)) b!4481523))

(assert (= (and b!4481528 (not res!1860719)) b!4481517))

(assert (= (and b!4481517 (not res!1860713)) b!4481526))

(assert (= (and b!4481526 (not res!1860710)) b!4481519))

(assert (= (and b!4481519 (not res!1860705)) b!4481518))

(assert (= (and b!4481518 (not res!1860722)) b!4481509))

(assert (= (and b!4481509 c!763391) b!4481506))

(assert (= (and b!4481509 (not c!763391)) b!4481527))

(assert (= (and b!4481506 res!1860709) b!4481507))

(assert (= (and b!4481509 (not res!1860720)) b!4481516))

(assert (= (and b!4481516 (not res!1860708)) b!4481504))

(assert (= (and b!4481504 (not res!1860721)) b!4481524))

(assert (= (and b!4481524 (not res!1860704)) b!4481522))

(assert (= (and b!4481522 (not res!1860715)) b!4481505))

(assert (= start!440872 b!4481508))

(assert (= (and start!440872 ((_ is Cons!50380) newBucket!178)) b!4481514))

(declare-fun m!5201337 () Bool)

(assert (=> b!4481515 m!5201337))

(declare-fun m!5201339 () Bool)

(assert (=> b!4481517 m!5201339))

(declare-fun m!5201341 () Bool)

(assert (=> b!4481519 m!5201341))

(declare-fun m!5201343 () Bool)

(assert (=> b!4481519 m!5201343))

(declare-fun m!5201345 () Bool)

(assert (=> b!4481525 m!5201345))

(declare-fun m!5201347 () Bool)

(assert (=> b!4481512 m!5201347))

(declare-fun m!5201349 () Bool)

(assert (=> b!4481509 m!5201349))

(declare-fun m!5201351 () Bool)

(assert (=> b!4481510 m!5201351))

(declare-fun m!5201353 () Bool)

(assert (=> start!440872 m!5201353))

(declare-fun m!5201355 () Bool)

(assert (=> start!440872 m!5201355))

(declare-fun m!5201357 () Bool)

(assert (=> b!4481528 m!5201357))

(assert (=> b!4481505 m!5201353))

(declare-fun m!5201359 () Bool)

(assert (=> b!4481521 m!5201359))

(declare-fun m!5201361 () Bool)

(assert (=> b!4481521 m!5201361))

(declare-fun m!5201363 () Bool)

(assert (=> b!4481521 m!5201363))

(declare-fun m!5201365 () Bool)

(assert (=> b!4481521 m!5201365))

(declare-fun m!5201367 () Bool)

(assert (=> b!4481521 m!5201367))

(declare-fun m!5201369 () Bool)

(assert (=> b!4481521 m!5201369))

(declare-fun m!5201371 () Bool)

(assert (=> b!4481521 m!5201371))

(declare-fun m!5201373 () Bool)

(assert (=> b!4481522 m!5201373))

(declare-fun m!5201375 () Bool)

(assert (=> b!4481518 m!5201375))

(declare-fun m!5201377 () Bool)

(assert (=> b!4481518 m!5201377))

(declare-fun m!5201379 () Bool)

(assert (=> b!4481524 m!5201379))

(assert (=> b!4481524 m!5201379))

(declare-fun m!5201381 () Bool)

(assert (=> b!4481524 m!5201381))

(declare-fun m!5201383 () Bool)

(assert (=> b!4481524 m!5201383))

(declare-fun m!5201385 () Bool)

(assert (=> b!4481524 m!5201385))

(declare-fun m!5201387 () Bool)

(assert (=> b!4481526 m!5201387))

(declare-fun m!5201389 () Bool)

(assert (=> b!4481526 m!5201389))

(declare-fun m!5201391 () Bool)

(assert (=> b!4481526 m!5201391))

(declare-fun m!5201393 () Bool)

(assert (=> b!4481526 m!5201393))

(declare-fun m!5201395 () Bool)

(assert (=> b!4481526 m!5201395))

(declare-fun m!5201397 () Bool)

(assert (=> b!4481526 m!5201397))

(assert (=> b!4481526 m!5201391))

(declare-fun m!5201399 () Bool)

(assert (=> b!4481526 m!5201399))

(assert (=> b!4481526 m!5201387))

(assert (=> b!4481526 m!5201393))

(declare-fun m!5201401 () Bool)

(assert (=> b!4481526 m!5201401))

(declare-fun m!5201403 () Bool)

(assert (=> b!4481526 m!5201403))

(declare-fun m!5201405 () Bool)

(assert (=> b!4481526 m!5201405))

(assert (=> b!4481526 m!5201395))

(declare-fun m!5201407 () Bool)

(assert (=> b!4481506 m!5201407))

(declare-fun m!5201409 () Bool)

(assert (=> b!4481506 m!5201409))

(declare-fun m!5201411 () Bool)

(assert (=> b!4481520 m!5201411))

(declare-fun m!5201413 () Bool)

(assert (=> b!4481511 m!5201413))

(declare-fun m!5201415 () Bool)

(assert (=> b!4481511 m!5201415))

(declare-fun m!5201417 () Bool)

(assert (=> b!4481504 m!5201417))

(declare-fun m!5201419 () Bool)

(assert (=> b!4481504 m!5201419))

(assert (=> b!4481504 m!5201417))

(assert (=> b!4481504 m!5201419))

(declare-fun m!5201421 () Bool)

(assert (=> b!4481504 m!5201421))

(declare-fun m!5201423 () Bool)

(assert (=> b!4481516 m!5201423))

(declare-fun m!5201425 () Bool)

(assert (=> b!4481516 m!5201425))

(declare-fun m!5201427 () Bool)

(assert (=> b!4481516 m!5201427))

(declare-fun m!5201429 () Bool)

(assert (=> b!4481516 m!5201429))

(declare-fun m!5201431 () Bool)

(assert (=> b!4481516 m!5201431))

(declare-fun m!5201433 () Bool)

(assert (=> b!4481516 m!5201433))

(assert (=> b!4481516 m!5201429))

(assert (=> b!4481516 m!5201433))

(assert (=> b!4481516 m!5201427))

(check-sat (not b!4481508) (not b!4481519) (not b!4481518) (not b!4481526) (not b!4481506) (not b!4481509) (not b!4481522) (not b!4481528) (not b!4481505) (not b!4481514) (not b!4481516) (not b!4481520) (not b!4481512) (not b!4481525) (not b!4481517) (not b!4481524) (not start!440872) (not b!4481515) (not b!4481521) (not b!4481504) tp_is_empty!27517 (not b!4481511) tp_is_empty!27519 (not b!4481510))
(check-sat)
