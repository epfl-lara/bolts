; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!465192 () Bool)

(assert start!465192)

(declare-fun b!4633027 () Bool)

(declare-fun e!2890162 () Bool)

(declare-fun e!2890166 () Bool)

(assert (=> b!4633027 (= e!2890162 e!2890166)))

(declare-fun res!1944219 () Bool)

(assert (=> b!4633027 (=> res!1944219 e!2890166)))

(declare-datatypes ((K!12995 0))(
  ( (K!12996 (val!18667 Int)) )
))
(declare-datatypes ((V!13241 0))(
  ( (V!13242 (val!18668 Int)) )
))
(declare-datatypes ((tuple2!52598 0))(
  ( (tuple2!52599 (_1!29593 K!12995) (_2!29593 V!13241)) )
))
(declare-datatypes ((List!51750 0))(
  ( (Nil!51626) (Cons!51626 (h!57704 tuple2!52598) (t!358810 List!51750)) )
))
(declare-datatypes ((ListMap!4345 0))(
  ( (ListMap!4346 (toList!5041 List!51750)) )
))
(declare-fun lt!1794217 () ListMap!4345)

(declare-fun lt!1794215 () ListMap!4345)

(declare-fun lt!1794226 () tuple2!52598)

(declare-fun eq!853 (ListMap!4345 ListMap!4345) Bool)

(declare-fun +!1904 (ListMap!4345 tuple2!52598) ListMap!4345)

(assert (=> b!4633027 (= res!1944219 (not (eq!853 lt!1794215 (+!1904 lt!1794217 lt!1794226))))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun lt!1794247 () List!51750)

(declare-datatypes ((tuple2!52600 0))(
  ( (tuple2!52601 (_1!29594 (_ BitVec 64)) (_2!29594 List!51750)) )
))
(declare-datatypes ((List!51751 0))(
  ( (Nil!51627) (Cons!51627 (h!57705 tuple2!52600) (t!358811 List!51751)) )
))
(declare-fun extractMap!1594 (List!51751) ListMap!4345)

(assert (=> b!4633027 (= lt!1794217 (extractMap!1594 (Cons!51627 (tuple2!52601 hash!414 lt!1794247) Nil!51627)))))

(declare-fun newBucket!224 () List!51750)

(assert (=> b!4633027 (= lt!1794215 (extractMap!1594 (Cons!51627 (tuple2!52601 hash!414 newBucket!224) Nil!51627)))))

(declare-fun b!4633028 () Bool)

(declare-fun e!2890169 () Bool)

(declare-fun e!2890165 () Bool)

(assert (=> b!4633028 (= e!2890169 (not e!2890165))))

(declare-fun res!1944226 () Bool)

(assert (=> b!4633028 (=> res!1944226 e!2890165)))

(declare-fun oldBucket!40 () List!51750)

(declare-fun key!4968 () K!12995)

(get-info :version)

(assert (=> b!4633028 (= res!1944226 (or (and ((_ is Cons!51626) oldBucket!40) (= (_1!29593 (h!57704 oldBucket!40)) key!4968)) (not ((_ is Cons!51626) oldBucket!40)) (= (_1!29593 (h!57704 oldBucket!40)) key!4968)))))

(declare-fun e!2890171 () Bool)

(assert (=> b!4633028 e!2890171))

(declare-fun res!1944223 () Bool)

(assert (=> b!4633028 (=> (not res!1944223) (not e!2890171))))

(declare-fun lt!1794233 () ListMap!4345)

(declare-fun lt!1794240 () ListMap!4345)

(declare-fun addToMapMapFromBucket!999 (List!51750 ListMap!4345) ListMap!4345)

(assert (=> b!4633028 (= res!1944223 (= lt!1794233 (addToMapMapFromBucket!999 oldBucket!40 lt!1794240)))))

(assert (=> b!4633028 (= lt!1794240 (extractMap!1594 Nil!51627))))

(assert (=> b!4633028 true))

(declare-fun b!4633029 () Bool)

(declare-fun e!2890170 () Bool)

(declare-fun lt!1794214 () List!51751)

(declare-fun lambda!194166 () Int)

(declare-fun forall!10878 (List!51751 Int) Bool)

(assert (=> b!4633029 (= e!2890170 (forall!10878 lt!1794214 lambda!194166))))

(declare-fun lt!1794223 () ListMap!4345)

(assert (=> b!4633029 (eq!853 lt!1794223 (+!1904 lt!1794217 (h!57704 oldBucket!40)))))

(declare-fun lt!1794228 () ListMap!4345)

(declare-datatypes ((Unit!113755 0))(
  ( (Unit!113756) )
))
(declare-fun lt!1794218 () Unit!113755)

(declare-fun lemmaAddToEqMapsPreservesEq!50 (ListMap!4345 ListMap!4345 K!12995 V!13241) Unit!113755)

(assert (=> b!4633029 (= lt!1794218 (lemmaAddToEqMapsPreservesEq!50 lt!1794228 lt!1794217 (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40))))))

(declare-fun tp_is_empty!29445 () Bool)

(declare-fun tp!1342410 () Bool)

(declare-fun e!2890164 () Bool)

(declare-fun b!4633031 () Bool)

(declare-fun tp_is_empty!29447 () Bool)

(assert (=> b!4633031 (= e!2890164 (and tp_is_empty!29445 tp_is_empty!29447 tp!1342410))))

(declare-fun b!4633032 () Bool)

(declare-fun e!2890163 () Bool)

(assert (=> b!4633032 (= e!2890163 e!2890170)))

(declare-fun res!1944214 () Bool)

(assert (=> b!4633032 (=> res!1944214 e!2890170)))

(declare-fun lt!1794238 () ListMap!4345)

(declare-fun lt!1794222 () ListMap!4345)

(assert (=> b!4633032 (= res!1944214 (not (eq!853 lt!1794238 lt!1794222)))))

(declare-fun lt!1794224 () ListMap!4345)

(assert (=> b!4633032 (eq!853 lt!1794224 lt!1794238)))

(declare-fun -!578 (ListMap!4345 K!12995) ListMap!4345)

(assert (=> b!4633032 (= lt!1794238 (-!578 lt!1794233 key!4968))))

(declare-fun lt!1794231 () Unit!113755)

(declare-fun lt!1794232 () ListMap!4345)

(declare-fun lemmaRemovePreservesEq!34 (ListMap!4345 ListMap!4345 K!12995) Unit!113755)

(assert (=> b!4633032 (= lt!1794231 (lemmaRemovePreservesEq!34 lt!1794232 lt!1794233 key!4968))))

(declare-fun b!4633033 () Bool)

(declare-fun res!1944217 () Bool)

(declare-fun e!2890168 () Bool)

(assert (=> b!4633033 (=> (not res!1944217) (not e!2890168))))

(declare-fun noDuplicateKeys!1538 (List!51750) Bool)

(assert (=> b!4633033 (= res!1944217 (noDuplicateKeys!1538 newBucket!224))))

(declare-fun b!4633034 () Bool)

(declare-fun e!2890167 () Bool)

(assert (=> b!4633034 (= e!2890167 e!2890169)))

(declare-fun res!1944225 () Bool)

(assert (=> b!4633034 (=> (not res!1944225) (not e!2890169))))

(declare-fun lt!1794225 () (_ BitVec 64))

(assert (=> b!4633034 (= res!1944225 (= lt!1794225 hash!414))))

(declare-datatypes ((Hashable!5935 0))(
  ( (HashableExt!5934 (__x!31638 Int)) )
))
(declare-fun hashF!1389 () Hashable!5935)

(declare-fun hash!3586 (Hashable!5935 K!12995) (_ BitVec 64))

(assert (=> b!4633034 (= lt!1794225 (hash!3586 hashF!1389 key!4968))))

(declare-fun b!4633035 () Bool)

(declare-fun res!1944228 () Bool)

(assert (=> b!4633035 (=> res!1944228 e!2890170)))

(assert (=> b!4633035 (= res!1944228 (not (= lt!1794226 (h!57704 oldBucket!40))))))

(declare-fun b!4633036 () Bool)

(declare-fun res!1944229 () Bool)

(declare-fun e!2890174 () Bool)

(assert (=> b!4633036 (=> res!1944229 e!2890174)))

(declare-fun removePairForKey!1161 (List!51750 K!12995) List!51750)

(assert (=> b!4633036 (= res!1944229 (not (= (removePairForKey!1161 (t!358810 oldBucket!40) key!4968) lt!1794247)))))

(declare-fun b!4633037 () Bool)

(declare-fun res!1944213 () Bool)

(assert (=> b!4633037 (=> (not res!1944213) (not e!2890169))))

(declare-fun allKeysSameHash!1392 (List!51750 (_ BitVec 64) Hashable!5935) Bool)

