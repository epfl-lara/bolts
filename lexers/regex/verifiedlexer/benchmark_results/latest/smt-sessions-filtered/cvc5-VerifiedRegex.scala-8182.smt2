; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!422126 () Bool)

(assert start!422126)

(declare-fun b!4358935 () Bool)

(declare-fun e!2712697 () Bool)

(declare-fun e!2712690 () Bool)

(assert (=> b!4358935 (= e!2712697 e!2712690)))

(declare-fun res!1791870 () Bool)

(assert (=> b!4358935 (=> res!1791870 e!2712690)))

(declare-datatypes ((K!10313 0))(
  ( (K!10314 (val!16521 Int)) )
))
(declare-datatypes ((V!10559 0))(
  ( (V!10560 (val!16522 Int)) )
))
(declare-datatypes ((tuple2!48362 0))(
  ( (tuple2!48363 (_1!27475 K!10313) (_2!27475 V!10559)) )
))
(declare-datatypes ((List!49079 0))(
  ( (Nil!48955) (Cons!48955 (h!54512 tuple2!48362) (t!355999 List!49079)) )
))
(declare-datatypes ((ListMap!2223 0))(
  ( (ListMap!2224 (toList!2979 List!49079)) )
))
(declare-fun lt!1571462 () ListMap!2223)

(declare-fun lt!1571463 () ListMap!2223)

(declare-fun eq!268 (ListMap!2223 ListMap!2223) Bool)

(assert (=> b!4358935 (= res!1791870 (not (eq!268 lt!1571462 lt!1571463)))))

(declare-fun lt!1571459 () ListMap!2223)

(declare-datatypes ((tuple2!48364 0))(
  ( (tuple2!48365 (_1!27476 (_ BitVec 64)) (_2!27476 List!49079)) )
))
(declare-datatypes ((List!49080 0))(
  ( (Nil!48956) (Cons!48956 (h!54513 tuple2!48364) (t!356000 List!49080)) )
))
(declare-datatypes ((ListLongMap!1629 0))(
  ( (ListLongMap!1630 (toList!2980 List!49080)) )
))
(declare-fun lm!1707 () ListLongMap!1629)

(declare-fun lt!1571464 () tuple2!48362)

(declare-fun addToMapMapFromBucket!194 (List!49079 ListMap!2223) ListMap!2223)

(declare-fun +!653 (ListMap!2223 tuple2!48362) ListMap!2223)

(assert (=> b!4358935 (eq!268 (addToMapMapFromBucket!194 (_2!27476 (h!54513 (toList!2980 lm!1707))) lt!1571459) (+!653 lt!1571462 lt!1571464))))

(declare-datatypes ((Unit!72039 0))(
  ( (Unit!72040) )
))
(declare-fun lt!1571465 () Unit!72039)

(declare-fun key!3918 () K!10313)

(declare-fun newValue!99 () V!10559)

(declare-fun lt!1571474 () ListMap!2223)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!77 (ListMap!2223 K!10313 V!10559 List!49079) Unit!72039)

(assert (=> b!4358935 (= lt!1571465 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!77 lt!1571474 key!3918 newValue!99 (_2!27476 (h!54513 (toList!2980 lm!1707)))))))

(assert (=> b!4358935 (= lt!1571463 lt!1571462)))

(assert (=> b!4358935 (= lt!1571462 (addToMapMapFromBucket!194 (_2!27476 (h!54513 (toList!2980 lm!1707))) lt!1571474))))

(declare-fun e!2712698 () Bool)

(assert (=> b!4358935 e!2712698))

(declare-fun res!1791869 () Bool)

(assert (=> b!4358935 (=> (not res!1791869) (not e!2712698))))

(declare-fun lt!1571458 () ListMap!2223)

(assert (=> b!4358935 (= res!1791869 (eq!268 lt!1571458 lt!1571459))))

(assert (=> b!4358935 (= lt!1571459 (+!653 lt!1571474 lt!1571464))))

(declare-fun lt!1571467 () ListLongMap!1629)

(declare-fun lt!1571466 () tuple2!48364)

(declare-fun extractMap!557 (List!49080) ListMap!2223)

