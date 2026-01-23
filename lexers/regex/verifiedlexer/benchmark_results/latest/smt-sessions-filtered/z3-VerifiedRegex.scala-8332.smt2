; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!433404 () Bool)

(assert start!433404)

(declare-fun b!4434373 () Bool)

(declare-fun e!2761173 () Bool)

(declare-fun e!2761169 () Bool)

(assert (=> b!4434373 (= e!2761173 e!2761169)))

(declare-fun res!1834942 () Bool)

(assert (=> b!4434373 (=> (not res!1834942) (not e!2761169))))

(declare-fun e!2761168 () Bool)

(assert (=> b!4434373 (= res!1834942 e!2761168)))

(declare-fun res!1834946 () Bool)

(assert (=> b!4434373 (=> res!1834946 e!2761168)))

(declare-fun e!2761166 () Bool)

(assert (=> b!4434373 (= res!1834946 e!2761166)))

(declare-fun res!1834954 () Bool)

(assert (=> b!4434373 (=> (not res!1834954) (not e!2761166))))

(declare-fun lt!1631783 () Bool)

(assert (=> b!4434373 (= res!1834954 (not lt!1631783))))

(declare-fun lt!1631789 () Bool)

(assert (=> b!4434373 (= lt!1631783 (not lt!1631789))))

(declare-datatypes ((V!11311 0))(
  ( (V!11312 (val!17123 Int)) )
))
(declare-datatypes ((K!11065 0))(
  ( (K!11066 (val!17124 Int)) )
))
(declare-datatypes ((tuple2!49566 0))(
  ( (tuple2!49567 (_1!28077 K!11065) (_2!28077 V!11311)) )
))
(declare-datatypes ((List!49823 0))(
  ( (Nil!49699) (Cons!49699 (h!55406 tuple2!49566) (t!356765 List!49823)) )
))
(declare-datatypes ((tuple2!49568 0))(
  ( (tuple2!49569 (_1!28078 (_ BitVec 64)) (_2!28078 List!49823)) )
))
(declare-datatypes ((List!49824 0))(
  ( (Nil!49700) (Cons!49700 (h!55407 tuple2!49568) (t!356766 List!49824)) )
))
(declare-datatypes ((ListLongMap!2231 0))(
  ( (ListLongMap!2232 (toList!3581 List!49824)) )
))
(declare-fun lm!1616 () ListLongMap!2231)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!12242 (ListLongMap!2231 (_ BitVec 64)) Bool)

(assert (=> b!4434373 (= lt!1631789 (contains!12242 lm!1616 hash!366))))

(declare-fun b!4434374 () Bool)

(declare-fun e!2761171 () Bool)

(declare-fun e!2761167 () Bool)

(assert (=> b!4434374 (= e!2761171 e!2761167)))

(declare-fun res!1834947 () Bool)

(assert (=> b!4434374 (=> res!1834947 e!2761167)))

(declare-datatypes ((ListMap!2825 0))(
  ( (ListMap!2826 (toList!3582 List!49823)) )
))
(declare-fun lt!1631784 () ListMap!2825)

(declare-fun lt!1631787 () ListMap!2825)

(assert (=> b!4434374 (= res!1834947 (not (= lt!1631784 lt!1631787)))))

(declare-fun newBucket!194 () List!49823)

(declare-fun lt!1631786 () ListMap!2825)

(declare-fun addToMapMapFromBucket!422 (List!49823 ListMap!2825) ListMap!2825)

(assert (=> b!4434374 (= lt!1631787 (addToMapMapFromBucket!422 newBucket!194 lt!1631786))))

(declare-fun lt!1631778 () ListLongMap!2231)

(declare-fun extractMap!858 (List!49824) ListMap!2825)

(assert (=> b!4434374 (= lt!1631784 (extractMap!858 (toList!3581 lt!1631778)))))

(assert (=> b!4434374 (= lt!1631786 (extractMap!858 (t!356766 (toList!3581 lm!1616))))))

(declare-fun b!4434375 () Bool)

(declare-fun res!1834940 () Bool)

(assert (=> b!4434375 (=> (not res!1834940) (not e!2761169))))

(declare-fun noDuplicateKeys!797 (List!49823) Bool)

(assert (=> b!4434375 (= res!1834940 (noDuplicateKeys!797 newBucket!194))))

(declare-fun b!4434376 () Bool)