(assert (=> b!4633037 (= res!1944213 (allKeysSameHash!1392 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4633038 () Bool)

(declare-fun res!1944224 () Bool)

(assert (=> b!4633038 (=> res!1944224 e!2890170)))

(assert (=> b!4633038 (= res!1944224 (not (eq!853 lt!1794215 (+!1904 lt!1794217 (h!57704 oldBucket!40)))))))

(declare-fun b!4633039 () Bool)

(assert (=> b!4633039 (= e!2890171 (= lt!1794240 (ListMap!4346 Nil!51626)))))

(declare-fun b!4633040 () Bool)

(assert (=> b!4633040 (= e!2890168 e!2890167)))

(declare-fun res!1944230 () Bool)

(assert (=> b!4633040 (=> (not res!1944230) (not e!2890167))))

(declare-fun contains!14729 (ListMap!4345 K!12995) Bool)

(assert (=> b!4633040 (= res!1944230 (contains!14729 lt!1794233 key!4968))))

(declare-fun lt!1794220 () List!51751)

(assert (=> b!4633040 (= lt!1794233 (extractMap!1594 lt!1794220))))

(assert (=> b!4633040 (= lt!1794220 (Cons!51627 (tuple2!52601 hash!414 oldBucket!40) Nil!51627))))

(declare-fun b!4633041 () Bool)

(declare-fun res!1944227 () Bool)

(assert (=> b!4633041 (=> (not res!1944227) (not e!2890168))))

(assert (=> b!4633041 (= res!1944227 (allKeysSameHash!1392 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4633042 () Bool)

(declare-fun res!1944216 () Bool)

(assert (=> b!4633042 (=> (not res!1944216) (not e!2890168))))

(assert (=> b!4633042 (= res!1944216 (= (removePairForKey!1161 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4633043 () Bool)

(declare-fun e!2890173 () Bool)

(declare-fun tp!1342411 () Bool)

(assert (=> b!4633043 (= e!2890173 (and tp_is_empty!29445 tp_is_empty!29447 tp!1342411))))

(declare-fun b!4633044 () Bool)

(assert (=> b!4633044 (= e!2890174 e!2890162)))

(declare-fun res!1944220 () Bool)

(assert (=> b!4633044 (=> res!1944220 e!2890162)))

(declare-fun lt!1794245 () List!51750)

(assert (=> b!4633044 (= res!1944220 (not (eq!853 lt!1794233 (+!1904 (extractMap!1594 (Cons!51627 (tuple2!52601 hash!414 lt!1794245) Nil!51627)) (h!57704 oldBucket!40)))))))

(assert (=> b!4633044 (eq!853 (addToMapMapFromBucket!999 (Cons!51626 lt!1794226 lt!1794247) (ListMap!4346 Nil!51626)) (+!1904 (addToMapMapFromBucket!999 lt!1794247 (ListMap!4346 Nil!51626)) lt!1794226))))

(declare-fun lt!1794235 () Unit!113755)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!104 (tuple2!52598 List!51750 ListMap!4345) Unit!113755)

(assert (=> b!4633044 (= lt!1794235 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!104 lt!1794226 lt!1794247 (ListMap!4346 Nil!51626)))))

(declare-fun head!9672 (List!51750) tuple2!52598)

(assert (=> b!4633044 (= lt!1794226 (head!9672 newBucket!224))))

(declare-fun lt!1794230 () tuple2!52598)

(assert (=> b!4633044 (eq!853 (addToMapMapFromBucket!999 (Cons!51626 lt!1794230 lt!1794245) (ListMap!4346 Nil!51626)) (+!1904 (addToMapMapFromBucket!999 lt!1794245 (ListMap!4346 Nil!51626)) lt!1794230))))

(declare-fun lt!1794221 () Unit!113755)

(assert (=> b!4633044 (= lt!1794221 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!104 lt!1794230 lt!1794245 (ListMap!4346 Nil!51626)))))

(assert (=> b!4633044 (= lt!1794230 (head!9672 oldBucket!40))))

(declare-fun lt!1794244 () ListMap!4345)

(assert (=> b!4633044 (contains!14729 lt!1794244 key!4968)))

(assert (=> b!4633044 (= lt!1794244 (extractMap!1594 lt!1794214))))

(declare-fun lt!1794229 () Unit!113755)

(declare-datatypes ((ListLongMap!3631 0))(
  ( (ListLongMap!3632 (toList!5042 List!51751)) )
))
(declare-fun lemmaListContainsThenExtractedMapContains!356 (ListLongMap!3631 K!12995 Hashable!5935) Unit!113755)

(assert (=> b!4633044 (= lt!1794229 (lemmaListContainsThenExtractedMapContains!356 (ListLongMap!3632 lt!1794214) key!4968 hashF!1389))))

(assert (=> b!4633044 (= lt!1794214 (Cons!51627 (tuple2!52601 hash!414 (t!358810 oldBucket!40)) Nil!51627))))

(declare-fun b!4633030 () Bool)

(declare-fun e!2890172 () Bool)

(assert (=> b!4633030 (= e!2890165 e!2890172)))

(declare-fun res!1944215 () Bool)

(assert (=> b!4633030 (=> res!1944215 e!2890172)))

(declare-fun containsKey!2534 (List!51750 K!12995) Bool)

(assert (=> b!4633030 (= res!1944215 (not (containsKey!2534 (t!358810 oldBucket!40) key!4968)))))

(assert (=> b!4633030 (containsKey!2534 oldBucket!40 key!4968)))

(declare-fun lt!1794234 () Unit!113755)

(declare-fun lemmaGetPairDefinedThenContainsKey!84 (List!51750 K!12995 Hashable!5935) Unit!113755)

(assert (=> b!4633030 (= lt!1794234 (lemmaGetPairDefinedThenContainsKey!84 oldBucket!40 key!4968 hashF!1389))))

(declare-fun lt!1794243 () List!51750)

(declare-datatypes ((Option!11676 0))(
  ( (None!11675) (Some!11675 (v!45857 tuple2!52598)) )
))
(declare-fun isDefined!8941 (Option!11676) Bool)

(declare-fun getPair!330 (List!51750 K!12995) Option!11676)

(assert (=> b!4633030 (isDefined!8941 (getPair!330 lt!1794243 key!4968))))

(declare-fun lt!1794241 () Unit!113755)

(declare-fun lt!1794236 () tuple2!52600)

(declare-fun forallContained!3110 (List!51751 Int tuple2!52600) Unit!113755)

(assert (=> b!4633030 (= lt!1794241 (forallContained!3110 lt!1794220 lambda!194166 lt!1794236))))

(declare-fun contains!14730 (List!51751 tuple2!52600) Bool)

(assert (=> b!4633030 (contains!14730 lt!1794220 lt!1794236)))

(assert (=> b!4633030 (= lt!1794236 (tuple2!52601 lt!1794225 lt!1794243))))

(declare-fun lt!1794237 () ListLongMap!3631)

(declare-fun lt!1794219 () Unit!113755)

(declare-fun lemmaGetValueImpliesTupleContained!135 (ListLongMap!3631 (_ BitVec 64) List!51750) Unit!113755)

(assert (=> b!4633030 (= lt!1794219 (lemmaGetValueImpliesTupleContained!135 lt!1794237 lt!1794225 lt!1794243))))

(declare-fun apply!12203 (ListLongMap!3631 (_ BitVec 64)) List!51750)

(assert (=> b!4633030 (= lt!1794243 (apply!12203 lt!1794237 lt!1794225))))

(declare-fun contains!14731 (ListLongMap!3631 (_ BitVec 64)) Bool)

(assert (=> b!4633030 (contains!14731 lt!1794237 lt!1794225)))

(declare-fun lt!1794246 () Unit!113755)

(declare-fun lemmaInGenMapThenLongMapContainsHash!536 (ListLongMap!3631 K!12995 Hashable!5935) Unit!113755)

(assert (=> b!4633030 (= lt!1794246 (lemmaInGenMapThenLongMapContainsHash!536 lt!1794237 key!4968 hashF!1389))))

(declare-fun lt!1794227 () Unit!113755)

(declare-fun lemmaInGenMapThenGetPairDefined!126 (ListLongMap!3631 K!12995 Hashable!5935) Unit!113755)

(assert (=> b!4633030 (= lt!1794227 (lemmaInGenMapThenGetPairDefined!126 lt!1794237 key!4968 hashF!1389))))

(assert (=> b!4633030 (= lt!1794237 (ListLongMap!3632 lt!1794220))))

(declare-fun res!1944218 () Bool)

(assert (=> start!465192 (=> (not res!1944218) (not e!2890168))))

(assert (=> start!465192 (= res!1944218 (noDuplicateKeys!1538 oldBucket!40))))

(assert (=> start!465192 e!2890168))

(assert (=> start!465192 true))

(assert (=> start!465192 e!2890173))

(assert (=> start!465192 tp_is_empty!29445))

(assert (=> start!465192 e!2890164))

(declare-fun b!4633045 () Bool)

(assert (=> b!4633045 (= e!2890172 e!2890174)))

(declare-fun res!1944222 () Bool)

(assert (=> b!4633045 (=> res!1944222 e!2890174)))

(assert (=> b!4633045 (= res!1944222 (not (= (removePairForKey!1161 lt!1794245 key!4968) lt!1794247)))))

(declare-fun tail!8173 (List!51750) List!51750)

(assert (=> b!4633045 (= lt!1794247 (tail!8173 newBucket!224))))

(assert (=> b!4633045 (= lt!1794245 (tail!8173 oldBucket!40))))

(declare-fun b!4633046 () Bool)

(assert (=> b!4633046 (= e!2890166 e!2890163)))

(declare-fun res!1944221 () Bool)

(assert (=> b!4633046 (=> res!1944221 e!2890163)))

(assert (=> b!4633046 (= res!1944221 (not (= lt!1794224 lt!1794222)))))

(assert (=> b!4633046 (= lt!1794222 (+!1904 lt!1794228 (h!57704 oldBucket!40)))))

(assert (=> b!4633046 (= lt!1794224 (-!578 lt!1794232 key!4968))))

(assert (=> b!4633046 (= lt!1794232 (+!1904 lt!1794244 (h!57704 oldBucket!40)))))

(declare-fun lt!1794216 () ListMap!4345)

(assert (=> b!4633046 (= lt!1794216 lt!1794223)))

(assert (=> b!4633046 (= lt!1794223 (+!1904 lt!1794228 (h!57704 oldBucket!40)))))

(assert (=> b!4633046 (= lt!1794216 (-!578 (+!1904 lt!1794244 (h!57704 oldBucket!40)) key!4968))))

(declare-fun lt!1794239 () Unit!113755)

(declare-fun addRemoveCommutativeForDiffKeys!33 (ListMap!4345 K!12995 V!13241 K!12995) Unit!113755)

(assert (=> b!4633046 (= lt!1794239 (addRemoveCommutativeForDiffKeys!33 lt!1794244 (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40)) key!4968))))

(assert (=> b!4633046 (eq!853 lt!1794217 lt!1794228)))

(assert (=> b!4633046 (= lt!1794228 (-!578 lt!1794244 key!4968))))

(declare-fun lt!1794242 () Unit!113755)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!140 ((_ BitVec 64) List!51750 List!51750 K!12995 Hashable!5935) Unit!113755)

(assert (=> b!4633046 (= lt!1794242 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!140 hash!414 (t!358810 oldBucket!40) lt!1794247 key!4968 hashF!1389))))

(assert (= (and start!465192 res!1944218) b!4633033))

(assert (= (and b!4633033 res!1944217) b!4633042))

(assert (= (and b!4633042 res!1944216) b!4633041))

(assert (= (and b!4633041 res!1944227) b!4633040))

(assert (= (and b!4633040 res!1944230) b!4633034))

(assert (= (and b!4633034 res!1944225) b!4633037))

(assert (= (and b!4633037 res!1944213) b!4633028))

(assert (= (and b!4633028 res!1944223) b!4633039))

(assert (= (and b!4633028 (not res!1944226)) b!4633030))

(assert (= (and b!4633030 (not res!1944215)) b!4633045))

(assert (= (and b!4633045 (not res!1944222)) b!4633036))

(assert (= (and b!4633036 (not res!1944229)) b!4633044))

(assert (= (and b!4633044 (not res!1944220)) b!4633027))

(assert (= (and b!4633027 (not res!1944219)) b!4633046))

(assert (= (and b!4633046 (not res!1944221)) b!4633032))

(assert (= (and b!4633032 (not res!1944214)) b!4633035))

(assert (= (and b!4633035 (not res!1944228)) b!4633038))

(assert (= (and b!4633038 (not res!1944224)) b!4633029))

(assert (= (and start!465192 ((_ is Cons!51626) oldBucket!40)) b!4633043))

(assert (= (and start!465192 ((_ is Cons!51626) newBucket!224)) b!4633031))

(declare-fun m!5485245 () Bool)

(assert (=> b!4633041 m!5485245))

(declare-fun m!5485247 () Bool)

(assert (=> b!4633033 m!5485247))

(declare-fun m!5485249 () Bool)

(assert (=> b!4633037 m!5485249))

(declare-fun m!5485251 () Bool)

(assert (=> b!4633028 m!5485251))

(declare-fun m!5485253 () Bool)

(assert (=> b!4633028 m!5485253))

(declare-fun m!5485255 () Bool)

(assert (=> b!4633045 m!5485255))

(declare-fun m!5485257 () Bool)

(assert (=> b!4633045 m!5485257))

(declare-fun m!5485259 () Bool)

(assert (=> b!4633045 m!5485259))

(declare-fun m!5485261 () Bool)

(assert (=> b!4633036 m!5485261))

(declare-fun m!5485263 () Bool)

(assert (=> b!4633044 m!5485263))

(declare-fun m!5485265 () Bool)

(assert (=> b!4633044 m!5485265))

(declare-fun m!5485267 () Bool)

(assert (=> b!4633044 m!5485267))

(assert (=> b!4633044 m!5485265))

(declare-fun m!5485269 () Bool)

(assert (=> b!4633044 m!5485269))

(declare-fun m!5485271 () Bool)

(assert (=> b!4633044 m!5485271))

(declare-fun m!5485273 () Bool)

(assert (=> b!4633044 m!5485273))

(declare-fun m!5485275 () Bool)

(assert (=> b!4633044 m!5485275))

(declare-fun m!5485277 () Bool)

(assert (=> b!4633044 m!5485277))

(declare-fun m!5485279 () Bool)

(assert (=> b!4633044 m!5485279))

(declare-fun m!5485281 () Bool)

(assert (=> b!4633044 m!5485281))

(assert (=> b!4633044 m!5485267))

(declare-fun m!5485283 () Bool)

(assert (=> b!4633044 m!5485283))

(declare-fun m!5485285 () Bool)

(assert (=> b!4633044 m!5485285))

(assert (=> b!4633044 m!5485269))

(declare-fun m!5485287 () Bool)

(assert (=> b!4633044 m!5485287))

(declare-fun m!5485289 () Bool)

(assert (=> b!4633044 m!5485289))

(declare-fun m!5485291 () Bool)

(assert (=> b!4633044 m!5485291))

(declare-fun m!5485293 () Bool)

(assert (=> b!4633044 m!5485293))

(declare-fun m!5485295 () Bool)

(assert (=> b!4633044 m!5485295))

(declare-fun m!5485297 () Bool)

(assert (=> b!4633044 m!5485297))

(assert (=> b!4633044 m!5485271))

(assert (=> b!4633044 m!5485287))

(assert (=> b!4633044 m!5485275))

(assert (=> b!4633044 m!5485293))

(assert (=> b!4633044 m!5485281))

(declare-fun m!5485299 () Bool)

(assert (=> start!465192 m!5485299))

(declare-fun m!5485301 () Bool)

(assert (=> b!4633027 m!5485301))

(assert (=> b!4633027 m!5485301))

(declare-fun m!5485303 () Bool)

(assert (=> b!4633027 m!5485303))

(declare-fun m!5485305 () Bool)

(assert (=> b!4633027 m!5485305))

(declare-fun m!5485307 () Bool)

(assert (=> b!4633027 m!5485307))

(declare-fun m!5485309 () Bool)

(assert (=> b!4633046 m!5485309))

(declare-fun m!5485311 () Bool)

(assert (=> b!4633046 m!5485311))

(declare-fun m!5485313 () Bool)

(assert (=> b!4633046 m!5485313))

(declare-fun m!5485315 () Bool)

(assert (=> b!4633046 m!5485315))

(declare-fun m!5485317 () Bool)

(assert (=> b!4633046 m!5485317))

(declare-fun m!5485319 () Bool)

(assert (=> b!4633046 m!5485319))

(assert (=> b!4633046 m!5485315))

(declare-fun m!5485321 () Bool)

(assert (=> b!4633046 m!5485321))

(declare-fun m!5485323 () Bool)

(assert (=> b!4633046 m!5485323))

(declare-fun m!5485325 () Bool)

(assert (=> b!4633040 m!5485325))

(declare-fun m!5485327 () Bool)

(assert (=> b!4633040 m!5485327))

(declare-fun m!5485329 () Bool)

(assert (=> b!4633034 m!5485329))

(declare-fun m!5485331 () Bool)

(assert (=> b!4633038 m!5485331))

(assert (=> b!4633038 m!5485331))

(declare-fun m!5485333 () Bool)

(assert (=> b!4633038 m!5485333))

(declare-fun m!5485335 () Bool)

(assert (=> b!4633029 m!5485335))

(assert (=> b!4633029 m!5485331))

(assert (=> b!4633029 m!5485331))

(declare-fun m!5485337 () Bool)

(assert (=> b!4633029 m!5485337))

(declare-fun m!5485339 () Bool)

(assert (=> b!4633029 m!5485339))

(declare-fun m!5485341 () Bool)

(assert (=> b!4633042 m!5485341))

(declare-fun m!5485343 () Bool)

(assert (=> b!4633030 m!5485343))

(declare-fun m!5485345 () Bool)

(assert (=> b!4633030 m!5485345))

(declare-fun m!5485347 () Bool)

(assert (=> b!4633030 m!5485347))

(declare-fun m!5485349 () Bool)

(assert (=> b!4633030 m!5485349))

(declare-fun m!5485351 () Bool)

(assert (=> b!4633030 m!5485351))

(declare-fun m!5485353 () Bool)

(assert (=> b!4633030 m!5485353))

(declare-fun m!5485355 () Bool)

(assert (=> b!4633030 m!5485355))

(declare-fun m!5485357 () Bool)

(assert (=> b!4633030 m!5485357))

(declare-fun m!5485359 () Bool)

(assert (=> b!4633030 m!5485359))

(assert (=> b!4633030 m!5485351))

(declare-fun m!5485361 () Bool)

(assert (=> b!4633030 m!5485361))

(declare-fun m!5485363 () Bool)

(assert (=> b!4633030 m!5485363))

(declare-fun m!5485365 () Bool)

(assert (=> b!4633030 m!5485365))

(declare-fun m!5485367 () Bool)

(assert (=> b!4633032 m!5485367))

(declare-fun m!5485369 () Bool)

(assert (=> b!4633032 m!5485369))

(declare-fun m!5485371 () Bool)

(assert (=> b!4633032 m!5485371))

(declare-fun m!5485373 () Bool)

(assert (=> b!4633032 m!5485373))

(check-sat (not b!4633042) (not start!465192) (not b!4633044) (not b!4633046) (not b!4633036) (not b!4633029) (not b!4633031) (not b!4633028) (not b!4633038) tp_is_empty!29445 (not b!4633043) (not b!4633040) (not b!4633027) (not b!4633030) (not b!4633032) (not b!4633041) (not b!4633037) tp_is_empty!29447 (not b!4633034) (not b!4633033) (not b!4633045))
(check-sat)
(get-model)

(declare-fun d!1460323 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8880 (List!51750) (InoxSet tuple2!52598))

(assert (=> d!1460323 (= (eq!853 lt!1794238 lt!1794222) (= (content!8880 (toList!5041 lt!1794238)) (content!8880 (toList!5041 lt!1794222))))))

(declare-fun bs!1028840 () Bool)

(assert (= bs!1028840 d!1460323))

(declare-fun m!5485375 () Bool)

(assert (=> bs!1028840 m!5485375))

(declare-fun m!5485377 () Bool)

(assert (=> bs!1028840 m!5485377))

(assert (=> b!4633032 d!1460323))

(declare-fun d!1460325 () Bool)

(assert (=> d!1460325 (= (eq!853 lt!1794224 lt!1794238) (= (content!8880 (toList!5041 lt!1794224)) (content!8880 (toList!5041 lt!1794238))))))

(declare-fun bs!1028841 () Bool)

(assert (= bs!1028841 d!1460325))

(declare-fun m!5485379 () Bool)

(assert (=> bs!1028841 m!5485379))

(assert (=> bs!1028841 m!5485375))

(assert (=> b!4633032 d!1460325))

(declare-fun d!1460327 () Bool)

(declare-fun e!2890177 () Bool)

(assert (=> d!1460327 e!2890177))

(declare-fun res!1944233 () Bool)

(assert (=> d!1460327 (=> (not res!1944233) (not e!2890177))))

(declare-fun lt!1794250 () ListMap!4345)

(assert (=> d!1460327 (= res!1944233 (not (contains!14729 lt!1794250 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!281 (List!51750 K!12995) List!51750)

(assert (=> d!1460327 (= lt!1794250 (ListMap!4346 (removePresrvNoDuplicatedKeys!281 (toList!5041 lt!1794233) key!4968)))))

(assert (=> d!1460327 (= (-!578 lt!1794233 key!4968) lt!1794250)))

(declare-fun b!4633049 () Bool)

(declare-datatypes ((List!51753 0))(
  ( (Nil!51629) (Cons!51629 (h!57709 K!12995) (t!358815 List!51753)) )
))
(declare-fun content!8881 (List!51753) (InoxSet K!12995))

(declare-fun keys!18214 (ListMap!4345) List!51753)

(assert (=> b!4633049 (= e!2890177 (= ((_ map and) (content!8881 (keys!18214 lt!1794233)) ((_ map not) (store ((as const (Array K!12995 Bool)) false) key!4968 true))) (content!8881 (keys!18214 lt!1794250))))))

(assert (= (and d!1460327 res!1944233) b!4633049))

(declare-fun m!5485381 () Bool)

(assert (=> d!1460327 m!5485381))

(declare-fun m!5485383 () Bool)

(assert (=> d!1460327 m!5485383))

(declare-fun m!5485385 () Bool)

(assert (=> b!4633049 m!5485385))

(declare-fun m!5485387 () Bool)

(assert (=> b!4633049 m!5485387))

(declare-fun m!5485389 () Bool)

(assert (=> b!4633049 m!5485389))

(declare-fun m!5485391 () Bool)

(assert (=> b!4633049 m!5485391))

(assert (=> b!4633049 m!5485389))

(assert (=> b!4633049 m!5485385))

(declare-fun m!5485393 () Bool)

(assert (=> b!4633049 m!5485393))

(assert (=> b!4633032 d!1460327))

(declare-fun d!1460329 () Bool)

(assert (=> d!1460329 (eq!853 (-!578 lt!1794232 key!4968) (-!578 lt!1794233 key!4968))))

(declare-fun lt!1794253 () Unit!113755)

(declare-fun choose!31570 (ListMap!4345 ListMap!4345 K!12995) Unit!113755)

(assert (=> d!1460329 (= lt!1794253 (choose!31570 lt!1794232 lt!1794233 key!4968))))

(assert (=> d!1460329 (eq!853 lt!1794232 lt!1794233)))

(assert (=> d!1460329 (= (lemmaRemovePreservesEq!34 lt!1794232 lt!1794233 key!4968) lt!1794253)))

(declare-fun bs!1028842 () Bool)

(assert (= bs!1028842 d!1460329))

(assert (=> bs!1028842 m!5485311))

(assert (=> bs!1028842 m!5485371))

(declare-fun m!5485395 () Bool)

(assert (=> bs!1028842 m!5485395))

(declare-fun m!5485397 () Bool)

(assert (=> bs!1028842 m!5485397))

(assert (=> bs!1028842 m!5485371))

(assert (=> bs!1028842 m!5485311))

(declare-fun m!5485399 () Bool)

(assert (=> bs!1028842 m!5485399))

(assert (=> b!4633032 d!1460329))

(declare-fun b!4633071 () Bool)

(declare-fun e!2890190 () List!51750)

(declare-fun e!2890191 () List!51750)

(assert (=> b!4633071 (= e!2890190 e!2890191)))

(declare-fun c!792995 () Bool)

(assert (=> b!4633071 (= c!792995 ((_ is Cons!51626) oldBucket!40))))

(declare-fun b!4633072 () Bool)

(assert (=> b!4633072 (= e!2890191 (Cons!51626 (h!57704 oldBucket!40) (removePairForKey!1161 (t!358810 oldBucket!40) key!4968)))))

(declare-fun d!1460333 () Bool)

(declare-fun lt!1794256 () List!51750)

(assert (=> d!1460333 (not (containsKey!2534 lt!1794256 key!4968))))

(assert (=> d!1460333 (= lt!1794256 e!2890190)))

(declare-fun c!792996 () Bool)

(assert (=> d!1460333 (= c!792996 (and ((_ is Cons!51626) oldBucket!40) (= (_1!29593 (h!57704 oldBucket!40)) key!4968)))))

(assert (=> d!1460333 (noDuplicateKeys!1538 oldBucket!40)))

(assert (=> d!1460333 (= (removePairForKey!1161 oldBucket!40 key!4968) lt!1794256)))

(declare-fun b!4633070 () Bool)

(assert (=> b!4633070 (= e!2890190 (t!358810 oldBucket!40))))

(declare-fun b!4633073 () Bool)

(assert (=> b!4633073 (= e!2890191 Nil!51626)))

(assert (= (and d!1460333 c!792996) b!4633070))

(assert (= (and d!1460333 (not c!792996)) b!4633071))

(assert (= (and b!4633071 c!792995) b!4633072))

(assert (= (and b!4633071 (not c!792995)) b!4633073))

(assert (=> b!4633072 m!5485261))

(declare-fun m!5485411 () Bool)

(assert (=> d!1460333 m!5485411))

(assert (=> d!1460333 m!5485299))

(assert (=> b!4633042 d!1460333))

(declare-fun d!1460341 () Bool)

(assert (=> d!1460341 true))

(assert (=> d!1460341 true))

(declare-fun lambda!194172 () Int)

(declare-fun forall!10880 (List!51750 Int) Bool)

(assert (=> d!1460341 (= (allKeysSameHash!1392 oldBucket!40 hash!414 hashF!1389) (forall!10880 oldBucket!40 lambda!194172))))

(declare-fun bs!1028844 () Bool)

(assert (= bs!1028844 d!1460341))

(declare-fun m!5485413 () Bool)

(assert (=> bs!1028844 m!5485413))

(assert (=> b!4633041 d!1460341))

(declare-fun d!1460343 () Bool)

(assert (=> d!1460343 (= (-!578 (+!1904 lt!1794244 (tuple2!52599 (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40)))) key!4968) (+!1904 (-!578 lt!1794244 key!4968) (tuple2!52599 (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40)))))))

(declare-fun lt!1794286 () Unit!113755)

(declare-fun choose!31572 (ListMap!4345 K!12995 V!13241 K!12995) Unit!113755)

(assert (=> d!1460343 (= lt!1794286 (choose!31572 lt!1794244 (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40)) key!4968))))

(assert (=> d!1460343 (not (= (_1!29593 (h!57704 oldBucket!40)) key!4968))))

(assert (=> d!1460343 (= (addRemoveCommutativeForDiffKeys!33 lt!1794244 (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40)) key!4968) lt!1794286)))

(declare-fun bs!1028849 () Bool)

(assert (= bs!1028849 d!1460343))

(declare-fun m!5485447 () Bool)

(assert (=> bs!1028849 m!5485447))

(declare-fun m!5485449 () Bool)

(assert (=> bs!1028849 m!5485449))

(declare-fun m!5485451 () Bool)

(assert (=> bs!1028849 m!5485451))

(assert (=> bs!1028849 m!5485447))

(assert (=> bs!1028849 m!5485309))

(assert (=> bs!1028849 m!5485309))

(declare-fun m!5485453 () Bool)

(assert (=> bs!1028849 m!5485453))

(assert (=> b!4633046 d!1460343))

(declare-fun d!1460353 () Bool)

(declare-fun e!2890215 () Bool)

(assert (=> d!1460353 e!2890215))

(declare-fun res!1944255 () Bool)

(assert (=> d!1460353 (=> (not res!1944255) (not e!2890215))))

(declare-fun lt!1794296 () ListMap!4345)

(assert (=> d!1460353 (= res!1944255 (contains!14729 lt!1794296 (_1!29593 (h!57704 oldBucket!40))))))

(declare-fun lt!1794295 () List!51750)

(assert (=> d!1460353 (= lt!1794296 (ListMap!4346 lt!1794295))))

(declare-fun lt!1794298 () Unit!113755)

(declare-fun lt!1794297 () Unit!113755)

(assert (=> d!1460353 (= lt!1794298 lt!1794297)))

(declare-datatypes ((Option!11678 0))(
  ( (None!11677) (Some!11677 (v!45863 V!13241)) )
))
(declare-fun getValueByKey!1506 (List!51750 K!12995) Option!11678)

(assert (=> d!1460353 (= (getValueByKey!1506 lt!1794295 (_1!29593 (h!57704 oldBucket!40))) (Some!11677 (_2!29593 (h!57704 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!876 (List!51750 K!12995 V!13241) Unit!113755)

(assert (=> d!1460353 (= lt!1794297 (lemmaContainsTupThenGetReturnValue!876 lt!1794295 (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!384 (List!51750 K!12995 V!13241) List!51750)

(assert (=> d!1460353 (= lt!1794295 (insertNoDuplicatedKeys!384 (toList!5041 lt!1794244) (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40))))))

(assert (=> d!1460353 (= (+!1904 lt!1794244 (h!57704 oldBucket!40)) lt!1794296)))

(declare-fun b!4633115 () Bool)

(declare-fun res!1944256 () Bool)

(assert (=> b!4633115 (=> (not res!1944256) (not e!2890215))))

(assert (=> b!4633115 (= res!1944256 (= (getValueByKey!1506 (toList!5041 lt!1794296) (_1!29593 (h!57704 oldBucket!40))) (Some!11677 (_2!29593 (h!57704 oldBucket!40)))))))

(declare-fun b!4633116 () Bool)

(declare-fun contains!14734 (List!51750 tuple2!52598) Bool)

(assert (=> b!4633116 (= e!2890215 (contains!14734 (toList!5041 lt!1794296) (h!57704 oldBucket!40)))))

(assert (= (and d!1460353 res!1944255) b!4633115))

(assert (= (and b!4633115 res!1944256) b!4633116))

(declare-fun m!5485455 () Bool)

(assert (=> d!1460353 m!5485455))

(declare-fun m!5485457 () Bool)

(assert (=> d!1460353 m!5485457))

(declare-fun m!5485459 () Bool)

(assert (=> d!1460353 m!5485459))

(declare-fun m!5485461 () Bool)

(assert (=> d!1460353 m!5485461))

(declare-fun m!5485463 () Bool)

(assert (=> b!4633115 m!5485463))

(declare-fun m!5485465 () Bool)

(assert (=> b!4633116 m!5485465))

(assert (=> b!4633046 d!1460353))

(declare-fun d!1460355 () Bool)

(declare-fun e!2890216 () Bool)

(assert (=> d!1460355 e!2890216))

(declare-fun res!1944257 () Bool)

(assert (=> d!1460355 (=> (not res!1944257) (not e!2890216))))

(declare-fun lt!1794299 () ListMap!4345)

(assert (=> d!1460355 (= res!1944257 (not (contains!14729 lt!1794299 key!4968)))))

(assert (=> d!1460355 (= lt!1794299 (ListMap!4346 (removePresrvNoDuplicatedKeys!281 (toList!5041 lt!1794244) key!4968)))))

(assert (=> d!1460355 (= (-!578 lt!1794244 key!4968) lt!1794299)))

(declare-fun b!4633117 () Bool)

(assert (=> b!4633117 (= e!2890216 (= ((_ map and) (content!8881 (keys!18214 lt!1794244)) ((_ map not) (store ((as const (Array K!12995 Bool)) false) key!4968 true))) (content!8881 (keys!18214 lt!1794299))))))

(assert (= (and d!1460355 res!1944257) b!4633117))

(declare-fun m!5485467 () Bool)

(assert (=> d!1460355 m!5485467))

(declare-fun m!5485469 () Bool)

(assert (=> d!1460355 m!5485469))

(declare-fun m!5485471 () Bool)

(assert (=> b!4633117 m!5485471))

(declare-fun m!5485473 () Bool)

(assert (=> b!4633117 m!5485473))

(declare-fun m!5485475 () Bool)

(assert (=> b!4633117 m!5485475))

(declare-fun m!5485477 () Bool)

(assert (=> b!4633117 m!5485477))

(assert (=> b!4633117 m!5485475))

(assert (=> b!4633117 m!5485471))

(assert (=> b!4633117 m!5485393))

(assert (=> b!4633046 d!1460355))

(declare-fun d!1460357 () Bool)

(declare-fun e!2890217 () Bool)

(assert (=> d!1460357 e!2890217))

(declare-fun res!1944258 () Bool)

(assert (=> d!1460357 (=> (not res!1944258) (not e!2890217))))

(declare-fun lt!1794301 () ListMap!4345)

(assert (=> d!1460357 (= res!1944258 (contains!14729 lt!1794301 (_1!29593 (h!57704 oldBucket!40))))))

(declare-fun lt!1794300 () List!51750)

(assert (=> d!1460357 (= lt!1794301 (ListMap!4346 lt!1794300))))

(declare-fun lt!1794303 () Unit!113755)

(declare-fun lt!1794302 () Unit!113755)

(assert (=> d!1460357 (= lt!1794303 lt!1794302)))

(assert (=> d!1460357 (= (getValueByKey!1506 lt!1794300 (_1!29593 (h!57704 oldBucket!40))) (Some!11677 (_2!29593 (h!57704 oldBucket!40))))))

(assert (=> d!1460357 (= lt!1794302 (lemmaContainsTupThenGetReturnValue!876 lt!1794300 (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40))))))

(assert (=> d!1460357 (= lt!1794300 (insertNoDuplicatedKeys!384 (toList!5041 lt!1794228) (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40))))))

(assert (=> d!1460357 (= (+!1904 lt!1794228 (h!57704 oldBucket!40)) lt!1794301)))

(declare-fun b!4633118 () Bool)

(declare-fun res!1944259 () Bool)

(assert (=> b!4633118 (=> (not res!1944259) (not e!2890217))))

(assert (=> b!4633118 (= res!1944259 (= (getValueByKey!1506 (toList!5041 lt!1794301) (_1!29593 (h!57704 oldBucket!40))) (Some!11677 (_2!29593 (h!57704 oldBucket!40)))))))

(declare-fun b!4633119 () Bool)

(assert (=> b!4633119 (= e!2890217 (contains!14734 (toList!5041 lt!1794301) (h!57704 oldBucket!40)))))

(assert (= (and d!1460357 res!1944258) b!4633118))

(assert (= (and b!4633118 res!1944259) b!4633119))

(declare-fun m!5485479 () Bool)

(assert (=> d!1460357 m!5485479))

(declare-fun m!5485481 () Bool)

(assert (=> d!1460357 m!5485481))

(declare-fun m!5485483 () Bool)

(assert (=> d!1460357 m!5485483))

(declare-fun m!5485485 () Bool)

(assert (=> d!1460357 m!5485485))

(declare-fun m!5485487 () Bool)

(assert (=> b!4633118 m!5485487))

(declare-fun m!5485489 () Bool)

(assert (=> b!4633119 m!5485489))

(assert (=> b!4633046 d!1460357))

(declare-fun d!1460359 () Bool)

(assert (=> d!1460359 (= (eq!853 lt!1794217 lt!1794228) (= (content!8880 (toList!5041 lt!1794217)) (content!8880 (toList!5041 lt!1794228))))))

(declare-fun bs!1028850 () Bool)

(assert (= bs!1028850 d!1460359))

(declare-fun m!5485491 () Bool)

(assert (=> bs!1028850 m!5485491))

(declare-fun m!5485493 () Bool)

(assert (=> bs!1028850 m!5485493))

(assert (=> b!4633046 d!1460359))

(declare-fun d!1460361 () Bool)

(assert (=> d!1460361 (eq!853 (extractMap!1594 (Cons!51627 (tuple2!52601 hash!414 lt!1794247) Nil!51627)) (-!578 (extractMap!1594 (Cons!51627 (tuple2!52601 hash!414 (t!358810 oldBucket!40)) Nil!51627)) key!4968))))

(declare-fun lt!1794306 () Unit!113755)

(declare-fun choose!31573 ((_ BitVec 64) List!51750 List!51750 K!12995 Hashable!5935) Unit!113755)

(assert (=> d!1460361 (= lt!1794306 (choose!31573 hash!414 (t!358810 oldBucket!40) lt!1794247 key!4968 hashF!1389))))

(assert (=> d!1460361 (noDuplicateKeys!1538 (t!358810 oldBucket!40))))

(assert (=> d!1460361 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!140 hash!414 (t!358810 oldBucket!40) lt!1794247 key!4968 hashF!1389) lt!1794306)))

(declare-fun bs!1028851 () Bool)

(assert (= bs!1028851 d!1460361))

(declare-fun m!5485495 () Bool)

(assert (=> bs!1028851 m!5485495))

(declare-fun m!5485497 () Bool)

(assert (=> bs!1028851 m!5485497))

(assert (=> bs!1028851 m!5485305))

(assert (=> bs!1028851 m!5485305))

(assert (=> bs!1028851 m!5485497))

(declare-fun m!5485499 () Bool)

(assert (=> bs!1028851 m!5485499))

(declare-fun m!5485501 () Bool)

(assert (=> bs!1028851 m!5485501))

(declare-fun m!5485503 () Bool)

(assert (=> bs!1028851 m!5485503))

(assert (=> bs!1028851 m!5485495))

(assert (=> b!4633046 d!1460361))

(declare-fun d!1460363 () Bool)

(declare-fun e!2890218 () Bool)

(assert (=> d!1460363 e!2890218))

(declare-fun res!1944260 () Bool)

(assert (=> d!1460363 (=> (not res!1944260) (not e!2890218))))

(declare-fun lt!1794307 () ListMap!4345)

(assert (=> d!1460363 (= res!1944260 (not (contains!14729 lt!1794307 key!4968)))))

(assert (=> d!1460363 (= lt!1794307 (ListMap!4346 (removePresrvNoDuplicatedKeys!281 (toList!5041 lt!1794232) key!4968)))))

(assert (=> d!1460363 (= (-!578 lt!1794232 key!4968) lt!1794307)))

(declare-fun b!4633120 () Bool)

(assert (=> b!4633120 (= e!2890218 (= ((_ map and) (content!8881 (keys!18214 lt!1794232)) ((_ map not) (store ((as const (Array K!12995 Bool)) false) key!4968 true))) (content!8881 (keys!18214 lt!1794307))))))

(assert (= (and d!1460363 res!1944260) b!4633120))

(declare-fun m!5485505 () Bool)

(assert (=> d!1460363 m!5485505))

(declare-fun m!5485507 () Bool)

(assert (=> d!1460363 m!5485507))

(declare-fun m!5485509 () Bool)

(assert (=> b!4633120 m!5485509))

(declare-fun m!5485511 () Bool)

(assert (=> b!4633120 m!5485511))

(declare-fun m!5485513 () Bool)

(assert (=> b!4633120 m!5485513))

(declare-fun m!5485515 () Bool)

(assert (=> b!4633120 m!5485515))

(assert (=> b!4633120 m!5485513))

(assert (=> b!4633120 m!5485509))

(assert (=> b!4633120 m!5485393))

(assert (=> b!4633046 d!1460363))

(declare-fun d!1460365 () Bool)

(declare-fun e!2890219 () Bool)

(assert (=> d!1460365 e!2890219))

(declare-fun res!1944261 () Bool)

(assert (=> d!1460365 (=> (not res!1944261) (not e!2890219))))

(declare-fun lt!1794308 () ListMap!4345)

(assert (=> d!1460365 (= res!1944261 (not (contains!14729 lt!1794308 key!4968)))))

(assert (=> d!1460365 (= lt!1794308 (ListMap!4346 (removePresrvNoDuplicatedKeys!281 (toList!5041 (+!1904 lt!1794244 (h!57704 oldBucket!40))) key!4968)))))

(assert (=> d!1460365 (= (-!578 (+!1904 lt!1794244 (h!57704 oldBucket!40)) key!4968) lt!1794308)))

(declare-fun b!4633121 () Bool)

(assert (=> b!4633121 (= e!2890219 (= ((_ map and) (content!8881 (keys!18214 (+!1904 lt!1794244 (h!57704 oldBucket!40)))) ((_ map not) (store ((as const (Array K!12995 Bool)) false) key!4968 true))) (content!8881 (keys!18214 lt!1794308))))))

(assert (= (and d!1460365 res!1944261) b!4633121))

(declare-fun m!5485517 () Bool)

(assert (=> d!1460365 m!5485517))

(declare-fun m!5485519 () Bool)

(assert (=> d!1460365 m!5485519))

(declare-fun m!5485521 () Bool)

(assert (=> b!4633121 m!5485521))

(declare-fun m!5485523 () Bool)

(assert (=> b!4633121 m!5485523))

(declare-fun m!5485525 () Bool)

(assert (=> b!4633121 m!5485525))

(declare-fun m!5485527 () Bool)

(assert (=> b!4633121 m!5485527))

(assert (=> b!4633121 m!5485525))

(assert (=> b!4633121 m!5485315))

(assert (=> b!4633121 m!5485521))

(assert (=> b!4633121 m!5485393))

(assert (=> b!4633046 d!1460365))

(declare-fun b!4633123 () Bool)

(declare-fun e!2890220 () List!51750)

(declare-fun e!2890221 () List!51750)

(assert (=> b!4633123 (= e!2890220 e!2890221)))

(declare-fun c!793009 () Bool)

(assert (=> b!4633123 (= c!793009 ((_ is Cons!51626) lt!1794245))))

(declare-fun b!4633124 () Bool)

(assert (=> b!4633124 (= e!2890221 (Cons!51626 (h!57704 lt!1794245) (removePairForKey!1161 (t!358810 lt!1794245) key!4968)))))

(declare-fun d!1460367 () Bool)

(declare-fun lt!1794309 () List!51750)

(assert (=> d!1460367 (not (containsKey!2534 lt!1794309 key!4968))))

(assert (=> d!1460367 (= lt!1794309 e!2890220)))

(declare-fun c!793010 () Bool)

(assert (=> d!1460367 (= c!793010 (and ((_ is Cons!51626) lt!1794245) (= (_1!29593 (h!57704 lt!1794245)) key!4968)))))

(assert (=> d!1460367 (noDuplicateKeys!1538 lt!1794245)))

(assert (=> d!1460367 (= (removePairForKey!1161 lt!1794245 key!4968) lt!1794309)))

(declare-fun b!4633122 () Bool)

(assert (=> b!4633122 (= e!2890220 (t!358810 lt!1794245))))

(declare-fun b!4633125 () Bool)

(assert (=> b!4633125 (= e!2890221 Nil!51626)))

(assert (= (and d!1460367 c!793010) b!4633122))

(assert (= (and d!1460367 (not c!793010)) b!4633123))

(assert (= (and b!4633123 c!793009) b!4633124))

(assert (= (and b!4633123 (not c!793009)) b!4633125))

(declare-fun m!5485529 () Bool)

(assert (=> b!4633124 m!5485529))

(declare-fun m!5485531 () Bool)

(assert (=> d!1460367 m!5485531))

(declare-fun m!5485533 () Bool)

(assert (=> d!1460367 m!5485533))

(assert (=> b!4633045 d!1460367))

(declare-fun d!1460369 () Bool)

(assert (=> d!1460369 (= (tail!8173 newBucket!224) (t!358810 newBucket!224))))

(assert (=> b!4633045 d!1460369))

(declare-fun d!1460371 () Bool)

(assert (=> d!1460371 (= (tail!8173 oldBucket!40) (t!358810 oldBucket!40))))

(assert (=> b!4633045 d!1460371))

(declare-fun d!1460373 () Bool)

(declare-fun hash!3590 (Hashable!5935 K!12995) (_ BitVec 64))

(assert (=> d!1460373 (= (hash!3586 hashF!1389 key!4968) (hash!3590 hashF!1389 key!4968))))

(declare-fun bs!1028852 () Bool)

(assert (= bs!1028852 d!1460373))

(declare-fun m!5485535 () Bool)

(assert (=> bs!1028852 m!5485535))

(assert (=> b!4633034 d!1460373))

(declare-fun d!1460375 () Bool)

(assert (=> d!1460375 (= (eq!853 lt!1794233 (+!1904 (extractMap!1594 (Cons!51627 (tuple2!52601 hash!414 lt!1794245) Nil!51627)) (h!57704 oldBucket!40))) (= (content!8880 (toList!5041 lt!1794233)) (content!8880 (toList!5041 (+!1904 (extractMap!1594 (Cons!51627 (tuple2!52601 hash!414 lt!1794245) Nil!51627)) (h!57704 oldBucket!40))))))))

(declare-fun bs!1028853 () Bool)

(assert (= bs!1028853 d!1460375))

(declare-fun m!5485537 () Bool)

(assert (=> bs!1028853 m!5485537))

(declare-fun m!5485539 () Bool)

(assert (=> bs!1028853 m!5485539))

(assert (=> b!4633044 d!1460375))

(declare-fun d!1460377 () Bool)

(declare-fun e!2890222 () Bool)

(assert (=> d!1460377 e!2890222))

(declare-fun res!1944262 () Bool)

(assert (=> d!1460377 (=> (not res!1944262) (not e!2890222))))

(declare-fun lt!1794311 () ListMap!4345)

(assert (=> d!1460377 (= res!1944262 (contains!14729 lt!1794311 (_1!29593 lt!1794230)))))

(declare-fun lt!1794310 () List!51750)

(assert (=> d!1460377 (= lt!1794311 (ListMap!4346 lt!1794310))))

(declare-fun lt!1794313 () Unit!113755)

(declare-fun lt!1794312 () Unit!113755)

(assert (=> d!1460377 (= lt!1794313 lt!1794312)))

(assert (=> d!1460377 (= (getValueByKey!1506 lt!1794310 (_1!29593 lt!1794230)) (Some!11677 (_2!29593 lt!1794230)))))

(assert (=> d!1460377 (= lt!1794312 (lemmaContainsTupThenGetReturnValue!876 lt!1794310 (_1!29593 lt!1794230) (_2!29593 lt!1794230)))))

(assert (=> d!1460377 (= lt!1794310 (insertNoDuplicatedKeys!384 (toList!5041 (addToMapMapFromBucket!999 lt!1794245 (ListMap!4346 Nil!51626))) (_1!29593 lt!1794230) (_2!29593 lt!1794230)))))

(assert (=> d!1460377 (= (+!1904 (addToMapMapFromBucket!999 lt!1794245 (ListMap!4346 Nil!51626)) lt!1794230) lt!1794311)))

(declare-fun b!4633126 () Bool)

(declare-fun res!1944263 () Bool)

(assert (=> b!4633126 (=> (not res!1944263) (not e!2890222))))

(assert (=> b!4633126 (= res!1944263 (= (getValueByKey!1506 (toList!5041 lt!1794311) (_1!29593 lt!1794230)) (Some!11677 (_2!29593 lt!1794230))))))

(declare-fun b!4633127 () Bool)

(assert (=> b!4633127 (= e!2890222 (contains!14734 (toList!5041 lt!1794311) lt!1794230))))

(assert (= (and d!1460377 res!1944262) b!4633126))

(assert (= (and b!4633126 res!1944263) b!4633127))

(declare-fun m!5485541 () Bool)

(assert (=> d!1460377 m!5485541))

(declare-fun m!5485543 () Bool)

(assert (=> d!1460377 m!5485543))

(declare-fun m!5485545 () Bool)

(assert (=> d!1460377 m!5485545))

(declare-fun m!5485547 () Bool)

(assert (=> d!1460377 m!5485547))

(declare-fun m!5485549 () Bool)

(assert (=> b!4633126 m!5485549))

(declare-fun m!5485551 () Bool)

(assert (=> b!4633127 m!5485551))

(assert (=> b!4633044 d!1460377))

(declare-fun b!4633163 () Bool)

(declare-fun e!2890249 () List!51753)

(assert (=> b!4633163 (= e!2890249 (keys!18214 lt!1794244))))

(declare-fun d!1460379 () Bool)

(declare-fun e!2890246 () Bool)

(assert (=> d!1460379 e!2890246))

(declare-fun res!1944281 () Bool)

(assert (=> d!1460379 (=> res!1944281 e!2890246)))

(declare-fun e!2890247 () Bool)

(assert (=> d!1460379 (= res!1944281 e!2890247)))

(declare-fun res!1944280 () Bool)

(assert (=> d!1460379 (=> (not res!1944280) (not e!2890247))))

(declare-fun lt!1794400 () Bool)

(assert (=> d!1460379 (= res!1944280 (not lt!1794400))))

(declare-fun lt!1794398 () Bool)

(assert (=> d!1460379 (= lt!1794400 lt!1794398)))

(declare-fun lt!1794394 () Unit!113755)

(declare-fun e!2890244 () Unit!113755)

(assert (=> d!1460379 (= lt!1794394 e!2890244)))

(declare-fun c!793022 () Bool)

(assert (=> d!1460379 (= c!793022 lt!1794398)))

(declare-fun containsKey!2536 (List!51750 K!12995) Bool)

(assert (=> d!1460379 (= lt!1794398 (containsKey!2536 (toList!5041 lt!1794244) key!4968))))

(assert (=> d!1460379 (= (contains!14729 lt!1794244 key!4968) lt!1794400)))

(declare-fun b!4633164 () Bool)

(declare-fun e!2890245 () Unit!113755)

(assert (=> b!4633164 (= e!2890244 e!2890245)))

(declare-fun c!793020 () Bool)

(declare-fun call!323316 () Bool)

(assert (=> b!4633164 (= c!793020 call!323316)))

(declare-fun b!4633165 () Bool)

(declare-fun Unit!113781 () Unit!113755)

(assert (=> b!4633165 (= e!2890245 Unit!113781)))

(declare-fun b!4633166 () Bool)

(declare-fun e!2890248 () Bool)

(assert (=> b!4633166 (= e!2890246 e!2890248)))

(declare-fun res!1944279 () Bool)

(assert (=> b!4633166 (=> (not res!1944279) (not e!2890248))))

(declare-fun isDefined!8943 (Option!11678) Bool)

(assert (=> b!4633166 (= res!1944279 (isDefined!8943 (getValueByKey!1506 (toList!5041 lt!1794244) key!4968)))))

(declare-fun b!4633167 () Bool)

(declare-fun getKeysList!683 (List!51750) List!51753)

(assert (=> b!4633167 (= e!2890249 (getKeysList!683 (toList!5041 lt!1794244)))))

(declare-fun b!4633168 () Bool)

(declare-fun contains!14735 (List!51753 K!12995) Bool)

(assert (=> b!4633168 (= e!2890248 (contains!14735 (keys!18214 lt!1794244) key!4968))))

(declare-fun b!4633169 () Bool)

(assert (=> b!4633169 (= e!2890247 (not (contains!14735 (keys!18214 lt!1794244) key!4968)))))

(declare-fun bm!323311 () Bool)

(assert (=> bm!323311 (= call!323316 (contains!14735 e!2890249 key!4968))))

(declare-fun c!793021 () Bool)

(assert (=> bm!323311 (= c!793021 c!793022)))

(declare-fun b!4633170 () Bool)

(assert (=> b!4633170 false))

(declare-fun lt!1794397 () Unit!113755)

(declare-fun lt!1794395 () Unit!113755)

(assert (=> b!4633170 (= lt!1794397 lt!1794395)))

(assert (=> b!4633170 (containsKey!2536 (toList!5041 lt!1794244) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!682 (List!51750 K!12995) Unit!113755)

(assert (=> b!4633170 (= lt!1794395 (lemmaInGetKeysListThenContainsKey!682 (toList!5041 lt!1794244) key!4968))))

(declare-fun Unit!113782 () Unit!113755)

(assert (=> b!4633170 (= e!2890245 Unit!113782)))

(declare-fun b!4633171 () Bool)

(declare-fun lt!1794399 () Unit!113755)

(assert (=> b!4633171 (= e!2890244 lt!1794399)))

(declare-fun lt!1794396 () Unit!113755)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1408 (List!51750 K!12995) Unit!113755)

(assert (=> b!4633171 (= lt!1794396 (lemmaContainsKeyImpliesGetValueByKeyDefined!1408 (toList!5041 lt!1794244) key!4968))))

(assert (=> b!4633171 (isDefined!8943 (getValueByKey!1506 (toList!5041 lt!1794244) key!4968))))

(declare-fun lt!1794393 () Unit!113755)

(assert (=> b!4633171 (= lt!1794393 lt!1794396)))

(declare-fun lemmaInListThenGetKeysListContains!678 (List!51750 K!12995) Unit!113755)

(assert (=> b!4633171 (= lt!1794399 (lemmaInListThenGetKeysListContains!678 (toList!5041 lt!1794244) key!4968))))

(assert (=> b!4633171 call!323316))

(assert (= (and d!1460379 c!793022) b!4633171))

(assert (= (and d!1460379 (not c!793022)) b!4633164))

(assert (= (and b!4633164 c!793020) b!4633170))

(assert (= (and b!4633164 (not c!793020)) b!4633165))

(assert (= (or b!4633171 b!4633164) bm!323311))

(assert (= (and bm!323311 c!793021) b!4633167))

(assert (= (and bm!323311 (not c!793021)) b!4633163))

(assert (= (and d!1460379 res!1944280) b!4633169))

(assert (= (and d!1460379 (not res!1944281)) b!4633166))

(assert (= (and b!4633166 res!1944279) b!4633168))

(declare-fun m!5485553 () Bool)

(assert (=> b!4633167 m!5485553))

(declare-fun m!5485555 () Bool)

(assert (=> b!4633171 m!5485555))

(declare-fun m!5485557 () Bool)

(assert (=> b!4633171 m!5485557))

(assert (=> b!4633171 m!5485557))

(declare-fun m!5485559 () Bool)

(assert (=> b!4633171 m!5485559))

(declare-fun m!5485561 () Bool)

(assert (=> b!4633171 m!5485561))

(assert (=> b!4633166 m!5485557))

(assert (=> b!4633166 m!5485557))

(assert (=> b!4633166 m!5485559))

(assert (=> b!4633169 m!5485471))

(assert (=> b!4633169 m!5485471))

(declare-fun m!5485563 () Bool)

(assert (=> b!4633169 m!5485563))

(declare-fun m!5485565 () Bool)

(assert (=> b!4633170 m!5485565))

(declare-fun m!5485567 () Bool)

(assert (=> b!4633170 m!5485567))

(assert (=> b!4633163 m!5485471))

(assert (=> d!1460379 m!5485565))

(declare-fun m!5485569 () Bool)

(assert (=> bm!323311 m!5485569))

(assert (=> b!4633168 m!5485471))

(assert (=> b!4633168 m!5485471))

(assert (=> b!4633168 m!5485563))

(assert (=> b!4633044 d!1460379))

(declare-fun d!1460381 () Bool)

(assert (=> d!1460381 (eq!853 (addToMapMapFromBucket!999 (Cons!51626 lt!1794230 lt!1794245) (ListMap!4346 Nil!51626)) (+!1904 (addToMapMapFromBucket!999 lt!1794245 (ListMap!4346 Nil!51626)) lt!1794230))))

(declare-fun lt!1794407 () Unit!113755)

(declare-fun choose!31574 (tuple2!52598 List!51750 ListMap!4345) Unit!113755)

(assert (=> d!1460381 (= lt!1794407 (choose!31574 lt!1794230 lt!1794245 (ListMap!4346 Nil!51626)))))

(assert (=> d!1460381 (noDuplicateKeys!1538 lt!1794245)))

(assert (=> d!1460381 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!104 lt!1794230 lt!1794245 (ListMap!4346 Nil!51626)) lt!1794407)))

(declare-fun bs!1028867 () Bool)

(assert (= bs!1028867 d!1460381))

(declare-fun m!5485631 () Bool)

(assert (=> bs!1028867 m!5485631))

(assert (=> bs!1028867 m!5485533))

(assert (=> bs!1028867 m!5485269))

(assert (=> bs!1028867 m!5485271))

(assert (=> bs!1028867 m!5485287))

(assert (=> bs!1028867 m!5485269))

(assert (=> bs!1028867 m!5485287))

(assert (=> bs!1028867 m!5485289))

(assert (=> bs!1028867 m!5485271))

(assert (=> b!4633044 d!1460381))

(declare-fun bs!1029030 () Bool)

(declare-fun b!4633266 () Bool)

(assert (= bs!1029030 (and b!4633266 d!1460341)))

(declare-fun lambda!194267 () Int)

(assert (=> bs!1029030 (not (= lambda!194267 lambda!194172))))

(assert (=> b!4633266 true))

(declare-fun bs!1029031 () Bool)

(declare-fun b!4633265 () Bool)

(assert (= bs!1029031 (and b!4633265 d!1460341)))

(declare-fun lambda!194268 () Int)

(assert (=> bs!1029031 (not (= lambda!194268 lambda!194172))))

(declare-fun bs!1029032 () Bool)

(assert (= bs!1029032 (and b!4633265 b!4633266)))

(assert (=> bs!1029032 (= lambda!194268 lambda!194267)))

(assert (=> b!4633265 true))

(declare-fun lambda!194269 () Int)

(assert (=> bs!1029031 (not (= lambda!194269 lambda!194172))))

(declare-fun lt!1794623 () ListMap!4345)

(assert (=> bs!1029032 (= (= lt!1794623 (ListMap!4346 Nil!51626)) (= lambda!194269 lambda!194267))))

(assert (=> b!4633265 (= (= lt!1794623 (ListMap!4346 Nil!51626)) (= lambda!194269 lambda!194268))))

(assert (=> b!4633265 true))

(declare-fun bs!1029033 () Bool)

(declare-fun d!1460393 () Bool)

(assert (= bs!1029033 (and d!1460393 d!1460341)))

(declare-fun lambda!194270 () Int)

(assert (=> bs!1029033 (not (= lambda!194270 lambda!194172))))

(declare-fun bs!1029034 () Bool)

(assert (= bs!1029034 (and d!1460393 b!4633266)))

(declare-fun lt!1794606 () ListMap!4345)

(assert (=> bs!1029034 (= (= lt!1794606 (ListMap!4346 Nil!51626)) (= lambda!194270 lambda!194267))))

(declare-fun bs!1029035 () Bool)

(assert (= bs!1029035 (and d!1460393 b!4633265)))

(assert (=> bs!1029035 (= (= lt!1794606 (ListMap!4346 Nil!51626)) (= lambda!194270 lambda!194268))))

(assert (=> bs!1029035 (= (= lt!1794606 lt!1794623) (= lambda!194270 lambda!194269))))

(assert (=> d!1460393 true))

(declare-fun b!4633264 () Bool)

(declare-fun res!1944336 () Bool)

(declare-fun e!2890306 () Bool)

(assert (=> b!4633264 (=> (not res!1944336) (not e!2890306))))

(assert (=> b!4633264 (= res!1944336 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194270))))

(assert (=> d!1460393 e!2890306))

(declare-fun res!1944335 () Bool)

(assert (=> d!1460393 (=> (not res!1944335) (not e!2890306))))

(assert (=> d!1460393 (= res!1944335 (forall!10880 (Cons!51626 lt!1794226 lt!1794247) lambda!194270))))

(declare-fun e!2890305 () ListMap!4345)

(assert (=> d!1460393 (= lt!1794606 e!2890305)))

(declare-fun c!793043 () Bool)

(assert (=> d!1460393 (= c!793043 ((_ is Nil!51626) (Cons!51626 lt!1794226 lt!1794247)))))

(assert (=> d!1460393 (noDuplicateKeys!1538 (Cons!51626 lt!1794226 lt!1794247))))

(assert (=> d!1460393 (= (addToMapMapFromBucket!999 (Cons!51626 lt!1794226 lt!1794247) (ListMap!4346 Nil!51626)) lt!1794606)))

(assert (=> b!4633265 (= e!2890305 lt!1794623)))

(declare-fun lt!1794618 () ListMap!4345)

(assert (=> b!4633265 (= lt!1794618 (+!1904 (ListMap!4346 Nil!51626) (h!57704 (Cons!51626 lt!1794226 lt!1794247))))))

(assert (=> b!4633265 (= lt!1794623 (addToMapMapFromBucket!999 (t!358810 (Cons!51626 lt!1794226 lt!1794247)) (+!1904 (ListMap!4346 Nil!51626) (h!57704 (Cons!51626 lt!1794226 lt!1794247)))))))

(declare-fun lt!1794615 () Unit!113755)

(declare-fun call!323338 () Unit!113755)

(assert (=> b!4633265 (= lt!1794615 call!323338)))

(assert (=> b!4633265 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194268)))

(declare-fun lt!1794626 () Unit!113755)

(assert (=> b!4633265 (= lt!1794626 lt!1794615)))

(assert (=> b!4633265 (forall!10880 (toList!5041 lt!1794618) lambda!194269)))

(declare-fun lt!1794610 () Unit!113755)

(declare-fun Unit!113785 () Unit!113755)

(assert (=> b!4633265 (= lt!1794610 Unit!113785)))

(assert (=> b!4633265 (forall!10880 (t!358810 (Cons!51626 lt!1794226 lt!1794247)) lambda!194269)))

(declare-fun lt!1794620 () Unit!113755)

(declare-fun Unit!113786 () Unit!113755)

(assert (=> b!4633265 (= lt!1794620 Unit!113786)))

(declare-fun lt!1794622 () Unit!113755)

(declare-fun Unit!113787 () Unit!113755)

(assert (=> b!4633265 (= lt!1794622 Unit!113787)))

(declare-fun lt!1794616 () Unit!113755)

(declare-fun forallContained!3112 (List!51750 Int tuple2!52598) Unit!113755)

(assert (=> b!4633265 (= lt!1794616 (forallContained!3112 (toList!5041 lt!1794618) lambda!194269 (h!57704 (Cons!51626 lt!1794226 lt!1794247))))))

(assert (=> b!4633265 (contains!14729 lt!1794618 (_1!29593 (h!57704 (Cons!51626 lt!1794226 lt!1794247))))))

(declare-fun lt!1794624 () Unit!113755)

(declare-fun Unit!113788 () Unit!113755)

(assert (=> b!4633265 (= lt!1794624 Unit!113788)))

(assert (=> b!4633265 (contains!14729 lt!1794623 (_1!29593 (h!57704 (Cons!51626 lt!1794226 lt!1794247))))))

(declare-fun lt!1794614 () Unit!113755)

(declare-fun Unit!113789 () Unit!113755)

(assert (=> b!4633265 (= lt!1794614 Unit!113789)))

(assert (=> b!4633265 (forall!10880 (Cons!51626 lt!1794226 lt!1794247) lambda!194269)))

(declare-fun lt!1794613 () Unit!113755)

(declare-fun Unit!113790 () Unit!113755)

(assert (=> b!4633265 (= lt!1794613 Unit!113790)))

(declare-fun call!323336 () Bool)

(assert (=> b!4633265 call!323336))

(declare-fun lt!1794617 () Unit!113755)

(declare-fun Unit!113791 () Unit!113755)

(assert (=> b!4633265 (= lt!1794617 Unit!113791)))

(declare-fun lt!1794619 () Unit!113755)

(declare-fun Unit!113792 () Unit!113755)

(assert (=> b!4633265 (= lt!1794619 Unit!113792)))

(declare-fun lt!1794608 () Unit!113755)

(declare-fun addForallContainsKeyThenBeforeAdding!533 (ListMap!4345 ListMap!4345 K!12995 V!13241) Unit!113755)

(assert (=> b!4633265 (= lt!1794608 (addForallContainsKeyThenBeforeAdding!533 (ListMap!4346 Nil!51626) lt!1794623 (_1!29593 (h!57704 (Cons!51626 lt!1794226 lt!1794247))) (_2!29593 (h!57704 (Cons!51626 lt!1794226 lt!1794247)))))))

(assert (=> b!4633265 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194269)))

(declare-fun lt!1794621 () Unit!113755)

(assert (=> b!4633265 (= lt!1794621 lt!1794608)))

(assert (=> b!4633265 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194269)))

(declare-fun lt!1794625 () Unit!113755)

(declare-fun Unit!113793 () Unit!113755)

(assert (=> b!4633265 (= lt!1794625 Unit!113793)))

(declare-fun res!1944334 () Bool)

(declare-fun call!323337 () Bool)

(assert (=> b!4633265 (= res!1944334 call!323337)))

(declare-fun e!2890307 () Bool)

(assert (=> b!4633265 (=> (not res!1944334) (not e!2890307))))

(assert (=> b!4633265 e!2890307))

(declare-fun lt!1794607 () Unit!113755)

(declare-fun Unit!113794 () Unit!113755)

(assert (=> b!4633265 (= lt!1794607 Unit!113794)))

(assert (=> b!4633266 (= e!2890305 (ListMap!4346 Nil!51626))))

(declare-fun lt!1794611 () Unit!113755)

(assert (=> b!4633266 (= lt!1794611 call!323338)))

(assert (=> b!4633266 call!323336))

(declare-fun lt!1794612 () Unit!113755)

(assert (=> b!4633266 (= lt!1794612 lt!1794611)))

(assert (=> b!4633266 call!323337))

(declare-fun lt!1794609 () Unit!113755)

(declare-fun Unit!113795 () Unit!113755)

(assert (=> b!4633266 (= lt!1794609 Unit!113795)))

(declare-fun b!4633267 () Bool)

(assert (=> b!4633267 (= e!2890307 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194269))))

(declare-fun b!4633268 () Bool)

(declare-fun invariantList!1232 (List!51750) Bool)

(assert (=> b!4633268 (= e!2890306 (invariantList!1232 (toList!5041 lt!1794606)))))

(declare-fun bm!323331 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!534 (ListMap!4345) Unit!113755)

(assert (=> bm!323331 (= call!323338 (lemmaContainsAllItsOwnKeys!534 (ListMap!4346 Nil!51626)))))

(declare-fun bm!323332 () Bool)

(assert (=> bm!323332 (= call!323337 (forall!10880 (ite c!793043 (toList!5041 (ListMap!4346 Nil!51626)) (Cons!51626 lt!1794226 lt!1794247)) (ite c!793043 lambda!194267 lambda!194269)))))

(declare-fun bm!323333 () Bool)

(assert (=> bm!323333 (= call!323336 (forall!10880 (ite c!793043 (toList!5041 (ListMap!4346 Nil!51626)) (toList!5041 lt!1794618)) (ite c!793043 lambda!194267 lambda!194269)))))

(assert (= (and d!1460393 c!793043) b!4633266))

(assert (= (and d!1460393 (not c!793043)) b!4633265))

(assert (= (and b!4633265 res!1944334) b!4633267))

(assert (= (or b!4633266 b!4633265) bm!323331))

(assert (= (or b!4633266 b!4633265) bm!323332))

(assert (= (or b!4633266 b!4633265) bm!323333))

(assert (= (and d!1460393 res!1944335) b!4633264))

(assert (= (and b!4633264 res!1944336) b!4633268))

(declare-fun m!5485939 () Bool)

(assert (=> bm!323332 m!5485939))

(declare-fun m!5485941 () Bool)

(assert (=> b!4633264 m!5485941))

(declare-fun m!5485943 () Bool)

(assert (=> bm!323331 m!5485943))

(declare-fun m!5485945 () Bool)

(assert (=> b!4633268 m!5485945))

(declare-fun m!5485947 () Bool)

(assert (=> b!4633267 m!5485947))

(declare-fun m!5485949 () Bool)

(assert (=> d!1460393 m!5485949))

(declare-fun m!5485951 () Bool)

(assert (=> d!1460393 m!5485951))

(declare-fun m!5485953 () Bool)

(assert (=> b!4633265 m!5485953))

(declare-fun m!5485955 () Bool)

(assert (=> b!4633265 m!5485955))

(declare-fun m!5485957 () Bool)

(assert (=> b!4633265 m!5485957))

(declare-fun m!5485959 () Bool)

(assert (=> b!4633265 m!5485959))

(declare-fun m!5485961 () Bool)

(assert (=> b!4633265 m!5485961))

(assert (=> b!4633265 m!5485947))

(declare-fun m!5485965 () Bool)

(assert (=> b!4633265 m!5485965))

(assert (=> b!4633265 m!5485955))

(declare-fun m!5485973 () Bool)

(assert (=> b!4633265 m!5485973))

(declare-fun m!5485977 () Bool)

(assert (=> b!4633265 m!5485977))

(declare-fun m!5485981 () Bool)

(assert (=> b!4633265 m!5485981))

(assert (=> b!4633265 m!5485947))

(declare-fun m!5485983 () Bool)

(assert (=> b!4633265 m!5485983))

(declare-fun m!5485987 () Bool)

(assert (=> bm!323333 m!5485987))

(assert (=> b!4633044 d!1460393))

(declare-fun d!1460453 () Bool)

(assert (=> d!1460453 (eq!853 (addToMapMapFromBucket!999 (Cons!51626 lt!1794226 lt!1794247) (ListMap!4346 Nil!51626)) (+!1904 (addToMapMapFromBucket!999 lt!1794247 (ListMap!4346 Nil!51626)) lt!1794226))))

(declare-fun lt!1794635 () Unit!113755)

(assert (=> d!1460453 (= lt!1794635 (choose!31574 lt!1794226 lt!1794247 (ListMap!4346 Nil!51626)))))

(assert (=> d!1460453 (noDuplicateKeys!1538 lt!1794247)))

(assert (=> d!1460453 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!104 lt!1794226 lt!1794247 (ListMap!4346 Nil!51626)) lt!1794635)))

