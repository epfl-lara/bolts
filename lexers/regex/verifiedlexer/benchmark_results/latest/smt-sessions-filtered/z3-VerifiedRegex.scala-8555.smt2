; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!451296 () Bool)

(assert start!451296)

(declare-fun b!4543599 () Bool)

(declare-datatypes ((Unit!99033 0))(
  ( (Unit!99034) )
))
(declare-fun e!2831419 () Unit!99033)

(declare-fun Unit!99035 () Unit!99033)

(assert (=> b!4543599 (= e!2831419 Unit!99035)))

(declare-fun b!4543600 () Bool)

(declare-fun res!1894191 () Bool)

(declare-fun e!2831422 () Bool)

(assert (=> b!4543600 (=> (not res!1894191) (not e!2831422))))

(declare-datatypes ((K!12180 0))(
  ( (K!12181 (val!18015 Int)) )
))
(declare-datatypes ((V!12426 0))(
  ( (V!12427 (val!18016 Int)) )
))
(declare-datatypes ((tuple2!51298 0))(
  ( (tuple2!51299 (_1!28943 K!12180) (_2!28943 V!12426)) )
))
(declare-datatypes ((List!50919 0))(
  ( (Nil!50795) (Cons!50795 (h!56686 tuple2!51298) (t!357881 List!50919)) )
))
(declare-datatypes ((tuple2!51300 0))(
  ( (tuple2!51301 (_1!28944 (_ BitVec 64)) (_2!28944 List!50919)) )
))
(declare-datatypes ((List!50920 0))(
  ( (Nil!50796) (Cons!50796 (h!56687 tuple2!51300) (t!357882 List!50920)) )
))
(declare-datatypes ((ListLongMap!3071 0))(
  ( (ListLongMap!3072 (toList!4439 List!50920)) )
))
(declare-fun lm!1477 () ListLongMap!3071)

(declare-datatypes ((Hashable!5611 0))(
  ( (HashableExt!5610 (__x!31314 Int)) )
))
(declare-fun hashF!1107 () Hashable!5611)

(declare-fun allKeysSameHashInMap!1323 (ListLongMap!3071 Hashable!5611) Bool)

(assert (=> b!4543600 (= res!1894191 (allKeysSameHashInMap!1323 lm!1477 hashF!1107))))

(declare-fun b!4543601 () Bool)

(declare-fun e!2831424 () Bool)

(declare-fun tp!1338822 () Bool)

(assert (=> b!4543601 (= e!2831424 tp!1338822)))

(declare-fun res!1894194 () Bool)

(assert (=> start!451296 (=> (not res!1894194) (not e!2831422))))

(declare-fun lambda!176897 () Int)

(declare-fun forall!10373 (List!50920 Int) Bool)

(assert (=> start!451296 (= res!1894194 (forall!10373 (toList!4439 lm!1477) lambda!176897))))

(assert (=> start!451296 e!2831422))

(assert (=> start!451296 true))

(declare-fun inv!66364 (ListLongMap!3071) Bool)

(assert (=> start!451296 (and (inv!66364 lm!1477) e!2831424)))

(declare-fun tp_is_empty!28141 () Bool)

(assert (=> start!451296 tp_is_empty!28141))

(declare-fun e!2831423 () Bool)

(assert (=> start!451296 e!2831423))

(declare-fun b!4543602 () Bool)

(declare-fun e!2831425 () Bool)

(assert (=> b!4543602 (= e!2831425 true)))

(declare-fun lt!1718202 () List!50920)

(declare-fun key!3287 () K!12180)

(declare-datatypes ((ListMap!3701 0))(
  ( (ListMap!3702 (toList!4440 List!50919)) )
))
(declare-fun contains!13612 (ListMap!3701 K!12180) Bool)

(declare-fun extractMap!1272 (List!50920) ListMap!3701)

(assert (=> b!4543602 (contains!13612 (extractMap!1272 lt!1718202) key!3287)))

(declare-fun lt!1718207 () Unit!99033)

(declare-fun lemmaListContainsThenExtractedMapContains!182 (ListLongMap!3071 K!12180 Hashable!5611) Unit!99033)

(assert (=> b!4543602 (= lt!1718207 (lemmaListContainsThenExtractedMapContains!182 (ListLongMap!3072 lt!1718202) key!3287 hashF!1107))))

(declare-fun b!4543603 () Bool)

(declare-fun Unit!99036 () Unit!99033)

(assert (=> b!4543603 (= e!2831419 Unit!99036)))

(declare-fun lt!1718205 () Unit!99033)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!204 (ListLongMap!3071 K!12180 Hashable!5611) Unit!99033)

