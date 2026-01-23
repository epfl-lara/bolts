; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437602 () Bool)

(assert start!437602)

(declare-fun b!4462110 () Bool)

(declare-fun e!2778486 () Bool)

(declare-fun e!2778488 () Bool)

(assert (=> b!4462110 (= e!2778486 e!2778488)))

(declare-fun res!1850670 () Bool)

(assert (=> b!4462110 (=> res!1850670 e!2778488)))

(declare-fun lt!1652936 () Bool)

(assert (=> b!4462110 (= res!1850670 lt!1652936)))

(declare-datatypes ((Unit!86891 0))(
  ( (Unit!86892) )
))
(declare-fun lt!1652935 () Unit!86891)

(declare-fun e!2778487 () Unit!86891)

(assert (=> b!4462110 (= lt!1652935 e!2778487)))

(declare-fun c!759289 () Bool)

(assert (=> b!4462110 (= c!759289 lt!1652936)))

(declare-datatypes ((K!11648 0))(
  ( (K!11649 (val!17589 Int)) )
))
(declare-datatypes ((V!11894 0))(
  ( (V!11895 (val!17590 Int)) )
))
(declare-datatypes ((tuple2!50446 0))(
  ( (tuple2!50447 (_1!28517 K!11648) (_2!28517 V!11894)) )
))
(declare-datatypes ((List!50350 0))(
  ( (Nil!50226) (Cons!50226 (h!55973 tuple2!50446) (t!357300 List!50350)) )
))
(declare-datatypes ((tuple2!50448 0))(
  ( (tuple2!50449 (_1!28518 (_ BitVec 64)) (_2!28518 List!50350)) )
))
(declare-datatypes ((List!50351 0))(
  ( (Nil!50227) (Cons!50227 (h!55974 tuple2!50448) (t!357301 List!50351)) )
))
(declare-datatypes ((ListLongMap!2645 0))(
  ( (ListLongMap!2646 (toList!4013 List!50351)) )
))
(declare-fun lm!1477 () ListLongMap!2645)

(declare-fun key!3287 () K!11648)

(declare-fun containsKey!1415 (List!50350 K!11648) Bool)

(assert (=> b!4462110 (= lt!1652936 (not (containsKey!1415 (_2!28518 (h!55974 (toList!4013 lm!1477))) key!3287)))))

(declare-fun b!4462111 () Bool)

(declare-fun res!1850665 () Bool)

(assert (=> b!4462111 (=> res!1850665 e!2778486)))

(declare-fun newBucket!178 () List!50350)

(declare-fun noDuplicateKeys!1003 (List!50350) Bool)

(assert (=> b!4462111 (= res!1850665 (not (noDuplicateKeys!1003 newBucket!178)))))

(declare-fun b!4462112 () Bool)

(declare-fun Unit!86893 () Unit!86891)

(assert (=> b!4462112 (= e!2778487 Unit!86893)))

(declare-datatypes ((Hashable!5398 0))(
  ( (HashableExt!5397 (__x!31101 Int)) )
))
(declare-fun hashF!1107 () Hashable!5398)

(declare-fun lt!1652934 () Unit!86891)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!3 (ListLongMap!2645 K!11648 Hashable!5398) Unit!86891)

