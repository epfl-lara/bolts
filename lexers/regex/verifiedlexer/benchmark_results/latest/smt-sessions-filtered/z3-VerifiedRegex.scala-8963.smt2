; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!481432 () Bool)

(assert start!481432)

(declare-fun tp!1348643 () Bool)

(declare-fun tp_is_empty!31407 () Bool)

(declare-fun e!2948370 () Bool)

(declare-fun b!4727275 () Bool)

(declare-fun tp_is_empty!31405 () Bool)

(assert (=> b!4727275 (= e!2948370 (and tp_is_empty!31405 tp_is_empty!31407 tp!1348643))))

(declare-fun b!4727276 () Bool)

(declare-fun res!2000770 () Bool)

(declare-fun e!2948373 () Bool)

(assert (=> b!4727276 (=> (not res!2000770) (not e!2948373))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-datatypes ((Hashable!6397 0))(
  ( (HashableExt!6396 (__x!32100 Int)) )
))
(declare-fun hashF!1323 () Hashable!6397)

(declare-datatypes ((K!14220 0))(
  ( (K!14221 (val!19647 Int)) )
))
(declare-datatypes ((V!14466 0))(
  ( (V!14467 (val!19648 Int)) )
))
(declare-datatypes ((tuple2!54506 0))(
  ( (tuple2!54507 (_1!30547 K!14220) (_2!30547 V!14466)) )
))
(declare-datatypes ((List!52990 0))(
  ( (Nil!52866) (Cons!52866 (h!59221 tuple2!54506) (t!360266 List!52990)) )
))
(declare-fun newBucket!218 () List!52990)

(declare-fun allKeysSameHash!1854 (List!52990 (_ BitVec 64) Hashable!6397) Bool)

(assert (=> b!4727276 (= res!2000770 (allKeysSameHash!1854 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4727277 () Bool)

(declare-fun e!2948369 () Bool)

(declare-fun e!2948371 () Bool)

(assert (=> b!4727277 (= e!2948369 e!2948371)))

(declare-fun res!2000777 () Bool)

(assert (=> b!4727277 (=> res!2000777 e!2948371)))

(declare-fun oldBucket!34 () List!52990)

(declare-fun key!4653 () K!14220)

(declare-fun containsKey!3391 (List!52990 K!14220) Bool)

(assert (=> b!4727277 (= res!2000777 (not (containsKey!3391 (t!360266 oldBucket!34) key!4653)))))

(assert (=> b!4727277 (containsKey!3391 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!131113 0))(
  ( (Unit!131114) )
))
(declare-fun lt!1891702 () Unit!131113)

(declare-fun lemmaGetPairDefinedThenContainsKey!312 (List!52990 K!14220 Hashable!6397) Unit!131113)

(assert (=> b!4727277 (= lt!1891702 (lemmaGetPairDefinedThenContainsKey!312 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1891698 () List!52990)

(declare-datatypes ((Option!12377 0))(
  ( (None!12376) (Some!12376 (v!46969 tuple2!54506)) )
))
(declare-fun isDefined!9631 (Option!12377) Bool)

(declare-fun getPair!568 (List!52990 K!14220) Option!12377)

(assert (=> b!4727277 (isDefined!9631 (getPair!568 lt!1891698 key!4653))))

(declare-datatypes ((tuple2!54508 0))(
  ( (tuple2!54509 (_1!30548 (_ BitVec 64)) (_2!30548 List!52990)) )
))
(declare-fun lt!1891707 () tuple2!54508)

(declare-datatypes ((List!52991 0))(
  ( (Nil!52867) (Cons!52867 (h!59222 tuple2!54508) (t!360267 List!52991)) )
))
(declare-datatypes ((ListLongMap!4475 0))(
  ( (ListLongMap!4476 (toList!5945 List!52991)) )
))
(declare-fun lm!2023 () ListLongMap!4475)

(declare-fun lambda!216452 () Int)

(declare-fun lt!1891701 () Unit!131113)

(declare-fun forallContained!3657 (List!52991 Int tuple2!54508) Unit!131113)

(assert (=> b!4727277 (= lt!1891701 (forallContained!3657 (toList!5945 lm!2023) lambda!216452 lt!1891707))))

(declare-fun contains!16218 (List!52991 tuple2!54508) Bool)

(assert (=> b!4727277 (contains!16218 (toList!5945 lm!2023) lt!1891707)))

(declare-fun lt!1891704 () (_ BitVec 64))

(assert (=> b!4727277 (= lt!1891707 (tuple2!54509 lt!1891704 lt!1891698))))

(declare-fun lt!1891706 () Unit!131113)

(declare-fun lemmaGetValueImpliesTupleContained!373 (ListLongMap!4475 (_ BitVec 64) List!52990) Unit!131113)

(assert (=> b!4727277 (= lt!1891706 (lemmaGetValueImpliesTupleContained!373 lm!2023 lt!1891704 lt!1891698))))

(declare-fun apply!12453 (ListLongMap!4475 (_ BitVec 64)) List!52990)

(assert (=> b!4727277 (= lt!1891698 (apply!12453 lm!2023 lt!1891704))))

(declare-fun contains!16219 (ListLongMap!4475 (_ BitVec 64)) Bool)

(assert (=> b!4727277 (contains!16219 lm!2023 lt!1891704)))

(declare-fun lt!1891703 () Unit!131113)

(declare-fun lemmaInGenMapThenLongMapContainsHash!774 (ListLongMap!4475 K!14220 Hashable!6397) Unit!131113)

(assert (=> b!4727277 (= lt!1891703 (lemmaInGenMapThenLongMapContainsHash!774 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1891705 () Unit!131113)

(declare-fun lemmaInGenMapThenGetPairDefined!364 (ListLongMap!4475 K!14220 Hashable!6397) Unit!131113)

(assert (=> b!4727277 (= lt!1891705 (lemmaInGenMapThenGetPairDefined!364 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4727278 () Bool)

(declare-fun res!2000772 () Bool)

(declare-fun e!2948372 () Bool)

(assert (=> b!4727278 (=> (not res!2000772) (not e!2948372))))

(assert (=> b!4727278 (= res!2000772 (allKeysSameHash!1854 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4727279 () Bool)

(declare-fun res!2000773 () Bool)

(assert (=> b!4727279 (=> (not res!2000773) (not e!2948372))))

(declare-fun noDuplicateKeys!2028 (List!52990) Bool)

(assert (=> b!4727279 (= res!2000773 (noDuplicateKeys!2028 oldBucket!34))))

(declare-fun b!4727280 () Bool)

(assert (=> b!4727280 (= e!2948373 (not e!2948369))))

(declare-fun res!2000766 () Bool)

(assert (=> b!4727280 (=> res!2000766 e!2948369)))

(get-info :version)

(assert (=> b!4727280 (= res!2000766 (or (and ((_ is Cons!52866) oldBucket!34) (= (_1!30547 (h!59221 oldBucket!34)) key!4653)) (not ((_ is Cons!52866) oldBucket!34)) (= (_1!30547 (h!59221 oldBucket!34)) key!4653)))))

(declare-fun e!2948375 () Bool)

(assert (=> b!4727280 e!2948375))

(declare-fun res!2000768 () Bool)

(assert (=> b!4727280 (=> (not res!2000768) (not e!2948375))))

(declare-fun tail!9030 (ListLongMap!4475) ListLongMap!4475)

(assert (=> b!4727280 (= res!2000768 (= (t!360267 (toList!5945 lm!2023)) (toList!5945 (tail!9030 lm!2023))))))

(declare-fun b!4727281 () Bool)

(declare-fun e!2948374 () Bool)

(declare-fun tp!1348642 () Bool)

(assert (=> b!4727281 (= e!2948374 tp!1348642)))

(declare-fun b!4727282 () Bool)

(declare-fun res!2000776 () Bool)

(assert (=> b!4727282 (=> (not res!2000776) (not e!2948372))))

(assert (=> b!4727282 (= res!2000776 (noDuplicateKeys!2028 newBucket!218))))

(declare-fun b!4727283 () Bool)

(declare-fun e!2948378 () Bool)

(assert (=> b!4727283 (= e!2948372 e!2948378)))

(declare-fun res!2000781 () Bool)

(assert (=> b!4727283 (=> (not res!2000781) (not e!2948378))))

(declare-datatypes ((ListMap!5309 0))(
  ( (ListMap!5310 (toList!5946 List!52990)) )
))
(declare-fun lt!1891700 () ListMap!5309)

(declare-fun contains!16220 (ListMap!5309 K!14220) Bool)

(assert (=> b!4727283 (= res!2000781 (contains!16220 lt!1891700 key!4653))))

(declare-fun extractMap!2054 (List!52991) ListMap!5309)

(assert (=> b!4727283 (= lt!1891700 (extractMap!2054 (toList!5945 lm!2023)))))

(declare-fun b!4727284 () Bool)

(declare-fun res!2000780 () Bool)

(assert (=> b!4727284 (=> (not res!2000780) (not e!2948372))))

(declare-fun removePairForKey!1623 (List!52990 K!14220) List!52990)

(assert (=> b!4727284 (= res!2000780 (= (removePairForKey!1623 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4727286 () Bool)

(declare-fun e!2948376 () Bool)

(assert (=> b!4727286 (= e!2948371 e!2948376)))

(declare-fun res!2000767 () Bool)

(assert (=> b!4727286 (=> res!2000767 e!2948376)))

(declare-fun lt!1891699 () List!52990)

(declare-fun tail!9031 (List!52990) List!52990)

(assert (=> b!4727286 (= res!2000767 (not (= (removePairForKey!1623 (tail!9031 oldBucket!34) key!4653) lt!1891699)))))

(assert (=> b!4727286 (= lt!1891699 (tail!9031 newBucket!218))))

(declare-fun b!4727287 () Bool)

(declare-fun res!2000775 () Bool)

(assert (=> b!4727287 (=> (not res!2000775) (not e!2948373))))

(declare-fun allKeysSameHashInMap!1942 (ListLongMap!4475 Hashable!6397) Bool)

(assert (=> b!4727287 (= res!2000775 (allKeysSameHashInMap!1942 lm!2023 hashF!1323))))

(declare-fun b!4727288 () Bool)

(declare-fun res!2000774 () Bool)

(assert (=> b!4727288 (=> (not res!2000774) (not e!2948373))))

(declare-fun head!10268 (List!52991) tuple2!54508)

(assert (=> b!4727288 (= res!2000774 (= (head!10268 (toList!5945 lm!2023)) (tuple2!54509 hash!405 oldBucket!34)))))

(declare-fun b!4727289 () Bool)

(declare-fun inv!68094 (ListLongMap!4475) Bool)

(assert (=> b!4727289 (= e!2948376 (inv!68094 (ListLongMap!4476 (Cons!52867 (tuple2!54509 hash!405 (t!360266 oldBucket!34)) (t!360267 (toList!5945 lm!2023))))))))

(declare-fun b!4727290 () Bool)

(declare-fun addToMapMapFromBucket!1458 (List!52990 ListMap!5309) ListMap!5309)

(assert (=> b!4727290 (= e!2948375 (= lt!1891700 (addToMapMapFromBucket!1458 (_2!30548 (h!59222 (toList!5945 lm!2023))) (extractMap!2054 (t!360267 (toList!5945 lm!2023))))))))

(declare-fun b!4727291 () Bool)

(assert (=> b!4727291 (= e!2948378 e!2948373)))

(declare-fun res!2000769 () Bool)

(assert (=> b!4727291 (=> (not res!2000769) (not e!2948373))))

(assert (=> b!4727291 (= res!2000769 (= lt!1891704 hash!405))))

(declare-fun hash!4406 (Hashable!6397 K!14220) (_ BitVec 64))

(assert (=> b!4727291 (= lt!1891704 (hash!4406 hashF!1323 key!4653))))

(declare-fun e!2948377 () Bool)

(declare-fun tp!1348641 () Bool)

(declare-fun b!4727292 () Bool)

(assert (=> b!4727292 (= e!2948377 (and tp_is_empty!31405 tp_is_empty!31407 tp!1348641))))

(declare-fun b!4727293 () Bool)

(declare-fun res!2000778 () Bool)

(assert (=> b!4727293 (=> res!2000778 e!2948376)))

(assert (=> b!4727293 (= res!2000778 (not (= (removePairForKey!1623 (t!360266 oldBucket!34) key!4653) lt!1891699)))))

(declare-fun res!2000779 () Bool)

(assert (=> start!481432 (=> (not res!2000779) (not e!2948372))))

(declare-fun forall!11616 (List!52991 Int) Bool)

(assert (=> start!481432 (= res!2000779 (forall!11616 (toList!5945 lm!2023) lambda!216452))))

(assert (=> start!481432 e!2948372))

(assert (=> start!481432 (and (inv!68094 lm!2023) e!2948374)))

(assert (=> start!481432 tp_is_empty!31405))

(assert (=> start!481432 e!2948370))

(assert (=> start!481432 true))

(assert (=> start!481432 e!2948377))

(declare-fun b!4727285 () Bool)

(declare-fun res!2000771 () Bool)

(assert (=> b!4727285 (=> (not res!2000771) (not e!2948373))))

(assert (=> b!4727285 (= res!2000771 ((_ is Cons!52867) (toList!5945 lm!2023)))))

(assert (= (and start!481432 res!2000779) b!4727279))

(assert (= (and b!4727279 res!2000773) b!4727282))

(assert (= (and b!4727282 res!2000776) b!4727284))

(assert (= (and b!4727284 res!2000780) b!4727278))

(assert (= (and b!4727278 res!2000772) b!4727283))

(assert (= (and b!4727283 res!2000781) b!4727291))

(assert (= (and b!4727291 res!2000769) b!4727276))

(assert (= (and b!4727276 res!2000770) b!4727287))

(assert (= (and b!4727287 res!2000775) b!4727288))

(assert (= (and b!4727288 res!2000774) b!4727285))

(assert (= (and b!4727285 res!2000771) b!4727280))

(assert (= (and b!4727280 res!2000768) b!4727290))

(assert (= (and b!4727280 (not res!2000766)) b!4727277))

(assert (= (and b!4727277 (not res!2000777)) b!4727286))

(assert (= (and b!4727286 (not res!2000767)) b!4727293))

(assert (= (and b!4727293 (not res!2000778)) b!4727289))

(assert (= start!481432 b!4727281))

(assert (= (and start!481432 ((_ is Cons!52866) oldBucket!34)) b!4727275))

(assert (= (and start!481432 ((_ is Cons!52866) newBucket!218)) b!4727292))

(declare-fun m!5667405 () Bool)

(assert (=> start!481432 m!5667405))

(declare-fun m!5667407 () Bool)

(assert (=> start!481432 m!5667407))

(declare-fun m!5667409 () Bool)

(assert (=> b!4727279 m!5667409))

(declare-fun m!5667411 () Bool)

(assert (=> b!4727287 m!5667411))

(declare-fun m!5667413 () Bool)

(assert (=> b!4727280 m!5667413))

(declare-fun m!5667415 () Bool)

(assert (=> b!4727284 m!5667415))

(declare-fun m!5667417 () Bool)

(assert (=> b!4727289 m!5667417))

(declare-fun m!5667419 () Bool)

(assert (=> b!4727293 m!5667419))

(declare-fun m!5667421 () Bool)

(assert (=> b!4727290 m!5667421))

(assert (=> b!4727290 m!5667421))

(declare-fun m!5667423 () Bool)

(assert (=> b!4727290 m!5667423))

(declare-fun m!5667425 () Bool)

(assert (=> b!4727277 m!5667425))

(declare-fun m!5667427 () Bool)

(assert (=> b!4727277 m!5667427))

(declare-fun m!5667429 () Bool)

(assert (=> b!4727277 m!5667429))

(declare-fun m!5667431 () Bool)

(assert (=> b!4727277 m!5667431))

(declare-fun m!5667433 () Bool)

(assert (=> b!4727277 m!5667433))

(declare-fun m!5667435 () Bool)

(assert (=> b!4727277 m!5667435))

(declare-fun m!5667437 () Bool)

(assert (=> b!4727277 m!5667437))

(declare-fun m!5667439 () Bool)

(assert (=> b!4727277 m!5667439))

(declare-fun m!5667441 () Bool)

(assert (=> b!4727277 m!5667441))

(declare-fun m!5667443 () Bool)

(assert (=> b!4727277 m!5667443))

(declare-fun m!5667445 () Bool)

(assert (=> b!4727277 m!5667445))

(assert (=> b!4727277 m!5667433))

(declare-fun m!5667447 () Bool)

(assert (=> b!4727277 m!5667447))

(declare-fun m!5667449 () Bool)

(assert (=> b!4727283 m!5667449))

(declare-fun m!5667451 () Bool)

(assert (=> b!4727283 m!5667451))

(declare-fun m!5667453 () Bool)

(assert (=> b!4727288 m!5667453))

(declare-fun m!5667455 () Bool)

(assert (=> b!4727282 m!5667455))

(declare-fun m!5667457 () Bool)

(assert (=> b!4727291 m!5667457))

(declare-fun m!5667459 () Bool)

(assert (=> b!4727278 m!5667459))

(declare-fun m!5667461 () Bool)

(assert (=> b!4727286 m!5667461))

(assert (=> b!4727286 m!5667461))

(declare-fun m!5667463 () Bool)

(assert (=> b!4727286 m!5667463))

(declare-fun m!5667465 () Bool)

(assert (=> b!4727286 m!5667465))

(declare-fun m!5667467 () Bool)

(assert (=> b!4727276 m!5667467))

(check-sat (not b!4727281) (not start!481432) (not b!4727287) (not b!4727292) (not b!4727284) (not b!4727280) tp_is_empty!31407 (not b!4727282) (not b!4727283) tp_is_empty!31405 (not b!4727291) (not b!4727279) (not b!4727286) (not b!4727289) (not b!4727290) (not b!4727288) (not b!4727278) (not b!4727293) (not b!4727276) (not b!4727277) (not b!4727275))
(check-sat)
(get-model)

(declare-fun d!1506298 () Bool)

(assert (=> d!1506298 true))

(assert (=> d!1506298 true))

(declare-fun lambda!216455 () Int)

(declare-fun forall!11618 (List!52990 Int) Bool)

(assert (=> d!1506298 (= (allKeysSameHash!1854 oldBucket!34 hash!405 hashF!1323) (forall!11618 oldBucket!34 lambda!216455))))

(declare-fun bs!1118293 () Bool)

(assert (= bs!1118293 d!1506298))

(declare-fun m!5667469 () Bool)

(assert (=> bs!1118293 m!5667469))

(assert (=> b!4727278 d!1506298))

(declare-fun d!1506300 () Bool)

(declare-fun isStrictlySorted!757 (List!52991) Bool)

(assert (=> d!1506300 (= (inv!68094 (ListLongMap!4476 (Cons!52867 (tuple2!54509 hash!405 (t!360266 oldBucket!34)) (t!360267 (toList!5945 lm!2023))))) (isStrictlySorted!757 (toList!5945 (ListLongMap!4476 (Cons!52867 (tuple2!54509 hash!405 (t!360266 oldBucket!34)) (t!360267 (toList!5945 lm!2023)))))))))

(declare-fun bs!1118294 () Bool)

(assert (= bs!1118294 d!1506300))

(declare-fun m!5667471 () Bool)

(assert (=> bs!1118294 m!5667471))

(assert (=> b!4727289 d!1506300))

(declare-fun d!1506302 () Bool)

(assert (=> d!1506302 (= (head!10268 (toList!5945 lm!2023)) (h!59222 (toList!5945 lm!2023)))))

(assert (=> b!4727288 d!1506302))

(declare-fun bs!1118305 () Bool)

(declare-fun b!4727384 () Bool)

(assert (= bs!1118305 (and b!4727384 d!1506298)))

(declare-fun lambda!216522 () Int)

(assert (=> bs!1118305 (not (= lambda!216522 lambda!216455))))

(assert (=> b!4727384 true))

(declare-fun bs!1118306 () Bool)

(declare-fun b!4727387 () Bool)

(assert (= bs!1118306 (and b!4727387 d!1506298)))

(declare-fun lambda!216523 () Int)

(assert (=> bs!1118306 (not (= lambda!216523 lambda!216455))))

(declare-fun bs!1118307 () Bool)

(assert (= bs!1118307 (and b!4727387 b!4727384)))

(assert (=> bs!1118307 (= lambda!216523 lambda!216522)))

(assert (=> b!4727387 true))

(declare-fun lambda!216524 () Int)

(assert (=> bs!1118306 (not (= lambda!216524 lambda!216455))))

(declare-fun lt!1891856 () ListMap!5309)

(assert (=> bs!1118307 (= (= lt!1891856 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216524 lambda!216522))))

(assert (=> b!4727387 (= (= lt!1891856 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216524 lambda!216523))))

(assert (=> b!4727387 true))

(declare-fun bs!1118308 () Bool)

(declare-fun d!1506306 () Bool)

(assert (= bs!1118308 (and d!1506306 d!1506298)))

(declare-fun lambda!216525 () Int)

(assert (=> bs!1118308 (not (= lambda!216525 lambda!216455))))

(declare-fun bs!1118309 () Bool)

(assert (= bs!1118309 (and d!1506306 b!4727384)))

(declare-fun lt!1891841 () ListMap!5309)

(assert (=> bs!1118309 (= (= lt!1891841 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216525 lambda!216522))))

(declare-fun bs!1118310 () Bool)

(assert (= bs!1118310 (and d!1506306 b!4727387)))

(assert (=> bs!1118310 (= (= lt!1891841 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216525 lambda!216523))))

(assert (=> bs!1118310 (= (= lt!1891841 lt!1891856) (= lambda!216525 lambda!216524))))

(assert (=> d!1506306 true))

(declare-fun bm!330726 () Bool)

(declare-fun c!807339 () Bool)

(declare-fun call!330733 () Bool)

(assert (=> bm!330726 (= call!330733 (forall!11618 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (ite c!807339 lambda!216522 lambda!216524)))))

(declare-fun e!2948429 () ListMap!5309)

(assert (=> b!4727384 (= e!2948429 (extractMap!2054 (t!360267 (toList!5945 lm!2023))))))

(declare-fun lt!1891855 () Unit!131113)

(declare-fun call!330731 () Unit!131113)

(assert (=> b!4727384 (= lt!1891855 call!330731)))

(assert (=> b!4727384 call!330733))

(declare-fun lt!1891844 () Unit!131113)

(assert (=> b!4727384 (= lt!1891844 lt!1891855)))

(declare-fun call!330732 () Bool)

(assert (=> b!4727384 call!330732))

(declare-fun lt!1891843 () Unit!131113)

(declare-fun Unit!131127 () Unit!131113)

(assert (=> b!4727384 (= lt!1891843 Unit!131127)))

(declare-fun bm!330727 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!805 (ListMap!5309) Unit!131113)

(assert (=> bm!330727 (= call!330731 (lemmaContainsAllItsOwnKeys!805 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))))))

(declare-fun b!4727385 () Bool)

(declare-fun e!2948427 () Bool)

(assert (=> b!4727385 (= e!2948427 (forall!11618 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) lambda!216524))))

(declare-fun b!4727386 () Bool)

(declare-fun e!2948428 () Bool)

(declare-fun invariantList!1519 (List!52990) Bool)

(assert (=> b!4727386 (= e!2948428 (invariantList!1519 (toList!5946 lt!1891841)))))

(declare-fun b!4727388 () Bool)

(declare-fun res!2000817 () Bool)

(assert (=> b!4727388 (=> (not res!2000817) (not e!2948428))))

(assert (=> b!4727388 (= res!2000817 (forall!11618 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) lambda!216525))))

(declare-fun bm!330728 () Bool)

(assert (=> bm!330728 (= call!330732 (forall!11618 (ite c!807339 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (ite c!807339 lambda!216522 lambda!216524)))))

(assert (=> b!4727387 (= e!2948429 lt!1891856)))

(declare-fun lt!1891853 () ListMap!5309)

(declare-fun +!2277 (ListMap!5309 tuple2!54506) ListMap!5309)

(assert (=> b!4727387 (= lt!1891853 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))

(assert (=> b!4727387 (= lt!1891856 (addToMapMapFromBucket!1458 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))) (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun lt!1891846 () Unit!131113)

(assert (=> b!4727387 (= lt!1891846 call!330731)))

(assert (=> b!4727387 (forall!11618 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) lambda!216523)))

(declare-fun lt!1891840 () Unit!131113)

(assert (=> b!4727387 (= lt!1891840 lt!1891846)))

(assert (=> b!4727387 (forall!11618 (toList!5946 lt!1891853) lambda!216524)))

(declare-fun lt!1891847 () Unit!131113)

(declare-fun Unit!131128 () Unit!131113)

(assert (=> b!4727387 (= lt!1891847 Unit!131128)))

(assert (=> b!4727387 call!330732))

(declare-fun lt!1891857 () Unit!131113)

(declare-fun Unit!131129 () Unit!131113)

(assert (=> b!4727387 (= lt!1891857 Unit!131129)))

(declare-fun lt!1891842 () Unit!131113)

(declare-fun Unit!131130 () Unit!131113)

(assert (=> b!4727387 (= lt!1891842 Unit!131130)))

(declare-fun lt!1891852 () Unit!131113)

(declare-fun forallContained!3659 (List!52990 Int tuple2!54506) Unit!131113)

(assert (=> b!4727387 (= lt!1891852 (forallContained!3659 (toList!5946 lt!1891853) lambda!216524 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))

(assert (=> b!4727387 (contains!16220 lt!1891853 (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))

(declare-fun lt!1891848 () Unit!131113)

(declare-fun Unit!131131 () Unit!131113)

(assert (=> b!4727387 (= lt!1891848 Unit!131131)))

(assert (=> b!4727387 (contains!16220 lt!1891856 (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))

(declare-fun lt!1891851 () Unit!131113)

(declare-fun Unit!131132 () Unit!131113)

(assert (=> b!4727387 (= lt!1891851 Unit!131132)))

(assert (=> b!4727387 (forall!11618 (_2!30548 (h!59222 (toList!5945 lm!2023))) lambda!216524)))

(declare-fun lt!1891854 () Unit!131113)

(declare-fun Unit!131133 () Unit!131113)

(assert (=> b!4727387 (= lt!1891854 Unit!131133)))

(assert (=> b!4727387 (forall!11618 (toList!5946 lt!1891853) lambda!216524)))

(declare-fun lt!1891849 () Unit!131113)

(declare-fun Unit!131134 () Unit!131113)

(assert (=> b!4727387 (= lt!1891849 Unit!131134)))

(declare-fun lt!1891850 () Unit!131113)

(declare-fun Unit!131135 () Unit!131113)

(assert (=> b!4727387 (= lt!1891850 Unit!131135)))

(declare-fun lt!1891860 () Unit!131113)

(declare-fun addForallContainsKeyThenBeforeAdding!804 (ListMap!5309 ListMap!5309 K!14220 V!14466) Unit!131113)

(assert (=> b!4727387 (= lt!1891860 (addForallContainsKeyThenBeforeAdding!804 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) lt!1891856 (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (_2!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(assert (=> b!4727387 call!330733))

(declare-fun lt!1891845 () Unit!131113)

(assert (=> b!4727387 (= lt!1891845 lt!1891860)))

(assert (=> b!4727387 (forall!11618 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) lambda!216524)))

(declare-fun lt!1891859 () Unit!131113)

(declare-fun Unit!131136 () Unit!131113)

(assert (=> b!4727387 (= lt!1891859 Unit!131136)))

(declare-fun res!2000816 () Bool)

(assert (=> b!4727387 (= res!2000816 (forall!11618 (_2!30548 (h!59222 (toList!5945 lm!2023))) lambda!216524))))

(assert (=> b!4727387 (=> (not res!2000816) (not e!2948427))))

(assert (=> b!4727387 e!2948427))

(declare-fun lt!1891858 () Unit!131113)

(declare-fun Unit!131137 () Unit!131113)

(assert (=> b!4727387 (= lt!1891858 Unit!131137)))

(assert (=> d!1506306 e!2948428))

(declare-fun res!2000815 () Bool)

(assert (=> d!1506306 (=> (not res!2000815) (not e!2948428))))

(assert (=> d!1506306 (= res!2000815 (forall!11618 (_2!30548 (h!59222 (toList!5945 lm!2023))) lambda!216525))))

(assert (=> d!1506306 (= lt!1891841 e!2948429)))

(assert (=> d!1506306 (= c!807339 ((_ is Nil!52866) (_2!30548 (h!59222 (toList!5945 lm!2023)))))))

(assert (=> d!1506306 (noDuplicateKeys!2028 (_2!30548 (h!59222 (toList!5945 lm!2023))))))

(assert (=> d!1506306 (= (addToMapMapFromBucket!1458 (_2!30548 (h!59222 (toList!5945 lm!2023))) (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) lt!1891841)))

(assert (= (and d!1506306 c!807339) b!4727384))

(assert (= (and d!1506306 (not c!807339)) b!4727387))

(assert (= (and b!4727387 res!2000816) b!4727385))

(assert (= (or b!4727384 b!4727387) bm!330727))

(assert (= (or b!4727384 b!4727387) bm!330728))

(assert (= (or b!4727384 b!4727387) bm!330726))

(assert (= (and d!1506306 res!2000815) b!4727388))

(assert (= (and b!4727388 res!2000817) b!4727386))

(declare-fun m!5667555 () Bool)

(assert (=> d!1506306 m!5667555))

(declare-fun m!5667557 () Bool)

(assert (=> d!1506306 m!5667557))

(declare-fun m!5667559 () Bool)

(assert (=> b!4727386 m!5667559))

(declare-fun m!5667561 () Bool)

(assert (=> b!4727387 m!5667561))

(declare-fun m!5667563 () Bool)

(assert (=> b!4727387 m!5667563))

(assert (=> b!4727387 m!5667421))

(declare-fun m!5667565 () Bool)

(assert (=> b!4727387 m!5667565))

(declare-fun m!5667567 () Bool)

(assert (=> b!4727387 m!5667567))

(declare-fun m!5667569 () Bool)

(assert (=> b!4727387 m!5667569))

(declare-fun m!5667571 () Bool)

(assert (=> b!4727387 m!5667571))

(assert (=> b!4727387 m!5667421))

(assert (=> b!4727387 m!5667561))

(declare-fun m!5667573 () Bool)

(assert (=> b!4727387 m!5667573))

(declare-fun m!5667575 () Bool)

(assert (=> b!4727387 m!5667575))

(assert (=> b!4727387 m!5667573))

(assert (=> b!4727387 m!5667569))

(declare-fun m!5667577 () Bool)

(assert (=> b!4727387 m!5667577))

(declare-fun m!5667579 () Bool)

(assert (=> b!4727387 m!5667579))

(declare-fun m!5667581 () Bool)

(assert (=> b!4727388 m!5667581))

(declare-fun m!5667583 () Bool)

(assert (=> bm!330726 m!5667583))

(assert (=> bm!330727 m!5667421))

(declare-fun m!5667585 () Bool)

(assert (=> bm!330727 m!5667585))

(assert (=> b!4727385 m!5667577))

(declare-fun m!5667587 () Bool)

(assert (=> bm!330728 m!5667587))

(assert (=> b!4727290 d!1506306))

(declare-fun bs!1118311 () Bool)

(declare-fun d!1506326 () Bool)

(assert (= bs!1118311 (and d!1506326 start!481432)))

(declare-fun lambda!216534 () Int)

(assert (=> bs!1118311 (= lambda!216534 lambda!216452)))

(declare-fun lt!1891879 () ListMap!5309)

(assert (=> d!1506326 (invariantList!1519 (toList!5946 lt!1891879))))

(declare-fun e!2948436 () ListMap!5309)

(assert (=> d!1506326 (= lt!1891879 e!2948436)))

(declare-fun c!807342 () Bool)

(assert (=> d!1506326 (= c!807342 ((_ is Cons!52867) (t!360267 (toList!5945 lm!2023))))))

(assert (=> d!1506326 (forall!11616 (t!360267 (toList!5945 lm!2023)) lambda!216534)))

(assert (=> d!1506326 (= (extractMap!2054 (t!360267 (toList!5945 lm!2023))) lt!1891879)))

(declare-fun b!4727403 () Bool)

(assert (=> b!4727403 (= e!2948436 (addToMapMapFromBucket!1458 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023)))) (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))))))

(declare-fun b!4727404 () Bool)

(assert (=> b!4727404 (= e!2948436 (ListMap!5310 Nil!52866))))

(assert (= (and d!1506326 c!807342) b!4727403))

(assert (= (and d!1506326 (not c!807342)) b!4727404))

(declare-fun m!5667589 () Bool)

(assert (=> d!1506326 m!5667589))

(declare-fun m!5667591 () Bool)

(assert (=> d!1506326 m!5667591))

(declare-fun m!5667593 () Bool)

(assert (=> b!4727403 m!5667593))

(assert (=> b!4727403 m!5667593))

(declare-fun m!5667595 () Bool)

(assert (=> b!4727403 m!5667595))

(assert (=> b!4727290 d!1506326))

(declare-fun d!1506328 () Bool)

(declare-fun res!2000834 () Bool)

(declare-fun e!2948443 () Bool)

(assert (=> d!1506328 (=> res!2000834 e!2948443)))

(assert (=> d!1506328 (= res!2000834 (not ((_ is Cons!52866) oldBucket!34)))))

(assert (=> d!1506328 (= (noDuplicateKeys!2028 oldBucket!34) e!2948443)))

(declare-fun b!4727413 () Bool)

(declare-fun e!2948444 () Bool)

(assert (=> b!4727413 (= e!2948443 e!2948444)))

(declare-fun res!2000835 () Bool)

(assert (=> b!4727413 (=> (not res!2000835) (not e!2948444))))

(assert (=> b!4727413 (= res!2000835 (not (containsKey!3391 (t!360266 oldBucket!34) (_1!30547 (h!59221 oldBucket!34)))))))

(declare-fun b!4727414 () Bool)

(assert (=> b!4727414 (= e!2948444 (noDuplicateKeys!2028 (t!360266 oldBucket!34)))))

(assert (= (and d!1506328 (not res!2000834)) b!4727413))

(assert (= (and b!4727413 res!2000835) b!4727414))

(declare-fun m!5667597 () Bool)

(assert (=> b!4727413 m!5667597))

(declare-fun m!5667599 () Bool)

(assert (=> b!4727414 m!5667599))

(assert (=> b!4727279 d!1506328))

(declare-fun b!4727433 () Bool)

(declare-fun e!2948457 () List!52990)

(assert (=> b!4727433 (= e!2948457 (Cons!52866 (h!59221 (tail!9031 oldBucket!34)) (removePairForKey!1623 (t!360266 (tail!9031 oldBucket!34)) key!4653)))))

(declare-fun d!1506330 () Bool)

(declare-fun lt!1891890 () List!52990)

(assert (=> d!1506330 (not (containsKey!3391 lt!1891890 key!4653))))

(declare-fun e!2948458 () List!52990)

(assert (=> d!1506330 (= lt!1891890 e!2948458)))

(declare-fun c!807347 () Bool)

(assert (=> d!1506330 (= c!807347 (and ((_ is Cons!52866) (tail!9031 oldBucket!34)) (= (_1!30547 (h!59221 (tail!9031 oldBucket!34))) key!4653)))))

(assert (=> d!1506330 (noDuplicateKeys!2028 (tail!9031 oldBucket!34))))

(assert (=> d!1506330 (= (removePairForKey!1623 (tail!9031 oldBucket!34) key!4653) lt!1891890)))

(declare-fun b!4727432 () Bool)

(assert (=> b!4727432 (= e!2948458 e!2948457)))

(declare-fun c!807348 () Bool)

(assert (=> b!4727432 (= c!807348 ((_ is Cons!52866) (tail!9031 oldBucket!34)))))

(declare-fun b!4727434 () Bool)

(assert (=> b!4727434 (= e!2948457 Nil!52866)))

(declare-fun b!4727431 () Bool)

(assert (=> b!4727431 (= e!2948458 (t!360266 (tail!9031 oldBucket!34)))))

(assert (= (and d!1506330 c!807347) b!4727431))

(assert (= (and d!1506330 (not c!807347)) b!4727432))

(assert (= (and b!4727432 c!807348) b!4727433))

(assert (= (and b!4727432 (not c!807348)) b!4727434))

(declare-fun m!5667627 () Bool)

(assert (=> b!4727433 m!5667627))

(declare-fun m!5667629 () Bool)

(assert (=> d!1506330 m!5667629))

(assert (=> d!1506330 m!5667461))

(declare-fun m!5667631 () Bool)

(assert (=> d!1506330 m!5667631))

(assert (=> b!4727286 d!1506330))

(declare-fun d!1506338 () Bool)

(assert (=> d!1506338 (= (tail!9031 oldBucket!34) (t!360266 oldBucket!34))))

(assert (=> b!4727286 d!1506338))

(declare-fun d!1506342 () Bool)

(assert (=> d!1506342 (= (tail!9031 newBucket!218) (t!360266 newBucket!218))))

(assert (=> b!4727286 d!1506342))

(declare-fun d!1506344 () Bool)

(assert (=> d!1506344 (contains!16218 (toList!5945 lm!2023) (tuple2!54509 lt!1891704 lt!1891698))))

(declare-fun lt!1891893 () Unit!131113)

(declare-fun choose!33397 (ListLongMap!4475 (_ BitVec 64) List!52990) Unit!131113)

(assert (=> d!1506344 (= lt!1891893 (choose!33397 lm!2023 lt!1891704 lt!1891698))))

(assert (=> d!1506344 (contains!16219 lm!2023 lt!1891704)))

(assert (=> d!1506344 (= (lemmaGetValueImpliesTupleContained!373 lm!2023 lt!1891704 lt!1891698) lt!1891893)))

(declare-fun bs!1118315 () Bool)

(assert (= bs!1118315 d!1506344))

(declare-fun m!5667635 () Bool)

(assert (=> bs!1118315 m!5667635))

(declare-fun m!5667637 () Bool)

(assert (=> bs!1118315 m!5667637))

(assert (=> bs!1118315 m!5667429))

(assert (=> b!4727277 d!1506344))

(declare-fun d!1506346 () Bool)

(declare-fun lt!1891899 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9413 (List!52991) (InoxSet tuple2!54508))

(assert (=> d!1506346 (= lt!1891899 (select (content!9413 (toList!5945 lm!2023)) lt!1891707))))

(declare-fun e!2948463 () Bool)

(assert (=> d!1506346 (= lt!1891899 e!2948463)))

(declare-fun res!2000848 () Bool)

(assert (=> d!1506346 (=> (not res!2000848) (not e!2948463))))

(assert (=> d!1506346 (= res!2000848 ((_ is Cons!52867) (toList!5945 lm!2023)))))

(assert (=> d!1506346 (= (contains!16218 (toList!5945 lm!2023) lt!1891707) lt!1891899)))

(declare-fun b!4727440 () Bool)

(declare-fun e!2948464 () Bool)

(assert (=> b!4727440 (= e!2948463 e!2948464)))

(declare-fun res!2000849 () Bool)

(assert (=> b!4727440 (=> res!2000849 e!2948464)))

(assert (=> b!4727440 (= res!2000849 (= (h!59222 (toList!5945 lm!2023)) lt!1891707))))

(declare-fun b!4727441 () Bool)

(assert (=> b!4727441 (= e!2948464 (contains!16218 (t!360267 (toList!5945 lm!2023)) lt!1891707))))

(assert (= (and d!1506346 res!2000848) b!4727440))

(assert (= (and b!4727440 (not res!2000849)) b!4727441))

(declare-fun m!5667643 () Bool)

(assert (=> d!1506346 m!5667643))

(declare-fun m!5667645 () Bool)

(assert (=> d!1506346 m!5667645))

(declare-fun m!5667647 () Bool)

(assert (=> b!4727441 m!5667647))

(assert (=> b!4727277 d!1506346))

(declare-fun b!4727470 () Bool)

(declare-fun e!2948487 () Option!12377)

(assert (=> b!4727470 (= e!2948487 (getPair!568 (t!360266 lt!1891698) key!4653))))

(declare-fun b!4727471 () Bool)

(declare-fun e!2948483 () Bool)

(declare-fun e!2948484 () Bool)

(assert (=> b!4727471 (= e!2948483 e!2948484)))

(declare-fun res!2000866 () Bool)

(assert (=> b!4727471 (=> (not res!2000866) (not e!2948484))))

(declare-fun lt!1891909 () Option!12377)

(assert (=> b!4727471 (= res!2000866 (isDefined!9631 lt!1891909))))

(declare-fun b!4727472 () Bool)

(declare-fun e!2948485 () Option!12377)

(assert (=> b!4727472 (= e!2948485 e!2948487)))

(declare-fun c!807355 () Bool)

(assert (=> b!4727472 (= c!807355 ((_ is Cons!52866) lt!1891698))))

(declare-fun b!4727473 () Bool)

(assert (=> b!4727473 (= e!2948485 (Some!12376 (h!59221 lt!1891698)))))

(declare-fun b!4727474 () Bool)

(declare-fun contains!16222 (List!52990 tuple2!54506) Bool)

(declare-fun get!17736 (Option!12377) tuple2!54506)

(assert (=> b!4727474 (= e!2948484 (contains!16222 lt!1891698 (get!17736 lt!1891909)))))

(declare-fun b!4727475 () Bool)

(declare-fun res!2000864 () Bool)

(assert (=> b!4727475 (=> (not res!2000864) (not e!2948484))))

(assert (=> b!4727475 (= res!2000864 (= (_1!30547 (get!17736 lt!1891909)) key!4653))))

(declare-fun d!1506350 () Bool)

(assert (=> d!1506350 e!2948483))

(declare-fun res!2000865 () Bool)

(assert (=> d!1506350 (=> res!2000865 e!2948483)))

(declare-fun e!2948486 () Bool)

(assert (=> d!1506350 (= res!2000865 e!2948486)))

(declare-fun res!2000867 () Bool)

(assert (=> d!1506350 (=> (not res!2000867) (not e!2948486))))

(declare-fun isEmpty!29189 (Option!12377) Bool)

(assert (=> d!1506350 (= res!2000867 (isEmpty!29189 lt!1891909))))

(assert (=> d!1506350 (= lt!1891909 e!2948485)))

(declare-fun c!807356 () Bool)

(assert (=> d!1506350 (= c!807356 (and ((_ is Cons!52866) lt!1891698) (= (_1!30547 (h!59221 lt!1891698)) key!4653)))))

(assert (=> d!1506350 (noDuplicateKeys!2028 lt!1891698)))

(assert (=> d!1506350 (= (getPair!568 lt!1891698 key!4653) lt!1891909)))

(declare-fun b!4727476 () Bool)

(assert (=> b!4727476 (= e!2948486 (not (containsKey!3391 lt!1891698 key!4653)))))

(declare-fun b!4727477 () Bool)

(assert (=> b!4727477 (= e!2948487 None!12376)))

(assert (= (and d!1506350 c!807356) b!4727473))

(assert (= (and d!1506350 (not c!807356)) b!4727472))

(assert (= (and b!4727472 c!807355) b!4727470))

(assert (= (and b!4727472 (not c!807355)) b!4727477))

(assert (= (and d!1506350 res!2000867) b!4727476))

(assert (= (and d!1506350 (not res!2000865)) b!4727471))

(assert (= (and b!4727471 res!2000866) b!4727475))

(assert (= (and b!4727475 res!2000864) b!4727474))

(declare-fun m!5667663 () Bool)

(assert (=> b!4727470 m!5667663))

(declare-fun m!5667665 () Bool)

(assert (=> b!4727475 m!5667665))

(declare-fun m!5667667 () Bool)

(assert (=> d!1506350 m!5667667))

(declare-fun m!5667669 () Bool)

(assert (=> d!1506350 m!5667669))

(declare-fun m!5667671 () Bool)

(assert (=> b!4727476 m!5667671))

(declare-fun m!5667673 () Bool)

(assert (=> b!4727471 m!5667673))

(assert (=> b!4727474 m!5667665))

(assert (=> b!4727474 m!5667665))

(declare-fun m!5667675 () Bool)

(assert (=> b!4727474 m!5667675))

(assert (=> b!4727277 d!1506350))

(declare-fun d!1506364 () Bool)

(declare-fun dynLambda!21834 (Int tuple2!54508) Bool)

(assert (=> d!1506364 (dynLambda!21834 lambda!216452 lt!1891707)))

(declare-fun lt!1891913 () Unit!131113)

(declare-fun choose!33398 (List!52991 Int tuple2!54508) Unit!131113)

(assert (=> d!1506364 (= lt!1891913 (choose!33398 (toList!5945 lm!2023) lambda!216452 lt!1891707))))

(declare-fun e!2948498 () Bool)

(assert (=> d!1506364 e!2948498))

(declare-fun res!2000876 () Bool)

(assert (=> d!1506364 (=> (not res!2000876) (not e!2948498))))

(assert (=> d!1506364 (= res!2000876 (forall!11616 (toList!5945 lm!2023) lambda!216452))))

(assert (=> d!1506364 (= (forallContained!3657 (toList!5945 lm!2023) lambda!216452 lt!1891707) lt!1891913)))

(declare-fun b!4727490 () Bool)

(assert (=> b!4727490 (= e!2948498 (contains!16218 (toList!5945 lm!2023) lt!1891707))))

(assert (= (and d!1506364 res!2000876) b!4727490))

(declare-fun b_lambda!179777 () Bool)

(assert (=> (not b_lambda!179777) (not d!1506364)))

(declare-fun m!5667687 () Bool)

(assert (=> d!1506364 m!5667687))

(declare-fun m!5667689 () Bool)

(assert (=> d!1506364 m!5667689))

(assert (=> d!1506364 m!5667405))

(assert (=> b!4727490 m!5667431))

(assert (=> b!4727277 d!1506364))

(declare-fun d!1506374 () Bool)

(declare-datatypes ((Option!12379 0))(
  ( (None!12378) (Some!12378 (v!46975 List!52990)) )
))
(declare-fun get!17737 (Option!12379) List!52990)

(declare-fun getValueByKey!1969 (List!52991 (_ BitVec 64)) Option!12379)

(assert (=> d!1506374 (= (apply!12453 lm!2023 lt!1891704) (get!17737 (getValueByKey!1969 (toList!5945 lm!2023) lt!1891704)))))

(declare-fun bs!1118330 () Bool)

(assert (= bs!1118330 d!1506374))

(declare-fun m!5667695 () Bool)

(assert (=> bs!1118330 m!5667695))

(assert (=> bs!1118330 m!5667695))

(declare-fun m!5667697 () Bool)

(assert (=> bs!1118330 m!5667697))

(assert (=> b!4727277 d!1506374))

(declare-fun bs!1118335 () Bool)

(declare-fun d!1506380 () Bool)

(assert (= bs!1118335 (and d!1506380 start!481432)))

(declare-fun lambda!216545 () Int)

(assert (=> bs!1118335 (= lambda!216545 lambda!216452)))

(declare-fun bs!1118336 () Bool)

(assert (= bs!1118336 (and d!1506380 d!1506326)))

(assert (=> bs!1118336 (= lambda!216545 lambda!216534)))

(assert (=> d!1506380 (contains!16219 lm!2023 (hash!4406 hashF!1323 key!4653))))

(declare-fun lt!1891916 () Unit!131113)

(declare-fun choose!33399 (ListLongMap!4475 K!14220 Hashable!6397) Unit!131113)

(assert (=> d!1506380 (= lt!1891916 (choose!33399 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1506380 (forall!11616 (toList!5945 lm!2023) lambda!216545)))

(assert (=> d!1506380 (= (lemmaInGenMapThenLongMapContainsHash!774 lm!2023 key!4653 hashF!1323) lt!1891916)))

(declare-fun bs!1118337 () Bool)

(assert (= bs!1118337 d!1506380))

(assert (=> bs!1118337 m!5667457))

(assert (=> bs!1118337 m!5667457))

(declare-fun m!5667701 () Bool)

(assert (=> bs!1118337 m!5667701))

(declare-fun m!5667703 () Bool)

(assert (=> bs!1118337 m!5667703))

(declare-fun m!5667705 () Bool)

(assert (=> bs!1118337 m!5667705))

(assert (=> b!4727277 d!1506380))

(declare-fun bs!1118346 () Bool)

(declare-fun d!1506384 () Bool)

(assert (= bs!1118346 (and d!1506384 start!481432)))

(declare-fun lambda!216553 () Int)

(assert (=> bs!1118346 (= lambda!216553 lambda!216452)))

(declare-fun bs!1118347 () Bool)

(assert (= bs!1118347 (and d!1506384 d!1506326)))

(assert (=> bs!1118347 (= lambda!216553 lambda!216534)))

(declare-fun bs!1118348 () Bool)

(assert (= bs!1118348 (and d!1506384 d!1506380)))

(assert (=> bs!1118348 (= lambda!216553 lambda!216545)))

(declare-fun lt!1891963 () (_ BitVec 64))

(declare-fun lt!1891964 () List!52990)

(declare-fun b!4727550 () Bool)

(declare-fun e!2948537 () Bool)

(assert (=> b!4727550 (= e!2948537 (= (getValueByKey!1969 (toList!5945 lm!2023) lt!1891963) (Some!12378 lt!1891964)))))

(declare-fun b!4727548 () Bool)

(declare-fun res!2000903 () Bool)

(declare-fun e!2948538 () Bool)

(assert (=> b!4727548 (=> (not res!2000903) (not e!2948538))))

(assert (=> b!4727548 (= res!2000903 (contains!16220 (extractMap!2054 (toList!5945 lm!2023)) key!4653))))

(declare-fun b!4727549 () Bool)

(assert (=> b!4727549 (= e!2948538 (isDefined!9631 (getPair!568 (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1891958 () Unit!131113)

(assert (=> b!4727549 (= lt!1891958 (forallContained!3657 (toList!5945 lm!2023) lambda!216553 (tuple2!54509 (hash!4406 hashF!1323 key!4653) (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)))))))

(declare-fun lt!1891961 () Unit!131113)

(declare-fun lt!1891960 () Unit!131113)

(assert (=> b!4727549 (= lt!1891961 lt!1891960)))

(assert (=> b!4727549 (contains!16218 (toList!5945 lm!2023) (tuple2!54509 lt!1891963 lt!1891964))))

(assert (=> b!4727549 (= lt!1891960 (lemmaGetValueImpliesTupleContained!373 lm!2023 lt!1891963 lt!1891964))))

(assert (=> b!4727549 e!2948537))

(declare-fun res!2000905 () Bool)

(assert (=> b!4727549 (=> (not res!2000905) (not e!2948537))))

(assert (=> b!4727549 (= res!2000905 (contains!16219 lm!2023 lt!1891963))))

(assert (=> b!4727549 (= lt!1891964 (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)))))

(assert (=> b!4727549 (= lt!1891963 (hash!4406 hashF!1323 key!4653))))

(declare-fun lt!1891965 () Unit!131113)

(declare-fun lt!1891962 () Unit!131113)

(assert (=> b!4727549 (= lt!1891965 lt!1891962)))

(assert (=> b!4727549 (contains!16219 lm!2023 (hash!4406 hashF!1323 key!4653))))

(assert (=> b!4727549 (= lt!1891962 (lemmaInGenMapThenLongMapContainsHash!774 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4727547 () Bool)

(declare-fun res!2000902 () Bool)

(assert (=> b!4727547 (=> (not res!2000902) (not e!2948538))))

(assert (=> b!4727547 (= res!2000902 (allKeysSameHashInMap!1942 lm!2023 hashF!1323))))

(assert (=> d!1506384 e!2948538))

(declare-fun res!2000904 () Bool)

(assert (=> d!1506384 (=> (not res!2000904) (not e!2948538))))

(assert (=> d!1506384 (= res!2000904 (forall!11616 (toList!5945 lm!2023) lambda!216553))))

(declare-fun lt!1891959 () Unit!131113)

(declare-fun choose!33400 (ListLongMap!4475 K!14220 Hashable!6397) Unit!131113)

(assert (=> d!1506384 (= lt!1891959 (choose!33400 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1506384 (forall!11616 (toList!5945 lm!2023) lambda!216553)))

(assert (=> d!1506384 (= (lemmaInGenMapThenGetPairDefined!364 lm!2023 key!4653 hashF!1323) lt!1891959)))

(assert (= (and d!1506384 res!2000904) b!4727547))

(assert (= (and b!4727547 res!2000902) b!4727548))

(assert (= (and b!4727548 res!2000903) b!4727549))

(assert (= (and b!4727549 res!2000905) b!4727550))

(assert (=> b!4727547 m!5667411))

(assert (=> b!4727548 m!5667451))

(assert (=> b!4727548 m!5667451))

(declare-fun m!5667741 () Bool)

(assert (=> b!4727548 m!5667741))

(declare-fun m!5667743 () Bool)

(assert (=> b!4727550 m!5667743))

(declare-fun m!5667745 () Bool)

(assert (=> b!4727549 m!5667745))

(assert (=> b!4727549 m!5667457))

(assert (=> b!4727549 m!5667701))

(declare-fun m!5667747 () Bool)

(assert (=> b!4727549 m!5667747))

(declare-fun m!5667749 () Bool)

(assert (=> b!4727549 m!5667749))

(declare-fun m!5667751 () Bool)

(assert (=> b!4727549 m!5667751))

(assert (=> b!4727549 m!5667747))

(assert (=> b!4727549 m!5667427))

(declare-fun m!5667753 () Bool)

(assert (=> b!4727549 m!5667753))

(assert (=> b!4727549 m!5667457))

(assert (=> b!4727549 m!5667751))

(declare-fun m!5667755 () Bool)

(assert (=> b!4727549 m!5667755))

(declare-fun m!5667757 () Bool)

(assert (=> b!4727549 m!5667757))

(assert (=> b!4727549 m!5667457))

(declare-fun m!5667759 () Bool)

(assert (=> d!1506384 m!5667759))

(declare-fun m!5667761 () Bool)

(assert (=> d!1506384 m!5667761))

(assert (=> d!1506384 m!5667759))

(assert (=> b!4727277 d!1506384))

(declare-fun d!1506398 () Bool)

(assert (=> d!1506398 (containsKey!3391 oldBucket!34 key!4653)))

(declare-fun lt!1891968 () Unit!131113)

(declare-fun choose!33401 (List!52990 K!14220 Hashable!6397) Unit!131113)

(assert (=> d!1506398 (= lt!1891968 (choose!33401 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1506398 (noDuplicateKeys!2028 oldBucket!34)))

(assert (=> d!1506398 (= (lemmaGetPairDefinedThenContainsKey!312 oldBucket!34 key!4653 hashF!1323) lt!1891968)))

(declare-fun bs!1118349 () Bool)

(assert (= bs!1118349 d!1506398))

(assert (=> bs!1118349 m!5667441))

(declare-fun m!5667763 () Bool)

(assert (=> bs!1118349 m!5667763))

(assert (=> bs!1118349 m!5667409))

(assert (=> b!4727277 d!1506398))

(declare-fun d!1506400 () Bool)

(declare-fun res!2000910 () Bool)

(declare-fun e!2948543 () Bool)

(assert (=> d!1506400 (=> res!2000910 e!2948543)))

(assert (=> d!1506400 (= res!2000910 (and ((_ is Cons!52866) (t!360266 oldBucket!34)) (= (_1!30547 (h!59221 (t!360266 oldBucket!34))) key!4653)))))

(assert (=> d!1506400 (= (containsKey!3391 (t!360266 oldBucket!34) key!4653) e!2948543)))

(declare-fun b!4727555 () Bool)

(declare-fun e!2948544 () Bool)

(assert (=> b!4727555 (= e!2948543 e!2948544)))

(declare-fun res!2000911 () Bool)

(assert (=> b!4727555 (=> (not res!2000911) (not e!2948544))))

(assert (=> b!4727555 (= res!2000911 ((_ is Cons!52866) (t!360266 oldBucket!34)))))

(declare-fun b!4727556 () Bool)

(assert (=> b!4727556 (= e!2948544 (containsKey!3391 (t!360266 (t!360266 oldBucket!34)) key!4653))))

(assert (= (and d!1506400 (not res!2000910)) b!4727555))

(assert (= (and b!4727555 res!2000911) b!4727556))

(declare-fun m!5667765 () Bool)

(assert (=> b!4727556 m!5667765))

(assert (=> b!4727277 d!1506400))

(declare-fun d!1506402 () Bool)

(assert (=> d!1506402 (= (isDefined!9631 (getPair!568 lt!1891698 key!4653)) (not (isEmpty!29189 (getPair!568 lt!1891698 key!4653))))))

(declare-fun bs!1118350 () Bool)

(assert (= bs!1118350 d!1506402))

(assert (=> bs!1118350 m!5667433))

(declare-fun m!5667767 () Bool)

(assert (=> bs!1118350 m!5667767))

(assert (=> b!4727277 d!1506402))

(declare-fun d!1506404 () Bool)

(declare-fun res!2000912 () Bool)

(declare-fun e!2948545 () Bool)

(assert (=> d!1506404 (=> res!2000912 e!2948545)))

(assert (=> d!1506404 (= res!2000912 (and ((_ is Cons!52866) oldBucket!34) (= (_1!30547 (h!59221 oldBucket!34)) key!4653)))))

(assert (=> d!1506404 (= (containsKey!3391 oldBucket!34 key!4653) e!2948545)))

(declare-fun b!4727557 () Bool)

(declare-fun e!2948546 () Bool)

(assert (=> b!4727557 (= e!2948545 e!2948546)))

(declare-fun res!2000913 () Bool)

(assert (=> b!4727557 (=> (not res!2000913) (not e!2948546))))

(assert (=> b!4727557 (= res!2000913 ((_ is Cons!52866) oldBucket!34))))

(declare-fun b!4727558 () Bool)

(assert (=> b!4727558 (= e!2948546 (containsKey!3391 (t!360266 oldBucket!34) key!4653))))

(assert (= (and d!1506404 (not res!2000912)) b!4727557))

(assert (= (and b!4727557 res!2000913) b!4727558))

(assert (=> b!4727558 m!5667435))

(assert (=> b!4727277 d!1506404))

(declare-fun d!1506406 () Bool)

(declare-fun e!2948551 () Bool)

(assert (=> d!1506406 e!2948551))

(declare-fun res!2000916 () Bool)

(assert (=> d!1506406 (=> res!2000916 e!2948551)))

(declare-fun lt!1891977 () Bool)

(assert (=> d!1506406 (= res!2000916 (not lt!1891977))))

(declare-fun lt!1891979 () Bool)

(assert (=> d!1506406 (= lt!1891977 lt!1891979)))

(declare-fun lt!1891978 () Unit!131113)

(declare-fun e!2948552 () Unit!131113)

(assert (=> d!1506406 (= lt!1891978 e!2948552)))

(declare-fun c!807371 () Bool)

(assert (=> d!1506406 (= c!807371 lt!1891979)))

(declare-fun containsKey!3394 (List!52991 (_ BitVec 64)) Bool)

(assert (=> d!1506406 (= lt!1891979 (containsKey!3394 (toList!5945 lm!2023) lt!1891704))))

(assert (=> d!1506406 (= (contains!16219 lm!2023 lt!1891704) lt!1891977)))

(declare-fun b!4727565 () Bool)

(declare-fun lt!1891980 () Unit!131113)

(assert (=> b!4727565 (= e!2948552 lt!1891980)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1860 (List!52991 (_ BitVec 64)) Unit!131113)

(assert (=> b!4727565 (= lt!1891980 (lemmaContainsKeyImpliesGetValueByKeyDefined!1860 (toList!5945 lm!2023) lt!1891704))))

(declare-fun isDefined!9634 (Option!12379) Bool)

(assert (=> b!4727565 (isDefined!9634 (getValueByKey!1969 (toList!5945 lm!2023) lt!1891704))))

(declare-fun b!4727566 () Bool)

(declare-fun Unit!131139 () Unit!131113)

(assert (=> b!4727566 (= e!2948552 Unit!131139)))

(declare-fun b!4727567 () Bool)

(assert (=> b!4727567 (= e!2948551 (isDefined!9634 (getValueByKey!1969 (toList!5945 lm!2023) lt!1891704)))))

(assert (= (and d!1506406 c!807371) b!4727565))

(assert (= (and d!1506406 (not c!807371)) b!4727566))

(assert (= (and d!1506406 (not res!2000916)) b!4727567))

(declare-fun m!5667769 () Bool)

(assert (=> d!1506406 m!5667769))

(declare-fun m!5667771 () Bool)

(assert (=> b!4727565 m!5667771))

(assert (=> b!4727565 m!5667695))

(assert (=> b!4727565 m!5667695))

(declare-fun m!5667773 () Bool)

(assert (=> b!4727565 m!5667773))

(assert (=> b!4727567 m!5667695))

(assert (=> b!4727567 m!5667695))

(assert (=> b!4727567 m!5667773))

(assert (=> b!4727277 d!1506406))

(declare-fun bs!1118351 () Bool)

(declare-fun d!1506408 () Bool)

(assert (= bs!1118351 (and d!1506408 d!1506306)))

(declare-fun lambda!216554 () Int)

(assert (=> bs!1118351 (not (= lambda!216554 lambda!216525))))

(declare-fun bs!1118352 () Bool)

(assert (= bs!1118352 (and d!1506408 b!4727387)))

(assert (=> bs!1118352 (not (= lambda!216554 lambda!216524))))

(assert (=> bs!1118352 (not (= lambda!216554 lambda!216523))))

(declare-fun bs!1118353 () Bool)

(assert (= bs!1118353 (and d!1506408 b!4727384)))

(assert (=> bs!1118353 (not (= lambda!216554 lambda!216522))))

(declare-fun bs!1118354 () Bool)

(assert (= bs!1118354 (and d!1506408 d!1506298)))

(assert (=> bs!1118354 (= lambda!216554 lambda!216455)))

(assert (=> d!1506408 true))

(assert (=> d!1506408 true))

(assert (=> d!1506408 (= (allKeysSameHash!1854 newBucket!218 hash!405 hashF!1323) (forall!11618 newBucket!218 lambda!216554))))

(declare-fun bs!1118355 () Bool)

(assert (= bs!1118355 d!1506408))

(declare-fun m!5667775 () Bool)

(assert (=> bs!1118355 m!5667775))

(assert (=> b!4727276 d!1506408))

(declare-fun bs!1118356 () Bool)

(declare-fun d!1506410 () Bool)

(assert (= bs!1118356 (and d!1506410 start!481432)))

(declare-fun lambda!216557 () Int)

(assert (=> bs!1118356 (not (= lambda!216557 lambda!216452))))

(declare-fun bs!1118357 () Bool)

(assert (= bs!1118357 (and d!1506410 d!1506326)))

(assert (=> bs!1118357 (not (= lambda!216557 lambda!216534))))

(declare-fun bs!1118358 () Bool)

(assert (= bs!1118358 (and d!1506410 d!1506380)))

(assert (=> bs!1118358 (not (= lambda!216557 lambda!216545))))

(declare-fun bs!1118359 () Bool)

(assert (= bs!1118359 (and d!1506410 d!1506384)))

(assert (=> bs!1118359 (not (= lambda!216557 lambda!216553))))

(assert (=> d!1506410 true))

(assert (=> d!1506410 (= (allKeysSameHashInMap!1942 lm!2023 hashF!1323) (forall!11616 (toList!5945 lm!2023) lambda!216557))))

(declare-fun bs!1118360 () Bool)

(assert (= bs!1118360 d!1506410))

(declare-fun m!5667777 () Bool)

(assert (=> bs!1118360 m!5667777))

(assert (=> b!4727287 d!1506410))

(declare-fun b!4727588 () Bool)

(declare-datatypes ((List!52993 0))(
  ( (Nil!52869) (Cons!52869 (h!59226 K!14220) (t!360269 List!52993)) )
))
(declare-fun e!2948567 () List!52993)

(declare-fun getKeysList!959 (List!52990) List!52993)

(assert (=> b!4727588 (= e!2948567 (getKeysList!959 (toList!5946 lt!1891700)))))

(declare-fun b!4727589 () Bool)

(declare-fun e!2948565 () Bool)

(declare-fun contains!16224 (List!52993 K!14220) Bool)

(declare-fun keys!18996 (ListMap!5309) List!52993)

(assert (=> b!4727589 (= e!2948565 (contains!16224 (keys!18996 lt!1891700) key!4653))))

(declare-fun b!4727590 () Bool)

(declare-fun e!2948568 () Bool)

(assert (=> b!4727590 (= e!2948568 e!2948565)))

(declare-fun res!2000925 () Bool)

(assert (=> b!4727590 (=> (not res!2000925) (not e!2948565))))

(declare-datatypes ((Option!12381 0))(
  ( (None!12380) (Some!12380 (v!46977 V!14466)) )
))
(declare-fun isDefined!9635 (Option!12381) Bool)

(declare-fun getValueByKey!1971 (List!52990 K!14220) Option!12381)

(assert (=> b!4727590 (= res!2000925 (isDefined!9635 (getValueByKey!1971 (toList!5946 lt!1891700) key!4653)))))

(declare-fun b!4727591 () Bool)

(assert (=> b!4727591 false))

(declare-fun lt!1892001 () Unit!131113)

(declare-fun lt!1891997 () Unit!131113)

(assert (=> b!4727591 (= lt!1892001 lt!1891997)))

(declare-fun containsKey!3395 (List!52990 K!14220) Bool)

(assert (=> b!4727591 (containsKey!3395 (toList!5946 lt!1891700) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!958 (List!52990 K!14220) Unit!131113)

(assert (=> b!4727591 (= lt!1891997 (lemmaInGetKeysListThenContainsKey!958 (toList!5946 lt!1891700) key!4653))))

(declare-fun e!2948566 () Unit!131113)

(declare-fun Unit!131141 () Unit!131113)

(assert (=> b!4727591 (= e!2948566 Unit!131141)))

(declare-fun b!4727592 () Bool)

(declare-fun e!2948569 () Unit!131113)

(declare-fun lt!1892002 () Unit!131113)

(assert (=> b!4727592 (= e!2948569 lt!1892002)))

(declare-fun lt!1892003 () Unit!131113)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1862 (List!52990 K!14220) Unit!131113)

(assert (=> b!4727592 (= lt!1892003 (lemmaContainsKeyImpliesGetValueByKeyDefined!1862 (toList!5946 lt!1891700) key!4653))))

(assert (=> b!4727592 (isDefined!9635 (getValueByKey!1971 (toList!5946 lt!1891700) key!4653))))

(declare-fun lt!1891999 () Unit!131113)

(assert (=> b!4727592 (= lt!1891999 lt!1892003)))

(declare-fun lemmaInListThenGetKeysListContains!954 (List!52990 K!14220) Unit!131113)

(assert (=> b!4727592 (= lt!1892002 (lemmaInListThenGetKeysListContains!954 (toList!5946 lt!1891700) key!4653))))

(declare-fun call!330739 () Bool)

(assert (=> b!4727592 call!330739))

(declare-fun b!4727593 () Bool)

(declare-fun Unit!131142 () Unit!131113)

(assert (=> b!4727593 (= e!2948566 Unit!131142)))

(declare-fun b!4727594 () Bool)

(declare-fun e!2948570 () Bool)

(assert (=> b!4727594 (= e!2948570 (not (contains!16224 (keys!18996 lt!1891700) key!4653)))))

(declare-fun b!4727596 () Bool)

(assert (=> b!4727596 (= e!2948569 e!2948566)))

(declare-fun c!807378 () Bool)

(assert (=> b!4727596 (= c!807378 call!330739)))

(declare-fun bm!330734 () Bool)

(assert (=> bm!330734 (= call!330739 (contains!16224 e!2948567 key!4653))))

(declare-fun c!807380 () Bool)

(declare-fun c!807379 () Bool)

(assert (=> bm!330734 (= c!807380 c!807379)))

(declare-fun b!4727595 () Bool)

(assert (=> b!4727595 (= e!2948567 (keys!18996 lt!1891700))))

(declare-fun d!1506412 () Bool)

(assert (=> d!1506412 e!2948568))

(declare-fun res!2000923 () Bool)

(assert (=> d!1506412 (=> res!2000923 e!2948568)))

(assert (=> d!1506412 (= res!2000923 e!2948570)))

(declare-fun res!2000924 () Bool)

(assert (=> d!1506412 (=> (not res!2000924) (not e!2948570))))

(declare-fun lt!1891998 () Bool)

(assert (=> d!1506412 (= res!2000924 (not lt!1891998))))

(declare-fun lt!1892000 () Bool)

(assert (=> d!1506412 (= lt!1891998 lt!1892000)))

(declare-fun lt!1892004 () Unit!131113)

(assert (=> d!1506412 (= lt!1892004 e!2948569)))

(assert (=> d!1506412 (= c!807379 lt!1892000)))

(assert (=> d!1506412 (= lt!1892000 (containsKey!3395 (toList!5946 lt!1891700) key!4653))))

(assert (=> d!1506412 (= (contains!16220 lt!1891700 key!4653) lt!1891998)))

(assert (= (and d!1506412 c!807379) b!4727592))

(assert (= (and d!1506412 (not c!807379)) b!4727596))

(assert (= (and b!4727596 c!807378) b!4727591))

(assert (= (and b!4727596 (not c!807378)) b!4727593))

(assert (= (or b!4727592 b!4727596) bm!330734))

(assert (= (and bm!330734 c!807380) b!4727588))

(assert (= (and bm!330734 (not c!807380)) b!4727595))

(assert (= (and d!1506412 res!2000924) b!4727594))

(assert (= (and d!1506412 (not res!2000923)) b!4727590))

(assert (= (and b!4727590 res!2000925) b!4727589))

(declare-fun m!5667779 () Bool)

(assert (=> b!4727595 m!5667779))

(declare-fun m!5667781 () Bool)

(assert (=> bm!330734 m!5667781))

(declare-fun m!5667783 () Bool)

(assert (=> b!4727592 m!5667783))

(declare-fun m!5667785 () Bool)

(assert (=> b!4727592 m!5667785))

(assert (=> b!4727592 m!5667785))

(declare-fun m!5667787 () Bool)

(assert (=> b!4727592 m!5667787))

(declare-fun m!5667789 () Bool)

(assert (=> b!4727592 m!5667789))

(declare-fun m!5667791 () Bool)

(assert (=> b!4727588 m!5667791))

(assert (=> b!4727594 m!5667779))

(assert (=> b!4727594 m!5667779))

(declare-fun m!5667793 () Bool)

(assert (=> b!4727594 m!5667793))

(declare-fun m!5667795 () Bool)

(assert (=> b!4727591 m!5667795))

(declare-fun m!5667797 () Bool)

(assert (=> b!4727591 m!5667797))

(assert (=> b!4727590 m!5667785))

(assert (=> b!4727590 m!5667785))

(assert (=> b!4727590 m!5667787))

(assert (=> d!1506412 m!5667795))

(assert (=> b!4727589 m!5667779))

(assert (=> b!4727589 m!5667779))

(assert (=> b!4727589 m!5667793))

(assert (=> b!4727283 d!1506412))

(declare-fun bs!1118361 () Bool)

(declare-fun d!1506414 () Bool)

(assert (= bs!1118361 (and d!1506414 d!1506384)))

(declare-fun lambda!216558 () Int)

(assert (=> bs!1118361 (= lambda!216558 lambda!216553)))

(declare-fun bs!1118362 () Bool)

(assert (= bs!1118362 (and d!1506414 d!1506326)))

(assert (=> bs!1118362 (= lambda!216558 lambda!216534)))

(declare-fun bs!1118363 () Bool)

(assert (= bs!1118363 (and d!1506414 d!1506410)))

(assert (=> bs!1118363 (not (= lambda!216558 lambda!216557))))

(declare-fun bs!1118364 () Bool)

(assert (= bs!1118364 (and d!1506414 d!1506380)))

(assert (=> bs!1118364 (= lambda!216558 lambda!216545)))

(declare-fun bs!1118365 () Bool)

(assert (= bs!1118365 (and d!1506414 start!481432)))

(assert (=> bs!1118365 (= lambda!216558 lambda!216452)))

(declare-fun lt!1892005 () ListMap!5309)

(assert (=> d!1506414 (invariantList!1519 (toList!5946 lt!1892005))))

(declare-fun e!2948571 () ListMap!5309)

(assert (=> d!1506414 (= lt!1892005 e!2948571)))

(declare-fun c!807381 () Bool)

(assert (=> d!1506414 (= c!807381 ((_ is Cons!52867) (toList!5945 lm!2023)))))

(assert (=> d!1506414 (forall!11616 (toList!5945 lm!2023) lambda!216558)))

(assert (=> d!1506414 (= (extractMap!2054 (toList!5945 lm!2023)) lt!1892005)))

(declare-fun b!4727597 () Bool)

(assert (=> b!4727597 (= e!2948571 (addToMapMapFromBucket!1458 (_2!30548 (h!59222 (toList!5945 lm!2023))) (extractMap!2054 (t!360267 (toList!5945 lm!2023)))))))

(declare-fun b!4727598 () Bool)

(assert (=> b!4727598 (= e!2948571 (ListMap!5310 Nil!52866))))

(assert (= (and d!1506414 c!807381) b!4727597))

(assert (= (and d!1506414 (not c!807381)) b!4727598))

(declare-fun m!5667799 () Bool)

(assert (=> d!1506414 m!5667799))

(declare-fun m!5667801 () Bool)

(assert (=> d!1506414 m!5667801))

(assert (=> b!4727597 m!5667421))

(assert (=> b!4727597 m!5667421))

(assert (=> b!4727597 m!5667423))

(assert (=> b!4727283 d!1506414))

(declare-fun b!4727601 () Bool)

(declare-fun e!2948572 () List!52990)

(assert (=> b!4727601 (= e!2948572 (Cons!52866 (h!59221 oldBucket!34) (removePairForKey!1623 (t!360266 oldBucket!34) key!4653)))))

(declare-fun d!1506416 () Bool)

(declare-fun lt!1892006 () List!52990)

(assert (=> d!1506416 (not (containsKey!3391 lt!1892006 key!4653))))

(declare-fun e!2948573 () List!52990)

(assert (=> d!1506416 (= lt!1892006 e!2948573)))

(declare-fun c!807382 () Bool)

(assert (=> d!1506416 (= c!807382 (and ((_ is Cons!52866) oldBucket!34) (= (_1!30547 (h!59221 oldBucket!34)) key!4653)))))

(assert (=> d!1506416 (noDuplicateKeys!2028 oldBucket!34)))

(assert (=> d!1506416 (= (removePairForKey!1623 oldBucket!34 key!4653) lt!1892006)))

(declare-fun b!4727600 () Bool)

(assert (=> b!4727600 (= e!2948573 e!2948572)))

(declare-fun c!807383 () Bool)

(assert (=> b!4727600 (= c!807383 ((_ is Cons!52866) oldBucket!34))))

(declare-fun b!4727602 () Bool)

(assert (=> b!4727602 (= e!2948572 Nil!52866)))

(declare-fun b!4727599 () Bool)

(assert (=> b!4727599 (= e!2948573 (t!360266 oldBucket!34))))

(assert (= (and d!1506416 c!807382) b!4727599))

(assert (= (and d!1506416 (not c!807382)) b!4727600))

(assert (= (and b!4727600 c!807383) b!4727601))

(assert (= (and b!4727600 (not c!807383)) b!4727602))

(assert (=> b!4727601 m!5667419))

(declare-fun m!5667803 () Bool)

(assert (=> d!1506416 m!5667803))

(assert (=> d!1506416 m!5667409))

(assert (=> b!4727284 d!1506416))

(declare-fun d!1506418 () Bool)

(declare-fun res!2000930 () Bool)

(declare-fun e!2948578 () Bool)

(assert (=> d!1506418 (=> res!2000930 e!2948578)))

(assert (=> d!1506418 (= res!2000930 ((_ is Nil!52867) (toList!5945 lm!2023)))))

(assert (=> d!1506418 (= (forall!11616 (toList!5945 lm!2023) lambda!216452) e!2948578)))

(declare-fun b!4727607 () Bool)

(declare-fun e!2948579 () Bool)

(assert (=> b!4727607 (= e!2948578 e!2948579)))

(declare-fun res!2000931 () Bool)

(assert (=> b!4727607 (=> (not res!2000931) (not e!2948579))))

(assert (=> b!4727607 (= res!2000931 (dynLambda!21834 lambda!216452 (h!59222 (toList!5945 lm!2023))))))

(declare-fun b!4727608 () Bool)

(assert (=> b!4727608 (= e!2948579 (forall!11616 (t!360267 (toList!5945 lm!2023)) lambda!216452))))

(assert (= (and d!1506418 (not res!2000930)) b!4727607))

(assert (= (and b!4727607 res!2000931) b!4727608))

(declare-fun b_lambda!179783 () Bool)

(assert (=> (not b_lambda!179783) (not b!4727607)))

(declare-fun m!5667805 () Bool)

(assert (=> b!4727607 m!5667805))

(declare-fun m!5667807 () Bool)

(assert (=> b!4727608 m!5667807))

(assert (=> start!481432 d!1506418))

(declare-fun d!1506420 () Bool)

(assert (=> d!1506420 (= (inv!68094 lm!2023) (isStrictlySorted!757 (toList!5945 lm!2023)))))

(declare-fun bs!1118366 () Bool)

(assert (= bs!1118366 d!1506420))

(declare-fun m!5667809 () Bool)

(assert (=> bs!1118366 m!5667809))

(assert (=> start!481432 d!1506420))

(declare-fun d!1506422 () Bool)

(declare-fun tail!9033 (List!52991) List!52991)

(assert (=> d!1506422 (= (tail!9030 lm!2023) (ListLongMap!4476 (tail!9033 (toList!5945 lm!2023))))))

(declare-fun bs!1118367 () Bool)

(assert (= bs!1118367 d!1506422))

(declare-fun m!5667811 () Bool)

(assert (=> bs!1118367 m!5667811))

(assert (=> b!4727280 d!1506422))

(declare-fun d!1506424 () Bool)

(declare-fun hash!4408 (Hashable!6397 K!14220) (_ BitVec 64))

(assert (=> d!1506424 (= (hash!4406 hashF!1323 key!4653) (hash!4408 hashF!1323 key!4653))))

(declare-fun bs!1118368 () Bool)

(assert (= bs!1118368 d!1506424))

(declare-fun m!5667813 () Bool)

(assert (=> bs!1118368 m!5667813))

(assert (=> b!4727291 d!1506424))

(declare-fun d!1506426 () Bool)

(declare-fun res!2000932 () Bool)

(declare-fun e!2948580 () Bool)

(assert (=> d!1506426 (=> res!2000932 e!2948580)))

(assert (=> d!1506426 (= res!2000932 (not ((_ is Cons!52866) newBucket!218)))))

(assert (=> d!1506426 (= (noDuplicateKeys!2028 newBucket!218) e!2948580)))

(declare-fun b!4727609 () Bool)

(declare-fun e!2948581 () Bool)

(assert (=> b!4727609 (= e!2948580 e!2948581)))

(declare-fun res!2000933 () Bool)

(assert (=> b!4727609 (=> (not res!2000933) (not e!2948581))))

(assert (=> b!4727609 (= res!2000933 (not (containsKey!3391 (t!360266 newBucket!218) (_1!30547 (h!59221 newBucket!218)))))))

(declare-fun b!4727610 () Bool)

(assert (=> b!4727610 (= e!2948581 (noDuplicateKeys!2028 (t!360266 newBucket!218)))))

(assert (= (and d!1506426 (not res!2000932)) b!4727609))

(assert (= (and b!4727609 res!2000933) b!4727610))

(declare-fun m!5667815 () Bool)

(assert (=> b!4727609 m!5667815))

(declare-fun m!5667817 () Bool)

(assert (=> b!4727610 m!5667817))

(assert (=> b!4727282 d!1506426))

(declare-fun b!4727613 () Bool)

(declare-fun e!2948582 () List!52990)

(assert (=> b!4727613 (= e!2948582 (Cons!52866 (h!59221 (t!360266 oldBucket!34)) (removePairForKey!1623 (t!360266 (t!360266 oldBucket!34)) key!4653)))))

(declare-fun d!1506428 () Bool)

(declare-fun lt!1892007 () List!52990)

(assert (=> d!1506428 (not (containsKey!3391 lt!1892007 key!4653))))

(declare-fun e!2948583 () List!52990)

(assert (=> d!1506428 (= lt!1892007 e!2948583)))

(declare-fun c!807384 () Bool)

(assert (=> d!1506428 (= c!807384 (and ((_ is Cons!52866) (t!360266 oldBucket!34)) (= (_1!30547 (h!59221 (t!360266 oldBucket!34))) key!4653)))))

(assert (=> d!1506428 (noDuplicateKeys!2028 (t!360266 oldBucket!34))))

(assert (=> d!1506428 (= (removePairForKey!1623 (t!360266 oldBucket!34) key!4653) lt!1892007)))

(declare-fun b!4727612 () Bool)

(assert (=> b!4727612 (= e!2948583 e!2948582)))

(declare-fun c!807385 () Bool)

(assert (=> b!4727612 (= c!807385 ((_ is Cons!52866) (t!360266 oldBucket!34)))))

(declare-fun b!4727614 () Bool)

(assert (=> b!4727614 (= e!2948582 Nil!52866)))

(declare-fun b!4727611 () Bool)

(assert (=> b!4727611 (= e!2948583 (t!360266 (t!360266 oldBucket!34)))))

(assert (= (and d!1506428 c!807384) b!4727611))

(assert (= (and d!1506428 (not c!807384)) b!4727612))

(assert (= (and b!4727612 c!807385) b!4727613))

(assert (= (and b!4727612 (not c!807385)) b!4727614))

(declare-fun m!5667819 () Bool)

(assert (=> b!4727613 m!5667819))

(declare-fun m!5667821 () Bool)

(assert (=> d!1506428 m!5667821))

(assert (=> d!1506428 m!5667599))

(assert (=> b!4727293 d!1506428))

(declare-fun b!4727619 () Bool)

(declare-fun e!2948586 () Bool)

(declare-fun tp!1348658 () Bool)

(declare-fun tp!1348659 () Bool)

(assert (=> b!4727619 (= e!2948586 (and tp!1348658 tp!1348659))))

(assert (=> b!4727281 (= tp!1348642 e!2948586)))

(assert (= (and b!4727281 ((_ is Cons!52867) (toList!5945 lm!2023))) b!4727619))

(declare-fun tp!1348662 () Bool)

(declare-fun b!4727624 () Bool)

(declare-fun e!2948589 () Bool)

(assert (=> b!4727624 (= e!2948589 (and tp_is_empty!31405 tp_is_empty!31407 tp!1348662))))

(assert (=> b!4727275 (= tp!1348643 e!2948589)))

(assert (= (and b!4727275 ((_ is Cons!52866) (t!360266 oldBucket!34))) b!4727624))

(declare-fun tp!1348663 () Bool)

(declare-fun e!2948590 () Bool)

(declare-fun b!4727625 () Bool)

(assert (=> b!4727625 (= e!2948590 (and tp_is_empty!31405 tp_is_empty!31407 tp!1348663))))

(assert (=> b!4727292 (= tp!1348641 e!2948590)))

(assert (= (and b!4727292 ((_ is Cons!52866) (t!360266 newBucket!218))) b!4727625))

(declare-fun b_lambda!179785 () Bool)

(assert (= b_lambda!179783 (or start!481432 b_lambda!179785)))

(declare-fun bs!1118369 () Bool)

(declare-fun d!1506430 () Bool)

(assert (= bs!1118369 (and d!1506430 start!481432)))

(assert (=> bs!1118369 (= (dynLambda!21834 lambda!216452 (h!59222 (toList!5945 lm!2023))) (noDuplicateKeys!2028 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))

(assert (=> bs!1118369 m!5667557))

(assert (=> b!4727607 d!1506430))

(declare-fun b_lambda!179787 () Bool)

(assert (= b_lambda!179777 (or start!481432 b_lambda!179787)))

(declare-fun bs!1118370 () Bool)

(declare-fun d!1506432 () Bool)

(assert (= bs!1118370 (and d!1506432 start!481432)))

(assert (=> bs!1118370 (= (dynLambda!21834 lambda!216452 lt!1891707) (noDuplicateKeys!2028 (_2!30548 lt!1891707)))))

(declare-fun m!5667823 () Bool)

(assert (=> bs!1118370 m!5667823))

(assert (=> d!1506364 d!1506432))

(check-sat (not b!4727608) (not b!4727476) (not b_lambda!179785) (not bm!330728) (not d!1506416) (not b!4727588) (not b!4727589) (not b!4727433) (not b!4727591) (not b!4727386) (not d!1506300) (not d!1506306) (not d!1506424) (not bs!1118369) (not d!1506428) (not b!4727558) (not b!4727385) (not b!4727595) (not d!1506344) (not b!4727490) (not b!4727387) (not b!4727413) (not b!4727619) (not b!4727474) (not b!4727388) (not d!1506414) (not bm!330727) (not b!4727547) (not b!4727549) (not b!4727592) (not b!4727601) (not d!1506402) (not d!1506384) (not d!1506350) (not b!4727609) (not b_lambda!179787) (not bm!330734) (not b!4727625) (not d!1506374) (not b!4727471) (not d!1506412) tp_is_empty!31407 (not d!1506406) (not d!1506410) (not b!4727610) (not d!1506408) (not b!4727475) (not b!4727613) (not d!1506364) (not d!1506420) (not b!4727403) (not b!4727414) (not d!1506330) (not d!1506380) (not b!4727624) (not b!4727441) (not b!4727470) (not b!4727567) (not b!4727594) (not b!4727548) (not d!1506422) (not d!1506298) (not d!1506326) (not b!4727565) (not bm!330726) (not d!1506346) (not b!4727590) (not b!4727550) tp_is_empty!31405 (not d!1506398) (not bs!1118370) (not b!4727556) (not b!4727597))
(check-sat)
(get-model)

(declare-fun d!1506434 () Bool)

(assert (=> d!1506434 (= (get!17737 (getValueByKey!1969 (toList!5945 lm!2023) lt!1891704)) (v!46975 (getValueByKey!1969 (toList!5945 lm!2023) lt!1891704)))))

(assert (=> d!1506374 d!1506434))

(declare-fun d!1506436 () Bool)

(declare-fun c!807390 () Bool)

(assert (=> d!1506436 (= c!807390 (and ((_ is Cons!52867) (toList!5945 lm!2023)) (= (_1!30548 (h!59222 (toList!5945 lm!2023))) lt!1891704)))))

(declare-fun e!2948595 () Option!12379)

(assert (=> d!1506436 (= (getValueByKey!1969 (toList!5945 lm!2023) lt!1891704) e!2948595)))

(declare-fun b!4727637 () Bool)

(declare-fun e!2948596 () Option!12379)

(assert (=> b!4727637 (= e!2948596 None!12378)))

(declare-fun b!4727636 () Bool)

(assert (=> b!4727636 (= e!2948596 (getValueByKey!1969 (t!360267 (toList!5945 lm!2023)) lt!1891704))))

(declare-fun b!4727635 () Bool)

(assert (=> b!4727635 (= e!2948595 e!2948596)))

(declare-fun c!807391 () Bool)

(assert (=> b!4727635 (= c!807391 (and ((_ is Cons!52867) (toList!5945 lm!2023)) (not (= (_1!30548 (h!59222 (toList!5945 lm!2023))) lt!1891704))))))

(declare-fun b!4727634 () Bool)

(assert (=> b!4727634 (= e!2948595 (Some!12378 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))

(assert (= (and d!1506436 c!807390) b!4727634))

(assert (= (and d!1506436 (not c!807390)) b!4727635))

(assert (= (and b!4727635 c!807391) b!4727636))

(assert (= (and b!4727635 (not c!807391)) b!4727637))

(declare-fun m!5667825 () Bool)

(assert (=> b!4727636 m!5667825))

(assert (=> d!1506374 d!1506436))

(declare-fun d!1506438 () Bool)

(declare-fun isEmpty!29190 (Option!12381) Bool)

(assert (=> d!1506438 (= (isDefined!9635 (getValueByKey!1971 (toList!5946 lt!1891700) key!4653)) (not (isEmpty!29190 (getValueByKey!1971 (toList!5946 lt!1891700) key!4653))))))

(declare-fun bs!1118371 () Bool)

(assert (= bs!1118371 d!1506438))

(assert (=> bs!1118371 m!5667785))

(declare-fun m!5667827 () Bool)

(assert (=> bs!1118371 m!5667827))

(assert (=> b!4727590 d!1506438))

(declare-fun b!4727648 () Bool)

(declare-fun e!2948602 () Option!12381)

(assert (=> b!4727648 (= e!2948602 (getValueByKey!1971 (t!360266 (toList!5946 lt!1891700)) key!4653))))

(declare-fun b!4727647 () Bool)

(declare-fun e!2948601 () Option!12381)

(assert (=> b!4727647 (= e!2948601 e!2948602)))

(declare-fun c!807397 () Bool)

(assert (=> b!4727647 (= c!807397 (and ((_ is Cons!52866) (toList!5946 lt!1891700)) (not (= (_1!30547 (h!59221 (toList!5946 lt!1891700))) key!4653))))))

(declare-fun b!4727649 () Bool)

(assert (=> b!4727649 (= e!2948602 None!12380)))

(declare-fun b!4727646 () Bool)

(assert (=> b!4727646 (= e!2948601 (Some!12380 (_2!30547 (h!59221 (toList!5946 lt!1891700)))))))

(declare-fun d!1506440 () Bool)

(declare-fun c!807396 () Bool)

(assert (=> d!1506440 (= c!807396 (and ((_ is Cons!52866) (toList!5946 lt!1891700)) (= (_1!30547 (h!59221 (toList!5946 lt!1891700))) key!4653)))))

(assert (=> d!1506440 (= (getValueByKey!1971 (toList!5946 lt!1891700) key!4653) e!2948601)))

(assert (= (and d!1506440 c!807396) b!4727646))

(assert (= (and d!1506440 (not c!807396)) b!4727647))

(assert (= (and b!4727647 c!807397) b!4727648))

(assert (= (and b!4727647 (not c!807397)) b!4727649))

(declare-fun m!5667829 () Bool)

(assert (=> b!4727648 m!5667829))

(assert (=> b!4727590 d!1506440))

(declare-fun d!1506442 () Bool)

(assert (=> d!1506442 (= (get!17736 lt!1891909) (v!46969 lt!1891909))))

(assert (=> b!4727475 d!1506442))

(declare-fun d!1506444 () Bool)

(declare-fun res!2000934 () Bool)

(declare-fun e!2948603 () Bool)

(assert (=> d!1506444 (=> res!2000934 e!2948603)))

(assert (=> d!1506444 (= res!2000934 ((_ is Nil!52867) (t!360267 (toList!5945 lm!2023))))))

(assert (=> d!1506444 (= (forall!11616 (t!360267 (toList!5945 lm!2023)) lambda!216452) e!2948603)))

(declare-fun b!4727650 () Bool)

(declare-fun e!2948604 () Bool)

(assert (=> b!4727650 (= e!2948603 e!2948604)))

(declare-fun res!2000935 () Bool)

(assert (=> b!4727650 (=> (not res!2000935) (not e!2948604))))

(assert (=> b!4727650 (= res!2000935 (dynLambda!21834 lambda!216452 (h!59222 (t!360267 (toList!5945 lm!2023)))))))

(declare-fun b!4727651 () Bool)

(assert (=> b!4727651 (= e!2948604 (forall!11616 (t!360267 (t!360267 (toList!5945 lm!2023))) lambda!216452))))

(assert (= (and d!1506444 (not res!2000934)) b!4727650))

(assert (= (and b!4727650 res!2000935) b!4727651))

(declare-fun b_lambda!179789 () Bool)

(assert (=> (not b_lambda!179789) (not b!4727650)))

(declare-fun m!5667831 () Bool)

(assert (=> b!4727650 m!5667831))

(declare-fun m!5667833 () Bool)

(assert (=> b!4727651 m!5667833))

(assert (=> b!4727608 d!1506444))

(declare-fun d!1506446 () Bool)

(declare-fun res!2000936 () Bool)

(declare-fun e!2948605 () Bool)

(assert (=> d!1506446 (=> res!2000936 e!2948605)))

(assert (=> d!1506446 (= res!2000936 ((_ is Nil!52867) (toList!5945 lm!2023)))))

(assert (=> d!1506446 (= (forall!11616 (toList!5945 lm!2023) lambda!216553) e!2948605)))

(declare-fun b!4727652 () Bool)

(declare-fun e!2948606 () Bool)

(assert (=> b!4727652 (= e!2948605 e!2948606)))

(declare-fun res!2000937 () Bool)

(assert (=> b!4727652 (=> (not res!2000937) (not e!2948606))))

(assert (=> b!4727652 (= res!2000937 (dynLambda!21834 lambda!216553 (h!59222 (toList!5945 lm!2023))))))

(declare-fun b!4727653 () Bool)

(assert (=> b!4727653 (= e!2948606 (forall!11616 (t!360267 (toList!5945 lm!2023)) lambda!216553))))

(assert (= (and d!1506446 (not res!2000936)) b!4727652))

(assert (= (and b!4727652 res!2000937) b!4727653))

(declare-fun b_lambda!179791 () Bool)

(assert (=> (not b_lambda!179791) (not b!4727652)))

(declare-fun m!5667835 () Bool)

(assert (=> b!4727652 m!5667835))

(declare-fun m!5667837 () Bool)

(assert (=> b!4727653 m!5667837))

(assert (=> d!1506384 d!1506446))

(declare-fun bs!1118372 () Bool)

(declare-fun d!1506448 () Bool)

(assert (= bs!1118372 (and d!1506448 d!1506384)))

(declare-fun lambda!216561 () Int)

(assert (=> bs!1118372 (= lambda!216561 lambda!216553)))

(declare-fun bs!1118373 () Bool)

(assert (= bs!1118373 (and d!1506448 d!1506414)))

(assert (=> bs!1118373 (= lambda!216561 lambda!216558)))

(declare-fun bs!1118374 () Bool)

(assert (= bs!1118374 (and d!1506448 d!1506326)))

(assert (=> bs!1118374 (= lambda!216561 lambda!216534)))

(declare-fun bs!1118375 () Bool)

(assert (= bs!1118375 (and d!1506448 d!1506410)))

(assert (=> bs!1118375 (not (= lambda!216561 lambda!216557))))

(declare-fun bs!1118376 () Bool)

(assert (= bs!1118376 (and d!1506448 d!1506380)))

(assert (=> bs!1118376 (= lambda!216561 lambda!216545)))

(declare-fun bs!1118377 () Bool)

(assert (= bs!1118377 (and d!1506448 start!481432)))

(assert (=> bs!1118377 (= lambda!216561 lambda!216452)))

(assert (=> d!1506448 (isDefined!9631 (getPair!568 (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)) key!4653))))

(declare-fun lt!1892024 () Unit!131113)

(assert (=> d!1506448 (= lt!1892024 (forallContained!3657 (toList!5945 lm!2023) lambda!216561 (tuple2!54509 (hash!4406 hashF!1323 key!4653) (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)))))))

(declare-fun lt!1892026 () Unit!131113)

(declare-fun lt!1892027 () Unit!131113)

(assert (=> d!1506448 (= lt!1892026 lt!1892027)))

(declare-fun lt!1892023 () (_ BitVec 64))

(declare-fun lt!1892025 () List!52990)

(assert (=> d!1506448 (contains!16218 (toList!5945 lm!2023) (tuple2!54509 lt!1892023 lt!1892025))))

(assert (=> d!1506448 (= lt!1892027 (lemmaGetValueImpliesTupleContained!373 lm!2023 lt!1892023 lt!1892025))))

(assert (=> d!1506448 (= lt!1892025 (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)))))

(assert (=> d!1506448 (= lt!1892023 (hash!4406 hashF!1323 key!4653))))

(declare-fun lt!1892028 () Unit!131113)

(declare-fun lt!1892022 () Unit!131113)

(assert (=> d!1506448 (= lt!1892028 lt!1892022)))

(assert (=> d!1506448 (contains!16219 lm!2023 (hash!4406 hashF!1323 key!4653))))

(assert (=> d!1506448 (= lt!1892022 (lemmaInGenMapThenLongMapContainsHash!774 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1506448 true))

(declare-fun _$25!256 () Unit!131113)

(assert (=> d!1506448 (= (choose!33400 lm!2023 key!4653 hashF!1323) _$25!256)))

(declare-fun bs!1118378 () Bool)

(assert (= bs!1118378 d!1506448))

(assert (=> bs!1118378 m!5667457))

(assert (=> bs!1118378 m!5667747))

(assert (=> bs!1118378 m!5667749))

(declare-fun m!5667839 () Bool)

(assert (=> bs!1118378 m!5667839))

(assert (=> bs!1118378 m!5667751))

(assert (=> bs!1118378 m!5667747))

(assert (=> bs!1118378 m!5667457))

(assert (=> bs!1118378 m!5667751))

(assert (=> bs!1118378 m!5667427))

(assert (=> bs!1118378 m!5667457))

(assert (=> bs!1118378 m!5667701))

(declare-fun m!5667841 () Bool)

(assert (=> bs!1118378 m!5667841))

(declare-fun m!5667843 () Bool)

(assert (=> bs!1118378 m!5667843))

(assert (=> d!1506384 d!1506448))

(declare-fun d!1506450 () Bool)

(assert (=> d!1506450 (= (isDefined!9631 lt!1891909) (not (isEmpty!29189 lt!1891909)))))

(declare-fun bs!1118379 () Bool)

(assert (= bs!1118379 d!1506450))

(assert (=> bs!1118379 m!5667667))

(assert (=> b!4727471 d!1506450))

(declare-fun b!4727680 () Bool)

(assert (=> b!4727680 true))

(declare-fun bs!1118380 () Bool)

(declare-fun b!4727673 () Bool)

(assert (= bs!1118380 (and b!4727673 b!4727680)))

(declare-fun lambda!216571 () Int)

(declare-fun lambda!216570 () Int)

(assert (=> bs!1118380 (= (= (Cons!52866 (h!59221 (toList!5946 lt!1891700)) (t!360266 (toList!5946 lt!1891700))) (t!360266 (toList!5946 lt!1891700))) (= lambda!216571 lambda!216570))))

(assert (=> b!4727673 true))

(declare-fun bs!1118381 () Bool)

(declare-fun b!4727679 () Bool)

(assert (= bs!1118381 (and b!4727679 b!4727680)))

(declare-fun lambda!216572 () Int)

(assert (=> bs!1118381 (= (= (toList!5946 lt!1891700) (t!360266 (toList!5946 lt!1891700))) (= lambda!216572 lambda!216570))))

(declare-fun bs!1118382 () Bool)

(assert (= bs!1118382 (and b!4727679 b!4727673)))

(assert (=> bs!1118382 (= (= (toList!5946 lt!1891700) (Cons!52866 (h!59221 (toList!5946 lt!1891700)) (t!360266 (toList!5946 lt!1891700)))) (= lambda!216572 lambda!216571))))

(assert (=> b!4727679 true))

(declare-fun b!4727672 () Bool)

(declare-fun e!2948617 () Bool)

(declare-fun lt!1892043 () List!52993)

(declare-fun lambda!216573 () Int)

(declare-fun content!9414 (List!52993) (InoxSet K!14220))

(declare-fun map!11693 (List!52990 Int) List!52993)

(assert (=> b!4727672 (= e!2948617 (= (content!9414 lt!1892043) (content!9414 (map!11693 (toList!5946 lt!1891700) lambda!216573))))))

(declare-fun e!2948615 () List!52993)

(assert (=> b!4727673 (= e!2948615 (Cons!52869 (_1!30547 (h!59221 (toList!5946 lt!1891700))) (getKeysList!959 (t!360266 (toList!5946 lt!1891700)))))))

(declare-fun c!807404 () Bool)

(assert (=> b!4727673 (= c!807404 (containsKey!3395 (t!360266 (toList!5946 lt!1891700)) (_1!30547 (h!59221 (toList!5946 lt!1891700)))))))

(declare-fun lt!1892045 () Unit!131113)

(declare-fun e!2948616 () Unit!131113)

(assert (=> b!4727673 (= lt!1892045 e!2948616)))

(declare-fun c!807405 () Bool)

(assert (=> b!4727673 (= c!807405 (contains!16224 (getKeysList!959 (t!360266 (toList!5946 lt!1891700))) (_1!30547 (h!59221 (toList!5946 lt!1891700)))))))

(declare-fun lt!1892044 () Unit!131113)

(declare-fun e!2948618 () Unit!131113)

(assert (=> b!4727673 (= lt!1892044 e!2948618)))

(declare-fun lt!1892047 () List!52993)

(assert (=> b!4727673 (= lt!1892047 (getKeysList!959 (t!360266 (toList!5946 lt!1891700))))))

(declare-fun lt!1892048 () Unit!131113)

(declare-fun lemmaForallContainsAddHeadPreserves!285 (List!52990 List!52993 tuple2!54506) Unit!131113)

(assert (=> b!4727673 (= lt!1892048 (lemmaForallContainsAddHeadPreserves!285 (t!360266 (toList!5946 lt!1891700)) lt!1892047 (h!59221 (toList!5946 lt!1891700))))))

(declare-fun forall!11619 (List!52993 Int) Bool)

(assert (=> b!4727673 (forall!11619 lt!1892047 lambda!216571)))

(declare-fun lt!1892049 () Unit!131113)

(assert (=> b!4727673 (= lt!1892049 lt!1892048)))

(declare-fun b!4727674 () Bool)

(declare-fun Unit!131143 () Unit!131113)

(assert (=> b!4727674 (= e!2948616 Unit!131143)))

(declare-fun b!4727675 () Bool)

(assert (=> b!4727675 (= e!2948615 Nil!52869)))

(declare-fun b!4727676 () Bool)

(declare-fun res!2000945 () Bool)

(assert (=> b!4727676 (=> (not res!2000945) (not e!2948617))))

(declare-fun length!588 (List!52993) Int)

(declare-fun length!589 (List!52990) Int)

(assert (=> b!4727676 (= res!2000945 (= (length!588 lt!1892043) (length!589 (toList!5946 lt!1891700))))))

(declare-fun d!1506452 () Bool)

(assert (=> d!1506452 e!2948617))

(declare-fun res!2000946 () Bool)

(assert (=> d!1506452 (=> (not res!2000946) (not e!2948617))))

(declare-fun noDuplicate!866 (List!52993) Bool)

(assert (=> d!1506452 (= res!2000946 (noDuplicate!866 lt!1892043))))

(assert (=> d!1506452 (= lt!1892043 e!2948615)))

(declare-fun c!807406 () Bool)

(assert (=> d!1506452 (= c!807406 ((_ is Cons!52866) (toList!5946 lt!1891700)))))

(assert (=> d!1506452 (invariantList!1519 (toList!5946 lt!1891700))))

(assert (=> d!1506452 (= (getKeysList!959 (toList!5946 lt!1891700)) lt!1892043)))

(declare-fun b!4727677 () Bool)

(assert (=> b!4727677 false))

(declare-fun Unit!131144 () Unit!131113)

(assert (=> b!4727677 (= e!2948616 Unit!131144)))

(declare-fun b!4727678 () Bool)

(declare-fun Unit!131145 () Unit!131113)

(assert (=> b!4727678 (= e!2948618 Unit!131145)))

(declare-fun res!2000944 () Bool)

(assert (=> b!4727679 (=> (not res!2000944) (not e!2948617))))

(assert (=> b!4727679 (= res!2000944 (forall!11619 lt!1892043 lambda!216572))))

(assert (=> b!4727680 false))

(declare-fun lt!1892046 () Unit!131113)

(declare-fun forallContained!3660 (List!52993 Int K!14220) Unit!131113)

(assert (=> b!4727680 (= lt!1892046 (forallContained!3660 (getKeysList!959 (t!360266 (toList!5946 lt!1891700))) lambda!216570 (_1!30547 (h!59221 (toList!5946 lt!1891700)))))))

(declare-fun Unit!131146 () Unit!131113)

(assert (=> b!4727680 (= e!2948618 Unit!131146)))

(assert (= (and d!1506452 c!807406) b!4727673))

(assert (= (and d!1506452 (not c!807406)) b!4727675))

(assert (= (and b!4727673 c!807404) b!4727677))

(assert (= (and b!4727673 (not c!807404)) b!4727674))

(assert (= (and b!4727673 c!807405) b!4727680))

(assert (= (and b!4727673 (not c!807405)) b!4727678))

(assert (= (and d!1506452 res!2000946) b!4727676))

(assert (= (and b!4727676 res!2000945) b!4727679))

(assert (= (and b!4727679 res!2000944) b!4727672))

(declare-fun m!5667845 () Bool)

(assert (=> d!1506452 m!5667845))

(declare-fun m!5667847 () Bool)

(assert (=> d!1506452 m!5667847))

(declare-fun m!5667849 () Bool)

(assert (=> b!4727676 m!5667849))

(declare-fun m!5667851 () Bool)

(assert (=> b!4727676 m!5667851))

(declare-fun m!5667853 () Bool)

(assert (=> b!4727680 m!5667853))

(assert (=> b!4727680 m!5667853))

(declare-fun m!5667855 () Bool)

(assert (=> b!4727680 m!5667855))

(declare-fun m!5667857 () Bool)

(assert (=> b!4727672 m!5667857))

(declare-fun m!5667859 () Bool)

(assert (=> b!4727672 m!5667859))

(assert (=> b!4727672 m!5667859))

(declare-fun m!5667861 () Bool)

(assert (=> b!4727672 m!5667861))

(declare-fun m!5667863 () Bool)

(assert (=> b!4727679 m!5667863))

(assert (=> b!4727673 m!5667853))

(assert (=> b!4727673 m!5667853))

(declare-fun m!5667865 () Bool)

(assert (=> b!4727673 m!5667865))

(declare-fun m!5667867 () Bool)

(assert (=> b!4727673 m!5667867))

(declare-fun m!5667869 () Bool)

(assert (=> b!4727673 m!5667869))

(declare-fun m!5667871 () Bool)

(assert (=> b!4727673 m!5667871))

(assert (=> b!4727588 d!1506452))

(declare-fun d!1506454 () Bool)

(declare-fun res!2000951 () Bool)

(declare-fun e!2948623 () Bool)

(assert (=> d!1506454 (=> res!2000951 e!2948623)))

(assert (=> d!1506454 (= res!2000951 ((_ is Nil!52866) newBucket!218))))

(assert (=> d!1506454 (= (forall!11618 newBucket!218 lambda!216554) e!2948623)))

(declare-fun b!4727687 () Bool)

(declare-fun e!2948624 () Bool)

(assert (=> b!4727687 (= e!2948623 e!2948624)))

(declare-fun res!2000952 () Bool)

(assert (=> b!4727687 (=> (not res!2000952) (not e!2948624))))

(declare-fun dynLambda!21835 (Int tuple2!54506) Bool)

(assert (=> b!4727687 (= res!2000952 (dynLambda!21835 lambda!216554 (h!59221 newBucket!218)))))

(declare-fun b!4727688 () Bool)

(assert (=> b!4727688 (= e!2948624 (forall!11618 (t!360266 newBucket!218) lambda!216554))))

(assert (= (and d!1506454 (not res!2000951)) b!4727687))

(assert (= (and b!4727687 res!2000952) b!4727688))

(declare-fun b_lambda!179793 () Bool)

(assert (=> (not b_lambda!179793) (not b!4727687)))

(declare-fun m!5667873 () Bool)

(assert (=> b!4727687 m!5667873))

(declare-fun m!5667875 () Bool)

(assert (=> b!4727688 m!5667875))

(assert (=> d!1506408 d!1506454))

(declare-fun d!1506456 () Bool)

(declare-fun res!2000953 () Bool)

(declare-fun e!2948625 () Bool)

(assert (=> d!1506456 (=> res!2000953 e!2948625)))

(assert (=> d!1506456 (= res!2000953 (and ((_ is Cons!52866) (t!360266 oldBucket!34)) (= (_1!30547 (h!59221 (t!360266 oldBucket!34))) (_1!30547 (h!59221 oldBucket!34)))))))

(assert (=> d!1506456 (= (containsKey!3391 (t!360266 oldBucket!34) (_1!30547 (h!59221 oldBucket!34))) e!2948625)))

(declare-fun b!4727689 () Bool)

(declare-fun e!2948626 () Bool)

(assert (=> b!4727689 (= e!2948625 e!2948626)))

(declare-fun res!2000954 () Bool)

(assert (=> b!4727689 (=> (not res!2000954) (not e!2948626))))

(assert (=> b!4727689 (= res!2000954 ((_ is Cons!52866) (t!360266 oldBucket!34)))))

(declare-fun b!4727690 () Bool)

(assert (=> b!4727690 (= e!2948626 (containsKey!3391 (t!360266 (t!360266 oldBucket!34)) (_1!30547 (h!59221 oldBucket!34))))))

(assert (= (and d!1506456 (not res!2000953)) b!4727689))

(assert (= (and b!4727689 res!2000954) b!4727690))

(declare-fun m!5667877 () Bool)

(assert (=> b!4727690 m!5667877))

(assert (=> b!4727413 d!1506456))

(assert (=> b!4727597 d!1506306))

(assert (=> b!4727597 d!1506326))

(declare-fun d!1506458 () Bool)

(declare-fun choose!33402 (Hashable!6397 K!14220) (_ BitVec 64))

(assert (=> d!1506458 (= (hash!4408 hashF!1323 key!4653) (choose!33402 hashF!1323 key!4653))))

(declare-fun bs!1118383 () Bool)

(assert (= bs!1118383 d!1506458))

(declare-fun m!5667879 () Bool)

(assert (=> bs!1118383 m!5667879))

(assert (=> d!1506424 d!1506458))

(declare-fun d!1506460 () Bool)

(declare-fun res!2000959 () Bool)

(declare-fun e!2948631 () Bool)

(assert (=> d!1506460 (=> res!2000959 e!2948631)))

(assert (=> d!1506460 (= res!2000959 (or ((_ is Nil!52867) (toList!5945 (ListLongMap!4476 (Cons!52867 (tuple2!54509 hash!405 (t!360266 oldBucket!34)) (t!360267 (toList!5945 lm!2023)))))) ((_ is Nil!52867) (t!360267 (toList!5945 (ListLongMap!4476 (Cons!52867 (tuple2!54509 hash!405 (t!360266 oldBucket!34)) (t!360267 (toList!5945 lm!2023)))))))))))

(assert (=> d!1506460 (= (isStrictlySorted!757 (toList!5945 (ListLongMap!4476 (Cons!52867 (tuple2!54509 hash!405 (t!360266 oldBucket!34)) (t!360267 (toList!5945 lm!2023)))))) e!2948631)))

(declare-fun b!4727695 () Bool)

(declare-fun e!2948632 () Bool)

(assert (=> b!4727695 (= e!2948631 e!2948632)))

(declare-fun res!2000960 () Bool)

(assert (=> b!4727695 (=> (not res!2000960) (not e!2948632))))

(assert (=> b!4727695 (= res!2000960 (bvslt (_1!30548 (h!59222 (toList!5945 (ListLongMap!4476 (Cons!52867 (tuple2!54509 hash!405 (t!360266 oldBucket!34)) (t!360267 (toList!5945 lm!2023))))))) (_1!30548 (h!59222 (t!360267 (toList!5945 (ListLongMap!4476 (Cons!52867 (tuple2!54509 hash!405 (t!360266 oldBucket!34)) (t!360267 (toList!5945 lm!2023))))))))))))

(declare-fun b!4727696 () Bool)

(assert (=> b!4727696 (= e!2948632 (isStrictlySorted!757 (t!360267 (toList!5945 (ListLongMap!4476 (Cons!52867 (tuple2!54509 hash!405 (t!360266 oldBucket!34)) (t!360267 (toList!5945 lm!2023))))))))))

(assert (= (and d!1506460 (not res!2000959)) b!4727695))

(assert (= (and b!4727695 res!2000960) b!4727696))

(declare-fun m!5667881 () Bool)

(assert (=> b!4727696 m!5667881))

(assert (=> d!1506300 d!1506460))

(declare-fun d!1506462 () Bool)

(declare-fun lt!1892050 () Bool)

(assert (=> d!1506462 (= lt!1892050 (select (content!9413 (t!360267 (toList!5945 lm!2023))) lt!1891707))))

(declare-fun e!2948633 () Bool)

(assert (=> d!1506462 (= lt!1892050 e!2948633)))

(declare-fun res!2000961 () Bool)

(assert (=> d!1506462 (=> (not res!2000961) (not e!2948633))))

(assert (=> d!1506462 (= res!2000961 ((_ is Cons!52867) (t!360267 (toList!5945 lm!2023))))))

(assert (=> d!1506462 (= (contains!16218 (t!360267 (toList!5945 lm!2023)) lt!1891707) lt!1892050)))

(declare-fun b!4727697 () Bool)

(declare-fun e!2948634 () Bool)

(assert (=> b!4727697 (= e!2948633 e!2948634)))

(declare-fun res!2000962 () Bool)

(assert (=> b!4727697 (=> res!2000962 e!2948634)))

(assert (=> b!4727697 (= res!2000962 (= (h!59222 (t!360267 (toList!5945 lm!2023))) lt!1891707))))

(declare-fun b!4727698 () Bool)

(assert (=> b!4727698 (= e!2948634 (contains!16218 (t!360267 (t!360267 (toList!5945 lm!2023))) lt!1891707))))

(assert (= (and d!1506462 res!2000961) b!4727697))

(assert (= (and b!4727697 (not res!2000962)) b!4727698))

(declare-fun m!5667883 () Bool)

(assert (=> d!1506462 m!5667883))

(declare-fun m!5667885 () Bool)

(assert (=> d!1506462 m!5667885))

(declare-fun m!5667887 () Bool)

(assert (=> b!4727698 m!5667887))

(assert (=> b!4727441 d!1506462))

(declare-fun d!1506464 () Bool)

(declare-fun res!2000963 () Bool)

(declare-fun e!2948635 () Bool)

(assert (=> d!1506464 (=> res!2000963 e!2948635)))

(assert (=> d!1506464 (= res!2000963 (not ((_ is Cons!52866) (_2!30548 (h!59222 (toList!5945 lm!2023))))))))

(assert (=> d!1506464 (= (noDuplicateKeys!2028 (_2!30548 (h!59222 (toList!5945 lm!2023)))) e!2948635)))

(declare-fun b!4727699 () Bool)

(declare-fun e!2948636 () Bool)

(assert (=> b!4727699 (= e!2948635 e!2948636)))

(declare-fun res!2000964 () Bool)

(assert (=> b!4727699 (=> (not res!2000964) (not e!2948636))))

(assert (=> b!4727699 (= res!2000964 (not (containsKey!3391 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))))

(declare-fun b!4727700 () Bool)

(assert (=> b!4727700 (= e!2948636 (noDuplicateKeys!2028 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))

(assert (= (and d!1506464 (not res!2000963)) b!4727699))

(assert (= (and b!4727699 res!2000964) b!4727700))

(declare-fun m!5667889 () Bool)

(assert (=> b!4727699 m!5667889))

(declare-fun m!5667891 () Bool)

(assert (=> b!4727700 m!5667891))

(assert (=> bs!1118369 d!1506464))

(declare-fun d!1506466 () Bool)

(declare-fun lt!1892051 () Bool)

(assert (=> d!1506466 (= lt!1892051 (select (content!9413 (toList!5945 lm!2023)) (tuple2!54509 lt!1891704 lt!1891698)))))

(declare-fun e!2948637 () Bool)

(assert (=> d!1506466 (= lt!1892051 e!2948637)))

(declare-fun res!2000965 () Bool)

(assert (=> d!1506466 (=> (not res!2000965) (not e!2948637))))

(assert (=> d!1506466 (= res!2000965 ((_ is Cons!52867) (toList!5945 lm!2023)))))

(assert (=> d!1506466 (= (contains!16218 (toList!5945 lm!2023) (tuple2!54509 lt!1891704 lt!1891698)) lt!1892051)))

(declare-fun b!4727701 () Bool)

(declare-fun e!2948638 () Bool)

(assert (=> b!4727701 (= e!2948637 e!2948638)))

(declare-fun res!2000966 () Bool)

(assert (=> b!4727701 (=> res!2000966 e!2948638)))

(assert (=> b!4727701 (= res!2000966 (= (h!59222 (toList!5945 lm!2023)) (tuple2!54509 lt!1891704 lt!1891698)))))

(declare-fun b!4727702 () Bool)

(assert (=> b!4727702 (= e!2948638 (contains!16218 (t!360267 (toList!5945 lm!2023)) (tuple2!54509 lt!1891704 lt!1891698)))))

(assert (= (and d!1506466 res!2000965) b!4727701))

(assert (= (and b!4727701 (not res!2000966)) b!4727702))

(assert (=> d!1506466 m!5667643))

(declare-fun m!5667893 () Bool)

(assert (=> d!1506466 m!5667893))

(declare-fun m!5667895 () Bool)

(assert (=> b!4727702 m!5667895))

(assert (=> d!1506344 d!1506466))

(declare-fun d!1506468 () Bool)

(assert (=> d!1506468 (contains!16218 (toList!5945 lm!2023) (tuple2!54509 lt!1891704 lt!1891698))))

(assert (=> d!1506468 true))

(declare-fun _$41!418 () Unit!131113)

(assert (=> d!1506468 (= (choose!33397 lm!2023 lt!1891704 lt!1891698) _$41!418)))

(declare-fun bs!1118384 () Bool)

(assert (= bs!1118384 d!1506468))

(assert (=> bs!1118384 m!5667635))

(assert (=> d!1506344 d!1506468))

(assert (=> d!1506344 d!1506406))

(assert (=> d!1506398 d!1506404))

(declare-fun d!1506470 () Bool)

(assert (=> d!1506470 (containsKey!3391 oldBucket!34 key!4653)))

(assert (=> d!1506470 true))

(declare-fun _$38!368 () Unit!131113)

(assert (=> d!1506470 (= (choose!33401 oldBucket!34 key!4653 hashF!1323) _$38!368)))

(declare-fun bs!1118385 () Bool)

(assert (= bs!1118385 d!1506470))

(assert (=> bs!1118385 m!5667441))

(assert (=> d!1506398 d!1506470))

(assert (=> d!1506398 d!1506328))

(assert (=> b!4727558 d!1506400))

(declare-fun d!1506472 () Bool)

(assert (=> d!1506472 (= (tail!9033 (toList!5945 lm!2023)) (t!360267 (toList!5945 lm!2023)))))

(assert (=> d!1506422 d!1506472))

(declare-fun b!4727706 () Bool)

(declare-fun e!2948639 () List!52990)

(assert (=> b!4727706 (= e!2948639 (Cons!52866 (h!59221 (t!360266 (tail!9031 oldBucket!34))) (removePairForKey!1623 (t!360266 (t!360266 (tail!9031 oldBucket!34))) key!4653)))))

(declare-fun d!1506474 () Bool)

(declare-fun lt!1892052 () List!52990)

(assert (=> d!1506474 (not (containsKey!3391 lt!1892052 key!4653))))

(declare-fun e!2948640 () List!52990)

(assert (=> d!1506474 (= lt!1892052 e!2948640)))

(declare-fun c!807407 () Bool)

(assert (=> d!1506474 (= c!807407 (and ((_ is Cons!52866) (t!360266 (tail!9031 oldBucket!34))) (= (_1!30547 (h!59221 (t!360266 (tail!9031 oldBucket!34)))) key!4653)))))

(assert (=> d!1506474 (noDuplicateKeys!2028 (t!360266 (tail!9031 oldBucket!34)))))

(assert (=> d!1506474 (= (removePairForKey!1623 (t!360266 (tail!9031 oldBucket!34)) key!4653) lt!1892052)))

(declare-fun b!4727705 () Bool)

(assert (=> b!4727705 (= e!2948640 e!2948639)))

(declare-fun c!807408 () Bool)

(assert (=> b!4727705 (= c!807408 ((_ is Cons!52866) (t!360266 (tail!9031 oldBucket!34))))))

(declare-fun b!4727707 () Bool)

(assert (=> b!4727707 (= e!2948639 Nil!52866)))

(declare-fun b!4727704 () Bool)

(assert (=> b!4727704 (= e!2948640 (t!360266 (t!360266 (tail!9031 oldBucket!34))))))

(assert (= (and d!1506474 c!807407) b!4727704))

(assert (= (and d!1506474 (not c!807407)) b!4727705))

(assert (= (and b!4727705 c!807408) b!4727706))

(assert (= (and b!4727705 (not c!807408)) b!4727707))

(declare-fun m!5667897 () Bool)

(assert (=> b!4727706 m!5667897))

(declare-fun m!5667899 () Bool)

(assert (=> d!1506474 m!5667899))

(declare-fun m!5667901 () Bool)

(assert (=> d!1506474 m!5667901))

(assert (=> b!4727433 d!1506474))

(declare-fun d!1506476 () Bool)

(declare-fun noDuplicatedKeys!380 (List!52990) Bool)

(assert (=> d!1506476 (= (invariantList!1519 (toList!5946 lt!1892005)) (noDuplicatedKeys!380 (toList!5946 lt!1892005)))))

(declare-fun bs!1118386 () Bool)

(assert (= bs!1118386 d!1506476))

(declare-fun m!5667903 () Bool)

(assert (=> bs!1118386 m!5667903))

(assert (=> d!1506414 d!1506476))

(declare-fun d!1506478 () Bool)

(declare-fun res!2000967 () Bool)

(declare-fun e!2948641 () Bool)

(assert (=> d!1506478 (=> res!2000967 e!2948641)))

(assert (=> d!1506478 (= res!2000967 ((_ is Nil!52867) (toList!5945 lm!2023)))))

(assert (=> d!1506478 (= (forall!11616 (toList!5945 lm!2023) lambda!216558) e!2948641)))

(declare-fun b!4727708 () Bool)

(declare-fun e!2948642 () Bool)

(assert (=> b!4727708 (= e!2948641 e!2948642)))

(declare-fun res!2000968 () Bool)

(assert (=> b!4727708 (=> (not res!2000968) (not e!2948642))))

(assert (=> b!4727708 (= res!2000968 (dynLambda!21834 lambda!216558 (h!59222 (toList!5945 lm!2023))))))

(declare-fun b!4727709 () Bool)

(assert (=> b!4727709 (= e!2948642 (forall!11616 (t!360267 (toList!5945 lm!2023)) lambda!216558))))

(assert (= (and d!1506478 (not res!2000967)) b!4727708))

(assert (= (and b!4727708 res!2000968) b!4727709))

(declare-fun b_lambda!179795 () Bool)

(assert (=> (not b_lambda!179795) (not b!4727708)))

(declare-fun m!5667905 () Bool)

(assert (=> b!4727708 m!5667905))

(declare-fun m!5667907 () Bool)

(assert (=> b!4727709 m!5667907))

(assert (=> d!1506414 d!1506478))

(assert (=> b!4727601 d!1506428))

(declare-fun d!1506480 () Bool)

(declare-fun res!2000969 () Bool)

(declare-fun e!2948643 () Bool)

(assert (=> d!1506480 (=> res!2000969 e!2948643)))

(assert (=> d!1506480 (= res!2000969 (not ((_ is Cons!52866) (t!360266 newBucket!218))))))

(assert (=> d!1506480 (= (noDuplicateKeys!2028 (t!360266 newBucket!218)) e!2948643)))

(declare-fun b!4727710 () Bool)

(declare-fun e!2948644 () Bool)

(assert (=> b!4727710 (= e!2948643 e!2948644)))

(declare-fun res!2000970 () Bool)

(assert (=> b!4727710 (=> (not res!2000970) (not e!2948644))))

(assert (=> b!4727710 (= res!2000970 (not (containsKey!3391 (t!360266 (t!360266 newBucket!218)) (_1!30547 (h!59221 (t!360266 newBucket!218))))))))

(declare-fun b!4727711 () Bool)

(assert (=> b!4727711 (= e!2948644 (noDuplicateKeys!2028 (t!360266 (t!360266 newBucket!218))))))

(assert (= (and d!1506480 (not res!2000969)) b!4727710))

(assert (= (and b!4727710 res!2000970) b!4727711))

(declare-fun m!5667909 () Bool)

(assert (=> b!4727710 m!5667909))

(declare-fun m!5667911 () Bool)

(assert (=> b!4727711 m!5667911))

(assert (=> b!4727610 d!1506480))

(declare-fun d!1506482 () Bool)

(declare-fun res!2000971 () Bool)

(declare-fun e!2948645 () Bool)

(assert (=> d!1506482 (=> res!2000971 e!2948645)))

(assert (=> d!1506482 (= res!2000971 ((_ is Nil!52866) (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023))))))))

(assert (=> d!1506482 (= (forall!11618 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) lambda!216525) e!2948645)))

(declare-fun b!4727712 () Bool)

(declare-fun e!2948646 () Bool)

(assert (=> b!4727712 (= e!2948645 e!2948646)))

(declare-fun res!2000972 () Bool)

(assert (=> b!4727712 (=> (not res!2000972) (not e!2948646))))

(assert (=> b!4727712 (= res!2000972 (dynLambda!21835 lambda!216525 (h!59221 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))))))))

(declare-fun b!4727713 () Bool)

(assert (=> b!4727713 (= e!2948646 (forall!11618 (t!360266 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023))))) lambda!216525))))

(assert (= (and d!1506482 (not res!2000971)) b!4727712))

(assert (= (and b!4727712 res!2000972) b!4727713))

(declare-fun b_lambda!179797 () Bool)

(assert (=> (not b_lambda!179797) (not b!4727712)))

(declare-fun m!5667913 () Bool)

(assert (=> b!4727712 m!5667913))

(declare-fun m!5667915 () Bool)

(assert (=> b!4727713 m!5667915))

(assert (=> b!4727388 d!1506482))

(declare-fun bs!1118387 () Bool)

(declare-fun b!4727714 () Bool)

(assert (= bs!1118387 (and b!4727714 d!1506306)))

(declare-fun lambda!216574 () Int)

(assert (=> bs!1118387 (= (= (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023)))) lt!1891841) (= lambda!216574 lambda!216525))))

(declare-fun bs!1118388 () Bool)

(assert (= bs!1118388 (and b!4727714 b!4727387)))

(assert (=> bs!1118388 (= (= (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023)))) lt!1891856) (= lambda!216574 lambda!216524))))

(assert (=> bs!1118388 (= (= (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023)))) (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216574 lambda!216523))))

(declare-fun bs!1118389 () Bool)

(assert (= bs!1118389 (and b!4727714 b!4727384)))

(assert (=> bs!1118389 (= (= (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023)))) (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216574 lambda!216522))))

(declare-fun bs!1118390 () Bool)

(assert (= bs!1118390 (and b!4727714 d!1506298)))

(assert (=> bs!1118390 (not (= lambda!216574 lambda!216455))))

(declare-fun bs!1118391 () Bool)

(assert (= bs!1118391 (and b!4727714 d!1506408)))

(assert (=> bs!1118391 (not (= lambda!216574 lambda!216554))))

(assert (=> b!4727714 true))

(declare-fun bs!1118392 () Bool)

(declare-fun b!4727717 () Bool)

(assert (= bs!1118392 (and b!4727717 d!1506306)))

(declare-fun lambda!216575 () Int)

(assert (=> bs!1118392 (= (= (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023)))) lt!1891841) (= lambda!216575 lambda!216525))))

(declare-fun bs!1118393 () Bool)

(assert (= bs!1118393 (and b!4727717 b!4727714)))

(assert (=> bs!1118393 (= lambda!216575 lambda!216574)))

(declare-fun bs!1118394 () Bool)

(assert (= bs!1118394 (and b!4727717 b!4727387)))

(assert (=> bs!1118394 (= (= (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023)))) lt!1891856) (= lambda!216575 lambda!216524))))

(assert (=> bs!1118394 (= (= (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023)))) (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216575 lambda!216523))))

(declare-fun bs!1118395 () Bool)

(assert (= bs!1118395 (and b!4727717 b!4727384)))

(assert (=> bs!1118395 (= (= (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023)))) (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216575 lambda!216522))))

(declare-fun bs!1118396 () Bool)

(assert (= bs!1118396 (and b!4727717 d!1506298)))

(assert (=> bs!1118396 (not (= lambda!216575 lambda!216455))))

(declare-fun bs!1118397 () Bool)

(assert (= bs!1118397 (and b!4727717 d!1506408)))

(assert (=> bs!1118397 (not (= lambda!216575 lambda!216554))))

(assert (=> b!4727717 true))

(declare-fun lambda!216576 () Int)

(declare-fun lt!1892069 () ListMap!5309)

(assert (=> bs!1118392 (= (= lt!1892069 lt!1891841) (= lambda!216576 lambda!216525))))

(assert (=> bs!1118393 (= (= lt!1892069 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (= lambda!216576 lambda!216574))))

(assert (=> bs!1118394 (= (= lt!1892069 lt!1891856) (= lambda!216576 lambda!216524))))

(assert (=> b!4727717 (= (= lt!1892069 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (= lambda!216576 lambda!216575))))

(assert (=> bs!1118394 (= (= lt!1892069 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216576 lambda!216523))))

(assert (=> bs!1118395 (= (= lt!1892069 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216576 lambda!216522))))

(assert (=> bs!1118396 (not (= lambda!216576 lambda!216455))))

(assert (=> bs!1118397 (not (= lambda!216576 lambda!216554))))

(assert (=> b!4727717 true))

(declare-fun bs!1118398 () Bool)

(declare-fun d!1506484 () Bool)

(assert (= bs!1118398 (and d!1506484 d!1506306)))

(declare-fun lt!1892054 () ListMap!5309)

(declare-fun lambda!216577 () Int)

(assert (=> bs!1118398 (= (= lt!1892054 lt!1891841) (= lambda!216577 lambda!216525))))

(declare-fun bs!1118399 () Bool)

(assert (= bs!1118399 (and d!1506484 b!4727717)))

(assert (=> bs!1118399 (= (= lt!1892054 lt!1892069) (= lambda!216577 lambda!216576))))

(declare-fun bs!1118400 () Bool)

(assert (= bs!1118400 (and d!1506484 b!4727714)))

(assert (=> bs!1118400 (= (= lt!1892054 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (= lambda!216577 lambda!216574))))

(declare-fun bs!1118401 () Bool)

(assert (= bs!1118401 (and d!1506484 b!4727387)))

(assert (=> bs!1118401 (= (= lt!1892054 lt!1891856) (= lambda!216577 lambda!216524))))

(assert (=> bs!1118399 (= (= lt!1892054 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (= lambda!216577 lambda!216575))))

(assert (=> bs!1118401 (= (= lt!1892054 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216577 lambda!216523))))

(declare-fun bs!1118402 () Bool)

(assert (= bs!1118402 (and d!1506484 b!4727384)))

(assert (=> bs!1118402 (= (= lt!1892054 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216577 lambda!216522))))

(declare-fun bs!1118403 () Bool)

(assert (= bs!1118403 (and d!1506484 d!1506298)))

(assert (=> bs!1118403 (not (= lambda!216577 lambda!216455))))

(declare-fun bs!1118404 () Bool)

(assert (= bs!1118404 (and d!1506484 d!1506408)))

(assert (=> bs!1118404 (not (= lambda!216577 lambda!216554))))

(assert (=> d!1506484 true))

(declare-fun bm!330735 () Bool)

(declare-fun c!807409 () Bool)

(declare-fun call!330742 () Bool)

(assert (=> bm!330735 (= call!330742 (forall!11618 (toList!5946 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (ite c!807409 lambda!216574 lambda!216576)))))

(declare-fun e!2948649 () ListMap!5309)

(assert (=> b!4727714 (= e!2948649 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023)))))))

(declare-fun lt!1892068 () Unit!131113)

(declare-fun call!330740 () Unit!131113)

(assert (=> b!4727714 (= lt!1892068 call!330740)))

(assert (=> b!4727714 call!330742))

(declare-fun lt!1892057 () Unit!131113)

(assert (=> b!4727714 (= lt!1892057 lt!1892068)))

(declare-fun call!330741 () Bool)

(assert (=> b!4727714 call!330741))

(declare-fun lt!1892056 () Unit!131113)

(declare-fun Unit!131147 () Unit!131113)

(assert (=> b!4727714 (= lt!1892056 Unit!131147)))

(declare-fun bm!330736 () Bool)

(assert (=> bm!330736 (= call!330740 (lemmaContainsAllItsOwnKeys!805 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))))))

(declare-fun b!4727715 () Bool)

(declare-fun e!2948647 () Bool)

(assert (=> b!4727715 (= e!2948647 (forall!11618 (toList!5946 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) lambda!216576))))

(declare-fun b!4727716 () Bool)

(declare-fun e!2948648 () Bool)

(assert (=> b!4727716 (= e!2948648 (invariantList!1519 (toList!5946 lt!1892054)))))

(declare-fun b!4727718 () Bool)

(declare-fun res!2000975 () Bool)

(assert (=> b!4727718 (=> (not res!2000975) (not e!2948648))))

(assert (=> b!4727718 (= res!2000975 (forall!11618 (toList!5946 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) lambda!216577))))

(declare-fun bm!330737 () Bool)

(assert (=> bm!330737 (= call!330741 (forall!11618 (ite c!807409 (toList!5946 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (t!360266 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023)))))) (ite c!807409 lambda!216574 lambda!216576)))))

(assert (=> b!4727717 (= e!2948649 lt!1892069)))

(declare-fun lt!1892066 () ListMap!5309)

(assert (=> b!4727717 (= lt!1892066 (+!2277 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023)))) (h!59221 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023)))))))))

(assert (=> b!4727717 (= lt!1892069 (addToMapMapFromBucket!1458 (t!360266 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023))))) (+!2277 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023)))) (h!59221 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023))))))))))

