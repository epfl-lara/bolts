; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!423128 () Bool)

(assert start!423128)

(declare-fun b!4364359 () Bool)

(declare-fun e!2716236 () Bool)

(declare-fun e!2716240 () Bool)

(assert (=> b!4364359 (= e!2716236 (not e!2716240))))

(declare-fun res!1794984 () Bool)

(assert (=> b!4364359 (=> res!1794984 e!2716240)))

(declare-datatypes ((K!10375 0))(
  ( (K!10376 (val!16571 Int)) )
))
(declare-datatypes ((V!10621 0))(
  ( (V!10622 (val!16572 Int)) )
))
(declare-datatypes ((tuple2!48462 0))(
  ( (tuple2!48463 (_1!27525 K!10375) (_2!27525 V!10621)) )
))
(declare-datatypes ((List!49141 0))(
  ( (Nil!49017) (Cons!49017 (h!54586 tuple2!48462) (t!356061 List!49141)) )
))
(declare-fun newBucket!200 () List!49141)

(declare-fun lt!1577105 () tuple2!48462)

(declare-fun key!3918 () K!10375)

(declare-fun lt!1577121 () List!49141)

(declare-fun removePairForKey!493 (List!49141 K!10375) List!49141)

(assert (=> b!4364359 (= res!1794984 (not (= newBucket!200 (Cons!49017 lt!1577105 (removePairForKey!493 lt!1577121 key!3918)))))))

(declare-fun newValue!99 () V!10621)

(assert (=> b!4364359 (= lt!1577105 (tuple2!48463 key!3918 newValue!99))))

(declare-datatypes ((tuple2!48464 0))(
  ( (tuple2!48465 (_1!27526 (_ BitVec 64)) (_2!27526 List!49141)) )
))
(declare-fun lt!1577122 () tuple2!48464)

(declare-fun lambda!142275 () Int)

(declare-datatypes ((List!49142 0))(
  ( (Nil!49018) (Cons!49018 (h!54587 tuple2!48464) (t!356062 List!49142)) )
))
(declare-datatypes ((ListLongMap!1679 0))(
  ( (ListLongMap!1680 (toList!3029 List!49142)) )
))
(declare-fun lm!1707 () ListLongMap!1679)

(declare-datatypes ((Unit!72873 0))(
  ( (Unit!72874) )
))
(declare-fun lt!1577118 () Unit!72873)

(declare-fun forallContained!1819 (List!49142 Int tuple2!48464) Unit!72873)

(assert (=> b!4364359 (= lt!1577118 (forallContained!1819 (toList!3029 lm!1707) lambda!142275 lt!1577122))))

(declare-fun contains!11273 (List!49142 tuple2!48464) Bool)

(assert (=> b!4364359 (contains!11273 (toList!3029 lm!1707) lt!1577122)))

(declare-fun hash!377 () (_ BitVec 64))

(assert (=> b!4364359 (= lt!1577122 (tuple2!48465 hash!377 lt!1577121))))

(declare-fun lt!1577117 () Unit!72873)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!370 (List!49142 (_ BitVec 64) List!49141) Unit!72873)

(assert (=> b!4364359 (= lt!1577117 (lemmaGetValueByKeyImpliesContainsTuple!370 (toList!3029 lm!1707) hash!377 lt!1577121))))

(declare-fun apply!11375 (ListLongMap!1679 (_ BitVec 64)) List!49141)

(assert (=> b!4364359 (= lt!1577121 (apply!11375 lm!1707 hash!377))))

(declare-fun tp_is_empty!25329 () Bool)

(declare-fun tp!1330521 () Bool)

(declare-fun b!4364360 () Bool)

(declare-fun e!2716237 () Bool)

(declare-fun tp_is_empty!25331 () Bool)

(assert (=> b!4364360 (= e!2716237 (and tp_is_empty!25329 tp_is_empty!25331 tp!1330521))))

(declare-fun b!4364361 () Bool)

(declare-fun res!1794975 () Bool)

(assert (=> b!4364361 (=> res!1794975 e!2716240)))

(declare-fun noDuplicateKeys!523 (List!49141) Bool)

(assert (=> b!4364361 (= res!1794975 (not (noDuplicateKeys!523 newBucket!200)))))

(declare-fun b!4364362 () Bool)

(declare-fun e!2716241 () Bool)

(declare-fun e!2716233 () Bool)

(assert (=> b!4364362 (= e!2716241 e!2716233)))

(declare-fun res!1794979 () Bool)

(assert (=> b!4364362 (=> res!1794979 e!2716233)))

(declare-fun lt!1577124 () ListLongMap!1679)

