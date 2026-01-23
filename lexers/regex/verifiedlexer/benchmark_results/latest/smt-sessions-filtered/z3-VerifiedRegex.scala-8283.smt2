; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!430162 () Bool)

(assert start!430162)

(declare-fun b!4416605 () Bool)

(declare-fun res!1824433 () Bool)

(declare-fun e!2750170 () Bool)

(assert (=> b!4416605 (=> (not res!1824433) (not e!2750170))))

(declare-datatypes ((K!10820 0))(
  ( (K!10821 (val!16927 Int)) )
))
(declare-fun key!3717 () K!10820)

(declare-datatypes ((Hashable!5093 0))(
  ( (HashableExt!5092 (__x!30796 Int)) )
))
(declare-fun hashF!1220 () Hashable!5093)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun hash!2016 (Hashable!5093 K!10820) (_ BitVec 64))

(assert (=> b!4416605 (= res!1824433 (= (hash!2016 hashF!1220 key!3717) hash!366))))

(declare-fun b!4416606 () Bool)

(declare-fun e!2750167 () Bool)

(declare-fun e!2750166 () Bool)

(assert (=> b!4416606 (= e!2750167 e!2750166)))

(declare-fun res!1824421 () Bool)

(assert (=> b!4416606 (=> res!1824421 e!2750166)))

(declare-datatypes ((V!11066 0))(
  ( (V!11067 (val!16928 Int)) )
))
(declare-datatypes ((tuple2!49174 0))(
  ( (tuple2!49175 (_1!27881 K!10820) (_2!27881 V!11066)) )
))
(declare-datatypes ((List!49585 0))(
  ( (Nil!49461) (Cons!49461 (h!55124 tuple2!49174) (t!356523 List!49585)) )
))
(declare-datatypes ((ListMap!2629 0))(
  ( (ListMap!2630 (toList!3385 List!49585)) )
))
(declare-fun lt!1618519 () ListMap!2629)

(declare-fun lt!1618531 () ListMap!2629)

(assert (=> b!4416606 (= res!1824421 (not (= lt!1618519 lt!1618531)))))

(declare-fun newBucket!194 () List!49585)

(declare-fun lt!1618526 () ListMap!2629)

(declare-fun addToMapMapFromBucket!353 (List!49585 ListMap!2629) ListMap!2629)

(assert (=> b!4416606 (= lt!1618531 (addToMapMapFromBucket!353 newBucket!194 lt!1618526))))

(declare-datatypes ((tuple2!49176 0))(
  ( (tuple2!49177 (_1!27882 (_ BitVec 64)) (_2!27882 List!49585)) )
))
(declare-datatypes ((List!49586 0))(
  ( (Nil!49462) (Cons!49462 (h!55125 tuple2!49176) (t!356524 List!49586)) )
))
(declare-datatypes ((ListLongMap!2035 0))(
  ( (ListLongMap!2036 (toList!3386 List!49586)) )
))
(declare-fun lt!1618523 () ListLongMap!2035)

(declare-fun extractMap!760 (List!49586) ListMap!2629)

(assert (=> b!4416606 (= lt!1618519 (extractMap!760 (toList!3386 lt!1618523)))))

(declare-fun lm!1616 () ListLongMap!2035)

(assert (=> b!4416606 (= lt!1618526 (extractMap!760 (t!356524 (toList!3386 lm!1616))))))

(declare-fun b!4416607 () Bool)

(declare-fun res!1824428 () Bool)

(declare-fun e!2750168 () Bool)

(assert (=> b!4416607 (=> res!1824428 e!2750168)))

(declare-fun lt!1618525 () ListMap!2629)

(declare-fun eq!375 (ListMap!2629 ListMap!2629) Bool)

(assert (=> b!4416607 (= res!1824428 (not (eq!375 lt!1618519 lt!1618525)))))

(declare-fun b!4416608 () Bool)

(declare-fun res!1824419 () Bool)

(assert (=> b!4416608 (=> res!1824419 e!2750167)))

(declare-fun tail!7187 (List!49586) List!49586)

(assert (=> b!4416608 (= res!1824419 (not (= (tail!7187 (toList!3386 lt!1618523)) (t!356524 (toList!3386 lm!1616)))))))

(declare-fun newValue!93 () V!11066)

(declare-fun lt!1618520 () Bool)

(declare-fun e!2750174 () Bool)

(declare-fun b!4416609 () Bool)

(assert (=> b!4416609 (= e!2750174 (and (not lt!1618520) (= newBucket!194 (Cons!49461 (tuple2!49175 key!3717 newValue!93) Nil!49461))))))