(declare-fun lt!1892059 () Unit!131113)

(assert (=> b!4727717 (= lt!1892059 call!330740)))

(assert (=> b!4727717 (forall!11618 (toList!5946 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) lambda!216575)))

(declare-fun lt!1892053 () Unit!131113)

(assert (=> b!4727717 (= lt!1892053 lt!1892059)))

(assert (=> b!4727717 (forall!11618 (toList!5946 lt!1892066) lambda!216576)))

(declare-fun lt!1892060 () Unit!131113)

(declare-fun Unit!131148 () Unit!131113)

(assert (=> b!4727717 (= lt!1892060 Unit!131148)))

(assert (=> b!4727717 call!330741))

(declare-fun lt!1892070 () Unit!131113)

(declare-fun Unit!131149 () Unit!131113)

(assert (=> b!4727717 (= lt!1892070 Unit!131149)))

(declare-fun lt!1892055 () Unit!131113)

(declare-fun Unit!131150 () Unit!131113)

(assert (=> b!4727717 (= lt!1892055 Unit!131150)))

(declare-fun lt!1892065 () Unit!131113)

(assert (=> b!4727717 (= lt!1892065 (forallContained!3659 (toList!5946 lt!1892066) lambda!216576 (h!59221 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023)))))))))

(assert (=> b!4727717 (contains!16220 lt!1892066 (_1!30547 (h!59221 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023)))))))))

