; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!419702 () Bool)

(assert start!419702)

(declare-fun e!2705211 () Bool)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun b!4347193 () Bool)

(declare-datatypes ((V!10434 0))(
  ( (V!10435 (val!16421 Int)) )
))
(declare-datatypes ((K!10188 0))(
  ( (K!10189 (val!16422 Int)) )
))
(declare-datatypes ((tuple2!48162 0))(
  ( (tuple2!48163 (_1!27375 K!10188) (_2!27375 V!10434)) )
))
(declare-datatypes ((List!48949 0))(
  ( (Nil!48825) (Cons!48825 (h!54352 tuple2!48162) (t!355869 List!48949)) )
))
(declare-datatypes ((tuple2!48164 0))(
  ( (tuple2!48165 (_1!27376 (_ BitVec 64)) (_2!27376 List!48949)) )
))
(declare-datatypes ((List!48950 0))(
  ( (Nil!48826) (Cons!48826 (h!54353 tuple2!48164) (t!355870 List!48950)) )
))
(declare-datatypes ((ListLongMap!1529 0))(
  ( (ListLongMap!1530 (toList!2879 List!48950)) )
))
(declare-fun lm!1707 () ListLongMap!1529)

(declare-fun lt!1562117 () ListLongMap!1529)

(declare-fun lt!1562104 () tuple2!48164)

(assert (=> b!4347193 (= e!2705211 (or (not (is-Cons!48826 (toList!2879 lm!1707))) (not (= (_1!27376 (h!54353 (toList!2879 lm!1707))) hash!377)) (= lt!1562117 (ListLongMap!1530 (Cons!48826 lt!1562104 (t!355870 (toList!2879 lm!1707)))))))))

(declare-fun b!4347194 () Bool)

(declare-fun e!2705208 () Bool)

(declare-fun e!2705210 () Bool)

(assert (=> b!4347194 (= e!2705208 e!2705210)))

(declare-fun res!1785310 () Bool)

(assert (=> b!4347194 (=> (not res!1785310) (not e!2705210))))

(declare-datatypes ((ListMap!2123 0))(
  ( (ListMap!2124 (toList!2880 List!48949)) )
))
(declare-fun lt!1562120 () ListMap!2123)

(declare-fun key!3918 () K!10188)

(declare-fun contains!10973 (ListMap!2123 K!10188) Bool)

(assert (=> b!4347194 (= res!1785310 (contains!10973 lt!1562120 key!3918))))

(declare-fun extractMap!507 (List!48950) ListMap!2123)

(assert (=> b!4347194 (= lt!1562120 (extractMap!507 (toList!2879 lm!1707)))))

(declare-fun b!4347195 () Bool)

(declare-fun e!2705212 () Bool)

(declare-fun tp!1329622 () Bool)

(assert (=> b!4347195 (= e!2705212 tp!1329622)))

(declare-fun b!4347196 () Bool)

(declare-fun res!1785309 () Bool)

(assert (=> b!4347196 (=> (not res!1785309) (not e!2705210))))

(declare-fun contains!10974 (ListLongMap!1529 (_ BitVec 64)) Bool)

(assert (=> b!4347196 (= res!1785309 (contains!10974 lm!1707 hash!377))))

(declare-fun b!4347197 () Bool)

(declare-fun e!2705205 () Bool)

(declare-fun lt!1562101 () ListMap!2123)

(declare-fun lt!1562095 () ListMap!2123)

(declare-fun eq!238 (ListMap!2123 ListMap!2123) Bool)

(assert (=> b!4347197 (= e!2705205 (eq!238 lt!1562101 lt!1562095))))

(declare-fun b!4347198 () Bool)

(declare-fun e!2705206 () Bool)

(declare-fun lambda!138584 () Int)

(declare-fun forall!9044 (List!48950 Int) Bool)

(assert (=> b!4347198 (= e!2705206 (forall!9044 (toList!2879 lm!1707) lambda!138584))))

(declare-fun b!4347199 () Bool)