(assert (=> b!4543603 (= lt!1718205 (lemmaNotInItsHashBucketThenNotInMap!204 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4543603 false))

(declare-fun b!4543604 () Bool)

(declare-fun res!1894198 () Bool)

(declare-fun e!2831420 () Bool)

(assert (=> b!4543604 (=> res!1894198 e!2831420)))

(declare-fun newBucket!178 () List!50919)

(declare-fun noDuplicateKeys!1216 (List!50919) Bool)

(assert (=> b!4543604 (= res!1894198 (not (noDuplicateKeys!1216 newBucket!178)))))

(declare-fun b!4543605 () Bool)

(declare-fun res!1894192 () Bool)

(assert (=> b!4543605 (=> res!1894192 e!2831420)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4543605 (= res!1894192 (or ((_ is Nil!50796) (toList!4439 lm!1477)) (not (= (_1!28944 (h!56687 (toList!4439 lm!1477))) hash!344))))))

(declare-fun b!4543606 () Bool)

(declare-fun res!1894196 () Bool)

(declare-fun e!2831421 () Bool)

(assert (=> b!4543606 (=> (not res!1894196) (not e!2831421))))

(declare-fun allKeysSameHash!1070 (List!50919 (_ BitVec 64) Hashable!5611) Bool)

(assert (=> b!4543606 (= res!1894196 (allKeysSameHash!1070 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4543607 () Bool)

(declare-fun e!2831418 () Bool)

(assert (=> b!4543607 (= e!2831420 e!2831418)))

(declare-fun res!1894193 () Bool)

(assert (=> b!4543607 (=> res!1894193 e!2831418)))

(declare-fun lt!1718201 () Bool)

(assert (=> b!4543607 (= res!1894193 lt!1718201)))

(declare-fun lt!1718208 () Unit!99033)

(assert (=> b!4543607 (= lt!1718208 e!2831419)))

(declare-fun c!776007 () Bool)

(assert (=> b!4543607 (= c!776007 lt!1718201)))

(declare-fun containsKey!1911 (List!50919 K!12180) Bool)

(assert (=> b!4543607 (= lt!1718201 (not (containsKey!1911 (_2!28944 (h!56687 (toList!4439 lm!1477))) key!3287)))))

(declare-fun tp!1338823 () Bool)

(declare-fun tp_is_empty!28143 () Bool)

(declare-fun b!4543608 () Bool)

(assert (=> b!4543608 (= e!2831423 (and tp_is_empty!28141 tp_is_empty!28143 tp!1338823))))

(declare-fun b!4543609 () Bool)

(assert (=> b!4543609 (= e!2831418 e!2831425)))

(declare-fun res!1894195 () Bool)

(assert (=> b!4543609 (=> res!1894195 e!2831425)))

(declare-fun containsKeyBiggerList!194 (List!50920 K!12180) Bool)

(assert (=> b!4543609 (= res!1894195 (not (containsKeyBiggerList!194 lt!1718202 key!3287)))))

(assert (=> b!4543609 (= lt!1718202 (Cons!50796 (h!56687 (toList!4439 lm!1477)) Nil!50796))))

(declare-fun b!4543610 () Bool)

(declare-fun res!1894197 () Bool)

(assert (=> b!4543610 (=> (not res!1894197) (not e!2831422))))

(assert (=> b!4543610 (= res!1894197 (contains!13612 (extractMap!1272 (toList!4439 lm!1477)) key!3287))))

(declare-fun b!4543611 () Bool)

(assert (=> b!4543611 (= e!2831421 (not e!2831420))))

(declare-fun res!1894189 () Bool)

(assert (=> b!4543611 (=> res!1894189 e!2831420)))

(declare-fun lt!1718206 () List!50919)

(declare-fun removePairForKey!843 (List!50919 K!12180) List!50919)

(assert (=> b!4543611 (= res!1894189 (not (= newBucket!178 (removePairForKey!843 lt!1718206 key!3287))))))

(declare-fun lt!1718199 () tuple2!51300)

(declare-fun lt!1718198 () Unit!99033)

(declare-fun forallContained!2637 (List!50920 Int tuple2!51300) Unit!99033)

(assert (=> b!4543611 (= lt!1718198 (forallContained!2637 (toList!4439 lm!1477) lambda!176897 lt!1718199))))

(declare-fun contains!13613 (List!50920 tuple2!51300) Bool)

(assert (=> b!4543611 (contains!13613 (toList!4439 lm!1477) lt!1718199)))

(assert (=> b!4543611 (= lt!1718199 (tuple2!51301 hash!344 lt!1718206))))

(declare-fun lt!1718204 () Unit!99033)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!728 (List!50920 (_ BitVec 64) List!50919) Unit!99033)

(assert (=> b!4543611 (= lt!1718204 (lemmaGetValueByKeyImpliesContainsTuple!728 (toList!4439 lm!1477) hash!344 lt!1718206))))

(declare-fun apply!11953 (ListLongMap!3071 (_ BitVec 64)) List!50919)

(assert (=> b!4543611 (= lt!1718206 (apply!11953 lm!1477 hash!344))))

(declare-fun lt!1718203 () (_ BitVec 64))

(declare-fun contains!13614 (ListLongMap!3071 (_ BitVec 64)) Bool)

(assert (=> b!4543611 (contains!13614 lm!1477 lt!1718203)))

(declare-fun lt!1718200 () Unit!99033)

(declare-fun lemmaInGenMapThenLongMapContainsHash!290 (ListLongMap!3071 K!12180 Hashable!5611) Unit!99033)

(assert (=> b!4543611 (= lt!1718200 (lemmaInGenMapThenLongMapContainsHash!290 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4543612 () Bool)

(assert (=> b!4543612 (= e!2831422 e!2831421)))

(declare-fun res!1894190 () Bool)

(assert (=> b!4543612 (=> (not res!1894190) (not e!2831421))))

(assert (=> b!4543612 (= res!1894190 (= lt!1718203 hash!344))))

(declare-fun hash!2952 (Hashable!5611 K!12180) (_ BitVec 64))

(assert (=> b!4543612 (= lt!1718203 (hash!2952 hashF!1107 key!3287))))

(assert (= (and start!451296 res!1894194) b!4543600))

(assert (= (and b!4543600 res!1894191) b!4543610))

(assert (= (and b!4543610 res!1894197) b!4543612))

(assert (= (and b!4543612 res!1894190) b!4543606))

(assert (= (and b!4543606 res!1894196) b!4543611))

(assert (= (and b!4543611 (not res!1894189)) b!4543604))

(assert (= (and b!4543604 (not res!1894198)) b!4543605))

(assert (= (and b!4543605 (not res!1894192)) b!4543607))

(assert (= (and b!4543607 c!776007) b!4543603))

(assert (= (and b!4543607 (not c!776007)) b!4543599))

(assert (= (and b!4543607 (not res!1894193)) b!4543609))

(assert (= (and b!4543609 (not res!1894195)) b!4543602))

(assert (= start!451296 b!4543601))

(assert (= (and start!451296 ((_ is Cons!50795) newBucket!178)) b!4543608))

(declare-fun m!5312597 () Bool)

(assert (=> b!4543600 m!5312597))

(declare-fun m!5312599 () Bool)

(assert (=> b!4543612 m!5312599))

(declare-fun m!5312601 () Bool)

(assert (=> b!4543610 m!5312601))

(assert (=> b!4543610 m!5312601))

(declare-fun m!5312603 () Bool)

(assert (=> b!4543610 m!5312603))

(declare-fun m!5312605 () Bool)

(assert (=> b!4543607 m!5312605))

(declare-fun m!5312607 () Bool)

(assert (=> start!451296 m!5312607))

(declare-fun m!5312609 () Bool)

(assert (=> start!451296 m!5312609))

(declare-fun m!5312611 () Bool)

(assert (=> b!4543604 m!5312611))

(declare-fun m!5312613 () Bool)

(assert (=> b!4543603 m!5312613))

(declare-fun m!5312615 () Bool)

(assert (=> b!4543609 m!5312615))

(declare-fun m!5312617 () Bool)

(assert (=> b!4543606 m!5312617))

(declare-fun m!5312619 () Bool)

(assert (=> b!4543611 m!5312619))

(declare-fun m!5312621 () Bool)

(assert (=> b!4543611 m!5312621))

(declare-fun m!5312623 () Bool)

(assert (=> b!4543611 m!5312623))

(declare-fun m!5312625 () Bool)

(assert (=> b!4543611 m!5312625))

(declare-fun m!5312627 () Bool)

(assert (=> b!4543611 m!5312627))

(declare-fun m!5312629 () Bool)

(assert (=> b!4543611 m!5312629))

(declare-fun m!5312631 () Bool)

(assert (=> b!4543611 m!5312631))

(declare-fun m!5312633 () Bool)

(assert (=> b!4543602 m!5312633))

(assert (=> b!4543602 m!5312633))

(declare-fun m!5312635 () Bool)

(assert (=> b!4543602 m!5312635))

(declare-fun m!5312637 () Bool)

(assert (=> b!4543602 m!5312637))

(check-sat tp_is_empty!28141 (not b!4543604) (not b!4543610) (not b!4543601) (not b!4543611) (not b!4543607) tp_is_empty!28143 (not start!451296) (not b!4543602) (not b!4543606) (not b!4543612) (not b!4543609) (not b!4543600) (not b!4543608) (not b!4543603))
(check-sat)
