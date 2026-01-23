; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!435326 () Bool)

(assert start!435326)

(declare-fun e!2768029 () Bool)

(declare-fun tp!1334453 () Bool)

(declare-fun tp_is_empty!26687 () Bool)

(declare-fun tp_is_empty!26685 () Bool)

(declare-fun b!4445664 () Bool)

(assert (=> b!4445664 (= e!2768029 (and tp_is_empty!26687 tp_is_empty!26685 tp!1334453))))

(declare-fun b!4445665 () Bool)

(declare-datatypes ((Unit!84388 0))(
  ( (Unit!84389) )
))
(declare-fun e!2768028 () Unit!84388)

(declare-fun Unit!84390 () Unit!84388)

(assert (=> b!4445665 (= e!2768028 Unit!84390)))

(declare-datatypes ((K!11223 0))(
  ( (K!11224 (val!17249 Int)) )
))
(declare-fun key!3717 () K!11223)

(declare-datatypes ((V!11469 0))(
  ( (V!11470 (val!17250 Int)) )
))
(declare-datatypes ((tuple2!49818 0))(
  ( (tuple2!49819 (_1!28203 K!11223) (_2!28203 V!11469)) )
))
(declare-datatypes ((List!49978 0))(
  ( (Nil!49854) (Cons!49854 (h!55593 tuple2!49818) (t!356920 List!49978)) )
))
(declare-datatypes ((tuple2!49820 0))(
  ( (tuple2!49821 (_1!28204 (_ BitVec 64)) (_2!28204 List!49978)) )
))
(declare-datatypes ((List!49979 0))(
  ( (Nil!49855) (Cons!49855 (h!55594 tuple2!49820) (t!356921 List!49979)) )
))
(declare-datatypes ((ListLongMap!2357 0))(
  ( (ListLongMap!2358 (toList!3707 List!49979)) )
))
(declare-fun lm!1616 () ListLongMap!2357)

(declare-datatypes ((Hashable!5254 0))(
  ( (HashableExt!5253 (__x!30957 Int)) )
))
(declare-fun hashF!1220 () Hashable!5254)

(declare-fun lt!1639903 () Unit!84388)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!97 (ListLongMap!2357 K!11223 Hashable!5254) Unit!84388)

(assert (=> b!4445665 (= lt!1639903 (lemmaExtractTailMapContainsThenExtractMapDoes!97 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4445665 false))

(declare-fun e!2768033 () Bool)

(declare-fun newValue!93 () V!11469)

(declare-fun b!4445666 () Bool)

(declare-fun newBucket!194 () List!49978)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun apply!11712 (ListLongMap!2357 (_ BitVec 64)) List!49978)

(assert (=> b!4445666 (= e!2768033 (= newBucket!194 (Cons!49854 (tuple2!49819 key!3717 newValue!93) (apply!11712 lm!1616 hash!366))))))

(declare-fun b!4445667 () Bool)

(declare-fun e!2768026 () Bool)

(declare-fun e!2768024 () Bool)

(assert (=> b!4445667 (= e!2768026 (not e!2768024))))

(declare-fun res!1841467 () Bool)

(assert (=> b!4445667 (=> res!1841467 e!2768024)))

(declare-fun lt!1639905 () ListLongMap!2357)

(declare-fun lambda!158231 () Int)

(declare-fun forall!9745 (List!49979 Int) Bool)

(assert (=> b!4445667 (= res!1841467 (not (forall!9745 (toList!3707 lt!1639905) lambda!158231)))))

(assert (=> b!4445667 (forall!9745 (toList!3707 lt!1639905) lambda!158231)))

(declare-fun lt!1639890 () tuple2!49820)

(declare-fun +!1257 (ListLongMap!2357 tuple2!49820) ListLongMap!2357)

(assert (=> b!4445667 (= lt!1639905 (+!1257 lm!1616 lt!1639890))))

(assert (=> b!4445667 (= lt!1639890 (tuple2!49821 hash!366 newBucket!194))))

(declare-fun lt!1639907 () Unit!84388)

(declare-fun addValidProp!498 (ListLongMap!2357 Int (_ BitVec 64) List!49978) Unit!84388)

(assert (=> b!4445667 (= lt!1639907 (addValidProp!498 lm!1616 lambda!158231 hash!366 newBucket!194))))

(declare-fun b!4445668 () Bool)

(declare-fun e!2768023 () Bool)

(declare-datatypes ((ListMap!2951 0))(
  ( (ListMap!2952 (toList!3708 List!49978)) )
))
(declare-fun lt!1639908 () ListMap!2951)

(declare-fun lt!1639900 () ListMap!2951)

(declare-fun eq!460 (ListMap!2951 ListMap!2951) Bool)

(assert (=> b!4445668 (= e!2768023 (eq!460 lt!1639908 lt!1639900))))

(declare-fun b!4445669 () Bool)

(declare-fun res!1841464 () Bool)

(assert (=> b!4445669 (=> res!1841464 e!2768024)))

(assert (=> b!4445669 (= res!1841464 (or (and (is-Cons!49855 (toList!3707 lm!1616)) (= (_1!28204 (h!55594 (toList!3707 lm!1616))) hash!366)) (not (is-Cons!49855 (toList!3707 lm!1616))) (= (_1!28204 (h!55594 (toList!3707 lm!1616))) hash!366)))))

(declare-fun b!4445670 () Bool)

(declare-fun res!1841468 () Bool)

(assert (=> b!4445670 (=> (not res!1841468) (not e!2768026))))

(declare-fun noDuplicateKeys!860 (List!49978) Bool)

(assert (=> b!4445670 (= res!1841468 (noDuplicateKeys!860 newBucket!194))))

(declare-fun b!4445671 () Bool)

(declare-fun res!1841469 () Bool)

(declare-fun e!2768027 () Bool)

(assert (=> b!4445671 (=> (not res!1841469) (not e!2768027))))

(declare-fun allKeysSameHashInMap!966 (ListLongMap!2357 Hashable!5254) Bool)

(assert (=> b!4445671 (= res!1841469 (allKeysSameHashInMap!966 lm!1616 hashF!1220))))

(declare-fun b!4445672 () Bool)

(declare-fun e!2768031 () Bool)

(declare-fun tp!1334454 () Bool)

(assert (=> b!4445672 (= e!2768031 tp!1334454)))

(declare-fun b!4445673 () Bool)

(declare-fun e!2768035 () Bool)

(declare-fun e!2768032 () Bool)

(assert (=> b!4445673 (= e!2768035 e!2768032)))

(declare-fun res!1841473 () Bool)

(assert (=> b!4445673 (=> res!1841473 e!2768032)))

(declare-fun lt!1639892 () ListMap!2951)

(declare-fun lt!1639894 () ListMap!2951)

(assert (=> b!4445673 (= res!1841473 (not (eq!460 lt!1639892 lt!1639894)))))

(declare-fun lt!1639893 () ListMap!2951)

(declare-fun addToMapMapFromBucket!466 (List!49978 ListMap!2951) ListMap!2951)

(assert (=> b!4445673 (= lt!1639894 (addToMapMapFromBucket!466 (_2!28204 (h!55594 (toList!3707 lm!1616))) lt!1639893))))

(declare-fun b!4445674 () Bool)

(declare-fun lt!1639896 () Bool)

(declare-fun e!2768030 () Bool)

(assert (=> b!4445674 (= e!2768030 (and (not lt!1639896) (= newBucket!194 (Cons!49854 (tuple2!49819 key!3717 newValue!93) Nil!49854))))))

(declare-fun b!4445675 () Bool)

(declare-fun e!2768025 () Bool)

(assert (=> b!4445675 (= e!2768032 e!2768025)))

(declare-fun res!1841474 () Bool)

(assert (=> b!4445675 (=> res!1841474 e!2768025)))

(declare-fun containsKey!1281 (List!49978 K!11223) Bool)

(assert (=> b!4445675 (= res!1841474 (containsKey!1281 (_2!28204 (h!55594 (toList!3707 lm!1616))) key!3717))))

(assert (=> b!4445675 (not (containsKey!1281 (apply!11712 lm!1616 (_1!28204 (h!55594 (toList!3707 lm!1616)))) key!3717))))

(declare-fun lt!1639902 () Unit!84388)

(declare-fun lemmaNotSameHashThenCannotContainKey!159 (ListLongMap!2357 K!11223 (_ BitVec 64) Hashable!5254) Unit!84388)

(assert (=> b!4445675 (= lt!1639902 (lemmaNotSameHashThenCannotContainKey!159 lm!1616 key!3717 (_1!28204 (h!55594 (toList!3707 lm!1616))) hashF!1220))))

(declare-fun b!4445676 () Bool)

(assert (=> b!4445676 (= e!2768024 e!2768035)))

(declare-fun res!1841471 () Bool)

(assert (=> b!4445676 (=> res!1841471 e!2768035)))

(declare-fun head!9303 (ListLongMap!2357) tuple2!49820)

(assert (=> b!4445676 (= res!1841471 (= (head!9303 lm!1616) lt!1639890))))

(assert (=> b!4445676 (eq!460 lt!1639900 lt!1639908)))

(declare-fun lt!1639904 () tuple2!49818)

(declare-fun +!1258 (ListMap!2951 tuple2!49818) ListMap!2951)

(assert (=> b!4445676 (= lt!1639908 (+!1258 lt!1639893 lt!1639904))))

(assert (=> b!4445676 (= lt!1639904 (tuple2!49819 key!3717 newValue!93))))

(declare-fun lt!1639895 () ListLongMap!2357)

(declare-fun extractMap!921 (List!49979) ListMap!2951)

(assert (=> b!4445676 (= lt!1639893 (extractMap!921 (toList!3707 lt!1639895)))))

(assert (=> b!4445676 (= lt!1639900 (extractMap!921 (toList!3707 (+!1257 lt!1639895 lt!1639890))))))

(declare-fun lt!1639899 () Unit!84388)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!168 (ListLongMap!2357 (_ BitVec 64) List!49978 K!11223 V!11469 Hashable!5254) Unit!84388)

