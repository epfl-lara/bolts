; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!441748 () Bool)

(assert start!441748)

(declare-fun b!4485654 () Bool)

(declare-fun res!1863240 () Bool)

(declare-fun e!2793739 () Bool)

(assert (=> b!4485654 (=> res!1863240 e!2793739)))

(declare-datatypes ((K!11865 0))(
  ( (K!11866 (val!17763 Int)) )
))
(declare-datatypes ((V!12111 0))(
  ( (V!12112 (val!17764 Int)) )
))
(declare-datatypes ((tuple2!50794 0))(
  ( (tuple2!50795 (_1!28691 K!11865) (_2!28691 V!12111)) )
))
(declare-datatypes ((List!50574 0))(
  ( (Nil!50450) (Cons!50450 (h!56247 tuple2!50794) (t!357528 List!50574)) )
))
(declare-datatypes ((tuple2!50796 0))(
  ( (tuple2!50797 (_1!28692 (_ BitVec 64)) (_2!28692 List!50574)) )
))
(declare-datatypes ((List!50575 0))(
  ( (Nil!50451) (Cons!50451 (h!56248 tuple2!50796) (t!357529 List!50575)) )
))
(declare-datatypes ((ListLongMap!2819 0))(
  ( (ListLongMap!2820 (toList!4187 List!50575)) )
))
(declare-fun lt!1671075 () ListLongMap!2819)

(declare-fun lambda!166365 () Int)

(declare-fun forall!10104 (List!50575 Int) Bool)

(assert (=> b!4485654 (= res!1863240 (not (forall!10104 (toList!4187 lt!1671075) lambda!166365)))))

(declare-fun b!4485655 () Bool)

(declare-fun res!1863244 () Bool)

(declare-fun e!2793741 () Bool)

(assert (=> b!4485655 (=> (not res!1863244) (not e!2793741))))

(declare-datatypes ((Hashable!5485 0))(
  ( (HashableExt!5484 (__x!31188 Int)) )
))
(declare-fun hashF!1107 () Hashable!5485)

(declare-fun newBucket!178 () List!50574)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun allKeysSameHash!944 (List!50574 (_ BitVec 64) Hashable!5485) Bool)