(declare-fun res!1785298 () Bool)

(assert (=> b!4347199 (=> (not res!1785298) (not e!2705211))))

(assert (=> b!4347199 (= res!1785298 (forall!9044 (toList!2879 lt!1562117) lambda!138584))))

(declare-fun e!2705214 () Bool)

(declare-fun tp!1329621 () Bool)

(declare-fun tp_is_empty!25031 () Bool)

(declare-fun tp_is_empty!25029 () Bool)

(declare-fun b!4347200 () Bool)

(assert (=> b!4347200 (= e!2705214 (and tp_is_empty!25029 tp_is_empty!25031 tp!1329621))))

(declare-fun b!4347201 () Bool)

(declare-fun e!2705207 () Bool)

(assert (=> b!4347201 (= e!2705207 e!2705206)))

(declare-fun res!1785308 () Bool)

(assert (=> b!4347201 (=> res!1785308 e!2705206)))

(declare-fun lt!1562109 () ListMap!2123)

(declare-fun lt!1562123 () ListMap!2123)

(assert (=> b!4347201 (= res!1785308 (not (eq!238 lt!1562109 lt!1562123)))))

(declare-fun lt!1562103 () ListMap!2123)

(assert (=> b!4347201 (eq!238 lt!1562103 lt!1562123)))

(declare-fun lt!1562119 () tuple2!48162)

(declare-fun +!567 (ListMap!2123 tuple2!48162) ListMap!2123)

(assert (=> b!4347201 (= lt!1562123 (+!567 lt!1562120 lt!1562119))))

(declare-fun lt!1562102 () ListMap!2123)

(assert (=> b!4347201 (= lt!1562103 (+!567 lt!1562102 lt!1562119))))

(declare-datatypes ((Unit!70743 0))(
  ( (Unit!70744) )
))
(declare-fun lt!1562110 () Unit!70743)

(declare-fun newValue!99 () V!10434)

(declare-fun removeThenAddForSameKeyIsSameAsAdd!7 (ListMap!2123 K!10188 V!10434) Unit!70743)

(assert (=> b!4347201 (= lt!1562110 (removeThenAddForSameKeyIsSameAsAdd!7 lt!1562120 key!3918 newValue!99))))

(declare-fun lt!1562108 () ListMap!2123)

(declare-fun lt!1562112 () ListLongMap!1529)

(declare-fun +!568 (ListLongMap!1529 tuple2!48164) ListLongMap!1529)

(assert (=> b!4347201 (eq!238 (extractMap!507 (toList!2879 (+!568 lt!1562112 lt!1562104))) (+!567 lt!1562108 lt!1562119))))

(declare-fun newBucket!200 () List!48949)

(declare-fun lt!1562113 () Unit!70743)

(declare-datatypes ((Hashable!4840 0))(
  ( (HashableExt!4839 (__x!30543 Int)) )
))
(declare-fun hashF!1247 () Hashable!4840)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!88 (ListLongMap!1529 (_ BitVec 64) List!48949 K!10188 V!10434 Hashable!4840) Unit!70743)

