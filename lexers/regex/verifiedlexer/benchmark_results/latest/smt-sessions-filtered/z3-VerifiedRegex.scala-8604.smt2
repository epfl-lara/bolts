; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!458420 () Bool)

(assert start!458420)

(declare-fun b!4595824 () Bool)

(declare-fun e!2866613 () Bool)

(declare-fun e!2866616 () Bool)

(assert (=> b!4595824 (= e!2866613 e!2866616)))

(declare-fun res!1922045 () Bool)

(assert (=> b!4595824 (=> res!1922045 e!2866616)))

(declare-datatypes ((K!12425 0))(
  ( (K!12426 (val!18211 Int)) )
))
(declare-datatypes ((V!12671 0))(
  ( (V!12672 (val!18212 Int)) )
))
(declare-datatypes ((tuple2!51690 0))(
  ( (tuple2!51691 (_1!29139 K!12425) (_2!29139 V!12671)) )
))
(declare-datatypes ((List!51182 0))(
  ( (Nil!51058) (Cons!51058 (h!57018 tuple2!51690) (t!358176 List!51182)) )
))
(declare-datatypes ((tuple2!51692 0))(
  ( (tuple2!51693 (_1!29140 (_ BitVec 64)) (_2!29140 List!51182)) )
))
(declare-datatypes ((List!51183 0))(
  ( (Nil!51059) (Cons!51059 (h!57019 tuple2!51692) (t!358177 List!51183)) )
))
(declare-fun lt!1756215 () List!51183)

(declare-fun key!3287 () K!12425)

(declare-fun containsKeyBiggerList!266 (List!51183 K!12425) Bool)

(assert (=> b!4595824 (= res!1922045 (not (containsKeyBiggerList!266 lt!1756215 key!3287)))))

(declare-datatypes ((ListLongMap!3267 0))(
  ( (ListLongMap!3268 (toList!4635 List!51183)) )
))
(declare-fun lm!1477 () ListLongMap!3267)

(assert (=> b!4595824 (= lt!1756215 (Cons!51059 (h!57019 (toList!4635 lm!1477)) Nil!51059))))

(declare-fun b!4595825 () Bool)

(declare-fun res!1922054 () Bool)

(declare-fun e!2866611 () Bool)

(assert (=> b!4595825 (=> res!1922054 e!2866611)))

(declare-fun hash!344 () (_ BitVec 64))

(get-info :version)

(assert (=> b!4595825 (= res!1922054 (or ((_ is Nil!51059) (toList!4635 lm!1477)) (not (= (_1!29140 (h!57019 (toList!4635 lm!1477))) hash!344))))))

(declare-fun b!4595826 () Bool)

(assert (=> b!4595826 (= e!2866611 e!2866613)))

(declare-fun res!1922046 () Bool)

(assert (=> b!4595826 (=> res!1922046 e!2866613)))

(declare-fun lt!1756224 () Bool)

(assert (=> b!4595826 (= res!1922046 lt!1756224)))

(declare-datatypes ((Unit!107831 0))(
  ( (Unit!107832) )
))
(declare-fun lt!1756223 () Unit!107831)

(declare-fun e!2866610 () Unit!107831)

(assert (=> b!4595826 (= lt!1756223 e!2866610)))

(declare-fun c!787056 () Bool)

(assert (=> b!4595826 (= c!787056 lt!1756224)))

(declare-fun containsKey!2138 (List!51182 K!12425) Bool)

(assert (=> b!4595826 (= lt!1756224 (not (containsKey!2138 (_2!29140 (h!57019 (toList!4635 lm!1477))) key!3287)))))

(declare-fun b!4595827 () Bool)

(declare-fun res!1922044 () Bool)

(declare-fun e!2866608 () Bool)

(assert (=> b!4595827 (=> res!1922044 e!2866608)))

(declare-fun newBucket!178 () List!51182)

(declare-fun removePairForKey!935 (List!51182 K!12425) List!51182)

(assert (=> b!4595827 (= res!1922044 (not (= (removePairForKey!935 (_2!29140 (h!57019 (toList!4635 lm!1477))) key!3287) newBucket!178)))))

