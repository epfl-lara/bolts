; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!431932 () Bool)

(assert start!431932)

(declare-fun b!4426537 () Bool)

(declare-fun e!2756198 () Bool)

(declare-fun e!2756190 () Bool)

(assert (=> b!4426537 (= e!2756198 e!2756190)))

(declare-fun res!1830255 () Bool)

(assert (=> b!4426537 (=> (not res!1830255) (not e!2756190))))

(declare-fun e!2756193 () Bool)

(assert (=> b!4426537 (= res!1830255 e!2756193)))

(declare-fun res!1830257 () Bool)

(assert (=> b!4426537 (=> res!1830257 e!2756193)))

(declare-fun e!2756194 () Bool)

(assert (=> b!4426537 (= res!1830257 e!2756194)))

(declare-fun res!1830258 () Bool)

(assert (=> b!4426537 (=> (not res!1830258) (not e!2756194))))

(declare-fun lt!1625859 () Bool)

(assert (=> b!4426537 (= res!1830258 lt!1625859)))

(declare-datatypes ((V!11211 0))(
  ( (V!11212 (val!17043 Int)) )
))
(declare-datatypes ((K!10965 0))(
  ( (K!10966 (val!17044 Int)) )
))
(declare-datatypes ((tuple2!49406 0))(
  ( (tuple2!49407 (_1!27997 K!10965) (_2!27997 V!11211)) )
))
(declare-datatypes ((List!49725 0))(
  ( (Nil!49601) (Cons!49601 (h!55290 tuple2!49406) (t!356663 List!49725)) )
))
(declare-datatypes ((tuple2!49408 0))(
  ( (tuple2!49409 (_1!27998 (_ BitVec 64)) (_2!27998 List!49725)) )
))
(declare-datatypes ((List!49726 0))(
  ( (Nil!49602) (Cons!49602 (h!55291 tuple2!49408) (t!356664 List!49726)) )
))
(declare-datatypes ((ListLongMap!2151 0))(
  ( (ListLongMap!2152 (toList!3501 List!49726)) )
))
(declare-fun lm!1616 () ListLongMap!2151)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!12110 (ListLongMap!2151 (_ BitVec 64)) Bool)

(assert (=> b!4426537 (= lt!1625859 (contains!12110 lm!1616 hash!366))))

(declare-fun b!4426538 () Bool)

(declare-datatypes ((Unit!82115 0))(
  ( (Unit!82116) )
))
(declare-fun e!2756192 () Unit!82115)

(declare-fun Unit!82117 () Unit!82115)

(assert (=> b!4426538 (= e!2756192 Unit!82117)))

(declare-fun res!1830248 () Bool)

(declare-fun e!2756196 () Bool)

(assert (=> start!431932 (=> (not res!1830248) (not e!2756196))))

(declare-fun lambda!154226 () Int)

(declare-fun forall!9574 (List!49726 Int) Bool)

(assert (=> start!431932 (= res!1830248 (forall!9574 (toList!3501 lm!1616) lambda!154226))))

(assert (=> start!431932 e!2756196))

(declare-fun tp_is_empty!26273 () Bool)

(assert (=> start!431932 tp_is_empty!26273))

(declare-fun tp_is_empty!26275 () Bool)

(assert (=> start!431932 tp_is_empty!26275))

(declare-fun e!2756199 () Bool)

(assert (=> start!431932 e!2756199))

(declare-fun e!2756189 () Bool)

(declare-fun inv!65151 (ListLongMap!2151) Bool)

(assert (=> start!431932 (and (inv!65151 lm!1616) e!2756189)))

(assert (=> start!431932 true))

(declare-fun b!4426539 () Bool)

(assert (=> b!4426539 (= e!2756196 e!2756198)))

(declare-fun res!1830251 () Bool)

(assert (=> b!4426539 (=> (not res!1830251) (not e!2756198))))

(declare-datatypes ((ListMap!2745 0))(
  ( (ListMap!2746 (toList!3502 List!49725)) )
))
(declare-fun lt!1625865 () ListMap!2745)

(declare-fun key!3717 () K!10965)

(declare-fun contains!12111 (ListMap!2745 K!10965) Bool)

(assert (=> b!4426539 (= res!1830251 (not (contains!12111 lt!1625865 key!3717)))))

