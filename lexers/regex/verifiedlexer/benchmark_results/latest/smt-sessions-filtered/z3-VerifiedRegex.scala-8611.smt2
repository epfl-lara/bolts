; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!459096 () Bool)

(assert start!459096)

(declare-fun b!4599637 () Bool)

(declare-fun res!1924024 () Bool)

(declare-fun e!2869060 () Bool)

(assert (=> b!4599637 (=> res!1924024 e!2869060)))

(declare-datatypes ((K!12460 0))(
  ( (K!12461 (val!18239 Int)) )
))
(declare-datatypes ((V!12706 0))(
  ( (V!12707 (val!18240 Int)) )
))
(declare-datatypes ((tuple2!51746 0))(
  ( (tuple2!51747 (_1!29167 K!12460) (_2!29167 V!12706)) )
))
(declare-datatypes ((List!51218 0))(
  ( (Nil!51094) (Cons!51094 (h!57062 tuple2!51746) (t!358212 List!51218)) )
))
(declare-fun newBucket!178 () List!51218)

(declare-fun noDuplicateKeys!1324 (List!51218) Bool)

(assert (=> b!4599637 (= res!1924024 (not (noDuplicateKeys!1324 newBucket!178)))))

(declare-fun b!4599638 () Bool)

(declare-datatypes ((Unit!108331 0))(
  ( (Unit!108332) )
))
(declare-fun e!2869056 () Unit!108331)

(declare-fun Unit!108333 () Unit!108331)

(assert (=> b!4599638 (= e!2869056 Unit!108333)))

(declare-datatypes ((Hashable!5723 0))(
  ( (HashableExt!5722 (__x!31426 Int)) )
))
(declare-fun hashF!1107 () Hashable!5723)

(declare-datatypes ((tuple2!51748 0))(
  ( (tuple2!51749 (_1!29168 (_ BitVec 64)) (_2!29168 List!51218)) )
))
(declare-datatypes ((List!51219 0))(
  ( (Nil!51095) (Cons!51095 (h!57063 tuple2!51748) (t!358213 List!51219)) )
))
(declare-datatypes ((ListLongMap!3295 0))(
  ( (ListLongMap!3296 (toList!4663 List!51219)) )
))
(declare-fun lm!1477 () ListLongMap!3295)

(declare-fun key!3287 () K!12460)

(declare-fun lt!1759161 () Unit!108331)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!294 (ListLongMap!3295 K!12460 Hashable!5723) Unit!108331)

(assert (=> b!4599638 (= lt!1759161 (lemmaNotInItsHashBucketThenNotInMap!294 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4599638 false))

(declare-fun b!4599640 () Bool)

(declare-fun e!2869061 () Bool)

(declare-fun e!2869053 () Bool)

(assert (=> b!4599640 (= e!2869061 e!2869053)))

(declare-fun res!1924022 () Bool)

(assert (=> b!4599640 (=> res!1924022 e!2869053)))

(declare-fun lt!1759171 () List!51219)

(declare-fun containsKeyBiggerList!280 (List!51219 K!12460) Bool)

(assert (=> b!4599640 (= res!1924022 (not (containsKeyBiggerList!280 lt!1759171 key!3287)))))

(assert (=> b!4599640 (= lt!1759171 (Cons!51095 (h!57063 (toList!4663 lm!1477)) Nil!51095))))

(declare-fun b!4599641 () Bool)

(declare-fun res!1924027 () Bool)

(declare-fun e!2869055 () Bool)

(assert (=> b!4599641 (=> res!1924027 e!2869055)))

(declare-fun lambda!186406 () Int)

(declare-fun forall!10610 (List!51219 Int) Bool)

(assert (=> b!4599641 (= res!1924027 (not (forall!10610 (toList!4663 lm!1477) lambda!186406)))))

(declare-fun b!4599642 () Bool)

(declare-fun e!2869054 () Unit!108331)

(declare-fun Unit!108334 () Unit!108331)

(assert (=> b!4599642 (= e!2869054 Unit!108334)))

(declare-fun lt!1759172 () Unit!108331)

(declare-fun lt!1759159 () ListLongMap!3295)

(declare-fun lemmaInGenMapThenLongMapContainsHash!398 (ListLongMap!3295 K!12460 Hashable!5723) Unit!108331)

(assert (=> b!4599642 (= lt!1759172 (lemmaInGenMapThenLongMapContainsHash!398 lt!1759159 key!3287 hashF!1107))))

(declare-fun res!1924015 () Bool)

(declare-fun lt!1759160 () (_ BitVec 64))

(declare-fun contains!14049 (ListLongMap!3295 (_ BitVec 64)) Bool)

(assert (=> b!4599642 (= res!1924015 (contains!14049 lt!1759159 lt!1759160))))

(declare-fun e!2869064 () Bool)

(assert (=> b!4599642 (=> (not res!1924015) (not e!2869064))))

(assert (=> b!4599642 e!2869064))

(declare-fun b!4599643 () Bool)

(assert (=> b!4599643 (= e!2869064 false)))

(declare-fun b!4599644 () Bool)

(declare-fun e!2869063 () Bool)

(declare-fun tp!1340497 () Bool)

(assert (=> b!4599644 (= e!2869063 tp!1340497)))

(declare-fun b!4599645 () Bool)

(assert (=> b!4599645 (= e!2869055 true)))

(declare-fun lt!1759167 () Bool)

(assert (=> b!4599645 (= lt!1759167 (noDuplicateKeys!1324 (_2!29168 (h!57063 (toList!4663 lm!1477)))))))

(declare-fun b!4599646 () Bool)

(declare-fun e!2869062 () Bool)

(declare-fun e!2869058 () Bool)

(assert (=> b!4599646 (= e!2869062 e!2869058)))

(declare-fun res!1924023 () Bool)

(assert (=> b!4599646 (=> (not res!1924023) (not e!2869058))))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4599646 (= res!1924023 (= lt!1759160 hash!344))))

