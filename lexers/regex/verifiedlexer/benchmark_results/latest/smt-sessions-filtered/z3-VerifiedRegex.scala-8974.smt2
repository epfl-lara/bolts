; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!483136 () Bool)

(assert start!483136)

(declare-fun b!4736321 () Bool)

(declare-fun res!2005925 () Bool)

(declare-fun e!2954267 () Bool)

(assert (=> b!4736321 (=> res!2005925 e!2954267)))

(declare-datatypes ((K!14275 0))(
  ( (K!14276 (val!19691 Int)) )
))
(declare-datatypes ((V!14521 0))(
  ( (V!14522 (val!19692 Int)) )
))
(declare-datatypes ((tuple2!54594 0))(
  ( (tuple2!54595 (_1!30591 K!14275) (_2!30591 V!14521)) )
))
(declare-datatypes ((List!53055 0))(
  ( (Nil!52931) (Cons!52931 (h!59308 tuple2!54594) (t!360343 List!53055)) )
))
(declare-datatypes ((ListMap!5353 0))(
  ( (ListMap!5354 (toList!5989 List!53055)) )
))
(declare-fun lt!1899485 () ListMap!5353)

(declare-fun lt!1899478 () ListMap!5353)

(declare-fun lt!1899470 () tuple2!54594)

(declare-fun eq!1147 (ListMap!5353 ListMap!5353) Bool)

(declare-fun +!2298 (ListMap!5353 tuple2!54594) ListMap!5353)

(assert (=> b!4736321 (= res!2005925 (not (eq!1147 lt!1899478 (+!2298 lt!1899485 lt!1899470))))))

(declare-fun b!4736322 () Bool)

(declare-fun res!2005927 () Bool)

(assert (=> b!4736322 (=> res!2005927 e!2954267)))

(declare-fun oldBucket!34 () List!53055)

(declare-fun noDuplicateKeys!2050 (List!53055) Bool)

(assert (=> b!4736322 (= res!2005927 (not (noDuplicateKeys!2050 (t!360343 oldBucket!34))))))

(declare-fun b!4736323 () Bool)

(declare-fun e!2954270 () Bool)

(declare-fun tp!1349102 () Bool)

(assert (=> b!4736323 (= e!2954270 tp!1349102)))

(declare-fun res!2005931 () Bool)

(declare-fun e!2954262 () Bool)

(assert (=> start!483136 (=> (not res!2005931) (not e!2954262))))

(declare-datatypes ((tuple2!54596 0))(
  ( (tuple2!54597 (_1!30592 (_ BitVec 64)) (_2!30592 List!53055)) )
))
(declare-datatypes ((List!53056 0))(
  ( (Nil!52932) (Cons!52932 (h!59309 tuple2!54596) (t!360344 List!53056)) )
))
(declare-datatypes ((ListLongMap!4519 0))(
  ( (ListLongMap!4520 (toList!5990 List!53056)) )
))
(declare-fun lm!2023 () ListLongMap!4519)

(declare-fun lambda!218372 () Int)

(declare-fun forall!11665 (List!53056 Int) Bool)

(assert (=> start!483136 (= res!2005931 (forall!11665 (toList!5990 lm!2023) lambda!218372))))

(assert (=> start!483136 e!2954262))

(declare-fun inv!68149 (ListLongMap!4519) Bool)

(assert (=> start!483136 (and (inv!68149 lm!2023) e!2954270)))

(declare-fun tp_is_empty!31493 () Bool)

(assert (=> start!483136 tp_is_empty!31493))

(declare-fun e!2954268 () Bool)

(assert (=> start!483136 e!2954268))

(assert (=> start!483136 true))

(declare-fun e!2954264 () Bool)

(assert (=> start!483136 e!2954264))

(declare-fun b!4736324 () Bool)

(declare-fun res!2005922 () Bool)

(assert (=> b!4736324 (=> (not res!2005922) (not e!2954262))))

(declare-fun newBucket!218 () List!53055)

(assert (=> b!4736324 (= res!2005922 (noDuplicateKeys!2050 newBucket!218))))

(declare-fun b!4736325 () Bool)

(declare-fun res!2005934 () Bool)

(assert (=> b!4736325 (=> res!2005934 e!2954267)))

(assert (=> b!4736325 (= res!2005934 (not (= (h!59308 oldBucket!34) lt!1899470)))))