(assert (=> b!4347201 (= lt!1562113 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!88 lt!1562112 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun lt!1562100 () List!48949)

(declare-fun e!2705215 () Bool)

(declare-fun b!4347202 () Bool)

(declare-fun apply!11300 (ListLongMap!1529 (_ BitVec 64)) List!48949)

(assert (=> b!4347202 (= e!2705215 (= (apply!11300 lt!1562112 hash!377) lt!1562100))))

(declare-fun b!4347203 () Bool)

(declare-fun e!2705209 () Bool)

(assert (=> b!4347203 (= e!2705209 e!2705207)))

(declare-fun res!1785307 () Bool)

(assert (=> b!4347203 (=> res!1785307 e!2705207)))

(declare-fun lt!1562114 () Bool)

(assert (=> b!4347203 (= res!1785307 lt!1562114)))

(assert (=> b!4347203 e!2705215))

(declare-fun res!1785306 () Bool)

(assert (=> b!4347203 (=> (not res!1785306) (not e!2705215))))

(assert (=> b!4347203 (= res!1785306 (= lt!1562114 (contains!10973 lt!1562102 key!3918)))))

(assert (=> b!4347203 (= lt!1562114 (contains!10973 lt!1562108 key!3918))))

(declare-fun lt!1562105 () Unit!70743)

(declare-fun lemmaEquivalentThenSameContains!99 (ListMap!2123 ListMap!2123 K!10188) Unit!70743)

(assert (=> b!4347203 (= lt!1562105 (lemmaEquivalentThenSameContains!99 lt!1562108 lt!1562102 key!3918))))

(assert (=> b!4347203 (eq!238 lt!1562108 lt!1562102)))

(declare-fun -!249 (ListMap!2123 K!10188) ListMap!2123)

(assert (=> b!4347203 (= lt!1562102 (-!249 lt!1562120 key!3918))))

(declare-fun lt!1562099 () Unit!70743)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!64 (ListLongMap!1529 (_ BitVec 64) List!48949 K!10188 Hashable!4840) Unit!70743)

(assert (=> b!4347203 (= lt!1562099 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!64 lm!1707 hash!377 lt!1562100 key!3918 hashF!1247))))

(declare-fun lt!1562122 () ListMap!2123)

(assert (=> b!4347203 (= lt!1562122 lt!1562108)))

(assert (=> b!4347203 (= lt!1562108 (extractMap!507 (toList!2879 lt!1562112)))))

(declare-fun lt!1562111 () List!48949)

(assert (=> b!4347203 (= lt!1562100 lt!1562111)))

(assert (=> b!4347203 (= lt!1562112 (+!568 lm!1707 (tuple2!48165 hash!377 lt!1562100)))))

(declare-fun tail!6946 (List!48949) List!48949)

(assert (=> b!4347203 (= lt!1562100 (tail!6946 newBucket!200))))

(assert (=> b!4347203 e!2705205))

(declare-fun res!1785302 () Bool)

(assert (=> b!4347203 (=> (not res!1785302) (not e!2705205))))

(declare-fun lt!1562107 () ListMap!2123)

(assert (=> b!4347203 (= res!1785302 (eq!238 lt!1562107 lt!1562095))))

(assert (=> b!4347203 (= lt!1562095 (+!567 lt!1562122 lt!1562119))))

(declare-fun lt!1562121 () ListMap!2123)

(declare-fun addToMapMapFromBucket!156 (List!48949 ListMap!2123) ListMap!2123)

(assert (=> b!4347203 (= lt!1562122 (addToMapMapFromBucket!156 lt!1562111 lt!1562121))))

(declare-fun lt!1562115 () Unit!70743)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!67 (ListMap!2123 K!10188 V!10434 List!48949) Unit!70743)

(assert (=> b!4347203 (= lt!1562115 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!67 lt!1562121 key!3918 newValue!99 lt!1562111))))

(assert (=> b!4347203 (= lt!1562101 lt!1562107)))

(assert (=> b!4347203 (= lt!1562107 (addToMapMapFromBucket!156 lt!1562111 (+!567 lt!1562121 lt!1562119)))))

(assert (=> b!4347203 (= lt!1562109 lt!1562101)))

(declare-fun lt!1562096 () List!48949)

(assert (=> b!4347203 (= lt!1562101 (addToMapMapFromBucket!156 lt!1562096 lt!1562121))))

(assert (=> b!4347203 (= lt!1562109 (addToMapMapFromBucket!156 newBucket!200 lt!1562121))))

(assert (=> b!4347203 (= lt!1562109 (extractMap!507 (toList!2879 lt!1562117)))))

(assert (=> b!4347203 (= lt!1562121 (extractMap!507 (t!355870 (toList!2879 lm!1707))))))

(declare-fun res!1785300 () Bool)

(assert (=> start!419702 (=> (not res!1785300) (not e!2705208))))