(declare-fun hash!3229 (Hashable!5723 K!12460) (_ BitVec 64))

(assert (=> b!4599646 (= lt!1759160 (hash!3229 hashF!1107 key!3287))))

(declare-fun b!4599647 () Bool)

(declare-fun tp_is_empty!28591 () Bool)

(declare-fun tp!1340496 () Bool)

(declare-fun tp_is_empty!28589 () Bool)

(declare-fun e!2869059 () Bool)

(assert (=> b!4599647 (= e!2869059 (and tp_is_empty!28589 tp_is_empty!28591 tp!1340496))))

(declare-fun b!4599648 () Bool)

(declare-fun Unit!108335 () Unit!108331)

(assert (=> b!4599648 (= e!2869054 Unit!108335)))

(declare-fun b!4599649 () Bool)

(declare-fun e!2869066 () Bool)

(assert (=> b!4599649 (= e!2869066 e!2869055)))

(declare-fun res!1924028 () Bool)

(assert (=> b!4599649 (=> res!1924028 e!2869055)))

(declare-fun lt!1759162 () Bool)

(assert (=> b!4599649 (= res!1924028 lt!1759162)))

(declare-fun lt!1759168 () Unit!108331)

(assert (=> b!4599649 (= lt!1759168 e!2869054)))

(declare-fun c!787853 () Bool)

(assert (=> b!4599649 (= c!787853 lt!1759162)))

(declare-datatypes ((ListMap!3925 0))(
  ( (ListMap!3926 (toList!4664 List!51218)) )
))
(declare-fun lt!1759174 () ListMap!3925)

(declare-fun contains!14050 (ListMap!3925 K!12460) Bool)

(assert (=> b!4599649 (= lt!1759162 (contains!14050 lt!1759174 key!3287))))

(declare-fun b!4599650 () Bool)

(assert (=> b!4599650 (= e!2869060 e!2869061)))

(declare-fun res!1924021 () Bool)

(assert (=> b!4599650 (=> res!1924021 e!2869061)))

(declare-fun lt!1759170 () Bool)

(assert (=> b!4599650 (= res!1924021 lt!1759170)))

(declare-fun lt!1759166 () Unit!108331)

(assert (=> b!4599650 (= lt!1759166 e!2869056)))

(declare-fun c!787854 () Bool)

(assert (=> b!4599650 (= c!787854 lt!1759170)))

(declare-fun containsKey!2168 (List!51218 K!12460) Bool)

(assert (=> b!4599650 (= lt!1759170 (not (containsKey!2168 (_2!29168 (h!57063 (toList!4663 lm!1477))) key!3287)))))

(declare-fun b!4599651 () Bool)

(declare-fun e!2869065 () Bool)

(assert (=> b!4599651 (= e!2869053 e!2869065)))

