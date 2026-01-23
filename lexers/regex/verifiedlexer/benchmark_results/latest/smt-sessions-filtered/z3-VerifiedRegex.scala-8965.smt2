; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!481760 () Bool)

(assert start!481760)

(declare-fun b!4728704 () Bool)

(declare-fun e!2949314 () Bool)

(declare-fun e!2949307 () Bool)

(assert (=> b!4728704 (= e!2949314 e!2949307)))

(declare-fun res!2001599 () Bool)

(assert (=> b!4728704 (=> res!2001599 e!2949307)))

(declare-datatypes ((K!14230 0))(
  ( (K!14231 (val!19655 Int)) )
))
(declare-datatypes ((V!14476 0))(
  ( (V!14477 (val!19656 Int)) )
))
(declare-datatypes ((tuple2!54522 0))(
  ( (tuple2!54523 (_1!30555 K!14230) (_2!30555 V!14476)) )
))
(declare-datatypes ((List!53002 0))(
  ( (Nil!52878) (Cons!52878 (h!59237 tuple2!54522) (t!360278 List!53002)) )
))
(declare-fun oldBucket!34 () List!53002)

(declare-fun key!4653 () K!14230)

(declare-fun containsKey!3402 (List!53002 K!14230) Bool)

(assert (=> b!4728704 (= res!2001599 (not (containsKey!3402 (t!360278 oldBucket!34) key!4653)))))

(assert (=> b!4728704 (containsKey!3402 oldBucket!34 key!4653)))

(declare-datatypes ((Hashable!6401 0))(
  ( (HashableExt!6400 (__x!32104 Int)) )
))
(declare-fun hashF!1323 () Hashable!6401)

(declare-datatypes ((Unit!131227 0))(
  ( (Unit!131228) )
))
(declare-fun lt!1892765 () Unit!131227)

(declare-fun lemmaGetPairDefinedThenContainsKey!316 (List!53002 K!14230 Hashable!6401) Unit!131227)

(assert (=> b!4728704 (= lt!1892765 (lemmaGetPairDefinedThenContainsKey!316 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1892763 () List!53002)

(declare-datatypes ((Option!12388 0))(
  ( (None!12387) (Some!12387 (v!46992 tuple2!54522)) )
))
(declare-fun isDefined!9642 (Option!12388) Bool)

(declare-fun getPair!572 (List!53002 K!14230) Option!12388)

(assert (=> b!4728704 (isDefined!9642 (getPair!572 lt!1892763 key!4653))))

(declare-datatypes ((tuple2!54524 0))(
  ( (tuple2!54525 (_1!30556 (_ BitVec 64)) (_2!30556 List!53002)) )
))
(declare-datatypes ((List!53003 0))(
  ( (Nil!52879) (Cons!52879 (h!59238 tuple2!54524) (t!360279 List!53003)) )
))
(declare-datatypes ((ListLongMap!4483 0))(
  ( (ListLongMap!4484 (toList!5953 List!53003)) )
))
(declare-fun lm!2023 () ListLongMap!4483)

(declare-fun lt!1892769 () tuple2!54524)

(declare-fun lt!1892770 () Unit!131227)

(declare-fun lambda!216768 () Int)

(declare-fun forallContained!3665 (List!53003 Int tuple2!54524) Unit!131227)

(assert (=> b!4728704 (= lt!1892770 (forallContained!3665 (toList!5953 lm!2023) lambda!216768 lt!1892769))))

(declare-fun contains!16237 (List!53003 tuple2!54524) Bool)

(assert (=> b!4728704 (contains!16237 (toList!5953 lm!2023) lt!1892769)))

(declare-fun lt!1892762 () (_ BitVec 64))

(assert (=> b!4728704 (= lt!1892769 (tuple2!54525 lt!1892762 lt!1892763))))

(declare-fun lt!1892764 () Unit!131227)

(declare-fun lemmaGetValueImpliesTupleContained!377 (ListLongMap!4483 (_ BitVec 64) List!53002) Unit!131227)

(assert (=> b!4728704 (= lt!1892764 (lemmaGetValueImpliesTupleContained!377 lm!2023 lt!1892762 lt!1892763))))

(declare-fun apply!12457 (ListLongMap!4483 (_ BitVec 64)) List!53002)

(assert (=> b!4728704 (= lt!1892763 (apply!12457 lm!2023 lt!1892762))))

(declare-fun contains!16238 (ListLongMap!4483 (_ BitVec 64)) Bool)

(assert (=> b!4728704 (contains!16238 lm!2023 lt!1892762)))

(declare-fun lt!1892768 () Unit!131227)

(declare-fun lemmaInGenMapThenLongMapContainsHash!778 (ListLongMap!4483 K!14230 Hashable!6401) Unit!131227)

(assert (=> b!4728704 (= lt!1892768 (lemmaInGenMapThenLongMapContainsHash!778 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1892766 () Unit!131227)

(declare-fun lemmaInGenMapThenGetPairDefined!368 (ListLongMap!4483 K!14230 Hashable!6401) Unit!131227)

(assert (=> b!4728704 (= lt!1892766 (lemmaInGenMapThenGetPairDefined!368 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4728705 () Bool)

(declare-fun e!2949306 () Bool)

(declare-fun e!2949304 () Bool)

(assert (=> b!4728705 (= e!2949306 e!2949304)))

(declare-fun res!2001594 () Bool)

(assert (=> b!4728705 (=> res!2001594 e!2949304)))

(declare-fun lt!1892767 () List!53003)

(declare-fun forall!11625 (List!53003 Int) Bool)

(assert (=> b!4728705 (= res!2001594 (not (forall!11625 lt!1892767 lambda!216768)))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4728705 (= lt!1892767 (Cons!52879 (tuple2!54525 hash!405 (t!360278 oldBucket!34)) (t!360279 (toList!5953 lm!2023))))))

(declare-fun b!4728706 () Bool)

(declare-fun res!2001596 () Bool)

(declare-fun e!2949310 () Bool)

(assert (=> b!4728706 (=> (not res!2001596) (not e!2949310))))

(declare-fun newBucket!218 () List!53002)

(declare-fun removePairForKey!1627 (List!53002 K!14230) List!53002)

(assert (=> b!4728706 (= res!2001596 (= (removePairForKey!1627 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4728707 () Bool)

(declare-fun res!2001592 () Bool)

(declare-fun e!2949311 () Bool)

(assert (=> b!4728707 (=> (not res!2001592) (not e!2949311))))

(declare-fun head!10272 (List!53003) tuple2!54524)

(assert (=> b!4728707 (= res!2001592 (= (head!10272 (toList!5953 lm!2023)) (tuple2!54525 hash!405 oldBucket!34)))))

(declare-fun b!4728708 () Bool)

(declare-fun e!2949309 () Bool)

(assert (=> b!4728708 (= e!2949309 e!2949311)))

(declare-fun res!2001603 () Bool)

(assert (=> b!4728708 (=> (not res!2001603) (not e!2949311))))

(assert (=> b!4728708 (= res!2001603 (= lt!1892762 hash!405))))

(declare-fun hash!4413 (Hashable!6401 K!14230) (_ BitVec 64))

(assert (=> b!4728708 (= lt!1892762 (hash!4413 hashF!1323 key!4653))))

(declare-fun b!4728709 () Bool)

(declare-fun res!2001590 () Bool)

(assert (=> b!4728709 (=> res!2001590 e!2949306)))

(declare-fun lt!1892761 () List!53002)

(assert (=> b!4728709 (= res!2001590 (not (= (removePairForKey!1627 (t!360278 oldBucket!34) key!4653) lt!1892761)))))

(declare-fun b!4728710 () Bool)

(assert (=> b!4728710 (= e!2949307 e!2949306)))

(declare-fun res!2001588 () Bool)

(assert (=> b!4728710 (=> res!2001588 e!2949306)))

(declare-fun tail!9041 (List!53002) List!53002)

(assert (=> b!4728710 (= res!2001588 (not (= (removePairForKey!1627 (tail!9041 oldBucket!34) key!4653) lt!1892761)))))

(assert (=> b!4728710 (= lt!1892761 (tail!9041 newBucket!218))))

(declare-fun b!4728711 () Bool)

(declare-fun e!2949308 () Bool)

(declare-fun tp!1348727 () Bool)

(assert (=> b!4728711 (= e!2949308 tp!1348727)))

(declare-fun b!4728712 () Bool)

(declare-fun res!2001595 () Bool)

(assert (=> b!4728712 (=> (not res!2001595) (not e!2949310))))

(declare-fun noDuplicateKeys!2032 (List!53002) Bool)

(assert (=> b!4728712 (= res!2001595 (noDuplicateKeys!2032 newBucket!218))))

(declare-fun b!4728713 () Bool)

(declare-fun res!2001593 () Bool)

(assert (=> b!4728713 (=> (not res!2001593) (not e!2949311))))

(declare-fun allKeysSameHashInMap!1946 (ListLongMap!4483 Hashable!6401) Bool)

(assert (=> b!4728713 (= res!2001593 (allKeysSameHashInMap!1946 lm!2023 hashF!1323))))

(declare-fun res!2001600 () Bool)

(assert (=> start!481760 (=> (not res!2001600) (not e!2949310))))

(assert (=> start!481760 (= res!2001600 (forall!11625 (toList!5953 lm!2023) lambda!216768))))

(assert (=> start!481760 e!2949310))

(declare-fun inv!68104 (ListLongMap!4483) Bool)

(assert (=> start!481760 (and (inv!68104 lm!2023) e!2949308)))

(declare-fun tp_is_empty!31421 () Bool)

(assert (=> start!481760 tp_is_empty!31421))

(declare-fun e!2949312 () Bool)

(assert (=> start!481760 e!2949312))

(assert (=> start!481760 true))

(declare-fun e!2949305 () Bool)

(assert (=> start!481760 e!2949305))

(declare-fun b!4728714 () Bool)

(assert (=> b!4728714 (= e!2949311 (not e!2949314))))

(declare-fun res!2001591 () Bool)

(assert (=> b!4728714 (=> res!2001591 e!2949314)))

(get-info :version)

(assert (=> b!4728714 (= res!2001591 (or (and ((_ is Cons!52878) oldBucket!34) (= (_1!30555 (h!59237 oldBucket!34)) key!4653)) (not ((_ is Cons!52878) oldBucket!34)) (= (_1!30555 (h!59237 oldBucket!34)) key!4653)))))

(declare-fun e!2949313 () Bool)

(assert (=> b!4728714 e!2949313))

(declare-fun res!2001598 () Bool)

(assert (=> b!4728714 (=> (not res!2001598) (not e!2949313))))

(declare-fun tail!9042 (ListLongMap!4483) ListLongMap!4483)

(assert (=> b!4728714 (= res!2001598 (= (t!360279 (toList!5953 lm!2023)) (toList!5953 (tail!9042 lm!2023))))))

(declare-fun b!4728715 () Bool)

(assert (=> b!4728715 (= e!2949310 e!2949309)))

(declare-fun res!2001602 () Bool)

(assert (=> b!4728715 (=> (not res!2001602) (not e!2949309))))

(declare-datatypes ((ListMap!5317 0))(
  ( (ListMap!5318 (toList!5954 List!53002)) )
))
(declare-fun lt!1892771 () ListMap!5317)

(declare-fun contains!16239 (ListMap!5317 K!14230) Bool)

(assert (=> b!4728715 (= res!2001602 (contains!16239 lt!1892771 key!4653))))

(declare-fun extractMap!2058 (List!53003) ListMap!5317)

(assert (=> b!4728715 (= lt!1892771 (extractMap!2058 (toList!5953 lm!2023)))))

(declare-fun b!4728716 () Bool)

(assert (=> b!4728716 (= e!2949304 (allKeysSameHashInMap!1946 (ListLongMap!4484 lt!1892767) hashF!1323))))

(declare-fun b!4728717 () Bool)

(declare-fun res!2001601 () Bool)

(assert (=> b!4728717 (=> (not res!2001601) (not e!2949310))))

(declare-fun allKeysSameHash!1858 (List!53002 (_ BitVec 64) Hashable!6401) Bool)

(assert (=> b!4728717 (= res!2001601 (allKeysSameHash!1858 oldBucket!34 hash!405 hashF!1323))))

(declare-fun tp_is_empty!31423 () Bool)

(declare-fun b!4728718 () Bool)

(declare-fun tp!1348729 () Bool)

(assert (=> b!4728718 (= e!2949305 (and tp_is_empty!31421 tp_is_empty!31423 tp!1348729))))

(declare-fun b!4728719 () Bool)

(declare-fun res!2001587 () Bool)

(assert (=> b!4728719 (=> (not res!2001587) (not e!2949310))))

(assert (=> b!4728719 (= res!2001587 (noDuplicateKeys!2032 oldBucket!34))))

(declare-fun b!4728720 () Bool)

(declare-fun addToMapMapFromBucket!1462 (List!53002 ListMap!5317) ListMap!5317)

(assert (=> b!4728720 (= e!2949313 (= lt!1892771 (addToMapMapFromBucket!1462 (_2!30556 (h!59238 (toList!5953 lm!2023))) (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))

(declare-fun b!4728721 () Bool)

(declare-fun res!2001589 () Bool)

(assert (=> b!4728721 (=> (not res!2001589) (not e!2949311))))

(assert (=> b!4728721 (= res!2001589 (allKeysSameHash!1858 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4728722 () Bool)

(declare-fun res!2001597 () Bool)

(assert (=> b!4728722 (=> (not res!2001597) (not e!2949311))))

(assert (=> b!4728722 (= res!2001597 ((_ is Cons!52879) (toList!5953 lm!2023)))))

(declare-fun tp!1348728 () Bool)

(declare-fun b!4728723 () Bool)

(assert (=> b!4728723 (= e!2949312 (and tp_is_empty!31421 tp_is_empty!31423 tp!1348728))))

(assert (= (and start!481760 res!2001600) b!4728719))

(assert (= (and b!4728719 res!2001587) b!4728712))

(assert (= (and b!4728712 res!2001595) b!4728706))

(assert (= (and b!4728706 res!2001596) b!4728717))

(assert (= (and b!4728717 res!2001601) b!4728715))

(assert (= (and b!4728715 res!2001602) b!4728708))

(assert (= (and b!4728708 res!2001603) b!4728721))

(assert (= (and b!4728721 res!2001589) b!4728713))

(assert (= (and b!4728713 res!2001593) b!4728707))

(assert (= (and b!4728707 res!2001592) b!4728722))

(assert (= (and b!4728722 res!2001597) b!4728714))

(assert (= (and b!4728714 res!2001598) b!4728720))

(assert (= (and b!4728714 (not res!2001591)) b!4728704))

(assert (= (and b!4728704 (not res!2001599)) b!4728710))

(assert (= (and b!4728710 (not res!2001588)) b!4728709))

(assert (= (and b!4728709 (not res!2001590)) b!4728705))

(assert (= (and b!4728705 (not res!2001594)) b!4728716))

(assert (= start!481760 b!4728711))

(assert (= (and start!481760 ((_ is Cons!52878) oldBucket!34)) b!4728723))

(assert (= (and start!481760 ((_ is Cons!52878) newBucket!218)) b!4728718))

(declare-fun m!5669295 () Bool)

(assert (=> b!4728707 m!5669295))

(declare-fun m!5669297 () Bool)

(assert (=> b!4728705 m!5669297))

(declare-fun m!5669299 () Bool)

(assert (=> b!4728709 m!5669299))

(declare-fun m!5669301 () Bool)

(assert (=> b!4728715 m!5669301))

(declare-fun m!5669303 () Bool)

(assert (=> b!4728715 m!5669303))

(declare-fun m!5669305 () Bool)

(assert (=> b!4728719 m!5669305))

(declare-fun m!5669307 () Bool)

(assert (=> start!481760 m!5669307))

(declare-fun m!5669309 () Bool)

(assert (=> start!481760 m!5669309))

(declare-fun m!5669311 () Bool)

(assert (=> b!4728708 m!5669311))

(declare-fun m!5669313 () Bool)

(assert (=> b!4728714 m!5669313))

(declare-fun m!5669315 () Bool)

(assert (=> b!4728721 m!5669315))

(declare-fun m!5669317 () Bool)

(assert (=> b!4728704 m!5669317))

(declare-fun m!5669319 () Bool)

(assert (=> b!4728704 m!5669319))

(declare-fun m!5669321 () Bool)

(assert (=> b!4728704 m!5669321))

(declare-fun m!5669323 () Bool)

(assert (=> b!4728704 m!5669323))

(assert (=> b!4728704 m!5669321))

(declare-fun m!5669325 () Bool)

(assert (=> b!4728704 m!5669325))

(declare-fun m!5669327 () Bool)

(assert (=> b!4728704 m!5669327))

(declare-fun m!5669329 () Bool)

(assert (=> b!4728704 m!5669329))

(declare-fun m!5669331 () Bool)

(assert (=> b!4728704 m!5669331))

(declare-fun m!5669333 () Bool)

(assert (=> b!4728704 m!5669333))

(declare-fun m!5669335 () Bool)

(assert (=> b!4728704 m!5669335))

(declare-fun m!5669337 () Bool)

(assert (=> b!4728704 m!5669337))

(declare-fun m!5669339 () Bool)

(assert (=> b!4728704 m!5669339))

(declare-fun m!5669341 () Bool)

(assert (=> b!4728712 m!5669341))

(declare-fun m!5669343 () Bool)

(assert (=> b!4728717 m!5669343))

(declare-fun m!5669345 () Bool)

(assert (=> b!4728710 m!5669345))

(assert (=> b!4728710 m!5669345))

(declare-fun m!5669347 () Bool)

(assert (=> b!4728710 m!5669347))

(declare-fun m!5669349 () Bool)

(assert (=> b!4728710 m!5669349))

(declare-fun m!5669351 () Bool)

(assert (=> b!4728713 m!5669351))

(declare-fun m!5669353 () Bool)

(assert (=> b!4728706 m!5669353))

(declare-fun m!5669355 () Bool)

(assert (=> b!4728716 m!5669355))

(declare-fun m!5669357 () Bool)

(assert (=> b!4728720 m!5669357))

(assert (=> b!4728720 m!5669357))

(declare-fun m!5669359 () Bool)

(assert (=> b!4728720 m!5669359))

(check-sat (not b!4728718) (not b!4728707) (not b!4728723) (not b!4728717) (not b!4728713) (not b!4728705) tp_is_empty!31421 (not start!481760) (not b!4728716) (not b!4728709) (not b!4728721) (not b!4728712) tp_is_empty!31423 (not b!4728715) (not b!4728704) (not b!4728710) (not b!4728708) (not b!4728714) (not b!4728720) (not b!4728706) (not b!4728719) (not b!4728711))
(check-sat)
(get-model)

(declare-fun d!1506990 () Bool)

(declare-fun res!2001614 () Bool)

(declare-fun e!2949325 () Bool)

(assert (=> d!1506990 (=> res!2001614 e!2949325)))

(assert (=> d!1506990 (= res!2001614 (not ((_ is Cons!52878) newBucket!218)))))

(assert (=> d!1506990 (= (noDuplicateKeys!2032 newBucket!218) e!2949325)))

(declare-fun b!4728738 () Bool)

(declare-fun e!2949326 () Bool)

(assert (=> b!4728738 (= e!2949325 e!2949326)))

(declare-fun res!2001615 () Bool)

(assert (=> b!4728738 (=> (not res!2001615) (not e!2949326))))

(assert (=> b!4728738 (= res!2001615 (not (containsKey!3402 (t!360278 newBucket!218) (_1!30555 (h!59237 newBucket!218)))))))

(declare-fun b!4728739 () Bool)

(assert (=> b!4728739 (= e!2949326 (noDuplicateKeys!2032 (t!360278 newBucket!218)))))

(assert (= (and d!1506990 (not res!2001614)) b!4728738))

(assert (= (and b!4728738 res!2001615) b!4728739))

(declare-fun m!5669371 () Bool)

(assert (=> b!4728738 m!5669371))

(declare-fun m!5669373 () Bool)

(assert (=> b!4728739 m!5669373))

(assert (=> b!4728712 d!1506990))

(declare-fun bs!1118702 () Bool)

(declare-fun d!1506992 () Bool)

(assert (= bs!1118702 (and d!1506992 start!481760)))

(declare-fun lambda!216774 () Int)

(assert (=> bs!1118702 (not (= lambda!216774 lambda!216768))))

(assert (=> d!1506992 true))

(assert (=> d!1506992 (= (allKeysSameHashInMap!1946 lm!2023 hashF!1323) (forall!11625 (toList!5953 lm!2023) lambda!216774))))

(declare-fun bs!1118703 () Bool)

(assert (= bs!1118703 d!1506992))

(declare-fun m!5669375 () Bool)

(assert (=> bs!1118703 m!5669375))

(assert (=> b!4728713 d!1506992))

(declare-fun d!1506994 () Bool)

(declare-fun tail!9044 (List!53003) List!53003)

(assert (=> d!1506994 (= (tail!9042 lm!2023) (ListLongMap!4484 (tail!9044 (toList!5953 lm!2023))))))

(declare-fun bs!1118704 () Bool)

(assert (= bs!1118704 d!1506994))

(declare-fun m!5669377 () Bool)

(assert (=> bs!1118704 m!5669377))

(assert (=> b!4728714 d!1506994))

(declare-fun d!1506996 () Bool)

(declare-fun lt!1892774 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9419 (List!53003) (InoxSet tuple2!54524))

(assert (=> d!1506996 (= lt!1892774 (select (content!9419 (toList!5953 lm!2023)) lt!1892769))))

(declare-fun e!2949331 () Bool)

(assert (=> d!1506996 (= lt!1892774 e!2949331)))

(declare-fun res!2001620 () Bool)

(assert (=> d!1506996 (=> (not res!2001620) (not e!2949331))))

(assert (=> d!1506996 (= res!2001620 ((_ is Cons!52879) (toList!5953 lm!2023)))))

(assert (=> d!1506996 (= (contains!16237 (toList!5953 lm!2023) lt!1892769) lt!1892774)))

(declare-fun b!4728746 () Bool)

(declare-fun e!2949332 () Bool)

(assert (=> b!4728746 (= e!2949331 e!2949332)))

(declare-fun res!2001621 () Bool)

(assert (=> b!4728746 (=> res!2001621 e!2949332)))

(assert (=> b!4728746 (= res!2001621 (= (h!59238 (toList!5953 lm!2023)) lt!1892769))))

(declare-fun b!4728747 () Bool)

(assert (=> b!4728747 (= e!2949332 (contains!16237 (t!360279 (toList!5953 lm!2023)) lt!1892769))))

(assert (= (and d!1506996 res!2001620) b!4728746))

(assert (= (and b!4728746 (not res!2001621)) b!4728747))

(declare-fun m!5669379 () Bool)

(assert (=> d!1506996 m!5669379))

(declare-fun m!5669381 () Bool)

(assert (=> d!1506996 m!5669381))

(declare-fun m!5669383 () Bool)

(assert (=> b!4728747 m!5669383))

(assert (=> b!4728704 d!1506996))

(declare-fun d!1506998 () Bool)

(declare-datatypes ((Option!12391 0))(
  ( (None!12390) (Some!12390 (v!46999 List!53002)) )
))
(declare-fun get!17744 (Option!12391) List!53002)

(declare-fun getValueByKey!1977 (List!53003 (_ BitVec 64)) Option!12391)

(assert (=> d!1506998 (= (apply!12457 lm!2023 lt!1892762) (get!17744 (getValueByKey!1977 (toList!5953 lm!2023) lt!1892762)))))

(declare-fun bs!1118705 () Bool)

(assert (= bs!1118705 d!1506998))

(declare-fun m!5669385 () Bool)

(assert (=> bs!1118705 m!5669385))

(assert (=> bs!1118705 m!5669385))

(declare-fun m!5669387 () Bool)

(assert (=> bs!1118705 m!5669387))

(assert (=> b!4728704 d!1506998))

(declare-fun d!1507000 () Bool)

(assert (=> d!1507000 (contains!16237 (toList!5953 lm!2023) (tuple2!54525 lt!1892762 lt!1892763))))

(declare-fun lt!1892777 () Unit!131227)

(declare-fun choose!33424 (ListLongMap!4483 (_ BitVec 64) List!53002) Unit!131227)

(assert (=> d!1507000 (= lt!1892777 (choose!33424 lm!2023 lt!1892762 lt!1892763))))

(assert (=> d!1507000 (contains!16238 lm!2023 lt!1892762)))

(assert (=> d!1507000 (= (lemmaGetValueImpliesTupleContained!377 lm!2023 lt!1892762 lt!1892763) lt!1892777)))

(declare-fun bs!1118706 () Bool)

(assert (= bs!1118706 d!1507000))

(declare-fun m!5669389 () Bool)

(assert (=> bs!1118706 m!5669389))

(declare-fun m!5669391 () Bool)

(assert (=> bs!1118706 m!5669391))

(assert (=> bs!1118706 m!5669337))

(assert (=> b!4728704 d!1507000))

(declare-fun bs!1118718 () Bool)

(declare-fun d!1507002 () Bool)

(assert (= bs!1118718 (and d!1507002 start!481760)))

(declare-fun lambda!216819 () Int)

(assert (=> bs!1118718 (= lambda!216819 lambda!216768)))

(declare-fun bs!1118719 () Bool)

(assert (= bs!1118719 (and d!1507002 d!1506992)))

(assert (=> bs!1118719 (not (= lambda!216819 lambda!216774))))

(declare-fun e!2949367 () Bool)

(assert (=> d!1507002 e!2949367))

(declare-fun res!2001651 () Bool)

(assert (=> d!1507002 (=> (not res!2001651) (not e!2949367))))

(assert (=> d!1507002 (= res!2001651 (forall!11625 (toList!5953 lm!2023) lambda!216819))))

(declare-fun lt!1892870 () Unit!131227)

(declare-fun choose!33425 (ListLongMap!4483 K!14230 Hashable!6401) Unit!131227)

(assert (=> d!1507002 (= lt!1892870 (choose!33425 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1507002 (forall!11625 (toList!5953 lm!2023) lambda!216819)))

(assert (=> d!1507002 (= (lemmaInGenMapThenGetPairDefined!368 lm!2023 key!4653 hashF!1323) lt!1892870)))

(declare-fun b!4728805 () Bool)

(declare-fun res!2001653 () Bool)

(assert (=> b!4728805 (=> (not res!2001653) (not e!2949367))))

(assert (=> b!4728805 (= res!2001653 (allKeysSameHashInMap!1946 lm!2023 hashF!1323))))

(declare-fun lt!1892869 () (_ BitVec 64))

(declare-fun b!4728808 () Bool)

(declare-fun lt!1892868 () List!53002)

(declare-fun e!2949366 () Bool)

(assert (=> b!4728808 (= e!2949366 (= (getValueByKey!1977 (toList!5953 lm!2023) lt!1892869) (Some!12390 lt!1892868)))))

(declare-fun b!4728807 () Bool)

(assert (=> b!4728807 (= e!2949367 (isDefined!9642 (getPair!572 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1892873 () Unit!131227)

(assert (=> b!4728807 (= lt!1892873 (forallContained!3665 (toList!5953 lm!2023) lambda!216819 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))

(declare-fun lt!1892867 () Unit!131227)

(declare-fun lt!1892871 () Unit!131227)

(assert (=> b!4728807 (= lt!1892867 lt!1892871)))

(assert (=> b!4728807 (contains!16237 (toList!5953 lm!2023) (tuple2!54525 lt!1892869 lt!1892868))))

(assert (=> b!4728807 (= lt!1892871 (lemmaGetValueImpliesTupleContained!377 lm!2023 lt!1892869 lt!1892868))))

(assert (=> b!4728807 e!2949366))

(declare-fun res!2001652 () Bool)

(assert (=> b!4728807 (=> (not res!2001652) (not e!2949366))))

(assert (=> b!4728807 (= res!2001652 (contains!16238 lm!2023 lt!1892869))))

(assert (=> b!4728807 (= lt!1892868 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))

(assert (=> b!4728807 (= lt!1892869 (hash!4413 hashF!1323 key!4653))))

(declare-fun lt!1892866 () Unit!131227)

(declare-fun lt!1892872 () Unit!131227)

(assert (=> b!4728807 (= lt!1892866 lt!1892872)))

(assert (=> b!4728807 (contains!16238 lm!2023 (hash!4413 hashF!1323 key!4653))))

(assert (=> b!4728807 (= lt!1892872 (lemmaInGenMapThenLongMapContainsHash!778 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4728806 () Bool)

(declare-fun res!2001650 () Bool)

(assert (=> b!4728806 (=> (not res!2001650) (not e!2949367))))

(assert (=> b!4728806 (= res!2001650 (contains!16239 (extractMap!2058 (toList!5953 lm!2023)) key!4653))))

(assert (= (and d!1507002 res!2001651) b!4728805))

(assert (= (and b!4728805 res!2001653) b!4728806))

(assert (= (and b!4728806 res!2001650) b!4728807))

(assert (= (and b!4728807 res!2001652) b!4728808))

(assert (=> b!4728806 m!5669303))

(assert (=> b!4728806 m!5669303))

(declare-fun m!5669459 () Bool)

(assert (=> b!4728806 m!5669459))

(declare-fun m!5669461 () Bool)

(assert (=> b!4728808 m!5669461))

(declare-fun m!5669463 () Bool)

(assert (=> b!4728807 m!5669463))

(declare-fun m!5669465 () Bool)

(assert (=> b!4728807 m!5669465))

(declare-fun m!5669467 () Bool)

(assert (=> b!4728807 m!5669467))

(assert (=> b!4728807 m!5669311))

(declare-fun m!5669469 () Bool)

(assert (=> b!4728807 m!5669469))

(declare-fun m!5669471 () Bool)

(assert (=> b!4728807 m!5669471))

(declare-fun m!5669473 () Bool)

(assert (=> b!4728807 m!5669473))

(declare-fun m!5669475 () Bool)

(assert (=> b!4728807 m!5669475))

(assert (=> b!4728807 m!5669475))

(declare-fun m!5669477 () Bool)

(assert (=> b!4728807 m!5669477))

(assert (=> b!4728807 m!5669339))

(assert (=> b!4728807 m!5669311))

(assert (=> b!4728807 m!5669473))

(assert (=> b!4728807 m!5669311))

(assert (=> b!4728805 m!5669351))

(declare-fun m!5669479 () Bool)

(assert (=> d!1507002 m!5669479))

(declare-fun m!5669481 () Bool)

(assert (=> d!1507002 m!5669481))

(assert (=> d!1507002 m!5669479))

(assert (=> b!4728704 d!1507002))

(declare-fun d!1507026 () Bool)

(assert (=> d!1507026 (containsKey!3402 oldBucket!34 key!4653)))

(declare-fun lt!1892879 () Unit!131227)

(declare-fun choose!33426 (List!53002 K!14230 Hashable!6401) Unit!131227)

(assert (=> d!1507026 (= lt!1892879 (choose!33426 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1507026 (noDuplicateKeys!2032 oldBucket!34)))

(assert (=> d!1507026 (= (lemmaGetPairDefinedThenContainsKey!316 oldBucket!34 key!4653 hashF!1323) lt!1892879)))

(declare-fun bs!1118724 () Bool)

(assert (= bs!1118724 d!1507026))

(assert (=> bs!1118724 m!5669335))

(declare-fun m!5669489 () Bool)

(assert (=> bs!1118724 m!5669489))

(assert (=> bs!1118724 m!5669305))

(assert (=> b!4728704 d!1507026))

(declare-fun d!1507030 () Bool)

(declare-fun e!2949388 () Bool)

(assert (=> d!1507030 e!2949388))

(declare-fun res!2001668 () Bool)

(assert (=> d!1507030 (=> res!2001668 e!2949388)))

(declare-fun lt!1892892 () Bool)

(assert (=> d!1507030 (= res!2001668 (not lt!1892892))))

(declare-fun lt!1892891 () Bool)

(assert (=> d!1507030 (= lt!1892892 lt!1892891)))

(declare-fun lt!1892894 () Unit!131227)

(declare-fun e!2949387 () Unit!131227)

(assert (=> d!1507030 (= lt!1892894 e!2949387)))

(declare-fun c!807572 () Bool)

(assert (=> d!1507030 (= c!807572 lt!1892891)))

(declare-fun containsKey!3405 (List!53003 (_ BitVec 64)) Bool)

(assert (=> d!1507030 (= lt!1892891 (containsKey!3405 (toList!5953 lm!2023) lt!1892762))))

(assert (=> d!1507030 (= (contains!16238 lm!2023 lt!1892762) lt!1892892)))

(declare-fun b!4728839 () Bool)

(declare-fun lt!1892893 () Unit!131227)

(assert (=> b!4728839 (= e!2949387 lt!1892893)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1868 (List!53003 (_ BitVec 64)) Unit!131227)

(assert (=> b!4728839 (= lt!1892893 (lemmaContainsKeyImpliesGetValueByKeyDefined!1868 (toList!5953 lm!2023) lt!1892762))))

(declare-fun isDefined!9645 (Option!12391) Bool)

(assert (=> b!4728839 (isDefined!9645 (getValueByKey!1977 (toList!5953 lm!2023) lt!1892762))))

(declare-fun b!4728840 () Bool)

(declare-fun Unit!131243 () Unit!131227)

(assert (=> b!4728840 (= e!2949387 Unit!131243)))

(declare-fun b!4728841 () Bool)

(assert (=> b!4728841 (= e!2949388 (isDefined!9645 (getValueByKey!1977 (toList!5953 lm!2023) lt!1892762)))))

(assert (= (and d!1507030 c!807572) b!4728839))

(assert (= (and d!1507030 (not c!807572)) b!4728840))

(assert (= (and d!1507030 (not res!2001668)) b!4728841))

(declare-fun m!5669505 () Bool)

(assert (=> d!1507030 m!5669505))

(declare-fun m!5669507 () Bool)

(assert (=> b!4728839 m!5669507))

(assert (=> b!4728839 m!5669385))

(assert (=> b!4728839 m!5669385))

(declare-fun m!5669509 () Bool)

(assert (=> b!4728839 m!5669509))

(assert (=> b!4728841 m!5669385))

(assert (=> b!4728841 m!5669385))

(assert (=> b!4728841 m!5669509))

(assert (=> b!4728704 d!1507030))

(declare-fun d!1507034 () Bool)

(declare-fun res!2001673 () Bool)

(declare-fun e!2949393 () Bool)

(assert (=> d!1507034 (=> res!2001673 e!2949393)))

(assert (=> d!1507034 (= res!2001673 (and ((_ is Cons!52878) (t!360278 oldBucket!34)) (= (_1!30555 (h!59237 (t!360278 oldBucket!34))) key!4653)))))

(assert (=> d!1507034 (= (containsKey!3402 (t!360278 oldBucket!34) key!4653) e!2949393)))

(declare-fun b!4728846 () Bool)

(declare-fun e!2949394 () Bool)

(assert (=> b!4728846 (= e!2949393 e!2949394)))

(declare-fun res!2001674 () Bool)

(assert (=> b!4728846 (=> (not res!2001674) (not e!2949394))))

(assert (=> b!4728846 (= res!2001674 ((_ is Cons!52878) (t!360278 oldBucket!34)))))

(declare-fun b!4728847 () Bool)

(assert (=> b!4728847 (= e!2949394 (containsKey!3402 (t!360278 (t!360278 oldBucket!34)) key!4653))))

(assert (= (and d!1507034 (not res!2001673)) b!4728846))

(assert (= (and b!4728846 res!2001674) b!4728847))

(declare-fun m!5669511 () Bool)

(assert (=> b!4728847 m!5669511))

(assert (=> b!4728704 d!1507034))

(declare-fun b!4728864 () Bool)

(declare-fun e!2949405 () Bool)

(assert (=> b!4728864 (= e!2949405 (not (containsKey!3402 lt!1892763 key!4653)))))

(declare-fun b!4728865 () Bool)

(declare-fun e!2949409 () Option!12388)

(assert (=> b!4728865 (= e!2949409 None!12387)))

(declare-fun b!4728866 () Bool)

(assert (=> b!4728866 (= e!2949409 (getPair!572 (t!360278 lt!1892763) key!4653))))

(declare-fun d!1507036 () Bool)

(declare-fun e!2949407 () Bool)

(assert (=> d!1507036 e!2949407))

(declare-fun res!2001686 () Bool)

(assert (=> d!1507036 (=> res!2001686 e!2949407)))

(assert (=> d!1507036 (= res!2001686 e!2949405)))

(declare-fun res!2001684 () Bool)

(assert (=> d!1507036 (=> (not res!2001684) (not e!2949405))))

(declare-fun lt!1892897 () Option!12388)

(declare-fun isEmpty!29195 (Option!12388) Bool)

(assert (=> d!1507036 (= res!2001684 (isEmpty!29195 lt!1892897))))

(declare-fun e!2949408 () Option!12388)

(assert (=> d!1507036 (= lt!1892897 e!2949408)))

(declare-fun c!807577 () Bool)

(assert (=> d!1507036 (= c!807577 (and ((_ is Cons!52878) lt!1892763) (= (_1!30555 (h!59237 lt!1892763)) key!4653)))))

(assert (=> d!1507036 (noDuplicateKeys!2032 lt!1892763)))

(assert (=> d!1507036 (= (getPair!572 lt!1892763 key!4653) lt!1892897)))

(declare-fun b!4728867 () Bool)

(declare-fun e!2949406 () Bool)

(declare-fun contains!16242 (List!53002 tuple2!54522) Bool)

(declare-fun get!17745 (Option!12388) tuple2!54522)

(assert (=> b!4728867 (= e!2949406 (contains!16242 lt!1892763 (get!17745 lt!1892897)))))

(declare-fun b!4728868 () Bool)

(assert (=> b!4728868 (= e!2949408 (Some!12387 (h!59237 lt!1892763)))))

(declare-fun b!4728869 () Bool)

(declare-fun res!2001685 () Bool)

(assert (=> b!4728869 (=> (not res!2001685) (not e!2949406))))

(assert (=> b!4728869 (= res!2001685 (= (_1!30555 (get!17745 lt!1892897)) key!4653))))

(declare-fun b!4728870 () Bool)

(assert (=> b!4728870 (= e!2949408 e!2949409)))

(declare-fun c!807578 () Bool)

(assert (=> b!4728870 (= c!807578 ((_ is Cons!52878) lt!1892763))))

(declare-fun b!4728871 () Bool)

(assert (=> b!4728871 (= e!2949407 e!2949406)))

(declare-fun res!2001683 () Bool)

(assert (=> b!4728871 (=> (not res!2001683) (not e!2949406))))

(assert (=> b!4728871 (= res!2001683 (isDefined!9642 lt!1892897))))

(assert (= (and d!1507036 c!807577) b!4728868))

(assert (= (and d!1507036 (not c!807577)) b!4728870))

(assert (= (and b!4728870 c!807578) b!4728866))

(assert (= (and b!4728870 (not c!807578)) b!4728865))

(assert (= (and d!1507036 res!2001684) b!4728864))

(assert (= (and d!1507036 (not res!2001686)) b!4728871))

(assert (= (and b!4728871 res!2001683) b!4728869))

(assert (= (and b!4728869 res!2001685) b!4728867))

(declare-fun m!5669513 () Bool)

(assert (=> b!4728867 m!5669513))

(assert (=> b!4728867 m!5669513))

(declare-fun m!5669515 () Bool)

(assert (=> b!4728867 m!5669515))

(declare-fun m!5669517 () Bool)

(assert (=> d!1507036 m!5669517))

(declare-fun m!5669519 () Bool)

(assert (=> d!1507036 m!5669519))

(assert (=> b!4728869 m!5669513))

(declare-fun m!5669521 () Bool)

(assert (=> b!4728866 m!5669521))

(declare-fun m!5669523 () Bool)

(assert (=> b!4728871 m!5669523))

(declare-fun m!5669525 () Bool)

(assert (=> b!4728864 m!5669525))

(assert (=> b!4728704 d!1507036))

(declare-fun bs!1118725 () Bool)

(declare-fun d!1507038 () Bool)

(assert (= bs!1118725 (and d!1507038 start!481760)))

(declare-fun lambda!216825 () Int)

(assert (=> bs!1118725 (= lambda!216825 lambda!216768)))

(declare-fun bs!1118726 () Bool)

(assert (= bs!1118726 (and d!1507038 d!1506992)))

(assert (=> bs!1118726 (not (= lambda!216825 lambda!216774))))

(declare-fun bs!1118727 () Bool)

(assert (= bs!1118727 (and d!1507038 d!1507002)))

(assert (=> bs!1118727 (= lambda!216825 lambda!216819)))

(assert (=> d!1507038 (contains!16238 lm!2023 (hash!4413 hashF!1323 key!4653))))

(declare-fun lt!1892900 () Unit!131227)

(declare-fun choose!33427 (ListLongMap!4483 K!14230 Hashable!6401) Unit!131227)

(assert (=> d!1507038 (= lt!1892900 (choose!33427 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1507038 (forall!11625 (toList!5953 lm!2023) lambda!216825)))

(assert (=> d!1507038 (= (lemmaInGenMapThenLongMapContainsHash!778 lm!2023 key!4653 hashF!1323) lt!1892900)))

(declare-fun bs!1118728 () Bool)

(assert (= bs!1118728 d!1507038))

(assert (=> bs!1118728 m!5669311))

(assert (=> bs!1118728 m!5669311))

(assert (=> bs!1118728 m!5669469))

(declare-fun m!5669527 () Bool)

(assert (=> bs!1118728 m!5669527))

(declare-fun m!5669529 () Bool)

(assert (=> bs!1118728 m!5669529))

(assert (=> b!4728704 d!1507038))

(declare-fun d!1507040 () Bool)

(assert (=> d!1507040 (= (isDefined!9642 (getPair!572 lt!1892763 key!4653)) (not (isEmpty!29195 (getPair!572 lt!1892763 key!4653))))))

(declare-fun bs!1118729 () Bool)

(assert (= bs!1118729 d!1507040))

(assert (=> bs!1118729 m!5669321))

(declare-fun m!5669531 () Bool)

(assert (=> bs!1118729 m!5669531))

(assert (=> b!4728704 d!1507040))

(declare-fun d!1507042 () Bool)

(declare-fun dynLambda!21839 (Int tuple2!54524) Bool)

(assert (=> d!1507042 (dynLambda!21839 lambda!216768 lt!1892769)))

(declare-fun lt!1892903 () Unit!131227)

(declare-fun choose!33428 (List!53003 Int tuple2!54524) Unit!131227)

(assert (=> d!1507042 (= lt!1892903 (choose!33428 (toList!5953 lm!2023) lambda!216768 lt!1892769))))

(declare-fun e!2949412 () Bool)

(assert (=> d!1507042 e!2949412))

(declare-fun res!2001689 () Bool)

(assert (=> d!1507042 (=> (not res!2001689) (not e!2949412))))

(assert (=> d!1507042 (= res!2001689 (forall!11625 (toList!5953 lm!2023) lambda!216768))))

(assert (=> d!1507042 (= (forallContained!3665 (toList!5953 lm!2023) lambda!216768 lt!1892769) lt!1892903)))

(declare-fun b!4728874 () Bool)

(assert (=> b!4728874 (= e!2949412 (contains!16237 (toList!5953 lm!2023) lt!1892769))))

(assert (= (and d!1507042 res!2001689) b!4728874))

(declare-fun b_lambda!179963 () Bool)

(assert (=> (not b_lambda!179963) (not d!1507042)))

(declare-fun m!5669533 () Bool)

(assert (=> d!1507042 m!5669533))

(declare-fun m!5669535 () Bool)

(assert (=> d!1507042 m!5669535))

(assert (=> d!1507042 m!5669307))

(assert (=> b!4728874 m!5669333))

(assert (=> b!4728704 d!1507042))

(declare-fun d!1507044 () Bool)

(declare-fun res!2001690 () Bool)

(declare-fun e!2949413 () Bool)

(assert (=> d!1507044 (=> res!2001690 e!2949413)))

(assert (=> d!1507044 (= res!2001690 (and ((_ is Cons!52878) oldBucket!34) (= (_1!30555 (h!59237 oldBucket!34)) key!4653)))))

(assert (=> d!1507044 (= (containsKey!3402 oldBucket!34 key!4653) e!2949413)))

(declare-fun b!4728875 () Bool)

(declare-fun e!2949414 () Bool)

(assert (=> b!4728875 (= e!2949413 e!2949414)))

(declare-fun res!2001691 () Bool)

(assert (=> b!4728875 (=> (not res!2001691) (not e!2949414))))

(assert (=> b!4728875 (= res!2001691 ((_ is Cons!52878) oldBucket!34))))

(declare-fun b!4728876 () Bool)

(assert (=> b!4728876 (= e!2949414 (containsKey!3402 (t!360278 oldBucket!34) key!4653))))

(assert (= (and d!1507044 (not res!2001690)) b!4728875))

(assert (= (and b!4728875 res!2001691) b!4728876))

(assert (=> b!4728876 m!5669327))

(assert (=> b!4728704 d!1507044))

(declare-fun d!1507046 () Bool)

(declare-fun e!2949434 () Bool)

(assert (=> d!1507046 e!2949434))

(declare-fun res!2001708 () Bool)

(assert (=> d!1507046 (=> res!2001708 e!2949434)))

(declare-fun e!2949435 () Bool)

(assert (=> d!1507046 (= res!2001708 e!2949435)))

(declare-fun res!2001706 () Bool)

(assert (=> d!1507046 (=> (not res!2001706) (not e!2949435))))

(declare-fun lt!1892936 () Bool)

(assert (=> d!1507046 (= res!2001706 (not lt!1892936))))

(declare-fun lt!1892939 () Bool)

(assert (=> d!1507046 (= lt!1892936 lt!1892939)))

(declare-fun lt!1892941 () Unit!131227)

(declare-fun e!2949433 () Unit!131227)

(assert (=> d!1507046 (= lt!1892941 e!2949433)))

(declare-fun c!807586 () Bool)

(assert (=> d!1507046 (= c!807586 lt!1892939)))

(declare-fun containsKey!3406 (List!53002 K!14230) Bool)

(assert (=> d!1507046 (= lt!1892939 (containsKey!3406 (toList!5954 lt!1892771) key!4653))))

(assert (=> d!1507046 (= (contains!16239 lt!1892771 key!4653) lt!1892936)))

(declare-fun b!4728903 () Bool)

(assert (=> b!4728903 false))

(declare-fun lt!1892940 () Unit!131227)

(declare-fun lt!1892937 () Unit!131227)

(assert (=> b!4728903 (= lt!1892940 lt!1892937)))

(assert (=> b!4728903 (containsKey!3406 (toList!5954 lt!1892771) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!962 (List!53002 K!14230) Unit!131227)

(assert (=> b!4728903 (= lt!1892937 (lemmaInGetKeysListThenContainsKey!962 (toList!5954 lt!1892771) key!4653))))

(declare-fun e!2949431 () Unit!131227)

(declare-fun Unit!131244 () Unit!131227)

(assert (=> b!4728903 (= e!2949431 Unit!131244)))

(declare-fun b!4728904 () Bool)

(declare-fun Unit!131245 () Unit!131227)

(assert (=> b!4728904 (= e!2949431 Unit!131245)))

(declare-fun b!4728905 () Bool)

(declare-datatypes ((List!53005 0))(
  ( (Nil!52881) (Cons!52881 (h!59242 K!14230) (t!360281 List!53005)) )
))
(declare-fun e!2949432 () List!53005)

(declare-fun getKeysList!963 (List!53002) List!53005)

(assert (=> b!4728905 (= e!2949432 (getKeysList!963 (toList!5954 lt!1892771)))))

(declare-fun b!4728906 () Bool)

(declare-fun e!2949436 () Bool)

(declare-fun contains!16243 (List!53005 K!14230) Bool)

(declare-fun keys!19004 (ListMap!5317) List!53005)

(assert (=> b!4728906 (= e!2949436 (contains!16243 (keys!19004 lt!1892771) key!4653))))

(declare-fun b!4728907 () Bool)

(declare-fun lt!1892943 () Unit!131227)

(assert (=> b!4728907 (= e!2949433 lt!1892943)))

(declare-fun lt!1892938 () Unit!131227)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (List!53002 K!14230) Unit!131227)

(assert (=> b!4728907 (= lt!1892938 (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 lt!1892771) key!4653))))

(declare-datatypes ((Option!12392 0))(
  ( (None!12391) (Some!12391 (v!47000 V!14476)) )
))
(declare-fun isDefined!9646 (Option!12392) Bool)

(declare-fun getValueByKey!1978 (List!53002 K!14230) Option!12392)

(assert (=> b!4728907 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1892771) key!4653))))

(declare-fun lt!1892942 () Unit!131227)

(assert (=> b!4728907 (= lt!1892942 lt!1892938)))

(declare-fun lemmaInListThenGetKeysListContains!958 (List!53002 K!14230) Unit!131227)

(assert (=> b!4728907 (= lt!1892943 (lemmaInListThenGetKeysListContains!958 (toList!5954 lt!1892771) key!4653))))

(declare-fun call!330793 () Bool)

(assert (=> b!4728907 call!330793))

(declare-fun bm!330788 () Bool)

(assert (=> bm!330788 (= call!330793 (contains!16243 e!2949432 key!4653))))

(declare-fun c!807587 () Bool)

(assert (=> bm!330788 (= c!807587 c!807586)))

(declare-fun b!4728908 () Bool)

(assert (=> b!4728908 (= e!2949432 (keys!19004 lt!1892771))))

(declare-fun b!4728909 () Bool)

(assert (=> b!4728909 (= e!2949433 e!2949431)))

(declare-fun c!807585 () Bool)

(assert (=> b!4728909 (= c!807585 call!330793)))

(declare-fun b!4728910 () Bool)

(assert (=> b!4728910 (= e!2949434 e!2949436)))

(declare-fun res!2001707 () Bool)

(assert (=> b!4728910 (=> (not res!2001707) (not e!2949436))))

(assert (=> b!4728910 (= res!2001707 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1892771) key!4653)))))

(declare-fun b!4728911 () Bool)

(assert (=> b!4728911 (= e!2949435 (not (contains!16243 (keys!19004 lt!1892771) key!4653)))))

(assert (= (and d!1507046 c!807586) b!4728907))

(assert (= (and d!1507046 (not c!807586)) b!4728909))

(assert (= (and b!4728909 c!807585) b!4728903))

(assert (= (and b!4728909 (not c!807585)) b!4728904))

(assert (= (or b!4728907 b!4728909) bm!330788))

(assert (= (and bm!330788 c!807587) b!4728905))

(assert (= (and bm!330788 (not c!807587)) b!4728908))

(assert (= (and d!1507046 res!2001706) b!4728911))

(assert (= (and d!1507046 (not res!2001708)) b!4728910))

(assert (= (and b!4728910 res!2001707) b!4728906))

(declare-fun m!5669537 () Bool)

(assert (=> b!4728905 m!5669537))

(declare-fun m!5669539 () Bool)

(assert (=> b!4728903 m!5669539))

(declare-fun m!5669541 () Bool)

(assert (=> b!4728903 m!5669541))

(declare-fun m!5669543 () Bool)

(assert (=> bm!330788 m!5669543))

(declare-fun m!5669545 () Bool)

(assert (=> b!4728910 m!5669545))

(assert (=> b!4728910 m!5669545))

(declare-fun m!5669547 () Bool)

(assert (=> b!4728910 m!5669547))

(declare-fun m!5669549 () Bool)

(assert (=> b!4728906 m!5669549))

(assert (=> b!4728906 m!5669549))

(declare-fun m!5669551 () Bool)

(assert (=> b!4728906 m!5669551))

(assert (=> d!1507046 m!5669539))

(declare-fun m!5669553 () Bool)

(assert (=> b!4728907 m!5669553))

(assert (=> b!4728907 m!5669545))

(assert (=> b!4728907 m!5669545))

(assert (=> b!4728907 m!5669547))

(declare-fun m!5669555 () Bool)

(assert (=> b!4728907 m!5669555))

(assert (=> b!4728911 m!5669549))

(assert (=> b!4728911 m!5669549))

(assert (=> b!4728911 m!5669551))

(assert (=> b!4728908 m!5669549))

(assert (=> b!4728715 d!1507046))

(declare-fun bs!1118734 () Bool)

(declare-fun d!1507048 () Bool)

(assert (= bs!1118734 (and d!1507048 start!481760)))

(declare-fun lambda!216835 () Int)

(assert (=> bs!1118734 (= lambda!216835 lambda!216768)))

(declare-fun bs!1118735 () Bool)

(assert (= bs!1118735 (and d!1507048 d!1506992)))

(assert (=> bs!1118735 (not (= lambda!216835 lambda!216774))))

(declare-fun bs!1118736 () Bool)

(assert (= bs!1118736 (and d!1507048 d!1507002)))

(assert (=> bs!1118736 (= lambda!216835 lambda!216819)))

(declare-fun bs!1118737 () Bool)

(assert (= bs!1118737 (and d!1507048 d!1507038)))

(assert (=> bs!1118737 (= lambda!216835 lambda!216825)))

(declare-fun lt!1892966 () ListMap!5317)

(declare-fun invariantList!1523 (List!53002) Bool)

(assert (=> d!1507048 (invariantList!1523 (toList!5954 lt!1892966))))

(declare-fun e!2949453 () ListMap!5317)

(assert (=> d!1507048 (= lt!1892966 e!2949453)))

(declare-fun c!807593 () Bool)

(assert (=> d!1507048 (= c!807593 ((_ is Cons!52879) (toList!5953 lm!2023)))))

(assert (=> d!1507048 (forall!11625 (toList!5953 lm!2023) lambda!216835)))

(assert (=> d!1507048 (= (extractMap!2058 (toList!5953 lm!2023)) lt!1892966)))

(declare-fun b!4728935 () Bool)

(assert (=> b!4728935 (= e!2949453 (addToMapMapFromBucket!1462 (_2!30556 (h!59238 (toList!5953 lm!2023))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))

(declare-fun b!4728936 () Bool)

(assert (=> b!4728936 (= e!2949453 (ListMap!5318 Nil!52878))))

(assert (= (and d!1507048 c!807593) b!4728935))

(assert (= (and d!1507048 (not c!807593)) b!4728936))

(declare-fun m!5669589 () Bool)

(assert (=> d!1507048 m!5669589))

(declare-fun m!5669591 () Bool)

(assert (=> d!1507048 m!5669591))

(assert (=> b!4728935 m!5669357))

(assert (=> b!4728935 m!5669357))

(assert (=> b!4728935 m!5669359))

(assert (=> b!4728715 d!1507048))

(declare-fun d!1507056 () Bool)

(declare-fun res!2001726 () Bool)

(declare-fun e!2949458 () Bool)

(assert (=> d!1507056 (=> res!2001726 e!2949458)))

(assert (=> d!1507056 (= res!2001726 ((_ is Nil!52879) lt!1892767))))

(assert (=> d!1507056 (= (forall!11625 lt!1892767 lambda!216768) e!2949458)))

(declare-fun b!4728942 () Bool)

(declare-fun e!2949459 () Bool)

(assert (=> b!4728942 (= e!2949458 e!2949459)))

(declare-fun res!2001727 () Bool)

(assert (=> b!4728942 (=> (not res!2001727) (not e!2949459))))

(assert (=> b!4728942 (= res!2001727 (dynLambda!21839 lambda!216768 (h!59238 lt!1892767)))))

(declare-fun b!4728943 () Bool)

(assert (=> b!4728943 (= e!2949459 (forall!11625 (t!360279 lt!1892767) lambda!216768))))

(assert (= (and d!1507056 (not res!2001726)) b!4728942))

(assert (= (and b!4728942 res!2001727) b!4728943))

(declare-fun b_lambda!179965 () Bool)

(assert (=> (not b_lambda!179965) (not b!4728942)))

(declare-fun m!5669597 () Bool)

(assert (=> b!4728942 m!5669597))

(declare-fun m!5669599 () Bool)

(assert (=> b!4728943 m!5669599))

(assert (=> b!4728705 d!1507056))

(declare-fun bs!1118740 () Bool)

(declare-fun d!1507060 () Bool)

(assert (= bs!1118740 (and d!1507060 d!1506992)))

(declare-fun lambda!216836 () Int)

(assert (=> bs!1118740 (= lambda!216836 lambda!216774)))

(declare-fun bs!1118741 () Bool)

(assert (= bs!1118741 (and d!1507060 d!1507048)))

(assert (=> bs!1118741 (not (= lambda!216836 lambda!216835))))

(declare-fun bs!1118742 () Bool)

(assert (= bs!1118742 (and d!1507060 start!481760)))

(assert (=> bs!1118742 (not (= lambda!216836 lambda!216768))))

(declare-fun bs!1118743 () Bool)

(assert (= bs!1118743 (and d!1507060 d!1507038)))

(assert (=> bs!1118743 (not (= lambda!216836 lambda!216825))))

(declare-fun bs!1118744 () Bool)

(assert (= bs!1118744 (and d!1507060 d!1507002)))

(assert (=> bs!1118744 (not (= lambda!216836 lambda!216819))))

(assert (=> d!1507060 true))

(assert (=> d!1507060 (= (allKeysSameHashInMap!1946 (ListLongMap!4484 lt!1892767) hashF!1323) (forall!11625 (toList!5953 (ListLongMap!4484 lt!1892767)) lambda!216836))))

(declare-fun bs!1118745 () Bool)

(assert (= bs!1118745 d!1507060))

(declare-fun m!5669603 () Bool)

(assert (=> bs!1118745 m!5669603))

(assert (=> b!4728716 d!1507060))

(declare-fun d!1507064 () Bool)

(declare-fun lt!1892978 () List!53002)

(assert (=> d!1507064 (not (containsKey!3402 lt!1892978 key!4653))))

(declare-fun e!2949473 () List!53002)

(assert (=> d!1507064 (= lt!1892978 e!2949473)))

(declare-fun c!807598 () Bool)

(assert (=> d!1507064 (= c!807598 (and ((_ is Cons!52878) oldBucket!34) (= (_1!30555 (h!59237 oldBucket!34)) key!4653)))))

(assert (=> d!1507064 (noDuplicateKeys!2032 oldBucket!34)))

(assert (=> d!1507064 (= (removePairForKey!1627 oldBucket!34 key!4653) lt!1892978)))

(declare-fun b!4728961 () Bool)

(declare-fun e!2949472 () List!53002)

(assert (=> b!4728961 (= e!2949473 e!2949472)))

(declare-fun c!807599 () Bool)

(assert (=> b!4728961 (= c!807599 ((_ is Cons!52878) oldBucket!34))))

(declare-fun b!4728960 () Bool)

(assert (=> b!4728960 (= e!2949473 (t!360278 oldBucket!34))))

(declare-fun b!4728962 () Bool)

(assert (=> b!4728962 (= e!2949472 (Cons!52878 (h!59237 oldBucket!34) (removePairForKey!1627 (t!360278 oldBucket!34) key!4653)))))

(declare-fun b!4728963 () Bool)

(assert (=> b!4728963 (= e!2949472 Nil!52878)))

(assert (= (and d!1507064 c!807598) b!4728960))

(assert (= (and d!1507064 (not c!807598)) b!4728961))

(assert (= (and b!4728961 c!807599) b!4728962))

(assert (= (and b!4728961 (not c!807599)) b!4728963))

(declare-fun m!5669615 () Bool)

(assert (=> d!1507064 m!5669615))

(assert (=> d!1507064 m!5669305))

(assert (=> b!4728962 m!5669299))

(assert (=> b!4728706 d!1507064))

(declare-fun d!1507074 () Bool)

(assert (=> d!1507074 true))

(assert (=> d!1507074 true))

(declare-fun lambda!216840 () Int)

(declare-fun forall!11627 (List!53002 Int) Bool)

(assert (=> d!1507074 (= (allKeysSameHash!1858 oldBucket!34 hash!405 hashF!1323) (forall!11627 oldBucket!34 lambda!216840))))

(declare-fun bs!1118753 () Bool)

(assert (= bs!1118753 d!1507074))

(declare-fun m!5669619 () Bool)

(assert (=> bs!1118753 m!5669619))

(assert (=> b!4728717 d!1507074))

(declare-fun d!1507078 () Bool)

(assert (=> d!1507078 (= (head!10272 (toList!5953 lm!2023)) (h!59238 (toList!5953 lm!2023)))))

(assert (=> b!4728707 d!1507078))

(declare-fun d!1507080 () Bool)

(declare-fun hash!4415 (Hashable!6401 K!14230) (_ BitVec 64))

(assert (=> d!1507080 (= (hash!4413 hashF!1323 key!4653) (hash!4415 hashF!1323 key!4653))))

(declare-fun bs!1118754 () Bool)

(assert (= bs!1118754 d!1507080))

(declare-fun m!5669621 () Bool)

(assert (=> bs!1118754 m!5669621))

(assert (=> b!4728708 d!1507080))

(declare-fun d!1507082 () Bool)

(declare-fun res!2001736 () Bool)

(declare-fun e!2949476 () Bool)

(assert (=> d!1507082 (=> res!2001736 e!2949476)))

(assert (=> d!1507082 (= res!2001736 (not ((_ is Cons!52878) oldBucket!34)))))

(assert (=> d!1507082 (= (noDuplicateKeys!2032 oldBucket!34) e!2949476)))

(declare-fun b!4728972 () Bool)

(declare-fun e!2949477 () Bool)

(assert (=> b!4728972 (= e!2949476 e!2949477)))

(declare-fun res!2001737 () Bool)

(assert (=> b!4728972 (=> (not res!2001737) (not e!2949477))))

(assert (=> b!4728972 (= res!2001737 (not (containsKey!3402 (t!360278 oldBucket!34) (_1!30555 (h!59237 oldBucket!34)))))))

(declare-fun b!4728973 () Bool)

(assert (=> b!4728973 (= e!2949477 (noDuplicateKeys!2032 (t!360278 oldBucket!34)))))

(assert (= (and d!1507082 (not res!2001736)) b!4728972))

(assert (= (and b!4728972 res!2001737) b!4728973))

(declare-fun m!5669623 () Bool)

(assert (=> b!4728972 m!5669623))

(declare-fun m!5669625 () Bool)

(assert (=> b!4728973 m!5669625))

(assert (=> b!4728719 d!1507082))

(declare-fun d!1507084 () Bool)

(declare-fun res!2001738 () Bool)

(declare-fun e!2949478 () Bool)

(assert (=> d!1507084 (=> res!2001738 e!2949478)))

(assert (=> d!1507084 (= res!2001738 ((_ is Nil!52879) (toList!5953 lm!2023)))))

(assert (=> d!1507084 (= (forall!11625 (toList!5953 lm!2023) lambda!216768) e!2949478)))

(declare-fun b!4728974 () Bool)

(declare-fun e!2949479 () Bool)

(assert (=> b!4728974 (= e!2949478 e!2949479)))

(declare-fun res!2001739 () Bool)

(assert (=> b!4728974 (=> (not res!2001739) (not e!2949479))))

(assert (=> b!4728974 (= res!2001739 (dynLambda!21839 lambda!216768 (h!59238 (toList!5953 lm!2023))))))

(declare-fun b!4728975 () Bool)

(assert (=> b!4728975 (= e!2949479 (forall!11625 (t!360279 (toList!5953 lm!2023)) lambda!216768))))

(assert (= (and d!1507084 (not res!2001738)) b!4728974))

(assert (= (and b!4728974 res!2001739) b!4728975))

(declare-fun b_lambda!179967 () Bool)

(assert (=> (not b_lambda!179967) (not b!4728974)))

(declare-fun m!5669627 () Bool)

(assert (=> b!4728974 m!5669627))

(declare-fun m!5669629 () Bool)

(assert (=> b!4728975 m!5669629))

(assert (=> start!481760 d!1507084))

(declare-fun d!1507086 () Bool)

(declare-fun isStrictlySorted!761 (List!53003) Bool)

(assert (=> d!1507086 (= (inv!68104 lm!2023) (isStrictlySorted!761 (toList!5953 lm!2023)))))

(declare-fun bs!1118755 () Bool)

(assert (= bs!1118755 d!1507086))

(declare-fun m!5669631 () Bool)

(assert (=> bs!1118755 m!5669631))

(assert (=> start!481760 d!1507086))

(declare-fun d!1507088 () Bool)

(declare-fun lt!1892980 () List!53002)

(assert (=> d!1507088 (not (containsKey!3402 lt!1892980 key!4653))))

(declare-fun e!2949481 () List!53002)

(assert (=> d!1507088 (= lt!1892980 e!2949481)))

(declare-fun c!807602 () Bool)

(assert (=> d!1507088 (= c!807602 (and ((_ is Cons!52878) (t!360278 oldBucket!34)) (= (_1!30555 (h!59237 (t!360278 oldBucket!34))) key!4653)))))

(assert (=> d!1507088 (noDuplicateKeys!2032 (t!360278 oldBucket!34))))

(assert (=> d!1507088 (= (removePairForKey!1627 (t!360278 oldBucket!34) key!4653) lt!1892980)))

(declare-fun b!4728977 () Bool)

(declare-fun e!2949480 () List!53002)

(assert (=> b!4728977 (= e!2949481 e!2949480)))

(declare-fun c!807603 () Bool)

(assert (=> b!4728977 (= c!807603 ((_ is Cons!52878) (t!360278 oldBucket!34)))))

(declare-fun b!4728976 () Bool)

(assert (=> b!4728976 (= e!2949481 (t!360278 (t!360278 oldBucket!34)))))

(declare-fun b!4728978 () Bool)

(assert (=> b!4728978 (= e!2949480 (Cons!52878 (h!59237 (t!360278 oldBucket!34)) (removePairForKey!1627 (t!360278 (t!360278 oldBucket!34)) key!4653)))))

(declare-fun b!4728979 () Bool)

(assert (=> b!4728979 (= e!2949480 Nil!52878)))

(assert (= (and d!1507088 c!807602) b!4728976))

(assert (= (and d!1507088 (not c!807602)) b!4728977))

(assert (= (and b!4728977 c!807603) b!4728978))

(assert (= (and b!4728977 (not c!807603)) b!4728979))

(declare-fun m!5669633 () Bool)

(assert (=> d!1507088 m!5669633))

(assert (=> d!1507088 m!5669625))

(declare-fun m!5669635 () Bool)

(assert (=> b!4728978 m!5669635))

(assert (=> b!4728709 d!1507088))

(declare-fun bs!1118771 () Bool)

(declare-fun b!4729039 () Bool)

(assert (= bs!1118771 (and b!4729039 d!1507074)))

(declare-fun lambda!216871 () Int)

(assert (=> bs!1118771 (not (= lambda!216871 lambda!216840))))

(assert (=> b!4729039 true))

(declare-fun bs!1118772 () Bool)

(declare-fun b!4729036 () Bool)

(assert (= bs!1118772 (and b!4729036 d!1507074)))

(declare-fun lambda!216872 () Int)

(assert (=> bs!1118772 (not (= lambda!216872 lambda!216840))))

(declare-fun bs!1118773 () Bool)

(assert (= bs!1118773 (and b!4729036 b!4729039)))

(assert (=> bs!1118773 (= lambda!216872 lambda!216871)))

(assert (=> b!4729036 true))

(declare-fun lambda!216873 () Int)

(assert (=> bs!1118772 (not (= lambda!216873 lambda!216840))))

(declare-fun lt!1893054 () ListMap!5317)

(assert (=> bs!1118773 (= (= lt!1893054 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216873 lambda!216871))))

(assert (=> b!4729036 (= (= lt!1893054 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216873 lambda!216872))))

(assert (=> b!4729036 true))

(declare-fun bs!1118774 () Bool)

(declare-fun d!1507090 () Bool)

(assert (= bs!1118774 (and d!1507090 d!1507074)))

(declare-fun lambda!216874 () Int)

(assert (=> bs!1118774 (not (= lambda!216874 lambda!216840))))

(declare-fun bs!1118775 () Bool)

(assert (= bs!1118775 (and d!1507090 b!4729039)))

(declare-fun lt!1893065 () ListMap!5317)

(assert (=> bs!1118775 (= (= lt!1893065 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216874 lambda!216871))))

(declare-fun bs!1118776 () Bool)

(assert (= bs!1118776 (and d!1507090 b!4729036)))

(assert (=> bs!1118776 (= (= lt!1893065 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216874 lambda!216872))))

(assert (=> bs!1118776 (= (= lt!1893065 lt!1893054) (= lambda!216874 lambda!216873))))

(assert (=> d!1507090 true))

(declare-fun bm!330798 () Bool)

(declare-fun call!330804 () Unit!131227)

(declare-fun lemmaContainsAllItsOwnKeys!808 (ListMap!5317) Unit!131227)

(assert (=> bm!330798 (= call!330804 (lemmaContainsAllItsOwnKeys!808 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))

(declare-fun e!2949519 () ListMap!5317)

(assert (=> b!4729036 (= e!2949519 lt!1893054)))

(declare-fun lt!1893051 () ListMap!5317)

(declare-fun +!2280 (ListMap!5317 tuple2!54522) ListMap!5317)

(assert (=> b!4729036 (= lt!1893051 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (=> b!4729036 (= lt!1893054 (addToMapMapFromBucket!1462 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893058 () Unit!131227)

(assert (=> b!4729036 (= lt!1893058 call!330804)))

(assert (=> b!4729036 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) lambda!216872)))

(declare-fun lt!1893053 () Unit!131227)

(assert (=> b!4729036 (= lt!1893053 lt!1893058)))

(assert (=> b!4729036 (forall!11627 (toList!5954 lt!1893051) lambda!216873)))

(declare-fun lt!1893067 () Unit!131227)

(declare-fun Unit!131246 () Unit!131227)

(assert (=> b!4729036 (= lt!1893067 Unit!131246)))

(assert (=> b!4729036 (forall!11627 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))) lambda!216873)))

(declare-fun lt!1893064 () Unit!131227)

(declare-fun Unit!131247 () Unit!131227)

(assert (=> b!4729036 (= lt!1893064 Unit!131247)))

(declare-fun lt!1893062 () Unit!131227)

(declare-fun Unit!131248 () Unit!131227)

(assert (=> b!4729036 (= lt!1893062 Unit!131248)))

(declare-fun lt!1893050 () Unit!131227)

(declare-fun forallContained!3667 (List!53002 Int tuple2!54522) Unit!131227)

(assert (=> b!4729036 (= lt!1893050 (forallContained!3667 (toList!5954 lt!1893051) lambda!216873 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (=> b!4729036 (contains!16239 lt!1893051 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(declare-fun lt!1893066 () Unit!131227)

(declare-fun Unit!131249 () Unit!131227)

(assert (=> b!4729036 (= lt!1893066 Unit!131249)))

(assert (=> b!4729036 (contains!16239 lt!1893054 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(declare-fun lt!1893056 () Unit!131227)

(declare-fun Unit!131250 () Unit!131227)

(assert (=> b!4729036 (= lt!1893056 Unit!131250)))

(declare-fun call!330805 () Bool)

(assert (=> b!4729036 call!330805))

(declare-fun lt!1893060 () Unit!131227)

(declare-fun Unit!131251 () Unit!131227)

(assert (=> b!4729036 (= lt!1893060 Unit!131251)))

(assert (=> b!4729036 (forall!11627 (toList!5954 lt!1893051) lambda!216873)))

(declare-fun lt!1893055 () Unit!131227)

(declare-fun Unit!131252 () Unit!131227)

(assert (=> b!4729036 (= lt!1893055 Unit!131252)))

(declare-fun lt!1893057 () Unit!131227)

(declare-fun Unit!131253 () Unit!131227)

(assert (=> b!4729036 (= lt!1893057 Unit!131253)))

(declare-fun lt!1893059 () Unit!131227)

(declare-fun addForallContainsKeyThenBeforeAdding!807 (ListMap!5317 ListMap!5317 K!14230 V!14476) Unit!131227)

(assert (=> b!4729036 (= lt!1893059 (addForallContainsKeyThenBeforeAdding!807 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893054 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> b!4729036 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) lambda!216873)))

(declare-fun lt!1893049 () Unit!131227)

(assert (=> b!4729036 (= lt!1893049 lt!1893059)))

(declare-fun call!330803 () Bool)

(assert (=> b!4729036 call!330803))

(declare-fun lt!1893069 () Unit!131227)

(declare-fun Unit!131254 () Unit!131227)

(assert (=> b!4729036 (= lt!1893069 Unit!131254)))

(declare-fun res!2001758 () Bool)

(assert (=> b!4729036 (= res!2001758 (forall!11627 (_2!30556 (h!59238 (toList!5953 lm!2023))) lambda!216873))))

(declare-fun e!2949520 () Bool)

(assert (=> b!4729036 (=> (not res!2001758) (not e!2949520))))

(assert (=> b!4729036 e!2949520))

(declare-fun lt!1893052 () Unit!131227)

(declare-fun Unit!131255 () Unit!131227)

(assert (=> b!4729036 (= lt!1893052 Unit!131255)))

(declare-fun b!4729037 () Bool)

(declare-fun res!2001759 () Bool)

(declare-fun e!2949518 () Bool)

(assert (=> b!4729037 (=> (not res!2001759) (not e!2949518))))

(assert (=> b!4729037 (= res!2001759 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) lambda!216874))))

(declare-fun b!4729038 () Bool)

(assert (=> b!4729038 (= e!2949518 (invariantList!1523 (toList!5954 lt!1893065)))))

(declare-fun bm!330800 () Bool)

(declare-fun c!807618 () Bool)

(assert (=> bm!330800 (= call!330803 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (ite c!807618 lambda!216871 lambda!216873)))))

(assert (=> b!4729039 (= e!2949519 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))

(declare-fun lt!1893061 () Unit!131227)

(assert (=> b!4729039 (= lt!1893061 call!330804)))

(assert (=> b!4729039 call!330805))

(declare-fun lt!1893068 () Unit!131227)

(assert (=> b!4729039 (= lt!1893068 lt!1893061)))

(assert (=> b!4729039 call!330803))

(declare-fun lt!1893063 () Unit!131227)

(declare-fun Unit!131256 () Unit!131227)

(assert (=> b!4729039 (= lt!1893063 Unit!131256)))

(declare-fun b!4729040 () Bool)

(assert (=> b!4729040 (= e!2949520 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) lambda!216873))))

(declare-fun bm!330799 () Bool)

(assert (=> bm!330799 (= call!330805 (forall!11627 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))) (ite c!807618 lambda!216871 lambda!216873)))))

(assert (=> d!1507090 e!2949518))

(declare-fun res!2001757 () Bool)

(assert (=> d!1507090 (=> (not res!2001757) (not e!2949518))))

(assert (=> d!1507090 (= res!2001757 (forall!11627 (_2!30556 (h!59238 (toList!5953 lm!2023))) lambda!216874))))

(assert (=> d!1507090 (= lt!1893065 e!2949519)))

(assert (=> d!1507090 (= c!807618 ((_ is Nil!52878) (_2!30556 (h!59238 (toList!5953 lm!2023)))))))

(assert (=> d!1507090 (noDuplicateKeys!2032 (_2!30556 (h!59238 (toList!5953 lm!2023))))))

(assert (=> d!1507090 (= (addToMapMapFromBucket!1462 (_2!30556 (h!59238 (toList!5953 lm!2023))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) lt!1893065)))

(assert (= (and d!1507090 c!807618) b!4729039))

(assert (= (and d!1507090 (not c!807618)) b!4729036))

(assert (= (and b!4729036 res!2001758) b!4729040))

(assert (= (or b!4729039 b!4729036) bm!330798))

(assert (= (or b!4729039 b!4729036) bm!330800))

(assert (= (or b!4729039 b!4729036) bm!330799))

(assert (= (and d!1507090 res!2001757) b!4729037))

(assert (= (and b!4729037 res!2001759) b!4729038))

(declare-fun m!5669677 () Bool)

(assert (=> b!4729036 m!5669677))

(declare-fun m!5669679 () Bool)

(assert (=> b!4729036 m!5669679))

(declare-fun m!5669681 () Bool)

(assert (=> b!4729036 m!5669681))

(assert (=> b!4729036 m!5669681))

(declare-fun m!5669683 () Bool)

(assert (=> b!4729036 m!5669683))

(declare-fun m!5669685 () Bool)

(assert (=> b!4729036 m!5669685))

(assert (=> b!4729036 m!5669357))

(declare-fun m!5669687 () Bool)

(assert (=> b!4729036 m!5669687))

(declare-fun m!5669689 () Bool)

(assert (=> b!4729036 m!5669689))

(declare-fun m!5669691 () Bool)

(assert (=> b!4729036 m!5669691))

(declare-fun m!5669693 () Bool)

(assert (=> b!4729036 m!5669693))

(assert (=> b!4729036 m!5669357))

(assert (=> b!4729036 m!5669683))

(declare-fun m!5669695 () Bool)

(assert (=> b!4729036 m!5669695))

(declare-fun m!5669697 () Bool)

(assert (=> b!4729036 m!5669697))

(declare-fun m!5669699 () Bool)

(assert (=> b!4729037 m!5669699))

(declare-fun m!5669701 () Bool)

(assert (=> d!1507090 m!5669701))

(declare-fun m!5669703 () Bool)

(assert (=> d!1507090 m!5669703))

(assert (=> bm!330798 m!5669357))

(declare-fun m!5669705 () Bool)

(assert (=> bm!330798 m!5669705))

(assert (=> b!4729040 m!5669677))

(declare-fun m!5669707 () Bool)

(assert (=> b!4729038 m!5669707))

(declare-fun m!5669709 () Bool)

(assert (=> bm!330800 m!5669709))

(declare-fun m!5669711 () Bool)

(assert (=> bm!330799 m!5669711))

(assert (=> b!4728720 d!1507090))

(declare-fun bs!1118777 () Bool)

(declare-fun d!1507108 () Bool)

(assert (= bs!1118777 (and d!1507108 d!1506992)))

(declare-fun lambda!216875 () Int)

(assert (=> bs!1118777 (not (= lambda!216875 lambda!216774))))

(declare-fun bs!1118778 () Bool)

(assert (= bs!1118778 (and d!1507108 d!1507048)))

(assert (=> bs!1118778 (= lambda!216875 lambda!216835)))

(declare-fun bs!1118779 () Bool)

(assert (= bs!1118779 (and d!1507108 d!1507060)))

(assert (=> bs!1118779 (not (= lambda!216875 lambda!216836))))

(declare-fun bs!1118780 () Bool)

(assert (= bs!1118780 (and d!1507108 start!481760)))

(assert (=> bs!1118780 (= lambda!216875 lambda!216768)))

(declare-fun bs!1118781 () Bool)

(assert (= bs!1118781 (and d!1507108 d!1507038)))

(assert (=> bs!1118781 (= lambda!216875 lambda!216825)))

(declare-fun bs!1118782 () Bool)

(assert (= bs!1118782 (and d!1507108 d!1507002)))

(assert (=> bs!1118782 (= lambda!216875 lambda!216819)))

(declare-fun lt!1893070 () ListMap!5317)

(assert (=> d!1507108 (invariantList!1523 (toList!5954 lt!1893070))))

(declare-fun e!2949521 () ListMap!5317)

(assert (=> d!1507108 (= lt!1893070 e!2949521)))

(declare-fun c!807619 () Bool)

(assert (=> d!1507108 (= c!807619 ((_ is Cons!52879) (t!360279 (toList!5953 lm!2023))))))

(assert (=> d!1507108 (forall!11625 (t!360279 (toList!5953 lm!2023)) lambda!216875)))

(assert (=> d!1507108 (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893070)))

(declare-fun b!4729043 () Bool)

(assert (=> b!4729043 (= e!2949521 (addToMapMapFromBucket!1462 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))))))

(declare-fun b!4729044 () Bool)

(assert (=> b!4729044 (= e!2949521 (ListMap!5318 Nil!52878))))

(assert (= (and d!1507108 c!807619) b!4729043))

(assert (= (and d!1507108 (not c!807619)) b!4729044))

(declare-fun m!5669713 () Bool)

(assert (=> d!1507108 m!5669713))

(declare-fun m!5669715 () Bool)

(assert (=> d!1507108 m!5669715))

(declare-fun m!5669717 () Bool)

(assert (=> b!4729043 m!5669717))

(assert (=> b!4729043 m!5669717))

(declare-fun m!5669719 () Bool)

(assert (=> b!4729043 m!5669719))

(assert (=> b!4728720 d!1507108))

(declare-fun d!1507110 () Bool)

(declare-fun lt!1893071 () List!53002)

(assert (=> d!1507110 (not (containsKey!3402 lt!1893071 key!4653))))

(declare-fun e!2949523 () List!53002)

(assert (=> d!1507110 (= lt!1893071 e!2949523)))

(declare-fun c!807620 () Bool)

(assert (=> d!1507110 (= c!807620 (and ((_ is Cons!52878) (tail!9041 oldBucket!34)) (= (_1!30555 (h!59237 (tail!9041 oldBucket!34))) key!4653)))))

(assert (=> d!1507110 (noDuplicateKeys!2032 (tail!9041 oldBucket!34))))

(assert (=> d!1507110 (= (removePairForKey!1627 (tail!9041 oldBucket!34) key!4653) lt!1893071)))

(declare-fun b!4729046 () Bool)

(declare-fun e!2949522 () List!53002)

(assert (=> b!4729046 (= e!2949523 e!2949522)))

(declare-fun c!807621 () Bool)

(assert (=> b!4729046 (= c!807621 ((_ is Cons!52878) (tail!9041 oldBucket!34)))))

(declare-fun b!4729045 () Bool)

(assert (=> b!4729045 (= e!2949523 (t!360278 (tail!9041 oldBucket!34)))))

(declare-fun b!4729047 () Bool)

(assert (=> b!4729047 (= e!2949522 (Cons!52878 (h!59237 (tail!9041 oldBucket!34)) (removePairForKey!1627 (t!360278 (tail!9041 oldBucket!34)) key!4653)))))

(declare-fun b!4729048 () Bool)

(assert (=> b!4729048 (= e!2949522 Nil!52878)))

(assert (= (and d!1507110 c!807620) b!4729045))

(assert (= (and d!1507110 (not c!807620)) b!4729046))

(assert (= (and b!4729046 c!807621) b!4729047))

(assert (= (and b!4729046 (not c!807621)) b!4729048))

(declare-fun m!5669721 () Bool)

(assert (=> d!1507110 m!5669721))

(assert (=> d!1507110 m!5669345))

(declare-fun m!5669723 () Bool)

(assert (=> d!1507110 m!5669723))

(declare-fun m!5669725 () Bool)

(assert (=> b!4729047 m!5669725))

(assert (=> b!4728710 d!1507110))

(declare-fun d!1507112 () Bool)

(assert (=> d!1507112 (= (tail!9041 oldBucket!34) (t!360278 oldBucket!34))))

(assert (=> b!4728710 d!1507112))

(declare-fun d!1507114 () Bool)

(assert (=> d!1507114 (= (tail!9041 newBucket!218) (t!360278 newBucket!218))))

(assert (=> b!4728710 d!1507114))

(declare-fun bs!1118783 () Bool)

(declare-fun d!1507116 () Bool)

(assert (= bs!1118783 (and d!1507116 d!1507090)))

(declare-fun lambda!216876 () Int)

(assert (=> bs!1118783 (not (= lambda!216876 lambda!216874))))

(declare-fun bs!1118784 () Bool)

(assert (= bs!1118784 (and d!1507116 b!4729036)))

(assert (=> bs!1118784 (not (= lambda!216876 lambda!216872))))

(declare-fun bs!1118785 () Bool)

(assert (= bs!1118785 (and d!1507116 d!1507074)))

(assert (=> bs!1118785 (= lambda!216876 lambda!216840)))

(declare-fun bs!1118786 () Bool)

(assert (= bs!1118786 (and d!1507116 b!4729039)))

(assert (=> bs!1118786 (not (= lambda!216876 lambda!216871))))

(assert (=> bs!1118784 (not (= lambda!216876 lambda!216873))))

(assert (=> d!1507116 true))

(assert (=> d!1507116 true))

(assert (=> d!1507116 (= (allKeysSameHash!1858 newBucket!218 hash!405 hashF!1323) (forall!11627 newBucket!218 lambda!216876))))

(declare-fun bs!1118787 () Bool)

(assert (= bs!1118787 d!1507116))

(declare-fun m!5669727 () Bool)

(assert (=> bs!1118787 m!5669727))

(assert (=> b!4728721 d!1507116))

(declare-fun e!2949526 () Bool)

(declare-fun b!4729053 () Bool)

(declare-fun tp!1348742 () Bool)

(assert (=> b!4729053 (= e!2949526 (and tp_is_empty!31421 tp_is_empty!31423 tp!1348742))))

(assert (=> b!4728723 (= tp!1348728 e!2949526)))

(assert (= (and b!4728723 ((_ is Cons!52878) (t!360278 oldBucket!34))) b!4729053))

(declare-fun e!2949527 () Bool)

(declare-fun tp!1348743 () Bool)

(declare-fun b!4729054 () Bool)

(assert (=> b!4729054 (= e!2949527 (and tp_is_empty!31421 tp_is_empty!31423 tp!1348743))))

(assert (=> b!4728718 (= tp!1348729 e!2949527)))

(assert (= (and b!4728718 ((_ is Cons!52878) (t!360278 newBucket!218))) b!4729054))

(declare-fun b!4729059 () Bool)

(declare-fun e!2949530 () Bool)

(declare-fun tp!1348748 () Bool)

(declare-fun tp!1348749 () Bool)

(assert (=> b!4729059 (= e!2949530 (and tp!1348748 tp!1348749))))

(assert (=> b!4728711 (= tp!1348727 e!2949530)))

(assert (= (and b!4728711 ((_ is Cons!52879) (toList!5953 lm!2023))) b!4729059))

(declare-fun b_lambda!179975 () Bool)

(assert (= b_lambda!179965 (or start!481760 b_lambda!179975)))

(declare-fun bs!1118788 () Bool)

(declare-fun d!1507118 () Bool)

(assert (= bs!1118788 (and d!1507118 start!481760)))

(assert (=> bs!1118788 (= (dynLambda!21839 lambda!216768 (h!59238 lt!1892767)) (noDuplicateKeys!2032 (_2!30556 (h!59238 lt!1892767))))))

(declare-fun m!5669729 () Bool)

(assert (=> bs!1118788 m!5669729))

(assert (=> b!4728942 d!1507118))

(declare-fun b_lambda!179977 () Bool)

(assert (= b_lambda!179967 (or start!481760 b_lambda!179977)))

(declare-fun bs!1118789 () Bool)

(declare-fun d!1507120 () Bool)

(assert (= bs!1118789 (and d!1507120 start!481760)))

(assert (=> bs!1118789 (= (dynLambda!21839 lambda!216768 (h!59238 (toList!5953 lm!2023))) (noDuplicateKeys!2032 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))

(assert (=> bs!1118789 m!5669703))

(assert (=> b!4728974 d!1507120))

(declare-fun b_lambda!179979 () Bool)

(assert (= b_lambda!179963 (or start!481760 b_lambda!179979)))

(declare-fun bs!1118790 () Bool)

(declare-fun d!1507122 () Bool)

(assert (= bs!1118790 (and d!1507122 start!481760)))

(assert (=> bs!1118790 (= (dynLambda!21839 lambda!216768 lt!1892769) (noDuplicateKeys!2032 (_2!30556 lt!1892769)))))

(declare-fun m!5669731 () Bool)

(assert (=> bs!1118790 m!5669731))

(assert (=> d!1507042 d!1507122))

(check-sat (not d!1507090) (not b!4728978) (not d!1507002) (not b!4728806) (not b!4729038) (not b!4728910) (not d!1507108) (not d!1506992) (not b!4728935) (not d!1506998) (not d!1507030) (not b!4728807) (not b!4728943) (not bs!1118788) (not b!4728747) (not bs!1118790) (not d!1507046) (not d!1507048) (not d!1506996) (not b!4729053) tp_is_empty!31423 (not b!4728975) (not b_lambda!179979) (not b!4728808) (not d!1507116) (not b!4728864) (not b!4728903) (not d!1507064) (not d!1507040) (not d!1507110) (not bm!330788) (not b!4728866) (not b!4728905) (not b!4728839) (not b!4728847) (not b!4728841) (not d!1507038) (not bs!1118789) (not b!4728906) (not b!4728908) (not b!4729037) (not b!4728962) (not b!4728739) (not b!4728867) (not b_lambda!179975) tp_is_empty!31421 (not d!1507042) (not b!4729047) (not b!4729043) (not d!1507086) (not b!4728738) (not b!4728907) (not b!4728805) (not b!4729054) (not b!4729036) (not b!4728871) (not d!1507036) (not b!4728869) (not d!1506994) (not b!4728874) (not d!1507074) (not d!1507026) (not b!4728911) (not b!4728876) (not b!4729040) (not b_lambda!179977) (not bm!330799) (not d!1507060) (not b!4728972) (not b!4729059) (not bm!330800) (not d!1507000) (not bm!330798) (not b!4728973) (not d!1507088) (not d!1507080))
(check-sat)
(get-model)

(declare-fun d!1507338 () Bool)

(assert (=> d!1507338 (dynLambda!21839 lambda!216768 lt!1892769)))

(assert (=> d!1507338 true))

(declare-fun _$7!2255 () Unit!131227)

(assert (=> d!1507338 (= (choose!33428 (toList!5953 lm!2023) lambda!216768 lt!1892769) _$7!2255)))

(declare-fun b_lambda!180065 () Bool)

(assert (=> (not b_lambda!180065) (not d!1507338)))

(declare-fun bs!1118919 () Bool)

(assert (= bs!1118919 d!1507338))

(assert (=> bs!1118919 m!5669533))

(assert (=> d!1507042 d!1507338))

(assert (=> d!1507042 d!1507084))

(declare-fun b!4729338 () Bool)

(declare-fun e!2949732 () Option!12391)

(assert (=> b!4729338 (= e!2949732 (Some!12390 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))

(declare-fun b!4729341 () Bool)

(declare-fun e!2949733 () Option!12391)

(assert (=> b!4729341 (= e!2949733 None!12390)))

(declare-fun d!1507340 () Bool)

(declare-fun c!807674 () Bool)

(assert (=> d!1507340 (= c!807674 (and ((_ is Cons!52879) (toList!5953 lm!2023)) (= (_1!30556 (h!59238 (toList!5953 lm!2023))) lt!1892869)))))

(assert (=> d!1507340 (= (getValueByKey!1977 (toList!5953 lm!2023) lt!1892869) e!2949732)))

(declare-fun b!4729339 () Bool)

(assert (=> b!4729339 (= e!2949732 e!2949733)))

(declare-fun c!807675 () Bool)

(assert (=> b!4729339 (= c!807675 (and ((_ is Cons!52879) (toList!5953 lm!2023)) (not (= (_1!30556 (h!59238 (toList!5953 lm!2023))) lt!1892869))))))

(declare-fun b!4729340 () Bool)

(assert (=> b!4729340 (= e!2949733 (getValueByKey!1977 (t!360279 (toList!5953 lm!2023)) lt!1892869))))

(assert (= (and d!1507340 c!807674) b!4729338))

(assert (= (and d!1507340 (not c!807674)) b!4729339))

(assert (= (and b!4729339 c!807675) b!4729340))

(assert (= (and b!4729339 (not c!807675)) b!4729341))

(declare-fun m!5670211 () Bool)

(assert (=> b!4729340 m!5670211))

(assert (=> b!4728808 d!1507340))

(declare-fun d!1507342 () Bool)

(declare-fun res!2001928 () Bool)

(declare-fun e!2949738 () Bool)

(assert (=> d!1507342 (=> res!2001928 e!2949738)))

(assert (=> d!1507342 (= res!2001928 ((_ is Nil!52878) oldBucket!34))))

(assert (=> d!1507342 (= (forall!11627 oldBucket!34 lambda!216840) e!2949738)))

(declare-fun b!4729346 () Bool)

(declare-fun e!2949739 () Bool)

(assert (=> b!4729346 (= e!2949738 e!2949739)))

(declare-fun res!2001929 () Bool)

(assert (=> b!4729346 (=> (not res!2001929) (not e!2949739))))

(declare-fun dynLambda!21841 (Int tuple2!54522) Bool)

(assert (=> b!4729346 (= res!2001929 (dynLambda!21841 lambda!216840 (h!59237 oldBucket!34)))))

(declare-fun b!4729347 () Bool)

(assert (=> b!4729347 (= e!2949739 (forall!11627 (t!360278 oldBucket!34) lambda!216840))))

(assert (= (and d!1507342 (not res!2001928)) b!4729346))

(assert (= (and b!4729346 res!2001929) b!4729347))

(declare-fun b_lambda!180067 () Bool)

(assert (=> (not b_lambda!180067) (not b!4729346)))

(declare-fun m!5670213 () Bool)

(assert (=> b!4729346 m!5670213))

(declare-fun m!5670215 () Bool)

(assert (=> b!4729347 m!5670215))

(assert (=> d!1507074 d!1507342))

(declare-fun d!1507344 () Bool)

(declare-fun choose!33435 (Hashable!6401 K!14230) (_ BitVec 64))

(assert (=> d!1507344 (= (hash!4415 hashF!1323 key!4653) (choose!33435 hashF!1323 key!4653))))

(declare-fun bs!1118920 () Bool)

(assert (= bs!1118920 d!1507344))

(declare-fun m!5670217 () Bool)

(assert (=> bs!1118920 m!5670217))

(assert (=> d!1507080 d!1507344))

(declare-fun d!1507346 () Bool)

(declare-fun isEmpty!29198 (Option!12391) Bool)

(assert (=> d!1507346 (= (isDefined!9645 (getValueByKey!1977 (toList!5953 lm!2023) lt!1892762)) (not (isEmpty!29198 (getValueByKey!1977 (toList!5953 lm!2023) lt!1892762))))))

(declare-fun bs!1118921 () Bool)

(assert (= bs!1118921 d!1507346))

(assert (=> bs!1118921 m!5669385))

(declare-fun m!5670219 () Bool)

(assert (=> bs!1118921 m!5670219))

(assert (=> b!4728841 d!1507346))

(declare-fun b!4729348 () Bool)

(declare-fun e!2949740 () Option!12391)

(assert (=> b!4729348 (= e!2949740 (Some!12390 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))

(declare-fun b!4729351 () Bool)

(declare-fun e!2949741 () Option!12391)

(assert (=> b!4729351 (= e!2949741 None!12390)))

(declare-fun d!1507348 () Bool)

(declare-fun c!807676 () Bool)

(assert (=> d!1507348 (= c!807676 (and ((_ is Cons!52879) (toList!5953 lm!2023)) (= (_1!30556 (h!59238 (toList!5953 lm!2023))) lt!1892762)))))

(assert (=> d!1507348 (= (getValueByKey!1977 (toList!5953 lm!2023) lt!1892762) e!2949740)))

(declare-fun b!4729349 () Bool)

(assert (=> b!4729349 (= e!2949740 e!2949741)))

(declare-fun c!807677 () Bool)

(assert (=> b!4729349 (= c!807677 (and ((_ is Cons!52879) (toList!5953 lm!2023)) (not (= (_1!30556 (h!59238 (toList!5953 lm!2023))) lt!1892762))))))

(declare-fun b!4729350 () Bool)

(assert (=> b!4729350 (= e!2949741 (getValueByKey!1977 (t!360279 (toList!5953 lm!2023)) lt!1892762))))

(assert (= (and d!1507348 c!807676) b!4729348))

(assert (= (and d!1507348 (not c!807676)) b!4729349))

(assert (= (and b!4729349 c!807677) b!4729350))

(assert (= (and b!4729349 (not c!807677)) b!4729351))

(declare-fun m!5670221 () Bool)

(assert (=> b!4729350 m!5670221))

(assert (=> b!4728841 d!1507348))

(declare-fun d!1507350 () Bool)

(declare-fun res!2001930 () Bool)

(declare-fun e!2949742 () Bool)

(assert (=> d!1507350 (=> res!2001930 e!2949742)))

(assert (=> d!1507350 (= res!2001930 (not ((_ is Cons!52878) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (=> d!1507350 (= (noDuplicateKeys!2032 (_2!30556 (h!59238 (toList!5953 lm!2023)))) e!2949742)))

(declare-fun b!4729352 () Bool)

(declare-fun e!2949743 () Bool)

(assert (=> b!4729352 (= e!2949742 e!2949743)))

(declare-fun res!2001931 () Bool)

(assert (=> b!4729352 (=> (not res!2001931) (not e!2949743))))

(assert (=> b!4729352 (= res!2001931 (not (containsKey!3402 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun b!4729353 () Bool)

(assert (=> b!4729353 (= e!2949743 (noDuplicateKeys!2032 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (= (and d!1507350 (not res!2001930)) b!4729352))

(assert (= (and b!4729352 res!2001931) b!4729353))

(declare-fun m!5670223 () Bool)

(assert (=> b!4729352 m!5670223))

(declare-fun m!5670225 () Bool)

(assert (=> b!4729353 m!5670225))

(assert (=> bs!1118789 d!1507350))

(declare-fun d!1507352 () Bool)

(declare-fun res!2001932 () Bool)

(declare-fun e!2949744 () Bool)

(assert (=> d!1507352 (=> res!2001932 e!2949744)))

(assert (=> d!1507352 (= res!2001932 ((_ is Nil!52879) (t!360279 lt!1892767)))))

(assert (=> d!1507352 (= (forall!11625 (t!360279 lt!1892767) lambda!216768) e!2949744)))

(declare-fun b!4729354 () Bool)

(declare-fun e!2949745 () Bool)

(assert (=> b!4729354 (= e!2949744 e!2949745)))

(declare-fun res!2001933 () Bool)

(assert (=> b!4729354 (=> (not res!2001933) (not e!2949745))))

(assert (=> b!4729354 (= res!2001933 (dynLambda!21839 lambda!216768 (h!59238 (t!360279 lt!1892767))))))

(declare-fun b!4729355 () Bool)

(assert (=> b!4729355 (= e!2949745 (forall!11625 (t!360279 (t!360279 lt!1892767)) lambda!216768))))

(assert (= (and d!1507352 (not res!2001932)) b!4729354))

(assert (= (and b!4729354 res!2001933) b!4729355))

(declare-fun b_lambda!180069 () Bool)

(assert (=> (not b_lambda!180069) (not b!4729354)))

(declare-fun m!5670227 () Bool)

(assert (=> b!4729354 m!5670227))

(declare-fun m!5670229 () Bool)

(assert (=> b!4729355 m!5670229))

(assert (=> b!4728943 d!1507352))

(declare-fun d!1507354 () Bool)

(declare-fun e!2949749 () Bool)

(assert (=> d!1507354 e!2949749))

(declare-fun res!2001936 () Bool)

(assert (=> d!1507354 (=> res!2001936 e!2949749)))

(declare-fun e!2949750 () Bool)

(assert (=> d!1507354 (= res!2001936 e!2949750)))

(declare-fun res!2001934 () Bool)

(assert (=> d!1507354 (=> (not res!2001934) (not e!2949750))))

(declare-fun lt!1893241 () Bool)

(assert (=> d!1507354 (= res!2001934 (not lt!1893241))))

(declare-fun lt!1893244 () Bool)

(assert (=> d!1507354 (= lt!1893241 lt!1893244)))

(declare-fun lt!1893246 () Unit!131227)

(declare-fun e!2949748 () Unit!131227)

(assert (=> d!1507354 (= lt!1893246 e!2949748)))

(declare-fun c!807679 () Bool)

(assert (=> d!1507354 (= c!807679 lt!1893244)))

(assert (=> d!1507354 (= lt!1893244 (containsKey!3406 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653))))

(assert (=> d!1507354 (= (contains!16239 (extractMap!2058 (toList!5953 lm!2023)) key!4653) lt!1893241)))

(declare-fun b!4729356 () Bool)

(assert (=> b!4729356 false))

(declare-fun lt!1893245 () Unit!131227)

(declare-fun lt!1893242 () Unit!131227)

(assert (=> b!4729356 (= lt!1893245 lt!1893242)))

(assert (=> b!4729356 (containsKey!3406 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653)))

(assert (=> b!4729356 (= lt!1893242 (lemmaInGetKeysListThenContainsKey!962 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653))))

(declare-fun e!2949746 () Unit!131227)

(declare-fun Unit!131278 () Unit!131227)

(assert (=> b!4729356 (= e!2949746 Unit!131278)))

(declare-fun b!4729357 () Bool)

(declare-fun Unit!131279 () Unit!131227)

(assert (=> b!4729357 (= e!2949746 Unit!131279)))

(declare-fun b!4729358 () Bool)

(declare-fun e!2949747 () List!53005)

(assert (=> b!4729358 (= e!2949747 (getKeysList!963 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))))))

(declare-fun b!4729359 () Bool)

(declare-fun e!2949751 () Bool)

(assert (=> b!4729359 (= e!2949751 (contains!16243 (keys!19004 (extractMap!2058 (toList!5953 lm!2023))) key!4653))))

(declare-fun b!4729360 () Bool)

(declare-fun lt!1893248 () Unit!131227)

(assert (=> b!4729360 (= e!2949748 lt!1893248)))

(declare-fun lt!1893243 () Unit!131227)

(assert (=> b!4729360 (= lt!1893243 (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653))))

(assert (=> b!4729360 (isDefined!9646 (getValueByKey!1978 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653))))

(declare-fun lt!1893247 () Unit!131227)

(assert (=> b!4729360 (= lt!1893247 lt!1893243)))

(assert (=> b!4729360 (= lt!1893248 (lemmaInListThenGetKeysListContains!958 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653))))

(declare-fun call!330815 () Bool)

(assert (=> b!4729360 call!330815))

(declare-fun bm!330810 () Bool)

(assert (=> bm!330810 (= call!330815 (contains!16243 e!2949747 key!4653))))

(declare-fun c!807680 () Bool)

(assert (=> bm!330810 (= c!807680 c!807679)))

(declare-fun b!4729361 () Bool)

(assert (=> b!4729361 (= e!2949747 (keys!19004 (extractMap!2058 (toList!5953 lm!2023))))))

(declare-fun b!4729362 () Bool)

(assert (=> b!4729362 (= e!2949748 e!2949746)))

(declare-fun c!807678 () Bool)

(assert (=> b!4729362 (= c!807678 call!330815)))

(declare-fun b!4729363 () Bool)

(assert (=> b!4729363 (= e!2949749 e!2949751)))

(declare-fun res!2001935 () Bool)

(assert (=> b!4729363 (=> (not res!2001935) (not e!2949751))))

(assert (=> b!4729363 (= res!2001935 (isDefined!9646 (getValueByKey!1978 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653)))))

(declare-fun b!4729364 () Bool)

(assert (=> b!4729364 (= e!2949750 (not (contains!16243 (keys!19004 (extractMap!2058 (toList!5953 lm!2023))) key!4653)))))

(assert (= (and d!1507354 c!807679) b!4729360))

(assert (= (and d!1507354 (not c!807679)) b!4729362))

(assert (= (and b!4729362 c!807678) b!4729356))

(assert (= (and b!4729362 (not c!807678)) b!4729357))

(assert (= (or b!4729360 b!4729362) bm!330810))

(assert (= (and bm!330810 c!807680) b!4729358))

(assert (= (and bm!330810 (not c!807680)) b!4729361))

(assert (= (and d!1507354 res!2001934) b!4729364))

(assert (= (and d!1507354 (not res!2001936)) b!4729363))

(assert (= (and b!4729363 res!2001935) b!4729359))

(declare-fun m!5670231 () Bool)

(assert (=> b!4729358 m!5670231))

(declare-fun m!5670233 () Bool)

(assert (=> b!4729356 m!5670233))

(declare-fun m!5670235 () Bool)

(assert (=> b!4729356 m!5670235))

(declare-fun m!5670237 () Bool)

(assert (=> bm!330810 m!5670237))

(declare-fun m!5670239 () Bool)

(assert (=> b!4729363 m!5670239))

(assert (=> b!4729363 m!5670239))

(declare-fun m!5670241 () Bool)

(assert (=> b!4729363 m!5670241))

(assert (=> b!4729359 m!5669303))

(declare-fun m!5670243 () Bool)

(assert (=> b!4729359 m!5670243))

(assert (=> b!4729359 m!5670243))

(declare-fun m!5670245 () Bool)

(assert (=> b!4729359 m!5670245))

(assert (=> d!1507354 m!5670233))

(declare-fun m!5670247 () Bool)

(assert (=> b!4729360 m!5670247))

(assert (=> b!4729360 m!5670239))

(assert (=> b!4729360 m!5670239))

(assert (=> b!4729360 m!5670241))

(declare-fun m!5670249 () Bool)

(assert (=> b!4729360 m!5670249))

(assert (=> b!4729364 m!5669303))

(assert (=> b!4729364 m!5670243))

(assert (=> b!4729364 m!5670243))

(assert (=> b!4729364 m!5670245))

(assert (=> b!4729361 m!5669303))

(assert (=> b!4729361 m!5670243))

(assert (=> b!4728806 d!1507354))

(assert (=> b!4728806 d!1507048))

(declare-fun d!1507356 () Bool)

(assert (=> d!1507356 (isDefined!9645 (getValueByKey!1977 (toList!5953 lm!2023) lt!1892762))))

(declare-fun lt!1893251 () Unit!131227)

(declare-fun choose!33437 (List!53003 (_ BitVec 64)) Unit!131227)

(assert (=> d!1507356 (= lt!1893251 (choose!33437 (toList!5953 lm!2023) lt!1892762))))

(declare-fun e!2949754 () Bool)

(assert (=> d!1507356 e!2949754))

(declare-fun res!2001939 () Bool)

(assert (=> d!1507356 (=> (not res!2001939) (not e!2949754))))

(assert (=> d!1507356 (= res!2001939 (isStrictlySorted!761 (toList!5953 lm!2023)))))

(assert (=> d!1507356 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1868 (toList!5953 lm!2023) lt!1892762) lt!1893251)))

(declare-fun b!4729367 () Bool)

(assert (=> b!4729367 (= e!2949754 (containsKey!3405 (toList!5953 lm!2023) lt!1892762))))

(assert (= (and d!1507356 res!2001939) b!4729367))

(assert (=> d!1507356 m!5669385))

(assert (=> d!1507356 m!5669385))

(assert (=> d!1507356 m!5669509))

(declare-fun m!5670251 () Bool)

(assert (=> d!1507356 m!5670251))

(assert (=> d!1507356 m!5669631))

(assert (=> b!4729367 m!5669505))

(assert (=> b!4728839 d!1507356))

(assert (=> b!4728839 d!1507346))

(assert (=> b!4728839 d!1507348))

(declare-fun d!1507358 () Bool)

(assert (=> d!1507358 (= (isEmpty!29195 lt!1892897) (not ((_ is Some!12387) lt!1892897)))))

(assert (=> d!1507036 d!1507358))

(declare-fun d!1507360 () Bool)

(declare-fun res!2001940 () Bool)

(declare-fun e!2949755 () Bool)

(assert (=> d!1507360 (=> res!2001940 e!2949755)))

(assert (=> d!1507360 (= res!2001940 (not ((_ is Cons!52878) lt!1892763)))))

(assert (=> d!1507360 (= (noDuplicateKeys!2032 lt!1892763) e!2949755)))

(declare-fun b!4729368 () Bool)

(declare-fun e!2949756 () Bool)

(assert (=> b!4729368 (= e!2949755 e!2949756)))

(declare-fun res!2001941 () Bool)

(assert (=> b!4729368 (=> (not res!2001941) (not e!2949756))))

(assert (=> b!4729368 (= res!2001941 (not (containsKey!3402 (t!360278 lt!1892763) (_1!30555 (h!59237 lt!1892763)))))))

(declare-fun b!4729369 () Bool)

(assert (=> b!4729369 (= e!2949756 (noDuplicateKeys!2032 (t!360278 lt!1892763)))))

(assert (= (and d!1507360 (not res!2001940)) b!4729368))

(assert (= (and b!4729368 res!2001941) b!4729369))

(declare-fun m!5670253 () Bool)

(assert (=> b!4729368 m!5670253))

(declare-fun m!5670255 () Bool)

(assert (=> b!4729369 m!5670255))

(assert (=> d!1507036 d!1507360))

(assert (=> b!4728874 d!1506996))

(declare-fun d!1507362 () Bool)

(declare-fun res!2001942 () Bool)

(declare-fun e!2949757 () Bool)

(assert (=> d!1507362 (=> res!2001942 e!2949757)))

(assert (=> d!1507362 (= res!2001942 (and ((_ is Cons!52878) lt!1892978) (= (_1!30555 (h!59237 lt!1892978)) key!4653)))))

(assert (=> d!1507362 (= (containsKey!3402 lt!1892978 key!4653) e!2949757)))

(declare-fun b!4729370 () Bool)

(declare-fun e!2949758 () Bool)

(assert (=> b!4729370 (= e!2949757 e!2949758)))

(declare-fun res!2001943 () Bool)

(assert (=> b!4729370 (=> (not res!2001943) (not e!2949758))))

(assert (=> b!4729370 (= res!2001943 ((_ is Cons!52878) lt!1892978))))

(declare-fun b!4729371 () Bool)

(assert (=> b!4729371 (= e!2949758 (containsKey!3402 (t!360278 lt!1892978) key!4653))))

(assert (= (and d!1507362 (not res!2001942)) b!4729370))

(assert (= (and b!4729370 res!2001943) b!4729371))

(declare-fun m!5670257 () Bool)

(assert (=> b!4729371 m!5670257))

(assert (=> d!1507064 d!1507362))

(assert (=> d!1507064 d!1507082))

(declare-fun b!4729394 () Bool)

(assert (=> b!4729394 true))

(declare-fun bs!1118922 () Bool)

(declare-fun b!4729390 () Bool)

(assert (= bs!1118922 (and b!4729390 b!4729394)))

(declare-fun lambda!216924 () Int)

(declare-fun lambda!216923 () Int)

(assert (=> bs!1118922 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771))) (t!360278 (toList!5954 lt!1892771))) (= lambda!216924 lambda!216923))))

(assert (=> b!4729390 true))

(declare-fun bs!1118923 () Bool)

(declare-fun b!4729391 () Bool)

(assert (= bs!1118923 (and b!4729391 b!4729394)))

(declare-fun lambda!216925 () Int)

(assert (=> bs!1118923 (= (= (toList!5954 lt!1892771) (t!360278 (toList!5954 lt!1892771))) (= lambda!216925 lambda!216923))))

(declare-fun bs!1118924 () Bool)

(assert (= bs!1118924 (and b!4729391 b!4729390)))

(assert (=> bs!1118924 (= (= (toList!5954 lt!1892771) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!216925 lambda!216924))))

(assert (=> b!4729391 true))

(declare-fun e!2949770 () List!53005)

(assert (=> b!4729390 (= e!2949770 (Cons!52881 (_1!30555 (h!59237 (toList!5954 lt!1892771))) (getKeysList!963 (t!360278 (toList!5954 lt!1892771)))))))

(declare-fun c!807687 () Bool)

(assert (=> b!4729390 (= c!807687 (containsKey!3406 (t!360278 (toList!5954 lt!1892771)) (_1!30555 (h!59237 (toList!5954 lt!1892771)))))))

(declare-fun lt!1893268 () Unit!131227)

(declare-fun e!2949769 () Unit!131227)

(assert (=> b!4729390 (= lt!1893268 e!2949769)))

(declare-fun c!807688 () Bool)

(assert (=> b!4729390 (= c!807688 (contains!16243 (getKeysList!963 (t!360278 (toList!5954 lt!1892771))) (_1!30555 (h!59237 (toList!5954 lt!1892771)))))))

(declare-fun lt!1893272 () Unit!131227)

(declare-fun e!2949767 () Unit!131227)

(assert (=> b!4729390 (= lt!1893272 e!2949767)))

(declare-fun lt!1893270 () List!53005)

(assert (=> b!4729390 (= lt!1893270 (getKeysList!963 (t!360278 (toList!5954 lt!1892771))))))

(declare-fun lt!1893271 () Unit!131227)

(declare-fun lemmaForallContainsAddHeadPreserves!287 (List!53002 List!53005 tuple2!54522) Unit!131227)

(assert (=> b!4729390 (= lt!1893271 (lemmaForallContainsAddHeadPreserves!287 (t!360278 (toList!5954 lt!1892771)) lt!1893270 (h!59237 (toList!5954 lt!1892771))))))

(declare-fun forall!11629 (List!53005 Int) Bool)

(assert (=> b!4729390 (forall!11629 lt!1893270 lambda!216924)))

(declare-fun lt!1893266 () Unit!131227)

(assert (=> b!4729390 (= lt!1893266 lt!1893271)))

(declare-fun res!2001951 () Bool)

(declare-fun e!2949768 () Bool)

(assert (=> b!4729391 (=> (not res!2001951) (not e!2949768))))

(declare-fun lt!1893267 () List!53005)

(assert (=> b!4729391 (= res!2001951 (forall!11629 lt!1893267 lambda!216925))))

(declare-fun d!1507364 () Bool)

(assert (=> d!1507364 e!2949768))

(declare-fun res!2001952 () Bool)

(assert (=> d!1507364 (=> (not res!2001952) (not e!2949768))))

(declare-fun noDuplicate!869 (List!53005) Bool)

(assert (=> d!1507364 (= res!2001952 (noDuplicate!869 lt!1893267))))

(assert (=> d!1507364 (= lt!1893267 e!2949770)))

(declare-fun c!807689 () Bool)

(assert (=> d!1507364 (= c!807689 ((_ is Cons!52878) (toList!5954 lt!1892771)))))

(assert (=> d!1507364 (invariantList!1523 (toList!5954 lt!1892771))))

(assert (=> d!1507364 (= (getKeysList!963 (toList!5954 lt!1892771)) lt!1893267)))

(declare-fun b!4729392 () Bool)

(assert (=> b!4729392 false))

(declare-fun Unit!131280 () Unit!131227)

(assert (=> b!4729392 (= e!2949769 Unit!131280)))

(declare-fun b!4729393 () Bool)

(declare-fun Unit!131281 () Unit!131227)

(assert (=> b!4729393 (= e!2949769 Unit!131281)))

(assert (=> b!4729394 false))

(declare-fun lt!1893269 () Unit!131227)

(declare-fun forallContained!3669 (List!53005 Int K!14230) Unit!131227)

(assert (=> b!4729394 (= lt!1893269 (forallContained!3669 (getKeysList!963 (t!360278 (toList!5954 lt!1892771))) lambda!216923 (_1!30555 (h!59237 (toList!5954 lt!1892771)))))))

(declare-fun Unit!131282 () Unit!131227)

(assert (=> b!4729394 (= e!2949767 Unit!131282)))

(declare-fun b!4729395 () Bool)

(declare-fun Unit!131283 () Unit!131227)

(assert (=> b!4729395 (= e!2949767 Unit!131283)))

(declare-fun b!4729396 () Bool)

(assert (=> b!4729396 (= e!2949770 Nil!52881)))

(declare-fun b!4729397 () Bool)

(declare-fun lambda!216926 () Int)

(declare-fun content!9422 (List!53005) (InoxSet K!14230))

(declare-fun map!11698 (List!53002 Int) List!53005)

(assert (=> b!4729397 (= e!2949768 (= (content!9422 lt!1893267) (content!9422 (map!11698 (toList!5954 lt!1892771) lambda!216926))))))

(declare-fun b!4729398 () Bool)

(declare-fun res!2001950 () Bool)

(assert (=> b!4729398 (=> (not res!2001950) (not e!2949768))))

(declare-fun length!594 (List!53005) Int)

(declare-fun length!595 (List!53002) Int)

(assert (=> b!4729398 (= res!2001950 (= (length!594 lt!1893267) (length!595 (toList!5954 lt!1892771))))))

(assert (= (and d!1507364 c!807689) b!4729390))

(assert (= (and d!1507364 (not c!807689)) b!4729396))

(assert (= (and b!4729390 c!807687) b!4729392))

(assert (= (and b!4729390 (not c!807687)) b!4729393))

(assert (= (and b!4729390 c!807688) b!4729394))

(assert (= (and b!4729390 (not c!807688)) b!4729395))

(assert (= (and d!1507364 res!2001952) b!4729398))

(assert (= (and b!4729398 res!2001950) b!4729391))

(assert (= (and b!4729391 res!2001951) b!4729397))

(declare-fun m!5670259 () Bool)

(assert (=> b!4729394 m!5670259))

(assert (=> b!4729394 m!5670259))

(declare-fun m!5670261 () Bool)

(assert (=> b!4729394 m!5670261))

(assert (=> b!4729390 m!5670259))

(declare-fun m!5670263 () Bool)

(assert (=> b!4729390 m!5670263))

(declare-fun m!5670265 () Bool)

(assert (=> b!4729390 m!5670265))

(declare-fun m!5670267 () Bool)

(assert (=> b!4729390 m!5670267))

(declare-fun m!5670269 () Bool)

(assert (=> b!4729390 m!5670269))

(assert (=> b!4729390 m!5670259))

(declare-fun m!5670271 () Bool)

(assert (=> b!4729398 m!5670271))

(declare-fun m!5670273 () Bool)

(assert (=> b!4729398 m!5670273))

(declare-fun m!5670275 () Bool)

(assert (=> d!1507364 m!5670275))

(declare-fun m!5670277 () Bool)

(assert (=> d!1507364 m!5670277))

(declare-fun m!5670279 () Bool)

(assert (=> b!4729397 m!5670279))

(declare-fun m!5670281 () Bool)

(assert (=> b!4729397 m!5670281))

(assert (=> b!4729397 m!5670281))

(declare-fun m!5670283 () Bool)

(assert (=> b!4729397 m!5670283))

(declare-fun m!5670285 () Bool)

(assert (=> b!4729391 m!5670285))

(assert (=> b!4728905 d!1507364))

(declare-fun d!1507366 () Bool)

(declare-fun res!2001953 () Bool)

(declare-fun e!2949771 () Bool)

(assert (=> d!1507366 (=> res!2001953 e!2949771)))

(assert (=> d!1507366 (= res!2001953 ((_ is Nil!52879) (t!360279 (toList!5953 lm!2023))))))

(assert (=> d!1507366 (= (forall!11625 (t!360279 (toList!5953 lm!2023)) lambda!216768) e!2949771)))

(declare-fun b!4729401 () Bool)

(declare-fun e!2949772 () Bool)

(assert (=> b!4729401 (= e!2949771 e!2949772)))

(declare-fun res!2001954 () Bool)

(assert (=> b!4729401 (=> (not res!2001954) (not e!2949772))))

(assert (=> b!4729401 (= res!2001954 (dynLambda!21839 lambda!216768 (h!59238 (t!360279 (toList!5953 lm!2023)))))))

(declare-fun b!4729402 () Bool)

(assert (=> b!4729402 (= e!2949772 (forall!11625 (t!360279 (t!360279 (toList!5953 lm!2023))) lambda!216768))))

(assert (= (and d!1507366 (not res!2001953)) b!4729401))

(assert (= (and b!4729401 res!2001954) b!4729402))

(declare-fun b_lambda!180071 () Bool)

(assert (=> (not b_lambda!180071) (not b!4729401)))

(declare-fun m!5670287 () Bool)

(assert (=> b!4729401 m!5670287))

(declare-fun m!5670289 () Bool)

(assert (=> b!4729402 m!5670289))

(assert (=> b!4728975 d!1507366))

(declare-fun d!1507368 () Bool)

(declare-fun res!2001955 () Bool)

(declare-fun e!2949773 () Bool)

(assert (=> d!1507368 (=> res!2001955 e!2949773)))

(assert (=> d!1507368 (= res!2001955 ((_ is Nil!52878) (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (=> d!1507368 (= (forall!11627 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))) (ite c!807618 lambda!216871 lambda!216873)) e!2949773)))

(declare-fun b!4729403 () Bool)

(declare-fun e!2949774 () Bool)

(assert (=> b!4729403 (= e!2949773 e!2949774)))

(declare-fun res!2001956 () Bool)

(assert (=> b!4729403 (=> (not res!2001956) (not e!2949774))))

(assert (=> b!4729403 (= res!2001956 (dynLambda!21841 (ite c!807618 lambda!216871 lambda!216873) (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4729404 () Bool)

(assert (=> b!4729404 (= e!2949774 (forall!11627 (t!360278 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))) (ite c!807618 lambda!216871 lambda!216873)))))

(assert (= (and d!1507368 (not res!2001955)) b!4729403))

(assert (= (and b!4729403 res!2001956) b!4729404))

(declare-fun b_lambda!180073 () Bool)

(assert (=> (not b_lambda!180073) (not b!4729403)))

(declare-fun m!5670291 () Bool)

(assert (=> b!4729403 m!5670291))

(declare-fun m!5670293 () Bool)

(assert (=> b!4729404 m!5670293))

(assert (=> bm!330799 d!1507368))

(declare-fun d!1507370 () Bool)

(declare-fun res!2001961 () Bool)

(declare-fun e!2949779 () Bool)

(assert (=> d!1507370 (=> res!2001961 e!2949779)))

(assert (=> d!1507370 (= res!2001961 (and ((_ is Cons!52878) (toList!5954 lt!1892771)) (= (_1!30555 (h!59237 (toList!5954 lt!1892771))) key!4653)))))

(assert (=> d!1507370 (= (containsKey!3406 (toList!5954 lt!1892771) key!4653) e!2949779)))

(declare-fun b!4729409 () Bool)

(declare-fun e!2949780 () Bool)

(assert (=> b!4729409 (= e!2949779 e!2949780)))

(declare-fun res!2001962 () Bool)

(assert (=> b!4729409 (=> (not res!2001962) (not e!2949780))))

(assert (=> b!4729409 (= res!2001962 ((_ is Cons!52878) (toList!5954 lt!1892771)))))

(declare-fun b!4729410 () Bool)

(assert (=> b!4729410 (= e!2949780 (containsKey!3406 (t!360278 (toList!5954 lt!1892771)) key!4653))))

(assert (= (and d!1507370 (not res!2001961)) b!4729409))

(assert (= (and b!4729409 res!2001962) b!4729410))

(declare-fun m!5670295 () Bool)

(assert (=> b!4729410 m!5670295))

(assert (=> b!4728903 d!1507370))

(declare-fun d!1507372 () Bool)

(assert (=> d!1507372 (containsKey!3406 (toList!5954 lt!1892771) key!4653)))

(declare-fun lt!1893275 () Unit!131227)

(declare-fun choose!33439 (List!53002 K!14230) Unit!131227)

(assert (=> d!1507372 (= lt!1893275 (choose!33439 (toList!5954 lt!1892771) key!4653))))

(assert (=> d!1507372 (invariantList!1523 (toList!5954 lt!1892771))))

(assert (=> d!1507372 (= (lemmaInGetKeysListThenContainsKey!962 (toList!5954 lt!1892771) key!4653) lt!1893275)))

(declare-fun bs!1118925 () Bool)

(assert (= bs!1118925 d!1507372))

(assert (=> bs!1118925 m!5669539))

(declare-fun m!5670297 () Bool)

(assert (=> bs!1118925 m!5670297))

(assert (=> bs!1118925 m!5670277))

(assert (=> b!4728903 d!1507372))

(declare-fun d!1507374 () Bool)

(declare-fun res!2001963 () Bool)

(declare-fun e!2949781 () Bool)

(assert (=> d!1507374 (=> res!2001963 e!2949781)))

(assert (=> d!1507374 (= res!2001963 (and ((_ is Cons!52878) lt!1893071) (= (_1!30555 (h!59237 lt!1893071)) key!4653)))))

(assert (=> d!1507374 (= (containsKey!3402 lt!1893071 key!4653) e!2949781)))

(declare-fun b!4729411 () Bool)

(declare-fun e!2949782 () Bool)

(assert (=> b!4729411 (= e!2949781 e!2949782)))

(declare-fun res!2001964 () Bool)

(assert (=> b!4729411 (=> (not res!2001964) (not e!2949782))))

(assert (=> b!4729411 (= res!2001964 ((_ is Cons!52878) lt!1893071))))

(declare-fun b!4729412 () Bool)

(assert (=> b!4729412 (= e!2949782 (containsKey!3402 (t!360278 lt!1893071) key!4653))))

(assert (= (and d!1507374 (not res!2001963)) b!4729411))

(assert (= (and b!4729411 res!2001964) b!4729412))

(declare-fun m!5670299 () Bool)

(assert (=> b!4729412 m!5670299))

(assert (=> d!1507110 d!1507374))

(declare-fun d!1507376 () Bool)

(declare-fun res!2001965 () Bool)

(declare-fun e!2949783 () Bool)

(assert (=> d!1507376 (=> res!2001965 e!2949783)))

(assert (=> d!1507376 (= res!2001965 (not ((_ is Cons!52878) (tail!9041 oldBucket!34))))))

(assert (=> d!1507376 (= (noDuplicateKeys!2032 (tail!9041 oldBucket!34)) e!2949783)))

(declare-fun b!4729413 () Bool)

(declare-fun e!2949784 () Bool)

(assert (=> b!4729413 (= e!2949783 e!2949784)))

(declare-fun res!2001966 () Bool)

(assert (=> b!4729413 (=> (not res!2001966) (not e!2949784))))

(assert (=> b!4729413 (= res!2001966 (not (containsKey!3402 (t!360278 (tail!9041 oldBucket!34)) (_1!30555 (h!59237 (tail!9041 oldBucket!34))))))))

(declare-fun b!4729414 () Bool)

(assert (=> b!4729414 (= e!2949784 (noDuplicateKeys!2032 (t!360278 (tail!9041 oldBucket!34))))))

(assert (= (and d!1507376 (not res!2001965)) b!4729413))

(assert (= (and b!4729413 res!2001966) b!4729414))

(declare-fun m!5670301 () Bool)

(assert (=> b!4729413 m!5670301))

(declare-fun m!5670303 () Bool)

(assert (=> b!4729414 m!5670303))

(assert (=> d!1507110 d!1507376))

(declare-fun d!1507378 () Bool)

(declare-fun res!2001967 () Bool)

(declare-fun e!2949785 () Bool)

(assert (=> d!1507378 (=> res!2001967 e!2949785)))

(assert (=> d!1507378 (= res!2001967 (and ((_ is Cons!52878) lt!1892763) (= (_1!30555 (h!59237 lt!1892763)) key!4653)))))

(assert (=> d!1507378 (= (containsKey!3402 lt!1892763 key!4653) e!2949785)))

(declare-fun b!4729415 () Bool)

(declare-fun e!2949786 () Bool)

(assert (=> b!4729415 (= e!2949785 e!2949786)))

(declare-fun res!2001968 () Bool)

(assert (=> b!4729415 (=> (not res!2001968) (not e!2949786))))

(assert (=> b!4729415 (= res!2001968 ((_ is Cons!52878) lt!1892763))))

(declare-fun b!4729416 () Bool)

(assert (=> b!4729416 (= e!2949786 (containsKey!3402 (t!360278 lt!1892763) key!4653))))

(assert (= (and d!1507378 (not res!2001967)) b!4729415))

(assert (= (and b!4729415 res!2001968) b!4729416))

(declare-fun m!5670305 () Bool)

(assert (=> b!4729416 m!5670305))

(assert (=> b!4728864 d!1507378))

(declare-fun d!1507380 () Bool)

(declare-fun lt!1893278 () Bool)

(assert (=> d!1507380 (= lt!1893278 (select (content!9422 e!2949432) key!4653))))

(declare-fun e!2949792 () Bool)

(assert (=> d!1507380 (= lt!1893278 e!2949792)))

(declare-fun res!2001974 () Bool)

(assert (=> d!1507380 (=> (not res!2001974) (not e!2949792))))

(assert (=> d!1507380 (= res!2001974 ((_ is Cons!52881) e!2949432))))

(assert (=> d!1507380 (= (contains!16243 e!2949432 key!4653) lt!1893278)))

(declare-fun b!4729421 () Bool)

(declare-fun e!2949791 () Bool)

(assert (=> b!4729421 (= e!2949792 e!2949791)))

(declare-fun res!2001973 () Bool)

(assert (=> b!4729421 (=> res!2001973 e!2949791)))

(assert (=> b!4729421 (= res!2001973 (= (h!59242 e!2949432) key!4653))))

(declare-fun b!4729422 () Bool)

(assert (=> b!4729422 (= e!2949791 (contains!16243 (t!360281 e!2949432) key!4653))))

(assert (= (and d!1507380 res!2001974) b!4729421))

(assert (= (and b!4729421 (not res!2001973)) b!4729422))

(declare-fun m!5670307 () Bool)

(assert (=> d!1507380 m!5670307))

(declare-fun m!5670309 () Bool)

(assert (=> d!1507380 m!5670309))

(declare-fun m!5670311 () Bool)

(assert (=> b!4729422 m!5670311))

(assert (=> bm!330788 d!1507380))

(declare-fun d!1507382 () Bool)

(declare-fun lt!1893279 () List!53002)

(assert (=> d!1507382 (not (containsKey!3402 lt!1893279 key!4653))))

(declare-fun e!2949794 () List!53002)

(assert (=> d!1507382 (= lt!1893279 e!2949794)))

(declare-fun c!807690 () Bool)

(assert (=> d!1507382 (= c!807690 (and ((_ is Cons!52878) (t!360278 (t!360278 oldBucket!34))) (= (_1!30555 (h!59237 (t!360278 (t!360278 oldBucket!34)))) key!4653)))))

(assert (=> d!1507382 (noDuplicateKeys!2032 (t!360278 (t!360278 oldBucket!34)))))

(assert (=> d!1507382 (= (removePairForKey!1627 (t!360278 (t!360278 oldBucket!34)) key!4653) lt!1893279)))

(declare-fun b!4729424 () Bool)

(declare-fun e!2949793 () List!53002)

(assert (=> b!4729424 (= e!2949794 e!2949793)))

(declare-fun c!807691 () Bool)

(assert (=> b!4729424 (= c!807691 ((_ is Cons!52878) (t!360278 (t!360278 oldBucket!34))))))

(declare-fun b!4729423 () Bool)

(assert (=> b!4729423 (= e!2949794 (t!360278 (t!360278 (t!360278 oldBucket!34))))))

(declare-fun b!4729425 () Bool)

(assert (=> b!4729425 (= e!2949793 (Cons!52878 (h!59237 (t!360278 (t!360278 oldBucket!34))) (removePairForKey!1627 (t!360278 (t!360278 (t!360278 oldBucket!34))) key!4653)))))

(declare-fun b!4729426 () Bool)

(assert (=> b!4729426 (= e!2949793 Nil!52878)))

(assert (= (and d!1507382 c!807690) b!4729423))

(assert (= (and d!1507382 (not c!807690)) b!4729424))

(assert (= (and b!4729424 c!807691) b!4729425))

(assert (= (and b!4729424 (not c!807691)) b!4729426))

(declare-fun m!5670313 () Bool)

(assert (=> d!1507382 m!5670313))

(declare-fun m!5670315 () Bool)

(assert (=> d!1507382 m!5670315))

(declare-fun m!5670317 () Bool)

(assert (=> b!4729425 m!5670317))

(assert (=> b!4728978 d!1507382))

(declare-fun d!1507384 () Bool)

(declare-fun res!2001979 () Bool)

(declare-fun e!2949799 () Bool)

(assert (=> d!1507384 (=> res!2001979 e!2949799)))

(assert (=> d!1507384 (= res!2001979 (and ((_ is Cons!52879) (toList!5953 lm!2023)) (= (_1!30556 (h!59238 (toList!5953 lm!2023))) lt!1892762)))))

(assert (=> d!1507384 (= (containsKey!3405 (toList!5953 lm!2023) lt!1892762) e!2949799)))

(declare-fun b!4729431 () Bool)

(declare-fun e!2949800 () Bool)

(assert (=> b!4729431 (= e!2949799 e!2949800)))

(declare-fun res!2001980 () Bool)

(assert (=> b!4729431 (=> (not res!2001980) (not e!2949800))))

(assert (=> b!4729431 (= res!2001980 (and (or (not ((_ is Cons!52879) (toList!5953 lm!2023))) (bvsle (_1!30556 (h!59238 (toList!5953 lm!2023))) lt!1892762)) ((_ is Cons!52879) (toList!5953 lm!2023)) (bvslt (_1!30556 (h!59238 (toList!5953 lm!2023))) lt!1892762)))))

(declare-fun b!4729432 () Bool)

(assert (=> b!4729432 (= e!2949800 (containsKey!3405 (t!360279 (toList!5953 lm!2023)) lt!1892762))))

(assert (= (and d!1507384 (not res!2001979)) b!4729431))

(assert (= (and b!4729431 res!2001980) b!4729432))

(declare-fun m!5670319 () Bool)

(assert (=> b!4729432 m!5670319))

(assert (=> d!1507030 d!1507384))

(declare-fun d!1507386 () Bool)

(declare-fun noDuplicatedKeys!383 (List!53002) Bool)

(assert (=> d!1507386 (= (invariantList!1523 (toList!5954 lt!1893065)) (noDuplicatedKeys!383 (toList!5954 lt!1893065)))))

(declare-fun bs!1118926 () Bool)

(assert (= bs!1118926 d!1507386))

(declare-fun m!5670321 () Bool)

(assert (=> bs!1118926 m!5670321))

(assert (=> b!4729038 d!1507386))

(declare-fun d!1507388 () Bool)

(declare-fun res!2001981 () Bool)

(declare-fun e!2949801 () Bool)

(assert (=> d!1507388 (=> res!2001981 e!2949801)))

(assert (=> d!1507388 (= res!2001981 ((_ is Nil!52879) (toList!5953 (ListLongMap!4484 lt!1892767))))))

(assert (=> d!1507388 (= (forall!11625 (toList!5953 (ListLongMap!4484 lt!1892767)) lambda!216836) e!2949801)))

(declare-fun b!4729433 () Bool)

(declare-fun e!2949802 () Bool)

(assert (=> b!4729433 (= e!2949801 e!2949802)))

(declare-fun res!2001982 () Bool)

(assert (=> b!4729433 (=> (not res!2001982) (not e!2949802))))

(assert (=> b!4729433 (= res!2001982 (dynLambda!21839 lambda!216836 (h!59238 (toList!5953 (ListLongMap!4484 lt!1892767)))))))

(declare-fun b!4729434 () Bool)

(assert (=> b!4729434 (= e!2949802 (forall!11625 (t!360279 (toList!5953 (ListLongMap!4484 lt!1892767))) lambda!216836))))

(assert (= (and d!1507388 (not res!2001981)) b!4729433))

(assert (= (and b!4729433 res!2001982) b!4729434))

(declare-fun b_lambda!180075 () Bool)

(assert (=> (not b_lambda!180075) (not b!4729433)))

(declare-fun m!5670323 () Bool)

(assert (=> b!4729433 m!5670323))

(declare-fun m!5670325 () Bool)

(assert (=> b!4729434 m!5670325))

(assert (=> d!1507060 d!1507388))

(declare-fun d!1507390 () Bool)

(declare-fun res!2001983 () Bool)

(declare-fun e!2949803 () Bool)

(assert (=> d!1507390 (=> res!2001983 e!2949803)))

(assert (=> d!1507390 (= res!2001983 (and ((_ is Cons!52878) (t!360278 newBucket!218)) (= (_1!30555 (h!59237 (t!360278 newBucket!218))) (_1!30555 (h!59237 newBucket!218)))))))

(assert (=> d!1507390 (= (containsKey!3402 (t!360278 newBucket!218) (_1!30555 (h!59237 newBucket!218))) e!2949803)))

(declare-fun b!4729435 () Bool)

(declare-fun e!2949804 () Bool)

(assert (=> b!4729435 (= e!2949803 e!2949804)))

(declare-fun res!2001984 () Bool)

(assert (=> b!4729435 (=> (not res!2001984) (not e!2949804))))

(assert (=> b!4729435 (= res!2001984 ((_ is Cons!52878) (t!360278 newBucket!218)))))

(declare-fun b!4729436 () Bool)

(assert (=> b!4729436 (= e!2949804 (containsKey!3402 (t!360278 (t!360278 newBucket!218)) (_1!30555 (h!59237 newBucket!218))))))

(assert (= (and d!1507390 (not res!2001983)) b!4729435))

(assert (= (and b!4729435 res!2001984) b!4729436))

(declare-fun m!5670327 () Bool)

(assert (=> b!4729436 m!5670327))

(assert (=> b!4728738 d!1507390))

(declare-fun d!1507392 () Bool)

(declare-fun lt!1893280 () Bool)

(assert (=> d!1507392 (= lt!1893280 (select (content!9422 (keys!19004 lt!1892771)) key!4653))))

(declare-fun e!2949806 () Bool)

(assert (=> d!1507392 (= lt!1893280 e!2949806)))

(declare-fun res!2001986 () Bool)

(assert (=> d!1507392 (=> (not res!2001986) (not e!2949806))))

(assert (=> d!1507392 (= res!2001986 ((_ is Cons!52881) (keys!19004 lt!1892771)))))

(assert (=> d!1507392 (= (contains!16243 (keys!19004 lt!1892771) key!4653) lt!1893280)))

(declare-fun b!4729437 () Bool)

(declare-fun e!2949805 () Bool)

(assert (=> b!4729437 (= e!2949806 e!2949805)))

(declare-fun res!2001985 () Bool)

(assert (=> b!4729437 (=> res!2001985 e!2949805)))

(assert (=> b!4729437 (= res!2001985 (= (h!59242 (keys!19004 lt!1892771)) key!4653))))

(declare-fun b!4729438 () Bool)

(assert (=> b!4729438 (= e!2949805 (contains!16243 (t!360281 (keys!19004 lt!1892771)) key!4653))))

(assert (= (and d!1507392 res!2001986) b!4729437))

(assert (= (and b!4729437 (not res!2001985)) b!4729438))

(assert (=> d!1507392 m!5669549))

(declare-fun m!5670329 () Bool)

(assert (=> d!1507392 m!5670329))

(declare-fun m!5670331 () Bool)

(assert (=> d!1507392 m!5670331))

(declare-fun m!5670333 () Bool)

(assert (=> b!4729438 m!5670333))

(assert (=> b!4728906 d!1507392))

(declare-fun bs!1118927 () Bool)

(declare-fun b!4729446 () Bool)

(assert (= bs!1118927 (and b!4729446 b!4729394)))

(declare-fun lambda!216931 () Int)

(assert (=> bs!1118927 (= (= (toList!5954 lt!1892771) (t!360278 (toList!5954 lt!1892771))) (= lambda!216931 lambda!216923))))

(declare-fun bs!1118928 () Bool)

(assert (= bs!1118928 (and b!4729446 b!4729390)))

(assert (=> bs!1118928 (= (= (toList!5954 lt!1892771) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!216931 lambda!216924))))

(declare-fun bs!1118929 () Bool)

(assert (= bs!1118929 (and b!4729446 b!4729391)))

(assert (=> bs!1118929 (= lambda!216931 lambda!216925)))

(assert (=> b!4729446 true))

(declare-fun bs!1118930 () Bool)

(declare-fun b!4729447 () Bool)

(assert (= bs!1118930 (and b!4729447 b!4729397)))

(declare-fun lambda!216932 () Int)

(assert (=> bs!1118930 (= lambda!216932 lambda!216926)))

(declare-fun d!1507394 () Bool)

(declare-fun e!2949809 () Bool)

(assert (=> d!1507394 e!2949809))

(declare-fun res!2001995 () Bool)

(assert (=> d!1507394 (=> (not res!2001995) (not e!2949809))))

(declare-fun lt!1893283 () List!53005)

(assert (=> d!1507394 (= res!2001995 (noDuplicate!869 lt!1893283))))

(assert (=> d!1507394 (= lt!1893283 (getKeysList!963 (toList!5954 lt!1892771)))))

(assert (=> d!1507394 (= (keys!19004 lt!1892771) lt!1893283)))

(declare-fun b!4729445 () Bool)

(declare-fun res!2001994 () Bool)

(assert (=> b!4729445 (=> (not res!2001994) (not e!2949809))))

(assert (=> b!4729445 (= res!2001994 (= (length!594 lt!1893283) (length!595 (toList!5954 lt!1892771))))))

(declare-fun res!2001993 () Bool)

(assert (=> b!4729446 (=> (not res!2001993) (not e!2949809))))

(assert (=> b!4729446 (= res!2001993 (forall!11629 lt!1893283 lambda!216931))))

(assert (=> b!4729447 (= e!2949809 (= (content!9422 lt!1893283) (content!9422 (map!11698 (toList!5954 lt!1892771) lambda!216932))))))

(assert (= (and d!1507394 res!2001995) b!4729445))

(assert (= (and b!4729445 res!2001994) b!4729446))

(assert (= (and b!4729446 res!2001993) b!4729447))

(declare-fun m!5670335 () Bool)

(assert (=> d!1507394 m!5670335))

(assert (=> d!1507394 m!5669537))

(declare-fun m!5670337 () Bool)

(assert (=> b!4729445 m!5670337))

(assert (=> b!4729445 m!5670273))

(declare-fun m!5670339 () Bool)

(assert (=> b!4729446 m!5670339))

(declare-fun m!5670341 () Bool)

(assert (=> b!4729447 m!5670341))

(declare-fun m!5670343 () Bool)

(assert (=> b!4729447 m!5670343))

(assert (=> b!4729447 m!5670343))

(declare-fun m!5670345 () Bool)

(assert (=> b!4729447 m!5670345))

(assert (=> b!4728906 d!1507394))

(declare-fun d!1507396 () Bool)

(declare-fun res!2001996 () Bool)

(declare-fun e!2949810 () Bool)

(assert (=> d!1507396 (=> res!2001996 e!2949810)))

(assert (=> d!1507396 (= res!2001996 (not ((_ is Cons!52878) (t!360278 oldBucket!34))))))

(assert (=> d!1507396 (= (noDuplicateKeys!2032 (t!360278 oldBucket!34)) e!2949810)))

(declare-fun b!4729450 () Bool)

(declare-fun e!2949811 () Bool)

(assert (=> b!4729450 (= e!2949810 e!2949811)))

(declare-fun res!2001997 () Bool)

(assert (=> b!4729450 (=> (not res!2001997) (not e!2949811))))

(assert (=> b!4729450 (= res!2001997 (not (containsKey!3402 (t!360278 (t!360278 oldBucket!34)) (_1!30555 (h!59237 (t!360278 oldBucket!34))))))))

(declare-fun b!4729451 () Bool)

(assert (=> b!4729451 (= e!2949811 (noDuplicateKeys!2032 (t!360278 (t!360278 oldBucket!34))))))

(assert (= (and d!1507396 (not res!2001996)) b!4729450))

(assert (= (and b!4729450 res!2001997) b!4729451))

(declare-fun m!5670347 () Bool)

(assert (=> b!4729450 m!5670347))

(assert (=> b!4729451 m!5670315))

(assert (=> b!4728973 d!1507396))

(declare-fun d!1507398 () Bool)

(assert (=> d!1507398 (= (isEmpty!29195 (getPair!572 lt!1892763 key!4653)) (not ((_ is Some!12387) (getPair!572 lt!1892763 key!4653))))))

(assert (=> d!1507040 d!1507398))

(declare-fun d!1507400 () Bool)

(declare-fun res!2001998 () Bool)

(declare-fun e!2949812 () Bool)

(assert (=> d!1507400 (=> res!2001998 e!2949812)))

(assert (=> d!1507400 (= res!2001998 (and ((_ is Cons!52878) (t!360278 (t!360278 oldBucket!34))) (= (_1!30555 (h!59237 (t!360278 (t!360278 oldBucket!34)))) key!4653)))))

(assert (=> d!1507400 (= (containsKey!3402 (t!360278 (t!360278 oldBucket!34)) key!4653) e!2949812)))

(declare-fun b!4729452 () Bool)

(declare-fun e!2949813 () Bool)

(assert (=> b!4729452 (= e!2949812 e!2949813)))

(declare-fun res!2001999 () Bool)

(assert (=> b!4729452 (=> (not res!2001999) (not e!2949813))))

(assert (=> b!4729452 (= res!2001999 ((_ is Cons!52878) (t!360278 (t!360278 oldBucket!34))))))

(declare-fun b!4729453 () Bool)

(assert (=> b!4729453 (= e!2949813 (containsKey!3402 (t!360278 (t!360278 (t!360278 oldBucket!34))) key!4653))))

(assert (= (and d!1507400 (not res!2001998)) b!4729452))

(assert (= (and b!4729452 res!2001999) b!4729453))

(declare-fun m!5670349 () Bool)

(assert (=> b!4729453 m!5670349))

(assert (=> b!4728847 d!1507400))

(assert (=> b!4728911 d!1507392))

(assert (=> b!4728911 d!1507394))

(declare-fun b!4729454 () Bool)

(declare-fun e!2949814 () Bool)

(assert (=> b!4729454 (= e!2949814 (not (containsKey!3402 (t!360278 lt!1892763) key!4653)))))

(declare-fun b!4729455 () Bool)

(declare-fun e!2949818 () Option!12388)

(assert (=> b!4729455 (= e!2949818 None!12387)))

(declare-fun b!4729456 () Bool)

(assert (=> b!4729456 (= e!2949818 (getPair!572 (t!360278 (t!360278 lt!1892763)) key!4653))))

(declare-fun d!1507402 () Bool)

(declare-fun e!2949816 () Bool)

(assert (=> d!1507402 e!2949816))

(declare-fun res!2002003 () Bool)

(assert (=> d!1507402 (=> res!2002003 e!2949816)))

(assert (=> d!1507402 (= res!2002003 e!2949814)))

(declare-fun res!2002001 () Bool)

(assert (=> d!1507402 (=> (not res!2002001) (not e!2949814))))

(declare-fun lt!1893284 () Option!12388)

(assert (=> d!1507402 (= res!2002001 (isEmpty!29195 lt!1893284))))

(declare-fun e!2949817 () Option!12388)

(assert (=> d!1507402 (= lt!1893284 e!2949817)))

(declare-fun c!807692 () Bool)

(assert (=> d!1507402 (= c!807692 (and ((_ is Cons!52878) (t!360278 lt!1892763)) (= (_1!30555 (h!59237 (t!360278 lt!1892763))) key!4653)))))

(assert (=> d!1507402 (noDuplicateKeys!2032 (t!360278 lt!1892763))))

(assert (=> d!1507402 (= (getPair!572 (t!360278 lt!1892763) key!4653) lt!1893284)))

(declare-fun b!4729457 () Bool)

(declare-fun e!2949815 () Bool)

(assert (=> b!4729457 (= e!2949815 (contains!16242 (t!360278 lt!1892763) (get!17745 lt!1893284)))))

(declare-fun b!4729458 () Bool)

(assert (=> b!4729458 (= e!2949817 (Some!12387 (h!59237 (t!360278 lt!1892763))))))

(declare-fun b!4729459 () Bool)

(declare-fun res!2002002 () Bool)

(assert (=> b!4729459 (=> (not res!2002002) (not e!2949815))))

(assert (=> b!4729459 (= res!2002002 (= (_1!30555 (get!17745 lt!1893284)) key!4653))))

(declare-fun b!4729460 () Bool)

(assert (=> b!4729460 (= e!2949817 e!2949818)))

(declare-fun c!807693 () Bool)

(assert (=> b!4729460 (= c!807693 ((_ is Cons!52878) (t!360278 lt!1892763)))))

(declare-fun b!4729461 () Bool)

(assert (=> b!4729461 (= e!2949816 e!2949815)))

(declare-fun res!2002000 () Bool)

(assert (=> b!4729461 (=> (not res!2002000) (not e!2949815))))

(assert (=> b!4729461 (= res!2002000 (isDefined!9642 lt!1893284))))

(assert (= (and d!1507402 c!807692) b!4729458))

(assert (= (and d!1507402 (not c!807692)) b!4729460))

(assert (= (and b!4729460 c!807693) b!4729456))

(assert (= (and b!4729460 (not c!807693)) b!4729455))

(assert (= (and d!1507402 res!2002001) b!4729454))

(assert (= (and d!1507402 (not res!2002003)) b!4729461))

(assert (= (and b!4729461 res!2002000) b!4729459))

(assert (= (and b!4729459 res!2002002) b!4729457))

(declare-fun m!5670351 () Bool)

(assert (=> b!4729457 m!5670351))

(assert (=> b!4729457 m!5670351))

(declare-fun m!5670353 () Bool)

(assert (=> b!4729457 m!5670353))

(declare-fun m!5670355 () Bool)

(assert (=> d!1507402 m!5670355))

(assert (=> d!1507402 m!5670255))

(assert (=> b!4729459 m!5670351))

(declare-fun m!5670357 () Bool)

(assert (=> b!4729456 m!5670357))

(declare-fun m!5670359 () Bool)

(assert (=> b!4729461 m!5670359))

(assert (=> b!4729454 m!5670305))

(assert (=> b!4728866 d!1507402))

(declare-fun d!1507404 () Bool)

(declare-fun e!2949820 () Bool)

(assert (=> d!1507404 e!2949820))

(declare-fun res!2002004 () Bool)

(assert (=> d!1507404 (=> res!2002004 e!2949820)))

(declare-fun lt!1893286 () Bool)

(assert (=> d!1507404 (= res!2002004 (not lt!1893286))))

(declare-fun lt!1893285 () Bool)

(assert (=> d!1507404 (= lt!1893286 lt!1893285)))

(declare-fun lt!1893288 () Unit!131227)

(declare-fun e!2949819 () Unit!131227)

(assert (=> d!1507404 (= lt!1893288 e!2949819)))

(declare-fun c!807694 () Bool)

(assert (=> d!1507404 (= c!807694 lt!1893285)))

(assert (=> d!1507404 (= lt!1893285 (containsKey!3405 (toList!5953 lm!2023) (hash!4413 hashF!1323 key!4653)))))

(assert (=> d!1507404 (= (contains!16238 lm!2023 (hash!4413 hashF!1323 key!4653)) lt!1893286)))

(declare-fun b!4729462 () Bool)

(declare-fun lt!1893287 () Unit!131227)

(assert (=> b!4729462 (= e!2949819 lt!1893287)))

(assert (=> b!4729462 (= lt!1893287 (lemmaContainsKeyImpliesGetValueByKeyDefined!1868 (toList!5953 lm!2023) (hash!4413 hashF!1323 key!4653)))))

(assert (=> b!4729462 (isDefined!9645 (getValueByKey!1977 (toList!5953 lm!2023) (hash!4413 hashF!1323 key!4653)))))

(declare-fun b!4729463 () Bool)

(declare-fun Unit!131297 () Unit!131227)

(assert (=> b!4729463 (= e!2949819 Unit!131297)))

(declare-fun b!4729464 () Bool)

(assert (=> b!4729464 (= e!2949820 (isDefined!9645 (getValueByKey!1977 (toList!5953 lm!2023) (hash!4413 hashF!1323 key!4653))))))

(assert (= (and d!1507404 c!807694) b!4729462))

(assert (= (and d!1507404 (not c!807694)) b!4729463))

(assert (= (and d!1507404 (not res!2002004)) b!4729464))

(assert (=> d!1507404 m!5669311))

(declare-fun m!5670361 () Bool)

(assert (=> d!1507404 m!5670361))

(assert (=> b!4729462 m!5669311))

(declare-fun m!5670363 () Bool)

(assert (=> b!4729462 m!5670363))

(assert (=> b!4729462 m!5669311))

(declare-fun m!5670365 () Bool)

(assert (=> b!4729462 m!5670365))

(assert (=> b!4729462 m!5670365))

(declare-fun m!5670367 () Bool)

(assert (=> b!4729462 m!5670367))

(assert (=> b!4729464 m!5669311))

(assert (=> b!4729464 m!5670365))

(assert (=> b!4729464 m!5670365))

(assert (=> b!4729464 m!5670367))

(assert (=> d!1507038 d!1507404))

(assert (=> d!1507038 d!1507080))

(declare-fun d!1507406 () Bool)

(assert (=> d!1507406 (contains!16238 lm!2023 (hash!4413 hashF!1323 key!4653))))

(assert (=> d!1507406 true))

(declare-fun _$27!1530 () Unit!131227)

(assert (=> d!1507406 (= (choose!33427 lm!2023 key!4653 hashF!1323) _$27!1530)))

(declare-fun bs!1118931 () Bool)

(assert (= bs!1118931 d!1507406))

(assert (=> bs!1118931 m!5669311))

(assert (=> bs!1118931 m!5669311))

(assert (=> bs!1118931 m!5669469))

(assert (=> d!1507038 d!1507406))

(declare-fun d!1507408 () Bool)

(declare-fun res!2002005 () Bool)

(declare-fun e!2949821 () Bool)

(assert (=> d!1507408 (=> res!2002005 e!2949821)))

(assert (=> d!1507408 (= res!2002005 ((_ is Nil!52879) (toList!5953 lm!2023)))))

(assert (=> d!1507408 (= (forall!11625 (toList!5953 lm!2023) lambda!216825) e!2949821)))

(declare-fun b!4729465 () Bool)

(declare-fun e!2949822 () Bool)

(assert (=> b!4729465 (= e!2949821 e!2949822)))

(declare-fun res!2002006 () Bool)

(assert (=> b!4729465 (=> (not res!2002006) (not e!2949822))))

(assert (=> b!4729465 (= res!2002006 (dynLambda!21839 lambda!216825 (h!59238 (toList!5953 lm!2023))))))

(declare-fun b!4729466 () Bool)

(assert (=> b!4729466 (= e!2949822 (forall!11625 (t!360279 (toList!5953 lm!2023)) lambda!216825))))

(assert (= (and d!1507408 (not res!2002005)) b!4729465))

(assert (= (and b!4729465 res!2002006) b!4729466))

(declare-fun b_lambda!180077 () Bool)

(assert (=> (not b_lambda!180077) (not b!4729465)))

(declare-fun m!5670369 () Bool)

(assert (=> b!4729465 m!5670369))

(declare-fun m!5670371 () Bool)

(assert (=> b!4729466 m!5670371))

(assert (=> d!1507038 d!1507408))

(declare-fun d!1507410 () Bool)

(declare-fun res!2002007 () Bool)

(declare-fun e!2949823 () Bool)

(assert (=> d!1507410 (=> res!2002007 e!2949823)))

(assert (=> d!1507410 (= res!2002007 (and ((_ is Cons!52878) lt!1892980) (= (_1!30555 (h!59237 lt!1892980)) key!4653)))))

(assert (=> d!1507410 (= (containsKey!3402 lt!1892980 key!4653) e!2949823)))

(declare-fun b!4729467 () Bool)

(declare-fun e!2949824 () Bool)

(assert (=> b!4729467 (= e!2949823 e!2949824)))

(declare-fun res!2002008 () Bool)

(assert (=> b!4729467 (=> (not res!2002008) (not e!2949824))))

(assert (=> b!4729467 (= res!2002008 ((_ is Cons!52878) lt!1892980))))

(declare-fun b!4729468 () Bool)

(assert (=> b!4729468 (= e!2949824 (containsKey!3402 (t!360278 lt!1892980) key!4653))))

(assert (= (and d!1507410 (not res!2002007)) b!4729467))

(assert (= (and b!4729467 res!2002008) b!4729468))

(declare-fun m!5670373 () Bool)

(assert (=> b!4729468 m!5670373))

(assert (=> d!1507088 d!1507410))

(assert (=> d!1507088 d!1507396))

(declare-fun d!1507412 () Bool)

(declare-fun res!2002009 () Bool)

(declare-fun e!2949825 () Bool)

(assert (=> d!1507412 (=> res!2002009 e!2949825)))

(assert (=> d!1507412 (= res!2002009 ((_ is Nil!52879) (toList!5953 lm!2023)))))

(assert (=> d!1507412 (= (forall!11625 (toList!5953 lm!2023) lambda!216774) e!2949825)))

(declare-fun b!4729469 () Bool)

(declare-fun e!2949826 () Bool)

(assert (=> b!4729469 (= e!2949825 e!2949826)))

(declare-fun res!2002010 () Bool)

(assert (=> b!4729469 (=> (not res!2002010) (not e!2949826))))

(assert (=> b!4729469 (= res!2002010 (dynLambda!21839 lambda!216774 (h!59238 (toList!5953 lm!2023))))))

(declare-fun b!4729470 () Bool)

(assert (=> b!4729470 (= e!2949826 (forall!11625 (t!360279 (toList!5953 lm!2023)) lambda!216774))))

(assert (= (and d!1507412 (not res!2002009)) b!4729469))

(assert (= (and b!4729469 res!2002010) b!4729470))

(declare-fun b_lambda!180079 () Bool)

(assert (=> (not b_lambda!180079) (not b!4729469)))

(declare-fun m!5670375 () Bool)

(assert (=> b!4729469 m!5670375))

(declare-fun m!5670377 () Bool)

(assert (=> b!4729470 m!5670377))

(assert (=> d!1506992 d!1507412))

(declare-fun d!1507414 () Bool)

(assert (=> d!1507414 (dynLambda!21839 lambda!216819 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))))))

(declare-fun lt!1893289 () Unit!131227)

(assert (=> d!1507414 (= lt!1893289 (choose!33428 (toList!5953 lm!2023) lambda!216819 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))

(declare-fun e!2949827 () Bool)

(assert (=> d!1507414 e!2949827))

(declare-fun res!2002011 () Bool)

(assert (=> d!1507414 (=> (not res!2002011) (not e!2949827))))

(assert (=> d!1507414 (= res!2002011 (forall!11625 (toList!5953 lm!2023) lambda!216819))))

(assert (=> d!1507414 (= (forallContained!3665 (toList!5953 lm!2023) lambda!216819 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))) lt!1893289)))

(declare-fun b!4729471 () Bool)

(assert (=> b!4729471 (= e!2949827 (contains!16237 (toList!5953 lm!2023) (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))

(assert (= (and d!1507414 res!2002011) b!4729471))

(declare-fun b_lambda!180081 () Bool)

(assert (=> (not b_lambda!180081) (not d!1507414)))

(declare-fun m!5670379 () Bool)

(assert (=> d!1507414 m!5670379))

(declare-fun m!5670381 () Bool)

(assert (=> d!1507414 m!5670381))

(assert (=> d!1507414 m!5669479))

(declare-fun m!5670383 () Bool)

(assert (=> b!4729471 m!5670383))

(assert (=> b!4728807 d!1507414))

(declare-fun e!2949828 () Bool)

(declare-fun b!4729472 () Bool)

(assert (=> b!4729472 (= e!2949828 (not (containsKey!3402 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)) key!4653)))))

(declare-fun b!4729473 () Bool)

(declare-fun e!2949832 () Option!12388)

(assert (=> b!4729473 (= e!2949832 None!12387)))

(declare-fun b!4729474 () Bool)

(assert (=> b!4729474 (= e!2949832 (getPair!572 (t!360278 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))) key!4653))))

(declare-fun d!1507416 () Bool)

(declare-fun e!2949830 () Bool)

(assert (=> d!1507416 e!2949830))

(declare-fun res!2002015 () Bool)

(assert (=> d!1507416 (=> res!2002015 e!2949830)))

(assert (=> d!1507416 (= res!2002015 e!2949828)))

(declare-fun res!2002013 () Bool)

(assert (=> d!1507416 (=> (not res!2002013) (not e!2949828))))

(declare-fun lt!1893290 () Option!12388)

(assert (=> d!1507416 (= res!2002013 (isEmpty!29195 lt!1893290))))

(declare-fun e!2949831 () Option!12388)

(assert (=> d!1507416 (= lt!1893290 e!2949831)))

(declare-fun c!807695 () Bool)

(assert (=> d!1507416 (= c!807695 (and ((_ is Cons!52878) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))) (= (_1!30555 (h!59237 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))) key!4653)))))

(assert (=> d!1507416 (noDuplicateKeys!2032 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))

(assert (=> d!1507416 (= (getPair!572 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)) key!4653) lt!1893290)))

(declare-fun e!2949829 () Bool)

(declare-fun b!4729475 () Bool)

(assert (=> b!4729475 (= e!2949829 (contains!16242 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)) (get!17745 lt!1893290)))))

(declare-fun b!4729476 () Bool)

(assert (=> b!4729476 (= e!2949831 (Some!12387 (h!59237 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))

(declare-fun b!4729477 () Bool)

(declare-fun res!2002014 () Bool)

(assert (=> b!4729477 (=> (not res!2002014) (not e!2949829))))

(assert (=> b!4729477 (= res!2002014 (= (_1!30555 (get!17745 lt!1893290)) key!4653))))

(declare-fun b!4729478 () Bool)

(assert (=> b!4729478 (= e!2949831 e!2949832)))

(declare-fun c!807696 () Bool)

(assert (=> b!4729478 (= c!807696 ((_ is Cons!52878) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))))))

(declare-fun b!4729479 () Bool)

(assert (=> b!4729479 (= e!2949830 e!2949829)))

(declare-fun res!2002012 () Bool)

(assert (=> b!4729479 (=> (not res!2002012) (not e!2949829))))

(assert (=> b!4729479 (= res!2002012 (isDefined!9642 lt!1893290))))

(assert (= (and d!1507416 c!807695) b!4729476))

(assert (= (and d!1507416 (not c!807695)) b!4729478))

(assert (= (and b!4729478 c!807696) b!4729474))

(assert (= (and b!4729478 (not c!807696)) b!4729473))

(assert (= (and d!1507416 res!2002013) b!4729472))

(assert (= (and d!1507416 (not res!2002015)) b!4729479))

(assert (= (and b!4729479 res!2002012) b!4729477))

(assert (= (and b!4729477 res!2002014) b!4729475))

(declare-fun m!5670385 () Bool)

(assert (=> b!4729475 m!5670385))

(assert (=> b!4729475 m!5669473))

(assert (=> b!4729475 m!5670385))

(declare-fun m!5670387 () Bool)

(assert (=> b!4729475 m!5670387))

(declare-fun m!5670389 () Bool)

(assert (=> d!1507416 m!5670389))

(assert (=> d!1507416 m!5669473))

(declare-fun m!5670391 () Bool)

(assert (=> d!1507416 m!5670391))

(assert (=> b!4729477 m!5670385))

(declare-fun m!5670393 () Bool)

(assert (=> b!4729474 m!5670393))

(declare-fun m!5670395 () Bool)

(assert (=> b!4729479 m!5670395))

(assert (=> b!4729472 m!5669473))

(declare-fun m!5670397 () Bool)

(assert (=> b!4729472 m!5670397))

(assert (=> b!4728807 d!1507416))

(declare-fun d!1507418 () Bool)

(assert (=> d!1507418 (contains!16237 (toList!5953 lm!2023) (tuple2!54525 lt!1892869 lt!1892868))))

(declare-fun lt!1893291 () Unit!131227)

(assert (=> d!1507418 (= lt!1893291 (choose!33424 lm!2023 lt!1892869 lt!1892868))))

(assert (=> d!1507418 (contains!16238 lm!2023 lt!1892869)))

(assert (=> d!1507418 (= (lemmaGetValueImpliesTupleContained!377 lm!2023 lt!1892869 lt!1892868) lt!1893291)))

(declare-fun bs!1118932 () Bool)

(assert (= bs!1118932 d!1507418))

(assert (=> bs!1118932 m!5669467))

(declare-fun m!5670399 () Bool)

(assert (=> bs!1118932 m!5670399))

(assert (=> bs!1118932 m!5669463))

(assert (=> b!4728807 d!1507418))

(assert (=> b!4728807 d!1507404))

(declare-fun d!1507420 () Bool)

(declare-fun e!2949834 () Bool)

(assert (=> d!1507420 e!2949834))

(declare-fun res!2002016 () Bool)

(assert (=> d!1507420 (=> res!2002016 e!2949834)))

(declare-fun lt!1893293 () Bool)

(assert (=> d!1507420 (= res!2002016 (not lt!1893293))))

(declare-fun lt!1893292 () Bool)

(assert (=> d!1507420 (= lt!1893293 lt!1893292)))

(declare-fun lt!1893295 () Unit!131227)

(declare-fun e!2949833 () Unit!131227)

(assert (=> d!1507420 (= lt!1893295 e!2949833)))

(declare-fun c!807697 () Bool)

(assert (=> d!1507420 (= c!807697 lt!1893292)))

(assert (=> d!1507420 (= lt!1893292 (containsKey!3405 (toList!5953 lm!2023) lt!1892869))))

(assert (=> d!1507420 (= (contains!16238 lm!2023 lt!1892869) lt!1893293)))

(declare-fun b!4729480 () Bool)

(declare-fun lt!1893294 () Unit!131227)

(assert (=> b!4729480 (= e!2949833 lt!1893294)))

(assert (=> b!4729480 (= lt!1893294 (lemmaContainsKeyImpliesGetValueByKeyDefined!1868 (toList!5953 lm!2023) lt!1892869))))

(assert (=> b!4729480 (isDefined!9645 (getValueByKey!1977 (toList!5953 lm!2023) lt!1892869))))

(declare-fun b!4729481 () Bool)

(declare-fun Unit!131298 () Unit!131227)

(assert (=> b!4729481 (= e!2949833 Unit!131298)))

(declare-fun b!4729482 () Bool)

(assert (=> b!4729482 (= e!2949834 (isDefined!9645 (getValueByKey!1977 (toList!5953 lm!2023) lt!1892869)))))

(assert (= (and d!1507420 c!807697) b!4729480))

(assert (= (and d!1507420 (not c!807697)) b!4729481))

(assert (= (and d!1507420 (not res!2002016)) b!4729482))

(declare-fun m!5670401 () Bool)

(assert (=> d!1507420 m!5670401))

(declare-fun m!5670403 () Bool)

(assert (=> b!4729480 m!5670403))

(assert (=> b!4729480 m!5669461))

(assert (=> b!4729480 m!5669461))

(declare-fun m!5670405 () Bool)

(assert (=> b!4729480 m!5670405))

(assert (=> b!4729482 m!5669461))

(assert (=> b!4729482 m!5669461))

(assert (=> b!4729482 m!5670405))

(assert (=> b!4728807 d!1507420))

(declare-fun d!1507422 () Bool)

(assert (=> d!1507422 (= (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)) (get!17744 (getValueByKey!1977 (toList!5953 lm!2023) (hash!4413 hashF!1323 key!4653))))))

(declare-fun bs!1118933 () Bool)

(assert (= bs!1118933 d!1507422))

(assert (=> bs!1118933 m!5669311))

(assert (=> bs!1118933 m!5670365))

(assert (=> bs!1118933 m!5670365))

(declare-fun m!5670407 () Bool)

(assert (=> bs!1118933 m!5670407))

(assert (=> b!4728807 d!1507422))

(declare-fun lt!1893296 () Bool)

(declare-fun d!1507424 () Bool)

(assert (=> d!1507424 (= lt!1893296 (select (content!9419 (toList!5953 lm!2023)) (tuple2!54525 lt!1892869 lt!1892868)))))

(declare-fun e!2949835 () Bool)

(assert (=> d!1507424 (= lt!1893296 e!2949835)))

(declare-fun res!2002017 () Bool)

(assert (=> d!1507424 (=> (not res!2002017) (not e!2949835))))

(assert (=> d!1507424 (= res!2002017 ((_ is Cons!52879) (toList!5953 lm!2023)))))

(assert (=> d!1507424 (= (contains!16237 (toList!5953 lm!2023) (tuple2!54525 lt!1892869 lt!1892868)) lt!1893296)))

(declare-fun b!4729483 () Bool)

(declare-fun e!2949836 () Bool)

(assert (=> b!4729483 (= e!2949835 e!2949836)))

(declare-fun res!2002018 () Bool)

(assert (=> b!4729483 (=> res!2002018 e!2949836)))

(assert (=> b!4729483 (= res!2002018 (= (h!59238 (toList!5953 lm!2023)) (tuple2!54525 lt!1892869 lt!1892868)))))

(declare-fun b!4729484 () Bool)

(assert (=> b!4729484 (= e!2949836 (contains!16237 (t!360279 (toList!5953 lm!2023)) (tuple2!54525 lt!1892869 lt!1892868)))))

(assert (= (and d!1507424 res!2002017) b!4729483))

(assert (= (and b!4729483 (not res!2002018)) b!4729484))

(assert (=> d!1507424 m!5669379))

(declare-fun m!5670409 () Bool)

(assert (=> d!1507424 m!5670409))

(declare-fun m!5670411 () Bool)

(assert (=> b!4729484 m!5670411))

(assert (=> b!4728807 d!1507424))

(declare-fun d!1507426 () Bool)

(assert (=> d!1507426 (= (isDefined!9642 (getPair!572 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)) key!4653)) (not (isEmpty!29195 (getPair!572 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)) key!4653))))))

(declare-fun bs!1118934 () Bool)

(assert (= bs!1118934 d!1507426))

(assert (=> bs!1118934 m!5669475))

(declare-fun m!5670413 () Bool)

(assert (=> bs!1118934 m!5670413))

(assert (=> b!4728807 d!1507426))

(assert (=> b!4728807 d!1507080))

(assert (=> b!4728807 d!1507038))

(declare-fun d!1507428 () Bool)

(assert (=> d!1507428 (= (get!17744 (getValueByKey!1977 (toList!5953 lm!2023) lt!1892762)) (v!46999 (getValueByKey!1977 (toList!5953 lm!2023) lt!1892762)))))

(assert (=> d!1506998 d!1507428))

(assert (=> d!1506998 d!1507348))

(assert (=> b!4728805 d!1506992))

(declare-fun d!1507430 () Bool)

(assert (=> d!1507430 (= (isDefined!9642 lt!1892897) (not (isEmpty!29195 lt!1892897)))))

(declare-fun bs!1118935 () Bool)

(assert (= bs!1118935 d!1507430))

(assert (=> bs!1118935 m!5669517))

(assert (=> b!4728871 d!1507430))

(assert (=> d!1507026 d!1507044))

(declare-fun d!1507432 () Bool)

(assert (=> d!1507432 (containsKey!3402 oldBucket!34 key!4653)))

(assert (=> d!1507432 true))

(declare-fun _$38!377 () Unit!131227)

(assert (=> d!1507432 (= (choose!33426 oldBucket!34 key!4653 hashF!1323) _$38!377)))

(declare-fun bs!1118936 () Bool)

(assert (= bs!1118936 d!1507432))

(assert (=> bs!1118936 m!5669335))

(assert (=> d!1507026 d!1507432))

(assert (=> d!1507026 d!1507082))

(assert (=> b!4728935 d!1507090))

(assert (=> b!4728935 d!1507108))

(declare-fun d!1507434 () Bool)

(declare-fun res!2002019 () Bool)

(declare-fun e!2949837 () Bool)

(assert (=> d!1507434 (=> res!2002019 e!2949837)))

(assert (=> d!1507434 (= res!2002019 (not ((_ is Cons!52878) (t!360278 newBucket!218))))))

(assert (=> d!1507434 (= (noDuplicateKeys!2032 (t!360278 newBucket!218)) e!2949837)))

(declare-fun b!4729485 () Bool)

(declare-fun e!2949838 () Bool)

(assert (=> b!4729485 (= e!2949837 e!2949838)))

(declare-fun res!2002020 () Bool)

(assert (=> b!4729485 (=> (not res!2002020) (not e!2949838))))

(assert (=> b!4729485 (= res!2002020 (not (containsKey!3402 (t!360278 (t!360278 newBucket!218)) (_1!30555 (h!59237 (t!360278 newBucket!218))))))))

(declare-fun b!4729486 () Bool)

(assert (=> b!4729486 (= e!2949838 (noDuplicateKeys!2032 (t!360278 (t!360278 newBucket!218))))))

(assert (= (and d!1507434 (not res!2002019)) b!4729485))

(assert (= (and b!4729485 res!2002020) b!4729486))

(declare-fun m!5670415 () Bool)

(assert (=> b!4729485 m!5670415))

(declare-fun m!5670417 () Bool)

(assert (=> b!4729486 m!5670417))

(assert (=> b!4728739 d!1507434))

(declare-fun bs!1118937 () Bool)

(declare-fun b!4729490 () Bool)

(assert (= bs!1118937 (and b!4729490 d!1507090)))

(declare-fun lambda!216933 () Int)

(assert (=> bs!1118937 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893065) (= lambda!216933 lambda!216874))))

(declare-fun bs!1118938 () Bool)

(assert (= bs!1118938 (and b!4729490 b!4729036)))

(assert (=> bs!1118938 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216933 lambda!216872))))

(declare-fun bs!1118939 () Bool)

(assert (= bs!1118939 (and b!4729490 d!1507074)))

(assert (=> bs!1118939 (not (= lambda!216933 lambda!216840))))

(declare-fun bs!1118940 () Bool)

(assert (= bs!1118940 (and b!4729490 b!4729039)))

(assert (=> bs!1118940 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216933 lambda!216871))))

(assert (=> bs!1118938 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893054) (= lambda!216933 lambda!216873))))

(declare-fun bs!1118941 () Bool)

(assert (= bs!1118941 (and b!4729490 d!1507116)))

(assert (=> bs!1118941 (not (= lambda!216933 lambda!216876))))

(assert (=> b!4729490 true))

(declare-fun bs!1118942 () Bool)

(declare-fun b!4729487 () Bool)

(assert (= bs!1118942 (and b!4729487 d!1507090)))

(declare-fun lambda!216934 () Int)

(assert (=> bs!1118942 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893065) (= lambda!216934 lambda!216874))))

(declare-fun bs!1118943 () Bool)

(assert (= bs!1118943 (and b!4729487 b!4729036)))

(assert (=> bs!1118943 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216934 lambda!216872))))

(declare-fun bs!1118944 () Bool)

(assert (= bs!1118944 (and b!4729487 d!1507074)))

(assert (=> bs!1118944 (not (= lambda!216934 lambda!216840))))

(declare-fun bs!1118945 () Bool)

(assert (= bs!1118945 (and b!4729487 b!4729490)))

(assert (=> bs!1118945 (= lambda!216934 lambda!216933)))

(declare-fun bs!1118946 () Bool)

(assert (= bs!1118946 (and b!4729487 b!4729039)))

(assert (=> bs!1118946 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216934 lambda!216871))))

(assert (=> bs!1118943 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893054) (= lambda!216934 lambda!216873))))

(declare-fun bs!1118947 () Bool)

(assert (= bs!1118947 (and b!4729487 d!1507116)))

(assert (=> bs!1118947 (not (= lambda!216934 lambda!216876))))

(assert (=> b!4729487 true))

(declare-fun lt!1893302 () ListMap!5317)

(declare-fun lambda!216935 () Int)

(assert (=> bs!1118942 (= (= lt!1893302 lt!1893065) (= lambda!216935 lambda!216874))))

(assert (=> bs!1118944 (not (= lambda!216935 lambda!216840))))

(assert (=> bs!1118945 (= (= lt!1893302 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216935 lambda!216933))))

(assert (=> bs!1118946 (= (= lt!1893302 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216935 lambda!216871))))

(assert (=> bs!1118943 (= (= lt!1893302 lt!1893054) (= lambda!216935 lambda!216873))))

(assert (=> bs!1118947 (not (= lambda!216935 lambda!216876))))

(assert (=> b!4729487 (= (= lt!1893302 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216935 lambda!216934))))

(assert (=> bs!1118943 (= (= lt!1893302 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216935 lambda!216872))))

(assert (=> b!4729487 true))

(declare-fun bs!1118948 () Bool)

(declare-fun d!1507436 () Bool)

(assert (= bs!1118948 (and d!1507436 d!1507090)))

(declare-fun lt!1893313 () ListMap!5317)

(declare-fun lambda!216936 () Int)

(assert (=> bs!1118948 (= (= lt!1893313 lt!1893065) (= lambda!216936 lambda!216874))))

(declare-fun bs!1118949 () Bool)

(assert (= bs!1118949 (and d!1507436 d!1507074)))

(assert (=> bs!1118949 (not (= lambda!216936 lambda!216840))))

(declare-fun bs!1118950 () Bool)

(assert (= bs!1118950 (and d!1507436 b!4729490)))

(assert (=> bs!1118950 (= (= lt!1893313 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216936 lambda!216933))))

(declare-fun bs!1118951 () Bool)

(assert (= bs!1118951 (and d!1507436 b!4729039)))

(assert (=> bs!1118951 (= (= lt!1893313 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216936 lambda!216871))))

(declare-fun bs!1118952 () Bool)

(assert (= bs!1118952 (and d!1507436 b!4729036)))

(assert (=> bs!1118952 (= (= lt!1893313 lt!1893054) (= lambda!216936 lambda!216873))))

(declare-fun bs!1118953 () Bool)

(assert (= bs!1118953 (and d!1507436 d!1507116)))

(assert (=> bs!1118953 (not (= lambda!216936 lambda!216876))))

(declare-fun bs!1118954 () Bool)

(assert (= bs!1118954 (and d!1507436 b!4729487)))

(assert (=> bs!1118954 (= (= lt!1893313 lt!1893302) (= lambda!216936 lambda!216935))))

(assert (=> bs!1118954 (= (= lt!1893313 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216936 lambda!216934))))

(assert (=> bs!1118952 (= (= lt!1893313 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216936 lambda!216872))))

(assert (=> d!1507436 true))

(declare-fun bm!330811 () Bool)

(declare-fun call!330817 () Unit!131227)

(assert (=> bm!330811 (= call!330817 (lemmaContainsAllItsOwnKeys!808 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun e!2949840 () ListMap!5317)

(assert (=> b!4729487 (= e!2949840 lt!1893302)))

(declare-fun lt!1893299 () ListMap!5317)

(assert (=> b!4729487 (= lt!1893299 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> b!4729487 (= lt!1893302 (addToMapMapFromBucket!1462 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893306 () Unit!131227)

(assert (=> b!4729487 (= lt!1893306 call!330817)))

(assert (=> b!4729487 (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lambda!216934)))

(declare-fun lt!1893301 () Unit!131227)

(assert (=> b!4729487 (= lt!1893301 lt!1893306)))

(assert (=> b!4729487 (forall!11627 (toList!5954 lt!1893299) lambda!216935)))

(declare-fun lt!1893315 () Unit!131227)

(declare-fun Unit!131299 () Unit!131227)

(assert (=> b!4729487 (= lt!1893315 Unit!131299)))

(assert (=> b!4729487 (forall!11627 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lambda!216935)))

(declare-fun lt!1893312 () Unit!131227)

(declare-fun Unit!131300 () Unit!131227)

(assert (=> b!4729487 (= lt!1893312 Unit!131300)))

(declare-fun lt!1893310 () Unit!131227)

(declare-fun Unit!131301 () Unit!131227)

(assert (=> b!4729487 (= lt!1893310 Unit!131301)))

(declare-fun lt!1893298 () Unit!131227)

(assert (=> b!4729487 (= lt!1893298 (forallContained!3667 (toList!5954 lt!1893299) lambda!216935 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> b!4729487 (contains!16239 lt!1893299 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893314 () Unit!131227)

(declare-fun Unit!131302 () Unit!131227)

(assert (=> b!4729487 (= lt!1893314 Unit!131302)))

(assert (=> b!4729487 (contains!16239 lt!1893302 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893304 () Unit!131227)

(declare-fun Unit!131303 () Unit!131227)

(assert (=> b!4729487 (= lt!1893304 Unit!131303)))

(declare-fun call!330818 () Bool)

(assert (=> b!4729487 call!330818))

(declare-fun lt!1893308 () Unit!131227)

(declare-fun Unit!131304 () Unit!131227)

(assert (=> b!4729487 (= lt!1893308 Unit!131304)))

(assert (=> b!4729487 (forall!11627 (toList!5954 lt!1893299) lambda!216935)))

(declare-fun lt!1893303 () Unit!131227)

(declare-fun Unit!131305 () Unit!131227)

(assert (=> b!4729487 (= lt!1893303 Unit!131305)))

(declare-fun lt!1893305 () Unit!131227)

(declare-fun Unit!131306 () Unit!131227)

(assert (=> b!4729487 (= lt!1893305 Unit!131306)))

(declare-fun lt!1893307 () Unit!131227)

(assert (=> b!4729487 (= lt!1893307 (addForallContainsKeyThenBeforeAdding!807 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893302 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (_2!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> b!4729487 (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lambda!216935)))

(declare-fun lt!1893297 () Unit!131227)

(assert (=> b!4729487 (= lt!1893297 lt!1893307)))

(declare-fun call!330816 () Bool)

(assert (=> b!4729487 call!330816))

(declare-fun lt!1893317 () Unit!131227)

(declare-fun Unit!131307 () Unit!131227)

(assert (=> b!4729487 (= lt!1893317 Unit!131307)))

(declare-fun res!2002022 () Bool)

(assert (=> b!4729487 (= res!2002022 (forall!11627 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))) lambda!216935))))

(declare-fun e!2949841 () Bool)

(assert (=> b!4729487 (=> (not res!2002022) (not e!2949841))))

(assert (=> b!4729487 e!2949841))

(declare-fun lt!1893300 () Unit!131227)

(declare-fun Unit!131308 () Unit!131227)

(assert (=> b!4729487 (= lt!1893300 Unit!131308)))

(declare-fun b!4729488 () Bool)

(declare-fun res!2002023 () Bool)

(declare-fun e!2949839 () Bool)

(assert (=> b!4729488 (=> (not res!2002023) (not e!2949839))))

(assert (=> b!4729488 (= res!2002023 (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lambda!216936))))

(declare-fun b!4729489 () Bool)

(assert (=> b!4729489 (= e!2949839 (invariantList!1523 (toList!5954 lt!1893313)))))

(declare-fun bm!330813 () Bool)

(declare-fun c!807698 () Bool)

(assert (=> bm!330813 (= call!330816 (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (ite c!807698 lambda!216933 lambda!216935)))))

(assert (=> b!4729490 (= e!2949840 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(declare-fun lt!1893309 () Unit!131227)

(assert (=> b!4729490 (= lt!1893309 call!330817)))

(assert (=> b!4729490 call!330818))

(declare-fun lt!1893316 () Unit!131227)

(assert (=> b!4729490 (= lt!1893316 lt!1893309)))

(assert (=> b!4729490 call!330816))

(declare-fun lt!1893311 () Unit!131227)

(declare-fun Unit!131309 () Unit!131227)

(assert (=> b!4729490 (= lt!1893311 Unit!131309)))

(declare-fun b!4729491 () Bool)

(assert (=> b!4729491 (= e!2949841 (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lambda!216935))))

(declare-fun bm!330812 () Bool)

(assert (=> bm!330812 (= call!330818 (forall!11627 (ite c!807698 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (ite c!807698 lambda!216933 lambda!216935)))))

(assert (=> d!1507436 e!2949839))

(declare-fun res!2002021 () Bool)

(assert (=> d!1507436 (=> (not res!2002021) (not e!2949839))))

(assert (=> d!1507436 (= res!2002021 (forall!11627 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))) lambda!216936))))

(assert (=> d!1507436 (= lt!1893313 e!2949840)))

(assert (=> d!1507436 (= c!807698 ((_ is Nil!52878) (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (=> d!1507436 (noDuplicateKeys!2032 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))

(assert (=> d!1507436 (= (addToMapMapFromBucket!1462 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893313)))

(assert (= (and d!1507436 c!807698) b!4729490))

(assert (= (and d!1507436 (not c!807698)) b!4729487))

(assert (= (and b!4729487 res!2002022) b!4729491))

(assert (= (or b!4729490 b!4729487) bm!330811))

(assert (= (or b!4729490 b!4729487) bm!330813))

(assert (= (or b!4729490 b!4729487) bm!330812))

(assert (= (and d!1507436 res!2002021) b!4729488))

(assert (= (and b!4729488 res!2002023) b!4729489))

(declare-fun m!5670419 () Bool)

(assert (=> b!4729487 m!5670419))

(declare-fun m!5670421 () Bool)

(assert (=> b!4729487 m!5670421))

(declare-fun m!5670423 () Bool)

(assert (=> b!4729487 m!5670423))

(assert (=> b!4729487 m!5670423))

(declare-fun m!5670425 () Bool)

(assert (=> b!4729487 m!5670425))

(declare-fun m!5670427 () Bool)

(assert (=> b!4729487 m!5670427))

(assert (=> b!4729487 m!5669683))

(declare-fun m!5670429 () Bool)

(assert (=> b!4729487 m!5670429))

(declare-fun m!5670431 () Bool)

(assert (=> b!4729487 m!5670431))

(declare-fun m!5670433 () Bool)

(assert (=> b!4729487 m!5670433))

(declare-fun m!5670435 () Bool)

(assert (=> b!4729487 m!5670435))

(assert (=> b!4729487 m!5669683))

(assert (=> b!4729487 m!5670425))

(declare-fun m!5670437 () Bool)

(assert (=> b!4729487 m!5670437))

(declare-fun m!5670439 () Bool)

(assert (=> b!4729487 m!5670439))

(declare-fun m!5670441 () Bool)

(assert (=> b!4729488 m!5670441))

(declare-fun m!5670443 () Bool)

(assert (=> d!1507436 m!5670443))

(assert (=> d!1507436 m!5670225))

(assert (=> bm!330811 m!5669683))

(declare-fun m!5670445 () Bool)

(assert (=> bm!330811 m!5670445))

(assert (=> b!4729491 m!5670419))

(declare-fun m!5670447 () Bool)

(assert (=> b!4729489 m!5670447))

(declare-fun m!5670449 () Bool)

(assert (=> bm!330813 m!5670449))

(declare-fun m!5670451 () Bool)

(assert (=> bm!330812 m!5670451))

(assert (=> b!4729036 d!1507436))

(declare-fun d!1507438 () Bool)

(declare-fun res!2002024 () Bool)

(declare-fun e!2949842 () Bool)

(assert (=> d!1507438 (=> res!2002024 e!2949842)))

(assert (=> d!1507438 (= res!2002024 ((_ is Nil!52878) (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> d!1507438 (= (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) lambda!216873) e!2949842)))

(declare-fun b!4729492 () Bool)

(declare-fun e!2949843 () Bool)

(assert (=> b!4729492 (= e!2949842 e!2949843)))

(declare-fun res!2002025 () Bool)

(assert (=> b!4729492 (=> (not res!2002025) (not e!2949843))))

(assert (=> b!4729492 (= res!2002025 (dynLambda!21841 lambda!216873 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))

(declare-fun b!4729493 () Bool)

(assert (=> b!4729493 (= e!2949843 (forall!11627 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) lambda!216873))))

(assert (= (and d!1507438 (not res!2002024)) b!4729492))

(assert (= (and b!4729492 res!2002025) b!4729493))

(declare-fun b_lambda!180083 () Bool)

(assert (=> (not b_lambda!180083) (not b!4729492)))

(declare-fun m!5670453 () Bool)

(assert (=> b!4729492 m!5670453))

(declare-fun m!5670455 () Bool)

(assert (=> b!4729493 m!5670455))

(assert (=> b!4729036 d!1507438))

(declare-fun d!1507440 () Bool)

(declare-fun e!2949846 () Bool)

(assert (=> d!1507440 e!2949846))

(declare-fun res!2002030 () Bool)

(assert (=> d!1507440 (=> (not res!2002030) (not e!2949846))))

(declare-fun lt!1893329 () ListMap!5317)

(assert (=> d!1507440 (= res!2002030 (contains!16239 lt!1893329 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893328 () List!53002)

(assert (=> d!1507440 (= lt!1893329 (ListMap!5318 lt!1893328))))

(declare-fun lt!1893327 () Unit!131227)

(declare-fun lt!1893326 () Unit!131227)

(assert (=> d!1507440 (= lt!1893327 lt!1893326)))

(assert (=> d!1507440 (= (getValueByKey!1978 lt!1893328 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (Some!12391 (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1096 (List!53002 K!14230 V!14476) Unit!131227)

(assert (=> d!1507440 (= lt!1893326 (lemmaContainsTupThenGetReturnValue!1096 lt!1893328 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun insertNoDuplicatedKeys!604 (List!53002 K!14230 V!14476) List!53002)

(assert (=> d!1507440 (= lt!1893328 (insertNoDuplicatedKeys!604 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1507440 (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893329)))

(declare-fun b!4729498 () Bool)

(declare-fun res!2002031 () Bool)

(assert (=> b!4729498 (=> (not res!2002031) (not e!2949846))))

(assert (=> b!4729498 (= res!2002031 (= (getValueByKey!1978 (toList!5954 lt!1893329) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (Some!12391 (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun b!4729499 () Bool)

(assert (=> b!4729499 (= e!2949846 (contains!16242 (toList!5954 lt!1893329) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (= (and d!1507440 res!2002030) b!4729498))

(assert (= (and b!4729498 res!2002031) b!4729499))

(declare-fun m!5670457 () Bool)

(assert (=> d!1507440 m!5670457))

(declare-fun m!5670459 () Bool)

(assert (=> d!1507440 m!5670459))

(declare-fun m!5670461 () Bool)

(assert (=> d!1507440 m!5670461))

(declare-fun m!5670463 () Bool)

(assert (=> d!1507440 m!5670463))

(declare-fun m!5670465 () Bool)

(assert (=> b!4729498 m!5670465))

(declare-fun m!5670467 () Bool)

(assert (=> b!4729499 m!5670467))

(assert (=> b!4729036 d!1507440))

(declare-fun d!1507442 () Bool)

(declare-fun res!2002032 () Bool)

(declare-fun e!2949847 () Bool)

(assert (=> d!1507442 (=> res!2002032 e!2949847)))

(assert (=> d!1507442 (= res!2002032 ((_ is Nil!52878) (toList!5954 lt!1893051)))))

(assert (=> d!1507442 (= (forall!11627 (toList!5954 lt!1893051) lambda!216873) e!2949847)))

(declare-fun b!4729500 () Bool)

(declare-fun e!2949848 () Bool)

(assert (=> b!4729500 (= e!2949847 e!2949848)))

(declare-fun res!2002033 () Bool)

(assert (=> b!4729500 (=> (not res!2002033) (not e!2949848))))

(assert (=> b!4729500 (= res!2002033 (dynLambda!21841 lambda!216873 (h!59237 (toList!5954 lt!1893051))))))

(declare-fun b!4729501 () Bool)

(assert (=> b!4729501 (= e!2949848 (forall!11627 (t!360278 (toList!5954 lt!1893051)) lambda!216873))))

(assert (= (and d!1507442 (not res!2002032)) b!4729500))

(assert (= (and b!4729500 res!2002033) b!4729501))

(declare-fun b_lambda!180085 () Bool)

(assert (=> (not b_lambda!180085) (not b!4729500)))

(declare-fun m!5670469 () Bool)

(assert (=> b!4729500 m!5670469))

(declare-fun m!5670471 () Bool)

(assert (=> b!4729501 m!5670471))

(assert (=> b!4729036 d!1507442))

(declare-fun d!1507444 () Bool)

(declare-fun e!2949852 () Bool)

(assert (=> d!1507444 e!2949852))

(declare-fun res!2002036 () Bool)

(assert (=> d!1507444 (=> res!2002036 e!2949852)))

(declare-fun e!2949853 () Bool)

(assert (=> d!1507444 (= res!2002036 e!2949853)))

(declare-fun res!2002034 () Bool)

(assert (=> d!1507444 (=> (not res!2002034) (not e!2949853))))

(declare-fun lt!1893330 () Bool)

(assert (=> d!1507444 (= res!2002034 (not lt!1893330))))

(declare-fun lt!1893333 () Bool)

(assert (=> d!1507444 (= lt!1893330 lt!1893333)))

(declare-fun lt!1893335 () Unit!131227)

(declare-fun e!2949851 () Unit!131227)

(assert (=> d!1507444 (= lt!1893335 e!2949851)))

(declare-fun c!807700 () Bool)

(assert (=> d!1507444 (= c!807700 lt!1893333)))

(assert (=> d!1507444 (= lt!1893333 (containsKey!3406 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1507444 (= (contains!16239 lt!1893054 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893330)))

(declare-fun b!4729502 () Bool)

(assert (=> b!4729502 false))

(declare-fun lt!1893334 () Unit!131227)

(declare-fun lt!1893331 () Unit!131227)

(assert (=> b!4729502 (= lt!1893334 lt!1893331)))

(assert (=> b!4729502 (containsKey!3406 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (=> b!4729502 (= lt!1893331 (lemmaInGetKeysListThenContainsKey!962 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun e!2949849 () Unit!131227)

(declare-fun Unit!131310 () Unit!131227)

(assert (=> b!4729502 (= e!2949849 Unit!131310)))

(declare-fun b!4729503 () Bool)

(declare-fun Unit!131311 () Unit!131227)

(assert (=> b!4729503 (= e!2949849 Unit!131311)))

(declare-fun b!4729504 () Bool)

(declare-fun e!2949850 () List!53005)

(assert (=> b!4729504 (= e!2949850 (getKeysList!963 (toList!5954 lt!1893054)))))

(declare-fun b!4729505 () Bool)

(declare-fun e!2949854 () Bool)

(assert (=> b!4729505 (= e!2949854 (contains!16243 (keys!19004 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4729506 () Bool)

(declare-fun lt!1893337 () Unit!131227)

(assert (=> b!4729506 (= e!2949851 lt!1893337)))

(declare-fun lt!1893332 () Unit!131227)

(assert (=> b!4729506 (= lt!1893332 (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> b!4729506 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893336 () Unit!131227)

(assert (=> b!4729506 (= lt!1893336 lt!1893332)))

(assert (=> b!4729506 (= lt!1893337 (lemmaInListThenGetKeysListContains!958 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun call!330819 () Bool)

(assert (=> b!4729506 call!330819))

(declare-fun bm!330814 () Bool)

(assert (=> bm!330814 (= call!330819 (contains!16243 e!2949850 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun c!807701 () Bool)

(assert (=> bm!330814 (= c!807701 c!807700)))

(declare-fun b!4729507 () Bool)

(assert (=> b!4729507 (= e!2949850 (keys!19004 lt!1893054))))

(declare-fun b!4729508 () Bool)

(assert (=> b!4729508 (= e!2949851 e!2949849)))

(declare-fun c!807699 () Bool)

(assert (=> b!4729508 (= c!807699 call!330819)))

(declare-fun b!4729509 () Bool)

(assert (=> b!4729509 (= e!2949852 e!2949854)))

(declare-fun res!2002035 () Bool)

(assert (=> b!4729509 (=> (not res!2002035) (not e!2949854))))

(assert (=> b!4729509 (= res!2002035 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun b!4729510 () Bool)

(assert (=> b!4729510 (= e!2949853 (not (contains!16243 (keys!19004 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (= (and d!1507444 c!807700) b!4729506))

(assert (= (and d!1507444 (not c!807700)) b!4729508))

(assert (= (and b!4729508 c!807699) b!4729502))

(assert (= (and b!4729508 (not c!807699)) b!4729503))

(assert (= (or b!4729506 b!4729508) bm!330814))

(assert (= (and bm!330814 c!807701) b!4729504))

(assert (= (and bm!330814 (not c!807701)) b!4729507))

(assert (= (and d!1507444 res!2002034) b!4729510))

(assert (= (and d!1507444 (not res!2002036)) b!4729509))

(assert (= (and b!4729509 res!2002035) b!4729505))

(declare-fun m!5670473 () Bool)

(assert (=> b!4729504 m!5670473))

(declare-fun m!5670475 () Bool)

(assert (=> b!4729502 m!5670475))

(declare-fun m!5670477 () Bool)

(assert (=> b!4729502 m!5670477))

(declare-fun m!5670479 () Bool)

(assert (=> bm!330814 m!5670479))

(declare-fun m!5670481 () Bool)

(assert (=> b!4729509 m!5670481))

(assert (=> b!4729509 m!5670481))

(declare-fun m!5670483 () Bool)

(assert (=> b!4729509 m!5670483))

(declare-fun m!5670485 () Bool)

(assert (=> b!4729505 m!5670485))

(assert (=> b!4729505 m!5670485))

(declare-fun m!5670487 () Bool)

(assert (=> b!4729505 m!5670487))

(assert (=> d!1507444 m!5670475))

(declare-fun m!5670489 () Bool)

(assert (=> b!4729506 m!5670489))

(assert (=> b!4729506 m!5670481))

(assert (=> b!4729506 m!5670481))

(assert (=> b!4729506 m!5670483))

(declare-fun m!5670491 () Bool)

(assert (=> b!4729506 m!5670491))

(assert (=> b!4729510 m!5670485))

(assert (=> b!4729510 m!5670485))

(assert (=> b!4729510 m!5670487))

(assert (=> b!4729507 m!5670485))

(assert (=> b!4729036 d!1507444))

(declare-fun d!1507446 () Bool)

(declare-fun res!2002037 () Bool)

(declare-fun e!2949855 () Bool)

(assert (=> d!1507446 (=> res!2002037 e!2949855)))

(assert (=> d!1507446 (= res!2002037 ((_ is Nil!52878) (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (=> d!1507446 (= (forall!11627 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))) lambda!216873) e!2949855)))

(declare-fun b!4729511 () Bool)

(declare-fun e!2949856 () Bool)

(assert (=> b!4729511 (= e!2949855 e!2949856)))

(declare-fun res!2002038 () Bool)

(assert (=> b!4729511 (=> (not res!2002038) (not e!2949856))))

(assert (=> b!4729511 (= res!2002038 (dynLambda!21841 lambda!216873 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4729512 () Bool)

(assert (=> b!4729512 (= e!2949856 (forall!11627 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lambda!216873))))

(assert (= (and d!1507446 (not res!2002037)) b!4729511))

(assert (= (and b!4729511 res!2002038) b!4729512))

(declare-fun b_lambda!180087 () Bool)

(assert (=> (not b_lambda!180087) (not b!4729511)))

(declare-fun m!5670493 () Bool)

(assert (=> b!4729511 m!5670493))

(declare-fun m!5670495 () Bool)

(assert (=> b!4729512 m!5670495))

(assert (=> b!4729036 d!1507446))

(declare-fun d!1507448 () Bool)

(assert (=> d!1507448 (dynLambda!21841 lambda!216873 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))

(declare-fun lt!1893340 () Unit!131227)

(declare-fun choose!33440 (List!53002 Int tuple2!54522) Unit!131227)

(assert (=> d!1507448 (= lt!1893340 (choose!33440 (toList!5954 lt!1893051) lambda!216873 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(declare-fun e!2949859 () Bool)

(assert (=> d!1507448 e!2949859))

(declare-fun res!2002041 () Bool)

(assert (=> d!1507448 (=> (not res!2002041) (not e!2949859))))

(assert (=> d!1507448 (= res!2002041 (forall!11627 (toList!5954 lt!1893051) lambda!216873))))

(assert (=> d!1507448 (= (forallContained!3667 (toList!5954 lt!1893051) lambda!216873 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893340)))

(declare-fun b!4729515 () Bool)

(assert (=> b!4729515 (= e!2949859 (contains!16242 (toList!5954 lt!1893051) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (= (and d!1507448 res!2002041) b!4729515))

(declare-fun b_lambda!180089 () Bool)

(assert (=> (not b_lambda!180089) (not d!1507448)))

(declare-fun m!5670497 () Bool)

(assert (=> d!1507448 m!5670497))

(declare-fun m!5670499 () Bool)

(assert (=> d!1507448 m!5670499))

(assert (=> d!1507448 m!5669681))

(declare-fun m!5670501 () Bool)

(assert (=> b!4729515 m!5670501))

(assert (=> b!4729036 d!1507448))

(declare-fun d!1507450 () Bool)

(declare-fun e!2949863 () Bool)

(assert (=> d!1507450 e!2949863))

(declare-fun res!2002044 () Bool)

(assert (=> d!1507450 (=> res!2002044 e!2949863)))

(declare-fun e!2949864 () Bool)

(assert (=> d!1507450 (= res!2002044 e!2949864)))

(declare-fun res!2002042 () Bool)

(assert (=> d!1507450 (=> (not res!2002042) (not e!2949864))))

(declare-fun lt!1893341 () Bool)

(assert (=> d!1507450 (= res!2002042 (not lt!1893341))))

(declare-fun lt!1893344 () Bool)

(assert (=> d!1507450 (= lt!1893341 lt!1893344)))

(declare-fun lt!1893346 () Unit!131227)

(declare-fun e!2949862 () Unit!131227)

(assert (=> d!1507450 (= lt!1893346 e!2949862)))

(declare-fun c!807703 () Bool)

(assert (=> d!1507450 (= c!807703 lt!1893344)))

(assert (=> d!1507450 (= lt!1893344 (containsKey!3406 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1507450 (= (contains!16239 lt!1893051 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893341)))

(declare-fun b!4729516 () Bool)

(assert (=> b!4729516 false))

(declare-fun lt!1893345 () Unit!131227)

(declare-fun lt!1893342 () Unit!131227)

(assert (=> b!4729516 (= lt!1893345 lt!1893342)))

(assert (=> b!4729516 (containsKey!3406 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (=> b!4729516 (= lt!1893342 (lemmaInGetKeysListThenContainsKey!962 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun e!2949860 () Unit!131227)

(declare-fun Unit!131312 () Unit!131227)

(assert (=> b!4729516 (= e!2949860 Unit!131312)))

(declare-fun b!4729517 () Bool)

(declare-fun Unit!131313 () Unit!131227)

(assert (=> b!4729517 (= e!2949860 Unit!131313)))

(declare-fun b!4729518 () Bool)

(declare-fun e!2949861 () List!53005)

(assert (=> b!4729518 (= e!2949861 (getKeysList!963 (toList!5954 lt!1893051)))))

(declare-fun b!4729519 () Bool)

(declare-fun e!2949865 () Bool)

(assert (=> b!4729519 (= e!2949865 (contains!16243 (keys!19004 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4729520 () Bool)

(declare-fun lt!1893348 () Unit!131227)

(assert (=> b!4729520 (= e!2949862 lt!1893348)))

(declare-fun lt!1893343 () Unit!131227)

(assert (=> b!4729520 (= lt!1893343 (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> b!4729520 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893347 () Unit!131227)

(assert (=> b!4729520 (= lt!1893347 lt!1893343)))

(assert (=> b!4729520 (= lt!1893348 (lemmaInListThenGetKeysListContains!958 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun call!330820 () Bool)

(assert (=> b!4729520 call!330820))

(declare-fun bm!330815 () Bool)

(assert (=> bm!330815 (= call!330820 (contains!16243 e!2949861 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun c!807704 () Bool)

(assert (=> bm!330815 (= c!807704 c!807703)))

(declare-fun b!4729521 () Bool)

(assert (=> b!4729521 (= e!2949861 (keys!19004 lt!1893051))))

(declare-fun b!4729522 () Bool)

(assert (=> b!4729522 (= e!2949862 e!2949860)))

(declare-fun c!807702 () Bool)

(assert (=> b!4729522 (= c!807702 call!330820)))

(declare-fun b!4729523 () Bool)

(assert (=> b!4729523 (= e!2949863 e!2949865)))

(declare-fun res!2002043 () Bool)

(assert (=> b!4729523 (=> (not res!2002043) (not e!2949865))))

(assert (=> b!4729523 (= res!2002043 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun b!4729524 () Bool)

(assert (=> b!4729524 (= e!2949864 (not (contains!16243 (keys!19004 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (= (and d!1507450 c!807703) b!4729520))

(assert (= (and d!1507450 (not c!807703)) b!4729522))

(assert (= (and b!4729522 c!807702) b!4729516))

(assert (= (and b!4729522 (not c!807702)) b!4729517))

(assert (= (or b!4729520 b!4729522) bm!330815))

(assert (= (and bm!330815 c!807704) b!4729518))

(assert (= (and bm!330815 (not c!807704)) b!4729521))

(assert (= (and d!1507450 res!2002042) b!4729524))

(assert (= (and d!1507450 (not res!2002044)) b!4729523))

(assert (= (and b!4729523 res!2002043) b!4729519))

(declare-fun m!5670503 () Bool)

(assert (=> b!4729518 m!5670503))

(declare-fun m!5670505 () Bool)

(assert (=> b!4729516 m!5670505))

(declare-fun m!5670507 () Bool)

(assert (=> b!4729516 m!5670507))

(declare-fun m!5670509 () Bool)

(assert (=> bm!330815 m!5670509))

(declare-fun m!5670511 () Bool)

(assert (=> b!4729523 m!5670511))

(assert (=> b!4729523 m!5670511))

(declare-fun m!5670513 () Bool)

(assert (=> b!4729523 m!5670513))

(declare-fun m!5670515 () Bool)

(assert (=> b!4729519 m!5670515))

(assert (=> b!4729519 m!5670515))

(declare-fun m!5670517 () Bool)

(assert (=> b!4729519 m!5670517))

(assert (=> d!1507450 m!5670505))

(declare-fun m!5670519 () Bool)

(assert (=> b!4729520 m!5670519))

(assert (=> b!4729520 m!5670511))

(assert (=> b!4729520 m!5670511))

(assert (=> b!4729520 m!5670513))

(declare-fun m!5670521 () Bool)

(assert (=> b!4729520 m!5670521))

(assert (=> b!4729524 m!5670515))

(assert (=> b!4729524 m!5670515))

(assert (=> b!4729524 m!5670517))

(assert (=> b!4729521 m!5670515))

(assert (=> b!4729036 d!1507450))

(declare-fun d!1507452 () Bool)

(declare-fun res!2002045 () Bool)

(declare-fun e!2949866 () Bool)

(assert (=> d!1507452 (=> res!2002045 e!2949866)))

(assert (=> d!1507452 (= res!2002045 ((_ is Nil!52878) (_2!30556 (h!59238 (toList!5953 lm!2023)))))))

(assert (=> d!1507452 (= (forall!11627 (_2!30556 (h!59238 (toList!5953 lm!2023))) lambda!216873) e!2949866)))

(declare-fun b!4729525 () Bool)

(declare-fun e!2949867 () Bool)

(assert (=> b!4729525 (= e!2949866 e!2949867)))

(declare-fun res!2002046 () Bool)

(assert (=> b!4729525 (=> (not res!2002046) (not e!2949867))))

(assert (=> b!4729525 (= res!2002046 (dynLambda!21841 lambda!216873 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(declare-fun b!4729526 () Bool)

(assert (=> b!4729526 (= e!2949867 (forall!11627 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))) lambda!216873))))

(assert (= (and d!1507452 (not res!2002045)) b!4729525))

(assert (= (and b!4729525 res!2002046) b!4729526))

(declare-fun b_lambda!180091 () Bool)

(assert (=> (not b_lambda!180091) (not b!4729525)))

(assert (=> b!4729525 m!5670497))

(assert (=> b!4729526 m!5669689))

(assert (=> b!4729036 d!1507452))

(declare-fun d!1507454 () Bool)

(declare-fun res!2002047 () Bool)

(declare-fun e!2949868 () Bool)

(assert (=> d!1507454 (=> res!2002047 e!2949868)))

(assert (=> d!1507454 (= res!2002047 ((_ is Nil!52878) (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> d!1507454 (= (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) lambda!216872) e!2949868)))

(declare-fun b!4729527 () Bool)

(declare-fun e!2949869 () Bool)

(assert (=> b!4729527 (= e!2949868 e!2949869)))

(declare-fun res!2002048 () Bool)

(assert (=> b!4729527 (=> (not res!2002048) (not e!2949869))))

(assert (=> b!4729527 (= res!2002048 (dynLambda!21841 lambda!216872 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))

(declare-fun b!4729528 () Bool)

(assert (=> b!4729528 (= e!2949869 (forall!11627 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) lambda!216872))))

(assert (= (and d!1507454 (not res!2002047)) b!4729527))

(assert (= (and b!4729527 res!2002048) b!4729528))

(declare-fun b_lambda!180093 () Bool)

(assert (=> (not b_lambda!180093) (not b!4729527)))

(declare-fun m!5670523 () Bool)

(assert (=> b!4729527 m!5670523))

(declare-fun m!5670525 () Bool)

(assert (=> b!4729528 m!5670525))

(assert (=> b!4729036 d!1507454))

(declare-fun bs!1118955 () Bool)

(declare-fun d!1507456 () Bool)

(assert (= bs!1118955 (and d!1507456 d!1507090)))

(declare-fun lambda!216941 () Int)

(assert (=> bs!1118955 (= (= lt!1893054 lt!1893065) (= lambda!216941 lambda!216874))))

(declare-fun bs!1118956 () Bool)

(assert (= bs!1118956 (and d!1507456 d!1507436)))

(assert (=> bs!1118956 (= (= lt!1893054 lt!1893313) (= lambda!216941 lambda!216936))))

(declare-fun bs!1118957 () Bool)

(assert (= bs!1118957 (and d!1507456 d!1507074)))

(assert (=> bs!1118957 (not (= lambda!216941 lambda!216840))))

(declare-fun bs!1118958 () Bool)

(assert (= bs!1118958 (and d!1507456 b!4729490)))

(assert (=> bs!1118958 (= (= lt!1893054 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216941 lambda!216933))))

(declare-fun bs!1118959 () Bool)

(assert (= bs!1118959 (and d!1507456 b!4729039)))

(assert (=> bs!1118959 (= (= lt!1893054 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216941 lambda!216871))))

(declare-fun bs!1118960 () Bool)

(assert (= bs!1118960 (and d!1507456 b!4729036)))

(assert (=> bs!1118960 (= lambda!216941 lambda!216873)))

(declare-fun bs!1118961 () Bool)

(assert (= bs!1118961 (and d!1507456 d!1507116)))

(assert (=> bs!1118961 (not (= lambda!216941 lambda!216876))))

(declare-fun bs!1118962 () Bool)

(assert (= bs!1118962 (and d!1507456 b!4729487)))

(assert (=> bs!1118962 (= (= lt!1893054 lt!1893302) (= lambda!216941 lambda!216935))))

(assert (=> bs!1118962 (= (= lt!1893054 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216941 lambda!216934))))

(assert (=> bs!1118960 (= (= lt!1893054 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216941 lambda!216872))))

(assert (=> d!1507456 true))

(assert (=> d!1507456 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) lambda!216941)))

(declare-fun lt!1893351 () Unit!131227)

(declare-fun choose!33441 (ListMap!5317 ListMap!5317 K!14230 V!14476) Unit!131227)

(assert (=> d!1507456 (= lt!1893351 (choose!33441 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893054 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1507456 (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))) lambda!216941)))

(assert (=> d!1507456 (= (addForallContainsKeyThenBeforeAdding!807 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893054 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893351)))

(declare-fun bs!1118963 () Bool)

(assert (= bs!1118963 d!1507456))

(declare-fun m!5670527 () Bool)

(assert (=> bs!1118963 m!5670527))

(assert (=> bs!1118963 m!5669357))

(declare-fun m!5670529 () Bool)

(assert (=> bs!1118963 m!5670529))

(assert (=> bs!1118963 m!5669357))

(declare-fun m!5670531 () Bool)

(assert (=> bs!1118963 m!5670531))

(declare-fun m!5670533 () Bool)

(assert (=> bs!1118963 m!5670533))

(assert (=> b!4729036 d!1507456))

(declare-fun bs!1118964 () Bool)

(declare-fun b!4729533 () Bool)

(assert (= bs!1118964 (and b!4729533 d!1507090)))

(declare-fun lambda!216942 () Int)

(assert (=> bs!1118964 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893065) (= lambda!216942 lambda!216874))))

(declare-fun bs!1118965 () Bool)

(assert (= bs!1118965 (and b!4729533 d!1507436)))

(assert (=> bs!1118965 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893313) (= lambda!216942 lambda!216936))))

(declare-fun bs!1118966 () Bool)

(assert (= bs!1118966 (and b!4729533 d!1507074)))

(assert (=> bs!1118966 (not (= lambda!216942 lambda!216840))))

(declare-fun bs!1118967 () Bool)

(assert (= bs!1118967 (and b!4729533 b!4729490)))

(assert (=> bs!1118967 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216942 lambda!216933))))

(declare-fun bs!1118968 () Bool)

(assert (= bs!1118968 (and b!4729533 d!1507456)))

(assert (=> bs!1118968 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893054) (= lambda!216942 lambda!216941))))

(declare-fun bs!1118969 () Bool)

(assert (= bs!1118969 (and b!4729533 b!4729039)))

(assert (=> bs!1118969 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216942 lambda!216871))))

(declare-fun bs!1118970 () Bool)

(assert (= bs!1118970 (and b!4729533 b!4729036)))

(assert (=> bs!1118970 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893054) (= lambda!216942 lambda!216873))))

(declare-fun bs!1118971 () Bool)

(assert (= bs!1118971 (and b!4729533 d!1507116)))

(assert (=> bs!1118971 (not (= lambda!216942 lambda!216876))))

(declare-fun bs!1118972 () Bool)

(assert (= bs!1118972 (and b!4729533 b!4729487)))

(assert (=> bs!1118972 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893302) (= lambda!216942 lambda!216935))))

(assert (=> bs!1118972 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216942 lambda!216934))))

(assert (=> bs!1118970 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216942 lambda!216872))))

(assert (=> b!4729533 true))

(declare-fun bs!1118973 () Bool)

(declare-fun b!4729530 () Bool)

(assert (= bs!1118973 (and b!4729530 d!1507090)))

(declare-fun lambda!216943 () Int)

(assert (=> bs!1118973 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893065) (= lambda!216943 lambda!216874))))

(declare-fun bs!1118974 () Bool)

(assert (= bs!1118974 (and b!4729530 d!1507436)))

(assert (=> bs!1118974 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893313) (= lambda!216943 lambda!216936))))

(declare-fun bs!1118975 () Bool)

(assert (= bs!1118975 (and b!4729530 d!1507074)))

(assert (=> bs!1118975 (not (= lambda!216943 lambda!216840))))

(declare-fun bs!1118976 () Bool)

(assert (= bs!1118976 (and b!4729530 b!4729490)))

(assert (=> bs!1118976 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216943 lambda!216933))))

(declare-fun bs!1118977 () Bool)

(assert (= bs!1118977 (and b!4729530 d!1507456)))

(assert (=> bs!1118977 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893054) (= lambda!216943 lambda!216941))))

(declare-fun bs!1118978 () Bool)

(assert (= bs!1118978 (and b!4729530 b!4729039)))

(assert (=> bs!1118978 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216943 lambda!216871))))

(declare-fun bs!1118979 () Bool)

(assert (= bs!1118979 (and b!4729530 b!4729533)))

(assert (=> bs!1118979 (= lambda!216943 lambda!216942)))

(declare-fun bs!1118980 () Bool)

(assert (= bs!1118980 (and b!4729530 b!4729036)))

(assert (=> bs!1118980 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893054) (= lambda!216943 lambda!216873))))

(declare-fun bs!1118981 () Bool)

(assert (= bs!1118981 (and b!4729530 d!1507116)))

(assert (=> bs!1118981 (not (= lambda!216943 lambda!216876))))

(declare-fun bs!1118982 () Bool)

(assert (= bs!1118982 (and b!4729530 b!4729487)))

(assert (=> bs!1118982 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893302) (= lambda!216943 lambda!216935))))

(assert (=> bs!1118982 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216943 lambda!216934))))

(assert (=> bs!1118980 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216943 lambda!216872))))

(assert (=> b!4729530 true))

(declare-fun lt!1893357 () ListMap!5317)

(declare-fun lambda!216944 () Int)

(assert (=> bs!1118973 (= (= lt!1893357 lt!1893065) (= lambda!216944 lambda!216874))))

(assert (=> bs!1118974 (= (= lt!1893357 lt!1893313) (= lambda!216944 lambda!216936))))

(assert (=> bs!1118975 (not (= lambda!216944 lambda!216840))))

(assert (=> bs!1118976 (= (= lt!1893357 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216944 lambda!216933))))

(assert (=> bs!1118977 (= (= lt!1893357 lt!1893054) (= lambda!216944 lambda!216941))))

(assert (=> b!4729530 (= (= lt!1893357 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!216944 lambda!216943))))

(assert (=> bs!1118978 (= (= lt!1893357 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216944 lambda!216871))))

(assert (=> bs!1118979 (= (= lt!1893357 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!216944 lambda!216942))))

(assert (=> bs!1118980 (= (= lt!1893357 lt!1893054) (= lambda!216944 lambda!216873))))

(assert (=> bs!1118981 (not (= lambda!216944 lambda!216876))))

(assert (=> bs!1118982 (= (= lt!1893357 lt!1893302) (= lambda!216944 lambda!216935))))

(assert (=> bs!1118982 (= (= lt!1893357 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216944 lambda!216934))))

(assert (=> bs!1118980 (= (= lt!1893357 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216944 lambda!216872))))

(assert (=> b!4729530 true))

(declare-fun bs!1118983 () Bool)

(declare-fun d!1507458 () Bool)

(assert (= bs!1118983 (and d!1507458 d!1507090)))

(declare-fun lt!1893368 () ListMap!5317)

(declare-fun lambda!216945 () Int)

(assert (=> bs!1118983 (= (= lt!1893368 lt!1893065) (= lambda!216945 lambda!216874))))

(declare-fun bs!1118984 () Bool)

(assert (= bs!1118984 (and d!1507458 d!1507436)))

(assert (=> bs!1118984 (= (= lt!1893368 lt!1893313) (= lambda!216945 lambda!216936))))

(declare-fun bs!1118985 () Bool)

(assert (= bs!1118985 (and d!1507458 d!1507074)))

(assert (=> bs!1118985 (not (= lambda!216945 lambda!216840))))

(declare-fun bs!1118986 () Bool)

(assert (= bs!1118986 (and d!1507458 b!4729490)))

(assert (=> bs!1118986 (= (= lt!1893368 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216945 lambda!216933))))

(declare-fun bs!1118987 () Bool)

(assert (= bs!1118987 (and d!1507458 d!1507456)))

(assert (=> bs!1118987 (= (= lt!1893368 lt!1893054) (= lambda!216945 lambda!216941))))

(declare-fun bs!1118988 () Bool)

(assert (= bs!1118988 (and d!1507458 b!4729530)))

(assert (=> bs!1118988 (= (= lt!1893368 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!216945 lambda!216943))))

(declare-fun bs!1118989 () Bool)

(assert (= bs!1118989 (and d!1507458 b!4729039)))

(assert (=> bs!1118989 (= (= lt!1893368 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216945 lambda!216871))))

(declare-fun bs!1118990 () Bool)

(assert (= bs!1118990 (and d!1507458 b!4729533)))

(assert (=> bs!1118990 (= (= lt!1893368 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!216945 lambda!216942))))

(declare-fun bs!1118991 () Bool)

(assert (= bs!1118991 (and d!1507458 b!4729036)))

(assert (=> bs!1118991 (= (= lt!1893368 lt!1893054) (= lambda!216945 lambda!216873))))

(declare-fun bs!1118992 () Bool)

(assert (= bs!1118992 (and d!1507458 d!1507116)))

(assert (=> bs!1118992 (not (= lambda!216945 lambda!216876))))

(declare-fun bs!1118993 () Bool)

(assert (= bs!1118993 (and d!1507458 b!4729487)))

(assert (=> bs!1118993 (= (= lt!1893368 lt!1893302) (= lambda!216945 lambda!216935))))

(assert (=> bs!1118988 (= (= lt!1893368 lt!1893357) (= lambda!216945 lambda!216944))))

(assert (=> bs!1118993 (= (= lt!1893368 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216945 lambda!216934))))

(assert (=> bs!1118991 (= (= lt!1893368 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216945 lambda!216872))))

(assert (=> d!1507458 true))

(declare-fun bm!330816 () Bool)

(declare-fun call!330822 () Unit!131227)

(assert (=> bm!330816 (= call!330822 (lemmaContainsAllItsOwnKeys!808 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))))))

(declare-fun e!2949871 () ListMap!5317)

(assert (=> b!4729530 (= e!2949871 lt!1893357)))

(declare-fun lt!1893354 () ListMap!5317)

(assert (=> b!4729530 (= lt!1893354 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> b!4729530 (= lt!1893357 (addToMapMapFromBucket!1462 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))) (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893361 () Unit!131227)

(assert (=> b!4729530 (= lt!1893361 call!330822)))

(assert (=> b!4729530 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) lambda!216943)))

(declare-fun lt!1893356 () Unit!131227)

(assert (=> b!4729530 (= lt!1893356 lt!1893361)))

(assert (=> b!4729530 (forall!11627 (toList!5954 lt!1893354) lambda!216944)))

(declare-fun lt!1893370 () Unit!131227)

(declare-fun Unit!131314 () Unit!131227)

(assert (=> b!4729530 (= lt!1893370 Unit!131314)))

(assert (=> b!4729530 (forall!11627 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))) lambda!216944)))

(declare-fun lt!1893367 () Unit!131227)

(declare-fun Unit!131315 () Unit!131227)

(assert (=> b!4729530 (= lt!1893367 Unit!131315)))

(declare-fun lt!1893365 () Unit!131227)

(declare-fun Unit!131316 () Unit!131227)

(assert (=> b!4729530 (= lt!1893365 Unit!131316)))

(declare-fun lt!1893353 () Unit!131227)

(assert (=> b!4729530 (= lt!1893353 (forallContained!3667 (toList!5954 lt!1893354) lambda!216944 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> b!4729530 (contains!16239 lt!1893354 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893369 () Unit!131227)

(declare-fun Unit!131317 () Unit!131227)

(assert (=> b!4729530 (= lt!1893369 Unit!131317)))

(assert (=> b!4729530 (contains!16239 lt!1893357 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893359 () Unit!131227)

(declare-fun Unit!131318 () Unit!131227)

(assert (=> b!4729530 (= lt!1893359 Unit!131318)))

(declare-fun call!330823 () Bool)

(assert (=> b!4729530 call!330823))

(declare-fun lt!1893363 () Unit!131227)

(declare-fun Unit!131319 () Unit!131227)

(assert (=> b!4729530 (= lt!1893363 Unit!131319)))

(assert (=> b!4729530 (forall!11627 (toList!5954 lt!1893354) lambda!216944)))

(declare-fun lt!1893358 () Unit!131227)

(declare-fun Unit!131320 () Unit!131227)

(assert (=> b!4729530 (= lt!1893358 Unit!131320)))

(declare-fun lt!1893360 () Unit!131227)

(declare-fun Unit!131321 () Unit!131227)

(assert (=> b!4729530 (= lt!1893360 Unit!131321)))

(declare-fun lt!1893362 () Unit!131227)

(assert (=> b!4729530 (= lt!1893362 (addForallContainsKeyThenBeforeAdding!807 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893357 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> b!4729530 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) lambda!216944)))

(declare-fun lt!1893352 () Unit!131227)

(assert (=> b!4729530 (= lt!1893352 lt!1893362)))

(declare-fun call!330821 () Bool)

(assert (=> b!4729530 call!330821))

(declare-fun lt!1893372 () Unit!131227)

(declare-fun Unit!131322 () Unit!131227)

(assert (=> b!4729530 (= lt!1893372 Unit!131322)))

(declare-fun res!2002050 () Bool)

(assert (=> b!4729530 (= res!2002050 (forall!11627 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))) lambda!216944))))

(declare-fun e!2949872 () Bool)

(assert (=> b!4729530 (=> (not res!2002050) (not e!2949872))))

(assert (=> b!4729530 e!2949872))

(declare-fun lt!1893355 () Unit!131227)

(declare-fun Unit!131323 () Unit!131227)

(assert (=> b!4729530 (= lt!1893355 Unit!131323)))

(declare-fun b!4729531 () Bool)

(declare-fun res!2002051 () Bool)

(declare-fun e!2949870 () Bool)

(assert (=> b!4729531 (=> (not res!2002051) (not e!2949870))))

(assert (=> b!4729531 (= res!2002051 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) lambda!216945))))

(declare-fun b!4729532 () Bool)

(assert (=> b!4729532 (= e!2949870 (invariantList!1523 (toList!5954 lt!1893368)))))

(declare-fun c!807705 () Bool)

(declare-fun bm!330818 () Bool)

(assert (=> bm!330818 (= call!330821 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (ite c!807705 lambda!216942 lambda!216944)))))

(assert (=> b!4729533 (= e!2949871 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))))))

(declare-fun lt!1893364 () Unit!131227)

(assert (=> b!4729533 (= lt!1893364 call!330822)))

(assert (=> b!4729533 call!330823))

(declare-fun lt!1893371 () Unit!131227)

(assert (=> b!4729533 (= lt!1893371 lt!1893364)))

(assert (=> b!4729533 call!330821))

(declare-fun lt!1893366 () Unit!131227)

(declare-fun Unit!131324 () Unit!131227)

(assert (=> b!4729533 (= lt!1893366 Unit!131324)))

(declare-fun b!4729534 () Bool)

(assert (=> b!4729534 (= e!2949872 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) lambda!216944))))

(declare-fun bm!330817 () Bool)

(assert (=> bm!330817 (= call!330823 (forall!11627 (ite c!807705 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))) (ite c!807705 lambda!216942 lambda!216944)))))

(assert (=> d!1507458 e!2949870))

(declare-fun res!2002049 () Bool)

(assert (=> d!1507458 (=> (not res!2002049) (not e!2949870))))

(assert (=> d!1507458 (= res!2002049 (forall!11627 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))) lambda!216945))))

(assert (=> d!1507458 (= lt!1893368 e!2949871)))

(assert (=> d!1507458 (= c!807705 ((_ is Nil!52878) (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> d!1507458 (noDuplicateKeys!2032 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))

(assert (=> d!1507458 (= (addToMapMapFromBucket!1462 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893368)))

(assert (= (and d!1507458 c!807705) b!4729533))

(assert (= (and d!1507458 (not c!807705)) b!4729530))

(assert (= (and b!4729530 res!2002050) b!4729534))

(assert (= (or b!4729533 b!4729530) bm!330816))

(assert (= (or b!4729533 b!4729530) bm!330818))

(assert (= (or b!4729533 b!4729530) bm!330817))

(assert (= (and d!1507458 res!2002049) b!4729531))

(assert (= (and b!4729531 res!2002051) b!4729532))

(declare-fun m!5670535 () Bool)

(assert (=> b!4729530 m!5670535))

(declare-fun m!5670537 () Bool)

(assert (=> b!4729530 m!5670537))

(declare-fun m!5670539 () Bool)

(assert (=> b!4729530 m!5670539))

(assert (=> b!4729530 m!5670539))

(declare-fun m!5670541 () Bool)

(assert (=> b!4729530 m!5670541))

(declare-fun m!5670543 () Bool)

(assert (=> b!4729530 m!5670543))

(assert (=> b!4729530 m!5669717))

(declare-fun m!5670545 () Bool)

(assert (=> b!4729530 m!5670545))

(declare-fun m!5670547 () Bool)

(assert (=> b!4729530 m!5670547))

(declare-fun m!5670549 () Bool)

(assert (=> b!4729530 m!5670549))

(declare-fun m!5670551 () Bool)

(assert (=> b!4729530 m!5670551))

(assert (=> b!4729530 m!5669717))

(assert (=> b!4729530 m!5670541))

(declare-fun m!5670553 () Bool)

(assert (=> b!4729530 m!5670553))

(declare-fun m!5670555 () Bool)

(assert (=> b!4729530 m!5670555))

(declare-fun m!5670557 () Bool)

(assert (=> b!4729531 m!5670557))

(declare-fun m!5670559 () Bool)

(assert (=> d!1507458 m!5670559))

(declare-fun m!5670561 () Bool)

(assert (=> d!1507458 m!5670561))

(assert (=> bm!330816 m!5669717))

(declare-fun m!5670563 () Bool)

(assert (=> bm!330816 m!5670563))

(assert (=> b!4729534 m!5670535))

(declare-fun m!5670565 () Bool)

(assert (=> b!4729532 m!5670565))

(declare-fun m!5670567 () Bool)

(assert (=> bm!330818 m!5670567))

(declare-fun m!5670569 () Bool)

(assert (=> bm!330817 m!5670569))

(assert (=> b!4729043 d!1507458))

(declare-fun bs!1118994 () Bool)

(declare-fun d!1507460 () Bool)

(assert (= bs!1118994 (and d!1507460 d!1506992)))

(declare-fun lambda!216946 () Int)

(assert (=> bs!1118994 (not (= lambda!216946 lambda!216774))))

(declare-fun bs!1118995 () Bool)

(assert (= bs!1118995 (and d!1507460 d!1507048)))

(assert (=> bs!1118995 (= lambda!216946 lambda!216835)))

(declare-fun bs!1118996 () Bool)

(assert (= bs!1118996 (and d!1507460 d!1507108)))

(assert (=> bs!1118996 (= lambda!216946 lambda!216875)))

(declare-fun bs!1118997 () Bool)

(assert (= bs!1118997 (and d!1507460 d!1507060)))

(assert (=> bs!1118997 (not (= lambda!216946 lambda!216836))))

(declare-fun bs!1118998 () Bool)

(assert (= bs!1118998 (and d!1507460 start!481760)))

(assert (=> bs!1118998 (= lambda!216946 lambda!216768)))

(declare-fun bs!1118999 () Bool)

(assert (= bs!1118999 (and d!1507460 d!1507038)))

(assert (=> bs!1118999 (= lambda!216946 lambda!216825)))

(declare-fun bs!1119000 () Bool)

(assert (= bs!1119000 (and d!1507460 d!1507002)))

(assert (=> bs!1119000 (= lambda!216946 lambda!216819)))

(declare-fun lt!1893373 () ListMap!5317)

(assert (=> d!1507460 (invariantList!1523 (toList!5954 lt!1893373))))

(declare-fun e!2949873 () ListMap!5317)

(assert (=> d!1507460 (= lt!1893373 e!2949873)))

(declare-fun c!807706 () Bool)

(assert (=> d!1507460 (= c!807706 ((_ is Cons!52879) (t!360279 (t!360279 (toList!5953 lm!2023)))))))

(assert (=> d!1507460 (forall!11625 (t!360279 (t!360279 (toList!5953 lm!2023))) lambda!216946)))

(assert (=> d!1507460 (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893373)))

(declare-fun b!4729535 () Bool)

(assert (=> b!4729535 (= e!2949873 (addToMapMapFromBucket!1462 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))))))))

(declare-fun b!4729536 () Bool)

(assert (=> b!4729536 (= e!2949873 (ListMap!5318 Nil!52878))))

(assert (= (and d!1507460 c!807706) b!4729535))

(assert (= (and d!1507460 (not c!807706)) b!4729536))

(declare-fun m!5670571 () Bool)

(assert (=> d!1507460 m!5670571))

(declare-fun m!5670573 () Bool)

(assert (=> d!1507460 m!5670573))

(declare-fun m!5670575 () Bool)

(assert (=> b!4729535 m!5670575))

(assert (=> b!4729535 m!5670575))

(declare-fun m!5670577 () Bool)

(assert (=> b!4729535 m!5670577))

(assert (=> b!4729043 d!1507460))

(declare-fun d!1507462 () Bool)

(declare-fun lt!1893374 () Bool)

(assert (=> d!1507462 (= lt!1893374 (select (content!9419 (t!360279 (toList!5953 lm!2023))) lt!1892769))))

(declare-fun e!2949874 () Bool)

(assert (=> d!1507462 (= lt!1893374 e!2949874)))

(declare-fun res!2002052 () Bool)

(assert (=> d!1507462 (=> (not res!2002052) (not e!2949874))))

(assert (=> d!1507462 (= res!2002052 ((_ is Cons!52879) (t!360279 (toList!5953 lm!2023))))))

(assert (=> d!1507462 (= (contains!16237 (t!360279 (toList!5953 lm!2023)) lt!1892769) lt!1893374)))

(declare-fun b!4729537 () Bool)

(declare-fun e!2949875 () Bool)

(assert (=> b!4729537 (= e!2949874 e!2949875)))

(declare-fun res!2002053 () Bool)

(assert (=> b!4729537 (=> res!2002053 e!2949875)))

(assert (=> b!4729537 (= res!2002053 (= (h!59238 (t!360279 (toList!5953 lm!2023))) lt!1892769))))

(declare-fun b!4729538 () Bool)

(assert (=> b!4729538 (= e!2949875 (contains!16237 (t!360279 (t!360279 (toList!5953 lm!2023))) lt!1892769))))

(assert (= (and d!1507462 res!2002052) b!4729537))

(assert (= (and b!4729537 (not res!2002053)) b!4729538))

(declare-fun m!5670579 () Bool)

(assert (=> d!1507462 m!5670579))

(declare-fun m!5670581 () Bool)

(assert (=> d!1507462 m!5670581))

(declare-fun m!5670583 () Bool)

(assert (=> b!4729538 m!5670583))

(assert (=> b!4728747 d!1507462))

(declare-fun d!1507464 () Bool)

(declare-fun res!2002054 () Bool)

(declare-fun e!2949876 () Bool)

(assert (=> d!1507464 (=> res!2002054 e!2949876)))

(assert (=> d!1507464 (= res!2002054 ((_ is Nil!52878) newBucket!218))))

(assert (=> d!1507464 (= (forall!11627 newBucket!218 lambda!216876) e!2949876)))

(declare-fun b!4729539 () Bool)

(declare-fun e!2949877 () Bool)

(assert (=> b!4729539 (= e!2949876 e!2949877)))

(declare-fun res!2002055 () Bool)

(assert (=> b!4729539 (=> (not res!2002055) (not e!2949877))))

(assert (=> b!4729539 (= res!2002055 (dynLambda!21841 lambda!216876 (h!59237 newBucket!218)))))

(declare-fun b!4729540 () Bool)

(assert (=> b!4729540 (= e!2949877 (forall!11627 (t!360278 newBucket!218) lambda!216876))))

(assert (= (and d!1507464 (not res!2002054)) b!4729539))

(assert (= (and b!4729539 res!2002055) b!4729540))

(declare-fun b_lambda!180095 () Bool)

(assert (=> (not b_lambda!180095) (not b!4729539)))

(declare-fun m!5670585 () Bool)

(assert (=> b!4729539 m!5670585))

(declare-fun m!5670587 () Bool)

(assert (=> b!4729540 m!5670587))

(assert (=> d!1507116 d!1507464))

(declare-fun bs!1119001 () Bool)

(declare-fun d!1507466 () Bool)

(assert (= bs!1119001 (and d!1507466 d!1507090)))

(declare-fun lambda!216949 () Int)

(assert (=> bs!1119001 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893065) (= lambda!216949 lambda!216874))))

(declare-fun bs!1119002 () Bool)

(assert (= bs!1119002 (and d!1507466 d!1507436)))

(assert (=> bs!1119002 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893313) (= lambda!216949 lambda!216936))))

(declare-fun bs!1119003 () Bool)

(assert (= bs!1119003 (and d!1507466 d!1507074)))

(assert (=> bs!1119003 (not (= lambda!216949 lambda!216840))))

(declare-fun bs!1119004 () Bool)

(assert (= bs!1119004 (and d!1507466 b!4729490)))

(assert (=> bs!1119004 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216949 lambda!216933))))

(declare-fun bs!1119005 () Bool)

(assert (= bs!1119005 (and d!1507466 d!1507456)))

(assert (=> bs!1119005 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893054) (= lambda!216949 lambda!216941))))

(declare-fun bs!1119006 () Bool)

(assert (= bs!1119006 (and d!1507466 d!1507458)))

(assert (=> bs!1119006 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893368) (= lambda!216949 lambda!216945))))

(declare-fun bs!1119007 () Bool)

(assert (= bs!1119007 (and d!1507466 b!4729530)))

(assert (=> bs!1119007 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!216949 lambda!216943))))

(declare-fun bs!1119008 () Bool)

(assert (= bs!1119008 (and d!1507466 b!4729039)))

(assert (=> bs!1119008 (= lambda!216949 lambda!216871)))

(declare-fun bs!1119009 () Bool)

(assert (= bs!1119009 (and d!1507466 b!4729533)))

(assert (=> bs!1119009 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!216949 lambda!216942))))

(declare-fun bs!1119010 () Bool)

(assert (= bs!1119010 (and d!1507466 b!4729036)))

(assert (=> bs!1119010 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893054) (= lambda!216949 lambda!216873))))

(declare-fun bs!1119011 () Bool)

(assert (= bs!1119011 (and d!1507466 d!1507116)))

(assert (=> bs!1119011 (not (= lambda!216949 lambda!216876))))

(declare-fun bs!1119012 () Bool)

(assert (= bs!1119012 (and d!1507466 b!4729487)))

(assert (=> bs!1119012 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893302) (= lambda!216949 lambda!216935))))

(assert (=> bs!1119007 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893357) (= lambda!216949 lambda!216944))))

(assert (=> bs!1119012 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216949 lambda!216934))))

(assert (=> bs!1119010 (= lambda!216949 lambda!216872)))

(assert (=> d!1507466 true))

(assert (=> d!1507466 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) lambda!216949)))

(declare-fun lt!1893377 () Unit!131227)

(declare-fun choose!33442 (ListMap!5317) Unit!131227)

(assert (=> d!1507466 (= lt!1893377 (choose!33442 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))

(assert (=> d!1507466 (= (lemmaContainsAllItsOwnKeys!808 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) lt!1893377)))

(declare-fun bs!1119013 () Bool)

(assert (= bs!1119013 d!1507466))

(declare-fun m!5670589 () Bool)

(assert (=> bs!1119013 m!5670589))

(assert (=> bs!1119013 m!5669357))

(declare-fun m!5670591 () Bool)

(assert (=> bs!1119013 m!5670591))

(assert (=> bm!330798 d!1507466))

(declare-fun d!1507468 () Bool)

(assert (=> d!1507468 (= (invariantList!1523 (toList!5954 lt!1893070)) (noDuplicatedKeys!383 (toList!5954 lt!1893070)))))

(declare-fun bs!1119014 () Bool)

(assert (= bs!1119014 d!1507468))

(declare-fun m!5670593 () Bool)

(assert (=> bs!1119014 m!5670593))

(assert (=> d!1507108 d!1507468))

(declare-fun d!1507470 () Bool)

(declare-fun res!2002056 () Bool)

(declare-fun e!2949878 () Bool)

(assert (=> d!1507470 (=> res!2002056 e!2949878)))

(assert (=> d!1507470 (= res!2002056 ((_ is Nil!52879) (t!360279 (toList!5953 lm!2023))))))

(assert (=> d!1507470 (= (forall!11625 (t!360279 (toList!5953 lm!2023)) lambda!216875) e!2949878)))

(declare-fun b!4729541 () Bool)

(declare-fun e!2949879 () Bool)

(assert (=> b!4729541 (= e!2949878 e!2949879)))

(declare-fun res!2002057 () Bool)

(assert (=> b!4729541 (=> (not res!2002057) (not e!2949879))))

(assert (=> b!4729541 (= res!2002057 (dynLambda!21839 lambda!216875 (h!59238 (t!360279 (toList!5953 lm!2023)))))))

(declare-fun b!4729542 () Bool)

(assert (=> b!4729542 (= e!2949879 (forall!11625 (t!360279 (t!360279 (toList!5953 lm!2023))) lambda!216875))))

(assert (= (and d!1507470 (not res!2002056)) b!4729541))

(assert (= (and b!4729541 res!2002057) b!4729542))

(declare-fun b_lambda!180097 () Bool)

(assert (=> (not b_lambda!180097) (not b!4729541)))

(declare-fun m!5670595 () Bool)

(assert (=> b!4729541 m!5670595))

(declare-fun m!5670597 () Bool)

(assert (=> b!4729542 m!5670597))

(assert (=> d!1507108 d!1507470))

(assert (=> b!4728962 d!1507088))

(declare-fun d!1507472 () Bool)

(declare-fun res!2002058 () Bool)

(declare-fun e!2949880 () Bool)

(assert (=> d!1507472 (=> res!2002058 e!2949880)))

(assert (=> d!1507472 (= res!2002058 (not ((_ is Cons!52878) (_2!30556 lt!1892769))))))

(assert (=> d!1507472 (= (noDuplicateKeys!2032 (_2!30556 lt!1892769)) e!2949880)))

(declare-fun b!4729543 () Bool)

(declare-fun e!2949881 () Bool)

(assert (=> b!4729543 (= e!2949880 e!2949881)))

(declare-fun res!2002059 () Bool)

(assert (=> b!4729543 (=> (not res!2002059) (not e!2949881))))

(assert (=> b!4729543 (= res!2002059 (not (containsKey!3402 (t!360278 (_2!30556 lt!1892769)) (_1!30555 (h!59237 (_2!30556 lt!1892769))))))))

(declare-fun b!4729544 () Bool)

(assert (=> b!4729544 (= e!2949881 (noDuplicateKeys!2032 (t!360278 (_2!30556 lt!1892769))))))

(assert (= (and d!1507472 (not res!2002058)) b!4729543))

(assert (= (and b!4729543 res!2002059) b!4729544))

(declare-fun m!5670599 () Bool)

(assert (=> b!4729543 m!5670599))

(declare-fun m!5670601 () Bool)

(assert (=> b!4729544 m!5670601))

(assert (=> bs!1118790 d!1507472))

(assert (=> b!4729040 d!1507438))

(assert (=> b!4728876 d!1507034))

(declare-fun d!1507474 () Bool)

(declare-fun lt!1893378 () List!53002)

(assert (=> d!1507474 (not (containsKey!3402 lt!1893378 key!4653))))

(declare-fun e!2949883 () List!53002)

(assert (=> d!1507474 (= lt!1893378 e!2949883)))

(declare-fun c!807707 () Bool)

(assert (=> d!1507474 (= c!807707 (and ((_ is Cons!52878) (t!360278 (tail!9041 oldBucket!34))) (= (_1!30555 (h!59237 (t!360278 (tail!9041 oldBucket!34)))) key!4653)))))

(assert (=> d!1507474 (noDuplicateKeys!2032 (t!360278 (tail!9041 oldBucket!34)))))

(assert (=> d!1507474 (= (removePairForKey!1627 (t!360278 (tail!9041 oldBucket!34)) key!4653) lt!1893378)))

(declare-fun b!4729546 () Bool)

(declare-fun e!2949882 () List!53002)

(assert (=> b!4729546 (= e!2949883 e!2949882)))

(declare-fun c!807708 () Bool)

(assert (=> b!4729546 (= c!807708 ((_ is Cons!52878) (t!360278 (tail!9041 oldBucket!34))))))

(declare-fun b!4729545 () Bool)

(assert (=> b!4729545 (= e!2949883 (t!360278 (t!360278 (tail!9041 oldBucket!34))))))

(declare-fun b!4729547 () Bool)

(assert (=> b!4729547 (= e!2949882 (Cons!52878 (h!59237 (t!360278 (tail!9041 oldBucket!34))) (removePairForKey!1627 (t!360278 (t!360278 (tail!9041 oldBucket!34))) key!4653)))))

(declare-fun b!4729548 () Bool)

(assert (=> b!4729548 (= e!2949882 Nil!52878)))

(assert (= (and d!1507474 c!807707) b!4729545))

(assert (= (and d!1507474 (not c!807707)) b!4729546))

(assert (= (and b!4729546 c!807708) b!4729547))

(assert (= (and b!4729546 (not c!807708)) b!4729548))

(declare-fun m!5670603 () Bool)

(assert (=> d!1507474 m!5670603))

(assert (=> d!1507474 m!5670303))

(declare-fun m!5670605 () Bool)

(assert (=> b!4729547 m!5670605))

(assert (=> b!4729047 d!1507474))

(assert (=> b!4728908 d!1507394))

(declare-fun d!1507476 () Bool)

(declare-fun res!2002060 () Bool)

(declare-fun e!2949884 () Bool)

(assert (=> d!1507476 (=> res!2002060 e!2949884)))

(assert (=> d!1507476 (= res!2002060 ((_ is Nil!52878) (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> d!1507476 (= (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (ite c!807618 lambda!216871 lambda!216873)) e!2949884)))

(declare-fun b!4729549 () Bool)

(declare-fun e!2949885 () Bool)

(assert (=> b!4729549 (= e!2949884 e!2949885)))

(declare-fun res!2002061 () Bool)

(assert (=> b!4729549 (=> (not res!2002061) (not e!2949885))))

(assert (=> b!4729549 (= res!2002061 (dynLambda!21841 (ite c!807618 lambda!216871 lambda!216873) (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))

(declare-fun b!4729550 () Bool)

(assert (=> b!4729550 (= e!2949885 (forall!11627 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) (ite c!807618 lambda!216871 lambda!216873)))))

(assert (= (and d!1507476 (not res!2002060)) b!4729549))

(assert (= (and b!4729549 res!2002061) b!4729550))

(declare-fun b_lambda!180099 () Bool)

(assert (=> (not b_lambda!180099) (not b!4729549)))

(declare-fun m!5670607 () Bool)

(assert (=> b!4729549 m!5670607))

(declare-fun m!5670609 () Bool)

(assert (=> b!4729550 m!5670609))

(assert (=> bm!330800 d!1507476))

(declare-fun d!1507478 () Bool)

(declare-fun c!807711 () Bool)

(assert (=> d!1507478 (= c!807711 ((_ is Nil!52879) (toList!5953 lm!2023)))))

(declare-fun e!2949888 () (InoxSet tuple2!54524))

(assert (=> d!1507478 (= (content!9419 (toList!5953 lm!2023)) e!2949888)))

(declare-fun b!4729555 () Bool)

(assert (=> b!4729555 (= e!2949888 ((as const (Array tuple2!54524 Bool)) false))))

(declare-fun b!4729556 () Bool)

(assert (=> b!4729556 (= e!2949888 ((_ map or) (store ((as const (Array tuple2!54524 Bool)) false) (h!59238 (toList!5953 lm!2023)) true) (content!9419 (t!360279 (toList!5953 lm!2023)))))))

(assert (= (and d!1507478 c!807711) b!4729555))

(assert (= (and d!1507478 (not c!807711)) b!4729556))

(declare-fun m!5670611 () Bool)

(assert (=> b!4729556 m!5670611))

(assert (=> b!4729556 m!5670579))

(assert (=> d!1506996 d!1507478))

(declare-fun d!1507480 () Bool)

(assert (=> d!1507480 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1892771) key!4653))))

(declare-fun lt!1893381 () Unit!131227)

(declare-fun choose!33443 (List!53002 K!14230) Unit!131227)

(assert (=> d!1507480 (= lt!1893381 (choose!33443 (toList!5954 lt!1892771) key!4653))))

(assert (=> d!1507480 (invariantList!1523 (toList!5954 lt!1892771))))

(assert (=> d!1507480 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 lt!1892771) key!4653) lt!1893381)))

(declare-fun bs!1119015 () Bool)

(assert (= bs!1119015 d!1507480))

(assert (=> bs!1119015 m!5669545))

(assert (=> bs!1119015 m!5669545))

(assert (=> bs!1119015 m!5669547))

(declare-fun m!5670613 () Bool)

(assert (=> bs!1119015 m!5670613))

(assert (=> bs!1119015 m!5670277))

(assert (=> b!4728907 d!1507480))

(declare-fun d!1507482 () Bool)

(declare-fun isEmpty!29199 (Option!12392) Bool)

(assert (=> d!1507482 (= (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1892771) key!4653)) (not (isEmpty!29199 (getValueByKey!1978 (toList!5954 lt!1892771) key!4653))))))

(declare-fun bs!1119016 () Bool)

(assert (= bs!1119016 d!1507482))

(assert (=> bs!1119016 m!5669545))

(declare-fun m!5670615 () Bool)

(assert (=> bs!1119016 m!5670615))

(assert (=> b!4728907 d!1507482))

(declare-fun b!4729566 () Bool)

(declare-fun e!2949893 () Option!12392)

(declare-fun e!2949894 () Option!12392)

(assert (=> b!4729566 (= e!2949893 e!2949894)))

(declare-fun c!807717 () Bool)

(assert (=> b!4729566 (= c!807717 (and ((_ is Cons!52878) (toList!5954 lt!1892771)) (not (= (_1!30555 (h!59237 (toList!5954 lt!1892771))) key!4653))))))

(declare-fun d!1507484 () Bool)

(declare-fun c!807716 () Bool)

(assert (=> d!1507484 (= c!807716 (and ((_ is Cons!52878) (toList!5954 lt!1892771)) (= (_1!30555 (h!59237 (toList!5954 lt!1892771))) key!4653)))))

(assert (=> d!1507484 (= (getValueByKey!1978 (toList!5954 lt!1892771) key!4653) e!2949893)))

(declare-fun b!4729565 () Bool)

(assert (=> b!4729565 (= e!2949893 (Some!12391 (_2!30555 (h!59237 (toList!5954 lt!1892771)))))))

(declare-fun b!4729567 () Bool)

(assert (=> b!4729567 (= e!2949894 (getValueByKey!1978 (t!360278 (toList!5954 lt!1892771)) key!4653))))

(declare-fun b!4729568 () Bool)

(assert (=> b!4729568 (= e!2949894 None!12391)))

(assert (= (and d!1507484 c!807716) b!4729565))

(assert (= (and d!1507484 (not c!807716)) b!4729566))

(assert (= (and b!4729566 c!807717) b!4729567))

(assert (= (and b!4729566 (not c!807717)) b!4729568))

(declare-fun m!5670617 () Bool)

(assert (=> b!4729567 m!5670617))

(assert (=> b!4728907 d!1507484))

(declare-fun d!1507486 () Bool)

(assert (=> d!1507486 (contains!16243 (getKeysList!963 (toList!5954 lt!1892771)) key!4653)))

(declare-fun lt!1893384 () Unit!131227)

(declare-fun choose!33444 (List!53002 K!14230) Unit!131227)

(assert (=> d!1507486 (= lt!1893384 (choose!33444 (toList!5954 lt!1892771) key!4653))))

(assert (=> d!1507486 (invariantList!1523 (toList!5954 lt!1892771))))

(assert (=> d!1507486 (= (lemmaInListThenGetKeysListContains!958 (toList!5954 lt!1892771) key!4653) lt!1893384)))

(declare-fun bs!1119017 () Bool)

(assert (= bs!1119017 d!1507486))

(assert (=> bs!1119017 m!5669537))

(assert (=> bs!1119017 m!5669537))

(declare-fun m!5670619 () Bool)

(assert (=> bs!1119017 m!5670619))

(declare-fun m!5670621 () Bool)

(assert (=> bs!1119017 m!5670621))

(assert (=> bs!1119017 m!5670277))

(assert (=> b!4728907 d!1507486))

(declare-fun d!1507488 () Bool)

(declare-fun res!2002062 () Bool)

(declare-fun e!2949895 () Bool)

(assert (=> d!1507488 (=> res!2002062 e!2949895)))

(assert (=> d!1507488 (= res!2002062 ((_ is Nil!52878) (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> d!1507488 (= (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) lambda!216874) e!2949895)))

(declare-fun b!4729569 () Bool)

(declare-fun e!2949896 () Bool)

(assert (=> b!4729569 (= e!2949895 e!2949896)))

(declare-fun res!2002063 () Bool)

(assert (=> b!4729569 (=> (not res!2002063) (not e!2949896))))

(assert (=> b!4729569 (= res!2002063 (dynLambda!21841 lambda!216874 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))

(declare-fun b!4729570 () Bool)

(assert (=> b!4729570 (= e!2949896 (forall!11627 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) lambda!216874))))

(assert (= (and d!1507488 (not res!2002062)) b!4729569))

(assert (= (and b!4729569 res!2002063) b!4729570))

(declare-fun b_lambda!180101 () Bool)

(assert (=> (not b_lambda!180101) (not b!4729569)))

(declare-fun m!5670623 () Bool)

(assert (=> b!4729569 m!5670623))

(declare-fun m!5670625 () Bool)

(assert (=> b!4729570 m!5670625))

(assert (=> b!4729037 d!1507488))

(declare-fun lt!1893385 () Bool)

(declare-fun d!1507490 () Bool)

(assert (=> d!1507490 (= lt!1893385 (select (content!9419 (toList!5953 lm!2023)) (tuple2!54525 lt!1892762 lt!1892763)))))

(declare-fun e!2949897 () Bool)

(assert (=> d!1507490 (= lt!1893385 e!2949897)))

(declare-fun res!2002064 () Bool)

(assert (=> d!1507490 (=> (not res!2002064) (not e!2949897))))

(assert (=> d!1507490 (= res!2002064 ((_ is Cons!52879) (toList!5953 lm!2023)))))

(assert (=> d!1507490 (= (contains!16237 (toList!5953 lm!2023) (tuple2!54525 lt!1892762 lt!1892763)) lt!1893385)))

(declare-fun b!4729571 () Bool)

(declare-fun e!2949898 () Bool)

(assert (=> b!4729571 (= e!2949897 e!2949898)))

(declare-fun res!2002065 () Bool)

(assert (=> b!4729571 (=> res!2002065 e!2949898)))

(assert (=> b!4729571 (= res!2002065 (= (h!59238 (toList!5953 lm!2023)) (tuple2!54525 lt!1892762 lt!1892763)))))

(declare-fun b!4729572 () Bool)

(assert (=> b!4729572 (= e!2949898 (contains!16237 (t!360279 (toList!5953 lm!2023)) (tuple2!54525 lt!1892762 lt!1892763)))))

(assert (= (and d!1507490 res!2002064) b!4729571))

(assert (= (and b!4729571 (not res!2002065)) b!4729572))

(assert (=> d!1507490 m!5669379))

(declare-fun m!5670627 () Bool)

(assert (=> d!1507490 m!5670627))

(declare-fun m!5670629 () Bool)

(assert (=> b!4729572 m!5670629))

(assert (=> d!1507000 d!1507490))

(declare-fun d!1507492 () Bool)

(assert (=> d!1507492 (contains!16237 (toList!5953 lm!2023) (tuple2!54525 lt!1892762 lt!1892763))))

(assert (=> d!1507492 true))

(declare-fun _$41!427 () Unit!131227)

(assert (=> d!1507492 (= (choose!33424 lm!2023 lt!1892762 lt!1892763) _$41!427)))

(declare-fun bs!1119018 () Bool)

(assert (= bs!1119018 d!1507492))

(assert (=> bs!1119018 m!5669389))

(assert (=> d!1507000 d!1507492))

(assert (=> d!1507000 d!1507030))

(declare-fun d!1507494 () Bool)

(assert (=> d!1507494 (= (tail!9044 (toList!5953 lm!2023)) (t!360279 (toList!5953 lm!2023)))))

(assert (=> d!1506994 d!1507494))

(declare-fun d!1507496 () Bool)

(assert (=> d!1507496 (= (get!17745 lt!1892897) (v!46992 lt!1892897))))

(assert (=> b!4728869 d!1507496))

(declare-fun d!1507498 () Bool)

(assert (=> d!1507498 (= (invariantList!1523 (toList!5954 lt!1892966)) (noDuplicatedKeys!383 (toList!5954 lt!1892966)))))

(declare-fun bs!1119019 () Bool)

(assert (= bs!1119019 d!1507498))

(declare-fun m!5670631 () Bool)

(assert (=> bs!1119019 m!5670631))

(assert (=> d!1507048 d!1507498))

(declare-fun d!1507500 () Bool)

(declare-fun res!2002066 () Bool)

(declare-fun e!2949899 () Bool)

(assert (=> d!1507500 (=> res!2002066 e!2949899)))

(assert (=> d!1507500 (= res!2002066 ((_ is Nil!52879) (toList!5953 lm!2023)))))

(assert (=> d!1507500 (= (forall!11625 (toList!5953 lm!2023) lambda!216835) e!2949899)))

(declare-fun b!4729574 () Bool)

(declare-fun e!2949900 () Bool)

(assert (=> b!4729574 (= e!2949899 e!2949900)))

(declare-fun res!2002067 () Bool)

(assert (=> b!4729574 (=> (not res!2002067) (not e!2949900))))

(assert (=> b!4729574 (= res!2002067 (dynLambda!21839 lambda!216835 (h!59238 (toList!5953 lm!2023))))))

(declare-fun b!4729575 () Bool)

(assert (=> b!4729575 (= e!2949900 (forall!11625 (t!360279 (toList!5953 lm!2023)) lambda!216835))))

(assert (= (and d!1507500 (not res!2002066)) b!4729574))

(assert (= (and b!4729574 res!2002067) b!4729575))

(declare-fun b_lambda!180103 () Bool)

(assert (=> (not b_lambda!180103) (not b!4729574)))

(declare-fun m!5670633 () Bool)

(assert (=> b!4729574 m!5670633))

(declare-fun m!5670635 () Bool)

(assert (=> b!4729575 m!5670635))

(assert (=> d!1507048 d!1507500))

(declare-fun d!1507502 () Bool)

(declare-fun res!2002068 () Bool)

(declare-fun e!2949901 () Bool)

(assert (=> d!1507502 (=> res!2002068 e!2949901)))

(assert (=> d!1507502 (= res!2002068 ((_ is Nil!52878) (_2!30556 (h!59238 (toList!5953 lm!2023)))))))

(assert (=> d!1507502 (= (forall!11627 (_2!30556 (h!59238 (toList!5953 lm!2023))) lambda!216874) e!2949901)))

(declare-fun b!4729576 () Bool)

(declare-fun e!2949902 () Bool)

(assert (=> b!4729576 (= e!2949901 e!2949902)))

(declare-fun res!2002069 () Bool)

(assert (=> b!4729576 (=> (not res!2002069) (not e!2949902))))

(assert (=> b!4729576 (= res!2002069 (dynLambda!21841 lambda!216874 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(declare-fun b!4729577 () Bool)

(assert (=> b!4729577 (= e!2949902 (forall!11627 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))) lambda!216874))))

(assert (= (and d!1507502 (not res!2002068)) b!4729576))

(assert (= (and b!4729576 res!2002069) b!4729577))

(declare-fun b_lambda!180105 () Bool)

(assert (=> (not b_lambda!180105) (not b!4729576)))

(declare-fun m!5670637 () Bool)

(assert (=> b!4729576 m!5670637))

(declare-fun m!5670639 () Bool)

(assert (=> b!4729577 m!5670639))

(assert (=> d!1507090 d!1507502))

(assert (=> d!1507090 d!1507350))

(declare-fun d!1507504 () Bool)

(declare-fun res!2002070 () Bool)

(declare-fun e!2949903 () Bool)

(assert (=> d!1507504 (=> res!2002070 e!2949903)))

(assert (=> d!1507504 (= res!2002070 (not ((_ is Cons!52878) (_2!30556 (h!59238 lt!1892767)))))))

(assert (=> d!1507504 (= (noDuplicateKeys!2032 (_2!30556 (h!59238 lt!1892767))) e!2949903)))

(declare-fun b!4729578 () Bool)

(declare-fun e!2949904 () Bool)

(assert (=> b!4729578 (= e!2949903 e!2949904)))

(declare-fun res!2002071 () Bool)

(assert (=> b!4729578 (=> (not res!2002071) (not e!2949904))))

(assert (=> b!4729578 (= res!2002071 (not (containsKey!3402 (t!360278 (_2!30556 (h!59238 lt!1892767))) (_1!30555 (h!59237 (_2!30556 (h!59238 lt!1892767)))))))))

(declare-fun b!4729579 () Bool)

(assert (=> b!4729579 (= e!2949904 (noDuplicateKeys!2032 (t!360278 (_2!30556 (h!59238 lt!1892767)))))))

(assert (= (and d!1507504 (not res!2002070)) b!4729578))

(assert (= (and b!4729578 res!2002071) b!4729579))

(declare-fun m!5670641 () Bool)

(assert (=> b!4729578 m!5670641))

(declare-fun m!5670643 () Bool)

(assert (=> b!4729579 m!5670643))

(assert (=> bs!1118788 d!1507504))

(declare-fun d!1507506 () Bool)

(declare-fun res!2002072 () Bool)

(declare-fun e!2949905 () Bool)

(assert (=> d!1507506 (=> res!2002072 e!2949905)))

(assert (=> d!1507506 (= res!2002072 ((_ is Nil!52879) (toList!5953 lm!2023)))))

(assert (=> d!1507506 (= (forall!11625 (toList!5953 lm!2023) lambda!216819) e!2949905)))

(declare-fun b!4729580 () Bool)

(declare-fun e!2949906 () Bool)

(assert (=> b!4729580 (= e!2949905 e!2949906)))

(declare-fun res!2002073 () Bool)

(assert (=> b!4729580 (=> (not res!2002073) (not e!2949906))))

(assert (=> b!4729580 (= res!2002073 (dynLambda!21839 lambda!216819 (h!59238 (toList!5953 lm!2023))))))

(declare-fun b!4729581 () Bool)

(assert (=> b!4729581 (= e!2949906 (forall!11625 (t!360279 (toList!5953 lm!2023)) lambda!216819))))

(assert (= (and d!1507506 (not res!2002072)) b!4729580))

(assert (= (and b!4729580 res!2002073) b!4729581))

(declare-fun b_lambda!180107 () Bool)

(assert (=> (not b_lambda!180107) (not b!4729580)))

(declare-fun m!5670645 () Bool)

(assert (=> b!4729580 m!5670645))

(declare-fun m!5670647 () Bool)

(assert (=> b!4729581 m!5670647))

(assert (=> d!1507002 d!1507506))

(declare-fun bs!1119020 () Bool)

(declare-fun d!1507508 () Bool)

(assert (= bs!1119020 (and d!1507508 d!1507048)))

(declare-fun lambda!216952 () Int)

(assert (=> bs!1119020 (= lambda!216952 lambda!216835)))

(declare-fun bs!1119021 () Bool)

(assert (= bs!1119021 (and d!1507508 d!1507108)))

(assert (=> bs!1119021 (= lambda!216952 lambda!216875)))

(declare-fun bs!1119022 () Bool)

(assert (= bs!1119022 (and d!1507508 d!1507060)))

(assert (=> bs!1119022 (not (= lambda!216952 lambda!216836))))

(declare-fun bs!1119023 () Bool)

(assert (= bs!1119023 (and d!1507508 start!481760)))

(assert (=> bs!1119023 (= lambda!216952 lambda!216768)))

(declare-fun bs!1119024 () Bool)

(assert (= bs!1119024 (and d!1507508 d!1507038)))

(assert (=> bs!1119024 (= lambda!216952 lambda!216825)))

(declare-fun bs!1119025 () Bool)

(assert (= bs!1119025 (and d!1507508 d!1507002)))

(assert (=> bs!1119025 (= lambda!216952 lambda!216819)))

(declare-fun bs!1119026 () Bool)

(assert (= bs!1119026 (and d!1507508 d!1506992)))

(assert (=> bs!1119026 (not (= lambda!216952 lambda!216774))))

(declare-fun bs!1119027 () Bool)

(assert (= bs!1119027 (and d!1507508 d!1507460)))

(assert (=> bs!1119027 (= lambda!216952 lambda!216946)))

(assert (=> d!1507508 (isDefined!9642 (getPair!572 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)) key!4653))))

(declare-fun lt!1893405 () Unit!131227)

(assert (=> d!1507508 (= lt!1893405 (forallContained!3665 (toList!5953 lm!2023) lambda!216952 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))

(declare-fun lt!1893403 () Unit!131227)

(declare-fun lt!1893402 () Unit!131227)

(assert (=> d!1507508 (= lt!1893403 lt!1893402)))

(declare-fun lt!1893401 () (_ BitVec 64))

(declare-fun lt!1893400 () List!53002)

(assert (=> d!1507508 (contains!16237 (toList!5953 lm!2023) (tuple2!54525 lt!1893401 lt!1893400))))

(assert (=> d!1507508 (= lt!1893402 (lemmaGetValueImpliesTupleContained!377 lm!2023 lt!1893401 lt!1893400))))

(assert (=> d!1507508 (= lt!1893400 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))

(assert (=> d!1507508 (= lt!1893401 (hash!4413 hashF!1323 key!4653))))

(declare-fun lt!1893404 () Unit!131227)

(declare-fun lt!1893406 () Unit!131227)

(assert (=> d!1507508 (= lt!1893404 lt!1893406)))

(assert (=> d!1507508 (contains!16238 lm!2023 (hash!4413 hashF!1323 key!4653))))

(assert (=> d!1507508 (= lt!1893406 (lemmaInGenMapThenLongMapContainsHash!778 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1507508 true))

(declare-fun _$25!265 () Unit!131227)

(assert (=> d!1507508 (= (choose!33425 lm!2023 key!4653 hashF!1323) _$25!265)))

(declare-fun bs!1119028 () Bool)

(assert (= bs!1119028 d!1507508))

(assert (=> bs!1119028 m!5669311))

(assert (=> bs!1119028 m!5669473))

(declare-fun m!5670649 () Bool)

(assert (=> bs!1119028 m!5670649))

(assert (=> bs!1119028 m!5669473))

(assert (=> bs!1119028 m!5669475))

(assert (=> bs!1119028 m!5669311))

(assert (=> bs!1119028 m!5669469))

(assert (=> bs!1119028 m!5669311))

(declare-fun m!5670651 () Bool)

(assert (=> bs!1119028 m!5670651))

(declare-fun m!5670653 () Bool)

(assert (=> bs!1119028 m!5670653))

(assert (=> bs!1119028 m!5669475))

(assert (=> bs!1119028 m!5669477))

(assert (=> bs!1119028 m!5669339))

(assert (=> d!1507002 d!1507508))

(declare-fun d!1507510 () Bool)

(declare-fun lt!1893409 () Bool)

(declare-fun content!9423 (List!53002) (InoxSet tuple2!54522))

(assert (=> d!1507510 (= lt!1893409 (select (content!9423 lt!1892763) (get!17745 lt!1892897)))))

(declare-fun e!2949911 () Bool)

(assert (=> d!1507510 (= lt!1893409 e!2949911)))

(declare-fun res!2002078 () Bool)

(assert (=> d!1507510 (=> (not res!2002078) (not e!2949911))))

(assert (=> d!1507510 (= res!2002078 ((_ is Cons!52878) lt!1892763))))

(assert (=> d!1507510 (= (contains!16242 lt!1892763 (get!17745 lt!1892897)) lt!1893409)))

(declare-fun b!4729586 () Bool)

(declare-fun e!2949912 () Bool)

(assert (=> b!4729586 (= e!2949911 e!2949912)))

(declare-fun res!2002079 () Bool)

(assert (=> b!4729586 (=> res!2002079 e!2949912)))

(assert (=> b!4729586 (= res!2002079 (= (h!59237 lt!1892763) (get!17745 lt!1892897)))))

(declare-fun b!4729587 () Bool)

(assert (=> b!4729587 (= e!2949912 (contains!16242 (t!360278 lt!1892763) (get!17745 lt!1892897)))))

(assert (= (and d!1507510 res!2002078) b!4729586))

(assert (= (and b!4729586 (not res!2002079)) b!4729587))

(declare-fun m!5670655 () Bool)

(assert (=> d!1507510 m!5670655))

(assert (=> d!1507510 m!5669513))

(declare-fun m!5670657 () Bool)

(assert (=> d!1507510 m!5670657))

(assert (=> b!4729587 m!5669513))

(declare-fun m!5670659 () Bool)

(assert (=> b!4729587 m!5670659))

(assert (=> b!4728867 d!1507510))

(assert (=> b!4728867 d!1507496))

(declare-fun d!1507512 () Bool)

(declare-fun res!2002084 () Bool)

(declare-fun e!2949917 () Bool)

(assert (=> d!1507512 (=> res!2002084 e!2949917)))

(assert (=> d!1507512 (= res!2002084 (or ((_ is Nil!52879) (toList!5953 lm!2023)) ((_ is Nil!52879) (t!360279 (toList!5953 lm!2023)))))))

(assert (=> d!1507512 (= (isStrictlySorted!761 (toList!5953 lm!2023)) e!2949917)))

(declare-fun b!4729592 () Bool)

(declare-fun e!2949918 () Bool)

(assert (=> b!4729592 (= e!2949917 e!2949918)))

(declare-fun res!2002085 () Bool)

(assert (=> b!4729592 (=> (not res!2002085) (not e!2949918))))

(assert (=> b!4729592 (= res!2002085 (bvslt (_1!30556 (h!59238 (toList!5953 lm!2023))) (_1!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))

(declare-fun b!4729593 () Bool)

(assert (=> b!4729593 (= e!2949918 (isStrictlySorted!761 (t!360279 (toList!5953 lm!2023))))))

(assert (= (and d!1507512 (not res!2002084)) b!4729592))

(assert (= (and b!4729592 res!2002085) b!4729593))

(declare-fun m!5670661 () Bool)

(assert (=> b!4729593 m!5670661))

(assert (=> d!1507086 d!1507512))

(declare-fun d!1507514 () Bool)

(declare-fun res!2002086 () Bool)

(declare-fun e!2949919 () Bool)

(assert (=> d!1507514 (=> res!2002086 e!2949919)))

(assert (=> d!1507514 (= res!2002086 (and ((_ is Cons!52878) (t!360278 oldBucket!34)) (= (_1!30555 (h!59237 (t!360278 oldBucket!34))) (_1!30555 (h!59237 oldBucket!34)))))))

(assert (=> d!1507514 (= (containsKey!3402 (t!360278 oldBucket!34) (_1!30555 (h!59237 oldBucket!34))) e!2949919)))

(declare-fun b!4729594 () Bool)

(declare-fun e!2949920 () Bool)

(assert (=> b!4729594 (= e!2949919 e!2949920)))

(declare-fun res!2002087 () Bool)

(assert (=> b!4729594 (=> (not res!2002087) (not e!2949920))))

(assert (=> b!4729594 (= res!2002087 ((_ is Cons!52878) (t!360278 oldBucket!34)))))

(declare-fun b!4729595 () Bool)

(assert (=> b!4729595 (= e!2949920 (containsKey!3402 (t!360278 (t!360278 oldBucket!34)) (_1!30555 (h!59237 oldBucket!34))))))

(assert (= (and d!1507514 (not res!2002086)) b!4729594))

(assert (= (and b!4729594 res!2002087) b!4729595))

(declare-fun m!5670663 () Bool)

(assert (=> b!4729595 m!5670663))

(assert (=> b!4728972 d!1507514))

(assert (=> d!1507046 d!1507370))

(assert (=> b!4728910 d!1507482))

(assert (=> b!4728910 d!1507484))

(declare-fun b!4729596 () Bool)

(declare-fun tp!1348755 () Bool)

(declare-fun e!2949921 () Bool)

(assert (=> b!4729596 (= e!2949921 (and tp_is_empty!31421 tp_is_empty!31423 tp!1348755))))

(assert (=> b!4729059 (= tp!1348748 e!2949921)))

(assert (= (and b!4729059 ((_ is Cons!52878) (_2!30556 (h!59238 (toList!5953 lm!2023))))) b!4729596))

(declare-fun b!4729597 () Bool)

(declare-fun e!2949922 () Bool)

(declare-fun tp!1348756 () Bool)

(declare-fun tp!1348757 () Bool)

(assert (=> b!4729597 (= e!2949922 (and tp!1348756 tp!1348757))))

(assert (=> b!4729059 (= tp!1348749 e!2949922)))

(assert (= (and b!4729059 ((_ is Cons!52879) (t!360279 (toList!5953 lm!2023)))) b!4729597))

(declare-fun e!2949923 () Bool)

(declare-fun tp!1348758 () Bool)

(declare-fun b!4729598 () Bool)

(assert (=> b!4729598 (= e!2949923 (and tp_is_empty!31421 tp_is_empty!31423 tp!1348758))))

(assert (=> b!4729053 (= tp!1348742 e!2949923)))

(assert (= (and b!4729053 ((_ is Cons!52878) (t!360278 (t!360278 oldBucket!34)))) b!4729598))

(declare-fun e!2949924 () Bool)

(declare-fun tp!1348759 () Bool)

(declare-fun b!4729599 () Bool)

(assert (=> b!4729599 (= e!2949924 (and tp_is_empty!31421 tp_is_empty!31423 tp!1348759))))

(assert (=> b!4729054 (= tp!1348743 e!2949924)))

(assert (= (and b!4729054 ((_ is Cons!52878) (t!360278 (t!360278 newBucket!218)))) b!4729599))

(declare-fun b_lambda!180109 () Bool)

(assert (= b_lambda!180085 (or b!4729036 b_lambda!180109)))

(declare-fun bs!1119029 () Bool)

(declare-fun d!1507516 () Bool)

(assert (= bs!1119029 (and d!1507516 b!4729036)))

(assert (=> bs!1119029 (= (dynLambda!21841 lambda!216873 (h!59237 (toList!5954 lt!1893051))) (contains!16239 lt!1893054 (_1!30555 (h!59237 (toList!5954 lt!1893051)))))))

(declare-fun m!5670665 () Bool)

(assert (=> bs!1119029 m!5670665))

(assert (=> b!4729500 d!1507516))

(declare-fun b_lambda!180111 () Bool)

(assert (= b_lambda!180071 (or start!481760 b_lambda!180111)))

(declare-fun bs!1119030 () Bool)

(declare-fun d!1507518 () Bool)

(assert (= bs!1119030 (and d!1507518 start!481760)))

(assert (=> bs!1119030 (= (dynLambda!21839 lambda!216768 (h!59238 (t!360279 (toList!5953 lm!2023)))) (noDuplicateKeys!2032 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> bs!1119030 m!5670561))

(assert (=> b!4729401 d!1507518))

(declare-fun b_lambda!180113 () Bool)

(assert (= b_lambda!180093 (or b!4729036 b_lambda!180113)))

(declare-fun bs!1119031 () Bool)

(declare-fun d!1507520 () Bool)

(assert (= bs!1119031 (and d!1507520 b!4729036)))

(assert (=> bs!1119031 (= (dynLambda!21841 lambda!216872 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1119031 m!5669357))

(declare-fun m!5670667 () Bool)

(assert (=> bs!1119031 m!5670667))

(assert (=> b!4729527 d!1507520))

(declare-fun b_lambda!180115 () Bool)

(assert (= b_lambda!180079 (or d!1506992 b_lambda!180115)))

(declare-fun bs!1119032 () Bool)

(declare-fun d!1507522 () Bool)

(assert (= bs!1119032 (and d!1507522 d!1506992)))

(assert (=> bs!1119032 (= (dynLambda!21839 lambda!216774 (h!59238 (toList!5953 lm!2023))) (allKeysSameHash!1858 (_2!30556 (h!59238 (toList!5953 lm!2023))) (_1!30556 (h!59238 (toList!5953 lm!2023))) hashF!1323))))

(declare-fun m!5670669 () Bool)

(assert (=> bs!1119032 m!5670669))

(assert (=> b!4729469 d!1507522))

(declare-fun b_lambda!180117 () Bool)

(assert (= b_lambda!180101 (or d!1507090 b_lambda!180117)))

(declare-fun bs!1119033 () Bool)

(declare-fun d!1507524 () Bool)

(assert (= bs!1119033 (and d!1507524 d!1507090)))

(assert (=> bs!1119033 (= (dynLambda!21841 lambda!216874 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893065 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun m!5670671 () Bool)

(assert (=> bs!1119033 m!5670671))

(assert (=> b!4729569 d!1507524))

(declare-fun b_lambda!180119 () Bool)

(assert (= b_lambda!180105 (or d!1507090 b_lambda!180119)))

(declare-fun bs!1119034 () Bool)

(declare-fun d!1507526 () Bool)

(assert (= bs!1119034 (and d!1507526 d!1507090)))

(assert (=> bs!1119034 (= (dynLambda!21841 lambda!216874 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (contains!16239 lt!1893065 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun m!5670673 () Bool)

(assert (=> bs!1119034 m!5670673))

(assert (=> b!4729576 d!1507526))

(declare-fun b_lambda!180121 () Bool)

(assert (= b_lambda!180075 (or d!1507060 b_lambda!180121)))

(declare-fun bs!1119035 () Bool)

(declare-fun d!1507528 () Bool)

(assert (= bs!1119035 (and d!1507528 d!1507060)))

(assert (=> bs!1119035 (= (dynLambda!21839 lambda!216836 (h!59238 (toList!5953 (ListLongMap!4484 lt!1892767)))) (allKeysSameHash!1858 (_2!30556 (h!59238 (toList!5953 (ListLongMap!4484 lt!1892767)))) (_1!30556 (h!59238 (toList!5953 (ListLongMap!4484 lt!1892767)))) hashF!1323))))

(declare-fun m!5670675 () Bool)

(assert (=> bs!1119035 m!5670675))

(assert (=> b!4729433 d!1507528))

(declare-fun b_lambda!180123 () Bool)

(assert (= b_lambda!180067 (or d!1507074 b_lambda!180123)))

(declare-fun bs!1119036 () Bool)

(declare-fun d!1507530 () Bool)

(assert (= bs!1119036 (and d!1507530 d!1507074)))

(assert (=> bs!1119036 (= (dynLambda!21841 lambda!216840 (h!59237 oldBucket!34)) (= (hash!4413 hashF!1323 (_1!30555 (h!59237 oldBucket!34))) hash!405))))

(declare-fun m!5670677 () Bool)

(assert (=> bs!1119036 m!5670677))

(assert (=> b!4729346 d!1507530))

(declare-fun b_lambda!180125 () Bool)

(assert (= b_lambda!180081 (or d!1507002 b_lambda!180125)))

(declare-fun bs!1119037 () Bool)

(declare-fun d!1507532 () Bool)

(assert (= bs!1119037 (and d!1507532 d!1507002)))

(assert (=> bs!1119037 (= (dynLambda!21839 lambda!216819 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))) (noDuplicateKeys!2032 (_2!30556 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))))))))

(declare-fun m!5670679 () Bool)

(assert (=> bs!1119037 m!5670679))

(assert (=> d!1507414 d!1507532))

(declare-fun b_lambda!180127 () Bool)

(assert (= b_lambda!180077 (or d!1507038 b_lambda!180127)))

(declare-fun bs!1119038 () Bool)

(declare-fun d!1507534 () Bool)

(assert (= bs!1119038 (and d!1507534 d!1507038)))

(assert (=> bs!1119038 (= (dynLambda!21839 lambda!216825 (h!59238 (toList!5953 lm!2023))) (noDuplicateKeys!2032 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))

(assert (=> bs!1119038 m!5669703))

(assert (=> b!4729465 d!1507534))

(declare-fun b_lambda!180129 () Bool)

(assert (= b_lambda!180087 (or b!4729036 b_lambda!180129)))

(declare-fun bs!1119039 () Bool)

(declare-fun d!1507536 () Bool)

(assert (= bs!1119039 (and d!1507536 b!4729036)))

(assert (=> bs!1119039 (= (dynLambda!21841 lambda!216873 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893054 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun m!5670681 () Bool)

(assert (=> bs!1119039 m!5670681))

(assert (=> b!4729511 d!1507536))

(declare-fun b_lambda!180131 () Bool)

(assert (= b_lambda!180069 (or start!481760 b_lambda!180131)))

(declare-fun bs!1119040 () Bool)

(declare-fun d!1507538 () Bool)

(assert (= bs!1119040 (and d!1507538 start!481760)))

(assert (=> bs!1119040 (= (dynLambda!21839 lambda!216768 (h!59238 (t!360279 lt!1892767))) (noDuplicateKeys!2032 (_2!30556 (h!59238 (t!360279 lt!1892767)))))))

(declare-fun m!5670683 () Bool)

(assert (=> bs!1119040 m!5670683))

(assert (=> b!4729354 d!1507538))

(declare-fun b_lambda!180133 () Bool)

(assert (= b_lambda!180091 (or b!4729036 b_lambda!180133)))

(declare-fun bs!1119041 () Bool)

(declare-fun d!1507540 () Bool)

(assert (= bs!1119041 (and d!1507540 b!4729036)))

(assert (=> bs!1119041 (= (dynLambda!21841 lambda!216873 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (contains!16239 lt!1893054 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> bs!1119041 m!5669697))

(assert (=> b!4729525 d!1507540))

(declare-fun b_lambda!180135 () Bool)

(assert (= b_lambda!180103 (or d!1507048 b_lambda!180135)))

(declare-fun bs!1119042 () Bool)

(declare-fun d!1507542 () Bool)

(assert (= bs!1119042 (and d!1507542 d!1507048)))

(assert (=> bs!1119042 (= (dynLambda!21839 lambda!216835 (h!59238 (toList!5953 lm!2023))) (noDuplicateKeys!2032 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))

(assert (=> bs!1119042 m!5669703))

(assert (=> b!4729574 d!1507542))

(declare-fun b_lambda!180137 () Bool)

(assert (= b_lambda!180083 (or b!4729036 b_lambda!180137)))

(declare-fun bs!1119043 () Bool)

(declare-fun d!1507544 () Bool)

(assert (= bs!1119043 (and d!1507544 b!4729036)))

(assert (=> bs!1119043 (= (dynLambda!21841 lambda!216873 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893054 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun m!5670685 () Bool)

(assert (=> bs!1119043 m!5670685))

(assert (=> b!4729492 d!1507544))

(declare-fun b_lambda!180139 () Bool)

(assert (= b_lambda!180065 (or start!481760 b_lambda!180139)))

(assert (=> d!1507338 d!1507122))

(declare-fun b_lambda!180141 () Bool)

(assert (= b_lambda!180095 (or d!1507116 b_lambda!180141)))

(declare-fun bs!1119044 () Bool)

(declare-fun d!1507546 () Bool)

(assert (= bs!1119044 (and d!1507546 d!1507116)))

(assert (=> bs!1119044 (= (dynLambda!21841 lambda!216876 (h!59237 newBucket!218)) (= (hash!4413 hashF!1323 (_1!30555 (h!59237 newBucket!218))) hash!405))))

(declare-fun m!5670687 () Bool)

(assert (=> bs!1119044 m!5670687))

(assert (=> b!4729539 d!1507546))

(declare-fun b_lambda!180143 () Bool)

(assert (= b_lambda!180089 (or b!4729036 b_lambda!180143)))

(assert (=> d!1507448 d!1507540))

(declare-fun b_lambda!180145 () Bool)

(assert (= b_lambda!180097 (or d!1507108 b_lambda!180145)))

(declare-fun bs!1119045 () Bool)

(declare-fun d!1507548 () Bool)

(assert (= bs!1119045 (and d!1507548 d!1507108)))

(assert (=> bs!1119045 (= (dynLambda!21839 lambda!216875 (h!59238 (t!360279 (toList!5953 lm!2023)))) (noDuplicateKeys!2032 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> bs!1119045 m!5670561))

(assert (=> b!4729541 d!1507548))

(declare-fun b_lambda!180147 () Bool)

(assert (= b_lambda!180107 (or d!1507002 b_lambda!180147)))

(declare-fun bs!1119046 () Bool)

(declare-fun d!1507550 () Bool)

(assert (= bs!1119046 (and d!1507550 d!1507002)))

(assert (=> bs!1119046 (= (dynLambda!21839 lambda!216819 (h!59238 (toList!5953 lm!2023))) (noDuplicateKeys!2032 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))

(assert (=> bs!1119046 m!5669703))

(assert (=> b!4729580 d!1507550))

(check-sat (not d!1507468) (not bs!1119031) (not b!4729477) (not b!4729438) (not b_lambda!180121) (not b!4729489) (not d!1507346) (not b!4729544) (not d!1507498) (not d!1507382) (not b!4729540) (not b!4729577) (not b!4729474) (not d!1507466) (not b!4729462) (not bm!330813) (not b!4729364) (not bm!330814) (not b_lambda!180137) (not b!4729567) (not bs!1119044) (not b!4729570) (not b!4729367) (not b!4729468) (not b!4729506) (not b_lambda!180109) tp_is_empty!31423 (not b!4729461) (not b_lambda!179979) (not d!1507458) (not b!4729542) (not b!4729451) (not b!4729446) (not b!4729487) (not b!4729363) (not b!4729369) (not d!1507430) (not b!4729595) (not bm!330816) (not d!1507364) (not b!4729534) (not b!4729518) (not bs!1119030) (not b!4729526) (not b!4729543) (not d!1507420) (not d!1507436) (not b!4729371) (not b!4729597) (not d!1507356) (not b!4729485) (not b!4729596) (not d!1507456) (not b!4729599) (not b!4729340) (not b!4729425) (not bm!330810) (not b_lambda!180135) (not d!1507432) (not d!1507354) (not b_lambda!180099) (not b!4729402) (not bs!1119039) (not d!1507380) (not b!4729350) (not b!4729504) (not b!4729456) (not b_lambda!180119) (not b_lambda!180141) (not b!4729413) (not d!1507392) (not b!4729353) (not b!4729398) (not b_lambda!180145) (not b!4729470) (not b!4729410) (not b!4729355) (not d!1507460) (not b!4729547) (not bs!1119035) (not b_lambda!180139) (not b!4729519) (not d!1507492) (not b_lambda!180073) (not b!4729432) (not b!4729397) (not b!4729484) (not b_lambda!180133) (not b!4729391) (not b!4729579) (not b!4729507) (not b!4729509) (not b_lambda!180129) (not b_lambda!180147) (not b_lambda!180123) (not b!4729347) (not d!1507480) (not b!4729510) (not b!4729480) (not d!1507416) (not b!4729394) (not b!4729436) (not b!4729447) (not b!4729434) (not bs!1119034) (not b!4729556) (not bs!1119045) (not d!1507474) (not b!4729575) (not b!4729445) (not bs!1119041) (not b!4729368) (not b!4729412) (not b_lambda!180125) (not b!4729414) (not b_lambda!180113) (not d!1507418) (not b_lambda!179975) tp_is_empty!31421 (not b!4729498) (not b!4729422) (not b!4729578) (not b!4729523) (not bs!1119042) (not b!4729361) (not b!4729459) (not b!4729493) (not b!4729416) (not bs!1119038) (not b!4729515) (not bs!1119033) (not b!4729454) (not b!4729466) (not b!4729520) (not b!4729505) (not d!1507508) (not d!1507372) (not d!1507510) (not d!1507344) (not b!4729530) (not b!4729587) (not b!4729512) (not bs!1119040) (not b!4729532) (not b!4729491) (not d!1507426) (not d!1507444) (not d!1507422) (not bm!330811) (not b!4729581) (not b_lambda!180117) (not bs!1119029) (not b_lambda!180127) (not bs!1119037) (not b!4729479) (not b!4729471) (not b!4729356) (not b!4729501) (not d!1507406) (not d!1507440) (not b!4729450) (not d!1507482) (not b!4729524) (not bs!1119043) (not b_lambda!180143) (not bm!330812) (not bs!1119032) (not d!1507394) (not b!4729464) (not b!4729486) (not d!1507448) (not bs!1119046) (not b!4729502) (not d!1507386) (not b!4729521) (not bm!330818) (not b!4729404) (not b!4729457) (not b!4729358) (not b!4729499) (not b!4729390) (not b_lambda!179977) (not b!4729550) (not b_lambda!180115) (not b_lambda!180131) (not b!4729488) (not d!1507404) (not b!4729531) (not b!4729360) (not d!1507414) (not b!4729572) (not b!4729482) (not b_lambda!180111) (not b!4729528) (not d!1507402) (not bm!330815) (not b!4729598) (not bs!1119036) (not b!4729472) (not b!4729453) (not d!1507450) (not b!4729538) (not b!4729516) (not bm!330817) (not b!4729352) (not d!1507424) (not d!1507462) (not d!1507486) (not d!1507490) (not b!4729475) (not b!4729359) (not b!4729535) (not b!4729593))
(check-sat)
(get-model)

(declare-fun d!1507774 () Bool)

(declare-fun res!2002258 () Bool)

(declare-fun e!2950132 () Bool)

(assert (=> d!1507774 (=> res!2002258 e!2950132)))

(assert (=> d!1507774 (= res!2002258 ((_ is Nil!52878) (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> d!1507774 (= (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) lambda!216945) e!2950132)))

(declare-fun b!4729889 () Bool)

(declare-fun e!2950133 () Bool)

(assert (=> b!4729889 (= e!2950132 e!2950133)))

(declare-fun res!2002259 () Bool)

(assert (=> b!4729889 (=> (not res!2002259) (not e!2950133))))

(assert (=> b!4729889 (= res!2002259 (dynLambda!21841 lambda!216945 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun b!4729890 () Bool)

(assert (=> b!4729890 (= e!2950133 (forall!11627 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))))) lambda!216945))))

(assert (= (and d!1507774 (not res!2002258)) b!4729889))

(assert (= (and b!4729889 res!2002259) b!4729890))

(declare-fun b_lambda!180195 () Bool)

(assert (=> (not b_lambda!180195) (not b!4729889)))

(declare-fun m!5671223 () Bool)

(assert (=> b!4729889 m!5671223))

(declare-fun m!5671225 () Bool)

(assert (=> b!4729890 m!5671225))

(assert (=> b!4729531 d!1507774))

(declare-fun d!1507776 () Bool)

(declare-fun lt!1893542 () Bool)

(assert (=> d!1507776 (= lt!1893542 (select (content!9422 (keys!19004 lt!1893054)) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun e!2950135 () Bool)

(assert (=> d!1507776 (= lt!1893542 e!2950135)))

(declare-fun res!2002261 () Bool)

(assert (=> d!1507776 (=> (not res!2002261) (not e!2950135))))

(assert (=> d!1507776 (= res!2002261 ((_ is Cons!52881) (keys!19004 lt!1893054)))))

(assert (=> d!1507776 (= (contains!16243 (keys!19004 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893542)))

(declare-fun b!4729891 () Bool)

(declare-fun e!2950134 () Bool)

(assert (=> b!4729891 (= e!2950135 e!2950134)))

(declare-fun res!2002260 () Bool)

(assert (=> b!4729891 (=> res!2002260 e!2950134)))

(assert (=> b!4729891 (= res!2002260 (= (h!59242 (keys!19004 lt!1893054)) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4729892 () Bool)

(assert (=> b!4729892 (= e!2950134 (contains!16243 (t!360281 (keys!19004 lt!1893054)) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (= (and d!1507776 res!2002261) b!4729891))

(assert (= (and b!4729891 (not res!2002260)) b!4729892))

(assert (=> d!1507776 m!5670485))

(declare-fun m!5671227 () Bool)

(assert (=> d!1507776 m!5671227))

(declare-fun m!5671229 () Bool)

(assert (=> d!1507776 m!5671229))

(declare-fun m!5671231 () Bool)

(assert (=> b!4729892 m!5671231))

(assert (=> b!4729510 d!1507776))

(declare-fun bs!1119309 () Bool)

(declare-fun b!4729894 () Bool)

(assert (= bs!1119309 (and b!4729894 b!4729394)))

(declare-fun lambda!216984 () Int)

(assert (=> bs!1119309 (= (= (toList!5954 lt!1893054) (t!360278 (toList!5954 lt!1892771))) (= lambda!216984 lambda!216923))))

(declare-fun bs!1119313 () Bool)

(assert (= bs!1119313 (and b!4729894 b!4729390)))

(assert (=> bs!1119313 (= (= (toList!5954 lt!1893054) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!216984 lambda!216924))))

(declare-fun bs!1119315 () Bool)

(assert (= bs!1119315 (and b!4729894 b!4729391)))

(assert (=> bs!1119315 (= (= (toList!5954 lt!1893054) (toList!5954 lt!1892771)) (= lambda!216984 lambda!216925))))

(declare-fun bs!1119317 () Bool)

(assert (= bs!1119317 (and b!4729894 b!4729446)))

(assert (=> bs!1119317 (= (= (toList!5954 lt!1893054) (toList!5954 lt!1892771)) (= lambda!216984 lambda!216931))))

(assert (=> b!4729894 true))

(declare-fun bs!1119320 () Bool)

(declare-fun b!4729895 () Bool)

(assert (= bs!1119320 (and b!4729895 b!4729397)))

(declare-fun lambda!216985 () Int)

(assert (=> bs!1119320 (= lambda!216985 lambda!216926)))

(declare-fun bs!1119322 () Bool)

(assert (= bs!1119322 (and b!4729895 b!4729447)))

(assert (=> bs!1119322 (= lambda!216985 lambda!216932)))

(declare-fun d!1507778 () Bool)

(declare-fun e!2950136 () Bool)

(assert (=> d!1507778 e!2950136))

(declare-fun res!2002264 () Bool)

(assert (=> d!1507778 (=> (not res!2002264) (not e!2950136))))

(declare-fun lt!1893543 () List!53005)

(assert (=> d!1507778 (= res!2002264 (noDuplicate!869 lt!1893543))))

(assert (=> d!1507778 (= lt!1893543 (getKeysList!963 (toList!5954 lt!1893054)))))

(assert (=> d!1507778 (= (keys!19004 lt!1893054) lt!1893543)))

(declare-fun b!4729893 () Bool)

(declare-fun res!2002263 () Bool)

(assert (=> b!4729893 (=> (not res!2002263) (not e!2950136))))

(assert (=> b!4729893 (= res!2002263 (= (length!594 lt!1893543) (length!595 (toList!5954 lt!1893054))))))

(declare-fun res!2002262 () Bool)

(assert (=> b!4729894 (=> (not res!2002262) (not e!2950136))))

(assert (=> b!4729894 (= res!2002262 (forall!11629 lt!1893543 lambda!216984))))

(assert (=> b!4729895 (= e!2950136 (= (content!9422 lt!1893543) (content!9422 (map!11698 (toList!5954 lt!1893054) lambda!216985))))))

(assert (= (and d!1507778 res!2002264) b!4729893))

(assert (= (and b!4729893 res!2002263) b!4729894))

(assert (= (and b!4729894 res!2002262) b!4729895))

(declare-fun m!5671233 () Bool)

(assert (=> d!1507778 m!5671233))

(assert (=> d!1507778 m!5670473))

(declare-fun m!5671235 () Bool)

(assert (=> b!4729893 m!5671235))

(declare-fun m!5671237 () Bool)

(assert (=> b!4729893 m!5671237))

(declare-fun m!5671239 () Bool)

(assert (=> b!4729894 m!5671239))

(declare-fun m!5671241 () Bool)

(assert (=> b!4729895 m!5671241))

(declare-fun m!5671243 () Bool)

(assert (=> b!4729895 m!5671243))

(assert (=> b!4729895 m!5671243))

(declare-fun m!5671245 () Bool)

(assert (=> b!4729895 m!5671245))

(assert (=> b!4729510 d!1507778))

(declare-fun d!1507780 () Bool)

(declare-fun res!2002265 () Bool)

(declare-fun e!2950137 () Bool)

(assert (=> d!1507780 (=> res!2002265 e!2950137)))

(assert (=> d!1507780 (= res!2002265 ((_ is Nil!52879) (t!360279 (t!360279 (toList!5953 lm!2023)))))))

(assert (=> d!1507780 (= (forall!11625 (t!360279 (t!360279 (toList!5953 lm!2023))) lambda!216875) e!2950137)))

(declare-fun b!4729896 () Bool)

(declare-fun e!2950138 () Bool)

(assert (=> b!4729896 (= e!2950137 e!2950138)))

(declare-fun res!2002266 () Bool)

(assert (=> b!4729896 (=> (not res!2002266) (not e!2950138))))

(assert (=> b!4729896 (= res!2002266 (dynLambda!21839 lambda!216875 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023))))))))

(declare-fun b!4729897 () Bool)

(assert (=> b!4729897 (= e!2950138 (forall!11625 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))) lambda!216875))))

(assert (= (and d!1507780 (not res!2002265)) b!4729896))

(assert (= (and b!4729896 res!2002266) b!4729897))

(declare-fun b_lambda!180197 () Bool)

(assert (=> (not b_lambda!180197) (not b!4729896)))

(declare-fun m!5671247 () Bool)

(assert (=> b!4729896 m!5671247))

(declare-fun m!5671249 () Bool)

(assert (=> b!4729897 m!5671249))

(assert (=> b!4729542 d!1507780))

(assert (=> d!1507406 d!1507404))

(assert (=> d!1507406 d!1507080))

(declare-fun d!1507782 () Bool)

(declare-fun lt!1893544 () Bool)

(assert (=> d!1507782 (= lt!1893544 (select (content!9422 e!2949747) key!4653))))

(declare-fun e!2950140 () Bool)

(assert (=> d!1507782 (= lt!1893544 e!2950140)))

(declare-fun res!2002268 () Bool)

(assert (=> d!1507782 (=> (not res!2002268) (not e!2950140))))

(assert (=> d!1507782 (= res!2002268 ((_ is Cons!52881) e!2949747))))

(assert (=> d!1507782 (= (contains!16243 e!2949747 key!4653) lt!1893544)))

(declare-fun b!4729898 () Bool)

(declare-fun e!2950139 () Bool)

(assert (=> b!4729898 (= e!2950140 e!2950139)))

(declare-fun res!2002267 () Bool)

(assert (=> b!4729898 (=> res!2002267 e!2950139)))

(assert (=> b!4729898 (= res!2002267 (= (h!59242 e!2949747) key!4653))))

(declare-fun b!4729899 () Bool)

(assert (=> b!4729899 (= e!2950139 (contains!16243 (t!360281 e!2949747) key!4653))))

(assert (= (and d!1507782 res!2002268) b!4729898))

(assert (= (and b!4729898 (not res!2002267)) b!4729899))

(declare-fun m!5671251 () Bool)

(assert (=> d!1507782 m!5671251))

(declare-fun m!5671253 () Bool)

(assert (=> d!1507782 m!5671253))

(declare-fun m!5671255 () Bool)

(assert (=> b!4729899 m!5671255))

(assert (=> bm!330810 d!1507782))

(declare-fun d!1507784 () Bool)

(declare-fun res!2002273 () Bool)

(declare-fun e!2950146 () Bool)

(assert (=> d!1507784 (=> res!2002273 e!2950146)))

(assert (=> d!1507784 (= res!2002273 (or ((_ is Nil!52878) (toList!5954 lt!1893065)) ((_ is Nil!52878) (t!360278 (toList!5954 lt!1893065)))))))

(assert (=> d!1507784 (= (noDuplicatedKeys!383 (toList!5954 lt!1893065)) e!2950146)))

(declare-fun b!4729906 () Bool)

(declare-fun e!2950147 () Bool)

(assert (=> b!4729906 (= e!2950146 e!2950147)))

(declare-fun res!2002274 () Bool)

(assert (=> b!4729906 (=> (not res!2002274) (not e!2950147))))

(assert (=> b!4729906 (= res!2002274 (not (containsKey!3406 (t!360278 (toList!5954 lt!1893065)) (_1!30555 (h!59237 (toList!5954 lt!1893065))))))))

(declare-fun b!4729907 () Bool)

(assert (=> b!4729907 (= e!2950147 (noDuplicatedKeys!383 (t!360278 (toList!5954 lt!1893065))))))

(assert (= (and d!1507784 (not res!2002273)) b!4729906))

(assert (= (and b!4729906 res!2002274) b!4729907))

(declare-fun m!5671303 () Bool)

(assert (=> b!4729906 m!5671303))

(declare-fun m!5671305 () Bool)

(assert (=> b!4729907 m!5671305))

(assert (=> d!1507386 d!1507784))

(declare-fun d!1507792 () Bool)

(declare-fun res!2002275 () Bool)

(declare-fun e!2950148 () Bool)

(assert (=> d!1507792 (=> res!2002275 e!2950148)))

(assert (=> d!1507792 (= res!2002275 (and ((_ is Cons!52878) (toList!5954 lt!1893051)) (= (_1!30555 (h!59237 (toList!5954 lt!1893051))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1507792 (= (containsKey!3406 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) e!2950148)))

(declare-fun b!4729908 () Bool)

(declare-fun e!2950149 () Bool)

(assert (=> b!4729908 (= e!2950148 e!2950149)))

(declare-fun res!2002276 () Bool)

(assert (=> b!4729908 (=> (not res!2002276) (not e!2950149))))

(assert (=> b!4729908 (= res!2002276 ((_ is Cons!52878) (toList!5954 lt!1893051)))))

(declare-fun b!4729909 () Bool)

(assert (=> b!4729909 (= e!2950149 (containsKey!3406 (t!360278 (toList!5954 lt!1893051)) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (= (and d!1507792 (not res!2002275)) b!4729908))

(assert (= (and b!4729908 res!2002276) b!4729909))

(declare-fun m!5671307 () Bool)

(assert (=> b!4729909 m!5671307))

(assert (=> d!1507450 d!1507792))

(declare-fun d!1507794 () Bool)

(declare-fun lt!1893547 () Bool)

(assert (=> d!1507794 (= lt!1893547 (select (content!9423 (t!360278 lt!1892763)) (get!17745 lt!1893284)))))

(declare-fun e!2950150 () Bool)

(assert (=> d!1507794 (= lt!1893547 e!2950150)))

(declare-fun res!2002277 () Bool)

(assert (=> d!1507794 (=> (not res!2002277) (not e!2950150))))

(assert (=> d!1507794 (= res!2002277 ((_ is Cons!52878) (t!360278 lt!1892763)))))

(assert (=> d!1507794 (= (contains!16242 (t!360278 lt!1892763) (get!17745 lt!1893284)) lt!1893547)))

(declare-fun b!4729910 () Bool)

(declare-fun e!2950151 () Bool)

(assert (=> b!4729910 (= e!2950150 e!2950151)))

(declare-fun res!2002278 () Bool)

(assert (=> b!4729910 (=> res!2002278 e!2950151)))

(assert (=> b!4729910 (= res!2002278 (= (h!59237 (t!360278 lt!1892763)) (get!17745 lt!1893284)))))

(declare-fun b!4729911 () Bool)

(assert (=> b!4729911 (= e!2950151 (contains!16242 (t!360278 (t!360278 lt!1892763)) (get!17745 lt!1893284)))))

(assert (= (and d!1507794 res!2002277) b!4729910))

(assert (= (and b!4729910 (not res!2002278)) b!4729911))

(declare-fun m!5671309 () Bool)

(assert (=> d!1507794 m!5671309))

(assert (=> d!1507794 m!5670351))

(declare-fun m!5671311 () Bool)

(assert (=> d!1507794 m!5671311))

(assert (=> b!4729911 m!5670351))

(declare-fun m!5671313 () Bool)

(assert (=> b!4729911 m!5671313))

(assert (=> b!4729457 d!1507794))

(declare-fun d!1507796 () Bool)

(assert (=> d!1507796 (= (get!17745 lt!1893284) (v!46992 lt!1893284))))

(assert (=> b!4729457 d!1507796))

(declare-fun bs!1119352 () Bool)

(declare-fun b!4729915 () Bool)

(assert (= bs!1119352 (and b!4729915 d!1507090)))

(declare-fun lambda!216988 () Int)

(assert (=> bs!1119352 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893065) (= lambda!216988 lambda!216874))))

(declare-fun bs!1119354 () Bool)

(assert (= bs!1119354 (and b!4729915 d!1507436)))

(assert (=> bs!1119354 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893313) (= lambda!216988 lambda!216936))))

(declare-fun bs!1119355 () Bool)

(assert (= bs!1119355 (and b!4729915 d!1507074)))

(assert (=> bs!1119355 (not (= lambda!216988 lambda!216840))))

(declare-fun bs!1119356 () Bool)

(assert (= bs!1119356 (and b!4729915 b!4729490)))

(assert (=> bs!1119356 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216988 lambda!216933))))

(declare-fun bs!1119357 () Bool)

(assert (= bs!1119357 (and b!4729915 d!1507456)))

(assert (=> bs!1119357 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893054) (= lambda!216988 lambda!216941))))

(declare-fun bs!1119358 () Bool)

(assert (= bs!1119358 (and b!4729915 d!1507458)))

(assert (=> bs!1119358 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893368) (= lambda!216988 lambda!216945))))

(declare-fun bs!1119360 () Bool)

(assert (= bs!1119360 (and b!4729915 b!4729530)))

(assert (=> bs!1119360 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!216988 lambda!216943))))

(declare-fun bs!1119361 () Bool)

(assert (= bs!1119361 (and b!4729915 d!1507466)))

(assert (=> bs!1119361 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216988 lambda!216949))))

(declare-fun bs!1119362 () Bool)

(assert (= bs!1119362 (and b!4729915 b!4729039)))

(assert (=> bs!1119362 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216988 lambda!216871))))

(declare-fun bs!1119363 () Bool)

(assert (= bs!1119363 (and b!4729915 b!4729533)))

(assert (=> bs!1119363 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!216988 lambda!216942))))

(declare-fun bs!1119364 () Bool)

(assert (= bs!1119364 (and b!4729915 b!4729036)))

(assert (=> bs!1119364 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893054) (= lambda!216988 lambda!216873))))

(declare-fun bs!1119365 () Bool)

(assert (= bs!1119365 (and b!4729915 d!1507116)))

(assert (=> bs!1119365 (not (= lambda!216988 lambda!216876))))

(declare-fun bs!1119366 () Bool)

(assert (= bs!1119366 (and b!4729915 b!4729487)))

(assert (=> bs!1119366 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893302) (= lambda!216988 lambda!216935))))

(assert (=> bs!1119360 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893357) (= lambda!216988 lambda!216944))))

(assert (=> bs!1119366 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216988 lambda!216934))))

(assert (=> bs!1119364 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216988 lambda!216872))))

(assert (=> b!4729915 true))

(declare-fun bs!1119368 () Bool)

(declare-fun b!4729912 () Bool)

(assert (= bs!1119368 (and b!4729912 d!1507090)))

(declare-fun lambda!216989 () Int)

(assert (=> bs!1119368 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893065) (= lambda!216989 lambda!216874))))

(declare-fun bs!1119369 () Bool)

(assert (= bs!1119369 (and b!4729912 d!1507436)))

(assert (=> bs!1119369 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893313) (= lambda!216989 lambda!216936))))

(declare-fun bs!1119371 () Bool)

(assert (= bs!1119371 (and b!4729912 d!1507074)))

(assert (=> bs!1119371 (not (= lambda!216989 lambda!216840))))

(declare-fun bs!1119372 () Bool)

(assert (= bs!1119372 (and b!4729912 b!4729490)))

(assert (=> bs!1119372 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216989 lambda!216933))))

(declare-fun bs!1119373 () Bool)

(assert (= bs!1119373 (and b!4729912 d!1507456)))

(assert (=> bs!1119373 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893054) (= lambda!216989 lambda!216941))))

(declare-fun bs!1119374 () Bool)

(assert (= bs!1119374 (and b!4729912 b!4729915)))

(assert (=> bs!1119374 (= lambda!216989 lambda!216988)))

(declare-fun bs!1119375 () Bool)

(assert (= bs!1119375 (and b!4729912 d!1507458)))

(assert (=> bs!1119375 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893368) (= lambda!216989 lambda!216945))))

(declare-fun bs!1119376 () Bool)

(assert (= bs!1119376 (and b!4729912 b!4729530)))

(assert (=> bs!1119376 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!216989 lambda!216943))))

(declare-fun bs!1119377 () Bool)

(assert (= bs!1119377 (and b!4729912 d!1507466)))

(assert (=> bs!1119377 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216989 lambda!216949))))

(declare-fun bs!1119378 () Bool)

(assert (= bs!1119378 (and b!4729912 b!4729039)))

(assert (=> bs!1119378 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216989 lambda!216871))))

(declare-fun bs!1119379 () Bool)

(assert (= bs!1119379 (and b!4729912 b!4729533)))

(assert (=> bs!1119379 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!216989 lambda!216942))))

(declare-fun bs!1119380 () Bool)

(assert (= bs!1119380 (and b!4729912 b!4729036)))

(assert (=> bs!1119380 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893054) (= lambda!216989 lambda!216873))))

(declare-fun bs!1119381 () Bool)

(assert (= bs!1119381 (and b!4729912 d!1507116)))

(assert (=> bs!1119381 (not (= lambda!216989 lambda!216876))))

(declare-fun bs!1119382 () Bool)

(assert (= bs!1119382 (and b!4729912 b!4729487)))

(assert (=> bs!1119382 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893302) (= lambda!216989 lambda!216935))))

(assert (=> bs!1119376 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893357) (= lambda!216989 lambda!216944))))

(assert (=> bs!1119382 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216989 lambda!216934))))

(assert (=> bs!1119380 (= (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216989 lambda!216872))))

(assert (=> b!4729912 true))

(declare-fun lt!1893553 () ListMap!5317)

(declare-fun lambda!216990 () Int)

(assert (=> bs!1119368 (= (= lt!1893553 lt!1893065) (= lambda!216990 lambda!216874))))

(assert (=> bs!1119369 (= (= lt!1893553 lt!1893313) (= lambda!216990 lambda!216936))))

(assert (=> bs!1119371 (not (= lambda!216990 lambda!216840))))

(assert (=> bs!1119372 (= (= lt!1893553 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216990 lambda!216933))))

(assert (=> bs!1119373 (= (= lt!1893553 lt!1893054) (= lambda!216990 lambda!216941))))

(assert (=> bs!1119374 (= (= lt!1893553 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!216990 lambda!216988))))

(assert (=> bs!1119375 (= (= lt!1893553 lt!1893368) (= lambda!216990 lambda!216945))))

(assert (=> bs!1119376 (= (= lt!1893553 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!216990 lambda!216943))))

(assert (=> bs!1119377 (= (= lt!1893553 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216990 lambda!216949))))

(assert (=> bs!1119378 (= (= lt!1893553 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216990 lambda!216871))))

(assert (=> bs!1119379 (= (= lt!1893553 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!216990 lambda!216942))))

(assert (=> bs!1119380 (= (= lt!1893553 lt!1893054) (= lambda!216990 lambda!216873))))

(assert (=> bs!1119381 (not (= lambda!216990 lambda!216876))))

(assert (=> bs!1119382 (= (= lt!1893553 lt!1893302) (= lambda!216990 lambda!216935))))

(assert (=> bs!1119376 (= (= lt!1893553 lt!1893357) (= lambda!216990 lambda!216944))))

(assert (=> b!4729912 (= (= lt!1893553 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!216990 lambda!216989))))

(assert (=> bs!1119382 (= (= lt!1893553 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216990 lambda!216934))))

(assert (=> bs!1119380 (= (= lt!1893553 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216990 lambda!216872))))

(assert (=> b!4729912 true))

(declare-fun bs!1119393 () Bool)

(declare-fun d!1507798 () Bool)

(assert (= bs!1119393 (and d!1507798 d!1507090)))

(declare-fun lambda!216992 () Int)

(declare-fun lt!1893564 () ListMap!5317)

(assert (=> bs!1119393 (= (= lt!1893564 lt!1893065) (= lambda!216992 lambda!216874))))

(declare-fun bs!1119395 () Bool)

(assert (= bs!1119395 (and d!1507798 d!1507436)))

(assert (=> bs!1119395 (= (= lt!1893564 lt!1893313) (= lambda!216992 lambda!216936))))

(declare-fun bs!1119397 () Bool)

(assert (= bs!1119397 (and d!1507798 d!1507074)))

(assert (=> bs!1119397 (not (= lambda!216992 lambda!216840))))

(declare-fun bs!1119399 () Bool)

(assert (= bs!1119399 (and d!1507798 b!4729490)))

(assert (=> bs!1119399 (= (= lt!1893564 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216992 lambda!216933))))

(declare-fun bs!1119401 () Bool)

(assert (= bs!1119401 (and d!1507798 d!1507456)))

(assert (=> bs!1119401 (= (= lt!1893564 lt!1893054) (= lambda!216992 lambda!216941))))

(declare-fun bs!1119403 () Bool)

(assert (= bs!1119403 (and d!1507798 b!4729915)))

(assert (=> bs!1119403 (= (= lt!1893564 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!216992 lambda!216988))))

(declare-fun bs!1119405 () Bool)

(assert (= bs!1119405 (and d!1507798 d!1507458)))

(assert (=> bs!1119405 (= (= lt!1893564 lt!1893368) (= lambda!216992 lambda!216945))))

(declare-fun bs!1119407 () Bool)

(assert (= bs!1119407 (and d!1507798 b!4729530)))

(assert (=> bs!1119407 (= (= lt!1893564 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!216992 lambda!216943))))

(declare-fun bs!1119408 () Bool)

(assert (= bs!1119408 (and d!1507798 d!1507466)))

(assert (=> bs!1119408 (= (= lt!1893564 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216992 lambda!216949))))

(declare-fun bs!1119410 () Bool)

(assert (= bs!1119410 (and d!1507798 b!4729039)))

(assert (=> bs!1119410 (= (= lt!1893564 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216992 lambda!216871))))

(declare-fun bs!1119412 () Bool)

(assert (= bs!1119412 (and d!1507798 b!4729036)))

(assert (=> bs!1119412 (= (= lt!1893564 lt!1893054) (= lambda!216992 lambda!216873))))

(declare-fun bs!1119414 () Bool)

(assert (= bs!1119414 (and d!1507798 d!1507116)))

(assert (=> bs!1119414 (not (= lambda!216992 lambda!216876))))

(declare-fun bs!1119415 () Bool)

(assert (= bs!1119415 (and d!1507798 b!4729487)))

(assert (=> bs!1119415 (= (= lt!1893564 lt!1893302) (= lambda!216992 lambda!216935))))

(assert (=> bs!1119407 (= (= lt!1893564 lt!1893357) (= lambda!216992 lambda!216944))))

(declare-fun bs!1119417 () Bool)

(assert (= bs!1119417 (and d!1507798 b!4729912)))

(assert (=> bs!1119417 (= (= lt!1893564 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!216992 lambda!216989))))

(assert (=> bs!1119415 (= (= lt!1893564 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216992 lambda!216934))))

(assert (=> bs!1119412 (= (= lt!1893564 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216992 lambda!216872))))

(declare-fun bs!1119418 () Bool)

(assert (= bs!1119418 (and d!1507798 b!4729533)))

(assert (=> bs!1119418 (= (= lt!1893564 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!216992 lambda!216942))))

(assert (=> bs!1119417 (= (= lt!1893564 lt!1893553) (= lambda!216992 lambda!216990))))

(assert (=> d!1507798 true))

(declare-fun bm!330836 () Bool)

(declare-fun call!330842 () Unit!131227)

(assert (=> bm!330836 (= call!330842 (lemmaContainsAllItsOwnKeys!808 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun e!2950153 () ListMap!5317)

(assert (=> b!4729912 (= e!2950153 lt!1893553)))

(declare-fun lt!1893550 () ListMap!5317)

(assert (=> b!4729912 (= lt!1893550 (+!2280 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (h!59237 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> b!4729912 (= lt!1893553 (addToMapMapFromBucket!1462 (t!360278 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (+!2280 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (h!59237 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun lt!1893557 () Unit!131227)

(assert (=> b!4729912 (= lt!1893557 call!330842)))

(assert (=> b!4729912 (forall!11627 (toList!5954 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) lambda!216989)))

(declare-fun lt!1893552 () Unit!131227)

(assert (=> b!4729912 (= lt!1893552 lt!1893557)))

(assert (=> b!4729912 (forall!11627 (toList!5954 lt!1893550) lambda!216990)))

(declare-fun lt!1893566 () Unit!131227)

(declare-fun Unit!131339 () Unit!131227)

(assert (=> b!4729912 (= lt!1893566 Unit!131339)))

(assert (=> b!4729912 (forall!11627 (t!360278 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lambda!216990)))

(declare-fun lt!1893563 () Unit!131227)

(declare-fun Unit!131340 () Unit!131227)

(assert (=> b!4729912 (= lt!1893563 Unit!131340)))

(declare-fun lt!1893561 () Unit!131227)

(declare-fun Unit!131341 () Unit!131227)

(assert (=> b!4729912 (= lt!1893561 Unit!131341)))

(declare-fun lt!1893549 () Unit!131227)

(assert (=> b!4729912 (= lt!1893549 (forallContained!3667 (toList!5954 lt!1893550) lambda!216990 (h!59237 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> b!4729912 (contains!16239 lt!1893550 (_1!30555 (h!59237 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893565 () Unit!131227)

(declare-fun Unit!131342 () Unit!131227)

(assert (=> b!4729912 (= lt!1893565 Unit!131342)))

(assert (=> b!4729912 (contains!16239 lt!1893553 (_1!30555 (h!59237 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893555 () Unit!131227)

(declare-fun Unit!131343 () Unit!131227)

(assert (=> b!4729912 (= lt!1893555 Unit!131343)))

(declare-fun call!330843 () Bool)

(assert (=> b!4729912 call!330843))

(declare-fun lt!1893559 () Unit!131227)

(declare-fun Unit!131344 () Unit!131227)

(assert (=> b!4729912 (= lt!1893559 Unit!131344)))

(assert (=> b!4729912 (forall!11627 (toList!5954 lt!1893550) lambda!216990)))

(declare-fun lt!1893554 () Unit!131227)

(declare-fun Unit!131345 () Unit!131227)

(assert (=> b!4729912 (= lt!1893554 Unit!131345)))

(declare-fun lt!1893556 () Unit!131227)

(declare-fun Unit!131346 () Unit!131227)

(assert (=> b!4729912 (= lt!1893556 Unit!131346)))

(declare-fun lt!1893558 () Unit!131227)

(assert (=> b!4729912 (= lt!1893558 (addForallContainsKeyThenBeforeAdding!807 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893553 (_1!30555 (h!59237 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (_2!30555 (h!59237 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(assert (=> b!4729912 (forall!11627 (toList!5954 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) lambda!216990)))

(declare-fun lt!1893548 () Unit!131227)

(assert (=> b!4729912 (= lt!1893548 lt!1893558)))

(declare-fun call!330841 () Bool)

(assert (=> b!4729912 call!330841))

(declare-fun lt!1893568 () Unit!131227)

(declare-fun Unit!131347 () Unit!131227)

(assert (=> b!4729912 (= lt!1893568 Unit!131347)))

(declare-fun res!2002280 () Bool)

(assert (=> b!4729912 (= res!2002280 (forall!11627 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lambda!216990))))

(declare-fun e!2950154 () Bool)

(assert (=> b!4729912 (=> (not res!2002280) (not e!2950154))))

(assert (=> b!4729912 e!2950154))

(declare-fun lt!1893551 () Unit!131227)

(declare-fun Unit!131348 () Unit!131227)

(assert (=> b!4729912 (= lt!1893551 Unit!131348)))

(declare-fun b!4729913 () Bool)

(declare-fun res!2002281 () Bool)

(declare-fun e!2950152 () Bool)

(assert (=> b!4729913 (=> (not res!2002281) (not e!2950152))))

(assert (=> b!4729913 (= res!2002281 (forall!11627 (toList!5954 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) lambda!216992))))

(declare-fun b!4729914 () Bool)

(assert (=> b!4729914 (= e!2950152 (invariantList!1523 (toList!5954 lt!1893564)))))

(declare-fun c!807777 () Bool)

(declare-fun bm!330838 () Bool)

(assert (=> bm!330838 (= call!330841 (forall!11627 (toList!5954 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (ite c!807777 lambda!216988 lambda!216990)))))

(assert (=> b!4729915 (= e!2950153 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893560 () Unit!131227)

(assert (=> b!4729915 (= lt!1893560 call!330842)))

(assert (=> b!4729915 call!330843))

(declare-fun lt!1893567 () Unit!131227)

(assert (=> b!4729915 (= lt!1893567 lt!1893560)))

(assert (=> b!4729915 call!330841))

(declare-fun lt!1893562 () Unit!131227)

(declare-fun Unit!131349 () Unit!131227)

(assert (=> b!4729915 (= lt!1893562 Unit!131349)))

(declare-fun b!4729916 () Bool)

(assert (=> b!4729916 (= e!2950154 (forall!11627 (toList!5954 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) lambda!216990))))

(declare-fun bm!330837 () Bool)

(assert (=> bm!330837 (= call!330843 (forall!11627 (ite c!807777 (toList!5954 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (ite c!807777 lambda!216988 lambda!216990)))))

(assert (=> d!1507798 e!2950152))

(declare-fun res!2002279 () Bool)

(assert (=> d!1507798 (=> (not res!2002279) (not e!2950152))))

(assert (=> d!1507798 (= res!2002279 (forall!11627 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lambda!216992))))

(assert (=> d!1507798 (= lt!1893564 e!2950153)))

(assert (=> d!1507798 (= c!807777 ((_ is Nil!52878) (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1507798 (noDuplicateKeys!2032 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (=> d!1507798 (= (addToMapMapFromBucket!1462 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) lt!1893564)))

(assert (= (and d!1507798 c!807777) b!4729915))

(assert (= (and d!1507798 (not c!807777)) b!4729912))

(assert (= (and b!4729912 res!2002280) b!4729916))

(assert (= (or b!4729915 b!4729912) bm!330836))

(assert (= (or b!4729915 b!4729912) bm!330838))

(assert (= (or b!4729915 b!4729912) bm!330837))

(assert (= (and d!1507798 res!2002279) b!4729913))

(assert (= (and b!4729913 res!2002281) b!4729914))

(declare-fun m!5671367 () Bool)

(assert (=> b!4729912 m!5671367))

(declare-fun m!5671369 () Bool)

(assert (=> b!4729912 m!5671369))

(declare-fun m!5671371 () Bool)

(assert (=> b!4729912 m!5671371))

(assert (=> b!4729912 m!5671371))

(declare-fun m!5671373 () Bool)

(assert (=> b!4729912 m!5671373))

(declare-fun m!5671375 () Bool)

(assert (=> b!4729912 m!5671375))

(assert (=> b!4729912 m!5670425))

(declare-fun m!5671381 () Bool)

(assert (=> b!4729912 m!5671381))

(declare-fun m!5671385 () Bool)

(assert (=> b!4729912 m!5671385))

(declare-fun m!5671389 () Bool)

(assert (=> b!4729912 m!5671389))

(declare-fun m!5671393 () Bool)

(assert (=> b!4729912 m!5671393))

(assert (=> b!4729912 m!5670425))

(assert (=> b!4729912 m!5671373))

(declare-fun m!5671395 () Bool)

(assert (=> b!4729912 m!5671395))

(declare-fun m!5671397 () Bool)

(assert (=> b!4729912 m!5671397))

(declare-fun m!5671399 () Bool)

(assert (=> b!4729913 m!5671399))

(declare-fun m!5671401 () Bool)

(assert (=> d!1507798 m!5671401))

(declare-fun m!5671403 () Bool)

(assert (=> d!1507798 m!5671403))

(assert (=> bm!330836 m!5670425))

(declare-fun m!5671405 () Bool)

(assert (=> bm!330836 m!5671405))

(assert (=> b!4729916 m!5671367))

(declare-fun m!5671409 () Bool)

(assert (=> b!4729914 m!5671409))

(declare-fun m!5671413 () Bool)

(assert (=> bm!330838 m!5671413))

(declare-fun m!5671415 () Bool)

(assert (=> bm!330837 m!5671415))

(assert (=> b!4729487 d!1507798))

(declare-fun d!1507832 () Bool)

(declare-fun e!2950189 () Bool)

(assert (=> d!1507832 e!2950189))

(declare-fun res!2002309 () Bool)

(assert (=> d!1507832 (=> res!2002309 e!2950189)))

(declare-fun e!2950190 () Bool)

(assert (=> d!1507832 (= res!2002309 e!2950190)))

(declare-fun res!2002307 () Bool)

(assert (=> d!1507832 (=> (not res!2002307) (not e!2950190))))

(declare-fun lt!1893580 () Bool)

(assert (=> d!1507832 (= res!2002307 (not lt!1893580))))

(declare-fun lt!1893583 () Bool)

(assert (=> d!1507832 (= lt!1893580 lt!1893583)))

(declare-fun lt!1893585 () Unit!131227)

(declare-fun e!2950188 () Unit!131227)

(assert (=> d!1507832 (= lt!1893585 e!2950188)))

(declare-fun c!807785 () Bool)

(assert (=> d!1507832 (= c!807785 lt!1893583)))

(assert (=> d!1507832 (= lt!1893583 (containsKey!3406 (toList!5954 lt!1893299) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1507832 (= (contains!16239 lt!1893299 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) lt!1893580)))

(declare-fun b!4729956 () Bool)

(assert (=> b!4729956 false))

(declare-fun lt!1893584 () Unit!131227)

(declare-fun lt!1893581 () Unit!131227)

(assert (=> b!4729956 (= lt!1893584 lt!1893581)))

(assert (=> b!4729956 (containsKey!3406 (toList!5954 lt!1893299) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> b!4729956 (= lt!1893581 (lemmaInGetKeysListThenContainsKey!962 (toList!5954 lt!1893299) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun e!2950185 () Unit!131227)

(declare-fun Unit!131350 () Unit!131227)

(assert (=> b!4729956 (= e!2950185 Unit!131350)))

(declare-fun b!4729957 () Bool)

(declare-fun Unit!131351 () Unit!131227)

(assert (=> b!4729957 (= e!2950185 Unit!131351)))

(declare-fun b!4729958 () Bool)

(declare-fun e!2950187 () List!53005)

(assert (=> b!4729958 (= e!2950187 (getKeysList!963 (toList!5954 lt!1893299)))))

(declare-fun b!4729959 () Bool)

(declare-fun e!2950191 () Bool)

(assert (=> b!4729959 (= e!2950191 (contains!16243 (keys!19004 lt!1893299) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun b!4729960 () Bool)

(declare-fun lt!1893587 () Unit!131227)

(assert (=> b!4729960 (= e!2950188 lt!1893587)))

(declare-fun lt!1893582 () Unit!131227)

(assert (=> b!4729960 (= lt!1893582 (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 lt!1893299) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> b!4729960 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893299) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893586 () Unit!131227)

(assert (=> b!4729960 (= lt!1893586 lt!1893582)))

(assert (=> b!4729960 (= lt!1893587 (lemmaInListThenGetKeysListContains!958 (toList!5954 lt!1893299) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun call!330845 () Bool)

(assert (=> b!4729960 call!330845))

(declare-fun bm!330840 () Bool)

(assert (=> bm!330840 (= call!330845 (contains!16243 e!2950187 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun c!807787 () Bool)

(assert (=> bm!330840 (= c!807787 c!807785)))

(declare-fun b!4729961 () Bool)

(assert (=> b!4729961 (= e!2950187 (keys!19004 lt!1893299))))

(declare-fun b!4729962 () Bool)

(assert (=> b!4729962 (= e!2950188 e!2950185)))

(declare-fun c!807784 () Bool)

(assert (=> b!4729962 (= c!807784 call!330845)))

(declare-fun b!4729963 () Bool)

(assert (=> b!4729963 (= e!2950189 e!2950191)))

(declare-fun res!2002308 () Bool)

(assert (=> b!4729963 (=> (not res!2002308) (not e!2950191))))

(assert (=> b!4729963 (= res!2002308 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893299) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun b!4729964 () Bool)

(assert (=> b!4729964 (= e!2950190 (not (contains!16243 (keys!19004 lt!1893299) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(assert (= (and d!1507832 c!807785) b!4729960))

(assert (= (and d!1507832 (not c!807785)) b!4729962))

(assert (= (and b!4729962 c!807784) b!4729956))

(assert (= (and b!4729962 (not c!807784)) b!4729957))

(assert (= (or b!4729960 b!4729962) bm!330840))

(assert (= (and bm!330840 c!807787) b!4729958))

(assert (= (and bm!330840 (not c!807787)) b!4729961))

(assert (= (and d!1507832 res!2002307) b!4729964))

(assert (= (and d!1507832 (not res!2002309)) b!4729963))

(assert (= (and b!4729963 res!2002308) b!4729959))

(declare-fun m!5671433 () Bool)

(assert (=> b!4729958 m!5671433))

(declare-fun m!5671435 () Bool)

(assert (=> b!4729956 m!5671435))

(declare-fun m!5671437 () Bool)

(assert (=> b!4729956 m!5671437))

(declare-fun m!5671439 () Bool)

(assert (=> bm!330840 m!5671439))

(declare-fun m!5671443 () Bool)

(assert (=> b!4729963 m!5671443))

(assert (=> b!4729963 m!5671443))

(declare-fun m!5671447 () Bool)

(assert (=> b!4729963 m!5671447))

(declare-fun m!5671449 () Bool)

(assert (=> b!4729959 m!5671449))

(assert (=> b!4729959 m!5671449))

(declare-fun m!5671451 () Bool)

(assert (=> b!4729959 m!5671451))

(assert (=> d!1507832 m!5671435))

(declare-fun m!5671453 () Bool)

(assert (=> b!4729960 m!5671453))

(assert (=> b!4729960 m!5671443))

(assert (=> b!4729960 m!5671443))

(assert (=> b!4729960 m!5671447))

(declare-fun m!5671455 () Bool)

(assert (=> b!4729960 m!5671455))

(assert (=> b!4729964 m!5671449))

(assert (=> b!4729964 m!5671449))

(assert (=> b!4729964 m!5671451))

(assert (=> b!4729961 m!5671449))

(assert (=> b!4729487 d!1507832))

(declare-fun d!1507842 () Bool)

(declare-fun res!2002312 () Bool)

(declare-fun e!2950196 () Bool)

(assert (=> d!1507842 (=> res!2002312 e!2950196)))

(assert (=> d!1507842 (= res!2002312 ((_ is Nil!52878) (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1507842 (= (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lambda!216935) e!2950196)))

(declare-fun b!4729971 () Bool)

(declare-fun e!2950197 () Bool)

(assert (=> b!4729971 (= e!2950196 e!2950197)))

(declare-fun res!2002313 () Bool)

(assert (=> b!4729971 (=> (not res!2002313) (not e!2950197))))

(assert (=> b!4729971 (= res!2002313 (dynLambda!21841 lambda!216935 (h!59237 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun b!4729972 () Bool)

(assert (=> b!4729972 (= e!2950197 (forall!11627 (t!360278 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) lambda!216935))))

(assert (= (and d!1507842 (not res!2002312)) b!4729971))

(assert (= (and b!4729971 res!2002313) b!4729972))

(declare-fun b_lambda!180209 () Bool)

(assert (=> (not b_lambda!180209) (not b!4729971)))

(declare-fun m!5671461 () Bool)

(assert (=> b!4729971 m!5671461))

(declare-fun m!5671463 () Bool)

(assert (=> b!4729972 m!5671463))

(assert (=> b!4729487 d!1507842))

(declare-fun bs!1119420 () Bool)

(declare-fun d!1507846 () Bool)

(assert (= bs!1119420 (and d!1507846 d!1507090)))

(declare-fun lambda!216993 () Int)

(assert (=> bs!1119420 (= (= lt!1893302 lt!1893065) (= lambda!216993 lambda!216874))))

(declare-fun bs!1119421 () Bool)

(assert (= bs!1119421 (and d!1507846 d!1507436)))

(assert (=> bs!1119421 (= (= lt!1893302 lt!1893313) (= lambda!216993 lambda!216936))))

(declare-fun bs!1119422 () Bool)

(assert (= bs!1119422 (and d!1507846 d!1507798)))

(assert (=> bs!1119422 (= (= lt!1893302 lt!1893564) (= lambda!216993 lambda!216992))))

(declare-fun bs!1119423 () Bool)

(assert (= bs!1119423 (and d!1507846 d!1507074)))

(assert (=> bs!1119423 (not (= lambda!216993 lambda!216840))))

(declare-fun bs!1119424 () Bool)

(assert (= bs!1119424 (and d!1507846 b!4729490)))

(assert (=> bs!1119424 (= (= lt!1893302 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216993 lambda!216933))))

(declare-fun bs!1119425 () Bool)

(assert (= bs!1119425 (and d!1507846 d!1507456)))

(assert (=> bs!1119425 (= (= lt!1893302 lt!1893054) (= lambda!216993 lambda!216941))))

(declare-fun bs!1119426 () Bool)

(assert (= bs!1119426 (and d!1507846 b!4729915)))

(assert (=> bs!1119426 (= (= lt!1893302 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!216993 lambda!216988))))

(declare-fun bs!1119427 () Bool)

(assert (= bs!1119427 (and d!1507846 d!1507458)))

(assert (=> bs!1119427 (= (= lt!1893302 lt!1893368) (= lambda!216993 lambda!216945))))

(declare-fun bs!1119428 () Bool)

(assert (= bs!1119428 (and d!1507846 b!4729530)))

(assert (=> bs!1119428 (= (= lt!1893302 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!216993 lambda!216943))))

(declare-fun bs!1119429 () Bool)

(assert (= bs!1119429 (and d!1507846 d!1507466)))

(assert (=> bs!1119429 (= (= lt!1893302 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216993 lambda!216949))))

(declare-fun bs!1119430 () Bool)

(assert (= bs!1119430 (and d!1507846 b!4729039)))

(assert (=> bs!1119430 (= (= lt!1893302 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216993 lambda!216871))))

(declare-fun bs!1119431 () Bool)

(assert (= bs!1119431 (and d!1507846 b!4729036)))

(assert (=> bs!1119431 (= (= lt!1893302 lt!1893054) (= lambda!216993 lambda!216873))))

(declare-fun bs!1119432 () Bool)

(assert (= bs!1119432 (and d!1507846 d!1507116)))

(assert (=> bs!1119432 (not (= lambda!216993 lambda!216876))))

(declare-fun bs!1119433 () Bool)

(assert (= bs!1119433 (and d!1507846 b!4729487)))

(assert (=> bs!1119433 (= lambda!216993 lambda!216935)))

(assert (=> bs!1119428 (= (= lt!1893302 lt!1893357) (= lambda!216993 lambda!216944))))

(declare-fun bs!1119434 () Bool)

(assert (= bs!1119434 (and d!1507846 b!4729912)))

(assert (=> bs!1119434 (= (= lt!1893302 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!216993 lambda!216989))))

(assert (=> bs!1119433 (= (= lt!1893302 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!216993 lambda!216934))))

(assert (=> bs!1119431 (= (= lt!1893302 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!216993 lambda!216872))))

(declare-fun bs!1119435 () Bool)

(assert (= bs!1119435 (and d!1507846 b!4729533)))

(assert (=> bs!1119435 (= (= lt!1893302 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!216993 lambda!216942))))

(assert (=> bs!1119434 (= (= lt!1893302 lt!1893553) (= lambda!216993 lambda!216990))))

(assert (=> d!1507846 true))

(assert (=> d!1507846 (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lambda!216993)))

(declare-fun lt!1893589 () Unit!131227)

(assert (=> d!1507846 (= lt!1893589 (choose!33441 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893302 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (_2!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1507846 (forall!11627 (toList!5954 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (tuple2!54523 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (_2!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))) lambda!216993)))

(assert (=> d!1507846 (= (addForallContainsKeyThenBeforeAdding!807 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893302 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (_2!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) lt!1893589)))

(declare-fun bs!1119436 () Bool)

(assert (= bs!1119436 d!1507846))

(declare-fun m!5671473 () Bool)

(assert (=> bs!1119436 m!5671473))

(assert (=> bs!1119436 m!5669683))

(declare-fun m!5671475 () Bool)

(assert (=> bs!1119436 m!5671475))

(assert (=> bs!1119436 m!5669683))

(declare-fun m!5671477 () Bool)

(assert (=> bs!1119436 m!5671477))

(declare-fun m!5671479 () Bool)

(assert (=> bs!1119436 m!5671479))

(assert (=> b!4729487 d!1507846))

(declare-fun d!1507854 () Bool)

(declare-fun e!2950212 () Bool)

(assert (=> d!1507854 e!2950212))

(declare-fun res!2002325 () Bool)

(assert (=> d!1507854 (=> (not res!2002325) (not e!2950212))))

(declare-fun lt!1893601 () ListMap!5317)

(assert (=> d!1507854 (= res!2002325 (contains!16239 lt!1893601 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893600 () List!53002)

(assert (=> d!1507854 (= lt!1893601 (ListMap!5318 lt!1893600))))

(declare-fun lt!1893599 () Unit!131227)

(declare-fun lt!1893598 () Unit!131227)

(assert (=> d!1507854 (= lt!1893599 lt!1893598)))

(assert (=> d!1507854 (= (getValueByKey!1978 lt!1893600 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (Some!12391 (_2!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1507854 (= lt!1893598 (lemmaContainsTupThenGetReturnValue!1096 lt!1893600 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (_2!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1507854 (= lt!1893600 (insertNoDuplicatedKeys!604 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (_2!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1507854 (= (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893601)))

(declare-fun b!4729990 () Bool)

(declare-fun res!2002326 () Bool)

(assert (=> b!4729990 (=> (not res!2002326) (not e!2950212))))

(assert (=> b!4729990 (= res!2002326 (= (getValueByKey!1978 (toList!5954 lt!1893601) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (Some!12391 (_2!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun b!4729991 () Bool)

(assert (=> b!4729991 (= e!2950212 (contains!16242 (toList!5954 lt!1893601) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (= (and d!1507854 res!2002325) b!4729990))

(assert (= (and b!4729990 res!2002326) b!4729991))

(declare-fun m!5671481 () Bool)

(assert (=> d!1507854 m!5671481))

(declare-fun m!5671483 () Bool)

(assert (=> d!1507854 m!5671483))

(declare-fun m!5671487 () Bool)

(assert (=> d!1507854 m!5671487))

(declare-fun m!5671491 () Bool)

(assert (=> d!1507854 m!5671491))

(declare-fun m!5671493 () Bool)

(assert (=> b!4729990 m!5671493))

(declare-fun m!5671497 () Bool)

(assert (=> b!4729991 m!5671497))

(assert (=> b!4729487 d!1507854))

(declare-fun d!1507856 () Bool)

(declare-fun res!2002327 () Bool)

(declare-fun e!2950213 () Bool)

(assert (=> d!1507856 (=> res!2002327 e!2950213)))

(assert (=> d!1507856 (= res!2002327 ((_ is Nil!52878) (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1507856 (= (forall!11627 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lambda!216935) e!2950213)))

(declare-fun b!4729992 () Bool)

(declare-fun e!2950214 () Bool)

(assert (=> b!4729992 (= e!2950213 e!2950214)))

(declare-fun res!2002328 () Bool)

(assert (=> b!4729992 (=> (not res!2002328) (not e!2950214))))

(assert (=> b!4729992 (= res!2002328 (dynLambda!21841 lambda!216935 (h!59237 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun b!4729993 () Bool)

(assert (=> b!4729993 (= e!2950214 (forall!11627 (t!360278 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lambda!216935))))

(assert (= (and d!1507856 (not res!2002327)) b!4729992))

(assert (= (and b!4729992 res!2002328) b!4729993))

(declare-fun b_lambda!180211 () Bool)

(assert (=> (not b_lambda!180211) (not b!4729992)))

(declare-fun m!5671511 () Bool)

(assert (=> b!4729992 m!5671511))

(declare-fun m!5671513 () Bool)

(assert (=> b!4729993 m!5671513))

(assert (=> b!4729487 d!1507856))

(declare-fun d!1507860 () Bool)

(declare-fun res!2002329 () Bool)

(declare-fun e!2950215 () Bool)

(assert (=> d!1507860 (=> res!2002329 e!2950215)))

(assert (=> d!1507860 (= res!2002329 ((_ is Nil!52878) (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1507860 (= (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lambda!216934) e!2950215)))

(declare-fun b!4729994 () Bool)

(declare-fun e!2950216 () Bool)

(assert (=> b!4729994 (= e!2950215 e!2950216)))

(declare-fun res!2002330 () Bool)

(assert (=> b!4729994 (=> (not res!2002330) (not e!2950216))))

(assert (=> b!4729994 (= res!2002330 (dynLambda!21841 lambda!216934 (h!59237 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun b!4729995 () Bool)

(assert (=> b!4729995 (= e!2950216 (forall!11627 (t!360278 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) lambda!216934))))

(assert (= (and d!1507860 (not res!2002329)) b!4729994))

(assert (= (and b!4729994 res!2002330) b!4729995))

(declare-fun b_lambda!180213 () Bool)

(assert (=> (not b_lambda!180213) (not b!4729994)))

(declare-fun m!5671517 () Bool)

(assert (=> b!4729994 m!5671517))

(declare-fun m!5671519 () Bool)

(assert (=> b!4729995 m!5671519))

(assert (=> b!4729487 d!1507860))

(declare-fun d!1507866 () Bool)

(assert (=> d!1507866 (dynLambda!21841 lambda!216935 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(declare-fun lt!1893602 () Unit!131227)

(assert (=> d!1507866 (= lt!1893602 (choose!33440 (toList!5954 lt!1893299) lambda!216935 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun e!2950219 () Bool)

(assert (=> d!1507866 e!2950219))

(declare-fun res!2002333 () Bool)

(assert (=> d!1507866 (=> (not res!2002333) (not e!2950219))))

(assert (=> d!1507866 (= res!2002333 (forall!11627 (toList!5954 lt!1893299) lambda!216935))))

(assert (=> d!1507866 (= (forallContained!3667 (toList!5954 lt!1893299) lambda!216935 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893602)))

(declare-fun b!4729998 () Bool)

(assert (=> b!4729998 (= e!2950219 (contains!16242 (toList!5954 lt!1893299) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (= (and d!1507866 res!2002333) b!4729998))

(declare-fun b_lambda!180217 () Bool)

(assert (=> (not b_lambda!180217) (not d!1507866)))

(declare-fun m!5671525 () Bool)

(assert (=> d!1507866 m!5671525))

(declare-fun m!5671527 () Bool)

(assert (=> d!1507866 m!5671527))

(assert (=> d!1507866 m!5670423))

(declare-fun m!5671529 () Bool)

(assert (=> b!4729998 m!5671529))

(assert (=> b!4729487 d!1507866))

(declare-fun d!1507870 () Bool)

(declare-fun res!2002336 () Bool)

(declare-fun e!2950222 () Bool)

(assert (=> d!1507870 (=> res!2002336 e!2950222)))

(assert (=> d!1507870 (= res!2002336 ((_ is Nil!52878) (toList!5954 lt!1893299)))))

(assert (=> d!1507870 (= (forall!11627 (toList!5954 lt!1893299) lambda!216935) e!2950222)))

(declare-fun b!4730001 () Bool)

(declare-fun e!2950223 () Bool)

(assert (=> b!4730001 (= e!2950222 e!2950223)))

(declare-fun res!2002337 () Bool)

(assert (=> b!4730001 (=> (not res!2002337) (not e!2950223))))

(assert (=> b!4730001 (= res!2002337 (dynLambda!21841 lambda!216935 (h!59237 (toList!5954 lt!1893299))))))

(declare-fun b!4730002 () Bool)

(assert (=> b!4730002 (= e!2950223 (forall!11627 (t!360278 (toList!5954 lt!1893299)) lambda!216935))))

(assert (= (and d!1507870 (not res!2002336)) b!4730001))

(assert (= (and b!4730001 res!2002337) b!4730002))

(declare-fun b_lambda!180219 () Bool)

(assert (=> (not b_lambda!180219) (not b!4730001)))

(declare-fun m!5671533 () Bool)

(assert (=> b!4730001 m!5671533))

(declare-fun m!5671535 () Bool)

(assert (=> b!4730002 m!5671535))

(assert (=> b!4729487 d!1507870))

(declare-fun d!1507874 () Bool)

(declare-fun e!2950227 () Bool)

(assert (=> d!1507874 e!2950227))

(declare-fun res!2002340 () Bool)

(assert (=> d!1507874 (=> res!2002340 e!2950227)))

(declare-fun e!2950228 () Bool)

(assert (=> d!1507874 (= res!2002340 e!2950228)))

(declare-fun res!2002338 () Bool)

(assert (=> d!1507874 (=> (not res!2002338) (not e!2950228))))

(declare-fun lt!1893603 () Bool)

(assert (=> d!1507874 (= res!2002338 (not lt!1893603))))

(declare-fun lt!1893606 () Bool)

(assert (=> d!1507874 (= lt!1893603 lt!1893606)))

(declare-fun lt!1893608 () Unit!131227)

(declare-fun e!2950226 () Unit!131227)

(assert (=> d!1507874 (= lt!1893608 e!2950226)))

(declare-fun c!807794 () Bool)

(assert (=> d!1507874 (= c!807794 lt!1893606)))

(assert (=> d!1507874 (= lt!1893606 (containsKey!3406 (toList!5954 lt!1893302) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1507874 (= (contains!16239 lt!1893302 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) lt!1893603)))

(declare-fun b!4730003 () Bool)

(assert (=> b!4730003 false))

(declare-fun lt!1893607 () Unit!131227)

(declare-fun lt!1893604 () Unit!131227)

(assert (=> b!4730003 (= lt!1893607 lt!1893604)))

(assert (=> b!4730003 (containsKey!3406 (toList!5954 lt!1893302) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> b!4730003 (= lt!1893604 (lemmaInGetKeysListThenContainsKey!962 (toList!5954 lt!1893302) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun e!2950224 () Unit!131227)

(declare-fun Unit!131355 () Unit!131227)

(assert (=> b!4730003 (= e!2950224 Unit!131355)))

(declare-fun b!4730004 () Bool)

(declare-fun Unit!131356 () Unit!131227)

(assert (=> b!4730004 (= e!2950224 Unit!131356)))

(declare-fun b!4730005 () Bool)

(declare-fun e!2950225 () List!53005)

(assert (=> b!4730005 (= e!2950225 (getKeysList!963 (toList!5954 lt!1893302)))))

(declare-fun b!4730006 () Bool)

(declare-fun e!2950229 () Bool)

(assert (=> b!4730006 (= e!2950229 (contains!16243 (keys!19004 lt!1893302) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun b!4730007 () Bool)

(declare-fun lt!1893610 () Unit!131227)

(assert (=> b!4730007 (= e!2950226 lt!1893610)))

(declare-fun lt!1893605 () Unit!131227)

(assert (=> b!4730007 (= lt!1893605 (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 lt!1893302) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> b!4730007 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893302) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893609 () Unit!131227)

(assert (=> b!4730007 (= lt!1893609 lt!1893605)))

(assert (=> b!4730007 (= lt!1893610 (lemmaInListThenGetKeysListContains!958 (toList!5954 lt!1893302) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun call!330847 () Bool)

(assert (=> b!4730007 call!330847))

(declare-fun bm!330842 () Bool)

(assert (=> bm!330842 (= call!330847 (contains!16243 e!2950225 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun c!807795 () Bool)

(assert (=> bm!330842 (= c!807795 c!807794)))

(declare-fun b!4730008 () Bool)

(assert (=> b!4730008 (= e!2950225 (keys!19004 lt!1893302))))

(declare-fun b!4730009 () Bool)

(assert (=> b!4730009 (= e!2950226 e!2950224)))

(declare-fun c!807793 () Bool)

(assert (=> b!4730009 (= c!807793 call!330847)))

(declare-fun b!4730010 () Bool)

(assert (=> b!4730010 (= e!2950227 e!2950229)))

(declare-fun res!2002339 () Bool)

(assert (=> b!4730010 (=> (not res!2002339) (not e!2950229))))

(assert (=> b!4730010 (= res!2002339 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893302) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun b!4730011 () Bool)

(assert (=> b!4730011 (= e!2950228 (not (contains!16243 (keys!19004 lt!1893302) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(assert (= (and d!1507874 c!807794) b!4730007))

(assert (= (and d!1507874 (not c!807794)) b!4730009))

(assert (= (and b!4730009 c!807793) b!4730003))

(assert (= (and b!4730009 (not c!807793)) b!4730004))

(assert (= (or b!4730007 b!4730009) bm!330842))

(assert (= (and bm!330842 c!807795) b!4730005))

(assert (= (and bm!330842 (not c!807795)) b!4730008))

(assert (= (and d!1507874 res!2002338) b!4730011))

(assert (= (and d!1507874 (not res!2002340)) b!4730010))

(assert (= (and b!4730010 res!2002339) b!4730006))

(declare-fun m!5671537 () Bool)

(assert (=> b!4730005 m!5671537))

(declare-fun m!5671539 () Bool)

(assert (=> b!4730003 m!5671539))

(declare-fun m!5671541 () Bool)

(assert (=> b!4730003 m!5671541))

(declare-fun m!5671543 () Bool)

(assert (=> bm!330842 m!5671543))

(declare-fun m!5671545 () Bool)

(assert (=> b!4730010 m!5671545))

(assert (=> b!4730010 m!5671545))

(declare-fun m!5671547 () Bool)

(assert (=> b!4730010 m!5671547))

(declare-fun m!5671549 () Bool)

(assert (=> b!4730006 m!5671549))

(assert (=> b!4730006 m!5671549))

(declare-fun m!5671551 () Bool)

(assert (=> b!4730006 m!5671551))

(assert (=> d!1507874 m!5671539))

(declare-fun m!5671553 () Bool)

(assert (=> b!4730007 m!5671553))

(assert (=> b!4730007 m!5671545))

(assert (=> b!4730007 m!5671545))

(assert (=> b!4730007 m!5671547))

(declare-fun m!5671555 () Bool)

(assert (=> b!4730007 m!5671555))

(assert (=> b!4730011 m!5671549))

(assert (=> b!4730011 m!5671549))

(assert (=> b!4730011 m!5671551))

(assert (=> b!4730008 m!5671549))

(assert (=> b!4729487 d!1507874))

(declare-fun d!1507878 () Bool)

(declare-fun res!2002344 () Bool)

(declare-fun e!2950231 () Bool)

(assert (=> d!1507878 (=> res!2002344 e!2950231)))

(assert (=> d!1507878 (= res!2002344 ((_ is Nil!52878) (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (=> d!1507878 (= (forall!11627 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))) lambda!216935) e!2950231)))

(declare-fun b!4730015 () Bool)

(declare-fun e!2950232 () Bool)

(assert (=> b!4730015 (= e!2950231 e!2950232)))

(declare-fun res!2002345 () Bool)

(assert (=> b!4730015 (=> (not res!2002345) (not e!2950232))))

(assert (=> b!4730015 (= res!2002345 (dynLambda!21841 lambda!216935 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4730016 () Bool)

(assert (=> b!4730016 (= e!2950232 (forall!11627 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lambda!216935))))

(assert (= (and d!1507878 (not res!2002344)) b!4730015))

(assert (= (and b!4730015 res!2002345) b!4730016))

(declare-fun b_lambda!180221 () Bool)

(assert (=> (not b_lambda!180221) (not b!4730015)))

(assert (=> b!4730015 m!5671525))

(assert (=> b!4730016 m!5670431))

(assert (=> b!4729487 d!1507878))

(declare-fun d!1507880 () Bool)

(declare-fun res!2002346 () Bool)

(declare-fun e!2950233 () Bool)

(assert (=> d!1507880 (=> res!2002346 e!2950233)))

(assert (=> d!1507880 (= res!2002346 (not ((_ is Cons!52878) (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> d!1507880 (= (noDuplicateKeys!2032 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))) e!2950233)))

(declare-fun b!4730017 () Bool)

(declare-fun e!2950234 () Bool)

(assert (=> b!4730017 (= e!2950233 e!2950234)))

(declare-fun res!2002347 () Bool)

(assert (=> b!4730017 (=> (not res!2002347) (not e!2950234))))

(assert (=> b!4730017 (= res!2002347 (not (containsKey!3402 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))))

(declare-fun b!4730018 () Bool)

(assert (=> b!4730018 (= e!2950234 (noDuplicateKeys!2032 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(assert (= (and d!1507880 (not res!2002346)) b!4730017))

(assert (= (and b!4730017 res!2002347) b!4730018))

(declare-fun m!5671557 () Bool)

(assert (=> b!4730017 m!5671557))

(declare-fun m!5671559 () Bool)

(assert (=> b!4730018 m!5671559))

(assert (=> bs!1119045 d!1507880))

(declare-fun d!1507882 () Bool)

(declare-fun res!2002348 () Bool)

(declare-fun e!2950235 () Bool)

(assert (=> d!1507882 (=> res!2002348 e!2950235)))

(assert (=> d!1507882 (= res!2002348 (not ((_ is Cons!52878) (_2!30556 (h!59238 (t!360279 lt!1892767))))))))

(assert (=> d!1507882 (= (noDuplicateKeys!2032 (_2!30556 (h!59238 (t!360279 lt!1892767)))) e!2950235)))

(declare-fun b!4730019 () Bool)

(declare-fun e!2950236 () Bool)

(assert (=> b!4730019 (= e!2950235 e!2950236)))

(declare-fun res!2002349 () Bool)

(assert (=> b!4730019 (=> (not res!2002349) (not e!2950236))))

(assert (=> b!4730019 (= res!2002349 (not (containsKey!3402 (t!360278 (_2!30556 (h!59238 (t!360279 lt!1892767)))) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 lt!1892767))))))))))

(declare-fun b!4730020 () Bool)

(assert (=> b!4730020 (= e!2950236 (noDuplicateKeys!2032 (t!360278 (_2!30556 (h!59238 (t!360279 lt!1892767))))))))

(assert (= (and d!1507882 (not res!2002348)) b!4730019))

(assert (= (and b!4730019 res!2002349) b!4730020))

(declare-fun m!5671561 () Bool)

(assert (=> b!4730019 m!5671561))

(declare-fun m!5671563 () Bool)

(assert (=> b!4730020 m!5671563))

(assert (=> bs!1119040 d!1507882))

(declare-fun d!1507884 () Bool)

(declare-fun res!2002350 () Bool)

(declare-fun e!2950237 () Bool)

(assert (=> d!1507884 (=> res!2002350 e!2950237)))

(assert (=> d!1507884 (= res!2002350 (and ((_ is Cons!52878) (t!360278 (t!360278 oldBucket!34))) (= (_1!30555 (h!59237 (t!360278 (t!360278 oldBucket!34)))) (_1!30555 (h!59237 (t!360278 oldBucket!34))))))))

(assert (=> d!1507884 (= (containsKey!3402 (t!360278 (t!360278 oldBucket!34)) (_1!30555 (h!59237 (t!360278 oldBucket!34)))) e!2950237)))

(declare-fun b!4730021 () Bool)

(declare-fun e!2950238 () Bool)

(assert (=> b!4730021 (= e!2950237 e!2950238)))

(declare-fun res!2002351 () Bool)

(assert (=> b!4730021 (=> (not res!2002351) (not e!2950238))))

(assert (=> b!4730021 (= res!2002351 ((_ is Cons!52878) (t!360278 (t!360278 oldBucket!34))))))

(declare-fun b!4730022 () Bool)

(assert (=> b!4730022 (= e!2950238 (containsKey!3402 (t!360278 (t!360278 (t!360278 oldBucket!34))) (_1!30555 (h!59237 (t!360278 oldBucket!34)))))))

(assert (= (and d!1507884 (not res!2002350)) b!4730021))

(assert (= (and b!4730021 res!2002351) b!4730022))

(declare-fun m!5671565 () Bool)

(assert (=> b!4730022 m!5671565))

(assert (=> b!4729450 d!1507884))

(declare-fun d!1507886 () Bool)

(declare-fun res!2002352 () Bool)

(declare-fun e!2950239 () Bool)

(assert (=> d!1507886 (=> res!2002352 e!2950239)))

(assert (=> d!1507886 (= res!2002352 ((_ is Nil!52878) (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (=> d!1507886 (= (forall!11627 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))) lambda!216936) e!2950239)))

(declare-fun b!4730023 () Bool)

(declare-fun e!2950240 () Bool)

(assert (=> b!4730023 (= e!2950239 e!2950240)))

(declare-fun res!2002353 () Bool)

(assert (=> b!4730023 (=> (not res!2002353) (not e!2950240))))

(assert (=> b!4730023 (= res!2002353 (dynLambda!21841 lambda!216936 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4730024 () Bool)

(assert (=> b!4730024 (= e!2950240 (forall!11627 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lambda!216936))))

(assert (= (and d!1507886 (not res!2002352)) b!4730023))

(assert (= (and b!4730023 res!2002353) b!4730024))

(declare-fun b_lambda!180223 () Bool)

(assert (=> (not b_lambda!180223) (not b!4730023)))

(declare-fun m!5671577 () Bool)

(assert (=> b!4730023 m!5671577))

(declare-fun m!5671581 () Bool)

(assert (=> b!4730024 m!5671581))

(assert (=> d!1507436 d!1507886))

(declare-fun d!1507888 () Bool)

(declare-fun res!2002354 () Bool)

(declare-fun e!2950241 () Bool)

(assert (=> d!1507888 (=> res!2002354 e!2950241)))

(assert (=> d!1507888 (= res!2002354 (not ((_ is Cons!52878) (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1507888 (= (noDuplicateKeys!2032 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) e!2950241)))

(declare-fun b!4730025 () Bool)

(declare-fun e!2950242 () Bool)

(assert (=> b!4730025 (= e!2950241 e!2950242)))

(declare-fun res!2002355 () Bool)

(assert (=> b!4730025 (=> (not res!2002355) (not e!2950242))))

(assert (=> b!4730025 (= res!2002355 (not (containsKey!3402 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun b!4730026 () Bool)

(assert (=> b!4730026 (= e!2950242 (noDuplicateKeys!2032 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (= (and d!1507888 (not res!2002354)) b!4730025))

(assert (= (and b!4730025 res!2002355) b!4730026))

(declare-fun m!5671583 () Bool)

(assert (=> b!4730025 m!5671583))

(assert (=> b!4730026 m!5671403))

(assert (=> d!1507436 d!1507888))

(declare-fun d!1507892 () Bool)

(declare-fun res!2002359 () Bool)

(declare-fun e!2950249 () Bool)

(assert (=> d!1507892 (=> res!2002359 e!2950249)))

(assert (=> d!1507892 (= res!2002359 (not ((_ is Cons!52878) (_2!30556 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))))

(assert (=> d!1507892 (= (noDuplicateKeys!2032 (_2!30556 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))))) e!2950249)))

(declare-fun b!4730036 () Bool)

(declare-fun e!2950250 () Bool)

(assert (=> b!4730036 (= e!2950249 e!2950250)))

(declare-fun res!2002360 () Bool)

(assert (=> b!4730036 (=> (not res!2002360) (not e!2950250))))

(assert (=> b!4730036 (= res!2002360 (not (containsKey!3402 (t!360278 (_2!30556 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))))) (_1!30555 (h!59237 (_2!30556 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))))))

(declare-fun b!4730037 () Bool)

(assert (=> b!4730037 (= e!2950250 (noDuplicateKeys!2032 (t!360278 (_2!30556 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))))

(assert (= (and d!1507892 (not res!2002359)) b!4730036))

(assert (= (and b!4730036 res!2002360) b!4730037))

(declare-fun m!5671585 () Bool)

(assert (=> b!4730036 m!5671585))

(declare-fun m!5671587 () Bool)

(assert (=> b!4730037 m!5671587))

(assert (=> bs!1119037 d!1507892))

(declare-fun d!1507894 () Bool)

(assert (=> d!1507894 (= (isDefined!9645 (getValueByKey!1977 (toList!5953 lm!2023) (hash!4413 hashF!1323 key!4653))) (not (isEmpty!29198 (getValueByKey!1977 (toList!5953 lm!2023) (hash!4413 hashF!1323 key!4653)))))))

(declare-fun bs!1119461 () Bool)

(assert (= bs!1119461 d!1507894))

(assert (=> bs!1119461 m!5670365))

(declare-fun m!5671589 () Bool)

(assert (=> bs!1119461 m!5671589))

(assert (=> b!4729464 d!1507894))

(declare-fun b!4730038 () Bool)

(declare-fun e!2950251 () Option!12391)

(assert (=> b!4730038 (= e!2950251 (Some!12390 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))

(declare-fun b!4730041 () Bool)

(declare-fun e!2950252 () Option!12391)

(assert (=> b!4730041 (= e!2950252 None!12390)))

(declare-fun c!807799 () Bool)

(declare-fun d!1507896 () Bool)

(assert (=> d!1507896 (= c!807799 (and ((_ is Cons!52879) (toList!5953 lm!2023)) (= (_1!30556 (h!59238 (toList!5953 lm!2023))) (hash!4413 hashF!1323 key!4653))))))

(assert (=> d!1507896 (= (getValueByKey!1977 (toList!5953 lm!2023) (hash!4413 hashF!1323 key!4653)) e!2950251)))

(declare-fun b!4730039 () Bool)

(assert (=> b!4730039 (= e!2950251 e!2950252)))

(declare-fun c!807800 () Bool)

(assert (=> b!4730039 (= c!807800 (and ((_ is Cons!52879) (toList!5953 lm!2023)) (not (= (_1!30556 (h!59238 (toList!5953 lm!2023))) (hash!4413 hashF!1323 key!4653)))))))

(declare-fun b!4730040 () Bool)

(assert (=> b!4730040 (= e!2950252 (getValueByKey!1977 (t!360279 (toList!5953 lm!2023)) (hash!4413 hashF!1323 key!4653)))))

(assert (= (and d!1507896 c!807799) b!4730038))

(assert (= (and d!1507896 (not c!807799)) b!4730039))

(assert (= (and b!4730039 c!807800) b!4730040))

(assert (= (and b!4730039 (not c!807800)) b!4730041))

(assert (=> b!4730040 m!5669311))

(declare-fun m!5671607 () Bool)

(assert (=> b!4730040 m!5671607))

(assert (=> b!4729464 d!1507896))

(assert (=> bs!1119042 d!1507350))

(declare-fun bs!1119462 () Bool)

(declare-fun d!1507900 () Bool)

(assert (= bs!1119462 (and d!1507900 d!1507090)))

(declare-fun lambda!216996 () Int)

(assert (=> bs!1119462 (not (= lambda!216996 lambda!216874))))

(declare-fun bs!1119463 () Bool)

(assert (= bs!1119463 (and d!1507900 d!1507436)))

(assert (=> bs!1119463 (not (= lambda!216996 lambda!216936))))

(declare-fun bs!1119464 () Bool)

(assert (= bs!1119464 (and d!1507900 d!1507798)))

(assert (=> bs!1119464 (not (= lambda!216996 lambda!216992))))

(declare-fun bs!1119465 () Bool)

(assert (= bs!1119465 (and d!1507900 d!1507074)))

(assert (=> bs!1119465 (= (= (_1!30556 (h!59238 (toList!5953 lm!2023))) hash!405) (= lambda!216996 lambda!216840))))

(declare-fun bs!1119466 () Bool)

(assert (= bs!1119466 (and d!1507900 b!4729490)))

(assert (=> bs!1119466 (not (= lambda!216996 lambda!216933))))

(declare-fun bs!1119467 () Bool)

(assert (= bs!1119467 (and d!1507900 d!1507456)))

(assert (=> bs!1119467 (not (= lambda!216996 lambda!216941))))

(declare-fun bs!1119468 () Bool)

(assert (= bs!1119468 (and d!1507900 b!4729915)))

(assert (=> bs!1119468 (not (= lambda!216996 lambda!216988))))

(declare-fun bs!1119469 () Bool)

(assert (= bs!1119469 (and d!1507900 d!1507458)))

(assert (=> bs!1119469 (not (= lambda!216996 lambda!216945))))

(declare-fun bs!1119470 () Bool)

(assert (= bs!1119470 (and d!1507900 b!4729530)))

(assert (=> bs!1119470 (not (= lambda!216996 lambda!216943))))

(declare-fun bs!1119471 () Bool)

(assert (= bs!1119471 (and d!1507900 d!1507466)))

(assert (=> bs!1119471 (not (= lambda!216996 lambda!216949))))

(declare-fun bs!1119472 () Bool)

(assert (= bs!1119472 (and d!1507900 b!4729039)))

(assert (=> bs!1119472 (not (= lambda!216996 lambda!216871))))

(declare-fun bs!1119473 () Bool)

(assert (= bs!1119473 (and d!1507900 b!4729036)))

(assert (=> bs!1119473 (not (= lambda!216996 lambda!216873))))

(declare-fun bs!1119474 () Bool)

(assert (= bs!1119474 (and d!1507900 d!1507116)))

(assert (=> bs!1119474 (= (= (_1!30556 (h!59238 (toList!5953 lm!2023))) hash!405) (= lambda!216996 lambda!216876))))

(declare-fun bs!1119475 () Bool)

(assert (= bs!1119475 (and d!1507900 b!4729487)))

(assert (=> bs!1119475 (not (= lambda!216996 lambda!216935))))

(assert (=> bs!1119470 (not (= lambda!216996 lambda!216944))))

(assert (=> bs!1119475 (not (= lambda!216996 lambda!216934))))

(assert (=> bs!1119473 (not (= lambda!216996 lambda!216872))))

(declare-fun bs!1119476 () Bool)

(assert (= bs!1119476 (and d!1507900 b!4729533)))

(assert (=> bs!1119476 (not (= lambda!216996 lambda!216942))))

(declare-fun bs!1119477 () Bool)

(assert (= bs!1119477 (and d!1507900 b!4729912)))

(assert (=> bs!1119477 (not (= lambda!216996 lambda!216990))))

(declare-fun bs!1119478 () Bool)

(assert (= bs!1119478 (and d!1507900 d!1507846)))

(assert (=> bs!1119478 (not (= lambda!216996 lambda!216993))))

(assert (=> bs!1119477 (not (= lambda!216996 lambda!216989))))

(assert (=> d!1507900 true))

(assert (=> d!1507900 true))

(assert (=> d!1507900 (= (allKeysSameHash!1858 (_2!30556 (h!59238 (toList!5953 lm!2023))) (_1!30556 (h!59238 (toList!5953 lm!2023))) hashF!1323) (forall!11627 (_2!30556 (h!59238 (toList!5953 lm!2023))) lambda!216996))))

(declare-fun bs!1119479 () Bool)

(assert (= bs!1119479 d!1507900))

(declare-fun m!5671617 () Bool)

(assert (=> bs!1119479 m!5671617))

(assert (=> bs!1119032 d!1507900))

(declare-fun b!4730046 () Bool)

(declare-fun e!2950257 () Option!12391)

(assert (=> b!4730046 (= e!2950257 (Some!12390 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))

(declare-fun b!4730049 () Bool)

(declare-fun e!2950258 () Option!12391)

(assert (=> b!4730049 (= e!2950258 None!12390)))

(declare-fun d!1507906 () Bool)

(declare-fun c!807801 () Bool)

(assert (=> d!1507906 (= c!807801 (and ((_ is Cons!52879) (t!360279 (toList!5953 lm!2023))) (= (_1!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))) lt!1892762)))))

(assert (=> d!1507906 (= (getValueByKey!1977 (t!360279 (toList!5953 lm!2023)) lt!1892762) e!2950257)))

(declare-fun b!4730047 () Bool)

(assert (=> b!4730047 (= e!2950257 e!2950258)))

(declare-fun c!807802 () Bool)

(assert (=> b!4730047 (= c!807802 (and ((_ is Cons!52879) (t!360279 (toList!5953 lm!2023))) (not (= (_1!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))) lt!1892762))))))

(declare-fun b!4730048 () Bool)

(assert (=> b!4730048 (= e!2950258 (getValueByKey!1977 (t!360279 (t!360279 (toList!5953 lm!2023))) lt!1892762))))

(assert (= (and d!1507906 c!807801) b!4730046))

(assert (= (and d!1507906 (not c!807801)) b!4730047))

(assert (= (and b!4730047 c!807802) b!4730048))

(assert (= (and b!4730047 (not c!807802)) b!4730049))

(declare-fun m!5671619 () Bool)

(assert (=> b!4730048 m!5671619))

(assert (=> b!4729350 d!1507906))

(declare-fun d!1507908 () Bool)

(assert (=> d!1507908 (= (isDefined!9642 lt!1893284) (not (isEmpty!29195 lt!1893284)))))

(declare-fun bs!1119480 () Bool)

(assert (= bs!1119480 d!1507908))

(assert (=> bs!1119480 m!5670355))

(assert (=> b!4729461 d!1507908))

(declare-fun d!1507910 () Bool)

(declare-fun lt!1893620 () Bool)

(assert (=> d!1507910 (= lt!1893620 (select (content!9422 (keys!19004 lt!1893051)) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun e!2950260 () Bool)

(assert (=> d!1507910 (= lt!1893620 e!2950260)))

(declare-fun res!2002366 () Bool)

(assert (=> d!1507910 (=> (not res!2002366) (not e!2950260))))

(assert (=> d!1507910 (= res!2002366 ((_ is Cons!52881) (keys!19004 lt!1893051)))))

(assert (=> d!1507910 (= (contains!16243 (keys!19004 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893620)))

(declare-fun b!4730050 () Bool)

(declare-fun e!2950259 () Bool)

(assert (=> b!4730050 (= e!2950260 e!2950259)))

(declare-fun res!2002365 () Bool)

(assert (=> b!4730050 (=> res!2002365 e!2950259)))

(assert (=> b!4730050 (= res!2002365 (= (h!59242 (keys!19004 lt!1893051)) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4730051 () Bool)

(assert (=> b!4730051 (= e!2950259 (contains!16243 (t!360281 (keys!19004 lt!1893051)) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (= (and d!1507910 res!2002366) b!4730050))

(assert (= (and b!4730050 (not res!2002365)) b!4730051))

(assert (=> d!1507910 m!5670515))

(declare-fun m!5671621 () Bool)

(assert (=> d!1507910 m!5671621))

(declare-fun m!5671623 () Bool)

(assert (=> d!1507910 m!5671623))

(declare-fun m!5671625 () Bool)

(assert (=> b!4730051 m!5671625))

(assert (=> b!4729519 d!1507910))

(declare-fun bs!1119482 () Bool)

(declare-fun b!4730053 () Bool)

(assert (= bs!1119482 (and b!4730053 b!4729894)))

(declare-fun lambda!216997 () Int)

(assert (=> bs!1119482 (= (= (toList!5954 lt!1893051) (toList!5954 lt!1893054)) (= lambda!216997 lambda!216984))))

(declare-fun bs!1119483 () Bool)

(assert (= bs!1119483 (and b!4730053 b!4729446)))

(assert (=> bs!1119483 (= (= (toList!5954 lt!1893051) (toList!5954 lt!1892771)) (= lambda!216997 lambda!216931))))

(declare-fun bs!1119484 () Bool)

(assert (= bs!1119484 (and b!4730053 b!4729391)))

(assert (=> bs!1119484 (= (= (toList!5954 lt!1893051) (toList!5954 lt!1892771)) (= lambda!216997 lambda!216925))))

(declare-fun bs!1119485 () Bool)

(assert (= bs!1119485 (and b!4730053 b!4729394)))

(assert (=> bs!1119485 (= (= (toList!5954 lt!1893051) (t!360278 (toList!5954 lt!1892771))) (= lambda!216997 lambda!216923))))

(declare-fun bs!1119486 () Bool)

(assert (= bs!1119486 (and b!4730053 b!4729390)))

(assert (=> bs!1119486 (= (= (toList!5954 lt!1893051) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!216997 lambda!216924))))

(assert (=> b!4730053 true))

(declare-fun bs!1119487 () Bool)

(declare-fun b!4730054 () Bool)

(assert (= bs!1119487 (and b!4730054 b!4729397)))

(declare-fun lambda!216998 () Int)

(assert (=> bs!1119487 (= lambda!216998 lambda!216926)))

(declare-fun bs!1119488 () Bool)

(assert (= bs!1119488 (and b!4730054 b!4729447)))

(assert (=> bs!1119488 (= lambda!216998 lambda!216932)))

(declare-fun bs!1119489 () Bool)

(assert (= bs!1119489 (and b!4730054 b!4729895)))

(assert (=> bs!1119489 (= lambda!216998 lambda!216985)))

(declare-fun d!1507912 () Bool)

(declare-fun e!2950261 () Bool)

(assert (=> d!1507912 e!2950261))

(declare-fun res!2002369 () Bool)

(assert (=> d!1507912 (=> (not res!2002369) (not e!2950261))))

(declare-fun lt!1893621 () List!53005)

(assert (=> d!1507912 (= res!2002369 (noDuplicate!869 lt!1893621))))

(assert (=> d!1507912 (= lt!1893621 (getKeysList!963 (toList!5954 lt!1893051)))))

(assert (=> d!1507912 (= (keys!19004 lt!1893051) lt!1893621)))

(declare-fun b!4730052 () Bool)

(declare-fun res!2002368 () Bool)

(assert (=> b!4730052 (=> (not res!2002368) (not e!2950261))))

(assert (=> b!4730052 (= res!2002368 (= (length!594 lt!1893621) (length!595 (toList!5954 lt!1893051))))))

(declare-fun res!2002367 () Bool)

(assert (=> b!4730053 (=> (not res!2002367) (not e!2950261))))

(assert (=> b!4730053 (= res!2002367 (forall!11629 lt!1893621 lambda!216997))))

(assert (=> b!4730054 (= e!2950261 (= (content!9422 lt!1893621) (content!9422 (map!11698 (toList!5954 lt!1893051) lambda!216998))))))

(assert (= (and d!1507912 res!2002369) b!4730052))

(assert (= (and b!4730052 res!2002368) b!4730053))

(assert (= (and b!4730053 res!2002367) b!4730054))

(declare-fun m!5671631 () Bool)

(assert (=> d!1507912 m!5671631))

(assert (=> d!1507912 m!5670503))

(declare-fun m!5671633 () Bool)

(assert (=> b!4730052 m!5671633))

(declare-fun m!5671635 () Bool)

(assert (=> b!4730052 m!5671635))

(declare-fun m!5671641 () Bool)

(assert (=> b!4730053 m!5671641))

(declare-fun m!5671643 () Bool)

(assert (=> b!4730054 m!5671643))

(declare-fun m!5671645 () Bool)

(assert (=> b!4730054 m!5671645))

(assert (=> b!4730054 m!5671645))

(declare-fun m!5671649 () Bool)

(assert (=> b!4730054 m!5671649))

(assert (=> b!4729519 d!1507912))

(declare-fun d!1507918 () Bool)

(declare-fun res!2002375 () Bool)

(declare-fun e!2950270 () Bool)

(assert (=> d!1507918 (=> res!2002375 e!2950270)))

(assert (=> d!1507918 (= res!2002375 ((_ is Nil!52878) (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> d!1507918 (= (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) lambda!216949) e!2950270)))

(declare-fun b!4730066 () Bool)

(declare-fun e!2950271 () Bool)

(assert (=> b!4730066 (= e!2950270 e!2950271)))

(declare-fun res!2002376 () Bool)

(assert (=> b!4730066 (=> (not res!2002376) (not e!2950271))))

(assert (=> b!4730066 (= res!2002376 (dynLambda!21841 lambda!216949 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))

(declare-fun b!4730067 () Bool)

(assert (=> b!4730067 (= e!2950271 (forall!11627 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) lambda!216949))))

(assert (= (and d!1507918 (not res!2002375)) b!4730066))

(assert (= (and b!4730066 res!2002376) b!4730067))

(declare-fun b_lambda!180233 () Bool)

(assert (=> (not b_lambda!180233) (not b!4730066)))

(declare-fun m!5671665 () Bool)

(assert (=> b!4730066 m!5671665))

(declare-fun m!5671667 () Bool)

(assert (=> b!4730067 m!5671667))

(assert (=> d!1507466 d!1507918))

(declare-fun bs!1119512 () Bool)

(declare-fun d!1507922 () Bool)

(assert (= bs!1119512 (and d!1507922 d!1507090)))

(declare-fun lambda!217002 () Int)

(assert (=> bs!1119512 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893065) (= lambda!217002 lambda!216874))))

(declare-fun bs!1119513 () Bool)

(assert (= bs!1119513 (and d!1507922 d!1507436)))

(assert (=> bs!1119513 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893313) (= lambda!217002 lambda!216936))))

(declare-fun bs!1119514 () Bool)

(assert (= bs!1119514 (and d!1507922 d!1507798)))

(assert (=> bs!1119514 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893564) (= lambda!217002 lambda!216992))))

(declare-fun bs!1119515 () Bool)

(assert (= bs!1119515 (and d!1507922 d!1507074)))

(assert (=> bs!1119515 (not (= lambda!217002 lambda!216840))))

(declare-fun bs!1119516 () Bool)

(assert (= bs!1119516 (and d!1507922 b!4729490)))

(assert (=> bs!1119516 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217002 lambda!216933))))

(declare-fun bs!1119517 () Bool)

(assert (= bs!1119517 (and d!1507922 d!1507456)))

(assert (=> bs!1119517 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893054) (= lambda!217002 lambda!216941))))

(declare-fun bs!1119518 () Bool)

(assert (= bs!1119518 (and d!1507922 b!4729915)))

(assert (=> bs!1119518 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217002 lambda!216988))))

(declare-fun bs!1119520 () Bool)

(assert (= bs!1119520 (and d!1507922 d!1507458)))

(assert (=> bs!1119520 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893368) (= lambda!217002 lambda!216945))))

(declare-fun bs!1119521 () Bool)

(assert (= bs!1119521 (and d!1507922 b!4729530)))

(assert (=> bs!1119521 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217002 lambda!216943))))

(declare-fun bs!1119522 () Bool)

(assert (= bs!1119522 (and d!1507922 d!1507466)))

(assert (=> bs!1119522 (= lambda!217002 lambda!216949)))

(declare-fun bs!1119523 () Bool)

(assert (= bs!1119523 (and d!1507922 b!4729039)))

(assert (=> bs!1119523 (= lambda!217002 lambda!216871)))

(declare-fun bs!1119524 () Bool)

(assert (= bs!1119524 (and d!1507922 b!4729036)))

(assert (=> bs!1119524 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893054) (= lambda!217002 lambda!216873))))

(declare-fun bs!1119525 () Bool)

(assert (= bs!1119525 (and d!1507922 d!1507116)))

(assert (=> bs!1119525 (not (= lambda!217002 lambda!216876))))

(assert (=> bs!1119521 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893357) (= lambda!217002 lambda!216944))))

(declare-fun bs!1119526 () Bool)

(assert (= bs!1119526 (and d!1507922 b!4729487)))

(assert (=> bs!1119526 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217002 lambda!216934))))

(assert (=> bs!1119524 (= lambda!217002 lambda!216872)))

(declare-fun bs!1119527 () Bool)

(assert (= bs!1119527 (and d!1507922 b!4729533)))

(assert (=> bs!1119527 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217002 lambda!216942))))

(declare-fun bs!1119528 () Bool)

(assert (= bs!1119528 (and d!1507922 b!4729912)))

(assert (=> bs!1119528 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893553) (= lambda!217002 lambda!216990))))

(assert (=> bs!1119526 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893302) (= lambda!217002 lambda!216935))))

(declare-fun bs!1119529 () Bool)

(assert (= bs!1119529 (and d!1507922 d!1507900)))

(assert (=> bs!1119529 (not (= lambda!217002 lambda!216996))))

(declare-fun bs!1119530 () Bool)

(assert (= bs!1119530 (and d!1507922 d!1507846)))

(assert (=> bs!1119530 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893302) (= lambda!217002 lambda!216993))))

(assert (=> bs!1119528 (= (= (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217002 lambda!216989))))

(assert (=> d!1507922 true))

(assert (=> d!1507922 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) lambda!217002)))

(assert (=> d!1507922 true))

(declare-fun _$58!740 () Unit!131227)

(assert (=> d!1507922 (= (choose!33442 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) _$58!740)))

(declare-fun bs!1119531 () Bool)

(assert (= bs!1119531 d!1507922))

(declare-fun m!5671719 () Bool)

(assert (=> bs!1119531 m!5671719))

(assert (=> d!1507466 d!1507922))

(declare-fun d!1507936 () Bool)

(declare-fun res!2002390 () Bool)

(declare-fun e!2950287 () Bool)

(assert (=> d!1507936 (=> res!2002390 e!2950287)))

(assert (=> d!1507936 (= res!2002390 ((_ is Nil!52878) (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> d!1507936 (= (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) lambda!216944) e!2950287)))

(declare-fun b!4730087 () Bool)

(declare-fun e!2950288 () Bool)

(assert (=> b!4730087 (= e!2950287 e!2950288)))

(declare-fun res!2002391 () Bool)

(assert (=> b!4730087 (=> (not res!2002391) (not e!2950288))))

(assert (=> b!4730087 (= res!2002391 (dynLambda!21841 lambda!216944 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun b!4730088 () Bool)

(assert (=> b!4730088 (= e!2950288 (forall!11627 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))))) lambda!216944))))

(assert (= (and d!1507936 (not res!2002390)) b!4730087))

(assert (= (and b!4730087 res!2002391) b!4730088))

(declare-fun b_lambda!180243 () Bool)

(assert (=> (not b_lambda!180243) (not b!4730087)))

(declare-fun m!5671725 () Bool)

(assert (=> b!4730087 m!5671725))

(declare-fun m!5671727 () Bool)

(assert (=> b!4730088 m!5671727))

(assert (=> b!4729534 d!1507936))

(declare-fun d!1507940 () Bool)

(declare-fun lt!1893644 () Bool)

(assert (=> d!1507940 (= lt!1893644 (select (content!9422 (keys!19004 (extractMap!2058 (toList!5953 lm!2023)))) key!4653))))

(declare-fun e!2950291 () Bool)

(assert (=> d!1507940 (= lt!1893644 e!2950291)))

(declare-fun res!2002394 () Bool)

(assert (=> d!1507940 (=> (not res!2002394) (not e!2950291))))

(assert (=> d!1507940 (= res!2002394 ((_ is Cons!52881) (keys!19004 (extractMap!2058 (toList!5953 lm!2023)))))))

(assert (=> d!1507940 (= (contains!16243 (keys!19004 (extractMap!2058 (toList!5953 lm!2023))) key!4653) lt!1893644)))

(declare-fun b!4730090 () Bool)

(declare-fun e!2950290 () Bool)

(assert (=> b!4730090 (= e!2950291 e!2950290)))

(declare-fun res!2002393 () Bool)

(assert (=> b!4730090 (=> res!2002393 e!2950290)))

(assert (=> b!4730090 (= res!2002393 (= (h!59242 (keys!19004 (extractMap!2058 (toList!5953 lm!2023)))) key!4653))))

(declare-fun b!4730091 () Bool)

(assert (=> b!4730091 (= e!2950290 (contains!16243 (t!360281 (keys!19004 (extractMap!2058 (toList!5953 lm!2023)))) key!4653))))

(assert (= (and d!1507940 res!2002394) b!4730090))

(assert (= (and b!4730090 (not res!2002393)) b!4730091))

(assert (=> d!1507940 m!5670243))

(declare-fun m!5671733 () Bool)

(assert (=> d!1507940 m!5671733))

(declare-fun m!5671735 () Bool)

(assert (=> d!1507940 m!5671735))

(declare-fun m!5671737 () Bool)

(assert (=> b!4730091 m!5671737))

(assert (=> b!4729364 d!1507940))

(declare-fun bs!1119533 () Bool)

(declare-fun b!4730098 () Bool)

(assert (= bs!1119533 (and b!4730098 b!4729446)))

(declare-fun lambda!217004 () Int)

(assert (=> bs!1119533 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (toList!5954 lt!1892771)) (= lambda!217004 lambda!216931))))

(declare-fun bs!1119535 () Bool)

(assert (= bs!1119535 (and b!4730098 b!4729391)))

(assert (=> bs!1119535 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (toList!5954 lt!1892771)) (= lambda!217004 lambda!216925))))

(declare-fun bs!1119537 () Bool)

(assert (= bs!1119537 (and b!4730098 b!4730053)))

(assert (=> bs!1119537 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (toList!5954 lt!1893051)) (= lambda!217004 lambda!216997))))

(declare-fun bs!1119539 () Bool)

(assert (= bs!1119539 (and b!4730098 b!4729894)))

(assert (=> bs!1119539 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (toList!5954 lt!1893054)) (= lambda!217004 lambda!216984))))

(declare-fun bs!1119541 () Bool)

(assert (= bs!1119541 (and b!4730098 b!4729394)))

(assert (=> bs!1119541 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (t!360278 (toList!5954 lt!1892771))) (= lambda!217004 lambda!216923))))

(declare-fun bs!1119543 () Bool)

(assert (= bs!1119543 (and b!4730098 b!4729390)))

(assert (=> bs!1119543 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217004 lambda!216924))))

(assert (=> b!4730098 true))

(declare-fun bs!1119546 () Bool)

(declare-fun b!4730099 () Bool)

(assert (= bs!1119546 (and b!4730099 b!4729397)))

(declare-fun lambda!217005 () Int)

(assert (=> bs!1119546 (= lambda!217005 lambda!216926)))

(declare-fun bs!1119548 () Bool)

(assert (= bs!1119548 (and b!4730099 b!4729447)))

(assert (=> bs!1119548 (= lambda!217005 lambda!216932)))

(declare-fun bs!1119550 () Bool)

(assert (= bs!1119550 (and b!4730099 b!4729895)))

(assert (=> bs!1119550 (= lambda!217005 lambda!216985)))

(declare-fun bs!1119552 () Bool)

(assert (= bs!1119552 (and b!4730099 b!4730054)))

(assert (=> bs!1119552 (= lambda!217005 lambda!216998)))

(declare-fun d!1507944 () Bool)

(declare-fun e!2950295 () Bool)

(assert (=> d!1507944 e!2950295))

(declare-fun res!2002400 () Bool)

(assert (=> d!1507944 (=> (not res!2002400) (not e!2950295))))

(declare-fun lt!1893666 () List!53005)

(assert (=> d!1507944 (= res!2002400 (noDuplicate!869 lt!1893666))))

(assert (=> d!1507944 (= lt!1893666 (getKeysList!963 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))))))

(assert (=> d!1507944 (= (keys!19004 (extractMap!2058 (toList!5953 lm!2023))) lt!1893666)))

(declare-fun b!4730097 () Bool)

(declare-fun res!2002399 () Bool)

(assert (=> b!4730097 (=> (not res!2002399) (not e!2950295))))

(assert (=> b!4730097 (= res!2002399 (= (length!594 lt!1893666) (length!595 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))))))

(declare-fun res!2002398 () Bool)

(assert (=> b!4730098 (=> (not res!2002398) (not e!2950295))))

(assert (=> b!4730098 (= res!2002398 (forall!11629 lt!1893666 lambda!217004))))

(assert (=> b!4730099 (= e!2950295 (= (content!9422 lt!1893666) (content!9422 (map!11698 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) lambda!217005))))))

(assert (= (and d!1507944 res!2002400) b!4730097))

(assert (= (and b!4730097 res!2002399) b!4730098))

(assert (= (and b!4730098 res!2002398) b!4730099))

(declare-fun m!5671739 () Bool)

(assert (=> d!1507944 m!5671739))

(assert (=> d!1507944 m!5670231))

(declare-fun m!5671741 () Bool)

(assert (=> b!4730097 m!5671741))

(declare-fun m!5671743 () Bool)

(assert (=> b!4730097 m!5671743))

(declare-fun m!5671745 () Bool)

(assert (=> b!4730098 m!5671745))

(declare-fun m!5671747 () Bool)

(assert (=> b!4730099 m!5671747))

(declare-fun m!5671749 () Bool)

(assert (=> b!4730099 m!5671749))

(assert (=> b!4730099 m!5671749))

(declare-fun m!5671751 () Bool)

(assert (=> b!4730099 m!5671751))

(assert (=> b!4729364 d!1507944))

(declare-fun lt!1893667 () Bool)

(declare-fun d!1507946 () Bool)

(assert (=> d!1507946 (= lt!1893667 (select (content!9419 (toList!5953 lm!2023)) (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))

(declare-fun e!2950296 () Bool)

(assert (=> d!1507946 (= lt!1893667 e!2950296)))

(declare-fun res!2002401 () Bool)

(assert (=> d!1507946 (=> (not res!2002401) (not e!2950296))))

(assert (=> d!1507946 (= res!2002401 ((_ is Cons!52879) (toList!5953 lm!2023)))))

(assert (=> d!1507946 (= (contains!16237 (toList!5953 lm!2023) (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))) lt!1893667)))

(declare-fun b!4730100 () Bool)

(declare-fun e!2950297 () Bool)

(assert (=> b!4730100 (= e!2950296 e!2950297)))

(declare-fun res!2002402 () Bool)

(assert (=> b!4730100 (=> res!2002402 e!2950297)))

(assert (=> b!4730100 (= res!2002402 (= (h!59238 (toList!5953 lm!2023)) (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))

(declare-fun b!4730101 () Bool)

(assert (=> b!4730101 (= e!2950297 (contains!16237 (t!360279 (toList!5953 lm!2023)) (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))

(assert (= (and d!1507946 res!2002401) b!4730100))

(assert (= (and b!4730100 (not res!2002402)) b!4730101))

(assert (=> d!1507946 m!5669379))

(declare-fun m!5671753 () Bool)

(assert (=> d!1507946 m!5671753))

(declare-fun m!5671755 () Bool)

(assert (=> b!4730101 m!5671755))

(assert (=> b!4729471 d!1507946))

(declare-fun d!1507948 () Bool)

(declare-fun res!2002403 () Bool)

(declare-fun e!2950298 () Bool)

(assert (=> d!1507948 (=> res!2002403 e!2950298)))

(assert (=> d!1507948 (= res!2002403 ((_ is Nil!52878) (t!360278 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1507948 (= (forall!11627 (t!360278 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))) (ite c!807618 lambda!216871 lambda!216873)) e!2950298)))

(declare-fun b!4730102 () Bool)

(declare-fun e!2950299 () Bool)

(assert (=> b!4730102 (= e!2950298 e!2950299)))

(declare-fun res!2002404 () Bool)

(assert (=> b!4730102 (=> (not res!2002404) (not e!2950299))))

(assert (=> b!4730102 (= res!2002404 (dynLambda!21841 (ite c!807618 lambda!216871 lambda!216873) (h!59237 (t!360278 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun b!4730103 () Bool)

(assert (=> b!4730103 (= e!2950299 (forall!11627 (t!360278 (t!360278 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (ite c!807618 lambda!216871 lambda!216873)))))

(assert (= (and d!1507948 (not res!2002403)) b!4730102))

(assert (= (and b!4730102 res!2002404) b!4730103))

(declare-fun b_lambda!180247 () Bool)

(assert (=> (not b_lambda!180247) (not b!4730102)))

(declare-fun m!5671757 () Bool)

(assert (=> b!4730102 m!5671757))

(declare-fun m!5671759 () Bool)

(assert (=> b!4730103 m!5671759))

(assert (=> b!4729404 d!1507948))

(assert (=> bs!1119038 d!1507350))

(declare-fun d!1507950 () Bool)

(declare-fun e!2950303 () Bool)

(assert (=> d!1507950 e!2950303))

(declare-fun res!2002407 () Bool)

(assert (=> d!1507950 (=> res!2002407 e!2950303)))

(declare-fun e!2950304 () Bool)

(assert (=> d!1507950 (= res!2002407 e!2950304)))

(declare-fun res!2002405 () Bool)

(assert (=> d!1507950 (=> (not res!2002405) (not e!2950304))))

(declare-fun lt!1893668 () Bool)

(assert (=> d!1507950 (= res!2002405 (not lt!1893668))))

(declare-fun lt!1893671 () Bool)

(assert (=> d!1507950 (= lt!1893668 lt!1893671)))

(declare-fun lt!1893673 () Unit!131227)

(declare-fun e!2950302 () Unit!131227)

(assert (=> d!1507950 (= lt!1893673 e!2950302)))

(declare-fun c!807811 () Bool)

(assert (=> d!1507950 (= c!807811 lt!1893671)))

(assert (=> d!1507950 (= lt!1893671 (containsKey!3406 (toList!5954 lt!1893065) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> d!1507950 (= (contains!16239 lt!1893065 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))) lt!1893668)))

(declare-fun b!4730104 () Bool)

(assert (=> b!4730104 false))

(declare-fun lt!1893672 () Unit!131227)

(declare-fun lt!1893669 () Unit!131227)

(assert (=> b!4730104 (= lt!1893672 lt!1893669)))

(assert (=> b!4730104 (containsKey!3406 (toList!5954 lt!1893065) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> b!4730104 (= lt!1893669 (lemmaInGetKeysListThenContainsKey!962 (toList!5954 lt!1893065) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun e!2950300 () Unit!131227)

(declare-fun Unit!131358 () Unit!131227)

(assert (=> b!4730104 (= e!2950300 Unit!131358)))

(declare-fun b!4730105 () Bool)

(declare-fun Unit!131359 () Unit!131227)

(assert (=> b!4730105 (= e!2950300 Unit!131359)))

(declare-fun b!4730106 () Bool)

(declare-fun e!2950301 () List!53005)

(assert (=> b!4730106 (= e!2950301 (getKeysList!963 (toList!5954 lt!1893065)))))

(declare-fun b!4730107 () Bool)

(declare-fun e!2950305 () Bool)

(assert (=> b!4730107 (= e!2950305 (contains!16243 (keys!19004 lt!1893065) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun b!4730108 () Bool)

(declare-fun lt!1893675 () Unit!131227)

(assert (=> b!4730108 (= e!2950302 lt!1893675)))

(declare-fun lt!1893670 () Unit!131227)

(assert (=> b!4730108 (= lt!1893670 (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 lt!1893065) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> b!4730108 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893065) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893674 () Unit!131227)

(assert (=> b!4730108 (= lt!1893674 lt!1893670)))

(assert (=> b!4730108 (= lt!1893675 (lemmaInListThenGetKeysListContains!958 (toList!5954 lt!1893065) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun call!330854 () Bool)

(assert (=> b!4730108 call!330854))

(declare-fun bm!330849 () Bool)

(assert (=> bm!330849 (= call!330854 (contains!16243 e!2950301 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun c!807812 () Bool)

(assert (=> bm!330849 (= c!807812 c!807811)))

(declare-fun b!4730109 () Bool)

(assert (=> b!4730109 (= e!2950301 (keys!19004 lt!1893065))))

(declare-fun b!4730110 () Bool)

(assert (=> b!4730110 (= e!2950302 e!2950300)))

(declare-fun c!807810 () Bool)

(assert (=> b!4730110 (= c!807810 call!330854)))

(declare-fun b!4730111 () Bool)

(assert (=> b!4730111 (= e!2950303 e!2950305)))

(declare-fun res!2002406 () Bool)

(assert (=> b!4730111 (=> (not res!2002406) (not e!2950305))))

(assert (=> b!4730111 (= res!2002406 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893065) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))))

(declare-fun b!4730112 () Bool)

(assert (=> b!4730112 (= e!2950304 (not (contains!16243 (keys!19004 lt!1893065) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))))

(assert (= (and d!1507950 c!807811) b!4730108))

(assert (= (and d!1507950 (not c!807811)) b!4730110))

(assert (= (and b!4730110 c!807810) b!4730104))

(assert (= (and b!4730110 (not c!807810)) b!4730105))

(assert (= (or b!4730108 b!4730110) bm!330849))

(assert (= (and bm!330849 c!807812) b!4730106))

(assert (= (and bm!330849 (not c!807812)) b!4730109))

(assert (= (and d!1507950 res!2002405) b!4730112))

(assert (= (and d!1507950 (not res!2002407)) b!4730111))

(assert (= (and b!4730111 res!2002406) b!4730107))

(declare-fun m!5671761 () Bool)

(assert (=> b!4730106 m!5671761))

(declare-fun m!5671763 () Bool)

(assert (=> b!4730104 m!5671763))

(declare-fun m!5671765 () Bool)

(assert (=> b!4730104 m!5671765))

(declare-fun m!5671767 () Bool)

(assert (=> bm!330849 m!5671767))

(declare-fun m!5671769 () Bool)

(assert (=> b!4730111 m!5671769))

(assert (=> b!4730111 m!5671769))

(declare-fun m!5671771 () Bool)

(assert (=> b!4730111 m!5671771))

(declare-fun m!5671773 () Bool)

(assert (=> b!4730107 m!5671773))

(assert (=> b!4730107 m!5671773))

(declare-fun m!5671775 () Bool)

(assert (=> b!4730107 m!5671775))

(assert (=> d!1507950 m!5671763))

(declare-fun m!5671777 () Bool)

(assert (=> b!4730108 m!5671777))

(assert (=> b!4730108 m!5671769))

(assert (=> b!4730108 m!5671769))

(assert (=> b!4730108 m!5671771))

(declare-fun m!5671779 () Bool)

(assert (=> b!4730108 m!5671779))

(assert (=> b!4730112 m!5671773))

(assert (=> b!4730112 m!5671773))

(assert (=> b!4730112 m!5671775))

(assert (=> b!4730109 m!5671773))

(assert (=> bs!1119033 d!1507950))

(declare-fun d!1507952 () Bool)

(declare-fun res!2002408 () Bool)

(declare-fun e!2950306 () Bool)

(assert (=> d!1507952 (=> res!2002408 e!2950306)))

(assert (=> d!1507952 (= res!2002408 (not ((_ is Cons!52878) (t!360278 (t!360278 oldBucket!34)))))))

(assert (=> d!1507952 (= (noDuplicateKeys!2032 (t!360278 (t!360278 oldBucket!34))) e!2950306)))

(declare-fun b!4730113 () Bool)

(declare-fun e!2950307 () Bool)

(assert (=> b!4730113 (= e!2950306 e!2950307)))

(declare-fun res!2002409 () Bool)

(assert (=> b!4730113 (=> (not res!2002409) (not e!2950307))))

(assert (=> b!4730113 (= res!2002409 (not (containsKey!3402 (t!360278 (t!360278 (t!360278 oldBucket!34))) (_1!30555 (h!59237 (t!360278 (t!360278 oldBucket!34)))))))))

(declare-fun b!4730114 () Bool)

(assert (=> b!4730114 (= e!2950307 (noDuplicateKeys!2032 (t!360278 (t!360278 (t!360278 oldBucket!34)))))))

(assert (= (and d!1507952 (not res!2002408)) b!4730113))

(assert (= (and b!4730113 res!2002409) b!4730114))

(declare-fun m!5671781 () Bool)

(assert (=> b!4730113 m!5671781))

(declare-fun m!5671783 () Bool)

(assert (=> b!4730114 m!5671783))

(assert (=> b!4729451 d!1507952))

(declare-fun d!1507954 () Bool)

(declare-fun lt!1893676 () Bool)

(assert (=> d!1507954 (= lt!1893676 (select (content!9419 (t!360279 (toList!5953 lm!2023))) (tuple2!54525 lt!1892762 lt!1892763)))))

(declare-fun e!2950308 () Bool)

(assert (=> d!1507954 (= lt!1893676 e!2950308)))

(declare-fun res!2002410 () Bool)

(assert (=> d!1507954 (=> (not res!2002410) (not e!2950308))))

(assert (=> d!1507954 (= res!2002410 ((_ is Cons!52879) (t!360279 (toList!5953 lm!2023))))))

(assert (=> d!1507954 (= (contains!16237 (t!360279 (toList!5953 lm!2023)) (tuple2!54525 lt!1892762 lt!1892763)) lt!1893676)))

(declare-fun b!4730115 () Bool)

(declare-fun e!2950309 () Bool)

(assert (=> b!4730115 (= e!2950308 e!2950309)))

(declare-fun res!2002411 () Bool)

(assert (=> b!4730115 (=> res!2002411 e!2950309)))

(assert (=> b!4730115 (= res!2002411 (= (h!59238 (t!360279 (toList!5953 lm!2023))) (tuple2!54525 lt!1892762 lt!1892763)))))

(declare-fun b!4730116 () Bool)

(assert (=> b!4730116 (= e!2950309 (contains!16237 (t!360279 (t!360279 (toList!5953 lm!2023))) (tuple2!54525 lt!1892762 lt!1892763)))))

(assert (= (and d!1507954 res!2002410) b!4730115))

(assert (= (and b!4730115 (not res!2002411)) b!4730116))

(assert (=> d!1507954 m!5670579))

(declare-fun m!5671785 () Bool)

(assert (=> d!1507954 m!5671785))

(declare-fun m!5671787 () Bool)

(assert (=> b!4730116 m!5671787))

(assert (=> b!4729572 d!1507954))

(declare-fun d!1507956 () Bool)

(assert (=> d!1507956 (= (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (not (isEmpty!29199 (getValueByKey!1978 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun bs!1119589 () Bool)

(assert (= bs!1119589 d!1507956))

(assert (=> bs!1119589 m!5670511))

(declare-fun m!5671789 () Bool)

(assert (=> bs!1119589 m!5671789))

(assert (=> b!4729523 d!1507956))

(declare-fun b!4730118 () Bool)

(declare-fun e!2950310 () Option!12392)

(declare-fun e!2950311 () Option!12392)

(assert (=> b!4730118 (= e!2950310 e!2950311)))

(declare-fun c!807814 () Bool)

(assert (=> b!4730118 (= c!807814 (and ((_ is Cons!52878) (toList!5954 lt!1893051)) (not (= (_1!30555 (h!59237 (toList!5954 lt!1893051))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun d!1507958 () Bool)

(declare-fun c!807813 () Bool)

(assert (=> d!1507958 (= c!807813 (and ((_ is Cons!52878) (toList!5954 lt!1893051)) (= (_1!30555 (h!59237 (toList!5954 lt!1893051))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1507958 (= (getValueByKey!1978 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) e!2950310)))

(declare-fun b!4730117 () Bool)

(assert (=> b!4730117 (= e!2950310 (Some!12391 (_2!30555 (h!59237 (toList!5954 lt!1893051)))))))

(declare-fun b!4730119 () Bool)

(assert (=> b!4730119 (= e!2950311 (getValueByKey!1978 (t!360278 (toList!5954 lt!1893051)) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4730120 () Bool)

(assert (=> b!4730120 (= e!2950311 None!12391)))

(assert (= (and d!1507958 c!807813) b!4730117))

(assert (= (and d!1507958 (not c!807813)) b!4730118))

(assert (= (and b!4730118 c!807814) b!4730119))

(assert (= (and b!4730118 (not c!807814)) b!4730120))

(declare-fun m!5671791 () Bool)

(assert (=> b!4730119 m!5671791))

(assert (=> b!4729523 d!1507958))

(declare-fun d!1507960 () Bool)

(declare-fun dynLambda!21844 (Int K!14230) Bool)

(assert (=> d!1507960 (dynLambda!21844 lambda!216923 (_1!30555 (h!59237 (toList!5954 lt!1892771))))))

(declare-fun lt!1893679 () Unit!131227)

(declare-fun choose!33448 (List!53005 Int K!14230) Unit!131227)

(assert (=> d!1507960 (= lt!1893679 (choose!33448 (getKeysList!963 (t!360278 (toList!5954 lt!1892771))) lambda!216923 (_1!30555 (h!59237 (toList!5954 lt!1892771)))))))

(declare-fun e!2950314 () Bool)

(assert (=> d!1507960 e!2950314))

(declare-fun res!2002414 () Bool)

(assert (=> d!1507960 (=> (not res!2002414) (not e!2950314))))

(assert (=> d!1507960 (= res!2002414 (forall!11629 (getKeysList!963 (t!360278 (toList!5954 lt!1892771))) lambda!216923))))

(assert (=> d!1507960 (= (forallContained!3669 (getKeysList!963 (t!360278 (toList!5954 lt!1892771))) lambda!216923 (_1!30555 (h!59237 (toList!5954 lt!1892771)))) lt!1893679)))

(declare-fun b!4730123 () Bool)

(assert (=> b!4730123 (= e!2950314 (contains!16243 (getKeysList!963 (t!360278 (toList!5954 lt!1892771))) (_1!30555 (h!59237 (toList!5954 lt!1892771)))))))

(assert (= (and d!1507960 res!2002414) b!4730123))

(declare-fun b_lambda!180249 () Bool)

(assert (=> (not b_lambda!180249) (not d!1507960)))

(declare-fun m!5671793 () Bool)

(assert (=> d!1507960 m!5671793))

(assert (=> d!1507960 m!5670259))

(declare-fun m!5671795 () Bool)

(assert (=> d!1507960 m!5671795))

(assert (=> d!1507960 m!5670259))

(declare-fun m!5671797 () Bool)

(assert (=> d!1507960 m!5671797))

(assert (=> b!4730123 m!5670259))

(assert (=> b!4730123 m!5670263))

(assert (=> b!4729394 d!1507960))

(declare-fun bs!1119602 () Bool)

(declare-fun b!4730128 () Bool)

(assert (= bs!1119602 (and b!4730128 b!4729446)))

(declare-fun lambda!217009 () Int)

(assert (=> bs!1119602 (= (= (t!360278 (t!360278 (toList!5954 lt!1892771))) (toList!5954 lt!1892771)) (= lambda!217009 lambda!216931))))

(declare-fun bs!1119604 () Bool)

(assert (= bs!1119604 (and b!4730128 b!4730098)))

(assert (=> bs!1119604 (= (= (t!360278 (t!360278 (toList!5954 lt!1892771))) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= lambda!217009 lambda!217004))))

(declare-fun bs!1119606 () Bool)

(assert (= bs!1119606 (and b!4730128 b!4729391)))

(assert (=> bs!1119606 (= (= (t!360278 (t!360278 (toList!5954 lt!1892771))) (toList!5954 lt!1892771)) (= lambda!217009 lambda!216925))))

(declare-fun bs!1119609 () Bool)

(assert (= bs!1119609 (and b!4730128 b!4730053)))

(assert (=> bs!1119609 (= (= (t!360278 (t!360278 (toList!5954 lt!1892771))) (toList!5954 lt!1893051)) (= lambda!217009 lambda!216997))))

(declare-fun bs!1119610 () Bool)

(assert (= bs!1119610 (and b!4730128 b!4729894)))

(assert (=> bs!1119610 (= (= (t!360278 (t!360278 (toList!5954 lt!1892771))) (toList!5954 lt!1893054)) (= lambda!217009 lambda!216984))))

(declare-fun bs!1119611 () Bool)

(assert (= bs!1119611 (and b!4730128 b!4729394)))

(assert (=> bs!1119611 (= (= (t!360278 (t!360278 (toList!5954 lt!1892771))) (t!360278 (toList!5954 lt!1892771))) (= lambda!217009 lambda!216923))))

(declare-fun bs!1119613 () Bool)

(assert (= bs!1119613 (and b!4730128 b!4729390)))

(assert (=> bs!1119613 (= (= (t!360278 (t!360278 (toList!5954 lt!1892771))) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217009 lambda!216924))))

(assert (=> b!4730128 true))

(declare-fun bs!1119618 () Bool)

(declare-fun b!4730124 () Bool)

(assert (= bs!1119618 (and b!4730124 b!4730128)))

(declare-fun lambda!217010 () Int)

(assert (=> bs!1119618 (= (= (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (= lambda!217010 lambda!217009))))

(declare-fun bs!1119620 () Bool)

(assert (= bs!1119620 (and b!4730124 b!4729446)))

(assert (=> bs!1119620 (= (= (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (toList!5954 lt!1892771)) (= lambda!217010 lambda!216931))))

(declare-fun bs!1119621 () Bool)

(assert (= bs!1119621 (and b!4730124 b!4730098)))

(assert (=> bs!1119621 (= (= (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= lambda!217010 lambda!217004))))

(declare-fun bs!1119623 () Bool)

(assert (= bs!1119623 (and b!4730124 b!4729391)))

(assert (=> bs!1119623 (= (= (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (toList!5954 lt!1892771)) (= lambda!217010 lambda!216925))))

(declare-fun bs!1119625 () Bool)

(assert (= bs!1119625 (and b!4730124 b!4730053)))

(assert (=> bs!1119625 (= (= (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (toList!5954 lt!1893051)) (= lambda!217010 lambda!216997))))

(declare-fun bs!1119626 () Bool)

(assert (= bs!1119626 (and b!4730124 b!4729894)))

(assert (=> bs!1119626 (= (= (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (toList!5954 lt!1893054)) (= lambda!217010 lambda!216984))))

(declare-fun bs!1119628 () Bool)

(assert (= bs!1119628 (and b!4730124 b!4729394)))

(assert (=> bs!1119628 (= (= (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (t!360278 (toList!5954 lt!1892771))) (= lambda!217010 lambda!216923))))

(declare-fun bs!1119629 () Bool)

(assert (= bs!1119629 (and b!4730124 b!4729390)))

(assert (=> bs!1119629 (= (= (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217010 lambda!216924))))

(assert (=> b!4730124 true))

(declare-fun bs!1119630 () Bool)

(declare-fun b!4730125 () Bool)

(assert (= bs!1119630 (and b!4730125 b!4730128)))

(declare-fun lambda!217011 () Int)

(assert (=> bs!1119630 (= (= (t!360278 (toList!5954 lt!1892771)) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (= lambda!217011 lambda!217009))))

(declare-fun bs!1119631 () Bool)

(assert (= bs!1119631 (and b!4730125 b!4729446)))

(assert (=> bs!1119631 (= (= (t!360278 (toList!5954 lt!1892771)) (toList!5954 lt!1892771)) (= lambda!217011 lambda!216931))))

(declare-fun bs!1119632 () Bool)

(assert (= bs!1119632 (and b!4730125 b!4729391)))

(assert (=> bs!1119632 (= (= (t!360278 (toList!5954 lt!1892771)) (toList!5954 lt!1892771)) (= lambda!217011 lambda!216925))))

(declare-fun bs!1119633 () Bool)

(assert (= bs!1119633 (and b!4730125 b!4730053)))

(assert (=> bs!1119633 (= (= (t!360278 (toList!5954 lt!1892771)) (toList!5954 lt!1893051)) (= lambda!217011 lambda!216997))))

(declare-fun bs!1119634 () Bool)

(assert (= bs!1119634 (and b!4730125 b!4729894)))

(assert (=> bs!1119634 (= (= (t!360278 (toList!5954 lt!1892771)) (toList!5954 lt!1893054)) (= lambda!217011 lambda!216984))))

(declare-fun bs!1119635 () Bool)

(assert (= bs!1119635 (and b!4730125 b!4730124)))

(assert (=> bs!1119635 (= (= (t!360278 (toList!5954 lt!1892771)) (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771))))) (= lambda!217011 lambda!217010))))

(declare-fun bs!1119636 () Bool)

(assert (= bs!1119636 (and b!4730125 b!4730098)))

(assert (=> bs!1119636 (= (= (t!360278 (toList!5954 lt!1892771)) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= lambda!217011 lambda!217004))))

(declare-fun bs!1119637 () Bool)

(assert (= bs!1119637 (and b!4730125 b!4729394)))

(assert (=> bs!1119637 (= lambda!217011 lambda!216923)))

(declare-fun bs!1119638 () Bool)

(assert (= bs!1119638 (and b!4730125 b!4729390)))

(assert (=> bs!1119638 (= (= (t!360278 (toList!5954 lt!1892771)) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217011 lambda!216924))))

(assert (=> b!4730125 true))

(declare-fun bs!1119639 () Bool)

(declare-fun b!4730131 () Bool)

(assert (= bs!1119639 (and b!4730131 b!4729447)))

(declare-fun lambda!217012 () Int)

(assert (=> bs!1119639 (= lambda!217012 lambda!216932)))

(declare-fun bs!1119640 () Bool)

(assert (= bs!1119640 (and b!4730131 b!4730054)))

(assert (=> bs!1119640 (= lambda!217012 lambda!216998)))

(declare-fun bs!1119641 () Bool)

(assert (= bs!1119641 (and b!4730131 b!4729397)))

(assert (=> bs!1119641 (= lambda!217012 lambda!216926)))

(declare-fun bs!1119642 () Bool)

(assert (= bs!1119642 (and b!4730131 b!4729895)))

(assert (=> bs!1119642 (= lambda!217012 lambda!216985)))

(declare-fun bs!1119643 () Bool)

(assert (= bs!1119643 (and b!4730131 b!4730099)))

(assert (=> bs!1119643 (= lambda!217012 lambda!217005)))

(declare-fun e!2950318 () List!53005)

(assert (=> b!4730124 (= e!2950318 (Cons!52881 (_1!30555 (h!59237 (t!360278 (toList!5954 lt!1892771)))) (getKeysList!963 (t!360278 (t!360278 (toList!5954 lt!1892771))))))))

(declare-fun c!807815 () Bool)

(assert (=> b!4730124 (= c!807815 (containsKey!3406 (t!360278 (t!360278 (toList!5954 lt!1892771))) (_1!30555 (h!59237 (t!360278 (toList!5954 lt!1892771))))))))

(declare-fun lt!1893682 () Unit!131227)

(declare-fun e!2950317 () Unit!131227)

(assert (=> b!4730124 (= lt!1893682 e!2950317)))

(declare-fun c!807816 () Bool)

(assert (=> b!4730124 (= c!807816 (contains!16243 (getKeysList!963 (t!360278 (t!360278 (toList!5954 lt!1892771)))) (_1!30555 (h!59237 (t!360278 (toList!5954 lt!1892771))))))))

(declare-fun lt!1893686 () Unit!131227)

(declare-fun e!2950315 () Unit!131227)

(assert (=> b!4730124 (= lt!1893686 e!2950315)))

(declare-fun lt!1893684 () List!53005)

(assert (=> b!4730124 (= lt!1893684 (getKeysList!963 (t!360278 (t!360278 (toList!5954 lt!1892771)))))))

(declare-fun lt!1893685 () Unit!131227)

(assert (=> b!4730124 (= lt!1893685 (lemmaForallContainsAddHeadPreserves!287 (t!360278 (t!360278 (toList!5954 lt!1892771))) lt!1893684 (h!59237 (t!360278 (toList!5954 lt!1892771)))))))

(assert (=> b!4730124 (forall!11629 lt!1893684 lambda!217010)))

(declare-fun lt!1893680 () Unit!131227)

(assert (=> b!4730124 (= lt!1893680 lt!1893685)))

(declare-fun res!2002416 () Bool)

(declare-fun e!2950316 () Bool)

(assert (=> b!4730125 (=> (not res!2002416) (not e!2950316))))

(declare-fun lt!1893681 () List!53005)

(assert (=> b!4730125 (= res!2002416 (forall!11629 lt!1893681 lambda!217011))))

(declare-fun d!1507962 () Bool)

(assert (=> d!1507962 e!2950316))

(declare-fun res!2002417 () Bool)

(assert (=> d!1507962 (=> (not res!2002417) (not e!2950316))))

(assert (=> d!1507962 (= res!2002417 (noDuplicate!869 lt!1893681))))

(assert (=> d!1507962 (= lt!1893681 e!2950318)))

(declare-fun c!807817 () Bool)

(assert (=> d!1507962 (= c!807817 ((_ is Cons!52878) (t!360278 (toList!5954 lt!1892771))))))

(assert (=> d!1507962 (invariantList!1523 (t!360278 (toList!5954 lt!1892771)))))

(assert (=> d!1507962 (= (getKeysList!963 (t!360278 (toList!5954 lt!1892771))) lt!1893681)))

(declare-fun b!4730126 () Bool)

(assert (=> b!4730126 false))

(declare-fun Unit!131361 () Unit!131227)

(assert (=> b!4730126 (= e!2950317 Unit!131361)))

(declare-fun b!4730127 () Bool)

(declare-fun Unit!131362 () Unit!131227)

(assert (=> b!4730127 (= e!2950317 Unit!131362)))

(assert (=> b!4730128 false))

(declare-fun lt!1893683 () Unit!131227)

(assert (=> b!4730128 (= lt!1893683 (forallContained!3669 (getKeysList!963 (t!360278 (t!360278 (toList!5954 lt!1892771)))) lambda!217009 (_1!30555 (h!59237 (t!360278 (toList!5954 lt!1892771))))))))

(declare-fun Unit!131363 () Unit!131227)

(assert (=> b!4730128 (= e!2950315 Unit!131363)))

(declare-fun b!4730129 () Bool)

(declare-fun Unit!131364 () Unit!131227)

(assert (=> b!4730129 (= e!2950315 Unit!131364)))

(declare-fun b!4730130 () Bool)

(assert (=> b!4730130 (= e!2950318 Nil!52881)))

(assert (=> b!4730131 (= e!2950316 (= (content!9422 lt!1893681) (content!9422 (map!11698 (t!360278 (toList!5954 lt!1892771)) lambda!217012))))))

(declare-fun b!4730132 () Bool)

(declare-fun res!2002415 () Bool)

(assert (=> b!4730132 (=> (not res!2002415) (not e!2950316))))

(assert (=> b!4730132 (= res!2002415 (= (length!594 lt!1893681) (length!595 (t!360278 (toList!5954 lt!1892771)))))))

(assert (= (and d!1507962 c!807817) b!4730124))

(assert (= (and d!1507962 (not c!807817)) b!4730130))

(assert (= (and b!4730124 c!807815) b!4730126))

(assert (= (and b!4730124 (not c!807815)) b!4730127))

(assert (= (and b!4730124 c!807816) b!4730128))

(assert (= (and b!4730124 (not c!807816)) b!4730129))

(assert (= (and d!1507962 res!2002417) b!4730132))

(assert (= (and b!4730132 res!2002415) b!4730125))

(assert (= (and b!4730125 res!2002416) b!4730131))

(declare-fun m!5671827 () Bool)

(assert (=> b!4730128 m!5671827))

(assert (=> b!4730128 m!5671827))

(declare-fun m!5671831 () Bool)

(assert (=> b!4730128 m!5671831))

(assert (=> b!4730124 m!5671827))

(declare-fun m!5671835 () Bool)

(assert (=> b!4730124 m!5671835))

(declare-fun m!5671837 () Bool)

(assert (=> b!4730124 m!5671837))

(declare-fun m!5671841 () Bool)

(assert (=> b!4730124 m!5671841))

(declare-fun m!5671843 () Bool)

(assert (=> b!4730124 m!5671843))

(assert (=> b!4730124 m!5671827))

(declare-fun m!5671845 () Bool)

(assert (=> b!4730132 m!5671845))

(declare-fun m!5671847 () Bool)

(assert (=> b!4730132 m!5671847))

(declare-fun m!5671849 () Bool)

(assert (=> d!1507962 m!5671849))

(declare-fun m!5671851 () Bool)

(assert (=> d!1507962 m!5671851))

(declare-fun m!5671853 () Bool)

(assert (=> b!4730131 m!5671853))

(declare-fun m!5671855 () Bool)

(assert (=> b!4730131 m!5671855))

(assert (=> b!4730131 m!5671855))

(declare-fun m!5671857 () Bool)

(assert (=> b!4730131 m!5671857))

(declare-fun m!5671859 () Bool)

(assert (=> b!4730125 m!5671859))

(assert (=> b!4729394 d!1507962))

(declare-fun d!1507966 () Bool)

(assert (=> d!1507966 (= (isDefined!9645 (getValueByKey!1977 (toList!5953 lm!2023) lt!1892869)) (not (isEmpty!29198 (getValueByKey!1977 (toList!5953 lm!2023) lt!1892869))))))

(declare-fun bs!1119644 () Bool)

(assert (= bs!1119644 d!1507966))

(assert (=> bs!1119644 m!5669461))

(declare-fun m!5671863 () Bool)

(assert (=> bs!1119644 m!5671863))

(assert (=> b!4729482 d!1507966))

(assert (=> b!4729482 d!1507340))

(assert (=> bs!1119030 d!1507880))

(declare-fun d!1507970 () Bool)

(declare-fun res!2002420 () Bool)

(declare-fun e!2950321 () Bool)

(assert (=> d!1507970 (=> res!2002420 e!2950321)))

(assert (=> d!1507970 (= res!2002420 (and ((_ is Cons!52878) (t!360278 (t!360278 oldBucket!34))) (= (_1!30555 (h!59237 (t!360278 (t!360278 oldBucket!34)))) (_1!30555 (h!59237 oldBucket!34)))))))

(assert (=> d!1507970 (= (containsKey!3402 (t!360278 (t!360278 oldBucket!34)) (_1!30555 (h!59237 oldBucket!34))) e!2950321)))

(declare-fun b!4730135 () Bool)

(declare-fun e!2950322 () Bool)

(assert (=> b!4730135 (= e!2950321 e!2950322)))

(declare-fun res!2002421 () Bool)

(assert (=> b!4730135 (=> (not res!2002421) (not e!2950322))))

(assert (=> b!4730135 (= res!2002421 ((_ is Cons!52878) (t!360278 (t!360278 oldBucket!34))))))

(declare-fun b!4730136 () Bool)

(assert (=> b!4730136 (= e!2950322 (containsKey!3402 (t!360278 (t!360278 (t!360278 oldBucket!34))) (_1!30555 (h!59237 oldBucket!34))))))

(assert (= (and d!1507970 (not res!2002420)) b!4730135))

(assert (= (and b!4730135 res!2002421) b!4730136))

(declare-fun m!5671867 () Bool)

(assert (=> b!4730136 m!5671867))

(assert (=> b!4729595 d!1507970))

(declare-fun d!1507974 () Bool)

(declare-fun lt!1893687 () Bool)

(assert (=> d!1507974 (= lt!1893687 (select (content!9422 e!2949850) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun e!2950326 () Bool)

(assert (=> d!1507974 (= lt!1893687 e!2950326)))

(declare-fun res!2002425 () Bool)

(assert (=> d!1507974 (=> (not res!2002425) (not e!2950326))))

(assert (=> d!1507974 (= res!2002425 ((_ is Cons!52881) e!2949850))))

(assert (=> d!1507974 (= (contains!16243 e!2949850 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893687)))

(declare-fun b!4730139 () Bool)

(declare-fun e!2950325 () Bool)

(assert (=> b!4730139 (= e!2950326 e!2950325)))

(declare-fun res!2002424 () Bool)

(assert (=> b!4730139 (=> res!2002424 e!2950325)))

(assert (=> b!4730139 (= res!2002424 (= (h!59242 e!2949850) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4730140 () Bool)

(assert (=> b!4730140 (= e!2950325 (contains!16243 (t!360281 e!2949850) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (= (and d!1507974 res!2002425) b!4730139))

(assert (= (and b!4730139 (not res!2002424)) b!4730140))

(declare-fun m!5671873 () Bool)

(assert (=> d!1507974 m!5671873))

(declare-fun m!5671875 () Bool)

(assert (=> d!1507974 m!5671875))

(declare-fun m!5671877 () Bool)

(assert (=> b!4730140 m!5671877))

(assert (=> bm!330814 d!1507974))

(declare-fun d!1507978 () Bool)

(assert (=> d!1507978 (= (get!17744 (getValueByKey!1977 (toList!5953 lm!2023) (hash!4413 hashF!1323 key!4653))) (v!46999 (getValueByKey!1977 (toList!5953 lm!2023) (hash!4413 hashF!1323 key!4653))))))

(assert (=> d!1507422 d!1507978))

(assert (=> d!1507422 d!1507896))

(declare-fun d!1507980 () Bool)

(declare-fun c!807820 () Bool)

(assert (=> d!1507980 (= c!807820 ((_ is Nil!52881) lt!1893283))))

(declare-fun e!2950337 () (InoxSet K!14230))

(assert (=> d!1507980 (= (content!9422 lt!1893283) e!2950337)))

(declare-fun b!4730153 () Bool)

(assert (=> b!4730153 (= e!2950337 ((as const (Array K!14230 Bool)) false))))

(declare-fun b!4730154 () Bool)

(assert (=> b!4730154 (= e!2950337 ((_ map or) (store ((as const (Array K!14230 Bool)) false) (h!59242 lt!1893283) true) (content!9422 (t!360281 lt!1893283))))))

(assert (= (and d!1507980 c!807820) b!4730153))

(assert (= (and d!1507980 (not c!807820)) b!4730154))

(declare-fun m!5671899 () Bool)

(assert (=> b!4730154 m!5671899))

(declare-fun m!5671901 () Bool)

(assert (=> b!4730154 m!5671901))

(assert (=> b!4729447 d!1507980))

(declare-fun d!1507994 () Bool)

(declare-fun c!807821 () Bool)

(assert (=> d!1507994 (= c!807821 ((_ is Nil!52881) (map!11698 (toList!5954 lt!1892771) lambda!216932)))))

(declare-fun e!2950339 () (InoxSet K!14230))

(assert (=> d!1507994 (= (content!9422 (map!11698 (toList!5954 lt!1892771) lambda!216932)) e!2950339)))

(declare-fun b!4730156 () Bool)

(assert (=> b!4730156 (= e!2950339 ((as const (Array K!14230 Bool)) false))))

(declare-fun b!4730157 () Bool)

(assert (=> b!4730157 (= e!2950339 ((_ map or) (store ((as const (Array K!14230 Bool)) false) (h!59242 (map!11698 (toList!5954 lt!1892771) lambda!216932)) true) (content!9422 (t!360281 (map!11698 (toList!5954 lt!1892771) lambda!216932)))))))

(assert (= (and d!1507994 c!807821) b!4730156))

(assert (= (and d!1507994 (not c!807821)) b!4730157))

(declare-fun m!5671905 () Bool)

(assert (=> b!4730157 m!5671905))

(declare-fun m!5671907 () Bool)

(assert (=> b!4730157 m!5671907))

(assert (=> b!4729447 d!1507994))

(declare-fun d!1507998 () Bool)

(declare-fun lt!1893696 () List!53005)

(declare-fun size!35983 (List!53005) Int)

(declare-fun size!35984 (List!53002) Int)

(assert (=> d!1507998 (= (size!35983 lt!1893696) (size!35984 (toList!5954 lt!1892771)))))

(declare-fun e!2950348 () List!53005)

(assert (=> d!1507998 (= lt!1893696 e!2950348)))

(declare-fun c!807824 () Bool)

(assert (=> d!1507998 (= c!807824 ((_ is Nil!52878) (toList!5954 lt!1892771)))))

(assert (=> d!1507998 (= (map!11698 (toList!5954 lt!1892771) lambda!216932) lt!1893696)))

(declare-fun b!4730168 () Bool)

(assert (=> b!4730168 (= e!2950348 Nil!52881)))

(declare-fun b!4730169 () Bool)

(declare-fun $colon$colon!1083 (List!53005 K!14230) List!53005)

(declare-fun dynLambda!21845 (Int tuple2!54522) K!14230)

(assert (=> b!4730169 (= e!2950348 ($colon$colon!1083 (map!11698 (t!360278 (toList!5954 lt!1892771)) lambda!216932) (dynLambda!21845 lambda!216932 (h!59237 (toList!5954 lt!1892771)))))))

(assert (= (and d!1507998 c!807824) b!4730168))

(assert (= (and d!1507998 (not c!807824)) b!4730169))

(declare-fun b_lambda!180253 () Bool)

(assert (=> (not b_lambda!180253) (not b!4730169)))

(declare-fun m!5671923 () Bool)

(assert (=> d!1507998 m!5671923))

(declare-fun m!5671925 () Bool)

(assert (=> d!1507998 m!5671925))

(declare-fun m!5671927 () Bool)

(assert (=> b!4730169 m!5671927))

(declare-fun m!5671929 () Bool)

(assert (=> b!4730169 m!5671929))

(assert (=> b!4730169 m!5671927))

(assert (=> b!4730169 m!5671929))

(declare-fun m!5671931 () Bool)

(assert (=> b!4730169 m!5671931))

(assert (=> b!4729447 d!1507998))

(declare-fun e!2950349 () Bool)

(declare-fun b!4730172 () Bool)

(assert (=> b!4730172 (= e!2950349 (not (containsKey!3402 (t!360278 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))) key!4653)))))

(declare-fun b!4730173 () Bool)

(declare-fun e!2950354 () Option!12388)

(assert (=> b!4730173 (= e!2950354 None!12387)))

(declare-fun b!4730174 () Bool)

(assert (=> b!4730174 (= e!2950354 (getPair!572 (t!360278 (t!360278 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))) key!4653))))

(declare-fun d!1508006 () Bool)

(declare-fun e!2950352 () Bool)

(assert (=> d!1508006 e!2950352))

(declare-fun res!2002444 () Bool)

(assert (=> d!1508006 (=> res!2002444 e!2950352)))

(assert (=> d!1508006 (= res!2002444 e!2950349)))

(declare-fun res!2002442 () Bool)

(assert (=> d!1508006 (=> (not res!2002442) (not e!2950349))))

(declare-fun lt!1893697 () Option!12388)

(assert (=> d!1508006 (= res!2002442 (isEmpty!29195 lt!1893697))))

(declare-fun e!2950353 () Option!12388)

(assert (=> d!1508006 (= lt!1893697 e!2950353)))

(declare-fun c!807825 () Bool)

(assert (=> d!1508006 (= c!807825 (and ((_ is Cons!52878) (t!360278 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))) (= (_1!30555 (h!59237 (t!360278 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))))) key!4653)))))

(assert (=> d!1508006 (noDuplicateKeys!2032 (t!360278 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))))))

(assert (=> d!1508006 (= (getPair!572 (t!360278 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))) key!4653) lt!1893697)))

(declare-fun b!4730175 () Bool)

(declare-fun e!2950351 () Bool)

(assert (=> b!4730175 (= e!2950351 (contains!16242 (t!360278 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))) (get!17745 lt!1893697)))))

(declare-fun b!4730176 () Bool)

(assert (=> b!4730176 (= e!2950353 (Some!12387 (h!59237 (t!360278 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))))))))

(declare-fun b!4730177 () Bool)

(declare-fun res!2002443 () Bool)

(assert (=> b!4730177 (=> (not res!2002443) (not e!2950351))))

(assert (=> b!4730177 (= res!2002443 (= (_1!30555 (get!17745 lt!1893697)) key!4653))))

(declare-fun b!4730178 () Bool)

(assert (=> b!4730178 (= e!2950353 e!2950354)))

(declare-fun c!807826 () Bool)

(assert (=> b!4730178 (= c!807826 ((_ is Cons!52878) (t!360278 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))

(declare-fun b!4730179 () Bool)

(assert (=> b!4730179 (= e!2950352 e!2950351)))

(declare-fun res!2002441 () Bool)

(assert (=> b!4730179 (=> (not res!2002441) (not e!2950351))))

(assert (=> b!4730179 (= res!2002441 (isDefined!9642 lt!1893697))))

(assert (= (and d!1508006 c!807825) b!4730176))

(assert (= (and d!1508006 (not c!807825)) b!4730178))

(assert (= (and b!4730178 c!807826) b!4730174))

(assert (= (and b!4730178 (not c!807826)) b!4730173))

(assert (= (and d!1508006 res!2002442) b!4730172))

(assert (= (and d!1508006 (not res!2002444)) b!4730179))

(assert (= (and b!4730179 res!2002441) b!4730177))

(assert (= (and b!4730177 res!2002443) b!4730175))

(declare-fun m!5671939 () Bool)

(assert (=> b!4730175 m!5671939))

(assert (=> b!4730175 m!5671939))

(declare-fun m!5671941 () Bool)

(assert (=> b!4730175 m!5671941))

(declare-fun m!5671943 () Bool)

(assert (=> d!1508006 m!5671943))

(declare-fun m!5671945 () Bool)

(assert (=> d!1508006 m!5671945))

(assert (=> b!4730177 m!5671939))

(declare-fun m!5671947 () Bool)

(assert (=> b!4730174 m!5671947))

(declare-fun m!5671949 () Bool)

(assert (=> b!4730179 m!5671949))

(declare-fun m!5671951 () Bool)

(assert (=> b!4730172 m!5671951))

(assert (=> b!4729474 d!1508006))

(declare-fun d!1508014 () Bool)

(assert (=> d!1508014 (= (length!594 lt!1893267) (size!35983 lt!1893267))))

(declare-fun bs!1119649 () Bool)

(assert (= bs!1119649 d!1508014))

(declare-fun m!5671953 () Bool)

(assert (=> bs!1119649 m!5671953))

(assert (=> b!4729398 d!1508014))

(declare-fun d!1508016 () Bool)

(assert (=> d!1508016 (= (length!595 (toList!5954 lt!1892771)) (size!35984 (toList!5954 lt!1892771)))))

(declare-fun bs!1119650 () Bool)

(assert (= bs!1119650 d!1508016))

(assert (=> bs!1119650 m!5671925))

(assert (=> b!4729398 d!1508016))

(assert (=> d!1507418 d!1507424))

(declare-fun d!1508018 () Bool)

(assert (=> d!1508018 (contains!16237 (toList!5953 lm!2023) (tuple2!54525 lt!1892869 lt!1892868))))

(assert (=> d!1508018 true))

(declare-fun _$41!429 () Unit!131227)

(assert (=> d!1508018 (= (choose!33424 lm!2023 lt!1892869 lt!1892868) _$41!429)))

(declare-fun bs!1119651 () Bool)

(assert (= bs!1119651 d!1508018))

(assert (=> bs!1119651 m!5669467))

(assert (=> d!1507418 d!1508018))

(assert (=> d!1507418 d!1507420))

(assert (=> b!4729526 d!1507446))

(declare-fun d!1508022 () Bool)

(declare-fun res!2002453 () Bool)

(declare-fun e!2950369 () Bool)

(assert (=> d!1508022 (=> res!2002453 e!2950369)))

(assert (=> d!1508022 (= res!2002453 (and ((_ is Cons!52878) (t!360278 (_2!30556 lt!1892769))) (= (_1!30555 (h!59237 (t!360278 (_2!30556 lt!1892769)))) (_1!30555 (h!59237 (_2!30556 lt!1892769))))))))

(assert (=> d!1508022 (= (containsKey!3402 (t!360278 (_2!30556 lt!1892769)) (_1!30555 (h!59237 (_2!30556 lt!1892769)))) e!2950369)))

(declare-fun b!4730200 () Bool)

(declare-fun e!2950370 () Bool)

(assert (=> b!4730200 (= e!2950369 e!2950370)))

(declare-fun res!2002454 () Bool)

(assert (=> b!4730200 (=> (not res!2002454) (not e!2950370))))

(assert (=> b!4730200 (= res!2002454 ((_ is Cons!52878) (t!360278 (_2!30556 lt!1892769))))))

(declare-fun b!4730201 () Bool)

(assert (=> b!4730201 (= e!2950370 (containsKey!3402 (t!360278 (t!360278 (_2!30556 lt!1892769))) (_1!30555 (h!59237 (_2!30556 lt!1892769)))))))

(assert (= (and d!1508022 (not res!2002453)) b!4730200))

(assert (= (and b!4730200 res!2002454) b!4730201))

(declare-fun m!5671975 () Bool)

(assert (=> b!4730201 m!5671975))

(assert (=> b!4729543 d!1508022))

(declare-fun d!1508024 () Bool)

(declare-fun e!2950374 () Bool)

(assert (=> d!1508024 e!2950374))

(declare-fun res!2002457 () Bool)

(assert (=> d!1508024 (=> res!2002457 e!2950374)))

(declare-fun e!2950375 () Bool)

(assert (=> d!1508024 (= res!2002457 e!2950375)))

(declare-fun res!2002455 () Bool)

(assert (=> d!1508024 (=> (not res!2002455) (not e!2950375))))

(declare-fun lt!1893714 () Bool)

(assert (=> d!1508024 (= res!2002455 (not lt!1893714))))

(declare-fun lt!1893717 () Bool)

(assert (=> d!1508024 (= lt!1893714 lt!1893717)))

(declare-fun lt!1893719 () Unit!131227)

(declare-fun e!2950373 () Unit!131227)

(assert (=> d!1508024 (= lt!1893719 e!2950373)))

(declare-fun c!807835 () Bool)

(assert (=> d!1508024 (= c!807835 lt!1893717)))

(assert (=> d!1508024 (= lt!1893717 (containsKey!3406 (toList!5954 lt!1893329) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1508024 (= (contains!16239 lt!1893329 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893714)))

(declare-fun b!4730202 () Bool)

(assert (=> b!4730202 false))

(declare-fun lt!1893718 () Unit!131227)

(declare-fun lt!1893715 () Unit!131227)

(assert (=> b!4730202 (= lt!1893718 lt!1893715)))

(assert (=> b!4730202 (containsKey!3406 (toList!5954 lt!1893329) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (=> b!4730202 (= lt!1893715 (lemmaInGetKeysListThenContainsKey!962 (toList!5954 lt!1893329) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun e!2950371 () Unit!131227)

(declare-fun Unit!131375 () Unit!131227)

(assert (=> b!4730202 (= e!2950371 Unit!131375)))

(declare-fun b!4730203 () Bool)

(declare-fun Unit!131376 () Unit!131227)

(assert (=> b!4730203 (= e!2950371 Unit!131376)))

(declare-fun b!4730204 () Bool)

(declare-fun e!2950372 () List!53005)

(assert (=> b!4730204 (= e!2950372 (getKeysList!963 (toList!5954 lt!1893329)))))

(declare-fun b!4730205 () Bool)

(declare-fun e!2950376 () Bool)

(assert (=> b!4730205 (= e!2950376 (contains!16243 (keys!19004 lt!1893329) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4730206 () Bool)

(declare-fun lt!1893721 () Unit!131227)

(assert (=> b!4730206 (= e!2950373 lt!1893721)))

(declare-fun lt!1893716 () Unit!131227)

(assert (=> b!4730206 (= lt!1893716 (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 lt!1893329) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> b!4730206 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893329) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893720 () Unit!131227)

(assert (=> b!4730206 (= lt!1893720 lt!1893716)))

(assert (=> b!4730206 (= lt!1893721 (lemmaInListThenGetKeysListContains!958 (toList!5954 lt!1893329) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun call!330857 () Bool)

(assert (=> b!4730206 call!330857))

(declare-fun bm!330852 () Bool)

(assert (=> bm!330852 (= call!330857 (contains!16243 e!2950372 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun c!807836 () Bool)

(assert (=> bm!330852 (= c!807836 c!807835)))

(declare-fun b!4730207 () Bool)

(assert (=> b!4730207 (= e!2950372 (keys!19004 lt!1893329))))

(declare-fun b!4730208 () Bool)

(assert (=> b!4730208 (= e!2950373 e!2950371)))

(declare-fun c!807834 () Bool)

(assert (=> b!4730208 (= c!807834 call!330857)))

(declare-fun b!4730209 () Bool)

(assert (=> b!4730209 (= e!2950374 e!2950376)))

(declare-fun res!2002456 () Bool)

(assert (=> b!4730209 (=> (not res!2002456) (not e!2950376))))

(assert (=> b!4730209 (= res!2002456 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893329) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun b!4730210 () Bool)

(assert (=> b!4730210 (= e!2950375 (not (contains!16243 (keys!19004 lt!1893329) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (= (and d!1508024 c!807835) b!4730206))

(assert (= (and d!1508024 (not c!807835)) b!4730208))

(assert (= (and b!4730208 c!807834) b!4730202))

(assert (= (and b!4730208 (not c!807834)) b!4730203))

(assert (= (or b!4730206 b!4730208) bm!330852))

(assert (= (and bm!330852 c!807836) b!4730204))

(assert (= (and bm!330852 (not c!807836)) b!4730207))

(assert (= (and d!1508024 res!2002455) b!4730210))

(assert (= (and d!1508024 (not res!2002457)) b!4730209))

(assert (= (and b!4730209 res!2002456) b!4730205))

(declare-fun m!5671997 () Bool)

(assert (=> b!4730204 m!5671997))

(declare-fun m!5671999 () Bool)

(assert (=> b!4730202 m!5671999))

(declare-fun m!5672001 () Bool)

(assert (=> b!4730202 m!5672001))

(declare-fun m!5672003 () Bool)

(assert (=> bm!330852 m!5672003))

(assert (=> b!4730209 m!5670465))

(assert (=> b!4730209 m!5670465))

(declare-fun m!5672005 () Bool)

(assert (=> b!4730209 m!5672005))

(declare-fun m!5672007 () Bool)

(assert (=> b!4730205 m!5672007))

(assert (=> b!4730205 m!5672007))

(declare-fun m!5672009 () Bool)

(assert (=> b!4730205 m!5672009))

(assert (=> d!1508024 m!5671999))

(declare-fun m!5672011 () Bool)

(assert (=> b!4730206 m!5672011))

(assert (=> b!4730206 m!5670465))

(assert (=> b!4730206 m!5670465))

(assert (=> b!4730206 m!5672005))

(declare-fun m!5672013 () Bool)

(assert (=> b!4730206 m!5672013))

(assert (=> b!4730210 m!5672007))

(assert (=> b!4730210 m!5672007))

(assert (=> b!4730210 m!5672009))

(assert (=> b!4730207 m!5672007))

(assert (=> d!1507440 d!1508024))

(declare-fun b!4730214 () Bool)

(declare-fun e!2950379 () Option!12392)

(declare-fun e!2950380 () Option!12392)

(assert (=> b!4730214 (= e!2950379 e!2950380)))

(declare-fun c!807838 () Bool)

(assert (=> b!4730214 (= c!807838 (and ((_ is Cons!52878) lt!1893328) (not (= (_1!30555 (h!59237 lt!1893328)) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun d!1508028 () Bool)

(declare-fun c!807837 () Bool)

(assert (=> d!1508028 (= c!807837 (and ((_ is Cons!52878) lt!1893328) (= (_1!30555 (h!59237 lt!1893328)) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1508028 (= (getValueByKey!1978 lt!1893328 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) e!2950379)))

(declare-fun b!4730213 () Bool)

(assert (=> b!4730213 (= e!2950379 (Some!12391 (_2!30555 (h!59237 lt!1893328))))))

(declare-fun b!4730215 () Bool)

(assert (=> b!4730215 (= e!2950380 (getValueByKey!1978 (t!360278 lt!1893328) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4730216 () Bool)

(assert (=> b!4730216 (= e!2950380 None!12391)))

(assert (= (and d!1508028 c!807837) b!4730213))

(assert (= (and d!1508028 (not c!807837)) b!4730214))

(assert (= (and b!4730214 c!807838) b!4730215))

(assert (= (and b!4730214 (not c!807838)) b!4730216))

(declare-fun m!5672019 () Bool)

(assert (=> b!4730215 m!5672019))

(assert (=> d!1507440 d!1508028))

(declare-fun d!1508032 () Bool)

(assert (=> d!1508032 (= (getValueByKey!1978 lt!1893328 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (Some!12391 (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893729 () Unit!131227)

(declare-fun choose!33449 (List!53002 K!14230 V!14476) Unit!131227)

(assert (=> d!1508032 (= lt!1893729 (choose!33449 lt!1893328 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun e!2950388 () Bool)

(assert (=> d!1508032 e!2950388))

(declare-fun res!2002470 () Bool)

(assert (=> d!1508032 (=> (not res!2002470) (not e!2950388))))

(assert (=> d!1508032 (= res!2002470 (invariantList!1523 lt!1893328))))

(assert (=> d!1508032 (= (lemmaContainsTupThenGetReturnValue!1096 lt!1893328 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893729)))

(declare-fun b!4730227 () Bool)

(declare-fun res!2002471 () Bool)

(assert (=> b!4730227 (=> (not res!2002471) (not e!2950388))))

(assert (=> b!4730227 (= res!2002471 (containsKey!3406 lt!1893328 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4730228 () Bool)

(assert (=> b!4730228 (= e!2950388 (contains!16242 lt!1893328 (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (= (and d!1508032 res!2002470) b!4730227))

(assert (= (and b!4730227 res!2002471) b!4730228))

(assert (=> d!1508032 m!5670459))

(declare-fun m!5672039 () Bool)

(assert (=> d!1508032 m!5672039))

(declare-fun m!5672041 () Bool)

(assert (=> d!1508032 m!5672041))

(declare-fun m!5672043 () Bool)

(assert (=> b!4730227 m!5672043))

(declare-fun m!5672045 () Bool)

(assert (=> b!4730228 m!5672045))

(assert (=> d!1507440 d!1508032))

(declare-fun bm!330864 () Bool)

(declare-fun call!330872 () List!53002)

(declare-fun call!330870 () List!53002)

(assert (=> bm!330864 (= call!330872 call!330870)))

(declare-fun c!807856 () Bool)

(declare-fun c!807854 () Bool)

(assert (=> bm!330864 (= c!807856 c!807854)))

(declare-fun b!4730286 () Bool)

(declare-fun e!2950431 () List!53002)

(assert (=> b!4730286 (= e!2950431 call!330872)))

(declare-fun b!4730287 () Bool)

(declare-fun e!2950427 () List!53002)

(declare-fun e!2950429 () List!53002)

(assert (=> b!4730287 (= e!2950427 e!2950429)))

(declare-fun res!2002504 () Bool)

(assert (=> b!4730287 (= res!2002504 ((_ is Cons!52878) (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))

(declare-fun e!2950430 () Bool)

(assert (=> b!4730287 (=> (not res!2002504) (not e!2950430))))

(declare-fun c!807857 () Bool)

(assert (=> b!4730287 (= c!807857 e!2950430)))

(declare-fun d!1508040 () Bool)

(declare-fun e!2950428 () Bool)

(assert (=> d!1508040 e!2950428))

(declare-fun res!2002503 () Bool)

(assert (=> d!1508040 (=> (not res!2002503) (not e!2950428))))

(declare-fun lt!1893788 () List!53002)

(assert (=> d!1508040 (= res!2002503 (invariantList!1523 lt!1893788))))

(assert (=> d!1508040 (= lt!1893788 e!2950427)))

(declare-fun c!807855 () Bool)

(assert (=> d!1508040 (= c!807855 (and ((_ is Cons!52878) (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) (= (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1508040 (invariantList!1523 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))

(assert (=> d!1508040 (= (insertNoDuplicatedKeys!604 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893788)))

(declare-fun b!4730288 () Bool)

(assert (=> b!4730288 (= e!2950429 call!330870)))

(declare-fun b!4730289 () Bool)

(declare-fun e!2950425 () List!53002)

(assert (=> b!4730289 (= e!2950425 (insertNoDuplicatedKeys!604 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun bm!330865 () Bool)

(declare-fun call!330871 () List!53002)

(declare-fun $colon$colon!1084 (List!53002 tuple2!54522) List!53002)

(assert (=> bm!330865 (= call!330871 ($colon$colon!1084 (ite c!807855 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) (ite c!807857 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) e!2950425)) (ite (or c!807855 c!807857) (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (ite c!807854 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))))

(declare-fun bm!330866 () Bool)

(assert (=> bm!330866 (= call!330870 call!330871)))

(declare-fun b!4730290 () Bool)

(declare-fun e!2950426 () Unit!131227)

(declare-fun Unit!131379 () Unit!131227)

(assert (=> b!4730290 (= e!2950426 Unit!131379)))

(declare-fun b!4730291 () Bool)

(assert (=> b!4730291 (= e!2950425 Nil!52878)))

(declare-fun b!4730292 () Bool)

(assert (=> b!4730292 (= e!2950427 call!330871)))

(declare-fun lt!1893793 () List!53005)

(declare-fun call!330869 () List!53005)

(assert (=> b!4730292 (= lt!1893793 call!330869)))

(declare-fun lt!1893789 () Unit!131227)

(declare-fun lemmaSubseqRefl!147 (List!53005) Unit!131227)

(assert (=> b!4730292 (= lt!1893789 (lemmaSubseqRefl!147 lt!1893793))))

(declare-fun subseq!663 (List!53005 List!53005) Bool)

(assert (=> b!4730292 (subseq!663 lt!1893793 lt!1893793)))

(declare-fun lt!1893785 () Unit!131227)

(assert (=> b!4730292 (= lt!1893785 lt!1893789)))

(declare-fun b!4730293 () Bool)

(declare-fun lt!1893786 () List!53002)

(assert (=> b!4730293 (= e!2950431 lt!1893786)))

(assert (=> b!4730293 (= lt!1893786 call!330872)))

(declare-fun c!807853 () Bool)

(assert (=> b!4730293 (= c!807853 (containsKey!3406 (insertNoDuplicatedKeys!604 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893791 () Unit!131227)

(assert (=> b!4730293 (= lt!1893791 e!2950426)))

(declare-fun b!4730294 () Bool)

(assert (=> b!4730294 (= c!807854 ((_ is Cons!52878) (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> b!4730294 (= e!2950429 e!2950431)))

(declare-fun b!4730295 () Bool)

(assert (=> b!4730295 (= e!2950428 (= (content!9422 (getKeysList!963 lt!1893788)) ((_ map or) (content!9422 (getKeysList!963 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (store ((as const (Array K!14230 Bool)) false) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) true))))))

(declare-fun b!4730296 () Bool)

(declare-fun res!2002501 () Bool)

(assert (=> b!4730296 (=> (not res!2002501) (not e!2950428))))

(assert (=> b!4730296 (= res!2002501 (contains!16242 lt!1893788 (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun b!4730297 () Bool)

(declare-fun res!2002502 () Bool)

(assert (=> b!4730297 (=> (not res!2002502) (not e!2950428))))

(assert (=> b!4730297 (= res!2002502 (containsKey!3406 lt!1893788 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4730298 () Bool)

(assert (=> b!4730298 false))

(declare-fun lt!1893790 () Unit!131227)

(declare-fun lt!1893792 () Unit!131227)

(assert (=> b!4730298 (= lt!1893790 lt!1893792)))

(assert (=> b!4730298 (containsKey!3406 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> b!4730298 (= lt!1893792 (lemmaInGetKeysListThenContainsKey!962 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893784 () Unit!131227)

(declare-fun lt!1893787 () Unit!131227)

(assert (=> b!4730298 (= lt!1893784 lt!1893787)))

(assert (=> b!4730298 (contains!16243 call!330869 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893783 () List!53002)

(assert (=> b!4730298 (= lt!1893787 (lemmaInListThenGetKeysListContains!958 lt!1893783 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> b!4730298 (= lt!1893783 (insertNoDuplicatedKeys!604 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun Unit!131380 () Unit!131227)

(assert (=> b!4730298 (= e!2950426 Unit!131380)))

(declare-fun b!4730299 () Bool)

(assert (=> b!4730299 (= e!2950430 (not (containsKey!3406 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun bm!330867 () Bool)

(assert (=> bm!330867 (= call!330869 (getKeysList!963 (ite c!807855 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) lt!1893783)))))

(assert (= (and d!1508040 c!807855) b!4730292))

(assert (= (and d!1508040 (not c!807855)) b!4730287))

(assert (= (and b!4730287 res!2002504) b!4730299))

(assert (= (and b!4730287 c!807857) b!4730288))

(assert (= (and b!4730287 (not c!807857)) b!4730294))

(assert (= (and b!4730294 c!807854) b!4730293))

(assert (= (and b!4730294 (not c!807854)) b!4730286))

(assert (= (and b!4730293 c!807853) b!4730298))

(assert (= (and b!4730293 (not c!807853)) b!4730290))

(assert (= (or b!4730293 b!4730286) bm!330864))

(assert (= (and bm!330864 c!807856) b!4730289))

(assert (= (and bm!330864 (not c!807856)) b!4730291))

(assert (= (or b!4730288 bm!330864) bm!330866))

(assert (= (or b!4730292 b!4730298) bm!330867))

(assert (= (or b!4730292 bm!330866) bm!330865))

(assert (= (and d!1508040 res!2002503) b!4730297))

(assert (= (and b!4730297 res!2002502) b!4730296))

(assert (= (and b!4730296 res!2002501) b!4730295))

(declare-fun m!5672143 () Bool)

(assert (=> b!4730295 m!5672143))

(declare-fun m!5672145 () Bool)

(assert (=> b!4730295 m!5672145))

(declare-fun m!5672147 () Bool)

(assert (=> b!4730295 m!5672147))

(assert (=> b!4730295 m!5672145))

(declare-fun m!5672149 () Bool)

(assert (=> b!4730295 m!5672149))

(assert (=> b!4730295 m!5672143))

(declare-fun m!5672153 () Bool)

(assert (=> b!4730295 m!5672153))

(declare-fun m!5672157 () Bool)

(assert (=> b!4730296 m!5672157))

(declare-fun m!5672159 () Bool)

(assert (=> b!4730292 m!5672159))

(declare-fun m!5672161 () Bool)

(assert (=> b!4730292 m!5672161))

(declare-fun m!5672163 () Bool)

(assert (=> d!1508040 m!5672163))

(declare-fun m!5672165 () Bool)

(assert (=> d!1508040 m!5672165))

(declare-fun m!5672167 () Bool)

(assert (=> b!4730299 m!5672167))

(declare-fun m!5672169 () Bool)

(assert (=> bm!330865 m!5672169))

(declare-fun m!5672171 () Bool)

(assert (=> b!4730289 m!5672171))

(declare-fun m!5672173 () Bool)

(assert (=> b!4730297 m!5672173))

(assert (=> b!4730293 m!5672171))

(assert (=> b!4730293 m!5672171))

(declare-fun m!5672175 () Bool)

(assert (=> b!4730293 m!5672175))

(declare-fun m!5672177 () Bool)

(assert (=> bm!330867 m!5672177))

(declare-fun m!5672179 () Bool)

(assert (=> b!4730298 m!5672179))

(declare-fun m!5672181 () Bool)

(assert (=> b!4730298 m!5672181))

(assert (=> b!4730298 m!5672171))

(declare-fun m!5672183 () Bool)

(assert (=> b!4730298 m!5672183))

(declare-fun m!5672185 () Bool)

(assert (=> b!4730298 m!5672185))

(assert (=> d!1507440 d!1508040))

(declare-fun d!1508070 () Bool)

(declare-fun res!2002511 () Bool)

(declare-fun e!2950439 () Bool)

(assert (=> d!1508070 (=> res!2002511 e!2950439)))

(assert (=> d!1508070 (= res!2002511 (and ((_ is Cons!52879) (t!360279 (toList!5953 lm!2023))) (= (_1!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))) lt!1892762)))))

(assert (=> d!1508070 (= (containsKey!3405 (t!360279 (toList!5953 lm!2023)) lt!1892762) e!2950439)))

(declare-fun b!4730310 () Bool)

(declare-fun e!2950440 () Bool)

(assert (=> b!4730310 (= e!2950439 e!2950440)))

(declare-fun res!2002512 () Bool)

(assert (=> b!4730310 (=> (not res!2002512) (not e!2950440))))

(assert (=> b!4730310 (= res!2002512 (and (or (not ((_ is Cons!52879) (t!360279 (toList!5953 lm!2023)))) (bvsle (_1!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))) lt!1892762)) ((_ is Cons!52879) (t!360279 (toList!5953 lm!2023))) (bvslt (_1!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))) lt!1892762)))))

(declare-fun b!4730311 () Bool)

(assert (=> b!4730311 (= e!2950440 (containsKey!3405 (t!360279 (t!360279 (toList!5953 lm!2023))) lt!1892762))))

(assert (= (and d!1508070 (not res!2002511)) b!4730310))

(assert (= (and b!4730310 res!2002512) b!4730311))

(declare-fun m!5672197 () Bool)

(assert (=> b!4730311 m!5672197))

(assert (=> b!4729432 d!1508070))

(declare-fun d!1508074 () Bool)

(declare-fun res!2002515 () Bool)

(declare-fun e!2950443 () Bool)

(assert (=> d!1508074 (=> res!2002515 e!2950443)))

(assert (=> d!1508074 (= res!2002515 ((_ is Nil!52878) (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> d!1508074 (= (forall!11627 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) (ite c!807618 lambda!216871 lambda!216873)) e!2950443)))

(declare-fun b!4730314 () Bool)

(declare-fun e!2950444 () Bool)

(assert (=> b!4730314 (= e!2950443 e!2950444)))

(declare-fun res!2002516 () Bool)

(assert (=> b!4730314 (=> (not res!2002516) (not e!2950444))))

(assert (=> b!4730314 (= res!2002516 (dynLambda!21841 (ite c!807618 lambda!216871 lambda!216873) (h!59237 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun b!4730315 () Bool)

(assert (=> b!4730315 (= e!2950444 (forall!11627 (t!360278 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (ite c!807618 lambda!216871 lambda!216873)))))

(assert (= (and d!1508074 (not res!2002515)) b!4730314))

(assert (= (and b!4730314 res!2002516) b!4730315))

(declare-fun b_lambda!180273 () Bool)

(assert (=> (not b_lambda!180273) (not b!4730314)))

(declare-fun m!5672207 () Bool)

(assert (=> b!4730314 m!5672207))

(declare-fun m!5672209 () Bool)

(assert (=> b!4730315 m!5672209))

(assert (=> b!4729550 d!1508074))

(declare-fun d!1508082 () Bool)

(declare-fun res!2002524 () Bool)

(declare-fun e!2950455 () Bool)

(assert (=> d!1508082 (=> res!2002524 e!2950455)))

(assert (=> d!1508082 (= res!2002524 (and ((_ is Cons!52878) lt!1893378) (= (_1!30555 (h!59237 lt!1893378)) key!4653)))))

(assert (=> d!1508082 (= (containsKey!3402 lt!1893378 key!4653) e!2950455)))

(declare-fun b!4730329 () Bool)

(declare-fun e!2950456 () Bool)

(assert (=> b!4730329 (= e!2950455 e!2950456)))

(declare-fun res!2002525 () Bool)

(assert (=> b!4730329 (=> (not res!2002525) (not e!2950456))))

(assert (=> b!4730329 (= res!2002525 ((_ is Cons!52878) lt!1893378))))

(declare-fun b!4730330 () Bool)

(assert (=> b!4730330 (= e!2950456 (containsKey!3402 (t!360278 lt!1893378) key!4653))))

(assert (= (and d!1508082 (not res!2002524)) b!4730329))

(assert (= (and b!4730329 res!2002525) b!4730330))

(declare-fun m!5672211 () Bool)

(assert (=> b!4730330 m!5672211))

(assert (=> d!1507474 d!1508082))

(declare-fun d!1508084 () Bool)

(declare-fun res!2002526 () Bool)

(declare-fun e!2950457 () Bool)

(assert (=> d!1508084 (=> res!2002526 e!2950457)))

(assert (=> d!1508084 (= res!2002526 (not ((_ is Cons!52878) (t!360278 (tail!9041 oldBucket!34)))))))

(assert (=> d!1508084 (= (noDuplicateKeys!2032 (t!360278 (tail!9041 oldBucket!34))) e!2950457)))

(declare-fun b!4730331 () Bool)

(declare-fun e!2950458 () Bool)

(assert (=> b!4730331 (= e!2950457 e!2950458)))

(declare-fun res!2002527 () Bool)

(assert (=> b!4730331 (=> (not res!2002527) (not e!2950458))))

(assert (=> b!4730331 (= res!2002527 (not (containsKey!3402 (t!360278 (t!360278 (tail!9041 oldBucket!34))) (_1!30555 (h!59237 (t!360278 (tail!9041 oldBucket!34)))))))))

(declare-fun b!4730332 () Bool)

(assert (=> b!4730332 (= e!2950458 (noDuplicateKeys!2032 (t!360278 (t!360278 (tail!9041 oldBucket!34)))))))

(assert (= (and d!1508084 (not res!2002526)) b!4730331))

(assert (= (and b!4730331 res!2002527) b!4730332))

(declare-fun m!5672213 () Bool)

(assert (=> b!4730331 m!5672213))

(declare-fun m!5672215 () Bool)

(assert (=> b!4730332 m!5672215))

(assert (=> d!1507474 d!1508084))

(declare-fun d!1508086 () Bool)

(declare-fun e!2950462 () Bool)

(assert (=> d!1508086 e!2950462))

(declare-fun res!2002530 () Bool)

(assert (=> d!1508086 (=> res!2002530 e!2950462)))

(declare-fun e!2950463 () Bool)

(assert (=> d!1508086 (= res!2002530 e!2950463)))

(declare-fun res!2002528 () Bool)

(assert (=> d!1508086 (=> (not res!2002528) (not e!2950463))))

(declare-fun lt!1893803 () Bool)

(assert (=> d!1508086 (= res!2002528 (not lt!1893803))))

(declare-fun lt!1893806 () Bool)

(assert (=> d!1508086 (= lt!1893803 lt!1893806)))

(declare-fun lt!1893808 () Unit!131227)

(declare-fun e!2950461 () Unit!131227)

(assert (=> d!1508086 (= lt!1893808 e!2950461)))

(declare-fun c!807864 () Bool)

(assert (=> d!1508086 (= c!807864 lt!1893806)))

(assert (=> d!1508086 (= lt!1893806 (containsKey!3406 (toList!5954 lt!1893354) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> d!1508086 (= (contains!16239 lt!1893354 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) lt!1893803)))

(declare-fun b!4730333 () Bool)

(assert (=> b!4730333 false))

(declare-fun lt!1893807 () Unit!131227)

(declare-fun lt!1893804 () Unit!131227)

(assert (=> b!4730333 (= lt!1893807 lt!1893804)))

(assert (=> b!4730333 (containsKey!3406 (toList!5954 lt!1893354) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> b!4730333 (= lt!1893804 (lemmaInGetKeysListThenContainsKey!962 (toList!5954 lt!1893354) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun e!2950459 () Unit!131227)

(declare-fun Unit!131381 () Unit!131227)

(assert (=> b!4730333 (= e!2950459 Unit!131381)))

(declare-fun b!4730334 () Bool)

(declare-fun Unit!131382 () Unit!131227)

(assert (=> b!4730334 (= e!2950459 Unit!131382)))

(declare-fun b!4730335 () Bool)

(declare-fun e!2950460 () List!53005)

(assert (=> b!4730335 (= e!2950460 (getKeysList!963 (toList!5954 lt!1893354)))))

(declare-fun b!4730336 () Bool)

(declare-fun e!2950464 () Bool)

(assert (=> b!4730336 (= e!2950464 (contains!16243 (keys!19004 lt!1893354) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun b!4730337 () Bool)

(declare-fun lt!1893810 () Unit!131227)

(assert (=> b!4730337 (= e!2950461 lt!1893810)))

(declare-fun lt!1893805 () Unit!131227)

(assert (=> b!4730337 (= lt!1893805 (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 lt!1893354) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> b!4730337 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893354) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893809 () Unit!131227)

(assert (=> b!4730337 (= lt!1893809 lt!1893805)))

(assert (=> b!4730337 (= lt!1893810 (lemmaInListThenGetKeysListContains!958 (toList!5954 lt!1893354) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun call!330874 () Bool)

(assert (=> b!4730337 call!330874))

(declare-fun bm!330869 () Bool)

(assert (=> bm!330869 (= call!330874 (contains!16243 e!2950460 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun c!807865 () Bool)

(assert (=> bm!330869 (= c!807865 c!807864)))

(declare-fun b!4730338 () Bool)

(assert (=> b!4730338 (= e!2950460 (keys!19004 lt!1893354))))

(declare-fun b!4730339 () Bool)

(assert (=> b!4730339 (= e!2950461 e!2950459)))

(declare-fun c!807863 () Bool)

(assert (=> b!4730339 (= c!807863 call!330874)))

(declare-fun b!4730340 () Bool)

(assert (=> b!4730340 (= e!2950462 e!2950464)))

(declare-fun res!2002529 () Bool)

(assert (=> b!4730340 (=> (not res!2002529) (not e!2950464))))

(assert (=> b!4730340 (= res!2002529 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893354) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))))

(declare-fun b!4730341 () Bool)

(assert (=> b!4730341 (= e!2950463 (not (contains!16243 (keys!19004 lt!1893354) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))))

(assert (= (and d!1508086 c!807864) b!4730337))

(assert (= (and d!1508086 (not c!807864)) b!4730339))

(assert (= (and b!4730339 c!807863) b!4730333))

(assert (= (and b!4730339 (not c!807863)) b!4730334))

(assert (= (or b!4730337 b!4730339) bm!330869))

(assert (= (and bm!330869 c!807865) b!4730335))

(assert (= (and bm!330869 (not c!807865)) b!4730338))

(assert (= (and d!1508086 res!2002528) b!4730341))

(assert (= (and d!1508086 (not res!2002530)) b!4730340))

(assert (= (and b!4730340 res!2002529) b!4730336))

(declare-fun m!5672233 () Bool)

(assert (=> b!4730335 m!5672233))

(declare-fun m!5672235 () Bool)

(assert (=> b!4730333 m!5672235))

(declare-fun m!5672237 () Bool)

(assert (=> b!4730333 m!5672237))

(declare-fun m!5672239 () Bool)

(assert (=> bm!330869 m!5672239))

(declare-fun m!5672241 () Bool)

(assert (=> b!4730340 m!5672241))

(assert (=> b!4730340 m!5672241))

(declare-fun m!5672243 () Bool)

(assert (=> b!4730340 m!5672243))

(declare-fun m!5672245 () Bool)

(assert (=> b!4730336 m!5672245))

(assert (=> b!4730336 m!5672245))

(declare-fun m!5672249 () Bool)

(assert (=> b!4730336 m!5672249))

(assert (=> d!1508086 m!5672235))

(declare-fun m!5672251 () Bool)

(assert (=> b!4730337 m!5672251))

(assert (=> b!4730337 m!5672241))

(assert (=> b!4730337 m!5672241))

(assert (=> b!4730337 m!5672243))

(declare-fun m!5672253 () Bool)

(assert (=> b!4730337 m!5672253))

(assert (=> b!4730341 m!5672245))

(assert (=> b!4730341 m!5672245))

(assert (=> b!4730341 m!5672249))

(assert (=> b!4730338 m!5672245))

(assert (=> b!4729530 d!1508086))

(declare-fun d!1508092 () Bool)

(declare-fun res!2002531 () Bool)

(declare-fun e!2950467 () Bool)

(assert (=> d!1508092 (=> res!2002531 e!2950467)))

(assert (=> d!1508092 (= res!2002531 ((_ is Nil!52878) (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> d!1508092 (= (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) lambda!216943) e!2950467)))

(declare-fun b!4730346 () Bool)

(declare-fun e!2950468 () Bool)

(assert (=> b!4730346 (= e!2950467 e!2950468)))

(declare-fun res!2002532 () Bool)

(assert (=> b!4730346 (=> (not res!2002532) (not e!2950468))))

(assert (=> b!4730346 (= res!2002532 (dynLambda!21841 lambda!216943 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun b!4730347 () Bool)

(assert (=> b!4730347 (= e!2950468 (forall!11627 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))))) lambda!216943))))

(assert (= (and d!1508092 (not res!2002531)) b!4730346))

(assert (= (and b!4730346 res!2002532) b!4730347))

(declare-fun b_lambda!180275 () Bool)

(assert (=> (not b_lambda!180275) (not b!4730346)))

(declare-fun m!5672255 () Bool)

(assert (=> b!4730346 m!5672255))

(declare-fun m!5672257 () Bool)

(assert (=> b!4730347 m!5672257))

(assert (=> b!4729530 d!1508092))

(declare-fun d!1508094 () Bool)

(declare-fun res!2002533 () Bool)

(declare-fun e!2950469 () Bool)

(assert (=> d!1508094 (=> res!2002533 e!2950469)))

(assert (=> d!1508094 (= res!2002533 ((_ is Nil!52878) (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> d!1508094 (= (forall!11627 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))) lambda!216944) e!2950469)))

(declare-fun b!4730348 () Bool)

(declare-fun e!2950470 () Bool)

(assert (=> b!4730348 (= e!2950469 e!2950470)))

(declare-fun res!2002534 () Bool)

(assert (=> b!4730348 (=> (not res!2002534) (not e!2950470))))

(assert (=> b!4730348 (= res!2002534 (dynLambda!21841 lambda!216944 (h!59237 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun b!4730349 () Bool)

(assert (=> b!4730349 (= e!2950470 (forall!11627 (t!360278 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lambda!216944))))

(assert (= (and d!1508094 (not res!2002533)) b!4730348))

(assert (= (and b!4730348 res!2002534) b!4730349))

(declare-fun b_lambda!180277 () Bool)

(assert (=> (not b_lambda!180277) (not b!4730348)))

(declare-fun m!5672259 () Bool)

(assert (=> b!4730348 m!5672259))

(declare-fun m!5672261 () Bool)

(assert (=> b!4730349 m!5672261))

(assert (=> b!4729530 d!1508094))

(declare-fun d!1508096 () Bool)

(declare-fun res!2002535 () Bool)

(declare-fun e!2950471 () Bool)

(assert (=> d!1508096 (=> res!2002535 e!2950471)))

(assert (=> d!1508096 (= res!2002535 ((_ is Nil!52878) (toList!5954 lt!1893354)))))

(assert (=> d!1508096 (= (forall!11627 (toList!5954 lt!1893354) lambda!216944) e!2950471)))

(declare-fun b!4730350 () Bool)

(declare-fun e!2950472 () Bool)

(assert (=> b!4730350 (= e!2950471 e!2950472)))

(declare-fun res!2002536 () Bool)

(assert (=> b!4730350 (=> (not res!2002536) (not e!2950472))))

(assert (=> b!4730350 (= res!2002536 (dynLambda!21841 lambda!216944 (h!59237 (toList!5954 lt!1893354))))))

(declare-fun b!4730351 () Bool)

(assert (=> b!4730351 (= e!2950472 (forall!11627 (t!360278 (toList!5954 lt!1893354)) lambda!216944))))

(assert (= (and d!1508096 (not res!2002535)) b!4730350))

(assert (= (and b!4730350 res!2002536) b!4730351))

(declare-fun b_lambda!180279 () Bool)

(assert (=> (not b_lambda!180279) (not b!4730350)))

(declare-fun m!5672263 () Bool)

(assert (=> b!4730350 m!5672263))

(declare-fun m!5672265 () Bool)

(assert (=> b!4730351 m!5672265))

(assert (=> b!4729530 d!1508096))

(assert (=> b!4729530 d!1507936))

(declare-fun d!1508100 () Bool)

(declare-fun res!2002537 () Bool)

(declare-fun e!2950473 () Bool)

(assert (=> d!1508100 (=> res!2002537 e!2950473)))

(assert (=> d!1508100 (= res!2002537 ((_ is Nil!52878) (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> d!1508100 (= (forall!11627 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))) lambda!216944) e!2950473)))

(declare-fun b!4730352 () Bool)

(declare-fun e!2950474 () Bool)

(assert (=> b!4730352 (= e!2950473 e!2950474)))

(declare-fun res!2002538 () Bool)

(assert (=> b!4730352 (=> (not res!2002538) (not e!2950474))))

(assert (=> b!4730352 (= res!2002538 (dynLambda!21841 lambda!216944 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(declare-fun b!4730353 () Bool)

(assert (=> b!4730353 (= e!2950474 (forall!11627 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))) lambda!216944))))

(assert (= (and d!1508100 (not res!2002537)) b!4730352))

(assert (= (and b!4730352 res!2002538) b!4730353))

(declare-fun b_lambda!180281 () Bool)

(assert (=> (not b_lambda!180281) (not b!4730352)))

(declare-fun m!5672267 () Bool)

(assert (=> b!4730352 m!5672267))

(assert (=> b!4730353 m!5670547))

(assert (=> b!4729530 d!1508100))

(declare-fun d!1508102 () Bool)

(assert (=> d!1508102 (dynLambda!21841 lambda!216944 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))

(declare-fun lt!1893811 () Unit!131227)

(assert (=> d!1508102 (= lt!1893811 (choose!33440 (toList!5954 lt!1893354) lambda!216944 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(declare-fun e!2950475 () Bool)

(assert (=> d!1508102 e!2950475))

(declare-fun res!2002539 () Bool)

(assert (=> d!1508102 (=> (not res!2002539) (not e!2950475))))

(assert (=> d!1508102 (= res!2002539 (forall!11627 (toList!5954 lt!1893354) lambda!216944))))

(assert (=> d!1508102 (= (forallContained!3667 (toList!5954 lt!1893354) lambda!216944 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893811)))

(declare-fun b!4730354 () Bool)

(assert (=> b!4730354 (= e!2950475 (contains!16242 (toList!5954 lt!1893354) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(assert (= (and d!1508102 res!2002539) b!4730354))

(declare-fun b_lambda!180283 () Bool)

(assert (=> (not b_lambda!180283) (not d!1508102)))

(assert (=> d!1508102 m!5672267))

(declare-fun m!5672269 () Bool)

(assert (=> d!1508102 m!5672269))

(assert (=> d!1508102 m!5670539))

(declare-fun m!5672271 () Bool)

(assert (=> b!4730354 m!5672271))

(assert (=> b!4729530 d!1508102))

(declare-fun bs!1119828 () Bool)

(declare-fun b!4730358 () Bool)

(assert (= bs!1119828 (and b!4730358 d!1507090)))

(declare-fun lambda!217022 () Int)

(assert (=> bs!1119828 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893065) (= lambda!217022 lambda!216874))))

(declare-fun bs!1119829 () Bool)

(assert (= bs!1119829 (and b!4730358 d!1507436)))

(assert (=> bs!1119829 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893313) (= lambda!217022 lambda!216936))))

(declare-fun bs!1119830 () Bool)

(assert (= bs!1119830 (and b!4730358 d!1507798)))

(assert (=> bs!1119830 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893564) (= lambda!217022 lambda!216992))))

(declare-fun bs!1119831 () Bool)

(assert (= bs!1119831 (and b!4730358 d!1507074)))

(assert (=> bs!1119831 (not (= lambda!217022 lambda!216840))))

(declare-fun bs!1119832 () Bool)

(assert (= bs!1119832 (and b!4730358 b!4729490)))

(assert (=> bs!1119832 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217022 lambda!216933))))

(declare-fun bs!1119833 () Bool)

(assert (= bs!1119833 (and b!4730358 d!1507456)))

(assert (=> bs!1119833 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893054) (= lambda!217022 lambda!216941))))

(declare-fun bs!1119834 () Bool)

(assert (= bs!1119834 (and b!4730358 b!4729915)))

(assert (=> bs!1119834 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217022 lambda!216988))))

(declare-fun bs!1119835 () Bool)

(assert (= bs!1119835 (and b!4730358 d!1507458)))

(assert (=> bs!1119835 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893368) (= lambda!217022 lambda!216945))))

(declare-fun bs!1119836 () Bool)

(assert (= bs!1119836 (and b!4730358 b!4729530)))

(assert (=> bs!1119836 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217022 lambda!216943))))

(declare-fun bs!1119837 () Bool)

(assert (= bs!1119837 (and b!4730358 d!1507466)))

(assert (=> bs!1119837 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217022 lambda!216949))))

(declare-fun bs!1119838 () Bool)

(assert (= bs!1119838 (and b!4730358 b!4729039)))

(assert (=> bs!1119838 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217022 lambda!216871))))

(declare-fun bs!1119839 () Bool)

(assert (= bs!1119839 (and b!4730358 b!4729036)))

(assert (=> bs!1119839 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893054) (= lambda!217022 lambda!216873))))

(declare-fun bs!1119841 () Bool)

(assert (= bs!1119841 (and b!4730358 d!1507116)))

(assert (=> bs!1119841 (not (= lambda!217022 lambda!216876))))

(assert (=> bs!1119836 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893357) (= lambda!217022 lambda!216944))))

(declare-fun bs!1119842 () Bool)

(assert (= bs!1119842 (and b!4730358 b!4729487)))

(assert (=> bs!1119842 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217022 lambda!216934))))

(assert (=> bs!1119839 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217022 lambda!216872))))

(declare-fun bs!1119844 () Bool)

(assert (= bs!1119844 (and b!4730358 b!4729533)))

(assert (=> bs!1119844 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217022 lambda!216942))))

(declare-fun bs!1119845 () Bool)

(assert (= bs!1119845 (and b!4730358 d!1507922)))

(assert (=> bs!1119845 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217022 lambda!217002))))

(declare-fun bs!1119846 () Bool)

(assert (= bs!1119846 (and b!4730358 b!4729912)))

(assert (=> bs!1119846 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893553) (= lambda!217022 lambda!216990))))

(assert (=> bs!1119842 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893302) (= lambda!217022 lambda!216935))))

(declare-fun bs!1119847 () Bool)

(assert (= bs!1119847 (and b!4730358 d!1507900)))

(assert (=> bs!1119847 (not (= lambda!217022 lambda!216996))))

(declare-fun bs!1119848 () Bool)

(assert (= bs!1119848 (and b!4730358 d!1507846)))

(assert (=> bs!1119848 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893302) (= lambda!217022 lambda!216993))))

(assert (=> bs!1119846 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217022 lambda!216989))))

(assert (=> b!4730358 true))

(declare-fun bs!1119849 () Bool)

(declare-fun b!4730355 () Bool)

(assert (= bs!1119849 (and b!4730355 d!1507090)))

(declare-fun lambda!217023 () Int)

(assert (=> bs!1119849 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893065) (= lambda!217023 lambda!216874))))

(declare-fun bs!1119850 () Bool)

(assert (= bs!1119850 (and b!4730355 d!1507798)))

(assert (=> bs!1119850 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893564) (= lambda!217023 lambda!216992))))

(declare-fun bs!1119851 () Bool)

(assert (= bs!1119851 (and b!4730355 d!1507074)))

(assert (=> bs!1119851 (not (= lambda!217023 lambda!216840))))

(declare-fun bs!1119852 () Bool)

(assert (= bs!1119852 (and b!4730355 b!4729490)))

(assert (=> bs!1119852 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217023 lambda!216933))))

(declare-fun bs!1119853 () Bool)

(assert (= bs!1119853 (and b!4730355 d!1507456)))

(assert (=> bs!1119853 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893054) (= lambda!217023 lambda!216941))))

(declare-fun bs!1119854 () Bool)

(assert (= bs!1119854 (and b!4730355 b!4729915)))

(assert (=> bs!1119854 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217023 lambda!216988))))

(declare-fun bs!1119855 () Bool)

(assert (= bs!1119855 (and b!4730355 d!1507458)))

(assert (=> bs!1119855 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893368) (= lambda!217023 lambda!216945))))

(declare-fun bs!1119856 () Bool)

(assert (= bs!1119856 (and b!4730355 b!4729530)))

(assert (=> bs!1119856 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217023 lambda!216943))))

(declare-fun bs!1119857 () Bool)

(assert (= bs!1119857 (and b!4730355 d!1507466)))

(assert (=> bs!1119857 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217023 lambda!216949))))

(declare-fun bs!1119858 () Bool)

(assert (= bs!1119858 (and b!4730355 b!4729039)))

(assert (=> bs!1119858 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217023 lambda!216871))))

(declare-fun bs!1119859 () Bool)

(assert (= bs!1119859 (and b!4730355 b!4729036)))

(assert (=> bs!1119859 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893054) (= lambda!217023 lambda!216873))))

(declare-fun bs!1119860 () Bool)

(assert (= bs!1119860 (and b!4730355 d!1507116)))

(assert (=> bs!1119860 (not (= lambda!217023 lambda!216876))))

(assert (=> bs!1119856 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893357) (= lambda!217023 lambda!216944))))

(declare-fun bs!1119861 () Bool)

(assert (= bs!1119861 (and b!4730355 b!4730358)))

(assert (=> bs!1119861 (= lambda!217023 lambda!217022)))

(declare-fun bs!1119862 () Bool)

(assert (= bs!1119862 (and b!4730355 d!1507436)))

(assert (=> bs!1119862 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893313) (= lambda!217023 lambda!216936))))

(declare-fun bs!1119863 () Bool)

(assert (= bs!1119863 (and b!4730355 b!4729487)))

(assert (=> bs!1119863 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217023 lambda!216934))))

(assert (=> bs!1119859 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217023 lambda!216872))))

(declare-fun bs!1119864 () Bool)

(assert (= bs!1119864 (and b!4730355 b!4729533)))

(assert (=> bs!1119864 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217023 lambda!216942))))

(declare-fun bs!1119865 () Bool)

(assert (= bs!1119865 (and b!4730355 d!1507922)))

(assert (=> bs!1119865 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217023 lambda!217002))))

(declare-fun bs!1119866 () Bool)

(assert (= bs!1119866 (and b!4730355 b!4729912)))

(assert (=> bs!1119866 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893553) (= lambda!217023 lambda!216990))))

(assert (=> bs!1119863 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893302) (= lambda!217023 lambda!216935))))

(declare-fun bs!1119867 () Bool)

(assert (= bs!1119867 (and b!4730355 d!1507900)))

(assert (=> bs!1119867 (not (= lambda!217023 lambda!216996))))

(declare-fun bs!1119868 () Bool)

(assert (= bs!1119868 (and b!4730355 d!1507846)))

(assert (=> bs!1119868 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893302) (= lambda!217023 lambda!216993))))

(assert (=> bs!1119866 (= (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217023 lambda!216989))))

(assert (=> b!4730355 true))

(declare-fun lambda!217024 () Int)

(declare-fun lt!1893817 () ListMap!5317)

(assert (=> bs!1119849 (= (= lt!1893817 lt!1893065) (= lambda!217024 lambda!216874))))

(assert (=> bs!1119850 (= (= lt!1893817 lt!1893564) (= lambda!217024 lambda!216992))))

(assert (=> bs!1119851 (not (= lambda!217024 lambda!216840))))

(assert (=> bs!1119852 (= (= lt!1893817 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217024 lambda!216933))))

(assert (=> bs!1119853 (= (= lt!1893817 lt!1893054) (= lambda!217024 lambda!216941))))

(assert (=> bs!1119854 (= (= lt!1893817 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217024 lambda!216988))))

(assert (=> b!4730355 (= (= lt!1893817 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217024 lambda!217023))))

(assert (=> bs!1119855 (= (= lt!1893817 lt!1893368) (= lambda!217024 lambda!216945))))

(assert (=> bs!1119856 (= (= lt!1893817 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217024 lambda!216943))))

(assert (=> bs!1119857 (= (= lt!1893817 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217024 lambda!216949))))

(assert (=> bs!1119858 (= (= lt!1893817 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217024 lambda!216871))))

(assert (=> bs!1119859 (= (= lt!1893817 lt!1893054) (= lambda!217024 lambda!216873))))

(assert (=> bs!1119860 (not (= lambda!217024 lambda!216876))))

(assert (=> bs!1119856 (= (= lt!1893817 lt!1893357) (= lambda!217024 lambda!216944))))

(assert (=> bs!1119861 (= (= lt!1893817 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217024 lambda!217022))))

(assert (=> bs!1119862 (= (= lt!1893817 lt!1893313) (= lambda!217024 lambda!216936))))

(assert (=> bs!1119863 (= (= lt!1893817 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217024 lambda!216934))))

(assert (=> bs!1119859 (= (= lt!1893817 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217024 lambda!216872))))

(assert (=> bs!1119864 (= (= lt!1893817 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217024 lambda!216942))))

(assert (=> bs!1119865 (= (= lt!1893817 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217024 lambda!217002))))

(assert (=> bs!1119866 (= (= lt!1893817 lt!1893553) (= lambda!217024 lambda!216990))))

(assert (=> bs!1119863 (= (= lt!1893817 lt!1893302) (= lambda!217024 lambda!216935))))

(assert (=> bs!1119867 (not (= lambda!217024 lambda!216996))))

(assert (=> bs!1119868 (= (= lt!1893817 lt!1893302) (= lambda!217024 lambda!216993))))

(assert (=> bs!1119866 (= (= lt!1893817 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217024 lambda!216989))))

(assert (=> b!4730355 true))

(declare-fun bs!1119869 () Bool)

(declare-fun d!1508104 () Bool)

(assert (= bs!1119869 (and d!1508104 d!1507090)))

(declare-fun lambda!217025 () Int)

(declare-fun lt!1893828 () ListMap!5317)

(assert (=> bs!1119869 (= (= lt!1893828 lt!1893065) (= lambda!217025 lambda!216874))))

(declare-fun bs!1119870 () Bool)

(assert (= bs!1119870 (and d!1508104 d!1507798)))

(assert (=> bs!1119870 (= (= lt!1893828 lt!1893564) (= lambda!217025 lambda!216992))))

(declare-fun bs!1119871 () Bool)

(assert (= bs!1119871 (and d!1508104 d!1507074)))

(assert (=> bs!1119871 (not (= lambda!217025 lambda!216840))))

(declare-fun bs!1119872 () Bool)

(assert (= bs!1119872 (and d!1508104 b!4729490)))

(assert (=> bs!1119872 (= (= lt!1893828 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217025 lambda!216933))))

(declare-fun bs!1119873 () Bool)

(assert (= bs!1119873 (and d!1508104 d!1507456)))

(assert (=> bs!1119873 (= (= lt!1893828 lt!1893054) (= lambda!217025 lambda!216941))))

(declare-fun bs!1119875 () Bool)

(assert (= bs!1119875 (and d!1508104 b!4729915)))

(assert (=> bs!1119875 (= (= lt!1893828 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217025 lambda!216988))))

(declare-fun bs!1119876 () Bool)

(assert (= bs!1119876 (and d!1508104 b!4730355)))

(assert (=> bs!1119876 (= (= lt!1893828 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217025 lambda!217023))))

(declare-fun bs!1119878 () Bool)

(assert (= bs!1119878 (and d!1508104 b!4729530)))

(assert (=> bs!1119878 (= (= lt!1893828 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217025 lambda!216943))))

(declare-fun bs!1119880 () Bool)

(assert (= bs!1119880 (and d!1508104 d!1507466)))

(assert (=> bs!1119880 (= (= lt!1893828 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217025 lambda!216949))))

(declare-fun bs!1119881 () Bool)

(assert (= bs!1119881 (and d!1508104 b!4729039)))

(assert (=> bs!1119881 (= (= lt!1893828 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217025 lambda!216871))))

(declare-fun bs!1119883 () Bool)

(assert (= bs!1119883 (and d!1508104 b!4729036)))

(assert (=> bs!1119883 (= (= lt!1893828 lt!1893054) (= lambda!217025 lambda!216873))))

(declare-fun bs!1119885 () Bool)

(assert (= bs!1119885 (and d!1508104 d!1507116)))

(assert (=> bs!1119885 (not (= lambda!217025 lambda!216876))))

(assert (=> bs!1119878 (= (= lt!1893828 lt!1893357) (= lambda!217025 lambda!216944))))

(declare-fun bs!1119887 () Bool)

(assert (= bs!1119887 (and d!1508104 b!4730358)))

(assert (=> bs!1119887 (= (= lt!1893828 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217025 lambda!217022))))

(declare-fun bs!1119889 () Bool)

(assert (= bs!1119889 (and d!1508104 d!1507436)))

(assert (=> bs!1119889 (= (= lt!1893828 lt!1893313) (= lambda!217025 lambda!216936))))

(declare-fun bs!1119891 () Bool)

(assert (= bs!1119891 (and d!1508104 b!4729487)))

(assert (=> bs!1119891 (= (= lt!1893828 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217025 lambda!216934))))

(assert (=> bs!1119883 (= (= lt!1893828 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217025 lambda!216872))))

(declare-fun bs!1119895 () Bool)

(assert (= bs!1119895 (and d!1508104 d!1507458)))

(assert (=> bs!1119895 (= (= lt!1893828 lt!1893368) (= lambda!217025 lambda!216945))))

(assert (=> bs!1119876 (= (= lt!1893828 lt!1893817) (= lambda!217025 lambda!217024))))

(declare-fun bs!1119897 () Bool)

(assert (= bs!1119897 (and d!1508104 b!4729533)))

(assert (=> bs!1119897 (= (= lt!1893828 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217025 lambda!216942))))

(declare-fun bs!1119899 () Bool)

(assert (= bs!1119899 (and d!1508104 d!1507922)))

(assert (=> bs!1119899 (= (= lt!1893828 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217025 lambda!217002))))

(declare-fun bs!1119900 () Bool)

(assert (= bs!1119900 (and d!1508104 b!4729912)))

(assert (=> bs!1119900 (= (= lt!1893828 lt!1893553) (= lambda!217025 lambda!216990))))

(assert (=> bs!1119891 (= (= lt!1893828 lt!1893302) (= lambda!217025 lambda!216935))))

(declare-fun bs!1119902 () Bool)

(assert (= bs!1119902 (and d!1508104 d!1507900)))

(assert (=> bs!1119902 (not (= lambda!217025 lambda!216996))))

(declare-fun bs!1119903 () Bool)

(assert (= bs!1119903 (and d!1508104 d!1507846)))

(assert (=> bs!1119903 (= (= lt!1893828 lt!1893302) (= lambda!217025 lambda!216993))))

(assert (=> bs!1119900 (= (= lt!1893828 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217025 lambda!216989))))

(assert (=> d!1508104 true))

(declare-fun bm!330870 () Bool)

(declare-fun call!330876 () Unit!131227)

(assert (=> bm!330870 (= call!330876 (lemmaContainsAllItsOwnKeys!808 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun e!2950477 () ListMap!5317)

(assert (=> b!4730355 (= e!2950477 lt!1893817)))

(declare-fun lt!1893814 () ListMap!5317)

(assert (=> b!4730355 (= lt!1893814 (+!2280 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (h!59237 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> b!4730355 (= lt!1893817 (addToMapMapFromBucket!1462 (t!360278 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (h!59237 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))))

(declare-fun lt!1893821 () Unit!131227)

(assert (=> b!4730355 (= lt!1893821 call!330876)))

(assert (=> b!4730355 (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) lambda!217023)))

(declare-fun lt!1893816 () Unit!131227)

(assert (=> b!4730355 (= lt!1893816 lt!1893821)))

(assert (=> b!4730355 (forall!11627 (toList!5954 lt!1893814) lambda!217024)))

(declare-fun lt!1893830 () Unit!131227)

(declare-fun Unit!131387 () Unit!131227)

(assert (=> b!4730355 (= lt!1893830 Unit!131387)))

(assert (=> b!4730355 (forall!11627 (t!360278 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lambda!217024)))

(declare-fun lt!1893827 () Unit!131227)

(declare-fun Unit!131388 () Unit!131227)

(assert (=> b!4730355 (= lt!1893827 Unit!131388)))

(declare-fun lt!1893825 () Unit!131227)

(declare-fun Unit!131389 () Unit!131227)

(assert (=> b!4730355 (= lt!1893825 Unit!131389)))

(declare-fun lt!1893813 () Unit!131227)

(assert (=> b!4730355 (= lt!1893813 (forallContained!3667 (toList!5954 lt!1893814) lambda!217024 (h!59237 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> b!4730355 (contains!16239 lt!1893814 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893829 () Unit!131227)

(declare-fun Unit!131390 () Unit!131227)

(assert (=> b!4730355 (= lt!1893829 Unit!131390)))

(assert (=> b!4730355 (contains!16239 lt!1893817 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893819 () Unit!131227)

(declare-fun Unit!131391 () Unit!131227)

(assert (=> b!4730355 (= lt!1893819 Unit!131391)))

(declare-fun call!330877 () Bool)

(assert (=> b!4730355 call!330877))

(declare-fun lt!1893823 () Unit!131227)

(declare-fun Unit!131392 () Unit!131227)

(assert (=> b!4730355 (= lt!1893823 Unit!131392)))

(assert (=> b!4730355 (forall!11627 (toList!5954 lt!1893814) lambda!217024)))

(declare-fun lt!1893818 () Unit!131227)

(declare-fun Unit!131393 () Unit!131227)

(assert (=> b!4730355 (= lt!1893818 Unit!131393)))

(declare-fun lt!1893820 () Unit!131227)

(declare-fun Unit!131394 () Unit!131227)

(assert (=> b!4730355 (= lt!1893820 Unit!131394)))

(declare-fun lt!1893822 () Unit!131227)

(assert (=> b!4730355 (= lt!1893822 (addForallContainsKeyThenBeforeAdding!807 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893817 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (_2!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))))

(assert (=> b!4730355 (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) lambda!217024)))

(declare-fun lt!1893812 () Unit!131227)

(assert (=> b!4730355 (= lt!1893812 lt!1893822)))

(declare-fun call!330875 () Bool)

(assert (=> b!4730355 call!330875))

(declare-fun lt!1893832 () Unit!131227)

(declare-fun Unit!131395 () Unit!131227)

(assert (=> b!4730355 (= lt!1893832 Unit!131395)))

(declare-fun res!2002543 () Bool)

(assert (=> b!4730355 (= res!2002543 (forall!11627 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))) lambda!217024))))

(declare-fun e!2950478 () Bool)

(assert (=> b!4730355 (=> (not res!2002543) (not e!2950478))))

(assert (=> b!4730355 e!2950478))

(declare-fun lt!1893815 () Unit!131227)

(declare-fun Unit!131396 () Unit!131227)

(assert (=> b!4730355 (= lt!1893815 Unit!131396)))

(declare-fun b!4730356 () Bool)

(declare-fun res!2002544 () Bool)

(declare-fun e!2950476 () Bool)

(assert (=> b!4730356 (=> (not res!2002544) (not e!2950476))))

(assert (=> b!4730356 (= res!2002544 (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) lambda!217025))))

(declare-fun b!4730357 () Bool)

(assert (=> b!4730357 (= e!2950476 (invariantList!1523 (toList!5954 lt!1893828)))))

(declare-fun c!807868 () Bool)

(declare-fun bm!330872 () Bool)

(assert (=> bm!330872 (= call!330875 (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (ite c!807868 lambda!217022 lambda!217024)))))

(assert (=> b!4730358 (= e!2950477 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893824 () Unit!131227)

(assert (=> b!4730358 (= lt!1893824 call!330876)))

(assert (=> b!4730358 call!330877))

(declare-fun lt!1893831 () Unit!131227)

(assert (=> b!4730358 (= lt!1893831 lt!1893824)))

(assert (=> b!4730358 call!330875))

(declare-fun lt!1893826 () Unit!131227)

(declare-fun Unit!131397 () Unit!131227)

(assert (=> b!4730358 (= lt!1893826 Unit!131397)))

(declare-fun b!4730359 () Bool)

(assert (=> b!4730359 (= e!2950478 (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) lambda!217024))))

(declare-fun bm!330871 () Bool)

(assert (=> bm!330871 (= call!330877 (forall!11627 (ite c!807868 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (ite c!807868 lambda!217022 lambda!217024)))))

(assert (=> d!1508104 e!2950476))

(declare-fun res!2002542 () Bool)

(assert (=> d!1508104 (=> (not res!2002542) (not e!2950476))))

(assert (=> d!1508104 (= res!2002542 (forall!11627 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))) lambda!217025))))

(assert (=> d!1508104 (= lt!1893828 e!2950477)))

(assert (=> d!1508104 (= c!807868 ((_ is Nil!52878) (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> d!1508104 (noDuplicateKeys!2032 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> d!1508104 (= (addToMapMapFromBucket!1462 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))) (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) lt!1893828)))

(assert (= (and d!1508104 c!807868) b!4730358))

(assert (= (and d!1508104 (not c!807868)) b!4730355))

(assert (= (and b!4730355 res!2002543) b!4730359))

(assert (= (or b!4730358 b!4730355) bm!330870))

(assert (= (or b!4730358 b!4730355) bm!330872))

(assert (= (or b!4730358 b!4730355) bm!330871))

(assert (= (and d!1508104 res!2002542) b!4730356))

(assert (= (and b!4730356 res!2002544) b!4730357))

(declare-fun m!5672345 () Bool)

(assert (=> b!4730355 m!5672345))

(declare-fun m!5672347 () Bool)

(assert (=> b!4730355 m!5672347))

(declare-fun m!5672349 () Bool)

(assert (=> b!4730355 m!5672349))

(assert (=> b!4730355 m!5672349))

(declare-fun m!5672351 () Bool)

(assert (=> b!4730355 m!5672351))

(declare-fun m!5672353 () Bool)

(assert (=> b!4730355 m!5672353))

(assert (=> b!4730355 m!5670541))

(declare-fun m!5672355 () Bool)

(assert (=> b!4730355 m!5672355))

(declare-fun m!5672357 () Bool)

(assert (=> b!4730355 m!5672357))

(declare-fun m!5672359 () Bool)

(assert (=> b!4730355 m!5672359))

(declare-fun m!5672361 () Bool)

(assert (=> b!4730355 m!5672361))

(assert (=> b!4730355 m!5670541))

(assert (=> b!4730355 m!5672351))

(declare-fun m!5672363 () Bool)

(assert (=> b!4730355 m!5672363))

(declare-fun m!5672367 () Bool)

(assert (=> b!4730355 m!5672367))

(declare-fun m!5672369 () Bool)

(assert (=> b!4730356 m!5672369))

(declare-fun m!5672371 () Bool)

(assert (=> d!1508104 m!5672371))

(assert (=> d!1508104 m!5671559))

(assert (=> bm!330870 m!5670541))

(declare-fun m!5672373 () Bool)

(assert (=> bm!330870 m!5672373))

(assert (=> b!4730359 m!5672345))

(declare-fun m!5672375 () Bool)

(assert (=> b!4730357 m!5672375))

(declare-fun m!5672377 () Bool)

(assert (=> bm!330872 m!5672377))

(declare-fun m!5672379 () Bool)

(assert (=> bm!330871 m!5672379))

(assert (=> b!4729530 d!1508104))

(declare-fun d!1508190 () Bool)

(declare-fun e!2950504 () Bool)

(assert (=> d!1508190 e!2950504))

(declare-fun res!2002558 () Bool)

(assert (=> d!1508190 (=> res!2002558 e!2950504)))

(declare-fun e!2950505 () Bool)

(assert (=> d!1508190 (= res!2002558 e!2950505)))

(declare-fun res!2002556 () Bool)

(assert (=> d!1508190 (=> (not res!2002556) (not e!2950505))))

(declare-fun lt!1893844 () Bool)

(assert (=> d!1508190 (= res!2002556 (not lt!1893844))))

(declare-fun lt!1893847 () Bool)

(assert (=> d!1508190 (= lt!1893844 lt!1893847)))

(declare-fun lt!1893849 () Unit!131227)

(declare-fun e!2950503 () Unit!131227)

(assert (=> d!1508190 (= lt!1893849 e!2950503)))

(declare-fun c!807877 () Bool)

(assert (=> d!1508190 (= c!807877 lt!1893847)))

(assert (=> d!1508190 (= lt!1893847 (containsKey!3406 (toList!5954 lt!1893357) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> d!1508190 (= (contains!16239 lt!1893357 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) lt!1893844)))

(declare-fun b!4730389 () Bool)

(assert (=> b!4730389 false))

(declare-fun lt!1893848 () Unit!131227)

(declare-fun lt!1893845 () Unit!131227)

(assert (=> b!4730389 (= lt!1893848 lt!1893845)))

(assert (=> b!4730389 (containsKey!3406 (toList!5954 lt!1893357) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> b!4730389 (= lt!1893845 (lemmaInGetKeysListThenContainsKey!962 (toList!5954 lt!1893357) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun e!2950501 () Unit!131227)

(declare-fun Unit!131400 () Unit!131227)

(assert (=> b!4730389 (= e!2950501 Unit!131400)))

(declare-fun b!4730390 () Bool)

(declare-fun Unit!131401 () Unit!131227)

(assert (=> b!4730390 (= e!2950501 Unit!131401)))

(declare-fun b!4730391 () Bool)

(declare-fun e!2950502 () List!53005)

(assert (=> b!4730391 (= e!2950502 (getKeysList!963 (toList!5954 lt!1893357)))))

(declare-fun b!4730392 () Bool)

(declare-fun e!2950506 () Bool)

(assert (=> b!4730392 (= e!2950506 (contains!16243 (keys!19004 lt!1893357) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun b!4730393 () Bool)

(declare-fun lt!1893851 () Unit!131227)

(assert (=> b!4730393 (= e!2950503 lt!1893851)))

(declare-fun lt!1893846 () Unit!131227)

(assert (=> b!4730393 (= lt!1893846 (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 lt!1893357) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> b!4730393 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893357) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893850 () Unit!131227)

(assert (=> b!4730393 (= lt!1893850 lt!1893846)))

(assert (=> b!4730393 (= lt!1893851 (lemmaInListThenGetKeysListContains!958 (toList!5954 lt!1893357) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun call!330879 () Bool)

(assert (=> b!4730393 call!330879))

(declare-fun bm!330874 () Bool)

(assert (=> bm!330874 (= call!330879 (contains!16243 e!2950502 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun c!807878 () Bool)

(assert (=> bm!330874 (= c!807878 c!807877)))

(declare-fun b!4730394 () Bool)

(assert (=> b!4730394 (= e!2950502 (keys!19004 lt!1893357))))

(declare-fun b!4730395 () Bool)

(assert (=> b!4730395 (= e!2950503 e!2950501)))

(declare-fun c!807876 () Bool)

(assert (=> b!4730395 (= c!807876 call!330879)))

(declare-fun b!4730396 () Bool)

(assert (=> b!4730396 (= e!2950504 e!2950506)))

(declare-fun res!2002557 () Bool)

(assert (=> b!4730396 (=> (not res!2002557) (not e!2950506))))

(assert (=> b!4730396 (= res!2002557 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893357) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))))

(declare-fun b!4730397 () Bool)

(assert (=> b!4730397 (= e!2950505 (not (contains!16243 (keys!19004 lt!1893357) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))))

(assert (= (and d!1508190 c!807877) b!4730393))

(assert (= (and d!1508190 (not c!807877)) b!4730395))

(assert (= (and b!4730395 c!807876) b!4730389))

(assert (= (and b!4730395 (not c!807876)) b!4730390))

(assert (= (or b!4730393 b!4730395) bm!330874))

(assert (= (and bm!330874 c!807878) b!4730391))

(assert (= (and bm!330874 (not c!807878)) b!4730394))

(assert (= (and d!1508190 res!2002556) b!4730397))

(assert (= (and d!1508190 (not res!2002558)) b!4730396))

(assert (= (and b!4730396 res!2002557) b!4730392))

(declare-fun m!5672387 () Bool)

(assert (=> b!4730391 m!5672387))

(declare-fun m!5672389 () Bool)

(assert (=> b!4730389 m!5672389))

(declare-fun m!5672391 () Bool)

(assert (=> b!4730389 m!5672391))

(declare-fun m!5672393 () Bool)

(assert (=> bm!330874 m!5672393))

(declare-fun m!5672395 () Bool)

(assert (=> b!4730396 m!5672395))

(assert (=> b!4730396 m!5672395))

(declare-fun m!5672397 () Bool)

(assert (=> b!4730396 m!5672397))

(declare-fun m!5672399 () Bool)

(assert (=> b!4730392 m!5672399))

(assert (=> b!4730392 m!5672399))

(declare-fun m!5672403 () Bool)

(assert (=> b!4730392 m!5672403))

(assert (=> d!1508190 m!5672389))

(declare-fun m!5672405 () Bool)

(assert (=> b!4730393 m!5672405))

(assert (=> b!4730393 m!5672395))

(assert (=> b!4730393 m!5672395))

(assert (=> b!4730393 m!5672397))

(declare-fun m!5672407 () Bool)

(assert (=> b!4730393 m!5672407))

(assert (=> b!4730397 m!5672399))

(assert (=> b!4730397 m!5672399))

(assert (=> b!4730397 m!5672403))

(assert (=> b!4730394 m!5672399))

(assert (=> b!4729530 d!1508190))

(declare-fun bs!1119938 () Bool)

(declare-fun d!1508216 () Bool)

(assert (= bs!1119938 (and d!1508216 d!1507090)))

(declare-fun lambda!217026 () Int)

(assert (=> bs!1119938 (= (= lt!1893357 lt!1893065) (= lambda!217026 lambda!216874))))

(declare-fun bs!1119940 () Bool)

(assert (= bs!1119940 (and d!1508216 d!1507798)))

(assert (=> bs!1119940 (= (= lt!1893357 lt!1893564) (= lambda!217026 lambda!216992))))

(declare-fun bs!1119942 () Bool)

(assert (= bs!1119942 (and d!1508216 d!1507074)))

(assert (=> bs!1119942 (not (= lambda!217026 lambda!216840))))

(declare-fun bs!1119944 () Bool)

(assert (= bs!1119944 (and d!1508216 b!4729490)))

(assert (=> bs!1119944 (= (= lt!1893357 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217026 lambda!216933))))

(declare-fun bs!1119945 () Bool)

(assert (= bs!1119945 (and d!1508216 d!1507456)))

(assert (=> bs!1119945 (= (= lt!1893357 lt!1893054) (= lambda!217026 lambda!216941))))

(declare-fun bs!1119947 () Bool)

(assert (= bs!1119947 (and d!1508216 b!4729915)))

(assert (=> bs!1119947 (= (= lt!1893357 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217026 lambda!216988))))

(declare-fun bs!1119949 () Bool)

(assert (= bs!1119949 (and d!1508216 b!4730355)))

(assert (=> bs!1119949 (= (= lt!1893357 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217026 lambda!217023))))

(declare-fun bs!1119951 () Bool)

(assert (= bs!1119951 (and d!1508216 d!1508104)))

(assert (=> bs!1119951 (= (= lt!1893357 lt!1893828) (= lambda!217026 lambda!217025))))

(declare-fun bs!1119953 () Bool)

(assert (= bs!1119953 (and d!1508216 b!4729530)))

(assert (=> bs!1119953 (= (= lt!1893357 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217026 lambda!216943))))

(declare-fun bs!1119954 () Bool)

(assert (= bs!1119954 (and d!1508216 d!1507466)))

(assert (=> bs!1119954 (= (= lt!1893357 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217026 lambda!216949))))

(declare-fun bs!1119956 () Bool)

(assert (= bs!1119956 (and d!1508216 b!4729039)))

(assert (=> bs!1119956 (= (= lt!1893357 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217026 lambda!216871))))

(declare-fun bs!1119958 () Bool)

(assert (= bs!1119958 (and d!1508216 b!4729036)))

(assert (=> bs!1119958 (= (= lt!1893357 lt!1893054) (= lambda!217026 lambda!216873))))

(declare-fun bs!1119959 () Bool)

(assert (= bs!1119959 (and d!1508216 d!1507116)))

(assert (=> bs!1119959 (not (= lambda!217026 lambda!216876))))

(assert (=> bs!1119953 (= lambda!217026 lambda!216944)))

(declare-fun bs!1119962 () Bool)

(assert (= bs!1119962 (and d!1508216 b!4730358)))

(assert (=> bs!1119962 (= (= lt!1893357 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217026 lambda!217022))))

(declare-fun bs!1119963 () Bool)

(assert (= bs!1119963 (and d!1508216 d!1507436)))

(assert (=> bs!1119963 (= (= lt!1893357 lt!1893313) (= lambda!217026 lambda!216936))))

(declare-fun bs!1119965 () Bool)

(assert (= bs!1119965 (and d!1508216 b!4729487)))

(assert (=> bs!1119965 (= (= lt!1893357 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217026 lambda!216934))))

(assert (=> bs!1119958 (= (= lt!1893357 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217026 lambda!216872))))

(declare-fun bs!1119967 () Bool)

(assert (= bs!1119967 (and d!1508216 d!1507458)))

(assert (=> bs!1119967 (= (= lt!1893357 lt!1893368) (= lambda!217026 lambda!216945))))

(assert (=> bs!1119949 (= (= lt!1893357 lt!1893817) (= lambda!217026 lambda!217024))))

(declare-fun bs!1119970 () Bool)

(assert (= bs!1119970 (and d!1508216 b!4729533)))

(assert (=> bs!1119970 (= (= lt!1893357 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217026 lambda!216942))))

(declare-fun bs!1119972 () Bool)

(assert (= bs!1119972 (and d!1508216 d!1507922)))

(assert (=> bs!1119972 (= (= lt!1893357 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217026 lambda!217002))))

(declare-fun bs!1119973 () Bool)

(assert (= bs!1119973 (and d!1508216 b!4729912)))

(assert (=> bs!1119973 (= (= lt!1893357 lt!1893553) (= lambda!217026 lambda!216990))))

(assert (=> bs!1119965 (= (= lt!1893357 lt!1893302) (= lambda!217026 lambda!216935))))

(declare-fun bs!1119975 () Bool)

(assert (= bs!1119975 (and d!1508216 d!1507900)))

(assert (=> bs!1119975 (not (= lambda!217026 lambda!216996))))

(declare-fun bs!1119977 () Bool)

(assert (= bs!1119977 (and d!1508216 d!1507846)))

(assert (=> bs!1119977 (= (= lt!1893357 lt!1893302) (= lambda!217026 lambda!216993))))

(assert (=> bs!1119973 (= (= lt!1893357 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217026 lambda!216989))))

(assert (=> d!1508216 true))

(assert (=> d!1508216 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) lambda!217026)))

(declare-fun lt!1893852 () Unit!131227)

(assert (=> d!1508216 (= lt!1893852 (choose!33441 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893357 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> d!1508216 (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))) lambda!217026)))

(assert (=> d!1508216 (= (addForallContainsKeyThenBeforeAdding!807 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893357 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) lt!1893852)))

(declare-fun bs!1119984 () Bool)

(assert (= bs!1119984 d!1508216))

(declare-fun m!5672443 () Bool)

(assert (=> bs!1119984 m!5672443))

(assert (=> bs!1119984 m!5669717))

(declare-fun m!5672445 () Bool)

(assert (=> bs!1119984 m!5672445))

(assert (=> bs!1119984 m!5669717))

(declare-fun m!5672447 () Bool)

(assert (=> bs!1119984 m!5672447))

(declare-fun m!5672449 () Bool)

(assert (=> bs!1119984 m!5672449))

(assert (=> b!4729530 d!1508216))

(declare-fun d!1508278 () Bool)

(declare-fun e!2950507 () Bool)

(assert (=> d!1508278 e!2950507))

(declare-fun res!2002559 () Bool)

(assert (=> d!1508278 (=> (not res!2002559) (not e!2950507))))

(declare-fun lt!1893856 () ListMap!5317)

(assert (=> d!1508278 (= res!2002559 (contains!16239 lt!1893856 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893855 () List!53002)

(assert (=> d!1508278 (= lt!1893856 (ListMap!5318 lt!1893855))))

(declare-fun lt!1893854 () Unit!131227)

(declare-fun lt!1893853 () Unit!131227)

(assert (=> d!1508278 (= lt!1893854 lt!1893853)))

(assert (=> d!1508278 (= (getValueByKey!1978 lt!1893855 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (Some!12391 (_2!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> d!1508278 (= lt!1893853 (lemmaContainsTupThenGetReturnValue!1096 lt!1893855 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> d!1508278 (= lt!1893855 (insertNoDuplicatedKeys!604 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> d!1508278 (= (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) lt!1893856)))

(declare-fun b!4730398 () Bool)

(declare-fun res!2002560 () Bool)

(assert (=> b!4730398 (=> (not res!2002560) (not e!2950507))))

(assert (=> b!4730398 (= res!2002560 (= (getValueByKey!1978 (toList!5954 lt!1893856) (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (Some!12391 (_2!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))))

(declare-fun b!4730399 () Bool)

(assert (=> b!4730399 (= e!2950507 (contains!16242 (toList!5954 lt!1893856) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(assert (= (and d!1508278 res!2002559) b!4730398))

(assert (= (and b!4730398 res!2002560) b!4730399))

(declare-fun m!5672453 () Bool)

(assert (=> d!1508278 m!5672453))

(declare-fun m!5672455 () Bool)

(assert (=> d!1508278 m!5672455))

(declare-fun m!5672457 () Bool)

(assert (=> d!1508278 m!5672457))

(declare-fun m!5672459 () Bool)

(assert (=> d!1508278 m!5672459))

(declare-fun m!5672461 () Bool)

(assert (=> b!4730398 m!5672461))

(declare-fun m!5672465 () Bool)

(assert (=> b!4730399 m!5672465))

(assert (=> b!4729530 d!1508278))

(declare-fun d!1508284 () Bool)

(declare-fun lt!1893857 () Bool)

(assert (=> d!1508284 (= lt!1893857 (select (content!9423 (t!360278 lt!1892763)) (get!17745 lt!1892897)))))

(declare-fun e!2950508 () Bool)

(assert (=> d!1508284 (= lt!1893857 e!2950508)))

(declare-fun res!2002561 () Bool)

(assert (=> d!1508284 (=> (not res!2002561) (not e!2950508))))

(assert (=> d!1508284 (= res!2002561 ((_ is Cons!52878) (t!360278 lt!1892763)))))

(assert (=> d!1508284 (= (contains!16242 (t!360278 lt!1892763) (get!17745 lt!1892897)) lt!1893857)))

(declare-fun b!4730400 () Bool)

(declare-fun e!2950509 () Bool)

(assert (=> b!4730400 (= e!2950508 e!2950509)))

(declare-fun res!2002562 () Bool)

(assert (=> b!4730400 (=> res!2002562 e!2950509)))

(assert (=> b!4730400 (= res!2002562 (= (h!59237 (t!360278 lt!1892763)) (get!17745 lt!1892897)))))

(declare-fun b!4730401 () Bool)

(assert (=> b!4730401 (= e!2950509 (contains!16242 (t!360278 (t!360278 lt!1892763)) (get!17745 lt!1892897)))))

(assert (= (and d!1508284 res!2002561) b!4730400))

(assert (= (and b!4730400 (not res!2002562)) b!4730401))

(assert (=> d!1508284 m!5671309))

(assert (=> d!1508284 m!5669513))

(declare-fun m!5672473 () Bool)

(assert (=> d!1508284 m!5672473))

(assert (=> b!4730401 m!5669513))

(declare-fun m!5672477 () Bool)

(assert (=> b!4730401 m!5672477))

(assert (=> b!4729587 d!1508284))

(declare-fun bs!1119996 () Bool)

(declare-fun b!4730406 () Bool)

(assert (= bs!1119996 (and b!4730406 b!4730128)))

(declare-fun lambda!217027 () Int)

(assert (=> bs!1119996 (= (= (t!360278 (toList!5954 lt!1893051)) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (= lambda!217027 lambda!217009))))

(declare-fun bs!1119999 () Bool)

(assert (= bs!1119999 (and b!4730406 b!4729446)))

(assert (=> bs!1119999 (= (= (t!360278 (toList!5954 lt!1893051)) (toList!5954 lt!1892771)) (= lambda!217027 lambda!216931))))

(declare-fun bs!1120001 () Bool)

(assert (= bs!1120001 (and b!4730406 b!4729391)))

(assert (=> bs!1120001 (= (= (t!360278 (toList!5954 lt!1893051)) (toList!5954 lt!1892771)) (= lambda!217027 lambda!216925))))

(declare-fun bs!1120002 () Bool)

(assert (= bs!1120002 (and b!4730406 b!4730125)))

(assert (=> bs!1120002 (= (= (t!360278 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1892771))) (= lambda!217027 lambda!217011))))

(declare-fun bs!1120004 () Bool)

(assert (= bs!1120004 (and b!4730406 b!4730053)))

(assert (=> bs!1120004 (= (= (t!360278 (toList!5954 lt!1893051)) (toList!5954 lt!1893051)) (= lambda!217027 lambda!216997))))

(declare-fun bs!1120006 () Bool)

(assert (= bs!1120006 (and b!4730406 b!4729894)))

(assert (=> bs!1120006 (= (= (t!360278 (toList!5954 lt!1893051)) (toList!5954 lt!1893054)) (= lambda!217027 lambda!216984))))

(declare-fun bs!1120007 () Bool)

(assert (= bs!1120007 (and b!4730406 b!4730124)))

(assert (=> bs!1120007 (= (= (t!360278 (toList!5954 lt!1893051)) (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771))))) (= lambda!217027 lambda!217010))))

(declare-fun bs!1120008 () Bool)

(assert (= bs!1120008 (and b!4730406 b!4730098)))

(assert (=> bs!1120008 (= (= (t!360278 (toList!5954 lt!1893051)) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= lambda!217027 lambda!217004))))

(declare-fun bs!1120010 () Bool)

(assert (= bs!1120010 (and b!4730406 b!4729394)))

(assert (=> bs!1120010 (= (= (t!360278 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1892771))) (= lambda!217027 lambda!216923))))

(declare-fun bs!1120011 () Bool)

(assert (= bs!1120011 (and b!4730406 b!4729390)))

(assert (=> bs!1120011 (= (= (t!360278 (toList!5954 lt!1893051)) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217027 lambda!216924))))

(assert (=> b!4730406 true))

(declare-fun bs!1120016 () Bool)

(declare-fun b!4730402 () Bool)

(assert (= bs!1120016 (and b!4730402 b!4730406)))

(declare-fun lambda!217028 () Int)

(assert (=> bs!1120016 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051))) (t!360278 (toList!5954 lt!1893051))) (= lambda!217028 lambda!217027))))

(declare-fun bs!1120018 () Bool)

(assert (= bs!1120018 (and b!4730402 b!4730128)))

(assert (=> bs!1120018 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051))) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (= lambda!217028 lambda!217009))))

(declare-fun bs!1120020 () Bool)

(assert (= bs!1120020 (and b!4730402 b!4729446)))

(assert (=> bs!1120020 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051))) (toList!5954 lt!1892771)) (= lambda!217028 lambda!216931))))

(declare-fun bs!1120021 () Bool)

(assert (= bs!1120021 (and b!4730402 b!4729391)))

(assert (=> bs!1120021 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051))) (toList!5954 lt!1892771)) (= lambda!217028 lambda!216925))))

(declare-fun bs!1120023 () Bool)

(assert (= bs!1120023 (and b!4730402 b!4730125)))

(assert (=> bs!1120023 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051))) (t!360278 (toList!5954 lt!1892771))) (= lambda!217028 lambda!217011))))

(declare-fun bs!1120024 () Bool)

(assert (= bs!1120024 (and b!4730402 b!4730053)))

(assert (=> bs!1120024 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051))) (toList!5954 lt!1893051)) (= lambda!217028 lambda!216997))))

(declare-fun bs!1120026 () Bool)

(assert (= bs!1120026 (and b!4730402 b!4729894)))

(assert (=> bs!1120026 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051))) (toList!5954 lt!1893054)) (= lambda!217028 lambda!216984))))

(declare-fun bs!1120027 () Bool)

(assert (= bs!1120027 (and b!4730402 b!4730124)))

(assert (=> bs!1120027 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051))) (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771))))) (= lambda!217028 lambda!217010))))

(declare-fun bs!1120029 () Bool)

(assert (= bs!1120029 (and b!4730402 b!4730098)))

(assert (=> bs!1120029 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051))) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= lambda!217028 lambda!217004))))

(declare-fun bs!1120031 () Bool)

(assert (= bs!1120031 (and b!4730402 b!4729394)))

(assert (=> bs!1120031 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051))) (t!360278 (toList!5954 lt!1892771))) (= lambda!217028 lambda!216923))))

(declare-fun bs!1120032 () Bool)

(assert (= bs!1120032 (and b!4730402 b!4729390)))

(assert (=> bs!1120032 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051))) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217028 lambda!216924))))

(assert (=> b!4730402 true))

(declare-fun bs!1120036 () Bool)

(declare-fun b!4730403 () Bool)

(assert (= bs!1120036 (and b!4730403 b!4730402)))

(declare-fun lambda!217029 () Int)

(assert (=> bs!1120036 (= (= (toList!5954 lt!1893051) (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051)))) (= lambda!217029 lambda!217028))))

(declare-fun bs!1120038 () Bool)

(assert (= bs!1120038 (and b!4730403 b!4730406)))

(assert (=> bs!1120038 (= (= (toList!5954 lt!1893051) (t!360278 (toList!5954 lt!1893051))) (= lambda!217029 lambda!217027))))

(declare-fun bs!1120040 () Bool)

(assert (= bs!1120040 (and b!4730403 b!4730128)))

(assert (=> bs!1120040 (= (= (toList!5954 lt!1893051) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (= lambda!217029 lambda!217009))))

(declare-fun bs!1120041 () Bool)

(assert (= bs!1120041 (and b!4730403 b!4729446)))

(assert (=> bs!1120041 (= (= (toList!5954 lt!1893051) (toList!5954 lt!1892771)) (= lambda!217029 lambda!216931))))

(declare-fun bs!1120043 () Bool)

(assert (= bs!1120043 (and b!4730403 b!4729391)))

(assert (=> bs!1120043 (= (= (toList!5954 lt!1893051) (toList!5954 lt!1892771)) (= lambda!217029 lambda!216925))))

(declare-fun bs!1120044 () Bool)

(assert (= bs!1120044 (and b!4730403 b!4730125)))

(assert (=> bs!1120044 (= (= (toList!5954 lt!1893051) (t!360278 (toList!5954 lt!1892771))) (= lambda!217029 lambda!217011))))

(declare-fun bs!1120045 () Bool)

(assert (= bs!1120045 (and b!4730403 b!4730053)))

(assert (=> bs!1120045 (= lambda!217029 lambda!216997)))

(declare-fun bs!1120046 () Bool)

(assert (= bs!1120046 (and b!4730403 b!4729894)))

(assert (=> bs!1120046 (= (= (toList!5954 lt!1893051) (toList!5954 lt!1893054)) (= lambda!217029 lambda!216984))))

(declare-fun bs!1120048 () Bool)

(assert (= bs!1120048 (and b!4730403 b!4730124)))

(assert (=> bs!1120048 (= (= (toList!5954 lt!1893051) (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771))))) (= lambda!217029 lambda!217010))))

(declare-fun bs!1120050 () Bool)

(assert (= bs!1120050 (and b!4730403 b!4730098)))

(assert (=> bs!1120050 (= (= (toList!5954 lt!1893051) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= lambda!217029 lambda!217004))))

(declare-fun bs!1120052 () Bool)

(assert (= bs!1120052 (and b!4730403 b!4729394)))

(assert (=> bs!1120052 (= (= (toList!5954 lt!1893051) (t!360278 (toList!5954 lt!1892771))) (= lambda!217029 lambda!216923))))

(declare-fun bs!1120053 () Bool)

(assert (= bs!1120053 (and b!4730403 b!4729390)))

(assert (=> bs!1120053 (= (= (toList!5954 lt!1893051) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217029 lambda!216924))))

(assert (=> b!4730403 true))

(declare-fun bs!1120057 () Bool)

(declare-fun b!4730409 () Bool)

(assert (= bs!1120057 (and b!4730409 b!4729447)))

(declare-fun lambda!217030 () Int)

(assert (=> bs!1120057 (= lambda!217030 lambda!216932)))

(declare-fun bs!1120059 () Bool)

(assert (= bs!1120059 (and b!4730409 b!4730054)))

(assert (=> bs!1120059 (= lambda!217030 lambda!216998)))

(declare-fun bs!1120060 () Bool)

(assert (= bs!1120060 (and b!4730409 b!4729397)))

(assert (=> bs!1120060 (= lambda!217030 lambda!216926)))

(declare-fun bs!1120062 () Bool)

(assert (= bs!1120062 (and b!4730409 b!4729895)))

(assert (=> bs!1120062 (= lambda!217030 lambda!216985)))

(declare-fun bs!1120063 () Bool)

(assert (= bs!1120063 (and b!4730409 b!4730099)))

(assert (=> bs!1120063 (= lambda!217030 lambda!217005)))

(declare-fun bs!1120064 () Bool)

(assert (= bs!1120064 (and b!4730409 b!4730131)))

(assert (=> bs!1120064 (= lambda!217030 lambda!217012)))

(declare-fun e!2950513 () List!53005)

(assert (=> b!4730402 (= e!2950513 (Cons!52881 (_1!30555 (h!59237 (toList!5954 lt!1893051))) (getKeysList!963 (t!360278 (toList!5954 lt!1893051)))))))

(declare-fun c!807879 () Bool)

(assert (=> b!4730402 (= c!807879 (containsKey!3406 (t!360278 (toList!5954 lt!1893051)) (_1!30555 (h!59237 (toList!5954 lt!1893051)))))))

(declare-fun lt!1893860 () Unit!131227)

(declare-fun e!2950512 () Unit!131227)

(assert (=> b!4730402 (= lt!1893860 e!2950512)))

(declare-fun c!807880 () Bool)

(assert (=> b!4730402 (= c!807880 (contains!16243 (getKeysList!963 (t!360278 (toList!5954 lt!1893051))) (_1!30555 (h!59237 (toList!5954 lt!1893051)))))))

(declare-fun lt!1893864 () Unit!131227)

(declare-fun e!2950510 () Unit!131227)

(assert (=> b!4730402 (= lt!1893864 e!2950510)))

(declare-fun lt!1893862 () List!53005)

(assert (=> b!4730402 (= lt!1893862 (getKeysList!963 (t!360278 (toList!5954 lt!1893051))))))

(declare-fun lt!1893863 () Unit!131227)

(assert (=> b!4730402 (= lt!1893863 (lemmaForallContainsAddHeadPreserves!287 (t!360278 (toList!5954 lt!1893051)) lt!1893862 (h!59237 (toList!5954 lt!1893051))))))

(assert (=> b!4730402 (forall!11629 lt!1893862 lambda!217028)))

(declare-fun lt!1893858 () Unit!131227)

(assert (=> b!4730402 (= lt!1893858 lt!1893863)))

(declare-fun res!2002564 () Bool)

(declare-fun e!2950511 () Bool)

(assert (=> b!4730403 (=> (not res!2002564) (not e!2950511))))

(declare-fun lt!1893859 () List!53005)

(assert (=> b!4730403 (= res!2002564 (forall!11629 lt!1893859 lambda!217029))))

(declare-fun d!1508292 () Bool)

(assert (=> d!1508292 e!2950511))

(declare-fun res!2002565 () Bool)

(assert (=> d!1508292 (=> (not res!2002565) (not e!2950511))))

(assert (=> d!1508292 (= res!2002565 (noDuplicate!869 lt!1893859))))

(assert (=> d!1508292 (= lt!1893859 e!2950513)))

(declare-fun c!807881 () Bool)

(assert (=> d!1508292 (= c!807881 ((_ is Cons!52878) (toList!5954 lt!1893051)))))

(assert (=> d!1508292 (invariantList!1523 (toList!5954 lt!1893051))))

(assert (=> d!1508292 (= (getKeysList!963 (toList!5954 lt!1893051)) lt!1893859)))

(declare-fun b!4730404 () Bool)

(assert (=> b!4730404 false))

(declare-fun Unit!131404 () Unit!131227)

(assert (=> b!4730404 (= e!2950512 Unit!131404)))

(declare-fun b!4730405 () Bool)

(declare-fun Unit!131405 () Unit!131227)

(assert (=> b!4730405 (= e!2950512 Unit!131405)))

(assert (=> b!4730406 false))

(declare-fun lt!1893861 () Unit!131227)

(assert (=> b!4730406 (= lt!1893861 (forallContained!3669 (getKeysList!963 (t!360278 (toList!5954 lt!1893051))) lambda!217027 (_1!30555 (h!59237 (toList!5954 lt!1893051)))))))

(declare-fun Unit!131406 () Unit!131227)

(assert (=> b!4730406 (= e!2950510 Unit!131406)))

(declare-fun b!4730407 () Bool)

(declare-fun Unit!131407 () Unit!131227)

(assert (=> b!4730407 (= e!2950510 Unit!131407)))

(declare-fun b!4730408 () Bool)

(assert (=> b!4730408 (= e!2950513 Nil!52881)))

(assert (=> b!4730409 (= e!2950511 (= (content!9422 lt!1893859) (content!9422 (map!11698 (toList!5954 lt!1893051) lambda!217030))))))

(declare-fun b!4730410 () Bool)

(declare-fun res!2002563 () Bool)

(assert (=> b!4730410 (=> (not res!2002563) (not e!2950511))))

(assert (=> b!4730410 (= res!2002563 (= (length!594 lt!1893859) (length!595 (toList!5954 lt!1893051))))))

(assert (= (and d!1508292 c!807881) b!4730402))

(assert (= (and d!1508292 (not c!807881)) b!4730408))

(assert (= (and b!4730402 c!807879) b!4730404))

(assert (= (and b!4730402 (not c!807879)) b!4730405))

(assert (= (and b!4730402 c!807880) b!4730406))

(assert (= (and b!4730402 (not c!807880)) b!4730407))

(assert (= (and d!1508292 res!2002565) b!4730410))

(assert (= (and b!4730410 res!2002563) b!4730403))

(assert (= (and b!4730403 res!2002564) b!4730409))

(declare-fun m!5672511 () Bool)

(assert (=> b!4730406 m!5672511))

(assert (=> b!4730406 m!5672511))

(declare-fun m!5672513 () Bool)

(assert (=> b!4730406 m!5672513))

(assert (=> b!4730402 m!5672511))

(declare-fun m!5672515 () Bool)

(assert (=> b!4730402 m!5672515))

(declare-fun m!5672517 () Bool)

(assert (=> b!4730402 m!5672517))

(declare-fun m!5672519 () Bool)

(assert (=> b!4730402 m!5672519))

(declare-fun m!5672521 () Bool)

(assert (=> b!4730402 m!5672521))

(assert (=> b!4730402 m!5672511))

(declare-fun m!5672523 () Bool)

(assert (=> b!4730410 m!5672523))

(assert (=> b!4730410 m!5671635))

(declare-fun m!5672525 () Bool)

(assert (=> d!1508292 m!5672525))

(declare-fun m!5672527 () Bool)

(assert (=> d!1508292 m!5672527))

(declare-fun m!5672529 () Bool)

(assert (=> b!4730409 m!5672529))

(declare-fun m!5672531 () Bool)

(assert (=> b!4730409 m!5672531))

(assert (=> b!4730409 m!5672531))

(declare-fun m!5672533 () Bool)

(assert (=> b!4730409 m!5672533))

(declare-fun m!5672535 () Bool)

(assert (=> b!4730403 m!5672535))

(assert (=> b!4729518 d!1508292))

(declare-fun d!1508360 () Bool)

(declare-fun res!2002566 () Bool)

(declare-fun e!2950514 () Bool)

(assert (=> d!1508360 (=> res!2002566 e!2950514)))

(assert (=> d!1508360 (= res!2002566 ((_ is Nil!52878) (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1508360 (= (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (ite c!807698 lambda!216933 lambda!216935)) e!2950514)))

(declare-fun b!4730411 () Bool)

(declare-fun e!2950515 () Bool)

(assert (=> b!4730411 (= e!2950514 e!2950515)))

(declare-fun res!2002567 () Bool)

(assert (=> b!4730411 (=> (not res!2002567) (not e!2950515))))

(assert (=> b!4730411 (= res!2002567 (dynLambda!21841 (ite c!807698 lambda!216933 lambda!216935) (h!59237 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun b!4730412 () Bool)

(assert (=> b!4730412 (= e!2950515 (forall!11627 (t!360278 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (ite c!807698 lambda!216933 lambda!216935)))))

(assert (= (and d!1508360 (not res!2002566)) b!4730411))

(assert (= (and b!4730411 res!2002567) b!4730412))

(declare-fun b_lambda!180385 () Bool)

(assert (=> (not b_lambda!180385) (not b!4730411)))

(declare-fun m!5672537 () Bool)

(assert (=> b!4730411 m!5672537))

(declare-fun m!5672539 () Bool)

(assert (=> b!4730412 m!5672539))

(assert (=> bm!330813 d!1508360))

(declare-fun d!1508362 () Bool)

(assert (=> d!1508362 (= (hash!4413 hashF!1323 (_1!30555 (h!59237 oldBucket!34))) (hash!4415 hashF!1323 (_1!30555 (h!59237 oldBucket!34))))))

(declare-fun bs!1120065 () Bool)

(assert (= bs!1120065 d!1508362))

(declare-fun m!5672541 () Bool)

(assert (=> bs!1120065 m!5672541))

(assert (=> bs!1119036 d!1508362))

(declare-fun d!1508364 () Bool)

(declare-fun res!2002568 () Bool)

(declare-fun e!2950516 () Bool)

(assert (=> d!1508364 (=> res!2002568 e!2950516)))

(assert (=> d!1508364 (= res!2002568 (and ((_ is Cons!52878) (t!360278 lt!1892763)) (= (_1!30555 (h!59237 (t!360278 lt!1892763))) key!4653)))))

(assert (=> d!1508364 (= (containsKey!3402 (t!360278 lt!1892763) key!4653) e!2950516)))

(declare-fun b!4730413 () Bool)

(declare-fun e!2950517 () Bool)

(assert (=> b!4730413 (= e!2950516 e!2950517)))

(declare-fun res!2002569 () Bool)

(assert (=> b!4730413 (=> (not res!2002569) (not e!2950517))))

(assert (=> b!4730413 (= res!2002569 ((_ is Cons!52878) (t!360278 lt!1892763)))))

(declare-fun b!4730414 () Bool)

(assert (=> b!4730414 (= e!2950517 (containsKey!3402 (t!360278 (t!360278 lt!1892763)) key!4653))))

(assert (= (and d!1508364 (not res!2002568)) b!4730413))

(assert (= (and b!4730413 res!2002569) b!4730414))

(declare-fun m!5672543 () Bool)

(assert (=> b!4730414 m!5672543))

(assert (=> b!4729416 d!1508364))

(declare-fun d!1508366 () Bool)

(declare-fun res!2002570 () Bool)

(declare-fun e!2950518 () Bool)

(assert (=> d!1508366 (=> res!2002570 e!2950518)))

(assert (=> d!1508366 (= res!2002570 ((_ is Nil!52879) (t!360279 (toList!5953 lm!2023))))))

(assert (=> d!1508366 (= (forall!11625 (t!360279 (toList!5953 lm!2023)) lambda!216819) e!2950518)))

(declare-fun b!4730415 () Bool)

(declare-fun e!2950519 () Bool)

(assert (=> b!4730415 (= e!2950518 e!2950519)))

(declare-fun res!2002571 () Bool)

(assert (=> b!4730415 (=> (not res!2002571) (not e!2950519))))

(assert (=> b!4730415 (= res!2002571 (dynLambda!21839 lambda!216819 (h!59238 (t!360279 (toList!5953 lm!2023)))))))

(declare-fun b!4730416 () Bool)

(assert (=> b!4730416 (= e!2950519 (forall!11625 (t!360279 (t!360279 (toList!5953 lm!2023))) lambda!216819))))

(assert (= (and d!1508366 (not res!2002570)) b!4730415))

(assert (= (and b!4730415 res!2002571) b!4730416))

(declare-fun b_lambda!180387 () Bool)

(assert (=> (not b_lambda!180387) (not b!4730415)))

(declare-fun m!5672545 () Bool)

(assert (=> b!4730415 m!5672545))

(declare-fun m!5672547 () Bool)

(assert (=> b!4730416 m!5672547))

(assert (=> b!4729581 d!1508366))

(assert (=> bs!1119046 d!1507350))

(declare-fun d!1508368 () Bool)

(assert (=> d!1508368 (isDefined!9646 (getValueByKey!1978 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653))))

(declare-fun lt!1893865 () Unit!131227)

(assert (=> d!1508368 (= lt!1893865 (choose!33443 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653))))

(assert (=> d!1508368 (invariantList!1523 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))))

(assert (=> d!1508368 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653) lt!1893865)))

(declare-fun bs!1120066 () Bool)

(assert (= bs!1120066 d!1508368))

(assert (=> bs!1120066 m!5670239))

(assert (=> bs!1120066 m!5670239))

(assert (=> bs!1120066 m!5670241))

(declare-fun m!5672549 () Bool)

(assert (=> bs!1120066 m!5672549))

(declare-fun m!5672551 () Bool)

(assert (=> bs!1120066 m!5672551))

(assert (=> b!4729360 d!1508368))

(declare-fun d!1508370 () Bool)

(assert (=> d!1508370 (= (isDefined!9646 (getValueByKey!1978 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653)) (not (isEmpty!29199 (getValueByKey!1978 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653))))))

(declare-fun bs!1120067 () Bool)

(assert (= bs!1120067 d!1508370))

(assert (=> bs!1120067 m!5670239))

(declare-fun m!5672553 () Bool)

(assert (=> bs!1120067 m!5672553))

(assert (=> b!4729360 d!1508370))

(declare-fun b!4730418 () Bool)

(declare-fun e!2950520 () Option!12392)

(declare-fun e!2950521 () Option!12392)

(assert (=> b!4730418 (= e!2950520 e!2950521)))

(declare-fun c!807883 () Bool)

(assert (=> b!4730418 (= c!807883 (and ((_ is Cons!52878) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (not (= (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) key!4653))))))

(declare-fun d!1508372 () Bool)

(declare-fun c!807882 () Bool)

(assert (=> d!1508372 (= c!807882 (and ((_ is Cons!52878) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) key!4653)))))

(assert (=> d!1508372 (= (getValueByKey!1978 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653) e!2950520)))

(declare-fun b!4730417 () Bool)

(assert (=> b!4730417 (= e!2950520 (Some!12391 (_2!30555 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))))))))

(declare-fun b!4730419 () Bool)

(assert (=> b!4730419 (= e!2950521 (getValueByKey!1978 (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) key!4653))))

(declare-fun b!4730420 () Bool)

(assert (=> b!4730420 (= e!2950521 None!12391)))

(assert (= (and d!1508372 c!807882) b!4730417))

(assert (= (and d!1508372 (not c!807882)) b!4730418))

(assert (= (and b!4730418 c!807883) b!4730419))

(assert (= (and b!4730418 (not c!807883)) b!4730420))

(declare-fun m!5672555 () Bool)

(assert (=> b!4730419 m!5672555))

(assert (=> b!4729360 d!1508372))

(declare-fun d!1508374 () Bool)

(assert (=> d!1508374 (contains!16243 (getKeysList!963 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) key!4653)))

(declare-fun lt!1893866 () Unit!131227)

(assert (=> d!1508374 (= lt!1893866 (choose!33444 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653))))

(assert (=> d!1508374 (invariantList!1523 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))))

(assert (=> d!1508374 (= (lemmaInListThenGetKeysListContains!958 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653) lt!1893866)))

(declare-fun bs!1120068 () Bool)

(assert (= bs!1120068 d!1508374))

(assert (=> bs!1120068 m!5670231))

(assert (=> bs!1120068 m!5670231))

(declare-fun m!5672557 () Bool)

(assert (=> bs!1120068 m!5672557))

(declare-fun m!5672559 () Bool)

(assert (=> bs!1120068 m!5672559))

(assert (=> bs!1120068 m!5672551))

(assert (=> b!4729360 d!1508374))

(declare-fun b!4730421 () Bool)

(declare-fun e!2950522 () Bool)

(assert (=> b!4730421 (= e!2950522 (not (containsKey!3402 (t!360278 (t!360278 lt!1892763)) key!4653)))))

(declare-fun b!4730422 () Bool)

(declare-fun e!2950526 () Option!12388)

(assert (=> b!4730422 (= e!2950526 None!12387)))

(declare-fun b!4730423 () Bool)

(assert (=> b!4730423 (= e!2950526 (getPair!572 (t!360278 (t!360278 (t!360278 lt!1892763))) key!4653))))

(declare-fun d!1508376 () Bool)

(declare-fun e!2950524 () Bool)

(assert (=> d!1508376 e!2950524))

(declare-fun res!2002575 () Bool)

(assert (=> d!1508376 (=> res!2002575 e!2950524)))

(assert (=> d!1508376 (= res!2002575 e!2950522)))

(declare-fun res!2002573 () Bool)

(assert (=> d!1508376 (=> (not res!2002573) (not e!2950522))))

(declare-fun lt!1893867 () Option!12388)

(assert (=> d!1508376 (= res!2002573 (isEmpty!29195 lt!1893867))))

(declare-fun e!2950525 () Option!12388)

(assert (=> d!1508376 (= lt!1893867 e!2950525)))

(declare-fun c!807884 () Bool)

(assert (=> d!1508376 (= c!807884 (and ((_ is Cons!52878) (t!360278 (t!360278 lt!1892763))) (= (_1!30555 (h!59237 (t!360278 (t!360278 lt!1892763)))) key!4653)))))

(assert (=> d!1508376 (noDuplicateKeys!2032 (t!360278 (t!360278 lt!1892763)))))

(assert (=> d!1508376 (= (getPair!572 (t!360278 (t!360278 lt!1892763)) key!4653) lt!1893867)))

(declare-fun b!4730424 () Bool)

(declare-fun e!2950523 () Bool)

(assert (=> b!4730424 (= e!2950523 (contains!16242 (t!360278 (t!360278 lt!1892763)) (get!17745 lt!1893867)))))

(declare-fun b!4730425 () Bool)

(assert (=> b!4730425 (= e!2950525 (Some!12387 (h!59237 (t!360278 (t!360278 lt!1892763)))))))

(declare-fun b!4730426 () Bool)

(declare-fun res!2002574 () Bool)

(assert (=> b!4730426 (=> (not res!2002574) (not e!2950523))))

(assert (=> b!4730426 (= res!2002574 (= (_1!30555 (get!17745 lt!1893867)) key!4653))))

(declare-fun b!4730427 () Bool)

(assert (=> b!4730427 (= e!2950525 e!2950526)))

(declare-fun c!807885 () Bool)

(assert (=> b!4730427 (= c!807885 ((_ is Cons!52878) (t!360278 (t!360278 lt!1892763))))))

(declare-fun b!4730428 () Bool)

(assert (=> b!4730428 (= e!2950524 e!2950523)))

(declare-fun res!2002572 () Bool)

(assert (=> b!4730428 (=> (not res!2002572) (not e!2950523))))

(assert (=> b!4730428 (= res!2002572 (isDefined!9642 lt!1893867))))

(assert (= (and d!1508376 c!807884) b!4730425))

(assert (= (and d!1508376 (not c!807884)) b!4730427))

(assert (= (and b!4730427 c!807885) b!4730423))

(assert (= (and b!4730427 (not c!807885)) b!4730422))

(assert (= (and d!1508376 res!2002573) b!4730421))

(assert (= (and d!1508376 (not res!2002575)) b!4730428))

(assert (= (and b!4730428 res!2002572) b!4730426))

(assert (= (and b!4730426 res!2002574) b!4730424))

(declare-fun m!5672561 () Bool)

(assert (=> b!4730424 m!5672561))

(assert (=> b!4730424 m!5672561))

(declare-fun m!5672563 () Bool)

(assert (=> b!4730424 m!5672563))

(declare-fun m!5672565 () Bool)

(assert (=> d!1508376 m!5672565))

(declare-fun m!5672567 () Bool)

(assert (=> d!1508376 m!5672567))

(assert (=> b!4730426 m!5672561))

(declare-fun m!5672569 () Bool)

(assert (=> b!4730423 m!5672569))

(declare-fun m!5672571 () Bool)

(assert (=> b!4730428 m!5672571))

(assert (=> b!4730421 m!5672543))

(assert (=> b!4729456 d!1508376))

(declare-fun d!1508378 () Bool)

(declare-fun res!2002576 () Bool)

(declare-fun e!2950527 () Bool)

(assert (=> d!1508378 (=> res!2002576 e!2950527)))

(assert (=> d!1508378 (= res!2002576 ((_ is Nil!52878) (ite c!807698 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1508378 (= (forall!11627 (ite c!807698 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (ite c!807698 lambda!216933 lambda!216935)) e!2950527)))

(declare-fun b!4730429 () Bool)

(declare-fun e!2950528 () Bool)

(assert (=> b!4730429 (= e!2950527 e!2950528)))

(declare-fun res!2002577 () Bool)

(assert (=> b!4730429 (=> (not res!2002577) (not e!2950528))))

(assert (=> b!4730429 (= res!2002577 (dynLambda!21841 (ite c!807698 lambda!216933 lambda!216935) (h!59237 (ite c!807698 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun b!4730430 () Bool)

(assert (=> b!4730430 (= e!2950528 (forall!11627 (t!360278 (ite c!807698 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (ite c!807698 lambda!216933 lambda!216935)))))

(assert (= (and d!1508378 (not res!2002576)) b!4730429))

(assert (= (and b!4730429 res!2002577) b!4730430))

(declare-fun b_lambda!180389 () Bool)

(assert (=> (not b_lambda!180389) (not b!4730429)))

(declare-fun m!5672573 () Bool)

(assert (=> b!4730429 m!5672573))

(declare-fun m!5672575 () Bool)

(assert (=> b!4730430 m!5672575))

(assert (=> bm!330812 d!1508378))

(declare-fun d!1508380 () Bool)

(assert (=> d!1508380 (= (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (not (isEmpty!29199 (getValueByKey!1978 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun bs!1120069 () Bool)

(assert (= bs!1120069 d!1508380))

(assert (=> bs!1120069 m!5670481))

(declare-fun m!5672577 () Bool)

(assert (=> bs!1120069 m!5672577))

(assert (=> b!4729509 d!1508380))

(declare-fun b!4730432 () Bool)

(declare-fun e!2950529 () Option!12392)

(declare-fun e!2950530 () Option!12392)

(assert (=> b!4730432 (= e!2950529 e!2950530)))

(declare-fun c!807887 () Bool)

(assert (=> b!4730432 (= c!807887 (and ((_ is Cons!52878) (toList!5954 lt!1893054)) (not (= (_1!30555 (h!59237 (toList!5954 lt!1893054))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun d!1508382 () Bool)

(declare-fun c!807886 () Bool)

(assert (=> d!1508382 (= c!807886 (and ((_ is Cons!52878) (toList!5954 lt!1893054)) (= (_1!30555 (h!59237 (toList!5954 lt!1893054))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1508382 (= (getValueByKey!1978 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) e!2950529)))

(declare-fun b!4730431 () Bool)

(assert (=> b!4730431 (= e!2950529 (Some!12391 (_2!30555 (h!59237 (toList!5954 lt!1893054)))))))

(declare-fun b!4730433 () Bool)

(assert (=> b!4730433 (= e!2950530 (getValueByKey!1978 (t!360278 (toList!5954 lt!1893054)) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4730434 () Bool)

(assert (=> b!4730434 (= e!2950530 None!12391)))

(assert (= (and d!1508382 c!807886) b!4730431))

(assert (= (and d!1508382 (not c!807886)) b!4730432))

(assert (= (and b!4730432 c!807887) b!4730433))

(assert (= (and b!4730432 (not c!807887)) b!4730434))

(declare-fun m!5672579 () Bool)

(assert (=> b!4730433 m!5672579))

(assert (=> b!4729509 d!1508382))

(declare-fun d!1508384 () Bool)

(declare-fun res!2002578 () Bool)

(declare-fun e!2950531 () Bool)

(assert (=> d!1508384 (=> res!2002578 e!2950531)))

(assert (=> d!1508384 (= res!2002578 ((_ is Nil!52879) (t!360279 (t!360279 (toList!5953 lm!2023)))))))

(assert (=> d!1508384 (= (forall!11625 (t!360279 (t!360279 (toList!5953 lm!2023))) lambda!216768) e!2950531)))

(declare-fun b!4730435 () Bool)

(declare-fun e!2950532 () Bool)

(assert (=> b!4730435 (= e!2950531 e!2950532)))

(declare-fun res!2002579 () Bool)

(assert (=> b!4730435 (=> (not res!2002579) (not e!2950532))))

(assert (=> b!4730435 (= res!2002579 (dynLambda!21839 lambda!216768 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023))))))))

(declare-fun b!4730436 () Bool)

(assert (=> b!4730436 (= e!2950532 (forall!11625 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))) lambda!216768))))

(assert (= (and d!1508384 (not res!2002578)) b!4730435))

(assert (= (and b!4730435 res!2002579) b!4730436))

(declare-fun b_lambda!180391 () Bool)

(assert (=> (not b_lambda!180391) (not b!4730435)))

(declare-fun m!5672581 () Bool)

(assert (=> b!4730435 m!5672581))

(declare-fun m!5672583 () Bool)

(assert (=> b!4730436 m!5672583))

(assert (=> b!4729402 d!1508384))

(declare-fun d!1508386 () Bool)

(declare-fun e!2950536 () Bool)

(assert (=> d!1508386 e!2950536))

(declare-fun res!2002582 () Bool)

(assert (=> d!1508386 (=> res!2002582 e!2950536)))

(declare-fun e!2950537 () Bool)

(assert (=> d!1508386 (= res!2002582 e!2950537)))

(declare-fun res!2002580 () Bool)

(assert (=> d!1508386 (=> (not res!2002580) (not e!2950537))))

(declare-fun lt!1893868 () Bool)

(assert (=> d!1508386 (= res!2002580 (not lt!1893868))))

(declare-fun lt!1893871 () Bool)

(assert (=> d!1508386 (= lt!1893868 lt!1893871)))

(declare-fun lt!1893873 () Unit!131227)

(declare-fun e!2950535 () Unit!131227)

(assert (=> d!1508386 (= lt!1893873 e!2950535)))

(declare-fun c!807889 () Bool)

(assert (=> d!1508386 (= c!807889 lt!1893871)))

(assert (=> d!1508386 (= lt!1893871 (containsKey!3406 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> d!1508386 (= (contains!16239 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))) lt!1893868)))

(declare-fun b!4730437 () Bool)

(assert (=> b!4730437 false))

(declare-fun lt!1893872 () Unit!131227)

(declare-fun lt!1893869 () Unit!131227)

(assert (=> b!4730437 (= lt!1893872 lt!1893869)))

(assert (=> b!4730437 (containsKey!3406 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> b!4730437 (= lt!1893869 (lemmaInGetKeysListThenContainsKey!962 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun e!2950533 () Unit!131227)

(declare-fun Unit!131408 () Unit!131227)

(assert (=> b!4730437 (= e!2950533 Unit!131408)))

(declare-fun b!4730438 () Bool)

(declare-fun Unit!131409 () Unit!131227)

(assert (=> b!4730438 (= e!2950533 Unit!131409)))

(declare-fun b!4730439 () Bool)

(declare-fun e!2950534 () List!53005)

(assert (=> b!4730439 (= e!2950534 (getKeysList!963 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))

(declare-fun b!4730440 () Bool)

(declare-fun e!2950538 () Bool)

(assert (=> b!4730440 (= e!2950538 (contains!16243 (keys!19004 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun b!4730441 () Bool)

(declare-fun lt!1893875 () Unit!131227)

(assert (=> b!4730441 (= e!2950535 lt!1893875)))

(declare-fun lt!1893870 () Unit!131227)

(assert (=> b!4730441 (= lt!1893870 (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> b!4730441 (isDefined!9646 (getValueByKey!1978 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893874 () Unit!131227)

(assert (=> b!4730441 (= lt!1893874 lt!1893870)))

(assert (=> b!4730441 (= lt!1893875 (lemmaInListThenGetKeysListContains!958 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun call!330880 () Bool)

(assert (=> b!4730441 call!330880))

(declare-fun bm!330875 () Bool)

(assert (=> bm!330875 (= call!330880 (contains!16243 e!2950534 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun c!807890 () Bool)

(assert (=> bm!330875 (= c!807890 c!807889)))

(declare-fun b!4730442 () Bool)

(assert (=> b!4730442 (= e!2950534 (keys!19004 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))

(declare-fun b!4730443 () Bool)

(assert (=> b!4730443 (= e!2950535 e!2950533)))

(declare-fun c!807888 () Bool)

(assert (=> b!4730443 (= c!807888 call!330880)))

(declare-fun b!4730444 () Bool)

(assert (=> b!4730444 (= e!2950536 e!2950538)))

(declare-fun res!2002581 () Bool)

(assert (=> b!4730444 (=> (not res!2002581) (not e!2950538))))

(assert (=> b!4730444 (= res!2002581 (isDefined!9646 (getValueByKey!1978 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))))

(declare-fun b!4730445 () Bool)

(assert (=> b!4730445 (= e!2950537 (not (contains!16243 (keys!19004 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))))

(assert (= (and d!1508386 c!807889) b!4730441))

(assert (= (and d!1508386 (not c!807889)) b!4730443))

(assert (= (and b!4730443 c!807888) b!4730437))

(assert (= (and b!4730443 (not c!807888)) b!4730438))

(assert (= (or b!4730441 b!4730443) bm!330875))

(assert (= (and bm!330875 c!807890) b!4730439))

(assert (= (and bm!330875 (not c!807890)) b!4730442))

(assert (= (and d!1508386 res!2002580) b!4730445))

(assert (= (and d!1508386 (not res!2002582)) b!4730444))

(assert (= (and b!4730444 res!2002581) b!4730440))

(assert (=> b!4730439 m!5672145))

(declare-fun m!5672585 () Bool)

(assert (=> b!4730437 m!5672585))

(declare-fun m!5672587 () Bool)

(assert (=> b!4730437 m!5672587))

(declare-fun m!5672589 () Bool)

(assert (=> bm!330875 m!5672589))

(declare-fun m!5672591 () Bool)

(assert (=> b!4730444 m!5672591))

(assert (=> b!4730444 m!5672591))

(declare-fun m!5672593 () Bool)

(assert (=> b!4730444 m!5672593))

(assert (=> b!4730440 m!5669357))

(declare-fun m!5672595 () Bool)

(assert (=> b!4730440 m!5672595))

(assert (=> b!4730440 m!5672595))

(declare-fun m!5672597 () Bool)

(assert (=> b!4730440 m!5672597))

(assert (=> d!1508386 m!5672585))

(declare-fun m!5672599 () Bool)

(assert (=> b!4730441 m!5672599))

(assert (=> b!4730441 m!5672591))

(assert (=> b!4730441 m!5672591))

(assert (=> b!4730441 m!5672593))

(declare-fun m!5672601 () Bool)

(assert (=> b!4730441 m!5672601))

(assert (=> b!4730445 m!5669357))

(assert (=> b!4730445 m!5672595))

(assert (=> b!4730445 m!5672595))

(assert (=> b!4730445 m!5672597))

(assert (=> b!4730442 m!5669357))

(assert (=> b!4730442 m!5672595))

(assert (=> bs!1119031 d!1508386))

(assert (=> b!4729521 d!1507912))

(declare-fun d!1508388 () Bool)

(declare-fun c!807891 () Bool)

(assert (=> d!1508388 (= c!807891 ((_ is Nil!52881) e!2949432))))

(declare-fun e!2950539 () (InoxSet K!14230))

(assert (=> d!1508388 (= (content!9422 e!2949432) e!2950539)))

(declare-fun b!4730446 () Bool)

(assert (=> b!4730446 (= e!2950539 ((as const (Array K!14230 Bool)) false))))

(declare-fun b!4730447 () Bool)

(assert (=> b!4730447 (= e!2950539 ((_ map or) (store ((as const (Array K!14230 Bool)) false) (h!59242 e!2949432) true) (content!9422 (t!360281 e!2949432))))))

(assert (= (and d!1508388 c!807891) b!4730446))

(assert (= (and d!1508388 (not c!807891)) b!4730447))

(declare-fun m!5672603 () Bool)

(assert (=> b!4730447 m!5672603))

(declare-fun m!5672605 () Bool)

(assert (=> b!4730447 m!5672605))

(assert (=> d!1507380 d!1508388))

(declare-fun d!1508390 () Bool)

(assert (=> d!1508390 (isDefined!9645 (getValueByKey!1977 (toList!5953 lm!2023) lt!1892869))))

(declare-fun lt!1893876 () Unit!131227)

(assert (=> d!1508390 (= lt!1893876 (choose!33437 (toList!5953 lm!2023) lt!1892869))))

(declare-fun e!2950540 () Bool)

(assert (=> d!1508390 e!2950540))

(declare-fun res!2002583 () Bool)

(assert (=> d!1508390 (=> (not res!2002583) (not e!2950540))))

(assert (=> d!1508390 (= res!2002583 (isStrictlySorted!761 (toList!5953 lm!2023)))))

(assert (=> d!1508390 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1868 (toList!5953 lm!2023) lt!1892869) lt!1893876)))

(declare-fun b!4730448 () Bool)

(assert (=> b!4730448 (= e!2950540 (containsKey!3405 (toList!5953 lm!2023) lt!1892869))))

(assert (= (and d!1508390 res!2002583) b!4730448))

(assert (=> d!1508390 m!5669461))

(assert (=> d!1508390 m!5669461))

(assert (=> d!1508390 m!5670405))

(declare-fun m!5672607 () Bool)

(assert (=> d!1508390 m!5672607))

(assert (=> d!1508390 m!5669631))

(assert (=> b!4730448 m!5670401))

(assert (=> b!4729480 d!1508390))

(assert (=> b!4729480 d!1507966))

(assert (=> b!4729480 d!1507340))

(declare-fun d!1508392 () Bool)

(declare-fun res!2002584 () Bool)

(declare-fun e!2950541 () Bool)

(assert (=> d!1508392 (=> res!2002584 e!2950541)))

(assert (=> d!1508392 (= res!2002584 (and ((_ is Cons!52878) (t!360278 lt!1892978)) (= (_1!30555 (h!59237 (t!360278 lt!1892978))) key!4653)))))

(assert (=> d!1508392 (= (containsKey!3402 (t!360278 lt!1892978) key!4653) e!2950541)))

(declare-fun b!4730449 () Bool)

(declare-fun e!2950542 () Bool)

(assert (=> b!4730449 (= e!2950541 e!2950542)))

(declare-fun res!2002585 () Bool)

(assert (=> b!4730449 (=> (not res!2002585) (not e!2950542))))

(assert (=> b!4730449 (= res!2002585 ((_ is Cons!52878) (t!360278 lt!1892978)))))

(declare-fun b!4730450 () Bool)

(assert (=> b!4730450 (= e!2950542 (containsKey!3402 (t!360278 (t!360278 lt!1892978)) key!4653))))

(assert (= (and d!1508392 (not res!2002584)) b!4730449))

(assert (= (and b!4730449 res!2002585) b!4730450))

(declare-fun m!5672609 () Bool)

(assert (=> b!4730450 m!5672609))

(assert (=> b!4729371 d!1508392))

(declare-fun d!1508394 () Bool)

(declare-fun res!2002586 () Bool)

(declare-fun e!2950543 () Bool)

(assert (=> d!1508394 (=> res!2002586 e!2950543)))

(assert (=> d!1508394 (= res!2002586 ((_ is Nil!52878) (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1508394 (= (forall!11627 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lambda!216873) e!2950543)))

(declare-fun b!4730451 () Bool)

(declare-fun e!2950544 () Bool)

(assert (=> b!4730451 (= e!2950543 e!2950544)))

(declare-fun res!2002587 () Bool)

(assert (=> b!4730451 (=> (not res!2002587) (not e!2950544))))

(assert (=> b!4730451 (= res!2002587 (dynLambda!21841 lambda!216873 (h!59237 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun b!4730452 () Bool)

(assert (=> b!4730452 (= e!2950544 (forall!11627 (t!360278 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lambda!216873))))

(assert (= (and d!1508394 (not res!2002586)) b!4730451))

(assert (= (and b!4730451 res!2002587) b!4730452))

(declare-fun b_lambda!180393 () Bool)

(assert (=> (not b_lambda!180393) (not b!4730451)))

(declare-fun m!5672611 () Bool)

(assert (=> b!4730451 m!5672611))

(declare-fun m!5672613 () Bool)

(assert (=> b!4730452 m!5672613))

(assert (=> b!4729512 d!1508394))

(assert (=> d!1507430 d!1507358))

(assert (=> b!4729363 d!1508370))

(assert (=> b!4729363 d!1508372))

(declare-fun d!1508396 () Bool)

(declare-fun lt!1893877 () List!53002)

(assert (=> d!1508396 (not (containsKey!3402 lt!1893877 key!4653))))

(declare-fun e!2950546 () List!53002)

(assert (=> d!1508396 (= lt!1893877 e!2950546)))

(declare-fun c!807892 () Bool)

(assert (=> d!1508396 (= c!807892 (and ((_ is Cons!52878) (t!360278 (t!360278 (t!360278 oldBucket!34)))) (= (_1!30555 (h!59237 (t!360278 (t!360278 (t!360278 oldBucket!34))))) key!4653)))))

(assert (=> d!1508396 (noDuplicateKeys!2032 (t!360278 (t!360278 (t!360278 oldBucket!34))))))

(assert (=> d!1508396 (= (removePairForKey!1627 (t!360278 (t!360278 (t!360278 oldBucket!34))) key!4653) lt!1893877)))

(declare-fun b!4730454 () Bool)

(declare-fun e!2950545 () List!53002)

(assert (=> b!4730454 (= e!2950546 e!2950545)))

(declare-fun c!807893 () Bool)

(assert (=> b!4730454 (= c!807893 ((_ is Cons!52878) (t!360278 (t!360278 (t!360278 oldBucket!34)))))))

(declare-fun b!4730453 () Bool)

(assert (=> b!4730453 (= e!2950546 (t!360278 (t!360278 (t!360278 (t!360278 oldBucket!34)))))))

(declare-fun b!4730455 () Bool)

(assert (=> b!4730455 (= e!2950545 (Cons!52878 (h!59237 (t!360278 (t!360278 (t!360278 oldBucket!34)))) (removePairForKey!1627 (t!360278 (t!360278 (t!360278 (t!360278 oldBucket!34)))) key!4653)))))

(declare-fun b!4730456 () Bool)

(assert (=> b!4730456 (= e!2950545 Nil!52878)))

(assert (= (and d!1508396 c!807892) b!4730453))

(assert (= (and d!1508396 (not c!807892)) b!4730454))

(assert (= (and b!4730454 c!807893) b!4730455))

(assert (= (and b!4730454 (not c!807893)) b!4730456))

(declare-fun m!5672615 () Bool)

(assert (=> d!1508396 m!5672615))

(assert (=> d!1508396 m!5671783))

(declare-fun m!5672617 () Bool)

(assert (=> b!4730455 m!5672617))

(assert (=> b!4729425 d!1508396))

(declare-fun d!1508398 () Bool)

(declare-fun lt!1893878 () Bool)

(assert (=> d!1508398 (= lt!1893878 (select (content!9423 (toList!5954 lt!1893329)) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(declare-fun e!2950547 () Bool)

(assert (=> d!1508398 (= lt!1893878 e!2950547)))

(declare-fun res!2002588 () Bool)

(assert (=> d!1508398 (=> (not res!2002588) (not e!2950547))))

(assert (=> d!1508398 (= res!2002588 ((_ is Cons!52878) (toList!5954 lt!1893329)))))

(assert (=> d!1508398 (= (contains!16242 (toList!5954 lt!1893329) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893878)))

(declare-fun b!4730457 () Bool)

(declare-fun e!2950548 () Bool)

(assert (=> b!4730457 (= e!2950547 e!2950548)))

(declare-fun res!2002589 () Bool)

(assert (=> b!4730457 (=> res!2002589 e!2950548)))

(assert (=> b!4730457 (= res!2002589 (= (h!59237 (toList!5954 lt!1893329)) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(declare-fun b!4730458 () Bool)

(assert (=> b!4730458 (= e!2950548 (contains!16242 (t!360278 (toList!5954 lt!1893329)) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (= (and d!1508398 res!2002588) b!4730457))

(assert (= (and b!4730457 (not res!2002589)) b!4730458))

(declare-fun m!5672619 () Bool)

(assert (=> d!1508398 m!5672619))

(declare-fun m!5672621 () Bool)

(assert (=> d!1508398 m!5672621))

(declare-fun m!5672623 () Bool)

(assert (=> b!4730458 m!5672623))

(assert (=> b!4729499 d!1508398))

(declare-fun d!1508400 () Bool)

(declare-fun res!2002590 () Bool)

(declare-fun e!2950549 () Bool)

(assert (=> d!1508400 (=> res!2002590 e!2950549)))

(assert (=> d!1508400 (= res!2002590 (and ((_ is Cons!52878) (t!360278 (t!360278 newBucket!218))) (= (_1!30555 (h!59237 (t!360278 (t!360278 newBucket!218)))) (_1!30555 (h!59237 newBucket!218)))))))

(assert (=> d!1508400 (= (containsKey!3402 (t!360278 (t!360278 newBucket!218)) (_1!30555 (h!59237 newBucket!218))) e!2950549)))

(declare-fun b!4730459 () Bool)

(declare-fun e!2950550 () Bool)

(assert (=> b!4730459 (= e!2950549 e!2950550)))

(declare-fun res!2002591 () Bool)

(assert (=> b!4730459 (=> (not res!2002591) (not e!2950550))))

(assert (=> b!4730459 (= res!2002591 ((_ is Cons!52878) (t!360278 (t!360278 newBucket!218))))))

(declare-fun b!4730460 () Bool)

(assert (=> b!4730460 (= e!2950550 (containsKey!3402 (t!360278 (t!360278 (t!360278 newBucket!218))) (_1!30555 (h!59237 newBucket!218))))))

(assert (= (and d!1508400 (not res!2002590)) b!4730459))

(assert (= (and b!4730459 res!2002591) b!4730460))

(declare-fun m!5672625 () Bool)

(assert (=> b!4730460 m!5672625))

(assert (=> b!4729436 d!1508400))

(assert (=> b!4729414 d!1508084))

(declare-fun d!1508402 () Bool)

(declare-fun res!2002592 () Bool)

(declare-fun e!2950551 () Bool)

(assert (=> d!1508402 (=> res!2002592 e!2950551)))

(assert (=> d!1508402 (= res!2002592 (not ((_ is Cons!52878) (t!360278 (_2!30556 (h!59238 lt!1892767))))))))

(assert (=> d!1508402 (= (noDuplicateKeys!2032 (t!360278 (_2!30556 (h!59238 lt!1892767)))) e!2950551)))

(declare-fun b!4730461 () Bool)

(declare-fun e!2950552 () Bool)

(assert (=> b!4730461 (= e!2950551 e!2950552)))

(declare-fun res!2002593 () Bool)

(assert (=> b!4730461 (=> (not res!2002593) (not e!2950552))))

(assert (=> b!4730461 (= res!2002593 (not (containsKey!3402 (t!360278 (t!360278 (_2!30556 (h!59238 lt!1892767)))) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 lt!1892767))))))))))

(declare-fun b!4730462 () Bool)

(assert (=> b!4730462 (= e!2950552 (noDuplicateKeys!2032 (t!360278 (t!360278 (_2!30556 (h!59238 lt!1892767))))))))

(assert (= (and d!1508402 (not res!2002592)) b!4730461))

(assert (= (and b!4730461 res!2002593) b!4730462))

(declare-fun m!5672627 () Bool)

(assert (=> b!4730461 m!5672627))

(declare-fun m!5672629 () Bool)

(assert (=> b!4730462 m!5672629))

(assert (=> b!4729579 d!1508402))

(declare-fun d!1508404 () Bool)

(declare-fun c!807894 () Bool)

(assert (=> d!1508404 (= c!807894 ((_ is Nil!52881) lt!1893267))))

(declare-fun e!2950553 () (InoxSet K!14230))

(assert (=> d!1508404 (= (content!9422 lt!1893267) e!2950553)))

(declare-fun b!4730463 () Bool)

(assert (=> b!4730463 (= e!2950553 ((as const (Array K!14230 Bool)) false))))

(declare-fun b!4730464 () Bool)

(assert (=> b!4730464 (= e!2950553 ((_ map or) (store ((as const (Array K!14230 Bool)) false) (h!59242 lt!1893267) true) (content!9422 (t!360281 lt!1893267))))))

(assert (= (and d!1508404 c!807894) b!4730463))

(assert (= (and d!1508404 (not c!807894)) b!4730464))

(declare-fun m!5672631 () Bool)

(assert (=> b!4730464 m!5672631))

(declare-fun m!5672633 () Bool)

(assert (=> b!4730464 m!5672633))

(assert (=> b!4729397 d!1508404))

(declare-fun d!1508406 () Bool)

(declare-fun c!807895 () Bool)

(assert (=> d!1508406 (= c!807895 ((_ is Nil!52881) (map!11698 (toList!5954 lt!1892771) lambda!216926)))))

(declare-fun e!2950554 () (InoxSet K!14230))

(assert (=> d!1508406 (= (content!9422 (map!11698 (toList!5954 lt!1892771) lambda!216926)) e!2950554)))

(declare-fun b!4730465 () Bool)

(assert (=> b!4730465 (= e!2950554 ((as const (Array K!14230 Bool)) false))))

(declare-fun b!4730466 () Bool)

(assert (=> b!4730466 (= e!2950554 ((_ map or) (store ((as const (Array K!14230 Bool)) false) (h!59242 (map!11698 (toList!5954 lt!1892771) lambda!216926)) true) (content!9422 (t!360281 (map!11698 (toList!5954 lt!1892771) lambda!216926)))))))

(assert (= (and d!1508406 c!807895) b!4730465))

(assert (= (and d!1508406 (not c!807895)) b!4730466))

(declare-fun m!5672635 () Bool)

(assert (=> b!4730466 m!5672635))

(declare-fun m!5672637 () Bool)

(assert (=> b!4730466 m!5672637))

(assert (=> b!4729397 d!1508406))

(declare-fun d!1508408 () Bool)

(declare-fun lt!1893879 () List!53005)

(assert (=> d!1508408 (= (size!35983 lt!1893879) (size!35984 (toList!5954 lt!1892771)))))

(declare-fun e!2950555 () List!53005)

(assert (=> d!1508408 (= lt!1893879 e!2950555)))

(declare-fun c!807896 () Bool)

(assert (=> d!1508408 (= c!807896 ((_ is Nil!52878) (toList!5954 lt!1892771)))))

(assert (=> d!1508408 (= (map!11698 (toList!5954 lt!1892771) lambda!216926) lt!1893879)))

(declare-fun b!4730467 () Bool)

(assert (=> b!4730467 (= e!2950555 Nil!52881)))

(declare-fun b!4730468 () Bool)

(assert (=> b!4730468 (= e!2950555 ($colon$colon!1083 (map!11698 (t!360278 (toList!5954 lt!1892771)) lambda!216926) (dynLambda!21845 lambda!216926 (h!59237 (toList!5954 lt!1892771)))))))

(assert (= (and d!1508408 c!807896) b!4730467))

(assert (= (and d!1508408 (not c!807896)) b!4730468))

(declare-fun b_lambda!180395 () Bool)

(assert (=> (not b_lambda!180395) (not b!4730468)))

(declare-fun m!5672639 () Bool)

(assert (=> d!1508408 m!5672639))

(assert (=> d!1508408 m!5671925))

(declare-fun m!5672641 () Bool)

(assert (=> b!4730468 m!5672641))

(declare-fun m!5672643 () Bool)

(assert (=> b!4730468 m!5672643))

(assert (=> b!4730468 m!5672641))

(assert (=> b!4730468 m!5672643))

(declare-fun m!5672645 () Bool)

(assert (=> b!4730468 m!5672645))

(assert (=> b!4729397 d!1508408))

(declare-fun d!1508410 () Bool)

(declare-fun res!2002594 () Bool)

(declare-fun e!2950556 () Bool)

(assert (=> d!1508410 (=> res!2002594 e!2950556)))

(assert (=> d!1508410 (= res!2002594 (and ((_ is Cons!52878) (toList!5954 lt!1893054)) (= (_1!30555 (h!59237 (toList!5954 lt!1893054))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1508410 (= (containsKey!3406 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) e!2950556)))

(declare-fun b!4730469 () Bool)

(declare-fun e!2950557 () Bool)

(assert (=> b!4730469 (= e!2950556 e!2950557)))

(declare-fun res!2002595 () Bool)

(assert (=> b!4730469 (=> (not res!2002595) (not e!2950557))))

(assert (=> b!4730469 (= res!2002595 ((_ is Cons!52878) (toList!5954 lt!1893054)))))

(declare-fun b!4730470 () Bool)

(assert (=> b!4730470 (= e!2950557 (containsKey!3406 (t!360278 (toList!5954 lt!1893054)) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (= (and d!1508410 (not res!2002594)) b!4730469))

(assert (= (and b!4730469 res!2002595) b!4730470))

(declare-fun m!5672647 () Bool)

(assert (=> b!4730470 m!5672647))

(assert (=> b!4729502 d!1508410))

(declare-fun d!1508412 () Bool)

(assert (=> d!1508412 (containsKey!3406 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(declare-fun lt!1893880 () Unit!131227)

(assert (=> d!1508412 (= lt!1893880 (choose!33439 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1508412 (invariantList!1523 (toList!5954 lt!1893054))))

(assert (=> d!1508412 (= (lemmaInGetKeysListThenContainsKey!962 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893880)))

(declare-fun bs!1120070 () Bool)

(assert (= bs!1120070 d!1508412))

(assert (=> bs!1120070 m!5670475))

(declare-fun m!5672649 () Bool)

(assert (=> bs!1120070 m!5672649))

(declare-fun m!5672651 () Bool)

(assert (=> bs!1120070 m!5672651))

(assert (=> b!4729502 d!1508412))

(declare-fun d!1508414 () Bool)

(declare-fun e!2950561 () Bool)

(assert (=> d!1508414 e!2950561))

(declare-fun res!2002598 () Bool)

(assert (=> d!1508414 (=> res!2002598 e!2950561)))

(declare-fun e!2950562 () Bool)

(assert (=> d!1508414 (= res!2002598 e!2950562)))

(declare-fun res!2002596 () Bool)

(assert (=> d!1508414 (=> (not res!2002596) (not e!2950562))))

(declare-fun lt!1893881 () Bool)

(assert (=> d!1508414 (= res!2002596 (not lt!1893881))))

(declare-fun lt!1893884 () Bool)

(assert (=> d!1508414 (= lt!1893881 lt!1893884)))

(declare-fun lt!1893886 () Unit!131227)

(declare-fun e!2950560 () Unit!131227)

(assert (=> d!1508414 (= lt!1893886 e!2950560)))

(declare-fun c!807898 () Bool)

(assert (=> d!1508414 (= c!807898 lt!1893884)))

(assert (=> d!1508414 (= lt!1893884 (containsKey!3406 (toList!5954 lt!1893054) (_1!30555 (h!59237 (toList!5954 lt!1893051)))))))

(assert (=> d!1508414 (= (contains!16239 lt!1893054 (_1!30555 (h!59237 (toList!5954 lt!1893051)))) lt!1893881)))

(declare-fun b!4730471 () Bool)

(assert (=> b!4730471 false))

(declare-fun lt!1893885 () Unit!131227)

(declare-fun lt!1893882 () Unit!131227)

(assert (=> b!4730471 (= lt!1893885 lt!1893882)))

(assert (=> b!4730471 (containsKey!3406 (toList!5954 lt!1893054) (_1!30555 (h!59237 (toList!5954 lt!1893051))))))

(assert (=> b!4730471 (= lt!1893882 (lemmaInGetKeysListThenContainsKey!962 (toList!5954 lt!1893054) (_1!30555 (h!59237 (toList!5954 lt!1893051)))))))

(declare-fun e!2950558 () Unit!131227)

(declare-fun Unit!131421 () Unit!131227)

(assert (=> b!4730471 (= e!2950558 Unit!131421)))

(declare-fun b!4730472 () Bool)

(declare-fun Unit!131422 () Unit!131227)

(assert (=> b!4730472 (= e!2950558 Unit!131422)))

(declare-fun b!4730473 () Bool)

(declare-fun e!2950559 () List!53005)

(assert (=> b!4730473 (= e!2950559 (getKeysList!963 (toList!5954 lt!1893054)))))

(declare-fun b!4730474 () Bool)

(declare-fun e!2950563 () Bool)

(assert (=> b!4730474 (= e!2950563 (contains!16243 (keys!19004 lt!1893054) (_1!30555 (h!59237 (toList!5954 lt!1893051)))))))

(declare-fun b!4730475 () Bool)

(declare-fun lt!1893888 () Unit!131227)

(assert (=> b!4730475 (= e!2950560 lt!1893888)))

(declare-fun lt!1893883 () Unit!131227)

(assert (=> b!4730475 (= lt!1893883 (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 lt!1893054) (_1!30555 (h!59237 (toList!5954 lt!1893051)))))))

(assert (=> b!4730475 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893054) (_1!30555 (h!59237 (toList!5954 lt!1893051)))))))

(declare-fun lt!1893887 () Unit!131227)

(assert (=> b!4730475 (= lt!1893887 lt!1893883)))

(assert (=> b!4730475 (= lt!1893888 (lemmaInListThenGetKeysListContains!958 (toList!5954 lt!1893054) (_1!30555 (h!59237 (toList!5954 lt!1893051)))))))

(declare-fun call!330881 () Bool)

(assert (=> b!4730475 call!330881))

(declare-fun bm!330876 () Bool)

(assert (=> bm!330876 (= call!330881 (contains!16243 e!2950559 (_1!30555 (h!59237 (toList!5954 lt!1893051)))))))

(declare-fun c!807899 () Bool)

(assert (=> bm!330876 (= c!807899 c!807898)))

(declare-fun b!4730476 () Bool)

(assert (=> b!4730476 (= e!2950559 (keys!19004 lt!1893054))))

(declare-fun b!4730477 () Bool)

(assert (=> b!4730477 (= e!2950560 e!2950558)))

(declare-fun c!807897 () Bool)

(assert (=> b!4730477 (= c!807897 call!330881)))

(declare-fun b!4730478 () Bool)

(assert (=> b!4730478 (= e!2950561 e!2950563)))

(declare-fun res!2002597 () Bool)

(assert (=> b!4730478 (=> (not res!2002597) (not e!2950563))))

(assert (=> b!4730478 (= res!2002597 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893054) (_1!30555 (h!59237 (toList!5954 lt!1893051))))))))

(declare-fun b!4730479 () Bool)

(assert (=> b!4730479 (= e!2950562 (not (contains!16243 (keys!19004 lt!1893054) (_1!30555 (h!59237 (toList!5954 lt!1893051))))))))

(assert (= (and d!1508414 c!807898) b!4730475))

(assert (= (and d!1508414 (not c!807898)) b!4730477))

(assert (= (and b!4730477 c!807897) b!4730471))

(assert (= (and b!4730477 (not c!807897)) b!4730472))

(assert (= (or b!4730475 b!4730477) bm!330876))

(assert (= (and bm!330876 c!807899) b!4730473))

(assert (= (and bm!330876 (not c!807899)) b!4730476))

(assert (= (and d!1508414 res!2002596) b!4730479))

(assert (= (and d!1508414 (not res!2002598)) b!4730478))

(assert (= (and b!4730478 res!2002597) b!4730474))

(assert (=> b!4730473 m!5670473))

(declare-fun m!5672653 () Bool)

(assert (=> b!4730471 m!5672653))

(declare-fun m!5672655 () Bool)

(assert (=> b!4730471 m!5672655))

(declare-fun m!5672657 () Bool)

(assert (=> bm!330876 m!5672657))

(declare-fun m!5672659 () Bool)

(assert (=> b!4730478 m!5672659))

(assert (=> b!4730478 m!5672659))

(declare-fun m!5672661 () Bool)

(assert (=> b!4730478 m!5672661))

(assert (=> b!4730474 m!5670485))

(assert (=> b!4730474 m!5670485))

(declare-fun m!5672663 () Bool)

(assert (=> b!4730474 m!5672663))

(assert (=> d!1508414 m!5672653))

(declare-fun m!5672665 () Bool)

(assert (=> b!4730475 m!5672665))

(assert (=> b!4730475 m!5672659))

(assert (=> b!4730475 m!5672659))

(assert (=> b!4730475 m!5672661))

(declare-fun m!5672667 () Bool)

(assert (=> b!4730475 m!5672667))

(assert (=> b!4730479 m!5670485))

(assert (=> b!4730479 m!5670485))

(assert (=> b!4730479 m!5672663))

(assert (=> b!4730476 m!5670485))

(assert (=> bs!1119029 d!1508414))

(declare-fun lt!1893889 () Bool)

(declare-fun d!1508416 () Bool)

(assert (=> d!1508416 (= lt!1893889 (select (content!9419 (t!360279 (toList!5953 lm!2023))) (tuple2!54525 lt!1892869 lt!1892868)))))

(declare-fun e!2950564 () Bool)

(assert (=> d!1508416 (= lt!1893889 e!2950564)))

(declare-fun res!2002599 () Bool)

(assert (=> d!1508416 (=> (not res!2002599) (not e!2950564))))

(assert (=> d!1508416 (= res!2002599 ((_ is Cons!52879) (t!360279 (toList!5953 lm!2023))))))

(assert (=> d!1508416 (= (contains!16237 (t!360279 (toList!5953 lm!2023)) (tuple2!54525 lt!1892869 lt!1892868)) lt!1893889)))

(declare-fun b!4730480 () Bool)

(declare-fun e!2950565 () Bool)

(assert (=> b!4730480 (= e!2950564 e!2950565)))

(declare-fun res!2002600 () Bool)

(assert (=> b!4730480 (=> res!2002600 e!2950565)))

(assert (=> b!4730480 (= res!2002600 (= (h!59238 (t!360279 (toList!5953 lm!2023))) (tuple2!54525 lt!1892869 lt!1892868)))))

(declare-fun b!4730481 () Bool)

(assert (=> b!4730481 (= e!2950565 (contains!16237 (t!360279 (t!360279 (toList!5953 lm!2023))) (tuple2!54525 lt!1892869 lt!1892868)))))

(assert (= (and d!1508416 res!2002599) b!4730480))

(assert (= (and b!4730480 (not res!2002600)) b!4730481))

(assert (=> d!1508416 m!5670579))

(declare-fun m!5672669 () Bool)

(assert (=> d!1508416 m!5672669))

(declare-fun m!5672671 () Bool)

(assert (=> b!4730481 m!5672671))

(assert (=> b!4729484 d!1508416))

(declare-fun d!1508418 () Bool)

(declare-fun lt!1893890 () Bool)

(assert (=> d!1508418 (= lt!1893890 (select (content!9422 (t!360281 e!2949432)) key!4653))))

(declare-fun e!2950567 () Bool)

(assert (=> d!1508418 (= lt!1893890 e!2950567)))

(declare-fun res!2002602 () Bool)

(assert (=> d!1508418 (=> (not res!2002602) (not e!2950567))))

(assert (=> d!1508418 (= res!2002602 ((_ is Cons!52881) (t!360281 e!2949432)))))

(assert (=> d!1508418 (= (contains!16243 (t!360281 e!2949432) key!4653) lt!1893890)))

(declare-fun b!4730482 () Bool)

(declare-fun e!2950566 () Bool)

(assert (=> b!4730482 (= e!2950567 e!2950566)))

(declare-fun res!2002601 () Bool)

(assert (=> b!4730482 (=> res!2002601 e!2950566)))

(assert (=> b!4730482 (= res!2002601 (= (h!59242 (t!360281 e!2949432)) key!4653))))

(declare-fun b!4730483 () Bool)

(assert (=> b!4730483 (= e!2950566 (contains!16243 (t!360281 (t!360281 e!2949432)) key!4653))))

(assert (= (and d!1508418 res!2002602) b!4730482))

(assert (= (and b!4730482 (not res!2002601)) b!4730483))

(assert (=> d!1508418 m!5672605))

(declare-fun m!5672673 () Bool)

(assert (=> d!1508418 m!5672673))

(declare-fun m!5672675 () Bool)

(assert (=> b!4730483 m!5672675))

(assert (=> b!4729422 d!1508418))

(declare-fun d!1508420 () Bool)

(declare-fun res!2002603 () Bool)

(declare-fun e!2950568 () Bool)

(assert (=> d!1508420 (=> res!2002603 e!2950568)))

(assert (=> d!1508420 (= res!2002603 (and ((_ is Cons!52878) (t!360278 lt!1892980)) (= (_1!30555 (h!59237 (t!360278 lt!1892980))) key!4653)))))

(assert (=> d!1508420 (= (containsKey!3402 (t!360278 lt!1892980) key!4653) e!2950568)))

(declare-fun b!4730484 () Bool)

(declare-fun e!2950569 () Bool)

(assert (=> b!4730484 (= e!2950568 e!2950569)))

(declare-fun res!2002604 () Bool)

(assert (=> b!4730484 (=> (not res!2002604) (not e!2950569))))

(assert (=> b!4730484 (= res!2002604 ((_ is Cons!52878) (t!360278 lt!1892980)))))

(declare-fun b!4730485 () Bool)

(assert (=> b!4730485 (= e!2950569 (containsKey!3402 (t!360278 (t!360278 lt!1892980)) key!4653))))

(assert (= (and d!1508420 (not res!2002603)) b!4730484))

(assert (= (and b!4730484 res!2002604) b!4730485))

(declare-fun m!5672677 () Bool)

(assert (=> b!4730485 m!5672677))

(assert (=> b!4729468 d!1508420))

(declare-fun d!1508422 () Bool)

(declare-fun lt!1893891 () Bool)

(assert (=> d!1508422 (= lt!1893891 (select (content!9422 (getKeysList!963 (toList!5954 lt!1892771))) key!4653))))

(declare-fun e!2950571 () Bool)

(assert (=> d!1508422 (= lt!1893891 e!2950571)))

(declare-fun res!2002606 () Bool)

(assert (=> d!1508422 (=> (not res!2002606) (not e!2950571))))

(assert (=> d!1508422 (= res!2002606 ((_ is Cons!52881) (getKeysList!963 (toList!5954 lt!1892771))))))

(assert (=> d!1508422 (= (contains!16243 (getKeysList!963 (toList!5954 lt!1892771)) key!4653) lt!1893891)))

(declare-fun b!4730486 () Bool)

(declare-fun e!2950570 () Bool)

(assert (=> b!4730486 (= e!2950571 e!2950570)))

(declare-fun res!2002605 () Bool)

(assert (=> b!4730486 (=> res!2002605 e!2950570)))

(assert (=> b!4730486 (= res!2002605 (= (h!59242 (getKeysList!963 (toList!5954 lt!1892771))) key!4653))))

(declare-fun b!4730487 () Bool)

(assert (=> b!4730487 (= e!2950570 (contains!16243 (t!360281 (getKeysList!963 (toList!5954 lt!1892771))) key!4653))))

(assert (= (and d!1508422 res!2002606) b!4730486))

(assert (= (and b!4730486 (not res!2002605)) b!4730487))

(assert (=> d!1508422 m!5669537))

(declare-fun m!5672679 () Bool)

(assert (=> d!1508422 m!5672679))

(declare-fun m!5672681 () Bool)

(assert (=> d!1508422 m!5672681))

(declare-fun m!5672683 () Bool)

(assert (=> b!4730487 m!5672683))

(assert (=> d!1507486 d!1508422))

(assert (=> d!1507486 d!1507364))

(declare-fun d!1508424 () Bool)

(assert (=> d!1508424 (contains!16243 (getKeysList!963 (toList!5954 lt!1892771)) key!4653)))

(assert (=> d!1508424 true))

(declare-fun _$14!1544 () Unit!131227)

(assert (=> d!1508424 (= (choose!33444 (toList!5954 lt!1892771) key!4653) _$14!1544)))

(declare-fun bs!1120071 () Bool)

(assert (= bs!1120071 d!1508424))

(assert (=> bs!1120071 m!5669537))

(assert (=> bs!1120071 m!5669537))

(assert (=> bs!1120071 m!5670619))

(assert (=> d!1507486 d!1508424))

(declare-fun d!1508426 () Bool)

(assert (=> d!1508426 (= (invariantList!1523 (toList!5954 lt!1892771)) (noDuplicatedKeys!383 (toList!5954 lt!1892771)))))

(declare-fun bs!1120072 () Bool)

(assert (= bs!1120072 d!1508426))

(declare-fun m!5672685 () Bool)

(assert (=> bs!1120072 m!5672685))

(assert (=> d!1507486 d!1508426))

(declare-fun d!1508428 () Bool)

(assert (=> d!1508428 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893892 () Unit!131227)

(assert (=> d!1508428 (= lt!1893892 (choose!33443 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1508428 (invariantList!1523 (toList!5954 lt!1893054))))

(assert (=> d!1508428 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893892)))

(declare-fun bs!1120073 () Bool)

(assert (= bs!1120073 d!1508428))

(assert (=> bs!1120073 m!5670481))

(assert (=> bs!1120073 m!5670481))

(assert (=> bs!1120073 m!5670483))

(declare-fun m!5672687 () Bool)

(assert (=> bs!1120073 m!5672687))

(assert (=> bs!1120073 m!5672651))

(assert (=> b!4729506 d!1508428))

(assert (=> b!4729506 d!1508380))

(assert (=> b!4729506 d!1508382))

(declare-fun d!1508430 () Bool)

(assert (=> d!1508430 (contains!16243 (getKeysList!963 (toList!5954 lt!1893054)) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(declare-fun lt!1893893 () Unit!131227)

(assert (=> d!1508430 (= lt!1893893 (choose!33444 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1508430 (invariantList!1523 (toList!5954 lt!1893054))))

(assert (=> d!1508430 (= (lemmaInListThenGetKeysListContains!958 (toList!5954 lt!1893054) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893893)))

(declare-fun bs!1120074 () Bool)

(assert (= bs!1120074 d!1508430))

(assert (=> bs!1120074 m!5670473))

(assert (=> bs!1120074 m!5670473))

(declare-fun m!5672689 () Bool)

(assert (=> bs!1120074 m!5672689))

(declare-fun m!5672691 () Bool)

(assert (=> bs!1120074 m!5672691))

(assert (=> bs!1120074 m!5672651))

(assert (=> b!4729506 d!1508430))

(declare-fun d!1508432 () Bool)

(declare-fun res!2002611 () Bool)

(declare-fun e!2950576 () Bool)

(assert (=> d!1508432 (=> res!2002611 e!2950576)))

(assert (=> d!1508432 (= res!2002611 ((_ is Nil!52881) lt!1893283))))

(assert (=> d!1508432 (= (forall!11629 lt!1893283 lambda!216931) e!2950576)))

(declare-fun b!4730492 () Bool)

(declare-fun e!2950577 () Bool)

(assert (=> b!4730492 (= e!2950576 e!2950577)))

(declare-fun res!2002612 () Bool)

(assert (=> b!4730492 (=> (not res!2002612) (not e!2950577))))

(assert (=> b!4730492 (= res!2002612 (dynLambda!21844 lambda!216931 (h!59242 lt!1893283)))))

(declare-fun b!4730493 () Bool)

(assert (=> b!4730493 (= e!2950577 (forall!11629 (t!360281 lt!1893283) lambda!216931))))

(assert (= (and d!1508432 (not res!2002611)) b!4730492))

(assert (= (and b!4730492 res!2002612) b!4730493))

(declare-fun b_lambda!180397 () Bool)

(assert (=> (not b_lambda!180397) (not b!4730492)))

(declare-fun m!5672693 () Bool)

(assert (=> b!4730492 m!5672693))

(declare-fun m!5672695 () Bool)

(assert (=> b!4730493 m!5672695))

(assert (=> b!4729446 d!1508432))

(declare-fun d!1508434 () Bool)

(declare-fun res!2002613 () Bool)

(declare-fun e!2950578 () Bool)

(assert (=> d!1508434 (=> res!2002613 e!2950578)))

(assert (=> d!1508434 (= res!2002613 (and ((_ is Cons!52878) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) key!4653)))))

(assert (=> d!1508434 (= (containsKey!3406 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653) e!2950578)))

(declare-fun b!4730494 () Bool)

(declare-fun e!2950579 () Bool)

(assert (=> b!4730494 (= e!2950578 e!2950579)))

(declare-fun res!2002614 () Bool)

(assert (=> b!4730494 (=> (not res!2002614) (not e!2950579))))

(assert (=> b!4730494 (= res!2002614 ((_ is Cons!52878) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))))))

(declare-fun b!4730495 () Bool)

(assert (=> b!4730495 (= e!2950579 (containsKey!3406 (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) key!4653))))

(assert (= (and d!1508434 (not res!2002613)) b!4730494))

(assert (= (and b!4730494 res!2002614) b!4730495))

(declare-fun m!5672697 () Bool)

(assert (=> b!4730495 m!5672697))

(assert (=> b!4729356 d!1508434))

(declare-fun d!1508436 () Bool)

(assert (=> d!1508436 (containsKey!3406 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653)))

(declare-fun lt!1893894 () Unit!131227)

(assert (=> d!1508436 (= lt!1893894 (choose!33439 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653))))

(assert (=> d!1508436 (invariantList!1523 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))))

(assert (=> d!1508436 (= (lemmaInGetKeysListThenContainsKey!962 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) key!4653) lt!1893894)))

(declare-fun bs!1120075 () Bool)

(assert (= bs!1120075 d!1508436))

(assert (=> bs!1120075 m!5670233))

(declare-fun m!5672699 () Bool)

(assert (=> bs!1120075 m!5672699))

(assert (=> bs!1120075 m!5672551))

(assert (=> b!4729356 d!1508436))

(declare-fun d!1508438 () Bool)

(declare-fun res!2002615 () Bool)

(declare-fun e!2950580 () Bool)

(assert (=> d!1508438 (=> res!2002615 e!2950580)))

(assert (=> d!1508438 (= res!2002615 (and ((_ is Cons!52878) lt!1893279) (= (_1!30555 (h!59237 lt!1893279)) key!4653)))))

(assert (=> d!1508438 (= (containsKey!3402 lt!1893279 key!4653) e!2950580)))

(declare-fun b!4730496 () Bool)

(declare-fun e!2950581 () Bool)

(assert (=> b!4730496 (= e!2950580 e!2950581)))

(declare-fun res!2002616 () Bool)

(assert (=> b!4730496 (=> (not res!2002616) (not e!2950581))))

(assert (=> b!4730496 (= res!2002616 ((_ is Cons!52878) lt!1893279))))

(declare-fun b!4730497 () Bool)

(assert (=> b!4730497 (= e!2950581 (containsKey!3402 (t!360278 lt!1893279) key!4653))))

(assert (= (and d!1508438 (not res!2002615)) b!4730496))

(assert (= (and b!4730496 res!2002616) b!4730497))

(declare-fun m!5672701 () Bool)

(assert (=> b!4730497 m!5672701))

(assert (=> d!1507382 d!1508438))

(assert (=> d!1507382 d!1507952))

(declare-fun d!1508440 () Bool)

(declare-fun c!807902 () Bool)

(assert (=> d!1508440 (= c!807902 ((_ is Nil!52878) lt!1892763))))

(declare-fun e!2950584 () (InoxSet tuple2!54522))

(assert (=> d!1508440 (= (content!9423 lt!1892763) e!2950584)))

(declare-fun b!4730502 () Bool)

(assert (=> b!4730502 (= e!2950584 ((as const (Array tuple2!54522 Bool)) false))))

(declare-fun b!4730503 () Bool)

(assert (=> b!4730503 (= e!2950584 ((_ map or) (store ((as const (Array tuple2!54522 Bool)) false) (h!59237 lt!1892763) true) (content!9423 (t!360278 lt!1892763))))))

(assert (= (and d!1508440 c!807902) b!4730502))

(assert (= (and d!1508440 (not c!807902)) b!4730503))

(declare-fun m!5672703 () Bool)

(assert (=> b!4730503 m!5672703))

(assert (=> b!4730503 m!5671309))

(assert (=> d!1507510 d!1508440))

(declare-fun d!1508442 () Bool)

(assert (=> d!1508442 (= (get!17745 lt!1893290) (v!46992 lt!1893290))))

(assert (=> b!4729477 d!1508442))

(declare-fun d!1508444 () Bool)

(declare-fun res!2002617 () Bool)

(declare-fun e!2950585 () Bool)

(assert (=> d!1508444 (=> res!2002617 e!2950585)))

(assert (=> d!1508444 (= res!2002617 (not ((_ is Cons!52878) (t!360278 lt!1892763))))))

(assert (=> d!1508444 (= (noDuplicateKeys!2032 (t!360278 lt!1892763)) e!2950585)))

(declare-fun b!4730504 () Bool)

(declare-fun e!2950586 () Bool)

(assert (=> b!4730504 (= e!2950585 e!2950586)))

(declare-fun res!2002618 () Bool)

(assert (=> b!4730504 (=> (not res!2002618) (not e!2950586))))

(assert (=> b!4730504 (= res!2002618 (not (containsKey!3402 (t!360278 (t!360278 lt!1892763)) (_1!30555 (h!59237 (t!360278 lt!1892763))))))))

(declare-fun b!4730505 () Bool)

(assert (=> b!4730505 (= e!2950586 (noDuplicateKeys!2032 (t!360278 (t!360278 lt!1892763))))))

(assert (= (and d!1508444 (not res!2002617)) b!4730504))

(assert (= (and b!4730504 res!2002618) b!4730505))

(declare-fun m!5672705 () Bool)

(assert (=> b!4730504 m!5672705))

(assert (=> b!4730505 m!5672567))

(assert (=> b!4729369 d!1508444))

(declare-fun d!1508446 () Bool)

(declare-fun res!2002619 () Bool)

(declare-fun e!2950587 () Bool)

(assert (=> d!1508446 (=> res!2002619 e!2950587)))

(assert (=> d!1508446 (= res!2002619 ((_ is Nil!52878) (t!360278 newBucket!218)))))

(assert (=> d!1508446 (= (forall!11627 (t!360278 newBucket!218) lambda!216876) e!2950587)))

(declare-fun b!4730506 () Bool)

(declare-fun e!2950588 () Bool)

(assert (=> b!4730506 (= e!2950587 e!2950588)))

(declare-fun res!2002620 () Bool)

(assert (=> b!4730506 (=> (not res!2002620) (not e!2950588))))

(assert (=> b!4730506 (= res!2002620 (dynLambda!21841 lambda!216876 (h!59237 (t!360278 newBucket!218))))))

(declare-fun b!4730507 () Bool)

(assert (=> b!4730507 (= e!2950588 (forall!11627 (t!360278 (t!360278 newBucket!218)) lambda!216876))))

(assert (= (and d!1508446 (not res!2002619)) b!4730506))

(assert (= (and b!4730506 res!2002620) b!4730507))

(declare-fun b_lambda!180399 () Bool)

(assert (=> (not b_lambda!180399) (not b!4730506)))

(declare-fun m!5672707 () Bool)

(assert (=> b!4730506 m!5672707))

(declare-fun m!5672709 () Bool)

(assert (=> b!4730507 m!5672709))

(assert (=> b!4729540 d!1508446))

(declare-fun d!1508448 () Bool)

(declare-fun e!2950592 () Bool)

(assert (=> d!1508448 e!2950592))

(declare-fun res!2002623 () Bool)

(assert (=> d!1508448 (=> res!2002623 e!2950592)))

(declare-fun e!2950593 () Bool)

(assert (=> d!1508448 (= res!2002623 e!2950593)))

(declare-fun res!2002621 () Bool)

(assert (=> d!1508448 (=> (not res!2002621) (not e!2950593))))

(declare-fun lt!1893895 () Bool)

(assert (=> d!1508448 (= res!2002621 (not lt!1893895))))

(declare-fun lt!1893898 () Bool)

(assert (=> d!1508448 (= lt!1893895 lt!1893898)))

(declare-fun lt!1893900 () Unit!131227)

(declare-fun e!2950591 () Unit!131227)

(assert (=> d!1508448 (= lt!1893900 e!2950591)))

(declare-fun c!807904 () Bool)

(assert (=> d!1508448 (= c!807904 lt!1893898)))

(assert (=> d!1508448 (= lt!1893898 (containsKey!3406 (toList!5954 lt!1893054) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1508448 (= (contains!16239 lt!1893054 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) lt!1893895)))

(declare-fun b!4730508 () Bool)

(assert (=> b!4730508 false))

(declare-fun lt!1893899 () Unit!131227)

(declare-fun lt!1893896 () Unit!131227)

(assert (=> b!4730508 (= lt!1893899 lt!1893896)))

(assert (=> b!4730508 (containsKey!3406 (toList!5954 lt!1893054) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> b!4730508 (= lt!1893896 (lemmaInGetKeysListThenContainsKey!962 (toList!5954 lt!1893054) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun e!2950589 () Unit!131227)

(declare-fun Unit!131427 () Unit!131227)

(assert (=> b!4730508 (= e!2950589 Unit!131427)))

(declare-fun b!4730509 () Bool)

(declare-fun Unit!131428 () Unit!131227)

(assert (=> b!4730509 (= e!2950589 Unit!131428)))

(declare-fun b!4730510 () Bool)

(declare-fun e!2950590 () List!53005)

(assert (=> b!4730510 (= e!2950590 (getKeysList!963 (toList!5954 lt!1893054)))))

(declare-fun b!4730511 () Bool)

(declare-fun e!2950594 () Bool)

(assert (=> b!4730511 (= e!2950594 (contains!16243 (keys!19004 lt!1893054) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun b!4730512 () Bool)

(declare-fun lt!1893902 () Unit!131227)

(assert (=> b!4730512 (= e!2950591 lt!1893902)))

(declare-fun lt!1893897 () Unit!131227)

(assert (=> b!4730512 (= lt!1893897 (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 lt!1893054) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> b!4730512 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893054) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893901 () Unit!131227)

(assert (=> b!4730512 (= lt!1893901 lt!1893897)))

(assert (=> b!4730512 (= lt!1893902 (lemmaInListThenGetKeysListContains!958 (toList!5954 lt!1893054) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun call!330882 () Bool)

(assert (=> b!4730512 call!330882))

(declare-fun bm!330877 () Bool)

(assert (=> bm!330877 (= call!330882 (contains!16243 e!2950590 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun c!807905 () Bool)

(assert (=> bm!330877 (= c!807905 c!807904)))

(declare-fun b!4730513 () Bool)

(assert (=> b!4730513 (= e!2950590 (keys!19004 lt!1893054))))

(declare-fun b!4730514 () Bool)

(assert (=> b!4730514 (= e!2950591 e!2950589)))

(declare-fun c!807903 () Bool)

(assert (=> b!4730514 (= c!807903 call!330882)))

(declare-fun b!4730515 () Bool)

(assert (=> b!4730515 (= e!2950592 e!2950594)))

(declare-fun res!2002622 () Bool)

(assert (=> b!4730515 (=> (not res!2002622) (not e!2950594))))

(assert (=> b!4730515 (= res!2002622 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893054) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun b!4730516 () Bool)

(assert (=> b!4730516 (= e!2950593 (not (contains!16243 (keys!19004 lt!1893054) (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(assert (= (and d!1508448 c!807904) b!4730512))

(assert (= (and d!1508448 (not c!807904)) b!4730514))

(assert (= (and b!4730514 c!807903) b!4730508))

(assert (= (and b!4730514 (not c!807903)) b!4730509))

(assert (= (or b!4730512 b!4730514) bm!330877))

(assert (= (and bm!330877 c!807905) b!4730510))

(assert (= (and bm!330877 (not c!807905)) b!4730513))

(assert (= (and d!1508448 res!2002621) b!4730516))

(assert (= (and d!1508448 (not res!2002623)) b!4730515))

(assert (= (and b!4730515 res!2002622) b!4730511))

(assert (=> b!4730510 m!5670473))

(declare-fun m!5672711 () Bool)

(assert (=> b!4730508 m!5672711))

(declare-fun m!5672713 () Bool)

(assert (=> b!4730508 m!5672713))

(declare-fun m!5672715 () Bool)

(assert (=> bm!330877 m!5672715))

(declare-fun m!5672717 () Bool)

(assert (=> b!4730515 m!5672717))

(assert (=> b!4730515 m!5672717))

(declare-fun m!5672719 () Bool)

(assert (=> b!4730515 m!5672719))

(assert (=> b!4730511 m!5670485))

(assert (=> b!4730511 m!5670485))

(declare-fun m!5672721 () Bool)

(assert (=> b!4730511 m!5672721))

(assert (=> d!1508448 m!5672711))

(declare-fun m!5672723 () Bool)

(assert (=> b!4730512 m!5672723))

(assert (=> b!4730512 m!5672717))

(assert (=> b!4730512 m!5672717))

(assert (=> b!4730512 m!5672719))

(declare-fun m!5672725 () Bool)

(assert (=> b!4730512 m!5672725))

(assert (=> b!4730516 m!5670485))

(assert (=> b!4730516 m!5670485))

(assert (=> b!4730516 m!5672721))

(assert (=> b!4730513 m!5670485))

(assert (=> bs!1119039 d!1508448))

(declare-fun d!1508450 () Bool)

(declare-fun c!807906 () Bool)

(assert (=> d!1508450 (= c!807906 ((_ is Nil!52879) (t!360279 (toList!5953 lm!2023))))))

(declare-fun e!2950595 () (InoxSet tuple2!54524))

(assert (=> d!1508450 (= (content!9419 (t!360279 (toList!5953 lm!2023))) e!2950595)))

(declare-fun b!4730517 () Bool)

(assert (=> b!4730517 (= e!2950595 ((as const (Array tuple2!54524 Bool)) false))))

(declare-fun b!4730518 () Bool)

(assert (=> b!4730518 (= e!2950595 ((_ map or) (store ((as const (Array tuple2!54524 Bool)) false) (h!59238 (t!360279 (toList!5953 lm!2023))) true) (content!9419 (t!360279 (t!360279 (toList!5953 lm!2023))))))))

(assert (= (and d!1508450 c!807906) b!4730517))

(assert (= (and d!1508450 (not c!807906)) b!4730518))

(declare-fun m!5672727 () Bool)

(assert (=> b!4730518 m!5672727))

(declare-fun m!5672729 () Bool)

(assert (=> b!4730518 m!5672729))

(assert (=> d!1507462 d!1508450))

(declare-fun d!1508452 () Bool)

(assert (=> d!1508452 (= (hash!4413 hashF!1323 (_1!30555 (h!59237 newBucket!218))) (hash!4415 hashF!1323 (_1!30555 (h!59237 newBucket!218))))))

(declare-fun bs!1120076 () Bool)

(assert (= bs!1120076 d!1508452))

(declare-fun m!5672731 () Bool)

(assert (=> bs!1120076 m!5672731))

(assert (=> bs!1119044 d!1508452))

(assert (=> b!4729459 d!1507796))

(declare-fun d!1508454 () Bool)

(declare-fun res!2002624 () Bool)

(declare-fun e!2950596 () Bool)

(assert (=> d!1508454 (=> res!2002624 e!2950596)))

(assert (=> d!1508454 (= res!2002624 (and ((_ is Cons!52878) (t!360278 lt!1893071)) (= (_1!30555 (h!59237 (t!360278 lt!1893071))) key!4653)))))

(assert (=> d!1508454 (= (containsKey!3402 (t!360278 lt!1893071) key!4653) e!2950596)))

(declare-fun b!4730519 () Bool)

(declare-fun e!2950597 () Bool)

(assert (=> b!4730519 (= e!2950596 e!2950597)))

(declare-fun res!2002625 () Bool)

(assert (=> b!4730519 (=> (not res!2002625) (not e!2950597))))

(assert (=> b!4730519 (= res!2002625 ((_ is Cons!52878) (t!360278 lt!1893071)))))

(declare-fun b!4730520 () Bool)

(assert (=> b!4730520 (= e!2950597 (containsKey!3402 (t!360278 (t!360278 lt!1893071)) key!4653))))

(assert (= (and d!1508454 (not res!2002624)) b!4730519))

(assert (= (and b!4730519 res!2002625) b!4730520))

(declare-fun m!5672733 () Bool)

(assert (=> b!4730520 m!5672733))

(assert (=> b!4729412 d!1508454))

(declare-fun d!1508456 () Bool)

(assert (=> d!1508456 (= (invariantList!1523 (toList!5954 lt!1893313)) (noDuplicatedKeys!383 (toList!5954 lt!1893313)))))

(declare-fun bs!1120077 () Bool)

(assert (= bs!1120077 d!1508456))

(declare-fun m!5672735 () Bool)

(assert (=> bs!1120077 m!5672735))

(assert (=> b!4729489 d!1508456))

(assert (=> d!1507490 d!1507478))

(declare-fun d!1508458 () Bool)

(declare-fun res!2002626 () Bool)

(declare-fun e!2950598 () Bool)

(assert (=> d!1508458 (=> res!2002626 e!2950598)))

(assert (=> d!1508458 (= res!2002626 (not ((_ is Cons!52878) (t!360278 (t!360278 newBucket!218)))))))

(assert (=> d!1508458 (= (noDuplicateKeys!2032 (t!360278 (t!360278 newBucket!218))) e!2950598)))

(declare-fun b!4730521 () Bool)

(declare-fun e!2950599 () Bool)

(assert (=> b!4730521 (= e!2950598 e!2950599)))

(declare-fun res!2002627 () Bool)

(assert (=> b!4730521 (=> (not res!2002627) (not e!2950599))))

(assert (=> b!4730521 (= res!2002627 (not (containsKey!3402 (t!360278 (t!360278 (t!360278 newBucket!218))) (_1!30555 (h!59237 (t!360278 (t!360278 newBucket!218)))))))))

(declare-fun b!4730522 () Bool)

(assert (=> b!4730522 (= e!2950599 (noDuplicateKeys!2032 (t!360278 (t!360278 (t!360278 newBucket!218)))))))

(assert (= (and d!1508458 (not res!2002626)) b!4730521))

(assert (= (and b!4730521 res!2002627) b!4730522))

(declare-fun m!5672737 () Bool)

(assert (=> b!4730521 m!5672737))

(declare-fun m!5672739 () Bool)

(assert (=> b!4730522 m!5672739))

(assert (=> b!4729486 d!1508458))

(declare-fun d!1508460 () Bool)

(declare-fun lt!1893903 () Bool)

(assert (=> d!1508460 (= lt!1893903 (select (content!9419 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1892769))))

(declare-fun e!2950600 () Bool)

(assert (=> d!1508460 (= lt!1893903 e!2950600)))

(declare-fun res!2002628 () Bool)

(assert (=> d!1508460 (=> (not res!2002628) (not e!2950600))))

(assert (=> d!1508460 (= res!2002628 ((_ is Cons!52879) (t!360279 (t!360279 (toList!5953 lm!2023)))))))

(assert (=> d!1508460 (= (contains!16237 (t!360279 (t!360279 (toList!5953 lm!2023))) lt!1892769) lt!1893903)))

(declare-fun b!4730523 () Bool)

(declare-fun e!2950601 () Bool)

(assert (=> b!4730523 (= e!2950600 e!2950601)))

(declare-fun res!2002629 () Bool)

(assert (=> b!4730523 (=> res!2002629 e!2950601)))

(assert (=> b!4730523 (= res!2002629 (= (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1892769))))

(declare-fun b!4730524 () Bool)

(assert (=> b!4730524 (= e!2950601 (contains!16237 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1892769))))

(assert (= (and d!1508460 res!2002628) b!4730523))

(assert (= (and b!4730523 (not res!2002629)) b!4730524))

(assert (=> d!1508460 m!5672729))

(declare-fun m!5672741 () Bool)

(assert (=> d!1508460 m!5672741))

(declare-fun m!5672743 () Bool)

(assert (=> b!4730524 m!5672743))

(assert (=> b!4729538 d!1508460))

(declare-fun bs!1120078 () Bool)

(declare-fun d!1508462 () Bool)

(assert (= bs!1120078 (and d!1508462 d!1507090)))

(declare-fun lambda!217031 () Int)

(assert (=> bs!1120078 (not (= lambda!217031 lambda!216874))))

(declare-fun bs!1120079 () Bool)

(assert (= bs!1120079 (and d!1508462 d!1507798)))

(assert (=> bs!1120079 (not (= lambda!217031 lambda!216992))))

(declare-fun bs!1120080 () Bool)

(assert (= bs!1120080 (and d!1508462 d!1507074)))

(assert (=> bs!1120080 (= (= (_1!30556 (h!59238 (toList!5953 (ListLongMap!4484 lt!1892767)))) hash!405) (= lambda!217031 lambda!216840))))

(declare-fun bs!1120081 () Bool)

(assert (= bs!1120081 (and d!1508462 b!4729490)))

(assert (=> bs!1120081 (not (= lambda!217031 lambda!216933))))

(declare-fun bs!1120082 () Bool)

(assert (= bs!1120082 (and d!1508462 d!1507456)))

(assert (=> bs!1120082 (not (= lambda!217031 lambda!216941))))

(declare-fun bs!1120083 () Bool)

(assert (= bs!1120083 (and d!1508462 b!4729915)))

(assert (=> bs!1120083 (not (= lambda!217031 lambda!216988))))

(declare-fun bs!1120084 () Bool)

(assert (= bs!1120084 (and d!1508462 b!4730355)))

(assert (=> bs!1120084 (not (= lambda!217031 lambda!217023))))

(declare-fun bs!1120085 () Bool)

(assert (= bs!1120085 (and d!1508462 d!1508104)))

(assert (=> bs!1120085 (not (= lambda!217031 lambda!217025))))

(declare-fun bs!1120086 () Bool)

(assert (= bs!1120086 (and d!1508462 b!4729530)))

(assert (=> bs!1120086 (not (= lambda!217031 lambda!216943))))

(declare-fun bs!1120087 () Bool)

(assert (= bs!1120087 (and d!1508462 d!1507466)))

(assert (=> bs!1120087 (not (= lambda!217031 lambda!216949))))

(declare-fun bs!1120088 () Bool)

(assert (= bs!1120088 (and d!1508462 b!4729039)))

(assert (=> bs!1120088 (not (= lambda!217031 lambda!216871))))

(declare-fun bs!1120089 () Bool)

(assert (= bs!1120089 (and d!1508462 b!4729036)))

(assert (=> bs!1120089 (not (= lambda!217031 lambda!216873))))

(declare-fun bs!1120090 () Bool)

(assert (= bs!1120090 (and d!1508462 d!1507116)))

(assert (=> bs!1120090 (= (= (_1!30556 (h!59238 (toList!5953 (ListLongMap!4484 lt!1892767)))) hash!405) (= lambda!217031 lambda!216876))))

(assert (=> bs!1120086 (not (= lambda!217031 lambda!216944))))

(declare-fun bs!1120091 () Bool)

(assert (= bs!1120091 (and d!1508462 b!4730358)))

(assert (=> bs!1120091 (not (= lambda!217031 lambda!217022))))

(declare-fun bs!1120092 () Bool)

(assert (= bs!1120092 (and d!1508462 d!1507436)))

(assert (=> bs!1120092 (not (= lambda!217031 lambda!216936))))

(declare-fun bs!1120093 () Bool)

(assert (= bs!1120093 (and d!1508462 b!4729487)))

(assert (=> bs!1120093 (not (= lambda!217031 lambda!216934))))

(assert (=> bs!1120089 (not (= lambda!217031 lambda!216872))))

(declare-fun bs!1120094 () Bool)

(assert (= bs!1120094 (and d!1508462 d!1507458)))

(assert (=> bs!1120094 (not (= lambda!217031 lambda!216945))))

(assert (=> bs!1120084 (not (= lambda!217031 lambda!217024))))

(declare-fun bs!1120095 () Bool)

(assert (= bs!1120095 (and d!1508462 d!1508216)))

(assert (=> bs!1120095 (not (= lambda!217031 lambda!217026))))

(declare-fun bs!1120096 () Bool)

(assert (= bs!1120096 (and d!1508462 b!4729533)))

(assert (=> bs!1120096 (not (= lambda!217031 lambda!216942))))

(declare-fun bs!1120097 () Bool)

(assert (= bs!1120097 (and d!1508462 d!1507922)))

(assert (=> bs!1120097 (not (= lambda!217031 lambda!217002))))

(declare-fun bs!1120098 () Bool)

(assert (= bs!1120098 (and d!1508462 b!4729912)))

(assert (=> bs!1120098 (not (= lambda!217031 lambda!216990))))

(assert (=> bs!1120093 (not (= lambda!217031 lambda!216935))))

(declare-fun bs!1120099 () Bool)

(assert (= bs!1120099 (and d!1508462 d!1507900)))

(assert (=> bs!1120099 (= (= (_1!30556 (h!59238 (toList!5953 (ListLongMap!4484 lt!1892767)))) (_1!30556 (h!59238 (toList!5953 lm!2023)))) (= lambda!217031 lambda!216996))))

(declare-fun bs!1120100 () Bool)

(assert (= bs!1120100 (and d!1508462 d!1507846)))

(assert (=> bs!1120100 (not (= lambda!217031 lambda!216993))))

(assert (=> bs!1120098 (not (= lambda!217031 lambda!216989))))

(assert (=> d!1508462 true))

(assert (=> d!1508462 true))

(assert (=> d!1508462 (= (allKeysSameHash!1858 (_2!30556 (h!59238 (toList!5953 (ListLongMap!4484 lt!1892767)))) (_1!30556 (h!59238 (toList!5953 (ListLongMap!4484 lt!1892767)))) hashF!1323) (forall!11627 (_2!30556 (h!59238 (toList!5953 (ListLongMap!4484 lt!1892767)))) lambda!217031))))

(declare-fun bs!1120101 () Bool)

(assert (= bs!1120101 d!1508462))

(declare-fun m!5672745 () Bool)

(assert (=> bs!1120101 m!5672745))

(assert (=> bs!1119035 d!1508462))

(assert (=> b!4729359 d!1507940))

(assert (=> b!4729359 d!1507944))

(declare-fun d!1508464 () Bool)

(assert (=> d!1508464 (= (isEmpty!29195 lt!1893290) (not ((_ is Some!12387) lt!1893290)))))

(assert (=> d!1507416 d!1508464))

(declare-fun d!1508466 () Bool)

(declare-fun res!2002630 () Bool)

(declare-fun e!2950602 () Bool)

(assert (=> d!1508466 (=> res!2002630 e!2950602)))

(assert (=> d!1508466 (= res!2002630 (not ((_ is Cons!52878) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))

(assert (=> d!1508466 (= (noDuplicateKeys!2032 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))) e!2950602)))

(declare-fun b!4730525 () Bool)

(declare-fun e!2950603 () Bool)

(assert (=> b!4730525 (= e!2950602 e!2950603)))

(declare-fun res!2002631 () Bool)

(assert (=> b!4730525 (=> (not res!2002631) (not e!2950603))))

(assert (=> b!4730525 (= res!2002631 (not (containsKey!3402 (t!360278 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))) (_1!30555 (h!59237 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))))

(declare-fun b!4730526 () Bool)

(assert (=> b!4730526 (= e!2950603 (noDuplicateKeys!2032 (t!360278 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))

(assert (= (and d!1508466 (not res!2002630)) b!4730525))

(assert (= (and b!4730525 res!2002631) b!4730526))

(declare-fun m!5672747 () Bool)

(assert (=> b!4730525 m!5672747))

(assert (=> b!4730526 m!5671945))

(assert (=> d!1507416 d!1508466))

(declare-fun d!1508468 () Bool)

(declare-fun res!2002632 () Bool)

(declare-fun e!2950604 () Bool)

(assert (=> d!1508468 (=> res!2002632 e!2950604)))

(assert (=> d!1508468 (= res!2002632 (and ((_ is Cons!52879) (toList!5953 lm!2023)) (= (_1!30556 (h!59238 (toList!5953 lm!2023))) lt!1892869)))))

(assert (=> d!1508468 (= (containsKey!3405 (toList!5953 lm!2023) lt!1892869) e!2950604)))

(declare-fun b!4730527 () Bool)

(declare-fun e!2950605 () Bool)

(assert (=> b!4730527 (= e!2950604 e!2950605)))

(declare-fun res!2002633 () Bool)

(assert (=> b!4730527 (=> (not res!2002633) (not e!2950605))))

(assert (=> b!4730527 (= res!2002633 (and (or (not ((_ is Cons!52879) (toList!5953 lm!2023))) (bvsle (_1!30556 (h!59238 (toList!5953 lm!2023))) lt!1892869)) ((_ is Cons!52879) (toList!5953 lm!2023)) (bvslt (_1!30556 (h!59238 (toList!5953 lm!2023))) lt!1892869)))))

(declare-fun b!4730528 () Bool)

(assert (=> b!4730528 (= e!2950605 (containsKey!3405 (t!360279 (toList!5953 lm!2023)) lt!1892869))))

(assert (= (and d!1508468 (not res!2002632)) b!4730527))

(assert (= (and b!4730527 res!2002633) b!4730528))

(declare-fun m!5672749 () Bool)

(assert (=> b!4730528 m!5672749))

(assert (=> d!1507420 d!1508468))

(declare-fun d!1508470 () Bool)

(declare-fun res!2002634 () Bool)

(declare-fun e!2950606 () Bool)

(assert (=> d!1508470 (=> res!2002634 e!2950606)))

(assert (=> d!1508470 (= res!2002634 ((_ is Nil!52878) (ite c!807705 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> d!1508470 (= (forall!11627 (ite c!807705 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))) (ite c!807705 lambda!216942 lambda!216944)) e!2950606)))

(declare-fun b!4730529 () Bool)

(declare-fun e!2950607 () Bool)

(assert (=> b!4730529 (= e!2950606 e!2950607)))

(declare-fun res!2002635 () Bool)

(assert (=> b!4730529 (=> (not res!2002635) (not e!2950607))))

(assert (=> b!4730529 (= res!2002635 (dynLambda!21841 (ite c!807705 lambda!216942 lambda!216944) (h!59237 (ite c!807705 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun b!4730530 () Bool)

(assert (=> b!4730530 (= e!2950607 (forall!11627 (t!360278 (ite c!807705 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (ite c!807705 lambda!216942 lambda!216944)))))

(assert (= (and d!1508470 (not res!2002634)) b!4730529))

(assert (= (and b!4730529 res!2002635) b!4730530))

(declare-fun b_lambda!180401 () Bool)

(assert (=> (not b_lambda!180401) (not b!4730529)))

(declare-fun m!5672751 () Bool)

(assert (=> b!4730529 m!5672751))

(declare-fun m!5672753 () Bool)

(assert (=> b!4730530 m!5672753))

(assert (=> bm!330817 d!1508470))

(assert (=> d!1507432 d!1507044))

(declare-fun b!4730531 () Bool)

(declare-fun e!2950608 () Option!12391)

(assert (=> b!4730531 (= e!2950608 (Some!12390 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))

(declare-fun b!4730534 () Bool)

(declare-fun e!2950609 () Option!12391)

(assert (=> b!4730534 (= e!2950609 None!12390)))

(declare-fun d!1508472 () Bool)

(declare-fun c!807907 () Bool)

(assert (=> d!1508472 (= c!807907 (and ((_ is Cons!52879) (t!360279 (toList!5953 lm!2023))) (= (_1!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))) lt!1892869)))))

(assert (=> d!1508472 (= (getValueByKey!1977 (t!360279 (toList!5953 lm!2023)) lt!1892869) e!2950608)))

(declare-fun b!4730532 () Bool)

(assert (=> b!4730532 (= e!2950608 e!2950609)))

(declare-fun c!807908 () Bool)

(assert (=> b!4730532 (= c!807908 (and ((_ is Cons!52879) (t!360279 (toList!5953 lm!2023))) (not (= (_1!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))) lt!1892869))))))

(declare-fun b!4730533 () Bool)

(assert (=> b!4730533 (= e!2950609 (getValueByKey!1977 (t!360279 (t!360279 (toList!5953 lm!2023))) lt!1892869))))

(assert (= (and d!1508472 c!807907) b!4730531))

(assert (= (and d!1508472 (not c!807907)) b!4730532))

(assert (= (and b!4730532 c!807908) b!4730533))

(assert (= (and b!4730532 (not c!807908)) b!4730534))

(declare-fun m!5672755 () Bool)

(assert (=> b!4730533 m!5672755))

(assert (=> b!4729340 d!1508472))

(declare-fun d!1508474 () Bool)

(declare-fun res!2002636 () Bool)

(declare-fun e!2950610 () Bool)

(assert (=> d!1508474 (=> res!2002636 e!2950610)))

(assert (=> d!1508474 (= res!2002636 ((_ is Nil!52881) lt!1893267))))

(assert (=> d!1508474 (= (forall!11629 lt!1893267 lambda!216925) e!2950610)))

(declare-fun b!4730535 () Bool)

(declare-fun e!2950611 () Bool)

(assert (=> b!4730535 (= e!2950610 e!2950611)))

(declare-fun res!2002637 () Bool)

(assert (=> b!4730535 (=> (not res!2002637) (not e!2950611))))

(assert (=> b!4730535 (= res!2002637 (dynLambda!21844 lambda!216925 (h!59242 lt!1893267)))))

(declare-fun b!4730536 () Bool)

(assert (=> b!4730536 (= e!2950611 (forall!11629 (t!360281 lt!1893267) lambda!216925))))

(assert (= (and d!1508474 (not res!2002636)) b!4730535))

(assert (= (and b!4730535 res!2002637) b!4730536))

(declare-fun b_lambda!180403 () Bool)

(assert (=> (not b_lambda!180403) (not b!4730535)))

(declare-fun m!5672757 () Bool)

(assert (=> b!4730535 m!5672757))

(declare-fun m!5672759 () Bool)

(assert (=> b!4730536 m!5672759))

(assert (=> b!4729391 d!1508474))

(declare-fun d!1508476 () Bool)

(declare-fun res!2002638 () Bool)

(declare-fun e!2950612 () Bool)

(assert (=> d!1508476 (=> res!2002638 e!2950612)))

(assert (=> d!1508476 (= res!2002638 ((_ is Nil!52879) (t!360279 (t!360279 lt!1892767))))))

(assert (=> d!1508476 (= (forall!11625 (t!360279 (t!360279 lt!1892767)) lambda!216768) e!2950612)))

(declare-fun b!4730537 () Bool)

(declare-fun e!2950613 () Bool)

(assert (=> b!4730537 (= e!2950612 e!2950613)))

(declare-fun res!2002639 () Bool)

(assert (=> b!4730537 (=> (not res!2002639) (not e!2950613))))

(assert (=> b!4730537 (= res!2002639 (dynLambda!21839 lambda!216768 (h!59238 (t!360279 (t!360279 lt!1892767)))))))

(declare-fun b!4730538 () Bool)

(assert (=> b!4730538 (= e!2950613 (forall!11625 (t!360279 (t!360279 (t!360279 lt!1892767))) lambda!216768))))

(assert (= (and d!1508476 (not res!2002638)) b!4730537))

(assert (= (and b!4730537 res!2002639) b!4730538))

(declare-fun b_lambda!180405 () Bool)

(assert (=> (not b_lambda!180405) (not b!4730537)))

(declare-fun m!5672761 () Bool)

(assert (=> b!4730537 m!5672761))

(declare-fun m!5672763 () Bool)

(assert (=> b!4730538 m!5672763))

(assert (=> b!4729355 d!1508476))

(declare-fun b!4730540 () Bool)

(declare-fun e!2950614 () Option!12392)

(declare-fun e!2950615 () Option!12392)

(assert (=> b!4730540 (= e!2950614 e!2950615)))

(declare-fun c!807910 () Bool)

(assert (=> b!4730540 (= c!807910 (and ((_ is Cons!52878) (toList!5954 lt!1893329)) (not (= (_1!30555 (h!59237 (toList!5954 lt!1893329))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun d!1508478 () Bool)

(declare-fun c!807909 () Bool)

(assert (=> d!1508478 (= c!807909 (and ((_ is Cons!52878) (toList!5954 lt!1893329)) (= (_1!30555 (h!59237 (toList!5954 lt!1893329))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1508478 (= (getValueByKey!1978 (toList!5954 lt!1893329) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) e!2950614)))

(declare-fun b!4730539 () Bool)

(assert (=> b!4730539 (= e!2950614 (Some!12391 (_2!30555 (h!59237 (toList!5954 lt!1893329)))))))

(declare-fun b!4730541 () Bool)

(assert (=> b!4730541 (= e!2950615 (getValueByKey!1978 (t!360278 (toList!5954 lt!1893329)) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4730542 () Bool)

(assert (=> b!4730542 (= e!2950615 None!12391)))

(assert (= (and d!1508478 c!807909) b!4730539))

(assert (= (and d!1508478 (not c!807909)) b!4730540))

(assert (= (and b!4730540 c!807910) b!4730541))

(assert (= (and b!4730540 (not c!807910)) b!4730542))

(declare-fun m!5672765 () Bool)

(assert (=> b!4730541 m!5672765))

(assert (=> b!4729498 d!1508478))

(declare-fun d!1508480 () Bool)

(declare-fun res!2002640 () Bool)

(declare-fun e!2950616 () Bool)

(assert (=> d!1508480 (=> res!2002640 e!2950616)))

(assert (=> d!1508480 (= res!2002640 ((_ is Nil!52878) (t!360278 (toList!5954 lt!1893051))))))

(assert (=> d!1508480 (= (forall!11627 (t!360278 (toList!5954 lt!1893051)) lambda!216873) e!2950616)))

(declare-fun b!4730543 () Bool)

(declare-fun e!2950617 () Bool)

(assert (=> b!4730543 (= e!2950616 e!2950617)))

(declare-fun res!2002641 () Bool)

(assert (=> b!4730543 (=> (not res!2002641) (not e!2950617))))

(assert (=> b!4730543 (= res!2002641 (dynLambda!21841 lambda!216873 (h!59237 (t!360278 (toList!5954 lt!1893051)))))))

(declare-fun b!4730544 () Bool)

(assert (=> b!4730544 (= e!2950617 (forall!11627 (t!360278 (t!360278 (toList!5954 lt!1893051))) lambda!216873))))

(assert (= (and d!1508480 (not res!2002640)) b!4730543))

(assert (= (and b!4730543 res!2002641) b!4730544))

(declare-fun b_lambda!180407 () Bool)

(assert (=> (not b_lambda!180407) (not b!4730543)))

(declare-fun m!5672767 () Bool)

(assert (=> b!4730543 m!5672767))

(declare-fun m!5672769 () Bool)

(assert (=> b!4730544 m!5672769))

(assert (=> b!4729501 d!1508480))

(declare-fun d!1508482 () Bool)

(declare-fun res!2002642 () Bool)

(declare-fun e!2950618 () Bool)

(assert (=> d!1508482 (=> res!2002642 e!2950618)))

(assert (=> d!1508482 (= res!2002642 ((_ is Nil!52878) (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> d!1508482 (= (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (ite c!807705 lambda!216942 lambda!216944)) e!2950618)))

(declare-fun b!4730545 () Bool)

(declare-fun e!2950619 () Bool)

(assert (=> b!4730545 (= e!2950618 e!2950619)))

(declare-fun res!2002643 () Bool)

(assert (=> b!4730545 (=> (not res!2002643) (not e!2950619))))

(assert (=> b!4730545 (= res!2002643 (dynLambda!21841 (ite c!807705 lambda!216942 lambda!216944) (h!59237 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun b!4730546 () Bool)

(assert (=> b!4730546 (= e!2950619 (forall!11627 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))))) (ite c!807705 lambda!216942 lambda!216944)))))

(assert (= (and d!1508482 (not res!2002642)) b!4730545))

(assert (= (and b!4730545 res!2002643) b!4730546))

(declare-fun b_lambda!180409 () Bool)

(assert (=> (not b_lambda!180409) (not b!4730545)))

(declare-fun m!5672771 () Bool)

(assert (=> b!4730545 m!5672771))

(declare-fun m!5672773 () Bool)

(assert (=> b!4730546 m!5672773))

(assert (=> bm!330818 d!1508482))

(declare-fun d!1508484 () Bool)

(declare-fun lt!1893904 () Bool)

(assert (=> d!1508484 (= lt!1893904 (select (content!9422 e!2949861) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun e!2950621 () Bool)

(assert (=> d!1508484 (= lt!1893904 e!2950621)))

(declare-fun res!2002645 () Bool)

(assert (=> d!1508484 (=> (not res!2002645) (not e!2950621))))

(assert (=> d!1508484 (= res!2002645 ((_ is Cons!52881) e!2949861))))

(assert (=> d!1508484 (= (contains!16243 e!2949861 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893904)))

(declare-fun b!4730547 () Bool)

(declare-fun e!2950620 () Bool)

(assert (=> b!4730547 (= e!2950621 e!2950620)))

(declare-fun res!2002644 () Bool)

(assert (=> b!4730547 (=> res!2002644 e!2950620)))

(assert (=> b!4730547 (= res!2002644 (= (h!59242 e!2949861) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4730548 () Bool)

(assert (=> b!4730548 (= e!2950620 (contains!16243 (t!360281 e!2949861) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (= (and d!1508484 res!2002645) b!4730547))

(assert (= (and b!4730547 (not res!2002644)) b!4730548))

(declare-fun m!5672775 () Bool)

(assert (=> d!1508484 m!5672775))

(declare-fun m!5672777 () Bool)

(assert (=> d!1508484 m!5672777))

(declare-fun m!5672779 () Bool)

(assert (=> b!4730548 m!5672779))

(assert (=> bm!330815 d!1508484))

(declare-fun d!1508486 () Bool)

(assert (=> d!1508486 (isDefined!9645 (getValueByKey!1977 (toList!5953 lm!2023) (hash!4413 hashF!1323 key!4653)))))

(declare-fun lt!1893905 () Unit!131227)

(assert (=> d!1508486 (= lt!1893905 (choose!33437 (toList!5953 lm!2023) (hash!4413 hashF!1323 key!4653)))))

(declare-fun e!2950622 () Bool)

(assert (=> d!1508486 e!2950622))

(declare-fun res!2002646 () Bool)

(assert (=> d!1508486 (=> (not res!2002646) (not e!2950622))))

(assert (=> d!1508486 (= res!2002646 (isStrictlySorted!761 (toList!5953 lm!2023)))))

(assert (=> d!1508486 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1868 (toList!5953 lm!2023) (hash!4413 hashF!1323 key!4653)) lt!1893905)))

(declare-fun b!4730549 () Bool)

(assert (=> b!4730549 (= e!2950622 (containsKey!3405 (toList!5953 lm!2023) (hash!4413 hashF!1323 key!4653)))))

(assert (= (and d!1508486 res!2002646) b!4730549))

(assert (=> d!1508486 m!5669311))

(assert (=> d!1508486 m!5670365))

(assert (=> d!1508486 m!5670365))

(assert (=> d!1508486 m!5670367))

(assert (=> d!1508486 m!5669311))

(declare-fun m!5672781 () Bool)

(assert (=> d!1508486 m!5672781))

(assert (=> d!1508486 m!5669631))

(assert (=> b!4730549 m!5669311))

(assert (=> b!4730549 m!5670361))

(assert (=> b!4729462 d!1508486))

(assert (=> b!4729462 d!1507894))

(assert (=> b!4729462 d!1507896))

(declare-fun d!1508488 () Bool)

(declare-fun res!2002647 () Bool)

(declare-fun e!2950623 () Bool)

(assert (=> d!1508488 (=> res!2002647 e!2950623)))

(assert (=> d!1508488 (= res!2002647 ((_ is Nil!52878) (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> d!1508488 (= (forall!11627 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) lambda!216872) e!2950623)))

(declare-fun b!4730550 () Bool)

(declare-fun e!2950624 () Bool)

(assert (=> b!4730550 (= e!2950623 e!2950624)))

(declare-fun res!2002648 () Bool)

(assert (=> b!4730550 (=> (not res!2002648) (not e!2950624))))

(assert (=> b!4730550 (= res!2002648 (dynLambda!21841 lambda!216872 (h!59237 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun b!4730551 () Bool)

(assert (=> b!4730551 (= e!2950624 (forall!11627 (t!360278 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) lambda!216872))))

(assert (= (and d!1508488 (not res!2002647)) b!4730550))

(assert (= (and b!4730550 res!2002648) b!4730551))

(declare-fun b_lambda!180411 () Bool)

(assert (=> (not b_lambda!180411) (not b!4730550)))

(declare-fun m!5672783 () Bool)

(assert (=> b!4730550 m!5672783))

(declare-fun m!5672785 () Bool)

(assert (=> b!4730551 m!5672785))

(assert (=> b!4729528 d!1508488))

(declare-fun b!4730553 () Bool)

(declare-fun e!2950625 () Option!12392)

(declare-fun e!2950626 () Option!12392)

(assert (=> b!4730553 (= e!2950625 e!2950626)))

(declare-fun c!807912 () Bool)

(assert (=> b!4730553 (= c!807912 (and ((_ is Cons!52878) (t!360278 (toList!5954 lt!1892771))) (not (= (_1!30555 (h!59237 (t!360278 (toList!5954 lt!1892771)))) key!4653))))))

(declare-fun d!1508490 () Bool)

(declare-fun c!807911 () Bool)

(assert (=> d!1508490 (= c!807911 (and ((_ is Cons!52878) (t!360278 (toList!5954 lt!1892771))) (= (_1!30555 (h!59237 (t!360278 (toList!5954 lt!1892771)))) key!4653)))))

(assert (=> d!1508490 (= (getValueByKey!1978 (t!360278 (toList!5954 lt!1892771)) key!4653) e!2950625)))

(declare-fun b!4730552 () Bool)

(assert (=> b!4730552 (= e!2950625 (Some!12391 (_2!30555 (h!59237 (t!360278 (toList!5954 lt!1892771))))))))

(declare-fun b!4730554 () Bool)

(assert (=> b!4730554 (= e!2950626 (getValueByKey!1978 (t!360278 (t!360278 (toList!5954 lt!1892771))) key!4653))))

(declare-fun b!4730555 () Bool)

(assert (=> b!4730555 (= e!2950626 None!12391)))

(assert (= (and d!1508490 c!807911) b!4730552))

(assert (= (and d!1508490 (not c!807911)) b!4730553))

(assert (= (and b!4730553 c!807912) b!4730554))

(assert (= (and b!4730553 (not c!807912)) b!4730555))

(declare-fun m!5672787 () Bool)

(assert (=> b!4730554 m!5672787))

(assert (=> b!4729567 d!1508490))

(declare-fun d!1508492 () Bool)

(declare-fun lt!1893906 () Bool)

(assert (=> d!1508492 (= lt!1893906 (select (content!9423 (toList!5954 lt!1893051)) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(declare-fun e!2950627 () Bool)

(assert (=> d!1508492 (= lt!1893906 e!2950627)))

(declare-fun res!2002649 () Bool)

(assert (=> d!1508492 (=> (not res!2002649) (not e!2950627))))

(assert (=> d!1508492 (= res!2002649 ((_ is Cons!52878) (toList!5954 lt!1893051)))))

(assert (=> d!1508492 (= (contains!16242 (toList!5954 lt!1893051) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893906)))

(declare-fun b!4730556 () Bool)

(declare-fun e!2950628 () Bool)

(assert (=> b!4730556 (= e!2950627 e!2950628)))

(declare-fun res!2002650 () Bool)

(assert (=> b!4730556 (=> res!2002650 e!2950628)))

(assert (=> b!4730556 (= res!2002650 (= (h!59237 (toList!5954 lt!1893051)) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(declare-fun b!4730557 () Bool)

(assert (=> b!4730557 (= e!2950628 (contains!16242 (t!360278 (toList!5954 lt!1893051)) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (= (and d!1508492 res!2002649) b!4730556))

(assert (= (and b!4730556 (not res!2002650)) b!4730557))

(declare-fun m!5672789 () Bool)

(assert (=> d!1508492 m!5672789))

(declare-fun m!5672791 () Bool)

(assert (=> d!1508492 m!5672791))

(declare-fun m!5672793 () Bool)

(assert (=> b!4730557 m!5672793))

(assert (=> b!4729515 d!1508492))

(declare-fun d!1508494 () Bool)

(declare-fun res!2002651 () Bool)

(declare-fun e!2950629 () Bool)

(assert (=> d!1508494 (=> res!2002651 e!2950629)))

(assert (=> d!1508494 (= res!2002651 (and ((_ is Cons!52878) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))) (= (_1!30555 (h!59237 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))) key!4653)))))

(assert (=> d!1508494 (= (containsKey!3402 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)) key!4653) e!2950629)))

(declare-fun b!4730558 () Bool)

(declare-fun e!2950630 () Bool)

(assert (=> b!4730558 (= e!2950629 e!2950630)))

(declare-fun res!2002652 () Bool)

(assert (=> b!4730558 (=> (not res!2002652) (not e!2950630))))

(assert (=> b!4730558 (= res!2002652 ((_ is Cons!52878) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))))))

(declare-fun b!4730559 () Bool)

(assert (=> b!4730559 (= e!2950630 (containsKey!3402 (t!360278 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))) key!4653))))

(assert (= (and d!1508494 (not res!2002651)) b!4730558))

(assert (= (and b!4730558 res!2002652) b!4730559))

(assert (=> b!4730559 m!5671951))

(assert (=> b!4729472 d!1508494))

(declare-fun d!1508496 () Bool)

(declare-fun res!2002653 () Bool)

(declare-fun e!2950631 () Bool)

(assert (=> d!1508496 (=> res!2002653 e!2950631)))

(assert (=> d!1508496 (= res!2002653 ((_ is Nil!52878) (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> d!1508496 (= (forall!11627 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))) lambda!216945) e!2950631)))

(declare-fun b!4730560 () Bool)

(declare-fun e!2950632 () Bool)

(assert (=> b!4730560 (= e!2950631 e!2950632)))

(declare-fun res!2002654 () Bool)

(assert (=> b!4730560 (=> (not res!2002654) (not e!2950632))))

(assert (=> b!4730560 (= res!2002654 (dynLambda!21841 lambda!216945 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))

(declare-fun b!4730561 () Bool)

(assert (=> b!4730561 (= e!2950632 (forall!11627 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))) lambda!216945))))

(assert (= (and d!1508496 (not res!2002653)) b!4730560))

(assert (= (and b!4730560 res!2002654) b!4730561))

(declare-fun b_lambda!180413 () Bool)

(assert (=> (not b_lambda!180413) (not b!4730560)))

(declare-fun m!5672795 () Bool)

(assert (=> b!4730560 m!5672795))

(declare-fun m!5672797 () Bool)

(assert (=> b!4730561 m!5672797))

(assert (=> d!1507458 d!1508496))

(assert (=> d!1507458 d!1507880))

(declare-fun d!1508498 () Bool)

(declare-fun res!2002659 () Bool)

(declare-fun e!2950637 () Bool)

(assert (=> d!1508498 (=> res!2002659 e!2950637)))

(assert (=> d!1508498 (= res!2002659 ((_ is Nil!52881) lt!1893267))))

(assert (=> d!1508498 (= (noDuplicate!869 lt!1893267) e!2950637)))

(declare-fun b!4730566 () Bool)

(declare-fun e!2950638 () Bool)

(assert (=> b!4730566 (= e!2950637 e!2950638)))

(declare-fun res!2002660 () Bool)

(assert (=> b!4730566 (=> (not res!2002660) (not e!2950638))))

(assert (=> b!4730566 (= res!2002660 (not (contains!16243 (t!360281 lt!1893267) (h!59242 lt!1893267))))))

(declare-fun b!4730567 () Bool)

(assert (=> b!4730567 (= e!2950638 (noDuplicate!869 (t!360281 lt!1893267)))))

(assert (= (and d!1508498 (not res!2002659)) b!4730566))

(assert (= (and b!4730566 res!2002660) b!4730567))

(declare-fun m!5672799 () Bool)

(assert (=> b!4730566 m!5672799))

(declare-fun m!5672801 () Bool)

(assert (=> b!4730567 m!5672801))

(assert (=> d!1507364 d!1508498))

(assert (=> d!1507364 d!1508426))

(declare-fun d!1508500 () Bool)

(declare-fun lt!1893907 () List!53002)

(assert (=> d!1508500 (not (containsKey!3402 lt!1893907 key!4653))))

(declare-fun e!2950640 () List!53002)

(assert (=> d!1508500 (= lt!1893907 e!2950640)))

(declare-fun c!807913 () Bool)

(assert (=> d!1508500 (= c!807913 (and ((_ is Cons!52878) (t!360278 (t!360278 (tail!9041 oldBucket!34)))) (= (_1!30555 (h!59237 (t!360278 (t!360278 (tail!9041 oldBucket!34))))) key!4653)))))

(assert (=> d!1508500 (noDuplicateKeys!2032 (t!360278 (t!360278 (tail!9041 oldBucket!34))))))

(assert (=> d!1508500 (= (removePairForKey!1627 (t!360278 (t!360278 (tail!9041 oldBucket!34))) key!4653) lt!1893907)))

(declare-fun b!4730569 () Bool)

(declare-fun e!2950639 () List!53002)

(assert (=> b!4730569 (= e!2950640 e!2950639)))

(declare-fun c!807914 () Bool)

(assert (=> b!4730569 (= c!807914 ((_ is Cons!52878) (t!360278 (t!360278 (tail!9041 oldBucket!34)))))))

(declare-fun b!4730568 () Bool)

(assert (=> b!4730568 (= e!2950640 (t!360278 (t!360278 (t!360278 (tail!9041 oldBucket!34)))))))

(declare-fun b!4730570 () Bool)

(assert (=> b!4730570 (= e!2950639 (Cons!52878 (h!59237 (t!360278 (t!360278 (tail!9041 oldBucket!34)))) (removePairForKey!1627 (t!360278 (t!360278 (t!360278 (tail!9041 oldBucket!34)))) key!4653)))))

(declare-fun b!4730571 () Bool)

(assert (=> b!4730571 (= e!2950639 Nil!52878)))

(assert (= (and d!1508500 c!807913) b!4730568))

(assert (= (and d!1508500 (not c!807913)) b!4730569))

(assert (= (and b!4730569 c!807914) b!4730570))

(assert (= (and b!4730569 (not c!807914)) b!4730571))

(declare-fun m!5672803 () Bool)

(assert (=> d!1508500 m!5672803))

(assert (=> d!1508500 m!5672215))

(declare-fun m!5672805 () Bool)

(assert (=> b!4730570 m!5672805))

(assert (=> b!4729547 d!1508500))

(declare-fun d!1508502 () Bool)

(declare-fun res!2002661 () Bool)

(declare-fun e!2950641 () Bool)

(assert (=> d!1508502 (=> res!2002661 e!2950641)))

(assert (=> d!1508502 (= res!2002661 (or ((_ is Nil!52879) (t!360279 (toList!5953 lm!2023))) ((_ is Nil!52879) (t!360279 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> d!1508502 (= (isStrictlySorted!761 (t!360279 (toList!5953 lm!2023))) e!2950641)))

(declare-fun b!4730572 () Bool)

(declare-fun e!2950642 () Bool)

(assert (=> b!4730572 (= e!2950641 e!2950642)))

(declare-fun res!2002662 () Bool)

(assert (=> b!4730572 (=> (not res!2002662) (not e!2950642))))

(assert (=> b!4730572 (= res!2002662 (bvslt (_1!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))) (_1!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023)))))))))

(declare-fun b!4730573 () Bool)

(assert (=> b!4730573 (= e!2950642 (isStrictlySorted!761 (t!360279 (t!360279 (toList!5953 lm!2023)))))))

(assert (= (and d!1508502 (not res!2002661)) b!4730572))

(assert (= (and b!4730572 res!2002662) b!4730573))

(declare-fun m!5672807 () Bool)

(assert (=> b!4730573 m!5672807))

(assert (=> b!4729593 d!1508502))

(declare-fun d!1508504 () Bool)

(declare-fun c!807915 () Bool)

(assert (=> d!1508504 (= c!807915 ((_ is Nil!52881) (keys!19004 lt!1892771)))))

(declare-fun e!2950643 () (InoxSet K!14230))

(assert (=> d!1508504 (= (content!9422 (keys!19004 lt!1892771)) e!2950643)))

(declare-fun b!4730574 () Bool)

(assert (=> b!4730574 (= e!2950643 ((as const (Array K!14230 Bool)) false))))

(declare-fun b!4730575 () Bool)

(assert (=> b!4730575 (= e!2950643 ((_ map or) (store ((as const (Array K!14230 Bool)) false) (h!59242 (keys!19004 lt!1892771)) true) (content!9422 (t!360281 (keys!19004 lt!1892771)))))))

(assert (= (and d!1508504 c!807915) b!4730574))

(assert (= (and d!1508504 (not c!807915)) b!4730575))

(declare-fun m!5672809 () Bool)

(assert (=> b!4730575 m!5672809))

(declare-fun m!5672811 () Bool)

(assert (=> b!4730575 m!5672811))

(assert (=> d!1507392 d!1508504))

(declare-fun d!1508506 () Bool)

(declare-fun res!2002663 () Bool)

(declare-fun e!2950644 () Bool)

(assert (=> d!1508506 (=> res!2002663 e!2950644)))

(assert (=> d!1508506 (= res!2002663 (and ((_ is Cons!52878) (t!360278 (_2!30556 (h!59238 lt!1892767)))) (= (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 lt!1892767))))) (_1!30555 (h!59237 (_2!30556 (h!59238 lt!1892767)))))))))

(assert (=> d!1508506 (= (containsKey!3402 (t!360278 (_2!30556 (h!59238 lt!1892767))) (_1!30555 (h!59237 (_2!30556 (h!59238 lt!1892767))))) e!2950644)))

(declare-fun b!4730576 () Bool)

(declare-fun e!2950645 () Bool)

(assert (=> b!4730576 (= e!2950644 e!2950645)))

(declare-fun res!2002664 () Bool)

(assert (=> b!4730576 (=> (not res!2002664) (not e!2950645))))

(assert (=> b!4730576 (= res!2002664 ((_ is Cons!52878) (t!360278 (_2!30556 (h!59238 lt!1892767)))))))

(declare-fun b!4730577 () Bool)

(assert (=> b!4730577 (= e!2950645 (containsKey!3402 (t!360278 (t!360278 (_2!30556 (h!59238 lt!1892767)))) (_1!30555 (h!59237 (_2!30556 (h!59238 lt!1892767))))))))

(assert (= (and d!1508506 (not res!2002663)) b!4730576))

(assert (= (and b!4730576 res!2002664) b!4730577))

(declare-fun m!5672813 () Bool)

(assert (=> b!4730577 m!5672813))

(assert (=> b!4729578 d!1508506))

(declare-fun d!1508508 () Bool)

(declare-fun e!2950649 () Bool)

(assert (=> d!1508508 e!2950649))

(declare-fun res!2002667 () Bool)

(assert (=> d!1508508 (=> res!2002667 e!2950649)))

(declare-fun e!2950650 () Bool)

(assert (=> d!1508508 (= res!2002667 e!2950650)))

(declare-fun res!2002665 () Bool)

(assert (=> d!1508508 (=> (not res!2002665) (not e!2950650))))

(declare-fun lt!1893908 () Bool)

(assert (=> d!1508508 (= res!2002665 (not lt!1893908))))

(declare-fun lt!1893911 () Bool)

(assert (=> d!1508508 (= lt!1893908 lt!1893911)))

(declare-fun lt!1893913 () Unit!131227)

(declare-fun e!2950648 () Unit!131227)

(assert (=> d!1508508 (= lt!1893913 e!2950648)))

(declare-fun c!807917 () Bool)

(assert (=> d!1508508 (= c!807917 lt!1893911)))

(assert (=> d!1508508 (= lt!1893911 (containsKey!3406 (toList!5954 lt!1893054) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> d!1508508 (= (contains!16239 lt!1893054 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))) lt!1893908)))

(declare-fun b!4730578 () Bool)

(assert (=> b!4730578 false))

(declare-fun lt!1893912 () Unit!131227)

(declare-fun lt!1893909 () Unit!131227)

(assert (=> b!4730578 (= lt!1893912 lt!1893909)))

(assert (=> b!4730578 (containsKey!3406 (toList!5954 lt!1893054) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> b!4730578 (= lt!1893909 (lemmaInGetKeysListThenContainsKey!962 (toList!5954 lt!1893054) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun e!2950646 () Unit!131227)

(declare-fun Unit!131429 () Unit!131227)

(assert (=> b!4730578 (= e!2950646 Unit!131429)))

(declare-fun b!4730579 () Bool)

(declare-fun Unit!131430 () Unit!131227)

(assert (=> b!4730579 (= e!2950646 Unit!131430)))

(declare-fun b!4730580 () Bool)

(declare-fun e!2950647 () List!53005)

(assert (=> b!4730580 (= e!2950647 (getKeysList!963 (toList!5954 lt!1893054)))))

(declare-fun b!4730581 () Bool)

(declare-fun e!2950651 () Bool)

(assert (=> b!4730581 (= e!2950651 (contains!16243 (keys!19004 lt!1893054) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun b!4730582 () Bool)

(declare-fun lt!1893915 () Unit!131227)

(assert (=> b!4730582 (= e!2950648 lt!1893915)))

(declare-fun lt!1893910 () Unit!131227)

(assert (=> b!4730582 (= lt!1893910 (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 lt!1893054) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> b!4730582 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893054) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893914 () Unit!131227)

(assert (=> b!4730582 (= lt!1893914 lt!1893910)))

(assert (=> b!4730582 (= lt!1893915 (lemmaInListThenGetKeysListContains!958 (toList!5954 lt!1893054) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun call!330883 () Bool)

(assert (=> b!4730582 call!330883))

(declare-fun bm!330878 () Bool)

(assert (=> bm!330878 (= call!330883 (contains!16243 e!2950647 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun c!807918 () Bool)

(assert (=> bm!330878 (= c!807918 c!807917)))

(declare-fun b!4730583 () Bool)

(assert (=> b!4730583 (= e!2950647 (keys!19004 lt!1893054))))

(declare-fun b!4730584 () Bool)

(assert (=> b!4730584 (= e!2950648 e!2950646)))

(declare-fun c!807916 () Bool)

(assert (=> b!4730584 (= c!807916 call!330883)))

(declare-fun b!4730585 () Bool)

(assert (=> b!4730585 (= e!2950649 e!2950651)))

(declare-fun res!2002666 () Bool)

(assert (=> b!4730585 (=> (not res!2002666) (not e!2950651))))

(assert (=> b!4730585 (= res!2002666 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893054) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))))

(declare-fun b!4730586 () Bool)

(assert (=> b!4730586 (= e!2950650 (not (contains!16243 (keys!19004 lt!1893054) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))))

(assert (= (and d!1508508 c!807917) b!4730582))

(assert (= (and d!1508508 (not c!807917)) b!4730584))

(assert (= (and b!4730584 c!807916) b!4730578))

(assert (= (and b!4730584 (not c!807916)) b!4730579))

(assert (= (or b!4730582 b!4730584) bm!330878))

(assert (= (and bm!330878 c!807918) b!4730580))

(assert (= (and bm!330878 (not c!807918)) b!4730583))

(assert (= (and d!1508508 res!2002665) b!4730586))

(assert (= (and d!1508508 (not res!2002667)) b!4730585))

(assert (= (and b!4730585 res!2002666) b!4730581))

(assert (=> b!4730580 m!5670473))

(declare-fun m!5672815 () Bool)

(assert (=> b!4730578 m!5672815))

(declare-fun m!5672817 () Bool)

(assert (=> b!4730578 m!5672817))

(declare-fun m!5672819 () Bool)

(assert (=> bm!330878 m!5672819))

(declare-fun m!5672821 () Bool)

(assert (=> b!4730585 m!5672821))

(assert (=> b!4730585 m!5672821))

(declare-fun m!5672823 () Bool)

(assert (=> b!4730585 m!5672823))

(assert (=> b!4730581 m!5670485))

(assert (=> b!4730581 m!5670485))

(declare-fun m!5672825 () Bool)

(assert (=> b!4730581 m!5672825))

(assert (=> d!1508508 m!5672815))

(declare-fun m!5672827 () Bool)

(assert (=> b!4730582 m!5672827))

(assert (=> b!4730582 m!5672821))

(assert (=> b!4730582 m!5672821))

(assert (=> b!4730582 m!5672823))

(declare-fun m!5672829 () Bool)

(assert (=> b!4730582 m!5672829))

(assert (=> b!4730586 m!5670485))

(assert (=> b!4730586 m!5670485))

(assert (=> b!4730586 m!5672825))

(assert (=> b!4730583 m!5670485))

(assert (=> bs!1119043 d!1508508))

(declare-fun d!1508510 () Bool)

(declare-fun res!2002668 () Bool)

(declare-fun e!2950652 () Bool)

(assert (=> d!1508510 (=> res!2002668 e!2950652)))

(assert (=> d!1508510 (= res!2002668 (and ((_ is Cons!52878) (t!360278 (tail!9041 oldBucket!34))) (= (_1!30555 (h!59237 (t!360278 (tail!9041 oldBucket!34)))) (_1!30555 (h!59237 (tail!9041 oldBucket!34))))))))

(assert (=> d!1508510 (= (containsKey!3402 (t!360278 (tail!9041 oldBucket!34)) (_1!30555 (h!59237 (tail!9041 oldBucket!34)))) e!2950652)))

(declare-fun b!4730587 () Bool)

(declare-fun e!2950653 () Bool)

(assert (=> b!4730587 (= e!2950652 e!2950653)))

(declare-fun res!2002669 () Bool)

(assert (=> b!4730587 (=> (not res!2002669) (not e!2950653))))

(assert (=> b!4730587 (= res!2002669 ((_ is Cons!52878) (t!360278 (tail!9041 oldBucket!34))))))

(declare-fun b!4730588 () Bool)

(assert (=> b!4730588 (= e!2950653 (containsKey!3402 (t!360278 (t!360278 (tail!9041 oldBucket!34))) (_1!30555 (h!59237 (tail!9041 oldBucket!34)))))))

(assert (= (and d!1508510 (not res!2002668)) b!4730587))

(assert (= (and b!4730587 res!2002669) b!4730588))

(declare-fun m!5672831 () Bool)

(assert (=> b!4730588 m!5672831))

(assert (=> b!4729413 d!1508510))

(declare-fun d!1508512 () Bool)

(assert (=> d!1508512 (contains!16237 (toList!5953 lm!2023) (tuple2!54525 lt!1893401 lt!1893400))))

(declare-fun lt!1893916 () Unit!131227)

(assert (=> d!1508512 (= lt!1893916 (choose!33424 lm!2023 lt!1893401 lt!1893400))))

(assert (=> d!1508512 (contains!16238 lm!2023 lt!1893401)))

(assert (=> d!1508512 (= (lemmaGetValueImpliesTupleContained!377 lm!2023 lt!1893401 lt!1893400) lt!1893916)))

(declare-fun bs!1120102 () Bool)

(assert (= bs!1120102 d!1508512))

(assert (=> bs!1120102 m!5670649))

(declare-fun m!5672833 () Bool)

(assert (=> bs!1120102 m!5672833))

(declare-fun m!5672835 () Bool)

(assert (=> bs!1120102 m!5672835))

(assert (=> d!1507508 d!1508512))

(assert (=> d!1507508 d!1507416))

(assert (=> d!1507508 d!1507404))

(declare-fun d!1508514 () Bool)

(assert (=> d!1508514 (dynLambda!21839 lambda!216952 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))))))

(declare-fun lt!1893917 () Unit!131227)

(assert (=> d!1508514 (= lt!1893917 (choose!33428 (toList!5953 lm!2023) lambda!216952 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))

(declare-fun e!2950654 () Bool)

(assert (=> d!1508514 e!2950654))

(declare-fun res!2002670 () Bool)

(assert (=> d!1508514 (=> (not res!2002670) (not e!2950654))))

(assert (=> d!1508514 (= res!2002670 (forall!11625 (toList!5953 lm!2023) lambda!216952))))

(assert (=> d!1508514 (= (forallContained!3665 (toList!5953 lm!2023) lambda!216952 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))) lt!1893917)))

(declare-fun b!4730589 () Bool)

(assert (=> b!4730589 (= e!2950654 (contains!16237 (toList!5953 lm!2023) (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))))))

(assert (= (and d!1508514 res!2002670) b!4730589))

(declare-fun b_lambda!180415 () Bool)

(assert (=> (not b_lambda!180415) (not d!1508514)))

(declare-fun m!5672837 () Bool)

(assert (=> d!1508514 m!5672837))

(declare-fun m!5672839 () Bool)

(assert (=> d!1508514 m!5672839))

(declare-fun m!5672841 () Bool)

(assert (=> d!1508514 m!5672841))

(assert (=> b!4730589 m!5670383))

(assert (=> d!1507508 d!1508514))

(declare-fun d!1508516 () Bool)

(declare-fun lt!1893918 () Bool)

(assert (=> d!1508516 (= lt!1893918 (select (content!9419 (toList!5953 lm!2023)) (tuple2!54525 lt!1893401 lt!1893400)))))

(declare-fun e!2950655 () Bool)

(assert (=> d!1508516 (= lt!1893918 e!2950655)))

(declare-fun res!2002671 () Bool)

(assert (=> d!1508516 (=> (not res!2002671) (not e!2950655))))

(assert (=> d!1508516 (= res!2002671 ((_ is Cons!52879) (toList!5953 lm!2023)))))

(assert (=> d!1508516 (= (contains!16237 (toList!5953 lm!2023) (tuple2!54525 lt!1893401 lt!1893400)) lt!1893918)))

(declare-fun b!4730590 () Bool)

(declare-fun e!2950656 () Bool)

(assert (=> b!4730590 (= e!2950655 e!2950656)))

(declare-fun res!2002672 () Bool)

(assert (=> b!4730590 (=> res!2002672 e!2950656)))

(assert (=> b!4730590 (= res!2002672 (= (h!59238 (toList!5953 lm!2023)) (tuple2!54525 lt!1893401 lt!1893400)))))

(declare-fun b!4730591 () Bool)

(assert (=> b!4730591 (= e!2950656 (contains!16237 (t!360279 (toList!5953 lm!2023)) (tuple2!54525 lt!1893401 lt!1893400)))))

(assert (= (and d!1508516 res!2002671) b!4730590))

(assert (= (and b!4730590 (not res!2002672)) b!4730591))

(assert (=> d!1508516 m!5669379))

(declare-fun m!5672843 () Bool)

(assert (=> d!1508516 m!5672843))

(declare-fun m!5672845 () Bool)

(assert (=> b!4730591 m!5672845))

(assert (=> d!1507508 d!1508516))

(assert (=> d!1507508 d!1507422))

(assert (=> d!1507508 d!1507426))

(assert (=> d!1507508 d!1507080))

(assert (=> d!1507508 d!1507038))

(declare-fun bs!1120103 () Bool)

(declare-fun d!1508518 () Bool)

(assert (= bs!1120103 (and d!1508518 d!1507090)))

(declare-fun lambda!217032 () Int)

(assert (=> bs!1120103 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893065) (= lambda!217032 lambda!216874))))

(declare-fun bs!1120104 () Bool)

(assert (= bs!1120104 (and d!1508518 d!1507798)))

(assert (=> bs!1120104 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893564) (= lambda!217032 lambda!216992))))

(declare-fun bs!1120105 () Bool)

(assert (= bs!1120105 (and d!1508518 d!1507074)))

(assert (=> bs!1120105 (not (= lambda!217032 lambda!216840))))

(declare-fun bs!1120106 () Bool)

(assert (= bs!1120106 (and d!1508518 b!4729490)))

(assert (=> bs!1120106 (= lambda!217032 lambda!216933)))

(declare-fun bs!1120107 () Bool)

(assert (= bs!1120107 (and d!1508518 d!1507456)))

(assert (=> bs!1120107 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893054) (= lambda!217032 lambda!216941))))

(declare-fun bs!1120108 () Bool)

(assert (= bs!1120108 (and d!1508518 b!4729915)))

(assert (=> bs!1120108 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217032 lambda!216988))))

(declare-fun bs!1120109 () Bool)

(assert (= bs!1120109 (and d!1508518 b!4730355)))

(assert (=> bs!1120109 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217032 lambda!217023))))

(declare-fun bs!1120110 () Bool)

(assert (= bs!1120110 (and d!1508518 d!1508104)))

(assert (=> bs!1120110 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893828) (= lambda!217032 lambda!217025))))

(declare-fun bs!1120111 () Bool)

(assert (= bs!1120111 (and d!1508518 b!4729530)))

(assert (=> bs!1120111 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217032 lambda!216943))))

(declare-fun bs!1120112 () Bool)

(assert (= bs!1120112 (and d!1508518 d!1507466)))

(assert (=> bs!1120112 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217032 lambda!216949))))

(declare-fun bs!1120113 () Bool)

(assert (= bs!1120113 (and d!1508518 b!4729039)))

(assert (=> bs!1120113 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217032 lambda!216871))))

(declare-fun bs!1120114 () Bool)

(assert (= bs!1120114 (and d!1508518 b!4729036)))

(assert (=> bs!1120114 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893054) (= lambda!217032 lambda!216873))))

(declare-fun bs!1120115 () Bool)

(assert (= bs!1120115 (and d!1508518 d!1507116)))

(assert (=> bs!1120115 (not (= lambda!217032 lambda!216876))))

(assert (=> bs!1120111 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893357) (= lambda!217032 lambda!216944))))

(declare-fun bs!1120116 () Bool)

(assert (= bs!1120116 (and d!1508518 b!4730358)))

(assert (=> bs!1120116 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217032 lambda!217022))))

(declare-fun bs!1120117 () Bool)

(assert (= bs!1120117 (and d!1508518 d!1507436)))

(assert (=> bs!1120117 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893313) (= lambda!217032 lambda!216936))))

(declare-fun bs!1120118 () Bool)

(assert (= bs!1120118 (and d!1508518 b!4729487)))

(assert (=> bs!1120118 (= lambda!217032 lambda!216934)))

(declare-fun bs!1120119 () Bool)

(assert (= bs!1120119 (and d!1508518 d!1508462)))

(assert (=> bs!1120119 (not (= lambda!217032 lambda!217031))))

(assert (=> bs!1120114 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217032 lambda!216872))))

(declare-fun bs!1120120 () Bool)

(assert (= bs!1120120 (and d!1508518 d!1507458)))

(assert (=> bs!1120120 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893368) (= lambda!217032 lambda!216945))))

(assert (=> bs!1120109 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893817) (= lambda!217032 lambda!217024))))

(declare-fun bs!1120121 () Bool)

(assert (= bs!1120121 (and d!1508518 d!1508216)))

(assert (=> bs!1120121 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893357) (= lambda!217032 lambda!217026))))

(declare-fun bs!1120122 () Bool)

(assert (= bs!1120122 (and d!1508518 b!4729533)))

(assert (=> bs!1120122 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217032 lambda!216942))))

(declare-fun bs!1120123 () Bool)

(assert (= bs!1120123 (and d!1508518 d!1507922)))

(assert (=> bs!1120123 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217032 lambda!217002))))

(declare-fun bs!1120124 () Bool)

(assert (= bs!1120124 (and d!1508518 b!4729912)))

(assert (=> bs!1120124 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893553) (= lambda!217032 lambda!216990))))

(assert (=> bs!1120118 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893302) (= lambda!217032 lambda!216935))))

(declare-fun bs!1120125 () Bool)

(assert (= bs!1120125 (and d!1508518 d!1507900)))

(assert (=> bs!1120125 (not (= lambda!217032 lambda!216996))))

(declare-fun bs!1120126 () Bool)

(assert (= bs!1120126 (and d!1508518 d!1507846)))

(assert (=> bs!1120126 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lt!1893302) (= lambda!217032 lambda!216993))))

(assert (=> bs!1120124 (= (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217032 lambda!216989))))

(assert (=> d!1508518 true))

(assert (=> d!1508518 (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lambda!217032)))

(declare-fun lt!1893919 () Unit!131227)

(assert (=> d!1508518 (= lt!1893919 (choose!33442 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1508518 (= (lemmaContainsAllItsOwnKeys!808 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893919)))

(declare-fun bs!1120127 () Bool)

(assert (= bs!1120127 d!1508518))

(declare-fun m!5672847 () Bool)

(assert (=> bs!1120127 m!5672847))

(assert (=> bs!1120127 m!5669683))

(declare-fun m!5672849 () Bool)

(assert (=> bs!1120127 m!5672849))

(assert (=> bm!330811 d!1508518))

(declare-fun d!1508520 () Bool)

(declare-fun res!2002673 () Bool)

(declare-fun e!2950657 () Bool)

(assert (=> d!1508520 (=> res!2002673 e!2950657)))

(assert (=> d!1508520 (= res!2002673 ((_ is Nil!52878) (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (=> d!1508520 (= (forall!11627 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))) lambda!216874) e!2950657)))

(declare-fun b!4730592 () Bool)

(declare-fun e!2950658 () Bool)

(assert (=> b!4730592 (= e!2950657 e!2950658)))

(declare-fun res!2002674 () Bool)

(assert (=> b!4730592 (=> (not res!2002674) (not e!2950658))))

(assert (=> b!4730592 (= res!2002674 (dynLambda!21841 lambda!216874 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4730593 () Bool)

(assert (=> b!4730593 (= e!2950658 (forall!11627 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) lambda!216874))))

(assert (= (and d!1508520 (not res!2002673)) b!4730592))

(assert (= (and b!4730592 res!2002674) b!4730593))

(declare-fun b_lambda!180417 () Bool)

(assert (=> (not b_lambda!180417) (not b!4730592)))

(declare-fun m!5672851 () Bool)

(assert (=> b!4730592 m!5672851))

(declare-fun m!5672853 () Bool)

(assert (=> b!4730593 m!5672853))

(assert (=> b!4729577 d!1508520))

(assert (=> b!4729353 d!1507888))

(assert (=> b!4729505 d!1507776))

(assert (=> b!4729505 d!1507778))

(declare-fun d!1508522 () Bool)

(declare-fun res!2002675 () Bool)

(declare-fun e!2950659 () Bool)

(assert (=> d!1508522 (=> res!2002675 e!2950659)))

(assert (=> d!1508522 (= res!2002675 ((_ is Nil!52878) (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> d!1508522 (= (forall!11627 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) lambda!216874) e!2950659)))

(declare-fun b!4730594 () Bool)

(declare-fun e!2950660 () Bool)

(assert (=> b!4730594 (= e!2950659 e!2950660)))

(declare-fun res!2002676 () Bool)

(assert (=> b!4730594 (=> (not res!2002676) (not e!2950660))))

(assert (=> b!4730594 (= res!2002676 (dynLambda!21841 lambda!216874 (h!59237 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun b!4730595 () Bool)

(assert (=> b!4730595 (= e!2950660 (forall!11627 (t!360278 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) lambda!216874))))

(assert (= (and d!1508522 (not res!2002675)) b!4730594))

(assert (= (and b!4730594 res!2002676) b!4730595))

(declare-fun b_lambda!180419 () Bool)

(assert (=> (not b_lambda!180419) (not b!4730594)))

(declare-fun m!5672855 () Bool)

(assert (=> b!4730594 m!5672855))

(declare-fun m!5672857 () Bool)

(assert (=> b!4730595 m!5672857))

(assert (=> b!4729570 d!1508522))

(declare-fun d!1508524 () Bool)

(assert (=> d!1508524 (= (length!594 lt!1893283) (size!35983 lt!1893283))))

(declare-fun bs!1120128 () Bool)

(assert (= bs!1120128 d!1508524))

(declare-fun m!5672859 () Bool)

(assert (=> bs!1120128 m!5672859))

(assert (=> b!4729445 d!1508524))

(assert (=> b!4729445 d!1508016))

(declare-fun d!1508526 () Bool)

(declare-fun res!2002677 () Bool)

(declare-fun e!2950661 () Bool)

(assert (=> d!1508526 (=> res!2002677 e!2950661)))

(assert (=> d!1508526 (= res!2002677 (and ((_ is Cons!52878) (t!360278 lt!1892763)) (= (_1!30555 (h!59237 (t!360278 lt!1892763))) (_1!30555 (h!59237 lt!1892763)))))))

(assert (=> d!1508526 (= (containsKey!3402 (t!360278 lt!1892763) (_1!30555 (h!59237 lt!1892763))) e!2950661)))

(declare-fun b!4730596 () Bool)

(declare-fun e!2950662 () Bool)

(assert (=> b!4730596 (= e!2950661 e!2950662)))

(declare-fun res!2002678 () Bool)

(assert (=> b!4730596 (=> (not res!2002678) (not e!2950662))))

(assert (=> b!4730596 (= res!2002678 ((_ is Cons!52878) (t!360278 lt!1892763)))))

(declare-fun b!4730597 () Bool)

(assert (=> b!4730597 (= e!2950662 (containsKey!3402 (t!360278 (t!360278 lt!1892763)) (_1!30555 (h!59237 lt!1892763))))))

(assert (= (and d!1508526 (not res!2002677)) b!4730596))

(assert (= (and b!4730596 res!2002678) b!4730597))

(declare-fun m!5672861 () Bool)

(assert (=> b!4730597 m!5672861))

(assert (=> b!4729368 d!1508526))

(declare-fun d!1508528 () Bool)

(assert (=> d!1508528 (dynLambda!21841 lambda!216873 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))

(assert (=> d!1508528 true))

(declare-fun _$7!2262 () Unit!131227)

(assert (=> d!1508528 (= (choose!33440 (toList!5954 lt!1893051) lambda!216873 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) _$7!2262)))

(declare-fun b_lambda!180421 () Bool)

(assert (=> (not b_lambda!180421) (not d!1508528)))

(declare-fun bs!1120129 () Bool)

(assert (= bs!1120129 d!1508528))

(assert (=> bs!1120129 m!5670497))

(assert (=> d!1507448 d!1508528))

(assert (=> d!1507448 d!1507442))

(declare-fun d!1508530 () Bool)

(declare-fun res!2002679 () Bool)

(declare-fun e!2950663 () Bool)

(assert (=> d!1508530 (=> res!2002679 e!2950663)))

(assert (=> d!1508530 (= res!2002679 (or ((_ is Nil!52878) (toList!5954 lt!1892966)) ((_ is Nil!52878) (t!360278 (toList!5954 lt!1892966)))))))

(assert (=> d!1508530 (= (noDuplicatedKeys!383 (toList!5954 lt!1892966)) e!2950663)))

(declare-fun b!4730598 () Bool)

(declare-fun e!2950664 () Bool)

(assert (=> b!4730598 (= e!2950663 e!2950664)))

(declare-fun res!2002680 () Bool)

(assert (=> b!4730598 (=> (not res!2002680) (not e!2950664))))

(assert (=> b!4730598 (= res!2002680 (not (containsKey!3406 (t!360278 (toList!5954 lt!1892966)) (_1!30555 (h!59237 (toList!5954 lt!1892966))))))))

(declare-fun b!4730599 () Bool)

(assert (=> b!4730599 (= e!2950664 (noDuplicatedKeys!383 (t!360278 (toList!5954 lt!1892966))))))

(assert (= (and d!1508530 (not res!2002679)) b!4730598))

(assert (= (and b!4730598 res!2002680) b!4730599))

(declare-fun m!5672863 () Bool)

(assert (=> b!4730598 m!5672863))

(declare-fun m!5672865 () Bool)

(assert (=> b!4730599 m!5672865))

(assert (=> d!1507498 d!1508530))

(assert (=> d!1507492 d!1507490))

(declare-fun d!1508532 () Bool)

(declare-fun res!2002681 () Bool)

(declare-fun e!2950665 () Bool)

(assert (=> d!1508532 (=> res!2002681 e!2950665)))

(assert (=> d!1508532 (= res!2002681 (and ((_ is Cons!52878) (t!360278 (t!360278 newBucket!218))) (= (_1!30555 (h!59237 (t!360278 (t!360278 newBucket!218)))) (_1!30555 (h!59237 (t!360278 newBucket!218))))))))

(assert (=> d!1508532 (= (containsKey!3402 (t!360278 (t!360278 newBucket!218)) (_1!30555 (h!59237 (t!360278 newBucket!218)))) e!2950665)))

(declare-fun b!4730600 () Bool)

(declare-fun e!2950666 () Bool)

(assert (=> b!4730600 (= e!2950665 e!2950666)))

(declare-fun res!2002682 () Bool)

(assert (=> b!4730600 (=> (not res!2002682) (not e!2950666))))

(assert (=> b!4730600 (= res!2002682 ((_ is Cons!52878) (t!360278 (t!360278 newBucket!218))))))

(declare-fun b!4730601 () Bool)

(assert (=> b!4730601 (= e!2950666 (containsKey!3402 (t!360278 (t!360278 (t!360278 newBucket!218))) (_1!30555 (h!59237 (t!360278 newBucket!218)))))))

(assert (= (and d!1508532 (not res!2002681)) b!4730600))

(assert (= (and b!4730600 res!2002682) b!4730601))

(declare-fun m!5672867 () Bool)

(assert (=> b!4730601 m!5672867))

(assert (=> b!4729485 d!1508532))

(declare-fun d!1508534 () Bool)

(assert (=> d!1508534 true))

(assert (=> d!1508534 true))

(declare-fun res!2002685 () (_ BitVec 64))

(assert (=> d!1508534 (= (choose!33435 hashF!1323 key!4653) res!2002685)))

(assert (=> d!1507344 d!1508534))

(declare-fun d!1508536 () Bool)

(declare-fun res!2002686 () Bool)

(declare-fun e!2950667 () Bool)

(assert (=> d!1508536 (=> res!2002686 e!2950667)))

(assert (=> d!1508536 (= res!2002686 (and ((_ is Cons!52878) (t!360278 (t!360278 (t!360278 oldBucket!34)))) (= (_1!30555 (h!59237 (t!360278 (t!360278 (t!360278 oldBucket!34))))) key!4653)))))

(assert (=> d!1508536 (= (containsKey!3402 (t!360278 (t!360278 (t!360278 oldBucket!34))) key!4653) e!2950667)))

(declare-fun b!4730602 () Bool)

(declare-fun e!2950668 () Bool)

(assert (=> b!4730602 (= e!2950667 e!2950668)))

(declare-fun res!2002687 () Bool)

(assert (=> b!4730602 (=> (not res!2002687) (not e!2950668))))

(assert (=> b!4730602 (= res!2002687 ((_ is Cons!52878) (t!360278 (t!360278 (t!360278 oldBucket!34)))))))

(declare-fun b!4730603 () Bool)

(assert (=> b!4730603 (= e!2950668 (containsKey!3402 (t!360278 (t!360278 (t!360278 (t!360278 oldBucket!34)))) key!4653))))

(assert (= (and d!1508536 (not res!2002686)) b!4730602))

(assert (= (and b!4730602 res!2002687) b!4730603))

(declare-fun m!5672869 () Bool)

(assert (=> b!4730603 m!5672869))

(assert (=> b!4729453 d!1508536))

(declare-fun d!1508538 () Bool)

(declare-fun res!2002688 () Bool)

(declare-fun e!2950669 () Bool)

(assert (=> d!1508538 (=> res!2002688 e!2950669)))

(assert (=> d!1508538 (= res!2002688 (and ((_ is Cons!52878) (t!360278 (toList!5954 lt!1892771))) (= (_1!30555 (h!59237 (t!360278 (toList!5954 lt!1892771)))) key!4653)))))

(assert (=> d!1508538 (= (containsKey!3406 (t!360278 (toList!5954 lt!1892771)) key!4653) e!2950669)))

(declare-fun b!4730604 () Bool)

(declare-fun e!2950670 () Bool)

(assert (=> b!4730604 (= e!2950669 e!2950670)))

(declare-fun res!2002689 () Bool)

(assert (=> b!4730604 (=> (not res!2002689) (not e!2950670))))

(assert (=> b!4730604 (= res!2002689 ((_ is Cons!52878) (t!360278 (toList!5954 lt!1892771))))))

(declare-fun b!4730605 () Bool)

(assert (=> b!4730605 (= e!2950670 (containsKey!3406 (t!360278 (t!360278 (toList!5954 lt!1892771))) key!4653))))

(assert (= (and d!1508538 (not res!2002688)) b!4730604))

(assert (= (and b!4730604 res!2002689) b!4730605))

(declare-fun m!5672871 () Bool)

(assert (=> b!4730605 m!5672871))

(assert (=> b!4729410 d!1508538))

(assert (=> b!4729516 d!1507792))

(declare-fun d!1508540 () Bool)

(assert (=> d!1508540 (containsKey!3406 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(declare-fun lt!1893920 () Unit!131227)

(assert (=> d!1508540 (= lt!1893920 (choose!33439 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1508540 (invariantList!1523 (toList!5954 lt!1893051))))

(assert (=> d!1508540 (= (lemmaInGetKeysListThenContainsKey!962 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893920)))

(declare-fun bs!1120130 () Bool)

(assert (= bs!1120130 d!1508540))

(assert (=> bs!1120130 m!5670505))

(declare-fun m!5672873 () Bool)

(assert (=> bs!1120130 m!5672873))

(assert (=> bs!1120130 m!5672527))

(assert (=> b!4729516 d!1508540))

(declare-fun d!1508542 () Bool)

(declare-fun res!2002690 () Bool)

(declare-fun e!2950671 () Bool)

(assert (=> d!1508542 (=> res!2002690 e!2950671)))

(assert (=> d!1508542 (= res!2002690 ((_ is Nil!52878) (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1508542 (= (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lambda!216936) e!2950671)))

(declare-fun b!4730606 () Bool)

(declare-fun e!2950672 () Bool)

(assert (=> b!4730606 (= e!2950671 e!2950672)))

(declare-fun res!2002691 () Bool)

(assert (=> b!4730606 (=> (not res!2002691) (not e!2950672))))

(assert (=> b!4730606 (= res!2002691 (dynLambda!21841 lambda!216936 (h!59237 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun b!4730607 () Bool)

(assert (=> b!4730607 (= e!2950672 (forall!11627 (t!360278 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) lambda!216936))))

(assert (= (and d!1508542 (not res!2002690)) b!4730606))

(assert (= (and b!4730606 res!2002691) b!4730607))

(declare-fun b_lambda!180423 () Bool)

(assert (=> (not b_lambda!180423) (not b!4730606)))

(declare-fun m!5672875 () Bool)

(assert (=> b!4730606 m!5672875))

(declare-fun m!5672877 () Bool)

(assert (=> b!4730607 m!5672877))

(assert (=> b!4729488 d!1508542))

(assert (=> b!4729367 d!1507384))

(declare-fun d!1508544 () Bool)

(assert (=> d!1508544 (= (invariantList!1523 (toList!5954 lt!1893368)) (noDuplicatedKeys!383 (toList!5954 lt!1893368)))))

(declare-fun bs!1120131 () Bool)

(assert (= bs!1120131 d!1508544))

(declare-fun m!5672879 () Bool)

(assert (=> bs!1120131 m!5672879))

(assert (=> b!4729532 d!1508544))

(assert (=> b!4729556 d!1508450))

(assert (=> b!4729361 d!1507944))

(declare-fun d!1508546 () Bool)

(declare-fun res!2002692 () Bool)

(declare-fun e!2950673 () Bool)

(assert (=> d!1508546 (=> res!2002692 e!2950673)))

(assert (=> d!1508546 (= res!2002692 ((_ is Nil!52881) lt!1893283))))

(assert (=> d!1508546 (= (noDuplicate!869 lt!1893283) e!2950673)))

(declare-fun b!4730608 () Bool)

(declare-fun e!2950674 () Bool)

(assert (=> b!4730608 (= e!2950673 e!2950674)))

(declare-fun res!2002693 () Bool)

(assert (=> b!4730608 (=> (not res!2002693) (not e!2950674))))

(assert (=> b!4730608 (= res!2002693 (not (contains!16243 (t!360281 lt!1893283) (h!59242 lt!1893283))))))

(declare-fun b!4730609 () Bool)

(assert (=> b!4730609 (= e!2950674 (noDuplicate!869 (t!360281 lt!1893283)))))

(assert (= (and d!1508546 (not res!2002692)) b!4730608))

(assert (= (and b!4730608 res!2002693) b!4730609))

(declare-fun m!5672881 () Bool)

(assert (=> b!4730608 m!5672881))

(declare-fun m!5672883 () Bool)

(assert (=> b!4730609 m!5672883))

(assert (=> d!1507394 d!1508546))

(assert (=> d!1507394 d!1507364))

(assert (=> d!1507424 d!1507478))

(declare-fun d!1508548 () Bool)

(assert (=> d!1508548 (= (isEmpty!29199 (getValueByKey!1978 (toList!5954 lt!1892771) key!4653)) (not ((_ is Some!12391) (getValueByKey!1978 (toList!5954 lt!1892771) key!4653))))))

(assert (=> d!1507482 d!1508548))

(declare-fun bs!1120132 () Bool)

(declare-fun d!1508550 () Bool)

(assert (= bs!1120132 (and d!1508550 d!1507090)))

(declare-fun lambda!217033 () Int)

(assert (=> bs!1120132 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893065) (= lambda!217033 lambda!216874))))

(declare-fun bs!1120133 () Bool)

(assert (= bs!1120133 (and d!1508550 d!1507798)))

(assert (=> bs!1120133 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893564) (= lambda!217033 lambda!216992))))

(declare-fun bs!1120134 () Bool)

(assert (= bs!1120134 (and d!1508550 d!1507074)))

(assert (=> bs!1120134 (not (= lambda!217033 lambda!216840))))

(declare-fun bs!1120135 () Bool)

(assert (= bs!1120135 (and d!1508550 b!4729490)))

(assert (=> bs!1120135 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217033 lambda!216933))))

(declare-fun bs!1120136 () Bool)

(assert (= bs!1120136 (and d!1508550 b!4729915)))

(assert (=> bs!1120136 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217033 lambda!216988))))

(declare-fun bs!1120137 () Bool)

(assert (= bs!1120137 (and d!1508550 b!4730355)))

(assert (=> bs!1120137 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217033 lambda!217023))))

(declare-fun bs!1120138 () Bool)

(assert (= bs!1120138 (and d!1508550 d!1508104)))

(assert (=> bs!1120138 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893828) (= lambda!217033 lambda!217025))))

(declare-fun bs!1120139 () Bool)

(assert (= bs!1120139 (and d!1508550 b!4729530)))

(assert (=> bs!1120139 (= lambda!217033 lambda!216943)))

(declare-fun bs!1120140 () Bool)

(assert (= bs!1120140 (and d!1508550 d!1507466)))

(assert (=> bs!1120140 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217033 lambda!216949))))

(declare-fun bs!1120141 () Bool)

(assert (= bs!1120141 (and d!1508550 b!4729039)))

(assert (=> bs!1120141 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217033 lambda!216871))))

(declare-fun bs!1120142 () Bool)

(assert (= bs!1120142 (and d!1508550 b!4729036)))

(assert (=> bs!1120142 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893054) (= lambda!217033 lambda!216873))))

(declare-fun bs!1120143 () Bool)

(assert (= bs!1120143 (and d!1508550 d!1507116)))

(assert (=> bs!1120143 (not (= lambda!217033 lambda!216876))))

(assert (=> bs!1120139 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893357) (= lambda!217033 lambda!216944))))

(declare-fun bs!1120144 () Bool)

(assert (= bs!1120144 (and d!1508550 b!4730358)))

(assert (=> bs!1120144 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217033 lambda!217022))))

(declare-fun bs!1120145 () Bool)

(assert (= bs!1120145 (and d!1508550 d!1507436)))

(assert (=> bs!1120145 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893313) (= lambda!217033 lambda!216936))))

(declare-fun bs!1120146 () Bool)

(assert (= bs!1120146 (and d!1508550 b!4729487)))

(assert (=> bs!1120146 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217033 lambda!216934))))

(declare-fun bs!1120147 () Bool)

(assert (= bs!1120147 (and d!1508550 d!1508462)))

(assert (=> bs!1120147 (not (= lambda!217033 lambda!217031))))

(assert (=> bs!1120142 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217033 lambda!216872))))

(declare-fun bs!1120148 () Bool)

(assert (= bs!1120148 (and d!1508550 d!1508518)))

(assert (=> bs!1120148 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217033 lambda!217032))))

(declare-fun bs!1120149 () Bool)

(assert (= bs!1120149 (and d!1508550 d!1507456)))

(assert (=> bs!1120149 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893054) (= lambda!217033 lambda!216941))))

(declare-fun bs!1120150 () Bool)

(assert (= bs!1120150 (and d!1508550 d!1507458)))

(assert (=> bs!1120150 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893368) (= lambda!217033 lambda!216945))))

(assert (=> bs!1120137 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893817) (= lambda!217033 lambda!217024))))

(declare-fun bs!1120151 () Bool)

(assert (= bs!1120151 (and d!1508550 d!1508216)))

(assert (=> bs!1120151 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893357) (= lambda!217033 lambda!217026))))

(declare-fun bs!1120152 () Bool)

(assert (= bs!1120152 (and d!1508550 b!4729533)))

(assert (=> bs!1120152 (= lambda!217033 lambda!216942)))

(declare-fun bs!1120153 () Bool)

(assert (= bs!1120153 (and d!1508550 d!1507922)))

(assert (=> bs!1120153 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217033 lambda!217002))))

(declare-fun bs!1120154 () Bool)

(assert (= bs!1120154 (and d!1508550 b!4729912)))

(assert (=> bs!1120154 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893553) (= lambda!217033 lambda!216990))))

(assert (=> bs!1120146 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893302) (= lambda!217033 lambda!216935))))

(declare-fun bs!1120155 () Bool)

(assert (= bs!1120155 (and d!1508550 d!1507900)))

(assert (=> bs!1120155 (not (= lambda!217033 lambda!216996))))

(declare-fun bs!1120156 () Bool)

(assert (= bs!1120156 (and d!1508550 d!1507846)))

(assert (=> bs!1120156 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) lt!1893302) (= lambda!217033 lambda!216993))))

(assert (=> bs!1120154 (= (= (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217033 lambda!216989))))

(assert (=> d!1508550 true))

(assert (=> d!1508550 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) lambda!217033)))

(declare-fun lt!1893921 () Unit!131227)

(assert (=> d!1508550 (= lt!1893921 (choose!33442 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> d!1508550 (= (lemmaContainsAllItsOwnKeys!808 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893921)))

(declare-fun bs!1120157 () Bool)

(assert (= bs!1120157 d!1508550))

(declare-fun m!5672885 () Bool)

(assert (=> bs!1120157 m!5672885))

(assert (=> bs!1120157 m!5669717))

(declare-fun m!5672887 () Bool)

(assert (=> bs!1120157 m!5672887))

(assert (=> bm!330816 d!1508550))

(declare-fun d!1508552 () Bool)

(assert (=> d!1508552 (= (isDefined!9642 lt!1893290) (not (isEmpty!29195 lt!1893290)))))

(declare-fun bs!1120158 () Bool)

(assert (= bs!1120158 d!1508552))

(assert (=> bs!1120158 m!5670389))

(assert (=> b!4729479 d!1508552))

(assert (=> b!4729507 d!1507778))

(declare-fun d!1508554 () Bool)

(declare-fun res!2002694 () Bool)

(declare-fun e!2950675 () Bool)

(assert (=> d!1508554 (=> res!2002694 e!2950675)))

(assert (=> d!1508554 (= res!2002694 ((_ is Nil!52879) (t!360279 (toList!5953 lm!2023))))))

(assert (=> d!1508554 (= (forall!11625 (t!360279 (toList!5953 lm!2023)) lambda!216774) e!2950675)))

(declare-fun b!4730610 () Bool)

(declare-fun e!2950676 () Bool)

(assert (=> b!4730610 (= e!2950675 e!2950676)))

(declare-fun res!2002695 () Bool)

(assert (=> b!4730610 (=> (not res!2002695) (not e!2950676))))

(assert (=> b!4730610 (= res!2002695 (dynLambda!21839 lambda!216774 (h!59238 (t!360279 (toList!5953 lm!2023)))))))

(declare-fun b!4730611 () Bool)

(assert (=> b!4730611 (= e!2950676 (forall!11625 (t!360279 (t!360279 (toList!5953 lm!2023))) lambda!216774))))

(assert (= (and d!1508554 (not res!2002694)) b!4730610))

(assert (= (and b!4730610 res!2002695) b!4730611))

(declare-fun b_lambda!180425 () Bool)

(assert (=> (not b_lambda!180425) (not b!4730610)))

(declare-fun m!5672889 () Bool)

(assert (=> b!4730610 m!5672889))

(declare-fun m!5672891 () Bool)

(assert (=> b!4730611 m!5672891))

(assert (=> b!4729470 d!1508554))

(declare-fun d!1508556 () Bool)

(declare-fun res!2002696 () Bool)

(declare-fun e!2950677 () Bool)

(assert (=> d!1508556 (=> res!2002696 e!2950677)))

(assert (=> d!1508556 (= res!2002696 (and ((_ is Cons!52878) (t!360278 (toList!5954 lt!1892771))) (= (_1!30555 (h!59237 (t!360278 (toList!5954 lt!1892771)))) (_1!30555 (h!59237 (toList!5954 lt!1892771))))))))

(assert (=> d!1508556 (= (containsKey!3406 (t!360278 (toList!5954 lt!1892771)) (_1!30555 (h!59237 (toList!5954 lt!1892771)))) e!2950677)))

(declare-fun b!4730612 () Bool)

(declare-fun e!2950678 () Bool)

(assert (=> b!4730612 (= e!2950677 e!2950678)))

(declare-fun res!2002697 () Bool)

(assert (=> b!4730612 (=> (not res!2002697) (not e!2950678))))

(assert (=> b!4730612 (= res!2002697 ((_ is Cons!52878) (t!360278 (toList!5954 lt!1892771))))))

(declare-fun b!4730613 () Bool)

(assert (=> b!4730613 (= e!2950678 (containsKey!3406 (t!360278 (t!360278 (toList!5954 lt!1892771))) (_1!30555 (h!59237 (toList!5954 lt!1892771)))))))

(assert (= (and d!1508556 (not res!2002696)) b!4730612))

(assert (= (and b!4730612 res!2002697) b!4730613))

(declare-fun m!5672893 () Bool)

(assert (=> b!4730613 m!5672893))

(assert (=> b!4729390 d!1508556))

(declare-fun d!1508558 () Bool)

(declare-fun lt!1893922 () Bool)

(assert (=> d!1508558 (= lt!1893922 (select (content!9422 (getKeysList!963 (t!360278 (toList!5954 lt!1892771)))) (_1!30555 (h!59237 (toList!5954 lt!1892771)))))))

(declare-fun e!2950680 () Bool)

(assert (=> d!1508558 (= lt!1893922 e!2950680)))

(declare-fun res!2002699 () Bool)

(assert (=> d!1508558 (=> (not res!2002699) (not e!2950680))))

(assert (=> d!1508558 (= res!2002699 ((_ is Cons!52881) (getKeysList!963 (t!360278 (toList!5954 lt!1892771)))))))

(assert (=> d!1508558 (= (contains!16243 (getKeysList!963 (t!360278 (toList!5954 lt!1892771))) (_1!30555 (h!59237 (toList!5954 lt!1892771)))) lt!1893922)))

(declare-fun b!4730614 () Bool)

(declare-fun e!2950679 () Bool)

(assert (=> b!4730614 (= e!2950680 e!2950679)))

(declare-fun res!2002698 () Bool)

(assert (=> b!4730614 (=> res!2002698 e!2950679)))

(assert (=> b!4730614 (= res!2002698 (= (h!59242 (getKeysList!963 (t!360278 (toList!5954 lt!1892771)))) (_1!30555 (h!59237 (toList!5954 lt!1892771)))))))

(declare-fun b!4730615 () Bool)

(assert (=> b!4730615 (= e!2950679 (contains!16243 (t!360281 (getKeysList!963 (t!360278 (toList!5954 lt!1892771)))) (_1!30555 (h!59237 (toList!5954 lt!1892771)))))))

(assert (= (and d!1508558 res!2002699) b!4730614))

(assert (= (and b!4730614 (not res!2002698)) b!4730615))

(assert (=> d!1508558 m!5670259))

(declare-fun m!5672895 () Bool)

(assert (=> d!1508558 m!5672895))

(declare-fun m!5672897 () Bool)

(assert (=> d!1508558 m!5672897))

(declare-fun m!5672899 () Bool)

(assert (=> b!4730615 m!5672899))

(assert (=> b!4729390 d!1508558))

(declare-fun d!1508560 () Bool)

(declare-fun res!2002700 () Bool)

(declare-fun e!2950681 () Bool)

(assert (=> d!1508560 (=> res!2002700 e!2950681)))

(assert (=> d!1508560 (= res!2002700 ((_ is Nil!52881) lt!1893270))))

(assert (=> d!1508560 (= (forall!11629 lt!1893270 lambda!216924) e!2950681)))

(declare-fun b!4730616 () Bool)

(declare-fun e!2950682 () Bool)

(assert (=> b!4730616 (= e!2950681 e!2950682)))

(declare-fun res!2002701 () Bool)

(assert (=> b!4730616 (=> (not res!2002701) (not e!2950682))))

(assert (=> b!4730616 (= res!2002701 (dynLambda!21844 lambda!216924 (h!59242 lt!1893270)))))

(declare-fun b!4730617 () Bool)

(assert (=> b!4730617 (= e!2950682 (forall!11629 (t!360281 lt!1893270) lambda!216924))))

(assert (= (and d!1508560 (not res!2002700)) b!4730616))

(assert (= (and b!4730616 res!2002701) b!4730617))

(declare-fun b_lambda!180427 () Bool)

(assert (=> (not b_lambda!180427) (not b!4730616)))

(declare-fun m!5672901 () Bool)

(assert (=> b!4730616 m!5672901))

(declare-fun m!5672903 () Bool)

(assert (=> b!4730617 m!5672903))

(assert (=> b!4729390 d!1508560))

(assert (=> b!4729390 d!1507962))

(declare-fun bs!1120159 () Bool)

(declare-fun d!1508562 () Bool)

(assert (= bs!1120159 (and d!1508562 b!4730402)))

(declare-fun lambda!217036 () Int)

(assert (=> bs!1120159 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771))) (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051)))) (= lambda!217036 lambda!217028))))

(declare-fun bs!1120160 () Bool)

(assert (= bs!1120160 (and d!1508562 b!4730406)))

(assert (=> bs!1120160 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771))) (t!360278 (toList!5954 lt!1893051))) (= lambda!217036 lambda!217027))))

(declare-fun bs!1120161 () Bool)

(assert (= bs!1120161 (and d!1508562 b!4730128)))

(assert (=> bs!1120161 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (= lambda!217036 lambda!217009))))

(declare-fun bs!1120162 () Bool)

(assert (= bs!1120162 (and d!1508562 b!4729446)))

(assert (=> bs!1120162 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771))) (toList!5954 lt!1892771)) (= lambda!217036 lambda!216931))))

(declare-fun bs!1120163 () Bool)

(assert (= bs!1120163 (and d!1508562 b!4729391)))

(assert (=> bs!1120163 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771))) (toList!5954 lt!1892771)) (= lambda!217036 lambda!216925))))

(declare-fun bs!1120164 () Bool)

(assert (= bs!1120164 (and d!1508562 b!4730125)))

(assert (=> bs!1120164 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771))) (t!360278 (toList!5954 lt!1892771))) (= lambda!217036 lambda!217011))))

(declare-fun bs!1120165 () Bool)

(assert (= bs!1120165 (and d!1508562 b!4730403)))

(assert (=> bs!1120165 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771))) (toList!5954 lt!1893051)) (= lambda!217036 lambda!217029))))

(declare-fun bs!1120166 () Bool)

(assert (= bs!1120166 (and d!1508562 b!4730053)))

(assert (=> bs!1120166 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771))) (toList!5954 lt!1893051)) (= lambda!217036 lambda!216997))))

(declare-fun bs!1120167 () Bool)

(assert (= bs!1120167 (and d!1508562 b!4729894)))

(assert (=> bs!1120167 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771))) (toList!5954 lt!1893054)) (= lambda!217036 lambda!216984))))

(declare-fun bs!1120168 () Bool)

(assert (= bs!1120168 (and d!1508562 b!4730124)))

(assert (=> bs!1120168 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771))) (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771))))) (= lambda!217036 lambda!217010))))

(declare-fun bs!1120169 () Bool)

(assert (= bs!1120169 (and d!1508562 b!4730098)))

(assert (=> bs!1120169 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771))) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= lambda!217036 lambda!217004))))

(declare-fun bs!1120170 () Bool)

(assert (= bs!1120170 (and d!1508562 b!4729394)))

(assert (=> bs!1120170 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771))) (t!360278 (toList!5954 lt!1892771))) (= lambda!217036 lambda!216923))))

(declare-fun bs!1120171 () Bool)

(assert (= bs!1120171 (and d!1508562 b!4729390)))

(assert (=> bs!1120171 (= lambda!217036 lambda!216924)))

(assert (=> d!1508562 true))

(assert (=> d!1508562 true))

(assert (=> d!1508562 (forall!11629 lt!1893270 lambda!217036)))

(declare-fun lt!1893925 () Unit!131227)

(declare-fun choose!33450 (List!53002 List!53005 tuple2!54522) Unit!131227)

(assert (=> d!1508562 (= lt!1893925 (choose!33450 (t!360278 (toList!5954 lt!1892771)) lt!1893270 (h!59237 (toList!5954 lt!1892771))))))

(assert (=> d!1508562 (invariantList!1523 (t!360278 (toList!5954 lt!1892771)))))

(assert (=> d!1508562 (= (lemmaForallContainsAddHeadPreserves!287 (t!360278 (toList!5954 lt!1892771)) lt!1893270 (h!59237 (toList!5954 lt!1892771))) lt!1893925)))

(declare-fun bs!1120172 () Bool)

(assert (= bs!1120172 d!1508562))

(declare-fun m!5672905 () Bool)

(assert (=> bs!1120172 m!5672905))

(declare-fun m!5672907 () Bool)

(assert (=> bs!1120172 m!5672907))

(assert (=> bs!1120172 m!5671851))

(assert (=> b!4729390 d!1508562))

(assert (=> d!1507480 d!1507482))

(assert (=> d!1507480 d!1507484))

(declare-fun d!1508564 () Bool)

(assert (=> d!1508564 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1892771) key!4653))))

(assert (=> d!1508564 true))

(declare-fun _$29!746 () Unit!131227)

(assert (=> d!1508564 (= (choose!33443 (toList!5954 lt!1892771) key!4653) _$29!746)))

(declare-fun bs!1120173 () Bool)

(assert (= bs!1120173 d!1508564))

(assert (=> bs!1120173 m!5669545))

(assert (=> bs!1120173 m!5669545))

(assert (=> bs!1120173 m!5669547))

(assert (=> d!1507480 d!1508564))

(assert (=> d!1507480 d!1508426))

(declare-fun d!1508566 () Bool)

(declare-fun res!2002702 () Bool)

(declare-fun e!2950683 () Bool)

(assert (=> d!1508566 (=> res!2002702 e!2950683)))

(assert (=> d!1508566 (= res!2002702 ((_ is Nil!52878) (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> d!1508566 (= (forall!11627 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) lambda!216873) e!2950683)))

(declare-fun b!4730620 () Bool)

(declare-fun e!2950684 () Bool)

(assert (=> b!4730620 (= e!2950683 e!2950684)))

(declare-fun res!2002703 () Bool)

(assert (=> b!4730620 (=> (not res!2002703) (not e!2950684))))

(assert (=> b!4730620 (= res!2002703 (dynLambda!21841 lambda!216873 (h!59237 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun b!4730621 () Bool)

(assert (=> b!4730621 (= e!2950684 (forall!11627 (t!360278 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) lambda!216873))))

(assert (= (and d!1508566 (not res!2002702)) b!4730620))

(assert (= (and b!4730620 res!2002703) b!4730621))

(declare-fun b_lambda!180429 () Bool)

(assert (=> (not b_lambda!180429) (not b!4730620)))

(declare-fun m!5672909 () Bool)

(assert (=> b!4730620 m!5672909))

(declare-fun m!5672911 () Bool)

(assert (=> b!4730621 m!5672911))

(assert (=> b!4729493 d!1508566))

(declare-fun d!1508568 () Bool)

(assert (=> d!1508568 (dynLambda!21839 lambda!216819 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))))))

(assert (=> d!1508568 true))

(declare-fun _$7!2263 () Unit!131227)

(assert (=> d!1508568 (= (choose!33428 (toList!5953 lm!2023) lambda!216819 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))) _$7!2263)))

(declare-fun b_lambda!180431 () Bool)

(assert (=> (not b_lambda!180431) (not d!1508568)))

(declare-fun bs!1120174 () Bool)

(assert (= bs!1120174 d!1508568))

(assert (=> bs!1120174 m!5670379))

(assert (=> d!1507414 d!1508568))

(assert (=> d!1507414 d!1507506))

(assert (=> d!1507356 d!1507346))

(assert (=> d!1507356 d!1507348))

(declare-fun d!1508570 () Bool)

(assert (=> d!1508570 (isDefined!9645 (getValueByKey!1977 (toList!5953 lm!2023) lt!1892762))))

(assert (=> d!1508570 true))

(declare-fun _$13!1609 () Unit!131227)

(assert (=> d!1508570 (= (choose!33437 (toList!5953 lm!2023) lt!1892762) _$13!1609)))

(declare-fun bs!1120175 () Bool)

(assert (= bs!1120175 d!1508570))

(assert (=> bs!1120175 m!5669385))

(assert (=> bs!1120175 m!5669385))

(assert (=> bs!1120175 m!5669509))

(assert (=> d!1507356 d!1508570))

(assert (=> d!1507356 d!1507512))

(declare-fun d!1508572 () Bool)

(assert (=> d!1508572 (= (isEmpty!29195 lt!1893284) (not ((_ is Some!12387) lt!1893284)))))

(assert (=> d!1507402 d!1508572))

(assert (=> d!1507402 d!1508444))

(assert (=> d!1507372 d!1507370))

(declare-fun d!1508574 () Bool)

(assert (=> d!1508574 (containsKey!3406 (toList!5954 lt!1892771) key!4653)))

(assert (=> d!1508574 true))

(declare-fun _$15!837 () Unit!131227)

(assert (=> d!1508574 (= (choose!33439 (toList!5954 lt!1892771) key!4653) _$15!837)))

(declare-fun bs!1120176 () Bool)

(assert (= bs!1120176 d!1508574))

(assert (=> bs!1120176 m!5669539))

(assert (=> d!1507372 d!1508574))

(assert (=> d!1507372 d!1508426))

(assert (=> bs!1119041 d!1507444))

(declare-fun d!1508576 () Bool)

(assert (=> d!1508576 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893926 () Unit!131227)

(assert (=> d!1508576 (= lt!1893926 (choose!33443 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1508576 (invariantList!1523 (toList!5954 lt!1893051))))

(assert (=> d!1508576 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893926)))

(declare-fun bs!1120177 () Bool)

(assert (= bs!1120177 d!1508576))

(assert (=> bs!1120177 m!5670511))

(assert (=> bs!1120177 m!5670511))

(assert (=> bs!1120177 m!5670513))

(declare-fun m!5672913 () Bool)

(assert (=> bs!1120177 m!5672913))

(assert (=> bs!1120177 m!5672527))

(assert (=> b!4729520 d!1508576))

(assert (=> b!4729520 d!1507956))

(assert (=> b!4729520 d!1507958))

(declare-fun d!1508578 () Bool)

(assert (=> d!1508578 (contains!16243 (getKeysList!963 (toList!5954 lt!1893051)) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(declare-fun lt!1893927 () Unit!131227)

(assert (=> d!1508578 (= lt!1893927 (choose!33444 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1508578 (invariantList!1523 (toList!5954 lt!1893051))))

(assert (=> d!1508578 (= (lemmaInListThenGetKeysListContains!958 (toList!5954 lt!1893051) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893927)))

(declare-fun bs!1120178 () Bool)

(assert (= bs!1120178 d!1508578))

(assert (=> bs!1120178 m!5670503))

(assert (=> bs!1120178 m!5670503))

(declare-fun m!5672915 () Bool)

(assert (=> bs!1120178 m!5672915))

(declare-fun m!5672917 () Bool)

(assert (=> bs!1120178 m!5672917))

(assert (=> bs!1120178 m!5672527))

(assert (=> b!4729520 d!1508578))

(assert (=> b!4729491 d!1507842))

(declare-fun d!1508580 () Bool)

(declare-fun res!2002704 () Bool)

(declare-fun e!2950685 () Bool)

(assert (=> d!1508580 (=> res!2002704 e!2950685)))

(assert (=> d!1508580 (= res!2002704 ((_ is Nil!52879) (t!360279 (toList!5953 lm!2023))))))

(assert (=> d!1508580 (= (forall!11625 (t!360279 (toList!5953 lm!2023)) lambda!216835) e!2950685)))

(declare-fun b!4730622 () Bool)

(declare-fun e!2950686 () Bool)

(assert (=> b!4730622 (= e!2950685 e!2950686)))

(declare-fun res!2002705 () Bool)

(assert (=> b!4730622 (=> (not res!2002705) (not e!2950686))))

(assert (=> b!4730622 (= res!2002705 (dynLambda!21839 lambda!216835 (h!59238 (t!360279 (toList!5953 lm!2023)))))))

(declare-fun b!4730623 () Bool)

(assert (=> b!4730623 (= e!2950686 (forall!11625 (t!360279 (t!360279 (toList!5953 lm!2023))) lambda!216835))))

(assert (= (and d!1508580 (not res!2002704)) b!4730622))

(assert (= (and b!4730622 res!2002705) b!4730623))

(declare-fun b_lambda!180433 () Bool)

(assert (=> (not b_lambda!180433) (not b!4730622)))

(declare-fun m!5672919 () Bool)

(assert (=> b!4730622 m!5672919))

(declare-fun m!5672921 () Bool)

(assert (=> b!4730623 m!5672921))

(assert (=> b!4729575 d!1508580))

(declare-fun d!1508582 () Bool)

(declare-fun res!2002706 () Bool)

(declare-fun e!2950687 () Bool)

(assert (=> d!1508582 (=> res!2002706 e!2950687)))

(assert (=> d!1508582 (= res!2002706 ((_ is Nil!52879) (t!360279 (toList!5953 (ListLongMap!4484 lt!1892767)))))))

(assert (=> d!1508582 (= (forall!11625 (t!360279 (toList!5953 (ListLongMap!4484 lt!1892767))) lambda!216836) e!2950687)))

(declare-fun b!4730624 () Bool)

(declare-fun e!2950688 () Bool)

(assert (=> b!4730624 (= e!2950687 e!2950688)))

(declare-fun res!2002707 () Bool)

(assert (=> b!4730624 (=> (not res!2002707) (not e!2950688))))

(assert (=> b!4730624 (= res!2002707 (dynLambda!21839 lambda!216836 (h!59238 (t!360279 (toList!5953 (ListLongMap!4484 lt!1892767))))))))

(declare-fun b!4730625 () Bool)

(assert (=> b!4730625 (= e!2950688 (forall!11625 (t!360279 (t!360279 (toList!5953 (ListLongMap!4484 lt!1892767)))) lambda!216836))))

(assert (= (and d!1508582 (not res!2002706)) b!4730624))

(assert (= (and b!4730624 res!2002707) b!4730625))

(declare-fun b_lambda!180435 () Bool)

(assert (=> (not b_lambda!180435) (not b!4730624)))

(declare-fun m!5672923 () Bool)

(assert (=> b!4730624 m!5672923))

(declare-fun m!5672925 () Bool)

(assert (=> b!4730625 m!5672925))

(assert (=> b!4729434 d!1508582))

(assert (=> d!1507444 d!1508410))

(declare-fun d!1508584 () Bool)

(declare-fun res!2002708 () Bool)

(declare-fun e!2950689 () Bool)

(assert (=> d!1508584 (=> res!2002708 e!2950689)))

(assert (=> d!1508584 (= res!2002708 (or ((_ is Nil!52878) (toList!5954 lt!1893070)) ((_ is Nil!52878) (t!360278 (toList!5954 lt!1893070)))))))

(assert (=> d!1508584 (= (noDuplicatedKeys!383 (toList!5954 lt!1893070)) e!2950689)))

(declare-fun b!4730626 () Bool)

(declare-fun e!2950690 () Bool)

(assert (=> b!4730626 (= e!2950689 e!2950690)))

(declare-fun res!2002709 () Bool)

(assert (=> b!4730626 (=> (not res!2002709) (not e!2950690))))

(assert (=> b!4730626 (= res!2002709 (not (containsKey!3406 (t!360278 (toList!5954 lt!1893070)) (_1!30555 (h!59237 (toList!5954 lt!1893070))))))))

(declare-fun b!4730627 () Bool)

(assert (=> b!4730627 (= e!2950690 (noDuplicatedKeys!383 (t!360278 (toList!5954 lt!1893070))))))

(assert (= (and d!1508584 (not res!2002708)) b!4730626))

(assert (= (and b!4730626 res!2002709) b!4730627))

(declare-fun m!5672927 () Bool)

(assert (=> b!4730626 m!5672927))

(declare-fun m!5672929 () Bool)

(assert (=> b!4730627 m!5672929))

(assert (=> d!1507468 d!1508584))

(declare-fun d!1508586 () Bool)

(assert (=> d!1508586 (= (isEmpty!29198 (getValueByKey!1977 (toList!5953 lm!2023) lt!1892762)) (not ((_ is Some!12390) (getValueByKey!1977 (toList!5953 lm!2023) lt!1892762))))))

(assert (=> d!1507346 d!1508586))

(declare-fun d!1508588 () Bool)

(declare-fun res!2002710 () Bool)

(declare-fun e!2950691 () Bool)

(assert (=> d!1508588 (=> res!2002710 e!2950691)))

(assert (=> d!1508588 (= res!2002710 ((_ is Nil!52878) (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> d!1508588 (= (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) lambda!216941) e!2950691)))

(declare-fun b!4730628 () Bool)

(declare-fun e!2950692 () Bool)

(assert (=> b!4730628 (= e!2950691 e!2950692)))

(declare-fun res!2002711 () Bool)

(assert (=> b!4730628 (=> (not res!2002711) (not e!2950692))))

(assert (=> b!4730628 (= res!2002711 (dynLambda!21841 lambda!216941 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))

(declare-fun b!4730629 () Bool)

(assert (=> b!4730629 (= e!2950692 (forall!11627 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))) lambda!216941))))

(assert (= (and d!1508588 (not res!2002710)) b!4730628))

(assert (= (and b!4730628 res!2002711) b!4730629))

(declare-fun b_lambda!180437 () Bool)

(assert (=> (not b_lambda!180437) (not b!4730628)))

(declare-fun m!5672931 () Bool)

(assert (=> b!4730628 m!5672931))

(declare-fun m!5672933 () Bool)

(assert (=> b!4730629 m!5672933))

(assert (=> d!1507456 d!1508588))

(declare-fun bs!1120179 () Bool)

(declare-fun d!1508590 () Bool)

(assert (= bs!1120179 (and d!1508590 d!1507090)))

(declare-fun lambda!217039 () Int)

(assert (=> bs!1120179 (= (= lt!1893054 lt!1893065) (= lambda!217039 lambda!216874))))

(declare-fun bs!1120180 () Bool)

(assert (= bs!1120180 (and d!1508590 d!1507798)))

(assert (=> bs!1120180 (= (= lt!1893054 lt!1893564) (= lambda!217039 lambda!216992))))

(declare-fun bs!1120181 () Bool)

(assert (= bs!1120181 (and d!1508590 d!1507074)))

(assert (=> bs!1120181 (not (= lambda!217039 lambda!216840))))

(declare-fun bs!1120182 () Bool)

(assert (= bs!1120182 (and d!1508590 b!4729490)))

(assert (=> bs!1120182 (= (= lt!1893054 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217039 lambda!216933))))

(declare-fun bs!1120183 () Bool)

(assert (= bs!1120183 (and d!1508590 d!1508550)))

(assert (=> bs!1120183 (= (= lt!1893054 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217039 lambda!217033))))

(declare-fun bs!1120184 () Bool)

(assert (= bs!1120184 (and d!1508590 b!4729915)))

(assert (=> bs!1120184 (= (= lt!1893054 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217039 lambda!216988))))

(declare-fun bs!1120185 () Bool)

(assert (= bs!1120185 (and d!1508590 b!4730355)))

(assert (=> bs!1120185 (= (= lt!1893054 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217039 lambda!217023))))

(declare-fun bs!1120186 () Bool)

(assert (= bs!1120186 (and d!1508590 d!1508104)))

(assert (=> bs!1120186 (= (= lt!1893054 lt!1893828) (= lambda!217039 lambda!217025))))

(declare-fun bs!1120187 () Bool)

(assert (= bs!1120187 (and d!1508590 b!4729530)))

(assert (=> bs!1120187 (= (= lt!1893054 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217039 lambda!216943))))

(declare-fun bs!1120188 () Bool)

(assert (= bs!1120188 (and d!1508590 d!1507466)))

(assert (=> bs!1120188 (= (= lt!1893054 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217039 lambda!216949))))

(declare-fun bs!1120189 () Bool)

(assert (= bs!1120189 (and d!1508590 b!4729039)))

(assert (=> bs!1120189 (= (= lt!1893054 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217039 lambda!216871))))

(declare-fun bs!1120190 () Bool)

(assert (= bs!1120190 (and d!1508590 b!4729036)))

(assert (=> bs!1120190 (= lambda!217039 lambda!216873)))

(declare-fun bs!1120191 () Bool)

(assert (= bs!1120191 (and d!1508590 d!1507116)))

(assert (=> bs!1120191 (not (= lambda!217039 lambda!216876))))

(assert (=> bs!1120187 (= (= lt!1893054 lt!1893357) (= lambda!217039 lambda!216944))))

(declare-fun bs!1120192 () Bool)

(assert (= bs!1120192 (and d!1508590 b!4730358)))

(assert (=> bs!1120192 (= (= lt!1893054 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217039 lambda!217022))))

(declare-fun bs!1120193 () Bool)

(assert (= bs!1120193 (and d!1508590 d!1507436)))

(assert (=> bs!1120193 (= (= lt!1893054 lt!1893313) (= lambda!217039 lambda!216936))))

(declare-fun bs!1120194 () Bool)

(assert (= bs!1120194 (and d!1508590 b!4729487)))

(assert (=> bs!1120194 (= (= lt!1893054 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217039 lambda!216934))))

(declare-fun bs!1120195 () Bool)

(assert (= bs!1120195 (and d!1508590 d!1508462)))

(assert (=> bs!1120195 (not (= lambda!217039 lambda!217031))))

(assert (=> bs!1120190 (= (= lt!1893054 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217039 lambda!216872))))

(declare-fun bs!1120196 () Bool)

(assert (= bs!1120196 (and d!1508590 d!1508518)))

(assert (=> bs!1120196 (= (= lt!1893054 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217039 lambda!217032))))

(declare-fun bs!1120197 () Bool)

(assert (= bs!1120197 (and d!1508590 d!1507456)))

(assert (=> bs!1120197 (= lambda!217039 lambda!216941)))

(declare-fun bs!1120198 () Bool)

(assert (= bs!1120198 (and d!1508590 d!1507458)))

(assert (=> bs!1120198 (= (= lt!1893054 lt!1893368) (= lambda!217039 lambda!216945))))

(assert (=> bs!1120185 (= (= lt!1893054 lt!1893817) (= lambda!217039 lambda!217024))))

(declare-fun bs!1120199 () Bool)

(assert (= bs!1120199 (and d!1508590 d!1508216)))

(assert (=> bs!1120199 (= (= lt!1893054 lt!1893357) (= lambda!217039 lambda!217026))))

(declare-fun bs!1120200 () Bool)

(assert (= bs!1120200 (and d!1508590 b!4729533)))

(assert (=> bs!1120200 (= (= lt!1893054 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217039 lambda!216942))))

(declare-fun bs!1120201 () Bool)

(assert (= bs!1120201 (and d!1508590 d!1507922)))

(assert (=> bs!1120201 (= (= lt!1893054 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217039 lambda!217002))))

(declare-fun bs!1120202 () Bool)

(assert (= bs!1120202 (and d!1508590 b!4729912)))

(assert (=> bs!1120202 (= (= lt!1893054 lt!1893553) (= lambda!217039 lambda!216990))))

(assert (=> bs!1120194 (= (= lt!1893054 lt!1893302) (= lambda!217039 lambda!216935))))

(declare-fun bs!1120203 () Bool)

(assert (= bs!1120203 (and d!1508590 d!1507900)))

(assert (=> bs!1120203 (not (= lambda!217039 lambda!216996))))

(declare-fun bs!1120204 () Bool)

(assert (= bs!1120204 (and d!1508590 d!1507846)))

(assert (=> bs!1120204 (= (= lt!1893054 lt!1893302) (= lambda!217039 lambda!216993))))

(assert (=> bs!1120202 (= (= lt!1893054 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217039 lambda!216989))))

(assert (=> d!1508590 true))

(assert (=> d!1508590 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) lambda!217039)))

(assert (=> d!1508590 true))

(declare-fun _$61!503 () Unit!131227)

(assert (=> d!1508590 (= (choose!33441 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) lt!1893054 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) _$61!503)))

(declare-fun bs!1120205 () Bool)

(assert (= bs!1120205 d!1508590))

(declare-fun m!5672935 () Bool)

(assert (=> bs!1120205 m!5672935))

(assert (=> d!1507456 d!1508590))

(declare-fun d!1508592 () Bool)

(declare-fun res!2002712 () Bool)

(declare-fun e!2950693 () Bool)

(assert (=> d!1508592 (=> res!2002712 e!2950693)))

(assert (=> d!1508592 (= res!2002712 ((_ is Nil!52878) (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))))

(assert (=> d!1508592 (= (forall!11627 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))) lambda!216941) e!2950693)))

(declare-fun b!4730631 () Bool)

(declare-fun e!2950694 () Bool)

(assert (=> b!4730631 (= e!2950693 e!2950694)))

(declare-fun res!2002713 () Bool)

(assert (=> b!4730631 (=> (not res!2002713) (not e!2950694))))

(assert (=> b!4730631 (= res!2002713 (dynLambda!21841 lambda!216941 (h!59237 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))))

(declare-fun b!4730632 () Bool)

(assert (=> b!4730632 (= e!2950694 (forall!11627 (t!360278 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))) lambda!216941))))

(assert (= (and d!1508592 (not res!2002712)) b!4730631))

(assert (= (and b!4730631 res!2002713) b!4730632))

(declare-fun b_lambda!180439 () Bool)

(assert (=> (not b_lambda!180439) (not b!4730631)))

(declare-fun m!5672937 () Bool)

(assert (=> b!4730631 m!5672937))

(declare-fun m!5672939 () Bool)

(assert (=> b!4730632 m!5672939))

(assert (=> d!1507456 d!1508592))

(declare-fun d!1508594 () Bool)

(declare-fun e!2950695 () Bool)

(assert (=> d!1508594 e!2950695))

(declare-fun res!2002714 () Bool)

(assert (=> d!1508594 (=> (not res!2002714) (not e!2950695))))

(declare-fun lt!1893931 () ListMap!5317)

(assert (=> d!1508594 (= res!2002714 (contains!16239 lt!1893931 (_1!30555 (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun lt!1893930 () List!53002)

(assert (=> d!1508594 (= lt!1893931 (ListMap!5318 lt!1893930))))

(declare-fun lt!1893929 () Unit!131227)

(declare-fun lt!1893928 () Unit!131227)

(assert (=> d!1508594 (= lt!1893929 lt!1893928)))

(assert (=> d!1508594 (= (getValueByKey!1978 lt!1893930 (_1!30555 (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))) (Some!12391 (_2!30555 (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(assert (=> d!1508594 (= lt!1893928 (lemmaContainsTupThenGetReturnValue!1096 lt!1893930 (_1!30555 (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (_2!30555 (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(assert (=> d!1508594 (= lt!1893930 (insertNoDuplicatedKeys!604 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (_2!30555 (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(assert (=> d!1508594 (= (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) lt!1893931)))

(declare-fun b!4730633 () Bool)

(declare-fun res!2002715 () Bool)

(assert (=> b!4730633 (=> (not res!2002715) (not e!2950695))))

(assert (=> b!4730633 (= res!2002715 (= (getValueByKey!1978 (toList!5954 lt!1893931) (_1!30555 (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))) (Some!12391 (_2!30555 (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))))

(declare-fun b!4730634 () Bool)

(assert (=> b!4730634 (= e!2950695 (contains!16242 (toList!5954 lt!1893931) (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (= (and d!1508594 res!2002714) b!4730633))

(assert (= (and b!4730633 res!2002715) b!4730634))

(declare-fun m!5672941 () Bool)

(assert (=> d!1508594 m!5672941))

(declare-fun m!5672943 () Bool)

(assert (=> d!1508594 m!5672943))

(declare-fun m!5672945 () Bool)

(assert (=> d!1508594 m!5672945))

(declare-fun m!5672947 () Bool)

(assert (=> d!1508594 m!5672947))

(declare-fun m!5672949 () Bool)

(assert (=> b!4730633 m!5672949))

(declare-fun m!5672951 () Bool)

(assert (=> b!4730634 m!5672951))

(assert (=> d!1507456 d!1508594))

(assert (=> b!4729524 d!1507910))

(assert (=> b!4729524 d!1507912))

(declare-fun d!1508596 () Bool)

(declare-fun res!2002716 () Bool)

(declare-fun e!2950696 () Bool)

(assert (=> d!1508596 (=> res!2002716 e!2950696)))

(assert (=> d!1508596 (= res!2002716 (and ((_ is Cons!52879) (toList!5953 lm!2023)) (= (_1!30556 (h!59238 (toList!5953 lm!2023))) (hash!4413 hashF!1323 key!4653))))))

(assert (=> d!1508596 (= (containsKey!3405 (toList!5953 lm!2023) (hash!4413 hashF!1323 key!4653)) e!2950696)))

(declare-fun b!4730635 () Bool)

(declare-fun e!2950697 () Bool)

(assert (=> b!4730635 (= e!2950696 e!2950697)))

(declare-fun res!2002717 () Bool)

(assert (=> b!4730635 (=> (not res!2002717) (not e!2950697))))

(assert (=> b!4730635 (= res!2002717 (and (or (not ((_ is Cons!52879) (toList!5953 lm!2023))) (bvsle (_1!30556 (h!59238 (toList!5953 lm!2023))) (hash!4413 hashF!1323 key!4653))) ((_ is Cons!52879) (toList!5953 lm!2023)) (bvslt (_1!30556 (h!59238 (toList!5953 lm!2023))) (hash!4413 hashF!1323 key!4653))))))

(declare-fun b!4730636 () Bool)

(assert (=> b!4730636 (= e!2950697 (containsKey!3405 (t!360279 (toList!5953 lm!2023)) (hash!4413 hashF!1323 key!4653)))))

(assert (= (and d!1508596 (not res!2002716)) b!4730635))

(assert (= (and b!4730635 res!2002717) b!4730636))

(assert (=> b!4730636 m!5669311))

(declare-fun m!5672953 () Bool)

(assert (=> b!4730636 m!5672953))

(assert (=> d!1507404 d!1508596))

(declare-fun bs!1120206 () Bool)

(declare-fun b!4730641 () Bool)

(assert (= bs!1120206 (and b!4730641 b!4730402)))

(declare-fun lambda!217040 () Int)

(assert (=> bs!1120206 (= (= (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051)))) (= lambda!217040 lambda!217028))))

(declare-fun bs!1120207 () Bool)

(assert (= bs!1120207 (and b!4730641 b!4730406)))

(assert (=> bs!1120207 (= (= (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 lt!1893051))) (= lambda!217040 lambda!217027))))

(declare-fun bs!1120208 () Bool)

(assert (= bs!1120208 (and b!4730641 b!4730128)))

(assert (=> bs!1120208 (= (= (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (= lambda!217040 lambda!217009))))

(declare-fun bs!1120209 () Bool)

(assert (= bs!1120209 (and b!4730641 b!4729446)))

(assert (=> bs!1120209 (= (= (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (toList!5954 lt!1892771)) (= lambda!217040 lambda!216931))))

(declare-fun bs!1120210 () Bool)

(assert (= bs!1120210 (and b!4730641 d!1508562)))

(assert (=> bs!1120210 (= (= (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217040 lambda!217036))))

(declare-fun bs!1120211 () Bool)

(assert (= bs!1120211 (and b!4730641 b!4729391)))

(assert (=> bs!1120211 (= (= (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (toList!5954 lt!1892771)) (= lambda!217040 lambda!216925))))

(declare-fun bs!1120212 () Bool)

(assert (= bs!1120212 (and b!4730641 b!4730125)))

(assert (=> bs!1120212 (= (= (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 lt!1892771))) (= lambda!217040 lambda!217011))))

(declare-fun bs!1120213 () Bool)

(assert (= bs!1120213 (and b!4730641 b!4730403)))

(assert (=> bs!1120213 (= (= (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (toList!5954 lt!1893051)) (= lambda!217040 lambda!217029))))

(declare-fun bs!1120214 () Bool)

(assert (= bs!1120214 (and b!4730641 b!4730053)))

(assert (=> bs!1120214 (= (= (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (toList!5954 lt!1893051)) (= lambda!217040 lambda!216997))))

(declare-fun bs!1120215 () Bool)

(assert (= bs!1120215 (and b!4730641 b!4729894)))

(assert (=> bs!1120215 (= (= (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (toList!5954 lt!1893054)) (= lambda!217040 lambda!216984))))

(declare-fun bs!1120216 () Bool)

(assert (= bs!1120216 (and b!4730641 b!4730124)))

(assert (=> bs!1120216 (= (= (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771))))) (= lambda!217040 lambda!217010))))

(declare-fun bs!1120217 () Bool)

(assert (= bs!1120217 (and b!4730641 b!4730098)))

(assert (=> bs!1120217 (= (= (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= lambda!217040 lambda!217004))))

(declare-fun bs!1120218 () Bool)

(assert (= bs!1120218 (and b!4730641 b!4729394)))

(assert (=> bs!1120218 (= (= (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 lt!1892771))) (= lambda!217040 lambda!216923))))

(declare-fun bs!1120219 () Bool)

(assert (= bs!1120219 (and b!4730641 b!4729390)))

(assert (=> bs!1120219 (= (= (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217040 lambda!216924))))

(assert (=> b!4730641 true))

(declare-fun bs!1120220 () Bool)

(declare-fun b!4730637 () Bool)

(assert (= bs!1120220 (and b!4730637 b!4730402)))

(declare-fun lambda!217041 () Int)

(assert (=> bs!1120220 (= (= (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051)))) (= lambda!217041 lambda!217028))))

(declare-fun bs!1120221 () Bool)

(assert (= bs!1120221 (and b!4730637 b!4730406)))

(assert (=> bs!1120221 (= (= (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (t!360278 (toList!5954 lt!1893051))) (= lambda!217041 lambda!217027))))

(declare-fun bs!1120222 () Bool)

(assert (= bs!1120222 (and b!4730637 b!4730128)))

(assert (=> bs!1120222 (= (= (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (= lambda!217041 lambda!217009))))

(declare-fun bs!1120223 () Bool)

(assert (= bs!1120223 (and b!4730637 b!4730641)))

(assert (=> bs!1120223 (= (= (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (= lambda!217041 lambda!217040))))

(declare-fun bs!1120224 () Bool)

(assert (= bs!1120224 (and b!4730637 b!4729446)))

(assert (=> bs!1120224 (= (= (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (toList!5954 lt!1892771)) (= lambda!217041 lambda!216931))))

(declare-fun bs!1120225 () Bool)

(assert (= bs!1120225 (and b!4730637 d!1508562)))

(assert (=> bs!1120225 (= (= (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217041 lambda!217036))))

(declare-fun bs!1120226 () Bool)

(assert (= bs!1120226 (and b!4730637 b!4729391)))

(assert (=> bs!1120226 (= (= (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (toList!5954 lt!1892771)) (= lambda!217041 lambda!216925))))

(declare-fun bs!1120227 () Bool)

(assert (= bs!1120227 (and b!4730637 b!4730125)))

(assert (=> bs!1120227 (= (= (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (t!360278 (toList!5954 lt!1892771))) (= lambda!217041 lambda!217011))))

(declare-fun bs!1120228 () Bool)

(assert (= bs!1120228 (and b!4730637 b!4730403)))

(assert (=> bs!1120228 (= (= (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (toList!5954 lt!1893051)) (= lambda!217041 lambda!217029))))

(declare-fun bs!1120229 () Bool)

(assert (= bs!1120229 (and b!4730637 b!4730053)))

(assert (=> bs!1120229 (= (= (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (toList!5954 lt!1893051)) (= lambda!217041 lambda!216997))))

(declare-fun bs!1120230 () Bool)

(assert (= bs!1120230 (and b!4730637 b!4729894)))

(assert (=> bs!1120230 (= (= (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (toList!5954 lt!1893054)) (= lambda!217041 lambda!216984))))

(declare-fun bs!1120231 () Bool)

(assert (= bs!1120231 (and b!4730637 b!4730124)))

(assert (=> bs!1120231 (= (= (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771))))) (= lambda!217041 lambda!217010))))

(declare-fun bs!1120232 () Bool)

(assert (= bs!1120232 (and b!4730637 b!4730098)))

(assert (=> bs!1120232 (= (= (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= lambda!217041 lambda!217004))))

(declare-fun bs!1120233 () Bool)

(assert (= bs!1120233 (and b!4730637 b!4729394)))

(assert (=> bs!1120233 (= (= (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (t!360278 (toList!5954 lt!1892771))) (= lambda!217041 lambda!216923))))

(declare-fun bs!1120234 () Bool)

(assert (= bs!1120234 (and b!4730637 b!4729390)))

(assert (=> bs!1120234 (= (= (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217041 lambda!216924))))

(assert (=> b!4730637 true))

(declare-fun bs!1120235 () Bool)

(declare-fun b!4730638 () Bool)

(assert (= bs!1120235 (and b!4730638 b!4730402)))

(declare-fun lambda!217042 () Int)

(assert (=> bs!1120235 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051)))) (= lambda!217042 lambda!217028))))

(declare-fun bs!1120236 () Bool)

(assert (= bs!1120236 (and b!4730638 b!4730406)))

(assert (=> bs!1120236 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (t!360278 (toList!5954 lt!1893051))) (= lambda!217042 lambda!217027))))

(declare-fun bs!1120237 () Bool)

(assert (= bs!1120237 (and b!4730638 b!4730128)))

(assert (=> bs!1120237 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (= lambda!217042 lambda!217009))))

(declare-fun bs!1120238 () Bool)

(assert (= bs!1120238 (and b!4730638 b!4730641)))

(assert (=> bs!1120238 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (= lambda!217042 lambda!217040))))

(declare-fun bs!1120239 () Bool)

(assert (= bs!1120239 (and b!4730638 b!4729446)))

(assert (=> bs!1120239 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (toList!5954 lt!1892771)) (= lambda!217042 lambda!216931))))

(declare-fun bs!1120240 () Bool)

(assert (= bs!1120240 (and b!4730638 d!1508562)))

(assert (=> bs!1120240 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217042 lambda!217036))))

(declare-fun bs!1120241 () Bool)

(assert (= bs!1120241 (and b!4730638 b!4730637)))

(assert (=> bs!1120241 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))))) (= lambda!217042 lambda!217041))))

(declare-fun bs!1120242 () Bool)

(assert (= bs!1120242 (and b!4730638 b!4729391)))

(assert (=> bs!1120242 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (toList!5954 lt!1892771)) (= lambda!217042 lambda!216925))))

(declare-fun bs!1120243 () Bool)

(assert (= bs!1120243 (and b!4730638 b!4730125)))

(assert (=> bs!1120243 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (t!360278 (toList!5954 lt!1892771))) (= lambda!217042 lambda!217011))))

(declare-fun bs!1120244 () Bool)

(assert (= bs!1120244 (and b!4730638 b!4730403)))

(assert (=> bs!1120244 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (toList!5954 lt!1893051)) (= lambda!217042 lambda!217029))))

(declare-fun bs!1120245 () Bool)

(assert (= bs!1120245 (and b!4730638 b!4730053)))

(assert (=> bs!1120245 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (toList!5954 lt!1893051)) (= lambda!217042 lambda!216997))))

(declare-fun bs!1120246 () Bool)

(assert (= bs!1120246 (and b!4730638 b!4729894)))

(assert (=> bs!1120246 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (toList!5954 lt!1893054)) (= lambda!217042 lambda!216984))))

(declare-fun bs!1120247 () Bool)

(assert (= bs!1120247 (and b!4730638 b!4730124)))

(assert (=> bs!1120247 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771))))) (= lambda!217042 lambda!217010))))

(declare-fun bs!1120248 () Bool)

(assert (= bs!1120248 (and b!4730638 b!4730098)))

(assert (=> bs!1120248 (= lambda!217042 lambda!217004)))

(declare-fun bs!1120249 () Bool)

(assert (= bs!1120249 (and b!4730638 b!4729394)))

(assert (=> bs!1120249 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (t!360278 (toList!5954 lt!1892771))) (= lambda!217042 lambda!216923))))

(declare-fun bs!1120250 () Bool)

(assert (= bs!1120250 (and b!4730638 b!4729390)))

(assert (=> bs!1120250 (= (= (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217042 lambda!216924))))

(assert (=> b!4730638 true))

(declare-fun bs!1120251 () Bool)

(declare-fun b!4730644 () Bool)

(assert (= bs!1120251 (and b!4730644 b!4729447)))

(declare-fun lambda!217043 () Int)

(assert (=> bs!1120251 (= lambda!217043 lambda!216932)))

(declare-fun bs!1120252 () Bool)

(assert (= bs!1120252 (and b!4730644 b!4730409)))

(assert (=> bs!1120252 (= lambda!217043 lambda!217030)))

(declare-fun bs!1120253 () Bool)

(assert (= bs!1120253 (and b!4730644 b!4730054)))

(assert (=> bs!1120253 (= lambda!217043 lambda!216998)))

(declare-fun bs!1120254 () Bool)

(assert (= bs!1120254 (and b!4730644 b!4729397)))

(assert (=> bs!1120254 (= lambda!217043 lambda!216926)))

(declare-fun bs!1120255 () Bool)

(assert (= bs!1120255 (and b!4730644 b!4729895)))

(assert (=> bs!1120255 (= lambda!217043 lambda!216985)))

(declare-fun bs!1120256 () Bool)

(assert (= bs!1120256 (and b!4730644 b!4730099)))

(assert (=> bs!1120256 (= lambda!217043 lambda!217005)))

(declare-fun bs!1120257 () Bool)

(assert (= bs!1120257 (and b!4730644 b!4730131)))

(assert (=> bs!1120257 (= lambda!217043 lambda!217012)))

(declare-fun e!2950701 () List!53005)

(assert (=> b!4730637 (= e!2950701 (Cons!52881 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (getKeysList!963 (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))))))))

(declare-fun c!807919 () Bool)

(assert (=> b!4730637 (= c!807919 (containsKey!3406 (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893934 () Unit!131227)

(declare-fun e!2950700 () Unit!131227)

(assert (=> b!4730637 (= lt!1893934 e!2950700)))

(declare-fun c!807920 () Bool)

(assert (=> b!4730637 (= c!807920 (contains!16243 (getKeysList!963 (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893938 () Unit!131227)

(declare-fun e!2950698 () Unit!131227)

(assert (=> b!4730637 (= lt!1893938 e!2950698)))

(declare-fun lt!1893936 () List!53005)

(assert (=> b!4730637 (= lt!1893936 (getKeysList!963 (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))))))

(declare-fun lt!1893937 () Unit!131227)

(assert (=> b!4730637 (= lt!1893937 (lemmaForallContainsAddHeadPreserves!287 (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) lt!1893936 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))))))

(assert (=> b!4730637 (forall!11629 lt!1893936 lambda!217041)))

(declare-fun lt!1893932 () Unit!131227)

(assert (=> b!4730637 (= lt!1893932 lt!1893937)))

(declare-fun res!2002719 () Bool)

(declare-fun e!2950699 () Bool)

(assert (=> b!4730638 (=> (not res!2002719) (not e!2950699))))

(declare-fun lt!1893933 () List!53005)

(assert (=> b!4730638 (= res!2002719 (forall!11629 lt!1893933 lambda!217042))))

(declare-fun d!1508598 () Bool)

(assert (=> d!1508598 e!2950699))

(declare-fun res!2002720 () Bool)

(assert (=> d!1508598 (=> (not res!2002720) (not e!2950699))))

(assert (=> d!1508598 (= res!2002720 (noDuplicate!869 lt!1893933))))

(assert (=> d!1508598 (= lt!1893933 e!2950701)))

(declare-fun c!807921 () Bool)

(assert (=> d!1508598 (= c!807921 ((_ is Cons!52878) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))))))

(assert (=> d!1508598 (invariantList!1523 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))))

(assert (=> d!1508598 (= (getKeysList!963 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) lt!1893933)))

(declare-fun b!4730639 () Bool)

(assert (=> b!4730639 false))

(declare-fun Unit!131450 () Unit!131227)

(assert (=> b!4730639 (= e!2950700 Unit!131450)))

(declare-fun b!4730640 () Bool)

(declare-fun Unit!131451 () Unit!131227)

(assert (=> b!4730640 (= e!2950700 Unit!131451)))

(assert (=> b!4730641 false))

(declare-fun lt!1893935 () Unit!131227)

(assert (=> b!4730641 (= lt!1893935 (forallContained!3669 (getKeysList!963 (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) lambda!217040 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))))))))

(declare-fun Unit!131452 () Unit!131227)

(assert (=> b!4730641 (= e!2950698 Unit!131452)))

(declare-fun b!4730642 () Bool)

(declare-fun Unit!131453 () Unit!131227)

(assert (=> b!4730642 (= e!2950698 Unit!131453)))

(declare-fun b!4730643 () Bool)

(assert (=> b!4730643 (= e!2950701 Nil!52881)))

(assert (=> b!4730644 (= e!2950699 (= (content!9422 lt!1893933) (content!9422 (map!11698 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))) lambda!217043))))))

(declare-fun b!4730645 () Bool)

(declare-fun res!2002718 () Bool)

(assert (=> b!4730645 (=> (not res!2002718) (not e!2950699))))

(assert (=> b!4730645 (= res!2002718 (= (length!594 lt!1893933) (length!595 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))))))

(assert (= (and d!1508598 c!807921) b!4730637))

(assert (= (and d!1508598 (not c!807921)) b!4730643))

(assert (= (and b!4730637 c!807919) b!4730639))

(assert (= (and b!4730637 (not c!807919)) b!4730640))

(assert (= (and b!4730637 c!807920) b!4730641))

(assert (= (and b!4730637 (not c!807920)) b!4730642))

(assert (= (and d!1508598 res!2002720) b!4730645))

(assert (= (and b!4730645 res!2002718) b!4730638))

(assert (= (and b!4730638 res!2002719) b!4730644))

(declare-fun m!5672955 () Bool)

(assert (=> b!4730641 m!5672955))

(assert (=> b!4730641 m!5672955))

(declare-fun m!5672957 () Bool)

(assert (=> b!4730641 m!5672957))

(assert (=> b!4730637 m!5672955))

(declare-fun m!5672959 () Bool)

(assert (=> b!4730637 m!5672959))

(declare-fun m!5672961 () Bool)

(assert (=> b!4730637 m!5672961))

(declare-fun m!5672963 () Bool)

(assert (=> b!4730637 m!5672963))

(declare-fun m!5672965 () Bool)

(assert (=> b!4730637 m!5672965))

(assert (=> b!4730637 m!5672955))

(declare-fun m!5672967 () Bool)

(assert (=> b!4730645 m!5672967))

(assert (=> b!4730645 m!5671743))

(declare-fun m!5672969 () Bool)

(assert (=> d!1508598 m!5672969))

(assert (=> d!1508598 m!5672551))

(declare-fun m!5672971 () Bool)

(assert (=> b!4730644 m!5672971))

(declare-fun m!5672973 () Bool)

(assert (=> b!4730644 m!5672973))

(assert (=> b!4730644 m!5672973))

(declare-fun m!5672975 () Bool)

(assert (=> b!4730644 m!5672975))

(declare-fun m!5672977 () Bool)

(assert (=> b!4730638 m!5672977))

(assert (=> b!4729358 d!1508598))

(declare-fun d!1508600 () Bool)

(declare-fun res!2002721 () Bool)

(declare-fun e!2950702 () Bool)

(assert (=> d!1508600 (=> res!2002721 e!2950702)))

(assert (=> d!1508600 (= res!2002721 ((_ is Nil!52879) (t!360279 (toList!5953 lm!2023))))))

(assert (=> d!1508600 (= (forall!11625 (t!360279 (toList!5953 lm!2023)) lambda!216825) e!2950702)))

(declare-fun b!4730646 () Bool)

(declare-fun e!2950703 () Bool)

(assert (=> b!4730646 (= e!2950702 e!2950703)))

(declare-fun res!2002722 () Bool)

(assert (=> b!4730646 (=> (not res!2002722) (not e!2950703))))

(assert (=> b!4730646 (= res!2002722 (dynLambda!21839 lambda!216825 (h!59238 (t!360279 (toList!5953 lm!2023)))))))

(declare-fun b!4730647 () Bool)

(assert (=> b!4730647 (= e!2950703 (forall!11625 (t!360279 (t!360279 (toList!5953 lm!2023))) lambda!216825))))

(assert (= (and d!1508600 (not res!2002721)) b!4730646))

(assert (= (and b!4730646 res!2002722) b!4730647))

(declare-fun b_lambda!180441 () Bool)

(assert (=> (not b_lambda!180441) (not b!4730646)))

(declare-fun m!5672979 () Bool)

(assert (=> b!4730646 m!5672979))

(declare-fun m!5672981 () Bool)

(assert (=> b!4730647 m!5672981))

(assert (=> b!4729466 d!1508600))

(declare-fun d!1508602 () Bool)

(declare-fun res!2002723 () Bool)

(declare-fun e!2950704 () Bool)

(assert (=> d!1508602 (=> res!2002723 e!2950704)))

(assert (=> d!1508602 (= res!2002723 (not ((_ is Cons!52878) (t!360278 (_2!30556 lt!1892769)))))))

(assert (=> d!1508602 (= (noDuplicateKeys!2032 (t!360278 (_2!30556 lt!1892769))) e!2950704)))

(declare-fun b!4730648 () Bool)

(declare-fun e!2950705 () Bool)

(assert (=> b!4730648 (= e!2950704 e!2950705)))

(declare-fun res!2002724 () Bool)

(assert (=> b!4730648 (=> (not res!2002724) (not e!2950705))))

(assert (=> b!4730648 (= res!2002724 (not (containsKey!3402 (t!360278 (t!360278 (_2!30556 lt!1892769))) (_1!30555 (h!59237 (t!360278 (_2!30556 lt!1892769)))))))))

(declare-fun b!4730649 () Bool)

(assert (=> b!4730649 (= e!2950705 (noDuplicateKeys!2032 (t!360278 (t!360278 (_2!30556 lt!1892769)))))))

(assert (= (and d!1508602 (not res!2002723)) b!4730648))

(assert (= (and b!4730648 res!2002724) b!4730649))

(declare-fun m!5672983 () Bool)

(assert (=> b!4730648 m!5672983))

(declare-fun m!5672985 () Bool)

(assert (=> b!4730649 m!5672985))

(assert (=> b!4729544 d!1508602))

(declare-fun bs!1120258 () Bool)

(declare-fun b!4730653 () Bool)

(assert (= bs!1120258 (and b!4730653 d!1507090)))

(declare-fun lambda!217044 () Int)

(assert (=> bs!1120258 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893065) (= lambda!217044 lambda!216874))))

(declare-fun bs!1120259 () Bool)

(assert (= bs!1120259 (and b!4730653 d!1507074)))

(assert (=> bs!1120259 (not (= lambda!217044 lambda!216840))))

(declare-fun bs!1120260 () Bool)

(assert (= bs!1120260 (and b!4730653 b!4729490)))

(assert (=> bs!1120260 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217044 lambda!216933))))

(declare-fun bs!1120261 () Bool)

(assert (= bs!1120261 (and b!4730653 d!1508550)))

(assert (=> bs!1120261 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217044 lambda!217033))))

(declare-fun bs!1120262 () Bool)

(assert (= bs!1120262 (and b!4730653 b!4729915)))

(assert (=> bs!1120262 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217044 lambda!216988))))

(declare-fun bs!1120263 () Bool)

(assert (= bs!1120263 (and b!4730653 b!4730355)))

(assert (=> bs!1120263 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217044 lambda!217023))))

(declare-fun bs!1120264 () Bool)

(assert (= bs!1120264 (and b!4730653 d!1508104)))

(assert (=> bs!1120264 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893828) (= lambda!217044 lambda!217025))))

(declare-fun bs!1120265 () Bool)

(assert (= bs!1120265 (and b!4730653 b!4729530)))

(assert (=> bs!1120265 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217044 lambda!216943))))

(declare-fun bs!1120266 () Bool)

(assert (= bs!1120266 (and b!4730653 d!1507466)))

(assert (=> bs!1120266 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217044 lambda!216949))))

(declare-fun bs!1120267 () Bool)

(assert (= bs!1120267 (and b!4730653 b!4729039)))

(assert (=> bs!1120267 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217044 lambda!216871))))

(declare-fun bs!1120268 () Bool)

(assert (= bs!1120268 (and b!4730653 b!4729036)))

(assert (=> bs!1120268 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893054) (= lambda!217044 lambda!216873))))

(declare-fun bs!1120269 () Bool)

(assert (= bs!1120269 (and b!4730653 d!1507116)))

(assert (=> bs!1120269 (not (= lambda!217044 lambda!216876))))

(assert (=> bs!1120265 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893357) (= lambda!217044 lambda!216944))))

(declare-fun bs!1120270 () Bool)

(assert (= bs!1120270 (and b!4730653 b!4730358)))

(assert (=> bs!1120270 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217044 lambda!217022))))

(declare-fun bs!1120271 () Bool)

(assert (= bs!1120271 (and b!4730653 d!1507436)))

(assert (=> bs!1120271 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893313) (= lambda!217044 lambda!216936))))

(declare-fun bs!1120272 () Bool)

(assert (= bs!1120272 (and b!4730653 d!1508590)))

(assert (=> bs!1120272 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893054) (= lambda!217044 lambda!217039))))

(declare-fun bs!1120273 () Bool)

(assert (= bs!1120273 (and b!4730653 d!1507798)))

(assert (=> bs!1120273 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893564) (= lambda!217044 lambda!216992))))

(declare-fun bs!1120274 () Bool)

(assert (= bs!1120274 (and b!4730653 b!4729487)))

(assert (=> bs!1120274 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217044 lambda!216934))))

(declare-fun bs!1120275 () Bool)

(assert (= bs!1120275 (and b!4730653 d!1508462)))

(assert (=> bs!1120275 (not (= lambda!217044 lambda!217031))))

(assert (=> bs!1120268 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217044 lambda!216872))))

(declare-fun bs!1120276 () Bool)

(assert (= bs!1120276 (and b!4730653 d!1508518)))

(assert (=> bs!1120276 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217044 lambda!217032))))

(declare-fun bs!1120277 () Bool)

(assert (= bs!1120277 (and b!4730653 d!1507456)))

(assert (=> bs!1120277 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893054) (= lambda!217044 lambda!216941))))

(declare-fun bs!1120278 () Bool)

(assert (= bs!1120278 (and b!4730653 d!1507458)))

(assert (=> bs!1120278 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893368) (= lambda!217044 lambda!216945))))

(assert (=> bs!1120263 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893817) (= lambda!217044 lambda!217024))))

(declare-fun bs!1120279 () Bool)

(assert (= bs!1120279 (and b!4730653 d!1508216)))

(assert (=> bs!1120279 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893357) (= lambda!217044 lambda!217026))))

(declare-fun bs!1120280 () Bool)

(assert (= bs!1120280 (and b!4730653 b!4729533)))

(assert (=> bs!1120280 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217044 lambda!216942))))

(declare-fun bs!1120281 () Bool)

(assert (= bs!1120281 (and b!4730653 d!1507922)))

(assert (=> bs!1120281 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217044 lambda!217002))))

(declare-fun bs!1120282 () Bool)

(assert (= bs!1120282 (and b!4730653 b!4729912)))

(assert (=> bs!1120282 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893553) (= lambda!217044 lambda!216990))))

(assert (=> bs!1120274 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893302) (= lambda!217044 lambda!216935))))

(declare-fun bs!1120283 () Bool)

(assert (= bs!1120283 (and b!4730653 d!1507900)))

(assert (=> bs!1120283 (not (= lambda!217044 lambda!216996))))

(declare-fun bs!1120284 () Bool)

(assert (= bs!1120284 (and b!4730653 d!1507846)))

(assert (=> bs!1120284 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893302) (= lambda!217044 lambda!216993))))

(assert (=> bs!1120282 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217044 lambda!216989))))

(assert (=> b!4730653 true))

(declare-fun bs!1120285 () Bool)

(declare-fun b!4730650 () Bool)

(assert (= bs!1120285 (and b!4730650 d!1507090)))

(declare-fun lambda!217045 () Int)

(assert (=> bs!1120285 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893065) (= lambda!217045 lambda!216874))))

(declare-fun bs!1120286 () Bool)

(assert (= bs!1120286 (and b!4730650 d!1507074)))

(assert (=> bs!1120286 (not (= lambda!217045 lambda!216840))))

(declare-fun bs!1120287 () Bool)

(assert (= bs!1120287 (and b!4730650 b!4729490)))

(assert (=> bs!1120287 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217045 lambda!216933))))

(declare-fun bs!1120288 () Bool)

(assert (= bs!1120288 (and b!4730650 b!4730653)))

(assert (=> bs!1120288 (= lambda!217045 lambda!217044)))

(declare-fun bs!1120289 () Bool)

(assert (= bs!1120289 (and b!4730650 d!1508550)))

(assert (=> bs!1120289 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217045 lambda!217033))))

(declare-fun bs!1120290 () Bool)

(assert (= bs!1120290 (and b!4730650 b!4729915)))

(assert (=> bs!1120290 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217045 lambda!216988))))

(declare-fun bs!1120291 () Bool)

(assert (= bs!1120291 (and b!4730650 b!4730355)))

(assert (=> bs!1120291 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217045 lambda!217023))))

(declare-fun bs!1120292 () Bool)

(assert (= bs!1120292 (and b!4730650 d!1508104)))

(assert (=> bs!1120292 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893828) (= lambda!217045 lambda!217025))))

(declare-fun bs!1120293 () Bool)

(assert (= bs!1120293 (and b!4730650 b!4729530)))

(assert (=> bs!1120293 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217045 lambda!216943))))

(declare-fun bs!1120294 () Bool)

(assert (= bs!1120294 (and b!4730650 d!1507466)))

(assert (=> bs!1120294 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217045 lambda!216949))))

(declare-fun bs!1120295 () Bool)

(assert (= bs!1120295 (and b!4730650 b!4729039)))

(assert (=> bs!1120295 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217045 lambda!216871))))

(declare-fun bs!1120296 () Bool)

(assert (= bs!1120296 (and b!4730650 b!4729036)))

(assert (=> bs!1120296 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893054) (= lambda!217045 lambda!216873))))

(declare-fun bs!1120297 () Bool)

(assert (= bs!1120297 (and b!4730650 d!1507116)))

(assert (=> bs!1120297 (not (= lambda!217045 lambda!216876))))

(assert (=> bs!1120293 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893357) (= lambda!217045 lambda!216944))))

(declare-fun bs!1120298 () Bool)

(assert (= bs!1120298 (and b!4730650 b!4730358)))

(assert (=> bs!1120298 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217045 lambda!217022))))

(declare-fun bs!1120299 () Bool)

(assert (= bs!1120299 (and b!4730650 d!1507436)))

(assert (=> bs!1120299 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893313) (= lambda!217045 lambda!216936))))

(declare-fun bs!1120300 () Bool)

(assert (= bs!1120300 (and b!4730650 d!1508590)))

(assert (=> bs!1120300 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893054) (= lambda!217045 lambda!217039))))

(declare-fun bs!1120301 () Bool)

(assert (= bs!1120301 (and b!4730650 d!1507798)))

(assert (=> bs!1120301 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893564) (= lambda!217045 lambda!216992))))

(declare-fun bs!1120302 () Bool)

(assert (= bs!1120302 (and b!4730650 b!4729487)))

(assert (=> bs!1120302 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217045 lambda!216934))))

(declare-fun bs!1120303 () Bool)

(assert (= bs!1120303 (and b!4730650 d!1508462)))

(assert (=> bs!1120303 (not (= lambda!217045 lambda!217031))))

(assert (=> bs!1120296 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217045 lambda!216872))))

(declare-fun bs!1120304 () Bool)

(assert (= bs!1120304 (and b!4730650 d!1508518)))

(assert (=> bs!1120304 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217045 lambda!217032))))

(declare-fun bs!1120305 () Bool)

(assert (= bs!1120305 (and b!4730650 d!1507456)))

(assert (=> bs!1120305 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893054) (= lambda!217045 lambda!216941))))

(declare-fun bs!1120306 () Bool)

(assert (= bs!1120306 (and b!4730650 d!1507458)))

(assert (=> bs!1120306 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893368) (= lambda!217045 lambda!216945))))

(assert (=> bs!1120291 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893817) (= lambda!217045 lambda!217024))))

(declare-fun bs!1120307 () Bool)

(assert (= bs!1120307 (and b!4730650 d!1508216)))

(assert (=> bs!1120307 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893357) (= lambda!217045 lambda!217026))))

(declare-fun bs!1120308 () Bool)

(assert (= bs!1120308 (and b!4730650 b!4729533)))

(assert (=> bs!1120308 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217045 lambda!216942))))

(declare-fun bs!1120309 () Bool)

(assert (= bs!1120309 (and b!4730650 d!1507922)))

(assert (=> bs!1120309 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217045 lambda!217002))))

(declare-fun bs!1120310 () Bool)

(assert (= bs!1120310 (and b!4730650 b!4729912)))

(assert (=> bs!1120310 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893553) (= lambda!217045 lambda!216990))))

(assert (=> bs!1120302 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893302) (= lambda!217045 lambda!216935))))

(declare-fun bs!1120311 () Bool)

(assert (= bs!1120311 (and b!4730650 d!1507900)))

(assert (=> bs!1120311 (not (= lambda!217045 lambda!216996))))

(declare-fun bs!1120312 () Bool)

(assert (= bs!1120312 (and b!4730650 d!1507846)))

(assert (=> bs!1120312 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893302) (= lambda!217045 lambda!216993))))

(assert (=> bs!1120310 (= (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217045 lambda!216989))))

(assert (=> b!4730650 true))

(declare-fun lt!1893944 () ListMap!5317)

(declare-fun lambda!217046 () Int)

(assert (=> bs!1120285 (= (= lt!1893944 lt!1893065) (= lambda!217046 lambda!216874))))

(assert (=> b!4730650 (= (= lt!1893944 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))))) (= lambda!217046 lambda!217045))))

(assert (=> bs!1120286 (not (= lambda!217046 lambda!216840))))

(assert (=> bs!1120287 (= (= lt!1893944 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217046 lambda!216933))))

(assert (=> bs!1120288 (= (= lt!1893944 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))))) (= lambda!217046 lambda!217044))))

(assert (=> bs!1120289 (= (= lt!1893944 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217046 lambda!217033))))

(assert (=> bs!1120290 (= (= lt!1893944 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217046 lambda!216988))))

(assert (=> bs!1120291 (= (= lt!1893944 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217046 lambda!217023))))

(assert (=> bs!1120292 (= (= lt!1893944 lt!1893828) (= lambda!217046 lambda!217025))))

(assert (=> bs!1120293 (= (= lt!1893944 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217046 lambda!216943))))

(assert (=> bs!1120294 (= (= lt!1893944 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217046 lambda!216949))))

(assert (=> bs!1120295 (= (= lt!1893944 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217046 lambda!216871))))

(assert (=> bs!1120296 (= (= lt!1893944 lt!1893054) (= lambda!217046 lambda!216873))))

(assert (=> bs!1120297 (not (= lambda!217046 lambda!216876))))

(assert (=> bs!1120293 (= (= lt!1893944 lt!1893357) (= lambda!217046 lambda!216944))))

(assert (=> bs!1120298 (= (= lt!1893944 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217046 lambda!217022))))

(assert (=> bs!1120299 (= (= lt!1893944 lt!1893313) (= lambda!217046 lambda!216936))))

(assert (=> bs!1120300 (= (= lt!1893944 lt!1893054) (= lambda!217046 lambda!217039))))

(assert (=> bs!1120301 (= (= lt!1893944 lt!1893564) (= lambda!217046 lambda!216992))))

(assert (=> bs!1120302 (= (= lt!1893944 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217046 lambda!216934))))

(assert (=> bs!1120303 (not (= lambda!217046 lambda!217031))))

(assert (=> bs!1120296 (= (= lt!1893944 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217046 lambda!216872))))

(assert (=> bs!1120304 (= (= lt!1893944 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217046 lambda!217032))))

(assert (=> bs!1120305 (= (= lt!1893944 lt!1893054) (= lambda!217046 lambda!216941))))

(assert (=> bs!1120306 (= (= lt!1893944 lt!1893368) (= lambda!217046 lambda!216945))))

(assert (=> bs!1120291 (= (= lt!1893944 lt!1893817) (= lambda!217046 lambda!217024))))

(assert (=> bs!1120307 (= (= lt!1893944 lt!1893357) (= lambda!217046 lambda!217026))))

(assert (=> bs!1120308 (= (= lt!1893944 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217046 lambda!216942))))

(assert (=> bs!1120309 (= (= lt!1893944 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217046 lambda!217002))))

(assert (=> bs!1120310 (= (= lt!1893944 lt!1893553) (= lambda!217046 lambda!216990))))

(assert (=> bs!1120302 (= (= lt!1893944 lt!1893302) (= lambda!217046 lambda!216935))))

(assert (=> bs!1120311 (not (= lambda!217046 lambda!216996))))

(assert (=> bs!1120312 (= (= lt!1893944 lt!1893302) (= lambda!217046 lambda!216993))))

(assert (=> bs!1120310 (= (= lt!1893944 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217046 lambda!216989))))

(assert (=> b!4730650 true))

(declare-fun bs!1120313 () Bool)

(declare-fun d!1508604 () Bool)

(assert (= bs!1120313 (and d!1508604 d!1507090)))

(declare-fun lt!1893955 () ListMap!5317)

(declare-fun lambda!217047 () Int)

(assert (=> bs!1120313 (= (= lt!1893955 lt!1893065) (= lambda!217047 lambda!216874))))

(declare-fun bs!1120314 () Bool)

(assert (= bs!1120314 (and d!1508604 b!4730650)))

(assert (=> bs!1120314 (= (= lt!1893955 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))))) (= lambda!217047 lambda!217045))))

(declare-fun bs!1120315 () Bool)

(assert (= bs!1120315 (and d!1508604 d!1507074)))

(assert (=> bs!1120315 (not (= lambda!217047 lambda!216840))))

(declare-fun bs!1120316 () Bool)

(assert (= bs!1120316 (and d!1508604 b!4729490)))

(assert (=> bs!1120316 (= (= lt!1893955 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217047 lambda!216933))))

(declare-fun bs!1120317 () Bool)

(assert (= bs!1120317 (and d!1508604 b!4730653)))

(assert (=> bs!1120317 (= (= lt!1893955 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))))) (= lambda!217047 lambda!217044))))

(declare-fun bs!1120318 () Bool)

(assert (= bs!1120318 (and d!1508604 d!1508550)))

(assert (=> bs!1120318 (= (= lt!1893955 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217047 lambda!217033))))

(declare-fun bs!1120319 () Bool)

(assert (= bs!1120319 (and d!1508604 b!4729915)))

(assert (=> bs!1120319 (= (= lt!1893955 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217047 lambda!216988))))

(declare-fun bs!1120320 () Bool)

(assert (= bs!1120320 (and d!1508604 b!4730355)))

(assert (=> bs!1120320 (= (= lt!1893955 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217047 lambda!217023))))

(declare-fun bs!1120321 () Bool)

(assert (= bs!1120321 (and d!1508604 b!4729530)))

(assert (=> bs!1120321 (= (= lt!1893955 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217047 lambda!216943))))

(declare-fun bs!1120322 () Bool)

(assert (= bs!1120322 (and d!1508604 d!1507466)))

(assert (=> bs!1120322 (= (= lt!1893955 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217047 lambda!216949))))

(declare-fun bs!1120323 () Bool)

(assert (= bs!1120323 (and d!1508604 b!4729039)))

(assert (=> bs!1120323 (= (= lt!1893955 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217047 lambda!216871))))

(declare-fun bs!1120324 () Bool)

(assert (= bs!1120324 (and d!1508604 b!4729036)))

(assert (=> bs!1120324 (= (= lt!1893955 lt!1893054) (= lambda!217047 lambda!216873))))

(declare-fun bs!1120325 () Bool)

(assert (= bs!1120325 (and d!1508604 d!1507116)))

(assert (=> bs!1120325 (not (= lambda!217047 lambda!216876))))

(assert (=> bs!1120321 (= (= lt!1893955 lt!1893357) (= lambda!217047 lambda!216944))))

(declare-fun bs!1120326 () Bool)

(assert (= bs!1120326 (and d!1508604 b!4730358)))

(assert (=> bs!1120326 (= (= lt!1893955 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (= lambda!217047 lambda!217022))))

(declare-fun bs!1120327 () Bool)

(assert (= bs!1120327 (and d!1508604 d!1507436)))

(assert (=> bs!1120327 (= (= lt!1893955 lt!1893313) (= lambda!217047 lambda!216936))))

(declare-fun bs!1120328 () Bool)

(assert (= bs!1120328 (and d!1508604 d!1508590)))

(assert (=> bs!1120328 (= (= lt!1893955 lt!1893054) (= lambda!217047 lambda!217039))))

(declare-fun bs!1120329 () Bool)

(assert (= bs!1120329 (and d!1508604 d!1507798)))

(assert (=> bs!1120329 (= (= lt!1893955 lt!1893564) (= lambda!217047 lambda!216992))))

(declare-fun bs!1120330 () Bool)

(assert (= bs!1120330 (and d!1508604 b!4729487)))

(assert (=> bs!1120330 (= (= lt!1893955 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217047 lambda!216934))))

(declare-fun bs!1120331 () Bool)

(assert (= bs!1120331 (and d!1508604 d!1508462)))

(assert (=> bs!1120331 (not (= lambda!217047 lambda!217031))))

(assert (=> bs!1120324 (= (= lt!1893955 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217047 lambda!216872))))

(declare-fun bs!1120332 () Bool)

(assert (= bs!1120332 (and d!1508604 d!1508518)))

(assert (=> bs!1120332 (= (= lt!1893955 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= lambda!217047 lambda!217032))))

(declare-fun bs!1120333 () Bool)

(assert (= bs!1120333 (and d!1508604 d!1507456)))

(assert (=> bs!1120333 (= (= lt!1893955 lt!1893054) (= lambda!217047 lambda!216941))))

(declare-fun bs!1120334 () Bool)

(assert (= bs!1120334 (and d!1508604 d!1508104)))

(assert (=> bs!1120334 (= (= lt!1893955 lt!1893828) (= lambda!217047 lambda!217025))))

(assert (=> bs!1120314 (= (= lt!1893955 lt!1893944) (= lambda!217047 lambda!217046))))

(declare-fun bs!1120335 () Bool)

(assert (= bs!1120335 (and d!1508604 d!1507458)))

(assert (=> bs!1120335 (= (= lt!1893955 lt!1893368) (= lambda!217047 lambda!216945))))

(assert (=> bs!1120320 (= (= lt!1893955 lt!1893817) (= lambda!217047 lambda!217024))))

(declare-fun bs!1120336 () Bool)

(assert (= bs!1120336 (and d!1508604 d!1508216)))

(assert (=> bs!1120336 (= (= lt!1893955 lt!1893357) (= lambda!217047 lambda!217026))))

(declare-fun bs!1120337 () Bool)

(assert (= bs!1120337 (and d!1508604 b!4729533)))

(assert (=> bs!1120337 (= (= lt!1893955 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))) (= lambda!217047 lambda!216942))))

(declare-fun bs!1120338 () Bool)

(assert (= bs!1120338 (and d!1508604 d!1507922)))

(assert (=> bs!1120338 (= (= lt!1893955 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (= lambda!217047 lambda!217002))))

(declare-fun bs!1120339 () Bool)

(assert (= bs!1120339 (and d!1508604 b!4729912)))

(assert (=> bs!1120339 (= (= lt!1893955 lt!1893553) (= lambda!217047 lambda!216990))))

(assert (=> bs!1120330 (= (= lt!1893955 lt!1893302) (= lambda!217047 lambda!216935))))

(declare-fun bs!1120340 () Bool)

(assert (= bs!1120340 (and d!1508604 d!1507900)))

(assert (=> bs!1120340 (not (= lambda!217047 lambda!216996))))

(declare-fun bs!1120341 () Bool)

(assert (= bs!1120341 (and d!1508604 d!1507846)))

(assert (=> bs!1120341 (= (= lt!1893955 lt!1893302) (= lambda!217047 lambda!216993))))

(assert (=> bs!1120339 (= (= lt!1893955 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (= lambda!217047 lambda!216989))))

(assert (=> d!1508604 true))

(declare-fun bm!330879 () Bool)

(declare-fun call!330885 () Unit!131227)

(assert (=> bm!330879 (= call!330885 (lemmaContainsAllItsOwnKeys!808 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))))))))

(declare-fun e!2950707 () ListMap!5317)

(assert (=> b!4730650 (= e!2950707 lt!1893944)))

(declare-fun lt!1893941 () ListMap!5317)

(assert (=> b!4730650 (= lt!1893941 (+!2280 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (h!59237 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> b!4730650 (= lt!1893944 (addToMapMapFromBucket!1462 (t!360278 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023)))))) (+!2280 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (h!59237 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023)))))))))))

(declare-fun lt!1893948 () Unit!131227)

(assert (=> b!4730650 (= lt!1893948 call!330885)))

(assert (=> b!4730650 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))))) lambda!217045)))

(declare-fun lt!1893943 () Unit!131227)

(assert (=> b!4730650 (= lt!1893943 lt!1893948)))

(assert (=> b!4730650 (forall!11627 (toList!5954 lt!1893941) lambda!217046)))

(declare-fun lt!1893957 () Unit!131227)

(declare-fun Unit!131454 () Unit!131227)

(assert (=> b!4730650 (= lt!1893957 Unit!131454)))

(assert (=> b!4730650 (forall!11627 (t!360278 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023)))))) lambda!217046)))

(declare-fun lt!1893954 () Unit!131227)

(declare-fun Unit!131455 () Unit!131227)

(assert (=> b!4730650 (= lt!1893954 Unit!131455)))

(declare-fun lt!1893952 () Unit!131227)

(declare-fun Unit!131456 () Unit!131227)

(assert (=> b!4730650 (= lt!1893952 Unit!131456)))

(declare-fun lt!1893940 () Unit!131227)

(assert (=> b!4730650 (= lt!1893940 (forallContained!3667 (toList!5954 lt!1893941) lambda!217046 (h!59237 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> b!4730650 (contains!16239 lt!1893941 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893956 () Unit!131227)

(declare-fun Unit!131457 () Unit!131227)

(assert (=> b!4730650 (= lt!1893956 Unit!131457)))

(assert (=> b!4730650 (contains!16239 lt!1893944 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun lt!1893946 () Unit!131227)

(declare-fun Unit!131458 () Unit!131227)

(assert (=> b!4730650 (= lt!1893946 Unit!131458)))

(declare-fun call!330886 () Bool)

(assert (=> b!4730650 call!330886))

(declare-fun lt!1893950 () Unit!131227)

(declare-fun Unit!131459 () Unit!131227)

(assert (=> b!4730650 (= lt!1893950 Unit!131459)))

(assert (=> b!4730650 (forall!11627 (toList!5954 lt!1893941) lambda!217046)))

(declare-fun lt!1893945 () Unit!131227)

(declare-fun Unit!131460 () Unit!131227)

(assert (=> b!4730650 (= lt!1893945 Unit!131460)))

(declare-fun lt!1893947 () Unit!131227)

(declare-fun Unit!131461 () Unit!131227)

(assert (=> b!4730650 (= lt!1893947 Unit!131461)))

(declare-fun lt!1893949 () Unit!131227)

(assert (=> b!4730650 (= lt!1893949 (addForallContainsKeyThenBeforeAdding!807 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893944 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023))))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023)))))))))))

(assert (=> b!4730650 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))))) lambda!217046)))

(declare-fun lt!1893939 () Unit!131227)

(assert (=> b!4730650 (= lt!1893939 lt!1893949)))

(declare-fun call!330884 () Bool)

(assert (=> b!4730650 call!330884))

(declare-fun lt!1893959 () Unit!131227)

(declare-fun Unit!131462 () Unit!131227)

(assert (=> b!4730650 (= lt!1893959 Unit!131462)))

(declare-fun res!2002726 () Bool)

(assert (=> b!4730650 (= res!2002726 (forall!11627 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023))))) lambda!217046))))

(declare-fun e!2950708 () Bool)

(assert (=> b!4730650 (=> (not res!2002726) (not e!2950708))))

(assert (=> b!4730650 e!2950708))

(declare-fun lt!1893942 () Unit!131227)

(declare-fun Unit!131463 () Unit!131227)

(assert (=> b!4730650 (= lt!1893942 Unit!131463)))

(declare-fun b!4730651 () Bool)

(declare-fun res!2002727 () Bool)

(declare-fun e!2950706 () Bool)

(assert (=> b!4730651 (=> (not res!2002727) (not e!2950706))))

(assert (=> b!4730651 (= res!2002727 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))))) lambda!217047))))

(declare-fun b!4730652 () Bool)

(assert (=> b!4730652 (= e!2950706 (invariantList!1523 (toList!5954 lt!1893955)))))

(declare-fun c!807922 () Bool)

(declare-fun bm!330881 () Bool)

(assert (=> bm!330881 (= call!330884 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))))) (ite c!807922 lambda!217044 lambda!217046)))))

(assert (=> b!4730653 (= e!2950707 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))))))

(declare-fun lt!1893951 () Unit!131227)

(assert (=> b!4730653 (= lt!1893951 call!330885)))

(assert (=> b!4730653 call!330886))

(declare-fun lt!1893958 () Unit!131227)

(assert (=> b!4730653 (= lt!1893958 lt!1893951)))

(assert (=> b!4730653 call!330884))

(declare-fun lt!1893953 () Unit!131227)

(declare-fun Unit!131464 () Unit!131227)

(assert (=> b!4730653 (= lt!1893953 Unit!131464)))

(declare-fun b!4730654 () Bool)

(assert (=> b!4730654 (= e!2950708 (forall!11627 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))))) lambda!217046))))

(declare-fun bm!330880 () Bool)

(assert (=> bm!330880 (= call!330886 (forall!11627 (ite c!807922 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))))) (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023)))))) (ite c!807922 lambda!217044 lambda!217046)))))

(assert (=> d!1508604 e!2950706))

(declare-fun res!2002725 () Bool)

(assert (=> d!1508604 (=> (not res!2002725) (not e!2950706))))

(assert (=> d!1508604 (= res!2002725 (forall!11627 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023))))) lambda!217047))))

(assert (=> d!1508604 (= lt!1893955 e!2950707)))

(assert (=> d!1508604 (= c!807922 ((_ is Nil!52878) (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> d!1508604 (noDuplicateKeys!2032 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> d!1508604 (= (addToMapMapFromBucket!1462 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023))))) (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))))) lt!1893955)))

(assert (= (and d!1508604 c!807922) b!4730653))

(assert (= (and d!1508604 (not c!807922)) b!4730650))

(assert (= (and b!4730650 res!2002726) b!4730654))

(assert (= (or b!4730653 b!4730650) bm!330879))

(assert (= (or b!4730653 b!4730650) bm!330881))

(assert (= (or b!4730653 b!4730650) bm!330880))

(assert (= (and d!1508604 res!2002725) b!4730651))

(assert (= (and b!4730651 res!2002727) b!4730652))

(declare-fun m!5672987 () Bool)

(assert (=> b!4730650 m!5672987))

(declare-fun m!5672989 () Bool)

(assert (=> b!4730650 m!5672989))

(declare-fun m!5672991 () Bool)

(assert (=> b!4730650 m!5672991))

(assert (=> b!4730650 m!5672991))

(declare-fun m!5672993 () Bool)

(assert (=> b!4730650 m!5672993))

(declare-fun m!5672995 () Bool)

(assert (=> b!4730650 m!5672995))

(assert (=> b!4730650 m!5670575))

(declare-fun m!5672997 () Bool)

(assert (=> b!4730650 m!5672997))

(declare-fun m!5672999 () Bool)

(assert (=> b!4730650 m!5672999))

(declare-fun m!5673001 () Bool)

(assert (=> b!4730650 m!5673001))

(declare-fun m!5673003 () Bool)

(assert (=> b!4730650 m!5673003))

(assert (=> b!4730650 m!5670575))

(assert (=> b!4730650 m!5672993))

(declare-fun m!5673005 () Bool)

(assert (=> b!4730650 m!5673005))

(declare-fun m!5673007 () Bool)

(assert (=> b!4730650 m!5673007))

(declare-fun m!5673009 () Bool)

(assert (=> b!4730651 m!5673009))

(declare-fun m!5673011 () Bool)

(assert (=> d!1508604 m!5673011))

(declare-fun m!5673013 () Bool)

(assert (=> d!1508604 m!5673013))

(assert (=> bm!330879 m!5670575))

(declare-fun m!5673015 () Bool)

(assert (=> bm!330879 m!5673015))

(assert (=> b!4730654 m!5672987))

(declare-fun m!5673017 () Bool)

(assert (=> b!4730652 m!5673017))

(declare-fun m!5673019 () Bool)

(assert (=> bm!330881 m!5673019))

(declare-fun m!5673021 () Bool)

(assert (=> bm!330880 m!5673021))

(assert (=> b!4729535 d!1508604))

(declare-fun bs!1120342 () Bool)

(declare-fun d!1508606 () Bool)

(assert (= bs!1120342 (and d!1508606 d!1507048)))

(declare-fun lambda!217048 () Int)

(assert (=> bs!1120342 (= lambda!217048 lambda!216835)))

(declare-fun bs!1120343 () Bool)

(assert (= bs!1120343 (and d!1508606 d!1507108)))

(assert (=> bs!1120343 (= lambda!217048 lambda!216875)))

(declare-fun bs!1120344 () Bool)

(assert (= bs!1120344 (and d!1508606 d!1507060)))

(assert (=> bs!1120344 (not (= lambda!217048 lambda!216836))))

(declare-fun bs!1120345 () Bool)

(assert (= bs!1120345 (and d!1508606 start!481760)))

(assert (=> bs!1120345 (= lambda!217048 lambda!216768)))

(declare-fun bs!1120346 () Bool)

(assert (= bs!1120346 (and d!1508606 d!1507508)))

(assert (=> bs!1120346 (= lambda!217048 lambda!216952)))

(declare-fun bs!1120347 () Bool)

(assert (= bs!1120347 (and d!1508606 d!1507038)))

(assert (=> bs!1120347 (= lambda!217048 lambda!216825)))

(declare-fun bs!1120348 () Bool)

(assert (= bs!1120348 (and d!1508606 d!1507002)))

(assert (=> bs!1120348 (= lambda!217048 lambda!216819)))

(declare-fun bs!1120349 () Bool)

(assert (= bs!1120349 (and d!1508606 d!1506992)))

(assert (=> bs!1120349 (not (= lambda!217048 lambda!216774))))

(declare-fun bs!1120350 () Bool)

(assert (= bs!1120350 (and d!1508606 d!1507460)))

(assert (=> bs!1120350 (= lambda!217048 lambda!216946)))

(declare-fun lt!1893960 () ListMap!5317)

(assert (=> d!1508606 (invariantList!1523 (toList!5954 lt!1893960))))

(declare-fun e!2950709 () ListMap!5317)

(assert (=> d!1508606 (= lt!1893960 e!2950709)))

(declare-fun c!807923 () Bool)

(assert (=> d!1508606 (= c!807923 ((_ is Cons!52879) (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> d!1508606 (forall!11625 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))) lambda!217048)))

(assert (=> d!1508606 (= (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) lt!1893960)))

(declare-fun b!4730655 () Bool)

(assert (=> b!4730655 (= e!2950709 (addToMapMapFromBucket!1462 (_2!30556 (h!59238 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))))) (extractMap!2058 (t!360279 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun b!4730656 () Bool)

(assert (=> b!4730656 (= e!2950709 (ListMap!5318 Nil!52878))))

(assert (= (and d!1508606 c!807923) b!4730655))

(assert (= (and d!1508606 (not c!807923)) b!4730656))

(declare-fun m!5673023 () Bool)

(assert (=> d!1508606 m!5673023))

(declare-fun m!5673025 () Bool)

(assert (=> d!1508606 m!5673025))

(declare-fun m!5673027 () Bool)

(assert (=> b!4730655 m!5673027))

(assert (=> b!4730655 m!5673027))

(declare-fun m!5673029 () Bool)

(assert (=> b!4730655 m!5673029))

(assert (=> b!4729535 d!1508606))

(assert (=> b!4729454 d!1508364))

(declare-fun d!1508608 () Bool)

(declare-fun res!2002728 () Bool)

(declare-fun e!2950710 () Bool)

(assert (=> d!1508608 (=> res!2002728 e!2950710)))

(assert (=> d!1508608 (= res!2002728 (and ((_ is Cons!52878) (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (= (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> d!1508608 (= (containsKey!3402 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) e!2950710)))

(declare-fun b!4730657 () Bool)

(declare-fun e!2950711 () Bool)

(assert (=> b!4730657 (= e!2950710 e!2950711)))

(declare-fun res!2002729 () Bool)

(assert (=> b!4730657 (=> (not res!2002729) (not e!2950711))))

(assert (=> b!4730657 (= res!2002729 ((_ is Cons!52878) (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(declare-fun b!4730658 () Bool)

(assert (=> b!4730658 (= e!2950711 (containsKey!3402 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (= (and d!1508608 (not res!2002728)) b!4730657))

(assert (= (and b!4730657 res!2002729) b!4730658))

(declare-fun m!5673031 () Bool)

(assert (=> b!4730658 m!5673031))

(assert (=> b!4729352 d!1508608))

(declare-fun d!1508610 () Bool)

(assert (=> d!1508610 (= (isEmpty!29195 (getPair!572 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)) key!4653)) (not ((_ is Some!12387) (getPair!572 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)) key!4653))))))

(assert (=> d!1507426 d!1508610))

(declare-fun d!1508612 () Bool)

(assert (=> d!1508612 (= (invariantList!1523 (toList!5954 lt!1893373)) (noDuplicatedKeys!383 (toList!5954 lt!1893373)))))

(declare-fun bs!1120351 () Bool)

(assert (= bs!1120351 d!1508612))

(declare-fun m!5673033 () Bool)

(assert (=> bs!1120351 m!5673033))

(assert (=> d!1507460 d!1508612))

(declare-fun d!1508614 () Bool)

(declare-fun res!2002730 () Bool)

(declare-fun e!2950712 () Bool)

(assert (=> d!1508614 (=> res!2002730 e!2950712)))

(assert (=> d!1508614 (= res!2002730 ((_ is Nil!52879) (t!360279 (t!360279 (toList!5953 lm!2023)))))))

(assert (=> d!1508614 (= (forall!11625 (t!360279 (t!360279 (toList!5953 lm!2023))) lambda!216946) e!2950712)))

(declare-fun b!4730659 () Bool)

(declare-fun e!2950713 () Bool)

(assert (=> b!4730659 (= e!2950712 e!2950713)))

(declare-fun res!2002731 () Bool)

(assert (=> b!4730659 (=> (not res!2002731) (not e!2950713))))

(assert (=> b!4730659 (= res!2002731 (dynLambda!21839 lambda!216946 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023))))))))

(declare-fun b!4730660 () Bool)

(assert (=> b!4730660 (= e!2950713 (forall!11625 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023)))) lambda!216946))))

(assert (= (and d!1508614 (not res!2002730)) b!4730659))

(assert (= (and b!4730659 res!2002731) b!4730660))

(declare-fun b_lambda!180443 () Bool)

(assert (=> (not b_lambda!180443) (not b!4730659)))

(declare-fun m!5673035 () Bool)

(assert (=> b!4730659 m!5673035))

(declare-fun m!5673037 () Bool)

(assert (=> b!4730660 m!5673037))

(assert (=> d!1507460 d!1508614))

(declare-fun d!1508616 () Bool)

(declare-fun res!2002732 () Bool)

(declare-fun e!2950714 () Bool)

(assert (=> d!1508616 (=> res!2002732 e!2950714)))

(assert (=> d!1508616 (= res!2002732 ((_ is Nil!52878) (t!360278 oldBucket!34)))))

(assert (=> d!1508616 (= (forall!11627 (t!360278 oldBucket!34) lambda!216840) e!2950714)))

(declare-fun b!4730661 () Bool)

(declare-fun e!2950715 () Bool)

(assert (=> b!4730661 (= e!2950714 e!2950715)))

(declare-fun res!2002733 () Bool)

(assert (=> b!4730661 (=> (not res!2002733) (not e!2950715))))

(assert (=> b!4730661 (= res!2002733 (dynLambda!21841 lambda!216840 (h!59237 (t!360278 oldBucket!34))))))

(declare-fun b!4730662 () Bool)

(assert (=> b!4730662 (= e!2950715 (forall!11627 (t!360278 (t!360278 oldBucket!34)) lambda!216840))))

(assert (= (and d!1508616 (not res!2002732)) b!4730661))

(assert (= (and b!4730661 res!2002733) b!4730662))

(declare-fun b_lambda!180445 () Bool)

(assert (=> (not b_lambda!180445) (not b!4730661)))

(declare-fun m!5673039 () Bool)

(assert (=> b!4730661 m!5673039))

(declare-fun m!5673041 () Bool)

(assert (=> b!4730662 m!5673041))

(assert (=> b!4729347 d!1508616))

(declare-fun d!1508618 () Bool)

(declare-fun e!2950719 () Bool)

(assert (=> d!1508618 e!2950719))

(declare-fun res!2002736 () Bool)

(assert (=> d!1508618 (=> res!2002736 e!2950719)))

(declare-fun e!2950720 () Bool)

(assert (=> d!1508618 (= res!2002736 e!2950720)))

(declare-fun res!2002734 () Bool)

(assert (=> d!1508618 (=> (not res!2002734) (not e!2950720))))

(declare-fun lt!1893961 () Bool)

(assert (=> d!1508618 (= res!2002734 (not lt!1893961))))

(declare-fun lt!1893964 () Bool)

(assert (=> d!1508618 (= lt!1893961 lt!1893964)))

(declare-fun lt!1893966 () Unit!131227)

(declare-fun e!2950718 () Unit!131227)

(assert (=> d!1508618 (= lt!1893966 e!2950718)))

(declare-fun c!807925 () Bool)

(assert (=> d!1508618 (= c!807925 lt!1893964)))

(assert (=> d!1508618 (= lt!1893964 (containsKey!3406 (toList!5954 lt!1893065) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> d!1508618 (= (contains!16239 lt!1893065 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) lt!1893961)))

(declare-fun b!4730663 () Bool)

(assert (=> b!4730663 false))

(declare-fun lt!1893965 () Unit!131227)

(declare-fun lt!1893962 () Unit!131227)

(assert (=> b!4730663 (= lt!1893965 lt!1893962)))

(assert (=> b!4730663 (containsKey!3406 (toList!5954 lt!1893065) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))

(assert (=> b!4730663 (= lt!1893962 (lemmaInGetKeysListThenContainsKey!962 (toList!5954 lt!1893065) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun e!2950716 () Unit!131227)

(declare-fun Unit!131465 () Unit!131227)

(assert (=> b!4730663 (= e!2950716 Unit!131465)))

(declare-fun b!4730664 () Bool)

(declare-fun Unit!131466 () Unit!131227)

(assert (=> b!4730664 (= e!2950716 Unit!131466)))

(declare-fun b!4730665 () Bool)

(declare-fun e!2950717 () List!53005)

(assert (=> b!4730665 (= e!2950717 (getKeysList!963 (toList!5954 lt!1893065)))))

(declare-fun b!4730666 () Bool)

(declare-fun e!2950721 () Bool)

(assert (=> b!4730666 (= e!2950721 (contains!16243 (keys!19004 lt!1893065) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun b!4730667 () Bool)

(declare-fun lt!1893968 () Unit!131227)

(assert (=> b!4730667 (= e!2950718 lt!1893968)))

(declare-fun lt!1893963 () Unit!131227)

(assert (=> b!4730667 (= lt!1893963 (lemmaContainsKeyImpliesGetValueByKeyDefined!1869 (toList!5954 lt!1893065) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(assert (=> b!4730667 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893065) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun lt!1893967 () Unit!131227)

(assert (=> b!4730667 (= lt!1893967 lt!1893963)))

(assert (=> b!4730667 (= lt!1893968 (lemmaInListThenGetKeysListContains!958 (toList!5954 lt!1893065) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun call!330887 () Bool)

(assert (=> b!4730667 call!330887))

(declare-fun bm!330882 () Bool)

(assert (=> bm!330882 (= call!330887 (contains!16243 e!2950717 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))

(declare-fun c!807926 () Bool)

(assert (=> bm!330882 (= c!807926 c!807925)))

(declare-fun b!4730668 () Bool)

(assert (=> b!4730668 (= e!2950717 (keys!19004 lt!1893065))))

(declare-fun b!4730669 () Bool)

(assert (=> b!4730669 (= e!2950718 e!2950716)))

(declare-fun c!807924 () Bool)

(assert (=> b!4730669 (= c!807924 call!330887)))

(declare-fun b!4730670 () Bool)

(assert (=> b!4730670 (= e!2950719 e!2950721)))

(declare-fun res!2002735 () Bool)

(assert (=> b!4730670 (=> (not res!2002735) (not e!2950721))))

(assert (=> b!4730670 (= res!2002735 (isDefined!9646 (getValueByKey!1978 (toList!5954 lt!1893065) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun b!4730671 () Bool)

(assert (=> b!4730671 (= e!2950720 (not (contains!16243 (keys!19004 lt!1893065) (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (= (and d!1508618 c!807925) b!4730667))

(assert (= (and d!1508618 (not c!807925)) b!4730669))

(assert (= (and b!4730669 c!807924) b!4730663))

(assert (= (and b!4730669 (not c!807924)) b!4730664))

(assert (= (or b!4730667 b!4730669) bm!330882))

(assert (= (and bm!330882 c!807926) b!4730665))

(assert (= (and bm!330882 (not c!807926)) b!4730668))

(assert (= (and d!1508618 res!2002734) b!4730671))

(assert (= (and d!1508618 (not res!2002736)) b!4730670))

(assert (= (and b!4730670 res!2002735) b!4730666))

(assert (=> b!4730665 m!5671761))

(declare-fun m!5673043 () Bool)

(assert (=> b!4730663 m!5673043))

(declare-fun m!5673045 () Bool)

(assert (=> b!4730663 m!5673045))

(declare-fun m!5673047 () Bool)

(assert (=> bm!330882 m!5673047))

(declare-fun m!5673049 () Bool)

(assert (=> b!4730670 m!5673049))

(assert (=> b!4730670 m!5673049))

(declare-fun m!5673051 () Bool)

(assert (=> b!4730670 m!5673051))

(assert (=> b!4730666 m!5671773))

(assert (=> b!4730666 m!5671773))

(declare-fun m!5673053 () Bool)

(assert (=> b!4730666 m!5673053))

(assert (=> d!1508618 m!5673043))

(declare-fun m!5673055 () Bool)

(assert (=> b!4730667 m!5673055))

(assert (=> b!4730667 m!5673049))

(assert (=> b!4730667 m!5673049))

(assert (=> b!4730667 m!5673051))

(declare-fun m!5673057 () Bool)

(assert (=> b!4730667 m!5673057))

(assert (=> b!4730671 m!5671773))

(assert (=> b!4730671 m!5671773))

(assert (=> b!4730671 m!5673053))

(assert (=> b!4730668 m!5671773))

(assert (=> bs!1119034 d!1508618))

(declare-fun lt!1893969 () Bool)

(declare-fun d!1508620 () Bool)

(assert (=> d!1508620 (= lt!1893969 (select (content!9423 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))) (get!17745 lt!1893290)))))

(declare-fun e!2950722 () Bool)

(assert (=> d!1508620 (= lt!1893969 e!2950722)))

(declare-fun res!2002737 () Bool)

(assert (=> d!1508620 (=> (not res!2002737) (not e!2950722))))

(assert (=> d!1508620 (= res!2002737 ((_ is Cons!52878) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))))))

(assert (=> d!1508620 (= (contains!16242 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)) (get!17745 lt!1893290)) lt!1893969)))

(declare-fun b!4730672 () Bool)

(declare-fun e!2950723 () Bool)

(assert (=> b!4730672 (= e!2950722 e!2950723)))

(declare-fun res!2002738 () Bool)

(assert (=> b!4730672 (=> res!2002738 e!2950723)))

(assert (=> b!4730672 (= res!2002738 (= (h!59237 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))) (get!17745 lt!1893290)))))

(declare-fun b!4730673 () Bool)

(assert (=> b!4730673 (= e!2950723 (contains!16242 (t!360278 (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))) (get!17745 lt!1893290)))))

(assert (= (and d!1508620 res!2002737) b!4730672))

(assert (= (and b!4730672 (not res!2002738)) b!4730673))

(assert (=> d!1508620 m!5669473))

(declare-fun m!5673059 () Bool)

(assert (=> d!1508620 m!5673059))

(assert (=> d!1508620 m!5670385))

(declare-fun m!5673061 () Bool)

(assert (=> d!1508620 m!5673061))

(assert (=> b!4730673 m!5670385))

(declare-fun m!5673063 () Bool)

(assert (=> b!4730673 m!5673063))

(assert (=> b!4729475 d!1508620))

(assert (=> b!4729475 d!1508442))

(declare-fun d!1508622 () Bool)

(declare-fun lt!1893970 () Bool)

(assert (=> d!1508622 (= lt!1893970 (select (content!9422 (t!360281 (keys!19004 lt!1892771))) key!4653))))

(declare-fun e!2950725 () Bool)

(assert (=> d!1508622 (= lt!1893970 e!2950725)))

(declare-fun res!2002740 () Bool)

(assert (=> d!1508622 (=> (not res!2002740) (not e!2950725))))

(assert (=> d!1508622 (= res!2002740 ((_ is Cons!52881) (t!360281 (keys!19004 lt!1892771))))))

(assert (=> d!1508622 (= (contains!16243 (t!360281 (keys!19004 lt!1892771)) key!4653) lt!1893970)))

(declare-fun b!4730674 () Bool)

(declare-fun e!2950724 () Bool)

(assert (=> b!4730674 (= e!2950725 e!2950724)))

(declare-fun res!2002739 () Bool)

(assert (=> b!4730674 (=> res!2002739 e!2950724)))

(assert (=> b!4730674 (= res!2002739 (= (h!59242 (t!360281 (keys!19004 lt!1892771))) key!4653))))

(declare-fun b!4730675 () Bool)

(assert (=> b!4730675 (= e!2950724 (contains!16243 (t!360281 (t!360281 (keys!19004 lt!1892771))) key!4653))))

(assert (= (and d!1508622 res!2002740) b!4730674))

(assert (= (and b!4730674 (not res!2002739)) b!4730675))

(assert (=> d!1508622 m!5672811))

(declare-fun m!5673065 () Bool)

(assert (=> d!1508622 m!5673065))

(declare-fun m!5673067 () Bool)

(assert (=> b!4730675 m!5673067))

(assert (=> b!4729438 d!1508622))

(assert (=> d!1507354 d!1508434))

(declare-fun bs!1120352 () Bool)

(declare-fun b!4730680 () Bool)

(assert (= bs!1120352 (and b!4730680 b!4730402)))

(declare-fun lambda!217049 () Int)

(assert (=> bs!1120352 (= (= (t!360278 (toList!5954 lt!1893054)) (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051)))) (= lambda!217049 lambda!217028))))

(declare-fun bs!1120353 () Bool)

(assert (= bs!1120353 (and b!4730680 b!4730406)))

(assert (=> bs!1120353 (= (= (t!360278 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893051))) (= lambda!217049 lambda!217027))))

(declare-fun bs!1120354 () Bool)

(assert (= bs!1120354 (and b!4730680 b!4730128)))

(assert (=> bs!1120354 (= (= (t!360278 (toList!5954 lt!1893054)) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (= lambda!217049 lambda!217009))))

(declare-fun bs!1120355 () Bool)

(assert (= bs!1120355 (and b!4730680 b!4730641)))

(assert (=> bs!1120355 (= (= (t!360278 (toList!5954 lt!1893054)) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (= lambda!217049 lambda!217040))))

(declare-fun bs!1120356 () Bool)

(assert (= bs!1120356 (and b!4730680 b!4729446)))

(assert (=> bs!1120356 (= (= (t!360278 (toList!5954 lt!1893054)) (toList!5954 lt!1892771)) (= lambda!217049 lambda!216931))))

(declare-fun bs!1120357 () Bool)

(assert (= bs!1120357 (and b!4730680 b!4730638)))

(assert (=> bs!1120357 (= (= (t!360278 (toList!5954 lt!1893054)) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= lambda!217049 lambda!217042))))

(declare-fun bs!1120358 () Bool)

(assert (= bs!1120358 (and b!4730680 d!1508562)))

(assert (=> bs!1120358 (= (= (t!360278 (toList!5954 lt!1893054)) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217049 lambda!217036))))

(declare-fun bs!1120359 () Bool)

(assert (= bs!1120359 (and b!4730680 b!4730637)))

(assert (=> bs!1120359 (= (= (t!360278 (toList!5954 lt!1893054)) (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))))) (= lambda!217049 lambda!217041))))

(declare-fun bs!1120360 () Bool)

(assert (= bs!1120360 (and b!4730680 b!4729391)))

(assert (=> bs!1120360 (= (= (t!360278 (toList!5954 lt!1893054)) (toList!5954 lt!1892771)) (= lambda!217049 lambda!216925))))

(declare-fun bs!1120361 () Bool)

(assert (= bs!1120361 (and b!4730680 b!4730125)))

(assert (=> bs!1120361 (= (= (t!360278 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1892771))) (= lambda!217049 lambda!217011))))

(declare-fun bs!1120362 () Bool)

(assert (= bs!1120362 (and b!4730680 b!4730403)))

(assert (=> bs!1120362 (= (= (t!360278 (toList!5954 lt!1893054)) (toList!5954 lt!1893051)) (= lambda!217049 lambda!217029))))

(declare-fun bs!1120363 () Bool)

(assert (= bs!1120363 (and b!4730680 b!4730053)))

(assert (=> bs!1120363 (= (= (t!360278 (toList!5954 lt!1893054)) (toList!5954 lt!1893051)) (= lambda!217049 lambda!216997))))

(declare-fun bs!1120364 () Bool)

(assert (= bs!1120364 (and b!4730680 b!4729894)))

(assert (=> bs!1120364 (= (= (t!360278 (toList!5954 lt!1893054)) (toList!5954 lt!1893054)) (= lambda!217049 lambda!216984))))

(declare-fun bs!1120365 () Bool)

(assert (= bs!1120365 (and b!4730680 b!4730124)))

(assert (=> bs!1120365 (= (= (t!360278 (toList!5954 lt!1893054)) (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771))))) (= lambda!217049 lambda!217010))))

(declare-fun bs!1120366 () Bool)

(assert (= bs!1120366 (and b!4730680 b!4730098)))

(assert (=> bs!1120366 (= (= (t!360278 (toList!5954 lt!1893054)) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= lambda!217049 lambda!217004))))

(declare-fun bs!1120367 () Bool)

(assert (= bs!1120367 (and b!4730680 b!4729394)))

(assert (=> bs!1120367 (= (= (t!360278 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1892771))) (= lambda!217049 lambda!216923))))

(declare-fun bs!1120368 () Bool)

(assert (= bs!1120368 (and b!4730680 b!4729390)))

(assert (=> bs!1120368 (= (= (t!360278 (toList!5954 lt!1893054)) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217049 lambda!216924))))

(assert (=> b!4730680 true))

(declare-fun bs!1120369 () Bool)

(declare-fun b!4730676 () Bool)

(assert (= bs!1120369 (and b!4730676 b!4730402)))

(declare-fun lambda!217050 () Int)

(assert (=> bs!1120369 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051)))) (= lambda!217050 lambda!217028))))

(declare-fun bs!1120370 () Bool)

(assert (= bs!1120370 (and b!4730676 b!4730406)))

(assert (=> bs!1120370 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (t!360278 (toList!5954 lt!1893051))) (= lambda!217050 lambda!217027))))

(declare-fun bs!1120371 () Bool)

(assert (= bs!1120371 (and b!4730676 b!4730128)))

(assert (=> bs!1120371 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (= lambda!217050 lambda!217009))))

(declare-fun bs!1120372 () Bool)

(assert (= bs!1120372 (and b!4730676 b!4730641)))

(assert (=> bs!1120372 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (= lambda!217050 lambda!217040))))

(declare-fun bs!1120373 () Bool)

(assert (= bs!1120373 (and b!4730676 b!4729446)))

(assert (=> bs!1120373 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (toList!5954 lt!1892771)) (= lambda!217050 lambda!216931))))

(declare-fun bs!1120374 () Bool)

(assert (= bs!1120374 (and b!4730676 b!4730638)))

(assert (=> bs!1120374 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= lambda!217050 lambda!217042))))

(declare-fun bs!1120375 () Bool)

(assert (= bs!1120375 (and b!4730676 d!1508562)))

(assert (=> bs!1120375 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217050 lambda!217036))))

(declare-fun bs!1120376 () Bool)

(assert (= bs!1120376 (and b!4730676 b!4730637)))

(assert (=> bs!1120376 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))))) (= lambda!217050 lambda!217041))))

(declare-fun bs!1120377 () Bool)

(assert (= bs!1120377 (and b!4730676 b!4729391)))

(assert (=> bs!1120377 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (toList!5954 lt!1892771)) (= lambda!217050 lambda!216925))))

(declare-fun bs!1120378 () Bool)

(assert (= bs!1120378 (and b!4730676 b!4730680)))

(assert (=> bs!1120378 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (t!360278 (toList!5954 lt!1893054))) (= lambda!217050 lambda!217049))))

(declare-fun bs!1120379 () Bool)

(assert (= bs!1120379 (and b!4730676 b!4730125)))

(assert (=> bs!1120379 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (t!360278 (toList!5954 lt!1892771))) (= lambda!217050 lambda!217011))))

(declare-fun bs!1120380 () Bool)

(assert (= bs!1120380 (and b!4730676 b!4730403)))

(assert (=> bs!1120380 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (toList!5954 lt!1893051)) (= lambda!217050 lambda!217029))))

(declare-fun bs!1120381 () Bool)

(assert (= bs!1120381 (and b!4730676 b!4730053)))

(assert (=> bs!1120381 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (toList!5954 lt!1893051)) (= lambda!217050 lambda!216997))))

(declare-fun bs!1120382 () Bool)

(assert (= bs!1120382 (and b!4730676 b!4729894)))

(assert (=> bs!1120382 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (toList!5954 lt!1893054)) (= lambda!217050 lambda!216984))))

(declare-fun bs!1120383 () Bool)

(assert (= bs!1120383 (and b!4730676 b!4730124)))

(assert (=> bs!1120383 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771))))) (= lambda!217050 lambda!217010))))

(declare-fun bs!1120384 () Bool)

(assert (= bs!1120384 (and b!4730676 b!4730098)))

(assert (=> bs!1120384 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= lambda!217050 lambda!217004))))

(declare-fun bs!1120385 () Bool)

(assert (= bs!1120385 (and b!4730676 b!4729394)))

(assert (=> bs!1120385 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (t!360278 (toList!5954 lt!1892771))) (= lambda!217050 lambda!216923))))

(declare-fun bs!1120386 () Bool)

(assert (= bs!1120386 (and b!4730676 b!4729390)))

(assert (=> bs!1120386 (= (= (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054))) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217050 lambda!216924))))

(assert (=> b!4730676 true))

(declare-fun bs!1120387 () Bool)

(declare-fun b!4730677 () Bool)

(assert (= bs!1120387 (and b!4730677 b!4730402)))

(declare-fun lambda!217051 () Int)

(assert (=> bs!1120387 (= (= (toList!5954 lt!1893054) (Cons!52878 (h!59237 (toList!5954 lt!1893051)) (t!360278 (toList!5954 lt!1893051)))) (= lambda!217051 lambda!217028))))

(declare-fun bs!1120388 () Bool)

(assert (= bs!1120388 (and b!4730677 b!4730406)))

(assert (=> bs!1120388 (= (= (toList!5954 lt!1893054) (t!360278 (toList!5954 lt!1893051))) (= lambda!217051 lambda!217027))))

(declare-fun bs!1120389 () Bool)

(assert (= bs!1120389 (and b!4730677 b!4730128)))

(assert (=> bs!1120389 (= (= (toList!5954 lt!1893054) (t!360278 (t!360278 (toList!5954 lt!1892771)))) (= lambda!217051 lambda!217009))))

(declare-fun bs!1120390 () Bool)

(assert (= bs!1120390 (and b!4730677 b!4730641)))

(assert (=> bs!1120390 (= (= (toList!5954 lt!1893054) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023))))) (= lambda!217051 lambda!217040))))

(declare-fun bs!1120391 () Bool)

(assert (= bs!1120391 (and b!4730677 b!4729446)))

(assert (=> bs!1120391 (= (= (toList!5954 lt!1893054) (toList!5954 lt!1892771)) (= lambda!217051 lambda!216931))))

(declare-fun bs!1120392 () Bool)

(assert (= bs!1120392 (and b!4730677 b!4730638)))

(assert (=> bs!1120392 (= (= (toList!5954 lt!1893054) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= lambda!217051 lambda!217042))))

(declare-fun bs!1120393 () Bool)

(assert (= bs!1120393 (and b!4730677 d!1508562)))

(assert (=> bs!1120393 (= (= (toList!5954 lt!1893054) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217051 lambda!217036))))

(declare-fun bs!1120394 () Bool)

(assert (= bs!1120394 (and b!4730677 b!4730637)))

(assert (=> bs!1120394 (= (= (toList!5954 lt!1893054) (Cons!52878 (h!59237 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (t!360278 (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))))) (= lambda!217051 lambda!217041))))

(declare-fun bs!1120395 () Bool)

(assert (= bs!1120395 (and b!4730677 b!4729391)))

(assert (=> bs!1120395 (= (= (toList!5954 lt!1893054) (toList!5954 lt!1892771)) (= lambda!217051 lambda!216925))))

(declare-fun bs!1120396 () Bool)

(assert (= bs!1120396 (and b!4730677 b!4730680)))

(assert (=> bs!1120396 (= (= (toList!5954 lt!1893054) (t!360278 (toList!5954 lt!1893054))) (= lambda!217051 lambda!217049))))

(declare-fun bs!1120397 () Bool)

(assert (= bs!1120397 (and b!4730677 b!4730403)))

(assert (=> bs!1120397 (= (= (toList!5954 lt!1893054) (toList!5954 lt!1893051)) (= lambda!217051 lambda!217029))))

(declare-fun bs!1120398 () Bool)

(assert (= bs!1120398 (and b!4730677 b!4730053)))

(assert (=> bs!1120398 (= (= (toList!5954 lt!1893054) (toList!5954 lt!1893051)) (= lambda!217051 lambda!216997))))

(declare-fun bs!1120399 () Bool)

(assert (= bs!1120399 (and b!4730677 b!4729894)))

(assert (=> bs!1120399 (= lambda!217051 lambda!216984)))

(declare-fun bs!1120400 () Bool)

(assert (= bs!1120400 (and b!4730677 b!4730124)))

(assert (=> bs!1120400 (= (= (toList!5954 lt!1893054) (Cons!52878 (h!59237 (t!360278 (toList!5954 lt!1892771))) (t!360278 (t!360278 (toList!5954 lt!1892771))))) (= lambda!217051 lambda!217010))))

(declare-fun bs!1120401 () Bool)

(assert (= bs!1120401 (and b!4730677 b!4730098)))

(assert (=> bs!1120401 (= (= (toList!5954 lt!1893054) (toList!5954 (extractMap!2058 (toList!5953 lm!2023)))) (= lambda!217051 lambda!217004))))

(declare-fun bs!1120402 () Bool)

(assert (= bs!1120402 (and b!4730677 b!4729394)))

(assert (=> bs!1120402 (= (= (toList!5954 lt!1893054) (t!360278 (toList!5954 lt!1892771))) (= lambda!217051 lambda!216923))))

(declare-fun bs!1120403 () Bool)

(assert (= bs!1120403 (and b!4730677 b!4729390)))

(assert (=> bs!1120403 (= (= (toList!5954 lt!1893054) (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771)))) (= lambda!217051 lambda!216924))))

(declare-fun bs!1120404 () Bool)

(assert (= bs!1120404 (and b!4730677 b!4730676)))

(assert (=> bs!1120404 (= (= (toList!5954 lt!1893054) (Cons!52878 (h!59237 (toList!5954 lt!1893054)) (t!360278 (toList!5954 lt!1893054)))) (= lambda!217051 lambda!217050))))

(declare-fun bs!1120405 () Bool)

(assert (= bs!1120405 (and b!4730677 b!4730125)))

(assert (=> bs!1120405 (= (= (toList!5954 lt!1893054) (t!360278 (toList!5954 lt!1892771))) (= lambda!217051 lambda!217011))))

(assert (=> b!4730677 true))

(declare-fun bs!1120406 () Bool)

(declare-fun b!4730683 () Bool)

(assert (= bs!1120406 (and b!4730683 b!4729447)))

(declare-fun lambda!217052 () Int)

(assert (=> bs!1120406 (= lambda!217052 lambda!216932)))

(declare-fun bs!1120407 () Bool)

(assert (= bs!1120407 (and b!4730683 b!4730409)))

(assert (=> bs!1120407 (= lambda!217052 lambda!217030)))

(declare-fun bs!1120408 () Bool)

(assert (= bs!1120408 (and b!4730683 b!4730054)))

(assert (=> bs!1120408 (= lambda!217052 lambda!216998)))

(declare-fun bs!1120409 () Bool)

(assert (= bs!1120409 (and b!4730683 b!4730644)))

(assert (=> bs!1120409 (= lambda!217052 lambda!217043)))

(declare-fun bs!1120410 () Bool)

(assert (= bs!1120410 (and b!4730683 b!4729397)))

(assert (=> bs!1120410 (= lambda!217052 lambda!216926)))

(declare-fun bs!1120411 () Bool)

(assert (= bs!1120411 (and b!4730683 b!4729895)))

(assert (=> bs!1120411 (= lambda!217052 lambda!216985)))

(declare-fun bs!1120412 () Bool)

(assert (= bs!1120412 (and b!4730683 b!4730099)))

(assert (=> bs!1120412 (= lambda!217052 lambda!217005)))

(declare-fun bs!1120413 () Bool)

(assert (= bs!1120413 (and b!4730683 b!4730131)))

(assert (=> bs!1120413 (= lambda!217052 lambda!217012)))

(declare-fun e!2950729 () List!53005)

(assert (=> b!4730676 (= e!2950729 (Cons!52881 (_1!30555 (h!59237 (toList!5954 lt!1893054))) (getKeysList!963 (t!360278 (toList!5954 lt!1893054)))))))

(declare-fun c!807927 () Bool)

(assert (=> b!4730676 (= c!807927 (containsKey!3406 (t!360278 (toList!5954 lt!1893054)) (_1!30555 (h!59237 (toList!5954 lt!1893054)))))))

(declare-fun lt!1893973 () Unit!131227)

(declare-fun e!2950728 () Unit!131227)

(assert (=> b!4730676 (= lt!1893973 e!2950728)))

(declare-fun c!807928 () Bool)

(assert (=> b!4730676 (= c!807928 (contains!16243 (getKeysList!963 (t!360278 (toList!5954 lt!1893054))) (_1!30555 (h!59237 (toList!5954 lt!1893054)))))))

(declare-fun lt!1893977 () Unit!131227)

(declare-fun e!2950726 () Unit!131227)

(assert (=> b!4730676 (= lt!1893977 e!2950726)))

(declare-fun lt!1893975 () List!53005)

(assert (=> b!4730676 (= lt!1893975 (getKeysList!963 (t!360278 (toList!5954 lt!1893054))))))

(declare-fun lt!1893976 () Unit!131227)

(assert (=> b!4730676 (= lt!1893976 (lemmaForallContainsAddHeadPreserves!287 (t!360278 (toList!5954 lt!1893054)) lt!1893975 (h!59237 (toList!5954 lt!1893054))))))

(assert (=> b!4730676 (forall!11629 lt!1893975 lambda!217050)))

(declare-fun lt!1893971 () Unit!131227)

(assert (=> b!4730676 (= lt!1893971 lt!1893976)))

(declare-fun res!2002742 () Bool)

(declare-fun e!2950727 () Bool)

(assert (=> b!4730677 (=> (not res!2002742) (not e!2950727))))

(declare-fun lt!1893972 () List!53005)

(assert (=> b!4730677 (= res!2002742 (forall!11629 lt!1893972 lambda!217051))))

(declare-fun d!1508624 () Bool)

(assert (=> d!1508624 e!2950727))

(declare-fun res!2002743 () Bool)

(assert (=> d!1508624 (=> (not res!2002743) (not e!2950727))))

(assert (=> d!1508624 (= res!2002743 (noDuplicate!869 lt!1893972))))

(assert (=> d!1508624 (= lt!1893972 e!2950729)))

(declare-fun c!807929 () Bool)

(assert (=> d!1508624 (= c!807929 ((_ is Cons!52878) (toList!5954 lt!1893054)))))

(assert (=> d!1508624 (invariantList!1523 (toList!5954 lt!1893054))))

(assert (=> d!1508624 (= (getKeysList!963 (toList!5954 lt!1893054)) lt!1893972)))

(declare-fun b!4730678 () Bool)

(assert (=> b!4730678 false))

(declare-fun Unit!131467 () Unit!131227)

(assert (=> b!4730678 (= e!2950728 Unit!131467)))

(declare-fun b!4730679 () Bool)

(declare-fun Unit!131468 () Unit!131227)

(assert (=> b!4730679 (= e!2950728 Unit!131468)))

(assert (=> b!4730680 false))

(declare-fun lt!1893974 () Unit!131227)

(assert (=> b!4730680 (= lt!1893974 (forallContained!3669 (getKeysList!963 (t!360278 (toList!5954 lt!1893054))) lambda!217049 (_1!30555 (h!59237 (toList!5954 lt!1893054)))))))

(declare-fun Unit!131469 () Unit!131227)

(assert (=> b!4730680 (= e!2950726 Unit!131469)))

(declare-fun b!4730681 () Bool)

(declare-fun Unit!131470 () Unit!131227)

(assert (=> b!4730681 (= e!2950726 Unit!131470)))

(declare-fun b!4730682 () Bool)

(assert (=> b!4730682 (= e!2950729 Nil!52881)))

(assert (=> b!4730683 (= e!2950727 (= (content!9422 lt!1893972) (content!9422 (map!11698 (toList!5954 lt!1893054) lambda!217052))))))

(declare-fun b!4730684 () Bool)

(declare-fun res!2002741 () Bool)

(assert (=> b!4730684 (=> (not res!2002741) (not e!2950727))))

(assert (=> b!4730684 (= res!2002741 (= (length!594 lt!1893972) (length!595 (toList!5954 lt!1893054))))))

(assert (= (and d!1508624 c!807929) b!4730676))

(assert (= (and d!1508624 (not c!807929)) b!4730682))

(assert (= (and b!4730676 c!807927) b!4730678))

(assert (= (and b!4730676 (not c!807927)) b!4730679))

(assert (= (and b!4730676 c!807928) b!4730680))

(assert (= (and b!4730676 (not c!807928)) b!4730681))

(assert (= (and d!1508624 res!2002743) b!4730684))

(assert (= (and b!4730684 res!2002741) b!4730677))

(assert (= (and b!4730677 res!2002742) b!4730683))

(declare-fun m!5673069 () Bool)

(assert (=> b!4730680 m!5673069))

(assert (=> b!4730680 m!5673069))

(declare-fun m!5673071 () Bool)

(assert (=> b!4730680 m!5673071))

(assert (=> b!4730676 m!5673069))

(declare-fun m!5673073 () Bool)

(assert (=> b!4730676 m!5673073))

(declare-fun m!5673075 () Bool)

(assert (=> b!4730676 m!5673075))

(declare-fun m!5673077 () Bool)

(assert (=> b!4730676 m!5673077))

(declare-fun m!5673079 () Bool)

(assert (=> b!4730676 m!5673079))

(assert (=> b!4730676 m!5673069))

(declare-fun m!5673081 () Bool)

(assert (=> b!4730684 m!5673081))

(assert (=> b!4730684 m!5671237))

(declare-fun m!5673083 () Bool)

(assert (=> d!1508624 m!5673083))

(assert (=> d!1508624 m!5672651))

(declare-fun m!5673085 () Bool)

(assert (=> b!4730683 m!5673085))

(declare-fun m!5673087 () Bool)

(assert (=> b!4730683 m!5673087))

(assert (=> b!4730683 m!5673087))

(declare-fun m!5673089 () Bool)

(assert (=> b!4730683 m!5673089))

(declare-fun m!5673091 () Bool)

(assert (=> b!4730677 m!5673091))

(assert (=> b!4729504 d!1508624))

(declare-fun b!4730685 () Bool)

(declare-fun e!2950730 () Bool)

(declare-fun tp!1348766 () Bool)

(assert (=> b!4730685 (= e!2950730 (and tp_is_empty!31421 tp_is_empty!31423 tp!1348766))))

(assert (=> b!4729599 (= tp!1348759 e!2950730)))

(assert (= (and b!4729599 ((_ is Cons!52878) (t!360278 (t!360278 (t!360278 newBucket!218))))) b!4730685))

(declare-fun e!2950731 () Bool)

(declare-fun tp!1348767 () Bool)

(declare-fun b!4730686 () Bool)

(assert (=> b!4730686 (= e!2950731 (and tp_is_empty!31421 tp_is_empty!31423 tp!1348767))))

(assert (=> b!4729597 (= tp!1348756 e!2950731)))

(assert (= (and b!4729597 ((_ is Cons!52878) (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) b!4730686))

(declare-fun b!4730687 () Bool)

(declare-fun e!2950732 () Bool)

(declare-fun tp!1348768 () Bool)

(declare-fun tp!1348769 () Bool)

(assert (=> b!4730687 (= e!2950732 (and tp!1348768 tp!1348769))))

(assert (=> b!4729597 (= tp!1348757 e!2950732)))

(assert (= (and b!4729597 ((_ is Cons!52879) (t!360279 (t!360279 (toList!5953 lm!2023))))) b!4730687))

(declare-fun tp!1348770 () Bool)

(declare-fun b!4730688 () Bool)

(declare-fun e!2950733 () Bool)

(assert (=> b!4730688 (= e!2950733 (and tp_is_empty!31421 tp_is_empty!31423 tp!1348770))))

(assert (=> b!4729596 (= tp!1348755 e!2950733)))

(assert (= (and b!4729596 ((_ is Cons!52878) (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) b!4730688))

(declare-fun e!2950734 () Bool)

(declare-fun tp!1348771 () Bool)

(declare-fun b!4730689 () Bool)

(assert (=> b!4730689 (= e!2950734 (and tp_is_empty!31421 tp_is_empty!31423 tp!1348771))))

(assert (=> b!4729598 (= tp!1348758 e!2950734)))

(assert (= (and b!4729598 ((_ is Cons!52878) (t!360278 (t!360278 (t!360278 oldBucket!34))))) b!4730689))

(declare-fun b_lambda!180447 () Bool)

(assert (= b_lambda!180223 (or d!1507436 b_lambda!180447)))

(declare-fun bs!1120414 () Bool)

(declare-fun d!1508626 () Bool)

(assert (= bs!1120414 (and d!1508626 d!1507436)))

(assert (=> bs!1120414 (= (dynLambda!21841 lambda!216936 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893313 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun m!5673093 () Bool)

(assert (=> bs!1120414 m!5673093))

(assert (=> b!4730023 d!1508626))

(declare-fun b_lambda!180449 () Bool)

(assert (= b_lambda!180413 (or d!1507458 b_lambda!180449)))

(declare-fun bs!1120415 () Bool)

(declare-fun d!1508628 () Bool)

(assert (= bs!1120415 (and d!1508628 d!1507458)))

(assert (=> bs!1120415 (= (dynLambda!21841 lambda!216945 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893368 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun m!5673095 () Bool)

(assert (=> bs!1120415 m!5673095))

(assert (=> b!4730560 d!1508628))

(declare-fun b_lambda!180451 () Bool)

(assert (= b_lambda!180439 (or d!1507456 b_lambda!180451)))

(declare-fun bs!1120416 () Bool)

(declare-fun d!1508630 () Bool)

(assert (= bs!1120416 (and d!1508630 d!1507456)))

(assert (=> bs!1120416 (= (dynLambda!21841 lambda!216941 (h!59237 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))) (contains!16239 lt!1893054 (_1!30555 (h!59237 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (tuple2!54523 (_1!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_2!30555 (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))))))

(declare-fun m!5673097 () Bool)

(assert (=> bs!1120416 m!5673097))

(assert (=> b!4730631 d!1508630))

(declare-fun b_lambda!180453 () Bool)

(assert (= b_lambda!180217 (or b!4729487 b_lambda!180453)))

(declare-fun bs!1120417 () Bool)

(declare-fun d!1508632 () Bool)

(assert (= bs!1120417 (and d!1508632 b!4729487)))

(assert (=> bs!1120417 (= (dynLambda!21841 lambda!216935 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893302 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120417 m!5670439))

(assert (=> d!1507866 d!1508632))

(declare-fun b_lambda!180455 () Bool)

(assert (= b_lambda!180427 (or b!4729390 b_lambda!180455)))

(declare-fun bs!1120418 () Bool)

(declare-fun d!1508634 () Bool)

(assert (= bs!1120418 (and d!1508634 b!4729390)))

(assert (=> bs!1120418 (= (dynLambda!21844 lambda!216924 (h!59242 lt!1893270)) (containsKey!3406 (Cons!52878 (h!59237 (toList!5954 lt!1892771)) (t!360278 (toList!5954 lt!1892771))) (h!59242 lt!1893270)))))

(declare-fun m!5673099 () Bool)

(assert (=> bs!1120418 m!5673099))

(assert (=> b!4730616 d!1508634))

(declare-fun b_lambda!180457 () Bool)

(assert (= b_lambda!180437 (or d!1507456 b_lambda!180457)))

(declare-fun bs!1120419 () Bool)

(declare-fun d!1508636 () Bool)

(assert (= bs!1120419 (and d!1508636 d!1507456)))

(assert (=> bs!1120419 (= (dynLambda!21841 lambda!216941 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893054 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120419 m!5670685))

(assert (=> b!4730628 d!1508636))

(declare-fun b_lambda!180459 () Bool)

(assert (= b_lambda!180405 (or start!481760 b_lambda!180459)))

(declare-fun bs!1120420 () Bool)

(declare-fun d!1508638 () Bool)

(assert (= bs!1120420 (and d!1508638 start!481760)))

(assert (=> bs!1120420 (= (dynLambda!21839 lambda!216768 (h!59238 (t!360279 (t!360279 lt!1892767)))) (noDuplicateKeys!2032 (_2!30556 (h!59238 (t!360279 (t!360279 lt!1892767))))))))

(declare-fun m!5673101 () Bool)

(assert (=> bs!1120420 m!5673101))

(assert (=> b!4730537 d!1508638))

(declare-fun b_lambda!180461 () Bool)

(assert (= b_lambda!180403 (or b!4729391 b_lambda!180461)))

(declare-fun bs!1120421 () Bool)

(declare-fun d!1508640 () Bool)

(assert (= bs!1120421 (and d!1508640 b!4729391)))

(assert (=> bs!1120421 (= (dynLambda!21844 lambda!216925 (h!59242 lt!1893267)) (containsKey!3406 (toList!5954 lt!1892771) (h!59242 lt!1893267)))))

(declare-fun m!5673103 () Bool)

(assert (=> bs!1120421 m!5673103))

(assert (=> b!4730535 d!1508640))

(declare-fun b_lambda!180463 () Bool)

(assert (= b_lambda!180219 (or b!4729487 b_lambda!180463)))

(declare-fun bs!1120422 () Bool)

(declare-fun d!1508642 () Bool)

(assert (= bs!1120422 (and d!1508642 b!4729487)))

(assert (=> bs!1120422 (= (dynLambda!21841 lambda!216935 (h!59237 (toList!5954 lt!1893299))) (contains!16239 lt!1893302 (_1!30555 (h!59237 (toList!5954 lt!1893299)))))))

(declare-fun m!5673105 () Bool)

(assert (=> bs!1120422 m!5673105))

(assert (=> b!4730001 d!1508642))

(declare-fun b_lambda!180465 () Bool)

(assert (= b_lambda!180393 (or b!4729036 b_lambda!180465)))

(declare-fun bs!1120423 () Bool)

(declare-fun d!1508644 () Bool)

(assert (= bs!1120423 (and d!1508644 b!4729036)))

(assert (=> bs!1120423 (= (dynLambda!21841 lambda!216873 (h!59237 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (contains!16239 lt!1893054 (_1!30555 (h!59237 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun m!5673107 () Bool)

(assert (=> bs!1120423 m!5673107))

(assert (=> b!4730451 d!1508644))

(declare-fun b_lambda!180467 () Bool)

(assert (= b_lambda!180283 (or b!4729530 b_lambda!180467)))

(declare-fun bs!1120424 () Bool)

(declare-fun d!1508646 () Bool)

(assert (= bs!1120424 (and d!1508646 b!4729530)))

(assert (=> bs!1120424 (= (dynLambda!21841 lambda!216944 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893357 (_1!30555 (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120424 m!5670555))

(assert (=> d!1508102 d!1508646))

(declare-fun b_lambda!180469 () Bool)

(assert (= b_lambda!180397 (or b!4729446 b_lambda!180469)))

(declare-fun bs!1120425 () Bool)

(declare-fun d!1508648 () Bool)

(assert (= bs!1120425 (and d!1508648 b!4729446)))

(assert (=> bs!1120425 (= (dynLambda!21844 lambda!216931 (h!59242 lt!1893283)) (containsKey!3406 (toList!5954 lt!1892771) (h!59242 lt!1893283)))))

(declare-fun m!5673109 () Bool)

(assert (=> bs!1120425 m!5673109))

(assert (=> b!4730492 d!1508648))

(declare-fun b_lambda!180471 () Bool)

(assert (= b_lambda!180391 (or start!481760 b_lambda!180471)))

(declare-fun bs!1120426 () Bool)

(declare-fun d!1508650 () Bool)

(assert (= bs!1120426 (and d!1508650 start!481760)))

(assert (=> bs!1120426 (= (dynLambda!21839 lambda!216768 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023))))) (noDuplicateKeys!2032 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> bs!1120426 m!5673013))

(assert (=> b!4730435 d!1508650))

(declare-fun b_lambda!180473 () Bool)

(assert (= b_lambda!180423 (or d!1507436 b_lambda!180473)))

(declare-fun bs!1120427 () Bool)

(declare-fun d!1508652 () Bool)

(assert (= bs!1120427 (and d!1508652 d!1507436)))

(assert (=> bs!1120427 (= (dynLambda!21841 lambda!216936 (h!59237 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))) (contains!16239 lt!1893313 (_1!30555 (h!59237 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))))

(declare-fun m!5673111 () Bool)

(assert (=> bs!1120427 m!5673111))

(assert (=> b!4730606 d!1508652))

(declare-fun b_lambda!180475 () Bool)

(assert (= b_lambda!180073 (or (and b!4729036 (= lambda!216873 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507922 (= lambda!217002 (ite c!807618 lambda!216871 lambda!216873))) (and d!1508216 (= lambda!217026 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507846 (= lambda!216993 (ite c!807618 lambda!216871 lambda!216873))) (and b!4730650 (= lambda!217045 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507900 (= lambda!216996 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507458 (= lambda!216945 (ite c!807618 lambda!216871 lambda!216873))) (and d!1508604 (= lambda!217047 (ite c!807618 lambda!216871 lambda!216873))) (and d!1508104 (= lambda!217025 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729530 (= lambda!216944 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507466 (= lambda!216949 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729533 (= lambda!216942 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729487 (= lambda!216934 (ite c!807618 lambda!216871 lambda!216873))) (and b!4730653 (= lambda!217044 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507436 (= lambda!216936 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729036 (= lambda!216872 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729039 (= lambda!216871 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507074 (= lambda!216840 (ite c!807618 lambda!216871 lambda!216873))) (and b!4730355 (= lambda!217024 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729487 (= lambda!216935 (ite c!807618 lambda!216871 lambda!216873))) (and b!4730355 (= lambda!217023 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729490 (= lambda!216933 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729912 (= lambda!216989 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729915 (= lambda!216988 (ite c!807618 lambda!216871 lambda!216873))) (and d!1508462 (= lambda!217031 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507456 (= lambda!216941 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507798 (= lambda!216992 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729912 (= lambda!216990 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507090 (= lambda!216874 (ite c!807618 lambda!216871 lambda!216873))) (and d!1508550 (= lambda!217033 (ite c!807618 lambda!216871 lambda!216873))) (and d!1508590 (= lambda!217039 (ite c!807618 lambda!216871 lambda!216873))) (and b!4730650 (= lambda!217046 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507116 (= lambda!216876 (ite c!807618 lambda!216871 lambda!216873))) (and d!1508518 (= lambda!217032 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729530 (= lambda!216943 (ite c!807618 lambda!216871 lambda!216873))) (and b!4730358 (= lambda!217022 (ite c!807618 lambda!216871 lambda!216873))) b_lambda!180475)))

(declare-fun bs!1120428 () Bool)

(declare-fun d!1508654 () Bool)

(assert (= bs!1120428 (and d!1508654 b!4729915)))

(assert (=> bs!1120428 (= (dynLambda!21841 lambda!216988 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120428 m!5670425))

(declare-fun m!5673113 () Bool)

(assert (=> bs!1120428 m!5673113))

(assert (=> (and b!4729915 (= lambda!216988 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508654))

(declare-fun bs!1120429 () Bool)

(declare-fun d!1508656 () Bool)

(assert (= bs!1120429 (and d!1508656 b!4729036)))

(assert (=> bs!1120429 (= (dynLambda!21841 lambda!216873 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893054 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun m!5673115 () Bool)

(assert (=> bs!1120429 m!5673115))

(assert (=> (and b!4729036 (= lambda!216873 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508656))

(declare-fun bs!1120430 () Bool)

(declare-fun d!1508658 () Bool)

(assert (= bs!1120430 (and d!1508658 d!1507798)))

(assert (=> bs!1120430 (= (dynLambda!21841 lambda!216992 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893564 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun m!5673117 () Bool)

(assert (=> bs!1120430 m!5673117))

(assert (=> (and d!1507798 (= lambda!216992 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508658))

(declare-fun bs!1120431 () Bool)

(declare-fun d!1508660 () Bool)

(assert (= bs!1120431 (and d!1508660 d!1507900)))

(assert (=> bs!1120431 (= (dynLambda!21841 lambda!216996 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= (hash!4413 hashF!1323 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (_1!30556 (h!59238 (toList!5953 lm!2023)))))))

(declare-fun m!5673119 () Bool)

(assert (=> bs!1120431 m!5673119))

(assert (=> (and d!1507900 (= lambda!216996 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508660))

(declare-fun bs!1120432 () Bool)

(declare-fun d!1508662 () Bool)

(assert (= bs!1120432 (and d!1508662 d!1508518)))

(assert (=> bs!1120432 (= (dynLambda!21841 lambda!217032 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120432 m!5669683))

(declare-fun m!5673121 () Bool)

(assert (=> bs!1120432 m!5673121))

(assert (=> (and d!1508518 (= lambda!217032 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508662))

(declare-fun bs!1120433 () Bool)

(declare-fun d!1508664 () Bool)

(assert (= bs!1120433 (and d!1508664 d!1507466)))

(assert (=> bs!1120433 (= (dynLambda!21841 lambda!216949 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120433 m!5669357))

(declare-fun m!5673123 () Bool)

(assert (=> bs!1120433 m!5673123))

(assert (=> (and d!1507466 (= lambda!216949 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508664))

(declare-fun bs!1120434 () Bool)

(declare-fun d!1508666 () Bool)

(assert (= bs!1120434 (and d!1508666 b!4730650)))

(assert (=> bs!1120434 (= (dynLambda!21841 lambda!217045 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120434 m!5670575))

(declare-fun m!5673125 () Bool)

(assert (=> bs!1120434 m!5673125))

(assert (=> (and b!4730650 (= lambda!217045 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508666))

(declare-fun bs!1120435 () Bool)

(declare-fun d!1508668 () Bool)

(assert (= bs!1120435 (and d!1508668 d!1507116)))

(assert (=> bs!1120435 (= (dynLambda!21841 lambda!216876 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= (hash!4413 hashF!1323 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))) hash!405))))

(assert (=> bs!1120435 m!5673119))

(assert (=> (and d!1507116 (= lambda!216876 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508668))

(declare-fun bs!1120436 () Bool)

(declare-fun d!1508670 () Bool)

(assert (= bs!1120436 (and d!1508670 d!1507436)))

(assert (=> bs!1120436 (= (dynLambda!21841 lambda!216936 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893313 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun m!5673127 () Bool)

(assert (=> bs!1120436 m!5673127))

(assert (=> (and d!1507436 (= lambda!216936 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508670))

(declare-fun bs!1120437 () Bool)

(declare-fun d!1508672 () Bool)

(assert (= bs!1120437 (and d!1508672 b!4729912)))

(assert (=> bs!1120437 (= (dynLambda!21841 lambda!216990 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893553 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun m!5673129 () Bool)

(assert (=> bs!1120437 m!5673129))

(assert (=> (and b!4729912 (= lambda!216990 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508672))

(declare-fun bs!1120438 () Bool)

(declare-fun d!1508674 () Bool)

(assert (= bs!1120438 (and d!1508674 b!4729530)))

(assert (=> bs!1120438 (= (dynLambda!21841 lambda!216944 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893357 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun m!5673131 () Bool)

(assert (=> bs!1120438 m!5673131))

(assert (=> (and b!4729530 (= lambda!216944 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508674))

(declare-fun bs!1120439 () Bool)

(declare-fun d!1508676 () Bool)

(assert (= bs!1120439 (and d!1508676 d!1507074)))

(assert (=> bs!1120439 (= (dynLambda!21841 lambda!216840 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= (hash!4413 hashF!1323 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))) hash!405))))

(assert (=> bs!1120439 m!5673119))

(assert (=> (and d!1507074 (= lambda!216840 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508676))

(declare-fun bs!1120440 () Bool)

(declare-fun d!1508678 () Bool)

(assert (= bs!1120440 (and d!1508678 d!1507456)))

(assert (=> bs!1120440 (= (dynLambda!21841 lambda!216941 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893054 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120440 m!5673115))

(assert (=> (and d!1507456 (= lambda!216941 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508678))

(declare-fun bs!1120441 () Bool)

(declare-fun d!1508680 () Bool)

(assert (= bs!1120441 (and d!1508680 b!4730358)))

(assert (=> bs!1120441 (= (dynLambda!21841 lambda!217022 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120441 m!5670541))

(declare-fun m!5673133 () Bool)

(assert (=> bs!1120441 m!5673133))

(assert (=> (and b!4730358 (= lambda!217022 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508680))

(declare-fun bs!1120442 () Bool)

(declare-fun d!1508682 () Bool)

(assert (= bs!1120442 (and d!1508682 d!1507090)))

(assert (=> bs!1120442 (= (dynLambda!21841 lambda!216874 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893065 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun m!5673135 () Bool)

(assert (=> bs!1120442 m!5673135))

(assert (=> (and d!1507090 (= lambda!216874 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508682))

(declare-fun bs!1120443 () Bool)

(declare-fun d!1508684 () Bool)

(assert (= bs!1120443 (and d!1508684 b!4729039)))

(assert (=> bs!1120443 (= (dynLambda!21841 lambda!216871 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120443 m!5669357))

(assert (=> bs!1120443 m!5673123))

(assert (=> (and b!4729039 (= lambda!216871 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508684))

(declare-fun bs!1120444 () Bool)

(declare-fun d!1508686 () Bool)

(assert (= bs!1120444 (and d!1508686 b!4730355)))

(assert (=> bs!1120444 (= (dynLambda!21841 lambda!217024 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893817 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun m!5673137 () Bool)

(assert (=> bs!1120444 m!5673137))

(assert (=> (and b!4730355 (= lambda!217024 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508686))

(declare-fun bs!1120445 () Bool)

(declare-fun d!1508688 () Bool)

(assert (= bs!1120445 (and d!1508688 d!1508590)))

(assert (=> bs!1120445 (= (dynLambda!21841 lambda!217039 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893054 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120445 m!5673115))

(assert (=> (and d!1508590 (= lambda!217039 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508688))

(declare-fun bs!1120446 () Bool)

(declare-fun d!1508690 () Bool)

(assert (= bs!1120446 (and d!1508690 b!4729533)))

(assert (=> bs!1120446 (= (dynLambda!21841 lambda!216942 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120446 m!5669717))

(declare-fun m!5673139 () Bool)

(assert (=> bs!1120446 m!5673139))

(assert (=> (and b!4729533 (= lambda!216942 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508690))

(declare-fun bs!1120447 () Bool)

(declare-fun d!1508692 () Bool)

(assert (= bs!1120447 (and d!1508692 b!4729036)))

(assert (=> bs!1120447 (= (dynLambda!21841 lambda!216872 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120447 m!5669357))

(assert (=> bs!1120447 m!5673123))

(assert (=> (and b!4729036 (= lambda!216872 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508692))

(declare-fun bs!1120448 () Bool)

(declare-fun d!1508694 () Bool)

(assert (= bs!1120448 (and d!1508694 d!1508216)))

(assert (=> bs!1120448 (= (dynLambda!21841 lambda!217026 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893357 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120448 m!5673131))

(assert (=> (and d!1508216 (= lambda!217026 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508694))

(declare-fun bs!1120449 () Bool)

(declare-fun d!1508696 () Bool)

(assert (= bs!1120449 (and d!1508696 b!4729487)))

(assert (=> bs!1120449 (= (dynLambda!21841 lambda!216934 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120449 m!5669683))

(assert (=> bs!1120449 m!5673121))

(assert (=> (and b!4729487 (= lambda!216934 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508696))

(declare-fun bs!1120450 () Bool)

(declare-fun d!1508698 () Bool)

(assert (= bs!1120450 (and d!1508698 d!1507922)))

(assert (=> bs!1120450 (= (dynLambda!21841 lambda!217002 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120450 m!5669357))

(assert (=> bs!1120450 m!5673123))

(assert (=> (and d!1507922 (= lambda!217002 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508698))

(declare-fun bs!1120451 () Bool)

(declare-fun d!1508700 () Bool)

(assert (= bs!1120451 (and d!1508700 b!4730355)))

(assert (=> bs!1120451 (= (dynLambda!21841 lambda!217023 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120451 m!5670541))

(assert (=> bs!1120451 m!5673133))

(assert (=> (and b!4730355 (= lambda!217023 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508700))

(declare-fun bs!1120452 () Bool)

(declare-fun d!1508702 () Bool)

(assert (= bs!1120452 (and d!1508702 b!4729490)))

(assert (=> bs!1120452 (= (dynLambda!21841 lambda!216933 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120452 m!5669683))

(assert (=> bs!1120452 m!5673121))

(assert (=> (and b!4729490 (= lambda!216933 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508702))

(declare-fun bs!1120453 () Bool)

(declare-fun d!1508704 () Bool)

(assert (= bs!1120453 (and d!1508704 b!4729530)))

(assert (=> bs!1120453 (= (dynLambda!21841 lambda!216943 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120453 m!5669717))

(assert (=> bs!1120453 m!5673139))

(assert (=> (and b!4729530 (= lambda!216943 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508704))

(declare-fun bs!1120454 () Bool)

(declare-fun d!1508706 () Bool)

(assert (= bs!1120454 (and d!1508706 d!1508104)))

(assert (=> bs!1120454 (= (dynLambda!21841 lambda!217025 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893828 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun m!5673141 () Bool)

(assert (=> bs!1120454 m!5673141))

(assert (=> (and d!1508104 (= lambda!217025 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508706))

(declare-fun bs!1120455 () Bool)

(declare-fun d!1508708 () Bool)

(assert (= bs!1120455 (and d!1508708 b!4730650)))

(assert (=> bs!1120455 (= (dynLambda!21841 lambda!217046 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893944 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun m!5673143 () Bool)

(assert (=> bs!1120455 m!5673143))

(assert (=> (and b!4730650 (= lambda!217046 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508708))

(declare-fun bs!1120456 () Bool)

(declare-fun d!1508710 () Bool)

(assert (= bs!1120456 (and d!1508710 b!4729487)))

(assert (=> bs!1120456 (= (dynLambda!21841 lambda!216935 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893302 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun m!5673145 () Bool)

(assert (=> bs!1120456 m!5673145))

(assert (=> (and b!4729487 (= lambda!216935 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508710))

(declare-fun bs!1120457 () Bool)

(declare-fun d!1508712 () Bool)

(assert (= bs!1120457 (and d!1508712 d!1508462)))

(assert (=> bs!1120457 (= (dynLambda!21841 lambda!217031 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (= (hash!4413 hashF!1323 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (_1!30556 (h!59238 (toList!5953 (ListLongMap!4484 lt!1892767))))))))

(assert (=> bs!1120457 m!5673119))

(assert (=> (and d!1508462 (= lambda!217031 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508712))

(declare-fun bs!1120458 () Bool)

(declare-fun d!1508714 () Bool)

(assert (= bs!1120458 (and d!1508714 d!1508604)))

(assert (=> bs!1120458 (= (dynLambda!21841 lambda!217047 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893955 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun m!5673147 () Bool)

(assert (=> bs!1120458 m!5673147))

(assert (=> (and d!1508604 (= lambda!217047 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508714))

(declare-fun bs!1120459 () Bool)

(declare-fun d!1508716 () Bool)

(assert (= bs!1120459 (and d!1508716 b!4730653)))

(assert (=> bs!1120459 (= (dynLambda!21841 lambda!217044 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120459 m!5670575))

(assert (=> bs!1120459 m!5673125))

(assert (=> (and b!4730653 (= lambda!217044 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508716))

(declare-fun bs!1120460 () Bool)

(declare-fun d!1508718 () Bool)

(assert (= bs!1120460 (and d!1508718 b!4729912)))

(assert (=> bs!1120460 (= (dynLambda!21841 lambda!216989 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120460 m!5670425))

(assert (=> bs!1120460 m!5673113))

(assert (=> (and b!4729912 (= lambda!216989 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508718))

(declare-fun bs!1120461 () Bool)

(declare-fun d!1508720 () Bool)

(assert (= bs!1120461 (and d!1508720 d!1507458)))

(assert (=> bs!1120461 (= (dynLambda!21841 lambda!216945 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893368 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun m!5673149 () Bool)

(assert (=> bs!1120461 m!5673149))

(assert (=> (and d!1507458 (= lambda!216945 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508720))

(declare-fun bs!1120462 () Bool)

(declare-fun d!1508722 () Bool)

(assert (= bs!1120462 (and d!1508722 d!1508550)))

(assert (=> bs!1120462 (= (dynLambda!21841 lambda!217033 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120462 m!5669717))

(assert (=> bs!1120462 m!5673139))

(assert (=> (and d!1508550 (= lambda!217033 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508722))

(declare-fun bs!1120463 () Bool)

(declare-fun d!1508724 () Bool)

(assert (= bs!1120463 (and d!1508724 d!1507846)))

(assert (=> bs!1120463 (= (dynLambda!21841 lambda!216993 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893302 (_1!30555 (h!59237 (ite c!807618 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))) (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120463 m!5673145))

(assert (=> (and d!1507846 (= lambda!216993 (ite c!807618 lambda!216871 lambda!216873)) b!4729403) d!1508724))

(declare-fun b_lambda!180477 () Bool)

(assert (= b_lambda!180441 (or d!1507038 b_lambda!180477)))

(declare-fun bs!1120464 () Bool)

(declare-fun d!1508726 () Bool)

(assert (= bs!1120464 (and d!1508726 d!1507038)))

(assert (=> bs!1120464 (= (dynLambda!21839 lambda!216825 (h!59238 (t!360279 (toList!5953 lm!2023)))) (noDuplicateKeys!2032 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> bs!1120464 m!5670561))

(assert (=> b!4730646 d!1508726))

(declare-fun b_lambda!180479 () Bool)

(assert (= b_lambda!180099 (or (and b!4729036 (= lambda!216873 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507922 (= lambda!217002 (ite c!807618 lambda!216871 lambda!216873))) (and d!1508216 (= lambda!217026 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507846 (= lambda!216993 (ite c!807618 lambda!216871 lambda!216873))) (and b!4730650 (= lambda!217045 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507900 (= lambda!216996 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507458 (= lambda!216945 (ite c!807618 lambda!216871 lambda!216873))) (and d!1508604 (= lambda!217047 (ite c!807618 lambda!216871 lambda!216873))) (and d!1508104 (= lambda!217025 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729530 (= lambda!216944 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507466 (= lambda!216949 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729533 (= lambda!216942 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729487 (= lambda!216934 (ite c!807618 lambda!216871 lambda!216873))) (and b!4730653 (= lambda!217044 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507436 (= lambda!216936 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729036 (= lambda!216872 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729039 (= lambda!216871 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507074 (= lambda!216840 (ite c!807618 lambda!216871 lambda!216873))) (and b!4730355 (= lambda!217024 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729487 (= lambda!216935 (ite c!807618 lambda!216871 lambda!216873))) (and b!4730355 (= lambda!217023 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729490 (= lambda!216933 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729912 (= lambda!216989 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729915 (= lambda!216988 (ite c!807618 lambda!216871 lambda!216873))) (and d!1508462 (= lambda!217031 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507456 (= lambda!216941 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507798 (= lambda!216992 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729912 (= lambda!216990 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507090 (= lambda!216874 (ite c!807618 lambda!216871 lambda!216873))) (and d!1508550 (= lambda!217033 (ite c!807618 lambda!216871 lambda!216873))) (and d!1508590 (= lambda!217039 (ite c!807618 lambda!216871 lambda!216873))) (and b!4730650 (= lambda!217046 (ite c!807618 lambda!216871 lambda!216873))) (and d!1507116 (= lambda!216876 (ite c!807618 lambda!216871 lambda!216873))) (and d!1508518 (= lambda!217032 (ite c!807618 lambda!216871 lambda!216873))) (and b!4729530 (= lambda!216943 (ite c!807618 lambda!216871 lambda!216873))) (and b!4730358 (= lambda!217022 (ite c!807618 lambda!216871 lambda!216873))) b_lambda!180479)))

(declare-fun bs!1120465 () Bool)

(declare-fun d!1508728 () Bool)

(assert (= bs!1120465 (and d!1508728 d!1508518)))

(assert (=> bs!1120465 (= (dynLambda!21841 lambda!217032 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120465 m!5669683))

(declare-fun m!5673151 () Bool)

(assert (=> bs!1120465 m!5673151))

(assert (=> (and d!1508518 (= lambda!217032 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508728))

(declare-fun bs!1120466 () Bool)

(declare-fun d!1508730 () Bool)

(assert (= bs!1120466 (and d!1508730 b!4729039)))

(assert (=> bs!1120466 (= (dynLambda!21841 lambda!216871 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120466 m!5669357))

(assert (=> bs!1120466 m!5670667))

(assert (=> (and b!4729039 (= lambda!216871 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508730))

(declare-fun bs!1120467 () Bool)

(declare-fun d!1508732 () Bool)

(assert (= bs!1120467 (and d!1508732 d!1507090)))

(assert (=> bs!1120467 (= (dynLambda!21841 lambda!216874 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893065 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120467 m!5670671))

(assert (=> (and d!1507090 (= lambda!216874 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508732))

(declare-fun bs!1120468 () Bool)

(declare-fun d!1508734 () Bool)

(assert (= bs!1120468 (and d!1508734 b!4729915)))

(assert (=> bs!1120468 (= (dynLambda!21841 lambda!216988 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120468 m!5670425))

(declare-fun m!5673153 () Bool)

(assert (=> bs!1120468 m!5673153))

(assert (=> (and b!4729915 (= lambda!216988 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508734))

(declare-fun bs!1120469 () Bool)

(declare-fun d!1508736 () Bool)

(assert (= bs!1120469 (and d!1508736 b!4730355)))

(assert (=> bs!1120469 (= (dynLambda!21841 lambda!217024 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893817 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun m!5673155 () Bool)

(assert (=> bs!1120469 m!5673155))

(assert (=> (and b!4730355 (= lambda!217024 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508736))

(declare-fun bs!1120470 () Bool)

(declare-fun d!1508738 () Bool)

(assert (= bs!1120470 (and d!1508738 d!1507922)))

(assert (=> bs!1120470 (= (dynLambda!21841 lambda!217002 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120470 m!5669357))

(assert (=> bs!1120470 m!5670667))

(assert (=> (and d!1507922 (= lambda!217002 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508738))

(declare-fun bs!1120471 () Bool)

(declare-fun d!1508740 () Bool)

(assert (= bs!1120471 (and d!1508740 d!1508104)))

(assert (=> bs!1120471 (= (dynLambda!21841 lambda!217025 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893828 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun m!5673157 () Bool)

(assert (=> bs!1120471 m!5673157))

(assert (=> (and d!1508104 (= lambda!217025 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508740))

(declare-fun bs!1120472 () Bool)

(declare-fun d!1508742 () Bool)

(assert (= bs!1120472 (and d!1508742 d!1508462)))

(assert (=> bs!1120472 (= (dynLambda!21841 lambda!217031 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (= (hash!4413 hashF!1323 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))) (_1!30556 (h!59238 (toList!5953 (ListLongMap!4484 lt!1892767))))))))

(declare-fun m!5673159 () Bool)

(assert (=> bs!1120472 m!5673159))

(assert (=> (and d!1508462 (= lambda!217031 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508742))

(declare-fun bs!1120473 () Bool)

(declare-fun d!1508744 () Bool)

(assert (= bs!1120473 (and d!1508744 d!1507458)))

(assert (=> bs!1120473 (= (dynLambda!21841 lambda!216945 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893368 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun m!5673161 () Bool)

(assert (=> bs!1120473 m!5673161))

(assert (=> (and d!1507458 (= lambda!216945 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508744))

(declare-fun bs!1120474 () Bool)

(declare-fun d!1508746 () Bool)

(assert (= bs!1120474 (and d!1508746 b!4729036)))

(assert (=> bs!1120474 (= (dynLambda!21841 lambda!216872 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120474 m!5669357))

(assert (=> bs!1120474 m!5670667))

(assert (=> (and b!4729036 (= lambda!216872 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508746))

(declare-fun bs!1120475 () Bool)

(declare-fun d!1508748 () Bool)

(assert (= bs!1120475 (and d!1508748 b!4729487)))

(assert (=> bs!1120475 (= (dynLambda!21841 lambda!216934 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120475 m!5669683))

(assert (=> bs!1120475 m!5673151))

(assert (=> (and b!4729487 (= lambda!216934 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508748))

(declare-fun bs!1120476 () Bool)

(declare-fun d!1508750 () Bool)

(assert (= bs!1120476 (and d!1508750 b!4729912)))

(assert (=> bs!1120476 (= (dynLambda!21841 lambda!216990 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893553 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun m!5673163 () Bool)

(assert (=> bs!1120476 m!5673163))

(assert (=> (and b!4729912 (= lambda!216990 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508750))

(declare-fun bs!1120477 () Bool)

(declare-fun d!1508752 () Bool)

(assert (= bs!1120477 (and d!1508752 d!1507074)))

(assert (=> bs!1120477 (= (dynLambda!21841 lambda!216840 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (= (hash!4413 hashF!1323 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))) hash!405))))

(assert (=> bs!1120477 m!5673159))

(assert (=> (and d!1507074 (= lambda!216840 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508752))

(declare-fun bs!1120478 () Bool)

(declare-fun d!1508754 () Bool)

(assert (= bs!1120478 (and d!1508754 d!1508216)))

(assert (=> bs!1120478 (= (dynLambda!21841 lambda!217026 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893357 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun m!5673165 () Bool)

(assert (=> bs!1120478 m!5673165))

(assert (=> (and d!1508216 (= lambda!217026 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508754))

(declare-fun bs!1120479 () Bool)

(declare-fun d!1508756 () Bool)

(assert (= bs!1120479 (and d!1508756 b!4729533)))

(assert (=> bs!1120479 (= (dynLambda!21841 lambda!216942 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120479 m!5669717))

(declare-fun m!5673167 () Bool)

(assert (=> bs!1120479 m!5673167))

(assert (=> (and b!4729533 (= lambda!216942 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508756))

(declare-fun bs!1120480 () Bool)

(declare-fun d!1508758 () Bool)

(assert (= bs!1120480 (and d!1508758 d!1507436)))

(assert (=> bs!1120480 (= (dynLambda!21841 lambda!216936 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893313 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun m!5673169 () Bool)

(assert (=> bs!1120480 m!5673169))

(assert (=> (and d!1507436 (= lambda!216936 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508758))

(declare-fun bs!1120481 () Bool)

(declare-fun d!1508760 () Bool)

(assert (= bs!1120481 (and d!1508760 d!1507900)))

(assert (=> bs!1120481 (= (dynLambda!21841 lambda!216996 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (= (hash!4413 hashF!1323 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))) (_1!30556 (h!59238 (toList!5953 lm!2023)))))))

(assert (=> bs!1120481 m!5673159))

(assert (=> (and d!1507900 (= lambda!216996 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508760))

(declare-fun bs!1120482 () Bool)

(declare-fun d!1508762 () Bool)

(assert (= bs!1120482 (and d!1508762 d!1507116)))

(assert (=> bs!1120482 (= (dynLambda!21841 lambda!216876 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (= (hash!4413 hashF!1323 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))) hash!405))))

(assert (=> bs!1120482 m!5673159))

(assert (=> (and d!1507116 (= lambda!216876 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508762))

(declare-fun bs!1120483 () Bool)

(declare-fun d!1508764 () Bool)

(assert (= bs!1120483 (and d!1508764 b!4729487)))

(assert (=> bs!1120483 (= (dynLambda!21841 lambda!216935 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893302 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun m!5673171 () Bool)

(assert (=> bs!1120483 m!5673171))

(assert (=> (and b!4729487 (= lambda!216935 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508764))

(declare-fun bs!1120484 () Bool)

(declare-fun d!1508766 () Bool)

(assert (= bs!1120484 (and d!1508766 b!4730653)))

(assert (=> bs!1120484 (= (dynLambda!21841 lambda!217044 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120484 m!5670575))

(declare-fun m!5673173 () Bool)

(assert (=> bs!1120484 m!5673173))

(assert (=> (and b!4730653 (= lambda!217044 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508766))

(declare-fun bs!1120485 () Bool)

(declare-fun d!1508768 () Bool)

(assert (= bs!1120485 (and d!1508768 d!1507466)))

(assert (=> bs!1120485 (= (dynLambda!21841 lambda!216949 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120485 m!5669357))

(assert (=> bs!1120485 m!5670667))

(assert (=> (and d!1507466 (= lambda!216949 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508768))

(declare-fun bs!1120486 () Bool)

(declare-fun d!1508770 () Bool)

(assert (= bs!1120486 (and d!1508770 b!4730358)))

(assert (=> bs!1120486 (= (dynLambda!21841 lambda!217022 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120486 m!5670541))

(declare-fun m!5673175 () Bool)

(assert (=> bs!1120486 m!5673175))

(assert (=> (and b!4730358 (= lambda!217022 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508770))

(declare-fun bs!1120487 () Bool)

(declare-fun d!1508772 () Bool)

(assert (= bs!1120487 (and d!1508772 b!4729490)))

(assert (=> bs!1120487 (= (dynLambda!21841 lambda!216933 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120487 m!5669683))

(assert (=> bs!1120487 m!5673151))

(assert (=> (and b!4729490 (= lambda!216933 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508772))

(declare-fun bs!1120488 () Bool)

(declare-fun d!1508774 () Bool)

(assert (= bs!1120488 (and d!1508774 d!1507846)))

(assert (=> bs!1120488 (= (dynLambda!21841 lambda!216993 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893302 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120488 m!5673171))

(assert (=> (and d!1507846 (= lambda!216993 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508774))

(declare-fun bs!1120489 () Bool)

(declare-fun d!1508776 () Bool)

(assert (= bs!1120489 (and d!1508776 b!4729530)))

(assert (=> bs!1120489 (= (dynLambda!21841 lambda!216943 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120489 m!5669717))

(assert (=> bs!1120489 m!5673167))

(assert (=> (and b!4729530 (= lambda!216943 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508776))

(declare-fun bs!1120490 () Bool)

(declare-fun d!1508778 () Bool)

(assert (= bs!1120490 (and d!1508778 b!4729912)))

(assert (=> bs!1120490 (= (dynLambda!21841 lambda!216989 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (+!2280 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120490 m!5670425))

(assert (=> bs!1120490 m!5673153))

(assert (=> (and b!4729912 (= lambda!216989 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508778))

(declare-fun bs!1120491 () Bool)

(declare-fun d!1508780 () Bool)

(assert (= bs!1120491 (and d!1508780 b!4729530)))

(assert (=> bs!1120491 (= (dynLambda!21841 lambda!216944 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893357 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120491 m!5673165))

(assert (=> (and b!4729530 (= lambda!216944 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508780))

(declare-fun bs!1120492 () Bool)

(declare-fun d!1508782 () Bool)

(assert (= bs!1120492 (and d!1508782 b!4730650)))

(assert (=> bs!1120492 (= (dynLambda!21841 lambda!217045 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (t!360279 (t!360279 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120492 m!5670575))

(assert (=> bs!1120492 m!5673173))

(assert (=> (and b!4730650 (= lambda!217045 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508782))

(declare-fun bs!1120493 () Bool)

(declare-fun d!1508784 () Bool)

(assert (= bs!1120493 (and d!1508784 b!4730650)))

(assert (=> bs!1120493 (= (dynLambda!21841 lambda!217046 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893944 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun m!5673177 () Bool)

(assert (=> bs!1120493 m!5673177))

(assert (=> (and b!4730650 (= lambda!217046 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508784))

(declare-fun bs!1120494 () Bool)

(declare-fun d!1508786 () Bool)

(assert (= bs!1120494 (and d!1508786 d!1508550)))

(assert (=> bs!1120494 (= (dynLambda!21841 lambda!217033 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120494 m!5669717))

(assert (=> bs!1120494 m!5673167))

(assert (=> (and d!1508550 (= lambda!217033 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508786))

(declare-fun bs!1120495 () Bool)

(declare-fun d!1508788 () Bool)

(assert (= bs!1120495 (and d!1508788 d!1507798)))

(assert (=> bs!1120495 (= (dynLambda!21841 lambda!216992 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893564 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun m!5673179 () Bool)

(assert (=> bs!1120495 m!5673179))

(assert (=> (and d!1507798 (= lambda!216992 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508788))

(declare-fun bs!1120496 () Bool)

(declare-fun d!1508790 () Bool)

(assert (= bs!1120496 (and d!1508790 d!1508604)))

(assert (=> bs!1120496 (= (dynLambda!21841 lambda!217047 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893955 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(declare-fun m!5673181 () Bool)

(assert (=> bs!1120496 m!5673181))

(assert (=> (and d!1508604 (= lambda!217047 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508790))

(declare-fun bs!1120497 () Bool)

(declare-fun d!1508792 () Bool)

(assert (= bs!1120497 (and d!1508792 d!1508590)))

(assert (=> bs!1120497 (= (dynLambda!21841 lambda!217039 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893054 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120497 m!5670685))

(assert (=> (and d!1508590 (= lambda!217039 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508792))

(declare-fun bs!1120498 () Bool)

(declare-fun d!1508794 () Bool)

(assert (= bs!1120498 (and d!1508794 b!4729036)))

(assert (=> bs!1120498 (= (dynLambda!21841 lambda!216873 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893054 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120498 m!5670685))

(assert (=> (and b!4729036 (= lambda!216873 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508794))

(declare-fun bs!1120499 () Bool)

(declare-fun d!1508796 () Bool)

(assert (= bs!1120499 (and d!1508796 b!4730355)))

(assert (=> bs!1120499 (= (dynLambda!21841 lambda!217023 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (+!2280 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (h!59237 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120499 m!5670541))

(assert (=> bs!1120499 m!5673175))

(assert (=> (and b!4730355 (= lambda!217023 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508796))

(declare-fun bs!1120500 () Bool)

(declare-fun d!1508798 () Bool)

(assert (= bs!1120500 (and d!1508798 d!1507456)))

(assert (=> bs!1120500 (= (dynLambda!21841 lambda!216941 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 lt!1893054 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120500 m!5670685))

(assert (=> (and d!1507456 (= lambda!216941 (ite c!807618 lambda!216871 lambda!216873)) b!4729549) d!1508798))

(declare-fun b_lambda!180481 () Bool)

(assert (= b_lambda!180275 (or b!4729530 b_lambda!180481)))

(declare-fun bs!1120501 () Bool)

(declare-fun d!1508800 () Bool)

(assert (= bs!1120501 (and d!1508800 b!4729530)))

(assert (=> bs!1120501 (= (dynLambda!21841 lambda!216943 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))))) (contains!16239 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))))))))))

(assert (=> bs!1120501 m!5669717))

(declare-fun m!5673183 () Bool)

(assert (=> bs!1120501 m!5673183))

(assert (=> b!4730346 d!1508800))

(declare-fun b_lambda!180483 () Bool)

(assert (= b_lambda!180221 (or b!4729487 b_lambda!180483)))

(assert (=> b!4730015 d!1508632))

(declare-fun b_lambda!180485 () Bool)

(assert (= b_lambda!180411 (or b!4729036 b_lambda!180485)))

(declare-fun bs!1120502 () Bool)

(declare-fun d!1508802 () Bool)

(assert (= bs!1120502 (and d!1508802 b!4729036)))

(assert (=> bs!1120502 (= (dynLambda!21841 lambda!216872 (h!59237 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))) (contains!16239 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (_1!30555 (h!59237 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))))

(assert (=> bs!1120502 m!5669357))

(declare-fun m!5673185 () Bool)

(assert (=> bs!1120502 m!5673185))

(assert (=> b!4730550 d!1508802))

(declare-fun b_lambda!180487 () Bool)

(assert (= b_lambda!180197 (or d!1507108 b_lambda!180487)))

(declare-fun bs!1120503 () Bool)

(declare-fun d!1508804 () Bool)

(assert (= bs!1120503 (and d!1508804 d!1507108)))

(assert (=> bs!1120503 (= (dynLambda!21839 lambda!216875 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023))))) (noDuplicateKeys!2032 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> bs!1120503 m!5673013))

(assert (=> b!4729896 d!1508804))

(declare-fun b_lambda!180489 () Bool)

(assert (= b_lambda!180249 (or b!4729394 b_lambda!180489)))

(declare-fun bs!1120504 () Bool)

(declare-fun d!1508806 () Bool)

(assert (= bs!1120504 (and d!1508806 b!4729394)))

(assert (=> bs!1120504 (= (dynLambda!21844 lambda!216923 (_1!30555 (h!59237 (toList!5954 lt!1892771)))) (containsKey!3406 (t!360278 (toList!5954 lt!1892771)) (_1!30555 (h!59237 (toList!5954 lt!1892771)))))))

(assert (=> bs!1120504 m!5670269))

(assert (=> d!1507960 d!1508806))

(declare-fun b_lambda!180491 () Bool)

(assert (= b_lambda!180431 (or d!1507002 b_lambda!180491)))

(assert (=> d!1508568 d!1507532))

(declare-fun b_lambda!180493 () Bool)

(assert (= b_lambda!180395 (or b!4729397 b_lambda!180493)))

(declare-fun bs!1120505 () Bool)

(declare-fun d!1508808 () Bool)

(assert (= bs!1120505 (and d!1508808 b!4729397)))

(assert (=> bs!1120505 (= (dynLambda!21845 lambda!216926 (h!59237 (toList!5954 lt!1892771))) (_1!30555 (h!59237 (toList!5954 lt!1892771))))))

(assert (=> b!4730468 d!1508808))

(declare-fun b_lambda!180495 () Bool)

(assert (= b_lambda!180209 (or b!4729487 b_lambda!180495)))

(declare-fun bs!1120506 () Bool)

(declare-fun d!1508810 () Bool)

(assert (= bs!1120506 (and d!1508810 b!4729487)))

(assert (=> bs!1120506 (= (dynLambda!21841 lambda!216935 (h!59237 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))) (contains!16239 lt!1893302 (_1!30555 (h!59237 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))))

(declare-fun m!5673187 () Bool)

(assert (=> bs!1120506 m!5673187))

(assert (=> b!4729971 d!1508810))

(declare-fun b_lambda!180497 () Bool)

(assert (= b_lambda!180279 (or b!4729530 b_lambda!180497)))

(declare-fun bs!1120507 () Bool)

(declare-fun d!1508812 () Bool)

(assert (= bs!1120507 (and d!1508812 b!4729530)))

(assert (=> bs!1120507 (= (dynLambda!21841 lambda!216944 (h!59237 (toList!5954 lt!1893354))) (contains!16239 lt!1893357 (_1!30555 (h!59237 (toList!5954 lt!1893354)))))))

(declare-fun m!5673189 () Bool)

(assert (=> bs!1120507 m!5673189))

(assert (=> b!4730350 d!1508812))

(declare-fun b_lambda!180499 () Bool)

(assert (= b_lambda!180211 (or b!4729487 b_lambda!180499)))

(declare-fun bs!1120508 () Bool)

(declare-fun d!1508814 () Bool)

(assert (= bs!1120508 (and d!1508814 b!4729487)))

(assert (=> bs!1120508 (= (dynLambda!21841 lambda!216935 (h!59237 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))) (contains!16239 lt!1893302 (_1!30555 (h!59237 (t!360278 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))))))

(declare-fun m!5673191 () Bool)

(assert (=> bs!1120508 m!5673191))

(assert (=> b!4729992 d!1508814))

(declare-fun b_lambda!180501 () Bool)

(assert (= b_lambda!180277 (or b!4729530 b_lambda!180501)))

(declare-fun bs!1120509 () Bool)

(declare-fun d!1508816 () Bool)

(assert (= bs!1120509 (and d!1508816 b!4729530)))

(assert (=> bs!1120509 (= (dynLambda!21841 lambda!216944 (h!59237 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))) (contains!16239 lt!1893357 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))))))))))

(declare-fun m!5673193 () Bool)

(assert (=> bs!1120509 m!5673193))

(assert (=> b!4730348 d!1508816))

(declare-fun b_lambda!180503 () Bool)

(assert (= b_lambda!180195 (or d!1507458 b_lambda!180503)))

(declare-fun bs!1120510 () Bool)

(declare-fun d!1508818 () Bool)

(assert (= bs!1120510 (and d!1508818 d!1507458)))

(assert (=> bs!1120510 (= (dynLambda!21841 lambda!216945 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))))) (contains!16239 lt!1893368 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))))))))))

(declare-fun m!5673195 () Bool)

(assert (=> bs!1120510 m!5673195))

(assert (=> b!4729889 d!1508818))

(declare-fun b_lambda!180505 () Bool)

(assert (= b_lambda!180399 (or d!1507116 b_lambda!180505)))

(declare-fun bs!1120511 () Bool)

(declare-fun d!1508820 () Bool)

(assert (= bs!1120511 (and d!1508820 d!1507116)))

(assert (=> bs!1120511 (= (dynLambda!21841 lambda!216876 (h!59237 (t!360278 newBucket!218))) (= (hash!4413 hashF!1323 (_1!30555 (h!59237 (t!360278 newBucket!218)))) hash!405))))

(declare-fun m!5673197 () Bool)

(assert (=> bs!1120511 m!5673197))

(assert (=> b!4730506 d!1508820))

(declare-fun b_lambda!180507 () Bool)

(assert (= b_lambda!180415 (or d!1507508 b_lambda!180507)))

(declare-fun bs!1120512 () Bool)

(declare-fun d!1508822 () Bool)

(assert (= bs!1120512 (and d!1508822 d!1507508)))

(assert (=> bs!1120512 (= (dynLambda!21839 lambda!216952 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653)))) (noDuplicateKeys!2032 (_2!30556 (tuple2!54525 (hash!4413 hashF!1323 key!4653) (apply!12457 lm!2023 (hash!4413 hashF!1323 key!4653))))))))

(assert (=> bs!1120512 m!5670679))

(assert (=> d!1508514 d!1508822))

(declare-fun b_lambda!180509 () Bool)

(assert (= b_lambda!180407 (or b!4729036 b_lambda!180509)))

(declare-fun bs!1120513 () Bool)

(declare-fun d!1508824 () Bool)

(assert (= bs!1120513 (and d!1508824 b!4729036)))

(assert (=> bs!1120513 (= (dynLambda!21841 lambda!216873 (h!59237 (t!360278 (toList!5954 lt!1893051)))) (contains!16239 lt!1893054 (_1!30555 (h!59237 (t!360278 (toList!5954 lt!1893051))))))))

(declare-fun m!5673199 () Bool)

(assert (=> bs!1120513 m!5673199))

(assert (=> b!4730543 d!1508824))

(declare-fun b_lambda!180511 () Bool)

(assert (= b_lambda!180253 (or b!4729447 b_lambda!180511)))

(declare-fun bs!1120514 () Bool)

(declare-fun d!1508826 () Bool)

(assert (= bs!1120514 (and d!1508826 b!4729447)))

(assert (=> bs!1120514 (= (dynLambda!21845 lambda!216932 (h!59237 (toList!5954 lt!1892771))) (_1!30555 (h!59237 (toList!5954 lt!1892771))))))

(assert (=> b!4730169 d!1508826))

(declare-fun b_lambda!180513 () Bool)

(assert (= b_lambda!180387 (or d!1507002 b_lambda!180513)))

(declare-fun bs!1120515 () Bool)

(declare-fun d!1508828 () Bool)

(assert (= bs!1120515 (and d!1508828 d!1507002)))

(assert (=> bs!1120515 (= (dynLambda!21839 lambda!216819 (h!59238 (t!360279 (toList!5953 lm!2023)))) (noDuplicateKeys!2032 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> bs!1120515 m!5670561))

(assert (=> b!4730415 d!1508828))

(declare-fun b_lambda!180515 () Bool)

(assert (= b_lambda!180243 (or b!4729530 b_lambda!180515)))

(declare-fun bs!1120516 () Bool)

(declare-fun d!1508830 () Bool)

(assert (= bs!1120516 (and d!1508830 b!4729530)))

(assert (=> bs!1120516 (= (dynLambda!21841 lambda!216944 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023))))))) (contains!16239 lt!1893357 (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (t!360279 (toList!5953 lm!2023)))))))))))

(declare-fun m!5673201 () Bool)

(assert (=> bs!1120516 m!5673201))

(assert (=> b!4730087 d!1508830))

(declare-fun b_lambda!180517 () Bool)

(assert (= b_lambda!180233 (or d!1507466 b_lambda!180517)))

(declare-fun bs!1120517 () Bool)

(declare-fun d!1508832 () Bool)

(assert (= bs!1120517 (and d!1508832 d!1507466)))

(assert (=> bs!1120517 (= (dynLambda!21841 lambda!216949 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))) (contains!16239 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (_1!30555 (h!59237 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))))))

(assert (=> bs!1120517 m!5669357))

(assert (=> bs!1120517 m!5670667))

(assert (=> b!4730066 d!1508832))

(declare-fun b_lambda!180519 () Bool)

(assert (= b_lambda!180417 (or d!1507090 b_lambda!180519)))

(declare-fun bs!1120518 () Bool)

(declare-fun d!1508834 () Bool)

(assert (= bs!1120518 (and d!1508834 d!1507090)))

(assert (=> bs!1120518 (= (dynLambda!21841 lambda!216874 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023)))))) (contains!16239 lt!1893065 (_1!30555 (h!59237 (t!360278 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))

(declare-fun m!5673203 () Bool)

(assert (=> bs!1120518 m!5673203))

(assert (=> b!4730592 d!1508834))

(declare-fun b_lambda!180521 () Bool)

(assert (= b_lambda!180421 (or b!4729036 b_lambda!180521)))

(assert (=> d!1508528 d!1507540))

(declare-fun b_lambda!180523 () Bool)

(assert (= b_lambda!180433 (or d!1507048 b_lambda!180523)))

(declare-fun bs!1120519 () Bool)

(declare-fun d!1508836 () Bool)

(assert (= bs!1120519 (and d!1508836 d!1507048)))

(assert (=> bs!1120519 (= (dynLambda!21839 lambda!216835 (h!59238 (t!360279 (toList!5953 lm!2023)))) (noDuplicateKeys!2032 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023))))))))

(assert (=> bs!1120519 m!5670561))

(assert (=> b!4730622 d!1508836))

(declare-fun b_lambda!180525 () Bool)

(assert (= b_lambda!180425 (or d!1506992 b_lambda!180525)))

(declare-fun bs!1120520 () Bool)

(declare-fun d!1508838 () Bool)

(assert (= bs!1120520 (and d!1508838 d!1506992)))

(assert (=> bs!1120520 (= (dynLambda!21839 lambda!216774 (h!59238 (t!360279 (toList!5953 lm!2023)))) (allKeysSameHash!1858 (_2!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))) (_1!30556 (h!59238 (t!360279 (toList!5953 lm!2023)))) hashF!1323))))

(declare-fun m!5673205 () Bool)

(assert (=> bs!1120520 m!5673205))

(assert (=> b!4730610 d!1508838))

(declare-fun b_lambda!180527 () Bool)

(assert (= b_lambda!180281 (or b!4729530 b_lambda!180527)))

(assert (=> b!4730352 d!1508646))

(declare-fun b_lambda!180529 () Bool)

(assert (= b_lambda!180213 (or b!4729487 b_lambda!180529)))

(declare-fun bs!1120521 () Bool)

(declare-fun d!1508840 () Bool)

(assert (= bs!1120521 (and d!1508840 b!4729487)))

(assert (=> bs!1120521 (= (dynLambda!21841 lambda!216934 (h!59237 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023)))))))) (contains!16239 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))) (_1!30555 (h!59237 (toList!5954 (+!2280 (extractMap!2058 (t!360279 (toList!5953 lm!2023))) (h!59237 (_2!30556 (h!59238 (toList!5953 lm!2023))))))))))))

(assert (=> bs!1120521 m!5669683))

(declare-fun m!5673207 () Bool)

(assert (=> bs!1120521 m!5673207))

(assert (=> b!4729994 d!1508840))

(declare-fun b_lambda!180531 () Bool)

(assert (= b_lambda!180419 (or d!1507090 b_lambda!180531)))

(declare-fun bs!1120522 () Bool)

(declare-fun d!1508842 () Bool)

(assert (= bs!1120522 (and d!1508842 d!1507090)))

(assert (=> bs!1120522 (= (dynLambda!21841 lambda!216874 (h!59237 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))) (contains!16239 lt!1893065 (_1!30555 (h!59237 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))))

(declare-fun m!5673209 () Bool)

(assert (=> bs!1120522 m!5673209))

(assert (=> b!4730594 d!1508842))

(declare-fun b_lambda!180533 () Bool)

(assert (= b_lambda!180443 (or d!1507460 b_lambda!180533)))

(declare-fun bs!1120523 () Bool)

(declare-fun d!1508844 () Bool)

(assert (= bs!1120523 (and d!1508844 d!1507460)))

(assert (=> bs!1120523 (= (dynLambda!21839 lambda!216946 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023))))) (noDuplicateKeys!2032 (_2!30556 (h!59238 (t!360279 (t!360279 (toList!5953 lm!2023)))))))))

(assert (=> bs!1120523 m!5673013))

(assert (=> b!4730659 d!1508844))

(declare-fun b_lambda!180535 () Bool)

(assert (= b_lambda!180445 (or d!1507074 b_lambda!180535)))

(declare-fun bs!1120524 () Bool)

(declare-fun d!1508846 () Bool)

(assert (= bs!1120524 (and d!1508846 d!1507074)))

(assert (=> bs!1120524 (= (dynLambda!21841 lambda!216840 (h!59237 (t!360278 oldBucket!34))) (= (hash!4413 hashF!1323 (_1!30555 (h!59237 (t!360278 oldBucket!34)))) hash!405))))

(declare-fun m!5673211 () Bool)

(assert (=> bs!1120524 m!5673211))

(assert (=> b!4730661 d!1508846))

(declare-fun b_lambda!180537 () Bool)

(assert (= b_lambda!180429 (or b!4729036 b_lambda!180537)))

(declare-fun bs!1120525 () Bool)

(declare-fun d!1508848 () Bool)

(assert (= bs!1120525 (and d!1508848 b!4729036)))

(assert (=> bs!1120525 (= (dynLambda!21841 lambda!216873 (h!59237 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023))))))) (contains!16239 lt!1893054 (_1!30555 (h!59237 (t!360278 (toList!5954 (extractMap!2058 (t!360279 (toList!5953 lm!2023)))))))))))

(declare-fun m!5673213 () Bool)

(assert (=> bs!1120525 m!5673213))

(assert (=> b!4730620 d!1508848))

(declare-fun b_lambda!180539 () Bool)

(assert (= b_lambda!180435 (or d!1507060 b_lambda!180539)))

(declare-fun bs!1120526 () Bool)

(declare-fun d!1508850 () Bool)

(assert (= bs!1120526 (and d!1508850 d!1507060)))

(assert (=> bs!1120526 (= (dynLambda!21839 lambda!216836 (h!59238 (t!360279 (toList!5953 (ListLongMap!4484 lt!1892767))))) (allKeysSameHash!1858 (_2!30556 (h!59238 (t!360279 (toList!5953 (ListLongMap!4484 lt!1892767))))) (_1!30556 (h!59238 (t!360279 (toList!5953 (ListLongMap!4484 lt!1892767))))) hashF!1323))))

(declare-fun m!5673215 () Bool)

(assert (=> bs!1120526 m!5673215))

(assert (=> b!4730624 d!1508850))

(check-sat (not b!4730504) (not bs!1120518) (not b_lambda!180521) (not b!4730337) (not b_lambda!180509) (not b!4730636) (not bs!1120499) (not bs!1120424) (not bs!1120447) (not bs!1120525) (not b!4730406) (not b!4730131) (not bs!1120508) (not d!1508370) (not b!4730599) (not bs!1120445) (not b_lambda!180121) (not b!4730670) (not bs!1120524) (not b!4730051) (not bs!1120486) (not b!4730577) (not b!4730091) (not b_lambda!180487) (not d!1508562) (not b!4730025) (not b!4730140) (not d!1508216) (not b!4729993) (not d!1507940) (not d!1508512) (not b!4730536) (not b!4729906) (not bs!1120511) (not b!4730026) (not b!4730507) (not b_lambda!180499) (not b!4730209) (not d!1507998) (not b!4730445) (not b!4729899) (not bs!1120444) (not bs!1120477) (not b!4730479) (not b!4730389) (not b!4730297) (not b!4730516) (not bm!330874) (not b!4730179) (not b!4730648) (not b!4730464) (not b_lambda!180529) (not d!1508390) (not bm!330836) (not b_lambda!180137) (not b!4730570) (not b!4729961) (not b!4730007) (not d!1507974) (not d!1507910) (not b!4730559) (not b!4730671) (not bs!1120431) (not bs!1120414) (not d!1508524) (not b!4729958) (not b_lambda!180469) (not b!4730601) (not b!4730019) (not b!4730582) (not d!1507866) (not b_lambda!180481) (not d!1508426) (not b!4730544) (not bs!1120489) (not b!4730476) (not b!4730686) (not b!4730607) (not b!4730053) (not b!4730471) (not bs!1120476) (not b!4730202) (not b_lambda!180467) (not b!4730462) (not bs!1120487) (not b!4730020) (not b_lambda!180463) (not b!4730660) (not d!1507874) (not b_lambda!180479) (not bs!1120457) (not b!4730611) (not b_lambda!180475) (not bs!1120437) tp_is_empty!31423 (not d!1507944) (not b!4730513) (not d!1508606) (not d!1508576) (not b!4730460) (not b_lambda!180109) (not b!4730172) (not d!1508508) (not b!4730518) (not b!4730652) (not b!4729914) (not b!4730227) (not b_lambda!179979) (not b!4730106) (not bs!1120449) (not b_lambda!180471) (not b!4730017) (not d!1507922) (not b!4730037) (not b!4730392) (not d!1508540) (not b!4730424) (not d!1508086) (not bs!1120450) (not b!4730683) (not b!4730430) (not b!4729893) (not d!1508102) (not b!4730667) (not d!1508040) (not b!4730530) (not d!1508456) (not bs!1120501) (not b_lambda!180531) (not b!4730512) (not d!1508564) (not bs!1120415) (not b!4730597) (not d!1508408) (not bs!1120446) (not b!4730551) (not d!1508622) (not b!4730668) (not bs!1120521) (not bs!1120423) (not b!4730401) (not b!4730338) (not b!4730292) (not b!4730036) (not b!4730655) (not bm!330876) (not b!4730561) (not b!4730421) (not bs!1120510) (not bs!1120497) (not b!4730675) (not b!4730508) (not b!4730357) (not b!4730583) (not b!4730104) (not b!4730052) (not d!1508368) (not b!4730625) (not d!1507794) (not bs!1120443) (not d!1508190) (not d!1508016) (not b!4729907) (not bm!330871) (not b!4730347) (not bs!1120513) (not d!1508516) (not d!1508032) (not d!1508618) (not b!4730341) (not b!4730136) (not b!4730354) (not b_lambda!180135) (not d!1508284) (not b!4730116) (not b_lambda!180505) (not b!4730647) (not d!1508376) (not b!4730522) (not d!1508570) (not d!1507894) (not b!4730478) (not bs!1120452) (not b!4730332) (not bm!330838) (not b!4730204) (not b!4730426) (not b!4730617) (not b_lambda!180141) (not b!4730455) (not bs!1120419) (not bs!1120520) (not b_lambda!180119) (not d!1507778) (not b_lambda!180539) (not bm!330865) (not b!4730623) (not b!4730396) (not b!4730101) (not bs!1120464) (not b!4729895) (not b!4730575) (not d!1508416) (not bs!1120442) (not bs!1120481) (not bm!330882) (not d!1507950) (not b!4730662) (not b!4730649) (not b!4730437) (not d!1507782) (not d!1508014) (not b!4730067) (not bs!1120420) (not d!1508594) (not bs!1120459) (not b!4730541) (not b!4730566) (not d!1507798) (not bs!1120500) (not b_lambda!180145) (not b!4730201) (not d!1508574) (not bs!1120478) (not bs!1120460) (not b!4730603) (not bs!1120466) (not b!4730439) (not b!4730340) (not d!1507954) (not bs!1120484) (not b_lambda!180533) (not d!1508624) (not bs!1120461) (not b_lambda!180139) (not b!4730123) (not b!4730580) (not b!4730503) (not b_lambda!180501) (not b!4730483) (not d!1507956) (not b_lambda!180491) (not b!4730589) (not b_lambda!180455) (not b!4730515) (not b!4730119) (not b!4730567) (not bs!1120502) (not d!1507908) (not b!4730673) (not bs!1120451) (not b!4730629) (not b!4730493) (not d!1508422) (not d!1508430) (not b!4730641) (not b_lambda!180461) (not b!4730399) (not b_lambda!180537) (not bs!1120522) (not b!4730658) (not b!4730336) (not d!1507900) (not bm!330840) (not b_lambda!180389) (not b!4730447) (not b!4730645) (not bs!1120438) (not d!1508612) (not b!4730685) (not b!4730022) (not b!4730525) (not b!4730637) (not bs!1120473) (not b!4730441) (not b_lambda!180133) (not b_lambda!180129) (not b!4730615) (not b!4730423) (not d!1508428) (not b!4730409) (not b_lambda!180147) (not b_lambda!180123) (not b!4730470) (not b!4729991) (not b!4730588) (not b!4730591) (not bs!1120504) (not b!4730210) (not b!4730511) (not b!4729956) (not b!4730356) (not bm!330877) (not b_lambda!180525) (not bs!1120456) (not d!1507832) (not b!4730665) (not b!4729964) (not b!4730473) (not b!4730330) (not b_lambda!180483) (not d!1508018) (not b!4730111) (not b!4730397) (not b_lambda!180527) (not b!4730398) (not b!4730048) (not b_lambda!180517) (not b!4730593) (not b!4730474) (not d!1507966) (not d!1508424) (not b!4730018) (not d!1508604) (not bs!1120506) (not b!4730331) (not bs!1120496) (not d!1508362) (not bs!1120465) (not b!4729892) (not d!1507912) (not d!1508024) (not b!4730621) (not b!4730419) (not b!4730393) (not bm!330837) (not b!4730002) (not d!1508598) (not bs!1120490) (not d!1507846) (not bs!1120507) (not b!4730526) (not b_lambda!180125) (not bm!330872) (not d!1508436) (not b!4730333) (not b_lambda!180113) (not b!4730510) (not b_lambda!180515) (not b!4729911) tp_is_empty!31421 (not bs!1120416) (not b!4730689) (not bs!1120472) (not bm!330869) (not b!4729998) (not b!4730546) (not b_lambda!180511) (not b!4730311) (not b!4730353) (not bs!1120433) (not b_lambda!179975) (not b!4730548) (not b!4730011) (not b!4730448) (not b!4730650) (not b!4730359) (not b_lambda!180493) (not b!4730428) (not b!4730006) (not b!4730109) (not b!4730108) (not bm!330875) (not b!4730452) (not b!4730440) (not bs!1120422) (not bs!1120463) (not d!1507962) (not b_lambda!180473) (not b_lambda!180535) (not bs!1120482) (not b!4730295) (not bs!1120515) (not d!1508484) (not b!4730676) (not bs!1120458) (not b_lambda!180453) (not b_lambda!180459) (not b!4730403) (not bs!1120430) (not b!4730595) (not b!4730497) (not b!4730349) (not b_lambda!180503) (not b_lambda!180489) (not bs!1120493) (not d!1508380) (not bs!1120498) (not b!4730402) (not b!4730680) (not b!4730533) (not bs!1120479) (not d!1508104) (not b!4730505) (not bs!1120485) (not d!1508558) (not bm!330849) (not bs!1120516) (not bs!1120448) (not d!1508278) (not d!1508412) (not bs!1120483) (not bs!1120425) (not bs!1120488) (not b_lambda!180523) (not b!4730410) (not b!4730125) (not bs!1120439) (not bm!330878) (not d!1508578) (not b!4730207) (not b!4730450) (not d!1508500) (not b_lambda!180449) (not b!4730638) (not bs!1120434) (not bm!330879) (not bm!330881) (not b!4730651) (not b!4730205) (not d!1507854) (not b!4730444) (not b!4730632) (not b!4729995) (not b!4730626) (not bs!1120492) (not bs!1120495) (not b!4730351) (not b!4730585) (not bs!1120526) (not b!4730433) (not b!4730475) (not d!1508386) (not b_lambda!180447) (not b!4730495) (not b_lambda!180117) (not b!4730414) (not b!4729960) (not b_lambda!180519) (not b!4730468) (not bs!1120494) (not b_lambda!180127) (not bs!1120509) (not bs!1120491) (not b!4730634) (not b!4729913) (not bs!1120421) (not d!1508620) (not b_lambda!180477) (not bs!1120441) (not bs!1120480) (not d!1508544) (not bs!1120417) (not b!4730436) (not b!4730677) (not b!4730112) (not d!1508552) (not d!1508590) (not b!4730688) (not bs!1120471) (not bs!1120468) (not b!4729972) (not b!4730416) (not d!1508448) (not b!4730299) (not b!4730654) (not b!4730598) (not bs!1120519) (not bs!1120474) (not b!4729909) (not bs!1120440) (not bs!1120426) (not bs!1120453) (not b!4729959) (not bm!330867) (not b!4730296) (not b!4730485) (not b_lambda!180143) (not b!4730099) (not b!4730293) (not b!4730206) (not bm!330880) (not bs!1120469) (not b_lambda!180457) (not b!4730412) (not b!4730003) (not bs!1120436) (not b!4730024) (not b_lambda!180495) (not b!4730054) (not b!4730157) (not b!4730008) (not b!4730538) (not bm!330842) (not d!1508418) (not d!1508460) (not b!4730215) (not b!4730549) (not b_lambda!180401) (not b!4729912) (not b_lambda!180465) (not d!1508492) (not d!1508514) (not bs!1120429) (not d!1508462) (not b!4729894) (not bs!1120462) (not b!4730228) (not b!4730684) (not bs!1120503) (not d!1507776) (not b!4730298) (not b!4730174) (not d!1508518) (not b!4729963) (not b_lambda!180507) (not bm!330852) (not b!4730466) (not b!4730010) (not b!4730613) (not bs!1120523) (not bs!1120455) (not b_lambda!180485) (not b!4730687) (not b!4730644) (not b!4730114) (not d!1508396) (not d!1508414) (not b!4730609) (not b_lambda!179977) (not bs!1120432) (not b_lambda!180409) (not d!1507960) (not b_lambda!180385) (not b_lambda!180115) (not b_lambda!180497) (not b_lambda!180131) (not b!4730098) (not b!4729990) (not b!4730124) (not b!4730666) (not d!1507946) (not b!4730289) (not b!4730481) (not b!4730557) (not bs!1120470) (not d!1508292) (not b!4730154) (not b!4730554) (not b!4730132) (not d!1508398) (not b!4730573) (not b!4730040) (not bs!1120475) (not b!4730355) (not b!4730315) (not b!4730521) (not b!4730520) (not b!4730335) (not b_lambda!180111) (not b_lambda!180513) (not bs!1120512) (not bs!1120467) (not b!4730128) (not b!4730627) (not b_lambda!180273) (not b!4730633) (not b!4730524) (not b!4729916) (not b!4730088) (not b!4730113) (not b!4730578) (not b!4730107) (not bs!1120517) (not d!1508550) (not bs!1120435) (not b!4730605) (not b!4730175) (not bs!1120418) (not d!1508452) (not bs!1120454) (not b!4730177) (not b!4730608) (not b!4730487) (not b!4730663) (not b!4730391) (not b!4730586) (not b_lambda!180247) (not b!4730528) (not b!4729890) (not b!4730169) (not b!4730005) (not b!4730461) (not d!1508374) (not b!4730458) (not bs!1120428) (not b!4730394) (not b!4730103) (not d!1508486) (not b_lambda!180451) (not bs!1120427) (not bm!330870) (not b!4730097) (not d!1508006) (not b!4729897) (not b!4730442) (not b!4730016) (not b!4730581))
(check-sat)