(declare-fun res!1834949 () Bool)

(assert (=> b!4434376 (=> res!1834949 e!2761171)))

(declare-fun tail!7325 (List!49824) List!49824)

(assert (=> b!4434376 (= res!1834949 (not (= (tail!7325 (toList!3581 lt!1631778)) (t!356766 (toList!3581 lm!1616)))))))

(declare-fun b!4434377 () Bool)

(declare-fun res!1834948 () Bool)

(assert (=> b!4434377 (=> (not res!1834948) (not e!2761173))))

(declare-fun key!3717 () K!11065)

(declare-datatypes ((Hashable!5191 0))(
  ( (HashableExt!5190 (__x!30894 Int)) )
))
(declare-fun hashF!1220 () Hashable!5191)

(declare-fun hash!2220 (Hashable!5191 K!11065) (_ BitVec 64))

(assert (=> b!4434377 (= res!1834948 (= (hash!2220 hashF!1220 key!3717) hash!366))))

(declare-fun b!4434378 () Bool)

(declare-fun res!1834941 () Bool)

(assert (=> b!4434378 (=> (not res!1834941) (not e!2761169))))

(declare-fun lambda!155928 () Int)

(declare-fun forall!9642 (List!49824 Int) Bool)

(assert (=> b!4434378 (= res!1834941 (forall!9642 (toList!3581 lm!1616) lambda!155928))))

(declare-fun b!4434379 () Bool)

(declare-fun res!1834943 () Bool)

(assert (=> b!4434379 (=> (not res!1834943) (not e!2761173))))

(declare-fun allKeysSameHash!757 (List!49823 (_ BitVec 64) Hashable!5191) Bool)

