; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!448904 () Bool)

(assert start!448904)

(declare-fun bs!864210 () Bool)

(declare-fun b!4528468 () Bool)

(assert (= bs!864210 (and b!4528468 start!448904)))

(declare-fun lambda!173906 () Int)

(declare-fun lambda!173905 () Int)

(assert (=> bs!864210 (not (= lambda!173906 lambda!173905))))

(assert (=> b!4528468 true))

(assert (=> b!4528468 true))

(assert (=> b!4528468 true))

(declare-fun b!4528467 () Bool)

(declare-fun e!2821617 () Bool)

(declare-fun e!2821618 () Bool)

(assert (=> b!4528467 (= e!2821617 e!2821618)))

(declare-fun res!1885650 () Bool)

(assert (=> b!4528467 (=> res!1885650 e!2821618)))

(declare-datatypes ((K!12075 0))(
  ( (K!12076 (val!17931 Int)) )
))
(declare-datatypes ((V!12321 0))(
  ( (V!12322 (val!17932 Int)) )
))
(declare-datatypes ((tuple2!51130 0))(
  ( (tuple2!51131 (_1!28859 K!12075) (_2!28859 V!12321)) )
))
(declare-datatypes ((List!50810 0))(
  ( (Nil!50686) (Cons!50686 (h!56551 tuple2!51130) (t!357772 List!50810)) )
))
(declare-datatypes ((ListMap!3617 0))(
  ( (ListMap!3618 (toList!4355 List!50810)) )
))
(declare-fun lt!1704207 () ListMap!3617)

(declare-fun lt!1704187 () ListMap!3617)

(declare-fun eq!631 (ListMap!3617 ListMap!3617) Bool)

(assert (=> b!4528467 (= res!1885650 (not (eq!631 lt!1704207 lt!1704187)))))

(declare-fun lt!1704196 () ListMap!3617)

(assert (=> b!4528467 (eq!631 lt!1704196 lt!1704187)))

(declare-datatypes ((tuple2!51132 0))(
  ( (tuple2!51133 (_1!28860 (_ BitVec 64)) (_2!28860 List!50810)) )
))
(declare-fun lt!1704216 () tuple2!51132)

(declare-fun lt!1704212 () ListMap!3617)

(declare-fun addToMapMapFromBucket!701 (List!50810 ListMap!3617) ListMap!3617)

(assert (=> b!4528467 (= lt!1704187 (addToMapMapFromBucket!701 (_2!28860 lt!1704216) lt!1704212))))

(declare-fun lt!1704205 () ListMap!3617)

(declare-datatypes ((Unit!96482 0))(
  ( (Unit!96483) )
))
(declare-fun lt!1704208 () Unit!96482)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!50 (ListMap!3617 ListMap!3617 List!50810) Unit!96482)

(assert (=> b!4528467 (= lt!1704208 (lemmaAddToMapFromBucketPreservesEquivalence!50 lt!1704205 lt!1704212 (_2!28860 lt!1704216)))))

(declare-fun e!2821611 () Unit!96482)

(declare-fun Unit!96484 () Unit!96482)

(assert (=> b!4528468 (= e!2821611 Unit!96484)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4528468 (not (= hash!344 (_1!28860 lt!1704216)))))

(declare-datatypes ((Option!11145 0))(
  ( (None!11144) (Some!11144 (v!44786 tuple2!51130)) )
))
(declare-fun lt!1704201 () Option!11145)

(declare-fun key!3287 () K!12075)

(declare-fun getPair!190 (List!50810 K!12075) Option!11145)

(assert (=> b!4528468 (= lt!1704201 (getPair!190 (_2!28860 lt!1704216) key!3287))))

(declare-fun lt!1704197 () Unit!96482)

(declare-datatypes ((List!50811 0))(
  ( (Nil!50687) (Cons!50687 (h!56552 tuple2!51132) (t!357773 List!50811)) )
))
(declare-datatypes ((ListLongMap!2987 0))(
  ( (ListLongMap!2988 (toList!4356 List!50811)) )
))
(declare-fun lm!1477 () ListLongMap!2987)

(declare-fun forallContained!2550 (List!50811 Int tuple2!51132) Unit!96482)

(assert (=> b!4528468 (= lt!1704197 (forallContained!2550 (toList!4356 lm!1477) lambda!173906 (h!56552 (toList!4356 lm!1477))))))

(declare-fun lambda!173907 () Int)

(declare-fun lt!1704193 () Unit!96482)

(declare-fun forallContained!2551 (List!50810 Int tuple2!51130) Unit!96482)

(declare-fun get!16625 (Option!11145) tuple2!51130)

(assert (=> b!4528468 (= lt!1704193 (forallContained!2551 (_2!28860 (h!56552 (toList!4356 lm!1477))) lambda!173907 (tuple2!51131 key!3287 (_2!28859 (get!16625 lt!1704201)))))))

(assert (=> b!4528468 false))

(declare-fun b!4528469 () Bool)

(declare-fun e!2821616 () Bool)

(declare-fun e!2821602 () Bool)

(assert (=> b!4528469 (= e!2821616 e!2821602)))

(declare-fun res!1885659 () Bool)

(assert (=> b!4528469 (=> res!1885659 e!2821602)))

(declare-fun lt!1704189 () ListMap!3617)

(declare-fun lt!1704218 () ListMap!3617)

(assert (=> b!4528469 (= res!1885659 (not (eq!631 lt!1704189 lt!1704218)))))

(declare-fun lt!1704191 () ListLongMap!2987)

(declare-fun extractMap!1230 (List!50811) ListMap!3617)

(declare-fun +!1564 (ListLongMap!2987 tuple2!51132) ListLongMap!2987)

(assert (=> b!4528469 (= lt!1704189 (extractMap!1230 (toList!4356 (+!1564 lt!1704191 lt!1704216))))))

(declare-fun head!9438 (ListLongMap!2987) tuple2!51132)

(assert (=> b!4528469 (= lt!1704216 (head!9438 lm!1477))))

(assert (=> b!4528469 (eq!631 lt!1704205 lt!1704212)))

(declare-fun lt!1704188 () ListMap!3617)

(declare-fun -!400 (ListMap!3617 K!12075) ListMap!3617)

(assert (=> b!4528469 (= lt!1704212 (-!400 lt!1704188 key!3287))))

(declare-fun lt!1704194 () ListLongMap!2987)

(assert (=> b!4528469 (= lt!1704205 (extractMap!1230 (toList!4356 lt!1704194)))))

(declare-fun lt!1704202 () tuple2!51132)

(assert (=> b!4528469 (= lt!1704194 (+!1564 lt!1704191 lt!1704202))))

(declare-fun newBucket!178 () List!50810)

(assert (=> b!4528469 (= lt!1704202 (tuple2!51133 hash!344 newBucket!178))))

(declare-datatypes ((Hashable!5569 0))(
  ( (HashableExt!5568 (__x!31272 Int)) )
))
(declare-fun hashF!1107 () Hashable!5569)

(declare-fun lt!1704211 () Unit!96482)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!159 (ListLongMap!2987 (_ BitVec 64) List!50810 K!12075 Hashable!5569) Unit!96482)