(declare-fun bs!1029044 () Bool)

(assert (= bs!1029044 d!1460453))

(declare-fun m!5486003 () Bool)

(assert (=> bs!1029044 m!5486003))

(declare-fun m!5486005 () Bool)

(assert (=> bs!1029044 m!5486005))

(assert (=> bs!1029044 m!5485281))

(assert (=> bs!1029044 m!5485265))

(assert (=> bs!1029044 m!5485267))

(assert (=> bs!1029044 m!5485281))

(assert (=> bs!1029044 m!5485267))

(assert (=> bs!1029044 m!5485283))

(assert (=> bs!1029044 m!5485265))

(assert (=> b!4633044 d!1460453))

(declare-fun d!1460457 () Bool)

(assert (=> d!1460457 (= (head!9672 oldBucket!40) (h!57704 oldBucket!40))))

(assert (=> b!4633044 d!1460457))

(declare-fun bs!1029045 () Bool)

(declare-fun b!4633277 () Bool)

(assert (= bs!1029045 (and b!4633277 d!1460393)))

(declare-fun lambda!194272 () Int)

(assert (=> bs!1029045 (= (= (ListMap!4346 Nil!51626) lt!1794606) (= lambda!194272 lambda!194270))))

(declare-fun bs!1029046 () Bool)

(assert (= bs!1029046 (and b!4633277 b!4633265)))

(assert (=> bs!1029046 (= lambda!194272 lambda!194268)))

(declare-fun bs!1029047 () Bool)

(assert (= bs!1029047 (and b!4633277 d!1460341)))

(assert (=> bs!1029047 (not (= lambda!194272 lambda!194172))))

(declare-fun bs!1029048 () Bool)

(assert (= bs!1029048 (and b!4633277 b!4633266)))

(assert (=> bs!1029048 (= lambda!194272 lambda!194267)))

(assert (=> bs!1029046 (= (= (ListMap!4346 Nil!51626) lt!1794623) (= lambda!194272 lambda!194269))))

(assert (=> b!4633277 true))

(declare-fun bs!1029049 () Bool)

(declare-fun b!4633276 () Bool)

(assert (= bs!1029049 (and b!4633276 b!4633277)))

(declare-fun lambda!194273 () Int)

(assert (=> bs!1029049 (= lambda!194273 lambda!194272)))

(declare-fun bs!1029050 () Bool)

(assert (= bs!1029050 (and b!4633276 d!1460393)))

(assert (=> bs!1029050 (= (= (ListMap!4346 Nil!51626) lt!1794606) (= lambda!194273 lambda!194270))))

(declare-fun bs!1029051 () Bool)

(assert (= bs!1029051 (and b!4633276 b!4633265)))

(assert (=> bs!1029051 (= lambda!194273 lambda!194268)))

(declare-fun bs!1029052 () Bool)

(assert (= bs!1029052 (and b!4633276 d!1460341)))

(assert (=> bs!1029052 (not (= lambda!194273 lambda!194172))))

(declare-fun bs!1029053 () Bool)

(assert (= bs!1029053 (and b!4633276 b!4633266)))

(assert (=> bs!1029053 (= lambda!194273 lambda!194267)))

(assert (=> bs!1029051 (= (= (ListMap!4346 Nil!51626) lt!1794623) (= lambda!194273 lambda!194269))))

(assert (=> b!4633276 true))

(declare-fun lt!1794653 () ListMap!4345)

(declare-fun lambda!194274 () Int)

(assert (=> b!4633276 (= (= lt!1794653 (ListMap!4346 Nil!51626)) (= lambda!194274 lambda!194273))))

(assert (=> bs!1029049 (= (= lt!1794653 (ListMap!4346 Nil!51626)) (= lambda!194274 lambda!194272))))

(assert (=> bs!1029050 (= (= lt!1794653 lt!1794606) (= lambda!194274 lambda!194270))))

(assert (=> bs!1029051 (= (= lt!1794653 (ListMap!4346 Nil!51626)) (= lambda!194274 lambda!194268))))

(assert (=> bs!1029052 (not (= lambda!194274 lambda!194172))))

(assert (=> bs!1029053 (= (= lt!1794653 (ListMap!4346 Nil!51626)) (= lambda!194274 lambda!194267))))

(assert (=> bs!1029051 (= (= lt!1794653 lt!1794623) (= lambda!194274 lambda!194269))))

(assert (=> b!4633276 true))

(declare-fun bs!1029055 () Bool)

(declare-fun d!1460459 () Bool)

(assert (= bs!1029055 (and d!1460459 b!4633276)))

(declare-fun lt!1794636 () ListMap!4345)

(declare-fun lambda!194275 () Int)

(assert (=> bs!1029055 (= (= lt!1794636 (ListMap!4346 Nil!51626)) (= lambda!194275 lambda!194273))))

(assert (=> bs!1029055 (= (= lt!1794636 lt!1794653) (= lambda!194275 lambda!194274))))

(declare-fun bs!1029056 () Bool)

(assert (= bs!1029056 (and d!1460459 b!4633277)))

(assert (=> bs!1029056 (= (= lt!1794636 (ListMap!4346 Nil!51626)) (= lambda!194275 lambda!194272))))

(declare-fun bs!1029057 () Bool)

(assert (= bs!1029057 (and d!1460459 d!1460393)))

(assert (=> bs!1029057 (= (= lt!1794636 lt!1794606) (= lambda!194275 lambda!194270))))

(declare-fun bs!1029058 () Bool)

(assert (= bs!1029058 (and d!1460459 b!4633265)))

(assert (=> bs!1029058 (= (= lt!1794636 (ListMap!4346 Nil!51626)) (= lambda!194275 lambda!194268))))

(declare-fun bs!1029059 () Bool)

(assert (= bs!1029059 (and d!1460459 d!1460341)))

(assert (=> bs!1029059 (not (= lambda!194275 lambda!194172))))

(declare-fun bs!1029060 () Bool)

(assert (= bs!1029060 (and d!1460459 b!4633266)))

(assert (=> bs!1029060 (= (= lt!1794636 (ListMap!4346 Nil!51626)) (= lambda!194275 lambda!194267))))

(assert (=> bs!1029058 (= (= lt!1794636 lt!1794623) (= lambda!194275 lambda!194269))))

(assert (=> d!1460459 true))

(declare-fun b!4633275 () Bool)

(declare-fun res!1944343 () Bool)

(declare-fun e!2890311 () Bool)

(assert (=> b!4633275 (=> (not res!1944343) (not e!2890311))))

(assert (=> b!4633275 (= res!1944343 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194275))))

(assert (=> d!1460459 e!2890311))

(declare-fun res!1944342 () Bool)

(assert (=> d!1460459 (=> (not res!1944342) (not e!2890311))))

(assert (=> d!1460459 (= res!1944342 (forall!10880 lt!1794247 lambda!194275))))

(declare-fun e!2890310 () ListMap!4345)

(assert (=> d!1460459 (= lt!1794636 e!2890310)))

(declare-fun c!793044 () Bool)

(assert (=> d!1460459 (= c!793044 ((_ is Nil!51626) lt!1794247))))

(assert (=> d!1460459 (noDuplicateKeys!1538 lt!1794247)))

(assert (=> d!1460459 (= (addToMapMapFromBucket!999 lt!1794247 (ListMap!4346 Nil!51626)) lt!1794636)))

(assert (=> b!4633276 (= e!2890310 lt!1794653)))

(declare-fun lt!1794648 () ListMap!4345)

(assert (=> b!4633276 (= lt!1794648 (+!1904 (ListMap!4346 Nil!51626) (h!57704 lt!1794247)))))

(assert (=> b!4633276 (= lt!1794653 (addToMapMapFromBucket!999 (t!358810 lt!1794247) (+!1904 (ListMap!4346 Nil!51626) (h!57704 lt!1794247))))))

(declare-fun lt!1794645 () Unit!113755)

(declare-fun call!323341 () Unit!113755)

(assert (=> b!4633276 (= lt!1794645 call!323341)))

(assert (=> b!4633276 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194273)))

(declare-fun lt!1794656 () Unit!113755)

(assert (=> b!4633276 (= lt!1794656 lt!1794645)))

(assert (=> b!4633276 (forall!10880 (toList!5041 lt!1794648) lambda!194274)))

(declare-fun lt!1794640 () Unit!113755)

(declare-fun Unit!113796 () Unit!113755)

(assert (=> b!4633276 (= lt!1794640 Unit!113796)))

(assert (=> b!4633276 (forall!10880 (t!358810 lt!1794247) lambda!194274)))

(declare-fun lt!1794650 () Unit!113755)

(declare-fun Unit!113797 () Unit!113755)

(assert (=> b!4633276 (= lt!1794650 Unit!113797)))

(declare-fun lt!1794652 () Unit!113755)

(declare-fun Unit!113798 () Unit!113755)

(assert (=> b!4633276 (= lt!1794652 Unit!113798)))

(declare-fun lt!1794646 () Unit!113755)

(assert (=> b!4633276 (= lt!1794646 (forallContained!3112 (toList!5041 lt!1794648) lambda!194274 (h!57704 lt!1794247)))))

(assert (=> b!4633276 (contains!14729 lt!1794648 (_1!29593 (h!57704 lt!1794247)))))

(declare-fun lt!1794654 () Unit!113755)

(declare-fun Unit!113799 () Unit!113755)

(assert (=> b!4633276 (= lt!1794654 Unit!113799)))

(assert (=> b!4633276 (contains!14729 lt!1794653 (_1!29593 (h!57704 lt!1794247)))))

(declare-fun lt!1794644 () Unit!113755)

(declare-fun Unit!113800 () Unit!113755)

(assert (=> b!4633276 (= lt!1794644 Unit!113800)))

(assert (=> b!4633276 (forall!10880 lt!1794247 lambda!194274)))

(declare-fun lt!1794643 () Unit!113755)

(declare-fun Unit!113801 () Unit!113755)

(assert (=> b!4633276 (= lt!1794643 Unit!113801)))

(declare-fun call!323339 () Bool)

(assert (=> b!4633276 call!323339))

(declare-fun lt!1794647 () Unit!113755)

(declare-fun Unit!113802 () Unit!113755)

(assert (=> b!4633276 (= lt!1794647 Unit!113802)))

(declare-fun lt!1794649 () Unit!113755)

(declare-fun Unit!113803 () Unit!113755)

(assert (=> b!4633276 (= lt!1794649 Unit!113803)))

(declare-fun lt!1794638 () Unit!113755)

(assert (=> b!4633276 (= lt!1794638 (addForallContainsKeyThenBeforeAdding!533 (ListMap!4346 Nil!51626) lt!1794653 (_1!29593 (h!57704 lt!1794247)) (_2!29593 (h!57704 lt!1794247))))))

(assert (=> b!4633276 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194274)))

(declare-fun lt!1794651 () Unit!113755)

(assert (=> b!4633276 (= lt!1794651 lt!1794638)))

(assert (=> b!4633276 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194274)))

(declare-fun lt!1794655 () Unit!113755)

(declare-fun Unit!113804 () Unit!113755)

(assert (=> b!4633276 (= lt!1794655 Unit!113804)))

(declare-fun res!1944341 () Bool)

(declare-fun call!323340 () Bool)

(assert (=> b!4633276 (= res!1944341 call!323340)))

(declare-fun e!2890312 () Bool)