(declare-fun lt!1892061 () Unit!131113)

(declare-fun Unit!131151 () Unit!131113)

(assert (=> b!4727717 (= lt!1892061 Unit!131151)))

(assert (=> b!4727717 (contains!16220 lt!1892069 (_1!30547 (h!59221 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023)))))))))

(declare-fun lt!1892064 () Unit!131113)

(declare-fun Unit!131152 () Unit!131113)

(assert (=> b!4727717 (= lt!1892064 Unit!131152)))

(assert (=> b!4727717 (forall!11618 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023)))) lambda!216576)))

(declare-fun lt!1892067 () Unit!131113)

(declare-fun Unit!131153 () Unit!131113)

(assert (=> b!4727717 (= lt!1892067 Unit!131153)))

(assert (=> b!4727717 (forall!11618 (toList!5946 lt!1892066) lambda!216576)))

(declare-fun lt!1892062 () Unit!131113)

(declare-fun Unit!131154 () Unit!131113)

(assert (=> b!4727717 (= lt!1892062 Unit!131154)))

(declare-fun lt!1892063 () Unit!131113)

(declare-fun Unit!131155 () Unit!131113)

(assert (=> b!4727717 (= lt!1892063 Unit!131155)))

(declare-fun lt!1892073 () Unit!131113)