(assert (=> b!4462112 (= lt!1652934 (lemmaNotInItsHashBucketThenNotInMap!3 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4462112 false))

(declare-fun b!4462113 () Bool)

(declare-fun Unit!86894 () Unit!86891)

(assert (=> b!4462113 (= e!2778487 Unit!86894)))

(declare-fun b!4462114 () Bool)

(declare-fun res!1850666 () Bool)

(declare-fun e!2778492 () Bool)

(assert (=> b!4462114 (=> res!1850666 e!2778492)))

(declare-fun lt!1652933 () List!50351)

(declare-fun allKeysSameHashInMap!1110 (ListLongMap!2645 Hashable!5398) Bool)

(assert (=> b!4462114 (= res!1850666 (not (allKeysSameHashInMap!1110 (ListLongMap!2646 lt!1652933) hashF!1107)))))

(declare-fun res!1850675 () Bool)

(declare-fun e!2778490 () Bool)

(assert (=> start!437602 (=> (not res!1850675) (not e!2778490))))

(declare-fun lambda!161994 () Int)

(declare-fun forall!9945 (List!50351 Int) Bool)

(assert (=> start!437602 (= res!1850675 (forall!9945 (toList!4013 lm!1477) lambda!161994))))

(assert (=> start!437602 e!2778490))

(assert (=> start!437602 true))

(declare-fun e!2778491 () Bool)

(declare-fun inv!65833 (ListLongMap!2645) Bool)

(assert (=> start!437602 (and (inv!65833 lm!1477) e!2778491)))

(declare-fun tp_is_empty!27289 () Bool)

(assert (=> start!437602 tp_is_empty!27289))

(declare-fun e!2778489 () Bool)

(assert (=> start!437602 e!2778489))

(declare-fun b!4462115 () Bool)

(declare-fun res!1850669 () Bool)

(assert (=> b!4462115 (=> (not res!1850669) (not e!2778490))))

(assert (=> b!4462115 (= res!1850669 (allKeysSameHashInMap!1110 lm!1477 hashF!1107))))

(declare-fun tp_is_empty!27291 () Bool)

(declare-fun tp!1335922 () Bool)

(declare-fun b!4462116 () Bool)

(assert (=> b!4462116 (= e!2778489 (and tp_is_empty!27289 tp_is_empty!27291 tp!1335922))))

(declare-fun b!4462117 () Bool)

(declare-fun e!2778493 () Bool)

(assert (=> b!4462117 (= e!2778493 (not e!2778486))))

(declare-fun res!1850667 () Bool)

(assert (=> b!4462117 (=> res!1850667 e!2778486)))

(declare-fun lt!1652937 () List!50350)

(declare-fun removePairForKey!630 (List!50350 K!11648) List!50350)

(assert (=> b!4462117 (= res!1850667 (not (= newBucket!178 (removePairForKey!630 lt!1652937 key!3287))))))

(declare-fun lt!1652938 () Unit!86891)

(declare-fun lt!1652942 () tuple2!50448)

(declare-fun forallContained!2220 (List!50351 Int tuple2!50448) Unit!86891)

(assert (=> b!4462117 (= lt!1652938 (forallContained!2220 (toList!4013 lm!1477) lambda!161994 lt!1652942))))

(declare-fun contains!12746 (List!50351 tuple2!50448) Bool)

(assert (=> b!4462117 (contains!12746 (toList!4013 lm!1477) lt!1652942)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4462117 (= lt!1652942 (tuple2!50449 hash!344 lt!1652937))))

(declare-fun lt!1652939 () Unit!86891)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!515 (List!50351 (_ BitVec 64) List!50350) Unit!86891)

(assert (=> b!4462117 (= lt!1652939 (lemmaGetValueByKeyImpliesContainsTuple!515 (toList!4013 lm!1477) hash!344 lt!1652937))))

(declare-fun apply!11740 (ListLongMap!2645 (_ BitVec 64)) List!50350)

(assert (=> b!4462117 (= lt!1652937 (apply!11740 lm!1477 hash!344))))

(declare-fun lt!1652940 () (_ BitVec 64))

(declare-fun contains!12747 (ListLongMap!2645 (_ BitVec 64)) Bool)

(assert (=> b!4462117 (contains!12747 lm!1477 lt!1652940)))

(declare-fun lt!1652941 () Unit!86891)

(declare-fun lemmaInGenMapThenLongMapContainsHash!77 (ListLongMap!2645 K!11648 Hashable!5398) Unit!86891)

(assert (=> b!4462117 (= lt!1652941 (lemmaInGenMapThenLongMapContainsHash!77 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4462118 () Bool)

(assert (=> b!4462118 (= e!2778490 e!2778493)))

(declare-fun res!1850672 () Bool)

(assert (=> b!4462118 (=> (not res!1850672) (not e!2778493))))

(assert (=> b!4462118 (= res!1850672 (= lt!1652940 hash!344))))

(declare-fun hash!2386 (Hashable!5398 K!11648) (_ BitVec 64))

(assert (=> b!4462118 (= lt!1652940 (hash!2386 hashF!1107 key!3287))))

(declare-fun b!4462119 () Bool)

(declare-fun res!1850673 () Bool)

(assert (=> b!4462119 (=> (not res!1850673) (not e!2778493))))

(declare-fun allKeysSameHash!857 (List!50350 (_ BitVec 64) Hashable!5398) Bool)

(assert (=> b!4462119 (= res!1850673 (allKeysSameHash!857 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4462120 () Bool)

(declare-fun res!1850671 () Bool)

(assert (=> b!4462120 (=> res!1850671 e!2778492)))

(assert (=> b!4462120 (= res!1850671 (not (forall!9945 lt!1652933 lambda!161994)))))

(declare-fun b!4462121 () Bool)

(declare-fun res!1850674 () Bool)

(assert (=> b!4462121 (=> res!1850674 e!2778486)))

(assert (=> b!4462121 (= res!1850674 (or (is-Nil!50227 (toList!4013 lm!1477)) (not (= (_1!28518 (h!55974 (toList!4013 lm!1477))) hash!344))))))

(declare-fun b!4462122 () Bool)

(declare-fun tp!1335923 () Bool)

(assert (=> b!4462122 (= e!2778491 tp!1335923)))

(declare-fun b!4462123 () Bool)

(assert (=> b!4462123 (= e!2778492 true)))

(declare-fun b!4462124 () Bool)

(declare-fun res!1850668 () Bool)

(assert (=> b!4462124 (=> (not res!1850668) (not e!2778490))))

(declare-datatypes ((ListMap!3275 0))(
  ( (ListMap!3276 (toList!4014 List!50350)) )
))
(declare-fun contains!12748 (ListMap!3275 K!11648) Bool)

(declare-fun extractMap!1059 (List!50351) ListMap!3275)

(assert (=> b!4462124 (= res!1850668 (contains!12748 (extractMap!1059 (toList!4013 lm!1477)) key!3287))))

(declare-fun b!4462125 () Bool)

(assert (=> b!4462125 (= e!2778488 e!2778492)))

(declare-fun res!1850664 () Bool)

(assert (=> b!4462125 (=> res!1850664 e!2778492)))

(declare-fun containsKeyBiggerList!3 (List!50351 K!11648) Bool)

(assert (=> b!4462125 (= res!1850664 (not (containsKeyBiggerList!3 lt!1652933 key!3287)))))

(assert (=> b!4462125 (= lt!1652933 (Cons!50227 (h!55974 (toList!4013 lm!1477)) Nil!50227))))

(assert (= (and start!437602 res!1850675) b!4462115))

(assert (= (and b!4462115 res!1850669) b!4462124))

(assert (= (and b!4462124 res!1850668) b!4462118))

(assert (= (and b!4462118 res!1850672) b!4462119))

(assert (= (and b!4462119 res!1850673) b!4462117))

(assert (= (and b!4462117 (not res!1850667)) b!4462111))

(assert (= (and b!4462111 (not res!1850665)) b!4462121))

(assert (= (and b!4462121 (not res!1850674)) b!4462110))

(assert (= (and b!4462110 c!759289) b!4462112))

(assert (= (and b!4462110 (not c!759289)) b!4462113))

(assert (= (and b!4462110 (not res!1850670)) b!4462125))

(assert (= (and b!4462125 (not res!1850664)) b!4462120))

(assert (= (and b!4462120 (not res!1850671)) b!4462114))

(assert (= (and b!4462114 (not res!1850666)) b!4462123))

(assert (= start!437602 b!4462122))

(assert (= (and start!437602 (is-Cons!50226 newBucket!178)) b!4462116))

(declare-fun m!5165081 () Bool)

(assert (=> start!437602 m!5165081))

(declare-fun m!5165083 () Bool)

(assert (=> start!437602 m!5165083))

(declare-fun m!5165085 () Bool)

(assert (=> b!4462124 m!5165085))

(assert (=> b!4462124 m!5165085))

(declare-fun m!5165087 () Bool)

(assert (=> b!4462124 m!5165087))

(declare-fun m!5165089 () Bool)

(assert (=> b!4462120 m!5165089))

(declare-fun m!5165091 () Bool)

(assert (=> b!4462112 m!5165091))

(declare-fun m!5165093 () Bool)

(assert (=> b!4462111 m!5165093))

(declare-fun m!5165095 () Bool)

(assert (=> b!4462110 m!5165095))

(declare-fun m!5165097 () Bool)

(assert (=> b!4462118 m!5165097))

(declare-fun m!5165099 () Bool)

(assert (=> b!4462119 m!5165099))

(declare-fun m!5165101 () Bool)

(assert (=> b!4462114 m!5165101))

(declare-fun m!5165103 () Bool)

(assert (=> b!4462115 m!5165103))

(declare-fun m!5165105 () Bool)

(assert (=> b!4462125 m!5165105))

(declare-fun m!5165107 () Bool)

(assert (=> b!4462117 m!5165107))

(declare-fun m!5165109 () Bool)

(assert (=> b!4462117 m!5165109))

(declare-fun m!5165111 () Bool)

(assert (=> b!4462117 m!5165111))

(declare-fun m!5165113 () Bool)

(assert (=> b!4462117 m!5165113))

(declare-fun m!5165115 () Bool)

(assert (=> b!4462117 m!5165115))

(declare-fun m!5165117 () Bool)

(assert (=> b!4462117 m!5165117))

(declare-fun m!5165119 () Bool)

(assert (=> b!4462117 m!5165119))

(push 1)

(assert (not b!4462117))

(assert (not b!4462125))

(assert (not b!4462110))

(assert (not b!4462111))

(assert (not b!4462112))

(assert tp_is_empty!27289)

(assert (not b!4462114))

(assert tp_is_empty!27291)

(assert (not b!4462115))

(assert (not b!4462119))

(assert (not b!4462116))

(assert (not start!437602))

(assert (not b!4462120))

(assert (not b!4462124))

(assert (not b!4462122))

(assert (not b!4462118))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