(assert (=> b!4633276 (=> (not res!1944341) (not e!2890312))))

(assert (=> b!4633276 e!2890312))

(declare-fun lt!1794637 () Unit!113755)

(declare-fun Unit!113805 () Unit!113755)

(assert (=> b!4633276 (= lt!1794637 Unit!113805)))

(assert (=> b!4633277 (= e!2890310 (ListMap!4346 Nil!51626))))

(declare-fun lt!1794641 () Unit!113755)

(assert (=> b!4633277 (= lt!1794641 call!323341)))

(assert (=> b!4633277 call!323339))

(declare-fun lt!1794642 () Unit!113755)

(assert (=> b!4633277 (= lt!1794642 lt!1794641)))

(assert (=> b!4633277 call!323340))

(declare-fun lt!1794639 () Unit!113755)

(declare-fun Unit!113806 () Unit!113755)

(assert (=> b!4633277 (= lt!1794639 Unit!113806)))

(declare-fun b!4633278 () Bool)

(assert (=> b!4633278 (= e!2890312 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194274))))

(declare-fun b!4633279 () Bool)

(assert (=> b!4633279 (= e!2890311 (invariantList!1232 (toList!5041 lt!1794636)))))

(declare-fun bm!323334 () Bool)

(assert (=> bm!323334 (= call!323341 (lemmaContainsAllItsOwnKeys!534 (ListMap!4346 Nil!51626)))))

(declare-fun bm!323335 () Bool)

(assert (=> bm!323335 (= call!323340 (forall!10880 (ite c!793044 (toList!5041 (ListMap!4346 Nil!51626)) lt!1794247) (ite c!793044 lambda!194272 lambda!194274)))))

(declare-fun bm!323336 () Bool)

(assert (=> bm!323336 (= call!323339 (forall!10880 (ite c!793044 (toList!5041 (ListMap!4346 Nil!51626)) (toList!5041 lt!1794648)) (ite c!793044 lambda!194272 lambda!194274)))))

(assert (= (and d!1460459 c!793044) b!4633277))

(assert (= (and d!1460459 (not c!793044)) b!4633276))

(assert (= (and b!4633276 res!1944341) b!4633278))

(assert (= (or b!4633277 b!4633276) bm!323334))

(assert (= (or b!4633277 b!4633276) bm!323335))

(assert (= (or b!4633277 b!4633276) bm!323336))

(assert (= (and d!1460459 res!1944342) b!4633275))

(assert (= (and b!4633275 res!1944343) b!4633279))

(declare-fun m!5486015 () Bool)

(assert (=> bm!323335 m!5486015))

(declare-fun m!5486017 () Bool)

(assert (=> b!4633275 m!5486017))

(assert (=> bm!323334 m!5485943))

(declare-fun m!5486019 () Bool)

(assert (=> b!4633279 m!5486019))

(declare-fun m!5486021 () Bool)

(assert (=> b!4633278 m!5486021))

(declare-fun m!5486023 () Bool)

(assert (=> d!1460459 m!5486023))

(assert (=> d!1460459 m!5486005))

(declare-fun m!5486025 () Bool)

(assert (=> b!4633276 m!5486025))

(declare-fun m!5486027 () Bool)

(assert (=> b!4633276 m!5486027))

(declare-fun m!5486029 () Bool)

(assert (=> b!4633276 m!5486029))

(declare-fun m!5486031 () Bool)

(assert (=> b!4633276 m!5486031))

(declare-fun m!5486033 () Bool)

(assert (=> b!4633276 m!5486033))

(assert (=> b!4633276 m!5486021))

(declare-fun m!5486035 () Bool)

(assert (=> b!4633276 m!5486035))

(assert (=> b!4633276 m!5486027))

(declare-fun m!5486037 () Bool)

(assert (=> b!4633276 m!5486037))

(declare-fun m!5486039 () Bool)

(assert (=> b!4633276 m!5486039))

(declare-fun m!5486041 () Bool)

(assert (=> b!4633276 m!5486041))

(assert (=> b!4633276 m!5486021))

(declare-fun m!5486043 () Bool)

(assert (=> b!4633276 m!5486043))

(declare-fun m!5486045 () Bool)

(assert (=> bm!323336 m!5486045))

(assert (=> b!4633044 d!1460459))

(declare-fun d!1460465 () Bool)

(assert (=> d!1460465 (= (head!9672 newBucket!224) (h!57704 newBucket!224))))

(assert (=> b!4633044 d!1460465))

(declare-fun d!1460469 () Bool)

(declare-fun e!2890319 () Bool)

(assert (=> d!1460469 e!2890319))

(declare-fun res!1944350 () Bool)

(assert (=> d!1460469 (=> (not res!1944350) (not e!2890319))))

(declare-fun lt!1794667 () ListMap!4345)

(assert (=> d!1460469 (= res!1944350 (contains!14729 lt!1794667 (_1!29593 (h!57704 oldBucket!40))))))

(declare-fun lt!1794666 () List!51750)

(assert (=> d!1460469 (= lt!1794667 (ListMap!4346 lt!1794666))))

(declare-fun lt!1794669 () Unit!113755)

(declare-fun lt!1794668 () Unit!113755)

(assert (=> d!1460469 (= lt!1794669 lt!1794668)))

(assert (=> d!1460469 (= (getValueByKey!1506 lt!1794666 (_1!29593 (h!57704 oldBucket!40))) (Some!11677 (_2!29593 (h!57704 oldBucket!40))))))

(assert (=> d!1460469 (= lt!1794668 (lemmaContainsTupThenGetReturnValue!876 lt!1794666 (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40))))))

(assert (=> d!1460469 (= lt!1794666 (insertNoDuplicatedKeys!384 (toList!5041 (extractMap!1594 (Cons!51627 (tuple2!52601 hash!414 lt!1794245) Nil!51627))) (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40))))))

(assert (=> d!1460469 (= (+!1904 (extractMap!1594 (Cons!51627 (tuple2!52601 hash!414 lt!1794245) Nil!51627)) (h!57704 oldBucket!40)) lt!1794667)))

(declare-fun b!4633287 () Bool)

(declare-fun res!1944351 () Bool)

(assert (=> b!4633287 (=> (not res!1944351) (not e!2890319))))

(assert (=> b!4633287 (= res!1944351 (= (getValueByKey!1506 (toList!5041 lt!1794667) (_1!29593 (h!57704 oldBucket!40))) (Some!11677 (_2!29593 (h!57704 oldBucket!40)))))))

(declare-fun b!4633288 () Bool)

(assert (=> b!4633288 (= e!2890319 (contains!14734 (toList!5041 lt!1794667) (h!57704 oldBucket!40)))))

(assert (= (and d!1460469 res!1944350) b!4633287))

(assert (= (and b!4633287 res!1944351) b!4633288))

(declare-fun m!5486051 () Bool)

(assert (=> d!1460469 m!5486051))

(declare-fun m!5486053 () Bool)

(assert (=> d!1460469 m!5486053))

(declare-fun m!5486055 () Bool)

(assert (=> d!1460469 m!5486055))

(declare-fun m!5486057 () Bool)

(assert (=> d!1460469 m!5486057))

(declare-fun m!5486059 () Bool)

(assert (=> b!4633287 m!5486059))

(declare-fun m!5486061 () Bool)

(assert (=> b!4633288 m!5486061))

(assert (=> b!4633044 d!1460469))

(declare-fun bs!1029062 () Bool)

(declare-fun b!4633295 () Bool)

(assert (= bs!1029062 (and b!4633295 b!4633276)))

(declare-fun lambda!194276 () Int)

(assert (=> bs!1029062 (= lambda!194276 lambda!194273)))

(assert (=> bs!1029062 (= (= (ListMap!4346 Nil!51626) lt!1794653) (= lambda!194276 lambda!194274))))

(declare-fun bs!1029063 () Bool)

(assert (= bs!1029063 (and b!4633295 b!4633277)))

(assert (=> bs!1029063 (= lambda!194276 lambda!194272)))

(declare-fun bs!1029064 () Bool)

(assert (= bs!1029064 (and b!4633295 d!1460393)))

(assert (=> bs!1029064 (= (= (ListMap!4346 Nil!51626) lt!1794606) (= lambda!194276 lambda!194270))))

(declare-fun bs!1029065 () Bool)

(assert (= bs!1029065 (and b!4633295 b!4633265)))

(assert (=> bs!1029065 (= lambda!194276 lambda!194268)))

(declare-fun bs!1029066 () Bool)

(assert (= bs!1029066 (and b!4633295 b!4633266)))

(assert (=> bs!1029066 (= lambda!194276 lambda!194267)))

(assert (=> bs!1029065 (= (= (ListMap!4346 Nil!51626) lt!1794623) (= lambda!194276 lambda!194269))))

(declare-fun bs!1029067 () Bool)

(assert (= bs!1029067 (and b!4633295 d!1460341)))

(assert (=> bs!1029067 (not (= lambda!194276 lambda!194172))))

(declare-fun bs!1029068 () Bool)

(assert (= bs!1029068 (and b!4633295 d!1460459)))

(assert (=> bs!1029068 (= (= (ListMap!4346 Nil!51626) lt!1794636) (= lambda!194276 lambda!194275))))

(assert (=> b!4633295 true))

(declare-fun bs!1029069 () Bool)

(declare-fun b!4633292 () Bool)

(assert (= bs!1029069 (and b!4633292 b!4633276)))

(declare-fun lambda!194277 () Int)

(assert (=> bs!1029069 (= lambda!194277 lambda!194273)))

(assert (=> bs!1029069 (= (= (ListMap!4346 Nil!51626) lt!1794653) (= lambda!194277 lambda!194274))))

(declare-fun bs!1029070 () Bool)

(assert (= bs!1029070 (and b!4633292 b!4633295)))

(assert (=> bs!1029070 (= lambda!194277 lambda!194276)))

(declare-fun bs!1029071 () Bool)

(assert (= bs!1029071 (and b!4633292 b!4633277)))

(assert (=> bs!1029071 (= lambda!194277 lambda!194272)))

(declare-fun bs!1029072 () Bool)

(assert (= bs!1029072 (and b!4633292 d!1460393)))

(assert (=> bs!1029072 (= (= (ListMap!4346 Nil!51626) lt!1794606) (= lambda!194277 lambda!194270))))

(declare-fun bs!1029073 () Bool)

(assert (= bs!1029073 (and b!4633292 b!4633265)))

(assert (=> bs!1029073 (= lambda!194277 lambda!194268)))

(declare-fun bs!1029074 () Bool)

(assert (= bs!1029074 (and b!4633292 b!4633266)))

(assert (=> bs!1029074 (= lambda!194277 lambda!194267)))

(assert (=> bs!1029073 (= (= (ListMap!4346 Nil!51626) lt!1794623) (= lambda!194277 lambda!194269))))

(declare-fun bs!1029075 () Bool)

(assert (= bs!1029075 (and b!4633292 d!1460341)))

(assert (=> bs!1029075 (not (= lambda!194277 lambda!194172))))

(declare-fun bs!1029077 () Bool)

(assert (= bs!1029077 (and b!4633292 d!1460459)))

(assert (=> bs!1029077 (= (= (ListMap!4346 Nil!51626) lt!1794636) (= lambda!194277 lambda!194275))))

(assert (=> b!4633292 true))

(declare-fun lt!1794687 () ListMap!4345)

(declare-fun lambda!194278 () Int)

(assert (=> bs!1029069 (= (= lt!1794687 (ListMap!4346 Nil!51626)) (= lambda!194278 lambda!194273))))

(assert (=> bs!1029069 (= (= lt!1794687 lt!1794653) (= lambda!194278 lambda!194274))))

(assert (=> bs!1029070 (= (= lt!1794687 (ListMap!4346 Nil!51626)) (= lambda!194278 lambda!194276))))

(assert (=> b!4633292 (= (= lt!1794687 (ListMap!4346 Nil!51626)) (= lambda!194278 lambda!194277))))

(assert (=> bs!1029071 (= (= lt!1794687 (ListMap!4346 Nil!51626)) (= lambda!194278 lambda!194272))))

(assert (=> bs!1029072 (= (= lt!1794687 lt!1794606) (= lambda!194278 lambda!194270))))

(assert (=> bs!1029073 (= (= lt!1794687 (ListMap!4346 Nil!51626)) (= lambda!194278 lambda!194268))))

(assert (=> bs!1029074 (= (= lt!1794687 (ListMap!4346 Nil!51626)) (= lambda!194278 lambda!194267))))

(assert (=> bs!1029073 (= (= lt!1794687 lt!1794623) (= lambda!194278 lambda!194269))))

(assert (=> bs!1029075 (not (= lambda!194278 lambda!194172))))

(assert (=> bs!1029077 (= (= lt!1794687 lt!1794636) (= lambda!194278 lambda!194275))))

(assert (=> b!4633292 true))

(declare-fun bs!1029078 () Bool)

(declare-fun d!1460471 () Bool)

(assert (= bs!1029078 (and d!1460471 b!4633276)))

(declare-fun lt!1794670 () ListMap!4345)

(declare-fun lambda!194279 () Int)

(assert (=> bs!1029078 (= (= lt!1794670 (ListMap!4346 Nil!51626)) (= lambda!194279 lambda!194273))))

(assert (=> bs!1029078 (= (= lt!1794670 lt!1794653) (= lambda!194279 lambda!194274))))

(declare-fun bs!1029079 () Bool)

(assert (= bs!1029079 (and d!1460471 b!4633295)))

(assert (=> bs!1029079 (= (= lt!1794670 (ListMap!4346 Nil!51626)) (= lambda!194279 lambda!194276))))

(declare-fun bs!1029080 () Bool)

(assert (= bs!1029080 (and d!1460471 b!4633277)))

(assert (=> bs!1029080 (= (= lt!1794670 (ListMap!4346 Nil!51626)) (= lambda!194279 lambda!194272))))

(declare-fun bs!1029081 () Bool)

(assert (= bs!1029081 (and d!1460471 d!1460393)))

(assert (=> bs!1029081 (= (= lt!1794670 lt!1794606) (= lambda!194279 lambda!194270))))

(declare-fun bs!1029082 () Bool)

(assert (= bs!1029082 (and d!1460471 b!4633265)))

(assert (=> bs!1029082 (= (= lt!1794670 (ListMap!4346 Nil!51626)) (= lambda!194279 lambda!194268))))

(declare-fun bs!1029083 () Bool)

(assert (= bs!1029083 (and d!1460471 b!4633266)))

(assert (=> bs!1029083 (= (= lt!1794670 (ListMap!4346 Nil!51626)) (= lambda!194279 lambda!194267))))

(assert (=> bs!1029082 (= (= lt!1794670 lt!1794623) (= lambda!194279 lambda!194269))))

(declare-fun bs!1029084 () Bool)

(assert (= bs!1029084 (and d!1460471 b!4633292)))

(assert (=> bs!1029084 (= (= lt!1794670 lt!1794687) (= lambda!194279 lambda!194278))))

(assert (=> bs!1029084 (= (= lt!1794670 (ListMap!4346 Nil!51626)) (= lambda!194279 lambda!194277))))

(declare-fun bs!1029085 () Bool)

(assert (= bs!1029085 (and d!1460471 d!1460341)))

(assert (=> bs!1029085 (not (= lambda!194279 lambda!194172))))

(declare-fun bs!1029086 () Bool)

(assert (= bs!1029086 (and d!1460471 d!1460459)))

(assert (=> bs!1029086 (= (= lt!1794670 lt!1794636) (= lambda!194279 lambda!194275))))

(assert (=> d!1460471 true))

(declare-fun b!4633291 () Bool)

(declare-fun res!1944358 () Bool)

(declare-fun e!2890323 () Bool)

(assert (=> b!4633291 (=> (not res!1944358) (not e!2890323))))

(assert (=> b!4633291 (= res!1944358 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194279))))

(assert (=> d!1460471 e!2890323))

(declare-fun res!1944355 () Bool)

(assert (=> d!1460471 (=> (not res!1944355) (not e!2890323))))

(assert (=> d!1460471 (= res!1944355 (forall!10880 (Cons!51626 lt!1794230 lt!1794245) lambda!194279))))

(declare-fun e!2890322 () ListMap!4345)

(assert (=> d!1460471 (= lt!1794670 e!2890322)))

(declare-fun c!793045 () Bool)

(assert (=> d!1460471 (= c!793045 ((_ is Nil!51626) (Cons!51626 lt!1794230 lt!1794245)))))

(assert (=> d!1460471 (noDuplicateKeys!1538 (Cons!51626 lt!1794230 lt!1794245))))

(assert (=> d!1460471 (= (addToMapMapFromBucket!999 (Cons!51626 lt!1794230 lt!1794245) (ListMap!4346 Nil!51626)) lt!1794670)))

(assert (=> b!4633292 (= e!2890322 lt!1794687)))

(declare-fun lt!1794682 () ListMap!4345)

(assert (=> b!4633292 (= lt!1794682 (+!1904 (ListMap!4346 Nil!51626) (h!57704 (Cons!51626 lt!1794230 lt!1794245))))))

(assert (=> b!4633292 (= lt!1794687 (addToMapMapFromBucket!999 (t!358810 (Cons!51626 lt!1794230 lt!1794245)) (+!1904 (ListMap!4346 Nil!51626) (h!57704 (Cons!51626 lt!1794230 lt!1794245)))))))

(declare-fun lt!1794679 () Unit!113755)

(declare-fun call!323344 () Unit!113755)

(assert (=> b!4633292 (= lt!1794679 call!323344)))

(assert (=> b!4633292 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194277)))

(declare-fun lt!1794690 () Unit!113755)

(assert (=> b!4633292 (= lt!1794690 lt!1794679)))

(assert (=> b!4633292 (forall!10880 (toList!5041 lt!1794682) lambda!194278)))

(declare-fun lt!1794674 () Unit!113755)

(declare-fun Unit!113818 () Unit!113755)

(assert (=> b!4633292 (= lt!1794674 Unit!113818)))

(assert (=> b!4633292 (forall!10880 (t!358810 (Cons!51626 lt!1794230 lt!1794245)) lambda!194278)))

(declare-fun lt!1794684 () Unit!113755)

(declare-fun Unit!113819 () Unit!113755)

(assert (=> b!4633292 (= lt!1794684 Unit!113819)))

(declare-fun lt!1794686 () Unit!113755)

(declare-fun Unit!113820 () Unit!113755)

(assert (=> b!4633292 (= lt!1794686 Unit!113820)))

(declare-fun lt!1794680 () Unit!113755)

(assert (=> b!4633292 (= lt!1794680 (forallContained!3112 (toList!5041 lt!1794682) lambda!194278 (h!57704 (Cons!51626 lt!1794230 lt!1794245))))))

(assert (=> b!4633292 (contains!14729 lt!1794682 (_1!29593 (h!57704 (Cons!51626 lt!1794230 lt!1794245))))))

(declare-fun lt!1794688 () Unit!113755)

(declare-fun Unit!113821 () Unit!113755)

(assert (=> b!4633292 (= lt!1794688 Unit!113821)))

(assert (=> b!4633292 (contains!14729 lt!1794687 (_1!29593 (h!57704 (Cons!51626 lt!1794230 lt!1794245))))))

(declare-fun lt!1794678 () Unit!113755)

(declare-fun Unit!113822 () Unit!113755)

(assert (=> b!4633292 (= lt!1794678 Unit!113822)))

(assert (=> b!4633292 (forall!10880 (Cons!51626 lt!1794230 lt!1794245) lambda!194278)))

(declare-fun lt!1794677 () Unit!113755)

(declare-fun Unit!113823 () Unit!113755)

(assert (=> b!4633292 (= lt!1794677 Unit!113823)))

(declare-fun call!323342 () Bool)

(assert (=> b!4633292 call!323342))

(declare-fun lt!1794681 () Unit!113755)

(declare-fun Unit!113824 () Unit!113755)

(assert (=> b!4633292 (= lt!1794681 Unit!113824)))

(declare-fun lt!1794683 () Unit!113755)

(declare-fun Unit!113825 () Unit!113755)

(assert (=> b!4633292 (= lt!1794683 Unit!113825)))

(declare-fun lt!1794672 () Unit!113755)

(assert (=> b!4633292 (= lt!1794672 (addForallContainsKeyThenBeforeAdding!533 (ListMap!4346 Nil!51626) lt!1794687 (_1!29593 (h!57704 (Cons!51626 lt!1794230 lt!1794245))) (_2!29593 (h!57704 (Cons!51626 lt!1794230 lt!1794245)))))))

(assert (=> b!4633292 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194278)))

(declare-fun lt!1794685 () Unit!113755)

(assert (=> b!4633292 (= lt!1794685 lt!1794672)))

(assert (=> b!4633292 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194278)))

(declare-fun lt!1794689 () Unit!113755)

(declare-fun Unit!113826 () Unit!113755)

(assert (=> b!4633292 (= lt!1794689 Unit!113826)))

(declare-fun res!1944354 () Bool)

(declare-fun call!323343 () Bool)

(assert (=> b!4633292 (= res!1944354 call!323343)))

(declare-fun e!2890324 () Bool)

(assert (=> b!4633292 (=> (not res!1944354) (not e!2890324))))

(assert (=> b!4633292 e!2890324))

(declare-fun lt!1794671 () Unit!113755)

(declare-fun Unit!113827 () Unit!113755)

(assert (=> b!4633292 (= lt!1794671 Unit!113827)))

(assert (=> b!4633295 (= e!2890322 (ListMap!4346 Nil!51626))))

(declare-fun lt!1794675 () Unit!113755)

(assert (=> b!4633295 (= lt!1794675 call!323344)))

(assert (=> b!4633295 call!323342))

(declare-fun lt!1794676 () Unit!113755)

(assert (=> b!4633295 (= lt!1794676 lt!1794675)))

(assert (=> b!4633295 call!323343))

(declare-fun lt!1794673 () Unit!113755)

(declare-fun Unit!113828 () Unit!113755)

(assert (=> b!4633295 (= lt!1794673 Unit!113828)))

(declare-fun b!4633296 () Bool)

(assert (=> b!4633296 (= e!2890324 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194278))))

(declare-fun b!4633297 () Bool)

(assert (=> b!4633297 (= e!2890323 (invariantList!1232 (toList!5041 lt!1794670)))))

(declare-fun bm!323337 () Bool)

(assert (=> bm!323337 (= call!323344 (lemmaContainsAllItsOwnKeys!534 (ListMap!4346 Nil!51626)))))

(declare-fun bm!323338 () Bool)

(assert (=> bm!323338 (= call!323343 (forall!10880 (ite c!793045 (toList!5041 (ListMap!4346 Nil!51626)) (Cons!51626 lt!1794230 lt!1794245)) (ite c!793045 lambda!194276 lambda!194278)))))

(declare-fun bm!323339 () Bool)

(assert (=> bm!323339 (= call!323342 (forall!10880 (ite c!793045 (toList!5041 (ListMap!4346 Nil!51626)) (toList!5041 lt!1794682)) (ite c!793045 lambda!194276 lambda!194278)))))

(assert (= (and d!1460471 c!793045) b!4633295))

(assert (= (and d!1460471 (not c!793045)) b!4633292))

(assert (= (and b!4633292 res!1944354) b!4633296))

(assert (= (or b!4633295 b!4633292) bm!323337))

(assert (= (or b!4633295 b!4633292) bm!323338))

(assert (= (or b!4633295 b!4633292) bm!323339))

(assert (= (and d!1460471 res!1944355) b!4633291))

(assert (= (and b!4633291 res!1944358) b!4633297))

(declare-fun m!5486069 () Bool)

(assert (=> bm!323338 m!5486069))

(declare-fun m!5486071 () Bool)

(assert (=> b!4633291 m!5486071))

(assert (=> bm!323337 m!5485943))

(declare-fun m!5486073 () Bool)

(assert (=> b!4633297 m!5486073))

(declare-fun m!5486075 () Bool)

(assert (=> b!4633296 m!5486075))

(declare-fun m!5486077 () Bool)

(assert (=> d!1460471 m!5486077))

(declare-fun m!5486079 () Bool)

(assert (=> d!1460471 m!5486079))

(declare-fun m!5486081 () Bool)

(assert (=> b!4633292 m!5486081))

(declare-fun m!5486083 () Bool)

(assert (=> b!4633292 m!5486083))

(declare-fun m!5486087 () Bool)

(assert (=> b!4633292 m!5486087))

(declare-fun m!5486091 () Bool)

(assert (=> b!4633292 m!5486091))

(declare-fun m!5486093 () Bool)

(assert (=> b!4633292 m!5486093))

(assert (=> b!4633292 m!5486075))

(declare-fun m!5486095 () Bool)

(assert (=> b!4633292 m!5486095))

(assert (=> b!4633292 m!5486083))

(declare-fun m!5486097 () Bool)

(assert (=> b!4633292 m!5486097))

(declare-fun m!5486099 () Bool)

(assert (=> b!4633292 m!5486099))

(declare-fun m!5486101 () Bool)

(assert (=> b!4633292 m!5486101))

(assert (=> b!4633292 m!5486075))

(declare-fun m!5486103 () Bool)

(assert (=> b!4633292 m!5486103))

(declare-fun m!5486105 () Bool)

(assert (=> bm!323339 m!5486105))

(assert (=> b!4633044 d!1460471))

(declare-fun bs!1029097 () Bool)

(declare-fun b!4633304 () Bool)

(assert (= bs!1029097 (and b!4633304 b!4633276)))

(declare-fun lambda!194283 () Int)

(assert (=> bs!1029097 (= lambda!194283 lambda!194273)))

(assert (=> bs!1029097 (= (= (ListMap!4346 Nil!51626) lt!1794653) (= lambda!194283 lambda!194274))))

(declare-fun bs!1029098 () Bool)

(assert (= bs!1029098 (and b!4633304 b!4633295)))

(assert (=> bs!1029098 (= lambda!194283 lambda!194276)))

(declare-fun bs!1029099 () Bool)

(assert (= bs!1029099 (and b!4633304 d!1460393)))

(assert (=> bs!1029099 (= (= (ListMap!4346 Nil!51626) lt!1794606) (= lambda!194283 lambda!194270))))

(declare-fun bs!1029100 () Bool)

(assert (= bs!1029100 (and b!4633304 b!4633265)))

(assert (=> bs!1029100 (= lambda!194283 lambda!194268)))

(declare-fun bs!1029101 () Bool)

(assert (= bs!1029101 (and b!4633304 b!4633266)))

(assert (=> bs!1029101 (= lambda!194283 lambda!194267)))

(assert (=> bs!1029100 (= (= (ListMap!4346 Nil!51626) lt!1794623) (= lambda!194283 lambda!194269))))

(declare-fun bs!1029102 () Bool)

(assert (= bs!1029102 (and b!4633304 b!4633292)))

(assert (=> bs!1029102 (= (= (ListMap!4346 Nil!51626) lt!1794687) (= lambda!194283 lambda!194278))))

(assert (=> bs!1029102 (= lambda!194283 lambda!194277)))

(declare-fun bs!1029103 () Bool)

(assert (= bs!1029103 (and b!4633304 b!4633277)))

(assert (=> bs!1029103 (= lambda!194283 lambda!194272)))

(declare-fun bs!1029104 () Bool)

(assert (= bs!1029104 (and b!4633304 d!1460471)))

(assert (=> bs!1029104 (= (= (ListMap!4346 Nil!51626) lt!1794670) (= lambda!194283 lambda!194279))))

(declare-fun bs!1029105 () Bool)

(assert (= bs!1029105 (and b!4633304 d!1460341)))

(assert (=> bs!1029105 (not (= lambda!194283 lambda!194172))))

(declare-fun bs!1029106 () Bool)

(assert (= bs!1029106 (and b!4633304 d!1460459)))

(assert (=> bs!1029106 (= (= (ListMap!4346 Nil!51626) lt!1794636) (= lambda!194283 lambda!194275))))

(assert (=> b!4633304 true))

(declare-fun bs!1029107 () Bool)

(declare-fun b!4633303 () Bool)

(assert (= bs!1029107 (and b!4633303 b!4633276)))

(declare-fun lambda!194284 () Int)

(assert (=> bs!1029107 (= lambda!194284 lambda!194273)))

(assert (=> bs!1029107 (= (= (ListMap!4346 Nil!51626) lt!1794653) (= lambda!194284 lambda!194274))))

(declare-fun bs!1029108 () Bool)

(assert (= bs!1029108 (and b!4633303 d!1460393)))

(assert (=> bs!1029108 (= (= (ListMap!4346 Nil!51626) lt!1794606) (= lambda!194284 lambda!194270))))

(declare-fun bs!1029109 () Bool)

(assert (= bs!1029109 (and b!4633303 b!4633265)))

(assert (=> bs!1029109 (= lambda!194284 lambda!194268)))

(declare-fun bs!1029110 () Bool)

(assert (= bs!1029110 (and b!4633303 b!4633266)))

(assert (=> bs!1029110 (= lambda!194284 lambda!194267)))

(assert (=> bs!1029109 (= (= (ListMap!4346 Nil!51626) lt!1794623) (= lambda!194284 lambda!194269))))

(declare-fun bs!1029111 () Bool)

(assert (= bs!1029111 (and b!4633303 b!4633304)))

(assert (=> bs!1029111 (= lambda!194284 lambda!194283)))

(declare-fun bs!1029112 () Bool)

(assert (= bs!1029112 (and b!4633303 b!4633295)))

(assert (=> bs!1029112 (= lambda!194284 lambda!194276)))

(declare-fun bs!1029113 () Bool)

(assert (= bs!1029113 (and b!4633303 b!4633292)))

(assert (=> bs!1029113 (= (= (ListMap!4346 Nil!51626) lt!1794687) (= lambda!194284 lambda!194278))))

(assert (=> bs!1029113 (= lambda!194284 lambda!194277)))

(declare-fun bs!1029114 () Bool)

(assert (= bs!1029114 (and b!4633303 b!4633277)))

(assert (=> bs!1029114 (= lambda!194284 lambda!194272)))

(declare-fun bs!1029115 () Bool)

(assert (= bs!1029115 (and b!4633303 d!1460471)))