(assert (=> b!4445676 (= lt!1639899 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!168 lt!1639895 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7420 (ListLongMap!2357) ListLongMap!2357)

(assert (=> b!4445676 (= lt!1639895 (tail!7420 lm!1616))))

(declare-fun lt!1639901 () Unit!84388)

(assert (=> b!4445676 (= lt!1639901 e!2768028)))

(declare-fun c!756570 () Bool)

(declare-fun contains!12440 (ListMap!2951 K!11223) Bool)

(declare-fun tail!7421 (List!49979) List!49979)

(assert (=> b!4445676 (= c!756570 (contains!12440 (extractMap!921 (tail!7421 (toList!3707 lm!1616))) key!3717))))

(declare-fun b!4445677 () Bool)

(declare-fun res!1841466 () Bool)

(assert (=> b!4445677 (=> (not res!1841466) (not e!2768027))))

(declare-fun allKeysSameHash!820 (List!49978 (_ BitVec 64) Hashable!5254) Bool)

(assert (=> b!4445677 (= res!1841466 (allKeysSameHash!820 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4445678 () Bool)

(declare-fun res!1841472 () Bool)

(assert (=> b!4445678 (=> (not res!1841472) (not e!2768027))))

(declare-fun hash!2334 (Hashable!5254 K!11223) (_ BitVec 64))

(assert (=> b!4445678 (= res!1841472 (= (hash!2334 hashF!1220 key!3717) hash!366))))

(declare-fun b!4445679 () Bool)

(declare-fun Unit!84391 () Unit!84388)

(assert (=> b!4445679 (= e!2768028 Unit!84391)))

(declare-fun res!1841477 () Bool)

(assert (=> start!435326 (=> (not res!1841477) (not e!2768027))))

(assert (=> start!435326 (= res!1841477 (forall!9745 (toList!3707 lm!1616) lambda!158231))))

(assert (=> start!435326 e!2768027))

(assert (=> start!435326 tp_is_empty!26685))

(assert (=> start!435326 tp_is_empty!26687))

(assert (=> start!435326 e!2768029))

(declare-fun inv!65410 (ListLongMap!2357) Bool)

(assert (=> start!435326 (and (inv!65410 lm!1616) e!2768031)))

(assert (=> start!435326 true))

(declare-fun b!4445680 () Bool)

(declare-fun e!2768034 () Bool)

(assert (=> b!4445680 (= e!2768034 e!2768026)))

(declare-fun res!1841465 () Bool)

(assert (=> b!4445680 (=> (not res!1841465) (not e!2768026))))

(assert (=> b!4445680 (= res!1841465 e!2768030)))

(declare-fun res!1841476 () Bool)

(assert (=> b!4445680 (=> res!1841476 e!2768030)))

(assert (=> b!4445680 (= res!1841476 e!2768033)))

(declare-fun res!1841470 () Bool)

(assert (=> b!4445680 (=> (not res!1841470) (not e!2768033))))

(assert (=> b!4445680 (= res!1841470 lt!1639896)))

(declare-fun contains!12441 (ListLongMap!2357 (_ BitVec 64)) Bool)

(assert (=> b!4445680 (= lt!1639896 (contains!12441 lm!1616 hash!366))))

(declare-fun b!4445681 () Bool)

(assert (=> b!4445681 (= e!2768027 e!2768034)))

(declare-fun res!1841475 () Bool)

(assert (=> b!4445681 (=> (not res!1841475) (not e!2768034))))

(assert (=> b!4445681 (= res!1841475 (not (contains!12440 lt!1639892 key!3717)))))

(assert (=> b!4445681 (= lt!1639892 (extractMap!921 (toList!3707 lm!1616)))))

(declare-fun b!4445682 () Bool)

(assert (=> b!4445682 (= e!2768025 e!2768023)))

(declare-fun res!1841479 () Bool)

(assert (=> b!4445682 (=> res!1841479 e!2768023)))

(assert (=> b!4445682 (= res!1841479 (not (noDuplicateKeys!860 (_2!28204 (h!55594 (toList!3707 lm!1616))))))))

(declare-fun lt!1639891 () ListMap!2951)

(assert (=> b!4445682 (eq!460 (+!1258 lt!1639892 lt!1639904) lt!1639891)))

(declare-fun lt!1639906 () Unit!84388)

(declare-fun lemmaAddToEqMapsPreservesEq!43 (ListMap!2951 ListMap!2951 K!11223 V!11469) Unit!84388)

(assert (=> b!4445682 (= lt!1639906 (lemmaAddToEqMapsPreservesEq!43 lt!1639892 lt!1639894 key!3717 newValue!93))))

(declare-fun lt!1639898 () ListMap!2951)

(assert (=> b!4445682 (eq!460 lt!1639898 lt!1639891)))

(assert (=> b!4445682 (= lt!1639891 (+!1258 lt!1639894 lt!1639904))))

(assert (=> b!4445682 (= lt!1639898 (addToMapMapFromBucket!466 (_2!28204 (h!55594 (toList!3707 lm!1616))) lt!1639908))))

(declare-fun lt!1639897 () Unit!84388)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!211 (ListMap!2951 K!11223 V!11469 List!49978) Unit!84388)

(assert (=> b!4445682 (= lt!1639897 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!211 lt!1639893 key!3717 newValue!93 (_2!28204 (h!55594 (toList!3707 lm!1616)))))))

(declare-fun b!4445683 () Bool)

(declare-fun res!1841478 () Bool)

(assert (=> b!4445683 (=> (not res!1841478) (not e!2768026))))

(assert (=> b!4445683 (= res!1841478 (forall!9745 (toList!3707 lm!1616) lambda!158231))))

(assert (= (and start!435326 res!1841477) b!4445671))

(assert (= (and b!4445671 res!1841469) b!4445678))

(assert (= (and b!4445678 res!1841472) b!4445677))

(assert (= (and b!4445677 res!1841466) b!4445681))

(assert (= (and b!4445681 res!1841475) b!4445680))

(assert (= (and b!4445680 res!1841470) b!4445666))

(assert (= (and b!4445680 (not res!1841476)) b!4445674))

(assert (= (and b!4445680 res!1841465) b!4445670))

(assert (= (and b!4445670 res!1841468) b!4445683))

(assert (= (and b!4445683 res!1841478) b!4445667))

(assert (= (and b!4445667 (not res!1841467)) b!4445669))

(assert (= (and b!4445669 (not res!1841464)) b!4445676))

(assert (= (and b!4445676 c!756570) b!4445665))

(assert (= (and b!4445676 (not c!756570)) b!4445679))

(assert (= (and b!4445676 (not res!1841471)) b!4445673))

(assert (= (and b!4445673 (not res!1841473)) b!4445675))

(assert (= (and b!4445675 (not res!1841474)) b!4445682))

(assert (= (and b!4445682 (not res!1841479)) b!4445668))

(assert (= (and start!435326 (is-Cons!49854 newBucket!194)) b!4445664))

(assert (= start!435326 b!4445672))

(declare-fun m!5136167 () Bool)

(assert (=> b!4445678 m!5136167))

(declare-fun m!5136169 () Bool)

(assert (=> b!4445680 m!5136169))

(declare-fun m!5136171 () Bool)

(assert (=> b!4445682 m!5136171))

(assert (=> b!4445682 m!5136171))

(declare-fun m!5136173 () Bool)

(assert (=> b!4445682 m!5136173))

(declare-fun m!5136175 () Bool)

(assert (=> b!4445682 m!5136175))

(declare-fun m!5136177 () Bool)

(assert (=> b!4445682 m!5136177))

(declare-fun m!5136179 () Bool)

(assert (=> b!4445682 m!5136179))

(declare-fun m!5136181 () Bool)

(assert (=> b!4445682 m!5136181))

(declare-fun m!5136183 () Bool)

(assert (=> b!4445682 m!5136183))

(declare-fun m!5136185 () Bool)

(assert (=> b!4445682 m!5136185))

(declare-fun m!5136187 () Bool)

(assert (=> b!4445667 m!5136187))

(assert (=> b!4445667 m!5136187))

(declare-fun m!5136189 () Bool)

(assert (=> b!4445667 m!5136189))

(declare-fun m!5136191 () Bool)

(assert (=> b!4445667 m!5136191))

(declare-fun m!5136193 () Bool)

(assert (=> b!4445681 m!5136193))

(declare-fun m!5136195 () Bool)

(assert (=> b!4445681 m!5136195))

(declare-fun m!5136197 () Bool)

(assert (=> b!4445677 m!5136197))

(declare-fun m!5136199 () Bool)

(assert (=> start!435326 m!5136199))

(declare-fun m!5136201 () Bool)

(assert (=> start!435326 m!5136201))

(assert (=> b!4445683 m!5136199))

(declare-fun m!5136203 () Bool)

(assert (=> b!4445671 m!5136203))

(declare-fun m!5136205 () Bool)

(assert (=> b!4445673 m!5136205))

(declare-fun m!5136207 () Bool)

(assert (=> b!4445673 m!5136207))

(declare-fun m!5136209 () Bool)

(assert (=> b!4445668 m!5136209))

(declare-fun m!5136211 () Bool)

(assert (=> b!4445666 m!5136211))

(declare-fun m!5136213 () Bool)

(assert (=> b!4445670 m!5136213))

(declare-fun m!5136215 () Bool)

(assert (=> b!4445665 m!5136215))

(declare-fun m!5136217 () Bool)

(assert (=> b!4445675 m!5136217))

(declare-fun m!5136219 () Bool)

(assert (=> b!4445675 m!5136219))

(assert (=> b!4445675 m!5136219))

(declare-fun m!5136221 () Bool)

(assert (=> b!4445675 m!5136221))

(declare-fun m!5136223 () Bool)

(assert (=> b!4445675 m!5136223))

(declare-fun m!5136225 () Bool)

(assert (=> b!4445676 m!5136225))

(declare-fun m!5136227 () Bool)

(assert (=> b!4445676 m!5136227))

(declare-fun m!5136229 () Bool)

(assert (=> b!4445676 m!5136229))

(declare-fun m!5136231 () Bool)

(assert (=> b!4445676 m!5136231))

(declare-fun m!5136233 () Bool)

(assert (=> b!4445676 m!5136233))

(assert (=> b!4445676 m!5136225))

(assert (=> b!4445676 m!5136227))

(declare-fun m!5136235 () Bool)

(assert (=> b!4445676 m!5136235))

(declare-fun m!5136237 () Bool)

(assert (=> b!4445676 m!5136237))

(declare-fun m!5136239 () Bool)

(assert (=> b!4445676 m!5136239))

(declare-fun m!5136241 () Bool)

(assert (=> b!4445676 m!5136241))

(declare-fun m!5136243 () Bool)

(assert (=> b!4445676 m!5136243))

(declare-fun m!5136245 () Bool)

(assert (=> b!4445676 m!5136245))

(push 1)

(assert (not b!4445666))

(assert (not b!4445673))

(assert (not b!4445675))

(assert (not b!4445664))

(assert (not b!4445672))

(assert (not b!4445665))

(assert (not b!4445680))

(assert (not start!435326))

(assert (not b!4445683))

(assert (not b!4445676))

(assert (not b!4445670))

(assert (not b!4445667))

(assert (not b!4445677))

(assert tp_is_empty!26687)

(assert (not b!4445681))

(assert (not b!4445671))

(assert (not b!4445682))

(assert (not b!4445668))

(assert tp_is_empty!26685)

(assert (not b!4445678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1349841 () Bool)

(declare-fun res!1841532 () Bool)

(declare-fun e!2768079 () Bool)

(assert (=> d!1349841 (=> res!1841532 e!2768079)))

(assert (=> d!1349841 (= res!1841532 (is-Nil!49855 (toList!3707 lm!1616)))))

(assert (=> d!1349841 (= (forall!9745 (toList!3707 lm!1616) lambda!158231) e!2768079)))

(declare-fun b!4445748 () Bool)

(declare-fun e!2768080 () Bool)

(assert (=> b!4445748 (= e!2768079 e!2768080)))

(declare-fun res!1841533 () Bool)

(assert (=> b!4445748 (=> (not res!1841533) (not e!2768080))))

(declare-fun dynLambda!20927 (Int tuple2!49820) Bool)

(assert (=> b!4445748 (= res!1841533 (dynLambda!20927 lambda!158231 (h!55594 (toList!3707 lm!1616))))))

(declare-fun b!4445749 () Bool)

(assert (=> b!4445749 (= e!2768080 (forall!9745 (t!356921 (toList!3707 lm!1616)) lambda!158231))))

(assert (= (and d!1349841 (not res!1841532)) b!4445748))

(assert (= (and b!4445748 res!1841533) b!4445749))

(declare-fun b_lambda!145525 () Bool)

(assert (=> (not b_lambda!145525) (not b!4445748)))

(declare-fun m!5136327 () Bool)

(assert (=> b!4445748 m!5136327))

(declare-fun m!5136329 () Bool)

(assert (=> b!4445749 m!5136329))

(assert (=> b!4445683 d!1349841))

(declare-fun d!1349843 () Bool)

(declare-fun content!8024 (List!49978) (Set tuple2!49818))

(assert (=> d!1349843 (= (eq!460 (+!1258 lt!1639892 lt!1639904) lt!1639891) (= (content!8024 (toList!3708 (+!1258 lt!1639892 lt!1639904))) (content!8024 (toList!3708 lt!1639891))))))

(declare-fun bs!765820 () Bool)

(assert (= bs!765820 d!1349843))

(declare-fun m!5136331 () Bool)

(assert (=> bs!765820 m!5136331))

(declare-fun m!5136333 () Bool)

(assert (=> bs!765820 m!5136333))

(assert (=> b!4445682 d!1349843))

(declare-fun d!1349845 () Bool)

(assert (=> d!1349845 (eq!460 (addToMapMapFromBucket!466 (_2!28204 (h!55594 (toList!3707 lm!1616))) (+!1258 lt!1639893 (tuple2!49819 key!3717 newValue!93))) (+!1258 (addToMapMapFromBucket!466 (_2!28204 (h!55594 (toList!3707 lm!1616))) lt!1639893) (tuple2!49819 key!3717 newValue!93)))))

(declare-fun lt!1639968 () Unit!84388)

(declare-fun choose!28273 (ListMap!2951 K!11223 V!11469 List!49978) Unit!84388)

(assert (=> d!1349845 (= lt!1639968 (choose!28273 lt!1639893 key!3717 newValue!93 (_2!28204 (h!55594 (toList!3707 lm!1616)))))))

(assert (=> d!1349845 (not (containsKey!1281 (_2!28204 (h!55594 (toList!3707 lm!1616))) key!3717))))

(assert (=> d!1349845 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!211 lt!1639893 key!3717 newValue!93 (_2!28204 (h!55594 (toList!3707 lm!1616)))) lt!1639968)))

(declare-fun bs!765821 () Bool)

(assert (= bs!765821 d!1349845))

(declare-fun m!5136335 () Bool)

(assert (=> bs!765821 m!5136335))

(declare-fun m!5136337 () Bool)

(assert (=> bs!765821 m!5136337))

(assert (=> bs!765821 m!5136335))

(declare-fun m!5136339 () Bool)

(assert (=> bs!765821 m!5136339))

(assert (=> bs!765821 m!5136207))

(assert (=> bs!765821 m!5136217))

(assert (=> bs!765821 m!5136207))

(declare-fun m!5136341 () Bool)

(assert (=> bs!765821 m!5136341))

(assert (=> bs!765821 m!5136339))

(assert (=> bs!765821 m!5136341))

(declare-fun m!5136343 () Bool)

(assert (=> bs!765821 m!5136343))

(assert (=> b!4445682 d!1349845))

(declare-fun d!1349847 () Bool)

(assert (=> d!1349847 (eq!460 (+!1258 lt!1639892 (tuple2!49819 key!3717 newValue!93)) (+!1258 lt!1639894 (tuple2!49819 key!3717 newValue!93)))))

(declare-fun lt!1639971 () Unit!84388)

(declare-fun choose!28274 (ListMap!2951 ListMap!2951 K!11223 V!11469) Unit!84388)

(assert (=> d!1349847 (= lt!1639971 (choose!28274 lt!1639892 lt!1639894 key!3717 newValue!93))))

(assert (=> d!1349847 (eq!460 lt!1639892 lt!1639894)))

(assert (=> d!1349847 (= (lemmaAddToEqMapsPreservesEq!43 lt!1639892 lt!1639894 key!3717 newValue!93) lt!1639971)))

(declare-fun bs!765822 () Bool)

(assert (= bs!765822 d!1349847))

(declare-fun m!5136345 () Bool)

(assert (=> bs!765822 m!5136345))

(declare-fun m!5136347 () Bool)

(assert (=> bs!765822 m!5136347))

(assert (=> bs!765822 m!5136345))

(declare-fun m!5136349 () Bool)

(assert (=> bs!765822 m!5136349))

(declare-fun m!5136351 () Bool)

(assert (=> bs!765822 m!5136351))

(assert (=> bs!765822 m!5136349))

(assert (=> bs!765822 m!5136205))

(assert (=> b!4445682 d!1349847))

(declare-fun d!1349849 () Bool)

(declare-fun e!2768083 () Bool)

(assert (=> d!1349849 e!2768083))

(declare-fun res!1841538 () Bool)

(assert (=> d!1349849 (=> (not res!1841538) (not e!2768083))))

(declare-fun lt!1639980 () ListMap!2951)

(assert (=> d!1349849 (= res!1841538 (contains!12440 lt!1639980 (_1!28203 lt!1639904)))))

(declare-fun lt!1639982 () List!49978)

(assert (=> d!1349849 (= lt!1639980 (ListMap!2952 lt!1639982))))

(declare-fun lt!1639981 () Unit!84388)

(declare-fun lt!1639983 () Unit!84388)

(assert (=> d!1349849 (= lt!1639981 lt!1639983)))

(declare-datatypes ((Option!10827 0))(
  ( (None!10826) (Some!10826 (v!44068 V!11469)) )
))
(declare-fun getValueByKey!813 (List!49978 K!11223) Option!10827)

(assert (=> d!1349849 (= (getValueByKey!813 lt!1639982 (_1!28203 lt!1639904)) (Some!10826 (_2!28203 lt!1639904)))))

(declare-fun lemmaContainsTupThenGetReturnValue!529 (List!49978 K!11223 V!11469) Unit!84388)

(assert (=> d!1349849 (= lt!1639983 (lemmaContainsTupThenGetReturnValue!529 lt!1639982 (_1!28203 lt!1639904) (_2!28203 lt!1639904)))))

(declare-fun insertNoDuplicatedKeys!229 (List!49978 K!11223 V!11469) List!49978)

(assert (=> d!1349849 (= lt!1639982 (insertNoDuplicatedKeys!229 (toList!3708 lt!1639892) (_1!28203 lt!1639904) (_2!28203 lt!1639904)))))

(assert (=> d!1349849 (= (+!1258 lt!1639892 lt!1639904) lt!1639980)))

(declare-fun b!4445754 () Bool)

(declare-fun res!1841539 () Bool)

(assert (=> b!4445754 (=> (not res!1841539) (not e!2768083))))

(assert (=> b!4445754 (= res!1841539 (= (getValueByKey!813 (toList!3708 lt!1639980) (_1!28203 lt!1639904)) (Some!10826 (_2!28203 lt!1639904))))))

(declare-fun b!4445755 () Bool)

(declare-fun contains!12444 (List!49978 tuple2!49818) Bool)

(assert (=> b!4445755 (= e!2768083 (contains!12444 (toList!3708 lt!1639980) lt!1639904))))

(assert (= (and d!1349849 res!1841538) b!4445754))

(assert (= (and b!4445754 res!1841539) b!4445755))

(declare-fun m!5136353 () Bool)

(assert (=> d!1349849 m!5136353))

(declare-fun m!5136355 () Bool)

(assert (=> d!1349849 m!5136355))

(declare-fun m!5136357 () Bool)

(assert (=> d!1349849 m!5136357))

(declare-fun m!5136359 () Bool)

(assert (=> d!1349849 m!5136359))

(declare-fun m!5136361 () Bool)

(assert (=> b!4445754 m!5136361))

(declare-fun m!5136363 () Bool)

(assert (=> b!4445755 m!5136363))

(assert (=> b!4445682 d!1349849))

(declare-fun d!1349851 () Bool)

(assert (=> d!1349851 (= (eq!460 lt!1639898 lt!1639891) (= (content!8024 (toList!3708 lt!1639898)) (content!8024 (toList!3708 lt!1639891))))))

(declare-fun bs!765823 () Bool)

(assert (= bs!765823 d!1349851))

(declare-fun m!5136365 () Bool)

(assert (=> bs!765823 m!5136365))

(assert (=> bs!765823 m!5136333))

(assert (=> b!4445682 d!1349851))

(declare-fun d!1349853 () Bool)

(declare-fun e!2768084 () Bool)

(assert (=> d!1349853 e!2768084))

(declare-fun res!1841540 () Bool)

(assert (=> d!1349853 (=> (not res!1841540) (not e!2768084))))

(declare-fun lt!1639984 () ListMap!2951)

(assert (=> d!1349853 (= res!1841540 (contains!12440 lt!1639984 (_1!28203 lt!1639904)))))

(declare-fun lt!1639986 () List!49978)

(assert (=> d!1349853 (= lt!1639984 (ListMap!2952 lt!1639986))))

(declare-fun lt!1639985 () Unit!84388)

(declare-fun lt!1639987 () Unit!84388)

(assert (=> d!1349853 (= lt!1639985 lt!1639987)))

(assert (=> d!1349853 (= (getValueByKey!813 lt!1639986 (_1!28203 lt!1639904)) (Some!10826 (_2!28203 lt!1639904)))))

(assert (=> d!1349853 (= lt!1639987 (lemmaContainsTupThenGetReturnValue!529 lt!1639986 (_1!28203 lt!1639904) (_2!28203 lt!1639904)))))

(assert (=> d!1349853 (= lt!1639986 (insertNoDuplicatedKeys!229 (toList!3708 lt!1639894) (_1!28203 lt!1639904) (_2!28203 lt!1639904)))))

(assert (=> d!1349853 (= (+!1258 lt!1639894 lt!1639904) lt!1639984)))

(declare-fun b!4445756 () Bool)

(declare-fun res!1841541 () Bool)

(assert (=> b!4445756 (=> (not res!1841541) (not e!2768084))))

(assert (=> b!4445756 (= res!1841541 (= (getValueByKey!813 (toList!3708 lt!1639984) (_1!28203 lt!1639904)) (Some!10826 (_2!28203 lt!1639904))))))

(declare-fun b!4445757 () Bool)

(assert (=> b!4445757 (= e!2768084 (contains!12444 (toList!3708 lt!1639984) lt!1639904))))

(assert (= (and d!1349853 res!1841540) b!4445756))

(assert (= (and b!4445756 res!1841541) b!4445757))

(declare-fun m!5136367 () Bool)

(assert (=> d!1349853 m!5136367))

(declare-fun m!5136369 () Bool)

(assert (=> d!1349853 m!5136369))

(declare-fun m!5136371 () Bool)

(assert (=> d!1349853 m!5136371))

(declare-fun m!5136373 () Bool)

(assert (=> d!1349853 m!5136373))

(declare-fun m!5136375 () Bool)

(assert (=> b!4445756 m!5136375))

(declare-fun m!5136377 () Bool)

(assert (=> b!4445757 m!5136377))

(assert (=> b!4445682 d!1349853))

(declare-fun b!4445794 () Bool)

(assert (=> b!4445794 true))

(declare-fun bs!765829 () Bool)

(declare-fun b!4445798 () Bool)

(assert (= bs!765829 (and b!4445798 b!4445794)))

(declare-fun lambda!158273 () Int)

(declare-fun lambda!158272 () Int)

(assert (=> bs!765829 (= lambda!158273 lambda!158272)))

(assert (=> b!4445798 true))

(declare-fun lt!1640062 () ListMap!2951)

(declare-fun lambda!158274 () Int)

(assert (=> bs!765829 (= (= lt!1640062 lt!1639908) (= lambda!158274 lambda!158272))))

(assert (=> b!4445798 (= (= lt!1640062 lt!1639908) (= lambda!158274 lambda!158273))))

(assert (=> b!4445798 true))

(declare-fun bs!765830 () Bool)

(declare-fun d!1349855 () Bool)

(assert (= bs!765830 (and d!1349855 b!4445794)))

(declare-fun lt!1640060 () ListMap!2951)

(declare-fun lambda!158275 () Int)

(assert (=> bs!765830 (= (= lt!1640060 lt!1639908) (= lambda!158275 lambda!158272))))

(declare-fun bs!765831 () Bool)

(assert (= bs!765831 (and d!1349855 b!4445798)))

(assert (=> bs!765831 (= (= lt!1640060 lt!1639908) (= lambda!158275 lambda!158273))))

(assert (=> bs!765831 (= (= lt!1640060 lt!1640062) (= lambda!158275 lambda!158274))))

(assert (=> d!1349855 true))

(declare-fun call!309279 () Bool)

(declare-fun c!756576 () Bool)

(declare-fun bm!309272 () Bool)

(declare-fun forall!9747 (List!49978 Int) Bool)

(assert (=> bm!309272 (= call!309279 (forall!9747 (toList!3708 lt!1639908) (ite c!756576 lambda!158272 lambda!158273)))))

(declare-fun call!309278 () Bool)

(declare-fun bm!309273 () Bool)

(assert (=> bm!309273 (= call!309278 (forall!9747 (toList!3708 lt!1639908) (ite c!756576 lambda!158272 lambda!158274)))))

(declare-fun e!2768108 () ListMap!2951)

(assert (=> b!4445794 (= e!2768108 lt!1639908)))

(declare-fun lt!1640068 () Unit!84388)

(declare-fun call!309277 () Unit!84388)

(assert (=> b!4445794 (= lt!1640068 call!309277)))

(assert (=> b!4445794 call!309279))

(declare-fun lt!1640077 () Unit!84388)

(assert (=> b!4445794 (= lt!1640077 lt!1640068)))

(assert (=> b!4445794 call!309278))

(declare-fun lt!1640079 () Unit!84388)

(declare-fun Unit!84396 () Unit!84388)

(assert (=> b!4445794 (= lt!1640079 Unit!84396)))

(declare-fun b!4445795 () Bool)

(declare-fun res!1841572 () Bool)

(declare-fun e!2768110 () Bool)

(assert (=> b!4445795 (=> (not res!1841572) (not e!2768110))))

(assert (=> b!4445795 (= res!1841572 (forall!9747 (toList!3708 lt!1639908) lambda!158275))))

(declare-fun b!4445796 () Bool)

(declare-fun invariantList!855 (List!49978) Bool)

(assert (=> b!4445796 (= e!2768110 (invariantList!855 (toList!3708 lt!1640060)))))

(assert (=> d!1349855 e!2768110))

(declare-fun res!1841573 () Bool)

(assert (=> d!1349855 (=> (not res!1841573) (not e!2768110))))

(assert (=> d!1349855 (= res!1841573 (forall!9747 (_2!28204 (h!55594 (toList!3707 lm!1616))) lambda!158275))))

(assert (=> d!1349855 (= lt!1640060 e!2768108)))

(assert (=> d!1349855 (= c!756576 (is-Nil!49854 (_2!28204 (h!55594 (toList!3707 lm!1616)))))))

(assert (=> d!1349855 (noDuplicateKeys!860 (_2!28204 (h!55594 (toList!3707 lm!1616))))))

(assert (=> d!1349855 (= (addToMapMapFromBucket!466 (_2!28204 (h!55594 (toList!3707 lm!1616))) lt!1639908) lt!1640060)))

(declare-fun b!4445797 () Bool)

(declare-fun e!2768109 () Bool)

(assert (=> b!4445797 (= e!2768109 call!309278)))

(assert (=> b!4445798 (= e!2768108 lt!1640062)))

(declare-fun lt!1640061 () ListMap!2951)

(assert (=> b!4445798 (= lt!1640061 (+!1258 lt!1639908 (h!55593 (_2!28204 (h!55594 (toList!3707 lm!1616))))))))

(assert (=> b!4445798 (= lt!1640062 (addToMapMapFromBucket!466 (t!356920 (_2!28204 (h!55594 (toList!3707 lm!1616)))) (+!1258 lt!1639908 (h!55593 (_2!28204 (h!55594 (toList!3707 lm!1616)))))))))

(declare-fun lt!1640076 () Unit!84388)

(assert (=> b!4445798 (= lt!1640076 call!309277)))

(assert (=> b!4445798 call!309279))

(declare-fun lt!1640073 () Unit!84388)

(assert (=> b!4445798 (= lt!1640073 lt!1640076)))

(assert (=> b!4445798 (forall!9747 (toList!3708 lt!1640061) lambda!158274)))

(declare-fun lt!1640072 () Unit!84388)

(declare-fun Unit!84397 () Unit!84388)

(assert (=> b!4445798 (= lt!1640072 Unit!84397)))

(assert (=> b!4445798 (forall!9747 (t!356920 (_2!28204 (h!55594 (toList!3707 lm!1616)))) lambda!158274)))

(declare-fun lt!1640069 () Unit!84388)

(declare-fun Unit!84398 () Unit!84388)

(assert (=> b!4445798 (= lt!1640069 Unit!84398)))

(declare-fun lt!1640067 () Unit!84388)

(declare-fun Unit!84399 () Unit!84388)

(assert (=> b!4445798 (= lt!1640067 Unit!84399)))

(declare-fun lt!1640070 () Unit!84388)

(declare-fun forallContained!2154 (List!49978 Int tuple2!49818) Unit!84388)

(assert (=> b!4445798 (= lt!1640070 (forallContained!2154 (toList!3708 lt!1640061) lambda!158274 (h!55593 (_2!28204 (h!55594 (toList!3707 lm!1616))))))))

(assert (=> b!4445798 (contains!12440 lt!1640061 (_1!28203 (h!55593 (_2!28204 (h!55594 (toList!3707 lm!1616))))))))

(declare-fun lt!1640066 () Unit!84388)

(declare-fun Unit!84400 () Unit!84388)

(assert (=> b!4445798 (= lt!1640066 Unit!84400)))

(assert (=> b!4445798 (contains!12440 lt!1640062 (_1!28203 (h!55593 (_2!28204 (h!55594 (toList!3707 lm!1616))))))))

(declare-fun lt!1640063 () Unit!84388)

(declare-fun Unit!84401 () Unit!84388)

(assert (=> b!4445798 (= lt!1640063 Unit!84401)))

(assert (=> b!4445798 (forall!9747 (_2!28204 (h!55594 (toList!3707 lm!1616))) lambda!158274)))

(declare-fun lt!1640080 () Unit!84388)

(declare-fun Unit!84402 () Unit!84388)

(assert (=> b!4445798 (= lt!1640080 Unit!84402)))

(assert (=> b!4445798 (forall!9747 (toList!3708 lt!1640061) lambda!158274)))

(declare-fun lt!1640075 () Unit!84388)

(declare-fun Unit!84403 () Unit!84388)

(assert (=> b!4445798 (= lt!1640075 Unit!84403)))

(declare-fun lt!1640065 () Unit!84388)

(declare-fun Unit!84404 () Unit!84388)

(assert (=> b!4445798 (= lt!1640065 Unit!84404)))

(declare-fun lt!1640071 () Unit!84388)

(declare-fun addForallContainsKeyThenBeforeAdding!212 (ListMap!2951 ListMap!2951 K!11223 V!11469) Unit!84388)

(assert (=> b!4445798 (= lt!1640071 (addForallContainsKeyThenBeforeAdding!212 lt!1639908 lt!1640062 (_1!28203 (h!55593 (_2!28204 (h!55594 (toList!3707 lm!1616))))) (_2!28203 (h!55593 (_2!28204 (h!55594 (toList!3707 lm!1616)))))))))

(assert (=> b!4445798 (forall!9747 (toList!3708 lt!1639908) lambda!158274)))

(declare-fun lt!1640078 () Unit!84388)

(assert (=> b!4445798 (= lt!1640078 lt!1640071)))

(assert (=> b!4445798 (forall!9747 (toList!3708 lt!1639908) lambda!158274)))

(declare-fun lt!1640064 () Unit!84388)

(declare-fun Unit!84405 () Unit!84388)

(assert (=> b!4445798 (= lt!1640064 Unit!84405)))

(declare-fun res!1841571 () Bool)

(assert (=> b!4445798 (= res!1841571 (forall!9747 (_2!28204 (h!55594 (toList!3707 lm!1616))) lambda!158274))))

(assert (=> b!4445798 (=> (not res!1841571) (not e!2768109))))

(assert (=> b!4445798 e!2768109))

(declare-fun lt!1640074 () Unit!84388)

(declare-fun Unit!84406 () Unit!84388)

(assert (=> b!4445798 (= lt!1640074 Unit!84406)))

(declare-fun bm!309274 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!212 (ListMap!2951) Unit!84388)

(assert (=> bm!309274 (= call!309277 (lemmaContainsAllItsOwnKeys!212 lt!1639908))))

(assert (= (and d!1349855 c!756576) b!4445794))

(assert (= (and d!1349855 (not c!756576)) b!4445798))

(assert (= (and b!4445798 res!1841571) b!4445797))

(assert (= (or b!4445794 b!4445798) bm!309274))

(assert (= (or b!4445794 b!4445797) bm!309273))

(assert (= (or b!4445794 b!4445798) bm!309272))

(assert (= (and d!1349855 res!1841573) b!4445795))

(assert (= (and b!4445795 res!1841572) b!4445796))

(declare-fun m!5136437 () Bool)

(assert (=> d!1349855 m!5136437))

(assert (=> d!1349855 m!5136179))

(declare-fun m!5136439 () Bool)

(assert (=> bm!309272 m!5136439))

(declare-fun m!5136441 () Bool)

(assert (=> b!4445796 m!5136441))

(declare-fun m!5136443 () Bool)

(assert (=> bm!309273 m!5136443))

(declare-fun m!5136445 () Bool)

(assert (=> bm!309274 m!5136445))

(declare-fun m!5136447 () Bool)

(assert (=> b!4445798 m!5136447))

(declare-fun m!5136449 () Bool)

(assert (=> b!4445798 m!5136449))

(declare-fun m!5136451 () Bool)

(assert (=> b!4445798 m!5136451))

(declare-fun m!5136453 () Bool)

(assert (=> b!4445798 m!5136453))

(declare-fun m!5136455 () Bool)

(assert (=> b!4445798 m!5136455))

(declare-fun m!5136457 () Bool)

(assert (=> b!4445798 m!5136457))

(declare-fun m!5136459 () Bool)

(assert (=> b!4445798 m!5136459))

(declare-fun m!5136461 () Bool)

(assert (=> b!4445798 m!5136461))

(assert (=> b!4445798 m!5136455))

(assert (=> b!4445798 m!5136453))

(assert (=> b!4445798 m!5136459))

(declare-fun m!5136463 () Bool)

(assert (=> b!4445798 m!5136463))

(assert (=> b!4445798 m!5136451))

(declare-fun m!5136465 () Bool)

(assert (=> b!4445798 m!5136465))

(declare-fun m!5136467 () Bool)

(assert (=> b!4445795 m!5136467))

(assert (=> b!4445682 d!1349855))

(declare-fun d!1349877 () Bool)

(declare-fun res!1841584 () Bool)

(declare-fun e!2768121 () Bool)

(assert (=> d!1349877 (=> res!1841584 e!2768121)))

(assert (=> d!1349877 (= res!1841584 (not (is-Cons!49854 (_2!28204 (h!55594 (toList!3707 lm!1616))))))))

(assert (=> d!1349877 (= (noDuplicateKeys!860 (_2!28204 (h!55594 (toList!3707 lm!1616)))) e!2768121)))

(declare-fun b!4445811 () Bool)

(declare-fun e!2768122 () Bool)

(assert (=> b!4445811 (= e!2768121 e!2768122)))

(declare-fun res!1841585 () Bool)

(assert (=> b!4445811 (=> (not res!1841585) (not e!2768122))))

(assert (=> b!4445811 (= res!1841585 (not (containsKey!1281 (t!356920 (_2!28204 (h!55594 (toList!3707 lm!1616)))) (_1!28203 (h!55593 (_2!28204 (h!55594 (toList!3707 lm!1616))))))))))

(declare-fun b!4445812 () Bool)

(assert (=> b!4445812 (= e!2768122 (noDuplicateKeys!860 (t!356920 (_2!28204 (h!55594 (toList!3707 lm!1616))))))))

(assert (= (and d!1349877 (not res!1841584)) b!4445811))

(assert (= (and b!4445811 res!1841585) b!4445812))

(declare-fun m!5136477 () Bool)

(assert (=> b!4445811 m!5136477))

(declare-fun m!5136479 () Bool)

(assert (=> b!4445812 m!5136479))

(assert (=> b!4445682 d!1349877))

(declare-fun bs!765833 () Bool)

(declare-fun d!1349883 () Bool)

(assert (= bs!765833 (and d!1349883 start!435326)))

(declare-fun lambda!158278 () Int)

(assert (=> bs!765833 (not (= lambda!158278 lambda!158231))))

(assert (=> d!1349883 true))

(assert (=> d!1349883 (= (allKeysSameHashInMap!966 lm!1616 hashF!1220) (forall!9745 (toList!3707 lm!1616) lambda!158278))))

(declare-fun bs!765834 () Bool)

(assert (= bs!765834 d!1349883))

(declare-fun m!5136481 () Bool)

(assert (=> bs!765834 m!5136481))

(assert (=> b!4445671 d!1349883))

(declare-fun b!4445833 () Bool)

(declare-fun e!2768140 () Unit!84388)

(declare-fun lt!1640100 () Unit!84388)

(assert (=> b!4445833 (= e!2768140 lt!1640100)))

(declare-fun lt!1640103 () Unit!84388)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!720 (List!49978 K!11223) Unit!84388)

(assert (=> b!4445833 (= lt!1640103 (lemmaContainsKeyImpliesGetValueByKeyDefined!720 (toList!3708 lt!1639892) key!3717))))

(declare-fun isDefined!8117 (Option!10827) Bool)

(assert (=> b!4445833 (isDefined!8117 (getValueByKey!813 (toList!3708 lt!1639892) key!3717))))

(declare-fun lt!1640106 () Unit!84388)

(assert (=> b!4445833 (= lt!1640106 lt!1640103)))

(declare-fun lemmaInListThenGetKeysListContains!299 (List!49978 K!11223) Unit!84388)

(assert (=> b!4445833 (= lt!1640100 (lemmaInListThenGetKeysListContains!299 (toList!3708 lt!1639892) key!3717))))

(declare-fun call!309282 () Bool)

(assert (=> b!4445833 call!309282))

(declare-fun b!4445834 () Bool)

(declare-fun e!2768136 () Bool)

(declare-datatypes ((List!49982 0))(
  ( (Nil!49858) (Cons!49858 (h!55598 K!11223) (t!356924 List!49982)) )
))
(declare-fun contains!12445 (List!49982 K!11223) Bool)

(declare-fun keys!17094 (ListMap!2951) List!49982)

(assert (=> b!4445834 (= e!2768136 (not (contains!12445 (keys!17094 lt!1639892) key!3717)))))

(declare-fun b!4445835 () Bool)

(declare-fun e!2768137 () Unit!84388)

(assert (=> b!4445835 (= e!2768140 e!2768137)))

(declare-fun c!756583 () Bool)

(assert (=> b!4445835 (= c!756583 call!309282)))

(declare-fun b!4445836 () Bool)

(declare-fun Unit!84407 () Unit!84388)

(assert (=> b!4445836 (= e!2768137 Unit!84407)))

(declare-fun b!4445837 () Bool)

(declare-fun e!2768135 () Bool)

(declare-fun e!2768139 () Bool)

(assert (=> b!4445837 (= e!2768135 e!2768139)))

(declare-fun res!1841594 () Bool)

(assert (=> b!4445837 (=> (not res!1841594) (not e!2768139))))

(assert (=> b!4445837 (= res!1841594 (isDefined!8117 (getValueByKey!813 (toList!3708 lt!1639892) key!3717)))))

(declare-fun d!1349885 () Bool)

(assert (=> d!1349885 e!2768135))

(declare-fun res!1841592 () Bool)

(assert (=> d!1349885 (=> res!1841592 e!2768135)))

(assert (=> d!1349885 (= res!1841592 e!2768136)))

(declare-fun res!1841593 () Bool)

(assert (=> d!1349885 (=> (not res!1841593) (not e!2768136))))

(declare-fun lt!1640101 () Bool)

(assert (=> d!1349885 (= res!1841593 (not lt!1640101))))

(declare-fun lt!1640102 () Bool)

(assert (=> d!1349885 (= lt!1640101 lt!1640102)))

(declare-fun lt!1640107 () Unit!84388)

(assert (=> d!1349885 (= lt!1640107 e!2768140)))

(declare-fun c!756584 () Bool)

(assert (=> d!1349885 (= c!756584 lt!1640102)))

(declare-fun containsKey!1283 (List!49978 K!11223) Bool)

(assert (=> d!1349885 (= lt!1640102 (containsKey!1283 (toList!3708 lt!1639892) key!3717))))

(assert (=> d!1349885 (= (contains!12440 lt!1639892 key!3717) lt!1640101)))

(declare-fun b!4445838 () Bool)

(declare-fun e!2768138 () List!49982)

(assert (=> b!4445838 (= e!2768138 (keys!17094 lt!1639892))))

(declare-fun b!4445839 () Bool)

(assert (=> b!4445839 false))

(declare-fun lt!1640104 () Unit!84388)

(declare-fun lt!1640105 () Unit!84388)

(assert (=> b!4445839 (= lt!1640104 lt!1640105)))

(assert (=> b!4445839 (containsKey!1283 (toList!3708 lt!1639892) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!300 (List!49978 K!11223) Unit!84388)

(assert (=> b!4445839 (= lt!1640105 (lemmaInGetKeysListThenContainsKey!300 (toList!3708 lt!1639892) key!3717))))

(declare-fun Unit!84408 () Unit!84388)

(assert (=> b!4445839 (= e!2768137 Unit!84408)))

(declare-fun b!4445840 () Bool)

(assert (=> b!4445840 (= e!2768139 (contains!12445 (keys!17094 lt!1639892) key!3717))))

(declare-fun bm!309277 () Bool)

(assert (=> bm!309277 (= call!309282 (contains!12445 e!2768138 key!3717))))

(declare-fun c!756585 () Bool)

(assert (=> bm!309277 (= c!756585 c!756584)))

(declare-fun b!4445841 () Bool)

(declare-fun getKeysList!302 (List!49978) List!49982)

(assert (=> b!4445841 (= e!2768138 (getKeysList!302 (toList!3708 lt!1639892)))))

(assert (= (and d!1349885 c!756584) b!4445833))

(assert (= (and d!1349885 (not c!756584)) b!4445835))

(assert (= (and b!4445835 c!756583) b!4445839))

(assert (= (and b!4445835 (not c!756583)) b!4445836))

(assert (= (or b!4445833 b!4445835) bm!309277))

(assert (= (and bm!309277 c!756585) b!4445841))

(assert (= (and bm!309277 (not c!756585)) b!4445838))

(assert (= (and d!1349885 res!1841593) b!4445834))

(assert (= (and d!1349885 (not res!1841592)) b!4445837))

(assert (= (and b!4445837 res!1841594) b!4445840))

(declare-fun m!5136493 () Bool)

(assert (=> b!4445834 m!5136493))

(assert (=> b!4445834 m!5136493))

(declare-fun m!5136495 () Bool)

(assert (=> b!4445834 m!5136495))

(declare-fun m!5136497 () Bool)

(assert (=> b!4445833 m!5136497))

(declare-fun m!5136499 () Bool)

(assert (=> b!4445833 m!5136499))

(assert (=> b!4445833 m!5136499))

(declare-fun m!5136501 () Bool)

(assert (=> b!4445833 m!5136501))

(declare-fun m!5136503 () Bool)

(assert (=> b!4445833 m!5136503))

(assert (=> b!4445840 m!5136493))

(assert (=> b!4445840 m!5136493))

(assert (=> b!4445840 m!5136495))

(declare-fun m!5136505 () Bool)

(assert (=> b!4445841 m!5136505))

(declare-fun m!5136507 () Bool)

(assert (=> bm!309277 m!5136507))

(declare-fun m!5136509 () Bool)

(assert (=> d!1349885 m!5136509))

(assert (=> b!4445837 m!5136499))

(assert (=> b!4445837 m!5136499))

(assert (=> b!4445837 m!5136501))

(assert (=> b!4445838 m!5136493))

(assert (=> b!4445839 m!5136509))

(declare-fun m!5136511 () Bool)

(assert (=> b!4445839 m!5136511))

(assert (=> b!4445681 d!1349885))

(declare-fun bs!765836 () Bool)

(declare-fun d!1349889 () Bool)

(assert (= bs!765836 (and d!1349889 start!435326)))

(declare-fun lambda!158281 () Int)

(assert (=> bs!765836 (= lambda!158281 lambda!158231)))

(declare-fun bs!765837 () Bool)

(assert (= bs!765837 (and d!1349889 d!1349883)))

(assert (=> bs!765837 (not (= lambda!158281 lambda!158278))))

(declare-fun lt!1640110 () ListMap!2951)

(assert (=> d!1349889 (invariantList!855 (toList!3708 lt!1640110))))

(declare-fun e!2768143 () ListMap!2951)

(assert (=> d!1349889 (= lt!1640110 e!2768143)))

(declare-fun c!756588 () Bool)

(assert (=> d!1349889 (= c!756588 (is-Cons!49855 (toList!3707 lm!1616)))))

(assert (=> d!1349889 (forall!9745 (toList!3707 lm!1616) lambda!158281)))

(assert (=> d!1349889 (= (extractMap!921 (toList!3707 lm!1616)) lt!1640110)))

(declare-fun b!4445846 () Bool)

(assert (=> b!4445846 (= e!2768143 (addToMapMapFromBucket!466 (_2!28204 (h!55594 (toList!3707 lm!1616))) (extractMap!921 (t!356921 (toList!3707 lm!1616)))))))

(declare-fun b!4445847 () Bool)

(assert (=> b!4445847 (= e!2768143 (ListMap!2952 Nil!49854))))

(assert (= (and d!1349889 c!756588) b!4445846))

(assert (= (and d!1349889 (not c!756588)) b!4445847))

(declare-fun m!5136513 () Bool)

(assert (=> d!1349889 m!5136513))

(declare-fun m!5136515 () Bool)

(assert (=> d!1349889 m!5136515))

(declare-fun m!5136517 () Bool)

(assert (=> b!4445846 m!5136517))

(assert (=> b!4445846 m!5136517))

(declare-fun m!5136519 () Bool)

(assert (=> b!4445846 m!5136519))

(assert (=> b!4445681 d!1349889))

(declare-fun d!1349891 () Bool)

(declare-fun res!1841599 () Bool)

(declare-fun e!2768148 () Bool)

(assert (=> d!1349891 (=> res!1841599 e!2768148)))

(assert (=> d!1349891 (= res!1841599 (and (is-Cons!49854 (_2!28204 (h!55594 (toList!3707 lm!1616)))) (= (_1!28203 (h!55593 (_2!28204 (h!55594 (toList!3707 lm!1616))))) key!3717)))))

(assert (=> d!1349891 (= (containsKey!1281 (_2!28204 (h!55594 (toList!3707 lm!1616))) key!3717) e!2768148)))

(declare-fun b!4445852 () Bool)

(declare-fun e!2768149 () Bool)

(assert (=> b!4445852 (= e!2768148 e!2768149)))

(declare-fun res!1841600 () Bool)

(assert (=> b!4445852 (=> (not res!1841600) (not e!2768149))))

(assert (=> b!4445852 (= res!1841600 (is-Cons!49854 (_2!28204 (h!55594 (toList!3707 lm!1616)))))))

(declare-fun b!4445853 () Bool)

(assert (=> b!4445853 (= e!2768149 (containsKey!1281 (t!356920 (_2!28204 (h!55594 (toList!3707 lm!1616)))) key!3717))))

(assert (= (and d!1349891 (not res!1841599)) b!4445852))

(assert (= (and b!4445852 res!1841600) b!4445853))

(declare-fun m!5136521 () Bool)

(assert (=> b!4445853 m!5136521))

(assert (=> b!4445675 d!1349891))

(declare-fun d!1349893 () Bool)

(declare-fun res!1841601 () Bool)

(declare-fun e!2768150 () Bool)

(assert (=> d!1349893 (=> res!1841601 e!2768150)))

(assert (=> d!1349893 (= res!1841601 (and (is-Cons!49854 (apply!11712 lm!1616 (_1!28204 (h!55594 (toList!3707 lm!1616))))) (= (_1!28203 (h!55593 (apply!11712 lm!1616 (_1!28204 (h!55594 (toList!3707 lm!1616)))))) key!3717)))))

(assert (=> d!1349893 (= (containsKey!1281 (apply!11712 lm!1616 (_1!28204 (h!55594 (toList!3707 lm!1616)))) key!3717) e!2768150)))

(declare-fun b!4445854 () Bool)

(declare-fun e!2768151 () Bool)

(assert (=> b!4445854 (= e!2768150 e!2768151)))

(declare-fun res!1841602 () Bool)

(assert (=> b!4445854 (=> (not res!1841602) (not e!2768151))))

(assert (=> b!4445854 (= res!1841602 (is-Cons!49854 (apply!11712 lm!1616 (_1!28204 (h!55594 (toList!3707 lm!1616))))))))

(declare-fun b!4445855 () Bool)

(assert (=> b!4445855 (= e!2768151 (containsKey!1281 (t!356920 (apply!11712 lm!1616 (_1!28204 (h!55594 (toList!3707 lm!1616))))) key!3717))))

(assert (= (and d!1349893 (not res!1841601)) b!4445854))

(assert (= (and b!4445854 res!1841602) b!4445855))

(declare-fun m!5136523 () Bool)

(assert (=> b!4445855 m!5136523))

(assert (=> b!4445675 d!1349893))

(declare-fun d!1349895 () Bool)

(declare-datatypes ((Option!10828 0))(
  ( (None!10827) (Some!10827 (v!44069 List!49978)) )
))
(declare-fun get!16263 (Option!10828) List!49978)

(declare-fun getValueByKey!814 (List!49979 (_ BitVec 64)) Option!10828)

(assert (=> d!1349895 (= (apply!11712 lm!1616 (_1!28204 (h!55594 (toList!3707 lm!1616)))) (get!16263 (getValueByKey!814 (toList!3707 lm!1616) (_1!28204 (h!55594 (toList!3707 lm!1616))))))))

(declare-fun bs!765838 () Bool)

(assert (= bs!765838 d!1349895))

(declare-fun m!5136525 () Bool)

(assert (=> bs!765838 m!5136525))

(assert (=> bs!765838 m!5136525))

(declare-fun m!5136527 () Bool)

(assert (=> bs!765838 m!5136527))

(assert (=> b!4445675 d!1349895))

(declare-fun bs!765839 () Bool)

(declare-fun d!1349897 () Bool)

(assert (= bs!765839 (and d!1349897 start!435326)))

(declare-fun lambda!158284 () Int)

(assert (=> bs!765839 (= lambda!158284 lambda!158231)))

(declare-fun bs!765840 () Bool)

(assert (= bs!765840 (and d!1349897 d!1349883)))

(assert (=> bs!765840 (not (= lambda!158284 lambda!158278))))

(declare-fun bs!765841 () Bool)

(assert (= bs!765841 (and d!1349897 d!1349889)))

(assert (=> bs!765841 (= lambda!158284 lambda!158281)))

(assert (=> d!1349897 (not (containsKey!1281 (apply!11712 lm!1616 (_1!28204 (h!55594 (toList!3707 lm!1616)))) key!3717))))

(declare-fun lt!1640113 () Unit!84388)

(declare-fun choose!28275 (ListLongMap!2357 K!11223 (_ BitVec 64) Hashable!5254) Unit!84388)

(assert (=> d!1349897 (= lt!1640113 (choose!28275 lm!1616 key!3717 (_1!28204 (h!55594 (toList!3707 lm!1616))) hashF!1220))))

(assert (=> d!1349897 (forall!9745 (toList!3707 lm!1616) lambda!158284)))

(assert (=> d!1349897 (= (lemmaNotSameHashThenCannotContainKey!159 lm!1616 key!3717 (_1!28204 (h!55594 (toList!3707 lm!1616))) hashF!1220) lt!1640113)))

(declare-fun bs!765842 () Bool)

(assert (= bs!765842 d!1349897))

(assert (=> bs!765842 m!5136219))

(assert (=> bs!765842 m!5136219))

(assert (=> bs!765842 m!5136221))

(declare-fun m!5136529 () Bool)

(assert (=> bs!765842 m!5136529))

(declare-fun m!5136531 () Bool)

(assert (=> bs!765842 m!5136531))

(assert (=> b!4445675 d!1349897))

(declare-fun d!1349899 () Bool)

(assert (=> d!1349899 (= (eq!460 lt!1639892 lt!1639894) (= (content!8024 (toList!3708 lt!1639892)) (content!8024 (toList!3708 lt!1639894))))))

(declare-fun bs!765843 () Bool)

(assert (= bs!765843 d!1349899))

(declare-fun m!5136533 () Bool)

(assert (=> bs!765843 m!5136533))

(declare-fun m!5136535 () Bool)

(assert (=> bs!765843 m!5136535))

(assert (=> b!4445673 d!1349899))

(declare-fun bs!765844 () Bool)

(declare-fun b!4445856 () Bool)

(assert (= bs!765844 (and b!4445856 b!4445794)))

(declare-fun lambda!158285 () Int)

(assert (=> bs!765844 (= (= lt!1639893 lt!1639908) (= lambda!158285 lambda!158272))))

(declare-fun bs!765845 () Bool)

(assert (= bs!765845 (and b!4445856 b!4445798)))

(assert (=> bs!765845 (= (= lt!1639893 lt!1639908) (= lambda!158285 lambda!158273))))

(assert (=> bs!765845 (= (= lt!1639893 lt!1640062) (= lambda!158285 lambda!158274))))

(declare-fun bs!765846 () Bool)

(assert (= bs!765846 (and b!4445856 d!1349855)))

(assert (=> bs!765846 (= (= lt!1639893 lt!1640060) (= lambda!158285 lambda!158275))))

(assert (=> b!4445856 true))

(declare-fun bs!765847 () Bool)

(declare-fun b!4445860 () Bool)

(assert (= bs!765847 (and b!4445860 b!4445798)))

(declare-fun lambda!158286 () Int)

(assert (=> bs!765847 (= (= lt!1639893 lt!1639908) (= lambda!158286 lambda!158273))))

(declare-fun bs!765848 () Bool)

(assert (= bs!765848 (and b!4445860 b!4445856)))

(assert (=> bs!765848 (= lambda!158286 lambda!158285)))

(declare-fun bs!765849 () Bool)

(assert (= bs!765849 (and b!4445860 b!4445794)))

(assert (=> bs!765849 (= (= lt!1639893 lt!1639908) (= lambda!158286 lambda!158272))))

(assert (=> bs!765847 (= (= lt!1639893 lt!1640062) (= lambda!158286 lambda!158274))))

(declare-fun bs!765850 () Bool)

(assert (= bs!765850 (and b!4445860 d!1349855)))

(assert (=> bs!765850 (= (= lt!1639893 lt!1640060) (= lambda!158286 lambda!158275))))

(assert (=> b!4445860 true))

(declare-fun lt!1640116 () ListMap!2951)

(declare-fun lambda!158287 () Int)

(assert (=> bs!765848 (= (= lt!1640116 lt!1639893) (= lambda!158287 lambda!158285))))

(assert (=> bs!765849 (= (= lt!1640116 lt!1639908) (= lambda!158287 lambda!158272))))

(assert (=> bs!765847 (= (= lt!1640116 lt!1640062) (= lambda!158287 lambda!158274))))

(assert (=> bs!765850 (= (= lt!1640116 lt!1640060) (= lambda!158287 lambda!158275))))

(assert (=> b!4445860 (= (= lt!1640116 lt!1639893) (= lambda!158287 lambda!158286))))

(assert (=> bs!765847 (= (= lt!1640116 lt!1639908) (= lambda!158287 lambda!158273))))

(assert (=> b!4445860 true))

(declare-fun bs!765851 () Bool)

(declare-fun d!1349901 () Bool)

(assert (= bs!765851 (and d!1349901 b!4445856)))

(declare-fun lambda!158288 () Int)

(declare-fun lt!1640114 () ListMap!2951)

(assert (=> bs!765851 (= (= lt!1640114 lt!1639893) (= lambda!158288 lambda!158285))))

(declare-fun bs!765852 () Bool)

(assert (= bs!765852 (and d!1349901 b!4445794)))

(assert (=> bs!765852 (= (= lt!1640114 lt!1639908) (= lambda!158288 lambda!158272))))

(declare-fun bs!765853 () Bool)

(assert (= bs!765853 (and d!1349901 b!4445860)))

(assert (=> bs!765853 (= (= lt!1640114 lt!1640116) (= lambda!158288 lambda!158287))))

(declare-fun bs!765854 () Bool)

(assert (= bs!765854 (and d!1349901 b!4445798)))

(assert (=> bs!765854 (= (= lt!1640114 lt!1640062) (= lambda!158288 lambda!158274))))

(declare-fun bs!765855 () Bool)

(assert (= bs!765855 (and d!1349901 d!1349855)))

(assert (=> bs!765855 (= (= lt!1640114 lt!1640060) (= lambda!158288 lambda!158275))))

(assert (=> bs!765853 (= (= lt!1640114 lt!1639893) (= lambda!158288 lambda!158286))))

(assert (=> bs!765854 (= (= lt!1640114 lt!1639908) (= lambda!158288 lambda!158273))))

(assert (=> d!1349901 true))

(declare-fun call!309285 () Bool)

(declare-fun bm!309278 () Bool)

(declare-fun c!756589 () Bool)

(assert (=> bm!309278 (= call!309285 (forall!9747 (toList!3708 lt!1639893) (ite c!756589 lambda!158285 lambda!158286)))))

(declare-fun bm!309279 () Bool)

(declare-fun call!309284 () Bool)

(assert (=> bm!309279 (= call!309284 (forall!9747 (toList!3708 lt!1639893) (ite c!756589 lambda!158285 lambda!158287)))))

(declare-fun e!2768152 () ListMap!2951)

(assert (=> b!4445856 (= e!2768152 lt!1639893)))

(declare-fun lt!1640122 () Unit!84388)

(declare-fun call!309283 () Unit!84388)

(assert (=> b!4445856 (= lt!1640122 call!309283)))

(assert (=> b!4445856 call!309285))

(declare-fun lt!1640131 () Unit!84388)

(assert (=> b!4445856 (= lt!1640131 lt!1640122)))

(assert (=> b!4445856 call!309284))

(declare-fun lt!1640133 () Unit!84388)

(declare-fun Unit!84409 () Unit!84388)

(assert (=> b!4445856 (= lt!1640133 Unit!84409)))

(declare-fun b!4445857 () Bool)

(declare-fun res!1841604 () Bool)

(declare-fun e!2768154 () Bool)

(assert (=> b!4445857 (=> (not res!1841604) (not e!2768154))))

(assert (=> b!4445857 (= res!1841604 (forall!9747 (toList!3708 lt!1639893) lambda!158288))))

(declare-fun b!4445858 () Bool)

(assert (=> b!4445858 (= e!2768154 (invariantList!855 (toList!3708 lt!1640114)))))

(assert (=> d!1349901 e!2768154))

(declare-fun res!1841605 () Bool)

(assert (=> d!1349901 (=> (not res!1841605) (not e!2768154))))

(assert (=> d!1349901 (= res!1841605 (forall!9747 (_2!28204 (h!55594 (toList!3707 lm!1616))) lambda!158288))))

(assert (=> d!1349901 (= lt!1640114 e!2768152)))

(assert (=> d!1349901 (= c!756589 (is-Nil!49854 (_2!28204 (h!55594 (toList!3707 lm!1616)))))))

(assert (=> d!1349901 (noDuplicateKeys!860 (_2!28204 (h!55594 (toList!3707 lm!1616))))))

(assert (=> d!1349901 (= (addToMapMapFromBucket!466 (_2!28204 (h!55594 (toList!3707 lm!1616))) lt!1639893) lt!1640114)))

(declare-fun b!4445859 () Bool)

(declare-fun e!2768153 () Bool)

(assert (=> b!4445859 (= e!2768153 call!309284)))

(assert (=> b!4445860 (= e!2768152 lt!1640116)))

(declare-fun lt!1640115 () ListMap!2951)

(assert (=> b!4445860 (= lt!1640115 (+!1258 lt!1639893 (h!55593 (_2!28204 (h!55594 (toList!3707 lm!1616))))))))

(assert (=> b!4445860 (= lt!1640116 (addToMapMapFromBucket!466 (t!356920 (_2!28204 (h!55594 (toList!3707 lm!1616)))) (+!1258 lt!1639893 (h!55593 (_2!28204 (h!55594 (toList!3707 lm!1616)))))))))

(declare-fun lt!1640130 () Unit!84388)

(assert (=> b!4445860 (= lt!1640130 call!309283)))

(assert (=> b!4445860 call!309285))

(declare-fun lt!1640127 () Unit!84388)

(assert (=> b!4445860 (= lt!1640127 lt!1640130)))

(assert (=> b!4445860 (forall!9747 (toList!3708 lt!1640115) lambda!158287)))

(declare-fun lt!1640126 () Unit!84388)

(declare-fun Unit!84410 () Unit!84388)

(assert (=> b!4445860 (= lt!1640126 Unit!84410)))

(assert (=> b!4445860 (forall!9747 (t!356920 (_2!28204 (h!55594 (toList!3707 lm!1616)))) lambda!158287)))

(declare-fun lt!1640123 () Unit!84388)

(declare-fun Unit!84411 () Unit!84388)

(assert (=> b!4445860 (= lt!1640123 Unit!84411)))

(declare-fun lt!1640121 () Unit!84388)

(declare-fun Unit!84412 () Unit!84388)

(assert (=> b!4445860 (= lt!1640121 Unit!84412)))

(declare-fun lt!1640124 () Unit!84388)

(assert (=> b!4445860 (= lt!1640124 (forallContained!2154 (toList!3708 lt!1640115) lambda!158287 (h!55593 (_2!28204 (h!55594 (toList!3707 lm!1616))))))))

(assert (=> b!4445860 (contains!12440 lt!1640115 (_1!28203 (h!55593 (_2!28204 (h!55594 (toList!3707 lm!1616))))))))

(declare-fun lt!1640120 () Unit!84388)

(declare-fun Unit!84413 () Unit!84388)

(assert (=> b!4445860 (= lt!1640120 Unit!84413)))

(assert (=> b!4445860 (contains!12440 lt!1640116 (_1!28203 (h!55593 (_2!28204 (h!55594 (toList!3707 lm!1616))))))))

(declare-fun lt!1640117 () Unit!84388)

(declare-fun Unit!84414 () Unit!84388)

(assert (=> b!4445860 (= lt!1640117 Unit!84414)))

(assert (=> b!4445860 (forall!9747 (_2!28204 (h!55594 (toList!3707 lm!1616))) lambda!158287)))

(declare-fun lt!1640134 () Unit!84388)

(declare-fun Unit!84415 () Unit!84388)

(assert (=> b!4445860 (= lt!1640134 Unit!84415)))

(assert (=> b!4445860 (forall!9747 (toList!3708 lt!1640115) lambda!158287)))

(declare-fun lt!1640129 () Unit!84388)

(declare-fun Unit!84416 () Unit!84388)

(assert (=> b!4445860 (= lt!1640129 Unit!84416)))

(declare-fun lt!1640119 () Unit!84388)

(declare-fun Unit!84417 () Unit!84388)

(assert (=> b!4445860 (= lt!1640119 Unit!84417)))

(declare-fun lt!1640125 () Unit!84388)

(assert (=> b!4445860 (= lt!1640125 (addForallContainsKeyThenBeforeAdding!212 lt!1639893 lt!1640116 (_1!28203 (h!55593 (_2!28204 (h!55594 (toList!3707 lm!1616))))) (_2!28203 (h!55593 (_2!28204 (h!55594 (toList!3707 lm!1616)))))))))

(assert (=> b!4445860 (forall!9747 (toList!3708 lt!1639893) lambda!158287)))

(declare-fun lt!1640132 () Unit!84388)

(assert (=> b!4445860 (= lt!1640132 lt!1640125)))

(assert (=> b!4445860 (forall!9747 (toList!3708 lt!1639893) lambda!158287)))

(declare-fun lt!1640118 () Unit!84388)

(declare-fun Unit!84418 () Unit!84388)

(assert (=> b!4445860 (= lt!1640118 Unit!84418)))

(declare-fun res!1841603 () Bool)

(assert (=> b!4445860 (= res!1841603 (forall!9747 (_2!28204 (h!55594 (toList!3707 lm!1616))) lambda!158287))))

(assert (=> b!4445860 (=> (not res!1841603) (not e!2768153))))

(assert (=> b!4445860 e!2768153))

(declare-fun lt!1640128 () Unit!84388)

(declare-fun Unit!84419 () Unit!84388)

(assert (=> b!4445860 (= lt!1640128 Unit!84419)))

(declare-fun bm!309280 () Bool)

(assert (=> bm!309280 (= call!309283 (lemmaContainsAllItsOwnKeys!212 lt!1639893))))

(assert (= (and d!1349901 c!756589) b!4445856))

(assert (= (and d!1349901 (not c!756589)) b!4445860))

(assert (= (and b!4445860 res!1841603) b!4445859))

(assert (= (or b!4445856 b!4445860) bm!309280))

(assert (= (or b!4445856 b!4445859) bm!309279))

(assert (= (or b!4445856 b!4445860) bm!309278))

(assert (= (and d!1349901 res!1841605) b!4445857))

(assert (= (and b!4445857 res!1841604) b!4445858))

(declare-fun m!5136537 () Bool)

(assert (=> d!1349901 m!5136537))

(assert (=> d!1349901 m!5136179))

(declare-fun m!5136539 () Bool)

(assert (=> bm!309278 m!5136539))

(declare-fun m!5136541 () Bool)

(assert (=> b!4445858 m!5136541))

(declare-fun m!5136543 () Bool)

(assert (=> bm!309279 m!5136543))

(declare-fun m!5136545 () Bool)

(assert (=> bm!309280 m!5136545))

(declare-fun m!5136547 () Bool)

(assert (=> b!4445860 m!5136547))

(declare-fun m!5136549 () Bool)

(assert (=> b!4445860 m!5136549))

(declare-fun m!5136551 () Bool)

(assert (=> b!4445860 m!5136551))

(declare-fun m!5136553 () Bool)

(assert (=> b!4445860 m!5136553))

(declare-fun m!5136555 () Bool)

(assert (=> b!4445860 m!5136555))

(declare-fun m!5136557 () Bool)

(assert (=> b!4445860 m!5136557))

(declare-fun m!5136559 () Bool)

(assert (=> b!4445860 m!5136559))

(declare-fun m!5136561 () Bool)

(assert (=> b!4445860 m!5136561))

(assert (=> b!4445860 m!5136555))

(assert (=> b!4445860 m!5136553))

(assert (=> b!4445860 m!5136559))

(declare-fun m!5136563 () Bool)

(assert (=> b!4445860 m!5136563))

(assert (=> b!4445860 m!5136551))

(declare-fun m!5136565 () Bool)

(assert (=> b!4445860 m!5136565))

(declare-fun m!5136567 () Bool)

(assert (=> b!4445857 m!5136567))

(assert (=> b!4445673 d!1349901))

(declare-fun d!1349903 () Bool)

(declare-fun hash!2339 (Hashable!5254 K!11223) (_ BitVec 64))

(assert (=> d!1349903 (= (hash!2334 hashF!1220 key!3717) (hash!2339 hashF!1220 key!3717))))

(declare-fun bs!765856 () Bool)

(assert (= bs!765856 d!1349903))

(declare-fun m!5136569 () Bool)

(assert (=> bs!765856 m!5136569))

(assert (=> b!4445678 d!1349903))

(declare-fun d!1349905 () Bool)

(declare-fun res!1841606 () Bool)

(declare-fun e!2768155 () Bool)

(assert (=> d!1349905 (=> res!1841606 e!2768155)))

(assert (=> d!1349905 (= res!1841606 (is-Nil!49855 (toList!3707 lt!1639905)))))

(assert (=> d!1349905 (= (forall!9745 (toList!3707 lt!1639905) lambda!158231) e!2768155)))

(declare-fun b!4445861 () Bool)

(declare-fun e!2768156 () Bool)

(assert (=> b!4445861 (= e!2768155 e!2768156)))

(declare-fun res!1841607 () Bool)

(assert (=> b!4445861 (=> (not res!1841607) (not e!2768156))))

(assert (=> b!4445861 (= res!1841607 (dynLambda!20927 lambda!158231 (h!55594 (toList!3707 lt!1639905))))))

(declare-fun b!4445862 () Bool)

(assert (=> b!4445862 (= e!2768156 (forall!9745 (t!356921 (toList!3707 lt!1639905)) lambda!158231))))

(assert (= (and d!1349905 (not res!1841606)) b!4445861))

(assert (= (and b!4445861 res!1841607) b!4445862))

(declare-fun b_lambda!145533 () Bool)

(assert (=> (not b_lambda!145533) (not b!4445861)))

(declare-fun m!5136571 () Bool)

(assert (=> b!4445861 m!5136571))

(declare-fun m!5136573 () Bool)

(assert (=> b!4445862 m!5136573))

(assert (=> b!4445667 d!1349905))

(declare-fun d!1349907 () Bool)

(declare-fun e!2768159 () Bool)

(assert (=> d!1349907 e!2768159))

(declare-fun res!1841612 () Bool)

(assert (=> d!1349907 (=> (not res!1841612) (not e!2768159))))

(declare-fun lt!1640143 () ListLongMap!2357)

(assert (=> d!1349907 (= res!1841612 (contains!12441 lt!1640143 (_1!28204 lt!1639890)))))

(declare-fun lt!1640146 () List!49979)

(assert (=> d!1349907 (= lt!1640143 (ListLongMap!2358 lt!1640146))))

(declare-fun lt!1640145 () Unit!84388)

(declare-fun lt!1640144 () Unit!84388)

(assert (=> d!1349907 (= lt!1640145 lt!1640144)))

(assert (=> d!1349907 (= (getValueByKey!814 lt!1640146 (_1!28204 lt!1639890)) (Some!10827 (_2!28204 lt!1639890)))))

(declare-fun lemmaContainsTupThenGetReturnValue!530 (List!49979 (_ BitVec 64) List!49978) Unit!84388)

(assert (=> d!1349907 (= lt!1640144 (lemmaContainsTupThenGetReturnValue!530 lt!1640146 (_1!28204 lt!1639890) (_2!28204 lt!1639890)))))

(declare-fun insertStrictlySorted!309 (List!49979 (_ BitVec 64) List!49978) List!49979)

(assert (=> d!1349907 (= lt!1640146 (insertStrictlySorted!309 (toList!3707 lm!1616) (_1!28204 lt!1639890) (_2!28204 lt!1639890)))))

(assert (=> d!1349907 (= (+!1257 lm!1616 lt!1639890) lt!1640143)))

(declare-fun b!4445867 () Bool)

(declare-fun res!1841613 () Bool)

(assert (=> b!4445867 (=> (not res!1841613) (not e!2768159))))

(assert (=> b!4445867 (= res!1841613 (= (getValueByKey!814 (toList!3707 lt!1640143) (_1!28204 lt!1639890)) (Some!10827 (_2!28204 lt!1639890))))))

(declare-fun b!4445868 () Bool)

(declare-fun contains!12446 (List!49979 tuple2!49820) Bool)

(assert (=> b!4445868 (= e!2768159 (contains!12446 (toList!3707 lt!1640143) lt!1639890))))

(assert (= (and d!1349907 res!1841612) b!4445867))

(assert (= (and b!4445867 res!1841613) b!4445868))

(declare-fun m!5136575 () Bool)

(assert (=> d!1349907 m!5136575))

(declare-fun m!5136577 () Bool)

(assert (=> d!1349907 m!5136577))

(declare-fun m!5136579 () Bool)

(assert (=> d!1349907 m!5136579))

(declare-fun m!5136581 () Bool)

(assert (=> d!1349907 m!5136581))

(declare-fun m!5136583 () Bool)

(assert (=> b!4445867 m!5136583))

(declare-fun m!5136585 () Bool)

(assert (=> b!4445868 m!5136585))

(assert (=> b!4445667 d!1349907))

(declare-fun d!1349909 () Bool)

(assert (=> d!1349909 (forall!9745 (toList!3707 (+!1257 lm!1616 (tuple2!49821 hash!366 newBucket!194))) lambda!158231)))

(declare-fun lt!1640149 () Unit!84388)

(declare-fun choose!28276 (ListLongMap!2357 Int (_ BitVec 64) List!49978) Unit!84388)

(assert (=> d!1349909 (= lt!1640149 (choose!28276 lm!1616 lambda!158231 hash!366 newBucket!194))))

(declare-fun e!2768162 () Bool)

(assert (=> d!1349909 e!2768162))

(declare-fun res!1841616 () Bool)

(assert (=> d!1349909 (=> (not res!1841616) (not e!2768162))))

(assert (=> d!1349909 (= res!1841616 (forall!9745 (toList!3707 lm!1616) lambda!158231))))

(assert (=> d!1349909 (= (addValidProp!498 lm!1616 lambda!158231 hash!366 newBucket!194) lt!1640149)))

(declare-fun b!4445872 () Bool)

(assert (=> b!4445872 (= e!2768162 (dynLambda!20927 lambda!158231 (tuple2!49821 hash!366 newBucket!194)))))

(assert (= (and d!1349909 res!1841616) b!4445872))

(declare-fun b_lambda!145535 () Bool)

(assert (=> (not b_lambda!145535) (not b!4445872)))

(declare-fun m!5136587 () Bool)

(assert (=> d!1349909 m!5136587))

(declare-fun m!5136589 () Bool)

(assert (=> d!1349909 m!5136589))

(declare-fun m!5136591 () Bool)

(assert (=> d!1349909 m!5136591))

(assert (=> d!1349909 m!5136199))

(declare-fun m!5136593 () Bool)

(assert (=> b!4445872 m!5136593))

(assert (=> b!4445667 d!1349909))

(declare-fun bs!765857 () Bool)

(declare-fun d!1349911 () Bool)

(assert (= bs!765857 (and d!1349911 b!4445856)))

(declare-fun lambda!158291 () Int)

(assert (=> bs!765857 (not (= lambda!158291 lambda!158285))))

(declare-fun bs!765858 () Bool)

(assert (= bs!765858 (and d!1349911 b!4445794)))

(assert (=> bs!765858 (not (= lambda!158291 lambda!158272))))

(declare-fun bs!765859 () Bool)

(assert (= bs!765859 (and d!1349911 b!4445860)))

(assert (=> bs!765859 (not (= lambda!158291 lambda!158287))))

(declare-fun bs!765860 () Bool)

(assert (= bs!765860 (and d!1349911 b!4445798)))

(assert (=> bs!765860 (not (= lambda!158291 lambda!158274))))

(declare-fun bs!765861 () Bool)

(assert (= bs!765861 (and d!1349911 d!1349855)))

(assert (=> bs!765861 (not (= lambda!158291 lambda!158275))))

(declare-fun bs!765862 () Bool)

(assert (= bs!765862 (and d!1349911 d!1349901)))

(assert (=> bs!765862 (not (= lambda!158291 lambda!158288))))

(assert (=> bs!765859 (not (= lambda!158291 lambda!158286))))

(assert (=> bs!765860 (not (= lambda!158291 lambda!158273))))

(assert (=> d!1349911 true))

(assert (=> d!1349911 true))

(assert (=> d!1349911 (= (allKeysSameHash!820 newBucket!194 hash!366 hashF!1220) (forall!9747 newBucket!194 lambda!158291))))

(declare-fun bs!765863 () Bool)

(assert (= bs!765863 d!1349911))

(declare-fun m!5136595 () Bool)

(assert (=> bs!765863 m!5136595))

(assert (=> b!4445677 d!1349911))

(declare-fun d!1349913 () Bool)

(assert (=> d!1349913 (= (apply!11712 lm!1616 hash!366) (get!16263 (getValueByKey!814 (toList!3707 lm!1616) hash!366)))))

(declare-fun bs!765864 () Bool)

(assert (= bs!765864 d!1349913))

(declare-fun m!5136597 () Bool)

(assert (=> bs!765864 m!5136597))

(assert (=> bs!765864 m!5136597))

(declare-fun m!5136599 () Bool)

(assert (=> bs!765864 m!5136599))

(assert (=> b!4445666 d!1349913))

(declare-fun bs!765865 () Bool)

(declare-fun d!1349915 () Bool)

(assert (= bs!765865 (and d!1349915 start!435326)))

(declare-fun lambda!158292 () Int)

(assert (=> bs!765865 (= lambda!158292 lambda!158231)))

(declare-fun bs!765866 () Bool)

(assert (= bs!765866 (and d!1349915 d!1349883)))

(assert (=> bs!765866 (not (= lambda!158292 lambda!158278))))

(declare-fun bs!765867 () Bool)

(assert (= bs!765867 (and d!1349915 d!1349889)))

(assert (=> bs!765867 (= lambda!158292 lambda!158281)))

(declare-fun bs!765868 () Bool)

(assert (= bs!765868 (and d!1349915 d!1349897)))

(assert (=> bs!765868 (= lambda!158292 lambda!158284)))

(declare-fun lt!1640150 () ListMap!2951)

(assert (=> d!1349915 (invariantList!855 (toList!3708 lt!1640150))))

(declare-fun e!2768163 () ListMap!2951)

(assert (=> d!1349915 (= lt!1640150 e!2768163)))

(declare-fun c!756590 () Bool)

(assert (=> d!1349915 (= c!756590 (is-Cons!49855 (toList!3707 lt!1639895)))))

(assert (=> d!1349915 (forall!9745 (toList!3707 lt!1639895) lambda!158292)))

(assert (=> d!1349915 (= (extractMap!921 (toList!3707 lt!1639895)) lt!1640150)))

(declare-fun b!4445877 () Bool)

(assert (=> b!4445877 (= e!2768163 (addToMapMapFromBucket!466 (_2!28204 (h!55594 (toList!3707 lt!1639895))) (extractMap!921 (t!356921 (toList!3707 lt!1639895)))))))

(declare-fun b!4445878 () Bool)

(assert (=> b!4445878 (= e!2768163 (ListMap!2952 Nil!49854))))

(assert (= (and d!1349915 c!756590) b!4445877))

(assert (= (and d!1349915 (not c!756590)) b!4445878))

(declare-fun m!5136601 () Bool)

(assert (=> d!1349915 m!5136601))

(declare-fun m!5136603 () Bool)

(assert (=> d!1349915 m!5136603))

(declare-fun m!5136605 () Bool)

(assert (=> b!4445877 m!5136605))

(assert (=> b!4445877 m!5136605))

(declare-fun m!5136607 () Bool)

(assert (=> b!4445877 m!5136607))

(assert (=> b!4445676 d!1349915))

(declare-fun bs!765869 () Bool)

(declare-fun d!1349917 () Bool)

(assert (= bs!765869 (and d!1349917 d!1349889)))

(declare-fun lambda!158293 () Int)

(assert (=> bs!765869 (= lambda!158293 lambda!158281)))

(declare-fun bs!765870 () Bool)

(assert (= bs!765870 (and d!1349917 d!1349883)))

(assert (=> bs!765870 (not (= lambda!158293 lambda!158278))))

(declare-fun bs!765871 () Bool)

(assert (= bs!765871 (and d!1349917 start!435326)))

(assert (=> bs!765871 (= lambda!158293 lambda!158231)))

(declare-fun bs!765872 () Bool)

(assert (= bs!765872 (and d!1349917 d!1349897)))

(assert (=> bs!765872 (= lambda!158293 lambda!158284)))

(declare-fun bs!765873 () Bool)

(assert (= bs!765873 (and d!1349917 d!1349915)))

(assert (=> bs!765873 (= lambda!158293 lambda!158292)))

(declare-fun lt!1640151 () ListMap!2951)

(assert (=> d!1349917 (invariantList!855 (toList!3708 lt!1640151))))

(declare-fun e!2768164 () ListMap!2951)

(assert (=> d!1349917 (= lt!1640151 e!2768164)))

(declare-fun c!756591 () Bool)

(assert (=> d!1349917 (= c!756591 (is-Cons!49855 (toList!3707 (+!1257 lt!1639895 lt!1639890))))))

(assert (=> d!1349917 (forall!9745 (toList!3707 (+!1257 lt!1639895 lt!1639890)) lambda!158293)))

(assert (=> d!1349917 (= (extractMap!921 (toList!3707 (+!1257 lt!1639895 lt!1639890))) lt!1640151)))

(declare-fun b!4445879 () Bool)

(assert (=> b!4445879 (= e!2768164 (addToMapMapFromBucket!466 (_2!28204 (h!55594 (toList!3707 (+!1257 lt!1639895 lt!1639890)))) (extractMap!921 (t!356921 (toList!3707 (+!1257 lt!1639895 lt!1639890))))))))

(declare-fun b!4445880 () Bool)

(assert (=> b!4445880 (= e!2768164 (ListMap!2952 Nil!49854))))

(assert (= (and d!1349917 c!756591) b!4445879))

(assert (= (and d!1349917 (not c!756591)) b!4445880))

(declare-fun m!5136609 () Bool)

(assert (=> d!1349917 m!5136609))

(declare-fun m!5136611 () Bool)

(assert (=> d!1349917 m!5136611))

(declare-fun m!5136613 () Bool)

(assert (=> b!4445879 m!5136613))

(assert (=> b!4445879 m!5136613))

(declare-fun m!5136615 () Bool)

(assert (=> b!4445879 m!5136615))

(assert (=> b!4445676 d!1349917))

(declare-fun d!1349919 () Bool)

(declare-fun e!2768165 () Bool)

(assert (=> d!1349919 e!2768165))

(declare-fun res!1841617 () Bool)

(assert (=> d!1349919 (=> (not res!1841617) (not e!2768165))))

(declare-fun lt!1640152 () ListMap!2951)

(assert (=> d!1349919 (= res!1841617 (contains!12440 lt!1640152 (_1!28203 lt!1639904)))))

(declare-fun lt!1640154 () List!49978)

(assert (=> d!1349919 (= lt!1640152 (ListMap!2952 lt!1640154))))

(declare-fun lt!1640153 () Unit!84388)

(declare-fun lt!1640155 () Unit!84388)

(assert (=> d!1349919 (= lt!1640153 lt!1640155)))

(assert (=> d!1349919 (= (getValueByKey!813 lt!1640154 (_1!28203 lt!1639904)) (Some!10826 (_2!28203 lt!1639904)))))

(assert (=> d!1349919 (= lt!1640155 (lemmaContainsTupThenGetReturnValue!529 lt!1640154 (_1!28203 lt!1639904) (_2!28203 lt!1639904)))))

(assert (=> d!1349919 (= lt!1640154 (insertNoDuplicatedKeys!229 (toList!3708 lt!1639893) (_1!28203 lt!1639904) (_2!28203 lt!1639904)))))

(assert (=> d!1349919 (= (+!1258 lt!1639893 lt!1639904) lt!1640152)))

(declare-fun b!4445881 () Bool)

(declare-fun res!1841618 () Bool)

(assert (=> b!4445881 (=> (not res!1841618) (not e!2768165))))

(assert (=> b!4445881 (= res!1841618 (= (getValueByKey!813 (toList!3708 lt!1640152) (_1!28203 lt!1639904)) (Some!10826 (_2!28203 lt!1639904))))))

(declare-fun b!4445882 () Bool)

(assert (=> b!4445882 (= e!2768165 (contains!12444 (toList!3708 lt!1640152) lt!1639904))))

(assert (= (and d!1349919 res!1841617) b!4445881))

(assert (= (and b!4445881 res!1841618) b!4445882))

(declare-fun m!5136617 () Bool)

(assert (=> d!1349919 m!5136617))

(declare-fun m!5136619 () Bool)

(assert (=> d!1349919 m!5136619))

(declare-fun m!5136621 () Bool)

(assert (=> d!1349919 m!5136621))

(declare-fun m!5136623 () Bool)

(assert (=> d!1349919 m!5136623))

(declare-fun m!5136625 () Bool)

(assert (=> b!4445881 m!5136625))

(declare-fun m!5136627 () Bool)

(assert (=> b!4445882 m!5136627))

(assert (=> b!4445676 d!1349919))

(declare-fun d!1349921 () Bool)

(assert (=> d!1349921 (= (eq!460 lt!1639900 lt!1639908) (= (content!8024 (toList!3708 lt!1639900)) (content!8024 (toList!3708 lt!1639908))))))

(declare-fun bs!765874 () Bool)

(assert (= bs!765874 d!1349921))

(declare-fun m!5136629 () Bool)

(assert (=> bs!765874 m!5136629))

(declare-fun m!5136631 () Bool)

(assert (=> bs!765874 m!5136631))

(assert (=> b!4445676 d!1349921))

(declare-fun d!1349923 () Bool)

(declare-fun head!9305 (List!49979) tuple2!49820)

(assert (=> d!1349923 (= (head!9303 lm!1616) (head!9305 (toList!3707 lm!1616)))))

(declare-fun bs!765875 () Bool)

(assert (= bs!765875 d!1349923))

(declare-fun m!5136633 () Bool)

(assert (=> bs!765875 m!5136633))

(assert (=> b!4445676 d!1349923))

(declare-fun d!1349925 () Bool)

(assert (=> d!1349925 (= (tail!7420 lm!1616) (ListLongMap!2358 (tail!7421 (toList!3707 lm!1616))))))

(declare-fun bs!765876 () Bool)

(assert (= bs!765876 d!1349925))

(assert (=> bs!765876 m!5136225))

(assert (=> b!4445676 d!1349925))

(declare-fun bs!765877 () Bool)

(declare-fun d!1349927 () Bool)

(assert (= bs!765877 (and d!1349927 d!1349889)))

(declare-fun lambda!158294 () Int)

(assert (=> bs!765877 (= lambda!158294 lambda!158281)))

(declare-fun bs!765878 () Bool)

(assert (= bs!765878 (and d!1349927 d!1349917)))

(assert (=> bs!765878 (= lambda!158294 lambda!158293)))

(declare-fun bs!765879 () Bool)

(assert (= bs!765879 (and d!1349927 d!1349883)))

(assert (=> bs!765879 (not (= lambda!158294 lambda!158278))))

(declare-fun bs!765880 () Bool)

(assert (= bs!765880 (and d!1349927 start!435326)))

(assert (=> bs!765880 (= lambda!158294 lambda!158231)))

(declare-fun bs!765881 () Bool)

(assert (= bs!765881 (and d!1349927 d!1349897)))

(assert (=> bs!765881 (= lambda!158294 lambda!158284)))

(declare-fun bs!765882 () Bool)

(assert (= bs!765882 (and d!1349927 d!1349915)))

(assert (=> bs!765882 (= lambda!158294 lambda!158292)))

(declare-fun lt!1640156 () ListMap!2951)

(assert (=> d!1349927 (invariantList!855 (toList!3708 lt!1640156))))

(declare-fun e!2768166 () ListMap!2951)

(assert (=> d!1349927 (= lt!1640156 e!2768166)))

(declare-fun c!756592 () Bool)

(assert (=> d!1349927 (= c!756592 (is-Cons!49855 (tail!7421 (toList!3707 lm!1616))))))

(assert (=> d!1349927 (forall!9745 (tail!7421 (toList!3707 lm!1616)) lambda!158294)))

(assert (=> d!1349927 (= (extractMap!921 (tail!7421 (toList!3707 lm!1616))) lt!1640156)))

(declare-fun b!4445883 () Bool)

(assert (=> b!4445883 (= e!2768166 (addToMapMapFromBucket!466 (_2!28204 (h!55594 (tail!7421 (toList!3707 lm!1616)))) (extractMap!921 (t!356921 (tail!7421 (toList!3707 lm!1616))))))))

(declare-fun b!4445884 () Bool)

(assert (=> b!4445884 (= e!2768166 (ListMap!2952 Nil!49854))))

(assert (= (and d!1349927 c!756592) b!4445883))

(assert (= (and d!1349927 (not c!756592)) b!4445884))

(declare-fun m!5136635 () Bool)

(assert (=> d!1349927 m!5136635))

(assert (=> d!1349927 m!5136225))

(declare-fun m!5136637 () Bool)

(assert (=> d!1349927 m!5136637))

(declare-fun m!5136639 () Bool)

(assert (=> b!4445883 m!5136639))

(assert (=> b!4445883 m!5136639))

(declare-fun m!5136641 () Bool)

(assert (=> b!4445883 m!5136641))

(assert (=> b!4445676 d!1349927))

(declare-fun d!1349929 () Bool)

(assert (=> d!1349929 (= (tail!7421 (toList!3707 lm!1616)) (t!356921 (toList!3707 lm!1616)))))

(assert (=> b!4445676 d!1349929))

(declare-fun b!4445885 () Bool)

(declare-fun e!2768172 () Unit!84388)

(declare-fun lt!1640157 () Unit!84388)

(assert (=> b!4445885 (= e!2768172 lt!1640157)))

(declare-fun lt!1640160 () Unit!84388)

(assert (=> b!4445885 (= lt!1640160 (lemmaContainsKeyImpliesGetValueByKeyDefined!720 (toList!3708 (extractMap!921 (tail!7421 (toList!3707 lm!1616)))) key!3717))))

(assert (=> b!4445885 (isDefined!8117 (getValueByKey!813 (toList!3708 (extractMap!921 (tail!7421 (toList!3707 lm!1616)))) key!3717))))

(declare-fun lt!1640163 () Unit!84388)

(assert (=> b!4445885 (= lt!1640163 lt!1640160)))

(assert (=> b!4445885 (= lt!1640157 (lemmaInListThenGetKeysListContains!299 (toList!3708 (extractMap!921 (tail!7421 (toList!3707 lm!1616)))) key!3717))))

(declare-fun call!309286 () Bool)

(assert (=> b!4445885 call!309286))

(declare-fun b!4445886 () Bool)

(declare-fun e!2768168 () Bool)

(assert (=> b!4445886 (= e!2768168 (not (contains!12445 (keys!17094 (extractMap!921 (tail!7421 (toList!3707 lm!1616)))) key!3717)))))

(declare-fun b!4445887 () Bool)

(declare-fun e!2768169 () Unit!84388)

(assert (=> b!4445887 (= e!2768172 e!2768169)))

(declare-fun c!756593 () Bool)

(assert (=> b!4445887 (= c!756593 call!309286)))

(declare-fun b!4445888 () Bool)

(declare-fun Unit!84420 () Unit!84388)

(assert (=> b!4445888 (= e!2768169 Unit!84420)))

(declare-fun b!4445889 () Bool)

(declare-fun e!2768167 () Bool)

(declare-fun e!2768171 () Bool)

(assert (=> b!4445889 (= e!2768167 e!2768171)))

(declare-fun res!1841621 () Bool)

(assert (=> b!4445889 (=> (not res!1841621) (not e!2768171))))

(assert (=> b!4445889 (= res!1841621 (isDefined!8117 (getValueByKey!813 (toList!3708 (extractMap!921 (tail!7421 (toList!3707 lm!1616)))) key!3717)))))

(declare-fun d!1349931 () Bool)

(assert (=> d!1349931 e!2768167))

(declare-fun res!1841619 () Bool)

(assert (=> d!1349931 (=> res!1841619 e!2768167)))

(assert (=> d!1349931 (= res!1841619 e!2768168)))

(declare-fun res!1841620 () Bool)

(assert (=> d!1349931 (=> (not res!1841620) (not e!2768168))))

(declare-fun lt!1640158 () Bool)

(assert (=> d!1349931 (= res!1841620 (not lt!1640158))))

(declare-fun lt!1640159 () Bool)

(assert (=> d!1349931 (= lt!1640158 lt!1640159)))

(declare-fun lt!1640164 () Unit!84388)

(assert (=> d!1349931 (= lt!1640164 e!2768172)))

(declare-fun c!756594 () Bool)

(assert (=> d!1349931 (= c!756594 lt!1640159)))

(assert (=> d!1349931 (= lt!1640159 (containsKey!1283 (toList!3708 (extractMap!921 (tail!7421 (toList!3707 lm!1616)))) key!3717))))

(assert (=> d!1349931 (= (contains!12440 (extractMap!921 (tail!7421 (toList!3707 lm!1616))) key!3717) lt!1640158)))

(declare-fun b!4445890 () Bool)

(declare-fun e!2768170 () List!49982)

(assert (=> b!4445890 (= e!2768170 (keys!17094 (extractMap!921 (tail!7421 (toList!3707 lm!1616)))))))

(declare-fun b!4445891 () Bool)

(assert (=> b!4445891 false))

(declare-fun lt!1640161 () Unit!84388)

(declare-fun lt!1640162 () Unit!84388)

(assert (=> b!4445891 (= lt!1640161 lt!1640162)))

(assert (=> b!4445891 (containsKey!1283 (toList!3708 (extractMap!921 (tail!7421 (toList!3707 lm!1616)))) key!3717)))

(assert (=> b!4445891 (= lt!1640162 (lemmaInGetKeysListThenContainsKey!300 (toList!3708 (extractMap!921 (tail!7421 (toList!3707 lm!1616)))) key!3717))))

(declare-fun Unit!84421 () Unit!84388)

(assert (=> b!4445891 (= e!2768169 Unit!84421)))

(declare-fun b!4445892 () Bool)

(assert (=> b!4445892 (= e!2768171 (contains!12445 (keys!17094 (extractMap!921 (tail!7421 (toList!3707 lm!1616)))) key!3717))))

(declare-fun bm!309281 () Bool)

(assert (=> bm!309281 (= call!309286 (contains!12445 e!2768170 key!3717))))

(declare-fun c!756595 () Bool)

(assert (=> bm!309281 (= c!756595 c!756594)))

(declare-fun b!4445893 () Bool)

(assert (=> b!4445893 (= e!2768170 (getKeysList!302 (toList!3708 (extractMap!921 (tail!7421 (toList!3707 lm!1616))))))))

(assert (= (and d!1349931 c!756594) b!4445885))

(assert (= (and d!1349931 (not c!756594)) b!4445887))

(assert (= (and b!4445887 c!756593) b!4445891))

(assert (= (and b!4445887 (not c!756593)) b!4445888))

(assert (= (or b!4445885 b!4445887) bm!309281))

(assert (= (and bm!309281 c!756595) b!4445893))

(assert (= (and bm!309281 (not c!756595)) b!4445890))

(assert (= (and d!1349931 res!1841620) b!4445886))

(assert (= (and d!1349931 (not res!1841619)) b!4445889))

(assert (= (and b!4445889 res!1841621) b!4445892))

(assert (=> b!4445886 m!5136227))

(declare-fun m!5136643 () Bool)

(assert (=> b!4445886 m!5136643))

(assert (=> b!4445886 m!5136643))

(declare-fun m!5136645 () Bool)

(assert (=> b!4445886 m!5136645))

(declare-fun m!5136647 () Bool)

(assert (=> b!4445885 m!5136647))

(declare-fun m!5136649 () Bool)

(assert (=> b!4445885 m!5136649))

(assert (=> b!4445885 m!5136649))

(declare-fun m!5136651 () Bool)

(assert (=> b!4445885 m!5136651))

(declare-fun m!5136653 () Bool)

(assert (=> b!4445885 m!5136653))

(assert (=> b!4445892 m!5136227))

(assert (=> b!4445892 m!5136643))

(assert (=> b!4445892 m!5136643))

(assert (=> b!4445892 m!5136645))

(declare-fun m!5136655 () Bool)

(assert (=> b!4445893 m!5136655))

(declare-fun m!5136657 () Bool)

(assert (=> bm!309281 m!5136657))

(declare-fun m!5136659 () Bool)

(assert (=> d!1349931 m!5136659))

(assert (=> b!4445889 m!5136649))

(assert (=> b!4445889 m!5136649))

(assert (=> b!4445889 m!5136651))

(assert (=> b!4445890 m!5136227))

(assert (=> b!4445890 m!5136643))

(assert (=> b!4445891 m!5136659))

(declare-fun m!5136661 () Bool)

(assert (=> b!4445891 m!5136661))

(assert (=> b!4445676 d!1349931))

(declare-fun bs!765883 () Bool)

(declare-fun d!1349933 () Bool)

(assert (= bs!765883 (and d!1349933 d!1349927)))

(declare-fun lambda!158297 () Int)

(assert (=> bs!765883 (= lambda!158297 lambda!158294)))

(declare-fun bs!765884 () Bool)

(assert (= bs!765884 (and d!1349933 d!1349889)))

(assert (=> bs!765884 (= lambda!158297 lambda!158281)))

(declare-fun bs!765885 () Bool)

(assert (= bs!765885 (and d!1349933 d!1349917)))

(assert (=> bs!765885 (= lambda!158297 lambda!158293)))

(declare-fun bs!765886 () Bool)

(assert (= bs!765886 (and d!1349933 d!1349883)))

(assert (=> bs!765886 (not (= lambda!158297 lambda!158278))))

(declare-fun bs!765887 () Bool)

(assert (= bs!765887 (and d!1349933 start!435326)))

(assert (=> bs!765887 (= lambda!158297 lambda!158231)))

(declare-fun bs!765888 () Bool)

(assert (= bs!765888 (and d!1349933 d!1349897)))

(assert (=> bs!765888 (= lambda!158297 lambda!158284)))

(declare-fun bs!765889 () Bool)

(assert (= bs!765889 (and d!1349933 d!1349915)))

(assert (=> bs!765889 (= lambda!158297 lambda!158292)))

(assert (=> d!1349933 (eq!460 (extractMap!921 (toList!3707 (+!1257 lt!1639895 (tuple2!49821 hash!366 newBucket!194)))) (+!1258 (extractMap!921 (toList!3707 lt!1639895)) (tuple2!49819 key!3717 newValue!93)))))

(declare-fun lt!1640167 () Unit!84388)

(declare-fun choose!28277 (ListLongMap!2357 (_ BitVec 64) List!49978 K!11223 V!11469 Hashable!5254) Unit!84388)

(assert (=> d!1349933 (= lt!1640167 (choose!28277 lt!1639895 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1349933 (forall!9745 (toList!3707 lt!1639895) lambda!158297)))

(assert (=> d!1349933 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!168 lt!1639895 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1640167)))

(declare-fun bs!765890 () Bool)

(assert (= bs!765890 d!1349933))

(declare-fun m!5136663 () Bool)

(assert (=> bs!765890 m!5136663))

(declare-fun m!5136665 () Bool)

(assert (=> bs!765890 m!5136665))

(declare-fun m!5136667 () Bool)

(assert (=> bs!765890 m!5136667))

(assert (=> bs!765890 m!5136663))

(assert (=> bs!765890 m!5136243))

(assert (=> bs!765890 m!5136243))

(assert (=> bs!765890 m!5136665))

(declare-fun m!5136669 () Bool)

(assert (=> bs!765890 m!5136669))

(declare-fun m!5136671 () Bool)

(assert (=> bs!765890 m!5136671))

(declare-fun m!5136673 () Bool)

(assert (=> bs!765890 m!5136673))

(assert (=> b!4445676 d!1349933))

(declare-fun d!1349935 () Bool)

(declare-fun e!2768173 () Bool)

(assert (=> d!1349935 e!2768173))

(declare-fun res!1841622 () Bool)

(assert (=> d!1349935 (=> (not res!1841622) (not e!2768173))))

(declare-fun lt!1640168 () ListLongMap!2357)

(assert (=> d!1349935 (= res!1841622 (contains!12441 lt!1640168 (_1!28204 lt!1639890)))))

(declare-fun lt!1640171 () List!49979)

(assert (=> d!1349935 (= lt!1640168 (ListLongMap!2358 lt!1640171))))

(declare-fun lt!1640170 () Unit!84388)

(declare-fun lt!1640169 () Unit!84388)

(assert (=> d!1349935 (= lt!1640170 lt!1640169)))

(assert (=> d!1349935 (= (getValueByKey!814 lt!1640171 (_1!28204 lt!1639890)) (Some!10827 (_2!28204 lt!1639890)))))

(assert (=> d!1349935 (= lt!1640169 (lemmaContainsTupThenGetReturnValue!530 lt!1640171 (_1!28204 lt!1639890) (_2!28204 lt!1639890)))))

(assert (=> d!1349935 (= lt!1640171 (insertStrictlySorted!309 (toList!3707 lt!1639895) (_1!28204 lt!1639890) (_2!28204 lt!1639890)))))

(assert (=> d!1349935 (= (+!1257 lt!1639895 lt!1639890) lt!1640168)))

(declare-fun b!4445894 () Bool)

(declare-fun res!1841623 () Bool)

(assert (=> b!4445894 (=> (not res!1841623) (not e!2768173))))

(assert (=> b!4445894 (= res!1841623 (= (getValueByKey!814 (toList!3707 lt!1640168) (_1!28204 lt!1639890)) (Some!10827 (_2!28204 lt!1639890))))))

(declare-fun b!4445895 () Bool)

(assert (=> b!4445895 (= e!2768173 (contains!12446 (toList!3707 lt!1640168) lt!1639890))))

(assert (= (and d!1349935 res!1841622) b!4445894))

(assert (= (and b!4445894 res!1841623) b!4445895))

(declare-fun m!5136675 () Bool)

(assert (=> d!1349935 m!5136675))

(declare-fun m!5136677 () Bool)

(assert (=> d!1349935 m!5136677))

(declare-fun m!5136679 () Bool)

(assert (=> d!1349935 m!5136679))

(declare-fun m!5136681 () Bool)

(assert (=> d!1349935 m!5136681))

(declare-fun m!5136683 () Bool)

(assert (=> b!4445894 m!5136683))

(declare-fun m!5136685 () Bool)

(assert (=> b!4445895 m!5136685))

(assert (=> b!4445676 d!1349935))

(declare-fun bs!765891 () Bool)

(declare-fun d!1349937 () Bool)

(assert (= bs!765891 (and d!1349937 d!1349927)))

(declare-fun lambda!158300 () Int)

(assert (=> bs!765891 (= lambda!158300 lambda!158294)))

(declare-fun bs!765892 () Bool)

(assert (= bs!765892 (and d!1349937 d!1349889)))

(assert (=> bs!765892 (= lambda!158300 lambda!158281)))

(declare-fun bs!765893 () Bool)

(assert (= bs!765893 (and d!1349937 d!1349917)))

(assert (=> bs!765893 (= lambda!158300 lambda!158293)))

(declare-fun bs!765894 () Bool)

(assert (= bs!765894 (and d!1349937 d!1349883)))

(assert (=> bs!765894 (not (= lambda!158300 lambda!158278))))

(declare-fun bs!765895 () Bool)

(assert (= bs!765895 (and d!1349937 start!435326)))

(assert (=> bs!765895 (= lambda!158300 lambda!158231)))

(declare-fun bs!765896 () Bool)

(assert (= bs!765896 (and d!1349937 d!1349897)))

(assert (=> bs!765896 (= lambda!158300 lambda!158284)))

(declare-fun bs!765897 () Bool)

(assert (= bs!765897 (and d!1349937 d!1349915)))

(assert (=> bs!765897 (= lambda!158300 lambda!158292)))

(declare-fun bs!765898 () Bool)

(assert (= bs!765898 (and d!1349937 d!1349933)))

(assert (=> bs!765898 (= lambda!158300 lambda!158297)))

(assert (=> d!1349937 (contains!12440 (extractMap!921 (toList!3707 lm!1616)) key!3717)))

(declare-fun lt!1640174 () Unit!84388)

(declare-fun choose!28278 (ListLongMap!2357 K!11223 Hashable!5254) Unit!84388)

(assert (=> d!1349937 (= lt!1640174 (choose!28278 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1349937 (forall!9745 (toList!3707 lm!1616) lambda!158300)))

(assert (=> d!1349937 (= (lemmaExtractTailMapContainsThenExtractMapDoes!97 lm!1616 key!3717 hashF!1220) lt!1640174)))

(declare-fun bs!765899 () Bool)

(assert (= bs!765899 d!1349937))

(assert (=> bs!765899 m!5136195))

(assert (=> bs!765899 m!5136195))

(declare-fun m!5136687 () Bool)

(assert (=> bs!765899 m!5136687))

(declare-fun m!5136689 () Bool)

(assert (=> bs!765899 m!5136689))

(declare-fun m!5136691 () Bool)

(assert (=> bs!765899 m!5136691))

(assert (=> b!4445665 d!1349937))

(assert (=> start!435326 d!1349841))

(declare-fun d!1349939 () Bool)

(declare-fun isStrictlySorted!281 (List!49979) Bool)

(assert (=> d!1349939 (= (inv!65410 lm!1616) (isStrictlySorted!281 (toList!3707 lm!1616)))))

(declare-fun bs!765900 () Bool)

(assert (= bs!765900 d!1349939))

(declare-fun m!5136693 () Bool)

(assert (=> bs!765900 m!5136693))

(assert (=> start!435326 d!1349939))

(declare-fun d!1349941 () Bool)

(declare-fun res!1841624 () Bool)

(declare-fun e!2768174 () Bool)

(assert (=> d!1349941 (=> res!1841624 e!2768174)))

(assert (=> d!1349941 (= res!1841624 (not (is-Cons!49854 newBucket!194)))))

(assert (=> d!1349941 (= (noDuplicateKeys!860 newBucket!194) e!2768174)))

(declare-fun b!4445896 () Bool)

(declare-fun e!2768175 () Bool)

(assert (=> b!4445896 (= e!2768174 e!2768175)))

(declare-fun res!1841625 () Bool)

(assert (=> b!4445896 (=> (not res!1841625) (not e!2768175))))

(assert (=> b!4445896 (= res!1841625 (not (containsKey!1281 (t!356920 newBucket!194) (_1!28203 (h!55593 newBucket!194)))))))

(declare-fun b!4445897 () Bool)

(assert (=> b!4445897 (= e!2768175 (noDuplicateKeys!860 (t!356920 newBucket!194)))))

(assert (= (and d!1349941 (not res!1841624)) b!4445896))

(assert (= (and b!4445896 res!1841625) b!4445897))

(declare-fun m!5136695 () Bool)

(assert (=> b!4445896 m!5136695))

(declare-fun m!5136697 () Bool)

(assert (=> b!4445897 m!5136697))

(assert (=> b!4445670 d!1349941))

(declare-fun d!1349943 () Bool)

(declare-fun e!2768180 () Bool)

(assert (=> d!1349943 e!2768180))

(declare-fun res!1841628 () Bool)

(assert (=> d!1349943 (=> res!1841628 e!2768180)))

(declare-fun lt!1640185 () Bool)

(assert (=> d!1349943 (= res!1841628 (not lt!1640185))))

(declare-fun lt!1640184 () Bool)

(assert (=> d!1349943 (= lt!1640185 lt!1640184)))

(declare-fun lt!1640183 () Unit!84388)

(declare-fun e!2768181 () Unit!84388)

(assert (=> d!1349943 (= lt!1640183 e!2768181)))

(declare-fun c!756598 () Bool)

(assert (=> d!1349943 (= c!756598 lt!1640184)))

(declare-fun containsKey!1284 (List!49979 (_ BitVec 64)) Bool)

(assert (=> d!1349943 (= lt!1640184 (containsKey!1284 (toList!3707 lm!1616) hash!366))))

(assert (=> d!1349943 (= (contains!12441 lm!1616 hash!366) lt!1640185)))

(declare-fun b!4445904 () Bool)

(declare-fun lt!1640186 () Unit!84388)

(assert (=> b!4445904 (= e!2768181 lt!1640186)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!721 (List!49979 (_ BitVec 64)) Unit!84388)

(assert (=> b!4445904 (= lt!1640186 (lemmaContainsKeyImpliesGetValueByKeyDefined!721 (toList!3707 lm!1616) hash!366))))

(declare-fun isDefined!8118 (Option!10828) Bool)

(assert (=> b!4445904 (isDefined!8118 (getValueByKey!814 (toList!3707 lm!1616) hash!366))))

(declare-fun b!4445905 () Bool)

(declare-fun Unit!84422 () Unit!84388)

(assert (=> b!4445905 (= e!2768181 Unit!84422)))

(declare-fun b!4445906 () Bool)

(assert (=> b!4445906 (= e!2768180 (isDefined!8118 (getValueByKey!814 (toList!3707 lm!1616) hash!366)))))

(assert (= (and d!1349943 c!756598) b!4445904))

(assert (= (and d!1349943 (not c!756598)) b!4445905))

(assert (= (and d!1349943 (not res!1841628)) b!4445906))

(declare-fun m!5136699 () Bool)

(assert (=> d!1349943 m!5136699))

(declare-fun m!5136701 () Bool)

(assert (=> b!4445904 m!5136701))

(assert (=> b!4445904 m!5136597))

(assert (=> b!4445904 m!5136597))

(declare-fun m!5136703 () Bool)

(assert (=> b!4445904 m!5136703))

(assert (=> b!4445906 m!5136597))

(assert (=> b!4445906 m!5136597))

(assert (=> b!4445906 m!5136703))

(assert (=> b!4445680 d!1349943))

(declare-fun d!1349945 () Bool)

(assert (=> d!1349945 (= (eq!460 lt!1639908 lt!1639900) (= (content!8024 (toList!3708 lt!1639908)) (content!8024 (toList!3708 lt!1639900))))))

(declare-fun bs!765901 () Bool)

(assert (= bs!765901 d!1349945))

(assert (=> bs!765901 m!5136631))

(assert (=> bs!765901 m!5136629))

(assert (=> b!4445668 d!1349945))

(declare-fun b!4445911 () Bool)

(declare-fun e!2768184 () Bool)

(declare-fun tp!1334465 () Bool)

(declare-fun tp!1334466 () Bool)

(assert (=> b!4445911 (= e!2768184 (and tp!1334465 tp!1334466))))

(assert (=> b!4445672 (= tp!1334454 e!2768184)))

(assert (= (and b!4445672 (is-Cons!49855 (toList!3707 lm!1616))) b!4445911))

(declare-fun e!2768187 () Bool)

(declare-fun tp!1334469 () Bool)

(declare-fun b!4445916 () Bool)

(assert (=> b!4445916 (= e!2768187 (and tp_is_empty!26687 tp_is_empty!26685 tp!1334469))))

(assert (=> b!4445664 (= tp!1334453 e!2768187)))

(assert (= (and b!4445664 (is-Cons!49854 (t!356920 newBucket!194))) b!4445916))

(declare-fun b_lambda!145537 () Bool)

(assert (= b_lambda!145525 (or start!435326 b_lambda!145537)))

(declare-fun bs!765902 () Bool)

(declare-fun d!1349947 () Bool)

(assert (= bs!765902 (and d!1349947 start!435326)))

(assert (=> bs!765902 (= (dynLambda!20927 lambda!158231 (h!55594 (toList!3707 lm!1616))) (noDuplicateKeys!860 (_2!28204 (h!55594 (toList!3707 lm!1616)))))))

(assert (=> bs!765902 m!5136179))

(assert (=> b!4445748 d!1349947))

(declare-fun b_lambda!145539 () Bool)

(assert (= b_lambda!145535 (or start!435326 b_lambda!145539)))

(declare-fun bs!765903 () Bool)

(declare-fun d!1349949 () Bool)

(assert (= bs!765903 (and d!1349949 start!435326)))

(assert (=> bs!765903 (= (dynLambda!20927 lambda!158231 (tuple2!49821 hash!366 newBucket!194)) (noDuplicateKeys!860 (_2!28204 (tuple2!49821 hash!366 newBucket!194))))))

(declare-fun m!5136705 () Bool)

(assert (=> bs!765903 m!5136705))

(assert (=> b!4445872 d!1349949))

(declare-fun b_lambda!145541 () Bool)

(assert (= b_lambda!145533 (or start!435326 b_lambda!145541)))

(declare-fun bs!765904 () Bool)

(declare-fun d!1349951 () Bool)

(assert (= bs!765904 (and d!1349951 start!435326)))

(assert (=> bs!765904 (= (dynLambda!20927 lambda!158231 (h!55594 (toList!3707 lt!1639905))) (noDuplicateKeys!860 (_2!28204 (h!55594 (toList!3707 lt!1639905)))))))

(declare-fun m!5136707 () Bool)

(assert (=> bs!765904 m!5136707))

(assert (=> b!4445861 d!1349951))

(push 1)

(assert (not b!4445911))

(assert (not b!4445749))

(assert (not b!4445855))

(assert (not d!1349853))

(assert (not b!4445838))

(assert (not b!4445893))

(assert (not b!4445796))

(assert (not d!1349843))

(assert (not d!1349851))

(assert (not d!1349855))

(assert (not d!1349945))

(assert (not d!1349909))

(assert (not b!4445879))

(assert (not b!4445896))

(assert (not b!4445877))

(assert (not b!4445886))

(assert (not d!1349921))

(assert (not b!4445837))

(assert (not b!4445862))

(assert (not d!1349943))

(assert (not d!1349933))

(assert (not d!1349927))

(assert (not b_lambda!145537))

(assert (not b!4445833))

(assert (not d!1349899))

(assert (not d!1349889))

(assert (not d!1349919))

(assert (not b!4445755))

(assert (not bm!309274))

(assert (not d!1349901))

(assert (not d!1349897))

(assert (not d!1349903))

(assert (not b!4445840))

(assert (not b!4445889))

(assert (not d!1349885))

(assert (not b!4445798))

(assert (not d!1349847))

(assert (not b!4445906))

(assert (not d!1349939))

(assert (not b!4445858))

(assert (not b_lambda!145539))

(assert (not b!4445756))

(assert (not b!4445860))

(assert (not d!1349937))

(assert (not d!1349849))

(assert (not d!1349931))

(assert (not b!4445841))

(assert (not bm!309272))

(assert (not b!4445754))

(assert (not b!4445882))

(assert (not b!4445846))

(assert (not b!4445795))

(assert (not b!4445883))

(assert (not bm!309278))

(assert (not b!4445853))

(assert (not b!4445895))

(assert (not bs!765903))

(assert (not d!1349923))

(assert (not b!4445857))

(assert (not bm!309280))

(assert tp_is_empty!26687)

(assert (not d!1349935))

(assert (not b!4445892))

(assert (not b_lambda!145541))

(assert (not d!1349883))

(assert (not d!1349913))

(assert (not b!4445916))

(assert (not b!4445881))

(assert (not d!1349845))

(assert (not d!1349907))

(assert (not b!4445867))

(assert (not d!1349915))

(assert (not b!4445904))

(assert (not b!4445811))

(assert (not b!4445897))

(assert (not b!4445885))

(assert (not b!4445834))

(assert (not bm!309279))

(assert (not d!1349917))

(assert (not d!1349911))

(assert tp_is_empty!26685)

(assert (not d!1349895))

(assert (not b!4445812))

(assert (not b!4445890))

(assert (not bm!309277))

(assert (not b!4445891))

(assert (not bm!309281))

(assert (not b!4445894))

(assert (not b!4445839))

(assert (not b!4445757))

(assert (not bs!765902))

(assert (not b!4445868))

(assert (not d!1349925))

(assert (not bm!309273))

(assert (not bs!765904))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

