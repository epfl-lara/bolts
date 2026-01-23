; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!442850 () Bool)

(assert start!442850)

(declare-fun b!4492145 () Bool)

(declare-fun res!1866836 () Bool)

(declare-fun e!2798075 () Bool)

(assert (=> b!4492145 (=> res!1866836 e!2798075)))

(declare-datatypes ((K!11913 0))(
  ( (K!11914 (val!17801 Int)) )
))
(declare-datatypes ((V!12159 0))(
  ( (V!12160 (val!17802 Int)) )
))
(declare-datatypes ((tuple2!50870 0))(
  ( (tuple2!50871 (_1!28729 K!11913) (_2!28729 V!12159)) )
))
(declare-datatypes ((List!50624 0))(
  ( (Nil!50500) (Cons!50500 (h!56309 tuple2!50870) (t!357582 List!50624)) )
))
(declare-datatypes ((tuple2!50872 0))(
  ( (tuple2!50873 (_1!28730 (_ BitVec 64)) (_2!28730 List!50624)) )
))
(declare-datatypes ((List!50625 0))(
  ( (Nil!50501) (Cons!50501 (h!56310 tuple2!50872) (t!357583 List!50625)) )
))
(declare-datatypes ((ListLongMap!2857 0))(
  ( (ListLongMap!2858 (toList!4225 List!50625)) )
))
(declare-fun lt!1675441 () ListLongMap!2857)

(declare-fun lt!1675450 () List!50624)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun apply!11846 (ListLongMap!2857 (_ BitVec 64)) List!50624)

(assert (=> b!4492145 (= res!1866836 (not (= (apply!11846 lt!1675441 hash!344) lt!1675450)))))

(declare-fun b!4492146 () Bool)

(declare-datatypes ((Unit!90924 0))(
  ( (Unit!90925) )
))
(declare-fun e!2798066 () Unit!90924)

(declare-fun Unit!90926 () Unit!90924)

(assert (=> b!4492146 (= e!2798066 Unit!90926)))

(declare-datatypes ((Hashable!5504 0))(
  ( (HashableExt!5503 (__x!31207 Int)) )
))
(declare-fun hashF!1107 () Hashable!5504)

(declare-fun lt!1675448 () Unit!90924)

(declare-fun lm!1477 () ListLongMap!2857)

(declare-fun key!3287 () K!11913)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!97 (ListLongMap!2857 K!11913 Hashable!5504) Unit!90924)

