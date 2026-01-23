; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!441540 () Bool)

(assert start!441540)

(declare-fun b!4484589 () Bool)

(declare-datatypes ((Unit!90035 0))(
  ( (Unit!90036) )
))
(declare-fun e!2793091 () Unit!90035)

(declare-fun Unit!90037 () Unit!90035)

(assert (=> b!4484589 (= e!2793091 Unit!90037)))

(declare-datatypes ((Hashable!5477 0))(
  ( (HashableExt!5476 (__x!31180 Int)) )
))
(declare-fun hashF!1107 () Hashable!5477)

(declare-datatypes ((K!11845 0))(
  ( (K!11846 (val!17747 Int)) )
))
(declare-datatypes ((V!12091 0))(
  ( (V!12092 (val!17748 Int)) )
))
(declare-datatypes ((tuple2!50762 0))(
  ( (tuple2!50763 (_1!28675 K!11845) (_2!28675 V!12091)) )
))
(declare-datatypes ((List!50556 0))(
  ( (Nil!50432) (Cons!50432 (h!56227 tuple2!50762) (t!357510 List!50556)) )
))
(declare-datatypes ((tuple2!50764 0))(
  ( (tuple2!50765 (_1!28676 (_ BitVec 64)) (_2!28676 List!50556)) )
))
(declare-datatypes ((List!50557 0))(
  ( (Nil!50433) (Cons!50433 (h!56228 tuple2!50764) (t!357511 List!50557)) )
))
(declare-datatypes ((ListLongMap!2803 0))(
  ( (ListLongMap!2804 (toList!4171 List!50557)) )
))
(declare-fun lm!1477 () ListLongMap!2803)

(declare-fun key!3287 () K!11845)

(declare-fun lt!1670438 () Unit!90035)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!70 (ListLongMap!2803 K!11845 Hashable!5477) Unit!90035)

(assert (=> b!4484589 (= lt!1670438 (lemmaNotInItsHashBucketThenNotInMap!70 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4484589 false))

(declare-fun b!4484590 () Bool)

(declare-fun res!1862545 () Bool)

(declare-fun e!2793093 () Bool)

(assert (=> b!4484590 (=> res!1862545 e!2793093)))

(declare-fun lt!1670430 () ListLongMap!2803)

(declare-fun lambda!166159 () Int)

(declare-fun forall!10092 (List!50557 Int) Bool)

(assert (=> b!4484590 (= res!1862545 (not (forall!10092 (toList!4171 lt!1670430) lambda!166159)))))

(declare-fun b!4484591 () Bool)

(declare-fun e!2793094 () Bool)

(assert (=> b!4484591 (= e!2793094 e!2793093)))

(declare-fun res!1862550 () Bool)

(assert (=> b!4484591 (=> res!1862550 e!2793093)))

(declare-fun lt!1670436 () Bool)

(assert (=> b!4484591 (= res!1862550 lt!1670436)))

(declare-fun lt!1670435 () Unit!90035)

(assert (=> b!4484591 (= lt!1670435 e!2793091)))

(declare-fun c!763853 () Bool)

(assert (=> b!4484591 (= c!763853 lt!1670436)))

(declare-fun lt!1670433 () List!50556)

(declare-fun containsKey!1586 (List!50556 K!11845) Bool)

(assert (=> b!4484591 (= lt!1670436 (not (containsKey!1586 lt!1670433 key!3287)))))

(declare-fun b!4484592 () Bool)

(declare-fun res!1862551 () Bool)

(assert (=> b!4484592 (=> res!1862551 e!2793094)))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun apply!11819 (ListLongMap!2803 (_ BitVec 64)) List!50556)

(assert (=> b!4484592 (= res!1862551 (not (= (apply!11819 lt!1670430 hash!344) lt!1670433)))))

(declare-fun b!4484594 () Bool)

(declare-fun e!2793089 () Bool)

(declare-fun e!2793095 () Bool)

(assert (=> b!4484594 (= e!2793089 (not e!2793095))))

(declare-fun res!1862556 () Bool)

(assert (=> b!4484594 (=> res!1862556 e!2793095)))

(declare-fun newBucket!178 () List!50556)

(declare-fun removePairForKey!709 (List!50556 K!11845) List!50556)

(assert (=> b!4484594 (= res!1862556 (not (= newBucket!178 (removePairForKey!709 lt!1670433 key!3287))))))

(declare-fun lt!1670431 () tuple2!50764)

(declare-fun lt!1670429 () Unit!90035)

(declare-fun forallContained!2353 (List!50557 Int tuple2!50764) Unit!90035)

(assert (=> b!4484594 (= lt!1670429 (forallContained!2353 (toList!4171 lm!1477) lambda!166159 lt!1670431))))

(declare-fun contains!13047 (List!50557 tuple2!50764) Bool)

(assert (=> b!4484594 (contains!13047 (toList!4171 lm!1477) lt!1670431)))

(assert (=> b!4484594 (= lt!1670431 (tuple2!50765 hash!344 lt!1670433))))

(declare-fun lt!1670434 () Unit!90035)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!594 (List!50557 (_ BitVec 64) List!50556) Unit!90035)