(declare-datatypes ((ListMap!2273 0))(
  ( (ListMap!2274 (toList!3030 List!49141)) )
))
(declare-fun lt!1577116 () ListMap!2273)

(declare-fun eq!293 (ListMap!2273 ListMap!2273) Bool)

(declare-fun extractMap!582 (List!49142) ListMap!2273)

(assert (=> b!4364362 (= res!1794979 (not (eq!293 (extractMap!582 (toList!3029 lt!1577124)) lt!1577116)))))

(declare-fun lt!1577112 () ListMap!2273)

(declare-fun lt!1577123 () ListMap!2273)

(declare-fun addToMapMapFromBucket!219 (List!49141 ListMap!2273) ListMap!2273)

(assert (=> b!4364362 (eq!293 lt!1577112 (addToMapMapFromBucket!219 (_2!27526 (h!54587 (toList!3029 lm!1707))) lt!1577123))))

(declare-fun lt!1577106 () ListMap!2273)

(declare-fun lt!1577115 () Unit!72873)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!8 (ListMap!2273 ListMap!2273 List!49141) Unit!72873)

(assert (=> b!4364362 (= lt!1577115 (lemmaAddToMapFromBucketPreservesEquivalence!8 lt!1577106 lt!1577123 (_2!27526 (h!54587 (toList!3029 lm!1707)))))))

(declare-fun lt!1577128 () ListMap!2273)

(assert (=> b!4364362 (eq!293 lt!1577116 lt!1577128)))

(declare-fun lt!1577120 () ListMap!2273)

(declare-fun +!703 (ListMap!2273 tuple2!48462) ListMap!2273)

(assert (=> b!4364362 (= lt!1577116 (+!703 lt!1577120 lt!1577105))))

(declare-fun lt!1577114 () ListMap!2273)

(declare-fun lt!1577119 () Unit!72873)

(declare-fun lemmaAddToEqMapsPreservesEq!16 (ListMap!2273 ListMap!2273 K!10375 V!10621) Unit!72873)

(assert (=> b!4364362 (= lt!1577119 (lemmaAddToEqMapsPreservesEq!16 lt!1577120 lt!1577114 key!3918 newValue!99))))

(declare-fun b!4364363 () Bool)

(declare-fun res!1794976 () Bool)

(declare-fun e!2716239 () Bool)

(assert (=> b!4364363 (=> (not res!1794976) (not e!2716239))))

(declare-datatypes ((Hashable!4915 0))(
  ( (HashableExt!4914 (__x!30618 Int)) )
))
(declare-fun hashF!1247 () Hashable!4915)

(declare-fun hash!1657 (Hashable!4915 K!10375) (_ BitVec 64))

(assert (=> b!4364363 (= res!1794976 (= (hash!1657 hashF!1247 key!3918) hash!377))))

(declare-fun b!4364364 () Bool)

(declare-fun e!2716242 () Bool)

(assert (=> b!4364364 (= e!2716242 e!2716241)))

(declare-fun res!1794980 () Bool)

(assert (=> b!4364364 (=> res!1794980 e!2716241)))

(assert (=> b!4364364 (= res!1794980 (not (eq!293 lt!1577114 lt!1577120)))))

(assert (=> b!4364364 (eq!293 lt!1577112 lt!1577128)))

(assert (=> b!4364364 (= lt!1577128 (+!703 lt!1577114 lt!1577105))))

(assert (=> b!4364364 (= lt!1577112 (addToMapMapFromBucket!219 (_2!27526 (h!54587 (toList!3029 lm!1707))) lt!1577106))))

(declare-fun lt!1577127 () Unit!72873)

(declare-fun lt!1577126 () ListMap!2273)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!102 (ListMap!2273 K!10375 V!10621 List!49141) Unit!72873)

(assert (=> b!4364364 (= lt!1577127 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!102 lt!1577126 key!3918 newValue!99 (_2!27526 (h!54587 (toList!3029 lm!1707)))))))

(assert (=> b!4364364 (= lt!1577120 lt!1577114)))

(assert (=> b!4364364 (= lt!1577114 (addToMapMapFromBucket!219 (_2!27526 (h!54587 (toList!3029 lm!1707))) lt!1577126))))

(declare-fun e!2716238 () Bool)

(assert (=> b!4364364 e!2716238))

(declare-fun res!1794978 () Bool)

(assert (=> b!4364364 (=> (not res!1794978) (not e!2716238))))

(assert (=> b!4364364 (= res!1794978 (eq!293 lt!1577123 lt!1577106))))

(assert (=> b!4364364 (= lt!1577106 (+!703 lt!1577126 lt!1577105))))

