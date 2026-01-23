; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!476980 () Bool)

(assert start!476980)

(declare-fun b!4701942 () Bool)

(declare-fun res!1985385 () Bool)

(declare-fun e!2933041 () Bool)

(assert (=> b!4701942 (=> (not res!1985385) (not e!2933041))))

(declare-datatypes ((Hashable!6271 0))(
  ( (HashableExt!6270 (__x!31974 Int)) )
))
(declare-fun hashF!1323 () Hashable!6271)

(declare-datatypes ((K!13905 0))(
  ( (K!13906 (val!19395 Int)) )
))
(declare-datatypes ((V!14151 0))(
  ( (V!14152 (val!19396 Int)) )
))
(declare-datatypes ((tuple2!54002 0))(
  ( (tuple2!54003 (_1!30295 K!13905) (_2!30295 V!14151)) )
))
(declare-datatypes ((List!52667 0))(
  ( (Nil!52543) (Cons!52543 (h!58826 tuple2!54002) (t!359881 List!52667)) )
))
(declare-fun oldBucket!34 () List!52667)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1728 (List!52667 (_ BitVec 64) Hashable!6271) Bool)

(assert (=> b!4701942 (= res!1985385 (allKeysSameHash!1728 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4701943 () Bool)

(declare-fun e!2933051 () Bool)

(declare-fun e!2933052 () Bool)

(assert (=> b!4701943 (= e!2933051 e!2933052)))

(declare-fun res!1985379 () Bool)

(assert (=> b!4701943 (=> res!1985379 e!2933052)))

(declare-datatypes ((ListMap!5057 0))(
  ( (ListMap!5058 (toList!5693 List!52667)) )
))
(declare-fun lt!1865252 () ListMap!5057)

(declare-fun lt!1865230 () ListMap!5057)

(declare-fun eq!1061 (ListMap!5057 ListMap!5057) Bool)

(declare-fun +!2186 (ListMap!5057 tuple2!54002) ListMap!5057)

(assert (=> b!4701943 (= res!1985379 (not (eq!1061 lt!1865230 (+!2186 lt!1865252 (h!58826 oldBucket!34)))))))

(declare-fun lt!1865220 () ListMap!5057)

(assert (=> b!4701943 (eq!1061 lt!1865220 (+!2186 lt!1865252 (h!58826 oldBucket!34)))))

(declare-fun lt!1865226 () ListMap!5057)

(declare-datatypes ((Unit!126368 0))(
  ( (Unit!126369) )
))
(declare-fun lt!1865247 () Unit!126368)

(declare-fun lemmaAddToEqMapsPreservesEq!84 (ListMap!5057 ListMap!5057 K!13905 V!14151) Unit!126368)

(assert (=> b!4701943 (= lt!1865247 (lemmaAddToEqMapsPreservesEq!84 lt!1865226 lt!1865252 (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34))))))

(declare-fun b!4701944 () Bool)

(declare-datatypes ((tuple2!54004 0))(
  ( (tuple2!54005 (_1!30296 (_ BitVec 64)) (_2!30296 List!52667)) )
))
(declare-datatypes ((List!52668 0))(
  ( (Nil!52544) (Cons!52544 (h!58827 tuple2!54004) (t!359882 List!52668)) )
))
(declare-fun lt!1865223 () List!52668)

(declare-fun lambda!210453 () Int)

(declare-fun forall!11407 (List!52668 Int) Bool)

(assert (=> b!4701944 (= e!2933052 (forall!11407 lt!1865223 lambda!210453))))

(declare-fun lt!1865242 () ListMap!5057)

(declare-fun lt!1865233 () ListMap!5057)

(declare-fun key!4653 () K!13905)

(declare-fun -!706 (ListMap!5057 K!13905) ListMap!5057)

(assert (=> b!4701944 (eq!1061 lt!1865242 (-!706 lt!1865233 key!4653))))

(declare-fun lt!1865243 () Unit!126368)

(declare-fun lt!1865221 () ListMap!5057)

(declare-fun lemmaRemovePreservesEq!88 (ListMap!5057 ListMap!5057 K!13905) Unit!126368)

(assert (=> b!4701944 (= lt!1865243 (lemmaRemovePreservesEq!88 lt!1865221 lt!1865233 key!4653))))

(declare-fun b!4701945 () Bool)

(declare-fun e!2933048 () Bool)

(declare-fun e!2933054 () Bool)

(assert (=> b!4701945 (= e!2933048 e!2933054)))

(declare-fun res!1985380 () Bool)

(assert (=> b!4701945 (=> res!1985380 e!2933054)))

(declare-fun containsKey!3177 (List!52667 K!13905) Bool)

(assert (=> b!4701945 (= res!1985380 (not (containsKey!3177 (t!359881 oldBucket!34) key!4653)))))

(assert (=> b!4701945 (containsKey!3177 oldBucket!34 key!4653)))

(declare-fun lt!1865238 () Unit!126368)

(declare-fun lemmaGetPairDefinedThenContainsKey!254 (List!52667 K!13905 Hashable!6271) Unit!126368)

(assert (=> b!4701945 (= lt!1865238 (lemmaGetPairDefinedThenContainsKey!254 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1865244 () List!52667)

(declare-datatypes ((Option!12201 0))(
  ( (None!12200) (Some!12200 (v!46691 tuple2!54002)) )
))
(declare-fun isDefined!9456 (Option!12201) Bool)

(declare-fun getPair!506 (List!52667 K!13905) Option!12201)

(assert (=> b!4701945 (isDefined!9456 (getPair!506 lt!1865244 key!4653))))

(declare-datatypes ((ListLongMap!4223 0))(
  ( (ListLongMap!4224 (toList!5694 List!52668)) )
))
(declare-fun lm!2023 () ListLongMap!4223)

(declare-fun lt!1865239 () Unit!126368)

(declare-fun lt!1865229 () tuple2!54004)

(declare-fun forallContained!3514 (List!52668 Int tuple2!54004) Unit!126368)

(assert (=> b!4701945 (= lt!1865239 (forallContained!3514 (toList!5694 lm!2023) lambda!210453 lt!1865229))))

(declare-fun contains!15828 (List!52668 tuple2!54004) Bool)

(assert (=> b!4701945 (contains!15828 (toList!5694 lm!2023) lt!1865229)))

(declare-fun lt!1865232 () (_ BitVec 64))

(assert (=> b!4701945 (= lt!1865229 (tuple2!54005 lt!1865232 lt!1865244))))

(declare-fun lt!1865224 () Unit!126368)

(declare-fun lemmaGetValueImpliesTupleContained!311 (ListLongMap!4223 (_ BitVec 64) List!52667) Unit!126368)

(assert (=> b!4701945 (= lt!1865224 (lemmaGetValueImpliesTupleContained!311 lm!2023 lt!1865232 lt!1865244))))

(declare-fun apply!12385 (ListLongMap!4223 (_ BitVec 64)) List!52667)

(assert (=> b!4701945 (= lt!1865244 (apply!12385 lm!2023 lt!1865232))))

(declare-fun contains!15829 (ListLongMap!4223 (_ BitVec 64)) Bool)

(assert (=> b!4701945 (contains!15829 lm!2023 lt!1865232)))

(declare-fun lt!1865241 () Unit!126368)

(declare-fun lemmaInGenMapThenLongMapContainsHash!712 (ListLongMap!4223 K!13905 Hashable!6271) Unit!126368)

(assert (=> b!4701945 (= lt!1865241 (lemmaInGenMapThenLongMapContainsHash!712 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1865231 () Unit!126368)

(declare-fun lemmaInGenMapThenGetPairDefined!302 (ListLongMap!4223 K!13905 Hashable!6271) Unit!126368)

(assert (=> b!4701945 (= lt!1865231 (lemmaInGenMapThenGetPairDefined!302 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4701946 () Bool)

(declare-fun res!1985364 () Bool)

(assert (=> b!4701946 (=> (not res!1985364) (not e!2933041))))

(declare-fun newBucket!218 () List!52667)

(declare-fun noDuplicateKeys!1902 (List!52667) Bool)

(assert (=> b!4701946 (= res!1985364 (noDuplicateKeys!1902 newBucket!218))))

(declare-fun b!4701947 () Bool)

(declare-fun res!1985375 () Bool)

(declare-fun e!2933045 () Bool)

(assert (=> b!4701947 (=> res!1985375 e!2933045)))

(declare-fun lt!1865246 () tuple2!54002)

(declare-fun lt!1865235 () ListMap!5057)

(assert (=> b!4701947 (= res!1985375 (not (eq!1061 lt!1865233 (+!2186 lt!1865235 lt!1865246))))))

(declare-fun b!4701948 () Bool)

(declare-fun res!1985367 () Bool)

(assert (=> b!4701948 (=> res!1985367 e!2933045)))

(assert (=> b!4701948 (= res!1985367 (not (= (h!58826 oldBucket!34) lt!1865246)))))

(declare-fun res!1985363 () Bool)

(assert (=> start!476980 (=> (not res!1985363) (not e!2933041))))

(assert (=> start!476980 (= res!1985363 (forall!11407 (toList!5694 lm!2023) lambda!210453))))

(assert (=> start!476980 e!2933041))

(declare-fun e!2933044 () Bool)

(declare-fun inv!67779 (ListLongMap!4223) Bool)

(assert (=> start!476980 (and (inv!67779 lm!2023) e!2933044)))

(declare-fun tp_is_empty!30901 () Bool)

(assert (=> start!476980 tp_is_empty!30901))

(declare-fun e!2933047 () Bool)

(assert (=> start!476980 e!2933047))

(assert (=> start!476980 true))

(declare-fun e!2933042 () Bool)

(assert (=> start!476980 e!2933042))

(declare-fun b!4701949 () Bool)

(declare-fun res!1985365 () Bool)

(declare-fun e!2933050 () Bool)

(assert (=> b!4701949 (=> (not res!1985365) (not e!2933050))))

(assert (=> b!4701949 (= res!1985365 (allKeysSameHash!1728 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4701950 () Bool)

(declare-fun e!2933053 () Bool)

(assert (=> b!4701950 (= e!2933053 e!2933050)))

(declare-fun res!1985370 () Bool)

(assert (=> b!4701950 (=> (not res!1985370) (not e!2933050))))

(assert (=> b!4701950 (= res!1985370 (= lt!1865232 hash!405))))

(declare-fun hash!4182 (Hashable!6271 K!13905) (_ BitVec 64))

(assert (=> b!4701950 (= lt!1865232 (hash!4182 hashF!1323 key!4653))))

(declare-fun tp_is_empty!30903 () Bool)

(declare-fun b!4701951 () Bool)

(declare-fun tp!1346729 () Bool)

(assert (=> b!4701951 (= e!2933047 (and tp_is_empty!30901 tp_is_empty!30903 tp!1346729))))

(declare-fun b!4701952 () Bool)

(declare-fun res!1985381 () Bool)

(assert (=> b!4701952 (=> (not res!1985381) (not e!2933041))))

(assert (=> b!4701952 (= res!1985381 (noDuplicateKeys!1902 oldBucket!34))))

(declare-fun b!4701953 () Bool)

(declare-fun e!2933043 () Bool)

(assert (=> b!4701953 (= e!2933043 e!2933045)))

(declare-fun res!1985371 () Bool)

(assert (=> b!4701953 (=> res!1985371 e!2933045)))

(assert (=> b!4701953 (= res!1985371 (not (eq!1061 lt!1865233 (+!2186 lt!1865235 (h!58826 oldBucket!34)))))))

(declare-fun lt!1865216 () List!52667)

(declare-fun extractMap!1928 (List!52668) ListMap!5057)

(assert (=> b!4701953 (= lt!1865235 (extractMap!1928 (Cons!52544 (tuple2!54005 hash!405 lt!1865216) (t!359882 (toList!5694 lm!2023)))))))

(declare-fun lt!1865245 () tuple2!54004)

(assert (=> b!4701953 (= lt!1865233 (extractMap!1928 (Cons!52544 lt!1865245 (t!359882 (toList!5694 lm!2023)))))))

(declare-fun lt!1865234 () List!52667)

(declare-fun lt!1865217 () ListMap!5057)

(declare-fun addToMapMapFromBucket!1334 (List!52667 ListMap!5057) ListMap!5057)

(assert (=> b!4701953 (eq!1061 (addToMapMapFromBucket!1334 (Cons!52543 lt!1865246 lt!1865234) lt!1865217) (+!2186 (addToMapMapFromBucket!1334 lt!1865234 lt!1865217) lt!1865246))))

(declare-fun lt!1865225 () Unit!126368)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!310 (tuple2!54002 List!52667 ListMap!5057) Unit!126368)

(assert (=> b!4701953 (= lt!1865225 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!310 lt!1865246 lt!1865234 lt!1865217))))

(declare-fun head!10067 (List!52667) tuple2!54002)

(assert (=> b!4701953 (= lt!1865246 (head!10067 newBucket!218))))

(declare-fun lt!1865250 () tuple2!54002)

(assert (=> b!4701953 (eq!1061 (addToMapMapFromBucket!1334 (Cons!52543 lt!1865250 lt!1865216) lt!1865217) (+!2186 (addToMapMapFromBucket!1334 lt!1865216 lt!1865217) lt!1865250))))

(declare-fun lt!1865240 () Unit!126368)

(assert (=> b!4701953 (= lt!1865240 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!310 lt!1865250 lt!1865216 lt!1865217))))

(assert (=> b!4701953 (= lt!1865250 (head!10067 oldBucket!34))))

(declare-fun lt!1865249 () ListMap!5057)

(declare-fun contains!15830 (ListMap!5057 K!13905) Bool)

(assert (=> b!4701953 (contains!15830 lt!1865249 key!4653)))

(assert (=> b!4701953 (= lt!1865249 (extractMap!1928 lt!1865223))))

(declare-fun lt!1865236 () Unit!126368)

(declare-fun lt!1865248 () ListLongMap!4223)

(declare-fun lemmaListContainsThenExtractedMapContains!494 (ListLongMap!4223 K!13905 Hashable!6271) Unit!126368)

(assert (=> b!4701953 (= lt!1865236 (lemmaListContainsThenExtractedMapContains!494 lt!1865248 key!4653 hashF!1323))))

(assert (=> b!4701953 (= lt!1865248 (ListLongMap!4224 lt!1865223))))

(declare-fun lt!1865227 () tuple2!54004)

(assert (=> b!4701953 (= lt!1865223 (Cons!52544 lt!1865227 (t!359882 (toList!5694 lm!2023))))))

(assert (=> b!4701953 (= lt!1865227 (tuple2!54005 hash!405 (t!359881 oldBucket!34)))))

(declare-fun b!4701954 () Bool)

(declare-fun tp!1346728 () Bool)

(assert (=> b!4701954 (= e!2933044 tp!1346728)))

(declare-fun b!4701955 () Bool)

(assert (=> b!4701955 (= e!2933054 e!2933043)))

(declare-fun res!1985374 () Bool)

(assert (=> b!4701955 (=> res!1985374 e!2933043)))

(declare-fun removePairForKey!1497 (List!52667 K!13905) List!52667)

(assert (=> b!4701955 (= res!1985374 (not (= (removePairForKey!1497 lt!1865216 key!4653) lt!1865234)))))

(declare-fun tail!8731 (List!52667) List!52667)

(assert (=> b!4701955 (= lt!1865234 (tail!8731 newBucket!218))))

(assert (=> b!4701955 (= lt!1865216 (tail!8731 oldBucket!34))))

(declare-fun b!4701956 () Bool)

(declare-fun e!2933046 () Bool)

(assert (=> b!4701956 (= e!2933045 e!2933046)))

(declare-fun res!1985376 () Bool)

(assert (=> b!4701956 (=> res!1985376 e!2933046)))

(assert (=> b!4701956 (= res!1985376 (not (eq!1061 lt!1865252 lt!1865226)))))

(assert (=> b!4701956 (= lt!1865226 (-!706 lt!1865249 key!4653))))

(declare-fun lt!1865218 () tuple2!54004)

(assert (=> b!4701956 (= lt!1865252 (extractMap!1928 (Cons!52544 lt!1865218 (t!359882 (toList!5694 lm!2023)))))))

(declare-fun lt!1865251 () List!52668)

(assert (=> b!4701956 (eq!1061 (extractMap!1928 (Cons!52544 lt!1865218 lt!1865251)) (-!706 (extractMap!1928 (Cons!52544 lt!1865227 lt!1865251)) key!4653))))

(declare-fun tail!8732 (List!52668) List!52668)

(assert (=> b!4701956 (= lt!1865251 (tail!8732 lt!1865223))))

(assert (=> b!4701956 (= lt!1865218 (tuple2!54005 hash!405 lt!1865234))))

(declare-fun lt!1865219 () Unit!126368)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!76 (ListLongMap!4223 (_ BitVec 64) List!52667 List!52667 K!13905 Hashable!6271) Unit!126368)

(assert (=> b!4701956 (= lt!1865219 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!76 lt!1865248 hash!405 (t!359881 oldBucket!34) lt!1865234 key!4653 hashF!1323))))

(declare-fun b!4701957 () Bool)

(declare-fun res!1985368 () Bool)

(assert (=> b!4701957 (=> (not res!1985368) (not e!2933050))))

(declare-fun allKeysSameHashInMap!1816 (ListLongMap!4223 Hashable!6271) Bool)

(assert (=> b!4701957 (= res!1985368 (allKeysSameHashInMap!1816 lm!2023 hashF!1323))))

(declare-fun b!4701958 () Bool)

(declare-fun res!1985384 () Bool)

(declare-fun e!2933049 () Bool)

(assert (=> b!4701958 (=> (not res!1985384) (not e!2933049))))

(get-info :version)

(assert (=> b!4701958 (= res!1985384 ((_ is Cons!52544) (toList!5694 lm!2023)))))

(declare-fun b!4701959 () Bool)

(declare-fun res!1985366 () Bool)

(assert (=> b!4701959 (=> res!1985366 e!2933051)))

(assert (=> b!4701959 (= res!1985366 (not (eq!1061 lt!1865242 lt!1865230)))))

(declare-fun b!4701960 () Bool)

(declare-fun res!1985382 () Bool)

(assert (=> b!4701960 (=> res!1985382 e!2933051)))

(assert (=> b!4701960 (= res!1985382 (not (eq!1061 lt!1865221 lt!1865233)))))

(declare-fun b!4701961 () Bool)

(assert (=> b!4701961 (= e!2933050 e!2933049)))

(declare-fun res!1985377 () Bool)

(assert (=> b!4701961 (=> (not res!1985377) (not e!2933049))))

(declare-fun head!10068 (List!52668) tuple2!54004)

(assert (=> b!4701961 (= res!1985377 (= (head!10068 (toList!5694 lm!2023)) lt!1865245))))

(assert (=> b!4701961 (= lt!1865245 (tuple2!54005 hash!405 oldBucket!34))))

(declare-fun b!4701962 () Bool)

(declare-fun res!1985372 () Bool)

(assert (=> b!4701962 (=> (not res!1985372) (not e!2933041))))

(assert (=> b!4701962 (= res!1985372 (= (removePairForKey!1497 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4701963 () Bool)

(declare-fun tp!1346727 () Bool)

(assert (=> b!4701963 (= e!2933042 (and tp_is_empty!30901 tp_is_empty!30903 tp!1346727))))

(declare-fun b!4701964 () Bool)

(declare-fun res!1985383 () Bool)

(assert (=> b!4701964 (=> res!1985383 e!2933043)))

(assert (=> b!4701964 (= res!1985383 (not (= (removePairForKey!1497 (t!359881 oldBucket!34) key!4653) lt!1865234)))))

(declare-fun b!4701965 () Bool)

(assert (=> b!4701965 (= e!2933046 e!2933051)))

(declare-fun res!1985378 () Bool)

(assert (=> b!4701965 (=> res!1985378 e!2933051)))

(assert (=> b!4701965 (= res!1985378 (not (= lt!1865242 lt!1865230)))))

(assert (=> b!4701965 (= lt!1865230 (+!2186 lt!1865226 (h!58826 oldBucket!34)))))

(assert (=> b!4701965 (= lt!1865242 (-!706 lt!1865221 key!4653))))

(assert (=> b!4701965 (= lt!1865221 (+!2186 lt!1865249 (h!58826 oldBucket!34)))))

(declare-fun lt!1865237 () ListMap!5057)

(assert (=> b!4701965 (= lt!1865237 lt!1865220)))

(assert (=> b!4701965 (= lt!1865220 (+!2186 lt!1865226 (h!58826 oldBucket!34)))))

(assert (=> b!4701965 (= lt!1865237 (-!706 (+!2186 lt!1865249 (h!58826 oldBucket!34)) key!4653))))

(declare-fun lt!1865222 () Unit!126368)

(declare-fun addRemoveCommutativeForDiffKeys!107 (ListMap!5057 K!13905 V!14151 K!13905) Unit!126368)

(assert (=> b!4701965 (= lt!1865222 (addRemoveCommutativeForDiffKeys!107 lt!1865249 (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34)) key!4653))))

(declare-fun b!4701966 () Bool)

(assert (=> b!4701966 (= e!2933041 e!2933053)))

(declare-fun res!1985373 () Bool)

(assert (=> b!4701966 (=> (not res!1985373) (not e!2933053))))

(declare-fun lt!1865228 () ListMap!5057)

(assert (=> b!4701966 (= res!1985373 (contains!15830 lt!1865228 key!4653))))

(assert (=> b!4701966 (= lt!1865228 (extractMap!1928 (toList!5694 lm!2023)))))

(declare-fun b!4701967 () Bool)

(assert (=> b!4701967 (= e!2933049 (not e!2933048))))

(declare-fun res!1985369 () Bool)

(assert (=> b!4701967 (=> res!1985369 e!2933048)))

(assert (=> b!4701967 (= res!1985369 (or (and ((_ is Cons!52543) oldBucket!34) (= (_1!30295 (h!58826 oldBucket!34)) key!4653)) (not ((_ is Cons!52543) oldBucket!34)) (= (_1!30295 (h!58826 oldBucket!34)) key!4653)))))

(assert (=> b!4701967 (= lt!1865228 (addToMapMapFromBucket!1334 (_2!30296 (h!58827 (toList!5694 lm!2023))) lt!1865217))))

(assert (=> b!4701967 (= lt!1865217 (extractMap!1928 (t!359882 (toList!5694 lm!2023))))))

(declare-fun tail!8733 (ListLongMap!4223) ListLongMap!4223)

(assert (=> b!4701967 (= (t!359882 (toList!5694 lm!2023)) (toList!5694 (tail!8733 lm!2023)))))

(assert (= (and start!476980 res!1985363) b!4701952))

(assert (= (and b!4701952 res!1985381) b!4701946))

(assert (= (and b!4701946 res!1985364) b!4701962))

(assert (= (and b!4701962 res!1985372) b!4701942))

(assert (= (and b!4701942 res!1985385) b!4701966))

(assert (= (and b!4701966 res!1985373) b!4701950))

(assert (= (and b!4701950 res!1985370) b!4701949))

(assert (= (and b!4701949 res!1985365) b!4701957))

(assert (= (and b!4701957 res!1985368) b!4701961))

(assert (= (and b!4701961 res!1985377) b!4701958))

(assert (= (and b!4701958 res!1985384) b!4701967))

(assert (= (and b!4701967 (not res!1985369)) b!4701945))

(assert (= (and b!4701945 (not res!1985380)) b!4701955))

(assert (= (and b!4701955 (not res!1985374)) b!4701964))

(assert (= (and b!4701964 (not res!1985383)) b!4701953))

(assert (= (and b!4701953 (not res!1985371)) b!4701948))

(assert (= (and b!4701948 (not res!1985367)) b!4701947))

(assert (= (and b!4701947 (not res!1985375)) b!4701956))

(assert (= (and b!4701956 (not res!1985376)) b!4701965))

(assert (= (and b!4701965 (not res!1985378)) b!4701959))

(assert (= (and b!4701959 (not res!1985366)) b!4701960))

(assert (= (and b!4701960 (not res!1985382)) b!4701943))

(assert (= (and b!4701943 (not res!1985379)) b!4701944))

(assert (= start!476980 b!4701954))

(assert (= (and start!476980 ((_ is Cons!52543) oldBucket!34)) b!4701951))

(assert (= (and start!476980 ((_ is Cons!52543) newBucket!218)) b!4701963))

(declare-fun m!5618217 () Bool)

(assert (=> b!4701964 m!5618217))

(declare-fun m!5618219 () Bool)

(assert (=> b!4701959 m!5618219))

(declare-fun m!5618221 () Bool)

(assert (=> b!4701966 m!5618221))

(declare-fun m!5618223 () Bool)

(assert (=> b!4701966 m!5618223))

(declare-fun m!5618225 () Bool)

(assert (=> b!4701945 m!5618225))

(declare-fun m!5618227 () Bool)

(assert (=> b!4701945 m!5618227))

(declare-fun m!5618229 () Bool)

(assert (=> b!4701945 m!5618229))

(declare-fun m!5618231 () Bool)

(assert (=> b!4701945 m!5618231))

(declare-fun m!5618233 () Bool)

(assert (=> b!4701945 m!5618233))

(assert (=> b!4701945 m!5618229))

(declare-fun m!5618235 () Bool)

(assert (=> b!4701945 m!5618235))

(declare-fun m!5618237 () Bool)

(assert (=> b!4701945 m!5618237))

(declare-fun m!5618239 () Bool)

(assert (=> b!4701945 m!5618239))

(declare-fun m!5618241 () Bool)

(assert (=> b!4701945 m!5618241))

(declare-fun m!5618243 () Bool)

(assert (=> b!4701945 m!5618243))

(declare-fun m!5618245 () Bool)

(assert (=> b!4701945 m!5618245))

(declare-fun m!5618247 () Bool)

(assert (=> b!4701945 m!5618247))

(declare-fun m!5618249 () Bool)

(assert (=> b!4701962 m!5618249))

(declare-fun m!5618251 () Bool)

(assert (=> b!4701950 m!5618251))

(declare-fun m!5618253 () Bool)

(assert (=> b!4701946 m!5618253))

(declare-fun m!5618255 () Bool)

(assert (=> b!4701967 m!5618255))

(declare-fun m!5618257 () Bool)

(assert (=> b!4701967 m!5618257))

(declare-fun m!5618259 () Bool)

(assert (=> b!4701967 m!5618259))

(declare-fun m!5618261 () Bool)

(assert (=> b!4701960 m!5618261))

(declare-fun m!5618263 () Bool)

(assert (=> b!4701965 m!5618263))

(declare-fun m!5618265 () Bool)

(assert (=> b!4701965 m!5618265))

(declare-fun m!5618267 () Bool)

(assert (=> b!4701965 m!5618267))

(declare-fun m!5618269 () Bool)

(assert (=> b!4701965 m!5618269))

(declare-fun m!5618271 () Bool)

(assert (=> b!4701965 m!5618271))

(assert (=> b!4701965 m!5618267))

(declare-fun m!5618273 () Bool)

(assert (=> b!4701956 m!5618273))

(declare-fun m!5618275 () Bool)

(assert (=> b!4701956 m!5618275))

(declare-fun m!5618277 () Bool)

(assert (=> b!4701956 m!5618277))

(declare-fun m!5618279 () Bool)

(assert (=> b!4701956 m!5618279))

(declare-fun m!5618281 () Bool)

(assert (=> b!4701956 m!5618281))

(declare-fun m!5618283 () Bool)

(assert (=> b!4701956 m!5618283))

(declare-fun m!5618285 () Bool)

(assert (=> b!4701956 m!5618285))

(assert (=> b!4701956 m!5618277))

(declare-fun m!5618287 () Bool)

(assert (=> b!4701956 m!5618287))

(assert (=> b!4701956 m!5618283))

(assert (=> b!4701956 m!5618279))

(declare-fun m!5618289 () Bool)

(assert (=> b!4701956 m!5618289))

(declare-fun m!5618291 () Bool)

(assert (=> b!4701953 m!5618291))

(declare-fun m!5618293 () Bool)

(assert (=> b!4701953 m!5618293))

(declare-fun m!5618295 () Bool)

(assert (=> b!4701953 m!5618295))

(declare-fun m!5618297 () Bool)

(assert (=> b!4701953 m!5618297))

(declare-fun m!5618299 () Bool)

(assert (=> b!4701953 m!5618299))

(declare-fun m!5618301 () Bool)

(assert (=> b!4701953 m!5618301))

(declare-fun m!5618303 () Bool)

(assert (=> b!4701953 m!5618303))

(assert (=> b!4701953 m!5618293))

(declare-fun m!5618305 () Bool)

(assert (=> b!4701953 m!5618305))

(declare-fun m!5618307 () Bool)

(assert (=> b!4701953 m!5618307))

(declare-fun m!5618309 () Bool)

(assert (=> b!4701953 m!5618309))

(declare-fun m!5618311 () Bool)

(assert (=> b!4701953 m!5618311))

(declare-fun m!5618313 () Bool)

(assert (=> b!4701953 m!5618313))

(declare-fun m!5618315 () Bool)

(assert (=> b!4701953 m!5618315))

(assert (=> b!4701953 m!5618313))

(assert (=> b!4701953 m!5618297))

(declare-fun m!5618317 () Bool)

(assert (=> b!4701953 m!5618317))

(declare-fun m!5618319 () Bool)

(assert (=> b!4701953 m!5618319))

(declare-fun m!5618321 () Bool)

(assert (=> b!4701953 m!5618321))

(assert (=> b!4701953 m!5618307))

(assert (=> b!4701953 m!5618303))

(declare-fun m!5618323 () Bool)

(assert (=> b!4701953 m!5618323))

(declare-fun m!5618325 () Bool)

(assert (=> b!4701953 m!5618325))

(assert (=> b!4701953 m!5618295))

(assert (=> b!4701953 m!5618291))

(declare-fun m!5618327 () Bool)

(assert (=> b!4701953 m!5618327))

(declare-fun m!5618329 () Bool)

(assert (=> b!4701955 m!5618329))

(declare-fun m!5618331 () Bool)

(assert (=> b!4701955 m!5618331))

(declare-fun m!5618333 () Bool)

(assert (=> b!4701955 m!5618333))

(declare-fun m!5618335 () Bool)

(assert (=> b!4701943 m!5618335))

(assert (=> b!4701943 m!5618335))

(declare-fun m!5618337 () Bool)

(assert (=> b!4701943 m!5618337))

(assert (=> b!4701943 m!5618335))

(declare-fun m!5618339 () Bool)

(assert (=> b!4701943 m!5618339))

(declare-fun m!5618341 () Bool)

(assert (=> b!4701943 m!5618341))

(declare-fun m!5618343 () Bool)

(assert (=> b!4701947 m!5618343))

(assert (=> b!4701947 m!5618343))

(declare-fun m!5618345 () Bool)

(assert (=> b!4701947 m!5618345))

(declare-fun m!5618347 () Bool)

(assert (=> start!476980 m!5618347))

(declare-fun m!5618349 () Bool)

(assert (=> start!476980 m!5618349))

(declare-fun m!5618351 () Bool)

(assert (=> b!4701957 m!5618351))

(declare-fun m!5618353 () Bool)

(assert (=> b!4701942 m!5618353))

(declare-fun m!5618355 () Bool)

(assert (=> b!4701949 m!5618355))

(declare-fun m!5618357 () Bool)

(assert (=> b!4701952 m!5618357))

(declare-fun m!5618359 () Bool)

(assert (=> b!4701944 m!5618359))

(declare-fun m!5618361 () Bool)

(assert (=> b!4701944 m!5618361))

(assert (=> b!4701944 m!5618361))

(declare-fun m!5618363 () Bool)

(assert (=> b!4701944 m!5618363))

(declare-fun m!5618365 () Bool)

(assert (=> b!4701944 m!5618365))

(declare-fun m!5618367 () Bool)

(assert (=> b!4701961 m!5618367))

(check-sat (not b!4701949) tp_is_empty!30903 (not b!4701960) (not b!4701942) (not b!4701950) (not b!4701951) (not b!4701952) (not b!4701953) (not b!4701946) (not b!4701966) (not b!4701945) (not b!4701964) (not b!4701947) (not b!4701961) (not b!4701956) (not b!4701962) (not b!4701959) (not b!4701965) (not b!4701963) (not b!4701954) (not b!4701943) tp_is_empty!30901 (not b!4701957) (not b!4701967) (not start!476980) (not b!4701944) (not b!4701955))
(check-sat)
(get-model)

(declare-fun d!1495625 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9274 (List!52667) (InoxSet tuple2!54002))

(assert (=> d!1495625 (= (eq!1061 lt!1865242 lt!1865230) (= (content!9274 (toList!5693 lt!1865242)) (content!9274 (toList!5693 lt!1865230))))))

(declare-fun bs!1095850 () Bool)

(assert (= bs!1095850 d!1495625))

(declare-fun m!5618457 () Bool)

(assert (=> bs!1095850 m!5618457))

(declare-fun m!5618459 () Bool)

(assert (=> bs!1095850 m!5618459))

(assert (=> b!4701959 d!1495625))

(declare-fun d!1495627 () Bool)

(assert (=> d!1495627 true))

(assert (=> d!1495627 true))

(declare-fun lambda!210464 () Int)

(declare-fun forall!11409 (List!52667 Int) Bool)

(assert (=> d!1495627 (= (allKeysSameHash!1728 newBucket!218 hash!405 hashF!1323) (forall!11409 newBucket!218 lambda!210464))))

(declare-fun bs!1095851 () Bool)

(assert (= bs!1095851 d!1495627))

(declare-fun m!5618461 () Bool)

(assert (=> bs!1095851 m!5618461))

(assert (=> b!4701949 d!1495627))

(declare-fun d!1495629 () Bool)

(assert (=> d!1495629 (= (eq!1061 lt!1865221 lt!1865233) (= (content!9274 (toList!5693 lt!1865221)) (content!9274 (toList!5693 lt!1865233))))))

(declare-fun bs!1095852 () Bool)

(assert (= bs!1095852 d!1495629))

(declare-fun m!5618475 () Bool)

(assert (=> bs!1095852 m!5618475))

(declare-fun m!5618477 () Bool)

(assert (=> bs!1095852 m!5618477))

(assert (=> b!4701960 d!1495629))

(declare-fun d!1495633 () Bool)

(declare-fun hash!4186 (Hashable!6271 K!13905) (_ BitVec 64))

(assert (=> d!1495633 (= (hash!4182 hashF!1323 key!4653) (hash!4186 hashF!1323 key!4653))))

(declare-fun bs!1095854 () Bool)

(assert (= bs!1095854 d!1495633))

(declare-fun m!5618481 () Bool)

(assert (=> bs!1095854 m!5618481))

(assert (=> b!4701950 d!1495633))

(declare-fun d!1495637 () Bool)

(assert (=> d!1495637 (= (head!10068 (toList!5694 lm!2023)) (h!58827 (toList!5694 lm!2023)))))

(assert (=> b!4701961 d!1495637))

(declare-fun bs!1095862 () Bool)

(declare-fun d!1495639 () Bool)

(assert (= bs!1095862 (and d!1495639 start!476980)))

(declare-fun lambda!210470 () Int)

(assert (=> bs!1095862 (= lambda!210470 lambda!210453)))

(declare-fun lt!1865303 () ListMap!5057)

(declare-fun invariantList!1448 (List!52667) Bool)

(assert (=> d!1495639 (invariantList!1448 (toList!5693 lt!1865303))))

(declare-fun e!2933087 () ListMap!5057)

(assert (=> d!1495639 (= lt!1865303 e!2933087)))

(declare-fun c!803690 () Bool)

(assert (=> d!1495639 (= c!803690 ((_ is Cons!52544) (Cons!52544 lt!1865218 lt!1865251)))))

(assert (=> d!1495639 (forall!11407 (Cons!52544 lt!1865218 lt!1865251) lambda!210470)))

(assert (=> d!1495639 (= (extractMap!1928 (Cons!52544 lt!1865218 lt!1865251)) lt!1865303)))

(declare-fun b!4702023 () Bool)

(assert (=> b!4702023 (= e!2933087 (addToMapMapFromBucket!1334 (_2!30296 (h!58827 (Cons!52544 lt!1865218 lt!1865251))) (extractMap!1928 (t!359882 (Cons!52544 lt!1865218 lt!1865251)))))))

(declare-fun b!4702024 () Bool)

(assert (=> b!4702024 (= e!2933087 (ListMap!5058 Nil!52543))))

(assert (= (and d!1495639 c!803690) b!4702023))

(assert (= (and d!1495639 (not c!803690)) b!4702024))

(declare-fun m!5618513 () Bool)

(assert (=> d!1495639 m!5618513))

(declare-fun m!5618515 () Bool)

(assert (=> d!1495639 m!5618515))

(declare-fun m!5618517 () Bool)

(assert (=> b!4702023 m!5618517))

(assert (=> b!4702023 m!5618517))

(declare-fun m!5618519 () Bool)

(assert (=> b!4702023 m!5618519))

(assert (=> b!4701956 d!1495639))

(declare-fun d!1495649 () Bool)

(assert (=> d!1495649 (= (eq!1061 (extractMap!1928 (Cons!52544 lt!1865218 lt!1865251)) (-!706 (extractMap!1928 (Cons!52544 lt!1865227 lt!1865251)) key!4653)) (= (content!9274 (toList!5693 (extractMap!1928 (Cons!52544 lt!1865218 lt!1865251)))) (content!9274 (toList!5693 (-!706 (extractMap!1928 (Cons!52544 lt!1865227 lt!1865251)) key!4653)))))))

(declare-fun bs!1095863 () Bool)

(assert (= bs!1095863 d!1495649))

(declare-fun m!5618521 () Bool)

(assert (=> bs!1095863 m!5618521))

(declare-fun m!5618523 () Bool)

(assert (=> bs!1095863 m!5618523))

(assert (=> b!4701956 d!1495649))

(declare-fun d!1495651 () Bool)

(assert (=> d!1495651 (= (tail!8732 lt!1865223) (t!359882 lt!1865223))))

(assert (=> b!4701956 d!1495651))

(declare-fun bs!1095864 () Bool)

(declare-fun d!1495653 () Bool)

(assert (= bs!1095864 (and d!1495653 start!476980)))

(declare-fun lambda!210471 () Int)

(assert (=> bs!1095864 (= lambda!210471 lambda!210453)))

(declare-fun bs!1095865 () Bool)

(assert (= bs!1095865 (and d!1495653 d!1495639)))

(assert (=> bs!1095865 (= lambda!210471 lambda!210470)))

(declare-fun lt!1865304 () ListMap!5057)

(assert (=> d!1495653 (invariantList!1448 (toList!5693 lt!1865304))))

(declare-fun e!2933088 () ListMap!5057)

(assert (=> d!1495653 (= lt!1865304 e!2933088)))

(declare-fun c!803691 () Bool)

(assert (=> d!1495653 (= c!803691 ((_ is Cons!52544) (Cons!52544 lt!1865227 lt!1865251)))))

(assert (=> d!1495653 (forall!11407 (Cons!52544 lt!1865227 lt!1865251) lambda!210471)))

(assert (=> d!1495653 (= (extractMap!1928 (Cons!52544 lt!1865227 lt!1865251)) lt!1865304)))

(declare-fun b!4702025 () Bool)

(assert (=> b!4702025 (= e!2933088 (addToMapMapFromBucket!1334 (_2!30296 (h!58827 (Cons!52544 lt!1865227 lt!1865251))) (extractMap!1928 (t!359882 (Cons!52544 lt!1865227 lt!1865251)))))))

(declare-fun b!4702026 () Bool)

(assert (=> b!4702026 (= e!2933088 (ListMap!5058 Nil!52543))))

(assert (= (and d!1495653 c!803691) b!4702025))

(assert (= (and d!1495653 (not c!803691)) b!4702026))

(declare-fun m!5618525 () Bool)

(assert (=> d!1495653 m!5618525))

(declare-fun m!5618527 () Bool)

(assert (=> d!1495653 m!5618527))

(declare-fun m!5618529 () Bool)

(assert (=> b!4702025 m!5618529))

(assert (=> b!4702025 m!5618529))

(declare-fun m!5618531 () Bool)

(assert (=> b!4702025 m!5618531))

(assert (=> b!4701956 d!1495653))

(declare-fun d!1495655 () Bool)

(declare-fun e!2933093 () Bool)

(assert (=> d!1495655 e!2933093))

(declare-fun res!1985409 () Bool)

(assert (=> d!1495655 (=> (not res!1985409) (not e!2933093))))

(declare-fun lt!1865309 () ListMap!5057)

(assert (=> d!1495655 (= res!1985409 (not (contains!15830 lt!1865309 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!369 (List!52667 K!13905) List!52667)

(assert (=> d!1495655 (= lt!1865309 (ListMap!5058 (removePresrvNoDuplicatedKeys!369 (toList!5693 (extractMap!1928 (Cons!52544 lt!1865227 lt!1865251))) key!4653)))))

(assert (=> d!1495655 (= (-!706 (extractMap!1928 (Cons!52544 lt!1865227 lt!1865251)) key!4653) lt!1865309)))

(declare-fun b!4702029 () Bool)

(declare-datatypes ((List!52670 0))(
  ( (Nil!52546) (Cons!52546 (h!58831 K!13905) (t!359886 List!52670)) )
))
(declare-fun content!9275 (List!52670) (InoxSet K!13905))

(declare-fun keys!18799 (ListMap!5057) List!52670)

(assert (=> b!4702029 (= e!2933093 (= ((_ map and) (content!9275 (keys!18799 (extractMap!1928 (Cons!52544 lt!1865227 lt!1865251)))) ((_ map not) (store ((as const (Array K!13905 Bool)) false) key!4653 true))) (content!9275 (keys!18799 lt!1865309))))))

(assert (= (and d!1495655 res!1985409) b!4702029))

(declare-fun m!5618533 () Bool)

(assert (=> d!1495655 m!5618533))

(declare-fun m!5618535 () Bool)

(assert (=> d!1495655 m!5618535))

(declare-fun m!5618537 () Bool)

(assert (=> b!4702029 m!5618537))

(declare-fun m!5618539 () Bool)

(assert (=> b!4702029 m!5618539))

(assert (=> b!4702029 m!5618537))

(declare-fun m!5618541 () Bool)

(assert (=> b!4702029 m!5618541))

(assert (=> b!4702029 m!5618283))

(declare-fun m!5618543 () Bool)

(assert (=> b!4702029 m!5618543))

(assert (=> b!4702029 m!5618543))

(declare-fun m!5618545 () Bool)

(assert (=> b!4702029 m!5618545))

(assert (=> b!4701956 d!1495655))

(declare-fun bs!1095866 () Bool)

(declare-fun d!1495657 () Bool)

(assert (= bs!1095866 (and d!1495657 start!476980)))

(declare-fun lambda!210478 () Int)

(assert (=> bs!1095866 (= lambda!210478 lambda!210453)))

(declare-fun bs!1095867 () Bool)

(assert (= bs!1095867 (and d!1495657 d!1495639)))

(assert (=> bs!1095867 (= lambda!210478 lambda!210470)))

(declare-fun bs!1095868 () Bool)

(assert (= bs!1095868 (and d!1495657 d!1495653)))

(assert (=> bs!1095868 (= lambda!210478 lambda!210471)))

(declare-fun lt!1865324 () ListMap!5057)

(assert (=> d!1495657 (invariantList!1448 (toList!5693 lt!1865324))))

(declare-fun e!2933096 () ListMap!5057)

(assert (=> d!1495657 (= lt!1865324 e!2933096)))

(declare-fun c!803692 () Bool)

(assert (=> d!1495657 (= c!803692 ((_ is Cons!52544) (Cons!52544 lt!1865218 (t!359882 (toList!5694 lm!2023)))))))

(assert (=> d!1495657 (forall!11407 (Cons!52544 lt!1865218 (t!359882 (toList!5694 lm!2023))) lambda!210478)))

(assert (=> d!1495657 (= (extractMap!1928 (Cons!52544 lt!1865218 (t!359882 (toList!5694 lm!2023)))) lt!1865324)))

(declare-fun b!4702038 () Bool)

(assert (=> b!4702038 (= e!2933096 (addToMapMapFromBucket!1334 (_2!30296 (h!58827 (Cons!52544 lt!1865218 (t!359882 (toList!5694 lm!2023))))) (extractMap!1928 (t!359882 (Cons!52544 lt!1865218 (t!359882 (toList!5694 lm!2023)))))))))

(declare-fun b!4702039 () Bool)

(assert (=> b!4702039 (= e!2933096 (ListMap!5058 Nil!52543))))

(assert (= (and d!1495657 c!803692) b!4702038))

(assert (= (and d!1495657 (not c!803692)) b!4702039))

(declare-fun m!5618547 () Bool)

(assert (=> d!1495657 m!5618547))

(declare-fun m!5618549 () Bool)

(assert (=> d!1495657 m!5618549))

(declare-fun m!5618551 () Bool)

(assert (=> b!4702038 m!5618551))

(assert (=> b!4702038 m!5618551))

(declare-fun m!5618553 () Bool)

(assert (=> b!4702038 m!5618553))

(assert (=> b!4701956 d!1495657))

(declare-fun d!1495659 () Bool)

(assert (=> d!1495659 (= (eq!1061 lt!1865252 lt!1865226) (= (content!9274 (toList!5693 lt!1865252)) (content!9274 (toList!5693 lt!1865226))))))

(declare-fun bs!1095869 () Bool)

(assert (= bs!1095869 d!1495659))

(declare-fun m!5618555 () Bool)

(assert (=> bs!1095869 m!5618555))

(declare-fun m!5618557 () Bool)

(assert (=> bs!1095869 m!5618557))

(assert (=> b!4701956 d!1495659))

(declare-fun d!1495661 () Bool)

(declare-fun e!2933097 () Bool)

(assert (=> d!1495661 e!2933097))

(declare-fun res!1985416 () Bool)

(assert (=> d!1495661 (=> (not res!1985416) (not e!2933097))))

(declare-fun lt!1865325 () ListMap!5057)

(assert (=> d!1495661 (= res!1985416 (not (contains!15830 lt!1865325 key!4653)))))

(assert (=> d!1495661 (= lt!1865325 (ListMap!5058 (removePresrvNoDuplicatedKeys!369 (toList!5693 lt!1865249) key!4653)))))

(assert (=> d!1495661 (= (-!706 lt!1865249 key!4653) lt!1865325)))

(declare-fun b!4702040 () Bool)

(assert (=> b!4702040 (= e!2933097 (= ((_ map and) (content!9275 (keys!18799 lt!1865249)) ((_ map not) (store ((as const (Array K!13905 Bool)) false) key!4653 true))) (content!9275 (keys!18799 lt!1865325))))))

(assert (= (and d!1495661 res!1985416) b!4702040))

(declare-fun m!5618559 () Bool)

(assert (=> d!1495661 m!5618559))

(declare-fun m!5618561 () Bool)

(assert (=> d!1495661 m!5618561))

(declare-fun m!5618563 () Bool)

(assert (=> b!4702040 m!5618563))

(assert (=> b!4702040 m!5618539))

(assert (=> b!4702040 m!5618563))

(declare-fun m!5618565 () Bool)

(assert (=> b!4702040 m!5618565))

(declare-fun m!5618567 () Bool)

(assert (=> b!4702040 m!5618567))

(assert (=> b!4702040 m!5618567))

(declare-fun m!5618569 () Bool)

(assert (=> b!4702040 m!5618569))

(assert (=> b!4701956 d!1495661))

(declare-fun bs!1095888 () Bool)

(declare-fun d!1495663 () Bool)

(assert (= bs!1095888 (and d!1495663 start!476980)))

(declare-fun lambda!210483 () Int)

(assert (=> bs!1095888 (= lambda!210483 lambda!210453)))

(declare-fun bs!1095889 () Bool)

(assert (= bs!1095889 (and d!1495663 d!1495639)))

(assert (=> bs!1095889 (= lambda!210483 lambda!210470)))

(declare-fun bs!1095890 () Bool)

(assert (= bs!1095890 (and d!1495663 d!1495653)))

(assert (=> bs!1095890 (= lambda!210483 lambda!210471)))

(declare-fun bs!1095891 () Bool)

(assert (= bs!1095891 (and d!1495663 d!1495657)))

(assert (=> bs!1095891 (= lambda!210483 lambda!210478)))

(assert (=> d!1495663 (eq!1061 (extractMap!1928 (Cons!52544 (tuple2!54005 hash!405 lt!1865234) (tail!8732 (toList!5694 lt!1865248)))) (-!706 (extractMap!1928 (Cons!52544 (tuple2!54005 hash!405 (t!359881 oldBucket!34)) (tail!8732 (toList!5694 lt!1865248)))) key!4653))))

(declare-fun lt!1865356 () Unit!126368)

(declare-fun choose!32918 (ListLongMap!4223 (_ BitVec 64) List!52667 List!52667 K!13905 Hashable!6271) Unit!126368)

(assert (=> d!1495663 (= lt!1865356 (choose!32918 lt!1865248 hash!405 (t!359881 oldBucket!34) lt!1865234 key!4653 hashF!1323))))

(assert (=> d!1495663 (forall!11407 (toList!5694 lt!1865248) lambda!210483)))

(assert (=> d!1495663 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!76 lt!1865248 hash!405 (t!359881 oldBucket!34) lt!1865234 key!4653 hashF!1323) lt!1865356)))

(declare-fun bs!1095892 () Bool)

(assert (= bs!1095892 d!1495663))

(declare-fun m!5618647 () Bool)

(assert (=> bs!1095892 m!5618647))

(declare-fun m!5618649 () Bool)

(assert (=> bs!1095892 m!5618649))

(declare-fun m!5618651 () Bool)

(assert (=> bs!1095892 m!5618651))

(declare-fun m!5618653 () Bool)

(assert (=> bs!1095892 m!5618653))

(assert (=> bs!1095892 m!5618647))

(declare-fun m!5618655 () Bool)

(assert (=> bs!1095892 m!5618655))

(declare-fun m!5618657 () Bool)

(assert (=> bs!1095892 m!5618657))

(assert (=> bs!1095892 m!5618655))

(declare-fun m!5618659 () Bool)

(assert (=> bs!1095892 m!5618659))

(assert (=> bs!1095892 m!5618657))

(assert (=> b!4701956 d!1495663))

(declare-fun bs!1095948 () Bool)

(declare-fun b!4702125 () Bool)

(assert (= bs!1095948 (and b!4702125 d!1495627)))

(declare-fun lambda!210556 () Int)

(assert (=> bs!1095948 (not (= lambda!210556 lambda!210464))))

(assert (=> b!4702125 true))

(declare-fun bs!1095949 () Bool)

(declare-fun b!4702126 () Bool)

(assert (= bs!1095949 (and b!4702126 d!1495627)))

(declare-fun lambda!210557 () Int)

(assert (=> bs!1095949 (not (= lambda!210557 lambda!210464))))

(declare-fun bs!1095950 () Bool)

(assert (= bs!1095950 (and b!4702126 b!4702125)))

(assert (=> bs!1095950 (= lambda!210557 lambda!210556)))

(assert (=> b!4702126 true))

(declare-fun lambda!210558 () Int)

(assert (=> bs!1095949 (not (= lambda!210558 lambda!210464))))

(declare-fun lt!1865511 () ListMap!5057)

(assert (=> bs!1095950 (= (= lt!1865511 lt!1865217) (= lambda!210558 lambda!210556))))

(assert (=> b!4702126 (= (= lt!1865511 lt!1865217) (= lambda!210558 lambda!210557))))

(assert (=> b!4702126 true))

(declare-fun bs!1095951 () Bool)

(declare-fun d!1495691 () Bool)

(assert (= bs!1095951 (and d!1495691 d!1495627)))

(declare-fun lambda!210559 () Int)

(assert (=> bs!1095951 (not (= lambda!210559 lambda!210464))))

(declare-fun bs!1095952 () Bool)

(assert (= bs!1095952 (and d!1495691 b!4702125)))

(declare-fun lt!1865523 () ListMap!5057)

(assert (=> bs!1095952 (= (= lt!1865523 lt!1865217) (= lambda!210559 lambda!210556))))

(declare-fun bs!1095953 () Bool)

(assert (= bs!1095953 (and d!1495691 b!4702126)))

(assert (=> bs!1095953 (= (= lt!1865523 lt!1865217) (= lambda!210559 lambda!210557))))

(assert (=> bs!1095953 (= (= lt!1865523 lt!1865511) (= lambda!210559 lambda!210558))))

(assert (=> d!1495691 true))

(declare-fun call!328729 () Bool)

(declare-fun c!803708 () Bool)

(declare-fun bm!328724 () Bool)

(assert (=> bm!328724 (= call!328729 (forall!11409 (toList!5693 lt!1865217) (ite c!803708 lambda!210556 lambda!210558)))))

(declare-fun bm!328725 () Bool)

(declare-fun call!328731 () Bool)

(assert (=> bm!328725 (= call!328731 (forall!11409 (toList!5693 lt!1865217) (ite c!803708 lambda!210556 lambda!210558)))))

(declare-fun b!4702124 () Bool)

(declare-fun e!2933152 () Bool)

(assert (=> b!4702124 (= e!2933152 (invariantList!1448 (toList!5693 lt!1865523)))))

(declare-fun e!2933151 () ListMap!5057)

(assert (=> b!4702125 (= e!2933151 lt!1865217)))

(declare-fun lt!1865510 () Unit!126368)

(declare-fun call!328730 () Unit!126368)

(assert (=> b!4702125 (= lt!1865510 call!328730)))

(assert (=> b!4702125 call!328729))

(declare-fun lt!1865516 () Unit!126368)

(assert (=> b!4702125 (= lt!1865516 lt!1865510)))

(assert (=> b!4702125 call!328731))

(declare-fun lt!1865517 () Unit!126368)

(declare-fun Unit!126393 () Unit!126368)

(assert (=> b!4702125 (= lt!1865517 Unit!126393)))

(assert (=> d!1495691 e!2933152))

(declare-fun res!1985469 () Bool)

(assert (=> d!1495691 (=> (not res!1985469) (not e!2933152))))

(assert (=> d!1495691 (= res!1985469 (forall!11409 (_2!30296 (h!58827 (toList!5694 lm!2023))) lambda!210559))))

(assert (=> d!1495691 (= lt!1865523 e!2933151)))

(assert (=> d!1495691 (= c!803708 ((_ is Nil!52543) (_2!30296 (h!58827 (toList!5694 lm!2023)))))))

(assert (=> d!1495691 (noDuplicateKeys!1902 (_2!30296 (h!58827 (toList!5694 lm!2023))))))

(assert (=> d!1495691 (= (addToMapMapFromBucket!1334 (_2!30296 (h!58827 (toList!5694 lm!2023))) lt!1865217) lt!1865523)))

(declare-fun bm!328726 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!736 (ListMap!5057) Unit!126368)

(assert (=> bm!328726 (= call!328730 (lemmaContainsAllItsOwnKeys!736 lt!1865217))))

(assert (=> b!4702126 (= e!2933151 lt!1865511)))

(declare-fun lt!1865519 () ListMap!5057)

(assert (=> b!4702126 (= lt!1865519 (+!2186 lt!1865217 (h!58826 (_2!30296 (h!58827 (toList!5694 lm!2023))))))))

(assert (=> b!4702126 (= lt!1865511 (addToMapMapFromBucket!1334 (t!359881 (_2!30296 (h!58827 (toList!5694 lm!2023)))) (+!2186 lt!1865217 (h!58826 (_2!30296 (h!58827 (toList!5694 lm!2023)))))))))

(declare-fun lt!1865521 () Unit!126368)

(assert (=> b!4702126 (= lt!1865521 call!328730)))

(assert (=> b!4702126 (forall!11409 (toList!5693 lt!1865217) lambda!210557)))

(declare-fun lt!1865513 () Unit!126368)

(assert (=> b!4702126 (= lt!1865513 lt!1865521)))

(assert (=> b!4702126 (forall!11409 (toList!5693 lt!1865519) lambda!210558)))

(declare-fun lt!1865522 () Unit!126368)

(declare-fun Unit!126394 () Unit!126368)

(assert (=> b!4702126 (= lt!1865522 Unit!126394)))

(assert (=> b!4702126 (forall!11409 (t!359881 (_2!30296 (h!58827 (toList!5694 lm!2023)))) lambda!210558)))

(declare-fun lt!1865518 () Unit!126368)

(declare-fun Unit!126395 () Unit!126368)

(assert (=> b!4702126 (= lt!1865518 Unit!126395)))

(declare-fun lt!1865528 () Unit!126368)

(declare-fun Unit!126396 () Unit!126368)

(assert (=> b!4702126 (= lt!1865528 Unit!126396)))

(declare-fun lt!1865520 () Unit!126368)

(declare-fun forallContained!3516 (List!52667 Int tuple2!54002) Unit!126368)

(assert (=> b!4702126 (= lt!1865520 (forallContained!3516 (toList!5693 lt!1865519) lambda!210558 (h!58826 (_2!30296 (h!58827 (toList!5694 lm!2023))))))))

(assert (=> b!4702126 (contains!15830 lt!1865519 (_1!30295 (h!58826 (_2!30296 (h!58827 (toList!5694 lm!2023))))))))

(declare-fun lt!1865512 () Unit!126368)

(declare-fun Unit!126397 () Unit!126368)

(assert (=> b!4702126 (= lt!1865512 Unit!126397)))

(assert (=> b!4702126 (contains!15830 lt!1865511 (_1!30295 (h!58826 (_2!30296 (h!58827 (toList!5694 lm!2023))))))))

(declare-fun lt!1865515 () Unit!126368)

(declare-fun Unit!126398 () Unit!126368)

(assert (=> b!4702126 (= lt!1865515 Unit!126398)))

(assert (=> b!4702126 (forall!11409 (_2!30296 (h!58827 (toList!5694 lm!2023))) lambda!210558)))

(declare-fun lt!1865525 () Unit!126368)

(declare-fun Unit!126399 () Unit!126368)

(assert (=> b!4702126 (= lt!1865525 Unit!126399)))

(assert (=> b!4702126 (forall!11409 (toList!5693 lt!1865519) lambda!210558)))

(declare-fun lt!1865527 () Unit!126368)

(declare-fun Unit!126400 () Unit!126368)

(assert (=> b!4702126 (= lt!1865527 Unit!126400)))

(declare-fun lt!1865529 () Unit!126368)

(declare-fun Unit!126401 () Unit!126368)

(assert (=> b!4702126 (= lt!1865529 Unit!126401)))

(declare-fun lt!1865526 () Unit!126368)

(declare-fun addForallContainsKeyThenBeforeAdding!735 (ListMap!5057 ListMap!5057 K!13905 V!14151) Unit!126368)

(assert (=> b!4702126 (= lt!1865526 (addForallContainsKeyThenBeforeAdding!735 lt!1865217 lt!1865511 (_1!30295 (h!58826 (_2!30296 (h!58827 (toList!5694 lm!2023))))) (_2!30295 (h!58826 (_2!30296 (h!58827 (toList!5694 lm!2023)))))))))

(assert (=> b!4702126 call!328729))

(declare-fun lt!1865524 () Unit!126368)

(assert (=> b!4702126 (= lt!1865524 lt!1865526)))

(assert (=> b!4702126 (forall!11409 (toList!5693 lt!1865217) lambda!210558)))

(declare-fun lt!1865509 () Unit!126368)

(declare-fun Unit!126402 () Unit!126368)

(assert (=> b!4702126 (= lt!1865509 Unit!126402)))

(declare-fun res!1985467 () Bool)

(assert (=> b!4702126 (= res!1985467 (forall!11409 (_2!30296 (h!58827 (toList!5694 lm!2023))) lambda!210558))))

(declare-fun e!2933150 () Bool)

(assert (=> b!4702126 (=> (not res!1985467) (not e!2933150))))

(assert (=> b!4702126 e!2933150))

(declare-fun lt!1865514 () Unit!126368)

(declare-fun Unit!126403 () Unit!126368)

(assert (=> b!4702126 (= lt!1865514 Unit!126403)))

(declare-fun b!4702127 () Bool)

(assert (=> b!4702127 (= e!2933150 call!328731)))

(declare-fun b!4702128 () Bool)

(declare-fun res!1985468 () Bool)

(assert (=> b!4702128 (=> (not res!1985468) (not e!2933152))))

(assert (=> b!4702128 (= res!1985468 (forall!11409 (toList!5693 lt!1865217) lambda!210559))))

(assert (= (and d!1495691 c!803708) b!4702125))

(assert (= (and d!1495691 (not c!803708)) b!4702126))

(assert (= (and b!4702126 res!1985467) b!4702127))

(assert (= (or b!4702125 b!4702126) bm!328726))

(assert (= (or b!4702125 b!4702126) bm!328724))

(assert (= (or b!4702125 b!4702127) bm!328725))

(assert (= (and d!1495691 res!1985469) b!4702128))

(assert (= (and b!4702128 res!1985468) b!4702124))

(declare-fun m!5618775 () Bool)

(assert (=> b!4702124 m!5618775))

(declare-fun m!5618777 () Bool)

(assert (=> bm!328725 m!5618777))

(declare-fun m!5618779 () Bool)

(assert (=> b!4702128 m!5618779))

(declare-fun m!5618781 () Bool)

(assert (=> b!4702126 m!5618781))

(declare-fun m!5618783 () Bool)

(assert (=> b!4702126 m!5618783))

(declare-fun m!5618785 () Bool)

(assert (=> b!4702126 m!5618785))

(declare-fun m!5618787 () Bool)

(assert (=> b!4702126 m!5618787))

(declare-fun m!5618789 () Bool)

(assert (=> b!4702126 m!5618789))

(declare-fun m!5618791 () Bool)

(assert (=> b!4702126 m!5618791))

(declare-fun m!5618793 () Bool)

(assert (=> b!4702126 m!5618793))

(assert (=> b!4702126 m!5618781))

(declare-fun m!5618795 () Bool)

(assert (=> b!4702126 m!5618795))

(declare-fun m!5618797 () Bool)

(assert (=> b!4702126 m!5618797))

(declare-fun m!5618799 () Bool)

(assert (=> b!4702126 m!5618799))

(assert (=> b!4702126 m!5618797))

(assert (=> b!4702126 m!5618783))

(declare-fun m!5618801 () Bool)

(assert (=> b!4702126 m!5618801))

(assert (=> bm!328724 m!5618777))

(declare-fun m!5618803 () Bool)

(assert (=> d!1495691 m!5618803))

(declare-fun m!5618805 () Bool)

(assert (=> d!1495691 m!5618805))

(declare-fun m!5618807 () Bool)

(assert (=> bm!328726 m!5618807))

(assert (=> b!4701967 d!1495691))

(declare-fun bs!1095954 () Bool)

(declare-fun d!1495707 () Bool)

(assert (= bs!1095954 (and d!1495707 start!476980)))

(declare-fun lambda!210560 () Int)

(assert (=> bs!1095954 (= lambda!210560 lambda!210453)))

(declare-fun bs!1095955 () Bool)

(assert (= bs!1095955 (and d!1495707 d!1495657)))

(assert (=> bs!1095955 (= lambda!210560 lambda!210478)))

(declare-fun bs!1095956 () Bool)

(assert (= bs!1095956 (and d!1495707 d!1495663)))

(assert (=> bs!1095956 (= lambda!210560 lambda!210483)))

(declare-fun bs!1095957 () Bool)

(assert (= bs!1095957 (and d!1495707 d!1495639)))

(assert (=> bs!1095957 (= lambda!210560 lambda!210470)))

(declare-fun bs!1095958 () Bool)

(assert (= bs!1095958 (and d!1495707 d!1495653)))

(assert (=> bs!1095958 (= lambda!210560 lambda!210471)))

(declare-fun lt!1865546 () ListMap!5057)

(assert (=> d!1495707 (invariantList!1448 (toList!5693 lt!1865546))))

(declare-fun e!2933165 () ListMap!5057)

(assert (=> d!1495707 (= lt!1865546 e!2933165)))

(declare-fun c!803715 () Bool)

(assert (=> d!1495707 (= c!803715 ((_ is Cons!52544) (t!359882 (toList!5694 lm!2023))))))

(assert (=> d!1495707 (forall!11407 (t!359882 (toList!5694 lm!2023)) lambda!210560)))

(assert (=> d!1495707 (= (extractMap!1928 (t!359882 (toList!5694 lm!2023))) lt!1865546)))

(declare-fun b!4702149 () Bool)

(assert (=> b!4702149 (= e!2933165 (addToMapMapFromBucket!1334 (_2!30296 (h!58827 (t!359882 (toList!5694 lm!2023)))) (extractMap!1928 (t!359882 (t!359882 (toList!5694 lm!2023))))))))

(declare-fun b!4702150 () Bool)

(assert (=> b!4702150 (= e!2933165 (ListMap!5058 Nil!52543))))

(assert (= (and d!1495707 c!803715) b!4702149))

(assert (= (and d!1495707 (not c!803715)) b!4702150))

(declare-fun m!5618809 () Bool)

(assert (=> d!1495707 m!5618809))

(declare-fun m!5618811 () Bool)

(assert (=> d!1495707 m!5618811))

(declare-fun m!5618813 () Bool)

(assert (=> b!4702149 m!5618813))

(assert (=> b!4702149 m!5618813))

(declare-fun m!5618815 () Bool)

(assert (=> b!4702149 m!5618815))

(assert (=> b!4701967 d!1495707))

(declare-fun d!1495709 () Bool)

(assert (=> d!1495709 (= (tail!8733 lm!2023) (ListLongMap!4224 (tail!8732 (toList!5694 lm!2023))))))

(declare-fun bs!1095959 () Bool)

(assert (= bs!1095959 d!1495709))

(declare-fun m!5618817 () Bool)

(assert (=> bs!1095959 m!5618817))

(assert (=> b!4701967 d!1495709))

(declare-fun bs!1095960 () Bool)

(declare-fun d!1495711 () Bool)

(assert (= bs!1095960 (and d!1495711 start!476980)))

(declare-fun lambda!210563 () Int)

(assert (=> bs!1095960 (not (= lambda!210563 lambda!210453))))

(declare-fun bs!1095961 () Bool)

(assert (= bs!1095961 (and d!1495711 d!1495657)))

(assert (=> bs!1095961 (not (= lambda!210563 lambda!210478))))

(declare-fun bs!1095963 () Bool)

(assert (= bs!1095963 (and d!1495711 d!1495707)))

(assert (=> bs!1095963 (not (= lambda!210563 lambda!210560))))

(declare-fun bs!1095965 () Bool)

(assert (= bs!1095965 (and d!1495711 d!1495663)))

(assert (=> bs!1095965 (not (= lambda!210563 lambda!210483))))

(declare-fun bs!1095966 () Bool)

(assert (= bs!1095966 (and d!1495711 d!1495639)))

(assert (=> bs!1095966 (not (= lambda!210563 lambda!210470))))

(declare-fun bs!1095969 () Bool)

(assert (= bs!1095969 (and d!1495711 d!1495653)))

(assert (=> bs!1095969 (not (= lambda!210563 lambda!210471))))

(assert (=> d!1495711 true))

(assert (=> d!1495711 (= (allKeysSameHashInMap!1816 lm!2023 hashF!1323) (forall!11407 (toList!5694 lm!2023) lambda!210563))))

(declare-fun bs!1095972 () Bool)

(assert (= bs!1095972 d!1495711))

(declare-fun m!5618837 () Bool)

(assert (=> bs!1095972 m!5618837))

(assert (=> b!4701957 d!1495711))

(declare-fun d!1495715 () Bool)

(declare-fun res!1985486 () Bool)

(declare-fun e!2933180 () Bool)

(assert (=> d!1495715 (=> res!1985486 e!2933180)))

(assert (=> d!1495715 (= res!1985486 (not ((_ is Cons!52543) newBucket!218)))))

(assert (=> d!1495715 (= (noDuplicateKeys!1902 newBucket!218) e!2933180)))

(declare-fun b!4702173 () Bool)

(declare-fun e!2933181 () Bool)

(assert (=> b!4702173 (= e!2933180 e!2933181)))

(declare-fun res!1985487 () Bool)

(assert (=> b!4702173 (=> (not res!1985487) (not e!2933181))))

(assert (=> b!4702173 (= res!1985487 (not (containsKey!3177 (t!359881 newBucket!218) (_1!30295 (h!58826 newBucket!218)))))))

(declare-fun b!4702174 () Bool)

(assert (=> b!4702174 (= e!2933181 (noDuplicateKeys!1902 (t!359881 newBucket!218)))))

(assert (= (and d!1495715 (not res!1985486)) b!4702173))

(assert (= (and b!4702173 res!1985487) b!4702174))

(declare-fun m!5618847 () Bool)

(assert (=> b!4702173 m!5618847))

(declare-fun m!5618849 () Bool)

(assert (=> b!4702174 m!5618849))

(assert (=> b!4701946 d!1495715))

(declare-fun d!1495719 () Bool)

(assert (=> d!1495719 (= (eq!1061 lt!1865233 (+!2186 lt!1865235 lt!1865246)) (= (content!9274 (toList!5693 lt!1865233)) (content!9274 (toList!5693 (+!2186 lt!1865235 lt!1865246)))))))

(declare-fun bs!1095986 () Bool)

(assert (= bs!1095986 d!1495719))

(assert (=> bs!1095986 m!5618477))

(declare-fun m!5618851 () Bool)

(assert (=> bs!1095986 m!5618851))

(assert (=> b!4701947 d!1495719))

(declare-fun d!1495721 () Bool)

(declare-fun e!2933192 () Bool)

(assert (=> d!1495721 e!2933192))

(declare-fun res!1985500 () Bool)

(assert (=> d!1495721 (=> (not res!1985500) (not e!2933192))))

(declare-fun lt!1865602 () ListMap!5057)

(assert (=> d!1495721 (= res!1985500 (contains!15830 lt!1865602 (_1!30295 lt!1865246)))))

(declare-fun lt!1865601 () List!52667)

(assert (=> d!1495721 (= lt!1865602 (ListMap!5058 lt!1865601))))

(declare-fun lt!1865603 () Unit!126368)

(declare-fun lt!1865604 () Unit!126368)

(assert (=> d!1495721 (= lt!1865603 lt!1865604)))

(declare-datatypes ((Option!12204 0))(
  ( (None!12203) (Some!12203 (v!46698 V!14151)) )
))
(declare-fun getValueByKey!1856 (List!52667 K!13905) Option!12204)

(assert (=> d!1495721 (= (getValueByKey!1856 lt!1865601 (_1!30295 lt!1865246)) (Some!12203 (_2!30295 lt!1865246)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1038 (List!52667 K!13905 V!14151) Unit!126368)

(assert (=> d!1495721 (= lt!1865604 (lemmaContainsTupThenGetReturnValue!1038 lt!1865601 (_1!30295 lt!1865246) (_2!30295 lt!1865246)))))

(declare-fun insertNoDuplicatedKeys!546 (List!52667 K!13905 V!14151) List!52667)

(assert (=> d!1495721 (= lt!1865601 (insertNoDuplicatedKeys!546 (toList!5693 lt!1865235) (_1!30295 lt!1865246) (_2!30295 lt!1865246)))))

(assert (=> d!1495721 (= (+!2186 lt!1865235 lt!1865246) lt!1865602)))

(declare-fun b!4702192 () Bool)

(declare-fun res!1985499 () Bool)

(assert (=> b!4702192 (=> (not res!1985499) (not e!2933192))))

(assert (=> b!4702192 (= res!1985499 (= (getValueByKey!1856 (toList!5693 lt!1865602) (_1!30295 lt!1865246)) (Some!12203 (_2!30295 lt!1865246))))))

(declare-fun b!4702193 () Bool)

(declare-fun contains!15832 (List!52667 tuple2!54002) Bool)

(assert (=> b!4702193 (= e!2933192 (contains!15832 (toList!5693 lt!1865602) lt!1865246))))

(assert (= (and d!1495721 res!1985500) b!4702192))

(assert (= (and b!4702192 res!1985499) b!4702193))

(declare-fun m!5618939 () Bool)

(assert (=> d!1495721 m!5618939))

(declare-fun m!5618941 () Bool)

(assert (=> d!1495721 m!5618941))

(declare-fun m!5618943 () Bool)

(assert (=> d!1495721 m!5618943))

(declare-fun m!5618945 () Bool)

(assert (=> d!1495721 m!5618945))

(declare-fun m!5618947 () Bool)

(assert (=> b!4702192 m!5618947))

(declare-fun m!5618949 () Bool)

(assert (=> b!4702193 m!5618949))

(assert (=> b!4701947 d!1495721))

(declare-fun d!1495737 () Bool)

(declare-fun res!1985505 () Bool)

(declare-fun e!2933200 () Bool)

(assert (=> d!1495737 (=> res!1985505 e!2933200)))

(assert (=> d!1495737 (= res!1985505 ((_ is Nil!52544) (toList!5694 lm!2023)))))

(assert (=> d!1495737 (= (forall!11407 (toList!5694 lm!2023) lambda!210453) e!2933200)))

(declare-fun b!4702204 () Bool)

(declare-fun e!2933201 () Bool)

(assert (=> b!4702204 (= e!2933200 e!2933201)))

(declare-fun res!1985506 () Bool)

(assert (=> b!4702204 (=> (not res!1985506) (not e!2933201))))

(declare-fun dynLambda!21751 (Int tuple2!54004) Bool)

(assert (=> b!4702204 (= res!1985506 (dynLambda!21751 lambda!210453 (h!58827 (toList!5694 lm!2023))))))

(declare-fun b!4702205 () Bool)

(assert (=> b!4702205 (= e!2933201 (forall!11407 (t!359882 (toList!5694 lm!2023)) lambda!210453))))

(assert (= (and d!1495737 (not res!1985505)) b!4702204))

(assert (= (and b!4702204 res!1985506) b!4702205))

(declare-fun b_lambda!177407 () Bool)

(assert (=> (not b_lambda!177407) (not b!4702204)))

(declare-fun m!5618961 () Bool)

(assert (=> b!4702204 m!5618961))

(declare-fun m!5618963 () Bool)

(assert (=> b!4702205 m!5618963))

(assert (=> start!476980 d!1495737))

(declare-fun d!1495747 () Bool)

(declare-fun isStrictlySorted!686 (List!52668) Bool)

(assert (=> d!1495747 (= (inv!67779 lm!2023) (isStrictlySorted!686 (toList!5694 lm!2023)))))

(declare-fun bs!1096022 () Bool)

(assert (= bs!1096022 d!1495747))

(declare-fun m!5618965 () Bool)

(assert (=> bs!1096022 m!5618965))

(assert (=> start!476980 d!1495747))

(declare-fun d!1495749 () Bool)

(assert (=> d!1495749 (= (eq!1061 lt!1865230 (+!2186 lt!1865252 (h!58826 oldBucket!34))) (= (content!9274 (toList!5693 lt!1865230)) (content!9274 (toList!5693 (+!2186 lt!1865252 (h!58826 oldBucket!34))))))))

(declare-fun bs!1096023 () Bool)

(assert (= bs!1096023 d!1495749))

(assert (=> bs!1096023 m!5618459))

(declare-fun m!5618967 () Bool)

(assert (=> bs!1096023 m!5618967))

(assert (=> b!4701943 d!1495749))

(declare-fun d!1495751 () Bool)

(declare-fun e!2933202 () Bool)

(assert (=> d!1495751 e!2933202))

(declare-fun res!1985508 () Bool)

(assert (=> d!1495751 (=> (not res!1985508) (not e!2933202))))

(declare-fun lt!1865608 () ListMap!5057)

(assert (=> d!1495751 (= res!1985508 (contains!15830 lt!1865608 (_1!30295 (h!58826 oldBucket!34))))))

(declare-fun lt!1865607 () List!52667)

(assert (=> d!1495751 (= lt!1865608 (ListMap!5058 lt!1865607))))

(declare-fun lt!1865609 () Unit!126368)

(declare-fun lt!1865610 () Unit!126368)

(assert (=> d!1495751 (= lt!1865609 lt!1865610)))

(assert (=> d!1495751 (= (getValueByKey!1856 lt!1865607 (_1!30295 (h!58826 oldBucket!34))) (Some!12203 (_2!30295 (h!58826 oldBucket!34))))))

(assert (=> d!1495751 (= lt!1865610 (lemmaContainsTupThenGetReturnValue!1038 lt!1865607 (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34))))))

(assert (=> d!1495751 (= lt!1865607 (insertNoDuplicatedKeys!546 (toList!5693 lt!1865252) (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34))))))

(assert (=> d!1495751 (= (+!2186 lt!1865252 (h!58826 oldBucket!34)) lt!1865608)))

(declare-fun b!4702210 () Bool)

(declare-fun res!1985507 () Bool)

(assert (=> b!4702210 (=> (not res!1985507) (not e!2933202))))

(assert (=> b!4702210 (= res!1985507 (= (getValueByKey!1856 (toList!5693 lt!1865608) (_1!30295 (h!58826 oldBucket!34))) (Some!12203 (_2!30295 (h!58826 oldBucket!34)))))))

(declare-fun b!4702211 () Bool)

(assert (=> b!4702211 (= e!2933202 (contains!15832 (toList!5693 lt!1865608) (h!58826 oldBucket!34)))))

(assert (= (and d!1495751 res!1985508) b!4702210))

(assert (= (and b!4702210 res!1985507) b!4702211))

(declare-fun m!5618969 () Bool)

(assert (=> d!1495751 m!5618969))

(declare-fun m!5618971 () Bool)

(assert (=> d!1495751 m!5618971))

(declare-fun m!5618973 () Bool)

(assert (=> d!1495751 m!5618973))

(declare-fun m!5618975 () Bool)

(assert (=> d!1495751 m!5618975))

(declare-fun m!5618977 () Bool)

(assert (=> b!4702210 m!5618977))

(declare-fun m!5618979 () Bool)

(assert (=> b!4702211 m!5618979))

(assert (=> b!4701943 d!1495751))

(declare-fun d!1495753 () Bool)

(assert (=> d!1495753 (= (eq!1061 lt!1865220 (+!2186 lt!1865252 (h!58826 oldBucket!34))) (= (content!9274 (toList!5693 lt!1865220)) (content!9274 (toList!5693 (+!2186 lt!1865252 (h!58826 oldBucket!34))))))))

(declare-fun bs!1096031 () Bool)

(assert (= bs!1096031 d!1495753))

(declare-fun m!5618981 () Bool)

(assert (=> bs!1096031 m!5618981))

(assert (=> bs!1096031 m!5618967))

(assert (=> b!4701943 d!1495753))

(declare-fun d!1495755 () Bool)

(assert (=> d!1495755 (eq!1061 (+!2186 lt!1865226 (tuple2!54003 (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34)))) (+!2186 lt!1865252 (tuple2!54003 (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34)))))))

(declare-fun lt!1865617 () Unit!126368)

(declare-fun choose!32920 (ListMap!5057 ListMap!5057 K!13905 V!14151) Unit!126368)

(assert (=> d!1495755 (= lt!1865617 (choose!32920 lt!1865226 lt!1865252 (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34))))))

(assert (=> d!1495755 (eq!1061 lt!1865226 lt!1865252)))

(assert (=> d!1495755 (= (lemmaAddToEqMapsPreservesEq!84 lt!1865226 lt!1865252 (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34))) lt!1865617)))

(declare-fun bs!1096053 () Bool)

(assert (= bs!1096053 d!1495755))

(declare-fun m!5619003 () Bool)

(assert (=> bs!1096053 m!5619003))

(declare-fun m!5619005 () Bool)

(assert (=> bs!1096053 m!5619005))

(declare-fun m!5619007 () Bool)

(assert (=> bs!1096053 m!5619007))

(declare-fun m!5619009 () Bool)

(assert (=> bs!1096053 m!5619009))

(assert (=> bs!1096053 m!5619009))

(assert (=> bs!1096053 m!5619003))

(declare-fun m!5619015 () Bool)

(assert (=> bs!1096053 m!5619015))

(assert (=> b!4701943 d!1495755))

(declare-fun b!4702236 () Bool)

(declare-fun e!2933218 () List!52667)

(assert (=> b!4702236 (= e!2933218 (Cons!52543 (h!58826 (t!359881 oldBucket!34)) (removePairForKey!1497 (t!359881 (t!359881 oldBucket!34)) key!4653)))))

(declare-fun d!1495769 () Bool)

(declare-fun lt!1865620 () List!52667)

(assert (=> d!1495769 (not (containsKey!3177 lt!1865620 key!4653))))

(declare-fun e!2933219 () List!52667)

(assert (=> d!1495769 (= lt!1865620 e!2933219)))

(declare-fun c!803731 () Bool)

(assert (=> d!1495769 (= c!803731 (and ((_ is Cons!52543) (t!359881 oldBucket!34)) (= (_1!30295 (h!58826 (t!359881 oldBucket!34))) key!4653)))))

(assert (=> d!1495769 (noDuplicateKeys!1902 (t!359881 oldBucket!34))))

(assert (=> d!1495769 (= (removePairForKey!1497 (t!359881 oldBucket!34) key!4653) lt!1865620)))

(declare-fun b!4702237 () Bool)

(assert (=> b!4702237 (= e!2933218 Nil!52543)))

(declare-fun b!4702234 () Bool)

(assert (=> b!4702234 (= e!2933219 (t!359881 (t!359881 oldBucket!34)))))

(declare-fun b!4702235 () Bool)

(assert (=> b!4702235 (= e!2933219 e!2933218)))

(declare-fun c!803732 () Bool)

(assert (=> b!4702235 (= c!803732 ((_ is Cons!52543) (t!359881 oldBucket!34)))))

(assert (= (and d!1495769 c!803731) b!4702234))

(assert (= (and d!1495769 (not c!803731)) b!4702235))

(assert (= (and b!4702235 c!803732) b!4702236))

(assert (= (and b!4702235 (not c!803732)) b!4702237))

(declare-fun m!5619021 () Bool)

(assert (=> b!4702236 m!5619021))

(declare-fun m!5619023 () Bool)

(assert (=> d!1495769 m!5619023))

(declare-fun m!5619025 () Bool)

(assert (=> d!1495769 m!5619025))

(assert (=> b!4701964 d!1495769))

(declare-fun d!1495775 () Bool)

(declare-fun e!2933222 () Bool)

(assert (=> d!1495775 e!2933222))

(declare-fun res!1985524 () Bool)

(assert (=> d!1495775 (=> (not res!1985524) (not e!2933222))))

(declare-fun lt!1865622 () ListMap!5057)

(assert (=> d!1495775 (= res!1985524 (contains!15830 lt!1865622 (_1!30295 (h!58826 oldBucket!34))))))

(declare-fun lt!1865621 () List!52667)

(assert (=> d!1495775 (= lt!1865622 (ListMap!5058 lt!1865621))))

(declare-fun lt!1865623 () Unit!126368)

(declare-fun lt!1865624 () Unit!126368)

(assert (=> d!1495775 (= lt!1865623 lt!1865624)))

(assert (=> d!1495775 (= (getValueByKey!1856 lt!1865621 (_1!30295 (h!58826 oldBucket!34))) (Some!12203 (_2!30295 (h!58826 oldBucket!34))))))

(assert (=> d!1495775 (= lt!1865624 (lemmaContainsTupThenGetReturnValue!1038 lt!1865621 (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34))))))

(assert (=> d!1495775 (= lt!1865621 (insertNoDuplicatedKeys!546 (toList!5693 lt!1865226) (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34))))))

(assert (=> d!1495775 (= (+!2186 lt!1865226 (h!58826 oldBucket!34)) lt!1865622)))

(declare-fun b!4702240 () Bool)

(declare-fun res!1985523 () Bool)

(assert (=> b!4702240 (=> (not res!1985523) (not e!2933222))))

(assert (=> b!4702240 (= res!1985523 (= (getValueByKey!1856 (toList!5693 lt!1865622) (_1!30295 (h!58826 oldBucket!34))) (Some!12203 (_2!30295 (h!58826 oldBucket!34)))))))

(declare-fun b!4702241 () Bool)

(assert (=> b!4702241 (= e!2933222 (contains!15832 (toList!5693 lt!1865622) (h!58826 oldBucket!34)))))

(assert (= (and d!1495775 res!1985524) b!4702240))

(assert (= (and b!4702240 res!1985523) b!4702241))

(declare-fun m!5619031 () Bool)

(assert (=> d!1495775 m!5619031))

(declare-fun m!5619033 () Bool)

(assert (=> d!1495775 m!5619033))

(declare-fun m!5619035 () Bool)

(assert (=> d!1495775 m!5619035))

(declare-fun m!5619037 () Bool)

(assert (=> d!1495775 m!5619037))

(declare-fun m!5619039 () Bool)

(assert (=> b!4702240 m!5619039))

(declare-fun m!5619041 () Bool)

(assert (=> b!4702241 m!5619041))

(assert (=> b!4701965 d!1495775))

(declare-fun d!1495779 () Bool)

(declare-fun e!2933224 () Bool)

(assert (=> d!1495779 e!2933224))

(declare-fun res!1985526 () Bool)

(assert (=> d!1495779 (=> (not res!1985526) (not e!2933224))))

(declare-fun lt!1865626 () ListMap!5057)

(assert (=> d!1495779 (= res!1985526 (not (contains!15830 lt!1865626 key!4653)))))

(assert (=> d!1495779 (= lt!1865626 (ListMap!5058 (removePresrvNoDuplicatedKeys!369 (toList!5693 (+!2186 lt!1865249 (h!58826 oldBucket!34))) key!4653)))))

(assert (=> d!1495779 (= (-!706 (+!2186 lt!1865249 (h!58826 oldBucket!34)) key!4653) lt!1865626)))

(declare-fun b!4702243 () Bool)

(assert (=> b!4702243 (= e!2933224 (= ((_ map and) (content!9275 (keys!18799 (+!2186 lt!1865249 (h!58826 oldBucket!34)))) ((_ map not) (store ((as const (Array K!13905 Bool)) false) key!4653 true))) (content!9275 (keys!18799 lt!1865626))))))

(assert (= (and d!1495779 res!1985526) b!4702243))

(declare-fun m!5619055 () Bool)

(assert (=> d!1495779 m!5619055))

(declare-fun m!5619057 () Bool)

(assert (=> d!1495779 m!5619057))

(declare-fun m!5619059 () Bool)

(assert (=> b!4702243 m!5619059))

(assert (=> b!4702243 m!5618539))

(assert (=> b!4702243 m!5619059))

(declare-fun m!5619061 () Bool)

(assert (=> b!4702243 m!5619061))

(assert (=> b!4702243 m!5618267))

(declare-fun m!5619063 () Bool)

(assert (=> b!4702243 m!5619063))

(assert (=> b!4702243 m!5619063))

(declare-fun m!5619065 () Bool)

(assert (=> b!4702243 m!5619065))

(assert (=> b!4701965 d!1495779))

(declare-fun d!1495783 () Bool)

(declare-fun e!2933225 () Bool)

(assert (=> d!1495783 e!2933225))

(declare-fun res!1985527 () Bool)

(assert (=> d!1495783 (=> (not res!1985527) (not e!2933225))))

(declare-fun lt!1865627 () ListMap!5057)

(assert (=> d!1495783 (= res!1985527 (not (contains!15830 lt!1865627 key!4653)))))

(assert (=> d!1495783 (= lt!1865627 (ListMap!5058 (removePresrvNoDuplicatedKeys!369 (toList!5693 lt!1865221) key!4653)))))

(assert (=> d!1495783 (= (-!706 lt!1865221 key!4653) lt!1865627)))

(declare-fun b!4702244 () Bool)

(assert (=> b!4702244 (= e!2933225 (= ((_ map and) (content!9275 (keys!18799 lt!1865221)) ((_ map not) (store ((as const (Array K!13905 Bool)) false) key!4653 true))) (content!9275 (keys!18799 lt!1865627))))))

(assert (= (and d!1495783 res!1985527) b!4702244))

(declare-fun m!5619067 () Bool)

(assert (=> d!1495783 m!5619067))

(declare-fun m!5619069 () Bool)

(assert (=> d!1495783 m!5619069))

(declare-fun m!5619071 () Bool)

(assert (=> b!4702244 m!5619071))

(assert (=> b!4702244 m!5618539))

(assert (=> b!4702244 m!5619071))

(declare-fun m!5619073 () Bool)

(assert (=> b!4702244 m!5619073))

(declare-fun m!5619075 () Bool)

(assert (=> b!4702244 m!5619075))

(assert (=> b!4702244 m!5619075))

(declare-fun m!5619077 () Bool)

(assert (=> b!4702244 m!5619077))

(assert (=> b!4701965 d!1495783))

(declare-fun d!1495785 () Bool)

(declare-fun e!2933226 () Bool)

(assert (=> d!1495785 e!2933226))

(declare-fun res!1985529 () Bool)

(assert (=> d!1495785 (=> (not res!1985529) (not e!2933226))))

(declare-fun lt!1865629 () ListMap!5057)

(assert (=> d!1495785 (= res!1985529 (contains!15830 lt!1865629 (_1!30295 (h!58826 oldBucket!34))))))

(declare-fun lt!1865628 () List!52667)

(assert (=> d!1495785 (= lt!1865629 (ListMap!5058 lt!1865628))))

(declare-fun lt!1865630 () Unit!126368)

(declare-fun lt!1865631 () Unit!126368)

(assert (=> d!1495785 (= lt!1865630 lt!1865631)))

(assert (=> d!1495785 (= (getValueByKey!1856 lt!1865628 (_1!30295 (h!58826 oldBucket!34))) (Some!12203 (_2!30295 (h!58826 oldBucket!34))))))

(assert (=> d!1495785 (= lt!1865631 (lemmaContainsTupThenGetReturnValue!1038 lt!1865628 (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34))))))

(assert (=> d!1495785 (= lt!1865628 (insertNoDuplicatedKeys!546 (toList!5693 lt!1865249) (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34))))))

(assert (=> d!1495785 (= (+!2186 lt!1865249 (h!58826 oldBucket!34)) lt!1865629)))

(declare-fun b!4702245 () Bool)

(declare-fun res!1985528 () Bool)

(assert (=> b!4702245 (=> (not res!1985528) (not e!2933226))))

(assert (=> b!4702245 (= res!1985528 (= (getValueByKey!1856 (toList!5693 lt!1865629) (_1!30295 (h!58826 oldBucket!34))) (Some!12203 (_2!30295 (h!58826 oldBucket!34)))))))

(declare-fun b!4702246 () Bool)

(assert (=> b!4702246 (= e!2933226 (contains!15832 (toList!5693 lt!1865629) (h!58826 oldBucket!34)))))

(assert (= (and d!1495785 res!1985529) b!4702245))

(assert (= (and b!4702245 res!1985528) b!4702246))

(declare-fun m!5619079 () Bool)

(assert (=> d!1495785 m!5619079))

(declare-fun m!5619081 () Bool)

(assert (=> d!1495785 m!5619081))

(declare-fun m!5619083 () Bool)

(assert (=> d!1495785 m!5619083))

(declare-fun m!5619085 () Bool)

(assert (=> d!1495785 m!5619085))

(declare-fun m!5619087 () Bool)

(assert (=> b!4702245 m!5619087))

(declare-fun m!5619089 () Bool)

(assert (=> b!4702246 m!5619089))

(assert (=> b!4701965 d!1495785))

(declare-fun d!1495787 () Bool)

(assert (=> d!1495787 (= (-!706 (+!2186 lt!1865249 (tuple2!54003 (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34)))) key!4653) (+!2186 (-!706 lt!1865249 key!4653) (tuple2!54003 (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34)))))))

(declare-fun lt!1865638 () Unit!126368)

(declare-fun choose!32921 (ListMap!5057 K!13905 V!14151 K!13905) Unit!126368)

(assert (=> d!1495787 (= lt!1865638 (choose!32921 lt!1865249 (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34)) key!4653))))

(assert (=> d!1495787 (not (= (_1!30295 (h!58826 oldBucket!34)) key!4653))))

(assert (=> d!1495787 (= (addRemoveCommutativeForDiffKeys!107 lt!1865249 (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34)) key!4653) lt!1865638)))

(declare-fun bs!1096070 () Bool)

(assert (= bs!1096070 d!1495787))

(assert (=> bs!1096070 m!5618273))

(declare-fun m!5619111 () Bool)

(assert (=> bs!1096070 m!5619111))

(declare-fun m!5619113 () Bool)

(assert (=> bs!1096070 m!5619113))

(assert (=> bs!1096070 m!5619111))

(assert (=> bs!1096070 m!5618273))

(declare-fun m!5619119 () Bool)

(assert (=> bs!1096070 m!5619119))

(declare-fun m!5619123 () Bool)

(assert (=> bs!1096070 m!5619123))

(assert (=> b!4701965 d!1495787))

(declare-fun b!4702252 () Bool)

(declare-fun e!2933229 () List!52667)

(assert (=> b!4702252 (= e!2933229 (Cons!52543 (h!58826 lt!1865216) (removePairForKey!1497 (t!359881 lt!1865216) key!4653)))))

(declare-fun d!1495793 () Bool)

(declare-fun lt!1865643 () List!52667)

(assert (=> d!1495793 (not (containsKey!3177 lt!1865643 key!4653))))

(declare-fun e!2933230 () List!52667)

(assert (=> d!1495793 (= lt!1865643 e!2933230)))

(declare-fun c!803733 () Bool)

(assert (=> d!1495793 (= c!803733 (and ((_ is Cons!52543) lt!1865216) (= (_1!30295 (h!58826 lt!1865216)) key!4653)))))

(assert (=> d!1495793 (noDuplicateKeys!1902 lt!1865216)))

(assert (=> d!1495793 (= (removePairForKey!1497 lt!1865216 key!4653) lt!1865643)))

(declare-fun b!4702253 () Bool)

(assert (=> b!4702253 (= e!2933229 Nil!52543)))

(declare-fun b!4702250 () Bool)

(assert (=> b!4702250 (= e!2933230 (t!359881 lt!1865216))))

(declare-fun b!4702251 () Bool)

(assert (=> b!4702251 (= e!2933230 e!2933229)))

(declare-fun c!803734 () Bool)

(assert (=> b!4702251 (= c!803734 ((_ is Cons!52543) lt!1865216))))

(assert (= (and d!1495793 c!803733) b!4702250))

(assert (= (and d!1495793 (not c!803733)) b!4702251))

(assert (= (and b!4702251 c!803734) b!4702252))

(assert (= (and b!4702251 (not c!803734)) b!4702253))

(declare-fun m!5619131 () Bool)

(assert (=> b!4702252 m!5619131))

(declare-fun m!5619133 () Bool)

(assert (=> d!1495793 m!5619133))

(declare-fun m!5619135 () Bool)

(assert (=> d!1495793 m!5619135))

(assert (=> b!4701955 d!1495793))

(declare-fun d!1495797 () Bool)

(assert (=> d!1495797 (= (tail!8731 newBucket!218) (t!359881 newBucket!218))))

(assert (=> b!4701955 d!1495797))

(declare-fun d!1495801 () Bool)

(assert (=> d!1495801 (= (tail!8731 oldBucket!34) (t!359881 oldBucket!34))))

(assert (=> b!4701955 d!1495801))

(declare-fun d!1495803 () Bool)

(declare-fun res!1985535 () Bool)

(declare-fun e!2933232 () Bool)

(assert (=> d!1495803 (=> res!1985535 e!2933232)))

(assert (=> d!1495803 (= res!1985535 ((_ is Nil!52544) lt!1865223))))

(assert (=> d!1495803 (= (forall!11407 lt!1865223 lambda!210453) e!2933232)))

(declare-fun b!4702256 () Bool)

(declare-fun e!2933233 () Bool)

(assert (=> b!4702256 (= e!2933232 e!2933233)))

(declare-fun res!1985536 () Bool)

(assert (=> b!4702256 (=> (not res!1985536) (not e!2933233))))

(assert (=> b!4702256 (= res!1985536 (dynLambda!21751 lambda!210453 (h!58827 lt!1865223)))))

(declare-fun b!4702257 () Bool)

(assert (=> b!4702257 (= e!2933233 (forall!11407 (t!359882 lt!1865223) lambda!210453))))

(assert (= (and d!1495803 (not res!1985535)) b!4702256))

(assert (= (and b!4702256 res!1985536) b!4702257))

(declare-fun b_lambda!177411 () Bool)

(assert (=> (not b_lambda!177411) (not b!4702256)))

(declare-fun m!5619149 () Bool)

(assert (=> b!4702256 m!5619149))

(declare-fun m!5619151 () Bool)

(assert (=> b!4702257 m!5619151))

(assert (=> b!4701944 d!1495803))

(declare-fun d!1495807 () Bool)

(assert (=> d!1495807 (= (eq!1061 lt!1865242 (-!706 lt!1865233 key!4653)) (= (content!9274 (toList!5693 lt!1865242)) (content!9274 (toList!5693 (-!706 lt!1865233 key!4653)))))))

(declare-fun bs!1096071 () Bool)

(assert (= bs!1096071 d!1495807))

(assert (=> bs!1096071 m!5618457))

(declare-fun m!5619157 () Bool)

(assert (=> bs!1096071 m!5619157))

(assert (=> b!4701944 d!1495807))

(declare-fun d!1495811 () Bool)

(declare-fun e!2933236 () Bool)

(assert (=> d!1495811 e!2933236))

(declare-fun res!1985539 () Bool)

(assert (=> d!1495811 (=> (not res!1985539) (not e!2933236))))

(declare-fun lt!1865648 () ListMap!5057)

(assert (=> d!1495811 (= res!1985539 (not (contains!15830 lt!1865648 key!4653)))))

(assert (=> d!1495811 (= lt!1865648 (ListMap!5058 (removePresrvNoDuplicatedKeys!369 (toList!5693 lt!1865233) key!4653)))))

(assert (=> d!1495811 (= (-!706 lt!1865233 key!4653) lt!1865648)))

(declare-fun b!4702260 () Bool)

(assert (=> b!4702260 (= e!2933236 (= ((_ map and) (content!9275 (keys!18799 lt!1865233)) ((_ map not) (store ((as const (Array K!13905 Bool)) false) key!4653 true))) (content!9275 (keys!18799 lt!1865648))))))

(assert (= (and d!1495811 res!1985539) b!4702260))

(declare-fun m!5619161 () Bool)

(assert (=> d!1495811 m!5619161))

(declare-fun m!5619163 () Bool)

(assert (=> d!1495811 m!5619163))

(declare-fun m!5619165 () Bool)

(assert (=> b!4702260 m!5619165))

(assert (=> b!4702260 m!5618539))

(assert (=> b!4702260 m!5619165))

(declare-fun m!5619167 () Bool)

(assert (=> b!4702260 m!5619167))

(declare-fun m!5619169 () Bool)

(assert (=> b!4702260 m!5619169))

(assert (=> b!4702260 m!5619169))

(declare-fun m!5619171 () Bool)

(assert (=> b!4702260 m!5619171))

(assert (=> b!4701944 d!1495811))

(declare-fun d!1495815 () Bool)

(assert (=> d!1495815 (eq!1061 (-!706 lt!1865221 key!4653) (-!706 lt!1865233 key!4653))))

(declare-fun lt!1865654 () Unit!126368)

(declare-fun choose!32922 (ListMap!5057 ListMap!5057 K!13905) Unit!126368)

(assert (=> d!1495815 (= lt!1865654 (choose!32922 lt!1865221 lt!1865233 key!4653))))

(assert (=> d!1495815 (eq!1061 lt!1865221 lt!1865233)))

(assert (=> d!1495815 (= (lemmaRemovePreservesEq!88 lt!1865221 lt!1865233 key!4653) lt!1865654)))

(declare-fun bs!1096073 () Bool)

(assert (= bs!1096073 d!1495815))

(declare-fun m!5619185 () Bool)

(assert (=> bs!1096073 m!5619185))

(assert (=> bs!1096073 m!5618261))

(assert (=> bs!1096073 m!5618263))

(assert (=> bs!1096073 m!5618361))

(assert (=> bs!1096073 m!5618263))

(assert (=> bs!1096073 m!5618361))

(declare-fun m!5619189 () Bool)

(assert (=> bs!1096073 m!5619189))

(assert (=> b!4701944 d!1495815))

(declare-fun d!1495819 () Bool)

(declare-fun isEmpty!29132 (Option!12201) Bool)

(assert (=> d!1495819 (= (isDefined!9456 (getPair!506 lt!1865244 key!4653)) (not (isEmpty!29132 (getPair!506 lt!1865244 key!4653))))))

(declare-fun bs!1096075 () Bool)

(assert (= bs!1096075 d!1495819))

(assert (=> bs!1096075 m!5618229))

(declare-fun m!5619193 () Bool)

(assert (=> bs!1096075 m!5619193))

(assert (=> b!4701945 d!1495819))

(declare-fun d!1495823 () Bool)

(assert (=> d!1495823 (dynLambda!21751 lambda!210453 lt!1865229)))

(declare-fun lt!1865679 () Unit!126368)

(declare-fun choose!32923 (List!52668 Int tuple2!54004) Unit!126368)

(assert (=> d!1495823 (= lt!1865679 (choose!32923 (toList!5694 lm!2023) lambda!210453 lt!1865229))))

(declare-fun e!2933243 () Bool)

(assert (=> d!1495823 e!2933243))

(declare-fun res!1985546 () Bool)

(assert (=> d!1495823 (=> (not res!1985546) (not e!2933243))))

(assert (=> d!1495823 (= res!1985546 (forall!11407 (toList!5694 lm!2023) lambda!210453))))

(assert (=> d!1495823 (= (forallContained!3514 (toList!5694 lm!2023) lambda!210453 lt!1865229) lt!1865679)))

(declare-fun b!4702269 () Bool)

(assert (=> b!4702269 (= e!2933243 (contains!15828 (toList!5694 lm!2023) lt!1865229))))

(assert (= (and d!1495823 res!1985546) b!4702269))

(declare-fun b_lambda!177415 () Bool)

(assert (=> (not b_lambda!177415) (not d!1495823)))

(declare-fun m!5619195 () Bool)

(assert (=> d!1495823 m!5619195))

(declare-fun m!5619197 () Bool)

(assert (=> d!1495823 m!5619197))

(assert (=> d!1495823 m!5618347))

(assert (=> b!4702269 m!5618235))

(assert (=> b!4701945 d!1495823))

(declare-fun b!4702288 () Bool)

(declare-fun res!1985558 () Bool)

(declare-fun e!2933259 () Bool)

(assert (=> b!4702288 (=> (not res!1985558) (not e!2933259))))

(declare-fun lt!1865683 () Option!12201)

(declare-fun get!17593 (Option!12201) tuple2!54002)

(assert (=> b!4702288 (= res!1985558 (= (_1!30295 (get!17593 lt!1865683)) key!4653))))

(declare-fun b!4702290 () Bool)

(declare-fun e!2933258 () Option!12201)

(declare-fun e!2933257 () Option!12201)

(assert (=> b!4702290 (= e!2933258 e!2933257)))

(declare-fun c!803742 () Bool)

(assert (=> b!4702290 (= c!803742 ((_ is Cons!52543) lt!1865244))))

(declare-fun b!4702291 () Bool)

(assert (=> b!4702291 (= e!2933257 None!12200)))

(declare-fun b!4702292 () Bool)

(declare-fun e!2933256 () Bool)

(assert (=> b!4702292 (= e!2933256 (not (containsKey!3177 lt!1865244 key!4653)))))

(declare-fun b!4702293 () Bool)

(assert (=> b!4702293 (= e!2933258 (Some!12200 (h!58826 lt!1865244)))))

(declare-fun d!1495825 () Bool)

(declare-fun e!2933255 () Bool)

(assert (=> d!1495825 e!2933255))

(declare-fun res!1985556 () Bool)

(assert (=> d!1495825 (=> res!1985556 e!2933255)))

(assert (=> d!1495825 (= res!1985556 e!2933256)))

(declare-fun res!1985557 () Bool)

(assert (=> d!1495825 (=> (not res!1985557) (not e!2933256))))

(assert (=> d!1495825 (= res!1985557 (isEmpty!29132 lt!1865683))))

(assert (=> d!1495825 (= lt!1865683 e!2933258)))

(declare-fun c!803741 () Bool)

(assert (=> d!1495825 (= c!803741 (and ((_ is Cons!52543) lt!1865244) (= (_1!30295 (h!58826 lt!1865244)) key!4653)))))

(assert (=> d!1495825 (noDuplicateKeys!1902 lt!1865244)))

(assert (=> d!1495825 (= (getPair!506 lt!1865244 key!4653) lt!1865683)))

(declare-fun b!4702289 () Bool)

(assert (=> b!4702289 (= e!2933255 e!2933259)))

(declare-fun res!1985555 () Bool)

(assert (=> b!4702289 (=> (not res!1985555) (not e!2933259))))

(assert (=> b!4702289 (= res!1985555 (isDefined!9456 lt!1865683))))

(declare-fun b!4702294 () Bool)

(assert (=> b!4702294 (= e!2933259 (contains!15832 lt!1865244 (get!17593 lt!1865683)))))

(declare-fun b!4702295 () Bool)

(assert (=> b!4702295 (= e!2933257 (getPair!506 (t!359881 lt!1865244) key!4653))))

(assert (= (and d!1495825 c!803741) b!4702293))

(assert (= (and d!1495825 (not c!803741)) b!4702290))

(assert (= (and b!4702290 c!803742) b!4702295))

(assert (= (and b!4702290 (not c!803742)) b!4702291))

(assert (= (and d!1495825 res!1985557) b!4702292))

(assert (= (and d!1495825 (not res!1985556)) b!4702289))

(assert (= (and b!4702289 res!1985555) b!4702288))

(assert (= (and b!4702288 res!1985558) b!4702294))

(declare-fun m!5619231 () Bool)

(assert (=> b!4702294 m!5619231))

(assert (=> b!4702294 m!5619231))

(declare-fun m!5619233 () Bool)

(assert (=> b!4702294 m!5619233))

(assert (=> b!4702288 m!5619231))

(declare-fun m!5619235 () Bool)

(assert (=> b!4702292 m!5619235))

(declare-fun m!5619237 () Bool)

(assert (=> b!4702295 m!5619237))

(declare-fun m!5619239 () Bool)

(assert (=> b!4702289 m!5619239))

(declare-fun m!5619241 () Bool)

(assert (=> d!1495825 m!5619241))

(declare-fun m!5619243 () Bool)

(assert (=> d!1495825 m!5619243))

(assert (=> b!4701945 d!1495825))

(declare-fun bs!1096138 () Bool)

(declare-fun d!1495829 () Bool)

(assert (= bs!1096138 (and d!1495829 start!476980)))

(declare-fun lambda!210584 () Int)

(assert (=> bs!1096138 (= lambda!210584 lambda!210453)))

(declare-fun bs!1096139 () Bool)

(assert (= bs!1096139 (and d!1495829 d!1495657)))

(assert (=> bs!1096139 (= lambda!210584 lambda!210478)))

(declare-fun bs!1096140 () Bool)

(assert (= bs!1096140 (and d!1495829 d!1495707)))

(assert (=> bs!1096140 (= lambda!210584 lambda!210560)))

(declare-fun bs!1096141 () Bool)

(assert (= bs!1096141 (and d!1495829 d!1495663)))

(assert (=> bs!1096141 (= lambda!210584 lambda!210483)))

(declare-fun bs!1096142 () Bool)

(assert (= bs!1096142 (and d!1495829 d!1495639)))

(assert (=> bs!1096142 (= lambda!210584 lambda!210470)))

(declare-fun bs!1096143 () Bool)

(assert (= bs!1096143 (and d!1495829 d!1495711)))

(assert (=> bs!1096143 (not (= lambda!210584 lambda!210563))))

(declare-fun bs!1096144 () Bool)

(assert (= bs!1096144 (and d!1495829 d!1495653)))

(assert (=> bs!1096144 (= lambda!210584 lambda!210471)))

(assert (=> d!1495829 (contains!15829 lm!2023 (hash!4182 hashF!1323 key!4653))))

(declare-fun lt!1865687 () Unit!126368)

(declare-fun choose!32924 (ListLongMap!4223 K!13905 Hashable!6271) Unit!126368)

(assert (=> d!1495829 (= lt!1865687 (choose!32924 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1495829 (forall!11407 (toList!5694 lm!2023) lambda!210584)))

(assert (=> d!1495829 (= (lemmaInGenMapThenLongMapContainsHash!712 lm!2023 key!4653 hashF!1323) lt!1865687)))

(declare-fun bs!1096145 () Bool)

(assert (= bs!1096145 d!1495829))

(assert (=> bs!1096145 m!5618251))

(assert (=> bs!1096145 m!5618251))

(declare-fun m!5619263 () Bool)

(assert (=> bs!1096145 m!5619263))

(declare-fun m!5619265 () Bool)

(assert (=> bs!1096145 m!5619265))

(declare-fun m!5619267 () Bool)

(assert (=> bs!1096145 m!5619267))

(assert (=> b!4701945 d!1495829))

(declare-fun d!1495843 () Bool)

(declare-datatypes ((Option!12205 0))(
  ( (None!12204) (Some!12204 (v!46699 List!52667)) )
))
(declare-fun get!17594 (Option!12205) List!52667)

(declare-fun getValueByKey!1857 (List!52668 (_ BitVec 64)) Option!12205)

(assert (=> d!1495843 (= (apply!12385 lm!2023 lt!1865232) (get!17594 (getValueByKey!1857 (toList!5694 lm!2023) lt!1865232)))))

(declare-fun bs!1096146 () Bool)

(assert (= bs!1096146 d!1495843))

(declare-fun m!5619269 () Bool)

(assert (=> bs!1096146 m!5619269))

(assert (=> bs!1096146 m!5619269))

(declare-fun m!5619271 () Bool)

(assert (=> bs!1096146 m!5619271))

(assert (=> b!4701945 d!1495843))

(declare-fun bs!1096147 () Bool)

(declare-fun d!1495845 () Bool)

(assert (= bs!1096147 (and d!1495845 start!476980)))

(declare-fun lambda!210591 () Int)

(assert (=> bs!1096147 (= lambda!210591 lambda!210453)))

(declare-fun bs!1096148 () Bool)

(assert (= bs!1096148 (and d!1495845 d!1495657)))

(assert (=> bs!1096148 (= lambda!210591 lambda!210478)))

(declare-fun bs!1096149 () Bool)

(assert (= bs!1096149 (and d!1495845 d!1495707)))

(assert (=> bs!1096149 (= lambda!210591 lambda!210560)))

(declare-fun bs!1096150 () Bool)

(assert (= bs!1096150 (and d!1495845 d!1495663)))

(assert (=> bs!1096150 (= lambda!210591 lambda!210483)))

(declare-fun bs!1096151 () Bool)

(assert (= bs!1096151 (and d!1495845 d!1495639)))

(assert (=> bs!1096151 (= lambda!210591 lambda!210470)))

(declare-fun bs!1096152 () Bool)

(assert (= bs!1096152 (and d!1495845 d!1495829)))

(assert (=> bs!1096152 (= lambda!210591 lambda!210584)))

(declare-fun bs!1096153 () Bool)

(assert (= bs!1096153 (and d!1495845 d!1495711)))

(assert (=> bs!1096153 (not (= lambda!210591 lambda!210563))))

(declare-fun bs!1096154 () Bool)

(assert (= bs!1096154 (and d!1495845 d!1495653)))

(assert (=> bs!1096154 (= lambda!210591 lambda!210471)))

(declare-fun e!2933276 () Bool)

(declare-fun lt!1865704 () (_ BitVec 64))

(declare-fun lt!1865711 () List!52667)

(declare-fun b!4702324 () Bool)

(assert (=> b!4702324 (= e!2933276 (= (getValueByKey!1857 (toList!5694 lm!2023) lt!1865704) (Some!12204 lt!1865711)))))

(declare-fun e!2933275 () Bool)

(declare-fun b!4702323 () Bool)

(assert (=> b!4702323 (= e!2933275 (isDefined!9456 (getPair!506 (apply!12385 lm!2023 (hash!4182 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1865708 () Unit!126368)

(assert (=> b!4702323 (= lt!1865708 (forallContained!3514 (toList!5694 lm!2023) lambda!210591 (tuple2!54005 (hash!4182 hashF!1323 key!4653) (apply!12385 lm!2023 (hash!4182 hashF!1323 key!4653)))))))

(declare-fun lt!1865710 () Unit!126368)

(declare-fun lt!1865709 () Unit!126368)

(assert (=> b!4702323 (= lt!1865710 lt!1865709)))

(assert (=> b!4702323 (contains!15828 (toList!5694 lm!2023) (tuple2!54005 lt!1865704 lt!1865711))))

(assert (=> b!4702323 (= lt!1865709 (lemmaGetValueImpliesTupleContained!311 lm!2023 lt!1865704 lt!1865711))))

(assert (=> b!4702323 e!2933276))

(declare-fun res!1985571 () Bool)

(assert (=> b!4702323 (=> (not res!1985571) (not e!2933276))))

(assert (=> b!4702323 (= res!1985571 (contains!15829 lm!2023 lt!1865704))))

(assert (=> b!4702323 (= lt!1865711 (apply!12385 lm!2023 (hash!4182 hashF!1323 key!4653)))))

(assert (=> b!4702323 (= lt!1865704 (hash!4182 hashF!1323 key!4653))))

(declare-fun lt!1865705 () Unit!126368)

(declare-fun lt!1865706 () Unit!126368)

(assert (=> b!4702323 (= lt!1865705 lt!1865706)))

(assert (=> b!4702323 (contains!15829 lm!2023 (hash!4182 hashF!1323 key!4653))))

(assert (=> b!4702323 (= lt!1865706 (lemmaInGenMapThenLongMapContainsHash!712 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1495845 e!2933275))

(declare-fun res!1985570 () Bool)

(assert (=> d!1495845 (=> (not res!1985570) (not e!2933275))))

(assert (=> d!1495845 (= res!1985570 (forall!11407 (toList!5694 lm!2023) lambda!210591))))

(declare-fun lt!1865707 () Unit!126368)

(declare-fun choose!32925 (ListLongMap!4223 K!13905 Hashable!6271) Unit!126368)

(assert (=> d!1495845 (= lt!1865707 (choose!32925 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1495845 (forall!11407 (toList!5694 lm!2023) lambda!210591)))

(assert (=> d!1495845 (= (lemmaInGenMapThenGetPairDefined!302 lm!2023 key!4653 hashF!1323) lt!1865707)))

(declare-fun b!4702322 () Bool)

(declare-fun res!1985572 () Bool)

(assert (=> b!4702322 (=> (not res!1985572) (not e!2933275))))

(assert (=> b!4702322 (= res!1985572 (contains!15830 (extractMap!1928 (toList!5694 lm!2023)) key!4653))))

(declare-fun b!4702321 () Bool)

(declare-fun res!1985569 () Bool)

(assert (=> b!4702321 (=> (not res!1985569) (not e!2933275))))

(assert (=> b!4702321 (= res!1985569 (allKeysSameHashInMap!1816 lm!2023 hashF!1323))))

(assert (= (and d!1495845 res!1985570) b!4702321))

(assert (= (and b!4702321 res!1985569) b!4702322))

(assert (= (and b!4702322 res!1985572) b!4702323))

(assert (= (and b!4702323 res!1985571) b!4702324))

(declare-fun m!5619273 () Bool)

(assert (=> b!4702324 m!5619273))

(declare-fun m!5619275 () Bool)

(assert (=> d!1495845 m!5619275))

(declare-fun m!5619277 () Bool)

(assert (=> d!1495845 m!5619277))

(assert (=> d!1495845 m!5619275))

(declare-fun m!5619279 () Bool)

(assert (=> b!4702323 m!5619279))

(assert (=> b!4702323 m!5618233))

(assert (=> b!4702323 m!5618251))

(declare-fun m!5619281 () Bool)

(assert (=> b!4702323 m!5619281))

(declare-fun m!5619283 () Bool)

(assert (=> b!4702323 m!5619283))

(declare-fun m!5619285 () Bool)

(assert (=> b!4702323 m!5619285))

(assert (=> b!4702323 m!5619283))

(declare-fun m!5619287 () Bool)

(assert (=> b!4702323 m!5619287))

(assert (=> b!4702323 m!5618251))

(assert (=> b!4702323 m!5619281))

(assert (=> b!4702323 m!5618251))

(assert (=> b!4702323 m!5619263))

(declare-fun m!5619289 () Bool)

(assert (=> b!4702323 m!5619289))

(declare-fun m!5619291 () Bool)

(assert (=> b!4702323 m!5619291))

(assert (=> b!4702321 m!5618351))

(assert (=> b!4702322 m!5618223))

(assert (=> b!4702322 m!5618223))

(declare-fun m!5619293 () Bool)

(assert (=> b!4702322 m!5619293))

(assert (=> b!4701945 d!1495845))

(declare-fun d!1495847 () Bool)

(declare-fun e!2933281 () Bool)

(assert (=> d!1495847 e!2933281))

(declare-fun res!1985575 () Bool)

(assert (=> d!1495847 (=> res!1985575 e!2933281)))

(declare-fun lt!1865722 () Bool)

(assert (=> d!1495847 (= res!1985575 (not lt!1865722))))

(declare-fun lt!1865723 () Bool)

(assert (=> d!1495847 (= lt!1865722 lt!1865723)))

(declare-fun lt!1865721 () Unit!126368)

(declare-fun e!2933282 () Unit!126368)

(assert (=> d!1495847 (= lt!1865721 e!2933282)))

(declare-fun c!803747 () Bool)

(assert (=> d!1495847 (= c!803747 lt!1865723)))

(declare-fun containsKey!3180 (List!52668 (_ BitVec 64)) Bool)

(assert (=> d!1495847 (= lt!1865723 (containsKey!3180 (toList!5694 lm!2023) lt!1865232))))

(assert (=> d!1495847 (= (contains!15829 lm!2023 lt!1865232) lt!1865722)))

(declare-fun b!4702331 () Bool)

(declare-fun lt!1865720 () Unit!126368)

(assert (=> b!4702331 (= e!2933282 lt!1865720)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1748 (List!52668 (_ BitVec 64)) Unit!126368)

(assert (=> b!4702331 (= lt!1865720 (lemmaContainsKeyImpliesGetValueByKeyDefined!1748 (toList!5694 lm!2023) lt!1865232))))

(declare-fun isDefined!9459 (Option!12205) Bool)

(assert (=> b!4702331 (isDefined!9459 (getValueByKey!1857 (toList!5694 lm!2023) lt!1865232))))

(declare-fun b!4702332 () Bool)

(declare-fun Unit!126430 () Unit!126368)

(assert (=> b!4702332 (= e!2933282 Unit!126430)))

(declare-fun b!4702333 () Bool)

(assert (=> b!4702333 (= e!2933281 (isDefined!9459 (getValueByKey!1857 (toList!5694 lm!2023) lt!1865232)))))

(assert (= (and d!1495847 c!803747) b!4702331))

(assert (= (and d!1495847 (not c!803747)) b!4702332))

(assert (= (and d!1495847 (not res!1985575)) b!4702333))

(declare-fun m!5619295 () Bool)

(assert (=> d!1495847 m!5619295))

(declare-fun m!5619297 () Bool)

(assert (=> b!4702331 m!5619297))

(assert (=> b!4702331 m!5619269))

(assert (=> b!4702331 m!5619269))

(declare-fun m!5619299 () Bool)

(assert (=> b!4702331 m!5619299))

(assert (=> b!4702333 m!5619269))

(assert (=> b!4702333 m!5619269))

(assert (=> b!4702333 m!5619299))

(assert (=> b!4701945 d!1495847))

(declare-fun d!1495849 () Bool)

(declare-fun res!1985580 () Bool)

(declare-fun e!2933287 () Bool)

(assert (=> d!1495849 (=> res!1985580 e!2933287)))

(assert (=> d!1495849 (= res!1985580 (and ((_ is Cons!52543) (t!359881 oldBucket!34)) (= (_1!30295 (h!58826 (t!359881 oldBucket!34))) key!4653)))))

(assert (=> d!1495849 (= (containsKey!3177 (t!359881 oldBucket!34) key!4653) e!2933287)))

(declare-fun b!4702338 () Bool)

(declare-fun e!2933288 () Bool)

(assert (=> b!4702338 (= e!2933287 e!2933288)))

(declare-fun res!1985581 () Bool)

(assert (=> b!4702338 (=> (not res!1985581) (not e!2933288))))

(assert (=> b!4702338 (= res!1985581 ((_ is Cons!52543) (t!359881 oldBucket!34)))))

(declare-fun b!4702339 () Bool)

(assert (=> b!4702339 (= e!2933288 (containsKey!3177 (t!359881 (t!359881 oldBucket!34)) key!4653))))

(assert (= (and d!1495849 (not res!1985580)) b!4702338))

(assert (= (and b!4702338 res!1985581) b!4702339))

(declare-fun m!5619301 () Bool)

(assert (=> b!4702339 m!5619301))

(assert (=> b!4701945 d!1495849))

(declare-fun d!1495851 () Bool)

(declare-fun res!1985582 () Bool)

(declare-fun e!2933289 () Bool)

(assert (=> d!1495851 (=> res!1985582 e!2933289)))

(assert (=> d!1495851 (= res!1985582 (and ((_ is Cons!52543) oldBucket!34) (= (_1!30295 (h!58826 oldBucket!34)) key!4653)))))

(assert (=> d!1495851 (= (containsKey!3177 oldBucket!34 key!4653) e!2933289)))

(declare-fun b!4702340 () Bool)

(declare-fun e!2933290 () Bool)

(assert (=> b!4702340 (= e!2933289 e!2933290)))

(declare-fun res!1985583 () Bool)

(assert (=> b!4702340 (=> (not res!1985583) (not e!2933290))))

(assert (=> b!4702340 (= res!1985583 ((_ is Cons!52543) oldBucket!34))))

(declare-fun b!4702341 () Bool)

(assert (=> b!4702341 (= e!2933290 (containsKey!3177 (t!359881 oldBucket!34) key!4653))))

(assert (= (and d!1495851 (not res!1985582)) b!4702340))

(assert (= (and b!4702340 res!1985583) b!4702341))

(assert (=> b!4702341 m!5618237))

(assert (=> b!4701945 d!1495851))

(declare-fun d!1495853 () Bool)

(assert (=> d!1495853 (containsKey!3177 oldBucket!34 key!4653)))

(declare-fun lt!1865726 () Unit!126368)

(declare-fun choose!32926 (List!52667 K!13905 Hashable!6271) Unit!126368)

(assert (=> d!1495853 (= lt!1865726 (choose!32926 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1495853 (noDuplicateKeys!1902 oldBucket!34)))

(assert (=> d!1495853 (= (lemmaGetPairDefinedThenContainsKey!254 oldBucket!34 key!4653 hashF!1323) lt!1865726)))

(declare-fun bs!1096155 () Bool)

(assert (= bs!1096155 d!1495853))

(assert (=> bs!1096155 m!5618245))

(declare-fun m!5619303 () Bool)

(assert (=> bs!1096155 m!5619303))

(assert (=> bs!1096155 m!5618357))

(assert (=> b!4701945 d!1495853))

(declare-fun d!1495855 () Bool)

(assert (=> d!1495855 (contains!15828 (toList!5694 lm!2023) (tuple2!54005 lt!1865232 lt!1865244))))

(declare-fun lt!1865729 () Unit!126368)

(declare-fun choose!32927 (ListLongMap!4223 (_ BitVec 64) List!52667) Unit!126368)

(assert (=> d!1495855 (= lt!1865729 (choose!32927 lm!2023 lt!1865232 lt!1865244))))

(assert (=> d!1495855 (contains!15829 lm!2023 lt!1865232)))

(assert (=> d!1495855 (= (lemmaGetValueImpliesTupleContained!311 lm!2023 lt!1865232 lt!1865244) lt!1865729)))

(declare-fun bs!1096156 () Bool)

(assert (= bs!1096156 d!1495855))

(declare-fun m!5619305 () Bool)

(assert (=> bs!1096156 m!5619305))

(declare-fun m!5619307 () Bool)

(assert (=> bs!1096156 m!5619307))

(assert (=> bs!1096156 m!5618239))

(assert (=> b!4701945 d!1495855))

(declare-fun d!1495857 () Bool)

(declare-fun lt!1865732 () Bool)

(declare-fun content!9276 (List!52668) (InoxSet tuple2!54004))

(assert (=> d!1495857 (= lt!1865732 (select (content!9276 (toList!5694 lm!2023)) lt!1865229))))

(declare-fun e!2933295 () Bool)

(assert (=> d!1495857 (= lt!1865732 e!2933295)))

(declare-fun res!1985589 () Bool)

(assert (=> d!1495857 (=> (not res!1985589) (not e!2933295))))

(assert (=> d!1495857 (= res!1985589 ((_ is Cons!52544) (toList!5694 lm!2023)))))

(assert (=> d!1495857 (= (contains!15828 (toList!5694 lm!2023) lt!1865229) lt!1865732)))

(declare-fun b!4702347 () Bool)

(declare-fun e!2933296 () Bool)

(assert (=> b!4702347 (= e!2933295 e!2933296)))

(declare-fun res!1985588 () Bool)

(assert (=> b!4702347 (=> res!1985588 e!2933296)))

(assert (=> b!4702347 (= res!1985588 (= (h!58827 (toList!5694 lm!2023)) lt!1865229))))

(declare-fun b!4702348 () Bool)

(assert (=> b!4702348 (= e!2933296 (contains!15828 (t!359882 (toList!5694 lm!2023)) lt!1865229))))

(assert (= (and d!1495857 res!1985589) b!4702347))

(assert (= (and b!4702347 (not res!1985588)) b!4702348))

(declare-fun m!5619309 () Bool)

(assert (=> d!1495857 m!5619309))

(declare-fun m!5619311 () Bool)

(assert (=> d!1495857 m!5619311))

(declare-fun m!5619313 () Bool)

(assert (=> b!4702348 m!5619313))

(assert (=> b!4701945 d!1495857))

(declare-fun bm!328739 () Bool)

(declare-fun call!328744 () Bool)

(declare-fun e!2933310 () List!52670)

(declare-fun contains!15834 (List!52670 K!13905) Bool)

(assert (=> bm!328739 (= call!328744 (contains!15834 e!2933310 key!4653))))

(declare-fun c!803754 () Bool)

(declare-fun c!803755 () Bool)

(assert (=> bm!328739 (= c!803754 c!803755)))

(declare-fun b!4702367 () Bool)

(declare-fun e!2933311 () Unit!126368)

(declare-fun lt!1865753 () Unit!126368)

(assert (=> b!4702367 (= e!2933311 lt!1865753)))

(declare-fun lt!1865752 () Unit!126368)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1749 (List!52667 K!13905) Unit!126368)

(assert (=> b!4702367 (= lt!1865752 (lemmaContainsKeyImpliesGetValueByKeyDefined!1749 (toList!5693 lt!1865228) key!4653))))

(declare-fun isDefined!9460 (Option!12204) Bool)

(assert (=> b!4702367 (isDefined!9460 (getValueByKey!1856 (toList!5693 lt!1865228) key!4653))))

(declare-fun lt!1865756 () Unit!126368)

(assert (=> b!4702367 (= lt!1865756 lt!1865752)))

(declare-fun lemmaInListThenGetKeysListContains!883 (List!52667 K!13905) Unit!126368)

(assert (=> b!4702367 (= lt!1865753 (lemmaInListThenGetKeysListContains!883 (toList!5693 lt!1865228) key!4653))))

(assert (=> b!4702367 call!328744))

(declare-fun b!4702368 () Bool)

(declare-fun e!2933312 () Unit!126368)

(assert (=> b!4702368 (= e!2933311 e!2933312)))

(declare-fun c!803756 () Bool)

(assert (=> b!4702368 (= c!803756 call!328744)))

(declare-fun b!4702369 () Bool)

(declare-fun getKeysList!888 (List!52667) List!52670)

(assert (=> b!4702369 (= e!2933310 (getKeysList!888 (toList!5693 lt!1865228)))))

(declare-fun b!4702370 () Bool)

(declare-fun e!2933309 () Bool)

(assert (=> b!4702370 (= e!2933309 (not (contains!15834 (keys!18799 lt!1865228) key!4653)))))

(declare-fun d!1495859 () Bool)

(declare-fun e!2933314 () Bool)

(assert (=> d!1495859 e!2933314))

(declare-fun res!1985596 () Bool)

(assert (=> d!1495859 (=> res!1985596 e!2933314)))

(assert (=> d!1495859 (= res!1985596 e!2933309)))

(declare-fun res!1985598 () Bool)

(assert (=> d!1495859 (=> (not res!1985598) (not e!2933309))))

(declare-fun lt!1865749 () Bool)

(assert (=> d!1495859 (= res!1985598 (not lt!1865749))))

(declare-fun lt!1865751 () Bool)

(assert (=> d!1495859 (= lt!1865749 lt!1865751)))

(declare-fun lt!1865750 () Unit!126368)

(assert (=> d!1495859 (= lt!1865750 e!2933311)))

(assert (=> d!1495859 (= c!803755 lt!1865751)))

(declare-fun containsKey!3181 (List!52667 K!13905) Bool)

(assert (=> d!1495859 (= lt!1865751 (containsKey!3181 (toList!5693 lt!1865228) key!4653))))

(assert (=> d!1495859 (= (contains!15830 lt!1865228 key!4653) lt!1865749)))

(declare-fun b!4702371 () Bool)

(assert (=> b!4702371 false))

(declare-fun lt!1865755 () Unit!126368)

(declare-fun lt!1865754 () Unit!126368)

(assert (=> b!4702371 (= lt!1865755 lt!1865754)))

(assert (=> b!4702371 (containsKey!3181 (toList!5693 lt!1865228) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!887 (List!52667 K!13905) Unit!126368)

(assert (=> b!4702371 (= lt!1865754 (lemmaInGetKeysListThenContainsKey!887 (toList!5693 lt!1865228) key!4653))))

(declare-fun Unit!126431 () Unit!126368)

(assert (=> b!4702371 (= e!2933312 Unit!126431)))

(declare-fun b!4702372 () Bool)

(declare-fun Unit!126432 () Unit!126368)

(assert (=> b!4702372 (= e!2933312 Unit!126432)))

(declare-fun b!4702373 () Bool)

(declare-fun e!2933313 () Bool)

(assert (=> b!4702373 (= e!2933314 e!2933313)))

(declare-fun res!1985597 () Bool)

(assert (=> b!4702373 (=> (not res!1985597) (not e!2933313))))

(assert (=> b!4702373 (= res!1985597 (isDefined!9460 (getValueByKey!1856 (toList!5693 lt!1865228) key!4653)))))

(declare-fun b!4702374 () Bool)

(assert (=> b!4702374 (= e!2933310 (keys!18799 lt!1865228))))

(declare-fun b!4702375 () Bool)

(assert (=> b!4702375 (= e!2933313 (contains!15834 (keys!18799 lt!1865228) key!4653))))

(assert (= (and d!1495859 c!803755) b!4702367))

(assert (= (and d!1495859 (not c!803755)) b!4702368))

(assert (= (and b!4702368 c!803756) b!4702371))

(assert (= (and b!4702368 (not c!803756)) b!4702372))

(assert (= (or b!4702367 b!4702368) bm!328739))

(assert (= (and bm!328739 c!803754) b!4702369))

(assert (= (and bm!328739 (not c!803754)) b!4702374))

(assert (= (and d!1495859 res!1985598) b!4702370))

(assert (= (and d!1495859 (not res!1985596)) b!4702373))

(assert (= (and b!4702373 res!1985597) b!4702375))

(declare-fun m!5619315 () Bool)

(assert (=> b!4702371 m!5619315))

(declare-fun m!5619317 () Bool)

(assert (=> b!4702371 m!5619317))

(declare-fun m!5619319 () Bool)

(assert (=> bm!328739 m!5619319))

(declare-fun m!5619321 () Bool)

(assert (=> b!4702373 m!5619321))

(assert (=> b!4702373 m!5619321))

(declare-fun m!5619323 () Bool)

(assert (=> b!4702373 m!5619323))

(declare-fun m!5619325 () Bool)

(assert (=> b!4702370 m!5619325))

(assert (=> b!4702370 m!5619325))

(declare-fun m!5619327 () Bool)

(assert (=> b!4702370 m!5619327))

(assert (=> d!1495859 m!5619315))

(declare-fun m!5619329 () Bool)

(assert (=> b!4702367 m!5619329))

(assert (=> b!4702367 m!5619321))

(assert (=> b!4702367 m!5619321))

(assert (=> b!4702367 m!5619323))

(declare-fun m!5619331 () Bool)

(assert (=> b!4702367 m!5619331))

(assert (=> b!4702375 m!5619325))

(assert (=> b!4702375 m!5619325))

(assert (=> b!4702375 m!5619327))

(declare-fun m!5619333 () Bool)

(assert (=> b!4702369 m!5619333))

(assert (=> b!4702374 m!5619325))

(assert (=> b!4701966 d!1495859))

(declare-fun bs!1096157 () Bool)

(declare-fun d!1495861 () Bool)

(assert (= bs!1096157 (and d!1495861 start!476980)))

(declare-fun lambda!210592 () Int)

(assert (=> bs!1096157 (= lambda!210592 lambda!210453)))

(declare-fun bs!1096158 () Bool)

(assert (= bs!1096158 (and d!1495861 d!1495707)))

(assert (=> bs!1096158 (= lambda!210592 lambda!210560)))

(declare-fun bs!1096159 () Bool)

(assert (= bs!1096159 (and d!1495861 d!1495663)))

(assert (=> bs!1096159 (= lambda!210592 lambda!210483)))

(declare-fun bs!1096160 () Bool)

(assert (= bs!1096160 (and d!1495861 d!1495639)))

(assert (=> bs!1096160 (= lambda!210592 lambda!210470)))

(declare-fun bs!1096161 () Bool)

(assert (= bs!1096161 (and d!1495861 d!1495829)))

(assert (=> bs!1096161 (= lambda!210592 lambda!210584)))

(declare-fun bs!1096162 () Bool)

(assert (= bs!1096162 (and d!1495861 d!1495711)))

(assert (=> bs!1096162 (not (= lambda!210592 lambda!210563))))

(declare-fun bs!1096163 () Bool)

(assert (= bs!1096163 (and d!1495861 d!1495653)))

(assert (=> bs!1096163 (= lambda!210592 lambda!210471)))

(declare-fun bs!1096164 () Bool)

(assert (= bs!1096164 (and d!1495861 d!1495657)))

(assert (=> bs!1096164 (= lambda!210592 lambda!210478)))

(declare-fun bs!1096165 () Bool)

(assert (= bs!1096165 (and d!1495861 d!1495845)))

(assert (=> bs!1096165 (= lambda!210592 lambda!210591)))

(declare-fun lt!1865757 () ListMap!5057)

(assert (=> d!1495861 (invariantList!1448 (toList!5693 lt!1865757))))

(declare-fun e!2933315 () ListMap!5057)

(assert (=> d!1495861 (= lt!1865757 e!2933315)))

(declare-fun c!803757 () Bool)

(assert (=> d!1495861 (= c!803757 ((_ is Cons!52544) (toList!5694 lm!2023)))))

(assert (=> d!1495861 (forall!11407 (toList!5694 lm!2023) lambda!210592)))

(assert (=> d!1495861 (= (extractMap!1928 (toList!5694 lm!2023)) lt!1865757)))

(declare-fun b!4702376 () Bool)

(assert (=> b!4702376 (= e!2933315 (addToMapMapFromBucket!1334 (_2!30296 (h!58827 (toList!5694 lm!2023))) (extractMap!1928 (t!359882 (toList!5694 lm!2023)))))))

(declare-fun b!4702377 () Bool)

(assert (=> b!4702377 (= e!2933315 (ListMap!5058 Nil!52543))))

(assert (= (and d!1495861 c!803757) b!4702376))

(assert (= (and d!1495861 (not c!803757)) b!4702377))

(declare-fun m!5619335 () Bool)

(assert (=> d!1495861 m!5619335))

(declare-fun m!5619337 () Bool)

(assert (=> d!1495861 m!5619337))

(assert (=> b!4702376 m!5618257))

(assert (=> b!4702376 m!5618257))

(declare-fun m!5619339 () Bool)

(assert (=> b!4702376 m!5619339))

(assert (=> b!4701966 d!1495861))

(declare-fun b!4702380 () Bool)

(declare-fun e!2933316 () List!52667)

(assert (=> b!4702380 (= e!2933316 (Cons!52543 (h!58826 oldBucket!34) (removePairForKey!1497 (t!359881 oldBucket!34) key!4653)))))

(declare-fun d!1495863 () Bool)

(declare-fun lt!1865758 () List!52667)

(assert (=> d!1495863 (not (containsKey!3177 lt!1865758 key!4653))))

(declare-fun e!2933317 () List!52667)

(assert (=> d!1495863 (= lt!1865758 e!2933317)))

(declare-fun c!803758 () Bool)

(assert (=> d!1495863 (= c!803758 (and ((_ is Cons!52543) oldBucket!34) (= (_1!30295 (h!58826 oldBucket!34)) key!4653)))))

(assert (=> d!1495863 (noDuplicateKeys!1902 oldBucket!34)))

(assert (=> d!1495863 (= (removePairForKey!1497 oldBucket!34 key!4653) lt!1865758)))

(declare-fun b!4702381 () Bool)

(assert (=> b!4702381 (= e!2933316 Nil!52543)))

(declare-fun b!4702378 () Bool)

(assert (=> b!4702378 (= e!2933317 (t!359881 oldBucket!34))))

(declare-fun b!4702379 () Bool)

(assert (=> b!4702379 (= e!2933317 e!2933316)))

(declare-fun c!803759 () Bool)

(assert (=> b!4702379 (= c!803759 ((_ is Cons!52543) oldBucket!34))))

(assert (= (and d!1495863 c!803758) b!4702378))

(assert (= (and d!1495863 (not c!803758)) b!4702379))

(assert (= (and b!4702379 c!803759) b!4702380))

(assert (= (and b!4702379 (not c!803759)) b!4702381))

(assert (=> b!4702380 m!5618217))

(declare-fun m!5619341 () Bool)

(assert (=> d!1495863 m!5619341))

(assert (=> d!1495863 m!5618357))

(assert (=> b!4701962 d!1495863))

(declare-fun d!1495865 () Bool)

(declare-fun res!1985599 () Bool)

(declare-fun e!2933318 () Bool)

(assert (=> d!1495865 (=> res!1985599 e!2933318)))

(assert (=> d!1495865 (= res!1985599 (not ((_ is Cons!52543) oldBucket!34)))))

(assert (=> d!1495865 (= (noDuplicateKeys!1902 oldBucket!34) e!2933318)))

(declare-fun b!4702382 () Bool)

(declare-fun e!2933319 () Bool)

(assert (=> b!4702382 (= e!2933318 e!2933319)))

(declare-fun res!1985600 () Bool)

(assert (=> b!4702382 (=> (not res!1985600) (not e!2933319))))

(assert (=> b!4702382 (= res!1985600 (not (containsKey!3177 (t!359881 oldBucket!34) (_1!30295 (h!58826 oldBucket!34)))))))

(declare-fun b!4702383 () Bool)

(assert (=> b!4702383 (= e!2933319 (noDuplicateKeys!1902 (t!359881 oldBucket!34)))))

(assert (= (and d!1495865 (not res!1985599)) b!4702382))

(assert (= (and b!4702382 res!1985600) b!4702383))

(declare-fun m!5619343 () Bool)

(assert (=> b!4702382 m!5619343))

(assert (=> b!4702383 m!5619025))

(assert (=> b!4701952 d!1495865))

(declare-fun bs!1096166 () Bool)

(declare-fun b!4702385 () Bool)

(assert (= bs!1096166 (and b!4702385 b!4702125)))

(declare-fun lambda!210593 () Int)

(assert (=> bs!1096166 (= lambda!210593 lambda!210556)))

(declare-fun bs!1096167 () Bool)

(assert (= bs!1096167 (and b!4702385 d!1495691)))

(assert (=> bs!1096167 (= (= lt!1865217 lt!1865523) (= lambda!210593 lambda!210559))))

(declare-fun bs!1096168 () Bool)

(assert (= bs!1096168 (and b!4702385 b!4702126)))

(assert (=> bs!1096168 (= lambda!210593 lambda!210557)))

(assert (=> bs!1096168 (= (= lt!1865217 lt!1865511) (= lambda!210593 lambda!210558))))

(declare-fun bs!1096169 () Bool)

(assert (= bs!1096169 (and b!4702385 d!1495627)))

(assert (=> bs!1096169 (not (= lambda!210593 lambda!210464))))

(assert (=> b!4702385 true))

(declare-fun bs!1096170 () Bool)

(declare-fun b!4702386 () Bool)

(assert (= bs!1096170 (and b!4702386 b!4702385)))

(declare-fun lambda!210594 () Int)

(assert (=> bs!1096170 (= lambda!210594 lambda!210593)))

(declare-fun bs!1096171 () Bool)

(assert (= bs!1096171 (and b!4702386 b!4702125)))

(assert (=> bs!1096171 (= lambda!210594 lambda!210556)))

(declare-fun bs!1096172 () Bool)

(assert (= bs!1096172 (and b!4702386 d!1495691)))

(assert (=> bs!1096172 (= (= lt!1865217 lt!1865523) (= lambda!210594 lambda!210559))))

(declare-fun bs!1096173 () Bool)

(assert (= bs!1096173 (and b!4702386 b!4702126)))

(assert (=> bs!1096173 (= lambda!210594 lambda!210557)))

(assert (=> bs!1096173 (= (= lt!1865217 lt!1865511) (= lambda!210594 lambda!210558))))

(declare-fun bs!1096174 () Bool)

(assert (= bs!1096174 (and b!4702386 d!1495627)))

(assert (=> bs!1096174 (not (= lambda!210594 lambda!210464))))

(assert (=> b!4702386 true))

(declare-fun lt!1865761 () ListMap!5057)

(declare-fun lambda!210595 () Int)

(assert (=> bs!1096170 (= (= lt!1865761 lt!1865217) (= lambda!210595 lambda!210593))))

(assert (=> bs!1096171 (= (= lt!1865761 lt!1865217) (= lambda!210595 lambda!210556))))

(assert (=> bs!1096172 (= (= lt!1865761 lt!1865523) (= lambda!210595 lambda!210559))))

(assert (=> b!4702386 (= (= lt!1865761 lt!1865217) (= lambda!210595 lambda!210594))))

(assert (=> bs!1096173 (= (= lt!1865761 lt!1865217) (= lambda!210595 lambda!210557))))

(assert (=> bs!1096173 (= (= lt!1865761 lt!1865511) (= lambda!210595 lambda!210558))))

(assert (=> bs!1096174 (not (= lambda!210595 lambda!210464))))

(assert (=> b!4702386 true))

(declare-fun bs!1096175 () Bool)

(declare-fun d!1495867 () Bool)

(assert (= bs!1096175 (and d!1495867 b!4702386)))

(declare-fun lambda!210596 () Int)

(declare-fun lt!1865773 () ListMap!5057)

(assert (=> bs!1096175 (= (= lt!1865773 lt!1865761) (= lambda!210596 lambda!210595))))

(declare-fun bs!1096176 () Bool)

(assert (= bs!1096176 (and d!1495867 b!4702385)))

(assert (=> bs!1096176 (= (= lt!1865773 lt!1865217) (= lambda!210596 lambda!210593))))

(declare-fun bs!1096177 () Bool)

(assert (= bs!1096177 (and d!1495867 b!4702125)))

(assert (=> bs!1096177 (= (= lt!1865773 lt!1865217) (= lambda!210596 lambda!210556))))

(declare-fun bs!1096178 () Bool)

(assert (= bs!1096178 (and d!1495867 d!1495691)))

(assert (=> bs!1096178 (= (= lt!1865773 lt!1865523) (= lambda!210596 lambda!210559))))

(assert (=> bs!1096175 (= (= lt!1865773 lt!1865217) (= lambda!210596 lambda!210594))))

(declare-fun bs!1096179 () Bool)

(assert (= bs!1096179 (and d!1495867 b!4702126)))

(assert (=> bs!1096179 (= (= lt!1865773 lt!1865217) (= lambda!210596 lambda!210557))))

(assert (=> bs!1096179 (= (= lt!1865773 lt!1865511) (= lambda!210596 lambda!210558))))

(declare-fun bs!1096180 () Bool)

(assert (= bs!1096180 (and d!1495867 d!1495627)))

(assert (=> bs!1096180 (not (= lambda!210596 lambda!210464))))

(assert (=> d!1495867 true))

(declare-fun c!803760 () Bool)

(declare-fun bm!328740 () Bool)

(declare-fun call!328745 () Bool)

(assert (=> bm!328740 (= call!328745 (forall!11409 (toList!5693 lt!1865217) (ite c!803760 lambda!210593 lambda!210595)))))

(declare-fun call!328747 () Bool)

(declare-fun bm!328741 () Bool)

(assert (=> bm!328741 (= call!328747 (forall!11409 (toList!5693 lt!1865217) (ite c!803760 lambda!210593 lambda!210595)))))

(declare-fun b!4702384 () Bool)

(declare-fun e!2933322 () Bool)

(assert (=> b!4702384 (= e!2933322 (invariantList!1448 (toList!5693 lt!1865773)))))

(declare-fun e!2933321 () ListMap!5057)

(assert (=> b!4702385 (= e!2933321 lt!1865217)))

(declare-fun lt!1865760 () Unit!126368)

(declare-fun call!328746 () Unit!126368)

(assert (=> b!4702385 (= lt!1865760 call!328746)))

(assert (=> b!4702385 call!328745))

(declare-fun lt!1865766 () Unit!126368)

(assert (=> b!4702385 (= lt!1865766 lt!1865760)))

(assert (=> b!4702385 call!328747))

(declare-fun lt!1865767 () Unit!126368)

(declare-fun Unit!126433 () Unit!126368)

(assert (=> b!4702385 (= lt!1865767 Unit!126433)))

(assert (=> d!1495867 e!2933322))

(declare-fun res!1985603 () Bool)

(assert (=> d!1495867 (=> (not res!1985603) (not e!2933322))))

(assert (=> d!1495867 (= res!1985603 (forall!11409 lt!1865216 lambda!210596))))

(assert (=> d!1495867 (= lt!1865773 e!2933321)))

(assert (=> d!1495867 (= c!803760 ((_ is Nil!52543) lt!1865216))))

(assert (=> d!1495867 (noDuplicateKeys!1902 lt!1865216)))

(assert (=> d!1495867 (= (addToMapMapFromBucket!1334 lt!1865216 lt!1865217) lt!1865773)))

(declare-fun bm!328742 () Bool)

(assert (=> bm!328742 (= call!328746 (lemmaContainsAllItsOwnKeys!736 lt!1865217))))

(assert (=> b!4702386 (= e!2933321 lt!1865761)))

(declare-fun lt!1865769 () ListMap!5057)

(assert (=> b!4702386 (= lt!1865769 (+!2186 lt!1865217 (h!58826 lt!1865216)))))

(assert (=> b!4702386 (= lt!1865761 (addToMapMapFromBucket!1334 (t!359881 lt!1865216) (+!2186 lt!1865217 (h!58826 lt!1865216))))))

(declare-fun lt!1865771 () Unit!126368)

(assert (=> b!4702386 (= lt!1865771 call!328746)))

(assert (=> b!4702386 (forall!11409 (toList!5693 lt!1865217) lambda!210594)))

(declare-fun lt!1865763 () Unit!126368)

(assert (=> b!4702386 (= lt!1865763 lt!1865771)))

(assert (=> b!4702386 (forall!11409 (toList!5693 lt!1865769) lambda!210595)))

(declare-fun lt!1865772 () Unit!126368)

(declare-fun Unit!126434 () Unit!126368)

(assert (=> b!4702386 (= lt!1865772 Unit!126434)))

(assert (=> b!4702386 (forall!11409 (t!359881 lt!1865216) lambda!210595)))

(declare-fun lt!1865768 () Unit!126368)

(declare-fun Unit!126435 () Unit!126368)

(assert (=> b!4702386 (= lt!1865768 Unit!126435)))

(declare-fun lt!1865778 () Unit!126368)

(declare-fun Unit!126436 () Unit!126368)

(assert (=> b!4702386 (= lt!1865778 Unit!126436)))

(declare-fun lt!1865770 () Unit!126368)

(assert (=> b!4702386 (= lt!1865770 (forallContained!3516 (toList!5693 lt!1865769) lambda!210595 (h!58826 lt!1865216)))))

(assert (=> b!4702386 (contains!15830 lt!1865769 (_1!30295 (h!58826 lt!1865216)))))

(declare-fun lt!1865762 () Unit!126368)

(declare-fun Unit!126437 () Unit!126368)

(assert (=> b!4702386 (= lt!1865762 Unit!126437)))

(assert (=> b!4702386 (contains!15830 lt!1865761 (_1!30295 (h!58826 lt!1865216)))))

(declare-fun lt!1865765 () Unit!126368)

(declare-fun Unit!126438 () Unit!126368)

(assert (=> b!4702386 (= lt!1865765 Unit!126438)))

(assert (=> b!4702386 (forall!11409 lt!1865216 lambda!210595)))

(declare-fun lt!1865775 () Unit!126368)

(declare-fun Unit!126439 () Unit!126368)

(assert (=> b!4702386 (= lt!1865775 Unit!126439)))

(assert (=> b!4702386 (forall!11409 (toList!5693 lt!1865769) lambda!210595)))

(declare-fun lt!1865777 () Unit!126368)

(declare-fun Unit!126440 () Unit!126368)

(assert (=> b!4702386 (= lt!1865777 Unit!126440)))

(declare-fun lt!1865779 () Unit!126368)

(declare-fun Unit!126441 () Unit!126368)

(assert (=> b!4702386 (= lt!1865779 Unit!126441)))

(declare-fun lt!1865776 () Unit!126368)

(assert (=> b!4702386 (= lt!1865776 (addForallContainsKeyThenBeforeAdding!735 lt!1865217 lt!1865761 (_1!30295 (h!58826 lt!1865216)) (_2!30295 (h!58826 lt!1865216))))))

(assert (=> b!4702386 call!328745))

(declare-fun lt!1865774 () Unit!126368)

(assert (=> b!4702386 (= lt!1865774 lt!1865776)))

(assert (=> b!4702386 (forall!11409 (toList!5693 lt!1865217) lambda!210595)))

(declare-fun lt!1865759 () Unit!126368)

(declare-fun Unit!126442 () Unit!126368)

(assert (=> b!4702386 (= lt!1865759 Unit!126442)))

(declare-fun res!1985601 () Bool)

(assert (=> b!4702386 (= res!1985601 (forall!11409 lt!1865216 lambda!210595))))

(declare-fun e!2933320 () Bool)

(assert (=> b!4702386 (=> (not res!1985601) (not e!2933320))))

(assert (=> b!4702386 e!2933320))

(declare-fun lt!1865764 () Unit!126368)

(declare-fun Unit!126443 () Unit!126368)

(assert (=> b!4702386 (= lt!1865764 Unit!126443)))

(declare-fun b!4702387 () Bool)

(assert (=> b!4702387 (= e!2933320 call!328747)))

(declare-fun b!4702388 () Bool)

(declare-fun res!1985602 () Bool)

(assert (=> b!4702388 (=> (not res!1985602) (not e!2933322))))

(assert (=> b!4702388 (= res!1985602 (forall!11409 (toList!5693 lt!1865217) lambda!210596))))

(assert (= (and d!1495867 c!803760) b!4702385))

(assert (= (and d!1495867 (not c!803760)) b!4702386))

(assert (= (and b!4702386 res!1985601) b!4702387))

(assert (= (or b!4702385 b!4702386) bm!328742))

(assert (= (or b!4702385 b!4702386) bm!328740))

(assert (= (or b!4702385 b!4702387) bm!328741))

(assert (= (and d!1495867 res!1985603) b!4702388))

(assert (= (and b!4702388 res!1985602) b!4702384))

(declare-fun m!5619345 () Bool)

(assert (=> b!4702384 m!5619345))

(declare-fun m!5619347 () Bool)

(assert (=> bm!328741 m!5619347))

(declare-fun m!5619349 () Bool)

(assert (=> b!4702388 m!5619349))

(declare-fun m!5619351 () Bool)

(assert (=> b!4702386 m!5619351))

(declare-fun m!5619353 () Bool)

(assert (=> b!4702386 m!5619353))

(declare-fun m!5619355 () Bool)

(assert (=> b!4702386 m!5619355))

(declare-fun m!5619357 () Bool)

(assert (=> b!4702386 m!5619357))

(declare-fun m!5619359 () Bool)

(assert (=> b!4702386 m!5619359))

(declare-fun m!5619361 () Bool)

(assert (=> b!4702386 m!5619361))

(declare-fun m!5619363 () Bool)

(assert (=> b!4702386 m!5619363))

(assert (=> b!4702386 m!5619351))

(declare-fun m!5619365 () Bool)

(assert (=> b!4702386 m!5619365))

(declare-fun m!5619367 () Bool)

(assert (=> b!4702386 m!5619367))

(declare-fun m!5619369 () Bool)

(assert (=> b!4702386 m!5619369))

(assert (=> b!4702386 m!5619367))

(assert (=> b!4702386 m!5619353))

(declare-fun m!5619371 () Bool)

(assert (=> b!4702386 m!5619371))

(assert (=> bm!328740 m!5619347))

(declare-fun m!5619373 () Bool)

(assert (=> d!1495867 m!5619373))

(assert (=> d!1495867 m!5619135))

(assert (=> bm!328742 m!5618807))

(assert (=> b!4701953 d!1495867))

(declare-fun d!1495869 () Bool)

(assert (=> d!1495869 (= (head!10067 oldBucket!34) (h!58826 oldBucket!34))))

(assert (=> b!4701953 d!1495869))

(declare-fun bs!1096181 () Bool)

(declare-fun b!4702390 () Bool)

(assert (= bs!1096181 (and b!4702390 b!4702386)))

(declare-fun lambda!210597 () Int)

(assert (=> bs!1096181 (= (= lt!1865217 lt!1865761) (= lambda!210597 lambda!210595))))

(declare-fun bs!1096182 () Bool)

(assert (= bs!1096182 (and b!4702390 b!4702385)))

(assert (=> bs!1096182 (= lambda!210597 lambda!210593)))

(declare-fun bs!1096183 () Bool)

(assert (= bs!1096183 (and b!4702390 b!4702125)))

(assert (=> bs!1096183 (= lambda!210597 lambda!210556)))

(declare-fun bs!1096184 () Bool)

(assert (= bs!1096184 (and b!4702390 d!1495691)))

(assert (=> bs!1096184 (= (= lt!1865217 lt!1865523) (= lambda!210597 lambda!210559))))

(declare-fun bs!1096185 () Bool)

(assert (= bs!1096185 (and b!4702390 d!1495867)))

(assert (=> bs!1096185 (= (= lt!1865217 lt!1865773) (= lambda!210597 lambda!210596))))

(assert (=> bs!1096181 (= lambda!210597 lambda!210594)))

(declare-fun bs!1096186 () Bool)

(assert (= bs!1096186 (and b!4702390 b!4702126)))

(assert (=> bs!1096186 (= lambda!210597 lambda!210557)))

(assert (=> bs!1096186 (= (= lt!1865217 lt!1865511) (= lambda!210597 lambda!210558))))

(declare-fun bs!1096187 () Bool)

(assert (= bs!1096187 (and b!4702390 d!1495627)))

(assert (=> bs!1096187 (not (= lambda!210597 lambda!210464))))

(assert (=> b!4702390 true))

(declare-fun bs!1096188 () Bool)

(declare-fun b!4702391 () Bool)

(assert (= bs!1096188 (and b!4702391 b!4702386)))

(declare-fun lambda!210598 () Int)

(assert (=> bs!1096188 (= (= lt!1865217 lt!1865761) (= lambda!210598 lambda!210595))))

(declare-fun bs!1096189 () Bool)

(assert (= bs!1096189 (and b!4702391 b!4702385)))

(assert (=> bs!1096189 (= lambda!210598 lambda!210593)))

(declare-fun bs!1096190 () Bool)

(assert (= bs!1096190 (and b!4702391 b!4702125)))

(assert (=> bs!1096190 (= lambda!210598 lambda!210556)))

(declare-fun bs!1096191 () Bool)

(assert (= bs!1096191 (and b!4702391 d!1495691)))

(assert (=> bs!1096191 (= (= lt!1865217 lt!1865523) (= lambda!210598 lambda!210559))))

(declare-fun bs!1096192 () Bool)

(assert (= bs!1096192 (and b!4702391 d!1495867)))

(assert (=> bs!1096192 (= (= lt!1865217 lt!1865773) (= lambda!210598 lambda!210596))))

(declare-fun bs!1096193 () Bool)

(assert (= bs!1096193 (and b!4702391 b!4702126)))

(assert (=> bs!1096193 (= lambda!210598 lambda!210557)))

(assert (=> bs!1096193 (= (= lt!1865217 lt!1865511) (= lambda!210598 lambda!210558))))

(declare-fun bs!1096194 () Bool)

(assert (= bs!1096194 (and b!4702391 d!1495627)))

(assert (=> bs!1096194 (not (= lambda!210598 lambda!210464))))

(assert (=> bs!1096188 (= lambda!210598 lambda!210594)))

(declare-fun bs!1096195 () Bool)

(assert (= bs!1096195 (and b!4702391 b!4702390)))

(assert (=> bs!1096195 (= lambda!210598 lambda!210597)))

(assert (=> b!4702391 true))

(declare-fun lambda!210599 () Int)

(declare-fun lt!1865782 () ListMap!5057)

(assert (=> bs!1096188 (= (= lt!1865782 lt!1865761) (= lambda!210599 lambda!210595))))

(assert (=> bs!1096189 (= (= lt!1865782 lt!1865217) (= lambda!210599 lambda!210593))))

(assert (=> bs!1096190 (= (= lt!1865782 lt!1865217) (= lambda!210599 lambda!210556))))

(assert (=> bs!1096191 (= (= lt!1865782 lt!1865523) (= lambda!210599 lambda!210559))))

(assert (=> bs!1096192 (= (= lt!1865782 lt!1865773) (= lambda!210599 lambda!210596))))

(assert (=> bs!1096193 (= (= lt!1865782 lt!1865217) (= lambda!210599 lambda!210557))))

(assert (=> bs!1096193 (= (= lt!1865782 lt!1865511) (= lambda!210599 lambda!210558))))

(assert (=> bs!1096194 (not (= lambda!210599 lambda!210464))))

(assert (=> b!4702391 (= (= lt!1865782 lt!1865217) (= lambda!210599 lambda!210598))))

(assert (=> bs!1096188 (= (= lt!1865782 lt!1865217) (= lambda!210599 lambda!210594))))

(assert (=> bs!1096195 (= (= lt!1865782 lt!1865217) (= lambda!210599 lambda!210597))))

(assert (=> b!4702391 true))

(declare-fun bs!1096196 () Bool)

(declare-fun d!1495871 () Bool)

(assert (= bs!1096196 (and d!1495871 b!4702386)))

(declare-fun lambda!210600 () Int)

(declare-fun lt!1865794 () ListMap!5057)

(assert (=> bs!1096196 (= (= lt!1865794 lt!1865761) (= lambda!210600 lambda!210595))))

(declare-fun bs!1096197 () Bool)

(assert (= bs!1096197 (and d!1495871 b!4702385)))

(assert (=> bs!1096197 (= (= lt!1865794 lt!1865217) (= lambda!210600 lambda!210593))))

(declare-fun bs!1096198 () Bool)

(assert (= bs!1096198 (and d!1495871 b!4702125)))

(assert (=> bs!1096198 (= (= lt!1865794 lt!1865217) (= lambda!210600 lambda!210556))))

(declare-fun bs!1096199 () Bool)

(assert (= bs!1096199 (and d!1495871 d!1495691)))

(assert (=> bs!1096199 (= (= lt!1865794 lt!1865523) (= lambda!210600 lambda!210559))))

(declare-fun bs!1096200 () Bool)

(assert (= bs!1096200 (and d!1495871 d!1495867)))

(assert (=> bs!1096200 (= (= lt!1865794 lt!1865773) (= lambda!210600 lambda!210596))))

(declare-fun bs!1096201 () Bool)

(assert (= bs!1096201 (and d!1495871 b!4702126)))

(assert (=> bs!1096201 (= (= lt!1865794 lt!1865217) (= lambda!210600 lambda!210557))))

(assert (=> bs!1096201 (= (= lt!1865794 lt!1865511) (= lambda!210600 lambda!210558))))

(declare-fun bs!1096202 () Bool)

(assert (= bs!1096202 (and d!1495871 d!1495627)))

(assert (=> bs!1096202 (not (= lambda!210600 lambda!210464))))

(declare-fun bs!1096203 () Bool)

(assert (= bs!1096203 (and d!1495871 b!4702391)))

(assert (=> bs!1096203 (= (= lt!1865794 lt!1865217) (= lambda!210600 lambda!210598))))

(assert (=> bs!1096196 (= (= lt!1865794 lt!1865217) (= lambda!210600 lambda!210594))))

(declare-fun bs!1096204 () Bool)

(assert (= bs!1096204 (and d!1495871 b!4702390)))

(assert (=> bs!1096204 (= (= lt!1865794 lt!1865217) (= lambda!210600 lambda!210597))))

(assert (=> bs!1096203 (= (= lt!1865794 lt!1865782) (= lambda!210600 lambda!210599))))

(assert (=> d!1495871 true))

(declare-fun c!803761 () Bool)

(declare-fun bm!328743 () Bool)

(declare-fun call!328748 () Bool)

(assert (=> bm!328743 (= call!328748 (forall!11409 (toList!5693 lt!1865217) (ite c!803761 lambda!210597 lambda!210599)))))

(declare-fun bm!328744 () Bool)

(declare-fun call!328750 () Bool)

(assert (=> bm!328744 (= call!328750 (forall!11409 (toList!5693 lt!1865217) (ite c!803761 lambda!210597 lambda!210599)))))

(declare-fun b!4702389 () Bool)

(declare-fun e!2933325 () Bool)

(assert (=> b!4702389 (= e!2933325 (invariantList!1448 (toList!5693 lt!1865794)))))

(declare-fun e!2933324 () ListMap!5057)

(assert (=> b!4702390 (= e!2933324 lt!1865217)))

(declare-fun lt!1865781 () Unit!126368)

(declare-fun call!328749 () Unit!126368)

(assert (=> b!4702390 (= lt!1865781 call!328749)))

(assert (=> b!4702390 call!328748))

(declare-fun lt!1865787 () Unit!126368)

(assert (=> b!4702390 (= lt!1865787 lt!1865781)))

(assert (=> b!4702390 call!328750))

(declare-fun lt!1865788 () Unit!126368)

(declare-fun Unit!126444 () Unit!126368)

(assert (=> b!4702390 (= lt!1865788 Unit!126444)))

(assert (=> d!1495871 e!2933325))

(declare-fun res!1985606 () Bool)

(assert (=> d!1495871 (=> (not res!1985606) (not e!2933325))))

(assert (=> d!1495871 (= res!1985606 (forall!11409 (Cons!52543 lt!1865250 lt!1865216) lambda!210600))))

(assert (=> d!1495871 (= lt!1865794 e!2933324)))

(assert (=> d!1495871 (= c!803761 ((_ is Nil!52543) (Cons!52543 lt!1865250 lt!1865216)))))

(assert (=> d!1495871 (noDuplicateKeys!1902 (Cons!52543 lt!1865250 lt!1865216))))

(assert (=> d!1495871 (= (addToMapMapFromBucket!1334 (Cons!52543 lt!1865250 lt!1865216) lt!1865217) lt!1865794)))

(declare-fun bm!328745 () Bool)

(assert (=> bm!328745 (= call!328749 (lemmaContainsAllItsOwnKeys!736 lt!1865217))))

(assert (=> b!4702391 (= e!2933324 lt!1865782)))

(declare-fun lt!1865790 () ListMap!5057)

(assert (=> b!4702391 (= lt!1865790 (+!2186 lt!1865217 (h!58826 (Cons!52543 lt!1865250 lt!1865216))))))

(assert (=> b!4702391 (= lt!1865782 (addToMapMapFromBucket!1334 (t!359881 (Cons!52543 lt!1865250 lt!1865216)) (+!2186 lt!1865217 (h!58826 (Cons!52543 lt!1865250 lt!1865216)))))))

(declare-fun lt!1865792 () Unit!126368)

(assert (=> b!4702391 (= lt!1865792 call!328749)))

(assert (=> b!4702391 (forall!11409 (toList!5693 lt!1865217) lambda!210598)))

(declare-fun lt!1865784 () Unit!126368)

(assert (=> b!4702391 (= lt!1865784 lt!1865792)))

(assert (=> b!4702391 (forall!11409 (toList!5693 lt!1865790) lambda!210599)))

(declare-fun lt!1865793 () Unit!126368)

(declare-fun Unit!126445 () Unit!126368)

(assert (=> b!4702391 (= lt!1865793 Unit!126445)))

(assert (=> b!4702391 (forall!11409 (t!359881 (Cons!52543 lt!1865250 lt!1865216)) lambda!210599)))

(declare-fun lt!1865789 () Unit!126368)

(declare-fun Unit!126446 () Unit!126368)

(assert (=> b!4702391 (= lt!1865789 Unit!126446)))

(declare-fun lt!1865799 () Unit!126368)

(declare-fun Unit!126447 () Unit!126368)

(assert (=> b!4702391 (= lt!1865799 Unit!126447)))

(declare-fun lt!1865791 () Unit!126368)

(assert (=> b!4702391 (= lt!1865791 (forallContained!3516 (toList!5693 lt!1865790) lambda!210599 (h!58826 (Cons!52543 lt!1865250 lt!1865216))))))

(assert (=> b!4702391 (contains!15830 lt!1865790 (_1!30295 (h!58826 (Cons!52543 lt!1865250 lt!1865216))))))

(declare-fun lt!1865783 () Unit!126368)

(declare-fun Unit!126448 () Unit!126368)

(assert (=> b!4702391 (= lt!1865783 Unit!126448)))

(assert (=> b!4702391 (contains!15830 lt!1865782 (_1!30295 (h!58826 (Cons!52543 lt!1865250 lt!1865216))))))

(declare-fun lt!1865786 () Unit!126368)

(declare-fun Unit!126449 () Unit!126368)

(assert (=> b!4702391 (= lt!1865786 Unit!126449)))

(assert (=> b!4702391 (forall!11409 (Cons!52543 lt!1865250 lt!1865216) lambda!210599)))

(declare-fun lt!1865796 () Unit!126368)

(declare-fun Unit!126450 () Unit!126368)

(assert (=> b!4702391 (= lt!1865796 Unit!126450)))

(assert (=> b!4702391 (forall!11409 (toList!5693 lt!1865790) lambda!210599)))

(declare-fun lt!1865798 () Unit!126368)

(declare-fun Unit!126451 () Unit!126368)

(assert (=> b!4702391 (= lt!1865798 Unit!126451)))

(declare-fun lt!1865800 () Unit!126368)

(declare-fun Unit!126452 () Unit!126368)

(assert (=> b!4702391 (= lt!1865800 Unit!126452)))

(declare-fun lt!1865797 () Unit!126368)

(assert (=> b!4702391 (= lt!1865797 (addForallContainsKeyThenBeforeAdding!735 lt!1865217 lt!1865782 (_1!30295 (h!58826 (Cons!52543 lt!1865250 lt!1865216))) (_2!30295 (h!58826 (Cons!52543 lt!1865250 lt!1865216)))))))

(assert (=> b!4702391 call!328748))

(declare-fun lt!1865795 () Unit!126368)

(assert (=> b!4702391 (= lt!1865795 lt!1865797)))

(assert (=> b!4702391 (forall!11409 (toList!5693 lt!1865217) lambda!210599)))

(declare-fun lt!1865780 () Unit!126368)

(declare-fun Unit!126453 () Unit!126368)

(assert (=> b!4702391 (= lt!1865780 Unit!126453)))

(declare-fun res!1985604 () Bool)

(assert (=> b!4702391 (= res!1985604 (forall!11409 (Cons!52543 lt!1865250 lt!1865216) lambda!210599))))

(declare-fun e!2933323 () Bool)

(assert (=> b!4702391 (=> (not res!1985604) (not e!2933323))))

(assert (=> b!4702391 e!2933323))

(declare-fun lt!1865785 () Unit!126368)

(declare-fun Unit!126454 () Unit!126368)

(assert (=> b!4702391 (= lt!1865785 Unit!126454)))

(declare-fun b!4702392 () Bool)

(assert (=> b!4702392 (= e!2933323 call!328750)))

(declare-fun b!4702393 () Bool)

(declare-fun res!1985605 () Bool)

(assert (=> b!4702393 (=> (not res!1985605) (not e!2933325))))

(assert (=> b!4702393 (= res!1985605 (forall!11409 (toList!5693 lt!1865217) lambda!210600))))

(assert (= (and d!1495871 c!803761) b!4702390))

(assert (= (and d!1495871 (not c!803761)) b!4702391))

(assert (= (and b!4702391 res!1985604) b!4702392))

(assert (= (or b!4702390 b!4702391) bm!328745))

(assert (= (or b!4702390 b!4702391) bm!328743))

(assert (= (or b!4702390 b!4702392) bm!328744))

(assert (= (and d!1495871 res!1985606) b!4702393))

(assert (= (and b!4702393 res!1985605) b!4702389))

(declare-fun m!5619375 () Bool)

(assert (=> b!4702389 m!5619375))

(declare-fun m!5619377 () Bool)

(assert (=> bm!328744 m!5619377))

(declare-fun m!5619379 () Bool)

(assert (=> b!4702393 m!5619379))

(declare-fun m!5619381 () Bool)

(assert (=> b!4702391 m!5619381))

(declare-fun m!5619383 () Bool)

(assert (=> b!4702391 m!5619383))

(declare-fun m!5619385 () Bool)

(assert (=> b!4702391 m!5619385))

(declare-fun m!5619387 () Bool)

(assert (=> b!4702391 m!5619387))

(declare-fun m!5619389 () Bool)

(assert (=> b!4702391 m!5619389))

(declare-fun m!5619391 () Bool)

(assert (=> b!4702391 m!5619391))

(declare-fun m!5619393 () Bool)

(assert (=> b!4702391 m!5619393))

(assert (=> b!4702391 m!5619381))

(declare-fun m!5619395 () Bool)

(assert (=> b!4702391 m!5619395))

(declare-fun m!5619397 () Bool)

(assert (=> b!4702391 m!5619397))

(declare-fun m!5619399 () Bool)

(assert (=> b!4702391 m!5619399))

(assert (=> b!4702391 m!5619397))

(assert (=> b!4702391 m!5619383))

(declare-fun m!5619401 () Bool)

(assert (=> b!4702391 m!5619401))

(assert (=> bm!328743 m!5619377))

(declare-fun m!5619403 () Bool)

(assert (=> d!1495871 m!5619403))

(declare-fun m!5619405 () Bool)

(assert (=> d!1495871 m!5619405))

(assert (=> bm!328745 m!5618807))

(assert (=> b!4701953 d!1495871))

(declare-fun bs!1096205 () Bool)

(declare-fun d!1495873 () Bool)

(assert (= bs!1096205 (and d!1495873 start!476980)))

(declare-fun lambda!210603 () Int)

(assert (=> bs!1096205 (= lambda!210603 lambda!210453)))

(declare-fun bs!1096206 () Bool)

(assert (= bs!1096206 (and d!1495873 d!1495861)))

(assert (=> bs!1096206 (= lambda!210603 lambda!210592)))

(declare-fun bs!1096207 () Bool)

(assert (= bs!1096207 (and d!1495873 d!1495707)))

(assert (=> bs!1096207 (= lambda!210603 lambda!210560)))

(declare-fun bs!1096208 () Bool)

(assert (= bs!1096208 (and d!1495873 d!1495663)))

(assert (=> bs!1096208 (= lambda!210603 lambda!210483)))

(declare-fun bs!1096209 () Bool)

(assert (= bs!1096209 (and d!1495873 d!1495639)))

(assert (=> bs!1096209 (= lambda!210603 lambda!210470)))

(declare-fun bs!1096210 () Bool)

(assert (= bs!1096210 (and d!1495873 d!1495829)))

(assert (=> bs!1096210 (= lambda!210603 lambda!210584)))

(declare-fun bs!1096211 () Bool)

(assert (= bs!1096211 (and d!1495873 d!1495711)))

(assert (=> bs!1096211 (not (= lambda!210603 lambda!210563))))

(declare-fun bs!1096212 () Bool)

(assert (= bs!1096212 (and d!1495873 d!1495653)))

(assert (=> bs!1096212 (= lambda!210603 lambda!210471)))

(declare-fun bs!1096213 () Bool)

(assert (= bs!1096213 (and d!1495873 d!1495657)))

(assert (=> bs!1096213 (= lambda!210603 lambda!210478)))

(declare-fun bs!1096214 () Bool)

(assert (= bs!1096214 (and d!1495873 d!1495845)))

(assert (=> bs!1096214 (= lambda!210603 lambda!210591)))

(assert (=> d!1495873 (contains!15830 (extractMap!1928 (toList!5694 lt!1865248)) key!4653)))

(declare-fun lt!1865803 () Unit!126368)

(declare-fun choose!32930 (ListLongMap!4223 K!13905 Hashable!6271) Unit!126368)

(assert (=> d!1495873 (= lt!1865803 (choose!32930 lt!1865248 key!4653 hashF!1323))))

(assert (=> d!1495873 (forall!11407 (toList!5694 lt!1865248) lambda!210603)))

(assert (=> d!1495873 (= (lemmaListContainsThenExtractedMapContains!494 lt!1865248 key!4653 hashF!1323) lt!1865803)))

(declare-fun bs!1096215 () Bool)

(assert (= bs!1096215 d!1495873))

(declare-fun m!5619407 () Bool)

(assert (=> bs!1096215 m!5619407))

(assert (=> bs!1096215 m!5619407))

(declare-fun m!5619409 () Bool)

(assert (=> bs!1096215 m!5619409))

(declare-fun m!5619411 () Bool)

(assert (=> bs!1096215 m!5619411))

(declare-fun m!5619413 () Bool)

(assert (=> bs!1096215 m!5619413))

(assert (=> b!4701953 d!1495873))

(declare-fun d!1495875 () Bool)

(assert (=> d!1495875 (= (eq!1061 (addToMapMapFromBucket!1334 (Cons!52543 lt!1865250 lt!1865216) lt!1865217) (+!2186 (addToMapMapFromBucket!1334 lt!1865216 lt!1865217) lt!1865250)) (= (content!9274 (toList!5693 (addToMapMapFromBucket!1334 (Cons!52543 lt!1865250 lt!1865216) lt!1865217))) (content!9274 (toList!5693 (+!2186 (addToMapMapFromBucket!1334 lt!1865216 lt!1865217) lt!1865250)))))))

(declare-fun bs!1096216 () Bool)

(assert (= bs!1096216 d!1495875))

(declare-fun m!5619415 () Bool)

(assert (=> bs!1096216 m!5619415))

(declare-fun m!5619417 () Bool)

(assert (=> bs!1096216 m!5619417))

(assert (=> b!4701953 d!1495875))

(declare-fun d!1495877 () Bool)

(assert (=> d!1495877 (= (eq!1061 (addToMapMapFromBucket!1334 (Cons!52543 lt!1865246 lt!1865234) lt!1865217) (+!2186 (addToMapMapFromBucket!1334 lt!1865234 lt!1865217) lt!1865246)) (= (content!9274 (toList!5693 (addToMapMapFromBucket!1334 (Cons!52543 lt!1865246 lt!1865234) lt!1865217))) (content!9274 (toList!5693 (+!2186 (addToMapMapFromBucket!1334 lt!1865234 lt!1865217) lt!1865246)))))))

(declare-fun bs!1096217 () Bool)

(assert (= bs!1096217 d!1495877))

(declare-fun m!5619419 () Bool)

(assert (=> bs!1096217 m!5619419))

(declare-fun m!5619421 () Bool)

(assert (=> bs!1096217 m!5619421))

(assert (=> b!4701953 d!1495877))

(declare-fun d!1495879 () Bool)

(declare-fun e!2933326 () Bool)

(assert (=> d!1495879 e!2933326))

(declare-fun res!1985608 () Bool)

(assert (=> d!1495879 (=> (not res!1985608) (not e!2933326))))

(declare-fun lt!1865805 () ListMap!5057)

(assert (=> d!1495879 (= res!1985608 (contains!15830 lt!1865805 (_1!30295 (h!58826 oldBucket!34))))))

(declare-fun lt!1865804 () List!52667)

(assert (=> d!1495879 (= lt!1865805 (ListMap!5058 lt!1865804))))

(declare-fun lt!1865806 () Unit!126368)

(declare-fun lt!1865807 () Unit!126368)

(assert (=> d!1495879 (= lt!1865806 lt!1865807)))

(assert (=> d!1495879 (= (getValueByKey!1856 lt!1865804 (_1!30295 (h!58826 oldBucket!34))) (Some!12203 (_2!30295 (h!58826 oldBucket!34))))))

(assert (=> d!1495879 (= lt!1865807 (lemmaContainsTupThenGetReturnValue!1038 lt!1865804 (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34))))))

(assert (=> d!1495879 (= lt!1865804 (insertNoDuplicatedKeys!546 (toList!5693 lt!1865235) (_1!30295 (h!58826 oldBucket!34)) (_2!30295 (h!58826 oldBucket!34))))))

(assert (=> d!1495879 (= (+!2186 lt!1865235 (h!58826 oldBucket!34)) lt!1865805)))

(declare-fun b!4702394 () Bool)

(declare-fun res!1985607 () Bool)

(assert (=> b!4702394 (=> (not res!1985607) (not e!2933326))))

(assert (=> b!4702394 (= res!1985607 (= (getValueByKey!1856 (toList!5693 lt!1865805) (_1!30295 (h!58826 oldBucket!34))) (Some!12203 (_2!30295 (h!58826 oldBucket!34)))))))

(declare-fun b!4702395 () Bool)

(assert (=> b!4702395 (= e!2933326 (contains!15832 (toList!5693 lt!1865805) (h!58826 oldBucket!34)))))

(assert (= (and d!1495879 res!1985608) b!4702394))

(assert (= (and b!4702394 res!1985607) b!4702395))

(declare-fun m!5619423 () Bool)

(assert (=> d!1495879 m!5619423))

(declare-fun m!5619425 () Bool)

(assert (=> d!1495879 m!5619425))

(declare-fun m!5619427 () Bool)

(assert (=> d!1495879 m!5619427))

(declare-fun m!5619429 () Bool)

(assert (=> d!1495879 m!5619429))

(declare-fun m!5619431 () Bool)

(assert (=> b!4702394 m!5619431))

(declare-fun m!5619433 () Bool)

(assert (=> b!4702395 m!5619433))

(assert (=> b!4701953 d!1495879))

(declare-fun d!1495881 () Bool)

(assert (=> d!1495881 (= (head!10067 newBucket!218) (h!58826 newBucket!218))))

(assert (=> b!4701953 d!1495881))

(declare-fun bs!1096218 () Bool)

(declare-fun d!1495883 () Bool)

(assert (= bs!1096218 (and d!1495883 d!1495861)))

(declare-fun lambda!210604 () Int)

(assert (=> bs!1096218 (= lambda!210604 lambda!210592)))

(declare-fun bs!1096219 () Bool)

(assert (= bs!1096219 (and d!1495883 d!1495707)))

(assert (=> bs!1096219 (= lambda!210604 lambda!210560)))

(declare-fun bs!1096220 () Bool)

(assert (= bs!1096220 (and d!1495883 d!1495663)))

(assert (=> bs!1096220 (= lambda!210604 lambda!210483)))

(declare-fun bs!1096221 () Bool)

(assert (= bs!1096221 (and d!1495883 d!1495639)))

(assert (=> bs!1096221 (= lambda!210604 lambda!210470)))

(declare-fun bs!1096222 () Bool)

(assert (= bs!1096222 (and d!1495883 d!1495829)))

(assert (=> bs!1096222 (= lambda!210604 lambda!210584)))

(declare-fun bs!1096223 () Bool)

(assert (= bs!1096223 (and d!1495883 d!1495711)))

(assert (=> bs!1096223 (not (= lambda!210604 lambda!210563))))

(declare-fun bs!1096224 () Bool)

(assert (= bs!1096224 (and d!1495883 d!1495653)))

(assert (=> bs!1096224 (= lambda!210604 lambda!210471)))

(declare-fun bs!1096225 () Bool)

(assert (= bs!1096225 (and d!1495883 d!1495873)))

(assert (=> bs!1096225 (= lambda!210604 lambda!210603)))

(declare-fun bs!1096226 () Bool)

(assert (= bs!1096226 (and d!1495883 start!476980)))

(assert (=> bs!1096226 (= lambda!210604 lambda!210453)))

(declare-fun bs!1096227 () Bool)

(assert (= bs!1096227 (and d!1495883 d!1495657)))

(assert (=> bs!1096227 (= lambda!210604 lambda!210478)))

(declare-fun bs!1096228 () Bool)

(assert (= bs!1096228 (and d!1495883 d!1495845)))

(assert (=> bs!1096228 (= lambda!210604 lambda!210591)))

(declare-fun lt!1865808 () ListMap!5057)

(assert (=> d!1495883 (invariantList!1448 (toList!5693 lt!1865808))))

(declare-fun e!2933327 () ListMap!5057)

(assert (=> d!1495883 (= lt!1865808 e!2933327)))

(declare-fun c!803762 () Bool)

(assert (=> d!1495883 (= c!803762 ((_ is Cons!52544) (Cons!52544 lt!1865245 (t!359882 (toList!5694 lm!2023)))))))

(assert (=> d!1495883 (forall!11407 (Cons!52544 lt!1865245 (t!359882 (toList!5694 lm!2023))) lambda!210604)))

(assert (=> d!1495883 (= (extractMap!1928 (Cons!52544 lt!1865245 (t!359882 (toList!5694 lm!2023)))) lt!1865808)))

(declare-fun b!4702396 () Bool)

(assert (=> b!4702396 (= e!2933327 (addToMapMapFromBucket!1334 (_2!30296 (h!58827 (Cons!52544 lt!1865245 (t!359882 (toList!5694 lm!2023))))) (extractMap!1928 (t!359882 (Cons!52544 lt!1865245 (t!359882 (toList!5694 lm!2023)))))))))

(declare-fun b!4702397 () Bool)

(assert (=> b!4702397 (= e!2933327 (ListMap!5058 Nil!52543))))

(assert (= (and d!1495883 c!803762) b!4702396))

(assert (= (and d!1495883 (not c!803762)) b!4702397))

(declare-fun m!5619435 () Bool)

(assert (=> d!1495883 m!5619435))

(declare-fun m!5619437 () Bool)

(assert (=> d!1495883 m!5619437))

(declare-fun m!5619439 () Bool)

(assert (=> b!4702396 m!5619439))

(assert (=> b!4702396 m!5619439))

(declare-fun m!5619441 () Bool)

(assert (=> b!4702396 m!5619441))

(assert (=> b!4701953 d!1495883))

(declare-fun d!1495885 () Bool)

(declare-fun e!2933328 () Bool)

(assert (=> d!1495885 e!2933328))

(declare-fun res!1985610 () Bool)

(assert (=> d!1495885 (=> (not res!1985610) (not e!2933328))))

(declare-fun lt!1865810 () ListMap!5057)

(assert (=> d!1495885 (= res!1985610 (contains!15830 lt!1865810 (_1!30295 lt!1865250)))))

(declare-fun lt!1865809 () List!52667)

(assert (=> d!1495885 (= lt!1865810 (ListMap!5058 lt!1865809))))

(declare-fun lt!1865811 () Unit!126368)

(declare-fun lt!1865812 () Unit!126368)

(assert (=> d!1495885 (= lt!1865811 lt!1865812)))

(assert (=> d!1495885 (= (getValueByKey!1856 lt!1865809 (_1!30295 lt!1865250)) (Some!12203 (_2!30295 lt!1865250)))))

(assert (=> d!1495885 (= lt!1865812 (lemmaContainsTupThenGetReturnValue!1038 lt!1865809 (_1!30295 lt!1865250) (_2!30295 lt!1865250)))))

(assert (=> d!1495885 (= lt!1865809 (insertNoDuplicatedKeys!546 (toList!5693 (addToMapMapFromBucket!1334 lt!1865216 lt!1865217)) (_1!30295 lt!1865250) (_2!30295 lt!1865250)))))

(assert (=> d!1495885 (= (+!2186 (addToMapMapFromBucket!1334 lt!1865216 lt!1865217) lt!1865250) lt!1865810)))

(declare-fun b!4702398 () Bool)

(declare-fun res!1985609 () Bool)

(assert (=> b!4702398 (=> (not res!1985609) (not e!2933328))))

(assert (=> b!4702398 (= res!1985609 (= (getValueByKey!1856 (toList!5693 lt!1865810) (_1!30295 lt!1865250)) (Some!12203 (_2!30295 lt!1865250))))))

(declare-fun b!4702399 () Bool)

(assert (=> b!4702399 (= e!2933328 (contains!15832 (toList!5693 lt!1865810) lt!1865250))))

(assert (= (and d!1495885 res!1985610) b!4702398))

(assert (= (and b!4702398 res!1985609) b!4702399))

(declare-fun m!5619443 () Bool)

(assert (=> d!1495885 m!5619443))

(declare-fun m!5619445 () Bool)

(assert (=> d!1495885 m!5619445))

(declare-fun m!5619447 () Bool)

(assert (=> d!1495885 m!5619447))

(declare-fun m!5619449 () Bool)

(assert (=> d!1495885 m!5619449))

(declare-fun m!5619451 () Bool)

(assert (=> b!4702398 m!5619451))

(declare-fun m!5619453 () Bool)

(assert (=> b!4702399 m!5619453))

(assert (=> b!4701953 d!1495885))

(declare-fun bs!1096229 () Bool)

(declare-fun b!4702401 () Bool)

(assert (= bs!1096229 (and b!4702401 b!4702386)))

(declare-fun lambda!210605 () Int)

(assert (=> bs!1096229 (= (= lt!1865217 lt!1865761) (= lambda!210605 lambda!210595))))

(declare-fun bs!1096230 () Bool)

(assert (= bs!1096230 (and b!4702401 b!4702385)))

(assert (=> bs!1096230 (= lambda!210605 lambda!210593)))

(declare-fun bs!1096231 () Bool)

(assert (= bs!1096231 (and b!4702401 b!4702125)))

(assert (=> bs!1096231 (= lambda!210605 lambda!210556)))

(declare-fun bs!1096232 () Bool)

(assert (= bs!1096232 (and b!4702401 d!1495691)))

(assert (=> bs!1096232 (= (= lt!1865217 lt!1865523) (= lambda!210605 lambda!210559))))

(declare-fun bs!1096233 () Bool)

(assert (= bs!1096233 (and b!4702401 d!1495867)))

(assert (=> bs!1096233 (= (= lt!1865217 lt!1865773) (= lambda!210605 lambda!210596))))

(declare-fun bs!1096234 () Bool)

(assert (= bs!1096234 (and b!4702401 b!4702126)))

(assert (=> bs!1096234 (= lambda!210605 lambda!210557)))

(declare-fun bs!1096235 () Bool)

(assert (= bs!1096235 (and b!4702401 d!1495871)))

(assert (=> bs!1096235 (= (= lt!1865217 lt!1865794) (= lambda!210605 lambda!210600))))

(assert (=> bs!1096234 (= (= lt!1865217 lt!1865511) (= lambda!210605 lambda!210558))))

(declare-fun bs!1096236 () Bool)

(assert (= bs!1096236 (and b!4702401 d!1495627)))

(assert (=> bs!1096236 (not (= lambda!210605 lambda!210464))))

(declare-fun bs!1096237 () Bool)

(assert (= bs!1096237 (and b!4702401 b!4702391)))

(assert (=> bs!1096237 (= lambda!210605 lambda!210598)))

(assert (=> bs!1096229 (= lambda!210605 lambda!210594)))

(declare-fun bs!1096238 () Bool)

(assert (= bs!1096238 (and b!4702401 b!4702390)))

(assert (=> bs!1096238 (= lambda!210605 lambda!210597)))

(assert (=> bs!1096237 (= (= lt!1865217 lt!1865782) (= lambda!210605 lambda!210599))))

(assert (=> b!4702401 true))

(declare-fun bs!1096239 () Bool)

(declare-fun b!4702402 () Bool)

(assert (= bs!1096239 (and b!4702402 b!4702401)))

(declare-fun lambda!210606 () Int)

(assert (=> bs!1096239 (= lambda!210606 lambda!210605)))

(declare-fun bs!1096240 () Bool)

(assert (= bs!1096240 (and b!4702402 b!4702386)))

(assert (=> bs!1096240 (= (= lt!1865217 lt!1865761) (= lambda!210606 lambda!210595))))

(declare-fun bs!1096241 () Bool)

(assert (= bs!1096241 (and b!4702402 b!4702385)))

(assert (=> bs!1096241 (= lambda!210606 lambda!210593)))

(declare-fun bs!1096242 () Bool)

(assert (= bs!1096242 (and b!4702402 b!4702125)))

(assert (=> bs!1096242 (= lambda!210606 lambda!210556)))

(declare-fun bs!1096243 () Bool)

(assert (= bs!1096243 (and b!4702402 d!1495691)))

(assert (=> bs!1096243 (= (= lt!1865217 lt!1865523) (= lambda!210606 lambda!210559))))

(declare-fun bs!1096244 () Bool)

(assert (= bs!1096244 (and b!4702402 d!1495867)))

(assert (=> bs!1096244 (= (= lt!1865217 lt!1865773) (= lambda!210606 lambda!210596))))

(declare-fun bs!1096245 () Bool)

(assert (= bs!1096245 (and b!4702402 b!4702126)))

(assert (=> bs!1096245 (= lambda!210606 lambda!210557)))

(declare-fun bs!1096246 () Bool)

(assert (= bs!1096246 (and b!4702402 d!1495871)))

(assert (=> bs!1096246 (= (= lt!1865217 lt!1865794) (= lambda!210606 lambda!210600))))

(assert (=> bs!1096245 (= (= lt!1865217 lt!1865511) (= lambda!210606 lambda!210558))))

(declare-fun bs!1096247 () Bool)

(assert (= bs!1096247 (and b!4702402 d!1495627)))

(assert (=> bs!1096247 (not (= lambda!210606 lambda!210464))))

(declare-fun bs!1096248 () Bool)

(assert (= bs!1096248 (and b!4702402 b!4702391)))

(assert (=> bs!1096248 (= lambda!210606 lambda!210598)))

(assert (=> bs!1096240 (= lambda!210606 lambda!210594)))

(declare-fun bs!1096249 () Bool)

(assert (= bs!1096249 (and b!4702402 b!4702390)))

(assert (=> bs!1096249 (= lambda!210606 lambda!210597)))

(assert (=> bs!1096248 (= (= lt!1865217 lt!1865782) (= lambda!210606 lambda!210599))))

(assert (=> b!4702402 true))

(declare-fun lt!1865815 () ListMap!5057)

(declare-fun lambda!210607 () Int)

(assert (=> bs!1096239 (= (= lt!1865815 lt!1865217) (= lambda!210607 lambda!210605))))

(assert (=> b!4702402 (= (= lt!1865815 lt!1865217) (= lambda!210607 lambda!210606))))

(assert (=> bs!1096240 (= (= lt!1865815 lt!1865761) (= lambda!210607 lambda!210595))))

(assert (=> bs!1096241 (= (= lt!1865815 lt!1865217) (= lambda!210607 lambda!210593))))

(assert (=> bs!1096242 (= (= lt!1865815 lt!1865217) (= lambda!210607 lambda!210556))))

(assert (=> bs!1096243 (= (= lt!1865815 lt!1865523) (= lambda!210607 lambda!210559))))

(assert (=> bs!1096244 (= (= lt!1865815 lt!1865773) (= lambda!210607 lambda!210596))))

(assert (=> bs!1096245 (= (= lt!1865815 lt!1865217) (= lambda!210607 lambda!210557))))

(assert (=> bs!1096246 (= (= lt!1865815 lt!1865794) (= lambda!210607 lambda!210600))))

(assert (=> bs!1096245 (= (= lt!1865815 lt!1865511) (= lambda!210607 lambda!210558))))

(assert (=> bs!1096247 (not (= lambda!210607 lambda!210464))))

(assert (=> bs!1096248 (= (= lt!1865815 lt!1865217) (= lambda!210607 lambda!210598))))

(assert (=> bs!1096240 (= (= lt!1865815 lt!1865217) (= lambda!210607 lambda!210594))))

(assert (=> bs!1096249 (= (= lt!1865815 lt!1865217) (= lambda!210607 lambda!210597))))

(assert (=> bs!1096248 (= (= lt!1865815 lt!1865782) (= lambda!210607 lambda!210599))))

(assert (=> b!4702402 true))

(declare-fun bs!1096250 () Bool)

(declare-fun d!1495887 () Bool)

(assert (= bs!1096250 (and d!1495887 b!4702401)))

(declare-fun lt!1865827 () ListMap!5057)

(declare-fun lambda!210608 () Int)

(assert (=> bs!1096250 (= (= lt!1865827 lt!1865217) (= lambda!210608 lambda!210605))))

(declare-fun bs!1096251 () Bool)

(assert (= bs!1096251 (and d!1495887 b!4702402)))

(assert (=> bs!1096251 (= (= lt!1865827 lt!1865217) (= lambda!210608 lambda!210606))))

(declare-fun bs!1096252 () Bool)

(assert (= bs!1096252 (and d!1495887 b!4702386)))

(assert (=> bs!1096252 (= (= lt!1865827 lt!1865761) (= lambda!210608 lambda!210595))))

(declare-fun bs!1096253 () Bool)

(assert (= bs!1096253 (and d!1495887 b!4702125)))

(assert (=> bs!1096253 (= (= lt!1865827 lt!1865217) (= lambda!210608 lambda!210556))))

(declare-fun bs!1096254 () Bool)

(assert (= bs!1096254 (and d!1495887 d!1495691)))

(assert (=> bs!1096254 (= (= lt!1865827 lt!1865523) (= lambda!210608 lambda!210559))))

(declare-fun bs!1096255 () Bool)

(assert (= bs!1096255 (and d!1495887 d!1495867)))

(assert (=> bs!1096255 (= (= lt!1865827 lt!1865773) (= lambda!210608 lambda!210596))))

(declare-fun bs!1096256 () Bool)

(assert (= bs!1096256 (and d!1495887 b!4702126)))

(assert (=> bs!1096256 (= (= lt!1865827 lt!1865217) (= lambda!210608 lambda!210557))))

(declare-fun bs!1096257 () Bool)

(assert (= bs!1096257 (and d!1495887 d!1495871)))

(assert (=> bs!1096257 (= (= lt!1865827 lt!1865794) (= lambda!210608 lambda!210600))))

(assert (=> bs!1096256 (= (= lt!1865827 lt!1865511) (= lambda!210608 lambda!210558))))

(declare-fun bs!1096258 () Bool)

(assert (= bs!1096258 (and d!1495887 d!1495627)))

(assert (=> bs!1096258 (not (= lambda!210608 lambda!210464))))

(declare-fun bs!1096259 () Bool)

(assert (= bs!1096259 (and d!1495887 b!4702391)))

(assert (=> bs!1096259 (= (= lt!1865827 lt!1865217) (= lambda!210608 lambda!210598))))

(assert (=> bs!1096251 (= (= lt!1865827 lt!1865815) (= lambda!210608 lambda!210607))))

(declare-fun bs!1096260 () Bool)

(assert (= bs!1096260 (and d!1495887 b!4702385)))

(assert (=> bs!1096260 (= (= lt!1865827 lt!1865217) (= lambda!210608 lambda!210593))))

(assert (=> bs!1096252 (= (= lt!1865827 lt!1865217) (= lambda!210608 lambda!210594))))

(declare-fun bs!1096261 () Bool)

(assert (= bs!1096261 (and d!1495887 b!4702390)))

(assert (=> bs!1096261 (= (= lt!1865827 lt!1865217) (= lambda!210608 lambda!210597))))

(assert (=> bs!1096259 (= (= lt!1865827 lt!1865782) (= lambda!210608 lambda!210599))))

(assert (=> d!1495887 true))

(declare-fun bm!328746 () Bool)

(declare-fun call!328751 () Bool)

(declare-fun c!803763 () Bool)

(assert (=> bm!328746 (= call!328751 (forall!11409 (toList!5693 lt!1865217) (ite c!803763 lambda!210605 lambda!210607)))))

(declare-fun bm!328747 () Bool)

(declare-fun call!328753 () Bool)

(assert (=> bm!328747 (= call!328753 (forall!11409 (toList!5693 lt!1865217) (ite c!803763 lambda!210605 lambda!210607)))))

(declare-fun b!4702400 () Bool)

(declare-fun e!2933331 () Bool)

(assert (=> b!4702400 (= e!2933331 (invariantList!1448 (toList!5693 lt!1865827)))))

(declare-fun e!2933330 () ListMap!5057)

(assert (=> b!4702401 (= e!2933330 lt!1865217)))

(declare-fun lt!1865814 () Unit!126368)

(declare-fun call!328752 () Unit!126368)

(assert (=> b!4702401 (= lt!1865814 call!328752)))

(assert (=> b!4702401 call!328751))

(declare-fun lt!1865820 () Unit!126368)

(assert (=> b!4702401 (= lt!1865820 lt!1865814)))

(assert (=> b!4702401 call!328753))

(declare-fun lt!1865821 () Unit!126368)

(declare-fun Unit!126466 () Unit!126368)

(assert (=> b!4702401 (= lt!1865821 Unit!126466)))

(assert (=> d!1495887 e!2933331))

(declare-fun res!1985613 () Bool)

(assert (=> d!1495887 (=> (not res!1985613) (not e!2933331))))

(assert (=> d!1495887 (= res!1985613 (forall!11409 lt!1865234 lambda!210608))))

(assert (=> d!1495887 (= lt!1865827 e!2933330)))

(assert (=> d!1495887 (= c!803763 ((_ is Nil!52543) lt!1865234))))

(assert (=> d!1495887 (noDuplicateKeys!1902 lt!1865234)))

(assert (=> d!1495887 (= (addToMapMapFromBucket!1334 lt!1865234 lt!1865217) lt!1865827)))

(declare-fun bm!328748 () Bool)

(assert (=> bm!328748 (= call!328752 (lemmaContainsAllItsOwnKeys!736 lt!1865217))))

(assert (=> b!4702402 (= e!2933330 lt!1865815)))

(declare-fun lt!1865823 () ListMap!5057)

(assert (=> b!4702402 (= lt!1865823 (+!2186 lt!1865217 (h!58826 lt!1865234)))))

(assert (=> b!4702402 (= lt!1865815 (addToMapMapFromBucket!1334 (t!359881 lt!1865234) (+!2186 lt!1865217 (h!58826 lt!1865234))))))

(declare-fun lt!1865825 () Unit!126368)

(assert (=> b!4702402 (= lt!1865825 call!328752)))

(assert (=> b!4702402 (forall!11409 (toList!5693 lt!1865217) lambda!210606)))

(declare-fun lt!1865817 () Unit!126368)

(assert (=> b!4702402 (= lt!1865817 lt!1865825)))

(assert (=> b!4702402 (forall!11409 (toList!5693 lt!1865823) lambda!210607)))

(declare-fun lt!1865826 () Unit!126368)

(declare-fun Unit!126467 () Unit!126368)

(assert (=> b!4702402 (= lt!1865826 Unit!126467)))

(assert (=> b!4702402 (forall!11409 (t!359881 lt!1865234) lambda!210607)))

(declare-fun lt!1865822 () Unit!126368)

(declare-fun Unit!126468 () Unit!126368)

(assert (=> b!4702402 (= lt!1865822 Unit!126468)))

(declare-fun lt!1865832 () Unit!126368)

(declare-fun Unit!126469 () Unit!126368)

(assert (=> b!4702402 (= lt!1865832 Unit!126469)))

(declare-fun lt!1865824 () Unit!126368)

(assert (=> b!4702402 (= lt!1865824 (forallContained!3516 (toList!5693 lt!1865823) lambda!210607 (h!58826 lt!1865234)))))

(assert (=> b!4702402 (contains!15830 lt!1865823 (_1!30295 (h!58826 lt!1865234)))))

(declare-fun lt!1865816 () Unit!126368)

(declare-fun Unit!126470 () Unit!126368)

(assert (=> b!4702402 (= lt!1865816 Unit!126470)))

(assert (=> b!4702402 (contains!15830 lt!1865815 (_1!30295 (h!58826 lt!1865234)))))

(declare-fun lt!1865819 () Unit!126368)

(declare-fun Unit!126471 () Unit!126368)

(assert (=> b!4702402 (= lt!1865819 Unit!126471)))

(assert (=> b!4702402 (forall!11409 lt!1865234 lambda!210607)))

(declare-fun lt!1865829 () Unit!126368)

(declare-fun Unit!126472 () Unit!126368)

(assert (=> b!4702402 (= lt!1865829 Unit!126472)))

(assert (=> b!4702402 (forall!11409 (toList!5693 lt!1865823) lambda!210607)))

(declare-fun lt!1865831 () Unit!126368)

(declare-fun Unit!126473 () Unit!126368)

(assert (=> b!4702402 (= lt!1865831 Unit!126473)))

(declare-fun lt!1865833 () Unit!126368)

(declare-fun Unit!126474 () Unit!126368)

(assert (=> b!4702402 (= lt!1865833 Unit!126474)))

(declare-fun lt!1865830 () Unit!126368)

(assert (=> b!4702402 (= lt!1865830 (addForallContainsKeyThenBeforeAdding!735 lt!1865217 lt!1865815 (_1!30295 (h!58826 lt!1865234)) (_2!30295 (h!58826 lt!1865234))))))

(assert (=> b!4702402 call!328751))

(declare-fun lt!1865828 () Unit!126368)

(assert (=> b!4702402 (= lt!1865828 lt!1865830)))

(assert (=> b!4702402 (forall!11409 (toList!5693 lt!1865217) lambda!210607)))

(declare-fun lt!1865813 () Unit!126368)

(declare-fun Unit!126475 () Unit!126368)

(assert (=> b!4702402 (= lt!1865813 Unit!126475)))

(declare-fun res!1985611 () Bool)

(assert (=> b!4702402 (= res!1985611 (forall!11409 lt!1865234 lambda!210607))))

(declare-fun e!2933329 () Bool)

(assert (=> b!4702402 (=> (not res!1985611) (not e!2933329))))

(assert (=> b!4702402 e!2933329))

(declare-fun lt!1865818 () Unit!126368)

(declare-fun Unit!126476 () Unit!126368)

(assert (=> b!4702402 (= lt!1865818 Unit!126476)))

(declare-fun b!4702403 () Bool)

(assert (=> b!4702403 (= e!2933329 call!328753)))

(declare-fun b!4702404 () Bool)

(declare-fun res!1985612 () Bool)

(assert (=> b!4702404 (=> (not res!1985612) (not e!2933331))))

(assert (=> b!4702404 (= res!1985612 (forall!11409 (toList!5693 lt!1865217) lambda!210608))))

(assert (= (and d!1495887 c!803763) b!4702401))

(assert (= (and d!1495887 (not c!803763)) b!4702402))

(assert (= (and b!4702402 res!1985611) b!4702403))

(assert (= (or b!4702401 b!4702402) bm!328748))

(assert (= (or b!4702401 b!4702402) bm!328746))

(assert (= (or b!4702401 b!4702403) bm!328747))

(assert (= (and d!1495887 res!1985613) b!4702404))

(assert (= (and b!4702404 res!1985612) b!4702400))

(declare-fun m!5619455 () Bool)

(assert (=> b!4702400 m!5619455))

(declare-fun m!5619457 () Bool)

(assert (=> bm!328747 m!5619457))

(declare-fun m!5619459 () Bool)

(assert (=> b!4702404 m!5619459))

(declare-fun m!5619461 () Bool)

(assert (=> b!4702402 m!5619461))

(declare-fun m!5619463 () Bool)

(assert (=> b!4702402 m!5619463))

(declare-fun m!5619465 () Bool)

(assert (=> b!4702402 m!5619465))

(declare-fun m!5619467 () Bool)

(assert (=> b!4702402 m!5619467))

(declare-fun m!5619469 () Bool)

(assert (=> b!4702402 m!5619469))

(declare-fun m!5619471 () Bool)

(assert (=> b!4702402 m!5619471))

(declare-fun m!5619473 () Bool)

(assert (=> b!4702402 m!5619473))

(assert (=> b!4702402 m!5619461))

(declare-fun m!5619475 () Bool)

(assert (=> b!4702402 m!5619475))

(declare-fun m!5619477 () Bool)

(assert (=> b!4702402 m!5619477))

(declare-fun m!5619479 () Bool)

(assert (=> b!4702402 m!5619479))

(assert (=> b!4702402 m!5619477))

(assert (=> b!4702402 m!5619463))

(declare-fun m!5619481 () Bool)

(assert (=> b!4702402 m!5619481))

(assert (=> bm!328746 m!5619457))

(declare-fun m!5619483 () Bool)

(assert (=> d!1495887 m!5619483))

(declare-fun m!5619485 () Bool)

(assert (=> d!1495887 m!5619485))

(assert (=> bm!328748 m!5618807))

(assert (=> b!4701953 d!1495887))

(declare-fun bs!1096262 () Bool)

(declare-fun d!1495889 () Bool)

(assert (= bs!1096262 (and d!1495889 d!1495861)))

(declare-fun lambda!210609 () Int)

(assert (=> bs!1096262 (= lambda!210609 lambda!210592)))

(declare-fun bs!1096263 () Bool)

(assert (= bs!1096263 (and d!1495889 d!1495883)))

(assert (=> bs!1096263 (= lambda!210609 lambda!210604)))

(declare-fun bs!1096264 () Bool)

(assert (= bs!1096264 (and d!1495889 d!1495707)))

(assert (=> bs!1096264 (= lambda!210609 lambda!210560)))

(declare-fun bs!1096265 () Bool)

(assert (= bs!1096265 (and d!1495889 d!1495663)))

(assert (=> bs!1096265 (= lambda!210609 lambda!210483)))

(declare-fun bs!1096266 () Bool)

(assert (= bs!1096266 (and d!1495889 d!1495639)))

(assert (=> bs!1096266 (= lambda!210609 lambda!210470)))

(declare-fun bs!1096267 () Bool)

(assert (= bs!1096267 (and d!1495889 d!1495829)))

(assert (=> bs!1096267 (= lambda!210609 lambda!210584)))

(declare-fun bs!1096268 () Bool)

(assert (= bs!1096268 (and d!1495889 d!1495711)))

(assert (=> bs!1096268 (not (= lambda!210609 lambda!210563))))

(declare-fun bs!1096269 () Bool)

(assert (= bs!1096269 (and d!1495889 d!1495653)))

(assert (=> bs!1096269 (= lambda!210609 lambda!210471)))

(declare-fun bs!1096270 () Bool)

(assert (= bs!1096270 (and d!1495889 d!1495873)))

(assert (=> bs!1096270 (= lambda!210609 lambda!210603)))

(declare-fun bs!1096271 () Bool)

(assert (= bs!1096271 (and d!1495889 start!476980)))

(assert (=> bs!1096271 (= lambda!210609 lambda!210453)))

(declare-fun bs!1096272 () Bool)

(assert (= bs!1096272 (and d!1495889 d!1495657)))

(assert (=> bs!1096272 (= lambda!210609 lambda!210478)))

(declare-fun bs!1096273 () Bool)

(assert (= bs!1096273 (and d!1495889 d!1495845)))

(assert (=> bs!1096273 (= lambda!210609 lambda!210591)))

(declare-fun lt!1865834 () ListMap!5057)

(assert (=> d!1495889 (invariantList!1448 (toList!5693 lt!1865834))))

(declare-fun e!2933332 () ListMap!5057)

(assert (=> d!1495889 (= lt!1865834 e!2933332)))

(declare-fun c!803764 () Bool)

(assert (=> d!1495889 (= c!803764 ((_ is Cons!52544) lt!1865223))))

(assert (=> d!1495889 (forall!11407 lt!1865223 lambda!210609)))

(assert (=> d!1495889 (= (extractMap!1928 lt!1865223) lt!1865834)))

(declare-fun b!4702405 () Bool)

(assert (=> b!4702405 (= e!2933332 (addToMapMapFromBucket!1334 (_2!30296 (h!58827 lt!1865223)) (extractMap!1928 (t!359882 lt!1865223))))))

(declare-fun b!4702406 () Bool)

(assert (=> b!4702406 (= e!2933332 (ListMap!5058 Nil!52543))))

(assert (= (and d!1495889 c!803764) b!4702405))

(assert (= (and d!1495889 (not c!803764)) b!4702406))

(declare-fun m!5619487 () Bool)

(assert (=> d!1495889 m!5619487))

(declare-fun m!5619489 () Bool)

(assert (=> d!1495889 m!5619489))

(declare-fun m!5619491 () Bool)

(assert (=> b!4702405 m!5619491))

(assert (=> b!4702405 m!5619491))

(declare-fun m!5619493 () Bool)

(assert (=> b!4702405 m!5619493))

(assert (=> b!4701953 d!1495889))

(declare-fun d!1495891 () Bool)

(assert (=> d!1495891 (eq!1061 (addToMapMapFromBucket!1334 (Cons!52543 lt!1865246 lt!1865234) lt!1865217) (+!2186 (addToMapMapFromBucket!1334 lt!1865234 lt!1865217) lt!1865246))))

(declare-fun lt!1865837 () Unit!126368)

(declare-fun choose!32931 (tuple2!54002 List!52667 ListMap!5057) Unit!126368)

(assert (=> d!1495891 (= lt!1865837 (choose!32931 lt!1865246 lt!1865234 lt!1865217))))

(assert (=> d!1495891 (noDuplicateKeys!1902 lt!1865234)))

(assert (=> d!1495891 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!310 lt!1865246 lt!1865234 lt!1865217) lt!1865837)))

(declare-fun bs!1096274 () Bool)

(assert (= bs!1096274 d!1495891))

(assert (=> bs!1096274 m!5619485))

(assert (=> bs!1096274 m!5618295))

(assert (=> bs!1096274 m!5618313))

(declare-fun m!5619495 () Bool)

(assert (=> bs!1096274 m!5619495))

(assert (=> bs!1096274 m!5618313))

(assert (=> bs!1096274 m!5618297))

(assert (=> bs!1096274 m!5618317))

(assert (=> bs!1096274 m!5618295))

(assert (=> bs!1096274 m!5618297))

(assert (=> b!4701953 d!1495891))

(declare-fun bs!1096275 () Bool)

(declare-fun b!4702408 () Bool)

(assert (= bs!1096275 (and b!4702408 b!4702401)))

(declare-fun lambda!210610 () Int)

(assert (=> bs!1096275 (= lambda!210610 lambda!210605)))

(declare-fun bs!1096276 () Bool)

(assert (= bs!1096276 (and b!4702408 b!4702402)))

(assert (=> bs!1096276 (= lambda!210610 lambda!210606)))

(declare-fun bs!1096277 () Bool)

(assert (= bs!1096277 (and b!4702408 b!4702386)))

(assert (=> bs!1096277 (= (= lt!1865217 lt!1865761) (= lambda!210610 lambda!210595))))

(declare-fun bs!1096278 () Bool)

(assert (= bs!1096278 (and b!4702408 b!4702125)))

(assert (=> bs!1096278 (= lambda!210610 lambda!210556)))

(declare-fun bs!1096279 () Bool)

(assert (= bs!1096279 (and b!4702408 d!1495691)))

(assert (=> bs!1096279 (= (= lt!1865217 lt!1865523) (= lambda!210610 lambda!210559))))

(declare-fun bs!1096280 () Bool)

(assert (= bs!1096280 (and b!4702408 d!1495867)))

(assert (=> bs!1096280 (= (= lt!1865217 lt!1865773) (= lambda!210610 lambda!210596))))

(declare-fun bs!1096281 () Bool)

(assert (= bs!1096281 (and b!4702408 b!4702126)))

(assert (=> bs!1096281 (= lambda!210610 lambda!210557)))

(declare-fun bs!1096282 () Bool)

(assert (= bs!1096282 (and b!4702408 d!1495871)))

(assert (=> bs!1096282 (= (= lt!1865217 lt!1865794) (= lambda!210610 lambda!210600))))

(assert (=> bs!1096281 (= (= lt!1865217 lt!1865511) (= lambda!210610 lambda!210558))))

(declare-fun bs!1096283 () Bool)

(assert (= bs!1096283 (and b!4702408 d!1495627)))

(assert (=> bs!1096283 (not (= lambda!210610 lambda!210464))))

(declare-fun bs!1096284 () Bool)

(assert (= bs!1096284 (and b!4702408 b!4702391)))

(assert (=> bs!1096284 (= lambda!210610 lambda!210598)))

(declare-fun bs!1096285 () Bool)

(assert (= bs!1096285 (and b!4702408 d!1495887)))

(assert (=> bs!1096285 (= (= lt!1865217 lt!1865827) (= lambda!210610 lambda!210608))))

(assert (=> bs!1096276 (= (= lt!1865217 lt!1865815) (= lambda!210610 lambda!210607))))

(declare-fun bs!1096286 () Bool)

(assert (= bs!1096286 (and b!4702408 b!4702385)))

(assert (=> bs!1096286 (= lambda!210610 lambda!210593)))

(assert (=> bs!1096277 (= lambda!210610 lambda!210594)))

(declare-fun bs!1096287 () Bool)

(assert (= bs!1096287 (and b!4702408 b!4702390)))

(assert (=> bs!1096287 (= lambda!210610 lambda!210597)))

(assert (=> bs!1096284 (= (= lt!1865217 lt!1865782) (= lambda!210610 lambda!210599))))

(assert (=> b!4702408 true))

(declare-fun bs!1096288 () Bool)

(declare-fun b!4702409 () Bool)

(assert (= bs!1096288 (and b!4702409 b!4702401)))

(declare-fun lambda!210611 () Int)

(assert (=> bs!1096288 (= lambda!210611 lambda!210605)))

(declare-fun bs!1096289 () Bool)

(assert (= bs!1096289 (and b!4702409 b!4702402)))

(assert (=> bs!1096289 (= lambda!210611 lambda!210606)))

(declare-fun bs!1096290 () Bool)

(assert (= bs!1096290 (and b!4702409 b!4702386)))

(assert (=> bs!1096290 (= (= lt!1865217 lt!1865761) (= lambda!210611 lambda!210595))))

(declare-fun bs!1096291 () Bool)

(assert (= bs!1096291 (and b!4702409 b!4702125)))

(assert (=> bs!1096291 (= lambda!210611 lambda!210556)))

(declare-fun bs!1096292 () Bool)

(assert (= bs!1096292 (and b!4702409 d!1495691)))

(assert (=> bs!1096292 (= (= lt!1865217 lt!1865523) (= lambda!210611 lambda!210559))))

(declare-fun bs!1096293 () Bool)

(assert (= bs!1096293 (and b!4702409 d!1495867)))

(assert (=> bs!1096293 (= (= lt!1865217 lt!1865773) (= lambda!210611 lambda!210596))))

(declare-fun bs!1096294 () Bool)

(assert (= bs!1096294 (and b!4702409 b!4702126)))

(assert (=> bs!1096294 (= lambda!210611 lambda!210557)))

(declare-fun bs!1096295 () Bool)

(assert (= bs!1096295 (and b!4702409 d!1495871)))

(assert (=> bs!1096295 (= (= lt!1865217 lt!1865794) (= lambda!210611 lambda!210600))))

(declare-fun bs!1096296 () Bool)

(assert (= bs!1096296 (and b!4702409 d!1495627)))

(assert (=> bs!1096296 (not (= lambda!210611 lambda!210464))))

(declare-fun bs!1096297 () Bool)

(assert (= bs!1096297 (and b!4702409 b!4702391)))

(assert (=> bs!1096297 (= lambda!210611 lambda!210598)))

(declare-fun bs!1096298 () Bool)

(assert (= bs!1096298 (and b!4702409 d!1495887)))

(assert (=> bs!1096298 (= (= lt!1865217 lt!1865827) (= lambda!210611 lambda!210608))))

(assert (=> bs!1096289 (= (= lt!1865217 lt!1865815) (= lambda!210611 lambda!210607))))

(declare-fun bs!1096299 () Bool)

(assert (= bs!1096299 (and b!4702409 b!4702385)))

(assert (=> bs!1096299 (= lambda!210611 lambda!210593)))

(assert (=> bs!1096290 (= lambda!210611 lambda!210594)))

(declare-fun bs!1096300 () Bool)

(assert (= bs!1096300 (and b!4702409 b!4702390)))

(assert (=> bs!1096300 (= lambda!210611 lambda!210597)))

(assert (=> bs!1096297 (= (= lt!1865217 lt!1865782) (= lambda!210611 lambda!210599))))

(declare-fun bs!1096301 () Bool)

(assert (= bs!1096301 (and b!4702409 b!4702408)))

(assert (=> bs!1096301 (= lambda!210611 lambda!210610)))

(assert (=> bs!1096294 (= (= lt!1865217 lt!1865511) (= lambda!210611 lambda!210558))))

(assert (=> b!4702409 true))

(declare-fun lt!1865840 () ListMap!5057)

(declare-fun lambda!210612 () Int)

(assert (=> bs!1096288 (= (= lt!1865840 lt!1865217) (= lambda!210612 lambda!210605))))

(assert (=> bs!1096289 (= (= lt!1865840 lt!1865217) (= lambda!210612 lambda!210606))))

(assert (=> bs!1096290 (= (= lt!1865840 lt!1865761) (= lambda!210612 lambda!210595))))

(assert (=> bs!1096291 (= (= lt!1865840 lt!1865217) (= lambda!210612 lambda!210556))))

(assert (=> bs!1096292 (= (= lt!1865840 lt!1865523) (= lambda!210612 lambda!210559))))

(assert (=> bs!1096293 (= (= lt!1865840 lt!1865773) (= lambda!210612 lambda!210596))))

(assert (=> bs!1096294 (= (= lt!1865840 lt!1865217) (= lambda!210612 lambda!210557))))

(assert (=> bs!1096295 (= (= lt!1865840 lt!1865794) (= lambda!210612 lambda!210600))))

(assert (=> bs!1096296 (not (= lambda!210612 lambda!210464))))

(assert (=> bs!1096297 (= (= lt!1865840 lt!1865217) (= lambda!210612 lambda!210598))))

(assert (=> bs!1096289 (= (= lt!1865840 lt!1865815) (= lambda!210612 lambda!210607))))

(assert (=> bs!1096299 (= (= lt!1865840 lt!1865217) (= lambda!210612 lambda!210593))))

(assert (=> bs!1096290 (= (= lt!1865840 lt!1865217) (= lambda!210612 lambda!210594))))

(assert (=> bs!1096300 (= (= lt!1865840 lt!1865217) (= lambda!210612 lambda!210597))))

(assert (=> bs!1096297 (= (= lt!1865840 lt!1865782) (= lambda!210612 lambda!210599))))

(assert (=> bs!1096301 (= (= lt!1865840 lt!1865217) (= lambda!210612 lambda!210610))))

(assert (=> bs!1096294 (= (= lt!1865840 lt!1865511) (= lambda!210612 lambda!210558))))

(assert (=> b!4702409 (= (= lt!1865840 lt!1865217) (= lambda!210612 lambda!210611))))

(assert (=> bs!1096298 (= (= lt!1865840 lt!1865827) (= lambda!210612 lambda!210608))))

(assert (=> b!4702409 true))

(declare-fun bs!1096302 () Bool)

(declare-fun d!1495893 () Bool)

(assert (= bs!1096302 (and d!1495893 b!4702401)))

(declare-fun lambda!210613 () Int)

(declare-fun lt!1865852 () ListMap!5057)

(assert (=> bs!1096302 (= (= lt!1865852 lt!1865217) (= lambda!210613 lambda!210605))))

(declare-fun bs!1096303 () Bool)

(assert (= bs!1096303 (and d!1495893 b!4702402)))

(assert (=> bs!1096303 (= (= lt!1865852 lt!1865217) (= lambda!210613 lambda!210606))))

(declare-fun bs!1096304 () Bool)

(assert (= bs!1096304 (and d!1495893 b!4702386)))

(assert (=> bs!1096304 (= (= lt!1865852 lt!1865761) (= lambda!210613 lambda!210595))))

(declare-fun bs!1096305 () Bool)

(assert (= bs!1096305 (and d!1495893 d!1495691)))

(assert (=> bs!1096305 (= (= lt!1865852 lt!1865523) (= lambda!210613 lambda!210559))))

(declare-fun bs!1096306 () Bool)

(assert (= bs!1096306 (and d!1495893 d!1495867)))

(assert (=> bs!1096306 (= (= lt!1865852 lt!1865773) (= lambda!210613 lambda!210596))))

(declare-fun bs!1096307 () Bool)

(assert (= bs!1096307 (and d!1495893 b!4702126)))

(assert (=> bs!1096307 (= (= lt!1865852 lt!1865217) (= lambda!210613 lambda!210557))))

(declare-fun bs!1096308 () Bool)

(assert (= bs!1096308 (and d!1495893 d!1495871)))

(assert (=> bs!1096308 (= (= lt!1865852 lt!1865794) (= lambda!210613 lambda!210600))))

(declare-fun bs!1096309 () Bool)

(assert (= bs!1096309 (and d!1495893 d!1495627)))

(assert (=> bs!1096309 (not (= lambda!210613 lambda!210464))))

(declare-fun bs!1096310 () Bool)

(assert (= bs!1096310 (and d!1495893 b!4702391)))

(assert (=> bs!1096310 (= (= lt!1865852 lt!1865217) (= lambda!210613 lambda!210598))))

(assert (=> bs!1096303 (= (= lt!1865852 lt!1865815) (= lambda!210613 lambda!210607))))

(declare-fun bs!1096311 () Bool)

(assert (= bs!1096311 (and d!1495893 b!4702385)))

(assert (=> bs!1096311 (= (= lt!1865852 lt!1865217) (= lambda!210613 lambda!210593))))

(declare-fun bs!1096312 () Bool)

(assert (= bs!1096312 (and d!1495893 b!4702125)))

(assert (=> bs!1096312 (= (= lt!1865852 lt!1865217) (= lambda!210613 lambda!210556))))

(declare-fun bs!1096313 () Bool)

(assert (= bs!1096313 (and d!1495893 b!4702409)))

(assert (=> bs!1096313 (= (= lt!1865852 lt!1865840) (= lambda!210613 lambda!210612))))

(assert (=> bs!1096304 (= (= lt!1865852 lt!1865217) (= lambda!210613 lambda!210594))))

(declare-fun bs!1096314 () Bool)

(assert (= bs!1096314 (and d!1495893 b!4702390)))

(assert (=> bs!1096314 (= (= lt!1865852 lt!1865217) (= lambda!210613 lambda!210597))))

(assert (=> bs!1096310 (= (= lt!1865852 lt!1865782) (= lambda!210613 lambda!210599))))

(declare-fun bs!1096315 () Bool)

(assert (= bs!1096315 (and d!1495893 b!4702408)))

(assert (=> bs!1096315 (= (= lt!1865852 lt!1865217) (= lambda!210613 lambda!210610))))

(assert (=> bs!1096307 (= (= lt!1865852 lt!1865511) (= lambda!210613 lambda!210558))))

(assert (=> bs!1096313 (= (= lt!1865852 lt!1865217) (= lambda!210613 lambda!210611))))

(declare-fun bs!1096316 () Bool)

(assert (= bs!1096316 (and d!1495893 d!1495887)))

(assert (=> bs!1096316 (= (= lt!1865852 lt!1865827) (= lambda!210613 lambda!210608))))

(assert (=> d!1495893 true))

(declare-fun call!328754 () Bool)

(declare-fun c!803765 () Bool)

(declare-fun bm!328749 () Bool)

(assert (=> bm!328749 (= call!328754 (forall!11409 (toList!5693 lt!1865217) (ite c!803765 lambda!210610 lambda!210612)))))

(declare-fun call!328756 () Bool)

(declare-fun bm!328750 () Bool)

(assert (=> bm!328750 (= call!328756 (forall!11409 (toList!5693 lt!1865217) (ite c!803765 lambda!210610 lambda!210612)))))

(declare-fun b!4702407 () Bool)

(declare-fun e!2933335 () Bool)

(assert (=> b!4702407 (= e!2933335 (invariantList!1448 (toList!5693 lt!1865852)))))

(declare-fun e!2933334 () ListMap!5057)

(assert (=> b!4702408 (= e!2933334 lt!1865217)))

(declare-fun lt!1865839 () Unit!126368)

(declare-fun call!328755 () Unit!126368)

(assert (=> b!4702408 (= lt!1865839 call!328755)))

(assert (=> b!4702408 call!328754))

(declare-fun lt!1865845 () Unit!126368)

(assert (=> b!4702408 (= lt!1865845 lt!1865839)))

(assert (=> b!4702408 call!328756))

(declare-fun lt!1865846 () Unit!126368)

(declare-fun Unit!126477 () Unit!126368)

(assert (=> b!4702408 (= lt!1865846 Unit!126477)))

(assert (=> d!1495893 e!2933335))

(declare-fun res!1985616 () Bool)

(assert (=> d!1495893 (=> (not res!1985616) (not e!2933335))))

(assert (=> d!1495893 (= res!1985616 (forall!11409 (Cons!52543 lt!1865246 lt!1865234) lambda!210613))))

(assert (=> d!1495893 (= lt!1865852 e!2933334)))

(assert (=> d!1495893 (= c!803765 ((_ is Nil!52543) (Cons!52543 lt!1865246 lt!1865234)))))

(assert (=> d!1495893 (noDuplicateKeys!1902 (Cons!52543 lt!1865246 lt!1865234))))

(assert (=> d!1495893 (= (addToMapMapFromBucket!1334 (Cons!52543 lt!1865246 lt!1865234) lt!1865217) lt!1865852)))

(declare-fun bm!328751 () Bool)

(assert (=> bm!328751 (= call!328755 (lemmaContainsAllItsOwnKeys!736 lt!1865217))))

(assert (=> b!4702409 (= e!2933334 lt!1865840)))

(declare-fun lt!1865848 () ListMap!5057)

(assert (=> b!4702409 (= lt!1865848 (+!2186 lt!1865217 (h!58826 (Cons!52543 lt!1865246 lt!1865234))))))

(assert (=> b!4702409 (= lt!1865840 (addToMapMapFromBucket!1334 (t!359881 (Cons!52543 lt!1865246 lt!1865234)) (+!2186 lt!1865217 (h!58826 (Cons!52543 lt!1865246 lt!1865234)))))))

(declare-fun lt!1865850 () Unit!126368)

(assert (=> b!4702409 (= lt!1865850 call!328755)))

(assert (=> b!4702409 (forall!11409 (toList!5693 lt!1865217) lambda!210611)))

(declare-fun lt!1865842 () Unit!126368)

(assert (=> b!4702409 (= lt!1865842 lt!1865850)))

(assert (=> b!4702409 (forall!11409 (toList!5693 lt!1865848) lambda!210612)))

(declare-fun lt!1865851 () Unit!126368)

(declare-fun Unit!126478 () Unit!126368)

(assert (=> b!4702409 (= lt!1865851 Unit!126478)))

(assert (=> b!4702409 (forall!11409 (t!359881 (Cons!52543 lt!1865246 lt!1865234)) lambda!210612)))

(declare-fun lt!1865847 () Unit!126368)

(declare-fun Unit!126479 () Unit!126368)

(assert (=> b!4702409 (= lt!1865847 Unit!126479)))

(declare-fun lt!1865857 () Unit!126368)

(declare-fun Unit!126480 () Unit!126368)

(assert (=> b!4702409 (= lt!1865857 Unit!126480)))

(declare-fun lt!1865849 () Unit!126368)

(assert (=> b!4702409 (= lt!1865849 (forallContained!3516 (toList!5693 lt!1865848) lambda!210612 (h!58826 (Cons!52543 lt!1865246 lt!1865234))))))

(assert (=> b!4702409 (contains!15830 lt!1865848 (_1!30295 (h!58826 (Cons!52543 lt!1865246 lt!1865234))))))

(declare-fun lt!1865841 () Unit!126368)

(declare-fun Unit!126481 () Unit!126368)

(assert (=> b!4702409 (= lt!1865841 Unit!126481)))

(assert (=> b!4702409 (contains!15830 lt!1865840 (_1!30295 (h!58826 (Cons!52543 lt!1865246 lt!1865234))))))

(declare-fun lt!1865844 () Unit!126368)

(declare-fun Unit!126482 () Unit!126368)

(assert (=> b!4702409 (= lt!1865844 Unit!126482)))

(assert (=> b!4702409 (forall!11409 (Cons!52543 lt!1865246 lt!1865234) lambda!210612)))

(declare-fun lt!1865854 () Unit!126368)

(declare-fun Unit!126483 () Unit!126368)

(assert (=> b!4702409 (= lt!1865854 Unit!126483)))

(assert (=> b!4702409 (forall!11409 (toList!5693 lt!1865848) lambda!210612)))

(declare-fun lt!1865856 () Unit!126368)

(declare-fun Unit!126484 () Unit!126368)

(assert (=> b!4702409 (= lt!1865856 Unit!126484)))

(declare-fun lt!1865858 () Unit!126368)

(declare-fun Unit!126485 () Unit!126368)

(assert (=> b!4702409 (= lt!1865858 Unit!126485)))

(declare-fun lt!1865855 () Unit!126368)

(assert (=> b!4702409 (= lt!1865855 (addForallContainsKeyThenBeforeAdding!735 lt!1865217 lt!1865840 (_1!30295 (h!58826 (Cons!52543 lt!1865246 lt!1865234))) (_2!30295 (h!58826 (Cons!52543 lt!1865246 lt!1865234)))))))

(assert (=> b!4702409 call!328754))

(declare-fun lt!1865853 () Unit!126368)

(assert (=> b!4702409 (= lt!1865853 lt!1865855)))

(assert (=> b!4702409 (forall!11409 (toList!5693 lt!1865217) lambda!210612)))

(declare-fun lt!1865838 () Unit!126368)

(declare-fun Unit!126486 () Unit!126368)

(assert (=> b!4702409 (= lt!1865838 Unit!126486)))

(declare-fun res!1985614 () Bool)

(assert (=> b!4702409 (= res!1985614 (forall!11409 (Cons!52543 lt!1865246 lt!1865234) lambda!210612))))

(declare-fun e!2933333 () Bool)

(assert (=> b!4702409 (=> (not res!1985614) (not e!2933333))))

(assert (=> b!4702409 e!2933333))

(declare-fun lt!1865843 () Unit!126368)

(declare-fun Unit!126487 () Unit!126368)

(assert (=> b!4702409 (= lt!1865843 Unit!126487)))

(declare-fun b!4702410 () Bool)

(assert (=> b!4702410 (= e!2933333 call!328756)))

(declare-fun b!4702411 () Bool)

(declare-fun res!1985615 () Bool)

(assert (=> b!4702411 (=> (not res!1985615) (not e!2933335))))

(assert (=> b!4702411 (= res!1985615 (forall!11409 (toList!5693 lt!1865217) lambda!210613))))

(assert (= (and d!1495893 c!803765) b!4702408))

(assert (= (and d!1495893 (not c!803765)) b!4702409))

(assert (= (and b!4702409 res!1985614) b!4702410))

(assert (= (or b!4702408 b!4702409) bm!328751))

(assert (= (or b!4702408 b!4702409) bm!328749))

(assert (= (or b!4702408 b!4702410) bm!328750))

(assert (= (and d!1495893 res!1985616) b!4702411))

(assert (= (and b!4702411 res!1985615) b!4702407))

(declare-fun m!5619497 () Bool)

(assert (=> b!4702407 m!5619497))

(declare-fun m!5619499 () Bool)

(assert (=> bm!328750 m!5619499))

(declare-fun m!5619501 () Bool)

(assert (=> b!4702411 m!5619501))

(declare-fun m!5619503 () Bool)

(assert (=> b!4702409 m!5619503))

(declare-fun m!5619505 () Bool)

(assert (=> b!4702409 m!5619505))

(declare-fun m!5619507 () Bool)

(assert (=> b!4702409 m!5619507))

(declare-fun m!5619509 () Bool)

(assert (=> b!4702409 m!5619509))

(declare-fun m!5619511 () Bool)

(assert (=> b!4702409 m!5619511))

(declare-fun m!5619513 () Bool)

(assert (=> b!4702409 m!5619513))

(declare-fun m!5619515 () Bool)

(assert (=> b!4702409 m!5619515))

(assert (=> b!4702409 m!5619503))

(declare-fun m!5619517 () Bool)

(assert (=> b!4702409 m!5619517))

(declare-fun m!5619519 () Bool)

(assert (=> b!4702409 m!5619519))

(declare-fun m!5619521 () Bool)

(assert (=> b!4702409 m!5619521))

(assert (=> b!4702409 m!5619519))

(assert (=> b!4702409 m!5619505))

(declare-fun m!5619523 () Bool)

(assert (=> b!4702409 m!5619523))

(assert (=> bm!328749 m!5619499))

(declare-fun m!5619525 () Bool)

(assert (=> d!1495893 m!5619525))

(declare-fun m!5619527 () Bool)

(assert (=> d!1495893 m!5619527))

(assert (=> bm!328751 m!5618807))

(assert (=> b!4701953 d!1495893))

(declare-fun d!1495895 () Bool)

(declare-fun e!2933336 () Bool)

(assert (=> d!1495895 e!2933336))

(declare-fun res!1985618 () Bool)

(assert (=> d!1495895 (=> (not res!1985618) (not e!2933336))))

(declare-fun lt!1865860 () ListMap!5057)

(assert (=> d!1495895 (= res!1985618 (contains!15830 lt!1865860 (_1!30295 lt!1865246)))))

(declare-fun lt!1865859 () List!52667)

(assert (=> d!1495895 (= lt!1865860 (ListMap!5058 lt!1865859))))

(declare-fun lt!1865861 () Unit!126368)

(declare-fun lt!1865862 () Unit!126368)

(assert (=> d!1495895 (= lt!1865861 lt!1865862)))

(assert (=> d!1495895 (= (getValueByKey!1856 lt!1865859 (_1!30295 lt!1865246)) (Some!12203 (_2!30295 lt!1865246)))))

(assert (=> d!1495895 (= lt!1865862 (lemmaContainsTupThenGetReturnValue!1038 lt!1865859 (_1!30295 lt!1865246) (_2!30295 lt!1865246)))))

(assert (=> d!1495895 (= lt!1865859 (insertNoDuplicatedKeys!546 (toList!5693 (addToMapMapFromBucket!1334 lt!1865234 lt!1865217)) (_1!30295 lt!1865246) (_2!30295 lt!1865246)))))

(assert (=> d!1495895 (= (+!2186 (addToMapMapFromBucket!1334 lt!1865234 lt!1865217) lt!1865246) lt!1865860)))

(declare-fun b!4702412 () Bool)

(declare-fun res!1985617 () Bool)

(assert (=> b!4702412 (=> (not res!1985617) (not e!2933336))))

(assert (=> b!4702412 (= res!1985617 (= (getValueByKey!1856 (toList!5693 lt!1865860) (_1!30295 lt!1865246)) (Some!12203 (_2!30295 lt!1865246))))))

(declare-fun b!4702413 () Bool)

(assert (=> b!4702413 (= e!2933336 (contains!15832 (toList!5693 lt!1865860) lt!1865246))))

(assert (= (and d!1495895 res!1985618) b!4702412))

(assert (= (and b!4702412 res!1985617) b!4702413))

(declare-fun m!5619529 () Bool)

(assert (=> d!1495895 m!5619529))

(declare-fun m!5619531 () Bool)

(assert (=> d!1495895 m!5619531))

(declare-fun m!5619533 () Bool)

(assert (=> d!1495895 m!5619533))

(declare-fun m!5619535 () Bool)

(assert (=> d!1495895 m!5619535))

(declare-fun m!5619537 () Bool)

(assert (=> b!4702412 m!5619537))

(declare-fun m!5619539 () Bool)

(assert (=> b!4702413 m!5619539))

(assert (=> b!4701953 d!1495895))

(declare-fun bm!328752 () Bool)

(declare-fun call!328757 () Bool)

(declare-fun e!2933338 () List!52670)

(assert (=> bm!328752 (= call!328757 (contains!15834 e!2933338 key!4653))))

(declare-fun c!803766 () Bool)

(declare-fun c!803767 () Bool)

(assert (=> bm!328752 (= c!803766 c!803767)))

(declare-fun b!4702414 () Bool)

(declare-fun e!2933339 () Unit!126368)

(declare-fun lt!1865867 () Unit!126368)

(assert (=> b!4702414 (= e!2933339 lt!1865867)))

(declare-fun lt!1865866 () Unit!126368)

(assert (=> b!4702414 (= lt!1865866 (lemmaContainsKeyImpliesGetValueByKeyDefined!1749 (toList!5693 lt!1865249) key!4653))))

(assert (=> b!4702414 (isDefined!9460 (getValueByKey!1856 (toList!5693 lt!1865249) key!4653))))

(declare-fun lt!1865870 () Unit!126368)

(assert (=> b!4702414 (= lt!1865870 lt!1865866)))

(assert (=> b!4702414 (= lt!1865867 (lemmaInListThenGetKeysListContains!883 (toList!5693 lt!1865249) key!4653))))

(assert (=> b!4702414 call!328757))

(declare-fun b!4702415 () Bool)

(declare-fun e!2933340 () Unit!126368)

(assert (=> b!4702415 (= e!2933339 e!2933340)))

(declare-fun c!803768 () Bool)

(assert (=> b!4702415 (= c!803768 call!328757)))

(declare-fun b!4702416 () Bool)

(assert (=> b!4702416 (= e!2933338 (getKeysList!888 (toList!5693 lt!1865249)))))

(declare-fun b!4702417 () Bool)

(declare-fun e!2933337 () Bool)

(assert (=> b!4702417 (= e!2933337 (not (contains!15834 (keys!18799 lt!1865249) key!4653)))))

(declare-fun d!1495897 () Bool)

(declare-fun e!2933342 () Bool)

(assert (=> d!1495897 e!2933342))

(declare-fun res!1985619 () Bool)

(assert (=> d!1495897 (=> res!1985619 e!2933342)))

(assert (=> d!1495897 (= res!1985619 e!2933337)))

(declare-fun res!1985621 () Bool)

(assert (=> d!1495897 (=> (not res!1985621) (not e!2933337))))

(declare-fun lt!1865863 () Bool)

(assert (=> d!1495897 (= res!1985621 (not lt!1865863))))

(declare-fun lt!1865865 () Bool)

(assert (=> d!1495897 (= lt!1865863 lt!1865865)))

(declare-fun lt!1865864 () Unit!126368)

(assert (=> d!1495897 (= lt!1865864 e!2933339)))

(assert (=> d!1495897 (= c!803767 lt!1865865)))

(assert (=> d!1495897 (= lt!1865865 (containsKey!3181 (toList!5693 lt!1865249) key!4653))))

(assert (=> d!1495897 (= (contains!15830 lt!1865249 key!4653) lt!1865863)))

(declare-fun b!4702418 () Bool)

(assert (=> b!4702418 false))

(declare-fun lt!1865869 () Unit!126368)

(declare-fun lt!1865868 () Unit!126368)

(assert (=> b!4702418 (= lt!1865869 lt!1865868)))

(assert (=> b!4702418 (containsKey!3181 (toList!5693 lt!1865249) key!4653)))

(assert (=> b!4702418 (= lt!1865868 (lemmaInGetKeysListThenContainsKey!887 (toList!5693 lt!1865249) key!4653))))

(declare-fun Unit!126488 () Unit!126368)

(assert (=> b!4702418 (= e!2933340 Unit!126488)))

(declare-fun b!4702419 () Bool)

(declare-fun Unit!126489 () Unit!126368)

(assert (=> b!4702419 (= e!2933340 Unit!126489)))

(declare-fun b!4702420 () Bool)

(declare-fun e!2933341 () Bool)

(assert (=> b!4702420 (= e!2933342 e!2933341)))

(declare-fun res!1985620 () Bool)

(assert (=> b!4702420 (=> (not res!1985620) (not e!2933341))))

(assert (=> b!4702420 (= res!1985620 (isDefined!9460 (getValueByKey!1856 (toList!5693 lt!1865249) key!4653)))))

(declare-fun b!4702421 () Bool)

(assert (=> b!4702421 (= e!2933338 (keys!18799 lt!1865249))))

(declare-fun b!4702422 () Bool)

(assert (=> b!4702422 (= e!2933341 (contains!15834 (keys!18799 lt!1865249) key!4653))))

(assert (= (and d!1495897 c!803767) b!4702414))

(assert (= (and d!1495897 (not c!803767)) b!4702415))

(assert (= (and b!4702415 c!803768) b!4702418))

(assert (= (and b!4702415 (not c!803768)) b!4702419))

(assert (= (or b!4702414 b!4702415) bm!328752))

(assert (= (and bm!328752 c!803766) b!4702416))

(assert (= (and bm!328752 (not c!803766)) b!4702421))

(assert (= (and d!1495897 res!1985621) b!4702417))

(assert (= (and d!1495897 (not res!1985619)) b!4702420))

(assert (= (and b!4702420 res!1985620) b!4702422))

(declare-fun m!5619541 () Bool)

(assert (=> b!4702418 m!5619541))

(declare-fun m!5619543 () Bool)

(assert (=> b!4702418 m!5619543))

(declare-fun m!5619545 () Bool)

(assert (=> bm!328752 m!5619545))

(declare-fun m!5619547 () Bool)

(assert (=> b!4702420 m!5619547))

(assert (=> b!4702420 m!5619547))

(declare-fun m!5619549 () Bool)

(assert (=> b!4702420 m!5619549))

(assert (=> b!4702417 m!5618567))

(assert (=> b!4702417 m!5618567))

(declare-fun m!5619551 () Bool)

(assert (=> b!4702417 m!5619551))

(assert (=> d!1495897 m!5619541))

(declare-fun m!5619553 () Bool)

(assert (=> b!4702414 m!5619553))

(assert (=> b!4702414 m!5619547))

(assert (=> b!4702414 m!5619547))

(assert (=> b!4702414 m!5619549))

(declare-fun m!5619555 () Bool)

(assert (=> b!4702414 m!5619555))

(assert (=> b!4702422 m!5618567))

(assert (=> b!4702422 m!5618567))

(assert (=> b!4702422 m!5619551))

(declare-fun m!5619557 () Bool)

(assert (=> b!4702416 m!5619557))

(assert (=> b!4702421 m!5618567))

(assert (=> b!4701953 d!1495897))

(declare-fun bs!1096317 () Bool)

(declare-fun d!1495899 () Bool)

(assert (= bs!1096317 (and d!1495899 d!1495861)))

(declare-fun lambda!210614 () Int)

(assert (=> bs!1096317 (= lambda!210614 lambda!210592)))

(declare-fun bs!1096318 () Bool)

(assert (= bs!1096318 (and d!1495899 d!1495883)))

(assert (=> bs!1096318 (= lambda!210614 lambda!210604)))

(declare-fun bs!1096319 () Bool)

(assert (= bs!1096319 (and d!1495899 d!1495707)))

(assert (=> bs!1096319 (= lambda!210614 lambda!210560)))

(declare-fun bs!1096320 () Bool)

(assert (= bs!1096320 (and d!1495899 d!1495663)))

(assert (=> bs!1096320 (= lambda!210614 lambda!210483)))

(declare-fun bs!1096321 () Bool)

(assert (= bs!1096321 (and d!1495899 d!1495639)))

(assert (=> bs!1096321 (= lambda!210614 lambda!210470)))

(declare-fun bs!1096322 () Bool)

(assert (= bs!1096322 (and d!1495899 d!1495829)))

(assert (=> bs!1096322 (= lambda!210614 lambda!210584)))

(declare-fun bs!1096323 () Bool)

(assert (= bs!1096323 (and d!1495899 d!1495711)))

(assert (=> bs!1096323 (not (= lambda!210614 lambda!210563))))

(declare-fun bs!1096324 () Bool)

(assert (= bs!1096324 (and d!1495899 d!1495653)))

(assert (=> bs!1096324 (= lambda!210614 lambda!210471)))

(declare-fun bs!1096325 () Bool)

(assert (= bs!1096325 (and d!1495899 d!1495873)))

(assert (=> bs!1096325 (= lambda!210614 lambda!210603)))

(declare-fun bs!1096326 () Bool)

(assert (= bs!1096326 (and d!1495899 start!476980)))

(assert (=> bs!1096326 (= lambda!210614 lambda!210453)))

(declare-fun bs!1096327 () Bool)

(assert (= bs!1096327 (and d!1495899 d!1495657)))

(assert (=> bs!1096327 (= lambda!210614 lambda!210478)))

(declare-fun bs!1096328 () Bool)

(assert (= bs!1096328 (and d!1495899 d!1495845)))

(assert (=> bs!1096328 (= lambda!210614 lambda!210591)))

(declare-fun bs!1096329 () Bool)

(assert (= bs!1096329 (and d!1495899 d!1495889)))

(assert (=> bs!1096329 (= lambda!210614 lambda!210609)))

(declare-fun lt!1865871 () ListMap!5057)

(assert (=> d!1495899 (invariantList!1448 (toList!5693 lt!1865871))))

(declare-fun e!2933343 () ListMap!5057)

(assert (=> d!1495899 (= lt!1865871 e!2933343)))

(declare-fun c!803769 () Bool)

(assert (=> d!1495899 (= c!803769 ((_ is Cons!52544) (Cons!52544 (tuple2!54005 hash!405 lt!1865216) (t!359882 (toList!5694 lm!2023)))))))

(assert (=> d!1495899 (forall!11407 (Cons!52544 (tuple2!54005 hash!405 lt!1865216) (t!359882 (toList!5694 lm!2023))) lambda!210614)))

(assert (=> d!1495899 (= (extractMap!1928 (Cons!52544 (tuple2!54005 hash!405 lt!1865216) (t!359882 (toList!5694 lm!2023)))) lt!1865871)))

(declare-fun b!4702423 () Bool)

(assert (=> b!4702423 (= e!2933343 (addToMapMapFromBucket!1334 (_2!30296 (h!58827 (Cons!52544 (tuple2!54005 hash!405 lt!1865216) (t!359882 (toList!5694 lm!2023))))) (extractMap!1928 (t!359882 (Cons!52544 (tuple2!54005 hash!405 lt!1865216) (t!359882 (toList!5694 lm!2023)))))))))

(declare-fun b!4702424 () Bool)

(assert (=> b!4702424 (= e!2933343 (ListMap!5058 Nil!52543))))

(assert (= (and d!1495899 c!803769) b!4702423))

(assert (= (and d!1495899 (not c!803769)) b!4702424))

(declare-fun m!5619559 () Bool)

(assert (=> d!1495899 m!5619559))

(declare-fun m!5619561 () Bool)

(assert (=> d!1495899 m!5619561))

(declare-fun m!5619563 () Bool)

(assert (=> b!4702423 m!5619563))

(assert (=> b!4702423 m!5619563))

(declare-fun m!5619565 () Bool)

(assert (=> b!4702423 m!5619565))

(assert (=> b!4701953 d!1495899))

(declare-fun d!1495901 () Bool)

(assert (=> d!1495901 (eq!1061 (addToMapMapFromBucket!1334 (Cons!52543 lt!1865250 lt!1865216) lt!1865217) (+!2186 (addToMapMapFromBucket!1334 lt!1865216 lt!1865217) lt!1865250))))

(declare-fun lt!1865872 () Unit!126368)

(assert (=> d!1495901 (= lt!1865872 (choose!32931 lt!1865250 lt!1865216 lt!1865217))))

(assert (=> d!1495901 (noDuplicateKeys!1902 lt!1865216)))

(assert (=> d!1495901 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!310 lt!1865250 lt!1865216 lt!1865217) lt!1865872)))

(declare-fun bs!1096330 () Bool)

(assert (= bs!1096330 d!1495901))

(assert (=> bs!1096330 m!5619135))

(assert (=> bs!1096330 m!5618291))

(assert (=> bs!1096330 m!5618303))

(declare-fun m!5619567 () Bool)

(assert (=> bs!1096330 m!5619567))

(assert (=> bs!1096330 m!5618303))

(assert (=> bs!1096330 m!5618293))

(assert (=> bs!1096330 m!5618305))

(assert (=> bs!1096330 m!5618291))

(assert (=> bs!1096330 m!5618293))

(assert (=> b!4701953 d!1495901))

(declare-fun d!1495903 () Bool)

(assert (=> d!1495903 (= (eq!1061 lt!1865233 (+!2186 lt!1865235 (h!58826 oldBucket!34))) (= (content!9274 (toList!5693 lt!1865233)) (content!9274 (toList!5693 (+!2186 lt!1865235 (h!58826 oldBucket!34))))))))

(declare-fun bs!1096331 () Bool)

(assert (= bs!1096331 d!1495903))

(assert (=> bs!1096331 m!5618477))

(declare-fun m!5619569 () Bool)

(assert (=> bs!1096331 m!5619569))

(assert (=> b!4701953 d!1495903))

(declare-fun bs!1096332 () Bool)

(declare-fun d!1495905 () Bool)

(assert (= bs!1096332 (and d!1495905 b!4702401)))

(declare-fun lambda!210615 () Int)

(assert (=> bs!1096332 (not (= lambda!210615 lambda!210605))))

(declare-fun bs!1096333 () Bool)

(assert (= bs!1096333 (and d!1495905 b!4702402)))

(assert (=> bs!1096333 (not (= lambda!210615 lambda!210606))))

(declare-fun bs!1096334 () Bool)

(assert (= bs!1096334 (and d!1495905 b!4702386)))

(assert (=> bs!1096334 (not (= lambda!210615 lambda!210595))))

(declare-fun bs!1096335 () Bool)

(assert (= bs!1096335 (and d!1495905 d!1495691)))

(assert (=> bs!1096335 (not (= lambda!210615 lambda!210559))))

(declare-fun bs!1096336 () Bool)

(assert (= bs!1096336 (and d!1495905 d!1495867)))

(assert (=> bs!1096336 (not (= lambda!210615 lambda!210596))))

(declare-fun bs!1096337 () Bool)

(assert (= bs!1096337 (and d!1495905 b!4702126)))

(assert (=> bs!1096337 (not (= lambda!210615 lambda!210557))))

(declare-fun bs!1096338 () Bool)

(assert (= bs!1096338 (and d!1495905 d!1495871)))

(assert (=> bs!1096338 (not (= lambda!210615 lambda!210600))))

(declare-fun bs!1096339 () Bool)

(assert (= bs!1096339 (and d!1495905 d!1495627)))

(assert (=> bs!1096339 (= lambda!210615 lambda!210464)))

(declare-fun bs!1096340 () Bool)

(assert (= bs!1096340 (and d!1495905 b!4702391)))

(assert (=> bs!1096340 (not (= lambda!210615 lambda!210598))))

(assert (=> bs!1096333 (not (= lambda!210615 lambda!210607))))

(declare-fun bs!1096341 () Bool)

(assert (= bs!1096341 (and d!1495905 b!4702385)))

(assert (=> bs!1096341 (not (= lambda!210615 lambda!210593))))

(declare-fun bs!1096342 () Bool)

(assert (= bs!1096342 (and d!1495905 b!4702125)))

(assert (=> bs!1096342 (not (= lambda!210615 lambda!210556))))

(declare-fun bs!1096343 () Bool)

(assert (= bs!1096343 (and d!1495905 b!4702409)))

(assert (=> bs!1096343 (not (= lambda!210615 lambda!210612))))

(assert (=> bs!1096334 (not (= lambda!210615 lambda!210594))))

(declare-fun bs!1096344 () Bool)

(assert (= bs!1096344 (and d!1495905 b!4702390)))

(assert (=> bs!1096344 (not (= lambda!210615 lambda!210597))))

(assert (=> bs!1096340 (not (= lambda!210615 lambda!210599))))

(declare-fun bs!1096345 () Bool)

(assert (= bs!1096345 (and d!1495905 b!4702408)))

(assert (=> bs!1096345 (not (= lambda!210615 lambda!210610))))

(assert (=> bs!1096337 (not (= lambda!210615 lambda!210558))))

(declare-fun bs!1096346 () Bool)

(assert (= bs!1096346 (and d!1495905 d!1495893)))

(assert (=> bs!1096346 (not (= lambda!210615 lambda!210613))))

(assert (=> bs!1096343 (not (= lambda!210615 lambda!210611))))

(declare-fun bs!1096347 () Bool)

(assert (= bs!1096347 (and d!1495905 d!1495887)))

(assert (=> bs!1096347 (not (= lambda!210615 lambda!210608))))

(assert (=> d!1495905 true))

(assert (=> d!1495905 true))

(assert (=> d!1495905 (= (allKeysSameHash!1728 oldBucket!34 hash!405 hashF!1323) (forall!11409 oldBucket!34 lambda!210615))))

(declare-fun bs!1096348 () Bool)

(assert (= bs!1096348 d!1495905))

(declare-fun m!5619571 () Bool)

(assert (=> bs!1096348 m!5619571))

(assert (=> b!4701942 d!1495905))

(declare-fun b!4702429 () Bool)

(declare-fun e!2933346 () Bool)

(declare-fun tp!1346744 () Bool)

(declare-fun tp!1346745 () Bool)

(assert (=> b!4702429 (= e!2933346 (and tp!1346744 tp!1346745))))

(assert (=> b!4701954 (= tp!1346728 e!2933346)))

(assert (= (and b!4701954 ((_ is Cons!52544) (toList!5694 lm!2023))) b!4702429))

(declare-fun tp!1346748 () Bool)

(declare-fun b!4702434 () Bool)

(declare-fun e!2933349 () Bool)

(assert (=> b!4702434 (= e!2933349 (and tp_is_empty!30901 tp_is_empty!30903 tp!1346748))))

(assert (=> b!4701951 (= tp!1346729 e!2933349)))

(assert (= (and b!4701951 ((_ is Cons!52543) (t!359881 oldBucket!34))) b!4702434))

(declare-fun e!2933350 () Bool)

(declare-fun b!4702435 () Bool)

(declare-fun tp!1346749 () Bool)

(assert (=> b!4702435 (= e!2933350 (and tp_is_empty!30901 tp_is_empty!30903 tp!1346749))))

(assert (=> b!4701963 (= tp!1346727 e!2933350)))

(assert (= (and b!4701963 ((_ is Cons!52543) (t!359881 newBucket!218))) b!4702435))

(declare-fun b_lambda!177423 () Bool)

(assert (= b_lambda!177415 (or start!476980 b_lambda!177423)))

(declare-fun bs!1096349 () Bool)

(declare-fun d!1495907 () Bool)

(assert (= bs!1096349 (and d!1495907 start!476980)))

(assert (=> bs!1096349 (= (dynLambda!21751 lambda!210453 lt!1865229) (noDuplicateKeys!1902 (_2!30296 lt!1865229)))))

(declare-fun m!5619573 () Bool)

(assert (=> bs!1096349 m!5619573))

(assert (=> d!1495823 d!1495907))

(declare-fun b_lambda!177425 () Bool)

(assert (= b_lambda!177407 (or start!476980 b_lambda!177425)))

(declare-fun bs!1096350 () Bool)

(declare-fun d!1495909 () Bool)

(assert (= bs!1096350 (and d!1495909 start!476980)))

(assert (=> bs!1096350 (= (dynLambda!21751 lambda!210453 (h!58827 (toList!5694 lm!2023))) (noDuplicateKeys!1902 (_2!30296 (h!58827 (toList!5694 lm!2023)))))))

(assert (=> bs!1096350 m!5618805))

(assert (=> b!4702204 d!1495909))

(declare-fun b_lambda!177427 () Bool)

(assert (= b_lambda!177411 (or start!476980 b_lambda!177427)))

(declare-fun bs!1096351 () Bool)

(declare-fun d!1495911 () Bool)

(assert (= bs!1096351 (and d!1495911 start!476980)))

(assert (=> bs!1096351 (= (dynLambda!21751 lambda!210453 (h!58827 lt!1865223)) (noDuplicateKeys!1902 (_2!30296 (h!58827 lt!1865223))))))

(declare-fun m!5619575 () Bool)

(assert (=> bs!1096351 m!5619575))

(assert (=> b!4702256 d!1495911))

(check-sat (not d!1495769) (not b!4702421) (not b!4702420) (not d!1495751) (not b!4702393) (not b!4702038) (not bm!328742) (not bs!1096350) tp_is_empty!30903 (not d!1495749) (not bm!328744) (not d!1495657) (not bm!328750) (not d!1495639) (not b!4702376) (not d!1495807) (not d!1495787) (not b!4702331) (not b!4702210) (not b!4702040) (not d!1495793) (not bs!1096349) (not d!1495753) (not bm!328739) (not b!4702341) (not b!4702402) (not b!4702399) (not b!4702245) (not b!4702375) (not d!1495653) (not b!4702383) (not d!1495819) (not b!4702422) (not b!4702389) (not d!1495627) (not d!1495875) (not d!1495899) (not d!1495691) (not bm!328725) (not b!4702324) (not b!4702288) (not b!4702434) (not d!1495853) (not d!1495719) (not d!1495659) (not d!1495829) (not bs!1096351) (not b!4702367) (not b!4702126) (not d!1495893) (not d!1495711) (not b!4702174) (not d!1495721) (not d!1495785) (not b!4702322) (not bm!328743) (not d!1495889) (not b!4702435) (not d!1495655) (not d!1495825) (not bm!328749) (not d!1495709) (not b!4702211) (not b!4702241) (not b!4702205) (not d!1495815) (not d!1495883) (not b!4702370) (not b!4702371) (not bm!328740) (not d!1495887) (not b!4702294) (not b!4702246) (not bm!328741) (not bm!328751) (not b!4702257) (not b!4702295) (not b!4702394) (not bm!328752) (not d!1495871) (not d!1495855) (not b!4702398) (not b!4702429) (not b!4702192) (not bm!328745) (not b!4702260) (not b!4702240) (not d!1495747) (not b!4702029) (not b!4702128) (not d!1495857) (not d!1495779) (not b!4702405) (not d!1495625) (not d!1495629) (not b!4702236) (not d!1495843) (not b!4702124) (not b!4702269) (not bm!328726) (not d!1495861) (not bm!328748) (not b!4702292) (not b!4702244) (not b!4702388) (not b!4702369) (not b!4702023) (not b!4702321) (not d!1495755) (not b!4702396) (not b!4702252) (not d!1495891) (not b!4702373) (not b!4702417) (not b!4702412) (not d!1495895) (not d!1495661) (not d!1495811) (not d!1495633) (not d!1495877) (not b_lambda!177423) (not d!1495649) (not b!4702173) (not d!1495847) (not b!4702333) (not d!1495901) (not b!4702289) (not d!1495823) (not d!1495905) tp_is_empty!30901 (not b!4702374) (not d!1495885) (not b!4702193) (not b!4702416) (not b!4702149) (not b!4702404) (not bm!328724) (not b_lambda!177427) (not b!4702418) (not bm!328747) (not d!1495873) (not b!4702339) (not b!4702414) (not b!4702386) (not b!4702380) (not b!4702348) (not b!4702243) (not d!1495775) (not d!1495903) (not b!4702395) (not b!4702411) (not b!4702384) (not d!1495845) (not d!1495859) (not b!4702413) (not b!4702025) (not d!1495707) (not b!4702400) (not b!4702407) (not b!4702391) (not b_lambda!177425) (not d!1495897) (not b!4702323) (not d!1495879) (not d!1495663) (not d!1495863) (not bm!328746) (not d!1495867) (not d!1495783) (not b!4702409) (not b!4702382) (not b!4702423))
(check-sat)