(assert (=> start!419702 (= res!1785300 (forall!9044 (toList!2879 lm!1707) lambda!138584))))

(assert (=> start!419702 e!2705208))

(assert (=> start!419702 e!2705214))

(assert (=> start!419702 true))

(declare-fun inv!64375 (ListLongMap!1529) Bool)

(assert (=> start!419702 (and (inv!64375 lm!1707) e!2705212)))

(assert (=> start!419702 tp_is_empty!25029))

(assert (=> start!419702 tp_is_empty!25031))

(declare-fun b!4347204 () Bool)

(declare-fun res!1785304 () Bool)

(assert (=> b!4347204 (=> (not res!1785304) (not e!2705208))))

(declare-fun hash!1435 (Hashable!4840 K!10188) (_ BitVec 64))

(assert (=> b!4347204 (= res!1785304 (= (hash!1435 hashF!1247 key!3918) hash!377))))

(declare-fun b!4347205 () Bool)

(declare-fun e!2705213 () Bool)

(assert (=> b!4347205 (= e!2705213 e!2705209)))

(declare-fun res!1785296 () Bool)

(assert (=> b!4347205 (=> res!1785296 e!2705209)))

(assert (=> b!4347205 (= res!1785296 (or (not (is-Cons!48826 (toList!2879 lm!1707))) (not (= (_1!27376 (h!54353 (toList!2879 lm!1707))) hash!377))))))

(assert (=> b!4347205 e!2705211))

(declare-fun res!1785305 () Bool)

(assert (=> b!4347205 (=> (not res!1785305) (not e!2705211))))

(assert (=> b!4347205 (= res!1785305 (forall!9044 (toList!2879 lt!1562117) lambda!138584))))

(assert (=> b!4347205 (= lt!1562117 (+!568 lm!1707 lt!1562104))))

(assert (=> b!4347205 (= lt!1562104 (tuple2!48165 hash!377 newBucket!200))))

(declare-fun lt!1562098 () Unit!70743)

(declare-fun addValidProp!102 (ListLongMap!1529 Int (_ BitVec 64) List!48949) Unit!70743)

(assert (=> b!4347205 (= lt!1562098 (addValidProp!102 lm!1707 lambda!138584 hash!377 newBucket!200))))

(assert (=> b!4347205 (forall!9044 (toList!2879 lm!1707) lambda!138584)))

(declare-fun b!4347206 () Bool)

(assert (=> b!4347206 (= e!2705210 (not e!2705213))))

(declare-fun res!1785299 () Bool)

(assert (=> b!4347206 (=> res!1785299 e!2705213)))

(assert (=> b!4347206 (= res!1785299 (not (= newBucket!200 lt!1562096)))))

(assert (=> b!4347206 (= lt!1562096 (Cons!48825 lt!1562119 lt!1562111))))

(declare-fun lt!1562106 () List!48949)

(declare-fun removePairForKey!418 (List!48949 K!10188) List!48949)

(assert (=> b!4347206 (= lt!1562111 (removePairForKey!418 lt!1562106 key!3918))))

(assert (=> b!4347206 (= lt!1562119 (tuple2!48163 key!3918 newValue!99))))

(declare-fun lt!1562097 () Unit!70743)

(declare-fun lt!1562118 () tuple2!48164)

(declare-fun forallContained!1694 (List!48950 Int tuple2!48164) Unit!70743)

(assert (=> b!4347206 (= lt!1562097 (forallContained!1694 (toList!2879 lm!1707) lambda!138584 lt!1562118))))

(declare-fun contains!10975 (List!48950 tuple2!48164) Bool)

(assert (=> b!4347206 (contains!10975 (toList!2879 lm!1707) lt!1562118)))

(assert (=> b!4347206 (= lt!1562118 (tuple2!48165 hash!377 lt!1562106))))

(declare-fun lt!1562116 () Unit!70743)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!295 (List!48950 (_ BitVec 64) List!48949) Unit!70743)

