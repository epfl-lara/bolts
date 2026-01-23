; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!445076 () Bool)

(assert start!445076)

(declare-fun b!4506058 () Bool)

(declare-fun res!1873785 () Bool)

(declare-fun e!2807074 () Bool)

(assert (=> b!4506058 (=> res!1873785 e!2807074)))

(declare-datatypes ((K!11970 0))(
  ( (K!11971 (val!17847 Int)) )
))
(declare-datatypes ((V!12216 0))(
  ( (V!12217 (val!17848 Int)) )
))
(declare-datatypes ((tuple2!50962 0))(
  ( (tuple2!50963 (_1!28775 K!11970) (_2!28775 V!12216)) )
))
(declare-datatypes ((List!50688 0))(
  ( (Nil!50564) (Cons!50564 (h!56391 tuple2!50962) (t!357650 List!50688)) )
))
(declare-datatypes ((tuple2!50964 0))(
  ( (tuple2!50965 (_1!28776 (_ BitVec 64)) (_2!28776 List!50688)) )
))
(declare-datatypes ((List!50689 0))(
  ( (Nil!50565) (Cons!50565 (h!56392 tuple2!50964) (t!357651 List!50689)) )
))
(declare-datatypes ((ListLongMap!2903 0))(
  ( (ListLongMap!2904 (toList!4271 List!50689)) )
))
(declare-fun lm!1477 () ListLongMap!2903)

(declare-fun lt!1685218 () tuple2!50964)

(declare-fun contains!13249 (List!50689 tuple2!50964) Bool)

(assert (=> b!4506058 (= res!1873785 (not (contains!13249 (t!357651 (toList!4271 lm!1477)) lt!1685218)))))

(declare-fun b!4506059 () Bool)

(declare-fun res!1873796 () Bool)

(declare-fun e!2807085 () Bool)

(assert (=> b!4506059 (=> res!1873796 e!2807085)))

(declare-datatypes ((ListMap!3533 0))(
  ( (ListMap!3534 (toList!4272 List!50688)) )
))
(declare-fun lt!1685207 () ListMap!3533)

(declare-fun lt!1685217 () ListMap!3533)

(declare-fun eq!589 (ListMap!3533 ListMap!3533) Bool)

(assert (=> b!4506059 (= res!1873796 (not (eq!589 lt!1685207 lt!1685217)))))

(declare-fun b!4506060 () Bool)

(declare-fun e!2807078 () Bool)

(assert (=> b!4506060 (= e!2807078 e!2807074)))

(declare-fun res!1873788 () Bool)

(assert (=> b!4506060 (=> res!1873788 e!2807074)))

(declare-fun lt!1685220 () ListLongMap!2903)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun contains!13250 (ListLongMap!2903 (_ BitVec 64)) Bool)

(assert (=> b!4506060 (= res!1873788 (not (contains!13250 lt!1685220 hash!344)))))

(declare-fun tail!7680 (ListLongMap!2903) ListLongMap!2903)

(assert (=> b!4506060 (= lt!1685220 (tail!7680 lm!1477))))

(declare-fun b!4506061 () Bool)

(declare-fun e!2807079 () Bool)

(assert (=> b!4506061 (= e!2807074 e!2807079)))

(declare-fun res!1873784 () Bool)

(assert (=> b!4506061 (=> res!1873784 e!2807079)))

(declare-fun lt!1685219 () Bool)

(assert (=> b!4506061 (= res!1873784 lt!1685219)))

(declare-datatypes ((Unit!92870 0))(
  ( (Unit!92871) )
))
(declare-fun lt!1685215 () Unit!92870)

(declare-fun e!2807073 () Unit!92870)

(assert (=> b!4506061 (= lt!1685215 e!2807073)))

(declare-fun c!768449 () Bool)

(assert (=> b!4506061 (= c!768449 lt!1685219)))

(declare-fun lt!1685224 () List!50688)

(declare-fun key!3287 () K!11970)

(declare-fun containsKey!1700 (List!50688 K!11970) Bool)

(assert (=> b!4506061 (= lt!1685219 (not (containsKey!1700 lt!1685224 key!3287)))))

(declare-fun b!4506062 () Bool)

(declare-fun e!2807076 () Bool)

(assert (=> b!4506062 (= e!2807076 e!2807085)))

(declare-fun res!1873792 () Bool)

(assert (=> b!4506062 (=> res!1873792 e!2807085)))

(assert (=> b!4506062 (= res!1873792 (not (eq!589 lt!1685217 lt!1685207)))))

(declare-fun lt!1685206 () tuple2!50964)

(declare-fun extractMap!1188 (List!50689) ListMap!3533)

(declare-fun +!1486 (ListLongMap!2903 tuple2!50964) ListLongMap!2903)

(assert (=> b!4506062 (= lt!1685217 (extractMap!1188 (toList!4271 (+!1486 lt!1685220 lt!1685206))))))

(declare-fun head!9358 (ListLongMap!2903) tuple2!50964)

(assert (=> b!4506062 (= lt!1685206 (head!9358 lm!1477))))

(declare-fun lt!1685214 () ListLongMap!2903)

(declare-fun lt!1685210 () ListMap!3533)

(declare-fun -!358 (ListMap!3533 K!11970) ListMap!3533)

(assert (=> b!4506062 (eq!589 (extractMap!1188 (toList!4271 lt!1685214)) (-!358 lt!1685210 key!3287))))

(declare-fun lt!1685212 () tuple2!50964)

(assert (=> b!4506062 (= lt!1685214 (+!1486 lt!1685220 lt!1685212))))

(declare-fun newBucket!178 () List!50688)

(assert (=> b!4506062 (= lt!1685212 (tuple2!50965 hash!344 newBucket!178))))

(declare-datatypes ((Hashable!5527 0))(
  ( (HashableExt!5526 (__x!31230 Int)) )
))
(declare-fun hashF!1107 () Hashable!5527)

(declare-fun lt!1685209 () Unit!92870)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!117 (ListLongMap!2903 (_ BitVec 64) List!50688 K!11970 Hashable!5527) Unit!92870)

(assert (=> b!4506062 (= lt!1685209 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!117 lt!1685220 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4506063 () Bool)

(declare-fun e!2807077 () Bool)

(assert (=> b!4506063 (= e!2807079 e!2807077)))

(declare-fun res!1873791 () Bool)

(assert (=> b!4506063 (=> res!1873791 e!2807077)))

(declare-fun containsKeyBiggerList!112 (List!50689 K!11970) Bool)

(assert (=> b!4506063 (= res!1873791 (not (containsKeyBiggerList!112 (t!357651 (toList!4271 lm!1477)) key!3287)))))

(assert (=> b!4506063 (containsKeyBiggerList!112 (toList!4271 lt!1685220) key!3287)))

(declare-fun lt!1685225 () Unit!92870)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!48 (ListLongMap!2903 K!11970 Hashable!5527) Unit!92870)

(assert (=> b!4506063 (= lt!1685225 (lemmaInLongMapThenContainsKeyBiggerList!48 lt!1685220 key!3287 hashF!1107))))

(declare-fun res!1873780 () Bool)

(declare-fun e!2807082 () Bool)

(assert (=> start!445076 (=> (not res!1873780) (not e!2807082))))

(declare-fun lambda!169659 () Int)

(declare-fun forall!10197 (List!50689 Int) Bool)

(assert (=> start!445076 (= res!1873780 (forall!10197 (toList!4271 lm!1477) lambda!169659))))

(assert (=> start!445076 e!2807082))

(assert (=> start!445076 true))

(declare-fun e!2807080 () Bool)

(declare-fun inv!66154 (ListLongMap!2903) Bool)

(assert (=> start!445076 (and (inv!66154 lm!1477) e!2807080)))

(declare-fun tp_is_empty!27805 () Bool)

(assert (=> start!445076 tp_is_empty!27805))

(declare-fun e!2807084 () Bool)

(assert (=> start!445076 e!2807084))

(declare-fun b!4506064 () Bool)

(declare-fun e!2807081 () Bool)

(assert (=> b!4506064 (= e!2807082 e!2807081)))

(declare-fun res!1873789 () Bool)

(assert (=> b!4506064 (=> (not res!1873789) (not e!2807081))))

(declare-fun contains!13251 (ListMap!3533 K!11970) Bool)

(assert (=> b!4506064 (= res!1873789 (contains!13251 lt!1685207 key!3287))))

(assert (=> b!4506064 (= lt!1685207 (extractMap!1188 (toList!4271 lm!1477)))))

(declare-fun b!4506065 () Bool)

(declare-fun res!1873783 () Bool)

(assert (=> b!4506065 (=> res!1873783 e!2807078)))

(declare-fun noDuplicateKeys!1132 (List!50688) Bool)

(assert (=> b!4506065 (= res!1873783 (not (noDuplicateKeys!1132 newBucket!178)))))

(declare-fun tp!1337631 () Bool)

(declare-fun tp_is_empty!27807 () Bool)

(declare-fun b!4506066 () Bool)

(assert (=> b!4506066 (= e!2807084 (and tp_is_empty!27805 tp_is_empty!27807 tp!1337631))))

(declare-fun b!4506067 () Bool)

(declare-fun res!1873779 () Bool)

(assert (=> b!4506067 (=> res!1873779 e!2807074)))

(declare-fun apply!11869 (ListLongMap!2903 (_ BitVec 64)) List!50688)

(assert (=> b!4506067 (= res!1873779 (not (= (apply!11869 lt!1685220 hash!344) lt!1685224)))))

(declare-fun b!4506068 () Bool)

(declare-fun e!2807083 () Bool)

(assert (=> b!4506068 (= e!2807081 e!2807083)))

(declare-fun res!1873793 () Bool)

(assert (=> b!4506068 (=> (not res!1873793) (not e!2807083))))

(declare-fun lt!1685223 () (_ BitVec 64))

(assert (=> b!4506068 (= res!1873793 (= lt!1685223 hash!344))))

(declare-fun hash!2715 (Hashable!5527 K!11970) (_ BitVec 64))

(assert (=> b!4506068 (= lt!1685223 (hash!2715 hashF!1107 key!3287))))

(declare-fun b!4506069 () Bool)

(declare-fun Unit!92872 () Unit!92870)

(assert (=> b!4506069 (= e!2807073 Unit!92872)))

(declare-fun lt!1685221 () Unit!92870)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!120 (ListLongMap!2903 K!11970 Hashable!5527) Unit!92870)

