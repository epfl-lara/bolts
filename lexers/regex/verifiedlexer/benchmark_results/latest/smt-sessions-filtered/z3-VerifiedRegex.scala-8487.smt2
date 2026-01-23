; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!441536 () Bool)

(assert start!441536)

(declare-fun tp!1336914 () Bool)

(declare-fun e!2793034 () Bool)

(declare-fun tp_is_empty!27599 () Bool)

(declare-fun tp_is_empty!27597 () Bool)

(declare-fun b!4484469 () Bool)

(assert (=> b!4484469 (= e!2793034 (and tp_is_empty!27597 tp_is_empty!27599 tp!1336914))))

(declare-fun res!1862464 () Bool)

(declare-fun e!2793041 () Bool)

(assert (=> start!441536 (=> (not res!1862464) (not e!2793041))))

(declare-datatypes ((K!11840 0))(
  ( (K!11841 (val!17743 Int)) )
))
(declare-datatypes ((V!12086 0))(
  ( (V!12087 (val!17744 Int)) )
))
(declare-datatypes ((tuple2!50754 0))(
  ( (tuple2!50755 (_1!28671 K!11840) (_2!28671 V!12086)) )
))
(declare-datatypes ((List!50552 0))(
  ( (Nil!50428) (Cons!50428 (h!56223 tuple2!50754) (t!357506 List!50552)) )
))
(declare-datatypes ((tuple2!50756 0))(
  ( (tuple2!50757 (_1!28672 (_ BitVec 64)) (_2!28672 List!50552)) )
))
(declare-datatypes ((List!50553 0))(
  ( (Nil!50429) (Cons!50429 (h!56224 tuple2!50756) (t!357507 List!50553)) )
))
(declare-datatypes ((ListLongMap!2799 0))(
  ( (ListLongMap!2800 (toList!4167 List!50553)) )
))
(declare-fun lm!1477 () ListLongMap!2799)

(declare-fun lambda!166141 () Int)

(declare-fun forall!10090 (List!50553 Int) Bool)

(assert (=> start!441536 (= res!1862464 (forall!10090 (toList!4167 lm!1477) lambda!166141))))

(assert (=> start!441536 e!2793041))

(assert (=> start!441536 true))

(declare-fun e!2793037 () Bool)

(declare-fun inv!66024 (ListLongMap!2799) Bool)

(assert (=> start!441536 (and (inv!66024 lm!1477) e!2793037)))

(assert (=> start!441536 tp_is_empty!27597))

(assert (=> start!441536 e!2793034))

(declare-fun b!4484470 () Bool)

(declare-fun res!1862460 () Bool)

(assert (=> b!4484470 (=> (not res!1862460) (not e!2793041))))

(declare-datatypes ((Hashable!5475 0))(
  ( (HashableExt!5474 (__x!31178 Int)) )
))
(declare-fun hashF!1107 () Hashable!5475)

(declare-fun allKeysSameHashInMap!1187 (ListLongMap!2799 Hashable!5475) Bool)

(assert (=> b!4484470 (= res!1862460 (allKeysSameHashInMap!1187 lm!1477 hashF!1107))))

(declare-fun b!4484471 () Bool)

(declare-fun res!1862451 () Bool)

(declare-fun e!2793033 () Bool)

(assert (=> b!4484471 (=> res!1862451 e!2793033)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4484471 (= res!1862451 (or ((_ is Nil!50429) (toList!4167 lm!1477)) (= (_1!28672 (h!56224 (toList!4167 lm!1477))) hash!344)))))

(declare-fun b!4484472 () Bool)

(declare-fun tp!1336915 () Bool)

(assert (=> b!4484472 (= e!2793037 tp!1336915)))

(declare-fun b!4484473 () Bool)

(declare-fun e!2793040 () Bool)

(declare-fun e!2793038 () Bool)

(assert (=> b!4484473 (= e!2793040 e!2793038)))

(declare-fun res!1862450 () Bool)

(assert (=> b!4484473 (=> res!1862450 e!2793038)))

(declare-fun lt!1670350 () Bool)

(assert (=> b!4484473 (= res!1862450 lt!1670350)))

(declare-datatypes ((Unit!90027 0))(
  ( (Unit!90028) )
))
(declare-fun lt!1670356 () Unit!90027)

(declare-fun e!2793036 () Unit!90027)

(assert (=> b!4484473 (= lt!1670356 e!2793036)))

(declare-fun c!763847 () Bool)

(assert (=> b!4484473 (= c!763847 lt!1670350)))

(declare-fun lt!1670352 () List!50552)