(declare-fun b!4416610 () Bool)

(declare-fun e!2750176 () Bool)

(declare-fun e!2750173 () Bool)

(assert (=> b!4416610 (= e!2750176 e!2750173)))

(declare-fun res!1824423 () Bool)

(assert (=> b!4416610 (=> res!1824423 e!2750173)))

(declare-fun lt!1618521 () ListMap!2629)

(assert (=> b!4416610 (= res!1824423 (not (= lt!1618531 lt!1618521)))))

(declare-fun lt!1618522 () tuple2!49174)

(declare-fun lt!1618524 () List!49585)

(declare-fun +!998 (ListMap!2629 tuple2!49174) ListMap!2629)

(assert (=> b!4416610 (= lt!1618521 (addToMapMapFromBucket!353 lt!1618524 (+!998 lt!1618526 lt!1618522)))))

(declare-fun b!4416612 () Bool)

(declare-fun res!1824434 () Bool)

(assert (=> b!4416612 (=> res!1824434 e!2750167)))

(declare-fun lt!1618527 () Bool)

(get-info :version)

(assert (=> b!4416612 (= res!1824434 (or (not ((_ is Cons!49462) (toList!3386 lm!1616))) (not (= (_1!27882 (h!55125 (toList!3386 lm!1616))) hash!366)) lt!1618527))))

(declare-fun b!4416613 () Bool)

(declare-fun res!1824430 () Bool)

(assert (=> b!4416613 (=> (not res!1824430) (not e!2750170))))

(declare-fun allKeysSameHash!659 (List!49585 (_ BitVec 64) Hashable!5093) Bool)