(declare-fun +!654 (ListLongMap!1629 tuple2!48364) ListLongMap!1629)

(assert (=> b!4358935 (= lt!1571458 (extractMap!557 (toList!2980 (+!654 lt!1571467 lt!1571466))))))

(declare-fun newBucket!200 () List!49079)

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun lt!1571460 () Unit!72039)

(declare-datatypes ((Hashable!4890 0))(
  ( (HashableExt!4889 (__x!30593 Int)) )
))
(declare-fun hashF!1247 () Hashable!4890)

(declare-fun lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!102 (ListLongMap!1629 (_ BitVec 64) List!49079 K!10313 V!10559 Hashable!4890) Unit!72039)

(assert (=> b!4358935 (= lt!1571460 (lemmaChangeOneBucketToUpdateAnExistingKeyUpdateThisKeyInGenMap!102 lt!1571467 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun contains!11174 (ListMap!2223 K!10313) Bool)

(assert (=> b!4358935 (contains!11174 lt!1571474 key!3918)))

(assert (=> b!4358935 (= lt!1571474 (extractMap!557 (toList!2980 lt!1571467)))))

(declare-fun tail!7011 (ListLongMap!1629) ListLongMap!1629)

(assert (=> b!4358935 (= lt!1571467 (tail!7011 lm!1707))))

(declare-fun lt!1571457 () ListMap!2223)

(assert (=> b!4358935 (contains!11174 lt!1571457 key!3918)))

(declare-fun lt!1571461 () Unit!72039)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!41 (List!49079 K!10313 V!10559 ListMap!2223) Unit!72039)

(assert (=> b!4358935 (= lt!1571461 (lemmaAddToMapContainsAndNotInListThenInAcc!41 (_2!27476 (h!54513 (toList!2980 lm!1707))) key!3918 newValue!99 lt!1571457))))

(assert (=> b!4358935 (= lt!1571457 (extractMap!557 (t!356000 (toList!2980 lm!1707))))))

(declare-fun e!2712689 () Bool)

(assert (=> b!4358935 e!2712689))

(declare-fun res!1791873 () Bool)

(assert (=> b!4358935 (=> (not res!1791873) (not e!2712689))))

(declare-fun containsKey!711 (List!49079 K!10313) Bool)

(declare-fun apply!11350 (ListLongMap!1629 (_ BitVec 64)) List!49079)

(assert (=> b!4358935 (= res!1791873 (not (containsKey!711 (apply!11350 lm!1707 (_1!27476 (h!54513 (toList!2980 lm!1707)))) key!3918)))))

(declare-fun lt!1571468 () Unit!72039)

(declare-fun lemmaNotSameHashThenCannotContainKey!45 (ListLongMap!1629 K!10313 (_ BitVec 64) Hashable!4890) Unit!72039)

(assert (=> b!4358935 (= lt!1571468 (lemmaNotSameHashThenCannotContainKey!45 lm!1707 key!3918 (_1!27476 (h!54513 (toList!2980 lm!1707))) hashF!1247))))

(declare-fun tp!1330247 () Bool)

(declare-fun tp_is_empty!25231 () Bool)

(declare-fun b!4358936 () Bool)

(declare-fun tp_is_empty!25229 () Bool)

(declare-fun e!2712693 () Bool)

(assert (=> b!4358936 (= e!2712693 (and tp_is_empty!25229 tp_is_empty!25231 tp!1330247))))

(declare-fun b!4358937 () Bool)

(declare-fun e!2712696 () Bool)

(assert (=> b!4358937 (= e!2712696 e!2712697)))

(declare-fun res!1791872 () Bool)

(assert (=> b!4358937 (=> res!1791872 e!2712697)))

(assert (=> b!4358937 (= res!1791872 (or (and (is-Cons!48956 (toList!2980 lm!1707)) (= (_1!27476 (h!54513 (toList!2980 lm!1707))) hash!377)) (not (is-Cons!48956 (toList!2980 lm!1707))) (= (_1!27476 (h!54513 (toList!2980 lm!1707))) hash!377)))))

(declare-fun e!2712695 () Bool)

(assert (=> b!4358937 e!2712695))

(declare-fun res!1791868 () Bool)

(assert (=> b!4358937 (=> (not res!1791868) (not e!2712695))))

(declare-fun lt!1571473 () ListLongMap!1629)

(declare-fun lambda!141034 () Int)

(declare-fun forall!9137 (List!49080 Int) Bool)

(assert (=> b!4358937 (= res!1791868 (forall!9137 (toList!2980 lt!1571473) lambda!141034))))

(assert (=> b!4358937 (= lt!1571473 (+!654 lm!1707 lt!1571466))))

(assert (=> b!4358937 (= lt!1571466 (tuple2!48365 hash!377 newBucket!200))))

(declare-fun lt!1571475 () Unit!72039)

(declare-fun addValidProp!152 (ListLongMap!1629 Int (_ BitVec 64) List!49079) Unit!72039)

(assert (=> b!4358937 (= lt!1571475 (addValidProp!152 lm!1707 lambda!141034 hash!377 newBucket!200))))

(assert (=> b!4358937 (forall!9137 (toList!2980 lm!1707) lambda!141034)))

(declare-fun b!4358938 () Bool)

(declare-fun res!1791864 () Bool)

(declare-fun e!2712691 () Bool)

(assert (=> b!4358938 (=> (not res!1791864) (not e!2712691))))

(declare-fun allKeysSameHashInMap!602 (ListLongMap!1629 Hashable!4890) Bool)

(assert (=> b!4358938 (= res!1791864 (allKeysSameHashInMap!602 lm!1707 hashF!1247))))

(declare-fun b!4358939 () Bool)

(declare-fun head!9063 (ListLongMap!1629) tuple2!48364)

(assert (=> b!4358939 (= e!2712698 (not (= (head!9063 lm!1707) lt!1571466)))))

(declare-fun b!4358940 () Bool)

(declare-fun res!1791867 () Bool)

(assert (=> b!4358940 (=> (not res!1791867) (not e!2712691))))

(declare-fun hash!1588 (Hashable!4890 K!10313) (_ BitVec 64))

(assert (=> b!4358940 (= res!1791867 (= (hash!1588 hashF!1247 key!3918) hash!377))))

(declare-fun b!4358941 () Bool)

(declare-fun res!1791866 () Bool)

(declare-fun e!2712692 () Bool)

(assert (=> b!4358941 (=> (not res!1791866) (not e!2712692))))

(declare-fun contains!11175 (ListLongMap!1629 (_ BitVec 64)) Bool)

(assert (=> b!4358941 (= res!1791866 (contains!11175 lm!1707 hash!377))))

(declare-fun b!4358942 () Bool)

(declare-fun res!1791874 () Bool)

(assert (=> b!4358942 (=> (not res!1791874) (not e!2712691))))

(declare-fun allKeysSameHash!456 (List!49079 (_ BitVec 64) Hashable!4890) Bool)

(assert (=> b!4358942 (= res!1791874 (allKeysSameHash!456 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4358943 () Bool)

(assert (=> b!4358943 (= e!2712695 (forall!9137 (toList!2980 lt!1571473) lambda!141034))))

(declare-fun b!4358944 () Bool)

(assert (=> b!4358944 (= e!2712689 (not (containsKey!711 (_2!27476 (h!54513 (toList!2980 lm!1707))) key!3918)))))

(declare-fun b!4358945 () Bool)

(declare-fun e!2712694 () Bool)

(declare-fun tp!1330248 () Bool)

(assert (=> b!4358945 (= e!2712694 tp!1330248)))

(declare-fun b!4358946 () Bool)

(assert (=> b!4358946 (= e!2712690 (forall!9137 (toList!2980 lm!1707) lambda!141034))))

(declare-fun b!4358947 () Bool)

(assert (=> b!4358947 (= e!2712691 e!2712692)))

(declare-fun res!1791865 () Bool)

(assert (=> b!4358947 (=> (not res!1791865) (not e!2712692))))

(assert (=> b!4358947 (= res!1791865 (contains!11174 lt!1571463 key!3918))))

(assert (=> b!4358947 (= lt!1571463 (extractMap!557 (toList!2980 lm!1707)))))

(declare-fun res!1791871 () Bool)

(assert (=> start!422126 (=> (not res!1791871) (not e!2712691))))

(assert (=> start!422126 (= res!1791871 (forall!9137 (toList!2980 lm!1707) lambda!141034))))

(assert (=> start!422126 e!2712691))

(assert (=> start!422126 e!2712693))

(assert (=> start!422126 true))

(declare-fun inv!64500 (ListLongMap!1629) Bool)

(assert (=> start!422126 (and (inv!64500 lm!1707) e!2712694)))

(assert (=> start!422126 tp_is_empty!25229))

(assert (=> start!422126 tp_is_empty!25231))

(declare-fun b!4358948 () Bool)

(declare-fun res!1791876 () Bool)

(assert (=> b!4358948 (=> res!1791876 e!2712696)))

(declare-fun noDuplicateKeys!498 (List!49079) Bool)

(assert (=> b!4358948 (= res!1791876 (not (noDuplicateKeys!498 newBucket!200)))))

(declare-fun b!4358949 () Bool)

(assert (=> b!4358949 (= e!2712692 (not e!2712696))))

(declare-fun res!1791875 () Bool)

(assert (=> b!4358949 (=> res!1791875 e!2712696)))

(declare-fun lt!1571471 () List!49079)

(declare-fun removePairForKey!468 (List!49079 K!10313) List!49079)

(assert (=> b!4358949 (= res!1791875 (not (= newBucket!200 (Cons!48955 lt!1571464 (removePairForKey!468 lt!1571471 key!3918)))))))

(assert (=> b!4358949 (= lt!1571464 (tuple2!48363 key!3918 newValue!99))))

(declare-fun lt!1571469 () tuple2!48364)

(declare-fun lt!1571470 () Unit!72039)

(declare-fun forallContained!1778 (List!49080 Int tuple2!48364) Unit!72039)

(assert (=> b!4358949 (= lt!1571470 (forallContained!1778 (toList!2980 lm!1707) lambda!141034 lt!1571469))))

(declare-fun contains!11176 (List!49080 tuple2!48364) Bool)

(assert (=> b!4358949 (contains!11176 (toList!2980 lm!1707) lt!1571469)))

(assert (=> b!4358949 (= lt!1571469 (tuple2!48365 hash!377 lt!1571471))))

(declare-fun lt!1571472 () Unit!72039)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!345 (List!49080 (_ BitVec 64) List!49079) Unit!72039)

(assert (=> b!4358949 (= lt!1571472 (lemmaGetValueByKeyImpliesContainsTuple!345 (toList!2980 lm!1707) hash!377 lt!1571471))))

(assert (=> b!4358949 (= lt!1571471 (apply!11350 lm!1707 hash!377))))

(assert (= (and start!422126 res!1791871) b!4358938))

(assert (= (and b!4358938 res!1791864) b!4358940))

(assert (= (and b!4358940 res!1791867) b!4358942))

(assert (= (and b!4358942 res!1791874) b!4358947))

(assert (= (and b!4358947 res!1791865) b!4358941))

(assert (= (and b!4358941 res!1791866) b!4358949))

(assert (= (and b!4358949 (not res!1791875)) b!4358948))

(assert (= (and b!4358948 (not res!1791876)) b!4358937))

(assert (= (and b!4358937 res!1791868) b!4358943))

(assert (= (and b!4358937 (not res!1791872)) b!4358935))

(assert (= (and b!4358935 res!1791873) b!4358944))

(assert (= (and b!4358935 res!1791869) b!4358939))

(assert (= (and b!4358935 (not res!1791870)) b!4358946))

(assert (= (and start!422126 (is-Cons!48955 newBucket!200)) b!4358936))

(assert (= start!422126 b!4358945))

(declare-fun m!4975223 () Bool)

(assert (=> b!4358948 m!4975223))

(declare-fun m!4975225 () Bool)

(assert (=> b!4358935 m!4975225))

(declare-fun m!4975227 () Bool)

(assert (=> b!4358935 m!4975227))

(declare-fun m!4975229 () Bool)

(assert (=> b!4358935 m!4975229))

(declare-fun m!4975231 () Bool)

(assert (=> b!4358935 m!4975231))

(assert (=> b!4358935 m!4975227))

(declare-fun m!4975233 () Bool)

(assert (=> b!4358935 m!4975233))

(declare-fun m!4975235 () Bool)

(assert (=> b!4358935 m!4975235))

(declare-fun m!4975237 () Bool)

(assert (=> b!4358935 m!4975237))

(declare-fun m!4975239 () Bool)

(assert (=> b!4358935 m!4975239))

(declare-fun m!4975241 () Bool)

(assert (=> b!4358935 m!4975241))

(declare-fun m!4975243 () Bool)

(assert (=> b!4358935 m!4975243))

(declare-fun m!4975245 () Bool)

(assert (=> b!4358935 m!4975245))

(declare-fun m!4975247 () Bool)

(assert (=> b!4358935 m!4975247))

(assert (=> b!4358935 m!4975233))

(declare-fun m!4975249 () Bool)

(assert (=> b!4358935 m!4975249))

(declare-fun m!4975251 () Bool)

(assert (=> b!4358935 m!4975251))

(declare-fun m!4975253 () Bool)

(assert (=> b!4358935 m!4975253))

(declare-fun m!4975255 () Bool)

(assert (=> b!4358935 m!4975255))

(declare-fun m!4975257 () Bool)

(assert (=> b!4358935 m!4975257))

(assert (=> b!4358935 m!4975257))

(declare-fun m!4975259 () Bool)

(assert (=> b!4358935 m!4975259))

(declare-fun m!4975261 () Bool)

(assert (=> b!4358935 m!4975261))

(declare-fun m!4975263 () Bool)

(assert (=> b!4358935 m!4975263))

(declare-fun m!4975265 () Bool)

(assert (=> start!422126 m!4975265))

(declare-fun m!4975267 () Bool)

(assert (=> start!422126 m!4975267))

(declare-fun m!4975269 () Bool)

(assert (=> b!4358947 m!4975269))

(declare-fun m!4975271 () Bool)

(assert (=> b!4358947 m!4975271))

(declare-fun m!4975273 () Bool)

(assert (=> b!4358943 m!4975273))

(declare-fun m!4975275 () Bool)

(assert (=> b!4358939 m!4975275))

(declare-fun m!4975277 () Bool)

(assert (=> b!4358938 m!4975277))

(declare-fun m!4975279 () Bool)

(assert (=> b!4358940 m!4975279))

(assert (=> b!4358937 m!4975273))

(declare-fun m!4975281 () Bool)

(assert (=> b!4358937 m!4975281))

(declare-fun m!4975283 () Bool)

(assert (=> b!4358937 m!4975283))

(assert (=> b!4358937 m!4975265))

(declare-fun m!4975285 () Bool)

(assert (=> b!4358944 m!4975285))

(declare-fun m!4975287 () Bool)

(assert (=> b!4358941 m!4975287))

(declare-fun m!4975289 () Bool)

(assert (=> b!4358942 m!4975289))

(declare-fun m!4975291 () Bool)

(assert (=> b!4358949 m!4975291))

(declare-fun m!4975293 () Bool)

(assert (=> b!4358949 m!4975293))

(declare-fun m!4975295 () Bool)

(assert (=> b!4358949 m!4975295))

(declare-fun m!4975297 () Bool)

(assert (=> b!4358949 m!4975297))

(declare-fun m!4975299 () Bool)

(assert (=> b!4358949 m!4975299))

(assert (=> b!4358946 m!4975265))

(push 1)

(assert (not b!4358940))

(assert (not b!4358946))

(assert tp_is_empty!25231)

(assert (not b!4358945))

(assert tp_is_empty!25229)

(assert (not b!4358938))

(assert (not b!4358944))

(assert (not b!4358947))

(assert (not b!4358939))

(assert (not b!4358937))

(assert (not b!4358942))

(assert (not start!422126))

(assert (not b!4358943))

(assert (not b!4358948))

(assert (not b!4358935))

(assert (not b!4358941))

(assert (not b!4358936))

(assert (not b!4358949))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