(assert (=> b!4727717 (= lt!1892073 (addForallContainsKeyThenBeforeAdding!804 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023)))) lt!1892069 (_1!30547 (h!59221 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023)))))) (_2!30547 (h!59221 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023))))))))))

(assert (=> b!4727717 call!330742))

(declare-fun lt!1892058 () Unit!131113)

(assert (=> b!4727717 (= lt!1892058 lt!1892073)))

(assert (=> b!4727717 (forall!11618 (toList!5946 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) lambda!216576)))

(declare-fun lt!1892072 () Unit!131113)

(declare-fun Unit!131156 () Unit!131113)

(assert (=> b!4727717 (= lt!1892072 Unit!131156)))

(declare-fun res!2000974 () Bool)

(assert (=> b!4727717 (= res!2000974 (forall!11618 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023)))) lambda!216576))))

(assert (=> b!4727717 (=> (not res!2000974) (not e!2948647))))

(assert (=> b!4727717 e!2948647))

(declare-fun lt!1892071 () Unit!131113)

(declare-fun Unit!131157 () Unit!131113)

(assert (=> b!4727717 (= lt!1892071 Unit!131157)))

(assert (=> d!1506484 e!2948648))

(declare-fun res!2000973 () Bool)

(assert (=> d!1506484 (=> (not res!2000973) (not e!2948648))))

(assert (=> d!1506484 (= res!2000973 (forall!11618 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023)))) lambda!216577))))

(assert (=> d!1506484 (= lt!1892054 e!2948649)))

(assert (=> d!1506484 (= c!807409 ((_ is Nil!52866) (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023))))))))

(assert (=> d!1506484 (noDuplicateKeys!2028 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023)))))))

(assert (=> d!1506484 (= (addToMapMapFromBucket!1458 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023)))) (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) lt!1892054)))

(assert (= (and d!1506484 c!807409) b!4727714))

(assert (= (and d!1506484 (not c!807409)) b!4727717))

(assert (= (and b!4727717 res!2000974) b!4727715))

(assert (= (or b!4727714 b!4727717) bm!330736))

(assert (= (or b!4727714 b!4727717) bm!330737))

(assert (= (or b!4727714 b!4727717) bm!330735))

(assert (= (and d!1506484 res!2000973) b!4727718))

(assert (= (and b!4727718 res!2000975) b!4727716))

(declare-fun m!5667917 () Bool)

(assert (=> d!1506484 m!5667917))

(declare-fun m!5667919 () Bool)

(assert (=> d!1506484 m!5667919))

(declare-fun m!5667921 () Bool)

(assert (=> b!4727716 m!5667921))

(declare-fun m!5667923 () Bool)

(assert (=> b!4727717 m!5667923))

(declare-fun m!5667925 () Bool)

(assert (=> b!4727717 m!5667925))

(assert (=> b!4727717 m!5667593))

(declare-fun m!5667927 () Bool)

(assert (=> b!4727717 m!5667927))

(declare-fun m!5667929 () Bool)

(assert (=> b!4727717 m!5667929))

(declare-fun m!5667931 () Bool)

(assert (=> b!4727717 m!5667931))

(declare-fun m!5667933 () Bool)

(assert (=> b!4727717 m!5667933))

(assert (=> b!4727717 m!5667593))

(assert (=> b!4727717 m!5667923))

(declare-fun m!5667935 () Bool)

(assert (=> b!4727717 m!5667935))

(declare-fun m!5667937 () Bool)

(assert (=> b!4727717 m!5667937))

(assert (=> b!4727717 m!5667935))

(assert (=> b!4727717 m!5667931))

(declare-fun m!5667939 () Bool)

(assert (=> b!4727717 m!5667939))

(declare-fun m!5667941 () Bool)

(assert (=> b!4727717 m!5667941))

(declare-fun m!5667943 () Bool)

(assert (=> b!4727718 m!5667943))

(declare-fun m!5667945 () Bool)

(assert (=> bm!330735 m!5667945))

(assert (=> bm!330736 m!5667593))

(declare-fun m!5667947 () Bool)

(assert (=> bm!330736 m!5667947))

(assert (=> b!4727715 m!5667939))

(declare-fun m!5667949 () Bool)

(assert (=> bm!330737 m!5667949))

(assert (=> b!4727403 d!1506484))

(declare-fun bs!1118405 () Bool)

(declare-fun d!1506486 () Bool)

(assert (= bs!1118405 (and d!1506486 d!1506384)))

(declare-fun lambda!216578 () Int)

(assert (=> bs!1118405 (= lambda!216578 lambda!216553)))

(declare-fun bs!1118406 () Bool)

(assert (= bs!1118406 (and d!1506486 d!1506414)))

(assert (=> bs!1118406 (= lambda!216578 lambda!216558)))

(declare-fun bs!1118407 () Bool)

(assert (= bs!1118407 (and d!1506486 d!1506326)))

(assert (=> bs!1118407 (= lambda!216578 lambda!216534)))

(declare-fun bs!1118408 () Bool)

(assert (= bs!1118408 (and d!1506486 d!1506410)))

(assert (=> bs!1118408 (not (= lambda!216578 lambda!216557))))

(declare-fun bs!1118409 () Bool)

(assert (= bs!1118409 (and d!1506486 d!1506380)))

(assert (=> bs!1118409 (= lambda!216578 lambda!216545)))

(declare-fun bs!1118410 () Bool)

(assert (= bs!1118410 (and d!1506486 d!1506448)))

(assert (=> bs!1118410 (= lambda!216578 lambda!216561)))

(declare-fun bs!1118411 () Bool)

(assert (= bs!1118411 (and d!1506486 start!481432)))

(assert (=> bs!1118411 (= lambda!216578 lambda!216452)))

(declare-fun lt!1892074 () ListMap!5309)

(assert (=> d!1506486 (invariantList!1519 (toList!5946 lt!1892074))))

(declare-fun e!2948650 () ListMap!5309)

(assert (=> d!1506486 (= lt!1892074 e!2948650)))

(declare-fun c!807410 () Bool)

(assert (=> d!1506486 (= c!807410 ((_ is Cons!52867) (t!360267 (t!360267 (toList!5945 lm!2023)))))))

(assert (=> d!1506486 (forall!11616 (t!360267 (t!360267 (toList!5945 lm!2023))) lambda!216578)))

(assert (=> d!1506486 (= (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023)))) lt!1892074)))

