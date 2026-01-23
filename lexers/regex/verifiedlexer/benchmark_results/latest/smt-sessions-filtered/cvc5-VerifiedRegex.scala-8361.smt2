; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!435226 () Bool)

(assert start!435226)

(declare-datatypes ((V!11454 0))(
  ( (V!11455 (val!17237 Int)) )
))
(declare-fun newValue!93 () V!11454)

(declare-datatypes ((K!11208 0))(
  ( (K!11209 (val!17238 Int)) )
))
(declare-fun key!3717 () K!11208)

(declare-datatypes ((tuple2!49794 0))(
  ( (tuple2!49795 (_1!28191 K!11208) (_2!28191 V!11454)) )
))
(declare-datatypes ((List!49964 0))(
  ( (Nil!49840) (Cons!49840 (h!55577 tuple2!49794) (t!356906 List!49964)) )
))
(declare-fun newBucket!194 () List!49964)

(declare-fun b!4445058 () Bool)

(declare-datatypes ((tuple2!49796 0))(
  ( (tuple2!49797 (_1!28192 (_ BitVec 64)) (_2!28192 List!49964)) )
))
(declare-datatypes ((List!49965 0))(
  ( (Nil!49841) (Cons!49841 (h!55578 tuple2!49796) (t!356907 List!49965)) )
))
(declare-datatypes ((ListLongMap!2345 0))(
  ( (ListLongMap!2346 (toList!3695 List!49965)) )
))
(declare-fun lm!1616 () ListLongMap!2345)

(declare-fun e!2767661 () Bool)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun apply!11706 (ListLongMap!2345 (_ BitVec 64)) List!49964)

(assert (=> b!4445058 (= e!2767661 (= newBucket!194 (Cons!49840 (tuple2!49795 key!3717 newValue!93) (apply!11706 lm!1616 hash!366))))))

(declare-fun e!2767665 () Bool)

(declare-fun tp_is_empty!26661 () Bool)

(declare-fun tp!1334400 () Bool)

(declare-fun b!4445059 () Bool)

(declare-fun tp_is_empty!26663 () Bool)

(assert (=> b!4445059 (= e!2767665 (and tp_is_empty!26663 tp_is_empty!26661 tp!1334400))))

(declare-fun b!4445060 () Bool)

(declare-datatypes ((Unit!84332 0))(
  ( (Unit!84333) )
))
(declare-fun e!2767659 () Unit!84332)

(declare-fun Unit!84334 () Unit!84332)

(assert (=> b!4445060 (= e!2767659 Unit!84334)))

(declare-fun lt!1639355 () Unit!84332)

(declare-datatypes ((Hashable!5248 0))(
  ( (HashableExt!5247 (__x!30951 Int)) )
))
(declare-fun hashF!1220 () Hashable!5248)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!91 (ListLongMap!2345 K!11208 Hashable!5248) Unit!84332)