(declare-fun lt!1577111 () ListLongMap!1679)

(declare-fun lt!1577109 () tuple2!48464)

(declare-fun +!704 (ListLongMap!1679 tuple2!48464) ListLongMap!1679)

(assert (=> b!4364364 (= lt!1577123 (extractMap!582 (toList!3029 (+!704 lt!1577111 lt!1577109))))))

(declare-fun lt!1577110 () Unit!72873)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!127 (ListLongMap!1679 (_ BitVec 64) List!49141 K!10375 V!10621 Hashable!4915) Unit!72873)

(assert (=> b!4364364 (= lt!1577110 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!127 lt!1577111 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11274 (ListMap!2273 K!10375) Bool)

(assert (=> b!4364364 (contains!11274 lt!1577126 key!3918)))

(assert (=> b!4364364 (= lt!1577126 (extractMap!582 (toList!3029 lt!1577111)))))

(declare-fun tail!7048 (ListLongMap!1679) ListLongMap!1679)

(assert (=> b!4364364 (= lt!1577111 (tail!7048 lm!1707))))

(declare-fun lt!1577125 () ListMap!2273)

(assert (=> b!4364364 (contains!11274 lt!1577125 key!3918)))

(declare-fun lt!1577108 () Unit!72873)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!66 (List!49141 K!10375 V!10621 ListMap!2273) Unit!72873)

(assert (=> b!4364364 (= lt!1577108 (lemmaAddToMapContainsAndNotInListThenInAcc!66 (_2!27526 (h!54587 (toList!3029 lm!1707))) key!3918 newValue!99 lt!1577125))))

(assert (=> b!4364364 (= lt!1577125 (extractMap!582 (t!356062 (toList!3029 lm!1707))))))

(declare-fun e!2716235 () Bool)

(assert (=> b!4364364 e!2716235))

(declare-fun res!1794982 () Bool)

(assert (=> b!4364364 (=> (not res!1794982) (not e!2716235))))

(declare-fun containsKey!760 (List!49141 K!10375) Bool)

(assert (=> b!4364364 (= res!1794982 (not (containsKey!760 (apply!11375 lm!1707 (_1!27526 (h!54587 (toList!3029 lm!1707)))) key!3918)))))

(declare-fun lt!1577113 () Unit!72873)

(declare-fun lemmaNotSameHashThenCannotContainKey!70 (ListLongMap!1679 K!10375 (_ BitVec 64) Hashable!4915) Unit!72873)

(assert (=> b!4364364 (= lt!1577113 (lemmaNotSameHashThenCannotContainKey!70 lm!1707 key!3918 (_1!27526 (h!54587 (toList!3029 lm!1707))) hashF!1247))))

(declare-fun b!4364365 () Bool)

(declare-fun res!1794974 () Bool)

(assert (=> b!4364365 (=> (not res!1794974) (not e!2716239))))

(declare-fun allKeysSameHash!481 (List!49141 (_ BitVec 64) Hashable!4915) Bool)

(assert (=> b!4364365 (= res!1794974 (allKeysSameHash!481 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4364366 () Bool)

(declare-fun e!2716232 () Bool)

(declare-fun tp!1330522 () Bool)

(assert (=> b!4364366 (= e!2716232 tp!1330522)))

(declare-fun res!1794986 () Bool)

(assert (=> start!423128 (=> (not res!1794986) (not e!2716239))))

(declare-fun forall!9178 (List!49142 Int) Bool)

(assert (=> start!423128 (= res!1794986 (forall!9178 (toList!3029 lm!1707) lambda!142275))))

(assert (=> start!423128 e!2716239))

(assert (=> start!423128 e!2716237))

(assert (=> start!423128 true))

(declare-fun inv!64561 (ListLongMap!1679) Bool)

(assert (=> start!423128 (and (inv!64561 lm!1707) e!2716232)))

(assert (=> start!423128 tp_is_empty!25329))

(assert (=> start!423128 tp_is_empty!25331))

(declare-fun b!4364367 () Bool)

(declare-fun res!1794985 () Bool)

(assert (=> b!4364367 (=> (not res!1794985) (not e!2716239))))

(declare-fun allKeysSameHashInMap!627 (ListLongMap!1679 Hashable!4915) Bool)

(assert (=> b!4364367 (= res!1794985 (allKeysSameHashInMap!627 lm!1707 hashF!1247))))

(declare-fun b!4364368 () Bool)

(assert (=> b!4364368 (= e!2716235 (not (containsKey!760 (_2!27526 (h!54587 (toList!3029 lm!1707))) key!3918)))))

(declare-fun b!4364369 () Bool)

(declare-fun e!2716234 () Bool)

(assert (=> b!4364369 (= e!2716234 (forall!9178 (toList!3029 lt!1577124) lambda!142275))))

(declare-fun b!4364370 () Bool)

(assert (=> b!4364370 (= e!2716233 (forall!9178 (toList!3029 lm!1707) lambda!142275))))

(declare-fun b!4364371 () Bool)

(assert (=> b!4364371 (= e!2716240 e!2716242)))

(declare-fun res!1794981 () Bool)

(assert (=> b!4364371 (=> res!1794981 e!2716242)))

(get-info :version)

(assert (=> b!4364371 (= res!1794981 (or (and ((_ is Cons!49018) (toList!3029 lm!1707)) (= (_1!27526 (h!54587 (toList!3029 lm!1707))) hash!377)) (not ((_ is Cons!49018) (toList!3029 lm!1707))) (= (_1!27526 (h!54587 (toList!3029 lm!1707))) hash!377)))))

(assert (=> b!4364371 e!2716234))

(declare-fun res!1794977 () Bool)

(assert (=> b!4364371 (=> (not res!1794977) (not e!2716234))))

(assert (=> b!4364371 (= res!1794977 (forall!9178 (toList!3029 lt!1577124) lambda!142275))))

(assert (=> b!4364371 (= lt!1577124 (+!704 lm!1707 lt!1577109))))

(assert (=> b!4364371 (= lt!1577109 (tuple2!48465 hash!377 newBucket!200))))

(declare-fun lt!1577107 () Unit!72873)

(declare-fun addValidProp!177 (ListLongMap!1679 Int (_ BitVec 64) List!49141) Unit!72873)

(assert (=> b!4364371 (= lt!1577107 (addValidProp!177 lm!1707 lambda!142275 hash!377 newBucket!200))))

(assert (=> b!4364371 (forall!9178 (toList!3029 lm!1707) lambda!142275)))

(declare-fun b!4364372 () Bool)

(declare-fun res!1794987 () Bool)

(assert (=> b!4364372 (=> (not res!1794987) (not e!2716236))))

(declare-fun contains!11275 (ListLongMap!1679 (_ BitVec 64)) Bool)

(assert (=> b!4364372 (= res!1794987 (contains!11275 lm!1707 hash!377))))

(declare-fun b!4364373 () Bool)

(assert (=> b!4364373 (= e!2716239 e!2716236)))

(declare-fun res!1794983 () Bool)

(assert (=> b!4364373 (=> (not res!1794983) (not e!2716236))))

(assert (=> b!4364373 (= res!1794983 (contains!11274 lt!1577120 key!3918))))

(assert (=> b!4364373 (= lt!1577120 (extractMap!582 (toList!3029 lm!1707)))))

(declare-fun b!4364374 () Bool)

(declare-fun head!9100 (ListLongMap!1679) tuple2!48464)

(assert (=> b!4364374 (= e!2716238 (not (= (head!9100 lm!1707) lt!1577109)))))

(assert (= (and start!423128 res!1794986) b!4364367))

(assert (= (and b!4364367 res!1794985) b!4364363))

(assert (= (and b!4364363 res!1794976) b!4364365))

(assert (= (and b!4364365 res!1794974) b!4364373))

(assert (= (and b!4364373 res!1794983) b!4364372))

(assert (= (and b!4364372 res!1794987) b!4364359))

(assert (= (and b!4364359 (not res!1794984)) b!4364361))

(assert (= (and b!4364361 (not res!1794975)) b!4364371))

(assert (= (and b!4364371 res!1794977) b!4364369))

(assert (= (and b!4364371 (not res!1794981)) b!4364364))

(assert (= (and b!4364364 res!1794982) b!4364368))

(assert (= (and b!4364364 res!1794978) b!4364374))

(assert (= (and b!4364364 (not res!1794980)) b!4364362))

(assert (= (and b!4364362 (not res!1794979)) b!4364370))

(assert (= (and start!423128 ((_ is Cons!49017) newBucket!200)) b!4364360))

(assert (= start!423128 b!4364366))

(declare-fun m!4986097 () Bool)

(assert (=> b!4364372 m!4986097))

(declare-fun m!4986099 () Bool)

(assert (=> b!4364370 m!4986099))

(declare-fun m!4986101 () Bool)

(assert (=> b!4364363 m!4986101))

(declare-fun m!4986103 () Bool)

(assert (=> b!4364374 m!4986103))

(declare-fun m!4986105 () Bool)

(assert (=> b!4364362 m!4986105))

(declare-fun m!4986107 () Bool)

(assert (=> b!4364362 m!4986107))

(declare-fun m!4986109 () Bool)

(assert (=> b!4364362 m!4986109))

(assert (=> b!4364362 m!4986107))

(declare-fun m!4986111 () Bool)

(assert (=> b!4364362 m!4986111))

(declare-fun m!4986113 () Bool)

(assert (=> b!4364362 m!4986113))

(declare-fun m!4986115 () Bool)

(assert (=> b!4364362 m!4986115))

(declare-fun m!4986117 () Bool)

(assert (=> b!4364362 m!4986117))

(declare-fun m!4986119 () Bool)

(assert (=> b!4364362 m!4986119))

(assert (=> b!4364362 m!4986111))

(declare-fun m!4986121 () Bool)

(assert (=> b!4364368 m!4986121))

(assert (=> start!423128 m!4986099))

(declare-fun m!4986123 () Bool)

(assert (=> start!423128 m!4986123))

(declare-fun m!4986125 () Bool)

(assert (=> b!4364373 m!4986125))

(declare-fun m!4986127 () Bool)

(assert (=> b!4364373 m!4986127))

(declare-fun m!4986129 () Bool)

(assert (=> b!4364371 m!4986129))

(declare-fun m!4986131 () Bool)

(assert (=> b!4364371 m!4986131))

(declare-fun m!4986133 () Bool)

(assert (=> b!4364371 m!4986133))

(assert (=> b!4364371 m!4986099))

(declare-fun m!4986135 () Bool)

(assert (=> b!4364365 m!4986135))

(declare-fun m!4986137 () Bool)

(assert (=> b!4364361 m!4986137))

(assert (=> b!4364369 m!4986129))

(declare-fun m!4986139 () Bool)

(assert (=> b!4364359 m!4986139))

(declare-fun m!4986141 () Bool)

(assert (=> b!4364359 m!4986141))

(declare-fun m!4986143 () Bool)

(assert (=> b!4364359 m!4986143))

(declare-fun m!4986145 () Bool)

(assert (=> b!4364359 m!4986145))

(declare-fun m!4986147 () Bool)

(assert (=> b!4364359 m!4986147))

(declare-fun m!4986149 () Bool)

(assert (=> b!4364367 m!4986149))

(declare-fun m!4986151 () Bool)

(assert (=> b!4364364 m!4986151))

(declare-fun m!4986153 () Bool)

(assert (=> b!4364364 m!4986153))

(declare-fun m!4986155 () Bool)

(assert (=> b!4364364 m!4986155))

(declare-fun m!4986157 () Bool)

(assert (=> b!4364364 m!4986157))

(declare-fun m!4986159 () Bool)

(assert (=> b!4364364 m!4986159))

(declare-fun m!4986161 () Bool)

(assert (=> b!4364364 m!4986161))

(declare-fun m!4986163 () Bool)

(assert (=> b!4364364 m!4986163))

(declare-fun m!4986165 () Bool)

(assert (=> b!4364364 m!4986165))

(declare-fun m!4986167 () Bool)

(assert (=> b!4364364 m!4986167))

(declare-fun m!4986169 () Bool)

(assert (=> b!4364364 m!4986169))

(declare-fun m!4986171 () Bool)

(assert (=> b!4364364 m!4986171))

(declare-fun m!4986173 () Bool)

(assert (=> b!4364364 m!4986173))

(declare-fun m!4986175 () Bool)

(assert (=> b!4364364 m!4986175))

(declare-fun m!4986177 () Bool)

(assert (=> b!4364364 m!4986177))

(declare-fun m!4986179 () Bool)

(assert (=> b!4364364 m!4986179))

(assert (=> b!4364364 m!4986179))

(declare-fun m!4986181 () Bool)

(assert (=> b!4364364 m!4986181))

(declare-fun m!4986183 () Bool)

(assert (=> b!4364364 m!4986183))

(declare-fun m!4986185 () Bool)

(assert (=> b!4364364 m!4986185))

(declare-fun m!4986187 () Bool)

(assert (=> b!4364364 m!4986187))

(declare-fun m!4986189 () Bool)

(assert (=> b!4364364 m!4986189))

(check-sat (not b!4364364) tp_is_empty!25329 (not b!4364362) (not b!4364366) (not b!4364367) (not b!4364373) (not b!4364368) tp_is_empty!25331 (not start!423128) (not b!4364372) (not b!4364361) (not b!4364359) (not b!4364374) (not b!4364360) (not b!4364370) (not b!4364363) (not b!4364365) (not b!4364369) (not b!4364371))
(check-sat)