(declare-fun b!4727719 () Bool)

(assert (=> b!4727719 (= e!2948650 (addToMapMapFromBucket!1458 (_2!30548 (h!59222 (t!360267 (t!360267 (toList!5945 lm!2023))))) (extractMap!2054 (t!360267 (t!360267 (t!360267 (toList!5945 lm!2023)))))))))

(declare-fun b!4727720 () Bool)

(assert (=> b!4727720 (= e!2948650 (ListMap!5310 Nil!52866))))

(assert (= (and d!1506486 c!807410) b!4727719))

(assert (= (and d!1506486 (not c!807410)) b!4727720))

(declare-fun m!5667951 () Bool)

(assert (=> d!1506486 m!5667951))

(declare-fun m!5667953 () Bool)

(assert (=> d!1506486 m!5667953))

(declare-fun m!5667955 () Bool)

(assert (=> b!4727719 m!5667955))

(assert (=> b!4727719 m!5667955))

(declare-fun m!5667957 () Bool)

(assert (=> b!4727719 m!5667957))

(assert (=> b!4727403 d!1506486))

(declare-fun d!1506488 () Bool)

(declare-fun e!2948651 () Bool)

(assert (=> d!1506488 e!2948651))

(declare-fun res!2000976 () Bool)

(assert (=> d!1506488 (=> res!2000976 e!2948651)))

(declare-fun lt!1892075 () Bool)

(assert (=> d!1506488 (= res!2000976 (not lt!1892075))))

(declare-fun lt!1892077 () Bool)

(assert (=> d!1506488 (= lt!1892075 lt!1892077)))

(declare-fun lt!1892076 () Unit!131113)

(declare-fun e!2948652 () Unit!131113)

(assert (=> d!1506488 (= lt!1892076 e!2948652)))

(declare-fun c!807411 () Bool)

(assert (=> d!1506488 (= c!807411 lt!1892077)))

(assert (=> d!1506488 (= lt!1892077 (containsKey!3394 (toList!5945 lm!2023) (hash!4406 hashF!1323 key!4653)))))

(assert (=> d!1506488 (= (contains!16219 lm!2023 (hash!4406 hashF!1323 key!4653)) lt!1892075)))

(declare-fun b!4727721 () Bool)

(declare-fun lt!1892078 () Unit!131113)

(assert (=> b!4727721 (= e!2948652 lt!1892078)))

(assert (=> b!4727721 (= lt!1892078 (lemmaContainsKeyImpliesGetValueByKeyDefined!1860 (toList!5945 lm!2023) (hash!4406 hashF!1323 key!4653)))))

(assert (=> b!4727721 (isDefined!9634 (getValueByKey!1969 (toList!5945 lm!2023) (hash!4406 hashF!1323 key!4653)))))

(declare-fun b!4727722 () Bool)

(declare-fun Unit!131158 () Unit!131113)

(assert (=> b!4727722 (= e!2948652 Unit!131158)))

(declare-fun b!4727723 () Bool)

(assert (=> b!4727723 (= e!2948651 (isDefined!9634 (getValueByKey!1969 (toList!5945 lm!2023) (hash!4406 hashF!1323 key!4653))))))

(assert (= (and d!1506488 c!807411) b!4727721))

(assert (= (and d!1506488 (not c!807411)) b!4727722))

(assert (= (and d!1506488 (not res!2000976)) b!4727723))

(assert (=> d!1506488 m!5667457))

(declare-fun m!5667959 () Bool)

(assert (=> d!1506488 m!5667959))

(assert (=> b!4727721 m!5667457))

(declare-fun m!5667961 () Bool)

(assert (=> b!4727721 m!5667961))

(assert (=> b!4727721 m!5667457))

(declare-fun m!5667963 () Bool)

(assert (=> b!4727721 m!5667963))

(assert (=> b!4727721 m!5667963))

(declare-fun m!5667965 () Bool)

(assert (=> b!4727721 m!5667965))

(assert (=> b!4727723 m!5667457))

(assert (=> b!4727723 m!5667963))

(assert (=> b!4727723 m!5667963))

(assert (=> b!4727723 m!5667965))

(assert (=> d!1506380 d!1506488))

(assert (=> d!1506380 d!1506424))

(declare-fun d!1506490 () Bool)

(assert (=> d!1506490 (contains!16219 lm!2023 (hash!4406 hashF!1323 key!4653))))

(assert (=> d!1506490 true))

(declare-fun _$27!1521 () Unit!131113)

(assert (=> d!1506490 (= (choose!33399 lm!2023 key!4653 hashF!1323) _$27!1521)))

(declare-fun bs!1118412 () Bool)

(assert (= bs!1118412 d!1506490))

(assert (=> bs!1118412 m!5667457))

(assert (=> bs!1118412 m!5667457))

(assert (=> bs!1118412 m!5667701))

(assert (=> d!1506380 d!1506490))

(declare-fun d!1506492 () Bool)

(declare-fun res!2000977 () Bool)

(declare-fun e!2948653 () Bool)

(assert (=> d!1506492 (=> res!2000977 e!2948653)))

(assert (=> d!1506492 (= res!2000977 ((_ is Nil!52867) (toList!5945 lm!2023)))))

(assert (=> d!1506492 (= (forall!11616 (toList!5945 lm!2023) lambda!216545) e!2948653)))

(declare-fun b!4727724 () Bool)

(declare-fun e!2948654 () Bool)

(assert (=> b!4727724 (= e!2948653 e!2948654)))

(declare-fun res!2000978 () Bool)

(assert (=> b!4727724 (=> (not res!2000978) (not e!2948654))))

(assert (=> b!4727724 (= res!2000978 (dynLambda!21834 lambda!216545 (h!59222 (toList!5945 lm!2023))))))

(declare-fun b!4727725 () Bool)

(assert (=> b!4727725 (= e!2948654 (forall!11616 (t!360267 (toList!5945 lm!2023)) lambda!216545))))

(assert (= (and d!1506492 (not res!2000977)) b!4727724))

(assert (= (and b!4727724 res!2000978) b!4727725))

(declare-fun b_lambda!179799 () Bool)

(assert (=> (not b_lambda!179799) (not b!4727724)))

(declare-fun m!5667967 () Bool)

(assert (=> b!4727724 m!5667967))

(declare-fun m!5667969 () Bool)

(assert (=> b!4727725 m!5667969))

(assert (=> d!1506380 d!1506492))

(declare-fun bs!1118413 () Bool)

(declare-fun d!1506494 () Bool)

(assert (= bs!1118413 (and d!1506494 d!1506306)))

(declare-fun lambda!216581 () Int)

(assert (=> bs!1118413 (= (= (extractMap!2054 (t!360267 (toList!5945 lm!2023))) lt!1891841) (= lambda!216581 lambda!216525))))

(declare-fun bs!1118414 () Bool)

(assert (= bs!1118414 (and d!1506494 b!4727717)))

(assert (=> bs!1118414 (= (= (extractMap!2054 (t!360267 (toList!5945 lm!2023))) lt!1892069) (= lambda!216581 lambda!216576))))

(declare-fun bs!1118415 () Bool)

(assert (= bs!1118415 (and d!1506494 d!1506484)))

(assert (=> bs!1118415 (= (= (extractMap!2054 (t!360267 (toList!5945 lm!2023))) lt!1892054) (= lambda!216581 lambda!216577))))

(declare-fun bs!1118416 () Bool)

(assert (= bs!1118416 (and d!1506494 b!4727714)))

(assert (=> bs!1118416 (= (= (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (= lambda!216581 lambda!216574))))

(declare-fun bs!1118417 () Bool)

(assert (= bs!1118417 (and d!1506494 b!4727387)))

(assert (=> bs!1118417 (= (= (extractMap!2054 (t!360267 (toList!5945 lm!2023))) lt!1891856) (= lambda!216581 lambda!216524))))

(assert (=> bs!1118414 (= (= (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (= lambda!216581 lambda!216575))))

(assert (=> bs!1118417 (= lambda!216581 lambda!216523)))

(declare-fun bs!1118418 () Bool)

(assert (= bs!1118418 (and d!1506494 b!4727384)))

(assert (=> bs!1118418 (= lambda!216581 lambda!216522)))

(declare-fun bs!1118419 () Bool)

(assert (= bs!1118419 (and d!1506494 d!1506298)))

(assert (=> bs!1118419 (not (= lambda!216581 lambda!216455))))

(declare-fun bs!1118420 () Bool)

(assert (= bs!1118420 (and d!1506494 d!1506408)))

(assert (=> bs!1118420 (not (= lambda!216581 lambda!216554))))

(assert (=> d!1506494 true))

(assert (=> d!1506494 (forall!11618 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) lambda!216581)))

(declare-fun lt!1892081 () Unit!131113)

(declare-fun choose!33403 (ListMap!5309) Unit!131113)

(assert (=> d!1506494 (= lt!1892081 (choose!33403 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))))))

(assert (=> d!1506494 (= (lemmaContainsAllItsOwnKeys!805 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) lt!1892081)))

(declare-fun bs!1118421 () Bool)

(assert (= bs!1118421 d!1506494))

(declare-fun m!5667971 () Bool)

(assert (=> bs!1118421 m!5667971))

(assert (=> bs!1118421 m!5667421))

(declare-fun m!5667973 () Bool)

(assert (=> bs!1118421 m!5667973))

(assert (=> bm!330727 d!1506494))

(declare-fun d!1506496 () Bool)

(declare-fun res!2000979 () Bool)

(declare-fun e!2948655 () Bool)

(assert (=> d!1506496 (=> res!2000979 e!2948655)))

(assert (=> d!1506496 (= res!2000979 (and ((_ is Cons!52866) lt!1892006) (= (_1!30547 (h!59221 lt!1892006)) key!4653)))))

(assert (=> d!1506496 (= (containsKey!3391 lt!1892006 key!4653) e!2948655)))

(declare-fun b!4727726 () Bool)

(declare-fun e!2948656 () Bool)

(assert (=> b!4727726 (= e!2948655 e!2948656)))

(declare-fun res!2000980 () Bool)

(assert (=> b!4727726 (=> (not res!2000980) (not e!2948656))))

(assert (=> b!4727726 (= res!2000980 ((_ is Cons!52866) lt!1892006))))

(declare-fun b!4727727 () Bool)

(assert (=> b!4727727 (= e!2948656 (containsKey!3391 (t!360266 lt!1892006) key!4653))))

(assert (= (and d!1506496 (not res!2000979)) b!4727726))

(assert (= (and b!4727726 res!2000980) b!4727727))

(declare-fun m!5667975 () Bool)

(assert (=> b!4727727 m!5667975))

(assert (=> d!1506416 d!1506496))

(assert (=> d!1506416 d!1506328))

(assert (=> b!4727490 d!1506346))

(declare-fun d!1506498 () Bool)

(declare-fun res!2000981 () Bool)

(declare-fun e!2948657 () Bool)

(assert (=> d!1506498 (=> res!2000981 e!2948657)))

(assert (=> d!1506498 (= res!2000981 ((_ is Nil!52866) (_2!30548 (h!59222 (toList!5945 lm!2023)))))))

(assert (=> d!1506498 (= (forall!11618 (_2!30548 (h!59222 (toList!5945 lm!2023))) lambda!216525) e!2948657)))

(declare-fun b!4727728 () Bool)

(declare-fun e!2948658 () Bool)

(assert (=> b!4727728 (= e!2948657 e!2948658)))

(declare-fun res!2000982 () Bool)

(assert (=> b!4727728 (=> (not res!2000982) (not e!2948658))))

(assert (=> b!4727728 (= res!2000982 (dynLambda!21835 lambda!216525 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))

(declare-fun b!4727729 () Bool)

(assert (=> b!4727729 (= e!2948658 (forall!11618 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))) lambda!216525))))

(assert (= (and d!1506498 (not res!2000981)) b!4727728))

(assert (= (and b!4727728 res!2000982) b!4727729))

(declare-fun b_lambda!179801 () Bool)

(assert (=> (not b_lambda!179801) (not b!4727728)))

(declare-fun m!5667977 () Bool)

(assert (=> b!4727728 m!5667977))

(declare-fun m!5667979 () Bool)

(assert (=> b!4727729 m!5667979))

(assert (=> d!1506306 d!1506498))

(assert (=> d!1506306 d!1506464))

(declare-fun d!1506500 () Bool)

(declare-fun res!2000983 () Bool)

(declare-fun e!2948659 () Bool)

(assert (=> d!1506500 (=> res!2000983 e!2948659)))

(assert (=> d!1506500 (= res!2000983 (and ((_ is Cons!52866) lt!1891890) (= (_1!30547 (h!59221 lt!1891890)) key!4653)))))

(assert (=> d!1506500 (= (containsKey!3391 lt!1891890 key!4653) e!2948659)))

(declare-fun b!4727730 () Bool)

(declare-fun e!2948660 () Bool)

(assert (=> b!4727730 (= e!2948659 e!2948660)))

(declare-fun res!2000984 () Bool)

(assert (=> b!4727730 (=> (not res!2000984) (not e!2948660))))

(assert (=> b!4727730 (= res!2000984 ((_ is Cons!52866) lt!1891890))))

(declare-fun b!4727731 () Bool)

(assert (=> b!4727731 (= e!2948660 (containsKey!3391 (t!360266 lt!1891890) key!4653))))

(assert (= (and d!1506500 (not res!2000983)) b!4727730))

(assert (= (and b!4727730 res!2000984) b!4727731))

(declare-fun m!5667981 () Bool)

(assert (=> b!4727731 m!5667981))

(assert (=> d!1506330 d!1506500))

(declare-fun d!1506502 () Bool)

(declare-fun res!2000985 () Bool)

(declare-fun e!2948661 () Bool)

(assert (=> d!1506502 (=> res!2000985 e!2948661)))

(assert (=> d!1506502 (= res!2000985 (not ((_ is Cons!52866) (tail!9031 oldBucket!34))))))

(assert (=> d!1506502 (= (noDuplicateKeys!2028 (tail!9031 oldBucket!34)) e!2948661)))

(declare-fun b!4727732 () Bool)

(declare-fun e!2948662 () Bool)

(assert (=> b!4727732 (= e!2948661 e!2948662)))

(declare-fun res!2000986 () Bool)

(assert (=> b!4727732 (=> (not res!2000986) (not e!2948662))))

(assert (=> b!4727732 (= res!2000986 (not (containsKey!3391 (t!360266 (tail!9031 oldBucket!34)) (_1!30547 (h!59221 (tail!9031 oldBucket!34))))))))

(declare-fun b!4727733 () Bool)

(assert (=> b!4727733 (= e!2948662 (noDuplicateKeys!2028 (t!360266 (tail!9031 oldBucket!34))))))

(assert (= (and d!1506502 (not res!2000985)) b!4727732))

(assert (= (and b!4727732 res!2000986) b!4727733))

(declare-fun m!5667983 () Bool)

(assert (=> b!4727732 m!5667983))

(assert (=> b!4727733 m!5667901))

(assert (=> d!1506330 d!1506502))

(declare-fun d!1506504 () Bool)

(assert (=> d!1506504 (= (invariantList!1519 (toList!5946 lt!1891841)) (noDuplicatedKeys!380 (toList!5946 lt!1891841)))))

(declare-fun bs!1118422 () Bool)

(assert (= bs!1118422 d!1506504))

(declare-fun m!5667985 () Bool)

(assert (=> bs!1118422 m!5667985))

(assert (=> b!4727386 d!1506504))

(declare-fun d!1506506 () Bool)

(declare-fun lt!1892084 () Bool)

(assert (=> d!1506506 (= lt!1892084 (select (content!9414 e!2948567) key!4653))))

(declare-fun e!2948668 () Bool)

(assert (=> d!1506506 (= lt!1892084 e!2948668)))

(declare-fun res!2000991 () Bool)

(assert (=> d!1506506 (=> (not res!2000991) (not e!2948668))))

(assert (=> d!1506506 (= res!2000991 ((_ is Cons!52869) e!2948567))))

(assert (=> d!1506506 (= (contains!16224 e!2948567 key!4653) lt!1892084)))

(declare-fun b!4727738 () Bool)

(declare-fun e!2948667 () Bool)

(assert (=> b!4727738 (= e!2948668 e!2948667)))

(declare-fun res!2000992 () Bool)

(assert (=> b!4727738 (=> res!2000992 e!2948667)))

(assert (=> b!4727738 (= res!2000992 (= (h!59226 e!2948567) key!4653))))

(declare-fun b!4727739 () Bool)

(assert (=> b!4727739 (= e!2948667 (contains!16224 (t!360269 e!2948567) key!4653))))

(assert (= (and d!1506506 res!2000991) b!4727738))

(assert (= (and b!4727738 (not res!2000992)) b!4727739))

(declare-fun m!5667987 () Bool)

(assert (=> d!1506506 m!5667987))

(declare-fun m!5667989 () Bool)

(assert (=> d!1506506 m!5667989))

(declare-fun m!5667991 () Bool)

(assert (=> b!4727739 m!5667991))

(assert (=> bm!330734 d!1506506))

(declare-fun d!1506508 () Bool)

(declare-fun res!2000993 () Bool)

(declare-fun e!2948669 () Bool)

(assert (=> d!1506508 (=> res!2000993 e!2948669)))

(assert (=> d!1506508 (= res!2000993 ((_ is Nil!52866) (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023))))))))

(assert (=> d!1506508 (= (forall!11618 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (ite c!807339 lambda!216522 lambda!216524)) e!2948669)))

(declare-fun b!4727740 () Bool)

(declare-fun e!2948670 () Bool)

(assert (=> b!4727740 (= e!2948669 e!2948670)))

(declare-fun res!2000994 () Bool)

(assert (=> b!4727740 (=> (not res!2000994) (not e!2948670))))

(assert (=> b!4727740 (= res!2000994 (dynLambda!21835 (ite c!807339 lambda!216522 lambda!216524) (h!59221 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))))))))

(declare-fun b!4727741 () Bool)

(assert (=> b!4727741 (= e!2948670 (forall!11618 (t!360266 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023))))) (ite c!807339 lambda!216522 lambda!216524)))))

(assert (= (and d!1506508 (not res!2000993)) b!4727740))

(assert (= (and b!4727740 res!2000994) b!4727741))

(declare-fun b_lambda!179803 () Bool)

(assert (=> (not b_lambda!179803) (not b!4727740)))

(declare-fun m!5667993 () Bool)

(assert (=> b!4727740 m!5667993))

(declare-fun m!5667995 () Bool)

(assert (=> b!4727741 m!5667995))

(assert (=> bm!330726 d!1506508))

(declare-fun d!1506510 () Bool)

(declare-fun res!2000995 () Bool)

(declare-fun e!2948671 () Bool)

(assert (=> d!1506510 (=> res!2000995 e!2948671)))

(assert (=> d!1506510 (= res!2000995 (and ((_ is Cons!52866) lt!1891698) (= (_1!30547 (h!59221 lt!1891698)) key!4653)))))

(assert (=> d!1506510 (= (containsKey!3391 lt!1891698 key!4653) e!2948671)))

(declare-fun b!4727742 () Bool)

(declare-fun e!2948672 () Bool)

(assert (=> b!4727742 (= e!2948671 e!2948672)))

(declare-fun res!2000996 () Bool)

(assert (=> b!4727742 (=> (not res!2000996) (not e!2948672))))

(assert (=> b!4727742 (= res!2000996 ((_ is Cons!52866) lt!1891698))))

(declare-fun b!4727743 () Bool)

(assert (=> b!4727743 (= e!2948672 (containsKey!3391 (t!360266 lt!1891698) key!4653))))

(assert (= (and d!1506510 (not res!2000995)) b!4727742))

(assert (= (and b!4727742 res!2000996) b!4727743))

(declare-fun m!5667997 () Bool)

(assert (=> b!4727743 m!5667997))

(assert (=> b!4727476 d!1506510))

(declare-fun b!4727744 () Bool)

(declare-fun e!2948677 () Option!12377)

(assert (=> b!4727744 (= e!2948677 (getPair!568 (t!360266 (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653))) key!4653))))

(declare-fun b!4727745 () Bool)

(declare-fun e!2948673 () Bool)

(declare-fun e!2948674 () Bool)

(assert (=> b!4727745 (= e!2948673 e!2948674)))

(declare-fun res!2000999 () Bool)

(assert (=> b!4727745 (=> (not res!2000999) (not e!2948674))))

(declare-fun lt!1892085 () Option!12377)

(assert (=> b!4727745 (= res!2000999 (isDefined!9631 lt!1892085))))

(declare-fun b!4727746 () Bool)

(declare-fun e!2948675 () Option!12377)

(assert (=> b!4727746 (= e!2948675 e!2948677)))

(declare-fun c!807412 () Bool)

(assert (=> b!4727746 (= c!807412 ((_ is Cons!52866) (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653))))))

(declare-fun b!4727747 () Bool)

(assert (=> b!4727747 (= e!2948675 (Some!12376 (h!59221 (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)))))))

(declare-fun b!4727748 () Bool)

(assert (=> b!4727748 (= e!2948674 (contains!16222 (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)) (get!17736 lt!1892085)))))

(declare-fun b!4727749 () Bool)

(declare-fun res!2000997 () Bool)

(assert (=> b!4727749 (=> (not res!2000997) (not e!2948674))))

(assert (=> b!4727749 (= res!2000997 (= (_1!30547 (get!17736 lt!1892085)) key!4653))))

(declare-fun d!1506512 () Bool)

(assert (=> d!1506512 e!2948673))

(declare-fun res!2000998 () Bool)

(assert (=> d!1506512 (=> res!2000998 e!2948673)))

(declare-fun e!2948676 () Bool)

(assert (=> d!1506512 (= res!2000998 e!2948676)))

(declare-fun res!2001000 () Bool)

(assert (=> d!1506512 (=> (not res!2001000) (not e!2948676))))

(assert (=> d!1506512 (= res!2001000 (isEmpty!29189 lt!1892085))))

(assert (=> d!1506512 (= lt!1892085 e!2948675)))

(declare-fun c!807413 () Bool)

(assert (=> d!1506512 (= c!807413 (and ((_ is Cons!52866) (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653))) (= (_1!30547 (h!59221 (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)))) key!4653)))))

(assert (=> d!1506512 (noDuplicateKeys!2028 (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)))))

(assert (=> d!1506512 (= (getPair!568 (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)) key!4653) lt!1892085)))

(declare-fun b!4727750 () Bool)

(assert (=> b!4727750 (= e!2948676 (not (containsKey!3391 (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)) key!4653)))))

(declare-fun b!4727751 () Bool)

(assert (=> b!4727751 (= e!2948677 None!12376)))

(assert (= (and d!1506512 c!807413) b!4727747))

(assert (= (and d!1506512 (not c!807413)) b!4727746))

(assert (= (and b!4727746 c!807412) b!4727744))

(assert (= (and b!4727746 (not c!807412)) b!4727751))

(assert (= (and d!1506512 res!2001000) b!4727750))

(assert (= (and d!1506512 (not res!2000998)) b!4727745))

(assert (= (and b!4727745 res!2000999) b!4727749))

(assert (= (and b!4727749 res!2000997) b!4727748))

(declare-fun m!5667999 () Bool)

(assert (=> b!4727744 m!5667999))

(declare-fun m!5668001 () Bool)

(assert (=> b!4727749 m!5668001))

(declare-fun m!5668003 () Bool)

(assert (=> d!1506512 m!5668003))

(assert (=> d!1506512 m!5667751))

(declare-fun m!5668005 () Bool)

(assert (=> d!1506512 m!5668005))

(assert (=> b!4727750 m!5667751))

(declare-fun m!5668007 () Bool)

(assert (=> b!4727750 m!5668007))

(declare-fun m!5668009 () Bool)

(assert (=> b!4727745 m!5668009))

(assert (=> b!4727748 m!5668001))

(assert (=> b!4727748 m!5667751))

(assert (=> b!4727748 m!5668001))

(declare-fun m!5668011 () Bool)

(assert (=> b!4727748 m!5668011))

(assert (=> b!4727549 d!1506512))

(assert (=> b!4727549 d!1506488))

(declare-fun d!1506514 () Bool)

(declare-fun e!2948678 () Bool)

(assert (=> d!1506514 e!2948678))

(declare-fun res!2001001 () Bool)

(assert (=> d!1506514 (=> res!2001001 e!2948678)))

(declare-fun lt!1892086 () Bool)

(assert (=> d!1506514 (= res!2001001 (not lt!1892086))))

(declare-fun lt!1892088 () Bool)

(assert (=> d!1506514 (= lt!1892086 lt!1892088)))

(declare-fun lt!1892087 () Unit!131113)

(declare-fun e!2948679 () Unit!131113)

(assert (=> d!1506514 (= lt!1892087 e!2948679)))

(declare-fun c!807414 () Bool)

(assert (=> d!1506514 (= c!807414 lt!1892088)))

(assert (=> d!1506514 (= lt!1892088 (containsKey!3394 (toList!5945 lm!2023) lt!1891963))))

(assert (=> d!1506514 (= (contains!16219 lm!2023 lt!1891963) lt!1892086)))

(declare-fun b!4727752 () Bool)

(declare-fun lt!1892089 () Unit!131113)

(assert (=> b!4727752 (= e!2948679 lt!1892089)))

(assert (=> b!4727752 (= lt!1892089 (lemmaContainsKeyImpliesGetValueByKeyDefined!1860 (toList!5945 lm!2023) lt!1891963))))

(assert (=> b!4727752 (isDefined!9634 (getValueByKey!1969 (toList!5945 lm!2023) lt!1891963))))

(declare-fun b!4727753 () Bool)

(declare-fun Unit!131159 () Unit!131113)

(assert (=> b!4727753 (= e!2948679 Unit!131159)))

(declare-fun b!4727754 () Bool)

(assert (=> b!4727754 (= e!2948678 (isDefined!9634 (getValueByKey!1969 (toList!5945 lm!2023) lt!1891963)))))

(assert (= (and d!1506514 c!807414) b!4727752))

(assert (= (and d!1506514 (not c!807414)) b!4727753))

(assert (= (and d!1506514 (not res!2001001)) b!4727754))

(declare-fun m!5668013 () Bool)

(assert (=> d!1506514 m!5668013))

(declare-fun m!5668015 () Bool)

(assert (=> b!4727752 m!5668015))

(assert (=> b!4727752 m!5667743))

(assert (=> b!4727752 m!5667743))

(declare-fun m!5668017 () Bool)

(assert (=> b!4727752 m!5668017))

(assert (=> b!4727754 m!5667743))

(assert (=> b!4727754 m!5667743))

(assert (=> b!4727754 m!5668017))

(assert (=> b!4727549 d!1506514))

(declare-fun lt!1892090 () Bool)

(declare-fun d!1506516 () Bool)

(assert (=> d!1506516 (= lt!1892090 (select (content!9413 (toList!5945 lm!2023)) (tuple2!54509 lt!1891963 lt!1891964)))))

(declare-fun e!2948680 () Bool)

(assert (=> d!1506516 (= lt!1892090 e!2948680)))

(declare-fun res!2001002 () Bool)

(assert (=> d!1506516 (=> (not res!2001002) (not e!2948680))))

(assert (=> d!1506516 (= res!2001002 ((_ is Cons!52867) (toList!5945 lm!2023)))))

(assert (=> d!1506516 (= (contains!16218 (toList!5945 lm!2023) (tuple2!54509 lt!1891963 lt!1891964)) lt!1892090)))

(declare-fun b!4727755 () Bool)

(declare-fun e!2948681 () Bool)

(assert (=> b!4727755 (= e!2948680 e!2948681)))

(declare-fun res!2001003 () Bool)

(assert (=> b!4727755 (=> res!2001003 e!2948681)))

(assert (=> b!4727755 (= res!2001003 (= (h!59222 (toList!5945 lm!2023)) (tuple2!54509 lt!1891963 lt!1891964)))))

(declare-fun b!4727756 () Bool)

(assert (=> b!4727756 (= e!2948681 (contains!16218 (t!360267 (toList!5945 lm!2023)) (tuple2!54509 lt!1891963 lt!1891964)))))

(assert (= (and d!1506516 res!2001002) b!4727755))

(assert (= (and b!4727755 (not res!2001003)) b!4727756))

(assert (=> d!1506516 m!5667643))

(declare-fun m!5668019 () Bool)

(assert (=> d!1506516 m!5668019))

(declare-fun m!5668021 () Bool)

(assert (=> b!4727756 m!5668021))

(assert (=> b!4727549 d!1506516))

(declare-fun d!1506518 () Bool)

(assert (=> d!1506518 (contains!16218 (toList!5945 lm!2023) (tuple2!54509 lt!1891963 lt!1891964))))

(declare-fun lt!1892091 () Unit!131113)

(assert (=> d!1506518 (= lt!1892091 (choose!33397 lm!2023 lt!1891963 lt!1891964))))

(assert (=> d!1506518 (contains!16219 lm!2023 lt!1891963)))

(assert (=> d!1506518 (= (lemmaGetValueImpliesTupleContained!373 lm!2023 lt!1891963 lt!1891964) lt!1892091)))

(declare-fun bs!1118423 () Bool)

(assert (= bs!1118423 d!1506518))

(assert (=> bs!1118423 m!5667757))

(declare-fun m!5668023 () Bool)

(assert (=> bs!1118423 m!5668023))

(assert (=> bs!1118423 m!5667755))

(assert (=> b!4727549 d!1506518))

(declare-fun d!1506520 () Bool)

(assert (=> d!1506520 (dynLambda!21834 lambda!216553 (tuple2!54509 (hash!4406 hashF!1323 key!4653) (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653))))))

(declare-fun lt!1892092 () Unit!131113)

(assert (=> d!1506520 (= lt!1892092 (choose!33398 (toList!5945 lm!2023) lambda!216553 (tuple2!54509 (hash!4406 hashF!1323 key!4653) (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)))))))

(declare-fun e!2948682 () Bool)

(assert (=> d!1506520 e!2948682))

(declare-fun res!2001004 () Bool)

(assert (=> d!1506520 (=> (not res!2001004) (not e!2948682))))

(assert (=> d!1506520 (= res!2001004 (forall!11616 (toList!5945 lm!2023) lambda!216553))))

(assert (=> d!1506520 (= (forallContained!3657 (toList!5945 lm!2023) lambda!216553 (tuple2!54509 (hash!4406 hashF!1323 key!4653) (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)))) lt!1892092)))

(declare-fun b!4727757 () Bool)

(assert (=> b!4727757 (= e!2948682 (contains!16218 (toList!5945 lm!2023) (tuple2!54509 (hash!4406 hashF!1323 key!4653) (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)))))))

(assert (= (and d!1506520 res!2001004) b!4727757))

(declare-fun b_lambda!179805 () Bool)

(assert (=> (not b_lambda!179805) (not d!1506520)))

(declare-fun m!5668025 () Bool)

(assert (=> d!1506520 m!5668025))

(declare-fun m!5668027 () Bool)

(assert (=> d!1506520 m!5668027))

(assert (=> d!1506520 m!5667759))

(declare-fun m!5668029 () Bool)

(assert (=> b!4727757 m!5668029))

(assert (=> b!4727549 d!1506520))

(declare-fun d!1506522 () Bool)

(assert (=> d!1506522 (= (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)) (get!17737 (getValueByKey!1969 (toList!5945 lm!2023) (hash!4406 hashF!1323 key!4653))))))

(declare-fun bs!1118424 () Bool)

(assert (= bs!1118424 d!1506522))

(assert (=> bs!1118424 m!5667457))

(assert (=> bs!1118424 m!5667963))

(assert (=> bs!1118424 m!5667963))

(declare-fun m!5668031 () Bool)

(assert (=> bs!1118424 m!5668031))

(assert (=> b!4727549 d!1506522))

(declare-fun d!1506524 () Bool)

(assert (=> d!1506524 (= (isDefined!9631 (getPair!568 (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)) key!4653)) (not (isEmpty!29189 (getPair!568 (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)) key!4653))))))

(declare-fun bs!1118425 () Bool)

(assert (= bs!1118425 d!1506524))

(assert (=> bs!1118425 m!5667747))

(declare-fun m!5668033 () Bool)

(assert (=> bs!1118425 m!5668033))

(assert (=> b!4727549 d!1506524))

(assert (=> b!4727549 d!1506424))

(assert (=> b!4727549 d!1506380))

(declare-fun b!4727760 () Bool)

(declare-fun e!2948683 () List!52990)

(assert (=> b!4727760 (= e!2948683 (Cons!52866 (h!59221 (t!360266 (t!360266 oldBucket!34))) (removePairForKey!1623 (t!360266 (t!360266 (t!360266 oldBucket!34))) key!4653)))))

(declare-fun d!1506526 () Bool)

(declare-fun lt!1892093 () List!52990)

(assert (=> d!1506526 (not (containsKey!3391 lt!1892093 key!4653))))

(declare-fun e!2948684 () List!52990)

(assert (=> d!1506526 (= lt!1892093 e!2948684)))

(declare-fun c!807415 () Bool)

(assert (=> d!1506526 (= c!807415 (and ((_ is Cons!52866) (t!360266 (t!360266 oldBucket!34))) (= (_1!30547 (h!59221 (t!360266 (t!360266 oldBucket!34)))) key!4653)))))

(assert (=> d!1506526 (noDuplicateKeys!2028 (t!360266 (t!360266 oldBucket!34)))))

(assert (=> d!1506526 (= (removePairForKey!1623 (t!360266 (t!360266 oldBucket!34)) key!4653) lt!1892093)))

(declare-fun b!4727759 () Bool)

(assert (=> b!4727759 (= e!2948684 e!2948683)))

(declare-fun c!807416 () Bool)

(assert (=> b!4727759 (= c!807416 ((_ is Cons!52866) (t!360266 (t!360266 oldBucket!34))))))

(declare-fun b!4727761 () Bool)

(assert (=> b!4727761 (= e!2948683 Nil!52866)))

(declare-fun b!4727758 () Bool)

(assert (=> b!4727758 (= e!2948684 (t!360266 (t!360266 (t!360266 oldBucket!34))))))

(assert (= (and d!1506526 c!807415) b!4727758))

(assert (= (and d!1506526 (not c!807415)) b!4727759))

(assert (= (and b!4727759 c!807416) b!4727760))

(assert (= (and b!4727759 (not c!807416)) b!4727761))

(declare-fun m!5668035 () Bool)

(assert (=> b!4727760 m!5668035))

(declare-fun m!5668037 () Bool)

(assert (=> d!1506526 m!5668037))

(declare-fun m!5668039 () Bool)

(assert (=> d!1506526 m!5668039))

(assert (=> b!4727613 d!1506526))

(declare-fun bs!1118426 () Bool)

(declare-fun b!4727769 () Bool)

(assert (= bs!1118426 (and b!4727769 b!4727680)))

(declare-fun lambda!216586 () Int)

(assert (=> bs!1118426 (= (= (toList!5946 lt!1891700) (t!360266 (toList!5946 lt!1891700))) (= lambda!216586 lambda!216570))))

(declare-fun bs!1118427 () Bool)

(assert (= bs!1118427 (and b!4727769 b!4727673)))

(assert (=> bs!1118427 (= (= (toList!5946 lt!1891700) (Cons!52866 (h!59221 (toList!5946 lt!1891700)) (t!360266 (toList!5946 lt!1891700)))) (= lambda!216586 lambda!216571))))

(declare-fun bs!1118428 () Bool)

(assert (= bs!1118428 (and b!4727769 b!4727679)))

(assert (=> bs!1118428 (= lambda!216586 lambda!216572)))

(assert (=> b!4727769 true))

(declare-fun bs!1118429 () Bool)

(declare-fun b!4727770 () Bool)

(assert (= bs!1118429 (and b!4727770 b!4727672)))

(declare-fun lambda!216587 () Int)

(assert (=> bs!1118429 (= lambda!216587 lambda!216573)))