(assert (=> b!4445060 (= lt!1639355 (lemmaExtractTailMapContainsThenExtractMapDoes!91 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4445060 false))

(declare-fun b!4445061 () Bool)

(declare-fun e!2767666 () Bool)

(declare-fun e!2767660 () Bool)

(assert (=> b!4445061 (= e!2767666 (not e!2767660))))

(declare-fun res!1841074 () Bool)

(assert (=> b!4445061 (=> res!1841074 e!2767660)))

(declare-fun lt!1639352 () ListLongMap!2345)

(declare-fun lambda!158069 () Int)

(declare-fun forall!9737 (List!49965 Int) Bool)

(assert (=> b!4445061 (= res!1841074 (not (forall!9737 (toList!3695 lt!1639352) lambda!158069)))))

(assert (=> b!4445061 (forall!9737 (toList!3695 lt!1639352) lambda!158069)))

(declare-fun lt!1639358 () tuple2!49796)

(declare-fun +!1245 (ListLongMap!2345 tuple2!49796) ListLongMap!2345)

(assert (=> b!4445061 (= lt!1639352 (+!1245 lm!1616 lt!1639358))))

(assert (=> b!4445061 (= lt!1639358 (tuple2!49797 hash!366 newBucket!194))))

(declare-fun lt!1639348 () Unit!84332)

(declare-fun addValidProp!492 (ListLongMap!2345 Int (_ BitVec 64) List!49964) Unit!84332)

(assert (=> b!4445061 (= lt!1639348 (addValidProp!492 lm!1616 lambda!158069 hash!366 newBucket!194))))

(declare-fun b!4445062 () Bool)

(declare-fun e!2767663 () Bool)

(declare-fun lt!1639357 () Bool)

(assert (=> b!4445062 (= e!2767663 (and (not lt!1639357) (= newBucket!194 (Cons!49840 (tuple2!49795 key!3717 newValue!93) Nil!49840))))))

(declare-fun b!4445063 () Bool)

(declare-fun res!1841077 () Bool)

(declare-fun e!2767657 () Bool)

(assert (=> b!4445063 (=> (not res!1841077) (not e!2767657))))

(declare-fun allKeysSameHashInMap!960 (ListLongMap!2345 Hashable!5248) Bool)

(assert (=> b!4445063 (= res!1841077 (allKeysSameHashInMap!960 lm!1616 hashF!1220))))

(declare-fun b!4445065 () Bool)

(declare-fun e!2767667 () Bool)

(declare-fun tp!1334399 () Bool)

(assert (=> b!4445065 (= e!2767667 tp!1334399)))

(declare-fun b!4445066 () Bool)

(declare-fun e!2767662 () Bool)

(assert (=> b!4445066 (= e!2767660 e!2767662)))

(declare-fun res!1841067 () Bool)

(assert (=> b!4445066 (=> res!1841067 e!2767662)))

(declare-fun head!9295 (ListLongMap!2345) tuple2!49796)

(assert (=> b!4445066 (= res!1841067 (= (head!9295 lm!1616) lt!1639358))))

(declare-datatypes ((ListMap!2939 0))(
  ( (ListMap!2940 (toList!3696 List!49964)) )
))
(declare-fun lt!1639353 () ListMap!2939)

(declare-fun lt!1639354 () ListMap!2939)

(declare-fun eq!454 (ListMap!2939 ListMap!2939) Bool)

(declare-fun +!1246 (ListMap!2939 tuple2!49794) ListMap!2939)

(assert (=> b!4445066 (eq!454 lt!1639353 (+!1246 lt!1639354 (tuple2!49795 key!3717 newValue!93)))))

(declare-fun lt!1639350 () ListLongMap!2345)

(declare-fun extractMap!915 (List!49965) ListMap!2939)

(assert (=> b!4445066 (= lt!1639354 (extractMap!915 (toList!3695 lt!1639350)))))

(assert (=> b!4445066 (= lt!1639353 (extractMap!915 (toList!3695 (+!1245 lt!1639350 lt!1639358))))))

(declare-fun lt!1639359 () Unit!84332)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!162 (ListLongMap!2345 (_ BitVec 64) List!49964 K!11208 V!11454 Hashable!5248) Unit!84332)

(assert (=> b!4445066 (= lt!1639359 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!162 lt!1639350 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7408 (ListLongMap!2345) ListLongMap!2345)

(assert (=> b!4445066 (= lt!1639350 (tail!7408 lm!1616))))

(declare-fun lt!1639349 () Unit!84332)

(assert (=> b!4445066 (= lt!1639349 e!2767659)))

(declare-fun c!756504 () Bool)

(declare-fun contains!12422 (ListMap!2939 K!11208) Bool)

(declare-fun tail!7409 (List!49965) List!49965)

(assert (=> b!4445066 (= c!756504 (contains!12422 (extractMap!915 (tail!7409 (toList!3695 lm!1616))) key!3717))))

(declare-fun b!4445067 () Bool)

(declare-fun res!1841073 () Bool)

(assert (=> b!4445067 (=> res!1841073 e!2767660)))

(assert (=> b!4445067 (= res!1841073 (or (and (is-Cons!49841 (toList!3695 lm!1616)) (= (_1!28192 (h!55578 (toList!3695 lm!1616))) hash!366)) (not (is-Cons!49841 (toList!3695 lm!1616))) (= (_1!28192 (h!55578 (toList!3695 lm!1616))) hash!366)))))

(declare-fun b!4445068 () Bool)

(declare-fun res!1841065 () Bool)

(assert (=> b!4445068 (=> res!1841065 e!2767662)))

(declare-fun contains!12423 (ListLongMap!2345 (_ BitVec 64)) Bool)

(assert (=> b!4445068 (= res!1841065 (not (contains!12423 lm!1616 (_1!28192 (h!55578 (toList!3695 lm!1616))))))))

(declare-fun b!4445069 () Bool)

(declare-fun lt!1639356 () (_ BitVec 64))

(assert (=> b!4445069 (= e!2767662 (not (= (_1!28192 (h!55578 (toList!3695 lm!1616))) lt!1639356)))))

(declare-fun b!4445070 () Bool)

(declare-fun Unit!84335 () Unit!84332)

(assert (=> b!4445070 (= e!2767659 Unit!84335)))

(declare-fun b!4445071 () Bool)

(declare-fun res!1841071 () Bool)

(assert (=> b!4445071 (=> res!1841071 e!2767662)))

(assert (=> b!4445071 (= res!1841071 (not (forall!9737 (toList!3695 lm!1616) lambda!158069)))))

(declare-fun b!4445072 () Bool)

(declare-fun e!2767658 () Bool)

(assert (=> b!4445072 (= e!2767658 e!2767666)))

(declare-fun res!1841066 () Bool)

(assert (=> b!4445072 (=> (not res!1841066) (not e!2767666))))

(assert (=> b!4445072 (= res!1841066 e!2767663)))

(declare-fun res!1841076 () Bool)

(assert (=> b!4445072 (=> res!1841076 e!2767663)))

(assert (=> b!4445072 (= res!1841076 e!2767661)))

(declare-fun res!1841064 () Bool)

(assert (=> b!4445072 (=> (not res!1841064) (not e!2767661))))

(assert (=> b!4445072 (= res!1841064 lt!1639357)))

(assert (=> b!4445072 (= lt!1639357 (contains!12423 lm!1616 hash!366))))

(declare-fun b!4445073 () Bool)

(declare-fun e!2767664 () Bool)

(assert (=> b!4445073 (= e!2767664 e!2767658)))

(declare-fun res!1841069 () Bool)

(assert (=> b!4445073 (=> (not res!1841069) (not e!2767658))))

(declare-fun lt!1639351 () ListMap!2939)

(assert (=> b!4445073 (= res!1841069 (not (contains!12422 lt!1639351 key!3717)))))

(assert (=> b!4445073 (= lt!1639351 (extractMap!915 (toList!3695 lm!1616)))))

(declare-fun b!4445074 () Bool)

(declare-fun res!1841078 () Bool)

(assert (=> b!4445074 (=> (not res!1841078) (not e!2767666))))

(assert (=> b!4445074 (= res!1841078 (forall!9737 (toList!3695 lm!1616) lambda!158069))))

(declare-fun b!4445064 () Bool)

(assert (=> b!4445064 (= e!2767657 e!2767664)))

(declare-fun res!1841072 () Bool)

(assert (=> b!4445064 (=> (not res!1841072) (not e!2767664))))

(assert (=> b!4445064 (= res!1841072 (= lt!1639356 hash!366))))

(declare-fun hash!2322 (Hashable!5248 K!11208) (_ BitVec 64))

(assert (=> b!4445064 (= lt!1639356 (hash!2322 hashF!1220 key!3717))))

(declare-fun res!1841070 () Bool)

(assert (=> start!435226 (=> (not res!1841070) (not e!2767657))))

(assert (=> start!435226 (= res!1841070 (forall!9737 (toList!3695 lm!1616) lambda!158069))))

(assert (=> start!435226 e!2767657))

(assert (=> start!435226 tp_is_empty!26661))

(assert (=> start!435226 tp_is_empty!26663))

(assert (=> start!435226 e!2767665))

(declare-fun inv!65395 (ListLongMap!2345) Bool)

(assert (=> start!435226 (and (inv!65395 lm!1616) e!2767667)))

(assert (=> start!435226 true))

(declare-fun b!4445075 () Bool)

(declare-fun res!1841068 () Bool)

(assert (=> b!4445075 (=> (not res!1841068) (not e!2767664))))

(declare-fun allKeysSameHash!814 (List!49964 (_ BitVec 64) Hashable!5248) Bool)

(assert (=> b!4445075 (= res!1841068 (allKeysSameHash!814 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4445076 () Bool)

(declare-fun res!1841079 () Bool)

(assert (=> b!4445076 (=> res!1841079 e!2767662)))

(declare-fun addToMapMapFromBucket!460 (List!49964 ListMap!2939) ListMap!2939)

(assert (=> b!4445076 (= res!1841079 (not (eq!454 lt!1639351 (addToMapMapFromBucket!460 (_2!28192 (h!55578 (toList!3695 lm!1616))) lt!1639354))))))

(declare-fun b!4445077 () Bool)

(declare-fun res!1841075 () Bool)

(assert (=> b!4445077 (=> (not res!1841075) (not e!2767666))))

(declare-fun noDuplicateKeys!854 (List!49964) Bool)

(assert (=> b!4445077 (= res!1841075 (noDuplicateKeys!854 newBucket!194))))

(assert (= (and start!435226 res!1841070) b!4445063))

(assert (= (and b!4445063 res!1841077) b!4445064))

(assert (= (and b!4445064 res!1841072) b!4445075))

(assert (= (and b!4445075 res!1841068) b!4445073))

(assert (= (and b!4445073 res!1841069) b!4445072))

(assert (= (and b!4445072 res!1841064) b!4445058))

(assert (= (and b!4445072 (not res!1841076)) b!4445062))

(assert (= (and b!4445072 res!1841066) b!4445077))

(assert (= (and b!4445077 res!1841075) b!4445074))

(assert (= (and b!4445074 res!1841078) b!4445061))

(assert (= (and b!4445061 (not res!1841074)) b!4445067))

(assert (= (and b!4445067 (not res!1841073)) b!4445066))

(assert (= (and b!4445066 c!756504) b!4445060))

(assert (= (and b!4445066 (not c!756504)) b!4445070))

(assert (= (and b!4445066 (not res!1841067)) b!4445076))

(assert (= (and b!4445076 (not res!1841079)) b!4445071))

(assert (= (and b!4445071 (not res!1841071)) b!4445068))

(assert (= (and b!4445068 (not res!1841065)) b!4445069))

(assert (= (and start!435226 (is-Cons!49840 newBucket!194)) b!4445059))

(assert (= start!435226 b!4445065))

(declare-fun m!5135351 () Bool)

(assert (=> b!4445071 m!5135351))

(declare-fun m!5135353 () Bool)

(assert (=> b!4445063 m!5135353))

(assert (=> start!435226 m!5135351))

(declare-fun m!5135355 () Bool)

(assert (=> start!435226 m!5135355))

(declare-fun m!5135357 () Bool)

(assert (=> b!4445075 m!5135357))

(assert (=> b!4445074 m!5135351))

(declare-fun m!5135359 () Bool)

(assert (=> b!4445064 m!5135359))

(declare-fun m!5135361 () Bool)

(assert (=> b!4445076 m!5135361))

(assert (=> b!4445076 m!5135361))

(declare-fun m!5135363 () Bool)

(assert (=> b!4445076 m!5135363))

(declare-fun m!5135365 () Bool)

(assert (=> b!4445077 m!5135365))

(declare-fun m!5135367 () Bool)

(assert (=> b!4445068 m!5135367))

(declare-fun m!5135369 () Bool)

(assert (=> b!4445066 m!5135369))

(declare-fun m!5135371 () Bool)

(assert (=> b!4445066 m!5135371))

(declare-fun m!5135373 () Bool)

(assert (=> b!4445066 m!5135373))

(declare-fun m!5135375 () Bool)

(assert (=> b!4445066 m!5135375))

(declare-fun m!5135377 () Bool)

(assert (=> b!4445066 m!5135377))

(declare-fun m!5135379 () Bool)

(assert (=> b!4445066 m!5135379))

(declare-fun m!5135381 () Bool)

(assert (=> b!4445066 m!5135381))

(assert (=> b!4445066 m!5135369))

(assert (=> b!4445066 m!5135371))

(declare-fun m!5135383 () Bool)

(assert (=> b!4445066 m!5135383))

(assert (=> b!4445066 m!5135377))

(declare-fun m!5135385 () Bool)

(assert (=> b!4445066 m!5135385))

(declare-fun m!5135387 () Bool)

(assert (=> b!4445066 m!5135387))

(declare-fun m!5135389 () Bool)

(assert (=> b!4445066 m!5135389))

(declare-fun m!5135391 () Bool)

(assert (=> b!4445058 m!5135391))

(declare-fun m!5135393 () Bool)

(assert (=> b!4445061 m!5135393))

(assert (=> b!4445061 m!5135393))

(declare-fun m!5135395 () Bool)

(assert (=> b!4445061 m!5135395))

(declare-fun m!5135397 () Bool)

(assert (=> b!4445061 m!5135397))

(declare-fun m!5135399 () Bool)

(assert (=> b!4445073 m!5135399))

(declare-fun m!5135401 () Bool)

(assert (=> b!4445073 m!5135401))

(declare-fun m!5135403 () Bool)

(assert (=> b!4445072 m!5135403))

(declare-fun m!5135405 () Bool)

(assert (=> b!4445060 m!5135405))

(push 1)

(assert (not b!4445058))

(assert (not b!4445074))

(assert (not b!4445063))

(assert (not b!4445072))

(assert (not b!4445075))

(assert (not start!435226))

(assert tp_is_empty!26663)

(assert (not b!4445066))

(assert (not b!4445068))

(assert (not b!4445061))

(assert (not b!4445059))

(assert (not b!4445076))

(assert tp_is_empty!26661)

(assert (not b!4445064))

(assert (not b!4445065))

(assert (not b!4445077))

(assert (not b!4445073))

(assert (not b!4445071))

(assert (not b!4445060))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