(assert (=> bs!1029115 (= (= (ListMap!4346 Nil!51626) lt!1794670) (= lambda!194284 lambda!194279))))

(declare-fun bs!1029116 () Bool)

(assert (= bs!1029116 (and b!4633303 d!1460341)))

(assert (=> bs!1029116 (not (= lambda!194284 lambda!194172))))

(declare-fun bs!1029117 () Bool)

(assert (= bs!1029117 (and b!4633303 d!1460459)))

(assert (=> bs!1029117 (= (= (ListMap!4346 Nil!51626) lt!1794636) (= lambda!194284 lambda!194275))))

(assert (=> b!4633303 true))

(declare-fun lt!1794711 () ListMap!4345)

(declare-fun lambda!194285 () Int)

(assert (=> bs!1029107 (= (= lt!1794711 (ListMap!4346 Nil!51626)) (= lambda!194285 lambda!194273))))

(assert (=> bs!1029107 (= (= lt!1794711 lt!1794653) (= lambda!194285 lambda!194274))))

(assert (=> bs!1029108 (= (= lt!1794711 lt!1794606) (= lambda!194285 lambda!194270))))

(assert (=> bs!1029109 (= (= lt!1794711 (ListMap!4346 Nil!51626)) (= lambda!194285 lambda!194268))))

(assert (=> b!4633303 (= (= lt!1794711 (ListMap!4346 Nil!51626)) (= lambda!194285 lambda!194284))))

(assert (=> bs!1029110 (= (= lt!1794711 (ListMap!4346 Nil!51626)) (= lambda!194285 lambda!194267))))

(assert (=> bs!1029109 (= (= lt!1794711 lt!1794623) (= lambda!194285 lambda!194269))))

(assert (=> bs!1029111 (= (= lt!1794711 (ListMap!4346 Nil!51626)) (= lambda!194285 lambda!194283))))

(assert (=> bs!1029112 (= (= lt!1794711 (ListMap!4346 Nil!51626)) (= lambda!194285 lambda!194276))))

(assert (=> bs!1029113 (= (= lt!1794711 lt!1794687) (= lambda!194285 lambda!194278))))

(assert (=> bs!1029113 (= (= lt!1794711 (ListMap!4346 Nil!51626)) (= lambda!194285 lambda!194277))))

(assert (=> bs!1029114 (= (= lt!1794711 (ListMap!4346 Nil!51626)) (= lambda!194285 lambda!194272))))

(assert (=> bs!1029115 (= (= lt!1794711 lt!1794670) (= lambda!194285 lambda!194279))))

(assert (=> bs!1029116 (not (= lambda!194285 lambda!194172))))

(assert (=> bs!1029117 (= (= lt!1794711 lt!1794636) (= lambda!194285 lambda!194275))))

(assert (=> b!4633303 true))

(declare-fun bs!1029118 () Bool)

(declare-fun d!1460481 () Bool)

(assert (= bs!1029118 (and d!1460481 b!4633276)))

(declare-fun lt!1794694 () ListMap!4345)

(declare-fun lambda!194286 () Int)

(assert (=> bs!1029118 (= (= lt!1794694 (ListMap!4346 Nil!51626)) (= lambda!194286 lambda!194273))))

(assert (=> bs!1029118 (= (= lt!1794694 lt!1794653) (= lambda!194286 lambda!194274))))

(declare-fun bs!1029119 () Bool)

(assert (= bs!1029119 (and d!1460481 d!1460393)))

(assert (=> bs!1029119 (= (= lt!1794694 lt!1794606) (= lambda!194286 lambda!194270))))

(declare-fun bs!1029120 () Bool)

(assert (= bs!1029120 (and d!1460481 b!4633265)))

(assert (=> bs!1029120 (= (= lt!1794694 (ListMap!4346 Nil!51626)) (= lambda!194286 lambda!194268))))

(declare-fun bs!1029121 () Bool)

(assert (= bs!1029121 (and d!1460481 b!4633303)))

(assert (=> bs!1029121 (= (= lt!1794694 (ListMap!4346 Nil!51626)) (= lambda!194286 lambda!194284))))

(declare-fun bs!1029122 () Bool)

(assert (= bs!1029122 (and d!1460481 b!4633266)))

(assert (=> bs!1029122 (= (= lt!1794694 (ListMap!4346 Nil!51626)) (= lambda!194286 lambda!194267))))

(assert (=> bs!1029120 (= (= lt!1794694 lt!1794623) (= lambda!194286 lambda!194269))))

(declare-fun bs!1029123 () Bool)

(assert (= bs!1029123 (and d!1460481 b!4633304)))

(assert (=> bs!1029123 (= (= lt!1794694 (ListMap!4346 Nil!51626)) (= lambda!194286 lambda!194283))))

(declare-fun bs!1029124 () Bool)

(assert (= bs!1029124 (and d!1460481 b!4633295)))

(assert (=> bs!1029124 (= (= lt!1794694 (ListMap!4346 Nil!51626)) (= lambda!194286 lambda!194276))))

(declare-fun bs!1029125 () Bool)

(assert (= bs!1029125 (and d!1460481 b!4633292)))

(assert (=> bs!1029125 (= (= lt!1794694 lt!1794687) (= lambda!194286 lambda!194278))))

(assert (=> bs!1029125 (= (= lt!1794694 (ListMap!4346 Nil!51626)) (= lambda!194286 lambda!194277))))

(assert (=> bs!1029121 (= (= lt!1794694 lt!1794711) (= lambda!194286 lambda!194285))))

(declare-fun bs!1029126 () Bool)

(assert (= bs!1029126 (and d!1460481 b!4633277)))

(assert (=> bs!1029126 (= (= lt!1794694 (ListMap!4346 Nil!51626)) (= lambda!194286 lambda!194272))))

(declare-fun bs!1029127 () Bool)

(assert (= bs!1029127 (and d!1460481 d!1460471)))

(assert (=> bs!1029127 (= (= lt!1794694 lt!1794670) (= lambda!194286 lambda!194279))))

(declare-fun bs!1029128 () Bool)

(assert (= bs!1029128 (and d!1460481 d!1460341)))

(assert (=> bs!1029128 (not (= lambda!194286 lambda!194172))))

(declare-fun bs!1029129 () Bool)

(assert (= bs!1029129 (and d!1460481 d!1460459)))

(assert (=> bs!1029129 (= (= lt!1794694 lt!1794636) (= lambda!194286 lambda!194275))))

(assert (=> d!1460481 true))

(declare-fun b!4633302 () Bool)

(declare-fun res!1944365 () Bool)

(declare-fun e!2890332 () Bool)

(assert (=> b!4633302 (=> (not res!1944365) (not e!2890332))))

(assert (=> b!4633302 (= res!1944365 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194286))))

(assert (=> d!1460481 e!2890332))

(declare-fun res!1944364 () Bool)

(assert (=> d!1460481 (=> (not res!1944364) (not e!2890332))))

(assert (=> d!1460481 (= res!1944364 (forall!10880 lt!1794245 lambda!194286))))

(declare-fun e!2890331 () ListMap!4345)

(assert (=> d!1460481 (= lt!1794694 e!2890331)))

(declare-fun c!793046 () Bool)

(assert (=> d!1460481 (= c!793046 ((_ is Nil!51626) lt!1794245))))

(assert (=> d!1460481 (noDuplicateKeys!1538 lt!1794245)))

(assert (=> d!1460481 (= (addToMapMapFromBucket!999 lt!1794245 (ListMap!4346 Nil!51626)) lt!1794694)))

(assert (=> b!4633303 (= e!2890331 lt!1794711)))

(declare-fun lt!1794706 () ListMap!4345)

(assert (=> b!4633303 (= lt!1794706 (+!1904 (ListMap!4346 Nil!51626) (h!57704 lt!1794245)))))

(assert (=> b!4633303 (= lt!1794711 (addToMapMapFromBucket!999 (t!358810 lt!1794245) (+!1904 (ListMap!4346 Nil!51626) (h!57704 lt!1794245))))))

(declare-fun lt!1794703 () Unit!113755)

(declare-fun call!323347 () Unit!113755)

(assert (=> b!4633303 (= lt!1794703 call!323347)))

(assert (=> b!4633303 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194284)))

(declare-fun lt!1794714 () Unit!113755)

(assert (=> b!4633303 (= lt!1794714 lt!1794703)))

(assert (=> b!4633303 (forall!10880 (toList!5041 lt!1794706) lambda!194285)))

(declare-fun lt!1794698 () Unit!113755)

(declare-fun Unit!113829 () Unit!113755)

(assert (=> b!4633303 (= lt!1794698 Unit!113829)))

(assert (=> b!4633303 (forall!10880 (t!358810 lt!1794245) lambda!194285)))

(declare-fun lt!1794708 () Unit!113755)

(declare-fun Unit!113830 () Unit!113755)

(assert (=> b!4633303 (= lt!1794708 Unit!113830)))

(declare-fun lt!1794710 () Unit!113755)

(declare-fun Unit!113831 () Unit!113755)

(assert (=> b!4633303 (= lt!1794710 Unit!113831)))

(declare-fun lt!1794704 () Unit!113755)

(assert (=> b!4633303 (= lt!1794704 (forallContained!3112 (toList!5041 lt!1794706) lambda!194285 (h!57704 lt!1794245)))))

(assert (=> b!4633303 (contains!14729 lt!1794706 (_1!29593 (h!57704 lt!1794245)))))

(declare-fun lt!1794712 () Unit!113755)

(declare-fun Unit!113832 () Unit!113755)

(assert (=> b!4633303 (= lt!1794712 Unit!113832)))

(assert (=> b!4633303 (contains!14729 lt!1794711 (_1!29593 (h!57704 lt!1794245)))))

(declare-fun lt!1794702 () Unit!113755)

(declare-fun Unit!113833 () Unit!113755)

(assert (=> b!4633303 (= lt!1794702 Unit!113833)))

(assert (=> b!4633303 (forall!10880 lt!1794245 lambda!194285)))

(declare-fun lt!1794701 () Unit!113755)

(declare-fun Unit!113834 () Unit!113755)

(assert (=> b!4633303 (= lt!1794701 Unit!113834)))

(declare-fun call!323345 () Bool)

(assert (=> b!4633303 call!323345))

(declare-fun lt!1794705 () Unit!113755)

(declare-fun Unit!113835 () Unit!113755)

(assert (=> b!4633303 (= lt!1794705 Unit!113835)))

(declare-fun lt!1794707 () Unit!113755)

(declare-fun Unit!113836 () Unit!113755)

(assert (=> b!4633303 (= lt!1794707 Unit!113836)))

(declare-fun lt!1794696 () Unit!113755)

(assert (=> b!4633303 (= lt!1794696 (addForallContainsKeyThenBeforeAdding!533 (ListMap!4346 Nil!51626) lt!1794711 (_1!29593 (h!57704 lt!1794245)) (_2!29593 (h!57704 lt!1794245))))))

(assert (=> b!4633303 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194285)))

(declare-fun lt!1794709 () Unit!113755)

(assert (=> b!4633303 (= lt!1794709 lt!1794696)))

(assert (=> b!4633303 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194285)))

(declare-fun lt!1794713 () Unit!113755)

(declare-fun Unit!113837 () Unit!113755)

(assert (=> b!4633303 (= lt!1794713 Unit!113837)))

(declare-fun res!1944363 () Bool)

(declare-fun call!323346 () Bool)

(assert (=> b!4633303 (= res!1944363 call!323346)))

(declare-fun e!2890333 () Bool)

(assert (=> b!4633303 (=> (not res!1944363) (not e!2890333))))

(assert (=> b!4633303 e!2890333))

(declare-fun lt!1794695 () Unit!113755)

(declare-fun Unit!113838 () Unit!113755)

(assert (=> b!4633303 (= lt!1794695 Unit!113838)))

(assert (=> b!4633304 (= e!2890331 (ListMap!4346 Nil!51626))))

(declare-fun lt!1794699 () Unit!113755)

(assert (=> b!4633304 (= lt!1794699 call!323347)))

(assert (=> b!4633304 call!323345))

(declare-fun lt!1794700 () Unit!113755)

(assert (=> b!4633304 (= lt!1794700 lt!1794699)))

(assert (=> b!4633304 call!323346))

(declare-fun lt!1794697 () Unit!113755)

(declare-fun Unit!113839 () Unit!113755)

(assert (=> b!4633304 (= lt!1794697 Unit!113839)))

(declare-fun b!4633305 () Bool)

(assert (=> b!4633305 (= e!2890333 (forall!10880 (toList!5041 (ListMap!4346 Nil!51626)) lambda!194285))))

(declare-fun b!4633306 () Bool)

(assert (=> b!4633306 (= e!2890332 (invariantList!1232 (toList!5041 lt!1794694)))))

(declare-fun bm!323340 () Bool)

(assert (=> bm!323340 (= call!323347 (lemmaContainsAllItsOwnKeys!534 (ListMap!4346 Nil!51626)))))

(declare-fun bm!323341 () Bool)

(assert (=> bm!323341 (= call!323346 (forall!10880 (ite c!793046 (toList!5041 (ListMap!4346 Nil!51626)) lt!1794245) (ite c!793046 lambda!194283 lambda!194285)))))

(declare-fun bm!323342 () Bool)

(assert (=> bm!323342 (= call!323345 (forall!10880 (ite c!793046 (toList!5041 (ListMap!4346 Nil!51626)) (toList!5041 lt!1794706)) (ite c!793046 lambda!194283 lambda!194285)))))

(assert (= (and d!1460481 c!793046) b!4633304))

(assert (= (and d!1460481 (not c!793046)) b!4633303))

(assert (= (and b!4633303 res!1944363) b!4633305))

(assert (= (or b!4633304 b!4633303) bm!323340))

(assert (= (or b!4633304 b!4633303) bm!323341))

(assert (= (or b!4633304 b!4633303) bm!323342))

(assert (= (and d!1460481 res!1944364) b!4633302))

(assert (= (and b!4633302 res!1944365) b!4633306))

(declare-fun m!5486123 () Bool)

(assert (=> bm!323341 m!5486123))

(declare-fun m!5486125 () Bool)

(assert (=> b!4633302 m!5486125))

(assert (=> bm!323340 m!5485943))

(declare-fun m!5486127 () Bool)

(assert (=> b!4633306 m!5486127))

(declare-fun m!5486129 () Bool)

(assert (=> b!4633305 m!5486129))

(declare-fun m!5486131 () Bool)

(assert (=> d!1460481 m!5486131))

(assert (=> d!1460481 m!5485533))

(declare-fun m!5486133 () Bool)

(assert (=> b!4633303 m!5486133))

(declare-fun m!5486135 () Bool)

(assert (=> b!4633303 m!5486135))

(declare-fun m!5486137 () Bool)

(assert (=> b!4633303 m!5486137))

(declare-fun m!5486139 () Bool)

(assert (=> b!4633303 m!5486139))

(declare-fun m!5486141 () Bool)

(assert (=> b!4633303 m!5486141))

(assert (=> b!4633303 m!5486129))

(declare-fun m!5486143 () Bool)

(assert (=> b!4633303 m!5486143))

(assert (=> b!4633303 m!5486135))

(declare-fun m!5486145 () Bool)

(assert (=> b!4633303 m!5486145))

(declare-fun m!5486147 () Bool)

(assert (=> b!4633303 m!5486147))

(declare-fun m!5486149 () Bool)

(assert (=> b!4633303 m!5486149))

(assert (=> b!4633303 m!5486129))

(declare-fun m!5486151 () Bool)

(assert (=> b!4633303 m!5486151))

(declare-fun m!5486153 () Bool)

(assert (=> bm!323342 m!5486153))

(assert (=> b!4633044 d!1460481))

(declare-fun d!1460487 () Bool)

(assert (=> d!1460487 (= (eq!853 (addToMapMapFromBucket!999 (Cons!51626 lt!1794230 lt!1794245) (ListMap!4346 Nil!51626)) (+!1904 (addToMapMapFromBucket!999 lt!1794245 (ListMap!4346 Nil!51626)) lt!1794230)) (= (content!8880 (toList!5041 (addToMapMapFromBucket!999 (Cons!51626 lt!1794230 lt!1794245) (ListMap!4346 Nil!51626)))) (content!8880 (toList!5041 (+!1904 (addToMapMapFromBucket!999 lt!1794245 (ListMap!4346 Nil!51626)) lt!1794230)))))))

(declare-fun bs!1029131 () Bool)

(assert (= bs!1029131 d!1460487))

(declare-fun m!5486155 () Bool)

(assert (=> bs!1029131 m!5486155))

(declare-fun m!5486157 () Bool)

(assert (=> bs!1029131 m!5486157))

(assert (=> b!4633044 d!1460487))

(declare-fun bs!1029133 () Bool)

(declare-fun d!1460489 () Bool)

(assert (= bs!1029133 (and d!1460489 b!4633030)))

(declare-fun lambda!194289 () Int)

(assert (=> bs!1029133 (= lambda!194289 lambda!194166)))

(declare-fun lt!1794746 () ListMap!4345)

(assert (=> d!1460489 (invariantList!1232 (toList!5041 lt!1794746))))

(declare-fun e!2890367 () ListMap!4345)

(assert (=> d!1460489 (= lt!1794746 e!2890367)))

(declare-fun c!793062 () Bool)

(assert (=> d!1460489 (= c!793062 ((_ is Cons!51627) (Cons!51627 (tuple2!52601 hash!414 lt!1794245) Nil!51627)))))

(assert (=> d!1460489 (forall!10878 (Cons!51627 (tuple2!52601 hash!414 lt!1794245) Nil!51627) lambda!194289)))

(assert (=> d!1460489 (= (extractMap!1594 (Cons!51627 (tuple2!52601 hash!414 lt!1794245) Nil!51627)) lt!1794746)))

(declare-fun b!4633360 () Bool)

(assert (=> b!4633360 (= e!2890367 (addToMapMapFromBucket!999 (_2!29594 (h!57705 (Cons!51627 (tuple2!52601 hash!414 lt!1794245) Nil!51627))) (extractMap!1594 (t!358811 (Cons!51627 (tuple2!52601 hash!414 lt!1794245) Nil!51627)))))))

(declare-fun b!4633361 () Bool)

(assert (=> b!4633361 (= e!2890367 (ListMap!4346 Nil!51626))))

(assert (= (and d!1460489 c!793062) b!4633360))

(assert (= (and d!1460489 (not c!793062)) b!4633361))

(declare-fun m!5486217 () Bool)

(assert (=> d!1460489 m!5486217))

(declare-fun m!5486219 () Bool)

(assert (=> d!1460489 m!5486219))

(declare-fun m!5486221 () Bool)

(assert (=> b!4633360 m!5486221))

(assert (=> b!4633360 m!5486221))

(declare-fun m!5486223 () Bool)

(assert (=> b!4633360 m!5486223))

(assert (=> b!4633044 d!1460489))

(declare-fun d!1460511 () Bool)

(declare-fun e!2890368 () Bool)

(assert (=> d!1460511 e!2890368))

(declare-fun res!1944389 () Bool)

(assert (=> d!1460511 (=> (not res!1944389) (not e!2890368))))

(declare-fun lt!1794748 () ListMap!4345)

(assert (=> d!1460511 (= res!1944389 (contains!14729 lt!1794748 (_1!29593 lt!1794226)))))

(declare-fun lt!1794747 () List!51750)

(assert (=> d!1460511 (= lt!1794748 (ListMap!4346 lt!1794747))))

(declare-fun lt!1794750 () Unit!113755)

(declare-fun lt!1794749 () Unit!113755)

(assert (=> d!1460511 (= lt!1794750 lt!1794749)))

(assert (=> d!1460511 (= (getValueByKey!1506 lt!1794747 (_1!29593 lt!1794226)) (Some!11677 (_2!29593 lt!1794226)))))

(assert (=> d!1460511 (= lt!1794749 (lemmaContainsTupThenGetReturnValue!876 lt!1794747 (_1!29593 lt!1794226) (_2!29593 lt!1794226)))))

(assert (=> d!1460511 (= lt!1794747 (insertNoDuplicatedKeys!384 (toList!5041 (addToMapMapFromBucket!999 lt!1794247 (ListMap!4346 Nil!51626))) (_1!29593 lt!1794226) (_2!29593 lt!1794226)))))

(assert (=> d!1460511 (= (+!1904 (addToMapMapFromBucket!999 lt!1794247 (ListMap!4346 Nil!51626)) lt!1794226) lt!1794748)))

(declare-fun b!4633362 () Bool)

(declare-fun res!1944390 () Bool)

(assert (=> b!4633362 (=> (not res!1944390) (not e!2890368))))

(assert (=> b!4633362 (= res!1944390 (= (getValueByKey!1506 (toList!5041 lt!1794748) (_1!29593 lt!1794226)) (Some!11677 (_2!29593 lt!1794226))))))

(declare-fun b!4633363 () Bool)

(assert (=> b!4633363 (= e!2890368 (contains!14734 (toList!5041 lt!1794748) lt!1794226))))

(assert (= (and d!1460511 res!1944389) b!4633362))

(assert (= (and b!4633362 res!1944390) b!4633363))

(declare-fun m!5486225 () Bool)

(assert (=> d!1460511 m!5486225))

(declare-fun m!5486227 () Bool)

(assert (=> d!1460511 m!5486227))

(declare-fun m!5486229 () Bool)

(assert (=> d!1460511 m!5486229))

(declare-fun m!5486231 () Bool)

(assert (=> d!1460511 m!5486231))

(declare-fun m!5486233 () Bool)

(assert (=> b!4633362 m!5486233))

(declare-fun m!5486235 () Bool)

(assert (=> b!4633363 m!5486235))

(assert (=> b!4633044 d!1460511))

(declare-fun bs!1029134 () Bool)

(declare-fun d!1460513 () Bool)

(assert (= bs!1029134 (and d!1460513 b!4633030)))

(declare-fun lambda!194290 () Int)

(assert (=> bs!1029134 (= lambda!194290 lambda!194166)))

(declare-fun bs!1029135 () Bool)

(assert (= bs!1029135 (and d!1460513 d!1460489)))

(assert (=> bs!1029135 (= lambda!194290 lambda!194289)))

(declare-fun lt!1794751 () ListMap!4345)

(assert (=> d!1460513 (invariantList!1232 (toList!5041 lt!1794751))))

(declare-fun e!2890369 () ListMap!4345)

(assert (=> d!1460513 (= lt!1794751 e!2890369)))

(declare-fun c!793063 () Bool)

(assert (=> d!1460513 (= c!793063 ((_ is Cons!51627) lt!1794214))))

(assert (=> d!1460513 (forall!10878 lt!1794214 lambda!194290)))

(assert (=> d!1460513 (= (extractMap!1594 lt!1794214) lt!1794751)))

(declare-fun b!4633364 () Bool)

(assert (=> b!4633364 (= e!2890369 (addToMapMapFromBucket!999 (_2!29594 (h!57705 lt!1794214)) (extractMap!1594 (t!358811 lt!1794214))))))

(declare-fun b!4633365 () Bool)

(assert (=> b!4633365 (= e!2890369 (ListMap!4346 Nil!51626))))

(assert (= (and d!1460513 c!793063) b!4633364))

(assert (= (and d!1460513 (not c!793063)) b!4633365))

(declare-fun m!5486237 () Bool)

(assert (=> d!1460513 m!5486237))

(declare-fun m!5486239 () Bool)

(assert (=> d!1460513 m!5486239))

(declare-fun m!5486241 () Bool)

(assert (=> b!4633364 m!5486241))

(assert (=> b!4633364 m!5486241))

(declare-fun m!5486243 () Bool)

(assert (=> b!4633364 m!5486243))

(assert (=> b!4633044 d!1460513))

(declare-fun bs!1029136 () Bool)

(declare-fun d!1460515 () Bool)

(assert (= bs!1029136 (and d!1460515 b!4633030)))

(declare-fun lambda!194293 () Int)

(assert (=> bs!1029136 (= lambda!194293 lambda!194166)))

(declare-fun bs!1029137 () Bool)

(assert (= bs!1029137 (and d!1460515 d!1460489)))

(assert (=> bs!1029137 (= lambda!194293 lambda!194289)))

(declare-fun bs!1029138 () Bool)

(assert (= bs!1029138 (and d!1460515 d!1460513)))

(assert (=> bs!1029138 (= lambda!194293 lambda!194290)))

(assert (=> d!1460515 (contains!14729 (extractMap!1594 (toList!5042 (ListLongMap!3632 lt!1794214))) key!4968)))

(declare-fun lt!1794757 () Unit!113755)

(declare-fun choose!31576 (ListLongMap!3631 K!12995 Hashable!5935) Unit!113755)

(assert (=> d!1460515 (= lt!1794757 (choose!31576 (ListLongMap!3632 lt!1794214) key!4968 hashF!1389))))

(assert (=> d!1460515 (forall!10878 (toList!5042 (ListLongMap!3632 lt!1794214)) lambda!194293)))

(assert (=> d!1460515 (= (lemmaListContainsThenExtractedMapContains!356 (ListLongMap!3632 lt!1794214) key!4968 hashF!1389) lt!1794757)))

(declare-fun bs!1029140 () Bool)

(assert (= bs!1029140 d!1460515))

(declare-fun m!5486251 () Bool)

(assert (=> bs!1029140 m!5486251))

(assert (=> bs!1029140 m!5486251))

(declare-fun m!5486255 () Bool)

(assert (=> bs!1029140 m!5486255))

(declare-fun m!5486257 () Bool)

(assert (=> bs!1029140 m!5486257))

(declare-fun m!5486259 () Bool)

(assert (=> bs!1029140 m!5486259))

(assert (=> b!4633044 d!1460515))

(declare-fun d!1460519 () Bool)

(assert (=> d!1460519 (= (eq!853 (addToMapMapFromBucket!999 (Cons!51626 lt!1794226 lt!1794247) (ListMap!4346 Nil!51626)) (+!1904 (addToMapMapFromBucket!999 lt!1794247 (ListMap!4346 Nil!51626)) lt!1794226)) (= (content!8880 (toList!5041 (addToMapMapFromBucket!999 (Cons!51626 lt!1794226 lt!1794247) (ListMap!4346 Nil!51626)))) (content!8880 (toList!5041 (+!1904 (addToMapMapFromBucket!999 lt!1794247 (ListMap!4346 Nil!51626)) lt!1794226)))))))

(declare-fun bs!1029141 () Bool)

(assert (= bs!1029141 d!1460519))

(declare-fun m!5486261 () Bool)

(assert (=> bs!1029141 m!5486261))

(declare-fun m!5486263 () Bool)

(assert (=> bs!1029141 m!5486263))

(assert (=> b!4633044 d!1460519))

(declare-fun d!1460521 () Bool)

(declare-fun res!1944395 () Bool)

(declare-fun e!2890374 () Bool)

(assert (=> d!1460521 (=> res!1944395 e!2890374)))

(assert (=> d!1460521 (= res!1944395 (not ((_ is Cons!51626) newBucket!224)))))

(assert (=> d!1460521 (= (noDuplicateKeys!1538 newBucket!224) e!2890374)))

(declare-fun b!4633370 () Bool)

(declare-fun e!2890375 () Bool)

(assert (=> b!4633370 (= e!2890374 e!2890375)))

(declare-fun res!1944396 () Bool)

(assert (=> b!4633370 (=> (not res!1944396) (not e!2890375))))

(assert (=> b!4633370 (= res!1944396 (not (containsKey!2534 (t!358810 newBucket!224) (_1!29593 (h!57704 newBucket!224)))))))

(declare-fun b!4633371 () Bool)

(assert (=> b!4633371 (= e!2890375 (noDuplicateKeys!1538 (t!358810 newBucket!224)))))

(assert (= (and d!1460521 (not res!1944395)) b!4633370))

(assert (= (and b!4633370 res!1944396) b!4633371))

(declare-fun m!5486265 () Bool)

(assert (=> b!4633370 m!5486265))

(declare-fun m!5486267 () Bool)

(assert (=> b!4633371 m!5486267))

(assert (=> b!4633033 d!1460521))

(declare-fun d!1460523 () Bool)

(assert (=> d!1460523 (= (eq!853 lt!1794215 (+!1904 lt!1794217 (h!57704 oldBucket!40))) (= (content!8880 (toList!5041 lt!1794215)) (content!8880 (toList!5041 (+!1904 lt!1794217 (h!57704 oldBucket!40))))))))

(declare-fun bs!1029142 () Bool)

(assert (= bs!1029142 d!1460523))

(declare-fun m!5486269 () Bool)

(assert (=> bs!1029142 m!5486269))

(declare-fun m!5486271 () Bool)

(assert (=> bs!1029142 m!5486271))

(assert (=> b!4633038 d!1460523))

(declare-fun d!1460525 () Bool)

(declare-fun e!2890376 () Bool)

(assert (=> d!1460525 e!2890376))

(declare-fun res!1944397 () Bool)

(assert (=> d!1460525 (=> (not res!1944397) (not e!2890376))))

(declare-fun lt!1794759 () ListMap!4345)

(assert (=> d!1460525 (= res!1944397 (contains!14729 lt!1794759 (_1!29593 (h!57704 oldBucket!40))))))

(declare-fun lt!1794758 () List!51750)

(assert (=> d!1460525 (= lt!1794759 (ListMap!4346 lt!1794758))))

(declare-fun lt!1794761 () Unit!113755)

(declare-fun lt!1794760 () Unit!113755)

(assert (=> d!1460525 (= lt!1794761 lt!1794760)))

(assert (=> d!1460525 (= (getValueByKey!1506 lt!1794758 (_1!29593 (h!57704 oldBucket!40))) (Some!11677 (_2!29593 (h!57704 oldBucket!40))))))

(assert (=> d!1460525 (= lt!1794760 (lemmaContainsTupThenGetReturnValue!876 lt!1794758 (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40))))))

(assert (=> d!1460525 (= lt!1794758 (insertNoDuplicatedKeys!384 (toList!5041 lt!1794217) (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40))))))

(assert (=> d!1460525 (= (+!1904 lt!1794217 (h!57704 oldBucket!40)) lt!1794759)))