(declare-fun d!1506528 () Bool)

(declare-fun e!2948687 () Bool)

(assert (=> d!1506528 e!2948687))

(declare-fun res!2001013 () Bool)

(assert (=> d!1506528 (=> (not res!2001013) (not e!2948687))))

(declare-fun lt!1892096 () List!52993)

(assert (=> d!1506528 (= res!2001013 (noDuplicate!866 lt!1892096))))

(assert (=> d!1506528 (= lt!1892096 (getKeysList!959 (toList!5946 lt!1891700)))))

(assert (=> d!1506528 (= (keys!18996 lt!1891700) lt!1892096)))

(declare-fun b!4727768 () Bool)

(declare-fun res!2001012 () Bool)

(assert (=> b!4727768 (=> (not res!2001012) (not e!2948687))))

(assert (=> b!4727768 (= res!2001012 (= (length!588 lt!1892096) (length!589 (toList!5946 lt!1891700))))))

(declare-fun res!2001011 () Bool)

(assert (=> b!4727769 (=> (not res!2001011) (not e!2948687))))

(assert (=> b!4727769 (= res!2001011 (forall!11619 lt!1892096 lambda!216586))))

(assert (=> b!4727770 (= e!2948687 (= (content!9414 lt!1892096) (content!9414 (map!11693 (toList!5946 lt!1891700) lambda!216587))))))

(assert (= (and d!1506528 res!2001013) b!4727768))

(assert (= (and b!4727768 res!2001012) b!4727769))

(assert (= (and b!4727769 res!2001011) b!4727770))

(declare-fun m!5668041 () Bool)

(assert (=> d!1506528 m!5668041))

(assert (=> d!1506528 m!5667791))

(declare-fun m!5668043 () Bool)

(assert (=> b!4727768 m!5668043))

(assert (=> b!4727768 m!5667851))

(declare-fun m!5668045 () Bool)

(assert (=> b!4727769 m!5668045))

(declare-fun m!5668047 () Bool)

(assert (=> b!4727770 m!5668047))

(declare-fun m!5668049 () Bool)

(assert (=> b!4727770 m!5668049))

(assert (=> b!4727770 m!5668049))

(declare-fun m!5668051 () Bool)

(assert (=> b!4727770 m!5668051))

(assert (=> b!4727595 d!1506528))

(declare-fun d!1506530 () Bool)

(declare-fun res!2001014 () Bool)

(declare-fun e!2948688 () Bool)

(assert (=> d!1506530 (=> res!2001014 e!2948688)))

(assert (=> d!1506530 (= res!2001014 (not ((_ is Cons!52866) (t!360266 oldBucket!34))))))

(assert (=> d!1506530 (= (noDuplicateKeys!2028 (t!360266 oldBucket!34)) e!2948688)))

(declare-fun b!4727773 () Bool)

(declare-fun e!2948689 () Bool)

(assert (=> b!4727773 (= e!2948688 e!2948689)))

(declare-fun res!2001015 () Bool)

(assert (=> b!4727773 (=> (not res!2001015) (not e!2948689))))

(assert (=> b!4727773 (= res!2001015 (not (containsKey!3391 (t!360266 (t!360266 oldBucket!34)) (_1!30547 (h!59221 (t!360266 oldBucket!34))))))))

(declare-fun b!4727774 () Bool)

(assert (=> b!4727774 (= e!2948689 (noDuplicateKeys!2028 (t!360266 (t!360266 oldBucket!34))))))

(assert (= (and d!1506530 (not res!2001014)) b!4727773))

(assert (= (and b!4727773 res!2001015) b!4727774))

(declare-fun m!5668053 () Bool)

(assert (=> b!4727773 m!5668053))

(assert (=> b!4727774 m!5668039))

(assert (=> b!4727414 d!1506530))

(declare-fun d!1506532 () Bool)

(declare-fun res!2001016 () Bool)

(declare-fun e!2948690 () Bool)

(assert (=> d!1506532 (=> res!2001016 e!2948690)))

(assert (=> d!1506532 (= res!2001016 (not ((_ is Cons!52866) (_2!30548 lt!1891707))))))

(assert (=> d!1506532 (= (noDuplicateKeys!2028 (_2!30548 lt!1891707)) e!2948690)))

(declare-fun b!4727775 () Bool)

(declare-fun e!2948691 () Bool)

(assert (=> b!4727775 (= e!2948690 e!2948691)))

(declare-fun res!2001017 () Bool)

(assert (=> b!4727775 (=> (not res!2001017) (not e!2948691))))

(assert (=> b!4727775 (= res!2001017 (not (containsKey!3391 (t!360266 (_2!30548 lt!1891707)) (_1!30547 (h!59221 (_2!30548 lt!1891707))))))))

(declare-fun b!4727776 () Bool)

(assert (=> b!4727776 (= e!2948691 (noDuplicateKeys!2028 (t!360266 (_2!30548 lt!1891707))))))

(assert (= (and d!1506532 (not res!2001016)) b!4727775))

(assert (= (and b!4727775 res!2001017) b!4727776))

(declare-fun m!5668055 () Bool)

(assert (=> b!4727775 m!5668055))

(declare-fun m!5668057 () Bool)

(assert (=> b!4727776 m!5668057))

(assert (=> bs!1118370 d!1506532))

(declare-fun d!1506534 () Bool)

(declare-fun lt!1892099 () Bool)

(declare-fun content!9415 (List!52990) (InoxSet tuple2!54506))

(assert (=> d!1506534 (= lt!1892099 (select (content!9415 lt!1891698) (get!17736 lt!1891909)))))

(declare-fun e!2948697 () Bool)

(assert (=> d!1506534 (= lt!1892099 e!2948697)))

(declare-fun res!2001022 () Bool)

(assert (=> d!1506534 (=> (not res!2001022) (not e!2948697))))

(assert (=> d!1506534 (= res!2001022 ((_ is Cons!52866) lt!1891698))))

(assert (=> d!1506534 (= (contains!16222 lt!1891698 (get!17736 lt!1891909)) lt!1892099)))

(declare-fun b!4727781 () Bool)

(declare-fun e!2948696 () Bool)

(assert (=> b!4727781 (= e!2948697 e!2948696)))

(declare-fun res!2001023 () Bool)

(assert (=> b!4727781 (=> res!2001023 e!2948696)))

(assert (=> b!4727781 (= res!2001023 (= (h!59221 lt!1891698) (get!17736 lt!1891909)))))

(declare-fun b!4727782 () Bool)

(assert (=> b!4727782 (= e!2948696 (contains!16222 (t!360266 lt!1891698) (get!17736 lt!1891909)))))

(assert (= (and d!1506534 res!2001022) b!4727781))

(assert (= (and b!4727781 (not res!2001023)) b!4727782))

(declare-fun m!5668059 () Bool)

(assert (=> d!1506534 m!5668059))

(assert (=> d!1506534 m!5667665))

(declare-fun m!5668061 () Bool)

(assert (=> d!1506534 m!5668061))

(assert (=> b!4727782 m!5667665))

(declare-fun m!5668063 () Bool)

(assert (=> b!4727782 m!5668063))

(assert (=> b!4727474 d!1506534))

(assert (=> b!4727474 d!1506442))

(assert (=> b!4727547 d!1506410))

(declare-fun d!1506536 () Bool)

(declare-fun res!2001024 () Bool)

(declare-fun e!2948698 () Bool)

(assert (=> d!1506536 (=> res!2001024 e!2948698)))

(assert (=> d!1506536 (= res!2001024 (and ((_ is Cons!52866) lt!1892007) (= (_1!30547 (h!59221 lt!1892007)) key!4653)))))

(assert (=> d!1506536 (= (containsKey!3391 lt!1892007 key!4653) e!2948698)))

(declare-fun b!4727783 () Bool)

(declare-fun e!2948699 () Bool)

(assert (=> b!4727783 (= e!2948698 e!2948699)))

(declare-fun res!2001025 () Bool)

(assert (=> b!4727783 (=> (not res!2001025) (not e!2948699))))

(assert (=> b!4727783 (= res!2001025 ((_ is Cons!52866) lt!1892007))))

(declare-fun b!4727784 () Bool)

(assert (=> b!4727784 (= e!2948699 (containsKey!3391 (t!360266 lt!1892007) key!4653))))

(assert (= (and d!1506536 (not res!2001024)) b!4727783))

(assert (= (and b!4727783 res!2001025) b!4727784))

(declare-fun m!5668065 () Bool)

(assert (=> b!4727784 m!5668065))

(assert (=> d!1506428 d!1506536))

(assert (=> d!1506428 d!1506530))

(declare-fun b!4727785 () Bool)

(declare-fun e!2948704 () Option!12377)

(assert (=> b!4727785 (= e!2948704 (getPair!568 (t!360266 (t!360266 lt!1891698)) key!4653))))

(declare-fun b!4727786 () Bool)

(declare-fun e!2948700 () Bool)

(declare-fun e!2948701 () Bool)

(assert (=> b!4727786 (= e!2948700 e!2948701)))

(declare-fun res!2001028 () Bool)

(assert (=> b!4727786 (=> (not res!2001028) (not e!2948701))))

(declare-fun lt!1892100 () Option!12377)

(assert (=> b!4727786 (= res!2001028 (isDefined!9631 lt!1892100))))

(declare-fun b!4727787 () Bool)

(declare-fun e!2948702 () Option!12377)

(assert (=> b!4727787 (= e!2948702 e!2948704)))

(declare-fun c!807417 () Bool)

(assert (=> b!4727787 (= c!807417 ((_ is Cons!52866) (t!360266 lt!1891698)))))

(declare-fun b!4727788 () Bool)

(assert (=> b!4727788 (= e!2948702 (Some!12376 (h!59221 (t!360266 lt!1891698))))))

(declare-fun b!4727789 () Bool)

(assert (=> b!4727789 (= e!2948701 (contains!16222 (t!360266 lt!1891698) (get!17736 lt!1892100)))))

(declare-fun b!4727790 () Bool)

(declare-fun res!2001026 () Bool)

(assert (=> b!4727790 (=> (not res!2001026) (not e!2948701))))

(assert (=> b!4727790 (= res!2001026 (= (_1!30547 (get!17736 lt!1892100)) key!4653))))

(declare-fun d!1506538 () Bool)

(assert (=> d!1506538 e!2948700))

(declare-fun res!2001027 () Bool)

(assert (=> d!1506538 (=> res!2001027 e!2948700)))

(declare-fun e!2948703 () Bool)

(assert (=> d!1506538 (= res!2001027 e!2948703)))

(declare-fun res!2001029 () Bool)

(assert (=> d!1506538 (=> (not res!2001029) (not e!2948703))))

(assert (=> d!1506538 (= res!2001029 (isEmpty!29189 lt!1892100))))

(assert (=> d!1506538 (= lt!1892100 e!2948702)))

(declare-fun c!807418 () Bool)

(assert (=> d!1506538 (= c!807418 (and ((_ is Cons!52866) (t!360266 lt!1891698)) (= (_1!30547 (h!59221 (t!360266 lt!1891698))) key!4653)))))

(assert (=> d!1506538 (noDuplicateKeys!2028 (t!360266 lt!1891698))))

(assert (=> d!1506538 (= (getPair!568 (t!360266 lt!1891698) key!4653) lt!1892100)))

(declare-fun b!4727791 () Bool)

(assert (=> b!4727791 (= e!2948703 (not (containsKey!3391 (t!360266 lt!1891698) key!4653)))))

(declare-fun b!4727792 () Bool)

(assert (=> b!4727792 (= e!2948704 None!12376)))

(assert (= (and d!1506538 c!807418) b!4727788))

(assert (= (and d!1506538 (not c!807418)) b!4727787))

(assert (= (and b!4727787 c!807417) b!4727785))

(assert (= (and b!4727787 (not c!807417)) b!4727792))

(assert (= (and d!1506538 res!2001029) b!4727791))

(assert (= (and d!1506538 (not res!2001027)) b!4727786))

(assert (= (and b!4727786 res!2001028) b!4727790))

(assert (= (and b!4727790 res!2001026) b!4727789))

(declare-fun m!5668067 () Bool)

(assert (=> b!4727785 m!5668067))

(declare-fun m!5668069 () Bool)

(assert (=> b!4727790 m!5668069))

(declare-fun m!5668071 () Bool)

(assert (=> d!1506538 m!5668071))

(declare-fun m!5668073 () Bool)

(assert (=> d!1506538 m!5668073))

(assert (=> b!4727791 m!5667997))

(declare-fun m!5668075 () Bool)

(assert (=> b!4727786 m!5668075))

(assert (=> b!4727789 m!5668069))

(assert (=> b!4727789 m!5668069))

(declare-fun m!5668077 () Bool)

(assert (=> b!4727789 m!5668077))

(assert (=> b!4727470 d!1506538))

(declare-fun d!1506540 () Bool)

(assert (=> d!1506540 (= (isEmpty!29189 lt!1891909) (not ((_ is Some!12376) lt!1891909)))))

(assert (=> d!1506350 d!1506540))

(declare-fun d!1506542 () Bool)

(declare-fun res!2001030 () Bool)

(declare-fun e!2948705 () Bool)

(assert (=> d!1506542 (=> res!2001030 e!2948705)))

(assert (=> d!1506542 (= res!2001030 (not ((_ is Cons!52866) lt!1891698)))))

(assert (=> d!1506542 (= (noDuplicateKeys!2028 lt!1891698) e!2948705)))

(declare-fun b!4727793 () Bool)

(declare-fun e!2948706 () Bool)

(assert (=> b!4727793 (= e!2948705 e!2948706)))

(declare-fun res!2001031 () Bool)

(assert (=> b!4727793 (=> (not res!2001031) (not e!2948706))))

(assert (=> b!4727793 (= res!2001031 (not (containsKey!3391 (t!360266 lt!1891698) (_1!30547 (h!59221 lt!1891698)))))))

(declare-fun b!4727794 () Bool)

(assert (=> b!4727794 (= e!2948706 (noDuplicateKeys!2028 (t!360266 lt!1891698)))))

(assert (= (and d!1506542 (not res!2001030)) b!4727793))

(assert (= (and b!4727793 res!2001031) b!4727794))

(declare-fun m!5668079 () Bool)

(assert (=> b!4727793 m!5668079))

(assert (=> b!4727794 m!5668073))

(assert (=> d!1506350 d!1506542))

(declare-fun d!1506544 () Bool)

(declare-fun res!2001036 () Bool)

(declare-fun e!2948711 () Bool)

(assert (=> d!1506544 (=> res!2001036 e!2948711)))

(assert (=> d!1506544 (= res!2001036 (and ((_ is Cons!52866) (toList!5946 lt!1891700)) (= (_1!30547 (h!59221 (toList!5946 lt!1891700))) key!4653)))))

(assert (=> d!1506544 (= (containsKey!3395 (toList!5946 lt!1891700) key!4653) e!2948711)))

(declare-fun b!4727799 () Bool)

(declare-fun e!2948712 () Bool)

(assert (=> b!4727799 (= e!2948711 e!2948712)))

(declare-fun res!2001037 () Bool)

(assert (=> b!4727799 (=> (not res!2001037) (not e!2948712))))

(assert (=> b!4727799 (= res!2001037 ((_ is Cons!52866) (toList!5946 lt!1891700)))))

(declare-fun b!4727800 () Bool)

(assert (=> b!4727800 (= e!2948712 (containsKey!3395 (t!360266 (toList!5946 lt!1891700)) key!4653))))

(assert (= (and d!1506544 (not res!2001036)) b!4727799))

(assert (= (and b!4727799 res!2001037) b!4727800))

(declare-fun m!5668081 () Bool)

(assert (=> b!4727800 m!5668081))

(assert (=> b!4727591 d!1506544))

(declare-fun d!1506546 () Bool)

(assert (=> d!1506546 (containsKey!3395 (toList!5946 lt!1891700) key!4653)))

(declare-fun lt!1892103 () Unit!131113)

(declare-fun choose!33404 (List!52990 K!14220) Unit!131113)

(assert (=> d!1506546 (= lt!1892103 (choose!33404 (toList!5946 lt!1891700) key!4653))))

(assert (=> d!1506546 (invariantList!1519 (toList!5946 lt!1891700))))

(assert (=> d!1506546 (= (lemmaInGetKeysListThenContainsKey!958 (toList!5946 lt!1891700) key!4653) lt!1892103)))

(declare-fun bs!1118430 () Bool)

(assert (= bs!1118430 d!1506546))

(assert (=> bs!1118430 m!5667795))

(declare-fun m!5668083 () Bool)

(assert (=> bs!1118430 m!5668083))

(assert (=> bs!1118430 m!5667847))

(assert (=> b!4727591 d!1506546))

(declare-fun d!1506548 () Bool)

(declare-fun c!807421 () Bool)

(assert (=> d!1506548 (= c!807421 ((_ is Nil!52867) (toList!5945 lm!2023)))))

(declare-fun e!2948715 () (InoxSet tuple2!54508))

(assert (=> d!1506548 (= (content!9413 (toList!5945 lm!2023)) e!2948715)))

(declare-fun b!4727805 () Bool)

(assert (=> b!4727805 (= e!2948715 ((as const (Array tuple2!54508 Bool)) false))))

(declare-fun b!4727806 () Bool)

(assert (=> b!4727806 (= e!2948715 ((_ map or) (store ((as const (Array tuple2!54508 Bool)) false) (h!59222 (toList!5945 lm!2023)) true) (content!9413 (t!360267 (toList!5945 lm!2023)))))))

(assert (= (and d!1506548 c!807421) b!4727805))

(assert (= (and d!1506548 (not c!807421)) b!4727806))

(declare-fun m!5668085 () Bool)

(assert (=> b!4727806 m!5668085))

(assert (=> b!4727806 m!5667883))

(assert (=> d!1506346 d!1506548))

(declare-fun d!1506550 () Bool)

(assert (=> d!1506550 (= (invariantList!1519 (toList!5946 lt!1891879)) (noDuplicatedKeys!380 (toList!5946 lt!1891879)))))

(declare-fun bs!1118431 () Bool)

(assert (= bs!1118431 d!1506550))

(declare-fun m!5668087 () Bool)

(assert (=> bs!1118431 m!5668087))

(assert (=> d!1506326 d!1506550))

(declare-fun d!1506552 () Bool)

(declare-fun res!2001038 () Bool)

(declare-fun e!2948716 () Bool)

(assert (=> d!1506552 (=> res!2001038 e!2948716)))

(assert (=> d!1506552 (= res!2001038 ((_ is Nil!52867) (t!360267 (toList!5945 lm!2023))))))

(assert (=> d!1506552 (= (forall!11616 (t!360267 (toList!5945 lm!2023)) lambda!216534) e!2948716)))

(declare-fun b!4727807 () Bool)

(declare-fun e!2948717 () Bool)

(assert (=> b!4727807 (= e!2948716 e!2948717)))

(declare-fun res!2001039 () Bool)

(assert (=> b!4727807 (=> (not res!2001039) (not e!2948717))))

(assert (=> b!4727807 (= res!2001039 (dynLambda!21834 lambda!216534 (h!59222 (t!360267 (toList!5945 lm!2023)))))))

(declare-fun b!4727808 () Bool)

(assert (=> b!4727808 (= e!2948717 (forall!11616 (t!360267 (t!360267 (toList!5945 lm!2023))) lambda!216534))))

(assert (= (and d!1506552 (not res!2001038)) b!4727807))

(assert (= (and b!4727807 res!2001039) b!4727808))

(declare-fun b_lambda!179807 () Bool)

(assert (=> (not b_lambda!179807) (not b!4727807)))

(declare-fun m!5668089 () Bool)

(assert (=> b!4727807 m!5668089))

(declare-fun m!5668091 () Bool)

(assert (=> b!4727808 m!5668091))

(assert (=> d!1506326 d!1506552))

(declare-fun d!1506554 () Bool)

(declare-fun lt!1892104 () Bool)

(assert (=> d!1506554 (= lt!1892104 (select (content!9414 (keys!18996 lt!1891700)) key!4653))))

(declare-fun e!2948719 () Bool)

(assert (=> d!1506554 (= lt!1892104 e!2948719)))

(declare-fun res!2001040 () Bool)

(assert (=> d!1506554 (=> (not res!2001040) (not e!2948719))))

(assert (=> d!1506554 (= res!2001040 ((_ is Cons!52869) (keys!18996 lt!1891700)))))

(assert (=> d!1506554 (= (contains!16224 (keys!18996 lt!1891700) key!4653) lt!1892104)))

(declare-fun b!4727809 () Bool)

(declare-fun e!2948718 () Bool)

(assert (=> b!4727809 (= e!2948719 e!2948718)))

(declare-fun res!2001041 () Bool)

(assert (=> b!4727809 (=> res!2001041 e!2948718)))

(assert (=> b!4727809 (= res!2001041 (= (h!59226 (keys!18996 lt!1891700)) key!4653))))

(declare-fun b!4727810 () Bool)

(assert (=> b!4727810 (= e!2948718 (contains!16224 (t!360269 (keys!18996 lt!1891700)) key!4653))))

(assert (= (and d!1506554 res!2001040) b!4727809))

(assert (= (and b!4727809 (not res!2001041)) b!4727810))

(assert (=> d!1506554 m!5667779))

(declare-fun m!5668093 () Bool)

(assert (=> d!1506554 m!5668093))

(declare-fun m!5668095 () Bool)

(assert (=> d!1506554 m!5668095))

(declare-fun m!5668097 () Bool)

(assert (=> b!4727810 m!5668097))

(assert (=> b!4727589 d!1506554))

(assert (=> b!4727589 d!1506528))

(declare-fun d!1506556 () Bool)

(assert (=> d!1506556 (dynLambda!21834 lambda!216452 lt!1891707)))

(assert (=> d!1506556 true))

(declare-fun _$7!2246 () Unit!131113)

(assert (=> d!1506556 (= (choose!33398 (toList!5945 lm!2023) lambda!216452 lt!1891707) _$7!2246)))

(declare-fun b_lambda!179809 () Bool)

(assert (=> (not b_lambda!179809) (not d!1506556)))

(declare-fun bs!1118432 () Bool)

(assert (= bs!1118432 d!1506556))

(assert (=> bs!1118432 m!5667687))

(assert (=> d!1506364 d!1506556))

(assert (=> d!1506364 d!1506418))

(declare-fun d!1506558 () Bool)

(assert (=> d!1506558 (= (isEmpty!29189 (getPair!568 lt!1891698 key!4653)) (not ((_ is Some!12376) (getPair!568 lt!1891698 key!4653))))))

(assert (=> d!1506402 d!1506558))

(declare-fun d!1506560 () Bool)

(declare-fun res!2001046 () Bool)

(declare-fun e!2948724 () Bool)

(assert (=> d!1506560 (=> res!2001046 e!2948724)))

(assert (=> d!1506560 (= res!2001046 (and ((_ is Cons!52867) (toList!5945 lm!2023)) (= (_1!30548 (h!59222 (toList!5945 lm!2023))) lt!1891704)))))

(assert (=> d!1506560 (= (containsKey!3394 (toList!5945 lm!2023) lt!1891704) e!2948724)))

(declare-fun b!4727815 () Bool)

(declare-fun e!2948725 () Bool)

(assert (=> b!4727815 (= e!2948724 e!2948725)))

(declare-fun res!2001047 () Bool)

(assert (=> b!4727815 (=> (not res!2001047) (not e!2948725))))

(assert (=> b!4727815 (= res!2001047 (and (or (not ((_ is Cons!52867) (toList!5945 lm!2023))) (bvsle (_1!30548 (h!59222 (toList!5945 lm!2023))) lt!1891704)) ((_ is Cons!52867) (toList!5945 lm!2023)) (bvslt (_1!30548 (h!59222 (toList!5945 lm!2023))) lt!1891704)))))

(declare-fun b!4727816 () Bool)

(assert (=> b!4727816 (= e!2948725 (containsKey!3394 (t!360267 (toList!5945 lm!2023)) lt!1891704))))

(assert (= (and d!1506560 (not res!2001046)) b!4727815))

(assert (= (and b!4727815 res!2001047) b!4727816))

(declare-fun m!5668099 () Bool)

(assert (=> b!4727816 m!5668099))

(assert (=> d!1506406 d!1506560))

(declare-fun d!1506562 () Bool)

(declare-fun res!2001048 () Bool)

(declare-fun e!2948726 () Bool)

(assert (=> d!1506562 (=> res!2001048 e!2948726)))

(assert (=> d!1506562 (= res!2001048 (and ((_ is Cons!52866) (t!360266 (t!360266 oldBucket!34))) (= (_1!30547 (h!59221 (t!360266 (t!360266 oldBucket!34)))) key!4653)))))

(assert (=> d!1506562 (= (containsKey!3391 (t!360266 (t!360266 oldBucket!34)) key!4653) e!2948726)))

(declare-fun b!4727817 () Bool)

(declare-fun e!2948727 () Bool)

(assert (=> b!4727817 (= e!2948726 e!2948727)))

(declare-fun res!2001049 () Bool)

(assert (=> b!4727817 (=> (not res!2001049) (not e!2948727))))

(assert (=> b!4727817 (= res!2001049 ((_ is Cons!52866) (t!360266 (t!360266 oldBucket!34))))))

(declare-fun b!4727818 () Bool)

(assert (=> b!4727818 (= e!2948727 (containsKey!3391 (t!360266 (t!360266 (t!360266 oldBucket!34))) key!4653))))

(assert (= (and d!1506562 (not res!2001048)) b!4727817))

(assert (= (and b!4727817 res!2001049) b!4727818))

(declare-fun m!5668101 () Bool)

(assert (=> b!4727818 m!5668101))

(assert (=> b!4727556 d!1506562))

(declare-fun d!1506564 () Bool)

(declare-fun res!2001050 () Bool)

(declare-fun e!2948728 () Bool)

(assert (=> d!1506564 (=> res!2001050 e!2948728)))

(assert (=> d!1506564 (= res!2001050 ((_ is Nil!52866) oldBucket!34))))

(assert (=> d!1506564 (= (forall!11618 oldBucket!34 lambda!216455) e!2948728)))

(declare-fun b!4727819 () Bool)

(declare-fun e!2948729 () Bool)

(assert (=> b!4727819 (= e!2948728 e!2948729)))

(declare-fun res!2001051 () Bool)

(assert (=> b!4727819 (=> (not res!2001051) (not e!2948729))))

(assert (=> b!4727819 (= res!2001051 (dynLambda!21835 lambda!216455 (h!59221 oldBucket!34)))))

(declare-fun b!4727820 () Bool)

(assert (=> b!4727820 (= e!2948729 (forall!11618 (t!360266 oldBucket!34) lambda!216455))))

(assert (= (and d!1506564 (not res!2001050)) b!4727819))

(assert (= (and b!4727819 res!2001051) b!4727820))

(declare-fun b_lambda!179811 () Bool)

(assert (=> (not b_lambda!179811) (not b!4727819)))

(declare-fun m!5668103 () Bool)

(assert (=> b!4727819 m!5668103))

(declare-fun m!5668105 () Bool)

(assert (=> b!4727820 m!5668105))

(assert (=> d!1506298 d!1506564))

(declare-fun d!1506566 () Bool)

(declare-fun res!2001052 () Bool)

(declare-fun e!2948730 () Bool)

(assert (=> d!1506566 (=> res!2001052 e!2948730)))

(assert (=> d!1506566 (= res!2001052 ((_ is Nil!52866) (ite c!807339 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(assert (=> d!1506566 (= (forall!11618 (ite c!807339 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (ite c!807339 lambda!216522 lambda!216524)) e!2948730)))

(declare-fun b!4727821 () Bool)

(declare-fun e!2948731 () Bool)

(assert (=> b!4727821 (= e!2948730 e!2948731)))

(declare-fun res!2001053 () Bool)

(assert (=> b!4727821 (=> (not res!2001053) (not e!2948731))))

(assert (=> b!4727821 (= res!2001053 (dynLambda!21835 (ite c!807339 lambda!216522 lambda!216524) (h!59221 (ite c!807339 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))))

(declare-fun b!4727822 () Bool)

(assert (=> b!4727822 (= e!2948731 (forall!11618 (t!360266 (ite c!807339 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) (ite c!807339 lambda!216522 lambda!216524)))))

(assert (= (and d!1506566 (not res!2001052)) b!4727821))

(assert (= (and b!4727821 res!2001053) b!4727822))

(declare-fun b_lambda!179813 () Bool)

(assert (=> (not b_lambda!179813) (not b!4727821)))

(declare-fun m!5668107 () Bool)

(assert (=> b!4727821 m!5668107))

(declare-fun m!5668109 () Bool)

(assert (=> b!4727822 m!5668109))

(assert (=> bm!330728 d!1506566))

(declare-fun d!1506568 () Bool)

(declare-fun isEmpty!29191 (Option!12379) Bool)

(assert (=> d!1506568 (= (isDefined!9634 (getValueByKey!1969 (toList!5945 lm!2023) lt!1891704)) (not (isEmpty!29191 (getValueByKey!1969 (toList!5945 lm!2023) lt!1891704))))))

(declare-fun bs!1118433 () Bool)

(assert (= bs!1118433 d!1506568))

(assert (=> bs!1118433 m!5667695))

(declare-fun m!5668111 () Bool)

(assert (=> bs!1118433 m!5668111))

(assert (=> b!4727567 d!1506568))

(assert (=> b!4727567 d!1506436))

(assert (=> d!1506412 d!1506544))

(declare-fun d!1506570 () Bool)

(declare-fun res!2001054 () Bool)

(declare-fun e!2948732 () Bool)

(assert (=> d!1506570 (=> res!2001054 e!2948732)))

(assert (=> d!1506570 (= res!2001054 ((_ is Nil!52867) (toList!5945 lm!2023)))))

(assert (=> d!1506570 (= (forall!11616 (toList!5945 lm!2023) lambda!216557) e!2948732)))

(declare-fun b!4727823 () Bool)

(declare-fun e!2948733 () Bool)

(assert (=> b!4727823 (= e!2948732 e!2948733)))

(declare-fun res!2001055 () Bool)

(assert (=> b!4727823 (=> (not res!2001055) (not e!2948733))))

(assert (=> b!4727823 (= res!2001055 (dynLambda!21834 lambda!216557 (h!59222 (toList!5945 lm!2023))))))

(declare-fun b!4727824 () Bool)

(assert (=> b!4727824 (= e!2948733 (forall!11616 (t!360267 (toList!5945 lm!2023)) lambda!216557))))

(assert (= (and d!1506570 (not res!2001054)) b!4727823))

(assert (= (and b!4727823 res!2001055) b!4727824))

(declare-fun b_lambda!179815 () Bool)

(assert (=> (not b_lambda!179815) (not b!4727823)))

(declare-fun m!5668113 () Bool)

(assert (=> b!4727823 m!5668113))

(declare-fun m!5668115 () Bool)

(assert (=> b!4727824 m!5668115))

(assert (=> d!1506410 d!1506570))

(declare-fun d!1506572 () Bool)

(assert (=> d!1506572 (dynLambda!21835 lambda!216524 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))

(declare-fun lt!1892107 () Unit!131113)

(declare-fun choose!33405 (List!52990 Int tuple2!54506) Unit!131113)

(assert (=> d!1506572 (= lt!1892107 (choose!33405 (toList!5946 lt!1891853) lambda!216524 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))

(declare-fun e!2948736 () Bool)

(assert (=> d!1506572 e!2948736))

(declare-fun res!2001058 () Bool)

(assert (=> d!1506572 (=> (not res!2001058) (not e!2948736))))

(assert (=> d!1506572 (= res!2001058 (forall!11618 (toList!5946 lt!1891853) lambda!216524))))

(assert (=> d!1506572 (= (forallContained!3659 (toList!5946 lt!1891853) lambda!216524 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) lt!1892107)))

(declare-fun b!4727827 () Bool)

(assert (=> b!4727827 (= e!2948736 (contains!16222 (toList!5946 lt!1891853) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))

(assert (= (and d!1506572 res!2001058) b!4727827))

(declare-fun b_lambda!179817 () Bool)

(assert (=> (not b_lambda!179817) (not d!1506572)))

(declare-fun m!5668117 () Bool)

(assert (=> d!1506572 m!5668117))

(declare-fun m!5668119 () Bool)

(assert (=> d!1506572 m!5668119))

(assert (=> d!1506572 m!5667573))

(declare-fun m!5668121 () Bool)

(assert (=> b!4727827 m!5668121))

(assert (=> b!4727387 d!1506572))

(declare-fun d!1506574 () Bool)

(declare-fun res!2001059 () Bool)

(declare-fun e!2948737 () Bool)

(assert (=> d!1506574 (=> res!2001059 e!2948737)))

(assert (=> d!1506574 (= res!2001059 ((_ is Nil!52866) (toList!5946 lt!1891853)))))

(assert (=> d!1506574 (= (forall!11618 (toList!5946 lt!1891853) lambda!216524) e!2948737)))

(declare-fun b!4727828 () Bool)

(declare-fun e!2948738 () Bool)

(assert (=> b!4727828 (= e!2948737 e!2948738)))

(declare-fun res!2001060 () Bool)

(assert (=> b!4727828 (=> (not res!2001060) (not e!2948738))))

(assert (=> b!4727828 (= res!2001060 (dynLambda!21835 lambda!216524 (h!59221 (toList!5946 lt!1891853))))))

(declare-fun b!4727829 () Bool)

(assert (=> b!4727829 (= e!2948738 (forall!11618 (t!360266 (toList!5946 lt!1891853)) lambda!216524))))

(assert (= (and d!1506574 (not res!2001059)) b!4727828))

(assert (= (and b!4727828 res!2001060) b!4727829))

(declare-fun b_lambda!179819 () Bool)

(assert (=> (not b_lambda!179819) (not b!4727828)))

(declare-fun m!5668123 () Bool)

(assert (=> b!4727828 m!5668123))

(declare-fun m!5668125 () Bool)

(assert (=> b!4727829 m!5668125))

(assert (=> b!4727387 d!1506574))

(declare-fun d!1506576 () Bool)

(declare-fun res!2001061 () Bool)

(declare-fun e!2948739 () Bool)

(assert (=> d!1506576 (=> res!2001061 e!2948739)))

(assert (=> d!1506576 (= res!2001061 ((_ is Nil!52866) (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023))))))))

(assert (=> d!1506576 (= (forall!11618 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) lambda!216524) e!2948739)))

(declare-fun b!4727830 () Bool)

(declare-fun e!2948740 () Bool)

(assert (=> b!4727830 (= e!2948739 e!2948740)))

(declare-fun res!2001062 () Bool)

(assert (=> b!4727830 (=> (not res!2001062) (not e!2948740))))

(assert (=> b!4727830 (= res!2001062 (dynLambda!21835 lambda!216524 (h!59221 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))))))))

(declare-fun b!4727831 () Bool)

(assert (=> b!4727831 (= e!2948740 (forall!11618 (t!360266 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023))))) lambda!216524))))

(assert (= (and d!1506576 (not res!2001061)) b!4727830))

(assert (= (and b!4727830 res!2001062) b!4727831))

(declare-fun b_lambda!179821 () Bool)

(assert (=> (not b_lambda!179821) (not b!4727830)))

(declare-fun m!5668127 () Bool)

(assert (=> b!4727830 m!5668127))

(declare-fun m!5668129 () Bool)

(assert (=> b!4727831 m!5668129))

(assert (=> b!4727387 d!1506576))

(declare-fun bs!1118434 () Bool)

(declare-fun b!4727832 () Bool)

(assert (= bs!1118434 (and b!4727832 d!1506306)))

(declare-fun lambda!216588 () Int)

(assert (=> bs!1118434 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) lt!1891841) (= lambda!216588 lambda!216525))))

(declare-fun bs!1118435 () Bool)