(declare-fun b!4595828 () Bool)

(declare-fun Unit!107833 () Unit!107831)

(assert (=> b!4595828 (= e!2866610 Unit!107833)))

(declare-datatypes ((Hashable!5709 0))(
  ( (HashableExt!5708 (__x!31412 Int)) )
))
(declare-fun hashF!1107 () Hashable!5709)

(declare-fun lt!1756220 () Unit!107831)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!280 (ListLongMap!3267 K!12425 Hashable!5709) Unit!107831)

(assert (=> b!4595828 (= lt!1756220 (lemmaNotInItsHashBucketThenNotInMap!280 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4595828 false))

(declare-fun res!1922042 () Bool)

(declare-fun e!2866614 () Bool)

(assert (=> start!458420 (=> (not res!1922042) (not e!2866614))))

(declare-fun lambda!185750 () Int)

(declare-fun forall!10584 (List!51183 Int) Bool)

(assert (=> start!458420 (= res!1922042 (forall!10584 (toList!4635 lm!1477) lambda!185750))))

(assert (=> start!458420 e!2866614))

(assert (=> start!458420 true))

(declare-fun e!2866612 () Bool)

(declare-fun inv!66609 (ListLongMap!3267) Bool)

(assert (=> start!458420 (and (inv!66609 lm!1477) e!2866612)))

(declare-fun tp_is_empty!28533 () Bool)

(assert (=> start!458420 tp_is_empty!28533))

(declare-fun e!2866615 () Bool)

(assert (=> start!458420 e!2866615))

(declare-fun b!4595829 () Bool)

(declare-fun Unit!107834 () Unit!107831)

(assert (=> b!4595829 (= e!2866610 Unit!107834)))

(declare-fun b!4595830 () Bool)

(declare-fun res!1922049 () Bool)

(declare-fun e!2866609 () Bool)

(assert (=> b!4595830 (=> (not res!1922049) (not e!2866609))))

(declare-fun allKeysSameHash!1166 (List!51182 (_ BitVec 64) Hashable!5709) Bool)

(assert (=> b!4595830 (= res!1922049 (allKeysSameHash!1166 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4595831 () Bool)

(declare-fun tp!1340324 () Bool)

(assert (=> b!4595831 (= e!2866612 tp!1340324)))

(declare-fun b!4595832 () Bool)

(assert (=> b!4595832 (= e!2866609 (not e!2866611))))

(declare-fun res!1922048 () Bool)

(assert (=> b!4595832 (=> res!1922048 e!2866611)))

(declare-fun lt!1756221 () List!51182)

(assert (=> b!4595832 (= res!1922048 (not (= newBucket!178 (removePairForKey!935 lt!1756221 key!3287))))))

(declare-fun lt!1756216 () tuple2!51692)

(declare-fun lt!1756225 () Unit!107831)

(declare-fun forallContained!2839 (List!51183 Int tuple2!51692) Unit!107831)

(assert (=> b!4595832 (= lt!1756225 (forallContained!2839 (toList!4635 lm!1477) lambda!185750 lt!1756216))))

(declare-fun contains!13995 (List!51183 tuple2!51692) Bool)

(assert (=> b!4595832 (contains!13995 (toList!4635 lm!1477) lt!1756216)))

(assert (=> b!4595832 (= lt!1756216 (tuple2!51693 hash!344 lt!1756221))))

(declare-fun lt!1756222 () Unit!107831)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!820 (List!51183 (_ BitVec 64) List!51182) Unit!107831)

(assert (=> b!4595832 (= lt!1756222 (lemmaGetValueByKeyImpliesContainsTuple!820 (toList!4635 lm!1477) hash!344 lt!1756221))))

(declare-fun apply!12047 (ListLongMap!3267 (_ BitVec 64)) List!51182)

(assert (=> b!4595832 (= lt!1756221 (apply!12047 lm!1477 hash!344))))

(declare-fun lt!1756219 () (_ BitVec 64))

(declare-fun contains!13996 (ListLongMap!3267 (_ BitVec 64)) Bool)

(assert (=> b!4595832 (contains!13996 lm!1477 lt!1756219)))

(declare-fun lt!1756218 () Unit!107831)

(declare-fun lemmaInGenMapThenLongMapContainsHash!384 (ListLongMap!3267 K!12425 Hashable!5709) Unit!107831)

(assert (=> b!4595832 (= lt!1756218 (lemmaInGenMapThenLongMapContainsHash!384 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4595833 () Bool)

(assert (=> b!4595833 (= e!2866616 e!2866608)))

(declare-fun res!1922043 () Bool)

(assert (=> b!4595833 (=> res!1922043 e!2866608)))

(declare-fun noDuplicateKeys!1310 (List!51182) Bool)

(assert (=> b!4595833 (= res!1922043 (not (noDuplicateKeys!1310 (_2!29140 (h!57019 (toList!4635 lm!1477))))))))

(declare-datatypes ((ListMap!3897 0))(
  ( (ListMap!3898 (toList!4636 List!51182)) )
))
(declare-fun contains!13997 (ListMap!3897 K!12425) Bool)

(declare-fun extractMap!1370 (List!51183) ListMap!3897)

(assert (=> b!4595833 (contains!13997 (extractMap!1370 lt!1756215) key!3287)))

(declare-fun lt!1756217 () Unit!107831)

(declare-fun lemmaListContainsThenExtractedMapContains!244 (ListLongMap!3267 K!12425 Hashable!5709) Unit!107831)

(assert (=> b!4595833 (= lt!1756217 (lemmaListContainsThenExtractedMapContains!244 (ListLongMap!3268 lt!1756215) key!3287 hashF!1107))))

(declare-fun b!4595834 () Bool)

(declare-fun res!1922051 () Bool)

(assert (=> b!4595834 (=> res!1922051 e!2866608)))

(assert (=> b!4595834 (= res!1922051 (not (allKeysSameHash!1166 (_2!29140 (h!57019 (toList!4635 lm!1477))) hash!344 hashF!1107)))))

(declare-fun b!4595835 () Bool)

(declare-fun res!1922052 () Bool)

(assert (=> b!4595835 (=> res!1922052 e!2866611)))

(assert (=> b!4595835 (= res!1922052 (not (noDuplicateKeys!1310 newBucket!178)))))

(declare-fun b!4595836 () Bool)

(declare-fun res!1922053 () Bool)

(assert (=> b!4595836 (=> (not res!1922053) (not e!2866614))))

(assert (=> b!4595836 (= res!1922053 (contains!13997 (extractMap!1370 (toList!4635 lm!1477)) key!3287))))

(declare-fun tp!1340325 () Bool)

(declare-fun b!4595837 () Bool)

(declare-fun tp_is_empty!28535 () Bool)

(assert (=> b!4595837 (= e!2866615 (and tp_is_empty!28533 tp_is_empty!28535 tp!1340325))))

(declare-fun b!4595838 () Bool)

(assert (=> b!4595838 (= e!2866614 e!2866609)))

(declare-fun res!1922050 () Bool)

(assert (=> b!4595838 (=> (not res!1922050) (not e!2866609))))

(assert (=> b!4595838 (= res!1922050 (= lt!1756219 hash!344))))

(declare-fun hash!3195 (Hashable!5709 K!12425) (_ BitVec 64))

(assert (=> b!4595838 (= lt!1756219 (hash!3195 hashF!1107 key!3287))))

(declare-fun b!4595839 () Bool)

(declare-fun res!1922047 () Bool)

(assert (=> b!4595839 (=> (not res!1922047) (not e!2866614))))

(declare-fun allKeysSameHashInMap!1421 (ListLongMap!3267 Hashable!5709) Bool)

(assert (=> b!4595839 (= res!1922047 (allKeysSameHashInMap!1421 lm!1477 hashF!1107))))

(declare-fun b!4595840 () Bool)

(assert (=> b!4595840 (= e!2866608 (contains!13997 (extractMap!1370 (Cons!51059 (tuple2!51693 hash!344 (_2!29140 (h!57019 (toList!4635 lm!1477)))) Nil!51059)) key!3287))))

(assert (= (and start!458420 res!1922042) b!4595839))

(assert (= (and b!4595839 res!1922047) b!4595836))

(assert (= (and b!4595836 res!1922053) b!4595838))

(assert (= (and b!4595838 res!1922050) b!4595830))

(assert (= (and b!4595830 res!1922049) b!4595832))

(assert (= (and b!4595832 (not res!1922048)) b!4595835))

(assert (= (and b!4595835 (not res!1922052)) b!4595825))

(assert (= (and b!4595825 (not res!1922054)) b!4595826))

(assert (= (and b!4595826 c!787056) b!4595828))

(assert (= (and b!4595826 (not c!787056)) b!4595829))

(assert (= (and b!4595826 (not res!1922046)) b!4595824))

(assert (= (and b!4595824 (not res!1922045)) b!4595833))

(assert (= (and b!4595833 (not res!1922043)) b!4595827))

(assert (= (and b!4595827 (not res!1922044)) b!4595834))

(assert (= (and b!4595834 (not res!1922051)) b!4595840))

(assert (= start!458420 b!4595831))

(assert (= (and start!458420 ((_ is Cons!51058) newBucket!178)) b!4595837))

(declare-fun m!5420391 () Bool)

(assert (=> b!4595838 m!5420391))

(declare-fun m!5420393 () Bool)

(assert (=> b!4595827 m!5420393))

(declare-fun m!5420395 () Bool)

(assert (=> b!4595830 m!5420395))

(declare-fun m!5420397 () Bool)

(assert (=> b!4595834 m!5420397))

(declare-fun m!5420399 () Bool)

(assert (=> b!4595835 m!5420399))

(declare-fun m!5420401 () Bool)

(assert (=> b!4595833 m!5420401))

(declare-fun m!5420403 () Bool)

(assert (=> b!4595833 m!5420403))

(assert (=> b!4595833 m!5420403))

(declare-fun m!5420405 () Bool)

(assert (=> b!4595833 m!5420405))

(declare-fun m!5420407 () Bool)

(assert (=> b!4595833 m!5420407))

(declare-fun m!5420409 () Bool)

(assert (=> b!4595839 m!5420409))

(declare-fun m!5420411 () Bool)

(assert (=> b!4595836 m!5420411))

(assert (=> b!4595836 m!5420411))

(declare-fun m!5420413 () Bool)

(assert (=> b!4595836 m!5420413))

(declare-fun m!5420415 () Bool)

(assert (=> b!4595828 m!5420415))

(declare-fun m!5420417 () Bool)

(assert (=> b!4595840 m!5420417))

(assert (=> b!4595840 m!5420417))

(declare-fun m!5420419 () Bool)

(assert (=> b!4595840 m!5420419))

(declare-fun m!5420421 () Bool)

(assert (=> b!4595824 m!5420421))

(declare-fun m!5420423 () Bool)

(assert (=> b!4595826 m!5420423))

(declare-fun m!5420425 () Bool)

(assert (=> b!4595832 m!5420425))

(declare-fun m!5420427 () Bool)

(assert (=> b!4595832 m!5420427))

(declare-fun m!5420429 () Bool)

(assert (=> b!4595832 m!5420429))

(declare-fun m!5420431 () Bool)

(assert (=> b!4595832 m!5420431))

(declare-fun m!5420433 () Bool)

(assert (=> b!4595832 m!5420433))

(declare-fun m!5420435 () Bool)

(assert (=> b!4595832 m!5420435))

(declare-fun m!5420437 () Bool)

(assert (=> b!4595832 m!5420437))

(declare-fun m!5420439 () Bool)

(assert (=> start!458420 m!5420439))

(declare-fun m!5420441 () Bool)

(assert (=> start!458420 m!5420441))

(check-sat (not b!4595836) (not b!4595839) (not b!4595826) (not b!4595837) (not b!4595828) (not start!458420) (not b!4595840) tp_is_empty!28533 (not b!4595830) (not b!4595831) (not b!4595832) (not b!4595834) (not b!4595838) (not b!4595835) (not b!4595824) (not b!4595833) tp_is_empty!28535 (not b!4595827))
(check-sat)