(assert (=> b!4506069 (= lt!1685221 (lemmaNotInItsHashBucketThenNotInMap!120 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4506069 false))

(declare-fun b!4506070 () Bool)

(declare-fun e!2807075 () Bool)

(assert (=> b!4506070 (= e!2807085 e!2807075)))

(declare-fun res!1873790 () Bool)

(assert (=> b!4506070 (=> res!1873790 e!2807075)))

(declare-fun lt!1685222 () ListLongMap!2903)

(assert (=> b!4506070 (= res!1873790 (not (= lt!1685222 (+!1486 lm!1477 lt!1685212))))))

(assert (=> b!4506070 (= lt!1685222 (+!1486 lt!1685214 lt!1685206))))

(declare-fun b!4506071 () Bool)

(declare-fun res!1873786 () Bool)

(assert (=> b!4506071 (=> (not res!1873786) (not e!2807083))))

(declare-fun allKeysSameHash!986 (List!50688 (_ BitVec 64) Hashable!5527) Bool)

(assert (=> b!4506071 (= res!1873786 (allKeysSameHash!986 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4506072 () Bool)

(declare-fun res!1873782 () Bool)

(assert (=> b!4506072 (=> res!1873782 e!2807075)))

(assert (=> b!4506072 (= res!1873782 (not (= (head!9358 lt!1685222) lt!1685206)))))

(declare-fun b!4506073 () Bool)

(assert (=> b!4506073 (= e!2807075 (forall!10197 (toList!4271 lt!1685214) lambda!169659))))

(declare-fun lt!1685213 () ListMap!3533)

(assert (=> b!4506073 (= lt!1685213 (extractMap!1188 (toList!4271 lt!1685222)))))

(declare-fun b!4506074 () Bool)

(declare-fun res!1873778 () Bool)

(assert (=> b!4506074 (=> res!1873778 e!2807078)))

(get-info :version)

(assert (=> b!4506074 (= res!1873778 (or ((_ is Nil!50565) (toList!4271 lm!1477)) (= (_1!28776 (h!56392 (toList!4271 lm!1477))) hash!344)))))

(declare-fun b!4506075 () Bool)

(assert (=> b!4506075 (= e!2807083 (not e!2807078))))

(declare-fun res!1873794 () Bool)

(assert (=> b!4506075 (=> res!1873794 e!2807078)))

(declare-fun removePairForKey!759 (List!50688 K!11970) List!50688)

(assert (=> b!4506075 (= res!1873794 (not (= newBucket!178 (removePairForKey!759 lt!1685224 key!3287))))))

(declare-fun lt!1685226 () Unit!92870)

(declare-fun forallContained!2451 (List!50689 Int tuple2!50964) Unit!92870)

(assert (=> b!4506075 (= lt!1685226 (forallContained!2451 (toList!4271 lm!1477) lambda!169659 lt!1685218))))

(assert (=> b!4506075 (contains!13249 (toList!4271 lm!1477) lt!1685218)))

(assert (=> b!4506075 (= lt!1685218 (tuple2!50965 hash!344 lt!1685224))))

(declare-fun lt!1685216 () Unit!92870)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!644 (List!50689 (_ BitVec 64) List!50688) Unit!92870)

(assert (=> b!4506075 (= lt!1685216 (lemmaGetValueByKeyImpliesContainsTuple!644 (toList!4271 lm!1477) hash!344 lt!1685224))))

(assert (=> b!4506075 (= lt!1685224 (apply!11869 lm!1477 hash!344))))

(assert (=> b!4506075 (contains!13250 lm!1477 lt!1685223)))

(declare-fun lt!1685208 () Unit!92870)

(declare-fun lemmaInGenMapThenLongMapContainsHash!206 (ListLongMap!2903 K!11970 Hashable!5527) Unit!92870)

(assert (=> b!4506075 (= lt!1685208 (lemmaInGenMapThenLongMapContainsHash!206 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4506076 () Bool)

(declare-fun Unit!92873 () Unit!92870)

(assert (=> b!4506076 (= e!2807073 Unit!92873)))

(declare-fun b!4506077 () Bool)

(declare-fun res!1873787 () Bool)

(assert (=> b!4506077 (=> res!1873787 e!2807085)))

(assert (=> b!4506077 (= res!1873787 (bvsge (_1!28776 lt!1685206) hash!344))))

(declare-fun b!4506078 () Bool)

(declare-fun tp!1337630 () Bool)

(assert (=> b!4506078 (= e!2807080 tp!1337630)))

(declare-fun b!4506079 () Bool)

(declare-fun res!1873781 () Bool)

(assert (=> b!4506079 (=> (not res!1873781) (not e!2807082))))

(declare-fun allKeysSameHashInMap!1239 (ListLongMap!2903 Hashable!5527) Bool)

(assert (=> b!4506079 (= res!1873781 (allKeysSameHashInMap!1239 lm!1477 hashF!1107))))

(declare-fun b!4506080 () Bool)

(assert (=> b!4506080 (= e!2807077 e!2807076)))

(declare-fun res!1873795 () Bool)

(assert (=> b!4506080 (=> res!1873795 e!2807076)))

(assert (=> b!4506080 (= res!1873795 (not (contains!13251 (extractMap!1188 (t!357651 (toList!4271 lm!1477))) key!3287)))))

(assert (=> b!4506080 (contains!13251 lt!1685210 key!3287)))

(assert (=> b!4506080 (= lt!1685210 (extractMap!1188 (toList!4271 lt!1685220)))))

(declare-fun lt!1685211 () Unit!92870)

(declare-fun lemmaListContainsThenExtractedMapContains!102 (ListLongMap!2903 K!11970 Hashable!5527) Unit!92870)

(assert (=> b!4506080 (= lt!1685211 (lemmaListContainsThenExtractedMapContains!102 lt!1685220 key!3287 hashF!1107))))

(assert (= (and start!445076 res!1873780) b!4506079))

(assert (= (and b!4506079 res!1873781) b!4506064))

(assert (= (and b!4506064 res!1873789) b!4506068))

(assert (= (and b!4506068 res!1873793) b!4506071))

(assert (= (and b!4506071 res!1873786) b!4506075))

(assert (= (and b!4506075 (not res!1873794)) b!4506065))

(assert (= (and b!4506065 (not res!1873783)) b!4506074))

(assert (= (and b!4506074 (not res!1873778)) b!4506060))

(assert (= (and b!4506060 (not res!1873788)) b!4506067))

(assert (= (and b!4506067 (not res!1873779)) b!4506058))

(assert (= (and b!4506058 (not res!1873785)) b!4506061))

(assert (= (and b!4506061 c!768449) b!4506069))

(assert (= (and b!4506061 (not c!768449)) b!4506076))

(assert (= (and b!4506061 (not res!1873784)) b!4506063))

(assert (= (and b!4506063 (not res!1873791)) b!4506080))

(assert (= (and b!4506080 (not res!1873795)) b!4506062))

(assert (= (and b!4506062 (not res!1873792)) b!4506059))

(assert (= (and b!4506059 (not res!1873796)) b!4506077))

(assert (= (and b!4506077 (not res!1873787)) b!4506070))

(assert (= (and b!4506070 (not res!1873790)) b!4506072))

(assert (= (and b!4506072 (not res!1873782)) b!4506073))

(assert (= start!445076 b!4506078))

(assert (= (and start!445076 ((_ is Cons!50564) newBucket!178)) b!4506066))

(declare-fun m!5242017 () Bool)

(assert (=> b!4506068 m!5242017))

(declare-fun m!5242019 () Bool)

(assert (=> b!4506080 m!5242019))

(declare-fun m!5242021 () Bool)

(assert (=> b!4506080 m!5242021))

(assert (=> b!4506080 m!5242021))

(declare-fun m!5242023 () Bool)

(assert (=> b!4506080 m!5242023))

(declare-fun m!5242025 () Bool)

(assert (=> b!4506080 m!5242025))

(declare-fun m!5242027 () Bool)

(assert (=> b!4506080 m!5242027))

(declare-fun m!5242029 () Bool)

(assert (=> b!4506069 m!5242029))

(declare-fun m!5242031 () Bool)

(assert (=> b!4506063 m!5242031))

(declare-fun m!5242033 () Bool)

(assert (=> b!4506063 m!5242033))

(declare-fun m!5242035 () Bool)

(assert (=> b!4506063 m!5242035))

(declare-fun m!5242037 () Bool)

(assert (=> b!4506075 m!5242037))

(declare-fun m!5242039 () Bool)

(assert (=> b!4506075 m!5242039))

(declare-fun m!5242041 () Bool)

(assert (=> b!4506075 m!5242041))

(declare-fun m!5242043 () Bool)

(assert (=> b!4506075 m!5242043))

(declare-fun m!5242045 () Bool)

(assert (=> b!4506075 m!5242045))

(declare-fun m!5242047 () Bool)

(assert (=> b!4506075 m!5242047))

(declare-fun m!5242049 () Bool)

(assert (=> b!4506075 m!5242049))

(declare-fun m!5242051 () Bool)

(assert (=> b!4506062 m!5242051))

(declare-fun m!5242053 () Bool)

(assert (=> b!4506062 m!5242053))

(declare-fun m!5242055 () Bool)

(assert (=> b!4506062 m!5242055))

(declare-fun m!5242057 () Bool)

(assert (=> b!4506062 m!5242057))

(declare-fun m!5242059 () Bool)

(assert (=> b!4506062 m!5242059))

(assert (=> b!4506062 m!5242051))

(declare-fun m!5242061 () Bool)

(assert (=> b!4506062 m!5242061))

(assert (=> b!4506062 m!5242059))

(declare-fun m!5242063 () Bool)

(assert (=> b!4506062 m!5242063))

(declare-fun m!5242065 () Bool)

(assert (=> b!4506062 m!5242065))

(declare-fun m!5242067 () Bool)

(assert (=> b!4506062 m!5242067))

(declare-fun m!5242069 () Bool)

(assert (=> b!4506070 m!5242069))

(declare-fun m!5242071 () Bool)

(assert (=> b!4506070 m!5242071))

(declare-fun m!5242073 () Bool)

(assert (=> b!4506059 m!5242073))

(declare-fun m!5242075 () Bool)

(assert (=> b!4506065 m!5242075))

(declare-fun m!5242077 () Bool)

(assert (=> b!4506060 m!5242077))

(declare-fun m!5242079 () Bool)

(assert (=> b!4506060 m!5242079))

(declare-fun m!5242081 () Bool)

(assert (=> b!4506067 m!5242081))

(declare-fun m!5242083 () Bool)

(assert (=> b!4506061 m!5242083))

(declare-fun m!5242085 () Bool)

(assert (=> start!445076 m!5242085))

(declare-fun m!5242087 () Bool)

(assert (=> start!445076 m!5242087))

(declare-fun m!5242089 () Bool)

(assert (=> b!4506064 m!5242089))

(declare-fun m!5242091 () Bool)

(assert (=> b!4506064 m!5242091))

(declare-fun m!5242093 () Bool)

(assert (=> b!4506072 m!5242093))

(declare-fun m!5242095 () Bool)

(assert (=> b!4506071 m!5242095))

(declare-fun m!5242097 () Bool)

(assert (=> b!4506058 m!5242097))

(declare-fun m!5242099 () Bool)

(assert (=> b!4506079 m!5242099))

(declare-fun m!5242101 () Bool)

(assert (=> b!4506073 m!5242101))

(declare-fun m!5242103 () Bool)

(assert (=> b!4506073 m!5242103))

(check-sat (not b!4506059) (not b!4506064) tp_is_empty!27807 (not b!4506075) (not b!4506068) (not b!4506073) (not b!4506070) (not start!445076) (not b!4506058) (not b!4506080) tp_is_empty!27805 (not b!4506071) (not b!4506078) (not b!4506079) (not b!4506065) (not b!4506072) (not b!4506061) (not b!4506067) (not b!4506066) (not b!4506069) (not b!4506063) (not b!4506062) (not b!4506060))
(check-sat)
(get-model)

(declare-fun d!1385062 () Bool)

(declare-datatypes ((Option!11060 0))(
  ( (None!11059) (Some!11059 (v!44583 List!50688)) )
))
(declare-fun get!16536 (Option!11060) List!50688)

(declare-fun getValueByKey!1040 (List!50689 (_ BitVec 64)) Option!11060)

(assert (=> d!1385062 (= (apply!11869 lt!1685220 hash!344) (get!16536 (getValueByKey!1040 (toList!4271 lt!1685220) hash!344)))))

(declare-fun bs!843827 () Bool)

(assert (= bs!843827 d!1385062))

(declare-fun m!5242105 () Bool)

(assert (=> bs!843827 m!5242105))

(assert (=> bs!843827 m!5242105))

(declare-fun m!5242107 () Bool)

(assert (=> bs!843827 m!5242107))

(assert (=> b!4506067 d!1385062))

(declare-fun bs!843828 () Bool)

(declare-fun d!1385064 () Bool)

(assert (= bs!843828 (and d!1385064 start!445076)))

(declare-fun lambda!169662 () Int)

(assert (=> bs!843828 (not (= lambda!169662 lambda!169659))))

(assert (=> d!1385064 true))

(assert (=> d!1385064 (= (allKeysSameHashInMap!1239 lm!1477 hashF!1107) (forall!10197 (toList!4271 lm!1477) lambda!169662))))

(declare-fun bs!843829 () Bool)

(assert (= bs!843829 d!1385064))

(declare-fun m!5242109 () Bool)

(assert (=> bs!843829 m!5242109))

(assert (=> b!4506079 d!1385064))

(declare-fun d!1385066 () Bool)

(declare-fun res!1873801 () Bool)

(declare-fun e!2807090 () Bool)

(assert (=> d!1385066 (=> res!1873801 e!2807090)))

(assert (=> d!1385066 (= res!1873801 ((_ is Nil!50565) (toList!4271 lm!1477)))))

(assert (=> d!1385066 (= (forall!10197 (toList!4271 lm!1477) lambda!169659) e!2807090)))

(declare-fun b!4506087 () Bool)

(declare-fun e!2807091 () Bool)

(assert (=> b!4506087 (= e!2807090 e!2807091)))

(declare-fun res!1873802 () Bool)

(assert (=> b!4506087 (=> (not res!1873802) (not e!2807091))))

(declare-fun dynLambda!21125 (Int tuple2!50964) Bool)

(assert (=> b!4506087 (= res!1873802 (dynLambda!21125 lambda!169659 (h!56392 (toList!4271 lm!1477))))))

(declare-fun b!4506088 () Bool)

(assert (=> b!4506088 (= e!2807091 (forall!10197 (t!357651 (toList!4271 lm!1477)) lambda!169659))))

(assert (= (and d!1385066 (not res!1873801)) b!4506087))

(assert (= (and b!4506087 res!1873802) b!4506088))

(declare-fun b_lambda!153345 () Bool)

(assert (=> (not b_lambda!153345) (not b!4506087)))

(declare-fun m!5242111 () Bool)

(assert (=> b!4506087 m!5242111))

(declare-fun m!5242113 () Bool)

(assert (=> b!4506088 m!5242113))

(assert (=> start!445076 d!1385066))

(declare-fun d!1385068 () Bool)

(declare-fun isStrictlySorted!405 (List!50689) Bool)

(assert (=> d!1385068 (= (inv!66154 lm!1477) (isStrictlySorted!405 (toList!4271 lm!1477)))))

(declare-fun bs!843830 () Bool)

(assert (= bs!843830 d!1385068))

(declare-fun m!5242115 () Bool)

(assert (=> bs!843830 m!5242115))

(assert (=> start!445076 d!1385068))

(declare-fun d!1385070 () Bool)

(declare-fun hash!2718 (Hashable!5527 K!11970) (_ BitVec 64))

(assert (=> d!1385070 (= (hash!2715 hashF!1107 key!3287) (hash!2718 hashF!1107 key!3287))))

(declare-fun bs!843831 () Bool)

(assert (= bs!843831 d!1385070))

(declare-fun m!5242117 () Bool)

(assert (=> bs!843831 m!5242117))

(assert (=> b!4506068 d!1385070))

(declare-fun bs!843833 () Bool)

(declare-fun d!1385072 () Bool)

(assert (= bs!843833 (and d!1385072 start!445076)))

(declare-fun lambda!169665 () Int)

(assert (=> bs!843833 (= lambda!169665 lambda!169659)))

(declare-fun bs!843834 () Bool)

(assert (= bs!843834 (and d!1385072 d!1385064)))

(assert (=> bs!843834 (not (= lambda!169665 lambda!169662))))

(assert (=> d!1385072 (not (contains!13251 (extractMap!1188 (toList!4271 lm!1477)) key!3287))))

(declare-fun lt!1685245 () Unit!92870)

(declare-fun choose!29214 (ListLongMap!2903 K!11970 Hashable!5527) Unit!92870)

(assert (=> d!1385072 (= lt!1685245 (choose!29214 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1385072 (forall!10197 (toList!4271 lm!1477) lambda!169665)))

(assert (=> d!1385072 (= (lemmaNotInItsHashBucketThenNotInMap!120 lm!1477 key!3287 hashF!1107) lt!1685245)))

(declare-fun bs!843835 () Bool)

(assert (= bs!843835 d!1385072))

(assert (=> bs!843835 m!5242091))

(assert (=> bs!843835 m!5242091))

(declare-fun m!5242125 () Bool)

(assert (=> bs!843835 m!5242125))

(declare-fun m!5242127 () Bool)

(assert (=> bs!843835 m!5242127))

(declare-fun m!5242129 () Bool)

(assert (=> bs!843835 m!5242129))

(assert (=> b!4506069 d!1385072))

(declare-fun d!1385080 () Bool)

(declare-fun lt!1685256 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8278 (List!50689) (InoxSet tuple2!50964))

(assert (=> d!1385080 (= lt!1685256 (select (content!8278 (t!357651 (toList!4271 lm!1477))) lt!1685218))))

(declare-fun e!2807121 () Bool)

(assert (=> d!1385080 (= lt!1685256 e!2807121)))

(declare-fun res!1873823 () Bool)

(assert (=> d!1385080 (=> (not res!1873823) (not e!2807121))))

(assert (=> d!1385080 (= res!1873823 ((_ is Cons!50565) (t!357651 (toList!4271 lm!1477))))))

(assert (=> d!1385080 (= (contains!13249 (t!357651 (toList!4271 lm!1477)) lt!1685218) lt!1685256)))

(declare-fun b!4506126 () Bool)

(declare-fun e!2807120 () Bool)

(assert (=> b!4506126 (= e!2807121 e!2807120)))

(declare-fun res!1873822 () Bool)

(assert (=> b!4506126 (=> res!1873822 e!2807120)))

(assert (=> b!4506126 (= res!1873822 (= (h!56392 (t!357651 (toList!4271 lm!1477))) lt!1685218))))

(declare-fun b!4506127 () Bool)

(assert (=> b!4506127 (= e!2807120 (contains!13249 (t!357651 (t!357651 (toList!4271 lm!1477))) lt!1685218))))

(assert (= (and d!1385080 res!1873823) b!4506126))

(assert (= (and b!4506126 (not res!1873822)) b!4506127))

(declare-fun m!5242151 () Bool)

(assert (=> d!1385080 m!5242151))

(declare-fun m!5242153 () Bool)

(assert (=> d!1385080 m!5242153))

(declare-fun m!5242155 () Bool)

(assert (=> b!4506127 m!5242155))

(assert (=> b!4506058 d!1385080))

(declare-fun d!1385084 () Bool)

(declare-fun content!8279 (List!50688) (InoxSet tuple2!50962))

(assert (=> d!1385084 (= (eq!589 lt!1685207 lt!1685217) (= (content!8279 (toList!4272 lt!1685207)) (content!8279 (toList!4272 lt!1685217))))))

(declare-fun bs!843836 () Bool)

(assert (= bs!843836 d!1385084))

(declare-fun m!5242157 () Bool)

(assert (=> bs!843836 m!5242157))

(declare-fun m!5242159 () Bool)

(assert (=> bs!843836 m!5242159))

(assert (=> b!4506059 d!1385084))

(declare-fun b!4506199 () Bool)

(declare-fun e!2807168 () Unit!92870)

(declare-fun lt!1685321 () Unit!92870)

(assert (=> b!4506199 (= e!2807168 lt!1685321)))

(declare-fun lt!1685327 () Unit!92870)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!944 (List!50688 K!11970) Unit!92870)

(assert (=> b!4506199 (= lt!1685327 (lemmaContainsKeyImpliesGetValueByKeyDefined!944 (toList!4272 (extractMap!1188 (t!357651 (toList!4271 lm!1477)))) key!3287))))

(declare-datatypes ((Option!11061 0))(
  ( (None!11060) (Some!11060 (v!44584 V!12216)) )
))
(declare-fun isDefined!8347 (Option!11061) Bool)

(declare-fun getValueByKey!1041 (List!50688 K!11970) Option!11061)

(assert (=> b!4506199 (isDefined!8347 (getValueByKey!1041 (toList!4272 (extractMap!1188 (t!357651 (toList!4271 lm!1477)))) key!3287))))

(declare-fun lt!1685326 () Unit!92870)

(assert (=> b!4506199 (= lt!1685326 lt!1685327)))

(declare-fun lemmaInListThenGetKeysListContains!435 (List!50688 K!11970) Unit!92870)

(assert (=> b!4506199 (= lt!1685321 (lemmaInListThenGetKeysListContains!435 (toList!4272 (extractMap!1188 (t!357651 (toList!4271 lm!1477)))) key!3287))))

(declare-fun call!313743 () Bool)

(assert (=> b!4506199 call!313743))

(declare-fun b!4506200 () Bool)

(declare-datatypes ((List!50691 0))(
  ( (Nil!50567) (Cons!50567 (h!56396 K!11970) (t!357653 List!50691)) )
))
(declare-fun e!2807167 () List!50691)

(declare-fun keys!17540 (ListMap!3533) List!50691)

(assert (=> b!4506200 (= e!2807167 (keys!17540 (extractMap!1188 (t!357651 (toList!4271 lm!1477)))))))

(declare-fun b!4506201 () Bool)

(declare-fun e!2807170 () Bool)

(declare-fun contains!13253 (List!50691 K!11970) Bool)

(assert (=> b!4506201 (= e!2807170 (not (contains!13253 (keys!17540 (extractMap!1188 (t!357651 (toList!4271 lm!1477)))) key!3287)))))

(declare-fun b!4506202 () Bool)

(declare-fun getKeysList!439 (List!50688) List!50691)

(assert (=> b!4506202 (= e!2807167 (getKeysList!439 (toList!4272 (extractMap!1188 (t!357651 (toList!4271 lm!1477))))))))

(declare-fun b!4506203 () Bool)

(assert (=> b!4506203 false))

(declare-fun lt!1685320 () Unit!92870)

(declare-fun lt!1685323 () Unit!92870)

(assert (=> b!4506203 (= lt!1685320 lt!1685323)))

(declare-fun containsKey!1703 (List!50688 K!11970) Bool)

(assert (=> b!4506203 (containsKey!1703 (toList!4272 (extractMap!1188 (t!357651 (toList!4271 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!438 (List!50688 K!11970) Unit!92870)

(assert (=> b!4506203 (= lt!1685323 (lemmaInGetKeysListThenContainsKey!438 (toList!4272 (extractMap!1188 (t!357651 (toList!4271 lm!1477)))) key!3287))))

(declare-fun e!2807169 () Unit!92870)

(declare-fun Unit!92878 () Unit!92870)

(assert (=> b!4506203 (= e!2807169 Unit!92878)))

(declare-fun b!4506204 () Bool)

(assert (=> b!4506204 (= e!2807168 e!2807169)))

(declare-fun c!768477 () Bool)

(assert (=> b!4506204 (= c!768477 call!313743)))

(declare-fun b!4506205 () Bool)

(declare-fun e!2807172 () Bool)

(declare-fun e!2807171 () Bool)

(assert (=> b!4506205 (= e!2807172 e!2807171)))

(declare-fun res!1873856 () Bool)

(assert (=> b!4506205 (=> (not res!1873856) (not e!2807171))))

(assert (=> b!4506205 (= res!1873856 (isDefined!8347 (getValueByKey!1041 (toList!4272 (extractMap!1188 (t!357651 (toList!4271 lm!1477)))) key!3287)))))

(declare-fun bm!313738 () Bool)

(assert (=> bm!313738 (= call!313743 (contains!13253 e!2807167 key!3287))))

(declare-fun c!768479 () Bool)

(declare-fun c!768478 () Bool)

(assert (=> bm!313738 (= c!768479 c!768478)))

(declare-fun b!4506207 () Bool)

(assert (=> b!4506207 (= e!2807171 (contains!13253 (keys!17540 (extractMap!1188 (t!357651 (toList!4271 lm!1477)))) key!3287))))

(declare-fun b!4506206 () Bool)

(declare-fun Unit!92879 () Unit!92870)

(assert (=> b!4506206 (= e!2807169 Unit!92879)))

(declare-fun d!1385086 () Bool)

(assert (=> d!1385086 e!2807172))

(declare-fun res!1873857 () Bool)

(assert (=> d!1385086 (=> res!1873857 e!2807172)))

(assert (=> d!1385086 (= res!1873857 e!2807170)))

(declare-fun res!1873855 () Bool)

(assert (=> d!1385086 (=> (not res!1873855) (not e!2807170))))

(declare-fun lt!1685322 () Bool)

(assert (=> d!1385086 (= res!1873855 (not lt!1685322))))

(declare-fun lt!1685325 () Bool)

(assert (=> d!1385086 (= lt!1685322 lt!1685325)))

(declare-fun lt!1685324 () Unit!92870)

(assert (=> d!1385086 (= lt!1685324 e!2807168)))

(assert (=> d!1385086 (= c!768478 lt!1685325)))

(assert (=> d!1385086 (= lt!1685325 (containsKey!1703 (toList!4272 (extractMap!1188 (t!357651 (toList!4271 lm!1477)))) key!3287))))

(assert (=> d!1385086 (= (contains!13251 (extractMap!1188 (t!357651 (toList!4271 lm!1477))) key!3287) lt!1685322)))

(assert (= (and d!1385086 c!768478) b!4506199))

(assert (= (and d!1385086 (not c!768478)) b!4506204))

(assert (= (and b!4506204 c!768477) b!4506203))

(assert (= (and b!4506204 (not c!768477)) b!4506206))

(assert (= (or b!4506199 b!4506204) bm!313738))

(assert (= (and bm!313738 c!768479) b!4506202))

(assert (= (and bm!313738 (not c!768479)) b!4506200))

(assert (= (and d!1385086 res!1873855) b!4506201))

(assert (= (and d!1385086 (not res!1873857)) b!4506205))

(assert (= (and b!4506205 res!1873856) b!4506207))

(assert (=> b!4506201 m!5242021))

(declare-fun m!5242239 () Bool)

(assert (=> b!4506201 m!5242239))

(assert (=> b!4506201 m!5242239))

(declare-fun m!5242241 () Bool)

(assert (=> b!4506201 m!5242241))

(declare-fun m!5242243 () Bool)

(assert (=> d!1385086 m!5242243))

(declare-fun m!5242245 () Bool)

(assert (=> b!4506205 m!5242245))

(assert (=> b!4506205 m!5242245))

(declare-fun m!5242247 () Bool)

(assert (=> b!4506205 m!5242247))

(declare-fun m!5242249 () Bool)

(assert (=> b!4506199 m!5242249))

(assert (=> b!4506199 m!5242245))

(assert (=> b!4506199 m!5242245))

(assert (=> b!4506199 m!5242247))

(declare-fun m!5242251 () Bool)

(assert (=> b!4506199 m!5242251))

(assert (=> b!4506203 m!5242243))

(declare-fun m!5242253 () Bool)

(assert (=> b!4506203 m!5242253))

(declare-fun m!5242255 () Bool)

(assert (=> b!4506202 m!5242255))

(declare-fun m!5242257 () Bool)

(assert (=> bm!313738 m!5242257))

(assert (=> b!4506207 m!5242021))

(assert (=> b!4506207 m!5242239))

(assert (=> b!4506207 m!5242239))

(assert (=> b!4506207 m!5242241))

(assert (=> b!4506200 m!5242021))

(assert (=> b!4506200 m!5242239))

(assert (=> b!4506080 d!1385086))

(declare-fun bs!843862 () Bool)

(declare-fun d!1385114 () Bool)

(assert (= bs!843862 (and d!1385114 start!445076)))

(declare-fun lambda!169684 () Int)

(assert (=> bs!843862 (= lambda!169684 lambda!169659)))

(declare-fun bs!843863 () Bool)

(assert (= bs!843863 (and d!1385114 d!1385064)))

(assert (=> bs!843863 (not (= lambda!169684 lambda!169662))))

(declare-fun bs!843864 () Bool)

(assert (= bs!843864 (and d!1385114 d!1385072)))

(assert (=> bs!843864 (= lambda!169684 lambda!169665)))

(declare-fun lt!1685345 () ListMap!3533)

(declare-fun invariantList!991 (List!50688) Bool)

(assert (=> d!1385114 (invariantList!991 (toList!4272 lt!1685345))))

(declare-fun e!2807200 () ListMap!3533)

(assert (=> d!1385114 (= lt!1685345 e!2807200)))

(declare-fun c!768484 () Bool)

(assert (=> d!1385114 (= c!768484 ((_ is Cons!50565) (t!357651 (toList!4271 lm!1477))))))

(assert (=> d!1385114 (forall!10197 (t!357651 (toList!4271 lm!1477)) lambda!169684)))

(assert (=> d!1385114 (= (extractMap!1188 (t!357651 (toList!4271 lm!1477))) lt!1685345)))

(declare-fun b!4506242 () Bool)

(declare-fun addToMapMapFromBucket!659 (List!50688 ListMap!3533) ListMap!3533)

(assert (=> b!4506242 (= e!2807200 (addToMapMapFromBucket!659 (_2!28776 (h!56392 (t!357651 (toList!4271 lm!1477)))) (extractMap!1188 (t!357651 (t!357651 (toList!4271 lm!1477))))))))

(declare-fun b!4506243 () Bool)

(assert (=> b!4506243 (= e!2807200 (ListMap!3534 Nil!50564))))

(assert (= (and d!1385114 c!768484) b!4506242))

(assert (= (and d!1385114 (not c!768484)) b!4506243))

(declare-fun m!5242327 () Bool)

(assert (=> d!1385114 m!5242327))

(declare-fun m!5242329 () Bool)

(assert (=> d!1385114 m!5242329))

(declare-fun m!5242331 () Bool)

(assert (=> b!4506242 m!5242331))

(assert (=> b!4506242 m!5242331))

(declare-fun m!5242333 () Bool)

(assert (=> b!4506242 m!5242333))

(assert (=> b!4506080 d!1385114))

(declare-fun bs!843890 () Bool)

(declare-fun d!1385142 () Bool)

(assert (= bs!843890 (and d!1385142 start!445076)))

(declare-fun lambda!169692 () Int)

(assert (=> bs!843890 (= lambda!169692 lambda!169659)))

(declare-fun bs!843891 () Bool)

(assert (= bs!843891 (and d!1385142 d!1385064)))

(assert (=> bs!843891 (not (= lambda!169692 lambda!169662))))

(declare-fun bs!843892 () Bool)

(assert (= bs!843892 (and d!1385142 d!1385072)))

(assert (=> bs!843892 (= lambda!169692 lambda!169665)))

(declare-fun bs!843894 () Bool)

(assert (= bs!843894 (and d!1385142 d!1385114)))

(assert (=> bs!843894 (= lambda!169692 lambda!169684)))

(assert (=> d!1385142 (contains!13251 (extractMap!1188 (toList!4271 lt!1685220)) key!3287)))

(declare-fun lt!1685365 () Unit!92870)

(declare-fun choose!29216 (ListLongMap!2903 K!11970 Hashable!5527) Unit!92870)

(assert (=> d!1385142 (= lt!1685365 (choose!29216 lt!1685220 key!3287 hashF!1107))))

(assert (=> d!1385142 (forall!10197 (toList!4271 lt!1685220) lambda!169692)))

(assert (=> d!1385142 (= (lemmaListContainsThenExtractedMapContains!102 lt!1685220 key!3287 hashF!1107) lt!1685365)))

(declare-fun bs!843898 () Bool)

(assert (= bs!843898 d!1385142))

(assert (=> bs!843898 m!5242025))

(assert (=> bs!843898 m!5242025))

(declare-fun m!5242403 () Bool)

(assert (=> bs!843898 m!5242403))

(declare-fun m!5242405 () Bool)

(assert (=> bs!843898 m!5242405))

(declare-fun m!5242407 () Bool)

(assert (=> bs!843898 m!5242407))

(assert (=> b!4506080 d!1385142))

(declare-fun bs!843904 () Bool)

(declare-fun d!1385162 () Bool)

(assert (= bs!843904 (and d!1385162 d!1385072)))

(declare-fun lambda!169694 () Int)

(assert (=> bs!843904 (= lambda!169694 lambda!169665)))

(declare-fun bs!843905 () Bool)

(assert (= bs!843905 (and d!1385162 d!1385114)))

(assert (=> bs!843905 (= lambda!169694 lambda!169684)))

(declare-fun bs!843906 () Bool)

(assert (= bs!843906 (and d!1385162 d!1385142)))

(assert (=> bs!843906 (= lambda!169694 lambda!169692)))

(declare-fun bs!843907 () Bool)

(assert (= bs!843907 (and d!1385162 start!445076)))

(assert (=> bs!843907 (= lambda!169694 lambda!169659)))

(declare-fun bs!843908 () Bool)

(assert (= bs!843908 (and d!1385162 d!1385064)))

(assert (=> bs!843908 (not (= lambda!169694 lambda!169662))))

(declare-fun lt!1685367 () ListMap!3533)

(assert (=> d!1385162 (invariantList!991 (toList!4272 lt!1685367))))

(declare-fun e!2807213 () ListMap!3533)

(assert (=> d!1385162 (= lt!1685367 e!2807213)))

(declare-fun c!768491 () Bool)

(assert (=> d!1385162 (= c!768491 ((_ is Cons!50565) (toList!4271 lt!1685220)))))

(assert (=> d!1385162 (forall!10197 (toList!4271 lt!1685220) lambda!169694)))

(assert (=> d!1385162 (= (extractMap!1188 (toList!4271 lt!1685220)) lt!1685367)))

(declare-fun b!4506263 () Bool)

(assert (=> b!4506263 (= e!2807213 (addToMapMapFromBucket!659 (_2!28776 (h!56392 (toList!4271 lt!1685220))) (extractMap!1188 (t!357651 (toList!4271 lt!1685220)))))))

(declare-fun b!4506264 () Bool)

(assert (=> b!4506264 (= e!2807213 (ListMap!3534 Nil!50564))))

(assert (= (and d!1385162 c!768491) b!4506263))

(assert (= (and d!1385162 (not c!768491)) b!4506264))

(declare-fun m!5242417 () Bool)

(assert (=> d!1385162 m!5242417))

(declare-fun m!5242419 () Bool)

(assert (=> d!1385162 m!5242419))

(declare-fun m!5242421 () Bool)

(assert (=> b!4506263 m!5242421))

(assert (=> b!4506263 m!5242421))

(declare-fun m!5242423 () Bool)

(assert (=> b!4506263 m!5242423))

(assert (=> b!4506080 d!1385162))

(declare-fun b!4506265 () Bool)

(declare-fun e!2807215 () Unit!92870)

(declare-fun lt!1685369 () Unit!92870)

(assert (=> b!4506265 (= e!2807215 lt!1685369)))

(declare-fun lt!1685375 () Unit!92870)

(assert (=> b!4506265 (= lt!1685375 (lemmaContainsKeyImpliesGetValueByKeyDefined!944 (toList!4272 lt!1685210) key!3287))))

(assert (=> b!4506265 (isDefined!8347 (getValueByKey!1041 (toList!4272 lt!1685210) key!3287))))

(declare-fun lt!1685374 () Unit!92870)

(assert (=> b!4506265 (= lt!1685374 lt!1685375)))

(assert (=> b!4506265 (= lt!1685369 (lemmaInListThenGetKeysListContains!435 (toList!4272 lt!1685210) key!3287))))

(declare-fun call!313745 () Bool)

(assert (=> b!4506265 call!313745))

(declare-fun b!4506266 () Bool)

(declare-fun e!2807214 () List!50691)

(assert (=> b!4506266 (= e!2807214 (keys!17540 lt!1685210))))

(declare-fun b!4506267 () Bool)

(declare-fun e!2807217 () Bool)

(assert (=> b!4506267 (= e!2807217 (not (contains!13253 (keys!17540 lt!1685210) key!3287)))))

(declare-fun b!4506268 () Bool)

(assert (=> b!4506268 (= e!2807214 (getKeysList!439 (toList!4272 lt!1685210)))))

(declare-fun b!4506269 () Bool)

(assert (=> b!4506269 false))

(declare-fun lt!1685368 () Unit!92870)

(declare-fun lt!1685371 () Unit!92870)

(assert (=> b!4506269 (= lt!1685368 lt!1685371)))

(assert (=> b!4506269 (containsKey!1703 (toList!4272 lt!1685210) key!3287)))

(assert (=> b!4506269 (= lt!1685371 (lemmaInGetKeysListThenContainsKey!438 (toList!4272 lt!1685210) key!3287))))

(declare-fun e!2807216 () Unit!92870)

(declare-fun Unit!92880 () Unit!92870)

(assert (=> b!4506269 (= e!2807216 Unit!92880)))

(declare-fun b!4506270 () Bool)

(assert (=> b!4506270 (= e!2807215 e!2807216)))

(declare-fun c!768492 () Bool)

(assert (=> b!4506270 (= c!768492 call!313745)))

(declare-fun b!4506271 () Bool)

(declare-fun e!2807219 () Bool)

(declare-fun e!2807218 () Bool)

(assert (=> b!4506271 (= e!2807219 e!2807218)))

(declare-fun res!1873890 () Bool)

(assert (=> b!4506271 (=> (not res!1873890) (not e!2807218))))

(assert (=> b!4506271 (= res!1873890 (isDefined!8347 (getValueByKey!1041 (toList!4272 lt!1685210) key!3287)))))

(declare-fun bm!313740 () Bool)

(assert (=> bm!313740 (= call!313745 (contains!13253 e!2807214 key!3287))))

(declare-fun c!768494 () Bool)

(declare-fun c!768493 () Bool)

(assert (=> bm!313740 (= c!768494 c!768493)))

(declare-fun b!4506273 () Bool)

(assert (=> b!4506273 (= e!2807218 (contains!13253 (keys!17540 lt!1685210) key!3287))))

(declare-fun b!4506272 () Bool)

(declare-fun Unit!92881 () Unit!92870)

(assert (=> b!4506272 (= e!2807216 Unit!92881)))

(declare-fun d!1385166 () Bool)

(assert (=> d!1385166 e!2807219))

(declare-fun res!1873891 () Bool)

(assert (=> d!1385166 (=> res!1873891 e!2807219)))

(assert (=> d!1385166 (= res!1873891 e!2807217)))

(declare-fun res!1873889 () Bool)

(assert (=> d!1385166 (=> (not res!1873889) (not e!2807217))))

(declare-fun lt!1685370 () Bool)

(assert (=> d!1385166 (= res!1873889 (not lt!1685370))))

(declare-fun lt!1685373 () Bool)

(assert (=> d!1385166 (= lt!1685370 lt!1685373)))

(declare-fun lt!1685372 () Unit!92870)

(assert (=> d!1385166 (= lt!1685372 e!2807215)))

(assert (=> d!1385166 (= c!768493 lt!1685373)))

(assert (=> d!1385166 (= lt!1685373 (containsKey!1703 (toList!4272 lt!1685210) key!3287))))

(assert (=> d!1385166 (= (contains!13251 lt!1685210 key!3287) lt!1685370)))

(assert (= (and d!1385166 c!768493) b!4506265))

(assert (= (and d!1385166 (not c!768493)) b!4506270))

(assert (= (and b!4506270 c!768492) b!4506269))

(assert (= (and b!4506270 (not c!768492)) b!4506272))

(assert (= (or b!4506265 b!4506270) bm!313740))

(assert (= (and bm!313740 c!768494) b!4506268))

(assert (= (and bm!313740 (not c!768494)) b!4506266))

(assert (= (and d!1385166 res!1873889) b!4506267))

(assert (= (and d!1385166 (not res!1873891)) b!4506271))

(assert (= (and b!4506271 res!1873890) b!4506273))

(declare-fun m!5242425 () Bool)

(assert (=> b!4506267 m!5242425))

(assert (=> b!4506267 m!5242425))

(declare-fun m!5242427 () Bool)

(assert (=> b!4506267 m!5242427))

(declare-fun m!5242429 () Bool)

(assert (=> d!1385166 m!5242429))

(declare-fun m!5242431 () Bool)

(assert (=> b!4506271 m!5242431))

(assert (=> b!4506271 m!5242431))

(declare-fun m!5242433 () Bool)

(assert (=> b!4506271 m!5242433))

(declare-fun m!5242435 () Bool)

(assert (=> b!4506265 m!5242435))

(assert (=> b!4506265 m!5242431))

(assert (=> b!4506265 m!5242431))

(assert (=> b!4506265 m!5242433))

(declare-fun m!5242437 () Bool)

(assert (=> b!4506265 m!5242437))

(assert (=> b!4506269 m!5242429))

(declare-fun m!5242439 () Bool)

(assert (=> b!4506269 m!5242439))

(declare-fun m!5242441 () Bool)

(assert (=> b!4506268 m!5242441))

(declare-fun m!5242443 () Bool)

(assert (=> bm!313740 m!5242443))

(assert (=> b!4506273 m!5242425))

(assert (=> b!4506273 m!5242425))

(assert (=> b!4506273 m!5242427))

(assert (=> b!4506266 m!5242425))

(assert (=> b!4506080 d!1385166))

(declare-fun d!1385168 () Bool)

(declare-fun e!2807229 () Bool)

(assert (=> d!1385168 e!2807229))

(declare-fun res!1873900 () Bool)

(assert (=> d!1385168 (=> (not res!1873900) (not e!2807229))))

(declare-fun lt!1685397 () ListLongMap!2903)

(assert (=> d!1385168 (= res!1873900 (contains!13250 lt!1685397 (_1!28776 lt!1685212)))))

(declare-fun lt!1685398 () List!50689)

(assert (=> d!1385168 (= lt!1685397 (ListLongMap!2904 lt!1685398))))

(declare-fun lt!1685396 () Unit!92870)

(declare-fun lt!1685399 () Unit!92870)

(assert (=> d!1385168 (= lt!1685396 lt!1685399)))

(assert (=> d!1385168 (= (getValueByKey!1040 lt!1685398 (_1!28776 lt!1685212)) (Some!11059 (_2!28776 lt!1685212)))))

(declare-fun lemmaContainsTupThenGetReturnValue!642 (List!50689 (_ BitVec 64) List!50688) Unit!92870)

(assert (=> d!1385168 (= lt!1685399 (lemmaContainsTupThenGetReturnValue!642 lt!1685398 (_1!28776 lt!1685212) (_2!28776 lt!1685212)))))

(declare-fun insertStrictlySorted!382 (List!50689 (_ BitVec 64) List!50688) List!50689)

(assert (=> d!1385168 (= lt!1685398 (insertStrictlySorted!382 (toList!4271 lm!1477) (_1!28776 lt!1685212) (_2!28776 lt!1685212)))))

(assert (=> d!1385168 (= (+!1486 lm!1477 lt!1685212) lt!1685397)))

(declare-fun b!4506289 () Bool)

(declare-fun res!1873899 () Bool)

(assert (=> b!4506289 (=> (not res!1873899) (not e!2807229))))

(assert (=> b!4506289 (= res!1873899 (= (getValueByKey!1040 (toList!4271 lt!1685397) (_1!28776 lt!1685212)) (Some!11059 (_2!28776 lt!1685212))))))

(declare-fun b!4506290 () Bool)

(assert (=> b!4506290 (= e!2807229 (contains!13249 (toList!4271 lt!1685397) lt!1685212))))

(assert (= (and d!1385168 res!1873900) b!4506289))

(assert (= (and b!4506289 res!1873899) b!4506290))

(declare-fun m!5242471 () Bool)

(assert (=> d!1385168 m!5242471))

(declare-fun m!5242477 () Bool)

(assert (=> d!1385168 m!5242477))

(declare-fun m!5242481 () Bool)

(assert (=> d!1385168 m!5242481))

(declare-fun m!5242483 () Bool)

(assert (=> d!1385168 m!5242483))

(declare-fun m!5242485 () Bool)

(assert (=> b!4506289 m!5242485))

(declare-fun m!5242487 () Bool)

(assert (=> b!4506290 m!5242487))

(assert (=> b!4506070 d!1385168))

(declare-fun d!1385176 () Bool)

(declare-fun e!2807230 () Bool)

(assert (=> d!1385176 e!2807230))

(declare-fun res!1873902 () Bool)

(assert (=> d!1385176 (=> (not res!1873902) (not e!2807230))))

(declare-fun lt!1685401 () ListLongMap!2903)

(assert (=> d!1385176 (= res!1873902 (contains!13250 lt!1685401 (_1!28776 lt!1685206)))))

(declare-fun lt!1685402 () List!50689)

(assert (=> d!1385176 (= lt!1685401 (ListLongMap!2904 lt!1685402))))

(declare-fun lt!1685400 () Unit!92870)

(declare-fun lt!1685403 () Unit!92870)

(assert (=> d!1385176 (= lt!1685400 lt!1685403)))

(assert (=> d!1385176 (= (getValueByKey!1040 lt!1685402 (_1!28776 lt!1685206)) (Some!11059 (_2!28776 lt!1685206)))))

(assert (=> d!1385176 (= lt!1685403 (lemmaContainsTupThenGetReturnValue!642 lt!1685402 (_1!28776 lt!1685206) (_2!28776 lt!1685206)))))

(assert (=> d!1385176 (= lt!1685402 (insertStrictlySorted!382 (toList!4271 lt!1685214) (_1!28776 lt!1685206) (_2!28776 lt!1685206)))))

(assert (=> d!1385176 (= (+!1486 lt!1685214 lt!1685206) lt!1685401)))

(declare-fun b!4506291 () Bool)

(declare-fun res!1873901 () Bool)

(assert (=> b!4506291 (=> (not res!1873901) (not e!2807230))))

(assert (=> b!4506291 (= res!1873901 (= (getValueByKey!1040 (toList!4271 lt!1685401) (_1!28776 lt!1685206)) (Some!11059 (_2!28776 lt!1685206))))))

(declare-fun b!4506292 () Bool)

(assert (=> b!4506292 (= e!2807230 (contains!13249 (toList!4271 lt!1685401) lt!1685206))))

(assert (= (and d!1385176 res!1873902) b!4506291))

(assert (= (and b!4506291 res!1873901) b!4506292))

(declare-fun m!5242489 () Bool)

(assert (=> d!1385176 m!5242489))

(declare-fun m!5242491 () Bool)

(assert (=> d!1385176 m!5242491))

(declare-fun m!5242493 () Bool)

(assert (=> d!1385176 m!5242493))

(declare-fun m!5242495 () Bool)

(assert (=> d!1385176 m!5242495))

(declare-fun m!5242497 () Bool)

(assert (=> b!4506291 m!5242497))

(declare-fun m!5242499 () Bool)

(assert (=> b!4506292 m!5242499))

(assert (=> b!4506070 d!1385176))

(declare-fun d!1385178 () Bool)

(assert (=> d!1385178 true))

(assert (=> d!1385178 true))

(declare-fun lambda!169701 () Int)

(declare-fun forall!10199 (List!50688 Int) Bool)

(assert (=> d!1385178 (= (allKeysSameHash!986 newBucket!178 hash!344 hashF!1107) (forall!10199 newBucket!178 lambda!169701))))

(declare-fun bs!843931 () Bool)

(assert (= bs!843931 d!1385178))

(declare-fun m!5242501 () Bool)

(assert (=> bs!843931 m!5242501))

(assert (=> b!4506071 d!1385178))

(declare-fun d!1385180 () Bool)

(declare-fun e!2807235 () Bool)

(assert (=> d!1385180 e!2807235))

(declare-fun res!1873905 () Bool)

(assert (=> d!1385180 (=> res!1873905 e!2807235)))

(declare-fun lt!1685416 () Bool)

(assert (=> d!1385180 (= res!1873905 (not lt!1685416))))

(declare-fun lt!1685417 () Bool)

(assert (=> d!1385180 (= lt!1685416 lt!1685417)))

(declare-fun lt!1685418 () Unit!92870)

(declare-fun e!2807236 () Unit!92870)

(assert (=> d!1385180 (= lt!1685418 e!2807236)))

(declare-fun c!768501 () Bool)

(assert (=> d!1385180 (= c!768501 lt!1685417)))

(declare-fun containsKey!1704 (List!50689 (_ BitVec 64)) Bool)

(assert (=> d!1385180 (= lt!1685417 (containsKey!1704 (toList!4271 lt!1685220) hash!344))))

(assert (=> d!1385180 (= (contains!13250 lt!1685220 hash!344) lt!1685416)))

(declare-fun b!4506303 () Bool)

(declare-fun lt!1685415 () Unit!92870)

(assert (=> b!4506303 (= e!2807236 lt!1685415)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!945 (List!50689 (_ BitVec 64)) Unit!92870)

(assert (=> b!4506303 (= lt!1685415 (lemmaContainsKeyImpliesGetValueByKeyDefined!945 (toList!4271 lt!1685220) hash!344))))

(declare-fun isDefined!8348 (Option!11060) Bool)

(assert (=> b!4506303 (isDefined!8348 (getValueByKey!1040 (toList!4271 lt!1685220) hash!344))))

(declare-fun b!4506304 () Bool)

(declare-fun Unit!92884 () Unit!92870)

(assert (=> b!4506304 (= e!2807236 Unit!92884)))

(declare-fun b!4506305 () Bool)

(assert (=> b!4506305 (= e!2807235 (isDefined!8348 (getValueByKey!1040 (toList!4271 lt!1685220) hash!344)))))

(assert (= (and d!1385180 c!768501) b!4506303))

(assert (= (and d!1385180 (not c!768501)) b!4506304))

(assert (= (and d!1385180 (not res!1873905)) b!4506305))

(declare-fun m!5242509 () Bool)

(assert (=> d!1385180 m!5242509))

(declare-fun m!5242511 () Bool)

(assert (=> b!4506303 m!5242511))

(assert (=> b!4506303 m!5242105))

(assert (=> b!4506303 m!5242105))

(declare-fun m!5242513 () Bool)

(assert (=> b!4506303 m!5242513))

(assert (=> b!4506305 m!5242105))

(assert (=> b!4506305 m!5242105))

(assert (=> b!4506305 m!5242513))

(assert (=> b!4506060 d!1385180))

(declare-fun d!1385184 () Bool)

(declare-fun tail!7682 (List!50689) List!50689)

(assert (=> d!1385184 (= (tail!7680 lm!1477) (ListLongMap!2904 (tail!7682 (toList!4271 lm!1477))))))

(declare-fun bs!843945 () Bool)

(assert (= bs!843945 d!1385184))

(declare-fun m!5242515 () Bool)

(assert (=> bs!843945 m!5242515))

(assert (=> b!4506060 d!1385184))

(declare-fun d!1385186 () Bool)

(declare-fun res!1873916 () Bool)

(declare-fun e!2807252 () Bool)

(assert (=> d!1385186 (=> res!1873916 e!2807252)))

(assert (=> d!1385186 (= res!1873916 (and ((_ is Cons!50564) lt!1685224) (= (_1!28775 (h!56391 lt!1685224)) key!3287)))))

(assert (=> d!1385186 (= (containsKey!1700 lt!1685224 key!3287) e!2807252)))

(declare-fun b!4506325 () Bool)

(declare-fun e!2807253 () Bool)

(assert (=> b!4506325 (= e!2807252 e!2807253)))

(declare-fun res!1873917 () Bool)

(assert (=> b!4506325 (=> (not res!1873917) (not e!2807253))))

(assert (=> b!4506325 (= res!1873917 ((_ is Cons!50564) lt!1685224))))

(declare-fun b!4506326 () Bool)

(assert (=> b!4506326 (= e!2807253 (containsKey!1700 (t!357650 lt!1685224) key!3287))))

(assert (= (and d!1385186 (not res!1873916)) b!4506325))

(assert (= (and b!4506325 res!1873917) b!4506326))

(declare-fun m!5242521 () Bool)

(assert (=> b!4506326 m!5242521))

(assert (=> b!4506061 d!1385186))

(declare-fun d!1385188 () Bool)

(declare-fun head!9360 (List!50689) tuple2!50964)

(assert (=> d!1385188 (= (head!9358 lt!1685222) (head!9360 (toList!4271 lt!1685222)))))

(declare-fun bs!843949 () Bool)

(assert (= bs!843949 d!1385188))

(declare-fun m!5242529 () Bool)

(assert (=> bs!843949 m!5242529))

(assert (=> b!4506072 d!1385188))

(declare-fun d!1385196 () Bool)

(declare-fun res!1873918 () Bool)

(declare-fun e!2807255 () Bool)

(assert (=> d!1385196 (=> res!1873918 e!2807255)))

(assert (=> d!1385196 (= res!1873918 ((_ is Nil!50565) (toList!4271 lt!1685214)))))

(assert (=> d!1385196 (= (forall!10197 (toList!4271 lt!1685214) lambda!169659) e!2807255)))

(declare-fun b!4506328 () Bool)

(declare-fun e!2807256 () Bool)

(assert (=> b!4506328 (= e!2807255 e!2807256)))

(declare-fun res!1873919 () Bool)

(assert (=> b!4506328 (=> (not res!1873919) (not e!2807256))))

(assert (=> b!4506328 (= res!1873919 (dynLambda!21125 lambda!169659 (h!56392 (toList!4271 lt!1685214))))))

(declare-fun b!4506329 () Bool)

(assert (=> b!4506329 (= e!2807256 (forall!10197 (t!357651 (toList!4271 lt!1685214)) lambda!169659))))

(assert (= (and d!1385196 (not res!1873918)) b!4506328))

(assert (= (and b!4506328 res!1873919) b!4506329))

(declare-fun b_lambda!153359 () Bool)

(assert (=> (not b_lambda!153359) (not b!4506328)))

(declare-fun m!5242531 () Bool)

(assert (=> b!4506328 m!5242531))

(declare-fun m!5242533 () Bool)

(assert (=> b!4506329 m!5242533))

(assert (=> b!4506073 d!1385196))

(declare-fun bs!843950 () Bool)

(declare-fun d!1385198 () Bool)

(assert (= bs!843950 (and d!1385198 d!1385162)))

(declare-fun lambda!169705 () Int)

(assert (=> bs!843950 (= lambda!169705 lambda!169694)))

(declare-fun bs!843951 () Bool)

(assert (= bs!843951 (and d!1385198 d!1385072)))

(assert (=> bs!843951 (= lambda!169705 lambda!169665)))

(declare-fun bs!843952 () Bool)

(assert (= bs!843952 (and d!1385198 d!1385114)))

(assert (=> bs!843952 (= lambda!169705 lambda!169684)))

(declare-fun bs!843953 () Bool)

(assert (= bs!843953 (and d!1385198 d!1385142)))

(assert (=> bs!843953 (= lambda!169705 lambda!169692)))

(declare-fun bs!843954 () Bool)

(assert (= bs!843954 (and d!1385198 start!445076)))

(assert (=> bs!843954 (= lambda!169705 lambda!169659)))

(declare-fun bs!843955 () Bool)

(assert (= bs!843955 (and d!1385198 d!1385064)))

(assert (=> bs!843955 (not (= lambda!169705 lambda!169662))))

(declare-fun lt!1685419 () ListMap!3533)

(assert (=> d!1385198 (invariantList!991 (toList!4272 lt!1685419))))

(declare-fun e!2807257 () ListMap!3533)

(assert (=> d!1385198 (= lt!1685419 e!2807257)))

(declare-fun c!768502 () Bool)

(assert (=> d!1385198 (= c!768502 ((_ is Cons!50565) (toList!4271 lt!1685222)))))

(assert (=> d!1385198 (forall!10197 (toList!4271 lt!1685222) lambda!169705)))

(assert (=> d!1385198 (= (extractMap!1188 (toList!4271 lt!1685222)) lt!1685419)))

(declare-fun b!4506330 () Bool)

(assert (=> b!4506330 (= e!2807257 (addToMapMapFromBucket!659 (_2!28776 (h!56392 (toList!4271 lt!1685222))) (extractMap!1188 (t!357651 (toList!4271 lt!1685222)))))))

(declare-fun b!4506331 () Bool)

(assert (=> b!4506331 (= e!2807257 (ListMap!3534 Nil!50564))))

(assert (= (and d!1385198 c!768502) b!4506330))

(assert (= (and d!1385198 (not c!768502)) b!4506331))

(declare-fun m!5242535 () Bool)

(assert (=> d!1385198 m!5242535))

(declare-fun m!5242537 () Bool)

(assert (=> d!1385198 m!5242537))

(declare-fun m!5242539 () Bool)

(assert (=> b!4506330 m!5242539))

(assert (=> b!4506330 m!5242539))

(declare-fun m!5242541 () Bool)

(assert (=> b!4506330 m!5242541))

(assert (=> b!4506073 d!1385198))

(declare-fun bs!843956 () Bool)

(declare-fun d!1385200 () Bool)

(assert (= bs!843956 (and d!1385200 d!1385162)))

(declare-fun lambda!169708 () Int)

(assert (=> bs!843956 (= lambda!169708 lambda!169694)))

(declare-fun bs!843957 () Bool)

(assert (= bs!843957 (and d!1385200 d!1385072)))

(assert (=> bs!843957 (= lambda!169708 lambda!169665)))

(declare-fun bs!843958 () Bool)

(assert (= bs!843958 (and d!1385200 d!1385114)))

(assert (=> bs!843958 (= lambda!169708 lambda!169684)))

(declare-fun bs!843959 () Bool)

(assert (= bs!843959 (and d!1385200 d!1385142)))

(assert (=> bs!843959 (= lambda!169708 lambda!169692)))

(declare-fun bs!843960 () Bool)

(assert (= bs!843960 (and d!1385200 d!1385198)))

(assert (=> bs!843960 (= lambda!169708 lambda!169705)))

(declare-fun bs!843961 () Bool)

(assert (= bs!843961 (and d!1385200 start!445076)))

(assert (=> bs!843961 (= lambda!169708 lambda!169659)))

(declare-fun bs!843962 () Bool)

(assert (= bs!843962 (and d!1385200 d!1385064)))

(assert (=> bs!843962 (not (= lambda!169708 lambda!169662))))

(assert (=> d!1385200 (eq!589 (extractMap!1188 (toList!4271 (+!1486 lt!1685220 (tuple2!50965 hash!344 newBucket!178)))) (-!358 (extractMap!1188 (toList!4271 lt!1685220)) key!3287))))

(declare-fun lt!1685422 () Unit!92870)

(declare-fun choose!29218 (ListLongMap!2903 (_ BitVec 64) List!50688 K!11970 Hashable!5527) Unit!92870)

(assert (=> d!1385200 (= lt!1685422 (choose!29218 lt!1685220 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1385200 (forall!10197 (toList!4271 lt!1685220) lambda!169708)))

(assert (=> d!1385200 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!117 lt!1685220 hash!344 newBucket!178 key!3287 hashF!1107) lt!1685422)))

(declare-fun bs!843963 () Bool)

(assert (= bs!843963 d!1385200))

(declare-fun m!5242543 () Bool)

(assert (=> bs!843963 m!5242543))

(declare-fun m!5242545 () Bool)

(assert (=> bs!843963 m!5242545))

(declare-fun m!5242547 () Bool)

(assert (=> bs!843963 m!5242547))

(assert (=> bs!843963 m!5242543))

(assert (=> bs!843963 m!5242025))

(assert (=> bs!843963 m!5242545))

(assert (=> bs!843963 m!5242025))

(declare-fun m!5242549 () Bool)

(assert (=> bs!843963 m!5242549))

(declare-fun m!5242551 () Bool)

(assert (=> bs!843963 m!5242551))

(declare-fun m!5242553 () Bool)

(assert (=> bs!843963 m!5242553))

(assert (=> b!4506062 d!1385200))

(declare-fun d!1385202 () Bool)

(assert (=> d!1385202 (= (eq!589 lt!1685217 lt!1685207) (= (content!8279 (toList!4272 lt!1685217)) (content!8279 (toList!4272 lt!1685207))))))

(declare-fun bs!843964 () Bool)

(assert (= bs!843964 d!1385202))

(assert (=> bs!843964 m!5242159))

(assert (=> bs!843964 m!5242157))

(assert (=> b!4506062 d!1385202))

(declare-fun bs!843965 () Bool)

(declare-fun d!1385204 () Bool)

(assert (= bs!843965 (and d!1385204 d!1385162)))

(declare-fun lambda!169709 () Int)

(assert (=> bs!843965 (= lambda!169709 lambda!169694)))

(declare-fun bs!843966 () Bool)

(assert (= bs!843966 (and d!1385204 d!1385072)))

(assert (=> bs!843966 (= lambda!169709 lambda!169665)))

(declare-fun bs!843967 () Bool)

(assert (= bs!843967 (and d!1385204 d!1385114)))

(assert (=> bs!843967 (= lambda!169709 lambda!169684)))

(declare-fun bs!843968 () Bool)

(assert (= bs!843968 (and d!1385204 d!1385142)))

(assert (=> bs!843968 (= lambda!169709 lambda!169692)))

(declare-fun bs!843969 () Bool)

(assert (= bs!843969 (and d!1385204 d!1385200)))

(assert (=> bs!843969 (= lambda!169709 lambda!169708)))

(declare-fun bs!843970 () Bool)

(assert (= bs!843970 (and d!1385204 d!1385198)))

(assert (=> bs!843970 (= lambda!169709 lambda!169705)))

(declare-fun bs!843971 () Bool)

(assert (= bs!843971 (and d!1385204 start!445076)))

(assert (=> bs!843971 (= lambda!169709 lambda!169659)))

(declare-fun bs!843972 () Bool)

(assert (= bs!843972 (and d!1385204 d!1385064)))

(assert (=> bs!843972 (not (= lambda!169709 lambda!169662))))

(declare-fun lt!1685423 () ListMap!3533)

(assert (=> d!1385204 (invariantList!991 (toList!4272 lt!1685423))))

(declare-fun e!2807258 () ListMap!3533)

(assert (=> d!1385204 (= lt!1685423 e!2807258)))

(declare-fun c!768503 () Bool)

(assert (=> d!1385204 (= c!768503 ((_ is Cons!50565) (toList!4271 lt!1685214)))))

(assert (=> d!1385204 (forall!10197 (toList!4271 lt!1685214) lambda!169709)))

(assert (=> d!1385204 (= (extractMap!1188 (toList!4271 lt!1685214)) lt!1685423)))

(declare-fun b!4506332 () Bool)

(assert (=> b!4506332 (= e!2807258 (addToMapMapFromBucket!659 (_2!28776 (h!56392 (toList!4271 lt!1685214))) (extractMap!1188 (t!357651 (toList!4271 lt!1685214)))))))

(declare-fun b!4506333 () Bool)

(assert (=> b!4506333 (= e!2807258 (ListMap!3534 Nil!50564))))

(assert (= (and d!1385204 c!768503) b!4506332))

(assert (= (and d!1385204 (not c!768503)) b!4506333))

(declare-fun m!5242555 () Bool)

(assert (=> d!1385204 m!5242555))

(declare-fun m!5242557 () Bool)

(assert (=> d!1385204 m!5242557))

(declare-fun m!5242559 () Bool)

(assert (=> b!4506332 m!5242559))

(assert (=> b!4506332 m!5242559))

(declare-fun m!5242561 () Bool)

(assert (=> b!4506332 m!5242561))

(assert (=> b!4506062 d!1385204))

(declare-fun d!1385206 () Bool)

(assert (=> d!1385206 (= (head!9358 lm!1477) (head!9360 (toList!4271 lm!1477)))))

(declare-fun bs!843973 () Bool)

(assert (= bs!843973 d!1385206))

(declare-fun m!5242563 () Bool)

(assert (=> bs!843973 m!5242563))

(assert (=> b!4506062 d!1385206))

(declare-fun d!1385208 () Bool)

(assert (=> d!1385208 (= (eq!589 (extractMap!1188 (toList!4271 lt!1685214)) (-!358 lt!1685210 key!3287)) (= (content!8279 (toList!4272 (extractMap!1188 (toList!4271 lt!1685214)))) (content!8279 (toList!4272 (-!358 lt!1685210 key!3287)))))))

(declare-fun bs!843974 () Bool)

(assert (= bs!843974 d!1385208))

(declare-fun m!5242565 () Bool)

(assert (=> bs!843974 m!5242565))

(declare-fun m!5242567 () Bool)

(assert (=> bs!843974 m!5242567))

(assert (=> b!4506062 d!1385208))

(declare-fun d!1385210 () Bool)

(declare-fun e!2807259 () Bool)

(assert (=> d!1385210 e!2807259))

(declare-fun res!1873921 () Bool)

(assert (=> d!1385210 (=> (not res!1873921) (not e!2807259))))

(declare-fun lt!1685425 () ListLongMap!2903)

(assert (=> d!1385210 (= res!1873921 (contains!13250 lt!1685425 (_1!28776 lt!1685206)))))

(declare-fun lt!1685426 () List!50689)

(assert (=> d!1385210 (= lt!1685425 (ListLongMap!2904 lt!1685426))))

(declare-fun lt!1685424 () Unit!92870)

(declare-fun lt!1685427 () Unit!92870)

(assert (=> d!1385210 (= lt!1685424 lt!1685427)))

(assert (=> d!1385210 (= (getValueByKey!1040 lt!1685426 (_1!28776 lt!1685206)) (Some!11059 (_2!28776 lt!1685206)))))

(assert (=> d!1385210 (= lt!1685427 (lemmaContainsTupThenGetReturnValue!642 lt!1685426 (_1!28776 lt!1685206) (_2!28776 lt!1685206)))))

(assert (=> d!1385210 (= lt!1685426 (insertStrictlySorted!382 (toList!4271 lt!1685220) (_1!28776 lt!1685206) (_2!28776 lt!1685206)))))

(assert (=> d!1385210 (= (+!1486 lt!1685220 lt!1685206) lt!1685425)))

(declare-fun b!4506334 () Bool)

(declare-fun res!1873920 () Bool)

(assert (=> b!4506334 (=> (not res!1873920) (not e!2807259))))

(assert (=> b!4506334 (= res!1873920 (= (getValueByKey!1040 (toList!4271 lt!1685425) (_1!28776 lt!1685206)) (Some!11059 (_2!28776 lt!1685206))))))

(declare-fun b!4506335 () Bool)

(assert (=> b!4506335 (= e!2807259 (contains!13249 (toList!4271 lt!1685425) lt!1685206))))

(assert (= (and d!1385210 res!1873921) b!4506334))

(assert (= (and b!4506334 res!1873920) b!4506335))

(declare-fun m!5242569 () Bool)

(assert (=> d!1385210 m!5242569))

(declare-fun m!5242571 () Bool)

(assert (=> d!1385210 m!5242571))

(declare-fun m!5242573 () Bool)

(assert (=> d!1385210 m!5242573))

(declare-fun m!5242575 () Bool)

(assert (=> d!1385210 m!5242575))

(declare-fun m!5242577 () Bool)

(assert (=> b!4506334 m!5242577))

(declare-fun m!5242579 () Bool)

(assert (=> b!4506335 m!5242579))

(assert (=> b!4506062 d!1385210))

(declare-fun d!1385212 () Bool)

(declare-fun e!2807260 () Bool)

(assert (=> d!1385212 e!2807260))

(declare-fun res!1873923 () Bool)

(assert (=> d!1385212 (=> (not res!1873923) (not e!2807260))))

(declare-fun lt!1685429 () ListLongMap!2903)

(assert (=> d!1385212 (= res!1873923 (contains!13250 lt!1685429 (_1!28776 lt!1685212)))))

(declare-fun lt!1685430 () List!50689)

(assert (=> d!1385212 (= lt!1685429 (ListLongMap!2904 lt!1685430))))

(declare-fun lt!1685428 () Unit!92870)

(declare-fun lt!1685431 () Unit!92870)

(assert (=> d!1385212 (= lt!1685428 lt!1685431)))

(assert (=> d!1385212 (= (getValueByKey!1040 lt!1685430 (_1!28776 lt!1685212)) (Some!11059 (_2!28776 lt!1685212)))))

(assert (=> d!1385212 (= lt!1685431 (lemmaContainsTupThenGetReturnValue!642 lt!1685430 (_1!28776 lt!1685212) (_2!28776 lt!1685212)))))

(assert (=> d!1385212 (= lt!1685430 (insertStrictlySorted!382 (toList!4271 lt!1685220) (_1!28776 lt!1685212) (_2!28776 lt!1685212)))))

(assert (=> d!1385212 (= (+!1486 lt!1685220 lt!1685212) lt!1685429)))

(declare-fun b!4506336 () Bool)

(declare-fun res!1873922 () Bool)

(assert (=> b!4506336 (=> (not res!1873922) (not e!2807260))))

(assert (=> b!4506336 (= res!1873922 (= (getValueByKey!1040 (toList!4271 lt!1685429) (_1!28776 lt!1685212)) (Some!11059 (_2!28776 lt!1685212))))))

(declare-fun b!4506337 () Bool)

(assert (=> b!4506337 (= e!2807260 (contains!13249 (toList!4271 lt!1685429) lt!1685212))))

(assert (= (and d!1385212 res!1873923) b!4506336))

(assert (= (and b!4506336 res!1873922) b!4506337))

(declare-fun m!5242581 () Bool)

(assert (=> d!1385212 m!5242581))

(declare-fun m!5242583 () Bool)

(assert (=> d!1385212 m!5242583))

(declare-fun m!5242585 () Bool)

(assert (=> d!1385212 m!5242585))

(declare-fun m!5242587 () Bool)

(assert (=> d!1385212 m!5242587))

(declare-fun m!5242589 () Bool)

(assert (=> b!4506336 m!5242589))

(declare-fun m!5242591 () Bool)

(assert (=> b!4506337 m!5242591))

(assert (=> b!4506062 d!1385212))

(declare-fun d!1385214 () Bool)

(declare-fun e!2807263 () Bool)

(assert (=> d!1385214 e!2807263))

(declare-fun res!1873926 () Bool)

(assert (=> d!1385214 (=> (not res!1873926) (not e!2807263))))

(declare-fun lt!1685434 () ListMap!3533)

(assert (=> d!1385214 (= res!1873926 (not (contains!13251 lt!1685434 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!115 (List!50688 K!11970) List!50688)

(assert (=> d!1385214 (= lt!1685434 (ListMap!3534 (removePresrvNoDuplicatedKeys!115 (toList!4272 lt!1685210) key!3287)))))

(assert (=> d!1385214 (= (-!358 lt!1685210 key!3287) lt!1685434)))

(declare-fun b!4506340 () Bool)

(declare-fun content!8281 (List!50691) (InoxSet K!11970))

(assert (=> b!4506340 (= e!2807263 (= ((_ map and) (content!8281 (keys!17540 lt!1685210)) ((_ map not) (store ((as const (Array K!11970 Bool)) false) key!3287 true))) (content!8281 (keys!17540 lt!1685434))))))

(assert (= (and d!1385214 res!1873926) b!4506340))

(declare-fun m!5242593 () Bool)

(assert (=> d!1385214 m!5242593))

(declare-fun m!5242595 () Bool)

(assert (=> d!1385214 m!5242595))

(assert (=> b!4506340 m!5242425))

(declare-fun m!5242597 () Bool)

(assert (=> b!4506340 m!5242597))

(declare-fun m!5242599 () Bool)

(assert (=> b!4506340 m!5242599))

(declare-fun m!5242601 () Bool)

(assert (=> b!4506340 m!5242601))

(assert (=> b!4506340 m!5242599))

(declare-fun m!5242603 () Bool)

(assert (=> b!4506340 m!5242603))

(assert (=> b!4506340 m!5242425))

(assert (=> b!4506062 d!1385214))

(declare-fun bs!843975 () Bool)

(declare-fun d!1385216 () Bool)

(assert (= bs!843975 (and d!1385216 d!1385162)))

(declare-fun lambda!169710 () Int)

(assert (=> bs!843975 (= lambda!169710 lambda!169694)))

(declare-fun bs!843976 () Bool)

(assert (= bs!843976 (and d!1385216 d!1385072)))

(assert (=> bs!843976 (= lambda!169710 lambda!169665)))

(declare-fun bs!843977 () Bool)

(assert (= bs!843977 (and d!1385216 d!1385114)))

(assert (=> bs!843977 (= lambda!169710 lambda!169684)))

(declare-fun bs!843978 () Bool)

(assert (= bs!843978 (and d!1385216 d!1385142)))

(assert (=> bs!843978 (= lambda!169710 lambda!169692)))

(declare-fun bs!843979 () Bool)

(assert (= bs!843979 (and d!1385216 d!1385200)))

(assert (=> bs!843979 (= lambda!169710 lambda!169708)))

(declare-fun bs!843980 () Bool)

(assert (= bs!843980 (and d!1385216 d!1385204)))

(assert (=> bs!843980 (= lambda!169710 lambda!169709)))

(declare-fun bs!843981 () Bool)

(assert (= bs!843981 (and d!1385216 d!1385198)))

(assert (=> bs!843981 (= lambda!169710 lambda!169705)))

(declare-fun bs!843982 () Bool)

(assert (= bs!843982 (and d!1385216 start!445076)))

(assert (=> bs!843982 (= lambda!169710 lambda!169659)))

(declare-fun bs!843983 () Bool)

(assert (= bs!843983 (and d!1385216 d!1385064)))

(assert (=> bs!843983 (not (= lambda!169710 lambda!169662))))

(declare-fun lt!1685435 () ListMap!3533)

(assert (=> d!1385216 (invariantList!991 (toList!4272 lt!1685435))))

(declare-fun e!2807264 () ListMap!3533)

(assert (=> d!1385216 (= lt!1685435 e!2807264)))

(declare-fun c!768504 () Bool)

(assert (=> d!1385216 (= c!768504 ((_ is Cons!50565) (toList!4271 (+!1486 lt!1685220 lt!1685206))))))

(assert (=> d!1385216 (forall!10197 (toList!4271 (+!1486 lt!1685220 lt!1685206)) lambda!169710)))

(assert (=> d!1385216 (= (extractMap!1188 (toList!4271 (+!1486 lt!1685220 lt!1685206))) lt!1685435)))

(declare-fun b!4506341 () Bool)

(assert (=> b!4506341 (= e!2807264 (addToMapMapFromBucket!659 (_2!28776 (h!56392 (toList!4271 (+!1486 lt!1685220 lt!1685206)))) (extractMap!1188 (t!357651 (toList!4271 (+!1486 lt!1685220 lt!1685206))))))))

(declare-fun b!4506342 () Bool)

(assert (=> b!4506342 (= e!2807264 (ListMap!3534 Nil!50564))))

(assert (= (and d!1385216 c!768504) b!4506341))

(assert (= (and d!1385216 (not c!768504)) b!4506342))

(declare-fun m!5242605 () Bool)

(assert (=> d!1385216 m!5242605))

(declare-fun m!5242607 () Bool)

(assert (=> d!1385216 m!5242607))

(declare-fun m!5242609 () Bool)

(assert (=> b!4506341 m!5242609))

(assert (=> b!4506341 m!5242609))

(declare-fun m!5242611 () Bool)

(assert (=> b!4506341 m!5242611))

(assert (=> b!4506062 d!1385216))

(declare-fun d!1385218 () Bool)

(declare-fun res!1873934 () Bool)

(declare-fun e!2807273 () Bool)

(assert (=> d!1385218 (=> res!1873934 e!2807273)))

(declare-fun e!2807272 () Bool)

(assert (=> d!1385218 (= res!1873934 e!2807272)))

(declare-fun res!1873933 () Bool)

(assert (=> d!1385218 (=> (not res!1873933) (not e!2807272))))

(assert (=> d!1385218 (= res!1873933 ((_ is Cons!50565) (t!357651 (toList!4271 lm!1477))))))

(assert (=> d!1385218 (= (containsKeyBiggerList!112 (t!357651 (toList!4271 lm!1477)) key!3287) e!2807273)))

(declare-fun b!4506349 () Bool)

(assert (=> b!4506349 (= e!2807272 (containsKey!1700 (_2!28776 (h!56392 (t!357651 (toList!4271 lm!1477)))) key!3287))))

(declare-fun b!4506350 () Bool)

(declare-fun e!2807271 () Bool)

(assert (=> b!4506350 (= e!2807273 e!2807271)))

(declare-fun res!1873935 () Bool)

(assert (=> b!4506350 (=> (not res!1873935) (not e!2807271))))

(assert (=> b!4506350 (= res!1873935 ((_ is Cons!50565) (t!357651 (toList!4271 lm!1477))))))

(declare-fun b!4506351 () Bool)

(assert (=> b!4506351 (= e!2807271 (containsKeyBiggerList!112 (t!357651 (t!357651 (toList!4271 lm!1477))) key!3287))))

(assert (= (and d!1385218 res!1873933) b!4506349))

(assert (= (and d!1385218 (not res!1873934)) b!4506350))

(assert (= (and b!4506350 res!1873935) b!4506351))

(declare-fun m!5242613 () Bool)

(assert (=> b!4506349 m!5242613))

(declare-fun m!5242615 () Bool)

(assert (=> b!4506351 m!5242615))

(assert (=> b!4506063 d!1385218))

(declare-fun d!1385220 () Bool)

(declare-fun res!1873937 () Bool)

(declare-fun e!2807276 () Bool)

(assert (=> d!1385220 (=> res!1873937 e!2807276)))

(declare-fun e!2807275 () Bool)

(assert (=> d!1385220 (= res!1873937 e!2807275)))

(declare-fun res!1873936 () Bool)

(assert (=> d!1385220 (=> (not res!1873936) (not e!2807275))))

(assert (=> d!1385220 (= res!1873936 ((_ is Cons!50565) (toList!4271 lt!1685220)))))

(assert (=> d!1385220 (= (containsKeyBiggerList!112 (toList!4271 lt!1685220) key!3287) e!2807276)))

(declare-fun b!4506352 () Bool)

(assert (=> b!4506352 (= e!2807275 (containsKey!1700 (_2!28776 (h!56392 (toList!4271 lt!1685220))) key!3287))))

(declare-fun b!4506353 () Bool)

(declare-fun e!2807274 () Bool)

(assert (=> b!4506353 (= e!2807276 e!2807274)))

(declare-fun res!1873938 () Bool)

(assert (=> b!4506353 (=> (not res!1873938) (not e!2807274))))

(assert (=> b!4506353 (= res!1873938 ((_ is Cons!50565) (toList!4271 lt!1685220)))))

(declare-fun b!4506354 () Bool)

(assert (=> b!4506354 (= e!2807274 (containsKeyBiggerList!112 (t!357651 (toList!4271 lt!1685220)) key!3287))))

(assert (= (and d!1385220 res!1873936) b!4506352))

(assert (= (and d!1385220 (not res!1873937)) b!4506353))

(assert (= (and b!4506353 res!1873938) b!4506354))

(declare-fun m!5242617 () Bool)

(assert (=> b!4506352 m!5242617))

(declare-fun m!5242619 () Bool)

(assert (=> b!4506354 m!5242619))

(assert (=> b!4506063 d!1385220))

(declare-fun bs!843984 () Bool)

(declare-fun d!1385222 () Bool)

(assert (= bs!843984 (and d!1385222 d!1385162)))

(declare-fun lambda!169713 () Int)

(assert (=> bs!843984 (= lambda!169713 lambda!169694)))

(declare-fun bs!843985 () Bool)

(assert (= bs!843985 (and d!1385222 d!1385216)))

(assert (=> bs!843985 (= lambda!169713 lambda!169710)))

(declare-fun bs!843986 () Bool)

(assert (= bs!843986 (and d!1385222 d!1385072)))

(assert (=> bs!843986 (= lambda!169713 lambda!169665)))

(declare-fun bs!843987 () Bool)

(assert (= bs!843987 (and d!1385222 d!1385114)))

(assert (=> bs!843987 (= lambda!169713 lambda!169684)))

(declare-fun bs!843988 () Bool)

(assert (= bs!843988 (and d!1385222 d!1385142)))

(assert (=> bs!843988 (= lambda!169713 lambda!169692)))

(declare-fun bs!843989 () Bool)

(assert (= bs!843989 (and d!1385222 d!1385200)))

(assert (=> bs!843989 (= lambda!169713 lambda!169708)))

(declare-fun bs!843990 () Bool)

(assert (= bs!843990 (and d!1385222 d!1385204)))

(assert (=> bs!843990 (= lambda!169713 lambda!169709)))

(declare-fun bs!843991 () Bool)

(assert (= bs!843991 (and d!1385222 d!1385198)))

(assert (=> bs!843991 (= lambda!169713 lambda!169705)))

(declare-fun bs!843992 () Bool)

(assert (= bs!843992 (and d!1385222 start!445076)))

(assert (=> bs!843992 (= lambda!169713 lambda!169659)))

(declare-fun bs!843993 () Bool)

(assert (= bs!843993 (and d!1385222 d!1385064)))

(assert (=> bs!843993 (not (= lambda!169713 lambda!169662))))

(assert (=> d!1385222 (containsKeyBiggerList!112 (toList!4271 lt!1685220) key!3287)))

(declare-fun lt!1685438 () Unit!92870)

(declare-fun choose!29220 (ListLongMap!2903 K!11970 Hashable!5527) Unit!92870)

(assert (=> d!1385222 (= lt!1685438 (choose!29220 lt!1685220 key!3287 hashF!1107))))

(assert (=> d!1385222 (forall!10197 (toList!4271 lt!1685220) lambda!169713)))

(assert (=> d!1385222 (= (lemmaInLongMapThenContainsKeyBiggerList!48 lt!1685220 key!3287 hashF!1107) lt!1685438)))

(declare-fun bs!843994 () Bool)

(assert (= bs!843994 d!1385222))

(assert (=> bs!843994 m!5242033))

(declare-fun m!5242621 () Bool)

(assert (=> bs!843994 m!5242621))

(declare-fun m!5242623 () Bool)

(assert (=> bs!843994 m!5242623))

(assert (=> b!4506063 d!1385222))

(declare-fun d!1385224 () Bool)

(declare-fun lt!1685441 () List!50688)

(assert (=> d!1385224 (not (containsKey!1700 lt!1685441 key!3287))))

(declare-fun e!2807281 () List!50688)

(assert (=> d!1385224 (= lt!1685441 e!2807281)))

(declare-fun c!768509 () Bool)

(assert (=> d!1385224 (= c!768509 (and ((_ is Cons!50564) lt!1685224) (= (_1!28775 (h!56391 lt!1685224)) key!3287)))))

(assert (=> d!1385224 (noDuplicateKeys!1132 lt!1685224)))

(assert (=> d!1385224 (= (removePairForKey!759 lt!1685224 key!3287) lt!1685441)))

(declare-fun b!4506364 () Bool)

(declare-fun e!2807282 () List!50688)

(assert (=> b!4506364 (= e!2807281 e!2807282)))

(declare-fun c!768510 () Bool)

(assert (=> b!4506364 (= c!768510 ((_ is Cons!50564) lt!1685224))))

(declare-fun b!4506365 () Bool)

(assert (=> b!4506365 (= e!2807282 (Cons!50564 (h!56391 lt!1685224) (removePairForKey!759 (t!357650 lt!1685224) key!3287)))))

(declare-fun b!4506363 () Bool)

(assert (=> b!4506363 (= e!2807281 (t!357650 lt!1685224))))

(declare-fun b!4506366 () Bool)

(assert (=> b!4506366 (= e!2807282 Nil!50564)))

(assert (= (and d!1385224 c!768509) b!4506363))

(assert (= (and d!1385224 (not c!768509)) b!4506364))

(assert (= (and b!4506364 c!768510) b!4506365))

(assert (= (and b!4506364 (not c!768510)) b!4506366))

(declare-fun m!5242625 () Bool)

(assert (=> d!1385224 m!5242625))

(declare-fun m!5242627 () Bool)

(assert (=> d!1385224 m!5242627))

(declare-fun m!5242629 () Bool)

(assert (=> b!4506365 m!5242629))

(assert (=> b!4506075 d!1385224))

(declare-fun d!1385226 () Bool)

(assert (=> d!1385226 (contains!13249 (toList!4271 lm!1477) (tuple2!50965 hash!344 lt!1685224))))

(declare-fun lt!1685444 () Unit!92870)

(declare-fun choose!29221 (List!50689 (_ BitVec 64) List!50688) Unit!92870)

(assert (=> d!1385226 (= lt!1685444 (choose!29221 (toList!4271 lm!1477) hash!344 lt!1685224))))

(declare-fun e!2807285 () Bool)

(assert (=> d!1385226 e!2807285))

(declare-fun res!1873941 () Bool)

(assert (=> d!1385226 (=> (not res!1873941) (not e!2807285))))

(assert (=> d!1385226 (= res!1873941 (isStrictlySorted!405 (toList!4271 lm!1477)))))

(assert (=> d!1385226 (= (lemmaGetValueByKeyImpliesContainsTuple!644 (toList!4271 lm!1477) hash!344 lt!1685224) lt!1685444)))

(declare-fun b!4506369 () Bool)

(assert (=> b!4506369 (= e!2807285 (= (getValueByKey!1040 (toList!4271 lm!1477) hash!344) (Some!11059 lt!1685224)))))

(assert (= (and d!1385226 res!1873941) b!4506369))

(declare-fun m!5242631 () Bool)

(assert (=> d!1385226 m!5242631))

(declare-fun m!5242633 () Bool)

(assert (=> d!1385226 m!5242633))

(assert (=> d!1385226 m!5242115))

(declare-fun m!5242635 () Bool)

(assert (=> b!4506369 m!5242635))

(assert (=> b!4506075 d!1385226))

(declare-fun bs!843995 () Bool)

(declare-fun d!1385228 () Bool)

(assert (= bs!843995 (and d!1385228 d!1385162)))

(declare-fun lambda!169716 () Int)

(assert (=> bs!843995 (= lambda!169716 lambda!169694)))

(declare-fun bs!843996 () Bool)

(assert (= bs!843996 (and d!1385228 d!1385216)))

(assert (=> bs!843996 (= lambda!169716 lambda!169710)))

(declare-fun bs!843997 () Bool)

(assert (= bs!843997 (and d!1385228 d!1385222)))

(assert (=> bs!843997 (= lambda!169716 lambda!169713)))

(declare-fun bs!843998 () Bool)

(assert (= bs!843998 (and d!1385228 d!1385072)))

(assert (=> bs!843998 (= lambda!169716 lambda!169665)))

(declare-fun bs!843999 () Bool)

(assert (= bs!843999 (and d!1385228 d!1385114)))

(assert (=> bs!843999 (= lambda!169716 lambda!169684)))

(declare-fun bs!844000 () Bool)

(assert (= bs!844000 (and d!1385228 d!1385142)))

(assert (=> bs!844000 (= lambda!169716 lambda!169692)))

(declare-fun bs!844001 () Bool)

(assert (= bs!844001 (and d!1385228 d!1385200)))

(assert (=> bs!844001 (= lambda!169716 lambda!169708)))

(declare-fun bs!844002 () Bool)

(assert (= bs!844002 (and d!1385228 d!1385204)))

(assert (=> bs!844002 (= lambda!169716 lambda!169709)))

(declare-fun bs!844003 () Bool)

(assert (= bs!844003 (and d!1385228 d!1385198)))

(assert (=> bs!844003 (= lambda!169716 lambda!169705)))

(declare-fun bs!844004 () Bool)

(assert (= bs!844004 (and d!1385228 start!445076)))

(assert (=> bs!844004 (= lambda!169716 lambda!169659)))

(declare-fun bs!844005 () Bool)

(assert (= bs!844005 (and d!1385228 d!1385064)))

(assert (=> bs!844005 (not (= lambda!169716 lambda!169662))))

(assert (=> d!1385228 (contains!13250 lm!1477 (hash!2715 hashF!1107 key!3287))))

(declare-fun lt!1685447 () Unit!92870)

(declare-fun choose!29222 (ListLongMap!2903 K!11970 Hashable!5527) Unit!92870)

(assert (=> d!1385228 (= lt!1685447 (choose!29222 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1385228 (forall!10197 (toList!4271 lm!1477) lambda!169716)))

(assert (=> d!1385228 (= (lemmaInGenMapThenLongMapContainsHash!206 lm!1477 key!3287 hashF!1107) lt!1685447)))

(declare-fun bs!844006 () Bool)

(assert (= bs!844006 d!1385228))

(assert (=> bs!844006 m!5242017))

(assert (=> bs!844006 m!5242017))

(declare-fun m!5242637 () Bool)

(assert (=> bs!844006 m!5242637))

(declare-fun m!5242639 () Bool)

(assert (=> bs!844006 m!5242639))

(declare-fun m!5242641 () Bool)

(assert (=> bs!844006 m!5242641))

(assert (=> b!4506075 d!1385228))

(declare-fun d!1385230 () Bool)

(assert (=> d!1385230 (= (apply!11869 lm!1477 hash!344) (get!16536 (getValueByKey!1040 (toList!4271 lm!1477) hash!344)))))

(declare-fun bs!844007 () Bool)

(assert (= bs!844007 d!1385230))

(assert (=> bs!844007 m!5242635))

(assert (=> bs!844007 m!5242635))

(declare-fun m!5242643 () Bool)

(assert (=> bs!844007 m!5242643))

(assert (=> b!4506075 d!1385230))

(declare-fun d!1385232 () Bool)

(assert (=> d!1385232 (dynLambda!21125 lambda!169659 lt!1685218)))

(declare-fun lt!1685450 () Unit!92870)

(declare-fun choose!29223 (List!50689 Int tuple2!50964) Unit!92870)

(assert (=> d!1385232 (= lt!1685450 (choose!29223 (toList!4271 lm!1477) lambda!169659 lt!1685218))))

(declare-fun e!2807288 () Bool)

(assert (=> d!1385232 e!2807288))

(declare-fun res!1873944 () Bool)

(assert (=> d!1385232 (=> (not res!1873944) (not e!2807288))))

(assert (=> d!1385232 (= res!1873944 (forall!10197 (toList!4271 lm!1477) lambda!169659))))

(assert (=> d!1385232 (= (forallContained!2451 (toList!4271 lm!1477) lambda!169659 lt!1685218) lt!1685450)))

(declare-fun b!4506372 () Bool)

(assert (=> b!4506372 (= e!2807288 (contains!13249 (toList!4271 lm!1477) lt!1685218))))

(assert (= (and d!1385232 res!1873944) b!4506372))

(declare-fun b_lambda!153361 () Bool)

(assert (=> (not b_lambda!153361) (not d!1385232)))

(declare-fun m!5242645 () Bool)

(assert (=> d!1385232 m!5242645))

(declare-fun m!5242647 () Bool)

(assert (=> d!1385232 m!5242647))

(assert (=> d!1385232 m!5242085))

(assert (=> b!4506372 m!5242045))

(assert (=> b!4506075 d!1385232))

(declare-fun d!1385234 () Bool)

(declare-fun e!2807289 () Bool)

(assert (=> d!1385234 e!2807289))

(declare-fun res!1873945 () Bool)

(assert (=> d!1385234 (=> res!1873945 e!2807289)))

(declare-fun lt!1685452 () Bool)

(assert (=> d!1385234 (= res!1873945 (not lt!1685452))))

(declare-fun lt!1685453 () Bool)

(assert (=> d!1385234 (= lt!1685452 lt!1685453)))

(declare-fun lt!1685454 () Unit!92870)

(declare-fun e!2807290 () Unit!92870)

(assert (=> d!1385234 (= lt!1685454 e!2807290)))

(declare-fun c!768511 () Bool)

(assert (=> d!1385234 (= c!768511 lt!1685453)))

(assert (=> d!1385234 (= lt!1685453 (containsKey!1704 (toList!4271 lm!1477) lt!1685223))))

(assert (=> d!1385234 (= (contains!13250 lm!1477 lt!1685223) lt!1685452)))

(declare-fun b!4506373 () Bool)

(declare-fun lt!1685451 () Unit!92870)

(assert (=> b!4506373 (= e!2807290 lt!1685451)))

(assert (=> b!4506373 (= lt!1685451 (lemmaContainsKeyImpliesGetValueByKeyDefined!945 (toList!4271 lm!1477) lt!1685223))))

(assert (=> b!4506373 (isDefined!8348 (getValueByKey!1040 (toList!4271 lm!1477) lt!1685223))))

(declare-fun b!4506374 () Bool)

(declare-fun Unit!92887 () Unit!92870)

(assert (=> b!4506374 (= e!2807290 Unit!92887)))

(declare-fun b!4506375 () Bool)

(assert (=> b!4506375 (= e!2807289 (isDefined!8348 (getValueByKey!1040 (toList!4271 lm!1477) lt!1685223)))))

(assert (= (and d!1385234 c!768511) b!4506373))

(assert (= (and d!1385234 (not c!768511)) b!4506374))

(assert (= (and d!1385234 (not res!1873945)) b!4506375))

(declare-fun m!5242649 () Bool)

(assert (=> d!1385234 m!5242649))

(declare-fun m!5242651 () Bool)

(assert (=> b!4506373 m!5242651))

(declare-fun m!5242653 () Bool)

(assert (=> b!4506373 m!5242653))

(assert (=> b!4506373 m!5242653))

(declare-fun m!5242655 () Bool)

(assert (=> b!4506373 m!5242655))

(assert (=> b!4506375 m!5242653))

(assert (=> b!4506375 m!5242653))

(assert (=> b!4506375 m!5242655))

(assert (=> b!4506075 d!1385234))

(declare-fun d!1385236 () Bool)

(declare-fun lt!1685455 () Bool)

(assert (=> d!1385236 (= lt!1685455 (select (content!8278 (toList!4271 lm!1477)) lt!1685218))))

(declare-fun e!2807292 () Bool)

(assert (=> d!1385236 (= lt!1685455 e!2807292)))

(declare-fun res!1873947 () Bool)

(assert (=> d!1385236 (=> (not res!1873947) (not e!2807292))))

(assert (=> d!1385236 (= res!1873947 ((_ is Cons!50565) (toList!4271 lm!1477)))))

(assert (=> d!1385236 (= (contains!13249 (toList!4271 lm!1477) lt!1685218) lt!1685455)))

(declare-fun b!4506376 () Bool)

(declare-fun e!2807291 () Bool)

(assert (=> b!4506376 (= e!2807292 e!2807291)))

(declare-fun res!1873946 () Bool)

(assert (=> b!4506376 (=> res!1873946 e!2807291)))

(assert (=> b!4506376 (= res!1873946 (= (h!56392 (toList!4271 lm!1477)) lt!1685218))))

(declare-fun b!4506377 () Bool)

(assert (=> b!4506377 (= e!2807291 (contains!13249 (t!357651 (toList!4271 lm!1477)) lt!1685218))))

(assert (= (and d!1385236 res!1873947) b!4506376))

(assert (= (and b!4506376 (not res!1873946)) b!4506377))

(declare-fun m!5242657 () Bool)

(assert (=> d!1385236 m!5242657))

(declare-fun m!5242659 () Bool)

(assert (=> d!1385236 m!5242659))

(assert (=> b!4506377 m!5242097))

(assert (=> b!4506075 d!1385236))

(declare-fun b!4506378 () Bool)

(declare-fun e!2807294 () Unit!92870)

(declare-fun lt!1685457 () Unit!92870)

(assert (=> b!4506378 (= e!2807294 lt!1685457)))

(declare-fun lt!1685463 () Unit!92870)

(assert (=> b!4506378 (= lt!1685463 (lemmaContainsKeyImpliesGetValueByKeyDefined!944 (toList!4272 lt!1685207) key!3287))))

(assert (=> b!4506378 (isDefined!8347 (getValueByKey!1041 (toList!4272 lt!1685207) key!3287))))

(declare-fun lt!1685462 () Unit!92870)

(assert (=> b!4506378 (= lt!1685462 lt!1685463)))

(assert (=> b!4506378 (= lt!1685457 (lemmaInListThenGetKeysListContains!435 (toList!4272 lt!1685207) key!3287))))

(declare-fun call!313747 () Bool)

(assert (=> b!4506378 call!313747))

(declare-fun b!4506379 () Bool)

(declare-fun e!2807293 () List!50691)

(assert (=> b!4506379 (= e!2807293 (keys!17540 lt!1685207))))

(declare-fun b!4506380 () Bool)

(declare-fun e!2807296 () Bool)

(assert (=> b!4506380 (= e!2807296 (not (contains!13253 (keys!17540 lt!1685207) key!3287)))))

(declare-fun b!4506381 () Bool)

(assert (=> b!4506381 (= e!2807293 (getKeysList!439 (toList!4272 lt!1685207)))))

(declare-fun b!4506382 () Bool)

(assert (=> b!4506382 false))

(declare-fun lt!1685456 () Unit!92870)

(declare-fun lt!1685459 () Unit!92870)

(assert (=> b!4506382 (= lt!1685456 lt!1685459)))

(assert (=> b!4506382 (containsKey!1703 (toList!4272 lt!1685207) key!3287)))

(assert (=> b!4506382 (= lt!1685459 (lemmaInGetKeysListThenContainsKey!438 (toList!4272 lt!1685207) key!3287))))

(declare-fun e!2807295 () Unit!92870)

(declare-fun Unit!92888 () Unit!92870)

(assert (=> b!4506382 (= e!2807295 Unit!92888)))

(declare-fun b!4506383 () Bool)

(assert (=> b!4506383 (= e!2807294 e!2807295)))

(declare-fun c!768512 () Bool)

(assert (=> b!4506383 (= c!768512 call!313747)))

(declare-fun b!4506384 () Bool)

(declare-fun e!2807298 () Bool)

(declare-fun e!2807297 () Bool)

(assert (=> b!4506384 (= e!2807298 e!2807297)))

(declare-fun res!1873949 () Bool)

(assert (=> b!4506384 (=> (not res!1873949) (not e!2807297))))

(assert (=> b!4506384 (= res!1873949 (isDefined!8347 (getValueByKey!1041 (toList!4272 lt!1685207) key!3287)))))

(declare-fun bm!313742 () Bool)

(assert (=> bm!313742 (= call!313747 (contains!13253 e!2807293 key!3287))))

(declare-fun c!768514 () Bool)

(declare-fun c!768513 () Bool)

(assert (=> bm!313742 (= c!768514 c!768513)))

(declare-fun b!4506386 () Bool)

(assert (=> b!4506386 (= e!2807297 (contains!13253 (keys!17540 lt!1685207) key!3287))))

(declare-fun b!4506385 () Bool)

(declare-fun Unit!92889 () Unit!92870)

(assert (=> b!4506385 (= e!2807295 Unit!92889)))

(declare-fun d!1385238 () Bool)

(assert (=> d!1385238 e!2807298))

(declare-fun res!1873950 () Bool)

(assert (=> d!1385238 (=> res!1873950 e!2807298)))

(assert (=> d!1385238 (= res!1873950 e!2807296)))

(declare-fun res!1873948 () Bool)

(assert (=> d!1385238 (=> (not res!1873948) (not e!2807296))))

(declare-fun lt!1685458 () Bool)

(assert (=> d!1385238 (= res!1873948 (not lt!1685458))))

(declare-fun lt!1685461 () Bool)

(assert (=> d!1385238 (= lt!1685458 lt!1685461)))

(declare-fun lt!1685460 () Unit!92870)

(assert (=> d!1385238 (= lt!1685460 e!2807294)))

(assert (=> d!1385238 (= c!768513 lt!1685461)))

(assert (=> d!1385238 (= lt!1685461 (containsKey!1703 (toList!4272 lt!1685207) key!3287))))

(assert (=> d!1385238 (= (contains!13251 lt!1685207 key!3287) lt!1685458)))

(assert (= (and d!1385238 c!768513) b!4506378))

(assert (= (and d!1385238 (not c!768513)) b!4506383))

(assert (= (and b!4506383 c!768512) b!4506382))

(assert (= (and b!4506383 (not c!768512)) b!4506385))

(assert (= (or b!4506378 b!4506383) bm!313742))

(assert (= (and bm!313742 c!768514) b!4506381))

(assert (= (and bm!313742 (not c!768514)) b!4506379))

(assert (= (and d!1385238 res!1873948) b!4506380))

(assert (= (and d!1385238 (not res!1873950)) b!4506384))

(assert (= (and b!4506384 res!1873949) b!4506386))

(declare-fun m!5242661 () Bool)

(assert (=> b!4506380 m!5242661))

(assert (=> b!4506380 m!5242661))

(declare-fun m!5242663 () Bool)

(assert (=> b!4506380 m!5242663))

(declare-fun m!5242665 () Bool)

(assert (=> d!1385238 m!5242665))

(declare-fun m!5242667 () Bool)

(assert (=> b!4506384 m!5242667))

(assert (=> b!4506384 m!5242667))

(declare-fun m!5242669 () Bool)

(assert (=> b!4506384 m!5242669))

(declare-fun m!5242671 () Bool)

(assert (=> b!4506378 m!5242671))

(assert (=> b!4506378 m!5242667))

(assert (=> b!4506378 m!5242667))

(assert (=> b!4506378 m!5242669))

(declare-fun m!5242673 () Bool)

(assert (=> b!4506378 m!5242673))

(assert (=> b!4506382 m!5242665))

(declare-fun m!5242675 () Bool)

(assert (=> b!4506382 m!5242675))

(declare-fun m!5242677 () Bool)

(assert (=> b!4506381 m!5242677))

(declare-fun m!5242679 () Bool)

(assert (=> bm!313742 m!5242679))

(assert (=> b!4506386 m!5242661))

(assert (=> b!4506386 m!5242661))

(assert (=> b!4506386 m!5242663))

(assert (=> b!4506379 m!5242661))

(assert (=> b!4506064 d!1385238))

(declare-fun bs!844008 () Bool)

(declare-fun d!1385240 () Bool)

(assert (= bs!844008 (and d!1385240 d!1385162)))

(declare-fun lambda!169717 () Int)

(assert (=> bs!844008 (= lambda!169717 lambda!169694)))

(declare-fun bs!844009 () Bool)

(assert (= bs!844009 (and d!1385240 d!1385216)))

(assert (=> bs!844009 (= lambda!169717 lambda!169710)))

(declare-fun bs!844010 () Bool)

(assert (= bs!844010 (and d!1385240 d!1385222)))

(assert (=> bs!844010 (= lambda!169717 lambda!169713)))

(declare-fun bs!844011 () Bool)

(assert (= bs!844011 (and d!1385240 d!1385072)))

(assert (=> bs!844011 (= lambda!169717 lambda!169665)))

(declare-fun bs!844012 () Bool)

(assert (= bs!844012 (and d!1385240 d!1385114)))

(assert (=> bs!844012 (= lambda!169717 lambda!169684)))

(declare-fun bs!844013 () Bool)

(assert (= bs!844013 (and d!1385240 d!1385142)))

(assert (=> bs!844013 (= lambda!169717 lambda!169692)))

(declare-fun bs!844014 () Bool)

(assert (= bs!844014 (and d!1385240 d!1385200)))

(assert (=> bs!844014 (= lambda!169717 lambda!169708)))

(declare-fun bs!844015 () Bool)

(assert (= bs!844015 (and d!1385240 d!1385228)))

(assert (=> bs!844015 (= lambda!169717 lambda!169716)))

(declare-fun bs!844016 () Bool)

(assert (= bs!844016 (and d!1385240 d!1385204)))

(assert (=> bs!844016 (= lambda!169717 lambda!169709)))

(declare-fun bs!844017 () Bool)

(assert (= bs!844017 (and d!1385240 d!1385198)))

(assert (=> bs!844017 (= lambda!169717 lambda!169705)))

(declare-fun bs!844018 () Bool)

(assert (= bs!844018 (and d!1385240 start!445076)))

(assert (=> bs!844018 (= lambda!169717 lambda!169659)))

(declare-fun bs!844019 () Bool)

(assert (= bs!844019 (and d!1385240 d!1385064)))

(assert (=> bs!844019 (not (= lambda!169717 lambda!169662))))

(declare-fun lt!1685464 () ListMap!3533)

(assert (=> d!1385240 (invariantList!991 (toList!4272 lt!1685464))))

(declare-fun e!2807299 () ListMap!3533)

(assert (=> d!1385240 (= lt!1685464 e!2807299)))

(declare-fun c!768515 () Bool)

(assert (=> d!1385240 (= c!768515 ((_ is Cons!50565) (toList!4271 lm!1477)))))

(assert (=> d!1385240 (forall!10197 (toList!4271 lm!1477) lambda!169717)))

(assert (=> d!1385240 (= (extractMap!1188 (toList!4271 lm!1477)) lt!1685464)))

(declare-fun b!4506387 () Bool)

(assert (=> b!4506387 (= e!2807299 (addToMapMapFromBucket!659 (_2!28776 (h!56392 (toList!4271 lm!1477))) (extractMap!1188 (t!357651 (toList!4271 lm!1477)))))))

(declare-fun b!4506388 () Bool)

(assert (=> b!4506388 (= e!2807299 (ListMap!3534 Nil!50564))))

(assert (= (and d!1385240 c!768515) b!4506387))

(assert (= (and d!1385240 (not c!768515)) b!4506388))

(declare-fun m!5242681 () Bool)

(assert (=> d!1385240 m!5242681))

(declare-fun m!5242683 () Bool)

(assert (=> d!1385240 m!5242683))

(assert (=> b!4506387 m!5242021))

(assert (=> b!4506387 m!5242021))

(declare-fun m!5242685 () Bool)

(assert (=> b!4506387 m!5242685))

(assert (=> b!4506064 d!1385240))

(declare-fun d!1385242 () Bool)

(declare-fun res!1873955 () Bool)

(declare-fun e!2807304 () Bool)

(assert (=> d!1385242 (=> res!1873955 e!2807304)))

(assert (=> d!1385242 (= res!1873955 (not ((_ is Cons!50564) newBucket!178)))))

(assert (=> d!1385242 (= (noDuplicateKeys!1132 newBucket!178) e!2807304)))

(declare-fun b!4506393 () Bool)

(declare-fun e!2807305 () Bool)

(assert (=> b!4506393 (= e!2807304 e!2807305)))

(declare-fun res!1873956 () Bool)

(assert (=> b!4506393 (=> (not res!1873956) (not e!2807305))))

(assert (=> b!4506393 (= res!1873956 (not (containsKey!1700 (t!357650 newBucket!178) (_1!28775 (h!56391 newBucket!178)))))))

(declare-fun b!4506394 () Bool)

(assert (=> b!4506394 (= e!2807305 (noDuplicateKeys!1132 (t!357650 newBucket!178)))))

(assert (= (and d!1385242 (not res!1873955)) b!4506393))

(assert (= (and b!4506393 res!1873956) b!4506394))

(declare-fun m!5242687 () Bool)

(assert (=> b!4506393 m!5242687))

(declare-fun m!5242689 () Bool)

(assert (=> b!4506394 m!5242689))

(assert (=> b!4506065 d!1385242))

(declare-fun b!4506399 () Bool)

(declare-fun e!2807308 () Bool)

(declare-fun tp!1337645 () Bool)

(declare-fun tp!1337646 () Bool)

(assert (=> b!4506399 (= e!2807308 (and tp!1337645 tp!1337646))))

(assert (=> b!4506078 (= tp!1337630 e!2807308)))

(assert (= (and b!4506078 ((_ is Cons!50565) (toList!4271 lm!1477))) b!4506399))

(declare-fun b!4506404 () Bool)

(declare-fun tp!1337649 () Bool)

(declare-fun e!2807311 () Bool)

(assert (=> b!4506404 (= e!2807311 (and tp_is_empty!27805 tp_is_empty!27807 tp!1337649))))

(assert (=> b!4506066 (= tp!1337631 e!2807311)))

(assert (= (and b!4506066 ((_ is Cons!50564) (t!357650 newBucket!178))) b!4506404))

(declare-fun b_lambda!153363 () Bool)

(assert (= b_lambda!153345 (or start!445076 b_lambda!153363)))

(declare-fun bs!844020 () Bool)

(declare-fun d!1385244 () Bool)

(assert (= bs!844020 (and d!1385244 start!445076)))

(assert (=> bs!844020 (= (dynLambda!21125 lambda!169659 (h!56392 (toList!4271 lm!1477))) (noDuplicateKeys!1132 (_2!28776 (h!56392 (toList!4271 lm!1477)))))))

(declare-fun m!5242691 () Bool)

(assert (=> bs!844020 m!5242691))

(assert (=> b!4506087 d!1385244))

(declare-fun b_lambda!153365 () Bool)

(assert (= b_lambda!153359 (or start!445076 b_lambda!153365)))

(declare-fun bs!844021 () Bool)

(declare-fun d!1385246 () Bool)

(assert (= bs!844021 (and d!1385246 start!445076)))

(assert (=> bs!844021 (= (dynLambda!21125 lambda!169659 (h!56392 (toList!4271 lt!1685214))) (noDuplicateKeys!1132 (_2!28776 (h!56392 (toList!4271 lt!1685214)))))))

(declare-fun m!5242693 () Bool)

(assert (=> bs!844021 m!5242693))

(assert (=> b!4506328 d!1385246))

(declare-fun b_lambda!153367 () Bool)

(assert (= b_lambda!153361 (or start!445076 b_lambda!153367)))

(declare-fun bs!844022 () Bool)

(declare-fun d!1385248 () Bool)

(assert (= bs!844022 (and d!1385248 start!445076)))

(assert (=> bs!844022 (= (dynLambda!21125 lambda!169659 lt!1685218) (noDuplicateKeys!1132 (_2!28776 lt!1685218)))))

(declare-fun m!5242695 () Bool)

(assert (=> bs!844022 m!5242695))

(assert (=> d!1385232 d!1385248))

(check-sat (not b!4506271) (not d!1385142) (not d!1385202) (not d!1385184) (not b!4506269) (not b!4506332) (not d!1385240) (not b!4506386) (not d!1385162) (not b_lambda!153365) (not d!1385214) (not b!4506334) (not b!4506337) tp_is_empty!27807 (not d!1385062) (not b!4506336) (not b!4506263) (not b!4506326) (not b!4506375) (not b!4506199) (not b!4506267) (not b!4506242) (not b!4506380) (not bm!313740) (not b!4506341) (not d!1385180) (not b!4506201) (not b!4506354) (not b!4506292) (not d!1385072) (not b!4506330) (not b!4506382) (not b!4506404) (not d!1385198) (not b!4506352) (not b!4506290) (not d!1385080) (not d!1385222) (not b!4506273) (not d!1385236) (not b!4506340) (not d!1385204) (not b!4506399) (not d!1385210) (not d!1385114) (not bm!313742) (not b!4506381) (not d!1385232) (not b!4506351) (not b!4506378) (not d!1385084) (not d!1385064) (not b!4506369) (not bm!313738) (not b!4506377) (not b!4506365) (not b!4506335) (not d!1385238) (not b!4506202) (not d!1385178) (not d!1385224) (not b!4506266) (not d!1385208) (not b!4506329) (not d!1385070) (not d!1385206) (not bs!844020) (not b!4506393) (not d!1385168) (not b!4506372) (not d!1385230) (not b_lambda!153367) (not b!4506200) (not d!1385226) (not d!1385200) (not b_lambda!153363) (not b!4506349) (not d!1385188) (not b!4506379) (not b!4506394) (not b!4506387) (not b!4506384) (not bs!844022) (not b!4506268) (not b!4506207) (not b!4506291) (not b!4506289) (not b!4506203) (not d!1385068) (not d!1385228) (not d!1385212) (not b!4506205) (not b!4506265) (not b!4506303) (not b!4506373) (not bs!844021) (not d!1385234) (not d!1385176) (not d!1385166) (not b!4506127) (not b!4506088) (not d!1385086) tp_is_empty!27805 (not b!4506305) (not d!1385216))
(check-sat)