(assert (=> b!4434379 (= res!1834943 (allKeysSameHash!757 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4434380 () Bool)

(declare-fun e!2761165 () Bool)

(declare-fun tp!1333740 () Bool)

(assert (=> b!4434380 (= e!2761165 tp!1333740)))

(declare-fun newValue!93 () V!11311)

(declare-fun b!4434382 () Bool)

(declare-fun apply!11649 (ListLongMap!2231 (_ BitVec 64)) List!49823)

(assert (=> b!4434382 (= e!2761166 (= newBucket!194 (Cons!49699 (tuple2!49567 key!3717 newValue!93) (apply!11649 lm!1616 hash!366))))))

(declare-fun b!4434383 () Bool)

(declare-fun res!1834939 () Bool)

(assert (=> b!4434383 (=> (not res!1834939) (not e!2761173))))

(declare-fun contains!12243 (ListMap!2825 K!11065) Bool)

(assert (=> b!4434383 (= res!1834939 (not (contains!12243 (extractMap!858 (toList!3581 lm!1616)) key!3717)))))

(declare-fun b!4434384 () Bool)

(assert (=> b!4434384 (= e!2761169 (not e!2761171))))

(declare-fun res!1834951 () Bool)

(assert (=> b!4434384 (=> res!1834951 e!2761171)))

(assert (=> b!4434384 (= res!1834951 (not (forall!9642 (toList!3581 lt!1631778) lambda!155928)))))

(assert (=> b!4434384 (forall!9642 (toList!3581 lt!1631778) lambda!155928)))

(declare-fun lt!1631780 () tuple2!49568)

(declare-fun +!1162 (ListLongMap!2231 tuple2!49568) ListLongMap!2231)

(assert (=> b!4434384 (= lt!1631778 (+!1162 lm!1616 lt!1631780))))

(assert (=> b!4434384 (= lt!1631780 (tuple2!49569 hash!366 newBucket!194))))

(declare-datatypes ((Unit!83077 0))(
  ( (Unit!83078) )
))
(declare-fun lt!1631782 () Unit!83077)

(declare-fun addValidProp!439 (ListLongMap!2231 Int (_ BitVec 64) List!49823) Unit!83077)

(assert (=> b!4434384 (= lt!1631782 (addValidProp!439 lm!1616 lambda!155928 hash!366 newBucket!194))))

(declare-fun b!4434385 () Bool)

(declare-fun res!1834944 () Bool)

(assert (=> b!4434385 (=> res!1834944 e!2761171)))

(get-info :version)

(assert (=> b!4434385 (= res!1834944 (or (not ((_ is Cons!49700) (toList!3581 lm!1616))) (not (= (_1!28078 (h!55407 (toList!3581 lm!1616))) hash!366)) lt!1631783))))

(declare-fun tp_is_empty!26433 () Bool)

(declare-fun e!2761172 () Bool)

(declare-fun tp!1333739 () Bool)

(declare-fun b!4434386 () Bool)

(declare-fun tp_is_empty!26435 () Bool)

(assert (=> b!4434386 (= e!2761172 (and tp_is_empty!26435 tp_is_empty!26433 tp!1333739))))

(declare-fun b!4434387 () Bool)

(declare-fun e!2761174 () Bool)

(declare-fun lt!1631788 () ListMap!2825)

(declare-fun eq!431 (ListMap!2825 ListMap!2825) Bool)

(assert (=> b!4434387 (= e!2761174 (eq!431 lt!1631787 lt!1631788))))

(declare-fun lt!1631779 () ListMap!2825)

(assert (=> b!4434387 (eq!431 lt!1631779 lt!1631788)))

(declare-fun lt!1631777 () List!49823)

(declare-fun lt!1631785 () tuple2!49566)

(declare-fun +!1163 (ListMap!2825 tuple2!49566) ListMap!2825)

(assert (=> b!4434387 (= lt!1631788 (+!1163 (addToMapMapFromBucket!422 lt!1631777 lt!1631786) lt!1631785))))

(declare-fun lt!1631781 () Unit!83077)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!202 (ListMap!2825 K!11065 V!11311 List!49823) Unit!83077)

(assert (=> b!4434387 (= lt!1631781 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!202 lt!1631786 key!3717 newValue!93 lt!1631777))))

(declare-fun b!4434388 () Bool)

(declare-fun res!1834952 () Bool)

(assert (=> b!4434388 (=> (not res!1834952) (not e!2761173))))

(declare-fun allKeysSameHashInMap!903 (ListLongMap!2231 Hashable!5191) Bool)

(assert (=> b!4434388 (= res!1834952 (allKeysSameHashInMap!903 lm!1616 hashF!1220))))

(declare-fun b!4434389 () Bool)

(assert (=> b!4434389 (= e!2761168 (and (not lt!1631789) (= newBucket!194 (Cons!49699 (tuple2!49567 key!3717 newValue!93) Nil!49699))))))

(declare-fun b!4434390 () Bool)

(declare-fun e!2761170 () Bool)

(assert (=> b!4434390 (= e!2761167 e!2761170)))

(declare-fun res!1834945 () Bool)

(assert (=> b!4434390 (=> res!1834945 e!2761170)))

(assert (=> b!4434390 (= res!1834945 (not (= newBucket!194 (Cons!49699 lt!1631785 lt!1631777))))))

(assert (=> b!4434390 (= lt!1631777 (apply!11649 lm!1616 hash!366))))

(assert (=> b!4434390 (= lt!1631785 (tuple2!49567 key!3717 newValue!93))))

(declare-fun b!4434391 () Bool)

(assert (=> b!4434391 (= e!2761170 e!2761174)))

(declare-fun res!1834955 () Bool)

(assert (=> b!4434391 (=> res!1834955 e!2761174)))

(assert (=> b!4434391 (= res!1834955 (not (= lt!1631787 lt!1631779)))))

(assert (=> b!4434391 (= lt!1631779 (addToMapMapFromBucket!422 lt!1631777 (+!1163 lt!1631786 lt!1631785)))))

(declare-fun res!1834953 () Bool)

(assert (=> start!433404 (=> (not res!1834953) (not e!2761173))))

(assert (=> start!433404 (= res!1834953 (forall!9642 (toList!3581 lm!1616) lambda!155928))))

(assert (=> start!433404 e!2761173))

(assert (=> start!433404 tp_is_empty!26433))

(assert (=> start!433404 tp_is_empty!26435))

(assert (=> start!433404 e!2761172))

(declare-fun inv!65251 (ListLongMap!2231) Bool)

(assert (=> start!433404 (and (inv!65251 lm!1616) e!2761165)))

(assert (=> start!433404 true))

(declare-fun b!4434381 () Bool)

(declare-fun res!1834950 () Bool)

(assert (=> b!4434381 (=> res!1834950 e!2761171)))

(declare-fun head!9262 (List!49824) tuple2!49568)

(assert (=> b!4434381 (= res!1834950 (not (= (head!9262 (toList!3581 lt!1631778)) lt!1631780)))))

(assert (= (and start!433404 res!1834953) b!4434388))

(assert (= (and b!4434388 res!1834952) b!4434377))

(assert (= (and b!4434377 res!1834948) b!4434379))

(assert (= (and b!4434379 res!1834943) b!4434383))

(assert (= (and b!4434383 res!1834939) b!4434373))

(assert (= (and b!4434373 res!1834954) b!4434382))

(assert (= (and b!4434373 (not res!1834946)) b!4434389))

(assert (= (and b!4434373 res!1834942) b!4434375))

(assert (= (and b!4434375 res!1834940) b!4434378))

(assert (= (and b!4434378 res!1834941) b!4434384))

(assert (= (and b!4434384 (not res!1834951)) b!4434385))

(assert (= (and b!4434385 (not res!1834944)) b!4434381))

(assert (= (and b!4434381 (not res!1834950)) b!4434376))

(assert (= (and b!4434376 (not res!1834949)) b!4434374))

(assert (= (and b!4434374 (not res!1834947)) b!4434390))

(assert (= (and b!4434390 (not res!1834945)) b!4434391))

(assert (= (and b!4434391 (not res!1834955)) b!4434387))

(assert (= (and start!433404 ((_ is Cons!49699) newBucket!194)) b!4434386))

(assert (= start!433404 b!4434380))

(declare-fun m!5119949 () Bool)

(assert (=> b!4434375 m!5119949))

(declare-fun m!5119951 () Bool)

(assert (=> b!4434374 m!5119951))

(declare-fun m!5119953 () Bool)

(assert (=> b!4434374 m!5119953))

(declare-fun m!5119955 () Bool)

(assert (=> b!4434374 m!5119955))

(declare-fun m!5119957 () Bool)

(assert (=> b!4434379 m!5119957))

(declare-fun m!5119959 () Bool)

(assert (=> b!4434377 m!5119959))

(declare-fun m!5119961 () Bool)

(assert (=> b!4434381 m!5119961))

(declare-fun m!5119963 () Bool)

(assert (=> b!4434384 m!5119963))

(assert (=> b!4434384 m!5119963))

(declare-fun m!5119965 () Bool)

(assert (=> b!4434384 m!5119965))

(declare-fun m!5119967 () Bool)

(assert (=> b!4434384 m!5119967))

(declare-fun m!5119969 () Bool)

(assert (=> b!4434388 m!5119969))

(declare-fun m!5119971 () Bool)

(assert (=> b!4434376 m!5119971))

(declare-fun m!5119973 () Bool)

(assert (=> b!4434378 m!5119973))

(declare-fun m!5119975 () Bool)

(assert (=> b!4434390 m!5119975))

(declare-fun m!5119977 () Bool)

(assert (=> b!4434373 m!5119977))

(assert (=> b!4434382 m!5119975))

(declare-fun m!5119979 () Bool)

(assert (=> b!4434383 m!5119979))

(assert (=> b!4434383 m!5119979))

(declare-fun m!5119981 () Bool)

(assert (=> b!4434383 m!5119981))

(declare-fun m!5119983 () Bool)

(assert (=> b!4434391 m!5119983))

(assert (=> b!4434391 m!5119983))

(declare-fun m!5119985 () Bool)

(assert (=> b!4434391 m!5119985))

(assert (=> start!433404 m!5119973))

(declare-fun m!5119987 () Bool)

(assert (=> start!433404 m!5119987))

(declare-fun m!5119989 () Bool)

(assert (=> b!4434387 m!5119989))

(declare-fun m!5119991 () Bool)

(assert (=> b!4434387 m!5119991))

(declare-fun m!5119993 () Bool)

(assert (=> b!4434387 m!5119993))

(declare-fun m!5119995 () Bool)

(assert (=> b!4434387 m!5119995))

(assert (=> b!4434387 m!5119993))

(declare-fun m!5119997 () Bool)

(assert (=> b!4434387 m!5119997))

(check-sat (not b!4434390) tp_is_empty!26433 tp_is_empty!26435 (not b!4434377) (not b!4434388) (not b!4434391) (not b!4434374) (not b!4434375) (not b!4434376) (not b!4434379) (not b!4434383) (not b!4434386) (not b!4434384) (not b!4434382) (not start!433404) (not b!4434373) (not b!4434381) (not b!4434380) (not b!4434387) (not b!4434378))
(check-sat)