(assert (= bs!1118435 (and b!4727832 b!4727717)))

(assert (=> bs!1118435 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) lt!1892069) (= lambda!216588 lambda!216576))))

(declare-fun bs!1118436 () Bool)

(assert (= bs!1118436 (and b!4727832 d!1506484)))

(assert (=> bs!1118436 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) lt!1892054) (= lambda!216588 lambda!216577))))

(declare-fun bs!1118437 () Bool)

(assert (= bs!1118437 (and b!4727832 b!4727714)))

(assert (=> bs!1118437 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (= lambda!216588 lambda!216574))))

(declare-fun bs!1118438 () Bool)

(assert (= bs!1118438 (and b!4727832 d!1506494)))

(assert (=> bs!1118438 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216588 lambda!216581))))

(declare-fun bs!1118439 () Bool)

(assert (= bs!1118439 (and b!4727832 b!4727387)))

(assert (=> bs!1118439 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) lt!1891856) (= lambda!216588 lambda!216524))))

(assert (=> bs!1118435 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (= lambda!216588 lambda!216575))))

(assert (=> bs!1118439 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216588 lambda!216523))))

(declare-fun bs!1118440 () Bool)

(assert (= bs!1118440 (and b!4727832 b!4727384)))

(assert (=> bs!1118440 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216588 lambda!216522))))

(declare-fun bs!1118441 () Bool)

(assert (= bs!1118441 (and b!4727832 d!1506298)))

(assert (=> bs!1118441 (not (= lambda!216588 lambda!216455))))

(declare-fun bs!1118442 () Bool)

(assert (= bs!1118442 (and b!4727832 d!1506408)))

(assert (=> bs!1118442 (not (= lambda!216588 lambda!216554))))

(assert (=> b!4727832 true))

(declare-fun bs!1118443 () Bool)

(declare-fun b!4727835 () Bool)

(assert (= bs!1118443 (and b!4727835 b!4727717)))

(declare-fun lambda!216589 () Int)

(assert (=> bs!1118443 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) lt!1892069) (= lambda!216589 lambda!216576))))

(declare-fun bs!1118444 () Bool)

(assert (= bs!1118444 (and b!4727835 d!1506484)))

(assert (=> bs!1118444 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) lt!1892054) (= lambda!216589 lambda!216577))))

(declare-fun bs!1118445 () Bool)

(assert (= bs!1118445 (and b!4727835 b!4727714)))

(assert (=> bs!1118445 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (= lambda!216589 lambda!216574))))

(declare-fun bs!1118446 () Bool)

(assert (= bs!1118446 (and b!4727835 d!1506494)))

(assert (=> bs!1118446 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216589 lambda!216581))))

(declare-fun bs!1118447 () Bool)

(assert (= bs!1118447 (and b!4727835 b!4727387)))

(assert (=> bs!1118447 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) lt!1891856) (= lambda!216589 lambda!216524))))

(assert (=> bs!1118443 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (= lambda!216589 lambda!216575))))

(assert (=> bs!1118447 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216589 lambda!216523))))

(declare-fun bs!1118448 () Bool)

(assert (= bs!1118448 (and b!4727835 b!4727384)))

(assert (=> bs!1118448 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216589 lambda!216522))))

(declare-fun bs!1118449 () Bool)

(assert (= bs!1118449 (and b!4727835 d!1506298)))

(assert (=> bs!1118449 (not (= lambda!216589 lambda!216455))))

(declare-fun bs!1118450 () Bool)

(assert (= bs!1118450 (and b!4727835 d!1506408)))

(assert (=> bs!1118450 (not (= lambda!216589 lambda!216554))))

(declare-fun bs!1118451 () Bool)

(assert (= bs!1118451 (and b!4727835 b!4727832)))

(assert (=> bs!1118451 (= lambda!216589 lambda!216588)))

(declare-fun bs!1118452 () Bool)

(assert (= bs!1118452 (and b!4727835 d!1506306)))

(assert (=> bs!1118452 (= (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) lt!1891841) (= lambda!216589 lambda!216525))))

(assert (=> b!4727835 true))

(declare-fun lt!1892124 () ListMap!5309)

(declare-fun lambda!216590 () Int)

(assert (=> bs!1118443 (= (= lt!1892124 lt!1892069) (= lambda!216590 lambda!216576))))

(assert (=> bs!1118444 (= (= lt!1892124 lt!1892054) (= lambda!216590 lambda!216577))))

