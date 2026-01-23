; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!477990 () Bool)

(assert start!477990)

(declare-fun res!1988114 () Bool)

(declare-fun e!2935799 () Bool)

(assert (=> start!477990 (=> (not res!1988114) (not e!2935799))))

(declare-datatypes ((K!13943 0))(
  ( (K!13944 (val!19425 Int)) )
))
(declare-datatypes ((V!14189 0))(
  ( (V!14190 (val!19426 Int)) )
))
(declare-datatypes ((tuple2!54062 0))(
  ( (tuple2!54063 (_1!30325 K!13943) (_2!30325 V!14189)) )
))
(declare-datatypes ((List!52711 0))(
  ( (Nil!52587) (Cons!52587 (h!58884 tuple2!54062) (t!359939 List!52711)) )
))
(declare-datatypes ((tuple2!54064 0))(
  ( (tuple2!54065 (_1!30326 (_ BitVec 64)) (_2!30326 List!52711)) )
))
(declare-datatypes ((List!52712 0))(
  ( (Nil!52588) (Cons!52588 (h!58885 tuple2!54064) (t!359940 List!52712)) )
))
(declare-datatypes ((ListLongMap!4253 0))(
  ( (ListLongMap!4254 (toList!5723 List!52712)) )
))
(declare-fun lm!2023 () ListLongMap!4253)

(declare-fun lambda!211688 () Int)

(declare-fun forall!11436 (List!52712 Int) Bool)

(assert (=> start!477990 (= res!1988114 (forall!11436 (toList!5723 lm!2023) lambda!211688))))

(assert (=> start!477990 e!2935799))

(declare-fun e!2935808 () Bool)

(declare-fun inv!67818 (ListLongMap!4253) Bool)

(assert (=> start!477990 (and (inv!67818 lm!2023) e!2935808)))

(declare-fun tp_is_empty!30961 () Bool)

(assert (=> start!477990 tp_is_empty!30961))

(declare-fun e!2935798 () Bool)

(assert (=> start!477990 e!2935798))

(assert (=> start!477990 true))

(declare-fun e!2935804 () Bool)

(assert (=> start!477990 e!2935804))

(declare-fun e!2935809 () Bool)

(declare-fun b!4706458 () Bool)

(declare-fun lt!1871318 () tuple2!54064)

(declare-fun tail!8776 (List!52712) List!52712)

(assert (=> b!4706458 (= e!2935809 (forall!11436 (Cons!52588 lt!1871318 (tail!8776 (toList!5723 lm!2023))) lambda!211688))))

(declare-fun b!4706459 () Bool)

(declare-fun res!1988133 () Bool)

(assert (=> b!4706459 (=> res!1988133 e!2935809)))

(declare-datatypes ((ListMap!5087 0))(
  ( (ListMap!5088 (toList!5724 List!52711)) )
))
(declare-fun lt!1871335 () ListMap!5087)

(declare-fun lt!1871322 () ListMap!5087)

(declare-fun eq!1076 (ListMap!5087 ListMap!5087) Bool)

(assert (=> b!4706459 (= res!1988133 (not (eq!1076 lt!1871335 lt!1871322)))))

(declare-fun b!4706460 () Bool)

(declare-fun e!2935795 () Bool)

(declare-fun e!2935807 () Bool)

(assert (=> b!4706460 (= e!2935795 e!2935807)))

(declare-fun res!1988128 () Bool)

(assert (=> b!4706460 (=> (not res!1988128) (not e!2935807))))

(declare-fun lt!1871354 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4706460 (= res!1988128 (= lt!1871354 hash!405))))

(declare-datatypes ((Hashable!6286 0))(
  ( (HashableExt!6285 (__x!31989 Int)) )
))
(declare-fun hashF!1323 () Hashable!6286)

(declare-fun key!4653 () K!13943)

(declare-fun hash!4225 (Hashable!6286 K!13943) (_ BitVec 64))

(assert (=> b!4706460 (= lt!1871354 (hash!4225 hashF!1323 key!4653))))

(declare-fun b!4706461 () Bool)

(declare-fun res!1988127 () Bool)

(assert (=> b!4706461 (=> (not res!1988127) (not e!2935799))))

(declare-fun newBucket!218 () List!52711)

(declare-fun noDuplicateKeys!1917 (List!52711) Bool)

(assert (=> b!4706461 (= res!1988127 (noDuplicateKeys!1917 newBucket!218))))

(declare-fun b!4706462 () Bool)

(declare-fun e!2935805 () Bool)

(declare-fun e!2935801 () Bool)

(assert (=> b!4706462 (= e!2935805 e!2935801)))

(declare-fun res!1988132 () Bool)

(assert (=> b!4706462 (=> res!1988132 e!2935801)))

(declare-fun lt!1871349 () ListMap!5087)

(declare-fun lt!1871343 () ListMap!5087)

(assert (=> b!4706462 (= res!1988132 (not (eq!1076 lt!1871349 lt!1871343)))))

(declare-fun lt!1871317 () ListMap!5087)

(declare-fun oldBucket!34 () List!52711)

(declare-fun +!2201 (ListMap!5087 tuple2!54062) ListMap!5087)

(assert (=> b!4706462 (= lt!1871343 (+!2201 lt!1871317 (h!58884 oldBucket!34)))))

(declare-fun lt!1871337 () ListMap!5087)

(assert (=> b!4706462 (eq!1076 lt!1871337 (+!2201 lt!1871317 (h!58884 oldBucket!34)))))

(declare-fun lt!1871332 () ListMap!5087)

(declare-datatypes ((Unit!127238 0))(
  ( (Unit!127239) )
))
(declare-fun lt!1871330 () Unit!127238)

(declare-fun lemmaAddToEqMapsPreservesEq!99 (ListMap!5087 ListMap!5087 K!13943 V!14189) Unit!127238)

(assert (=> b!4706462 (= lt!1871330 (lemmaAddToEqMapsPreservesEq!99 lt!1871332 lt!1871317 (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34))))))

(declare-fun b!4706463 () Bool)

(declare-fun e!2935802 () Bool)

(assert (=> b!4706463 (= e!2935802 e!2935805)))

(declare-fun res!1988115 () Bool)

(assert (=> b!4706463 (=> res!1988115 e!2935805)))

(declare-fun lt!1871328 () ListMap!5087)

(assert (=> b!4706463 (= res!1988115 (not (= lt!1871328 lt!1871349)))))

(assert (=> b!4706463 (= lt!1871349 (+!2201 lt!1871332 (h!58884 oldBucket!34)))))

(declare-fun lt!1871352 () ListMap!5087)

(declare-fun -!721 (ListMap!5087 K!13943) ListMap!5087)

(assert (=> b!4706463 (= lt!1871328 (-!721 lt!1871352 key!4653))))

(declare-fun lt!1871341 () ListMap!5087)

(assert (=> b!4706463 (= lt!1871352 (+!2201 lt!1871341 (h!58884 oldBucket!34)))))

(declare-fun lt!1871326 () ListMap!5087)

(assert (=> b!4706463 (= lt!1871326 lt!1871337)))

(assert (=> b!4706463 (= lt!1871337 (+!2201 lt!1871332 (h!58884 oldBucket!34)))))

(assert (=> b!4706463 (= lt!1871326 (-!721 (+!2201 lt!1871341 (h!58884 oldBucket!34)) key!4653))))

(declare-fun lt!1871340 () Unit!127238)

(declare-fun addRemoveCommutativeForDiffKeys!122 (ListMap!5087 K!13943 V!14189 K!13943) Unit!127238)

(assert (=> b!4706463 (= lt!1871340 (addRemoveCommutativeForDiffKeys!122 lt!1871341 (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34)) key!4653))))

(declare-fun b!4706464 () Bool)

(declare-fun e!2935803 () Bool)

(declare-fun e!2935800 () Bool)

(assert (=> b!4706464 (= e!2935803 (not e!2935800))))

(declare-fun res!1988137 () Bool)

(assert (=> b!4706464 (=> res!1988137 e!2935800)))

(assert (=> b!4706464 (= res!1988137 (or (and (is-Cons!52587 oldBucket!34) (= (_1!30325 (h!58884 oldBucket!34)) key!4653)) (not (is-Cons!52587 oldBucket!34)) (= (_1!30325 (h!58884 oldBucket!34)) key!4653)))))

(declare-fun lt!1871356 () ListMap!5087)

(declare-fun lt!1871357 () ListMap!5087)

(declare-fun addToMapMapFromBucket!1349 (List!52711 ListMap!5087) ListMap!5087)

(assert (=> b!4706464 (= lt!1871356 (addToMapMapFromBucket!1349 (_2!30326 (h!58885 (toList!5723 lm!2023))) lt!1871357))))

(declare-fun extractMap!1943 (List!52712) ListMap!5087)

(assert (=> b!4706464 (= lt!1871357 (extractMap!1943 (t!359940 (toList!5723 lm!2023))))))

(declare-fun tail!8777 (ListLongMap!4253) ListLongMap!4253)

(assert (=> b!4706464 (= (t!359940 (toList!5723 lm!2023)) (toList!5723 (tail!8777 lm!2023)))))

(declare-fun b!4706465 () Bool)

(declare-fun e!2935796 () Bool)

(declare-fun e!2935810 () Bool)

(assert (=> b!4706465 (= e!2935796 e!2935810)))

(declare-fun res!1988123 () Bool)

(assert (=> b!4706465 (=> res!1988123 e!2935810)))

(declare-fun lt!1871320 () ListMap!5087)

(declare-fun lt!1871331 () ListMap!5087)

(assert (=> b!4706465 (= res!1988123 (not (eq!1076 lt!1871331 (+!2201 lt!1871320 (h!58884 oldBucket!34)))))))

(declare-fun lt!1871355 () List!52711)

(assert (=> b!4706465 (= lt!1871320 (extractMap!1943 (Cons!52588 (tuple2!54065 hash!405 lt!1871355) (t!359940 (toList!5723 lm!2023)))))))

(declare-fun lt!1871347 () tuple2!54064)

(assert (=> b!4706465 (= lt!1871331 (extractMap!1943 (Cons!52588 lt!1871347 (t!359940 (toList!5723 lm!2023)))))))

(declare-fun lt!1871325 () tuple2!54062)

(declare-fun lt!1871346 () List!52711)

(assert (=> b!4706465 (eq!1076 (addToMapMapFromBucket!1349 (Cons!52587 lt!1871325 lt!1871346) lt!1871357) (+!2201 (addToMapMapFromBucket!1349 lt!1871346 lt!1871357) lt!1871325))))

(declare-fun lt!1871348 () Unit!127238)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!325 (tuple2!54062 List!52711 ListMap!5087) Unit!127238)

(assert (=> b!4706465 (= lt!1871348 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!325 lt!1871325 lt!1871346 lt!1871357))))

(declare-fun head!10097 (List!52711) tuple2!54062)

(assert (=> b!4706465 (= lt!1871325 (head!10097 newBucket!218))))

(declare-fun lt!1871350 () tuple2!54062)

(assert (=> b!4706465 (eq!1076 (addToMapMapFromBucket!1349 (Cons!52587 lt!1871350 lt!1871355) lt!1871357) (+!2201 (addToMapMapFromBucket!1349 lt!1871355 lt!1871357) lt!1871350))))

(declare-fun lt!1871345 () Unit!127238)

(assert (=> b!4706465 (= lt!1871345 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!325 lt!1871350 lt!1871355 lt!1871357))))

(assert (=> b!4706465 (= lt!1871350 (head!10097 oldBucket!34))))

(declare-fun contains!15901 (ListMap!5087 K!13943) Bool)

(assert (=> b!4706465 (contains!15901 lt!1871341 key!4653)))

(declare-fun lt!1871344 () List!52712)

(assert (=> b!4706465 (= lt!1871341 (extractMap!1943 lt!1871344))))

(declare-fun lt!1871333 () Unit!127238)

(declare-fun lt!1871319 () ListLongMap!4253)

(declare-fun lemmaListContainsThenExtractedMapContains!509 (ListLongMap!4253 K!13943 Hashable!6286) Unit!127238)

(assert (=> b!4706465 (= lt!1871333 (lemmaListContainsThenExtractedMapContains!509 lt!1871319 key!4653 hashF!1323))))

(assert (=> b!4706465 (= lt!1871319 (ListLongMap!4254 lt!1871344))))

(declare-fun lt!1871342 () tuple2!54064)

(assert (=> b!4706465 (= lt!1871344 (Cons!52588 lt!1871342 (t!359940 (toList!5723 lm!2023))))))

(assert (=> b!4706465 (= lt!1871342 (tuple2!54065 hash!405 (t!359939 oldBucket!34)))))

(declare-fun b!4706466 () Bool)

(declare-fun tp!1347003 () Bool)

(assert (=> b!4706466 (= e!2935808 tp!1347003)))

(declare-fun b!4706467 () Bool)

(declare-fun res!1988121 () Bool)

(assert (=> b!4706467 (=> res!1988121 e!2935810)))

(assert (=> b!4706467 (= res!1988121 (not (= (h!58884 oldBucket!34) lt!1871325)))))

(declare-fun b!4706468 () Bool)

(assert (=> b!4706468 (= e!2935807 e!2935803)))

(declare-fun res!1988116 () Bool)

(assert (=> b!4706468 (=> (not res!1988116) (not e!2935803))))

(declare-fun head!10098 (List!52712) tuple2!54064)

(assert (=> b!4706468 (= res!1988116 (= (head!10098 (toList!5723 lm!2023)) lt!1871347))))

(assert (=> b!4706468 (= lt!1871347 (tuple2!54065 hash!405 oldBucket!34))))

(declare-fun b!4706469 () Bool)

(assert (=> b!4706469 (= e!2935810 e!2935802)))

(declare-fun res!1988125 () Bool)

(assert (=> b!4706469 (=> res!1988125 e!2935802)))

(assert (=> b!4706469 (= res!1988125 (not (eq!1076 lt!1871317 lt!1871332)))))

(assert (=> b!4706469 (= lt!1871332 (-!721 lt!1871341 key!4653))))

(declare-fun lt!1871334 () tuple2!54064)

(assert (=> b!4706469 (= lt!1871317 (extractMap!1943 (Cons!52588 lt!1871334 (t!359940 (toList!5723 lm!2023)))))))

(declare-fun lt!1871353 () List!52712)

(assert (=> b!4706469 (eq!1076 (extractMap!1943 (Cons!52588 lt!1871334 lt!1871353)) (-!721 (extractMap!1943 (Cons!52588 lt!1871342 lt!1871353)) key!4653))))

(assert (=> b!4706469 (= lt!1871353 (tail!8776 lt!1871344))))

(assert (=> b!4706469 (= lt!1871334 (tuple2!54065 hash!405 lt!1871346))))

(declare-fun lt!1871338 () Unit!127238)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!91 (ListLongMap!4253 (_ BitVec 64) List!52711 List!52711 K!13943 Hashable!6286) Unit!127238)

(assert (=> b!4706469 (= lt!1871338 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!91 lt!1871319 hash!405 (t!359939 oldBucket!34) lt!1871346 key!4653 hashF!1323))))

(declare-fun b!4706470 () Bool)

(declare-fun res!1988113 () Bool)

(assert (=> b!4706470 (=> (not res!1988113) (not e!2935807))))

(declare-fun allKeysSameHash!1743 (List!52711 (_ BitVec 64) Hashable!6286) Bool)