(assert (=> b!4528469 (= lt!1704211 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!159 lt!1704191 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4528470 () Bool)

(declare-fun res!1885665 () Bool)

(declare-fun e!2821606 () Bool)

(assert (=> b!4528470 (=> (not res!1885665) (not e!2821606))))

(declare-fun allKeysSameHashInMap!1281 (ListLongMap!2987 Hashable!5569) Bool)

(assert (=> b!4528470 (= res!1885665 (allKeysSameHashInMap!1281 lm!1477 hashF!1107))))

(declare-fun b!4528471 () Bool)

(declare-fun res!1885649 () Bool)

(assert (=> b!4528471 (=> res!1885649 e!2821602)))

(assert (=> b!4528471 (= res!1885649 (not (eq!631 lt!1704218 lt!1704189)))))

(declare-fun b!4528472 () Bool)

(declare-fun res!1885657 () Bool)

(declare-fun e!2821605 () Bool)

(assert (=> b!4528472 (=> res!1885657 e!2821605)))

(get-info :version)

(assert (=> b!4528472 (= res!1885657 (or ((_ is Nil!50687) (toList!4356 lm!1477)) (= (_1!28860 (h!56552 (toList!4356 lm!1477))) hash!344)))))

(declare-fun b!4528473 () Bool)

(declare-fun e!2821619 () Bool)

(assert (=> b!4528473 (= e!2821619 (not e!2821605))))

(declare-fun res!1885666 () Bool)

(assert (=> b!4528473 (=> res!1885666 e!2821605)))

(declare-fun lt!1704198 () List!50810)

(declare-fun removePairForKey!801 (List!50810 K!12075) List!50810)

(assert (=> b!4528473 (= res!1885666 (not (= newBucket!178 (removePairForKey!801 lt!1704198 key!3287))))))

(declare-fun lt!1704192 () Unit!96482)

(declare-fun lt!1704210 () tuple2!51132)

(assert (=> b!4528473 (= lt!1704192 (forallContained!2550 (toList!4356 lm!1477) lambda!173905 lt!1704210))))

(declare-fun contains!13437 (List!50811 tuple2!51132) Bool)

(assert (=> b!4528473 (contains!13437 (toList!4356 lm!1477) lt!1704210)))

(assert (=> b!4528473 (= lt!1704210 (tuple2!51133 hash!344 lt!1704198))))

(declare-fun lt!1704195 () Unit!96482)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!686 (List!50811 (_ BitVec 64) List!50810) Unit!96482)

(assert (=> b!4528473 (= lt!1704195 (lemmaGetValueByKeyImpliesContainsTuple!686 (toList!4356 lm!1477) hash!344 lt!1704198))))

(declare-fun apply!11911 (ListLongMap!2987 (_ BitVec 64)) List!50810)

(assert (=> b!4528473 (= lt!1704198 (apply!11911 lm!1477 hash!344))))

(declare-fun lt!1704190 () (_ BitVec 64))

(declare-fun contains!13438 (ListLongMap!2987 (_ BitVec 64)) Bool)

(assert (=> b!4528473 (contains!13438 lm!1477 lt!1704190)))

(declare-fun lt!1704215 () Unit!96482)

(declare-fun lemmaInGenMapThenLongMapContainsHash!248 (ListLongMap!2987 K!12075 Hashable!5569) Unit!96482)

(assert (=> b!4528473 (= lt!1704215 (lemmaInGenMapThenLongMapContainsHash!248 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4528474 () Bool)

(declare-fun res!1885670 () Bool)

(declare-fun e!2821612 () Bool)

(assert (=> b!4528474 (=> res!1885670 e!2821612)))

(declare-fun lt!1704214 () ListLongMap!2987)

(assert (=> b!4528474 (= res!1885670 (not (= (head!9438 lt!1704214) lt!1704216)))))

(declare-fun b!4528475 () Bool)

(declare-fun e!2821608 () Bool)

(declare-fun e!2821609 () Bool)

(assert (=> b!4528475 (= e!2821608 e!2821609)))

(declare-fun res!1885660 () Bool)

(assert (=> b!4528475 (=> res!1885660 e!2821609)))

(declare-fun lt!1704200 () Bool)

(assert (=> b!4528475 (= res!1885660 lt!1704200)))

(declare-fun lt!1704203 () Unit!96482)

(assert (=> b!4528475 (= lt!1704203 e!2821611)))

(declare-fun c!773165 () Bool)

(assert (=> b!4528475 (= c!773165 lt!1704200)))

(declare-fun containsKey!1818 (List!50810 K!12075) Bool)

(assert (=> b!4528475 (= lt!1704200 (containsKey!1818 (_2!28860 lt!1704216) key!3287))))

(declare-fun b!4528476 () Bool)

(declare-fun e!2821610 () Bool)

(declare-fun e!2821614 () Bool)

(assert (=> b!4528476 (= e!2821610 e!2821614)))

(declare-fun res!1885652 () Bool)

(assert (=> b!4528476 (=> res!1885652 e!2821614)))

(declare-fun containsKeyBiggerList!154 (List!50811 K!12075) Bool)

(assert (=> b!4528476 (= res!1885652 (not (containsKeyBiggerList!154 (t!357773 (toList!4356 lm!1477)) key!3287)))))

(assert (=> b!4528476 (containsKeyBiggerList!154 (toList!4356 lt!1704191) key!3287)))

(declare-fun lt!1704199 () Unit!96482)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!90 (ListLongMap!2987 K!12075 Hashable!5569) Unit!96482)

(assert (=> b!4528476 (= lt!1704199 (lemmaInLongMapThenContainsKeyBiggerList!90 lt!1704191 key!3287 hashF!1107))))

(declare-fun b!4528477 () Bool)

(declare-fun forall!10297 (List!50811 Int) Bool)

(assert (=> b!4528477 (= e!2821609 (forall!10297 (toList!4356 lt!1704191) lambda!173905))))

(declare-fun b!4528478 () Bool)

(assert (=> b!4528478 (= e!2821612 e!2821617)))

(declare-fun res!1885656 () Bool)

(assert (=> b!4528478 (=> res!1885656 e!2821617)))

(assert (=> b!4528478 (= res!1885656 (not (eq!631 lt!1704207 lt!1704196)))))

(assert (=> b!4528478 (= lt!1704196 (addToMapMapFromBucket!701 (_2!28860 lt!1704216) lt!1704205))))

(assert (=> b!4528478 (= lt!1704207 (extractMap!1230 (toList!4356 lt!1704214)))))

(declare-fun b!4528479 () Bool)

(declare-fun res!1885655 () Bool)

(assert (=> b!4528479 (=> res!1885655 e!2821605)))

(declare-fun noDuplicateKeys!1174 (List!50810) Bool)

(assert (=> b!4528479 (= res!1885655 (not (noDuplicateKeys!1174 newBucket!178)))))

(declare-fun b!4528480 () Bool)

(declare-fun e!2821604 () Bool)

(assert (=> b!4528480 (= e!2821605 e!2821604)))

(declare-fun res!1885668 () Bool)

(assert (=> b!4528480 (=> res!1885668 e!2821604)))

(assert (=> b!4528480 (= res!1885668 (not (contains!13438 lt!1704191 hash!344)))))

(declare-fun tail!7760 (ListLongMap!2987) ListLongMap!2987)

(assert (=> b!4528480 (= lt!1704191 (tail!7760 lm!1477))))

(declare-fun b!4528481 () Bool)

(declare-fun res!1885664 () Bool)

(assert (=> b!4528481 (=> res!1885664 e!2821604)))

(assert (=> b!4528481 (= res!1885664 (not (contains!13437 (t!357773 (toList!4356 lm!1477)) lt!1704210)))))

(declare-fun b!4528466 () Bool)

(declare-fun e!2821603 () Bool)

(assert (=> b!4528466 (= e!2821606 e!2821603)))

(declare-fun res!1885663 () Bool)

(assert (=> b!4528466 (=> (not res!1885663) (not e!2821603))))

(declare-fun contains!13439 (ListMap!3617 K!12075) Bool)

(assert (=> b!4528466 (= res!1885663 (contains!13439 lt!1704218 key!3287))))

(assert (=> b!4528466 (= lt!1704218 (extractMap!1230 (toList!4356 lm!1477)))))

(declare-fun res!1885662 () Bool)

(assert (=> start!448904 (=> (not res!1885662) (not e!2821606))))

(assert (=> start!448904 (= res!1885662 (forall!10297 (toList!4356 lm!1477) lambda!173905))))

(assert (=> start!448904 e!2821606))

(assert (=> start!448904 true))

(declare-fun e!2821613 () Bool)

(declare-fun inv!66259 (ListLongMap!2987) Bool)

(assert (=> start!448904 (and (inv!66259 lm!1477) e!2821613)))

(declare-fun tp_is_empty!27973 () Bool)

(assert (=> start!448904 tp_is_empty!27973))

(declare-fun e!2821607 () Bool)

(assert (=> start!448904 e!2821607))

(declare-fun b!4528482 () Bool)

(assert (=> b!4528482 (= e!2821603 e!2821619)))

(declare-fun res!1885651 () Bool)

(assert (=> b!4528482 (=> (not res!1885651) (not e!2821619))))

(assert (=> b!4528482 (= res!1885651 (= lt!1704190 hash!344))))

(declare-fun hash!2853 (Hashable!5569 K!12075) (_ BitVec 64))

(assert (=> b!4528482 (= lt!1704190 (hash!2853 hashF!1107 key!3287))))

(declare-fun b!4528483 () Bool)

(assert (=> b!4528483 (= e!2821604 e!2821610)))

(declare-fun res!1885658 () Bool)

(assert (=> b!4528483 (=> res!1885658 e!2821610)))

(declare-fun lt!1704206 () Bool)

(assert (=> b!4528483 (= res!1885658 lt!1704206)))

(declare-fun lt!1704204 () Unit!96482)

(declare-fun e!2821615 () Unit!96482)

(assert (=> b!4528483 (= lt!1704204 e!2821615)))

(declare-fun c!773164 () Bool)

(assert (=> b!4528483 (= c!773164 lt!1704206)))

(assert (=> b!4528483 (= lt!1704206 (not (containsKey!1818 lt!1704198 key!3287)))))

(declare-fun b!4528484 () Bool)

(declare-fun Unit!96485 () Unit!96482)

(assert (=> b!4528484 (= e!2821615 Unit!96485)))

(declare-fun b!4528485 () Bool)

(assert (=> b!4528485 (= e!2821602 e!2821612)))

(declare-fun res!1885653 () Bool)

(assert (=> b!4528485 (=> res!1885653 e!2821612)))

(assert (=> b!4528485 (= res!1885653 (not (= lt!1704214 (+!1564 lm!1477 lt!1704202))))))

(assert (=> b!4528485 (= lt!1704214 (+!1564 lt!1704194 lt!1704216))))

(declare-fun b!4528486 () Bool)

(declare-fun res!1885654 () Bool)

(assert (=> b!4528486 (=> res!1885654 e!2821604)))

(assert (=> b!4528486 (= res!1885654 (not (= (apply!11911 lt!1704191 hash!344) lt!1704198)))))

(declare-fun b!4528487 () Bool)

(assert (=> b!4528487 (= e!2821618 e!2821608)))

(declare-fun res!1885661 () Bool)

(assert (=> b!4528487 (=> res!1885661 e!2821608)))

(assert (=> b!4528487 (= res!1885661 (not (noDuplicateKeys!1174 (_2!28860 lt!1704216))))))

(declare-fun lt!1704213 () Unit!96482)

(assert (=> b!4528487 (= lt!1704213 (forallContained!2550 (toList!4356 lm!1477) lambda!173905 (h!56552 (toList!4356 lm!1477))))))

(declare-fun b!4528488 () Bool)

(declare-fun Unit!96486 () Unit!96482)

(assert (=> b!4528488 (= e!2821615 Unit!96486)))

(declare-fun lt!1704209 () Unit!96482)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!162 (ListLongMap!2987 K!12075 Hashable!5569) Unit!96482)

(assert (=> b!4528488 (= lt!1704209 (lemmaNotInItsHashBucketThenNotInMap!162 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4528488 false))

(declare-fun tp!1338304 () Bool)

(declare-fun b!4528489 () Bool)

(declare-fun tp_is_empty!27975 () Bool)

(assert (=> b!4528489 (= e!2821607 (and tp_is_empty!27973 tp_is_empty!27975 tp!1338304))))

(declare-fun b!4528490 () Bool)

(declare-fun res!1885667 () Bool)

(assert (=> b!4528490 (=> res!1885667 e!2821602)))

(assert (=> b!4528490 (= res!1885667 (bvsge (_1!28860 lt!1704216) hash!344))))

(declare-fun b!4528491 () Bool)

(declare-fun Unit!96487 () Unit!96482)

(assert (=> b!4528491 (= e!2821611 Unit!96487)))

(declare-fun b!4528492 () Bool)

(declare-fun tp!1338305 () Bool)

(assert (=> b!4528492 (= e!2821613 tp!1338305)))

(declare-fun b!4528493 () Bool)

(declare-fun res!1885648 () Bool)

(assert (=> b!4528493 (=> (not res!1885648) (not e!2821619))))

(declare-fun allKeysSameHash!1028 (List!50810 (_ BitVec 64) Hashable!5569) Bool)

(assert (=> b!4528493 (= res!1885648 (allKeysSameHash!1028 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4528494 () Bool)

(assert (=> b!4528494 (= e!2821614 e!2821616)))

(declare-fun res!1885669 () Bool)

(assert (=> b!4528494 (=> res!1885669 e!2821616)))

(assert (=> b!4528494 (= res!1885669 (not (contains!13439 (extractMap!1230 (t!357773 (toList!4356 lm!1477))) key!3287)))))

(assert (=> b!4528494 (contains!13439 lt!1704188 key!3287)))

(assert (=> b!4528494 (= lt!1704188 (extractMap!1230 (toList!4356 lt!1704191)))))

(declare-fun lt!1704217 () Unit!96482)

(declare-fun lemmaListContainsThenExtractedMapContains!144 (ListLongMap!2987 K!12075 Hashable!5569) Unit!96482)

(assert (=> b!4528494 (= lt!1704217 (lemmaListContainsThenExtractedMapContains!144 lt!1704191 key!3287 hashF!1107))))

(assert (= (and start!448904 res!1885662) b!4528470))

(assert (= (and b!4528470 res!1885665) b!4528466))

(assert (= (and b!4528466 res!1885663) b!4528482))

(assert (= (and b!4528482 res!1885651) b!4528493))

(assert (= (and b!4528493 res!1885648) b!4528473))

(assert (= (and b!4528473 (not res!1885666)) b!4528479))

(assert (= (and b!4528479 (not res!1885655)) b!4528472))

(assert (= (and b!4528472 (not res!1885657)) b!4528480))

(assert (= (and b!4528480 (not res!1885668)) b!4528486))

(assert (= (and b!4528486 (not res!1885654)) b!4528481))

(assert (= (and b!4528481 (not res!1885664)) b!4528483))

(assert (= (and b!4528483 c!773164) b!4528488))

(assert (= (and b!4528483 (not c!773164)) b!4528484))

(assert (= (and b!4528483 (not res!1885658)) b!4528476))

(assert (= (and b!4528476 (not res!1885652)) b!4528494))

(assert (= (and b!4528494 (not res!1885669)) b!4528469))

(assert (= (and b!4528469 (not res!1885659)) b!4528471))

(assert (= (and b!4528471 (not res!1885649)) b!4528490))

(assert (= (and b!4528490 (not res!1885667)) b!4528485))

(assert (= (and b!4528485 (not res!1885653)) b!4528474))

(assert (= (and b!4528474 (not res!1885670)) b!4528478))

(assert (= (and b!4528478 (not res!1885656)) b!4528467))

(assert (= (and b!4528467 (not res!1885650)) b!4528487))

(assert (= (and b!4528487 (not res!1885661)) b!4528475))

(assert (= (and b!4528475 c!773165) b!4528468))

(assert (= (and b!4528475 (not c!773165)) b!4528491))

(assert (= (and b!4528475 (not res!1885660)) b!4528477))

(assert (= start!448904 b!4528492))

(assert (= (and start!448904 ((_ is Cons!50686) newBucket!178)) b!4528489))

(declare-fun m!5283797 () Bool)

(assert (=> b!4528470 m!5283797))

(declare-fun m!5283799 () Bool)

(assert (=> b!4528486 m!5283799))

(declare-fun m!5283801 () Bool)

(assert (=> b!4528479 m!5283801))

(declare-fun m!5283803 () Bool)

(assert (=> b!4528473 m!5283803))

(declare-fun m!5283805 () Bool)

(assert (=> b!4528473 m!5283805))

(declare-fun m!5283807 () Bool)

(assert (=> b!4528473 m!5283807))

(declare-fun m!5283809 () Bool)

(assert (=> b!4528473 m!5283809))

(declare-fun m!5283811 () Bool)

(assert (=> b!4528473 m!5283811))

(declare-fun m!5283813 () Bool)

(assert (=> b!4528473 m!5283813))

(declare-fun m!5283815 () Bool)

(assert (=> b!4528473 m!5283815))

(declare-fun m!5283817 () Bool)

(assert (=> b!4528487 m!5283817))

(declare-fun m!5283819 () Bool)

(assert (=> b!4528487 m!5283819))

(declare-fun m!5283821 () Bool)

(assert (=> b!4528474 m!5283821))

(declare-fun m!5283823 () Bool)

(assert (=> b!4528475 m!5283823))

(declare-fun m!5283825 () Bool)

(assert (=> b!4528483 m!5283825))

(declare-fun m!5283827 () Bool)

(assert (=> b!4528469 m!5283827))

(declare-fun m!5283829 () Bool)

(assert (=> b!4528469 m!5283829))

(declare-fun m!5283831 () Bool)

(assert (=> b!4528469 m!5283831))

(declare-fun m!5283833 () Bool)

(assert (=> b!4528469 m!5283833))

(declare-fun m!5283835 () Bool)

(assert (=> b!4528469 m!5283835))

(declare-fun m!5283837 () Bool)

(assert (=> b!4528469 m!5283837))

(declare-fun m!5283839 () Bool)

(assert (=> b!4528469 m!5283839))

(declare-fun m!5283841 () Bool)

(assert (=> b!4528469 m!5283841))

(declare-fun m!5283843 () Bool)

(assert (=> b!4528469 m!5283843))

(declare-fun m!5283845 () Bool)

(assert (=> b!4528480 m!5283845))

(declare-fun m!5283847 () Bool)

(assert (=> b!4528480 m!5283847))

(declare-fun m!5283849 () Bool)

(assert (=> b!4528477 m!5283849))

(declare-fun m!5283851 () Bool)

(assert (=> b!4528493 m!5283851))

(declare-fun m!5283853 () Bool)

(assert (=> b!4528467 m!5283853))

(declare-fun m!5283855 () Bool)

(assert (=> b!4528467 m!5283855))

(declare-fun m!5283857 () Bool)

(assert (=> b!4528467 m!5283857))

(declare-fun m!5283859 () Bool)

(assert (=> b!4528467 m!5283859))

(declare-fun m!5283861 () Bool)

(assert (=> b!4528468 m!5283861))

(declare-fun m!5283863 () Bool)

(assert (=> b!4528468 m!5283863))

(declare-fun m!5283865 () Bool)

(assert (=> b!4528468 m!5283865))

(declare-fun m!5283867 () Bool)

(assert (=> b!4528468 m!5283867))

(declare-fun m!5283869 () Bool)

(assert (=> b!4528471 m!5283869))

(declare-fun m!5283871 () Bool)

(assert (=> b!4528482 m!5283871))

(declare-fun m!5283873 () Bool)

(assert (=> b!4528476 m!5283873))

(declare-fun m!5283875 () Bool)

(assert (=> b!4528476 m!5283875))

(declare-fun m!5283877 () Bool)

(assert (=> b!4528476 m!5283877))

(declare-fun m!5283879 () Bool)

(assert (=> b!4528478 m!5283879))

(declare-fun m!5283881 () Bool)

(assert (=> b!4528478 m!5283881))

(declare-fun m!5283883 () Bool)

(assert (=> b!4528478 m!5283883))

(declare-fun m!5283885 () Bool)

(assert (=> b!4528488 m!5283885))

(declare-fun m!5283887 () Bool)

(assert (=> b!4528494 m!5283887))

(declare-fun m!5283889 () Bool)

(assert (=> b!4528494 m!5283889))

(declare-fun m!5283891 () Bool)

(assert (=> b!4528494 m!5283891))

(declare-fun m!5283893 () Bool)

(assert (=> b!4528494 m!5283893))

(assert (=> b!4528494 m!5283893))

(declare-fun m!5283895 () Bool)

(assert (=> b!4528494 m!5283895))

(declare-fun m!5283897 () Bool)

(assert (=> b!4528481 m!5283897))

(declare-fun m!5283899 () Bool)

(assert (=> b!4528485 m!5283899))

(declare-fun m!5283901 () Bool)

(assert (=> b!4528485 m!5283901))

(declare-fun m!5283903 () Bool)

(assert (=> b!4528466 m!5283903))

(declare-fun m!5283905 () Bool)

(assert (=> b!4528466 m!5283905))

(declare-fun m!5283907 () Bool)

(assert (=> start!448904 m!5283907))

(declare-fun m!5283909 () Bool)

(assert (=> start!448904 m!5283909))

(check-sat tp_is_empty!27973 (not b!4528493) (not b!4528475) (not b!4528483) (not b!4528480) (not b!4528482) (not b!4528487) (not b!4528470) (not b!4528486) (not b!4528478) (not start!448904) (not b!4528469) (not b!4528466) (not b!4528467) (not b!4528485) (not b!4528488) (not b!4528494) (not b!4528481) tp_is_empty!27975 (not b!4528468) (not b!4528489) (not b!4528476) (not b!4528479) (not b!4528474) (not b!4528473) (not b!4528477) (not b!4528471) (not b!4528492))
(check-sat)
(get-model)

(declare-fun d!1397311 () Bool)

(declare-fun res!1885675 () Bool)

(declare-fun e!2821624 () Bool)

(assert (=> d!1397311 (=> res!1885675 e!2821624)))

(assert (=> d!1397311 (= res!1885675 ((_ is Nil!50687) (toList!4356 lm!1477)))))

(assert (=> d!1397311 (= (forall!10297 (toList!4356 lm!1477) lambda!173905) e!2821624)))

(declare-fun b!4528505 () Bool)

(declare-fun e!2821625 () Bool)

(assert (=> b!4528505 (= e!2821624 e!2821625)))

(declare-fun res!1885676 () Bool)

(assert (=> b!4528505 (=> (not res!1885676) (not e!2821625))))

(declare-fun dynLambda!21183 (Int tuple2!51132) Bool)

(assert (=> b!4528505 (= res!1885676 (dynLambda!21183 lambda!173905 (h!56552 (toList!4356 lm!1477))))))

(declare-fun b!4528506 () Bool)

(assert (=> b!4528506 (= e!2821625 (forall!10297 (t!357773 (toList!4356 lm!1477)) lambda!173905))))

(assert (= (and d!1397311 (not res!1885675)) b!4528505))

(assert (= (and b!4528505 res!1885676) b!4528506))

(declare-fun b_lambda!156273 () Bool)

(assert (=> (not b_lambda!156273) (not b!4528505)))

(declare-fun m!5283911 () Bool)

(assert (=> b!4528505 m!5283911))

(declare-fun m!5283913 () Bool)

(assert (=> b!4528506 m!5283913))

(assert (=> start!448904 d!1397311))

(declare-fun d!1397313 () Bool)

(declare-fun isStrictlySorted!443 (List!50811) Bool)

(assert (=> d!1397313 (= (inv!66259 lm!1477) (isStrictlySorted!443 (toList!4356 lm!1477)))))

(declare-fun bs!864211 () Bool)

(assert (= bs!864211 d!1397313))

(declare-fun m!5283915 () Bool)

(assert (=> bs!864211 m!5283915))

(assert (=> start!448904 d!1397313))

(declare-fun d!1397315 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8391 (List!50810) (InoxSet tuple2!51130))

(assert (=> d!1397315 (= (eq!631 lt!1704207 lt!1704196) (= (content!8391 (toList!4355 lt!1704207)) (content!8391 (toList!4355 lt!1704196))))))

(declare-fun bs!864212 () Bool)

(assert (= bs!864212 d!1397315))

(declare-fun m!5283917 () Bool)

(assert (=> bs!864212 m!5283917))

(declare-fun m!5283919 () Bool)

(assert (=> bs!864212 m!5283919))

(assert (=> b!4528478 d!1397315))

(declare-fun bs!864242 () Bool)

(declare-fun b!4528574 () Bool)

(assert (= bs!864242 (and b!4528574 b!4528468)))

(declare-fun lambda!173975 () Int)

(assert (=> bs!864242 (not (= lambda!173975 lambda!173907))))

(assert (=> b!4528574 true))

(declare-fun bs!864243 () Bool)

(declare-fun b!4528573 () Bool)

(assert (= bs!864243 (and b!4528573 b!4528468)))

(declare-fun lambda!173976 () Int)

(assert (=> bs!864243 (not (= lambda!173976 lambda!173907))))

(declare-fun bs!864244 () Bool)

(assert (= bs!864244 (and b!4528573 b!4528574)))

(assert (=> bs!864244 (= lambda!173976 lambda!173975)))

(assert (=> b!4528573 true))

(declare-fun lambda!173977 () Int)

(assert (=> bs!864243 (not (= lambda!173977 lambda!173907))))

(declare-fun lt!1704360 () ListMap!3617)

(assert (=> bs!864244 (= (= lt!1704360 lt!1704205) (= lambda!173977 lambda!173975))))

(assert (=> b!4528573 (= (= lt!1704360 lt!1704205) (= lambda!173977 lambda!173976))))

(assert (=> b!4528573 true))

(declare-fun bs!864245 () Bool)

(declare-fun d!1397317 () Bool)

(assert (= bs!864245 (and d!1397317 b!4528468)))

(declare-fun lambda!173978 () Int)

(assert (=> bs!864245 (not (= lambda!173978 lambda!173907))))

(declare-fun bs!864246 () Bool)

(assert (= bs!864246 (and d!1397317 b!4528574)))

(declare-fun lt!1704373 () ListMap!3617)

(assert (=> bs!864246 (= (= lt!1704373 lt!1704205) (= lambda!173978 lambda!173975))))

(declare-fun bs!864247 () Bool)

(assert (= bs!864247 (and d!1397317 b!4528573)))

(assert (=> bs!864247 (= (= lt!1704373 lt!1704205) (= lambda!173978 lambda!173976))))

(assert (=> bs!864247 (= (= lt!1704373 lt!1704360) (= lambda!173978 lambda!173977))))

(assert (=> d!1397317 true))

(declare-fun call!315659 () Bool)

(declare-fun bm!315653 () Bool)

(declare-fun c!773175 () Bool)

(declare-fun forall!10299 (List!50810 Int) Bool)

(assert (=> bm!315653 (= call!315659 (forall!10299 (toList!4355 lt!1704205) (ite c!773175 lambda!173975 lambda!173977)))))

(declare-fun bm!315654 () Bool)

(declare-fun call!315660 () Bool)

(assert (=> bm!315654 (= call!315660 (forall!10299 (ite c!773175 (toList!4355 lt!1704205) (t!357772 (_2!28860 lt!1704216))) (ite c!773175 lambda!173975 lambda!173977)))))

(declare-fun b!4528571 () Bool)

(declare-fun e!2821675 () Bool)

(declare-fun invariantList!1029 (List!50810) Bool)

(assert (=> b!4528571 (= e!2821675 (invariantList!1029 (toList!4355 lt!1704373)))))

(declare-fun b!4528572 () Bool)

(declare-fun e!2821673 () Bool)

(assert (=> b!4528572 (= e!2821673 (forall!10299 (toList!4355 lt!1704205) lambda!173977))))

(declare-fun bm!315655 () Bool)

(declare-fun call!315658 () Unit!96482)

(declare-fun lemmaContainsAllItsOwnKeys!350 (ListMap!3617) Unit!96482)

(assert (=> bm!315655 (= call!315658 (lemmaContainsAllItsOwnKeys!350 lt!1704205))))

(assert (=> d!1397317 e!2821675))

(declare-fun res!1885722 () Bool)

(assert (=> d!1397317 (=> (not res!1885722) (not e!2821675))))

(assert (=> d!1397317 (= res!1885722 (forall!10299 (_2!28860 lt!1704216) lambda!173978))))

(declare-fun e!2821674 () ListMap!3617)

(assert (=> d!1397317 (= lt!1704373 e!2821674)))

(assert (=> d!1397317 (= c!773175 ((_ is Nil!50686) (_2!28860 lt!1704216)))))

(assert (=> d!1397317 (noDuplicateKeys!1174 (_2!28860 lt!1704216))))

(assert (=> d!1397317 (= (addToMapMapFromBucket!701 (_2!28860 lt!1704216) lt!1704205) lt!1704373)))

(assert (=> b!4528573 (= e!2821674 lt!1704360)))

(declare-fun lt!1704355 () ListMap!3617)

(declare-fun +!1566 (ListMap!3617 tuple2!51130) ListMap!3617)

(assert (=> b!4528573 (= lt!1704355 (+!1566 lt!1704205 (h!56551 (_2!28860 lt!1704216))))))

(assert (=> b!4528573 (= lt!1704360 (addToMapMapFromBucket!701 (t!357772 (_2!28860 lt!1704216)) (+!1566 lt!1704205 (h!56551 (_2!28860 lt!1704216)))))))

(declare-fun lt!1704358 () Unit!96482)

(assert (=> b!4528573 (= lt!1704358 call!315658)))

(assert (=> b!4528573 (forall!10299 (toList!4355 lt!1704205) lambda!173976)))

(declare-fun lt!1704364 () Unit!96482)

(assert (=> b!4528573 (= lt!1704364 lt!1704358)))

(assert (=> b!4528573 (forall!10299 (toList!4355 lt!1704355) lambda!173977)))

(declare-fun lt!1704372 () Unit!96482)

(declare-fun Unit!96509 () Unit!96482)

(assert (=> b!4528573 (= lt!1704372 Unit!96509)))

(assert (=> b!4528573 call!315660))

(declare-fun lt!1704354 () Unit!96482)

(declare-fun Unit!96511 () Unit!96482)

(assert (=> b!4528573 (= lt!1704354 Unit!96511)))

(declare-fun lt!1704359 () Unit!96482)

(declare-fun Unit!96512 () Unit!96482)

(assert (=> b!4528573 (= lt!1704359 Unit!96512)))

(declare-fun lt!1704365 () Unit!96482)

(assert (=> b!4528573 (= lt!1704365 (forallContained!2551 (toList!4355 lt!1704355) lambda!173977 (h!56551 (_2!28860 lt!1704216))))))

(assert (=> b!4528573 (contains!13439 lt!1704355 (_1!28859 (h!56551 (_2!28860 lt!1704216))))))

(declare-fun lt!1704366 () Unit!96482)

(declare-fun Unit!96513 () Unit!96482)

(assert (=> b!4528573 (= lt!1704366 Unit!96513)))

(assert (=> b!4528573 (contains!13439 lt!1704360 (_1!28859 (h!56551 (_2!28860 lt!1704216))))))

(declare-fun lt!1704367 () Unit!96482)

(declare-fun Unit!96514 () Unit!96482)

(assert (=> b!4528573 (= lt!1704367 Unit!96514)))

(assert (=> b!4528573 (forall!10299 (_2!28860 lt!1704216) lambda!173977)))

(declare-fun lt!1704361 () Unit!96482)

(declare-fun Unit!96515 () Unit!96482)

(assert (=> b!4528573 (= lt!1704361 Unit!96515)))

(assert (=> b!4528573 (forall!10299 (toList!4355 lt!1704355) lambda!173977)))

(declare-fun lt!1704369 () Unit!96482)

(declare-fun Unit!96516 () Unit!96482)

(assert (=> b!4528573 (= lt!1704369 Unit!96516)))

(declare-fun lt!1704368 () Unit!96482)

(declare-fun Unit!96517 () Unit!96482)

(assert (=> b!4528573 (= lt!1704368 Unit!96517)))

(declare-fun lt!1704362 () Unit!96482)

(declare-fun addForallContainsKeyThenBeforeAdding!350 (ListMap!3617 ListMap!3617 K!12075 V!12321) Unit!96482)

(assert (=> b!4528573 (= lt!1704362 (addForallContainsKeyThenBeforeAdding!350 lt!1704205 lt!1704360 (_1!28859 (h!56551 (_2!28860 lt!1704216))) (_2!28859 (h!56551 (_2!28860 lt!1704216)))))))

(assert (=> b!4528573 call!315659))

(declare-fun lt!1704371 () Unit!96482)

(assert (=> b!4528573 (= lt!1704371 lt!1704362)))

(assert (=> b!4528573 (forall!10299 (toList!4355 lt!1704205) lambda!173977)))

(declare-fun lt!1704357 () Unit!96482)

(declare-fun Unit!96518 () Unit!96482)

(assert (=> b!4528573 (= lt!1704357 Unit!96518)))

(declare-fun res!1885723 () Bool)

(assert (=> b!4528573 (= res!1885723 (forall!10299 (_2!28860 lt!1704216) lambda!173977))))

(assert (=> b!4528573 (=> (not res!1885723) (not e!2821673))))

(assert (=> b!4528573 e!2821673))

(declare-fun lt!1704370 () Unit!96482)

(declare-fun Unit!96519 () Unit!96482)

(assert (=> b!4528573 (= lt!1704370 Unit!96519)))

(assert (=> b!4528574 (= e!2821674 lt!1704205)))

(declare-fun lt!1704374 () Unit!96482)

(assert (=> b!4528574 (= lt!1704374 call!315658)))

(assert (=> b!4528574 call!315660))

(declare-fun lt!1704363 () Unit!96482)

(assert (=> b!4528574 (= lt!1704363 lt!1704374)))

(assert (=> b!4528574 call!315659))

(declare-fun lt!1704356 () Unit!96482)

(declare-fun Unit!96520 () Unit!96482)

(assert (=> b!4528574 (= lt!1704356 Unit!96520)))

(declare-fun b!4528575 () Bool)

(declare-fun res!1885721 () Bool)

(assert (=> b!4528575 (=> (not res!1885721) (not e!2821675))))

(assert (=> b!4528575 (= res!1885721 (forall!10299 (toList!4355 lt!1704205) lambda!173978))))

(assert (= (and d!1397317 c!773175) b!4528574))

(assert (= (and d!1397317 (not c!773175)) b!4528573))

(assert (= (and b!4528573 res!1885723) b!4528572))

(assert (= (or b!4528574 b!4528573) bm!315653))

(assert (= (or b!4528574 b!4528573) bm!315654))

(assert (= (or b!4528574 b!4528573) bm!315655))

(assert (= (and d!1397317 res!1885722) b!4528575))

(assert (= (and b!4528575 res!1885721) b!4528571))

(declare-fun m!5284033 () Bool)

(assert (=> d!1397317 m!5284033))

(assert (=> d!1397317 m!5283817))

(declare-fun m!5284035 () Bool)

(assert (=> b!4528575 m!5284035))

(declare-fun m!5284037 () Bool)

(assert (=> b!4528573 m!5284037))

(declare-fun m!5284039 () Bool)

(assert (=> b!4528573 m!5284039))

(declare-fun m!5284043 () Bool)

(assert (=> b!4528573 m!5284043))

(assert (=> b!4528573 m!5284037))

(declare-fun m!5284049 () Bool)

(assert (=> b!4528573 m!5284049))

(declare-fun m!5284051 () Bool)

(assert (=> b!4528573 m!5284051))

(assert (=> b!4528573 m!5284043))

(declare-fun m!5284057 () Bool)

(assert (=> b!4528573 m!5284057))

(declare-fun m!5284061 () Bool)

(assert (=> b!4528573 m!5284061))

(declare-fun m!5284063 () Bool)

(assert (=> b!4528573 m!5284063))

(declare-fun m!5284065 () Bool)

(assert (=> b!4528573 m!5284065))

(assert (=> b!4528573 m!5284057))

(declare-fun m!5284067 () Bool)

(assert (=> b!4528573 m!5284067))

(assert (=> b!4528572 m!5284061))

(declare-fun m!5284069 () Bool)

(assert (=> bm!315654 m!5284069))

(declare-fun m!5284071 () Bool)

(assert (=> bm!315653 m!5284071))

(declare-fun m!5284073 () Bool)

(assert (=> bm!315655 m!5284073))

(declare-fun m!5284075 () Bool)

(assert (=> b!4528571 m!5284075))

(assert (=> b!4528478 d!1397317))

(declare-fun bs!864252 () Bool)

(declare-fun d!1397351 () Bool)

(assert (= bs!864252 (and d!1397351 start!448904)))

(declare-fun lambda!173982 () Int)

(assert (=> bs!864252 (= lambda!173982 lambda!173905)))

(declare-fun bs!864253 () Bool)

(assert (= bs!864253 (and d!1397351 b!4528468)))

(assert (=> bs!864253 (not (= lambda!173982 lambda!173906))))

(declare-fun lt!1704390 () ListMap!3617)

(assert (=> d!1397351 (invariantList!1029 (toList!4355 lt!1704390))))

(declare-fun e!2821682 () ListMap!3617)

(assert (=> d!1397351 (= lt!1704390 e!2821682)))

(declare-fun c!773179 () Bool)

(assert (=> d!1397351 (= c!773179 ((_ is Cons!50687) (toList!4356 lt!1704214)))))

(assert (=> d!1397351 (forall!10297 (toList!4356 lt!1704214) lambda!173982)))

(assert (=> d!1397351 (= (extractMap!1230 (toList!4356 lt!1704214)) lt!1704390)))

(declare-fun b!4528590 () Bool)

(assert (=> b!4528590 (= e!2821682 (addToMapMapFromBucket!701 (_2!28860 (h!56552 (toList!4356 lt!1704214))) (extractMap!1230 (t!357773 (toList!4356 lt!1704214)))))))

(declare-fun b!4528591 () Bool)

(assert (=> b!4528591 (= e!2821682 (ListMap!3618 Nil!50686))))

(assert (= (and d!1397351 c!773179) b!4528590))

(assert (= (and d!1397351 (not c!773179)) b!4528591))

(declare-fun m!5284089 () Bool)

(assert (=> d!1397351 m!5284089))

(declare-fun m!5284091 () Bool)

(assert (=> d!1397351 m!5284091))

(declare-fun m!5284093 () Bool)

(assert (=> b!4528590 m!5284093))

(assert (=> b!4528590 m!5284093))

(declare-fun m!5284095 () Bool)

(assert (=> b!4528590 m!5284095))

(assert (=> b!4528478 d!1397351))

(declare-fun d!1397357 () Bool)

(declare-fun res!1885730 () Bool)

(declare-fun e!2821683 () Bool)

(assert (=> d!1397357 (=> res!1885730 e!2821683)))

(assert (=> d!1397357 (= res!1885730 ((_ is Nil!50687) (toList!4356 lt!1704191)))))

(assert (=> d!1397357 (= (forall!10297 (toList!4356 lt!1704191) lambda!173905) e!2821683)))

(declare-fun b!4528592 () Bool)

(declare-fun e!2821684 () Bool)

(assert (=> b!4528592 (= e!2821683 e!2821684)))

(declare-fun res!1885731 () Bool)

(assert (=> b!4528592 (=> (not res!1885731) (not e!2821684))))

(assert (=> b!4528592 (= res!1885731 (dynLambda!21183 lambda!173905 (h!56552 (toList!4356 lt!1704191))))))

(declare-fun b!4528593 () Bool)

(assert (=> b!4528593 (= e!2821684 (forall!10297 (t!357773 (toList!4356 lt!1704191)) lambda!173905))))

(assert (= (and d!1397357 (not res!1885730)) b!4528592))

(assert (= (and b!4528592 res!1885731) b!4528593))

(declare-fun b_lambda!156279 () Bool)

(assert (=> (not b_lambda!156279) (not b!4528592)))

(declare-fun m!5284097 () Bool)

(assert (=> b!4528592 m!5284097))

(declare-fun m!5284099 () Bool)

(assert (=> b!4528593 m!5284099))

(assert (=> b!4528477 d!1397357))

(declare-fun d!1397359 () Bool)

(declare-fun lt!1704395 () Bool)

(declare-fun content!8393 (List!50811) (InoxSet tuple2!51132))

(assert (=> d!1397359 (= lt!1704395 (select (content!8393 (t!357773 (toList!4356 lm!1477))) lt!1704210))))

(declare-fun e!2821690 () Bool)

(assert (=> d!1397359 (= lt!1704395 e!2821690)))

(declare-fun res!1885736 () Bool)

(assert (=> d!1397359 (=> (not res!1885736) (not e!2821690))))

(assert (=> d!1397359 (= res!1885736 ((_ is Cons!50687) (t!357773 (toList!4356 lm!1477))))))

(assert (=> d!1397359 (= (contains!13437 (t!357773 (toList!4356 lm!1477)) lt!1704210) lt!1704395)))

(declare-fun b!4528598 () Bool)

(declare-fun e!2821689 () Bool)

(assert (=> b!4528598 (= e!2821690 e!2821689)))

(declare-fun res!1885737 () Bool)

(assert (=> b!4528598 (=> res!1885737 e!2821689)))

(assert (=> b!4528598 (= res!1885737 (= (h!56552 (t!357773 (toList!4356 lm!1477))) lt!1704210))))

(declare-fun b!4528599 () Bool)

(assert (=> b!4528599 (= e!2821689 (contains!13437 (t!357773 (t!357773 (toList!4356 lm!1477))) lt!1704210))))

(assert (= (and d!1397359 res!1885736) b!4528598))

(assert (= (and b!4528598 (not res!1885737)) b!4528599))

(declare-fun m!5284101 () Bool)

(assert (=> d!1397359 m!5284101))

(declare-fun m!5284103 () Bool)

(assert (=> d!1397359 m!5284103))

(declare-fun m!5284105 () Bool)

(assert (=> b!4528599 m!5284105))

(assert (=> b!4528481 d!1397359))

(declare-fun d!1397361 () Bool)

(declare-fun res!1885742 () Bool)

(declare-fun e!2821695 () Bool)

(assert (=> d!1397361 (=> res!1885742 e!2821695)))

(assert (=> d!1397361 (= res!1885742 (not ((_ is Cons!50686) newBucket!178)))))

(assert (=> d!1397361 (= (noDuplicateKeys!1174 newBucket!178) e!2821695)))

(declare-fun b!4528604 () Bool)

(declare-fun e!2821696 () Bool)

(assert (=> b!4528604 (= e!2821695 e!2821696)))

(declare-fun res!1885743 () Bool)

(assert (=> b!4528604 (=> (not res!1885743) (not e!2821696))))

(assert (=> b!4528604 (= res!1885743 (not (containsKey!1818 (t!357772 newBucket!178) (_1!28859 (h!56551 newBucket!178)))))))

(declare-fun b!4528605 () Bool)

(assert (=> b!4528605 (= e!2821696 (noDuplicateKeys!1174 (t!357772 newBucket!178)))))

(assert (= (and d!1397361 (not res!1885742)) b!4528604))

(assert (= (and b!4528604 res!1885743) b!4528605))

(declare-fun m!5284119 () Bool)

(assert (=> b!4528604 m!5284119))

(declare-fun m!5284121 () Bool)

(assert (=> b!4528605 m!5284121))

(assert (=> b!4528479 d!1397361))

(declare-fun d!1397365 () Bool)

(declare-fun e!2821704 () Bool)

(assert (=> d!1397365 e!2821704))

(declare-fun res!1885748 () Bool)

(assert (=> d!1397365 (=> res!1885748 e!2821704)))

(declare-fun lt!1704409 () Bool)

(assert (=> d!1397365 (= res!1885748 (not lt!1704409))))

(declare-fun lt!1704408 () Bool)

(assert (=> d!1397365 (= lt!1704409 lt!1704408)))

(declare-fun lt!1704410 () Unit!96482)

(declare-fun e!2821703 () Unit!96482)

(assert (=> d!1397365 (= lt!1704410 e!2821703)))

(declare-fun c!773182 () Bool)

(assert (=> d!1397365 (= c!773182 lt!1704408)))

(declare-fun containsKey!1819 (List!50811 (_ BitVec 64)) Bool)

(assert (=> d!1397365 (= lt!1704408 (containsKey!1819 (toList!4356 lt!1704191) hash!344))))

(assert (=> d!1397365 (= (contains!13438 lt!1704191 hash!344) lt!1704409)))

(declare-fun b!4528614 () Bool)

(declare-fun lt!1704407 () Unit!96482)

(assert (=> b!4528614 (= e!2821703 lt!1704407)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1018 (List!50811 (_ BitVec 64)) Unit!96482)

(assert (=> b!4528614 (= lt!1704407 (lemmaContainsKeyImpliesGetValueByKeyDefined!1018 (toList!4356 lt!1704191) hash!344))))

(declare-datatypes ((Option!11147 0))(
  ( (None!11146) (Some!11146 (v!44792 List!50810)) )
))
(declare-fun isDefined!8431 (Option!11147) Bool)

(declare-fun getValueByKey!1115 (List!50811 (_ BitVec 64)) Option!11147)

(assert (=> b!4528614 (isDefined!8431 (getValueByKey!1115 (toList!4356 lt!1704191) hash!344))))

(declare-fun b!4528615 () Bool)

(declare-fun Unit!96521 () Unit!96482)

(assert (=> b!4528615 (= e!2821703 Unit!96521)))

(declare-fun b!4528616 () Bool)

(assert (=> b!4528616 (= e!2821704 (isDefined!8431 (getValueByKey!1115 (toList!4356 lt!1704191) hash!344)))))

(assert (= (and d!1397365 c!773182) b!4528614))

(assert (= (and d!1397365 (not c!773182)) b!4528615))

(assert (= (and d!1397365 (not res!1885748)) b!4528616))

(declare-fun m!5284131 () Bool)

(assert (=> d!1397365 m!5284131))

(declare-fun m!5284137 () Bool)

(assert (=> b!4528614 m!5284137))

(declare-fun m!5284141 () Bool)

(assert (=> b!4528614 m!5284141))

(assert (=> b!4528614 m!5284141))

(declare-fun m!5284143 () Bool)

(assert (=> b!4528614 m!5284143))

(assert (=> b!4528616 m!5284141))

(assert (=> b!4528616 m!5284141))

(assert (=> b!4528616 m!5284143))

(assert (=> b!4528480 d!1397365))

(declare-fun d!1397369 () Bool)

(declare-fun tail!7761 (List!50811) List!50811)

(assert (=> d!1397369 (= (tail!7760 lm!1477) (ListLongMap!2988 (tail!7761 (toList!4356 lm!1477))))))

(declare-fun bs!864264 () Bool)

(assert (= bs!864264 d!1397369))

(declare-fun m!5284147 () Bool)

(assert (=> bs!864264 m!5284147))

(assert (=> b!4528480 d!1397369))

(declare-fun d!1397371 () Bool)

(declare-fun res!1885756 () Bool)

(declare-fun e!2821712 () Bool)

(assert (=> d!1397371 (=> res!1885756 e!2821712)))

(assert (=> d!1397371 (= res!1885756 (and ((_ is Cons!50686) lt!1704198) (= (_1!28859 (h!56551 lt!1704198)) key!3287)))))

(assert (=> d!1397371 (= (containsKey!1818 lt!1704198 key!3287) e!2821712)))

(declare-fun b!4528626 () Bool)

(declare-fun e!2821713 () Bool)

(assert (=> b!4528626 (= e!2821712 e!2821713)))

(declare-fun res!1885757 () Bool)

(assert (=> b!4528626 (=> (not res!1885757) (not e!2821713))))

(assert (=> b!4528626 (= res!1885757 ((_ is Cons!50686) lt!1704198))))

(declare-fun b!4528627 () Bool)

(assert (=> b!4528627 (= e!2821713 (containsKey!1818 (t!357772 lt!1704198) key!3287))))

(assert (= (and d!1397371 (not res!1885756)) b!4528626))

(assert (= (and b!4528626 res!1885757) b!4528627))

(declare-fun m!5284173 () Bool)

(assert (=> b!4528627 m!5284173))

(assert (=> b!4528483 d!1397371))

(declare-fun d!1397381 () Bool)

(declare-fun hash!2856 (Hashable!5569 K!12075) (_ BitVec 64))

(assert (=> d!1397381 (= (hash!2853 hashF!1107 key!3287) (hash!2856 hashF!1107 key!3287))))

(declare-fun bs!864267 () Bool)

(assert (= bs!864267 d!1397381))

(declare-fun m!5284175 () Bool)

(assert (=> bs!864267 m!5284175))

(assert (=> b!4528482 d!1397381))

(declare-fun d!1397383 () Bool)

(declare-fun get!16627 (Option!11147) List!50810)

(assert (=> d!1397383 (= (apply!11911 lt!1704191 hash!344) (get!16627 (getValueByKey!1115 (toList!4356 lt!1704191) hash!344)))))

(declare-fun bs!864268 () Bool)

(assert (= bs!864268 d!1397383))

(assert (=> bs!864268 m!5284141))

(assert (=> bs!864268 m!5284141))

(declare-fun m!5284177 () Bool)

(assert (=> bs!864268 m!5284177))

(assert (=> b!4528486 d!1397383))

(declare-fun d!1397385 () Bool)

(declare-fun e!2821728 () Bool)

(assert (=> d!1397385 e!2821728))

(declare-fun res!1885774 () Bool)

(assert (=> d!1397385 (=> (not res!1885774) (not e!2821728))))

(declare-fun lt!1704428 () ListLongMap!2987)

(assert (=> d!1397385 (= res!1885774 (contains!13438 lt!1704428 (_1!28860 lt!1704202)))))

(declare-fun lt!1704429 () List!50811)

(assert (=> d!1397385 (= lt!1704428 (ListLongMap!2988 lt!1704429))))

(declare-fun lt!1704430 () Unit!96482)

(declare-fun lt!1704431 () Unit!96482)

(assert (=> d!1397385 (= lt!1704430 lt!1704431)))

(assert (=> d!1397385 (= (getValueByKey!1115 lt!1704429 (_1!28860 lt!1704202)) (Some!11146 (_2!28860 lt!1704202)))))

(declare-fun lemmaContainsTupThenGetReturnValue!698 (List!50811 (_ BitVec 64) List!50810) Unit!96482)

(assert (=> d!1397385 (= lt!1704431 (lemmaContainsTupThenGetReturnValue!698 lt!1704429 (_1!28860 lt!1704202) (_2!28860 lt!1704202)))))

(declare-fun insertStrictlySorted!420 (List!50811 (_ BitVec 64) List!50810) List!50811)

(assert (=> d!1397385 (= lt!1704429 (insertStrictlySorted!420 (toList!4356 lm!1477) (_1!28860 lt!1704202) (_2!28860 lt!1704202)))))

(assert (=> d!1397385 (= (+!1564 lm!1477 lt!1704202) lt!1704428)))

(declare-fun b!4528644 () Bool)

(declare-fun res!1885775 () Bool)

(assert (=> b!4528644 (=> (not res!1885775) (not e!2821728))))

(assert (=> b!4528644 (= res!1885775 (= (getValueByKey!1115 (toList!4356 lt!1704428) (_1!28860 lt!1704202)) (Some!11146 (_2!28860 lt!1704202))))))

(declare-fun b!4528645 () Bool)

(assert (=> b!4528645 (= e!2821728 (contains!13437 (toList!4356 lt!1704428) lt!1704202))))

(assert (= (and d!1397385 res!1885774) b!4528644))

(assert (= (and b!4528644 res!1885775) b!4528645))

(declare-fun m!5284191 () Bool)

(assert (=> d!1397385 m!5284191))

(declare-fun m!5284193 () Bool)

(assert (=> d!1397385 m!5284193))

(declare-fun m!5284195 () Bool)

(assert (=> d!1397385 m!5284195))

(declare-fun m!5284197 () Bool)

(assert (=> d!1397385 m!5284197))

(declare-fun m!5284199 () Bool)

(assert (=> b!4528644 m!5284199))

(declare-fun m!5284201 () Bool)

(assert (=> b!4528645 m!5284201))

(assert (=> b!4528485 d!1397385))

(declare-fun d!1397393 () Bool)

(declare-fun e!2821729 () Bool)

(assert (=> d!1397393 e!2821729))

(declare-fun res!1885776 () Bool)

(assert (=> d!1397393 (=> (not res!1885776) (not e!2821729))))

(declare-fun lt!1704432 () ListLongMap!2987)

(assert (=> d!1397393 (= res!1885776 (contains!13438 lt!1704432 (_1!28860 lt!1704216)))))

(declare-fun lt!1704433 () List!50811)

(assert (=> d!1397393 (= lt!1704432 (ListLongMap!2988 lt!1704433))))

(declare-fun lt!1704434 () Unit!96482)

(declare-fun lt!1704435 () Unit!96482)

(assert (=> d!1397393 (= lt!1704434 lt!1704435)))

(assert (=> d!1397393 (= (getValueByKey!1115 lt!1704433 (_1!28860 lt!1704216)) (Some!11146 (_2!28860 lt!1704216)))))

(assert (=> d!1397393 (= lt!1704435 (lemmaContainsTupThenGetReturnValue!698 lt!1704433 (_1!28860 lt!1704216) (_2!28860 lt!1704216)))))

(assert (=> d!1397393 (= lt!1704433 (insertStrictlySorted!420 (toList!4356 lt!1704194) (_1!28860 lt!1704216) (_2!28860 lt!1704216)))))

(assert (=> d!1397393 (= (+!1564 lt!1704194 lt!1704216) lt!1704432)))

(declare-fun b!4528646 () Bool)

(declare-fun res!1885777 () Bool)

(assert (=> b!4528646 (=> (not res!1885777) (not e!2821729))))

(assert (=> b!4528646 (= res!1885777 (= (getValueByKey!1115 (toList!4356 lt!1704432) (_1!28860 lt!1704216)) (Some!11146 (_2!28860 lt!1704216))))))

(declare-fun b!4528647 () Bool)

(assert (=> b!4528647 (= e!2821729 (contains!13437 (toList!4356 lt!1704432) lt!1704216))))

(assert (= (and d!1397393 res!1885776) b!4528646))

(assert (= (and b!4528646 res!1885777) b!4528647))

(declare-fun m!5284203 () Bool)

(assert (=> d!1397393 m!5284203))

(declare-fun m!5284205 () Bool)

(assert (=> d!1397393 m!5284205))

(declare-fun m!5284207 () Bool)

(assert (=> d!1397393 m!5284207))

(declare-fun m!5284209 () Bool)

(assert (=> d!1397393 m!5284209))

(declare-fun m!5284211 () Bool)

(assert (=> b!4528646 m!5284211))

(declare-fun m!5284213 () Bool)

(assert (=> b!4528647 m!5284213))

(assert (=> b!4528485 d!1397393))

(declare-fun d!1397395 () Bool)

(assert (=> d!1397395 (= (eq!631 lt!1704207 lt!1704187) (= (content!8391 (toList!4355 lt!1704207)) (content!8391 (toList!4355 lt!1704187))))))

(declare-fun bs!864276 () Bool)

(assert (= bs!864276 d!1397395))

(assert (=> bs!864276 m!5283917))

(declare-fun m!5284215 () Bool)

(assert (=> bs!864276 m!5284215))

(assert (=> b!4528467 d!1397395))

(declare-fun d!1397397 () Bool)

(assert (=> d!1397397 (= (eq!631 lt!1704196 lt!1704187) (= (content!8391 (toList!4355 lt!1704196)) (content!8391 (toList!4355 lt!1704187))))))

(declare-fun bs!864277 () Bool)

(assert (= bs!864277 d!1397397))

(assert (=> bs!864277 m!5283919))

(assert (=> bs!864277 m!5284215))

(assert (=> b!4528467 d!1397397))

(declare-fun bs!864278 () Bool)

(declare-fun b!4528651 () Bool)

(assert (= bs!864278 (and b!4528651 b!4528468)))

(declare-fun lambda!173990 () Int)

(assert (=> bs!864278 (not (= lambda!173990 lambda!173907))))

(declare-fun bs!864279 () Bool)

(assert (= bs!864279 (and b!4528651 d!1397317)))

(assert (=> bs!864279 (= (= lt!1704212 lt!1704373) (= lambda!173990 lambda!173978))))

(declare-fun bs!864280 () Bool)

(assert (= bs!864280 (and b!4528651 b!4528574)))

(assert (=> bs!864280 (= (= lt!1704212 lt!1704205) (= lambda!173990 lambda!173975))))

(declare-fun bs!864281 () Bool)

(assert (= bs!864281 (and b!4528651 b!4528573)))

(assert (=> bs!864281 (= (= lt!1704212 lt!1704205) (= lambda!173990 lambda!173976))))

(assert (=> bs!864281 (= (= lt!1704212 lt!1704360) (= lambda!173990 lambda!173977))))

(assert (=> b!4528651 true))

(declare-fun bs!864282 () Bool)

(declare-fun b!4528650 () Bool)

(assert (= bs!864282 (and b!4528650 b!4528651)))

(declare-fun lambda!173991 () Int)

(assert (=> bs!864282 (= lambda!173991 lambda!173990)))

(declare-fun bs!864283 () Bool)

(assert (= bs!864283 (and b!4528650 b!4528468)))

(assert (=> bs!864283 (not (= lambda!173991 lambda!173907))))

(declare-fun bs!864284 () Bool)

(assert (= bs!864284 (and b!4528650 d!1397317)))

(assert (=> bs!864284 (= (= lt!1704212 lt!1704373) (= lambda!173991 lambda!173978))))

(declare-fun bs!864285 () Bool)

(assert (= bs!864285 (and b!4528650 b!4528574)))

(assert (=> bs!864285 (= (= lt!1704212 lt!1704205) (= lambda!173991 lambda!173975))))

(declare-fun bs!864286 () Bool)

(assert (= bs!864286 (and b!4528650 b!4528573)))

(assert (=> bs!864286 (= (= lt!1704212 lt!1704205) (= lambda!173991 lambda!173976))))

(assert (=> bs!864286 (= (= lt!1704212 lt!1704360) (= lambda!173991 lambda!173977))))

(assert (=> b!4528650 true))

(declare-fun lambda!173992 () Int)

(declare-fun lt!1704442 () ListMap!3617)

(assert (=> bs!864282 (= (= lt!1704442 lt!1704212) (= lambda!173992 lambda!173990))))

(assert (=> bs!864283 (not (= lambda!173992 lambda!173907))))

(assert (=> b!4528650 (= (= lt!1704442 lt!1704212) (= lambda!173992 lambda!173991))))

(assert (=> bs!864284 (= (= lt!1704442 lt!1704373) (= lambda!173992 lambda!173978))))

(assert (=> bs!864285 (= (= lt!1704442 lt!1704205) (= lambda!173992 lambda!173975))))

(assert (=> bs!864286 (= (= lt!1704442 lt!1704205) (= lambda!173992 lambda!173976))))

(assert (=> bs!864286 (= (= lt!1704442 lt!1704360) (= lambda!173992 lambda!173977))))

(assert (=> b!4528650 true))

(declare-fun bs!864287 () Bool)

(declare-fun d!1397399 () Bool)

(assert (= bs!864287 (and d!1397399 b!4528651)))

(declare-fun lt!1704455 () ListMap!3617)

(declare-fun lambda!173993 () Int)

(assert (=> bs!864287 (= (= lt!1704455 lt!1704212) (= lambda!173993 lambda!173990))))

(declare-fun bs!864288 () Bool)

(assert (= bs!864288 (and d!1397399 b!4528468)))

(assert (=> bs!864288 (not (= lambda!173993 lambda!173907))))

(declare-fun bs!864289 () Bool)

(assert (= bs!864289 (and d!1397399 b!4528650)))

(assert (=> bs!864289 (= (= lt!1704455 lt!1704212) (= lambda!173993 lambda!173991))))

(declare-fun bs!864290 () Bool)

(assert (= bs!864290 (and d!1397399 d!1397317)))

(assert (=> bs!864290 (= (= lt!1704455 lt!1704373) (= lambda!173993 lambda!173978))))

(declare-fun bs!864291 () Bool)

(assert (= bs!864291 (and d!1397399 b!4528574)))

(assert (=> bs!864291 (= (= lt!1704455 lt!1704205) (= lambda!173993 lambda!173975))))

(declare-fun bs!864292 () Bool)

(assert (= bs!864292 (and d!1397399 b!4528573)))

(assert (=> bs!864292 (= (= lt!1704455 lt!1704205) (= lambda!173993 lambda!173976))))

(assert (=> bs!864289 (= (= lt!1704455 lt!1704442) (= lambda!173993 lambda!173992))))

(assert (=> bs!864292 (= (= lt!1704455 lt!1704360) (= lambda!173993 lambda!173977))))

(assert (=> d!1397399 true))

(declare-fun bm!315656 () Bool)

(declare-fun call!315662 () Bool)

(declare-fun c!773184 () Bool)

(assert (=> bm!315656 (= call!315662 (forall!10299 (toList!4355 lt!1704212) (ite c!773184 lambda!173990 lambda!173992)))))

(declare-fun bm!315657 () Bool)

(declare-fun call!315663 () Bool)

(assert (=> bm!315657 (= call!315663 (forall!10299 (ite c!773184 (toList!4355 lt!1704212) (t!357772 (_2!28860 lt!1704216))) (ite c!773184 lambda!173990 lambda!173992)))))

(declare-fun b!4528648 () Bool)

(declare-fun e!2821732 () Bool)

(assert (=> b!4528648 (= e!2821732 (invariantList!1029 (toList!4355 lt!1704455)))))

(declare-fun b!4528649 () Bool)

(declare-fun e!2821730 () Bool)

(assert (=> b!4528649 (= e!2821730 (forall!10299 (toList!4355 lt!1704212) lambda!173992))))

(declare-fun bm!315658 () Bool)

(declare-fun call!315661 () Unit!96482)

(assert (=> bm!315658 (= call!315661 (lemmaContainsAllItsOwnKeys!350 lt!1704212))))

(assert (=> d!1397399 e!2821732))

(declare-fun res!1885779 () Bool)

(assert (=> d!1397399 (=> (not res!1885779) (not e!2821732))))

(assert (=> d!1397399 (= res!1885779 (forall!10299 (_2!28860 lt!1704216) lambda!173993))))

(declare-fun e!2821731 () ListMap!3617)

(assert (=> d!1397399 (= lt!1704455 e!2821731)))

(assert (=> d!1397399 (= c!773184 ((_ is Nil!50686) (_2!28860 lt!1704216)))))

(assert (=> d!1397399 (noDuplicateKeys!1174 (_2!28860 lt!1704216))))

(assert (=> d!1397399 (= (addToMapMapFromBucket!701 (_2!28860 lt!1704216) lt!1704212) lt!1704455)))

(assert (=> b!4528650 (= e!2821731 lt!1704442)))

(declare-fun lt!1704437 () ListMap!3617)

(assert (=> b!4528650 (= lt!1704437 (+!1566 lt!1704212 (h!56551 (_2!28860 lt!1704216))))))

(assert (=> b!4528650 (= lt!1704442 (addToMapMapFromBucket!701 (t!357772 (_2!28860 lt!1704216)) (+!1566 lt!1704212 (h!56551 (_2!28860 lt!1704216)))))))

(declare-fun lt!1704440 () Unit!96482)

(assert (=> b!4528650 (= lt!1704440 call!315661)))

(assert (=> b!4528650 (forall!10299 (toList!4355 lt!1704212) lambda!173991)))

(declare-fun lt!1704446 () Unit!96482)

(assert (=> b!4528650 (= lt!1704446 lt!1704440)))

(assert (=> b!4528650 (forall!10299 (toList!4355 lt!1704437) lambda!173992)))

(declare-fun lt!1704454 () Unit!96482)

(declare-fun Unit!96522 () Unit!96482)

(assert (=> b!4528650 (= lt!1704454 Unit!96522)))

(assert (=> b!4528650 call!315663))

(declare-fun lt!1704436 () Unit!96482)

(declare-fun Unit!96523 () Unit!96482)

(assert (=> b!4528650 (= lt!1704436 Unit!96523)))

(declare-fun lt!1704441 () Unit!96482)

(declare-fun Unit!96524 () Unit!96482)

(assert (=> b!4528650 (= lt!1704441 Unit!96524)))

(declare-fun lt!1704447 () Unit!96482)

(assert (=> b!4528650 (= lt!1704447 (forallContained!2551 (toList!4355 lt!1704437) lambda!173992 (h!56551 (_2!28860 lt!1704216))))))

(assert (=> b!4528650 (contains!13439 lt!1704437 (_1!28859 (h!56551 (_2!28860 lt!1704216))))))

(declare-fun lt!1704448 () Unit!96482)

(declare-fun Unit!96525 () Unit!96482)

(assert (=> b!4528650 (= lt!1704448 Unit!96525)))

(assert (=> b!4528650 (contains!13439 lt!1704442 (_1!28859 (h!56551 (_2!28860 lt!1704216))))))

(declare-fun lt!1704449 () Unit!96482)

(declare-fun Unit!96526 () Unit!96482)

(assert (=> b!4528650 (= lt!1704449 Unit!96526)))

(assert (=> b!4528650 (forall!10299 (_2!28860 lt!1704216) lambda!173992)))

(declare-fun lt!1704443 () Unit!96482)

(declare-fun Unit!96527 () Unit!96482)

(assert (=> b!4528650 (= lt!1704443 Unit!96527)))

(assert (=> b!4528650 (forall!10299 (toList!4355 lt!1704437) lambda!173992)))

(declare-fun lt!1704451 () Unit!96482)

(declare-fun Unit!96528 () Unit!96482)

(assert (=> b!4528650 (= lt!1704451 Unit!96528)))

(declare-fun lt!1704450 () Unit!96482)

(declare-fun Unit!96529 () Unit!96482)

(assert (=> b!4528650 (= lt!1704450 Unit!96529)))

(declare-fun lt!1704444 () Unit!96482)

(assert (=> b!4528650 (= lt!1704444 (addForallContainsKeyThenBeforeAdding!350 lt!1704212 lt!1704442 (_1!28859 (h!56551 (_2!28860 lt!1704216))) (_2!28859 (h!56551 (_2!28860 lt!1704216)))))))

(assert (=> b!4528650 call!315662))

(declare-fun lt!1704453 () Unit!96482)

(assert (=> b!4528650 (= lt!1704453 lt!1704444)))

(assert (=> b!4528650 (forall!10299 (toList!4355 lt!1704212) lambda!173992)))

(declare-fun lt!1704439 () Unit!96482)

(declare-fun Unit!96530 () Unit!96482)

(assert (=> b!4528650 (= lt!1704439 Unit!96530)))

(declare-fun res!1885780 () Bool)

(assert (=> b!4528650 (= res!1885780 (forall!10299 (_2!28860 lt!1704216) lambda!173992))))

(assert (=> b!4528650 (=> (not res!1885780) (not e!2821730))))

(assert (=> b!4528650 e!2821730))

(declare-fun lt!1704452 () Unit!96482)

(declare-fun Unit!96531 () Unit!96482)

(assert (=> b!4528650 (= lt!1704452 Unit!96531)))

(assert (=> b!4528651 (= e!2821731 lt!1704212)))

(declare-fun lt!1704456 () Unit!96482)

(assert (=> b!4528651 (= lt!1704456 call!315661)))

(assert (=> b!4528651 call!315663))

(declare-fun lt!1704445 () Unit!96482)

(assert (=> b!4528651 (= lt!1704445 lt!1704456)))

(assert (=> b!4528651 call!315662))

(declare-fun lt!1704438 () Unit!96482)

(declare-fun Unit!96532 () Unit!96482)

(assert (=> b!4528651 (= lt!1704438 Unit!96532)))

(declare-fun b!4528652 () Bool)

(declare-fun res!1885778 () Bool)

(assert (=> b!4528652 (=> (not res!1885778) (not e!2821732))))

(assert (=> b!4528652 (= res!1885778 (forall!10299 (toList!4355 lt!1704212) lambda!173993))))

(assert (= (and d!1397399 c!773184) b!4528651))

(assert (= (and d!1397399 (not c!773184)) b!4528650))

(assert (= (and b!4528650 res!1885780) b!4528649))

(assert (= (or b!4528651 b!4528650) bm!315656))

(assert (= (or b!4528651 b!4528650) bm!315657))

(assert (= (or b!4528651 b!4528650) bm!315658))

(assert (= (and d!1397399 res!1885779) b!4528652))

(assert (= (and b!4528652 res!1885778) b!4528648))

(declare-fun m!5284227 () Bool)

(assert (=> d!1397399 m!5284227))

(assert (=> d!1397399 m!5283817))

(declare-fun m!5284229 () Bool)

(assert (=> b!4528652 m!5284229))

(declare-fun m!5284231 () Bool)

(assert (=> b!4528650 m!5284231))

(declare-fun m!5284233 () Bool)

(assert (=> b!4528650 m!5284233))

(declare-fun m!5284235 () Bool)

(assert (=> b!4528650 m!5284235))

(assert (=> b!4528650 m!5284231))

(declare-fun m!5284237 () Bool)

(assert (=> b!4528650 m!5284237))

(declare-fun m!5284239 () Bool)

(assert (=> b!4528650 m!5284239))

(assert (=> b!4528650 m!5284235))

(declare-fun m!5284241 () Bool)

(assert (=> b!4528650 m!5284241))

(declare-fun m!5284243 () Bool)

(assert (=> b!4528650 m!5284243))

(declare-fun m!5284245 () Bool)

(assert (=> b!4528650 m!5284245))

(declare-fun m!5284247 () Bool)

(assert (=> b!4528650 m!5284247))

(assert (=> b!4528650 m!5284241))

(declare-fun m!5284249 () Bool)

(assert (=> b!4528650 m!5284249))

(assert (=> b!4528649 m!5284243))

(declare-fun m!5284251 () Bool)

(assert (=> bm!315657 m!5284251))

(declare-fun m!5284253 () Bool)

(assert (=> bm!315656 m!5284253))

(declare-fun m!5284255 () Bool)

(assert (=> bm!315658 m!5284255))

(declare-fun m!5284257 () Bool)

(assert (=> b!4528648 m!5284257))

(assert (=> b!4528467 d!1397399))

(declare-fun d!1397403 () Bool)

(assert (=> d!1397403 (eq!631 (addToMapMapFromBucket!701 (_2!28860 lt!1704216) lt!1704205) (addToMapMapFromBucket!701 (_2!28860 lt!1704216) lt!1704212))))

(declare-fun lt!1704469 () Unit!96482)

(declare-fun choose!29681 (ListMap!3617 ListMap!3617 List!50810) Unit!96482)

(assert (=> d!1397403 (= lt!1704469 (choose!29681 lt!1704205 lt!1704212 (_2!28860 lt!1704216)))))

(assert (=> d!1397403 (noDuplicateKeys!1174 (_2!28860 lt!1704216))))

(assert (=> d!1397403 (= (lemmaAddToMapFromBucketPreservesEquivalence!50 lt!1704205 lt!1704212 (_2!28860 lt!1704216)) lt!1704469)))

(declare-fun bs!864293 () Bool)

(assert (= bs!864293 d!1397403))

(assert (=> bs!864293 m!5283857))

(assert (=> bs!864293 m!5283881))

(assert (=> bs!864293 m!5283881))

(assert (=> bs!864293 m!5283857))

(declare-fun m!5284281 () Bool)

(assert (=> bs!864293 m!5284281))

(assert (=> bs!864293 m!5283817))

(declare-fun m!5284283 () Bool)

(assert (=> bs!864293 m!5284283))

(assert (=> b!4528467 d!1397403))

(declare-fun b!4528711 () Bool)

(declare-fun e!2821773 () Bool)

(declare-fun lt!1704487 () Option!11145)

(declare-fun contains!13441 (List!50810 tuple2!51130) Bool)

(assert (=> b!4528711 (= e!2821773 (contains!13441 (_2!28860 lt!1704216) (get!16625 lt!1704487)))))

(declare-fun b!4528712 () Bool)

(declare-fun e!2821777 () Option!11145)

(assert (=> b!4528712 (= e!2821777 (Some!11144 (h!56551 (_2!28860 lt!1704216))))))

(declare-fun b!4528713 () Bool)

(declare-fun e!2821774 () Bool)

(assert (=> b!4528713 (= e!2821774 (not (containsKey!1818 (_2!28860 lt!1704216) key!3287)))))

(declare-fun b!4528714 () Bool)

(declare-fun e!2821776 () Option!11145)

(assert (=> b!4528714 (= e!2821776 (getPair!190 (t!357772 (_2!28860 lt!1704216)) key!3287))))

(declare-fun d!1397415 () Bool)

(declare-fun e!2821775 () Bool)

(assert (=> d!1397415 e!2821775))

(declare-fun res!1885815 () Bool)

(assert (=> d!1397415 (=> res!1885815 e!2821775)))

(assert (=> d!1397415 (= res!1885815 e!2821774)))

(declare-fun res!1885816 () Bool)

(assert (=> d!1397415 (=> (not res!1885816) (not e!2821774))))

(declare-fun isEmpty!28705 (Option!11145) Bool)

(assert (=> d!1397415 (= res!1885816 (isEmpty!28705 lt!1704487))))

(assert (=> d!1397415 (= lt!1704487 e!2821777)))

(declare-fun c!773198 () Bool)

(assert (=> d!1397415 (= c!773198 (and ((_ is Cons!50686) (_2!28860 lt!1704216)) (= (_1!28859 (h!56551 (_2!28860 lt!1704216))) key!3287)))))

(assert (=> d!1397415 (noDuplicateKeys!1174 (_2!28860 lt!1704216))))

(assert (=> d!1397415 (= (getPair!190 (_2!28860 lt!1704216) key!3287) lt!1704487)))

(declare-fun b!4528715 () Bool)

(assert (=> b!4528715 (= e!2821776 None!11144)))

(declare-fun b!4528716 () Bool)

(assert (=> b!4528716 (= e!2821775 e!2821773)))

(declare-fun res!1885813 () Bool)

(assert (=> b!4528716 (=> (not res!1885813) (not e!2821773))))

(declare-fun isDefined!8433 (Option!11145) Bool)

(assert (=> b!4528716 (= res!1885813 (isDefined!8433 lt!1704487))))

(declare-fun b!4528717 () Bool)

(declare-fun res!1885814 () Bool)

(assert (=> b!4528717 (=> (not res!1885814) (not e!2821773))))

(assert (=> b!4528717 (= res!1885814 (= (_1!28859 (get!16625 lt!1704487)) key!3287))))

(declare-fun b!4528718 () Bool)

(assert (=> b!4528718 (= e!2821777 e!2821776)))

(declare-fun c!773199 () Bool)

(assert (=> b!4528718 (= c!773199 ((_ is Cons!50686) (_2!28860 lt!1704216)))))

(assert (= (and d!1397415 c!773198) b!4528712))

(assert (= (and d!1397415 (not c!773198)) b!4528718))

(assert (= (and b!4528718 c!773199) b!4528714))

(assert (= (and b!4528718 (not c!773199)) b!4528715))

(assert (= (and d!1397415 res!1885816) b!4528713))

(assert (= (and d!1397415 (not res!1885815)) b!4528716))

(assert (= (and b!4528716 res!1885813) b!4528717))

(assert (= (and b!4528717 res!1885814) b!4528711))

(assert (=> b!4528713 m!5283823))

(declare-fun m!5284299 () Bool)

(assert (=> b!4528711 m!5284299))

(assert (=> b!4528711 m!5284299))

(declare-fun m!5284301 () Bool)

(assert (=> b!4528711 m!5284301))

(declare-fun m!5284303 () Bool)

(assert (=> d!1397415 m!5284303))

(assert (=> d!1397415 m!5283817))

(declare-fun m!5284305 () Bool)

(assert (=> b!4528716 m!5284305))

(declare-fun m!5284307 () Bool)

(assert (=> b!4528714 m!5284307))

(assert (=> b!4528717 m!5284299))

(assert (=> b!4528468 d!1397415))

(declare-fun d!1397421 () Bool)

(assert (=> d!1397421 (dynLambda!21183 lambda!173906 (h!56552 (toList!4356 lm!1477)))))

(declare-fun lt!1704492 () Unit!96482)

(declare-fun choose!29684 (List!50811 Int tuple2!51132) Unit!96482)

(assert (=> d!1397421 (= lt!1704492 (choose!29684 (toList!4356 lm!1477) lambda!173906 (h!56552 (toList!4356 lm!1477))))))

(declare-fun e!2821784 () Bool)

(assert (=> d!1397421 e!2821784))

(declare-fun res!1885819 () Bool)

(assert (=> d!1397421 (=> (not res!1885819) (not e!2821784))))

(assert (=> d!1397421 (= res!1885819 (forall!10297 (toList!4356 lm!1477) lambda!173906))))

(assert (=> d!1397421 (= (forallContained!2550 (toList!4356 lm!1477) lambda!173906 (h!56552 (toList!4356 lm!1477))) lt!1704492)))

(declare-fun b!4528729 () Bool)

(assert (=> b!4528729 (= e!2821784 (contains!13437 (toList!4356 lm!1477) (h!56552 (toList!4356 lm!1477))))))

(assert (= (and d!1397421 res!1885819) b!4528729))

(declare-fun b_lambda!156287 () Bool)

(assert (=> (not b_lambda!156287) (not d!1397421)))

(declare-fun m!5284309 () Bool)

(assert (=> d!1397421 m!5284309))

(declare-fun m!5284311 () Bool)

(assert (=> d!1397421 m!5284311))

(declare-fun m!5284313 () Bool)

(assert (=> d!1397421 m!5284313))

(declare-fun m!5284315 () Bool)

(assert (=> b!4528729 m!5284315))

(assert (=> b!4528468 d!1397421))

(declare-fun d!1397423 () Bool)

(declare-fun dynLambda!21185 (Int tuple2!51130) Bool)

(assert (=> d!1397423 (dynLambda!21185 lambda!173907 (tuple2!51131 key!3287 (_2!28859 (get!16625 lt!1704201))))))

(declare-fun lt!1704497 () Unit!96482)

(declare-fun choose!29685 (List!50810 Int tuple2!51130) Unit!96482)

(assert (=> d!1397423 (= lt!1704497 (choose!29685 (_2!28860 (h!56552 (toList!4356 lm!1477))) lambda!173907 (tuple2!51131 key!3287 (_2!28859 (get!16625 lt!1704201)))))))

(declare-fun e!2821790 () Bool)

(assert (=> d!1397423 e!2821790))

(declare-fun res!1885823 () Bool)

(assert (=> d!1397423 (=> (not res!1885823) (not e!2821790))))

(assert (=> d!1397423 (= res!1885823 (forall!10299 (_2!28860 (h!56552 (toList!4356 lm!1477))) lambda!173907))))

(assert (=> d!1397423 (= (forallContained!2551 (_2!28860 (h!56552 (toList!4356 lm!1477))) lambda!173907 (tuple2!51131 key!3287 (_2!28859 (get!16625 lt!1704201)))) lt!1704497)))

(declare-fun b!4528737 () Bool)

(assert (=> b!4528737 (= e!2821790 (contains!13441 (_2!28860 (h!56552 (toList!4356 lm!1477))) (tuple2!51131 key!3287 (_2!28859 (get!16625 lt!1704201)))))))

(assert (= (and d!1397423 res!1885823) b!4528737))

(declare-fun b_lambda!156291 () Bool)

(assert (=> (not b_lambda!156291) (not d!1397423)))

(declare-fun m!5284327 () Bool)

(assert (=> d!1397423 m!5284327))

(declare-fun m!5284329 () Bool)

(assert (=> d!1397423 m!5284329))

(declare-fun m!5284331 () Bool)

(assert (=> d!1397423 m!5284331))

(declare-fun m!5284333 () Bool)

(assert (=> b!4528737 m!5284333))

(assert (=> b!4528468 d!1397423))

(declare-fun d!1397429 () Bool)

(assert (=> d!1397429 (= (get!16625 lt!1704201) (v!44786 lt!1704201))))

(assert (=> b!4528468 d!1397429))

(declare-fun d!1397431 () Bool)

(declare-fun e!2821811 () Bool)

(assert (=> d!1397431 e!2821811))

(declare-fun res!1885841 () Bool)

(assert (=> d!1397431 (=> res!1885841 e!2821811)))

(declare-fun e!2821812 () Bool)

(assert (=> d!1397431 (= res!1885841 e!2821812)))

(declare-fun res!1885840 () Bool)

(assert (=> d!1397431 (=> (not res!1885840) (not e!2821812))))

(declare-fun lt!1704531 () Bool)

(assert (=> d!1397431 (= res!1885840 (not lt!1704531))))

(declare-fun lt!1704532 () Bool)

(assert (=> d!1397431 (= lt!1704531 lt!1704532)))

(declare-fun lt!1704526 () Unit!96482)

(declare-fun e!2821810 () Unit!96482)

(assert (=> d!1397431 (= lt!1704526 e!2821810)))

(declare-fun c!773214 () Bool)

(assert (=> d!1397431 (= c!773214 lt!1704532)))

(declare-fun containsKey!1821 (List!50810 K!12075) Bool)

(assert (=> d!1397431 (= lt!1704532 (containsKey!1821 (toList!4355 lt!1704218) key!3287))))

(assert (=> d!1397431 (= (contains!13439 lt!1704218 key!3287) lt!1704531)))

(declare-fun b!4528765 () Bool)

(declare-fun e!2821814 () Unit!96482)

(declare-fun Unit!96533 () Unit!96482)

(assert (=> b!4528765 (= e!2821814 Unit!96533)))

(declare-fun b!4528766 () Bool)

(declare-datatypes ((List!50813 0))(
  ( (Nil!50689) (Cons!50689 (h!56556 K!12075) (t!357775 List!50813)) )
))
(declare-fun e!2821815 () List!50813)

(declare-fun getKeysList!476 (List!50810) List!50813)

(assert (=> b!4528766 (= e!2821815 (getKeysList!476 (toList!4355 lt!1704218)))))

(declare-fun b!4528767 () Bool)

(declare-fun lt!1704533 () Unit!96482)

(assert (=> b!4528767 (= e!2821810 lt!1704533)))

(declare-fun lt!1704527 () Unit!96482)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1020 (List!50810 K!12075) Unit!96482)

(assert (=> b!4528767 (= lt!1704527 (lemmaContainsKeyImpliesGetValueByKeyDefined!1020 (toList!4355 lt!1704218) key!3287))))

(declare-datatypes ((Option!11148 0))(
  ( (None!11147) (Some!11147 (v!44793 V!12321)) )
))
(declare-fun isDefined!8435 (Option!11148) Bool)

(declare-fun getValueByKey!1116 (List!50810 K!12075) Option!11148)

(assert (=> b!4528767 (isDefined!8435 (getValueByKey!1116 (toList!4355 lt!1704218) key!3287))))

(declare-fun lt!1704528 () Unit!96482)

(assert (=> b!4528767 (= lt!1704528 lt!1704527)))

(declare-fun lemmaInListThenGetKeysListContains!472 (List!50810 K!12075) Unit!96482)

(assert (=> b!4528767 (= lt!1704533 (lemmaInListThenGetKeysListContains!472 (toList!4355 lt!1704218) key!3287))))

(declare-fun call!315666 () Bool)

(assert (=> b!4528767 call!315666))

(declare-fun bm!315661 () Bool)

(declare-fun contains!13442 (List!50813 K!12075) Bool)

(assert (=> bm!315661 (= call!315666 (contains!13442 e!2821815 key!3287))))

(declare-fun c!773212 () Bool)

(assert (=> bm!315661 (= c!773212 c!773214)))

(declare-fun b!4528768 () Bool)

(assert (=> b!4528768 false))

(declare-fun lt!1704530 () Unit!96482)

(declare-fun lt!1704529 () Unit!96482)

(assert (=> b!4528768 (= lt!1704530 lt!1704529)))

(assert (=> b!4528768 (containsKey!1821 (toList!4355 lt!1704218) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!475 (List!50810 K!12075) Unit!96482)

(assert (=> b!4528768 (= lt!1704529 (lemmaInGetKeysListThenContainsKey!475 (toList!4355 lt!1704218) key!3287))))

(declare-fun Unit!96535 () Unit!96482)

(assert (=> b!4528768 (= e!2821814 Unit!96535)))

(declare-fun b!4528769 () Bool)

(declare-fun keys!17620 (ListMap!3617) List!50813)

(assert (=> b!4528769 (= e!2821815 (keys!17620 lt!1704218))))

(declare-fun b!4528770 () Bool)

(assert (=> b!4528770 (= e!2821812 (not (contains!13442 (keys!17620 lt!1704218) key!3287)))))

(declare-fun b!4528771 () Bool)

(assert (=> b!4528771 (= e!2821810 e!2821814)))

(declare-fun c!773213 () Bool)

(assert (=> b!4528771 (= c!773213 call!315666)))

(declare-fun b!4528772 () Bool)

(declare-fun e!2821813 () Bool)

(assert (=> b!4528772 (= e!2821813 (contains!13442 (keys!17620 lt!1704218) key!3287))))

(declare-fun b!4528773 () Bool)

(assert (=> b!4528773 (= e!2821811 e!2821813)))

(declare-fun res!1885839 () Bool)

(assert (=> b!4528773 (=> (not res!1885839) (not e!2821813))))

(assert (=> b!4528773 (= res!1885839 (isDefined!8435 (getValueByKey!1116 (toList!4355 lt!1704218) key!3287)))))

(assert (= (and d!1397431 c!773214) b!4528767))

(assert (= (and d!1397431 (not c!773214)) b!4528771))

(assert (= (and b!4528771 c!773213) b!4528768))

(assert (= (and b!4528771 (not c!773213)) b!4528765))

(assert (= (or b!4528767 b!4528771) bm!315661))

(assert (= (and bm!315661 c!773212) b!4528766))

(assert (= (and bm!315661 (not c!773212)) b!4528769))

(assert (= (and d!1397431 res!1885840) b!4528770))

(assert (= (and d!1397431 (not res!1885841)) b!4528773))

(assert (= (and b!4528773 res!1885839) b!4528772))

(declare-fun m!5284377 () Bool)

(assert (=> b!4528769 m!5284377))

(declare-fun m!5284379 () Bool)

(assert (=> bm!315661 m!5284379))

(declare-fun m!5284381 () Bool)

(assert (=> b!4528767 m!5284381))

(declare-fun m!5284383 () Bool)

(assert (=> b!4528767 m!5284383))

(assert (=> b!4528767 m!5284383))

(declare-fun m!5284385 () Bool)

(assert (=> b!4528767 m!5284385))

(declare-fun m!5284387 () Bool)

(assert (=> b!4528767 m!5284387))

(assert (=> b!4528772 m!5284377))

(assert (=> b!4528772 m!5284377))

(declare-fun m!5284389 () Bool)

(assert (=> b!4528772 m!5284389))

(declare-fun m!5284391 () Bool)

(assert (=> b!4528768 m!5284391))

(declare-fun m!5284393 () Bool)

(assert (=> b!4528768 m!5284393))

(assert (=> d!1397431 m!5284391))

(declare-fun m!5284395 () Bool)

(assert (=> b!4528766 m!5284395))

(assert (=> b!4528773 m!5284383))

(assert (=> b!4528773 m!5284383))

(assert (=> b!4528773 m!5284385))

(assert (=> b!4528770 m!5284377))

(assert (=> b!4528770 m!5284377))

(assert (=> b!4528770 m!5284389))

(assert (=> b!4528466 d!1397431))

(declare-fun bs!864315 () Bool)

(declare-fun d!1397451 () Bool)

(assert (= bs!864315 (and d!1397451 start!448904)))

(declare-fun lambda!174003 () Int)

(assert (=> bs!864315 (= lambda!174003 lambda!173905)))

(declare-fun bs!864318 () Bool)

(assert (= bs!864318 (and d!1397451 b!4528468)))

(assert (=> bs!864318 (not (= lambda!174003 lambda!173906))))

(declare-fun bs!864320 () Bool)

(assert (= bs!864320 (and d!1397451 d!1397351)))

(assert (=> bs!864320 (= lambda!174003 lambda!173982)))

(declare-fun lt!1704536 () ListMap!3617)

(assert (=> d!1397451 (invariantList!1029 (toList!4355 lt!1704536))))

(declare-fun e!2821816 () ListMap!3617)

(assert (=> d!1397451 (= lt!1704536 e!2821816)))

(declare-fun c!773215 () Bool)

(assert (=> d!1397451 (= c!773215 ((_ is Cons!50687) (toList!4356 lm!1477)))))

(assert (=> d!1397451 (forall!10297 (toList!4356 lm!1477) lambda!174003)))

(assert (=> d!1397451 (= (extractMap!1230 (toList!4356 lm!1477)) lt!1704536)))

(declare-fun b!4528774 () Bool)

(assert (=> b!4528774 (= e!2821816 (addToMapMapFromBucket!701 (_2!28860 (h!56552 (toList!4356 lm!1477))) (extractMap!1230 (t!357773 (toList!4356 lm!1477)))))))

(declare-fun b!4528775 () Bool)

(assert (=> b!4528775 (= e!2821816 (ListMap!3618 Nil!50686))))

(assert (= (and d!1397451 c!773215) b!4528774))

(assert (= (and d!1397451 (not c!773215)) b!4528775))

(declare-fun m!5284397 () Bool)

(assert (=> d!1397451 m!5284397))

(declare-fun m!5284399 () Bool)

(assert (=> d!1397451 m!5284399))

(assert (=> b!4528774 m!5283893))

(assert (=> b!4528774 m!5283893))

(declare-fun m!5284401 () Bool)

(assert (=> b!4528774 m!5284401))

(assert (=> b!4528466 d!1397451))

(declare-fun d!1397453 () Bool)

(declare-fun res!1885842 () Bool)

(declare-fun e!2821817 () Bool)

(assert (=> d!1397453 (=> res!1885842 e!2821817)))

(assert (=> d!1397453 (= res!1885842 (not ((_ is Cons!50686) (_2!28860 lt!1704216))))))

(assert (=> d!1397453 (= (noDuplicateKeys!1174 (_2!28860 lt!1704216)) e!2821817)))

(declare-fun b!4528776 () Bool)

(declare-fun e!2821818 () Bool)

(assert (=> b!4528776 (= e!2821817 e!2821818)))

(declare-fun res!1885843 () Bool)

(assert (=> b!4528776 (=> (not res!1885843) (not e!2821818))))

(assert (=> b!4528776 (= res!1885843 (not (containsKey!1818 (t!357772 (_2!28860 lt!1704216)) (_1!28859 (h!56551 (_2!28860 lt!1704216))))))))

(declare-fun b!4528777 () Bool)

(assert (=> b!4528777 (= e!2821818 (noDuplicateKeys!1174 (t!357772 (_2!28860 lt!1704216))))))

(assert (= (and d!1397453 (not res!1885842)) b!4528776))

(assert (= (and b!4528776 res!1885843) b!4528777))

(declare-fun m!5284403 () Bool)

(assert (=> b!4528776 m!5284403))

(declare-fun m!5284407 () Bool)

(assert (=> b!4528777 m!5284407))

(assert (=> b!4528487 d!1397453))

(declare-fun d!1397455 () Bool)

(assert (=> d!1397455 (dynLambda!21183 lambda!173905 (h!56552 (toList!4356 lm!1477)))))

(declare-fun lt!1704538 () Unit!96482)

(assert (=> d!1397455 (= lt!1704538 (choose!29684 (toList!4356 lm!1477) lambda!173905 (h!56552 (toList!4356 lm!1477))))))

(declare-fun e!2821819 () Bool)

(assert (=> d!1397455 e!2821819))

(declare-fun res!1885844 () Bool)

(assert (=> d!1397455 (=> (not res!1885844) (not e!2821819))))

(assert (=> d!1397455 (= res!1885844 (forall!10297 (toList!4356 lm!1477) lambda!173905))))

(assert (=> d!1397455 (= (forallContained!2550 (toList!4356 lm!1477) lambda!173905 (h!56552 (toList!4356 lm!1477))) lt!1704538)))

(declare-fun b!4528778 () Bool)

(assert (=> b!4528778 (= e!2821819 (contains!13437 (toList!4356 lm!1477) (h!56552 (toList!4356 lm!1477))))))

(assert (= (and d!1397455 res!1885844) b!4528778))

(declare-fun b_lambda!156293 () Bool)

(assert (=> (not b_lambda!156293) (not d!1397455)))

(assert (=> d!1397455 m!5283911))

(declare-fun m!5284413 () Bool)

(assert (=> d!1397455 m!5284413))

(assert (=> d!1397455 m!5283907))

(assert (=> b!4528778 m!5284315))

(assert (=> b!4528487 d!1397455))

(declare-fun bs!864337 () Bool)

(declare-fun d!1397459 () Bool)

(assert (= bs!864337 (and d!1397459 start!448904)))

(declare-fun lambda!174009 () Int)

(assert (=> bs!864337 (= lambda!174009 lambda!173905)))

(declare-fun bs!864338 () Bool)

(assert (= bs!864338 (and d!1397459 b!4528468)))

(assert (=> bs!864338 (not (= lambda!174009 lambda!173906))))

(declare-fun bs!864339 () Bool)

(assert (= bs!864339 (and d!1397459 d!1397351)))

(assert (=> bs!864339 (= lambda!174009 lambda!173982)))

(declare-fun bs!864340 () Bool)

(assert (= bs!864340 (and d!1397459 d!1397451)))

(assert (=> bs!864340 (= lambda!174009 lambda!174003)))

(assert (=> d!1397459 (not (contains!13439 (extractMap!1230 (toList!4356 lm!1477)) key!3287))))

(declare-fun lt!1704545 () Unit!96482)

(declare-fun choose!29688 (ListLongMap!2987 K!12075 Hashable!5569) Unit!96482)

(assert (=> d!1397459 (= lt!1704545 (choose!29688 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1397459 (forall!10297 (toList!4356 lm!1477) lambda!174009)))

(assert (=> d!1397459 (= (lemmaNotInItsHashBucketThenNotInMap!162 lm!1477 key!3287 hashF!1107) lt!1704545)))

(declare-fun bs!864341 () Bool)

(assert (= bs!864341 d!1397459))

(assert (=> bs!864341 m!5283905))

(assert (=> bs!864341 m!5283905))

(declare-fun m!5284425 () Bool)

(assert (=> bs!864341 m!5284425))

(declare-fun m!5284427 () Bool)

(assert (=> bs!864341 m!5284427))

(declare-fun m!5284429 () Bool)

(assert (=> bs!864341 m!5284429))

(assert (=> b!4528488 d!1397459))

(declare-fun bs!864342 () Bool)

(declare-fun d!1397467 () Bool)

(assert (= bs!864342 (and d!1397467 start!448904)))

(declare-fun lambda!174012 () Int)

(assert (=> bs!864342 (not (= lambda!174012 lambda!173905))))

(declare-fun bs!864343 () Bool)

(assert (= bs!864343 (and d!1397467 b!4528468)))

(assert (=> bs!864343 (= lambda!174012 lambda!173906)))

(declare-fun bs!864344 () Bool)

(assert (= bs!864344 (and d!1397467 d!1397451)))

(assert (=> bs!864344 (not (= lambda!174012 lambda!174003))))

(declare-fun bs!864345 () Bool)

(assert (= bs!864345 (and d!1397467 d!1397351)))

(assert (=> bs!864345 (not (= lambda!174012 lambda!173982))))

(declare-fun bs!864346 () Bool)

(assert (= bs!864346 (and d!1397467 d!1397459)))

(assert (=> bs!864346 (not (= lambda!174012 lambda!174009))))

(assert (=> d!1397467 true))

(assert (=> d!1397467 (= (allKeysSameHashInMap!1281 lm!1477 hashF!1107) (forall!10297 (toList!4356 lm!1477) lambda!174012))))

(declare-fun bs!864347 () Bool)

(assert (= bs!864347 d!1397467))

(declare-fun m!5284431 () Bool)

(assert (=> bs!864347 m!5284431))

(assert (=> b!4528470 d!1397467))

(declare-fun d!1397469 () Bool)

(assert (=> d!1397469 (= (eq!631 lt!1704189 lt!1704218) (= (content!8391 (toList!4355 lt!1704189)) (content!8391 (toList!4355 lt!1704218))))))

(declare-fun bs!864348 () Bool)

(assert (= bs!864348 d!1397469))

(declare-fun m!5284433 () Bool)

(assert (=> bs!864348 m!5284433))

(declare-fun m!5284435 () Bool)

(assert (=> bs!864348 m!5284435))

(assert (=> b!4528469 d!1397469))

(declare-fun d!1397471 () Bool)

(assert (=> d!1397471 (= (eq!631 lt!1704205 lt!1704212) (= (content!8391 (toList!4355 lt!1704205)) (content!8391 (toList!4355 lt!1704212))))))

(declare-fun bs!864349 () Bool)

(assert (= bs!864349 d!1397471))

(declare-fun m!5284437 () Bool)

(assert (=> bs!864349 m!5284437))

(declare-fun m!5284439 () Bool)

(assert (=> bs!864349 m!5284439))

(assert (=> b!4528469 d!1397471))

(declare-fun d!1397473 () Bool)

(declare-fun e!2821842 () Bool)

(assert (=> d!1397473 e!2821842))

(declare-fun res!1885857 () Bool)

(assert (=> d!1397473 (=> (not res!1885857) (not e!2821842))))

(declare-fun lt!1704572 () ListMap!3617)

(assert (=> d!1397473 (= res!1885857 (not (contains!13439 lt!1704572 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!153 (List!50810 K!12075) List!50810)

(assert (=> d!1397473 (= lt!1704572 (ListMap!3618 (removePresrvNoDuplicatedKeys!153 (toList!4355 lt!1704188) key!3287)))))

(assert (=> d!1397473 (= (-!400 lt!1704188 key!3287) lt!1704572)))

(declare-fun b!4528813 () Bool)

(declare-fun content!8395 (List!50813) (InoxSet K!12075))

(assert (=> b!4528813 (= e!2821842 (= ((_ map and) (content!8395 (keys!17620 lt!1704188)) ((_ map not) (store ((as const (Array K!12075 Bool)) false) key!3287 true))) (content!8395 (keys!17620 lt!1704572))))))

(assert (= (and d!1397473 res!1885857) b!4528813))

(declare-fun m!5284461 () Bool)

(assert (=> d!1397473 m!5284461))

(declare-fun m!5284463 () Bool)

(assert (=> d!1397473 m!5284463))

(declare-fun m!5284465 () Bool)

(assert (=> b!4528813 m!5284465))

(declare-fun m!5284467 () Bool)

(assert (=> b!4528813 m!5284467))

(declare-fun m!5284469 () Bool)

(assert (=> b!4528813 m!5284469))

(declare-fun m!5284471 () Bool)

(assert (=> b!4528813 m!5284471))

(assert (=> b!4528813 m!5284469))

(assert (=> b!4528813 m!5284467))

(declare-fun m!5284473 () Bool)

(assert (=> b!4528813 m!5284473))

(assert (=> b!4528469 d!1397473))

(declare-fun bs!864353 () Bool)

(declare-fun d!1397477 () Bool)

(assert (= bs!864353 (and d!1397477 start!448904)))

(declare-fun lambda!174014 () Int)

(assert (=> bs!864353 (= lambda!174014 lambda!173905)))

(declare-fun bs!864354 () Bool)

(assert (= bs!864354 (and d!1397477 b!4528468)))

(assert (=> bs!864354 (not (= lambda!174014 lambda!173906))))

(declare-fun bs!864357 () Bool)

(assert (= bs!864357 (and d!1397477 d!1397451)))

(assert (=> bs!864357 (= lambda!174014 lambda!174003)))

(declare-fun bs!864359 () Bool)

(assert (= bs!864359 (and d!1397477 d!1397467)))

(assert (=> bs!864359 (not (= lambda!174014 lambda!174012))))

(declare-fun bs!864361 () Bool)

(assert (= bs!864361 (and d!1397477 d!1397351)))

(assert (=> bs!864361 (= lambda!174014 lambda!173982)))

(declare-fun bs!864362 () Bool)

(assert (= bs!864362 (and d!1397477 d!1397459)))

(assert (=> bs!864362 (= lambda!174014 lambda!174009)))

(declare-fun lt!1704574 () ListMap!3617)

(assert (=> d!1397477 (invariantList!1029 (toList!4355 lt!1704574))))

(declare-fun e!2821844 () ListMap!3617)

(assert (=> d!1397477 (= lt!1704574 e!2821844)))

(declare-fun c!773227 () Bool)

(assert (=> d!1397477 (= c!773227 ((_ is Cons!50687) (toList!4356 (+!1564 lt!1704191 lt!1704216))))))

(assert (=> d!1397477 (forall!10297 (toList!4356 (+!1564 lt!1704191 lt!1704216)) lambda!174014)))

(assert (=> d!1397477 (= (extractMap!1230 (toList!4356 (+!1564 lt!1704191 lt!1704216))) lt!1704574)))

(declare-fun b!4528816 () Bool)

(assert (=> b!4528816 (= e!2821844 (addToMapMapFromBucket!701 (_2!28860 (h!56552 (toList!4356 (+!1564 lt!1704191 lt!1704216)))) (extractMap!1230 (t!357773 (toList!4356 (+!1564 lt!1704191 lt!1704216))))))))

(declare-fun b!4528817 () Bool)

(assert (=> b!4528817 (= e!2821844 (ListMap!3618 Nil!50686))))

(assert (= (and d!1397477 c!773227) b!4528816))

(assert (= (and d!1397477 (not c!773227)) b!4528817))

(declare-fun m!5284475 () Bool)

(assert (=> d!1397477 m!5284475))

(declare-fun m!5284477 () Bool)

(assert (=> d!1397477 m!5284477))

(declare-fun m!5284479 () Bool)

(assert (=> b!4528816 m!5284479))

(assert (=> b!4528816 m!5284479))

(declare-fun m!5284481 () Bool)

(assert (=> b!4528816 m!5284481))

(assert (=> b!4528469 d!1397477))

(declare-fun d!1397479 () Bool)

(declare-fun e!2821845 () Bool)

(assert (=> d!1397479 e!2821845))

(declare-fun res!1885858 () Bool)

(assert (=> d!1397479 (=> (not res!1885858) (not e!2821845))))

(declare-fun lt!1704575 () ListLongMap!2987)

(assert (=> d!1397479 (= res!1885858 (contains!13438 lt!1704575 (_1!28860 lt!1704216)))))

(declare-fun lt!1704576 () List!50811)

(assert (=> d!1397479 (= lt!1704575 (ListLongMap!2988 lt!1704576))))

(declare-fun lt!1704577 () Unit!96482)

(declare-fun lt!1704578 () Unit!96482)

(assert (=> d!1397479 (= lt!1704577 lt!1704578)))

(assert (=> d!1397479 (= (getValueByKey!1115 lt!1704576 (_1!28860 lt!1704216)) (Some!11146 (_2!28860 lt!1704216)))))

(assert (=> d!1397479 (= lt!1704578 (lemmaContainsTupThenGetReturnValue!698 lt!1704576 (_1!28860 lt!1704216) (_2!28860 lt!1704216)))))

(assert (=> d!1397479 (= lt!1704576 (insertStrictlySorted!420 (toList!4356 lt!1704191) (_1!28860 lt!1704216) (_2!28860 lt!1704216)))))

(assert (=> d!1397479 (= (+!1564 lt!1704191 lt!1704216) lt!1704575)))

(declare-fun b!4528818 () Bool)

(declare-fun res!1885859 () Bool)

(assert (=> b!4528818 (=> (not res!1885859) (not e!2821845))))

(assert (=> b!4528818 (= res!1885859 (= (getValueByKey!1115 (toList!4356 lt!1704575) (_1!28860 lt!1704216)) (Some!11146 (_2!28860 lt!1704216))))))

(declare-fun b!4528819 () Bool)

(assert (=> b!4528819 (= e!2821845 (contains!13437 (toList!4356 lt!1704575) lt!1704216))))

(assert (= (and d!1397479 res!1885858) b!4528818))

(assert (= (and b!4528818 res!1885859) b!4528819))

(declare-fun m!5284489 () Bool)

(assert (=> d!1397479 m!5284489))

(declare-fun m!5284491 () Bool)

(assert (=> d!1397479 m!5284491))

(declare-fun m!5284493 () Bool)

(assert (=> d!1397479 m!5284493))

(declare-fun m!5284495 () Bool)

(assert (=> d!1397479 m!5284495))

(declare-fun m!5284497 () Bool)

(assert (=> b!4528818 m!5284497))

(declare-fun m!5284499 () Bool)

(assert (=> b!4528819 m!5284499))

(assert (=> b!4528469 d!1397479))

(declare-fun d!1397483 () Bool)

(declare-fun e!2821846 () Bool)

(assert (=> d!1397483 e!2821846))

(declare-fun res!1885860 () Bool)

(assert (=> d!1397483 (=> (not res!1885860) (not e!2821846))))

(declare-fun lt!1704579 () ListLongMap!2987)

(assert (=> d!1397483 (= res!1885860 (contains!13438 lt!1704579 (_1!28860 lt!1704202)))))

(declare-fun lt!1704580 () List!50811)

(assert (=> d!1397483 (= lt!1704579 (ListLongMap!2988 lt!1704580))))

(declare-fun lt!1704581 () Unit!96482)

(declare-fun lt!1704582 () Unit!96482)

(assert (=> d!1397483 (= lt!1704581 lt!1704582)))

(assert (=> d!1397483 (= (getValueByKey!1115 lt!1704580 (_1!28860 lt!1704202)) (Some!11146 (_2!28860 lt!1704202)))))

(assert (=> d!1397483 (= lt!1704582 (lemmaContainsTupThenGetReturnValue!698 lt!1704580 (_1!28860 lt!1704202) (_2!28860 lt!1704202)))))

(assert (=> d!1397483 (= lt!1704580 (insertStrictlySorted!420 (toList!4356 lt!1704191) (_1!28860 lt!1704202) (_2!28860 lt!1704202)))))

(assert (=> d!1397483 (= (+!1564 lt!1704191 lt!1704202) lt!1704579)))

(declare-fun b!4528820 () Bool)

(declare-fun res!1885861 () Bool)

(assert (=> b!4528820 (=> (not res!1885861) (not e!2821846))))

(assert (=> b!4528820 (= res!1885861 (= (getValueByKey!1115 (toList!4356 lt!1704579) (_1!28860 lt!1704202)) (Some!11146 (_2!28860 lt!1704202))))))

(declare-fun b!4528821 () Bool)

(assert (=> b!4528821 (= e!2821846 (contains!13437 (toList!4356 lt!1704579) lt!1704202))))

(assert (= (and d!1397483 res!1885860) b!4528820))

(assert (= (and b!4528820 res!1885861) b!4528821))

(declare-fun m!5284501 () Bool)

(assert (=> d!1397483 m!5284501))

(declare-fun m!5284503 () Bool)

(assert (=> d!1397483 m!5284503))

(declare-fun m!5284505 () Bool)

(assert (=> d!1397483 m!5284505))

(declare-fun m!5284507 () Bool)

(assert (=> d!1397483 m!5284507))

(declare-fun m!5284509 () Bool)

(assert (=> b!4528820 m!5284509))

(declare-fun m!5284511 () Bool)

(assert (=> b!4528821 m!5284511))

(assert (=> b!4528469 d!1397483))

(declare-fun d!1397485 () Bool)

(declare-fun head!9440 (List!50811) tuple2!51132)

(assert (=> d!1397485 (= (head!9438 lm!1477) (head!9440 (toList!4356 lm!1477)))))

(declare-fun bs!864366 () Bool)

(assert (= bs!864366 d!1397485))

(declare-fun m!5284513 () Bool)

(assert (=> bs!864366 m!5284513))

(assert (=> b!4528469 d!1397485))

(declare-fun bs!864401 () Bool)

(declare-fun d!1397487 () Bool)

(assert (= bs!864401 (and d!1397487 start!448904)))

(declare-fun lambda!174022 () Int)

(assert (=> bs!864401 (= lambda!174022 lambda!173905)))

(declare-fun bs!864403 () Bool)

(assert (= bs!864403 (and d!1397487 b!4528468)))

(assert (=> bs!864403 (not (= lambda!174022 lambda!173906))))

(declare-fun bs!864405 () Bool)

(assert (= bs!864405 (and d!1397487 d!1397451)))

(assert (=> bs!864405 (= lambda!174022 lambda!174003)))

(declare-fun bs!864407 () Bool)

(assert (= bs!864407 (and d!1397487 d!1397467)))

(assert (=> bs!864407 (not (= lambda!174022 lambda!174012))))

(declare-fun bs!864408 () Bool)

(assert (= bs!864408 (and d!1397487 d!1397477)))

(assert (=> bs!864408 (= lambda!174022 lambda!174014)))

(declare-fun bs!864409 () Bool)

(assert (= bs!864409 (and d!1397487 d!1397351)))

(assert (=> bs!864409 (= lambda!174022 lambda!173982)))

(declare-fun bs!864410 () Bool)

(assert (= bs!864410 (and d!1397487 d!1397459)))

(assert (=> bs!864410 (= lambda!174022 lambda!174009)))

(assert (=> d!1397487 (eq!631 (extractMap!1230 (toList!4356 (+!1564 lt!1704191 (tuple2!51133 hash!344 newBucket!178)))) (-!400 (extractMap!1230 (toList!4356 lt!1704191)) key!3287))))

(declare-fun lt!1704606 () Unit!96482)

(declare-fun choose!29690 (ListLongMap!2987 (_ BitVec 64) List!50810 K!12075 Hashable!5569) Unit!96482)

(assert (=> d!1397487 (= lt!1704606 (choose!29690 lt!1704191 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1397487 (forall!10297 (toList!4356 lt!1704191) lambda!174022)))

(assert (=> d!1397487 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!159 lt!1704191 hash!344 newBucket!178 key!3287 hashF!1107) lt!1704606)))

(declare-fun bs!864411 () Bool)

(assert (= bs!864411 d!1397487))

(declare-fun m!5284577 () Bool)

(assert (=> bs!864411 m!5284577))

(declare-fun m!5284579 () Bool)

(assert (=> bs!864411 m!5284579))

(assert (=> bs!864411 m!5283887))

(declare-fun m!5284581 () Bool)

(assert (=> bs!864411 m!5284581))

(assert (=> bs!864411 m!5283887))

(declare-fun m!5284583 () Bool)

(assert (=> bs!864411 m!5284583))

(declare-fun m!5284585 () Bool)

(assert (=> bs!864411 m!5284585))

(assert (=> bs!864411 m!5284577))

(assert (=> bs!864411 m!5284581))

(declare-fun m!5284587 () Bool)

(assert (=> bs!864411 m!5284587))

(assert (=> b!4528469 d!1397487))

(declare-fun bs!864412 () Bool)

(declare-fun d!1397499 () Bool)

(assert (= bs!864412 (and d!1397499 start!448904)))

(declare-fun lambda!174023 () Int)

(assert (=> bs!864412 (= lambda!174023 lambda!173905)))

(declare-fun bs!864413 () Bool)

(assert (= bs!864413 (and d!1397499 d!1397487)))

(assert (=> bs!864413 (= lambda!174023 lambda!174022)))

(declare-fun bs!864414 () Bool)

(assert (= bs!864414 (and d!1397499 b!4528468)))

(assert (=> bs!864414 (not (= lambda!174023 lambda!173906))))

(declare-fun bs!864415 () Bool)

(assert (= bs!864415 (and d!1397499 d!1397451)))

(assert (=> bs!864415 (= lambda!174023 lambda!174003)))

(declare-fun bs!864416 () Bool)

(assert (= bs!864416 (and d!1397499 d!1397467)))

(assert (=> bs!864416 (not (= lambda!174023 lambda!174012))))

(declare-fun bs!864417 () Bool)

(assert (= bs!864417 (and d!1397499 d!1397477)))

(assert (=> bs!864417 (= lambda!174023 lambda!174014)))

(declare-fun bs!864418 () Bool)

(assert (= bs!864418 (and d!1397499 d!1397351)))

(assert (=> bs!864418 (= lambda!174023 lambda!173982)))

(declare-fun bs!864419 () Bool)

(assert (= bs!864419 (and d!1397499 d!1397459)))

(assert (=> bs!864419 (= lambda!174023 lambda!174009)))

(declare-fun lt!1704607 () ListMap!3617)

(assert (=> d!1397499 (invariantList!1029 (toList!4355 lt!1704607))))

(declare-fun e!2821865 () ListMap!3617)

(assert (=> d!1397499 (= lt!1704607 e!2821865)))

(declare-fun c!773236 () Bool)

(assert (=> d!1397499 (= c!773236 ((_ is Cons!50687) (toList!4356 lt!1704194)))))

(assert (=> d!1397499 (forall!10297 (toList!4356 lt!1704194) lambda!174023)))

(assert (=> d!1397499 (= (extractMap!1230 (toList!4356 lt!1704194)) lt!1704607)))

(declare-fun b!4528850 () Bool)

(assert (=> b!4528850 (= e!2821865 (addToMapMapFromBucket!701 (_2!28860 (h!56552 (toList!4356 lt!1704194))) (extractMap!1230 (t!357773 (toList!4356 lt!1704194)))))))

(declare-fun b!4528851 () Bool)

(assert (=> b!4528851 (= e!2821865 (ListMap!3618 Nil!50686))))

(assert (= (and d!1397499 c!773236) b!4528850))

(assert (= (and d!1397499 (not c!773236)) b!4528851))

(declare-fun m!5284591 () Bool)

(assert (=> d!1397499 m!5284591))

(declare-fun m!5284593 () Bool)

(assert (=> d!1397499 m!5284593))

(declare-fun m!5284595 () Bool)

(assert (=> b!4528850 m!5284595))

(assert (=> b!4528850 m!5284595))

(declare-fun m!5284599 () Bool)

(assert (=> b!4528850 m!5284599))

(assert (=> b!4528469 d!1397499))

(declare-fun d!1397507 () Bool)

(declare-fun e!2821871 () Bool)

(assert (=> d!1397507 e!2821871))

(declare-fun res!1885872 () Bool)

(assert (=> d!1397507 (=> res!1885872 e!2821871)))

(declare-fun e!2821872 () Bool)

(assert (=> d!1397507 (= res!1885872 e!2821872)))

(declare-fun res!1885871 () Bool)

(assert (=> d!1397507 (=> (not res!1885871) (not e!2821872))))

(declare-fun lt!1704613 () Bool)

(assert (=> d!1397507 (= res!1885871 (not lt!1704613))))

(declare-fun lt!1704614 () Bool)

(assert (=> d!1397507 (= lt!1704613 lt!1704614)))

(declare-fun lt!1704608 () Unit!96482)

(declare-fun e!2821870 () Unit!96482)

(assert (=> d!1397507 (= lt!1704608 e!2821870)))

(declare-fun c!773239 () Bool)

(assert (=> d!1397507 (= c!773239 lt!1704614)))

(assert (=> d!1397507 (= lt!1704614 (containsKey!1821 (toList!4355 (extractMap!1230 (t!357773 (toList!4356 lm!1477)))) key!3287))))

(assert (=> d!1397507 (= (contains!13439 (extractMap!1230 (t!357773 (toList!4356 lm!1477))) key!3287) lt!1704613)))

(declare-fun b!4528858 () Bool)

(declare-fun e!2821874 () Unit!96482)

(declare-fun Unit!96538 () Unit!96482)

(assert (=> b!4528858 (= e!2821874 Unit!96538)))

(declare-fun b!4528859 () Bool)

(declare-fun e!2821875 () List!50813)

(assert (=> b!4528859 (= e!2821875 (getKeysList!476 (toList!4355 (extractMap!1230 (t!357773 (toList!4356 lm!1477))))))))

(declare-fun b!4528860 () Bool)

(declare-fun lt!1704615 () Unit!96482)

(assert (=> b!4528860 (= e!2821870 lt!1704615)))

(declare-fun lt!1704609 () Unit!96482)

(assert (=> b!4528860 (= lt!1704609 (lemmaContainsKeyImpliesGetValueByKeyDefined!1020 (toList!4355 (extractMap!1230 (t!357773 (toList!4356 lm!1477)))) key!3287))))

(assert (=> b!4528860 (isDefined!8435 (getValueByKey!1116 (toList!4355 (extractMap!1230 (t!357773 (toList!4356 lm!1477)))) key!3287))))

(declare-fun lt!1704610 () Unit!96482)

(assert (=> b!4528860 (= lt!1704610 lt!1704609)))

(assert (=> b!4528860 (= lt!1704615 (lemmaInListThenGetKeysListContains!472 (toList!4355 (extractMap!1230 (t!357773 (toList!4356 lm!1477)))) key!3287))))

(declare-fun call!315672 () Bool)

(assert (=> b!4528860 call!315672))

(declare-fun bm!315667 () Bool)

(assert (=> bm!315667 (= call!315672 (contains!13442 e!2821875 key!3287))))

(declare-fun c!773237 () Bool)

(assert (=> bm!315667 (= c!773237 c!773239)))

(declare-fun b!4528861 () Bool)

(assert (=> b!4528861 false))

(declare-fun lt!1704612 () Unit!96482)

(declare-fun lt!1704611 () Unit!96482)

(assert (=> b!4528861 (= lt!1704612 lt!1704611)))

(assert (=> b!4528861 (containsKey!1821 (toList!4355 (extractMap!1230 (t!357773 (toList!4356 lm!1477)))) key!3287)))

(assert (=> b!4528861 (= lt!1704611 (lemmaInGetKeysListThenContainsKey!475 (toList!4355 (extractMap!1230 (t!357773 (toList!4356 lm!1477)))) key!3287))))

(declare-fun Unit!96540 () Unit!96482)

(assert (=> b!4528861 (= e!2821874 Unit!96540)))

(declare-fun b!4528862 () Bool)

(assert (=> b!4528862 (= e!2821875 (keys!17620 (extractMap!1230 (t!357773 (toList!4356 lm!1477)))))))

(declare-fun b!4528863 () Bool)

(assert (=> b!4528863 (= e!2821872 (not (contains!13442 (keys!17620 (extractMap!1230 (t!357773 (toList!4356 lm!1477)))) key!3287)))))

(declare-fun b!4528864 () Bool)

(assert (=> b!4528864 (= e!2821870 e!2821874)))

(declare-fun c!773238 () Bool)

(assert (=> b!4528864 (= c!773238 call!315672)))

(declare-fun b!4528865 () Bool)

(declare-fun e!2821873 () Bool)

(assert (=> b!4528865 (= e!2821873 (contains!13442 (keys!17620 (extractMap!1230 (t!357773 (toList!4356 lm!1477)))) key!3287))))

(declare-fun b!4528866 () Bool)

(assert (=> b!4528866 (= e!2821871 e!2821873)))

(declare-fun res!1885870 () Bool)

(assert (=> b!4528866 (=> (not res!1885870) (not e!2821873))))

(assert (=> b!4528866 (= res!1885870 (isDefined!8435 (getValueByKey!1116 (toList!4355 (extractMap!1230 (t!357773 (toList!4356 lm!1477)))) key!3287)))))

(assert (= (and d!1397507 c!773239) b!4528860))

(assert (= (and d!1397507 (not c!773239)) b!4528864))

(assert (= (and b!4528864 c!773238) b!4528861))

(assert (= (and b!4528864 (not c!773238)) b!4528858))

(assert (= (or b!4528860 b!4528864) bm!315667))

(assert (= (and bm!315667 c!773237) b!4528859))

(assert (= (and bm!315667 (not c!773237)) b!4528862))

(assert (= (and d!1397507 res!1885871) b!4528863))

(assert (= (and d!1397507 (not res!1885872)) b!4528866))

(assert (= (and b!4528866 res!1885870) b!4528865))

(assert (=> b!4528862 m!5283893))

(declare-fun m!5284607 () Bool)

(assert (=> b!4528862 m!5284607))

(declare-fun m!5284609 () Bool)

(assert (=> bm!315667 m!5284609))

(declare-fun m!5284611 () Bool)

(assert (=> b!4528860 m!5284611))

(declare-fun m!5284613 () Bool)

(assert (=> b!4528860 m!5284613))

(assert (=> b!4528860 m!5284613))

(declare-fun m!5284615 () Bool)

(assert (=> b!4528860 m!5284615))

(declare-fun m!5284617 () Bool)

(assert (=> b!4528860 m!5284617))

(assert (=> b!4528865 m!5283893))

(assert (=> b!4528865 m!5284607))

(assert (=> b!4528865 m!5284607))

(declare-fun m!5284619 () Bool)

(assert (=> b!4528865 m!5284619))

(declare-fun m!5284621 () Bool)

(assert (=> b!4528861 m!5284621))

(declare-fun m!5284623 () Bool)

(assert (=> b!4528861 m!5284623))

(assert (=> d!1397507 m!5284621))

(declare-fun m!5284625 () Bool)

(assert (=> b!4528859 m!5284625))

(assert (=> b!4528866 m!5284613))

(assert (=> b!4528866 m!5284613))

(assert (=> b!4528866 m!5284615))

(assert (=> b!4528863 m!5283893))

(assert (=> b!4528863 m!5284607))

(assert (=> b!4528863 m!5284607))

(assert (=> b!4528863 m!5284619))

(assert (=> b!4528494 d!1397507))

(declare-fun bs!864425 () Bool)

(declare-fun d!1397513 () Bool)

(assert (= bs!864425 (and d!1397513 start!448904)))

(declare-fun lambda!174024 () Int)

(assert (=> bs!864425 (= lambda!174024 lambda!173905)))

(declare-fun bs!864426 () Bool)

(assert (= bs!864426 (and d!1397513 d!1397487)))

(assert (=> bs!864426 (= lambda!174024 lambda!174022)))

(declare-fun bs!864427 () Bool)

(assert (= bs!864427 (and d!1397513 b!4528468)))

(assert (=> bs!864427 (not (= lambda!174024 lambda!173906))))

(declare-fun bs!864428 () Bool)

(assert (= bs!864428 (and d!1397513 d!1397451)))

(assert (=> bs!864428 (= lambda!174024 lambda!174003)))

(declare-fun bs!864429 () Bool)

(assert (= bs!864429 (and d!1397513 d!1397467)))

(assert (=> bs!864429 (not (= lambda!174024 lambda!174012))))

(declare-fun bs!864430 () Bool)

(assert (= bs!864430 (and d!1397513 d!1397351)))

(assert (=> bs!864430 (= lambda!174024 lambda!173982)))

(declare-fun bs!864431 () Bool)

(assert (= bs!864431 (and d!1397513 d!1397459)))

(assert (=> bs!864431 (= lambda!174024 lambda!174009)))

(declare-fun bs!864432 () Bool)

(assert (= bs!864432 (and d!1397513 d!1397499)))

(assert (=> bs!864432 (= lambda!174024 lambda!174023)))

(declare-fun bs!864433 () Bool)

(assert (= bs!864433 (and d!1397513 d!1397477)))

(assert (=> bs!864433 (= lambda!174024 lambda!174014)))

(declare-fun lt!1704616 () ListMap!3617)

(assert (=> d!1397513 (invariantList!1029 (toList!4355 lt!1704616))))

(declare-fun e!2821876 () ListMap!3617)

(assert (=> d!1397513 (= lt!1704616 e!2821876)))

(declare-fun c!773240 () Bool)

(assert (=> d!1397513 (= c!773240 ((_ is Cons!50687) (t!357773 (toList!4356 lm!1477))))))

(assert (=> d!1397513 (forall!10297 (t!357773 (toList!4356 lm!1477)) lambda!174024)))

(assert (=> d!1397513 (= (extractMap!1230 (t!357773 (toList!4356 lm!1477))) lt!1704616)))

(declare-fun b!4528867 () Bool)

(assert (=> b!4528867 (= e!2821876 (addToMapMapFromBucket!701 (_2!28860 (h!56552 (t!357773 (toList!4356 lm!1477)))) (extractMap!1230 (t!357773 (t!357773 (toList!4356 lm!1477))))))))

(declare-fun b!4528868 () Bool)

(assert (=> b!4528868 (= e!2821876 (ListMap!3618 Nil!50686))))

(assert (= (and d!1397513 c!773240) b!4528867))

(assert (= (and d!1397513 (not c!773240)) b!4528868))

(declare-fun m!5284627 () Bool)

(assert (=> d!1397513 m!5284627))

(declare-fun m!5284629 () Bool)

(assert (=> d!1397513 m!5284629))

(declare-fun m!5284631 () Bool)

(assert (=> b!4528867 m!5284631))

(assert (=> b!4528867 m!5284631))

(declare-fun m!5284633 () Bool)

(assert (=> b!4528867 m!5284633))

(assert (=> b!4528494 d!1397513))

(declare-fun bs!864434 () Bool)

(declare-fun d!1397515 () Bool)

(assert (= bs!864434 (and d!1397515 start!448904)))

(declare-fun lambda!174027 () Int)

(assert (=> bs!864434 (= lambda!174027 lambda!173905)))

(declare-fun bs!864435 () Bool)

(assert (= bs!864435 (and d!1397515 d!1397487)))

(assert (=> bs!864435 (= lambda!174027 lambda!174022)))

(declare-fun bs!864436 () Bool)

(assert (= bs!864436 (and d!1397515 b!4528468)))

(assert (=> bs!864436 (not (= lambda!174027 lambda!173906))))

(declare-fun bs!864437 () Bool)

(assert (= bs!864437 (and d!1397515 d!1397451)))

(assert (=> bs!864437 (= lambda!174027 lambda!174003)))

(declare-fun bs!864438 () Bool)

(assert (= bs!864438 (and d!1397515 d!1397467)))

(assert (=> bs!864438 (not (= lambda!174027 lambda!174012))))

(declare-fun bs!864439 () Bool)

(assert (= bs!864439 (and d!1397515 d!1397513)))

(assert (=> bs!864439 (= lambda!174027 lambda!174024)))

(declare-fun bs!864440 () Bool)

(assert (= bs!864440 (and d!1397515 d!1397351)))

(assert (=> bs!864440 (= lambda!174027 lambda!173982)))

(declare-fun bs!864441 () Bool)

(assert (= bs!864441 (and d!1397515 d!1397459)))

(assert (=> bs!864441 (= lambda!174027 lambda!174009)))

(declare-fun bs!864442 () Bool)

(assert (= bs!864442 (and d!1397515 d!1397499)))

(assert (=> bs!864442 (= lambda!174027 lambda!174023)))

(declare-fun bs!864443 () Bool)

(assert (= bs!864443 (and d!1397515 d!1397477)))

(assert (=> bs!864443 (= lambda!174027 lambda!174014)))

(assert (=> d!1397515 (contains!13439 (extractMap!1230 (toList!4356 lt!1704191)) key!3287)))

(declare-fun lt!1704619 () Unit!96482)

(declare-fun choose!29692 (ListLongMap!2987 K!12075 Hashable!5569) Unit!96482)

(assert (=> d!1397515 (= lt!1704619 (choose!29692 lt!1704191 key!3287 hashF!1107))))

(assert (=> d!1397515 (forall!10297 (toList!4356 lt!1704191) lambda!174027)))

(assert (=> d!1397515 (= (lemmaListContainsThenExtractedMapContains!144 lt!1704191 key!3287 hashF!1107) lt!1704619)))

(declare-fun bs!864444 () Bool)

(assert (= bs!864444 d!1397515))

(assert (=> bs!864444 m!5283887))

(assert (=> bs!864444 m!5283887))

(declare-fun m!5284635 () Bool)

(assert (=> bs!864444 m!5284635))

(declare-fun m!5284637 () Bool)

(assert (=> bs!864444 m!5284637))

(declare-fun m!5284639 () Bool)

(assert (=> bs!864444 m!5284639))

(assert (=> b!4528494 d!1397515))

(declare-fun d!1397517 () Bool)

(declare-fun e!2821878 () Bool)

(assert (=> d!1397517 e!2821878))

(declare-fun res!1885875 () Bool)

(assert (=> d!1397517 (=> res!1885875 e!2821878)))

(declare-fun e!2821879 () Bool)

(assert (=> d!1397517 (= res!1885875 e!2821879)))

(declare-fun res!1885874 () Bool)

(assert (=> d!1397517 (=> (not res!1885874) (not e!2821879))))

(declare-fun lt!1704625 () Bool)

(assert (=> d!1397517 (= res!1885874 (not lt!1704625))))

(declare-fun lt!1704626 () Bool)

(assert (=> d!1397517 (= lt!1704625 lt!1704626)))

(declare-fun lt!1704620 () Unit!96482)

(declare-fun e!2821877 () Unit!96482)

(assert (=> d!1397517 (= lt!1704620 e!2821877)))

(declare-fun c!773243 () Bool)

(assert (=> d!1397517 (= c!773243 lt!1704626)))

(assert (=> d!1397517 (= lt!1704626 (containsKey!1821 (toList!4355 lt!1704188) key!3287))))

(assert (=> d!1397517 (= (contains!13439 lt!1704188 key!3287) lt!1704625)))

(declare-fun b!4528869 () Bool)

(declare-fun e!2821881 () Unit!96482)

(declare-fun Unit!96541 () Unit!96482)

(assert (=> b!4528869 (= e!2821881 Unit!96541)))

(declare-fun b!4528870 () Bool)

(declare-fun e!2821882 () List!50813)

(assert (=> b!4528870 (= e!2821882 (getKeysList!476 (toList!4355 lt!1704188)))))

(declare-fun b!4528871 () Bool)

(declare-fun lt!1704627 () Unit!96482)

(assert (=> b!4528871 (= e!2821877 lt!1704627)))

(declare-fun lt!1704621 () Unit!96482)

(assert (=> b!4528871 (= lt!1704621 (lemmaContainsKeyImpliesGetValueByKeyDefined!1020 (toList!4355 lt!1704188) key!3287))))

(assert (=> b!4528871 (isDefined!8435 (getValueByKey!1116 (toList!4355 lt!1704188) key!3287))))

(declare-fun lt!1704622 () Unit!96482)

(assert (=> b!4528871 (= lt!1704622 lt!1704621)))

(assert (=> b!4528871 (= lt!1704627 (lemmaInListThenGetKeysListContains!472 (toList!4355 lt!1704188) key!3287))))

(declare-fun call!315673 () Bool)

(assert (=> b!4528871 call!315673))

(declare-fun bm!315668 () Bool)

(assert (=> bm!315668 (= call!315673 (contains!13442 e!2821882 key!3287))))

(declare-fun c!773241 () Bool)

(assert (=> bm!315668 (= c!773241 c!773243)))

(declare-fun b!4528872 () Bool)

(assert (=> b!4528872 false))

(declare-fun lt!1704624 () Unit!96482)

(declare-fun lt!1704623 () Unit!96482)

(assert (=> b!4528872 (= lt!1704624 lt!1704623)))

(assert (=> b!4528872 (containsKey!1821 (toList!4355 lt!1704188) key!3287)))

(assert (=> b!4528872 (= lt!1704623 (lemmaInGetKeysListThenContainsKey!475 (toList!4355 lt!1704188) key!3287))))

(declare-fun Unit!96543 () Unit!96482)

(assert (=> b!4528872 (= e!2821881 Unit!96543)))

(declare-fun b!4528873 () Bool)

(assert (=> b!4528873 (= e!2821882 (keys!17620 lt!1704188))))

(declare-fun b!4528874 () Bool)

(assert (=> b!4528874 (= e!2821879 (not (contains!13442 (keys!17620 lt!1704188) key!3287)))))

(declare-fun b!4528875 () Bool)

(assert (=> b!4528875 (= e!2821877 e!2821881)))

(declare-fun c!773242 () Bool)

(assert (=> b!4528875 (= c!773242 call!315673)))

(declare-fun b!4528876 () Bool)

(declare-fun e!2821880 () Bool)

(assert (=> b!4528876 (= e!2821880 (contains!13442 (keys!17620 lt!1704188) key!3287))))

(declare-fun b!4528877 () Bool)

(assert (=> b!4528877 (= e!2821878 e!2821880)))

(declare-fun res!1885873 () Bool)

(assert (=> b!4528877 (=> (not res!1885873) (not e!2821880))))

(assert (=> b!4528877 (= res!1885873 (isDefined!8435 (getValueByKey!1116 (toList!4355 lt!1704188) key!3287)))))

(assert (= (and d!1397517 c!773243) b!4528871))

(assert (= (and d!1397517 (not c!773243)) b!4528875))

(assert (= (and b!4528875 c!773242) b!4528872))

(assert (= (and b!4528875 (not c!773242)) b!4528869))

(assert (= (or b!4528871 b!4528875) bm!315668))

(assert (= (and bm!315668 c!773241) b!4528870))

(assert (= (and bm!315668 (not c!773241)) b!4528873))

(assert (= (and d!1397517 res!1885874) b!4528874))

(assert (= (and d!1397517 (not res!1885875)) b!4528877))

(assert (= (and b!4528877 res!1885873) b!4528876))

(assert (=> b!4528873 m!5284469))

(declare-fun m!5284641 () Bool)

(assert (=> bm!315668 m!5284641))

(declare-fun m!5284643 () Bool)

(assert (=> b!4528871 m!5284643))

(declare-fun m!5284645 () Bool)

(assert (=> b!4528871 m!5284645))

(assert (=> b!4528871 m!5284645))

(declare-fun m!5284647 () Bool)

(assert (=> b!4528871 m!5284647))

(declare-fun m!5284649 () Bool)

(assert (=> b!4528871 m!5284649))

(assert (=> b!4528876 m!5284469))

(assert (=> b!4528876 m!5284469))

(declare-fun m!5284651 () Bool)

(assert (=> b!4528876 m!5284651))

(declare-fun m!5284653 () Bool)

(assert (=> b!4528872 m!5284653))

(declare-fun m!5284655 () Bool)

(assert (=> b!4528872 m!5284655))

(assert (=> d!1397517 m!5284653))

(declare-fun m!5284657 () Bool)

(assert (=> b!4528870 m!5284657))

(assert (=> b!4528877 m!5284645))

(assert (=> b!4528877 m!5284645))

(assert (=> b!4528877 m!5284647))

(assert (=> b!4528874 m!5284469))

(assert (=> b!4528874 m!5284469))

(assert (=> b!4528874 m!5284651))

(assert (=> b!4528494 d!1397517))

(declare-fun bs!864445 () Bool)

(declare-fun d!1397519 () Bool)

(assert (= bs!864445 (and d!1397519 start!448904)))

(declare-fun lambda!174028 () Int)

(assert (=> bs!864445 (= lambda!174028 lambda!173905)))

(declare-fun bs!864446 () Bool)

(assert (= bs!864446 (and d!1397519 d!1397487)))

(assert (=> bs!864446 (= lambda!174028 lambda!174022)))

(declare-fun bs!864447 () Bool)

(assert (= bs!864447 (and d!1397519 b!4528468)))

(assert (=> bs!864447 (not (= lambda!174028 lambda!173906))))

(declare-fun bs!864448 () Bool)

(assert (= bs!864448 (and d!1397519 d!1397451)))

(assert (=> bs!864448 (= lambda!174028 lambda!174003)))

(declare-fun bs!864449 () Bool)

(assert (= bs!864449 (and d!1397519 d!1397467)))

(assert (=> bs!864449 (not (= lambda!174028 lambda!174012))))

(declare-fun bs!864450 () Bool)

(assert (= bs!864450 (and d!1397519 d!1397513)))

(assert (=> bs!864450 (= lambda!174028 lambda!174024)))

(declare-fun bs!864451 () Bool)

(assert (= bs!864451 (and d!1397519 d!1397351)))

(assert (=> bs!864451 (= lambda!174028 lambda!173982)))

(declare-fun bs!864452 () Bool)

(assert (= bs!864452 (and d!1397519 d!1397459)))

(assert (=> bs!864452 (= lambda!174028 lambda!174009)))

(declare-fun bs!864453 () Bool)

(assert (= bs!864453 (and d!1397519 d!1397499)))

(assert (=> bs!864453 (= lambda!174028 lambda!174023)))

(declare-fun bs!864454 () Bool)

(assert (= bs!864454 (and d!1397519 d!1397477)))

(assert (=> bs!864454 (= lambda!174028 lambda!174014)))

(declare-fun bs!864455 () Bool)

(assert (= bs!864455 (and d!1397519 d!1397515)))

(assert (=> bs!864455 (= lambda!174028 lambda!174027)))

(declare-fun lt!1704628 () ListMap!3617)

(assert (=> d!1397519 (invariantList!1029 (toList!4355 lt!1704628))))

(declare-fun e!2821883 () ListMap!3617)

(assert (=> d!1397519 (= lt!1704628 e!2821883)))

(declare-fun c!773244 () Bool)

(assert (=> d!1397519 (= c!773244 ((_ is Cons!50687) (toList!4356 lt!1704191)))))

(assert (=> d!1397519 (forall!10297 (toList!4356 lt!1704191) lambda!174028)))

(assert (=> d!1397519 (= (extractMap!1230 (toList!4356 lt!1704191)) lt!1704628)))

(declare-fun b!4528878 () Bool)

(assert (=> b!4528878 (= e!2821883 (addToMapMapFromBucket!701 (_2!28860 (h!56552 (toList!4356 lt!1704191))) (extractMap!1230 (t!357773 (toList!4356 lt!1704191)))))))

(declare-fun b!4528879 () Bool)

(assert (=> b!4528879 (= e!2821883 (ListMap!3618 Nil!50686))))

(assert (= (and d!1397519 c!773244) b!4528878))

(assert (= (and d!1397519 (not c!773244)) b!4528879))

(declare-fun m!5284659 () Bool)

(assert (=> d!1397519 m!5284659))

(declare-fun m!5284661 () Bool)

(assert (=> d!1397519 m!5284661))

(declare-fun m!5284663 () Bool)

(assert (=> b!4528878 m!5284663))

(assert (=> b!4528878 m!5284663))

(declare-fun m!5284665 () Bool)

(assert (=> b!4528878 m!5284665))

(assert (=> b!4528494 d!1397519))

(declare-fun b!4528888 () Bool)

(declare-fun e!2821888 () List!50810)

(assert (=> b!4528888 (= e!2821888 (t!357772 lt!1704198))))

(declare-fun b!4528891 () Bool)

(declare-fun e!2821889 () List!50810)

(assert (=> b!4528891 (= e!2821889 Nil!50686)))

(declare-fun b!4528890 () Bool)

(assert (=> b!4528890 (= e!2821889 (Cons!50686 (h!56551 lt!1704198) (removePairForKey!801 (t!357772 lt!1704198) key!3287)))))

(declare-fun d!1397521 () Bool)

(declare-fun lt!1704631 () List!50810)

(assert (=> d!1397521 (not (containsKey!1818 lt!1704631 key!3287))))

(assert (=> d!1397521 (= lt!1704631 e!2821888)))

(declare-fun c!773250 () Bool)

(assert (=> d!1397521 (= c!773250 (and ((_ is Cons!50686) lt!1704198) (= (_1!28859 (h!56551 lt!1704198)) key!3287)))))

(assert (=> d!1397521 (noDuplicateKeys!1174 lt!1704198)))

(assert (=> d!1397521 (= (removePairForKey!801 lt!1704198 key!3287) lt!1704631)))

(declare-fun b!4528889 () Bool)

(assert (=> b!4528889 (= e!2821888 e!2821889)))

(declare-fun c!773249 () Bool)

(assert (=> b!4528889 (= c!773249 ((_ is Cons!50686) lt!1704198))))

(assert (= (and d!1397521 c!773250) b!4528888))

(assert (= (and d!1397521 (not c!773250)) b!4528889))

(assert (= (and b!4528889 c!773249) b!4528890))

(assert (= (and b!4528889 (not c!773249)) b!4528891))

(declare-fun m!5284667 () Bool)

(assert (=> b!4528890 m!5284667))

(declare-fun m!5284669 () Bool)

(assert (=> d!1397521 m!5284669))

(declare-fun m!5284671 () Bool)

(assert (=> d!1397521 m!5284671))

(assert (=> b!4528473 d!1397521))

(declare-fun bs!864456 () Bool)

(declare-fun d!1397523 () Bool)

(assert (= bs!864456 (and d!1397523 start!448904)))

(declare-fun lambda!174031 () Int)

(assert (=> bs!864456 (= lambda!174031 lambda!173905)))

(declare-fun bs!864457 () Bool)

(assert (= bs!864457 (and d!1397523 d!1397487)))

(assert (=> bs!864457 (= lambda!174031 lambda!174022)))

(declare-fun bs!864458 () Bool)

(assert (= bs!864458 (and d!1397523 b!4528468)))

(assert (=> bs!864458 (not (= lambda!174031 lambda!173906))))

(declare-fun bs!864459 () Bool)

(assert (= bs!864459 (and d!1397523 d!1397451)))

(assert (=> bs!864459 (= lambda!174031 lambda!174003)))

(declare-fun bs!864460 () Bool)

(assert (= bs!864460 (and d!1397523 d!1397467)))

(assert (=> bs!864460 (not (= lambda!174031 lambda!174012))))

(declare-fun bs!864461 () Bool)

(assert (= bs!864461 (and d!1397523 d!1397513)))

(assert (=> bs!864461 (= lambda!174031 lambda!174024)))

(declare-fun bs!864462 () Bool)

(assert (= bs!864462 (and d!1397523 d!1397519)))

(assert (=> bs!864462 (= lambda!174031 lambda!174028)))

(declare-fun bs!864463 () Bool)

(assert (= bs!864463 (and d!1397523 d!1397351)))

(assert (=> bs!864463 (= lambda!174031 lambda!173982)))

(declare-fun bs!864464 () Bool)

(assert (= bs!864464 (and d!1397523 d!1397459)))

(assert (=> bs!864464 (= lambda!174031 lambda!174009)))

(declare-fun bs!864465 () Bool)

(assert (= bs!864465 (and d!1397523 d!1397499)))

(assert (=> bs!864465 (= lambda!174031 lambda!174023)))

(declare-fun bs!864466 () Bool)

(assert (= bs!864466 (and d!1397523 d!1397477)))

(assert (=> bs!864466 (= lambda!174031 lambda!174014)))

(declare-fun bs!864467 () Bool)

(assert (= bs!864467 (and d!1397523 d!1397515)))

(assert (=> bs!864467 (= lambda!174031 lambda!174027)))

(assert (=> d!1397523 (contains!13438 lm!1477 (hash!2853 hashF!1107 key!3287))))

(declare-fun lt!1704634 () Unit!96482)

(declare-fun choose!29693 (ListLongMap!2987 K!12075 Hashable!5569) Unit!96482)

(assert (=> d!1397523 (= lt!1704634 (choose!29693 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1397523 (forall!10297 (toList!4356 lm!1477) lambda!174031)))

(assert (=> d!1397523 (= (lemmaInGenMapThenLongMapContainsHash!248 lm!1477 key!3287 hashF!1107) lt!1704634)))

(declare-fun bs!864468 () Bool)

(assert (= bs!864468 d!1397523))

(assert (=> bs!864468 m!5283871))

(assert (=> bs!864468 m!5283871))

(declare-fun m!5284673 () Bool)

(assert (=> bs!864468 m!5284673))

(declare-fun m!5284675 () Bool)

(assert (=> bs!864468 m!5284675))

(declare-fun m!5284677 () Bool)

(assert (=> bs!864468 m!5284677))

(assert (=> b!4528473 d!1397523))

(declare-fun d!1397525 () Bool)

(assert (=> d!1397525 (= (apply!11911 lm!1477 hash!344) (get!16627 (getValueByKey!1115 (toList!4356 lm!1477) hash!344)))))

(declare-fun bs!864469 () Bool)

(assert (= bs!864469 d!1397525))

(declare-fun m!5284679 () Bool)

(assert (=> bs!864469 m!5284679))

(assert (=> bs!864469 m!5284679))

(declare-fun m!5284681 () Bool)

(assert (=> bs!864469 m!5284681))

(assert (=> b!4528473 d!1397525))

(declare-fun d!1397527 () Bool)

(assert (=> d!1397527 (dynLambda!21183 lambda!173905 lt!1704210)))

(declare-fun lt!1704635 () Unit!96482)

(assert (=> d!1397527 (= lt!1704635 (choose!29684 (toList!4356 lm!1477) lambda!173905 lt!1704210))))

(declare-fun e!2821890 () Bool)

(assert (=> d!1397527 e!2821890))

(declare-fun res!1885876 () Bool)

(assert (=> d!1397527 (=> (not res!1885876) (not e!2821890))))

(assert (=> d!1397527 (= res!1885876 (forall!10297 (toList!4356 lm!1477) lambda!173905))))

(assert (=> d!1397527 (= (forallContained!2550 (toList!4356 lm!1477) lambda!173905 lt!1704210) lt!1704635)))

(declare-fun b!4528892 () Bool)

(assert (=> b!4528892 (= e!2821890 (contains!13437 (toList!4356 lm!1477) lt!1704210))))

(assert (= (and d!1397527 res!1885876) b!4528892))

(declare-fun b_lambda!156307 () Bool)

(assert (=> (not b_lambda!156307) (not d!1397527)))

(declare-fun m!5284683 () Bool)

(assert (=> d!1397527 m!5284683))

(declare-fun m!5284685 () Bool)

(assert (=> d!1397527 m!5284685))

(assert (=> d!1397527 m!5283907))

(assert (=> b!4528892 m!5283805))

(assert (=> b!4528473 d!1397527))

(declare-fun d!1397529 () Bool)

(assert (=> d!1397529 (contains!13437 (toList!4356 lm!1477) (tuple2!51133 hash!344 lt!1704198))))

(declare-fun lt!1704638 () Unit!96482)

(declare-fun choose!29694 (List!50811 (_ BitVec 64) List!50810) Unit!96482)

(assert (=> d!1397529 (= lt!1704638 (choose!29694 (toList!4356 lm!1477) hash!344 lt!1704198))))

(declare-fun e!2821893 () Bool)

(assert (=> d!1397529 e!2821893))

(declare-fun res!1885879 () Bool)

(assert (=> d!1397529 (=> (not res!1885879) (not e!2821893))))

(assert (=> d!1397529 (= res!1885879 (isStrictlySorted!443 (toList!4356 lm!1477)))))

(assert (=> d!1397529 (= (lemmaGetValueByKeyImpliesContainsTuple!686 (toList!4356 lm!1477) hash!344 lt!1704198) lt!1704638)))

(declare-fun b!4528895 () Bool)

(assert (=> b!4528895 (= e!2821893 (= (getValueByKey!1115 (toList!4356 lm!1477) hash!344) (Some!11146 lt!1704198)))))

(assert (= (and d!1397529 res!1885879) b!4528895))

(declare-fun m!5284687 () Bool)

(assert (=> d!1397529 m!5284687))

(declare-fun m!5284689 () Bool)

(assert (=> d!1397529 m!5284689))

(assert (=> d!1397529 m!5283915))

(assert (=> b!4528895 m!5284679))

(assert (=> b!4528473 d!1397529))

(declare-fun d!1397531 () Bool)

(declare-fun e!2821895 () Bool)

(assert (=> d!1397531 e!2821895))

(declare-fun res!1885880 () Bool)

(assert (=> d!1397531 (=> res!1885880 e!2821895)))

(declare-fun lt!1704641 () Bool)

(assert (=> d!1397531 (= res!1885880 (not lt!1704641))))

(declare-fun lt!1704640 () Bool)

(assert (=> d!1397531 (= lt!1704641 lt!1704640)))

(declare-fun lt!1704642 () Unit!96482)

(declare-fun e!2821894 () Unit!96482)

(assert (=> d!1397531 (= lt!1704642 e!2821894)))

(declare-fun c!773251 () Bool)

(assert (=> d!1397531 (= c!773251 lt!1704640)))

(assert (=> d!1397531 (= lt!1704640 (containsKey!1819 (toList!4356 lm!1477) lt!1704190))))

(assert (=> d!1397531 (= (contains!13438 lm!1477 lt!1704190) lt!1704641)))

(declare-fun b!4528896 () Bool)

(declare-fun lt!1704639 () Unit!96482)

(assert (=> b!4528896 (= e!2821894 lt!1704639)))

(assert (=> b!4528896 (= lt!1704639 (lemmaContainsKeyImpliesGetValueByKeyDefined!1018 (toList!4356 lm!1477) lt!1704190))))

(assert (=> b!4528896 (isDefined!8431 (getValueByKey!1115 (toList!4356 lm!1477) lt!1704190))))

(declare-fun b!4528897 () Bool)

(declare-fun Unit!96547 () Unit!96482)

(assert (=> b!4528897 (= e!2821894 Unit!96547)))

(declare-fun b!4528898 () Bool)

(assert (=> b!4528898 (= e!2821895 (isDefined!8431 (getValueByKey!1115 (toList!4356 lm!1477) lt!1704190)))))

(assert (= (and d!1397531 c!773251) b!4528896))

(assert (= (and d!1397531 (not c!773251)) b!4528897))

(assert (= (and d!1397531 (not res!1885880)) b!4528898))

(declare-fun m!5284691 () Bool)

(assert (=> d!1397531 m!5284691))

(declare-fun m!5284693 () Bool)

(assert (=> b!4528896 m!5284693))

(declare-fun m!5284695 () Bool)

(assert (=> b!4528896 m!5284695))

(assert (=> b!4528896 m!5284695))

(declare-fun m!5284697 () Bool)

(assert (=> b!4528896 m!5284697))

(assert (=> b!4528898 m!5284695))

(assert (=> b!4528898 m!5284695))

(assert (=> b!4528898 m!5284697))

(assert (=> b!4528473 d!1397531))

(declare-fun d!1397533 () Bool)

(declare-fun lt!1704643 () Bool)

(assert (=> d!1397533 (= lt!1704643 (select (content!8393 (toList!4356 lm!1477)) lt!1704210))))

(declare-fun e!2821897 () Bool)

(assert (=> d!1397533 (= lt!1704643 e!2821897)))

(declare-fun res!1885881 () Bool)

(assert (=> d!1397533 (=> (not res!1885881) (not e!2821897))))

(assert (=> d!1397533 (= res!1885881 ((_ is Cons!50687) (toList!4356 lm!1477)))))

(assert (=> d!1397533 (= (contains!13437 (toList!4356 lm!1477) lt!1704210) lt!1704643)))

(declare-fun b!4528899 () Bool)

(declare-fun e!2821896 () Bool)

(assert (=> b!4528899 (= e!2821897 e!2821896)))

(declare-fun res!1885882 () Bool)

(assert (=> b!4528899 (=> res!1885882 e!2821896)))

(assert (=> b!4528899 (= res!1885882 (= (h!56552 (toList!4356 lm!1477)) lt!1704210))))

(declare-fun b!4528900 () Bool)

(assert (=> b!4528900 (= e!2821896 (contains!13437 (t!357773 (toList!4356 lm!1477)) lt!1704210))))

(assert (= (and d!1397533 res!1885881) b!4528899))

(assert (= (and b!4528899 (not res!1885882)) b!4528900))

(declare-fun m!5284699 () Bool)

(assert (=> d!1397533 m!5284699))

(declare-fun m!5284701 () Bool)

(assert (=> d!1397533 m!5284701))

(assert (=> b!4528900 m!5283897))

(assert (=> b!4528473 d!1397533))

(declare-fun d!1397535 () Bool)

(assert (=> d!1397535 (= (eq!631 lt!1704218 lt!1704189) (= (content!8391 (toList!4355 lt!1704218)) (content!8391 (toList!4355 lt!1704189))))))

(declare-fun bs!864470 () Bool)

(assert (= bs!864470 d!1397535))

(assert (=> bs!864470 m!5284435))

(assert (=> bs!864470 m!5284433))

(assert (=> b!4528471 d!1397535))

(declare-fun bs!864471 () Bool)

(declare-fun d!1397537 () Bool)

(assert (= bs!864471 (and d!1397537 b!4528651)))

(declare-fun lambda!174034 () Int)

(assert (=> bs!864471 (not (= lambda!174034 lambda!173990))))

(declare-fun bs!864472 () Bool)

(assert (= bs!864472 (and d!1397537 b!4528468)))

(assert (=> bs!864472 (= (= hash!344 (_1!28860 (h!56552 (toList!4356 lm!1477)))) (= lambda!174034 lambda!173907))))

(declare-fun bs!864473 () Bool)

(assert (= bs!864473 (and d!1397537 d!1397399)))

(assert (=> bs!864473 (not (= lambda!174034 lambda!173993))))

(declare-fun bs!864474 () Bool)

(assert (= bs!864474 (and d!1397537 b!4528650)))

(assert (=> bs!864474 (not (= lambda!174034 lambda!173991))))

(declare-fun bs!864475 () Bool)

(assert (= bs!864475 (and d!1397537 d!1397317)))

(assert (=> bs!864475 (not (= lambda!174034 lambda!173978))))

(declare-fun bs!864476 () Bool)

(assert (= bs!864476 (and d!1397537 b!4528574)))

(assert (=> bs!864476 (not (= lambda!174034 lambda!173975))))

(declare-fun bs!864477 () Bool)

(assert (= bs!864477 (and d!1397537 b!4528573)))

(assert (=> bs!864477 (not (= lambda!174034 lambda!173976))))

(assert (=> bs!864474 (not (= lambda!174034 lambda!173992))))

(assert (=> bs!864477 (not (= lambda!174034 lambda!173977))))

(assert (=> d!1397537 true))

(assert (=> d!1397537 true))

(assert (=> d!1397537 (= (allKeysSameHash!1028 newBucket!178 hash!344 hashF!1107) (forall!10299 newBucket!178 lambda!174034))))

(declare-fun bs!864478 () Bool)

(assert (= bs!864478 d!1397537))

(declare-fun m!5284703 () Bool)

(assert (=> bs!864478 m!5284703))

(assert (=> b!4528493 d!1397537))

(declare-fun d!1397539 () Bool)

(declare-fun res!1885883 () Bool)

(declare-fun e!2821898 () Bool)

(assert (=> d!1397539 (=> res!1885883 e!2821898)))

(assert (=> d!1397539 (= res!1885883 (and ((_ is Cons!50686) (_2!28860 lt!1704216)) (= (_1!28859 (h!56551 (_2!28860 lt!1704216))) key!3287)))))

(assert (=> d!1397539 (= (containsKey!1818 (_2!28860 lt!1704216) key!3287) e!2821898)))

(declare-fun b!4528903 () Bool)

(declare-fun e!2821899 () Bool)

(assert (=> b!4528903 (= e!2821898 e!2821899)))

(declare-fun res!1885884 () Bool)

(assert (=> b!4528903 (=> (not res!1885884) (not e!2821899))))

(assert (=> b!4528903 (= res!1885884 ((_ is Cons!50686) (_2!28860 lt!1704216)))))

(declare-fun b!4528904 () Bool)

(assert (=> b!4528904 (= e!2821899 (containsKey!1818 (t!357772 (_2!28860 lt!1704216)) key!3287))))

(assert (= (and d!1397539 (not res!1885883)) b!4528903))

(assert (= (and b!4528903 res!1885884) b!4528904))

(declare-fun m!5284705 () Bool)

(assert (=> b!4528904 m!5284705))

(assert (=> b!4528475 d!1397539))

(declare-fun d!1397541 () Bool)

(declare-fun res!1885891 () Bool)

(declare-fun e!2821907 () Bool)

(assert (=> d!1397541 (=> res!1885891 e!2821907)))

(declare-fun e!2821906 () Bool)

(assert (=> d!1397541 (= res!1885891 e!2821906)))

(declare-fun res!1885892 () Bool)

(assert (=> d!1397541 (=> (not res!1885892) (not e!2821906))))

(assert (=> d!1397541 (= res!1885892 ((_ is Cons!50687) (t!357773 (toList!4356 lm!1477))))))

(assert (=> d!1397541 (= (containsKeyBiggerList!154 (t!357773 (toList!4356 lm!1477)) key!3287) e!2821907)))

(declare-fun b!4528911 () Bool)

(assert (=> b!4528911 (= e!2821906 (containsKey!1818 (_2!28860 (h!56552 (t!357773 (toList!4356 lm!1477)))) key!3287))))

(declare-fun b!4528912 () Bool)

(declare-fun e!2821908 () Bool)

(assert (=> b!4528912 (= e!2821907 e!2821908)))

(declare-fun res!1885893 () Bool)

(assert (=> b!4528912 (=> (not res!1885893) (not e!2821908))))

(assert (=> b!4528912 (= res!1885893 ((_ is Cons!50687) (t!357773 (toList!4356 lm!1477))))))

(declare-fun b!4528913 () Bool)

(assert (=> b!4528913 (= e!2821908 (containsKeyBiggerList!154 (t!357773 (t!357773 (toList!4356 lm!1477))) key!3287))))

(assert (= (and d!1397541 res!1885892) b!4528911))

(assert (= (and d!1397541 (not res!1885891)) b!4528912))

(assert (= (and b!4528912 res!1885893) b!4528913))

(declare-fun m!5284707 () Bool)

(assert (=> b!4528911 m!5284707))

(declare-fun m!5284709 () Bool)

(assert (=> b!4528913 m!5284709))

(assert (=> b!4528476 d!1397541))

(declare-fun d!1397543 () Bool)

(declare-fun res!1885894 () Bool)

(declare-fun e!2821910 () Bool)

(assert (=> d!1397543 (=> res!1885894 e!2821910)))

(declare-fun e!2821909 () Bool)

(assert (=> d!1397543 (= res!1885894 e!2821909)))

(declare-fun res!1885895 () Bool)

(assert (=> d!1397543 (=> (not res!1885895) (not e!2821909))))

(assert (=> d!1397543 (= res!1885895 ((_ is Cons!50687) (toList!4356 lt!1704191)))))

(assert (=> d!1397543 (= (containsKeyBiggerList!154 (toList!4356 lt!1704191) key!3287) e!2821910)))

(declare-fun b!4528914 () Bool)

(assert (=> b!4528914 (= e!2821909 (containsKey!1818 (_2!28860 (h!56552 (toList!4356 lt!1704191))) key!3287))))

(declare-fun b!4528915 () Bool)

(declare-fun e!2821911 () Bool)

(assert (=> b!4528915 (= e!2821910 e!2821911)))

(declare-fun res!1885896 () Bool)

(assert (=> b!4528915 (=> (not res!1885896) (not e!2821911))))

(assert (=> b!4528915 (= res!1885896 ((_ is Cons!50687) (toList!4356 lt!1704191)))))

(declare-fun b!4528916 () Bool)

(assert (=> b!4528916 (= e!2821911 (containsKeyBiggerList!154 (t!357773 (toList!4356 lt!1704191)) key!3287))))

(assert (= (and d!1397543 res!1885895) b!4528914))

(assert (= (and d!1397543 (not res!1885894)) b!4528915))

(assert (= (and b!4528915 res!1885896) b!4528916))

(declare-fun m!5284711 () Bool)

(assert (=> b!4528914 m!5284711))

(declare-fun m!5284713 () Bool)

(assert (=> b!4528916 m!5284713))

(assert (=> b!4528476 d!1397543))

(declare-fun bs!864479 () Bool)

(declare-fun d!1397545 () Bool)

(assert (= bs!864479 (and d!1397545 start!448904)))

(declare-fun lambda!174037 () Int)

(assert (=> bs!864479 (= lambda!174037 lambda!173905)))

(declare-fun bs!864480 () Bool)

(assert (= bs!864480 (and d!1397545 d!1397487)))

(assert (=> bs!864480 (= lambda!174037 lambda!174022)))

(declare-fun bs!864481 () Bool)

(assert (= bs!864481 (and d!1397545 b!4528468)))

(assert (=> bs!864481 (not (= lambda!174037 lambda!173906))))

(declare-fun bs!864482 () Bool)

(assert (= bs!864482 (and d!1397545 d!1397467)))

(assert (=> bs!864482 (not (= lambda!174037 lambda!174012))))

(declare-fun bs!864483 () Bool)

(assert (= bs!864483 (and d!1397545 d!1397513)))

(assert (=> bs!864483 (= lambda!174037 lambda!174024)))

(declare-fun bs!864484 () Bool)

(assert (= bs!864484 (and d!1397545 d!1397519)))

(assert (=> bs!864484 (= lambda!174037 lambda!174028)))

(declare-fun bs!864485 () Bool)

(assert (= bs!864485 (and d!1397545 d!1397351)))

(assert (=> bs!864485 (= lambda!174037 lambda!173982)))

(declare-fun bs!864486 () Bool)

(assert (= bs!864486 (and d!1397545 d!1397459)))

(assert (=> bs!864486 (= lambda!174037 lambda!174009)))

(declare-fun bs!864487 () Bool)

(assert (= bs!864487 (and d!1397545 d!1397523)))

(assert (=> bs!864487 (= lambda!174037 lambda!174031)))

(declare-fun bs!864488 () Bool)

(assert (= bs!864488 (and d!1397545 d!1397451)))

(assert (=> bs!864488 (= lambda!174037 lambda!174003)))

(declare-fun bs!864489 () Bool)

(assert (= bs!864489 (and d!1397545 d!1397499)))

(assert (=> bs!864489 (= lambda!174037 lambda!174023)))

(declare-fun bs!864490 () Bool)

(assert (= bs!864490 (and d!1397545 d!1397477)))

(assert (=> bs!864490 (= lambda!174037 lambda!174014)))

(declare-fun bs!864491 () Bool)

(assert (= bs!864491 (and d!1397545 d!1397515)))

(assert (=> bs!864491 (= lambda!174037 lambda!174027)))

(assert (=> d!1397545 (containsKeyBiggerList!154 (toList!4356 lt!1704191) key!3287)))

(declare-fun lt!1704646 () Unit!96482)

(declare-fun choose!29695 (ListLongMap!2987 K!12075 Hashable!5569) Unit!96482)

(assert (=> d!1397545 (= lt!1704646 (choose!29695 lt!1704191 key!3287 hashF!1107))))

(assert (=> d!1397545 (forall!10297 (toList!4356 lt!1704191) lambda!174037)))

(assert (=> d!1397545 (= (lemmaInLongMapThenContainsKeyBiggerList!90 lt!1704191 key!3287 hashF!1107) lt!1704646)))

(declare-fun bs!864492 () Bool)

(assert (= bs!864492 d!1397545))

(assert (=> bs!864492 m!5283875))

(declare-fun m!5284715 () Bool)

(assert (=> bs!864492 m!5284715))

(declare-fun m!5284717 () Bool)

(assert (=> bs!864492 m!5284717))

(assert (=> b!4528476 d!1397545))

(declare-fun d!1397547 () Bool)

(assert (=> d!1397547 (= (head!9438 lt!1704214) (head!9440 (toList!4356 lt!1704214)))))

(declare-fun bs!864493 () Bool)

(assert (= bs!864493 d!1397547))

(declare-fun m!5284719 () Bool)

(assert (=> bs!864493 m!5284719))

(assert (=> b!4528474 d!1397547))

(declare-fun b!4528921 () Bool)

(declare-fun tp!1338317 () Bool)

(declare-fun e!2821914 () Bool)

(assert (=> b!4528921 (= e!2821914 (and tp_is_empty!27973 tp_is_empty!27975 tp!1338317))))

(assert (=> b!4528489 (= tp!1338304 e!2821914)))

(assert (= (and b!4528489 ((_ is Cons!50686) (t!357772 newBucket!178))) b!4528921))

(declare-fun b!4528926 () Bool)

(declare-fun e!2821917 () Bool)

(declare-fun tp!1338322 () Bool)

(declare-fun tp!1338323 () Bool)

(assert (=> b!4528926 (= e!2821917 (and tp!1338322 tp!1338323))))

(assert (=> b!4528492 (= tp!1338305 e!2821917)))

(assert (= (and b!4528492 ((_ is Cons!50687) (toList!4356 lm!1477))) b!4528926))

(declare-fun b_lambda!156309 () Bool)

(assert (= b_lambda!156307 (or start!448904 b_lambda!156309)))

(declare-fun bs!864494 () Bool)

(declare-fun d!1397549 () Bool)

(assert (= bs!864494 (and d!1397549 start!448904)))

(assert (=> bs!864494 (= (dynLambda!21183 lambda!173905 lt!1704210) (noDuplicateKeys!1174 (_2!28860 lt!1704210)))))

(declare-fun m!5284721 () Bool)

(assert (=> bs!864494 m!5284721))

(assert (=> d!1397527 d!1397549))

(declare-fun b_lambda!156311 () Bool)

(assert (= b_lambda!156293 (or start!448904 b_lambda!156311)))

(declare-fun bs!864495 () Bool)

(declare-fun d!1397551 () Bool)

(assert (= bs!864495 (and d!1397551 start!448904)))

(assert (=> bs!864495 (= (dynLambda!21183 lambda!173905 (h!56552 (toList!4356 lm!1477))) (noDuplicateKeys!1174 (_2!28860 (h!56552 (toList!4356 lm!1477)))))))

(declare-fun m!5284723 () Bool)

(assert (=> bs!864495 m!5284723))

(assert (=> d!1397455 d!1397551))

(declare-fun b_lambda!156313 () Bool)

(assert (= b_lambda!156287 (or b!4528468 b_lambda!156313)))

(declare-fun bs!864496 () Bool)

(declare-fun d!1397553 () Bool)

(assert (= bs!864496 (and d!1397553 b!4528468)))

(assert (=> bs!864496 (= (dynLambda!21183 lambda!173906 (h!56552 (toList!4356 lm!1477))) (allKeysSameHash!1028 (_2!28860 (h!56552 (toList!4356 lm!1477))) (_1!28860 (h!56552 (toList!4356 lm!1477))) hashF!1107))))

(declare-fun m!5284725 () Bool)

(assert (=> bs!864496 m!5284725))

(assert (=> d!1397421 d!1397553))

(declare-fun b_lambda!156315 () Bool)

(assert (= b_lambda!156291 (or b!4528468 b_lambda!156315)))

(declare-fun bs!864497 () Bool)

(declare-fun d!1397555 () Bool)

(assert (= bs!864497 (and d!1397555 b!4528468)))

(assert (=> bs!864497 (= (dynLambda!21185 lambda!173907 (tuple2!51131 key!3287 (_2!28859 (get!16625 lt!1704201)))) (= (hash!2853 hashF!1107 (_1!28859 (tuple2!51131 key!3287 (_2!28859 (get!16625 lt!1704201))))) (_1!28860 (h!56552 (toList!4356 lm!1477)))))))

(declare-fun m!5284727 () Bool)

(assert (=> bs!864497 m!5284727))

(assert (=> d!1397423 d!1397555))

(declare-fun b_lambda!156317 () Bool)

(assert (= b_lambda!156279 (or start!448904 b_lambda!156317)))

(declare-fun bs!864498 () Bool)

(declare-fun d!1397557 () Bool)

(assert (= bs!864498 (and d!1397557 start!448904)))

(assert (=> bs!864498 (= (dynLambda!21183 lambda!173905 (h!56552 (toList!4356 lt!1704191))) (noDuplicateKeys!1174 (_2!28860 (h!56552 (toList!4356 lt!1704191)))))))

(declare-fun m!5284729 () Bool)

(assert (=> bs!864498 m!5284729))

(assert (=> b!4528592 d!1397557))

(declare-fun b_lambda!156319 () Bool)

(assert (= b_lambda!156273 (or start!448904 b_lambda!156319)))

(assert (=> b!4528505 d!1397551))

(check-sat (not b!4528649) (not d!1397537) (not b!4528850) (not d!1397459) (not b!4528819) (not b!4528867) (not bm!315653) (not d!1397315) (not d!1397517) (not b!4528645) (not b!4528895) tp_is_empty!27973 (not d!1397393) (not d!1397385) (not b!4528616) (not b!4528898) (not d!1397507) (not d!1397431) (not b!4528890) (not d!1397535) (not b_lambda!156309) (not b!4528575) (not d!1397399) (not b!4528859) (not b!4528650) (not bm!315668) (not d!1397421) (not bm!315658) (not b!4528769) (not b!4528870) (not b!4528652) (not b!4528876) (not bs!864496) (not d!1397455) (not d!1397351) (not b!4528896) (not b!4528871) (not b!4528717) (not b!4528774) (not b!4528572) (not b!4528866) (not d!1397383) (not b!4528711) (not d!1397359) (not d!1397365) (not b!4528916) (not b!4528716) (not b!4528729) (not bm!315657) (not b!4528571) (not b!4528777) (not bm!315654) (not b!4528813) (not d!1397451) (not d!1397313) (not d!1397521) (not b!4528926) (not bs!864497) (not b!4528862) (not d!1397423) (not bm!315667) (not b!4528605) (not d!1397467) (not b!4528778) (not b!4528767) (not b!4528865) (not d!1397531) (not b_lambda!156319) (not b!4528713) (not bs!864498) (not d!1397483) (not d!1397533) (not b!4528863) (not b!4528766) (not b!4528773) (not b!4528590) (not b!4528646) (not d!1397395) (not d!1397473) (not b!4528913) (not d!1397519) (not b!4528737) (not d!1397397) (not b_lambda!156313) (not b!4528776) (not b!4528770) (not d!1397545) (not b!4528599) (not d!1397369) (not b!4528872) (not b!4528648) (not b!4528892) (not b!4528593) (not b_lambda!156317) (not b!4528900) tp_is_empty!27975 (not b!4528873) (not bs!864495) (not b!4528614) (not b!4528506) (not b!4528772) (not d!1397317) (not b!4528821) (not b!4528768) (not d!1397471) (not d!1397529) (not d!1397499) (not d!1397415) (not d!1397525) (not d!1397477) (not d!1397523) (not d!1397485) (not b!4528861) (not b!4528647) (not d!1397381) (not bm!315661) (not b_lambda!156311) (not d!1397513) (not bs!864494) (not b!4528820) (not b!4528874) (not b!4528921) (not d!1397527) (not b!4528911) (not b!4528904) (not b!4528860) (not d!1397515) (not b!4528573) (not d!1397487) (not b!4528644) (not d!1397479) (not d!1397403) (not b!4528878) (not b!4528914) (not b!4528818) (not d!1397547) (not b!4528877) (not d!1397469) (not b!4528816) (not b_lambda!156315) (not b!4528627) (not bm!315656) (not b!4528714) (not b!4528604) (not bm!315655))
(check-sat)