(assert (=> b!4484594 (= lt!1670434 (lemmaGetValueByKeyImpliesContainsTuple!594 (toList!4171 lm!1477) hash!344 lt!1670433))))

(assert (=> b!4484594 (= lt!1670433 (apply!11819 lm!1477 hash!344))))

(declare-fun lt!1670437 () (_ BitVec 64))

(declare-fun contains!13048 (ListLongMap!2803 (_ BitVec 64)) Bool)

(assert (=> b!4484594 (contains!13048 lm!1477 lt!1670437)))

(declare-fun lt!1670439 () Unit!90035)

(declare-fun lemmaInGenMapThenLongMapContainsHash!156 (ListLongMap!2803 K!11845 Hashable!5477) Unit!90035)

(assert (=> b!4484594 (= lt!1670439 (lemmaInGenMapThenLongMapContainsHash!156 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4484595 () Bool)

(declare-fun res!1862552 () Bool)

(assert (=> b!4484595 (=> res!1862552 e!2793093)))

(assert (=> b!4484595 (= res!1862552 (not (contains!13048 lt!1670430 lt!1670437)))))

(declare-fun b!4484596 () Bool)

(declare-fun e!2793087 () Bool)

(assert (=> b!4484596 (= e!2793087 e!2793089)))

(declare-fun res!1862558 () Bool)

(assert (=> b!4484596 (=> (not res!1862558) (not e!2793089))))

(assert (=> b!4484596 (= res!1862558 (= lt!1670437 hash!344))))

(declare-fun hash!2587 (Hashable!5477 K!11845) (_ BitVec 64))

(assert (=> b!4484596 (= lt!1670437 (hash!2587 hashF!1107 key!3287))))

(declare-fun b!4484597 () Bool)

(declare-fun res!1862548 () Bool)

(assert (=> b!4484597 (=> res!1862548 e!2793095)))

(declare-fun noDuplicateKeys!1082 (List!50556) Bool)

(assert (=> b!4484597 (= res!1862548 (not (noDuplicateKeys!1082 newBucket!178)))))

(declare-fun b!4484598 () Bool)

(declare-fun e!2793088 () Bool)

(declare-fun tp!1336926 () Bool)

(assert (=> b!4484598 (= e!2793088 tp!1336926)))

(declare-fun b!4484599 () Bool)

(declare-fun e!2793092 () Bool)

(assert (=> b!4484599 (= e!2793092 true)))

(declare-fun b!4484600 () Bool)

(declare-fun res!1862549 () Bool)

(assert (=> b!4484600 (=> (not res!1862549) (not e!2793089))))

(declare-fun allKeysSameHash!936 (List!50556 (_ BitVec 64) Hashable!5477) Bool)

(assert (=> b!4484600 (= res!1862549 (allKeysSameHash!936 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4484601 () Bool)

(assert (=> b!4484601 (= e!2793093 e!2793092)))

(declare-fun res!1862559 () Bool)

(assert (=> b!4484601 (=> res!1862559 e!2793092)))

(declare-fun lt!1670442 () List!50556)

(declare-datatypes ((Option!10991 0))(
  ( (None!10990) (Some!10990 (v!44394 tuple2!50762)) )
))
(declare-fun isDefined!8278 (Option!10991) Bool)

(declare-fun getPair!176 (List!50556 K!11845) Option!10991)

(assert (=> b!4484601 (= res!1862559 (not (isDefined!8278 (getPair!176 lt!1670442 key!3287))))))

(declare-fun lt!1670440 () Unit!90035)

(declare-fun lt!1670441 () tuple2!50764)

(assert (=> b!4484601 (= lt!1670440 (forallContained!2353 (toList!4171 lt!1670430) lambda!166159 lt!1670441))))

(assert (=> b!4484601 (contains!13047 (toList!4171 lt!1670430) lt!1670441)))

(assert (=> b!4484601 (= lt!1670441 (tuple2!50765 lt!1670437 lt!1670442))))

(declare-fun lt!1670432 () Unit!90035)

(declare-fun lemmaGetValueImpliesTupleContained!45 (ListLongMap!2803 (_ BitVec 64) List!50556) Unit!90035)

(assert (=> b!4484601 (= lt!1670432 (lemmaGetValueImpliesTupleContained!45 lt!1670430 lt!1670437 lt!1670442))))

(assert (=> b!4484601 (= lt!1670442 (apply!11819 lt!1670430 lt!1670437))))

(declare-fun tp_is_empty!27607 () Bool)

(declare-fun tp_is_empty!27605 () Bool)

(declare-fun b!4484602 () Bool)

(declare-fun e!2793090 () Bool)

(declare-fun tp!1336927 () Bool)

(assert (=> b!4484602 (= e!2793090 (and tp_is_empty!27605 tp_is_empty!27607 tp!1336927))))

(declare-fun b!4484603 () Bool)

(declare-fun res!1862546 () Bool)

(assert (=> b!4484603 (=> res!1862546 e!2793095)))

(get-info :version)

(assert (=> b!4484603 (= res!1862546 (or ((_ is Nil!50433) (toList!4171 lm!1477)) (= (_1!28676 (h!56228 (toList!4171 lm!1477))) hash!344)))))

(declare-fun b!4484604 () Bool)

(declare-fun Unit!90038 () Unit!90035)

(assert (=> b!4484604 (= e!2793091 Unit!90038)))

(declare-fun b!4484605 () Bool)

(declare-fun res!1862555 () Bool)

(assert (=> b!4484605 (=> res!1862555 e!2793094)))

(assert (=> b!4484605 (= res!1862555 (not (contains!13047 (t!357511 (toList!4171 lm!1477)) lt!1670431)))))

(declare-fun b!4484606 () Bool)

(declare-fun res!1862557 () Bool)

(assert (=> b!4484606 (=> (not res!1862557) (not e!2793087))))

(declare-fun allKeysSameHashInMap!1189 (ListLongMap!2803 Hashable!5477) Bool)

(assert (=> b!4484606 (= res!1862557 (allKeysSameHashInMap!1189 lm!1477 hashF!1107))))

(declare-fun b!4484593 () Bool)

(declare-fun res!1862553 () Bool)

(assert (=> b!4484593 (=> res!1862553 e!2793093)))

(assert (=> b!4484593 (= res!1862553 (not (allKeysSameHashInMap!1189 lt!1670430 hashF!1107)))))

(declare-fun res!1862547 () Bool)

(assert (=> start!441540 (=> (not res!1862547) (not e!2793087))))

(assert (=> start!441540 (= res!1862547 (forall!10092 (toList!4171 lm!1477) lambda!166159))))

(assert (=> start!441540 e!2793087))

(assert (=> start!441540 true))

(declare-fun inv!66029 (ListLongMap!2803) Bool)

(assert (=> start!441540 (and (inv!66029 lm!1477) e!2793088)))

(assert (=> start!441540 tp_is_empty!27605))

(assert (=> start!441540 e!2793090))

(declare-fun b!4484607 () Bool)

(assert (=> b!4484607 (= e!2793095 e!2793094)))

(declare-fun res!1862560 () Bool)

(assert (=> b!4484607 (=> res!1862560 e!2793094)))

(assert (=> b!4484607 (= res!1862560 (not (contains!13048 lt!1670430 hash!344)))))

(declare-fun tail!7599 (ListLongMap!2803) ListLongMap!2803)

(assert (=> b!4484607 (= lt!1670430 (tail!7599 lm!1477))))

(declare-fun b!4484608 () Bool)

(declare-fun res!1862554 () Bool)

(assert (=> b!4484608 (=> (not res!1862554) (not e!2793087))))

(declare-datatypes ((ListMap!3433 0))(
  ( (ListMap!3434 (toList!4172 List!50556)) )
))
(declare-fun contains!13049 (ListMap!3433 K!11845) Bool)

(declare-fun extractMap!1138 (List!50557) ListMap!3433)

(assert (=> b!4484608 (= res!1862554 (contains!13049 (extractMap!1138 (toList!4171 lm!1477)) key!3287))))

(assert (= (and start!441540 res!1862547) b!4484606))

(assert (= (and b!4484606 res!1862557) b!4484608))

(assert (= (and b!4484608 res!1862554) b!4484596))

(assert (= (and b!4484596 res!1862558) b!4484600))

(assert (= (and b!4484600 res!1862549) b!4484594))

(assert (= (and b!4484594 (not res!1862556)) b!4484597))

(assert (= (and b!4484597 (not res!1862548)) b!4484603))

(assert (= (and b!4484603 (not res!1862546)) b!4484607))

(assert (= (and b!4484607 (not res!1862560)) b!4484592))

(assert (= (and b!4484592 (not res!1862551)) b!4484605))

(assert (= (and b!4484605 (not res!1862555)) b!4484591))

(assert (= (and b!4484591 c!763853) b!4484589))

(assert (= (and b!4484591 (not c!763853)) b!4484604))

(assert (= (and b!4484591 (not res!1862550)) b!4484590))

(assert (= (and b!4484590 (not res!1862545)) b!4484593))

(assert (= (and b!4484593 (not res!1862553)) b!4484595))

(assert (= (and b!4484595 (not res!1862552)) b!4484601))

(assert (= (and b!4484601 (not res!1862559)) b!4484599))

(assert (= start!441540 b!4484598))

(assert (= (and start!441540 ((_ is Cons!50432) newBucket!178)) b!4484602))

(declare-fun m!5205185 () Bool)

(assert (=> b!4484590 m!5205185))

(declare-fun m!5205187 () Bool)

(assert (=> b!4484600 m!5205187))

(declare-fun m!5205189 () Bool)

(assert (=> b!4484591 m!5205189))

(declare-fun m!5205191 () Bool)

(assert (=> b!4484592 m!5205191))

(declare-fun m!5205193 () Bool)

(assert (=> b!4484596 m!5205193))

(declare-fun m!5205195 () Bool)

(assert (=> b!4484589 m!5205195))

(declare-fun m!5205197 () Bool)

(assert (=> b!4484597 m!5205197))

(declare-fun m!5205199 () Bool)

(assert (=> start!441540 m!5205199))

(declare-fun m!5205201 () Bool)

(assert (=> start!441540 m!5205201))

(declare-fun m!5205203 () Bool)

(assert (=> b!4484606 m!5205203))

(declare-fun m!5205205 () Bool)

(assert (=> b!4484607 m!5205205))

(declare-fun m!5205207 () Bool)

(assert (=> b!4484607 m!5205207))

(declare-fun m!5205209 () Bool)

(assert (=> b!4484593 m!5205209))

(declare-fun m!5205211 () Bool)

(assert (=> b!4484608 m!5205211))

(assert (=> b!4484608 m!5205211))

(declare-fun m!5205213 () Bool)

(assert (=> b!4484608 m!5205213))

(declare-fun m!5205215 () Bool)

(assert (=> b!4484594 m!5205215))

(declare-fun m!5205217 () Bool)

(assert (=> b!4484594 m!5205217))

(declare-fun m!5205219 () Bool)

(assert (=> b!4484594 m!5205219))

(declare-fun m!5205221 () Bool)

(assert (=> b!4484594 m!5205221))

(declare-fun m!5205223 () Bool)

(assert (=> b!4484594 m!5205223))

(declare-fun m!5205225 () Bool)

(assert (=> b!4484594 m!5205225))

(declare-fun m!5205227 () Bool)

(assert (=> b!4484594 m!5205227))

(declare-fun m!5205229 () Bool)

(assert (=> b!4484605 m!5205229))

(declare-fun m!5205231 () Bool)

(assert (=> b!4484595 m!5205231))

(declare-fun m!5205233 () Bool)

(assert (=> b!4484601 m!5205233))

(declare-fun m!5205235 () Bool)

(assert (=> b!4484601 m!5205235))

(declare-fun m!5205237 () Bool)

(assert (=> b!4484601 m!5205237))

(assert (=> b!4484601 m!5205233))

(declare-fun m!5205239 () Bool)

(assert (=> b!4484601 m!5205239))

(declare-fun m!5205241 () Bool)

(assert (=> b!4484601 m!5205241))

(declare-fun m!5205243 () Bool)

(assert (=> b!4484601 m!5205243))

(check-sat (not b!4484605) tp_is_empty!27607 (not b!4484591) (not start!441540) (not b!4484601) (not b!4484598) (not b!4484590) (not b!4484602) (not b!4484589) (not b!4484608) (not b!4484600) (not b!4484597) (not b!4484606) (not b!4484596) (not b!4484592) (not b!4484595) tp_is_empty!27605 (not b!4484594) (not b!4484593) (not b!4484607))
(check-sat)