(declare-fun extractMap!818 (List!49726) ListMap!2745)

(assert (=> b!4426539 (= lt!1625865 (extractMap!818 (toList!3501 lm!1616)))))

(declare-fun b!4426540 () Bool)

(declare-fun res!1830254 () Bool)

(assert (=> b!4426540 (=> (not res!1830254) (not e!2756196))))

(declare-datatypes ((Hashable!5151 0))(
  ( (HashableExt!5150 (__x!30854 Int)) )
))
(declare-fun hashF!1220 () Hashable!5151)

(declare-fun hash!2142 (Hashable!5151 K!10965) (_ BitVec 64))

(assert (=> b!4426540 (= res!1830254 (= (hash!2142 hashF!1220 key!3717) hash!366))))

(declare-fun b!4426541 () Bool)

(declare-fun Unit!82118 () Unit!82115)

(assert (=> b!4426541 (= e!2756192 Unit!82118)))

(declare-fun lt!1625856 () Unit!82115)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!44 (ListLongMap!2151 K!10965 Hashable!5151) Unit!82115)

(assert (=> b!4426541 (= lt!1625856 (lemmaExtractTailMapContainsThenExtractMapDoes!44 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4426541 false))

(declare-fun b!4426542 () Bool)

(declare-fun tp!1333277 () Bool)

(assert (=> b!4426542 (= e!2756189 tp!1333277)))

(declare-fun b!4426543 () Bool)

(declare-fun res!1830260 () Bool)

(assert (=> b!4426543 (=> (not res!1830260) (not e!2756196))))

(declare-fun newBucket!194 () List!49725)

(declare-fun allKeysSameHash!717 (List!49725 (_ BitVec 64) Hashable!5151) Bool)

(assert (=> b!4426543 (= res!1830260 (allKeysSameHash!717 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4426544 () Bool)

(declare-fun e!2756191 () Bool)

(assert (=> b!4426544 (= e!2756191 (forall!9574 (toList!3501 lm!1616) lambda!154226))))

(declare-fun lt!1625868 () tuple2!49406)

(declare-fun lt!1625858 () ListMap!2745)

(declare-fun eq!415 (ListMap!2745 ListMap!2745) Bool)

(declare-fun +!1098 (ListMap!2745 tuple2!49406) ListMap!2745)

(assert (=> b!4426544 (eq!415 (+!1098 lt!1625865 lt!1625868) lt!1625858)))

(declare-fun newValue!93 () V!11211)

(declare-fun lt!1625863 () Unit!82115)

(declare-fun lt!1625873 () ListMap!2745)

(declare-fun lemmaAddToEqMapsPreservesEq!26 (ListMap!2745 ListMap!2745 K!10965 V!11211) Unit!82115)

(assert (=> b!4426544 (= lt!1625863 (lemmaAddToEqMapsPreservesEq!26 lt!1625865 lt!1625873 key!3717 newValue!93))))

(declare-fun lt!1625864 () ListMap!2745)

(assert (=> b!4426544 (eq!415 lt!1625864 lt!1625858)))

(assert (=> b!4426544 (= lt!1625858 (+!1098 lt!1625873 lt!1625868))))

(declare-fun lt!1625866 () ListMap!2745)

(declare-fun addToMapMapFromBucket!394 (List!49725 ListMap!2745) ListMap!2745)

(assert (=> b!4426544 (= lt!1625864 (addToMapMapFromBucket!394 (_2!27998 (h!55291 (toList!3501 lm!1616))) lt!1625866))))

(declare-fun lt!1625855 () ListMap!2745)

(declare-fun lt!1625861 () Unit!82115)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!186 (ListMap!2745 K!10965 V!11211 List!49725) Unit!82115)

(assert (=> b!4426544 (= lt!1625861 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!186 lt!1625855 key!3717 newValue!93 (_2!27998 (h!55291 (toList!3501 lm!1616)))))))

(declare-fun b!4426545 () Bool)

(declare-fun e!2756197 () Bool)

(assert (=> b!4426545 (= e!2756197 e!2756191)))

(declare-fun res!1830247 () Bool)

(assert (=> b!4426545 (=> res!1830247 e!2756191)))

(declare-fun containsKey!1128 (List!49725 K!10965) Bool)

(assert (=> b!4426545 (= res!1830247 (containsKey!1128 (_2!27998 (h!55291 (toList!3501 lm!1616))) key!3717))))

(declare-fun apply!11609 (ListLongMap!2151 (_ BitVec 64)) List!49725)

(assert (=> b!4426545 (not (containsKey!1128 (apply!11609 lm!1616 (_1!27998 (h!55291 (toList!3501 lm!1616)))) key!3717))))

(declare-fun lt!1625867 () Unit!82115)

(declare-fun lemmaNotSameHashThenCannotContainKey!136 (ListLongMap!2151 K!10965 (_ BitVec 64) Hashable!5151) Unit!82115)

(assert (=> b!4426545 (= lt!1625867 (lemmaNotSameHashThenCannotContainKey!136 lm!1616 key!3717 (_1!27998 (h!55291 (toList!3501 lm!1616))) hashF!1220))))

(declare-fun b!4426546 () Bool)

(assert (=> b!4426546 (= e!2756194 (= newBucket!194 (Cons!49601 (tuple2!49407 key!3717 newValue!93) (apply!11609 lm!1616 hash!366))))))

(declare-fun b!4426547 () Bool)

(declare-fun res!1830261 () Bool)

(assert (=> b!4426547 (=> (not res!1830261) (not e!2756190))))

(assert (=> b!4426547 (= res!1830261 (forall!9574 (toList!3501 lm!1616) lambda!154226))))

(declare-fun b!4426548 () Bool)

(declare-fun e!2756195 () Bool)

(assert (=> b!4426548 (= e!2756195 e!2756197)))

(declare-fun res!1830249 () Bool)

(assert (=> b!4426548 (=> res!1830249 e!2756197)))

(assert (=> b!4426548 (= res!1830249 (not (eq!415 lt!1625865 lt!1625873)))))

(assert (=> b!4426548 (= lt!1625873 (addToMapMapFromBucket!394 (_2!27998 (h!55291 (toList!3501 lm!1616))) lt!1625855))))

(declare-fun b!4426549 () Bool)

(declare-fun e!2756200 () Bool)

(assert (=> b!4426549 (= e!2756190 (not e!2756200))))

(declare-fun res!1830250 () Bool)

(assert (=> b!4426549 (=> res!1830250 e!2756200)))

(declare-fun lt!1625862 () ListLongMap!2151)

(assert (=> b!4426549 (= res!1830250 (not (forall!9574 (toList!3501 lt!1625862) lambda!154226)))))

(assert (=> b!4426549 (forall!9574 (toList!3501 lt!1625862) lambda!154226)))

(declare-fun lt!1625869 () tuple2!49408)

(declare-fun +!1099 (ListLongMap!2151 tuple2!49408) ListLongMap!2151)

(assert (=> b!4426549 (= lt!1625862 (+!1099 lm!1616 lt!1625869))))

(assert (=> b!4426549 (= lt!1625869 (tuple2!49409 hash!366 newBucket!194))))

(declare-fun lt!1625870 () Unit!82115)

(declare-fun addValidProp!401 (ListLongMap!2151 Int (_ BitVec 64) List!49725) Unit!82115)

(assert (=> b!4426549 (= lt!1625870 (addValidProp!401 lm!1616 lambda!154226 hash!366 newBucket!194))))

(declare-fun b!4426550 () Bool)

(declare-fun res!1830259 () Bool)

(assert (=> b!4426550 (=> (not res!1830259) (not e!2756196))))

(declare-fun allKeysSameHashInMap!863 (ListLongMap!2151 Hashable!5151) Bool)

(assert (=> b!4426550 (= res!1830259 (allKeysSameHashInMap!863 lm!1616 hashF!1220))))

(declare-fun b!4426551 () Bool)

(assert (=> b!4426551 (= e!2756193 (and (not lt!1625859) (= newBucket!194 (Cons!49601 (tuple2!49407 key!3717 newValue!93) Nil!49601))))))

(declare-fun b!4426552 () Bool)

(declare-fun res!1830253 () Bool)

(assert (=> b!4426552 (=> res!1830253 e!2756200)))

(get-info :version)

(assert (=> b!4426552 (= res!1830253 (or (and ((_ is Cons!49602) (toList!3501 lm!1616)) (= (_1!27998 (h!55291 (toList!3501 lm!1616))) hash!366)) (not ((_ is Cons!49602) (toList!3501 lm!1616))) (= (_1!27998 (h!55291 (toList!3501 lm!1616))) hash!366)))))

(declare-fun b!4426553 () Bool)

(assert (=> b!4426553 (= e!2756200 e!2756195)))

(declare-fun res!1830256 () Bool)

(assert (=> b!4426553 (=> res!1830256 e!2756195)))

(declare-fun head!9228 (ListLongMap!2151) tuple2!49408)

(assert (=> b!4426553 (= res!1830256 (= (head!9228 lm!1616) lt!1625869))))

(declare-fun lt!1625857 () ListMap!2745)

(assert (=> b!4426553 (eq!415 lt!1625857 lt!1625866)))

(assert (=> b!4426553 (= lt!1625866 (+!1098 lt!1625855 lt!1625868))))

(assert (=> b!4426553 (= lt!1625868 (tuple2!49407 key!3717 newValue!93))))

(declare-fun lt!1625860 () ListLongMap!2151)

(assert (=> b!4426553 (= lt!1625855 (extractMap!818 (toList!3501 lt!1625860)))))

(assert (=> b!4426553 (= lt!1625857 (extractMap!818 (toList!3501 (+!1099 lt!1625860 lt!1625869))))))

(declare-fun lt!1625872 () Unit!82115)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!131 (ListLongMap!2151 (_ BitVec 64) List!49725 K!10965 V!11211 Hashable!5151) Unit!82115)

(assert (=> b!4426553 (= lt!1625872 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!131 lt!1625860 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7286 (ListLongMap!2151) ListLongMap!2151)

(assert (=> b!4426553 (= lt!1625860 (tail!7286 lm!1616))))

(declare-fun lt!1625871 () Unit!82115)

(assert (=> b!4426553 (= lt!1625871 e!2756192)))

(declare-fun c!753487 () Bool)

(declare-fun tail!7287 (List!49726) List!49726)

(assert (=> b!4426553 (= c!753487 (contains!12111 (extractMap!818 (tail!7287 (toList!3501 lm!1616))) key!3717))))

(declare-fun b!4426554 () Bool)

(declare-fun tp!1333278 () Bool)

(assert (=> b!4426554 (= e!2756199 (and tp_is_empty!26275 tp_is_empty!26273 tp!1333278))))

(declare-fun b!4426555 () Bool)

(declare-fun res!1830252 () Bool)

(assert (=> b!4426555 (=> (not res!1830252) (not e!2756190))))

(declare-fun noDuplicateKeys!757 (List!49725) Bool)

(assert (=> b!4426555 (= res!1830252 (noDuplicateKeys!757 newBucket!194))))

(assert (= (and start!431932 res!1830248) b!4426550))

(assert (= (and b!4426550 res!1830259) b!4426540))

(assert (= (and b!4426540 res!1830254) b!4426543))

(assert (= (and b!4426543 res!1830260) b!4426539))

(assert (= (and b!4426539 res!1830251) b!4426537))

(assert (= (and b!4426537 res!1830258) b!4426546))

(assert (= (and b!4426537 (not res!1830257)) b!4426551))

(assert (= (and b!4426537 res!1830255) b!4426555))

(assert (= (and b!4426555 res!1830252) b!4426547))

(assert (= (and b!4426547 res!1830261) b!4426549))

(assert (= (and b!4426549 (not res!1830250)) b!4426552))

(assert (= (and b!4426552 (not res!1830253)) b!4426553))

(assert (= (and b!4426553 c!753487) b!4426541))

(assert (= (and b!4426553 (not c!753487)) b!4426538))

(assert (= (and b!4426553 (not res!1830256)) b!4426548))

(assert (= (and b!4426548 (not res!1830249)) b!4426545))

(assert (= (and b!4426545 (not res!1830247)) b!4426544))

(assert (= (and start!431932 ((_ is Cons!49601) newBucket!194)) b!4426554))

(assert (= start!431932 b!4426542))

(declare-fun m!5107873 () Bool)

(assert (=> b!4426546 m!5107873))

(declare-fun m!5107875 () Bool)

(assert (=> b!4426539 m!5107875))

(declare-fun m!5107877 () Bool)

(assert (=> b!4426539 m!5107877))

(declare-fun m!5107879 () Bool)

(assert (=> start!431932 m!5107879))

(declare-fun m!5107881 () Bool)

(assert (=> start!431932 m!5107881))

(declare-fun m!5107883 () Bool)

(assert (=> b!4426549 m!5107883))

(assert (=> b!4426549 m!5107883))

(declare-fun m!5107885 () Bool)

(assert (=> b!4426549 m!5107885))

(declare-fun m!5107887 () Bool)

(assert (=> b!4426549 m!5107887))

(declare-fun m!5107889 () Bool)

(assert (=> b!4426543 m!5107889))

(declare-fun m!5107891 () Bool)

(assert (=> b!4426541 m!5107891))

(assert (=> b!4426547 m!5107879))

(declare-fun m!5107893 () Bool)

(assert (=> b!4426550 m!5107893))

(declare-fun m!5107895 () Bool)

(assert (=> b!4426540 m!5107895))

(declare-fun m!5107897 () Bool)

(assert (=> b!4426537 m!5107897))

(declare-fun m!5107899 () Bool)

(assert (=> b!4426555 m!5107899))

(declare-fun m!5107901 () Bool)

(assert (=> b!4426553 m!5107901))

(declare-fun m!5107903 () Bool)

(assert (=> b!4426553 m!5107903))

(declare-fun m!5107905 () Bool)

(assert (=> b!4426553 m!5107905))

(declare-fun m!5107907 () Bool)

(assert (=> b!4426553 m!5107907))

(declare-fun m!5107909 () Bool)

(assert (=> b!4426553 m!5107909))

(declare-fun m!5107911 () Bool)

(assert (=> b!4426553 m!5107911))

(assert (=> b!4426553 m!5107901))

(assert (=> b!4426553 m!5107903))

(declare-fun m!5107913 () Bool)

(assert (=> b!4426553 m!5107913))

(declare-fun m!5107915 () Bool)

(assert (=> b!4426553 m!5107915))

(declare-fun m!5107917 () Bool)

(assert (=> b!4426553 m!5107917))

(declare-fun m!5107919 () Bool)

(assert (=> b!4426553 m!5107919))

(declare-fun m!5107921 () Bool)

(assert (=> b!4426553 m!5107921))

(declare-fun m!5107923 () Bool)

(assert (=> b!4426544 m!5107923))

(declare-fun m!5107925 () Bool)

(assert (=> b!4426544 m!5107925))

(declare-fun m!5107927 () Bool)

(assert (=> b!4426544 m!5107927))

(assert (=> b!4426544 m!5107925))

(declare-fun m!5107929 () Bool)

(assert (=> b!4426544 m!5107929))

(declare-fun m!5107931 () Bool)

(assert (=> b!4426544 m!5107931))

(assert (=> b!4426544 m!5107879))

(declare-fun m!5107933 () Bool)

(assert (=> b!4426544 m!5107933))

(declare-fun m!5107935 () Bool)

(assert (=> b!4426544 m!5107935))

(declare-fun m!5107937 () Bool)

(assert (=> b!4426548 m!5107937))

(declare-fun m!5107939 () Bool)

(assert (=> b!4426548 m!5107939))

(declare-fun m!5107941 () Bool)

(assert (=> b!4426545 m!5107941))

(declare-fun m!5107943 () Bool)

(assert (=> b!4426545 m!5107943))

(assert (=> b!4426545 m!5107943))

(declare-fun m!5107945 () Bool)

(assert (=> b!4426545 m!5107945))

(declare-fun m!5107947 () Bool)

(assert (=> b!4426545 m!5107947))

(check-sat (not b!4426537) (not start!431932) (not b!4426553) (not b!4426540) (not b!4426548) (not b!4426550) (not b!4426545) (not b!4426546) (not b!4426543) (not b!4426542) (not b!4426539) tp_is_empty!26275 (not b!4426547) (not b!4426555) tp_is_empty!26273 (not b!4426544) (not b!4426541) (not b!4426549) (not b!4426554))
(check-sat)