(declare-fun key!3287 () K!11840)

(declare-fun containsKey!1584 (List!50552 K!11840) Bool)

(assert (=> b!4484473 (= lt!1670350 (not (containsKey!1584 lt!1670352 key!3287)))))

(declare-fun b!4484474 () Bool)

(declare-fun e!2793035 () Bool)

(assert (=> b!4484474 (= e!2793041 e!2793035)))

(declare-fun res!1862454 () Bool)

(assert (=> b!4484474 (=> (not res!1862454) (not e!2793035))))

(declare-fun lt!1670357 () (_ BitVec 64))

(assert (=> b!4484474 (= res!1862454 (= lt!1670357 hash!344))))

(declare-fun hash!2585 (Hashable!5475 K!11840) (_ BitVec 64))

(assert (=> b!4484474 (= lt!1670357 (hash!2585 hashF!1107 key!3287))))

(declare-fun b!4484475 () Bool)

(declare-fun res!1862462 () Bool)

(assert (=> b!4484475 (=> res!1862462 e!2793038)))

(declare-fun lt!1670358 () ListLongMap!2799)

(declare-fun contains!13041 (ListLongMap!2799 (_ BitVec 64)) Bool)

(assert (=> b!4484475 (= res!1862462 (not (contains!13041 lt!1670358 lt!1670357)))))

(declare-fun b!4484476 () Bool)

(declare-fun res!1862463 () Bool)

(assert (=> b!4484476 (=> res!1862463 e!2793038)))

(assert (=> b!4484476 (= res!1862463 (not (allKeysSameHashInMap!1187 lt!1670358 hashF!1107)))))

(declare-fun b!4484477 () Bool)

(assert (=> b!4484477 (= e!2793035 (not e!2793033))))

(declare-fun res!1862458 () Bool)

(assert (=> b!4484477 (=> res!1862458 e!2793033)))

(declare-fun newBucket!178 () List!50552)

(declare-fun removePairForKey!707 (List!50552 K!11840) List!50552)

(assert (=> b!4484477 (= res!1862458 (not (= newBucket!178 (removePairForKey!707 lt!1670352 key!3287))))))

(declare-fun lt!1670347 () Unit!90027)

(declare-fun lt!1670348 () tuple2!50756)

(declare-fun forallContained!2351 (List!50553 Int tuple2!50756) Unit!90027)

(assert (=> b!4484477 (= lt!1670347 (forallContained!2351 (toList!4167 lm!1477) lambda!166141 lt!1670348))))

(declare-fun contains!13042 (List!50553 tuple2!50756) Bool)

(assert (=> b!4484477 (contains!13042 (toList!4167 lm!1477) lt!1670348)))

(assert (=> b!4484477 (= lt!1670348 (tuple2!50757 hash!344 lt!1670352))))

(declare-fun lt!1670354 () Unit!90027)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!592 (List!50553 (_ BitVec 64) List!50552) Unit!90027)

(assert (=> b!4484477 (= lt!1670354 (lemmaGetValueByKeyImpliesContainsTuple!592 (toList!4167 lm!1477) hash!344 lt!1670352))))

(declare-fun apply!11817 (ListLongMap!2799 (_ BitVec 64)) List!50552)

(assert (=> b!4484477 (= lt!1670352 (apply!11817 lm!1477 hash!344))))

(assert (=> b!4484477 (contains!13041 lm!1477 lt!1670357)))

(declare-fun lt!1670355 () Unit!90027)

(declare-fun lemmaInGenMapThenLongMapContainsHash!154 (ListLongMap!2799 K!11840 Hashable!5475) Unit!90027)