(declare-fun res!1924016 () Bool)

(assert (=> b!4599651 (=> res!1924016 e!2869065)))

(declare-fun lt!1759163 () ListLongMap!3295)

(declare-fun tail!7956 (List!51219) List!51219)

(assert (=> b!4599651 (= res!1924016 (not (= (t!358213 (toList!4663 lm!1477)) (tail!7956 (toList!4663 lt!1759163)))))))

(declare-fun lt!1759158 () tuple2!51748)

(declare-fun +!1752 (ListLongMap!3295 tuple2!51748) ListLongMap!3295)

(assert (=> b!4599651 (= lt!1759163 (+!1752 lm!1477 lt!1759158))))

(declare-fun eq!731 (ListMap!3925 ListMap!3925) Bool)

(declare-fun extractMap!1384 (List!51219) ListMap!3925)

(declare-fun -!500 (ListMap!3925 K!12460) ListMap!3925)

(assert (=> b!4599651 (eq!731 (extractMap!1384 (Cons!51095 lt!1759158 Nil!51095)) (-!500 (extractMap!1384 (Cons!51095 (tuple2!51749 hash!344 (_2!29168 (h!57063 (toList!4663 lm!1477)))) Nil!51095)) key!3287))))

(assert (=> b!4599651 (= lt!1759158 (tuple2!51749 hash!344 newBucket!178))))

(declare-fun lt!1759164 () Unit!108331)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!90 ((_ BitVec 64) List!51218 List!51218 K!12460 Hashable!5723) Unit!108331)