(assert (=> b!4492146 (= lt!1675448 (lemmaNotInItsHashBucketThenNotInMap!97 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4492146 false))

(declare-fun b!4492147 () Bool)

(declare-fun res!1866834 () Bool)

(declare-fun e!2798072 () Bool)

(assert (=> b!4492147 (=> res!1866834 e!2798072)))

(assert (=> b!4492147 (= res!1866834 (or (is-Nil!50501 (toList!4225 lm!1477)) (= (_1!28730 (h!56310 (toList!4225 lm!1477))) hash!344)))))

(declare-fun b!4492148 () Bool)

(declare-fun e!2798074 () Bool)

(declare-fun e!2798067 () Bool)

(assert (=> b!4492148 (= e!2798074 e!2798067)))

(declare-fun res!1866828 () Bool)

(assert (=> b!4492148 (=> (not res!1866828) (not e!2798067))))

(declare-fun lt!1675449 () (_ BitVec 64))

(assert (=> b!4492148 (= res!1866828 (= lt!1675449 hash!344))))

(declare-fun hash!2640 (Hashable!5504 K!11913) (_ BitVec 64))

(assert (=> b!4492148 (= lt!1675449 (hash!2640 hashF!1107 key!3287))))

(declare-fun b!4492149 () Bool)

(declare-fun res!1866826 () Bool)

(assert (=> b!4492149 (=> (not res!1866826) (not e!2798074))))

(declare-datatypes ((ListMap!3487 0))(
  ( (ListMap!3488 (toList!4226 List!50624)) )
))
(declare-fun contains!13146 (ListMap!3487 K!11913) Bool)

(declare-fun extractMap!1165 (List!50625) ListMap!3487)

(assert (=> b!4492149 (= res!1866826 (contains!13146 (extractMap!1165 (toList!4225 lm!1477)) key!3287))))

(declare-fun b!4492150 () Bool)

(declare-fun e!2798073 () Bool)

(declare-fun lambda!167446 () Int)

(declare-fun forall!10140 (List!50625 Int) Bool)

(assert (=> b!4492150 (= e!2798073 (forall!10140 (toList!4225 lm!1477) lambda!167446))))

(declare-fun lt!1675451 () ListMap!3487)

(declare-fun +!1447 (ListLongMap!2857 tuple2!50872) ListLongMap!2857)

(declare-fun head!9317 (ListLongMap!2857) tuple2!50872)

(assert (=> b!4492150 (= lt!1675451 (extractMap!1165 (toList!4225 (+!1447 lt!1675441 (head!9317 lm!1477)))))))

(declare-fun newBucket!178 () List!50624)

(declare-fun lt!1675440 () ListMap!3487)

(declare-fun eq!566 (ListMap!3487 ListMap!3487) Bool)

(declare-fun -!335 (ListMap!3487 K!11913) ListMap!3487)

(assert (=> b!4492150 (eq!566 (extractMap!1165 (toList!4225 (+!1447 lt!1675441 (tuple2!50873 hash!344 newBucket!178)))) (-!335 lt!1675440 key!3287))))

(declare-fun lt!1675447 () Unit!90924)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!94 (ListLongMap!2857 (_ BitVec 64) List!50624 K!11913 Hashable!5504) Unit!90924)

(assert (=> b!4492150 (= lt!1675447 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!94 lt!1675441 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4492151 () Bool)

(assert (=> b!4492151 (= e!2798067 (not e!2798072))))

(declare-fun res!1866829 () Bool)

(assert (=> b!4492151 (=> res!1866829 e!2798072)))

(declare-fun removePairForKey!736 (List!50624 K!11913) List!50624)

(assert (=> b!4492151 (= res!1866829 (not (= newBucket!178 (removePairForKey!736 lt!1675450 key!3287))))))

(declare-fun lt!1675446 () tuple2!50872)

(declare-fun lt!1675442 () Unit!90924)

(declare-fun forallContained!2396 (List!50625 Int tuple2!50872) Unit!90924)

(assert (=> b!4492151 (= lt!1675442 (forallContained!2396 (toList!4225 lm!1477) lambda!167446 lt!1675446))))

(declare-fun contains!13147 (List!50625 tuple2!50872) Bool)

(assert (=> b!4492151 (contains!13147 (toList!4225 lm!1477) lt!1675446)))

(assert (=> b!4492151 (= lt!1675446 (tuple2!50873 hash!344 lt!1675450))))

(declare-fun lt!1675443 () Unit!90924)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!621 (List!50625 (_ BitVec 64) List!50624) Unit!90924)

(assert (=> b!4492151 (= lt!1675443 (lemmaGetValueByKeyImpliesContainsTuple!621 (toList!4225 lm!1477) hash!344 lt!1675450))))

(assert (=> b!4492151 (= lt!1675450 (apply!11846 lm!1477 hash!344))))

(declare-fun contains!13148 (ListLongMap!2857 (_ BitVec 64)) Bool)

(assert (=> b!4492151 (contains!13148 lm!1477 lt!1675449)))

(declare-fun lt!1675437 () Unit!90924)

(declare-fun lemmaInGenMapThenLongMapContainsHash!183 (ListLongMap!2857 K!11913 Hashable!5504) Unit!90924)

(assert (=> b!4492151 (= lt!1675437 (lemmaInGenMapThenLongMapContainsHash!183 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4492152 () Bool)

(declare-fun e!2798068 () Bool)

(assert (=> b!4492152 (= e!2798068 e!2798073)))

(declare-fun res!1866827 () Bool)

(assert (=> b!4492152 (=> res!1866827 e!2798073)))

(assert (=> b!4492152 (= res!1866827 (not (contains!13146 (extractMap!1165 (t!357583 (toList!4225 lm!1477))) key!3287)))))

(assert (=> b!4492152 (contains!13146 lt!1675440 key!3287)))

(assert (=> b!4492152 (= lt!1675440 (extractMap!1165 (toList!4225 lt!1675441)))))

(declare-fun lt!1675438 () Unit!90924)

(declare-fun lemmaListContainsThenExtractedMapContains!79 (ListLongMap!2857 K!11913 Hashable!5504) Unit!90924)

(assert (=> b!4492152 (= lt!1675438 (lemmaListContainsThenExtractedMapContains!79 lt!1675441 key!3287 hashF!1107))))

(declare-fun b!4492153 () Bool)

(declare-fun Unit!90927 () Unit!90924)

(assert (=> b!4492153 (= e!2798066 Unit!90927)))

(declare-fun b!4492154 () Bool)

(declare-fun e!2798069 () Bool)

(assert (=> b!4492154 (= e!2798075 e!2798069)))

(declare-fun res!1866825 () Bool)

(assert (=> b!4492154 (=> res!1866825 e!2798069)))

(declare-fun lt!1675439 () Bool)

(assert (=> b!4492154 (= res!1866825 lt!1675439)))

(declare-fun lt!1675444 () Unit!90924)

(assert (=> b!4492154 (= lt!1675444 e!2798066)))

(declare-fun c!765258 () Bool)

(assert (=> b!4492154 (= c!765258 lt!1675439)))

(declare-fun containsKey!1641 (List!50624 K!11913) Bool)

(assert (=> b!4492154 (= lt!1675439 (not (containsKey!1641 lt!1675450 key!3287)))))

(declare-fun b!4492155 () Bool)

(declare-fun res!1866832 () Bool)

(assert (=> b!4492155 (=> res!1866832 e!2798075)))

(assert (=> b!4492155 (= res!1866832 (not (contains!13147 (t!357583 (toList!4225 lm!1477)) lt!1675446)))))

(declare-fun b!4492157 () Bool)

(declare-fun res!1866838 () Bool)

(assert (=> b!4492157 (=> (not res!1866838) (not e!2798074))))

(declare-fun allKeysSameHashInMap!1216 (ListLongMap!2857 Hashable!5504) Bool)

(assert (=> b!4492157 (= res!1866838 (allKeysSameHashInMap!1216 lm!1477 hashF!1107))))

(declare-fun b!4492158 () Bool)

(declare-fun res!1866835 () Bool)

(assert (=> b!4492158 (=> res!1866835 e!2798072)))

(declare-fun noDuplicateKeys!1109 (List!50624) Bool)

(assert (=> b!4492158 (= res!1866835 (not (noDuplicateKeys!1109 newBucket!178)))))

(declare-fun b!4492159 () Bool)

(declare-fun res!1866830 () Bool)

(assert (=> b!4492159 (=> (not res!1866830) (not e!2798067))))

(declare-fun allKeysSameHash!963 (List!50624 (_ BitVec 64) Hashable!5504) Bool)

(assert (=> b!4492159 (= res!1866830 (allKeysSameHash!963 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4492160 () Bool)

(assert (=> b!4492160 (= e!2798072 e!2798075)))

(declare-fun res!1866833 () Bool)

(assert (=> b!4492160 (=> res!1866833 e!2798075)))

(assert (=> b!4492160 (= res!1866833 (not (contains!13148 lt!1675441 hash!344)))))

(declare-fun tail!7639 (ListLongMap!2857) ListLongMap!2857)

(assert (=> b!4492160 (= lt!1675441 (tail!7639 lm!1477))))

(declare-fun b!4492161 () Bool)

(declare-fun e!2798070 () Bool)

(declare-fun tp!1337256 () Bool)

(assert (=> b!4492161 (= e!2798070 tp!1337256)))

(declare-fun e!2798071 () Bool)

(declare-fun tp_is_empty!27715 () Bool)

(declare-fun tp!1337257 () Bool)

(declare-fun tp_is_empty!27713 () Bool)

(declare-fun b!4492162 () Bool)

(assert (=> b!4492162 (= e!2798071 (and tp_is_empty!27713 tp_is_empty!27715 tp!1337257))))

(declare-fun b!4492156 () Bool)

(assert (=> b!4492156 (= e!2798069 e!2798068)))

(declare-fun res!1866831 () Bool)

(assert (=> b!4492156 (=> res!1866831 e!2798068)))

(declare-fun containsKeyBiggerList!89 (List!50625 K!11913) Bool)

(assert (=> b!4492156 (= res!1866831 (not (containsKeyBiggerList!89 (t!357583 (toList!4225 lm!1477)) key!3287)))))

(assert (=> b!4492156 (containsKeyBiggerList!89 (toList!4225 lt!1675441) key!3287)))

(declare-fun lt!1675445 () Unit!90924)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!25 (ListLongMap!2857 K!11913 Hashable!5504) Unit!90924)

(assert (=> b!4492156 (= lt!1675445 (lemmaInLongMapThenContainsKeyBiggerList!25 lt!1675441 key!3287 hashF!1107))))

(declare-fun res!1866837 () Bool)

(assert (=> start!442850 (=> (not res!1866837) (not e!2798074))))

(assert (=> start!442850 (= res!1866837 (forall!10140 (toList!4225 lm!1477) lambda!167446))))

(assert (=> start!442850 e!2798074))

(assert (=> start!442850 true))

(declare-fun inv!66098 (ListLongMap!2857) Bool)

(assert (=> start!442850 (and (inv!66098 lm!1477) e!2798070)))

(assert (=> start!442850 tp_is_empty!27713))

(assert (=> start!442850 e!2798071))

(assert (= (and start!442850 res!1866837) b!4492157))

(assert (= (and b!4492157 res!1866838) b!4492149))

(assert (= (and b!4492149 res!1866826) b!4492148))

(assert (= (and b!4492148 res!1866828) b!4492159))

(assert (= (and b!4492159 res!1866830) b!4492151))

(assert (= (and b!4492151 (not res!1866829)) b!4492158))

(assert (= (and b!4492158 (not res!1866835)) b!4492147))

(assert (= (and b!4492147 (not res!1866834)) b!4492160))

(assert (= (and b!4492160 (not res!1866833)) b!4492145))

(assert (= (and b!4492145 (not res!1866836)) b!4492155))

(assert (= (and b!4492155 (not res!1866832)) b!4492154))

(assert (= (and b!4492154 c!765258) b!4492146))

(assert (= (and b!4492154 (not c!765258)) b!4492153))

(assert (= (and b!4492154 (not res!1866825)) b!4492156))

(assert (= (and b!4492156 (not res!1866831)) b!4492152))

(assert (= (and b!4492152 (not res!1866827)) b!4492150))

(assert (= start!442850 b!4492161))

(assert (= (and start!442850 (is-Cons!50500 newBucket!178)) b!4492162))

(declare-fun m!5217451 () Bool)

(assert (=> b!4492154 m!5217451))

(declare-fun m!5217453 () Bool)

(assert (=> b!4492157 m!5217453))

(declare-fun m!5217455 () Bool)

(assert (=> b!4492150 m!5217455))

(assert (=> b!4492150 m!5217455))

(declare-fun m!5217457 () Bool)

(assert (=> b!4492150 m!5217457))

(declare-fun m!5217459 () Bool)

(assert (=> b!4492150 m!5217459))

(declare-fun m!5217461 () Bool)

(assert (=> b!4492150 m!5217461))

(declare-fun m!5217463 () Bool)

(assert (=> b!4492150 m!5217463))

(declare-fun m!5217465 () Bool)

(assert (=> b!4492150 m!5217465))

(declare-fun m!5217467 () Bool)

(assert (=> b!4492150 m!5217467))

(declare-fun m!5217469 () Bool)

(assert (=> b!4492150 m!5217469))

(assert (=> b!4492150 m!5217463))

(assert (=> b!4492150 m!5217457))

(declare-fun m!5217471 () Bool)

(assert (=> b!4492150 m!5217471))

(declare-fun m!5217473 () Bool)

(assert (=> b!4492159 m!5217473))

(declare-fun m!5217475 () Bool)

(assert (=> b!4492152 m!5217475))

(declare-fun m!5217477 () Bool)

(assert (=> b!4492152 m!5217477))

(declare-fun m!5217479 () Bool)

(assert (=> b!4492152 m!5217479))

(declare-fun m!5217481 () Bool)

(assert (=> b!4492152 m!5217481))

(assert (=> b!4492152 m!5217481))

(declare-fun m!5217483 () Bool)

(assert (=> b!4492152 m!5217483))

(declare-fun m!5217485 () Bool)

(assert (=> b!4492158 m!5217485))

(declare-fun m!5217487 () Bool)

(assert (=> b!4492156 m!5217487))

(declare-fun m!5217489 () Bool)

(assert (=> b!4492156 m!5217489))

(declare-fun m!5217491 () Bool)

(assert (=> b!4492156 m!5217491))

(declare-fun m!5217493 () Bool)

(assert (=> b!4492149 m!5217493))

(assert (=> b!4492149 m!5217493))

(declare-fun m!5217495 () Bool)

(assert (=> b!4492149 m!5217495))

(assert (=> start!442850 m!5217467))

(declare-fun m!5217497 () Bool)

(assert (=> start!442850 m!5217497))

(declare-fun m!5217499 () Bool)

(assert (=> b!4492160 m!5217499))

(declare-fun m!5217501 () Bool)

(assert (=> b!4492160 m!5217501))

(declare-fun m!5217503 () Bool)

(assert (=> b!4492148 m!5217503))

(declare-fun m!5217505 () Bool)

(assert (=> b!4492151 m!5217505))

(declare-fun m!5217507 () Bool)

(assert (=> b!4492151 m!5217507))

(declare-fun m!5217509 () Bool)

(assert (=> b!4492151 m!5217509))

(declare-fun m!5217511 () Bool)

(assert (=> b!4492151 m!5217511))

(declare-fun m!5217513 () Bool)

(assert (=> b!4492151 m!5217513))

(declare-fun m!5217515 () Bool)

(assert (=> b!4492151 m!5217515))

(declare-fun m!5217517 () Bool)

(assert (=> b!4492151 m!5217517))

(declare-fun m!5217519 () Bool)

(assert (=> b!4492155 m!5217519))

(declare-fun m!5217521 () Bool)

(assert (=> b!4492145 m!5217521))

(declare-fun m!5217523 () Bool)

(assert (=> b!4492146 m!5217523))

(push 1)

(assert (not start!442850))

(assert (not b!4492148))

(assert (not b!4492160))

(assert (not b!4492156))

(assert (not b!4492162))

(assert (not b!4492158))

(assert (not b!4492154))

(assert (not b!4492161))

(assert (not b!4492145))

(assert (not b!4492146))

(assert tp_is_empty!27713)

(assert (not b!4492159))

(assert (not b!4492157))

(assert (not b!4492155))

(assert (not b!4492152))

(assert (not b!4492151))

(assert tp_is_empty!27715)

(assert (not b!4492149))

(assert (not b!4492150))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