(declare-fun b!4736326 () Bool)

(declare-fun e!2954266 () Bool)

(declare-fun e!2954265 () Bool)

(assert (=> b!4736326 (= e!2954266 e!2954265)))

(declare-fun res!2005921 () Bool)

(assert (=> b!4736326 (=> (not res!2005921) (not e!2954265))))

(declare-fun lt!1899471 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4736326 (= res!2005921 (= lt!1899471 hash!405))))

(declare-datatypes ((Hashable!6419 0))(
  ( (HashableExt!6418 (__x!32122 Int)) )
))
(declare-fun hashF!1323 () Hashable!6419)

(declare-fun key!4653 () K!14275)

(declare-fun hash!4448 (Hashable!6419 K!14275) (_ BitVec 64))

(assert (=> b!4736326 (= lt!1899471 (hash!4448 hashF!1323 key!4653))))

(declare-fun b!4736327 () Bool)

(declare-fun tp!1349103 () Bool)

(declare-fun tp_is_empty!31495 () Bool)

(assert (=> b!4736327 (= e!2954264 (and tp_is_empty!31493 tp_is_empty!31495 tp!1349103))))

(declare-fun b!4736328 () Bool)

(declare-fun e!2954263 () Bool)

(assert (=> b!4736328 (= e!2954263 e!2954267)))

(declare-fun res!2005938 () Bool)

(assert (=> b!4736328 (=> res!2005938 e!2954267)))

(assert (=> b!4736328 (= res!2005938 (not (eq!1147 lt!1899478 (+!2298 lt!1899485 (h!59308 oldBucket!34)))))))

(declare-fun lt!1899483 () List!53055)

(declare-fun extractMap!2076 (List!53056) ListMap!5353)

(assert (=> b!4736328 (= lt!1899485 (extractMap!2076 (Cons!52932 (tuple2!54597 hash!405 lt!1899483) (t!360344 (toList!5990 lm!2023)))))))

(declare-fun lt!1899466 () tuple2!54596)

(assert (=> b!4736328 (= lt!1899478 (extractMap!2076 (Cons!52932 lt!1899466 (t!360344 (toList!5990 lm!2023)))))))

(declare-fun lt!1899474 () List!53055)

(declare-fun lt!1899475 () ListMap!5353)

(declare-fun addToMapMapFromBucket!1480 (List!53055 ListMap!5353) ListMap!5353)

(assert (=> b!4736328 (eq!1147 (addToMapMapFromBucket!1480 (Cons!52931 lt!1899470 lt!1899474) lt!1899475) (+!2298 (addToMapMapFromBucket!1480 lt!1899474 lt!1899475) lt!1899470))))

(declare-datatypes ((Unit!132427 0))(
  ( (Unit!132428) )
))
(declare-fun lt!1899469 () Unit!132427)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!396 (tuple2!54594 List!53055 ListMap!5353) Unit!132427)

(assert (=> b!4736328 (= lt!1899469 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!396 lt!1899470 lt!1899474 lt!1899475))))

(declare-fun head!10303 (List!53055) tuple2!54594)

(assert (=> b!4736328 (= lt!1899470 (head!10303 newBucket!218))))

(declare-fun lt!1899479 () tuple2!54594)

(assert (=> b!4736328 (eq!1147 (addToMapMapFromBucket!1480 (Cons!52931 lt!1899479 lt!1899483) lt!1899475) (+!2298 (addToMapMapFromBucket!1480 lt!1899483 lt!1899475) lt!1899479))))

(declare-fun lt!1899477 () Unit!132427)

(assert (=> b!4736328 (= lt!1899477 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!396 lt!1899479 lt!1899483 lt!1899475))))

(assert (=> b!4736328 (= lt!1899479 (head!10303 oldBucket!34))))

(declare-fun lt!1899473 () List!53056)

(declare-fun contains!16326 (ListMap!5353 K!14275) Bool)

(assert (=> b!4736328 (contains!16326 (extractMap!2076 lt!1899473) key!4653)))

(declare-fun lt!1899487 () Unit!132427)

(declare-fun lemmaListContainsThenExtractedMapContains!558 (ListLongMap!4519 K!14275 Hashable!6419) Unit!132427)

(assert (=> b!4736328 (= lt!1899487 (lemmaListContainsThenExtractedMapContains!558 (ListLongMap!4520 lt!1899473) key!4653 hashF!1323))))