(assert (=> b!4599651 (= lt!1759164 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!90 hash!344 (_2!29168 (h!57063 (toList!4663 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> b!4599651 (contains!14050 (extractMap!1384 lt!1759171) key!3287)))

(declare-fun lt!1759173 () Unit!108331)

(declare-fun lemmaListContainsThenExtractedMapContains!258 (ListLongMap!3295 K!12460 Hashable!5723) Unit!108331)

(assert (=> b!4599651 (= lt!1759173 (lemmaListContainsThenExtractedMapContains!258 (ListLongMap!3296 lt!1759171) key!3287 hashF!1107))))

(declare-fun res!1924019 () Bool)

(assert (=> start!459096 (=> (not res!1924019) (not e!2869062))))

(assert (=> start!459096 (= res!1924019 (forall!10610 (toList!4663 lm!1477) lambda!186406))))

(assert (=> start!459096 e!2869062))

(assert (=> start!459096 true))

(declare-fun inv!66644 (ListLongMap!3295) Bool)

(assert (=> start!459096 (and (inv!66644 lm!1477) e!2869063)))

(assert (=> start!459096 tp_is_empty!28589))

(assert (=> start!459096 e!2869059))

(declare-fun b!4599639 () Bool)

(declare-fun e!2869057 () Bool)

(assert (=> b!4599639 (= e!2869065 e!2869057)))

(declare-fun res!1924017 () Bool)

(assert (=> b!4599639 (=> res!1924017 e!2869057)))

(assert (=> b!4599639 (= res!1924017 (not (= lt!1759163 (+!1752 lt!1759159 lt!1759158))))))

(declare-fun tail!7957 (ListLongMap!3295) ListLongMap!3295)

(assert (=> b!4599639 (= lt!1759159 (tail!7957 lm!1477))))

(declare-fun b!4599652 () Bool)

(declare-fun res!1924025 () Bool)

(assert (=> b!4599652 (=> (not res!1924025) (not e!2869058))))

(declare-fun allKeysSameHash!1180 (List!51218 (_ BitVec 64) Hashable!5723) Bool)

(assert (=> b!4599652 (= res!1924025 (allKeysSameHash!1180 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4599653 () Bool)

(assert (=> b!4599653 (= e!2869058 (not e!2869060))))

(declare-fun res!1924020 () Bool)

(assert (=> b!4599653 (=> res!1924020 e!2869060)))

(declare-fun lt!1759157 () List!51218)

(declare-fun removePairForKey!949 (List!51218 K!12460) List!51218)

(assert (=> b!4599653 (= res!1924020 (not (= newBucket!178 (removePairForKey!949 lt!1759157 key!3287))))))

(declare-fun lt!1759156 () Unit!108331)

(declare-fun lt!1759175 () tuple2!51748)

(declare-fun forallContained!2861 (List!51219 Int tuple2!51748) Unit!108331)

(assert (=> b!4599653 (= lt!1759156 (forallContained!2861 (toList!4663 lm!1477) lambda!186406 lt!1759175))))

(declare-fun contains!14051 (List!51219 tuple2!51748) Bool)

(assert (=> b!4599653 (contains!14051 (toList!4663 lm!1477) lt!1759175)))

(assert (=> b!4599653 (= lt!1759175 (tuple2!51749 hash!344 lt!1759157))))

(declare-fun lt!1759165 () Unit!108331)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!834 (List!51219 (_ BitVec 64) List!51218) Unit!108331)

(assert (=> b!4599653 (= lt!1759165 (lemmaGetValueByKeyImpliesContainsTuple!834 (toList!4663 lm!1477) hash!344 lt!1759157))))

(declare-fun apply!12061 (ListLongMap!3295 (_ BitVec 64)) List!51218)

(assert (=> b!4599653 (= lt!1759157 (apply!12061 lm!1477 hash!344))))

(assert (=> b!4599653 (contains!14049 lm!1477 lt!1759160)))

(declare-fun lt!1759169 () Unit!108331)

(assert (=> b!4599653 (= lt!1759169 (lemmaInGenMapThenLongMapContainsHash!398 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4599654 () Bool)

(declare-fun Unit!108336 () Unit!108331)

(assert (=> b!4599654 (= e!2869056 Unit!108336)))

(declare-fun b!4599655 () Bool)

(declare-fun res!1924018 () Bool)

(assert (=> b!4599655 (=> (not res!1924018) (not e!2869062))))

(assert (=> b!4599655 (= res!1924018 (contains!14050 (extractMap!1384 (toList!4663 lm!1477)) key!3287))))

(declare-fun b!4599656 () Bool)

(assert (=> b!4599656 (= e!2869057 e!2869066)))

(declare-fun res!1924013 () Bool)

(assert (=> b!4599656 (=> res!1924013 e!2869066)))

(assert (=> b!4599656 (= res!1924013 (not (= lt!1759174 (extractMap!1384 (t!358213 (toList!4663 lm!1477))))))))

(assert (=> b!4599656 (= lt!1759174 (extractMap!1384 (toList!4663 lt!1759159)))))

(declare-fun b!4599657 () Bool)

(declare-fun res!1924026 () Bool)

(assert (=> b!4599657 (=> res!1924026 e!2869060)))

(get-info :version)

(assert (=> b!4599657 (= res!1924026 (or ((_ is Nil!51095) (toList!4663 lm!1477)) (not (= (_1!29168 (h!57063 (toList!4663 lm!1477))) hash!344))))))

(declare-fun b!4599658 () Bool)

(declare-fun res!1924014 () Bool)

(assert (=> b!4599658 (=> (not res!1924014) (not e!2869062))))

(declare-fun allKeysSameHashInMap!1435 (ListLongMap!3295 Hashable!5723) Bool)

(assert (=> b!4599658 (= res!1924014 (allKeysSameHashInMap!1435 lm!1477 hashF!1107))))

(assert (= (and start!459096 res!1924019) b!4599658))

(assert (= (and b!4599658 res!1924014) b!4599655))

(assert (= (and b!4599655 res!1924018) b!4599646))

(assert (= (and b!4599646 res!1924023) b!4599652))

(assert (= (and b!4599652 res!1924025) b!4599653))

(assert (= (and b!4599653 (not res!1924020)) b!4599637))

(assert (= (and b!4599637 (not res!1924024)) b!4599657))

(assert (= (and b!4599657 (not res!1924026)) b!4599650))

(assert (= (and b!4599650 c!787854) b!4599638))

(assert (= (and b!4599650 (not c!787854)) b!4599654))

(assert (= (and b!4599650 (not res!1924021)) b!4599640))

(assert (= (and b!4599640 (not res!1924022)) b!4599651))

(assert (= (and b!4599651 (not res!1924016)) b!4599639))

(assert (= (and b!4599639 (not res!1924017)) b!4599656))

(assert (= (and b!4599656 (not res!1924013)) b!4599649))

(assert (= (and b!4599649 c!787853) b!4599642))

(assert (= (and b!4599649 (not c!787853)) b!4599648))

(assert (= (and b!4599642 res!1924015) b!4599643))

(assert (= (and b!4599649 (not res!1924028)) b!4599641))

(assert (= (and b!4599641 (not res!1924027)) b!4599645))

(assert (= start!459096 b!4599644))

(assert (= (and start!459096 ((_ is Cons!51094) newBucket!178)) b!4599647))

(declare-fun m!5426559 () Bool)

(assert (=> b!4599641 m!5426559))

(declare-fun m!5426561 () Bool)

(assert (=> b!4599646 m!5426561))

(declare-fun m!5426563 () Bool)

(assert (=> b!4599653 m!5426563))

(declare-fun m!5426565 () Bool)

(assert (=> b!4599653 m!5426565))

(declare-fun m!5426567 () Bool)

(assert (=> b!4599653 m!5426567))

(declare-fun m!5426569 () Bool)

(assert (=> b!4599653 m!5426569))

(declare-fun m!5426571 () Bool)

(assert (=> b!4599653 m!5426571))

(declare-fun m!5426573 () Bool)

(assert (=> b!4599653 m!5426573))

(declare-fun m!5426575 () Bool)

(assert (=> b!4599653 m!5426575))

(declare-fun m!5426577 () Bool)

(assert (=> b!4599651 m!5426577))

(declare-fun m!5426579 () Bool)

(assert (=> b!4599651 m!5426579))

(declare-fun m!5426581 () Bool)

(assert (=> b!4599651 m!5426581))

(assert (=> b!4599651 m!5426579))

(declare-fun m!5426583 () Bool)

(assert (=> b!4599651 m!5426583))

(declare-fun m!5426585 () Bool)

(assert (=> b!4599651 m!5426585))

(declare-fun m!5426587 () Bool)

(assert (=> b!4599651 m!5426587))

(declare-fun m!5426589 () Bool)

(assert (=> b!4599651 m!5426589))

(declare-fun m!5426591 () Bool)

(assert (=> b!4599651 m!5426591))

(declare-fun m!5426593 () Bool)

(assert (=> b!4599651 m!5426593))

(assert (=> b!4599651 m!5426585))

(assert (=> b!4599651 m!5426577))

(declare-fun m!5426595 () Bool)

(assert (=> b!4599651 m!5426595))

(assert (=> b!4599651 m!5426581))

(assert (=> start!459096 m!5426559))

(declare-fun m!5426597 () Bool)

(assert (=> start!459096 m!5426597))

(declare-fun m!5426599 () Bool)

(assert (=> b!4599652 m!5426599))

(declare-fun m!5426601 () Bool)

(assert (=> b!4599650 m!5426601))

(declare-fun m!5426603 () Bool)

(assert (=> b!4599637 m!5426603))

(declare-fun m!5426605 () Bool)

(assert (=> b!4599642 m!5426605))

(declare-fun m!5426607 () Bool)

(assert (=> b!4599642 m!5426607))

(declare-fun m!5426609 () Bool)

(assert (=> b!4599640 m!5426609))

(declare-fun m!5426611 () Bool)

(assert (=> b!4599645 m!5426611))

(declare-fun m!5426613 () Bool)

(assert (=> b!4599638 m!5426613))

(declare-fun m!5426615 () Bool)

(assert (=> b!4599658 m!5426615))

(declare-fun m!5426617 () Bool)

(assert (=> b!4599655 m!5426617))

(assert (=> b!4599655 m!5426617))

(declare-fun m!5426619 () Bool)

(assert (=> b!4599655 m!5426619))

(declare-fun m!5426621 () Bool)

(assert (=> b!4599656 m!5426621))

(declare-fun m!5426623 () Bool)

(assert (=> b!4599656 m!5426623))

(declare-fun m!5426625 () Bool)

(assert (=> b!4599639 m!5426625))

(declare-fun m!5426627 () Bool)

(assert (=> b!4599639 m!5426627))

(declare-fun m!5426629 () Bool)

(assert (=> b!4599649 m!5426629))

(check-sat (not b!4599651) (not b!4599652) (not b!4599642) tp_is_empty!28591 (not b!4599644) (not b!4599637) (not b!4599646) (not b!4599641) (not b!4599640) (not b!4599653) (not b!4599639) (not start!459096) (not b!4599645) (not b!4599649) (not b!4599656) (not b!4599658) (not b!4599655) (not b!4599647) (not b!4599650) (not b!4599638) tp_is_empty!28589)
(check-sat)