(declare-fun b!4633372 () Bool)

(declare-fun res!1944398 () Bool)

(assert (=> b!4633372 (=> (not res!1944398) (not e!2890376))))

(assert (=> b!4633372 (= res!1944398 (= (getValueByKey!1506 (toList!5041 lt!1794759) (_1!29593 (h!57704 oldBucket!40))) (Some!11677 (_2!29593 (h!57704 oldBucket!40)))))))

(declare-fun b!4633373 () Bool)

(assert (=> b!4633373 (= e!2890376 (contains!14734 (toList!5041 lt!1794759) (h!57704 oldBucket!40)))))

(assert (= (and d!1460525 res!1944397) b!4633372))

(assert (= (and b!4633372 res!1944398) b!4633373))

(declare-fun m!5486273 () Bool)

(assert (=> d!1460525 m!5486273))

(declare-fun m!5486275 () Bool)

(assert (=> d!1460525 m!5486275))

(declare-fun m!5486277 () Bool)

(assert (=> d!1460525 m!5486277))

(declare-fun m!5486279 () Bool)

(assert (=> d!1460525 m!5486279))

(declare-fun m!5486281 () Bool)

(assert (=> b!4633372 m!5486281))

(declare-fun m!5486283 () Bool)

(assert (=> b!4633373 m!5486283))

(assert (=> b!4633038 d!1460525))

(declare-fun d!1460527 () Bool)

(assert (=> d!1460527 (= (eq!853 lt!1794215 (+!1904 lt!1794217 lt!1794226)) (= (content!8880 (toList!5041 lt!1794215)) (content!8880 (toList!5041 (+!1904 lt!1794217 lt!1794226)))))))

(declare-fun bs!1029143 () Bool)

(assert (= bs!1029143 d!1460527))

(assert (=> bs!1029143 m!5486269))

(declare-fun m!5486285 () Bool)

(assert (=> bs!1029143 m!5486285))

(assert (=> b!4633027 d!1460527))

(declare-fun d!1460529 () Bool)

(declare-fun e!2890377 () Bool)

(assert (=> d!1460529 e!2890377))

(declare-fun res!1944399 () Bool)

(assert (=> d!1460529 (=> (not res!1944399) (not e!2890377))))

(declare-fun lt!1794763 () ListMap!4345)

(assert (=> d!1460529 (= res!1944399 (contains!14729 lt!1794763 (_1!29593 lt!1794226)))))

(declare-fun lt!1794762 () List!51750)

(assert (=> d!1460529 (= lt!1794763 (ListMap!4346 lt!1794762))))

(declare-fun lt!1794765 () Unit!113755)

(declare-fun lt!1794764 () Unit!113755)

(assert (=> d!1460529 (= lt!1794765 lt!1794764)))

(assert (=> d!1460529 (= (getValueByKey!1506 lt!1794762 (_1!29593 lt!1794226)) (Some!11677 (_2!29593 lt!1794226)))))

(assert (=> d!1460529 (= lt!1794764 (lemmaContainsTupThenGetReturnValue!876 lt!1794762 (_1!29593 lt!1794226) (_2!29593 lt!1794226)))))

(assert (=> d!1460529 (= lt!1794762 (insertNoDuplicatedKeys!384 (toList!5041 lt!1794217) (_1!29593 lt!1794226) (_2!29593 lt!1794226)))))

(assert (=> d!1460529 (= (+!1904 lt!1794217 lt!1794226) lt!1794763)))

(declare-fun b!4633374 () Bool)

(declare-fun res!1944400 () Bool)

(assert (=> b!4633374 (=> (not res!1944400) (not e!2890377))))

(assert (=> b!4633374 (= res!1944400 (= (getValueByKey!1506 (toList!5041 lt!1794763) (_1!29593 lt!1794226)) (Some!11677 (_2!29593 lt!1794226))))))

(declare-fun b!4633375 () Bool)

(assert (=> b!4633375 (= e!2890377 (contains!14734 (toList!5041 lt!1794763) lt!1794226))))

(assert (= (and d!1460529 res!1944399) b!4633374))

(assert (= (and b!4633374 res!1944400) b!4633375))

(declare-fun m!5486287 () Bool)

(assert (=> d!1460529 m!5486287))

(declare-fun m!5486289 () Bool)

(assert (=> d!1460529 m!5486289))

(declare-fun m!5486291 () Bool)

(assert (=> d!1460529 m!5486291))

(declare-fun m!5486293 () Bool)

(assert (=> d!1460529 m!5486293))

(declare-fun m!5486295 () Bool)

(assert (=> b!4633374 m!5486295))

(declare-fun m!5486297 () Bool)

(assert (=> b!4633375 m!5486297))

(assert (=> b!4633027 d!1460529))

(declare-fun bs!1029144 () Bool)

(declare-fun d!1460531 () Bool)

(assert (= bs!1029144 (and d!1460531 b!4633030)))

(declare-fun lambda!194294 () Int)

(assert (=> bs!1029144 (= lambda!194294 lambda!194166)))

(declare-fun bs!1029145 () Bool)

(assert (= bs!1029145 (and d!1460531 d!1460489)))

(assert (=> bs!1029145 (= lambda!194294 lambda!194289)))

(declare-fun bs!1029146 () Bool)

(assert (= bs!1029146 (and d!1460531 d!1460513)))

(assert (=> bs!1029146 (= lambda!194294 lambda!194290)))

(declare-fun bs!1029147 () Bool)

(assert (= bs!1029147 (and d!1460531 d!1460515)))

(assert (=> bs!1029147 (= lambda!194294 lambda!194293)))

(declare-fun lt!1794766 () ListMap!4345)

(assert (=> d!1460531 (invariantList!1232 (toList!5041 lt!1794766))))

(declare-fun e!2890378 () ListMap!4345)

(assert (=> d!1460531 (= lt!1794766 e!2890378)))

(declare-fun c!793064 () Bool)

(assert (=> d!1460531 (= c!793064 ((_ is Cons!51627) (Cons!51627 (tuple2!52601 hash!414 lt!1794247) Nil!51627)))))

(assert (=> d!1460531 (forall!10878 (Cons!51627 (tuple2!52601 hash!414 lt!1794247) Nil!51627) lambda!194294)))

(assert (=> d!1460531 (= (extractMap!1594 (Cons!51627 (tuple2!52601 hash!414 lt!1794247) Nil!51627)) lt!1794766)))

(declare-fun b!4633376 () Bool)

(assert (=> b!4633376 (= e!2890378 (addToMapMapFromBucket!999 (_2!29594 (h!57705 (Cons!51627 (tuple2!52601 hash!414 lt!1794247) Nil!51627))) (extractMap!1594 (t!358811 (Cons!51627 (tuple2!52601 hash!414 lt!1794247) Nil!51627)))))))

(declare-fun b!4633377 () Bool)

(assert (=> b!4633377 (= e!2890378 (ListMap!4346 Nil!51626))))

(assert (= (and d!1460531 c!793064) b!4633376))

(assert (= (and d!1460531 (not c!793064)) b!4633377))

(declare-fun m!5486299 () Bool)

(assert (=> d!1460531 m!5486299))

(declare-fun m!5486301 () Bool)

(assert (=> d!1460531 m!5486301))

(declare-fun m!5486303 () Bool)

(assert (=> b!4633376 m!5486303))

(assert (=> b!4633376 m!5486303))

(declare-fun m!5486305 () Bool)

(assert (=> b!4633376 m!5486305))

(assert (=> b!4633027 d!1460531))

(declare-fun bs!1029148 () Bool)

(declare-fun d!1460533 () Bool)

(assert (= bs!1029148 (and d!1460533 d!1460531)))

(declare-fun lambda!194295 () Int)

(assert (=> bs!1029148 (= lambda!194295 lambda!194294)))

(declare-fun bs!1029149 () Bool)

(assert (= bs!1029149 (and d!1460533 d!1460489)))

(assert (=> bs!1029149 (= lambda!194295 lambda!194289)))

(declare-fun bs!1029150 () Bool)

(assert (= bs!1029150 (and d!1460533 d!1460515)))

(assert (=> bs!1029150 (= lambda!194295 lambda!194293)))

(declare-fun bs!1029151 () Bool)

(assert (= bs!1029151 (and d!1460533 d!1460513)))

(assert (=> bs!1029151 (= lambda!194295 lambda!194290)))

(declare-fun bs!1029152 () Bool)

(assert (= bs!1029152 (and d!1460533 b!4633030)))

(assert (=> bs!1029152 (= lambda!194295 lambda!194166)))

(declare-fun lt!1794767 () ListMap!4345)

(assert (=> d!1460533 (invariantList!1232 (toList!5041 lt!1794767))))

(declare-fun e!2890379 () ListMap!4345)

(assert (=> d!1460533 (= lt!1794767 e!2890379)))

(declare-fun c!793065 () Bool)

(assert (=> d!1460533 (= c!793065 ((_ is Cons!51627) (Cons!51627 (tuple2!52601 hash!414 newBucket!224) Nil!51627)))))

(assert (=> d!1460533 (forall!10878 (Cons!51627 (tuple2!52601 hash!414 newBucket!224) Nil!51627) lambda!194295)))

(assert (=> d!1460533 (= (extractMap!1594 (Cons!51627 (tuple2!52601 hash!414 newBucket!224) Nil!51627)) lt!1794767)))

(declare-fun b!4633378 () Bool)

(assert (=> b!4633378 (= e!2890379 (addToMapMapFromBucket!999 (_2!29594 (h!57705 (Cons!51627 (tuple2!52601 hash!414 newBucket!224) Nil!51627))) (extractMap!1594 (t!358811 (Cons!51627 (tuple2!52601 hash!414 newBucket!224) Nil!51627)))))))

(declare-fun b!4633379 () Bool)

(assert (=> b!4633379 (= e!2890379 (ListMap!4346 Nil!51626))))

(assert (= (and d!1460533 c!793065) b!4633378))

(assert (= (and d!1460533 (not c!793065)) b!4633379))

(declare-fun m!5486307 () Bool)

(assert (=> d!1460533 m!5486307))

(declare-fun m!5486309 () Bool)

(assert (=> d!1460533 m!5486309))

(declare-fun m!5486311 () Bool)

(assert (=> b!4633378 m!5486311))

(assert (=> b!4633378 m!5486311))

(declare-fun m!5486313 () Bool)

(assert (=> b!4633378 m!5486313))

(assert (=> b!4633027 d!1460533))

(declare-fun bs!1029153 () Bool)

(declare-fun d!1460535 () Bool)

(assert (= bs!1029153 (and d!1460535 b!4633276)))

(declare-fun lambda!194296 () Int)

(assert (=> bs!1029153 (not (= lambda!194296 lambda!194273))))

(assert (=> bs!1029153 (not (= lambda!194296 lambda!194274))))

(declare-fun bs!1029154 () Bool)

(assert (= bs!1029154 (and d!1460535 d!1460481)))

(assert (=> bs!1029154 (not (= lambda!194296 lambda!194286))))

(declare-fun bs!1029155 () Bool)

(assert (= bs!1029155 (and d!1460535 d!1460393)))

(assert (=> bs!1029155 (not (= lambda!194296 lambda!194270))))

(declare-fun bs!1029156 () Bool)

(assert (= bs!1029156 (and d!1460535 b!4633265)))

(assert (=> bs!1029156 (not (= lambda!194296 lambda!194268))))

(declare-fun bs!1029157 () Bool)

(assert (= bs!1029157 (and d!1460535 b!4633303)))

(assert (=> bs!1029157 (not (= lambda!194296 lambda!194284))))

(declare-fun bs!1029158 () Bool)

(assert (= bs!1029158 (and d!1460535 b!4633266)))

(assert (=> bs!1029158 (not (= lambda!194296 lambda!194267))))

(assert (=> bs!1029156 (not (= lambda!194296 lambda!194269))))

(declare-fun bs!1029159 () Bool)

(assert (= bs!1029159 (and d!1460535 b!4633304)))

(assert (=> bs!1029159 (not (= lambda!194296 lambda!194283))))

(declare-fun bs!1029160 () Bool)

(assert (= bs!1029160 (and d!1460535 b!4633295)))

(assert (=> bs!1029160 (not (= lambda!194296 lambda!194276))))

(declare-fun bs!1029161 () Bool)

(assert (= bs!1029161 (and d!1460535 b!4633292)))

(assert (=> bs!1029161 (not (= lambda!194296 lambda!194278))))

(assert (=> bs!1029161 (not (= lambda!194296 lambda!194277))))

(assert (=> bs!1029157 (not (= lambda!194296 lambda!194285))))

(declare-fun bs!1029162 () Bool)

(assert (= bs!1029162 (and d!1460535 b!4633277)))

(assert (=> bs!1029162 (not (= lambda!194296 lambda!194272))))

(declare-fun bs!1029163 () Bool)

(assert (= bs!1029163 (and d!1460535 d!1460471)))

(assert (=> bs!1029163 (not (= lambda!194296 lambda!194279))))

(declare-fun bs!1029164 () Bool)

(assert (= bs!1029164 (and d!1460535 d!1460341)))

(assert (=> bs!1029164 (= lambda!194296 lambda!194172)))

(declare-fun bs!1029165 () Bool)

(assert (= bs!1029165 (and d!1460535 d!1460459)))

(assert (=> bs!1029165 (not (= lambda!194296 lambda!194275))))

(assert (=> d!1460535 true))

(assert (=> d!1460535 true))

(assert (=> d!1460535 (= (allKeysSameHash!1392 newBucket!224 hash!414 hashF!1389) (forall!10880 newBucket!224 lambda!194296))))

(declare-fun bs!1029166 () Bool)

(assert (= bs!1029166 d!1460535))

(declare-fun m!5486315 () Bool)

(assert (=> bs!1029166 m!5486315))

(assert (=> b!4633037 d!1460535))

(declare-fun b!4633381 () Bool)

(declare-fun e!2890380 () List!51750)

(declare-fun e!2890381 () List!51750)

(assert (=> b!4633381 (= e!2890380 e!2890381)))

(declare-fun c!793066 () Bool)

(assert (=> b!4633381 (= c!793066 ((_ is Cons!51626) (t!358810 oldBucket!40)))))

(declare-fun b!4633382 () Bool)

(assert (=> b!4633382 (= e!2890381 (Cons!51626 (h!57704 (t!358810 oldBucket!40)) (removePairForKey!1161 (t!358810 (t!358810 oldBucket!40)) key!4968)))))

(declare-fun d!1460537 () Bool)

(declare-fun lt!1794770 () List!51750)

(assert (=> d!1460537 (not (containsKey!2534 lt!1794770 key!4968))))

(assert (=> d!1460537 (= lt!1794770 e!2890380)))

(declare-fun c!793067 () Bool)

(assert (=> d!1460537 (= c!793067 (and ((_ is Cons!51626) (t!358810 oldBucket!40)) (= (_1!29593 (h!57704 (t!358810 oldBucket!40))) key!4968)))))

(assert (=> d!1460537 (noDuplicateKeys!1538 (t!358810 oldBucket!40))))

(assert (=> d!1460537 (= (removePairForKey!1161 (t!358810 oldBucket!40) key!4968) lt!1794770)))

(declare-fun b!4633380 () Bool)

(assert (=> b!4633380 (= e!2890380 (t!358810 (t!358810 oldBucket!40)))))

(declare-fun b!4633383 () Bool)

(assert (=> b!4633383 (= e!2890381 Nil!51626)))

(assert (= (and d!1460537 c!793067) b!4633380))

(assert (= (and d!1460537 (not c!793067)) b!4633381))

(assert (= (and b!4633381 c!793066) b!4633382))

(assert (= (and b!4633381 (not c!793066)) b!4633383))

(declare-fun m!5486317 () Bool)

(assert (=> b!4633382 m!5486317))

(declare-fun m!5486319 () Bool)

(assert (=> d!1460537 m!5486319))

(assert (=> d!1460537 m!5485503))

(assert (=> b!4633036 d!1460537))

(declare-fun d!1460539 () Bool)

(assert (=> d!1460539 (contains!14730 (toList!5042 lt!1794237) (tuple2!52601 lt!1794225 lt!1794243))))

(declare-fun lt!1794776 () Unit!113755)

(declare-fun choose!31578 (ListLongMap!3631 (_ BitVec 64) List!51750) Unit!113755)

(assert (=> d!1460539 (= lt!1794776 (choose!31578 lt!1794237 lt!1794225 lt!1794243))))

(assert (=> d!1460539 (contains!14731 lt!1794237 lt!1794225)))

(assert (=> d!1460539 (= (lemmaGetValueImpliesTupleContained!135 lt!1794237 lt!1794225 lt!1794243) lt!1794776)))

(declare-fun bs!1029169 () Bool)

(assert (= bs!1029169 d!1460539))

(declare-fun m!5486351 () Bool)

(assert (=> bs!1029169 m!5486351))

(declare-fun m!5486355 () Bool)

(assert (=> bs!1029169 m!5486355))

(assert (=> bs!1029169 m!5485363))

(assert (=> b!4633030 d!1460539))

(declare-fun d!1460549 () Bool)

(assert (=> d!1460549 (containsKey!2534 oldBucket!40 key!4968)))

(declare-fun lt!1794779 () Unit!113755)

(declare-fun choose!31579 (List!51750 K!12995 Hashable!5935) Unit!113755)

(assert (=> d!1460549 (= lt!1794779 (choose!31579 oldBucket!40 key!4968 hashF!1389))))

(assert (=> d!1460549 (noDuplicateKeys!1538 oldBucket!40)))

(assert (=> d!1460549 (= (lemmaGetPairDefinedThenContainsKey!84 oldBucket!40 key!4968 hashF!1389) lt!1794779)))

(declare-fun bs!1029171 () Bool)

(assert (= bs!1029171 d!1460549))

(assert (=> bs!1029171 m!5485355))

(declare-fun m!5486359 () Bool)

(assert (=> bs!1029171 m!5486359))

(assert (=> bs!1029171 m!5485299))

(assert (=> b!4633030 d!1460549))

(declare-fun d!1460551 () Bool)

(declare-fun lt!1794782 () Bool)

(declare-fun content!8882 (List!51751) (InoxSet tuple2!52600))

(assert (=> d!1460551 (= lt!1794782 (select (content!8882 lt!1794220) lt!1794236))))

(declare-fun e!2890393 () Bool)

(assert (=> d!1460551 (= lt!1794782 e!2890393)))

(declare-fun res!1944408 () Bool)

(assert (=> d!1460551 (=> (not res!1944408) (not e!2890393))))

(assert (=> d!1460551 (= res!1944408 ((_ is Cons!51627) lt!1794220))))

(assert (=> d!1460551 (= (contains!14730 lt!1794220 lt!1794236) lt!1794782)))

(declare-fun b!4633397 () Bool)

(declare-fun e!2890392 () Bool)

(assert (=> b!4633397 (= e!2890393 e!2890392)))

(declare-fun res!1944407 () Bool)

(assert (=> b!4633397 (=> res!1944407 e!2890392)))

(assert (=> b!4633397 (= res!1944407 (= (h!57705 lt!1794220) lt!1794236))))

(declare-fun b!4633398 () Bool)

(assert (=> b!4633398 (= e!2890392 (contains!14730 (t!358811 lt!1794220) lt!1794236))))

(assert (= (and d!1460551 res!1944408) b!4633397))

(assert (= (and b!4633397 (not res!1944407)) b!4633398))

(declare-fun m!5486361 () Bool)

(assert (=> d!1460551 m!5486361))

(declare-fun m!5486363 () Bool)

(assert (=> d!1460551 m!5486363))

(declare-fun m!5486365 () Bool)

(assert (=> b!4633398 m!5486365))

(assert (=> b!4633030 d!1460551))

(declare-fun d!1460553 () Bool)

(declare-fun res!1944413 () Bool)

(declare-fun e!2890398 () Bool)

(assert (=> d!1460553 (=> res!1944413 e!2890398)))

(assert (=> d!1460553 (= res!1944413 (and ((_ is Cons!51626) (t!358810 oldBucket!40)) (= (_1!29593 (h!57704 (t!358810 oldBucket!40))) key!4968)))))

(assert (=> d!1460553 (= (containsKey!2534 (t!358810 oldBucket!40) key!4968) e!2890398)))

(declare-fun b!4633403 () Bool)

(declare-fun e!2890399 () Bool)

(assert (=> b!4633403 (= e!2890398 e!2890399)))

(declare-fun res!1944414 () Bool)

(assert (=> b!4633403 (=> (not res!1944414) (not e!2890399))))

(assert (=> b!4633403 (= res!1944414 ((_ is Cons!51626) (t!358810 oldBucket!40)))))

(declare-fun b!4633404 () Bool)

(assert (=> b!4633404 (= e!2890399 (containsKey!2534 (t!358810 (t!358810 oldBucket!40)) key!4968))))

(assert (= (and d!1460553 (not res!1944413)) b!4633403))

(assert (= (and b!4633403 res!1944414) b!4633404))

(declare-fun m!5486367 () Bool)

(assert (=> b!4633404 m!5486367))

(assert (=> b!4633030 d!1460553))

(declare-fun d!1460555 () Bool)

(declare-fun res!1944415 () Bool)

(declare-fun e!2890400 () Bool)

(assert (=> d!1460555 (=> res!1944415 e!2890400)))

(assert (=> d!1460555 (= res!1944415 (and ((_ is Cons!51626) oldBucket!40) (= (_1!29593 (h!57704 oldBucket!40)) key!4968)))))

(assert (=> d!1460555 (= (containsKey!2534 oldBucket!40 key!4968) e!2890400)))

(declare-fun b!4633405 () Bool)

(declare-fun e!2890401 () Bool)

(assert (=> b!4633405 (= e!2890400 e!2890401)))

(declare-fun res!1944416 () Bool)

(assert (=> b!4633405 (=> (not res!1944416) (not e!2890401))))

(assert (=> b!4633405 (= res!1944416 ((_ is Cons!51626) oldBucket!40))))

(declare-fun b!4633406 () Bool)

(assert (=> b!4633406 (= e!2890401 (containsKey!2534 (t!358810 oldBucket!40) key!4968))))

(assert (= (and d!1460555 (not res!1944415)) b!4633405))

(assert (= (and b!4633405 res!1944416) b!4633406))

(assert (=> b!4633406 m!5485361))

(assert (=> b!4633030 d!1460555))

(declare-fun d!1460557 () Bool)

(declare-datatypes ((Option!11679 0))(
  ( (None!11678) (Some!11678 (v!45864 List!51750)) )
))
(declare-fun get!17147 (Option!11679) List!51750)

(declare-fun getValueByKey!1507 (List!51751 (_ BitVec 64)) Option!11679)

(assert (=> d!1460557 (= (apply!12203 lt!1794237 lt!1794225) (get!17147 (getValueByKey!1507 (toList!5042 lt!1794237) lt!1794225)))))

(declare-fun bs!1029172 () Bool)

(assert (= bs!1029172 d!1460557))

(declare-fun m!5486369 () Bool)

(assert (=> bs!1029172 m!5486369))

(assert (=> bs!1029172 m!5486369))

(declare-fun m!5486371 () Bool)

(assert (=> bs!1029172 m!5486371))

(assert (=> b!4633030 d!1460557))

(declare-fun d!1460559 () Bool)

(declare-fun isEmpty!28957 (Option!11676) Bool)

(assert (=> d!1460559 (= (isDefined!8941 (getPair!330 lt!1794243 key!4968)) (not (isEmpty!28957 (getPair!330 lt!1794243 key!4968))))))

(declare-fun bs!1029173 () Bool)

(assert (= bs!1029173 d!1460559))

(assert (=> bs!1029173 m!5485351))

(declare-fun m!5486373 () Bool)

(assert (=> bs!1029173 m!5486373))

(assert (=> b!4633030 d!1460559))

(declare-fun b!4633423 () Bool)

(declare-fun e!2890414 () Option!11676)

(declare-fun e!2890412 () Option!11676)

(assert (=> b!4633423 (= e!2890414 e!2890412)))

(declare-fun c!793073 () Bool)

(assert (=> b!4633423 (= c!793073 ((_ is Cons!51626) lt!1794243))))

(declare-fun b!4633424 () Bool)

(declare-fun res!1944425 () Bool)

(declare-fun e!2890413 () Bool)

(assert (=> b!4633424 (=> (not res!1944425) (not e!2890413))))

(declare-fun lt!1794785 () Option!11676)

(declare-fun get!17148 (Option!11676) tuple2!52598)

(assert (=> b!4633424 (= res!1944425 (= (_1!29593 (get!17148 lt!1794785)) key!4968))))

(declare-fun b!4633425 () Bool)

(assert (=> b!4633425 (= e!2890412 None!11675)))

(declare-fun b!4633426 () Bool)

(declare-fun e!2890415 () Bool)

(assert (=> b!4633426 (= e!2890415 (not (containsKey!2534 lt!1794243 key!4968)))))

(declare-fun b!4633427 () Bool)

(declare-fun e!2890416 () Bool)

(assert (=> b!4633427 (= e!2890416 e!2890413)))

(declare-fun res!1944427 () Bool)

(assert (=> b!4633427 (=> (not res!1944427) (not e!2890413))))

(assert (=> b!4633427 (= res!1944427 (isDefined!8941 lt!1794785))))

(declare-fun b!4633428 () Bool)

(assert (=> b!4633428 (= e!2890412 (getPair!330 (t!358810 lt!1794243) key!4968))))

(declare-fun d!1460561 () Bool)

(assert (=> d!1460561 e!2890416))

(declare-fun res!1944428 () Bool)

(assert (=> d!1460561 (=> res!1944428 e!2890416)))

(assert (=> d!1460561 (= res!1944428 e!2890415)))

(declare-fun res!1944426 () Bool)

(assert (=> d!1460561 (=> (not res!1944426) (not e!2890415))))

(assert (=> d!1460561 (= res!1944426 (isEmpty!28957 lt!1794785))))

(assert (=> d!1460561 (= lt!1794785 e!2890414)))

(declare-fun c!793072 () Bool)

(assert (=> d!1460561 (= c!793072 (and ((_ is Cons!51626) lt!1794243) (= (_1!29593 (h!57704 lt!1794243)) key!4968)))))

(assert (=> d!1460561 (noDuplicateKeys!1538 lt!1794243)))

(assert (=> d!1460561 (= (getPair!330 lt!1794243 key!4968) lt!1794785)))

(declare-fun b!4633429 () Bool)

(assert (=> b!4633429 (= e!2890414 (Some!11675 (h!57704 lt!1794243)))))

(declare-fun b!4633430 () Bool)

(assert (=> b!4633430 (= e!2890413 (contains!14734 lt!1794243 (get!17148 lt!1794785)))))

(assert (= (and d!1460561 c!793072) b!4633429))

(assert (= (and d!1460561 (not c!793072)) b!4633423))

(assert (= (and b!4633423 c!793073) b!4633428))

(assert (= (and b!4633423 (not c!793073)) b!4633425))

(assert (= (and d!1460561 res!1944426) b!4633426))

(assert (= (and d!1460561 (not res!1944428)) b!4633427))

(assert (= (and b!4633427 res!1944427) b!4633424))

(assert (= (and b!4633424 res!1944425) b!4633430))

(declare-fun m!5486375 () Bool)

(assert (=> b!4633430 m!5486375))

(assert (=> b!4633430 m!5486375))

(declare-fun m!5486377 () Bool)

(assert (=> b!4633430 m!5486377))

(declare-fun m!5486379 () Bool)

(assert (=> b!4633428 m!5486379))

(declare-fun m!5486381 () Bool)

(assert (=> d!1460561 m!5486381))

(declare-fun m!5486383 () Bool)

(assert (=> d!1460561 m!5486383))

(declare-fun m!5486385 () Bool)

(assert (=> b!4633427 m!5486385))

(declare-fun m!5486387 () Bool)

(assert (=> b!4633426 m!5486387))

(assert (=> b!4633424 m!5486375))

(assert (=> b!4633030 d!1460561))

(declare-fun bs!1029174 () Bool)

(declare-fun d!1460563 () Bool)

(assert (= bs!1029174 (and d!1460563 d!1460531)))

(declare-fun lambda!194303 () Int)

(assert (=> bs!1029174 (= lambda!194303 lambda!194294)))

(declare-fun bs!1029175 () Bool)

(assert (= bs!1029175 (and d!1460563 d!1460489)))

(assert (=> bs!1029175 (= lambda!194303 lambda!194289)))

(declare-fun bs!1029176 () Bool)

(assert (= bs!1029176 (and d!1460563 d!1460515)))

(assert (=> bs!1029176 (= lambda!194303 lambda!194293)))

(declare-fun bs!1029177 () Bool)

(assert (= bs!1029177 (and d!1460563 b!4633030)))

(assert (=> bs!1029177 (= lambda!194303 lambda!194166)))

(declare-fun bs!1029178 () Bool)

(assert (= bs!1029178 (and d!1460563 d!1460533)))

(assert (=> bs!1029178 (= lambda!194303 lambda!194295)))

(declare-fun bs!1029179 () Bool)

(assert (= bs!1029179 (and d!1460563 d!1460513)))

(assert (=> bs!1029179 (= lambda!194303 lambda!194290)))

(declare-fun lt!1794808 () (_ BitVec 64))

(declare-fun lt!1794803 () List!51750)

(declare-fun e!2890421 () Bool)

(declare-fun b!4633442 () Bool)

(assert (=> b!4633442 (= e!2890421 (= (getValueByKey!1507 (toList!5042 lt!1794237) lt!1794808) (Some!11678 lt!1794803)))))

(declare-fun b!4633439 () Bool)

(declare-fun res!1944440 () Bool)

(declare-fun e!2890422 () Bool)

(assert (=> b!4633439 (=> (not res!1944440) (not e!2890422))))

(declare-fun allKeysSameHashInMap!1557 (ListLongMap!3631 Hashable!5935) Bool)

(assert (=> b!4633439 (= res!1944440 (allKeysSameHashInMap!1557 lt!1794237 hashF!1389))))

(assert (=> d!1460563 e!2890422))