(assert (=> b!4736328 (= lt!1899473 (Cons!52932 (tuple2!54597 hash!405 (t!360343 oldBucket!34)) (t!360344 (toList!5990 lm!2023))))))

(declare-fun b!4736329 () Bool)

(declare-fun res!2005926 () Bool)

(assert (=> b!4736329 (=> (not res!2005926) (not e!2954265))))

(declare-fun allKeysSameHash!1876 (List!53055 (_ BitVec 64) Hashable!6419) Bool)

(assert (=> b!4736329 (= res!2005926 (allKeysSameHash!1876 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4736330 () Bool)

(declare-fun e!2954269 () Bool)

(declare-fun e!2954261 () Bool)

(assert (=> b!4736330 (= e!2954269 e!2954261)))

(declare-fun res!2005939 () Bool)

(assert (=> b!4736330 (=> res!2005939 e!2954261)))

(declare-fun containsKey!3455 (List!53055 K!14275) Bool)

(assert (=> b!4736330 (= res!2005939 (not (containsKey!3455 (t!360343 oldBucket!34) key!4653)))))

(assert (=> b!4736330 (containsKey!3455 oldBucket!34 key!4653)))

(declare-fun lt!1899481 () Unit!132427)

(declare-fun lemmaGetPairDefinedThenContainsKey!334 (List!53055 K!14275 Hashable!6419) Unit!132427)

(assert (=> b!4736330 (= lt!1899481 (lemmaGetPairDefinedThenContainsKey!334 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1899486 () List!53055)

(declare-datatypes ((Option!12441 0))(
  ( (None!12440) (Some!12440 (v!47089 tuple2!54594)) )
))
(declare-fun isDefined!9695 (Option!12441) Bool)

(declare-fun getPair!590 (List!53055 K!14275) Option!12441)

(assert (=> b!4736330 (isDefined!9695 (getPair!590 lt!1899486 key!4653))))

(declare-fun lt!1899476 () tuple2!54596)

(declare-fun lt!1899480 () Unit!132427)

(declare-fun forallContained!3705 (List!53056 Int tuple2!54596) Unit!132427)

(assert (=> b!4736330 (= lt!1899480 (forallContained!3705 (toList!5990 lm!2023) lambda!218372 lt!1899476))))

(declare-fun contains!16327 (List!53056 tuple2!54596) Bool)

(assert (=> b!4736330 (contains!16327 (toList!5990 lm!2023) lt!1899476)))

(assert (=> b!4736330 (= lt!1899476 (tuple2!54597 lt!1899471 lt!1899486))))

(declare-fun lt!1899467 () Unit!132427)

(declare-fun lemmaGetValueImpliesTupleContained!395 (ListLongMap!4519 (_ BitVec 64) List!53055) Unit!132427)

(assert (=> b!4736330 (= lt!1899467 (lemmaGetValueImpliesTupleContained!395 lm!2023 lt!1899471 lt!1899486))))

(declare-fun apply!12475 (ListLongMap!4519 (_ BitVec 64)) List!53055)

(assert (=> b!4736330 (= lt!1899486 (apply!12475 lm!2023 lt!1899471))))

(declare-fun contains!16328 (ListLongMap!4519 (_ BitVec 64)) Bool)

(assert (=> b!4736330 (contains!16328 lm!2023 lt!1899471)))

(declare-fun lt!1899468 () Unit!132427)

(declare-fun lemmaInGenMapThenLongMapContainsHash!796 (ListLongMap!4519 K!14275 Hashable!6419) Unit!132427)

(assert (=> b!4736330 (= lt!1899468 (lemmaInGenMapThenLongMapContainsHash!796 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1899484 () Unit!132427)

(declare-fun lemmaInGenMapThenGetPairDefined!386 (ListLongMap!4519 K!14275 Hashable!6419) Unit!132427)

(assert (=> b!4736330 (= lt!1899484 (lemmaInGenMapThenGetPairDefined!386 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4736331 () Bool)

(declare-fun res!2005935 () Bool)

(assert (=> b!4736331 (=> res!2005935 e!2954267)))

(assert (=> b!4736331 (= res!2005935 (not (forall!11665 lt!1899473 lambda!218372)))))

(declare-fun b!4736332 () Bool)

(assert (=> b!4736332 (= e!2954262 e!2954266)))

(declare-fun res!2005929 () Bool)

(assert (=> b!4736332 (=> (not res!2005929) (not e!2954266))))

(declare-fun lt!1899482 () ListMap!5353)

(assert (=> b!4736332 (= res!2005929 (contains!16326 lt!1899482 key!4653))))

(assert (=> b!4736332 (= lt!1899482 (extractMap!2076 (toList!5990 lm!2023)))))

(declare-fun b!4736333 () Bool)

(declare-fun res!2005932 () Bool)

(assert (=> b!4736333 (=> (not res!2005932) (not e!2954262))))

(assert (=> b!4736333 (= res!2005932 (allKeysSameHash!1876 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4736334 () Bool)

(declare-fun res!2005937 () Bool)

(assert (=> b!4736334 (=> (not res!2005937) (not e!2954265))))

(declare-fun allKeysSameHashInMap!1964 (ListLongMap!4519 Hashable!6419) Bool)

(assert (=> b!4736334 (= res!2005937 (allKeysSameHashInMap!1964 lm!2023 hashF!1323))))

(declare-fun b!4736335 () Bool)

(assert (=> b!4736335 (= e!2954261 e!2954263)))

(declare-fun res!2005933 () Bool)

(assert (=> b!4736335 (=> res!2005933 e!2954263)))

(declare-fun removePairForKey!1645 (List!53055 K!14275) List!53055)

(assert (=> b!4736335 (= res!2005933 (not (= (removePairForKey!1645 lt!1899483 key!4653) lt!1899474)))))

(declare-fun tail!9094 (List!53055) List!53055)

(assert (=> b!4736335 (= lt!1899474 (tail!9094 newBucket!218))))

(assert (=> b!4736335 (= lt!1899483 (tail!9094 oldBucket!34))))

(declare-fun b!4736336 () Bool)

(declare-fun e!2954260 () Bool)

(assert (=> b!4736336 (= e!2954260 (not e!2954269))))

(declare-fun res!2005928 () Bool)

(assert (=> b!4736336 (=> res!2005928 e!2954269)))

(get-info :version)

(assert (=> b!4736336 (= res!2005928 (or (and ((_ is Cons!52931) oldBucket!34) (= (_1!30591 (h!59308 oldBucket!34)) key!4653)) (not ((_ is Cons!52931) oldBucket!34)) (= (_1!30591 (h!59308 oldBucket!34)) key!4653)))))

(assert (=> b!4736336 (= lt!1899482 (addToMapMapFromBucket!1480 (_2!30592 (h!59309 (toList!5990 lm!2023))) lt!1899475))))

(assert (=> b!4736336 (= lt!1899475 (extractMap!2076 (t!360344 (toList!5990 lm!2023))))))

(declare-fun tail!9095 (ListLongMap!4519) ListLongMap!4519)

(assert (=> b!4736336 (= (t!360344 (toList!5990 lm!2023)) (toList!5990 (tail!9095 lm!2023)))))

(declare-fun b!4736337 () Bool)

(assert (=> b!4736337 (= e!2954267 true)))

(declare-fun lt!1899472 () Bool)

(assert (=> b!4736337 (= lt!1899472 (noDuplicateKeys!2050 lt!1899474))))

(declare-fun b!4736338 () Bool)

(declare-fun res!2005924 () Bool)

(assert (=> b!4736338 (=> (not res!2005924) (not e!2954262))))

(assert (=> b!4736338 (= res!2005924 (noDuplicateKeys!2050 oldBucket!34))))

(declare-fun tp!1349101 () Bool)

(declare-fun b!4736339 () Bool)

(assert (=> b!4736339 (= e!2954268 (and tp_is_empty!31493 tp_is_empty!31495 tp!1349101))))

(declare-fun b!4736340 () Bool)

(declare-fun res!2005936 () Bool)

(assert (=> b!4736340 (=> (not res!2005936) (not e!2954260))))

(assert (=> b!4736340 (= res!2005936 ((_ is Cons!52932) (toList!5990 lm!2023)))))

(declare-fun b!4736341 () Bool)

(assert (=> b!4736341 (= e!2954265 e!2954260)))

(declare-fun res!2005923 () Bool)

(assert (=> b!4736341 (=> (not res!2005923) (not e!2954260))))

(declare-fun head!10304 (List!53056) tuple2!54596)

(assert (=> b!4736341 (= res!2005923 (= (head!10304 (toList!5990 lm!2023)) lt!1899466))))

(assert (=> b!4736341 (= lt!1899466 (tuple2!54597 hash!405 oldBucket!34))))

(declare-fun b!4736342 () Bool)

(declare-fun res!2005930 () Bool)

(assert (=> b!4736342 (=> res!2005930 e!2954263)))

(assert (=> b!4736342 (= res!2005930 (not (= (removePairForKey!1645 (t!360343 oldBucket!34) key!4653) lt!1899474)))))

(declare-fun b!4736343 () Bool)

(declare-fun res!2005920 () Bool)

(assert (=> b!4736343 (=> (not res!2005920) (not e!2954262))))

(assert (=> b!4736343 (= res!2005920 (= (removePairForKey!1645 oldBucket!34 key!4653) newBucket!218))))

(assert (= (and start!483136 res!2005931) b!4736338))

(assert (= (and b!4736338 res!2005924) b!4736324))

(assert (= (and b!4736324 res!2005922) b!4736343))

(assert (= (and b!4736343 res!2005920) b!4736333))

(assert (= (and b!4736333 res!2005932) b!4736332))

(assert (= (and b!4736332 res!2005929) b!4736326))

(assert (= (and b!4736326 res!2005921) b!4736329))

(assert (= (and b!4736329 res!2005926) b!4736334))

(assert (= (and b!4736334 res!2005937) b!4736341))

(assert (= (and b!4736341 res!2005923) b!4736340))

(assert (= (and b!4736340 res!2005936) b!4736336))

(assert (= (and b!4736336 (not res!2005928)) b!4736330))

(assert (= (and b!4736330 (not res!2005939)) b!4736335))

(assert (= (and b!4736335 (not res!2005933)) b!4736342))

(assert (= (and b!4736342 (not res!2005930)) b!4736328))

(assert (= (and b!4736328 (not res!2005938)) b!4736325))

(assert (= (and b!4736325 (not res!2005934)) b!4736321))

(assert (= (and b!4736321 (not res!2005925)) b!4736331))

(assert (= (and b!4736331 (not res!2005935)) b!4736322))

(assert (= (and b!4736322 (not res!2005927)) b!4736337))

(assert (= start!483136 b!4736323))

(assert (= (and start!483136 ((_ is Cons!52931) oldBucket!34)) b!4736339))

(assert (= (and start!483136 ((_ is Cons!52931) newBucket!218)) b!4736327))

(declare-fun m!5683007 () Bool)

(assert (=> b!4736342 m!5683007))

(declare-fun m!5683009 () Bool)

(assert (=> b!4736324 m!5683009))

(declare-fun m!5683011 () Bool)

(assert (=> b!4736333 m!5683011))

(declare-fun m!5683013 () Bool)

(assert (=> b!4736336 m!5683013))

(declare-fun m!5683015 () Bool)

(assert (=> b!4736336 m!5683015))

(declare-fun m!5683017 () Bool)

(assert (=> b!4736336 m!5683017))

(declare-fun m!5683019 () Bool)

(assert (=> start!483136 m!5683019))

(declare-fun m!5683021 () Bool)

(assert (=> start!483136 m!5683021))

(declare-fun m!5683023 () Bool)

(assert (=> b!4736321 m!5683023))

(assert (=> b!4736321 m!5683023))

(declare-fun m!5683025 () Bool)

(assert (=> b!4736321 m!5683025))

(declare-fun m!5683027 () Bool)

(assert (=> b!4736335 m!5683027))

(declare-fun m!5683029 () Bool)

(assert (=> b!4736335 m!5683029))

(declare-fun m!5683031 () Bool)

(assert (=> b!4736335 m!5683031))

(declare-fun m!5683033 () Bool)

(assert (=> b!4736331 m!5683033))

(declare-fun m!5683035 () Bool)

(assert (=> b!4736322 m!5683035))

(declare-fun m!5683037 () Bool)

(assert (=> b!4736330 m!5683037))

(declare-fun m!5683039 () Bool)

(assert (=> b!4736330 m!5683039))

(declare-fun m!5683041 () Bool)

(assert (=> b!4736330 m!5683041))

(declare-fun m!5683043 () Bool)

(assert (=> b!4736330 m!5683043))

(declare-fun m!5683045 () Bool)

(assert (=> b!4736330 m!5683045))

(declare-fun m!5683047 () Bool)

(assert (=> b!4736330 m!5683047))

(declare-fun m!5683049 () Bool)

(assert (=> b!4736330 m!5683049))

(assert (=> b!4736330 m!5683043))

(declare-fun m!5683051 () Bool)

(assert (=> b!4736330 m!5683051))

(declare-fun m!5683053 () Bool)

(assert (=> b!4736330 m!5683053))

(declare-fun m!5683055 () Bool)

(assert (=> b!4736330 m!5683055))

(declare-fun m!5683057 () Bool)

(assert (=> b!4736330 m!5683057))

(declare-fun m!5683059 () Bool)

(assert (=> b!4736330 m!5683059))

(declare-fun m!5683061 () Bool)

(assert (=> b!4736334 m!5683061))

(declare-fun m!5683063 () Bool)

(assert (=> b!4736332 m!5683063))

(declare-fun m!5683065 () Bool)

(assert (=> b!4736332 m!5683065))

(declare-fun m!5683067 () Bool)

(assert (=> b!4736337 m!5683067))

(declare-fun m!5683069 () Bool)

(assert (=> b!4736326 m!5683069))

(declare-fun m!5683071 () Bool)

(assert (=> b!4736341 m!5683071))

(declare-fun m!5683073 () Bool)

(assert (=> b!4736343 m!5683073))

(declare-fun m!5683075 () Bool)

(assert (=> b!4736328 m!5683075))

(declare-fun m!5683077 () Bool)

(assert (=> b!4736328 m!5683077))

(declare-fun m!5683079 () Bool)

(assert (=> b!4736328 m!5683079))

(declare-fun m!5683081 () Bool)

(assert (=> b!4736328 m!5683081))

(declare-fun m!5683083 () Bool)

(assert (=> b!4736328 m!5683083))

(declare-fun m!5683085 () Bool)

(assert (=> b!4736328 m!5683085))

(assert (=> b!4736328 m!5683077))

(declare-fun m!5683087 () Bool)

(assert (=> b!4736328 m!5683087))

(assert (=> b!4736328 m!5683079))

(declare-fun m!5683089 () Bool)

(assert (=> b!4736328 m!5683089))

(declare-fun m!5683091 () Bool)

(assert (=> b!4736328 m!5683091))

(declare-fun m!5683093 () Bool)

(assert (=> b!4736328 m!5683093))

(assert (=> b!4736328 m!5683075))

(declare-fun m!5683095 () Bool)

(assert (=> b!4736328 m!5683095))

(declare-fun m!5683097 () Bool)

(assert (=> b!4736328 m!5683097))

(declare-fun m!5683099 () Bool)

(assert (=> b!4736328 m!5683099))

(declare-fun m!5683101 () Bool)

(assert (=> b!4736328 m!5683101))

(assert (=> b!4736328 m!5683091))

(declare-fun m!5683103 () Bool)

(assert (=> b!4736328 m!5683103))

(assert (=> b!4736328 m!5683087))

(assert (=> b!4736328 m!5683083))

(assert (=> b!4736328 m!5683103))

(declare-fun m!5683105 () Bool)

(assert (=> b!4736328 m!5683105))

(declare-fun m!5683107 () Bool)

(assert (=> b!4736328 m!5683107))

(declare-fun m!5683109 () Bool)

(assert (=> b!4736328 m!5683109))

(assert (=> b!4736328 m!5683109))

(declare-fun m!5683111 () Bool)

(assert (=> b!4736328 m!5683111))

(declare-fun m!5683113 () Bool)

(assert (=> b!4736329 m!5683113))

(declare-fun m!5683115 () Bool)

(assert (=> b!4736338 m!5683115))

(check-sat (not b!4736321) tp_is_empty!31493 (not b!4736324) (not start!483136) (not b!4736333) (not b!4736335) (not b!4736341) (not b!4736326) (not b!4736323) (not b!4736339) (not b!4736336) (not b!4736343) (not b!4736322) (not b!4736328) (not b!4736331) (not b!4736327) (not b!4736329) (not b!4736337) (not b!4736338) (not b!4736334) tp_is_empty!31495 (not b!4736332) (not b!4736330) (not b!4736342))
(check-sat)