(assert (=> b!4485655 (= res!1863244 (allKeysSameHash!944 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4485656 () Bool)

(declare-fun e!2793738 () Bool)

(assert (=> b!4485656 (= e!2793741 (not e!2793738))))

(declare-fun res!1863233 () Bool)

(assert (=> b!4485656 (=> res!1863233 e!2793738)))

(declare-fun lt!1671080 () List!50574)

(declare-fun key!3287 () K!11865)

(declare-fun removePairForKey!717 (List!50574 K!11865) List!50574)

(assert (=> b!4485656 (= res!1863233 (not (= newBucket!178 (removePairForKey!717 lt!1671080 key!3287))))))

(declare-datatypes ((Unit!90106 0))(
  ( (Unit!90107) )
))
(declare-fun lt!1671077 () Unit!90106)

(declare-fun lt!1671084 () tuple2!50796)

(declare-fun lm!1477 () ListLongMap!2819)

(declare-fun forallContained!2365 (List!50575 Int tuple2!50796) Unit!90106)

(assert (=> b!4485656 (= lt!1671077 (forallContained!2365 (toList!4187 lm!1477) lambda!166365 lt!1671084))))

(declare-fun contains!13073 (List!50575 tuple2!50796) Bool)

(assert (=> b!4485656 (contains!13073 (toList!4187 lm!1477) lt!1671084)))

(assert (=> b!4485656 (= lt!1671084 (tuple2!50797 hash!344 lt!1671080))))

(declare-fun lt!1671074 () Unit!90106)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!602 (List!50575 (_ BitVec 64) List!50574) Unit!90106)

(assert (=> b!4485656 (= lt!1671074 (lemmaGetValueByKeyImpliesContainsTuple!602 (toList!4187 lm!1477) hash!344 lt!1671080))))

(declare-fun apply!11827 (ListLongMap!2819 (_ BitVec 64)) List!50574)

(assert (=> b!4485656 (= lt!1671080 (apply!11827 lm!1477 hash!344))))

(declare-fun lt!1671076 () (_ BitVec 64))

(declare-fun contains!13074 (ListLongMap!2819 (_ BitVec 64)) Bool)

(assert (=> b!4485656 (contains!13074 lm!1477 lt!1671076)))

(declare-fun lt!1671083 () Unit!90106)

(declare-fun lemmaInGenMapThenLongMapContainsHash!164 (ListLongMap!2819 K!11865 Hashable!5485) Unit!90106)

(assert (=> b!4485656 (= lt!1671083 (lemmaInGenMapThenLongMapContainsHash!164 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4485657 () Bool)

(declare-fun e!2793734 () Bool)

(declare-fun tp!1337000 () Bool)

(assert (=> b!4485657 (= e!2793734 tp!1337000)))

(declare-fun b!4485658 () Bool)

(declare-fun e!2793735 () Bool)

(assert (=> b!4485658 (= e!2793735 e!2793741)))

(declare-fun res!1863232 () Bool)

(assert (=> b!4485658 (=> (not res!1863232) (not e!2793741))))

(assert (=> b!4485658 (= res!1863232 (= lt!1671076 hash!344))))

(declare-fun hash!2597 (Hashable!5485 K!11865) (_ BitVec 64))

(assert (=> b!4485658 (= lt!1671076 (hash!2597 hashF!1107 key!3287))))

(declare-fun b!4485659 () Bool)

(declare-fun res!1863245 () Bool)

(assert (=> b!4485659 (=> (not res!1863245) (not e!2793735))))

(declare-fun allKeysSameHashInMap!1197 (ListLongMap!2819 Hashable!5485) Bool)

(assert (=> b!4485659 (= res!1863245 (allKeysSameHashInMap!1197 lm!1477 hashF!1107))))

(declare-fun b!4485660 () Bool)

(declare-fun e!2793740 () Unit!90106)

(declare-fun Unit!90108 () Unit!90106)

(assert (=> b!4485660 (= e!2793740 Unit!90108)))

(declare-fun lt!1671082 () Unit!90106)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!78 (ListLongMap!2819 K!11865 Hashable!5485) Unit!90106)

(assert (=> b!4485660 (= lt!1671082 (lemmaNotInItsHashBucketThenNotInMap!78 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4485660 false))

(declare-fun res!1863246 () Bool)

(assert (=> start!441748 (=> (not res!1863246) (not e!2793735))))

(assert (=> start!441748 (= res!1863246 (forall!10104 (toList!4187 lm!1477) lambda!166365))))

(assert (=> start!441748 e!2793735))

(assert (=> start!441748 true))

(declare-fun inv!66049 (ListLongMap!2819) Bool)

(assert (=> start!441748 (and (inv!66049 lm!1477) e!2793734)))

(declare-fun tp_is_empty!27637 () Bool)

(assert (=> start!441748 tp_is_empty!27637))

(declare-fun e!2793736 () Bool)

(assert (=> start!441748 e!2793736))

(declare-fun b!4485661 () Bool)

(declare-fun res!1863239 () Bool)

(assert (=> b!4485661 (=> (not res!1863239) (not e!2793735))))

(declare-datatypes ((ListMap!3449 0))(
  ( (ListMap!3450 (toList!4188 List!50574)) )
))
(declare-fun contains!13075 (ListMap!3449 K!11865) Bool)

(declare-fun extractMap!1146 (List!50575) ListMap!3449)

(assert (=> b!4485661 (= res!1863239 (contains!13075 (extractMap!1146 (toList!4187 lm!1477)) key!3287))))

(declare-fun b!4485662 () Bool)

(declare-fun Unit!90109 () Unit!90106)

(assert (=> b!4485662 (= e!2793740 Unit!90109)))

(declare-fun b!4485663 () Bool)

(declare-fun e!2793733 () Bool)

(declare-fun e!2793737 () Bool)

(assert (=> b!4485663 (= e!2793733 e!2793737)))

(declare-fun res!1863242 () Bool)

(assert (=> b!4485663 (=> res!1863242 e!2793737)))

(declare-fun lt!1671078 () Bool)

(assert (=> b!4485663 (= res!1863242 lt!1671078)))

(declare-fun lt!1671081 () Unit!90106)

(assert (=> b!4485663 (= lt!1671081 e!2793740)))

(declare-fun c!763993 () Bool)

(assert (=> b!4485663 (= c!763993 lt!1671078)))

(declare-fun containsKey!1598 (List!50574 K!11865) Bool)

(assert (=> b!4485663 (= lt!1671078 (not (containsKey!1598 lt!1671080 key!3287)))))

(declare-fun b!4485664 () Bool)

(declare-fun res!1863236 () Bool)

(assert (=> b!4485664 (=> res!1863236 e!2793738)))

(get-info :version)

(assert (=> b!4485664 (= res!1863236 (or ((_ is Nil!50451) (toList!4187 lm!1477)) (= (_1!28692 (h!56248 (toList!4187 lm!1477))) hash!344)))))

(declare-fun b!4485665 () Bool)

(declare-fun res!1863238 () Bool)

(assert (=> b!4485665 (=> res!1863238 e!2793739)))

(assert (=> b!4485665 (= res!1863238 (not (allKeysSameHashInMap!1197 lt!1671075 hashF!1107)))))

(declare-fun b!4485666 () Bool)

(declare-fun res!1863234 () Bool)

(assert (=> b!4485666 (=> res!1863234 e!2793733)))

(assert (=> b!4485666 (= res!1863234 (not (contains!13073 (t!357529 (toList!4187 lm!1477)) lt!1671084)))))

(declare-fun b!4485667 () Bool)

(declare-fun res!1863241 () Bool)

(assert (=> b!4485667 (=> res!1863241 e!2793733)))

(assert (=> b!4485667 (= res!1863241 (not (= (apply!11827 lt!1671075 hash!344) lt!1671080)))))

(declare-fun b!4485668 () Bool)

(assert (=> b!4485668 (= e!2793739 true)))

(declare-fun b!4485669 () Bool)

(assert (=> b!4485669 (= e!2793737 e!2793739)))

(declare-fun res!1863235 () Bool)

(assert (=> b!4485669 (=> res!1863235 e!2793739)))

(declare-fun containsKeyBiggerList!70 (List!50575 K!11865) Bool)

(assert (=> b!4485669 (= res!1863235 (not (containsKeyBiggerList!70 (t!357529 (toList!4187 lm!1477)) key!3287)))))

(assert (=> b!4485669 (containsKeyBiggerList!70 (toList!4187 lt!1671075) key!3287)))

(declare-fun lt!1671079 () Unit!90106)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!6 (ListLongMap!2819 K!11865 Hashable!5485) Unit!90106)

(assert (=> b!4485669 (= lt!1671079 (lemmaInLongMapThenContainsKeyBiggerList!6 lt!1671075 key!3287 hashF!1107))))

(declare-fun tp_is_empty!27639 () Bool)

(declare-fun tp!1337001 () Bool)

(declare-fun b!4485670 () Bool)

(assert (=> b!4485670 (= e!2793736 (and tp_is_empty!27637 tp_is_empty!27639 tp!1337001))))

(declare-fun b!4485671 () Bool)

(assert (=> b!4485671 (= e!2793738 e!2793733)))

(declare-fun res!1863237 () Bool)

(assert (=> b!4485671 (=> res!1863237 e!2793733)))

(assert (=> b!4485671 (= res!1863237 (not (contains!13074 lt!1671075 hash!344)))))

(declare-fun tail!7609 (ListLongMap!2819) ListLongMap!2819)

(assert (=> b!4485671 (= lt!1671075 (tail!7609 lm!1477))))

(declare-fun b!4485672 () Bool)

(declare-fun res!1863243 () Bool)

(assert (=> b!4485672 (=> res!1863243 e!2793738)))

(declare-fun noDuplicateKeys!1090 (List!50574) Bool)

(assert (=> b!4485672 (= res!1863243 (not (noDuplicateKeys!1090 newBucket!178)))))

(assert (= (and start!441748 res!1863246) b!4485659))

(assert (= (and b!4485659 res!1863245) b!4485661))

(assert (= (and b!4485661 res!1863239) b!4485658))

(assert (= (and b!4485658 res!1863232) b!4485655))

(assert (= (and b!4485655 res!1863244) b!4485656))

(assert (= (and b!4485656 (not res!1863233)) b!4485672))

(assert (= (and b!4485672 (not res!1863243)) b!4485664))

(assert (= (and b!4485664 (not res!1863236)) b!4485671))

(assert (= (and b!4485671 (not res!1863237)) b!4485667))

(assert (= (and b!4485667 (not res!1863241)) b!4485666))

(assert (= (and b!4485666 (not res!1863234)) b!4485663))

(assert (= (and b!4485663 c!763993) b!4485660))

(assert (= (and b!4485663 (not c!763993)) b!4485662))

(assert (= (and b!4485663 (not res!1863242)) b!4485669))

(assert (= (and b!4485669 (not res!1863235)) b!4485654))

(assert (= (and b!4485654 (not res!1863240)) b!4485665))

(assert (= (and b!4485665 (not res!1863238)) b!4485668))

(assert (= start!441748 b!4485657))

(assert (= (and start!441748 ((_ is Cons!50450) newBucket!178)) b!4485670))

(declare-fun m!5206321 () Bool)

(assert (=> b!4485659 m!5206321))

(declare-fun m!5206323 () Bool)

(assert (=> start!441748 m!5206323))

(declare-fun m!5206325 () Bool)

(assert (=> start!441748 m!5206325))

(declare-fun m!5206327 () Bool)

(assert (=> b!4485672 m!5206327))

(declare-fun m!5206329 () Bool)

(assert (=> b!4485671 m!5206329))

(declare-fun m!5206331 () Bool)

(assert (=> b!4485671 m!5206331))

(declare-fun m!5206333 () Bool)

(assert (=> b!4485660 m!5206333))

(declare-fun m!5206335 () Bool)

(assert (=> b!4485658 m!5206335))

(declare-fun m!5206337 () Bool)

(assert (=> b!4485667 m!5206337))

(declare-fun m!5206339 () Bool)

(assert (=> b!4485656 m!5206339))

(declare-fun m!5206341 () Bool)

(assert (=> b!4485656 m!5206341))

(declare-fun m!5206343 () Bool)

(assert (=> b!4485656 m!5206343))

(declare-fun m!5206345 () Bool)

(assert (=> b!4485656 m!5206345))

(declare-fun m!5206347 () Bool)

(assert (=> b!4485656 m!5206347))

(declare-fun m!5206349 () Bool)

(assert (=> b!4485656 m!5206349))

(declare-fun m!5206351 () Bool)

(assert (=> b!4485656 m!5206351))

(declare-fun m!5206353 () Bool)

(assert (=> b!4485666 m!5206353))

(declare-fun m!5206355 () Bool)

(assert (=> b!4485655 m!5206355))

(declare-fun m!5206357 () Bool)

(assert (=> b!4485663 m!5206357))

(declare-fun m!5206359 () Bool)

(assert (=> b!4485661 m!5206359))

(assert (=> b!4485661 m!5206359))

(declare-fun m!5206361 () Bool)

(assert (=> b!4485661 m!5206361))

(declare-fun m!5206363 () Bool)

(assert (=> b!4485654 m!5206363))

(declare-fun m!5206365 () Bool)

(assert (=> b!4485669 m!5206365))

(declare-fun m!5206367 () Bool)

(assert (=> b!4485669 m!5206367))

(declare-fun m!5206369 () Bool)

(assert (=> b!4485669 m!5206369))

(declare-fun m!5206371 () Bool)

(assert (=> b!4485665 m!5206371))

(check-sat (not b!4485654) (not b!4485661) tp_is_empty!27639 (not b!4485667) (not b!4485656) (not b!4485658) (not b!4485663) tp_is_empty!27637 (not b!4485655) (not b!4485659) (not b!4485657) (not b!4485671) (not b!4485669) (not b!4485670) (not b!4485660) (not start!441748) (not b!4485666) (not b!4485672) (not b!4485665))
(check-sat)