(assert (=> bs!1118445 (= (= lt!1892124 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (= lambda!216590 lambda!216574))))

(assert (=> bs!1118446 (= (= lt!1892124 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216590 lambda!216581))))

(assert (=> bs!1118447 (= (= lt!1892124 lt!1891856) (= lambda!216590 lambda!216524))))

(assert (=> bs!1118443 (= (= lt!1892124 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (= lambda!216590 lambda!216575))))

(assert (=> bs!1118447 (= (= lt!1892124 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216590 lambda!216523))))

(assert (=> bs!1118448 (= (= lt!1892124 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216590 lambda!216522))))

(assert (=> bs!1118449 (not (= lambda!216590 lambda!216455))))

(assert (=> bs!1118450 (not (= lambda!216590 lambda!216554))))

(assert (=> b!4727835 (= (= lt!1892124 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) (= lambda!216590 lambda!216589))))

(assert (=> bs!1118451 (= (= lt!1892124 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) (= lambda!216590 lambda!216588))))

(assert (=> bs!1118452 (= (= lt!1892124 lt!1891841) (= lambda!216590 lambda!216525))))

(assert (=> b!4727835 true))

(declare-fun bs!1118453 () Bool)

(declare-fun d!1506578 () Bool)

(assert (= bs!1118453 (and d!1506578 b!4727717)))

(declare-fun lt!1892109 () ListMap!5309)

(declare-fun lambda!216591 () Int)

(assert (=> bs!1118453 (= (= lt!1892109 lt!1892069) (= lambda!216591 lambda!216576))))

(declare-fun bs!1118454 () Bool)

(assert (= bs!1118454 (and d!1506578 d!1506484)))

(assert (=> bs!1118454 (= (= lt!1892109 lt!1892054) (= lambda!216591 lambda!216577))))

(declare-fun bs!1118455 () Bool)

(assert (= bs!1118455 (and d!1506578 b!4727714)))

(assert (=> bs!1118455 (= (= lt!1892109 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (= lambda!216591 lambda!216574))))

(declare-fun bs!1118456 () Bool)

(assert (= bs!1118456 (and d!1506578 d!1506494)))

(assert (=> bs!1118456 (= (= lt!1892109 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216591 lambda!216581))))

(declare-fun bs!1118457 () Bool)

(assert (= bs!1118457 (and d!1506578 b!4727387)))

(assert (=> bs!1118457 (= (= lt!1892109 lt!1891856) (= lambda!216591 lambda!216524))))

(assert (=> bs!1118453 (= (= lt!1892109 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (= lambda!216591 lambda!216575))))

(declare-fun bs!1118458 () Bool)

(assert (= bs!1118458 (and d!1506578 b!4727835)))

(assert (=> bs!1118458 (= (= lt!1892109 lt!1892124) (= lambda!216591 lambda!216590))))

(assert (=> bs!1118457 (= (= lt!1892109 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216591 lambda!216523))))

(declare-fun bs!1118459 () Bool)

(assert (= bs!1118459 (and d!1506578 b!4727384)))

(assert (=> bs!1118459 (= (= lt!1892109 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216591 lambda!216522))))

(declare-fun bs!1118460 () Bool)

(assert (= bs!1118460 (and d!1506578 d!1506298)))

(assert (=> bs!1118460 (not (= lambda!216591 lambda!216455))))

(declare-fun bs!1118461 () Bool)

(assert (= bs!1118461 (and d!1506578 d!1506408)))

(assert (=> bs!1118461 (not (= lambda!216591 lambda!216554))))

(assert (=> bs!1118458 (= (= lt!1892109 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) (= lambda!216591 lambda!216589))))

(declare-fun bs!1118462 () Bool)

(assert (= bs!1118462 (and d!1506578 b!4727832)))

(assert (=> bs!1118462 (= (= lt!1892109 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) (= lambda!216591 lambda!216588))))

(declare-fun bs!1118463 () Bool)

(assert (= bs!1118463 (and d!1506578 d!1506306)))

(assert (=> bs!1118463 (= (= lt!1892109 lt!1891841) (= lambda!216591 lambda!216525))))

(assert (=> d!1506578 true))

(declare-fun call!330745 () Bool)

(declare-fun c!807422 () Bool)

(declare-fun bm!330738 () Bool)

(assert (=> bm!330738 (= call!330745 (forall!11618 (toList!5946 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) (ite c!807422 lambda!216588 lambda!216590)))))

(declare-fun e!2948743 () ListMap!5309)

(assert (=> b!4727832 (= e!2948743 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))

(declare-fun lt!1892123 () Unit!131113)

(declare-fun call!330743 () Unit!131113)

(assert (=> b!4727832 (= lt!1892123 call!330743)))

(assert (=> b!4727832 call!330745))

(declare-fun lt!1892112 () Unit!131113)

(assert (=> b!4727832 (= lt!1892112 lt!1892123)))

(declare-fun call!330744 () Bool)

(assert (=> b!4727832 call!330744))

(declare-fun lt!1892111 () Unit!131113)

(declare-fun Unit!131166 () Unit!131113)

(assert (=> b!4727832 (= lt!1892111 Unit!131166)))

(declare-fun bm!330739 () Bool)

(assert (=> bm!330739 (= call!330743 (lemmaContainsAllItsOwnKeys!805 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun b!4727833 () Bool)

(declare-fun e!2948741 () Bool)

(assert (=> b!4727833 (= e!2948741 (forall!11618 (toList!5946 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) lambda!216590))))

(declare-fun b!4727834 () Bool)

(declare-fun e!2948742 () Bool)

(assert (=> b!4727834 (= e!2948742 (invariantList!1519 (toList!5946 lt!1892109)))))

(declare-fun b!4727836 () Bool)

(declare-fun res!2001065 () Bool)

(assert (=> b!4727836 (=> (not res!2001065) (not e!2948742))))

(assert (=> b!4727836 (= res!2001065 (forall!11618 (toList!5946 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) lambda!216591))))

(declare-fun bm!330740 () Bool)

(assert (=> bm!330740 (= call!330744 (forall!11618 (ite c!807422 (toList!5946 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) (t!360266 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) (ite c!807422 lambda!216588 lambda!216590)))))

(assert (=> b!4727835 (= e!2948743 lt!1892124)))

(declare-fun lt!1892121 () ListMap!5309)

(assert (=> b!4727835 (= lt!1892121 (+!2277 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (h!59221 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(assert (=> b!4727835 (= lt!1892124 (addToMapMapFromBucket!1458 (t!360266 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (+!2277 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (h!59221 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))))

(declare-fun lt!1892114 () Unit!131113)

(assert (=> b!4727835 (= lt!1892114 call!330743)))

(assert (=> b!4727835 (forall!11618 (toList!5946 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) lambda!216589)))

(declare-fun lt!1892108 () Unit!131113)

(assert (=> b!4727835 (= lt!1892108 lt!1892114)))

(assert (=> b!4727835 (forall!11618 (toList!5946 lt!1892121) lambda!216590)))

(declare-fun lt!1892115 () Unit!131113)

(declare-fun Unit!131167 () Unit!131113)

(assert (=> b!4727835 (= lt!1892115 Unit!131167)))

(assert (=> b!4727835 call!330744))

(declare-fun lt!1892125 () Unit!131113)

(declare-fun Unit!131168 () Unit!131113)

(assert (=> b!4727835 (= lt!1892125 Unit!131168)))

(declare-fun lt!1892110 () Unit!131113)

(declare-fun Unit!131169 () Unit!131113)

(assert (=> b!4727835 (= lt!1892110 Unit!131169)))

(declare-fun lt!1892120 () Unit!131113)

(assert (=> b!4727835 (= lt!1892120 (forallContained!3659 (toList!5946 lt!1892121) lambda!216590 (h!59221 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(assert (=> b!4727835 (contains!16220 lt!1892121 (_1!30547 (h!59221 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun lt!1892116 () Unit!131113)

(declare-fun Unit!131170 () Unit!131113)

(assert (=> b!4727835 (= lt!1892116 Unit!131170)))

(assert (=> b!4727835 (contains!16220 lt!1892124 (_1!30547 (h!59221 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun lt!1892119 () Unit!131113)

(declare-fun Unit!131171 () Unit!131113)

(assert (=> b!4727835 (= lt!1892119 Unit!131171)))

(assert (=> b!4727835 (forall!11618 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))) lambda!216590)))

(declare-fun lt!1892122 () Unit!131113)

(declare-fun Unit!131172 () Unit!131113)

(assert (=> b!4727835 (= lt!1892122 Unit!131172)))

(assert (=> b!4727835 (forall!11618 (toList!5946 lt!1892121) lambda!216590)))

(declare-fun lt!1892117 () Unit!131113)

(declare-fun Unit!131173 () Unit!131113)

(assert (=> b!4727835 (= lt!1892117 Unit!131173)))

(declare-fun lt!1892118 () Unit!131113)

(declare-fun Unit!131174 () Unit!131113)

(assert (=> b!4727835 (= lt!1892118 Unit!131174)))

(declare-fun lt!1892128 () Unit!131113)

(assert (=> b!4727835 (= lt!1892128 (addForallContainsKeyThenBeforeAdding!804 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) lt!1892124 (_1!30547 (h!59221 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) (_2!30547 (h!59221 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))))

(assert (=> b!4727835 call!330745))

(declare-fun lt!1892113 () Unit!131113)

(assert (=> b!4727835 (= lt!1892113 lt!1892128)))

(assert (=> b!4727835 (forall!11618 (toList!5946 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) lambda!216590)))

(declare-fun lt!1892127 () Unit!131113)

(declare-fun Unit!131175 () Unit!131113)

(assert (=> b!4727835 (= lt!1892127 Unit!131175)))

(declare-fun res!2001064 () Bool)

(assert (=> b!4727835 (= res!2001064 (forall!11618 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))) lambda!216590))))

(assert (=> b!4727835 (=> (not res!2001064) (not e!2948741))))

(assert (=> b!4727835 e!2948741))

(declare-fun lt!1892126 () Unit!131113)

(declare-fun Unit!131176 () Unit!131113)

(assert (=> b!4727835 (= lt!1892126 Unit!131176)))

(assert (=> d!1506578 e!2948742))

(declare-fun res!2001063 () Bool)

(assert (=> d!1506578 (=> (not res!2001063) (not e!2948742))))

(assert (=> d!1506578 (= res!2001063 (forall!11618 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))) lambda!216591))))

(assert (=> d!1506578 (= lt!1892109 e!2948743)))

(assert (=> d!1506578 (= c!807422 ((_ is Nil!52866) (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))

(assert (=> d!1506578 (noDuplicateKeys!2028 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))

(assert (=> d!1506578 (= (addToMapMapFromBucket!1458 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))) (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) lt!1892109)))

(assert (= (and d!1506578 c!807422) b!4727832))

(assert (= (and d!1506578 (not c!807422)) b!4727835))

(assert (= (and b!4727835 res!2001064) b!4727833))

(assert (= (or b!4727832 b!4727835) bm!330739))

(assert (= (or b!4727832 b!4727835) bm!330740))

(assert (= (or b!4727832 b!4727835) bm!330738))

(assert (= (and d!1506578 res!2001063) b!4727836))

(assert (= (and b!4727836 res!2001065) b!4727834))

(declare-fun m!5668131 () Bool)

(assert (=> d!1506578 m!5668131))

(assert (=> d!1506578 m!5667891))

(declare-fun m!5668133 () Bool)

(assert (=> b!4727834 m!5668133))

(declare-fun m!5668135 () Bool)

(assert (=> b!4727835 m!5668135))

(declare-fun m!5668137 () Bool)

(assert (=> b!4727835 m!5668137))

(assert (=> b!4727835 m!5667561))

(declare-fun m!5668139 () Bool)

(assert (=> b!4727835 m!5668139))

(declare-fun m!5668141 () Bool)

(assert (=> b!4727835 m!5668141))

(declare-fun m!5668143 () Bool)

(assert (=> b!4727835 m!5668143))

(declare-fun m!5668145 () Bool)

(assert (=> b!4727835 m!5668145))

(assert (=> b!4727835 m!5667561))

(assert (=> b!4727835 m!5668135))

(declare-fun m!5668147 () Bool)

(assert (=> b!4727835 m!5668147))

(declare-fun m!5668149 () Bool)

(assert (=> b!4727835 m!5668149))

(assert (=> b!4727835 m!5668147))

(assert (=> b!4727835 m!5668143))

(declare-fun m!5668151 () Bool)

(assert (=> b!4727835 m!5668151))

(declare-fun m!5668153 () Bool)

(assert (=> b!4727835 m!5668153))

(declare-fun m!5668155 () Bool)

(assert (=> b!4727836 m!5668155))

(declare-fun m!5668157 () Bool)

(assert (=> bm!330738 m!5668157))

(assert (=> bm!330739 m!5667561))

(declare-fun m!5668159 () Bool)

(assert (=> bm!330739 m!5668159))

(assert (=> b!4727833 m!5668151))

(declare-fun m!5668161 () Bool)

(assert (=> bm!330740 m!5668161))

(assert (=> b!4727387 d!1506578))

(declare-fun d!1506580 () Bool)

(declare-fun res!2001066 () Bool)

(declare-fun e!2948744 () Bool)

(assert (=> d!1506580 (=> res!2001066 e!2948744)))

(assert (=> d!1506580 (= res!2001066 ((_ is Nil!52866) (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023))))))))

(assert (=> d!1506580 (= (forall!11618 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) lambda!216523) e!2948744)))

(declare-fun b!4727837 () Bool)

(declare-fun e!2948745 () Bool)

(assert (=> b!4727837 (= e!2948744 e!2948745)))

(declare-fun res!2001067 () Bool)

(assert (=> b!4727837 (=> (not res!2001067) (not e!2948745))))

(assert (=> b!4727837 (= res!2001067 (dynLambda!21835 lambda!216523 (h!59221 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))))))))

(declare-fun b!4727838 () Bool)

(assert (=> b!4727838 (= e!2948745 (forall!11618 (t!360266 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023))))) lambda!216523))))

(assert (= (and d!1506580 (not res!2001066)) b!4727837))

(assert (= (and b!4727837 res!2001067) b!4727838))

(declare-fun b_lambda!179823 () Bool)

(assert (=> (not b_lambda!179823) (not b!4727837)))

(declare-fun m!5668163 () Bool)

(assert (=> b!4727837 m!5668163))

(declare-fun m!5668165 () Bool)

(assert (=> b!4727838 m!5668165))

(assert (=> b!4727387 d!1506580))

(declare-fun d!1506582 () Bool)

(declare-fun res!2001068 () Bool)

(declare-fun e!2948746 () Bool)

(assert (=> d!1506582 (=> res!2001068 e!2948746)))

(assert (=> d!1506582 (= res!2001068 ((_ is Nil!52866) (_2!30548 (h!59222 (toList!5945 lm!2023)))))))

(assert (=> d!1506582 (= (forall!11618 (_2!30548 (h!59222 (toList!5945 lm!2023))) lambda!216524) e!2948746)))

(declare-fun b!4727839 () Bool)

(declare-fun e!2948747 () Bool)

(assert (=> b!4727839 (= e!2948746 e!2948747)))

(declare-fun res!2001069 () Bool)

(assert (=> b!4727839 (=> (not res!2001069) (not e!2948747))))

(assert (=> b!4727839 (= res!2001069 (dynLambda!21835 lambda!216524 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))

(declare-fun b!4727840 () Bool)

(assert (=> b!4727840 (= e!2948747 (forall!11618 (t!360266 (_2!30548 (h!59222 (toList!5945 lm!2023)))) lambda!216524))))

(assert (= (and d!1506582 (not res!2001068)) b!4727839))

(assert (= (and b!4727839 res!2001069) b!4727840))

(declare-fun b_lambda!179825 () Bool)

(assert (=> (not b_lambda!179825) (not b!4727839)))

(assert (=> b!4727839 m!5668117))

(declare-fun m!5668167 () Bool)

(assert (=> b!4727840 m!5668167))

(assert (=> b!4727387 d!1506582))

(declare-fun d!1506584 () Bool)

(declare-fun e!2948751 () Bool)

(assert (=> d!1506584 e!2948751))

(declare-fun res!2001075 () Bool)

(assert (=> d!1506584 (=> (not res!2001075) (not e!2948751))))

(declare-fun lt!1892140 () ListMap!5309)

(assert (=> d!1506584 (= res!2001075 (contains!16220 lt!1892140 (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun lt!1892139 () List!52990)

(assert (=> d!1506584 (= lt!1892140 (ListMap!5310 lt!1892139))))

(declare-fun lt!1892141 () Unit!131113)

(declare-fun lt!1892138 () Unit!131113)

(assert (=> d!1506584 (= lt!1892141 lt!1892138)))

(assert (=> d!1506584 (= (getValueByKey!1971 lt!1892139 (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) (Some!12380 (_2!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1093 (List!52990 K!14220 V!14466) Unit!131113)

(assert (=> d!1506584 (= lt!1892138 (lemmaContainsTupThenGetReturnValue!1093 lt!1892139 (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (_2!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun insertNoDuplicatedKeys!601 (List!52990 K!14220 V!14466) List!52990)

(assert (=> d!1506584 (= lt!1892139 (insertNoDuplicatedKeys!601 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (_2!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(assert (=> d!1506584 (= (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) lt!1892140)))

(declare-fun b!4727846 () Bool)

(declare-fun res!2001076 () Bool)

(assert (=> b!4727846 (=> (not res!2001076) (not e!2948751))))

(assert (=> b!4727846 (= res!2001076 (= (getValueByKey!1971 (toList!5946 lt!1892140) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) (Some!12380 (_2!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))))

(declare-fun b!4727847 () Bool)

(assert (=> b!4727847 (= e!2948751 (contains!16222 (toList!5946 lt!1892140) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))

(assert (= (and d!1506584 res!2001075) b!4727846))

(assert (= (and b!4727846 res!2001076) b!4727847))

(declare-fun m!5668175 () Bool)

(assert (=> d!1506584 m!5668175))

(declare-fun m!5668177 () Bool)

(assert (=> d!1506584 m!5668177))

(declare-fun m!5668179 () Bool)

(assert (=> d!1506584 m!5668179))

(declare-fun m!5668181 () Bool)

(assert (=> d!1506584 m!5668181))

(declare-fun m!5668185 () Bool)

(assert (=> b!4727846 m!5668185))

(declare-fun m!5668189 () Bool)

(assert (=> b!4727847 m!5668189))

(assert (=> b!4727387 d!1506584))

(declare-fun b!4727858 () Bool)

(declare-fun e!2948761 () List!52993)

(assert (=> b!4727858 (= e!2948761 (getKeysList!959 (toList!5946 lt!1891853)))))

(declare-fun b!4727859 () Bool)

(declare-fun e!2948759 () Bool)

(assert (=> b!4727859 (= e!2948759 (contains!16224 (keys!18996 lt!1891853) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun b!4727860 () Bool)

(declare-fun e!2948762 () Bool)

(assert (=> b!4727860 (= e!2948762 e!2948759)))

(declare-fun res!2001085 () Bool)

(assert (=> b!4727860 (=> (not res!2001085) (not e!2948759))))

(assert (=> b!4727860 (= res!2001085 (isDefined!9635 (getValueByKey!1971 (toList!5946 lt!1891853) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))))

(declare-fun b!4727861 () Bool)

(assert (=> b!4727861 false))

(declare-fun lt!1892148 () Unit!131113)

(declare-fun lt!1892144 () Unit!131113)

(assert (=> b!4727861 (= lt!1892148 lt!1892144)))

(assert (=> b!4727861 (containsKey!3395 (toList!5946 lt!1891853) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))

(assert (=> b!4727861 (= lt!1892144 (lemmaInGetKeysListThenContainsKey!958 (toList!5946 lt!1891853) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun e!2948760 () Unit!131113)

(declare-fun Unit!131188 () Unit!131113)

(assert (=> b!4727861 (= e!2948760 Unit!131188)))

(declare-fun b!4727862 () Bool)

(declare-fun e!2948763 () Unit!131113)

(declare-fun lt!1892149 () Unit!131113)

(assert (=> b!4727862 (= e!2948763 lt!1892149)))

(declare-fun lt!1892150 () Unit!131113)

(assert (=> b!4727862 (= lt!1892150 (lemmaContainsKeyImpliesGetValueByKeyDefined!1862 (toList!5946 lt!1891853) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(assert (=> b!4727862 (isDefined!9635 (getValueByKey!1971 (toList!5946 lt!1891853) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun lt!1892146 () Unit!131113)

(assert (=> b!4727862 (= lt!1892146 lt!1892150)))

(assert (=> b!4727862 (= lt!1892149 (lemmaInListThenGetKeysListContains!954 (toList!5946 lt!1891853) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun call!330746 () Bool)

(assert (=> b!4727862 call!330746))

(declare-fun b!4727863 () Bool)

(declare-fun Unit!131189 () Unit!131113)

(assert (=> b!4727863 (= e!2948760 Unit!131189)))

(declare-fun b!4727864 () Bool)

(declare-fun e!2948764 () Bool)

(assert (=> b!4727864 (= e!2948764 (not (contains!16224 (keys!18996 lt!1891853) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))))

(declare-fun b!4727866 () Bool)

(assert (=> b!4727866 (= e!2948763 e!2948760)))

(declare-fun c!807425 () Bool)

(assert (=> b!4727866 (= c!807425 call!330746)))

(declare-fun bm!330741 () Bool)

(assert (=> bm!330741 (= call!330746 (contains!16224 e!2948761 (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun c!807427 () Bool)

(declare-fun c!807426 () Bool)

(assert (=> bm!330741 (= c!807427 c!807426)))

(declare-fun b!4727865 () Bool)

(assert (=> b!4727865 (= e!2948761 (keys!18996 lt!1891853))))

(declare-fun d!1506592 () Bool)

(assert (=> d!1506592 e!2948762))

(declare-fun res!2001083 () Bool)

(assert (=> d!1506592 (=> res!2001083 e!2948762)))

(assert (=> d!1506592 (= res!2001083 e!2948764)))

(declare-fun res!2001084 () Bool)

(assert (=> d!1506592 (=> (not res!2001084) (not e!2948764))))

(declare-fun lt!1892145 () Bool)

(assert (=> d!1506592 (= res!2001084 (not lt!1892145))))

(declare-fun lt!1892147 () Bool)

(assert (=> d!1506592 (= lt!1892145 lt!1892147)))

(declare-fun lt!1892151 () Unit!131113)

(assert (=> d!1506592 (= lt!1892151 e!2948763)))

(assert (=> d!1506592 (= c!807426 lt!1892147)))

(assert (=> d!1506592 (= lt!1892147 (containsKey!3395 (toList!5946 lt!1891853) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(assert (=> d!1506592 (= (contains!16220 lt!1891853 (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) lt!1892145)))

(assert (= (and d!1506592 c!807426) b!4727862))

(assert (= (and d!1506592 (not c!807426)) b!4727866))

(assert (= (and b!4727866 c!807425) b!4727861))

(assert (= (and b!4727866 (not c!807425)) b!4727863))

(assert (= (or b!4727862 b!4727866) bm!330741))

(assert (= (and bm!330741 c!807427) b!4727858))

(assert (= (and bm!330741 (not c!807427)) b!4727865))

(assert (= (and d!1506592 res!2001084) b!4727864))

(assert (= (and d!1506592 (not res!2001083)) b!4727860))

(assert (= (and b!4727860 res!2001085) b!4727859))

(declare-fun m!5668205 () Bool)

(assert (=> b!4727865 m!5668205))

(declare-fun m!5668207 () Bool)

(assert (=> bm!330741 m!5668207))

(declare-fun m!5668209 () Bool)

(assert (=> b!4727862 m!5668209))

(declare-fun m!5668211 () Bool)

(assert (=> b!4727862 m!5668211))

(assert (=> b!4727862 m!5668211))

(declare-fun m!5668213 () Bool)

(assert (=> b!4727862 m!5668213))

(declare-fun m!5668215 () Bool)

(assert (=> b!4727862 m!5668215))

(declare-fun m!5668217 () Bool)

(assert (=> b!4727858 m!5668217))

(assert (=> b!4727864 m!5668205))

(assert (=> b!4727864 m!5668205))

(declare-fun m!5668219 () Bool)

(assert (=> b!4727864 m!5668219))

(declare-fun m!5668221 () Bool)

(assert (=> b!4727861 m!5668221))

(declare-fun m!5668223 () Bool)

(assert (=> b!4727861 m!5668223))

(assert (=> b!4727860 m!5668211))

(assert (=> b!4727860 m!5668211))

(assert (=> b!4727860 m!5668213))

(assert (=> d!1506592 m!5668221))

(assert (=> b!4727859 m!5668205))

(assert (=> b!4727859 m!5668205))

(assert (=> b!4727859 m!5668219))

(assert (=> b!4727387 d!1506592))

(declare-fun bs!1118468 () Bool)

(declare-fun d!1506596 () Bool)

(assert (= bs!1118468 (and d!1506596 b!4727717)))

(declare-fun lambda!216596 () Int)

(assert (=> bs!1118468 (= (= lt!1891856 lt!1892069) (= lambda!216596 lambda!216576))))

(declare-fun bs!1118469 () Bool)

(assert (= bs!1118469 (and d!1506596 d!1506484)))

(assert (=> bs!1118469 (= (= lt!1891856 lt!1892054) (= lambda!216596 lambda!216577))))

(declare-fun bs!1118470 () Bool)

(assert (= bs!1118470 (and d!1506596 d!1506494)))

(assert (=> bs!1118470 (= (= lt!1891856 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216596 lambda!216581))))

(declare-fun bs!1118472 () Bool)

(assert (= bs!1118472 (and d!1506596 b!4727387)))

(assert (=> bs!1118472 (= lambda!216596 lambda!216524)))

(assert (=> bs!1118468 (= (= lt!1891856 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (= lambda!216596 lambda!216575))))

(declare-fun bs!1118474 () Bool)

(assert (= bs!1118474 (and d!1506596 b!4727835)))

(assert (=> bs!1118474 (= (= lt!1891856 lt!1892124) (= lambda!216596 lambda!216590))))

(assert (=> bs!1118472 (= (= lt!1891856 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216596 lambda!216523))))

(declare-fun bs!1118476 () Bool)

(assert (= bs!1118476 (and d!1506596 b!4727384)))

(assert (=> bs!1118476 (= (= lt!1891856 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) (= lambda!216596 lambda!216522))))

(declare-fun bs!1118478 () Bool)

(assert (= bs!1118478 (and d!1506596 d!1506298)))

(assert (=> bs!1118478 (not (= lambda!216596 lambda!216455))))

(declare-fun bs!1118480 () Bool)

(assert (= bs!1118480 (and d!1506596 d!1506408)))

(assert (=> bs!1118480 (not (= lambda!216596 lambda!216554))))

(assert (=> bs!1118474 (= (= lt!1891856 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) (= lambda!216596 lambda!216589))))

(declare-fun bs!1118481 () Bool)

(assert (= bs!1118481 (and d!1506596 b!4727832)))

(assert (=> bs!1118481 (= (= lt!1891856 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) (= lambda!216596 lambda!216588))))

(declare-fun bs!1118482 () Bool)

(assert (= bs!1118482 (and d!1506596 d!1506306)))

(assert (=> bs!1118482 (= (= lt!1891856 lt!1891841) (= lambda!216596 lambda!216525))))

(declare-fun bs!1118483 () Bool)

(assert (= bs!1118483 (and d!1506596 d!1506578)))

(assert (=> bs!1118483 (= (= lt!1891856 lt!1892109) (= lambda!216596 lambda!216591))))

(declare-fun bs!1118484 () Bool)

(assert (= bs!1118484 (and d!1506596 b!4727714)))

(assert (=> bs!1118484 (= (= lt!1891856 (extractMap!2054 (t!360267 (t!360267 (toList!5945 lm!2023))))) (= lambda!216596 lambda!216574))))

(assert (=> d!1506596 true))

(assert (=> d!1506596 (forall!11618 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))) lambda!216596)))

(declare-fun lt!1892200 () Unit!131113)

(declare-fun choose!33406 (ListMap!5309 ListMap!5309 K!14220 V!14466) Unit!131113)

(assert (=> d!1506596 (= lt!1892200 (choose!33406 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) lt!1891856 (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (_2!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(assert (=> d!1506596 (forall!11618 (toList!5946 (+!2277 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (tuple2!54507 (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (_2!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))) lambda!216596)))

(assert (=> d!1506596 (= (addForallContainsKeyThenBeforeAdding!804 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) lt!1891856 (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (_2!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) lt!1892200)))

(declare-fun bs!1118490 () Bool)

(assert (= bs!1118490 d!1506596))

(declare-fun m!5668295 () Bool)

(assert (=> bs!1118490 m!5668295))

(assert (=> bs!1118490 m!5667421))

(declare-fun m!5668297 () Bool)

(assert (=> bs!1118490 m!5668297))

(assert (=> bs!1118490 m!5667421))

(declare-fun m!5668299 () Bool)

(assert (=> bs!1118490 m!5668299))

(declare-fun m!5668301 () Bool)

(assert (=> bs!1118490 m!5668301))

(assert (=> b!4727387 d!1506596))

(declare-fun b!4727907 () Bool)

(declare-fun e!2948796 () List!52993)

(assert (=> b!4727907 (= e!2948796 (getKeysList!959 (toList!5946 lt!1891856)))))

(declare-fun b!4727908 () Bool)

(declare-fun e!2948794 () Bool)

(assert (=> b!4727908 (= e!2948794 (contains!16224 (keys!18996 lt!1891856) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun b!4727909 () Bool)

(declare-fun e!2948797 () Bool)

(assert (=> b!4727909 (= e!2948797 e!2948794)))

(declare-fun res!2001109 () Bool)

(assert (=> b!4727909 (=> (not res!2001109) (not e!2948794))))

(assert (=> b!4727909 (= res!2001109 (isDefined!9635 (getValueByKey!1971 (toList!5946 lt!1891856) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))))

(declare-fun b!4727910 () Bool)

(assert (=> b!4727910 false))

(declare-fun lt!1892205 () Unit!131113)

(declare-fun lt!1892201 () Unit!131113)

(assert (=> b!4727910 (= lt!1892205 lt!1892201)))

(assert (=> b!4727910 (containsKey!3395 (toList!5946 lt!1891856) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))

(assert (=> b!4727910 (= lt!1892201 (lemmaInGetKeysListThenContainsKey!958 (toList!5946 lt!1891856) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun e!2948795 () Unit!131113)

(declare-fun Unit!131190 () Unit!131113)

(assert (=> b!4727910 (= e!2948795 Unit!131190)))

(declare-fun b!4727911 () Bool)

(declare-fun e!2948798 () Unit!131113)

(declare-fun lt!1892206 () Unit!131113)

(assert (=> b!4727911 (= e!2948798 lt!1892206)))

(declare-fun lt!1892207 () Unit!131113)

(assert (=> b!4727911 (= lt!1892207 (lemmaContainsKeyImpliesGetValueByKeyDefined!1862 (toList!5946 lt!1891856) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(assert (=> b!4727911 (isDefined!9635 (getValueByKey!1971 (toList!5946 lt!1891856) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun lt!1892203 () Unit!131113)

(assert (=> b!4727911 (= lt!1892203 lt!1892207)))

(assert (=> b!4727911 (= lt!1892206 (lemmaInListThenGetKeysListContains!954 (toList!5946 lt!1891856) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun call!330752 () Bool)

(assert (=> b!4727911 call!330752))

(declare-fun b!4727912 () Bool)

(declare-fun Unit!131191 () Unit!131113)

(assert (=> b!4727912 (= e!2948795 Unit!131191)))

(declare-fun b!4727913 () Bool)

(declare-fun e!2948799 () Bool)

(assert (=> b!4727913 (= e!2948799 (not (contains!16224 (keys!18996 lt!1891856) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))))))))

(declare-fun b!4727915 () Bool)

(assert (=> b!4727915 (= e!2948798 e!2948795)))

(declare-fun c!807437 () Bool)

(assert (=> b!4727915 (= c!807437 call!330752)))

(declare-fun bm!330747 () Bool)

(assert (=> bm!330747 (= call!330752 (contains!16224 e!2948796 (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun c!807439 () Bool)

(declare-fun c!807438 () Bool)

(assert (=> bm!330747 (= c!807439 c!807438)))

(declare-fun b!4727914 () Bool)

(assert (=> b!4727914 (= e!2948796 (keys!18996 lt!1891856))))

(declare-fun d!1506620 () Bool)

(assert (=> d!1506620 e!2948797))

(declare-fun res!2001107 () Bool)

(assert (=> d!1506620 (=> res!2001107 e!2948797)))

(assert (=> d!1506620 (= res!2001107 e!2948799)))

(declare-fun res!2001108 () Bool)

(assert (=> d!1506620 (=> (not res!2001108) (not e!2948799))))

(declare-fun lt!1892202 () Bool)

(assert (=> d!1506620 (= res!2001108 (not lt!1892202))))

(declare-fun lt!1892204 () Bool)

(assert (=> d!1506620 (= lt!1892202 lt!1892204)))

(declare-fun lt!1892208 () Unit!131113)

(assert (=> d!1506620 (= lt!1892208 e!2948798)))

(assert (=> d!1506620 (= c!807438 lt!1892204)))

(assert (=> d!1506620 (= lt!1892204 (containsKey!3395 (toList!5946 lt!1891856) (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(assert (=> d!1506620 (= (contains!16220 lt!1891856 (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))) lt!1892202)))

(assert (= (and d!1506620 c!807438) b!4727911))

(assert (= (and d!1506620 (not c!807438)) b!4727915))

(assert (= (and b!4727915 c!807437) b!4727910))

(assert (= (and b!4727915 (not c!807437)) b!4727912))

(assert (= (or b!4727911 b!4727915) bm!330747))

(assert (= (and bm!330747 c!807439) b!4727907))

(assert (= (and bm!330747 (not c!807439)) b!4727914))

(assert (= (and d!1506620 res!2001108) b!4727913))

(assert (= (and d!1506620 (not res!2001107)) b!4727909))

(assert (= (and b!4727909 res!2001109) b!4727908))

(declare-fun m!5668303 () Bool)

(assert (=> b!4727914 m!5668303))

(declare-fun m!5668305 () Bool)

(assert (=> bm!330747 m!5668305))

(declare-fun m!5668307 () Bool)

(assert (=> b!4727911 m!5668307))

(declare-fun m!5668309 () Bool)

(assert (=> b!4727911 m!5668309))

(assert (=> b!4727911 m!5668309))

(declare-fun m!5668311 () Bool)

(assert (=> b!4727911 m!5668311))

(declare-fun m!5668313 () Bool)

(assert (=> b!4727911 m!5668313))

(declare-fun m!5668315 () Bool)

(assert (=> b!4727907 m!5668315))

(assert (=> b!4727913 m!5668303))

(assert (=> b!4727913 m!5668303))

(declare-fun m!5668317 () Bool)

(assert (=> b!4727913 m!5668317))

(declare-fun m!5668319 () Bool)

(assert (=> b!4727910 m!5668319))

(declare-fun m!5668321 () Bool)

(assert (=> b!4727910 m!5668321))

(assert (=> b!4727909 m!5668309))

(assert (=> b!4727909 m!5668309))

(assert (=> b!4727909 m!5668311))

(assert (=> d!1506620 m!5668319))

(assert (=> b!4727908 m!5668303))

(assert (=> b!4727908 m!5668303))

(assert (=> b!4727908 m!5668317))

(assert (=> b!4727387 d!1506620))

(declare-fun d!1506622 () Bool)

(assert (=> d!1506622 (isDefined!9634 (getValueByKey!1969 (toList!5945 lm!2023) lt!1891704))))

(declare-fun lt!1892211 () Unit!131113)

(declare-fun choose!33409 (List!52991 (_ BitVec 64)) Unit!131113)

(assert (=> d!1506622 (= lt!1892211 (choose!33409 (toList!5945 lm!2023) lt!1891704))))

(declare-fun e!2948802 () Bool)

(assert (=> d!1506622 e!2948802))

(declare-fun res!2001112 () Bool)

(assert (=> d!1506622 (=> (not res!2001112) (not e!2948802))))

(assert (=> d!1506622 (= res!2001112 (isStrictlySorted!757 (toList!5945 lm!2023)))))

(assert (=> d!1506622 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1860 (toList!5945 lm!2023) lt!1891704) lt!1892211)))

(declare-fun b!4727918 () Bool)

(assert (=> b!4727918 (= e!2948802 (containsKey!3394 (toList!5945 lm!2023) lt!1891704))))

(assert (= (and d!1506622 res!2001112) b!4727918))

(assert (=> d!1506622 m!5667695))

(assert (=> d!1506622 m!5667695))

(assert (=> d!1506622 m!5667773))

(declare-fun m!5668331 () Bool)

(assert (=> d!1506622 m!5668331))

(assert (=> d!1506622 m!5667809))

(assert (=> b!4727918 m!5667769))

(assert (=> b!4727565 d!1506622))

(assert (=> b!4727565 d!1506568))

(assert (=> b!4727565 d!1506436))

(declare-fun d!1506624 () Bool)

(declare-fun res!2001113 () Bool)

(declare-fun e!2948803 () Bool)

(assert (=> d!1506624 (=> res!2001113 e!2948803)))

(assert (=> d!1506624 (= res!2001113 (and ((_ is Cons!52866) (t!360266 newBucket!218)) (= (_1!30547 (h!59221 (t!360266 newBucket!218))) (_1!30547 (h!59221 newBucket!218)))))))

(assert (=> d!1506624 (= (containsKey!3391 (t!360266 newBucket!218) (_1!30547 (h!59221 newBucket!218))) e!2948803)))

(declare-fun b!4727919 () Bool)

(declare-fun e!2948804 () Bool)

(assert (=> b!4727919 (= e!2948803 e!2948804)))

(declare-fun res!2001114 () Bool)

(assert (=> b!4727919 (=> (not res!2001114) (not e!2948804))))

(assert (=> b!4727919 (= res!2001114 ((_ is Cons!52866) (t!360266 newBucket!218)))))

(declare-fun b!4727920 () Bool)

(assert (=> b!4727920 (= e!2948804 (containsKey!3391 (t!360266 (t!360266 newBucket!218)) (_1!30547 (h!59221 newBucket!218))))))

(assert (= (and d!1506624 (not res!2001113)) b!4727919))

(assert (= (and b!4727919 res!2001114) b!4727920))

(declare-fun m!5668351 () Bool)

(assert (=> b!4727920 m!5668351))

(assert (=> b!4727609 d!1506624))

(assert (=> b!4727594 d!1506554))

(assert (=> b!4727594 d!1506528))

(assert (=> b!4727385 d!1506576))

(declare-fun d!1506626 () Bool)

(assert (=> d!1506626 (isDefined!9635 (getValueByKey!1971 (toList!5946 lt!1891700) key!4653))))

(declare-fun lt!1892214 () Unit!131113)

(declare-fun choose!33410 (List!52990 K!14220) Unit!131113)

(assert (=> d!1506626 (= lt!1892214 (choose!33410 (toList!5946 lt!1891700) key!4653))))

(assert (=> d!1506626 (invariantList!1519 (toList!5946 lt!1891700))))

(assert (=> d!1506626 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1862 (toList!5946 lt!1891700) key!4653) lt!1892214)))

(declare-fun bs!1118499 () Bool)

(assert (= bs!1118499 d!1506626))

(assert (=> bs!1118499 m!5667785))

(assert (=> bs!1118499 m!5667785))

(assert (=> bs!1118499 m!5667787))

(declare-fun m!5668363 () Bool)

(assert (=> bs!1118499 m!5668363))

(assert (=> bs!1118499 m!5667847))

(assert (=> b!4727592 d!1506626))

(assert (=> b!4727592 d!1506438))

(assert (=> b!4727592 d!1506440))

(declare-fun d!1506632 () Bool)

(assert (=> d!1506632 (contains!16224 (getKeysList!959 (toList!5946 lt!1891700)) key!4653)))

(declare-fun lt!1892217 () Unit!131113)

(declare-fun choose!33411 (List!52990 K!14220) Unit!131113)

(assert (=> d!1506632 (= lt!1892217 (choose!33411 (toList!5946 lt!1891700) key!4653))))

(assert (=> d!1506632 (invariantList!1519 (toList!5946 lt!1891700))))

(assert (=> d!1506632 (= (lemmaInListThenGetKeysListContains!954 (toList!5946 lt!1891700) key!4653) lt!1892217)))

(declare-fun bs!1118500 () Bool)

(assert (= bs!1118500 d!1506632))

(assert (=> bs!1118500 m!5667791))

(assert (=> bs!1118500 m!5667791))

(declare-fun m!5668365 () Bool)

(assert (=> bs!1118500 m!5668365))

(declare-fun m!5668367 () Bool)

(assert (=> bs!1118500 m!5668367))

(assert (=> bs!1118500 m!5667847))

(assert (=> b!4727592 d!1506632))

(declare-fun b!4727923 () Bool)

(declare-fun e!2948809 () List!52993)

(assert (=> b!4727923 (= e!2948809 (getKeysList!959 (toList!5946 (extractMap!2054 (toList!5945 lm!2023)))))))

(declare-fun b!4727924 () Bool)

(declare-fun e!2948807 () Bool)

(assert (=> b!4727924 (= e!2948807 (contains!16224 (keys!18996 (extractMap!2054 (toList!5945 lm!2023))) key!4653))))

(declare-fun b!4727925 () Bool)

(declare-fun e!2948810 () Bool)

(assert (=> b!4727925 (= e!2948810 e!2948807)))

(declare-fun res!2001119 () Bool)

(assert (=> b!4727925 (=> (not res!2001119) (not e!2948807))))

(assert (=> b!4727925 (= res!2001119 (isDefined!9635 (getValueByKey!1971 (toList!5946 (extractMap!2054 (toList!5945 lm!2023))) key!4653)))))

(declare-fun b!4727926 () Bool)

(assert (=> b!4727926 false))

(declare-fun lt!1892222 () Unit!131113)

(declare-fun lt!1892218 () Unit!131113)

(assert (=> b!4727926 (= lt!1892222 lt!1892218)))

(assert (=> b!4727926 (containsKey!3395 (toList!5946 (extractMap!2054 (toList!5945 lm!2023))) key!4653)))

(assert (=> b!4727926 (= lt!1892218 (lemmaInGetKeysListThenContainsKey!958 (toList!5946 (extractMap!2054 (toList!5945 lm!2023))) key!4653))))

(declare-fun e!2948808 () Unit!131113)

(declare-fun Unit!131192 () Unit!131113)

(assert (=> b!4727926 (= e!2948808 Unit!131192)))

(declare-fun b!4727927 () Bool)

(declare-fun e!2948811 () Unit!131113)

(declare-fun lt!1892223 () Unit!131113)

(assert (=> b!4727927 (= e!2948811 lt!1892223)))

(declare-fun lt!1892224 () Unit!131113)

(assert (=> b!4727927 (= lt!1892224 (lemmaContainsKeyImpliesGetValueByKeyDefined!1862 (toList!5946 (extractMap!2054 (toList!5945 lm!2023))) key!4653))))

(assert (=> b!4727927 (isDefined!9635 (getValueByKey!1971 (toList!5946 (extractMap!2054 (toList!5945 lm!2023))) key!4653))))

(declare-fun lt!1892220 () Unit!131113)

(assert (=> b!4727927 (= lt!1892220 lt!1892224)))

(assert (=> b!4727927 (= lt!1892223 (lemmaInListThenGetKeysListContains!954 (toList!5946 (extractMap!2054 (toList!5945 lm!2023))) key!4653))))

(declare-fun call!330753 () Bool)

(assert (=> b!4727927 call!330753))

(declare-fun b!4727928 () Bool)

(declare-fun Unit!131193 () Unit!131113)

(assert (=> b!4727928 (= e!2948808 Unit!131193)))

(declare-fun b!4727929 () Bool)

(declare-fun e!2948812 () Bool)

(assert (=> b!4727929 (= e!2948812 (not (contains!16224 (keys!18996 (extractMap!2054 (toList!5945 lm!2023))) key!4653)))))

(declare-fun b!4727931 () Bool)

(assert (=> b!4727931 (= e!2948811 e!2948808)))

(declare-fun c!807440 () Bool)

(assert (=> b!4727931 (= c!807440 call!330753)))

(declare-fun bm!330748 () Bool)

(assert (=> bm!330748 (= call!330753 (contains!16224 e!2948809 key!4653))))

(declare-fun c!807442 () Bool)

(declare-fun c!807441 () Bool)

(assert (=> bm!330748 (= c!807442 c!807441)))

(declare-fun b!4727930 () Bool)

(assert (=> b!4727930 (= e!2948809 (keys!18996 (extractMap!2054 (toList!5945 lm!2023))))))

(declare-fun d!1506634 () Bool)

(assert (=> d!1506634 e!2948810))

(declare-fun res!2001117 () Bool)

(assert (=> d!1506634 (=> res!2001117 e!2948810)))

(assert (=> d!1506634 (= res!2001117 e!2948812)))

(declare-fun res!2001118 () Bool)

(assert (=> d!1506634 (=> (not res!2001118) (not e!2948812))))

(declare-fun lt!1892219 () Bool)

(assert (=> d!1506634 (= res!2001118 (not lt!1892219))))

(declare-fun lt!1892221 () Bool)

(assert (=> d!1506634 (= lt!1892219 lt!1892221)))

(declare-fun lt!1892225 () Unit!131113)

(assert (=> d!1506634 (= lt!1892225 e!2948811)))

(assert (=> d!1506634 (= c!807441 lt!1892221)))

(assert (=> d!1506634 (= lt!1892221 (containsKey!3395 (toList!5946 (extractMap!2054 (toList!5945 lm!2023))) key!4653))))

(assert (=> d!1506634 (= (contains!16220 (extractMap!2054 (toList!5945 lm!2023)) key!4653) lt!1892219)))

(assert (= (and d!1506634 c!807441) b!4727927))

(assert (= (and d!1506634 (not c!807441)) b!4727931))

(assert (= (and b!4727931 c!807440) b!4727926))

(assert (= (and b!4727931 (not c!807440)) b!4727928))

(assert (= (or b!4727927 b!4727931) bm!330748))

(assert (= (and bm!330748 c!807442) b!4727923))

(assert (= (and bm!330748 (not c!807442)) b!4727930))

(assert (= (and d!1506634 res!2001118) b!4727929))

(assert (= (and d!1506634 (not res!2001117)) b!4727925))

(assert (= (and b!4727925 res!2001119) b!4727924))

(assert (=> b!4727930 m!5667451))

(declare-fun m!5668369 () Bool)

(assert (=> b!4727930 m!5668369))

(declare-fun m!5668371 () Bool)

(assert (=> bm!330748 m!5668371))

(declare-fun m!5668373 () Bool)

(assert (=> b!4727927 m!5668373))

(declare-fun m!5668375 () Bool)

(assert (=> b!4727927 m!5668375))

(assert (=> b!4727927 m!5668375))

(declare-fun m!5668377 () Bool)

(assert (=> b!4727927 m!5668377))

(declare-fun m!5668379 () Bool)

(assert (=> b!4727927 m!5668379))

(declare-fun m!5668381 () Bool)

(assert (=> b!4727923 m!5668381))

(assert (=> b!4727929 m!5667451))

(assert (=> b!4727929 m!5668369))

(assert (=> b!4727929 m!5668369))

(declare-fun m!5668383 () Bool)

(assert (=> b!4727929 m!5668383))

(declare-fun m!5668385 () Bool)

(assert (=> b!4727926 m!5668385))

(declare-fun m!5668387 () Bool)

(assert (=> b!4727926 m!5668387))

(assert (=> b!4727925 m!5668375))

(assert (=> b!4727925 m!5668375))

(assert (=> b!4727925 m!5668377))

(assert (=> d!1506634 m!5668385))

(assert (=> b!4727924 m!5667451))

(assert (=> b!4727924 m!5668369))

(assert (=> b!4727924 m!5668369))

(assert (=> b!4727924 m!5668383))

(assert (=> b!4727548 d!1506634))

(assert (=> b!4727548 d!1506414))

(declare-fun d!1506636 () Bool)

(declare-fun c!807443 () Bool)

(assert (=> d!1506636 (= c!807443 (and ((_ is Cons!52867) (toList!5945 lm!2023)) (= (_1!30548 (h!59222 (toList!5945 lm!2023))) lt!1891963)))))

(declare-fun e!2948813 () Option!12379)

(assert (=> d!1506636 (= (getValueByKey!1969 (toList!5945 lm!2023) lt!1891963) e!2948813)))

(declare-fun b!4727935 () Bool)

(declare-fun e!2948814 () Option!12379)

(assert (=> b!4727935 (= e!2948814 None!12378)))

(declare-fun b!4727934 () Bool)

(assert (=> b!4727934 (= e!2948814 (getValueByKey!1969 (t!360267 (toList!5945 lm!2023)) lt!1891963))))

(declare-fun b!4727933 () Bool)

(assert (=> b!4727933 (= e!2948813 e!2948814)))

(declare-fun c!807444 () Bool)

(assert (=> b!4727933 (= c!807444 (and ((_ is Cons!52867) (toList!5945 lm!2023)) (not (= (_1!30548 (h!59222 (toList!5945 lm!2023))) lt!1891963))))))

(declare-fun b!4727932 () Bool)

(assert (=> b!4727932 (= e!2948813 (Some!12378 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))

(assert (= (and d!1506636 c!807443) b!4727932))

(assert (= (and d!1506636 (not c!807443)) b!4727933))

(assert (= (and b!4727933 c!807444) b!4727934))

(assert (= (and b!4727933 (not c!807444)) b!4727935))

(declare-fun m!5668389 () Bool)

(assert (=> b!4727934 m!5668389))

(assert (=> b!4727550 d!1506636))

(declare-fun d!1506638 () Bool)

(declare-fun res!2001120 () Bool)

(declare-fun e!2948815 () Bool)

(assert (=> d!1506638 (=> res!2001120 e!2948815)))

(assert (=> d!1506638 (= res!2001120 (or ((_ is Nil!52867) (toList!5945 lm!2023)) ((_ is Nil!52867) (t!360267 (toList!5945 lm!2023)))))))

(assert (=> d!1506638 (= (isStrictlySorted!757 (toList!5945 lm!2023)) e!2948815)))

(declare-fun b!4727936 () Bool)

(declare-fun e!2948816 () Bool)

(assert (=> b!4727936 (= e!2948815 e!2948816)))

(declare-fun res!2001121 () Bool)

(assert (=> b!4727936 (=> (not res!2001121) (not e!2948816))))

(assert (=> b!4727936 (= res!2001121 (bvslt (_1!30548 (h!59222 (toList!5945 lm!2023))) (_1!30548 (h!59222 (t!360267 (toList!5945 lm!2023))))))))

(declare-fun b!4727937 () Bool)

(assert (=> b!4727937 (= e!2948816 (isStrictlySorted!757 (t!360267 (toList!5945 lm!2023))))))

(assert (= (and d!1506638 (not res!2001120)) b!4727936))

(assert (= (and b!4727936 res!2001121) b!4727937))

(declare-fun m!5668391 () Bool)

(assert (=> b!4727937 m!5668391))

(assert (=> d!1506420 d!1506638))

(declare-fun tp!1348664 () Bool)

(declare-fun e!2948817 () Bool)

(declare-fun b!4727938 () Bool)

(assert (=> b!4727938 (= e!2948817 (and tp_is_empty!31405 tp_is_empty!31407 tp!1348664))))

(assert (=> b!4727625 (= tp!1348663 e!2948817)))

(assert (= (and b!4727625 ((_ is Cons!52866) (t!360266 (t!360266 newBucket!218)))) b!4727938))

(declare-fun e!2948818 () Bool)

(declare-fun tp!1348665 () Bool)

(declare-fun b!4727939 () Bool)

(assert (=> b!4727939 (= e!2948818 (and tp_is_empty!31405 tp_is_empty!31407 tp!1348665))))

(assert (=> b!4727619 (= tp!1348658 e!2948818)))

(assert (= (and b!4727619 ((_ is Cons!52866) (_2!30548 (h!59222 (toList!5945 lm!2023))))) b!4727939))

(declare-fun b!4727940 () Bool)

(declare-fun e!2948819 () Bool)

(declare-fun tp!1348666 () Bool)

(declare-fun tp!1348667 () Bool)

(assert (=> b!4727940 (= e!2948819 (and tp!1348666 tp!1348667))))

(assert (=> b!4727619 (= tp!1348659 e!2948819)))

(assert (= (and b!4727619 ((_ is Cons!52867) (t!360267 (toList!5945 lm!2023)))) b!4727940))

(declare-fun e!2948820 () Bool)

(declare-fun tp!1348668 () Bool)

(declare-fun b!4727941 () Bool)

(assert (=> b!4727941 (= e!2948820 (and tp_is_empty!31405 tp_is_empty!31407 tp!1348668))))

(assert (=> b!4727624 (= tp!1348662 e!2948820)))

(assert (= (and b!4727624 ((_ is Cons!52866) (t!360266 (t!360266 oldBucket!34)))) b!4727941))

(declare-fun b_lambda!179833 () Bool)

(assert (= b_lambda!179817 (or b!4727387 b_lambda!179833)))

(declare-fun bs!1118501 () Bool)

(declare-fun d!1506640 () Bool)

(assert (= bs!1118501 (and d!1506640 b!4727387)))

(assert (=> bs!1118501 (= (dynLambda!21835 lambda!216524 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (contains!16220 lt!1891856 (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(assert (=> bs!1118501 m!5667579))

(assert (=> d!1506572 d!1506640))

(declare-fun b_lambda!179835 () Bool)

(assert (= b_lambda!179801 (or d!1506306 b_lambda!179835)))

(declare-fun bs!1118502 () Bool)

(declare-fun d!1506642 () Bool)

(assert (= bs!1118502 (and d!1506642 d!1506306)))

(assert (=> bs!1118502 (= (dynLambda!21835 lambda!216525 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023))))) (contains!16220 lt!1891841 (_1!30547 (h!59221 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))))

(declare-fun m!5668393 () Bool)

(assert (=> bs!1118502 m!5668393))

(assert (=> b!4727728 d!1506642))

(declare-fun b_lambda!179837 () Bool)

(assert (= b_lambda!179791 (or d!1506384 b_lambda!179837)))

(declare-fun bs!1118503 () Bool)

(declare-fun d!1506644 () Bool)

(assert (= bs!1118503 (and d!1506644 d!1506384)))

(assert (=> bs!1118503 (= (dynLambda!21834 lambda!216553 (h!59222 (toList!5945 lm!2023))) (noDuplicateKeys!2028 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))

(assert (=> bs!1118503 m!5667557))

(assert (=> b!4727652 d!1506644))

(declare-fun b_lambda!179839 () Bool)

(assert (= b_lambda!179807 (or d!1506326 b_lambda!179839)))

(declare-fun bs!1118504 () Bool)

(declare-fun d!1506646 () Bool)

(assert (= bs!1118504 (and d!1506646 d!1506326)))

(assert (=> bs!1118504 (= (dynLambda!21834 lambda!216534 (h!59222 (t!360267 (toList!5945 lm!2023)))) (noDuplicateKeys!2028 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023))))))))

(assert (=> bs!1118504 m!5667919))

(assert (=> b!4727807 d!1506646))

(declare-fun b_lambda!179841 () Bool)

(assert (= b_lambda!179815 (or d!1506410 b_lambda!179841)))

(declare-fun bs!1118505 () Bool)

(declare-fun d!1506648 () Bool)

(assert (= bs!1118505 (and d!1506648 d!1506410)))

(assert (=> bs!1118505 (= (dynLambda!21834 lambda!216557 (h!59222 (toList!5945 lm!2023))) (allKeysSameHash!1854 (_2!30548 (h!59222 (toList!5945 lm!2023))) (_1!30548 (h!59222 (toList!5945 lm!2023))) hashF!1323))))

(declare-fun m!5668395 () Bool)

(assert (=> bs!1118505 m!5668395))

(assert (=> b!4727823 d!1506648))

(declare-fun b_lambda!179843 () Bool)

(assert (= b_lambda!179809 (or start!481432 b_lambda!179843)))

(assert (=> d!1506556 d!1506432))

(declare-fun b_lambda!179845 () Bool)

(assert (= b_lambda!179811 (or d!1506298 b_lambda!179845)))

(declare-fun bs!1118506 () Bool)

(declare-fun d!1506650 () Bool)

(assert (= bs!1118506 (and d!1506650 d!1506298)))

(assert (=> bs!1118506 (= (dynLambda!21835 lambda!216455 (h!59221 oldBucket!34)) (= (hash!4406 hashF!1323 (_1!30547 (h!59221 oldBucket!34))) hash!405))))

(declare-fun m!5668397 () Bool)

(assert (=> bs!1118506 m!5668397))

(assert (=> b!4727819 d!1506650))

(declare-fun b_lambda!179847 () Bool)

(assert (= b_lambda!179819 (or b!4727387 b_lambda!179847)))

(declare-fun bs!1118507 () Bool)

(declare-fun d!1506652 () Bool)

(assert (= bs!1118507 (and d!1506652 b!4727387)))

(assert (=> bs!1118507 (= (dynLambda!21835 lambda!216524 (h!59221 (toList!5946 lt!1891853))) (contains!16220 lt!1891856 (_1!30547 (h!59221 (toList!5946 lt!1891853)))))))

(declare-fun m!5668399 () Bool)

(assert (=> bs!1118507 m!5668399))

(assert (=> b!4727828 d!1506652))

(declare-fun b_lambda!179849 () Bool)

(assert (= b_lambda!179795 (or d!1506414 b_lambda!179849)))

(declare-fun bs!1118508 () Bool)

(declare-fun d!1506654 () Bool)

(assert (= bs!1118508 (and d!1506654 d!1506414)))

(assert (=> bs!1118508 (= (dynLambda!21834 lambda!216558 (h!59222 (toList!5945 lm!2023))) (noDuplicateKeys!2028 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))

(assert (=> bs!1118508 m!5667557))

(assert (=> b!4727708 d!1506654))

(declare-fun b_lambda!179851 () Bool)

(assert (= b_lambda!179823 (or b!4727387 b_lambda!179851)))

(declare-fun bs!1118509 () Bool)

(declare-fun d!1506656 () Bool)

(assert (= bs!1118509 (and d!1506656 b!4727387)))

(assert (=> bs!1118509 (= (dynLambda!21835 lambda!216523 (h!59221 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))))) (contains!16220 (extractMap!2054 (t!360267 (toList!5945 lm!2023))) (_1!30547 (h!59221 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023))))))))))

(assert (=> bs!1118509 m!5667421))

(declare-fun m!5668401 () Bool)

(assert (=> bs!1118509 m!5668401))

(assert (=> b!4727837 d!1506656))

(declare-fun b_lambda!179853 () Bool)

(assert (= b_lambda!179789 (or start!481432 b_lambda!179853)))

(declare-fun bs!1118510 () Bool)

(declare-fun d!1506658 () Bool)

(assert (= bs!1118510 (and d!1506658 start!481432)))

(assert (=> bs!1118510 (= (dynLambda!21834 lambda!216452 (h!59222 (t!360267 (toList!5945 lm!2023)))) (noDuplicateKeys!2028 (_2!30548 (h!59222 (t!360267 (toList!5945 lm!2023))))))))

(assert (=> bs!1118510 m!5667919))

(assert (=> b!4727650 d!1506658))

(declare-fun b_lambda!179855 () Bool)

(assert (= b_lambda!179825 (or b!4727387 b_lambda!179855)))

(assert (=> b!4727839 d!1506640))

(declare-fun b_lambda!179857 () Bool)

(assert (= b_lambda!179805 (or d!1506384 b_lambda!179857)))

(declare-fun bs!1118511 () Bool)

(declare-fun d!1506660 () Bool)

(assert (= bs!1118511 (and d!1506660 d!1506384)))

(assert (=> bs!1118511 (= (dynLambda!21834 lambda!216553 (tuple2!54509 (hash!4406 hashF!1323 key!4653) (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653)))) (noDuplicateKeys!2028 (_2!30548 (tuple2!54509 (hash!4406 hashF!1323 key!4653) (apply!12453 lm!2023 (hash!4406 hashF!1323 key!4653))))))))

(declare-fun m!5668403 () Bool)

(assert (=> bs!1118511 m!5668403))

(assert (=> d!1506520 d!1506660))

(declare-fun b_lambda!179859 () Bool)

(assert (= b_lambda!179821 (or b!4727387 b_lambda!179859)))

(declare-fun bs!1118512 () Bool)

(declare-fun d!1506662 () Bool)

(assert (= bs!1118512 (and d!1506662 b!4727387)))

(assert (=> bs!1118512 (= (dynLambda!21835 lambda!216524 (h!59221 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))))) (contains!16220 lt!1891856 (_1!30547 (h!59221 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023))))))))))

(declare-fun m!5668405 () Bool)

(assert (=> bs!1118512 m!5668405))

(assert (=> b!4727830 d!1506662))

(declare-fun b_lambda!179861 () Bool)

(assert (= b_lambda!179797 (or d!1506306 b_lambda!179861)))

(declare-fun bs!1118513 () Bool)

(declare-fun d!1506664 () Bool)

(assert (= bs!1118513 (and d!1506664 d!1506306)))

(assert (=> bs!1118513 (= (dynLambda!21835 lambda!216525 (h!59221 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023)))))) (contains!16220 lt!1891841 (_1!30547 (h!59221 (toList!5946 (extractMap!2054 (t!360267 (toList!5945 lm!2023))))))))))

(declare-fun m!5668407 () Bool)

(assert (=> bs!1118513 m!5668407))

(assert (=> b!4727712 d!1506664))

(declare-fun b_lambda!179863 () Bool)

(assert (= b_lambda!179793 (or d!1506408 b_lambda!179863)))

(declare-fun bs!1118514 () Bool)

(declare-fun d!1506666 () Bool)

(assert (= bs!1118514 (and d!1506666 d!1506408)))

(assert (=> bs!1118514 (= (dynLambda!21835 lambda!216554 (h!59221 newBucket!218)) (= (hash!4406 hashF!1323 (_1!30547 (h!59221 newBucket!218))) hash!405))))

(declare-fun m!5668409 () Bool)

(assert (=> bs!1118514 m!5668409))

(assert (=> b!4727687 d!1506666))

(declare-fun b_lambda!179865 () Bool)

(assert (= b_lambda!179799 (or d!1506380 b_lambda!179865)))

(declare-fun bs!1118515 () Bool)

(declare-fun d!1506668 () Bool)

(assert (= bs!1118515 (and d!1506668 d!1506380)))

(assert (=> bs!1118515 (= (dynLambda!21834 lambda!216545 (h!59222 (toList!5945 lm!2023))) (noDuplicateKeys!2028 (_2!30548 (h!59222 (toList!5945 lm!2023)))))))

(assert (=> bs!1118515 m!5667557))

(assert (=> b!4727724 d!1506668))

(check-sat (not b!4727786) (not d!1506512) (not d!1506550) (not b!4727930) (not d!1506520) (not b!4727910) (not d!1506568) (not b_lambda!179803) (not b!4727858) (not bs!1118511) (not b!4727745) (not b!4727769) (not b!4727793) (not b!4727790) (not b!4727789) (not b!4727860) (not b!4727770) (not b!4727718) (not b!4727706) (not b!4727859) (not d!1506538) (not b!4727651) (not d!1506596) (not bs!1118512) (not d!1506632) (not b!4727937) (not b!4727907) (not b!4727732) (not bs!1118508) (not bs!1118504) (not b!4727698) (not b!4727924) (not b!4727699) (not b!4727838) (not b!4727918) (not b!4727846) (not b!4727864) (not d!1506626) (not b!4727711) (not b!4727829) (not d!1506486) (not d!1506452) (not d!1506484) (not b!4727913) (not b!4727690) (not d!1506620) (not b!4727752) (not d!1506450) (not b_lambda!179785) (not b_lambda!179853) (not b!4727700) (not d!1506468) (not b!4727776) (not b_lambda!179847) (not d!1506474) (not b!4727760) (not b!4727727) (not b!4727676) (not d!1506470) (not d!1506506) (not d!1506578) (not b!4727914) (not bm!330738) (not b!4727816) (not d!1506584) (not b!4727818) (not d!1506526) (not b!4727749) (not d!1506514) (not d!1506524) (not bm!330735) (not d!1506516) (not b!4727794) (not b!4727748) (not b!4727791) (not b!4727941) (not b_lambda!179787) (not b_lambda!179849) (not b!4727861) (not b!4727920) (not b!4727909) (not b!4727636) (not b!4727739) (not b!4727750) (not b_lambda!179845) (not b!4727784) (not bs!1118503) (not b!4727733) (not b!4727827) (not b_lambda!179813) (not d!1506488) (not b!4727719) (not d!1506522) (not b!4727775) (not b!4727773) (not b!4727923) (not b!4727806) (not b!4727925) (not b!4727929) (not b!4727688) (not bs!1118501) (not b!4727810) (not d!1506518) (not bm!330747) (not bs!1118513) (not b!4727862) (not d!1506554) (not b!4727836) (not b_lambda!179839) tp_is_empty!31407 (not b!4727940) (not b!4727785) (not d!1506476) (not b!4727824) (not b!4727696) (not b!4727673) (not d!1506466) (not d!1506546) (not b!4727715) (not b!4727672) (not bs!1118510) (not d!1506448) (not b_lambda!179851) (not b!4727927) (not b!4727782) (not b!4727808) (not b!4727717) (not b!4727716) (not b_lambda!179841) (not bm!330739) (not bs!1118514) (not b!4727713) (not b!4727743) (not d!1506534) (not bs!1118509) (not b!4727725) (not d!1506504) (not b!4727835) (not b_lambda!179857) (not b_lambda!179835) (not bm!330740) (not b!4727754) (not b!4727731) (not b!4727908) (not bs!1118502) (not bs!1118506) (not b_lambda!179855) (not b!4727756) (not d!1506494) (not b!4727709) (not bm!330748) (not b!4727833) (not bm!330737) (not b!4727721) (not b!4727768) (not b!4727934) (not d!1506528) (not b!4727865) (not b_lambda!179861) (not d!1506438) (not b!4727831) (not d!1506572) (not b!4727723) (not b!4727834) (not b!4727680) (not bs!1118515) (not bm!330741) (not b_lambda!179837) (not b!4727744) (not b!4727800) (not b!4727774) (not b!4727702) (not b!4727679) (not b!4727911) (not b!4727926) (not d!1506592) (not b_lambda!179863) (not b!4727653) (not bs!1118507) (not d!1506462) (not b_lambda!179859) (not b!4727757) (not b!4727648) (not b!4727741) (not d!1506634) (not b!4727820) (not b!4727729) tp_is_empty!31405 (not b!4727938) (not b!4727847) (not d!1506622) (not d!1506458) (not b!4727822) (not b_lambda!179843) (not bs!1118505) (not b!4727710) (not b!4727939) (not b_lambda!179833) (not d!1506490) (not b!4727840) (not b_lambda!179865) (not bm!330736))
(check-sat)