(assert (=> b!4347206 (= lt!1562116 (lemmaGetValueByKeyImpliesContainsTuple!295 (toList!2879 lm!1707) hash!377 lt!1562106))))

(assert (=> b!4347206 (= lt!1562106 (apply!11300 lm!1707 hash!377))))

(declare-fun b!4347207 () Bool)

(declare-fun res!1785301 () Bool)

(assert (=> b!4347207 (=> (not res!1785301) (not e!2705208))))

(declare-fun allKeysSameHash!406 (List!48949 (_ BitVec 64) Hashable!4840) Bool)

(assert (=> b!4347207 (= res!1785301 (allKeysSameHash!406 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4347208 () Bool)

(declare-fun res!1785303 () Bool)

(assert (=> b!4347208 (=> (not res!1785303) (not e!2705208))))

(declare-fun allKeysSameHashInMap!552 (ListLongMap!1529 Hashable!4840) Bool)

(assert (=> b!4347208 (= res!1785303 (allKeysSameHashInMap!552 lm!1707 hashF!1247))))

(declare-fun b!4347209 () Bool)

(declare-fun res!1785297 () Bool)

(assert (=> b!4347209 (=> res!1785297 e!2705213)))

(declare-fun noDuplicateKeys!448 (List!48949) Bool)

(assert (=> b!4347209 (= res!1785297 (not (noDuplicateKeys!448 newBucket!200)))))

(assert (= (and start!419702 res!1785300) b!4347208))

(assert (= (and b!4347208 res!1785303) b!4347204))

(assert (= (and b!4347204 res!1785304) b!4347207))

(assert (= (and b!4347207 res!1785301) b!4347194))

(assert (= (and b!4347194 res!1785310) b!4347196))

(assert (= (and b!4347196 res!1785309) b!4347206))

(assert (= (and b!4347206 (not res!1785299)) b!4347209))

(assert (= (and b!4347209 (not res!1785297)) b!4347205))

(assert (= (and b!4347205 res!1785305) b!4347199))

(assert (= (and b!4347199 res!1785298) b!4347193))

(assert (= (and b!4347205 (not res!1785296)) b!4347203))

(assert (= (and b!4347203 res!1785302) b!4347197))

(assert (= (and b!4347203 res!1785306) b!4347202))

(assert (= (and b!4347203 (not res!1785307)) b!4347201))

(assert (= (and b!4347201 (not res!1785308)) b!4347198))

(assert (= (and start!419702 (is-Cons!48825 newBucket!200)) b!4347200))

(assert (= start!419702 b!4347195))

(declare-fun m!4956179 () Bool)

(assert (=> b!4347209 m!4956179))

(declare-fun m!4956181 () Bool)

(assert (=> b!4347205 m!4956181))

(declare-fun m!4956183 () Bool)

(assert (=> b!4347205 m!4956183))

(declare-fun m!4956185 () Bool)

(assert (=> b!4347205 m!4956185))

(declare-fun m!4956187 () Bool)

(assert (=> b!4347205 m!4956187))

(declare-fun m!4956189 () Bool)

(assert (=> b!4347201 m!4956189))

(declare-fun m!4956191 () Bool)

(assert (=> b!4347201 m!4956191))

(declare-fun m!4956193 () Bool)

(assert (=> b!4347201 m!4956193))

(declare-fun m!4956195 () Bool)

(assert (=> b!4347201 m!4956195))

(declare-fun m!4956197 () Bool)

(assert (=> b!4347201 m!4956197))

(declare-fun m!4956199 () Bool)

(assert (=> b!4347201 m!4956199))

(assert (=> b!4347201 m!4956193))

(declare-fun m!4956201 () Bool)

(assert (=> b!4347201 m!4956201))

(declare-fun m!4956203 () Bool)

(assert (=> b!4347201 m!4956203))

(declare-fun m!4956205 () Bool)

(assert (=> b!4347201 m!4956205))

(declare-fun m!4956207 () Bool)

(assert (=> b!4347201 m!4956207))

(assert (=> b!4347201 m!4956191))

(declare-fun m!4956209 () Bool)

(assert (=> b!4347203 m!4956209))

(declare-fun m!4956211 () Bool)

(assert (=> b!4347203 m!4956211))

(declare-fun m!4956213 () Bool)

(assert (=> b!4347203 m!4956213))

(declare-fun m!4956215 () Bool)

(assert (=> b!4347203 m!4956215))

(declare-fun m!4956217 () Bool)

(assert (=> b!4347203 m!4956217))

(declare-fun m!4956219 () Bool)

(assert (=> b!4347203 m!4956219))

(assert (=> b!4347203 m!4956213))

(declare-fun m!4956221 () Bool)

(assert (=> b!4347203 m!4956221))

(declare-fun m!4956223 () Bool)

(assert (=> b!4347203 m!4956223))

(declare-fun m!4956225 () Bool)

(assert (=> b!4347203 m!4956225))

(declare-fun m!4956227 () Bool)

(assert (=> b!4347203 m!4956227))

(declare-fun m!4956229 () Bool)

(assert (=> b!4347203 m!4956229))

(declare-fun m!4956231 () Bool)

(assert (=> b!4347203 m!4956231))

(declare-fun m!4956233 () Bool)

(assert (=> b!4347203 m!4956233))

(declare-fun m!4956235 () Bool)

(assert (=> b!4347203 m!4956235))

(declare-fun m!4956237 () Bool)

(assert (=> b!4347203 m!4956237))

(declare-fun m!4956239 () Bool)

(assert (=> b!4347203 m!4956239))

(declare-fun m!4956241 () Bool)

(assert (=> b!4347203 m!4956241))

(declare-fun m!4956243 () Bool)

(assert (=> b!4347203 m!4956243))

(declare-fun m!4956245 () Bool)

(assert (=> b!4347203 m!4956245))

(declare-fun m!4956247 () Bool)

(assert (=> b!4347202 m!4956247))

(declare-fun m!4956249 () Bool)

(assert (=> b!4347207 m!4956249))

(declare-fun m!4956251 () Bool)

(assert (=> b!4347208 m!4956251))

(assert (=> start!419702 m!4956187))

(declare-fun m!4956253 () Bool)

(assert (=> start!419702 m!4956253))

(declare-fun m!4956255 () Bool)

(assert (=> b!4347196 m!4956255))

(declare-fun m!4956257 () Bool)

(assert (=> b!4347206 m!4956257))

(declare-fun m!4956259 () Bool)

(assert (=> b!4347206 m!4956259))

(declare-fun m!4956261 () Bool)

(assert (=> b!4347206 m!4956261))

(declare-fun m!4956263 () Bool)

(assert (=> b!4347206 m!4956263))

(declare-fun m!4956265 () Bool)

(assert (=> b!4347206 m!4956265))

(declare-fun m!4956267 () Bool)

(assert (=> b!4347194 m!4956267))

(declare-fun m!4956269 () Bool)

(assert (=> b!4347194 m!4956269))

(assert (=> b!4347198 m!4956187))

(declare-fun m!4956271 () Bool)

(assert (=> b!4347204 m!4956271))

(assert (=> b!4347199 m!4956181))

(declare-fun m!4956273 () Bool)

(assert (=> b!4347197 m!4956273))

(push 1)

(assert (not b!4347197))

(assert (not b!4347196))

(assert (not start!419702))

(assert tp_is_empty!25031)

(assert (not b!4347194))

(assert (not b!4347209))

(assert (not b!4347200))

(assert (not b!4347201))

(assert tp_is_empty!25029)

(assert (not b!4347199))

(assert (not b!4347204))

(assert (not b!4347206))

(assert (not b!4347195))

(assert (not b!4347208))

(assert (not b!4347205))

(assert (not b!4347198))

(assert (not b!4347203))

(assert (not b!4347207))

(assert (not b!4347202))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