(assert (=> b!4484477 (= lt!1670355 (lemmaInGenMapThenLongMapContainsHash!154 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4484478 () Bool)

(declare-fun res!1862459 () Bool)

(assert (=> b!4484478 (=> res!1862459 e!2793033)))

(declare-fun noDuplicateKeys!1080 (List!50552) Bool)

(assert (=> b!4484478 (= res!1862459 (not (noDuplicateKeys!1080 newBucket!178)))))

(declare-fun b!4484479 () Bool)

(declare-fun res!1862455 () Bool)

(assert (=> b!4484479 (=> res!1862455 e!2793038)))

(assert (=> b!4484479 (= res!1862455 (not (forall!10090 (toList!4167 lt!1670358) lambda!166141)))))

(declare-fun b!4484480 () Bool)

(assert (=> b!4484480 (= e!2793033 e!2793040)))

(declare-fun res!1862457 () Bool)

(assert (=> b!4484480 (=> res!1862457 e!2793040)))

(assert (=> b!4484480 (= res!1862457 (not (contains!13041 lt!1670358 hash!344)))))

(declare-fun tail!7597 (ListLongMap!2799) ListLongMap!2799)

(assert (=> b!4484480 (= lt!1670358 (tail!7597 lm!1477))))

(declare-fun b!4484481 () Bool)

(declare-fun Unit!90029 () Unit!90027)

(assert (=> b!4484481 (= e!2793036 Unit!90029)))

(declare-fun lt!1670353 () Unit!90027)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!68 (ListLongMap!2799 K!11840 Hashable!5475) Unit!90027)

(assert (=> b!4484481 (= lt!1670353 (lemmaNotInItsHashBucketThenNotInMap!68 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4484481 false))

(declare-fun b!4484482 () Bool)

(declare-fun e!2793039 () Bool)

(assert (=> b!4484482 (= e!2793038 e!2793039)))

(declare-fun res!1862453 () Bool)

(assert (=> b!4484482 (=> res!1862453 e!2793039)))

(declare-fun lt!1670349 () List!50552)

(declare-datatypes ((Option!10989 0))(
  ( (None!10988) (Some!10988 (v!44392 tuple2!50754)) )
))
(declare-fun isDefined!8276 (Option!10989) Bool)

(declare-fun getPair!174 (List!50552 K!11840) Option!10989)

(assert (=> b!4484482 (= res!1862453 (not (isDefined!8276 (getPair!174 lt!1670349 key!3287))))))

(declare-fun lt!1670345 () Unit!90027)

(declare-fun lt!1670351 () tuple2!50756)

(assert (=> b!4484482 (= lt!1670345 (forallContained!2351 (toList!4167 lt!1670358) lambda!166141 lt!1670351))))

(assert (=> b!4484482 (contains!13042 (toList!4167 lt!1670358) lt!1670351)))

(assert (=> b!4484482 (= lt!1670351 (tuple2!50757 lt!1670357 lt!1670349))))

(declare-fun lt!1670346 () Unit!90027)

(declare-fun lemmaGetValueImpliesTupleContained!43 (ListLongMap!2799 (_ BitVec 64) List!50552) Unit!90027)

(assert (=> b!4484482 (= lt!1670346 (lemmaGetValueImpliesTupleContained!43 lt!1670358 lt!1670357 lt!1670349))))

(assert (=> b!4484482 (= lt!1670349 (apply!11817 lt!1670358 lt!1670357))))

(declare-fun b!4484483 () Bool)

(declare-fun res!1862452 () Bool)

(assert (=> b!4484483 (=> (not res!1862452) (not e!2793035))))

(declare-fun allKeysSameHash!934 (List!50552 (_ BitVec 64) Hashable!5475) Bool)

(assert (=> b!4484483 (= res!1862452 (allKeysSameHash!934 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4484484 () Bool)

(declare-fun res!1862461 () Bool)

(assert (=> b!4484484 (=> (not res!1862461) (not e!2793041))))

(declare-datatypes ((ListMap!3429 0))(
  ( (ListMap!3430 (toList!4168 List!50552)) )
))
(declare-fun contains!13043 (ListMap!3429 K!11840) Bool)

(declare-fun extractMap!1136 (List!50553) ListMap!3429)

(assert (=> b!4484484 (= res!1862461 (contains!13043 (extractMap!1136 (toList!4167 lm!1477)) key!3287))))

(declare-fun b!4484485 () Bool)

(assert (=> b!4484485 (= e!2793039 (forall!10090 (toList!4167 lt!1670358) lambda!166141))))

(declare-fun b!4484486 () Bool)

(declare-fun res!1862456 () Bool)

(assert (=> b!4484486 (=> res!1862456 e!2793040)))

(assert (=> b!4484486 (= res!1862456 (not (= (apply!11817 lt!1670358 hash!344) lt!1670352)))))

(declare-fun b!4484487 () Bool)

(declare-fun Unit!90030 () Unit!90027)

(assert (=> b!4484487 (= e!2793036 Unit!90030)))

(declare-fun b!4484488 () Bool)

(declare-fun res!1862449 () Bool)

(assert (=> b!4484488 (=> res!1862449 e!2793040)))

(assert (=> b!4484488 (= res!1862449 (not (contains!13042 (t!357507 (toList!4167 lm!1477)) lt!1670348)))))

(assert (= (and start!441536 res!1862464) b!4484470))

(assert (= (and b!4484470 res!1862460) b!4484484))

(assert (= (and b!4484484 res!1862461) b!4484474))

(assert (= (and b!4484474 res!1862454) b!4484483))

(assert (= (and b!4484483 res!1862452) b!4484477))

(assert (= (and b!4484477 (not res!1862458)) b!4484478))

(assert (= (and b!4484478 (not res!1862459)) b!4484471))

(assert (= (and b!4484471 (not res!1862451)) b!4484480))

(assert (= (and b!4484480 (not res!1862457)) b!4484486))

(assert (= (and b!4484486 (not res!1862456)) b!4484488))

(assert (= (and b!4484488 (not res!1862449)) b!4484473))

(assert (= (and b!4484473 c!763847) b!4484481))

(assert (= (and b!4484473 (not c!763847)) b!4484487))

(assert (= (and b!4484473 (not res!1862450)) b!4484479))

(assert (= (and b!4484479 (not res!1862455)) b!4484476))

(assert (= (and b!4484476 (not res!1862463)) b!4484475))

(assert (= (and b!4484475 (not res!1862462)) b!4484482))

(assert (= (and b!4484482 (not res!1862453)) b!4484485))

(assert (= start!441536 b!4484472))

(assert (= (and start!441536 ((_ is Cons!50428) newBucket!178)) b!4484469))

(declare-fun m!5205065 () Bool)

(assert (=> b!4484475 m!5205065))

(declare-fun m!5205067 () Bool)

(assert (=> b!4484478 m!5205067))

(declare-fun m!5205069 () Bool)

(assert (=> b!4484473 m!5205069))

(declare-fun m!5205071 () Bool)

(assert (=> b!4484483 m!5205071))

(declare-fun m!5205073 () Bool)

(assert (=> b!4484486 m!5205073))

(declare-fun m!5205075 () Bool)

(assert (=> b!4484479 m!5205075))

(declare-fun m!5205077 () Bool)

(assert (=> b!4484474 m!5205077))

(declare-fun m!5205079 () Bool)

(assert (=> b!4484482 m!5205079))

(declare-fun m!5205081 () Bool)

(assert (=> b!4484482 m!5205081))

(assert (=> b!4484482 m!5205079))

(declare-fun m!5205083 () Bool)

(assert (=> b!4484482 m!5205083))

(declare-fun m!5205085 () Bool)

(assert (=> b!4484482 m!5205085))

(declare-fun m!5205087 () Bool)

(assert (=> b!4484482 m!5205087))

(declare-fun m!5205089 () Bool)

(assert (=> b!4484482 m!5205089))

(assert (=> b!4484485 m!5205075))

(declare-fun m!5205091 () Bool)

(assert (=> start!441536 m!5205091))

(declare-fun m!5205093 () Bool)

(assert (=> start!441536 m!5205093))

(declare-fun m!5205095 () Bool)

(assert (=> b!4484481 m!5205095))

(declare-fun m!5205097 () Bool)

(assert (=> b!4484488 m!5205097))

(declare-fun m!5205099 () Bool)

(assert (=> b!4484477 m!5205099))

(declare-fun m!5205101 () Bool)

(assert (=> b!4484477 m!5205101))

(declare-fun m!5205103 () Bool)

(assert (=> b!4484477 m!5205103))

(declare-fun m!5205105 () Bool)

(assert (=> b!4484477 m!5205105))

(declare-fun m!5205107 () Bool)

(assert (=> b!4484477 m!5205107))

(declare-fun m!5205109 () Bool)

(assert (=> b!4484477 m!5205109))

(declare-fun m!5205111 () Bool)

(assert (=> b!4484477 m!5205111))

(declare-fun m!5205113 () Bool)

(assert (=> b!4484480 m!5205113))

(declare-fun m!5205115 () Bool)

(assert (=> b!4484480 m!5205115))

(declare-fun m!5205117 () Bool)

(assert (=> b!4484476 m!5205117))

(declare-fun m!5205119 () Bool)

(assert (=> b!4484470 m!5205119))

(declare-fun m!5205121 () Bool)

(assert (=> b!4484484 m!5205121))

(assert (=> b!4484484 m!5205121))

(declare-fun m!5205123 () Bool)

(assert (=> b!4484484 m!5205123))

(check-sat (not b!4484485) (not b!4484479) (not b!4484469) (not b!4484470) (not b!4484482) (not b!4484477) (not start!441536) (not b!4484484) (not b!4484472) tp_is_empty!27599 tp_is_empty!27597 (not b!4484486) (not b!4484474) (not b!4484478) (not b!4484480) (not b!4484476) (not b!4484488) (not b!4484473) (not b!4484475) (not b!4484483) (not b!4484481))
(check-sat)