(declare-fun res!1944439 () Bool)

(assert (=> d!1460563 (=> (not res!1944439) (not e!2890422))))

(assert (=> d!1460563 (= res!1944439 (forall!10878 (toList!5042 lt!1794237) lambda!194303))))

(declare-fun lt!1794809 () Unit!113755)

(declare-fun choose!31580 (ListLongMap!3631 K!12995 Hashable!5935) Unit!113755)

(assert (=> d!1460563 (= lt!1794809 (choose!31580 lt!1794237 key!4968 hashF!1389))))

(assert (=> d!1460563 (forall!10878 (toList!5042 lt!1794237) lambda!194303)))

(assert (=> d!1460563 (= (lemmaInGenMapThenGetPairDefined!126 lt!1794237 key!4968 hashF!1389) lt!1794809)))

(declare-fun b!4633440 () Bool)

(declare-fun res!1944437 () Bool)

(assert (=> b!4633440 (=> (not res!1944437) (not e!2890422))))

(assert (=> b!4633440 (= res!1944437 (contains!14729 (extractMap!1594 (toList!5042 lt!1794237)) key!4968))))

(declare-fun b!4633441 () Bool)

(assert (=> b!4633441 (= e!2890422 (isDefined!8941 (getPair!330 (apply!12203 lt!1794237 (hash!3586 hashF!1389 key!4968)) key!4968)))))

(declare-fun lt!1794806 () Unit!113755)

(assert (=> b!4633441 (= lt!1794806 (forallContained!3110 (toList!5042 lt!1794237) lambda!194303 (tuple2!52601 (hash!3586 hashF!1389 key!4968) (apply!12203 lt!1794237 (hash!3586 hashF!1389 key!4968)))))))

(declare-fun lt!1794804 () Unit!113755)

(declare-fun lt!1794802 () Unit!113755)

(assert (=> b!4633441 (= lt!1794804 lt!1794802)))

(assert (=> b!4633441 (contains!14730 (toList!5042 lt!1794237) (tuple2!52601 lt!1794808 lt!1794803))))

(assert (=> b!4633441 (= lt!1794802 (lemmaGetValueImpliesTupleContained!135 lt!1794237 lt!1794808 lt!1794803))))

(assert (=> b!4633441 e!2890421))

(declare-fun res!1944438 () Bool)

(assert (=> b!4633441 (=> (not res!1944438) (not e!2890421))))

(assert (=> b!4633441 (= res!1944438 (contains!14731 lt!1794237 lt!1794808))))

(assert (=> b!4633441 (= lt!1794803 (apply!12203 lt!1794237 (hash!3586 hashF!1389 key!4968)))))

(assert (=> b!4633441 (= lt!1794808 (hash!3586 hashF!1389 key!4968))))

(declare-fun lt!1794805 () Unit!113755)

(declare-fun lt!1794807 () Unit!113755)

(assert (=> b!4633441 (= lt!1794805 lt!1794807)))

(assert (=> b!4633441 (contains!14731 lt!1794237 (hash!3586 hashF!1389 key!4968))))

(assert (=> b!4633441 (= lt!1794807 (lemmaInGenMapThenLongMapContainsHash!536 lt!1794237 key!4968 hashF!1389))))

(assert (= (and d!1460563 res!1944439) b!4633439))

(assert (= (and b!4633439 res!1944440) b!4633440))

(assert (= (and b!4633440 res!1944437) b!4633441))

(assert (= (and b!4633441 res!1944438) b!4633442))

(declare-fun m!5486389 () Bool)

(assert (=> b!4633441 m!5486389))

(assert (=> b!4633441 m!5485329))

(declare-fun m!5486391 () Bool)

(assert (=> b!4633441 m!5486391))

(declare-fun m!5486393 () Bool)

(assert (=> b!4633441 m!5486393))

(declare-fun m!5486395 () Bool)

(assert (=> b!4633441 m!5486395))

(assert (=> b!4633441 m!5485345))

(assert (=> b!4633441 m!5485329))

(declare-fun m!5486397 () Bool)

(assert (=> b!4633441 m!5486397))

(assert (=> b!4633441 m!5486395))

(declare-fun m!5486399 () Bool)

(assert (=> b!4633441 m!5486399))

(declare-fun m!5486401 () Bool)

(assert (=> b!4633441 m!5486401))

(assert (=> b!4633441 m!5485329))

(assert (=> b!4633441 m!5486393))

(declare-fun m!5486403 () Bool)

(assert (=> b!4633441 m!5486403))

(declare-fun m!5486405 () Bool)

(assert (=> d!1460563 m!5486405))

(declare-fun m!5486407 () Bool)

(assert (=> d!1460563 m!5486407))

(assert (=> d!1460563 m!5486405))

(declare-fun m!5486409 () Bool)

(assert (=> b!4633439 m!5486409))

(declare-fun m!5486411 () Bool)

(assert (=> b!4633440 m!5486411))

(assert (=> b!4633440 m!5486411))

(declare-fun m!5486413 () Bool)

(assert (=> b!4633440 m!5486413))

(declare-fun m!5486415 () Bool)

(assert (=> b!4633442 m!5486415))

(assert (=> b!4633030 d!1460563))

(declare-fun d!1460565 () Bool)

(declare-fun e!2890428 () Bool)

(assert (=> d!1460565 e!2890428))

(declare-fun res!1944443 () Bool)

(assert (=> d!1460565 (=> res!1944443 e!2890428)))

(declare-fun lt!1794819 () Bool)

(assert (=> d!1460565 (= res!1944443 (not lt!1794819))))

(declare-fun lt!1794821 () Bool)

(assert (=> d!1460565 (= lt!1794819 lt!1794821)))

(declare-fun lt!1794818 () Unit!113755)

(declare-fun e!2890427 () Unit!113755)

(assert (=> d!1460565 (= lt!1794818 e!2890427)))

(declare-fun c!793076 () Bool)

(assert (=> d!1460565 (= c!793076 lt!1794821)))

(declare-fun containsKey!2537 (List!51751 (_ BitVec 64)) Bool)

(assert (=> d!1460565 (= lt!1794821 (containsKey!2537 (toList!5042 lt!1794237) lt!1794225))))

(assert (=> d!1460565 (= (contains!14731 lt!1794237 lt!1794225) lt!1794819)))

(declare-fun b!4633449 () Bool)

(declare-fun lt!1794820 () Unit!113755)

(assert (=> b!4633449 (= e!2890427 lt!1794820)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1409 (List!51751 (_ BitVec 64)) Unit!113755)

(assert (=> b!4633449 (= lt!1794820 (lemmaContainsKeyImpliesGetValueByKeyDefined!1409 (toList!5042 lt!1794237) lt!1794225))))

(declare-fun isDefined!8944 (Option!11679) Bool)

(assert (=> b!4633449 (isDefined!8944 (getValueByKey!1507 (toList!5042 lt!1794237) lt!1794225))))

(declare-fun b!4633450 () Bool)

(declare-fun Unit!113859 () Unit!113755)

(assert (=> b!4633450 (= e!2890427 Unit!113859)))

(declare-fun b!4633451 () Bool)

(assert (=> b!4633451 (= e!2890428 (isDefined!8944 (getValueByKey!1507 (toList!5042 lt!1794237) lt!1794225)))))

(assert (= (and d!1460565 c!793076) b!4633449))

(assert (= (and d!1460565 (not c!793076)) b!4633450))

(assert (= (and d!1460565 (not res!1944443)) b!4633451))

(declare-fun m!5486417 () Bool)

(assert (=> d!1460565 m!5486417))

(declare-fun m!5486419 () Bool)

(assert (=> b!4633449 m!5486419))

(assert (=> b!4633449 m!5486369))

(assert (=> b!4633449 m!5486369))

(declare-fun m!5486421 () Bool)

(assert (=> b!4633449 m!5486421))

(assert (=> b!4633451 m!5486369))

(assert (=> b!4633451 m!5486369))

(assert (=> b!4633451 m!5486421))

(assert (=> b!4633030 d!1460565))

(declare-fun bs!1029180 () Bool)

(declare-fun d!1460567 () Bool)

(assert (= bs!1029180 (and d!1460567 d!1460531)))

(declare-fun lambda!194306 () Int)

(assert (=> bs!1029180 (= lambda!194306 lambda!194294)))

(declare-fun bs!1029181 () Bool)

(assert (= bs!1029181 (and d!1460567 d!1460489)))

(assert (=> bs!1029181 (= lambda!194306 lambda!194289)))

(declare-fun bs!1029182 () Bool)

(assert (= bs!1029182 (and d!1460567 d!1460515)))

(assert (=> bs!1029182 (= lambda!194306 lambda!194293)))

(declare-fun bs!1029183 () Bool)

(assert (= bs!1029183 (and d!1460567 d!1460563)))

(assert (=> bs!1029183 (= lambda!194306 lambda!194303)))

(declare-fun bs!1029184 () Bool)

(assert (= bs!1029184 (and d!1460567 b!4633030)))

(assert (=> bs!1029184 (= lambda!194306 lambda!194166)))

(declare-fun bs!1029185 () Bool)

(assert (= bs!1029185 (and d!1460567 d!1460533)))

(assert (=> bs!1029185 (= lambda!194306 lambda!194295)))

(declare-fun bs!1029186 () Bool)

(assert (= bs!1029186 (and d!1460567 d!1460513)))

(assert (=> bs!1029186 (= lambda!194306 lambda!194290)))

(assert (=> d!1460567 (contains!14731 lt!1794237 (hash!3586 hashF!1389 key!4968))))

(declare-fun lt!1794824 () Unit!113755)

(declare-fun choose!31581 (ListLongMap!3631 K!12995 Hashable!5935) Unit!113755)

(assert (=> d!1460567 (= lt!1794824 (choose!31581 lt!1794237 key!4968 hashF!1389))))

(assert (=> d!1460567 (forall!10878 (toList!5042 lt!1794237) lambda!194306)))

(assert (=> d!1460567 (= (lemmaInGenMapThenLongMapContainsHash!536 lt!1794237 key!4968 hashF!1389) lt!1794824)))

(declare-fun bs!1029187 () Bool)

(assert (= bs!1029187 d!1460567))

(assert (=> bs!1029187 m!5485329))

(assert (=> bs!1029187 m!5485329))

(assert (=> bs!1029187 m!5486397))

(declare-fun m!5486423 () Bool)

(assert (=> bs!1029187 m!5486423))

(declare-fun m!5486425 () Bool)

(assert (=> bs!1029187 m!5486425))

(assert (=> b!4633030 d!1460567))

(declare-fun d!1460569 () Bool)

(declare-fun dynLambda!21526 (Int tuple2!52600) Bool)

(assert (=> d!1460569 (dynLambda!21526 lambda!194166 lt!1794236)))

(declare-fun lt!1794827 () Unit!113755)

(declare-fun choose!31582 (List!51751 Int tuple2!52600) Unit!113755)

(assert (=> d!1460569 (= lt!1794827 (choose!31582 lt!1794220 lambda!194166 lt!1794236))))

(declare-fun e!2890431 () Bool)

(assert (=> d!1460569 e!2890431))

(declare-fun res!1944446 () Bool)

(assert (=> d!1460569 (=> (not res!1944446) (not e!2890431))))

(assert (=> d!1460569 (= res!1944446 (forall!10878 lt!1794220 lambda!194166))))

(assert (=> d!1460569 (= (forallContained!3110 lt!1794220 lambda!194166 lt!1794236) lt!1794827)))

(declare-fun b!4633454 () Bool)

(assert (=> b!4633454 (= e!2890431 (contains!14730 lt!1794220 lt!1794236))))

(assert (= (and d!1460569 res!1944446) b!4633454))

(declare-fun b_lambda!170933 () Bool)

(assert (=> (not b_lambda!170933) (not d!1460569)))

(declare-fun m!5486427 () Bool)

(assert (=> d!1460569 m!5486427))

(declare-fun m!5486429 () Bool)

(assert (=> d!1460569 m!5486429))

(declare-fun m!5486431 () Bool)

(assert (=> d!1460569 m!5486431))

(assert (=> b!4633454 m!5485357))

(assert (=> b!4633030 d!1460569))

(declare-fun b!4633455 () Bool)

(declare-fun e!2890437 () List!51753)

(assert (=> b!4633455 (= e!2890437 (keys!18214 lt!1794233))))

(declare-fun d!1460571 () Bool)

(declare-fun e!2890434 () Bool)

(assert (=> d!1460571 e!2890434))

(declare-fun res!1944449 () Bool)

(assert (=> d!1460571 (=> res!1944449 e!2890434)))

(declare-fun e!2890435 () Bool)

(assert (=> d!1460571 (= res!1944449 e!2890435)))

(declare-fun res!1944448 () Bool)

(assert (=> d!1460571 (=> (not res!1944448) (not e!2890435))))

(declare-fun lt!1794835 () Bool)

(assert (=> d!1460571 (= res!1944448 (not lt!1794835))))

(declare-fun lt!1794833 () Bool)

(assert (=> d!1460571 (= lt!1794835 lt!1794833)))

(declare-fun lt!1794829 () Unit!113755)

(declare-fun e!2890432 () Unit!113755)

(assert (=> d!1460571 (= lt!1794829 e!2890432)))

(declare-fun c!793079 () Bool)

(assert (=> d!1460571 (= c!793079 lt!1794833)))

(assert (=> d!1460571 (= lt!1794833 (containsKey!2536 (toList!5041 lt!1794233) key!4968))))

(assert (=> d!1460571 (= (contains!14729 lt!1794233 key!4968) lt!1794835)))

(declare-fun b!4633456 () Bool)

(declare-fun e!2890433 () Unit!113755)

(assert (=> b!4633456 (= e!2890432 e!2890433)))

(declare-fun c!793077 () Bool)

(declare-fun call!323348 () Bool)

(assert (=> b!4633456 (= c!793077 call!323348)))

(declare-fun b!4633457 () Bool)

(declare-fun Unit!113863 () Unit!113755)

(assert (=> b!4633457 (= e!2890433 Unit!113863)))

(declare-fun b!4633458 () Bool)

(declare-fun e!2890436 () Bool)

(assert (=> b!4633458 (= e!2890434 e!2890436)))

(declare-fun res!1944447 () Bool)

(assert (=> b!4633458 (=> (not res!1944447) (not e!2890436))))

(assert (=> b!4633458 (= res!1944447 (isDefined!8943 (getValueByKey!1506 (toList!5041 lt!1794233) key!4968)))))

(declare-fun b!4633459 () Bool)

(assert (=> b!4633459 (= e!2890437 (getKeysList!683 (toList!5041 lt!1794233)))))

(declare-fun b!4633460 () Bool)

(assert (=> b!4633460 (= e!2890436 (contains!14735 (keys!18214 lt!1794233) key!4968))))

(declare-fun b!4633461 () Bool)

(assert (=> b!4633461 (= e!2890435 (not (contains!14735 (keys!18214 lt!1794233) key!4968)))))

(declare-fun bm!323343 () Bool)

(assert (=> bm!323343 (= call!323348 (contains!14735 e!2890437 key!4968))))

(declare-fun c!793078 () Bool)

(assert (=> bm!323343 (= c!793078 c!793079)))

(declare-fun b!4633462 () Bool)

(assert (=> b!4633462 false))

(declare-fun lt!1794832 () Unit!113755)

(declare-fun lt!1794830 () Unit!113755)

(assert (=> b!4633462 (= lt!1794832 lt!1794830)))

(assert (=> b!4633462 (containsKey!2536 (toList!5041 lt!1794233) key!4968)))

(assert (=> b!4633462 (= lt!1794830 (lemmaInGetKeysListThenContainsKey!682 (toList!5041 lt!1794233) key!4968))))

(declare-fun Unit!113864 () Unit!113755)

(assert (=> b!4633462 (= e!2890433 Unit!113864)))

(declare-fun b!4633463 () Bool)

(declare-fun lt!1794834 () Unit!113755)

(assert (=> b!4633463 (= e!2890432 lt!1794834)))

(declare-fun lt!1794831 () Unit!113755)

(assert (=> b!4633463 (= lt!1794831 (lemmaContainsKeyImpliesGetValueByKeyDefined!1408 (toList!5041 lt!1794233) key!4968))))

(assert (=> b!4633463 (isDefined!8943 (getValueByKey!1506 (toList!5041 lt!1794233) key!4968))))

(declare-fun lt!1794828 () Unit!113755)

(assert (=> b!4633463 (= lt!1794828 lt!1794831)))

(assert (=> b!4633463 (= lt!1794834 (lemmaInListThenGetKeysListContains!678 (toList!5041 lt!1794233) key!4968))))

(assert (=> b!4633463 call!323348))

(assert (= (and d!1460571 c!793079) b!4633463))

(assert (= (and d!1460571 (not c!793079)) b!4633456))

(assert (= (and b!4633456 c!793077) b!4633462))

(assert (= (and b!4633456 (not c!793077)) b!4633457))

(assert (= (or b!4633463 b!4633456) bm!323343))

(assert (= (and bm!323343 c!793078) b!4633459))

(assert (= (and bm!323343 (not c!793078)) b!4633455))

(assert (= (and d!1460571 res!1944448) b!4633461))

(assert (= (and d!1460571 (not res!1944449)) b!4633458))

(assert (= (and b!4633458 res!1944447) b!4633460))

(declare-fun m!5486433 () Bool)

(assert (=> b!4633459 m!5486433))

(declare-fun m!5486435 () Bool)

(assert (=> b!4633463 m!5486435))

(declare-fun m!5486437 () Bool)

(assert (=> b!4633463 m!5486437))

(assert (=> b!4633463 m!5486437))

(declare-fun m!5486439 () Bool)

(assert (=> b!4633463 m!5486439))

(declare-fun m!5486441 () Bool)

(assert (=> b!4633463 m!5486441))

(assert (=> b!4633458 m!5486437))

(assert (=> b!4633458 m!5486437))

(assert (=> b!4633458 m!5486439))

(assert (=> b!4633461 m!5485385))

(assert (=> b!4633461 m!5485385))

(declare-fun m!5486443 () Bool)

(assert (=> b!4633461 m!5486443))

(declare-fun m!5486445 () Bool)

(assert (=> b!4633462 m!5486445))

(declare-fun m!5486447 () Bool)

(assert (=> b!4633462 m!5486447))

(assert (=> b!4633455 m!5485385))

(assert (=> d!1460571 m!5486445))

(declare-fun m!5486449 () Bool)

(assert (=> bm!323343 m!5486449))

(assert (=> b!4633460 m!5485385))

(assert (=> b!4633460 m!5485385))

(assert (=> b!4633460 m!5486443))

(assert (=> b!4633040 d!1460571))

(declare-fun bs!1029188 () Bool)

(declare-fun d!1460573 () Bool)

(assert (= bs!1029188 (and d!1460573 d!1460531)))

(declare-fun lambda!194307 () Int)

(assert (=> bs!1029188 (= lambda!194307 lambda!194294)))

(declare-fun bs!1029189 () Bool)

(assert (= bs!1029189 (and d!1460573 d!1460489)))

(assert (=> bs!1029189 (= lambda!194307 lambda!194289)))

(declare-fun bs!1029190 () Bool)

(assert (= bs!1029190 (and d!1460573 d!1460515)))

(assert (=> bs!1029190 (= lambda!194307 lambda!194293)))

(declare-fun bs!1029191 () Bool)

(assert (= bs!1029191 (and d!1460573 d!1460563)))

(assert (=> bs!1029191 (= lambda!194307 lambda!194303)))

(declare-fun bs!1029192 () Bool)

(assert (= bs!1029192 (and d!1460573 b!4633030)))

(assert (=> bs!1029192 (= lambda!194307 lambda!194166)))

(declare-fun bs!1029193 () Bool)

(assert (= bs!1029193 (and d!1460573 d!1460567)))

(assert (=> bs!1029193 (= lambda!194307 lambda!194306)))

(declare-fun bs!1029194 () Bool)

(assert (= bs!1029194 (and d!1460573 d!1460533)))

(assert (=> bs!1029194 (= lambda!194307 lambda!194295)))

(declare-fun bs!1029195 () Bool)

(assert (= bs!1029195 (and d!1460573 d!1460513)))

(assert (=> bs!1029195 (= lambda!194307 lambda!194290)))

(declare-fun lt!1794836 () ListMap!4345)

(assert (=> d!1460573 (invariantList!1232 (toList!5041 lt!1794836))))

(declare-fun e!2890438 () ListMap!4345)

(assert (=> d!1460573 (= lt!1794836 e!2890438)))

(declare-fun c!793080 () Bool)

(assert (=> d!1460573 (= c!793080 ((_ is Cons!51627) lt!1794220))))

(assert (=> d!1460573 (forall!10878 lt!1794220 lambda!194307)))

(assert (=> d!1460573 (= (extractMap!1594 lt!1794220) lt!1794836)))

(declare-fun b!4633464 () Bool)

(assert (=> b!4633464 (= e!2890438 (addToMapMapFromBucket!999 (_2!29594 (h!57705 lt!1794220)) (extractMap!1594 (t!358811 lt!1794220))))))

(declare-fun b!4633465 () Bool)

(assert (=> b!4633465 (= e!2890438 (ListMap!4346 Nil!51626))))

(assert (= (and d!1460573 c!793080) b!4633464))

(assert (= (and d!1460573 (not c!793080)) b!4633465))

(declare-fun m!5486451 () Bool)

(assert (=> d!1460573 m!5486451))

(declare-fun m!5486453 () Bool)

(assert (=> d!1460573 m!5486453))

(declare-fun m!5486455 () Bool)

(assert (=> b!4633464 m!5486455))

(assert (=> b!4633464 m!5486455))

(declare-fun m!5486457 () Bool)

(assert (=> b!4633464 m!5486457))

(assert (=> b!4633040 d!1460573))

(declare-fun d!1460575 () Bool)

(declare-fun res!1944454 () Bool)

(declare-fun e!2890443 () Bool)

(assert (=> d!1460575 (=> res!1944454 e!2890443)))

(assert (=> d!1460575 (= res!1944454 ((_ is Nil!51627) lt!1794214))))

(assert (=> d!1460575 (= (forall!10878 lt!1794214 lambda!194166) e!2890443)))

(declare-fun b!4633470 () Bool)

(declare-fun e!2890444 () Bool)

(assert (=> b!4633470 (= e!2890443 e!2890444)))

(declare-fun res!1944455 () Bool)

(assert (=> b!4633470 (=> (not res!1944455) (not e!2890444))))

(assert (=> b!4633470 (= res!1944455 (dynLambda!21526 lambda!194166 (h!57705 lt!1794214)))))

(declare-fun b!4633471 () Bool)

(assert (=> b!4633471 (= e!2890444 (forall!10878 (t!358811 lt!1794214) lambda!194166))))

(assert (= (and d!1460575 (not res!1944454)) b!4633470))

(assert (= (and b!4633470 res!1944455) b!4633471))

(declare-fun b_lambda!170935 () Bool)

(assert (=> (not b_lambda!170935) (not b!4633470)))

(declare-fun m!5486459 () Bool)

(assert (=> b!4633470 m!5486459))

(declare-fun m!5486461 () Bool)

(assert (=> b!4633471 m!5486461))

(assert (=> b!4633029 d!1460575))

(declare-fun d!1460577 () Bool)

(assert (=> d!1460577 (= (eq!853 lt!1794223 (+!1904 lt!1794217 (h!57704 oldBucket!40))) (= (content!8880 (toList!5041 lt!1794223)) (content!8880 (toList!5041 (+!1904 lt!1794217 (h!57704 oldBucket!40))))))))

(declare-fun bs!1029196 () Bool)

(assert (= bs!1029196 d!1460577))

(declare-fun m!5486463 () Bool)

(assert (=> bs!1029196 m!5486463))

(assert (=> bs!1029196 m!5486271))

(assert (=> b!4633029 d!1460577))

(assert (=> b!4633029 d!1460525))

(declare-fun d!1460579 () Bool)

(assert (=> d!1460579 (eq!853 (+!1904 lt!1794228 (tuple2!52599 (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40)))) (+!1904 lt!1794217 (tuple2!52599 (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40)))))))

(declare-fun lt!1794839 () Unit!113755)

(declare-fun choose!31583 (ListMap!4345 ListMap!4345 K!12995 V!13241) Unit!113755)

(assert (=> d!1460579 (= lt!1794839 (choose!31583 lt!1794228 lt!1794217 (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40))))))

(assert (=> d!1460579 (eq!853 lt!1794228 lt!1794217)))

(assert (=> d!1460579 (= (lemmaAddToEqMapsPreservesEq!50 lt!1794228 lt!1794217 (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40))) lt!1794839)))

(declare-fun bs!1029197 () Bool)

(assert (= bs!1029197 d!1460579))

(declare-fun m!5486465 () Bool)

(assert (=> bs!1029197 m!5486465))

(declare-fun m!5486467 () Bool)

(assert (=> bs!1029197 m!5486467))

(declare-fun m!5486469 () Bool)

(assert (=> bs!1029197 m!5486469))

(declare-fun m!5486471 () Bool)

(assert (=> bs!1029197 m!5486471))

(declare-fun m!5486473 () Bool)

(assert (=> bs!1029197 m!5486473))

(assert (=> bs!1029197 m!5486465))

(assert (=> bs!1029197 m!5486467))

(assert (=> b!4633029 d!1460579))

(declare-fun d!1460581 () Bool)

(declare-fun res!1944456 () Bool)

(declare-fun e!2890445 () Bool)

(assert (=> d!1460581 (=> res!1944456 e!2890445)))

(assert (=> d!1460581 (= res!1944456 (not ((_ is Cons!51626) oldBucket!40)))))

(assert (=> d!1460581 (= (noDuplicateKeys!1538 oldBucket!40) e!2890445)))

(declare-fun b!4633472 () Bool)

(declare-fun e!2890446 () Bool)

(assert (=> b!4633472 (= e!2890445 e!2890446)))

(declare-fun res!1944457 () Bool)

(assert (=> b!4633472 (=> (not res!1944457) (not e!2890446))))

(assert (=> b!4633472 (= res!1944457 (not (containsKey!2534 (t!358810 oldBucket!40) (_1!29593 (h!57704 oldBucket!40)))))))

(declare-fun b!4633473 () Bool)

(assert (=> b!4633473 (= e!2890446 (noDuplicateKeys!1538 (t!358810 oldBucket!40)))))

(assert (= (and d!1460581 (not res!1944456)) b!4633472))

(assert (= (and b!4633472 res!1944457) b!4633473))

(declare-fun m!5486475 () Bool)

(assert (=> b!4633472 m!5486475))

(assert (=> b!4633473 m!5485503))

(assert (=> start!465192 d!1460581))

(declare-fun bs!1029198 () Bool)

(declare-fun b!4633476 () Bool)

(assert (= bs!1029198 (and b!4633476 b!4633276)))

(declare-fun lambda!194308 () Int)

(assert (=> bs!1029198 (= (= lt!1794240 (ListMap!4346 Nil!51626)) (= lambda!194308 lambda!194273))))

(declare-fun bs!1029199 () Bool)

(assert (= bs!1029199 (and b!4633476 d!1460535)))

(assert (=> bs!1029199 (not (= lambda!194308 lambda!194296))))

(assert (=> bs!1029198 (= (= lt!1794240 lt!1794653) (= lambda!194308 lambda!194274))))

(declare-fun bs!1029200 () Bool)

(assert (= bs!1029200 (and b!4633476 d!1460481)))

(assert (=> bs!1029200 (= (= lt!1794240 lt!1794694) (= lambda!194308 lambda!194286))))

(declare-fun bs!1029201 () Bool)

(assert (= bs!1029201 (and b!4633476 d!1460393)))

(assert (=> bs!1029201 (= (= lt!1794240 lt!1794606) (= lambda!194308 lambda!194270))))

(declare-fun bs!1029202 () Bool)

(assert (= bs!1029202 (and b!4633476 b!4633265)))

(assert (=> bs!1029202 (= (= lt!1794240 (ListMap!4346 Nil!51626)) (= lambda!194308 lambda!194268))))

(declare-fun bs!1029203 () Bool)

(assert (= bs!1029203 (and b!4633476 b!4633303)))

(assert (=> bs!1029203 (= (= lt!1794240 (ListMap!4346 Nil!51626)) (= lambda!194308 lambda!194284))))

(declare-fun bs!1029204 () Bool)

(assert (= bs!1029204 (and b!4633476 b!4633266)))

(assert (=> bs!1029204 (= (= lt!1794240 (ListMap!4346 Nil!51626)) (= lambda!194308 lambda!194267))))

(assert (=> bs!1029202 (= (= lt!1794240 lt!1794623) (= lambda!194308 lambda!194269))))

(declare-fun bs!1029205 () Bool)

(assert (= bs!1029205 (and b!4633476 b!4633304)))

(assert (=> bs!1029205 (= (= lt!1794240 (ListMap!4346 Nil!51626)) (= lambda!194308 lambda!194283))))

(declare-fun bs!1029206 () Bool)

(assert (= bs!1029206 (and b!4633476 b!4633295)))

(assert (=> bs!1029206 (= (= lt!1794240 (ListMap!4346 Nil!51626)) (= lambda!194308 lambda!194276))))

(declare-fun bs!1029207 () Bool)

(assert (= bs!1029207 (and b!4633476 b!4633292)))

(assert (=> bs!1029207 (= (= lt!1794240 lt!1794687) (= lambda!194308 lambda!194278))))

(assert (=> bs!1029207 (= (= lt!1794240 (ListMap!4346 Nil!51626)) (= lambda!194308 lambda!194277))))

(assert (=> bs!1029203 (= (= lt!1794240 lt!1794711) (= lambda!194308 lambda!194285))))

(declare-fun bs!1029208 () Bool)

(assert (= bs!1029208 (and b!4633476 b!4633277)))

(assert (=> bs!1029208 (= (= lt!1794240 (ListMap!4346 Nil!51626)) (= lambda!194308 lambda!194272))))

(declare-fun bs!1029209 () Bool)

(assert (= bs!1029209 (and b!4633476 d!1460471)))