(assert (=> b!4706470 (= res!1988113 (allKeysSameHash!1743 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4706471 () Bool)

(declare-fun e!2935806 () Bool)

(assert (=> b!4706471 (= e!2935806 e!2935809)))

(declare-fun res!1988131 () Bool)

(assert (=> b!4706471 (=> res!1988131 e!2935809)))

(assert (=> b!4706471 (= res!1988131 (not (eq!1076 lt!1871343 lt!1871335)))))

(assert (=> b!4706471 (= lt!1871335 (extractMap!1943 (Cons!52588 lt!1871318 (t!359940 (toList!5723 lm!2023)))))))

(assert (=> b!4706471 (= lt!1871318 (tuple2!54065 hash!405 newBucket!218))))

(declare-fun b!4706472 () Bool)

(assert (=> b!4706472 (= e!2935801 e!2935806)))

(declare-fun res!1988130 () Bool)

(assert (=> b!4706472 (=> res!1988130 e!2935806)))

(assert (=> b!4706472 (= res!1988130 (not (eq!1076 lt!1871349 lt!1871322)))))

(assert (=> b!4706472 (eq!1076 lt!1871328 lt!1871322)))

(assert (=> b!4706472 (= lt!1871322 (-!721 lt!1871331 key!4653))))

(declare-fun lt!1871323 () Unit!127238)

(declare-fun lemmaRemovePreservesEq!103 (ListMap!5087 ListMap!5087 K!13943) Unit!127238)

(assert (=> b!4706472 (= lt!1871323 (lemmaRemovePreservesEq!103 lt!1871352 lt!1871331 key!4653))))

(declare-fun b!4706473 () Bool)

(declare-fun tp_is_empty!30963 () Bool)

(declare-fun tp!1347002 () Bool)

(assert (=> b!4706473 (= e!2935798 (and tp_is_empty!30961 tp_is_empty!30963 tp!1347002))))

(declare-fun b!4706474 () Bool)

(declare-fun res!1988126 () Bool)

(assert (=> b!4706474 (=> res!1988126 e!2935796)))

(declare-fun removePairForKey!1512 (List!52711 K!13943) List!52711)

(assert (=> b!4706474 (= res!1988126 (not (= (removePairForKey!1512 (t!359939 oldBucket!34) key!4653) lt!1871346)))))

(declare-fun b!4706475 () Bool)

(declare-fun res!1988129 () Bool)

(assert (=> b!4706475 (=> (not res!1988129) (not e!2935807))))

(declare-fun allKeysSameHashInMap!1831 (ListLongMap!4253 Hashable!6286) Bool)

(assert (=> b!4706475 (= res!1988129 (allKeysSameHashInMap!1831 lm!2023 hashF!1323))))

(declare-fun b!4706476 () Bool)

(declare-fun res!1988122 () Bool)

(assert (=> b!4706476 (=> (not res!1988122) (not e!2935799))))

(assert (=> b!4706476 (= res!1988122 (= (removePairForKey!1512 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4706477 () Bool)

(declare-fun res!1988134 () Bool)

(assert (=> b!4706477 (=> res!1988134 e!2935805)))

(assert (=> b!4706477 (= res!1988134 (not (eq!1076 lt!1871352 lt!1871331)))))

(declare-fun b!4706478 () Bool)

(declare-fun res!1988118 () Bool)

(assert (=> b!4706478 (=> (not res!1988118) (not e!2935803))))

(assert (=> b!4706478 (= res!1988118 (is-Cons!52588 (toList!5723 lm!2023)))))

(declare-fun b!4706479 () Bool)

(assert (=> b!4706479 (= e!2935799 e!2935795)))

(declare-fun res!1988119 () Bool)

(assert (=> b!4706479 (=> (not res!1988119) (not e!2935795))))

(assert (=> b!4706479 (= res!1988119 (contains!15901 lt!1871356 key!4653))))

(assert (=> b!4706479 (= lt!1871356 (extractMap!1943 (toList!5723 lm!2023)))))

(declare-fun b!4706480 () Bool)

(declare-fun e!2935797 () Bool)

(assert (=> b!4706480 (= e!2935797 e!2935796)))

(declare-fun res!1988120 () Bool)

(assert (=> b!4706480 (=> res!1988120 e!2935796)))

(assert (=> b!4706480 (= res!1988120 (not (= (removePairForKey!1512 lt!1871355 key!4653) lt!1871346)))))

(declare-fun tail!8778 (List!52711) List!52711)

(assert (=> b!4706480 (= lt!1871346 (tail!8778 newBucket!218))))

(assert (=> b!4706480 (= lt!1871355 (tail!8778 oldBucket!34))))

(declare-fun b!4706481 () Bool)

(declare-fun res!1988112 () Bool)

(assert (=> b!4706481 (=> res!1988112 e!2935810)))

(assert (=> b!4706481 (= res!1988112 (not (eq!1076 lt!1871331 (+!2201 lt!1871320 lt!1871325))))))

(declare-fun b!4706482 () Bool)

(declare-fun tp!1347004 () Bool)

(assert (=> b!4706482 (= e!2935804 (and tp_is_empty!30961 tp_is_empty!30963 tp!1347004))))

(declare-fun b!4706483 () Bool)

(declare-fun res!1988124 () Bool)

(assert (=> b!4706483 (=> (not res!1988124) (not e!2935799))))

(assert (=> b!4706483 (= res!1988124 (allKeysSameHash!1743 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4706484 () Bool)

(declare-fun res!1988136 () Bool)

(assert (=> b!4706484 (=> (not res!1988136) (not e!2935799))))

(assert (=> b!4706484 (= res!1988136 (noDuplicateKeys!1917 oldBucket!34))))

(declare-fun b!4706485 () Bool)

(assert (=> b!4706485 (= e!2935800 e!2935797)))

(declare-fun res!1988117 () Bool)

(assert (=> b!4706485 (=> res!1988117 e!2935797)))

(declare-fun containsKey!3220 (List!52711 K!13943) Bool)

(assert (=> b!4706485 (= res!1988117 (not (containsKey!3220 (t!359939 oldBucket!34) key!4653)))))

(assert (=> b!4706485 (containsKey!3220 oldBucket!34 key!4653)))

(declare-fun lt!1871351 () Unit!127238)

(declare-fun lemmaGetPairDefinedThenContainsKey!269 (List!52711 K!13943 Hashable!6286) Unit!127238)

(assert (=> b!4706485 (= lt!1871351 (lemmaGetPairDefinedThenContainsKey!269 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1871329 () List!52711)

(declare-datatypes ((Option!12244 0))(
  ( (None!12243) (Some!12243 (v!46762 tuple2!54062)) )
))
(declare-fun isDefined!9499 (Option!12244) Bool)

(declare-fun getPair!521 (List!52711 K!13943) Option!12244)

(assert (=> b!4706485 (isDefined!9499 (getPair!521 lt!1871329 key!4653))))

(declare-fun lt!1871327 () tuple2!54064)

(declare-fun lt!1871339 () Unit!127238)

(declare-fun forallContained!3543 (List!52712 Int tuple2!54064) Unit!127238)

(assert (=> b!4706485 (= lt!1871339 (forallContained!3543 (toList!5723 lm!2023) lambda!211688 lt!1871327))))

(declare-fun contains!15902 (List!52712 tuple2!54064) Bool)

(assert (=> b!4706485 (contains!15902 (toList!5723 lm!2023) lt!1871327)))

(assert (=> b!4706485 (= lt!1871327 (tuple2!54065 lt!1871354 lt!1871329))))

(declare-fun lt!1871336 () Unit!127238)

(declare-fun lemmaGetValueImpliesTupleContained!326 (ListLongMap!4253 (_ BitVec 64) List!52711) Unit!127238)

(assert (=> b!4706485 (= lt!1871336 (lemmaGetValueImpliesTupleContained!326 lm!2023 lt!1871354 lt!1871329))))

(declare-fun apply!12400 (ListLongMap!4253 (_ BitVec 64)) List!52711)

(assert (=> b!4706485 (= lt!1871329 (apply!12400 lm!2023 lt!1871354))))

(declare-fun contains!15903 (ListLongMap!4253 (_ BitVec 64)) Bool)

(assert (=> b!4706485 (contains!15903 lm!2023 lt!1871354)))

(declare-fun lt!1871324 () Unit!127238)

(declare-fun lemmaInGenMapThenLongMapContainsHash!727 (ListLongMap!4253 K!13943 Hashable!6286) Unit!127238)

(assert (=> b!4706485 (= lt!1871324 (lemmaInGenMapThenLongMapContainsHash!727 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1871321 () Unit!127238)

(declare-fun lemmaInGenMapThenGetPairDefined!317 (ListLongMap!4253 K!13943 Hashable!6286) Unit!127238)

(assert (=> b!4706485 (= lt!1871321 (lemmaInGenMapThenGetPairDefined!317 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4706486 () Bool)

(declare-fun res!1988135 () Bool)

(assert (=> b!4706486 (=> res!1988135 e!2935805)))

(assert (=> b!4706486 (= res!1988135 (not (eq!1076 lt!1871328 lt!1871349)))))

(assert (= (and start!477990 res!1988114) b!4706484))

(assert (= (and b!4706484 res!1988136) b!4706461))

(assert (= (and b!4706461 res!1988127) b!4706476))

(assert (= (and b!4706476 res!1988122) b!4706483))

(assert (= (and b!4706483 res!1988124) b!4706479))

(assert (= (and b!4706479 res!1988119) b!4706460))

(assert (= (and b!4706460 res!1988128) b!4706470))

(assert (= (and b!4706470 res!1988113) b!4706475))

(assert (= (and b!4706475 res!1988129) b!4706468))

(assert (= (and b!4706468 res!1988116) b!4706478))

(assert (= (and b!4706478 res!1988118) b!4706464))

(assert (= (and b!4706464 (not res!1988137)) b!4706485))

(assert (= (and b!4706485 (not res!1988117)) b!4706480))

(assert (= (and b!4706480 (not res!1988120)) b!4706474))

(assert (= (and b!4706474 (not res!1988126)) b!4706465))

(assert (= (and b!4706465 (not res!1988123)) b!4706467))

(assert (= (and b!4706467 (not res!1988121)) b!4706481))

(assert (= (and b!4706481 (not res!1988112)) b!4706469))

(assert (= (and b!4706469 (not res!1988125)) b!4706463))

(assert (= (and b!4706463 (not res!1988115)) b!4706486))

(assert (= (and b!4706486 (not res!1988135)) b!4706477))

(assert (= (and b!4706477 (not res!1988134)) b!4706462))

(assert (= (and b!4706462 (not res!1988132)) b!4706472))

(assert (= (and b!4706472 (not res!1988130)) b!4706471))

(assert (= (and b!4706471 (not res!1988131)) b!4706459))

(assert (= (and b!4706459 (not res!1988133)) b!4706458))

(assert (= start!477990 b!4706466))

(assert (= (and start!477990 (is-Cons!52587 oldBucket!34)) b!4706473))

(assert (= (and start!477990 (is-Cons!52587 newBucket!218)) b!4706482))

(declare-fun m!5629063 () Bool)

(assert (=> b!4706476 m!5629063))

(declare-fun m!5629065 () Bool)

(assert (=> b!4706459 m!5629065))

(declare-fun m!5629067 () Bool)

(assert (=> b!4706485 m!5629067))

(declare-fun m!5629069 () Bool)

(assert (=> b!4706485 m!5629069))

(declare-fun m!5629071 () Bool)

(assert (=> b!4706485 m!5629071))

(declare-fun m!5629073 () Bool)

(assert (=> b!4706485 m!5629073))

(assert (=> b!4706485 m!5629069))

(declare-fun m!5629075 () Bool)

(assert (=> b!4706485 m!5629075))

(declare-fun m!5629077 () Bool)

(assert (=> b!4706485 m!5629077))

(declare-fun m!5629079 () Bool)

(assert (=> b!4706485 m!5629079))

(declare-fun m!5629081 () Bool)

(assert (=> b!4706485 m!5629081))

(declare-fun m!5629083 () Bool)

(assert (=> b!4706485 m!5629083))

(declare-fun m!5629085 () Bool)

(assert (=> b!4706485 m!5629085))

(declare-fun m!5629087 () Bool)

(assert (=> b!4706485 m!5629087))

(declare-fun m!5629089 () Bool)

(assert (=> b!4706485 m!5629089))

(declare-fun m!5629091 () Bool)

(assert (=> b!4706460 m!5629091))

(declare-fun m!5629093 () Bool)

(assert (=> b!4706461 m!5629093))

(declare-fun m!5629095 () Bool)

(assert (=> b!4706475 m!5629095))

(declare-fun m!5629097 () Bool)

(assert (=> b!4706484 m!5629097))

(declare-fun m!5629099 () Bool)

(assert (=> b!4706464 m!5629099))

(declare-fun m!5629101 () Bool)

(assert (=> b!4706464 m!5629101))

(declare-fun m!5629103 () Bool)

(assert (=> b!4706464 m!5629103))

(declare-fun m!5629105 () Bool)

(assert (=> b!4706469 m!5629105))

(declare-fun m!5629107 () Bool)

(assert (=> b!4706469 m!5629107))

(declare-fun m!5629109 () Bool)

(assert (=> b!4706469 m!5629109))

(declare-fun m!5629111 () Bool)

(assert (=> b!4706469 m!5629111))

(declare-fun m!5629113 () Bool)

(assert (=> b!4706469 m!5629113))

(declare-fun m!5629115 () Bool)

(assert (=> b!4706469 m!5629115))

(declare-fun m!5629117 () Bool)

(assert (=> b!4706469 m!5629117))

(declare-fun m!5629119 () Bool)

(assert (=> b!4706469 m!5629119))

(assert (=> b!4706469 m!5629111))

(assert (=> b!4706469 m!5629119))

(assert (=> b!4706469 m!5629113))

(declare-fun m!5629121 () Bool)

(assert (=> b!4706469 m!5629121))

(declare-fun m!5629123 () Bool)

(assert (=> b!4706481 m!5629123))

(assert (=> b!4706481 m!5629123))

(declare-fun m!5629125 () Bool)

(assert (=> b!4706481 m!5629125))

(declare-fun m!5629127 () Bool)

(assert (=> b!4706474 m!5629127))

(declare-fun m!5629129 () Bool)

(assert (=> b!4706468 m!5629129))

(declare-fun m!5629131 () Bool)

(assert (=> b!4706480 m!5629131))

(declare-fun m!5629133 () Bool)

(assert (=> b!4706480 m!5629133))

(declare-fun m!5629135 () Bool)

(assert (=> b!4706480 m!5629135))

(declare-fun m!5629137 () Bool)

(assert (=> b!4706462 m!5629137))

(declare-fun m!5629139 () Bool)

(assert (=> b!4706462 m!5629139))

(assert (=> b!4706462 m!5629139))

(declare-fun m!5629141 () Bool)

(assert (=> b!4706462 m!5629141))

(declare-fun m!5629143 () Bool)

(assert (=> b!4706462 m!5629143))

(declare-fun m!5629145 () Bool)

(assert (=> b!4706477 m!5629145))

(declare-fun m!5629147 () Bool)

(assert (=> b!4706465 m!5629147))

(declare-fun m!5629149 () Bool)

(assert (=> b!4706465 m!5629149))

(assert (=> b!4706465 m!5629147))

(declare-fun m!5629151 () Bool)

(assert (=> b!4706465 m!5629151))

(declare-fun m!5629153 () Bool)

(assert (=> b!4706465 m!5629153))

(declare-fun m!5629155 () Bool)

(assert (=> b!4706465 m!5629155))

(declare-fun m!5629157 () Bool)

(assert (=> b!4706465 m!5629157))

(assert (=> b!4706465 m!5629149))

(declare-fun m!5629159 () Bool)

(assert (=> b!4706465 m!5629159))

(declare-fun m!5629161 () Bool)

(assert (=> b!4706465 m!5629161))

(declare-fun m!5629163 () Bool)

(assert (=> b!4706465 m!5629163))

(declare-fun m!5629165 () Bool)

(assert (=> b!4706465 m!5629165))

(declare-fun m!5629167 () Bool)

(assert (=> b!4706465 m!5629167))

(declare-fun m!5629169 () Bool)

(assert (=> b!4706465 m!5629169))

(declare-fun m!5629171 () Bool)

(assert (=> b!4706465 m!5629171))

(assert (=> b!4706465 m!5629153))

(declare-fun m!5629173 () Bool)

(assert (=> b!4706465 m!5629173))

(assert (=> b!4706465 m!5629157))

(declare-fun m!5629175 () Bool)

(assert (=> b!4706465 m!5629175))

(declare-fun m!5629177 () Bool)

(assert (=> b!4706465 m!5629177))

(declare-fun m!5629179 () Bool)

(assert (=> b!4706465 m!5629179))

(assert (=> b!4706465 m!5629151))

(assert (=> b!4706465 m!5629155))

(declare-fun m!5629181 () Bool)

(assert (=> b!4706465 m!5629181))

(declare-fun m!5629183 () Bool)

(assert (=> b!4706465 m!5629183))

(assert (=> b!4706465 m!5629161))

(declare-fun m!5629185 () Bool)

(assert (=> b!4706471 m!5629185))

(declare-fun m!5629187 () Bool)

(assert (=> b!4706471 m!5629187))

(declare-fun m!5629189 () Bool)

(assert (=> b!4706463 m!5629189))

(assert (=> b!4706463 m!5629189))

(declare-fun m!5629191 () Bool)

(assert (=> b!4706463 m!5629191))

(declare-fun m!5629193 () Bool)

(assert (=> b!4706463 m!5629193))

(declare-fun m!5629195 () Bool)

(assert (=> b!4706463 m!5629195))

(declare-fun m!5629197 () Bool)

(assert (=> b!4706463 m!5629197))

(declare-fun m!5629199 () Bool)

(assert (=> b!4706458 m!5629199))

(declare-fun m!5629201 () Bool)

(assert (=> b!4706458 m!5629201))

(declare-fun m!5629203 () Bool)

(assert (=> start!477990 m!5629203))

(declare-fun m!5629205 () Bool)

(assert (=> start!477990 m!5629205))

(declare-fun m!5629207 () Bool)

(assert (=> b!4706472 m!5629207))

(declare-fun m!5629209 () Bool)

(assert (=> b!4706472 m!5629209))

(declare-fun m!5629211 () Bool)

(assert (=> b!4706472 m!5629211))

(declare-fun m!5629213 () Bool)

(assert (=> b!4706472 m!5629213))

(declare-fun m!5629215 () Bool)

(assert (=> b!4706483 m!5629215))

(declare-fun m!5629217 () Bool)

(assert (=> b!4706486 m!5629217))

(declare-fun m!5629219 () Bool)

(assert (=> b!4706470 m!5629219))

(declare-fun m!5629221 () Bool)

(assert (=> b!4706479 m!5629221))

(declare-fun m!5629223 () Bool)

(assert (=> b!4706479 m!5629223))

(push 1)

(assert (not b!4706475))

(assert (not b!4706474))

(assert (not b!4706482))

(assert (not b!4706485))

(assert (not b!4706484))

(assert (not b!4706468))

(assert (not b!4706476))

(assert (not b!4706465))

(assert (not b!4706470))

(assert (not b!4706472))

(assert (not b!4706464))

(assert (not b!4706469))

(assert (not b!4706486))

(assert (not b!4706463))

(assert (not b!4706458))

(assert tp_is_empty!30963)

(assert (not b!4706460))

(assert tp_is_empty!30961)

(assert (not b!4706479))

(assert (not b!4706473))

(assert (not b!4706462))

(assert (not b!4706477))

(assert (not b!4706483))

(assert (not start!477990))

(assert (not b!4706481))

(assert (not b!4706466))

(assert (not b!4706459))

(assert (not b!4706471))

(assert (not b!4706480))

(assert (not b!4706461))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1497845 () Bool)

(assert (=> d!1497845 true))

(assert (=> d!1497845 true))

(declare-fun lambda!211698 () Int)

(declare-fun forall!11438 (List!52711 Int) Bool)

(assert (=> d!1497845 (= (allKeysSameHash!1743 newBucket!218 hash!405 hashF!1323) (forall!11438 newBucket!218 lambda!211698))))

(declare-fun bs!1099544 () Bool)

(assert (= bs!1099544 d!1497845))

(declare-fun m!5629387 () Bool)

(assert (=> bs!1099544 m!5629387))

(assert (=> b!4706470 d!1497845))

(declare-fun d!1497847 () Bool)

(declare-fun content!9313 (List!52711) (Set tuple2!54062))

(assert (=> d!1497847 (= (eq!1076 lt!1871343 lt!1871335) (= (content!9313 (toList!5724 lt!1871343)) (content!9313 (toList!5724 lt!1871335))))))

(declare-fun bs!1099545 () Bool)

(assert (= bs!1099545 d!1497847))

(declare-fun m!5629389 () Bool)

(assert (=> bs!1099545 m!5629389))

(declare-fun m!5629391 () Bool)

(assert (=> bs!1099545 m!5629391))

(assert (=> b!4706471 d!1497847))

(declare-fun bs!1099546 () Bool)

(declare-fun d!1497849 () Bool)

(assert (= bs!1099546 (and d!1497849 start!477990)))

(declare-fun lambda!211701 () Int)

(assert (=> bs!1099546 (= lambda!211701 lambda!211688)))

(declare-fun lt!1871483 () ListMap!5087)

(declare-fun invariantList!1461 (List!52711) Bool)

(assert (=> d!1497849 (invariantList!1461 (toList!5724 lt!1871483))))

(declare-fun e!2935861 () ListMap!5087)

(assert (=> d!1497849 (= lt!1871483 e!2935861)))

(declare-fun c!804352 () Bool)

(assert (=> d!1497849 (= c!804352 (is-Cons!52588 (Cons!52588 lt!1871318 (t!359940 (toList!5723 lm!2023)))))))

(assert (=> d!1497849 (forall!11436 (Cons!52588 lt!1871318 (t!359940 (toList!5723 lm!2023))) lambda!211701)))

(assert (=> d!1497849 (= (extractMap!1943 (Cons!52588 lt!1871318 (t!359940 (toList!5723 lm!2023)))) lt!1871483)))

(declare-fun b!4706582 () Bool)

(assert (=> b!4706582 (= e!2935861 (addToMapMapFromBucket!1349 (_2!30326 (h!58885 (Cons!52588 lt!1871318 (t!359940 (toList!5723 lm!2023))))) (extractMap!1943 (t!359940 (Cons!52588 lt!1871318 (t!359940 (toList!5723 lm!2023)))))))))

(declare-fun b!4706583 () Bool)

(assert (=> b!4706583 (= e!2935861 (ListMap!5088 Nil!52587))))

(assert (= (and d!1497849 c!804352) b!4706582))

(assert (= (and d!1497849 (not c!804352)) b!4706583))

(declare-fun m!5629393 () Bool)

(assert (=> d!1497849 m!5629393))

(declare-fun m!5629395 () Bool)

(assert (=> d!1497849 m!5629395))

(declare-fun m!5629397 () Bool)

(assert (=> b!4706582 m!5629397))

(assert (=> b!4706582 m!5629397))

(declare-fun m!5629399 () Bool)

(assert (=> b!4706582 m!5629399))

(assert (=> b!4706471 d!1497849))

(declare-fun d!1497851 () Bool)

(assert (=> d!1497851 (= (eq!1076 lt!1871349 lt!1871322) (= (content!9313 (toList!5724 lt!1871349)) (content!9313 (toList!5724 lt!1871322))))))

(declare-fun bs!1099547 () Bool)

(assert (= bs!1099547 d!1497851))

(declare-fun m!5629401 () Bool)

(assert (=> bs!1099547 m!5629401))

(declare-fun m!5629403 () Bool)

(assert (=> bs!1099547 m!5629403))

(assert (=> b!4706472 d!1497851))

(declare-fun d!1497853 () Bool)

(assert (=> d!1497853 (= (eq!1076 lt!1871328 lt!1871322) (= (content!9313 (toList!5724 lt!1871328)) (content!9313 (toList!5724 lt!1871322))))))

(declare-fun bs!1099548 () Bool)

(assert (= bs!1099548 d!1497853))

(declare-fun m!5629405 () Bool)

(assert (=> bs!1099548 m!5629405))

(assert (=> bs!1099548 m!5629403))

(assert (=> b!4706472 d!1497853))

(declare-fun d!1497855 () Bool)

(declare-fun e!2935864 () Bool)

(assert (=> d!1497855 e!2935864))

(declare-fun res!1988218 () Bool)

(assert (=> d!1497855 (=> (not res!1988218) (not e!2935864))))

(declare-fun lt!1871486 () ListMap!5087)

(assert (=> d!1497855 (= res!1988218 (not (contains!15901 lt!1871486 key!4653)))))

(declare-fun removePresrvNoDuplicatedKeys!382 (List!52711 K!13943) List!52711)

(assert (=> d!1497855 (= lt!1871486 (ListMap!5088 (removePresrvNoDuplicatedKeys!382 (toList!5724 lt!1871331) key!4653)))))

(assert (=> d!1497855 (= (-!721 lt!1871331 key!4653) lt!1871486)))

(declare-fun b!4706586 () Bool)

(declare-datatypes ((List!52715 0))(
  ( (Nil!52591) (Cons!52591 (h!58890 K!13943) (t!359944 List!52715)) )
))
(declare-fun content!9314 (List!52715) (Set K!13943))

(declare-fun keys!18828 (ListMap!5087) List!52715)

(assert (=> b!4706586 (= e!2935864 (= (set.minus (content!9314 (keys!18828 lt!1871331)) (set.insert key!4653 (as set.empty (Set K!13943)))) (content!9314 (keys!18828 lt!1871486))))))

(assert (= (and d!1497855 res!1988218) b!4706586))

(declare-fun m!5629407 () Bool)

(assert (=> d!1497855 m!5629407))

(declare-fun m!5629409 () Bool)

(assert (=> d!1497855 m!5629409))

(declare-fun m!5629411 () Bool)

(assert (=> b!4706586 m!5629411))

(declare-fun m!5629413 () Bool)

(assert (=> b!4706586 m!5629413))

(declare-fun m!5629415 () Bool)

(assert (=> b!4706586 m!5629415))

(assert (=> b!4706586 m!5629411))

(declare-fun m!5629417 () Bool)

(assert (=> b!4706586 m!5629417))

(assert (=> b!4706586 m!5629417))

(declare-fun m!5629419 () Bool)

(assert (=> b!4706586 m!5629419))

(assert (=> b!4706472 d!1497855))

(declare-fun d!1497857 () Bool)

(assert (=> d!1497857 (eq!1076 (-!721 lt!1871352 key!4653) (-!721 lt!1871331 key!4653))))

(declare-fun lt!1871489 () Unit!127238)

(declare-fun choose!33064 (ListMap!5087 ListMap!5087 K!13943) Unit!127238)

(assert (=> d!1497857 (= lt!1871489 (choose!33064 lt!1871352 lt!1871331 key!4653))))

(assert (=> d!1497857 (eq!1076 lt!1871352 lt!1871331)))

(assert (=> d!1497857 (= (lemmaRemovePreservesEq!103 lt!1871352 lt!1871331 key!4653) lt!1871489)))

(declare-fun bs!1099549 () Bool)

(assert (= bs!1099549 d!1497857))

(assert (=> bs!1099549 m!5629145))

(declare-fun m!5629421 () Bool)

(assert (=> bs!1099549 m!5629421))

(assert (=> bs!1099549 m!5629197))

(assert (=> bs!1099549 m!5629197))

(assert (=> bs!1099549 m!5629211))

(declare-fun m!5629423 () Bool)

(assert (=> bs!1099549 m!5629423))

(assert (=> bs!1099549 m!5629211))

(assert (=> b!4706472 d!1497857))

(declare-fun b!4706597 () Bool)

(declare-fun e!2935869 () List!52711)

(assert (=> b!4706597 (= e!2935869 (Cons!52587 (h!58884 (t!359939 oldBucket!34)) (removePairForKey!1512 (t!359939 (t!359939 oldBucket!34)) key!4653)))))

(declare-fun d!1497859 () Bool)

(declare-fun lt!1871492 () List!52711)

(assert (=> d!1497859 (not (containsKey!3220 lt!1871492 key!4653))))

(declare-fun e!2935870 () List!52711)

(assert (=> d!1497859 (= lt!1871492 e!2935870)))

(declare-fun c!804357 () Bool)

(assert (=> d!1497859 (= c!804357 (and (is-Cons!52587 (t!359939 oldBucket!34)) (= (_1!30325 (h!58884 (t!359939 oldBucket!34))) key!4653)))))

(assert (=> d!1497859 (noDuplicateKeys!1917 (t!359939 oldBucket!34))))

(assert (=> d!1497859 (= (removePairForKey!1512 (t!359939 oldBucket!34) key!4653) lt!1871492)))

(declare-fun b!4706596 () Bool)

(assert (=> b!4706596 (= e!2935870 e!2935869)))

(declare-fun c!804358 () Bool)

(assert (=> b!4706596 (= c!804358 (is-Cons!52587 (t!359939 oldBucket!34)))))

(declare-fun b!4706598 () Bool)

(assert (=> b!4706598 (= e!2935869 Nil!52587)))

(declare-fun b!4706595 () Bool)

(assert (=> b!4706595 (= e!2935870 (t!359939 (t!359939 oldBucket!34)))))

(assert (= (and d!1497859 c!804357) b!4706595))

(assert (= (and d!1497859 (not c!804357)) b!4706596))

(assert (= (and b!4706596 c!804358) b!4706597))

(assert (= (and b!4706596 (not c!804358)) b!4706598))

(declare-fun m!5629425 () Bool)

(assert (=> b!4706597 m!5629425))

(declare-fun m!5629427 () Bool)

(assert (=> d!1497859 m!5629427))

(declare-fun m!5629429 () Bool)

(assert (=> d!1497859 m!5629429))

(assert (=> b!4706474 d!1497859))

(declare-fun bs!1099550 () Bool)

(declare-fun d!1497861 () Bool)

(assert (= bs!1099550 (and d!1497861 start!477990)))

(declare-fun lambda!211704 () Int)

(assert (=> bs!1099550 (not (= lambda!211704 lambda!211688))))

(declare-fun bs!1099551 () Bool)

(assert (= bs!1099551 (and d!1497861 d!1497849)))

(assert (=> bs!1099551 (not (= lambda!211704 lambda!211701))))

(assert (=> d!1497861 true))

(assert (=> d!1497861 (= (allKeysSameHashInMap!1831 lm!2023 hashF!1323) (forall!11436 (toList!5723 lm!2023) lambda!211704))))

(declare-fun bs!1099552 () Bool)

(assert (= bs!1099552 d!1497861))

(declare-fun m!5629431 () Bool)

(assert (=> bs!1099552 m!5629431))

(assert (=> b!4706475 d!1497861))

(declare-fun b!4706603 () Bool)

(declare-fun e!2935871 () List!52711)

(assert (=> b!4706603 (= e!2935871 (Cons!52587 (h!58884 oldBucket!34) (removePairForKey!1512 (t!359939 oldBucket!34) key!4653)))))

(declare-fun d!1497863 () Bool)

(declare-fun lt!1871493 () List!52711)

(assert (=> d!1497863 (not (containsKey!3220 lt!1871493 key!4653))))

(declare-fun e!2935872 () List!52711)

(assert (=> d!1497863 (= lt!1871493 e!2935872)))

(declare-fun c!804359 () Bool)

(assert (=> d!1497863 (= c!804359 (and (is-Cons!52587 oldBucket!34) (= (_1!30325 (h!58884 oldBucket!34)) key!4653)))))

(assert (=> d!1497863 (noDuplicateKeys!1917 oldBucket!34)))

(assert (=> d!1497863 (= (removePairForKey!1512 oldBucket!34 key!4653) lt!1871493)))

(declare-fun b!4706602 () Bool)

(assert (=> b!4706602 (= e!2935872 e!2935871)))

(declare-fun c!804360 () Bool)

(assert (=> b!4706602 (= c!804360 (is-Cons!52587 oldBucket!34))))

(declare-fun b!4706604 () Bool)

(assert (=> b!4706604 (= e!2935871 Nil!52587)))

(declare-fun b!4706601 () Bool)

(assert (=> b!4706601 (= e!2935872 (t!359939 oldBucket!34))))

(assert (= (and d!1497863 c!804359) b!4706601))

(assert (= (and d!1497863 (not c!804359)) b!4706602))

(assert (= (and b!4706602 c!804360) b!4706603))

(assert (= (and b!4706602 (not c!804360)) b!4706604))

(assert (=> b!4706603 m!5629127))

(declare-fun m!5629433 () Bool)

(assert (=> d!1497863 m!5629433))

(assert (=> d!1497863 m!5629097))

(assert (=> b!4706476 d!1497863))

(declare-fun d!1497865 () Bool)

(assert (=> d!1497865 (= (eq!1076 lt!1871352 lt!1871331) (= (content!9313 (toList!5724 lt!1871352)) (content!9313 (toList!5724 lt!1871331))))))

(declare-fun bs!1099553 () Bool)

(assert (= bs!1099553 d!1497865))

(declare-fun m!5629435 () Bool)

(assert (=> bs!1099553 m!5629435))

(declare-fun m!5629437 () Bool)

(assert (=> bs!1099553 m!5629437))

(assert (=> b!4706477 d!1497865))

(declare-fun b!4706623 () Bool)

(assert (=> b!4706623 false))

(declare-fun lt!1871517 () Unit!127238)

(declare-fun lt!1871515 () Unit!127238)

(assert (=> b!4706623 (= lt!1871517 lt!1871515)))

(declare-fun containsKey!3222 (List!52711 K!13943) Bool)

(assert (=> b!4706623 (containsKey!3222 (toList!5724 lt!1871356) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!900 (List!52711 K!13943) Unit!127238)

(assert (=> b!4706623 (= lt!1871515 (lemmaInGetKeysListThenContainsKey!900 (toList!5724 lt!1871356) key!4653))))

(declare-fun e!2935890 () Unit!127238)

(declare-fun Unit!127242 () Unit!127238)

(assert (=> b!4706623 (= e!2935890 Unit!127242)))

(declare-fun bm!329055 () Bool)

(declare-fun call!329060 () Bool)

(declare-fun e!2935887 () List!52715)

(declare-fun contains!15907 (List!52715 K!13943) Bool)

(assert (=> bm!329055 (= call!329060 (contains!15907 e!2935887 key!4653))))

(declare-fun c!804368 () Bool)

(declare-fun c!804367 () Bool)

(assert (=> bm!329055 (= c!804368 c!804367)))

(declare-fun d!1497867 () Bool)

(declare-fun e!2935885 () Bool)

(assert (=> d!1497867 e!2935885))

(declare-fun res!1988227 () Bool)

(assert (=> d!1497867 (=> res!1988227 e!2935885)))

(declare-fun e!2935888 () Bool)

(assert (=> d!1497867 (= res!1988227 e!2935888)))

(declare-fun res!1988226 () Bool)

(assert (=> d!1497867 (=> (not res!1988226) (not e!2935888))))

(declare-fun lt!1871513 () Bool)

(assert (=> d!1497867 (= res!1988226 (not lt!1871513))))

(declare-fun lt!1871510 () Bool)

(assert (=> d!1497867 (= lt!1871513 lt!1871510)))

(declare-fun lt!1871511 () Unit!127238)

(declare-fun e!2935886 () Unit!127238)

(assert (=> d!1497867 (= lt!1871511 e!2935886)))

(assert (=> d!1497867 (= c!804367 lt!1871510)))

(assert (=> d!1497867 (= lt!1871510 (containsKey!3222 (toList!5724 lt!1871356) key!4653))))

(assert (=> d!1497867 (= (contains!15901 lt!1871356 key!4653) lt!1871513)))

(declare-fun b!4706624 () Bool)

(declare-fun e!2935889 () Bool)

(assert (=> b!4706624 (= e!2935889 (contains!15907 (keys!18828 lt!1871356) key!4653))))

(declare-fun b!4706625 () Bool)

(assert (=> b!4706625 (= e!2935885 e!2935889)))

(declare-fun res!1988225 () Bool)

(assert (=> b!4706625 (=> (not res!1988225) (not e!2935889))))

(declare-datatypes ((Option!12246 0))(
  ( (None!12245) (Some!12245 (v!46768 V!14189)) )
))
(declare-fun isDefined!9501 (Option!12246) Bool)

(declare-fun getValueByKey!1882 (List!52711 K!13943) Option!12246)

(assert (=> b!4706625 (= res!1988225 (isDefined!9501 (getValueByKey!1882 (toList!5724 lt!1871356) key!4653)))))

(declare-fun b!4706626 () Bool)

(declare-fun lt!1871516 () Unit!127238)

(assert (=> b!4706626 (= e!2935886 lt!1871516)))

(declare-fun lt!1871512 () Unit!127238)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1774 (List!52711 K!13943) Unit!127238)

(assert (=> b!4706626 (= lt!1871512 (lemmaContainsKeyImpliesGetValueByKeyDefined!1774 (toList!5724 lt!1871356) key!4653))))

(assert (=> b!4706626 (isDefined!9501 (getValueByKey!1882 (toList!5724 lt!1871356) key!4653))))

(declare-fun lt!1871514 () Unit!127238)

(assert (=> b!4706626 (= lt!1871514 lt!1871512)))

(declare-fun lemmaInListThenGetKeysListContains!896 (List!52711 K!13943) Unit!127238)

(assert (=> b!4706626 (= lt!1871516 (lemmaInListThenGetKeysListContains!896 (toList!5724 lt!1871356) key!4653))))

(assert (=> b!4706626 call!329060))

(declare-fun b!4706627 () Bool)

(declare-fun Unit!127243 () Unit!127238)

(assert (=> b!4706627 (= e!2935890 Unit!127243)))

(declare-fun b!4706628 () Bool)

(declare-fun getKeysList!901 (List!52711) List!52715)

(assert (=> b!4706628 (= e!2935887 (getKeysList!901 (toList!5724 lt!1871356)))))

(declare-fun b!4706629 () Bool)

(assert (=> b!4706629 (= e!2935886 e!2935890)))

(declare-fun c!804369 () Bool)

(assert (=> b!4706629 (= c!804369 call!329060)))

(declare-fun b!4706630 () Bool)

(assert (=> b!4706630 (= e!2935888 (not (contains!15907 (keys!18828 lt!1871356) key!4653)))))

(declare-fun b!4706631 () Bool)

(assert (=> b!4706631 (= e!2935887 (keys!18828 lt!1871356))))

(assert (= (and d!1497867 c!804367) b!4706626))

(assert (= (and d!1497867 (not c!804367)) b!4706629))

(assert (= (and b!4706629 c!804369) b!4706623))

(assert (= (and b!4706629 (not c!804369)) b!4706627))

(assert (= (or b!4706626 b!4706629) bm!329055))

(assert (= (and bm!329055 c!804368) b!4706628))

(assert (= (and bm!329055 (not c!804368)) b!4706631))

(assert (= (and d!1497867 res!1988226) b!4706630))

(assert (= (and d!1497867 (not res!1988227)) b!4706625))

(assert (= (and b!4706625 res!1988225) b!4706624))

(declare-fun m!5629439 () Bool)

(assert (=> b!4706628 m!5629439))

(declare-fun m!5629441 () Bool)

(assert (=> b!4706631 m!5629441))

(declare-fun m!5629443 () Bool)

(assert (=> b!4706626 m!5629443))

(declare-fun m!5629445 () Bool)

(assert (=> b!4706626 m!5629445))

(assert (=> b!4706626 m!5629445))

(declare-fun m!5629447 () Bool)

(assert (=> b!4706626 m!5629447))

(declare-fun m!5629449 () Bool)

(assert (=> b!4706626 m!5629449))

(assert (=> b!4706624 m!5629441))

(assert (=> b!4706624 m!5629441))

(declare-fun m!5629451 () Bool)

(assert (=> b!4706624 m!5629451))

(assert (=> b!4706625 m!5629445))

(assert (=> b!4706625 m!5629445))

(assert (=> b!4706625 m!5629447))

(assert (=> b!4706630 m!5629441))

(assert (=> b!4706630 m!5629441))

(assert (=> b!4706630 m!5629451))

(declare-fun m!5629453 () Bool)

(assert (=> d!1497867 m!5629453))

(assert (=> b!4706623 m!5629453))

(declare-fun m!5629455 () Bool)

(assert (=> b!4706623 m!5629455))

(declare-fun m!5629457 () Bool)

(assert (=> bm!329055 m!5629457))

(assert (=> b!4706479 d!1497867))

(declare-fun bs!1099554 () Bool)

(declare-fun d!1497871 () Bool)

(assert (= bs!1099554 (and d!1497871 start!477990)))

(declare-fun lambda!211705 () Int)

(assert (=> bs!1099554 (= lambda!211705 lambda!211688)))

(declare-fun bs!1099555 () Bool)

(assert (= bs!1099555 (and d!1497871 d!1497849)))

(assert (=> bs!1099555 (= lambda!211705 lambda!211701)))

(declare-fun bs!1099556 () Bool)

(assert (= bs!1099556 (and d!1497871 d!1497861)))

(assert (=> bs!1099556 (not (= lambda!211705 lambda!211704))))

(declare-fun lt!1871518 () ListMap!5087)

(assert (=> d!1497871 (invariantList!1461 (toList!5724 lt!1871518))))

(declare-fun e!2935891 () ListMap!5087)

(assert (=> d!1497871 (= lt!1871518 e!2935891)))

(declare-fun c!804370 () Bool)

(assert (=> d!1497871 (= c!804370 (is-Cons!52588 (toList!5723 lm!2023)))))

(assert (=> d!1497871 (forall!11436 (toList!5723 lm!2023) lambda!211705)))

(assert (=> d!1497871 (= (extractMap!1943 (toList!5723 lm!2023)) lt!1871518)))

(declare-fun b!4706632 () Bool)

(assert (=> b!4706632 (= e!2935891 (addToMapMapFromBucket!1349 (_2!30326 (h!58885 (toList!5723 lm!2023))) (extractMap!1943 (t!359940 (toList!5723 lm!2023)))))))

(declare-fun b!4706633 () Bool)

(assert (=> b!4706633 (= e!2935891 (ListMap!5088 Nil!52587))))

(assert (= (and d!1497871 c!804370) b!4706632))

(assert (= (and d!1497871 (not c!804370)) b!4706633))

(declare-fun m!5629459 () Bool)

(assert (=> d!1497871 m!5629459))

(declare-fun m!5629461 () Bool)

(assert (=> d!1497871 m!5629461))

(assert (=> b!4706632 m!5629101))

(assert (=> b!4706632 m!5629101))

(declare-fun m!5629463 () Bool)

(assert (=> b!4706632 m!5629463))

(assert (=> b!4706479 d!1497871))

(declare-fun d!1497873 () Bool)

(declare-fun res!1988232 () Bool)

(declare-fun e!2935896 () Bool)

(assert (=> d!1497873 (=> res!1988232 e!2935896)))

(assert (=> d!1497873 (= res!1988232 (is-Nil!52588 (Cons!52588 lt!1871318 (tail!8776 (toList!5723 lm!2023)))))))

(assert (=> d!1497873 (= (forall!11436 (Cons!52588 lt!1871318 (tail!8776 (toList!5723 lm!2023))) lambda!211688) e!2935896)))

(declare-fun b!4706638 () Bool)

(declare-fun e!2935897 () Bool)

(assert (=> b!4706638 (= e!2935896 e!2935897)))

(declare-fun res!1988233 () Bool)

(assert (=> b!4706638 (=> (not res!1988233) (not e!2935897))))

(declare-fun dynLambda!21764 (Int tuple2!54064) Bool)

(assert (=> b!4706638 (= res!1988233 (dynLambda!21764 lambda!211688 (h!58885 (Cons!52588 lt!1871318 (tail!8776 (toList!5723 lm!2023))))))))

(declare-fun b!4706639 () Bool)

(assert (=> b!4706639 (= e!2935897 (forall!11436 (t!359940 (Cons!52588 lt!1871318 (tail!8776 (toList!5723 lm!2023)))) lambda!211688))))

(assert (= (and d!1497873 (not res!1988232)) b!4706638))

(assert (= (and b!4706638 res!1988233) b!4706639))

(declare-fun b_lambda!177565 () Bool)

(assert (=> (not b_lambda!177565) (not b!4706638)))

(declare-fun m!5629465 () Bool)

(assert (=> b!4706638 m!5629465))

(declare-fun m!5629467 () Bool)

(assert (=> b!4706639 m!5629467))

(assert (=> b!4706458 d!1497873))

(declare-fun d!1497875 () Bool)

(assert (=> d!1497875 (= (tail!8776 (toList!5723 lm!2023)) (t!359940 (toList!5723 lm!2023)))))

(assert (=> b!4706458 d!1497875))

(declare-fun b!4706642 () Bool)

(declare-fun e!2935898 () List!52711)

(assert (=> b!4706642 (= e!2935898 (Cons!52587 (h!58884 lt!1871355) (removePairForKey!1512 (t!359939 lt!1871355) key!4653)))))

(declare-fun d!1497877 () Bool)

(declare-fun lt!1871519 () List!52711)

(assert (=> d!1497877 (not (containsKey!3220 lt!1871519 key!4653))))

(declare-fun e!2935899 () List!52711)

(assert (=> d!1497877 (= lt!1871519 e!2935899)))

(declare-fun c!804371 () Bool)

(assert (=> d!1497877 (= c!804371 (and (is-Cons!52587 lt!1871355) (= (_1!30325 (h!58884 lt!1871355)) key!4653)))))

(assert (=> d!1497877 (noDuplicateKeys!1917 lt!1871355)))

(assert (=> d!1497877 (= (removePairForKey!1512 lt!1871355 key!4653) lt!1871519)))

(declare-fun b!4706641 () Bool)

(assert (=> b!4706641 (= e!2935899 e!2935898)))

(declare-fun c!804372 () Bool)

(assert (=> b!4706641 (= c!804372 (is-Cons!52587 lt!1871355))))

(declare-fun b!4706643 () Bool)

(assert (=> b!4706643 (= e!2935898 Nil!52587)))

(declare-fun b!4706640 () Bool)

(assert (=> b!4706640 (= e!2935899 (t!359939 lt!1871355))))

(assert (= (and d!1497877 c!804371) b!4706640))

(assert (= (and d!1497877 (not c!804371)) b!4706641))

(assert (= (and b!4706641 c!804372) b!4706642))

(assert (= (and b!4706641 (not c!804372)) b!4706643))

(declare-fun m!5629469 () Bool)

(assert (=> b!4706642 m!5629469))

(declare-fun m!5629471 () Bool)

(assert (=> d!1497877 m!5629471))

(declare-fun m!5629473 () Bool)

(assert (=> d!1497877 m!5629473))

(assert (=> b!4706480 d!1497877))

(declare-fun d!1497879 () Bool)

(assert (=> d!1497879 (= (tail!8778 newBucket!218) (t!359939 newBucket!218))))

(assert (=> b!4706480 d!1497879))

(declare-fun d!1497881 () Bool)

(assert (=> d!1497881 (= (tail!8778 oldBucket!34) (t!359939 oldBucket!34))))

(assert (=> b!4706480 d!1497881))

(declare-fun d!1497883 () Bool)

(assert (=> d!1497883 (= (eq!1076 lt!1871335 lt!1871322) (= (content!9313 (toList!5724 lt!1871335)) (content!9313 (toList!5724 lt!1871322))))))

(declare-fun bs!1099557 () Bool)

(assert (= bs!1099557 d!1497883))

(assert (=> bs!1099557 m!5629391))

(assert (=> bs!1099557 m!5629403))

(assert (=> b!4706459 d!1497883))

(declare-fun d!1497885 () Bool)

(assert (=> d!1497885 (= (eq!1076 lt!1871331 (+!2201 lt!1871320 lt!1871325)) (= (content!9313 (toList!5724 lt!1871331)) (content!9313 (toList!5724 (+!2201 lt!1871320 lt!1871325)))))))

(declare-fun bs!1099558 () Bool)

(assert (= bs!1099558 d!1497885))

(assert (=> bs!1099558 m!5629437))

(declare-fun m!5629475 () Bool)

(assert (=> bs!1099558 m!5629475))

(assert (=> b!4706481 d!1497885))

(declare-fun d!1497887 () Bool)

(declare-fun e!2935902 () Bool)

(assert (=> d!1497887 e!2935902))

(declare-fun res!1988238 () Bool)

(assert (=> d!1497887 (=> (not res!1988238) (not e!2935902))))

(declare-fun lt!1871530 () ListMap!5087)

(assert (=> d!1497887 (= res!1988238 (contains!15901 lt!1871530 (_1!30325 lt!1871325)))))

(declare-fun lt!1871528 () List!52711)

(assert (=> d!1497887 (= lt!1871530 (ListMap!5088 lt!1871528))))

(declare-fun lt!1871531 () Unit!127238)

(declare-fun lt!1871529 () Unit!127238)

(assert (=> d!1497887 (= lt!1871531 lt!1871529)))

(assert (=> d!1497887 (= (getValueByKey!1882 lt!1871528 (_1!30325 lt!1871325)) (Some!12245 (_2!30325 lt!1871325)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1051 (List!52711 K!13943 V!14189) Unit!127238)

(assert (=> d!1497887 (= lt!1871529 (lemmaContainsTupThenGetReturnValue!1051 lt!1871528 (_1!30325 lt!1871325) (_2!30325 lt!1871325)))))

(declare-fun insertNoDuplicatedKeys!559 (List!52711 K!13943 V!14189) List!52711)

(assert (=> d!1497887 (= lt!1871528 (insertNoDuplicatedKeys!559 (toList!5724 lt!1871320) (_1!30325 lt!1871325) (_2!30325 lt!1871325)))))

(assert (=> d!1497887 (= (+!2201 lt!1871320 lt!1871325) lt!1871530)))

(declare-fun b!4706648 () Bool)

(declare-fun res!1988239 () Bool)

(assert (=> b!4706648 (=> (not res!1988239) (not e!2935902))))

(assert (=> b!4706648 (= res!1988239 (= (getValueByKey!1882 (toList!5724 lt!1871530) (_1!30325 lt!1871325)) (Some!12245 (_2!30325 lt!1871325))))))

(declare-fun b!4706649 () Bool)

(declare-fun contains!15908 (List!52711 tuple2!54062) Bool)

(assert (=> b!4706649 (= e!2935902 (contains!15908 (toList!5724 lt!1871530) lt!1871325))))

(assert (= (and d!1497887 res!1988238) b!4706648))

(assert (= (and b!4706648 res!1988239) b!4706649))

(declare-fun m!5629477 () Bool)

(assert (=> d!1497887 m!5629477))

(declare-fun m!5629479 () Bool)

(assert (=> d!1497887 m!5629479))

(declare-fun m!5629481 () Bool)

(assert (=> d!1497887 m!5629481))

(declare-fun m!5629483 () Bool)

(assert (=> d!1497887 m!5629483))

(declare-fun m!5629485 () Bool)

(assert (=> b!4706648 m!5629485))

(declare-fun m!5629487 () Bool)

(assert (=> b!4706649 m!5629487))

(assert (=> b!4706481 d!1497887))

(declare-fun d!1497889 () Bool)

(declare-fun hash!4229 (Hashable!6286 K!13943) (_ BitVec 64))

(assert (=> d!1497889 (= (hash!4225 hashF!1323 key!4653) (hash!4229 hashF!1323 key!4653))))

(declare-fun bs!1099559 () Bool)

(assert (= bs!1099559 d!1497889))

(declare-fun m!5629489 () Bool)

(assert (=> bs!1099559 m!5629489))

(assert (=> b!4706460 d!1497889))

(declare-fun d!1497891 () Bool)

(declare-fun res!1988244 () Bool)

(declare-fun e!2935907 () Bool)

(assert (=> d!1497891 (=> res!1988244 e!2935907)))

(assert (=> d!1497891 (= res!1988244 (not (is-Cons!52587 newBucket!218)))))

(assert (=> d!1497891 (= (noDuplicateKeys!1917 newBucket!218) e!2935907)))

(declare-fun b!4706654 () Bool)

(declare-fun e!2935908 () Bool)

(assert (=> b!4706654 (= e!2935907 e!2935908)))

(declare-fun res!1988245 () Bool)

(assert (=> b!4706654 (=> (not res!1988245) (not e!2935908))))

(assert (=> b!4706654 (= res!1988245 (not (containsKey!3220 (t!359939 newBucket!218) (_1!30325 (h!58884 newBucket!218)))))))

(declare-fun b!4706655 () Bool)

(assert (=> b!4706655 (= e!2935908 (noDuplicateKeys!1917 (t!359939 newBucket!218)))))

(assert (= (and d!1497891 (not res!1988244)) b!4706654))

(assert (= (and b!4706654 res!1988245) b!4706655))

(declare-fun m!5629491 () Bool)

(assert (=> b!4706654 m!5629491))

(declare-fun m!5629493 () Bool)

(assert (=> b!4706655 m!5629493))

(assert (=> b!4706461 d!1497891))

(declare-fun bs!1099560 () Bool)

(declare-fun d!1497893 () Bool)

(assert (= bs!1099560 (and d!1497893 d!1497845)))

(declare-fun lambda!211706 () Int)

(assert (=> bs!1099560 (= lambda!211706 lambda!211698)))

(assert (=> d!1497893 true))

(assert (=> d!1497893 true))

(assert (=> d!1497893 (= (allKeysSameHash!1743 oldBucket!34 hash!405 hashF!1323) (forall!11438 oldBucket!34 lambda!211706))))

(declare-fun bs!1099561 () Bool)

(assert (= bs!1099561 d!1497893))

(declare-fun m!5629495 () Bool)

(assert (=> bs!1099561 m!5629495))

(assert (=> b!4706483 d!1497893))

(declare-fun d!1497895 () Bool)

(assert (=> d!1497895 (= (eq!1076 lt!1871349 lt!1871343) (= (content!9313 (toList!5724 lt!1871349)) (content!9313 (toList!5724 lt!1871343))))))

(declare-fun bs!1099562 () Bool)

(assert (= bs!1099562 d!1497895))

(assert (=> bs!1099562 m!5629401))

(assert (=> bs!1099562 m!5629389))

(assert (=> b!4706462 d!1497895))

(declare-fun d!1497897 () Bool)

(declare-fun e!2935909 () Bool)

(assert (=> d!1497897 e!2935909))

(declare-fun res!1988246 () Bool)

(assert (=> d!1497897 (=> (not res!1988246) (not e!2935909))))

(declare-fun lt!1871534 () ListMap!5087)

(assert (=> d!1497897 (= res!1988246 (contains!15901 lt!1871534 (_1!30325 (h!58884 oldBucket!34))))))

(declare-fun lt!1871532 () List!52711)

(assert (=> d!1497897 (= lt!1871534 (ListMap!5088 lt!1871532))))

(declare-fun lt!1871535 () Unit!127238)

(declare-fun lt!1871533 () Unit!127238)

(assert (=> d!1497897 (= lt!1871535 lt!1871533)))

(assert (=> d!1497897 (= (getValueByKey!1882 lt!1871532 (_1!30325 (h!58884 oldBucket!34))) (Some!12245 (_2!30325 (h!58884 oldBucket!34))))))

(assert (=> d!1497897 (= lt!1871533 (lemmaContainsTupThenGetReturnValue!1051 lt!1871532 (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34))))))

(assert (=> d!1497897 (= lt!1871532 (insertNoDuplicatedKeys!559 (toList!5724 lt!1871317) (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34))))))

(assert (=> d!1497897 (= (+!2201 lt!1871317 (h!58884 oldBucket!34)) lt!1871534)))

(declare-fun b!4706656 () Bool)

(declare-fun res!1988247 () Bool)

(assert (=> b!4706656 (=> (not res!1988247) (not e!2935909))))

(assert (=> b!4706656 (= res!1988247 (= (getValueByKey!1882 (toList!5724 lt!1871534) (_1!30325 (h!58884 oldBucket!34))) (Some!12245 (_2!30325 (h!58884 oldBucket!34)))))))

(declare-fun b!4706657 () Bool)

(assert (=> b!4706657 (= e!2935909 (contains!15908 (toList!5724 lt!1871534) (h!58884 oldBucket!34)))))

(assert (= (and d!1497897 res!1988246) b!4706656))

(assert (= (and b!4706656 res!1988247) b!4706657))

(declare-fun m!5629497 () Bool)

(assert (=> d!1497897 m!5629497))

(declare-fun m!5629499 () Bool)

(assert (=> d!1497897 m!5629499))

(declare-fun m!5629501 () Bool)

(assert (=> d!1497897 m!5629501))

(declare-fun m!5629503 () Bool)

(assert (=> d!1497897 m!5629503))

(declare-fun m!5629505 () Bool)

(assert (=> b!4706656 m!5629505))

(declare-fun m!5629507 () Bool)

(assert (=> b!4706657 m!5629507))

(assert (=> b!4706462 d!1497897))

(declare-fun d!1497899 () Bool)

(assert (=> d!1497899 (= (eq!1076 lt!1871337 (+!2201 lt!1871317 (h!58884 oldBucket!34))) (= (content!9313 (toList!5724 lt!1871337)) (content!9313 (toList!5724 (+!2201 lt!1871317 (h!58884 oldBucket!34))))))))

(declare-fun bs!1099563 () Bool)

(assert (= bs!1099563 d!1497899))

(declare-fun m!5629509 () Bool)

(assert (=> bs!1099563 m!5629509))

(declare-fun m!5629511 () Bool)

(assert (=> bs!1099563 m!5629511))

(assert (=> b!4706462 d!1497899))

(declare-fun d!1497901 () Bool)

(assert (=> d!1497901 (eq!1076 (+!2201 lt!1871332 (tuple2!54063 (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34)))) (+!2201 lt!1871317 (tuple2!54063 (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34)))))))

(declare-fun lt!1871538 () Unit!127238)

(declare-fun choose!33065 (ListMap!5087 ListMap!5087 K!13943 V!14189) Unit!127238)

(assert (=> d!1497901 (= lt!1871538 (choose!33065 lt!1871332 lt!1871317 (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34))))))

(assert (=> d!1497901 (eq!1076 lt!1871332 lt!1871317)))

(assert (=> d!1497901 (= (lemmaAddToEqMapsPreservesEq!99 lt!1871332 lt!1871317 (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34))) lt!1871538)))

(declare-fun bs!1099564 () Bool)

(assert (= bs!1099564 d!1497901))

(declare-fun m!5629513 () Bool)

(assert (=> bs!1099564 m!5629513))

(declare-fun m!5629515 () Bool)

(assert (=> bs!1099564 m!5629515))

(declare-fun m!5629517 () Bool)

(assert (=> bs!1099564 m!5629517))

(declare-fun m!5629519 () Bool)

(assert (=> bs!1099564 m!5629519))

(assert (=> bs!1099564 m!5629513))

(declare-fun m!5629521 () Bool)

(assert (=> bs!1099564 m!5629521))

(assert (=> bs!1099564 m!5629519))

(assert (=> b!4706462 d!1497901))

(declare-fun d!1497903 () Bool)

(declare-fun res!1988248 () Bool)

(declare-fun e!2935910 () Bool)

(assert (=> d!1497903 (=> res!1988248 e!2935910)))

(assert (=> d!1497903 (= res!1988248 (is-Nil!52588 (toList!5723 lm!2023)))))

(assert (=> d!1497903 (= (forall!11436 (toList!5723 lm!2023) lambda!211688) e!2935910)))

(declare-fun b!4706658 () Bool)

(declare-fun e!2935911 () Bool)

(assert (=> b!4706658 (= e!2935910 e!2935911)))

(declare-fun res!1988249 () Bool)

(assert (=> b!4706658 (=> (not res!1988249) (not e!2935911))))

(assert (=> b!4706658 (= res!1988249 (dynLambda!21764 lambda!211688 (h!58885 (toList!5723 lm!2023))))))

(declare-fun b!4706659 () Bool)

(assert (=> b!4706659 (= e!2935911 (forall!11436 (t!359940 (toList!5723 lm!2023)) lambda!211688))))

(assert (= (and d!1497903 (not res!1988248)) b!4706658))

(assert (= (and b!4706658 res!1988249) b!4706659))

(declare-fun b_lambda!177567 () Bool)

(assert (=> (not b_lambda!177567) (not b!4706658)))

(declare-fun m!5629523 () Bool)

(assert (=> b!4706658 m!5629523))

(declare-fun m!5629525 () Bool)

(assert (=> b!4706659 m!5629525))

(assert (=> start!477990 d!1497903))

(declare-fun d!1497905 () Bool)

(declare-fun isStrictlySorted!700 (List!52712) Bool)

(assert (=> d!1497905 (= (inv!67818 lm!2023) (isStrictlySorted!700 (toList!5723 lm!2023)))))

(declare-fun bs!1099565 () Bool)

(assert (= bs!1099565 d!1497905))

(declare-fun m!5629527 () Bool)

(assert (=> bs!1099565 m!5629527))

(assert (=> start!477990 d!1497905))

(declare-fun d!1497907 () Bool)

(declare-fun res!1988250 () Bool)

(declare-fun e!2935912 () Bool)

(assert (=> d!1497907 (=> res!1988250 e!2935912)))

(assert (=> d!1497907 (= res!1988250 (not (is-Cons!52587 oldBucket!34)))))

(assert (=> d!1497907 (= (noDuplicateKeys!1917 oldBucket!34) e!2935912)))

(declare-fun b!4706660 () Bool)

(declare-fun e!2935913 () Bool)

(assert (=> b!4706660 (= e!2935912 e!2935913)))

(declare-fun res!1988251 () Bool)

(assert (=> b!4706660 (=> (not res!1988251) (not e!2935913))))

(assert (=> b!4706660 (= res!1988251 (not (containsKey!3220 (t!359939 oldBucket!34) (_1!30325 (h!58884 oldBucket!34)))))))

(declare-fun b!4706661 () Bool)

(assert (=> b!4706661 (= e!2935913 (noDuplicateKeys!1917 (t!359939 oldBucket!34)))))

(assert (= (and d!1497907 (not res!1988250)) b!4706660))

(assert (= (and b!4706660 res!1988251) b!4706661))

(declare-fun m!5629529 () Bool)

(assert (=> b!4706660 m!5629529))

(assert (=> b!4706661 m!5629429))

(assert (=> b!4706484 d!1497907))

(declare-fun d!1497909 () Bool)

(assert (=> d!1497909 (= (-!721 (+!2201 lt!1871341 (tuple2!54063 (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34)))) key!4653) (+!2201 (-!721 lt!1871341 key!4653) (tuple2!54063 (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34)))))))

(declare-fun lt!1871541 () Unit!127238)

(declare-fun choose!33066 (ListMap!5087 K!13943 V!14189 K!13943) Unit!127238)

(assert (=> d!1497909 (= lt!1871541 (choose!33066 lt!1871341 (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34)) key!4653))))

(assert (=> d!1497909 (not (= (_1!30325 (h!58884 oldBucket!34)) key!4653))))

(assert (=> d!1497909 (= (addRemoveCommutativeForDiffKeys!122 lt!1871341 (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34)) key!4653) lt!1871541)))

(declare-fun bs!1099566 () Bool)

(assert (= bs!1099566 d!1497909))

(assert (=> bs!1099566 m!5629117))

(declare-fun m!5629531 () Bool)

(assert (=> bs!1099566 m!5629531))

(assert (=> bs!1099566 m!5629117))

(declare-fun m!5629533 () Bool)

(assert (=> bs!1099566 m!5629533))

(declare-fun m!5629535 () Bool)

(assert (=> bs!1099566 m!5629535))

(declare-fun m!5629537 () Bool)

(assert (=> bs!1099566 m!5629537))

(assert (=> bs!1099566 m!5629535))

(assert (=> b!4706463 d!1497909))

(declare-fun d!1497911 () Bool)

(declare-fun e!2935914 () Bool)

(assert (=> d!1497911 e!2935914))

(declare-fun res!1988252 () Bool)

(assert (=> d!1497911 (=> (not res!1988252) (not e!2935914))))

(declare-fun lt!1871542 () ListMap!5087)

(assert (=> d!1497911 (= res!1988252 (not (contains!15901 lt!1871542 key!4653)))))

(assert (=> d!1497911 (= lt!1871542 (ListMap!5088 (removePresrvNoDuplicatedKeys!382 (toList!5724 (+!2201 lt!1871341 (h!58884 oldBucket!34))) key!4653)))))

(assert (=> d!1497911 (= (-!721 (+!2201 lt!1871341 (h!58884 oldBucket!34)) key!4653) lt!1871542)))

(declare-fun b!4706662 () Bool)

(assert (=> b!4706662 (= e!2935914 (= (set.minus (content!9314 (keys!18828 (+!2201 lt!1871341 (h!58884 oldBucket!34)))) (set.insert key!4653 (as set.empty (Set K!13943)))) (content!9314 (keys!18828 lt!1871542))))))

(assert (= (and d!1497911 res!1988252) b!4706662))

(declare-fun m!5629539 () Bool)

(assert (=> d!1497911 m!5629539))

(declare-fun m!5629541 () Bool)

(assert (=> d!1497911 m!5629541))

(declare-fun m!5629543 () Bool)

(assert (=> b!4706662 m!5629543))

(declare-fun m!5629545 () Bool)

(assert (=> b!4706662 m!5629545))

(assert (=> b!4706662 m!5629415))

(assert (=> b!4706662 m!5629189))

(assert (=> b!4706662 m!5629543))

(declare-fun m!5629547 () Bool)

(assert (=> b!4706662 m!5629547))

(assert (=> b!4706662 m!5629547))

(declare-fun m!5629549 () Bool)

(assert (=> b!4706662 m!5629549))

(assert (=> b!4706463 d!1497911))

(declare-fun d!1497913 () Bool)

(declare-fun e!2935915 () Bool)

(assert (=> d!1497913 e!2935915))

(declare-fun res!1988253 () Bool)

(assert (=> d!1497913 (=> (not res!1988253) (not e!2935915))))

(declare-fun lt!1871543 () ListMap!5087)

(assert (=> d!1497913 (= res!1988253 (not (contains!15901 lt!1871543 key!4653)))))

(assert (=> d!1497913 (= lt!1871543 (ListMap!5088 (removePresrvNoDuplicatedKeys!382 (toList!5724 lt!1871352) key!4653)))))

(assert (=> d!1497913 (= (-!721 lt!1871352 key!4653) lt!1871543)))

(declare-fun b!4706663 () Bool)

(assert (=> b!4706663 (= e!2935915 (= (set.minus (content!9314 (keys!18828 lt!1871352)) (set.insert key!4653 (as set.empty (Set K!13943)))) (content!9314 (keys!18828 lt!1871543))))))

(assert (= (and d!1497913 res!1988253) b!4706663))

(declare-fun m!5629551 () Bool)

(assert (=> d!1497913 m!5629551))

(declare-fun m!5629553 () Bool)

(assert (=> d!1497913 m!5629553))

(declare-fun m!5629555 () Bool)

(assert (=> b!4706663 m!5629555))

(declare-fun m!5629557 () Bool)

(assert (=> b!4706663 m!5629557))

(assert (=> b!4706663 m!5629415))

(assert (=> b!4706663 m!5629555))

(declare-fun m!5629559 () Bool)

(assert (=> b!4706663 m!5629559))

(assert (=> b!4706663 m!5629559))

(declare-fun m!5629561 () Bool)

(assert (=> b!4706663 m!5629561))

(assert (=> b!4706463 d!1497913))

(declare-fun d!1497915 () Bool)

(declare-fun e!2935916 () Bool)

(assert (=> d!1497915 e!2935916))

(declare-fun res!1988254 () Bool)

(assert (=> d!1497915 (=> (not res!1988254) (not e!2935916))))

(declare-fun lt!1871546 () ListMap!5087)

(assert (=> d!1497915 (= res!1988254 (contains!15901 lt!1871546 (_1!30325 (h!58884 oldBucket!34))))))

(declare-fun lt!1871544 () List!52711)

(assert (=> d!1497915 (= lt!1871546 (ListMap!5088 lt!1871544))))

(declare-fun lt!1871547 () Unit!127238)

(declare-fun lt!1871545 () Unit!127238)

(assert (=> d!1497915 (= lt!1871547 lt!1871545)))

(assert (=> d!1497915 (= (getValueByKey!1882 lt!1871544 (_1!30325 (h!58884 oldBucket!34))) (Some!12245 (_2!30325 (h!58884 oldBucket!34))))))

(assert (=> d!1497915 (= lt!1871545 (lemmaContainsTupThenGetReturnValue!1051 lt!1871544 (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34))))))

(assert (=> d!1497915 (= lt!1871544 (insertNoDuplicatedKeys!559 (toList!5724 lt!1871341) (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34))))))

(assert (=> d!1497915 (= (+!2201 lt!1871341 (h!58884 oldBucket!34)) lt!1871546)))

(declare-fun b!4706664 () Bool)

(declare-fun res!1988255 () Bool)

(assert (=> b!4706664 (=> (not res!1988255) (not e!2935916))))

(assert (=> b!4706664 (= res!1988255 (= (getValueByKey!1882 (toList!5724 lt!1871546) (_1!30325 (h!58884 oldBucket!34))) (Some!12245 (_2!30325 (h!58884 oldBucket!34)))))))

(declare-fun b!4706665 () Bool)

(assert (=> b!4706665 (= e!2935916 (contains!15908 (toList!5724 lt!1871546) (h!58884 oldBucket!34)))))

(assert (= (and d!1497915 res!1988254) b!4706664))

(assert (= (and b!4706664 res!1988255) b!4706665))

(declare-fun m!5629563 () Bool)

(assert (=> d!1497915 m!5629563))

(declare-fun m!5629565 () Bool)

(assert (=> d!1497915 m!5629565))

(declare-fun m!5629567 () Bool)

(assert (=> d!1497915 m!5629567))

(declare-fun m!5629569 () Bool)

(assert (=> d!1497915 m!5629569))

(declare-fun m!5629571 () Bool)

(assert (=> b!4706664 m!5629571))

(declare-fun m!5629573 () Bool)

(assert (=> b!4706665 m!5629573))

(assert (=> b!4706463 d!1497915))

(declare-fun d!1497917 () Bool)

(declare-fun e!2935917 () Bool)

(assert (=> d!1497917 e!2935917))

(declare-fun res!1988256 () Bool)

(assert (=> d!1497917 (=> (not res!1988256) (not e!2935917))))

(declare-fun lt!1871550 () ListMap!5087)

(assert (=> d!1497917 (= res!1988256 (contains!15901 lt!1871550 (_1!30325 (h!58884 oldBucket!34))))))

(declare-fun lt!1871548 () List!52711)

(assert (=> d!1497917 (= lt!1871550 (ListMap!5088 lt!1871548))))

(declare-fun lt!1871551 () Unit!127238)

(declare-fun lt!1871549 () Unit!127238)

(assert (=> d!1497917 (= lt!1871551 lt!1871549)))

(assert (=> d!1497917 (= (getValueByKey!1882 lt!1871548 (_1!30325 (h!58884 oldBucket!34))) (Some!12245 (_2!30325 (h!58884 oldBucket!34))))))

(assert (=> d!1497917 (= lt!1871549 (lemmaContainsTupThenGetReturnValue!1051 lt!1871548 (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34))))))

(assert (=> d!1497917 (= lt!1871548 (insertNoDuplicatedKeys!559 (toList!5724 lt!1871332) (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34))))))

(assert (=> d!1497917 (= (+!2201 lt!1871332 (h!58884 oldBucket!34)) lt!1871550)))

(declare-fun b!4706666 () Bool)

(declare-fun res!1988257 () Bool)

(assert (=> b!4706666 (=> (not res!1988257) (not e!2935917))))

(assert (=> b!4706666 (= res!1988257 (= (getValueByKey!1882 (toList!5724 lt!1871550) (_1!30325 (h!58884 oldBucket!34))) (Some!12245 (_2!30325 (h!58884 oldBucket!34)))))))

(declare-fun b!4706667 () Bool)

(assert (=> b!4706667 (= e!2935917 (contains!15908 (toList!5724 lt!1871550) (h!58884 oldBucket!34)))))

(assert (= (and d!1497917 res!1988256) b!4706666))

(assert (= (and b!4706666 res!1988257) b!4706667))

(declare-fun m!5629575 () Bool)

(assert (=> d!1497917 m!5629575))

(declare-fun m!5629577 () Bool)

(assert (=> d!1497917 m!5629577))

(declare-fun m!5629579 () Bool)

(assert (=> d!1497917 m!5629579))

(declare-fun m!5629581 () Bool)

(assert (=> d!1497917 m!5629581))

(declare-fun m!5629583 () Bool)

(assert (=> b!4706666 m!5629583))

(declare-fun m!5629585 () Bool)

(assert (=> b!4706667 m!5629585))

(assert (=> b!4706463 d!1497917))

(declare-fun d!1497919 () Bool)

(declare-datatypes ((Option!12247 0))(
  ( (None!12246) (Some!12246 (v!46769 List!52711)) )
))
(declare-fun get!17627 (Option!12247) List!52711)

(declare-fun getValueByKey!1883 (List!52712 (_ BitVec 64)) Option!12247)

(assert (=> d!1497919 (= (apply!12400 lm!2023 lt!1871354) (get!17627 (getValueByKey!1883 (toList!5723 lm!2023) lt!1871354)))))

(declare-fun bs!1099567 () Bool)

(assert (= bs!1099567 d!1497919))

(declare-fun m!5629587 () Bool)

(assert (=> bs!1099567 m!5629587))

(assert (=> bs!1099567 m!5629587))

(declare-fun m!5629589 () Bool)

(assert (=> bs!1099567 m!5629589))

(assert (=> b!4706485 d!1497919))

(declare-fun b!4706684 () Bool)

(declare-fun e!2935932 () Option!12244)

(assert (=> b!4706684 (= e!2935932 None!12243)))

(declare-fun b!4706685 () Bool)

(declare-fun res!1988267 () Bool)

(declare-fun e!2935929 () Bool)

(assert (=> b!4706685 (=> (not res!1988267) (not e!2935929))))

(declare-fun lt!1871554 () Option!12244)

(declare-fun get!17628 (Option!12244) tuple2!54062)

(assert (=> b!4706685 (= res!1988267 (= (_1!30325 (get!17628 lt!1871554)) key!4653))))

(declare-fun b!4706686 () Bool)

(declare-fun e!2935930 () Bool)

(assert (=> b!4706686 (= e!2935930 (not (containsKey!3220 lt!1871329 key!4653)))))

(declare-fun b!4706687 () Bool)

(declare-fun e!2935931 () Option!12244)

(assert (=> b!4706687 (= e!2935931 e!2935932)))

(declare-fun c!804377 () Bool)

(assert (=> b!4706687 (= c!804377 (is-Cons!52587 lt!1871329))))

(declare-fun d!1497921 () Bool)

(declare-fun e!2935928 () Bool)

(assert (=> d!1497921 e!2935928))

(declare-fun res!1988268 () Bool)

(assert (=> d!1497921 (=> res!1988268 e!2935928)))

(assert (=> d!1497921 (= res!1988268 e!2935930)))

(declare-fun res!1988269 () Bool)

(assert (=> d!1497921 (=> (not res!1988269) (not e!2935930))))

(declare-fun isEmpty!29145 (Option!12244) Bool)

(assert (=> d!1497921 (= res!1988269 (isEmpty!29145 lt!1871554))))

(assert (=> d!1497921 (= lt!1871554 e!2935931)))

(declare-fun c!804378 () Bool)

(assert (=> d!1497921 (= c!804378 (and (is-Cons!52587 lt!1871329) (= (_1!30325 (h!58884 lt!1871329)) key!4653)))))

(assert (=> d!1497921 (noDuplicateKeys!1917 lt!1871329)))

(assert (=> d!1497921 (= (getPair!521 lt!1871329 key!4653) lt!1871554)))

(declare-fun b!4706688 () Bool)

(assert (=> b!4706688 (= e!2935929 (contains!15908 lt!1871329 (get!17628 lt!1871554)))))

(declare-fun b!4706689 () Bool)

(assert (=> b!4706689 (= e!2935931 (Some!12243 (h!58884 lt!1871329)))))

(declare-fun b!4706690 () Bool)

(assert (=> b!4706690 (= e!2935928 e!2935929)))

(declare-fun res!1988266 () Bool)

(assert (=> b!4706690 (=> (not res!1988266) (not e!2935929))))

(assert (=> b!4706690 (= res!1988266 (isDefined!9499 lt!1871554))))

(declare-fun b!4706691 () Bool)

(assert (=> b!4706691 (= e!2935932 (getPair!521 (t!359939 lt!1871329) key!4653))))

(assert (= (and d!1497921 c!804378) b!4706689))

(assert (= (and d!1497921 (not c!804378)) b!4706687))

(assert (= (and b!4706687 c!804377) b!4706691))

(assert (= (and b!4706687 (not c!804377)) b!4706684))

(assert (= (and d!1497921 res!1988269) b!4706686))

(assert (= (and d!1497921 (not res!1988268)) b!4706690))

(assert (= (and b!4706690 res!1988266) b!4706685))

(assert (= (and b!4706685 res!1988267) b!4706688))

(declare-fun m!5629591 () Bool)

(assert (=> d!1497921 m!5629591))

(declare-fun m!5629593 () Bool)

(assert (=> d!1497921 m!5629593))

(declare-fun m!5629595 () Bool)

(assert (=> b!4706691 m!5629595))

(declare-fun m!5629597 () Bool)

(assert (=> b!4706690 m!5629597))

(declare-fun m!5629599 () Bool)

(assert (=> b!4706686 m!5629599))

(declare-fun m!5629601 () Bool)

(assert (=> b!4706688 m!5629601))

(assert (=> b!4706688 m!5629601))

(declare-fun m!5629603 () Bool)

(assert (=> b!4706688 m!5629603))

(assert (=> b!4706685 m!5629601))

(assert (=> b!4706485 d!1497921))

(declare-fun bs!1099568 () Bool)

(declare-fun d!1497923 () Bool)

(assert (= bs!1099568 (and d!1497923 start!477990)))

(declare-fun lambda!211709 () Int)

(assert (=> bs!1099568 (= lambda!211709 lambda!211688)))

(declare-fun bs!1099569 () Bool)

(assert (= bs!1099569 (and d!1497923 d!1497849)))

(assert (=> bs!1099569 (= lambda!211709 lambda!211701)))

(declare-fun bs!1099570 () Bool)

(assert (= bs!1099570 (and d!1497923 d!1497861)))

(assert (=> bs!1099570 (not (= lambda!211709 lambda!211704))))

(declare-fun bs!1099571 () Bool)

(assert (= bs!1099571 (and d!1497923 d!1497871)))

(assert (=> bs!1099571 (= lambda!211709 lambda!211705)))

(assert (=> d!1497923 (contains!15903 lm!2023 (hash!4225 hashF!1323 key!4653))))

(declare-fun lt!1871557 () Unit!127238)

(declare-fun choose!33067 (ListLongMap!4253 K!13943 Hashable!6286) Unit!127238)

(assert (=> d!1497923 (= lt!1871557 (choose!33067 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1497923 (forall!11436 (toList!5723 lm!2023) lambda!211709)))

(assert (=> d!1497923 (= (lemmaInGenMapThenLongMapContainsHash!727 lm!2023 key!4653 hashF!1323) lt!1871557)))

(declare-fun bs!1099572 () Bool)

(assert (= bs!1099572 d!1497923))

(assert (=> bs!1099572 m!5629091))

(assert (=> bs!1099572 m!5629091))

(declare-fun m!5629605 () Bool)

(assert (=> bs!1099572 m!5629605))

(declare-fun m!5629607 () Bool)

(assert (=> bs!1099572 m!5629607))

(declare-fun m!5629609 () Bool)

(assert (=> bs!1099572 m!5629609))

(assert (=> b!4706485 d!1497923))

(declare-fun d!1497925 () Bool)

(assert (=> d!1497925 (dynLambda!21764 lambda!211688 lt!1871327)))

(declare-fun lt!1871560 () Unit!127238)

(declare-fun choose!33068 (List!52712 Int tuple2!54064) Unit!127238)

(assert (=> d!1497925 (= lt!1871560 (choose!33068 (toList!5723 lm!2023) lambda!211688 lt!1871327))))

(declare-fun e!2935935 () Bool)

(assert (=> d!1497925 e!2935935))

(declare-fun res!1988272 () Bool)

(assert (=> d!1497925 (=> (not res!1988272) (not e!2935935))))

(assert (=> d!1497925 (= res!1988272 (forall!11436 (toList!5723 lm!2023) lambda!211688))))

(assert (=> d!1497925 (= (forallContained!3543 (toList!5723 lm!2023) lambda!211688 lt!1871327) lt!1871560)))

(declare-fun b!4706694 () Bool)

(assert (=> b!4706694 (= e!2935935 (contains!15902 (toList!5723 lm!2023) lt!1871327))))

(assert (= (and d!1497925 res!1988272) b!4706694))

(declare-fun b_lambda!177569 () Bool)

(assert (=> (not b_lambda!177569) (not d!1497925)))

(declare-fun m!5629611 () Bool)

(assert (=> d!1497925 m!5629611))

(declare-fun m!5629613 () Bool)

(assert (=> d!1497925 m!5629613))

(assert (=> d!1497925 m!5629203))

(assert (=> b!4706694 m!5629085))

(assert (=> b!4706485 d!1497925))

(declare-fun d!1497927 () Bool)

(assert (=> d!1497927 (containsKey!3220 oldBucket!34 key!4653)))

(declare-fun lt!1871563 () Unit!127238)

(declare-fun choose!33069 (List!52711 K!13943 Hashable!6286) Unit!127238)

(assert (=> d!1497927 (= lt!1871563 (choose!33069 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1497927 (noDuplicateKeys!1917 oldBucket!34)))

(assert (=> d!1497927 (= (lemmaGetPairDefinedThenContainsKey!269 oldBucket!34 key!4653 hashF!1323) lt!1871563)))

(declare-fun bs!1099573 () Bool)

(assert (= bs!1099573 d!1497927))

(assert (=> bs!1099573 m!5629081))

(declare-fun m!5629615 () Bool)

(assert (=> bs!1099573 m!5629615))

(assert (=> bs!1099573 m!5629097))

(assert (=> b!4706485 d!1497927))

(declare-fun d!1497929 () Bool)

(declare-fun res!1988277 () Bool)

(declare-fun e!2935940 () Bool)

(assert (=> d!1497929 (=> res!1988277 e!2935940)))

(assert (=> d!1497929 (= res!1988277 (and (is-Cons!52587 (t!359939 oldBucket!34)) (= (_1!30325 (h!58884 (t!359939 oldBucket!34))) key!4653)))))

(assert (=> d!1497929 (= (containsKey!3220 (t!359939 oldBucket!34) key!4653) e!2935940)))

(declare-fun b!4706699 () Bool)

(declare-fun e!2935941 () Bool)

(assert (=> b!4706699 (= e!2935940 e!2935941)))

(declare-fun res!1988278 () Bool)

(assert (=> b!4706699 (=> (not res!1988278) (not e!2935941))))

(assert (=> b!4706699 (= res!1988278 (is-Cons!52587 (t!359939 oldBucket!34)))))

(declare-fun b!4706700 () Bool)

(assert (=> b!4706700 (= e!2935941 (containsKey!3220 (t!359939 (t!359939 oldBucket!34)) key!4653))))

(assert (= (and d!1497929 (not res!1988277)) b!4706699))

(assert (= (and b!4706699 res!1988278) b!4706700))

(declare-fun m!5629617 () Bool)

(assert (=> b!4706700 m!5629617))

(assert (=> b!4706485 d!1497929))

(declare-fun d!1497931 () Bool)

(declare-fun res!1988279 () Bool)

(declare-fun e!2935942 () Bool)

(assert (=> d!1497931 (=> res!1988279 e!2935942)))

(assert (=> d!1497931 (= res!1988279 (and (is-Cons!52587 oldBucket!34) (= (_1!30325 (h!58884 oldBucket!34)) key!4653)))))

(assert (=> d!1497931 (= (containsKey!3220 oldBucket!34 key!4653) e!2935942)))

(declare-fun b!4706701 () Bool)

(declare-fun e!2935943 () Bool)

(assert (=> b!4706701 (= e!2935942 e!2935943)))

(declare-fun res!1988280 () Bool)

(assert (=> b!4706701 (=> (not res!1988280) (not e!2935943))))

(assert (=> b!4706701 (= res!1988280 (is-Cons!52587 oldBucket!34))))

(declare-fun b!4706702 () Bool)

(assert (=> b!4706702 (= e!2935943 (containsKey!3220 (t!359939 oldBucket!34) key!4653))))

(assert (= (and d!1497931 (not res!1988279)) b!4706701))

(assert (= (and b!4706701 res!1988280) b!4706702))

(assert (=> b!4706702 m!5629075))

(assert (=> b!4706485 d!1497931))

(declare-fun d!1497933 () Bool)

(assert (=> d!1497933 (= (isDefined!9499 (getPair!521 lt!1871329 key!4653)) (not (isEmpty!29145 (getPair!521 lt!1871329 key!4653))))))

(declare-fun bs!1099574 () Bool)

(assert (= bs!1099574 d!1497933))

(assert (=> bs!1099574 m!5629069))

(declare-fun m!5629619 () Bool)

(assert (=> bs!1099574 m!5629619))

(assert (=> b!4706485 d!1497933))

(declare-fun d!1497935 () Bool)

(declare-fun e!2935948 () Bool)

(assert (=> d!1497935 e!2935948))

(declare-fun res!1988283 () Bool)

(assert (=> d!1497935 (=> res!1988283 e!2935948)))

(declare-fun lt!1871572 () Bool)

(assert (=> d!1497935 (= res!1988283 (not lt!1871572))))

(declare-fun lt!1871575 () Bool)

(assert (=> d!1497935 (= lt!1871572 lt!1871575)))

(declare-fun lt!1871574 () Unit!127238)

(declare-fun e!2935949 () Unit!127238)

(assert (=> d!1497935 (= lt!1871574 e!2935949)))

(declare-fun c!804381 () Bool)

(assert (=> d!1497935 (= c!804381 lt!1871575)))

(declare-fun containsKey!3223 (List!52712 (_ BitVec 64)) Bool)

(assert (=> d!1497935 (= lt!1871575 (containsKey!3223 (toList!5723 lm!2023) lt!1871354))))

(assert (=> d!1497935 (= (contains!15903 lm!2023 lt!1871354) lt!1871572)))

(declare-fun b!4706709 () Bool)

(declare-fun lt!1871573 () Unit!127238)

(assert (=> b!4706709 (= e!2935949 lt!1871573)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1775 (List!52712 (_ BitVec 64)) Unit!127238)

(assert (=> b!4706709 (= lt!1871573 (lemmaContainsKeyImpliesGetValueByKeyDefined!1775 (toList!5723 lm!2023) lt!1871354))))

(declare-fun isDefined!9502 (Option!12247) Bool)

(assert (=> b!4706709 (isDefined!9502 (getValueByKey!1883 (toList!5723 lm!2023) lt!1871354))))

(declare-fun b!4706710 () Bool)

(declare-fun Unit!127244 () Unit!127238)

(assert (=> b!4706710 (= e!2935949 Unit!127244)))

(declare-fun b!4706711 () Bool)

(assert (=> b!4706711 (= e!2935948 (isDefined!9502 (getValueByKey!1883 (toList!5723 lm!2023) lt!1871354)))))

(assert (= (and d!1497935 c!804381) b!4706709))

(assert (= (and d!1497935 (not c!804381)) b!4706710))

(assert (= (and d!1497935 (not res!1988283)) b!4706711))

(declare-fun m!5629621 () Bool)

(assert (=> d!1497935 m!5629621))

(declare-fun m!5629623 () Bool)

(assert (=> b!4706709 m!5629623))

(assert (=> b!4706709 m!5629587))

(assert (=> b!4706709 m!5629587))

(declare-fun m!5629625 () Bool)

(assert (=> b!4706709 m!5629625))

(assert (=> b!4706711 m!5629587))

(assert (=> b!4706711 m!5629587))

(assert (=> b!4706711 m!5629625))

(assert (=> b!4706485 d!1497935))

(declare-fun d!1497937 () Bool)

(declare-fun lt!1871578 () Bool)

(declare-fun content!9315 (List!52712) (Set tuple2!54064))

(assert (=> d!1497937 (= lt!1871578 (set.member lt!1871327 (content!9315 (toList!5723 lm!2023))))))

(declare-fun e!2935954 () Bool)

(assert (=> d!1497937 (= lt!1871578 e!2935954)))

(declare-fun res!1988288 () Bool)

(assert (=> d!1497937 (=> (not res!1988288) (not e!2935954))))

(assert (=> d!1497937 (= res!1988288 (is-Cons!52588 (toList!5723 lm!2023)))))

(assert (=> d!1497937 (= (contains!15902 (toList!5723 lm!2023) lt!1871327) lt!1871578)))

(declare-fun b!4706716 () Bool)

(declare-fun e!2935955 () Bool)

(assert (=> b!4706716 (= e!2935954 e!2935955)))

(declare-fun res!1988289 () Bool)

(assert (=> b!4706716 (=> res!1988289 e!2935955)))

(assert (=> b!4706716 (= res!1988289 (= (h!58885 (toList!5723 lm!2023)) lt!1871327))))

(declare-fun b!4706717 () Bool)

(assert (=> b!4706717 (= e!2935955 (contains!15902 (t!359940 (toList!5723 lm!2023)) lt!1871327))))

(assert (= (and d!1497937 res!1988288) b!4706716))

(assert (= (and b!4706716 (not res!1988289)) b!4706717))

(declare-fun m!5629627 () Bool)

(assert (=> d!1497937 m!5629627))

(declare-fun m!5629629 () Bool)

(assert (=> d!1497937 m!5629629))

(declare-fun m!5629631 () Bool)

(assert (=> b!4706717 m!5629631))

(assert (=> b!4706485 d!1497937))

(declare-fun d!1497939 () Bool)

(assert (=> d!1497939 (contains!15902 (toList!5723 lm!2023) (tuple2!54065 lt!1871354 lt!1871329))))

(declare-fun lt!1871581 () Unit!127238)

(declare-fun choose!33070 (ListLongMap!4253 (_ BitVec 64) List!52711) Unit!127238)

(assert (=> d!1497939 (= lt!1871581 (choose!33070 lm!2023 lt!1871354 lt!1871329))))

(assert (=> d!1497939 (contains!15903 lm!2023 lt!1871354)))

(assert (=> d!1497939 (= (lemmaGetValueImpliesTupleContained!326 lm!2023 lt!1871354 lt!1871329) lt!1871581)))

(declare-fun bs!1099575 () Bool)

(assert (= bs!1099575 d!1497939))

(declare-fun m!5629633 () Bool)

(assert (=> bs!1099575 m!5629633))

(declare-fun m!5629635 () Bool)

(assert (=> bs!1099575 m!5629635))

(assert (=> bs!1099575 m!5629077))

(assert (=> b!4706485 d!1497939))

(declare-fun bs!1099576 () Bool)

(declare-fun d!1497941 () Bool)

(assert (= bs!1099576 (and d!1497941 d!1497849)))

(declare-fun lambda!211716 () Int)

(assert (=> bs!1099576 (= lambda!211716 lambda!211701)))

(declare-fun bs!1099577 () Bool)

(assert (= bs!1099577 (and d!1497941 d!1497923)))

(assert (=> bs!1099577 (= lambda!211716 lambda!211709)))

(declare-fun bs!1099578 () Bool)

(assert (= bs!1099578 (and d!1497941 start!477990)))

(assert (=> bs!1099578 (= lambda!211716 lambda!211688)))

(declare-fun bs!1099579 () Bool)

(assert (= bs!1099579 (and d!1497941 d!1497861)))

(assert (=> bs!1099579 (not (= lambda!211716 lambda!211704))))

(declare-fun bs!1099580 () Bool)

(assert (= bs!1099580 (and d!1497941 d!1497871)))

(assert (=> bs!1099580 (= lambda!211716 lambda!211705)))

(declare-fun b!4706728 () Bool)

(declare-fun res!1988300 () Bool)

(declare-fun e!2935961 () Bool)

(assert (=> b!4706728 (=> (not res!1988300) (not e!2935961))))

(assert (=> b!4706728 (= res!1988300 (contains!15901 (extractMap!1943 (toList!5723 lm!2023)) key!4653))))

(assert (=> d!1497941 e!2935961))

(declare-fun res!1988299 () Bool)

(assert (=> d!1497941 (=> (not res!1988299) (not e!2935961))))

(assert (=> d!1497941 (= res!1988299 (forall!11436 (toList!5723 lm!2023) lambda!211716))))

(declare-fun lt!1871601 () Unit!127238)

(declare-fun choose!33071 (ListLongMap!4253 K!13943 Hashable!6286) Unit!127238)

(assert (=> d!1497941 (= lt!1871601 (choose!33071 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1497941 (forall!11436 (toList!5723 lm!2023) lambda!211716)))

(assert (=> d!1497941 (= (lemmaInGenMapThenGetPairDefined!317 lm!2023 key!4653 hashF!1323) lt!1871601)))

(declare-fun lt!1871598 () List!52711)

(declare-fun b!4706730 () Bool)

(declare-fun e!2935960 () Bool)

(declare-fun lt!1871605 () (_ BitVec 64))

(assert (=> b!4706730 (= e!2935960 (= (getValueByKey!1883 (toList!5723 lm!2023) lt!1871605) (Some!12246 lt!1871598)))))

(declare-fun b!4706729 () Bool)

(assert (=> b!4706729 (= e!2935961 (isDefined!9499 (getPair!521 (apply!12400 lm!2023 (hash!4225 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1871602 () Unit!127238)

(assert (=> b!4706729 (= lt!1871602 (forallContained!3543 (toList!5723 lm!2023) lambda!211716 (tuple2!54065 (hash!4225 hashF!1323 key!4653) (apply!12400 lm!2023 (hash!4225 hashF!1323 key!4653)))))))

(declare-fun lt!1871604 () Unit!127238)

(declare-fun lt!1871599 () Unit!127238)

(assert (=> b!4706729 (= lt!1871604 lt!1871599)))

(assert (=> b!4706729 (contains!15902 (toList!5723 lm!2023) (tuple2!54065 lt!1871605 lt!1871598))))

(assert (=> b!4706729 (= lt!1871599 (lemmaGetValueImpliesTupleContained!326 lm!2023 lt!1871605 lt!1871598))))

(assert (=> b!4706729 e!2935960))

(declare-fun res!1988301 () Bool)

(assert (=> b!4706729 (=> (not res!1988301) (not e!2935960))))

(assert (=> b!4706729 (= res!1988301 (contains!15903 lm!2023 lt!1871605))))

(assert (=> b!4706729 (= lt!1871598 (apply!12400 lm!2023 (hash!4225 hashF!1323 key!4653)))))

(assert (=> b!4706729 (= lt!1871605 (hash!4225 hashF!1323 key!4653))))

(declare-fun lt!1871603 () Unit!127238)

(declare-fun lt!1871600 () Unit!127238)

(assert (=> b!4706729 (= lt!1871603 lt!1871600)))

(assert (=> b!4706729 (contains!15903 lm!2023 (hash!4225 hashF!1323 key!4653))))

(assert (=> b!4706729 (= lt!1871600 (lemmaInGenMapThenLongMapContainsHash!727 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4706727 () Bool)

(declare-fun res!1988298 () Bool)

(assert (=> b!4706727 (=> (not res!1988298) (not e!2935961))))

(assert (=> b!4706727 (= res!1988298 (allKeysSameHashInMap!1831 lm!2023 hashF!1323))))

(assert (= (and d!1497941 res!1988299) b!4706727))

(assert (= (and b!4706727 res!1988298) b!4706728))

(assert (= (and b!4706728 res!1988300) b!4706729))

(assert (= (and b!4706729 res!1988301) b!4706730))

(declare-fun m!5629637 () Bool)

(assert (=> d!1497941 m!5629637))

(declare-fun m!5629639 () Bool)

(assert (=> d!1497941 m!5629639))

(assert (=> d!1497941 m!5629637))

(declare-fun m!5629641 () Bool)

(assert (=> b!4706729 m!5629641))

(assert (=> b!4706729 m!5629083))

(declare-fun m!5629643 () Bool)

(assert (=> b!4706729 m!5629643))

(declare-fun m!5629645 () Bool)

(assert (=> b!4706729 m!5629645))

(declare-fun m!5629647 () Bool)

(assert (=> b!4706729 m!5629647))

(assert (=> b!4706729 m!5629091))

(declare-fun m!5629649 () Bool)

(assert (=> b!4706729 m!5629649))

(assert (=> b!4706729 m!5629091))

(declare-fun m!5629651 () Bool)

(assert (=> b!4706729 m!5629651))

(assert (=> b!4706729 m!5629091))

(assert (=> b!4706729 m!5629605))

(declare-fun m!5629653 () Bool)

(assert (=> b!4706729 m!5629653))

(assert (=> b!4706729 m!5629649))

(assert (=> b!4706729 m!5629643))

(assert (=> b!4706728 m!5629223))

(assert (=> b!4706728 m!5629223))

(declare-fun m!5629655 () Bool)

(assert (=> b!4706728 m!5629655))

(declare-fun m!5629657 () Bool)

(assert (=> b!4706730 m!5629657))

(assert (=> b!4706727 m!5629095))

(assert (=> b!4706485 d!1497941))

(declare-fun bs!1099593 () Bool)

(declare-fun b!4706773 () Bool)

(assert (= bs!1099593 (and b!4706773 d!1497845)))

(declare-fun lambda!211780 () Int)

(assert (=> bs!1099593 (not (= lambda!211780 lambda!211698))))

(declare-fun bs!1099594 () Bool)

(assert (= bs!1099594 (and b!4706773 d!1497893)))

(assert (=> bs!1099594 (not (= lambda!211780 lambda!211706))))

(assert (=> b!4706773 true))

(declare-fun bs!1099595 () Bool)

(declare-fun b!4706775 () Bool)

(assert (= bs!1099595 (and b!4706775 d!1497845)))

(declare-fun lambda!211781 () Int)

(assert (=> bs!1099595 (not (= lambda!211781 lambda!211698))))

(declare-fun bs!1099596 () Bool)

(assert (= bs!1099596 (and b!4706775 d!1497893)))

(assert (=> bs!1099596 (not (= lambda!211781 lambda!211706))))

(declare-fun bs!1099597 () Bool)

(assert (= bs!1099597 (and b!4706775 b!4706773)))

(assert (=> bs!1099597 (= lambda!211781 lambda!211780)))

(assert (=> b!4706775 true))

(declare-fun lambda!211782 () Int)

(assert (=> bs!1099595 (not (= lambda!211782 lambda!211698))))

(assert (=> bs!1099596 (not (= lambda!211782 lambda!211706))))

(declare-fun lt!1871750 () ListMap!5087)

(assert (=> bs!1099597 (= (= lt!1871750 lt!1871357) (= lambda!211782 lambda!211780))))

(assert (=> b!4706775 (= (= lt!1871750 lt!1871357) (= lambda!211782 lambda!211781))))

(assert (=> b!4706775 true))

(declare-fun bs!1099598 () Bool)

(declare-fun d!1497943 () Bool)

(assert (= bs!1099598 (and d!1497943 b!4706775)))

(declare-fun lt!1871746 () ListMap!5087)

(declare-fun lambda!211783 () Int)

(assert (=> bs!1099598 (= (= lt!1871746 lt!1871357) (= lambda!211783 lambda!211781))))

(declare-fun bs!1099599 () Bool)

(assert (= bs!1099599 (and d!1497943 b!4706773)))

(assert (=> bs!1099599 (= (= lt!1871746 lt!1871357) (= lambda!211783 lambda!211780))))

(assert (=> bs!1099598 (= (= lt!1871746 lt!1871750) (= lambda!211783 lambda!211782))))

(declare-fun bs!1099600 () Bool)

(assert (= bs!1099600 (and d!1497943 d!1497893)))

(assert (=> bs!1099600 (not (= lambda!211783 lambda!211706))))

(declare-fun bs!1099601 () Bool)

(assert (= bs!1099601 (and d!1497943 d!1497845)))

(assert (=> bs!1099601 (not (= lambda!211783 lambda!211698))))

(assert (=> d!1497943 true))

(declare-fun b!4706772 () Bool)

(declare-fun res!1988327 () Bool)

(declare-fun e!2935985 () Bool)

(assert (=> b!4706772 (=> (not res!1988327) (not e!2935985))))

(assert (=> b!4706772 (= res!1988327 (forall!11438 (toList!5724 lt!1871357) lambda!211783))))

(declare-fun e!2935984 () ListMap!5087)

(assert (=> b!4706773 (= e!2935984 lt!1871357)))

(declare-fun lt!1871742 () Unit!127238)

(declare-fun call!329076 () Unit!127238)

(assert (=> b!4706773 (= lt!1871742 call!329076)))

(declare-fun call!329077 () Bool)

(assert (=> b!4706773 call!329077))

(declare-fun lt!1871753 () Unit!127238)

(assert (=> b!4706773 (= lt!1871753 lt!1871742)))

(declare-fun call!329078 () Bool)

(assert (=> b!4706773 call!329078))

(declare-fun lt!1871733 () Unit!127238)

(declare-fun Unit!127254 () Unit!127238)

(assert (=> b!4706773 (= lt!1871733 Unit!127254)))

(declare-fun b!4706774 () Bool)

(declare-fun e!2935986 () Bool)

(assert (=> b!4706774 (= e!2935986 call!329078)))

(declare-fun bm!329071 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!749 (ListMap!5087) Unit!127238)

(assert (=> bm!329071 (= call!329076 (lemmaContainsAllItsOwnKeys!749 lt!1871357))))

(declare-fun c!804390 () Bool)

(declare-fun bm!329072 () Bool)

(assert (=> bm!329072 (= call!329078 (forall!11438 (toList!5724 lt!1871357) (ite c!804390 lambda!211780 lambda!211782)))))

(declare-fun lt!1871749 () ListMap!5087)

(declare-fun bm!329073 () Bool)

(assert (=> bm!329073 (= call!329077 (forall!11438 (ite c!804390 (toList!5724 lt!1871357) (toList!5724 lt!1871749)) (ite c!804390 lambda!211780 lambda!211782)))))

(assert (=> b!4706775 (= e!2935984 lt!1871750)))

(assert (=> b!4706775 (= lt!1871749 (+!2201 lt!1871357 (h!58884 (_2!30326 (h!58885 (toList!5723 lm!2023))))))))

(assert (=> b!4706775 (= lt!1871750 (addToMapMapFromBucket!1349 (t!359939 (_2!30326 (h!58885 (toList!5723 lm!2023)))) (+!2201 lt!1871357 (h!58884 (_2!30326 (h!58885 (toList!5723 lm!2023)))))))))

(declare-fun lt!1871734 () Unit!127238)

(assert (=> b!4706775 (= lt!1871734 call!329076)))

(assert (=> b!4706775 (forall!11438 (toList!5724 lt!1871357) lambda!211781)))

(declare-fun lt!1871747 () Unit!127238)

(assert (=> b!4706775 (= lt!1871747 lt!1871734)))

(assert (=> b!4706775 call!329077))

(declare-fun lt!1871744 () Unit!127238)

(declare-fun Unit!127256 () Unit!127238)

(assert (=> b!4706775 (= lt!1871744 Unit!127256)))

(assert (=> b!4706775 (forall!11438 (t!359939 (_2!30326 (h!58885 (toList!5723 lm!2023)))) lambda!211782)))

(declare-fun lt!1871737 () Unit!127238)

(declare-fun Unit!127257 () Unit!127238)

(assert (=> b!4706775 (= lt!1871737 Unit!127257)))

(declare-fun lt!1871748 () Unit!127238)

(declare-fun Unit!127258 () Unit!127238)

(assert (=> b!4706775 (= lt!1871748 Unit!127258)))

(declare-fun lt!1871751 () Unit!127238)

(declare-fun forallContained!3546 (List!52711 Int tuple2!54062) Unit!127238)

(assert (=> b!4706775 (= lt!1871751 (forallContained!3546 (toList!5724 lt!1871749) lambda!211782 (h!58884 (_2!30326 (h!58885 (toList!5723 lm!2023))))))))

(assert (=> b!4706775 (contains!15901 lt!1871749 (_1!30325 (h!58884 (_2!30326 (h!58885 (toList!5723 lm!2023))))))))

(declare-fun lt!1871743 () Unit!127238)

(declare-fun Unit!127259 () Unit!127238)

(assert (=> b!4706775 (= lt!1871743 Unit!127259)))

(assert (=> b!4706775 (contains!15901 lt!1871750 (_1!30325 (h!58884 (_2!30326 (h!58885 (toList!5723 lm!2023))))))))

(declare-fun lt!1871738 () Unit!127238)

(declare-fun Unit!127260 () Unit!127238)

(assert (=> b!4706775 (= lt!1871738 Unit!127260)))

(assert (=> b!4706775 (forall!11438 (_2!30326 (h!58885 (toList!5723 lm!2023))) lambda!211782)))

(declare-fun lt!1871735 () Unit!127238)

(declare-fun Unit!127262 () Unit!127238)

(assert (=> b!4706775 (= lt!1871735 Unit!127262)))

(assert (=> b!4706775 (forall!11438 (toList!5724 lt!1871749) lambda!211782)))

(declare-fun lt!1871740 () Unit!127238)

(declare-fun Unit!127263 () Unit!127238)

(assert (=> b!4706775 (= lt!1871740 Unit!127263)))

(declare-fun lt!1871745 () Unit!127238)

(declare-fun Unit!127264 () Unit!127238)

(assert (=> b!4706775 (= lt!1871745 Unit!127264)))

(declare-fun lt!1871741 () Unit!127238)

(declare-fun addForallContainsKeyThenBeforeAdding!749 (ListMap!5087 ListMap!5087 K!13943 V!14189) Unit!127238)

(assert (=> b!4706775 (= lt!1871741 (addForallContainsKeyThenBeforeAdding!749 lt!1871357 lt!1871750 (_1!30325 (h!58884 (_2!30326 (h!58885 (toList!5723 lm!2023))))) (_2!30325 (h!58884 (_2!30326 (h!58885 (toList!5723 lm!2023)))))))))

(assert (=> b!4706775 (forall!11438 (toList!5724 lt!1871357) lambda!211782)))

(declare-fun lt!1871752 () Unit!127238)

(assert (=> b!4706775 (= lt!1871752 lt!1871741)))

(assert (=> b!4706775 (forall!11438 (toList!5724 lt!1871357) lambda!211782)))

(declare-fun lt!1871736 () Unit!127238)

(declare-fun Unit!127265 () Unit!127238)

(assert (=> b!4706775 (= lt!1871736 Unit!127265)))

(declare-fun res!1988326 () Bool)

(assert (=> b!4706775 (= res!1988326 (forall!11438 (_2!30326 (h!58885 (toList!5723 lm!2023))) lambda!211782))))

(assert (=> b!4706775 (=> (not res!1988326) (not e!2935986))))

(assert (=> b!4706775 e!2935986))

(declare-fun lt!1871739 () Unit!127238)

(declare-fun Unit!127266 () Unit!127238)

(assert (=> b!4706775 (= lt!1871739 Unit!127266)))

(declare-fun b!4706776 () Bool)

(assert (=> b!4706776 (= e!2935985 (invariantList!1461 (toList!5724 lt!1871746)))))

(assert (=> d!1497943 e!2935985))

(declare-fun res!1988325 () Bool)

(assert (=> d!1497943 (=> (not res!1988325) (not e!2935985))))

(assert (=> d!1497943 (= res!1988325 (forall!11438 (_2!30326 (h!58885 (toList!5723 lm!2023))) lambda!211783))))

(assert (=> d!1497943 (= lt!1871746 e!2935984)))

(assert (=> d!1497943 (= c!804390 (is-Nil!52587 (_2!30326 (h!58885 (toList!5723 lm!2023)))))))

(assert (=> d!1497943 (noDuplicateKeys!1917 (_2!30326 (h!58885 (toList!5723 lm!2023))))))

(assert (=> d!1497943 (= (addToMapMapFromBucket!1349 (_2!30326 (h!58885 (toList!5723 lm!2023))) lt!1871357) lt!1871746)))

(assert (= (and d!1497943 c!804390) b!4706773))

(assert (= (and d!1497943 (not c!804390)) b!4706775))

(assert (= (and b!4706775 res!1988326) b!4706774))

(assert (= (or b!4706773 b!4706775) bm!329071))

(assert (= (or b!4706773 b!4706774) bm!329072))

(assert (= (or b!4706773 b!4706775) bm!329073))

(assert (= (and d!1497943 res!1988325) b!4706772))

(assert (= (and b!4706772 res!1988327) b!4706776))

(declare-fun m!5629753 () Bool)

(assert (=> b!4706772 m!5629753))

(declare-fun m!5629755 () Bool)

(assert (=> bm!329072 m!5629755))

(declare-fun m!5629757 () Bool)

(assert (=> b!4706776 m!5629757))

(declare-fun m!5629759 () Bool)

(assert (=> bm!329071 m!5629759))

(declare-fun m!5629761 () Bool)

(assert (=> bm!329073 m!5629761))

(declare-fun m!5629763 () Bool)

(assert (=> d!1497943 m!5629763))

(declare-fun m!5629765 () Bool)

(assert (=> d!1497943 m!5629765))

(declare-fun m!5629767 () Bool)

(assert (=> b!4706775 m!5629767))

(declare-fun m!5629769 () Bool)

(assert (=> b!4706775 m!5629769))

(declare-fun m!5629771 () Bool)

(assert (=> b!4706775 m!5629771))

(declare-fun m!5629773 () Bool)

(assert (=> b!4706775 m!5629773))

(declare-fun m!5629775 () Bool)

(assert (=> b!4706775 m!5629775))

(declare-fun m!5629777 () Bool)

(assert (=> b!4706775 m!5629777))

(assert (=> b!4706775 m!5629769))

(declare-fun m!5629779 () Bool)

(assert (=> b!4706775 m!5629779))

(declare-fun m!5629781 () Bool)

(assert (=> b!4706775 m!5629781))

(declare-fun m!5629783 () Bool)

(assert (=> b!4706775 m!5629783))

(assert (=> b!4706775 m!5629783))

(declare-fun m!5629785 () Bool)

(assert (=> b!4706775 m!5629785))

(assert (=> b!4706775 m!5629777))

(declare-fun m!5629787 () Bool)

(assert (=> b!4706775 m!5629787))

(assert (=> b!4706464 d!1497943))

(declare-fun bs!1099602 () Bool)

(declare-fun d!1497969 () Bool)

(assert (= bs!1099602 (and d!1497969 d!1497849)))

(declare-fun lambda!211784 () Int)

(assert (=> bs!1099602 (= lambda!211784 lambda!211701)))

(declare-fun bs!1099603 () Bool)

(assert (= bs!1099603 (and d!1497969 d!1497923)))

(assert (=> bs!1099603 (= lambda!211784 lambda!211709)))

(declare-fun bs!1099604 () Bool)

(assert (= bs!1099604 (and d!1497969 start!477990)))

(assert (=> bs!1099604 (= lambda!211784 lambda!211688)))

(declare-fun bs!1099605 () Bool)

(assert (= bs!1099605 (and d!1497969 d!1497941)))

(assert (=> bs!1099605 (= lambda!211784 lambda!211716)))

(declare-fun bs!1099606 () Bool)

(assert (= bs!1099606 (and d!1497969 d!1497861)))

(assert (=> bs!1099606 (not (= lambda!211784 lambda!211704))))

(declare-fun bs!1099608 () Bool)

(assert (= bs!1099608 (and d!1497969 d!1497871)))

(assert (=> bs!1099608 (= lambda!211784 lambda!211705)))

(declare-fun lt!1871757 () ListMap!5087)

(assert (=> d!1497969 (invariantList!1461 (toList!5724 lt!1871757))))

(declare-fun e!2935990 () ListMap!5087)

(assert (=> d!1497969 (= lt!1871757 e!2935990)))

(declare-fun c!804391 () Bool)

(assert (=> d!1497969 (= c!804391 (is-Cons!52588 (t!359940 (toList!5723 lm!2023))))))

(assert (=> d!1497969 (forall!11436 (t!359940 (toList!5723 lm!2023)) lambda!211784)))

(assert (=> d!1497969 (= (extractMap!1943 (t!359940 (toList!5723 lm!2023))) lt!1871757)))

(declare-fun b!4706782 () Bool)

(assert (=> b!4706782 (= e!2935990 (addToMapMapFromBucket!1349 (_2!30326 (h!58885 (t!359940 (toList!5723 lm!2023)))) (extractMap!1943 (t!359940 (t!359940 (toList!5723 lm!2023))))))))

(declare-fun b!4706783 () Bool)

(assert (=> b!4706783 (= e!2935990 (ListMap!5088 Nil!52587))))

(assert (= (and d!1497969 c!804391) b!4706782))

(assert (= (and d!1497969 (not c!804391)) b!4706783))

(declare-fun m!5629803 () Bool)

(assert (=> d!1497969 m!5629803))

(declare-fun m!5629807 () Bool)

(assert (=> d!1497969 m!5629807))

(declare-fun m!5629811 () Bool)

(assert (=> b!4706782 m!5629811))

(assert (=> b!4706782 m!5629811))

(declare-fun m!5629815 () Bool)

(assert (=> b!4706782 m!5629815))

(assert (=> b!4706464 d!1497969))

(declare-fun d!1497973 () Bool)

(assert (=> d!1497973 (= (tail!8777 lm!2023) (ListLongMap!4254 (tail!8776 (toList!5723 lm!2023))))))

(declare-fun bs!1099610 () Bool)

(assert (= bs!1099610 d!1497973))

(assert (=> bs!1099610 m!5629199))

(assert (=> b!4706464 d!1497973))

(declare-fun d!1497977 () Bool)

(assert (=> d!1497977 (= (eq!1076 lt!1871328 lt!1871349) (= (content!9313 (toList!5724 lt!1871328)) (content!9313 (toList!5724 lt!1871349))))))

(declare-fun bs!1099611 () Bool)

(assert (= bs!1099611 d!1497977))

(assert (=> bs!1099611 m!5629405))

(assert (=> bs!1099611 m!5629401))

(assert (=> b!4706486 d!1497977))

(declare-fun bs!1099612 () Bool)

(declare-fun b!4706787 () Bool)

(assert (= bs!1099612 (and b!4706787 b!4706775)))

(declare-fun lambda!211786 () Int)

(assert (=> bs!1099612 (= lambda!211786 lambda!211781)))

(declare-fun bs!1099613 () Bool)

(assert (= bs!1099613 (and b!4706787 b!4706773)))

(assert (=> bs!1099613 (= lambda!211786 lambda!211780)))

(declare-fun bs!1099614 () Bool)

(assert (= bs!1099614 (and b!4706787 d!1497943)))

(assert (=> bs!1099614 (= (= lt!1871357 lt!1871746) (= lambda!211786 lambda!211783))))

(assert (=> bs!1099612 (= (= lt!1871357 lt!1871750) (= lambda!211786 lambda!211782))))

(declare-fun bs!1099615 () Bool)

(assert (= bs!1099615 (and b!4706787 d!1497893)))

(assert (=> bs!1099615 (not (= lambda!211786 lambda!211706))))

(declare-fun bs!1099616 () Bool)

(assert (= bs!1099616 (and b!4706787 d!1497845)))

(assert (=> bs!1099616 (not (= lambda!211786 lambda!211698))))

(assert (=> b!4706787 true))

(declare-fun bs!1099617 () Bool)

(declare-fun b!4706789 () Bool)

(assert (= bs!1099617 (and b!4706789 b!4706775)))

(declare-fun lambda!211787 () Int)

(assert (=> bs!1099617 (= lambda!211787 lambda!211781)))

(declare-fun bs!1099618 () Bool)

(assert (= bs!1099618 (and b!4706789 b!4706773)))

(assert (=> bs!1099618 (= lambda!211787 lambda!211780)))

(declare-fun bs!1099619 () Bool)

(assert (= bs!1099619 (and b!4706789 b!4706787)))

(assert (=> bs!1099619 (= lambda!211787 lambda!211786)))

(declare-fun bs!1099620 () Bool)

(assert (= bs!1099620 (and b!4706789 d!1497943)))

(assert (=> bs!1099620 (= (= lt!1871357 lt!1871746) (= lambda!211787 lambda!211783))))

(assert (=> bs!1099617 (= (= lt!1871357 lt!1871750) (= lambda!211787 lambda!211782))))

(declare-fun bs!1099621 () Bool)

(assert (= bs!1099621 (and b!4706789 d!1497893)))

(assert (=> bs!1099621 (not (= lambda!211787 lambda!211706))))

(declare-fun bs!1099622 () Bool)

(assert (= bs!1099622 (and b!4706789 d!1497845)))

(assert (=> bs!1099622 (not (= lambda!211787 lambda!211698))))

(assert (=> b!4706789 true))

(declare-fun lambda!211788 () Int)

(declare-fun lt!1871776 () ListMap!5087)

(assert (=> bs!1099617 (= (= lt!1871776 lt!1871357) (= lambda!211788 lambda!211781))))

(assert (=> bs!1099618 (= (= lt!1871776 lt!1871357) (= lambda!211788 lambda!211780))))

(assert (=> bs!1099619 (= (= lt!1871776 lt!1871357) (= lambda!211788 lambda!211786))))

(assert (=> bs!1099617 (= (= lt!1871776 lt!1871750) (= lambda!211788 lambda!211782))))

(assert (=> b!4706789 (= (= lt!1871776 lt!1871357) (= lambda!211788 lambda!211787))))

(assert (=> bs!1099620 (= (= lt!1871776 lt!1871746) (= lambda!211788 lambda!211783))))

(assert (=> bs!1099621 (not (= lambda!211788 lambda!211706))))

(assert (=> bs!1099622 (not (= lambda!211788 lambda!211698))))

(assert (=> b!4706789 true))

(declare-fun bs!1099623 () Bool)

(declare-fun d!1497979 () Bool)

(assert (= bs!1099623 (and d!1497979 b!4706775)))

(declare-fun lt!1871772 () ListMap!5087)

(declare-fun lambda!211789 () Int)

(assert (=> bs!1099623 (= (= lt!1871772 lt!1871357) (= lambda!211789 lambda!211781))))

(declare-fun bs!1099624 () Bool)

(assert (= bs!1099624 (and d!1497979 b!4706789)))

(assert (=> bs!1099624 (= (= lt!1871772 lt!1871776) (= lambda!211789 lambda!211788))))

(declare-fun bs!1099625 () Bool)

(assert (= bs!1099625 (and d!1497979 b!4706773)))

(assert (=> bs!1099625 (= (= lt!1871772 lt!1871357) (= lambda!211789 lambda!211780))))

(declare-fun bs!1099626 () Bool)

(assert (= bs!1099626 (and d!1497979 b!4706787)))

(assert (=> bs!1099626 (= (= lt!1871772 lt!1871357) (= lambda!211789 lambda!211786))))

(assert (=> bs!1099623 (= (= lt!1871772 lt!1871750) (= lambda!211789 lambda!211782))))

(assert (=> bs!1099624 (= (= lt!1871772 lt!1871357) (= lambda!211789 lambda!211787))))

(declare-fun bs!1099627 () Bool)

(assert (= bs!1099627 (and d!1497979 d!1497943)))

(assert (=> bs!1099627 (= (= lt!1871772 lt!1871746) (= lambda!211789 lambda!211783))))

(declare-fun bs!1099628 () Bool)

(assert (= bs!1099628 (and d!1497979 d!1497893)))

(assert (=> bs!1099628 (not (= lambda!211789 lambda!211706))))

(declare-fun bs!1099629 () Bool)

(assert (= bs!1099629 (and d!1497979 d!1497845)))

(assert (=> bs!1099629 (not (= lambda!211789 lambda!211698))))

(assert (=> d!1497979 true))

(declare-fun b!4706786 () Bool)

(declare-fun res!1988333 () Bool)

(declare-fun e!2935993 () Bool)

(assert (=> b!4706786 (=> (not res!1988333) (not e!2935993))))

(assert (=> b!4706786 (= res!1988333 (forall!11438 (toList!5724 lt!1871357) lambda!211789))))

(declare-fun e!2935992 () ListMap!5087)

(assert (=> b!4706787 (= e!2935992 lt!1871357)))

(declare-fun lt!1871768 () Unit!127238)

(declare-fun call!329079 () Unit!127238)

(assert (=> b!4706787 (= lt!1871768 call!329079)))

(declare-fun call!329080 () Bool)

(assert (=> b!4706787 call!329080))

(declare-fun lt!1871779 () Unit!127238)

(assert (=> b!4706787 (= lt!1871779 lt!1871768)))

(declare-fun call!329081 () Bool)

(assert (=> b!4706787 call!329081))

(declare-fun lt!1871759 () Unit!127238)

(declare-fun Unit!127267 () Unit!127238)

(assert (=> b!4706787 (= lt!1871759 Unit!127267)))

(declare-fun b!4706788 () Bool)

(declare-fun e!2935994 () Bool)

(assert (=> b!4706788 (= e!2935994 call!329081)))

(declare-fun bm!329074 () Bool)

(assert (=> bm!329074 (= call!329079 (lemmaContainsAllItsOwnKeys!749 lt!1871357))))

(declare-fun bm!329075 () Bool)

(declare-fun c!804393 () Bool)

(assert (=> bm!329075 (= call!329081 (forall!11438 (toList!5724 lt!1871357) (ite c!804393 lambda!211786 lambda!211788)))))

(declare-fun lt!1871775 () ListMap!5087)

(declare-fun bm!329076 () Bool)

(assert (=> bm!329076 (= call!329080 (forall!11438 (ite c!804393 (toList!5724 lt!1871357) (toList!5724 lt!1871775)) (ite c!804393 lambda!211786 lambda!211788)))))

(assert (=> b!4706789 (= e!2935992 lt!1871776)))

(assert (=> b!4706789 (= lt!1871775 (+!2201 lt!1871357 (h!58884 lt!1871346)))))

(assert (=> b!4706789 (= lt!1871776 (addToMapMapFromBucket!1349 (t!359939 lt!1871346) (+!2201 lt!1871357 (h!58884 lt!1871346))))))

(declare-fun lt!1871760 () Unit!127238)

(assert (=> b!4706789 (= lt!1871760 call!329079)))

(assert (=> b!4706789 (forall!11438 (toList!5724 lt!1871357) lambda!211787)))

(declare-fun lt!1871773 () Unit!127238)

(assert (=> b!4706789 (= lt!1871773 lt!1871760)))

(assert (=> b!4706789 call!329080))

(declare-fun lt!1871770 () Unit!127238)

(declare-fun Unit!127268 () Unit!127238)

(assert (=> b!4706789 (= lt!1871770 Unit!127268)))

(assert (=> b!4706789 (forall!11438 (t!359939 lt!1871346) lambda!211788)))

(declare-fun lt!1871763 () Unit!127238)

(declare-fun Unit!127269 () Unit!127238)

(assert (=> b!4706789 (= lt!1871763 Unit!127269)))

(declare-fun lt!1871774 () Unit!127238)

(declare-fun Unit!127270 () Unit!127238)

(assert (=> b!4706789 (= lt!1871774 Unit!127270)))

(declare-fun lt!1871777 () Unit!127238)

(assert (=> b!4706789 (= lt!1871777 (forallContained!3546 (toList!5724 lt!1871775) lambda!211788 (h!58884 lt!1871346)))))

(assert (=> b!4706789 (contains!15901 lt!1871775 (_1!30325 (h!58884 lt!1871346)))))

(declare-fun lt!1871769 () Unit!127238)

(declare-fun Unit!127271 () Unit!127238)

(assert (=> b!4706789 (= lt!1871769 Unit!127271)))

(assert (=> b!4706789 (contains!15901 lt!1871776 (_1!30325 (h!58884 lt!1871346)))))

(declare-fun lt!1871764 () Unit!127238)

(declare-fun Unit!127272 () Unit!127238)

(assert (=> b!4706789 (= lt!1871764 Unit!127272)))

(assert (=> b!4706789 (forall!11438 lt!1871346 lambda!211788)))

(declare-fun lt!1871761 () Unit!127238)

(declare-fun Unit!127273 () Unit!127238)

(assert (=> b!4706789 (= lt!1871761 Unit!127273)))

(assert (=> b!4706789 (forall!11438 (toList!5724 lt!1871775) lambda!211788)))

(declare-fun lt!1871766 () Unit!127238)

(declare-fun Unit!127274 () Unit!127238)

(assert (=> b!4706789 (= lt!1871766 Unit!127274)))

(declare-fun lt!1871771 () Unit!127238)

(declare-fun Unit!127275 () Unit!127238)

(assert (=> b!4706789 (= lt!1871771 Unit!127275)))

(declare-fun lt!1871767 () Unit!127238)

(assert (=> b!4706789 (= lt!1871767 (addForallContainsKeyThenBeforeAdding!749 lt!1871357 lt!1871776 (_1!30325 (h!58884 lt!1871346)) (_2!30325 (h!58884 lt!1871346))))))

(assert (=> b!4706789 (forall!11438 (toList!5724 lt!1871357) lambda!211788)))

(declare-fun lt!1871778 () Unit!127238)

(assert (=> b!4706789 (= lt!1871778 lt!1871767)))

(assert (=> b!4706789 (forall!11438 (toList!5724 lt!1871357) lambda!211788)))

(declare-fun lt!1871762 () Unit!127238)

(declare-fun Unit!127276 () Unit!127238)

(assert (=> b!4706789 (= lt!1871762 Unit!127276)))

(declare-fun res!1988332 () Bool)

(assert (=> b!4706789 (= res!1988332 (forall!11438 lt!1871346 lambda!211788))))

(assert (=> b!4706789 (=> (not res!1988332) (not e!2935994))))

(assert (=> b!4706789 e!2935994))

(declare-fun lt!1871765 () Unit!127238)

(declare-fun Unit!127277 () Unit!127238)

(assert (=> b!4706789 (= lt!1871765 Unit!127277)))

(declare-fun b!4706790 () Bool)

(assert (=> b!4706790 (= e!2935993 (invariantList!1461 (toList!5724 lt!1871772)))))

(assert (=> d!1497979 e!2935993))

(declare-fun res!1988331 () Bool)

(assert (=> d!1497979 (=> (not res!1988331) (not e!2935993))))

(assert (=> d!1497979 (= res!1988331 (forall!11438 lt!1871346 lambda!211789))))

(assert (=> d!1497979 (= lt!1871772 e!2935992)))

(assert (=> d!1497979 (= c!804393 (is-Nil!52587 lt!1871346))))

(assert (=> d!1497979 (noDuplicateKeys!1917 lt!1871346)))

(assert (=> d!1497979 (= (addToMapMapFromBucket!1349 lt!1871346 lt!1871357) lt!1871772)))

(assert (= (and d!1497979 c!804393) b!4706787))

(assert (= (and d!1497979 (not c!804393)) b!4706789))

(assert (= (and b!4706789 res!1988332) b!4706788))

(assert (= (or b!4706787 b!4706789) bm!329074))

(assert (= (or b!4706787 b!4706788) bm!329075))

(assert (= (or b!4706787 b!4706789) bm!329076))

(assert (= (and d!1497979 res!1988331) b!4706786))

(assert (= (and b!4706786 res!1988333) b!4706790))

(declare-fun m!5629819 () Bool)

(assert (=> b!4706786 m!5629819))

(declare-fun m!5629821 () Bool)

(assert (=> bm!329075 m!5629821))

(declare-fun m!5629823 () Bool)

(assert (=> b!4706790 m!5629823))

(assert (=> bm!329074 m!5629759))

(declare-fun m!5629825 () Bool)

(assert (=> bm!329076 m!5629825))

(declare-fun m!5629827 () Bool)

(assert (=> d!1497979 m!5629827))

(declare-fun m!5629829 () Bool)

(assert (=> d!1497979 m!5629829))

(declare-fun m!5629831 () Bool)

(assert (=> b!4706789 m!5629831))

(declare-fun m!5629833 () Bool)

(assert (=> b!4706789 m!5629833))

(declare-fun m!5629835 () Bool)

(assert (=> b!4706789 m!5629835))

(declare-fun m!5629837 () Bool)

(assert (=> b!4706789 m!5629837))

(declare-fun m!5629839 () Bool)

(assert (=> b!4706789 m!5629839))

(declare-fun m!5629841 () Bool)

(assert (=> b!4706789 m!5629841))

(assert (=> b!4706789 m!5629833))

(declare-fun m!5629843 () Bool)

(assert (=> b!4706789 m!5629843))

(declare-fun m!5629845 () Bool)

(assert (=> b!4706789 m!5629845))

(declare-fun m!5629847 () Bool)

(assert (=> b!4706789 m!5629847))

(assert (=> b!4706789 m!5629847))

(declare-fun m!5629849 () Bool)

(assert (=> b!4706789 m!5629849))

(assert (=> b!4706789 m!5629841))

(declare-fun m!5629851 () Bool)

(assert (=> b!4706789 m!5629851))

(assert (=> b!4706465 d!1497979))

(declare-fun d!1497981 () Bool)

(assert (=> d!1497981 (= (eq!1076 lt!1871331 (+!2201 lt!1871320 (h!58884 oldBucket!34))) (= (content!9313 (toList!5724 lt!1871331)) (content!9313 (toList!5724 (+!2201 lt!1871320 (h!58884 oldBucket!34))))))))

(declare-fun bs!1099630 () Bool)

(assert (= bs!1099630 d!1497981))

(assert (=> bs!1099630 m!5629437))

(declare-fun m!5629853 () Bool)

(assert (=> bs!1099630 m!5629853))

(assert (=> b!4706465 d!1497981))

(declare-fun bs!1099645 () Bool)

(declare-fun d!1497983 () Bool)

(assert (= bs!1099645 (and d!1497983 d!1497849)))

(declare-fun lambda!211797 () Int)

(assert (=> bs!1099645 (= lambda!211797 lambda!211701)))

(declare-fun bs!1099646 () Bool)

(assert (= bs!1099646 (and d!1497983 d!1497923)))

(assert (=> bs!1099646 (= lambda!211797 lambda!211709)))

(declare-fun bs!1099647 () Bool)

(assert (= bs!1099647 (and d!1497983 start!477990)))

(assert (=> bs!1099647 (= lambda!211797 lambda!211688)))

(declare-fun bs!1099648 () Bool)

(assert (= bs!1099648 (and d!1497983 d!1497941)))

(assert (=> bs!1099648 (= lambda!211797 lambda!211716)))

(declare-fun bs!1099649 () Bool)

(assert (= bs!1099649 (and d!1497983 d!1497861)))

(assert (=> bs!1099649 (not (= lambda!211797 lambda!211704))))

(declare-fun bs!1099650 () Bool)

(assert (= bs!1099650 (and d!1497983 d!1497969)))

(assert (=> bs!1099650 (= lambda!211797 lambda!211784)))

(declare-fun bs!1099651 () Bool)

(assert (= bs!1099651 (and d!1497983 d!1497871)))

(assert (=> bs!1099651 (= lambda!211797 lambda!211705)))

(assert (=> d!1497983 (contains!15901 (extractMap!1943 (toList!5723 lt!1871319)) key!4653)))

(declare-fun lt!1871787 () Unit!127238)

(declare-fun choose!33074 (ListLongMap!4253 K!13943 Hashable!6286) Unit!127238)

(assert (=> d!1497983 (= lt!1871787 (choose!33074 lt!1871319 key!4653 hashF!1323))))

(assert (=> d!1497983 (forall!11436 (toList!5723 lt!1871319) lambda!211797)))

(assert (=> d!1497983 (= (lemmaListContainsThenExtractedMapContains!509 lt!1871319 key!4653 hashF!1323) lt!1871787)))

(declare-fun bs!1099653 () Bool)

(assert (= bs!1099653 d!1497983))

(declare-fun m!5629893 () Bool)

(assert (=> bs!1099653 m!5629893))

(assert (=> bs!1099653 m!5629893))

(declare-fun m!5629895 () Bool)

(assert (=> bs!1099653 m!5629895))

(declare-fun m!5629897 () Bool)

(assert (=> bs!1099653 m!5629897))

(declare-fun m!5629899 () Bool)

(assert (=> bs!1099653 m!5629899))

(assert (=> b!4706465 d!1497983))

(declare-fun bs!1099654 () Bool)

(declare-fun d!1497995 () Bool)

(assert (= bs!1099654 (and d!1497995 d!1497849)))

(declare-fun lambda!211798 () Int)

(assert (=> bs!1099654 (= lambda!211798 lambda!211701)))

(declare-fun bs!1099655 () Bool)

(assert (= bs!1099655 (and d!1497995 start!477990)))

(assert (=> bs!1099655 (= lambda!211798 lambda!211688)))

(declare-fun bs!1099656 () Bool)

(assert (= bs!1099656 (and d!1497995 d!1497941)))

(assert (=> bs!1099656 (= lambda!211798 lambda!211716)))

(declare-fun bs!1099657 () Bool)

(assert (= bs!1099657 (and d!1497995 d!1497861)))

(assert (=> bs!1099657 (not (= lambda!211798 lambda!211704))))

(declare-fun bs!1099658 () Bool)

(assert (= bs!1099658 (and d!1497995 d!1497969)))

(assert (=> bs!1099658 (= lambda!211798 lambda!211784)))

(declare-fun bs!1099659 () Bool)

(assert (= bs!1099659 (and d!1497995 d!1497871)))

(assert (=> bs!1099659 (= lambda!211798 lambda!211705)))

(declare-fun bs!1099660 () Bool)

(assert (= bs!1099660 (and d!1497995 d!1497983)))

(assert (=> bs!1099660 (= lambda!211798 lambda!211797)))

(declare-fun bs!1099662 () Bool)

(assert (= bs!1099662 (and d!1497995 d!1497923)))

(assert (=> bs!1099662 (= lambda!211798 lambda!211709)))

(declare-fun lt!1871789 () ListMap!5087)

(assert (=> d!1497995 (invariantList!1461 (toList!5724 lt!1871789))))

(declare-fun e!2935998 () ListMap!5087)

(assert (=> d!1497995 (= lt!1871789 e!2935998)))

(declare-fun c!804396 () Bool)

(assert (=> d!1497995 (= c!804396 (is-Cons!52588 (Cons!52588 (tuple2!54065 hash!405 lt!1871355) (t!359940 (toList!5723 lm!2023)))))))

(assert (=> d!1497995 (forall!11436 (Cons!52588 (tuple2!54065 hash!405 lt!1871355) (t!359940 (toList!5723 lm!2023))) lambda!211798)))

(assert (=> d!1497995 (= (extractMap!1943 (Cons!52588 (tuple2!54065 hash!405 lt!1871355) (t!359940 (toList!5723 lm!2023)))) lt!1871789)))

(declare-fun b!4706796 () Bool)

(assert (=> b!4706796 (= e!2935998 (addToMapMapFromBucket!1349 (_2!30326 (h!58885 (Cons!52588 (tuple2!54065 hash!405 lt!1871355) (t!359940 (toList!5723 lm!2023))))) (extractMap!1943 (t!359940 (Cons!52588 (tuple2!54065 hash!405 lt!1871355) (t!359940 (toList!5723 lm!2023)))))))))

(declare-fun b!4706797 () Bool)

(assert (=> b!4706797 (= e!2935998 (ListMap!5088 Nil!52587))))

(assert (= (and d!1497995 c!804396) b!4706796))

(assert (= (and d!1497995 (not c!804396)) b!4706797))

(declare-fun m!5629913 () Bool)

(assert (=> d!1497995 m!5629913))

(declare-fun m!5629915 () Bool)

(assert (=> d!1497995 m!5629915))

(declare-fun m!5629917 () Bool)

(assert (=> b!4706796 m!5629917))

(assert (=> b!4706796 m!5629917))

(declare-fun m!5629919 () Bool)

(assert (=> b!4706796 m!5629919))

(assert (=> b!4706465 d!1497995))

(declare-fun d!1498003 () Bool)

(assert (=> d!1498003 (= (eq!1076 (addToMapMapFromBucket!1349 (Cons!52587 lt!1871350 lt!1871355) lt!1871357) (+!2201 (addToMapMapFromBucket!1349 lt!1871355 lt!1871357) lt!1871350)) (= (content!9313 (toList!5724 (addToMapMapFromBucket!1349 (Cons!52587 lt!1871350 lt!1871355) lt!1871357))) (content!9313 (toList!5724 (+!2201 (addToMapMapFromBucket!1349 lt!1871355 lt!1871357) lt!1871350)))))))

(declare-fun bs!1099669 () Bool)

(assert (= bs!1099669 d!1498003))

(declare-fun m!5629921 () Bool)

(assert (=> bs!1099669 m!5629921))

(declare-fun m!5629923 () Bool)

(assert (=> bs!1099669 m!5629923))

(assert (=> b!4706465 d!1498003))

(declare-fun d!1498005 () Bool)

(assert (=> d!1498005 (= (head!10097 oldBucket!34) (h!58884 oldBucket!34))))

(assert (=> b!4706465 d!1498005))

(declare-fun bs!1099670 () Bool)

(declare-fun d!1498009 () Bool)

(assert (= bs!1099670 (and d!1498009 d!1497849)))

(declare-fun lambda!211800 () Int)

(assert (=> bs!1099670 (= lambda!211800 lambda!211701)))

(declare-fun bs!1099671 () Bool)

(assert (= bs!1099671 (and d!1498009 d!1497995)))

(assert (=> bs!1099671 (= lambda!211800 lambda!211798)))

(declare-fun bs!1099672 () Bool)

(assert (= bs!1099672 (and d!1498009 start!477990)))

(assert (=> bs!1099672 (= lambda!211800 lambda!211688)))

(declare-fun bs!1099673 () Bool)

(assert (= bs!1099673 (and d!1498009 d!1497941)))

(assert (=> bs!1099673 (= lambda!211800 lambda!211716)))

(declare-fun bs!1099674 () Bool)

(assert (= bs!1099674 (and d!1498009 d!1497861)))

(assert (=> bs!1099674 (not (= lambda!211800 lambda!211704))))

(declare-fun bs!1099675 () Bool)

(assert (= bs!1099675 (and d!1498009 d!1497969)))

(assert (=> bs!1099675 (= lambda!211800 lambda!211784)))

(declare-fun bs!1099676 () Bool)

(assert (= bs!1099676 (and d!1498009 d!1497871)))

(assert (=> bs!1099676 (= lambda!211800 lambda!211705)))

(declare-fun bs!1099677 () Bool)

(assert (= bs!1099677 (and d!1498009 d!1497983)))

(assert (=> bs!1099677 (= lambda!211800 lambda!211797)))

(declare-fun bs!1099678 () Bool)

(assert (= bs!1099678 (and d!1498009 d!1497923)))

(assert (=> bs!1099678 (= lambda!211800 lambda!211709)))

(declare-fun lt!1871791 () ListMap!5087)

(assert (=> d!1498009 (invariantList!1461 (toList!5724 lt!1871791))))

(declare-fun e!2936000 () ListMap!5087)

(assert (=> d!1498009 (= lt!1871791 e!2936000)))

(declare-fun c!804398 () Bool)

(assert (=> d!1498009 (= c!804398 (is-Cons!52588 lt!1871344))))

(assert (=> d!1498009 (forall!11436 lt!1871344 lambda!211800)))

(assert (=> d!1498009 (= (extractMap!1943 lt!1871344) lt!1871791)))

(declare-fun b!4706800 () Bool)

(assert (=> b!4706800 (= e!2936000 (addToMapMapFromBucket!1349 (_2!30326 (h!58885 lt!1871344)) (extractMap!1943 (t!359940 lt!1871344))))))

(declare-fun b!4706801 () Bool)

(assert (=> b!4706801 (= e!2936000 (ListMap!5088 Nil!52587))))

(assert (= (and d!1498009 c!804398) b!4706800))

(assert (= (and d!1498009 (not c!804398)) b!4706801))

(declare-fun m!5629933 () Bool)

(assert (=> d!1498009 m!5629933))

(declare-fun m!5629935 () Bool)

(assert (=> d!1498009 m!5629935))

(declare-fun m!5629937 () Bool)

(assert (=> b!4706800 m!5629937))

(assert (=> b!4706800 m!5629937))

(declare-fun m!5629939 () Bool)

(assert (=> b!4706800 m!5629939))

(assert (=> b!4706465 d!1498009))

(declare-fun d!1498011 () Bool)

(assert (=> d!1498011 (= (eq!1076 (addToMapMapFromBucket!1349 (Cons!52587 lt!1871325 lt!1871346) lt!1871357) (+!2201 (addToMapMapFromBucket!1349 lt!1871346 lt!1871357) lt!1871325)) (= (content!9313 (toList!5724 (addToMapMapFromBucket!1349 (Cons!52587 lt!1871325 lt!1871346) lt!1871357))) (content!9313 (toList!5724 (+!2201 (addToMapMapFromBucket!1349 lt!1871346 lt!1871357) lt!1871325)))))))

(declare-fun bs!1099679 () Bool)

(assert (= bs!1099679 d!1498011))

(declare-fun m!5629941 () Bool)

(assert (=> bs!1099679 m!5629941))

(declare-fun m!5629943 () Bool)

(assert (=> bs!1099679 m!5629943))

(assert (=> b!4706465 d!1498011))

(declare-fun d!1498013 () Bool)

(declare-fun e!2936001 () Bool)

(assert (=> d!1498013 e!2936001))

(declare-fun res!1988335 () Bool)

(assert (=> d!1498013 (=> (not res!1988335) (not e!2936001))))

(declare-fun lt!1871794 () ListMap!5087)

(assert (=> d!1498013 (= res!1988335 (contains!15901 lt!1871794 (_1!30325 (h!58884 oldBucket!34))))))

(declare-fun lt!1871792 () List!52711)

(assert (=> d!1498013 (= lt!1871794 (ListMap!5088 lt!1871792))))

(declare-fun lt!1871795 () Unit!127238)

(declare-fun lt!1871793 () Unit!127238)

(assert (=> d!1498013 (= lt!1871795 lt!1871793)))

(assert (=> d!1498013 (= (getValueByKey!1882 lt!1871792 (_1!30325 (h!58884 oldBucket!34))) (Some!12245 (_2!30325 (h!58884 oldBucket!34))))))

(assert (=> d!1498013 (= lt!1871793 (lemmaContainsTupThenGetReturnValue!1051 lt!1871792 (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34))))))

(assert (=> d!1498013 (= lt!1871792 (insertNoDuplicatedKeys!559 (toList!5724 lt!1871320) (_1!30325 (h!58884 oldBucket!34)) (_2!30325 (h!58884 oldBucket!34))))))

(assert (=> d!1498013 (= (+!2201 lt!1871320 (h!58884 oldBucket!34)) lt!1871794)))

(declare-fun b!4706802 () Bool)

(declare-fun res!1988336 () Bool)

(assert (=> b!4706802 (=> (not res!1988336) (not e!2936001))))

(assert (=> b!4706802 (= res!1988336 (= (getValueByKey!1882 (toList!5724 lt!1871794) (_1!30325 (h!58884 oldBucket!34))) (Some!12245 (_2!30325 (h!58884 oldBucket!34)))))))

(declare-fun b!4706803 () Bool)

(assert (=> b!4706803 (= e!2936001 (contains!15908 (toList!5724 lt!1871794) (h!58884 oldBucket!34)))))

(assert (= (and d!1498013 res!1988335) b!4706802))

(assert (= (and b!4706802 res!1988336) b!4706803))

(declare-fun m!5629945 () Bool)

(assert (=> d!1498013 m!5629945))

(declare-fun m!5629947 () Bool)

(assert (=> d!1498013 m!5629947))

(declare-fun m!5629949 () Bool)

(assert (=> d!1498013 m!5629949))

(declare-fun m!5629951 () Bool)

(assert (=> d!1498013 m!5629951))

(declare-fun m!5629953 () Bool)

(assert (=> b!4706802 m!5629953))

(declare-fun m!5629955 () Bool)

(assert (=> b!4706803 m!5629955))

(assert (=> b!4706465 d!1498013))

(declare-fun d!1498015 () Bool)

(assert (=> d!1498015 (eq!1076 (addToMapMapFromBucket!1349 (Cons!52587 lt!1871325 lt!1871346) lt!1871357) (+!2201 (addToMapMapFromBucket!1349 lt!1871346 lt!1871357) lt!1871325))))

(declare-fun lt!1871803 () Unit!127238)

(declare-fun choose!33075 (tuple2!54062 List!52711 ListMap!5087) Unit!127238)

(assert (=> d!1498015 (= lt!1871803 (choose!33075 lt!1871325 lt!1871346 lt!1871357))))

(assert (=> d!1498015 (noDuplicateKeys!1917 lt!1871346)))

(assert (=> d!1498015 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!325 lt!1871325 lt!1871346 lt!1871357) lt!1871803)))

(declare-fun bs!1099684 () Bool)

(assert (= bs!1099684 d!1498015))

(assert (=> bs!1099684 m!5629153))

(assert (=> bs!1099684 m!5629155))

(assert (=> bs!1099684 m!5629153))

(assert (=> bs!1099684 m!5629151))

(assert (=> bs!1099684 m!5629155))

(assert (=> bs!1099684 m!5629181))

(declare-fun m!5629973 () Bool)

(assert (=> bs!1099684 m!5629973))

(assert (=> bs!1099684 m!5629151))

(assert (=> bs!1099684 m!5629829))

(assert (=> b!4706465 d!1498015))

(declare-fun bs!1099685 () Bool)

(declare-fun b!4706829 () Bool)

(assert (= bs!1099685 (and b!4706829 b!4706775)))

(declare-fun lambda!211804 () Int)

(assert (=> bs!1099685 (= lambda!211804 lambda!211781)))

(declare-fun bs!1099686 () Bool)

(assert (= bs!1099686 (and b!4706829 b!4706789)))

(assert (=> bs!1099686 (= (= lt!1871357 lt!1871776) (= lambda!211804 lambda!211788))))

(declare-fun bs!1099687 () Bool)

(assert (= bs!1099687 (and b!4706829 b!4706773)))

(assert (=> bs!1099687 (= lambda!211804 lambda!211780)))

(declare-fun bs!1099688 () Bool)

(assert (= bs!1099688 (and b!4706829 b!4706787)))

(assert (=> bs!1099688 (= lambda!211804 lambda!211786)))

(declare-fun bs!1099689 () Bool)

(assert (= bs!1099689 (and b!4706829 d!1497979)))

(assert (=> bs!1099689 (= (= lt!1871357 lt!1871772) (= lambda!211804 lambda!211789))))

(assert (=> bs!1099685 (= (= lt!1871357 lt!1871750) (= lambda!211804 lambda!211782))))

(assert (=> bs!1099686 (= lambda!211804 lambda!211787)))

(declare-fun bs!1099690 () Bool)

(assert (= bs!1099690 (and b!4706829 d!1497943)))

(assert (=> bs!1099690 (= (= lt!1871357 lt!1871746) (= lambda!211804 lambda!211783))))

(declare-fun bs!1099691 () Bool)

(assert (= bs!1099691 (and b!4706829 d!1497893)))

(assert (=> bs!1099691 (not (= lambda!211804 lambda!211706))))

(declare-fun bs!1099692 () Bool)

(assert (= bs!1099692 (and b!4706829 d!1497845)))

(assert (=> bs!1099692 (not (= lambda!211804 lambda!211698))))

(assert (=> b!4706829 true))

(declare-fun bs!1099693 () Bool)

(declare-fun b!4706831 () Bool)

(assert (= bs!1099693 (and b!4706831 b!4706829)))

(declare-fun lambda!211805 () Int)

(assert (=> bs!1099693 (= lambda!211805 lambda!211804)))

(declare-fun bs!1099694 () Bool)

(assert (= bs!1099694 (and b!4706831 b!4706775)))

(assert (=> bs!1099694 (= lambda!211805 lambda!211781)))

(declare-fun bs!1099695 () Bool)

(assert (= bs!1099695 (and b!4706831 b!4706789)))

(assert (=> bs!1099695 (= (= lt!1871357 lt!1871776) (= lambda!211805 lambda!211788))))

(declare-fun bs!1099696 () Bool)

(assert (= bs!1099696 (and b!4706831 b!4706773)))

(assert (=> bs!1099696 (= lambda!211805 lambda!211780)))

(declare-fun bs!1099697 () Bool)

(assert (= bs!1099697 (and b!4706831 b!4706787)))

(assert (=> bs!1099697 (= lambda!211805 lambda!211786)))

(declare-fun bs!1099698 () Bool)

(assert (= bs!1099698 (and b!4706831 d!1497979)))

(assert (=> bs!1099698 (= (= lt!1871357 lt!1871772) (= lambda!211805 lambda!211789))))

(assert (=> bs!1099694 (= (= lt!1871357 lt!1871750) (= lambda!211805 lambda!211782))))

(assert (=> bs!1099695 (= lambda!211805 lambda!211787)))

(declare-fun bs!1099699 () Bool)

(assert (= bs!1099699 (and b!4706831 d!1497943)))

(assert (=> bs!1099699 (= (= lt!1871357 lt!1871746) (= lambda!211805 lambda!211783))))

(declare-fun bs!1099700 () Bool)

(assert (= bs!1099700 (and b!4706831 d!1497893)))

(assert (=> bs!1099700 (not (= lambda!211805 lambda!211706))))

(declare-fun bs!1099701 () Bool)

(assert (= bs!1099701 (and b!4706831 d!1497845)))

(assert (=> bs!1099701 (not (= lambda!211805 lambda!211698))))

(assert (=> b!4706831 true))

(declare-fun lt!1871821 () ListMap!5087)

(declare-fun lambda!211806 () Int)

(assert (=> bs!1099693 (= (= lt!1871821 lt!1871357) (= lambda!211806 lambda!211804))))

(assert (=> bs!1099694 (= (= lt!1871821 lt!1871357) (= lambda!211806 lambda!211781))))

(assert (=> bs!1099695 (= (= lt!1871821 lt!1871776) (= lambda!211806 lambda!211788))))

(assert (=> bs!1099696 (= (= lt!1871821 lt!1871357) (= lambda!211806 lambda!211780))))

(assert (=> bs!1099697 (= (= lt!1871821 lt!1871357) (= lambda!211806 lambda!211786))))

(assert (=> bs!1099694 (= (= lt!1871821 lt!1871750) (= lambda!211806 lambda!211782))))

(assert (=> b!4706831 (= (= lt!1871821 lt!1871357) (= lambda!211806 lambda!211805))))

(assert (=> bs!1099698 (= (= lt!1871821 lt!1871772) (= lambda!211806 lambda!211789))))

(assert (=> bs!1099695 (= (= lt!1871821 lt!1871357) (= lambda!211806 lambda!211787))))

(assert (=> bs!1099699 (= (= lt!1871821 lt!1871746) (= lambda!211806 lambda!211783))))

(assert (=> bs!1099700 (not (= lambda!211806 lambda!211706))))

(assert (=> bs!1099701 (not (= lambda!211806 lambda!211698))))

(assert (=> b!4706831 true))

(declare-fun bs!1099702 () Bool)

(declare-fun d!1498029 () Bool)

(assert (= bs!1099702 (and d!1498029 b!4706829)))

(declare-fun lambda!211807 () Int)

(declare-fun lt!1871817 () ListMap!5087)

(assert (=> bs!1099702 (= (= lt!1871817 lt!1871357) (= lambda!211807 lambda!211804))))

(declare-fun bs!1099703 () Bool)

(assert (= bs!1099703 (and d!1498029 b!4706831)))

(assert (=> bs!1099703 (= (= lt!1871817 lt!1871821) (= lambda!211807 lambda!211806))))

(declare-fun bs!1099704 () Bool)

(assert (= bs!1099704 (and d!1498029 b!4706775)))

(assert (=> bs!1099704 (= (= lt!1871817 lt!1871357) (= lambda!211807 lambda!211781))))

(declare-fun bs!1099705 () Bool)

(assert (= bs!1099705 (and d!1498029 b!4706789)))

(assert (=> bs!1099705 (= (= lt!1871817 lt!1871776) (= lambda!211807 lambda!211788))))

(declare-fun bs!1099706 () Bool)

(assert (= bs!1099706 (and d!1498029 b!4706773)))

(assert (=> bs!1099706 (= (= lt!1871817 lt!1871357) (= lambda!211807 lambda!211780))))

(declare-fun bs!1099707 () Bool)

(assert (= bs!1099707 (and d!1498029 b!4706787)))

(assert (=> bs!1099707 (= (= lt!1871817 lt!1871357) (= lambda!211807 lambda!211786))))

(assert (=> bs!1099704 (= (= lt!1871817 lt!1871750) (= lambda!211807 lambda!211782))))

(assert (=> bs!1099703 (= (= lt!1871817 lt!1871357) (= lambda!211807 lambda!211805))))

(declare-fun bs!1099708 () Bool)

(assert (= bs!1099708 (and d!1498029 d!1497979)))

(assert (=> bs!1099708 (= (= lt!1871817 lt!1871772) (= lambda!211807 lambda!211789))))

(assert (=> bs!1099705 (= (= lt!1871817 lt!1871357) (= lambda!211807 lambda!211787))))

(declare-fun bs!1099709 () Bool)

(assert (= bs!1099709 (and d!1498029 d!1497943)))

(assert (=> bs!1099709 (= (= lt!1871817 lt!1871746) (= lambda!211807 lambda!211783))))

(declare-fun bs!1099710 () Bool)

(assert (= bs!1099710 (and d!1498029 d!1497893)))

(assert (=> bs!1099710 (not (= lambda!211807 lambda!211706))))

(declare-fun bs!1099711 () Bool)

(assert (= bs!1099711 (and d!1498029 d!1497845)))

(assert (=> bs!1099711 (not (= lambda!211807 lambda!211698))))

(assert (=> d!1498029 true))

(declare-fun b!4706828 () Bool)

(declare-fun res!1988339 () Bool)

(declare-fun e!2936013 () Bool)

(assert (=> b!4706828 (=> (not res!1988339) (not e!2936013))))

(assert (=> b!4706828 (= res!1988339 (forall!11438 (toList!5724 lt!1871357) lambda!211807))))

(declare-fun e!2936012 () ListMap!5087)

(assert (=> b!4706829 (= e!2936012 lt!1871357)))

(declare-fun lt!1871813 () Unit!127238)

(declare-fun call!329082 () Unit!127238)

(assert (=> b!4706829 (= lt!1871813 call!329082)))

(declare-fun call!329083 () Bool)

(assert (=> b!4706829 call!329083))

(declare-fun lt!1871824 () Unit!127238)

(assert (=> b!4706829 (= lt!1871824 lt!1871813)))

(declare-fun call!329084 () Bool)

(assert (=> b!4706829 call!329084))

(declare-fun lt!1871804 () Unit!127238)

(declare-fun Unit!127278 () Unit!127238)

(assert (=> b!4706829 (= lt!1871804 Unit!127278)))

(declare-fun b!4706830 () Bool)

(declare-fun e!2936014 () Bool)

(assert (=> b!4706830 (= e!2936014 call!329084)))

(declare-fun bm!329077 () Bool)

(assert (=> bm!329077 (= call!329082 (lemmaContainsAllItsOwnKeys!749 lt!1871357))))

(declare-fun c!804409 () Bool)

(declare-fun bm!329078 () Bool)

(assert (=> bm!329078 (= call!329084 (forall!11438 (toList!5724 lt!1871357) (ite c!804409 lambda!211804 lambda!211806)))))

(declare-fun bm!329079 () Bool)

(declare-fun lt!1871820 () ListMap!5087)

(assert (=> bm!329079 (= call!329083 (forall!11438 (ite c!804409 (toList!5724 lt!1871357) (toList!5724 lt!1871820)) (ite c!804409 lambda!211804 lambda!211806)))))

(assert (=> b!4706831 (= e!2936012 lt!1871821)))

(assert (=> b!4706831 (= lt!1871820 (+!2201 lt!1871357 (h!58884 (Cons!52587 lt!1871325 lt!1871346))))))

(assert (=> b!4706831 (= lt!1871821 (addToMapMapFromBucket!1349 (t!359939 (Cons!52587 lt!1871325 lt!1871346)) (+!2201 lt!1871357 (h!58884 (Cons!52587 lt!1871325 lt!1871346)))))))

(declare-fun lt!1871805 () Unit!127238)

(assert (=> b!4706831 (= lt!1871805 call!329082)))

(assert (=> b!4706831 (forall!11438 (toList!5724 lt!1871357) lambda!211805)))

(declare-fun lt!1871818 () Unit!127238)

(assert (=> b!4706831 (= lt!1871818 lt!1871805)))

(assert (=> b!4706831 call!329083))

(declare-fun lt!1871815 () Unit!127238)

(declare-fun Unit!127279 () Unit!127238)

(assert (=> b!4706831 (= lt!1871815 Unit!127279)))

(assert (=> b!4706831 (forall!11438 (t!359939 (Cons!52587 lt!1871325 lt!1871346)) lambda!211806)))

(declare-fun lt!1871808 () Unit!127238)

(declare-fun Unit!127280 () Unit!127238)

(assert (=> b!4706831 (= lt!1871808 Unit!127280)))

(declare-fun lt!1871819 () Unit!127238)

(declare-fun Unit!127281 () Unit!127238)

(assert (=> b!4706831 (= lt!1871819 Unit!127281)))

(declare-fun lt!1871822 () Unit!127238)

(assert (=> b!4706831 (= lt!1871822 (forallContained!3546 (toList!5724 lt!1871820) lambda!211806 (h!58884 (Cons!52587 lt!1871325 lt!1871346))))))

(assert (=> b!4706831 (contains!15901 lt!1871820 (_1!30325 (h!58884 (Cons!52587 lt!1871325 lt!1871346))))))

(declare-fun lt!1871814 () Unit!127238)

(declare-fun Unit!127282 () Unit!127238)

(assert (=> b!4706831 (= lt!1871814 Unit!127282)))

(assert (=> b!4706831 (contains!15901 lt!1871821 (_1!30325 (h!58884 (Cons!52587 lt!1871325 lt!1871346))))))

(declare-fun lt!1871809 () Unit!127238)

(declare-fun Unit!127283 () Unit!127238)

(assert (=> b!4706831 (= lt!1871809 Unit!127283)))

(assert (=> b!4706831 (forall!11438 (Cons!52587 lt!1871325 lt!1871346) lambda!211806)))

(declare-fun lt!1871806 () Unit!127238)

(declare-fun Unit!127284 () Unit!127238)

(assert (=> b!4706831 (= lt!1871806 Unit!127284)))

(assert (=> b!4706831 (forall!11438 (toList!5724 lt!1871820) lambda!211806)))

(declare-fun lt!1871811 () Unit!127238)

(declare-fun Unit!127285 () Unit!127238)

(assert (=> b!4706831 (= lt!1871811 Unit!127285)))

(declare-fun lt!1871816 () Unit!127238)

(declare-fun Unit!127286 () Unit!127238)

(assert (=> b!4706831 (= lt!1871816 Unit!127286)))

(declare-fun lt!1871812 () Unit!127238)

(assert (=> b!4706831 (= lt!1871812 (addForallContainsKeyThenBeforeAdding!749 lt!1871357 lt!1871821 (_1!30325 (h!58884 (Cons!52587 lt!1871325 lt!1871346))) (_2!30325 (h!58884 (Cons!52587 lt!1871325 lt!1871346)))))))

(assert (=> b!4706831 (forall!11438 (toList!5724 lt!1871357) lambda!211806)))

(declare-fun lt!1871823 () Unit!127238)

(assert (=> b!4706831 (= lt!1871823 lt!1871812)))

(assert (=> b!4706831 (forall!11438 (toList!5724 lt!1871357) lambda!211806)))

(declare-fun lt!1871807 () Unit!127238)

(declare-fun Unit!127288 () Unit!127238)

(assert (=> b!4706831 (= lt!1871807 Unit!127288)))

(declare-fun res!1988338 () Bool)

(assert (=> b!4706831 (= res!1988338 (forall!11438 (Cons!52587 lt!1871325 lt!1871346) lambda!211806))))

(assert (=> b!4706831 (=> (not res!1988338) (not e!2936014))))

(assert (=> b!4706831 e!2936014))

(declare-fun lt!1871810 () Unit!127238)

(declare-fun Unit!127289 () Unit!127238)

(assert (=> b!4706831 (= lt!1871810 Unit!127289)))

(declare-fun b!4706832 () Bool)

(assert (=> b!4706832 (= e!2936013 (invariantList!1461 (toList!5724 lt!1871817)))))

(assert (=> d!1498029 e!2936013))

(declare-fun res!1988337 () Bool)

(assert (=> d!1498029 (=> (not res!1988337) (not e!2936013))))

(assert (=> d!1498029 (= res!1988337 (forall!11438 (Cons!52587 lt!1871325 lt!1871346) lambda!211807))))

(assert (=> d!1498029 (= lt!1871817 e!2936012)))

(assert (=> d!1498029 (= c!804409 (is-Nil!52587 (Cons!52587 lt!1871325 lt!1871346)))))

(assert (=> d!1498029 (noDuplicateKeys!1917 (Cons!52587 lt!1871325 lt!1871346))))

(assert (=> d!1498029 (= (addToMapMapFromBucket!1349 (Cons!52587 lt!1871325 lt!1871346) lt!1871357) lt!1871817)))

(assert (= (and d!1498029 c!804409) b!4706829))

(assert (= (and d!1498029 (not c!804409)) b!4706831))

(assert (= (and b!4706831 res!1988338) b!4706830))

(assert (= (or b!4706829 b!4706831) bm!329077))

(assert (= (or b!4706829 b!4706830) bm!329078))

(assert (= (or b!4706829 b!4706831) bm!329079))

(assert (= (and d!1498029 res!1988337) b!4706828))

(assert (= (and b!4706828 res!1988339) b!4706832))

(declare-fun m!5629975 () Bool)

(assert (=> b!4706828 m!5629975))

(declare-fun m!5629977 () Bool)

(assert (=> bm!329078 m!5629977))

(declare-fun m!5629979 () Bool)

(assert (=> b!4706832 m!5629979))

(assert (=> bm!329077 m!5629759))

(declare-fun m!5629981 () Bool)

(assert (=> bm!329079 m!5629981))

(declare-fun m!5629983 () Bool)

(assert (=> d!1498029 m!5629983))

(declare-fun m!5629985 () Bool)

(assert (=> d!1498029 m!5629985))

(declare-fun m!5629987 () Bool)

(assert (=> b!4706831 m!5629987))

(declare-fun m!5629989 () Bool)

(assert (=> b!4706831 m!5629989))

(declare-fun m!5629991 () Bool)

(assert (=> b!4706831 m!5629991))

(declare-fun m!5629993 () Bool)

(assert (=> b!4706831 m!5629993))

(declare-fun m!5629995 () Bool)

(assert (=> b!4706831 m!5629995))

(declare-fun m!5629997 () Bool)

(assert (=> b!4706831 m!5629997))

(assert (=> b!4706831 m!5629989))

(declare-fun m!5629999 () Bool)

(assert (=> b!4706831 m!5629999))

(declare-fun m!5630001 () Bool)

(assert (=> b!4706831 m!5630001))

(declare-fun m!5630003 () Bool)

(assert (=> b!4706831 m!5630003))

(assert (=> b!4706831 m!5630003))

(declare-fun m!5630005 () Bool)

(assert (=> b!4706831 m!5630005))

(assert (=> b!4706831 m!5629997))

(declare-fun m!5630007 () Bool)

(assert (=> b!4706831 m!5630007))

(assert (=> b!4706465 d!1498029))

(declare-fun bs!1099712 () Bool)

(declare-fun b!4706834 () Bool)

(assert (= bs!1099712 (and b!4706834 b!4706829)))

(declare-fun lambda!211808 () Int)

(assert (=> bs!1099712 (= lambda!211808 lambda!211804)))

(declare-fun bs!1099713 () Bool)

(assert (= bs!1099713 (and b!4706834 b!4706831)))

(assert (=> bs!1099713 (= (= lt!1871357 lt!1871821) (= lambda!211808 lambda!211806))))

(declare-fun bs!1099714 () Bool)

(assert (= bs!1099714 (and b!4706834 d!1498029)))

(assert (=> bs!1099714 (= (= lt!1871357 lt!1871817) (= lambda!211808 lambda!211807))))

(declare-fun bs!1099715 () Bool)

(assert (= bs!1099715 (and b!4706834 b!4706775)))

(assert (=> bs!1099715 (= lambda!211808 lambda!211781)))

(declare-fun bs!1099716 () Bool)

(assert (= bs!1099716 (and b!4706834 b!4706789)))

(assert (=> bs!1099716 (= (= lt!1871357 lt!1871776) (= lambda!211808 lambda!211788))))

(declare-fun bs!1099717 () Bool)

(assert (= bs!1099717 (and b!4706834 b!4706773)))

(assert (=> bs!1099717 (= lambda!211808 lambda!211780)))

(declare-fun bs!1099718 () Bool)

(assert (= bs!1099718 (and b!4706834 b!4706787)))

(assert (=> bs!1099718 (= lambda!211808 lambda!211786)))

(assert (=> bs!1099715 (= (= lt!1871357 lt!1871750) (= lambda!211808 lambda!211782))))

(assert (=> bs!1099713 (= lambda!211808 lambda!211805)))

(declare-fun bs!1099719 () Bool)

(assert (= bs!1099719 (and b!4706834 d!1497979)))

(assert (=> bs!1099719 (= (= lt!1871357 lt!1871772) (= lambda!211808 lambda!211789))))

(assert (=> bs!1099716 (= lambda!211808 lambda!211787)))

(declare-fun bs!1099720 () Bool)

(assert (= bs!1099720 (and b!4706834 d!1497943)))

(assert (=> bs!1099720 (= (= lt!1871357 lt!1871746) (= lambda!211808 lambda!211783))))

(declare-fun bs!1099721 () Bool)

(assert (= bs!1099721 (and b!4706834 d!1497893)))

(assert (=> bs!1099721 (not (= lambda!211808 lambda!211706))))

(declare-fun bs!1099722 () Bool)

(assert (= bs!1099722 (and b!4706834 d!1497845)))

(assert (=> bs!1099722 (not (= lambda!211808 lambda!211698))))

(assert (=> b!4706834 true))

(declare-fun bs!1099723 () Bool)

(declare-fun b!4706836 () Bool)

(assert (= bs!1099723 (and b!4706836 b!4706829)))

(declare-fun lambda!211809 () Int)

(assert (=> bs!1099723 (= lambda!211809 lambda!211804)))

(declare-fun bs!1099724 () Bool)

(assert (= bs!1099724 (and b!4706836 b!4706831)))

(assert (=> bs!1099724 (= (= lt!1871357 lt!1871821) (= lambda!211809 lambda!211806))))

(declare-fun bs!1099725 () Bool)

(assert (= bs!1099725 (and b!4706836 d!1498029)))

(assert (=> bs!1099725 (= (= lt!1871357 lt!1871817) (= lambda!211809 lambda!211807))))

(declare-fun bs!1099726 () Bool)

(assert (= bs!1099726 (and b!4706836 b!4706775)))

(assert (=> bs!1099726 (= lambda!211809 lambda!211781)))

(declare-fun bs!1099727 () Bool)

(assert (= bs!1099727 (and b!4706836 b!4706789)))

(assert (=> bs!1099727 (= (= lt!1871357 lt!1871776) (= lambda!211809 lambda!211788))))

(declare-fun bs!1099728 () Bool)

(assert (= bs!1099728 (and b!4706836 b!4706773)))

(assert (=> bs!1099728 (= lambda!211809 lambda!211780)))

(declare-fun bs!1099729 () Bool)

(assert (= bs!1099729 (and b!4706836 b!4706787)))

(assert (=> bs!1099729 (= lambda!211809 lambda!211786)))

(declare-fun bs!1099730 () Bool)

(assert (= bs!1099730 (and b!4706836 b!4706834)))

(assert (=> bs!1099730 (= lambda!211809 lambda!211808)))

(assert (=> bs!1099726 (= (= lt!1871357 lt!1871750) (= lambda!211809 lambda!211782))))

(assert (=> bs!1099724 (= lambda!211809 lambda!211805)))

(declare-fun bs!1099731 () Bool)

(assert (= bs!1099731 (and b!4706836 d!1497979)))

(assert (=> bs!1099731 (= (= lt!1871357 lt!1871772) (= lambda!211809 lambda!211789))))

(assert (=> bs!1099727 (= lambda!211809 lambda!211787)))

(declare-fun bs!1099732 () Bool)

(assert (= bs!1099732 (and b!4706836 d!1497943)))

(assert (=> bs!1099732 (= (= lt!1871357 lt!1871746) (= lambda!211809 lambda!211783))))

(declare-fun bs!1099733 () Bool)

(assert (= bs!1099733 (and b!4706836 d!1497893)))

(assert (=> bs!1099733 (not (= lambda!211809 lambda!211706))))

(declare-fun bs!1099734 () Bool)

(assert (= bs!1099734 (and b!4706836 d!1497845)))

(assert (=> bs!1099734 (not (= lambda!211809 lambda!211698))))

(assert (=> b!4706836 true))

(declare-fun lt!1871842 () ListMap!5087)

(declare-fun lambda!211810 () Int)

(assert (=> bs!1099723 (= (= lt!1871842 lt!1871357) (= lambda!211810 lambda!211804))))

(assert (=> bs!1099724 (= (= lt!1871842 lt!1871821) (= lambda!211810 lambda!211806))))

(assert (=> bs!1099725 (= (= lt!1871842 lt!1871817) (= lambda!211810 lambda!211807))))

(assert (=> bs!1099726 (= (= lt!1871842 lt!1871357) (= lambda!211810 lambda!211781))))

(assert (=> b!4706836 (= (= lt!1871842 lt!1871357) (= lambda!211810 lambda!211809))))

(assert (=> bs!1099727 (= (= lt!1871842 lt!1871776) (= lambda!211810 lambda!211788))))

(assert (=> bs!1099728 (= (= lt!1871842 lt!1871357) (= lambda!211810 lambda!211780))))

(assert (=> bs!1099729 (= (= lt!1871842 lt!1871357) (= lambda!211810 lambda!211786))))

(assert (=> bs!1099730 (= (= lt!1871842 lt!1871357) (= lambda!211810 lambda!211808))))

(assert (=> bs!1099726 (= (= lt!1871842 lt!1871750) (= lambda!211810 lambda!211782))))

(assert (=> bs!1099724 (= (= lt!1871842 lt!1871357) (= lambda!211810 lambda!211805))))

(assert (=> bs!1099731 (= (= lt!1871842 lt!1871772) (= lambda!211810 lambda!211789))))

(assert (=> bs!1099727 (= (= lt!1871842 lt!1871357) (= lambda!211810 lambda!211787))))

(assert (=> bs!1099732 (= (= lt!1871842 lt!1871746) (= lambda!211810 lambda!211783))))

(assert (=> bs!1099733 (not (= lambda!211810 lambda!211706))))

(assert (=> bs!1099734 (not (= lambda!211810 lambda!211698))))

(assert (=> b!4706836 true))

(declare-fun bs!1099735 () Bool)

(declare-fun d!1498031 () Bool)

(assert (= bs!1099735 (and d!1498031 b!4706829)))

(declare-fun lambda!211811 () Int)

(declare-fun lt!1871838 () ListMap!5087)

(assert (=> bs!1099735 (= (= lt!1871838 lt!1871357) (= lambda!211811 lambda!211804))))

(declare-fun bs!1099736 () Bool)

(assert (= bs!1099736 (and d!1498031 b!4706831)))

(assert (=> bs!1099736 (= (= lt!1871838 lt!1871821) (= lambda!211811 lambda!211806))))

(declare-fun bs!1099737 () Bool)

(assert (= bs!1099737 (and d!1498031 d!1498029)))

(assert (=> bs!1099737 (= (= lt!1871838 lt!1871817) (= lambda!211811 lambda!211807))))

(declare-fun bs!1099738 () Bool)

(assert (= bs!1099738 (and d!1498031 b!4706775)))

(assert (=> bs!1099738 (= (= lt!1871838 lt!1871357) (= lambda!211811 lambda!211781))))

(declare-fun bs!1099739 () Bool)

(assert (= bs!1099739 (and d!1498031 b!4706836)))

(assert (=> bs!1099739 (= (= lt!1871838 lt!1871357) (= lambda!211811 lambda!211809))))

(declare-fun bs!1099740 () Bool)

(assert (= bs!1099740 (and d!1498031 b!4706789)))

(assert (=> bs!1099740 (= (= lt!1871838 lt!1871776) (= lambda!211811 lambda!211788))))

(declare-fun bs!1099741 () Bool)

(assert (= bs!1099741 (and d!1498031 b!4706773)))

(assert (=> bs!1099741 (= (= lt!1871838 lt!1871357) (= lambda!211811 lambda!211780))))

(declare-fun bs!1099742 () Bool)

(assert (= bs!1099742 (and d!1498031 b!4706787)))

(assert (=> bs!1099742 (= (= lt!1871838 lt!1871357) (= lambda!211811 lambda!211786))))

(declare-fun bs!1099743 () Bool)

(assert (= bs!1099743 (and d!1498031 b!4706834)))

(assert (=> bs!1099743 (= (= lt!1871838 lt!1871357) (= lambda!211811 lambda!211808))))

(assert (=> bs!1099738 (= (= lt!1871838 lt!1871750) (= lambda!211811 lambda!211782))))

(assert (=> bs!1099736 (= (= lt!1871838 lt!1871357) (= lambda!211811 lambda!211805))))

(declare-fun bs!1099744 () Bool)

(assert (= bs!1099744 (and d!1498031 d!1497979)))

(assert (=> bs!1099744 (= (= lt!1871838 lt!1871772) (= lambda!211811 lambda!211789))))

(assert (=> bs!1099740 (= (= lt!1871838 lt!1871357) (= lambda!211811 lambda!211787))))

(assert (=> bs!1099739 (= (= lt!1871838 lt!1871842) (= lambda!211811 lambda!211810))))

(declare-fun bs!1099745 () Bool)

(assert (= bs!1099745 (and d!1498031 d!1497943)))

(assert (=> bs!1099745 (= (= lt!1871838 lt!1871746) (= lambda!211811 lambda!211783))))

(declare-fun bs!1099746 () Bool)

(assert (= bs!1099746 (and d!1498031 d!1497893)))

(assert (=> bs!1099746 (not (= lambda!211811 lambda!211706))))

(declare-fun bs!1099747 () Bool)

(assert (= bs!1099747 (and d!1498031 d!1497845)))

(assert (=> bs!1099747 (not (= lambda!211811 lambda!211698))))

(assert (=> d!1498031 true))

(declare-fun b!4706833 () Bool)

(declare-fun res!1988342 () Bool)

(declare-fun e!2936016 () Bool)

(assert (=> b!4706833 (=> (not res!1988342) (not e!2936016))))

(assert (=> b!4706833 (= res!1988342 (forall!11438 (toList!5724 lt!1871357) lambda!211811))))

(declare-fun e!2936015 () ListMap!5087)

(assert (=> b!4706834 (= e!2936015 lt!1871357)))

(declare-fun lt!1871834 () Unit!127238)

(declare-fun call!329085 () Unit!127238)

(assert (=> b!4706834 (= lt!1871834 call!329085)))

(declare-fun call!329086 () Bool)

(assert (=> b!4706834 call!329086))

(declare-fun lt!1871845 () Unit!127238)

(assert (=> b!4706834 (= lt!1871845 lt!1871834)))

(declare-fun call!329087 () Bool)

(assert (=> b!4706834 call!329087))

(declare-fun lt!1871825 () Unit!127238)

(declare-fun Unit!127291 () Unit!127238)

(assert (=> b!4706834 (= lt!1871825 Unit!127291)))

(declare-fun b!4706835 () Bool)

(declare-fun e!2936017 () Bool)

(assert (=> b!4706835 (= e!2936017 call!329087)))

(declare-fun bm!329080 () Bool)

(assert (=> bm!329080 (= call!329085 (lemmaContainsAllItsOwnKeys!749 lt!1871357))))

(declare-fun c!804410 () Bool)

(declare-fun bm!329081 () Bool)

(assert (=> bm!329081 (= call!329087 (forall!11438 (toList!5724 lt!1871357) (ite c!804410 lambda!211808 lambda!211810)))))

(declare-fun lt!1871841 () ListMap!5087)

(declare-fun bm!329082 () Bool)

(assert (=> bm!329082 (= call!329086 (forall!11438 (ite c!804410 (toList!5724 lt!1871357) (toList!5724 lt!1871841)) (ite c!804410 lambda!211808 lambda!211810)))))

(assert (=> b!4706836 (= e!2936015 lt!1871842)))

(assert (=> b!4706836 (= lt!1871841 (+!2201 lt!1871357 (h!58884 lt!1871355)))))

(assert (=> b!4706836 (= lt!1871842 (addToMapMapFromBucket!1349 (t!359939 lt!1871355) (+!2201 lt!1871357 (h!58884 lt!1871355))))))

(declare-fun lt!1871826 () Unit!127238)

(assert (=> b!4706836 (= lt!1871826 call!329085)))

(assert (=> b!4706836 (forall!11438 (toList!5724 lt!1871357) lambda!211809)))

(declare-fun lt!1871839 () Unit!127238)

(assert (=> b!4706836 (= lt!1871839 lt!1871826)))

(assert (=> b!4706836 call!329086))

(declare-fun lt!1871836 () Unit!127238)

(declare-fun Unit!127292 () Unit!127238)

(assert (=> b!4706836 (= lt!1871836 Unit!127292)))

(assert (=> b!4706836 (forall!11438 (t!359939 lt!1871355) lambda!211810)))

(declare-fun lt!1871829 () Unit!127238)

(declare-fun Unit!127293 () Unit!127238)

(assert (=> b!4706836 (= lt!1871829 Unit!127293)))

(declare-fun lt!1871840 () Unit!127238)

(declare-fun Unit!127294 () Unit!127238)

(assert (=> b!4706836 (= lt!1871840 Unit!127294)))

(declare-fun lt!1871843 () Unit!127238)

(assert (=> b!4706836 (= lt!1871843 (forallContained!3546 (toList!5724 lt!1871841) lambda!211810 (h!58884 lt!1871355)))))

(assert (=> b!4706836 (contains!15901 lt!1871841 (_1!30325 (h!58884 lt!1871355)))))

(declare-fun lt!1871835 () Unit!127238)

(declare-fun Unit!127295 () Unit!127238)

(assert (=> b!4706836 (= lt!1871835 Unit!127295)))

(assert (=> b!4706836 (contains!15901 lt!1871842 (_1!30325 (h!58884 lt!1871355)))))

(declare-fun lt!1871830 () Unit!127238)

(declare-fun Unit!127296 () Unit!127238)

(assert (=> b!4706836 (= lt!1871830 Unit!127296)))

(assert (=> b!4706836 (forall!11438 lt!1871355 lambda!211810)))

(declare-fun lt!1871827 () Unit!127238)

(declare-fun Unit!127297 () Unit!127238)

(assert (=> b!4706836 (= lt!1871827 Unit!127297)))

(assert (=> b!4706836 (forall!11438 (toList!5724 lt!1871841) lambda!211810)))

(declare-fun lt!1871832 () Unit!127238)

(declare-fun Unit!127298 () Unit!127238)

(assert (=> b!4706836 (= lt!1871832 Unit!127298)))

(declare-fun lt!1871837 () Unit!127238)

(declare-fun Unit!127299 () Unit!127238)

(assert (=> b!4706836 (= lt!1871837 Unit!127299)))

(declare-fun lt!1871833 () Unit!127238)

(assert (=> b!4706836 (= lt!1871833 (addForallContainsKeyThenBeforeAdding!749 lt!1871357 lt!1871842 (_1!30325 (h!58884 lt!1871355)) (_2!30325 (h!58884 lt!1871355))))))

(assert (=> b!4706836 (forall!11438 (toList!5724 lt!1871357) lambda!211810)))

(declare-fun lt!1871844 () Unit!127238)

(assert (=> b!4706836 (= lt!1871844 lt!1871833)))

(assert (=> b!4706836 (forall!11438 (toList!5724 lt!1871357) lambda!211810)))

(declare-fun lt!1871828 () Unit!127238)

(declare-fun Unit!127300 () Unit!127238)

(assert (=> b!4706836 (= lt!1871828 Unit!127300)))

(declare-fun res!1988341 () Bool)

(assert (=> b!4706836 (= res!1988341 (forall!11438 lt!1871355 lambda!211810))))

(assert (=> b!4706836 (=> (not res!1988341) (not e!2936017))))

(assert (=> b!4706836 e!2936017))

(declare-fun lt!1871831 () Unit!127238)

(declare-fun Unit!127301 () Unit!127238)

(assert (=> b!4706836 (= lt!1871831 Unit!127301)))

(declare-fun b!4706837 () Bool)

(assert (=> b!4706837 (= e!2936016 (invariantList!1461 (toList!5724 lt!1871838)))))

(assert (=> d!1498031 e!2936016))

(declare-fun res!1988340 () Bool)

(assert (=> d!1498031 (=> (not res!1988340) (not e!2936016))))

(assert (=> d!1498031 (= res!1988340 (forall!11438 lt!1871355 lambda!211811))))

(assert (=> d!1498031 (= lt!1871838 e!2936015)))

(assert (=> d!1498031 (= c!804410 (is-Nil!52587 lt!1871355))))

(assert (=> d!1498031 (noDuplicateKeys!1917 lt!1871355)))

(assert (=> d!1498031 (= (addToMapMapFromBucket!1349 lt!1871355 lt!1871357) lt!1871838)))

(assert (= (and d!1498031 c!804410) b!4706834))

(assert (= (and d!1498031 (not c!804410)) b!4706836))

(assert (= (and b!4706836 res!1988341) b!4706835))

(assert (= (or b!4706834 b!4706836) bm!329080))

(assert (= (or b!4706834 b!4706835) bm!329081))

(assert (= (or b!4706834 b!4706836) bm!329082))

(assert (= (and d!1498031 res!1988340) b!4706833))

(assert (= (and b!4706833 res!1988342) b!4706837))

(declare-fun m!5630029 () Bool)

(assert (=> b!4706833 m!5630029))

(declare-fun m!5630033 () Bool)

(assert (=> bm!329081 m!5630033))

(declare-fun m!5630035 () Bool)

(assert (=> b!4706837 m!5630035))

(assert (=> bm!329080 m!5629759))

(declare-fun m!5630039 () Bool)

(assert (=> bm!329082 m!5630039))

(declare-fun m!5630043 () Bool)

(assert (=> d!1498031 m!5630043))

(assert (=> d!1498031 m!5629473))

(declare-fun m!5630045 () Bool)

(assert (=> b!4706836 m!5630045))

(declare-fun m!5630047 () Bool)

(assert (=> b!4706836 m!5630047))

(declare-fun m!5630049 () Bool)

(assert (=> b!4706836 m!5630049))

(declare-fun m!5630051 () Bool)

(assert (=> b!4706836 m!5630051))

(declare-fun m!5630053 () Bool)

(assert (=> b!4706836 m!5630053))

(declare-fun m!5630055 () Bool)

(assert (=> b!4706836 m!5630055))

(assert (=> b!4706836 m!5630047))

(declare-fun m!5630057 () Bool)

(assert (=> b!4706836 m!5630057))

(declare-fun m!5630059 () Bool)

(assert (=> b!4706836 m!5630059))

(declare-fun m!5630061 () Bool)

(assert (=> b!4706836 m!5630061))

(assert (=> b!4706836 m!5630061))

(declare-fun m!5630063 () Bool)

(assert (=> b!4706836 m!5630063))

(assert (=> b!4706836 m!5630055))

(declare-fun m!5630065 () Bool)

(assert (=> b!4706836 m!5630065))

(assert (=> b!4706465 d!1498031))

(declare-fun d!1498037 () Bool)

(declare-fun e!2936037 () Bool)

(assert (=> d!1498037 e!2936037))

(declare-fun res!1988352 () Bool)

(assert (=> d!1498037 (=> (not res!1988352) (not e!2936037))))

(declare-fun lt!1871873 () ListMap!5087)

(assert (=> d!1498037 (= res!1988352 (contains!15901 lt!1871873 (_1!30325 lt!1871350)))))

(declare-fun lt!1871871 () List!52711)

(assert (=> d!1498037 (= lt!1871873 (ListMap!5088 lt!1871871))))

(declare-fun lt!1871874 () Unit!127238)

(declare-fun lt!1871872 () Unit!127238)

(assert (=> d!1498037 (= lt!1871874 lt!1871872)))

(assert (=> d!1498037 (= (getValueByKey!1882 lt!1871871 (_1!30325 lt!1871350)) (Some!12245 (_2!30325 lt!1871350)))))

(assert (=> d!1498037 (= lt!1871872 (lemmaContainsTupThenGetReturnValue!1051 lt!1871871 (_1!30325 lt!1871350) (_2!30325 lt!1871350)))))

(assert (=> d!1498037 (= lt!1871871 (insertNoDuplicatedKeys!559 (toList!5724 (addToMapMapFromBucket!1349 lt!1871355 lt!1871357)) (_1!30325 lt!1871350) (_2!30325 lt!1871350)))))

(assert (=> d!1498037 (= (+!2201 (addToMapMapFromBucket!1349 lt!1871355 lt!1871357) lt!1871350) lt!1871873)))

(declare-fun b!4706867 () Bool)

(declare-fun res!1988353 () Bool)

(assert (=> b!4706867 (=> (not res!1988353) (not e!2936037))))

(assert (=> b!4706867 (= res!1988353 (= (getValueByKey!1882 (toList!5724 lt!1871873) (_1!30325 lt!1871350)) (Some!12245 (_2!30325 lt!1871350))))))

(declare-fun b!4706868 () Bool)

(assert (=> b!4706868 (= e!2936037 (contains!15908 (toList!5724 lt!1871873) lt!1871350))))

(assert (= (and d!1498037 res!1988352) b!4706867))

(assert (= (and b!4706867 res!1988353) b!4706868))

(declare-fun m!5630067 () Bool)

(assert (=> d!1498037 m!5630067))

(declare-fun m!5630069 () Bool)

(assert (=> d!1498037 m!5630069))

(declare-fun m!5630071 () Bool)

(assert (=> d!1498037 m!5630071))

(declare-fun m!5630073 () Bool)

(assert (=> d!1498037 m!5630073))

(declare-fun m!5630075 () Bool)

(assert (=> b!4706867 m!5630075))

(declare-fun m!5630077 () Bool)

(assert (=> b!4706868 m!5630077))

(assert (=> b!4706465 d!1498037))

(declare-fun bs!1099755 () Bool)

(declare-fun d!1498039 () Bool)

(assert (= bs!1099755 (and d!1498039 d!1497849)))

(declare-fun lambda!211813 () Int)

(assert (=> bs!1099755 (= lambda!211813 lambda!211701)))

(declare-fun bs!1099756 () Bool)

(assert (= bs!1099756 (and d!1498039 d!1497995)))

(assert (=> bs!1099756 (= lambda!211813 lambda!211798)))

(declare-fun bs!1099757 () Bool)

(assert (= bs!1099757 (and d!1498039 d!1498009)))

(assert (=> bs!1099757 (= lambda!211813 lambda!211800)))

(declare-fun bs!1099758 () Bool)

(assert (= bs!1099758 (and d!1498039 start!477990)))

(assert (=> bs!1099758 (= lambda!211813 lambda!211688)))

(declare-fun bs!1099759 () Bool)

(assert (= bs!1099759 (and d!1498039 d!1497941)))

(assert (=> bs!1099759 (= lambda!211813 lambda!211716)))

(declare-fun bs!1099760 () Bool)

(assert (= bs!1099760 (and d!1498039 d!1497861)))

(assert (=> bs!1099760 (not (= lambda!211813 lambda!211704))))

(declare-fun bs!1099761 () Bool)

(assert (= bs!1099761 (and d!1498039 d!1497969)))

(assert (=> bs!1099761 (= lambda!211813 lambda!211784)))

(declare-fun bs!1099762 () Bool)

(assert (= bs!1099762 (and d!1498039 d!1497871)))

(assert (=> bs!1099762 (= lambda!211813 lambda!211705)))

(declare-fun bs!1099763 () Bool)

(assert (= bs!1099763 (and d!1498039 d!1497983)))

(assert (=> bs!1099763 (= lambda!211813 lambda!211797)))

(declare-fun bs!1099764 () Bool)

(assert (= bs!1099764 (and d!1498039 d!1497923)))

(assert (=> bs!1099764 (= lambda!211813 lambda!211709)))

(declare-fun lt!1871875 () ListMap!5087)

(assert (=> d!1498039 (invariantList!1461 (toList!5724 lt!1871875))))

(declare-fun e!2936042 () ListMap!5087)

(assert (=> d!1498039 (= lt!1871875 e!2936042)))

(declare-fun c!804421 () Bool)

(assert (=> d!1498039 (= c!804421 (is-Cons!52588 (Cons!52588 lt!1871347 (t!359940 (toList!5723 lm!2023)))))))

(assert (=> d!1498039 (forall!11436 (Cons!52588 lt!1871347 (t!359940 (toList!5723 lm!2023))) lambda!211813)))

(assert (=> d!1498039 (= (extractMap!1943 (Cons!52588 lt!1871347 (t!359940 (toList!5723 lm!2023)))) lt!1871875)))

(declare-fun b!4706873 () Bool)

(assert (=> b!4706873 (= e!2936042 (addToMapMapFromBucket!1349 (_2!30326 (h!58885 (Cons!52588 lt!1871347 (t!359940 (toList!5723 lm!2023))))) (extractMap!1943 (t!359940 (Cons!52588 lt!1871347 (t!359940 (toList!5723 lm!2023)))))))))

(declare-fun b!4706874 () Bool)

(assert (=> b!4706874 (= e!2936042 (ListMap!5088 Nil!52587))))

(assert (= (and d!1498039 c!804421) b!4706873))

(assert (= (and d!1498039 (not c!804421)) b!4706874))

(declare-fun m!5630081 () Bool)

(assert (=> d!1498039 m!5630081))

(declare-fun m!5630085 () Bool)

(assert (=> d!1498039 m!5630085))

(declare-fun m!5630087 () Bool)

(assert (=> b!4706873 m!5630087))

(assert (=> b!4706873 m!5630087))

(declare-fun m!5630089 () Bool)

(assert (=> b!4706873 m!5630089))

(assert (=> b!4706465 d!1498039))

(declare-fun bs!1099765 () Bool)

(declare-fun b!4706878 () Bool)

(assert (= bs!1099765 (and b!4706878 b!4706829)))

(declare-fun lambda!211814 () Int)

(assert (=> bs!1099765 (= lambda!211814 lambda!211804)))

(declare-fun bs!1099766 () Bool)

(assert (= bs!1099766 (and b!4706878 b!4706831)))

(assert (=> bs!1099766 (= (= lt!1871357 lt!1871821) (= lambda!211814 lambda!211806))))

(declare-fun bs!1099767 () Bool)

(assert (= bs!1099767 (and b!4706878 d!1498029)))

(assert (=> bs!1099767 (= (= lt!1871357 lt!1871817) (= lambda!211814 lambda!211807))))

(declare-fun bs!1099768 () Bool)

(assert (= bs!1099768 (and b!4706878 b!4706775)))

(assert (=> bs!1099768 (= lambda!211814 lambda!211781)))

(declare-fun bs!1099769 () Bool)

(assert (= bs!1099769 (and b!4706878 d!1498031)))

(assert (=> bs!1099769 (= (= lt!1871357 lt!1871838) (= lambda!211814 lambda!211811))))

(declare-fun bs!1099770 () Bool)

(assert (= bs!1099770 (and b!4706878 b!4706836)))

(assert (=> bs!1099770 (= lambda!211814 lambda!211809)))

(declare-fun bs!1099771 () Bool)

(assert (= bs!1099771 (and b!4706878 b!4706789)))

(assert (=> bs!1099771 (= (= lt!1871357 lt!1871776) (= lambda!211814 lambda!211788))))

(declare-fun bs!1099772 () Bool)

(assert (= bs!1099772 (and b!4706878 b!4706773)))

(assert (=> bs!1099772 (= lambda!211814 lambda!211780)))

(declare-fun bs!1099773 () Bool)

(assert (= bs!1099773 (and b!4706878 b!4706787)))

(assert (=> bs!1099773 (= lambda!211814 lambda!211786)))

(declare-fun bs!1099774 () Bool)

(assert (= bs!1099774 (and b!4706878 b!4706834)))

(assert (=> bs!1099774 (= lambda!211814 lambda!211808)))

(assert (=> bs!1099768 (= (= lt!1871357 lt!1871750) (= lambda!211814 lambda!211782))))

(assert (=> bs!1099766 (= lambda!211814 lambda!211805)))

(declare-fun bs!1099775 () Bool)

(assert (= bs!1099775 (and b!4706878 d!1497979)))

(assert (=> bs!1099775 (= (= lt!1871357 lt!1871772) (= lambda!211814 lambda!211789))))

(assert (=> bs!1099771 (= lambda!211814 lambda!211787)))

(assert (=> bs!1099770 (= (= lt!1871357 lt!1871842) (= lambda!211814 lambda!211810))))

(declare-fun bs!1099776 () Bool)

(assert (= bs!1099776 (and b!4706878 d!1497943)))

(assert (=> bs!1099776 (= (= lt!1871357 lt!1871746) (= lambda!211814 lambda!211783))))

(declare-fun bs!1099777 () Bool)

(assert (= bs!1099777 (and b!4706878 d!1497893)))

(assert (=> bs!1099777 (not (= lambda!211814 lambda!211706))))

(declare-fun bs!1099778 () Bool)

(assert (= bs!1099778 (and b!4706878 d!1497845)))

(assert (=> bs!1099778 (not (= lambda!211814 lambda!211698))))

(assert (=> b!4706878 true))

(declare-fun bs!1099779 () Bool)

(declare-fun b!4706880 () Bool)

(assert (= bs!1099779 (and b!4706880 b!4706829)))

(declare-fun lambda!211815 () Int)

(assert (=> bs!1099779 (= lambda!211815 lambda!211804)))

(declare-fun bs!1099780 () Bool)

(assert (= bs!1099780 (and b!4706880 b!4706831)))

(assert (=> bs!1099780 (= (= lt!1871357 lt!1871821) (= lambda!211815 lambda!211806))))

(declare-fun bs!1099781 () Bool)

(assert (= bs!1099781 (and b!4706880 d!1498029)))

(assert (=> bs!1099781 (= (= lt!1871357 lt!1871817) (= lambda!211815 lambda!211807))))

(declare-fun bs!1099782 () Bool)

(assert (= bs!1099782 (and b!4706880 b!4706775)))

(assert (=> bs!1099782 (= lambda!211815 lambda!211781)))

(declare-fun bs!1099783 () Bool)

(assert (= bs!1099783 (and b!4706880 b!4706878)))

(assert (=> bs!1099783 (= lambda!211815 lambda!211814)))

(declare-fun bs!1099784 () Bool)

(assert (= bs!1099784 (and b!4706880 d!1498031)))

(assert (=> bs!1099784 (= (= lt!1871357 lt!1871838) (= lambda!211815 lambda!211811))))

(declare-fun bs!1099785 () Bool)

(assert (= bs!1099785 (and b!4706880 b!4706836)))

(assert (=> bs!1099785 (= lambda!211815 lambda!211809)))

(declare-fun bs!1099786 () Bool)

(assert (= bs!1099786 (and b!4706880 b!4706789)))

(assert (=> bs!1099786 (= (= lt!1871357 lt!1871776) (= lambda!211815 lambda!211788))))

(declare-fun bs!1099787 () Bool)

(assert (= bs!1099787 (and b!4706880 b!4706773)))

(assert (=> bs!1099787 (= lambda!211815 lambda!211780)))

(declare-fun bs!1099788 () Bool)

(assert (= bs!1099788 (and b!4706880 b!4706787)))

(assert (=> bs!1099788 (= lambda!211815 lambda!211786)))

(declare-fun bs!1099789 () Bool)

(assert (= bs!1099789 (and b!4706880 b!4706834)))

(assert (=> bs!1099789 (= lambda!211815 lambda!211808)))

(assert (=> bs!1099782 (= (= lt!1871357 lt!1871750) (= lambda!211815 lambda!211782))))

(assert (=> bs!1099780 (= lambda!211815 lambda!211805)))

(declare-fun bs!1099790 () Bool)

(assert (= bs!1099790 (and b!4706880 d!1497979)))

(assert (=> bs!1099790 (= (= lt!1871357 lt!1871772) (= lambda!211815 lambda!211789))))

(assert (=> bs!1099786 (= lambda!211815 lambda!211787)))

(assert (=> bs!1099785 (= (= lt!1871357 lt!1871842) (= lambda!211815 lambda!211810))))

(declare-fun bs!1099791 () Bool)

(assert (= bs!1099791 (and b!4706880 d!1497943)))

(assert (=> bs!1099791 (= (= lt!1871357 lt!1871746) (= lambda!211815 lambda!211783))))

(declare-fun bs!1099792 () Bool)

(assert (= bs!1099792 (and b!4706880 d!1497893)))

(assert (=> bs!1099792 (not (= lambda!211815 lambda!211706))))

(declare-fun bs!1099793 () Bool)

(assert (= bs!1099793 (and b!4706880 d!1497845)))

(assert (=> bs!1099793 (not (= lambda!211815 lambda!211698))))

(assert (=> b!4706880 true))

(declare-fun lt!1871893 () ListMap!5087)

(declare-fun lambda!211816 () Int)

(assert (=> bs!1099779 (= (= lt!1871893 lt!1871357) (= lambda!211816 lambda!211804))))

(assert (=> bs!1099780 (= (= lt!1871893 lt!1871821) (= lambda!211816 lambda!211806))))

(assert (=> bs!1099781 (= (= lt!1871893 lt!1871817) (= lambda!211816 lambda!211807))))

(assert (=> bs!1099782 (= (= lt!1871893 lt!1871357) (= lambda!211816 lambda!211781))))

(assert (=> bs!1099783 (= (= lt!1871893 lt!1871357) (= lambda!211816 lambda!211814))))

(assert (=> bs!1099784 (= (= lt!1871893 lt!1871838) (= lambda!211816 lambda!211811))))

(assert (=> bs!1099785 (= (= lt!1871893 lt!1871357) (= lambda!211816 lambda!211809))))

(assert (=> bs!1099786 (= (= lt!1871893 lt!1871776) (= lambda!211816 lambda!211788))))

(assert (=> bs!1099787 (= (= lt!1871893 lt!1871357) (= lambda!211816 lambda!211780))))

(assert (=> bs!1099788 (= (= lt!1871893 lt!1871357) (= lambda!211816 lambda!211786))))

(assert (=> bs!1099789 (= (= lt!1871893 lt!1871357) (= lambda!211816 lambda!211808))))

(assert (=> bs!1099782 (= (= lt!1871893 lt!1871750) (= lambda!211816 lambda!211782))))

(assert (=> b!4706880 (= (= lt!1871893 lt!1871357) (= lambda!211816 lambda!211815))))

(assert (=> bs!1099780 (= (= lt!1871893 lt!1871357) (= lambda!211816 lambda!211805))))

(assert (=> bs!1099790 (= (= lt!1871893 lt!1871772) (= lambda!211816 lambda!211789))))

(assert (=> bs!1099786 (= (= lt!1871893 lt!1871357) (= lambda!211816 lambda!211787))))

(assert (=> bs!1099785 (= (= lt!1871893 lt!1871842) (= lambda!211816 lambda!211810))))

(assert (=> bs!1099791 (= (= lt!1871893 lt!1871746) (= lambda!211816 lambda!211783))))

(assert (=> bs!1099792 (not (= lambda!211816 lambda!211706))))

(assert (=> bs!1099793 (not (= lambda!211816 lambda!211698))))

(assert (=> b!4706880 true))

(declare-fun bs!1099794 () Bool)

(declare-fun d!1498045 () Bool)

(assert (= bs!1099794 (and d!1498045 b!4706829)))

(declare-fun lambda!211817 () Int)

(declare-fun lt!1871889 () ListMap!5087)

(assert (=> bs!1099794 (= (= lt!1871889 lt!1871357) (= lambda!211817 lambda!211804))))

(declare-fun bs!1099795 () Bool)

(assert (= bs!1099795 (and d!1498045 d!1498029)))

(assert (=> bs!1099795 (= (= lt!1871889 lt!1871817) (= lambda!211817 lambda!211807))))

(declare-fun bs!1099796 () Bool)

(assert (= bs!1099796 (and d!1498045 b!4706775)))

(assert (=> bs!1099796 (= (= lt!1871889 lt!1871357) (= lambda!211817 lambda!211781))))

(declare-fun bs!1099797 () Bool)

(assert (= bs!1099797 (and d!1498045 b!4706878)))

(assert (=> bs!1099797 (= (= lt!1871889 lt!1871357) (= lambda!211817 lambda!211814))))

(declare-fun bs!1099798 () Bool)

(assert (= bs!1099798 (and d!1498045 d!1498031)))

(assert (=> bs!1099798 (= (= lt!1871889 lt!1871838) (= lambda!211817 lambda!211811))))

(declare-fun bs!1099799 () Bool)

(assert (= bs!1099799 (and d!1498045 b!4706836)))

(assert (=> bs!1099799 (= (= lt!1871889 lt!1871357) (= lambda!211817 lambda!211809))))

(declare-fun bs!1099800 () Bool)

(assert (= bs!1099800 (and d!1498045 b!4706789)))

(assert (=> bs!1099800 (= (= lt!1871889 lt!1871776) (= lambda!211817 lambda!211788))))

(declare-fun bs!1099801 () Bool)

(assert (= bs!1099801 (and d!1498045 b!4706773)))

(assert (=> bs!1099801 (= (= lt!1871889 lt!1871357) (= lambda!211817 lambda!211780))))

(declare-fun bs!1099802 () Bool)

(assert (= bs!1099802 (and d!1498045 b!4706787)))

(assert (=> bs!1099802 (= (= lt!1871889 lt!1871357) (= lambda!211817 lambda!211786))))

(declare-fun bs!1099803 () Bool)

(assert (= bs!1099803 (and d!1498045 b!4706834)))

(assert (=> bs!1099803 (= (= lt!1871889 lt!1871357) (= lambda!211817 lambda!211808))))

(assert (=> bs!1099796 (= (= lt!1871889 lt!1871750) (= lambda!211817 lambda!211782))))

(declare-fun bs!1099804 () Bool)

(assert (= bs!1099804 (and d!1498045 b!4706831)))

(assert (=> bs!1099804 (= (= lt!1871889 lt!1871821) (= lambda!211817 lambda!211806))))

(declare-fun bs!1099805 () Bool)

(assert (= bs!1099805 (and d!1498045 b!4706880)))

(assert (=> bs!1099805 (= (= lt!1871889 lt!1871893) (= lambda!211817 lambda!211816))))

(assert (=> bs!1099805 (= (= lt!1871889 lt!1871357) (= lambda!211817 lambda!211815))))

(assert (=> bs!1099804 (= (= lt!1871889 lt!1871357) (= lambda!211817 lambda!211805))))

(declare-fun bs!1099806 () Bool)

(assert (= bs!1099806 (and d!1498045 d!1497979)))

(assert (=> bs!1099806 (= (= lt!1871889 lt!1871772) (= lambda!211817 lambda!211789))))

(assert (=> bs!1099800 (= (= lt!1871889 lt!1871357) (= lambda!211817 lambda!211787))))

(assert (=> bs!1099799 (= (= lt!1871889 lt!1871842) (= lambda!211817 lambda!211810))))

(declare-fun bs!1099807 () Bool)

(assert (= bs!1099807 (and d!1498045 d!1497943)))

(assert (=> bs!1099807 (= (= lt!1871889 lt!1871746) (= lambda!211817 lambda!211783))))

(declare-fun bs!1099808 () Bool)

(assert (= bs!1099808 (and d!1498045 d!1497893)))

(assert (=> bs!1099808 (not (= lambda!211817 lambda!211706))))

(declare-fun bs!1099809 () Bool)

(assert (= bs!1099809 (and d!1498045 d!1497845)))

(assert (=> bs!1099809 (not (= lambda!211817 lambda!211698))))

(assert (=> d!1498045 true))

(declare-fun b!4706877 () Bool)

(declare-fun res!1988362 () Bool)

(declare-fun e!2936046 () Bool)

(assert (=> b!4706877 (=> (not res!1988362) (not e!2936046))))

(assert (=> b!4706877 (= res!1988362 (forall!11438 (toList!5724 lt!1871357) lambda!211817))))

(declare-fun e!2936045 () ListMap!5087)

(assert (=> b!4706878 (= e!2936045 lt!1871357)))

(declare-fun lt!1871885 () Unit!127238)

(declare-fun call!329091 () Unit!127238)

(assert (=> b!4706878 (= lt!1871885 call!329091)))

(declare-fun call!329092 () Bool)

(assert (=> b!4706878 call!329092))

(declare-fun lt!1871896 () Unit!127238)

(assert (=> b!4706878 (= lt!1871896 lt!1871885)))

(declare-fun call!329093 () Bool)

(assert (=> b!4706878 call!329093))

(declare-fun lt!1871876 () Unit!127238)

(declare-fun Unit!127303 () Unit!127238)

(assert (=> b!4706878 (= lt!1871876 Unit!127303)))

(declare-fun b!4706879 () Bool)

(declare-fun e!2936047 () Bool)

(assert (=> b!4706879 (= e!2936047 call!329093)))

(declare-fun bm!329086 () Bool)

(assert (=> bm!329086 (= call!329091 (lemmaContainsAllItsOwnKeys!749 lt!1871357))))

(declare-fun bm!329087 () Bool)

(declare-fun c!804422 () Bool)

(assert (=> bm!329087 (= call!329093 (forall!11438 (toList!5724 lt!1871357) (ite c!804422 lambda!211814 lambda!211816)))))

(declare-fun bm!329088 () Bool)

(declare-fun lt!1871892 () ListMap!5087)

(assert (=> bm!329088 (= call!329092 (forall!11438 (ite c!804422 (toList!5724 lt!1871357) (toList!5724 lt!1871892)) (ite c!804422 lambda!211814 lambda!211816)))))

(assert (=> b!4706880 (= e!2936045 lt!1871893)))

(assert (=> b!4706880 (= lt!1871892 (+!2201 lt!1871357 (h!58884 (Cons!52587 lt!1871350 lt!1871355))))))

(assert (=> b!4706880 (= lt!1871893 (addToMapMapFromBucket!1349 (t!359939 (Cons!52587 lt!1871350 lt!1871355)) (+!2201 lt!1871357 (h!58884 (Cons!52587 lt!1871350 lt!1871355)))))))

(declare-fun lt!1871877 () Unit!127238)

(assert (=> b!4706880 (= lt!1871877 call!329091)))

(assert (=> b!4706880 (forall!11438 (toList!5724 lt!1871357) lambda!211815)))

(declare-fun lt!1871890 () Unit!127238)

(assert (=> b!4706880 (= lt!1871890 lt!1871877)))

(assert (=> b!4706880 call!329092))

(declare-fun lt!1871887 () Unit!127238)

(declare-fun Unit!127304 () Unit!127238)

(assert (=> b!4706880 (= lt!1871887 Unit!127304)))

(assert (=> b!4706880 (forall!11438 (t!359939 (Cons!52587 lt!1871350 lt!1871355)) lambda!211816)))

(declare-fun lt!1871880 () Unit!127238)

(declare-fun Unit!127305 () Unit!127238)

(assert (=> b!4706880 (= lt!1871880 Unit!127305)))

(declare-fun lt!1871891 () Unit!127238)

(declare-fun Unit!127306 () Unit!127238)

(assert (=> b!4706880 (= lt!1871891 Unit!127306)))

(declare-fun lt!1871894 () Unit!127238)

(assert (=> b!4706880 (= lt!1871894 (forallContained!3546 (toList!5724 lt!1871892) lambda!211816 (h!58884 (Cons!52587 lt!1871350 lt!1871355))))))

(assert (=> b!4706880 (contains!15901 lt!1871892 (_1!30325 (h!58884 (Cons!52587 lt!1871350 lt!1871355))))))

(declare-fun lt!1871886 () Unit!127238)

(declare-fun Unit!127307 () Unit!127238)

(assert (=> b!4706880 (= lt!1871886 Unit!127307)))

(assert (=> b!4706880 (contains!15901 lt!1871893 (_1!30325 (h!58884 (Cons!52587 lt!1871350 lt!1871355))))))

(declare-fun lt!1871881 () Unit!127238)

(declare-fun Unit!127308 () Unit!127238)

(assert (=> b!4706880 (= lt!1871881 Unit!127308)))

(assert (=> b!4706880 (forall!11438 (Cons!52587 lt!1871350 lt!1871355) lambda!211816)))

(declare-fun lt!1871878 () Unit!127238)

(declare-fun Unit!127309 () Unit!127238)

(assert (=> b!4706880 (= lt!1871878 Unit!127309)))

(assert (=> b!4706880 (forall!11438 (toList!5724 lt!1871892) lambda!211816)))

(declare-fun lt!1871883 () Unit!127238)

(declare-fun Unit!127310 () Unit!127238)

(assert (=> b!4706880 (= lt!1871883 Unit!127310)))

(declare-fun lt!1871888 () Unit!127238)

(declare-fun Unit!127311 () Unit!127238)

(assert (=> b!4706880 (= lt!1871888 Unit!127311)))

(declare-fun lt!1871884 () Unit!127238)

(assert (=> b!4706880 (= lt!1871884 (addForallContainsKeyThenBeforeAdding!749 lt!1871357 lt!1871893 (_1!30325 (h!58884 (Cons!52587 lt!1871350 lt!1871355))) (_2!30325 (h!58884 (Cons!52587 lt!1871350 lt!1871355)))))))

(assert (=> b!4706880 (forall!11438 (toList!5724 lt!1871357) lambda!211816)))

(declare-fun lt!1871895 () Unit!127238)

(assert (=> b!4706880 (= lt!1871895 lt!1871884)))

(assert (=> b!4706880 (forall!11438 (toList!5724 lt!1871357) lambda!211816)))

(declare-fun lt!1871879 () Unit!127238)

(declare-fun Unit!127312 () Unit!127238)

(assert (=> b!4706880 (= lt!1871879 Unit!127312)))

(declare-fun res!1988361 () Bool)

(assert (=> b!4706880 (= res!1988361 (forall!11438 (Cons!52587 lt!1871350 lt!1871355) lambda!211816))))

(assert (=> b!4706880 (=> (not res!1988361) (not e!2936047))))

(assert (=> b!4706880 e!2936047))

(declare-fun lt!1871882 () Unit!127238)

(declare-fun Unit!127313 () Unit!127238)

(assert (=> b!4706880 (= lt!1871882 Unit!127313)))

(declare-fun b!4706881 () Bool)

(assert (=> b!4706881 (= e!2936046 (invariantList!1461 (toList!5724 lt!1871889)))))

(assert (=> d!1498045 e!2936046))

(declare-fun res!1988360 () Bool)

(assert (=> d!1498045 (=> (not res!1988360) (not e!2936046))))

(assert (=> d!1498045 (= res!1988360 (forall!11438 (Cons!52587 lt!1871350 lt!1871355) lambda!211817))))

(assert (=> d!1498045 (= lt!1871889 e!2936045)))

(assert (=> d!1498045 (= c!804422 (is-Nil!52587 (Cons!52587 lt!1871350 lt!1871355)))))

(assert (=> d!1498045 (noDuplicateKeys!1917 (Cons!52587 lt!1871350 lt!1871355))))

(assert (=> d!1498045 (= (addToMapMapFromBucket!1349 (Cons!52587 lt!1871350 lt!1871355) lt!1871357) lt!1871889)))

(assert (= (and d!1498045 c!804422) b!4706878))

(assert (= (and d!1498045 (not c!804422)) b!4706880))

(assert (= (and b!4706880 res!1988361) b!4706879))

(assert (= (or b!4706878 b!4706880) bm!329086))

(assert (= (or b!4706878 b!4706879) bm!329087))

(assert (= (or b!4706878 b!4706880) bm!329088))

(assert (= (and d!1498045 res!1988360) b!4706877))

(assert (= (and b!4706877 res!1988362) b!4706881))

(declare-fun m!5630111 () Bool)

(assert (=> b!4706877 m!5630111))

(declare-fun m!5630113 () Bool)

(assert (=> bm!329087 m!5630113))

(declare-fun m!5630115 () Bool)

(assert (=> b!4706881 m!5630115))

(assert (=> bm!329086 m!5629759))

(declare-fun m!5630117 () Bool)

(assert (=> bm!329088 m!5630117))

(declare-fun m!5630119 () Bool)

(assert (=> d!1498045 m!5630119))

(declare-fun m!5630121 () Bool)

(assert (=> d!1498045 m!5630121))

(declare-fun m!5630123 () Bool)

(assert (=> b!4706880 m!5630123))

(declare-fun m!5630125 () Bool)

(assert (=> b!4706880 m!5630125))

(declare-fun m!5630127 () Bool)

(assert (=> b!4706880 m!5630127))

(declare-fun m!5630129 () Bool)

(assert (=> b!4706880 m!5630129))

(declare-fun m!5630131 () Bool)

(assert (=> b!4706880 m!5630131))

(declare-fun m!5630133 () Bool)

(assert (=> b!4706880 m!5630133))

(assert (=> b!4706880 m!5630125))

(declare-fun m!5630135 () Bool)

(assert (=> b!4706880 m!5630135))

(declare-fun m!5630137 () Bool)

(assert (=> b!4706880 m!5630137))

(declare-fun m!5630139 () Bool)

(assert (=> b!4706880 m!5630139))

(assert (=> b!4706880 m!5630139))

(declare-fun m!5630141 () Bool)

(assert (=> b!4706880 m!5630141))

(assert (=> b!4706880 m!5630133))

(declare-fun m!5630143 () Bool)

(assert (=> b!4706880 m!5630143))

(assert (=> b!4706465 d!1498045))

(declare-fun b!4706912 () Bool)

(assert (=> b!4706912 false))

(declare-fun lt!1871910 () Unit!127238)

(declare-fun lt!1871908 () Unit!127238)

(assert (=> b!4706912 (= lt!1871910 lt!1871908)))

(assert (=> b!4706912 (containsKey!3222 (toList!5724 lt!1871341) key!4653)))

(assert (=> b!4706912 (= lt!1871908 (lemmaInGetKeysListThenContainsKey!900 (toList!5724 lt!1871341) key!4653))))

(declare-fun e!2936074 () Unit!127238)

(declare-fun Unit!127314 () Unit!127238)

(assert (=> b!4706912 (= e!2936074 Unit!127314)))

(declare-fun bm!329089 () Bool)

(declare-fun call!329094 () Bool)

(declare-fun e!2936071 () List!52715)

(assert (=> bm!329089 (= call!329094 (contains!15907 e!2936071 key!4653))))

(declare-fun c!804430 () Bool)

(declare-fun c!804429 () Bool)

(assert (=> bm!329089 (= c!804430 c!804429)))

(declare-fun d!1498051 () Bool)

(declare-fun e!2936069 () Bool)

(assert (=> d!1498051 e!2936069))

(declare-fun res!1988383 () Bool)

(assert (=> d!1498051 (=> res!1988383 e!2936069)))

(declare-fun e!2936072 () Bool)

(assert (=> d!1498051 (= res!1988383 e!2936072)))

(declare-fun res!1988382 () Bool)

(assert (=> d!1498051 (=> (not res!1988382) (not e!2936072))))

(declare-fun lt!1871906 () Bool)

(assert (=> d!1498051 (= res!1988382 (not lt!1871906))))

(declare-fun lt!1871903 () Bool)

(assert (=> d!1498051 (= lt!1871906 lt!1871903)))

(declare-fun lt!1871904 () Unit!127238)

(declare-fun e!2936070 () Unit!127238)

(assert (=> d!1498051 (= lt!1871904 e!2936070)))

(assert (=> d!1498051 (= c!804429 lt!1871903)))

(assert (=> d!1498051 (= lt!1871903 (containsKey!3222 (toList!5724 lt!1871341) key!4653))))

(assert (=> d!1498051 (= (contains!15901 lt!1871341 key!4653) lt!1871906)))

(declare-fun b!4706913 () Bool)

(declare-fun e!2936073 () Bool)

(assert (=> b!4706913 (= e!2936073 (contains!15907 (keys!18828 lt!1871341) key!4653))))

(declare-fun b!4706914 () Bool)

(assert (=> b!4706914 (= e!2936069 e!2936073)))

(declare-fun res!1988381 () Bool)

(assert (=> b!4706914 (=> (not res!1988381) (not e!2936073))))

(assert (=> b!4706914 (= res!1988381 (isDefined!9501 (getValueByKey!1882 (toList!5724 lt!1871341) key!4653)))))

(declare-fun b!4706915 () Bool)

(declare-fun lt!1871909 () Unit!127238)

(assert (=> b!4706915 (= e!2936070 lt!1871909)))

(declare-fun lt!1871905 () Unit!127238)

(assert (=> b!4706915 (= lt!1871905 (lemmaContainsKeyImpliesGetValueByKeyDefined!1774 (toList!5724 lt!1871341) key!4653))))

(assert (=> b!4706915 (isDefined!9501 (getValueByKey!1882 (toList!5724 lt!1871341) key!4653))))

(declare-fun lt!1871907 () Unit!127238)

(assert (=> b!4706915 (= lt!1871907 lt!1871905)))

(assert (=> b!4706915 (= lt!1871909 (lemmaInListThenGetKeysListContains!896 (toList!5724 lt!1871341) key!4653))))

(assert (=> b!4706915 call!329094))

(declare-fun b!4706916 () Bool)

(declare-fun Unit!127315 () Unit!127238)

(assert (=> b!4706916 (= e!2936074 Unit!127315)))

(declare-fun b!4706917 () Bool)

(assert (=> b!4706917 (= e!2936071 (getKeysList!901 (toList!5724 lt!1871341)))))

(declare-fun b!4706918 () Bool)

(assert (=> b!4706918 (= e!2936070 e!2936074)))

(declare-fun c!804431 () Bool)

(assert (=> b!4706918 (= c!804431 call!329094)))

(declare-fun b!4706919 () Bool)

(assert (=> b!4706919 (= e!2936072 (not (contains!15907 (keys!18828 lt!1871341) key!4653)))))

(declare-fun b!4706920 () Bool)

(assert (=> b!4706920 (= e!2936071 (keys!18828 lt!1871341))))

(assert (= (and d!1498051 c!804429) b!4706915))

(assert (= (and d!1498051 (not c!804429)) b!4706918))

(assert (= (and b!4706918 c!804431) b!4706912))

(assert (= (and b!4706918 (not c!804431)) b!4706916))

(assert (= (or b!4706915 b!4706918) bm!329089))

(assert (= (and bm!329089 c!804430) b!4706917))

(assert (= (and bm!329089 (not c!804430)) b!4706920))

(assert (= (and d!1498051 res!1988382) b!4706919))

(assert (= (and d!1498051 (not res!1988383)) b!4706914))

(assert (= (and b!4706914 res!1988381) b!4706913))

(declare-fun m!5630145 () Bool)

(assert (=> b!4706917 m!5630145))

(declare-fun m!5630147 () Bool)

(assert (=> b!4706920 m!5630147))

(declare-fun m!5630149 () Bool)

(assert (=> b!4706915 m!5630149))

(declare-fun m!5630151 () Bool)

(assert (=> b!4706915 m!5630151))

(assert (=> b!4706915 m!5630151))

(declare-fun m!5630153 () Bool)

(assert (=> b!4706915 m!5630153))

(declare-fun m!5630155 () Bool)

(assert (=> b!4706915 m!5630155))

(assert (=> b!4706913 m!5630147))

(assert (=> b!4706913 m!5630147))

(declare-fun m!5630157 () Bool)

(assert (=> b!4706913 m!5630157))

(assert (=> b!4706914 m!5630151))

(assert (=> b!4706914 m!5630151))

(assert (=> b!4706914 m!5630153))

(assert (=> b!4706919 m!5630147))

(assert (=> b!4706919 m!5630147))

(assert (=> b!4706919 m!5630157))

(declare-fun m!5630159 () Bool)

(assert (=> d!1498051 m!5630159))

(assert (=> b!4706912 m!5630159))

(declare-fun m!5630161 () Bool)

(assert (=> b!4706912 m!5630161))

(declare-fun m!5630163 () Bool)

(assert (=> bm!329089 m!5630163))

(assert (=> b!4706465 d!1498051))

(declare-fun d!1498053 () Bool)

(declare-fun e!2936075 () Bool)

(assert (=> d!1498053 e!2936075))

(declare-fun res!1988384 () Bool)

(assert (=> d!1498053 (=> (not res!1988384) (not e!2936075))))

(declare-fun lt!1871913 () ListMap!5087)

(assert (=> d!1498053 (= res!1988384 (contains!15901 lt!1871913 (_1!30325 lt!1871325)))))

(declare-fun lt!1871911 () List!52711)

(assert (=> d!1498053 (= lt!1871913 (ListMap!5088 lt!1871911))))

(declare-fun lt!1871914 () Unit!127238)

(declare-fun lt!1871912 () Unit!127238)

(assert (=> d!1498053 (= lt!1871914 lt!1871912)))

(assert (=> d!1498053 (= (getValueByKey!1882 lt!1871911 (_1!30325 lt!1871325)) (Some!12245 (_2!30325 lt!1871325)))))

(assert (=> d!1498053 (= lt!1871912 (lemmaContainsTupThenGetReturnValue!1051 lt!1871911 (_1!30325 lt!1871325) (_2!30325 lt!1871325)))))

(assert (=> d!1498053 (= lt!1871911 (insertNoDuplicatedKeys!559 (toList!5724 (addToMapMapFromBucket!1349 lt!1871346 lt!1871357)) (_1!30325 lt!1871325) (_2!30325 lt!1871325)))))

(assert (=> d!1498053 (= (+!2201 (addToMapMapFromBucket!1349 lt!1871346 lt!1871357) lt!1871325) lt!1871913)))

(declare-fun b!4706921 () Bool)

(declare-fun res!1988385 () Bool)

(assert (=> b!4706921 (=> (not res!1988385) (not e!2936075))))

(assert (=> b!4706921 (= res!1988385 (= (getValueByKey!1882 (toList!5724 lt!1871913) (_1!30325 lt!1871325)) (Some!12245 (_2!30325 lt!1871325))))))

(declare-fun b!4706922 () Bool)

(assert (=> b!4706922 (= e!2936075 (contains!15908 (toList!5724 lt!1871913) lt!1871325))))

(assert (= (and d!1498053 res!1988384) b!4706921))

(assert (= (and b!4706921 res!1988385) b!4706922))

(declare-fun m!5630165 () Bool)

(assert (=> d!1498053 m!5630165))

(declare-fun m!5630167 () Bool)

(assert (=> d!1498053 m!5630167))

(declare-fun m!5630169 () Bool)

(assert (=> d!1498053 m!5630169))

(declare-fun m!5630171 () Bool)

(assert (=> d!1498053 m!5630171))

(declare-fun m!5630173 () Bool)

(assert (=> b!4706921 m!5630173))

(declare-fun m!5630175 () Bool)

(assert (=> b!4706922 m!5630175))

(assert (=> b!4706465 d!1498053))

(declare-fun d!1498055 () Bool)

(assert (=> d!1498055 (eq!1076 (addToMapMapFromBucket!1349 (Cons!52587 lt!1871350 lt!1871355) lt!1871357) (+!2201 (addToMapMapFromBucket!1349 lt!1871355 lt!1871357) lt!1871350))))

(declare-fun lt!1871915 () Unit!127238)

(assert (=> d!1498055 (= lt!1871915 (choose!33075 lt!1871350 lt!1871355 lt!1871357))))

(assert (=> d!1498055 (noDuplicateKeys!1917 lt!1871355)))

(assert (=> d!1498055 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!325 lt!1871350 lt!1871355 lt!1871357) lt!1871915)))

(declare-fun bs!1099810 () Bool)

(assert (= bs!1099810 d!1498055))

(assert (=> bs!1099810 m!5629147))

(assert (=> bs!1099810 m!5629149))

(assert (=> bs!1099810 m!5629147))

(assert (=> bs!1099810 m!5629157))

(assert (=> bs!1099810 m!5629149))

(assert (=> bs!1099810 m!5629159))

(declare-fun m!5630177 () Bool)

(assert (=> bs!1099810 m!5630177))

(assert (=> bs!1099810 m!5629157))

(assert (=> bs!1099810 m!5629473))

(assert (=> b!4706465 d!1498055))

(declare-fun d!1498057 () Bool)

(assert (=> d!1498057 (= (head!10097 newBucket!218) (h!58884 newBucket!218))))

(assert (=> b!4706465 d!1498057))

(declare-fun d!1498059 () Bool)

(assert (=> d!1498059 (= (head!10098 (toList!5723 lm!2023)) (h!58885 (toList!5723 lm!2023)))))

(assert (=> b!4706468 d!1498059))

(declare-fun d!1498061 () Bool)

(declare-fun e!2936076 () Bool)

(assert (=> d!1498061 e!2936076))

(declare-fun res!1988386 () Bool)

(assert (=> d!1498061 (=> (not res!1988386) (not e!2936076))))

(declare-fun lt!1871919 () ListMap!5087)

(assert (=> d!1498061 (= res!1988386 (not (contains!15901 lt!1871919 key!4653)))))

(assert (=> d!1498061 (= lt!1871919 (ListMap!5088 (removePresrvNoDuplicatedKeys!382 (toList!5724 lt!1871341) key!4653)))))

(assert (=> d!1498061 (= (-!721 lt!1871341 key!4653) lt!1871919)))

(declare-fun b!4706923 () Bool)

(assert (=> b!4706923 (= e!2936076 (= (set.minus (content!9314 (keys!18828 lt!1871341)) (set.insert key!4653 (as set.empty (Set K!13943)))) (content!9314 (keys!18828 lt!1871919))))))

(assert (= (and d!1498061 res!1988386) b!4706923))

(declare-fun m!5630179 () Bool)

(assert (=> d!1498061 m!5630179))

(declare-fun m!5630181 () Bool)

(assert (=> d!1498061 m!5630181))

(assert (=> b!4706923 m!5630147))

(declare-fun m!5630183 () Bool)

(assert (=> b!4706923 m!5630183))

(assert (=> b!4706923 m!5629415))

(assert (=> b!4706923 m!5630147))

(declare-fun m!5630185 () Bool)

(assert (=> b!4706923 m!5630185))

(assert (=> b!4706923 m!5630185))

(declare-fun m!5630187 () Bool)

(assert (=> b!4706923 m!5630187))

(assert (=> b!4706469 d!1498061))

(declare-fun bs!1099819 () Bool)

(declare-fun d!1498063 () Bool)

(assert (= bs!1099819 (and d!1498063 d!1497849)))

(declare-fun lambda!211821 () Int)

(assert (=> bs!1099819 (= lambda!211821 lambda!211701)))

(declare-fun bs!1099821 () Bool)

(assert (= bs!1099821 (and d!1498063 d!1498039)))

(assert (=> bs!1099821 (= lambda!211821 lambda!211813)))

(declare-fun bs!1099822 () Bool)

(assert (= bs!1099822 (and d!1498063 d!1497995)))

(assert (=> bs!1099822 (= lambda!211821 lambda!211798)))

(declare-fun bs!1099823 () Bool)

(assert (= bs!1099823 (and d!1498063 d!1498009)))

(assert (=> bs!1099823 (= lambda!211821 lambda!211800)))

(declare-fun bs!1099824 () Bool)

(assert (= bs!1099824 (and d!1498063 start!477990)))

(assert (=> bs!1099824 (= lambda!211821 lambda!211688)))

(declare-fun bs!1099825 () Bool)

(assert (= bs!1099825 (and d!1498063 d!1497941)))

(assert (=> bs!1099825 (= lambda!211821 lambda!211716)))

(declare-fun bs!1099826 () Bool)

(assert (= bs!1099826 (and d!1498063 d!1497861)))

(assert (=> bs!1099826 (not (= lambda!211821 lambda!211704))))

(declare-fun bs!1099827 () Bool)

(assert (= bs!1099827 (and d!1498063 d!1497969)))

(assert (=> bs!1099827 (= lambda!211821 lambda!211784)))

(declare-fun bs!1099828 () Bool)

(assert (= bs!1099828 (and d!1498063 d!1497871)))

(assert (=> bs!1099828 (= lambda!211821 lambda!211705)))

(declare-fun bs!1099829 () Bool)

(assert (= bs!1099829 (and d!1498063 d!1497983)))

(assert (=> bs!1099829 (= lambda!211821 lambda!211797)))

(declare-fun bs!1099830 () Bool)

(assert (= bs!1099830 (and d!1498063 d!1497923)))

(assert (=> bs!1099830 (= lambda!211821 lambda!211709)))

(declare-fun lt!1871920 () ListMap!5087)

(assert (=> d!1498063 (invariantList!1461 (toList!5724 lt!1871920))))

(declare-fun e!2936077 () ListMap!5087)

(assert (=> d!1498063 (= lt!1871920 e!2936077)))

(declare-fun c!804432 () Bool)

(assert (=> d!1498063 (= c!804432 (is-Cons!52588 (Cons!52588 lt!1871334 lt!1871353)))))

(assert (=> d!1498063 (forall!11436 (Cons!52588 lt!1871334 lt!1871353) lambda!211821)))

(assert (=> d!1498063 (= (extractMap!1943 (Cons!52588 lt!1871334 lt!1871353)) lt!1871920)))

(declare-fun b!4706924 () Bool)

(assert (=> b!4706924 (= e!2936077 (addToMapMapFromBucket!1349 (_2!30326 (h!58885 (Cons!52588 lt!1871334 lt!1871353))) (extractMap!1943 (t!359940 (Cons!52588 lt!1871334 lt!1871353)))))))

(declare-fun b!4706925 () Bool)

(assert (=> b!4706925 (= e!2936077 (ListMap!5088 Nil!52587))))

(assert (= (and d!1498063 c!804432) b!4706924))

(assert (= (and d!1498063 (not c!804432)) b!4706925))

(declare-fun m!5630195 () Bool)

(assert (=> d!1498063 m!5630195))

(declare-fun m!5630197 () Bool)

(assert (=> d!1498063 m!5630197))

(declare-fun m!5630199 () Bool)

(assert (=> b!4706924 m!5630199))

(assert (=> b!4706924 m!5630199))

(declare-fun m!5630201 () Bool)

(assert (=> b!4706924 m!5630201))

(assert (=> b!4706469 d!1498063))

(declare-fun d!1498067 () Bool)

(assert (=> d!1498067 (= (tail!8776 lt!1871344) (t!359940 lt!1871344))))

(assert (=> b!4706469 d!1498067))

(declare-fun bs!1099833 () Bool)

(declare-fun d!1498069 () Bool)

(assert (= bs!1099833 (and d!1498069 d!1497849)))

(declare-fun lambda!211824 () Int)

(assert (=> bs!1099833 (= lambda!211824 lambda!211701)))

(declare-fun bs!1099834 () Bool)

(assert (= bs!1099834 (and d!1498069 d!1498039)))

(assert (=> bs!1099834 (= lambda!211824 lambda!211813)))

(declare-fun bs!1099835 () Bool)

(assert (= bs!1099835 (and d!1498069 d!1497995)))

(assert (=> bs!1099835 (= lambda!211824 lambda!211798)))

(declare-fun bs!1099836 () Bool)

(assert (= bs!1099836 (and d!1498069 start!477990)))

(assert (=> bs!1099836 (= lambda!211824 lambda!211688)))

(declare-fun bs!1099837 () Bool)

(assert (= bs!1099837 (and d!1498069 d!1497941)))

(assert (=> bs!1099837 (= lambda!211824 lambda!211716)))

(declare-fun bs!1099838 () Bool)

(assert (= bs!1099838 (and d!1498069 d!1497861)))

(assert (=> bs!1099838 (not (= lambda!211824 lambda!211704))))

(declare-fun bs!1099839 () Bool)

(assert (= bs!1099839 (and d!1498069 d!1497969)))

(assert (=> bs!1099839 (= lambda!211824 lambda!211784)))

(declare-fun bs!1099840 () Bool)

(assert (= bs!1099840 (and d!1498069 d!1497871)))

(assert (=> bs!1099840 (= lambda!211824 lambda!211705)))

(declare-fun bs!1099841 () Bool)

(assert (= bs!1099841 (and d!1498069 d!1497983)))

(assert (=> bs!1099841 (= lambda!211824 lambda!211797)))

(declare-fun bs!1099842 () Bool)

(assert (= bs!1099842 (and d!1498069 d!1497923)))

(assert (=> bs!1099842 (= lambda!211824 lambda!211709)))

(declare-fun bs!1099843 () Bool)

(assert (= bs!1099843 (and d!1498069 d!1498009)))

(assert (=> bs!1099843 (= lambda!211824 lambda!211800)))

(declare-fun bs!1099844 () Bool)

(assert (= bs!1099844 (and d!1498069 d!1498063)))

(assert (=> bs!1099844 (= lambda!211824 lambda!211821)))

(assert (=> d!1498069 (eq!1076 (extractMap!1943 (Cons!52588 (tuple2!54065 hash!405 lt!1871346) (tail!8776 (toList!5723 lt!1871319)))) (-!721 (extractMap!1943 (Cons!52588 (tuple2!54065 hash!405 (t!359939 oldBucket!34)) (tail!8776 (toList!5723 lt!1871319)))) key!4653))))

(declare-fun lt!1871935 () Unit!127238)

(declare-fun choose!33081 (ListLongMap!4253 (_ BitVec 64) List!52711 List!52711 K!13943 Hashable!6286) Unit!127238)

(assert (=> d!1498069 (= lt!1871935 (choose!33081 lt!1871319 hash!405 (t!359939 oldBucket!34) lt!1871346 key!4653 hashF!1323))))

(assert (=> d!1498069 (forall!11436 (toList!5723 lt!1871319) lambda!211824)))

(assert (=> d!1498069 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHashIsHead!91 lt!1871319 hash!405 (t!359939 oldBucket!34) lt!1871346 key!4653 hashF!1323) lt!1871935)))

(declare-fun bs!1099845 () Bool)

(assert (= bs!1099845 d!1498069))

(declare-fun m!5630217 () Bool)

(assert (=> bs!1099845 m!5630217))

(assert (=> bs!1099845 m!5630217))

(declare-fun m!5630219 () Bool)

(assert (=> bs!1099845 m!5630219))

(declare-fun m!5630221 () Bool)

(assert (=> bs!1099845 m!5630221))

(declare-fun m!5630223 () Bool)

(assert (=> bs!1099845 m!5630223))

(declare-fun m!5630225 () Bool)

(assert (=> bs!1099845 m!5630225))

(declare-fun m!5630227 () Bool)

(assert (=> bs!1099845 m!5630227))

(declare-fun m!5630229 () Bool)

(assert (=> bs!1099845 m!5630229))

(assert (=> bs!1099845 m!5630223))

(assert (=> bs!1099845 m!5630219))

(assert (=> b!4706469 d!1498069))

(declare-fun d!1498079 () Bool)

(assert (=> d!1498079 (= (eq!1076 (extractMap!1943 (Cons!52588 lt!1871334 lt!1871353)) (-!721 (extractMap!1943 (Cons!52588 lt!1871342 lt!1871353)) key!4653)) (= (content!9313 (toList!5724 (extractMap!1943 (Cons!52588 lt!1871334 lt!1871353)))) (content!9313 (toList!5724 (-!721 (extractMap!1943 (Cons!52588 lt!1871342 lt!1871353)) key!4653)))))))

(declare-fun bs!1099846 () Bool)

(assert (= bs!1099846 d!1498079))

(declare-fun m!5630231 () Bool)

(assert (=> bs!1099846 m!5630231))

(declare-fun m!5630233 () Bool)

(assert (=> bs!1099846 m!5630233))

(assert (=> b!4706469 d!1498079))

(declare-fun bs!1099847 () Bool)

(declare-fun d!1498081 () Bool)

(assert (= bs!1099847 (and d!1498081 d!1497849)))

(declare-fun lambda!211825 () Int)

(assert (=> bs!1099847 (= lambda!211825 lambda!211701)))

(declare-fun bs!1099848 () Bool)

(assert (= bs!1099848 (and d!1498081 d!1498039)))

(assert (=> bs!1099848 (= lambda!211825 lambda!211813)))

(declare-fun bs!1099849 () Bool)

(assert (= bs!1099849 (and d!1498081 d!1497995)))

(assert (=> bs!1099849 (= lambda!211825 lambda!211798)))

(declare-fun bs!1099850 () Bool)

(assert (= bs!1099850 (and d!1498081 d!1498069)))

(assert (=> bs!1099850 (= lambda!211825 lambda!211824)))

(declare-fun bs!1099851 () Bool)

(assert (= bs!1099851 (and d!1498081 start!477990)))

(assert (=> bs!1099851 (= lambda!211825 lambda!211688)))

(declare-fun bs!1099852 () Bool)

(assert (= bs!1099852 (and d!1498081 d!1497941)))

(assert (=> bs!1099852 (= lambda!211825 lambda!211716)))

(declare-fun bs!1099853 () Bool)

(assert (= bs!1099853 (and d!1498081 d!1497861)))

(assert (=> bs!1099853 (not (= lambda!211825 lambda!211704))))

(declare-fun bs!1099854 () Bool)

(assert (= bs!1099854 (and d!1498081 d!1497969)))

(assert (=> bs!1099854 (= lambda!211825 lambda!211784)))

(declare-fun bs!1099855 () Bool)

(assert (= bs!1099855 (and d!1498081 d!1497871)))

(assert (=> bs!1099855 (= lambda!211825 lambda!211705)))

(declare-fun bs!1099856 () Bool)

(assert (= bs!1099856 (and d!1498081 d!1497983)))

(assert (=> bs!1099856 (= lambda!211825 lambda!211797)))

(declare-fun bs!1099857 () Bool)

(assert (= bs!1099857 (and d!1498081 d!1497923)))

(assert (=> bs!1099857 (= lambda!211825 lambda!211709)))

(declare-fun bs!1099858 () Bool)

(assert (= bs!1099858 (and d!1498081 d!1498009)))

(assert (=> bs!1099858 (= lambda!211825 lambda!211800)))

(declare-fun bs!1099859 () Bool)

(assert (= bs!1099859 (and d!1498081 d!1498063)))

(assert (=> bs!1099859 (= lambda!211825 lambda!211821)))

(declare-fun lt!1871936 () ListMap!5087)

(assert (=> d!1498081 (invariantList!1461 (toList!5724 lt!1871936))))

(declare-fun e!2936090 () ListMap!5087)

(assert (=> d!1498081 (= lt!1871936 e!2936090)))

(declare-fun c!804436 () Bool)

(assert (=> d!1498081 (= c!804436 (is-Cons!52588 (Cons!52588 lt!1871334 (t!359940 (toList!5723 lm!2023)))))))

(assert (=> d!1498081 (forall!11436 (Cons!52588 lt!1871334 (t!359940 (toList!5723 lm!2023))) lambda!211825)))

(assert (=> d!1498081 (= (extractMap!1943 (Cons!52588 lt!1871334 (t!359940 (toList!5723 lm!2023)))) lt!1871936)))

(declare-fun b!4706941 () Bool)

(assert (=> b!4706941 (= e!2936090 (addToMapMapFromBucket!1349 (_2!30326 (h!58885 (Cons!52588 lt!1871334 (t!359940 (toList!5723 lm!2023))))) (extractMap!1943 (t!359940 (Cons!52588 lt!1871334 (t!359940 (toList!5723 lm!2023)))))))))

(declare-fun b!4706942 () Bool)

(assert (=> b!4706942 (= e!2936090 (ListMap!5088 Nil!52587))))

(assert (= (and d!1498081 c!804436) b!4706941))

(assert (= (and d!1498081 (not c!804436)) b!4706942))

(declare-fun m!5630235 () Bool)

(assert (=> d!1498081 m!5630235))

(declare-fun m!5630237 () Bool)

(assert (=> d!1498081 m!5630237))

(declare-fun m!5630239 () Bool)

(assert (=> b!4706941 m!5630239))

(assert (=> b!4706941 m!5630239))

(declare-fun m!5630241 () Bool)

(assert (=> b!4706941 m!5630241))

(assert (=> b!4706469 d!1498081))

(declare-fun bs!1099860 () Bool)

(declare-fun d!1498083 () Bool)

(assert (= bs!1099860 (and d!1498083 d!1497849)))

(declare-fun lambda!211826 () Int)

(assert (=> bs!1099860 (= lambda!211826 lambda!211701)))

(declare-fun bs!1099861 () Bool)

(assert (= bs!1099861 (and d!1498083 d!1498039)))

(assert (=> bs!1099861 (= lambda!211826 lambda!211813)))

(declare-fun bs!1099862 () Bool)

(assert (= bs!1099862 (and d!1498083 d!1497995)))

(assert (=> bs!1099862 (= lambda!211826 lambda!211798)))

(declare-fun bs!1099863 () Bool)

(assert (= bs!1099863 (and d!1498083 d!1498069)))

(assert (=> bs!1099863 (= lambda!211826 lambda!211824)))

(declare-fun bs!1099864 () Bool)

(assert (= bs!1099864 (and d!1498083 start!477990)))

(assert (=> bs!1099864 (= lambda!211826 lambda!211688)))

(declare-fun bs!1099865 () Bool)

(assert (= bs!1099865 (and d!1498083 d!1498081)))

(assert (=> bs!1099865 (= lambda!211826 lambda!211825)))

(declare-fun bs!1099866 () Bool)

(assert (= bs!1099866 (and d!1498083 d!1497941)))

(assert (=> bs!1099866 (= lambda!211826 lambda!211716)))

(declare-fun bs!1099867 () Bool)

(assert (= bs!1099867 (and d!1498083 d!1497861)))

(assert (=> bs!1099867 (not (= lambda!211826 lambda!211704))))

(declare-fun bs!1099868 () Bool)

(assert (= bs!1099868 (and d!1498083 d!1497969)))

(assert (=> bs!1099868 (= lambda!211826 lambda!211784)))

(declare-fun bs!1099869 () Bool)

(assert (= bs!1099869 (and d!1498083 d!1497871)))

(assert (=> bs!1099869 (= lambda!211826 lambda!211705)))

(declare-fun bs!1099870 () Bool)

(assert (= bs!1099870 (and d!1498083 d!1497983)))

(assert (=> bs!1099870 (= lambda!211826 lambda!211797)))

(declare-fun bs!1099871 () Bool)

(assert (= bs!1099871 (and d!1498083 d!1497923)))

(assert (=> bs!1099871 (= lambda!211826 lambda!211709)))

(declare-fun bs!1099872 () Bool)

(assert (= bs!1099872 (and d!1498083 d!1498009)))

(assert (=> bs!1099872 (= lambda!211826 lambda!211800)))

(declare-fun bs!1099873 () Bool)

(assert (= bs!1099873 (and d!1498083 d!1498063)))

(assert (=> bs!1099873 (= lambda!211826 lambda!211821)))

(declare-fun lt!1871937 () ListMap!5087)

(assert (=> d!1498083 (invariantList!1461 (toList!5724 lt!1871937))))

(declare-fun e!2936091 () ListMap!5087)

(assert (=> d!1498083 (= lt!1871937 e!2936091)))

(declare-fun c!804437 () Bool)

(assert (=> d!1498083 (= c!804437 (is-Cons!52588 (Cons!52588 lt!1871342 lt!1871353)))))

(assert (=> d!1498083 (forall!11436 (Cons!52588 lt!1871342 lt!1871353) lambda!211826)))

(assert (=> d!1498083 (= (extractMap!1943 (Cons!52588 lt!1871342 lt!1871353)) lt!1871937)))

(declare-fun b!4706943 () Bool)

(assert (=> b!4706943 (= e!2936091 (addToMapMapFromBucket!1349 (_2!30326 (h!58885 (Cons!52588 lt!1871342 lt!1871353))) (extractMap!1943 (t!359940 (Cons!52588 lt!1871342 lt!1871353)))))))

(declare-fun b!4706944 () Bool)

(assert (=> b!4706944 (= e!2936091 (ListMap!5088 Nil!52587))))

(assert (= (and d!1498083 c!804437) b!4706943))

(assert (= (and d!1498083 (not c!804437)) b!4706944))

(declare-fun m!5630243 () Bool)

(assert (=> d!1498083 m!5630243))

(declare-fun m!5630245 () Bool)

(assert (=> d!1498083 m!5630245))

(declare-fun m!5630247 () Bool)

(assert (=> b!4706943 m!5630247))

(assert (=> b!4706943 m!5630247))

(declare-fun m!5630249 () Bool)

(assert (=> b!4706943 m!5630249))

(assert (=> b!4706469 d!1498083))

(declare-fun d!1498085 () Bool)

(declare-fun e!2936092 () Bool)

(assert (=> d!1498085 e!2936092))

(declare-fun res!1988396 () Bool)

(assert (=> d!1498085 (=> (not res!1988396) (not e!2936092))))

(declare-fun lt!1871938 () ListMap!5087)

(assert (=> d!1498085 (= res!1988396 (not (contains!15901 lt!1871938 key!4653)))))

(assert (=> d!1498085 (= lt!1871938 (ListMap!5088 (removePresrvNoDuplicatedKeys!382 (toList!5724 (extractMap!1943 (Cons!52588 lt!1871342 lt!1871353))) key!4653)))))

(assert (=> d!1498085 (= (-!721 (extractMap!1943 (Cons!52588 lt!1871342 lt!1871353)) key!4653) lt!1871938)))

(declare-fun b!4706945 () Bool)

(assert (=> b!4706945 (= e!2936092 (= (set.minus (content!9314 (keys!18828 (extractMap!1943 (Cons!52588 lt!1871342 lt!1871353)))) (set.insert key!4653 (as set.empty (Set K!13943)))) (content!9314 (keys!18828 lt!1871938))))))

(assert (= (and d!1498085 res!1988396) b!4706945))

(declare-fun m!5630251 () Bool)

(assert (=> d!1498085 m!5630251))

(declare-fun m!5630253 () Bool)

(assert (=> d!1498085 m!5630253))

(declare-fun m!5630255 () Bool)

(assert (=> b!4706945 m!5630255))

(declare-fun m!5630257 () Bool)

(assert (=> b!4706945 m!5630257))

(assert (=> b!4706945 m!5629415))

(assert (=> b!4706945 m!5629119))

(assert (=> b!4706945 m!5630255))

(declare-fun m!5630259 () Bool)

(assert (=> b!4706945 m!5630259))

(assert (=> b!4706945 m!5630259))

(declare-fun m!5630261 () Bool)

(assert (=> b!4706945 m!5630261))

(assert (=> b!4706469 d!1498085))

(declare-fun d!1498087 () Bool)

(assert (=> d!1498087 (= (eq!1076 lt!1871317 lt!1871332) (= (content!9313 (toList!5724 lt!1871317)) (content!9313 (toList!5724 lt!1871332))))))

(declare-fun bs!1099874 () Bool)

(assert (= bs!1099874 d!1498087))

(declare-fun m!5630263 () Bool)

(assert (=> bs!1099874 m!5630263))

(declare-fun m!5630265 () Bool)

(assert (=> bs!1099874 m!5630265))

(assert (=> b!4706469 d!1498087))

(declare-fun tp!1347016 () Bool)

(declare-fun e!2936095 () Bool)

(declare-fun b!4706950 () Bool)

(assert (=> b!4706950 (= e!2936095 (and tp_is_empty!30961 tp_is_empty!30963 tp!1347016))))

(assert (=> b!4706482 (= tp!1347004 e!2936095)))

(assert (= (and b!4706482 (is-Cons!52587 (t!359939 newBucket!218))) b!4706950))

(declare-fun b!4706955 () Bool)

(declare-fun e!2936098 () Bool)

(declare-fun tp!1347021 () Bool)

(declare-fun tp!1347022 () Bool)

(assert (=> b!4706955 (= e!2936098 (and tp!1347021 tp!1347022))))

(assert (=> b!4706466 (= tp!1347003 e!2936098)))

(assert (= (and b!4706466 (is-Cons!52588 (toList!5723 lm!2023))) b!4706955))

(declare-fun e!2936099 () Bool)

(declare-fun b!4706956 () Bool)

(declare-fun tp!1347023 () Bool)

(assert (=> b!4706956 (= e!2936099 (and tp_is_empty!30961 tp_is_empty!30963 tp!1347023))))

(assert (=> b!4706473 (= tp!1347002 e!2936099)))

(assert (= (and b!4706473 (is-Cons!52587 (t!359939 oldBucket!34))) b!4706956))

(declare-fun b_lambda!177573 () Bool)

(assert (= b_lambda!177567 (or start!477990 b_lambda!177573)))

(declare-fun bs!1099875 () Bool)

(declare-fun d!1498089 () Bool)

(assert (= bs!1099875 (and d!1498089 start!477990)))

(assert (=> bs!1099875 (= (dynLambda!21764 lambda!211688 (h!58885 (toList!5723 lm!2023))) (noDuplicateKeys!1917 (_2!30326 (h!58885 (toList!5723 lm!2023)))))))

(assert (=> bs!1099875 m!5629765))

(assert (=> b!4706658 d!1498089))

(declare-fun b_lambda!177575 () Bool)

(assert (= b_lambda!177565 (or start!477990 b_lambda!177575)))

(declare-fun bs!1099876 () Bool)

(declare-fun d!1498091 () Bool)

(assert (= bs!1099876 (and d!1498091 start!477990)))

(assert (=> bs!1099876 (= (dynLambda!21764 lambda!211688 (h!58885 (Cons!52588 lt!1871318 (tail!8776 (toList!5723 lm!2023))))) (noDuplicateKeys!1917 (_2!30326 (h!58885 (Cons!52588 lt!1871318 (tail!8776 (toList!5723 lm!2023)))))))))

(declare-fun m!5630267 () Bool)

(assert (=> bs!1099876 m!5630267))

(assert (=> b!4706638 d!1498091))

(declare-fun b_lambda!177577 () Bool)

(assert (= b_lambda!177569 (or start!477990 b_lambda!177577)))

(declare-fun bs!1099877 () Bool)

(declare-fun d!1498093 () Bool)

(assert (= bs!1099877 (and d!1498093 start!477990)))

(assert (=> bs!1099877 (= (dynLambda!21764 lambda!211688 lt!1871327) (noDuplicateKeys!1917 (_2!30326 lt!1871327)))))

(declare-fun m!5630269 () Bool)

(assert (=> bs!1099877 m!5630269))

(assert (=> d!1497925 d!1498093))

(push 1)

(assert (not b!4706920))

(assert (not b!4706655))

(assert (not d!1497863))

(assert (not d!1497857))

(assert (not b!4706582))

(assert (not d!1497995))

(assert (not b!4706945))

(assert (not d!1497845))

(assert (not b!4706912))

(assert (not bm!329082))

(assert (not b!4706831))

(assert (not b!4706628))

(assert (not b!4706586))

(assert (not d!1498003))

(assert (not b!4706828))

(assert (not d!1497849))

(assert (not d!1497877))

(assert (not b!4706624))

(assert (not bm!329088))

(assert (not d!1498055))

(assert (not d!1497851))

(assert (not b!4706836))

(assert (not d!1497933))

(assert (not b!4706943))

(assert (not d!1497939))

(assert (not bm!329087))

(assert (not b!4706661))

(assert (not b!4706700))

(assert (not d!1498081))

(assert (not d!1497983))

(assert (not b!4706597))

(assert (not b!4706657))

(assert (not b!4706922))

(assert (not d!1497885))

(assert (not d!1498015))

(assert (not d!1497899))

(assert (not b!4706709))

(assert (not b!4706941))

(assert (not bm!329072))

(assert (not b!4706603))

(assert (not d!1498083))

(assert (not b!4706685))

(assert tp_is_empty!30963)

(assert (not d!1497897))

(assert (not b!4706631))

(assert (not d!1497935))

(assert (not b!4706915))

(assert (not bm!329080))

(assert (not b!4706837))

(assert (not bm!329071))

(assert tp_is_empty!30961)

(assert (not b!4706659))

(assert (not b!4706881))

(assert (not d!1497889))

(assert (not b!4706667))

(assert (not b!4706623))

(assert (not b!4706803))

(assert (not b!4706782))

(assert (not d!1497923))

(assert (not b!4706833))

(assert (not b!4706867))

(assert (not b!4706776))

(assert (not b!4706868))

(assert (not d!1497915))

(assert (not bm!329075))

(assert (not b!4706873))

(assert (not b!4706913))

(assert (not d!1497941))

(assert (not b!4706649))

(assert (not b!4706691))

(assert (not d!1498013))

(assert (not d!1498029))

(assert (not b!4706665))

(assert (not d!1497937))

(assert (not bm!329055))

(assert (not b!4706923))

(assert (not d!1498045))

(assert (not d!1498037))

(assert (not bm!329074))

(assert (not b!4706625))

(assert (not d!1497913))

(assert (not b!4706880))

(assert (not b!4706832))

(assert (not b!4706772))

(assert (not b!4706663))

(assert (not d!1497921))

(assert (not b!4706789))

(assert (not b!4706877))

(assert (not b!4706955))

(assert (not b!4706630))

(assert (not d!1497865))

(assert (not b!4706694))

(assert (not b!4706727))

(assert (not b!4706786))

(assert (not b!4706660))

(assert (not d!1497979))

(assert (not d!1497925))

(assert (not d!1497969))

(assert (not b!4706626))

(assert (not b_lambda!177573))

(assert (not b!4706717))

(assert (not b!4706924))

(assert (not d!1497847))

(assert (not d!1498087))

(assert (not bm!329078))

(assert (not d!1497887))

(assert (not bm!329089))

(assert (not bm!329081))

(assert (not b!4706802))

(assert (not bs!1099877))

(assert (not d!1498079))

(assert (not b!4706914))

(assert (not b!4706664))

(assert (not d!1497973))

(assert (not b!4706921))

(assert (not d!1498063))

(assert (not d!1498031))

(assert (not b!4706790))

(assert (not b!4706800))

(assert (not d!1497871))

(assert (not bs!1099876))

(assert (not d!1497905))

(assert (not b!4706711))

(assert (not b!4706662))

(assert (not b!4706639))

(assert (not d!1497867))

(assert (not d!1498039))

(assert (not b!4706729))

(assert (not d!1497917))

(assert (not bm!329076))

(assert (not d!1498009))

(assert (not b!4706730))

(assert (not b_lambda!177575))

(assert (not d!1497859))

(assert (not d!1497981))

(assert (not b!4706796))

(assert (not d!1497855))

(assert (not b!4706686))

(assert (not d!1498085))

(assert (not b!4706919))

(assert (not d!1498061))

(assert (not b!4706950))

(assert (not d!1497895))

(assert (not d!1498069))

(assert (not b!4706656))

(assert (not d!1497909))

(assert (not b_lambda!177577))

(assert (not b!4706917))

(assert (not d!1498053))

(assert (not d!1497919))

(assert (not d!1497943))

(assert (not d!1497883))

(assert (not b!4706654))

(assert (not bs!1099875))

(assert (not bm!329086))

(assert (not b!4706775))

(assert (not d!1497901))

(assert (not b!4706688))

(assert (not bm!329073))

(assert (not b!4706690))

(assert (not b!4706648))

(assert (not d!1497861))

(assert (not b!4706642))

(assert (not bm!329079))

(assert (not d!1497853))

(assert (not d!1498051))

(assert (not d!1497927))

(assert (not b!4706666))

(assert (not bm!329077))

(assert (not b!4706956))

(assert (not b!4706728))

(assert (not b!4706702))

(assert (not d!1497893))

(assert (not d!1498011))

(assert (not d!1497911))

(assert (not d!1497977))

(assert (not b!4706632))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