(assert (=> b!4416613 (= res!1824430 (allKeysSameHash!659 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4416614 () Bool)

(declare-fun e!2750169 () Bool)

(assert (=> b!4416614 (= e!2750170 e!2750169)))

(declare-fun res!1824436 () Bool)

(assert (=> b!4416614 (=> (not res!1824436) (not e!2750169))))

(assert (=> b!4416614 (= res!1824436 e!2750174)))

(declare-fun res!1824435 () Bool)

(assert (=> b!4416614 (=> res!1824435 e!2750174)))

(declare-fun e!2750175 () Bool)

(assert (=> b!4416614 (= res!1824435 e!2750175)))

(declare-fun res!1824432 () Bool)

(assert (=> b!4416614 (=> (not res!1824432) (not e!2750175))))

(assert (=> b!4416614 (= res!1824432 (not lt!1618527))))

(assert (=> b!4416614 (= lt!1618527 (not lt!1618520))))

(declare-fun contains!11923 (ListLongMap!2035 (_ BitVec 64)) Bool)

(assert (=> b!4416614 (= lt!1618520 (contains!11923 lm!1616 hash!366))))

(declare-fun b!4416615 () Bool)

(declare-fun lambda!152134 () Int)

(declare-fun forall!9484 (List!49586 Int) Bool)

(assert (=> b!4416615 (= e!2750168 (forall!9484 (toList!3386 lm!1616) lambda!152134))))

(declare-fun b!4416616 () Bool)

(assert (=> b!4416616 (= e!2750166 e!2750176)))

(declare-fun res!1824426 () Bool)

(assert (=> b!4416616 (=> res!1824426 e!2750176)))

(assert (=> b!4416616 (= res!1824426 (not (= newBucket!194 (Cons!49461 lt!1618522 lt!1618524))))))

(declare-fun apply!11551 (ListLongMap!2035 (_ BitVec 64)) List!49585)

(assert (=> b!4416616 (= lt!1618524 (apply!11551 lm!1616 hash!366))))

(assert (=> b!4416616 (= lt!1618522 (tuple2!49175 key!3717 newValue!93))))

(declare-fun tp_is_empty!26043 () Bool)

(declare-fun tp!1332656 () Bool)

(declare-fun e!2750171 () Bool)

(declare-fun tp_is_empty!26041 () Bool)

(declare-fun b!4416617 () Bool)

(assert (=> b!4416617 (= e!2750171 (and tp_is_empty!26043 tp_is_empty!26041 tp!1332656))))

(declare-fun b!4416618 () Bool)

(assert (=> b!4416618 (= e!2750173 e!2750168)))

(declare-fun res!1824420 () Bool)

(assert (=> b!4416618 (=> res!1824420 e!2750168)))

(assert (=> b!4416618 (= res!1824420 (not (eq!375 lt!1618531 lt!1618525)))))

(assert (=> b!4416618 (eq!375 lt!1618521 lt!1618525)))

(assert (=> b!4416618 (= lt!1618525 (+!998 (addToMapMapFromBucket!353 lt!1618524 lt!1618526) lt!1618522))))

(declare-datatypes ((Unit!80983 0))(
  ( (Unit!80984) )
))
(declare-fun lt!1618530 () Unit!80983)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!170 (ListMap!2629 K!10820 V!11066 List!49585) Unit!80983)

(assert (=> b!4416618 (= lt!1618530 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!170 lt!1618526 key!3717 newValue!93 lt!1618524))))

(declare-fun b!4416619 () Bool)

(declare-fun res!1824424 () Bool)

(assert (=> b!4416619 (=> (not res!1824424) (not e!2750170))))

(declare-fun contains!11924 (ListMap!2629 K!10820) Bool)

(assert (=> b!4416619 (= res!1824424 (not (contains!11924 (extractMap!760 (toList!3386 lm!1616)) key!3717)))))

(declare-fun b!4416620 () Bool)

(declare-fun res!1824427 () Bool)

(assert (=> b!4416620 (=> res!1824427 e!2750167)))

(declare-fun lt!1618528 () tuple2!49176)

(declare-fun head!9178 (List!49586) tuple2!49176)

(assert (=> b!4416620 (= res!1824427 (not (= (head!9178 (toList!3386 lt!1618523)) lt!1618528)))))

(declare-fun b!4416621 () Bool)

(assert (=> b!4416621 (= e!2750169 (not e!2750167))))

(declare-fun res!1824437 () Bool)

(assert (=> b!4416621 (=> res!1824437 e!2750167)))

(assert (=> b!4416621 (= res!1824437 (not (forall!9484 (toList!3386 lt!1618523) lambda!152134)))))

(assert (=> b!4416621 (forall!9484 (toList!3386 lt!1618523) lambda!152134)))

(declare-fun +!999 (ListLongMap!2035 tuple2!49176) ListLongMap!2035)

(assert (=> b!4416621 (= lt!1618523 (+!999 lm!1616 lt!1618528))))

(assert (=> b!4416621 (= lt!1618528 (tuple2!49177 hash!366 newBucket!194))))

(declare-fun lt!1618529 () Unit!80983)

(declare-fun addValidProp!343 (ListLongMap!2035 Int (_ BitVec 64) List!49585) Unit!80983)

(assert (=> b!4416621 (= lt!1618529 (addValidProp!343 lm!1616 lambda!152134 hash!366 newBucket!194))))

(declare-fun b!4416611 () Bool)

(declare-fun res!1824422 () Bool)

(assert (=> b!4416611 (=> (not res!1824422) (not e!2750170))))

(declare-fun allKeysSameHashInMap!805 (ListLongMap!2035 Hashable!5093) Bool)

(assert (=> b!4416611 (= res!1824422 (allKeysSameHashInMap!805 lm!1616 hashF!1220))))

(declare-fun res!1824425 () Bool)

(assert (=> start!430162 (=> (not res!1824425) (not e!2750170))))

(assert (=> start!430162 (= res!1824425 (forall!9484 (toList!3386 lm!1616) lambda!152134))))

(assert (=> start!430162 e!2750170))

(assert (=> start!430162 tp_is_empty!26041))

(assert (=> start!430162 tp_is_empty!26043))

(assert (=> start!430162 e!2750171))

(declare-fun e!2750172 () Bool)

(declare-fun inv!65006 (ListLongMap!2035) Bool)

(assert (=> start!430162 (and (inv!65006 lm!1616) e!2750172)))

(assert (=> start!430162 true))

(declare-fun b!4416622 () Bool)

(declare-fun res!1824431 () Bool)

(assert (=> b!4416622 (=> (not res!1824431) (not e!2750169))))

(declare-fun noDuplicateKeys!699 (List!49585) Bool)

(assert (=> b!4416622 (= res!1824431 (noDuplicateKeys!699 newBucket!194))))

(declare-fun b!4416623 () Bool)

(declare-fun res!1824429 () Bool)

(assert (=> b!4416623 (=> (not res!1824429) (not e!2750169))))

(assert (=> b!4416623 (= res!1824429 (forall!9484 (toList!3386 lm!1616) lambda!152134))))

(declare-fun b!4416624 () Bool)

(declare-fun tp!1332655 () Bool)

(assert (=> b!4416624 (= e!2750172 tp!1332655)))

(declare-fun b!4416625 () Bool)

(assert (=> b!4416625 (= e!2750175 (= newBucket!194 (Cons!49461 (tuple2!49175 key!3717 newValue!93) (apply!11551 lm!1616 hash!366))))))

(assert (= (and start!430162 res!1824425) b!4416611))

(assert (= (and b!4416611 res!1824422) b!4416605))

(assert (= (and b!4416605 res!1824433) b!4416613))

(assert (= (and b!4416613 res!1824430) b!4416619))

(assert (= (and b!4416619 res!1824424) b!4416614))

(assert (= (and b!4416614 res!1824432) b!4416625))

(assert (= (and b!4416614 (not res!1824435)) b!4416609))

(assert (= (and b!4416614 res!1824436) b!4416622))

(assert (= (and b!4416622 res!1824431) b!4416623))

(assert (= (and b!4416623 res!1824429) b!4416621))

(assert (= (and b!4416621 (not res!1824437)) b!4416612))

(assert (= (and b!4416612 (not res!1824434)) b!4416620))

(assert (= (and b!4416620 (not res!1824427)) b!4416608))

(assert (= (and b!4416608 (not res!1824419)) b!4416606))

(assert (= (and b!4416606 (not res!1824421)) b!4416616))

(assert (= (and b!4416616 (not res!1824426)) b!4416610))

(assert (= (and b!4416610 (not res!1824423)) b!4416618))

(assert (= (and b!4416618 (not res!1824420)) b!4416607))

(assert (= (and b!4416607 (not res!1824428)) b!4416615))

(assert (= (and start!430162 ((_ is Cons!49461) newBucket!194)) b!4416617))

(assert (= start!430162 b!4416624))

(declare-fun m!5093073 () Bool)

(assert (=> b!4416605 m!5093073))

(declare-fun m!5093075 () Bool)

(assert (=> b!4416614 m!5093075))

(declare-fun m!5093077 () Bool)

(assert (=> b!4416621 m!5093077))

(assert (=> b!4416621 m!5093077))

(declare-fun m!5093079 () Bool)

(assert (=> b!4416621 m!5093079))

(declare-fun m!5093081 () Bool)

(assert (=> b!4416621 m!5093081))

(declare-fun m!5093083 () Bool)

(assert (=> b!4416608 m!5093083))

(declare-fun m!5093085 () Bool)

(assert (=> b!4416607 m!5093085))

(declare-fun m!5093087 () Bool)

(assert (=> b!4416618 m!5093087))

(declare-fun m!5093089 () Bool)

(assert (=> b!4416618 m!5093089))

(declare-fun m!5093091 () Bool)

(assert (=> b!4416618 m!5093091))

(declare-fun m!5093093 () Bool)

(assert (=> b!4416618 m!5093093))

(assert (=> b!4416618 m!5093089))

(declare-fun m!5093095 () Bool)

(assert (=> b!4416618 m!5093095))

(declare-fun m!5093097 () Bool)

(assert (=> b!4416623 m!5093097))

(declare-fun m!5093099 () Bool)

(assert (=> b!4416606 m!5093099))

(declare-fun m!5093101 () Bool)

(assert (=> b!4416606 m!5093101))

(declare-fun m!5093103 () Bool)

(assert (=> b!4416606 m!5093103))

(declare-fun m!5093105 () Bool)

(assert (=> b!4416620 m!5093105))

(declare-fun m!5093107 () Bool)

(assert (=> b!4416611 m!5093107))

(declare-fun m!5093109 () Bool)

(assert (=> b!4416613 m!5093109))

(declare-fun m!5093111 () Bool)

(assert (=> b!4416616 m!5093111))

(declare-fun m!5093113 () Bool)

(assert (=> b!4416619 m!5093113))

(assert (=> b!4416619 m!5093113))

(declare-fun m!5093115 () Bool)

(assert (=> b!4416619 m!5093115))

(assert (=> start!430162 m!5093097))

(declare-fun m!5093117 () Bool)

(assert (=> start!430162 m!5093117))

(declare-fun m!5093119 () Bool)

(assert (=> b!4416610 m!5093119))

(assert (=> b!4416610 m!5093119))

(declare-fun m!5093121 () Bool)

(assert (=> b!4416610 m!5093121))

(assert (=> b!4416625 m!5093111))

(assert (=> b!4416615 m!5093097))

(declare-fun m!5093123 () Bool)

(assert (=> b!4416622 m!5093123))

(check-sat (not start!430162) (not b!4416614) (not b!4416619) (not b!4416616) (not b!4416617) (not b!4416613) (not b!4416624) (not b!4416608) (not b!4416620) (not b!4416607) tp_is_empty!26043 (not b!4416611) (not b!4416622) (not b!4416618) (not b!4416621) (not b!4416605) (not b!4416615) (not b!4416610) tp_is_empty!26041 (not b!4416625) (not b!4416623) (not b!4416606))
(check-sat)