(assert (=> bs!1029209 (= (= lt!1794240 lt!1794670) (= lambda!194308 lambda!194279))))

(declare-fun bs!1029210 () Bool)

(assert (= bs!1029210 (and b!4633476 d!1460341)))

(assert (=> bs!1029210 (not (= lambda!194308 lambda!194172))))

(declare-fun bs!1029211 () Bool)

(assert (= bs!1029211 (and b!4633476 d!1460459)))

(assert (=> bs!1029211 (= (= lt!1794240 lt!1794636) (= lambda!194308 lambda!194275))))

(assert (=> b!4633476 true))

(declare-fun bs!1029212 () Bool)

(declare-fun b!4633475 () Bool)

(assert (= bs!1029212 (and b!4633475 b!4633476)))

(declare-fun lambda!194309 () Int)

(assert (=> bs!1029212 (= lambda!194309 lambda!194308)))

(declare-fun bs!1029213 () Bool)

(assert (= bs!1029213 (and b!4633475 b!4633276)))

(assert (=> bs!1029213 (= (= lt!1794240 (ListMap!4346 Nil!51626)) (= lambda!194309 lambda!194273))))

(declare-fun bs!1029214 () Bool)

(assert (= bs!1029214 (and b!4633475 d!1460535)))

(assert (=> bs!1029214 (not (= lambda!194309 lambda!194296))))

(assert (=> bs!1029213 (= (= lt!1794240 lt!1794653) (= lambda!194309 lambda!194274))))

(declare-fun bs!1029215 () Bool)

(assert (= bs!1029215 (and b!4633475 d!1460481)))

(assert (=> bs!1029215 (= (= lt!1794240 lt!1794694) (= lambda!194309 lambda!194286))))

(declare-fun bs!1029216 () Bool)

(assert (= bs!1029216 (and b!4633475 d!1460393)))

(assert (=> bs!1029216 (= (= lt!1794240 lt!1794606) (= lambda!194309 lambda!194270))))

(declare-fun bs!1029217 () Bool)

(assert (= bs!1029217 (and b!4633475 b!4633265)))

(assert (=> bs!1029217 (= (= lt!1794240 (ListMap!4346 Nil!51626)) (= lambda!194309 lambda!194268))))

(declare-fun bs!1029218 () Bool)

(assert (= bs!1029218 (and b!4633475 b!4633303)))

(assert (=> bs!1029218 (= (= lt!1794240 (ListMap!4346 Nil!51626)) (= lambda!194309 lambda!194284))))

(declare-fun bs!1029219 () Bool)

(assert (= bs!1029219 (and b!4633475 b!4633266)))

(assert (=> bs!1029219 (= (= lt!1794240 (ListMap!4346 Nil!51626)) (= lambda!194309 lambda!194267))))

(assert (=> bs!1029217 (= (= lt!1794240 lt!1794623) (= lambda!194309 lambda!194269))))

(declare-fun bs!1029220 () Bool)

(assert (= bs!1029220 (and b!4633475 b!4633304)))

(assert (=> bs!1029220 (= (= lt!1794240 (ListMap!4346 Nil!51626)) (= lambda!194309 lambda!194283))))

(declare-fun bs!1029221 () Bool)

(assert (= bs!1029221 (and b!4633475 b!4633295)))

(assert (=> bs!1029221 (= (= lt!1794240 (ListMap!4346 Nil!51626)) (= lambda!194309 lambda!194276))))

(declare-fun bs!1029222 () Bool)

(assert (= bs!1029222 (and b!4633475 b!4633292)))

(assert (=> bs!1029222 (= (= lt!1794240 lt!1794687) (= lambda!194309 lambda!194278))))

(assert (=> bs!1029222 (= (= lt!1794240 (ListMap!4346 Nil!51626)) (= lambda!194309 lambda!194277))))

(assert (=> bs!1029218 (= (= lt!1794240 lt!1794711) (= lambda!194309 lambda!194285))))

(declare-fun bs!1029223 () Bool)

(assert (= bs!1029223 (and b!4633475 b!4633277)))

(assert (=> bs!1029223 (= (= lt!1794240 (ListMap!4346 Nil!51626)) (= lambda!194309 lambda!194272))))

(declare-fun bs!1029224 () Bool)

(assert (= bs!1029224 (and b!4633475 d!1460471)))

(assert (=> bs!1029224 (= (= lt!1794240 lt!1794670) (= lambda!194309 lambda!194279))))

(declare-fun bs!1029225 () Bool)

(assert (= bs!1029225 (and b!4633475 d!1460341)))

(assert (=> bs!1029225 (not (= lambda!194309 lambda!194172))))

(declare-fun bs!1029226 () Bool)

(assert (= bs!1029226 (and b!4633475 d!1460459)))

(assert (=> bs!1029226 (= (= lt!1794240 lt!1794636) (= lambda!194309 lambda!194275))))

(assert (=> b!4633475 true))

(declare-fun lambda!194310 () Int)

(declare-fun lt!1794857 () ListMap!4345)

(assert (=> bs!1029212 (= (= lt!1794857 lt!1794240) (= lambda!194310 lambda!194308))))

(assert (=> bs!1029213 (= (= lt!1794857 (ListMap!4346 Nil!51626)) (= lambda!194310 lambda!194273))))

(assert (=> bs!1029214 (not (= lambda!194310 lambda!194296))))

(assert (=> bs!1029213 (= (= lt!1794857 lt!1794653) (= lambda!194310 lambda!194274))))

(assert (=> bs!1029215 (= (= lt!1794857 lt!1794694) (= lambda!194310 lambda!194286))))

(assert (=> bs!1029216 (= (= lt!1794857 lt!1794606) (= lambda!194310 lambda!194270))))

(assert (=> bs!1029217 (= (= lt!1794857 (ListMap!4346 Nil!51626)) (= lambda!194310 lambda!194268))))

(assert (=> b!4633475 (= (= lt!1794857 lt!1794240) (= lambda!194310 lambda!194309))))

(assert (=> bs!1029218 (= (= lt!1794857 (ListMap!4346 Nil!51626)) (= lambda!194310 lambda!194284))))

(assert (=> bs!1029219 (= (= lt!1794857 (ListMap!4346 Nil!51626)) (= lambda!194310 lambda!194267))))

(assert (=> bs!1029217 (= (= lt!1794857 lt!1794623) (= lambda!194310 lambda!194269))))

(assert (=> bs!1029220 (= (= lt!1794857 (ListMap!4346 Nil!51626)) (= lambda!194310 lambda!194283))))

(assert (=> bs!1029221 (= (= lt!1794857 (ListMap!4346 Nil!51626)) (= lambda!194310 lambda!194276))))

(assert (=> bs!1029222 (= (= lt!1794857 lt!1794687) (= lambda!194310 lambda!194278))))

(assert (=> bs!1029222 (= (= lt!1794857 (ListMap!4346 Nil!51626)) (= lambda!194310 lambda!194277))))

(assert (=> bs!1029218 (= (= lt!1794857 lt!1794711) (= lambda!194310 lambda!194285))))

(assert (=> bs!1029223 (= (= lt!1794857 (ListMap!4346 Nil!51626)) (= lambda!194310 lambda!194272))))

(assert (=> bs!1029224 (= (= lt!1794857 lt!1794670) (= lambda!194310 lambda!194279))))

(assert (=> bs!1029225 (not (= lambda!194310 lambda!194172))))

(assert (=> bs!1029226 (= (= lt!1794857 lt!1794636) (= lambda!194310 lambda!194275))))

(assert (=> b!4633475 true))

(declare-fun bs!1029227 () Bool)

(declare-fun d!1460583 () Bool)

(assert (= bs!1029227 (and d!1460583 b!4633476)))

(declare-fun lambda!194311 () Int)

(declare-fun lt!1794840 () ListMap!4345)

(assert (=> bs!1029227 (= (= lt!1794840 lt!1794240) (= lambda!194311 lambda!194308))))

(declare-fun bs!1029228 () Bool)

(assert (= bs!1029228 (and d!1460583 b!4633276)))

(assert (=> bs!1029228 (= (= lt!1794840 (ListMap!4346 Nil!51626)) (= lambda!194311 lambda!194273))))

(declare-fun bs!1029229 () Bool)

(assert (= bs!1029229 (and d!1460583 d!1460535)))

(assert (=> bs!1029229 (not (= lambda!194311 lambda!194296))))

(assert (=> bs!1029228 (= (= lt!1794840 lt!1794653) (= lambda!194311 lambda!194274))))

(declare-fun bs!1029230 () Bool)

(assert (= bs!1029230 (and d!1460583 d!1460481)))

(assert (=> bs!1029230 (= (= lt!1794840 lt!1794694) (= lambda!194311 lambda!194286))))

(declare-fun bs!1029231 () Bool)

(assert (= bs!1029231 (and d!1460583 d!1460393)))

(assert (=> bs!1029231 (= (= lt!1794840 lt!1794606) (= lambda!194311 lambda!194270))))

(declare-fun bs!1029232 () Bool)

(assert (= bs!1029232 (and d!1460583 b!4633265)))

(assert (=> bs!1029232 (= (= lt!1794840 (ListMap!4346 Nil!51626)) (= lambda!194311 lambda!194268))))

(declare-fun bs!1029233 () Bool)

(assert (= bs!1029233 (and d!1460583 b!4633475)))

(assert (=> bs!1029233 (= (= lt!1794840 lt!1794240) (= lambda!194311 lambda!194309))))

(declare-fun bs!1029234 () Bool)

(assert (= bs!1029234 (and d!1460583 b!4633303)))

(assert (=> bs!1029234 (= (= lt!1794840 (ListMap!4346 Nil!51626)) (= lambda!194311 lambda!194284))))

(assert (=> bs!1029233 (= (= lt!1794840 lt!1794857) (= lambda!194311 lambda!194310))))

(declare-fun bs!1029235 () Bool)

(assert (= bs!1029235 (and d!1460583 b!4633266)))

(assert (=> bs!1029235 (= (= lt!1794840 (ListMap!4346 Nil!51626)) (= lambda!194311 lambda!194267))))

(assert (=> bs!1029232 (= (= lt!1794840 lt!1794623) (= lambda!194311 lambda!194269))))

(declare-fun bs!1029236 () Bool)

(assert (= bs!1029236 (and d!1460583 b!4633304)))

(assert (=> bs!1029236 (= (= lt!1794840 (ListMap!4346 Nil!51626)) (= lambda!194311 lambda!194283))))

(declare-fun bs!1029237 () Bool)

(assert (= bs!1029237 (and d!1460583 b!4633295)))

(assert (=> bs!1029237 (= (= lt!1794840 (ListMap!4346 Nil!51626)) (= lambda!194311 lambda!194276))))

(declare-fun bs!1029238 () Bool)

(assert (= bs!1029238 (and d!1460583 b!4633292)))

(assert (=> bs!1029238 (= (= lt!1794840 lt!1794687) (= lambda!194311 lambda!194278))))

(assert (=> bs!1029238 (= (= lt!1794840 (ListMap!4346 Nil!51626)) (= lambda!194311 lambda!194277))))

(assert (=> bs!1029234 (= (= lt!1794840 lt!1794711) (= lambda!194311 lambda!194285))))

(declare-fun bs!1029239 () Bool)

(assert (= bs!1029239 (and d!1460583 b!4633277)))

(assert (=> bs!1029239 (= (= lt!1794840 (ListMap!4346 Nil!51626)) (= lambda!194311 lambda!194272))))

(declare-fun bs!1029240 () Bool)

(assert (= bs!1029240 (and d!1460583 d!1460471)))

(assert (=> bs!1029240 (= (= lt!1794840 lt!1794670) (= lambda!194311 lambda!194279))))

(declare-fun bs!1029241 () Bool)

(assert (= bs!1029241 (and d!1460583 d!1460341)))

(assert (=> bs!1029241 (not (= lambda!194311 lambda!194172))))

(declare-fun bs!1029242 () Bool)

(assert (= bs!1029242 (and d!1460583 d!1460459)))

(assert (=> bs!1029242 (= (= lt!1794840 lt!1794636) (= lambda!194311 lambda!194275))))

(assert (=> d!1460583 true))

(declare-fun b!4633474 () Bool)

(declare-fun res!1944460 () Bool)

(declare-fun e!2890448 () Bool)

(assert (=> b!4633474 (=> (not res!1944460) (not e!2890448))))

(assert (=> b!4633474 (= res!1944460 (forall!10880 (toList!5041 lt!1794240) lambda!194311))))

(assert (=> d!1460583 e!2890448))

(declare-fun res!1944459 () Bool)

(assert (=> d!1460583 (=> (not res!1944459) (not e!2890448))))

(assert (=> d!1460583 (= res!1944459 (forall!10880 oldBucket!40 lambda!194311))))

(declare-fun e!2890447 () ListMap!4345)

(assert (=> d!1460583 (= lt!1794840 e!2890447)))

(declare-fun c!793081 () Bool)

(assert (=> d!1460583 (= c!793081 ((_ is Nil!51626) oldBucket!40))))

(assert (=> d!1460583 (noDuplicateKeys!1538 oldBucket!40)))

(assert (=> d!1460583 (= (addToMapMapFromBucket!999 oldBucket!40 lt!1794240) lt!1794840)))

(assert (=> b!4633475 (= e!2890447 lt!1794857)))

(declare-fun lt!1794852 () ListMap!4345)

(assert (=> b!4633475 (= lt!1794852 (+!1904 lt!1794240 (h!57704 oldBucket!40)))))

(assert (=> b!4633475 (= lt!1794857 (addToMapMapFromBucket!999 (t!358810 oldBucket!40) (+!1904 lt!1794240 (h!57704 oldBucket!40))))))

(declare-fun lt!1794849 () Unit!113755)

(declare-fun call!323351 () Unit!113755)

(assert (=> b!4633475 (= lt!1794849 call!323351)))

(assert (=> b!4633475 (forall!10880 (toList!5041 lt!1794240) lambda!194309)))

(declare-fun lt!1794860 () Unit!113755)

(assert (=> b!4633475 (= lt!1794860 lt!1794849)))

(assert (=> b!4633475 (forall!10880 (toList!5041 lt!1794852) lambda!194310)))

(declare-fun lt!1794844 () Unit!113755)

(declare-fun Unit!113865 () Unit!113755)

(assert (=> b!4633475 (= lt!1794844 Unit!113865)))

(assert (=> b!4633475 (forall!10880 (t!358810 oldBucket!40) lambda!194310)))

(declare-fun lt!1794854 () Unit!113755)

(declare-fun Unit!113866 () Unit!113755)

(assert (=> b!4633475 (= lt!1794854 Unit!113866)))

(declare-fun lt!1794856 () Unit!113755)

(declare-fun Unit!113867 () Unit!113755)

(assert (=> b!4633475 (= lt!1794856 Unit!113867)))

(declare-fun lt!1794850 () Unit!113755)

(assert (=> b!4633475 (= lt!1794850 (forallContained!3112 (toList!5041 lt!1794852) lambda!194310 (h!57704 oldBucket!40)))))

(assert (=> b!4633475 (contains!14729 lt!1794852 (_1!29593 (h!57704 oldBucket!40)))))

(declare-fun lt!1794858 () Unit!113755)

(declare-fun Unit!113868 () Unit!113755)

(assert (=> b!4633475 (= lt!1794858 Unit!113868)))

(assert (=> b!4633475 (contains!14729 lt!1794857 (_1!29593 (h!57704 oldBucket!40)))))

(declare-fun lt!1794848 () Unit!113755)

(declare-fun Unit!113869 () Unit!113755)

(assert (=> b!4633475 (= lt!1794848 Unit!113869)))

(assert (=> b!4633475 (forall!10880 oldBucket!40 lambda!194310)))

(declare-fun lt!1794847 () Unit!113755)

(declare-fun Unit!113870 () Unit!113755)

(assert (=> b!4633475 (= lt!1794847 Unit!113870)))

(declare-fun call!323349 () Bool)

(assert (=> b!4633475 call!323349))

(declare-fun lt!1794851 () Unit!113755)

(declare-fun Unit!113871 () Unit!113755)

(assert (=> b!4633475 (= lt!1794851 Unit!113871)))

(declare-fun lt!1794853 () Unit!113755)

(declare-fun Unit!113872 () Unit!113755)

(assert (=> b!4633475 (= lt!1794853 Unit!113872)))

(declare-fun lt!1794842 () Unit!113755)

(assert (=> b!4633475 (= lt!1794842 (addForallContainsKeyThenBeforeAdding!533 lt!1794240 lt!1794857 (_1!29593 (h!57704 oldBucket!40)) (_2!29593 (h!57704 oldBucket!40))))))

(assert (=> b!4633475 (forall!10880 (toList!5041 lt!1794240) lambda!194310)))

(declare-fun lt!1794855 () Unit!113755)

(assert (=> b!4633475 (= lt!1794855 lt!1794842)))

(assert (=> b!4633475 (forall!10880 (toList!5041 lt!1794240) lambda!194310)))

(declare-fun lt!1794859 () Unit!113755)

(declare-fun Unit!113873 () Unit!113755)

(assert (=> b!4633475 (= lt!1794859 Unit!113873)))

(declare-fun res!1944458 () Bool)

(declare-fun call!323350 () Bool)

(assert (=> b!4633475 (= res!1944458 call!323350)))

(declare-fun e!2890449 () Bool)

(assert (=> b!4633475 (=> (not res!1944458) (not e!2890449))))

(assert (=> b!4633475 e!2890449))

(declare-fun lt!1794841 () Unit!113755)

(declare-fun Unit!113874 () Unit!113755)

(assert (=> b!4633475 (= lt!1794841 Unit!113874)))

(assert (=> b!4633476 (= e!2890447 lt!1794240)))

(declare-fun lt!1794845 () Unit!113755)

(assert (=> b!4633476 (= lt!1794845 call!323351)))

(assert (=> b!4633476 call!323349))

(declare-fun lt!1794846 () Unit!113755)

(assert (=> b!4633476 (= lt!1794846 lt!1794845)))

(assert (=> b!4633476 call!323350))

(declare-fun lt!1794843 () Unit!113755)

(declare-fun Unit!113875 () Unit!113755)

(assert (=> b!4633476 (= lt!1794843 Unit!113875)))

(declare-fun b!4633477 () Bool)

(assert (=> b!4633477 (= e!2890449 (forall!10880 (toList!5041 lt!1794240) lambda!194310))))

(declare-fun b!4633478 () Bool)

(assert (=> b!4633478 (= e!2890448 (invariantList!1232 (toList!5041 lt!1794840)))))

(declare-fun bm!323344 () Bool)

(assert (=> bm!323344 (= call!323351 (lemmaContainsAllItsOwnKeys!534 lt!1794240))))

(declare-fun bm!323345 () Bool)

(assert (=> bm!323345 (= call!323350 (forall!10880 (ite c!793081 (toList!5041 lt!1794240) oldBucket!40) (ite c!793081 lambda!194308 lambda!194310)))))

(declare-fun bm!323346 () Bool)

(assert (=> bm!323346 (= call!323349 (forall!10880 (ite c!793081 (toList!5041 lt!1794240) (toList!5041 lt!1794852)) (ite c!793081 lambda!194308 lambda!194310)))))

(assert (= (and d!1460583 c!793081) b!4633476))

(assert (= (and d!1460583 (not c!793081)) b!4633475))

(assert (= (and b!4633475 res!1944458) b!4633477))

(assert (= (or b!4633476 b!4633475) bm!323344))

(assert (= (or b!4633476 b!4633475) bm!323345))

(assert (= (or b!4633476 b!4633475) bm!323346))

(assert (= (and d!1460583 res!1944459) b!4633474))

(assert (= (and b!4633474 res!1944460) b!4633478))

(declare-fun m!5486477 () Bool)

(assert (=> bm!323345 m!5486477))

(declare-fun m!5486479 () Bool)

(assert (=> b!4633474 m!5486479))

(declare-fun m!5486481 () Bool)

(assert (=> bm!323344 m!5486481))

(declare-fun m!5486483 () Bool)

(assert (=> b!4633478 m!5486483))

(declare-fun m!5486485 () Bool)

(assert (=> b!4633477 m!5486485))

(declare-fun m!5486487 () Bool)

(assert (=> d!1460583 m!5486487))

(assert (=> d!1460583 m!5485299))

(declare-fun m!5486489 () Bool)

(assert (=> b!4633475 m!5486489))

(declare-fun m!5486491 () Bool)

(assert (=> b!4633475 m!5486491))

(declare-fun m!5486493 () Bool)

(assert (=> b!4633475 m!5486493))

(declare-fun m!5486495 () Bool)

(assert (=> b!4633475 m!5486495))

(declare-fun m!5486497 () Bool)

(assert (=> b!4633475 m!5486497))

(assert (=> b!4633475 m!5486485))

(declare-fun m!5486499 () Bool)

(assert (=> b!4633475 m!5486499))

(assert (=> b!4633475 m!5486491))

(declare-fun m!5486501 () Bool)

(assert (=> b!4633475 m!5486501))

(declare-fun m!5486503 () Bool)

(assert (=> b!4633475 m!5486503))

(declare-fun m!5486505 () Bool)

(assert (=> b!4633475 m!5486505))

(assert (=> b!4633475 m!5486485))

(declare-fun m!5486507 () Bool)

(assert (=> b!4633475 m!5486507))

(declare-fun m!5486509 () Bool)

(assert (=> bm!323346 m!5486509))

(assert (=> b!4633028 d!1460583))

(declare-fun bs!1029243 () Bool)

(declare-fun d!1460585 () Bool)

(assert (= bs!1029243 (and d!1460585 d!1460531)))

(declare-fun lambda!194312 () Int)

(assert (=> bs!1029243 (= lambda!194312 lambda!194294)))

(declare-fun bs!1029244 () Bool)

(assert (= bs!1029244 (and d!1460585 d!1460573)))

(assert (=> bs!1029244 (= lambda!194312 lambda!194307)))

(declare-fun bs!1029245 () Bool)

(assert (= bs!1029245 (and d!1460585 d!1460489)))

(assert (=> bs!1029245 (= lambda!194312 lambda!194289)))

(declare-fun bs!1029246 () Bool)

(assert (= bs!1029246 (and d!1460585 d!1460515)))

(assert (=> bs!1029246 (= lambda!194312 lambda!194293)))

(declare-fun bs!1029247 () Bool)

(assert (= bs!1029247 (and d!1460585 d!1460563)))

(assert (=> bs!1029247 (= lambda!194312 lambda!194303)))

(declare-fun bs!1029248 () Bool)

(assert (= bs!1029248 (and d!1460585 b!4633030)))

(assert (=> bs!1029248 (= lambda!194312 lambda!194166)))

(declare-fun bs!1029249 () Bool)

(assert (= bs!1029249 (and d!1460585 d!1460567)))

(assert (=> bs!1029249 (= lambda!194312 lambda!194306)))

(declare-fun bs!1029250 () Bool)

(assert (= bs!1029250 (and d!1460585 d!1460533)))

(assert (=> bs!1029250 (= lambda!194312 lambda!194295)))

(declare-fun bs!1029251 () Bool)

(assert (= bs!1029251 (and d!1460585 d!1460513)))

(assert (=> bs!1029251 (= lambda!194312 lambda!194290)))

(declare-fun lt!1794861 () ListMap!4345)

(assert (=> d!1460585 (invariantList!1232 (toList!5041 lt!1794861))))

(declare-fun e!2890450 () ListMap!4345)

(assert (=> d!1460585 (= lt!1794861 e!2890450)))

(declare-fun c!793082 () Bool)

(assert (=> d!1460585 (= c!793082 ((_ is Cons!51627) Nil!51627))))

(assert (=> d!1460585 (forall!10878 Nil!51627 lambda!194312)))

(assert (=> d!1460585 (= (extractMap!1594 Nil!51627) lt!1794861)))

(declare-fun b!4633479 () Bool)

(assert (=> b!4633479 (= e!2890450 (addToMapMapFromBucket!999 (_2!29594 (h!57705 Nil!51627)) (extractMap!1594 (t!358811 Nil!51627))))))

(declare-fun b!4633480 () Bool)

(assert (=> b!4633480 (= e!2890450 (ListMap!4346 Nil!51626))))

(assert (= (and d!1460585 c!793082) b!4633479))

(assert (= (and d!1460585 (not c!793082)) b!4633480))

(declare-fun m!5486511 () Bool)

(assert (=> d!1460585 m!5486511))

(declare-fun m!5486513 () Bool)

(assert (=> d!1460585 m!5486513))

(declare-fun m!5486515 () Bool)

(assert (=> b!4633479 m!5486515))

(assert (=> b!4633479 m!5486515))

(declare-fun m!5486517 () Bool)

(assert (=> b!4633479 m!5486517))

(assert (=> b!4633028 d!1460585))

(declare-fun e!2890453 () Bool)

(declare-fun tp!1342418 () Bool)

(declare-fun b!4633485 () Bool)

(assert (=> b!4633485 (= e!2890453 (and tp_is_empty!29445 tp_is_empty!29447 tp!1342418))))

(assert (=> b!4633043 (= tp!1342411 e!2890453)))

(assert (= (and b!4633043 ((_ is Cons!51626) (t!358810 oldBucket!40))) b!4633485))

(declare-fun b!4633486 () Bool)

(declare-fun e!2890454 () Bool)

(declare-fun tp!1342419 () Bool)

(assert (=> b!4633486 (= e!2890454 (and tp_is_empty!29445 tp_is_empty!29447 tp!1342419))))

(assert (=> b!4633031 (= tp!1342410 e!2890454)))

(assert (= (and b!4633031 ((_ is Cons!51626) (t!358810 newBucket!224))) b!4633486))

(declare-fun b_lambda!170937 () Bool)

(assert (= b_lambda!170935 (or b!4633030 b_lambda!170937)))

(declare-fun bs!1029252 () Bool)

(declare-fun d!1460587 () Bool)

(assert (= bs!1029252 (and d!1460587 b!4633030)))

(assert (=> bs!1029252 (= (dynLambda!21526 lambda!194166 (h!57705 lt!1794214)) (noDuplicateKeys!1538 (_2!29594 (h!57705 lt!1794214))))))

(declare-fun m!5486519 () Bool)

(assert (=> bs!1029252 m!5486519))

(assert (=> b!4633470 d!1460587))

(declare-fun b_lambda!170939 () Bool)

(assert (= b_lambda!170933 (or b!4633030 b_lambda!170939)))

(declare-fun bs!1029253 () Bool)

(declare-fun d!1460589 () Bool)

(assert (= bs!1029253 (and d!1460589 b!4633030)))

(assert (=> bs!1029253 (= (dynLambda!21526 lambda!194166 lt!1794236) (noDuplicateKeys!1538 (_2!29594 lt!1794236)))))

(declare-fun m!5486521 () Bool)

(assert (=> bs!1029253 m!5486521))

(assert (=> d!1460569 d!1460589))

(check-sat (not b!4633297) (not d!1460343) (not b!4633364) (not d!1460377) (not b!4633472) (not b!4633426) (not d!1460585) (not b!4633121) (not bs!1029252) (not b!4633119) (not d!1460375) (not b!4633169) (not b!4633458) (not b!4633404) (not d!1460519) (not b!4633406) (not d!1460357) (not b!4633460) tp_is_empty!29445 (not b!4633124) (not b!4633264) (not d!1460539) (not d!1460459) (not bs!1029253) (not bm!323343) (not d!1460537) (not b!4633170) (not d!1460527) (not b!4633120) (not d!1460329) (not b!4633291) (not d!1460583) (not bm!323332) (not b!4633275) (not b!4633126) (not b!4633464) (not b!4633127) (not b!4633163) (not d!1460393) (not d!1460565) (not d!1460557) (not b!4633462) (not bm!323311) (not bm!323331) (not b!4633479) (not b!4633376) (not d!1460359) (not b!4633463) (not b!4633362) (not bm!323344) (not bm!323341) (not b!4633276) (not b!4633461) (not d!1460525) (not d!1460361) (not d!1460353) (not b!4633398) (not b!4633303) (not bm!323333) (not d!1460563) (not d!1460487) (not d!1460469) (not b!4633442) (not d!1460355) (not b!4633439) tp_is_empty!29447 (not d!1460481) (not b!4633455) (not b!4633287) (not b!4633167) (not d!1460327) (not d!1460373) (not d!1460567) (not b_lambda!170937) (not b!4633049) (not b!4633473) (not b!4633168) (not b!4633279) (not d!1460533) (not bm!323334) (not d!1460571) (not b!4633371) (not b!4633449) (not b!4633115) (not b!4633459) (not d!1460379) (not d!1460341) (not d!1460523) (not d!1460577) (not b!4633378) (not d!1460363) (not b!4633305) (not b!4633296) (not bm!323336) (not d!1460325) (not bm!323337) (not b!4633306) (not b!4633451) (not d!1460551) (not d!1460561) (not b!4633116) (not d!1460573) (not b!4633166) (not b!4633363) (not bm!323335) (not bm!323342) (not d!1460453) (not b!4633370) (not b!4633171) (not d!1460569) (not b!4633375) (not b_lambda!170939) (not b!4633474) (not d!1460535) (not d!1460579) (not d!1460511) (not b!4633292) (not d!1460489) (not b!4633440) (not b!4633486) (not d!1460333) (not bm!323345) (not b!4633288) (not bm!323339) (not d!1460323) (not b!4633118) (not b!4633302) (not b!4633475) (not d!1460559) (not b!4633454) (not d!1460513) (not bm!323340) (not b!4633373) (not bm!323346) (not bm!323338) (not b!4633382) (not b!4633117) (not b!4633072) (not b!4633268) (not d!1460515) (not d!1460367) (not b!4633372) (not d!1460365) (not d!1460531) (not b!4633265) (not b!4633360) (not d!1460471) (not b!4633428) (not d!1460549) (not b!4633427) (not b!4633374) (not b!4633485) (not d!1460381) (not b!4633424) (not d!1460529) (not b!4633441) (not b!4633471) (not b!4633267) (not b!4633477) (not b!4633430) (not b!4633278) (not b!4633478))
(check-sat)
