; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!480328 () Bool)

(assert start!480328)

(declare-fun b!4719549 () Bool)

(declare-fun e!2943325 () Bool)

(declare-fun tp!1348271 () Bool)

(assert (=> b!4719549 (= e!2943325 tp!1348271)))

(declare-fun b!4719550 () Bool)

(declare-fun res!1996281 () Bool)

(declare-fun e!2943329 () Bool)

(assert (=> b!4719550 (=> (not res!1996281) (not e!2943329))))

(declare-datatypes ((K!14170 0))(
  ( (K!14171 (val!19607 Int)) )
))
(declare-datatypes ((V!14416 0))(
  ( (V!14417 (val!19608 Int)) )
))
(declare-datatypes ((tuple2!54426 0))(
  ( (tuple2!54427 (_1!30507 K!14170) (_2!30507 V!14416)) )
))
(declare-datatypes ((List!52936 0))(
  ( (Nil!52812) (Cons!52812 (h!59153 tuple2!54426) (t!360192 List!52936)) )
))
(declare-datatypes ((tuple2!54428 0))(
  ( (tuple2!54429 (_1!30508 (_ BitVec 64)) (_2!30508 List!52936)) )
))
(declare-datatypes ((List!52937 0))(
  ( (Nil!52813) (Cons!52813 (h!59154 tuple2!54428) (t!360193 List!52937)) )
))
(declare-datatypes ((ListLongMap!4435 0))(
  ( (ListLongMap!4436 (toList!5905 List!52937)) )
))
(declare-fun lm!2023 () ListLongMap!4435)

(declare-fun oldBucket!34 () List!52936)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!10237 (List!52937) tuple2!54428)

(assert (=> b!4719550 (= res!1996281 (= (head!10237 (toList!5905 lm!2023)) (tuple2!54429 hash!405 oldBucket!34)))))

(declare-fun e!2943323 () Bool)

(declare-fun tp_is_empty!31327 () Bool)

(declare-fun b!4719551 () Bool)

(declare-fun tp!1348272 () Bool)

(declare-fun tp_is_empty!31325 () Bool)

(assert (=> b!4719551 (= e!2943323 (and tp_is_empty!31325 tp_is_empty!31327 tp!1348272))))

(declare-fun b!4719552 () Bool)

(declare-fun res!1996279 () Bool)

(declare-fun e!2943324 () Bool)

(assert (=> b!4719552 (=> (not res!1996279) (not e!2943324))))

(declare-fun newBucket!218 () List!52936)

(declare-fun noDuplicateKeys!2008 (List!52936) Bool)

(assert (=> b!4719552 (= res!1996279 (noDuplicateKeys!2008 newBucket!218))))

(declare-fun b!4719554 () Bool)

(declare-fun e!2943330 () Bool)

(declare-fun e!2943328 () Bool)

(assert (=> b!4719554 (= e!2943330 e!2943328)))

(declare-fun res!1996282 () Bool)

(assert (=> b!4719554 (=> res!1996282 e!2943328)))

(declare-datatypes ((ListMap!5269 0))(
  ( (ListMap!5270 (toList!5906 List!52936)) )
))
(declare-fun lt!1884696 () ListMap!5269)

(declare-fun lt!1884699 () ListMap!5269)

(declare-fun eq!1125 (ListMap!5269 ListMap!5269) Bool)

(declare-fun +!2263 (ListMap!5269 tuple2!54426) ListMap!5269)

(declare-fun addToMapMapFromBucket!1438 (List!52936 ListMap!5269) ListMap!5269)

(assert (=> b!4719554 (= res!1996282 (not (eq!1125 (+!2263 lt!1884699 (h!59153 oldBucket!34)) (addToMapMapFromBucket!1438 oldBucket!34 lt!1884696))))))

(declare-fun lt!1884698 () tuple2!54426)

(declare-fun lt!1884694 () List!52936)

(assert (=> b!4719554 (eq!1125 (addToMapMapFromBucket!1438 (Cons!52812 lt!1884698 lt!1884694) lt!1884696) (+!2263 lt!1884699 lt!1884698))))

(declare-datatypes ((Unit!129252 0))(
  ( (Unit!129253) )
))
(declare-fun lt!1884701 () Unit!129252)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!374 (tuple2!54426 List!52936 ListMap!5269) Unit!129252)

(assert (=> b!4719554 (= lt!1884701 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!374 lt!1884698 lt!1884694 lt!1884696))))

(declare-fun head!10238 (List!52936) tuple2!54426)

(assert (=> b!4719554 (= lt!1884698 (head!10238 oldBucket!34))))

(declare-fun b!4719555 () Bool)

(declare-fun res!1996272 () Bool)

(assert (=> b!4719555 (=> (not res!1996272) (not e!2943324))))

(assert (=> b!4719555 (= res!1996272 (noDuplicateKeys!2008 oldBucket!34))))

(declare-fun b!4719556 () Bool)

(declare-fun e!2943327 () Bool)

(declare-fun e!2943332 () Bool)

(assert (=> b!4719556 (= e!2943327 e!2943332)))

(declare-fun res!1996284 () Bool)

(assert (=> b!4719556 (=> res!1996284 e!2943332)))

(assert (=> b!4719556 (= res!1996284 (not (= lt!1884694 newBucket!218)))))

(declare-fun tail!8984 (List!52936) List!52936)

(assert (=> b!4719556 (= lt!1884694 (tail!8984 oldBucket!34))))

(declare-fun b!4719557 () Bool)

(assert (=> b!4719557 (= e!2943329 (not e!2943327))))

(declare-fun res!1996283 () Bool)

(assert (=> b!4719557 (=> res!1996283 e!2943327)))

(declare-fun key!4653 () K!14170)

(get-info :version)

(assert (=> b!4719557 (= res!1996283 (or (not ((_ is Cons!52812) oldBucket!34)) (not (= (_1!30507 (h!59153 oldBucket!34)) key!4653))))))

(declare-fun lt!1884697 () ListMap!5269)

(assert (=> b!4719557 (= lt!1884697 (addToMapMapFromBucket!1438 (_2!30508 (h!59154 (toList!5905 lm!2023))) lt!1884696))))

(declare-fun extractMap!2034 (List!52937) ListMap!5269)

(assert (=> b!4719557 (= lt!1884696 (extractMap!2034 (t!360193 (toList!5905 lm!2023))))))

(declare-fun tail!8985 (ListLongMap!4435) ListLongMap!4435)

(assert (=> b!4719557 (= (t!360193 (toList!5905 lm!2023)) (toList!5905 (tail!8985 lm!2023)))))

(declare-fun b!4719558 () Bool)

(declare-fun res!1996277 () Bool)

(assert (=> b!4719558 (=> (not res!1996277) (not e!2943324))))

(declare-fun removePairForKey!1603 (List!52936 K!14170) List!52936)

(assert (=> b!4719558 (= res!1996277 (= (removePairForKey!1603 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4719559 () Bool)

(declare-fun res!1996280 () Bool)

(assert (=> b!4719559 (=> (not res!1996280) (not e!2943324))))

(declare-datatypes ((Hashable!6377 0))(
  ( (HashableExt!6376 (__x!32080 Int)) )
))
(declare-fun hashF!1323 () Hashable!6377)

(declare-fun allKeysSameHash!1834 (List!52936 (_ BitVec 64) Hashable!6377) Bool)

(assert (=> b!4719559 (= res!1996280 (allKeysSameHash!1834 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4719560 () Bool)

(declare-fun res!1996285 () Bool)

(assert (=> b!4719560 (=> (not res!1996285) (not e!2943329))))

(declare-fun hash!4372 (Hashable!6377 K!14170) (_ BitVec 64))

(assert (=> b!4719560 (= res!1996285 (= (hash!4372 hashF!1323 key!4653) hash!405))))

(declare-fun b!4719553 () Bool)

(declare-fun res!1996276 () Bool)

(assert (=> b!4719553 (=> res!1996276 e!2943328)))

(declare-fun lt!1884700 () ListMap!5269)

(assert (=> b!4719553 (= res!1996276 (not (= lt!1884699 lt!1884700)))))

(declare-fun res!1996271 () Bool)

(assert (=> start!480328 (=> (not res!1996271) (not e!2943324))))

(declare-fun lambda!214876 () Int)

(declare-fun forall!11572 (List!52937 Int) Bool)

(assert (=> start!480328 (= res!1996271 (forall!11572 (toList!5905 lm!2023) lambda!214876))))

(assert (=> start!480328 e!2943324))

(declare-fun inv!68044 (ListLongMap!4435) Bool)

(assert (=> start!480328 (and (inv!68044 lm!2023) e!2943325)))

(assert (=> start!480328 tp_is_empty!31325))

(assert (=> start!480328 e!2943323))

(assert (=> start!480328 true))

(declare-fun e!2943326 () Bool)

(assert (=> start!480328 e!2943326))

(declare-fun b!4719561 () Bool)

(declare-fun e!2943331 () Bool)

(assert (=> b!4719561 (= e!2943332 e!2943331)))

(declare-fun res!1996268 () Bool)

(assert (=> b!4719561 (=> res!1996268 e!2943331)))

(assert (=> b!4719561 (= res!1996268 (not (= lt!1884700 (extractMap!2034 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))))))

(declare-fun lt!1884695 () List!52937)

(assert (=> b!4719561 (= lt!1884700 (extractMap!2034 lt!1884695))))

(assert (=> b!4719561 (= lt!1884695 (Cons!52813 (tuple2!54429 hash!405 lt!1884694) (t!360193 (toList!5905 lm!2023))))))

(declare-fun b!4719562 () Bool)

(assert (=> b!4719562 (= e!2943331 e!2943330)))

(declare-fun res!1996270 () Bool)

(assert (=> b!4719562 (=> res!1996270 e!2943330)))

(assert (=> b!4719562 (= res!1996270 (not (= lt!1884699 (addToMapMapFromBucket!1438 newBucket!218 lt!1884696))))))

(assert (=> b!4719562 (= lt!1884699 (addToMapMapFromBucket!1438 lt!1884694 lt!1884696))))

(declare-fun b!4719563 () Bool)

(assert (=> b!4719563 (= e!2943328 (inv!68044 (ListLongMap!4436 lt!1884695)))))

(declare-fun b!4719564 () Bool)

(assert (=> b!4719564 (= e!2943324 e!2943329)))

(declare-fun res!1996274 () Bool)

(assert (=> b!4719564 (=> (not res!1996274) (not e!2943329))))

(declare-fun contains!16156 (ListMap!5269 K!14170) Bool)

(assert (=> b!4719564 (= res!1996274 (contains!16156 lt!1884697 key!4653))))

(assert (=> b!4719564 (= lt!1884697 (extractMap!2034 (toList!5905 lm!2023)))))

(declare-fun tp!1348273 () Bool)

(declare-fun b!4719565 () Bool)

(assert (=> b!4719565 (= e!2943326 (and tp_is_empty!31325 tp_is_empty!31327 tp!1348273))))

(declare-fun b!4719566 () Bool)

(declare-fun res!1996273 () Bool)

(assert (=> b!4719566 (=> res!1996273 e!2943328)))

(declare-fun containsKey!3357 (List!52936 K!14170) Bool)

(assert (=> b!4719566 (= res!1996273 (containsKey!3357 lt!1884694 key!4653))))

(declare-fun b!4719567 () Bool)

(declare-fun res!1996278 () Bool)

(assert (=> b!4719567 (=> (not res!1996278) (not e!2943329))))

(assert (=> b!4719567 (= res!1996278 ((_ is Cons!52813) (toList!5905 lm!2023)))))

(declare-fun b!4719568 () Bool)

(declare-fun res!1996275 () Bool)

(assert (=> b!4719568 (=> (not res!1996275) (not e!2943329))))

(assert (=> b!4719568 (= res!1996275 (allKeysSameHash!1834 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4719569 () Bool)

(declare-fun res!1996269 () Bool)

(assert (=> b!4719569 (=> (not res!1996269) (not e!2943329))))

(declare-fun allKeysSameHashInMap!1922 (ListLongMap!4435 Hashable!6377) Bool)

(assert (=> b!4719569 (= res!1996269 (allKeysSameHashInMap!1922 lm!2023 hashF!1323))))

(assert (= (and start!480328 res!1996271) b!4719555))

(assert (= (and b!4719555 res!1996272) b!4719552))

(assert (= (and b!4719552 res!1996279) b!4719558))

(assert (= (and b!4719558 res!1996277) b!4719559))

(assert (= (and b!4719559 res!1996280) b!4719564))

(assert (= (and b!4719564 res!1996274) b!4719560))

(assert (= (and b!4719560 res!1996285) b!4719568))

(assert (= (and b!4719568 res!1996275) b!4719569))

(assert (= (and b!4719569 res!1996269) b!4719550))

(assert (= (and b!4719550 res!1996281) b!4719567))

(assert (= (and b!4719567 res!1996278) b!4719557))

(assert (= (and b!4719557 (not res!1996283)) b!4719556))

(assert (= (and b!4719556 (not res!1996284)) b!4719561))

(assert (= (and b!4719561 (not res!1996268)) b!4719562))

(assert (= (and b!4719562 (not res!1996270)) b!4719554))

(assert (= (and b!4719554 (not res!1996282)) b!4719566))

(assert (= (and b!4719566 (not res!1996273)) b!4719553))

(assert (= (and b!4719553 (not res!1996276)) b!4719563))

(assert (= start!480328 b!4719549))

(assert (= (and start!480328 ((_ is Cons!52812) oldBucket!34)) b!4719551))

(assert (= (and start!480328 ((_ is Cons!52812) newBucket!218)) b!4719565))

(declare-fun m!5651589 () Bool)

(assert (=> b!4719568 m!5651589))

(declare-fun m!5651591 () Bool)

(assert (=> b!4719564 m!5651591))

(declare-fun m!5651593 () Bool)

(assert (=> b!4719564 m!5651593))

(declare-fun m!5651595 () Bool)

(assert (=> b!4719552 m!5651595))

(declare-fun m!5651597 () Bool)

(assert (=> b!4719550 m!5651597))

(declare-fun m!5651599 () Bool)

(assert (=> b!4719561 m!5651599))

(declare-fun m!5651601 () Bool)

(assert (=> b!4719561 m!5651601))

(declare-fun m!5651603 () Bool)

(assert (=> b!4719560 m!5651603))

(declare-fun m!5651605 () Bool)

(assert (=> b!4719555 m!5651605))

(declare-fun m!5651607 () Bool)

(assert (=> b!4719554 m!5651607))

(declare-fun m!5651609 () Bool)

(assert (=> b!4719554 m!5651609))

(declare-fun m!5651611 () Bool)

(assert (=> b!4719554 m!5651611))

(declare-fun m!5651613 () Bool)

(assert (=> b!4719554 m!5651613))

(assert (=> b!4719554 m!5651609))

(declare-fun m!5651615 () Bool)

(assert (=> b!4719554 m!5651615))

(assert (=> b!4719554 m!5651611))

(declare-fun m!5651617 () Bool)

(assert (=> b!4719554 m!5651617))

(declare-fun m!5651619 () Bool)

(assert (=> b!4719554 m!5651619))

(assert (=> b!4719554 m!5651607))

(declare-fun m!5651621 () Bool)

(assert (=> b!4719554 m!5651621))

(assert (=> b!4719554 m!5651619))

(declare-fun m!5651623 () Bool)

(assert (=> start!480328 m!5651623))

(declare-fun m!5651625 () Bool)

(assert (=> start!480328 m!5651625))

(declare-fun m!5651627 () Bool)

(assert (=> b!4719559 m!5651627))

(declare-fun m!5651629 () Bool)

(assert (=> b!4719566 m!5651629))

(declare-fun m!5651631 () Bool)

(assert (=> b!4719562 m!5651631))

(declare-fun m!5651633 () Bool)

(assert (=> b!4719562 m!5651633))

(declare-fun m!5651635 () Bool)

(assert (=> b!4719557 m!5651635))

(declare-fun m!5651637 () Bool)

(assert (=> b!4719557 m!5651637))

(declare-fun m!5651639 () Bool)

(assert (=> b!4719557 m!5651639))

(declare-fun m!5651641 () Bool)

(assert (=> b!4719569 m!5651641))

(declare-fun m!5651643 () Bool)

(assert (=> b!4719563 m!5651643))

(declare-fun m!5651645 () Bool)

(assert (=> b!4719558 m!5651645))

(declare-fun m!5651647 () Bool)

(assert (=> b!4719556 m!5651647))

(check-sat (not b!4719568) (not b!4719550) (not b!4719564) (not b!4719556) (not b!4719563) (not start!480328) (not b!4719569) (not b!4719557) (not b!4719560) (not b!4719562) tp_is_empty!31325 (not b!4719566) (not b!4719555) (not b!4719552) (not b!4719565) (not b!4719561) (not b!4719558) (not b!4719554) (not b!4719559) (not b!4719551) (not b!4719549) tp_is_empty!31327)
(check-sat)
(get-model)

(declare-fun d!1501952 () Bool)

(assert (=> d!1501952 true))

(assert (=> d!1501952 true))

(declare-fun lambda!214879 () Int)

(declare-fun forall!11574 (List!52936 Int) Bool)

(assert (=> d!1501952 (= (allKeysSameHash!1834 newBucket!218 hash!405 hashF!1323) (forall!11574 newBucket!218 lambda!214879))))

(declare-fun bs!1106425 () Bool)

(assert (= bs!1106425 d!1501952))

(declare-fun m!5651649 () Bool)

(assert (=> bs!1106425 m!5651649))

(assert (=> b!4719568 d!1501952))

(declare-fun bs!1106442 () Bool)

(declare-fun b!4719653 () Bool)

(assert (= bs!1106442 (and b!4719653 d!1501952)))

(declare-fun lambda!214948 () Int)

(assert (=> bs!1106442 (not (= lambda!214948 lambda!214879))))

(assert (=> b!4719653 true))

(declare-fun bs!1106443 () Bool)

(declare-fun b!4719652 () Bool)

(assert (= bs!1106443 (and b!4719652 d!1501952)))

(declare-fun lambda!214949 () Int)

(assert (=> bs!1106443 (not (= lambda!214949 lambda!214879))))

(declare-fun bs!1106444 () Bool)

(assert (= bs!1106444 (and b!4719652 b!4719653)))

(assert (=> bs!1106444 (= lambda!214949 lambda!214948)))

(assert (=> b!4719652 true))

(declare-fun lambda!214950 () Int)

(assert (=> bs!1106443 (not (= lambda!214950 lambda!214879))))

(declare-fun lt!1884835 () ListMap!5269)

(assert (=> bs!1106444 (= (= lt!1884835 lt!1884696) (= lambda!214950 lambda!214948))))

(assert (=> b!4719652 (= (= lt!1884835 lt!1884696) (= lambda!214950 lambda!214949))))

(assert (=> b!4719652 true))

(declare-fun bs!1106445 () Bool)

(declare-fun d!1501954 () Bool)

(assert (= bs!1106445 (and d!1501954 d!1501952)))

(declare-fun lambda!214951 () Int)

(assert (=> bs!1106445 (not (= lambda!214951 lambda!214879))))

(declare-fun bs!1106446 () Bool)

(assert (= bs!1106446 (and d!1501954 b!4719653)))

(declare-fun lt!1884817 () ListMap!5269)

(assert (=> bs!1106446 (= (= lt!1884817 lt!1884696) (= lambda!214951 lambda!214948))))

(declare-fun bs!1106447 () Bool)

(assert (= bs!1106447 (and d!1501954 b!4719652)))

(assert (=> bs!1106447 (= (= lt!1884817 lt!1884696) (= lambda!214951 lambda!214949))))

(assert (=> bs!1106447 (= (= lt!1884817 lt!1884835) (= lambda!214951 lambda!214950))))

(assert (=> d!1501954 true))

(declare-fun b!4719651 () Bool)

(declare-fun e!2943382 () Bool)

(assert (=> b!4719651 (= e!2943382 (forall!11574 (toList!5906 lt!1884696) lambda!214950))))

(declare-fun bm!329952 () Bool)

(declare-fun call!329957 () Unit!129252)

(declare-fun lemmaContainsAllItsOwnKeys!791 (ListMap!5269) Unit!129252)

(assert (=> bm!329952 (= call!329957 (lemmaContainsAllItsOwnKeys!791 lt!1884696))))

(declare-fun call!329958 () Bool)

(declare-fun bm!329953 () Bool)

(declare-fun c!805990 () Bool)

(assert (=> bm!329953 (= call!329958 (forall!11574 (ite c!805990 (toList!5906 lt!1884696) (_2!30508 (h!59154 (toList!5905 lm!2023)))) (ite c!805990 lambda!214948 lambda!214950)))))

(declare-fun e!2943384 () ListMap!5269)

(assert (=> b!4719652 (= e!2943384 lt!1884835)))

(declare-fun lt!1884816 () ListMap!5269)

(assert (=> b!4719652 (= lt!1884816 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(assert (=> b!4719652 (= lt!1884835 (addToMapMapFromBucket!1438 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun lt!1884826 () Unit!129252)

(assert (=> b!4719652 (= lt!1884826 call!329957)))

(declare-fun call!329959 () Bool)

(assert (=> b!4719652 call!329959))

(declare-fun lt!1884818 () Unit!129252)

(assert (=> b!4719652 (= lt!1884818 lt!1884826)))

(assert (=> b!4719652 (forall!11574 (toList!5906 lt!1884816) lambda!214950)))

(declare-fun lt!1884833 () Unit!129252)

(declare-fun Unit!129262 () Unit!129252)

(assert (=> b!4719652 (= lt!1884833 Unit!129262)))

(assert (=> b!4719652 (forall!11574 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))) lambda!214950)))

(declare-fun lt!1884819 () Unit!129252)

(declare-fun Unit!129265 () Unit!129252)

(assert (=> b!4719652 (= lt!1884819 Unit!129265)))

(declare-fun lt!1884823 () Unit!129252)

(declare-fun Unit!129266 () Unit!129252)

(assert (=> b!4719652 (= lt!1884823 Unit!129266)))

(declare-fun lt!1884834 () Unit!129252)

(declare-fun forallContained!3629 (List!52936 Int tuple2!54426) Unit!129252)

(assert (=> b!4719652 (= lt!1884834 (forallContained!3629 (toList!5906 lt!1884816) lambda!214950 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(assert (=> b!4719652 (contains!16156 lt!1884816 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(declare-fun lt!1884827 () Unit!129252)

(declare-fun Unit!129267 () Unit!129252)

(assert (=> b!4719652 (= lt!1884827 Unit!129267)))

(assert (=> b!4719652 (contains!16156 lt!1884835 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(declare-fun lt!1884831 () Unit!129252)

(declare-fun Unit!129269 () Unit!129252)

(assert (=> b!4719652 (= lt!1884831 Unit!129269)))

(assert (=> b!4719652 call!329958))

(declare-fun lt!1884820 () Unit!129252)

(declare-fun Unit!129270 () Unit!129252)

(assert (=> b!4719652 (= lt!1884820 Unit!129270)))

(assert (=> b!4719652 (forall!11574 (toList!5906 lt!1884816) lambda!214950)))

(declare-fun lt!1884821 () Unit!129252)

(declare-fun Unit!129271 () Unit!129252)

(assert (=> b!4719652 (= lt!1884821 Unit!129271)))

(declare-fun lt!1884828 () Unit!129252)

(declare-fun Unit!129273 () Unit!129252)

(assert (=> b!4719652 (= lt!1884828 Unit!129273)))

(declare-fun lt!1884824 () Unit!129252)

(declare-fun addForallContainsKeyThenBeforeAdding!790 (ListMap!5269 ListMap!5269 K!14170 V!14416) Unit!129252)

(assert (=> b!4719652 (= lt!1884824 (addForallContainsKeyThenBeforeAdding!790 lt!1884696 lt!1884835 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (_2!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(assert (=> b!4719652 (forall!11574 (toList!5906 lt!1884696) lambda!214950)))

(declare-fun lt!1884829 () Unit!129252)

(assert (=> b!4719652 (= lt!1884829 lt!1884824)))

(assert (=> b!4719652 (forall!11574 (toList!5906 lt!1884696) lambda!214950)))

(declare-fun lt!1884830 () Unit!129252)

(declare-fun Unit!129274 () Unit!129252)

(assert (=> b!4719652 (= lt!1884830 Unit!129274)))

(declare-fun res!1996321 () Bool)

(assert (=> b!4719652 (= res!1996321 (forall!11574 (_2!30508 (h!59154 (toList!5905 lm!2023))) lambda!214950))))

(assert (=> b!4719652 (=> (not res!1996321) (not e!2943382))))

(assert (=> b!4719652 e!2943382))

(declare-fun lt!1884822 () Unit!129252)

(declare-fun Unit!129276 () Unit!129252)

(assert (=> b!4719652 (= lt!1884822 Unit!129276)))

(assert (=> b!4719653 (= e!2943384 lt!1884696)))

(declare-fun lt!1884815 () Unit!129252)

(assert (=> b!4719653 (= lt!1884815 call!329957)))

(assert (=> b!4719653 call!329959))

(declare-fun lt!1884832 () Unit!129252)

(assert (=> b!4719653 (= lt!1884832 lt!1884815)))

(assert (=> b!4719653 call!329958))

(declare-fun lt!1884825 () Unit!129252)

(declare-fun Unit!129277 () Unit!129252)

(assert (=> b!4719653 (= lt!1884825 Unit!129277)))

(declare-fun e!2943383 () Bool)

(assert (=> d!1501954 e!2943383))

(declare-fun res!1996322 () Bool)

(assert (=> d!1501954 (=> (not res!1996322) (not e!2943383))))

(assert (=> d!1501954 (= res!1996322 (forall!11574 (_2!30508 (h!59154 (toList!5905 lm!2023))) lambda!214951))))

(assert (=> d!1501954 (= lt!1884817 e!2943384)))

(assert (=> d!1501954 (= c!805990 ((_ is Nil!52812) (_2!30508 (h!59154 (toList!5905 lm!2023)))))))

(assert (=> d!1501954 (noDuplicateKeys!2008 (_2!30508 (h!59154 (toList!5905 lm!2023))))))

(assert (=> d!1501954 (= (addToMapMapFromBucket!1438 (_2!30508 (h!59154 (toList!5905 lm!2023))) lt!1884696) lt!1884817)))

(declare-fun b!4719654 () Bool)

(declare-fun invariantList!1505 (List!52936) Bool)

(assert (=> b!4719654 (= e!2943383 (invariantList!1505 (toList!5906 lt!1884817)))))

(declare-fun bm!329954 () Bool)

(assert (=> bm!329954 (= call!329959 (forall!11574 (toList!5906 lt!1884696) (ite c!805990 lambda!214948 lambda!214949)))))

(declare-fun b!4719655 () Bool)

(declare-fun res!1996323 () Bool)

(assert (=> b!4719655 (=> (not res!1996323) (not e!2943383))))

(assert (=> b!4719655 (= res!1996323 (forall!11574 (toList!5906 lt!1884696) lambda!214951))))

(assert (= (and d!1501954 c!805990) b!4719653))

(assert (= (and d!1501954 (not c!805990)) b!4719652))

(assert (= (and b!4719652 res!1996321) b!4719651))

(assert (= (or b!4719653 b!4719652) bm!329952))

(assert (= (or b!4719653 b!4719652) bm!329953))

(assert (= (or b!4719653 b!4719652) bm!329954))

(assert (= (and d!1501954 res!1996322) b!4719655))

(assert (= (and b!4719655 res!1996323) b!4719654))

(declare-fun m!5651713 () Bool)

(assert (=> b!4719654 m!5651713))

(declare-fun m!5651715 () Bool)

(assert (=> bm!329953 m!5651715))

(declare-fun m!5651717 () Bool)

(assert (=> bm!329952 m!5651717))

(declare-fun m!5651719 () Bool)

(assert (=> b!4719655 m!5651719))

(declare-fun m!5651721 () Bool)

(assert (=> b!4719652 m!5651721))

(declare-fun m!5651723 () Bool)

(assert (=> b!4719652 m!5651723))

(declare-fun m!5651725 () Bool)

(assert (=> b!4719652 m!5651725))

(declare-fun m!5651727 () Bool)

(assert (=> b!4719652 m!5651727))

(declare-fun m!5651729 () Bool)

(assert (=> b!4719652 m!5651729))

(declare-fun m!5651731 () Bool)

(assert (=> b!4719652 m!5651731))

(declare-fun m!5651733 () Bool)

(assert (=> b!4719652 m!5651733))

(declare-fun m!5651735 () Bool)

(assert (=> b!4719652 m!5651735))

(assert (=> b!4719652 m!5651725))

(declare-fun m!5651737 () Bool)

(assert (=> b!4719652 m!5651737))

(declare-fun m!5651739 () Bool)

(assert (=> b!4719652 m!5651739))

(assert (=> b!4719652 m!5651731))

(assert (=> b!4719652 m!5651733))

(declare-fun m!5651741 () Bool)

(assert (=> bm!329954 m!5651741))

(declare-fun m!5651743 () Bool)

(assert (=> d!1501954 m!5651743))

(declare-fun m!5651745 () Bool)

(assert (=> d!1501954 m!5651745))

(assert (=> b!4719651 m!5651731))

(assert (=> b!4719557 d!1501954))

(declare-fun bs!1106545 () Bool)

(declare-fun d!1501984 () Bool)

(assert (= bs!1106545 (and d!1501984 start!480328)))

(declare-fun lambda!214971 () Int)

(assert (=> bs!1106545 (= lambda!214971 lambda!214876)))

(declare-fun lt!1884923 () ListMap!5269)

(assert (=> d!1501984 (invariantList!1505 (toList!5906 lt!1884923))))

(declare-fun e!2943406 () ListMap!5269)

(assert (=> d!1501984 (= lt!1884923 e!2943406)))

(declare-fun c!805998 () Bool)

(assert (=> d!1501984 (= c!805998 ((_ is Cons!52813) (t!360193 (toList!5905 lm!2023))))))

(assert (=> d!1501984 (forall!11572 (t!360193 (toList!5905 lm!2023)) lambda!214971)))

(assert (=> d!1501984 (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884923)))

(declare-fun b!4719692 () Bool)

(assert (=> b!4719692 (= e!2943406 (addToMapMapFromBucket!1438 (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023)))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))))))

(declare-fun b!4719693 () Bool)

(assert (=> b!4719693 (= e!2943406 (ListMap!5270 Nil!52812))))

(assert (= (and d!1501984 c!805998) b!4719692))

(assert (= (and d!1501984 (not c!805998)) b!4719693))

(declare-fun m!5651897 () Bool)

(assert (=> d!1501984 m!5651897))

(declare-fun m!5651899 () Bool)

(assert (=> d!1501984 m!5651899))

(declare-fun m!5651901 () Bool)

(assert (=> b!4719692 m!5651901))

(assert (=> b!4719692 m!5651901))

(declare-fun m!5651903 () Bool)

(assert (=> b!4719692 m!5651903))

(assert (=> b!4719557 d!1501984))

(declare-fun d!1502004 () Bool)

(declare-fun tail!8986 (List!52937) List!52937)

(assert (=> d!1502004 (= (tail!8985 lm!2023) (ListLongMap!4436 (tail!8986 (toList!5905 lm!2023))))))

(declare-fun bs!1106546 () Bool)

(assert (= bs!1106546 d!1502004))

(declare-fun m!5651905 () Bool)

(assert (=> bs!1106546 m!5651905))

(assert (=> b!4719557 d!1502004))

(declare-fun d!1502006 () Bool)

(declare-fun res!1996346 () Bool)

(declare-fun e!2943411 () Bool)

(assert (=> d!1502006 (=> res!1996346 e!2943411)))

(assert (=> d!1502006 (= res!1996346 (and ((_ is Cons!52812) lt!1884694) (= (_1!30507 (h!59153 lt!1884694)) key!4653)))))

(assert (=> d!1502006 (= (containsKey!3357 lt!1884694 key!4653) e!2943411)))

(declare-fun b!4719698 () Bool)

(declare-fun e!2943412 () Bool)

(assert (=> b!4719698 (= e!2943411 e!2943412)))

(declare-fun res!1996347 () Bool)

(assert (=> b!4719698 (=> (not res!1996347) (not e!2943412))))

(assert (=> b!4719698 (= res!1996347 ((_ is Cons!52812) lt!1884694))))

(declare-fun b!4719699 () Bool)

(assert (=> b!4719699 (= e!2943412 (containsKey!3357 (t!360192 lt!1884694) key!4653))))

(assert (= (and d!1502006 (not res!1996346)) b!4719698))

(assert (= (and b!4719698 res!1996347) b!4719699))

(declare-fun m!5651907 () Bool)

(assert (=> b!4719699 m!5651907))

(assert (=> b!4719566 d!1502006))

(declare-fun d!1502008 () Bool)

(declare-fun res!1996352 () Bool)

(declare-fun e!2943417 () Bool)

(assert (=> d!1502008 (=> res!1996352 e!2943417)))

(assert (=> d!1502008 (= res!1996352 (not ((_ is Cons!52812) oldBucket!34)))))

(assert (=> d!1502008 (= (noDuplicateKeys!2008 oldBucket!34) e!2943417)))

(declare-fun b!4719704 () Bool)

(declare-fun e!2943418 () Bool)

(assert (=> b!4719704 (= e!2943417 e!2943418)))

(declare-fun res!1996353 () Bool)

(assert (=> b!4719704 (=> (not res!1996353) (not e!2943418))))

(assert (=> b!4719704 (= res!1996353 (not (containsKey!3357 (t!360192 oldBucket!34) (_1!30507 (h!59153 oldBucket!34)))))))

(declare-fun b!4719705 () Bool)

(assert (=> b!4719705 (= e!2943418 (noDuplicateKeys!2008 (t!360192 oldBucket!34)))))

(assert (= (and d!1502008 (not res!1996352)) b!4719704))

(assert (= (and b!4719704 res!1996353) b!4719705))

(declare-fun m!5651909 () Bool)

(assert (=> b!4719704 m!5651909))

(declare-fun m!5651911 () Bool)

(assert (=> b!4719705 m!5651911))

(assert (=> b!4719555 d!1502008))

(declare-fun d!1502010 () Bool)

(assert (=> d!1502010 (= (tail!8984 oldBucket!34) (t!360192 oldBucket!34))))

(assert (=> b!4719556 d!1502010))

(declare-fun d!1502012 () Bool)

(assert (=> d!1502012 (= (head!10238 oldBucket!34) (h!59153 oldBucket!34))))

(assert (=> b!4719554 d!1502012))

(declare-fun d!1502014 () Bool)

(assert (=> d!1502014 (eq!1125 (addToMapMapFromBucket!1438 (Cons!52812 lt!1884698 lt!1884694) lt!1884696) (+!2263 (addToMapMapFromBucket!1438 lt!1884694 lt!1884696) lt!1884698))))

(declare-fun lt!1884942 () Unit!129252)

(declare-fun choose!33283 (tuple2!54426 List!52936 ListMap!5269) Unit!129252)

(assert (=> d!1502014 (= lt!1884942 (choose!33283 lt!1884698 lt!1884694 lt!1884696))))

(assert (=> d!1502014 (noDuplicateKeys!2008 lt!1884694)))

(assert (=> d!1502014 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!374 lt!1884698 lt!1884694 lt!1884696) lt!1884942)))

(declare-fun bs!1106549 () Bool)

(assert (= bs!1106549 d!1502014))

(assert (=> bs!1106549 m!5651633))

(declare-fun m!5651945 () Bool)

(assert (=> bs!1106549 m!5651945))

(declare-fun m!5651947 () Bool)

(assert (=> bs!1106549 m!5651947))

(assert (=> bs!1106549 m!5651609))

(declare-fun m!5651949 () Bool)

(assert (=> bs!1106549 m!5651949))

(assert (=> bs!1106549 m!5651633))

(assert (=> bs!1106549 m!5651609))

(assert (=> bs!1106549 m!5651945))

(declare-fun m!5651951 () Bool)

(assert (=> bs!1106549 m!5651951))

(assert (=> b!4719554 d!1502014))

(declare-fun d!1502026 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9384 (List!52936) (InoxSet tuple2!54426))

(assert (=> d!1502026 (= (eq!1125 (+!2263 lt!1884699 (h!59153 oldBucket!34)) (addToMapMapFromBucket!1438 oldBucket!34 lt!1884696)) (= (content!9384 (toList!5906 (+!2263 lt!1884699 (h!59153 oldBucket!34)))) (content!9384 (toList!5906 (addToMapMapFromBucket!1438 oldBucket!34 lt!1884696)))))))

(declare-fun bs!1106550 () Bool)

(assert (= bs!1106550 d!1502026))

(declare-fun m!5651953 () Bool)

(assert (=> bs!1106550 m!5651953))

(declare-fun m!5651955 () Bool)

(assert (=> bs!1106550 m!5651955))

(assert (=> b!4719554 d!1502026))

(declare-fun bs!1106551 () Bool)

(declare-fun b!4719716 () Bool)

(assert (= bs!1106551 (and b!4719716 d!1501954)))

(declare-fun lambda!214972 () Int)

(assert (=> bs!1106551 (= (= lt!1884696 lt!1884817) (= lambda!214972 lambda!214951))))

(declare-fun bs!1106552 () Bool)

(assert (= bs!1106552 (and b!4719716 b!4719652)))

(assert (=> bs!1106552 (= (= lt!1884696 lt!1884835) (= lambda!214972 lambda!214950))))

(declare-fun bs!1106553 () Bool)

(assert (= bs!1106553 (and b!4719716 b!4719653)))

(assert (=> bs!1106553 (= lambda!214972 lambda!214948)))

(declare-fun bs!1106554 () Bool)

(assert (= bs!1106554 (and b!4719716 d!1501952)))

(assert (=> bs!1106554 (not (= lambda!214972 lambda!214879))))

(assert (=> bs!1106552 (= lambda!214972 lambda!214949)))

(assert (=> b!4719716 true))

(declare-fun bs!1106555 () Bool)

(declare-fun b!4719715 () Bool)

(assert (= bs!1106555 (and b!4719715 b!4719716)))

(declare-fun lambda!214973 () Int)

(assert (=> bs!1106555 (= lambda!214973 lambda!214972)))

(declare-fun bs!1106556 () Bool)

(assert (= bs!1106556 (and b!4719715 d!1501954)))

(assert (=> bs!1106556 (= (= lt!1884696 lt!1884817) (= lambda!214973 lambda!214951))))

(declare-fun bs!1106557 () Bool)

(assert (= bs!1106557 (and b!4719715 b!4719652)))

(assert (=> bs!1106557 (= (= lt!1884696 lt!1884835) (= lambda!214973 lambda!214950))))

(declare-fun bs!1106558 () Bool)

(assert (= bs!1106558 (and b!4719715 b!4719653)))

(assert (=> bs!1106558 (= lambda!214973 lambda!214948)))

(declare-fun bs!1106559 () Bool)

(assert (= bs!1106559 (and b!4719715 d!1501952)))

(assert (=> bs!1106559 (not (= lambda!214973 lambda!214879))))

(assert (=> bs!1106557 (= lambda!214973 lambda!214949)))

(assert (=> b!4719715 true))

(declare-fun lambda!214974 () Int)

(declare-fun lt!1884963 () ListMap!5269)

(assert (=> bs!1106555 (= (= lt!1884963 lt!1884696) (= lambda!214974 lambda!214972))))

(assert (=> b!4719715 (= (= lt!1884963 lt!1884696) (= lambda!214974 lambda!214973))))

(assert (=> bs!1106556 (= (= lt!1884963 lt!1884817) (= lambda!214974 lambda!214951))))

(assert (=> bs!1106557 (= (= lt!1884963 lt!1884835) (= lambda!214974 lambda!214950))))

(assert (=> bs!1106558 (= (= lt!1884963 lt!1884696) (= lambda!214974 lambda!214948))))

(assert (=> bs!1106559 (not (= lambda!214974 lambda!214879))))

(assert (=> bs!1106557 (= (= lt!1884963 lt!1884696) (= lambda!214974 lambda!214949))))

(assert (=> b!4719715 true))

(declare-fun bs!1106560 () Bool)

(declare-fun d!1502028 () Bool)

(assert (= bs!1106560 (and d!1502028 b!4719716)))

(declare-fun lambda!214975 () Int)

(declare-fun lt!1884945 () ListMap!5269)

(assert (=> bs!1106560 (= (= lt!1884945 lt!1884696) (= lambda!214975 lambda!214972))))

(declare-fun bs!1106561 () Bool)

(assert (= bs!1106561 (and d!1502028 b!4719715)))

(assert (=> bs!1106561 (= (= lt!1884945 lt!1884696) (= lambda!214975 lambda!214973))))

(assert (=> bs!1106561 (= (= lt!1884945 lt!1884963) (= lambda!214975 lambda!214974))))

(declare-fun bs!1106562 () Bool)

(assert (= bs!1106562 (and d!1502028 d!1501954)))

(assert (=> bs!1106562 (= (= lt!1884945 lt!1884817) (= lambda!214975 lambda!214951))))

(declare-fun bs!1106563 () Bool)

(assert (= bs!1106563 (and d!1502028 b!4719652)))

(assert (=> bs!1106563 (= (= lt!1884945 lt!1884835) (= lambda!214975 lambda!214950))))

(declare-fun bs!1106564 () Bool)

(assert (= bs!1106564 (and d!1502028 b!4719653)))

(assert (=> bs!1106564 (= (= lt!1884945 lt!1884696) (= lambda!214975 lambda!214948))))

(declare-fun bs!1106565 () Bool)

(assert (= bs!1106565 (and d!1502028 d!1501952)))

(assert (=> bs!1106565 (not (= lambda!214975 lambda!214879))))

(assert (=> bs!1106563 (= (= lt!1884945 lt!1884696) (= lambda!214975 lambda!214949))))

(assert (=> d!1502028 true))

(declare-fun b!4719714 () Bool)

(declare-fun e!2943423 () Bool)

(assert (=> b!4719714 (= e!2943423 (forall!11574 (toList!5906 lt!1884696) lambda!214974))))

(declare-fun bm!329967 () Bool)

(declare-fun call!329972 () Unit!129252)

(assert (=> bm!329967 (= call!329972 (lemmaContainsAllItsOwnKeys!791 lt!1884696))))

(declare-fun bm!329968 () Bool)

(declare-fun call!329973 () Bool)

(declare-fun c!805999 () Bool)

(assert (=> bm!329968 (= call!329973 (forall!11574 (ite c!805999 (toList!5906 lt!1884696) (Cons!52812 lt!1884698 lt!1884694)) (ite c!805999 lambda!214972 lambda!214974)))))

(declare-fun e!2943425 () ListMap!5269)

(assert (=> b!4719715 (= e!2943425 lt!1884963)))

(declare-fun lt!1884944 () ListMap!5269)

(assert (=> b!4719715 (= lt!1884944 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))

(assert (=> b!4719715 (= lt!1884963 (addToMapMapFromBucket!1438 (t!360192 (Cons!52812 lt!1884698 lt!1884694)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(declare-fun lt!1884954 () Unit!129252)

(assert (=> b!4719715 (= lt!1884954 call!329972)))

(declare-fun call!329974 () Bool)

(assert (=> b!4719715 call!329974))

(declare-fun lt!1884946 () Unit!129252)

(assert (=> b!4719715 (= lt!1884946 lt!1884954)))

(assert (=> b!4719715 (forall!11574 (toList!5906 lt!1884944) lambda!214974)))

(declare-fun lt!1884961 () Unit!129252)

(declare-fun Unit!129286 () Unit!129252)

(assert (=> b!4719715 (= lt!1884961 Unit!129286)))

(assert (=> b!4719715 (forall!11574 (t!360192 (Cons!52812 lt!1884698 lt!1884694)) lambda!214974)))

(declare-fun lt!1884947 () Unit!129252)

(declare-fun Unit!129287 () Unit!129252)

(assert (=> b!4719715 (= lt!1884947 Unit!129287)))

(declare-fun lt!1884951 () Unit!129252)

(declare-fun Unit!129288 () Unit!129252)

(assert (=> b!4719715 (= lt!1884951 Unit!129288)))

(declare-fun lt!1884962 () Unit!129252)

(assert (=> b!4719715 (= lt!1884962 (forallContained!3629 (toList!5906 lt!1884944) lambda!214974 (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))

(assert (=> b!4719715 (contains!16156 lt!1884944 (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))

(declare-fun lt!1884955 () Unit!129252)

(declare-fun Unit!129290 () Unit!129252)

(assert (=> b!4719715 (= lt!1884955 Unit!129290)))

(assert (=> b!4719715 (contains!16156 lt!1884963 (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))

(declare-fun lt!1884959 () Unit!129252)

(declare-fun Unit!129291 () Unit!129252)

(assert (=> b!4719715 (= lt!1884959 Unit!129291)))

(assert (=> b!4719715 call!329973))

(declare-fun lt!1884948 () Unit!129252)

(declare-fun Unit!129292 () Unit!129252)

(assert (=> b!4719715 (= lt!1884948 Unit!129292)))

(assert (=> b!4719715 (forall!11574 (toList!5906 lt!1884944) lambda!214974)))

(declare-fun lt!1884949 () Unit!129252)

(declare-fun Unit!129294 () Unit!129252)

(assert (=> b!4719715 (= lt!1884949 Unit!129294)))

(declare-fun lt!1884956 () Unit!129252)

(declare-fun Unit!129295 () Unit!129252)

(assert (=> b!4719715 (= lt!1884956 Unit!129295)))

(declare-fun lt!1884952 () Unit!129252)

(assert (=> b!4719715 (= lt!1884952 (addForallContainsKeyThenBeforeAdding!790 lt!1884696 lt!1884963 (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (_2!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(assert (=> b!4719715 (forall!11574 (toList!5906 lt!1884696) lambda!214974)))

(declare-fun lt!1884957 () Unit!129252)

(assert (=> b!4719715 (= lt!1884957 lt!1884952)))

(assert (=> b!4719715 (forall!11574 (toList!5906 lt!1884696) lambda!214974)))

(declare-fun lt!1884958 () Unit!129252)

(declare-fun Unit!129297 () Unit!129252)

(assert (=> b!4719715 (= lt!1884958 Unit!129297)))

(declare-fun res!1996362 () Bool)

(assert (=> b!4719715 (= res!1996362 (forall!11574 (Cons!52812 lt!1884698 lt!1884694) lambda!214974))))

(assert (=> b!4719715 (=> (not res!1996362) (not e!2943423))))

(assert (=> b!4719715 e!2943423))

(declare-fun lt!1884950 () Unit!129252)

(declare-fun Unit!129298 () Unit!129252)

(assert (=> b!4719715 (= lt!1884950 Unit!129298)))

(assert (=> b!4719716 (= e!2943425 lt!1884696)))

(declare-fun lt!1884943 () Unit!129252)

(assert (=> b!4719716 (= lt!1884943 call!329972)))

(assert (=> b!4719716 call!329974))

(declare-fun lt!1884960 () Unit!129252)

(assert (=> b!4719716 (= lt!1884960 lt!1884943)))

(assert (=> b!4719716 call!329973))

(declare-fun lt!1884953 () Unit!129252)

(declare-fun Unit!129299 () Unit!129252)

(assert (=> b!4719716 (= lt!1884953 Unit!129299)))

(declare-fun e!2943424 () Bool)

(assert (=> d!1502028 e!2943424))

(declare-fun res!1996363 () Bool)

(assert (=> d!1502028 (=> (not res!1996363) (not e!2943424))))

(assert (=> d!1502028 (= res!1996363 (forall!11574 (Cons!52812 lt!1884698 lt!1884694) lambda!214975))))

(assert (=> d!1502028 (= lt!1884945 e!2943425)))

(assert (=> d!1502028 (= c!805999 ((_ is Nil!52812) (Cons!52812 lt!1884698 lt!1884694)))))

(assert (=> d!1502028 (noDuplicateKeys!2008 (Cons!52812 lt!1884698 lt!1884694))))

(assert (=> d!1502028 (= (addToMapMapFromBucket!1438 (Cons!52812 lt!1884698 lt!1884694) lt!1884696) lt!1884945)))

(declare-fun b!4719717 () Bool)

(assert (=> b!4719717 (= e!2943424 (invariantList!1505 (toList!5906 lt!1884945)))))

(declare-fun bm!329969 () Bool)

(assert (=> bm!329969 (= call!329974 (forall!11574 (toList!5906 lt!1884696) (ite c!805999 lambda!214972 lambda!214973)))))

(declare-fun b!4719718 () Bool)

(declare-fun res!1996364 () Bool)

(assert (=> b!4719718 (=> (not res!1996364) (not e!2943424))))

(assert (=> b!4719718 (= res!1996364 (forall!11574 (toList!5906 lt!1884696) lambda!214975))))

(assert (= (and d!1502028 c!805999) b!4719716))

(assert (= (and d!1502028 (not c!805999)) b!4719715))

(assert (= (and b!4719715 res!1996362) b!4719714))

(assert (= (or b!4719716 b!4719715) bm!329967))

(assert (= (or b!4719716 b!4719715) bm!329968))

(assert (= (or b!4719716 b!4719715) bm!329969))

(assert (= (and d!1502028 res!1996363) b!4719718))

(assert (= (and b!4719718 res!1996364) b!4719717))

(declare-fun m!5651963 () Bool)

(assert (=> b!4719717 m!5651963))

(declare-fun m!5651965 () Bool)

(assert (=> bm!329968 m!5651965))

(assert (=> bm!329967 m!5651717))

(declare-fun m!5651967 () Bool)

(assert (=> b!4719718 m!5651967))

(declare-fun m!5651969 () Bool)

(assert (=> b!4719715 m!5651969))

(declare-fun m!5651971 () Bool)

(assert (=> b!4719715 m!5651971))

(declare-fun m!5651973 () Bool)

(assert (=> b!4719715 m!5651973))

(declare-fun m!5651975 () Bool)

(assert (=> b!4719715 m!5651975))

(declare-fun m!5651977 () Bool)

(assert (=> b!4719715 m!5651977))

(declare-fun m!5651979 () Bool)

(assert (=> b!4719715 m!5651979))

(declare-fun m!5651981 () Bool)

(assert (=> b!4719715 m!5651981))

(declare-fun m!5651983 () Bool)

(assert (=> b!4719715 m!5651983))

(assert (=> b!4719715 m!5651973))

(declare-fun m!5651985 () Bool)

(assert (=> b!4719715 m!5651985))

(declare-fun m!5651987 () Bool)

(assert (=> b!4719715 m!5651987))

(assert (=> b!4719715 m!5651979))

(assert (=> b!4719715 m!5651981))

(declare-fun m!5651989 () Bool)

(assert (=> bm!329969 m!5651989))

(declare-fun m!5651991 () Bool)

(assert (=> d!1502028 m!5651991))

(declare-fun m!5651993 () Bool)

(assert (=> d!1502028 m!5651993))

(assert (=> b!4719714 m!5651979))

(assert (=> b!4719554 d!1502028))

(declare-fun d!1502032 () Bool)

(assert (=> d!1502032 (= (eq!1125 (addToMapMapFromBucket!1438 (Cons!52812 lt!1884698 lt!1884694) lt!1884696) (+!2263 lt!1884699 lt!1884698)) (= (content!9384 (toList!5906 (addToMapMapFromBucket!1438 (Cons!52812 lt!1884698 lt!1884694) lt!1884696))) (content!9384 (toList!5906 (+!2263 lt!1884699 lt!1884698)))))))

(declare-fun bs!1106581 () Bool)

(assert (= bs!1106581 d!1502032))

(declare-fun m!5651995 () Bool)

(assert (=> bs!1106581 m!5651995))

(declare-fun m!5651997 () Bool)

(assert (=> bs!1106581 m!5651997))

(assert (=> b!4719554 d!1502032))

(declare-fun bs!1106582 () Bool)

(declare-fun b!4719726 () Bool)

(assert (= bs!1106582 (and b!4719726 b!4719716)))

(declare-fun lambda!214977 () Int)

(assert (=> bs!1106582 (= lambda!214977 lambda!214972)))

(declare-fun bs!1106584 () Bool)

(assert (= bs!1106584 (and b!4719726 b!4719715)))

(assert (=> bs!1106584 (= lambda!214977 lambda!214973)))

(assert (=> bs!1106584 (= (= lt!1884696 lt!1884963) (= lambda!214977 lambda!214974))))

(declare-fun bs!1106587 () Bool)

(assert (= bs!1106587 (and b!4719726 d!1501954)))

(assert (=> bs!1106587 (= (= lt!1884696 lt!1884817) (= lambda!214977 lambda!214951))))

(declare-fun bs!1106589 () Bool)

(assert (= bs!1106589 (and b!4719726 b!4719652)))

(assert (=> bs!1106589 (= (= lt!1884696 lt!1884835) (= lambda!214977 lambda!214950))))

(declare-fun bs!1106591 () Bool)

(assert (= bs!1106591 (and b!4719726 b!4719653)))

(assert (=> bs!1106591 (= lambda!214977 lambda!214948)))

(declare-fun bs!1106593 () Bool)

(assert (= bs!1106593 (and b!4719726 d!1502028)))

(assert (=> bs!1106593 (= (= lt!1884696 lt!1884945) (= lambda!214977 lambda!214975))))

(declare-fun bs!1106595 () Bool)

(assert (= bs!1106595 (and b!4719726 d!1501952)))

(assert (=> bs!1106595 (not (= lambda!214977 lambda!214879))))

(assert (=> bs!1106589 (= lambda!214977 lambda!214949)))

(assert (=> b!4719726 true))

(declare-fun bs!1106602 () Bool)

(declare-fun b!4719725 () Bool)

(assert (= bs!1106602 (and b!4719725 b!4719716)))

(declare-fun lambda!214979 () Int)

(assert (=> bs!1106602 (= lambda!214979 lambda!214972)))

(declare-fun bs!1106604 () Bool)

(assert (= bs!1106604 (and b!4719725 b!4719715)))

(assert (=> bs!1106604 (= lambda!214979 lambda!214973)))

(assert (=> bs!1106604 (= (= lt!1884696 lt!1884963) (= lambda!214979 lambda!214974))))

(declare-fun bs!1106605 () Bool)

(assert (= bs!1106605 (and b!4719725 d!1501954)))

(assert (=> bs!1106605 (= (= lt!1884696 lt!1884817) (= lambda!214979 lambda!214951))))

(declare-fun bs!1106607 () Bool)

(assert (= bs!1106607 (and b!4719725 b!4719726)))

(assert (=> bs!1106607 (= lambda!214979 lambda!214977)))

(declare-fun bs!1106608 () Bool)

(assert (= bs!1106608 (and b!4719725 b!4719652)))

(assert (=> bs!1106608 (= (= lt!1884696 lt!1884835) (= lambda!214979 lambda!214950))))

(declare-fun bs!1106609 () Bool)

(assert (= bs!1106609 (and b!4719725 b!4719653)))

(assert (=> bs!1106609 (= lambda!214979 lambda!214948)))

(declare-fun bs!1106610 () Bool)

(assert (= bs!1106610 (and b!4719725 d!1502028)))

(assert (=> bs!1106610 (= (= lt!1884696 lt!1884945) (= lambda!214979 lambda!214975))))

(declare-fun bs!1106611 () Bool)

(assert (= bs!1106611 (and b!4719725 d!1501952)))

(assert (=> bs!1106611 (not (= lambda!214979 lambda!214879))))

(assert (=> bs!1106608 (= lambda!214979 lambda!214949)))

(assert (=> b!4719725 true))

(declare-fun lambda!214981 () Int)

(declare-fun lt!1885008 () ListMap!5269)

(assert (=> bs!1106602 (= (= lt!1885008 lt!1884696) (= lambda!214981 lambda!214972))))

(assert (=> bs!1106604 (= (= lt!1885008 lt!1884696) (= lambda!214981 lambda!214973))))

(assert (=> bs!1106604 (= (= lt!1885008 lt!1884963) (= lambda!214981 lambda!214974))))

(assert (=> bs!1106605 (= (= lt!1885008 lt!1884817) (= lambda!214981 lambda!214951))))

(assert (=> bs!1106607 (= (= lt!1885008 lt!1884696) (= lambda!214981 lambda!214977))))

(assert (=> bs!1106608 (= (= lt!1885008 lt!1884835) (= lambda!214981 lambda!214950))))

(assert (=> b!4719725 (= (= lt!1885008 lt!1884696) (= lambda!214981 lambda!214979))))

(assert (=> bs!1106609 (= (= lt!1885008 lt!1884696) (= lambda!214981 lambda!214948))))

(assert (=> bs!1106610 (= (= lt!1885008 lt!1884945) (= lambda!214981 lambda!214975))))

(assert (=> bs!1106611 (not (= lambda!214981 lambda!214879))))

(assert (=> bs!1106608 (= (= lt!1885008 lt!1884696) (= lambda!214981 lambda!214949))))

(assert (=> b!4719725 true))

(declare-fun bs!1106612 () Bool)

(declare-fun d!1502034 () Bool)

(assert (= bs!1106612 (and d!1502034 b!4719716)))

(declare-fun lambda!214982 () Int)

(declare-fun lt!1884990 () ListMap!5269)

(assert (=> bs!1106612 (= (= lt!1884990 lt!1884696) (= lambda!214982 lambda!214972))))

(declare-fun bs!1106613 () Bool)

(assert (= bs!1106613 (and d!1502034 b!4719715)))

(assert (=> bs!1106613 (= (= lt!1884990 lt!1884696) (= lambda!214982 lambda!214973))))

(declare-fun bs!1106614 () Bool)

(assert (= bs!1106614 (and d!1502034 b!4719725)))

(assert (=> bs!1106614 (= (= lt!1884990 lt!1885008) (= lambda!214982 lambda!214981))))

(assert (=> bs!1106613 (= (= lt!1884990 lt!1884963) (= lambda!214982 lambda!214974))))

(declare-fun bs!1106615 () Bool)

(assert (= bs!1106615 (and d!1502034 d!1501954)))

(assert (=> bs!1106615 (= (= lt!1884990 lt!1884817) (= lambda!214982 lambda!214951))))

(declare-fun bs!1106617 () Bool)

(assert (= bs!1106617 (and d!1502034 b!4719726)))

(assert (=> bs!1106617 (= (= lt!1884990 lt!1884696) (= lambda!214982 lambda!214977))))

(declare-fun bs!1106619 () Bool)

(assert (= bs!1106619 (and d!1502034 b!4719652)))

(assert (=> bs!1106619 (= (= lt!1884990 lt!1884835) (= lambda!214982 lambda!214950))))

(assert (=> bs!1106614 (= (= lt!1884990 lt!1884696) (= lambda!214982 lambda!214979))))

(declare-fun bs!1106622 () Bool)

(assert (= bs!1106622 (and d!1502034 b!4719653)))

(assert (=> bs!1106622 (= (= lt!1884990 lt!1884696) (= lambda!214982 lambda!214948))))

(declare-fun bs!1106624 () Bool)

(assert (= bs!1106624 (and d!1502034 d!1502028)))

(assert (=> bs!1106624 (= (= lt!1884990 lt!1884945) (= lambda!214982 lambda!214975))))

(declare-fun bs!1106626 () Bool)

(assert (= bs!1106626 (and d!1502034 d!1501952)))

(assert (=> bs!1106626 (not (= lambda!214982 lambda!214879))))

(assert (=> bs!1106619 (= (= lt!1884990 lt!1884696) (= lambda!214982 lambda!214949))))

(assert (=> d!1502034 true))

(declare-fun b!4719724 () Bool)

(declare-fun e!2943429 () Bool)

(assert (=> b!4719724 (= e!2943429 (forall!11574 (toList!5906 lt!1884696) lambda!214981))))

(declare-fun bm!329973 () Bool)

(declare-fun call!329978 () Unit!129252)

(assert (=> bm!329973 (= call!329978 (lemmaContainsAllItsOwnKeys!791 lt!1884696))))

(declare-fun call!329979 () Bool)

(declare-fun c!806001 () Bool)

(declare-fun bm!329974 () Bool)

(assert (=> bm!329974 (= call!329979 (forall!11574 (ite c!806001 (toList!5906 lt!1884696) oldBucket!34) (ite c!806001 lambda!214977 lambda!214981)))))

(declare-fun e!2943431 () ListMap!5269)

(assert (=> b!4719725 (= e!2943431 lt!1885008)))

(declare-fun lt!1884989 () ListMap!5269)

(assert (=> b!4719725 (= lt!1884989 (+!2263 lt!1884696 (h!59153 oldBucket!34)))))

(assert (=> b!4719725 (= lt!1885008 (addToMapMapFromBucket!1438 (t!360192 oldBucket!34) (+!2263 lt!1884696 (h!59153 oldBucket!34))))))

(declare-fun lt!1884999 () Unit!129252)

(assert (=> b!4719725 (= lt!1884999 call!329978)))

(declare-fun call!329980 () Bool)

(assert (=> b!4719725 call!329980))

(declare-fun lt!1884991 () Unit!129252)

(assert (=> b!4719725 (= lt!1884991 lt!1884999)))

(assert (=> b!4719725 (forall!11574 (toList!5906 lt!1884989) lambda!214981)))

(declare-fun lt!1885006 () Unit!129252)

(declare-fun Unit!129300 () Unit!129252)

(assert (=> b!4719725 (= lt!1885006 Unit!129300)))

(assert (=> b!4719725 (forall!11574 (t!360192 oldBucket!34) lambda!214981)))

(declare-fun lt!1884992 () Unit!129252)

(declare-fun Unit!129301 () Unit!129252)

(assert (=> b!4719725 (= lt!1884992 Unit!129301)))

(declare-fun lt!1884996 () Unit!129252)

(declare-fun Unit!129302 () Unit!129252)

(assert (=> b!4719725 (= lt!1884996 Unit!129302)))

(declare-fun lt!1885007 () Unit!129252)

(assert (=> b!4719725 (= lt!1885007 (forallContained!3629 (toList!5906 lt!1884989) lambda!214981 (h!59153 oldBucket!34)))))

(assert (=> b!4719725 (contains!16156 lt!1884989 (_1!30507 (h!59153 oldBucket!34)))))

(declare-fun lt!1885000 () Unit!129252)

(declare-fun Unit!129303 () Unit!129252)

(assert (=> b!4719725 (= lt!1885000 Unit!129303)))

(assert (=> b!4719725 (contains!16156 lt!1885008 (_1!30507 (h!59153 oldBucket!34)))))

(declare-fun lt!1885004 () Unit!129252)

(declare-fun Unit!129304 () Unit!129252)

(assert (=> b!4719725 (= lt!1885004 Unit!129304)))

(assert (=> b!4719725 call!329979))

(declare-fun lt!1884993 () Unit!129252)

(declare-fun Unit!129305 () Unit!129252)

(assert (=> b!4719725 (= lt!1884993 Unit!129305)))

(assert (=> b!4719725 (forall!11574 (toList!5906 lt!1884989) lambda!214981)))

(declare-fun lt!1884994 () Unit!129252)

(declare-fun Unit!129306 () Unit!129252)

(assert (=> b!4719725 (= lt!1884994 Unit!129306)))

(declare-fun lt!1885001 () Unit!129252)

(declare-fun Unit!129307 () Unit!129252)

(assert (=> b!4719725 (= lt!1885001 Unit!129307)))

(declare-fun lt!1884997 () Unit!129252)

(assert (=> b!4719725 (= lt!1884997 (addForallContainsKeyThenBeforeAdding!790 lt!1884696 lt!1885008 (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34))))))

(assert (=> b!4719725 (forall!11574 (toList!5906 lt!1884696) lambda!214981)))

(declare-fun lt!1885002 () Unit!129252)

(assert (=> b!4719725 (= lt!1885002 lt!1884997)))

(assert (=> b!4719725 (forall!11574 (toList!5906 lt!1884696) lambda!214981)))

(declare-fun lt!1885003 () Unit!129252)

(declare-fun Unit!129308 () Unit!129252)

(assert (=> b!4719725 (= lt!1885003 Unit!129308)))

(declare-fun res!1996368 () Bool)

(assert (=> b!4719725 (= res!1996368 (forall!11574 oldBucket!34 lambda!214981))))

(assert (=> b!4719725 (=> (not res!1996368) (not e!2943429))))

(assert (=> b!4719725 e!2943429))

(declare-fun lt!1884995 () Unit!129252)

(declare-fun Unit!129309 () Unit!129252)

(assert (=> b!4719725 (= lt!1884995 Unit!129309)))

(assert (=> b!4719726 (= e!2943431 lt!1884696)))

(declare-fun lt!1884988 () Unit!129252)

(assert (=> b!4719726 (= lt!1884988 call!329978)))

(assert (=> b!4719726 call!329980))

(declare-fun lt!1885005 () Unit!129252)

(assert (=> b!4719726 (= lt!1885005 lt!1884988)))

(assert (=> b!4719726 call!329979))

(declare-fun lt!1884998 () Unit!129252)

(declare-fun Unit!129310 () Unit!129252)

(assert (=> b!4719726 (= lt!1884998 Unit!129310)))

(declare-fun e!2943430 () Bool)

(assert (=> d!1502034 e!2943430))

(declare-fun res!1996369 () Bool)

(assert (=> d!1502034 (=> (not res!1996369) (not e!2943430))))

(assert (=> d!1502034 (= res!1996369 (forall!11574 oldBucket!34 lambda!214982))))

(assert (=> d!1502034 (= lt!1884990 e!2943431)))

(assert (=> d!1502034 (= c!806001 ((_ is Nil!52812) oldBucket!34))))

(assert (=> d!1502034 (noDuplicateKeys!2008 oldBucket!34)))

(assert (=> d!1502034 (= (addToMapMapFromBucket!1438 oldBucket!34 lt!1884696) lt!1884990)))

(declare-fun b!4719727 () Bool)

(assert (=> b!4719727 (= e!2943430 (invariantList!1505 (toList!5906 lt!1884990)))))

(declare-fun bm!329975 () Bool)

(assert (=> bm!329975 (= call!329980 (forall!11574 (toList!5906 lt!1884696) (ite c!806001 lambda!214977 lambda!214979)))))

(declare-fun b!4719728 () Bool)

(declare-fun res!1996370 () Bool)

(assert (=> b!4719728 (=> (not res!1996370) (not e!2943430))))

(assert (=> b!4719728 (= res!1996370 (forall!11574 (toList!5906 lt!1884696) lambda!214982))))

(assert (= (and d!1502034 c!806001) b!4719726))

(assert (= (and d!1502034 (not c!806001)) b!4719725))

(assert (= (and b!4719725 res!1996368) b!4719724))

(assert (= (or b!4719726 b!4719725) bm!329973))

(assert (= (or b!4719726 b!4719725) bm!329974))

(assert (= (or b!4719726 b!4719725) bm!329975))

(assert (= (and d!1502034 res!1996369) b!4719728))

(assert (= (and b!4719728 res!1996370) b!4719727))

(declare-fun m!5651999 () Bool)

(assert (=> b!4719727 m!5651999))

(declare-fun m!5652001 () Bool)

(assert (=> bm!329974 m!5652001))

(assert (=> bm!329973 m!5651717))

(declare-fun m!5652003 () Bool)

(assert (=> b!4719728 m!5652003))

(declare-fun m!5652005 () Bool)

(assert (=> b!4719725 m!5652005))

(declare-fun m!5652007 () Bool)

(assert (=> b!4719725 m!5652007))

(declare-fun m!5652009 () Bool)

(assert (=> b!4719725 m!5652009))

(declare-fun m!5652011 () Bool)

(assert (=> b!4719725 m!5652011))

(declare-fun m!5652013 () Bool)

(assert (=> b!4719725 m!5652013))

(declare-fun m!5652015 () Bool)

(assert (=> b!4719725 m!5652015))

(declare-fun m!5652017 () Bool)

(assert (=> b!4719725 m!5652017))

(declare-fun m!5652019 () Bool)

(assert (=> b!4719725 m!5652019))

(assert (=> b!4719725 m!5652009))

(declare-fun m!5652021 () Bool)

(assert (=> b!4719725 m!5652021))

(declare-fun m!5652023 () Bool)

(assert (=> b!4719725 m!5652023))

(assert (=> b!4719725 m!5652015))

(assert (=> b!4719725 m!5652017))

(declare-fun m!5652025 () Bool)

(assert (=> bm!329975 m!5652025))

(declare-fun m!5652027 () Bool)

(assert (=> d!1502034 m!5652027))

(assert (=> d!1502034 m!5651605))

(assert (=> b!4719724 m!5652015))

(assert (=> b!4719554 d!1502034))

(declare-fun d!1502036 () Bool)

(declare-fun e!2943447 () Bool)

(assert (=> d!1502036 e!2943447))

(declare-fun res!1996376 () Bool)

(assert (=> d!1502036 (=> (not res!1996376) (not e!2943447))))

(declare-fun lt!1885022 () ListMap!5269)

(assert (=> d!1502036 (= res!1996376 (contains!16156 lt!1885022 (_1!30507 lt!1884698)))))

(declare-fun lt!1885020 () List!52936)

(assert (=> d!1502036 (= lt!1885022 (ListMap!5270 lt!1885020))))

(declare-fun lt!1885021 () Unit!129252)

(declare-fun lt!1885023 () Unit!129252)

(assert (=> d!1502036 (= lt!1885021 lt!1885023)))

(declare-datatypes ((Option!12353 0))(
  ( (None!12352) (Some!12352 (v!46921 V!14416)) )
))
(declare-fun getValueByKey!1949 (List!52936 K!14170) Option!12353)

(assert (=> d!1502036 (= (getValueByKey!1949 lt!1885020 (_1!30507 lt!1884698)) (Some!12352 (_2!30507 lt!1884698)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1079 (List!52936 K!14170 V!14416) Unit!129252)

(assert (=> d!1502036 (= lt!1885023 (lemmaContainsTupThenGetReturnValue!1079 lt!1885020 (_1!30507 lt!1884698) (_2!30507 lt!1884698)))))

(declare-fun insertNoDuplicatedKeys!587 (List!52936 K!14170 V!14416) List!52936)

(assert (=> d!1502036 (= lt!1885020 (insertNoDuplicatedKeys!587 (toList!5906 lt!1884699) (_1!30507 lt!1884698) (_2!30507 lt!1884698)))))

(assert (=> d!1502036 (= (+!2263 lt!1884699 lt!1884698) lt!1885022)))

(declare-fun b!4719756 () Bool)

(declare-fun res!1996375 () Bool)

(assert (=> b!4719756 (=> (not res!1996375) (not e!2943447))))

(assert (=> b!4719756 (= res!1996375 (= (getValueByKey!1949 (toList!5906 lt!1885022) (_1!30507 lt!1884698)) (Some!12352 (_2!30507 lt!1884698))))))

(declare-fun b!4719757 () Bool)

(declare-fun contains!16158 (List!52936 tuple2!54426) Bool)

(assert (=> b!4719757 (= e!2943447 (contains!16158 (toList!5906 lt!1885022) lt!1884698))))

(assert (= (and d!1502036 res!1996376) b!4719756))

(assert (= (and b!4719756 res!1996375) b!4719757))

(declare-fun m!5652067 () Bool)

(assert (=> d!1502036 m!5652067))

(declare-fun m!5652069 () Bool)

(assert (=> d!1502036 m!5652069))

(declare-fun m!5652071 () Bool)

(assert (=> d!1502036 m!5652071))

(declare-fun m!5652073 () Bool)

(assert (=> d!1502036 m!5652073))

(declare-fun m!5652075 () Bool)

(assert (=> b!4719756 m!5652075))

(declare-fun m!5652077 () Bool)

(assert (=> b!4719757 m!5652077))

(assert (=> b!4719554 d!1502036))

(declare-fun d!1502042 () Bool)

(declare-fun e!2943448 () Bool)

(assert (=> d!1502042 e!2943448))

(declare-fun res!1996378 () Bool)

(assert (=> d!1502042 (=> (not res!1996378) (not e!2943448))))

(declare-fun lt!1885026 () ListMap!5269)

(assert (=> d!1502042 (= res!1996378 (contains!16156 lt!1885026 (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun lt!1885024 () List!52936)

(assert (=> d!1502042 (= lt!1885026 (ListMap!5270 lt!1885024))))

(declare-fun lt!1885025 () Unit!129252)

(declare-fun lt!1885027 () Unit!129252)

(assert (=> d!1502042 (= lt!1885025 lt!1885027)))

(assert (=> d!1502042 (= (getValueByKey!1949 lt!1885024 (_1!30507 (h!59153 oldBucket!34))) (Some!12352 (_2!30507 (h!59153 oldBucket!34))))))

(assert (=> d!1502042 (= lt!1885027 (lemmaContainsTupThenGetReturnValue!1079 lt!1885024 (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34))))))

(assert (=> d!1502042 (= lt!1885024 (insertNoDuplicatedKeys!587 (toList!5906 lt!1884699) (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34))))))

(assert (=> d!1502042 (= (+!2263 lt!1884699 (h!59153 oldBucket!34)) lt!1885026)))

(declare-fun b!4719758 () Bool)

(declare-fun res!1996377 () Bool)

(assert (=> b!4719758 (=> (not res!1996377) (not e!2943448))))

(assert (=> b!4719758 (= res!1996377 (= (getValueByKey!1949 (toList!5906 lt!1885026) (_1!30507 (h!59153 oldBucket!34))) (Some!12352 (_2!30507 (h!59153 oldBucket!34)))))))

(declare-fun b!4719759 () Bool)

(assert (=> b!4719759 (= e!2943448 (contains!16158 (toList!5906 lt!1885026) (h!59153 oldBucket!34)))))

(assert (= (and d!1502042 res!1996378) b!4719758))

(assert (= (and b!4719758 res!1996377) b!4719759))

(declare-fun m!5652079 () Bool)

(assert (=> d!1502042 m!5652079))

(declare-fun m!5652081 () Bool)

(assert (=> d!1502042 m!5652081))

(declare-fun m!5652083 () Bool)

(assert (=> d!1502042 m!5652083))

(declare-fun m!5652085 () Bool)

(assert (=> d!1502042 m!5652085))

(declare-fun m!5652087 () Bool)

(assert (=> b!4719758 m!5652087))

(declare-fun m!5652089 () Bool)

(assert (=> b!4719759 m!5652089))

(assert (=> b!4719554 d!1502042))

(declare-fun d!1502044 () Bool)

(declare-fun isStrictlySorted!744 (List!52937) Bool)

(assert (=> d!1502044 (= (inv!68044 (ListLongMap!4436 lt!1884695)) (isStrictlySorted!744 (toList!5905 (ListLongMap!4436 lt!1884695))))))

(declare-fun bs!1106638 () Bool)

(assert (= bs!1106638 d!1502044))

(declare-fun m!5652091 () Bool)

(assert (=> bs!1106638 m!5652091))

(assert (=> b!4719563 d!1502044))

(declare-fun d!1502046 () Bool)

(declare-fun e!2943466 () Bool)

(assert (=> d!1502046 e!2943466))

(declare-fun res!1996385 () Bool)

(assert (=> d!1502046 (=> res!1996385 e!2943466)))

(declare-fun e!2943463 () Bool)

(assert (=> d!1502046 (= res!1996385 e!2943463)))

(declare-fun res!1996387 () Bool)

(assert (=> d!1502046 (=> (not res!1996387) (not e!2943463))))

(declare-fun lt!1885046 () Bool)

(assert (=> d!1502046 (= res!1996387 (not lt!1885046))))

(declare-fun lt!1885047 () Bool)

(assert (=> d!1502046 (= lt!1885046 lt!1885047)))

(declare-fun lt!1885044 () Unit!129252)

(declare-fun e!2943465 () Unit!129252)

(assert (=> d!1502046 (= lt!1885044 e!2943465)))

(declare-fun c!806015 () Bool)

(assert (=> d!1502046 (= c!806015 lt!1885047)))

(declare-fun containsKey!3359 (List!52936 K!14170) Bool)

(assert (=> d!1502046 (= lt!1885047 (containsKey!3359 (toList!5906 lt!1884697) key!4653))))

(assert (=> d!1502046 (= (contains!16156 lt!1884697 key!4653) lt!1885046)))

(declare-fun b!4719778 () Bool)

(assert (=> b!4719778 false))

(declare-fun lt!1885045 () Unit!129252)

(declare-fun lt!1885049 () Unit!129252)

(assert (=> b!4719778 (= lt!1885045 lt!1885049)))

(assert (=> b!4719778 (containsKey!3359 (toList!5906 lt!1884697) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!944 (List!52936 K!14170) Unit!129252)

(assert (=> b!4719778 (= lt!1885049 (lemmaInGetKeysListThenContainsKey!944 (toList!5906 lt!1884697) key!4653))))

(declare-fun e!2943461 () Unit!129252)

(declare-fun Unit!129322 () Unit!129252)

(assert (=> b!4719778 (= e!2943461 Unit!129322)))

(declare-fun b!4719779 () Bool)

(declare-fun Unit!129323 () Unit!129252)

(assert (=> b!4719779 (= e!2943461 Unit!129323)))

(declare-fun b!4719780 () Bool)

(declare-fun e!2943462 () Bool)

(assert (=> b!4719780 (= e!2943466 e!2943462)))

(declare-fun res!1996386 () Bool)

(assert (=> b!4719780 (=> (not res!1996386) (not e!2943462))))

(declare-fun isDefined!9607 (Option!12353) Bool)

(assert (=> b!4719780 (= res!1996386 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1884697) key!4653)))))

(declare-fun b!4719781 () Bool)

(assert (=> b!4719781 (= e!2943465 e!2943461)))

(declare-fun c!806014 () Bool)

(declare-fun call!329983 () Bool)

(assert (=> b!4719781 (= c!806014 call!329983)))

(declare-fun b!4719782 () Bool)

(declare-datatypes ((List!52939 0))(
  ( (Nil!52815) (Cons!52815 (h!59158 K!14170) (t!360197 List!52939)) )
))
(declare-fun e!2943464 () List!52939)

(declare-fun keys!18962 (ListMap!5269) List!52939)

(assert (=> b!4719782 (= e!2943464 (keys!18962 lt!1884697))))

(declare-fun b!4719783 () Bool)

(declare-fun lt!1885048 () Unit!129252)

(assert (=> b!4719783 (= e!2943465 lt!1885048)))

(declare-fun lt!1885050 () Unit!129252)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1840 (List!52936 K!14170) Unit!129252)

(assert (=> b!4719783 (= lt!1885050 (lemmaContainsKeyImpliesGetValueByKeyDefined!1840 (toList!5906 lt!1884697) key!4653))))

(assert (=> b!4719783 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1884697) key!4653))))

(declare-fun lt!1885051 () Unit!129252)

(assert (=> b!4719783 (= lt!1885051 lt!1885050)))

(declare-fun lemmaInListThenGetKeysListContains!940 (List!52936 K!14170) Unit!129252)

(assert (=> b!4719783 (= lt!1885048 (lemmaInListThenGetKeysListContains!940 (toList!5906 lt!1884697) key!4653))))

(assert (=> b!4719783 call!329983))

(declare-fun b!4719784 () Bool)

(declare-fun contains!16159 (List!52939 K!14170) Bool)

(assert (=> b!4719784 (= e!2943463 (not (contains!16159 (keys!18962 lt!1884697) key!4653)))))

(declare-fun b!4719785 () Bool)

(declare-fun getKeysList!945 (List!52936) List!52939)

(assert (=> b!4719785 (= e!2943464 (getKeysList!945 (toList!5906 lt!1884697)))))

(declare-fun b!4719786 () Bool)

(assert (=> b!4719786 (= e!2943462 (contains!16159 (keys!18962 lt!1884697) key!4653))))

(declare-fun bm!329978 () Bool)

(assert (=> bm!329978 (= call!329983 (contains!16159 e!2943464 key!4653))))

(declare-fun c!806016 () Bool)

(assert (=> bm!329978 (= c!806016 c!806015)))

(assert (= (and d!1502046 c!806015) b!4719783))

(assert (= (and d!1502046 (not c!806015)) b!4719781))

(assert (= (and b!4719781 c!806014) b!4719778))

(assert (= (and b!4719781 (not c!806014)) b!4719779))

(assert (= (or b!4719783 b!4719781) bm!329978))

(assert (= (and bm!329978 c!806016) b!4719785))

(assert (= (and bm!329978 (not c!806016)) b!4719782))

(assert (= (and d!1502046 res!1996387) b!4719784))

(assert (= (and d!1502046 (not res!1996385)) b!4719780))

(assert (= (and b!4719780 res!1996386) b!4719786))

(declare-fun m!5652093 () Bool)

(assert (=> b!4719782 m!5652093))

(declare-fun m!5652095 () Bool)

(assert (=> b!4719783 m!5652095))

(declare-fun m!5652097 () Bool)

(assert (=> b!4719783 m!5652097))

(assert (=> b!4719783 m!5652097))

(declare-fun m!5652099 () Bool)

(assert (=> b!4719783 m!5652099))

(declare-fun m!5652101 () Bool)

(assert (=> b!4719783 m!5652101))

(declare-fun m!5652103 () Bool)

(assert (=> b!4719785 m!5652103))

(assert (=> b!4719780 m!5652097))

(assert (=> b!4719780 m!5652097))

(assert (=> b!4719780 m!5652099))

(assert (=> b!4719786 m!5652093))

(assert (=> b!4719786 m!5652093))

(declare-fun m!5652105 () Bool)

(assert (=> b!4719786 m!5652105))

(declare-fun m!5652107 () Bool)

(assert (=> bm!329978 m!5652107))

(assert (=> b!4719784 m!5652093))

(assert (=> b!4719784 m!5652093))

(assert (=> b!4719784 m!5652105))

(declare-fun m!5652109 () Bool)

(assert (=> d!1502046 m!5652109))

(assert (=> b!4719778 m!5652109))

(declare-fun m!5652111 () Bool)

(assert (=> b!4719778 m!5652111))

(assert (=> b!4719564 d!1502046))

(declare-fun bs!1106639 () Bool)

(declare-fun d!1502048 () Bool)

(assert (= bs!1106639 (and d!1502048 start!480328)))

(declare-fun lambda!214984 () Int)

(assert (=> bs!1106639 (= lambda!214984 lambda!214876)))

(declare-fun bs!1106640 () Bool)

(assert (= bs!1106640 (and d!1502048 d!1501984)))

(assert (=> bs!1106640 (= lambda!214984 lambda!214971)))

(declare-fun lt!1885052 () ListMap!5269)

(assert (=> d!1502048 (invariantList!1505 (toList!5906 lt!1885052))))

(declare-fun e!2943467 () ListMap!5269)

(assert (=> d!1502048 (= lt!1885052 e!2943467)))

(declare-fun c!806017 () Bool)

(assert (=> d!1502048 (= c!806017 ((_ is Cons!52813) (toList!5905 lm!2023)))))

(assert (=> d!1502048 (forall!11572 (toList!5905 lm!2023) lambda!214984)))

(assert (=> d!1502048 (= (extractMap!2034 (toList!5905 lm!2023)) lt!1885052)))

(declare-fun b!4719787 () Bool)

(assert (=> b!4719787 (= e!2943467 (addToMapMapFromBucket!1438 (_2!30508 (h!59154 (toList!5905 lm!2023))) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))))))

(declare-fun b!4719788 () Bool)

(assert (=> b!4719788 (= e!2943467 (ListMap!5270 Nil!52812))))

(assert (= (and d!1502048 c!806017) b!4719787))

(assert (= (and d!1502048 (not c!806017)) b!4719788))

(declare-fun m!5652113 () Bool)

(assert (=> d!1502048 m!5652113))

(declare-fun m!5652115 () Bool)

(assert (=> d!1502048 m!5652115))

(assert (=> b!4719787 m!5651637))

(assert (=> b!4719787 m!5651637))

(declare-fun m!5652117 () Bool)

(assert (=> b!4719787 m!5652117))

(assert (=> b!4719564 d!1502048))

(declare-fun bs!1106641 () Bool)

(declare-fun b!4719791 () Bool)

(assert (= bs!1106641 (and b!4719791 b!4719716)))

(declare-fun lambda!214985 () Int)

(assert (=> bs!1106641 (= lambda!214985 lambda!214972)))

(declare-fun bs!1106642 () Bool)

(assert (= bs!1106642 (and b!4719791 b!4719715)))

(assert (=> bs!1106642 (= lambda!214985 lambda!214973)))

(declare-fun bs!1106643 () Bool)

(assert (= bs!1106643 (and b!4719791 b!4719725)))

(assert (=> bs!1106643 (= (= lt!1884696 lt!1885008) (= lambda!214985 lambda!214981))))

(assert (=> bs!1106642 (= (= lt!1884696 lt!1884963) (= lambda!214985 lambda!214974))))

(declare-fun bs!1106644 () Bool)

(assert (= bs!1106644 (and b!4719791 d!1502034)))

(assert (=> bs!1106644 (= (= lt!1884696 lt!1884990) (= lambda!214985 lambda!214982))))

(declare-fun bs!1106645 () Bool)

(assert (= bs!1106645 (and b!4719791 d!1501954)))

(assert (=> bs!1106645 (= (= lt!1884696 lt!1884817) (= lambda!214985 lambda!214951))))

(declare-fun bs!1106646 () Bool)

(assert (= bs!1106646 (and b!4719791 b!4719726)))

(assert (=> bs!1106646 (= lambda!214985 lambda!214977)))

(declare-fun bs!1106647 () Bool)

(assert (= bs!1106647 (and b!4719791 b!4719652)))

(assert (=> bs!1106647 (= (= lt!1884696 lt!1884835) (= lambda!214985 lambda!214950))))

(assert (=> bs!1106643 (= lambda!214985 lambda!214979)))

(declare-fun bs!1106648 () Bool)

(assert (= bs!1106648 (and b!4719791 b!4719653)))

(assert (=> bs!1106648 (= lambda!214985 lambda!214948)))

(declare-fun bs!1106649 () Bool)

(assert (= bs!1106649 (and b!4719791 d!1502028)))

(assert (=> bs!1106649 (= (= lt!1884696 lt!1884945) (= lambda!214985 lambda!214975))))

(declare-fun bs!1106650 () Bool)

(assert (= bs!1106650 (and b!4719791 d!1501952)))

(assert (=> bs!1106650 (not (= lambda!214985 lambda!214879))))

(assert (=> bs!1106647 (= lambda!214985 lambda!214949)))

(assert (=> b!4719791 true))

(declare-fun bs!1106651 () Bool)

(declare-fun b!4719790 () Bool)

(assert (= bs!1106651 (and b!4719790 b!4719716)))

(declare-fun lambda!214986 () Int)

(assert (=> bs!1106651 (= lambda!214986 lambda!214972)))

(declare-fun bs!1106652 () Bool)

(assert (= bs!1106652 (and b!4719790 b!4719715)))

(assert (=> bs!1106652 (= lambda!214986 lambda!214973)))

(declare-fun bs!1106653 () Bool)

(assert (= bs!1106653 (and b!4719790 b!4719725)))

(assert (=> bs!1106653 (= (= lt!1884696 lt!1885008) (= lambda!214986 lambda!214981))))

(assert (=> bs!1106652 (= (= lt!1884696 lt!1884963) (= lambda!214986 lambda!214974))))

(declare-fun bs!1106654 () Bool)

(assert (= bs!1106654 (and b!4719790 b!4719791)))

(assert (=> bs!1106654 (= lambda!214986 lambda!214985)))

(declare-fun bs!1106655 () Bool)

(assert (= bs!1106655 (and b!4719790 d!1502034)))

(assert (=> bs!1106655 (= (= lt!1884696 lt!1884990) (= lambda!214986 lambda!214982))))

(declare-fun bs!1106656 () Bool)

(assert (= bs!1106656 (and b!4719790 d!1501954)))

(assert (=> bs!1106656 (= (= lt!1884696 lt!1884817) (= lambda!214986 lambda!214951))))

(declare-fun bs!1106657 () Bool)

(assert (= bs!1106657 (and b!4719790 b!4719726)))

(assert (=> bs!1106657 (= lambda!214986 lambda!214977)))

(declare-fun bs!1106658 () Bool)

(assert (= bs!1106658 (and b!4719790 b!4719652)))

(assert (=> bs!1106658 (= (= lt!1884696 lt!1884835) (= lambda!214986 lambda!214950))))

(assert (=> bs!1106653 (= lambda!214986 lambda!214979)))

(declare-fun bs!1106659 () Bool)

(assert (= bs!1106659 (and b!4719790 b!4719653)))

(assert (=> bs!1106659 (= lambda!214986 lambda!214948)))

(declare-fun bs!1106660 () Bool)

(assert (= bs!1106660 (and b!4719790 d!1502028)))

(assert (=> bs!1106660 (= (= lt!1884696 lt!1884945) (= lambda!214986 lambda!214975))))

(declare-fun bs!1106661 () Bool)

(assert (= bs!1106661 (and b!4719790 d!1501952)))

(assert (=> bs!1106661 (not (= lambda!214986 lambda!214879))))

(assert (=> bs!1106658 (= lambda!214986 lambda!214949)))

(assert (=> b!4719790 true))

(declare-fun lambda!214987 () Int)

(declare-fun lt!1885073 () ListMap!5269)

(assert (=> bs!1106651 (= (= lt!1885073 lt!1884696) (= lambda!214987 lambda!214972))))

(assert (=> bs!1106652 (= (= lt!1885073 lt!1884696) (= lambda!214987 lambda!214973))))

(assert (=> bs!1106653 (= (= lt!1885073 lt!1885008) (= lambda!214987 lambda!214981))))

(assert (=> b!4719790 (= (= lt!1885073 lt!1884696) (= lambda!214987 lambda!214986))))

(assert (=> bs!1106652 (= (= lt!1885073 lt!1884963) (= lambda!214987 lambda!214974))))

(assert (=> bs!1106654 (= (= lt!1885073 lt!1884696) (= lambda!214987 lambda!214985))))

(assert (=> bs!1106655 (= (= lt!1885073 lt!1884990) (= lambda!214987 lambda!214982))))

(assert (=> bs!1106656 (= (= lt!1885073 lt!1884817) (= lambda!214987 lambda!214951))))

(assert (=> bs!1106657 (= (= lt!1885073 lt!1884696) (= lambda!214987 lambda!214977))))

(assert (=> bs!1106658 (= (= lt!1885073 lt!1884835) (= lambda!214987 lambda!214950))))

(assert (=> bs!1106653 (= (= lt!1885073 lt!1884696) (= lambda!214987 lambda!214979))))

(assert (=> bs!1106659 (= (= lt!1885073 lt!1884696) (= lambda!214987 lambda!214948))))

(assert (=> bs!1106660 (= (= lt!1885073 lt!1884945) (= lambda!214987 lambda!214975))))

(assert (=> bs!1106661 (not (= lambda!214987 lambda!214879))))

(assert (=> bs!1106658 (= (= lt!1885073 lt!1884696) (= lambda!214987 lambda!214949))))

(assert (=> b!4719790 true))

(declare-fun bs!1106662 () Bool)

(declare-fun d!1502050 () Bool)

(assert (= bs!1106662 (and d!1502050 b!4719716)))

(declare-fun lt!1885055 () ListMap!5269)

(declare-fun lambda!214988 () Int)

(assert (=> bs!1106662 (= (= lt!1885055 lt!1884696) (= lambda!214988 lambda!214972))))

(declare-fun bs!1106663 () Bool)

(assert (= bs!1106663 (and d!1502050 b!4719715)))

(assert (=> bs!1106663 (= (= lt!1885055 lt!1884696) (= lambda!214988 lambda!214973))))

(declare-fun bs!1106664 () Bool)

(assert (= bs!1106664 (and d!1502050 b!4719725)))

(assert (=> bs!1106664 (= (= lt!1885055 lt!1885008) (= lambda!214988 lambda!214981))))

(declare-fun bs!1106665 () Bool)

(assert (= bs!1106665 (and d!1502050 b!4719790)))

(assert (=> bs!1106665 (= (= lt!1885055 lt!1884696) (= lambda!214988 lambda!214986))))

(assert (=> bs!1106663 (= (= lt!1885055 lt!1884963) (= lambda!214988 lambda!214974))))

(declare-fun bs!1106666 () Bool)

(assert (= bs!1106666 (and d!1502050 b!4719791)))

(assert (=> bs!1106666 (= (= lt!1885055 lt!1884696) (= lambda!214988 lambda!214985))))

(declare-fun bs!1106667 () Bool)

(assert (= bs!1106667 (and d!1502050 d!1501954)))

(assert (=> bs!1106667 (= (= lt!1885055 lt!1884817) (= lambda!214988 lambda!214951))))

(declare-fun bs!1106668 () Bool)

(assert (= bs!1106668 (and d!1502050 b!4719726)))

(assert (=> bs!1106668 (= (= lt!1885055 lt!1884696) (= lambda!214988 lambda!214977))))

(declare-fun bs!1106669 () Bool)

(assert (= bs!1106669 (and d!1502050 b!4719652)))

(assert (=> bs!1106669 (= (= lt!1885055 lt!1884835) (= lambda!214988 lambda!214950))))

(assert (=> bs!1106664 (= (= lt!1885055 lt!1884696) (= lambda!214988 lambda!214979))))

(declare-fun bs!1106670 () Bool)

(assert (= bs!1106670 (and d!1502050 b!4719653)))

(assert (=> bs!1106670 (= (= lt!1885055 lt!1884696) (= lambda!214988 lambda!214948))))

(declare-fun bs!1106671 () Bool)

(assert (= bs!1106671 (and d!1502050 d!1502028)))

(assert (=> bs!1106671 (= (= lt!1885055 lt!1884945) (= lambda!214988 lambda!214975))))

(declare-fun bs!1106672 () Bool)

(assert (= bs!1106672 (and d!1502050 d!1501952)))

(assert (=> bs!1106672 (not (= lambda!214988 lambda!214879))))

(assert (=> bs!1106669 (= (= lt!1885055 lt!1884696) (= lambda!214988 lambda!214949))))

(assert (=> bs!1106665 (= (= lt!1885055 lt!1885073) (= lambda!214988 lambda!214987))))

(declare-fun bs!1106673 () Bool)

(assert (= bs!1106673 (and d!1502050 d!1502034)))

(assert (=> bs!1106673 (= (= lt!1885055 lt!1884990) (= lambda!214988 lambda!214982))))

(assert (=> d!1502050 true))

(declare-fun b!4719789 () Bool)

(declare-fun e!2943468 () Bool)

(assert (=> b!4719789 (= e!2943468 (forall!11574 (toList!5906 lt!1884696) lambda!214987))))

(declare-fun bm!329979 () Bool)

(declare-fun call!329984 () Unit!129252)

(assert (=> bm!329979 (= call!329984 (lemmaContainsAllItsOwnKeys!791 lt!1884696))))

(declare-fun c!806018 () Bool)

(declare-fun call!329985 () Bool)

(declare-fun bm!329980 () Bool)

(assert (=> bm!329980 (= call!329985 (forall!11574 (ite c!806018 (toList!5906 lt!1884696) newBucket!218) (ite c!806018 lambda!214985 lambda!214987)))))

(declare-fun e!2943470 () ListMap!5269)

(assert (=> b!4719790 (= e!2943470 lt!1885073)))

(declare-fun lt!1885054 () ListMap!5269)

(assert (=> b!4719790 (= lt!1885054 (+!2263 lt!1884696 (h!59153 newBucket!218)))))

(assert (=> b!4719790 (= lt!1885073 (addToMapMapFromBucket!1438 (t!360192 newBucket!218) (+!2263 lt!1884696 (h!59153 newBucket!218))))))

(declare-fun lt!1885064 () Unit!129252)

(assert (=> b!4719790 (= lt!1885064 call!329984)))

(declare-fun call!329986 () Bool)

(assert (=> b!4719790 call!329986))

(declare-fun lt!1885056 () Unit!129252)

(assert (=> b!4719790 (= lt!1885056 lt!1885064)))

(assert (=> b!4719790 (forall!11574 (toList!5906 lt!1885054) lambda!214987)))

(declare-fun lt!1885071 () Unit!129252)

(declare-fun Unit!129324 () Unit!129252)

(assert (=> b!4719790 (= lt!1885071 Unit!129324)))

(assert (=> b!4719790 (forall!11574 (t!360192 newBucket!218) lambda!214987)))

(declare-fun lt!1885057 () Unit!129252)

(declare-fun Unit!129325 () Unit!129252)

(assert (=> b!4719790 (= lt!1885057 Unit!129325)))

(declare-fun lt!1885061 () Unit!129252)

(declare-fun Unit!129326 () Unit!129252)

(assert (=> b!4719790 (= lt!1885061 Unit!129326)))

(declare-fun lt!1885072 () Unit!129252)

(assert (=> b!4719790 (= lt!1885072 (forallContained!3629 (toList!5906 lt!1885054) lambda!214987 (h!59153 newBucket!218)))))

(assert (=> b!4719790 (contains!16156 lt!1885054 (_1!30507 (h!59153 newBucket!218)))))

(declare-fun lt!1885065 () Unit!129252)

(declare-fun Unit!129327 () Unit!129252)

(assert (=> b!4719790 (= lt!1885065 Unit!129327)))

(assert (=> b!4719790 (contains!16156 lt!1885073 (_1!30507 (h!59153 newBucket!218)))))

(declare-fun lt!1885069 () Unit!129252)

(declare-fun Unit!129328 () Unit!129252)

(assert (=> b!4719790 (= lt!1885069 Unit!129328)))

(assert (=> b!4719790 call!329985))

(declare-fun lt!1885058 () Unit!129252)

(declare-fun Unit!129329 () Unit!129252)

(assert (=> b!4719790 (= lt!1885058 Unit!129329)))

(assert (=> b!4719790 (forall!11574 (toList!5906 lt!1885054) lambda!214987)))

(declare-fun lt!1885059 () Unit!129252)

(declare-fun Unit!129330 () Unit!129252)

(assert (=> b!4719790 (= lt!1885059 Unit!129330)))

(declare-fun lt!1885066 () Unit!129252)

(declare-fun Unit!129331 () Unit!129252)

(assert (=> b!4719790 (= lt!1885066 Unit!129331)))

(declare-fun lt!1885062 () Unit!129252)

(assert (=> b!4719790 (= lt!1885062 (addForallContainsKeyThenBeforeAdding!790 lt!1884696 lt!1885073 (_1!30507 (h!59153 newBucket!218)) (_2!30507 (h!59153 newBucket!218))))))

(assert (=> b!4719790 (forall!11574 (toList!5906 lt!1884696) lambda!214987)))

(declare-fun lt!1885067 () Unit!129252)

(assert (=> b!4719790 (= lt!1885067 lt!1885062)))

(assert (=> b!4719790 (forall!11574 (toList!5906 lt!1884696) lambda!214987)))

(declare-fun lt!1885068 () Unit!129252)

(declare-fun Unit!129332 () Unit!129252)

(assert (=> b!4719790 (= lt!1885068 Unit!129332)))

(declare-fun res!1996388 () Bool)

(assert (=> b!4719790 (= res!1996388 (forall!11574 newBucket!218 lambda!214987))))

(assert (=> b!4719790 (=> (not res!1996388) (not e!2943468))))

(assert (=> b!4719790 e!2943468))

(declare-fun lt!1885060 () Unit!129252)

(declare-fun Unit!129333 () Unit!129252)

(assert (=> b!4719790 (= lt!1885060 Unit!129333)))

(assert (=> b!4719791 (= e!2943470 lt!1884696)))

(declare-fun lt!1885053 () Unit!129252)

(assert (=> b!4719791 (= lt!1885053 call!329984)))

(assert (=> b!4719791 call!329986))

(declare-fun lt!1885070 () Unit!129252)

(assert (=> b!4719791 (= lt!1885070 lt!1885053)))

(assert (=> b!4719791 call!329985))

(declare-fun lt!1885063 () Unit!129252)

(declare-fun Unit!129334 () Unit!129252)

(assert (=> b!4719791 (= lt!1885063 Unit!129334)))

(declare-fun e!2943469 () Bool)

(assert (=> d!1502050 e!2943469))

(declare-fun res!1996389 () Bool)

(assert (=> d!1502050 (=> (not res!1996389) (not e!2943469))))

(assert (=> d!1502050 (= res!1996389 (forall!11574 newBucket!218 lambda!214988))))

(assert (=> d!1502050 (= lt!1885055 e!2943470)))

(assert (=> d!1502050 (= c!806018 ((_ is Nil!52812) newBucket!218))))

(assert (=> d!1502050 (noDuplicateKeys!2008 newBucket!218)))

(assert (=> d!1502050 (= (addToMapMapFromBucket!1438 newBucket!218 lt!1884696) lt!1885055)))

(declare-fun b!4719792 () Bool)

(assert (=> b!4719792 (= e!2943469 (invariantList!1505 (toList!5906 lt!1885055)))))

(declare-fun bm!329981 () Bool)

(assert (=> bm!329981 (= call!329986 (forall!11574 (toList!5906 lt!1884696) (ite c!806018 lambda!214985 lambda!214986)))))

(declare-fun b!4719793 () Bool)

(declare-fun res!1996390 () Bool)

(assert (=> b!4719793 (=> (not res!1996390) (not e!2943469))))

(assert (=> b!4719793 (= res!1996390 (forall!11574 (toList!5906 lt!1884696) lambda!214988))))

(assert (= (and d!1502050 c!806018) b!4719791))

(assert (= (and d!1502050 (not c!806018)) b!4719790))

(assert (= (and b!4719790 res!1996388) b!4719789))

(assert (= (or b!4719791 b!4719790) bm!329979))

(assert (= (or b!4719791 b!4719790) bm!329980))

(assert (= (or b!4719791 b!4719790) bm!329981))

(assert (= (and d!1502050 res!1996389) b!4719793))

(assert (= (and b!4719793 res!1996390) b!4719792))

(declare-fun m!5652119 () Bool)

(assert (=> b!4719792 m!5652119))

(declare-fun m!5652121 () Bool)

(assert (=> bm!329980 m!5652121))

(assert (=> bm!329979 m!5651717))

(declare-fun m!5652123 () Bool)

(assert (=> b!4719793 m!5652123))

(declare-fun m!5652125 () Bool)

(assert (=> b!4719790 m!5652125))

(declare-fun m!5652127 () Bool)

(assert (=> b!4719790 m!5652127))

(declare-fun m!5652129 () Bool)

(assert (=> b!4719790 m!5652129))

(declare-fun m!5652131 () Bool)

(assert (=> b!4719790 m!5652131))

(declare-fun m!5652133 () Bool)

(assert (=> b!4719790 m!5652133))

(declare-fun m!5652135 () Bool)

(assert (=> b!4719790 m!5652135))

(declare-fun m!5652137 () Bool)

(assert (=> b!4719790 m!5652137))

(declare-fun m!5652139 () Bool)

(assert (=> b!4719790 m!5652139))

(assert (=> b!4719790 m!5652129))

(declare-fun m!5652141 () Bool)

(assert (=> b!4719790 m!5652141))

(declare-fun m!5652143 () Bool)

(assert (=> b!4719790 m!5652143))

(assert (=> b!4719790 m!5652135))

(assert (=> b!4719790 m!5652137))

(declare-fun m!5652145 () Bool)

(assert (=> bm!329981 m!5652145))

(declare-fun m!5652147 () Bool)

(assert (=> d!1502050 m!5652147))

(assert (=> d!1502050 m!5651595))

(assert (=> b!4719789 m!5652135))

(assert (=> b!4719562 d!1502050))

(declare-fun bs!1106674 () Bool)

(declare-fun b!4719796 () Bool)

(assert (= bs!1106674 (and b!4719796 b!4719716)))

(declare-fun lambda!214989 () Int)

(assert (=> bs!1106674 (= lambda!214989 lambda!214972)))

(declare-fun bs!1106675 () Bool)

(assert (= bs!1106675 (and b!4719796 b!4719715)))

(assert (=> bs!1106675 (= lambda!214989 lambda!214973)))

(declare-fun bs!1106676 () Bool)

(assert (= bs!1106676 (and b!4719796 b!4719725)))

(assert (=> bs!1106676 (= (= lt!1884696 lt!1885008) (= lambda!214989 lambda!214981))))

(assert (=> bs!1106675 (= (= lt!1884696 lt!1884963) (= lambda!214989 lambda!214974))))

(declare-fun bs!1106677 () Bool)

(assert (= bs!1106677 (and b!4719796 b!4719791)))

(assert (=> bs!1106677 (= lambda!214989 lambda!214985)))

(declare-fun bs!1106678 () Bool)

(assert (= bs!1106678 (and b!4719796 d!1501954)))

(assert (=> bs!1106678 (= (= lt!1884696 lt!1884817) (= lambda!214989 lambda!214951))))

(declare-fun bs!1106679 () Bool)

(assert (= bs!1106679 (and b!4719796 b!4719726)))

(assert (=> bs!1106679 (= lambda!214989 lambda!214977)))

(declare-fun bs!1106680 () Bool)

(assert (= bs!1106680 (and b!4719796 b!4719652)))

(assert (=> bs!1106680 (= (= lt!1884696 lt!1884835) (= lambda!214989 lambda!214950))))

(assert (=> bs!1106676 (= lambda!214989 lambda!214979)))

(declare-fun bs!1106681 () Bool)

(assert (= bs!1106681 (and b!4719796 b!4719653)))

(assert (=> bs!1106681 (= lambda!214989 lambda!214948)))

(declare-fun bs!1106682 () Bool)

(assert (= bs!1106682 (and b!4719796 d!1502028)))

(assert (=> bs!1106682 (= (= lt!1884696 lt!1884945) (= lambda!214989 lambda!214975))))

(declare-fun bs!1106683 () Bool)

(assert (= bs!1106683 (and b!4719796 d!1501952)))

(assert (=> bs!1106683 (not (= lambda!214989 lambda!214879))))

(assert (=> bs!1106680 (= lambda!214989 lambda!214949)))

(declare-fun bs!1106684 () Bool)

(assert (= bs!1106684 (and b!4719796 b!4719790)))

(assert (=> bs!1106684 (= lambda!214989 lambda!214986)))

(declare-fun bs!1106685 () Bool)

(assert (= bs!1106685 (and b!4719796 d!1502050)))

(assert (=> bs!1106685 (= (= lt!1884696 lt!1885055) (= lambda!214989 lambda!214988))))

(assert (=> bs!1106684 (= (= lt!1884696 lt!1885073) (= lambda!214989 lambda!214987))))

(declare-fun bs!1106686 () Bool)

(assert (= bs!1106686 (and b!4719796 d!1502034)))

(assert (=> bs!1106686 (= (= lt!1884696 lt!1884990) (= lambda!214989 lambda!214982))))

(assert (=> b!4719796 true))

(declare-fun bs!1106687 () Bool)

(declare-fun b!4719795 () Bool)

(assert (= bs!1106687 (and b!4719795 b!4719716)))

(declare-fun lambda!214990 () Int)

(assert (=> bs!1106687 (= lambda!214990 lambda!214972)))

(declare-fun bs!1106688 () Bool)

(assert (= bs!1106688 (and b!4719795 b!4719725)))

(assert (=> bs!1106688 (= (= lt!1884696 lt!1885008) (= lambda!214990 lambda!214981))))

(declare-fun bs!1106689 () Bool)

(assert (= bs!1106689 (and b!4719795 b!4719715)))

(assert (=> bs!1106689 (= (= lt!1884696 lt!1884963) (= lambda!214990 lambda!214974))))

(declare-fun bs!1106690 () Bool)

(assert (= bs!1106690 (and b!4719795 b!4719791)))

(assert (=> bs!1106690 (= lambda!214990 lambda!214985)))

(declare-fun bs!1106691 () Bool)

(assert (= bs!1106691 (and b!4719795 d!1501954)))

(assert (=> bs!1106691 (= (= lt!1884696 lt!1884817) (= lambda!214990 lambda!214951))))

(declare-fun bs!1106692 () Bool)

(assert (= bs!1106692 (and b!4719795 b!4719726)))

(assert (=> bs!1106692 (= lambda!214990 lambda!214977)))

(declare-fun bs!1106693 () Bool)

(assert (= bs!1106693 (and b!4719795 b!4719652)))

(assert (=> bs!1106693 (= (= lt!1884696 lt!1884835) (= lambda!214990 lambda!214950))))

(assert (=> bs!1106688 (= lambda!214990 lambda!214979)))

(declare-fun bs!1106694 () Bool)

(assert (= bs!1106694 (and b!4719795 b!4719653)))

(assert (=> bs!1106694 (= lambda!214990 lambda!214948)))

(declare-fun bs!1106695 () Bool)

(assert (= bs!1106695 (and b!4719795 d!1502028)))

(assert (=> bs!1106695 (= (= lt!1884696 lt!1884945) (= lambda!214990 lambda!214975))))

(declare-fun bs!1106696 () Bool)

(assert (= bs!1106696 (and b!4719795 d!1501952)))

(assert (=> bs!1106696 (not (= lambda!214990 lambda!214879))))

(assert (=> bs!1106693 (= lambda!214990 lambda!214949)))

(declare-fun bs!1106697 () Bool)

(assert (= bs!1106697 (and b!4719795 b!4719796)))

(assert (=> bs!1106697 (= lambda!214990 lambda!214989)))

(assert (=> bs!1106689 (= lambda!214990 lambda!214973)))

(declare-fun bs!1106698 () Bool)

(assert (= bs!1106698 (and b!4719795 b!4719790)))

(assert (=> bs!1106698 (= lambda!214990 lambda!214986)))

(declare-fun bs!1106699 () Bool)

(assert (= bs!1106699 (and b!4719795 d!1502050)))

(assert (=> bs!1106699 (= (= lt!1884696 lt!1885055) (= lambda!214990 lambda!214988))))

(assert (=> bs!1106698 (= (= lt!1884696 lt!1885073) (= lambda!214990 lambda!214987))))

(declare-fun bs!1106700 () Bool)

(assert (= bs!1106700 (and b!4719795 d!1502034)))

(assert (=> bs!1106700 (= (= lt!1884696 lt!1884990) (= lambda!214990 lambda!214982))))

(assert (=> b!4719795 true))

(declare-fun lambda!214991 () Int)

(declare-fun lt!1885094 () ListMap!5269)

(assert (=> bs!1106687 (= (= lt!1885094 lt!1884696) (= lambda!214991 lambda!214972))))

(assert (=> bs!1106688 (= (= lt!1885094 lt!1885008) (= lambda!214991 lambda!214981))))

(assert (=> bs!1106689 (= (= lt!1885094 lt!1884963) (= lambda!214991 lambda!214974))))

(assert (=> bs!1106690 (= (= lt!1885094 lt!1884696) (= lambda!214991 lambda!214985))))

(assert (=> bs!1106691 (= (= lt!1885094 lt!1884817) (= lambda!214991 lambda!214951))))

(assert (=> bs!1106692 (= (= lt!1885094 lt!1884696) (= lambda!214991 lambda!214977))))

(assert (=> bs!1106693 (= (= lt!1885094 lt!1884835) (= lambda!214991 lambda!214950))))

(assert (=> bs!1106688 (= (= lt!1885094 lt!1884696) (= lambda!214991 lambda!214979))))

(assert (=> bs!1106694 (= (= lt!1885094 lt!1884696) (= lambda!214991 lambda!214948))))

(assert (=> bs!1106695 (= (= lt!1885094 lt!1884945) (= lambda!214991 lambda!214975))))

(assert (=> b!4719795 (= (= lt!1885094 lt!1884696) (= lambda!214991 lambda!214990))))

(assert (=> bs!1106696 (not (= lambda!214991 lambda!214879))))

(assert (=> bs!1106693 (= (= lt!1885094 lt!1884696) (= lambda!214991 lambda!214949))))

(assert (=> bs!1106697 (= (= lt!1885094 lt!1884696) (= lambda!214991 lambda!214989))))

(assert (=> bs!1106689 (= (= lt!1885094 lt!1884696) (= lambda!214991 lambda!214973))))

(assert (=> bs!1106698 (= (= lt!1885094 lt!1884696) (= lambda!214991 lambda!214986))))

(assert (=> bs!1106699 (= (= lt!1885094 lt!1885055) (= lambda!214991 lambda!214988))))

(assert (=> bs!1106698 (= (= lt!1885094 lt!1885073) (= lambda!214991 lambda!214987))))

(assert (=> bs!1106700 (= (= lt!1885094 lt!1884990) (= lambda!214991 lambda!214982))))

(assert (=> b!4719795 true))

(declare-fun bs!1106701 () Bool)

(declare-fun d!1502052 () Bool)

(assert (= bs!1106701 (and d!1502052 b!4719716)))

(declare-fun lt!1885076 () ListMap!5269)

(declare-fun lambda!214992 () Int)

(assert (=> bs!1106701 (= (= lt!1885076 lt!1884696) (= lambda!214992 lambda!214972))))

(declare-fun bs!1106702 () Bool)

(assert (= bs!1106702 (and d!1502052 b!4719725)))

(assert (=> bs!1106702 (= (= lt!1885076 lt!1885008) (= lambda!214992 lambda!214981))))

(declare-fun bs!1106703 () Bool)

(assert (= bs!1106703 (and d!1502052 b!4719715)))

(assert (=> bs!1106703 (= (= lt!1885076 lt!1884963) (= lambda!214992 lambda!214974))))

(declare-fun bs!1106704 () Bool)

(assert (= bs!1106704 (and d!1502052 b!4719791)))

(assert (=> bs!1106704 (= (= lt!1885076 lt!1884696) (= lambda!214992 lambda!214985))))

(declare-fun bs!1106705 () Bool)

(assert (= bs!1106705 (and d!1502052 d!1501954)))

(assert (=> bs!1106705 (= (= lt!1885076 lt!1884817) (= lambda!214992 lambda!214951))))

(declare-fun bs!1106706 () Bool)

(assert (= bs!1106706 (and d!1502052 b!4719726)))

(assert (=> bs!1106706 (= (= lt!1885076 lt!1884696) (= lambda!214992 lambda!214977))))

(declare-fun bs!1106707 () Bool)

(assert (= bs!1106707 (and d!1502052 b!4719652)))

(assert (=> bs!1106707 (= (= lt!1885076 lt!1884835) (= lambda!214992 lambda!214950))))

(assert (=> bs!1106702 (= (= lt!1885076 lt!1884696) (= lambda!214992 lambda!214979))))

(declare-fun bs!1106708 () Bool)

(assert (= bs!1106708 (and d!1502052 b!4719653)))

(assert (=> bs!1106708 (= (= lt!1885076 lt!1884696) (= lambda!214992 lambda!214948))))

(declare-fun bs!1106709 () Bool)

(assert (= bs!1106709 (and d!1502052 d!1502028)))

(assert (=> bs!1106709 (= (= lt!1885076 lt!1884945) (= lambda!214992 lambda!214975))))

(declare-fun bs!1106710 () Bool)

(assert (= bs!1106710 (and d!1502052 b!4719795)))

(assert (=> bs!1106710 (= (= lt!1885076 lt!1885094) (= lambda!214992 lambda!214991))))

(assert (=> bs!1106710 (= (= lt!1885076 lt!1884696) (= lambda!214992 lambda!214990))))

(declare-fun bs!1106711 () Bool)

(assert (= bs!1106711 (and d!1502052 d!1501952)))

(assert (=> bs!1106711 (not (= lambda!214992 lambda!214879))))

(assert (=> bs!1106707 (= (= lt!1885076 lt!1884696) (= lambda!214992 lambda!214949))))

(declare-fun bs!1106712 () Bool)

(assert (= bs!1106712 (and d!1502052 b!4719796)))

(assert (=> bs!1106712 (= (= lt!1885076 lt!1884696) (= lambda!214992 lambda!214989))))

(assert (=> bs!1106703 (= (= lt!1885076 lt!1884696) (= lambda!214992 lambda!214973))))

(declare-fun bs!1106713 () Bool)

(assert (= bs!1106713 (and d!1502052 b!4719790)))

(assert (=> bs!1106713 (= (= lt!1885076 lt!1884696) (= lambda!214992 lambda!214986))))

(declare-fun bs!1106714 () Bool)

(assert (= bs!1106714 (and d!1502052 d!1502050)))

(assert (=> bs!1106714 (= (= lt!1885076 lt!1885055) (= lambda!214992 lambda!214988))))

(assert (=> bs!1106713 (= (= lt!1885076 lt!1885073) (= lambda!214992 lambda!214987))))

(declare-fun bs!1106715 () Bool)

(assert (= bs!1106715 (and d!1502052 d!1502034)))

(assert (=> bs!1106715 (= (= lt!1885076 lt!1884990) (= lambda!214992 lambda!214982))))

(assert (=> d!1502052 true))

(declare-fun b!4719794 () Bool)

(declare-fun e!2943471 () Bool)

(assert (=> b!4719794 (= e!2943471 (forall!11574 (toList!5906 lt!1884696) lambda!214991))))

(declare-fun bm!329982 () Bool)

(declare-fun call!329987 () Unit!129252)

(assert (=> bm!329982 (= call!329987 (lemmaContainsAllItsOwnKeys!791 lt!1884696))))

(declare-fun c!806019 () Bool)

(declare-fun bm!329983 () Bool)

(declare-fun call!329988 () Bool)

(assert (=> bm!329983 (= call!329988 (forall!11574 (ite c!806019 (toList!5906 lt!1884696) lt!1884694) (ite c!806019 lambda!214989 lambda!214991)))))

(declare-fun e!2943473 () ListMap!5269)

(assert (=> b!4719795 (= e!2943473 lt!1885094)))

(declare-fun lt!1885075 () ListMap!5269)

(assert (=> b!4719795 (= lt!1885075 (+!2263 lt!1884696 (h!59153 lt!1884694)))))

(assert (=> b!4719795 (= lt!1885094 (addToMapMapFromBucket!1438 (t!360192 lt!1884694) (+!2263 lt!1884696 (h!59153 lt!1884694))))))

(declare-fun lt!1885085 () Unit!129252)

(assert (=> b!4719795 (= lt!1885085 call!329987)))

(declare-fun call!329989 () Bool)

(assert (=> b!4719795 call!329989))

(declare-fun lt!1885077 () Unit!129252)

(assert (=> b!4719795 (= lt!1885077 lt!1885085)))

(assert (=> b!4719795 (forall!11574 (toList!5906 lt!1885075) lambda!214991)))

(declare-fun lt!1885092 () Unit!129252)

(declare-fun Unit!129346 () Unit!129252)

(assert (=> b!4719795 (= lt!1885092 Unit!129346)))

(assert (=> b!4719795 (forall!11574 (t!360192 lt!1884694) lambda!214991)))

(declare-fun lt!1885078 () Unit!129252)

(declare-fun Unit!129347 () Unit!129252)

(assert (=> b!4719795 (= lt!1885078 Unit!129347)))

(declare-fun lt!1885082 () Unit!129252)

(declare-fun Unit!129348 () Unit!129252)

(assert (=> b!4719795 (= lt!1885082 Unit!129348)))

(declare-fun lt!1885093 () Unit!129252)

(assert (=> b!4719795 (= lt!1885093 (forallContained!3629 (toList!5906 lt!1885075) lambda!214991 (h!59153 lt!1884694)))))

(assert (=> b!4719795 (contains!16156 lt!1885075 (_1!30507 (h!59153 lt!1884694)))))

(declare-fun lt!1885086 () Unit!129252)

(declare-fun Unit!129349 () Unit!129252)

(assert (=> b!4719795 (= lt!1885086 Unit!129349)))

(assert (=> b!4719795 (contains!16156 lt!1885094 (_1!30507 (h!59153 lt!1884694)))))

(declare-fun lt!1885090 () Unit!129252)

(declare-fun Unit!129350 () Unit!129252)

(assert (=> b!4719795 (= lt!1885090 Unit!129350)))

(assert (=> b!4719795 call!329988))

(declare-fun lt!1885079 () Unit!129252)

(declare-fun Unit!129351 () Unit!129252)

(assert (=> b!4719795 (= lt!1885079 Unit!129351)))

(assert (=> b!4719795 (forall!11574 (toList!5906 lt!1885075) lambda!214991)))

(declare-fun lt!1885080 () Unit!129252)

(declare-fun Unit!129352 () Unit!129252)

(assert (=> b!4719795 (= lt!1885080 Unit!129352)))

(declare-fun lt!1885087 () Unit!129252)

(declare-fun Unit!129353 () Unit!129252)

(assert (=> b!4719795 (= lt!1885087 Unit!129353)))

(declare-fun lt!1885083 () Unit!129252)

(assert (=> b!4719795 (= lt!1885083 (addForallContainsKeyThenBeforeAdding!790 lt!1884696 lt!1885094 (_1!30507 (h!59153 lt!1884694)) (_2!30507 (h!59153 lt!1884694))))))

(assert (=> b!4719795 (forall!11574 (toList!5906 lt!1884696) lambda!214991)))

(declare-fun lt!1885088 () Unit!129252)

(assert (=> b!4719795 (= lt!1885088 lt!1885083)))

(assert (=> b!4719795 (forall!11574 (toList!5906 lt!1884696) lambda!214991)))

(declare-fun lt!1885089 () Unit!129252)

(declare-fun Unit!129354 () Unit!129252)

(assert (=> b!4719795 (= lt!1885089 Unit!129354)))

(declare-fun res!1996391 () Bool)

(assert (=> b!4719795 (= res!1996391 (forall!11574 lt!1884694 lambda!214991))))

(assert (=> b!4719795 (=> (not res!1996391) (not e!2943471))))

(assert (=> b!4719795 e!2943471))

(declare-fun lt!1885081 () Unit!129252)

(declare-fun Unit!129355 () Unit!129252)

(assert (=> b!4719795 (= lt!1885081 Unit!129355)))

(assert (=> b!4719796 (= e!2943473 lt!1884696)))

(declare-fun lt!1885074 () Unit!129252)

(assert (=> b!4719796 (= lt!1885074 call!329987)))

(assert (=> b!4719796 call!329989))

(declare-fun lt!1885091 () Unit!129252)

(assert (=> b!4719796 (= lt!1885091 lt!1885074)))

(assert (=> b!4719796 call!329988))

(declare-fun lt!1885084 () Unit!129252)

(declare-fun Unit!129356 () Unit!129252)

(assert (=> b!4719796 (= lt!1885084 Unit!129356)))

(declare-fun e!2943472 () Bool)

(assert (=> d!1502052 e!2943472))

(declare-fun res!1996392 () Bool)

(assert (=> d!1502052 (=> (not res!1996392) (not e!2943472))))

(assert (=> d!1502052 (= res!1996392 (forall!11574 lt!1884694 lambda!214992))))

(assert (=> d!1502052 (= lt!1885076 e!2943473)))

(assert (=> d!1502052 (= c!806019 ((_ is Nil!52812) lt!1884694))))

(assert (=> d!1502052 (noDuplicateKeys!2008 lt!1884694)))

(assert (=> d!1502052 (= (addToMapMapFromBucket!1438 lt!1884694 lt!1884696) lt!1885076)))

(declare-fun b!4719797 () Bool)

(assert (=> b!4719797 (= e!2943472 (invariantList!1505 (toList!5906 lt!1885076)))))

(declare-fun bm!329984 () Bool)

(assert (=> bm!329984 (= call!329989 (forall!11574 (toList!5906 lt!1884696) (ite c!806019 lambda!214989 lambda!214990)))))

(declare-fun b!4719798 () Bool)

(declare-fun res!1996393 () Bool)

(assert (=> b!4719798 (=> (not res!1996393) (not e!2943472))))

(assert (=> b!4719798 (= res!1996393 (forall!11574 (toList!5906 lt!1884696) lambda!214992))))

(assert (= (and d!1502052 c!806019) b!4719796))

(assert (= (and d!1502052 (not c!806019)) b!4719795))

(assert (= (and b!4719795 res!1996391) b!4719794))

(assert (= (or b!4719796 b!4719795) bm!329982))

(assert (= (or b!4719796 b!4719795) bm!329983))

(assert (= (or b!4719796 b!4719795) bm!329984))

(assert (= (and d!1502052 res!1996392) b!4719798))

(assert (= (and b!4719798 res!1996393) b!4719797))

(declare-fun m!5652149 () Bool)

(assert (=> b!4719797 m!5652149))

(declare-fun m!5652151 () Bool)

(assert (=> bm!329983 m!5652151))

(assert (=> bm!329982 m!5651717))

(declare-fun m!5652153 () Bool)

(assert (=> b!4719798 m!5652153))

(declare-fun m!5652155 () Bool)

(assert (=> b!4719795 m!5652155))

(declare-fun m!5652157 () Bool)

(assert (=> b!4719795 m!5652157))

(declare-fun m!5652159 () Bool)

(assert (=> b!4719795 m!5652159))

(declare-fun m!5652161 () Bool)

(assert (=> b!4719795 m!5652161))

(declare-fun m!5652163 () Bool)

(assert (=> b!4719795 m!5652163))

(declare-fun m!5652165 () Bool)

(assert (=> b!4719795 m!5652165))

(declare-fun m!5652167 () Bool)

(assert (=> b!4719795 m!5652167))

(declare-fun m!5652169 () Bool)

(assert (=> b!4719795 m!5652169))

(assert (=> b!4719795 m!5652159))

(declare-fun m!5652171 () Bool)

(assert (=> b!4719795 m!5652171))

(declare-fun m!5652173 () Bool)

(assert (=> b!4719795 m!5652173))

(assert (=> b!4719795 m!5652165))

(assert (=> b!4719795 m!5652167))

(declare-fun m!5652175 () Bool)

(assert (=> bm!329984 m!5652175))

(declare-fun m!5652177 () Bool)

(assert (=> d!1502052 m!5652177))

(assert (=> d!1502052 m!5651947))

(assert (=> b!4719794 m!5652165))

(assert (=> b!4719562 d!1502052))

(declare-fun d!1502054 () Bool)

(declare-fun res!1996394 () Bool)

(declare-fun e!2943474 () Bool)

(assert (=> d!1502054 (=> res!1996394 e!2943474)))

(assert (=> d!1502054 (= res!1996394 (not ((_ is Cons!52812) newBucket!218)))))

(assert (=> d!1502054 (= (noDuplicateKeys!2008 newBucket!218) e!2943474)))

(declare-fun b!4719799 () Bool)

(declare-fun e!2943475 () Bool)

(assert (=> b!4719799 (= e!2943474 e!2943475)))

(declare-fun res!1996395 () Bool)

(assert (=> b!4719799 (=> (not res!1996395) (not e!2943475))))

(assert (=> b!4719799 (= res!1996395 (not (containsKey!3357 (t!360192 newBucket!218) (_1!30507 (h!59153 newBucket!218)))))))

(declare-fun b!4719800 () Bool)

(assert (=> b!4719800 (= e!2943475 (noDuplicateKeys!2008 (t!360192 newBucket!218)))))

(assert (= (and d!1502054 (not res!1996394)) b!4719799))

(assert (= (and b!4719799 res!1996395) b!4719800))

(declare-fun m!5652179 () Bool)

(assert (=> b!4719799 m!5652179))

(declare-fun m!5652181 () Bool)

(assert (=> b!4719800 m!5652181))

(assert (=> b!4719552 d!1502054))

(declare-fun d!1502056 () Bool)

(assert (=> d!1502056 (= (head!10237 (toList!5905 lm!2023)) (h!59154 (toList!5905 lm!2023)))))

(assert (=> b!4719550 d!1502056))

(declare-fun bs!1106716 () Bool)

(declare-fun d!1502058 () Bool)

(assert (= bs!1106716 (and d!1502058 start!480328)))

(declare-fun lambda!214993 () Int)

(assert (=> bs!1106716 (= lambda!214993 lambda!214876)))

(declare-fun bs!1106717 () Bool)

(assert (= bs!1106717 (and d!1502058 d!1501984)))

(assert (=> bs!1106717 (= lambda!214993 lambda!214971)))

(declare-fun bs!1106718 () Bool)

(assert (= bs!1106718 (and d!1502058 d!1502048)))

(assert (=> bs!1106718 (= lambda!214993 lambda!214984)))

(declare-fun lt!1885095 () ListMap!5269)

(assert (=> d!1502058 (invariantList!1505 (toList!5906 lt!1885095))))

(declare-fun e!2943476 () ListMap!5269)

(assert (=> d!1502058 (= lt!1885095 e!2943476)))

(declare-fun c!806020 () Bool)

(assert (=> d!1502058 (= c!806020 ((_ is Cons!52813) (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))))

(assert (=> d!1502058 (forall!11572 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))) lambda!214993)))

(assert (=> d!1502058 (= (extractMap!2034 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))) lt!1885095)))

(declare-fun b!4719801 () Bool)

(assert (=> b!4719801 (= e!2943476 (addToMapMapFromBucket!1438 (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))))))

(declare-fun b!4719802 () Bool)

(assert (=> b!4719802 (= e!2943476 (ListMap!5270 Nil!52812))))

(assert (= (and d!1502058 c!806020) b!4719801))

(assert (= (and d!1502058 (not c!806020)) b!4719802))

(declare-fun m!5652183 () Bool)

(assert (=> d!1502058 m!5652183))

(declare-fun m!5652185 () Bool)

(assert (=> d!1502058 m!5652185))

(declare-fun m!5652187 () Bool)

(assert (=> b!4719801 m!5652187))

(assert (=> b!4719801 m!5652187))

(declare-fun m!5652189 () Bool)

(assert (=> b!4719801 m!5652189))

(assert (=> b!4719561 d!1502058))

(declare-fun bs!1106719 () Bool)

(declare-fun d!1502060 () Bool)

(assert (= bs!1106719 (and d!1502060 start!480328)))

(declare-fun lambda!214994 () Int)

(assert (=> bs!1106719 (= lambda!214994 lambda!214876)))

(declare-fun bs!1106720 () Bool)

(assert (= bs!1106720 (and d!1502060 d!1501984)))

(assert (=> bs!1106720 (= lambda!214994 lambda!214971)))

(declare-fun bs!1106721 () Bool)

(assert (= bs!1106721 (and d!1502060 d!1502048)))

(assert (=> bs!1106721 (= lambda!214994 lambda!214984)))

(declare-fun bs!1106722 () Bool)

(assert (= bs!1106722 (and d!1502060 d!1502058)))

(assert (=> bs!1106722 (= lambda!214994 lambda!214993)))

(declare-fun lt!1885096 () ListMap!5269)

(assert (=> d!1502060 (invariantList!1505 (toList!5906 lt!1885096))))

(declare-fun e!2943477 () ListMap!5269)

(assert (=> d!1502060 (= lt!1885096 e!2943477)))

(declare-fun c!806021 () Bool)

(assert (=> d!1502060 (= c!806021 ((_ is Cons!52813) lt!1884695))))

(assert (=> d!1502060 (forall!11572 lt!1884695 lambda!214994)))

(assert (=> d!1502060 (= (extractMap!2034 lt!1884695) lt!1885096)))

(declare-fun b!4719803 () Bool)

(assert (=> b!4719803 (= e!2943477 (addToMapMapFromBucket!1438 (_2!30508 (h!59154 lt!1884695)) (extractMap!2034 (t!360193 lt!1884695))))))

(declare-fun b!4719804 () Bool)

(assert (=> b!4719804 (= e!2943477 (ListMap!5270 Nil!52812))))

(assert (= (and d!1502060 c!806021) b!4719803))

(assert (= (and d!1502060 (not c!806021)) b!4719804))

(declare-fun m!5652191 () Bool)

(assert (=> d!1502060 m!5652191))

(declare-fun m!5652193 () Bool)

(assert (=> d!1502060 m!5652193))

(declare-fun m!5652195 () Bool)

(assert (=> b!4719803 m!5652195))

(assert (=> b!4719803 m!5652195))

(declare-fun m!5652197 () Bool)

(assert (=> b!4719803 m!5652197))

(assert (=> b!4719561 d!1502060))

(declare-fun bs!1106723 () Bool)

(declare-fun d!1502062 () Bool)

(assert (= bs!1106723 (and d!1502062 b!4719716)))

(declare-fun lambda!214995 () Int)

(assert (=> bs!1106723 (not (= lambda!214995 lambda!214972))))

(declare-fun bs!1106724 () Bool)

(assert (= bs!1106724 (and d!1502062 b!4719725)))

(assert (=> bs!1106724 (not (= lambda!214995 lambda!214981))))

(declare-fun bs!1106725 () Bool)

(assert (= bs!1106725 (and d!1502062 b!4719715)))

(assert (=> bs!1106725 (not (= lambda!214995 lambda!214974))))

(declare-fun bs!1106726 () Bool)

(assert (= bs!1106726 (and d!1502062 b!4719791)))

(assert (=> bs!1106726 (not (= lambda!214995 lambda!214985))))

(declare-fun bs!1106727 () Bool)

(assert (= bs!1106727 (and d!1502062 d!1501954)))

(assert (=> bs!1106727 (not (= lambda!214995 lambda!214951))))

(declare-fun bs!1106728 () Bool)

(assert (= bs!1106728 (and d!1502062 b!4719726)))

(assert (=> bs!1106728 (not (= lambda!214995 lambda!214977))))

(declare-fun bs!1106729 () Bool)

(assert (= bs!1106729 (and d!1502062 b!4719652)))

(assert (=> bs!1106729 (not (= lambda!214995 lambda!214950))))

(assert (=> bs!1106724 (not (= lambda!214995 lambda!214979))))

(declare-fun bs!1106730 () Bool)

(assert (= bs!1106730 (and d!1502062 b!4719653)))

(assert (=> bs!1106730 (not (= lambda!214995 lambda!214948))))

(declare-fun bs!1106731 () Bool)

(assert (= bs!1106731 (and d!1502062 d!1502028)))

(assert (=> bs!1106731 (not (= lambda!214995 lambda!214975))))

(declare-fun bs!1106732 () Bool)

(assert (= bs!1106732 (and d!1502062 b!4719795)))

(assert (=> bs!1106732 (not (= lambda!214995 lambda!214991))))

(assert (=> bs!1106732 (not (= lambda!214995 lambda!214990))))

(declare-fun bs!1106733 () Bool)

(assert (= bs!1106733 (and d!1502062 d!1501952)))

(assert (=> bs!1106733 (= lambda!214995 lambda!214879)))

(assert (=> bs!1106729 (not (= lambda!214995 lambda!214949))))

(declare-fun bs!1106734 () Bool)

(assert (= bs!1106734 (and d!1502062 b!4719796)))

(assert (=> bs!1106734 (not (= lambda!214995 lambda!214989))))

(assert (=> bs!1106725 (not (= lambda!214995 lambda!214973))))

(declare-fun bs!1106735 () Bool)

(assert (= bs!1106735 (and d!1502062 d!1502052)))

(assert (=> bs!1106735 (not (= lambda!214995 lambda!214992))))

(declare-fun bs!1106736 () Bool)

(assert (= bs!1106736 (and d!1502062 b!4719790)))

(assert (=> bs!1106736 (not (= lambda!214995 lambda!214986))))

(declare-fun bs!1106737 () Bool)

(assert (= bs!1106737 (and d!1502062 d!1502050)))

(assert (=> bs!1106737 (not (= lambda!214995 lambda!214988))))

(assert (=> bs!1106736 (not (= lambda!214995 lambda!214987))))

(declare-fun bs!1106738 () Bool)

(assert (= bs!1106738 (and d!1502062 d!1502034)))

(assert (=> bs!1106738 (not (= lambda!214995 lambda!214982))))

(assert (=> d!1502062 true))

(assert (=> d!1502062 true))

(assert (=> d!1502062 (= (allKeysSameHash!1834 oldBucket!34 hash!405 hashF!1323) (forall!11574 oldBucket!34 lambda!214995))))

(declare-fun bs!1106739 () Bool)

(assert (= bs!1106739 d!1502062))

(declare-fun m!5652199 () Bool)

(assert (=> bs!1106739 m!5652199))

(assert (=> b!4719559 d!1502062))

(declare-fun d!1502064 () Bool)

(declare-fun hash!4374 (Hashable!6377 K!14170) (_ BitVec 64))

(assert (=> d!1502064 (= (hash!4372 hashF!1323 key!4653) (hash!4374 hashF!1323 key!4653))))

(declare-fun bs!1106740 () Bool)

(assert (= bs!1106740 d!1502064))

(declare-fun m!5652201 () Bool)

(assert (=> bs!1106740 m!5652201))

(assert (=> b!4719560 d!1502064))

(declare-fun b!4719814 () Bool)

(declare-fun e!2943482 () List!52936)

(declare-fun e!2943483 () List!52936)

(assert (=> b!4719814 (= e!2943482 e!2943483)))

(declare-fun c!806027 () Bool)

(assert (=> b!4719814 (= c!806027 ((_ is Cons!52812) oldBucket!34))))

(declare-fun b!4719815 () Bool)

(assert (=> b!4719815 (= e!2943483 (Cons!52812 (h!59153 oldBucket!34) (removePairForKey!1603 (t!360192 oldBucket!34) key!4653)))))

(declare-fun b!4719813 () Bool)

(assert (=> b!4719813 (= e!2943482 (t!360192 oldBucket!34))))

(declare-fun b!4719816 () Bool)

(assert (=> b!4719816 (= e!2943483 Nil!52812)))

(declare-fun d!1502066 () Bool)

(declare-fun lt!1885099 () List!52936)

(assert (=> d!1502066 (not (containsKey!3357 lt!1885099 key!4653))))

(assert (=> d!1502066 (= lt!1885099 e!2943482)))

(declare-fun c!806026 () Bool)

(assert (=> d!1502066 (= c!806026 (and ((_ is Cons!52812) oldBucket!34) (= (_1!30507 (h!59153 oldBucket!34)) key!4653)))))

(assert (=> d!1502066 (noDuplicateKeys!2008 oldBucket!34)))

(assert (=> d!1502066 (= (removePairForKey!1603 oldBucket!34 key!4653) lt!1885099)))

(assert (= (and d!1502066 c!806026) b!4719813))

(assert (= (and d!1502066 (not c!806026)) b!4719814))

(assert (= (and b!4719814 c!806027) b!4719815))

(assert (= (and b!4719814 (not c!806027)) b!4719816))

(declare-fun m!5652203 () Bool)

(assert (=> b!4719815 m!5652203))

(declare-fun m!5652205 () Bool)

(assert (=> d!1502066 m!5652205))

(assert (=> d!1502066 m!5651605))

(assert (=> b!4719558 d!1502066))

(declare-fun d!1502068 () Bool)

(declare-fun res!1996400 () Bool)

(declare-fun e!2943488 () Bool)

(assert (=> d!1502068 (=> res!1996400 e!2943488)))

(assert (=> d!1502068 (= res!1996400 ((_ is Nil!52813) (toList!5905 lm!2023)))))

(assert (=> d!1502068 (= (forall!11572 (toList!5905 lm!2023) lambda!214876) e!2943488)))

(declare-fun b!4719821 () Bool)

(declare-fun e!2943489 () Bool)

(assert (=> b!4719821 (= e!2943488 e!2943489)))

(declare-fun res!1996401 () Bool)

(assert (=> b!4719821 (=> (not res!1996401) (not e!2943489))))

(declare-fun dynLambda!21810 (Int tuple2!54428) Bool)

(assert (=> b!4719821 (= res!1996401 (dynLambda!21810 lambda!214876 (h!59154 (toList!5905 lm!2023))))))

(declare-fun b!4719822 () Bool)

(assert (=> b!4719822 (= e!2943489 (forall!11572 (t!360193 (toList!5905 lm!2023)) lambda!214876))))

(assert (= (and d!1502068 (not res!1996400)) b!4719821))

(assert (= (and b!4719821 res!1996401) b!4719822))

(declare-fun b_lambda!177897 () Bool)

(assert (=> (not b_lambda!177897) (not b!4719821)))

(declare-fun m!5652207 () Bool)

(assert (=> b!4719821 m!5652207))

(declare-fun m!5652209 () Bool)

(assert (=> b!4719822 m!5652209))

(assert (=> start!480328 d!1502068))

(declare-fun d!1502070 () Bool)

(assert (=> d!1502070 (= (inv!68044 lm!2023) (isStrictlySorted!744 (toList!5905 lm!2023)))))

(declare-fun bs!1106741 () Bool)

(assert (= bs!1106741 d!1502070))

(declare-fun m!5652211 () Bool)

(assert (=> bs!1106741 m!5652211))

(assert (=> start!480328 d!1502070))

(declare-fun bs!1106742 () Bool)

(declare-fun d!1502072 () Bool)

(assert (= bs!1106742 (and d!1502072 d!1502058)))

(declare-fun lambda!214998 () Int)

(assert (=> bs!1106742 (not (= lambda!214998 lambda!214993))))

(declare-fun bs!1106743 () Bool)

(assert (= bs!1106743 (and d!1502072 d!1502060)))

(assert (=> bs!1106743 (not (= lambda!214998 lambda!214994))))

(declare-fun bs!1106744 () Bool)

(assert (= bs!1106744 (and d!1502072 d!1502048)))

(assert (=> bs!1106744 (not (= lambda!214998 lambda!214984))))

(declare-fun bs!1106745 () Bool)

(assert (= bs!1106745 (and d!1502072 d!1501984)))

(assert (=> bs!1106745 (not (= lambda!214998 lambda!214971))))

(declare-fun bs!1106746 () Bool)

(assert (= bs!1106746 (and d!1502072 start!480328)))

(assert (=> bs!1106746 (not (= lambda!214998 lambda!214876))))

(assert (=> d!1502072 true))

(assert (=> d!1502072 (= (allKeysSameHashInMap!1922 lm!2023 hashF!1323) (forall!11572 (toList!5905 lm!2023) lambda!214998))))

(declare-fun bs!1106747 () Bool)

(assert (= bs!1106747 d!1502072))

(declare-fun m!5652213 () Bool)

(assert (=> bs!1106747 m!5652213))

(assert (=> b!4719569 d!1502072))

(declare-fun b!4719829 () Bool)

(declare-fun tp!1348286 () Bool)

(declare-fun e!2943492 () Bool)

(assert (=> b!4719829 (= e!2943492 (and tp_is_empty!31325 tp_is_empty!31327 tp!1348286))))

(assert (=> b!4719551 (= tp!1348272 e!2943492)))

(assert (= (and b!4719551 ((_ is Cons!52812) (t!360192 oldBucket!34))) b!4719829))

(declare-fun b!4719834 () Bool)

(declare-fun e!2943495 () Bool)

(declare-fun tp!1348291 () Bool)

(declare-fun tp!1348292 () Bool)

(assert (=> b!4719834 (= e!2943495 (and tp!1348291 tp!1348292))))

(assert (=> b!4719549 (= tp!1348271 e!2943495)))

(assert (= (and b!4719549 ((_ is Cons!52813) (toList!5905 lm!2023))) b!4719834))

(declare-fun e!2943496 () Bool)

(declare-fun b!4719835 () Bool)

(declare-fun tp!1348293 () Bool)

(assert (=> b!4719835 (= e!2943496 (and tp_is_empty!31325 tp_is_empty!31327 tp!1348293))))

(assert (=> b!4719565 (= tp!1348273 e!2943496)))

(assert (= (and b!4719565 ((_ is Cons!52812) (t!360192 newBucket!218))) b!4719835))

(declare-fun b_lambda!177899 () Bool)

(assert (= b_lambda!177897 (or start!480328 b_lambda!177899)))

(declare-fun bs!1106748 () Bool)

(declare-fun d!1502074 () Bool)

(assert (= bs!1106748 (and d!1502074 start!480328)))

(assert (=> bs!1106748 (= (dynLambda!21810 lambda!214876 (h!59154 (toList!5905 lm!2023))) (noDuplicateKeys!2008 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))

(assert (=> bs!1106748 m!5651745))

(assert (=> b!4719821 d!1502074))

(check-sat (not b!4719834) (not bm!329982) (not bm!329967) (not b_lambda!177899) (not d!1502058) (not b!4719727) (not b!4719790) (not b!4719705) (not b!4719715) (not b!4719654) (not d!1502044) (not b!4719780) (not b!4719803) (not b!4719792) (not b!4719759) (not bm!329979) (not d!1502070) (not b!4719699) (not bm!329984) (not d!1502060) (not bm!329973) (not b!4719789) (not bs!1106748) (not b!4719784) (not b!4719718) (not d!1502032) (not d!1502066) (not d!1502064) (not d!1502048) (not d!1502034) (not b!4719787) (not bm!329975) (not d!1502050) (not bm!329981) (not bm!329983) (not d!1502028) (not d!1502036) (not b!4719728) (not b!4719797) (not b!4719714) (not d!1501952) (not bm!329968) (not b!4719758) (not d!1502004) (not bm!329969) (not b!4719786) (not bm!329954) (not d!1502042) (not b!4719785) (not b!4719778) (not b!4719801) (not d!1501954) (not b!4719799) (not d!1502046) (not d!1502062) (not b!4719783) (not b!4719794) (not bm!329978) (not b!4719704) (not bm!329952) (not b!4719800) tp_is_empty!31327 (not b!4719652) (not d!1501984) (not b!4719717) (not b!4719651) (not d!1502052) (not b!4719795) (not b!4719756) (not b!4719757) (not d!1502072) (not b!4719798) (not bm!329980) (not b!4719793) (not d!1502014) (not d!1502026) (not b!4719725) tp_is_empty!31325 (not b!4719655) (not b!4719692) (not b!4719835) (not b!4719782) (not bm!329974) (not bm!329953) (not b!4719822) (not b!4719829) (not b!4719815) (not b!4719724))
(check-sat)
(get-model)

(declare-fun bs!1106749 () Bool)

(declare-fun b!4719838 () Bool)

(assert (= bs!1106749 (and b!4719838 b!4719716)))

(declare-fun lambda!214999 () Int)

(assert (=> bs!1106749 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!214999 lambda!214972))))

(declare-fun bs!1106750 () Bool)

(assert (= bs!1106750 (and b!4719838 b!4719725)))

(assert (=> bs!1106750 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1885008) (= lambda!214999 lambda!214981))))

(declare-fun bs!1106751 () Bool)

(assert (= bs!1106751 (and b!4719838 b!4719715)))

(assert (=> bs!1106751 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884963) (= lambda!214999 lambda!214974))))

(declare-fun bs!1106752 () Bool)

(assert (= bs!1106752 (and b!4719838 b!4719791)))

(assert (=> bs!1106752 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!214999 lambda!214985))))

(declare-fun bs!1106753 () Bool)

(assert (= bs!1106753 (and b!4719838 d!1501954)))

(assert (=> bs!1106753 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884817) (= lambda!214999 lambda!214951))))

(declare-fun bs!1106754 () Bool)

(assert (= bs!1106754 (and b!4719838 b!4719726)))

(assert (=> bs!1106754 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!214999 lambda!214977))))

(declare-fun bs!1106755 () Bool)

(assert (= bs!1106755 (and b!4719838 b!4719652)))

(assert (=> bs!1106755 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884835) (= lambda!214999 lambda!214950))))

(assert (=> bs!1106750 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!214999 lambda!214979))))

(declare-fun bs!1106756 () Bool)

(assert (= bs!1106756 (and b!4719838 b!4719653)))

(assert (=> bs!1106756 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!214999 lambda!214948))))

(declare-fun bs!1106757 () Bool)

(assert (= bs!1106757 (and b!4719838 b!4719795)))

(assert (=> bs!1106757 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1885094) (= lambda!214999 lambda!214991))))

(assert (=> bs!1106757 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!214999 lambda!214990))))

(declare-fun bs!1106758 () Bool)

(assert (= bs!1106758 (and b!4719838 d!1501952)))

(assert (=> bs!1106758 (not (= lambda!214999 lambda!214879))))

(assert (=> bs!1106755 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!214999 lambda!214949))))

(declare-fun bs!1106759 () Bool)

(assert (= bs!1106759 (and b!4719838 b!4719796)))

(assert (=> bs!1106759 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!214999 lambda!214989))))

(assert (=> bs!1106751 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!214999 lambda!214973))))

(declare-fun bs!1106760 () Bool)

(assert (= bs!1106760 (and b!4719838 d!1502052)))

(assert (=> bs!1106760 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1885076) (= lambda!214999 lambda!214992))))

(declare-fun bs!1106761 () Bool)

(assert (= bs!1106761 (and b!4719838 b!4719790)))

(assert (=> bs!1106761 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!214999 lambda!214986))))

(declare-fun bs!1106762 () Bool)

(assert (= bs!1106762 (and b!4719838 d!1502050)))

(assert (=> bs!1106762 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1885055) (= lambda!214999 lambda!214988))))

(assert (=> bs!1106761 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1885073) (= lambda!214999 lambda!214987))))

(declare-fun bs!1106763 () Bool)

(assert (= bs!1106763 (and b!4719838 d!1502034)))

(assert (=> bs!1106763 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884990) (= lambda!214999 lambda!214982))))

(declare-fun bs!1106764 () Bool)

(assert (= bs!1106764 (and b!4719838 d!1502062)))

(assert (=> bs!1106764 (not (= lambda!214999 lambda!214995))))

(declare-fun bs!1106765 () Bool)

(assert (= bs!1106765 (and b!4719838 d!1502028)))

(assert (=> bs!1106765 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884945) (= lambda!214999 lambda!214975))))

(assert (=> b!4719838 true))

(declare-fun bs!1106766 () Bool)

(declare-fun b!4719837 () Bool)

(assert (= bs!1106766 (and b!4719837 b!4719838)))

(declare-fun lambda!215000 () Int)

(assert (=> bs!1106766 (= lambda!215000 lambda!214999)))

(declare-fun bs!1106767 () Bool)

(assert (= bs!1106767 (and b!4719837 b!4719716)))

(assert (=> bs!1106767 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!215000 lambda!214972))))

(declare-fun bs!1106768 () Bool)

(assert (= bs!1106768 (and b!4719837 b!4719725)))

(assert (=> bs!1106768 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1885008) (= lambda!215000 lambda!214981))))

(declare-fun bs!1106769 () Bool)

(assert (= bs!1106769 (and b!4719837 b!4719715)))

(assert (=> bs!1106769 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884963) (= lambda!215000 lambda!214974))))

(declare-fun bs!1106770 () Bool)

(assert (= bs!1106770 (and b!4719837 b!4719791)))

(assert (=> bs!1106770 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!215000 lambda!214985))))

(declare-fun bs!1106771 () Bool)

(assert (= bs!1106771 (and b!4719837 d!1501954)))

(assert (=> bs!1106771 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884817) (= lambda!215000 lambda!214951))))

(declare-fun bs!1106772 () Bool)

(assert (= bs!1106772 (and b!4719837 b!4719726)))

(assert (=> bs!1106772 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!215000 lambda!214977))))

(declare-fun bs!1106773 () Bool)

(assert (= bs!1106773 (and b!4719837 b!4719652)))

(assert (=> bs!1106773 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884835) (= lambda!215000 lambda!214950))))

(assert (=> bs!1106768 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!215000 lambda!214979))))

(declare-fun bs!1106774 () Bool)

(assert (= bs!1106774 (and b!4719837 b!4719653)))

(assert (=> bs!1106774 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!215000 lambda!214948))))

(declare-fun bs!1106775 () Bool)

(assert (= bs!1106775 (and b!4719837 b!4719795)))

(assert (=> bs!1106775 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1885094) (= lambda!215000 lambda!214991))))

(assert (=> bs!1106775 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!215000 lambda!214990))))

(declare-fun bs!1106776 () Bool)

(assert (= bs!1106776 (and b!4719837 d!1501952)))

(assert (=> bs!1106776 (not (= lambda!215000 lambda!214879))))

(assert (=> bs!1106773 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!215000 lambda!214949))))

(declare-fun bs!1106777 () Bool)

(assert (= bs!1106777 (and b!4719837 b!4719796)))

(assert (=> bs!1106777 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!215000 lambda!214989))))

(assert (=> bs!1106769 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!215000 lambda!214973))))

(declare-fun bs!1106778 () Bool)

(assert (= bs!1106778 (and b!4719837 d!1502052)))

(assert (=> bs!1106778 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1885076) (= lambda!215000 lambda!214992))))

(declare-fun bs!1106779 () Bool)

(assert (= bs!1106779 (and b!4719837 b!4719790)))

(assert (=> bs!1106779 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884696) (= lambda!215000 lambda!214986))))

(declare-fun bs!1106780 () Bool)

(assert (= bs!1106780 (and b!4719837 d!1502050)))

(assert (=> bs!1106780 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1885055) (= lambda!215000 lambda!214988))))

(assert (=> bs!1106779 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1885073) (= lambda!215000 lambda!214987))))

(declare-fun bs!1106781 () Bool)

(assert (= bs!1106781 (and b!4719837 d!1502034)))

(assert (=> bs!1106781 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884990) (= lambda!215000 lambda!214982))))

(declare-fun bs!1106782 () Bool)

(assert (= bs!1106782 (and b!4719837 d!1502062)))

(assert (=> bs!1106782 (not (= lambda!215000 lambda!214995))))

(declare-fun bs!1106783 () Bool)

(assert (= bs!1106783 (and b!4719837 d!1502028)))

(assert (=> bs!1106783 (= (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1884945) (= lambda!215000 lambda!214975))))

(assert (=> b!4719837 true))

(declare-fun lambda!215001 () Int)

(declare-fun lt!1885120 () ListMap!5269)

(assert (=> bs!1106766 (= (= lt!1885120 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215001 lambda!214999))))

(assert (=> bs!1106767 (= (= lt!1885120 lt!1884696) (= lambda!215001 lambda!214972))))

(assert (=> bs!1106768 (= (= lt!1885120 lt!1885008) (= lambda!215001 lambda!214981))))

(assert (=> b!4719837 (= (= lt!1885120 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215001 lambda!215000))))

(assert (=> bs!1106769 (= (= lt!1885120 lt!1884963) (= lambda!215001 lambda!214974))))

(assert (=> bs!1106770 (= (= lt!1885120 lt!1884696) (= lambda!215001 lambda!214985))))

(assert (=> bs!1106771 (= (= lt!1885120 lt!1884817) (= lambda!215001 lambda!214951))))

(assert (=> bs!1106772 (= (= lt!1885120 lt!1884696) (= lambda!215001 lambda!214977))))

(assert (=> bs!1106773 (= (= lt!1885120 lt!1884835) (= lambda!215001 lambda!214950))))

(assert (=> bs!1106768 (= (= lt!1885120 lt!1884696) (= lambda!215001 lambda!214979))))

(assert (=> bs!1106774 (= (= lt!1885120 lt!1884696) (= lambda!215001 lambda!214948))))

(assert (=> bs!1106775 (= (= lt!1885120 lt!1885094) (= lambda!215001 lambda!214991))))

(assert (=> bs!1106775 (= (= lt!1885120 lt!1884696) (= lambda!215001 lambda!214990))))

(assert (=> bs!1106776 (not (= lambda!215001 lambda!214879))))

(assert (=> bs!1106773 (= (= lt!1885120 lt!1884696) (= lambda!215001 lambda!214949))))

(assert (=> bs!1106777 (= (= lt!1885120 lt!1884696) (= lambda!215001 lambda!214989))))

(assert (=> bs!1106769 (= (= lt!1885120 lt!1884696) (= lambda!215001 lambda!214973))))

(assert (=> bs!1106778 (= (= lt!1885120 lt!1885076) (= lambda!215001 lambda!214992))))

(assert (=> bs!1106779 (= (= lt!1885120 lt!1884696) (= lambda!215001 lambda!214986))))

(assert (=> bs!1106780 (= (= lt!1885120 lt!1885055) (= lambda!215001 lambda!214988))))

(assert (=> bs!1106779 (= (= lt!1885120 lt!1885073) (= lambda!215001 lambda!214987))))

(assert (=> bs!1106781 (= (= lt!1885120 lt!1884990) (= lambda!215001 lambda!214982))))

(assert (=> bs!1106782 (not (= lambda!215001 lambda!214995))))

(assert (=> bs!1106783 (= (= lt!1885120 lt!1884945) (= lambda!215001 lambda!214975))))

(assert (=> b!4719837 true))

(declare-fun bs!1106784 () Bool)

(declare-fun d!1502076 () Bool)

(assert (= bs!1106784 (and d!1502076 b!4719838)))

(declare-fun lt!1885102 () ListMap!5269)

(declare-fun lambda!215002 () Int)

(assert (=> bs!1106784 (= (= lt!1885102 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215002 lambda!214999))))

(declare-fun bs!1106785 () Bool)

(assert (= bs!1106785 (and d!1502076 b!4719716)))

(assert (=> bs!1106785 (= (= lt!1885102 lt!1884696) (= lambda!215002 lambda!214972))))

(declare-fun bs!1106786 () Bool)

(assert (= bs!1106786 (and d!1502076 b!4719837)))

(assert (=> bs!1106786 (= (= lt!1885102 lt!1885120) (= lambda!215002 lambda!215001))))

(declare-fun bs!1106787 () Bool)

(assert (= bs!1106787 (and d!1502076 b!4719725)))

(assert (=> bs!1106787 (= (= lt!1885102 lt!1885008) (= lambda!215002 lambda!214981))))

(assert (=> bs!1106786 (= (= lt!1885102 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215002 lambda!215000))))

(declare-fun bs!1106788 () Bool)

(assert (= bs!1106788 (and d!1502076 b!4719715)))

(assert (=> bs!1106788 (= (= lt!1885102 lt!1884963) (= lambda!215002 lambda!214974))))

(declare-fun bs!1106789 () Bool)

(assert (= bs!1106789 (and d!1502076 b!4719791)))

(assert (=> bs!1106789 (= (= lt!1885102 lt!1884696) (= lambda!215002 lambda!214985))))

(declare-fun bs!1106790 () Bool)

(assert (= bs!1106790 (and d!1502076 d!1501954)))

(assert (=> bs!1106790 (= (= lt!1885102 lt!1884817) (= lambda!215002 lambda!214951))))

(declare-fun bs!1106791 () Bool)

(assert (= bs!1106791 (and d!1502076 b!4719726)))

(assert (=> bs!1106791 (= (= lt!1885102 lt!1884696) (= lambda!215002 lambda!214977))))

(declare-fun bs!1106792 () Bool)

(assert (= bs!1106792 (and d!1502076 b!4719652)))

(assert (=> bs!1106792 (= (= lt!1885102 lt!1884835) (= lambda!215002 lambda!214950))))

(assert (=> bs!1106787 (= (= lt!1885102 lt!1884696) (= lambda!215002 lambda!214979))))

(declare-fun bs!1106793 () Bool)

(assert (= bs!1106793 (and d!1502076 b!4719653)))

(assert (=> bs!1106793 (= (= lt!1885102 lt!1884696) (= lambda!215002 lambda!214948))))

(declare-fun bs!1106794 () Bool)

(assert (= bs!1106794 (and d!1502076 b!4719795)))

(assert (=> bs!1106794 (= (= lt!1885102 lt!1885094) (= lambda!215002 lambda!214991))))

(assert (=> bs!1106794 (= (= lt!1885102 lt!1884696) (= lambda!215002 lambda!214990))))

(declare-fun bs!1106795 () Bool)

(assert (= bs!1106795 (and d!1502076 d!1501952)))

(assert (=> bs!1106795 (not (= lambda!215002 lambda!214879))))

(assert (=> bs!1106792 (= (= lt!1885102 lt!1884696) (= lambda!215002 lambda!214949))))

(declare-fun bs!1106796 () Bool)

(assert (= bs!1106796 (and d!1502076 b!4719796)))

(assert (=> bs!1106796 (= (= lt!1885102 lt!1884696) (= lambda!215002 lambda!214989))))

(assert (=> bs!1106788 (= (= lt!1885102 lt!1884696) (= lambda!215002 lambda!214973))))

(declare-fun bs!1106797 () Bool)

(assert (= bs!1106797 (and d!1502076 d!1502052)))

(assert (=> bs!1106797 (= (= lt!1885102 lt!1885076) (= lambda!215002 lambda!214992))))

(declare-fun bs!1106798 () Bool)

(assert (= bs!1106798 (and d!1502076 b!4719790)))

(assert (=> bs!1106798 (= (= lt!1885102 lt!1884696) (= lambda!215002 lambda!214986))))

(declare-fun bs!1106799 () Bool)

(assert (= bs!1106799 (and d!1502076 d!1502050)))

(assert (=> bs!1106799 (= (= lt!1885102 lt!1885055) (= lambda!215002 lambda!214988))))

(assert (=> bs!1106798 (= (= lt!1885102 lt!1885073) (= lambda!215002 lambda!214987))))

(declare-fun bs!1106800 () Bool)

(assert (= bs!1106800 (and d!1502076 d!1502034)))

(assert (=> bs!1106800 (= (= lt!1885102 lt!1884990) (= lambda!215002 lambda!214982))))

(declare-fun bs!1106801 () Bool)

(assert (= bs!1106801 (and d!1502076 d!1502062)))

(assert (=> bs!1106801 (not (= lambda!215002 lambda!214995))))

(declare-fun bs!1106802 () Bool)

(assert (= bs!1106802 (and d!1502076 d!1502028)))

(assert (=> bs!1106802 (= (= lt!1885102 lt!1884945) (= lambda!215002 lambda!214975))))

(assert (=> d!1502076 true))

(declare-fun b!4719836 () Bool)

(declare-fun e!2943497 () Bool)

(assert (=> b!4719836 (= e!2943497 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) lambda!215001))))

(declare-fun bm!329985 () Bool)

(declare-fun call!329990 () Unit!129252)

(assert (=> bm!329985 (= call!329990 (lemmaContainsAllItsOwnKeys!791 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))))))

(declare-fun c!806028 () Bool)

(declare-fun bm!329986 () Bool)

(declare-fun call!329991 () Bool)

(assert (=> bm!329986 (= call!329991 (forall!11574 (ite c!806028 (toList!5906 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023))))) (ite c!806028 lambda!214999 lambda!215001)))))

(declare-fun e!2943499 () ListMap!5269)

(assert (=> b!4719837 (= e!2943499 lt!1885120)))

(declare-fun lt!1885101 () ListMap!5269)

(assert (=> b!4719837 (= lt!1885101 (+!2263 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) (h!59153 (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023)))))))))

(assert (=> b!4719837 (= lt!1885120 (addToMapMapFromBucket!1438 (t!360192 (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023))))) (+!2263 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) (h!59153 (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023))))))))))

(declare-fun lt!1885111 () Unit!129252)

(assert (=> b!4719837 (= lt!1885111 call!329990)))

(declare-fun call!329992 () Bool)

(assert (=> b!4719837 call!329992))

(declare-fun lt!1885103 () Unit!129252)

(assert (=> b!4719837 (= lt!1885103 lt!1885111)))

(assert (=> b!4719837 (forall!11574 (toList!5906 lt!1885101) lambda!215001)))

(declare-fun lt!1885118 () Unit!129252)

(declare-fun Unit!129368 () Unit!129252)

(assert (=> b!4719837 (= lt!1885118 Unit!129368)))

(assert (=> b!4719837 (forall!11574 (t!360192 (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023))))) lambda!215001)))

(declare-fun lt!1885104 () Unit!129252)

(declare-fun Unit!129369 () Unit!129252)

(assert (=> b!4719837 (= lt!1885104 Unit!129369)))

(declare-fun lt!1885108 () Unit!129252)

(declare-fun Unit!129370 () Unit!129252)

(assert (=> b!4719837 (= lt!1885108 Unit!129370)))

(declare-fun lt!1885119 () Unit!129252)

(assert (=> b!4719837 (= lt!1885119 (forallContained!3629 (toList!5906 lt!1885101) lambda!215001 (h!59153 (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023)))))))))

(assert (=> b!4719837 (contains!16156 lt!1885101 (_1!30507 (h!59153 (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023)))))))))

(declare-fun lt!1885112 () Unit!129252)

(declare-fun Unit!129371 () Unit!129252)

(assert (=> b!4719837 (= lt!1885112 Unit!129371)))

(assert (=> b!4719837 (contains!16156 lt!1885120 (_1!30507 (h!59153 (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023)))))))))

(declare-fun lt!1885116 () Unit!129252)

(declare-fun Unit!129372 () Unit!129252)

(assert (=> b!4719837 (= lt!1885116 Unit!129372)))

(assert (=> b!4719837 call!329991))

(declare-fun lt!1885105 () Unit!129252)

(declare-fun Unit!129373 () Unit!129252)

(assert (=> b!4719837 (= lt!1885105 Unit!129373)))

(assert (=> b!4719837 (forall!11574 (toList!5906 lt!1885101) lambda!215001)))

(declare-fun lt!1885106 () Unit!129252)

(declare-fun Unit!129374 () Unit!129252)

(assert (=> b!4719837 (= lt!1885106 Unit!129374)))

(declare-fun lt!1885113 () Unit!129252)

(declare-fun Unit!129375 () Unit!129252)

(assert (=> b!4719837 (= lt!1885113 Unit!129375)))

(declare-fun lt!1885109 () Unit!129252)

(assert (=> b!4719837 (= lt!1885109 (addForallContainsKeyThenBeforeAdding!790 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1885120 (_1!30507 (h!59153 (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023)))))) (_2!30507 (h!59153 (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023))))))))))

(assert (=> b!4719837 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) lambda!215001)))

(declare-fun lt!1885114 () Unit!129252)

(assert (=> b!4719837 (= lt!1885114 lt!1885109)))

(assert (=> b!4719837 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) lambda!215001)))

(declare-fun lt!1885115 () Unit!129252)

(declare-fun Unit!129376 () Unit!129252)

(assert (=> b!4719837 (= lt!1885115 Unit!129376)))

(declare-fun res!1996402 () Bool)

(assert (=> b!4719837 (= res!1996402 (forall!11574 (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023)))) lambda!215001))))

(assert (=> b!4719837 (=> (not res!1996402) (not e!2943497))))

(assert (=> b!4719837 e!2943497))

(declare-fun lt!1885107 () Unit!129252)

(declare-fun Unit!129377 () Unit!129252)

(assert (=> b!4719837 (= lt!1885107 Unit!129377)))

(assert (=> b!4719838 (= e!2943499 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))))))

(declare-fun lt!1885100 () Unit!129252)

(assert (=> b!4719838 (= lt!1885100 call!329990)))

(assert (=> b!4719838 call!329992))

(declare-fun lt!1885117 () Unit!129252)

(assert (=> b!4719838 (= lt!1885117 lt!1885100)))

(assert (=> b!4719838 call!329991))

(declare-fun lt!1885110 () Unit!129252)

(declare-fun Unit!129378 () Unit!129252)

(assert (=> b!4719838 (= lt!1885110 Unit!129378)))

(declare-fun e!2943498 () Bool)

(assert (=> d!1502076 e!2943498))

(declare-fun res!1996403 () Bool)

(assert (=> d!1502076 (=> (not res!1996403) (not e!2943498))))

(assert (=> d!1502076 (= res!1996403 (forall!11574 (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023)))) lambda!215002))))

(assert (=> d!1502076 (= lt!1885102 e!2943499)))

(assert (=> d!1502076 (= c!806028 ((_ is Nil!52812) (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023))))))))

(assert (=> d!1502076 (noDuplicateKeys!2008 (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023)))))))

(assert (=> d!1502076 (= (addToMapMapFromBucket!1438 (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023)))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) lt!1885102)))

(declare-fun b!4719839 () Bool)

(assert (=> b!4719839 (= e!2943498 (invariantList!1505 (toList!5906 lt!1885102)))))

(declare-fun bm!329987 () Bool)

(assert (=> bm!329987 (= call!329992 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (ite c!806028 lambda!214999 lambda!215000)))))

(declare-fun b!4719840 () Bool)

(declare-fun res!1996404 () Bool)

(assert (=> b!4719840 (=> (not res!1996404) (not e!2943498))))

(assert (=> b!4719840 (= res!1996404 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) lambda!215002))))

(assert (= (and d!1502076 c!806028) b!4719838))

(assert (= (and d!1502076 (not c!806028)) b!4719837))

(assert (= (and b!4719837 res!1996402) b!4719836))

(assert (= (or b!4719838 b!4719837) bm!329985))

(assert (= (or b!4719838 b!4719837) bm!329986))

(assert (= (or b!4719838 b!4719837) bm!329987))

(assert (= (and d!1502076 res!1996403) b!4719840))

(assert (= (and b!4719840 res!1996404) b!4719839))

(declare-fun m!5652215 () Bool)

(assert (=> b!4719839 m!5652215))

(declare-fun m!5652217 () Bool)

(assert (=> bm!329986 m!5652217))

(assert (=> bm!329985 m!5651901))

(declare-fun m!5652219 () Bool)

(assert (=> bm!329985 m!5652219))

(declare-fun m!5652221 () Bool)

(assert (=> b!4719840 m!5652221))

(declare-fun m!5652223 () Bool)

(assert (=> b!4719837 m!5652223))

(declare-fun m!5652225 () Bool)

(assert (=> b!4719837 m!5652225))

(declare-fun m!5652227 () Bool)

(assert (=> b!4719837 m!5652227))

(declare-fun m!5652229 () Bool)

(assert (=> b!4719837 m!5652229))

(assert (=> b!4719837 m!5651901))

(declare-fun m!5652231 () Bool)

(assert (=> b!4719837 m!5652231))

(declare-fun m!5652233 () Bool)

(assert (=> b!4719837 m!5652233))

(declare-fun m!5652235 () Bool)

(assert (=> b!4719837 m!5652235))

(declare-fun m!5652237 () Bool)

(assert (=> b!4719837 m!5652237))

(assert (=> b!4719837 m!5652227))

(declare-fun m!5652239 () Bool)

(assert (=> b!4719837 m!5652239))

(declare-fun m!5652241 () Bool)

(assert (=> b!4719837 m!5652241))

(assert (=> b!4719837 m!5652233))

(assert (=> b!4719837 m!5651901))

(assert (=> b!4719837 m!5652235))

(declare-fun m!5652243 () Bool)

(assert (=> bm!329987 m!5652243))

(declare-fun m!5652245 () Bool)

(assert (=> d!1502076 m!5652245))

(declare-fun m!5652247 () Bool)

(assert (=> d!1502076 m!5652247))

(assert (=> b!4719836 m!5652233))

(assert (=> b!4719692 d!1502076))

(declare-fun bs!1106803 () Bool)

(declare-fun d!1502078 () Bool)

(assert (= bs!1106803 (and d!1502078 d!1502058)))

(declare-fun lambda!215003 () Int)

(assert (=> bs!1106803 (= lambda!215003 lambda!214993)))

(declare-fun bs!1106804 () Bool)

(assert (= bs!1106804 (and d!1502078 d!1502072)))

(assert (=> bs!1106804 (not (= lambda!215003 lambda!214998))))

(declare-fun bs!1106805 () Bool)

(assert (= bs!1106805 (and d!1502078 d!1502060)))

(assert (=> bs!1106805 (= lambda!215003 lambda!214994)))

(declare-fun bs!1106806 () Bool)

(assert (= bs!1106806 (and d!1502078 d!1502048)))

(assert (=> bs!1106806 (= lambda!215003 lambda!214984)))

(declare-fun bs!1106807 () Bool)

(assert (= bs!1106807 (and d!1502078 d!1501984)))

(assert (=> bs!1106807 (= lambda!215003 lambda!214971)))

(declare-fun bs!1106808 () Bool)

(assert (= bs!1106808 (and d!1502078 start!480328)))

(assert (=> bs!1106808 (= lambda!215003 lambda!214876)))

(declare-fun lt!1885121 () ListMap!5269)

(assert (=> d!1502078 (invariantList!1505 (toList!5906 lt!1885121))))

(declare-fun e!2943500 () ListMap!5269)

(assert (=> d!1502078 (= lt!1885121 e!2943500)))

(declare-fun c!806029 () Bool)

(assert (=> d!1502078 (= c!806029 ((_ is Cons!52813) (t!360193 (t!360193 (toList!5905 lm!2023)))))))

(assert (=> d!1502078 (forall!11572 (t!360193 (t!360193 (toList!5905 lm!2023))) lambda!215003)))

(assert (=> d!1502078 (= (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023)))) lt!1885121)))

(declare-fun b!4719841 () Bool)

(assert (=> b!4719841 (= e!2943500 (addToMapMapFromBucket!1438 (_2!30508 (h!59154 (t!360193 (t!360193 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (t!360193 (t!360193 (toList!5905 lm!2023)))))))))

(declare-fun b!4719842 () Bool)

(assert (=> b!4719842 (= e!2943500 (ListMap!5270 Nil!52812))))

(assert (= (and d!1502078 c!806029) b!4719841))

(assert (= (and d!1502078 (not c!806029)) b!4719842))

(declare-fun m!5652249 () Bool)

(assert (=> d!1502078 m!5652249))

(declare-fun m!5652251 () Bool)

(assert (=> d!1502078 m!5652251))

(declare-fun m!5652253 () Bool)

(assert (=> b!4719841 m!5652253))

(assert (=> b!4719841 m!5652253))

(declare-fun m!5652255 () Bool)

(assert (=> b!4719841 m!5652255))

(assert (=> b!4719692 d!1502078))

(declare-fun d!1502080 () Bool)

(declare-fun res!1996409 () Bool)

(declare-fun e!2943505 () Bool)

(assert (=> d!1502080 (=> res!1996409 e!2943505)))

(assert (=> d!1502080 (= res!1996409 ((_ is Nil!52812) lt!1884694))))

(assert (=> d!1502080 (= (forall!11574 lt!1884694 lambda!214992) e!2943505)))

(declare-fun b!4719847 () Bool)

(declare-fun e!2943506 () Bool)

(assert (=> b!4719847 (= e!2943505 e!2943506)))

(declare-fun res!1996410 () Bool)

(assert (=> b!4719847 (=> (not res!1996410) (not e!2943506))))

(declare-fun dynLambda!21811 (Int tuple2!54426) Bool)

(assert (=> b!4719847 (= res!1996410 (dynLambda!21811 lambda!214992 (h!59153 lt!1884694)))))

(declare-fun b!4719848 () Bool)

(assert (=> b!4719848 (= e!2943506 (forall!11574 (t!360192 lt!1884694) lambda!214992))))

(assert (= (and d!1502080 (not res!1996409)) b!4719847))

(assert (= (and b!4719847 res!1996410) b!4719848))

(declare-fun b_lambda!177901 () Bool)

(assert (=> (not b_lambda!177901) (not b!4719847)))

(declare-fun m!5652257 () Bool)

(assert (=> b!4719847 m!5652257))

(declare-fun m!5652259 () Bool)

(assert (=> b!4719848 m!5652259))

(assert (=> d!1502052 d!1502080))

(declare-fun d!1502082 () Bool)

(declare-fun res!1996411 () Bool)

(declare-fun e!2943507 () Bool)

(assert (=> d!1502082 (=> res!1996411 e!2943507)))

(assert (=> d!1502082 (= res!1996411 (not ((_ is Cons!52812) lt!1884694)))))

(assert (=> d!1502082 (= (noDuplicateKeys!2008 lt!1884694) e!2943507)))

(declare-fun b!4719849 () Bool)

(declare-fun e!2943508 () Bool)

(assert (=> b!4719849 (= e!2943507 e!2943508)))

(declare-fun res!1996412 () Bool)

(assert (=> b!4719849 (=> (not res!1996412) (not e!2943508))))

(assert (=> b!4719849 (= res!1996412 (not (containsKey!3357 (t!360192 lt!1884694) (_1!30507 (h!59153 lt!1884694)))))))

(declare-fun b!4719850 () Bool)

(assert (=> b!4719850 (= e!2943508 (noDuplicateKeys!2008 (t!360192 lt!1884694)))))

(assert (= (and d!1502082 (not res!1996411)) b!4719849))

(assert (= (and b!4719849 res!1996412) b!4719850))

(declare-fun m!5652261 () Bool)

(assert (=> b!4719849 m!5652261))

(declare-fun m!5652263 () Bool)

(assert (=> b!4719850 m!5652263))

(assert (=> d!1502052 d!1502082))

(declare-fun d!1502084 () Bool)

(declare-fun res!1996417 () Bool)

(declare-fun e!2943513 () Bool)

(assert (=> d!1502084 (=> res!1996417 e!2943513)))

(assert (=> d!1502084 (= res!1996417 (or ((_ is Nil!52813) (toList!5905 lm!2023)) ((_ is Nil!52813) (t!360193 (toList!5905 lm!2023)))))))

(assert (=> d!1502084 (= (isStrictlySorted!744 (toList!5905 lm!2023)) e!2943513)))

(declare-fun b!4719855 () Bool)

(declare-fun e!2943514 () Bool)

(assert (=> b!4719855 (= e!2943513 e!2943514)))

(declare-fun res!1996418 () Bool)

(assert (=> b!4719855 (=> (not res!1996418) (not e!2943514))))

(assert (=> b!4719855 (= res!1996418 (bvslt (_1!30508 (h!59154 (toList!5905 lm!2023))) (_1!30508 (h!59154 (t!360193 (toList!5905 lm!2023))))))))

(declare-fun b!4719856 () Bool)

(assert (=> b!4719856 (= e!2943514 (isStrictlySorted!744 (t!360193 (toList!5905 lm!2023))))))

(assert (= (and d!1502084 (not res!1996417)) b!4719855))

(assert (= (and b!4719855 res!1996418) b!4719856))

(declare-fun m!5652265 () Bool)

(assert (=> b!4719856 m!5652265))

(assert (=> d!1502070 d!1502084))

(declare-fun d!1502086 () Bool)

(declare-fun res!1996419 () Bool)

(declare-fun e!2943515 () Bool)

(assert (=> d!1502086 (=> res!1996419 e!2943515)))

(assert (=> d!1502086 (= res!1996419 (and ((_ is Cons!52812) (t!360192 newBucket!218)) (= (_1!30507 (h!59153 (t!360192 newBucket!218))) (_1!30507 (h!59153 newBucket!218)))))))

(assert (=> d!1502086 (= (containsKey!3357 (t!360192 newBucket!218) (_1!30507 (h!59153 newBucket!218))) e!2943515)))

(declare-fun b!4719857 () Bool)

(declare-fun e!2943516 () Bool)

(assert (=> b!4719857 (= e!2943515 e!2943516)))

(declare-fun res!1996420 () Bool)

(assert (=> b!4719857 (=> (not res!1996420) (not e!2943516))))

(assert (=> b!4719857 (= res!1996420 ((_ is Cons!52812) (t!360192 newBucket!218)))))

(declare-fun b!4719858 () Bool)

(assert (=> b!4719858 (= e!2943516 (containsKey!3357 (t!360192 (t!360192 newBucket!218)) (_1!30507 (h!59153 newBucket!218))))))

(assert (= (and d!1502086 (not res!1996419)) b!4719857))

(assert (= (and b!4719857 res!1996420) b!4719858))

(declare-fun m!5652267 () Bool)

(assert (=> b!4719858 m!5652267))

(assert (=> b!4719799 d!1502086))

(declare-fun d!1502088 () Bool)

(declare-fun res!1996421 () Bool)

(declare-fun e!2943517 () Bool)

(assert (=> d!1502088 (=> res!1996421 e!2943517)))

(assert (=> d!1502088 (= res!1996421 ((_ is Nil!52812) (ite c!805990 (toList!5906 lt!1884696) (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(assert (=> d!1502088 (= (forall!11574 (ite c!805990 (toList!5906 lt!1884696) (_2!30508 (h!59154 (toList!5905 lm!2023)))) (ite c!805990 lambda!214948 lambda!214950)) e!2943517)))

(declare-fun b!4719859 () Bool)

(declare-fun e!2943518 () Bool)

(assert (=> b!4719859 (= e!2943517 e!2943518)))

(declare-fun res!1996422 () Bool)

(assert (=> b!4719859 (=> (not res!1996422) (not e!2943518))))

(assert (=> b!4719859 (= res!1996422 (dynLambda!21811 (ite c!805990 lambda!214948 lambda!214950) (h!59153 (ite c!805990 (toList!5906 lt!1884696) (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun b!4719860 () Bool)

(assert (=> b!4719860 (= e!2943518 (forall!11574 (t!360192 (ite c!805990 (toList!5906 lt!1884696) (_2!30508 (h!59154 (toList!5905 lm!2023))))) (ite c!805990 lambda!214948 lambda!214950)))))

(assert (= (and d!1502088 (not res!1996421)) b!4719859))

(assert (= (and b!4719859 res!1996422) b!4719860))

(declare-fun b_lambda!177903 () Bool)

(assert (=> (not b_lambda!177903) (not b!4719859)))

(declare-fun m!5652269 () Bool)

(assert (=> b!4719859 m!5652269))

(declare-fun m!5652271 () Bool)

(assert (=> b!4719860 m!5652271))

(assert (=> bm!329953 d!1502088))

(assert (=> d!1502014 d!1502052))

(declare-fun d!1502090 () Bool)

(assert (=> d!1502090 (eq!1125 (addToMapMapFromBucket!1438 (Cons!52812 lt!1884698 lt!1884694) lt!1884696) (+!2263 (addToMapMapFromBucket!1438 lt!1884694 lt!1884696) lt!1884698))))

(assert (=> d!1502090 true))

(declare-fun _$30!168 () Unit!129252)

(assert (=> d!1502090 (= (choose!33283 lt!1884698 lt!1884694 lt!1884696) _$30!168)))

(declare-fun bs!1106809 () Bool)

(assert (= bs!1106809 d!1502090))

(assert (=> bs!1106809 m!5651609))

(assert (=> bs!1106809 m!5651633))

(assert (=> bs!1106809 m!5651633))

(assert (=> bs!1106809 m!5651945))

(assert (=> bs!1106809 m!5651609))

(assert (=> bs!1106809 m!5651945))

(assert (=> bs!1106809 m!5651951))

(assert (=> d!1502014 d!1502090))

(declare-fun d!1502092 () Bool)

(assert (=> d!1502092 (= (eq!1125 (addToMapMapFromBucket!1438 (Cons!52812 lt!1884698 lt!1884694) lt!1884696) (+!2263 (addToMapMapFromBucket!1438 lt!1884694 lt!1884696) lt!1884698)) (= (content!9384 (toList!5906 (addToMapMapFromBucket!1438 (Cons!52812 lt!1884698 lt!1884694) lt!1884696))) (content!9384 (toList!5906 (+!2263 (addToMapMapFromBucket!1438 lt!1884694 lt!1884696) lt!1884698)))))))

(declare-fun bs!1106810 () Bool)

(assert (= bs!1106810 d!1502092))

(assert (=> bs!1106810 m!5651995))

(declare-fun m!5652273 () Bool)

(assert (=> bs!1106810 m!5652273))

(assert (=> d!1502014 d!1502092))

(declare-fun d!1502094 () Bool)

(declare-fun e!2943519 () Bool)

(assert (=> d!1502094 e!2943519))

(declare-fun res!1996424 () Bool)

(assert (=> d!1502094 (=> (not res!1996424) (not e!2943519))))

(declare-fun lt!1885124 () ListMap!5269)

(assert (=> d!1502094 (= res!1996424 (contains!16156 lt!1885124 (_1!30507 lt!1884698)))))

(declare-fun lt!1885122 () List!52936)

(assert (=> d!1502094 (= lt!1885124 (ListMap!5270 lt!1885122))))

(declare-fun lt!1885123 () Unit!129252)

(declare-fun lt!1885125 () Unit!129252)

(assert (=> d!1502094 (= lt!1885123 lt!1885125)))

(assert (=> d!1502094 (= (getValueByKey!1949 lt!1885122 (_1!30507 lt!1884698)) (Some!12352 (_2!30507 lt!1884698)))))

(assert (=> d!1502094 (= lt!1885125 (lemmaContainsTupThenGetReturnValue!1079 lt!1885122 (_1!30507 lt!1884698) (_2!30507 lt!1884698)))))

(assert (=> d!1502094 (= lt!1885122 (insertNoDuplicatedKeys!587 (toList!5906 (addToMapMapFromBucket!1438 lt!1884694 lt!1884696)) (_1!30507 lt!1884698) (_2!30507 lt!1884698)))))

(assert (=> d!1502094 (= (+!2263 (addToMapMapFromBucket!1438 lt!1884694 lt!1884696) lt!1884698) lt!1885124)))

(declare-fun b!4719861 () Bool)

(declare-fun res!1996423 () Bool)

(assert (=> b!4719861 (=> (not res!1996423) (not e!2943519))))

(assert (=> b!4719861 (= res!1996423 (= (getValueByKey!1949 (toList!5906 lt!1885124) (_1!30507 lt!1884698)) (Some!12352 (_2!30507 lt!1884698))))))

(declare-fun b!4719862 () Bool)

(assert (=> b!4719862 (= e!2943519 (contains!16158 (toList!5906 lt!1885124) lt!1884698))))

(assert (= (and d!1502094 res!1996424) b!4719861))

(assert (= (and b!4719861 res!1996423) b!4719862))

(declare-fun m!5652275 () Bool)

(assert (=> d!1502094 m!5652275))

(declare-fun m!5652277 () Bool)

(assert (=> d!1502094 m!5652277))

(declare-fun m!5652279 () Bool)

(assert (=> d!1502094 m!5652279))

(declare-fun m!5652281 () Bool)

(assert (=> d!1502094 m!5652281))

(declare-fun m!5652283 () Bool)

(assert (=> b!4719861 m!5652283))

(declare-fun m!5652285 () Bool)

(assert (=> b!4719862 m!5652285))

(assert (=> d!1502014 d!1502094))

(assert (=> d!1502014 d!1502028))

(assert (=> d!1502014 d!1502082))

(declare-fun d!1502096 () Bool)

(declare-fun res!1996425 () Bool)

(declare-fun e!2943520 () Bool)

(assert (=> d!1502096 (=> res!1996425 e!2943520)))

(assert (=> d!1502096 (= res!1996425 ((_ is Nil!52812) (toList!5906 lt!1884696)))))

(assert (=> d!1502096 (= (forall!11574 (toList!5906 lt!1884696) (ite c!806018 lambda!214985 lambda!214986)) e!2943520)))

(declare-fun b!4719863 () Bool)

(declare-fun e!2943521 () Bool)

(assert (=> b!4719863 (= e!2943520 e!2943521)))

(declare-fun res!1996426 () Bool)

(assert (=> b!4719863 (=> (not res!1996426) (not e!2943521))))

(assert (=> b!4719863 (= res!1996426 (dynLambda!21811 (ite c!806018 lambda!214985 lambda!214986) (h!59153 (toList!5906 lt!1884696))))))

(declare-fun b!4719864 () Bool)

(assert (=> b!4719864 (= e!2943521 (forall!11574 (t!360192 (toList!5906 lt!1884696)) (ite c!806018 lambda!214985 lambda!214986)))))

(assert (= (and d!1502096 (not res!1996425)) b!4719863))

(assert (= (and b!4719863 res!1996426) b!4719864))

(declare-fun b_lambda!177905 () Bool)

(assert (=> (not b_lambda!177905) (not b!4719863)))

(declare-fun m!5652287 () Bool)

(assert (=> b!4719863 m!5652287))

(declare-fun m!5652289 () Bool)

(assert (=> b!4719864 m!5652289))

(assert (=> bm!329981 d!1502096))

(declare-fun d!1502098 () Bool)

(declare-fun res!1996427 () Bool)

(declare-fun e!2943522 () Bool)

(assert (=> d!1502098 (=> res!1996427 e!2943522)))

(assert (=> d!1502098 (= res!1996427 ((_ is Nil!52812) (ite c!806018 (toList!5906 lt!1884696) newBucket!218)))))

(assert (=> d!1502098 (= (forall!11574 (ite c!806018 (toList!5906 lt!1884696) newBucket!218) (ite c!806018 lambda!214985 lambda!214987)) e!2943522)))

(declare-fun b!4719865 () Bool)

(declare-fun e!2943523 () Bool)

(assert (=> b!4719865 (= e!2943522 e!2943523)))

(declare-fun res!1996428 () Bool)

(assert (=> b!4719865 (=> (not res!1996428) (not e!2943523))))

(assert (=> b!4719865 (= res!1996428 (dynLambda!21811 (ite c!806018 lambda!214985 lambda!214987) (h!59153 (ite c!806018 (toList!5906 lt!1884696) newBucket!218))))))

(declare-fun b!4719866 () Bool)

(assert (=> b!4719866 (= e!2943523 (forall!11574 (t!360192 (ite c!806018 (toList!5906 lt!1884696) newBucket!218)) (ite c!806018 lambda!214985 lambda!214987)))))

(assert (= (and d!1502098 (not res!1996427)) b!4719865))

(assert (= (and b!4719865 res!1996428) b!4719866))

(declare-fun b_lambda!177907 () Bool)

(assert (=> (not b_lambda!177907) (not b!4719865)))

(declare-fun m!5652291 () Bool)

(assert (=> b!4719865 m!5652291))

(declare-fun m!5652293 () Bool)

(assert (=> b!4719866 m!5652293))

(assert (=> bm!329980 d!1502098))

(declare-fun d!1502100 () Bool)

(declare-fun res!1996429 () Bool)

(declare-fun e!2943524 () Bool)

(assert (=> d!1502100 (=> res!1996429 e!2943524)))

(assert (=> d!1502100 (= res!1996429 ((_ is Nil!52812) newBucket!218))))

(assert (=> d!1502100 (= (forall!11574 newBucket!218 lambda!214879) e!2943524)))

(declare-fun b!4719867 () Bool)

(declare-fun e!2943525 () Bool)

(assert (=> b!4719867 (= e!2943524 e!2943525)))

(declare-fun res!1996430 () Bool)

(assert (=> b!4719867 (=> (not res!1996430) (not e!2943525))))

(assert (=> b!4719867 (= res!1996430 (dynLambda!21811 lambda!214879 (h!59153 newBucket!218)))))

(declare-fun b!4719868 () Bool)

(assert (=> b!4719868 (= e!2943525 (forall!11574 (t!360192 newBucket!218) lambda!214879))))

(assert (= (and d!1502100 (not res!1996429)) b!4719867))

(assert (= (and b!4719867 res!1996430) b!4719868))

(declare-fun b_lambda!177909 () Bool)

(assert (=> (not b_lambda!177909) (not b!4719867)))

(declare-fun m!5652295 () Bool)

(assert (=> b!4719867 m!5652295))

(declare-fun m!5652297 () Bool)

(assert (=> b!4719868 m!5652297))

(assert (=> d!1501952 d!1502100))

(declare-fun d!1502102 () Bool)

(declare-fun e!2943531 () Bool)

(assert (=> d!1502102 e!2943531))

(declare-fun res!1996431 () Bool)

(assert (=> d!1502102 (=> res!1996431 e!2943531)))

(declare-fun e!2943528 () Bool)

(assert (=> d!1502102 (= res!1996431 e!2943528)))

(declare-fun res!1996433 () Bool)

(assert (=> d!1502102 (=> (not res!1996433) (not e!2943528))))

(declare-fun lt!1885128 () Bool)

(assert (=> d!1502102 (= res!1996433 (not lt!1885128))))

(declare-fun lt!1885129 () Bool)

(assert (=> d!1502102 (= lt!1885128 lt!1885129)))

(declare-fun lt!1885126 () Unit!129252)

(declare-fun e!2943530 () Unit!129252)

(assert (=> d!1502102 (= lt!1885126 e!2943530)))

(declare-fun c!806031 () Bool)

(assert (=> d!1502102 (= c!806031 lt!1885129)))

(assert (=> d!1502102 (= lt!1885129 (containsKey!3359 (toList!5906 lt!1885022) (_1!30507 lt!1884698)))))

(assert (=> d!1502102 (= (contains!16156 lt!1885022 (_1!30507 lt!1884698)) lt!1885128)))

(declare-fun b!4719869 () Bool)

(assert (=> b!4719869 false))

(declare-fun lt!1885127 () Unit!129252)

(declare-fun lt!1885131 () Unit!129252)

(assert (=> b!4719869 (= lt!1885127 lt!1885131)))

(assert (=> b!4719869 (containsKey!3359 (toList!5906 lt!1885022) (_1!30507 lt!1884698))))

(assert (=> b!4719869 (= lt!1885131 (lemmaInGetKeysListThenContainsKey!944 (toList!5906 lt!1885022) (_1!30507 lt!1884698)))))

(declare-fun e!2943526 () Unit!129252)

(declare-fun Unit!129379 () Unit!129252)

(assert (=> b!4719869 (= e!2943526 Unit!129379)))

(declare-fun b!4719870 () Bool)

(declare-fun Unit!129380 () Unit!129252)

(assert (=> b!4719870 (= e!2943526 Unit!129380)))

(declare-fun b!4719871 () Bool)

(declare-fun e!2943527 () Bool)

(assert (=> b!4719871 (= e!2943531 e!2943527)))

(declare-fun res!1996432 () Bool)

(assert (=> b!4719871 (=> (not res!1996432) (not e!2943527))))

(assert (=> b!4719871 (= res!1996432 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1885022) (_1!30507 lt!1884698))))))

(declare-fun b!4719872 () Bool)

(assert (=> b!4719872 (= e!2943530 e!2943526)))

(declare-fun c!806030 () Bool)

(declare-fun call!329993 () Bool)

(assert (=> b!4719872 (= c!806030 call!329993)))

(declare-fun b!4719873 () Bool)

(declare-fun e!2943529 () List!52939)

(assert (=> b!4719873 (= e!2943529 (keys!18962 lt!1885022))))

(declare-fun b!4719874 () Bool)

(declare-fun lt!1885130 () Unit!129252)

(assert (=> b!4719874 (= e!2943530 lt!1885130)))

(declare-fun lt!1885132 () Unit!129252)

(assert (=> b!4719874 (= lt!1885132 (lemmaContainsKeyImpliesGetValueByKeyDefined!1840 (toList!5906 lt!1885022) (_1!30507 lt!1884698)))))

(assert (=> b!4719874 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1885022) (_1!30507 lt!1884698)))))

(declare-fun lt!1885133 () Unit!129252)

(assert (=> b!4719874 (= lt!1885133 lt!1885132)))

(assert (=> b!4719874 (= lt!1885130 (lemmaInListThenGetKeysListContains!940 (toList!5906 lt!1885022) (_1!30507 lt!1884698)))))

(assert (=> b!4719874 call!329993))

(declare-fun b!4719875 () Bool)

(assert (=> b!4719875 (= e!2943528 (not (contains!16159 (keys!18962 lt!1885022) (_1!30507 lt!1884698))))))

(declare-fun b!4719876 () Bool)

(assert (=> b!4719876 (= e!2943529 (getKeysList!945 (toList!5906 lt!1885022)))))

(declare-fun b!4719877 () Bool)

(assert (=> b!4719877 (= e!2943527 (contains!16159 (keys!18962 lt!1885022) (_1!30507 lt!1884698)))))

(declare-fun bm!329988 () Bool)

(assert (=> bm!329988 (= call!329993 (contains!16159 e!2943529 (_1!30507 lt!1884698)))))

(declare-fun c!806032 () Bool)

(assert (=> bm!329988 (= c!806032 c!806031)))

(assert (= (and d!1502102 c!806031) b!4719874))

(assert (= (and d!1502102 (not c!806031)) b!4719872))

(assert (= (and b!4719872 c!806030) b!4719869))

(assert (= (and b!4719872 (not c!806030)) b!4719870))

(assert (= (or b!4719874 b!4719872) bm!329988))

(assert (= (and bm!329988 c!806032) b!4719876))

(assert (= (and bm!329988 (not c!806032)) b!4719873))

(assert (= (and d!1502102 res!1996433) b!4719875))

(assert (= (and d!1502102 (not res!1996431)) b!4719871))

(assert (= (and b!4719871 res!1996432) b!4719877))

(declare-fun m!5652299 () Bool)

(assert (=> b!4719873 m!5652299))

(declare-fun m!5652301 () Bool)

(assert (=> b!4719874 m!5652301))

(assert (=> b!4719874 m!5652075))

(assert (=> b!4719874 m!5652075))

(declare-fun m!5652303 () Bool)

(assert (=> b!4719874 m!5652303))

(declare-fun m!5652305 () Bool)

(assert (=> b!4719874 m!5652305))

(declare-fun m!5652307 () Bool)

(assert (=> b!4719876 m!5652307))

(assert (=> b!4719871 m!5652075))

(assert (=> b!4719871 m!5652075))

(assert (=> b!4719871 m!5652303))

(assert (=> b!4719877 m!5652299))

(assert (=> b!4719877 m!5652299))

(declare-fun m!5652309 () Bool)

(assert (=> b!4719877 m!5652309))

(declare-fun m!5652311 () Bool)

(assert (=> bm!329988 m!5652311))

(assert (=> b!4719875 m!5652299))

(assert (=> b!4719875 m!5652299))

(assert (=> b!4719875 m!5652309))

(declare-fun m!5652313 () Bool)

(assert (=> d!1502102 m!5652313))

(assert (=> b!4719869 m!5652313))

(declare-fun m!5652315 () Bool)

(assert (=> b!4719869 m!5652315))

(assert (=> d!1502036 d!1502102))

(declare-fun b!4719888 () Bool)

(declare-fun e!2943537 () Option!12353)

(assert (=> b!4719888 (= e!2943537 (getValueByKey!1949 (t!360192 lt!1885020) (_1!30507 lt!1884698)))))

(declare-fun b!4719886 () Bool)

(declare-fun e!2943536 () Option!12353)

(assert (=> b!4719886 (= e!2943536 (Some!12352 (_2!30507 (h!59153 lt!1885020))))))

(declare-fun b!4719887 () Bool)

(assert (=> b!4719887 (= e!2943536 e!2943537)))

(declare-fun c!806038 () Bool)

(assert (=> b!4719887 (= c!806038 (and ((_ is Cons!52812) lt!1885020) (not (= (_1!30507 (h!59153 lt!1885020)) (_1!30507 lt!1884698)))))))

(declare-fun b!4719889 () Bool)

(assert (=> b!4719889 (= e!2943537 None!12352)))

(declare-fun d!1502104 () Bool)

(declare-fun c!806037 () Bool)

(assert (=> d!1502104 (= c!806037 (and ((_ is Cons!52812) lt!1885020) (= (_1!30507 (h!59153 lt!1885020)) (_1!30507 lt!1884698))))))

(assert (=> d!1502104 (= (getValueByKey!1949 lt!1885020 (_1!30507 lt!1884698)) e!2943536)))

(assert (= (and d!1502104 c!806037) b!4719886))

(assert (= (and d!1502104 (not c!806037)) b!4719887))

(assert (= (and b!4719887 c!806038) b!4719888))

(assert (= (and b!4719887 (not c!806038)) b!4719889))

(declare-fun m!5652317 () Bool)

(assert (=> b!4719888 m!5652317))

(assert (=> d!1502036 d!1502104))

(declare-fun d!1502106 () Bool)

(assert (=> d!1502106 (= (getValueByKey!1949 lt!1885020 (_1!30507 lt!1884698)) (Some!12352 (_2!30507 lt!1884698)))))

(declare-fun lt!1885136 () Unit!129252)

(declare-fun choose!33285 (List!52936 K!14170 V!14416) Unit!129252)

(assert (=> d!1502106 (= lt!1885136 (choose!33285 lt!1885020 (_1!30507 lt!1884698) (_2!30507 lt!1884698)))))

(declare-fun e!2943540 () Bool)

(assert (=> d!1502106 e!2943540))

(declare-fun res!1996438 () Bool)

(assert (=> d!1502106 (=> (not res!1996438) (not e!2943540))))

(assert (=> d!1502106 (= res!1996438 (invariantList!1505 lt!1885020))))

(assert (=> d!1502106 (= (lemmaContainsTupThenGetReturnValue!1079 lt!1885020 (_1!30507 lt!1884698) (_2!30507 lt!1884698)) lt!1885136)))

(declare-fun b!4719894 () Bool)

(declare-fun res!1996439 () Bool)

(assert (=> b!4719894 (=> (not res!1996439) (not e!2943540))))

(assert (=> b!4719894 (= res!1996439 (containsKey!3359 lt!1885020 (_1!30507 lt!1884698)))))

(declare-fun b!4719895 () Bool)

(assert (=> b!4719895 (= e!2943540 (contains!16158 lt!1885020 (tuple2!54427 (_1!30507 lt!1884698) (_2!30507 lt!1884698))))))

(assert (= (and d!1502106 res!1996438) b!4719894))

(assert (= (and b!4719894 res!1996439) b!4719895))

(assert (=> d!1502106 m!5652069))

(declare-fun m!5652319 () Bool)

(assert (=> d!1502106 m!5652319))

(declare-fun m!5652321 () Bool)

(assert (=> d!1502106 m!5652321))

(declare-fun m!5652323 () Bool)

(assert (=> b!4719894 m!5652323))

(declare-fun m!5652325 () Bool)

(assert (=> b!4719895 m!5652325))

(assert (=> d!1502036 d!1502106))

(declare-fun b!4719924 () Bool)

(assert (=> b!4719924 false))

(declare-fun lt!1885166 () Unit!129252)

(declare-fun lt!1885164 () Unit!129252)

(assert (=> b!4719924 (= lt!1885166 lt!1885164)))

(assert (=> b!4719924 (containsKey!3359 (t!360192 (toList!5906 lt!1884699)) (_1!30507 (h!59153 (toList!5906 lt!1884699))))))

(assert (=> b!4719924 (= lt!1885164 (lemmaInGetKeysListThenContainsKey!944 (t!360192 (toList!5906 lt!1884699)) (_1!30507 (h!59153 (toList!5906 lt!1884699)))))))

(declare-fun lt!1885163 () Unit!129252)

(declare-fun lt!1885169 () Unit!129252)

(assert (=> b!4719924 (= lt!1885163 lt!1885169)))

(declare-fun call!330002 () List!52939)

(assert (=> b!4719924 (contains!16159 call!330002 (_1!30507 (h!59153 (toList!5906 lt!1884699))))))

(declare-fun lt!1885162 () List!52936)

(assert (=> b!4719924 (= lt!1885169 (lemmaInListThenGetKeysListContains!940 lt!1885162 (_1!30507 (h!59153 (toList!5906 lt!1884699)))))))

(assert (=> b!4719924 (= lt!1885162 (insertNoDuplicatedKeys!587 (t!360192 (toList!5906 lt!1884699)) (_1!30507 lt!1884698) (_2!30507 lt!1884698)))))

(declare-fun e!2943558 () Unit!129252)

(declare-fun Unit!129381 () Unit!129252)

(assert (=> b!4719924 (= e!2943558 Unit!129381)))

(declare-fun c!806050 () Bool)

(declare-fun bm!329997 () Bool)

(assert (=> bm!329997 (= call!330002 (getKeysList!945 (ite c!806050 (toList!5906 lt!1884699) lt!1885162)))))

(declare-fun b!4719925 () Bool)

(declare-fun e!2943555 () List!52936)

(declare-fun call!330003 () List!52936)

(assert (=> b!4719925 (= e!2943555 call!330003)))

(declare-fun lt!1885168 () List!52939)

(assert (=> b!4719925 (= lt!1885168 call!330002)))

(declare-fun lt!1885167 () Unit!129252)

(declare-fun lemmaSubseqRefl!138 (List!52939) Unit!129252)

(assert (=> b!4719925 (= lt!1885167 (lemmaSubseqRefl!138 lt!1885168))))

(declare-fun subseq!654 (List!52939 List!52939) Bool)

(assert (=> b!4719925 (subseq!654 lt!1885168 lt!1885168)))

(declare-fun lt!1885159 () Unit!129252)

(assert (=> b!4719925 (= lt!1885159 lt!1885167)))

(declare-fun bm!329998 () Bool)

(declare-fun call!330004 () List!52936)

(declare-fun call!330005 () List!52936)

(assert (=> bm!329998 (= call!330004 call!330005)))

(declare-fun c!806052 () Bool)

(declare-fun c!806051 () Bool)

(assert (=> bm!329998 (= c!806052 c!806051)))

(declare-fun bm!329999 () Bool)

(declare-fun c!806053 () Bool)

(declare-fun e!2943557 () List!52936)

(declare-fun $colon$colon!1073 (List!52936 tuple2!54426) List!52936)

(assert (=> bm!329999 (= call!330003 ($colon$colon!1073 (ite c!806050 (t!360192 (toList!5906 lt!1884699)) (ite c!806053 (toList!5906 lt!1884699) e!2943557)) (ite (or c!806050 c!806053) (tuple2!54427 (_1!30507 lt!1884698) (_2!30507 lt!1884698)) (ite c!806051 (h!59153 (toList!5906 lt!1884699)) (tuple2!54427 (_1!30507 lt!1884698) (_2!30507 lt!1884698))))))))

(declare-fun b!4719926 () Bool)

(declare-fun e!2943560 () Bool)

(assert (=> b!4719926 (= e!2943560 (not (containsKey!3359 (toList!5906 lt!1884699) (_1!30507 lt!1884698))))))

(declare-fun d!1502108 () Bool)

(declare-fun e!2943561 () Bool)

(assert (=> d!1502108 e!2943561))

(declare-fun res!1996449 () Bool)

(assert (=> d!1502108 (=> (not res!1996449) (not e!2943561))))

(declare-fun lt!1885160 () List!52936)

(assert (=> d!1502108 (= res!1996449 (invariantList!1505 lt!1885160))))

(assert (=> d!1502108 (= lt!1885160 e!2943555)))

(assert (=> d!1502108 (= c!806050 (and ((_ is Cons!52812) (toList!5906 lt!1884699)) (= (_1!30507 (h!59153 (toList!5906 lt!1884699))) (_1!30507 lt!1884698))))))

(assert (=> d!1502108 (invariantList!1505 (toList!5906 lt!1884699))))

(assert (=> d!1502108 (= (insertNoDuplicatedKeys!587 (toList!5906 lt!1884699) (_1!30507 lt!1884698) (_2!30507 lt!1884698)) lt!1885160)))

(declare-fun b!4719927 () Bool)

(assert (=> b!4719927 (= e!2943557 Nil!52812)))

(declare-fun b!4719928 () Bool)

(declare-fun res!1996448 () Bool)

(assert (=> b!4719928 (=> (not res!1996448) (not e!2943561))))

(assert (=> b!4719928 (= res!1996448 (containsKey!3359 lt!1885160 (_1!30507 lt!1884698)))))

(declare-fun b!4719929 () Bool)

(assert (=> b!4719929 (= e!2943557 (insertNoDuplicatedKeys!587 (t!360192 (toList!5906 lt!1884699)) (_1!30507 lt!1884698) (_2!30507 lt!1884698)))))

(declare-fun bm!330000 () Bool)

(assert (=> bm!330000 (= call!330005 call!330003)))

(declare-fun b!4719930 () Bool)

(declare-fun e!2943559 () List!52936)

(assert (=> b!4719930 (= e!2943559 call!330005)))

(declare-fun b!4719931 () Bool)

(declare-fun content!9386 (List!52939) (InoxSet K!14170))

(assert (=> b!4719931 (= e!2943561 (= (content!9386 (getKeysList!945 lt!1885160)) ((_ map or) (content!9386 (getKeysList!945 (toList!5906 lt!1884699))) (store ((as const (Array K!14170 Bool)) false) (_1!30507 lt!1884698) true))))))

(declare-fun b!4719932 () Bool)

(declare-fun e!2943556 () List!52936)

(declare-fun lt!1885161 () List!52936)

(assert (=> b!4719932 (= e!2943556 lt!1885161)))

(assert (=> b!4719932 (= lt!1885161 call!330004)))

(declare-fun c!806049 () Bool)

(assert (=> b!4719932 (= c!806049 (containsKey!3359 (insertNoDuplicatedKeys!587 (t!360192 (toList!5906 lt!1884699)) (_1!30507 lt!1884698) (_2!30507 lt!1884698)) (_1!30507 (h!59153 (toList!5906 lt!1884699)))))))

(declare-fun lt!1885165 () Unit!129252)

(assert (=> b!4719932 (= lt!1885165 e!2943558)))

(declare-fun b!4719933 () Bool)

(assert (=> b!4719933 (= e!2943555 e!2943559)))

(declare-fun res!1996451 () Bool)

(assert (=> b!4719933 (= res!1996451 ((_ is Cons!52812) (toList!5906 lt!1884699)))))

(assert (=> b!4719933 (=> (not res!1996451) (not e!2943560))))

(assert (=> b!4719933 (= c!806053 e!2943560)))

(declare-fun b!4719934 () Bool)

(assert (=> b!4719934 (= e!2943556 call!330004)))

(declare-fun b!4719935 () Bool)

(declare-fun res!1996450 () Bool)

(assert (=> b!4719935 (=> (not res!1996450) (not e!2943561))))

(assert (=> b!4719935 (= res!1996450 (contains!16158 lt!1885160 (tuple2!54427 (_1!30507 lt!1884698) (_2!30507 lt!1884698))))))

(declare-fun b!4719936 () Bool)

(assert (=> b!4719936 (= c!806051 ((_ is Cons!52812) (toList!5906 lt!1884699)))))

(assert (=> b!4719936 (= e!2943559 e!2943556)))

(declare-fun b!4719937 () Bool)

(declare-fun Unit!129382 () Unit!129252)

(assert (=> b!4719937 (= e!2943558 Unit!129382)))

(assert (= (and d!1502108 c!806050) b!4719925))

(assert (= (and d!1502108 (not c!806050)) b!4719933))

(assert (= (and b!4719933 res!1996451) b!4719926))

(assert (= (and b!4719933 c!806053) b!4719930))

(assert (= (and b!4719933 (not c!806053)) b!4719936))

(assert (= (and b!4719936 c!806051) b!4719932))

(assert (= (and b!4719936 (not c!806051)) b!4719934))

(assert (= (and b!4719932 c!806049) b!4719924))

(assert (= (and b!4719932 (not c!806049)) b!4719937))

(assert (= (or b!4719932 b!4719934) bm!329998))

(assert (= (and bm!329998 c!806052) b!4719929))

(assert (= (and bm!329998 (not c!806052)) b!4719927))

(assert (= (or b!4719930 bm!329998) bm!330000))

(assert (= (or b!4719925 b!4719924) bm!329997))

(assert (= (or b!4719925 bm!330000) bm!329999))

(assert (= (and d!1502108 res!1996449) b!4719928))

(assert (= (and b!4719928 res!1996448) b!4719935))

(assert (= (and b!4719935 res!1996450) b!4719931))

(declare-fun m!5652327 () Bool)

(assert (=> b!4719924 m!5652327))

(declare-fun m!5652329 () Bool)

(assert (=> b!4719924 m!5652329))

(declare-fun m!5652331 () Bool)

(assert (=> b!4719924 m!5652331))

(declare-fun m!5652333 () Bool)

(assert (=> b!4719924 m!5652333))

(declare-fun m!5652335 () Bool)

(assert (=> b!4719924 m!5652335))

(declare-fun m!5652337 () Bool)

(assert (=> b!4719928 m!5652337))

(declare-fun m!5652339 () Bool)

(assert (=> bm!329999 m!5652339))

(assert (=> b!4719932 m!5652327))

(assert (=> b!4719932 m!5652327))

(declare-fun m!5652341 () Bool)

(assert (=> b!4719932 m!5652341))

(declare-fun m!5652343 () Bool)

(assert (=> bm!329997 m!5652343))

(declare-fun m!5652345 () Bool)

(assert (=> b!4719925 m!5652345))

(declare-fun m!5652347 () Bool)

(assert (=> b!4719925 m!5652347))

(declare-fun m!5652349 () Bool)

(assert (=> b!4719926 m!5652349))

(declare-fun m!5652351 () Bool)

(assert (=> b!4719931 m!5652351))

(declare-fun m!5652353 () Bool)

(assert (=> b!4719931 m!5652353))

(assert (=> b!4719931 m!5652353))

(declare-fun m!5652355 () Bool)

(assert (=> b!4719931 m!5652355))

(assert (=> b!4719931 m!5652351))

(declare-fun m!5652357 () Bool)

(assert (=> b!4719931 m!5652357))

(declare-fun m!5652359 () Bool)

(assert (=> b!4719931 m!5652359))

(declare-fun m!5652361 () Bool)

(assert (=> b!4719935 m!5652361))

(assert (=> b!4719929 m!5652327))

(declare-fun m!5652363 () Bool)

(assert (=> d!1502108 m!5652363))

(declare-fun m!5652365 () Bool)

(assert (=> d!1502108 m!5652365))

(assert (=> d!1502036 d!1502108))

(declare-fun d!1502110 () Bool)

(declare-fun res!1996452 () Bool)

(declare-fun e!2943562 () Bool)

(assert (=> d!1502110 (=> res!1996452 e!2943562)))

(assert (=> d!1502110 (= res!1996452 ((_ is Nil!52812) (toList!5906 lt!1884696)))))

(assert (=> d!1502110 (= (forall!11574 (toList!5906 lt!1884696) lambda!214950) e!2943562)))

(declare-fun b!4719938 () Bool)

(declare-fun e!2943563 () Bool)

(assert (=> b!4719938 (= e!2943562 e!2943563)))

(declare-fun res!1996453 () Bool)

(assert (=> b!4719938 (=> (not res!1996453) (not e!2943563))))

(assert (=> b!4719938 (= res!1996453 (dynLambda!21811 lambda!214950 (h!59153 (toList!5906 lt!1884696))))))

(declare-fun b!4719939 () Bool)

(assert (=> b!4719939 (= e!2943563 (forall!11574 (t!360192 (toList!5906 lt!1884696)) lambda!214950))))

(assert (= (and d!1502110 (not res!1996452)) b!4719938))

(assert (= (and b!4719938 res!1996453) b!4719939))

(declare-fun b_lambda!177911 () Bool)

(assert (=> (not b_lambda!177911) (not b!4719938)))

(declare-fun m!5652367 () Bool)

(assert (=> b!4719938 m!5652367))

(declare-fun m!5652369 () Bool)

(assert (=> b!4719939 m!5652369))

(assert (=> b!4719651 d!1502110))

(declare-fun d!1502112 () Bool)

(declare-fun res!1996454 () Bool)

(declare-fun e!2943564 () Bool)

(assert (=> d!1502112 (=> res!1996454 e!2943564)))

(assert (=> d!1502112 (= res!1996454 ((_ is Nil!52812) (toList!5906 lt!1884696)))))

(assert (=> d!1502112 (= (forall!11574 (toList!5906 lt!1884696) lambda!214987) e!2943564)))

(declare-fun b!4719940 () Bool)

(declare-fun e!2943565 () Bool)

(assert (=> b!4719940 (= e!2943564 e!2943565)))

(declare-fun res!1996455 () Bool)

(assert (=> b!4719940 (=> (not res!1996455) (not e!2943565))))

(assert (=> b!4719940 (= res!1996455 (dynLambda!21811 lambda!214987 (h!59153 (toList!5906 lt!1884696))))))

(declare-fun b!4719941 () Bool)

(assert (=> b!4719941 (= e!2943565 (forall!11574 (t!360192 (toList!5906 lt!1884696)) lambda!214987))))

(assert (= (and d!1502112 (not res!1996454)) b!4719940))

(assert (= (and b!4719940 res!1996455) b!4719941))

(declare-fun b_lambda!177913 () Bool)

(assert (=> (not b_lambda!177913) (not b!4719940)))

(declare-fun m!5652371 () Bool)

(assert (=> b!4719940 m!5652371))

(declare-fun m!5652373 () Bool)

(assert (=> b!4719941 m!5652373))

(assert (=> b!4719789 d!1502112))

(declare-fun d!1502114 () Bool)

(declare-fun res!1996456 () Bool)

(declare-fun e!2943566 () Bool)

(assert (=> d!1502114 (=> res!1996456 e!2943566)))

(assert (=> d!1502114 (= res!1996456 ((_ is Nil!52812) (toList!5906 lt!1884696)))))

(assert (=> d!1502114 (= (forall!11574 (toList!5906 lt!1884696) (ite c!806019 lambda!214989 lambda!214990)) e!2943566)))

(declare-fun b!4719942 () Bool)

(declare-fun e!2943567 () Bool)

(assert (=> b!4719942 (= e!2943566 e!2943567)))

(declare-fun res!1996457 () Bool)

(assert (=> b!4719942 (=> (not res!1996457) (not e!2943567))))

(assert (=> b!4719942 (= res!1996457 (dynLambda!21811 (ite c!806019 lambda!214989 lambda!214990) (h!59153 (toList!5906 lt!1884696))))))

(declare-fun b!4719943 () Bool)

(assert (=> b!4719943 (= e!2943567 (forall!11574 (t!360192 (toList!5906 lt!1884696)) (ite c!806019 lambda!214989 lambda!214990)))))

(assert (= (and d!1502114 (not res!1996456)) b!4719942))

(assert (= (and b!4719942 res!1996457) b!4719943))

(declare-fun b_lambda!177915 () Bool)

(assert (=> (not b_lambda!177915) (not b!4719942)))

(declare-fun m!5652375 () Bool)

(assert (=> b!4719942 m!5652375))

(declare-fun m!5652377 () Bool)

(assert (=> b!4719943 m!5652377))

(assert (=> bm!329984 d!1502114))

(declare-fun d!1502116 () Bool)

(assert (=> d!1502116 (= (tail!8986 (toList!5905 lm!2023)) (t!360193 (toList!5905 lm!2023)))))

(assert (=> d!1502004 d!1502116))

(declare-fun b!4719946 () Bool)

(declare-fun e!2943569 () Option!12353)

(assert (=> b!4719946 (= e!2943569 (getValueByKey!1949 (t!360192 (toList!5906 lt!1885026)) (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun b!4719944 () Bool)

(declare-fun e!2943568 () Option!12353)

(assert (=> b!4719944 (= e!2943568 (Some!12352 (_2!30507 (h!59153 (toList!5906 lt!1885026)))))))

(declare-fun b!4719945 () Bool)

(assert (=> b!4719945 (= e!2943568 e!2943569)))

(declare-fun c!806055 () Bool)

(assert (=> b!4719945 (= c!806055 (and ((_ is Cons!52812) (toList!5906 lt!1885026)) (not (= (_1!30507 (h!59153 (toList!5906 lt!1885026))) (_1!30507 (h!59153 oldBucket!34))))))))

(declare-fun b!4719947 () Bool)

(assert (=> b!4719947 (= e!2943569 None!12352)))

(declare-fun d!1502118 () Bool)

(declare-fun c!806054 () Bool)

(assert (=> d!1502118 (= c!806054 (and ((_ is Cons!52812) (toList!5906 lt!1885026)) (= (_1!30507 (h!59153 (toList!5906 lt!1885026))) (_1!30507 (h!59153 oldBucket!34)))))))

(assert (=> d!1502118 (= (getValueByKey!1949 (toList!5906 lt!1885026) (_1!30507 (h!59153 oldBucket!34))) e!2943568)))

(assert (= (and d!1502118 c!806054) b!4719944))

(assert (= (and d!1502118 (not c!806054)) b!4719945))

(assert (= (and b!4719945 c!806055) b!4719946))

(assert (= (and b!4719945 (not c!806055)) b!4719947))

(declare-fun m!5652379 () Bool)

(assert (=> b!4719946 m!5652379))

(assert (=> b!4719758 d!1502118))

(declare-fun d!1502120 () Bool)

(declare-fun res!1996458 () Bool)

(declare-fun e!2943570 () Bool)

(assert (=> d!1502120 (=> res!1996458 e!2943570)))

(assert (=> d!1502120 (= res!1996458 (and ((_ is Cons!52812) lt!1885099) (= (_1!30507 (h!59153 lt!1885099)) key!4653)))))

(assert (=> d!1502120 (= (containsKey!3357 lt!1885099 key!4653) e!2943570)))

(declare-fun b!4719948 () Bool)

(declare-fun e!2943571 () Bool)

(assert (=> b!4719948 (= e!2943570 e!2943571)))

(declare-fun res!1996459 () Bool)

(assert (=> b!4719948 (=> (not res!1996459) (not e!2943571))))

(assert (=> b!4719948 (= res!1996459 ((_ is Cons!52812) lt!1885099))))

(declare-fun b!4719949 () Bool)

(assert (=> b!4719949 (= e!2943571 (containsKey!3357 (t!360192 lt!1885099) key!4653))))

(assert (= (and d!1502120 (not res!1996458)) b!4719948))

(assert (= (and b!4719948 res!1996459) b!4719949))

(declare-fun m!5652381 () Bool)

(assert (=> b!4719949 m!5652381))

(assert (=> d!1502066 d!1502120))

(assert (=> d!1502066 d!1502008))

(declare-fun b!4719952 () Bool)

(declare-fun e!2943573 () Option!12353)

(assert (=> b!4719952 (= e!2943573 (getValueByKey!1949 (t!360192 (toList!5906 lt!1885022)) (_1!30507 lt!1884698)))))

(declare-fun b!4719950 () Bool)

(declare-fun e!2943572 () Option!12353)

(assert (=> b!4719950 (= e!2943572 (Some!12352 (_2!30507 (h!59153 (toList!5906 lt!1885022)))))))

(declare-fun b!4719951 () Bool)

(assert (=> b!4719951 (= e!2943572 e!2943573)))

(declare-fun c!806057 () Bool)

(assert (=> b!4719951 (= c!806057 (and ((_ is Cons!52812) (toList!5906 lt!1885022)) (not (= (_1!30507 (h!59153 (toList!5906 lt!1885022))) (_1!30507 lt!1884698)))))))

(declare-fun b!4719953 () Bool)

(assert (=> b!4719953 (= e!2943573 None!12352)))

(declare-fun d!1502122 () Bool)

(declare-fun c!806056 () Bool)

(assert (=> d!1502122 (= c!806056 (and ((_ is Cons!52812) (toList!5906 lt!1885022)) (= (_1!30507 (h!59153 (toList!5906 lt!1885022))) (_1!30507 lt!1884698))))))

(assert (=> d!1502122 (= (getValueByKey!1949 (toList!5906 lt!1885022) (_1!30507 lt!1884698)) e!2943572)))

(assert (= (and d!1502122 c!806056) b!4719950))

(assert (= (and d!1502122 (not c!806056)) b!4719951))

(assert (= (and b!4719951 c!806057) b!4719952))

(assert (= (and b!4719951 (not c!806057)) b!4719953))

(declare-fun m!5652383 () Bool)

(assert (=> b!4719952 m!5652383))

(assert (=> b!4719756 d!1502122))

(declare-fun d!1502124 () Bool)

(declare-fun res!1996460 () Bool)

(declare-fun e!2943574 () Bool)

(assert (=> d!1502124 (=> res!1996460 e!2943574)))

(assert (=> d!1502124 (= res!1996460 ((_ is Nil!52813) (t!360193 (toList!5905 lm!2023))))))

(assert (=> d!1502124 (= (forall!11572 (t!360193 (toList!5905 lm!2023)) lambda!214876) e!2943574)))

(declare-fun b!4719954 () Bool)

(declare-fun e!2943575 () Bool)

(assert (=> b!4719954 (= e!2943574 e!2943575)))

(declare-fun res!1996461 () Bool)

(assert (=> b!4719954 (=> (not res!1996461) (not e!2943575))))

(assert (=> b!4719954 (= res!1996461 (dynLambda!21810 lambda!214876 (h!59154 (t!360193 (toList!5905 lm!2023)))))))

(declare-fun b!4719955 () Bool)

(assert (=> b!4719955 (= e!2943575 (forall!11572 (t!360193 (t!360193 (toList!5905 lm!2023))) lambda!214876))))

(assert (= (and d!1502124 (not res!1996460)) b!4719954))

(assert (= (and b!4719954 res!1996461) b!4719955))

(declare-fun b_lambda!177917 () Bool)

(assert (=> (not b_lambda!177917) (not b!4719954)))

(declare-fun m!5652385 () Bool)

(assert (=> b!4719954 m!5652385))

(declare-fun m!5652387 () Bool)

(assert (=> b!4719955 m!5652387))

(assert (=> b!4719822 d!1502124))

(declare-fun bs!1106811 () Bool)

(declare-fun b!4719958 () Bool)

(assert (= bs!1106811 (and b!4719958 b!4719838)))

(declare-fun lambda!215004 () Int)

(assert (=> bs!1106811 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215004 lambda!214999))))

(declare-fun bs!1106812 () Bool)

(assert (= bs!1106812 (and b!4719958 b!4719716)))

(assert (=> bs!1106812 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215004 lambda!214972))))

(declare-fun bs!1106813 () Bool)

(assert (= bs!1106813 (and b!4719958 b!4719837)))

(assert (=> bs!1106813 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1885120) (= lambda!215004 lambda!215001))))

(declare-fun bs!1106814 () Bool)

(assert (= bs!1106814 (and b!4719958 b!4719725)))

(assert (=> bs!1106814 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1885008) (= lambda!215004 lambda!214981))))

(assert (=> bs!1106813 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215004 lambda!215000))))

(declare-fun bs!1106815 () Bool)

(assert (= bs!1106815 (and b!4719958 b!4719715)))

(assert (=> bs!1106815 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884963) (= lambda!215004 lambda!214974))))

(declare-fun bs!1106816 () Bool)

(assert (= bs!1106816 (and b!4719958 b!4719791)))

(assert (=> bs!1106816 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215004 lambda!214985))))

(declare-fun bs!1106817 () Bool)

(assert (= bs!1106817 (and b!4719958 d!1501954)))

(assert (=> bs!1106817 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884817) (= lambda!215004 lambda!214951))))

(declare-fun bs!1106818 () Bool)

(assert (= bs!1106818 (and b!4719958 b!4719726)))

(assert (=> bs!1106818 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215004 lambda!214977))))

(declare-fun bs!1106819 () Bool)

(assert (= bs!1106819 (and b!4719958 b!4719652)))

(assert (=> bs!1106819 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884835) (= lambda!215004 lambda!214950))))

(assert (=> bs!1106814 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215004 lambda!214979))))

(declare-fun bs!1106820 () Bool)

(assert (= bs!1106820 (and b!4719958 b!4719653)))

(assert (=> bs!1106820 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215004 lambda!214948))))

(declare-fun bs!1106821 () Bool)

(assert (= bs!1106821 (and b!4719958 b!4719795)))

(assert (=> bs!1106821 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1885094) (= lambda!215004 lambda!214991))))

(declare-fun bs!1106822 () Bool)

(assert (= bs!1106822 (and b!4719958 d!1502076)))

(assert (=> bs!1106822 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1885102) (= lambda!215004 lambda!215002))))

(assert (=> bs!1106821 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215004 lambda!214990))))

(declare-fun bs!1106823 () Bool)

(assert (= bs!1106823 (and b!4719958 d!1501952)))

(assert (=> bs!1106823 (not (= lambda!215004 lambda!214879))))

(assert (=> bs!1106819 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215004 lambda!214949))))

(declare-fun bs!1106824 () Bool)

(assert (= bs!1106824 (and b!4719958 b!4719796)))

(assert (=> bs!1106824 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215004 lambda!214989))))

(assert (=> bs!1106815 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215004 lambda!214973))))

(declare-fun bs!1106825 () Bool)

(assert (= bs!1106825 (and b!4719958 d!1502052)))

(assert (=> bs!1106825 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1885076) (= lambda!215004 lambda!214992))))

(declare-fun bs!1106826 () Bool)

(assert (= bs!1106826 (and b!4719958 b!4719790)))

(assert (=> bs!1106826 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215004 lambda!214986))))

(declare-fun bs!1106827 () Bool)

(assert (= bs!1106827 (and b!4719958 d!1502050)))

(assert (=> bs!1106827 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1885055) (= lambda!215004 lambda!214988))))

(assert (=> bs!1106826 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1885073) (= lambda!215004 lambda!214987))))

(declare-fun bs!1106828 () Bool)

(assert (= bs!1106828 (and b!4719958 d!1502034)))

(assert (=> bs!1106828 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884990) (= lambda!215004 lambda!214982))))

(declare-fun bs!1106829 () Bool)

(assert (= bs!1106829 (and b!4719958 d!1502062)))

(assert (=> bs!1106829 (not (= lambda!215004 lambda!214995))))

(declare-fun bs!1106830 () Bool)

(assert (= bs!1106830 (and b!4719958 d!1502028)))

(assert (=> bs!1106830 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884945) (= lambda!215004 lambda!214975))))

(assert (=> b!4719958 true))

(declare-fun bs!1106831 () Bool)

(declare-fun b!4719957 () Bool)

(assert (= bs!1106831 (and b!4719957 b!4719838)))

(declare-fun lambda!215005 () Int)

(assert (=> bs!1106831 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215005 lambda!214999))))

(declare-fun bs!1106832 () Bool)

(assert (= bs!1106832 (and b!4719957 b!4719716)))

(assert (=> bs!1106832 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215005 lambda!214972))))

(declare-fun bs!1106833 () Bool)

(assert (= bs!1106833 (and b!4719957 b!4719837)))

(assert (=> bs!1106833 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1885120) (= lambda!215005 lambda!215001))))

(declare-fun bs!1106834 () Bool)

(assert (= bs!1106834 (and b!4719957 b!4719725)))

(assert (=> bs!1106834 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1885008) (= lambda!215005 lambda!214981))))

(declare-fun bs!1106835 () Bool)

(assert (= bs!1106835 (and b!4719957 b!4719715)))

(assert (=> bs!1106835 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884963) (= lambda!215005 lambda!214974))))

(declare-fun bs!1106836 () Bool)

(assert (= bs!1106836 (and b!4719957 b!4719791)))

(assert (=> bs!1106836 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215005 lambda!214985))))

(declare-fun bs!1106837 () Bool)

(assert (= bs!1106837 (and b!4719957 d!1501954)))

(assert (=> bs!1106837 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884817) (= lambda!215005 lambda!214951))))

(declare-fun bs!1106838 () Bool)

(assert (= bs!1106838 (and b!4719957 b!4719726)))

(assert (=> bs!1106838 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215005 lambda!214977))))

(declare-fun bs!1106839 () Bool)

(assert (= bs!1106839 (and b!4719957 b!4719652)))

(assert (=> bs!1106839 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884835) (= lambda!215005 lambda!214950))))

(assert (=> bs!1106834 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215005 lambda!214979))))

(declare-fun bs!1106840 () Bool)

(assert (= bs!1106840 (and b!4719957 b!4719653)))

(assert (=> bs!1106840 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215005 lambda!214948))))

(declare-fun bs!1106841 () Bool)

(assert (= bs!1106841 (and b!4719957 b!4719795)))

(assert (=> bs!1106841 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1885094) (= lambda!215005 lambda!214991))))

(declare-fun bs!1106842 () Bool)

(assert (= bs!1106842 (and b!4719957 d!1502076)))

(assert (=> bs!1106842 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1885102) (= lambda!215005 lambda!215002))))

(assert (=> bs!1106841 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215005 lambda!214990))))

(declare-fun bs!1106843 () Bool)

(assert (= bs!1106843 (and b!4719957 d!1501952)))

(assert (=> bs!1106843 (not (= lambda!215005 lambda!214879))))

(assert (=> bs!1106839 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215005 lambda!214949))))

(declare-fun bs!1106844 () Bool)

(assert (= bs!1106844 (and b!4719957 b!4719796)))

(assert (=> bs!1106844 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215005 lambda!214989))))

(assert (=> bs!1106835 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215005 lambda!214973))))

(declare-fun bs!1106845 () Bool)

(assert (= bs!1106845 (and b!4719957 d!1502052)))

(assert (=> bs!1106845 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1885076) (= lambda!215005 lambda!214992))))

(declare-fun bs!1106846 () Bool)

(assert (= bs!1106846 (and b!4719957 b!4719790)))

(assert (=> bs!1106846 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884696) (= lambda!215005 lambda!214986))))

(declare-fun bs!1106847 () Bool)

(assert (= bs!1106847 (and b!4719957 d!1502050)))

(assert (=> bs!1106847 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1885055) (= lambda!215005 lambda!214988))))

(assert (=> bs!1106833 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215005 lambda!215000))))

(declare-fun bs!1106848 () Bool)

(assert (= bs!1106848 (and b!4719957 b!4719958)))

(assert (=> bs!1106848 (= lambda!215005 lambda!215004)))

(assert (=> bs!1106846 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1885073) (= lambda!215005 lambda!214987))))

(declare-fun bs!1106849 () Bool)

(assert (= bs!1106849 (and b!4719957 d!1502034)))

(assert (=> bs!1106849 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884990) (= lambda!215005 lambda!214982))))

(declare-fun bs!1106850 () Bool)

(assert (= bs!1106850 (and b!4719957 d!1502062)))

(assert (=> bs!1106850 (not (= lambda!215005 lambda!214995))))

(declare-fun bs!1106851 () Bool)

(assert (= bs!1106851 (and b!4719957 d!1502028)))

(assert (=> bs!1106851 (= (= (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1884945) (= lambda!215005 lambda!214975))))

(assert (=> b!4719957 true))

(declare-fun lt!1885190 () ListMap!5269)

(declare-fun lambda!215006 () Int)

(assert (=> b!4719957 (= (= lt!1885190 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215006 lambda!215005))))

(assert (=> bs!1106831 (= (= lt!1885190 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215006 lambda!214999))))

(assert (=> bs!1106832 (= (= lt!1885190 lt!1884696) (= lambda!215006 lambda!214972))))

(assert (=> bs!1106833 (= (= lt!1885190 lt!1885120) (= lambda!215006 lambda!215001))))

(assert (=> bs!1106834 (= (= lt!1885190 lt!1885008) (= lambda!215006 lambda!214981))))

(assert (=> bs!1106835 (= (= lt!1885190 lt!1884963) (= lambda!215006 lambda!214974))))

(assert (=> bs!1106836 (= (= lt!1885190 lt!1884696) (= lambda!215006 lambda!214985))))

(assert (=> bs!1106837 (= (= lt!1885190 lt!1884817) (= lambda!215006 lambda!214951))))

(assert (=> bs!1106838 (= (= lt!1885190 lt!1884696) (= lambda!215006 lambda!214977))))

(assert (=> bs!1106839 (= (= lt!1885190 lt!1884835) (= lambda!215006 lambda!214950))))

(assert (=> bs!1106834 (= (= lt!1885190 lt!1884696) (= lambda!215006 lambda!214979))))

(assert (=> bs!1106840 (= (= lt!1885190 lt!1884696) (= lambda!215006 lambda!214948))))

(assert (=> bs!1106841 (= (= lt!1885190 lt!1885094) (= lambda!215006 lambda!214991))))

(assert (=> bs!1106842 (= (= lt!1885190 lt!1885102) (= lambda!215006 lambda!215002))))

(assert (=> bs!1106841 (= (= lt!1885190 lt!1884696) (= lambda!215006 lambda!214990))))

(assert (=> bs!1106843 (not (= lambda!215006 lambda!214879))))

(assert (=> bs!1106839 (= (= lt!1885190 lt!1884696) (= lambda!215006 lambda!214949))))

(assert (=> bs!1106844 (= (= lt!1885190 lt!1884696) (= lambda!215006 lambda!214989))))

(assert (=> bs!1106835 (= (= lt!1885190 lt!1884696) (= lambda!215006 lambda!214973))))

(assert (=> bs!1106845 (= (= lt!1885190 lt!1885076) (= lambda!215006 lambda!214992))))

(assert (=> bs!1106846 (= (= lt!1885190 lt!1884696) (= lambda!215006 lambda!214986))))

(assert (=> bs!1106847 (= (= lt!1885190 lt!1885055) (= lambda!215006 lambda!214988))))

(assert (=> bs!1106833 (= (= lt!1885190 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215006 lambda!215000))))

(assert (=> bs!1106848 (= (= lt!1885190 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215006 lambda!215004))))

(assert (=> bs!1106846 (= (= lt!1885190 lt!1885073) (= lambda!215006 lambda!214987))))

(assert (=> bs!1106849 (= (= lt!1885190 lt!1884990) (= lambda!215006 lambda!214982))))

(assert (=> bs!1106850 (not (= lambda!215006 lambda!214995))))

(assert (=> bs!1106851 (= (= lt!1885190 lt!1884945) (= lambda!215006 lambda!214975))))

(assert (=> b!4719957 true))

(declare-fun bs!1106852 () Bool)

(declare-fun d!1502126 () Bool)

(assert (= bs!1106852 (and d!1502126 b!4719957)))

(declare-fun lt!1885172 () ListMap!5269)

(declare-fun lambda!215007 () Int)

(assert (=> bs!1106852 (= (= lt!1885172 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215007 lambda!215005))))

(declare-fun bs!1106853 () Bool)

(assert (= bs!1106853 (and d!1502126 b!4719838)))

(assert (=> bs!1106853 (= (= lt!1885172 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215007 lambda!214999))))

(declare-fun bs!1106854 () Bool)

(assert (= bs!1106854 (and d!1502126 b!4719716)))

(assert (=> bs!1106854 (= (= lt!1885172 lt!1884696) (= lambda!215007 lambda!214972))))

(declare-fun bs!1106855 () Bool)

(assert (= bs!1106855 (and d!1502126 b!4719837)))

(assert (=> bs!1106855 (= (= lt!1885172 lt!1885120) (= lambda!215007 lambda!215001))))

(declare-fun bs!1106856 () Bool)

(assert (= bs!1106856 (and d!1502126 b!4719725)))

(assert (=> bs!1106856 (= (= lt!1885172 lt!1885008) (= lambda!215007 lambda!214981))))

(declare-fun bs!1106857 () Bool)

(assert (= bs!1106857 (and d!1502126 b!4719715)))

(assert (=> bs!1106857 (= (= lt!1885172 lt!1884963) (= lambda!215007 lambda!214974))))

(declare-fun bs!1106858 () Bool)

(assert (= bs!1106858 (and d!1502126 b!4719791)))

(assert (=> bs!1106858 (= (= lt!1885172 lt!1884696) (= lambda!215007 lambda!214985))))

(declare-fun bs!1106859 () Bool)

(assert (= bs!1106859 (and d!1502126 d!1501954)))

(assert (=> bs!1106859 (= (= lt!1885172 lt!1884817) (= lambda!215007 lambda!214951))))

(declare-fun bs!1106860 () Bool)

(assert (= bs!1106860 (and d!1502126 b!4719726)))

(assert (=> bs!1106860 (= (= lt!1885172 lt!1884696) (= lambda!215007 lambda!214977))))

(declare-fun bs!1106861 () Bool)

(assert (= bs!1106861 (and d!1502126 b!4719652)))

(assert (=> bs!1106861 (= (= lt!1885172 lt!1884835) (= lambda!215007 lambda!214950))))

(assert (=> bs!1106856 (= (= lt!1885172 lt!1884696) (= lambda!215007 lambda!214979))))

(declare-fun bs!1106862 () Bool)

(assert (= bs!1106862 (and d!1502126 b!4719653)))

(assert (=> bs!1106862 (= (= lt!1885172 lt!1884696) (= lambda!215007 lambda!214948))))

(declare-fun bs!1106863 () Bool)

(assert (= bs!1106863 (and d!1502126 d!1502076)))

(assert (=> bs!1106863 (= (= lt!1885172 lt!1885102) (= lambda!215007 lambda!215002))))

(declare-fun bs!1106864 () Bool)

(assert (= bs!1106864 (and d!1502126 b!4719795)))

(assert (=> bs!1106864 (= (= lt!1885172 lt!1884696) (= lambda!215007 lambda!214990))))

(declare-fun bs!1106865 () Bool)

(assert (= bs!1106865 (and d!1502126 d!1501952)))

(assert (=> bs!1106865 (not (= lambda!215007 lambda!214879))))

(assert (=> bs!1106861 (= (= lt!1885172 lt!1884696) (= lambda!215007 lambda!214949))))

(declare-fun bs!1106866 () Bool)

(assert (= bs!1106866 (and d!1502126 b!4719796)))

(assert (=> bs!1106866 (= (= lt!1885172 lt!1884696) (= lambda!215007 lambda!214989))))

(assert (=> bs!1106857 (= (= lt!1885172 lt!1884696) (= lambda!215007 lambda!214973))))

(declare-fun bs!1106867 () Bool)

(assert (= bs!1106867 (and d!1502126 d!1502052)))

(assert (=> bs!1106867 (= (= lt!1885172 lt!1885076) (= lambda!215007 lambda!214992))))

(declare-fun bs!1106868 () Bool)

(assert (= bs!1106868 (and d!1502126 b!4719790)))

(assert (=> bs!1106868 (= (= lt!1885172 lt!1884696) (= lambda!215007 lambda!214986))))

(declare-fun bs!1106869 () Bool)

(assert (= bs!1106869 (and d!1502126 d!1502050)))

(assert (=> bs!1106869 (= (= lt!1885172 lt!1885055) (= lambda!215007 lambda!214988))))

(assert (=> bs!1106855 (= (= lt!1885172 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215007 lambda!215000))))

(declare-fun bs!1106870 () Bool)

(assert (= bs!1106870 (and d!1502126 b!4719958)))

(assert (=> bs!1106870 (= (= lt!1885172 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215007 lambda!215004))))

(assert (=> bs!1106868 (= (= lt!1885172 lt!1885073) (= lambda!215007 lambda!214987))))

(declare-fun bs!1106871 () Bool)

(assert (= bs!1106871 (and d!1502126 d!1502034)))

(assert (=> bs!1106871 (= (= lt!1885172 lt!1884990) (= lambda!215007 lambda!214982))))

(declare-fun bs!1106872 () Bool)

(assert (= bs!1106872 (and d!1502126 d!1502062)))

(assert (=> bs!1106872 (not (= lambda!215007 lambda!214995))))

(declare-fun bs!1106873 () Bool)

(assert (= bs!1106873 (and d!1502126 d!1502028)))

(assert (=> bs!1106873 (= (= lt!1885172 lt!1884945) (= lambda!215007 lambda!214975))))

(assert (=> bs!1106852 (= (= lt!1885172 lt!1885190) (= lambda!215007 lambda!215006))))

(assert (=> bs!1106864 (= (= lt!1885172 lt!1885094) (= lambda!215007 lambda!214991))))

(assert (=> d!1502126 true))

(declare-fun b!4719956 () Bool)

(declare-fun e!2943576 () Bool)

(assert (=> b!4719956 (= e!2943576 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) lambda!215006))))

(declare-fun bm!330001 () Bool)

(declare-fun call!330006 () Unit!129252)

(assert (=> bm!330001 (= call!330006 (lemmaContainsAllItsOwnKeys!791 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))))))

(declare-fun call!330007 () Bool)

(declare-fun c!806058 () Bool)

(declare-fun bm!330002 () Bool)

(assert (=> bm!330002 (= call!330007 (forall!11574 (ite c!806058 (toList!5906 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (_2!30508 (h!59154 (toList!5905 lm!2023)))) (ite c!806058 lambda!215004 lambda!215006)))))

(declare-fun e!2943578 () ListMap!5269)

(assert (=> b!4719957 (= e!2943578 lt!1885190)))

(declare-fun lt!1885171 () ListMap!5269)

(assert (=> b!4719957 (= lt!1885171 (+!2263 (extractMap!2034 (t!360193 (toList!5905 lm!2023))) (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(assert (=> b!4719957 (= lt!1885190 (addToMapMapFromBucket!1438 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))) (+!2263 (extractMap!2034 (t!360193 (toList!5905 lm!2023))) (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun lt!1885181 () Unit!129252)

(assert (=> b!4719957 (= lt!1885181 call!330006)))

(declare-fun call!330008 () Bool)

(assert (=> b!4719957 call!330008))

(declare-fun lt!1885173 () Unit!129252)

(assert (=> b!4719957 (= lt!1885173 lt!1885181)))

(assert (=> b!4719957 (forall!11574 (toList!5906 lt!1885171) lambda!215006)))

(declare-fun lt!1885188 () Unit!129252)

(declare-fun Unit!129383 () Unit!129252)

(assert (=> b!4719957 (= lt!1885188 Unit!129383)))

(assert (=> b!4719957 (forall!11574 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))) lambda!215006)))

(declare-fun lt!1885174 () Unit!129252)

(declare-fun Unit!129384 () Unit!129252)

(assert (=> b!4719957 (= lt!1885174 Unit!129384)))

(declare-fun lt!1885178 () Unit!129252)

(declare-fun Unit!129385 () Unit!129252)

(assert (=> b!4719957 (= lt!1885178 Unit!129385)))

(declare-fun lt!1885189 () Unit!129252)

(assert (=> b!4719957 (= lt!1885189 (forallContained!3629 (toList!5906 lt!1885171) lambda!215006 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(assert (=> b!4719957 (contains!16156 lt!1885171 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(declare-fun lt!1885182 () Unit!129252)

(declare-fun Unit!129386 () Unit!129252)

(assert (=> b!4719957 (= lt!1885182 Unit!129386)))

(assert (=> b!4719957 (contains!16156 lt!1885190 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(declare-fun lt!1885186 () Unit!129252)

(declare-fun Unit!129387 () Unit!129252)

(assert (=> b!4719957 (= lt!1885186 Unit!129387)))

(assert (=> b!4719957 call!330007))

(declare-fun lt!1885175 () Unit!129252)

(declare-fun Unit!129388 () Unit!129252)

(assert (=> b!4719957 (= lt!1885175 Unit!129388)))

(assert (=> b!4719957 (forall!11574 (toList!5906 lt!1885171) lambda!215006)))

(declare-fun lt!1885176 () Unit!129252)

(declare-fun Unit!129389 () Unit!129252)

(assert (=> b!4719957 (= lt!1885176 Unit!129389)))

(declare-fun lt!1885183 () Unit!129252)

(declare-fun Unit!129390 () Unit!129252)

(assert (=> b!4719957 (= lt!1885183 Unit!129390)))

(declare-fun lt!1885179 () Unit!129252)

(assert (=> b!4719957 (= lt!1885179 (addForallContainsKeyThenBeforeAdding!790 (extractMap!2034 (t!360193 (toList!5905 lm!2023))) lt!1885190 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (_2!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(assert (=> b!4719957 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) lambda!215006)))

(declare-fun lt!1885184 () Unit!129252)

(assert (=> b!4719957 (= lt!1885184 lt!1885179)))

(assert (=> b!4719957 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) lambda!215006)))

(declare-fun lt!1885185 () Unit!129252)

(declare-fun Unit!129391 () Unit!129252)

(assert (=> b!4719957 (= lt!1885185 Unit!129391)))

(declare-fun res!1996462 () Bool)

(assert (=> b!4719957 (= res!1996462 (forall!11574 (_2!30508 (h!59154 (toList!5905 lm!2023))) lambda!215006))))

(assert (=> b!4719957 (=> (not res!1996462) (not e!2943576))))

(assert (=> b!4719957 e!2943576))

(declare-fun lt!1885177 () Unit!129252)

(declare-fun Unit!129392 () Unit!129252)

(assert (=> b!4719957 (= lt!1885177 Unit!129392)))

(assert (=> b!4719958 (= e!2943578 (extractMap!2034 (t!360193 (toList!5905 lm!2023))))))

(declare-fun lt!1885170 () Unit!129252)

(assert (=> b!4719958 (= lt!1885170 call!330006)))

(assert (=> b!4719958 call!330008))

(declare-fun lt!1885187 () Unit!129252)

(assert (=> b!4719958 (= lt!1885187 lt!1885170)))

(assert (=> b!4719958 call!330007))

(declare-fun lt!1885180 () Unit!129252)

(declare-fun Unit!129393 () Unit!129252)

(assert (=> b!4719958 (= lt!1885180 Unit!129393)))

(declare-fun e!2943577 () Bool)

(assert (=> d!1502126 e!2943577))

(declare-fun res!1996463 () Bool)

(assert (=> d!1502126 (=> (not res!1996463) (not e!2943577))))

(assert (=> d!1502126 (= res!1996463 (forall!11574 (_2!30508 (h!59154 (toList!5905 lm!2023))) lambda!215007))))

(assert (=> d!1502126 (= lt!1885172 e!2943578)))

(assert (=> d!1502126 (= c!806058 ((_ is Nil!52812) (_2!30508 (h!59154 (toList!5905 lm!2023)))))))

(assert (=> d!1502126 (noDuplicateKeys!2008 (_2!30508 (h!59154 (toList!5905 lm!2023))))))

(assert (=> d!1502126 (= (addToMapMapFromBucket!1438 (_2!30508 (h!59154 (toList!5905 lm!2023))) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) lt!1885172)))

(declare-fun b!4719959 () Bool)

(assert (=> b!4719959 (= e!2943577 (invariantList!1505 (toList!5906 lt!1885172)))))

(declare-fun bm!330003 () Bool)

(assert (=> bm!330003 (= call!330008 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (ite c!806058 lambda!215004 lambda!215005)))))

(declare-fun b!4719960 () Bool)

(declare-fun res!1996464 () Bool)

(assert (=> b!4719960 (=> (not res!1996464) (not e!2943577))))

(assert (=> b!4719960 (= res!1996464 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) lambda!215007))))

(assert (= (and d!1502126 c!806058) b!4719958))

(assert (= (and d!1502126 (not c!806058)) b!4719957))

(assert (= (and b!4719957 res!1996462) b!4719956))

(assert (= (or b!4719958 b!4719957) bm!330001))

(assert (= (or b!4719958 b!4719957) bm!330002))

(assert (= (or b!4719958 b!4719957) bm!330003))

(assert (= (and d!1502126 res!1996463) b!4719960))

(assert (= (and b!4719960 res!1996464) b!4719959))

(declare-fun m!5652389 () Bool)

(assert (=> b!4719959 m!5652389))

(declare-fun m!5652391 () Bool)

(assert (=> bm!330002 m!5652391))

(assert (=> bm!330001 m!5651637))

(declare-fun m!5652393 () Bool)

(assert (=> bm!330001 m!5652393))

(declare-fun m!5652395 () Bool)

(assert (=> b!4719960 m!5652395))

(declare-fun m!5652397 () Bool)

(assert (=> b!4719957 m!5652397))

(declare-fun m!5652399 () Bool)

(assert (=> b!4719957 m!5652399))

(declare-fun m!5652401 () Bool)

(assert (=> b!4719957 m!5652401))

(declare-fun m!5652403 () Bool)

(assert (=> b!4719957 m!5652403))

(assert (=> b!4719957 m!5651637))

(declare-fun m!5652405 () Bool)

(assert (=> b!4719957 m!5652405))

(declare-fun m!5652407 () Bool)

(assert (=> b!4719957 m!5652407))

(declare-fun m!5652409 () Bool)

(assert (=> b!4719957 m!5652409))

(declare-fun m!5652411 () Bool)

(assert (=> b!4719957 m!5652411))

(assert (=> b!4719957 m!5652401))

(declare-fun m!5652413 () Bool)

(assert (=> b!4719957 m!5652413))

(declare-fun m!5652415 () Bool)

(assert (=> b!4719957 m!5652415))

(assert (=> b!4719957 m!5652407))

(assert (=> b!4719957 m!5651637))

(assert (=> b!4719957 m!5652409))

(declare-fun m!5652417 () Bool)

(assert (=> bm!330003 m!5652417))

(declare-fun m!5652419 () Bool)

(assert (=> d!1502126 m!5652419))

(assert (=> d!1502126 m!5651745))

(assert (=> b!4719956 m!5652407))

(assert (=> b!4719787 d!1502126))

(assert (=> b!4719787 d!1501984))

(declare-fun d!1502128 () Bool)

(declare-fun noDuplicatedKeys!370 (List!52936) Bool)

(assert (=> d!1502128 (= (invariantList!1505 (toList!5906 lt!1885052)) (noDuplicatedKeys!370 (toList!5906 lt!1885052)))))

(declare-fun bs!1106874 () Bool)

(assert (= bs!1106874 d!1502128))

(declare-fun m!5652421 () Bool)

(assert (=> bs!1106874 m!5652421))

(assert (=> d!1502048 d!1502128))

(declare-fun d!1502130 () Bool)

(declare-fun res!1996465 () Bool)

(declare-fun e!2943579 () Bool)

(assert (=> d!1502130 (=> res!1996465 e!2943579)))

(assert (=> d!1502130 (= res!1996465 ((_ is Nil!52813) (toList!5905 lm!2023)))))

(assert (=> d!1502130 (= (forall!11572 (toList!5905 lm!2023) lambda!214984) e!2943579)))

(declare-fun b!4719961 () Bool)

(declare-fun e!2943580 () Bool)

(assert (=> b!4719961 (= e!2943579 e!2943580)))

(declare-fun res!1996466 () Bool)

(assert (=> b!4719961 (=> (not res!1996466) (not e!2943580))))

(assert (=> b!4719961 (= res!1996466 (dynLambda!21810 lambda!214984 (h!59154 (toList!5905 lm!2023))))))

(declare-fun b!4719962 () Bool)

(assert (=> b!4719962 (= e!2943580 (forall!11572 (t!360193 (toList!5905 lm!2023)) lambda!214984))))

(assert (= (and d!1502130 (not res!1996465)) b!4719961))

(assert (= (and b!4719961 res!1996466) b!4719962))

(declare-fun b_lambda!177919 () Bool)

(assert (=> (not b_lambda!177919) (not b!4719961)))

(declare-fun m!5652423 () Bool)

(assert (=> b!4719961 m!5652423))

(declare-fun m!5652425 () Bool)

(assert (=> b!4719962 m!5652425))

(assert (=> d!1502048 d!1502130))

(declare-fun d!1502132 () Bool)

(declare-fun res!1996467 () Bool)

(declare-fun e!2943581 () Bool)

(assert (=> d!1502132 (=> res!1996467 e!2943581)))

(assert (=> d!1502132 (= res!1996467 ((_ is Nil!52812) (toList!5906 lt!1884696)))))

(assert (=> d!1502132 (= (forall!11574 (toList!5906 lt!1884696) lambda!214991) e!2943581)))

(declare-fun b!4719963 () Bool)

(declare-fun e!2943582 () Bool)

(assert (=> b!4719963 (= e!2943581 e!2943582)))

(declare-fun res!1996468 () Bool)

(assert (=> b!4719963 (=> (not res!1996468) (not e!2943582))))

(assert (=> b!4719963 (= res!1996468 (dynLambda!21811 lambda!214991 (h!59153 (toList!5906 lt!1884696))))))

(declare-fun b!4719964 () Bool)

(assert (=> b!4719964 (= e!2943582 (forall!11574 (t!360192 (toList!5906 lt!1884696)) lambda!214991))))

(assert (= (and d!1502132 (not res!1996467)) b!4719963))

(assert (= (and b!4719963 res!1996468) b!4719964))

(declare-fun b_lambda!177921 () Bool)

(assert (=> (not b_lambda!177921) (not b!4719963)))

(declare-fun m!5652427 () Bool)

(assert (=> b!4719963 m!5652427))

(declare-fun m!5652429 () Bool)

(assert (=> b!4719964 m!5652429))

(assert (=> b!4719794 d!1502132))

(declare-fun d!1502134 () Bool)

(assert (=> d!1502134 (= (invariantList!1505 (toList!5906 lt!1884945)) (noDuplicatedKeys!370 (toList!5906 lt!1884945)))))

(declare-fun bs!1106875 () Bool)

(assert (= bs!1106875 d!1502134))

(declare-fun m!5652431 () Bool)

(assert (=> bs!1106875 m!5652431))

(assert (=> b!4719717 d!1502134))

(declare-fun d!1502136 () Bool)

(declare-fun res!1996469 () Bool)

(declare-fun e!2943583 () Bool)

(assert (=> d!1502136 (=> res!1996469 e!2943583)))

(assert (=> d!1502136 (= res!1996469 ((_ is Nil!52812) (ite c!806019 (toList!5906 lt!1884696) lt!1884694)))))

(assert (=> d!1502136 (= (forall!11574 (ite c!806019 (toList!5906 lt!1884696) lt!1884694) (ite c!806019 lambda!214989 lambda!214991)) e!2943583)))

(declare-fun b!4719965 () Bool)

(declare-fun e!2943584 () Bool)

(assert (=> b!4719965 (= e!2943583 e!2943584)))

(declare-fun res!1996470 () Bool)

(assert (=> b!4719965 (=> (not res!1996470) (not e!2943584))))

(assert (=> b!4719965 (= res!1996470 (dynLambda!21811 (ite c!806019 lambda!214989 lambda!214991) (h!59153 (ite c!806019 (toList!5906 lt!1884696) lt!1884694))))))

(declare-fun b!4719966 () Bool)

(assert (=> b!4719966 (= e!2943584 (forall!11574 (t!360192 (ite c!806019 (toList!5906 lt!1884696) lt!1884694)) (ite c!806019 lambda!214989 lambda!214991)))))

(assert (= (and d!1502136 (not res!1996469)) b!4719965))

(assert (= (and b!4719965 res!1996470) b!4719966))

(declare-fun b_lambda!177923 () Bool)

(assert (=> (not b_lambda!177923) (not b!4719965)))

(declare-fun m!5652433 () Bool)

(assert (=> b!4719965 m!5652433))

(declare-fun m!5652435 () Bool)

(assert (=> b!4719966 m!5652435))

(assert (=> bm!329983 d!1502136))

(declare-fun d!1502138 () Bool)

(declare-fun res!1996471 () Bool)

(declare-fun e!2943585 () Bool)

(assert (=> d!1502138 (=> res!1996471 e!2943585)))

(assert (=> d!1502138 (= res!1996471 ((_ is Nil!52812) (toList!5906 lt!1884696)))))

(assert (=> d!1502138 (= (forall!11574 (toList!5906 lt!1884696) lambda!214975) e!2943585)))

(declare-fun b!4719967 () Bool)

(declare-fun e!2943586 () Bool)

(assert (=> b!4719967 (= e!2943585 e!2943586)))

(declare-fun res!1996472 () Bool)

(assert (=> b!4719967 (=> (not res!1996472) (not e!2943586))))

(assert (=> b!4719967 (= res!1996472 (dynLambda!21811 lambda!214975 (h!59153 (toList!5906 lt!1884696))))))

(declare-fun b!4719968 () Bool)

(assert (=> b!4719968 (= e!2943586 (forall!11574 (t!360192 (toList!5906 lt!1884696)) lambda!214975))))

(assert (= (and d!1502138 (not res!1996471)) b!4719967))

(assert (= (and b!4719967 res!1996472) b!4719968))

(declare-fun b_lambda!177925 () Bool)

(assert (=> (not b_lambda!177925) (not b!4719967)))

(declare-fun m!5652437 () Bool)

(assert (=> b!4719967 m!5652437))

(declare-fun m!5652439 () Bool)

(assert (=> b!4719968 m!5652439))

(assert (=> b!4719718 d!1502138))

(declare-fun d!1502140 () Bool)

(declare-fun res!1996473 () Bool)

(declare-fun e!2943587 () Bool)

(assert (=> d!1502140 (=> res!1996473 e!2943587)))

(assert (=> d!1502140 (= res!1996473 ((_ is Nil!52812) (toList!5906 lt!1884696)))))

(assert (=> d!1502140 (= (forall!11574 (toList!5906 lt!1884696) lambda!214982) e!2943587)))

(declare-fun b!4719969 () Bool)

(declare-fun e!2943588 () Bool)

(assert (=> b!4719969 (= e!2943587 e!2943588)))

(declare-fun res!1996474 () Bool)

(assert (=> b!4719969 (=> (not res!1996474) (not e!2943588))))

(assert (=> b!4719969 (= res!1996474 (dynLambda!21811 lambda!214982 (h!59153 (toList!5906 lt!1884696))))))

(declare-fun b!4719970 () Bool)

(assert (=> b!4719970 (= e!2943588 (forall!11574 (t!360192 (toList!5906 lt!1884696)) lambda!214982))))

(assert (= (and d!1502140 (not res!1996473)) b!4719969))

(assert (= (and b!4719969 res!1996474) b!4719970))

(declare-fun b_lambda!177927 () Bool)

(assert (=> (not b_lambda!177927) (not b!4719969)))

(declare-fun m!5652441 () Bool)

(assert (=> b!4719969 m!5652441))

(declare-fun m!5652443 () Bool)

(assert (=> b!4719970 m!5652443))

(assert (=> b!4719728 d!1502140))

(declare-fun d!1502142 () Bool)

(declare-fun res!1996475 () Bool)

(declare-fun e!2943589 () Bool)

(assert (=> d!1502142 (=> res!1996475 e!2943589)))

(assert (=> d!1502142 (= res!1996475 ((_ is Nil!52812) oldBucket!34))))

(assert (=> d!1502142 (= (forall!11574 oldBucket!34 lambda!214995) e!2943589)))

(declare-fun b!4719971 () Bool)

(declare-fun e!2943590 () Bool)

(assert (=> b!4719971 (= e!2943589 e!2943590)))

(declare-fun res!1996476 () Bool)

(assert (=> b!4719971 (=> (not res!1996476) (not e!2943590))))

(assert (=> b!4719971 (= res!1996476 (dynLambda!21811 lambda!214995 (h!59153 oldBucket!34)))))

(declare-fun b!4719972 () Bool)

(assert (=> b!4719972 (= e!2943590 (forall!11574 (t!360192 oldBucket!34) lambda!214995))))

(assert (= (and d!1502142 (not res!1996475)) b!4719971))

(assert (= (and b!4719971 res!1996476) b!4719972))

(declare-fun b_lambda!177929 () Bool)

(assert (=> (not b_lambda!177929) (not b!4719971)))

(declare-fun m!5652445 () Bool)

(assert (=> b!4719971 m!5652445))

(declare-fun m!5652447 () Bool)

(assert (=> b!4719972 m!5652447))

(assert (=> d!1502062 d!1502142))

(declare-fun d!1502144 () Bool)

(declare-fun res!1996477 () Bool)

(declare-fun e!2943591 () Bool)

(assert (=> d!1502144 (=> res!1996477 e!2943591)))

(assert (=> d!1502144 (= res!1996477 ((_ is Nil!52812) (toList!5906 lt!1884944)))))

(assert (=> d!1502144 (= (forall!11574 (toList!5906 lt!1884944) lambda!214974) e!2943591)))

(declare-fun b!4719973 () Bool)

(declare-fun e!2943592 () Bool)

(assert (=> b!4719973 (= e!2943591 e!2943592)))

(declare-fun res!1996478 () Bool)

(assert (=> b!4719973 (=> (not res!1996478) (not e!2943592))))

(assert (=> b!4719973 (= res!1996478 (dynLambda!21811 lambda!214974 (h!59153 (toList!5906 lt!1884944))))))

(declare-fun b!4719974 () Bool)

(assert (=> b!4719974 (= e!2943592 (forall!11574 (t!360192 (toList!5906 lt!1884944)) lambda!214974))))

(assert (= (and d!1502144 (not res!1996477)) b!4719973))

(assert (= (and b!4719973 res!1996478) b!4719974))

(declare-fun b_lambda!177931 () Bool)

(assert (=> (not b_lambda!177931) (not b!4719973)))

(declare-fun m!5652449 () Bool)

(assert (=> b!4719973 m!5652449))

(declare-fun m!5652451 () Bool)

(assert (=> b!4719974 m!5652451))

(assert (=> b!4719715 d!1502144))

(declare-fun bs!1106876 () Bool)

(declare-fun d!1502146 () Bool)

(assert (= bs!1106876 (and d!1502146 b!4719957)))

(declare-fun lambda!215012 () Int)

(assert (=> bs!1106876 (= (= lt!1884963 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215012 lambda!215005))))

(declare-fun bs!1106877 () Bool)

(assert (= bs!1106877 (and d!1502146 b!4719716)))

(assert (=> bs!1106877 (= (= lt!1884963 lt!1884696) (= lambda!215012 lambda!214972))))

(declare-fun bs!1106878 () Bool)

(assert (= bs!1106878 (and d!1502146 b!4719837)))

(assert (=> bs!1106878 (= (= lt!1884963 lt!1885120) (= lambda!215012 lambda!215001))))

(declare-fun bs!1106879 () Bool)

(assert (= bs!1106879 (and d!1502146 b!4719725)))

(assert (=> bs!1106879 (= (= lt!1884963 lt!1885008) (= lambda!215012 lambda!214981))))

(declare-fun bs!1106880 () Bool)

(assert (= bs!1106880 (and d!1502146 b!4719715)))

(assert (=> bs!1106880 (= lambda!215012 lambda!214974)))

(declare-fun bs!1106881 () Bool)

(assert (= bs!1106881 (and d!1502146 b!4719791)))

(assert (=> bs!1106881 (= (= lt!1884963 lt!1884696) (= lambda!215012 lambda!214985))))

(declare-fun bs!1106882 () Bool)

(assert (= bs!1106882 (and d!1502146 d!1501954)))

(assert (=> bs!1106882 (= (= lt!1884963 lt!1884817) (= lambda!215012 lambda!214951))))

(declare-fun bs!1106883 () Bool)

(assert (= bs!1106883 (and d!1502146 b!4719726)))

(assert (=> bs!1106883 (= (= lt!1884963 lt!1884696) (= lambda!215012 lambda!214977))))

(declare-fun bs!1106884 () Bool)

(assert (= bs!1106884 (and d!1502146 b!4719652)))

(assert (=> bs!1106884 (= (= lt!1884963 lt!1884835) (= lambda!215012 lambda!214950))))

(assert (=> bs!1106879 (= (= lt!1884963 lt!1884696) (= lambda!215012 lambda!214979))))

(declare-fun bs!1106885 () Bool)

(assert (= bs!1106885 (and d!1502146 b!4719653)))

(assert (=> bs!1106885 (= (= lt!1884963 lt!1884696) (= lambda!215012 lambda!214948))))

(declare-fun bs!1106886 () Bool)

(assert (= bs!1106886 (and d!1502146 d!1502076)))

(assert (=> bs!1106886 (= (= lt!1884963 lt!1885102) (= lambda!215012 lambda!215002))))

(declare-fun bs!1106887 () Bool)

(assert (= bs!1106887 (and d!1502146 b!4719795)))

(assert (=> bs!1106887 (= (= lt!1884963 lt!1884696) (= lambda!215012 lambda!214990))))

(declare-fun bs!1106888 () Bool)

(assert (= bs!1106888 (and d!1502146 d!1501952)))

(assert (=> bs!1106888 (not (= lambda!215012 lambda!214879))))

(assert (=> bs!1106884 (= (= lt!1884963 lt!1884696) (= lambda!215012 lambda!214949))))

(declare-fun bs!1106889 () Bool)

(assert (= bs!1106889 (and d!1502146 d!1502126)))

(assert (=> bs!1106889 (= (= lt!1884963 lt!1885172) (= lambda!215012 lambda!215007))))

(declare-fun bs!1106890 () Bool)

(assert (= bs!1106890 (and d!1502146 b!4719838)))

(assert (=> bs!1106890 (= (= lt!1884963 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215012 lambda!214999))))

(declare-fun bs!1106891 () Bool)

(assert (= bs!1106891 (and d!1502146 b!4719796)))

(assert (=> bs!1106891 (= (= lt!1884963 lt!1884696) (= lambda!215012 lambda!214989))))

(assert (=> bs!1106880 (= (= lt!1884963 lt!1884696) (= lambda!215012 lambda!214973))))

(declare-fun bs!1106892 () Bool)

(assert (= bs!1106892 (and d!1502146 d!1502052)))

(assert (=> bs!1106892 (= (= lt!1884963 lt!1885076) (= lambda!215012 lambda!214992))))

(declare-fun bs!1106893 () Bool)

(assert (= bs!1106893 (and d!1502146 b!4719790)))

(assert (=> bs!1106893 (= (= lt!1884963 lt!1884696) (= lambda!215012 lambda!214986))))

(declare-fun bs!1106894 () Bool)

(assert (= bs!1106894 (and d!1502146 d!1502050)))

(assert (=> bs!1106894 (= (= lt!1884963 lt!1885055) (= lambda!215012 lambda!214988))))

(assert (=> bs!1106878 (= (= lt!1884963 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215012 lambda!215000))))

(declare-fun bs!1106895 () Bool)

(assert (= bs!1106895 (and d!1502146 b!4719958)))

(assert (=> bs!1106895 (= (= lt!1884963 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215012 lambda!215004))))

(assert (=> bs!1106893 (= (= lt!1884963 lt!1885073) (= lambda!215012 lambda!214987))))

(declare-fun bs!1106896 () Bool)

(assert (= bs!1106896 (and d!1502146 d!1502034)))

(assert (=> bs!1106896 (= (= lt!1884963 lt!1884990) (= lambda!215012 lambda!214982))))

(declare-fun bs!1106897 () Bool)

(assert (= bs!1106897 (and d!1502146 d!1502062)))

(assert (=> bs!1106897 (not (= lambda!215012 lambda!214995))))

(declare-fun bs!1106898 () Bool)

(assert (= bs!1106898 (and d!1502146 d!1502028)))

(assert (=> bs!1106898 (= (= lt!1884963 lt!1884945) (= lambda!215012 lambda!214975))))

(assert (=> bs!1106876 (= (= lt!1884963 lt!1885190) (= lambda!215012 lambda!215006))))

(assert (=> bs!1106887 (= (= lt!1884963 lt!1885094) (= lambda!215012 lambda!214991))))

(assert (=> d!1502146 true))

(assert (=> d!1502146 (forall!11574 (toList!5906 lt!1884696) lambda!215012)))

(declare-fun lt!1885193 () Unit!129252)

(declare-fun choose!33288 (ListMap!5269 ListMap!5269 K!14170 V!14416) Unit!129252)

(assert (=> d!1502146 (= lt!1885193 (choose!33288 lt!1884696 lt!1884963 (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (_2!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(assert (=> d!1502146 (forall!11574 (toList!5906 (+!2263 lt!1884696 (tuple2!54427 (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (_2!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))) lambda!215012)))

(assert (=> d!1502146 (= (addForallContainsKeyThenBeforeAdding!790 lt!1884696 lt!1884963 (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (_2!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) lt!1885193)))

(declare-fun bs!1106899 () Bool)

(assert (= bs!1106899 d!1502146))

(declare-fun m!5652453 () Bool)

(assert (=> bs!1106899 m!5652453))

(declare-fun m!5652455 () Bool)

(assert (=> bs!1106899 m!5652455))

(declare-fun m!5652457 () Bool)

(assert (=> bs!1106899 m!5652457))

(declare-fun m!5652459 () Bool)

(assert (=> bs!1106899 m!5652459))

(assert (=> b!4719715 d!1502146))

(declare-fun d!1502148 () Bool)

(declare-fun e!2943598 () Bool)

(assert (=> d!1502148 e!2943598))

(declare-fun res!1996479 () Bool)

(assert (=> d!1502148 (=> res!1996479 e!2943598)))

(declare-fun e!2943595 () Bool)

(assert (=> d!1502148 (= res!1996479 e!2943595)))

(declare-fun res!1996481 () Bool)

(assert (=> d!1502148 (=> (not res!1996481) (not e!2943595))))

(declare-fun lt!1885196 () Bool)

(assert (=> d!1502148 (= res!1996481 (not lt!1885196))))

(declare-fun lt!1885197 () Bool)

(assert (=> d!1502148 (= lt!1885196 lt!1885197)))

(declare-fun lt!1885194 () Unit!129252)

(declare-fun e!2943597 () Unit!129252)

(assert (=> d!1502148 (= lt!1885194 e!2943597)))

(declare-fun c!806060 () Bool)

(assert (=> d!1502148 (= c!806060 lt!1885197)))

(assert (=> d!1502148 (= lt!1885197 (containsKey!3359 (toList!5906 lt!1884944) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(assert (=> d!1502148 (= (contains!16156 lt!1884944 (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) lt!1885196)))

(declare-fun b!4719976 () Bool)

(assert (=> b!4719976 false))

(declare-fun lt!1885195 () Unit!129252)

(declare-fun lt!1885199 () Unit!129252)

(assert (=> b!4719976 (= lt!1885195 lt!1885199)))

(assert (=> b!4719976 (containsKey!3359 (toList!5906 lt!1884944) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))

(assert (=> b!4719976 (= lt!1885199 (lemmaInGetKeysListThenContainsKey!944 (toList!5906 lt!1884944) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(declare-fun e!2943593 () Unit!129252)

(declare-fun Unit!129396 () Unit!129252)

(assert (=> b!4719976 (= e!2943593 Unit!129396)))

(declare-fun b!4719977 () Bool)

(declare-fun Unit!129397 () Unit!129252)

(assert (=> b!4719977 (= e!2943593 Unit!129397)))

(declare-fun b!4719978 () Bool)

(declare-fun e!2943594 () Bool)

(assert (=> b!4719978 (= e!2943598 e!2943594)))

(declare-fun res!1996480 () Bool)

(assert (=> b!4719978 (=> (not res!1996480) (not e!2943594))))

(assert (=> b!4719978 (= res!1996480 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1884944) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))))

(declare-fun b!4719979 () Bool)

(assert (=> b!4719979 (= e!2943597 e!2943593)))

(declare-fun c!806059 () Bool)

(declare-fun call!330009 () Bool)

(assert (=> b!4719979 (= c!806059 call!330009)))

(declare-fun b!4719980 () Bool)

(declare-fun e!2943596 () List!52939)

(assert (=> b!4719980 (= e!2943596 (keys!18962 lt!1884944))))

(declare-fun b!4719981 () Bool)

(declare-fun lt!1885198 () Unit!129252)

(assert (=> b!4719981 (= e!2943597 lt!1885198)))

(declare-fun lt!1885200 () Unit!129252)

(assert (=> b!4719981 (= lt!1885200 (lemmaContainsKeyImpliesGetValueByKeyDefined!1840 (toList!5906 lt!1884944) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(assert (=> b!4719981 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1884944) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(declare-fun lt!1885201 () Unit!129252)

(assert (=> b!4719981 (= lt!1885201 lt!1885200)))

(assert (=> b!4719981 (= lt!1885198 (lemmaInListThenGetKeysListContains!940 (toList!5906 lt!1884944) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(assert (=> b!4719981 call!330009))

(declare-fun b!4719982 () Bool)

(assert (=> b!4719982 (= e!2943595 (not (contains!16159 (keys!18962 lt!1884944) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))))

(declare-fun b!4719983 () Bool)

(assert (=> b!4719983 (= e!2943596 (getKeysList!945 (toList!5906 lt!1884944)))))

(declare-fun b!4719984 () Bool)

(assert (=> b!4719984 (= e!2943594 (contains!16159 (keys!18962 lt!1884944) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(declare-fun bm!330004 () Bool)

(assert (=> bm!330004 (= call!330009 (contains!16159 e!2943596 (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(declare-fun c!806061 () Bool)

(assert (=> bm!330004 (= c!806061 c!806060)))

(assert (= (and d!1502148 c!806060) b!4719981))

(assert (= (and d!1502148 (not c!806060)) b!4719979))

(assert (= (and b!4719979 c!806059) b!4719976))

(assert (= (and b!4719979 (not c!806059)) b!4719977))

(assert (= (or b!4719981 b!4719979) bm!330004))

(assert (= (and bm!330004 c!806061) b!4719983))

(assert (= (and bm!330004 (not c!806061)) b!4719980))

(assert (= (and d!1502148 res!1996481) b!4719982))

(assert (= (and d!1502148 (not res!1996479)) b!4719978))

(assert (= (and b!4719978 res!1996480) b!4719984))

(declare-fun m!5652461 () Bool)

(assert (=> b!4719980 m!5652461))

(declare-fun m!5652463 () Bool)

(assert (=> b!4719981 m!5652463))

(declare-fun m!5652465 () Bool)

(assert (=> b!4719981 m!5652465))

(assert (=> b!4719981 m!5652465))

(declare-fun m!5652467 () Bool)

(assert (=> b!4719981 m!5652467))

(declare-fun m!5652469 () Bool)

(assert (=> b!4719981 m!5652469))

(declare-fun m!5652471 () Bool)

(assert (=> b!4719983 m!5652471))

(assert (=> b!4719978 m!5652465))

(assert (=> b!4719978 m!5652465))

(assert (=> b!4719978 m!5652467))

(assert (=> b!4719984 m!5652461))

(assert (=> b!4719984 m!5652461))

(declare-fun m!5652473 () Bool)

(assert (=> b!4719984 m!5652473))

(declare-fun m!5652475 () Bool)

(assert (=> bm!330004 m!5652475))

(assert (=> b!4719982 m!5652461))

(assert (=> b!4719982 m!5652461))

(assert (=> b!4719982 m!5652473))

(declare-fun m!5652477 () Bool)

(assert (=> d!1502148 m!5652477))

(assert (=> b!4719976 m!5652477))

(declare-fun m!5652479 () Bool)

(assert (=> b!4719976 m!5652479))

(assert (=> b!4719715 d!1502148))

(declare-fun d!1502150 () Bool)

(declare-fun res!1996482 () Bool)

(declare-fun e!2943599 () Bool)

(assert (=> d!1502150 (=> res!1996482 e!2943599)))

(assert (=> d!1502150 (= res!1996482 ((_ is Nil!52812) (toList!5906 lt!1884696)))))

(assert (=> d!1502150 (= (forall!11574 (toList!5906 lt!1884696) lambda!214974) e!2943599)))

(declare-fun b!4719985 () Bool)

(declare-fun e!2943600 () Bool)

(assert (=> b!4719985 (= e!2943599 e!2943600)))

(declare-fun res!1996483 () Bool)

(assert (=> b!4719985 (=> (not res!1996483) (not e!2943600))))

(assert (=> b!4719985 (= res!1996483 (dynLambda!21811 lambda!214974 (h!59153 (toList!5906 lt!1884696))))))

(declare-fun b!4719986 () Bool)

(assert (=> b!4719986 (= e!2943600 (forall!11574 (t!360192 (toList!5906 lt!1884696)) lambda!214974))))

(assert (= (and d!1502150 (not res!1996482)) b!4719985))

(assert (= (and b!4719985 res!1996483) b!4719986))

(declare-fun b_lambda!177933 () Bool)

(assert (=> (not b_lambda!177933) (not b!4719985)))

(declare-fun m!5652481 () Bool)

(assert (=> b!4719985 m!5652481))

(declare-fun m!5652483 () Bool)

(assert (=> b!4719986 m!5652483))

(assert (=> b!4719715 d!1502150))

(declare-fun d!1502152 () Bool)

(declare-fun e!2943601 () Bool)

(assert (=> d!1502152 e!2943601))

(declare-fun res!1996485 () Bool)

(assert (=> d!1502152 (=> (not res!1996485) (not e!2943601))))

(declare-fun lt!1885204 () ListMap!5269)

(assert (=> d!1502152 (= res!1996485 (contains!16156 lt!1885204 (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(declare-fun lt!1885202 () List!52936)

(assert (=> d!1502152 (= lt!1885204 (ListMap!5270 lt!1885202))))

(declare-fun lt!1885203 () Unit!129252)

(declare-fun lt!1885205 () Unit!129252)

(assert (=> d!1502152 (= lt!1885203 lt!1885205)))

(assert (=> d!1502152 (= (getValueByKey!1949 lt!1885202 (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (Some!12352 (_2!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(assert (=> d!1502152 (= lt!1885205 (lemmaContainsTupThenGetReturnValue!1079 lt!1885202 (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (_2!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(assert (=> d!1502152 (= lt!1885202 (insertNoDuplicatedKeys!587 (toList!5906 lt!1884696) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (_2!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(assert (=> d!1502152 (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885204)))

(declare-fun b!4719987 () Bool)

(declare-fun res!1996484 () Bool)

(assert (=> b!4719987 (=> (not res!1996484) (not e!2943601))))

(assert (=> b!4719987 (= res!1996484 (= (getValueByKey!1949 (toList!5906 lt!1885204) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (Some!12352 (_2!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))))

(declare-fun b!4719988 () Bool)

(assert (=> b!4719988 (= e!2943601 (contains!16158 (toList!5906 lt!1885204) (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))

(assert (= (and d!1502152 res!1996485) b!4719987))

(assert (= (and b!4719987 res!1996484) b!4719988))

(declare-fun m!5652485 () Bool)

(assert (=> d!1502152 m!5652485))

(declare-fun m!5652487 () Bool)

(assert (=> d!1502152 m!5652487))

(declare-fun m!5652489 () Bool)

(assert (=> d!1502152 m!5652489))

(declare-fun m!5652491 () Bool)

(assert (=> d!1502152 m!5652491))

(declare-fun m!5652493 () Bool)

(assert (=> b!4719987 m!5652493))

(declare-fun m!5652495 () Bool)

(assert (=> b!4719988 m!5652495))

(assert (=> b!4719715 d!1502152))

(declare-fun bs!1106900 () Bool)

(declare-fun b!4719991 () Bool)

(assert (= bs!1106900 (and b!4719991 b!4719957)))

(declare-fun lambda!215013 () Int)

(assert (=> bs!1106900 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215013 lambda!215005))))

(declare-fun bs!1106901 () Bool)

(assert (= bs!1106901 (and b!4719991 b!4719716)))

(assert (=> bs!1106901 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215013 lambda!214972))))

(declare-fun bs!1106902 () Bool)

(assert (= bs!1106902 (and b!4719991 b!4719837)))

(assert (=> bs!1106902 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885120) (= lambda!215013 lambda!215001))))

(declare-fun bs!1106903 () Bool)

(assert (= bs!1106903 (and b!4719991 b!4719725)))

(assert (=> bs!1106903 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885008) (= lambda!215013 lambda!214981))))

(declare-fun bs!1106904 () Bool)

(assert (= bs!1106904 (and b!4719991 d!1502146)))

(assert (=> bs!1106904 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884963) (= lambda!215013 lambda!215012))))

(declare-fun bs!1106905 () Bool)

(assert (= bs!1106905 (and b!4719991 b!4719715)))

(assert (=> bs!1106905 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884963) (= lambda!215013 lambda!214974))))

(declare-fun bs!1106906 () Bool)

(assert (= bs!1106906 (and b!4719991 b!4719791)))

(assert (=> bs!1106906 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215013 lambda!214985))))

(declare-fun bs!1106907 () Bool)

(assert (= bs!1106907 (and b!4719991 d!1501954)))

(assert (=> bs!1106907 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884817) (= lambda!215013 lambda!214951))))

(declare-fun bs!1106908 () Bool)

(assert (= bs!1106908 (and b!4719991 b!4719726)))

(assert (=> bs!1106908 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215013 lambda!214977))))

(declare-fun bs!1106909 () Bool)

(assert (= bs!1106909 (and b!4719991 b!4719652)))

(assert (=> bs!1106909 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884835) (= lambda!215013 lambda!214950))))

(assert (=> bs!1106903 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215013 lambda!214979))))

(declare-fun bs!1106910 () Bool)

(assert (= bs!1106910 (and b!4719991 b!4719653)))

(assert (=> bs!1106910 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215013 lambda!214948))))

(declare-fun bs!1106911 () Bool)

(assert (= bs!1106911 (and b!4719991 d!1502076)))

(assert (=> bs!1106911 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885102) (= lambda!215013 lambda!215002))))

(declare-fun bs!1106912 () Bool)

(assert (= bs!1106912 (and b!4719991 b!4719795)))

(assert (=> bs!1106912 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215013 lambda!214990))))

(declare-fun bs!1106913 () Bool)

(assert (= bs!1106913 (and b!4719991 d!1501952)))

(assert (=> bs!1106913 (not (= lambda!215013 lambda!214879))))

(assert (=> bs!1106909 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215013 lambda!214949))))

(declare-fun bs!1106914 () Bool)

(assert (= bs!1106914 (and b!4719991 d!1502126)))

(assert (=> bs!1106914 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885172) (= lambda!215013 lambda!215007))))

(declare-fun bs!1106915 () Bool)

(assert (= bs!1106915 (and b!4719991 b!4719838)))

(assert (=> bs!1106915 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215013 lambda!214999))))

(declare-fun bs!1106916 () Bool)

(assert (= bs!1106916 (and b!4719991 b!4719796)))

(assert (=> bs!1106916 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215013 lambda!214989))))

(assert (=> bs!1106905 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215013 lambda!214973))))

(declare-fun bs!1106917 () Bool)

(assert (= bs!1106917 (and b!4719991 d!1502052)))

(assert (=> bs!1106917 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885076) (= lambda!215013 lambda!214992))))

(declare-fun bs!1106918 () Bool)

(assert (= bs!1106918 (and b!4719991 b!4719790)))

(assert (=> bs!1106918 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215013 lambda!214986))))

(declare-fun bs!1106919 () Bool)

(assert (= bs!1106919 (and b!4719991 d!1502050)))

(assert (=> bs!1106919 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885055) (= lambda!215013 lambda!214988))))

(assert (=> bs!1106902 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215013 lambda!215000))))

(declare-fun bs!1106920 () Bool)

(assert (= bs!1106920 (and b!4719991 b!4719958)))

(assert (=> bs!1106920 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215013 lambda!215004))))

(assert (=> bs!1106918 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885073) (= lambda!215013 lambda!214987))))

(declare-fun bs!1106921 () Bool)

(assert (= bs!1106921 (and b!4719991 d!1502034)))

(assert (=> bs!1106921 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884990) (= lambda!215013 lambda!214982))))

(declare-fun bs!1106922 () Bool)

(assert (= bs!1106922 (and b!4719991 d!1502062)))

(assert (=> bs!1106922 (not (= lambda!215013 lambda!214995))))

(declare-fun bs!1106923 () Bool)

(assert (= bs!1106923 (and b!4719991 d!1502028)))

(assert (=> bs!1106923 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884945) (= lambda!215013 lambda!214975))))

(assert (=> bs!1106900 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885190) (= lambda!215013 lambda!215006))))

(assert (=> bs!1106912 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885094) (= lambda!215013 lambda!214991))))

(assert (=> b!4719991 true))

(declare-fun bs!1106924 () Bool)

(declare-fun b!4719990 () Bool)

(assert (= bs!1106924 (and b!4719990 b!4719957)))

(declare-fun lambda!215014 () Int)

(assert (=> bs!1106924 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215014 lambda!215005))))

(declare-fun bs!1106925 () Bool)

(assert (= bs!1106925 (and b!4719990 b!4719716)))

(assert (=> bs!1106925 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215014 lambda!214972))))

(declare-fun bs!1106926 () Bool)

(assert (= bs!1106926 (and b!4719990 b!4719837)))

(assert (=> bs!1106926 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885120) (= lambda!215014 lambda!215001))))

(declare-fun bs!1106927 () Bool)

(assert (= bs!1106927 (and b!4719990 b!4719725)))

(assert (=> bs!1106927 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885008) (= lambda!215014 lambda!214981))))

(declare-fun bs!1106928 () Bool)

(assert (= bs!1106928 (and b!4719990 d!1502146)))

(assert (=> bs!1106928 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884963) (= lambda!215014 lambda!215012))))

(declare-fun bs!1106929 () Bool)

(assert (= bs!1106929 (and b!4719990 b!4719715)))

(assert (=> bs!1106929 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884963) (= lambda!215014 lambda!214974))))

(declare-fun bs!1106930 () Bool)

(assert (= bs!1106930 (and b!4719990 d!1501954)))

(assert (=> bs!1106930 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884817) (= lambda!215014 lambda!214951))))

(declare-fun bs!1106931 () Bool)

(assert (= bs!1106931 (and b!4719990 b!4719726)))

(assert (=> bs!1106931 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215014 lambda!214977))))

(declare-fun bs!1106932 () Bool)

(assert (= bs!1106932 (and b!4719990 b!4719652)))

(assert (=> bs!1106932 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884835) (= lambda!215014 lambda!214950))))

(assert (=> bs!1106927 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215014 lambda!214979))))

(declare-fun bs!1106933 () Bool)

(assert (= bs!1106933 (and b!4719990 b!4719653)))

(assert (=> bs!1106933 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215014 lambda!214948))))

(declare-fun bs!1106934 () Bool)

(assert (= bs!1106934 (and b!4719990 d!1502076)))

(assert (=> bs!1106934 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885102) (= lambda!215014 lambda!215002))))

(declare-fun bs!1106935 () Bool)

(assert (= bs!1106935 (and b!4719990 b!4719795)))

(assert (=> bs!1106935 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215014 lambda!214990))))

(declare-fun bs!1106936 () Bool)

(assert (= bs!1106936 (and b!4719990 d!1501952)))

(assert (=> bs!1106936 (not (= lambda!215014 lambda!214879))))

(assert (=> bs!1106932 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215014 lambda!214949))))

(declare-fun bs!1106937 () Bool)

(assert (= bs!1106937 (and b!4719990 d!1502126)))

(assert (=> bs!1106937 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885172) (= lambda!215014 lambda!215007))))

(declare-fun bs!1106938 () Bool)

(assert (= bs!1106938 (and b!4719990 b!4719838)))

(assert (=> bs!1106938 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215014 lambda!214999))))

(declare-fun bs!1106939 () Bool)

(assert (= bs!1106939 (and b!4719990 b!4719796)))

(assert (=> bs!1106939 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215014 lambda!214989))))

(assert (=> bs!1106929 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215014 lambda!214973))))

(declare-fun bs!1106940 () Bool)

(assert (= bs!1106940 (and b!4719990 d!1502052)))

(assert (=> bs!1106940 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885076) (= lambda!215014 lambda!214992))))

(declare-fun bs!1106941 () Bool)

(assert (= bs!1106941 (and b!4719990 b!4719790)))

(assert (=> bs!1106941 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215014 lambda!214986))))

(declare-fun bs!1106942 () Bool)

(assert (= bs!1106942 (and b!4719990 d!1502050)))

(assert (=> bs!1106942 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885055) (= lambda!215014 lambda!214988))))

(assert (=> bs!1106926 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215014 lambda!215000))))

(declare-fun bs!1106943 () Bool)

(assert (= bs!1106943 (and b!4719990 b!4719958)))

(assert (=> bs!1106943 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215014 lambda!215004))))

(declare-fun bs!1106944 () Bool)

(assert (= bs!1106944 (and b!4719990 b!4719791)))

(assert (=> bs!1106944 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884696) (= lambda!215014 lambda!214985))))

(declare-fun bs!1106945 () Bool)

(assert (= bs!1106945 (and b!4719990 b!4719991)))

(assert (=> bs!1106945 (= lambda!215014 lambda!215013)))

(assert (=> bs!1106941 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885073) (= lambda!215014 lambda!214987))))

(declare-fun bs!1106946 () Bool)

(assert (= bs!1106946 (and b!4719990 d!1502034)))

(assert (=> bs!1106946 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884990) (= lambda!215014 lambda!214982))))

(declare-fun bs!1106947 () Bool)

(assert (= bs!1106947 (and b!4719990 d!1502062)))

(assert (=> bs!1106947 (not (= lambda!215014 lambda!214995))))

(declare-fun bs!1106948 () Bool)

(assert (= bs!1106948 (and b!4719990 d!1502028)))

(assert (=> bs!1106948 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1884945) (= lambda!215014 lambda!214975))))

(assert (=> bs!1106924 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885190) (= lambda!215014 lambda!215006))))

(assert (=> bs!1106935 (= (= (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885094) (= lambda!215014 lambda!214991))))

(assert (=> b!4719990 true))

(declare-fun lambda!215015 () Int)

(declare-fun lt!1885226 () ListMap!5269)

(assert (=> bs!1106924 (= (= lt!1885226 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215015 lambda!215005))))

(assert (=> bs!1106925 (= (= lt!1885226 lt!1884696) (= lambda!215015 lambda!214972))))

(assert (=> bs!1106926 (= (= lt!1885226 lt!1885120) (= lambda!215015 lambda!215001))))

(assert (=> bs!1106927 (= (= lt!1885226 lt!1885008) (= lambda!215015 lambda!214981))))

(assert (=> bs!1106928 (= (= lt!1885226 lt!1884963) (= lambda!215015 lambda!215012))))

(assert (=> bs!1106929 (= (= lt!1885226 lt!1884963) (= lambda!215015 lambda!214974))))

(assert (=> bs!1106930 (= (= lt!1885226 lt!1884817) (= lambda!215015 lambda!214951))))

(assert (=> bs!1106931 (= (= lt!1885226 lt!1884696) (= lambda!215015 lambda!214977))))

(assert (=> bs!1106932 (= (= lt!1885226 lt!1884835) (= lambda!215015 lambda!214950))))

(assert (=> bs!1106927 (= (= lt!1885226 lt!1884696) (= lambda!215015 lambda!214979))))

(assert (=> bs!1106933 (= (= lt!1885226 lt!1884696) (= lambda!215015 lambda!214948))))

(assert (=> bs!1106934 (= (= lt!1885226 lt!1885102) (= lambda!215015 lambda!215002))))

(assert (=> bs!1106935 (= (= lt!1885226 lt!1884696) (= lambda!215015 lambda!214990))))

(assert (=> bs!1106936 (not (= lambda!215015 lambda!214879))))

(assert (=> bs!1106932 (= (= lt!1885226 lt!1884696) (= lambda!215015 lambda!214949))))

(assert (=> b!4719990 (= (= lt!1885226 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215015 lambda!215014))))

(assert (=> bs!1106937 (= (= lt!1885226 lt!1885172) (= lambda!215015 lambda!215007))))

(assert (=> bs!1106938 (= (= lt!1885226 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215015 lambda!214999))))

(assert (=> bs!1106939 (= (= lt!1885226 lt!1884696) (= lambda!215015 lambda!214989))))

(assert (=> bs!1106929 (= (= lt!1885226 lt!1884696) (= lambda!215015 lambda!214973))))

(assert (=> bs!1106940 (= (= lt!1885226 lt!1885076) (= lambda!215015 lambda!214992))))

(assert (=> bs!1106941 (= (= lt!1885226 lt!1884696) (= lambda!215015 lambda!214986))))

(assert (=> bs!1106942 (= (= lt!1885226 lt!1885055) (= lambda!215015 lambda!214988))))

(assert (=> bs!1106926 (= (= lt!1885226 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215015 lambda!215000))))

(assert (=> bs!1106943 (= (= lt!1885226 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215015 lambda!215004))))

(assert (=> bs!1106944 (= (= lt!1885226 lt!1884696) (= lambda!215015 lambda!214985))))

(assert (=> bs!1106945 (= (= lt!1885226 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215015 lambda!215013))))

(assert (=> bs!1106941 (= (= lt!1885226 lt!1885073) (= lambda!215015 lambda!214987))))

(assert (=> bs!1106946 (= (= lt!1885226 lt!1884990) (= lambda!215015 lambda!214982))))

(assert (=> bs!1106947 (not (= lambda!215015 lambda!214995))))

(assert (=> bs!1106948 (= (= lt!1885226 lt!1884945) (= lambda!215015 lambda!214975))))

(assert (=> bs!1106924 (= (= lt!1885226 lt!1885190) (= lambda!215015 lambda!215006))))

(assert (=> bs!1106935 (= (= lt!1885226 lt!1885094) (= lambda!215015 lambda!214991))))

(assert (=> b!4719990 true))

(declare-fun bs!1106949 () Bool)

(declare-fun d!1502154 () Bool)

(assert (= bs!1106949 (and d!1502154 b!4719957)))

(declare-fun lt!1885208 () ListMap!5269)

(declare-fun lambda!215016 () Int)

(assert (=> bs!1106949 (= (= lt!1885208 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215016 lambda!215005))))

(declare-fun bs!1106950 () Bool)

(assert (= bs!1106950 (and d!1502154 b!4719716)))

(assert (=> bs!1106950 (= (= lt!1885208 lt!1884696) (= lambda!215016 lambda!214972))))

(declare-fun bs!1106951 () Bool)

(assert (= bs!1106951 (and d!1502154 b!4719837)))

(assert (=> bs!1106951 (= (= lt!1885208 lt!1885120) (= lambda!215016 lambda!215001))))

(declare-fun bs!1106952 () Bool)

(assert (= bs!1106952 (and d!1502154 b!4719725)))

(assert (=> bs!1106952 (= (= lt!1885208 lt!1885008) (= lambda!215016 lambda!214981))))

(declare-fun bs!1106953 () Bool)

(assert (= bs!1106953 (and d!1502154 d!1502146)))

(assert (=> bs!1106953 (= (= lt!1885208 lt!1884963) (= lambda!215016 lambda!215012))))

(declare-fun bs!1106954 () Bool)

(assert (= bs!1106954 (and d!1502154 b!4719715)))

(assert (=> bs!1106954 (= (= lt!1885208 lt!1884963) (= lambda!215016 lambda!214974))))

(declare-fun bs!1106955 () Bool)

(assert (= bs!1106955 (and d!1502154 d!1501954)))

(assert (=> bs!1106955 (= (= lt!1885208 lt!1884817) (= lambda!215016 lambda!214951))))

(declare-fun bs!1106956 () Bool)

(assert (= bs!1106956 (and d!1502154 b!4719726)))

(assert (=> bs!1106956 (= (= lt!1885208 lt!1884696) (= lambda!215016 lambda!214977))))

(declare-fun bs!1106957 () Bool)

(assert (= bs!1106957 (and d!1502154 b!4719652)))

(assert (=> bs!1106957 (= (= lt!1885208 lt!1884835) (= lambda!215016 lambda!214950))))

(declare-fun bs!1106958 () Bool)

(assert (= bs!1106958 (and d!1502154 b!4719990)))

(assert (=> bs!1106958 (= (= lt!1885208 lt!1885226) (= lambda!215016 lambda!215015))))

(assert (=> bs!1106952 (= (= lt!1885208 lt!1884696) (= lambda!215016 lambda!214979))))

(declare-fun bs!1106959 () Bool)

(assert (= bs!1106959 (and d!1502154 b!4719653)))

(assert (=> bs!1106959 (= (= lt!1885208 lt!1884696) (= lambda!215016 lambda!214948))))

(declare-fun bs!1106960 () Bool)

(assert (= bs!1106960 (and d!1502154 d!1502076)))

(assert (=> bs!1106960 (= (= lt!1885208 lt!1885102) (= lambda!215016 lambda!215002))))

(declare-fun bs!1106961 () Bool)

(assert (= bs!1106961 (and d!1502154 b!4719795)))

(assert (=> bs!1106961 (= (= lt!1885208 lt!1884696) (= lambda!215016 lambda!214990))))

(declare-fun bs!1106962 () Bool)

(assert (= bs!1106962 (and d!1502154 d!1501952)))

(assert (=> bs!1106962 (not (= lambda!215016 lambda!214879))))

(assert (=> bs!1106957 (= (= lt!1885208 lt!1884696) (= lambda!215016 lambda!214949))))

(assert (=> bs!1106958 (= (= lt!1885208 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215016 lambda!215014))))

(declare-fun bs!1106963 () Bool)

(assert (= bs!1106963 (and d!1502154 d!1502126)))

(assert (=> bs!1106963 (= (= lt!1885208 lt!1885172) (= lambda!215016 lambda!215007))))

(declare-fun bs!1106964 () Bool)

(assert (= bs!1106964 (and d!1502154 b!4719838)))

(assert (=> bs!1106964 (= (= lt!1885208 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215016 lambda!214999))))

(declare-fun bs!1106965 () Bool)

(assert (= bs!1106965 (and d!1502154 b!4719796)))

(assert (=> bs!1106965 (= (= lt!1885208 lt!1884696) (= lambda!215016 lambda!214989))))

(assert (=> bs!1106954 (= (= lt!1885208 lt!1884696) (= lambda!215016 lambda!214973))))

(declare-fun bs!1106966 () Bool)

(assert (= bs!1106966 (and d!1502154 d!1502052)))

(assert (=> bs!1106966 (= (= lt!1885208 lt!1885076) (= lambda!215016 lambda!214992))))

(declare-fun bs!1106967 () Bool)

(assert (= bs!1106967 (and d!1502154 b!4719790)))

(assert (=> bs!1106967 (= (= lt!1885208 lt!1884696) (= lambda!215016 lambda!214986))))

(declare-fun bs!1106968 () Bool)

(assert (= bs!1106968 (and d!1502154 d!1502050)))

(assert (=> bs!1106968 (= (= lt!1885208 lt!1885055) (= lambda!215016 lambda!214988))))

(assert (=> bs!1106951 (= (= lt!1885208 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215016 lambda!215000))))

(declare-fun bs!1106969 () Bool)

(assert (= bs!1106969 (and d!1502154 b!4719958)))

(assert (=> bs!1106969 (= (= lt!1885208 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215016 lambda!215004))))

(declare-fun bs!1106970 () Bool)

(assert (= bs!1106970 (and d!1502154 b!4719791)))

(assert (=> bs!1106970 (= (= lt!1885208 lt!1884696) (= lambda!215016 lambda!214985))))

(declare-fun bs!1106971 () Bool)

(assert (= bs!1106971 (and d!1502154 b!4719991)))

(assert (=> bs!1106971 (= (= lt!1885208 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215016 lambda!215013))))

(assert (=> bs!1106967 (= (= lt!1885208 lt!1885073) (= lambda!215016 lambda!214987))))

(declare-fun bs!1106972 () Bool)

(assert (= bs!1106972 (and d!1502154 d!1502034)))

(assert (=> bs!1106972 (= (= lt!1885208 lt!1884990) (= lambda!215016 lambda!214982))))

(declare-fun bs!1106973 () Bool)

(assert (= bs!1106973 (and d!1502154 d!1502062)))

(assert (=> bs!1106973 (not (= lambda!215016 lambda!214995))))

(declare-fun bs!1106974 () Bool)

(assert (= bs!1106974 (and d!1502154 d!1502028)))

(assert (=> bs!1106974 (= (= lt!1885208 lt!1884945) (= lambda!215016 lambda!214975))))

(assert (=> bs!1106949 (= (= lt!1885208 lt!1885190) (= lambda!215016 lambda!215006))))

(assert (=> bs!1106961 (= (= lt!1885208 lt!1885094) (= lambda!215016 lambda!214991))))

(assert (=> d!1502154 true))

(declare-fun e!2943602 () Bool)

(declare-fun b!4719989 () Bool)

(assert (=> b!4719989 (= e!2943602 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) lambda!215015))))

(declare-fun bm!330005 () Bool)

(declare-fun call!330010 () Unit!129252)

(assert (=> bm!330005 (= call!330010 (lemmaContainsAllItsOwnKeys!791 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(declare-fun c!806062 () Bool)

(declare-fun bm!330006 () Bool)

(declare-fun call!330011 () Bool)

(assert (=> bm!330006 (= call!330011 (forall!11574 (ite c!806062 (toList!5906 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (t!360192 (Cons!52812 lt!1884698 lt!1884694))) (ite c!806062 lambda!215013 lambda!215015)))))

(declare-fun e!2943604 () ListMap!5269)

(assert (=> b!4719990 (= e!2943604 lt!1885226)))

(declare-fun lt!1885207 () ListMap!5269)

(assert (=> b!4719990 (= lt!1885207 (+!2263 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (h!59153 (t!360192 (Cons!52812 lt!1884698 lt!1884694)))))))

(assert (=> b!4719990 (= lt!1885226 (addToMapMapFromBucket!1438 (t!360192 (t!360192 (Cons!52812 lt!1884698 lt!1884694))) (+!2263 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (h!59153 (t!360192 (Cons!52812 lt!1884698 lt!1884694))))))))

(declare-fun lt!1885217 () Unit!129252)

(assert (=> b!4719990 (= lt!1885217 call!330010)))

(declare-fun call!330012 () Bool)

(assert (=> b!4719990 call!330012))

(declare-fun lt!1885209 () Unit!129252)

(assert (=> b!4719990 (= lt!1885209 lt!1885217)))

(assert (=> b!4719990 (forall!11574 (toList!5906 lt!1885207) lambda!215015)))

(declare-fun lt!1885224 () Unit!129252)

(declare-fun Unit!129411 () Unit!129252)

(assert (=> b!4719990 (= lt!1885224 Unit!129411)))

(assert (=> b!4719990 (forall!11574 (t!360192 (t!360192 (Cons!52812 lt!1884698 lt!1884694))) lambda!215015)))

(declare-fun lt!1885210 () Unit!129252)

(declare-fun Unit!129412 () Unit!129252)

(assert (=> b!4719990 (= lt!1885210 Unit!129412)))

(declare-fun lt!1885214 () Unit!129252)

(declare-fun Unit!129413 () Unit!129252)

(assert (=> b!4719990 (= lt!1885214 Unit!129413)))

(declare-fun lt!1885225 () Unit!129252)

(assert (=> b!4719990 (= lt!1885225 (forallContained!3629 (toList!5906 lt!1885207) lambda!215015 (h!59153 (t!360192 (Cons!52812 lt!1884698 lt!1884694)))))))

(assert (=> b!4719990 (contains!16156 lt!1885207 (_1!30507 (h!59153 (t!360192 (Cons!52812 lt!1884698 lt!1884694)))))))

(declare-fun lt!1885218 () Unit!129252)

(declare-fun Unit!129415 () Unit!129252)

(assert (=> b!4719990 (= lt!1885218 Unit!129415)))

(assert (=> b!4719990 (contains!16156 lt!1885226 (_1!30507 (h!59153 (t!360192 (Cons!52812 lt!1884698 lt!1884694)))))))

(declare-fun lt!1885222 () Unit!129252)

(declare-fun Unit!129416 () Unit!129252)

(assert (=> b!4719990 (= lt!1885222 Unit!129416)))

(assert (=> b!4719990 call!330011))

(declare-fun lt!1885211 () Unit!129252)

(declare-fun Unit!129417 () Unit!129252)

(assert (=> b!4719990 (= lt!1885211 Unit!129417)))

(assert (=> b!4719990 (forall!11574 (toList!5906 lt!1885207) lambda!215015)))

(declare-fun lt!1885212 () Unit!129252)

(declare-fun Unit!129418 () Unit!129252)

(assert (=> b!4719990 (= lt!1885212 Unit!129418)))

(declare-fun lt!1885219 () Unit!129252)

(declare-fun Unit!129419 () Unit!129252)

(assert (=> b!4719990 (= lt!1885219 Unit!129419)))

(declare-fun lt!1885215 () Unit!129252)

(assert (=> b!4719990 (= lt!1885215 (addForallContainsKeyThenBeforeAdding!790 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885226 (_1!30507 (h!59153 (t!360192 (Cons!52812 lt!1884698 lt!1884694)))) (_2!30507 (h!59153 (t!360192 (Cons!52812 lt!1884698 lt!1884694))))))))

(assert (=> b!4719990 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) lambda!215015)))

(declare-fun lt!1885220 () Unit!129252)

(assert (=> b!4719990 (= lt!1885220 lt!1885215)))

(assert (=> b!4719990 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) lambda!215015)))

(declare-fun lt!1885221 () Unit!129252)

(declare-fun Unit!129421 () Unit!129252)

(assert (=> b!4719990 (= lt!1885221 Unit!129421)))

(declare-fun res!1996486 () Bool)

(assert (=> b!4719990 (= res!1996486 (forall!11574 (t!360192 (Cons!52812 lt!1884698 lt!1884694)) lambda!215015))))

(assert (=> b!4719990 (=> (not res!1996486) (not e!2943602))))

(assert (=> b!4719990 e!2943602))

(declare-fun lt!1885213 () Unit!129252)

(declare-fun Unit!129422 () Unit!129252)

(assert (=> b!4719990 (= lt!1885213 Unit!129422)))

(assert (=> b!4719991 (= e!2943604 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))

(declare-fun lt!1885206 () Unit!129252)

(assert (=> b!4719991 (= lt!1885206 call!330010)))

(assert (=> b!4719991 call!330012))

(declare-fun lt!1885223 () Unit!129252)

(assert (=> b!4719991 (= lt!1885223 lt!1885206)))

(assert (=> b!4719991 call!330011))

(declare-fun lt!1885216 () Unit!129252)

(declare-fun Unit!129423 () Unit!129252)

(assert (=> b!4719991 (= lt!1885216 Unit!129423)))

(declare-fun e!2943603 () Bool)

(assert (=> d!1502154 e!2943603))

(declare-fun res!1996487 () Bool)

(assert (=> d!1502154 (=> (not res!1996487) (not e!2943603))))

(assert (=> d!1502154 (= res!1996487 (forall!11574 (t!360192 (Cons!52812 lt!1884698 lt!1884694)) lambda!215016))))

(assert (=> d!1502154 (= lt!1885208 e!2943604)))

(assert (=> d!1502154 (= c!806062 ((_ is Nil!52812) (t!360192 (Cons!52812 lt!1884698 lt!1884694))))))

(assert (=> d!1502154 (noDuplicateKeys!2008 (t!360192 (Cons!52812 lt!1884698 lt!1884694)))))

(assert (=> d!1502154 (= (addToMapMapFromBucket!1438 (t!360192 (Cons!52812 lt!1884698 lt!1884694)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) lt!1885208)))

(declare-fun b!4719992 () Bool)

(assert (=> b!4719992 (= e!2943603 (invariantList!1505 (toList!5906 lt!1885208)))))

(declare-fun bm!330007 () Bool)

(assert (=> bm!330007 (= call!330012 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (ite c!806062 lambda!215013 lambda!215014)))))

(declare-fun b!4719993 () Bool)

(declare-fun res!1996488 () Bool)

(assert (=> b!4719993 (=> (not res!1996488) (not e!2943603))))

(assert (=> b!4719993 (= res!1996488 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) lambda!215016))))

(assert (= (and d!1502154 c!806062) b!4719991))

(assert (= (and d!1502154 (not c!806062)) b!4719990))

(assert (= (and b!4719990 res!1996486) b!4719989))

(assert (= (or b!4719991 b!4719990) bm!330005))

(assert (= (or b!4719991 b!4719990) bm!330006))

(assert (= (or b!4719991 b!4719990) bm!330007))

(assert (= (and d!1502154 res!1996487) b!4719993))

(assert (= (and b!4719993 res!1996488) b!4719992))

(declare-fun m!5652497 () Bool)

(assert (=> b!4719992 m!5652497))

(declare-fun m!5652499 () Bool)

(assert (=> bm!330006 m!5652499))

(assert (=> bm!330005 m!5651981))

(declare-fun m!5652501 () Bool)

(assert (=> bm!330005 m!5652501))

(declare-fun m!5652503 () Bool)

(assert (=> b!4719993 m!5652503))

(declare-fun m!5652505 () Bool)

(assert (=> b!4719990 m!5652505))

(declare-fun m!5652507 () Bool)

(assert (=> b!4719990 m!5652507))

(declare-fun m!5652509 () Bool)

(assert (=> b!4719990 m!5652509))

(declare-fun m!5652511 () Bool)

(assert (=> b!4719990 m!5652511))

(assert (=> b!4719990 m!5651981))

(declare-fun m!5652513 () Bool)

(assert (=> b!4719990 m!5652513))

(declare-fun m!5652515 () Bool)

(assert (=> b!4719990 m!5652515))

(declare-fun m!5652517 () Bool)

(assert (=> b!4719990 m!5652517))

(declare-fun m!5652519 () Bool)

(assert (=> b!4719990 m!5652519))

(assert (=> b!4719990 m!5652509))

(declare-fun m!5652521 () Bool)

(assert (=> b!4719990 m!5652521))

(declare-fun m!5652523 () Bool)

(assert (=> b!4719990 m!5652523))

(assert (=> b!4719990 m!5652515))

(assert (=> b!4719990 m!5651981))

(assert (=> b!4719990 m!5652517))

(declare-fun m!5652525 () Bool)

(assert (=> bm!330007 m!5652525))

(declare-fun m!5652527 () Bool)

(assert (=> d!1502154 m!5652527))

(declare-fun m!5652529 () Bool)

(assert (=> d!1502154 m!5652529))

(assert (=> b!4719989 m!5652515))

(assert (=> b!4719715 d!1502154))

(declare-fun d!1502156 () Bool)

(declare-fun e!2943610 () Bool)

(assert (=> d!1502156 e!2943610))

(declare-fun res!1996489 () Bool)

(assert (=> d!1502156 (=> res!1996489 e!2943610)))

(declare-fun e!2943607 () Bool)

(assert (=> d!1502156 (= res!1996489 e!2943607)))

(declare-fun res!1996491 () Bool)

(assert (=> d!1502156 (=> (not res!1996491) (not e!2943607))))

(declare-fun lt!1885229 () Bool)

(assert (=> d!1502156 (= res!1996491 (not lt!1885229))))

(declare-fun lt!1885230 () Bool)

(assert (=> d!1502156 (= lt!1885229 lt!1885230)))

(declare-fun lt!1885227 () Unit!129252)

(declare-fun e!2943609 () Unit!129252)

(assert (=> d!1502156 (= lt!1885227 e!2943609)))

(declare-fun c!806064 () Bool)

(assert (=> d!1502156 (= c!806064 lt!1885230)))

(assert (=> d!1502156 (= lt!1885230 (containsKey!3359 (toList!5906 lt!1884963) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(assert (=> d!1502156 (= (contains!16156 lt!1884963 (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) lt!1885229)))

(declare-fun b!4719994 () Bool)

(assert (=> b!4719994 false))

(declare-fun lt!1885228 () Unit!129252)

(declare-fun lt!1885232 () Unit!129252)

(assert (=> b!4719994 (= lt!1885228 lt!1885232)))

(assert (=> b!4719994 (containsKey!3359 (toList!5906 lt!1884963) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))

(assert (=> b!4719994 (= lt!1885232 (lemmaInGetKeysListThenContainsKey!944 (toList!5906 lt!1884963) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(declare-fun e!2943605 () Unit!129252)

(declare-fun Unit!129425 () Unit!129252)

(assert (=> b!4719994 (= e!2943605 Unit!129425)))

(declare-fun b!4719995 () Bool)

(declare-fun Unit!129426 () Unit!129252)

(assert (=> b!4719995 (= e!2943605 Unit!129426)))

(declare-fun b!4719996 () Bool)

(declare-fun e!2943606 () Bool)

(assert (=> b!4719996 (= e!2943610 e!2943606)))

(declare-fun res!1996490 () Bool)

(assert (=> b!4719996 (=> (not res!1996490) (not e!2943606))))

(assert (=> b!4719996 (= res!1996490 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1884963) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))))

(declare-fun b!4719997 () Bool)

(assert (=> b!4719997 (= e!2943609 e!2943605)))

(declare-fun c!806063 () Bool)

(declare-fun call!330013 () Bool)

(assert (=> b!4719997 (= c!806063 call!330013)))

(declare-fun b!4719998 () Bool)

(declare-fun e!2943608 () List!52939)

(assert (=> b!4719998 (= e!2943608 (keys!18962 lt!1884963))))

(declare-fun b!4719999 () Bool)

(declare-fun lt!1885231 () Unit!129252)

(assert (=> b!4719999 (= e!2943609 lt!1885231)))

(declare-fun lt!1885233 () Unit!129252)

(assert (=> b!4719999 (= lt!1885233 (lemmaContainsKeyImpliesGetValueByKeyDefined!1840 (toList!5906 lt!1884963) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(assert (=> b!4719999 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1884963) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(declare-fun lt!1885234 () Unit!129252)

(assert (=> b!4719999 (= lt!1885234 lt!1885233)))

(assert (=> b!4719999 (= lt!1885231 (lemmaInListThenGetKeysListContains!940 (toList!5906 lt!1884963) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(assert (=> b!4719999 call!330013))

(declare-fun b!4720000 () Bool)

(assert (=> b!4720000 (= e!2943607 (not (contains!16159 (keys!18962 lt!1884963) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))))

(declare-fun b!4720001 () Bool)

(assert (=> b!4720001 (= e!2943608 (getKeysList!945 (toList!5906 lt!1884963)))))

(declare-fun b!4720002 () Bool)

(assert (=> b!4720002 (= e!2943606 (contains!16159 (keys!18962 lt!1884963) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(declare-fun bm!330008 () Bool)

(assert (=> bm!330008 (= call!330013 (contains!16159 e!2943608 (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(declare-fun c!806065 () Bool)

(assert (=> bm!330008 (= c!806065 c!806064)))

(assert (= (and d!1502156 c!806064) b!4719999))

(assert (= (and d!1502156 (not c!806064)) b!4719997))

(assert (= (and b!4719997 c!806063) b!4719994))

(assert (= (and b!4719997 (not c!806063)) b!4719995))

(assert (= (or b!4719999 b!4719997) bm!330008))

(assert (= (and bm!330008 c!806065) b!4720001))

(assert (= (and bm!330008 (not c!806065)) b!4719998))

(assert (= (and d!1502156 res!1996491) b!4720000))

(assert (= (and d!1502156 (not res!1996489)) b!4719996))

(assert (= (and b!4719996 res!1996490) b!4720002))

(declare-fun m!5652531 () Bool)

(assert (=> b!4719998 m!5652531))

(declare-fun m!5652533 () Bool)

(assert (=> b!4719999 m!5652533))

(declare-fun m!5652535 () Bool)

(assert (=> b!4719999 m!5652535))

(assert (=> b!4719999 m!5652535))

(declare-fun m!5652537 () Bool)

(assert (=> b!4719999 m!5652537))

(declare-fun m!5652539 () Bool)

(assert (=> b!4719999 m!5652539))

(declare-fun m!5652541 () Bool)

(assert (=> b!4720001 m!5652541))

(assert (=> b!4719996 m!5652535))

(assert (=> b!4719996 m!5652535))

(assert (=> b!4719996 m!5652537))

(assert (=> b!4720002 m!5652531))

(assert (=> b!4720002 m!5652531))

(declare-fun m!5652543 () Bool)

(assert (=> b!4720002 m!5652543))

(declare-fun m!5652545 () Bool)

(assert (=> bm!330008 m!5652545))

(assert (=> b!4720000 m!5652531))

(assert (=> b!4720000 m!5652531))

(assert (=> b!4720000 m!5652543))

(declare-fun m!5652547 () Bool)

(assert (=> d!1502156 m!5652547))

(assert (=> b!4719994 m!5652547))

(declare-fun m!5652549 () Bool)

(assert (=> b!4719994 m!5652549))

(assert (=> b!4719715 d!1502156))

(declare-fun d!1502158 () Bool)

(declare-fun res!1996492 () Bool)

(declare-fun e!2943611 () Bool)

(assert (=> d!1502158 (=> res!1996492 e!2943611)))

(assert (=> d!1502158 (= res!1996492 ((_ is Nil!52812) (t!360192 (Cons!52812 lt!1884698 lt!1884694))))))

(assert (=> d!1502158 (= (forall!11574 (t!360192 (Cons!52812 lt!1884698 lt!1884694)) lambda!214974) e!2943611)))

(declare-fun b!4720003 () Bool)

(declare-fun e!2943612 () Bool)

(assert (=> b!4720003 (= e!2943611 e!2943612)))

(declare-fun res!1996493 () Bool)

(assert (=> b!4720003 (=> (not res!1996493) (not e!2943612))))

(assert (=> b!4720003 (= res!1996493 (dynLambda!21811 lambda!214974 (h!59153 (t!360192 (Cons!52812 lt!1884698 lt!1884694)))))))

(declare-fun b!4720004 () Bool)

(assert (=> b!4720004 (= e!2943612 (forall!11574 (t!360192 (t!360192 (Cons!52812 lt!1884698 lt!1884694))) lambda!214974))))

(assert (= (and d!1502158 (not res!1996492)) b!4720003))

(assert (= (and b!4720003 res!1996493) b!4720004))

(declare-fun b_lambda!177935 () Bool)

(assert (=> (not b_lambda!177935) (not b!4720003)))

(declare-fun m!5652551 () Bool)

(assert (=> b!4720003 m!5652551))

(declare-fun m!5652553 () Bool)

(assert (=> b!4720004 m!5652553))

(assert (=> b!4719715 d!1502158))

(declare-fun d!1502160 () Bool)

(declare-fun res!1996494 () Bool)

(declare-fun e!2943613 () Bool)

(assert (=> d!1502160 (=> res!1996494 e!2943613)))

(assert (=> d!1502160 (= res!1996494 ((_ is Nil!52812) (Cons!52812 lt!1884698 lt!1884694)))))

(assert (=> d!1502160 (= (forall!11574 (Cons!52812 lt!1884698 lt!1884694) lambda!214974) e!2943613)))

(declare-fun b!4720005 () Bool)

(declare-fun e!2943614 () Bool)

(assert (=> b!4720005 (= e!2943613 e!2943614)))

(declare-fun res!1996495 () Bool)

(assert (=> b!4720005 (=> (not res!1996495) (not e!2943614))))

(assert (=> b!4720005 (= res!1996495 (dynLambda!21811 lambda!214974 (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))

(declare-fun b!4720006 () Bool)

(assert (=> b!4720006 (= e!2943614 (forall!11574 (t!360192 (Cons!52812 lt!1884698 lt!1884694)) lambda!214974))))

(assert (= (and d!1502160 (not res!1996494)) b!4720005))

(assert (= (and b!4720005 res!1996495) b!4720006))

(declare-fun b_lambda!177937 () Bool)

(assert (=> (not b_lambda!177937) (not b!4720005)))

(declare-fun m!5652555 () Bool)

(assert (=> b!4720005 m!5652555))

(assert (=> b!4720006 m!5651987))

(assert (=> b!4719715 d!1502160))

(declare-fun d!1502162 () Bool)

(assert (=> d!1502162 (dynLambda!21811 lambda!214974 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))

(declare-fun lt!1885237 () Unit!129252)

(declare-fun choose!33292 (List!52936 Int tuple2!54426) Unit!129252)

(assert (=> d!1502162 (= lt!1885237 (choose!33292 (toList!5906 lt!1884944) lambda!214974 (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))

(declare-fun e!2943617 () Bool)

(assert (=> d!1502162 e!2943617))

(declare-fun res!1996498 () Bool)

(assert (=> d!1502162 (=> (not res!1996498) (not e!2943617))))

(assert (=> d!1502162 (= res!1996498 (forall!11574 (toList!5906 lt!1884944) lambda!214974))))

(assert (=> d!1502162 (= (forallContained!3629 (toList!5906 lt!1884944) lambda!214974 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) lt!1885237)))

(declare-fun b!4720009 () Bool)

(assert (=> b!4720009 (= e!2943617 (contains!16158 (toList!5906 lt!1884944) (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))

(assert (= (and d!1502162 res!1996498) b!4720009))

(declare-fun b_lambda!177939 () Bool)

(assert (=> (not b_lambda!177939) (not d!1502162)))

(assert (=> d!1502162 m!5652555))

(declare-fun m!5652557 () Bool)

(assert (=> d!1502162 m!5652557))

(assert (=> d!1502162 m!5651973))

(declare-fun m!5652559 () Bool)

(assert (=> b!4720009 m!5652559))

(assert (=> b!4719715 d!1502162))

(declare-fun d!1502164 () Bool)

(declare-fun res!1996499 () Bool)

(declare-fun e!2943618 () Bool)

(assert (=> d!1502164 (=> res!1996499 e!2943618)))

(assert (=> d!1502164 (= res!1996499 ((_ is Nil!52812) (t!360192 oldBucket!34)))))

(assert (=> d!1502164 (= (forall!11574 (t!360192 oldBucket!34) lambda!214981) e!2943618)))

(declare-fun b!4720010 () Bool)

(declare-fun e!2943619 () Bool)

(assert (=> b!4720010 (= e!2943618 e!2943619)))

(declare-fun res!1996500 () Bool)

(assert (=> b!4720010 (=> (not res!1996500) (not e!2943619))))

(assert (=> b!4720010 (= res!1996500 (dynLambda!21811 lambda!214981 (h!59153 (t!360192 oldBucket!34))))))

(declare-fun b!4720011 () Bool)

(assert (=> b!4720011 (= e!2943619 (forall!11574 (t!360192 (t!360192 oldBucket!34)) lambda!214981))))

(assert (= (and d!1502164 (not res!1996499)) b!4720010))

(assert (= (and b!4720010 res!1996500) b!4720011))

(declare-fun b_lambda!177941 () Bool)

(assert (=> (not b_lambda!177941) (not b!4720010)))

(declare-fun m!5652561 () Bool)

(assert (=> b!4720010 m!5652561))

(declare-fun m!5652563 () Bool)

(assert (=> b!4720011 m!5652563))

(assert (=> b!4719725 d!1502164))

(declare-fun d!1502166 () Bool)

(declare-fun res!1996501 () Bool)

(declare-fun e!2943620 () Bool)

(assert (=> d!1502166 (=> res!1996501 e!2943620)))

(assert (=> d!1502166 (= res!1996501 ((_ is Nil!52812) (toList!5906 lt!1884989)))))

(assert (=> d!1502166 (= (forall!11574 (toList!5906 lt!1884989) lambda!214981) e!2943620)))

(declare-fun b!4720012 () Bool)

(declare-fun e!2943621 () Bool)

(assert (=> b!4720012 (= e!2943620 e!2943621)))

(declare-fun res!1996502 () Bool)

(assert (=> b!4720012 (=> (not res!1996502) (not e!2943621))))

(assert (=> b!4720012 (= res!1996502 (dynLambda!21811 lambda!214981 (h!59153 (toList!5906 lt!1884989))))))

(declare-fun b!4720013 () Bool)

(assert (=> b!4720013 (= e!2943621 (forall!11574 (t!360192 (toList!5906 lt!1884989)) lambda!214981))))

(assert (= (and d!1502166 (not res!1996501)) b!4720012))

(assert (= (and b!4720012 res!1996502) b!4720013))

(declare-fun b_lambda!177943 () Bool)

(assert (=> (not b_lambda!177943) (not b!4720012)))

(declare-fun m!5652565 () Bool)

(assert (=> b!4720012 m!5652565))

(declare-fun m!5652567 () Bool)

(assert (=> b!4720013 m!5652567))

(assert (=> b!4719725 d!1502166))

(declare-fun d!1502168 () Bool)

(assert (=> d!1502168 (dynLambda!21811 lambda!214981 (h!59153 oldBucket!34))))

(declare-fun lt!1885238 () Unit!129252)

(assert (=> d!1502168 (= lt!1885238 (choose!33292 (toList!5906 lt!1884989) lambda!214981 (h!59153 oldBucket!34)))))

(declare-fun e!2943622 () Bool)

(assert (=> d!1502168 e!2943622))

(declare-fun res!1996503 () Bool)

(assert (=> d!1502168 (=> (not res!1996503) (not e!2943622))))

(assert (=> d!1502168 (= res!1996503 (forall!11574 (toList!5906 lt!1884989) lambda!214981))))

(assert (=> d!1502168 (= (forallContained!3629 (toList!5906 lt!1884989) lambda!214981 (h!59153 oldBucket!34)) lt!1885238)))

(declare-fun b!4720014 () Bool)

(assert (=> b!4720014 (= e!2943622 (contains!16158 (toList!5906 lt!1884989) (h!59153 oldBucket!34)))))

(assert (= (and d!1502168 res!1996503) b!4720014))

(declare-fun b_lambda!177945 () Bool)

(assert (=> (not b_lambda!177945) (not d!1502168)))

(declare-fun m!5652569 () Bool)

(assert (=> d!1502168 m!5652569))

(declare-fun m!5652571 () Bool)

(assert (=> d!1502168 m!5652571))

(assert (=> d!1502168 m!5652009))

(declare-fun m!5652573 () Bool)

(assert (=> b!4720014 m!5652573))

(assert (=> b!4719725 d!1502168))

(declare-fun bs!1106975 () Bool)

(declare-fun d!1502170 () Bool)

(assert (= bs!1106975 (and d!1502170 b!4719957)))

(declare-fun lambda!215017 () Int)

(assert (=> bs!1106975 (= (= lt!1885008 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215017 lambda!215005))))

(declare-fun bs!1106976 () Bool)

(assert (= bs!1106976 (and d!1502170 b!4719716)))

(assert (=> bs!1106976 (= (= lt!1885008 lt!1884696) (= lambda!215017 lambda!214972))))

(declare-fun bs!1106977 () Bool)

(assert (= bs!1106977 (and d!1502170 b!4719837)))

(assert (=> bs!1106977 (= (= lt!1885008 lt!1885120) (= lambda!215017 lambda!215001))))

(declare-fun bs!1106978 () Bool)

(assert (= bs!1106978 (and d!1502170 b!4719725)))

(assert (=> bs!1106978 (= lambda!215017 lambda!214981)))

(declare-fun bs!1106979 () Bool)

(assert (= bs!1106979 (and d!1502170 d!1502154)))

(assert (=> bs!1106979 (= (= lt!1885008 lt!1885208) (= lambda!215017 lambda!215016))))

(declare-fun bs!1106980 () Bool)

(assert (= bs!1106980 (and d!1502170 d!1502146)))

(assert (=> bs!1106980 (= (= lt!1885008 lt!1884963) (= lambda!215017 lambda!215012))))

(declare-fun bs!1106981 () Bool)

(assert (= bs!1106981 (and d!1502170 b!4719715)))

(assert (=> bs!1106981 (= (= lt!1885008 lt!1884963) (= lambda!215017 lambda!214974))))

(declare-fun bs!1106982 () Bool)

(assert (= bs!1106982 (and d!1502170 d!1501954)))

(assert (=> bs!1106982 (= (= lt!1885008 lt!1884817) (= lambda!215017 lambda!214951))))

(declare-fun bs!1106983 () Bool)

(assert (= bs!1106983 (and d!1502170 b!4719726)))

(assert (=> bs!1106983 (= (= lt!1885008 lt!1884696) (= lambda!215017 lambda!214977))))

(declare-fun bs!1106984 () Bool)

(assert (= bs!1106984 (and d!1502170 b!4719652)))

(assert (=> bs!1106984 (= (= lt!1885008 lt!1884835) (= lambda!215017 lambda!214950))))

(declare-fun bs!1106985 () Bool)

(assert (= bs!1106985 (and d!1502170 b!4719990)))

(assert (=> bs!1106985 (= (= lt!1885008 lt!1885226) (= lambda!215017 lambda!215015))))

(assert (=> bs!1106978 (= (= lt!1885008 lt!1884696) (= lambda!215017 lambda!214979))))

(declare-fun bs!1106986 () Bool)

(assert (= bs!1106986 (and d!1502170 b!4719653)))

(assert (=> bs!1106986 (= (= lt!1885008 lt!1884696) (= lambda!215017 lambda!214948))))

(declare-fun bs!1106987 () Bool)

(assert (= bs!1106987 (and d!1502170 d!1502076)))

(assert (=> bs!1106987 (= (= lt!1885008 lt!1885102) (= lambda!215017 lambda!215002))))

(declare-fun bs!1106988 () Bool)

(assert (= bs!1106988 (and d!1502170 b!4719795)))

(assert (=> bs!1106988 (= (= lt!1885008 lt!1884696) (= lambda!215017 lambda!214990))))

(declare-fun bs!1106989 () Bool)

(assert (= bs!1106989 (and d!1502170 d!1501952)))

(assert (=> bs!1106989 (not (= lambda!215017 lambda!214879))))

(assert (=> bs!1106984 (= (= lt!1885008 lt!1884696) (= lambda!215017 lambda!214949))))

(assert (=> bs!1106985 (= (= lt!1885008 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215017 lambda!215014))))

(declare-fun bs!1106990 () Bool)

(assert (= bs!1106990 (and d!1502170 d!1502126)))

(assert (=> bs!1106990 (= (= lt!1885008 lt!1885172) (= lambda!215017 lambda!215007))))

(declare-fun bs!1106991 () Bool)

(assert (= bs!1106991 (and d!1502170 b!4719838)))

(assert (=> bs!1106991 (= (= lt!1885008 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215017 lambda!214999))))

(declare-fun bs!1106992 () Bool)

(assert (= bs!1106992 (and d!1502170 b!4719796)))

(assert (=> bs!1106992 (= (= lt!1885008 lt!1884696) (= lambda!215017 lambda!214989))))

(assert (=> bs!1106981 (= (= lt!1885008 lt!1884696) (= lambda!215017 lambda!214973))))

(declare-fun bs!1106993 () Bool)

(assert (= bs!1106993 (and d!1502170 d!1502052)))

(assert (=> bs!1106993 (= (= lt!1885008 lt!1885076) (= lambda!215017 lambda!214992))))

(declare-fun bs!1106994 () Bool)

(assert (= bs!1106994 (and d!1502170 b!4719790)))

(assert (=> bs!1106994 (= (= lt!1885008 lt!1884696) (= lambda!215017 lambda!214986))))

(declare-fun bs!1106995 () Bool)

(assert (= bs!1106995 (and d!1502170 d!1502050)))

(assert (=> bs!1106995 (= (= lt!1885008 lt!1885055) (= lambda!215017 lambda!214988))))

(assert (=> bs!1106977 (= (= lt!1885008 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215017 lambda!215000))))

(declare-fun bs!1106996 () Bool)

(assert (= bs!1106996 (and d!1502170 b!4719958)))

(assert (=> bs!1106996 (= (= lt!1885008 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215017 lambda!215004))))

(declare-fun bs!1106997 () Bool)

(assert (= bs!1106997 (and d!1502170 b!4719791)))

(assert (=> bs!1106997 (= (= lt!1885008 lt!1884696) (= lambda!215017 lambda!214985))))

(declare-fun bs!1106998 () Bool)

(assert (= bs!1106998 (and d!1502170 b!4719991)))

(assert (=> bs!1106998 (= (= lt!1885008 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215017 lambda!215013))))

(assert (=> bs!1106994 (= (= lt!1885008 lt!1885073) (= lambda!215017 lambda!214987))))

(declare-fun bs!1106999 () Bool)

(assert (= bs!1106999 (and d!1502170 d!1502034)))

(assert (=> bs!1106999 (= (= lt!1885008 lt!1884990) (= lambda!215017 lambda!214982))))

(declare-fun bs!1107000 () Bool)

(assert (= bs!1107000 (and d!1502170 d!1502062)))

(assert (=> bs!1107000 (not (= lambda!215017 lambda!214995))))

(declare-fun bs!1107001 () Bool)

(assert (= bs!1107001 (and d!1502170 d!1502028)))

(assert (=> bs!1107001 (= (= lt!1885008 lt!1884945) (= lambda!215017 lambda!214975))))

(assert (=> bs!1106975 (= (= lt!1885008 lt!1885190) (= lambda!215017 lambda!215006))))

(assert (=> bs!1106988 (= (= lt!1885008 lt!1885094) (= lambda!215017 lambda!214991))))

(assert (=> d!1502170 true))

(assert (=> d!1502170 (forall!11574 (toList!5906 lt!1884696) lambda!215017)))

(declare-fun lt!1885239 () Unit!129252)

(assert (=> d!1502170 (= lt!1885239 (choose!33288 lt!1884696 lt!1885008 (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34))))))

(assert (=> d!1502170 (forall!11574 (toList!5906 (+!2263 lt!1884696 (tuple2!54427 (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34))))) lambda!215017)))

(assert (=> d!1502170 (= (addForallContainsKeyThenBeforeAdding!790 lt!1884696 lt!1885008 (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34))) lt!1885239)))

(declare-fun bs!1107002 () Bool)

(assert (= bs!1107002 d!1502170))

(declare-fun m!5652575 () Bool)

(assert (=> bs!1107002 m!5652575))

(declare-fun m!5652577 () Bool)

(assert (=> bs!1107002 m!5652577))

(declare-fun m!5652579 () Bool)

(assert (=> bs!1107002 m!5652579))

(declare-fun m!5652581 () Bool)

(assert (=> bs!1107002 m!5652581))

(assert (=> b!4719725 d!1502170))

(declare-fun d!1502172 () Bool)

(declare-fun e!2943623 () Bool)

(assert (=> d!1502172 e!2943623))

(declare-fun res!1996505 () Bool)

(assert (=> d!1502172 (=> (not res!1996505) (not e!2943623))))

(declare-fun lt!1885242 () ListMap!5269)

(assert (=> d!1502172 (= res!1996505 (contains!16156 lt!1885242 (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun lt!1885240 () List!52936)

(assert (=> d!1502172 (= lt!1885242 (ListMap!5270 lt!1885240))))

(declare-fun lt!1885241 () Unit!129252)

(declare-fun lt!1885243 () Unit!129252)

(assert (=> d!1502172 (= lt!1885241 lt!1885243)))

(assert (=> d!1502172 (= (getValueByKey!1949 lt!1885240 (_1!30507 (h!59153 oldBucket!34))) (Some!12352 (_2!30507 (h!59153 oldBucket!34))))))

(assert (=> d!1502172 (= lt!1885243 (lemmaContainsTupThenGetReturnValue!1079 lt!1885240 (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34))))))

(assert (=> d!1502172 (= lt!1885240 (insertNoDuplicatedKeys!587 (toList!5906 lt!1884696) (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34))))))

(assert (=> d!1502172 (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885242)))

(declare-fun b!4720015 () Bool)

(declare-fun res!1996504 () Bool)

(assert (=> b!4720015 (=> (not res!1996504) (not e!2943623))))

(assert (=> b!4720015 (= res!1996504 (= (getValueByKey!1949 (toList!5906 lt!1885242) (_1!30507 (h!59153 oldBucket!34))) (Some!12352 (_2!30507 (h!59153 oldBucket!34)))))))

(declare-fun b!4720016 () Bool)

(assert (=> b!4720016 (= e!2943623 (contains!16158 (toList!5906 lt!1885242) (h!59153 oldBucket!34)))))

(assert (= (and d!1502172 res!1996505) b!4720015))

(assert (= (and b!4720015 res!1996504) b!4720016))

(declare-fun m!5652583 () Bool)

(assert (=> d!1502172 m!5652583))

(declare-fun m!5652585 () Bool)

(assert (=> d!1502172 m!5652585))

(declare-fun m!5652587 () Bool)

(assert (=> d!1502172 m!5652587))

(declare-fun m!5652589 () Bool)

(assert (=> d!1502172 m!5652589))

(declare-fun m!5652591 () Bool)

(assert (=> b!4720015 m!5652591))

(declare-fun m!5652593 () Bool)

(assert (=> b!4720016 m!5652593))

(assert (=> b!4719725 d!1502172))

(declare-fun bs!1107003 () Bool)

(declare-fun b!4720019 () Bool)

(assert (= bs!1107003 (and b!4720019 b!4719957)))

(declare-fun lambda!215018 () Int)

(assert (=> bs!1107003 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215018 lambda!215005))))

(declare-fun bs!1107004 () Bool)

(assert (= bs!1107004 (and b!4720019 b!4719716)))

(assert (=> bs!1107004 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215018 lambda!214972))))

(declare-fun bs!1107005 () Bool)

(assert (= bs!1107005 (and b!4720019 b!4719837)))

(assert (=> bs!1107005 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885120) (= lambda!215018 lambda!215001))))

(declare-fun bs!1107006 () Bool)

(assert (= bs!1107006 (and b!4720019 b!4719725)))

(assert (=> bs!1107006 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885008) (= lambda!215018 lambda!214981))))

(declare-fun bs!1107007 () Bool)

(assert (= bs!1107007 (and b!4720019 d!1502146)))

(assert (=> bs!1107007 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884963) (= lambda!215018 lambda!215012))))

(declare-fun bs!1107008 () Bool)

(assert (= bs!1107008 (and b!4720019 b!4719715)))

(assert (=> bs!1107008 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884963) (= lambda!215018 lambda!214974))))

(declare-fun bs!1107009 () Bool)

(assert (= bs!1107009 (and b!4720019 d!1501954)))

(assert (=> bs!1107009 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884817) (= lambda!215018 lambda!214951))))

(declare-fun bs!1107010 () Bool)

(assert (= bs!1107010 (and b!4720019 b!4719726)))

(assert (=> bs!1107010 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215018 lambda!214977))))

(declare-fun bs!1107011 () Bool)

(assert (= bs!1107011 (and b!4720019 b!4719652)))

(assert (=> bs!1107011 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884835) (= lambda!215018 lambda!214950))))

(declare-fun bs!1107012 () Bool)

(assert (= bs!1107012 (and b!4720019 b!4719990)))

(assert (=> bs!1107012 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885226) (= lambda!215018 lambda!215015))))

(assert (=> bs!1107006 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215018 lambda!214979))))

(declare-fun bs!1107013 () Bool)

(assert (= bs!1107013 (and b!4720019 b!4719653)))

(assert (=> bs!1107013 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215018 lambda!214948))))

(declare-fun bs!1107014 () Bool)

(assert (= bs!1107014 (and b!4720019 d!1502076)))

(assert (=> bs!1107014 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885102) (= lambda!215018 lambda!215002))))

(declare-fun bs!1107015 () Bool)

(assert (= bs!1107015 (and b!4720019 b!4719795)))

(assert (=> bs!1107015 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215018 lambda!214990))))

(declare-fun bs!1107016 () Bool)

(assert (= bs!1107016 (and b!4720019 d!1501952)))

(assert (=> bs!1107016 (not (= lambda!215018 lambda!214879))))

(assert (=> bs!1107011 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215018 lambda!214949))))

(assert (=> bs!1107012 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215018 lambda!215014))))

(declare-fun bs!1107017 () Bool)

(assert (= bs!1107017 (and b!4720019 d!1502126)))

(assert (=> bs!1107017 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885172) (= lambda!215018 lambda!215007))))

(declare-fun bs!1107018 () Bool)

(assert (= bs!1107018 (and b!4720019 b!4719838)))

(assert (=> bs!1107018 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215018 lambda!214999))))

(declare-fun bs!1107019 () Bool)

(assert (= bs!1107019 (and b!4720019 b!4719796)))

(assert (=> bs!1107019 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215018 lambda!214989))))

(assert (=> bs!1107008 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215018 lambda!214973))))

(declare-fun bs!1107020 () Bool)

(assert (= bs!1107020 (and b!4720019 d!1502170)))

(assert (=> bs!1107020 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885008) (= lambda!215018 lambda!215017))))

(declare-fun bs!1107021 () Bool)

(assert (= bs!1107021 (and b!4720019 d!1502154)))

(assert (=> bs!1107021 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885208) (= lambda!215018 lambda!215016))))

(declare-fun bs!1107022 () Bool)

(assert (= bs!1107022 (and b!4720019 d!1502052)))

(assert (=> bs!1107022 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885076) (= lambda!215018 lambda!214992))))

(declare-fun bs!1107023 () Bool)

(assert (= bs!1107023 (and b!4720019 b!4719790)))

(assert (=> bs!1107023 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215018 lambda!214986))))

(declare-fun bs!1107024 () Bool)

(assert (= bs!1107024 (and b!4720019 d!1502050)))

(assert (=> bs!1107024 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885055) (= lambda!215018 lambda!214988))))

(assert (=> bs!1107005 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215018 lambda!215000))))

(declare-fun bs!1107025 () Bool)

(assert (= bs!1107025 (and b!4720019 b!4719958)))

(assert (=> bs!1107025 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215018 lambda!215004))))

(declare-fun bs!1107026 () Bool)

(assert (= bs!1107026 (and b!4720019 b!4719791)))

(assert (=> bs!1107026 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215018 lambda!214985))))

(declare-fun bs!1107027 () Bool)

(assert (= bs!1107027 (and b!4720019 b!4719991)))

(assert (=> bs!1107027 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215018 lambda!215013))))

(assert (=> bs!1107023 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885073) (= lambda!215018 lambda!214987))))

(declare-fun bs!1107028 () Bool)

(assert (= bs!1107028 (and b!4720019 d!1502034)))

(assert (=> bs!1107028 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884990) (= lambda!215018 lambda!214982))))

(declare-fun bs!1107029 () Bool)

(assert (= bs!1107029 (and b!4720019 d!1502062)))

(assert (=> bs!1107029 (not (= lambda!215018 lambda!214995))))

(declare-fun bs!1107030 () Bool)

(assert (= bs!1107030 (and b!4720019 d!1502028)))

(assert (=> bs!1107030 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884945) (= lambda!215018 lambda!214975))))

(assert (=> bs!1107003 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885190) (= lambda!215018 lambda!215006))))

(assert (=> bs!1107015 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885094) (= lambda!215018 lambda!214991))))

(assert (=> b!4720019 true))

(declare-fun bs!1107031 () Bool)

(declare-fun b!4720018 () Bool)

(assert (= bs!1107031 (and b!4720018 b!4719716)))

(declare-fun lambda!215019 () Int)

(assert (=> bs!1107031 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215019 lambda!214972))))

(declare-fun bs!1107032 () Bool)

(assert (= bs!1107032 (and b!4720018 b!4719837)))

(assert (=> bs!1107032 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885120) (= lambda!215019 lambda!215001))))

(declare-fun bs!1107033 () Bool)

(assert (= bs!1107033 (and b!4720018 b!4719725)))

(assert (=> bs!1107033 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885008) (= lambda!215019 lambda!214981))))

(declare-fun bs!1107034 () Bool)

(assert (= bs!1107034 (and b!4720018 d!1502146)))

(assert (=> bs!1107034 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884963) (= lambda!215019 lambda!215012))))

(declare-fun bs!1107035 () Bool)

(assert (= bs!1107035 (and b!4720018 b!4719715)))

(assert (=> bs!1107035 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884963) (= lambda!215019 lambda!214974))))

(declare-fun bs!1107036 () Bool)

(assert (= bs!1107036 (and b!4720018 d!1501954)))

(assert (=> bs!1107036 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884817) (= lambda!215019 lambda!214951))))

(declare-fun bs!1107037 () Bool)

(assert (= bs!1107037 (and b!4720018 b!4719726)))

(assert (=> bs!1107037 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215019 lambda!214977))))

(declare-fun bs!1107038 () Bool)

(assert (= bs!1107038 (and b!4720018 b!4719652)))

(assert (=> bs!1107038 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884835) (= lambda!215019 lambda!214950))))

(declare-fun bs!1107039 () Bool)

(assert (= bs!1107039 (and b!4720018 b!4719990)))

(assert (=> bs!1107039 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885226) (= lambda!215019 lambda!215015))))

(assert (=> bs!1107033 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215019 lambda!214979))))

(declare-fun bs!1107040 () Bool)

(assert (= bs!1107040 (and b!4720018 b!4719653)))

(assert (=> bs!1107040 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215019 lambda!214948))))

(declare-fun bs!1107041 () Bool)

(assert (= bs!1107041 (and b!4720018 d!1502076)))

(assert (=> bs!1107041 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885102) (= lambda!215019 lambda!215002))))

(declare-fun bs!1107042 () Bool)

(assert (= bs!1107042 (and b!4720018 b!4719795)))

(assert (=> bs!1107042 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215019 lambda!214990))))

(declare-fun bs!1107043 () Bool)

(assert (= bs!1107043 (and b!4720018 b!4719957)))

(assert (=> bs!1107043 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215019 lambda!215005))))

(declare-fun bs!1107044 () Bool)

(assert (= bs!1107044 (and b!4720018 b!4720019)))

(assert (=> bs!1107044 (= lambda!215019 lambda!215018)))

(declare-fun bs!1107045 () Bool)

(assert (= bs!1107045 (and b!4720018 d!1501952)))

(assert (=> bs!1107045 (not (= lambda!215019 lambda!214879))))

(assert (=> bs!1107038 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215019 lambda!214949))))

(assert (=> bs!1107039 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215019 lambda!215014))))

(declare-fun bs!1107046 () Bool)

(assert (= bs!1107046 (and b!4720018 d!1502126)))

(assert (=> bs!1107046 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885172) (= lambda!215019 lambda!215007))))

(declare-fun bs!1107047 () Bool)

(assert (= bs!1107047 (and b!4720018 b!4719838)))

(assert (=> bs!1107047 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215019 lambda!214999))))

(declare-fun bs!1107048 () Bool)

(assert (= bs!1107048 (and b!4720018 b!4719796)))

(assert (=> bs!1107048 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215019 lambda!214989))))

(assert (=> bs!1107035 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215019 lambda!214973))))

(declare-fun bs!1107049 () Bool)

(assert (= bs!1107049 (and b!4720018 d!1502170)))

(assert (=> bs!1107049 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885008) (= lambda!215019 lambda!215017))))

(declare-fun bs!1107050 () Bool)

(assert (= bs!1107050 (and b!4720018 d!1502154)))

(assert (=> bs!1107050 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885208) (= lambda!215019 lambda!215016))))

(declare-fun bs!1107051 () Bool)

(assert (= bs!1107051 (and b!4720018 d!1502052)))

(assert (=> bs!1107051 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885076) (= lambda!215019 lambda!214992))))

(declare-fun bs!1107052 () Bool)

(assert (= bs!1107052 (and b!4720018 b!4719790)))

(assert (=> bs!1107052 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215019 lambda!214986))))

(declare-fun bs!1107053 () Bool)

(assert (= bs!1107053 (and b!4720018 d!1502050)))

(assert (=> bs!1107053 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885055) (= lambda!215019 lambda!214988))))

(assert (=> bs!1107032 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215019 lambda!215000))))

(declare-fun bs!1107054 () Bool)

(assert (= bs!1107054 (and b!4720018 b!4719958)))

(assert (=> bs!1107054 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215019 lambda!215004))))

(declare-fun bs!1107055 () Bool)

(assert (= bs!1107055 (and b!4720018 b!4719791)))

(assert (=> bs!1107055 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884696) (= lambda!215019 lambda!214985))))

(declare-fun bs!1107056 () Bool)

(assert (= bs!1107056 (and b!4720018 b!4719991)))

(assert (=> bs!1107056 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215019 lambda!215013))))

(assert (=> bs!1107052 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885073) (= lambda!215019 lambda!214987))))

(declare-fun bs!1107057 () Bool)

(assert (= bs!1107057 (and b!4720018 d!1502034)))

(assert (=> bs!1107057 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884990) (= lambda!215019 lambda!214982))))

(declare-fun bs!1107058 () Bool)

(assert (= bs!1107058 (and b!4720018 d!1502062)))

(assert (=> bs!1107058 (not (= lambda!215019 lambda!214995))))

(declare-fun bs!1107059 () Bool)

(assert (= bs!1107059 (and b!4720018 d!1502028)))

(assert (=> bs!1107059 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1884945) (= lambda!215019 lambda!214975))))

(assert (=> bs!1107043 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885190) (= lambda!215019 lambda!215006))))

(assert (=> bs!1107042 (= (= (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885094) (= lambda!215019 lambda!214991))))

(assert (=> b!4720018 true))

(declare-fun lt!1885264 () ListMap!5269)

(declare-fun lambda!215020 () Int)

(assert (=> bs!1107031 (= (= lt!1885264 lt!1884696) (= lambda!215020 lambda!214972))))

(assert (=> bs!1107032 (= (= lt!1885264 lt!1885120) (= lambda!215020 lambda!215001))))

(assert (=> bs!1107033 (= (= lt!1885264 lt!1885008) (= lambda!215020 lambda!214981))))

(assert (=> bs!1107034 (= (= lt!1885264 lt!1884963) (= lambda!215020 lambda!215012))))

(assert (=> bs!1107035 (= (= lt!1885264 lt!1884963) (= lambda!215020 lambda!214974))))

(assert (=> bs!1107036 (= (= lt!1885264 lt!1884817) (= lambda!215020 lambda!214951))))

(assert (=> bs!1107037 (= (= lt!1885264 lt!1884696) (= lambda!215020 lambda!214977))))

(assert (=> bs!1107038 (= (= lt!1885264 lt!1884835) (= lambda!215020 lambda!214950))))

(assert (=> bs!1107039 (= (= lt!1885264 lt!1885226) (= lambda!215020 lambda!215015))))

(assert (=> bs!1107033 (= (= lt!1885264 lt!1884696) (= lambda!215020 lambda!214979))))

(assert (=> bs!1107040 (= (= lt!1885264 lt!1884696) (= lambda!215020 lambda!214948))))

(assert (=> bs!1107041 (= (= lt!1885264 lt!1885102) (= lambda!215020 lambda!215002))))

(assert (=> bs!1107043 (= (= lt!1885264 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215020 lambda!215005))))

(assert (=> bs!1107044 (= (= lt!1885264 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215020 lambda!215018))))

(assert (=> bs!1107045 (not (= lambda!215020 lambda!214879))))

(assert (=> bs!1107038 (= (= lt!1885264 lt!1884696) (= lambda!215020 lambda!214949))))

(assert (=> bs!1107039 (= (= lt!1885264 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215020 lambda!215014))))

(assert (=> bs!1107046 (= (= lt!1885264 lt!1885172) (= lambda!215020 lambda!215007))))

(assert (=> bs!1107047 (= (= lt!1885264 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215020 lambda!214999))))

(assert (=> bs!1107048 (= (= lt!1885264 lt!1884696) (= lambda!215020 lambda!214989))))

(assert (=> bs!1107035 (= (= lt!1885264 lt!1884696) (= lambda!215020 lambda!214973))))

(assert (=> bs!1107049 (= (= lt!1885264 lt!1885008) (= lambda!215020 lambda!215017))))

(assert (=> bs!1107050 (= (= lt!1885264 lt!1885208) (= lambda!215020 lambda!215016))))

(assert (=> bs!1107051 (= (= lt!1885264 lt!1885076) (= lambda!215020 lambda!214992))))

(assert (=> bs!1107052 (= (= lt!1885264 lt!1884696) (= lambda!215020 lambda!214986))))

(assert (=> bs!1107053 (= (= lt!1885264 lt!1885055) (= lambda!215020 lambda!214988))))

(assert (=> bs!1107032 (= (= lt!1885264 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215020 lambda!215000))))

(assert (=> bs!1107054 (= (= lt!1885264 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215020 lambda!215004))))

(assert (=> bs!1107055 (= (= lt!1885264 lt!1884696) (= lambda!215020 lambda!214985))))

(assert (=> bs!1107056 (= (= lt!1885264 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215020 lambda!215013))))

(assert (=> bs!1107052 (= (= lt!1885264 lt!1885073) (= lambda!215020 lambda!214987))))

(assert (=> bs!1107057 (= (= lt!1885264 lt!1884990) (= lambda!215020 lambda!214982))))

(assert (=> bs!1107058 (not (= lambda!215020 lambda!214995))))

(assert (=> bs!1107059 (= (= lt!1885264 lt!1884945) (= lambda!215020 lambda!214975))))

(assert (=> bs!1107043 (= (= lt!1885264 lt!1885190) (= lambda!215020 lambda!215006))))

(assert (=> bs!1107042 (= (= lt!1885264 lt!1885094) (= lambda!215020 lambda!214991))))

(assert (=> b!4720018 (= (= lt!1885264 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215020 lambda!215019))))

(assert (=> bs!1107042 (= (= lt!1885264 lt!1884696) (= lambda!215020 lambda!214990))))

(assert (=> b!4720018 true))

(declare-fun bs!1107060 () Bool)

(declare-fun d!1502174 () Bool)

(assert (= bs!1107060 (and d!1502174 b!4719716)))

(declare-fun lt!1885246 () ListMap!5269)

(declare-fun lambda!215021 () Int)

(assert (=> bs!1107060 (= (= lt!1885246 lt!1884696) (= lambda!215021 lambda!214972))))

(declare-fun bs!1107061 () Bool)

(assert (= bs!1107061 (and d!1502174 b!4719837)))

(assert (=> bs!1107061 (= (= lt!1885246 lt!1885120) (= lambda!215021 lambda!215001))))

(declare-fun bs!1107062 () Bool)

(assert (= bs!1107062 (and d!1502174 b!4719725)))

(assert (=> bs!1107062 (= (= lt!1885246 lt!1885008) (= lambda!215021 lambda!214981))))

(declare-fun bs!1107063 () Bool)

(assert (= bs!1107063 (and d!1502174 d!1502146)))

(assert (=> bs!1107063 (= (= lt!1885246 lt!1884963) (= lambda!215021 lambda!215012))))

(declare-fun bs!1107064 () Bool)

(assert (= bs!1107064 (and d!1502174 b!4719715)))

(assert (=> bs!1107064 (= (= lt!1885246 lt!1884963) (= lambda!215021 lambda!214974))))

(declare-fun bs!1107065 () Bool)

(assert (= bs!1107065 (and d!1502174 d!1501954)))

(assert (=> bs!1107065 (= (= lt!1885246 lt!1884817) (= lambda!215021 lambda!214951))))

(declare-fun bs!1107066 () Bool)

(assert (= bs!1107066 (and d!1502174 b!4719726)))

(assert (=> bs!1107066 (= (= lt!1885246 lt!1884696) (= lambda!215021 lambda!214977))))

(declare-fun bs!1107067 () Bool)

(assert (= bs!1107067 (and d!1502174 b!4719652)))

(assert (=> bs!1107067 (= (= lt!1885246 lt!1884835) (= lambda!215021 lambda!214950))))

(declare-fun bs!1107068 () Bool)

(assert (= bs!1107068 (and d!1502174 b!4719990)))

(assert (=> bs!1107068 (= (= lt!1885246 lt!1885226) (= lambda!215021 lambda!215015))))

(assert (=> bs!1107062 (= (= lt!1885246 lt!1884696) (= lambda!215021 lambda!214979))))

(declare-fun bs!1107069 () Bool)

(assert (= bs!1107069 (and d!1502174 b!4719653)))

(assert (=> bs!1107069 (= (= lt!1885246 lt!1884696) (= lambda!215021 lambda!214948))))

(declare-fun bs!1107070 () Bool)

(assert (= bs!1107070 (and d!1502174 d!1502076)))

(assert (=> bs!1107070 (= (= lt!1885246 lt!1885102) (= lambda!215021 lambda!215002))))

(declare-fun bs!1107071 () Bool)

(assert (= bs!1107071 (and d!1502174 b!4719957)))

(assert (=> bs!1107071 (= (= lt!1885246 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215021 lambda!215005))))

(declare-fun bs!1107072 () Bool)

(assert (= bs!1107072 (and d!1502174 b!4720019)))

(assert (=> bs!1107072 (= (= lt!1885246 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215021 lambda!215018))))

(declare-fun bs!1107073 () Bool)

(assert (= bs!1107073 (and d!1502174 d!1501952)))

(assert (=> bs!1107073 (not (= lambda!215021 lambda!214879))))

(assert (=> bs!1107067 (= (= lt!1885246 lt!1884696) (= lambda!215021 lambda!214949))))

(assert (=> bs!1107068 (= (= lt!1885246 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215021 lambda!215014))))

(declare-fun bs!1107074 () Bool)

(assert (= bs!1107074 (and d!1502174 d!1502126)))

(assert (=> bs!1107074 (= (= lt!1885246 lt!1885172) (= lambda!215021 lambda!215007))))

(declare-fun bs!1107075 () Bool)

(assert (= bs!1107075 (and d!1502174 b!4719838)))

(assert (=> bs!1107075 (= (= lt!1885246 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215021 lambda!214999))))

(declare-fun bs!1107076 () Bool)

(assert (= bs!1107076 (and d!1502174 b!4719796)))

(assert (=> bs!1107076 (= (= lt!1885246 lt!1884696) (= lambda!215021 lambda!214989))))

(assert (=> bs!1107064 (= (= lt!1885246 lt!1884696) (= lambda!215021 lambda!214973))))

(declare-fun bs!1107077 () Bool)

(assert (= bs!1107077 (and d!1502174 b!4720018)))

(assert (=> bs!1107077 (= (= lt!1885246 lt!1885264) (= lambda!215021 lambda!215020))))

(declare-fun bs!1107078 () Bool)

(assert (= bs!1107078 (and d!1502174 d!1502170)))

(assert (=> bs!1107078 (= (= lt!1885246 lt!1885008) (= lambda!215021 lambda!215017))))

(declare-fun bs!1107079 () Bool)

(assert (= bs!1107079 (and d!1502174 d!1502154)))

(assert (=> bs!1107079 (= (= lt!1885246 lt!1885208) (= lambda!215021 lambda!215016))))

(declare-fun bs!1107080 () Bool)

(assert (= bs!1107080 (and d!1502174 d!1502052)))

(assert (=> bs!1107080 (= (= lt!1885246 lt!1885076) (= lambda!215021 lambda!214992))))

(declare-fun bs!1107081 () Bool)

(assert (= bs!1107081 (and d!1502174 b!4719790)))

(assert (=> bs!1107081 (= (= lt!1885246 lt!1884696) (= lambda!215021 lambda!214986))))

(declare-fun bs!1107082 () Bool)

(assert (= bs!1107082 (and d!1502174 d!1502050)))

(assert (=> bs!1107082 (= (= lt!1885246 lt!1885055) (= lambda!215021 lambda!214988))))

(assert (=> bs!1107061 (= (= lt!1885246 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215021 lambda!215000))))

(declare-fun bs!1107083 () Bool)

(assert (= bs!1107083 (and d!1502174 b!4719958)))

(assert (=> bs!1107083 (= (= lt!1885246 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215021 lambda!215004))))

(declare-fun bs!1107084 () Bool)

(assert (= bs!1107084 (and d!1502174 b!4719791)))

(assert (=> bs!1107084 (= (= lt!1885246 lt!1884696) (= lambda!215021 lambda!214985))))

(declare-fun bs!1107085 () Bool)

(assert (= bs!1107085 (and d!1502174 b!4719991)))

(assert (=> bs!1107085 (= (= lt!1885246 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215021 lambda!215013))))

(assert (=> bs!1107081 (= (= lt!1885246 lt!1885073) (= lambda!215021 lambda!214987))))

(declare-fun bs!1107086 () Bool)

(assert (= bs!1107086 (and d!1502174 d!1502034)))

(assert (=> bs!1107086 (= (= lt!1885246 lt!1884990) (= lambda!215021 lambda!214982))))

(declare-fun bs!1107087 () Bool)

(assert (= bs!1107087 (and d!1502174 d!1502062)))

(assert (=> bs!1107087 (not (= lambda!215021 lambda!214995))))

(declare-fun bs!1107088 () Bool)

(assert (= bs!1107088 (and d!1502174 d!1502028)))

(assert (=> bs!1107088 (= (= lt!1885246 lt!1884945) (= lambda!215021 lambda!214975))))

(assert (=> bs!1107071 (= (= lt!1885246 lt!1885190) (= lambda!215021 lambda!215006))))

(declare-fun bs!1107089 () Bool)

(assert (= bs!1107089 (and d!1502174 b!4719795)))

(assert (=> bs!1107089 (= (= lt!1885246 lt!1885094) (= lambda!215021 lambda!214991))))

(assert (=> bs!1107077 (= (= lt!1885246 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215021 lambda!215019))))

(assert (=> bs!1107089 (= (= lt!1885246 lt!1884696) (= lambda!215021 lambda!214990))))

(assert (=> d!1502174 true))

(declare-fun e!2943624 () Bool)

(declare-fun b!4720017 () Bool)

(assert (=> b!4720017 (= e!2943624 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 oldBucket!34))) lambda!215020))))

(declare-fun bm!330009 () Bool)

(declare-fun call!330014 () Unit!129252)

(assert (=> bm!330009 (= call!330014 (lemmaContainsAllItsOwnKeys!791 (+!2263 lt!1884696 (h!59153 oldBucket!34))))))

(declare-fun bm!330010 () Bool)

(declare-fun call!330015 () Bool)

(declare-fun c!806066 () Bool)

(assert (=> bm!330010 (= call!330015 (forall!11574 (ite c!806066 (toList!5906 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (t!360192 oldBucket!34)) (ite c!806066 lambda!215018 lambda!215020)))))

(declare-fun e!2943626 () ListMap!5269)

(assert (=> b!4720018 (= e!2943626 lt!1885264)))

(declare-fun lt!1885245 () ListMap!5269)

(assert (=> b!4720018 (= lt!1885245 (+!2263 (+!2263 lt!1884696 (h!59153 oldBucket!34)) (h!59153 (t!360192 oldBucket!34))))))

(assert (=> b!4720018 (= lt!1885264 (addToMapMapFromBucket!1438 (t!360192 (t!360192 oldBucket!34)) (+!2263 (+!2263 lt!1884696 (h!59153 oldBucket!34)) (h!59153 (t!360192 oldBucket!34)))))))

(declare-fun lt!1885255 () Unit!129252)

(assert (=> b!4720018 (= lt!1885255 call!330014)))

(declare-fun call!330016 () Bool)

(assert (=> b!4720018 call!330016))

(declare-fun lt!1885247 () Unit!129252)

(assert (=> b!4720018 (= lt!1885247 lt!1885255)))

(assert (=> b!4720018 (forall!11574 (toList!5906 lt!1885245) lambda!215020)))

(declare-fun lt!1885262 () Unit!129252)

(declare-fun Unit!129439 () Unit!129252)

(assert (=> b!4720018 (= lt!1885262 Unit!129439)))

(assert (=> b!4720018 (forall!11574 (t!360192 (t!360192 oldBucket!34)) lambda!215020)))

(declare-fun lt!1885248 () Unit!129252)

(declare-fun Unit!129440 () Unit!129252)

(assert (=> b!4720018 (= lt!1885248 Unit!129440)))

(declare-fun lt!1885252 () Unit!129252)

(declare-fun Unit!129441 () Unit!129252)

(assert (=> b!4720018 (= lt!1885252 Unit!129441)))

(declare-fun lt!1885263 () Unit!129252)

(assert (=> b!4720018 (= lt!1885263 (forallContained!3629 (toList!5906 lt!1885245) lambda!215020 (h!59153 (t!360192 oldBucket!34))))))

(assert (=> b!4720018 (contains!16156 lt!1885245 (_1!30507 (h!59153 (t!360192 oldBucket!34))))))

(declare-fun lt!1885256 () Unit!129252)

(declare-fun Unit!129442 () Unit!129252)

(assert (=> b!4720018 (= lt!1885256 Unit!129442)))

(assert (=> b!4720018 (contains!16156 lt!1885264 (_1!30507 (h!59153 (t!360192 oldBucket!34))))))

(declare-fun lt!1885260 () Unit!129252)

(declare-fun Unit!129443 () Unit!129252)

(assert (=> b!4720018 (= lt!1885260 Unit!129443)))

(assert (=> b!4720018 call!330015))

(declare-fun lt!1885249 () Unit!129252)

(declare-fun Unit!129444 () Unit!129252)

(assert (=> b!4720018 (= lt!1885249 Unit!129444)))

(assert (=> b!4720018 (forall!11574 (toList!5906 lt!1885245) lambda!215020)))

(declare-fun lt!1885250 () Unit!129252)

(declare-fun Unit!129445 () Unit!129252)

(assert (=> b!4720018 (= lt!1885250 Unit!129445)))

(declare-fun lt!1885257 () Unit!129252)

(declare-fun Unit!129446 () Unit!129252)

(assert (=> b!4720018 (= lt!1885257 Unit!129446)))

(declare-fun lt!1885253 () Unit!129252)

(assert (=> b!4720018 (= lt!1885253 (addForallContainsKeyThenBeforeAdding!790 (+!2263 lt!1884696 (h!59153 oldBucket!34)) lt!1885264 (_1!30507 (h!59153 (t!360192 oldBucket!34))) (_2!30507 (h!59153 (t!360192 oldBucket!34)))))))

(assert (=> b!4720018 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 oldBucket!34))) lambda!215020)))

(declare-fun lt!1885258 () Unit!129252)

(assert (=> b!4720018 (= lt!1885258 lt!1885253)))

(assert (=> b!4720018 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 oldBucket!34))) lambda!215020)))

(declare-fun lt!1885259 () Unit!129252)

(declare-fun Unit!129447 () Unit!129252)

(assert (=> b!4720018 (= lt!1885259 Unit!129447)))

(declare-fun res!1996506 () Bool)

(assert (=> b!4720018 (= res!1996506 (forall!11574 (t!360192 oldBucket!34) lambda!215020))))

(assert (=> b!4720018 (=> (not res!1996506) (not e!2943624))))

(assert (=> b!4720018 e!2943624))

(declare-fun lt!1885251 () Unit!129252)

(declare-fun Unit!129449 () Unit!129252)

(assert (=> b!4720018 (= lt!1885251 Unit!129449)))

(assert (=> b!4720019 (= e!2943626 (+!2263 lt!1884696 (h!59153 oldBucket!34)))))

(declare-fun lt!1885244 () Unit!129252)

(assert (=> b!4720019 (= lt!1885244 call!330014)))

(assert (=> b!4720019 call!330016))

(declare-fun lt!1885261 () Unit!129252)

(assert (=> b!4720019 (= lt!1885261 lt!1885244)))

(assert (=> b!4720019 call!330015))

(declare-fun lt!1885254 () Unit!129252)

(declare-fun Unit!129450 () Unit!129252)

(assert (=> b!4720019 (= lt!1885254 Unit!129450)))

(declare-fun e!2943625 () Bool)

(assert (=> d!1502174 e!2943625))

(declare-fun res!1996507 () Bool)

(assert (=> d!1502174 (=> (not res!1996507) (not e!2943625))))

(assert (=> d!1502174 (= res!1996507 (forall!11574 (t!360192 oldBucket!34) lambda!215021))))

(assert (=> d!1502174 (= lt!1885246 e!2943626)))

(assert (=> d!1502174 (= c!806066 ((_ is Nil!52812) (t!360192 oldBucket!34)))))

(assert (=> d!1502174 (noDuplicateKeys!2008 (t!360192 oldBucket!34))))

(assert (=> d!1502174 (= (addToMapMapFromBucket!1438 (t!360192 oldBucket!34) (+!2263 lt!1884696 (h!59153 oldBucket!34))) lt!1885246)))

(declare-fun b!4720020 () Bool)

(assert (=> b!4720020 (= e!2943625 (invariantList!1505 (toList!5906 lt!1885246)))))

(declare-fun bm!330011 () Bool)

(assert (=> bm!330011 (= call!330016 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (ite c!806066 lambda!215018 lambda!215019)))))

(declare-fun b!4720021 () Bool)

(declare-fun res!1996508 () Bool)

(assert (=> b!4720021 (=> (not res!1996508) (not e!2943625))))

(assert (=> b!4720021 (= res!1996508 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 oldBucket!34))) lambda!215021))))

(assert (= (and d!1502174 c!806066) b!4720019))

(assert (= (and d!1502174 (not c!806066)) b!4720018))

(assert (= (and b!4720018 res!1996506) b!4720017))

(assert (= (or b!4720019 b!4720018) bm!330009))

(assert (= (or b!4720019 b!4720018) bm!330010))

(assert (= (or b!4720019 b!4720018) bm!330011))

(assert (= (and d!1502174 res!1996507) b!4720021))

(assert (= (and b!4720021 res!1996508) b!4720020))

(declare-fun m!5652603 () Bool)

(assert (=> b!4720020 m!5652603))

(declare-fun m!5652605 () Bool)

(assert (=> bm!330010 m!5652605))

(assert (=> bm!330009 m!5652017))

(declare-fun m!5652607 () Bool)

(assert (=> bm!330009 m!5652607))

(declare-fun m!5652609 () Bool)

(assert (=> b!4720021 m!5652609))

(declare-fun m!5652611 () Bool)

(assert (=> b!4720018 m!5652611))

(declare-fun m!5652613 () Bool)

(assert (=> b!4720018 m!5652613))

(declare-fun m!5652615 () Bool)

(assert (=> b!4720018 m!5652615))

(declare-fun m!5652619 () Bool)

(assert (=> b!4720018 m!5652619))

(assert (=> b!4720018 m!5652017))

(declare-fun m!5652623 () Bool)

(assert (=> b!4720018 m!5652623))

(declare-fun m!5652625 () Bool)

(assert (=> b!4720018 m!5652625))

(declare-fun m!5652627 () Bool)

(assert (=> b!4720018 m!5652627))

(declare-fun m!5652629 () Bool)

(assert (=> b!4720018 m!5652629))

(assert (=> b!4720018 m!5652615))

(declare-fun m!5652631 () Bool)

(assert (=> b!4720018 m!5652631))

(declare-fun m!5652633 () Bool)

(assert (=> b!4720018 m!5652633))

(assert (=> b!4720018 m!5652625))

(assert (=> b!4720018 m!5652017))

(assert (=> b!4720018 m!5652627))

(declare-fun m!5652635 () Bool)

(assert (=> bm!330011 m!5652635))

(declare-fun m!5652637 () Bool)

(assert (=> d!1502174 m!5652637))

(assert (=> d!1502174 m!5651911))

(assert (=> b!4720017 m!5652625))

(assert (=> b!4719725 d!1502174))

(declare-fun d!1502184 () Bool)

(declare-fun e!2943644 () Bool)

(assert (=> d!1502184 e!2943644))

(declare-fun res!1996517 () Bool)

(assert (=> d!1502184 (=> res!1996517 e!2943644)))

(declare-fun e!2943641 () Bool)

(assert (=> d!1502184 (= res!1996517 e!2943641)))

(declare-fun res!1996519 () Bool)

(assert (=> d!1502184 (=> (not res!1996519) (not e!2943641))))

(declare-fun lt!1885267 () Bool)

(assert (=> d!1502184 (= res!1996519 (not lt!1885267))))

(declare-fun lt!1885268 () Bool)

(assert (=> d!1502184 (= lt!1885267 lt!1885268)))

(declare-fun lt!1885265 () Unit!129252)

(declare-fun e!2943643 () Unit!129252)

(assert (=> d!1502184 (= lt!1885265 e!2943643)))

(declare-fun c!806072 () Bool)

(assert (=> d!1502184 (= c!806072 lt!1885268)))

(assert (=> d!1502184 (= lt!1885268 (containsKey!3359 (toList!5906 lt!1884989) (_1!30507 (h!59153 oldBucket!34))))))

(assert (=> d!1502184 (= (contains!16156 lt!1884989 (_1!30507 (h!59153 oldBucket!34))) lt!1885267)))

(declare-fun b!4720038 () Bool)

(assert (=> b!4720038 false))

(declare-fun lt!1885266 () Unit!129252)

(declare-fun lt!1885270 () Unit!129252)

(assert (=> b!4720038 (= lt!1885266 lt!1885270)))

(assert (=> b!4720038 (containsKey!3359 (toList!5906 lt!1884989) (_1!30507 (h!59153 oldBucket!34)))))

(assert (=> b!4720038 (= lt!1885270 (lemmaInGetKeysListThenContainsKey!944 (toList!5906 lt!1884989) (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun e!2943639 () Unit!129252)

(declare-fun Unit!129454 () Unit!129252)

(assert (=> b!4720038 (= e!2943639 Unit!129454)))

(declare-fun b!4720039 () Bool)

(declare-fun Unit!129455 () Unit!129252)

(assert (=> b!4720039 (= e!2943639 Unit!129455)))

(declare-fun b!4720040 () Bool)

(declare-fun e!2943640 () Bool)

(assert (=> b!4720040 (= e!2943644 e!2943640)))

(declare-fun res!1996518 () Bool)

(assert (=> b!4720040 (=> (not res!1996518) (not e!2943640))))

(assert (=> b!4720040 (= res!1996518 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1884989) (_1!30507 (h!59153 oldBucket!34)))))))

(declare-fun b!4720041 () Bool)

(assert (=> b!4720041 (= e!2943643 e!2943639)))

(declare-fun c!806071 () Bool)

(declare-fun call!330017 () Bool)

(assert (=> b!4720041 (= c!806071 call!330017)))

(declare-fun b!4720042 () Bool)

(declare-fun e!2943642 () List!52939)

(assert (=> b!4720042 (= e!2943642 (keys!18962 lt!1884989))))

(declare-fun b!4720043 () Bool)

(declare-fun lt!1885269 () Unit!129252)

(assert (=> b!4720043 (= e!2943643 lt!1885269)))

(declare-fun lt!1885271 () Unit!129252)

(assert (=> b!4720043 (= lt!1885271 (lemmaContainsKeyImpliesGetValueByKeyDefined!1840 (toList!5906 lt!1884989) (_1!30507 (h!59153 oldBucket!34))))))

(assert (=> b!4720043 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1884989) (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun lt!1885272 () Unit!129252)

(assert (=> b!4720043 (= lt!1885272 lt!1885271)))

(assert (=> b!4720043 (= lt!1885269 (lemmaInListThenGetKeysListContains!940 (toList!5906 lt!1884989) (_1!30507 (h!59153 oldBucket!34))))))

(assert (=> b!4720043 call!330017))

(declare-fun b!4720044 () Bool)

(assert (=> b!4720044 (= e!2943641 (not (contains!16159 (keys!18962 lt!1884989) (_1!30507 (h!59153 oldBucket!34)))))))

(declare-fun b!4720045 () Bool)

(assert (=> b!4720045 (= e!2943642 (getKeysList!945 (toList!5906 lt!1884989)))))

(declare-fun b!4720046 () Bool)

(assert (=> b!4720046 (= e!2943640 (contains!16159 (keys!18962 lt!1884989) (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun bm!330012 () Bool)

(assert (=> bm!330012 (= call!330017 (contains!16159 e!2943642 (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun c!806073 () Bool)

(assert (=> bm!330012 (= c!806073 c!806072)))

(assert (= (and d!1502184 c!806072) b!4720043))

(assert (= (and d!1502184 (not c!806072)) b!4720041))

(assert (= (and b!4720041 c!806071) b!4720038))

(assert (= (and b!4720041 (not c!806071)) b!4720039))

(assert (= (or b!4720043 b!4720041) bm!330012))

(assert (= (and bm!330012 c!806073) b!4720045))

(assert (= (and bm!330012 (not c!806073)) b!4720042))

(assert (= (and d!1502184 res!1996519) b!4720044))

(assert (= (and d!1502184 (not res!1996517)) b!4720040))

(assert (= (and b!4720040 res!1996518) b!4720046))

(declare-fun m!5652643 () Bool)

(assert (=> b!4720042 m!5652643))

(declare-fun m!5652647 () Bool)

(assert (=> b!4720043 m!5652647))

(declare-fun m!5652649 () Bool)

(assert (=> b!4720043 m!5652649))

(assert (=> b!4720043 m!5652649))

(declare-fun m!5652653 () Bool)

(assert (=> b!4720043 m!5652653))

(declare-fun m!5652655 () Bool)

(assert (=> b!4720043 m!5652655))

(declare-fun m!5652657 () Bool)

(assert (=> b!4720045 m!5652657))

(assert (=> b!4720040 m!5652649))

(assert (=> b!4720040 m!5652649))

(assert (=> b!4720040 m!5652653))

(assert (=> b!4720046 m!5652643))

(assert (=> b!4720046 m!5652643))

(declare-fun m!5652663 () Bool)

(assert (=> b!4720046 m!5652663))

(declare-fun m!5652665 () Bool)

(assert (=> bm!330012 m!5652665))

(assert (=> b!4720044 m!5652643))

(assert (=> b!4720044 m!5652643))

(assert (=> b!4720044 m!5652663))

(declare-fun m!5652669 () Bool)

(assert (=> d!1502184 m!5652669))

(assert (=> b!4720038 m!5652669))

(declare-fun m!5652673 () Bool)

(assert (=> b!4720038 m!5652673))

(assert (=> b!4719725 d!1502184))

(declare-fun d!1502190 () Bool)

(declare-fun e!2943651 () Bool)

(assert (=> d!1502190 e!2943651))

(declare-fun res!1996522 () Bool)

(assert (=> d!1502190 (=> res!1996522 e!2943651)))

(declare-fun e!2943648 () Bool)

(assert (=> d!1502190 (= res!1996522 e!2943648)))

(declare-fun res!1996524 () Bool)

(assert (=> d!1502190 (=> (not res!1996524) (not e!2943648))))

(declare-fun lt!1885279 () Bool)

(assert (=> d!1502190 (= res!1996524 (not lt!1885279))))

(declare-fun lt!1885280 () Bool)

(assert (=> d!1502190 (= lt!1885279 lt!1885280)))

(declare-fun lt!1885277 () Unit!129252)

(declare-fun e!2943650 () Unit!129252)

(assert (=> d!1502190 (= lt!1885277 e!2943650)))

(declare-fun c!806075 () Bool)

(assert (=> d!1502190 (= c!806075 lt!1885280)))

(assert (=> d!1502190 (= lt!1885280 (containsKey!3359 (toList!5906 lt!1885008) (_1!30507 (h!59153 oldBucket!34))))))

(assert (=> d!1502190 (= (contains!16156 lt!1885008 (_1!30507 (h!59153 oldBucket!34))) lt!1885279)))

(declare-fun b!4720049 () Bool)

(assert (=> b!4720049 false))

(declare-fun lt!1885278 () Unit!129252)

(declare-fun lt!1885282 () Unit!129252)

(assert (=> b!4720049 (= lt!1885278 lt!1885282)))

(assert (=> b!4720049 (containsKey!3359 (toList!5906 lt!1885008) (_1!30507 (h!59153 oldBucket!34)))))

(assert (=> b!4720049 (= lt!1885282 (lemmaInGetKeysListThenContainsKey!944 (toList!5906 lt!1885008) (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun e!2943646 () Unit!129252)

(declare-fun Unit!129456 () Unit!129252)

(assert (=> b!4720049 (= e!2943646 Unit!129456)))

(declare-fun b!4720050 () Bool)

(declare-fun Unit!129457 () Unit!129252)

(assert (=> b!4720050 (= e!2943646 Unit!129457)))

(declare-fun b!4720051 () Bool)

(declare-fun e!2943647 () Bool)

(assert (=> b!4720051 (= e!2943651 e!2943647)))

(declare-fun res!1996523 () Bool)

(assert (=> b!4720051 (=> (not res!1996523) (not e!2943647))))

(assert (=> b!4720051 (= res!1996523 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1885008) (_1!30507 (h!59153 oldBucket!34)))))))

(declare-fun b!4720052 () Bool)

(assert (=> b!4720052 (= e!2943650 e!2943646)))

(declare-fun c!806074 () Bool)

(declare-fun call!330018 () Bool)

(assert (=> b!4720052 (= c!806074 call!330018)))

(declare-fun b!4720053 () Bool)

(declare-fun e!2943649 () List!52939)

(assert (=> b!4720053 (= e!2943649 (keys!18962 lt!1885008))))

(declare-fun b!4720054 () Bool)

(declare-fun lt!1885281 () Unit!129252)

(assert (=> b!4720054 (= e!2943650 lt!1885281)))

(declare-fun lt!1885283 () Unit!129252)

(assert (=> b!4720054 (= lt!1885283 (lemmaContainsKeyImpliesGetValueByKeyDefined!1840 (toList!5906 lt!1885008) (_1!30507 (h!59153 oldBucket!34))))))

(assert (=> b!4720054 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1885008) (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun lt!1885284 () Unit!129252)

(assert (=> b!4720054 (= lt!1885284 lt!1885283)))

(assert (=> b!4720054 (= lt!1885281 (lemmaInListThenGetKeysListContains!940 (toList!5906 lt!1885008) (_1!30507 (h!59153 oldBucket!34))))))

(assert (=> b!4720054 call!330018))

(declare-fun b!4720055 () Bool)

(assert (=> b!4720055 (= e!2943648 (not (contains!16159 (keys!18962 lt!1885008) (_1!30507 (h!59153 oldBucket!34)))))))

(declare-fun b!4720056 () Bool)

(assert (=> b!4720056 (= e!2943649 (getKeysList!945 (toList!5906 lt!1885008)))))

(declare-fun b!4720057 () Bool)

(assert (=> b!4720057 (= e!2943647 (contains!16159 (keys!18962 lt!1885008) (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun bm!330013 () Bool)

(assert (=> bm!330013 (= call!330018 (contains!16159 e!2943649 (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun c!806076 () Bool)

(assert (=> bm!330013 (= c!806076 c!806075)))

(assert (= (and d!1502190 c!806075) b!4720054))

(assert (= (and d!1502190 (not c!806075)) b!4720052))

(assert (= (and b!4720052 c!806074) b!4720049))

(assert (= (and b!4720052 (not c!806074)) b!4720050))

(assert (= (or b!4720054 b!4720052) bm!330013))

(assert (= (and bm!330013 c!806076) b!4720056))

(assert (= (and bm!330013 (not c!806076)) b!4720053))

(assert (= (and d!1502190 res!1996524) b!4720055))

(assert (= (and d!1502190 (not res!1996522)) b!4720051))

(assert (= (and b!4720051 res!1996523) b!4720057))

(declare-fun m!5652675 () Bool)

(assert (=> b!4720053 m!5652675))

(declare-fun m!5652677 () Bool)

(assert (=> b!4720054 m!5652677))

(declare-fun m!5652679 () Bool)

(assert (=> b!4720054 m!5652679))

(assert (=> b!4720054 m!5652679))

(declare-fun m!5652681 () Bool)

(assert (=> b!4720054 m!5652681))

(declare-fun m!5652683 () Bool)

(assert (=> b!4720054 m!5652683))

(declare-fun m!5652685 () Bool)

(assert (=> b!4720056 m!5652685))

(assert (=> b!4720051 m!5652679))

(assert (=> b!4720051 m!5652679))

(assert (=> b!4720051 m!5652681))

(assert (=> b!4720057 m!5652675))

(assert (=> b!4720057 m!5652675))

(declare-fun m!5652687 () Bool)

(assert (=> b!4720057 m!5652687))

(declare-fun m!5652689 () Bool)

(assert (=> bm!330013 m!5652689))

(assert (=> b!4720055 m!5652675))

(assert (=> b!4720055 m!5652675))

(assert (=> b!4720055 m!5652687))

(declare-fun m!5652691 () Bool)

(assert (=> d!1502190 m!5652691))

(assert (=> b!4720049 m!5652691))

(declare-fun m!5652693 () Bool)

(assert (=> b!4720049 m!5652693))

(assert (=> b!4719725 d!1502190))

(declare-fun d!1502192 () Bool)

(declare-fun res!1996525 () Bool)

(declare-fun e!2943652 () Bool)

(assert (=> d!1502192 (=> res!1996525 e!2943652)))

(assert (=> d!1502192 (= res!1996525 ((_ is Nil!52812) (toList!5906 lt!1884696)))))

(assert (=> d!1502192 (= (forall!11574 (toList!5906 lt!1884696) lambda!214981) e!2943652)))

(declare-fun b!4720058 () Bool)

(declare-fun e!2943653 () Bool)

(assert (=> b!4720058 (= e!2943652 e!2943653)))

(declare-fun res!1996526 () Bool)

(assert (=> b!4720058 (=> (not res!1996526) (not e!2943653))))

(assert (=> b!4720058 (= res!1996526 (dynLambda!21811 lambda!214981 (h!59153 (toList!5906 lt!1884696))))))

(declare-fun b!4720059 () Bool)

(assert (=> b!4720059 (= e!2943653 (forall!11574 (t!360192 (toList!5906 lt!1884696)) lambda!214981))))

(assert (= (and d!1502192 (not res!1996525)) b!4720058))

(assert (= (and b!4720058 res!1996526) b!4720059))

(declare-fun b_lambda!177949 () Bool)

(assert (=> (not b_lambda!177949) (not b!4720058)))

(declare-fun m!5652695 () Bool)

(assert (=> b!4720058 m!5652695))

(declare-fun m!5652697 () Bool)

(assert (=> b!4720059 m!5652697))

(assert (=> b!4719725 d!1502192))

(declare-fun d!1502194 () Bool)

(declare-fun res!1996527 () Bool)

(declare-fun e!2943654 () Bool)

(assert (=> d!1502194 (=> res!1996527 e!2943654)))

(assert (=> d!1502194 (= res!1996527 ((_ is Nil!52812) oldBucket!34))))

(assert (=> d!1502194 (= (forall!11574 oldBucket!34 lambda!214981) e!2943654)))

(declare-fun b!4720060 () Bool)

(declare-fun e!2943655 () Bool)

(assert (=> b!4720060 (= e!2943654 e!2943655)))

(declare-fun res!1996528 () Bool)

(assert (=> b!4720060 (=> (not res!1996528) (not e!2943655))))

(assert (=> b!4720060 (= res!1996528 (dynLambda!21811 lambda!214981 (h!59153 oldBucket!34)))))

(declare-fun b!4720061 () Bool)

(assert (=> b!4720061 (= e!2943655 (forall!11574 (t!360192 oldBucket!34) lambda!214981))))

(assert (= (and d!1502194 (not res!1996527)) b!4720060))

(assert (= (and b!4720060 res!1996528) b!4720061))

(declare-fun b_lambda!177951 () Bool)

(assert (=> (not b_lambda!177951) (not b!4720060)))

(assert (=> b!4720060 m!5652569))

(assert (=> b!4720061 m!5652023))

(assert (=> b!4719725 d!1502194))

(declare-fun d!1502196 () Bool)

(declare-fun e!2943661 () Bool)

(assert (=> d!1502196 e!2943661))

(declare-fun res!1996529 () Bool)

(assert (=> d!1502196 (=> res!1996529 e!2943661)))

(declare-fun e!2943658 () Bool)

(assert (=> d!1502196 (= res!1996529 e!2943658)))

(declare-fun res!1996531 () Bool)

(assert (=> d!1502196 (=> (not res!1996531) (not e!2943658))))

(declare-fun lt!1885287 () Bool)

(assert (=> d!1502196 (= res!1996531 (not lt!1885287))))

(declare-fun lt!1885288 () Bool)

(assert (=> d!1502196 (= lt!1885287 lt!1885288)))

(declare-fun lt!1885285 () Unit!129252)

(declare-fun e!2943660 () Unit!129252)

(assert (=> d!1502196 (= lt!1885285 e!2943660)))

(declare-fun c!806078 () Bool)

(assert (=> d!1502196 (= c!806078 lt!1885288)))

(assert (=> d!1502196 (= lt!1885288 (containsKey!3359 (toList!5906 lt!1885026) (_1!30507 (h!59153 oldBucket!34))))))

(assert (=> d!1502196 (= (contains!16156 lt!1885026 (_1!30507 (h!59153 oldBucket!34))) lt!1885287)))

(declare-fun b!4720062 () Bool)

(assert (=> b!4720062 false))

(declare-fun lt!1885286 () Unit!129252)

(declare-fun lt!1885290 () Unit!129252)

(assert (=> b!4720062 (= lt!1885286 lt!1885290)))

(assert (=> b!4720062 (containsKey!3359 (toList!5906 lt!1885026) (_1!30507 (h!59153 oldBucket!34)))))

(assert (=> b!4720062 (= lt!1885290 (lemmaInGetKeysListThenContainsKey!944 (toList!5906 lt!1885026) (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun e!2943656 () Unit!129252)

(declare-fun Unit!129458 () Unit!129252)

(assert (=> b!4720062 (= e!2943656 Unit!129458)))

(declare-fun b!4720063 () Bool)

(declare-fun Unit!129459 () Unit!129252)

(assert (=> b!4720063 (= e!2943656 Unit!129459)))

(declare-fun b!4720064 () Bool)

(declare-fun e!2943657 () Bool)

(assert (=> b!4720064 (= e!2943661 e!2943657)))

(declare-fun res!1996530 () Bool)

(assert (=> b!4720064 (=> (not res!1996530) (not e!2943657))))

(assert (=> b!4720064 (= res!1996530 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1885026) (_1!30507 (h!59153 oldBucket!34)))))))

(declare-fun b!4720065 () Bool)

(assert (=> b!4720065 (= e!2943660 e!2943656)))

(declare-fun c!806077 () Bool)

(declare-fun call!330019 () Bool)

(assert (=> b!4720065 (= c!806077 call!330019)))

(declare-fun b!4720066 () Bool)

(declare-fun e!2943659 () List!52939)

(assert (=> b!4720066 (= e!2943659 (keys!18962 lt!1885026))))

(declare-fun b!4720067 () Bool)

(declare-fun lt!1885289 () Unit!129252)

(assert (=> b!4720067 (= e!2943660 lt!1885289)))

(declare-fun lt!1885291 () Unit!129252)

(assert (=> b!4720067 (= lt!1885291 (lemmaContainsKeyImpliesGetValueByKeyDefined!1840 (toList!5906 lt!1885026) (_1!30507 (h!59153 oldBucket!34))))))

(assert (=> b!4720067 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1885026) (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun lt!1885292 () Unit!129252)

(assert (=> b!4720067 (= lt!1885292 lt!1885291)))

(assert (=> b!4720067 (= lt!1885289 (lemmaInListThenGetKeysListContains!940 (toList!5906 lt!1885026) (_1!30507 (h!59153 oldBucket!34))))))

(assert (=> b!4720067 call!330019))

(declare-fun b!4720068 () Bool)

(assert (=> b!4720068 (= e!2943658 (not (contains!16159 (keys!18962 lt!1885026) (_1!30507 (h!59153 oldBucket!34)))))))

(declare-fun b!4720069 () Bool)

(assert (=> b!4720069 (= e!2943659 (getKeysList!945 (toList!5906 lt!1885026)))))

(declare-fun b!4720070 () Bool)

(assert (=> b!4720070 (= e!2943657 (contains!16159 (keys!18962 lt!1885026) (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun bm!330014 () Bool)

(assert (=> bm!330014 (= call!330019 (contains!16159 e!2943659 (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun c!806079 () Bool)

(assert (=> bm!330014 (= c!806079 c!806078)))

(assert (= (and d!1502196 c!806078) b!4720067))

(assert (= (and d!1502196 (not c!806078)) b!4720065))

(assert (= (and b!4720065 c!806077) b!4720062))

(assert (= (and b!4720065 (not c!806077)) b!4720063))

(assert (= (or b!4720067 b!4720065) bm!330014))

(assert (= (and bm!330014 c!806079) b!4720069))

(assert (= (and bm!330014 (not c!806079)) b!4720066))

(assert (= (and d!1502196 res!1996531) b!4720068))

(assert (= (and d!1502196 (not res!1996529)) b!4720064))

(assert (= (and b!4720064 res!1996530) b!4720070))

(declare-fun m!5652699 () Bool)

(assert (=> b!4720066 m!5652699))

(declare-fun m!5652701 () Bool)

(assert (=> b!4720067 m!5652701))

(assert (=> b!4720067 m!5652087))

(assert (=> b!4720067 m!5652087))

(declare-fun m!5652703 () Bool)

(assert (=> b!4720067 m!5652703))

(declare-fun m!5652705 () Bool)

(assert (=> b!4720067 m!5652705))

(declare-fun m!5652707 () Bool)

(assert (=> b!4720069 m!5652707))

(assert (=> b!4720064 m!5652087))

(assert (=> b!4720064 m!5652087))

(assert (=> b!4720064 m!5652703))

(assert (=> b!4720070 m!5652699))

(assert (=> b!4720070 m!5652699))

(declare-fun m!5652709 () Bool)

(assert (=> b!4720070 m!5652709))

(declare-fun m!5652711 () Bool)

(assert (=> bm!330014 m!5652711))

(assert (=> b!4720068 m!5652699))

(assert (=> b!4720068 m!5652699))

(assert (=> b!4720068 m!5652709))

(declare-fun m!5652713 () Bool)

(assert (=> d!1502196 m!5652713))

(assert (=> b!4720062 m!5652713))

(declare-fun m!5652715 () Bool)

(assert (=> b!4720062 m!5652715))

(assert (=> d!1502042 d!1502196))

(declare-fun b!4720075 () Bool)

(declare-fun e!2943665 () Option!12353)

(assert (=> b!4720075 (= e!2943665 (getValueByKey!1949 (t!360192 lt!1885024) (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun b!4720073 () Bool)

(declare-fun e!2943664 () Option!12353)

(assert (=> b!4720073 (= e!2943664 (Some!12352 (_2!30507 (h!59153 lt!1885024))))))

(declare-fun b!4720074 () Bool)

(assert (=> b!4720074 (= e!2943664 e!2943665)))

(declare-fun c!806081 () Bool)

(assert (=> b!4720074 (= c!806081 (and ((_ is Cons!52812) lt!1885024) (not (= (_1!30507 (h!59153 lt!1885024)) (_1!30507 (h!59153 oldBucket!34))))))))

(declare-fun b!4720076 () Bool)

(assert (=> b!4720076 (= e!2943665 None!12352)))

(declare-fun d!1502198 () Bool)

(declare-fun c!806080 () Bool)

(assert (=> d!1502198 (= c!806080 (and ((_ is Cons!52812) lt!1885024) (= (_1!30507 (h!59153 lt!1885024)) (_1!30507 (h!59153 oldBucket!34)))))))

(assert (=> d!1502198 (= (getValueByKey!1949 lt!1885024 (_1!30507 (h!59153 oldBucket!34))) e!2943664)))

(assert (= (and d!1502198 c!806080) b!4720073))

(assert (= (and d!1502198 (not c!806080)) b!4720074))

(assert (= (and b!4720074 c!806081) b!4720075))

(assert (= (and b!4720074 (not c!806081)) b!4720076))

(declare-fun m!5652717 () Bool)

(assert (=> b!4720075 m!5652717))

(assert (=> d!1502042 d!1502198))

(declare-fun d!1502200 () Bool)

(assert (=> d!1502200 (= (getValueByKey!1949 lt!1885024 (_1!30507 (h!59153 oldBucket!34))) (Some!12352 (_2!30507 (h!59153 oldBucket!34))))))

(declare-fun lt!1885295 () Unit!129252)

(assert (=> d!1502200 (= lt!1885295 (choose!33285 lt!1885024 (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34))))))

(declare-fun e!2943666 () Bool)

(assert (=> d!1502200 e!2943666))

(declare-fun res!1996534 () Bool)

(assert (=> d!1502200 (=> (not res!1996534) (not e!2943666))))

(assert (=> d!1502200 (= res!1996534 (invariantList!1505 lt!1885024))))

(assert (=> d!1502200 (= (lemmaContainsTupThenGetReturnValue!1079 lt!1885024 (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34))) lt!1885295)))

(declare-fun b!4720077 () Bool)

(declare-fun res!1996535 () Bool)

(assert (=> b!4720077 (=> (not res!1996535) (not e!2943666))))

(assert (=> b!4720077 (= res!1996535 (containsKey!3359 lt!1885024 (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun b!4720078 () Bool)

(assert (=> b!4720078 (= e!2943666 (contains!16158 lt!1885024 (tuple2!54427 (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34)))))))

(assert (= (and d!1502200 res!1996534) b!4720077))

(assert (= (and b!4720077 res!1996535) b!4720078))

(assert (=> d!1502200 m!5652081))

(declare-fun m!5652719 () Bool)

(assert (=> d!1502200 m!5652719))

(declare-fun m!5652721 () Bool)

(assert (=> d!1502200 m!5652721))

(declare-fun m!5652723 () Bool)

(assert (=> b!4720077 m!5652723))

(declare-fun m!5652725 () Bool)

(assert (=> b!4720078 m!5652725))

(assert (=> d!1502042 d!1502200))

(declare-fun b!4720079 () Bool)

(assert (=> b!4720079 false))

(declare-fun lt!1885303 () Unit!129252)

(declare-fun lt!1885301 () Unit!129252)

(assert (=> b!4720079 (= lt!1885303 lt!1885301)))

(assert (=> b!4720079 (containsKey!3359 (t!360192 (toList!5906 lt!1884699)) (_1!30507 (h!59153 (toList!5906 lt!1884699))))))

(assert (=> b!4720079 (= lt!1885301 (lemmaInGetKeysListThenContainsKey!944 (t!360192 (toList!5906 lt!1884699)) (_1!30507 (h!59153 (toList!5906 lt!1884699)))))))

(declare-fun lt!1885300 () Unit!129252)

(declare-fun lt!1885306 () Unit!129252)

(assert (=> b!4720079 (= lt!1885300 lt!1885306)))

(declare-fun call!330020 () List!52939)

(assert (=> b!4720079 (contains!16159 call!330020 (_1!30507 (h!59153 (toList!5906 lt!1884699))))))

(declare-fun lt!1885299 () List!52936)

(assert (=> b!4720079 (= lt!1885306 (lemmaInListThenGetKeysListContains!940 lt!1885299 (_1!30507 (h!59153 (toList!5906 lt!1884699)))))))

(assert (=> b!4720079 (= lt!1885299 (insertNoDuplicatedKeys!587 (t!360192 (toList!5906 lt!1884699)) (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34))))))

(declare-fun e!2943670 () Unit!129252)

(declare-fun Unit!129460 () Unit!129252)

(assert (=> b!4720079 (= e!2943670 Unit!129460)))

(declare-fun c!806083 () Bool)

(declare-fun bm!330015 () Bool)

(assert (=> bm!330015 (= call!330020 (getKeysList!945 (ite c!806083 (toList!5906 lt!1884699) lt!1885299)))))

(declare-fun b!4720080 () Bool)

(declare-fun e!2943667 () List!52936)

(declare-fun call!330021 () List!52936)

(assert (=> b!4720080 (= e!2943667 call!330021)))

(declare-fun lt!1885305 () List!52939)

(assert (=> b!4720080 (= lt!1885305 call!330020)))

(declare-fun lt!1885304 () Unit!129252)

(assert (=> b!4720080 (= lt!1885304 (lemmaSubseqRefl!138 lt!1885305))))

(assert (=> b!4720080 (subseq!654 lt!1885305 lt!1885305)))

(declare-fun lt!1885296 () Unit!129252)

(assert (=> b!4720080 (= lt!1885296 lt!1885304)))

(declare-fun bm!330016 () Bool)

(declare-fun call!330022 () List!52936)

(declare-fun call!330023 () List!52936)

(assert (=> bm!330016 (= call!330022 call!330023)))

(declare-fun c!806085 () Bool)

(declare-fun c!806084 () Bool)

(assert (=> bm!330016 (= c!806085 c!806084)))

(declare-fun c!806086 () Bool)

(declare-fun bm!330017 () Bool)

(declare-fun e!2943669 () List!52936)

(assert (=> bm!330017 (= call!330021 ($colon$colon!1073 (ite c!806083 (t!360192 (toList!5906 lt!1884699)) (ite c!806086 (toList!5906 lt!1884699) e!2943669)) (ite (or c!806083 c!806086) (tuple2!54427 (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34))) (ite c!806084 (h!59153 (toList!5906 lt!1884699)) (tuple2!54427 (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34)))))))))

(declare-fun b!4720081 () Bool)

(declare-fun e!2943672 () Bool)

(assert (=> b!4720081 (= e!2943672 (not (containsKey!3359 (toList!5906 lt!1884699) (_1!30507 (h!59153 oldBucket!34)))))))

(declare-fun d!1502202 () Bool)

(declare-fun e!2943673 () Bool)

(assert (=> d!1502202 e!2943673))

(declare-fun res!1996537 () Bool)

(assert (=> d!1502202 (=> (not res!1996537) (not e!2943673))))

(declare-fun lt!1885297 () List!52936)

(assert (=> d!1502202 (= res!1996537 (invariantList!1505 lt!1885297))))

(assert (=> d!1502202 (= lt!1885297 e!2943667)))

(assert (=> d!1502202 (= c!806083 (and ((_ is Cons!52812) (toList!5906 lt!1884699)) (= (_1!30507 (h!59153 (toList!5906 lt!1884699))) (_1!30507 (h!59153 oldBucket!34)))))))

(assert (=> d!1502202 (invariantList!1505 (toList!5906 lt!1884699))))

(assert (=> d!1502202 (= (insertNoDuplicatedKeys!587 (toList!5906 lt!1884699) (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34))) lt!1885297)))

(declare-fun b!4720082 () Bool)

(assert (=> b!4720082 (= e!2943669 Nil!52812)))

(declare-fun b!4720083 () Bool)

(declare-fun res!1996536 () Bool)

(assert (=> b!4720083 (=> (not res!1996536) (not e!2943673))))

(assert (=> b!4720083 (= res!1996536 (containsKey!3359 lt!1885297 (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun b!4720084 () Bool)

(assert (=> b!4720084 (= e!2943669 (insertNoDuplicatedKeys!587 (t!360192 (toList!5906 lt!1884699)) (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34))))))

(declare-fun bm!330018 () Bool)

(assert (=> bm!330018 (= call!330023 call!330021)))

(declare-fun b!4720085 () Bool)

(declare-fun e!2943671 () List!52936)

(assert (=> b!4720085 (= e!2943671 call!330023)))

(declare-fun b!4720086 () Bool)

(assert (=> b!4720086 (= e!2943673 (= (content!9386 (getKeysList!945 lt!1885297)) ((_ map or) (content!9386 (getKeysList!945 (toList!5906 lt!1884699))) (store ((as const (Array K!14170 Bool)) false) (_1!30507 (h!59153 oldBucket!34)) true))))))

(declare-fun b!4720087 () Bool)

(declare-fun e!2943668 () List!52936)

(declare-fun lt!1885298 () List!52936)

(assert (=> b!4720087 (= e!2943668 lt!1885298)))

(assert (=> b!4720087 (= lt!1885298 call!330022)))

(declare-fun c!806082 () Bool)

(assert (=> b!4720087 (= c!806082 (containsKey!3359 (insertNoDuplicatedKeys!587 (t!360192 (toList!5906 lt!1884699)) (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34))) (_1!30507 (h!59153 (toList!5906 lt!1884699)))))))

(declare-fun lt!1885302 () Unit!129252)

(assert (=> b!4720087 (= lt!1885302 e!2943670)))

(declare-fun b!4720088 () Bool)

(assert (=> b!4720088 (= e!2943667 e!2943671)))

(declare-fun res!1996539 () Bool)

(assert (=> b!4720088 (= res!1996539 ((_ is Cons!52812) (toList!5906 lt!1884699)))))

(assert (=> b!4720088 (=> (not res!1996539) (not e!2943672))))

(assert (=> b!4720088 (= c!806086 e!2943672)))

(declare-fun b!4720089 () Bool)

(assert (=> b!4720089 (= e!2943668 call!330022)))

(declare-fun b!4720090 () Bool)

(declare-fun res!1996538 () Bool)

(assert (=> b!4720090 (=> (not res!1996538) (not e!2943673))))

(assert (=> b!4720090 (= res!1996538 (contains!16158 lt!1885297 (tuple2!54427 (_1!30507 (h!59153 oldBucket!34)) (_2!30507 (h!59153 oldBucket!34)))))))

(declare-fun b!4720091 () Bool)

(assert (=> b!4720091 (= c!806084 ((_ is Cons!52812) (toList!5906 lt!1884699)))))

(assert (=> b!4720091 (= e!2943671 e!2943668)))

(declare-fun b!4720092 () Bool)

(declare-fun Unit!129461 () Unit!129252)

(assert (=> b!4720092 (= e!2943670 Unit!129461)))

(assert (= (and d!1502202 c!806083) b!4720080))

(assert (= (and d!1502202 (not c!806083)) b!4720088))

(assert (= (and b!4720088 res!1996539) b!4720081))

(assert (= (and b!4720088 c!806086) b!4720085))

(assert (= (and b!4720088 (not c!806086)) b!4720091))

(assert (= (and b!4720091 c!806084) b!4720087))

(assert (= (and b!4720091 (not c!806084)) b!4720089))

(assert (= (and b!4720087 c!806082) b!4720079))

(assert (= (and b!4720087 (not c!806082)) b!4720092))

(assert (= (or b!4720087 b!4720089) bm!330016))

(assert (= (and bm!330016 c!806085) b!4720084))

(assert (= (and bm!330016 (not c!806085)) b!4720082))

(assert (= (or b!4720085 bm!330016) bm!330018))

(assert (= (or b!4720080 b!4720079) bm!330015))

(assert (= (or b!4720080 bm!330018) bm!330017))

(assert (= (and d!1502202 res!1996537) b!4720083))

(assert (= (and b!4720083 res!1996536) b!4720090))

(assert (= (and b!4720090 res!1996538) b!4720086))

(declare-fun m!5652733 () Bool)

(assert (=> b!4720079 m!5652733))

(assert (=> b!4720079 m!5652329))

(assert (=> b!4720079 m!5652331))

(declare-fun m!5652735 () Bool)

(assert (=> b!4720079 m!5652735))

(declare-fun m!5652737 () Bool)

(assert (=> b!4720079 m!5652737))

(declare-fun m!5652739 () Bool)

(assert (=> b!4720083 m!5652739))

(declare-fun m!5652741 () Bool)

(assert (=> bm!330017 m!5652741))

(assert (=> b!4720087 m!5652733))

(assert (=> b!4720087 m!5652733))

(declare-fun m!5652743 () Bool)

(assert (=> b!4720087 m!5652743))

(declare-fun m!5652745 () Bool)

(assert (=> bm!330015 m!5652745))

(declare-fun m!5652747 () Bool)

(assert (=> b!4720080 m!5652747))

(declare-fun m!5652749 () Bool)

(assert (=> b!4720080 m!5652749))

(declare-fun m!5652751 () Bool)

(assert (=> b!4720081 m!5652751))

(assert (=> b!4720086 m!5652351))

(declare-fun m!5652753 () Bool)

(assert (=> b!4720086 m!5652753))

(assert (=> b!4720086 m!5652753))

(declare-fun m!5652755 () Bool)

(assert (=> b!4720086 m!5652755))

(assert (=> b!4720086 m!5652351))

(assert (=> b!4720086 m!5652357))

(declare-fun m!5652757 () Bool)

(assert (=> b!4720086 m!5652757))

(declare-fun m!5652759 () Bool)

(assert (=> b!4720090 m!5652759))

(assert (=> b!4720084 m!5652733))

(declare-fun m!5652763 () Bool)

(assert (=> d!1502202 m!5652763))

(assert (=> d!1502202 m!5652365))

(assert (=> d!1502042 d!1502202))

(declare-fun d!1502206 () Bool)

(declare-fun lt!1885318 () Bool)

(assert (=> d!1502206 (= lt!1885318 (select (content!9386 (keys!18962 lt!1884697)) key!4653))))

(declare-fun e!2943691 () Bool)

(assert (=> d!1502206 (= lt!1885318 e!2943691)))

(declare-fun res!1996554 () Bool)

(assert (=> d!1502206 (=> (not res!1996554) (not e!2943691))))

(assert (=> d!1502206 (= res!1996554 ((_ is Cons!52815) (keys!18962 lt!1884697)))))

(assert (=> d!1502206 (= (contains!16159 (keys!18962 lt!1884697) key!4653) lt!1885318)))

(declare-fun b!4720113 () Bool)

(declare-fun e!2943692 () Bool)

(assert (=> b!4720113 (= e!2943691 e!2943692)))

(declare-fun res!1996555 () Bool)

(assert (=> b!4720113 (=> res!1996555 e!2943692)))

(assert (=> b!4720113 (= res!1996555 (= (h!59158 (keys!18962 lt!1884697)) key!4653))))

(declare-fun b!4720114 () Bool)

(assert (=> b!4720114 (= e!2943692 (contains!16159 (t!360197 (keys!18962 lt!1884697)) key!4653))))

(assert (= (and d!1502206 res!1996554) b!4720113))

(assert (= (and b!4720113 (not res!1996555)) b!4720114))

(assert (=> d!1502206 m!5652093))

(declare-fun m!5652771 () Bool)

(assert (=> d!1502206 m!5652771))

(declare-fun m!5652775 () Bool)

(assert (=> d!1502206 m!5652775))

(declare-fun m!5652779 () Bool)

(assert (=> b!4720114 m!5652779))

(assert (=> b!4719784 d!1502206))

(declare-fun b!4720124 () Bool)

(assert (=> b!4720124 true))

(declare-fun d!1502214 () Bool)

(declare-fun e!2943697 () Bool)

(assert (=> d!1502214 e!2943697))

(declare-fun res!1996564 () Bool)

(assert (=> d!1502214 (=> (not res!1996564) (not e!2943697))))

(declare-fun lt!1885321 () List!52939)

(declare-fun noDuplicate!857 (List!52939) Bool)

(assert (=> d!1502214 (= res!1996564 (noDuplicate!857 lt!1885321))))

(assert (=> d!1502214 (= lt!1885321 (getKeysList!945 (toList!5906 lt!1884697)))))

(assert (=> d!1502214 (= (keys!18962 lt!1884697) lt!1885321)))

(declare-fun b!4720123 () Bool)

(declare-fun res!1996566 () Bool)

(assert (=> b!4720123 (=> (not res!1996566) (not e!2943697))))

(declare-fun length!570 (List!52939) Int)

(declare-fun length!571 (List!52936) Int)

(assert (=> b!4720123 (= res!1996566 (= (length!570 lt!1885321) (length!571 (toList!5906 lt!1884697))))))

(declare-fun res!1996565 () Bool)

(assert (=> b!4720124 (=> (not res!1996565) (not e!2943697))))

(declare-fun lambda!215026 () Int)

(declare-fun forall!11576 (List!52939 Int) Bool)

(assert (=> b!4720124 (= res!1996565 (forall!11576 lt!1885321 lambda!215026))))

(declare-fun b!4720125 () Bool)

(declare-fun lambda!215027 () Int)

(declare-fun map!11674 (List!52936 Int) List!52939)

(assert (=> b!4720125 (= e!2943697 (= (content!9386 lt!1885321) (content!9386 (map!11674 (toList!5906 lt!1884697) lambda!215027))))))

(assert (= (and d!1502214 res!1996564) b!4720123))

(assert (= (and b!4720123 res!1996566) b!4720124))

(assert (= (and b!4720124 res!1996565) b!4720125))

(declare-fun m!5652801 () Bool)

(assert (=> d!1502214 m!5652801))

(assert (=> d!1502214 m!5652103))

(declare-fun m!5652803 () Bool)

(assert (=> b!4720123 m!5652803))

(declare-fun m!5652805 () Bool)

(assert (=> b!4720123 m!5652805))

(declare-fun m!5652807 () Bool)

(assert (=> b!4720124 m!5652807))

(declare-fun m!5652809 () Bool)

(assert (=> b!4720125 m!5652809))

(declare-fun m!5652811 () Bool)

(assert (=> b!4720125 m!5652811))

(assert (=> b!4720125 m!5652811))

(declare-fun m!5652813 () Bool)

(assert (=> b!4720125 m!5652813))

(assert (=> b!4719784 d!1502214))

(declare-fun d!1502220 () Bool)

(assert (=> d!1502220 (= (invariantList!1505 (toList!5906 lt!1884990)) (noDuplicatedKeys!370 (toList!5906 lt!1884990)))))

(declare-fun bs!1107090 () Bool)

(assert (= bs!1107090 d!1502220))

(declare-fun m!5652815 () Bool)

(assert (=> bs!1107090 m!5652815))

(assert (=> b!4719727 d!1502220))

(assert (=> b!4719786 d!1502206))

(assert (=> b!4719786 d!1502214))

(declare-fun d!1502222 () Bool)

(declare-fun res!1996567 () Bool)

(declare-fun e!2943698 () Bool)

(assert (=> d!1502222 (=> res!1996567 e!2943698)))

(assert (=> d!1502222 (= res!1996567 (or ((_ is Nil!52813) (toList!5905 (ListLongMap!4436 lt!1884695))) ((_ is Nil!52813) (t!360193 (toList!5905 (ListLongMap!4436 lt!1884695))))))))

(assert (=> d!1502222 (= (isStrictlySorted!744 (toList!5905 (ListLongMap!4436 lt!1884695))) e!2943698)))

(declare-fun b!4720128 () Bool)

(declare-fun e!2943699 () Bool)

(assert (=> b!4720128 (= e!2943698 e!2943699)))

(declare-fun res!1996568 () Bool)

(assert (=> b!4720128 (=> (not res!1996568) (not e!2943699))))

(assert (=> b!4720128 (= res!1996568 (bvslt (_1!30508 (h!59154 (toList!5905 (ListLongMap!4436 lt!1884695)))) (_1!30508 (h!59154 (t!360193 (toList!5905 (ListLongMap!4436 lt!1884695)))))))))

(declare-fun b!4720129 () Bool)

(assert (=> b!4720129 (= e!2943699 (isStrictlySorted!744 (t!360193 (toList!5905 (ListLongMap!4436 lt!1884695)))))))

(assert (= (and d!1502222 (not res!1996567)) b!4720128))

(assert (= (and b!4720128 res!1996568) b!4720129))

(declare-fun m!5652817 () Bool)

(assert (=> b!4720129 m!5652817))

(assert (=> d!1502044 d!1502222))

(declare-fun d!1502224 () Bool)

(declare-fun res!1996569 () Bool)

(declare-fun e!2943700 () Bool)

(assert (=> d!1502224 (=> res!1996569 e!2943700)))

(assert (=> d!1502224 (= res!1996569 (not ((_ is Cons!52812) (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(assert (=> d!1502224 (= (noDuplicateKeys!2008 (_2!30508 (h!59154 (toList!5905 lm!2023)))) e!2943700)))

(declare-fun b!4720130 () Bool)

(declare-fun e!2943701 () Bool)

(assert (=> b!4720130 (= e!2943700 e!2943701)))

(declare-fun res!1996570 () Bool)

(assert (=> b!4720130 (=> (not res!1996570) (not e!2943701))))

(assert (=> b!4720130 (= res!1996570 (not (containsKey!3357 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))))

(declare-fun b!4720131 () Bool)

(assert (=> b!4720131 (= e!2943701 (noDuplicateKeys!2008 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(assert (= (and d!1502224 (not res!1996569)) b!4720130))

(assert (= (and b!4720130 res!1996570) b!4720131))

(declare-fun m!5652819 () Bool)

(assert (=> b!4720130 m!5652819))

(declare-fun m!5652821 () Bool)

(assert (=> b!4720131 m!5652821))

(assert (=> bs!1106748 d!1502224))

(declare-fun bs!1107091 () Bool)

(declare-fun d!1502226 () Bool)

(assert (= bs!1107091 (and d!1502226 b!4719716)))

(declare-fun lambda!215030 () Int)

(assert (=> bs!1107091 (= lambda!215030 lambda!214972)))

(declare-fun bs!1107092 () Bool)

(assert (= bs!1107092 (and d!1502226 b!4719837)))

(assert (=> bs!1107092 (= (= lt!1884696 lt!1885120) (= lambda!215030 lambda!215001))))

(declare-fun bs!1107093 () Bool)

(assert (= bs!1107093 (and d!1502226 b!4719725)))

(assert (=> bs!1107093 (= (= lt!1884696 lt!1885008) (= lambda!215030 lambda!214981))))

(declare-fun bs!1107094 () Bool)

(assert (= bs!1107094 (and d!1502226 d!1502174)))

(assert (=> bs!1107094 (= (= lt!1884696 lt!1885246) (= lambda!215030 lambda!215021))))

(declare-fun bs!1107095 () Bool)

(assert (= bs!1107095 (and d!1502226 d!1502146)))

(assert (=> bs!1107095 (= (= lt!1884696 lt!1884963) (= lambda!215030 lambda!215012))))

(declare-fun bs!1107096 () Bool)

(assert (= bs!1107096 (and d!1502226 b!4719715)))

(assert (=> bs!1107096 (= (= lt!1884696 lt!1884963) (= lambda!215030 lambda!214974))))

(declare-fun bs!1107097 () Bool)

(assert (= bs!1107097 (and d!1502226 d!1501954)))

(assert (=> bs!1107097 (= (= lt!1884696 lt!1884817) (= lambda!215030 lambda!214951))))

(declare-fun bs!1107098 () Bool)

(assert (= bs!1107098 (and d!1502226 b!4719726)))

(assert (=> bs!1107098 (= lambda!215030 lambda!214977)))

(declare-fun bs!1107099 () Bool)

(assert (= bs!1107099 (and d!1502226 b!4719652)))

(assert (=> bs!1107099 (= (= lt!1884696 lt!1884835) (= lambda!215030 lambda!214950))))

(declare-fun bs!1107100 () Bool)

(assert (= bs!1107100 (and d!1502226 b!4719990)))

(assert (=> bs!1107100 (= (= lt!1884696 lt!1885226) (= lambda!215030 lambda!215015))))

(assert (=> bs!1107093 (= lambda!215030 lambda!214979)))

(declare-fun bs!1107101 () Bool)

(assert (= bs!1107101 (and d!1502226 b!4719653)))

(assert (=> bs!1107101 (= lambda!215030 lambda!214948)))

(declare-fun bs!1107102 () Bool)

(assert (= bs!1107102 (and d!1502226 d!1502076)))

(assert (=> bs!1107102 (= (= lt!1884696 lt!1885102) (= lambda!215030 lambda!215002))))

(declare-fun bs!1107103 () Bool)

(assert (= bs!1107103 (and d!1502226 b!4719957)))

(assert (=> bs!1107103 (= (= lt!1884696 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215030 lambda!215005))))

(declare-fun bs!1107104 () Bool)

(assert (= bs!1107104 (and d!1502226 b!4720019)))

(assert (=> bs!1107104 (= (= lt!1884696 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215030 lambda!215018))))

(declare-fun bs!1107105 () Bool)

(assert (= bs!1107105 (and d!1502226 d!1501952)))

(assert (=> bs!1107105 (not (= lambda!215030 lambda!214879))))

(assert (=> bs!1107099 (= lambda!215030 lambda!214949)))

(assert (=> bs!1107100 (= (= lt!1884696 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215030 lambda!215014))))

(declare-fun bs!1107106 () Bool)

(assert (= bs!1107106 (and d!1502226 d!1502126)))

(assert (=> bs!1107106 (= (= lt!1884696 lt!1885172) (= lambda!215030 lambda!215007))))

(declare-fun bs!1107107 () Bool)

(assert (= bs!1107107 (and d!1502226 b!4719838)))

(assert (=> bs!1107107 (= (= lt!1884696 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215030 lambda!214999))))

(declare-fun bs!1107108 () Bool)

(assert (= bs!1107108 (and d!1502226 b!4719796)))

(assert (=> bs!1107108 (= lambda!215030 lambda!214989)))

(assert (=> bs!1107096 (= lambda!215030 lambda!214973)))

(declare-fun bs!1107109 () Bool)

(assert (= bs!1107109 (and d!1502226 b!4720018)))

(assert (=> bs!1107109 (= (= lt!1884696 lt!1885264) (= lambda!215030 lambda!215020))))

(declare-fun bs!1107110 () Bool)

(assert (= bs!1107110 (and d!1502226 d!1502170)))

(assert (=> bs!1107110 (= (= lt!1884696 lt!1885008) (= lambda!215030 lambda!215017))))

(declare-fun bs!1107111 () Bool)

(assert (= bs!1107111 (and d!1502226 d!1502154)))

(assert (=> bs!1107111 (= (= lt!1884696 lt!1885208) (= lambda!215030 lambda!215016))))

(declare-fun bs!1107112 () Bool)

(assert (= bs!1107112 (and d!1502226 d!1502052)))

(assert (=> bs!1107112 (= (= lt!1884696 lt!1885076) (= lambda!215030 lambda!214992))))

(declare-fun bs!1107113 () Bool)

(assert (= bs!1107113 (and d!1502226 b!4719790)))

(assert (=> bs!1107113 (= lambda!215030 lambda!214986)))

(declare-fun bs!1107114 () Bool)

(assert (= bs!1107114 (and d!1502226 d!1502050)))

(assert (=> bs!1107114 (= (= lt!1884696 lt!1885055) (= lambda!215030 lambda!214988))))

(assert (=> bs!1107092 (= (= lt!1884696 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215030 lambda!215000))))

(declare-fun bs!1107115 () Bool)

(assert (= bs!1107115 (and d!1502226 b!4719958)))

(assert (=> bs!1107115 (= (= lt!1884696 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215030 lambda!215004))))

(declare-fun bs!1107116 () Bool)

(assert (= bs!1107116 (and d!1502226 b!4719791)))

(assert (=> bs!1107116 (= lambda!215030 lambda!214985)))

(declare-fun bs!1107117 () Bool)

(assert (= bs!1107117 (and d!1502226 b!4719991)))

(assert (=> bs!1107117 (= (= lt!1884696 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215030 lambda!215013))))

(assert (=> bs!1107113 (= (= lt!1884696 lt!1885073) (= lambda!215030 lambda!214987))))

(declare-fun bs!1107118 () Bool)

(assert (= bs!1107118 (and d!1502226 d!1502034)))

(assert (=> bs!1107118 (= (= lt!1884696 lt!1884990) (= lambda!215030 lambda!214982))))

(declare-fun bs!1107119 () Bool)

(assert (= bs!1107119 (and d!1502226 d!1502062)))

(assert (=> bs!1107119 (not (= lambda!215030 lambda!214995))))

(declare-fun bs!1107120 () Bool)

(assert (= bs!1107120 (and d!1502226 d!1502028)))

(assert (=> bs!1107120 (= (= lt!1884696 lt!1884945) (= lambda!215030 lambda!214975))))

(assert (=> bs!1107103 (= (= lt!1884696 lt!1885190) (= lambda!215030 lambda!215006))))

(declare-fun bs!1107121 () Bool)

(assert (= bs!1107121 (and d!1502226 b!4719795)))

(assert (=> bs!1107121 (= (= lt!1884696 lt!1885094) (= lambda!215030 lambda!214991))))

(assert (=> bs!1107109 (= (= lt!1884696 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215030 lambda!215019))))

(assert (=> bs!1107121 (= lambda!215030 lambda!214990)))

(assert (=> d!1502226 true))

(assert (=> d!1502226 (forall!11574 (toList!5906 lt!1884696) lambda!215030)))

(declare-fun lt!1885324 () Unit!129252)

(declare-fun choose!33294 (ListMap!5269) Unit!129252)

(assert (=> d!1502226 (= lt!1885324 (choose!33294 lt!1884696))))

(assert (=> d!1502226 (= (lemmaContainsAllItsOwnKeys!791 lt!1884696) lt!1885324)))

(declare-fun bs!1107122 () Bool)

(assert (= bs!1107122 d!1502226))

(declare-fun m!5652823 () Bool)

(assert (=> bs!1107122 m!5652823))

(declare-fun m!5652825 () Bool)

(assert (=> bs!1107122 m!5652825))

(assert (=> bm!329973 d!1502226))

(assert (=> b!4719782 d!1502214))

(declare-fun d!1502228 () Bool)

(declare-fun c!806092 () Bool)

(assert (=> d!1502228 (= c!806092 ((_ is Nil!52812) (toList!5906 (+!2263 lt!1884699 (h!59153 oldBucket!34)))))))

(declare-fun e!2943704 () (InoxSet tuple2!54426))

(assert (=> d!1502228 (= (content!9384 (toList!5906 (+!2263 lt!1884699 (h!59153 oldBucket!34)))) e!2943704)))

(declare-fun b!4720137 () Bool)

(assert (=> b!4720137 (= e!2943704 ((as const (Array tuple2!54426 Bool)) false))))

(declare-fun b!4720138 () Bool)

(assert (=> b!4720138 (= e!2943704 ((_ map or) (store ((as const (Array tuple2!54426 Bool)) false) (h!59153 (toList!5906 (+!2263 lt!1884699 (h!59153 oldBucket!34)))) true) (content!9384 (t!360192 (toList!5906 (+!2263 lt!1884699 (h!59153 oldBucket!34)))))))))

(assert (= (and d!1502228 c!806092) b!4720137))

(assert (= (and d!1502228 (not c!806092)) b!4720138))

(declare-fun m!5652827 () Bool)

(assert (=> b!4720138 m!5652827))

(declare-fun m!5652829 () Bool)

(assert (=> b!4720138 m!5652829))

(assert (=> d!1502026 d!1502228))

(declare-fun d!1502230 () Bool)

(declare-fun c!806093 () Bool)

(assert (=> d!1502230 (= c!806093 ((_ is Nil!52812) (toList!5906 (addToMapMapFromBucket!1438 oldBucket!34 lt!1884696))))))

(declare-fun e!2943705 () (InoxSet tuple2!54426))

(assert (=> d!1502230 (= (content!9384 (toList!5906 (addToMapMapFromBucket!1438 oldBucket!34 lt!1884696))) e!2943705)))

(declare-fun b!4720139 () Bool)

(assert (=> b!4720139 (= e!2943705 ((as const (Array tuple2!54426 Bool)) false))))

(declare-fun b!4720140 () Bool)

(assert (=> b!4720140 (= e!2943705 ((_ map or) (store ((as const (Array tuple2!54426 Bool)) false) (h!59153 (toList!5906 (addToMapMapFromBucket!1438 oldBucket!34 lt!1884696))) true) (content!9384 (t!360192 (toList!5906 (addToMapMapFromBucket!1438 oldBucket!34 lt!1884696))))))))

(assert (= (and d!1502230 c!806093) b!4720139))

(assert (= (and d!1502230 (not c!806093)) b!4720140))

(declare-fun m!5652831 () Bool)

(assert (=> b!4720140 m!5652831))

(declare-fun m!5652833 () Bool)

(assert (=> b!4720140 m!5652833))

(assert (=> d!1502026 d!1502230))

(declare-fun b!4720142 () Bool)

(declare-fun e!2943706 () List!52936)

(declare-fun e!2943707 () List!52936)

(assert (=> b!4720142 (= e!2943706 e!2943707)))

(declare-fun c!806095 () Bool)

(assert (=> b!4720142 (= c!806095 ((_ is Cons!52812) (t!360192 oldBucket!34)))))

(declare-fun b!4720143 () Bool)

(assert (=> b!4720143 (= e!2943707 (Cons!52812 (h!59153 (t!360192 oldBucket!34)) (removePairForKey!1603 (t!360192 (t!360192 oldBucket!34)) key!4653)))))

(declare-fun b!4720141 () Bool)

(assert (=> b!4720141 (= e!2943706 (t!360192 (t!360192 oldBucket!34)))))

(declare-fun b!4720144 () Bool)

(assert (=> b!4720144 (= e!2943707 Nil!52812)))

(declare-fun d!1502232 () Bool)

(declare-fun lt!1885328 () List!52936)

(assert (=> d!1502232 (not (containsKey!3357 lt!1885328 key!4653))))

(assert (=> d!1502232 (= lt!1885328 e!2943706)))

(declare-fun c!806094 () Bool)

(assert (=> d!1502232 (= c!806094 (and ((_ is Cons!52812) (t!360192 oldBucket!34)) (= (_1!30507 (h!59153 (t!360192 oldBucket!34))) key!4653)))))

(assert (=> d!1502232 (noDuplicateKeys!2008 (t!360192 oldBucket!34))))

(assert (=> d!1502232 (= (removePairForKey!1603 (t!360192 oldBucket!34) key!4653) lt!1885328)))

(assert (= (and d!1502232 c!806094) b!4720141))

(assert (= (and d!1502232 (not c!806094)) b!4720142))

(assert (= (and b!4720142 c!806095) b!4720143))

(assert (= (and b!4720142 (not c!806095)) b!4720144))

(declare-fun m!5652835 () Bool)

(assert (=> b!4720143 m!5652835))

(declare-fun m!5652837 () Bool)

(assert (=> d!1502232 m!5652837))

(assert (=> d!1502232 m!5651911))

(assert (=> b!4719815 d!1502232))

(declare-fun d!1502234 () Bool)

(declare-fun res!1996571 () Bool)

(declare-fun e!2943708 () Bool)

(assert (=> d!1502234 (=> res!1996571 e!2943708)))

(assert (=> d!1502234 (= res!1996571 (not ((_ is Cons!52812) (t!360192 oldBucket!34))))))

(assert (=> d!1502234 (= (noDuplicateKeys!2008 (t!360192 oldBucket!34)) e!2943708)))

(declare-fun b!4720145 () Bool)

(declare-fun e!2943709 () Bool)

(assert (=> b!4720145 (= e!2943708 e!2943709)))

(declare-fun res!1996572 () Bool)

(assert (=> b!4720145 (=> (not res!1996572) (not e!2943709))))

(assert (=> b!4720145 (= res!1996572 (not (containsKey!3357 (t!360192 (t!360192 oldBucket!34)) (_1!30507 (h!59153 (t!360192 oldBucket!34))))))))

(declare-fun b!4720146 () Bool)

(assert (=> b!4720146 (= e!2943709 (noDuplicateKeys!2008 (t!360192 (t!360192 oldBucket!34))))))

(assert (= (and d!1502234 (not res!1996571)) b!4720145))

(assert (= (and b!4720145 res!1996572) b!4720146))

(declare-fun m!5652839 () Bool)

(assert (=> b!4720145 m!5652839))

(declare-fun m!5652841 () Bool)

(assert (=> b!4720146 m!5652841))

(assert (=> b!4719705 d!1502234))

(assert (=> bm!329967 d!1502226))

(declare-fun d!1502236 () Bool)

(declare-fun res!1996573 () Bool)

(declare-fun e!2943710 () Bool)

(assert (=> d!1502236 (=> res!1996573 e!2943710)))

(assert (=> d!1502236 (= res!1996573 (and ((_ is Cons!52812) (t!360192 lt!1884694)) (= (_1!30507 (h!59153 (t!360192 lt!1884694))) key!4653)))))

(assert (=> d!1502236 (= (containsKey!3357 (t!360192 lt!1884694) key!4653) e!2943710)))

(declare-fun b!4720147 () Bool)

(declare-fun e!2943711 () Bool)

(assert (=> b!4720147 (= e!2943710 e!2943711)))

(declare-fun res!1996574 () Bool)

(assert (=> b!4720147 (=> (not res!1996574) (not e!2943711))))

(assert (=> b!4720147 (= res!1996574 ((_ is Cons!52812) (t!360192 lt!1884694)))))

(declare-fun b!4720148 () Bool)

(assert (=> b!4720148 (= e!2943711 (containsKey!3357 (t!360192 (t!360192 lt!1884694)) key!4653))))

(assert (= (and d!1502236 (not res!1996573)) b!4720147))

(assert (= (and b!4720147 res!1996574) b!4720148))

(declare-fun m!5652843 () Bool)

(assert (=> b!4720148 m!5652843))

(assert (=> b!4719699 d!1502236))

(declare-fun d!1502238 () Bool)

(declare-fun res!1996575 () Bool)

(declare-fun e!2943712 () Bool)

(assert (=> d!1502238 (=> res!1996575 e!2943712)))

(assert (=> d!1502238 (= res!1996575 ((_ is Nil!52812) (toList!5906 lt!1884696)))))

(assert (=> d!1502238 (= (forall!11574 (toList!5906 lt!1884696) lambda!214951) e!2943712)))

(declare-fun b!4720149 () Bool)

(declare-fun e!2943713 () Bool)

(assert (=> b!4720149 (= e!2943712 e!2943713)))

(declare-fun res!1996576 () Bool)

(assert (=> b!4720149 (=> (not res!1996576) (not e!2943713))))

(assert (=> b!4720149 (= res!1996576 (dynLambda!21811 lambda!214951 (h!59153 (toList!5906 lt!1884696))))))

(declare-fun b!4720150 () Bool)

(assert (=> b!4720150 (= e!2943713 (forall!11574 (t!360192 (toList!5906 lt!1884696)) lambda!214951))))

(assert (= (and d!1502238 (not res!1996575)) b!4720149))

(assert (= (and b!4720149 res!1996576) b!4720150))

(declare-fun b_lambda!177963 () Bool)

(assert (=> (not b_lambda!177963) (not b!4720149)))

(declare-fun m!5652845 () Bool)

(assert (=> b!4720149 m!5652845))

(declare-fun m!5652847 () Bool)

(assert (=> b!4720150 m!5652847))

(assert (=> b!4719655 d!1502238))

(declare-fun d!1502240 () Bool)

(declare-fun res!1996577 () Bool)

(declare-fun e!2943714 () Bool)

(assert (=> d!1502240 (=> res!1996577 e!2943714)))

(assert (=> d!1502240 (= res!1996577 ((_ is Nil!52812) (toList!5906 lt!1884696)))))

(assert (=> d!1502240 (= (forall!11574 (toList!5906 lt!1884696) lambda!214988) e!2943714)))

(declare-fun b!4720151 () Bool)

(declare-fun e!2943715 () Bool)

(assert (=> b!4720151 (= e!2943714 e!2943715)))

(declare-fun res!1996578 () Bool)

(assert (=> b!4720151 (=> (not res!1996578) (not e!2943715))))

(assert (=> b!4720151 (= res!1996578 (dynLambda!21811 lambda!214988 (h!59153 (toList!5906 lt!1884696))))))

(declare-fun b!4720152 () Bool)

(assert (=> b!4720152 (= e!2943715 (forall!11574 (t!360192 (toList!5906 lt!1884696)) lambda!214988))))

(assert (= (and d!1502240 (not res!1996577)) b!4720151))

(assert (= (and b!4720151 res!1996578) b!4720152))

(declare-fun b_lambda!177965 () Bool)

(assert (=> (not b_lambda!177965) (not b!4720151)))

(declare-fun m!5652849 () Bool)

(assert (=> b!4720151 m!5652849))

(declare-fun m!5652851 () Bool)

(assert (=> b!4720152 m!5652851))

(assert (=> b!4719793 d!1502240))

(declare-fun d!1502242 () Bool)

(assert (=> d!1502242 (= (invariantList!1505 (toList!5906 lt!1884817)) (noDuplicatedKeys!370 (toList!5906 lt!1884817)))))

(declare-fun bs!1107140 () Bool)

(assert (= bs!1107140 d!1502242))

(declare-fun m!5652853 () Bool)

(assert (=> bs!1107140 m!5652853))

(assert (=> b!4719654 d!1502242))

(declare-fun d!1502244 () Bool)

(declare-fun res!1996579 () Bool)

(declare-fun e!2943716 () Bool)

(assert (=> d!1502244 (=> res!1996579 e!2943716)))

(assert (=> d!1502244 (= res!1996579 ((_ is Nil!52813) (toList!5905 lm!2023)))))

(assert (=> d!1502244 (= (forall!11572 (toList!5905 lm!2023) lambda!214998) e!2943716)))

(declare-fun b!4720153 () Bool)

(declare-fun e!2943717 () Bool)

(assert (=> b!4720153 (= e!2943716 e!2943717)))

(declare-fun res!1996580 () Bool)

(assert (=> b!4720153 (=> (not res!1996580) (not e!2943717))))

(assert (=> b!4720153 (= res!1996580 (dynLambda!21810 lambda!214998 (h!59154 (toList!5905 lm!2023))))))

(declare-fun b!4720154 () Bool)

(assert (=> b!4720154 (= e!2943717 (forall!11572 (t!360193 (toList!5905 lm!2023)) lambda!214998))))

(assert (= (and d!1502244 (not res!1996579)) b!4720153))

(assert (= (and b!4720153 res!1996580) b!4720154))

(declare-fun b_lambda!177967 () Bool)

(assert (=> (not b_lambda!177967) (not b!4720153)))

(declare-fun m!5652857 () Bool)

(assert (=> b!4720153 m!5652857))

(declare-fun m!5652859 () Bool)

(assert (=> b!4720154 m!5652859))

(assert (=> d!1502072 d!1502244))

(declare-fun d!1502246 () Bool)

(assert (=> d!1502246 (= (invariantList!1505 (toList!5906 lt!1884923)) (noDuplicatedKeys!370 (toList!5906 lt!1884923)))))

(declare-fun bs!1107142 () Bool)

(assert (= bs!1107142 d!1502246))

(declare-fun m!5652863 () Bool)

(assert (=> bs!1107142 m!5652863))

(assert (=> d!1501984 d!1502246))

(declare-fun d!1502248 () Bool)

(declare-fun res!1996581 () Bool)

(declare-fun e!2943718 () Bool)

(assert (=> d!1502248 (=> res!1996581 e!2943718)))

(assert (=> d!1502248 (= res!1996581 ((_ is Nil!52813) (t!360193 (toList!5905 lm!2023))))))

(assert (=> d!1502248 (= (forall!11572 (t!360193 (toList!5905 lm!2023)) lambda!214971) e!2943718)))

(declare-fun b!4720155 () Bool)

(declare-fun e!2943719 () Bool)

(assert (=> b!4720155 (= e!2943718 e!2943719)))

(declare-fun res!1996582 () Bool)

(assert (=> b!4720155 (=> (not res!1996582) (not e!2943719))))

(assert (=> b!4720155 (= res!1996582 (dynLambda!21810 lambda!214971 (h!59154 (t!360193 (toList!5905 lm!2023)))))))

(declare-fun b!4720156 () Bool)

(assert (=> b!4720156 (= e!2943719 (forall!11572 (t!360193 (t!360193 (toList!5905 lm!2023))) lambda!214971))))

(assert (= (and d!1502248 (not res!1996581)) b!4720155))

(assert (= (and b!4720155 res!1996582) b!4720156))

(declare-fun b_lambda!177969 () Bool)

(assert (=> (not b_lambda!177969) (not b!4720155)))

(declare-fun m!5652869 () Bool)

(assert (=> b!4720155 m!5652869))

(declare-fun m!5652871 () Bool)

(assert (=> b!4720156 m!5652871))

(assert (=> d!1501984 d!1502248))

(declare-fun d!1502252 () Bool)

(declare-fun isEmpty!29171 (Option!12353) Bool)

(assert (=> d!1502252 (= (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1884697) key!4653)) (not (isEmpty!29171 (getValueByKey!1949 (toList!5906 lt!1884697) key!4653))))))

(declare-fun bs!1107143 () Bool)

(assert (= bs!1107143 d!1502252))

(assert (=> bs!1107143 m!5652097))

(declare-fun m!5652877 () Bool)

(assert (=> bs!1107143 m!5652877))

(assert (=> b!4719780 d!1502252))

(declare-fun b!4720166 () Bool)

(declare-fun e!2943726 () Option!12353)

(assert (=> b!4720166 (= e!2943726 (getValueByKey!1949 (t!360192 (toList!5906 lt!1884697)) key!4653))))

(declare-fun b!4720164 () Bool)

(declare-fun e!2943725 () Option!12353)

(assert (=> b!4720164 (= e!2943725 (Some!12352 (_2!30507 (h!59153 (toList!5906 lt!1884697)))))))

(declare-fun b!4720165 () Bool)

(assert (=> b!4720165 (= e!2943725 e!2943726)))

(declare-fun c!806098 () Bool)

(assert (=> b!4720165 (= c!806098 (and ((_ is Cons!52812) (toList!5906 lt!1884697)) (not (= (_1!30507 (h!59153 (toList!5906 lt!1884697))) key!4653))))))

(declare-fun b!4720167 () Bool)

(assert (=> b!4720167 (= e!2943726 None!12352)))

(declare-fun d!1502256 () Bool)

(declare-fun c!806097 () Bool)

(assert (=> d!1502256 (= c!806097 (and ((_ is Cons!52812) (toList!5906 lt!1884697)) (= (_1!30507 (h!59153 (toList!5906 lt!1884697))) key!4653)))))

(assert (=> d!1502256 (= (getValueByKey!1949 (toList!5906 lt!1884697) key!4653) e!2943725)))

(assert (= (and d!1502256 c!806097) b!4720164))

(assert (= (and d!1502256 (not c!806097)) b!4720165))

(assert (= (and b!4720165 c!806098) b!4720166))

(assert (= (and b!4720165 (not c!806098)) b!4720167))

(declare-fun m!5652879 () Bool)

(assert (=> b!4720166 m!5652879))

(assert (=> b!4719780 d!1502256))

(declare-fun d!1502258 () Bool)

(assert (=> d!1502258 (= (invariantList!1505 (toList!5906 lt!1885055)) (noDuplicatedKeys!370 (toList!5906 lt!1885055)))))

(declare-fun bs!1107144 () Bool)

(assert (= bs!1107144 d!1502258))

(declare-fun m!5652881 () Bool)

(assert (=> bs!1107144 m!5652881))

(assert (=> b!4719792 d!1502258))

(declare-fun d!1502260 () Bool)

(declare-fun res!1996592 () Bool)

(declare-fun e!2943731 () Bool)

(assert (=> d!1502260 (=> res!1996592 e!2943731)))

(assert (=> d!1502260 (= res!1996592 (and ((_ is Cons!52812) (toList!5906 lt!1884697)) (= (_1!30507 (h!59153 (toList!5906 lt!1884697))) key!4653)))))

(assert (=> d!1502260 (= (containsKey!3359 (toList!5906 lt!1884697) key!4653) e!2943731)))

(declare-fun b!4720172 () Bool)

(declare-fun e!2943732 () Bool)

(assert (=> b!4720172 (= e!2943731 e!2943732)))

(declare-fun res!1996593 () Bool)

(assert (=> b!4720172 (=> (not res!1996593) (not e!2943732))))

(assert (=> b!4720172 (= res!1996593 ((_ is Cons!52812) (toList!5906 lt!1884697)))))

(declare-fun b!4720173 () Bool)

(assert (=> b!4720173 (= e!2943732 (containsKey!3359 (t!360192 (toList!5906 lt!1884697)) key!4653))))

(assert (= (and d!1502260 (not res!1996592)) b!4720172))

(assert (= (and b!4720172 res!1996593) b!4720173))

(declare-fun m!5652883 () Bool)

(assert (=> b!4720173 m!5652883))

(assert (=> b!4719778 d!1502260))

(declare-fun d!1502262 () Bool)

(assert (=> d!1502262 (containsKey!3359 (toList!5906 lt!1884697) key!4653)))

(declare-fun lt!1885352 () Unit!129252)

(declare-fun choose!33295 (List!52936 K!14170) Unit!129252)

(assert (=> d!1502262 (= lt!1885352 (choose!33295 (toList!5906 lt!1884697) key!4653))))

(assert (=> d!1502262 (invariantList!1505 (toList!5906 lt!1884697))))

(assert (=> d!1502262 (= (lemmaInGetKeysListThenContainsKey!944 (toList!5906 lt!1884697) key!4653) lt!1885352)))

(declare-fun bs!1107163 () Bool)

(assert (= bs!1107163 d!1502262))

(assert (=> bs!1107163 m!5652109))

(declare-fun m!5652885 () Bool)

(assert (=> bs!1107163 m!5652885))

(declare-fun m!5652887 () Bool)

(assert (=> bs!1107163 m!5652887))

(assert (=> b!4719778 d!1502262))

(declare-fun d!1502264 () Bool)

(declare-fun res!1996594 () Bool)

(declare-fun e!2943733 () Bool)

(assert (=> d!1502264 (=> res!1996594 e!2943733)))

(assert (=> d!1502264 (= res!1996594 (not ((_ is Cons!52812) (t!360192 newBucket!218))))))

(assert (=> d!1502264 (= (noDuplicateKeys!2008 (t!360192 newBucket!218)) e!2943733)))

(declare-fun b!4720174 () Bool)

(declare-fun e!2943734 () Bool)

(assert (=> b!4720174 (= e!2943733 e!2943734)))

(declare-fun res!1996595 () Bool)

(assert (=> b!4720174 (=> (not res!1996595) (not e!2943734))))

(assert (=> b!4720174 (= res!1996595 (not (containsKey!3357 (t!360192 (t!360192 newBucket!218)) (_1!30507 (h!59153 (t!360192 newBucket!218))))))))

(declare-fun b!4720175 () Bool)

(assert (=> b!4720175 (= e!2943734 (noDuplicateKeys!2008 (t!360192 (t!360192 newBucket!218))))))

(assert (= (and d!1502264 (not res!1996594)) b!4720174))

(assert (= (and b!4720174 res!1996595) b!4720175))

(declare-fun m!5652889 () Bool)

(assert (=> b!4720174 m!5652889))

(declare-fun m!5652891 () Bool)

(assert (=> b!4720175 m!5652891))

(assert (=> b!4719800 d!1502264))

(declare-fun d!1502266 () Bool)

(declare-fun e!2943740 () Bool)

(assert (=> d!1502266 e!2943740))

(declare-fun res!1996596 () Bool)

(assert (=> d!1502266 (=> res!1996596 e!2943740)))

(declare-fun e!2943737 () Bool)

(assert (=> d!1502266 (= res!1996596 e!2943737)))

(declare-fun res!1996598 () Bool)

(assert (=> d!1502266 (=> (not res!1996598) (not e!2943737))))

(declare-fun lt!1885355 () Bool)

(assert (=> d!1502266 (= res!1996598 (not lt!1885355))))

(declare-fun lt!1885356 () Bool)

(assert (=> d!1502266 (= lt!1885355 lt!1885356)))

(declare-fun lt!1885353 () Unit!129252)

(declare-fun e!2943739 () Unit!129252)

(assert (=> d!1502266 (= lt!1885353 e!2943739)))

(declare-fun c!806100 () Bool)

(assert (=> d!1502266 (= c!806100 lt!1885356)))

(assert (=> d!1502266 (= lt!1885356 (containsKey!3359 (toList!5906 lt!1884816) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(assert (=> d!1502266 (= (contains!16156 lt!1884816 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) lt!1885355)))

(declare-fun b!4720176 () Bool)

(assert (=> b!4720176 false))

(declare-fun lt!1885354 () Unit!129252)

(declare-fun lt!1885358 () Unit!129252)

(assert (=> b!4720176 (= lt!1885354 lt!1885358)))

(assert (=> b!4720176 (containsKey!3359 (toList!5906 lt!1884816) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(assert (=> b!4720176 (= lt!1885358 (lemmaInGetKeysListThenContainsKey!944 (toList!5906 lt!1884816) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun e!2943735 () Unit!129252)

(declare-fun Unit!129477 () Unit!129252)

(assert (=> b!4720176 (= e!2943735 Unit!129477)))

(declare-fun b!4720177 () Bool)

(declare-fun Unit!129478 () Unit!129252)

(assert (=> b!4720177 (= e!2943735 Unit!129478)))

(declare-fun b!4720178 () Bool)

(declare-fun e!2943736 () Bool)

(assert (=> b!4720178 (= e!2943740 e!2943736)))

(declare-fun res!1996597 () Bool)

(assert (=> b!4720178 (=> (not res!1996597) (not e!2943736))))

(assert (=> b!4720178 (= res!1996597 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1884816) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))))

(declare-fun b!4720179 () Bool)

(assert (=> b!4720179 (= e!2943739 e!2943735)))

(declare-fun c!806099 () Bool)

(declare-fun call!330028 () Bool)

(assert (=> b!4720179 (= c!806099 call!330028)))

(declare-fun b!4720180 () Bool)

(declare-fun e!2943738 () List!52939)

(assert (=> b!4720180 (= e!2943738 (keys!18962 lt!1884816))))

(declare-fun b!4720181 () Bool)

(declare-fun lt!1885357 () Unit!129252)

(assert (=> b!4720181 (= e!2943739 lt!1885357)))

(declare-fun lt!1885359 () Unit!129252)

(assert (=> b!4720181 (= lt!1885359 (lemmaContainsKeyImpliesGetValueByKeyDefined!1840 (toList!5906 lt!1884816) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(assert (=> b!4720181 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1884816) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun lt!1885360 () Unit!129252)

(assert (=> b!4720181 (= lt!1885360 lt!1885359)))

(assert (=> b!4720181 (= lt!1885357 (lemmaInListThenGetKeysListContains!940 (toList!5906 lt!1884816) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(assert (=> b!4720181 call!330028))

(declare-fun b!4720182 () Bool)

(assert (=> b!4720182 (= e!2943737 (not (contains!16159 (keys!18962 lt!1884816) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))))

(declare-fun b!4720183 () Bool)

(assert (=> b!4720183 (= e!2943738 (getKeysList!945 (toList!5906 lt!1884816)))))

(declare-fun b!4720184 () Bool)

(assert (=> b!4720184 (= e!2943736 (contains!16159 (keys!18962 lt!1884816) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun bm!330023 () Bool)

(assert (=> bm!330023 (= call!330028 (contains!16159 e!2943738 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun c!806101 () Bool)

(assert (=> bm!330023 (= c!806101 c!806100)))

(assert (= (and d!1502266 c!806100) b!4720181))

(assert (= (and d!1502266 (not c!806100)) b!4720179))

(assert (= (and b!4720179 c!806099) b!4720176))

(assert (= (and b!4720179 (not c!806099)) b!4720177))

(assert (= (or b!4720181 b!4720179) bm!330023))

(assert (= (and bm!330023 c!806101) b!4720183))

(assert (= (and bm!330023 (not c!806101)) b!4720180))

(assert (= (and d!1502266 res!1996598) b!4720182))

(assert (= (and d!1502266 (not res!1996596)) b!4720178))

(assert (= (and b!4720178 res!1996597) b!4720184))

(declare-fun m!5652893 () Bool)

(assert (=> b!4720180 m!5652893))

(declare-fun m!5652895 () Bool)

(assert (=> b!4720181 m!5652895))

(declare-fun m!5652897 () Bool)

(assert (=> b!4720181 m!5652897))

(assert (=> b!4720181 m!5652897))

(declare-fun m!5652899 () Bool)

(assert (=> b!4720181 m!5652899))

(declare-fun m!5652901 () Bool)

(assert (=> b!4720181 m!5652901))

(declare-fun m!5652903 () Bool)

(assert (=> b!4720183 m!5652903))

(assert (=> b!4720178 m!5652897))

(assert (=> b!4720178 m!5652897))

(assert (=> b!4720178 m!5652899))

(assert (=> b!4720184 m!5652893))

(assert (=> b!4720184 m!5652893))

(declare-fun m!5652905 () Bool)

(assert (=> b!4720184 m!5652905))

(declare-fun m!5652907 () Bool)

(assert (=> bm!330023 m!5652907))

(assert (=> b!4720182 m!5652893))

(assert (=> b!4720182 m!5652893))

(assert (=> b!4720182 m!5652905))

(declare-fun m!5652909 () Bool)

(assert (=> d!1502266 m!5652909))

(assert (=> b!4720176 m!5652909))

(declare-fun m!5652911 () Bool)

(assert (=> b!4720176 m!5652911))

(assert (=> b!4719652 d!1502266))

(assert (=> b!4719652 d!1502110))

(declare-fun d!1502268 () Bool)

(declare-fun res!1996599 () Bool)

(declare-fun e!2943741 () Bool)

(assert (=> d!1502268 (=> res!1996599 e!2943741)))

(assert (=> d!1502268 (= res!1996599 ((_ is Nil!52812) (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(assert (=> d!1502268 (= (forall!11574 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))) lambda!214950) e!2943741)))

(declare-fun b!4720185 () Bool)

(declare-fun e!2943742 () Bool)

(assert (=> b!4720185 (= e!2943741 e!2943742)))

(declare-fun res!1996600 () Bool)

(assert (=> b!4720185 (=> (not res!1996600) (not e!2943742))))

(assert (=> b!4720185 (= res!1996600 (dynLambda!21811 lambda!214950 (h!59153 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun b!4720186 () Bool)

(assert (=> b!4720186 (= e!2943742 (forall!11574 (t!360192 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lambda!214950))))

(assert (= (and d!1502268 (not res!1996599)) b!4720185))

(assert (= (and b!4720185 res!1996600) b!4720186))

(declare-fun b_lambda!177973 () Bool)

(assert (=> (not b_lambda!177973) (not b!4720185)))

(declare-fun m!5652913 () Bool)

(assert (=> b!4720185 m!5652913))

(declare-fun m!5652915 () Bool)

(assert (=> b!4720186 m!5652915))

(assert (=> b!4719652 d!1502268))

(declare-fun d!1502270 () Bool)

(declare-fun e!2943748 () Bool)

(assert (=> d!1502270 e!2943748))

(declare-fun res!1996601 () Bool)

(assert (=> d!1502270 (=> res!1996601 e!2943748)))

(declare-fun e!2943745 () Bool)

(assert (=> d!1502270 (= res!1996601 e!2943745)))

(declare-fun res!1996603 () Bool)

(assert (=> d!1502270 (=> (not res!1996603) (not e!2943745))))

(declare-fun lt!1885363 () Bool)

(assert (=> d!1502270 (= res!1996603 (not lt!1885363))))

(declare-fun lt!1885364 () Bool)

(assert (=> d!1502270 (= lt!1885363 lt!1885364)))

(declare-fun lt!1885361 () Unit!129252)

(declare-fun e!2943747 () Unit!129252)

(assert (=> d!1502270 (= lt!1885361 e!2943747)))

(declare-fun c!806103 () Bool)

(assert (=> d!1502270 (= c!806103 lt!1885364)))

(assert (=> d!1502270 (= lt!1885364 (containsKey!3359 (toList!5906 lt!1884835) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(assert (=> d!1502270 (= (contains!16156 lt!1884835 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) lt!1885363)))

(declare-fun b!4720187 () Bool)

(assert (=> b!4720187 false))

(declare-fun lt!1885362 () Unit!129252)

(declare-fun lt!1885366 () Unit!129252)

(assert (=> b!4720187 (= lt!1885362 lt!1885366)))

(assert (=> b!4720187 (containsKey!3359 (toList!5906 lt!1884835) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(assert (=> b!4720187 (= lt!1885366 (lemmaInGetKeysListThenContainsKey!944 (toList!5906 lt!1884835) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun e!2943743 () Unit!129252)

(declare-fun Unit!129479 () Unit!129252)

(assert (=> b!4720187 (= e!2943743 Unit!129479)))

(declare-fun b!4720188 () Bool)

(declare-fun Unit!129480 () Unit!129252)

(assert (=> b!4720188 (= e!2943743 Unit!129480)))

(declare-fun b!4720189 () Bool)

(declare-fun e!2943744 () Bool)

(assert (=> b!4720189 (= e!2943748 e!2943744)))

(declare-fun res!1996602 () Bool)

(assert (=> b!4720189 (=> (not res!1996602) (not e!2943744))))

(assert (=> b!4720189 (= res!1996602 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1884835) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))))

(declare-fun b!4720190 () Bool)

(assert (=> b!4720190 (= e!2943747 e!2943743)))

(declare-fun c!806102 () Bool)

(declare-fun call!330029 () Bool)

(assert (=> b!4720190 (= c!806102 call!330029)))

(declare-fun b!4720191 () Bool)

(declare-fun e!2943746 () List!52939)

(assert (=> b!4720191 (= e!2943746 (keys!18962 lt!1884835))))

(declare-fun b!4720192 () Bool)

(declare-fun lt!1885365 () Unit!129252)

(assert (=> b!4720192 (= e!2943747 lt!1885365)))

(declare-fun lt!1885367 () Unit!129252)

(assert (=> b!4720192 (= lt!1885367 (lemmaContainsKeyImpliesGetValueByKeyDefined!1840 (toList!5906 lt!1884835) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(assert (=> b!4720192 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1884835) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun lt!1885368 () Unit!129252)

(assert (=> b!4720192 (= lt!1885368 lt!1885367)))

(assert (=> b!4720192 (= lt!1885365 (lemmaInListThenGetKeysListContains!940 (toList!5906 lt!1884835) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(assert (=> b!4720192 call!330029))

(declare-fun b!4720193 () Bool)

(assert (=> b!4720193 (= e!2943745 (not (contains!16159 (keys!18962 lt!1884835) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))))

(declare-fun b!4720194 () Bool)

(assert (=> b!4720194 (= e!2943746 (getKeysList!945 (toList!5906 lt!1884835)))))

(declare-fun b!4720195 () Bool)

(assert (=> b!4720195 (= e!2943744 (contains!16159 (keys!18962 lt!1884835) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun bm!330024 () Bool)

(assert (=> bm!330024 (= call!330029 (contains!16159 e!2943746 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun c!806104 () Bool)

(assert (=> bm!330024 (= c!806104 c!806103)))

(assert (= (and d!1502270 c!806103) b!4720192))

(assert (= (and d!1502270 (not c!806103)) b!4720190))

(assert (= (and b!4720190 c!806102) b!4720187))

(assert (= (and b!4720190 (not c!806102)) b!4720188))

(assert (= (or b!4720192 b!4720190) bm!330024))

(assert (= (and bm!330024 c!806104) b!4720194))

(assert (= (and bm!330024 (not c!806104)) b!4720191))

(assert (= (and d!1502270 res!1996603) b!4720193))

(assert (= (and d!1502270 (not res!1996601)) b!4720189))

(assert (= (and b!4720189 res!1996602) b!4720195))

(declare-fun m!5652917 () Bool)

(assert (=> b!4720191 m!5652917))

(declare-fun m!5652919 () Bool)

(assert (=> b!4720192 m!5652919))

(declare-fun m!5652921 () Bool)

(assert (=> b!4720192 m!5652921))

(assert (=> b!4720192 m!5652921))

(declare-fun m!5652923 () Bool)

(assert (=> b!4720192 m!5652923))

(declare-fun m!5652925 () Bool)

(assert (=> b!4720192 m!5652925))

(declare-fun m!5652927 () Bool)

(assert (=> b!4720194 m!5652927))

(assert (=> b!4720189 m!5652921))

(assert (=> b!4720189 m!5652921))

(assert (=> b!4720189 m!5652923))

(assert (=> b!4720195 m!5652917))

(assert (=> b!4720195 m!5652917))

(declare-fun m!5652929 () Bool)

(assert (=> b!4720195 m!5652929))

(declare-fun m!5652931 () Bool)

(assert (=> bm!330024 m!5652931))

(assert (=> b!4720193 m!5652917))

(assert (=> b!4720193 m!5652917))

(assert (=> b!4720193 m!5652929))

(declare-fun m!5652933 () Bool)

(assert (=> d!1502270 m!5652933))

(assert (=> b!4720187 m!5652933))

(declare-fun m!5652935 () Bool)

(assert (=> b!4720187 m!5652935))

(assert (=> b!4719652 d!1502270))

(declare-fun bs!1107183 () Bool)

(declare-fun b!4720198 () Bool)

(assert (= bs!1107183 (and b!4720198 b!4719716)))

(declare-fun lambda!215038 () Int)

(assert (=> bs!1107183 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215038 lambda!214972))))

(declare-fun bs!1107184 () Bool)

(assert (= bs!1107184 (and b!4720198 b!4719837)))

(assert (=> bs!1107184 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885120) (= lambda!215038 lambda!215001))))

(declare-fun bs!1107185 () Bool)

(assert (= bs!1107185 (and b!4720198 b!4719725)))

(assert (=> bs!1107185 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885008) (= lambda!215038 lambda!214981))))

(declare-fun bs!1107186 () Bool)

(assert (= bs!1107186 (and b!4720198 d!1502174)))

(assert (=> bs!1107186 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885246) (= lambda!215038 lambda!215021))))

(declare-fun bs!1107187 () Bool)

(assert (= bs!1107187 (and b!4720198 d!1502146)))

(assert (=> bs!1107187 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884963) (= lambda!215038 lambda!215012))))

(declare-fun bs!1107188 () Bool)

(assert (= bs!1107188 (and b!4720198 b!4719715)))

(assert (=> bs!1107188 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884963) (= lambda!215038 lambda!214974))))

(declare-fun bs!1107189 () Bool)

(assert (= bs!1107189 (and b!4720198 d!1501954)))

(assert (=> bs!1107189 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884817) (= lambda!215038 lambda!214951))))

(declare-fun bs!1107190 () Bool)

(assert (= bs!1107190 (and b!4720198 b!4719726)))

(assert (=> bs!1107190 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215038 lambda!214977))))

(declare-fun bs!1107191 () Bool)

(assert (= bs!1107191 (and b!4720198 b!4719652)))

(assert (=> bs!1107191 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884835) (= lambda!215038 lambda!214950))))

(declare-fun bs!1107192 () Bool)

(assert (= bs!1107192 (and b!4720198 b!4719990)))

(assert (=> bs!1107192 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885226) (= lambda!215038 lambda!215015))))

(declare-fun bs!1107193 () Bool)

(assert (= bs!1107193 (and b!4720198 b!4719653)))

(assert (=> bs!1107193 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215038 lambda!214948))))

(declare-fun bs!1107194 () Bool)

(assert (= bs!1107194 (and b!4720198 d!1502076)))

(assert (=> bs!1107194 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885102) (= lambda!215038 lambda!215002))))

(declare-fun bs!1107195 () Bool)

(assert (= bs!1107195 (and b!4720198 b!4719957)))

(assert (=> bs!1107195 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215038 lambda!215005))))

(declare-fun bs!1107196 () Bool)

(assert (= bs!1107196 (and b!4720198 b!4720019)))

(assert (=> bs!1107196 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215038 lambda!215018))))

(declare-fun bs!1107197 () Bool)

(assert (= bs!1107197 (and b!4720198 d!1501952)))

(assert (=> bs!1107197 (not (= lambda!215038 lambda!214879))))

(assert (=> bs!1107191 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215038 lambda!214949))))

(assert (=> bs!1107192 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215038 lambda!215014))))

(declare-fun bs!1107198 () Bool)

(assert (= bs!1107198 (and b!4720198 d!1502126)))

(assert (=> bs!1107198 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885172) (= lambda!215038 lambda!215007))))

(declare-fun bs!1107199 () Bool)

(assert (= bs!1107199 (and b!4720198 b!4719838)))

(assert (=> bs!1107199 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215038 lambda!214999))))

(declare-fun bs!1107200 () Bool)

(assert (= bs!1107200 (and b!4720198 b!4719796)))

(assert (=> bs!1107200 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215038 lambda!214989))))

(assert (=> bs!1107188 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215038 lambda!214973))))

(declare-fun bs!1107201 () Bool)

(assert (= bs!1107201 (and b!4720198 b!4720018)))

(assert (=> bs!1107201 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885264) (= lambda!215038 lambda!215020))))

(declare-fun bs!1107202 () Bool)

(assert (= bs!1107202 (and b!4720198 d!1502170)))

(assert (=> bs!1107202 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885008) (= lambda!215038 lambda!215017))))

(declare-fun bs!1107203 () Bool)

(assert (= bs!1107203 (and b!4720198 d!1502154)))

(assert (=> bs!1107203 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885208) (= lambda!215038 lambda!215016))))

(declare-fun bs!1107204 () Bool)

(assert (= bs!1107204 (and b!4720198 d!1502052)))

(assert (=> bs!1107204 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885076) (= lambda!215038 lambda!214992))))

(declare-fun bs!1107205 () Bool)

(assert (= bs!1107205 (and b!4720198 b!4719790)))

(assert (=> bs!1107205 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215038 lambda!214986))))

(declare-fun bs!1107206 () Bool)

(assert (= bs!1107206 (and b!4720198 d!1502050)))

(assert (=> bs!1107206 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885055) (= lambda!215038 lambda!214988))))

(assert (=> bs!1107184 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215038 lambda!215000))))

(declare-fun bs!1107207 () Bool)

(assert (= bs!1107207 (and b!4720198 b!4719958)))

(assert (=> bs!1107207 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215038 lambda!215004))))

(declare-fun bs!1107208 () Bool)

(assert (= bs!1107208 (and b!4720198 b!4719791)))

(assert (=> bs!1107208 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215038 lambda!214985))))

(declare-fun bs!1107209 () Bool)

(assert (= bs!1107209 (and b!4720198 b!4719991)))

(assert (=> bs!1107209 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215038 lambda!215013))))

(assert (=> bs!1107205 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885073) (= lambda!215038 lambda!214987))))

(declare-fun bs!1107210 () Bool)

(assert (= bs!1107210 (and b!4720198 d!1502034)))

(assert (=> bs!1107210 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884990) (= lambda!215038 lambda!214982))))

(assert (=> bs!1107185 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215038 lambda!214979))))

(declare-fun bs!1107211 () Bool)

(assert (= bs!1107211 (and b!4720198 d!1502226)))

(assert (=> bs!1107211 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215038 lambda!215030))))

(declare-fun bs!1107212 () Bool)

(assert (= bs!1107212 (and b!4720198 d!1502062)))

(assert (=> bs!1107212 (not (= lambda!215038 lambda!214995))))

(declare-fun bs!1107213 () Bool)

(assert (= bs!1107213 (and b!4720198 d!1502028)))

(assert (=> bs!1107213 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884945) (= lambda!215038 lambda!214975))))

(assert (=> bs!1107195 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885190) (= lambda!215038 lambda!215006))))

(declare-fun bs!1107214 () Bool)

(assert (= bs!1107214 (and b!4720198 b!4719795)))

(assert (=> bs!1107214 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885094) (= lambda!215038 lambda!214991))))

(assert (=> bs!1107201 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215038 lambda!215019))))

(assert (=> bs!1107214 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215038 lambda!214990))))

(assert (=> b!4720198 true))

(declare-fun bs!1107215 () Bool)

(declare-fun b!4720197 () Bool)

(assert (= bs!1107215 (and b!4720197 b!4719716)))

(declare-fun lambda!215040 () Int)

(assert (=> bs!1107215 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215040 lambda!214972))))

(declare-fun bs!1107216 () Bool)

(assert (= bs!1107216 (and b!4720197 b!4719837)))

(assert (=> bs!1107216 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885120) (= lambda!215040 lambda!215001))))

(declare-fun bs!1107217 () Bool)

(assert (= bs!1107217 (and b!4720197 b!4719725)))

(assert (=> bs!1107217 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885008) (= lambda!215040 lambda!214981))))

(declare-fun bs!1107218 () Bool)

(assert (= bs!1107218 (and b!4720197 d!1502174)))

(assert (=> bs!1107218 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885246) (= lambda!215040 lambda!215021))))

(declare-fun bs!1107219 () Bool)

(assert (= bs!1107219 (and b!4720197 d!1502146)))

(assert (=> bs!1107219 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884963) (= lambda!215040 lambda!215012))))

(declare-fun bs!1107220 () Bool)

(assert (= bs!1107220 (and b!4720197 b!4719715)))

(assert (=> bs!1107220 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884963) (= lambda!215040 lambda!214974))))

(declare-fun bs!1107221 () Bool)

(assert (= bs!1107221 (and b!4720197 d!1501954)))

(assert (=> bs!1107221 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884817) (= lambda!215040 lambda!214951))))

(declare-fun bs!1107222 () Bool)

(assert (= bs!1107222 (and b!4720197 b!4719726)))

(assert (=> bs!1107222 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215040 lambda!214977))))

(declare-fun bs!1107223 () Bool)

(assert (= bs!1107223 (and b!4720197 b!4719652)))

(assert (=> bs!1107223 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884835) (= lambda!215040 lambda!214950))))

(declare-fun bs!1107224 () Bool)

(assert (= bs!1107224 (and b!4720197 b!4719990)))

(assert (=> bs!1107224 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885226) (= lambda!215040 lambda!215015))))

(declare-fun bs!1107225 () Bool)

(assert (= bs!1107225 (and b!4720197 b!4719653)))

(assert (=> bs!1107225 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215040 lambda!214948))))

(declare-fun bs!1107226 () Bool)

(assert (= bs!1107226 (and b!4720197 d!1502076)))

(assert (=> bs!1107226 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885102) (= lambda!215040 lambda!215002))))

(declare-fun bs!1107227 () Bool)

(assert (= bs!1107227 (and b!4720197 b!4719957)))

(assert (=> bs!1107227 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215040 lambda!215005))))

(declare-fun bs!1107228 () Bool)

(assert (= bs!1107228 (and b!4720197 b!4720019)))

(assert (=> bs!1107228 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215040 lambda!215018))))

(declare-fun bs!1107229 () Bool)

(assert (= bs!1107229 (and b!4720197 d!1501952)))

(assert (=> bs!1107229 (not (= lambda!215040 lambda!214879))))

(assert (=> bs!1107223 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215040 lambda!214949))))

(assert (=> bs!1107224 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215040 lambda!215014))))

(declare-fun bs!1107230 () Bool)

(assert (= bs!1107230 (and b!4720197 d!1502126)))

(assert (=> bs!1107230 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885172) (= lambda!215040 lambda!215007))))

(declare-fun bs!1107231 () Bool)

(assert (= bs!1107231 (and b!4720197 b!4719838)))

(assert (=> bs!1107231 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215040 lambda!214999))))

(declare-fun bs!1107232 () Bool)

(assert (= bs!1107232 (and b!4720197 b!4719796)))

(assert (=> bs!1107232 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215040 lambda!214989))))

(assert (=> bs!1107220 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215040 lambda!214973))))

(declare-fun bs!1107234 () Bool)

(assert (= bs!1107234 (and b!4720197 b!4720018)))

(assert (=> bs!1107234 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885264) (= lambda!215040 lambda!215020))))

(declare-fun bs!1107235 () Bool)

(assert (= bs!1107235 (and b!4720197 d!1502170)))

(assert (=> bs!1107235 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885008) (= lambda!215040 lambda!215017))))

(declare-fun bs!1107237 () Bool)

(assert (= bs!1107237 (and b!4720197 d!1502154)))

(assert (=> bs!1107237 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885208) (= lambda!215040 lambda!215016))))

(declare-fun bs!1107238 () Bool)

(assert (= bs!1107238 (and b!4720197 d!1502052)))

(assert (=> bs!1107238 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885076) (= lambda!215040 lambda!214992))))

(declare-fun bs!1107240 () Bool)

(assert (= bs!1107240 (and b!4720197 b!4719790)))

(assert (=> bs!1107240 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215040 lambda!214986))))

(declare-fun bs!1107242 () Bool)

(assert (= bs!1107242 (and b!4720197 d!1502050)))

(assert (=> bs!1107242 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885055) (= lambda!215040 lambda!214988))))

(declare-fun bs!1107243 () Bool)

(assert (= bs!1107243 (and b!4720197 b!4720198)))

(assert (=> bs!1107243 (= lambda!215040 lambda!215038)))

(assert (=> bs!1107216 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215040 lambda!215000))))

(declare-fun bs!1107245 () Bool)

(assert (= bs!1107245 (and b!4720197 b!4719958)))

(assert (=> bs!1107245 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215040 lambda!215004))))

(declare-fun bs!1107247 () Bool)

(assert (= bs!1107247 (and b!4720197 b!4719791)))

(assert (=> bs!1107247 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215040 lambda!214985))))

(declare-fun bs!1107248 () Bool)

(assert (= bs!1107248 (and b!4720197 b!4719991)))

(assert (=> bs!1107248 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215040 lambda!215013))))

(assert (=> bs!1107240 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885073) (= lambda!215040 lambda!214987))))

(declare-fun bs!1107250 () Bool)

(assert (= bs!1107250 (and b!4720197 d!1502034)))

(assert (=> bs!1107250 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884990) (= lambda!215040 lambda!214982))))

(assert (=> bs!1107217 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215040 lambda!214979))))

(declare-fun bs!1107253 () Bool)

(assert (= bs!1107253 (and b!4720197 d!1502226)))

(assert (=> bs!1107253 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215040 lambda!215030))))

(declare-fun bs!1107254 () Bool)

(assert (= bs!1107254 (and b!4720197 d!1502062)))

(assert (=> bs!1107254 (not (= lambda!215040 lambda!214995))))

(declare-fun bs!1107255 () Bool)

(assert (= bs!1107255 (and b!4720197 d!1502028)))

(assert (=> bs!1107255 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884945) (= lambda!215040 lambda!214975))))

(assert (=> bs!1107227 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885190) (= lambda!215040 lambda!215006))))

(declare-fun bs!1107257 () Bool)

(assert (= bs!1107257 (and b!4720197 b!4719795)))

(assert (=> bs!1107257 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885094) (= lambda!215040 lambda!214991))))

(assert (=> bs!1107234 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215040 lambda!215019))))

(assert (=> bs!1107257 (= (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215040 lambda!214990))))

(assert (=> b!4720197 true))

(declare-fun lambda!215042 () Int)

(declare-fun lt!1885389 () ListMap!5269)

(assert (=> bs!1107215 (= (= lt!1885389 lt!1884696) (= lambda!215042 lambda!214972))))

(assert (=> bs!1107216 (= (= lt!1885389 lt!1885120) (= lambda!215042 lambda!215001))))

(assert (=> bs!1107217 (= (= lt!1885389 lt!1885008) (= lambda!215042 lambda!214981))))

(assert (=> bs!1107218 (= (= lt!1885389 lt!1885246) (= lambda!215042 lambda!215021))))

(assert (=> bs!1107219 (= (= lt!1885389 lt!1884963) (= lambda!215042 lambda!215012))))

(assert (=> bs!1107220 (= (= lt!1885389 lt!1884963) (= lambda!215042 lambda!214974))))

(assert (=> bs!1107221 (= (= lt!1885389 lt!1884817) (= lambda!215042 lambda!214951))))

(assert (=> bs!1107222 (= (= lt!1885389 lt!1884696) (= lambda!215042 lambda!214977))))

(assert (=> bs!1107223 (= (= lt!1885389 lt!1884835) (= lambda!215042 lambda!214950))))

(assert (=> bs!1107224 (= (= lt!1885389 lt!1885226) (= lambda!215042 lambda!215015))))

(assert (=> bs!1107225 (= (= lt!1885389 lt!1884696) (= lambda!215042 lambda!214948))))

(assert (=> bs!1107226 (= (= lt!1885389 lt!1885102) (= lambda!215042 lambda!215002))))

(assert (=> b!4720197 (= (= lt!1885389 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215042 lambda!215040))))

(assert (=> bs!1107227 (= (= lt!1885389 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215042 lambda!215005))))

(assert (=> bs!1107228 (= (= lt!1885389 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215042 lambda!215018))))

(assert (=> bs!1107229 (not (= lambda!215042 lambda!214879))))

(assert (=> bs!1107223 (= (= lt!1885389 lt!1884696) (= lambda!215042 lambda!214949))))

(assert (=> bs!1107224 (= (= lt!1885389 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215042 lambda!215014))))

(assert (=> bs!1107230 (= (= lt!1885389 lt!1885172) (= lambda!215042 lambda!215007))))

(assert (=> bs!1107231 (= (= lt!1885389 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215042 lambda!214999))))

(assert (=> bs!1107232 (= (= lt!1885389 lt!1884696) (= lambda!215042 lambda!214989))))

(assert (=> bs!1107220 (= (= lt!1885389 lt!1884696) (= lambda!215042 lambda!214973))))

(assert (=> bs!1107234 (= (= lt!1885389 lt!1885264) (= lambda!215042 lambda!215020))))

(assert (=> bs!1107235 (= (= lt!1885389 lt!1885008) (= lambda!215042 lambda!215017))))

(assert (=> bs!1107237 (= (= lt!1885389 lt!1885208) (= lambda!215042 lambda!215016))))

(assert (=> bs!1107238 (= (= lt!1885389 lt!1885076) (= lambda!215042 lambda!214992))))

(assert (=> bs!1107240 (= (= lt!1885389 lt!1884696) (= lambda!215042 lambda!214986))))

(assert (=> bs!1107242 (= (= lt!1885389 lt!1885055) (= lambda!215042 lambda!214988))))

(assert (=> bs!1107243 (= (= lt!1885389 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215042 lambda!215038))))

(assert (=> bs!1107216 (= (= lt!1885389 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215042 lambda!215000))))

(assert (=> bs!1107245 (= (= lt!1885389 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215042 lambda!215004))))

(assert (=> bs!1107247 (= (= lt!1885389 lt!1884696) (= lambda!215042 lambda!214985))))

(assert (=> bs!1107248 (= (= lt!1885389 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215042 lambda!215013))))

(assert (=> bs!1107240 (= (= lt!1885389 lt!1885073) (= lambda!215042 lambda!214987))))

(assert (=> bs!1107250 (= (= lt!1885389 lt!1884990) (= lambda!215042 lambda!214982))))

(assert (=> bs!1107217 (= (= lt!1885389 lt!1884696) (= lambda!215042 lambda!214979))))

(assert (=> bs!1107253 (= (= lt!1885389 lt!1884696) (= lambda!215042 lambda!215030))))

(assert (=> bs!1107254 (not (= lambda!215042 lambda!214995))))

(assert (=> bs!1107255 (= (= lt!1885389 lt!1884945) (= lambda!215042 lambda!214975))))

(assert (=> bs!1107227 (= (= lt!1885389 lt!1885190) (= lambda!215042 lambda!215006))))

(assert (=> bs!1107257 (= (= lt!1885389 lt!1885094) (= lambda!215042 lambda!214991))))

(assert (=> bs!1107234 (= (= lt!1885389 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215042 lambda!215019))))

(assert (=> bs!1107257 (= (= lt!1885389 lt!1884696) (= lambda!215042 lambda!214990))))

(assert (=> b!4720197 true))

(declare-fun bs!1107268 () Bool)

(declare-fun d!1502272 () Bool)

(assert (= bs!1107268 (and d!1502272 b!4719716)))

(declare-fun lt!1885371 () ListMap!5269)

(declare-fun lambda!215043 () Int)

(assert (=> bs!1107268 (= (= lt!1885371 lt!1884696) (= lambda!215043 lambda!214972))))

(declare-fun bs!1107269 () Bool)

(assert (= bs!1107269 (and d!1502272 b!4719837)))

(assert (=> bs!1107269 (= (= lt!1885371 lt!1885120) (= lambda!215043 lambda!215001))))

(declare-fun bs!1107270 () Bool)

(assert (= bs!1107270 (and d!1502272 b!4719725)))

(assert (=> bs!1107270 (= (= lt!1885371 lt!1885008) (= lambda!215043 lambda!214981))))

(declare-fun bs!1107271 () Bool)

(assert (= bs!1107271 (and d!1502272 d!1502174)))

(assert (=> bs!1107271 (= (= lt!1885371 lt!1885246) (= lambda!215043 lambda!215021))))

(declare-fun bs!1107272 () Bool)

(assert (= bs!1107272 (and d!1502272 d!1502146)))

(assert (=> bs!1107272 (= (= lt!1885371 lt!1884963) (= lambda!215043 lambda!215012))))

(declare-fun bs!1107273 () Bool)

(assert (= bs!1107273 (and d!1502272 b!4719715)))

(assert (=> bs!1107273 (= (= lt!1885371 lt!1884963) (= lambda!215043 lambda!214974))))

(declare-fun bs!1107274 () Bool)

(assert (= bs!1107274 (and d!1502272 d!1501954)))

(assert (=> bs!1107274 (= (= lt!1885371 lt!1884817) (= lambda!215043 lambda!214951))))

(declare-fun bs!1107275 () Bool)

(assert (= bs!1107275 (and d!1502272 b!4719726)))

(assert (=> bs!1107275 (= (= lt!1885371 lt!1884696) (= lambda!215043 lambda!214977))))

(declare-fun bs!1107276 () Bool)

(assert (= bs!1107276 (and d!1502272 b!4719652)))

(assert (=> bs!1107276 (= (= lt!1885371 lt!1884835) (= lambda!215043 lambda!214950))))

(declare-fun bs!1107277 () Bool)

(assert (= bs!1107277 (and d!1502272 b!4719990)))

(assert (=> bs!1107277 (= (= lt!1885371 lt!1885226) (= lambda!215043 lambda!215015))))

(declare-fun bs!1107278 () Bool)

(assert (= bs!1107278 (and d!1502272 b!4719653)))

(assert (=> bs!1107278 (= (= lt!1885371 lt!1884696) (= lambda!215043 lambda!214948))))

(declare-fun bs!1107279 () Bool)

(assert (= bs!1107279 (and d!1502272 d!1502076)))

(assert (=> bs!1107279 (= (= lt!1885371 lt!1885102) (= lambda!215043 lambda!215002))))

(declare-fun bs!1107280 () Bool)

(assert (= bs!1107280 (and d!1502272 b!4720197)))

(assert (=> bs!1107280 (= (= lt!1885371 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215043 lambda!215040))))

(declare-fun bs!1107281 () Bool)

(assert (= bs!1107281 (and d!1502272 b!4719957)))

(assert (=> bs!1107281 (= (= lt!1885371 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215043 lambda!215005))))

(declare-fun bs!1107282 () Bool)

(assert (= bs!1107282 (and d!1502272 b!4720019)))

(assert (=> bs!1107282 (= (= lt!1885371 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215043 lambda!215018))))

(declare-fun bs!1107283 () Bool)

(assert (= bs!1107283 (and d!1502272 d!1501952)))

(assert (=> bs!1107283 (not (= lambda!215043 lambda!214879))))

(assert (=> bs!1107276 (= (= lt!1885371 lt!1884696) (= lambda!215043 lambda!214949))))

(assert (=> bs!1107277 (= (= lt!1885371 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215043 lambda!215014))))

(declare-fun bs!1107284 () Bool)

(assert (= bs!1107284 (and d!1502272 d!1502126)))

(assert (=> bs!1107284 (= (= lt!1885371 lt!1885172) (= lambda!215043 lambda!215007))))

(declare-fun bs!1107285 () Bool)

(assert (= bs!1107285 (and d!1502272 b!4719838)))

(assert (=> bs!1107285 (= (= lt!1885371 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215043 lambda!214999))))

(declare-fun bs!1107286 () Bool)

(assert (= bs!1107286 (and d!1502272 b!4719796)))

(assert (=> bs!1107286 (= (= lt!1885371 lt!1884696) (= lambda!215043 lambda!214989))))

(assert (=> bs!1107273 (= (= lt!1885371 lt!1884696) (= lambda!215043 lambda!214973))))

(declare-fun bs!1107287 () Bool)

(assert (= bs!1107287 (and d!1502272 b!4720018)))

(assert (=> bs!1107287 (= (= lt!1885371 lt!1885264) (= lambda!215043 lambda!215020))))

(declare-fun bs!1107288 () Bool)

(assert (= bs!1107288 (and d!1502272 d!1502170)))

(assert (=> bs!1107288 (= (= lt!1885371 lt!1885008) (= lambda!215043 lambda!215017))))

(declare-fun bs!1107289 () Bool)

(assert (= bs!1107289 (and d!1502272 d!1502154)))

(assert (=> bs!1107289 (= (= lt!1885371 lt!1885208) (= lambda!215043 lambda!215016))))

(declare-fun bs!1107290 () Bool)

(assert (= bs!1107290 (and d!1502272 d!1502052)))

(assert (=> bs!1107290 (= (= lt!1885371 lt!1885076) (= lambda!215043 lambda!214992))))

(declare-fun bs!1107291 () Bool)

(assert (= bs!1107291 (and d!1502272 b!4719790)))

(assert (=> bs!1107291 (= (= lt!1885371 lt!1884696) (= lambda!215043 lambda!214986))))

(declare-fun bs!1107292 () Bool)

(assert (= bs!1107292 (and d!1502272 d!1502050)))

(assert (=> bs!1107292 (= (= lt!1885371 lt!1885055) (= lambda!215043 lambda!214988))))

(declare-fun bs!1107293 () Bool)

(assert (= bs!1107293 (and d!1502272 b!4720198)))

(assert (=> bs!1107293 (= (= lt!1885371 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215043 lambda!215038))))

(assert (=> bs!1107280 (= (= lt!1885371 lt!1885389) (= lambda!215043 lambda!215042))))

(assert (=> bs!1107269 (= (= lt!1885371 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215043 lambda!215000))))

(declare-fun bs!1107294 () Bool)

(assert (= bs!1107294 (and d!1502272 b!4719958)))

(assert (=> bs!1107294 (= (= lt!1885371 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215043 lambda!215004))))

(declare-fun bs!1107295 () Bool)

(assert (= bs!1107295 (and d!1502272 b!4719791)))

(assert (=> bs!1107295 (= (= lt!1885371 lt!1884696) (= lambda!215043 lambda!214985))))

(declare-fun bs!1107296 () Bool)

(assert (= bs!1107296 (and d!1502272 b!4719991)))

(assert (=> bs!1107296 (= (= lt!1885371 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215043 lambda!215013))))

(assert (=> bs!1107291 (= (= lt!1885371 lt!1885073) (= lambda!215043 lambda!214987))))

(declare-fun bs!1107297 () Bool)

(assert (= bs!1107297 (and d!1502272 d!1502034)))

(assert (=> bs!1107297 (= (= lt!1885371 lt!1884990) (= lambda!215043 lambda!214982))))

(assert (=> bs!1107270 (= (= lt!1885371 lt!1884696) (= lambda!215043 lambda!214979))))

(declare-fun bs!1107298 () Bool)

(assert (= bs!1107298 (and d!1502272 d!1502226)))

(assert (=> bs!1107298 (= (= lt!1885371 lt!1884696) (= lambda!215043 lambda!215030))))

(declare-fun bs!1107299 () Bool)

(assert (= bs!1107299 (and d!1502272 d!1502062)))

(assert (=> bs!1107299 (not (= lambda!215043 lambda!214995))))

(declare-fun bs!1107300 () Bool)

(assert (= bs!1107300 (and d!1502272 d!1502028)))

(assert (=> bs!1107300 (= (= lt!1885371 lt!1884945) (= lambda!215043 lambda!214975))))

(assert (=> bs!1107281 (= (= lt!1885371 lt!1885190) (= lambda!215043 lambda!215006))))

(declare-fun bs!1107301 () Bool)

(assert (= bs!1107301 (and d!1502272 b!4719795)))

(assert (=> bs!1107301 (= (= lt!1885371 lt!1885094) (= lambda!215043 lambda!214991))))

(assert (=> bs!1107287 (= (= lt!1885371 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215043 lambda!215019))))

(assert (=> bs!1107301 (= (= lt!1885371 lt!1884696) (= lambda!215043 lambda!214990))))

(assert (=> d!1502272 true))

(declare-fun e!2943749 () Bool)

(declare-fun b!4720196 () Bool)

(assert (=> b!4720196 (= e!2943749 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) lambda!215042))))

(declare-fun bm!330025 () Bool)

(declare-fun call!330030 () Unit!129252)

(assert (=> bm!330025 (= call!330030 (lemmaContainsAllItsOwnKeys!791 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun bm!330026 () Bool)

(declare-fun c!806105 () Bool)

(declare-fun call!330031 () Bool)

(assert (=> bm!330026 (= call!330031 (forall!11574 (ite c!806105 (toList!5906 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (ite c!806105 lambda!215038 lambda!215042)))))

(declare-fun e!2943751 () ListMap!5269)

(assert (=> b!4720197 (= e!2943751 lt!1885389)))

(declare-fun lt!1885370 () ListMap!5269)

(assert (=> b!4720197 (= lt!1885370 (+!2263 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (h!59153 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(assert (=> b!4720197 (= lt!1885389 (addToMapMapFromBucket!1438 (t!360192 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (+!2263 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (h!59153 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))))

(declare-fun lt!1885380 () Unit!129252)

(assert (=> b!4720197 (= lt!1885380 call!330030)))

(declare-fun call!330032 () Bool)

(assert (=> b!4720197 call!330032))

(declare-fun lt!1885372 () Unit!129252)

(assert (=> b!4720197 (= lt!1885372 lt!1885380)))

(assert (=> b!4720197 (forall!11574 (toList!5906 lt!1885370) lambda!215042)))

(declare-fun lt!1885387 () Unit!129252)

(declare-fun Unit!129494 () Unit!129252)

(assert (=> b!4720197 (= lt!1885387 Unit!129494)))

(assert (=> b!4720197 (forall!11574 (t!360192 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lambda!215042)))

(declare-fun lt!1885373 () Unit!129252)

(declare-fun Unit!129495 () Unit!129252)

(assert (=> b!4720197 (= lt!1885373 Unit!129495)))

(declare-fun lt!1885377 () Unit!129252)

(declare-fun Unit!129496 () Unit!129252)

(assert (=> b!4720197 (= lt!1885377 Unit!129496)))

(declare-fun lt!1885388 () Unit!129252)

(assert (=> b!4720197 (= lt!1885388 (forallContained!3629 (toList!5906 lt!1885370) lambda!215042 (h!59153 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(assert (=> b!4720197 (contains!16156 lt!1885370 (_1!30507 (h!59153 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun lt!1885381 () Unit!129252)

(declare-fun Unit!129497 () Unit!129252)

(assert (=> b!4720197 (= lt!1885381 Unit!129497)))

(assert (=> b!4720197 (contains!16156 lt!1885389 (_1!30507 (h!59153 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun lt!1885385 () Unit!129252)

(declare-fun Unit!129498 () Unit!129252)

(assert (=> b!4720197 (= lt!1885385 Unit!129498)))

(assert (=> b!4720197 call!330031))

(declare-fun lt!1885374 () Unit!129252)

(declare-fun Unit!129499 () Unit!129252)

(assert (=> b!4720197 (= lt!1885374 Unit!129499)))

(assert (=> b!4720197 (forall!11574 (toList!5906 lt!1885370) lambda!215042)))

(declare-fun lt!1885375 () Unit!129252)

(declare-fun Unit!129500 () Unit!129252)

(assert (=> b!4720197 (= lt!1885375 Unit!129500)))

(declare-fun lt!1885382 () Unit!129252)

(declare-fun Unit!129501 () Unit!129252)

(assert (=> b!4720197 (= lt!1885382 Unit!129501)))

(declare-fun lt!1885378 () Unit!129252)

(assert (=> b!4720197 (= lt!1885378 (addForallContainsKeyThenBeforeAdding!790 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885389 (_1!30507 (h!59153 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (_2!30507 (h!59153 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))))

(assert (=> b!4720197 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) lambda!215042)))

(declare-fun lt!1885383 () Unit!129252)

(assert (=> b!4720197 (= lt!1885383 lt!1885378)))

(assert (=> b!4720197 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) lambda!215042)))

(declare-fun lt!1885384 () Unit!129252)

(declare-fun Unit!129502 () Unit!129252)

(assert (=> b!4720197 (= lt!1885384 Unit!129502)))

(declare-fun res!1996604 () Bool)

(assert (=> b!4720197 (= res!1996604 (forall!11574 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))) lambda!215042))))

(assert (=> b!4720197 (=> (not res!1996604) (not e!2943749))))

(assert (=> b!4720197 e!2943749))

(declare-fun lt!1885376 () Unit!129252)

(declare-fun Unit!129503 () Unit!129252)

(assert (=> b!4720197 (= lt!1885376 Unit!129503)))

(assert (=> b!4720198 (= e!2943751 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(declare-fun lt!1885369 () Unit!129252)

(assert (=> b!4720198 (= lt!1885369 call!330030)))

(assert (=> b!4720198 call!330032))

(declare-fun lt!1885386 () Unit!129252)

(assert (=> b!4720198 (= lt!1885386 lt!1885369)))

(assert (=> b!4720198 call!330031))

(declare-fun lt!1885379 () Unit!129252)

(declare-fun Unit!129504 () Unit!129252)

(assert (=> b!4720198 (= lt!1885379 Unit!129504)))

(declare-fun e!2943750 () Bool)

(assert (=> d!1502272 e!2943750))

(declare-fun res!1996605 () Bool)

(assert (=> d!1502272 (=> (not res!1996605) (not e!2943750))))

(assert (=> d!1502272 (= res!1996605 (forall!11574 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))) lambda!215043))))

(assert (=> d!1502272 (= lt!1885371 e!2943751)))

(assert (=> d!1502272 (= c!806105 ((_ is Nil!52812) (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(assert (=> d!1502272 (noDuplicateKeys!2008 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))

(assert (=> d!1502272 (= (addToMapMapFromBucket!1438 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) lt!1885371)))

(declare-fun b!4720199 () Bool)

(assert (=> b!4720199 (= e!2943750 (invariantList!1505 (toList!5906 lt!1885371)))))

(declare-fun bm!330027 () Bool)

(assert (=> bm!330027 (= call!330032 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (ite c!806105 lambda!215038 lambda!215040)))))

(declare-fun b!4720200 () Bool)

(declare-fun res!1996606 () Bool)

(assert (=> b!4720200 (=> (not res!1996606) (not e!2943750))))

(assert (=> b!4720200 (= res!1996606 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) lambda!215043))))

(assert (= (and d!1502272 c!806105) b!4720198))

(assert (= (and d!1502272 (not c!806105)) b!4720197))

(assert (= (and b!4720197 res!1996604) b!4720196))

(assert (= (or b!4720198 b!4720197) bm!330025))

(assert (= (or b!4720198 b!4720197) bm!330026))

(assert (= (or b!4720198 b!4720197) bm!330027))

(assert (= (and d!1502272 res!1996605) b!4720200))

(assert (= (and b!4720200 res!1996606) b!4720199))

(declare-fun m!5653005 () Bool)

(assert (=> b!4720199 m!5653005))

(declare-fun m!5653007 () Bool)

(assert (=> bm!330026 m!5653007))

(assert (=> bm!330025 m!5651733))

(declare-fun m!5653009 () Bool)

(assert (=> bm!330025 m!5653009))

(declare-fun m!5653011 () Bool)

(assert (=> b!4720200 m!5653011))

(declare-fun m!5653013 () Bool)

(assert (=> b!4720197 m!5653013))

(declare-fun m!5653015 () Bool)

(assert (=> b!4720197 m!5653015))

(declare-fun m!5653017 () Bool)

(assert (=> b!4720197 m!5653017))

(declare-fun m!5653019 () Bool)

(assert (=> b!4720197 m!5653019))

(assert (=> b!4720197 m!5651733))

(declare-fun m!5653021 () Bool)

(assert (=> b!4720197 m!5653021))

(declare-fun m!5653023 () Bool)

(assert (=> b!4720197 m!5653023))

(declare-fun m!5653025 () Bool)

(assert (=> b!4720197 m!5653025))

(declare-fun m!5653027 () Bool)

(assert (=> b!4720197 m!5653027))

(assert (=> b!4720197 m!5653017))

(declare-fun m!5653029 () Bool)

(assert (=> b!4720197 m!5653029))

(declare-fun m!5653031 () Bool)

(assert (=> b!4720197 m!5653031))

(assert (=> b!4720197 m!5653023))

(assert (=> b!4720197 m!5651733))

(assert (=> b!4720197 m!5653025))

(declare-fun m!5653033 () Bool)

(assert (=> bm!330027 m!5653033))

(declare-fun m!5653035 () Bool)

(assert (=> d!1502272 m!5653035))

(assert (=> d!1502272 m!5652821))

(assert (=> b!4720196 m!5653023))

(assert (=> b!4719652 d!1502272))

(declare-fun d!1502286 () Bool)

(assert (=> d!1502286 (dynLambda!21811 lambda!214950 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))

(declare-fun lt!1885400 () Unit!129252)

(assert (=> d!1502286 (= lt!1885400 (choose!33292 (toList!5906 lt!1884816) lambda!214950 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(declare-fun e!2943762 () Bool)

(assert (=> d!1502286 e!2943762))

(declare-fun res!1996614 () Bool)

(assert (=> d!1502286 (=> (not res!1996614) (not e!2943762))))

(assert (=> d!1502286 (= res!1996614 (forall!11574 (toList!5906 lt!1884816) lambda!214950))))

(assert (=> d!1502286 (= (forallContained!3629 (toList!5906 lt!1884816) lambda!214950 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885400)))

(declare-fun b!4720214 () Bool)

(assert (=> b!4720214 (= e!2943762 (contains!16158 (toList!5906 lt!1884816) (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(assert (= (and d!1502286 res!1996614) b!4720214))

(declare-fun b_lambda!177979 () Bool)

(assert (=> (not b_lambda!177979) (not d!1502286)))

(declare-fun m!5653037 () Bool)

(assert (=> d!1502286 m!5653037))

(declare-fun m!5653039 () Bool)

(assert (=> d!1502286 m!5653039))

(assert (=> d!1502286 m!5651725))

(declare-fun m!5653041 () Bool)

(assert (=> b!4720214 m!5653041))

(assert (=> b!4719652 d!1502286))

(declare-fun d!1502288 () Bool)

(declare-fun e!2943763 () Bool)

(assert (=> d!1502288 e!2943763))

(declare-fun res!1996616 () Bool)

(assert (=> d!1502288 (=> (not res!1996616) (not e!2943763))))

(declare-fun lt!1885404 () ListMap!5269)

(assert (=> d!1502288 (= res!1996616 (contains!16156 lt!1885404 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun lt!1885402 () List!52936)

(assert (=> d!1502288 (= lt!1885404 (ListMap!5270 lt!1885402))))

(declare-fun lt!1885403 () Unit!129252)

(declare-fun lt!1885405 () Unit!129252)

(assert (=> d!1502288 (= lt!1885403 lt!1885405)))

(assert (=> d!1502288 (= (getValueByKey!1949 lt!1885402 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (Some!12352 (_2!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(assert (=> d!1502288 (= lt!1885405 (lemmaContainsTupThenGetReturnValue!1079 lt!1885402 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (_2!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(assert (=> d!1502288 (= lt!1885402 (insertNoDuplicatedKeys!587 (toList!5906 lt!1884696) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (_2!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(assert (=> d!1502288 (= (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) lt!1885404)))

(declare-fun b!4720215 () Bool)

(declare-fun res!1996615 () Bool)

(assert (=> b!4720215 (=> (not res!1996615) (not e!2943763))))

(assert (=> b!4720215 (= res!1996615 (= (getValueByKey!1949 (toList!5906 lt!1885404) (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (Some!12352 (_2!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))))

(declare-fun b!4720216 () Bool)

(assert (=> b!4720216 (= e!2943763 (contains!16158 (toList!5906 lt!1885404) (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(assert (= (and d!1502288 res!1996616) b!4720215))

(assert (= (and b!4720215 res!1996615) b!4720216))

(declare-fun m!5653047 () Bool)

(assert (=> d!1502288 m!5653047))

(declare-fun m!5653049 () Bool)

(assert (=> d!1502288 m!5653049))

(declare-fun m!5653051 () Bool)

(assert (=> d!1502288 m!5653051))

(declare-fun m!5653053 () Bool)

(assert (=> d!1502288 m!5653053))

(declare-fun m!5653055 () Bool)

(assert (=> b!4720215 m!5653055))

(declare-fun m!5653057 () Bool)

(assert (=> b!4720216 m!5653057))

(assert (=> b!4719652 d!1502288))

(declare-fun d!1502292 () Bool)

(declare-fun res!1996617 () Bool)

(declare-fun e!2943764 () Bool)

(assert (=> d!1502292 (=> res!1996617 e!2943764)))

(assert (=> d!1502292 (= res!1996617 ((_ is Nil!52812) (_2!30508 (h!59154 (toList!5905 lm!2023)))))))

(assert (=> d!1502292 (= (forall!11574 (_2!30508 (h!59154 (toList!5905 lm!2023))) lambda!214950) e!2943764)))

(declare-fun b!4720217 () Bool)

(declare-fun e!2943765 () Bool)

(assert (=> b!4720217 (= e!2943764 e!2943765)))

(declare-fun res!1996618 () Bool)

(assert (=> b!4720217 (=> (not res!1996618) (not e!2943765))))

(assert (=> b!4720217 (= res!1996618 (dynLambda!21811 lambda!214950 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(declare-fun b!4720218 () Bool)

(assert (=> b!4720218 (= e!2943765 (forall!11574 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))) lambda!214950))))

(assert (= (and d!1502292 (not res!1996617)) b!4720217))

(assert (= (and b!4720217 res!1996618) b!4720218))

(declare-fun b_lambda!177981 () Bool)

(assert (=> (not b_lambda!177981) (not b!4720217)))

(assert (=> b!4720217 m!5653037))

(assert (=> b!4720218 m!5651739))

(assert (=> b!4719652 d!1502292))

(declare-fun d!1502296 () Bool)

(declare-fun res!1996619 () Bool)

(declare-fun e!2943766 () Bool)

(assert (=> d!1502296 (=> res!1996619 e!2943766)))

(assert (=> d!1502296 (= res!1996619 ((_ is Nil!52812) (toList!5906 lt!1884816)))))

(assert (=> d!1502296 (= (forall!11574 (toList!5906 lt!1884816) lambda!214950) e!2943766)))

(declare-fun b!4720219 () Bool)

(declare-fun e!2943767 () Bool)

(assert (=> b!4720219 (= e!2943766 e!2943767)))

(declare-fun res!1996620 () Bool)

(assert (=> b!4720219 (=> (not res!1996620) (not e!2943767))))

(assert (=> b!4720219 (= res!1996620 (dynLambda!21811 lambda!214950 (h!59153 (toList!5906 lt!1884816))))))

(declare-fun b!4720220 () Bool)

(assert (=> b!4720220 (= e!2943767 (forall!11574 (t!360192 (toList!5906 lt!1884816)) lambda!214950))))

(assert (= (and d!1502296 (not res!1996619)) b!4720219))

(assert (= (and b!4720219 res!1996620) b!4720220))

(declare-fun b_lambda!177983 () Bool)

(assert (=> (not b_lambda!177983) (not b!4720219)))

(declare-fun m!5653061 () Bool)

(assert (=> b!4720219 m!5653061))

(declare-fun m!5653063 () Bool)

(assert (=> b!4720220 m!5653063))

(assert (=> b!4719652 d!1502296))

(declare-fun bs!1107306 () Bool)

(declare-fun d!1502298 () Bool)

(assert (= bs!1107306 (and d!1502298 b!4719716)))

(declare-fun lambda!215044 () Int)

(assert (=> bs!1107306 (= (= lt!1884835 lt!1884696) (= lambda!215044 lambda!214972))))

(declare-fun bs!1107307 () Bool)

(assert (= bs!1107307 (and d!1502298 b!4719837)))

(assert (=> bs!1107307 (= (= lt!1884835 lt!1885120) (= lambda!215044 lambda!215001))))

(declare-fun bs!1107308 () Bool)

(assert (= bs!1107308 (and d!1502298 b!4719725)))

(assert (=> bs!1107308 (= (= lt!1884835 lt!1885008) (= lambda!215044 lambda!214981))))

(declare-fun bs!1107309 () Bool)

(assert (= bs!1107309 (and d!1502298 d!1502174)))

(assert (=> bs!1107309 (= (= lt!1884835 lt!1885246) (= lambda!215044 lambda!215021))))

(declare-fun bs!1107310 () Bool)

(assert (= bs!1107310 (and d!1502298 d!1502146)))

(assert (=> bs!1107310 (= (= lt!1884835 lt!1884963) (= lambda!215044 lambda!215012))))

(declare-fun bs!1107311 () Bool)

(assert (= bs!1107311 (and d!1502298 b!4719715)))

(assert (=> bs!1107311 (= (= lt!1884835 lt!1884963) (= lambda!215044 lambda!214974))))

(declare-fun bs!1107312 () Bool)

(assert (= bs!1107312 (and d!1502298 d!1501954)))

(assert (=> bs!1107312 (= (= lt!1884835 lt!1884817) (= lambda!215044 lambda!214951))))

(declare-fun bs!1107313 () Bool)

(assert (= bs!1107313 (and d!1502298 b!4719726)))

(assert (=> bs!1107313 (= (= lt!1884835 lt!1884696) (= lambda!215044 lambda!214977))))

(declare-fun bs!1107314 () Bool)

(assert (= bs!1107314 (and d!1502298 b!4719652)))

(assert (=> bs!1107314 (= lambda!215044 lambda!214950)))

(declare-fun bs!1107315 () Bool)

(assert (= bs!1107315 (and d!1502298 b!4719990)))

(assert (=> bs!1107315 (= (= lt!1884835 lt!1885226) (= lambda!215044 lambda!215015))))

(declare-fun bs!1107316 () Bool)

(assert (= bs!1107316 (and d!1502298 b!4719653)))

(assert (=> bs!1107316 (= (= lt!1884835 lt!1884696) (= lambda!215044 lambda!214948))))

(declare-fun bs!1107317 () Bool)

(assert (= bs!1107317 (and d!1502298 d!1502076)))

(assert (=> bs!1107317 (= (= lt!1884835 lt!1885102) (= lambda!215044 lambda!215002))))

(declare-fun bs!1107318 () Bool)

(assert (= bs!1107318 (and d!1502298 b!4720197)))

(assert (=> bs!1107318 (= (= lt!1884835 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215044 lambda!215040))))

(declare-fun bs!1107319 () Bool)

(assert (= bs!1107319 (and d!1502298 b!4719957)))

(assert (=> bs!1107319 (= (= lt!1884835 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215044 lambda!215005))))

(declare-fun bs!1107320 () Bool)

(assert (= bs!1107320 (and d!1502298 b!4720019)))

(assert (=> bs!1107320 (= (= lt!1884835 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215044 lambda!215018))))

(declare-fun bs!1107321 () Bool)

(assert (= bs!1107321 (and d!1502298 d!1501952)))

(assert (=> bs!1107321 (not (= lambda!215044 lambda!214879))))

(assert (=> bs!1107314 (= (= lt!1884835 lt!1884696) (= lambda!215044 lambda!214949))))

(assert (=> bs!1107315 (= (= lt!1884835 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215044 lambda!215014))))

(declare-fun bs!1107322 () Bool)

(assert (= bs!1107322 (and d!1502298 d!1502126)))

(assert (=> bs!1107322 (= (= lt!1884835 lt!1885172) (= lambda!215044 lambda!215007))))

(declare-fun bs!1107323 () Bool)

(assert (= bs!1107323 (and d!1502298 b!4719838)))

(assert (=> bs!1107323 (= (= lt!1884835 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215044 lambda!214999))))

(declare-fun bs!1107324 () Bool)

(assert (= bs!1107324 (and d!1502298 b!4719796)))

(assert (=> bs!1107324 (= (= lt!1884835 lt!1884696) (= lambda!215044 lambda!214989))))

(assert (=> bs!1107311 (= (= lt!1884835 lt!1884696) (= lambda!215044 lambda!214973))))

(declare-fun bs!1107325 () Bool)

(assert (= bs!1107325 (and d!1502298 b!4720018)))

(assert (=> bs!1107325 (= (= lt!1884835 lt!1885264) (= lambda!215044 lambda!215020))))

(declare-fun bs!1107326 () Bool)

(assert (= bs!1107326 (and d!1502298 d!1502170)))

(assert (=> bs!1107326 (= (= lt!1884835 lt!1885008) (= lambda!215044 lambda!215017))))

(declare-fun bs!1107327 () Bool)

(assert (= bs!1107327 (and d!1502298 d!1502154)))

(assert (=> bs!1107327 (= (= lt!1884835 lt!1885208) (= lambda!215044 lambda!215016))))

(declare-fun bs!1107328 () Bool)

(assert (= bs!1107328 (and d!1502298 d!1502052)))

(assert (=> bs!1107328 (= (= lt!1884835 lt!1885076) (= lambda!215044 lambda!214992))))

(declare-fun bs!1107329 () Bool)

(assert (= bs!1107329 (and d!1502298 b!4719790)))

(assert (=> bs!1107329 (= (= lt!1884835 lt!1884696) (= lambda!215044 lambda!214986))))

(declare-fun bs!1107330 () Bool)

(assert (= bs!1107330 (and d!1502298 d!1502050)))

(assert (=> bs!1107330 (= (= lt!1884835 lt!1885055) (= lambda!215044 lambda!214988))))

(declare-fun bs!1107331 () Bool)

(assert (= bs!1107331 (and d!1502298 b!4720198)))

(assert (=> bs!1107331 (= (= lt!1884835 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215044 lambda!215038))))

(assert (=> bs!1107318 (= (= lt!1884835 lt!1885389) (= lambda!215044 lambda!215042))))

(assert (=> bs!1107307 (= (= lt!1884835 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215044 lambda!215000))))

(declare-fun bs!1107332 () Bool)

(assert (= bs!1107332 (and d!1502298 b!4719958)))

(assert (=> bs!1107332 (= (= lt!1884835 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215044 lambda!215004))))

(declare-fun bs!1107333 () Bool)

(assert (= bs!1107333 (and d!1502298 b!4719791)))

(assert (=> bs!1107333 (= (= lt!1884835 lt!1884696) (= lambda!215044 lambda!214985))))

(declare-fun bs!1107334 () Bool)

(assert (= bs!1107334 (and d!1502298 b!4719991)))

(assert (=> bs!1107334 (= (= lt!1884835 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215044 lambda!215013))))

(assert (=> bs!1107329 (= (= lt!1884835 lt!1885073) (= lambda!215044 lambda!214987))))

(declare-fun bs!1107335 () Bool)

(assert (= bs!1107335 (and d!1502298 d!1502034)))

(assert (=> bs!1107335 (= (= lt!1884835 lt!1884990) (= lambda!215044 lambda!214982))))

(assert (=> bs!1107308 (= (= lt!1884835 lt!1884696) (= lambda!215044 lambda!214979))))

(declare-fun bs!1107336 () Bool)

(assert (= bs!1107336 (and d!1502298 d!1502226)))

(assert (=> bs!1107336 (= (= lt!1884835 lt!1884696) (= lambda!215044 lambda!215030))))

(declare-fun bs!1107337 () Bool)

(assert (= bs!1107337 (and d!1502298 d!1502062)))

(assert (=> bs!1107337 (not (= lambda!215044 lambda!214995))))

(declare-fun bs!1107338 () Bool)

(assert (= bs!1107338 (and d!1502298 d!1502028)))

(assert (=> bs!1107338 (= (= lt!1884835 lt!1884945) (= lambda!215044 lambda!214975))))

(assert (=> bs!1107319 (= (= lt!1884835 lt!1885190) (= lambda!215044 lambda!215006))))

(declare-fun bs!1107339 () Bool)

(assert (= bs!1107339 (and d!1502298 b!4719795)))

(assert (=> bs!1107339 (= (= lt!1884835 lt!1885094) (= lambda!215044 lambda!214991))))

(assert (=> bs!1107325 (= (= lt!1884835 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215044 lambda!215019))))

(declare-fun bs!1107340 () Bool)

(assert (= bs!1107340 (and d!1502298 d!1502272)))

(assert (=> bs!1107340 (= (= lt!1884835 lt!1885371) (= lambda!215044 lambda!215043))))

(assert (=> bs!1107339 (= (= lt!1884835 lt!1884696) (= lambda!215044 lambda!214990))))

(assert (=> d!1502298 true))

(assert (=> d!1502298 (forall!11574 (toList!5906 lt!1884696) lambda!215044)))

(declare-fun lt!1885406 () Unit!129252)

(assert (=> d!1502298 (= lt!1885406 (choose!33288 lt!1884696 lt!1884835 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (_2!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(assert (=> d!1502298 (forall!11574 (toList!5906 (+!2263 lt!1884696 (tuple2!54427 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (_2!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))) lambda!215044)))

(assert (=> d!1502298 (= (addForallContainsKeyThenBeforeAdding!790 lt!1884696 lt!1884835 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (_2!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) lt!1885406)))

(declare-fun bs!1107341 () Bool)

(assert (= bs!1107341 d!1502298))

(declare-fun m!5653067 () Bool)

(assert (=> bs!1107341 m!5653067))

(declare-fun m!5653069 () Bool)

(assert (=> bs!1107341 m!5653069))

(declare-fun m!5653071 () Bool)

(assert (=> bs!1107341 m!5653071))

(declare-fun m!5653073 () Bool)

(assert (=> bs!1107341 m!5653073))

(assert (=> b!4719652 d!1502298))

(assert (=> bm!329952 d!1502226))

(assert (=> d!1502046 d!1502260))

(assert (=> b!4719790 d!1502112))

(declare-fun d!1502302 () Bool)

(declare-fun res!1996621 () Bool)

(declare-fun e!2943774 () Bool)

(assert (=> d!1502302 (=> res!1996621 e!2943774)))

(assert (=> d!1502302 (= res!1996621 ((_ is Nil!52812) (toList!5906 lt!1885054)))))

(assert (=> d!1502302 (= (forall!11574 (toList!5906 lt!1885054) lambda!214987) e!2943774)))

(declare-fun b!4720233 () Bool)

(declare-fun e!2943775 () Bool)

(assert (=> b!4720233 (= e!2943774 e!2943775)))

(declare-fun res!1996622 () Bool)

(assert (=> b!4720233 (=> (not res!1996622) (not e!2943775))))

(assert (=> b!4720233 (= res!1996622 (dynLambda!21811 lambda!214987 (h!59153 (toList!5906 lt!1885054))))))

(declare-fun b!4720234 () Bool)

(assert (=> b!4720234 (= e!2943775 (forall!11574 (t!360192 (toList!5906 lt!1885054)) lambda!214987))))

(assert (= (and d!1502302 (not res!1996621)) b!4720233))

(assert (= (and b!4720233 res!1996622) b!4720234))

(declare-fun b_lambda!177985 () Bool)

(assert (=> (not b_lambda!177985) (not b!4720233)))

(declare-fun m!5653075 () Bool)

(assert (=> b!4720233 m!5653075))

(declare-fun m!5653077 () Bool)

(assert (=> b!4720234 m!5653077))

(assert (=> b!4719790 d!1502302))

(declare-fun d!1502304 () Bool)

(declare-fun e!2943781 () Bool)

(assert (=> d!1502304 e!2943781))

(declare-fun res!1996623 () Bool)

(assert (=> d!1502304 (=> res!1996623 e!2943781)))

(declare-fun e!2943778 () Bool)

(assert (=> d!1502304 (= res!1996623 e!2943778)))

(declare-fun res!1996625 () Bool)

(assert (=> d!1502304 (=> (not res!1996625) (not e!2943778))))

(declare-fun lt!1885411 () Bool)

(assert (=> d!1502304 (= res!1996625 (not lt!1885411))))

(declare-fun lt!1885412 () Bool)

(assert (=> d!1502304 (= lt!1885411 lt!1885412)))

(declare-fun lt!1885409 () Unit!129252)

(declare-fun e!2943780 () Unit!129252)

(assert (=> d!1502304 (= lt!1885409 e!2943780)))

(declare-fun c!806116 () Bool)

(assert (=> d!1502304 (= c!806116 lt!1885412)))

(assert (=> d!1502304 (= lt!1885412 (containsKey!3359 (toList!5906 lt!1885073) (_1!30507 (h!59153 newBucket!218))))))

(assert (=> d!1502304 (= (contains!16156 lt!1885073 (_1!30507 (h!59153 newBucket!218))) lt!1885411)))

(declare-fun b!4720235 () Bool)

(assert (=> b!4720235 false))

(declare-fun lt!1885410 () Unit!129252)

(declare-fun lt!1885414 () Unit!129252)

(assert (=> b!4720235 (= lt!1885410 lt!1885414)))

(assert (=> b!4720235 (containsKey!3359 (toList!5906 lt!1885073) (_1!30507 (h!59153 newBucket!218)))))

(assert (=> b!4720235 (= lt!1885414 (lemmaInGetKeysListThenContainsKey!944 (toList!5906 lt!1885073) (_1!30507 (h!59153 newBucket!218))))))

(declare-fun e!2943776 () Unit!129252)

(declare-fun Unit!129507 () Unit!129252)

(assert (=> b!4720235 (= e!2943776 Unit!129507)))

(declare-fun b!4720236 () Bool)

(declare-fun Unit!129508 () Unit!129252)

(assert (=> b!4720236 (= e!2943776 Unit!129508)))

(declare-fun b!4720237 () Bool)

(declare-fun e!2943777 () Bool)

(assert (=> b!4720237 (= e!2943781 e!2943777)))

(declare-fun res!1996624 () Bool)

(assert (=> b!4720237 (=> (not res!1996624) (not e!2943777))))

(assert (=> b!4720237 (= res!1996624 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1885073) (_1!30507 (h!59153 newBucket!218)))))))

(declare-fun b!4720238 () Bool)

(assert (=> b!4720238 (= e!2943780 e!2943776)))

(declare-fun c!806115 () Bool)

(declare-fun call!330034 () Bool)

(assert (=> b!4720238 (= c!806115 call!330034)))

(declare-fun b!4720239 () Bool)

(declare-fun e!2943779 () List!52939)

(assert (=> b!4720239 (= e!2943779 (keys!18962 lt!1885073))))

(declare-fun b!4720240 () Bool)

(declare-fun lt!1885413 () Unit!129252)

(assert (=> b!4720240 (= e!2943780 lt!1885413)))

(declare-fun lt!1885415 () Unit!129252)

(assert (=> b!4720240 (= lt!1885415 (lemmaContainsKeyImpliesGetValueByKeyDefined!1840 (toList!5906 lt!1885073) (_1!30507 (h!59153 newBucket!218))))))

(assert (=> b!4720240 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1885073) (_1!30507 (h!59153 newBucket!218))))))

(declare-fun lt!1885416 () Unit!129252)

(assert (=> b!4720240 (= lt!1885416 lt!1885415)))

(assert (=> b!4720240 (= lt!1885413 (lemmaInListThenGetKeysListContains!940 (toList!5906 lt!1885073) (_1!30507 (h!59153 newBucket!218))))))

(assert (=> b!4720240 call!330034))

(declare-fun b!4720241 () Bool)

(assert (=> b!4720241 (= e!2943778 (not (contains!16159 (keys!18962 lt!1885073) (_1!30507 (h!59153 newBucket!218)))))))

(declare-fun b!4720242 () Bool)

(assert (=> b!4720242 (= e!2943779 (getKeysList!945 (toList!5906 lt!1885073)))))

(declare-fun b!4720243 () Bool)

(assert (=> b!4720243 (= e!2943777 (contains!16159 (keys!18962 lt!1885073) (_1!30507 (h!59153 newBucket!218))))))

(declare-fun bm!330029 () Bool)

(assert (=> bm!330029 (= call!330034 (contains!16159 e!2943779 (_1!30507 (h!59153 newBucket!218))))))

(declare-fun c!806117 () Bool)

(assert (=> bm!330029 (= c!806117 c!806116)))

(assert (= (and d!1502304 c!806116) b!4720240))

(assert (= (and d!1502304 (not c!806116)) b!4720238))

(assert (= (and b!4720238 c!806115) b!4720235))

(assert (= (and b!4720238 (not c!806115)) b!4720236))

(assert (= (or b!4720240 b!4720238) bm!330029))

(assert (= (and bm!330029 c!806117) b!4720242))

(assert (= (and bm!330029 (not c!806117)) b!4720239))

(assert (= (and d!1502304 res!1996625) b!4720241))

(assert (= (and d!1502304 (not res!1996623)) b!4720237))

(assert (= (and b!4720237 res!1996624) b!4720243))

(declare-fun m!5653083 () Bool)

(assert (=> b!4720239 m!5653083))

(declare-fun m!5653085 () Bool)

(assert (=> b!4720240 m!5653085))

(declare-fun m!5653087 () Bool)

(assert (=> b!4720240 m!5653087))

(assert (=> b!4720240 m!5653087))

(declare-fun m!5653089 () Bool)

(assert (=> b!4720240 m!5653089))

(declare-fun m!5653091 () Bool)

(assert (=> b!4720240 m!5653091))

(declare-fun m!5653093 () Bool)

(assert (=> b!4720242 m!5653093))

(assert (=> b!4720237 m!5653087))

(assert (=> b!4720237 m!5653087))

(assert (=> b!4720237 m!5653089))

(assert (=> b!4720243 m!5653083))

(assert (=> b!4720243 m!5653083))

(declare-fun m!5653095 () Bool)

(assert (=> b!4720243 m!5653095))

(declare-fun m!5653097 () Bool)

(assert (=> bm!330029 m!5653097))

(assert (=> b!4720241 m!5653083))

(assert (=> b!4720241 m!5653083))

(assert (=> b!4720241 m!5653095))

(declare-fun m!5653099 () Bool)

(assert (=> d!1502304 m!5653099))

(assert (=> b!4720235 m!5653099))

(declare-fun m!5653101 () Bool)

(assert (=> b!4720235 m!5653101))

(assert (=> b!4719790 d!1502304))

(declare-fun bs!1107343 () Bool)

(declare-fun b!4720255 () Bool)

(assert (= bs!1107343 (and b!4720255 b!4719716)))

(declare-fun lambda!215045 () Int)

(assert (=> bs!1107343 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215045 lambda!214972))))

(declare-fun bs!1107344 () Bool)

(assert (= bs!1107344 (and b!4720255 b!4719837)))

(assert (=> bs!1107344 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885120) (= lambda!215045 lambda!215001))))

(declare-fun bs!1107345 () Bool)

(assert (= bs!1107345 (and b!4720255 b!4719725)))

(assert (=> bs!1107345 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885008) (= lambda!215045 lambda!214981))))

(declare-fun bs!1107346 () Bool)

(assert (= bs!1107346 (and b!4720255 d!1502146)))

(assert (=> bs!1107346 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884963) (= lambda!215045 lambda!215012))))

(declare-fun bs!1107347 () Bool)

(assert (= bs!1107347 (and b!4720255 b!4719715)))

(assert (=> bs!1107347 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884963) (= lambda!215045 lambda!214974))))

(declare-fun bs!1107348 () Bool)

(assert (= bs!1107348 (and b!4720255 d!1501954)))

(assert (=> bs!1107348 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884817) (= lambda!215045 lambda!214951))))

(declare-fun bs!1107349 () Bool)

(assert (= bs!1107349 (and b!4720255 b!4719726)))

(assert (=> bs!1107349 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215045 lambda!214977))))

(declare-fun bs!1107350 () Bool)

(assert (= bs!1107350 (and b!4720255 b!4719652)))

(assert (=> bs!1107350 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884835) (= lambda!215045 lambda!214950))))

(declare-fun bs!1107351 () Bool)

(assert (= bs!1107351 (and b!4720255 b!4719990)))

(assert (=> bs!1107351 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885226) (= lambda!215045 lambda!215015))))

(declare-fun bs!1107352 () Bool)

(assert (= bs!1107352 (and b!4720255 b!4719653)))

(assert (=> bs!1107352 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215045 lambda!214948))))

(declare-fun bs!1107353 () Bool)

(assert (= bs!1107353 (and b!4720255 d!1502076)))

(assert (=> bs!1107353 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885102) (= lambda!215045 lambda!215002))))

(declare-fun bs!1107354 () Bool)

(assert (= bs!1107354 (and b!4720255 b!4720197)))

(assert (=> bs!1107354 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215045 lambda!215040))))

(declare-fun bs!1107355 () Bool)

(assert (= bs!1107355 (and b!4720255 b!4719957)))

(assert (=> bs!1107355 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215045 lambda!215005))))

(declare-fun bs!1107356 () Bool)

(assert (= bs!1107356 (and b!4720255 b!4720019)))

(assert (=> bs!1107356 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215045 lambda!215018))))

(declare-fun bs!1107357 () Bool)

(assert (= bs!1107357 (and b!4720255 d!1501952)))

(assert (=> bs!1107357 (not (= lambda!215045 lambda!214879))))

(assert (=> bs!1107350 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215045 lambda!214949))))

(assert (=> bs!1107351 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215045 lambda!215014))))

(declare-fun bs!1107358 () Bool)

(assert (= bs!1107358 (and b!4720255 d!1502126)))

(assert (=> bs!1107358 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885172) (= lambda!215045 lambda!215007))))

(declare-fun bs!1107359 () Bool)

(assert (= bs!1107359 (and b!4720255 b!4719838)))

(assert (=> bs!1107359 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215045 lambda!214999))))

(declare-fun bs!1107360 () Bool)

(assert (= bs!1107360 (and b!4720255 b!4719796)))

(assert (=> bs!1107360 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215045 lambda!214989))))

(assert (=> bs!1107347 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215045 lambda!214973))))

(declare-fun bs!1107361 () Bool)

(assert (= bs!1107361 (and b!4720255 b!4720018)))

(assert (=> bs!1107361 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885264) (= lambda!215045 lambda!215020))))

(declare-fun bs!1107362 () Bool)

(assert (= bs!1107362 (and b!4720255 d!1502174)))

(assert (=> bs!1107362 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885246) (= lambda!215045 lambda!215021))))

(declare-fun bs!1107363 () Bool)

(assert (= bs!1107363 (and b!4720255 d!1502298)))

(assert (=> bs!1107363 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884835) (= lambda!215045 lambda!215044))))

(declare-fun bs!1107364 () Bool)

(assert (= bs!1107364 (and b!4720255 d!1502170)))

(assert (=> bs!1107364 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885008) (= lambda!215045 lambda!215017))))

(declare-fun bs!1107365 () Bool)

(assert (= bs!1107365 (and b!4720255 d!1502154)))

(assert (=> bs!1107365 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885208) (= lambda!215045 lambda!215016))))

(declare-fun bs!1107366 () Bool)

(assert (= bs!1107366 (and b!4720255 d!1502052)))

(assert (=> bs!1107366 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885076) (= lambda!215045 lambda!214992))))

(declare-fun bs!1107367 () Bool)

(assert (= bs!1107367 (and b!4720255 b!4719790)))

(assert (=> bs!1107367 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215045 lambda!214986))))

(declare-fun bs!1107368 () Bool)

(assert (= bs!1107368 (and b!4720255 d!1502050)))

(assert (=> bs!1107368 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885055) (= lambda!215045 lambda!214988))))

(declare-fun bs!1107369 () Bool)

(assert (= bs!1107369 (and b!4720255 b!4720198)))

(assert (=> bs!1107369 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215045 lambda!215038))))

(assert (=> bs!1107354 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885389) (= lambda!215045 lambda!215042))))

(assert (=> bs!1107344 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215045 lambda!215000))))

(declare-fun bs!1107370 () Bool)

(assert (= bs!1107370 (and b!4720255 b!4719958)))

(assert (=> bs!1107370 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215045 lambda!215004))))

(declare-fun bs!1107371 () Bool)

(assert (= bs!1107371 (and b!4720255 b!4719791)))

(assert (=> bs!1107371 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215045 lambda!214985))))

(declare-fun bs!1107372 () Bool)

(assert (= bs!1107372 (and b!4720255 b!4719991)))

(assert (=> bs!1107372 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215045 lambda!215013))))

(assert (=> bs!1107367 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885073) (= lambda!215045 lambda!214987))))

(declare-fun bs!1107373 () Bool)

(assert (= bs!1107373 (and b!4720255 d!1502034)))

(assert (=> bs!1107373 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884990) (= lambda!215045 lambda!214982))))

(assert (=> bs!1107345 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215045 lambda!214979))))

(declare-fun bs!1107374 () Bool)

(assert (= bs!1107374 (and b!4720255 d!1502226)))

(assert (=> bs!1107374 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215045 lambda!215030))))

(declare-fun bs!1107375 () Bool)

(assert (= bs!1107375 (and b!4720255 d!1502062)))

(assert (=> bs!1107375 (not (= lambda!215045 lambda!214995))))

(declare-fun bs!1107376 () Bool)

(assert (= bs!1107376 (and b!4720255 d!1502028)))

(assert (=> bs!1107376 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884945) (= lambda!215045 lambda!214975))))

(assert (=> bs!1107355 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885190) (= lambda!215045 lambda!215006))))

(declare-fun bs!1107377 () Bool)

(assert (= bs!1107377 (and b!4720255 b!4719795)))

(assert (=> bs!1107377 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885094) (= lambda!215045 lambda!214991))))

(assert (=> bs!1107361 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215045 lambda!215019))))

(declare-fun bs!1107378 () Bool)

(assert (= bs!1107378 (and b!4720255 d!1502272)))

(assert (=> bs!1107378 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885371) (= lambda!215045 lambda!215043))))

(assert (=> bs!1107377 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215045 lambda!214990))))

(assert (=> b!4720255 true))

(declare-fun bs!1107379 () Bool)

(declare-fun b!4720254 () Bool)

(assert (= bs!1107379 (and b!4720254 b!4719716)))

(declare-fun lambda!215046 () Int)

(assert (=> bs!1107379 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215046 lambda!214972))))

(declare-fun bs!1107380 () Bool)

(assert (= bs!1107380 (and b!4720254 b!4719837)))

(assert (=> bs!1107380 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885120) (= lambda!215046 lambda!215001))))

(declare-fun bs!1107381 () Bool)

(assert (= bs!1107381 (and b!4720254 b!4719725)))

(assert (=> bs!1107381 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885008) (= lambda!215046 lambda!214981))))

(declare-fun bs!1107382 () Bool)

(assert (= bs!1107382 (and b!4720254 d!1502146)))

(assert (=> bs!1107382 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884963) (= lambda!215046 lambda!215012))))

(declare-fun bs!1107383 () Bool)

(assert (= bs!1107383 (and b!4720254 b!4719715)))

(assert (=> bs!1107383 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884963) (= lambda!215046 lambda!214974))))

(declare-fun bs!1107384 () Bool)

(assert (= bs!1107384 (and b!4720254 d!1501954)))

(assert (=> bs!1107384 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884817) (= lambda!215046 lambda!214951))))

(declare-fun bs!1107385 () Bool)

(assert (= bs!1107385 (and b!4720254 b!4719726)))

(assert (=> bs!1107385 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215046 lambda!214977))))

(declare-fun bs!1107386 () Bool)

(assert (= bs!1107386 (and b!4720254 b!4719652)))

(assert (=> bs!1107386 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884835) (= lambda!215046 lambda!214950))))

(declare-fun bs!1107387 () Bool)

(assert (= bs!1107387 (and b!4720254 b!4719990)))

(assert (=> bs!1107387 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885226) (= lambda!215046 lambda!215015))))

(declare-fun bs!1107388 () Bool)

(assert (= bs!1107388 (and b!4720254 d!1502076)))

(assert (=> bs!1107388 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885102) (= lambda!215046 lambda!215002))))

(declare-fun bs!1107389 () Bool)

(assert (= bs!1107389 (and b!4720254 b!4720197)))

(assert (=> bs!1107389 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215046 lambda!215040))))

(declare-fun bs!1107390 () Bool)

(assert (= bs!1107390 (and b!4720254 b!4719957)))

(assert (=> bs!1107390 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215046 lambda!215005))))

(declare-fun bs!1107391 () Bool)

(assert (= bs!1107391 (and b!4720254 b!4720019)))

(assert (=> bs!1107391 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215046 lambda!215018))))

(declare-fun bs!1107392 () Bool)

(assert (= bs!1107392 (and b!4720254 d!1501952)))

(assert (=> bs!1107392 (not (= lambda!215046 lambda!214879))))

(assert (=> bs!1107386 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215046 lambda!214949))))

(assert (=> bs!1107387 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215046 lambda!215014))))

(declare-fun bs!1107393 () Bool)

(assert (= bs!1107393 (and b!4720254 d!1502126)))

(assert (=> bs!1107393 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885172) (= lambda!215046 lambda!215007))))

(declare-fun bs!1107394 () Bool)

(assert (= bs!1107394 (and b!4720254 b!4719838)))

(assert (=> bs!1107394 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215046 lambda!214999))))

(declare-fun bs!1107395 () Bool)

(assert (= bs!1107395 (and b!4720254 b!4719796)))

(assert (=> bs!1107395 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215046 lambda!214989))))

(assert (=> bs!1107383 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215046 lambda!214973))))

(declare-fun bs!1107396 () Bool)

(assert (= bs!1107396 (and b!4720254 b!4720018)))

(assert (=> bs!1107396 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885264) (= lambda!215046 lambda!215020))))

(declare-fun bs!1107397 () Bool)

(assert (= bs!1107397 (and b!4720254 d!1502174)))

(assert (=> bs!1107397 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885246) (= lambda!215046 lambda!215021))))

(declare-fun bs!1107398 () Bool)

(assert (= bs!1107398 (and b!4720254 d!1502298)))

(assert (=> bs!1107398 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884835) (= lambda!215046 lambda!215044))))

(declare-fun bs!1107399 () Bool)

(assert (= bs!1107399 (and b!4720254 d!1502170)))

(assert (=> bs!1107399 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885008) (= lambda!215046 lambda!215017))))

(declare-fun bs!1107400 () Bool)

(assert (= bs!1107400 (and b!4720254 d!1502154)))

(assert (=> bs!1107400 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885208) (= lambda!215046 lambda!215016))))

(declare-fun bs!1107401 () Bool)

(assert (= bs!1107401 (and b!4720254 d!1502052)))

(assert (=> bs!1107401 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885076) (= lambda!215046 lambda!214992))))

(declare-fun bs!1107402 () Bool)

(assert (= bs!1107402 (and b!4720254 b!4719790)))

(assert (=> bs!1107402 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215046 lambda!214986))))

(declare-fun bs!1107403 () Bool)

(assert (= bs!1107403 (and b!4720254 d!1502050)))

(assert (=> bs!1107403 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885055) (= lambda!215046 lambda!214988))))

(declare-fun bs!1107404 () Bool)

(assert (= bs!1107404 (and b!4720254 b!4720198)))

(assert (=> bs!1107404 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215046 lambda!215038))))

(assert (=> bs!1107389 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885389) (= lambda!215046 lambda!215042))))

(assert (=> bs!1107380 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215046 lambda!215000))))

(declare-fun bs!1107405 () Bool)

(assert (= bs!1107405 (and b!4720254 b!4719958)))

(assert (=> bs!1107405 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215046 lambda!215004))))

(declare-fun bs!1107406 () Bool)

(assert (= bs!1107406 (and b!4720254 b!4719791)))

(assert (=> bs!1107406 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215046 lambda!214985))))

(declare-fun bs!1107407 () Bool)

(assert (= bs!1107407 (and b!4720254 b!4719991)))

(assert (=> bs!1107407 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215046 lambda!215013))))

(assert (=> bs!1107402 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885073) (= lambda!215046 lambda!214987))))

(declare-fun bs!1107408 () Bool)

(assert (= bs!1107408 (and b!4720254 d!1502034)))

(assert (=> bs!1107408 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884990) (= lambda!215046 lambda!214982))))

(assert (=> bs!1107381 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215046 lambda!214979))))

(declare-fun bs!1107409 () Bool)

(assert (= bs!1107409 (and b!4720254 d!1502226)))

(assert (=> bs!1107409 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215046 lambda!215030))))

(declare-fun bs!1107410 () Bool)

(assert (= bs!1107410 (and b!4720254 b!4719653)))

(assert (=> bs!1107410 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215046 lambda!214948))))

(declare-fun bs!1107411 () Bool)

(assert (= bs!1107411 (and b!4720254 b!4720255)))

(assert (=> bs!1107411 (= lambda!215046 lambda!215045)))

(declare-fun bs!1107412 () Bool)

(assert (= bs!1107412 (and b!4720254 d!1502062)))

(assert (=> bs!1107412 (not (= lambda!215046 lambda!214995))))

(declare-fun bs!1107413 () Bool)

(assert (= bs!1107413 (and b!4720254 d!1502028)))

(assert (=> bs!1107413 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884945) (= lambda!215046 lambda!214975))))

(assert (=> bs!1107390 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885190) (= lambda!215046 lambda!215006))))

(declare-fun bs!1107414 () Bool)

(assert (= bs!1107414 (and b!4720254 b!4719795)))

(assert (=> bs!1107414 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885094) (= lambda!215046 lambda!214991))))

(assert (=> bs!1107396 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215046 lambda!215019))))

(declare-fun bs!1107415 () Bool)

(assert (= bs!1107415 (and b!4720254 d!1502272)))

(assert (=> bs!1107415 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885371) (= lambda!215046 lambda!215043))))

(assert (=> bs!1107414 (= (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1884696) (= lambda!215046 lambda!214990))))

(assert (=> b!4720254 true))

(declare-fun lambda!215047 () Int)

(declare-fun lt!1885446 () ListMap!5269)

(assert (=> bs!1107380 (= (= lt!1885446 lt!1885120) (= lambda!215047 lambda!215001))))

(assert (=> bs!1107381 (= (= lt!1885446 lt!1885008) (= lambda!215047 lambda!214981))))

(assert (=> bs!1107382 (= (= lt!1885446 lt!1884963) (= lambda!215047 lambda!215012))))

(assert (=> bs!1107383 (= (= lt!1885446 lt!1884963) (= lambda!215047 lambda!214974))))

(assert (=> bs!1107384 (= (= lt!1885446 lt!1884817) (= lambda!215047 lambda!214951))))

(assert (=> bs!1107385 (= (= lt!1885446 lt!1884696) (= lambda!215047 lambda!214977))))

(assert (=> bs!1107386 (= (= lt!1885446 lt!1884835) (= lambda!215047 lambda!214950))))

(assert (=> bs!1107387 (= (= lt!1885446 lt!1885226) (= lambda!215047 lambda!215015))))

(assert (=> bs!1107388 (= (= lt!1885446 lt!1885102) (= lambda!215047 lambda!215002))))

(assert (=> bs!1107389 (= (= lt!1885446 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215047 lambda!215040))))

(assert (=> bs!1107390 (= (= lt!1885446 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215047 lambda!215005))))

(assert (=> bs!1107391 (= (= lt!1885446 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215047 lambda!215018))))

(assert (=> bs!1107392 (not (= lambda!215047 lambda!214879))))

(assert (=> bs!1107386 (= (= lt!1885446 lt!1884696) (= lambda!215047 lambda!214949))))

(assert (=> bs!1107387 (= (= lt!1885446 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215047 lambda!215014))))

(assert (=> bs!1107393 (= (= lt!1885446 lt!1885172) (= lambda!215047 lambda!215007))))

(assert (=> bs!1107394 (= (= lt!1885446 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215047 lambda!214999))))

(assert (=> bs!1107379 (= (= lt!1885446 lt!1884696) (= lambda!215047 lambda!214972))))

(assert (=> b!4720254 (= (= lt!1885446 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215047 lambda!215046))))

(assert (=> bs!1107395 (= (= lt!1885446 lt!1884696) (= lambda!215047 lambda!214989))))

(assert (=> bs!1107383 (= (= lt!1885446 lt!1884696) (= lambda!215047 lambda!214973))))

(assert (=> bs!1107396 (= (= lt!1885446 lt!1885264) (= lambda!215047 lambda!215020))))

(assert (=> bs!1107397 (= (= lt!1885446 lt!1885246) (= lambda!215047 lambda!215021))))

(assert (=> bs!1107398 (= (= lt!1885446 lt!1884835) (= lambda!215047 lambda!215044))))

(assert (=> bs!1107399 (= (= lt!1885446 lt!1885008) (= lambda!215047 lambda!215017))))

(assert (=> bs!1107400 (= (= lt!1885446 lt!1885208) (= lambda!215047 lambda!215016))))

(assert (=> bs!1107401 (= (= lt!1885446 lt!1885076) (= lambda!215047 lambda!214992))))

(assert (=> bs!1107402 (= (= lt!1885446 lt!1884696) (= lambda!215047 lambda!214986))))

(assert (=> bs!1107403 (= (= lt!1885446 lt!1885055) (= lambda!215047 lambda!214988))))

(assert (=> bs!1107404 (= (= lt!1885446 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215047 lambda!215038))))

(assert (=> bs!1107389 (= (= lt!1885446 lt!1885389) (= lambda!215047 lambda!215042))))

(assert (=> bs!1107380 (= (= lt!1885446 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215047 lambda!215000))))

(assert (=> bs!1107405 (= (= lt!1885446 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215047 lambda!215004))))

(assert (=> bs!1107406 (= (= lt!1885446 lt!1884696) (= lambda!215047 lambda!214985))))

(assert (=> bs!1107407 (= (= lt!1885446 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215047 lambda!215013))))

(assert (=> bs!1107402 (= (= lt!1885446 lt!1885073) (= lambda!215047 lambda!214987))))

(assert (=> bs!1107408 (= (= lt!1885446 lt!1884990) (= lambda!215047 lambda!214982))))

(assert (=> bs!1107381 (= (= lt!1885446 lt!1884696) (= lambda!215047 lambda!214979))))

(assert (=> bs!1107409 (= (= lt!1885446 lt!1884696) (= lambda!215047 lambda!215030))))

(assert (=> bs!1107410 (= (= lt!1885446 lt!1884696) (= lambda!215047 lambda!214948))))

(assert (=> bs!1107411 (= (= lt!1885446 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215047 lambda!215045))))

(assert (=> bs!1107412 (not (= lambda!215047 lambda!214995))))

(assert (=> bs!1107413 (= (= lt!1885446 lt!1884945) (= lambda!215047 lambda!214975))))

(assert (=> bs!1107390 (= (= lt!1885446 lt!1885190) (= lambda!215047 lambda!215006))))

(assert (=> bs!1107414 (= (= lt!1885446 lt!1885094) (= lambda!215047 lambda!214991))))

(assert (=> bs!1107396 (= (= lt!1885446 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215047 lambda!215019))))

(assert (=> bs!1107415 (= (= lt!1885446 lt!1885371) (= lambda!215047 lambda!215043))))

(assert (=> bs!1107414 (= (= lt!1885446 lt!1884696) (= lambda!215047 lambda!214990))))

(assert (=> b!4720254 true))

(declare-fun bs!1107416 () Bool)

(declare-fun d!1502308 () Bool)

(assert (= bs!1107416 (and d!1502308 b!4719837)))

(declare-fun lt!1885428 () ListMap!5269)

(declare-fun lambda!215048 () Int)

(assert (=> bs!1107416 (= (= lt!1885428 lt!1885120) (= lambda!215048 lambda!215001))))

(declare-fun bs!1107417 () Bool)

(assert (= bs!1107417 (and d!1502308 b!4719725)))

(assert (=> bs!1107417 (= (= lt!1885428 lt!1885008) (= lambda!215048 lambda!214981))))

(declare-fun bs!1107418 () Bool)

(assert (= bs!1107418 (and d!1502308 d!1502146)))

(assert (=> bs!1107418 (= (= lt!1885428 lt!1884963) (= lambda!215048 lambda!215012))))

(declare-fun bs!1107419 () Bool)

(assert (= bs!1107419 (and d!1502308 b!4719715)))

(assert (=> bs!1107419 (= (= lt!1885428 lt!1884963) (= lambda!215048 lambda!214974))))

(declare-fun bs!1107420 () Bool)

(assert (= bs!1107420 (and d!1502308 d!1501954)))

(assert (=> bs!1107420 (= (= lt!1885428 lt!1884817) (= lambda!215048 lambda!214951))))

(declare-fun bs!1107421 () Bool)

(assert (= bs!1107421 (and d!1502308 b!4719726)))

(assert (=> bs!1107421 (= (= lt!1885428 lt!1884696) (= lambda!215048 lambda!214977))))

(declare-fun bs!1107422 () Bool)

(assert (= bs!1107422 (and d!1502308 b!4719652)))

(assert (=> bs!1107422 (= (= lt!1885428 lt!1884835) (= lambda!215048 lambda!214950))))

(declare-fun bs!1107423 () Bool)

(assert (= bs!1107423 (and d!1502308 b!4719990)))

(assert (=> bs!1107423 (= (= lt!1885428 lt!1885226) (= lambda!215048 lambda!215015))))

(declare-fun bs!1107424 () Bool)

(assert (= bs!1107424 (and d!1502308 d!1502076)))

(assert (=> bs!1107424 (= (= lt!1885428 lt!1885102) (= lambda!215048 lambda!215002))))

(declare-fun bs!1107425 () Bool)

(assert (= bs!1107425 (and d!1502308 b!4720197)))

(assert (=> bs!1107425 (= (= lt!1885428 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215048 lambda!215040))))

(declare-fun bs!1107426 () Bool)

(assert (= bs!1107426 (and d!1502308 b!4719957)))

(assert (=> bs!1107426 (= (= lt!1885428 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215048 lambda!215005))))

(declare-fun bs!1107427 () Bool)

(assert (= bs!1107427 (and d!1502308 b!4720019)))

(assert (=> bs!1107427 (= (= lt!1885428 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215048 lambda!215018))))

(declare-fun bs!1107428 () Bool)

(assert (= bs!1107428 (and d!1502308 d!1501952)))

(assert (=> bs!1107428 (not (= lambda!215048 lambda!214879))))

(assert (=> bs!1107422 (= (= lt!1885428 lt!1884696) (= lambda!215048 lambda!214949))))

(assert (=> bs!1107423 (= (= lt!1885428 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215048 lambda!215014))))

(declare-fun bs!1107429 () Bool)

(assert (= bs!1107429 (and d!1502308 d!1502126)))

(assert (=> bs!1107429 (= (= lt!1885428 lt!1885172) (= lambda!215048 lambda!215007))))

(declare-fun bs!1107430 () Bool)

(assert (= bs!1107430 (and d!1502308 b!4719838)))

(assert (=> bs!1107430 (= (= lt!1885428 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215048 lambda!214999))))

(declare-fun bs!1107431 () Bool)

(assert (= bs!1107431 (and d!1502308 b!4719716)))

(assert (=> bs!1107431 (= (= lt!1885428 lt!1884696) (= lambda!215048 lambda!214972))))

(declare-fun bs!1107432 () Bool)

(assert (= bs!1107432 (and d!1502308 b!4720254)))

(assert (=> bs!1107432 (= (= lt!1885428 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215048 lambda!215046))))

(declare-fun bs!1107433 () Bool)

(assert (= bs!1107433 (and d!1502308 b!4719796)))

(assert (=> bs!1107433 (= (= lt!1885428 lt!1884696) (= lambda!215048 lambda!214989))))

(assert (=> bs!1107419 (= (= lt!1885428 lt!1884696) (= lambda!215048 lambda!214973))))

(declare-fun bs!1107434 () Bool)

(assert (= bs!1107434 (and d!1502308 b!4720018)))

(assert (=> bs!1107434 (= (= lt!1885428 lt!1885264) (= lambda!215048 lambda!215020))))

(declare-fun bs!1107435 () Bool)

(assert (= bs!1107435 (and d!1502308 d!1502174)))

(assert (=> bs!1107435 (= (= lt!1885428 lt!1885246) (= lambda!215048 lambda!215021))))

(declare-fun bs!1107436 () Bool)

(assert (= bs!1107436 (and d!1502308 d!1502298)))

(assert (=> bs!1107436 (= (= lt!1885428 lt!1884835) (= lambda!215048 lambda!215044))))

(declare-fun bs!1107437 () Bool)

(assert (= bs!1107437 (and d!1502308 d!1502170)))

(assert (=> bs!1107437 (= (= lt!1885428 lt!1885008) (= lambda!215048 lambda!215017))))

(declare-fun bs!1107438 () Bool)

(assert (= bs!1107438 (and d!1502308 d!1502154)))

(assert (=> bs!1107438 (= (= lt!1885428 lt!1885208) (= lambda!215048 lambda!215016))))

(declare-fun bs!1107439 () Bool)

(assert (= bs!1107439 (and d!1502308 d!1502052)))

(assert (=> bs!1107439 (= (= lt!1885428 lt!1885076) (= lambda!215048 lambda!214992))))

(declare-fun bs!1107440 () Bool)

(assert (= bs!1107440 (and d!1502308 b!4719790)))

(assert (=> bs!1107440 (= (= lt!1885428 lt!1884696) (= lambda!215048 lambda!214986))))

(declare-fun bs!1107441 () Bool)

(assert (= bs!1107441 (and d!1502308 d!1502050)))

(assert (=> bs!1107441 (= (= lt!1885428 lt!1885055) (= lambda!215048 lambda!214988))))

(declare-fun bs!1107442 () Bool)

(assert (= bs!1107442 (and d!1502308 b!4720198)))

(assert (=> bs!1107442 (= (= lt!1885428 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215048 lambda!215038))))

(assert (=> bs!1107425 (= (= lt!1885428 lt!1885389) (= lambda!215048 lambda!215042))))

(assert (=> bs!1107416 (= (= lt!1885428 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215048 lambda!215000))))

(declare-fun bs!1107443 () Bool)

(assert (= bs!1107443 (and d!1502308 b!4719958)))

(assert (=> bs!1107443 (= (= lt!1885428 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215048 lambda!215004))))

(declare-fun bs!1107444 () Bool)

(assert (= bs!1107444 (and d!1502308 b!4719791)))

(assert (=> bs!1107444 (= (= lt!1885428 lt!1884696) (= lambda!215048 lambda!214985))))

(declare-fun bs!1107445 () Bool)

(assert (= bs!1107445 (and d!1502308 b!4719991)))

(assert (=> bs!1107445 (= (= lt!1885428 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215048 lambda!215013))))

(assert (=> bs!1107440 (= (= lt!1885428 lt!1885073) (= lambda!215048 lambda!214987))))

(declare-fun bs!1107446 () Bool)

(assert (= bs!1107446 (and d!1502308 d!1502034)))

(assert (=> bs!1107446 (= (= lt!1885428 lt!1884990) (= lambda!215048 lambda!214982))))

(assert (=> bs!1107417 (= (= lt!1885428 lt!1884696) (= lambda!215048 lambda!214979))))

(assert (=> bs!1107432 (= (= lt!1885428 lt!1885446) (= lambda!215048 lambda!215047))))

(declare-fun bs!1107447 () Bool)

(assert (= bs!1107447 (and d!1502308 d!1502226)))

(assert (=> bs!1107447 (= (= lt!1885428 lt!1884696) (= lambda!215048 lambda!215030))))

(declare-fun bs!1107448 () Bool)

(assert (= bs!1107448 (and d!1502308 b!4719653)))

(assert (=> bs!1107448 (= (= lt!1885428 lt!1884696) (= lambda!215048 lambda!214948))))

(declare-fun bs!1107449 () Bool)

(assert (= bs!1107449 (and d!1502308 b!4720255)))

(assert (=> bs!1107449 (= (= lt!1885428 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215048 lambda!215045))))

(declare-fun bs!1107450 () Bool)

(assert (= bs!1107450 (and d!1502308 d!1502062)))

(assert (=> bs!1107450 (not (= lambda!215048 lambda!214995))))

(declare-fun bs!1107451 () Bool)

(assert (= bs!1107451 (and d!1502308 d!1502028)))

(assert (=> bs!1107451 (= (= lt!1885428 lt!1884945) (= lambda!215048 lambda!214975))))

(assert (=> bs!1107426 (= (= lt!1885428 lt!1885190) (= lambda!215048 lambda!215006))))

(declare-fun bs!1107452 () Bool)

(assert (= bs!1107452 (and d!1502308 b!4719795)))

(assert (=> bs!1107452 (= (= lt!1885428 lt!1885094) (= lambda!215048 lambda!214991))))

(assert (=> bs!1107434 (= (= lt!1885428 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215048 lambda!215019))))

(declare-fun bs!1107453 () Bool)

(assert (= bs!1107453 (and d!1502308 d!1502272)))

(assert (=> bs!1107453 (= (= lt!1885428 lt!1885371) (= lambda!215048 lambda!215043))))

(assert (=> bs!1107452 (= (= lt!1885428 lt!1884696) (= lambda!215048 lambda!214990))))

(assert (=> d!1502308 true))

(declare-fun e!2943788 () Bool)

(declare-fun b!4720253 () Bool)

(assert (=> b!4720253 (= e!2943788 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 newBucket!218))) lambda!215047))))

(declare-fun bm!330031 () Bool)

(declare-fun call!330036 () Unit!129252)

(assert (=> bm!330031 (= call!330036 (lemmaContainsAllItsOwnKeys!791 (+!2263 lt!1884696 (h!59153 newBucket!218))))))

(declare-fun c!806121 () Bool)

(declare-fun bm!330032 () Bool)

(declare-fun call!330037 () Bool)

(assert (=> bm!330032 (= call!330037 (forall!11574 (ite c!806121 (toList!5906 (+!2263 lt!1884696 (h!59153 newBucket!218))) (t!360192 newBucket!218)) (ite c!806121 lambda!215045 lambda!215047)))))

(declare-fun e!2943790 () ListMap!5269)

(assert (=> b!4720254 (= e!2943790 lt!1885446)))

(declare-fun lt!1885427 () ListMap!5269)

(assert (=> b!4720254 (= lt!1885427 (+!2263 (+!2263 lt!1884696 (h!59153 newBucket!218)) (h!59153 (t!360192 newBucket!218))))))

(assert (=> b!4720254 (= lt!1885446 (addToMapMapFromBucket!1438 (t!360192 (t!360192 newBucket!218)) (+!2263 (+!2263 lt!1884696 (h!59153 newBucket!218)) (h!59153 (t!360192 newBucket!218)))))))

(declare-fun lt!1885437 () Unit!129252)

(assert (=> b!4720254 (= lt!1885437 call!330036)))

(declare-fun call!330038 () Bool)

(assert (=> b!4720254 call!330038))

(declare-fun lt!1885429 () Unit!129252)

(assert (=> b!4720254 (= lt!1885429 lt!1885437)))

(assert (=> b!4720254 (forall!11574 (toList!5906 lt!1885427) lambda!215047)))

(declare-fun lt!1885444 () Unit!129252)

(declare-fun Unit!129513 () Unit!129252)

(assert (=> b!4720254 (= lt!1885444 Unit!129513)))

(assert (=> b!4720254 (forall!11574 (t!360192 (t!360192 newBucket!218)) lambda!215047)))

(declare-fun lt!1885430 () Unit!129252)

(declare-fun Unit!129514 () Unit!129252)

(assert (=> b!4720254 (= lt!1885430 Unit!129514)))

(declare-fun lt!1885434 () Unit!129252)

(declare-fun Unit!129515 () Unit!129252)

(assert (=> b!4720254 (= lt!1885434 Unit!129515)))

(declare-fun lt!1885445 () Unit!129252)

(assert (=> b!4720254 (= lt!1885445 (forallContained!3629 (toList!5906 lt!1885427) lambda!215047 (h!59153 (t!360192 newBucket!218))))))

(assert (=> b!4720254 (contains!16156 lt!1885427 (_1!30507 (h!59153 (t!360192 newBucket!218))))))

(declare-fun lt!1885438 () Unit!129252)

(declare-fun Unit!129516 () Unit!129252)

(assert (=> b!4720254 (= lt!1885438 Unit!129516)))

(assert (=> b!4720254 (contains!16156 lt!1885446 (_1!30507 (h!59153 (t!360192 newBucket!218))))))

(declare-fun lt!1885442 () Unit!129252)

(declare-fun Unit!129517 () Unit!129252)

(assert (=> b!4720254 (= lt!1885442 Unit!129517)))

(assert (=> b!4720254 call!330037))

(declare-fun lt!1885431 () Unit!129252)

(declare-fun Unit!129518 () Unit!129252)

(assert (=> b!4720254 (= lt!1885431 Unit!129518)))

(assert (=> b!4720254 (forall!11574 (toList!5906 lt!1885427) lambda!215047)))

(declare-fun lt!1885432 () Unit!129252)

(declare-fun Unit!129519 () Unit!129252)

(assert (=> b!4720254 (= lt!1885432 Unit!129519)))

(declare-fun lt!1885439 () Unit!129252)

(declare-fun Unit!129520 () Unit!129252)

(assert (=> b!4720254 (= lt!1885439 Unit!129520)))

(declare-fun lt!1885435 () Unit!129252)

(assert (=> b!4720254 (= lt!1885435 (addForallContainsKeyThenBeforeAdding!790 (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885446 (_1!30507 (h!59153 (t!360192 newBucket!218))) (_2!30507 (h!59153 (t!360192 newBucket!218)))))))

(assert (=> b!4720254 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 newBucket!218))) lambda!215047)))

(declare-fun lt!1885440 () Unit!129252)

(assert (=> b!4720254 (= lt!1885440 lt!1885435)))

(assert (=> b!4720254 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 newBucket!218))) lambda!215047)))

(declare-fun lt!1885441 () Unit!129252)

(declare-fun Unit!129521 () Unit!129252)

(assert (=> b!4720254 (= lt!1885441 Unit!129521)))

(declare-fun res!1996629 () Bool)

(assert (=> b!4720254 (= res!1996629 (forall!11574 (t!360192 newBucket!218) lambda!215047))))

(assert (=> b!4720254 (=> (not res!1996629) (not e!2943788))))

(assert (=> b!4720254 e!2943788))

(declare-fun lt!1885433 () Unit!129252)

(declare-fun Unit!129522 () Unit!129252)

(assert (=> b!4720254 (= lt!1885433 Unit!129522)))

(assert (=> b!4720255 (= e!2943790 (+!2263 lt!1884696 (h!59153 newBucket!218)))))

(declare-fun lt!1885426 () Unit!129252)

(assert (=> b!4720255 (= lt!1885426 call!330036)))

(assert (=> b!4720255 call!330038))

(declare-fun lt!1885443 () Unit!129252)

(assert (=> b!4720255 (= lt!1885443 lt!1885426)))

(assert (=> b!4720255 call!330037))

(declare-fun lt!1885436 () Unit!129252)

(declare-fun Unit!129523 () Unit!129252)

(assert (=> b!4720255 (= lt!1885436 Unit!129523)))

(declare-fun e!2943789 () Bool)

(assert (=> d!1502308 e!2943789))

(declare-fun res!1996630 () Bool)

(assert (=> d!1502308 (=> (not res!1996630) (not e!2943789))))

(assert (=> d!1502308 (= res!1996630 (forall!11574 (t!360192 newBucket!218) lambda!215048))))

(assert (=> d!1502308 (= lt!1885428 e!2943790)))

(assert (=> d!1502308 (= c!806121 ((_ is Nil!52812) (t!360192 newBucket!218)))))

(assert (=> d!1502308 (noDuplicateKeys!2008 (t!360192 newBucket!218))))

(assert (=> d!1502308 (= (addToMapMapFromBucket!1438 (t!360192 newBucket!218) (+!2263 lt!1884696 (h!59153 newBucket!218))) lt!1885428)))

(declare-fun b!4720256 () Bool)

(assert (=> b!4720256 (= e!2943789 (invariantList!1505 (toList!5906 lt!1885428)))))

(declare-fun bm!330033 () Bool)

(assert (=> bm!330033 (= call!330038 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 newBucket!218))) (ite c!806121 lambda!215045 lambda!215046)))))

(declare-fun b!4720257 () Bool)

(declare-fun res!1996631 () Bool)

(assert (=> b!4720257 (=> (not res!1996631) (not e!2943789))))

(assert (=> b!4720257 (= res!1996631 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 newBucket!218))) lambda!215048))))

(assert (= (and d!1502308 c!806121) b!4720255))

(assert (= (and d!1502308 (not c!806121)) b!4720254))

(assert (= (and b!4720254 res!1996629) b!4720253))

(assert (= (or b!4720255 b!4720254) bm!330031))

(assert (= (or b!4720255 b!4720254) bm!330032))

(assert (= (or b!4720255 b!4720254) bm!330033))

(assert (= (and d!1502308 res!1996630) b!4720257))

(assert (= (and b!4720257 res!1996631) b!4720256))

(declare-fun m!5653131 () Bool)

(assert (=> b!4720256 m!5653131))

(declare-fun m!5653133 () Bool)

(assert (=> bm!330032 m!5653133))

(assert (=> bm!330031 m!5652137))

(declare-fun m!5653135 () Bool)

(assert (=> bm!330031 m!5653135))

(declare-fun m!5653137 () Bool)

(assert (=> b!4720257 m!5653137))

(declare-fun m!5653139 () Bool)

(assert (=> b!4720254 m!5653139))

(declare-fun m!5653141 () Bool)

(assert (=> b!4720254 m!5653141))

(declare-fun m!5653143 () Bool)

(assert (=> b!4720254 m!5653143))

(declare-fun m!5653145 () Bool)

(assert (=> b!4720254 m!5653145))

(assert (=> b!4720254 m!5652137))

(declare-fun m!5653147 () Bool)

(assert (=> b!4720254 m!5653147))

(declare-fun m!5653149 () Bool)

(assert (=> b!4720254 m!5653149))

(declare-fun m!5653151 () Bool)

(assert (=> b!4720254 m!5653151))

(declare-fun m!5653153 () Bool)

(assert (=> b!4720254 m!5653153))

(assert (=> b!4720254 m!5653143))

(declare-fun m!5653155 () Bool)

(assert (=> b!4720254 m!5653155))

(declare-fun m!5653157 () Bool)

(assert (=> b!4720254 m!5653157))

(assert (=> b!4720254 m!5653149))

(assert (=> b!4720254 m!5652137))

(assert (=> b!4720254 m!5653151))

(declare-fun m!5653159 () Bool)

(assert (=> bm!330033 m!5653159))

(declare-fun m!5653161 () Bool)

(assert (=> d!1502308 m!5653161))

(assert (=> d!1502308 m!5652181))

(assert (=> b!4720253 m!5653149))

(assert (=> b!4719790 d!1502308))

(declare-fun d!1502316 () Bool)

(assert (=> d!1502316 (dynLambda!21811 lambda!214987 (h!59153 newBucket!218))))

(declare-fun lt!1885450 () Unit!129252)

(assert (=> d!1502316 (= lt!1885450 (choose!33292 (toList!5906 lt!1885054) lambda!214987 (h!59153 newBucket!218)))))

(declare-fun e!2943796 () Bool)

(assert (=> d!1502316 e!2943796))

(declare-fun res!1996638 () Bool)

(assert (=> d!1502316 (=> (not res!1996638) (not e!2943796))))

(assert (=> d!1502316 (= res!1996638 (forall!11574 (toList!5906 lt!1885054) lambda!214987))))

(assert (=> d!1502316 (= (forallContained!3629 (toList!5906 lt!1885054) lambda!214987 (h!59153 newBucket!218)) lt!1885450)))

(declare-fun b!4720268 () Bool)

(assert (=> b!4720268 (= e!2943796 (contains!16158 (toList!5906 lt!1885054) (h!59153 newBucket!218)))))

(assert (= (and d!1502316 res!1996638) b!4720268))

(declare-fun b_lambda!177987 () Bool)

(assert (=> (not b_lambda!177987) (not d!1502316)))

(declare-fun m!5653163 () Bool)

(assert (=> d!1502316 m!5653163))

(declare-fun m!5653165 () Bool)

(assert (=> d!1502316 m!5653165))

(assert (=> d!1502316 m!5652129))

(declare-fun m!5653167 () Bool)

(assert (=> b!4720268 m!5653167))

(assert (=> b!4719790 d!1502316))

(declare-fun d!1502318 () Bool)

(declare-fun res!1996639 () Bool)

(declare-fun e!2943797 () Bool)

(assert (=> d!1502318 (=> res!1996639 e!2943797)))

(assert (=> d!1502318 (= res!1996639 ((_ is Nil!52812) newBucket!218))))

(assert (=> d!1502318 (= (forall!11574 newBucket!218 lambda!214987) e!2943797)))

(declare-fun b!4720269 () Bool)

(declare-fun e!2943798 () Bool)

(assert (=> b!4720269 (= e!2943797 e!2943798)))

(declare-fun res!1996640 () Bool)

(assert (=> b!4720269 (=> (not res!1996640) (not e!2943798))))

(assert (=> b!4720269 (= res!1996640 (dynLambda!21811 lambda!214987 (h!59153 newBucket!218)))))

(declare-fun b!4720270 () Bool)

(assert (=> b!4720270 (= e!2943798 (forall!11574 (t!360192 newBucket!218) lambda!214987))))

(assert (= (and d!1502318 (not res!1996639)) b!4720269))

(assert (= (and b!4720269 res!1996640) b!4720270))

(declare-fun b_lambda!177989 () Bool)

(assert (=> (not b_lambda!177989) (not b!4720269)))

(assert (=> b!4720269 m!5653163))

(assert (=> b!4720270 m!5652143))

(assert (=> b!4719790 d!1502318))

(declare-fun bs!1107454 () Bool)

(declare-fun d!1502320 () Bool)

(assert (= bs!1107454 (and d!1502320 b!4719837)))

(declare-fun lambda!215049 () Int)

(assert (=> bs!1107454 (= (= lt!1885073 lt!1885120) (= lambda!215049 lambda!215001))))

(declare-fun bs!1107455 () Bool)

(assert (= bs!1107455 (and d!1502320 b!4719725)))

(assert (=> bs!1107455 (= (= lt!1885073 lt!1885008) (= lambda!215049 lambda!214981))))

(declare-fun bs!1107456 () Bool)

(assert (= bs!1107456 (and d!1502320 d!1502146)))

(assert (=> bs!1107456 (= (= lt!1885073 lt!1884963) (= lambda!215049 lambda!215012))))

(declare-fun bs!1107457 () Bool)

(assert (= bs!1107457 (and d!1502320 b!4719715)))

(assert (=> bs!1107457 (= (= lt!1885073 lt!1884963) (= lambda!215049 lambda!214974))))

(declare-fun bs!1107458 () Bool)

(assert (= bs!1107458 (and d!1502320 d!1501954)))

(assert (=> bs!1107458 (= (= lt!1885073 lt!1884817) (= lambda!215049 lambda!214951))))

(declare-fun bs!1107459 () Bool)

(assert (= bs!1107459 (and d!1502320 b!4719726)))

(assert (=> bs!1107459 (= (= lt!1885073 lt!1884696) (= lambda!215049 lambda!214977))))

(declare-fun bs!1107460 () Bool)

(assert (= bs!1107460 (and d!1502320 b!4719652)))

(assert (=> bs!1107460 (= (= lt!1885073 lt!1884835) (= lambda!215049 lambda!214950))))

(declare-fun bs!1107461 () Bool)

(assert (= bs!1107461 (and d!1502320 b!4719990)))

(assert (=> bs!1107461 (= (= lt!1885073 lt!1885226) (= lambda!215049 lambda!215015))))

(declare-fun bs!1107462 () Bool)

(assert (= bs!1107462 (and d!1502320 d!1502076)))

(assert (=> bs!1107462 (= (= lt!1885073 lt!1885102) (= lambda!215049 lambda!215002))))

(declare-fun bs!1107463 () Bool)

(assert (= bs!1107463 (and d!1502320 b!4720197)))

(assert (=> bs!1107463 (= (= lt!1885073 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215049 lambda!215040))))

(declare-fun bs!1107464 () Bool)

(assert (= bs!1107464 (and d!1502320 b!4719957)))

(assert (=> bs!1107464 (= (= lt!1885073 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215049 lambda!215005))))

(declare-fun bs!1107465 () Bool)

(assert (= bs!1107465 (and d!1502320 b!4720019)))

(assert (=> bs!1107465 (= (= lt!1885073 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215049 lambda!215018))))

(declare-fun bs!1107466 () Bool)

(assert (= bs!1107466 (and d!1502320 d!1501952)))

(assert (=> bs!1107466 (not (= lambda!215049 lambda!214879))))

(assert (=> bs!1107460 (= (= lt!1885073 lt!1884696) (= lambda!215049 lambda!214949))))

(assert (=> bs!1107461 (= (= lt!1885073 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215049 lambda!215014))))

(declare-fun bs!1107467 () Bool)

(assert (= bs!1107467 (and d!1502320 d!1502126)))

(assert (=> bs!1107467 (= (= lt!1885073 lt!1885172) (= lambda!215049 lambda!215007))))

(declare-fun bs!1107468 () Bool)

(assert (= bs!1107468 (and d!1502320 b!4719838)))

(assert (=> bs!1107468 (= (= lt!1885073 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215049 lambda!214999))))

(declare-fun bs!1107469 () Bool)

(assert (= bs!1107469 (and d!1502320 b!4719716)))

(assert (=> bs!1107469 (= (= lt!1885073 lt!1884696) (= lambda!215049 lambda!214972))))

(declare-fun bs!1107470 () Bool)

(assert (= bs!1107470 (and d!1502320 b!4720254)))

(assert (=> bs!1107470 (= (= lt!1885073 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215049 lambda!215046))))

(declare-fun bs!1107471 () Bool)

(assert (= bs!1107471 (and d!1502320 b!4719796)))

(assert (=> bs!1107471 (= (= lt!1885073 lt!1884696) (= lambda!215049 lambda!214989))))

(assert (=> bs!1107457 (= (= lt!1885073 lt!1884696) (= lambda!215049 lambda!214973))))

(declare-fun bs!1107472 () Bool)

(assert (= bs!1107472 (and d!1502320 b!4720018)))

(assert (=> bs!1107472 (= (= lt!1885073 lt!1885264) (= lambda!215049 lambda!215020))))

(declare-fun bs!1107473 () Bool)

(assert (= bs!1107473 (and d!1502320 d!1502174)))

(assert (=> bs!1107473 (= (= lt!1885073 lt!1885246) (= lambda!215049 lambda!215021))))

(declare-fun bs!1107474 () Bool)

(assert (= bs!1107474 (and d!1502320 d!1502298)))

(assert (=> bs!1107474 (= (= lt!1885073 lt!1884835) (= lambda!215049 lambda!215044))))

(declare-fun bs!1107475 () Bool)

(assert (= bs!1107475 (and d!1502320 d!1502170)))

(assert (=> bs!1107475 (= (= lt!1885073 lt!1885008) (= lambda!215049 lambda!215017))))

(declare-fun bs!1107476 () Bool)

(assert (= bs!1107476 (and d!1502320 d!1502154)))

(assert (=> bs!1107476 (= (= lt!1885073 lt!1885208) (= lambda!215049 lambda!215016))))

(declare-fun bs!1107477 () Bool)

(assert (= bs!1107477 (and d!1502320 d!1502052)))

(assert (=> bs!1107477 (= (= lt!1885073 lt!1885076) (= lambda!215049 lambda!214992))))

(declare-fun bs!1107478 () Bool)

(assert (= bs!1107478 (and d!1502320 b!4719790)))

(assert (=> bs!1107478 (= (= lt!1885073 lt!1884696) (= lambda!215049 lambda!214986))))

(declare-fun bs!1107479 () Bool)

(assert (= bs!1107479 (and d!1502320 d!1502050)))

(assert (=> bs!1107479 (= (= lt!1885073 lt!1885055) (= lambda!215049 lambda!214988))))

(declare-fun bs!1107480 () Bool)

(assert (= bs!1107480 (and d!1502320 b!4720198)))

(assert (=> bs!1107480 (= (= lt!1885073 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215049 lambda!215038))))

(assert (=> bs!1107463 (= (= lt!1885073 lt!1885389) (= lambda!215049 lambda!215042))))

(assert (=> bs!1107454 (= (= lt!1885073 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215049 lambda!215000))))

(declare-fun bs!1107481 () Bool)

(assert (= bs!1107481 (and d!1502320 b!4719958)))

(assert (=> bs!1107481 (= (= lt!1885073 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215049 lambda!215004))))

(declare-fun bs!1107482 () Bool)

(assert (= bs!1107482 (and d!1502320 b!4719791)))

(assert (=> bs!1107482 (= (= lt!1885073 lt!1884696) (= lambda!215049 lambda!214985))))

(declare-fun bs!1107483 () Bool)

(assert (= bs!1107483 (and d!1502320 b!4719991)))

(assert (=> bs!1107483 (= (= lt!1885073 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215049 lambda!215013))))

(declare-fun bs!1107484 () Bool)

(assert (= bs!1107484 (and d!1502320 d!1502308)))

(assert (=> bs!1107484 (= (= lt!1885073 lt!1885428) (= lambda!215049 lambda!215048))))

(assert (=> bs!1107478 (= lambda!215049 lambda!214987)))

(declare-fun bs!1107485 () Bool)

(assert (= bs!1107485 (and d!1502320 d!1502034)))

(assert (=> bs!1107485 (= (= lt!1885073 lt!1884990) (= lambda!215049 lambda!214982))))

(assert (=> bs!1107455 (= (= lt!1885073 lt!1884696) (= lambda!215049 lambda!214979))))

(assert (=> bs!1107470 (= (= lt!1885073 lt!1885446) (= lambda!215049 lambda!215047))))

(declare-fun bs!1107486 () Bool)

(assert (= bs!1107486 (and d!1502320 d!1502226)))

(assert (=> bs!1107486 (= (= lt!1885073 lt!1884696) (= lambda!215049 lambda!215030))))

(declare-fun bs!1107487 () Bool)

(assert (= bs!1107487 (and d!1502320 b!4719653)))

(assert (=> bs!1107487 (= (= lt!1885073 lt!1884696) (= lambda!215049 lambda!214948))))

(declare-fun bs!1107488 () Bool)

(assert (= bs!1107488 (and d!1502320 b!4720255)))

(assert (=> bs!1107488 (= (= lt!1885073 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215049 lambda!215045))))

(declare-fun bs!1107489 () Bool)

(assert (= bs!1107489 (and d!1502320 d!1502062)))

(assert (=> bs!1107489 (not (= lambda!215049 lambda!214995))))

(declare-fun bs!1107490 () Bool)

(assert (= bs!1107490 (and d!1502320 d!1502028)))

(assert (=> bs!1107490 (= (= lt!1885073 lt!1884945) (= lambda!215049 lambda!214975))))

(assert (=> bs!1107464 (= (= lt!1885073 lt!1885190) (= lambda!215049 lambda!215006))))

(declare-fun bs!1107491 () Bool)

(assert (= bs!1107491 (and d!1502320 b!4719795)))

(assert (=> bs!1107491 (= (= lt!1885073 lt!1885094) (= lambda!215049 lambda!214991))))

(assert (=> bs!1107472 (= (= lt!1885073 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215049 lambda!215019))))

(declare-fun bs!1107492 () Bool)

(assert (= bs!1107492 (and d!1502320 d!1502272)))

(assert (=> bs!1107492 (= (= lt!1885073 lt!1885371) (= lambda!215049 lambda!215043))))

(assert (=> bs!1107491 (= (= lt!1885073 lt!1884696) (= lambda!215049 lambda!214990))))

(assert (=> d!1502320 true))

(assert (=> d!1502320 (forall!11574 (toList!5906 lt!1884696) lambda!215049)))

(declare-fun lt!1885451 () Unit!129252)

(assert (=> d!1502320 (= lt!1885451 (choose!33288 lt!1884696 lt!1885073 (_1!30507 (h!59153 newBucket!218)) (_2!30507 (h!59153 newBucket!218))))))

(assert (=> d!1502320 (forall!11574 (toList!5906 (+!2263 lt!1884696 (tuple2!54427 (_1!30507 (h!59153 newBucket!218)) (_2!30507 (h!59153 newBucket!218))))) lambda!215049)))

(assert (=> d!1502320 (= (addForallContainsKeyThenBeforeAdding!790 lt!1884696 lt!1885073 (_1!30507 (h!59153 newBucket!218)) (_2!30507 (h!59153 newBucket!218))) lt!1885451)))

(declare-fun bs!1107493 () Bool)

(assert (= bs!1107493 d!1502320))

(declare-fun m!5653169 () Bool)

(assert (=> bs!1107493 m!5653169))

(declare-fun m!5653171 () Bool)

(assert (=> bs!1107493 m!5653171))

(declare-fun m!5653173 () Bool)

(assert (=> bs!1107493 m!5653173))

(declare-fun m!5653175 () Bool)

(assert (=> bs!1107493 m!5653175))

(assert (=> b!4719790 d!1502320))

(declare-fun d!1502322 () Bool)

(declare-fun e!2943809 () Bool)

(assert (=> d!1502322 e!2943809))

(declare-fun res!1996644 () Bool)

(assert (=> d!1502322 (=> (not res!1996644) (not e!2943809))))

(declare-fun lt!1885476 () ListMap!5269)

(assert (=> d!1502322 (= res!1996644 (contains!16156 lt!1885476 (_1!30507 (h!59153 newBucket!218))))))

(declare-fun lt!1885474 () List!52936)

(assert (=> d!1502322 (= lt!1885476 (ListMap!5270 lt!1885474))))

(declare-fun lt!1885475 () Unit!129252)

(declare-fun lt!1885477 () Unit!129252)

(assert (=> d!1502322 (= lt!1885475 lt!1885477)))

(assert (=> d!1502322 (= (getValueByKey!1949 lt!1885474 (_1!30507 (h!59153 newBucket!218))) (Some!12352 (_2!30507 (h!59153 newBucket!218))))))

(assert (=> d!1502322 (= lt!1885477 (lemmaContainsTupThenGetReturnValue!1079 lt!1885474 (_1!30507 (h!59153 newBucket!218)) (_2!30507 (h!59153 newBucket!218))))))

(assert (=> d!1502322 (= lt!1885474 (insertNoDuplicatedKeys!587 (toList!5906 lt!1884696) (_1!30507 (h!59153 newBucket!218)) (_2!30507 (h!59153 newBucket!218))))))

(assert (=> d!1502322 (= (+!2263 lt!1884696 (h!59153 newBucket!218)) lt!1885476)))

(declare-fun b!4720289 () Bool)

(declare-fun res!1996643 () Bool)

(assert (=> b!4720289 (=> (not res!1996643) (not e!2943809))))

(assert (=> b!4720289 (= res!1996643 (= (getValueByKey!1949 (toList!5906 lt!1885476) (_1!30507 (h!59153 newBucket!218))) (Some!12352 (_2!30507 (h!59153 newBucket!218)))))))

(declare-fun b!4720290 () Bool)

(assert (=> b!4720290 (= e!2943809 (contains!16158 (toList!5906 lt!1885476) (h!59153 newBucket!218)))))

(assert (= (and d!1502322 res!1996644) b!4720289))

(assert (= (and b!4720289 res!1996643) b!4720290))

(declare-fun m!5653177 () Bool)

(assert (=> d!1502322 m!5653177))

(declare-fun m!5653179 () Bool)

(assert (=> d!1502322 m!5653179))

(declare-fun m!5653181 () Bool)

(assert (=> d!1502322 m!5653181))

(declare-fun m!5653183 () Bool)

(assert (=> d!1502322 m!5653183))

(declare-fun m!5653185 () Bool)

(assert (=> b!4720289 m!5653185))

(declare-fun m!5653187 () Bool)

(assert (=> b!4720290 m!5653187))

(assert (=> b!4719790 d!1502322))

(declare-fun d!1502324 () Bool)

(declare-fun res!1996645 () Bool)

(declare-fun e!2943812 () Bool)

(assert (=> d!1502324 (=> res!1996645 e!2943812)))

(assert (=> d!1502324 (= res!1996645 ((_ is Nil!52812) (t!360192 newBucket!218)))))

(assert (=> d!1502324 (= (forall!11574 (t!360192 newBucket!218) lambda!214987) e!2943812)))

(declare-fun b!4720295 () Bool)

(declare-fun e!2943813 () Bool)

(assert (=> b!4720295 (= e!2943812 e!2943813)))

(declare-fun res!1996646 () Bool)

(assert (=> b!4720295 (=> (not res!1996646) (not e!2943813))))

(assert (=> b!4720295 (= res!1996646 (dynLambda!21811 lambda!214987 (h!59153 (t!360192 newBucket!218))))))

(declare-fun b!4720296 () Bool)

(assert (=> b!4720296 (= e!2943813 (forall!11574 (t!360192 (t!360192 newBucket!218)) lambda!214987))))

(assert (= (and d!1502324 (not res!1996645)) b!4720295))

(assert (= (and b!4720295 res!1996646) b!4720296))

(declare-fun b_lambda!177991 () Bool)

(assert (=> (not b_lambda!177991) (not b!4720295)))

(declare-fun m!5653189 () Bool)

(assert (=> b!4720295 m!5653189))

(declare-fun m!5653191 () Bool)

(assert (=> b!4720296 m!5653191))

(assert (=> b!4719790 d!1502324))

(declare-fun d!1502326 () Bool)

(declare-fun e!2943819 () Bool)

(assert (=> d!1502326 e!2943819))

(declare-fun res!1996647 () Bool)

(assert (=> d!1502326 (=> res!1996647 e!2943819)))

(declare-fun e!2943816 () Bool)

(assert (=> d!1502326 (= res!1996647 e!2943816)))

(declare-fun res!1996649 () Bool)

(assert (=> d!1502326 (=> (not res!1996649) (not e!2943816))))

(declare-fun lt!1885480 () Bool)

(assert (=> d!1502326 (= res!1996649 (not lt!1885480))))

(declare-fun lt!1885481 () Bool)

(assert (=> d!1502326 (= lt!1885480 lt!1885481)))

(declare-fun lt!1885478 () Unit!129252)

(declare-fun e!2943818 () Unit!129252)

(assert (=> d!1502326 (= lt!1885478 e!2943818)))

(declare-fun c!806135 () Bool)

(assert (=> d!1502326 (= c!806135 lt!1885481)))

(assert (=> d!1502326 (= lt!1885481 (containsKey!3359 (toList!5906 lt!1885054) (_1!30507 (h!59153 newBucket!218))))))

(assert (=> d!1502326 (= (contains!16156 lt!1885054 (_1!30507 (h!59153 newBucket!218))) lt!1885480)))

(declare-fun b!4720297 () Bool)

(assert (=> b!4720297 false))

(declare-fun lt!1885479 () Unit!129252)

(declare-fun lt!1885483 () Unit!129252)

(assert (=> b!4720297 (= lt!1885479 lt!1885483)))

(assert (=> b!4720297 (containsKey!3359 (toList!5906 lt!1885054) (_1!30507 (h!59153 newBucket!218)))))

(assert (=> b!4720297 (= lt!1885483 (lemmaInGetKeysListThenContainsKey!944 (toList!5906 lt!1885054) (_1!30507 (h!59153 newBucket!218))))))

(declare-fun e!2943814 () Unit!129252)

(declare-fun Unit!129524 () Unit!129252)

(assert (=> b!4720297 (= e!2943814 Unit!129524)))

(declare-fun b!4720298 () Bool)

(declare-fun Unit!129525 () Unit!129252)

(assert (=> b!4720298 (= e!2943814 Unit!129525)))

(declare-fun b!4720299 () Bool)

(declare-fun e!2943815 () Bool)

(assert (=> b!4720299 (= e!2943819 e!2943815)))

(declare-fun res!1996648 () Bool)

(assert (=> b!4720299 (=> (not res!1996648) (not e!2943815))))

(assert (=> b!4720299 (= res!1996648 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1885054) (_1!30507 (h!59153 newBucket!218)))))))

(declare-fun b!4720300 () Bool)

(assert (=> b!4720300 (= e!2943818 e!2943814)))

(declare-fun c!806134 () Bool)

(declare-fun call!330043 () Bool)

(assert (=> b!4720300 (= c!806134 call!330043)))

(declare-fun b!4720301 () Bool)

(declare-fun e!2943817 () List!52939)

(assert (=> b!4720301 (= e!2943817 (keys!18962 lt!1885054))))

(declare-fun b!4720302 () Bool)

(declare-fun lt!1885482 () Unit!129252)

(assert (=> b!4720302 (= e!2943818 lt!1885482)))

(declare-fun lt!1885484 () Unit!129252)

(assert (=> b!4720302 (= lt!1885484 (lemmaContainsKeyImpliesGetValueByKeyDefined!1840 (toList!5906 lt!1885054) (_1!30507 (h!59153 newBucket!218))))))

(assert (=> b!4720302 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1885054) (_1!30507 (h!59153 newBucket!218))))))

(declare-fun lt!1885485 () Unit!129252)

(assert (=> b!4720302 (= lt!1885485 lt!1885484)))

(assert (=> b!4720302 (= lt!1885482 (lemmaInListThenGetKeysListContains!940 (toList!5906 lt!1885054) (_1!30507 (h!59153 newBucket!218))))))

(assert (=> b!4720302 call!330043))

(declare-fun b!4720303 () Bool)

(assert (=> b!4720303 (= e!2943816 (not (contains!16159 (keys!18962 lt!1885054) (_1!30507 (h!59153 newBucket!218)))))))

(declare-fun b!4720304 () Bool)

(assert (=> b!4720304 (= e!2943817 (getKeysList!945 (toList!5906 lt!1885054)))))

(declare-fun b!4720305 () Bool)

(assert (=> b!4720305 (= e!2943815 (contains!16159 (keys!18962 lt!1885054) (_1!30507 (h!59153 newBucket!218))))))

(declare-fun bm!330036 () Bool)

(assert (=> bm!330036 (= call!330043 (contains!16159 e!2943817 (_1!30507 (h!59153 newBucket!218))))))

(declare-fun c!806136 () Bool)

(assert (=> bm!330036 (= c!806136 c!806135)))

(assert (= (and d!1502326 c!806135) b!4720302))

(assert (= (and d!1502326 (not c!806135)) b!4720300))

(assert (= (and b!4720300 c!806134) b!4720297))

(assert (= (and b!4720300 (not c!806134)) b!4720298))

(assert (= (or b!4720302 b!4720300) bm!330036))

(assert (= (and bm!330036 c!806136) b!4720304))

(assert (= (and bm!330036 (not c!806136)) b!4720301))

(assert (= (and d!1502326 res!1996649) b!4720303))

(assert (= (and d!1502326 (not res!1996647)) b!4720299))

(assert (= (and b!4720299 res!1996648) b!4720305))

(declare-fun m!5653193 () Bool)

(assert (=> b!4720301 m!5653193))

(declare-fun m!5653195 () Bool)

(assert (=> b!4720302 m!5653195))

(declare-fun m!5653197 () Bool)

(assert (=> b!4720302 m!5653197))

(assert (=> b!4720302 m!5653197))

(declare-fun m!5653199 () Bool)

(assert (=> b!4720302 m!5653199))

(declare-fun m!5653201 () Bool)

(assert (=> b!4720302 m!5653201))

(declare-fun m!5653203 () Bool)

(assert (=> b!4720304 m!5653203))

(assert (=> b!4720299 m!5653197))

(assert (=> b!4720299 m!5653197))

(assert (=> b!4720299 m!5653199))

(assert (=> b!4720305 m!5653193))

(assert (=> b!4720305 m!5653193))

(declare-fun m!5653205 () Bool)

(assert (=> b!4720305 m!5653205))

(declare-fun m!5653207 () Bool)

(assert (=> bm!330036 m!5653207))

(assert (=> b!4720303 m!5653193))

(assert (=> b!4720303 m!5653193))

(assert (=> b!4720303 m!5653205))

(declare-fun m!5653209 () Bool)

(assert (=> d!1502326 m!5653209))

(assert (=> b!4720297 m!5653209))

(declare-fun m!5653211 () Bool)

(assert (=> b!4720297 m!5653211))

(assert (=> b!4719790 d!1502326))

(declare-fun d!1502328 () Bool)

(declare-fun lt!1885488 () Bool)

(assert (=> d!1502328 (= lt!1885488 (select (content!9384 (toList!5906 lt!1885026)) (h!59153 oldBucket!34)))))

(declare-fun e!2943826 () Bool)

(assert (=> d!1502328 (= lt!1885488 e!2943826)))

(declare-fun res!1996661 () Bool)

(assert (=> d!1502328 (=> (not res!1996661) (not e!2943826))))

(assert (=> d!1502328 (= res!1996661 ((_ is Cons!52812) (toList!5906 lt!1885026)))))

(assert (=> d!1502328 (= (contains!16158 (toList!5906 lt!1885026) (h!59153 oldBucket!34)) lt!1885488)))

(declare-fun b!4720316 () Bool)

(declare-fun e!2943827 () Bool)

(assert (=> b!4720316 (= e!2943826 e!2943827)))

(declare-fun res!1996660 () Bool)

(assert (=> b!4720316 (=> res!1996660 e!2943827)))

(assert (=> b!4720316 (= res!1996660 (= (h!59153 (toList!5906 lt!1885026)) (h!59153 oldBucket!34)))))

(declare-fun b!4720317 () Bool)

(assert (=> b!4720317 (= e!2943827 (contains!16158 (t!360192 (toList!5906 lt!1885026)) (h!59153 oldBucket!34)))))

(assert (= (and d!1502328 res!1996661) b!4720316))

(assert (= (and b!4720316 (not res!1996660)) b!4720317))

(declare-fun m!5653213 () Bool)

(assert (=> d!1502328 m!5653213))

(declare-fun m!5653215 () Bool)

(assert (=> d!1502328 m!5653215))

(declare-fun m!5653217 () Bool)

(assert (=> b!4720317 m!5653217))

(assert (=> b!4719759 d!1502328))

(declare-fun d!1502330 () Bool)

(declare-fun res!1996662 () Bool)

(declare-fun e!2943828 () Bool)

(assert (=> d!1502330 (=> res!1996662 e!2943828)))

(assert (=> d!1502330 (= res!1996662 ((_ is Nil!52812) (Cons!52812 lt!1884698 lt!1884694)))))

(assert (=> d!1502330 (= (forall!11574 (Cons!52812 lt!1884698 lt!1884694) lambda!214975) e!2943828)))

(declare-fun b!4720318 () Bool)

(declare-fun e!2943829 () Bool)

(assert (=> b!4720318 (= e!2943828 e!2943829)))

(declare-fun res!1996663 () Bool)

(assert (=> b!4720318 (=> (not res!1996663) (not e!2943829))))

(assert (=> b!4720318 (= res!1996663 (dynLambda!21811 lambda!214975 (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))

(declare-fun b!4720319 () Bool)

(assert (=> b!4720319 (= e!2943829 (forall!11574 (t!360192 (Cons!52812 lt!1884698 lt!1884694)) lambda!214975))))

(assert (= (and d!1502330 (not res!1996662)) b!4720318))

(assert (= (and b!4720318 res!1996663) b!4720319))

(declare-fun b_lambda!177993 () Bool)

(assert (=> (not b_lambda!177993) (not b!4720318)))

(declare-fun m!5653219 () Bool)

(assert (=> b!4720318 m!5653219))

(declare-fun m!5653221 () Bool)

(assert (=> b!4720319 m!5653221))

(assert (=> d!1502028 d!1502330))

(declare-fun d!1502332 () Bool)

(declare-fun res!1996664 () Bool)

(declare-fun e!2943830 () Bool)

(assert (=> d!1502332 (=> res!1996664 e!2943830)))

(assert (=> d!1502332 (= res!1996664 (not ((_ is Cons!52812) (Cons!52812 lt!1884698 lt!1884694))))))

(assert (=> d!1502332 (= (noDuplicateKeys!2008 (Cons!52812 lt!1884698 lt!1884694)) e!2943830)))

(declare-fun b!4720320 () Bool)

(declare-fun e!2943831 () Bool)

(assert (=> b!4720320 (= e!2943830 e!2943831)))

(declare-fun res!1996665 () Bool)

(assert (=> b!4720320 (=> (not res!1996665) (not e!2943831))))

(assert (=> b!4720320 (= res!1996665 (not (containsKey!3357 (t!360192 (Cons!52812 lt!1884698 lt!1884694)) (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694))))))))

(declare-fun b!4720321 () Bool)

(assert (=> b!4720321 (= e!2943831 (noDuplicateKeys!2008 (t!360192 (Cons!52812 lt!1884698 lt!1884694))))))

(assert (= (and d!1502332 (not res!1996664)) b!4720320))

(assert (= (and b!4720320 res!1996665) b!4720321))

(declare-fun m!5653223 () Bool)

(assert (=> b!4720320 m!5653223))

(assert (=> b!4720321 m!5652529))

(assert (=> d!1502028 d!1502332))

(declare-fun d!1502334 () Bool)

(assert (=> d!1502334 (= (invariantList!1505 (toList!5906 lt!1885076)) (noDuplicatedKeys!370 (toList!5906 lt!1885076)))))

(declare-fun bs!1107494 () Bool)

(assert (= bs!1107494 d!1502334))

(declare-fun m!5653225 () Bool)

(assert (=> bs!1107494 m!5653225))

(assert (=> b!4719797 d!1502334))

(declare-fun bs!1107495 () Bool)

(declare-fun b!4720324 () Bool)

(assert (= bs!1107495 (and b!4720324 b!4719837)))

(declare-fun lambda!215050 () Int)

(assert (=> bs!1107495 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885120) (= lambda!215050 lambda!215001))))

(declare-fun bs!1107496 () Bool)

(assert (= bs!1107496 (and b!4720324 b!4719725)))

(assert (=> bs!1107496 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885008) (= lambda!215050 lambda!214981))))

(declare-fun bs!1107497 () Bool)

(assert (= bs!1107497 (and b!4720324 d!1502146)))

(assert (=> bs!1107497 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884963) (= lambda!215050 lambda!215012))))

(declare-fun bs!1107498 () Bool)

(assert (= bs!1107498 (and b!4720324 b!4719715)))

(assert (=> bs!1107498 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884963) (= lambda!215050 lambda!214974))))

(declare-fun bs!1107499 () Bool)

(assert (= bs!1107499 (and b!4720324 d!1501954)))

(assert (=> bs!1107499 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884817) (= lambda!215050 lambda!214951))))

(declare-fun bs!1107500 () Bool)

(assert (= bs!1107500 (and b!4720324 b!4719726)))

(assert (=> bs!1107500 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215050 lambda!214977))))

(declare-fun bs!1107501 () Bool)

(assert (= bs!1107501 (and b!4720324 b!4719652)))

(assert (=> bs!1107501 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884835) (= lambda!215050 lambda!214950))))

(declare-fun bs!1107502 () Bool)

(assert (= bs!1107502 (and b!4720324 b!4719990)))

(assert (=> bs!1107502 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885226) (= lambda!215050 lambda!215015))))

(declare-fun bs!1107503 () Bool)

(assert (= bs!1107503 (and b!4720324 d!1502076)))

(assert (=> bs!1107503 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885102) (= lambda!215050 lambda!215002))))

(declare-fun bs!1107504 () Bool)

(assert (= bs!1107504 (and b!4720324 b!4720197)))

(assert (=> bs!1107504 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215050 lambda!215040))))

(declare-fun bs!1107505 () Bool)

(assert (= bs!1107505 (and b!4720324 b!4719957)))

(assert (=> bs!1107505 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215050 lambda!215005))))

(declare-fun bs!1107506 () Bool)

(assert (= bs!1107506 (and b!4720324 b!4720019)))

(assert (=> bs!1107506 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215050 lambda!215018))))

(declare-fun bs!1107507 () Bool)

(assert (= bs!1107507 (and b!4720324 d!1501952)))

(assert (=> bs!1107507 (not (= lambda!215050 lambda!214879))))

(assert (=> bs!1107501 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215050 lambda!214949))))

(assert (=> bs!1107502 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215050 lambda!215014))))

(declare-fun bs!1107508 () Bool)

(assert (= bs!1107508 (and b!4720324 d!1502126)))

(assert (=> bs!1107508 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885172) (= lambda!215050 lambda!215007))))

(declare-fun bs!1107509 () Bool)

(assert (= bs!1107509 (and b!4720324 b!4719838)))

(assert (=> bs!1107509 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215050 lambda!214999))))

(declare-fun bs!1107510 () Bool)

(assert (= bs!1107510 (and b!4720324 b!4719716)))

(assert (=> bs!1107510 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215050 lambda!214972))))

(declare-fun bs!1107511 () Bool)

(assert (= bs!1107511 (and b!4720324 b!4720254)))

(assert (=> bs!1107511 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215050 lambda!215046))))

(declare-fun bs!1107512 () Bool)

(assert (= bs!1107512 (and b!4720324 b!4719796)))

(assert (=> bs!1107512 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215050 lambda!214989))))

(assert (=> bs!1107498 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215050 lambda!214973))))

(declare-fun bs!1107513 () Bool)

(assert (= bs!1107513 (and b!4720324 b!4720018)))

(assert (=> bs!1107513 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885264) (= lambda!215050 lambda!215020))))

(declare-fun bs!1107514 () Bool)

(assert (= bs!1107514 (and b!4720324 d!1502174)))

(assert (=> bs!1107514 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885246) (= lambda!215050 lambda!215021))))

(declare-fun bs!1107515 () Bool)

(assert (= bs!1107515 (and b!4720324 d!1502298)))

(assert (=> bs!1107515 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884835) (= lambda!215050 lambda!215044))))

(declare-fun bs!1107516 () Bool)

(assert (= bs!1107516 (and b!4720324 d!1502170)))

(assert (=> bs!1107516 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885008) (= lambda!215050 lambda!215017))))

(declare-fun bs!1107517 () Bool)

(assert (= bs!1107517 (and b!4720324 d!1502154)))

(assert (=> bs!1107517 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885208) (= lambda!215050 lambda!215016))))

(declare-fun bs!1107518 () Bool)

(assert (= bs!1107518 (and b!4720324 d!1502052)))

(assert (=> bs!1107518 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885076) (= lambda!215050 lambda!214992))))

(declare-fun bs!1107519 () Bool)

(assert (= bs!1107519 (and b!4720324 b!4719790)))

(assert (=> bs!1107519 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215050 lambda!214986))))

(declare-fun bs!1107520 () Bool)

(assert (= bs!1107520 (and b!4720324 d!1502320)))

(assert (=> bs!1107520 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885073) (= lambda!215050 lambda!215049))))

(declare-fun bs!1107521 () Bool)

(assert (= bs!1107521 (and b!4720324 d!1502050)))

(assert (=> bs!1107521 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885055) (= lambda!215050 lambda!214988))))

(declare-fun bs!1107522 () Bool)

(assert (= bs!1107522 (and b!4720324 b!4720198)))

(assert (=> bs!1107522 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215050 lambda!215038))))

(assert (=> bs!1107504 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885389) (= lambda!215050 lambda!215042))))

(assert (=> bs!1107495 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215050 lambda!215000))))

(declare-fun bs!1107523 () Bool)

(assert (= bs!1107523 (and b!4720324 b!4719958)))

(assert (=> bs!1107523 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215050 lambda!215004))))

(declare-fun bs!1107524 () Bool)

(assert (= bs!1107524 (and b!4720324 b!4719791)))

(assert (=> bs!1107524 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215050 lambda!214985))))

(declare-fun bs!1107525 () Bool)

(assert (= bs!1107525 (and b!4720324 b!4719991)))

(assert (=> bs!1107525 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215050 lambda!215013))))

(declare-fun bs!1107526 () Bool)

(assert (= bs!1107526 (and b!4720324 d!1502308)))

(assert (=> bs!1107526 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885428) (= lambda!215050 lambda!215048))))

(assert (=> bs!1107519 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885073) (= lambda!215050 lambda!214987))))

(declare-fun bs!1107527 () Bool)

(assert (= bs!1107527 (and b!4720324 d!1502034)))

(assert (=> bs!1107527 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884990) (= lambda!215050 lambda!214982))))

(assert (=> bs!1107496 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215050 lambda!214979))))

(assert (=> bs!1107511 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885446) (= lambda!215050 lambda!215047))))

(declare-fun bs!1107528 () Bool)

(assert (= bs!1107528 (and b!4720324 d!1502226)))

(assert (=> bs!1107528 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215050 lambda!215030))))

(declare-fun bs!1107529 () Bool)

(assert (= bs!1107529 (and b!4720324 b!4719653)))

(assert (=> bs!1107529 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215050 lambda!214948))))

(declare-fun bs!1107530 () Bool)

(assert (= bs!1107530 (and b!4720324 b!4720255)))

(assert (=> bs!1107530 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215050 lambda!215045))))

(declare-fun bs!1107531 () Bool)

(assert (= bs!1107531 (and b!4720324 d!1502062)))

(assert (=> bs!1107531 (not (= lambda!215050 lambda!214995))))

(declare-fun bs!1107532 () Bool)

(assert (= bs!1107532 (and b!4720324 d!1502028)))

(assert (=> bs!1107532 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884945) (= lambda!215050 lambda!214975))))

(assert (=> bs!1107505 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885190) (= lambda!215050 lambda!215006))))

(declare-fun bs!1107533 () Bool)

(assert (= bs!1107533 (and b!4720324 b!4719795)))

(assert (=> bs!1107533 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885094) (= lambda!215050 lambda!214991))))

(assert (=> bs!1107513 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215050 lambda!215019))))

(declare-fun bs!1107534 () Bool)

(assert (= bs!1107534 (and b!4720324 d!1502272)))

(assert (=> bs!1107534 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885371) (= lambda!215050 lambda!215043))))

(assert (=> bs!1107533 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215050 lambda!214990))))

(assert (=> b!4720324 true))

(declare-fun bs!1107535 () Bool)

(declare-fun b!4720323 () Bool)

(assert (= bs!1107535 (and b!4720323 b!4719837)))

(declare-fun lambda!215051 () Int)

(assert (=> bs!1107535 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885120) (= lambda!215051 lambda!215001))))

(declare-fun bs!1107536 () Bool)

(assert (= bs!1107536 (and b!4720323 b!4719725)))

(assert (=> bs!1107536 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885008) (= lambda!215051 lambda!214981))))

(declare-fun bs!1107537 () Bool)

(assert (= bs!1107537 (and b!4720323 d!1502146)))

(assert (=> bs!1107537 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884963) (= lambda!215051 lambda!215012))))

(declare-fun bs!1107538 () Bool)

(assert (= bs!1107538 (and b!4720323 b!4719715)))

(assert (=> bs!1107538 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884963) (= lambda!215051 lambda!214974))))

(declare-fun bs!1107539 () Bool)

(assert (= bs!1107539 (and b!4720323 d!1501954)))

(assert (=> bs!1107539 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884817) (= lambda!215051 lambda!214951))))

(declare-fun bs!1107540 () Bool)

(assert (= bs!1107540 (and b!4720323 b!4719726)))

(assert (=> bs!1107540 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215051 lambda!214977))))

(declare-fun bs!1107541 () Bool)

(assert (= bs!1107541 (and b!4720323 b!4719652)))

(assert (=> bs!1107541 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884835) (= lambda!215051 lambda!214950))))

(declare-fun bs!1107542 () Bool)

(assert (= bs!1107542 (and b!4720323 b!4719990)))

(assert (=> bs!1107542 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885226) (= lambda!215051 lambda!215015))))

(declare-fun bs!1107543 () Bool)

(assert (= bs!1107543 (and b!4720323 d!1502076)))

(assert (=> bs!1107543 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885102) (= lambda!215051 lambda!215002))))

(declare-fun bs!1107544 () Bool)

(assert (= bs!1107544 (and b!4720323 b!4720197)))

(assert (=> bs!1107544 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215051 lambda!215040))))

(declare-fun bs!1107545 () Bool)

(assert (= bs!1107545 (and b!4720323 b!4719957)))

(assert (=> bs!1107545 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215051 lambda!215005))))

(declare-fun bs!1107546 () Bool)

(assert (= bs!1107546 (and b!4720323 b!4720019)))

(assert (=> bs!1107546 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215051 lambda!215018))))

(declare-fun bs!1107547 () Bool)

(assert (= bs!1107547 (and b!4720323 d!1501952)))

(assert (=> bs!1107547 (not (= lambda!215051 lambda!214879))))

(assert (=> bs!1107541 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215051 lambda!214949))))

(assert (=> bs!1107542 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215051 lambda!215014))))

(declare-fun bs!1107548 () Bool)

(assert (= bs!1107548 (and b!4720323 d!1502126)))

(assert (=> bs!1107548 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885172) (= lambda!215051 lambda!215007))))

(declare-fun bs!1107549 () Bool)

(assert (= bs!1107549 (and b!4720323 b!4719838)))

(assert (=> bs!1107549 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215051 lambda!214999))))

(declare-fun bs!1107550 () Bool)

(assert (= bs!1107550 (and b!4720323 b!4719716)))

(assert (=> bs!1107550 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215051 lambda!214972))))

(declare-fun bs!1107551 () Bool)

(assert (= bs!1107551 (and b!4720323 b!4720254)))

(assert (=> bs!1107551 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215051 lambda!215046))))

(declare-fun bs!1107552 () Bool)

(assert (= bs!1107552 (and b!4720323 b!4719796)))

(assert (=> bs!1107552 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215051 lambda!214989))))

(assert (=> bs!1107538 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215051 lambda!214973))))

(declare-fun bs!1107553 () Bool)

(assert (= bs!1107553 (and b!4720323 b!4720018)))

(assert (=> bs!1107553 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885264) (= lambda!215051 lambda!215020))))

(declare-fun bs!1107554 () Bool)

(assert (= bs!1107554 (and b!4720323 d!1502174)))

(assert (=> bs!1107554 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885246) (= lambda!215051 lambda!215021))))

(declare-fun bs!1107555 () Bool)

(assert (= bs!1107555 (and b!4720323 d!1502298)))

(assert (=> bs!1107555 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884835) (= lambda!215051 lambda!215044))))

(declare-fun bs!1107556 () Bool)

(assert (= bs!1107556 (and b!4720323 d!1502170)))

(assert (=> bs!1107556 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885008) (= lambda!215051 lambda!215017))))

(declare-fun bs!1107557 () Bool)

(assert (= bs!1107557 (and b!4720323 d!1502154)))

(assert (=> bs!1107557 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885208) (= lambda!215051 lambda!215016))))

(declare-fun bs!1107559 () Bool)

(assert (= bs!1107559 (and b!4720323 d!1502052)))

(assert (=> bs!1107559 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885076) (= lambda!215051 lambda!214992))))

(declare-fun bs!1107560 () Bool)

(assert (= bs!1107560 (and b!4720323 b!4719790)))

(assert (=> bs!1107560 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215051 lambda!214986))))

(declare-fun bs!1107561 () Bool)

(assert (= bs!1107561 (and b!4720323 d!1502320)))

(assert (=> bs!1107561 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885073) (= lambda!215051 lambda!215049))))

(declare-fun bs!1107562 () Bool)

(assert (= bs!1107562 (and b!4720323 d!1502050)))

(assert (=> bs!1107562 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885055) (= lambda!215051 lambda!214988))))

(declare-fun bs!1107563 () Bool)

(assert (= bs!1107563 (and b!4720323 b!4720198)))

(assert (=> bs!1107563 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215051 lambda!215038))))

(assert (=> bs!1107544 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885389) (= lambda!215051 lambda!215042))))

(assert (=> bs!1107535 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215051 lambda!215000))))

(declare-fun bs!1107564 () Bool)

(assert (= bs!1107564 (and b!4720323 b!4720324)))

(assert (=> bs!1107564 (= lambda!215051 lambda!215050)))

(declare-fun bs!1107565 () Bool)

(assert (= bs!1107565 (and b!4720323 b!4719958)))

(assert (=> bs!1107565 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215051 lambda!215004))))

(declare-fun bs!1107566 () Bool)

(assert (= bs!1107566 (and b!4720323 b!4719791)))

(assert (=> bs!1107566 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215051 lambda!214985))))

(declare-fun bs!1107567 () Bool)

(assert (= bs!1107567 (and b!4720323 b!4719991)))

(assert (=> bs!1107567 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215051 lambda!215013))))

(declare-fun bs!1107568 () Bool)

(assert (= bs!1107568 (and b!4720323 d!1502308)))

(assert (=> bs!1107568 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885428) (= lambda!215051 lambda!215048))))

(assert (=> bs!1107560 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885073) (= lambda!215051 lambda!214987))))

(declare-fun bs!1107569 () Bool)

(assert (= bs!1107569 (and b!4720323 d!1502034)))

(assert (=> bs!1107569 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884990) (= lambda!215051 lambda!214982))))

(assert (=> bs!1107536 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215051 lambda!214979))))

(assert (=> bs!1107551 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885446) (= lambda!215051 lambda!215047))))

(declare-fun bs!1107570 () Bool)

(assert (= bs!1107570 (and b!4720323 d!1502226)))

(assert (=> bs!1107570 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215051 lambda!215030))))

(declare-fun bs!1107571 () Bool)

(assert (= bs!1107571 (and b!4720323 b!4719653)))

(assert (=> bs!1107571 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215051 lambda!214948))))

(declare-fun bs!1107572 () Bool)

(assert (= bs!1107572 (and b!4720323 b!4720255)))

(assert (=> bs!1107572 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215051 lambda!215045))))

(declare-fun bs!1107573 () Bool)

(assert (= bs!1107573 (and b!4720323 d!1502062)))

(assert (=> bs!1107573 (not (= lambda!215051 lambda!214995))))

(declare-fun bs!1107574 () Bool)

(assert (= bs!1107574 (and b!4720323 d!1502028)))

(assert (=> bs!1107574 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884945) (= lambda!215051 lambda!214975))))

(assert (=> bs!1107545 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885190) (= lambda!215051 lambda!215006))))

(declare-fun bs!1107575 () Bool)

(assert (= bs!1107575 (and b!4720323 b!4719795)))

(assert (=> bs!1107575 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885094) (= lambda!215051 lambda!214991))))

(assert (=> bs!1107553 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215051 lambda!215019))))

(declare-fun bs!1107576 () Bool)

(assert (= bs!1107576 (and b!4720323 d!1502272)))

(assert (=> bs!1107576 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885371) (= lambda!215051 lambda!215043))))

(assert (=> bs!1107575 (= (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1884696) (= lambda!215051 lambda!214990))))

(assert (=> b!4720323 true))

(declare-fun lt!1885509 () ListMap!5269)

(declare-fun lambda!215052 () Int)

(assert (=> bs!1107535 (= (= lt!1885509 lt!1885120) (= lambda!215052 lambda!215001))))

(assert (=> bs!1107536 (= (= lt!1885509 lt!1885008) (= lambda!215052 lambda!214981))))

(assert (=> bs!1107537 (= (= lt!1885509 lt!1884963) (= lambda!215052 lambda!215012))))

(assert (=> bs!1107538 (= (= lt!1885509 lt!1884963) (= lambda!215052 lambda!214974))))

(assert (=> bs!1107539 (= (= lt!1885509 lt!1884817) (= lambda!215052 lambda!214951))))

(assert (=> bs!1107540 (= (= lt!1885509 lt!1884696) (= lambda!215052 lambda!214977))))

(assert (=> bs!1107541 (= (= lt!1885509 lt!1884835) (= lambda!215052 lambda!214950))))

(assert (=> bs!1107542 (= (= lt!1885509 lt!1885226) (= lambda!215052 lambda!215015))))

(assert (=> bs!1107543 (= (= lt!1885509 lt!1885102) (= lambda!215052 lambda!215002))))

(assert (=> bs!1107544 (= (= lt!1885509 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215052 lambda!215040))))

(assert (=> bs!1107545 (= (= lt!1885509 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215052 lambda!215005))))

(assert (=> bs!1107546 (= (= lt!1885509 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215052 lambda!215018))))

(assert (=> bs!1107547 (not (= lambda!215052 lambda!214879))))

(assert (=> bs!1107541 (= (= lt!1885509 lt!1884696) (= lambda!215052 lambda!214949))))

(assert (=> bs!1107542 (= (= lt!1885509 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215052 lambda!215014))))

(assert (=> b!4720323 (= (= lt!1885509 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215052 lambda!215051))))

(assert (=> bs!1107548 (= (= lt!1885509 lt!1885172) (= lambda!215052 lambda!215007))))

(assert (=> bs!1107549 (= (= lt!1885509 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215052 lambda!214999))))

(assert (=> bs!1107550 (= (= lt!1885509 lt!1884696) (= lambda!215052 lambda!214972))))

(assert (=> bs!1107551 (= (= lt!1885509 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215052 lambda!215046))))

(assert (=> bs!1107552 (= (= lt!1885509 lt!1884696) (= lambda!215052 lambda!214989))))

(assert (=> bs!1107538 (= (= lt!1885509 lt!1884696) (= lambda!215052 lambda!214973))))

(assert (=> bs!1107553 (= (= lt!1885509 lt!1885264) (= lambda!215052 lambda!215020))))

(assert (=> bs!1107554 (= (= lt!1885509 lt!1885246) (= lambda!215052 lambda!215021))))

(assert (=> bs!1107555 (= (= lt!1885509 lt!1884835) (= lambda!215052 lambda!215044))))

(assert (=> bs!1107556 (= (= lt!1885509 lt!1885008) (= lambda!215052 lambda!215017))))

(assert (=> bs!1107557 (= (= lt!1885509 lt!1885208) (= lambda!215052 lambda!215016))))

(assert (=> bs!1107559 (= (= lt!1885509 lt!1885076) (= lambda!215052 lambda!214992))))

(assert (=> bs!1107560 (= (= lt!1885509 lt!1884696) (= lambda!215052 lambda!214986))))

(assert (=> bs!1107561 (= (= lt!1885509 lt!1885073) (= lambda!215052 lambda!215049))))

(assert (=> bs!1107562 (= (= lt!1885509 lt!1885055) (= lambda!215052 lambda!214988))))

(assert (=> bs!1107563 (= (= lt!1885509 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215052 lambda!215038))))

(assert (=> bs!1107544 (= (= lt!1885509 lt!1885389) (= lambda!215052 lambda!215042))))

(assert (=> bs!1107535 (= (= lt!1885509 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215052 lambda!215000))))

(assert (=> bs!1107564 (= (= lt!1885509 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215052 lambda!215050))))

(assert (=> bs!1107565 (= (= lt!1885509 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215052 lambda!215004))))

(assert (=> bs!1107566 (= (= lt!1885509 lt!1884696) (= lambda!215052 lambda!214985))))

(assert (=> bs!1107567 (= (= lt!1885509 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215052 lambda!215013))))

(assert (=> bs!1107568 (= (= lt!1885509 lt!1885428) (= lambda!215052 lambda!215048))))

(assert (=> bs!1107560 (= (= lt!1885509 lt!1885073) (= lambda!215052 lambda!214987))))

(assert (=> bs!1107569 (= (= lt!1885509 lt!1884990) (= lambda!215052 lambda!214982))))

(assert (=> bs!1107536 (= (= lt!1885509 lt!1884696) (= lambda!215052 lambda!214979))))

(assert (=> bs!1107551 (= (= lt!1885509 lt!1885446) (= lambda!215052 lambda!215047))))

(assert (=> bs!1107570 (= (= lt!1885509 lt!1884696) (= lambda!215052 lambda!215030))))

(assert (=> bs!1107571 (= (= lt!1885509 lt!1884696) (= lambda!215052 lambda!214948))))

(assert (=> bs!1107572 (= (= lt!1885509 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215052 lambda!215045))))

(assert (=> bs!1107573 (not (= lambda!215052 lambda!214995))))

(assert (=> bs!1107574 (= (= lt!1885509 lt!1884945) (= lambda!215052 lambda!214975))))

(assert (=> bs!1107545 (= (= lt!1885509 lt!1885190) (= lambda!215052 lambda!215006))))

(assert (=> bs!1107575 (= (= lt!1885509 lt!1885094) (= lambda!215052 lambda!214991))))

(assert (=> bs!1107553 (= (= lt!1885509 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215052 lambda!215019))))

(assert (=> bs!1107576 (= (= lt!1885509 lt!1885371) (= lambda!215052 lambda!215043))))

(assert (=> bs!1107575 (= (= lt!1885509 lt!1884696) (= lambda!215052 lambda!214990))))

(assert (=> b!4720323 true))

(declare-fun bs!1107580 () Bool)

(declare-fun d!1502336 () Bool)

(assert (= bs!1107580 (and d!1502336 b!4719837)))

(declare-fun lambda!215056 () Int)

(declare-fun lt!1885491 () ListMap!5269)

(assert (=> bs!1107580 (= (= lt!1885491 lt!1885120) (= lambda!215056 lambda!215001))))

(declare-fun bs!1107582 () Bool)

(assert (= bs!1107582 (and d!1502336 b!4719725)))

(assert (=> bs!1107582 (= (= lt!1885491 lt!1885008) (= lambda!215056 lambda!214981))))

(declare-fun bs!1107583 () Bool)

(assert (= bs!1107583 (and d!1502336 d!1502146)))

(assert (=> bs!1107583 (= (= lt!1885491 lt!1884963) (= lambda!215056 lambda!215012))))

(declare-fun bs!1107585 () Bool)

(assert (= bs!1107585 (and d!1502336 b!4719715)))

(assert (=> bs!1107585 (= (= lt!1885491 lt!1884963) (= lambda!215056 lambda!214974))))

(declare-fun bs!1107587 () Bool)

(assert (= bs!1107587 (and d!1502336 b!4720323)))

(assert (=> bs!1107587 (= (= lt!1885491 lt!1885509) (= lambda!215056 lambda!215052))))

(declare-fun bs!1107589 () Bool)

(assert (= bs!1107589 (and d!1502336 d!1501954)))

(assert (=> bs!1107589 (= (= lt!1885491 lt!1884817) (= lambda!215056 lambda!214951))))

(declare-fun bs!1107590 () Bool)

(assert (= bs!1107590 (and d!1502336 b!4719726)))

(assert (=> bs!1107590 (= (= lt!1885491 lt!1884696) (= lambda!215056 lambda!214977))))

(declare-fun bs!1107592 () Bool)

(assert (= bs!1107592 (and d!1502336 b!4719652)))

(assert (=> bs!1107592 (= (= lt!1885491 lt!1884835) (= lambda!215056 lambda!214950))))

(declare-fun bs!1107594 () Bool)

(assert (= bs!1107594 (and d!1502336 b!4719990)))

(assert (=> bs!1107594 (= (= lt!1885491 lt!1885226) (= lambda!215056 lambda!215015))))

(declare-fun bs!1107596 () Bool)

(assert (= bs!1107596 (and d!1502336 d!1502076)))

(assert (=> bs!1107596 (= (= lt!1885491 lt!1885102) (= lambda!215056 lambda!215002))))

(declare-fun bs!1107597 () Bool)

(assert (= bs!1107597 (and d!1502336 b!4720197)))

(assert (=> bs!1107597 (= (= lt!1885491 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215056 lambda!215040))))

(declare-fun bs!1107599 () Bool)

(assert (= bs!1107599 (and d!1502336 b!4719957)))

(assert (=> bs!1107599 (= (= lt!1885491 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215056 lambda!215005))))

(declare-fun bs!1107601 () Bool)

(assert (= bs!1107601 (and d!1502336 b!4720019)))

(assert (=> bs!1107601 (= (= lt!1885491 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215056 lambda!215018))))

(declare-fun bs!1107602 () Bool)

(assert (= bs!1107602 (and d!1502336 d!1501952)))

(assert (=> bs!1107602 (not (= lambda!215056 lambda!214879))))

(assert (=> bs!1107592 (= (= lt!1885491 lt!1884696) (= lambda!215056 lambda!214949))))

(assert (=> bs!1107594 (= (= lt!1885491 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215056 lambda!215014))))

(assert (=> bs!1107587 (= (= lt!1885491 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215056 lambda!215051))))

(declare-fun bs!1107605 () Bool)

(assert (= bs!1107605 (and d!1502336 d!1502126)))

(assert (=> bs!1107605 (= (= lt!1885491 lt!1885172) (= lambda!215056 lambda!215007))))

(declare-fun bs!1107607 () Bool)

(assert (= bs!1107607 (and d!1502336 b!4719838)))

(assert (=> bs!1107607 (= (= lt!1885491 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215056 lambda!214999))))

(declare-fun bs!1107608 () Bool)

(assert (= bs!1107608 (and d!1502336 b!4719716)))

(assert (=> bs!1107608 (= (= lt!1885491 lt!1884696) (= lambda!215056 lambda!214972))))

(declare-fun bs!1107610 () Bool)

(assert (= bs!1107610 (and d!1502336 b!4720254)))

(assert (=> bs!1107610 (= (= lt!1885491 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215056 lambda!215046))))

(declare-fun bs!1107611 () Bool)

(assert (= bs!1107611 (and d!1502336 b!4719796)))

(assert (=> bs!1107611 (= (= lt!1885491 lt!1884696) (= lambda!215056 lambda!214989))))

(assert (=> bs!1107585 (= (= lt!1885491 lt!1884696) (= lambda!215056 lambda!214973))))

(declare-fun bs!1107613 () Bool)

(assert (= bs!1107613 (and d!1502336 b!4720018)))

(assert (=> bs!1107613 (= (= lt!1885491 lt!1885264) (= lambda!215056 lambda!215020))))

(declare-fun bs!1107614 () Bool)

(assert (= bs!1107614 (and d!1502336 d!1502174)))

(assert (=> bs!1107614 (= (= lt!1885491 lt!1885246) (= lambda!215056 lambda!215021))))

(declare-fun bs!1107616 () Bool)

(assert (= bs!1107616 (and d!1502336 d!1502298)))

(assert (=> bs!1107616 (= (= lt!1885491 lt!1884835) (= lambda!215056 lambda!215044))))

(declare-fun bs!1107617 () Bool)

(assert (= bs!1107617 (and d!1502336 d!1502170)))

(assert (=> bs!1107617 (= (= lt!1885491 lt!1885008) (= lambda!215056 lambda!215017))))

(declare-fun bs!1107618 () Bool)

(assert (= bs!1107618 (and d!1502336 d!1502154)))

(assert (=> bs!1107618 (= (= lt!1885491 lt!1885208) (= lambda!215056 lambda!215016))))

(declare-fun bs!1107620 () Bool)

(assert (= bs!1107620 (and d!1502336 d!1502052)))

(assert (=> bs!1107620 (= (= lt!1885491 lt!1885076) (= lambda!215056 lambda!214992))))

(declare-fun bs!1107621 () Bool)

(assert (= bs!1107621 (and d!1502336 b!4719790)))

(assert (=> bs!1107621 (= (= lt!1885491 lt!1884696) (= lambda!215056 lambda!214986))))

(declare-fun bs!1107623 () Bool)

(assert (= bs!1107623 (and d!1502336 d!1502320)))

(assert (=> bs!1107623 (= (= lt!1885491 lt!1885073) (= lambda!215056 lambda!215049))))

(declare-fun bs!1107625 () Bool)

(assert (= bs!1107625 (and d!1502336 d!1502050)))

(assert (=> bs!1107625 (= (= lt!1885491 lt!1885055) (= lambda!215056 lambda!214988))))

(declare-fun bs!1107626 () Bool)

(assert (= bs!1107626 (and d!1502336 b!4720198)))

(assert (=> bs!1107626 (= (= lt!1885491 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215056 lambda!215038))))

(assert (=> bs!1107597 (= (= lt!1885491 lt!1885389) (= lambda!215056 lambda!215042))))

(assert (=> bs!1107580 (= (= lt!1885491 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215056 lambda!215000))))

(declare-fun bs!1107628 () Bool)

(assert (= bs!1107628 (and d!1502336 b!4720324)))

(assert (=> bs!1107628 (= (= lt!1885491 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215056 lambda!215050))))

(declare-fun bs!1107629 () Bool)

(assert (= bs!1107629 (and d!1502336 b!4719958)))

(assert (=> bs!1107629 (= (= lt!1885491 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215056 lambda!215004))))

(declare-fun bs!1107630 () Bool)

(assert (= bs!1107630 (and d!1502336 b!4719791)))

(assert (=> bs!1107630 (= (= lt!1885491 lt!1884696) (= lambda!215056 lambda!214985))))

(declare-fun bs!1107631 () Bool)

(assert (= bs!1107631 (and d!1502336 b!4719991)))

(assert (=> bs!1107631 (= (= lt!1885491 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215056 lambda!215013))))

(declare-fun bs!1107632 () Bool)

(assert (= bs!1107632 (and d!1502336 d!1502308)))

(assert (=> bs!1107632 (= (= lt!1885491 lt!1885428) (= lambda!215056 lambda!215048))))

(assert (=> bs!1107621 (= (= lt!1885491 lt!1885073) (= lambda!215056 lambda!214987))))

(declare-fun bs!1107633 () Bool)

(assert (= bs!1107633 (and d!1502336 d!1502034)))

(assert (=> bs!1107633 (= (= lt!1885491 lt!1884990) (= lambda!215056 lambda!214982))))

(assert (=> bs!1107582 (= (= lt!1885491 lt!1884696) (= lambda!215056 lambda!214979))))

(assert (=> bs!1107610 (= (= lt!1885491 lt!1885446) (= lambda!215056 lambda!215047))))

(declare-fun bs!1107635 () Bool)

(assert (= bs!1107635 (and d!1502336 d!1502226)))

(assert (=> bs!1107635 (= (= lt!1885491 lt!1884696) (= lambda!215056 lambda!215030))))

(declare-fun bs!1107637 () Bool)

(assert (= bs!1107637 (and d!1502336 b!4719653)))

(assert (=> bs!1107637 (= (= lt!1885491 lt!1884696) (= lambda!215056 lambda!214948))))

(declare-fun bs!1107638 () Bool)

(assert (= bs!1107638 (and d!1502336 b!4720255)))

(assert (=> bs!1107638 (= (= lt!1885491 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215056 lambda!215045))))

(declare-fun bs!1107640 () Bool)

(assert (= bs!1107640 (and d!1502336 d!1502062)))

(assert (=> bs!1107640 (not (= lambda!215056 lambda!214995))))

(declare-fun bs!1107642 () Bool)

(assert (= bs!1107642 (and d!1502336 d!1502028)))

(assert (=> bs!1107642 (= (= lt!1885491 lt!1884945) (= lambda!215056 lambda!214975))))

(assert (=> bs!1107599 (= (= lt!1885491 lt!1885190) (= lambda!215056 lambda!215006))))

(declare-fun bs!1107644 () Bool)

(assert (= bs!1107644 (and d!1502336 b!4719795)))

(assert (=> bs!1107644 (= (= lt!1885491 lt!1885094) (= lambda!215056 lambda!214991))))

(assert (=> bs!1107613 (= (= lt!1885491 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215056 lambda!215019))))

(declare-fun bs!1107646 () Bool)

(assert (= bs!1107646 (and d!1502336 d!1502272)))

(assert (=> bs!1107646 (= (= lt!1885491 lt!1885371) (= lambda!215056 lambda!215043))))

(assert (=> bs!1107644 (= (= lt!1885491 lt!1884696) (= lambda!215056 lambda!214990))))

(assert (=> d!1502336 true))

(declare-fun e!2943832 () Bool)

(declare-fun b!4720322 () Bool)

(assert (=> b!4720322 (= e!2943832 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) lambda!215052))))

(declare-fun call!330048 () Unit!129252)

(declare-fun bm!330043 () Bool)

(assert (=> bm!330043 (= call!330048 (lemmaContainsAllItsOwnKeys!791 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))))))

(declare-fun bm!330044 () Bool)

(declare-fun c!806137 () Bool)

(declare-fun call!330049 () Bool)

(assert (=> bm!330044 (= call!330049 (forall!11574 (ite c!806137 (toList!5906 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (ite c!806137 lambda!215050 lambda!215052)))))

(declare-fun e!2943834 () ListMap!5269)

(assert (=> b!4720323 (= e!2943834 lt!1885509)))

(declare-fun lt!1885490 () ListMap!5269)

(assert (=> b!4720323 (= lt!1885490 (+!2263 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (h!59153 (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))))))))

(assert (=> b!4720323 (= lt!1885509 (addToMapMapFromBucket!1438 (t!360192 (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (+!2263 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (h!59153 (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))))))))

(declare-fun lt!1885500 () Unit!129252)

(assert (=> b!4720323 (= lt!1885500 call!330048)))

(declare-fun call!330050 () Bool)

(assert (=> b!4720323 call!330050))

(declare-fun lt!1885492 () Unit!129252)

(assert (=> b!4720323 (= lt!1885492 lt!1885500)))

(assert (=> b!4720323 (forall!11574 (toList!5906 lt!1885490) lambda!215052)))

(declare-fun lt!1885507 () Unit!129252)

(declare-fun Unit!129539 () Unit!129252)

(assert (=> b!4720323 (= lt!1885507 Unit!129539)))

(assert (=> b!4720323 (forall!11574 (t!360192 (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) lambda!215052)))

(declare-fun lt!1885493 () Unit!129252)

(declare-fun Unit!129540 () Unit!129252)

(assert (=> b!4720323 (= lt!1885493 Unit!129540)))

(declare-fun lt!1885497 () Unit!129252)

(declare-fun Unit!129541 () Unit!129252)

(assert (=> b!4720323 (= lt!1885497 Unit!129541)))

(declare-fun lt!1885508 () Unit!129252)

(assert (=> b!4720323 (= lt!1885508 (forallContained!3629 (toList!5906 lt!1885490) lambda!215052 (h!59153 (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))))))))

(assert (=> b!4720323 (contains!16156 lt!1885490 (_1!30507 (h!59153 (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))))))))

(declare-fun lt!1885501 () Unit!129252)

(declare-fun Unit!129542 () Unit!129252)

(assert (=> b!4720323 (= lt!1885501 Unit!129542)))

(assert (=> b!4720323 (contains!16156 lt!1885509 (_1!30507 (h!59153 (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))))))))

(declare-fun lt!1885505 () Unit!129252)

(declare-fun Unit!129543 () Unit!129252)

(assert (=> b!4720323 (= lt!1885505 Unit!129543)))

(assert (=> b!4720323 call!330049))

(declare-fun lt!1885494 () Unit!129252)

(declare-fun Unit!129544 () Unit!129252)

(assert (=> b!4720323 (= lt!1885494 Unit!129544)))

(assert (=> b!4720323 (forall!11574 (toList!5906 lt!1885490) lambda!215052)))

(declare-fun lt!1885495 () Unit!129252)

(declare-fun Unit!129545 () Unit!129252)

(assert (=> b!4720323 (= lt!1885495 Unit!129545)))

(declare-fun lt!1885502 () Unit!129252)

(declare-fun Unit!129546 () Unit!129252)

(assert (=> b!4720323 (= lt!1885502 Unit!129546)))

(declare-fun lt!1885498 () Unit!129252)

(assert (=> b!4720323 (= lt!1885498 (addForallContainsKeyThenBeforeAdding!790 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885509 (_1!30507 (h!59153 (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))))) (_2!30507 (h!59153 (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))))))))

(assert (=> b!4720323 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) lambda!215052)))

(declare-fun lt!1885503 () Unit!129252)

(assert (=> b!4720323 (= lt!1885503 lt!1885498)))

(assert (=> b!4720323 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) lambda!215052)))

(declare-fun lt!1885504 () Unit!129252)

(declare-fun Unit!129547 () Unit!129252)

(assert (=> b!4720323 (= lt!1885504 Unit!129547)))

(declare-fun res!1996666 () Bool)

(assert (=> b!4720323 (= res!1996666 (forall!11574 (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lambda!215052))))

(assert (=> b!4720323 (=> (not res!1996666) (not e!2943832))))

(assert (=> b!4720323 e!2943832))

(declare-fun lt!1885496 () Unit!129252)

(declare-fun Unit!129549 () Unit!129252)

(assert (=> b!4720323 (= lt!1885496 Unit!129549)))

(assert (=> b!4720324 (= e!2943834 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))))))

(declare-fun lt!1885489 () Unit!129252)

(assert (=> b!4720324 (= lt!1885489 call!330048)))

(assert (=> b!4720324 call!330050))

(declare-fun lt!1885506 () Unit!129252)

(assert (=> b!4720324 (= lt!1885506 lt!1885489)))

(assert (=> b!4720324 call!330049))

(declare-fun lt!1885499 () Unit!129252)

(declare-fun Unit!129550 () Unit!129252)

(assert (=> b!4720324 (= lt!1885499 Unit!129550)))

(declare-fun e!2943833 () Bool)

(assert (=> d!1502336 e!2943833))

(declare-fun res!1996667 () Bool)

(assert (=> d!1502336 (=> (not res!1996667) (not e!2943833))))

(assert (=> d!1502336 (= res!1996667 (forall!11574 (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lambda!215056))))

(assert (=> d!1502336 (= lt!1885491 e!2943834)))

(assert (=> d!1502336 (= c!806137 ((_ is Nil!52812) (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))))))

(assert (=> d!1502336 (noDuplicateKeys!2008 (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))))))

(assert (=> d!1502336 (= (addToMapMapFromBucket!1438 (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) lt!1885491)))

(declare-fun b!4720325 () Bool)

(assert (=> b!4720325 (= e!2943833 (invariantList!1505 (toList!5906 lt!1885491)))))

(declare-fun bm!330045 () Bool)

(assert (=> bm!330045 (= call!330050 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (ite c!806137 lambda!215050 lambda!215051)))))

(declare-fun b!4720326 () Bool)

(declare-fun res!1996668 () Bool)

(assert (=> b!4720326 (=> (not res!1996668) (not e!2943833))))

(assert (=> b!4720326 (= res!1996668 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) lambda!215056))))

(assert (= (and d!1502336 c!806137) b!4720324))

(assert (= (and d!1502336 (not c!806137)) b!4720323))

(assert (= (and b!4720323 res!1996666) b!4720322))

(assert (= (or b!4720324 b!4720323) bm!330043))

(assert (= (or b!4720324 b!4720323) bm!330044))

(assert (= (or b!4720324 b!4720323) bm!330045))

(assert (= (and d!1502336 res!1996667) b!4720326))

(assert (= (and b!4720326 res!1996668) b!4720325))

(declare-fun m!5653281 () Bool)

(assert (=> b!4720325 m!5653281))

(declare-fun m!5653283 () Bool)

(assert (=> bm!330044 m!5653283))

(assert (=> bm!330043 m!5652187))

(declare-fun m!5653285 () Bool)

(assert (=> bm!330043 m!5653285))

(declare-fun m!5653287 () Bool)

(assert (=> b!4720326 m!5653287))

(declare-fun m!5653289 () Bool)

(assert (=> b!4720323 m!5653289))

(declare-fun m!5653291 () Bool)

(assert (=> b!4720323 m!5653291))

(declare-fun m!5653293 () Bool)

(assert (=> b!4720323 m!5653293))

(declare-fun m!5653295 () Bool)

(assert (=> b!4720323 m!5653295))

(assert (=> b!4720323 m!5652187))

(declare-fun m!5653297 () Bool)

(assert (=> b!4720323 m!5653297))

(declare-fun m!5653299 () Bool)

(assert (=> b!4720323 m!5653299))

(declare-fun m!5653301 () Bool)

(assert (=> b!4720323 m!5653301))

(declare-fun m!5653303 () Bool)

(assert (=> b!4720323 m!5653303))

(assert (=> b!4720323 m!5653293))

(declare-fun m!5653305 () Bool)

(assert (=> b!4720323 m!5653305))

(declare-fun m!5653307 () Bool)

(assert (=> b!4720323 m!5653307))

(assert (=> b!4720323 m!5653299))

(assert (=> b!4720323 m!5652187))

(assert (=> b!4720323 m!5653301))

(declare-fun m!5653309 () Bool)

(assert (=> bm!330045 m!5653309))

(declare-fun m!5653311 () Bool)

(assert (=> d!1502336 m!5653311))

(declare-fun m!5653313 () Bool)

(assert (=> d!1502336 m!5653313))

(assert (=> b!4720322 m!5653299))

(assert (=> b!4719801 d!1502336))

(declare-fun bs!1107670 () Bool)

(declare-fun d!1502348 () Bool)

(assert (= bs!1107670 (and d!1502348 d!1502058)))

(declare-fun lambda!215059 () Int)

(assert (=> bs!1107670 (= lambda!215059 lambda!214993)))

(declare-fun bs!1107672 () Bool)

(assert (= bs!1107672 (and d!1502348 d!1502078)))

(assert (=> bs!1107672 (= lambda!215059 lambda!215003)))

(declare-fun bs!1107674 () Bool)

(assert (= bs!1107674 (and d!1502348 d!1502072)))

(assert (=> bs!1107674 (not (= lambda!215059 lambda!214998))))

(declare-fun bs!1107676 () Bool)

(assert (= bs!1107676 (and d!1502348 d!1502060)))

(assert (=> bs!1107676 (= lambda!215059 lambda!214994)))

(declare-fun bs!1107677 () Bool)

(assert (= bs!1107677 (and d!1502348 d!1502048)))

(assert (=> bs!1107677 (= lambda!215059 lambda!214984)))

(declare-fun bs!1107678 () Bool)

(assert (= bs!1107678 (and d!1502348 d!1501984)))

(assert (=> bs!1107678 (= lambda!215059 lambda!214971)))

(declare-fun bs!1107680 () Bool)

(assert (= bs!1107680 (and d!1502348 start!480328)))

(assert (=> bs!1107680 (= lambda!215059 lambda!214876)))

(declare-fun lt!1885545 () ListMap!5269)

(assert (=> d!1502348 (invariantList!1505 (toList!5906 lt!1885545))))

(declare-fun e!2943849 () ListMap!5269)

(assert (=> d!1502348 (= lt!1885545 e!2943849)))

(declare-fun c!806144 () Bool)

(assert (=> d!1502348 (= c!806144 ((_ is Cons!52813) (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))))))

(assert (=> d!1502348 (forall!11572 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))) lambda!215059)))

(assert (=> d!1502348 (= (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) lt!1885545)))

(declare-fun b!4720350 () Bool)

(assert (=> b!4720350 (= e!2943849 (addToMapMapFromBucket!1438 (_2!30508 (h!59154 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (extractMap!2034 (t!360193 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))))))))

(declare-fun b!4720351 () Bool)

(assert (=> b!4720351 (= e!2943849 (ListMap!5270 Nil!52812))))

(assert (= (and d!1502348 c!806144) b!4720350))

(assert (= (and d!1502348 (not c!806144)) b!4720351))

(declare-fun m!5653315 () Bool)

(assert (=> d!1502348 m!5653315))

(declare-fun m!5653317 () Bool)

(assert (=> d!1502348 m!5653317))

(declare-fun m!5653319 () Bool)

(assert (=> b!4720350 m!5653319))

(assert (=> b!4720350 m!5653319))

(declare-fun m!5653321 () Bool)

(assert (=> b!4720350 m!5653321))

(assert (=> b!4719801 d!1502348))

(assert (=> bm!329979 d!1502226))

(declare-fun d!1502350 () Bool)

(declare-fun res!1996680 () Bool)

(declare-fun e!2943850 () Bool)

(assert (=> d!1502350 (=> res!1996680 e!2943850)))

(assert (=> d!1502350 (= res!1996680 ((_ is Nil!52812) (toList!5906 lt!1884696)))))

(assert (=> d!1502350 (= (forall!11574 (toList!5906 lt!1884696) lambda!214992) e!2943850)))

(declare-fun b!4720352 () Bool)

(declare-fun e!2943851 () Bool)

(assert (=> b!4720352 (= e!2943850 e!2943851)))

(declare-fun res!1996681 () Bool)

(assert (=> b!4720352 (=> (not res!1996681) (not e!2943851))))

(assert (=> b!4720352 (= res!1996681 (dynLambda!21811 lambda!214992 (h!59153 (toList!5906 lt!1884696))))))

(declare-fun b!4720353 () Bool)

(assert (=> b!4720353 (= e!2943851 (forall!11574 (t!360192 (toList!5906 lt!1884696)) lambda!214992))))

(assert (= (and d!1502350 (not res!1996680)) b!4720352))

(assert (= (and b!4720352 res!1996681) b!4720353))

(declare-fun b_lambda!177999 () Bool)

(assert (=> (not b_lambda!177999) (not b!4720352)))

(declare-fun m!5653323 () Bool)

(assert (=> b!4720352 m!5653323))

(declare-fun m!5653325 () Bool)

(assert (=> b!4720353 m!5653325))

(assert (=> b!4719798 d!1502350))

(declare-fun d!1502352 () Bool)

(declare-fun res!1996682 () Bool)

(declare-fun e!2943852 () Bool)

(assert (=> d!1502352 (=> res!1996682 e!2943852)))

(assert (=> d!1502352 (= res!1996682 ((_ is Nil!52812) (_2!30508 (h!59154 (toList!5905 lm!2023)))))))

(assert (=> d!1502352 (= (forall!11574 (_2!30508 (h!59154 (toList!5905 lm!2023))) lambda!214951) e!2943852)))

(declare-fun b!4720354 () Bool)

(declare-fun e!2943853 () Bool)

(assert (=> b!4720354 (= e!2943852 e!2943853)))

(declare-fun res!1996683 () Bool)

(assert (=> b!4720354 (=> (not res!1996683) (not e!2943853))))

(assert (=> b!4720354 (= res!1996683 (dynLambda!21811 lambda!214951 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))

(declare-fun b!4720355 () Bool)

(assert (=> b!4720355 (= e!2943853 (forall!11574 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))) lambda!214951))))

(assert (= (and d!1502352 (not res!1996682)) b!4720354))

(assert (= (and b!4720354 res!1996683) b!4720355))

(declare-fun b_lambda!178001 () Bool)

(assert (=> (not b_lambda!178001) (not b!4720354)))

(declare-fun m!5653327 () Bool)

(assert (=> b!4720354 m!5653327))

(declare-fun m!5653329 () Bool)

(assert (=> b!4720355 m!5653329))

(assert (=> d!1501954 d!1502352))

(assert (=> d!1501954 d!1502224))

(declare-fun bs!1107693 () Bool)

(declare-fun b!4720358 () Bool)

(assert (= bs!1107693 (and b!4720358 b!4719837)))

(declare-fun lambda!215060 () Int)

(assert (=> bs!1107693 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885120) (= lambda!215060 lambda!215001))))

(declare-fun bs!1107694 () Bool)

(assert (= bs!1107694 (and b!4720358 b!4719725)))

(assert (=> bs!1107694 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885008) (= lambda!215060 lambda!214981))))

(declare-fun bs!1107695 () Bool)

(assert (= bs!1107695 (and b!4720358 d!1502146)))

(assert (=> bs!1107695 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884963) (= lambda!215060 lambda!215012))))

(declare-fun bs!1107696 () Bool)

(assert (= bs!1107696 (and b!4720358 b!4719715)))

(assert (=> bs!1107696 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884963) (= lambda!215060 lambda!214974))))

(declare-fun bs!1107697 () Bool)

(assert (= bs!1107697 (and b!4720358 b!4720323)))

(assert (=> bs!1107697 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885509) (= lambda!215060 lambda!215052))))

(declare-fun bs!1107698 () Bool)

(assert (= bs!1107698 (and b!4720358 d!1501954)))

(assert (=> bs!1107698 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884817) (= lambda!215060 lambda!214951))))

(declare-fun bs!1107699 () Bool)

(assert (= bs!1107699 (and b!4720358 b!4719726)))

(assert (=> bs!1107699 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215060 lambda!214977))))

(declare-fun bs!1107700 () Bool)

(assert (= bs!1107700 (and b!4720358 b!4719652)))

(assert (=> bs!1107700 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884835) (= lambda!215060 lambda!214950))))

(declare-fun bs!1107701 () Bool)

(assert (= bs!1107701 (and b!4720358 b!4719990)))

(assert (=> bs!1107701 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885226) (= lambda!215060 lambda!215015))))

(declare-fun bs!1107702 () Bool)

(assert (= bs!1107702 (and b!4720358 d!1502076)))

(assert (=> bs!1107702 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885102) (= lambda!215060 lambda!215002))))

(declare-fun bs!1107703 () Bool)

(assert (= bs!1107703 (and b!4720358 b!4720197)))

(assert (=> bs!1107703 (= (= (extractMap!2034 (t!360193 lt!1884695)) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215060 lambda!215040))))

(declare-fun bs!1107704 () Bool)

(assert (= bs!1107704 (and b!4720358 b!4719957)))

(assert (=> bs!1107704 (= (= (extractMap!2034 (t!360193 lt!1884695)) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215060 lambda!215005))))

(declare-fun bs!1107705 () Bool)

(assert (= bs!1107705 (and b!4720358 b!4720019)))

(assert (=> bs!1107705 (= (= (extractMap!2034 (t!360193 lt!1884695)) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215060 lambda!215018))))

(declare-fun bs!1107706 () Bool)

(assert (= bs!1107706 (and b!4720358 d!1501952)))

(assert (=> bs!1107706 (not (= lambda!215060 lambda!214879))))

(assert (=> bs!1107700 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215060 lambda!214949))))

(assert (=> bs!1107701 (= (= (extractMap!2034 (t!360193 lt!1884695)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215060 lambda!215014))))

(assert (=> bs!1107697 (= (= (extractMap!2034 (t!360193 lt!1884695)) (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215060 lambda!215051))))

(declare-fun bs!1107707 () Bool)

(assert (= bs!1107707 (and b!4720358 d!1502126)))

(assert (=> bs!1107707 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885172) (= lambda!215060 lambda!215007))))

(declare-fun bs!1107708 () Bool)

(assert (= bs!1107708 (and b!4720358 b!4719838)))

(assert (=> bs!1107708 (= (= (extractMap!2034 (t!360193 lt!1884695)) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215060 lambda!214999))))

(declare-fun bs!1107709 () Bool)

(assert (= bs!1107709 (and b!4720358 b!4719716)))

(assert (=> bs!1107709 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215060 lambda!214972))))

(declare-fun bs!1107710 () Bool)

(assert (= bs!1107710 (and b!4720358 b!4720254)))

(assert (=> bs!1107710 (= (= (extractMap!2034 (t!360193 lt!1884695)) (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215060 lambda!215046))))

(declare-fun bs!1107711 () Bool)

(assert (= bs!1107711 (and b!4720358 b!4719796)))

(assert (=> bs!1107711 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215060 lambda!214989))))

(assert (=> bs!1107696 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215060 lambda!214973))))

(declare-fun bs!1107712 () Bool)

(assert (= bs!1107712 (and b!4720358 b!4720018)))

(assert (=> bs!1107712 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885264) (= lambda!215060 lambda!215020))))

(declare-fun bs!1107713 () Bool)

(assert (= bs!1107713 (and b!4720358 d!1502336)))

(assert (=> bs!1107713 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885491) (= lambda!215060 lambda!215056))))

(declare-fun bs!1107714 () Bool)

(assert (= bs!1107714 (and b!4720358 d!1502174)))

(assert (=> bs!1107714 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885246) (= lambda!215060 lambda!215021))))

(declare-fun bs!1107715 () Bool)

(assert (= bs!1107715 (and b!4720358 d!1502298)))

(assert (=> bs!1107715 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884835) (= lambda!215060 lambda!215044))))

(declare-fun bs!1107716 () Bool)

(assert (= bs!1107716 (and b!4720358 d!1502170)))

(assert (=> bs!1107716 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885008) (= lambda!215060 lambda!215017))))

(declare-fun bs!1107717 () Bool)

(assert (= bs!1107717 (and b!4720358 d!1502154)))

(assert (=> bs!1107717 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885208) (= lambda!215060 lambda!215016))))

(declare-fun bs!1107718 () Bool)

(assert (= bs!1107718 (and b!4720358 d!1502052)))

(assert (=> bs!1107718 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885076) (= lambda!215060 lambda!214992))))

(declare-fun bs!1107719 () Bool)

(assert (= bs!1107719 (and b!4720358 b!4719790)))

(assert (=> bs!1107719 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215060 lambda!214986))))

(declare-fun bs!1107720 () Bool)

(assert (= bs!1107720 (and b!4720358 d!1502320)))

(assert (=> bs!1107720 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885073) (= lambda!215060 lambda!215049))))

(declare-fun bs!1107721 () Bool)

(assert (= bs!1107721 (and b!4720358 d!1502050)))

(assert (=> bs!1107721 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885055) (= lambda!215060 lambda!214988))))

(declare-fun bs!1107722 () Bool)

(assert (= bs!1107722 (and b!4720358 b!4720198)))

(assert (=> bs!1107722 (= (= (extractMap!2034 (t!360193 lt!1884695)) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215060 lambda!215038))))

(assert (=> bs!1107703 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885389) (= lambda!215060 lambda!215042))))

(assert (=> bs!1107693 (= (= (extractMap!2034 (t!360193 lt!1884695)) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215060 lambda!215000))))

(declare-fun bs!1107723 () Bool)

(assert (= bs!1107723 (and b!4720358 b!4720324)))

(assert (=> bs!1107723 (= (= (extractMap!2034 (t!360193 lt!1884695)) (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215060 lambda!215050))))

(declare-fun bs!1107724 () Bool)

(assert (= bs!1107724 (and b!4720358 b!4719958)))

(assert (=> bs!1107724 (= (= (extractMap!2034 (t!360193 lt!1884695)) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215060 lambda!215004))))

(declare-fun bs!1107725 () Bool)

(assert (= bs!1107725 (and b!4720358 b!4719791)))

(assert (=> bs!1107725 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215060 lambda!214985))))

(declare-fun bs!1107726 () Bool)

(assert (= bs!1107726 (and b!4720358 b!4719991)))

(assert (=> bs!1107726 (= (= (extractMap!2034 (t!360193 lt!1884695)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215060 lambda!215013))))

(declare-fun bs!1107727 () Bool)

(assert (= bs!1107727 (and b!4720358 d!1502308)))

(assert (=> bs!1107727 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885428) (= lambda!215060 lambda!215048))))

(assert (=> bs!1107719 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885073) (= lambda!215060 lambda!214987))))

(declare-fun bs!1107728 () Bool)

(assert (= bs!1107728 (and b!4720358 d!1502034)))

(assert (=> bs!1107728 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884990) (= lambda!215060 lambda!214982))))

(assert (=> bs!1107694 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215060 lambda!214979))))

(assert (=> bs!1107710 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885446) (= lambda!215060 lambda!215047))))

(declare-fun bs!1107729 () Bool)

(assert (= bs!1107729 (and b!4720358 d!1502226)))

(assert (=> bs!1107729 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215060 lambda!215030))))

(declare-fun bs!1107730 () Bool)

(assert (= bs!1107730 (and b!4720358 b!4719653)))

(assert (=> bs!1107730 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215060 lambda!214948))))

(declare-fun bs!1107731 () Bool)

(assert (= bs!1107731 (and b!4720358 b!4720255)))

(assert (=> bs!1107731 (= (= (extractMap!2034 (t!360193 lt!1884695)) (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215060 lambda!215045))))

(declare-fun bs!1107732 () Bool)

(assert (= bs!1107732 (and b!4720358 d!1502062)))

(assert (=> bs!1107732 (not (= lambda!215060 lambda!214995))))

(declare-fun bs!1107733 () Bool)

(assert (= bs!1107733 (and b!4720358 d!1502028)))

(assert (=> bs!1107733 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884945) (= lambda!215060 lambda!214975))))

(assert (=> bs!1107704 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885190) (= lambda!215060 lambda!215006))))

(declare-fun bs!1107734 () Bool)

(assert (= bs!1107734 (and b!4720358 b!4719795)))

(assert (=> bs!1107734 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885094) (= lambda!215060 lambda!214991))))

(assert (=> bs!1107712 (= (= (extractMap!2034 (t!360193 lt!1884695)) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215060 lambda!215019))))

(declare-fun bs!1107736 () Bool)

(assert (= bs!1107736 (and b!4720358 d!1502272)))

(assert (=> bs!1107736 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885371) (= lambda!215060 lambda!215043))))

(assert (=> bs!1107734 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215060 lambda!214990))))

(assert (=> b!4720358 true))

(declare-fun bs!1107745 () Bool)

(declare-fun b!4720357 () Bool)

(assert (= bs!1107745 (and b!4720357 b!4719837)))

(declare-fun lambda!215063 () Int)

(assert (=> bs!1107745 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885120) (= lambda!215063 lambda!215001))))

(declare-fun bs!1107747 () Bool)

(assert (= bs!1107747 (and b!4720357 b!4719725)))

(assert (=> bs!1107747 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885008) (= lambda!215063 lambda!214981))))

(declare-fun bs!1107749 () Bool)

(assert (= bs!1107749 (and b!4720357 d!1502146)))

(assert (=> bs!1107749 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884963) (= lambda!215063 lambda!215012))))

(declare-fun bs!1107750 () Bool)

(assert (= bs!1107750 (and b!4720357 b!4719715)))

(assert (=> bs!1107750 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884963) (= lambda!215063 lambda!214974))))

(declare-fun bs!1107751 () Bool)

(assert (= bs!1107751 (and b!4720357 b!4720323)))

(assert (=> bs!1107751 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885509) (= lambda!215063 lambda!215052))))

(declare-fun bs!1107753 () Bool)

(assert (= bs!1107753 (and b!4720357 d!1501954)))

(assert (=> bs!1107753 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884817) (= lambda!215063 lambda!214951))))

(declare-fun bs!1107755 () Bool)

(assert (= bs!1107755 (and b!4720357 b!4719726)))

(assert (=> bs!1107755 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215063 lambda!214977))))

(declare-fun bs!1107756 () Bool)

(assert (= bs!1107756 (and b!4720357 b!4719652)))

(assert (=> bs!1107756 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884835) (= lambda!215063 lambda!214950))))

(declare-fun bs!1107758 () Bool)

(assert (= bs!1107758 (and b!4720357 b!4719990)))

(assert (=> bs!1107758 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885226) (= lambda!215063 lambda!215015))))

(declare-fun bs!1107760 () Bool)

(assert (= bs!1107760 (and b!4720357 d!1502076)))

(assert (=> bs!1107760 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885102) (= lambda!215063 lambda!215002))))

(declare-fun bs!1107762 () Bool)

(assert (= bs!1107762 (and b!4720357 b!4720197)))

(assert (=> bs!1107762 (= (= (extractMap!2034 (t!360193 lt!1884695)) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215063 lambda!215040))))

(declare-fun bs!1107764 () Bool)

(assert (= bs!1107764 (and b!4720357 b!4719957)))

(assert (=> bs!1107764 (= (= (extractMap!2034 (t!360193 lt!1884695)) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215063 lambda!215005))))

(declare-fun bs!1107765 () Bool)

(assert (= bs!1107765 (and b!4720357 b!4720019)))

(assert (=> bs!1107765 (= (= (extractMap!2034 (t!360193 lt!1884695)) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215063 lambda!215018))))

(declare-fun bs!1107767 () Bool)

(assert (= bs!1107767 (and b!4720357 d!1501952)))

(assert (=> bs!1107767 (not (= lambda!215063 lambda!214879))))

(assert (=> bs!1107756 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215063 lambda!214949))))

(assert (=> bs!1107758 (= (= (extractMap!2034 (t!360193 lt!1884695)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215063 lambda!215014))))

(assert (=> bs!1107751 (= (= (extractMap!2034 (t!360193 lt!1884695)) (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215063 lambda!215051))))

(declare-fun bs!1107770 () Bool)

(assert (= bs!1107770 (and b!4720357 d!1502126)))

(assert (=> bs!1107770 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885172) (= lambda!215063 lambda!215007))))

(declare-fun bs!1107771 () Bool)

(assert (= bs!1107771 (and b!4720357 b!4719838)))

(assert (=> bs!1107771 (= (= (extractMap!2034 (t!360193 lt!1884695)) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215063 lambda!214999))))

(declare-fun bs!1107773 () Bool)

(assert (= bs!1107773 (and b!4720357 b!4719716)))

(assert (=> bs!1107773 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215063 lambda!214972))))

(declare-fun bs!1107775 () Bool)

(assert (= bs!1107775 (and b!4720357 b!4720254)))

(assert (=> bs!1107775 (= (= (extractMap!2034 (t!360193 lt!1884695)) (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215063 lambda!215046))))

(declare-fun bs!1107777 () Bool)

(assert (= bs!1107777 (and b!4720357 b!4719796)))

(assert (=> bs!1107777 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215063 lambda!214989))))

(assert (=> bs!1107750 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215063 lambda!214973))))

(declare-fun bs!1107779 () Bool)

(assert (= bs!1107779 (and b!4720357 b!4720018)))

(assert (=> bs!1107779 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885264) (= lambda!215063 lambda!215020))))

(declare-fun bs!1107780 () Bool)

(assert (= bs!1107780 (and b!4720357 d!1502336)))

(assert (=> bs!1107780 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885491) (= lambda!215063 lambda!215056))))

(declare-fun bs!1107781 () Bool)

(assert (= bs!1107781 (and b!4720357 d!1502174)))

(assert (=> bs!1107781 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885246) (= lambda!215063 lambda!215021))))

(declare-fun bs!1107782 () Bool)

(assert (= bs!1107782 (and b!4720357 d!1502298)))

(assert (=> bs!1107782 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884835) (= lambda!215063 lambda!215044))))

(declare-fun bs!1107783 () Bool)

(assert (= bs!1107783 (and b!4720357 d!1502170)))

(assert (=> bs!1107783 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885008) (= lambda!215063 lambda!215017))))

(declare-fun bs!1107784 () Bool)

(assert (= bs!1107784 (and b!4720357 d!1502154)))

(assert (=> bs!1107784 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885208) (= lambda!215063 lambda!215016))))

(declare-fun bs!1107785 () Bool)

(assert (= bs!1107785 (and b!4720357 d!1502052)))

(assert (=> bs!1107785 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885076) (= lambda!215063 lambda!214992))))

(declare-fun bs!1107786 () Bool)

(assert (= bs!1107786 (and b!4720357 b!4719790)))

(assert (=> bs!1107786 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215063 lambda!214986))))

(declare-fun bs!1107787 () Bool)

(assert (= bs!1107787 (and b!4720357 d!1502320)))

(assert (=> bs!1107787 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885073) (= lambda!215063 lambda!215049))))

(declare-fun bs!1107788 () Bool)

(assert (= bs!1107788 (and b!4720357 d!1502050)))

(assert (=> bs!1107788 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885055) (= lambda!215063 lambda!214988))))

(declare-fun bs!1107789 () Bool)

(assert (= bs!1107789 (and b!4720357 b!4720198)))

(assert (=> bs!1107789 (= (= (extractMap!2034 (t!360193 lt!1884695)) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215063 lambda!215038))))

(assert (=> bs!1107762 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885389) (= lambda!215063 lambda!215042))))

(assert (=> bs!1107745 (= (= (extractMap!2034 (t!360193 lt!1884695)) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215063 lambda!215000))))

(declare-fun bs!1107790 () Bool)

(assert (= bs!1107790 (and b!4720357 b!4720324)))

(assert (=> bs!1107790 (= (= (extractMap!2034 (t!360193 lt!1884695)) (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215063 lambda!215050))))

(declare-fun bs!1107791 () Bool)

(assert (= bs!1107791 (and b!4720357 b!4719958)))

(assert (=> bs!1107791 (= (= (extractMap!2034 (t!360193 lt!1884695)) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215063 lambda!215004))))

(declare-fun bs!1107792 () Bool)

(assert (= bs!1107792 (and b!4720357 b!4719791)))

(assert (=> bs!1107792 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215063 lambda!214985))))

(declare-fun bs!1107793 () Bool)

(assert (= bs!1107793 (and b!4720357 b!4719991)))

(assert (=> bs!1107793 (= (= (extractMap!2034 (t!360193 lt!1884695)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215063 lambda!215013))))

(declare-fun bs!1107794 () Bool)

(assert (= bs!1107794 (and b!4720357 d!1502308)))

(assert (=> bs!1107794 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885428) (= lambda!215063 lambda!215048))))

(assert (=> bs!1107786 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885073) (= lambda!215063 lambda!214987))))

(declare-fun bs!1107795 () Bool)

(assert (= bs!1107795 (and b!4720357 d!1502034)))

(assert (=> bs!1107795 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884990) (= lambda!215063 lambda!214982))))

(assert (=> bs!1107747 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215063 lambda!214979))))

(assert (=> bs!1107775 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885446) (= lambda!215063 lambda!215047))))

(declare-fun bs!1107796 () Bool)

(assert (= bs!1107796 (and b!4720357 d!1502226)))

(assert (=> bs!1107796 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215063 lambda!215030))))

(declare-fun bs!1107797 () Bool)

(assert (= bs!1107797 (and b!4720357 b!4719653)))

(assert (=> bs!1107797 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215063 lambda!214948))))

(declare-fun bs!1107798 () Bool)

(assert (= bs!1107798 (and b!4720357 b!4720255)))

(assert (=> bs!1107798 (= (= (extractMap!2034 (t!360193 lt!1884695)) (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215063 lambda!215045))))

(declare-fun bs!1107799 () Bool)

(assert (= bs!1107799 (and b!4720357 d!1502062)))

(assert (=> bs!1107799 (not (= lambda!215063 lambda!214995))))

(declare-fun bs!1107800 () Bool)

(assert (= bs!1107800 (and b!4720357 d!1502028)))

(assert (=> bs!1107800 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884945) (= lambda!215063 lambda!214975))))

(assert (=> bs!1107764 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885190) (= lambda!215063 lambda!215006))))

(declare-fun bs!1107801 () Bool)

(assert (= bs!1107801 (and b!4720357 b!4719795)))

(assert (=> bs!1107801 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885094) (= lambda!215063 lambda!214991))))

(declare-fun bs!1107802 () Bool)

(assert (= bs!1107802 (and b!4720357 d!1502272)))

(assert (=> bs!1107802 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885371) (= lambda!215063 lambda!215043))))

(assert (=> bs!1107801 (= (= (extractMap!2034 (t!360193 lt!1884695)) lt!1884696) (= lambda!215063 lambda!214990))))

(declare-fun bs!1107803 () Bool)

(assert (= bs!1107803 (and b!4720357 b!4720358)))

(assert (=> bs!1107803 (= lambda!215063 lambda!215060)))

(assert (=> bs!1107779 (= (= (extractMap!2034 (t!360193 lt!1884695)) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215063 lambda!215019))))

(assert (=> b!4720357 true))

(declare-fun lt!1885566 () ListMap!5269)

(declare-fun lambda!215065 () Int)

(assert (=> bs!1107745 (= (= lt!1885566 lt!1885120) (= lambda!215065 lambda!215001))))

(assert (=> bs!1107747 (= (= lt!1885566 lt!1885008) (= lambda!215065 lambda!214981))))

(assert (=> bs!1107749 (= (= lt!1885566 lt!1884963) (= lambda!215065 lambda!215012))))

(assert (=> bs!1107750 (= (= lt!1885566 lt!1884963) (= lambda!215065 lambda!214974))))

(assert (=> bs!1107751 (= (= lt!1885566 lt!1885509) (= lambda!215065 lambda!215052))))

(assert (=> bs!1107753 (= (= lt!1885566 lt!1884817) (= lambda!215065 lambda!214951))))

(assert (=> bs!1107755 (= (= lt!1885566 lt!1884696) (= lambda!215065 lambda!214977))))

(assert (=> bs!1107756 (= (= lt!1885566 lt!1884835) (= lambda!215065 lambda!214950))))

(assert (=> bs!1107758 (= (= lt!1885566 lt!1885226) (= lambda!215065 lambda!215015))))

(assert (=> bs!1107760 (= (= lt!1885566 lt!1885102) (= lambda!215065 lambda!215002))))

(assert (=> bs!1107762 (= (= lt!1885566 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215065 lambda!215040))))

(assert (=> bs!1107764 (= (= lt!1885566 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215065 lambda!215005))))

(assert (=> bs!1107765 (= (= lt!1885566 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215065 lambda!215018))))

(assert (=> bs!1107767 (not (= lambda!215065 lambda!214879))))

(assert (=> bs!1107756 (= (= lt!1885566 lt!1884696) (= lambda!215065 lambda!214949))))

(assert (=> bs!1107758 (= (= lt!1885566 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215065 lambda!215014))))

(assert (=> bs!1107751 (= (= lt!1885566 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215065 lambda!215051))))

(assert (=> bs!1107770 (= (= lt!1885566 lt!1885172) (= lambda!215065 lambda!215007))))

(assert (=> bs!1107771 (= (= lt!1885566 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215065 lambda!214999))))

(assert (=> bs!1107773 (= (= lt!1885566 lt!1884696) (= lambda!215065 lambda!214972))))

(assert (=> bs!1107775 (= (= lt!1885566 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215065 lambda!215046))))

(assert (=> bs!1107777 (= (= lt!1885566 lt!1884696) (= lambda!215065 lambda!214989))))

(assert (=> bs!1107750 (= (= lt!1885566 lt!1884696) (= lambda!215065 lambda!214973))))

(assert (=> bs!1107779 (= (= lt!1885566 lt!1885264) (= lambda!215065 lambda!215020))))

(assert (=> bs!1107780 (= (= lt!1885566 lt!1885491) (= lambda!215065 lambda!215056))))

(assert (=> bs!1107781 (= (= lt!1885566 lt!1885246) (= lambda!215065 lambda!215021))))

(assert (=> bs!1107782 (= (= lt!1885566 lt!1884835) (= lambda!215065 lambda!215044))))

(assert (=> bs!1107783 (= (= lt!1885566 lt!1885008) (= lambda!215065 lambda!215017))))

(assert (=> bs!1107784 (= (= lt!1885566 lt!1885208) (= lambda!215065 lambda!215016))))

(assert (=> bs!1107785 (= (= lt!1885566 lt!1885076) (= lambda!215065 lambda!214992))))

(assert (=> bs!1107786 (= (= lt!1885566 lt!1884696) (= lambda!215065 lambda!214986))))

(assert (=> bs!1107787 (= (= lt!1885566 lt!1885073) (= lambda!215065 lambda!215049))))

(assert (=> bs!1107788 (= (= lt!1885566 lt!1885055) (= lambda!215065 lambda!214988))))

(assert (=> bs!1107789 (= (= lt!1885566 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215065 lambda!215038))))

(assert (=> bs!1107762 (= (= lt!1885566 lt!1885389) (= lambda!215065 lambda!215042))))

(assert (=> bs!1107745 (= (= lt!1885566 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215065 lambda!215000))))

(assert (=> bs!1107790 (= (= lt!1885566 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215065 lambda!215050))))

(assert (=> bs!1107791 (= (= lt!1885566 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215065 lambda!215004))))

(assert (=> b!4720357 (= (= lt!1885566 (extractMap!2034 (t!360193 lt!1884695))) (= lambda!215065 lambda!215063))))

(assert (=> bs!1107792 (= (= lt!1885566 lt!1884696) (= lambda!215065 lambda!214985))))

(assert (=> bs!1107793 (= (= lt!1885566 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215065 lambda!215013))))

(assert (=> bs!1107794 (= (= lt!1885566 lt!1885428) (= lambda!215065 lambda!215048))))

(assert (=> bs!1107786 (= (= lt!1885566 lt!1885073) (= lambda!215065 lambda!214987))))

(assert (=> bs!1107795 (= (= lt!1885566 lt!1884990) (= lambda!215065 lambda!214982))))

(assert (=> bs!1107747 (= (= lt!1885566 lt!1884696) (= lambda!215065 lambda!214979))))

(assert (=> bs!1107775 (= (= lt!1885566 lt!1885446) (= lambda!215065 lambda!215047))))

(assert (=> bs!1107796 (= (= lt!1885566 lt!1884696) (= lambda!215065 lambda!215030))))

(assert (=> bs!1107797 (= (= lt!1885566 lt!1884696) (= lambda!215065 lambda!214948))))

(assert (=> bs!1107798 (= (= lt!1885566 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215065 lambda!215045))))

(assert (=> bs!1107799 (not (= lambda!215065 lambda!214995))))

(assert (=> bs!1107800 (= (= lt!1885566 lt!1884945) (= lambda!215065 lambda!214975))))

(assert (=> bs!1107764 (= (= lt!1885566 lt!1885190) (= lambda!215065 lambda!215006))))

(assert (=> bs!1107801 (= (= lt!1885566 lt!1885094) (= lambda!215065 lambda!214991))))

(assert (=> bs!1107802 (= (= lt!1885566 lt!1885371) (= lambda!215065 lambda!215043))))

(assert (=> bs!1107801 (= (= lt!1885566 lt!1884696) (= lambda!215065 lambda!214990))))

(assert (=> bs!1107803 (= (= lt!1885566 (extractMap!2034 (t!360193 lt!1884695))) (= lambda!215065 lambda!215060))))

(assert (=> bs!1107779 (= (= lt!1885566 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215065 lambda!215019))))

(assert (=> b!4720357 true))

(declare-fun bs!1107810 () Bool)

(declare-fun d!1502354 () Bool)

(assert (= bs!1107810 (and d!1502354 b!4719837)))

(declare-fun lt!1885548 () ListMap!5269)

(declare-fun lambda!215066 () Int)

(assert (=> bs!1107810 (= (= lt!1885548 lt!1885120) (= lambda!215066 lambda!215001))))

(declare-fun bs!1107811 () Bool)

(assert (= bs!1107811 (and d!1502354 b!4719725)))

(assert (=> bs!1107811 (= (= lt!1885548 lt!1885008) (= lambda!215066 lambda!214981))))

(declare-fun bs!1107812 () Bool)

(assert (= bs!1107812 (and d!1502354 b!4720357)))

(assert (=> bs!1107812 (= (= lt!1885548 lt!1885566) (= lambda!215066 lambda!215065))))

(declare-fun bs!1107813 () Bool)

(assert (= bs!1107813 (and d!1502354 d!1502146)))

(assert (=> bs!1107813 (= (= lt!1885548 lt!1884963) (= lambda!215066 lambda!215012))))

(declare-fun bs!1107814 () Bool)

(assert (= bs!1107814 (and d!1502354 b!4719715)))

(assert (=> bs!1107814 (= (= lt!1885548 lt!1884963) (= lambda!215066 lambda!214974))))

(declare-fun bs!1107815 () Bool)

(assert (= bs!1107815 (and d!1502354 b!4720323)))

(assert (=> bs!1107815 (= (= lt!1885548 lt!1885509) (= lambda!215066 lambda!215052))))

(declare-fun bs!1107816 () Bool)

(assert (= bs!1107816 (and d!1502354 d!1501954)))

(assert (=> bs!1107816 (= (= lt!1885548 lt!1884817) (= lambda!215066 lambda!214951))))

(declare-fun bs!1107817 () Bool)

(assert (= bs!1107817 (and d!1502354 b!4719726)))

(assert (=> bs!1107817 (= (= lt!1885548 lt!1884696) (= lambda!215066 lambda!214977))))

(declare-fun bs!1107818 () Bool)

(assert (= bs!1107818 (and d!1502354 b!4719652)))

(assert (=> bs!1107818 (= (= lt!1885548 lt!1884835) (= lambda!215066 lambda!214950))))

(declare-fun bs!1107819 () Bool)

(assert (= bs!1107819 (and d!1502354 b!4719990)))

(assert (=> bs!1107819 (= (= lt!1885548 lt!1885226) (= lambda!215066 lambda!215015))))

(declare-fun bs!1107820 () Bool)

(assert (= bs!1107820 (and d!1502354 d!1502076)))

(assert (=> bs!1107820 (= (= lt!1885548 lt!1885102) (= lambda!215066 lambda!215002))))

(declare-fun bs!1107821 () Bool)

(assert (= bs!1107821 (and d!1502354 b!4720197)))

(assert (=> bs!1107821 (= (= lt!1885548 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215066 lambda!215040))))

(declare-fun bs!1107822 () Bool)

(assert (= bs!1107822 (and d!1502354 b!4719957)))

(assert (=> bs!1107822 (= (= lt!1885548 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215066 lambda!215005))))

(declare-fun bs!1107823 () Bool)

(assert (= bs!1107823 (and d!1502354 b!4720019)))

(assert (=> bs!1107823 (= (= lt!1885548 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215066 lambda!215018))))

(declare-fun bs!1107824 () Bool)

(assert (= bs!1107824 (and d!1502354 d!1501952)))

(assert (=> bs!1107824 (not (= lambda!215066 lambda!214879))))

(assert (=> bs!1107818 (= (= lt!1885548 lt!1884696) (= lambda!215066 lambda!214949))))

(assert (=> bs!1107819 (= (= lt!1885548 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215066 lambda!215014))))

(assert (=> bs!1107815 (= (= lt!1885548 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215066 lambda!215051))))

(declare-fun bs!1107825 () Bool)

(assert (= bs!1107825 (and d!1502354 d!1502126)))

(assert (=> bs!1107825 (= (= lt!1885548 lt!1885172) (= lambda!215066 lambda!215007))))

(declare-fun bs!1107826 () Bool)

(assert (= bs!1107826 (and d!1502354 b!4719838)))

(assert (=> bs!1107826 (= (= lt!1885548 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215066 lambda!214999))))

(declare-fun bs!1107827 () Bool)

(assert (= bs!1107827 (and d!1502354 b!4719716)))

(assert (=> bs!1107827 (= (= lt!1885548 lt!1884696) (= lambda!215066 lambda!214972))))

(declare-fun bs!1107828 () Bool)

(assert (= bs!1107828 (and d!1502354 b!4720254)))

(assert (=> bs!1107828 (= (= lt!1885548 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215066 lambda!215046))))

(declare-fun bs!1107829 () Bool)

(assert (= bs!1107829 (and d!1502354 b!4719796)))

(assert (=> bs!1107829 (= (= lt!1885548 lt!1884696) (= lambda!215066 lambda!214989))))

(assert (=> bs!1107814 (= (= lt!1885548 lt!1884696) (= lambda!215066 lambda!214973))))

(declare-fun bs!1107830 () Bool)

(assert (= bs!1107830 (and d!1502354 b!4720018)))

(assert (=> bs!1107830 (= (= lt!1885548 lt!1885264) (= lambda!215066 lambda!215020))))

(declare-fun bs!1107831 () Bool)

(assert (= bs!1107831 (and d!1502354 d!1502336)))

(assert (=> bs!1107831 (= (= lt!1885548 lt!1885491) (= lambda!215066 lambda!215056))))

(declare-fun bs!1107832 () Bool)

(assert (= bs!1107832 (and d!1502354 d!1502174)))

(assert (=> bs!1107832 (= (= lt!1885548 lt!1885246) (= lambda!215066 lambda!215021))))

(declare-fun bs!1107833 () Bool)

(assert (= bs!1107833 (and d!1502354 d!1502298)))

(assert (=> bs!1107833 (= (= lt!1885548 lt!1884835) (= lambda!215066 lambda!215044))))

(declare-fun bs!1107834 () Bool)

(assert (= bs!1107834 (and d!1502354 d!1502170)))

(assert (=> bs!1107834 (= (= lt!1885548 lt!1885008) (= lambda!215066 lambda!215017))))

(declare-fun bs!1107835 () Bool)

(assert (= bs!1107835 (and d!1502354 d!1502154)))

(assert (=> bs!1107835 (= (= lt!1885548 lt!1885208) (= lambda!215066 lambda!215016))))

(declare-fun bs!1107836 () Bool)

(assert (= bs!1107836 (and d!1502354 d!1502052)))

(assert (=> bs!1107836 (= (= lt!1885548 lt!1885076) (= lambda!215066 lambda!214992))))

(declare-fun bs!1107837 () Bool)

(assert (= bs!1107837 (and d!1502354 b!4719790)))

(assert (=> bs!1107837 (= (= lt!1885548 lt!1884696) (= lambda!215066 lambda!214986))))

(declare-fun bs!1107838 () Bool)

(assert (= bs!1107838 (and d!1502354 d!1502320)))

(assert (=> bs!1107838 (= (= lt!1885548 lt!1885073) (= lambda!215066 lambda!215049))))

(declare-fun bs!1107839 () Bool)

(assert (= bs!1107839 (and d!1502354 d!1502050)))

(assert (=> bs!1107839 (= (= lt!1885548 lt!1885055) (= lambda!215066 lambda!214988))))

(declare-fun bs!1107840 () Bool)

(assert (= bs!1107840 (and d!1502354 b!4720198)))

(assert (=> bs!1107840 (= (= lt!1885548 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215066 lambda!215038))))

(assert (=> bs!1107821 (= (= lt!1885548 lt!1885389) (= lambda!215066 lambda!215042))))

(assert (=> bs!1107810 (= (= lt!1885548 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215066 lambda!215000))))

(declare-fun bs!1107841 () Bool)

(assert (= bs!1107841 (and d!1502354 b!4720324)))

(assert (=> bs!1107841 (= (= lt!1885548 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215066 lambda!215050))))

(declare-fun bs!1107842 () Bool)

(assert (= bs!1107842 (and d!1502354 b!4719958)))

(assert (=> bs!1107842 (= (= lt!1885548 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215066 lambda!215004))))

(assert (=> bs!1107812 (= (= lt!1885548 (extractMap!2034 (t!360193 lt!1884695))) (= lambda!215066 lambda!215063))))

(declare-fun bs!1107843 () Bool)

(assert (= bs!1107843 (and d!1502354 b!4719791)))

(assert (=> bs!1107843 (= (= lt!1885548 lt!1884696) (= lambda!215066 lambda!214985))))

(declare-fun bs!1107844 () Bool)

(assert (= bs!1107844 (and d!1502354 b!4719991)))

(assert (=> bs!1107844 (= (= lt!1885548 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215066 lambda!215013))))

(declare-fun bs!1107845 () Bool)

(assert (= bs!1107845 (and d!1502354 d!1502308)))

(assert (=> bs!1107845 (= (= lt!1885548 lt!1885428) (= lambda!215066 lambda!215048))))

(assert (=> bs!1107837 (= (= lt!1885548 lt!1885073) (= lambda!215066 lambda!214987))))

(declare-fun bs!1107846 () Bool)

(assert (= bs!1107846 (and d!1502354 d!1502034)))

(assert (=> bs!1107846 (= (= lt!1885548 lt!1884990) (= lambda!215066 lambda!214982))))

(assert (=> bs!1107811 (= (= lt!1885548 lt!1884696) (= lambda!215066 lambda!214979))))

(assert (=> bs!1107828 (= (= lt!1885548 lt!1885446) (= lambda!215066 lambda!215047))))

(declare-fun bs!1107847 () Bool)

(assert (= bs!1107847 (and d!1502354 d!1502226)))

(assert (=> bs!1107847 (= (= lt!1885548 lt!1884696) (= lambda!215066 lambda!215030))))

(declare-fun bs!1107848 () Bool)

(assert (= bs!1107848 (and d!1502354 b!4719653)))

(assert (=> bs!1107848 (= (= lt!1885548 lt!1884696) (= lambda!215066 lambda!214948))))

(declare-fun bs!1107849 () Bool)

(assert (= bs!1107849 (and d!1502354 b!4720255)))

(assert (=> bs!1107849 (= (= lt!1885548 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215066 lambda!215045))))

(declare-fun bs!1107850 () Bool)

(assert (= bs!1107850 (and d!1502354 d!1502062)))

(assert (=> bs!1107850 (not (= lambda!215066 lambda!214995))))

(declare-fun bs!1107851 () Bool)

(assert (= bs!1107851 (and d!1502354 d!1502028)))

(assert (=> bs!1107851 (= (= lt!1885548 lt!1884945) (= lambda!215066 lambda!214975))))

(assert (=> bs!1107822 (= (= lt!1885548 lt!1885190) (= lambda!215066 lambda!215006))))

(declare-fun bs!1107852 () Bool)

(assert (= bs!1107852 (and d!1502354 b!4719795)))

(assert (=> bs!1107852 (= (= lt!1885548 lt!1885094) (= lambda!215066 lambda!214991))))

(declare-fun bs!1107853 () Bool)

(assert (= bs!1107853 (and d!1502354 d!1502272)))

(assert (=> bs!1107853 (= (= lt!1885548 lt!1885371) (= lambda!215066 lambda!215043))))

(assert (=> bs!1107852 (= (= lt!1885548 lt!1884696) (= lambda!215066 lambda!214990))))

(declare-fun bs!1107854 () Bool)

(assert (= bs!1107854 (and d!1502354 b!4720358)))

(assert (=> bs!1107854 (= (= lt!1885548 (extractMap!2034 (t!360193 lt!1884695))) (= lambda!215066 lambda!215060))))

(assert (=> bs!1107830 (= (= lt!1885548 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215066 lambda!215019))))

(assert (=> d!1502354 true))

(declare-fun b!4720356 () Bool)

(declare-fun e!2943854 () Bool)

(assert (=> b!4720356 (= e!2943854 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 lt!1884695))) lambda!215065))))

(declare-fun bm!330053 () Bool)

(declare-fun call!330058 () Unit!129252)

(assert (=> bm!330053 (= call!330058 (lemmaContainsAllItsOwnKeys!791 (extractMap!2034 (t!360193 lt!1884695))))))

(declare-fun c!806145 () Bool)

(declare-fun call!330059 () Bool)

(declare-fun bm!330054 () Bool)

(assert (=> bm!330054 (= call!330059 (forall!11574 (ite c!806145 (toList!5906 (extractMap!2034 (t!360193 lt!1884695))) (_2!30508 (h!59154 lt!1884695))) (ite c!806145 lambda!215060 lambda!215065)))))

(declare-fun e!2943856 () ListMap!5269)

(assert (=> b!4720357 (= e!2943856 lt!1885566)))

(declare-fun lt!1885547 () ListMap!5269)

(assert (=> b!4720357 (= lt!1885547 (+!2263 (extractMap!2034 (t!360193 lt!1884695)) (h!59153 (_2!30508 (h!59154 lt!1884695)))))))

(assert (=> b!4720357 (= lt!1885566 (addToMapMapFromBucket!1438 (t!360192 (_2!30508 (h!59154 lt!1884695))) (+!2263 (extractMap!2034 (t!360193 lt!1884695)) (h!59153 (_2!30508 (h!59154 lt!1884695))))))))

(declare-fun lt!1885557 () Unit!129252)

(assert (=> b!4720357 (= lt!1885557 call!330058)))

(declare-fun call!330060 () Bool)

(assert (=> b!4720357 call!330060))

(declare-fun lt!1885549 () Unit!129252)

(assert (=> b!4720357 (= lt!1885549 lt!1885557)))

(assert (=> b!4720357 (forall!11574 (toList!5906 lt!1885547) lambda!215065)))

(declare-fun lt!1885564 () Unit!129252)

(declare-fun Unit!129552 () Unit!129252)

(assert (=> b!4720357 (= lt!1885564 Unit!129552)))

(assert (=> b!4720357 (forall!11574 (t!360192 (_2!30508 (h!59154 lt!1884695))) lambda!215065)))

(declare-fun lt!1885550 () Unit!129252)

(declare-fun Unit!129553 () Unit!129252)

(assert (=> b!4720357 (= lt!1885550 Unit!129553)))

(declare-fun lt!1885554 () Unit!129252)

(declare-fun Unit!129554 () Unit!129252)

(assert (=> b!4720357 (= lt!1885554 Unit!129554)))

(declare-fun lt!1885565 () Unit!129252)

(assert (=> b!4720357 (= lt!1885565 (forallContained!3629 (toList!5906 lt!1885547) lambda!215065 (h!59153 (_2!30508 (h!59154 lt!1884695)))))))

(assert (=> b!4720357 (contains!16156 lt!1885547 (_1!30507 (h!59153 (_2!30508 (h!59154 lt!1884695)))))))

(declare-fun lt!1885558 () Unit!129252)

(declare-fun Unit!129555 () Unit!129252)

(assert (=> b!4720357 (= lt!1885558 Unit!129555)))

(assert (=> b!4720357 (contains!16156 lt!1885566 (_1!30507 (h!59153 (_2!30508 (h!59154 lt!1884695)))))))

(declare-fun lt!1885562 () Unit!129252)

(declare-fun Unit!129556 () Unit!129252)

(assert (=> b!4720357 (= lt!1885562 Unit!129556)))

(assert (=> b!4720357 call!330059))

(declare-fun lt!1885551 () Unit!129252)

(declare-fun Unit!129557 () Unit!129252)

(assert (=> b!4720357 (= lt!1885551 Unit!129557)))

(assert (=> b!4720357 (forall!11574 (toList!5906 lt!1885547) lambda!215065)))

(declare-fun lt!1885552 () Unit!129252)

(declare-fun Unit!129558 () Unit!129252)

(assert (=> b!4720357 (= lt!1885552 Unit!129558)))

(declare-fun lt!1885559 () Unit!129252)

(declare-fun Unit!129559 () Unit!129252)

(assert (=> b!4720357 (= lt!1885559 Unit!129559)))

(declare-fun lt!1885555 () Unit!129252)

(assert (=> b!4720357 (= lt!1885555 (addForallContainsKeyThenBeforeAdding!790 (extractMap!2034 (t!360193 lt!1884695)) lt!1885566 (_1!30507 (h!59153 (_2!30508 (h!59154 lt!1884695)))) (_2!30507 (h!59153 (_2!30508 (h!59154 lt!1884695))))))))

(assert (=> b!4720357 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 lt!1884695))) lambda!215065)))

(declare-fun lt!1885560 () Unit!129252)

(assert (=> b!4720357 (= lt!1885560 lt!1885555)))

(assert (=> b!4720357 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 lt!1884695))) lambda!215065)))

(declare-fun lt!1885561 () Unit!129252)

(declare-fun Unit!129560 () Unit!129252)

(assert (=> b!4720357 (= lt!1885561 Unit!129560)))

(declare-fun res!1996684 () Bool)

(assert (=> b!4720357 (= res!1996684 (forall!11574 (_2!30508 (h!59154 lt!1884695)) lambda!215065))))

(assert (=> b!4720357 (=> (not res!1996684) (not e!2943854))))

(assert (=> b!4720357 e!2943854))

(declare-fun lt!1885553 () Unit!129252)

(declare-fun Unit!129561 () Unit!129252)

(assert (=> b!4720357 (= lt!1885553 Unit!129561)))

(assert (=> b!4720358 (= e!2943856 (extractMap!2034 (t!360193 lt!1884695)))))

(declare-fun lt!1885546 () Unit!129252)

(assert (=> b!4720358 (= lt!1885546 call!330058)))

(assert (=> b!4720358 call!330060))

(declare-fun lt!1885563 () Unit!129252)

(assert (=> b!4720358 (= lt!1885563 lt!1885546)))

(assert (=> b!4720358 call!330059))

(declare-fun lt!1885556 () Unit!129252)

(declare-fun Unit!129563 () Unit!129252)

(assert (=> b!4720358 (= lt!1885556 Unit!129563)))

(declare-fun e!2943855 () Bool)

(assert (=> d!1502354 e!2943855))

(declare-fun res!1996685 () Bool)

(assert (=> d!1502354 (=> (not res!1996685) (not e!2943855))))

(assert (=> d!1502354 (= res!1996685 (forall!11574 (_2!30508 (h!59154 lt!1884695)) lambda!215066))))

(assert (=> d!1502354 (= lt!1885548 e!2943856)))

(assert (=> d!1502354 (= c!806145 ((_ is Nil!52812) (_2!30508 (h!59154 lt!1884695))))))

(assert (=> d!1502354 (noDuplicateKeys!2008 (_2!30508 (h!59154 lt!1884695)))))

(assert (=> d!1502354 (= (addToMapMapFromBucket!1438 (_2!30508 (h!59154 lt!1884695)) (extractMap!2034 (t!360193 lt!1884695))) lt!1885548)))

(declare-fun b!4720359 () Bool)

(assert (=> b!4720359 (= e!2943855 (invariantList!1505 (toList!5906 lt!1885548)))))

(declare-fun bm!330055 () Bool)

(assert (=> bm!330055 (= call!330060 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 lt!1884695))) (ite c!806145 lambda!215060 lambda!215063)))))

(declare-fun b!4720360 () Bool)

(declare-fun res!1996686 () Bool)

(assert (=> b!4720360 (=> (not res!1996686) (not e!2943855))))

(assert (=> b!4720360 (= res!1996686 (forall!11574 (toList!5906 (extractMap!2034 (t!360193 lt!1884695))) lambda!215066))))

(assert (= (and d!1502354 c!806145) b!4720358))

(assert (= (and d!1502354 (not c!806145)) b!4720357))

(assert (= (and b!4720357 res!1996684) b!4720356))

(assert (= (or b!4720358 b!4720357) bm!330053))

(assert (= (or b!4720358 b!4720357) bm!330054))

(assert (= (or b!4720358 b!4720357) bm!330055))

(assert (= (and d!1502354 res!1996685) b!4720360))

(assert (= (and b!4720360 res!1996686) b!4720359))

(declare-fun m!5653383 () Bool)

(assert (=> b!4720359 m!5653383))

(declare-fun m!5653385 () Bool)

(assert (=> bm!330054 m!5653385))

(assert (=> bm!330053 m!5652195))

(declare-fun m!5653387 () Bool)

(assert (=> bm!330053 m!5653387))

(declare-fun m!5653389 () Bool)

(assert (=> b!4720360 m!5653389))

(declare-fun m!5653391 () Bool)

(assert (=> b!4720357 m!5653391))

(declare-fun m!5653393 () Bool)

(assert (=> b!4720357 m!5653393))

(declare-fun m!5653395 () Bool)

(assert (=> b!4720357 m!5653395))

(declare-fun m!5653397 () Bool)

(assert (=> b!4720357 m!5653397))

(assert (=> b!4720357 m!5652195))

(declare-fun m!5653399 () Bool)

(assert (=> b!4720357 m!5653399))

(declare-fun m!5653401 () Bool)

(assert (=> b!4720357 m!5653401))

(declare-fun m!5653403 () Bool)

(assert (=> b!4720357 m!5653403))

(declare-fun m!5653405 () Bool)

(assert (=> b!4720357 m!5653405))

(assert (=> b!4720357 m!5653395))

(declare-fun m!5653407 () Bool)

(assert (=> b!4720357 m!5653407))

(declare-fun m!5653409 () Bool)

(assert (=> b!4720357 m!5653409))

(assert (=> b!4720357 m!5653401))

(assert (=> b!4720357 m!5652195))

(assert (=> b!4720357 m!5653403))

(declare-fun m!5653411 () Bool)

(assert (=> bm!330055 m!5653411))

(declare-fun m!5653413 () Bool)

(assert (=> d!1502354 m!5653413))

(declare-fun m!5653415 () Bool)

(assert (=> d!1502354 m!5653415))

(assert (=> b!4720356 m!5653401))

(assert (=> b!4719803 d!1502354))

(declare-fun bs!1107855 () Bool)

(declare-fun d!1502364 () Bool)

(assert (= bs!1107855 (and d!1502364 d!1502058)))

(declare-fun lambda!215067 () Int)

(assert (=> bs!1107855 (= lambda!215067 lambda!214993)))

(declare-fun bs!1107856 () Bool)

(assert (= bs!1107856 (and d!1502364 d!1502078)))

(assert (=> bs!1107856 (= lambda!215067 lambda!215003)))

(declare-fun bs!1107857 () Bool)

(assert (= bs!1107857 (and d!1502364 d!1502072)))

(assert (=> bs!1107857 (not (= lambda!215067 lambda!214998))))

(declare-fun bs!1107858 () Bool)

(assert (= bs!1107858 (and d!1502364 d!1502060)))

(assert (=> bs!1107858 (= lambda!215067 lambda!214994)))

(declare-fun bs!1107859 () Bool)

(assert (= bs!1107859 (and d!1502364 d!1502348)))

(assert (=> bs!1107859 (= lambda!215067 lambda!215059)))

(declare-fun bs!1107860 () Bool)

(assert (= bs!1107860 (and d!1502364 d!1502048)))

(assert (=> bs!1107860 (= lambda!215067 lambda!214984)))

(declare-fun bs!1107861 () Bool)

(assert (= bs!1107861 (and d!1502364 d!1501984)))

(assert (=> bs!1107861 (= lambda!215067 lambda!214971)))

(declare-fun bs!1107862 () Bool)

(assert (= bs!1107862 (and d!1502364 start!480328)))

(assert (=> bs!1107862 (= lambda!215067 lambda!214876)))

(declare-fun lt!1885571 () ListMap!5269)

(assert (=> d!1502364 (invariantList!1505 (toList!5906 lt!1885571))))

(declare-fun e!2943866 () ListMap!5269)

(assert (=> d!1502364 (= lt!1885571 e!2943866)))

(declare-fun c!806147 () Bool)

(assert (=> d!1502364 (= c!806147 ((_ is Cons!52813) (t!360193 lt!1884695)))))

(assert (=> d!1502364 (forall!11572 (t!360193 lt!1884695) lambda!215067)))

(assert (=> d!1502364 (= (extractMap!2034 (t!360193 lt!1884695)) lt!1885571)))

(declare-fun b!4720371 () Bool)

(assert (=> b!4720371 (= e!2943866 (addToMapMapFromBucket!1438 (_2!30508 (h!59154 (t!360193 lt!1884695))) (extractMap!2034 (t!360193 (t!360193 lt!1884695)))))))

(declare-fun b!4720372 () Bool)

(assert (=> b!4720372 (= e!2943866 (ListMap!5270 Nil!52812))))

(assert (= (and d!1502364 c!806147) b!4720371))

(assert (= (and d!1502364 (not c!806147)) b!4720372))

(declare-fun m!5653417 () Bool)

(assert (=> d!1502364 m!5653417))

(declare-fun m!5653419 () Bool)

(assert (=> d!1502364 m!5653419))

(declare-fun m!5653421 () Bool)

(assert (=> b!4720371 m!5653421))

(assert (=> b!4720371 m!5653421))

(declare-fun m!5653423 () Bool)

(assert (=> b!4720371 m!5653423))

(assert (=> b!4719803 d!1502364))

(declare-fun d!1502366 () Bool)

(declare-fun e!2943872 () Bool)

(assert (=> d!1502366 e!2943872))

(declare-fun res!1996695 () Bool)

(assert (=> d!1502366 (=> res!1996695 e!2943872)))

(declare-fun e!2943869 () Bool)

(assert (=> d!1502366 (= res!1996695 e!2943869)))

(declare-fun res!1996697 () Bool)

(assert (=> d!1502366 (=> (not res!1996697) (not e!2943869))))

(declare-fun lt!1885574 () Bool)

(assert (=> d!1502366 (= res!1996697 (not lt!1885574))))

(declare-fun lt!1885575 () Bool)

(assert (=> d!1502366 (= lt!1885574 lt!1885575)))

(declare-fun lt!1885572 () Unit!129252)

(declare-fun e!2943871 () Unit!129252)

(assert (=> d!1502366 (= lt!1885572 e!2943871)))

(declare-fun c!806149 () Bool)

(assert (=> d!1502366 (= c!806149 lt!1885575)))

(assert (=> d!1502366 (= lt!1885575 (containsKey!3359 (toList!5906 lt!1885094) (_1!30507 (h!59153 lt!1884694))))))

(assert (=> d!1502366 (= (contains!16156 lt!1885094 (_1!30507 (h!59153 lt!1884694))) lt!1885574)))

(declare-fun b!4720373 () Bool)

(assert (=> b!4720373 false))

(declare-fun lt!1885573 () Unit!129252)

(declare-fun lt!1885577 () Unit!129252)

(assert (=> b!4720373 (= lt!1885573 lt!1885577)))

(assert (=> b!4720373 (containsKey!3359 (toList!5906 lt!1885094) (_1!30507 (h!59153 lt!1884694)))))

(assert (=> b!4720373 (= lt!1885577 (lemmaInGetKeysListThenContainsKey!944 (toList!5906 lt!1885094) (_1!30507 (h!59153 lt!1884694))))))

(declare-fun e!2943867 () Unit!129252)

(declare-fun Unit!129574 () Unit!129252)

(assert (=> b!4720373 (= e!2943867 Unit!129574)))

(declare-fun b!4720374 () Bool)

(declare-fun Unit!129575 () Unit!129252)

(assert (=> b!4720374 (= e!2943867 Unit!129575)))

(declare-fun b!4720375 () Bool)

(declare-fun e!2943868 () Bool)

(assert (=> b!4720375 (= e!2943872 e!2943868)))

(declare-fun res!1996696 () Bool)

(assert (=> b!4720375 (=> (not res!1996696) (not e!2943868))))

(assert (=> b!4720375 (= res!1996696 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1885094) (_1!30507 (h!59153 lt!1884694)))))))

(declare-fun b!4720376 () Bool)

(assert (=> b!4720376 (= e!2943871 e!2943867)))

(declare-fun c!806148 () Bool)

(declare-fun call!330061 () Bool)

(assert (=> b!4720376 (= c!806148 call!330061)))

(declare-fun b!4720377 () Bool)

(declare-fun e!2943870 () List!52939)

(assert (=> b!4720377 (= e!2943870 (keys!18962 lt!1885094))))

(declare-fun b!4720378 () Bool)

(declare-fun lt!1885576 () Unit!129252)

(assert (=> b!4720378 (= e!2943871 lt!1885576)))

(declare-fun lt!1885578 () Unit!129252)

(assert (=> b!4720378 (= lt!1885578 (lemmaContainsKeyImpliesGetValueByKeyDefined!1840 (toList!5906 lt!1885094) (_1!30507 (h!59153 lt!1884694))))))

(assert (=> b!4720378 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1885094) (_1!30507 (h!59153 lt!1884694))))))

(declare-fun lt!1885579 () Unit!129252)

(assert (=> b!4720378 (= lt!1885579 lt!1885578)))

(assert (=> b!4720378 (= lt!1885576 (lemmaInListThenGetKeysListContains!940 (toList!5906 lt!1885094) (_1!30507 (h!59153 lt!1884694))))))

(assert (=> b!4720378 call!330061))

(declare-fun b!4720379 () Bool)

(assert (=> b!4720379 (= e!2943869 (not (contains!16159 (keys!18962 lt!1885094) (_1!30507 (h!59153 lt!1884694)))))))

(declare-fun b!4720380 () Bool)

(assert (=> b!4720380 (= e!2943870 (getKeysList!945 (toList!5906 lt!1885094)))))

(declare-fun b!4720381 () Bool)

(assert (=> b!4720381 (= e!2943868 (contains!16159 (keys!18962 lt!1885094) (_1!30507 (h!59153 lt!1884694))))))

(declare-fun bm!330056 () Bool)

(assert (=> bm!330056 (= call!330061 (contains!16159 e!2943870 (_1!30507 (h!59153 lt!1884694))))))

(declare-fun c!806150 () Bool)

(assert (=> bm!330056 (= c!806150 c!806149)))

(assert (= (and d!1502366 c!806149) b!4720378))

(assert (= (and d!1502366 (not c!806149)) b!4720376))

(assert (= (and b!4720376 c!806148) b!4720373))

(assert (= (and b!4720376 (not c!806148)) b!4720374))

(assert (= (or b!4720378 b!4720376) bm!330056))

(assert (= (and bm!330056 c!806150) b!4720380))

(assert (= (and bm!330056 (not c!806150)) b!4720377))

(assert (= (and d!1502366 res!1996697) b!4720379))

(assert (= (and d!1502366 (not res!1996695)) b!4720375))

(assert (= (and b!4720375 res!1996696) b!4720381))

(declare-fun m!5653425 () Bool)

(assert (=> b!4720377 m!5653425))

(declare-fun m!5653427 () Bool)

(assert (=> b!4720378 m!5653427))

(declare-fun m!5653429 () Bool)

(assert (=> b!4720378 m!5653429))

(assert (=> b!4720378 m!5653429))

(declare-fun m!5653431 () Bool)

(assert (=> b!4720378 m!5653431))

(declare-fun m!5653433 () Bool)

(assert (=> b!4720378 m!5653433))

(declare-fun m!5653435 () Bool)

(assert (=> b!4720380 m!5653435))

(assert (=> b!4720375 m!5653429))

(assert (=> b!4720375 m!5653429))

(assert (=> b!4720375 m!5653431))

(assert (=> b!4720381 m!5653425))

(assert (=> b!4720381 m!5653425))

(declare-fun m!5653437 () Bool)

(assert (=> b!4720381 m!5653437))

(declare-fun m!5653439 () Bool)

(assert (=> bm!330056 m!5653439))

(assert (=> b!4720379 m!5653425))

(assert (=> b!4720379 m!5653425))

(assert (=> b!4720379 m!5653437))

(declare-fun m!5653441 () Bool)

(assert (=> d!1502366 m!5653441))

(assert (=> b!4720373 m!5653441))

(declare-fun m!5653443 () Bool)

(assert (=> b!4720373 m!5653443))

(assert (=> b!4719795 d!1502366))

(declare-fun d!1502368 () Bool)

(declare-fun e!2943878 () Bool)

(assert (=> d!1502368 e!2943878))

(declare-fun res!1996698 () Bool)

(assert (=> d!1502368 (=> res!1996698 e!2943878)))

(declare-fun e!2943875 () Bool)

(assert (=> d!1502368 (= res!1996698 e!2943875)))

(declare-fun res!1996700 () Bool)

(assert (=> d!1502368 (=> (not res!1996700) (not e!2943875))))

(declare-fun lt!1885582 () Bool)

(assert (=> d!1502368 (= res!1996700 (not lt!1885582))))

(declare-fun lt!1885583 () Bool)

(assert (=> d!1502368 (= lt!1885582 lt!1885583)))

(declare-fun lt!1885580 () Unit!129252)

(declare-fun e!2943877 () Unit!129252)

(assert (=> d!1502368 (= lt!1885580 e!2943877)))

(declare-fun c!806152 () Bool)

(assert (=> d!1502368 (= c!806152 lt!1885583)))

(assert (=> d!1502368 (= lt!1885583 (containsKey!3359 (toList!5906 lt!1885075) (_1!30507 (h!59153 lt!1884694))))))

(assert (=> d!1502368 (= (contains!16156 lt!1885075 (_1!30507 (h!59153 lt!1884694))) lt!1885582)))

(declare-fun b!4720382 () Bool)

(assert (=> b!4720382 false))

(declare-fun lt!1885581 () Unit!129252)

(declare-fun lt!1885585 () Unit!129252)

(assert (=> b!4720382 (= lt!1885581 lt!1885585)))

(assert (=> b!4720382 (containsKey!3359 (toList!5906 lt!1885075) (_1!30507 (h!59153 lt!1884694)))))

(assert (=> b!4720382 (= lt!1885585 (lemmaInGetKeysListThenContainsKey!944 (toList!5906 lt!1885075) (_1!30507 (h!59153 lt!1884694))))))

(declare-fun e!2943873 () Unit!129252)

(declare-fun Unit!129576 () Unit!129252)

(assert (=> b!4720382 (= e!2943873 Unit!129576)))

(declare-fun b!4720383 () Bool)

(declare-fun Unit!129577 () Unit!129252)

(assert (=> b!4720383 (= e!2943873 Unit!129577)))

(declare-fun b!4720384 () Bool)

(declare-fun e!2943874 () Bool)

(assert (=> b!4720384 (= e!2943878 e!2943874)))

(declare-fun res!1996699 () Bool)

(assert (=> b!4720384 (=> (not res!1996699) (not e!2943874))))

(assert (=> b!4720384 (= res!1996699 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1885075) (_1!30507 (h!59153 lt!1884694)))))))

(declare-fun b!4720385 () Bool)

(assert (=> b!4720385 (= e!2943877 e!2943873)))

(declare-fun c!806151 () Bool)

(declare-fun call!330062 () Bool)

(assert (=> b!4720385 (= c!806151 call!330062)))

(declare-fun b!4720386 () Bool)

(declare-fun e!2943876 () List!52939)

(assert (=> b!4720386 (= e!2943876 (keys!18962 lt!1885075))))

(declare-fun b!4720387 () Bool)

(declare-fun lt!1885584 () Unit!129252)

(assert (=> b!4720387 (= e!2943877 lt!1885584)))

(declare-fun lt!1885586 () Unit!129252)

(assert (=> b!4720387 (= lt!1885586 (lemmaContainsKeyImpliesGetValueByKeyDefined!1840 (toList!5906 lt!1885075) (_1!30507 (h!59153 lt!1884694))))))

(assert (=> b!4720387 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1885075) (_1!30507 (h!59153 lt!1884694))))))

(declare-fun lt!1885587 () Unit!129252)

(assert (=> b!4720387 (= lt!1885587 lt!1885586)))

(assert (=> b!4720387 (= lt!1885584 (lemmaInListThenGetKeysListContains!940 (toList!5906 lt!1885075) (_1!30507 (h!59153 lt!1884694))))))

(assert (=> b!4720387 call!330062))

(declare-fun b!4720388 () Bool)

(assert (=> b!4720388 (= e!2943875 (not (contains!16159 (keys!18962 lt!1885075) (_1!30507 (h!59153 lt!1884694)))))))

(declare-fun b!4720389 () Bool)

(assert (=> b!4720389 (= e!2943876 (getKeysList!945 (toList!5906 lt!1885075)))))

(declare-fun b!4720390 () Bool)

(assert (=> b!4720390 (= e!2943874 (contains!16159 (keys!18962 lt!1885075) (_1!30507 (h!59153 lt!1884694))))))

(declare-fun bm!330057 () Bool)

(assert (=> bm!330057 (= call!330062 (contains!16159 e!2943876 (_1!30507 (h!59153 lt!1884694))))))

(declare-fun c!806153 () Bool)

(assert (=> bm!330057 (= c!806153 c!806152)))

(assert (= (and d!1502368 c!806152) b!4720387))

(assert (= (and d!1502368 (not c!806152)) b!4720385))

(assert (= (and b!4720385 c!806151) b!4720382))

(assert (= (and b!4720385 (not c!806151)) b!4720383))

(assert (= (or b!4720387 b!4720385) bm!330057))

(assert (= (and bm!330057 c!806153) b!4720389))

(assert (= (and bm!330057 (not c!806153)) b!4720386))

(assert (= (and d!1502368 res!1996700) b!4720388))

(assert (= (and d!1502368 (not res!1996698)) b!4720384))

(assert (= (and b!4720384 res!1996699) b!4720390))

(declare-fun m!5653445 () Bool)

(assert (=> b!4720386 m!5653445))

(declare-fun m!5653447 () Bool)

(assert (=> b!4720387 m!5653447))

(declare-fun m!5653449 () Bool)

(assert (=> b!4720387 m!5653449))

(assert (=> b!4720387 m!5653449))

(declare-fun m!5653451 () Bool)

(assert (=> b!4720387 m!5653451))

(declare-fun m!5653453 () Bool)

(assert (=> b!4720387 m!5653453))

(declare-fun m!5653455 () Bool)

(assert (=> b!4720389 m!5653455))

(assert (=> b!4720384 m!5653449))

(assert (=> b!4720384 m!5653449))

(assert (=> b!4720384 m!5653451))

(assert (=> b!4720390 m!5653445))

(assert (=> b!4720390 m!5653445))

(declare-fun m!5653457 () Bool)

(assert (=> b!4720390 m!5653457))

(declare-fun m!5653459 () Bool)

(assert (=> bm!330057 m!5653459))

(assert (=> b!4720388 m!5653445))

(assert (=> b!4720388 m!5653445))

(assert (=> b!4720388 m!5653457))

(declare-fun m!5653461 () Bool)

(assert (=> d!1502368 m!5653461))

(assert (=> b!4720382 m!5653461))

(declare-fun m!5653463 () Bool)

(assert (=> b!4720382 m!5653463))

(assert (=> b!4719795 d!1502368))

(declare-fun d!1502370 () Bool)

(declare-fun res!1996701 () Bool)

(declare-fun e!2943879 () Bool)

(assert (=> d!1502370 (=> res!1996701 e!2943879)))

(assert (=> d!1502370 (= res!1996701 ((_ is Nil!52812) (t!360192 lt!1884694)))))

(assert (=> d!1502370 (= (forall!11574 (t!360192 lt!1884694) lambda!214991) e!2943879)))

(declare-fun b!4720391 () Bool)

(declare-fun e!2943880 () Bool)

(assert (=> b!4720391 (= e!2943879 e!2943880)))

(declare-fun res!1996702 () Bool)

(assert (=> b!4720391 (=> (not res!1996702) (not e!2943880))))

(assert (=> b!4720391 (= res!1996702 (dynLambda!21811 lambda!214991 (h!59153 (t!360192 lt!1884694))))))

(declare-fun b!4720392 () Bool)

(assert (=> b!4720392 (= e!2943880 (forall!11574 (t!360192 (t!360192 lt!1884694)) lambda!214991))))

(assert (= (and d!1502370 (not res!1996701)) b!4720391))

(assert (= (and b!4720391 res!1996702) b!4720392))

(declare-fun b_lambda!178003 () Bool)

(assert (=> (not b_lambda!178003) (not b!4720391)))

(declare-fun m!5653465 () Bool)

(assert (=> b!4720391 m!5653465))

(declare-fun m!5653467 () Bool)

(assert (=> b!4720392 m!5653467))

(assert (=> b!4719795 d!1502370))

(declare-fun d!1502372 () Bool)

(declare-fun res!1996703 () Bool)

(declare-fun e!2943885 () Bool)

(assert (=> d!1502372 (=> res!1996703 e!2943885)))

(assert (=> d!1502372 (= res!1996703 ((_ is Nil!52812) lt!1884694))))

(assert (=> d!1502372 (= (forall!11574 lt!1884694 lambda!214991) e!2943885)))

(declare-fun b!4720401 () Bool)

(declare-fun e!2943886 () Bool)

(assert (=> b!4720401 (= e!2943885 e!2943886)))

(declare-fun res!1996704 () Bool)

(assert (=> b!4720401 (=> (not res!1996704) (not e!2943886))))

(assert (=> b!4720401 (= res!1996704 (dynLambda!21811 lambda!214991 (h!59153 lt!1884694)))))

(declare-fun b!4720402 () Bool)

(assert (=> b!4720402 (= e!2943886 (forall!11574 (t!360192 lt!1884694) lambda!214991))))

(assert (= (and d!1502372 (not res!1996703)) b!4720401))

(assert (= (and b!4720401 res!1996704) b!4720402))

(declare-fun b_lambda!178005 () Bool)

(assert (=> (not b_lambda!178005) (not b!4720401)))

(declare-fun m!5653469 () Bool)

(assert (=> b!4720401 m!5653469))

(assert (=> b!4720402 m!5652173))

(assert (=> b!4719795 d!1502372))

(declare-fun d!1502374 () Bool)

(assert (=> d!1502374 (dynLambda!21811 lambda!214991 (h!59153 lt!1884694))))

(declare-fun lt!1885596 () Unit!129252)

(assert (=> d!1502374 (= lt!1885596 (choose!33292 (toList!5906 lt!1885075) lambda!214991 (h!59153 lt!1884694)))))

(declare-fun e!2943889 () Bool)

(assert (=> d!1502374 e!2943889))

(declare-fun res!1996705 () Bool)

(assert (=> d!1502374 (=> (not res!1996705) (not e!2943889))))

(assert (=> d!1502374 (= res!1996705 (forall!11574 (toList!5906 lt!1885075) lambda!214991))))

(assert (=> d!1502374 (= (forallContained!3629 (toList!5906 lt!1885075) lambda!214991 (h!59153 lt!1884694)) lt!1885596)))

(declare-fun b!4720407 () Bool)

(assert (=> b!4720407 (= e!2943889 (contains!16158 (toList!5906 lt!1885075) (h!59153 lt!1884694)))))

(assert (= (and d!1502374 res!1996705) b!4720407))

(declare-fun b_lambda!178007 () Bool)

(assert (=> (not b_lambda!178007) (not d!1502374)))

(assert (=> d!1502374 m!5653469))

(declare-fun m!5653471 () Bool)

(assert (=> d!1502374 m!5653471))

(assert (=> d!1502374 m!5652159))

(declare-fun m!5653473 () Bool)

(assert (=> b!4720407 m!5653473))

(assert (=> b!4719795 d!1502374))

(declare-fun d!1502376 () Bool)

(declare-fun e!2943890 () Bool)

(assert (=> d!1502376 e!2943890))

(declare-fun res!1996707 () Bool)

(assert (=> d!1502376 (=> (not res!1996707) (not e!2943890))))

(declare-fun lt!1885599 () ListMap!5269)

(assert (=> d!1502376 (= res!1996707 (contains!16156 lt!1885599 (_1!30507 (h!59153 lt!1884694))))))

(declare-fun lt!1885597 () List!52936)

(assert (=> d!1502376 (= lt!1885599 (ListMap!5270 lt!1885597))))

(declare-fun lt!1885598 () Unit!129252)

(declare-fun lt!1885600 () Unit!129252)

(assert (=> d!1502376 (= lt!1885598 lt!1885600)))

(assert (=> d!1502376 (= (getValueByKey!1949 lt!1885597 (_1!30507 (h!59153 lt!1884694))) (Some!12352 (_2!30507 (h!59153 lt!1884694))))))

(assert (=> d!1502376 (= lt!1885600 (lemmaContainsTupThenGetReturnValue!1079 lt!1885597 (_1!30507 (h!59153 lt!1884694)) (_2!30507 (h!59153 lt!1884694))))))

(assert (=> d!1502376 (= lt!1885597 (insertNoDuplicatedKeys!587 (toList!5906 lt!1884696) (_1!30507 (h!59153 lt!1884694)) (_2!30507 (h!59153 lt!1884694))))))

(assert (=> d!1502376 (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885599)))

(declare-fun b!4720408 () Bool)

(declare-fun res!1996706 () Bool)

(assert (=> b!4720408 (=> (not res!1996706) (not e!2943890))))

(assert (=> b!4720408 (= res!1996706 (= (getValueByKey!1949 (toList!5906 lt!1885599) (_1!30507 (h!59153 lt!1884694))) (Some!12352 (_2!30507 (h!59153 lt!1884694)))))))

(declare-fun b!4720409 () Bool)

(assert (=> b!4720409 (= e!2943890 (contains!16158 (toList!5906 lt!1885599) (h!59153 lt!1884694)))))

(assert (= (and d!1502376 res!1996707) b!4720408))

(assert (= (and b!4720408 res!1996706) b!4720409))

(declare-fun m!5653475 () Bool)

(assert (=> d!1502376 m!5653475))

(declare-fun m!5653477 () Bool)

(assert (=> d!1502376 m!5653477))

(declare-fun m!5653479 () Bool)

(assert (=> d!1502376 m!5653479))

(declare-fun m!5653481 () Bool)

(assert (=> d!1502376 m!5653481))

(declare-fun m!5653483 () Bool)

(assert (=> b!4720408 m!5653483))

(declare-fun m!5653485 () Bool)

(assert (=> b!4720409 m!5653485))

(assert (=> b!4719795 d!1502376))

(declare-fun bs!1107863 () Bool)

(declare-fun b!4720412 () Bool)

(assert (= bs!1107863 (and b!4720412 b!4719837)))

(declare-fun lambda!215070 () Int)

(assert (=> bs!1107863 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885120) (= lambda!215070 lambda!215001))))

(declare-fun bs!1107864 () Bool)

(assert (= bs!1107864 (and b!4720412 b!4719725)))

(assert (=> bs!1107864 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885008) (= lambda!215070 lambda!214981))))

(declare-fun bs!1107865 () Bool)

(assert (= bs!1107865 (and b!4720412 b!4720357)))

(assert (=> bs!1107865 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885566) (= lambda!215070 lambda!215065))))

(declare-fun bs!1107866 () Bool)

(assert (= bs!1107866 (and b!4720412 d!1502146)))

(assert (=> bs!1107866 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884963) (= lambda!215070 lambda!215012))))

(declare-fun bs!1107867 () Bool)

(assert (= bs!1107867 (and b!4720412 b!4720323)))

(assert (=> bs!1107867 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885509) (= lambda!215070 lambda!215052))))

(declare-fun bs!1107868 () Bool)

(assert (= bs!1107868 (and b!4720412 d!1501954)))

(assert (=> bs!1107868 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884817) (= lambda!215070 lambda!214951))))

(declare-fun bs!1107869 () Bool)

(assert (= bs!1107869 (and b!4720412 b!4719726)))

(assert (=> bs!1107869 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215070 lambda!214977))))

(declare-fun bs!1107870 () Bool)

(assert (= bs!1107870 (and b!4720412 b!4719652)))

(assert (=> bs!1107870 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884835) (= lambda!215070 lambda!214950))))

(declare-fun bs!1107871 () Bool)

(assert (= bs!1107871 (and b!4720412 b!4719990)))

(assert (=> bs!1107871 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885226) (= lambda!215070 lambda!215015))))

(declare-fun bs!1107872 () Bool)

(assert (= bs!1107872 (and b!4720412 d!1502076)))

(assert (=> bs!1107872 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885102) (= lambda!215070 lambda!215002))))

(declare-fun bs!1107873 () Bool)

(assert (= bs!1107873 (and b!4720412 b!4720197)))

(assert (=> bs!1107873 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215070 lambda!215040))))

(declare-fun bs!1107874 () Bool)

(assert (= bs!1107874 (and b!4720412 b!4719957)))

(assert (=> bs!1107874 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215070 lambda!215005))))

(declare-fun bs!1107875 () Bool)

(assert (= bs!1107875 (and b!4720412 b!4720019)))

(assert (=> bs!1107875 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215070 lambda!215018))))

(declare-fun bs!1107876 () Bool)

(assert (= bs!1107876 (and b!4720412 d!1501952)))

(assert (=> bs!1107876 (not (= lambda!215070 lambda!214879))))

(assert (=> bs!1107870 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215070 lambda!214949))))

(assert (=> bs!1107871 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215070 lambda!215014))))

(assert (=> bs!1107867 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215070 lambda!215051))))

(declare-fun bs!1107877 () Bool)

(assert (= bs!1107877 (and b!4720412 d!1502126)))

(assert (=> bs!1107877 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885172) (= lambda!215070 lambda!215007))))

(declare-fun bs!1107878 () Bool)

(assert (= bs!1107878 (and b!4720412 b!4719838)))

(assert (=> bs!1107878 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215070 lambda!214999))))

(declare-fun bs!1107879 () Bool)

(assert (= bs!1107879 (and b!4720412 b!4719716)))

(assert (=> bs!1107879 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215070 lambda!214972))))

(declare-fun bs!1107880 () Bool)

(assert (= bs!1107880 (and b!4720412 b!4720254)))

(assert (=> bs!1107880 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215070 lambda!215046))))

(declare-fun bs!1107881 () Bool)

(assert (= bs!1107881 (and b!4720412 b!4719796)))

(assert (=> bs!1107881 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215070 lambda!214989))))

(declare-fun bs!1107882 () Bool)

(assert (= bs!1107882 (and b!4720412 b!4719715)))

(assert (=> bs!1107882 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215070 lambda!214973))))

(declare-fun bs!1107883 () Bool)

(assert (= bs!1107883 (and b!4720412 b!4720018)))

(assert (=> bs!1107883 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885264) (= lambda!215070 lambda!215020))))

(declare-fun bs!1107884 () Bool)

(assert (= bs!1107884 (and b!4720412 d!1502336)))

(assert (=> bs!1107884 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885491) (= lambda!215070 lambda!215056))))

(declare-fun bs!1107885 () Bool)

(assert (= bs!1107885 (and b!4720412 d!1502174)))

(assert (=> bs!1107885 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885246) (= lambda!215070 lambda!215021))))

(declare-fun bs!1107886 () Bool)

(assert (= bs!1107886 (and b!4720412 d!1502298)))

(assert (=> bs!1107886 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884835) (= lambda!215070 lambda!215044))))

(declare-fun bs!1107887 () Bool)

(assert (= bs!1107887 (and b!4720412 d!1502170)))

(assert (=> bs!1107887 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885008) (= lambda!215070 lambda!215017))))

(declare-fun bs!1107888 () Bool)

(assert (= bs!1107888 (and b!4720412 d!1502154)))

(assert (=> bs!1107888 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885208) (= lambda!215070 lambda!215016))))

(declare-fun bs!1107889 () Bool)

(assert (= bs!1107889 (and b!4720412 d!1502052)))

(assert (=> bs!1107889 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885076) (= lambda!215070 lambda!214992))))

(declare-fun bs!1107890 () Bool)

(assert (= bs!1107890 (and b!4720412 b!4719790)))

(assert (=> bs!1107890 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215070 lambda!214986))))

(declare-fun bs!1107891 () Bool)

(assert (= bs!1107891 (and b!4720412 d!1502320)))

(assert (=> bs!1107891 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885073) (= lambda!215070 lambda!215049))))

(declare-fun bs!1107892 () Bool)

(assert (= bs!1107892 (and b!4720412 d!1502050)))

(assert (=> bs!1107892 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885055) (= lambda!215070 lambda!214988))))

(declare-fun bs!1107893 () Bool)

(assert (= bs!1107893 (and b!4720412 b!4720198)))

(assert (=> bs!1107893 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215070 lambda!215038))))

(assert (=> bs!1107873 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885389) (= lambda!215070 lambda!215042))))

(assert (=> bs!1107863 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215070 lambda!215000))))

(declare-fun bs!1107894 () Bool)

(assert (= bs!1107894 (and b!4720412 b!4720324)))

(assert (=> bs!1107894 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215070 lambda!215050))))

(declare-fun bs!1107895 () Bool)

(assert (= bs!1107895 (and b!4720412 b!4719958)))

(assert (=> bs!1107895 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215070 lambda!215004))))

(assert (=> bs!1107865 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (extractMap!2034 (t!360193 lt!1884695))) (= lambda!215070 lambda!215063))))

(declare-fun bs!1107896 () Bool)

(assert (= bs!1107896 (and b!4720412 d!1502354)))

(assert (=> bs!1107896 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885548) (= lambda!215070 lambda!215066))))

(assert (=> bs!1107882 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884963) (= lambda!215070 lambda!214974))))

(declare-fun bs!1107897 () Bool)

(assert (= bs!1107897 (and b!4720412 b!4719791)))

(assert (=> bs!1107897 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215070 lambda!214985))))

(declare-fun bs!1107898 () Bool)

(assert (= bs!1107898 (and b!4720412 b!4719991)))

(assert (=> bs!1107898 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215070 lambda!215013))))

(declare-fun bs!1107899 () Bool)

(assert (= bs!1107899 (and b!4720412 d!1502308)))

(assert (=> bs!1107899 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885428) (= lambda!215070 lambda!215048))))

(assert (=> bs!1107890 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885073) (= lambda!215070 lambda!214987))))

(declare-fun bs!1107900 () Bool)

(assert (= bs!1107900 (and b!4720412 d!1502034)))

(assert (=> bs!1107900 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884990) (= lambda!215070 lambda!214982))))

(assert (=> bs!1107864 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215070 lambda!214979))))

(assert (=> bs!1107880 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885446) (= lambda!215070 lambda!215047))))

(declare-fun bs!1107901 () Bool)

(assert (= bs!1107901 (and b!4720412 d!1502226)))

(assert (=> bs!1107901 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215070 lambda!215030))))

(declare-fun bs!1107902 () Bool)

(assert (= bs!1107902 (and b!4720412 b!4719653)))

(assert (=> bs!1107902 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215070 lambda!214948))))

(declare-fun bs!1107903 () Bool)

(assert (= bs!1107903 (and b!4720412 b!4720255)))

(assert (=> bs!1107903 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215070 lambda!215045))))

(declare-fun bs!1107904 () Bool)

(assert (= bs!1107904 (and b!4720412 d!1502062)))

(assert (=> bs!1107904 (not (= lambda!215070 lambda!214995))))

(declare-fun bs!1107905 () Bool)

(assert (= bs!1107905 (and b!4720412 d!1502028)))

(assert (=> bs!1107905 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884945) (= lambda!215070 lambda!214975))))

(assert (=> bs!1107874 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885190) (= lambda!215070 lambda!215006))))

(declare-fun bs!1107906 () Bool)

(assert (= bs!1107906 (and b!4720412 b!4719795)))

(assert (=> bs!1107906 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885094) (= lambda!215070 lambda!214991))))

(declare-fun bs!1107907 () Bool)

(assert (= bs!1107907 (and b!4720412 d!1502272)))

(assert (=> bs!1107907 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885371) (= lambda!215070 lambda!215043))))

(assert (=> bs!1107906 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215070 lambda!214990))))

(declare-fun bs!1107908 () Bool)

(assert (= bs!1107908 (and b!4720412 b!4720358)))

(assert (=> bs!1107908 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (extractMap!2034 (t!360193 lt!1884695))) (= lambda!215070 lambda!215060))))

(assert (=> bs!1107883 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215070 lambda!215019))))

(assert (=> b!4720412 true))

(declare-fun bs!1107909 () Bool)

(declare-fun b!4720411 () Bool)

(assert (= bs!1107909 (and b!4720411 b!4719837)))

(declare-fun lambda!215077 () Int)

(assert (=> bs!1107909 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885120) (= lambda!215077 lambda!215001))))

(declare-fun bs!1107910 () Bool)

(assert (= bs!1107910 (and b!4720411 b!4720357)))

(assert (=> bs!1107910 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885566) (= lambda!215077 lambda!215065))))

(declare-fun bs!1107911 () Bool)

(assert (= bs!1107911 (and b!4720411 d!1502146)))

(assert (=> bs!1107911 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884963) (= lambda!215077 lambda!215012))))

(declare-fun bs!1107912 () Bool)

(assert (= bs!1107912 (and b!4720411 b!4720323)))

(assert (=> bs!1107912 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885509) (= lambda!215077 lambda!215052))))

(declare-fun bs!1107913 () Bool)

(assert (= bs!1107913 (and b!4720411 d!1501954)))

(assert (=> bs!1107913 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884817) (= lambda!215077 lambda!214951))))

(declare-fun bs!1107914 () Bool)

(assert (= bs!1107914 (and b!4720411 b!4719726)))

(assert (=> bs!1107914 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215077 lambda!214977))))

(declare-fun bs!1107915 () Bool)

(assert (= bs!1107915 (and b!4720411 b!4719652)))

(assert (=> bs!1107915 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884835) (= lambda!215077 lambda!214950))))

(declare-fun bs!1107916 () Bool)

(assert (= bs!1107916 (and b!4720411 b!4719990)))

(assert (=> bs!1107916 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885226) (= lambda!215077 lambda!215015))))

(declare-fun bs!1107917 () Bool)

(assert (= bs!1107917 (and b!4720411 d!1502076)))

(assert (=> bs!1107917 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885102) (= lambda!215077 lambda!215002))))

(declare-fun bs!1107918 () Bool)

(assert (= bs!1107918 (and b!4720411 b!4720197)))

(assert (=> bs!1107918 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215077 lambda!215040))))

(declare-fun bs!1107919 () Bool)

(assert (= bs!1107919 (and b!4720411 b!4719957)))

(assert (=> bs!1107919 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215077 lambda!215005))))

(declare-fun bs!1107920 () Bool)

(assert (= bs!1107920 (and b!4720411 b!4720019)))

(assert (=> bs!1107920 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215077 lambda!215018))))

(declare-fun bs!1107921 () Bool)

(assert (= bs!1107921 (and b!4720411 d!1501952)))

(assert (=> bs!1107921 (not (= lambda!215077 lambda!214879))))

(assert (=> bs!1107915 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215077 lambda!214949))))

(assert (=> bs!1107916 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215077 lambda!215014))))

(assert (=> bs!1107912 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215077 lambda!215051))))

(declare-fun bs!1107922 () Bool)

(assert (= bs!1107922 (and b!4720411 d!1502126)))

(assert (=> bs!1107922 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885172) (= lambda!215077 lambda!215007))))

(declare-fun bs!1107923 () Bool)

(assert (= bs!1107923 (and b!4720411 b!4719838)))

(assert (=> bs!1107923 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215077 lambda!214999))))

(declare-fun bs!1107924 () Bool)

(assert (= bs!1107924 (and b!4720411 b!4719716)))

(assert (=> bs!1107924 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215077 lambda!214972))))

(declare-fun bs!1107925 () Bool)

(assert (= bs!1107925 (and b!4720411 b!4720254)))

(assert (=> bs!1107925 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215077 lambda!215046))))

(declare-fun bs!1107926 () Bool)

(assert (= bs!1107926 (and b!4720411 b!4719796)))

(assert (=> bs!1107926 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215077 lambda!214989))))

(declare-fun bs!1107927 () Bool)

(assert (= bs!1107927 (and b!4720411 b!4719715)))

(assert (=> bs!1107927 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215077 lambda!214973))))

(declare-fun bs!1107929 () Bool)

(assert (= bs!1107929 (and b!4720411 b!4720018)))

(assert (=> bs!1107929 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885264) (= lambda!215077 lambda!215020))))

(declare-fun bs!1107930 () Bool)

(assert (= bs!1107930 (and b!4720411 d!1502336)))

(assert (=> bs!1107930 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885491) (= lambda!215077 lambda!215056))))

(declare-fun bs!1107931 () Bool)

(assert (= bs!1107931 (and b!4720411 b!4720412)))

(assert (=> bs!1107931 (= lambda!215077 lambda!215070)))

(declare-fun bs!1107932 () Bool)

(assert (= bs!1107932 (and b!4720411 b!4719725)))

(assert (=> bs!1107932 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885008) (= lambda!215077 lambda!214981))))

(declare-fun bs!1107933 () Bool)

(assert (= bs!1107933 (and b!4720411 d!1502174)))

(assert (=> bs!1107933 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885246) (= lambda!215077 lambda!215021))))

(declare-fun bs!1107935 () Bool)

(assert (= bs!1107935 (and b!4720411 d!1502298)))

(assert (=> bs!1107935 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884835) (= lambda!215077 lambda!215044))))

(declare-fun bs!1107937 () Bool)

(assert (= bs!1107937 (and b!4720411 d!1502170)))

(assert (=> bs!1107937 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885008) (= lambda!215077 lambda!215017))))

(declare-fun bs!1107938 () Bool)

(assert (= bs!1107938 (and b!4720411 d!1502154)))

(assert (=> bs!1107938 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885208) (= lambda!215077 lambda!215016))))

(declare-fun bs!1107939 () Bool)

(assert (= bs!1107939 (and b!4720411 d!1502052)))

(assert (=> bs!1107939 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885076) (= lambda!215077 lambda!214992))))

(declare-fun bs!1107940 () Bool)

(assert (= bs!1107940 (and b!4720411 b!4719790)))

(assert (=> bs!1107940 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215077 lambda!214986))))

(declare-fun bs!1107941 () Bool)

(assert (= bs!1107941 (and b!4720411 d!1502320)))

(assert (=> bs!1107941 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885073) (= lambda!215077 lambda!215049))))

(declare-fun bs!1107942 () Bool)

(assert (= bs!1107942 (and b!4720411 d!1502050)))

(assert (=> bs!1107942 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885055) (= lambda!215077 lambda!214988))))

(declare-fun bs!1107943 () Bool)

(assert (= bs!1107943 (and b!4720411 b!4720198)))

(assert (=> bs!1107943 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215077 lambda!215038))))

(assert (=> bs!1107918 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885389) (= lambda!215077 lambda!215042))))

(assert (=> bs!1107909 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215077 lambda!215000))))

(declare-fun bs!1107944 () Bool)

(assert (= bs!1107944 (and b!4720411 b!4720324)))

(assert (=> bs!1107944 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215077 lambda!215050))))

(declare-fun bs!1107945 () Bool)

(assert (= bs!1107945 (and b!4720411 b!4719958)))

(assert (=> bs!1107945 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215077 lambda!215004))))

(assert (=> bs!1107910 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (extractMap!2034 (t!360193 lt!1884695))) (= lambda!215077 lambda!215063))))

(declare-fun bs!1107946 () Bool)

(assert (= bs!1107946 (and b!4720411 d!1502354)))

(assert (=> bs!1107946 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885548) (= lambda!215077 lambda!215066))))

(assert (=> bs!1107927 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884963) (= lambda!215077 lambda!214974))))

(declare-fun bs!1107947 () Bool)

(assert (= bs!1107947 (and b!4720411 b!4719791)))

(assert (=> bs!1107947 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215077 lambda!214985))))

(declare-fun bs!1107948 () Bool)

(assert (= bs!1107948 (and b!4720411 b!4719991)))

(assert (=> bs!1107948 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215077 lambda!215013))))

(declare-fun bs!1107949 () Bool)

(assert (= bs!1107949 (and b!4720411 d!1502308)))

(assert (=> bs!1107949 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885428) (= lambda!215077 lambda!215048))))

(assert (=> bs!1107940 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885073) (= lambda!215077 lambda!214987))))

(declare-fun bs!1107950 () Bool)

(assert (= bs!1107950 (and b!4720411 d!1502034)))

(assert (=> bs!1107950 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884990) (= lambda!215077 lambda!214982))))

(assert (=> bs!1107932 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215077 lambda!214979))))

(assert (=> bs!1107925 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885446) (= lambda!215077 lambda!215047))))

(declare-fun bs!1107951 () Bool)

(assert (= bs!1107951 (and b!4720411 d!1502226)))

(assert (=> bs!1107951 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215077 lambda!215030))))

(declare-fun bs!1107952 () Bool)

(assert (= bs!1107952 (and b!4720411 b!4719653)))

(assert (=> bs!1107952 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215077 lambda!214948))))

(declare-fun bs!1107953 () Bool)

(assert (= bs!1107953 (and b!4720411 b!4720255)))

(assert (=> bs!1107953 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215077 lambda!215045))))

(declare-fun bs!1107954 () Bool)

(assert (= bs!1107954 (and b!4720411 d!1502062)))

(assert (=> bs!1107954 (not (= lambda!215077 lambda!214995))))

(declare-fun bs!1107955 () Bool)

(assert (= bs!1107955 (and b!4720411 d!1502028)))

(assert (=> bs!1107955 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884945) (= lambda!215077 lambda!214975))))

(assert (=> bs!1107919 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885190) (= lambda!215077 lambda!215006))))

(declare-fun bs!1107956 () Bool)

(assert (= bs!1107956 (and b!4720411 b!4719795)))

(assert (=> bs!1107956 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885094) (= lambda!215077 lambda!214991))))

(declare-fun bs!1107957 () Bool)

(assert (= bs!1107957 (and b!4720411 d!1502272)))

(assert (=> bs!1107957 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885371) (= lambda!215077 lambda!215043))))

(assert (=> bs!1107956 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1884696) (= lambda!215077 lambda!214990))))

(declare-fun bs!1107958 () Bool)

(assert (= bs!1107958 (and b!4720411 b!4720358)))

(assert (=> bs!1107958 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (extractMap!2034 (t!360193 lt!1884695))) (= lambda!215077 lambda!215060))))

(assert (=> bs!1107929 (= (= (+!2263 lt!1884696 (h!59153 lt!1884694)) (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215077 lambda!215019))))

(assert (=> b!4720411 true))

(declare-fun lambda!215082 () Int)

(declare-fun lt!1885627 () ListMap!5269)

(assert (=> bs!1107909 (= (= lt!1885627 lt!1885120) (= lambda!215082 lambda!215001))))

(assert (=> bs!1107910 (= (= lt!1885627 lt!1885566) (= lambda!215082 lambda!215065))))

(assert (=> bs!1107911 (= (= lt!1885627 lt!1884963) (= lambda!215082 lambda!215012))))

(assert (=> bs!1107912 (= (= lt!1885627 lt!1885509) (= lambda!215082 lambda!215052))))

(assert (=> bs!1107913 (= (= lt!1885627 lt!1884817) (= lambda!215082 lambda!214951))))

(assert (=> bs!1107914 (= (= lt!1885627 lt!1884696) (= lambda!215082 lambda!214977))))

(assert (=> bs!1107915 (= (= lt!1885627 lt!1884835) (= lambda!215082 lambda!214950))))

(assert (=> bs!1107916 (= (= lt!1885627 lt!1885226) (= lambda!215082 lambda!215015))))

(assert (=> bs!1107917 (= (= lt!1885627 lt!1885102) (= lambda!215082 lambda!215002))))

(assert (=> bs!1107918 (= (= lt!1885627 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215082 lambda!215040))))

(assert (=> bs!1107919 (= (= lt!1885627 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215082 lambda!215005))))

(assert (=> bs!1107920 (= (= lt!1885627 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215082 lambda!215018))))

(assert (=> bs!1107921 (not (= lambda!215082 lambda!214879))))

(assert (=> bs!1107915 (= (= lt!1885627 lt!1884696) (= lambda!215082 lambda!214949))))

(assert (=> bs!1107916 (= (= lt!1885627 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215082 lambda!215014))))

(assert (=> bs!1107912 (= (= lt!1885627 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215082 lambda!215051))))

(assert (=> bs!1107922 (= (= lt!1885627 lt!1885172) (= lambda!215082 lambda!215007))))

(assert (=> bs!1107923 (= (= lt!1885627 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215082 lambda!214999))))

(assert (=> b!4720411 (= (= lt!1885627 (+!2263 lt!1884696 (h!59153 lt!1884694))) (= lambda!215082 lambda!215077))))

(assert (=> bs!1107924 (= (= lt!1885627 lt!1884696) (= lambda!215082 lambda!214972))))

(assert (=> bs!1107925 (= (= lt!1885627 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215082 lambda!215046))))

(assert (=> bs!1107926 (= (= lt!1885627 lt!1884696) (= lambda!215082 lambda!214989))))

(assert (=> bs!1107927 (= (= lt!1885627 lt!1884696) (= lambda!215082 lambda!214973))))

(assert (=> bs!1107929 (= (= lt!1885627 lt!1885264) (= lambda!215082 lambda!215020))))

(assert (=> bs!1107930 (= (= lt!1885627 lt!1885491) (= lambda!215082 lambda!215056))))

(assert (=> bs!1107931 (= (= lt!1885627 (+!2263 lt!1884696 (h!59153 lt!1884694))) (= lambda!215082 lambda!215070))))

(assert (=> bs!1107932 (= (= lt!1885627 lt!1885008) (= lambda!215082 lambda!214981))))

(assert (=> bs!1107933 (= (= lt!1885627 lt!1885246) (= lambda!215082 lambda!215021))))

(assert (=> bs!1107935 (= (= lt!1885627 lt!1884835) (= lambda!215082 lambda!215044))))

(assert (=> bs!1107937 (= (= lt!1885627 lt!1885008) (= lambda!215082 lambda!215017))))

(assert (=> bs!1107938 (= (= lt!1885627 lt!1885208) (= lambda!215082 lambda!215016))))

(assert (=> bs!1107939 (= (= lt!1885627 lt!1885076) (= lambda!215082 lambda!214992))))

(assert (=> bs!1107940 (= (= lt!1885627 lt!1884696) (= lambda!215082 lambda!214986))))

(assert (=> bs!1107941 (= (= lt!1885627 lt!1885073) (= lambda!215082 lambda!215049))))

(assert (=> bs!1107942 (= (= lt!1885627 lt!1885055) (= lambda!215082 lambda!214988))))

(assert (=> bs!1107943 (= (= lt!1885627 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215082 lambda!215038))))

(assert (=> bs!1107918 (= (= lt!1885627 lt!1885389) (= lambda!215082 lambda!215042))))

(assert (=> bs!1107909 (= (= lt!1885627 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215082 lambda!215000))))

(assert (=> bs!1107944 (= (= lt!1885627 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215082 lambda!215050))))

(assert (=> bs!1107945 (= (= lt!1885627 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215082 lambda!215004))))

(assert (=> bs!1107910 (= (= lt!1885627 (extractMap!2034 (t!360193 lt!1884695))) (= lambda!215082 lambda!215063))))

(assert (=> bs!1107946 (= (= lt!1885627 lt!1885548) (= lambda!215082 lambda!215066))))

(assert (=> bs!1107927 (= (= lt!1885627 lt!1884963) (= lambda!215082 lambda!214974))))

(assert (=> bs!1107947 (= (= lt!1885627 lt!1884696) (= lambda!215082 lambda!214985))))

(assert (=> bs!1107948 (= (= lt!1885627 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215082 lambda!215013))))

(assert (=> bs!1107949 (= (= lt!1885627 lt!1885428) (= lambda!215082 lambda!215048))))

(assert (=> bs!1107940 (= (= lt!1885627 lt!1885073) (= lambda!215082 lambda!214987))))

(assert (=> bs!1107950 (= (= lt!1885627 lt!1884990) (= lambda!215082 lambda!214982))))

(assert (=> bs!1107932 (= (= lt!1885627 lt!1884696) (= lambda!215082 lambda!214979))))

(assert (=> bs!1107925 (= (= lt!1885627 lt!1885446) (= lambda!215082 lambda!215047))))

(assert (=> bs!1107951 (= (= lt!1885627 lt!1884696) (= lambda!215082 lambda!215030))))

(assert (=> bs!1107952 (= (= lt!1885627 lt!1884696) (= lambda!215082 lambda!214948))))

(assert (=> bs!1107953 (= (= lt!1885627 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215082 lambda!215045))))

(assert (=> bs!1107954 (not (= lambda!215082 lambda!214995))))

(assert (=> bs!1107955 (= (= lt!1885627 lt!1884945) (= lambda!215082 lambda!214975))))

(assert (=> bs!1107919 (= (= lt!1885627 lt!1885190) (= lambda!215082 lambda!215006))))

(assert (=> bs!1107956 (= (= lt!1885627 lt!1885094) (= lambda!215082 lambda!214991))))

(assert (=> bs!1107957 (= (= lt!1885627 lt!1885371) (= lambda!215082 lambda!215043))))

(assert (=> bs!1107956 (= (= lt!1885627 lt!1884696) (= lambda!215082 lambda!214990))))

(assert (=> bs!1107958 (= (= lt!1885627 (extractMap!2034 (t!360193 lt!1884695))) (= lambda!215082 lambda!215060))))

(assert (=> bs!1107929 (= (= lt!1885627 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215082 lambda!215019))))

(assert (=> b!4720411 true))

(declare-fun bs!1107998 () Bool)

(declare-fun d!1502378 () Bool)

(assert (= bs!1107998 (and d!1502378 b!4719837)))

(declare-fun lt!1885609 () ListMap!5269)

(declare-fun lambda!215085 () Int)

(assert (=> bs!1107998 (= (= lt!1885609 lt!1885120) (= lambda!215085 lambda!215001))))

(declare-fun bs!1108000 () Bool)

(assert (= bs!1108000 (and d!1502378 b!4720357)))

(assert (=> bs!1108000 (= (= lt!1885609 lt!1885566) (= lambda!215085 lambda!215065))))

(declare-fun bs!1108001 () Bool)

(assert (= bs!1108001 (and d!1502378 d!1502146)))

(assert (=> bs!1108001 (= (= lt!1885609 lt!1884963) (= lambda!215085 lambda!215012))))

(declare-fun bs!1108003 () Bool)

(assert (= bs!1108003 (and d!1502378 b!4720323)))

(assert (=> bs!1108003 (= (= lt!1885609 lt!1885509) (= lambda!215085 lambda!215052))))

(declare-fun bs!1108004 () Bool)

(assert (= bs!1108004 (and d!1502378 d!1501954)))

(assert (=> bs!1108004 (= (= lt!1885609 lt!1884817) (= lambda!215085 lambda!214951))))

(declare-fun bs!1108005 () Bool)

(assert (= bs!1108005 (and d!1502378 b!4719726)))

(assert (=> bs!1108005 (= (= lt!1885609 lt!1884696) (= lambda!215085 lambda!214977))))

(declare-fun bs!1108007 () Bool)

(assert (= bs!1108007 (and d!1502378 b!4719652)))

(assert (=> bs!1108007 (= (= lt!1885609 lt!1884835) (= lambda!215085 lambda!214950))))

(declare-fun bs!1108009 () Bool)

(assert (= bs!1108009 (and d!1502378 b!4719990)))

(assert (=> bs!1108009 (= (= lt!1885609 lt!1885226) (= lambda!215085 lambda!215015))))

(declare-fun bs!1108011 () Bool)

(assert (= bs!1108011 (and d!1502378 d!1502076)))

(assert (=> bs!1108011 (= (= lt!1885609 lt!1885102) (= lambda!215085 lambda!215002))))

(declare-fun bs!1108012 () Bool)

(assert (= bs!1108012 (and d!1502378 b!4720197)))

(assert (=> bs!1108012 (= (= lt!1885609 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215085 lambda!215040))))

(declare-fun bs!1108014 () Bool)

(assert (= bs!1108014 (and d!1502378 b!4719957)))

(assert (=> bs!1108014 (= (= lt!1885609 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215085 lambda!215005))))

(declare-fun bs!1108016 () Bool)

(assert (= bs!1108016 (and d!1502378 b!4720019)))

(assert (=> bs!1108016 (= (= lt!1885609 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215085 lambda!215018))))

(declare-fun bs!1108018 () Bool)

(assert (= bs!1108018 (and d!1502378 d!1501952)))

(assert (=> bs!1108018 (not (= lambda!215085 lambda!214879))))

(assert (=> bs!1108007 (= (= lt!1885609 lt!1884696) (= lambda!215085 lambda!214949))))

(assert (=> bs!1108009 (= (= lt!1885609 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215085 lambda!215014))))

(assert (=> bs!1108003 (= (= lt!1885609 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215085 lambda!215051))))

(declare-fun bs!1108021 () Bool)

(assert (= bs!1108021 (and d!1502378 d!1502126)))

(assert (=> bs!1108021 (= (= lt!1885609 lt!1885172) (= lambda!215085 lambda!215007))))

(declare-fun bs!1108022 () Bool)

(assert (= bs!1108022 (and d!1502378 b!4719838)))

(assert (=> bs!1108022 (= (= lt!1885609 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215085 lambda!214999))))

(declare-fun bs!1108024 () Bool)

(assert (= bs!1108024 (and d!1502378 b!4720411)))

(assert (=> bs!1108024 (= (= lt!1885609 (+!2263 lt!1884696 (h!59153 lt!1884694))) (= lambda!215085 lambda!215077))))

(assert (=> bs!1108024 (= (= lt!1885609 lt!1885627) (= lambda!215085 lambda!215082))))

(declare-fun bs!1108027 () Bool)

(assert (= bs!1108027 (and d!1502378 b!4719716)))

(assert (=> bs!1108027 (= (= lt!1885609 lt!1884696) (= lambda!215085 lambda!214972))))

(declare-fun bs!1108029 () Bool)

(assert (= bs!1108029 (and d!1502378 b!4720254)))

(assert (=> bs!1108029 (= (= lt!1885609 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215085 lambda!215046))))

(declare-fun bs!1108030 () Bool)

(assert (= bs!1108030 (and d!1502378 b!4719796)))

(assert (=> bs!1108030 (= (= lt!1885609 lt!1884696) (= lambda!215085 lambda!214989))))

(declare-fun bs!1108031 () Bool)

(assert (= bs!1108031 (and d!1502378 b!4719715)))

(assert (=> bs!1108031 (= (= lt!1885609 lt!1884696) (= lambda!215085 lambda!214973))))

(declare-fun bs!1108032 () Bool)

(assert (= bs!1108032 (and d!1502378 b!4720018)))

(assert (=> bs!1108032 (= (= lt!1885609 lt!1885264) (= lambda!215085 lambda!215020))))

(declare-fun bs!1108033 () Bool)

(assert (= bs!1108033 (and d!1502378 d!1502336)))

(assert (=> bs!1108033 (= (= lt!1885609 lt!1885491) (= lambda!215085 lambda!215056))))

(declare-fun bs!1108034 () Bool)

(assert (= bs!1108034 (and d!1502378 b!4720412)))

(assert (=> bs!1108034 (= (= lt!1885609 (+!2263 lt!1884696 (h!59153 lt!1884694))) (= lambda!215085 lambda!215070))))

(declare-fun bs!1108035 () Bool)

(assert (= bs!1108035 (and d!1502378 b!4719725)))

(assert (=> bs!1108035 (= (= lt!1885609 lt!1885008) (= lambda!215085 lambda!214981))))

(declare-fun bs!1108036 () Bool)

(assert (= bs!1108036 (and d!1502378 d!1502174)))

(assert (=> bs!1108036 (= (= lt!1885609 lt!1885246) (= lambda!215085 lambda!215021))))

(declare-fun bs!1108037 () Bool)

(assert (= bs!1108037 (and d!1502378 d!1502298)))

(assert (=> bs!1108037 (= (= lt!1885609 lt!1884835) (= lambda!215085 lambda!215044))))

(declare-fun bs!1108038 () Bool)

(assert (= bs!1108038 (and d!1502378 d!1502170)))

(assert (=> bs!1108038 (= (= lt!1885609 lt!1885008) (= lambda!215085 lambda!215017))))

(declare-fun bs!1108039 () Bool)

(assert (= bs!1108039 (and d!1502378 d!1502154)))

(assert (=> bs!1108039 (= (= lt!1885609 lt!1885208) (= lambda!215085 lambda!215016))))

(declare-fun bs!1108040 () Bool)

(assert (= bs!1108040 (and d!1502378 d!1502052)))

(assert (=> bs!1108040 (= (= lt!1885609 lt!1885076) (= lambda!215085 lambda!214992))))

(declare-fun bs!1108041 () Bool)

(assert (= bs!1108041 (and d!1502378 b!4719790)))

(assert (=> bs!1108041 (= (= lt!1885609 lt!1884696) (= lambda!215085 lambda!214986))))

(declare-fun bs!1108042 () Bool)

(assert (= bs!1108042 (and d!1502378 d!1502320)))

(assert (=> bs!1108042 (= (= lt!1885609 lt!1885073) (= lambda!215085 lambda!215049))))

(declare-fun bs!1108043 () Bool)

(assert (= bs!1108043 (and d!1502378 d!1502050)))

(assert (=> bs!1108043 (= (= lt!1885609 lt!1885055) (= lambda!215085 lambda!214988))))

(declare-fun bs!1108044 () Bool)

(assert (= bs!1108044 (and d!1502378 b!4720198)))

(assert (=> bs!1108044 (= (= lt!1885609 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215085 lambda!215038))))

(assert (=> bs!1108012 (= (= lt!1885609 lt!1885389) (= lambda!215085 lambda!215042))))

(assert (=> bs!1107998 (= (= lt!1885609 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215085 lambda!215000))))

(declare-fun bs!1108045 () Bool)

(assert (= bs!1108045 (and d!1502378 b!4720324)))

(assert (=> bs!1108045 (= (= lt!1885609 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215085 lambda!215050))))

(declare-fun bs!1108046 () Bool)

(assert (= bs!1108046 (and d!1502378 b!4719958)))

(assert (=> bs!1108046 (= (= lt!1885609 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215085 lambda!215004))))

(assert (=> bs!1108000 (= (= lt!1885609 (extractMap!2034 (t!360193 lt!1884695))) (= lambda!215085 lambda!215063))))

(declare-fun bs!1108047 () Bool)

(assert (= bs!1108047 (and d!1502378 d!1502354)))

(assert (=> bs!1108047 (= (= lt!1885609 lt!1885548) (= lambda!215085 lambda!215066))))

(assert (=> bs!1108031 (= (= lt!1885609 lt!1884963) (= lambda!215085 lambda!214974))))

(declare-fun bs!1108048 () Bool)

(assert (= bs!1108048 (and d!1502378 b!4719791)))

(assert (=> bs!1108048 (= (= lt!1885609 lt!1884696) (= lambda!215085 lambda!214985))))

(declare-fun bs!1108049 () Bool)

(assert (= bs!1108049 (and d!1502378 b!4719991)))

(assert (=> bs!1108049 (= (= lt!1885609 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215085 lambda!215013))))

(declare-fun bs!1108050 () Bool)

(assert (= bs!1108050 (and d!1502378 d!1502308)))

(assert (=> bs!1108050 (= (= lt!1885609 lt!1885428) (= lambda!215085 lambda!215048))))

(assert (=> bs!1108041 (= (= lt!1885609 lt!1885073) (= lambda!215085 lambda!214987))))

(declare-fun bs!1108051 () Bool)

(assert (= bs!1108051 (and d!1502378 d!1502034)))

(assert (=> bs!1108051 (= (= lt!1885609 lt!1884990) (= lambda!215085 lambda!214982))))

(assert (=> bs!1108035 (= (= lt!1885609 lt!1884696) (= lambda!215085 lambda!214979))))

(assert (=> bs!1108029 (= (= lt!1885609 lt!1885446) (= lambda!215085 lambda!215047))))

(declare-fun bs!1108052 () Bool)

(assert (= bs!1108052 (and d!1502378 d!1502226)))

(assert (=> bs!1108052 (= (= lt!1885609 lt!1884696) (= lambda!215085 lambda!215030))))

(declare-fun bs!1108053 () Bool)

(assert (= bs!1108053 (and d!1502378 b!4719653)))

(assert (=> bs!1108053 (= (= lt!1885609 lt!1884696) (= lambda!215085 lambda!214948))))

(declare-fun bs!1108054 () Bool)

(assert (= bs!1108054 (and d!1502378 b!4720255)))

(assert (=> bs!1108054 (= (= lt!1885609 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215085 lambda!215045))))

(declare-fun bs!1108055 () Bool)

(assert (= bs!1108055 (and d!1502378 d!1502062)))

(assert (=> bs!1108055 (not (= lambda!215085 lambda!214995))))

(declare-fun bs!1108056 () Bool)

(assert (= bs!1108056 (and d!1502378 d!1502028)))

(assert (=> bs!1108056 (= (= lt!1885609 lt!1884945) (= lambda!215085 lambda!214975))))

(assert (=> bs!1108014 (= (= lt!1885609 lt!1885190) (= lambda!215085 lambda!215006))))

(declare-fun bs!1108057 () Bool)

(assert (= bs!1108057 (and d!1502378 b!4719795)))

(assert (=> bs!1108057 (= (= lt!1885609 lt!1885094) (= lambda!215085 lambda!214991))))

(declare-fun bs!1108058 () Bool)

(assert (= bs!1108058 (and d!1502378 d!1502272)))

(assert (=> bs!1108058 (= (= lt!1885609 lt!1885371) (= lambda!215085 lambda!215043))))

(assert (=> bs!1108057 (= (= lt!1885609 lt!1884696) (= lambda!215085 lambda!214990))))

(declare-fun bs!1108059 () Bool)

(assert (= bs!1108059 (and d!1502378 b!4720358)))

(assert (=> bs!1108059 (= (= lt!1885609 (extractMap!2034 (t!360193 lt!1884695))) (= lambda!215085 lambda!215060))))

(assert (=> bs!1108032 (= (= lt!1885609 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215085 lambda!215019))))

(assert (=> d!1502378 true))

(declare-fun b!4720410 () Bool)

(declare-fun e!2943891 () Bool)

(assert (=> b!4720410 (= e!2943891 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 lt!1884694))) lambda!215082))))

(declare-fun bm!330058 () Bool)

(declare-fun call!330063 () Unit!129252)

(assert (=> bm!330058 (= call!330063 (lemmaContainsAllItsOwnKeys!791 (+!2263 lt!1884696 (h!59153 lt!1884694))))))

(declare-fun c!806160 () Bool)

(declare-fun call!330064 () Bool)

(declare-fun bm!330059 () Bool)

(assert (=> bm!330059 (= call!330064 (forall!11574 (ite c!806160 (toList!5906 (+!2263 lt!1884696 (h!59153 lt!1884694))) (t!360192 lt!1884694)) (ite c!806160 lambda!215070 lambda!215082)))))

(declare-fun e!2943893 () ListMap!5269)

(assert (=> b!4720411 (= e!2943893 lt!1885627)))

(declare-fun lt!1885608 () ListMap!5269)

(assert (=> b!4720411 (= lt!1885608 (+!2263 (+!2263 lt!1884696 (h!59153 lt!1884694)) (h!59153 (t!360192 lt!1884694))))))

(assert (=> b!4720411 (= lt!1885627 (addToMapMapFromBucket!1438 (t!360192 (t!360192 lt!1884694)) (+!2263 (+!2263 lt!1884696 (h!59153 lt!1884694)) (h!59153 (t!360192 lt!1884694)))))))

(declare-fun lt!1885618 () Unit!129252)

(assert (=> b!4720411 (= lt!1885618 call!330063)))

(declare-fun call!330065 () Bool)

(assert (=> b!4720411 call!330065))

(declare-fun lt!1885610 () Unit!129252)

(assert (=> b!4720411 (= lt!1885610 lt!1885618)))

(assert (=> b!4720411 (forall!11574 (toList!5906 lt!1885608) lambda!215082)))

(declare-fun lt!1885625 () Unit!129252)

(declare-fun Unit!129589 () Unit!129252)

(assert (=> b!4720411 (= lt!1885625 Unit!129589)))

(assert (=> b!4720411 (forall!11574 (t!360192 (t!360192 lt!1884694)) lambda!215082)))

(declare-fun lt!1885611 () Unit!129252)

(declare-fun Unit!129590 () Unit!129252)

(assert (=> b!4720411 (= lt!1885611 Unit!129590)))

(declare-fun lt!1885615 () Unit!129252)

(declare-fun Unit!129591 () Unit!129252)

(assert (=> b!4720411 (= lt!1885615 Unit!129591)))

(declare-fun lt!1885626 () Unit!129252)

(assert (=> b!4720411 (= lt!1885626 (forallContained!3629 (toList!5906 lt!1885608) lambda!215082 (h!59153 (t!360192 lt!1884694))))))

(assert (=> b!4720411 (contains!16156 lt!1885608 (_1!30507 (h!59153 (t!360192 lt!1884694))))))

(declare-fun lt!1885619 () Unit!129252)

(declare-fun Unit!129592 () Unit!129252)

(assert (=> b!4720411 (= lt!1885619 Unit!129592)))

(assert (=> b!4720411 (contains!16156 lt!1885627 (_1!30507 (h!59153 (t!360192 lt!1884694))))))

(declare-fun lt!1885623 () Unit!129252)

(declare-fun Unit!129593 () Unit!129252)

(assert (=> b!4720411 (= lt!1885623 Unit!129593)))

(assert (=> b!4720411 call!330064))

(declare-fun lt!1885612 () Unit!129252)

(declare-fun Unit!129594 () Unit!129252)

(assert (=> b!4720411 (= lt!1885612 Unit!129594)))

(assert (=> b!4720411 (forall!11574 (toList!5906 lt!1885608) lambda!215082)))

(declare-fun lt!1885613 () Unit!129252)

(declare-fun Unit!129595 () Unit!129252)

(assert (=> b!4720411 (= lt!1885613 Unit!129595)))

(declare-fun lt!1885620 () Unit!129252)

(declare-fun Unit!129596 () Unit!129252)

(assert (=> b!4720411 (= lt!1885620 Unit!129596)))

(declare-fun lt!1885616 () Unit!129252)

(assert (=> b!4720411 (= lt!1885616 (addForallContainsKeyThenBeforeAdding!790 (+!2263 lt!1884696 (h!59153 lt!1884694)) lt!1885627 (_1!30507 (h!59153 (t!360192 lt!1884694))) (_2!30507 (h!59153 (t!360192 lt!1884694)))))))

(assert (=> b!4720411 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 lt!1884694))) lambda!215082)))

(declare-fun lt!1885621 () Unit!129252)

(assert (=> b!4720411 (= lt!1885621 lt!1885616)))

(assert (=> b!4720411 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 lt!1884694))) lambda!215082)))

(declare-fun lt!1885622 () Unit!129252)

(declare-fun Unit!129597 () Unit!129252)

(assert (=> b!4720411 (= lt!1885622 Unit!129597)))

(declare-fun res!1996708 () Bool)

(assert (=> b!4720411 (= res!1996708 (forall!11574 (t!360192 lt!1884694) lambda!215082))))

(assert (=> b!4720411 (=> (not res!1996708) (not e!2943891))))

(assert (=> b!4720411 e!2943891))

(declare-fun lt!1885614 () Unit!129252)

(declare-fun Unit!129598 () Unit!129252)

(assert (=> b!4720411 (= lt!1885614 Unit!129598)))

(assert (=> b!4720412 (= e!2943893 (+!2263 lt!1884696 (h!59153 lt!1884694)))))

(declare-fun lt!1885607 () Unit!129252)

(assert (=> b!4720412 (= lt!1885607 call!330063)))

(assert (=> b!4720412 call!330065))

(declare-fun lt!1885624 () Unit!129252)

(assert (=> b!4720412 (= lt!1885624 lt!1885607)))

(assert (=> b!4720412 call!330064))

(declare-fun lt!1885617 () Unit!129252)

(declare-fun Unit!129599 () Unit!129252)

(assert (=> b!4720412 (= lt!1885617 Unit!129599)))

(declare-fun e!2943892 () Bool)

(assert (=> d!1502378 e!2943892))

(declare-fun res!1996709 () Bool)

(assert (=> d!1502378 (=> (not res!1996709) (not e!2943892))))

(assert (=> d!1502378 (= res!1996709 (forall!11574 (t!360192 lt!1884694) lambda!215085))))

(assert (=> d!1502378 (= lt!1885609 e!2943893)))

(assert (=> d!1502378 (= c!806160 ((_ is Nil!52812) (t!360192 lt!1884694)))))

(assert (=> d!1502378 (noDuplicateKeys!2008 (t!360192 lt!1884694))))

(assert (=> d!1502378 (= (addToMapMapFromBucket!1438 (t!360192 lt!1884694) (+!2263 lt!1884696 (h!59153 lt!1884694))) lt!1885609)))

(declare-fun b!4720413 () Bool)

(assert (=> b!4720413 (= e!2943892 (invariantList!1505 (toList!5906 lt!1885609)))))

(declare-fun bm!330060 () Bool)

(assert (=> bm!330060 (= call!330065 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 lt!1884694))) (ite c!806160 lambda!215070 lambda!215077)))))

(declare-fun b!4720414 () Bool)

(declare-fun res!1996710 () Bool)

(assert (=> b!4720414 (=> (not res!1996710) (not e!2943892))))

(assert (=> b!4720414 (= res!1996710 (forall!11574 (toList!5906 (+!2263 lt!1884696 (h!59153 lt!1884694))) lambda!215085))))

(assert (= (and d!1502378 c!806160) b!4720412))

(assert (= (and d!1502378 (not c!806160)) b!4720411))

(assert (= (and b!4720411 res!1996708) b!4720410))

(assert (= (or b!4720412 b!4720411) bm!330058))

(assert (= (or b!4720412 b!4720411) bm!330059))

(assert (= (or b!4720412 b!4720411) bm!330060))

(assert (= (and d!1502378 res!1996709) b!4720414))

(assert (= (and b!4720414 res!1996710) b!4720413))

(declare-fun m!5653531 () Bool)

(assert (=> b!4720413 m!5653531))

(declare-fun m!5653533 () Bool)

(assert (=> bm!330059 m!5653533))

(assert (=> bm!330058 m!5652167))

(declare-fun m!5653535 () Bool)

(assert (=> bm!330058 m!5653535))

(declare-fun m!5653537 () Bool)

(assert (=> b!4720414 m!5653537))

(declare-fun m!5653539 () Bool)

(assert (=> b!4720411 m!5653539))

(declare-fun m!5653541 () Bool)

(assert (=> b!4720411 m!5653541))

(declare-fun m!5653543 () Bool)

(assert (=> b!4720411 m!5653543))

(declare-fun m!5653545 () Bool)

(assert (=> b!4720411 m!5653545))

(assert (=> b!4720411 m!5652167))

(declare-fun m!5653547 () Bool)

(assert (=> b!4720411 m!5653547))

(declare-fun m!5653549 () Bool)

(assert (=> b!4720411 m!5653549))

(declare-fun m!5653551 () Bool)

(assert (=> b!4720411 m!5653551))

(declare-fun m!5653553 () Bool)

(assert (=> b!4720411 m!5653553))

(assert (=> b!4720411 m!5653543))

(declare-fun m!5653555 () Bool)

(assert (=> b!4720411 m!5653555))

(declare-fun m!5653557 () Bool)

(assert (=> b!4720411 m!5653557))

(assert (=> b!4720411 m!5653549))

(assert (=> b!4720411 m!5652167))

(assert (=> b!4720411 m!5653551))

(declare-fun m!5653559 () Bool)

(assert (=> bm!330060 m!5653559))

(declare-fun m!5653561 () Bool)

(assert (=> d!1502378 m!5653561))

(assert (=> d!1502378 m!5652263))

(assert (=> b!4720410 m!5653549))

(assert (=> b!4719795 d!1502378))

(assert (=> b!4719795 d!1502132))

(declare-fun bs!1108082 () Bool)

(declare-fun d!1502394 () Bool)

(assert (= bs!1108082 (and d!1502394 b!4719837)))

(declare-fun lambda!215088 () Int)

(assert (=> bs!1108082 (= (= lt!1885094 lt!1885120) (= lambda!215088 lambda!215001))))

(declare-fun bs!1108083 () Bool)

(assert (= bs!1108083 (and d!1502394 b!4720357)))

(assert (=> bs!1108083 (= (= lt!1885094 lt!1885566) (= lambda!215088 lambda!215065))))

(declare-fun bs!1108084 () Bool)

(assert (= bs!1108084 (and d!1502394 d!1502146)))

(assert (=> bs!1108084 (= (= lt!1885094 lt!1884963) (= lambda!215088 lambda!215012))))

(declare-fun bs!1108086 () Bool)

(assert (= bs!1108086 (and d!1502394 b!4720323)))

(assert (=> bs!1108086 (= (= lt!1885094 lt!1885509) (= lambda!215088 lambda!215052))))

(declare-fun bs!1108087 () Bool)

(assert (= bs!1108087 (and d!1502394 d!1501954)))

(assert (=> bs!1108087 (= (= lt!1885094 lt!1884817) (= lambda!215088 lambda!214951))))

(declare-fun bs!1108089 () Bool)

(assert (= bs!1108089 (and d!1502394 b!4719726)))

(assert (=> bs!1108089 (= (= lt!1885094 lt!1884696) (= lambda!215088 lambda!214977))))

(declare-fun bs!1108091 () Bool)

(assert (= bs!1108091 (and d!1502394 b!4719652)))

(assert (=> bs!1108091 (= (= lt!1885094 lt!1884835) (= lambda!215088 lambda!214950))))

(declare-fun bs!1108093 () Bool)

(assert (= bs!1108093 (and d!1502394 b!4719990)))

(assert (=> bs!1108093 (= (= lt!1885094 lt!1885226) (= lambda!215088 lambda!215015))))

(declare-fun bs!1108095 () Bool)

(assert (= bs!1108095 (and d!1502394 d!1502076)))

(assert (=> bs!1108095 (= (= lt!1885094 lt!1885102) (= lambda!215088 lambda!215002))))

(declare-fun bs!1108096 () Bool)

(assert (= bs!1108096 (and d!1502394 b!4720197)))

(assert (=> bs!1108096 (= (= lt!1885094 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215088 lambda!215040))))

(declare-fun bs!1108097 () Bool)

(assert (= bs!1108097 (and d!1502394 b!4719957)))

(assert (=> bs!1108097 (= (= lt!1885094 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215088 lambda!215005))))

(declare-fun bs!1108098 () Bool)

(assert (= bs!1108098 (and d!1502394 b!4720019)))

(assert (=> bs!1108098 (= (= lt!1885094 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215088 lambda!215018))))

(declare-fun bs!1108099 () Bool)

(assert (= bs!1108099 (and d!1502394 d!1501952)))

(assert (=> bs!1108099 (not (= lambda!215088 lambda!214879))))

(assert (=> bs!1108091 (= (= lt!1885094 lt!1884696) (= lambda!215088 lambda!214949))))

(assert (=> bs!1108093 (= (= lt!1885094 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215088 lambda!215014))))

(assert (=> bs!1108086 (= (= lt!1885094 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215088 lambda!215051))))

(declare-fun bs!1108100 () Bool)

(assert (= bs!1108100 (and d!1502394 d!1502126)))

(assert (=> bs!1108100 (= (= lt!1885094 lt!1885172) (= lambda!215088 lambda!215007))))

(declare-fun bs!1108101 () Bool)

(assert (= bs!1108101 (and d!1502394 b!4719838)))

(assert (=> bs!1108101 (= (= lt!1885094 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215088 lambda!214999))))

(declare-fun bs!1108102 () Bool)

(assert (= bs!1108102 (and d!1502394 b!4720411)))

(assert (=> bs!1108102 (= (= lt!1885094 (+!2263 lt!1884696 (h!59153 lt!1884694))) (= lambda!215088 lambda!215077))))

(assert (=> bs!1108102 (= (= lt!1885094 lt!1885627) (= lambda!215088 lambda!215082))))

(declare-fun bs!1108103 () Bool)

(assert (= bs!1108103 (and d!1502394 b!4719716)))

(assert (=> bs!1108103 (= (= lt!1885094 lt!1884696) (= lambda!215088 lambda!214972))))

(declare-fun bs!1108104 () Bool)

(assert (= bs!1108104 (and d!1502394 b!4720254)))

(assert (=> bs!1108104 (= (= lt!1885094 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215088 lambda!215046))))

(declare-fun bs!1108105 () Bool)

(assert (= bs!1108105 (and d!1502394 b!4719796)))

(assert (=> bs!1108105 (= (= lt!1885094 lt!1884696) (= lambda!215088 lambda!214989))))

(declare-fun bs!1108106 () Bool)

(assert (= bs!1108106 (and d!1502394 b!4719715)))

(assert (=> bs!1108106 (= (= lt!1885094 lt!1884696) (= lambda!215088 lambda!214973))))

(declare-fun bs!1108107 () Bool)

(assert (= bs!1108107 (and d!1502394 b!4720018)))

(assert (=> bs!1108107 (= (= lt!1885094 lt!1885264) (= lambda!215088 lambda!215020))))

(declare-fun bs!1108108 () Bool)

(assert (= bs!1108108 (and d!1502394 d!1502336)))

(assert (=> bs!1108108 (= (= lt!1885094 lt!1885491) (= lambda!215088 lambda!215056))))

(declare-fun bs!1108109 () Bool)

(assert (= bs!1108109 (and d!1502394 b!4720412)))

(assert (=> bs!1108109 (= (= lt!1885094 (+!2263 lt!1884696 (h!59153 lt!1884694))) (= lambda!215088 lambda!215070))))

(declare-fun bs!1108110 () Bool)

(assert (= bs!1108110 (and d!1502394 b!4719725)))

(assert (=> bs!1108110 (= (= lt!1885094 lt!1885008) (= lambda!215088 lambda!214981))))

(declare-fun bs!1108111 () Bool)

(assert (= bs!1108111 (and d!1502394 d!1502174)))

(assert (=> bs!1108111 (= (= lt!1885094 lt!1885246) (= lambda!215088 lambda!215021))))

(declare-fun bs!1108112 () Bool)

(assert (= bs!1108112 (and d!1502394 d!1502298)))

(assert (=> bs!1108112 (= (= lt!1885094 lt!1884835) (= lambda!215088 lambda!215044))))

(declare-fun bs!1108113 () Bool)

(assert (= bs!1108113 (and d!1502394 d!1502170)))

(assert (=> bs!1108113 (= (= lt!1885094 lt!1885008) (= lambda!215088 lambda!215017))))

(declare-fun bs!1108114 () Bool)

(assert (= bs!1108114 (and d!1502394 d!1502154)))

(assert (=> bs!1108114 (= (= lt!1885094 lt!1885208) (= lambda!215088 lambda!215016))))

(declare-fun bs!1108115 () Bool)

(assert (= bs!1108115 (and d!1502394 d!1502052)))

(assert (=> bs!1108115 (= (= lt!1885094 lt!1885076) (= lambda!215088 lambda!214992))))

(declare-fun bs!1108116 () Bool)

(assert (= bs!1108116 (and d!1502394 b!4719790)))

(assert (=> bs!1108116 (= (= lt!1885094 lt!1884696) (= lambda!215088 lambda!214986))))

(declare-fun bs!1108117 () Bool)

(assert (= bs!1108117 (and d!1502394 d!1502320)))

(assert (=> bs!1108117 (= (= lt!1885094 lt!1885073) (= lambda!215088 lambda!215049))))

(declare-fun bs!1108118 () Bool)

(assert (= bs!1108118 (and d!1502394 d!1502050)))

(assert (=> bs!1108118 (= (= lt!1885094 lt!1885055) (= lambda!215088 lambda!214988))))

(declare-fun bs!1108119 () Bool)

(assert (= bs!1108119 (and d!1502394 b!4720198)))

(assert (=> bs!1108119 (= (= lt!1885094 (+!2263 lt!1884696 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (= lambda!215088 lambda!215038))))

(assert (=> bs!1108096 (= (= lt!1885094 lt!1885389) (= lambda!215088 lambda!215042))))

(assert (=> bs!1108082 (= (= lt!1885094 (extractMap!2034 (t!360193 (t!360193 (toList!5905 lm!2023))))) (= lambda!215088 lambda!215000))))

(declare-fun bs!1108120 () Bool)

(assert (= bs!1108120 (and d!1502394 b!4720324)))

(assert (=> bs!1108120 (= (= lt!1885094 (extractMap!2034 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))) (= lambda!215088 lambda!215050))))

(declare-fun bs!1108121 () Bool)

(assert (= bs!1108121 (and d!1502394 b!4719958)))

(assert (=> bs!1108121 (= (= lt!1885094 (extractMap!2034 (t!360193 (toList!5905 lm!2023)))) (= lambda!215088 lambda!215004))))

(assert (=> bs!1108083 (= (= lt!1885094 (extractMap!2034 (t!360193 lt!1884695))) (= lambda!215088 lambda!215063))))

(declare-fun bs!1108122 () Bool)

(assert (= bs!1108122 (and d!1502394 d!1502354)))

(assert (=> bs!1108122 (= (= lt!1885094 lt!1885548) (= lambda!215088 lambda!215066))))

(assert (=> bs!1108106 (= (= lt!1885094 lt!1884963) (= lambda!215088 lambda!214974))))

(declare-fun bs!1108123 () Bool)

(assert (= bs!1108123 (and d!1502394 b!4719791)))

(assert (=> bs!1108123 (= (= lt!1885094 lt!1884696) (= lambda!215088 lambda!214985))))

(declare-fun bs!1108124 () Bool)

(assert (= bs!1108124 (and d!1502394 b!4719991)))

(assert (=> bs!1108124 (= (= lt!1885094 (+!2263 lt!1884696 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))) (= lambda!215088 lambda!215013))))

(declare-fun bs!1108125 () Bool)

(assert (= bs!1108125 (and d!1502394 d!1502308)))

(assert (=> bs!1108125 (= (= lt!1885094 lt!1885428) (= lambda!215088 lambda!215048))))

(assert (=> bs!1108116 (= (= lt!1885094 lt!1885073) (= lambda!215088 lambda!214987))))

(declare-fun bs!1108126 () Bool)

(assert (= bs!1108126 (and d!1502394 d!1502034)))

(assert (=> bs!1108126 (= (= lt!1885094 lt!1884990) (= lambda!215088 lambda!214982))))

(assert (=> bs!1108110 (= (= lt!1885094 lt!1884696) (= lambda!215088 lambda!214979))))

(assert (=> bs!1108104 (= (= lt!1885094 lt!1885446) (= lambda!215088 lambda!215047))))

(declare-fun bs!1108127 () Bool)

(assert (= bs!1108127 (and d!1502394 d!1502226)))

(assert (=> bs!1108127 (= (= lt!1885094 lt!1884696) (= lambda!215088 lambda!215030))))

(declare-fun bs!1108128 () Bool)

(assert (= bs!1108128 (and d!1502394 b!4719653)))

(assert (=> bs!1108128 (= (= lt!1885094 lt!1884696) (= lambda!215088 lambda!214948))))

(declare-fun bs!1108129 () Bool)

(assert (= bs!1108129 (and d!1502394 b!4720255)))

(assert (=> bs!1108129 (= (= lt!1885094 (+!2263 lt!1884696 (h!59153 newBucket!218))) (= lambda!215088 lambda!215045))))

(declare-fun bs!1108130 () Bool)

(assert (= bs!1108130 (and d!1502394 d!1502062)))

(assert (=> bs!1108130 (not (= lambda!215088 lambda!214995))))

(declare-fun bs!1108131 () Bool)

(assert (= bs!1108131 (and d!1502394 d!1502028)))

(assert (=> bs!1108131 (= (= lt!1885094 lt!1884945) (= lambda!215088 lambda!214975))))

(assert (=> bs!1108097 (= (= lt!1885094 lt!1885190) (= lambda!215088 lambda!215006))))

(declare-fun bs!1108132 () Bool)

(assert (= bs!1108132 (and d!1502394 d!1502378)))

(assert (=> bs!1108132 (= (= lt!1885094 lt!1885609) (= lambda!215088 lambda!215085))))

(declare-fun bs!1108133 () Bool)

(assert (= bs!1108133 (and d!1502394 b!4719795)))

(assert (=> bs!1108133 (= lambda!215088 lambda!214991)))

(declare-fun bs!1108134 () Bool)

(assert (= bs!1108134 (and d!1502394 d!1502272)))

(assert (=> bs!1108134 (= (= lt!1885094 lt!1885371) (= lambda!215088 lambda!215043))))

(assert (=> bs!1108133 (= (= lt!1885094 lt!1884696) (= lambda!215088 lambda!214990))))

(declare-fun bs!1108135 () Bool)

(assert (= bs!1108135 (and d!1502394 b!4720358)))

(assert (=> bs!1108135 (= (= lt!1885094 (extractMap!2034 (t!360193 lt!1884695))) (= lambda!215088 lambda!215060))))

(assert (=> bs!1108107 (= (= lt!1885094 (+!2263 lt!1884696 (h!59153 oldBucket!34))) (= lambda!215088 lambda!215019))))

(assert (=> d!1502394 true))

(assert (=> d!1502394 (forall!11574 (toList!5906 lt!1884696) lambda!215088)))

(declare-fun lt!1885656 () Unit!129252)

(assert (=> d!1502394 (= lt!1885656 (choose!33288 lt!1884696 lt!1885094 (_1!30507 (h!59153 lt!1884694)) (_2!30507 (h!59153 lt!1884694))))))

(assert (=> d!1502394 (forall!11574 (toList!5906 (+!2263 lt!1884696 (tuple2!54427 (_1!30507 (h!59153 lt!1884694)) (_2!30507 (h!59153 lt!1884694))))) lambda!215088)))

(assert (=> d!1502394 (= (addForallContainsKeyThenBeforeAdding!790 lt!1884696 lt!1885094 (_1!30507 (h!59153 lt!1884694)) (_2!30507 (h!59153 lt!1884694))) lt!1885656)))

(declare-fun bs!1108136 () Bool)

(assert (= bs!1108136 d!1502394))

(declare-fun m!5653625 () Bool)

(assert (=> bs!1108136 m!5653625))

(declare-fun m!5653629 () Bool)

(assert (=> bs!1108136 m!5653629))

(declare-fun m!5653633 () Bool)

(assert (=> bs!1108136 m!5653633))

(declare-fun m!5653639 () Bool)

(assert (=> bs!1108136 m!5653639))

(assert (=> b!4719795 d!1502394))

(declare-fun d!1502406 () Bool)

(declare-fun res!1996740 () Bool)

(declare-fun e!2943922 () Bool)

(assert (=> d!1502406 (=> res!1996740 e!2943922)))

(assert (=> d!1502406 (= res!1996740 ((_ is Nil!52812) (toList!5906 lt!1885075)))))

(assert (=> d!1502406 (= (forall!11574 (toList!5906 lt!1885075) lambda!214991) e!2943922)))

(declare-fun b!4720460 () Bool)

(declare-fun e!2943923 () Bool)

(assert (=> b!4720460 (= e!2943922 e!2943923)))

(declare-fun res!1996741 () Bool)

(assert (=> b!4720460 (=> (not res!1996741) (not e!2943923))))

(assert (=> b!4720460 (= res!1996741 (dynLambda!21811 lambda!214991 (h!59153 (toList!5906 lt!1885075))))))

(declare-fun b!4720461 () Bool)

(assert (=> b!4720461 (= e!2943923 (forall!11574 (t!360192 (toList!5906 lt!1885075)) lambda!214991))))

(assert (= (and d!1502406 (not res!1996740)) b!4720460))

(assert (= (and b!4720460 res!1996741) b!4720461))

(declare-fun b_lambda!178017 () Bool)

(assert (=> (not b_lambda!178017) (not b!4720460)))

(declare-fun m!5653643 () Bool)

(assert (=> b!4720460 m!5653643))

(declare-fun m!5653645 () Bool)

(assert (=> b!4720461 m!5653645))

(assert (=> b!4719795 d!1502406))

(declare-fun d!1502408 () Bool)

(declare-fun res!1996742 () Bool)

(declare-fun e!2943924 () Bool)

(assert (=> d!1502408 (=> res!1996742 e!2943924)))

(assert (=> d!1502408 (= res!1996742 ((_ is Nil!52812) oldBucket!34))))

(assert (=> d!1502408 (= (forall!11574 oldBucket!34 lambda!214982) e!2943924)))

(declare-fun b!4720462 () Bool)

(declare-fun e!2943925 () Bool)

(assert (=> b!4720462 (= e!2943924 e!2943925)))

(declare-fun res!1996743 () Bool)

(assert (=> b!4720462 (=> (not res!1996743) (not e!2943925))))

(assert (=> b!4720462 (= res!1996743 (dynLambda!21811 lambda!214982 (h!59153 oldBucket!34)))))

(declare-fun b!4720463 () Bool)

(assert (=> b!4720463 (= e!2943925 (forall!11574 (t!360192 oldBucket!34) lambda!214982))))

(assert (= (and d!1502408 (not res!1996742)) b!4720462))

(assert (= (and b!4720462 res!1996743) b!4720463))

(declare-fun b_lambda!178019 () Bool)

(assert (=> (not b_lambda!178019) (not b!4720462)))

(declare-fun m!5653647 () Bool)

(assert (=> b!4720462 m!5653647))

(declare-fun m!5653649 () Bool)

(assert (=> b!4720463 m!5653649))

(assert (=> d!1502034 d!1502408))

(assert (=> d!1502034 d!1502008))

(declare-fun d!1502410 () Bool)

(declare-fun lt!1885670 () Bool)

(assert (=> d!1502410 (= lt!1885670 (select (content!9384 (toList!5906 lt!1885022)) lt!1884698))))

(declare-fun e!2943926 () Bool)

(assert (=> d!1502410 (= lt!1885670 e!2943926)))

(declare-fun res!1996745 () Bool)

(assert (=> d!1502410 (=> (not res!1996745) (not e!2943926))))

(assert (=> d!1502410 (= res!1996745 ((_ is Cons!52812) (toList!5906 lt!1885022)))))

(assert (=> d!1502410 (= (contains!16158 (toList!5906 lt!1885022) lt!1884698) lt!1885670)))

(declare-fun b!4720464 () Bool)

(declare-fun e!2943927 () Bool)

(assert (=> b!4720464 (= e!2943926 e!2943927)))

(declare-fun res!1996744 () Bool)

(assert (=> b!4720464 (=> res!1996744 e!2943927)))

(assert (=> b!4720464 (= res!1996744 (= (h!59153 (toList!5906 lt!1885022)) lt!1884698))))

(declare-fun b!4720465 () Bool)

(assert (=> b!4720465 (= e!2943927 (contains!16158 (t!360192 (toList!5906 lt!1885022)) lt!1884698))))

(assert (= (and d!1502410 res!1996745) b!4720464))

(assert (= (and b!4720464 (not res!1996744)) b!4720465))

(declare-fun m!5653651 () Bool)

(assert (=> d!1502410 m!5653651))

(declare-fun m!5653653 () Bool)

(assert (=> d!1502410 m!5653653))

(declare-fun m!5653655 () Bool)

(assert (=> b!4720465 m!5653655))

(assert (=> b!4719757 d!1502410))

(declare-fun d!1502412 () Bool)

(declare-fun res!1996746 () Bool)

(declare-fun e!2943928 () Bool)

(assert (=> d!1502412 (=> res!1996746 e!2943928)))

(assert (=> d!1502412 (= res!1996746 ((_ is Nil!52812) (toList!5906 lt!1884696)))))

(assert (=> d!1502412 (= (forall!11574 (toList!5906 lt!1884696) (ite c!805999 lambda!214972 lambda!214973)) e!2943928)))

(declare-fun b!4720466 () Bool)

(declare-fun e!2943929 () Bool)

(assert (=> b!4720466 (= e!2943928 e!2943929)))

(declare-fun res!1996747 () Bool)

(assert (=> b!4720466 (=> (not res!1996747) (not e!2943929))))

(assert (=> b!4720466 (= res!1996747 (dynLambda!21811 (ite c!805999 lambda!214972 lambda!214973) (h!59153 (toList!5906 lt!1884696))))))

(declare-fun b!4720467 () Bool)

(assert (=> b!4720467 (= e!2943929 (forall!11574 (t!360192 (toList!5906 lt!1884696)) (ite c!805999 lambda!214972 lambda!214973)))))

(assert (= (and d!1502412 (not res!1996746)) b!4720466))

(assert (= (and b!4720466 res!1996747) b!4720467))

(declare-fun b_lambda!178021 () Bool)

(assert (=> (not b_lambda!178021) (not b!4720466)))

(declare-fun m!5653657 () Bool)

(assert (=> b!4720466 m!5653657))

(declare-fun m!5653659 () Bool)

(assert (=> b!4720467 m!5653659))

(assert (=> bm!329969 d!1502412))

(declare-fun d!1502414 () Bool)

(declare-fun res!1996748 () Bool)

(declare-fun e!2943930 () Bool)

(assert (=> d!1502414 (=> res!1996748 e!2943930)))

(assert (=> d!1502414 (= res!1996748 ((_ is Nil!52812) (toList!5906 lt!1884696)))))

(assert (=> d!1502414 (= (forall!11574 (toList!5906 lt!1884696) (ite c!806001 lambda!214977 lambda!214979)) e!2943930)))

(declare-fun b!4720468 () Bool)

(declare-fun e!2943931 () Bool)

(assert (=> b!4720468 (= e!2943930 e!2943931)))

(declare-fun res!1996749 () Bool)

(assert (=> b!4720468 (=> (not res!1996749) (not e!2943931))))

(assert (=> b!4720468 (= res!1996749 (dynLambda!21811 (ite c!806001 lambda!214977 lambda!214979) (h!59153 (toList!5906 lt!1884696))))))

(declare-fun b!4720469 () Bool)

(assert (=> b!4720469 (= e!2943931 (forall!11574 (t!360192 (toList!5906 lt!1884696)) (ite c!806001 lambda!214977 lambda!214979)))))

(assert (= (and d!1502414 (not res!1996748)) b!4720468))

(assert (= (and b!4720468 res!1996749) b!4720469))

(declare-fun b_lambda!178023 () Bool)

(assert (=> (not b_lambda!178023) (not b!4720468)))

(declare-fun m!5653677 () Bool)

(assert (=> b!4720468 m!5653677))

(declare-fun m!5653679 () Bool)

(assert (=> b!4720469 m!5653679))

(assert (=> bm!329975 d!1502414))

(declare-fun d!1502422 () Bool)

(declare-fun lt!1885671 () Bool)

(assert (=> d!1502422 (= lt!1885671 (select (content!9386 e!2943464) key!4653))))

(declare-fun e!2943938 () Bool)

(assert (=> d!1502422 (= lt!1885671 e!2943938)))

(declare-fun res!1996756 () Bool)

(assert (=> d!1502422 (=> (not res!1996756) (not e!2943938))))

(assert (=> d!1502422 (= res!1996756 ((_ is Cons!52815) e!2943464))))

(assert (=> d!1502422 (= (contains!16159 e!2943464 key!4653) lt!1885671)))

(declare-fun b!4720476 () Bool)

(declare-fun e!2943939 () Bool)

(assert (=> b!4720476 (= e!2943938 e!2943939)))

(declare-fun res!1996757 () Bool)

(assert (=> b!4720476 (=> res!1996757 e!2943939)))

(assert (=> b!4720476 (= res!1996757 (= (h!59158 e!2943464) key!4653))))

(declare-fun b!4720477 () Bool)

(assert (=> b!4720477 (= e!2943939 (contains!16159 (t!360197 e!2943464) key!4653))))

(assert (= (and d!1502422 res!1996756) b!4720476))

(assert (= (and b!4720476 (not res!1996757)) b!4720477))

(declare-fun m!5653685 () Bool)

(assert (=> d!1502422 m!5653685))

(declare-fun m!5653687 () Bool)

(assert (=> d!1502422 m!5653687))

(declare-fun m!5653689 () Bool)

(assert (=> b!4720477 m!5653689))

(assert (=> bm!329978 d!1502422))

(assert (=> bm!329982 d!1502226))

(declare-fun d!1502426 () Bool)

(assert (=> d!1502426 (= (invariantList!1505 (toList!5906 lt!1885095)) (noDuplicatedKeys!370 (toList!5906 lt!1885095)))))

(declare-fun bs!1108166 () Bool)

(assert (= bs!1108166 d!1502426))

(declare-fun m!5653691 () Bool)

(assert (=> bs!1108166 m!5653691))

(assert (=> d!1502058 d!1502426))

(declare-fun d!1502428 () Bool)

(declare-fun res!1996761 () Bool)

(declare-fun e!2943946 () Bool)

(assert (=> d!1502428 (=> res!1996761 e!2943946)))

(assert (=> d!1502428 (= res!1996761 ((_ is Nil!52813) (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))))

(assert (=> d!1502428 (= (forall!11572 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))) lambda!214993) e!2943946)))

(declare-fun b!4720487 () Bool)

(declare-fun e!2943947 () Bool)

(assert (=> b!4720487 (= e!2943946 e!2943947)))

(declare-fun res!1996762 () Bool)

(assert (=> b!4720487 (=> (not res!1996762) (not e!2943947))))

(assert (=> b!4720487 (= res!1996762 (dynLambda!21810 lambda!214993 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))))))

(declare-fun b!4720488 () Bool)

(assert (=> b!4720488 (= e!2943947 (forall!11572 (t!360193 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))) lambda!214993))))

(assert (= (and d!1502428 (not res!1996761)) b!4720487))

(assert (= (and b!4720487 res!1996762) b!4720488))

(declare-fun b_lambda!178031 () Bool)

(assert (=> (not b_lambda!178031) (not b!4720487)))

(declare-fun m!5653693 () Bool)

(assert (=> b!4720487 m!5653693))

(declare-fun m!5653695 () Bool)

(assert (=> b!4720488 m!5653695))

(assert (=> d!1502058 d!1502428))

(declare-fun bs!1108290 () Bool)

(declare-fun b!4720525 () Bool)

(assert (= bs!1108290 (and b!4720525 b!4720124)))

(declare-fun lambda!215103 () Int)

(assert (=> bs!1108290 (= (= (t!360192 (toList!5906 lt!1884697)) (toList!5906 lt!1884697)) (= lambda!215103 lambda!215026))))

(assert (=> b!4720525 true))

(declare-fun bs!1108291 () Bool)

(declare-fun b!4720529 () Bool)

(assert (= bs!1108291 (and b!4720529 b!4720124)))

(declare-fun lambda!215104 () Int)

(assert (=> bs!1108291 (= (= (Cons!52812 (h!59153 (toList!5906 lt!1884697)) (t!360192 (toList!5906 lt!1884697))) (toList!5906 lt!1884697)) (= lambda!215104 lambda!215026))))

(declare-fun bs!1108292 () Bool)

(assert (= bs!1108292 (and b!4720529 b!4720525)))

(assert (=> bs!1108292 (= (= (Cons!52812 (h!59153 (toList!5906 lt!1884697)) (t!360192 (toList!5906 lt!1884697))) (t!360192 (toList!5906 lt!1884697))) (= lambda!215104 lambda!215103))))

(assert (=> b!4720529 true))

(declare-fun bs!1108293 () Bool)

(declare-fun b!4720530 () Bool)

(assert (= bs!1108293 (and b!4720530 b!4720124)))

(declare-fun lambda!215105 () Int)

(assert (=> bs!1108293 (= lambda!215105 lambda!215026)))

(declare-fun bs!1108294 () Bool)

(assert (= bs!1108294 (and b!4720530 b!4720525)))

(assert (=> bs!1108294 (= (= (toList!5906 lt!1884697) (t!360192 (toList!5906 lt!1884697))) (= lambda!215105 lambda!215103))))

(declare-fun bs!1108295 () Bool)

(assert (= bs!1108295 (and b!4720530 b!4720529)))

(assert (=> bs!1108295 (= (= (toList!5906 lt!1884697) (Cons!52812 (h!59153 (toList!5906 lt!1884697)) (t!360192 (toList!5906 lt!1884697)))) (= lambda!215105 lambda!215104))))

(assert (=> b!4720530 true))

(declare-fun bs!1108296 () Bool)

(declare-fun b!4720527 () Bool)

(assert (= bs!1108296 (and b!4720527 b!4720125)))

(declare-fun lambda!215106 () Int)

(assert (=> bs!1108296 (= lambda!215106 lambda!215027)))

(declare-fun b!4720522 () Bool)

(declare-fun e!2943966 () Unit!129252)

(declare-fun Unit!129602 () Unit!129252)

(assert (=> b!4720522 (= e!2943966 Unit!129602)))

(declare-fun b!4720523 () Bool)

(declare-fun res!1996776 () Bool)

(declare-fun e!2943967 () Bool)

(assert (=> b!4720523 (=> (not res!1996776) (not e!2943967))))

(declare-fun lt!1885725 () List!52939)

(assert (=> b!4720523 (= res!1996776 (= (length!570 lt!1885725) (length!571 (toList!5906 lt!1884697))))))

(declare-fun d!1502430 () Bool)

(assert (=> d!1502430 e!2943967))

(declare-fun res!1996778 () Bool)

(assert (=> d!1502430 (=> (not res!1996778) (not e!2943967))))

(assert (=> d!1502430 (= res!1996778 (noDuplicate!857 lt!1885725))))

(declare-fun e!2943968 () List!52939)

(assert (=> d!1502430 (= lt!1885725 e!2943968)))

(declare-fun c!806181 () Bool)

(assert (=> d!1502430 (= c!806181 ((_ is Cons!52812) (toList!5906 lt!1884697)))))

(assert (=> d!1502430 (invariantList!1505 (toList!5906 lt!1884697))))

(assert (=> d!1502430 (= (getKeysList!945 (toList!5906 lt!1884697)) lt!1885725)))

(declare-fun b!4720524 () Bool)

(declare-fun e!2943969 () Unit!129252)

(declare-fun Unit!129603 () Unit!129252)

(assert (=> b!4720524 (= e!2943969 Unit!129603)))

(assert (=> b!4720525 false))

(declare-fun lt!1885731 () Unit!129252)

(declare-fun forallContained!3631 (List!52939 Int K!14170) Unit!129252)

(assert (=> b!4720525 (= lt!1885731 (forallContained!3631 (getKeysList!945 (t!360192 (toList!5906 lt!1884697))) lambda!215103 (_1!30507 (h!59153 (toList!5906 lt!1884697)))))))

(declare-fun Unit!129604 () Unit!129252)

(assert (=> b!4720525 (= e!2943969 Unit!129604)))

(declare-fun b!4720526 () Bool)

(assert (=> b!4720526 false))

(declare-fun Unit!129605 () Unit!129252)

(assert (=> b!4720526 (= e!2943966 Unit!129605)))

(assert (=> b!4720527 (= e!2943967 (= (content!9386 lt!1885725) (content!9386 (map!11674 (toList!5906 lt!1884697) lambda!215106))))))

(declare-fun b!4720528 () Bool)

(assert (=> b!4720528 (= e!2943968 Nil!52815)))

(assert (=> b!4720529 (= e!2943968 (Cons!52815 (_1!30507 (h!59153 (toList!5906 lt!1884697))) (getKeysList!945 (t!360192 (toList!5906 lt!1884697)))))))

(declare-fun c!806182 () Bool)

(assert (=> b!4720529 (= c!806182 (containsKey!3359 (t!360192 (toList!5906 lt!1884697)) (_1!30507 (h!59153 (toList!5906 lt!1884697)))))))

(declare-fun lt!1885728 () Unit!129252)

(assert (=> b!4720529 (= lt!1885728 e!2943966)))

(declare-fun c!806183 () Bool)

(assert (=> b!4720529 (= c!806183 (contains!16159 (getKeysList!945 (t!360192 (toList!5906 lt!1884697))) (_1!30507 (h!59153 (toList!5906 lt!1884697)))))))

(declare-fun lt!1885727 () Unit!129252)

(assert (=> b!4720529 (= lt!1885727 e!2943969)))

(declare-fun lt!1885726 () List!52939)

(assert (=> b!4720529 (= lt!1885726 (getKeysList!945 (t!360192 (toList!5906 lt!1884697))))))

(declare-fun lt!1885730 () Unit!129252)

(declare-fun lemmaForallContainsAddHeadPreserves!276 (List!52936 List!52939 tuple2!54426) Unit!129252)

(assert (=> b!4720529 (= lt!1885730 (lemmaForallContainsAddHeadPreserves!276 (t!360192 (toList!5906 lt!1884697)) lt!1885726 (h!59153 (toList!5906 lt!1884697))))))

(assert (=> b!4720529 (forall!11576 lt!1885726 lambda!215104)))

(declare-fun lt!1885729 () Unit!129252)

(assert (=> b!4720529 (= lt!1885729 lt!1885730)))

(declare-fun res!1996777 () Bool)

(assert (=> b!4720530 (=> (not res!1996777) (not e!2943967))))

(assert (=> b!4720530 (= res!1996777 (forall!11576 lt!1885725 lambda!215105))))

(assert (= (and d!1502430 c!806181) b!4720529))

(assert (= (and d!1502430 (not c!806181)) b!4720528))

(assert (= (and b!4720529 c!806182) b!4720526))

(assert (= (and b!4720529 (not c!806182)) b!4720522))

(assert (= (and b!4720529 c!806183) b!4720525))

(assert (= (and b!4720529 (not c!806183)) b!4720524))

(assert (= (and d!1502430 res!1996778) b!4720523))

(assert (= (and b!4720523 res!1996776) b!4720530))

(assert (= (and b!4720530 res!1996777) b!4720527))

(declare-fun m!5653809 () Bool)

(assert (=> d!1502430 m!5653809))

(assert (=> d!1502430 m!5652887))

(declare-fun m!5653813 () Bool)

(assert (=> b!4720529 m!5653813))

(declare-fun m!5653817 () Bool)

(assert (=> b!4720529 m!5653817))

(declare-fun m!5653819 () Bool)

(assert (=> b!4720529 m!5653819))

(declare-fun m!5653821 () Bool)

(assert (=> b!4720529 m!5653821))

(assert (=> b!4720529 m!5653813))

(declare-fun m!5653823 () Bool)

(assert (=> b!4720529 m!5653823))

(declare-fun m!5653825 () Bool)

(assert (=> b!4720530 m!5653825))

(declare-fun m!5653827 () Bool)

(assert (=> b!4720527 m!5653827))

(declare-fun m!5653829 () Bool)

(assert (=> b!4720527 m!5653829))

(assert (=> b!4720527 m!5653829))

(declare-fun m!5653831 () Bool)

(assert (=> b!4720527 m!5653831))

(declare-fun m!5653833 () Bool)

(assert (=> b!4720523 m!5653833))

(assert (=> b!4720523 m!5652805))

(assert (=> b!4720525 m!5653813))

(assert (=> b!4720525 m!5653813))

(declare-fun m!5653835 () Bool)

(assert (=> b!4720525 m!5653835))

(assert (=> b!4719785 d!1502430))

(declare-fun d!1502454 () Bool)

(assert (=> d!1502454 (= (invariantList!1505 (toList!5906 lt!1885096)) (noDuplicatedKeys!370 (toList!5906 lt!1885096)))))

(declare-fun bs!1108297 () Bool)

(assert (= bs!1108297 d!1502454))

(declare-fun m!5653837 () Bool)

(assert (=> bs!1108297 m!5653837))

(assert (=> d!1502060 d!1502454))

(declare-fun d!1502456 () Bool)

(declare-fun res!1996793 () Bool)

(declare-fun e!2943986 () Bool)

(assert (=> d!1502456 (=> res!1996793 e!2943986)))

(assert (=> d!1502456 (= res!1996793 ((_ is Nil!52813) lt!1884695))))

(assert (=> d!1502456 (= (forall!11572 lt!1884695 lambda!214994) e!2943986)))

(declare-fun b!4720553 () Bool)

(declare-fun e!2943987 () Bool)

(assert (=> b!4720553 (= e!2943986 e!2943987)))

(declare-fun res!1996794 () Bool)

(assert (=> b!4720553 (=> (not res!1996794) (not e!2943987))))

(assert (=> b!4720553 (= res!1996794 (dynLambda!21810 lambda!214994 (h!59154 lt!1884695)))))

(declare-fun b!4720554 () Bool)

(assert (=> b!4720554 (= e!2943987 (forall!11572 (t!360193 lt!1884695) lambda!214994))))

(assert (= (and d!1502456 (not res!1996793)) b!4720553))

(assert (= (and b!4720553 res!1996794) b!4720554))

(declare-fun b_lambda!178045 () Bool)

(assert (=> (not b_lambda!178045) (not b!4720553)))

(declare-fun m!5653839 () Bool)

(assert (=> b!4720553 m!5653839))

(declare-fun m!5653841 () Bool)

(assert (=> b!4720554 m!5653841))

(assert (=> d!1502060 d!1502456))

(declare-fun d!1502458 () Bool)

(declare-fun choose!33298 (Hashable!6377 K!14170) (_ BitVec 64))

(assert (=> d!1502458 (= (hash!4374 hashF!1323 key!4653) (choose!33298 hashF!1323 key!4653))))

(declare-fun bs!1108298 () Bool)

(assert (= bs!1108298 d!1502458))

(declare-fun m!5653863 () Bool)

(assert (=> bs!1108298 m!5653863))

(assert (=> d!1502064 d!1502458))

(declare-fun d!1502462 () Bool)

(declare-fun res!1996797 () Bool)

(declare-fun e!2943990 () Bool)

(assert (=> d!1502462 (=> res!1996797 e!2943990)))

(assert (=> d!1502462 (= res!1996797 (and ((_ is Cons!52812) (t!360192 oldBucket!34)) (= (_1!30507 (h!59153 (t!360192 oldBucket!34))) (_1!30507 (h!59153 oldBucket!34)))))))

(assert (=> d!1502462 (= (containsKey!3357 (t!360192 oldBucket!34) (_1!30507 (h!59153 oldBucket!34))) e!2943990)))

(declare-fun b!4720557 () Bool)

(declare-fun e!2943991 () Bool)

(assert (=> b!4720557 (= e!2943990 e!2943991)))

(declare-fun res!1996798 () Bool)

(assert (=> b!4720557 (=> (not res!1996798) (not e!2943991))))

(assert (=> b!4720557 (= res!1996798 ((_ is Cons!52812) (t!360192 oldBucket!34)))))

(declare-fun b!4720558 () Bool)

(assert (=> b!4720558 (= e!2943991 (containsKey!3357 (t!360192 (t!360192 oldBucket!34)) (_1!30507 (h!59153 oldBucket!34))))))

(assert (= (and d!1502462 (not res!1996797)) b!4720557))

(assert (= (and b!4720557 res!1996798) b!4720558))

(declare-fun m!5653869 () Bool)

(assert (=> b!4720558 m!5653869))

(assert (=> b!4719704 d!1502462))

(declare-fun d!1502466 () Bool)

(declare-fun res!1996801 () Bool)

(declare-fun e!2943994 () Bool)

(assert (=> d!1502466 (=> res!1996801 e!2943994)))

(assert (=> d!1502466 (= res!1996801 ((_ is Nil!52812) newBucket!218))))

(assert (=> d!1502466 (= (forall!11574 newBucket!218 lambda!214988) e!2943994)))

(declare-fun b!4720561 () Bool)

(declare-fun e!2943995 () Bool)

(assert (=> b!4720561 (= e!2943994 e!2943995)))

(declare-fun res!1996802 () Bool)

(assert (=> b!4720561 (=> (not res!1996802) (not e!2943995))))

(assert (=> b!4720561 (= res!1996802 (dynLambda!21811 lambda!214988 (h!59153 newBucket!218)))))

(declare-fun b!4720562 () Bool)

(assert (=> b!4720562 (= e!2943995 (forall!11574 (t!360192 newBucket!218) lambda!214988))))

(assert (= (and d!1502466 (not res!1996801)) b!4720561))

(assert (= (and b!4720561 res!1996802) b!4720562))

(declare-fun b_lambda!178051 () Bool)

(assert (=> (not b_lambda!178051) (not b!4720561)))

(declare-fun m!5653871 () Bool)

(assert (=> b!4720561 m!5653871))

(declare-fun m!5653873 () Bool)

(assert (=> b!4720562 m!5653873))

(assert (=> d!1502050 d!1502466))

(assert (=> d!1502050 d!1502054))

(assert (=> b!4719714 d!1502150))

(declare-fun c!806187 () Bool)

(declare-fun d!1502468 () Bool)

(assert (=> d!1502468 (= c!806187 ((_ is Nil!52812) (toList!5906 (addToMapMapFromBucket!1438 (Cons!52812 lt!1884698 lt!1884694) lt!1884696))))))

(declare-fun e!2943996 () (InoxSet tuple2!54426))

(assert (=> d!1502468 (= (content!9384 (toList!5906 (addToMapMapFromBucket!1438 (Cons!52812 lt!1884698 lt!1884694) lt!1884696))) e!2943996)))

(declare-fun b!4720563 () Bool)

(assert (=> b!4720563 (= e!2943996 ((as const (Array tuple2!54426 Bool)) false))))

(declare-fun b!4720564 () Bool)

(assert (=> b!4720564 (= e!2943996 ((_ map or) (store ((as const (Array tuple2!54426 Bool)) false) (h!59153 (toList!5906 (addToMapMapFromBucket!1438 (Cons!52812 lt!1884698 lt!1884694) lt!1884696))) true) (content!9384 (t!360192 (toList!5906 (addToMapMapFromBucket!1438 (Cons!52812 lt!1884698 lt!1884694) lt!1884696))))))))

(assert (= (and d!1502468 c!806187) b!4720563))

(assert (= (and d!1502468 (not c!806187)) b!4720564))

(declare-fun m!5653875 () Bool)

(assert (=> b!4720564 m!5653875))

(declare-fun m!5653877 () Bool)

(assert (=> b!4720564 m!5653877))

(assert (=> d!1502032 d!1502468))

(declare-fun d!1502470 () Bool)

(declare-fun c!806188 () Bool)

(assert (=> d!1502470 (= c!806188 ((_ is Nil!52812) (toList!5906 (+!2263 lt!1884699 lt!1884698))))))

(declare-fun e!2943997 () (InoxSet tuple2!54426))

(assert (=> d!1502470 (= (content!9384 (toList!5906 (+!2263 lt!1884699 lt!1884698))) e!2943997)))

(declare-fun b!4720565 () Bool)

(assert (=> b!4720565 (= e!2943997 ((as const (Array tuple2!54426 Bool)) false))))

(declare-fun b!4720566 () Bool)

(assert (=> b!4720566 (= e!2943997 ((_ map or) (store ((as const (Array tuple2!54426 Bool)) false) (h!59153 (toList!5906 (+!2263 lt!1884699 lt!1884698))) true) (content!9384 (t!360192 (toList!5906 (+!2263 lt!1884699 lt!1884698))))))))

(assert (= (and d!1502470 c!806188) b!4720565))

(assert (= (and d!1502470 (not c!806188)) b!4720566))

(declare-fun m!5653879 () Bool)

(assert (=> b!4720566 m!5653879))

(declare-fun m!5653881 () Bool)

(assert (=> b!4720566 m!5653881))

(assert (=> d!1502032 d!1502470))

(declare-fun d!1502472 () Bool)

(declare-fun res!1996803 () Bool)

(declare-fun e!2943998 () Bool)

(assert (=> d!1502472 (=> res!1996803 e!2943998)))

(assert (=> d!1502472 (= res!1996803 ((_ is Nil!52812) (ite c!805999 (toList!5906 lt!1884696) (Cons!52812 lt!1884698 lt!1884694))))))

(assert (=> d!1502472 (= (forall!11574 (ite c!805999 (toList!5906 lt!1884696) (Cons!52812 lt!1884698 lt!1884694)) (ite c!805999 lambda!214972 lambda!214974)) e!2943998)))

(declare-fun b!4720567 () Bool)

(declare-fun e!2943999 () Bool)

(assert (=> b!4720567 (= e!2943998 e!2943999)))

(declare-fun res!1996804 () Bool)

(assert (=> b!4720567 (=> (not res!1996804) (not e!2943999))))

(assert (=> b!4720567 (= res!1996804 (dynLambda!21811 (ite c!805999 lambda!214972 lambda!214974) (h!59153 (ite c!805999 (toList!5906 lt!1884696) (Cons!52812 lt!1884698 lt!1884694)))))))

(declare-fun b!4720568 () Bool)

(assert (=> b!4720568 (= e!2943999 (forall!11574 (t!360192 (ite c!805999 (toList!5906 lt!1884696) (Cons!52812 lt!1884698 lt!1884694))) (ite c!805999 lambda!214972 lambda!214974)))))

(assert (= (and d!1502472 (not res!1996803)) b!4720567))

(assert (= (and b!4720567 res!1996804) b!4720568))

(declare-fun b_lambda!178053 () Bool)

(assert (=> (not b_lambda!178053) (not b!4720567)))

(declare-fun m!5653905 () Bool)

(assert (=> b!4720567 m!5653905))

(declare-fun m!5653907 () Bool)

(assert (=> b!4720568 m!5653907))

(assert (=> bm!329968 d!1502472))

(declare-fun d!1502486 () Bool)

(declare-fun res!1996811 () Bool)

(declare-fun e!2944008 () Bool)

(assert (=> d!1502486 (=> res!1996811 e!2944008)))

(assert (=> d!1502486 (= res!1996811 ((_ is Nil!52812) (ite c!806001 (toList!5906 lt!1884696) oldBucket!34)))))

(assert (=> d!1502486 (= (forall!11574 (ite c!806001 (toList!5906 lt!1884696) oldBucket!34) (ite c!806001 lambda!214977 lambda!214981)) e!2944008)))

(declare-fun b!4720579 () Bool)

(declare-fun e!2944009 () Bool)

(assert (=> b!4720579 (= e!2944008 e!2944009)))

(declare-fun res!1996812 () Bool)

(assert (=> b!4720579 (=> (not res!1996812) (not e!2944009))))

(assert (=> b!4720579 (= res!1996812 (dynLambda!21811 (ite c!806001 lambda!214977 lambda!214981) (h!59153 (ite c!806001 (toList!5906 lt!1884696) oldBucket!34))))))

(declare-fun b!4720580 () Bool)

(assert (=> b!4720580 (= e!2944009 (forall!11574 (t!360192 (ite c!806001 (toList!5906 lt!1884696) oldBucket!34)) (ite c!806001 lambda!214977 lambda!214981)))))

(assert (= (and d!1502486 (not res!1996811)) b!4720579))

(assert (= (and b!4720579 res!1996812) b!4720580))

(declare-fun b_lambda!178059 () Bool)

(assert (=> (not b_lambda!178059) (not b!4720579)))

(declare-fun m!5653909 () Bool)

(assert (=> b!4720579 m!5653909))

(declare-fun m!5653911 () Bool)

(assert (=> b!4720580 m!5653911))

(assert (=> bm!329974 d!1502486))

(declare-fun d!1502488 () Bool)

(assert (=> d!1502488 (isDefined!9607 (getValueByKey!1949 (toList!5906 lt!1884697) key!4653))))

(declare-fun lt!1885750 () Unit!129252)

(declare-fun choose!33299 (List!52936 K!14170) Unit!129252)

(assert (=> d!1502488 (= lt!1885750 (choose!33299 (toList!5906 lt!1884697) key!4653))))

(assert (=> d!1502488 (invariantList!1505 (toList!5906 lt!1884697))))

(assert (=> d!1502488 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1840 (toList!5906 lt!1884697) key!4653) lt!1885750)))

(declare-fun bs!1108300 () Bool)

(assert (= bs!1108300 d!1502488))

(assert (=> bs!1108300 m!5652097))

(assert (=> bs!1108300 m!5652097))

(assert (=> bs!1108300 m!5652099))

(declare-fun m!5653913 () Bool)

(assert (=> bs!1108300 m!5653913))

(assert (=> bs!1108300 m!5652887))

(assert (=> b!4719783 d!1502488))

(assert (=> b!4719783 d!1502252))

(assert (=> b!4719783 d!1502256))

(declare-fun d!1502490 () Bool)

(assert (=> d!1502490 (contains!16159 (getKeysList!945 (toList!5906 lt!1884697)) key!4653)))

(declare-fun lt!1885754 () Unit!129252)

(declare-fun choose!33300 (List!52936 K!14170) Unit!129252)

(assert (=> d!1502490 (= lt!1885754 (choose!33300 (toList!5906 lt!1884697) key!4653))))

(assert (=> d!1502490 (invariantList!1505 (toList!5906 lt!1884697))))

(assert (=> d!1502490 (= (lemmaInListThenGetKeysListContains!940 (toList!5906 lt!1884697) key!4653) lt!1885754)))

(declare-fun bs!1108305 () Bool)

(assert (= bs!1108305 d!1502490))

(assert (=> bs!1108305 m!5652103))

(assert (=> bs!1108305 m!5652103))

(declare-fun m!5653925 () Bool)

(assert (=> bs!1108305 m!5653925))

(declare-fun m!5653927 () Bool)

(assert (=> bs!1108305 m!5653927))

(assert (=> bs!1108305 m!5652887))

(assert (=> b!4719783 d!1502490))

(declare-fun d!1502492 () Bool)

(declare-fun res!1996822 () Bool)

(declare-fun e!2944013 () Bool)

(assert (=> d!1502492 (=> res!1996822 e!2944013)))

(assert (=> d!1502492 (= res!1996822 ((_ is Nil!52812) (toList!5906 lt!1884696)))))

(assert (=> d!1502492 (= (forall!11574 (toList!5906 lt!1884696) (ite c!805990 lambda!214948 lambda!214949)) e!2944013)))

(declare-fun b!4720592 () Bool)

(declare-fun e!2944014 () Bool)

(assert (=> b!4720592 (= e!2944013 e!2944014)))

(declare-fun res!1996823 () Bool)

(assert (=> b!4720592 (=> (not res!1996823) (not e!2944014))))

(assert (=> b!4720592 (= res!1996823 (dynLambda!21811 (ite c!805990 lambda!214948 lambda!214949) (h!59153 (toList!5906 lt!1884696))))))

(declare-fun b!4720593 () Bool)

(assert (=> b!4720593 (= e!2944014 (forall!11574 (t!360192 (toList!5906 lt!1884696)) (ite c!805990 lambda!214948 lambda!214949)))))

(assert (= (and d!1502492 (not res!1996822)) b!4720592))

(assert (= (and b!4720592 res!1996823) b!4720593))

(declare-fun b_lambda!178061 () Bool)

(assert (=> (not b_lambda!178061) (not b!4720592)))

(declare-fun m!5653931 () Bool)

(assert (=> b!4720592 m!5653931))

(declare-fun m!5653933 () Bool)

(assert (=> b!4720593 m!5653933))

(assert (=> bm!329954 d!1502492))

(assert (=> b!4719724 d!1502192))

(declare-fun e!2944021 () Bool)

(declare-fun b!4720600 () Bool)

(declare-fun tp!1348294 () Bool)

(assert (=> b!4720600 (= e!2944021 (and tp_is_empty!31325 tp_is_empty!31327 tp!1348294))))

(assert (=> b!4719835 (= tp!1348293 e!2944021)))

(assert (= (and b!4719835 ((_ is Cons!52812) (t!360192 (t!360192 newBucket!218)))) b!4720600))

(declare-fun b!4720601 () Bool)

(declare-fun tp!1348295 () Bool)

(declare-fun e!2944022 () Bool)

(assert (=> b!4720601 (= e!2944022 (and tp_is_empty!31325 tp_is_empty!31327 tp!1348295))))

(assert (=> b!4719829 (= tp!1348286 e!2944022)))

(assert (= (and b!4719829 ((_ is Cons!52812) (t!360192 (t!360192 oldBucket!34)))) b!4720601))

(declare-fun tp!1348296 () Bool)

(declare-fun e!2944023 () Bool)

(declare-fun b!4720602 () Bool)

(assert (=> b!4720602 (= e!2944023 (and tp_is_empty!31325 tp_is_empty!31327 tp!1348296))))

(assert (=> b!4719834 (= tp!1348291 e!2944023)))

(assert (= (and b!4719834 ((_ is Cons!52812) (_2!30508 (h!59154 (toList!5905 lm!2023))))) b!4720602))

(declare-fun b!4720603 () Bool)

(declare-fun e!2944024 () Bool)

(declare-fun tp!1348297 () Bool)

(declare-fun tp!1348298 () Bool)

(assert (=> b!4720603 (= e!2944024 (and tp!1348297 tp!1348298))))

(assert (=> b!4719834 (= tp!1348292 e!2944024)))

(assert (= (and b!4719834 ((_ is Cons!52813) (t!360193 (toList!5905 lm!2023)))) b!4720603))

(declare-fun b_lambda!178063 () Bool)

(assert (= b_lambda!177917 (or start!480328 b_lambda!178063)))

(declare-fun bs!1108306 () Bool)

(declare-fun d!1502498 () Bool)

(assert (= bs!1108306 (and d!1502498 start!480328)))

(assert (=> bs!1108306 (= (dynLambda!21810 lambda!214876 (h!59154 (t!360193 (toList!5905 lm!2023)))) (noDuplicateKeys!2008 (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023))))))))

(assert (=> bs!1108306 m!5652247))

(assert (=> b!4719954 d!1502498))

(declare-fun b_lambda!178065 () Bool)

(assert (= b_lambda!177985 (or b!4719790 b_lambda!178065)))

(declare-fun bs!1108307 () Bool)

(declare-fun d!1502500 () Bool)

(assert (= bs!1108307 (and d!1502500 b!4719790)))

(assert (=> bs!1108307 (= (dynLambda!21811 lambda!214987 (h!59153 (toList!5906 lt!1885054))) (contains!16156 lt!1885073 (_1!30507 (h!59153 (toList!5906 lt!1885054)))))))

(declare-fun m!5653941 () Bool)

(assert (=> bs!1108307 m!5653941))

(assert (=> b!4720233 d!1502500))

(declare-fun b_lambda!178067 () Bool)

(assert (= b_lambda!177925 (or d!1502028 b_lambda!178067)))

(declare-fun bs!1108308 () Bool)

(declare-fun d!1502502 () Bool)

(assert (= bs!1108308 (and d!1502502 d!1502028)))

(assert (=> bs!1108308 (= (dynLambda!21811 lambda!214975 (h!59153 (toList!5906 lt!1884696))) (contains!16156 lt!1884945 (_1!30507 (h!59153 (toList!5906 lt!1884696)))))))

(declare-fun m!5653945 () Bool)

(assert (=> bs!1108308 m!5653945))

(assert (=> b!4719967 d!1502502))

(declare-fun b_lambda!178069 () Bool)

(assert (= b_lambda!177965 (or d!1502050 b_lambda!178069)))

(declare-fun bs!1108309 () Bool)

(declare-fun d!1502506 () Bool)

(assert (= bs!1108309 (and d!1502506 d!1502050)))

(assert (=> bs!1108309 (= (dynLambda!21811 lambda!214988 (h!59153 (toList!5906 lt!1884696))) (contains!16156 lt!1885055 (_1!30507 (h!59153 (toList!5906 lt!1884696)))))))

(declare-fun m!5653947 () Bool)

(assert (=> bs!1108309 m!5653947))

(assert (=> b!4720151 d!1502506))

(declare-fun b_lambda!178071 () Bool)

(assert (= b_lambda!177909 (or d!1501952 b_lambda!178071)))

(declare-fun bs!1108310 () Bool)

(declare-fun d!1502508 () Bool)

(assert (= bs!1108310 (and d!1502508 d!1501952)))

(assert (=> bs!1108310 (= (dynLambda!21811 lambda!214879 (h!59153 newBucket!218)) (= (hash!4372 hashF!1323 (_1!30507 (h!59153 newBucket!218))) hash!405))))

(declare-fun m!5653949 () Bool)

(assert (=> bs!1108310 m!5653949))

(assert (=> b!4719867 d!1502508))

(declare-fun b_lambda!178073 () Bool)

(assert (= b_lambda!177941 (or b!4719725 b_lambda!178073)))

(declare-fun bs!1108311 () Bool)

(declare-fun d!1502510 () Bool)

(assert (= bs!1108311 (and d!1502510 b!4719725)))

(assert (=> bs!1108311 (= (dynLambda!21811 lambda!214981 (h!59153 (t!360192 oldBucket!34))) (contains!16156 lt!1885008 (_1!30507 (h!59153 (t!360192 oldBucket!34)))))))

(declare-fun m!5653951 () Bool)

(assert (=> bs!1108311 m!5653951))

(assert (=> b!4720010 d!1502510))

(declare-fun b_lambda!178075 () Bool)

(assert (= b_lambda!177981 (or b!4719652 b_lambda!178075)))

(declare-fun bs!1108312 () Bool)

(declare-fun d!1502512 () Bool)

(assert (= bs!1108312 (and d!1502512 b!4719652)))

(assert (=> bs!1108312 (= (dynLambda!21811 lambda!214950 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (contains!16156 lt!1884835 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(assert (=> bs!1108312 m!5651727))

(assert (=> b!4720217 d!1502512))

(declare-fun b_lambda!178077 () Bool)

(assert (= b_lambda!178003 (or b!4719795 b_lambda!178077)))

(declare-fun bs!1108313 () Bool)

(declare-fun d!1502514 () Bool)

(assert (= bs!1108313 (and d!1502514 b!4719795)))

(assert (=> bs!1108313 (= (dynLambda!21811 lambda!214991 (h!59153 (t!360192 lt!1884694))) (contains!16156 lt!1885094 (_1!30507 (h!59153 (t!360192 lt!1884694)))))))

(declare-fun m!5653957 () Bool)

(assert (=> bs!1108313 m!5653957))

(assert (=> b!4720391 d!1502514))

(declare-fun b_lambda!178079 () Bool)

(assert (= b_lambda!177935 (or b!4719715 b_lambda!178079)))

(declare-fun bs!1108314 () Bool)

(declare-fun d!1502518 () Bool)

(assert (= bs!1108314 (and d!1502518 b!4719715)))

(assert (=> bs!1108314 (= (dynLambda!21811 lambda!214974 (h!59153 (t!360192 (Cons!52812 lt!1884698 lt!1884694)))) (contains!16156 lt!1884963 (_1!30507 (h!59153 (t!360192 (Cons!52812 lt!1884698 lt!1884694))))))))

(declare-fun m!5653959 () Bool)

(assert (=> bs!1108314 m!5653959))

(assert (=> b!4720003 d!1502518))

(declare-fun b_lambda!178081 () Bool)

(assert (= b_lambda!177969 (or d!1501984 b_lambda!178081)))

(declare-fun bs!1108315 () Bool)

(declare-fun d!1502520 () Bool)

(assert (= bs!1108315 (and d!1502520 d!1501984)))

(assert (=> bs!1108315 (= (dynLambda!21810 lambda!214971 (h!59154 (t!360193 (toList!5905 lm!2023)))) (noDuplicateKeys!2008 (_2!30508 (h!59154 (t!360193 (toList!5905 lm!2023))))))))

(assert (=> bs!1108315 m!5652247))

(assert (=> b!4720155 d!1502520))

(declare-fun b_lambda!178083 () Bool)

(assert (= b_lambda!177939 (or b!4719715 b_lambda!178083)))

(declare-fun bs!1108316 () Bool)

(declare-fun d!1502522 () Bool)

(assert (= bs!1108316 (and d!1502522 b!4719715)))

(assert (=> bs!1108316 (= (dynLambda!21811 lambda!214974 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (contains!16156 lt!1884963 (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(assert (=> bs!1108316 m!5651975))

(assert (=> d!1502162 d!1502522))

(declare-fun b_lambda!178085 () Bool)

(assert (= b_lambda!177989 (or b!4719790 b_lambda!178085)))

(declare-fun bs!1108317 () Bool)

(declare-fun d!1502526 () Bool)

(assert (= bs!1108317 (and d!1502526 b!4719790)))

(assert (=> bs!1108317 (= (dynLambda!21811 lambda!214987 (h!59153 newBucket!218)) (contains!16156 lt!1885073 (_1!30507 (h!59153 newBucket!218))))))

(assert (=> bs!1108317 m!5652131))

(assert (=> b!4720269 d!1502526))

(declare-fun b_lambda!178087 () Bool)

(assert (= b_lambda!177991 (or b!4719790 b_lambda!178087)))

(declare-fun bs!1108318 () Bool)

(declare-fun d!1502528 () Bool)

(assert (= bs!1108318 (and d!1502528 b!4719790)))

(assert (=> bs!1108318 (= (dynLambda!21811 lambda!214987 (h!59153 (t!360192 newBucket!218))) (contains!16156 lt!1885073 (_1!30507 (h!59153 (t!360192 newBucket!218)))))))

(declare-fun m!5653965 () Bool)

(assert (=> bs!1108318 m!5653965))

(assert (=> b!4720295 d!1502528))

(declare-fun b_lambda!178089 () Bool)

(assert (= b_lambda!177963 (or d!1501954 b_lambda!178089)))

(declare-fun bs!1108319 () Bool)

(declare-fun d!1502530 () Bool)

(assert (= bs!1108319 (and d!1502530 d!1501954)))

(assert (=> bs!1108319 (= (dynLambda!21811 lambda!214951 (h!59153 (toList!5906 lt!1884696))) (contains!16156 lt!1884817 (_1!30507 (h!59153 (toList!5906 lt!1884696)))))))

(declare-fun m!5653967 () Bool)

(assert (=> bs!1108319 m!5653967))

(assert (=> b!4720149 d!1502530))

(declare-fun b_lambda!178091 () Bool)

(assert (= b_lambda!177983 (or b!4719652 b_lambda!178091)))

(declare-fun bs!1108320 () Bool)

(declare-fun d!1502532 () Bool)

(assert (= bs!1108320 (and d!1502532 b!4719652)))

(assert (=> bs!1108320 (= (dynLambda!21811 lambda!214950 (h!59153 (toList!5906 lt!1884816))) (contains!16156 lt!1884835 (_1!30507 (h!59153 (toList!5906 lt!1884816)))))))

(declare-fun m!5653969 () Bool)

(assert (=> bs!1108320 m!5653969))

(assert (=> b!4720219 d!1502532))

(declare-fun b_lambda!178093 () Bool)

(assert (= b_lambda!177943 (or b!4719725 b_lambda!178093)))

(declare-fun bs!1108321 () Bool)

(declare-fun d!1502534 () Bool)

(assert (= bs!1108321 (and d!1502534 b!4719725)))

(assert (=> bs!1108321 (= (dynLambda!21811 lambda!214981 (h!59153 (toList!5906 lt!1884989))) (contains!16156 lt!1885008 (_1!30507 (h!59153 (toList!5906 lt!1884989)))))))

(declare-fun m!5653975 () Bool)

(assert (=> bs!1108321 m!5653975))

(assert (=> b!4720012 d!1502534))

(declare-fun b_lambda!178095 () Bool)

(assert (= b_lambda!177987 (or b!4719790 b_lambda!178095)))

(assert (=> d!1502316 d!1502526))

(declare-fun b_lambda!178097 () Bool)

(assert (= b_lambda!178001 (or d!1501954 b_lambda!178097)))

(declare-fun bs!1108322 () Bool)

(declare-fun d!1502538 () Bool)

(assert (= bs!1108322 (and d!1502538 d!1501954)))

(assert (=> bs!1108322 (= (dynLambda!21811 lambda!214951 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023))))) (contains!16156 lt!1884817 (_1!30507 (h!59153 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))))

(declare-fun m!5653977 () Bool)

(assert (=> bs!1108322 m!5653977))

(assert (=> b!4720354 d!1502538))

(declare-fun b_lambda!178099 () Bool)

(assert (= b_lambda!177979 (or b!4719652 b_lambda!178099)))

(assert (=> d!1502286 d!1502512))

(declare-fun b_lambda!178101 () Bool)

(assert (= b_lambda!177921 (or b!4719795 b_lambda!178101)))

(declare-fun bs!1108323 () Bool)

(declare-fun d!1502540 () Bool)

(assert (= bs!1108323 (and d!1502540 b!4719795)))

(assert (=> bs!1108323 (= (dynLambda!21811 lambda!214991 (h!59153 (toList!5906 lt!1884696))) (contains!16156 lt!1885094 (_1!30507 (h!59153 (toList!5906 lt!1884696)))))))

(declare-fun m!5653979 () Bool)

(assert (=> bs!1108323 m!5653979))

(assert (=> b!4719963 d!1502540))

(declare-fun b_lambda!178103 () Bool)

(assert (= b_lambda!177973 (or b!4719652 b_lambda!178103)))

(declare-fun bs!1108324 () Bool)

(declare-fun d!1502542 () Bool)

(assert (= bs!1108324 (and d!1502542 b!4719652)))

(assert (=> bs!1108324 (= (dynLambda!21811 lambda!214950 (h!59153 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023)))))) (contains!16156 lt!1884835 (_1!30507 (h!59153 (t!360192 (_2!30508 (h!59154 (toList!5905 lm!2023))))))))))

(declare-fun m!5653983 () Bool)

(assert (=> bs!1108324 m!5653983))

(assert (=> b!4720185 d!1502542))

(declare-fun b_lambda!178105 () Bool)

(assert (= b_lambda!178051 (or d!1502050 b_lambda!178105)))

(declare-fun bs!1108325 () Bool)

(declare-fun d!1502546 () Bool)

(assert (= bs!1108325 (and d!1502546 d!1502050)))

(assert (=> bs!1108325 (= (dynLambda!21811 lambda!214988 (h!59153 newBucket!218)) (contains!16156 lt!1885055 (_1!30507 (h!59153 newBucket!218))))))

(declare-fun m!5653985 () Bool)

(assert (=> bs!1108325 m!5653985))

(assert (=> b!4720561 d!1502546))

(declare-fun b_lambda!178107 () Bool)

(assert (= b_lambda!177949 (or b!4719725 b_lambda!178107)))

(declare-fun bs!1108326 () Bool)

(declare-fun d!1502548 () Bool)

(assert (= bs!1108326 (and d!1502548 b!4719725)))

(assert (=> bs!1108326 (= (dynLambda!21811 lambda!214981 (h!59153 (toList!5906 lt!1884696))) (contains!16156 lt!1885008 (_1!30507 (h!59153 (toList!5906 lt!1884696)))))))

(declare-fun m!5653987 () Bool)

(assert (=> bs!1108326 m!5653987))

(assert (=> b!4720058 d!1502548))

(declare-fun b_lambda!178109 () Bool)

(assert (= b_lambda!177999 (or d!1502052 b_lambda!178109)))

(declare-fun bs!1108327 () Bool)

(declare-fun d!1502550 () Bool)

(assert (= bs!1108327 (and d!1502550 d!1502052)))

(assert (=> bs!1108327 (= (dynLambda!21811 lambda!214992 (h!59153 (toList!5906 lt!1884696))) (contains!16156 lt!1885076 (_1!30507 (h!59153 (toList!5906 lt!1884696)))))))

(declare-fun m!5653989 () Bool)

(assert (=> bs!1108327 m!5653989))

(assert (=> b!4720352 d!1502550))

(declare-fun b_lambda!178111 () Bool)

(assert (= b_lambda!178019 (or d!1502034 b_lambda!178111)))

(declare-fun bs!1108328 () Bool)

(declare-fun d!1502552 () Bool)

(assert (= bs!1108328 (and d!1502552 d!1502034)))

(assert (=> bs!1108328 (= (dynLambda!21811 lambda!214982 (h!59153 oldBucket!34)) (contains!16156 lt!1884990 (_1!30507 (h!59153 oldBucket!34))))))

(declare-fun m!5653995 () Bool)

(assert (=> bs!1108328 m!5653995))

(assert (=> b!4720462 d!1502552))

(declare-fun b_lambda!178113 () Bool)

(assert (= b_lambda!178005 (or b!4719795 b_lambda!178113)))

(declare-fun bs!1108329 () Bool)

(declare-fun d!1502556 () Bool)

(assert (= bs!1108329 (and d!1502556 b!4719795)))

(assert (=> bs!1108329 (= (dynLambda!21811 lambda!214991 (h!59153 lt!1884694)) (contains!16156 lt!1885094 (_1!30507 (h!59153 lt!1884694))))))

(assert (=> bs!1108329 m!5652161))

(assert (=> b!4720401 d!1502556))

(declare-fun b_lambda!178115 () Bool)

(assert (= b_lambda!177931 (or b!4719715 b_lambda!178115)))

(declare-fun bs!1108330 () Bool)

(declare-fun d!1502558 () Bool)

(assert (= bs!1108330 (and d!1502558 b!4719715)))

(assert (=> bs!1108330 (= (dynLambda!21811 lambda!214974 (h!59153 (toList!5906 lt!1884944))) (contains!16156 lt!1884963 (_1!30507 (h!59153 (toList!5906 lt!1884944)))))))

(declare-fun m!5653997 () Bool)

(assert (=> bs!1108330 m!5653997))

(assert (=> b!4719973 d!1502558))

(declare-fun b_lambda!178117 () Bool)

(assert (= b_lambda!177919 (or d!1502048 b_lambda!178117)))

(declare-fun bs!1108331 () Bool)

(declare-fun d!1502560 () Bool)

(assert (= bs!1108331 (and d!1502560 d!1502048)))

(assert (=> bs!1108331 (= (dynLambda!21810 lambda!214984 (h!59154 (toList!5905 lm!2023))) (noDuplicateKeys!2008 (_2!30508 (h!59154 (toList!5905 lm!2023)))))))

(assert (=> bs!1108331 m!5651745))

(assert (=> b!4719961 d!1502560))

(declare-fun b_lambda!178119 () Bool)

(assert (= b_lambda!177967 (or d!1502072 b_lambda!178119)))

(declare-fun bs!1108332 () Bool)

(declare-fun d!1502562 () Bool)

(assert (= bs!1108332 (and d!1502562 d!1502072)))

(assert (=> bs!1108332 (= (dynLambda!21810 lambda!214998 (h!59154 (toList!5905 lm!2023))) (allKeysSameHash!1834 (_2!30508 (h!59154 (toList!5905 lm!2023))) (_1!30508 (h!59154 (toList!5905 lm!2023))) hashF!1323))))

(declare-fun m!5654003 () Bool)

(assert (=> bs!1108332 m!5654003))

(assert (=> b!4720153 d!1502562))

(declare-fun b_lambda!178121 () Bool)

(assert (= b_lambda!177927 (or d!1502034 b_lambda!178121)))

(declare-fun bs!1108333 () Bool)

(declare-fun d!1502564 () Bool)

(assert (= bs!1108333 (and d!1502564 d!1502034)))

(assert (=> bs!1108333 (= (dynLambda!21811 lambda!214982 (h!59153 (toList!5906 lt!1884696))) (contains!16156 lt!1884990 (_1!30507 (h!59153 (toList!5906 lt!1884696)))))))

(declare-fun m!5654011 () Bool)

(assert (=> bs!1108333 m!5654011))

(assert (=> b!4719969 d!1502564))

(declare-fun b_lambda!178123 () Bool)

(assert (= b_lambda!177951 (or b!4719725 b_lambda!178123)))

(declare-fun bs!1108334 () Bool)

(declare-fun d!1502568 () Bool)

(assert (= bs!1108334 (and d!1502568 b!4719725)))

(assert (=> bs!1108334 (= (dynLambda!21811 lambda!214981 (h!59153 oldBucket!34)) (contains!16156 lt!1885008 (_1!30507 (h!59153 oldBucket!34))))))

(assert (=> bs!1108334 m!5652011))

(assert (=> b!4720060 d!1502568))

(declare-fun b_lambda!178125 () Bool)

(assert (= b_lambda!177993 (or d!1502028 b_lambda!178125)))

(declare-fun bs!1108335 () Bool)

(declare-fun d!1502570 () Bool)

(assert (= bs!1108335 (and d!1502570 d!1502028)))

(assert (=> bs!1108335 (= (dynLambda!21811 lambda!214975 (h!59153 (Cons!52812 lt!1884698 lt!1884694))) (contains!16156 lt!1884945 (_1!30507 (h!59153 (Cons!52812 lt!1884698 lt!1884694)))))))

(declare-fun m!5654015 () Bool)

(assert (=> bs!1108335 m!5654015))

(assert (=> b!4720318 d!1502570))

(declare-fun b_lambda!178127 () Bool)

(assert (= b_lambda!177929 (or d!1502062 b_lambda!178127)))

(declare-fun bs!1108336 () Bool)

(declare-fun d!1502572 () Bool)

(assert (= bs!1108336 (and d!1502572 d!1502062)))

(assert (=> bs!1108336 (= (dynLambda!21811 lambda!214995 (h!59153 oldBucket!34)) (= (hash!4372 hashF!1323 (_1!30507 (h!59153 oldBucket!34))) hash!405))))

(declare-fun m!5654017 () Bool)

(assert (=> bs!1108336 m!5654017))

(assert (=> b!4719971 d!1502572))

(declare-fun b_lambda!178129 () Bool)

(assert (= b_lambda!177913 (or b!4719790 b_lambda!178129)))

(declare-fun bs!1108337 () Bool)

(declare-fun d!1502574 () Bool)

(assert (= bs!1108337 (and d!1502574 b!4719790)))

(assert (=> bs!1108337 (= (dynLambda!21811 lambda!214987 (h!59153 (toList!5906 lt!1884696))) (contains!16156 lt!1885073 (_1!30507 (h!59153 (toList!5906 lt!1884696)))))))

(declare-fun m!5654019 () Bool)

(assert (=> bs!1108337 m!5654019))

(assert (=> b!4719940 d!1502574))

(declare-fun b_lambda!178131 () Bool)

(assert (= b_lambda!178031 (or d!1502058 b_lambda!178131)))

(declare-fun bs!1108338 () Bool)

(declare-fun d!1502576 () Bool)

(assert (= bs!1108338 (and d!1502576 d!1502058)))

(assert (=> bs!1108338 (= (dynLambda!21810 lambda!214993 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023))))) (noDuplicateKeys!2008 (_2!30508 (h!59154 (Cons!52813 (tuple2!54429 hash!405 newBucket!218) (t!360193 (toList!5905 lm!2023)))))))))

(assert (=> bs!1108338 m!5653313))

(assert (=> b!4720487 d!1502576))

(declare-fun b_lambda!178133 () Bool)

(assert (= b_lambda!177901 (or d!1502052 b_lambda!178133)))

(declare-fun bs!1108339 () Bool)

(declare-fun d!1502578 () Bool)

(assert (= bs!1108339 (and d!1502578 d!1502052)))

(assert (=> bs!1108339 (= (dynLambda!21811 lambda!214992 (h!59153 lt!1884694)) (contains!16156 lt!1885076 (_1!30507 (h!59153 lt!1884694))))))

(declare-fun m!5654021 () Bool)

(assert (=> bs!1108339 m!5654021))

(assert (=> b!4719847 d!1502578))

(declare-fun b_lambda!178135 () Bool)

(assert (= b_lambda!178017 (or b!4719795 b_lambda!178135)))

(declare-fun bs!1108340 () Bool)

(declare-fun d!1502580 () Bool)

(assert (= bs!1108340 (and d!1502580 b!4719795)))

(assert (=> bs!1108340 (= (dynLambda!21811 lambda!214991 (h!59153 (toList!5906 lt!1885075))) (contains!16156 lt!1885094 (_1!30507 (h!59153 (toList!5906 lt!1885075)))))))

(declare-fun m!5654023 () Bool)

(assert (=> bs!1108340 m!5654023))

(assert (=> b!4720460 d!1502580))

(declare-fun b_lambda!178137 () Bool)

(assert (= b_lambda!177933 (or b!4719715 b_lambda!178137)))

(declare-fun bs!1108341 () Bool)

(declare-fun d!1502582 () Bool)

(assert (= bs!1108341 (and d!1502582 b!4719715)))

(assert (=> bs!1108341 (= (dynLambda!21811 lambda!214974 (h!59153 (toList!5906 lt!1884696))) (contains!16156 lt!1884963 (_1!30507 (h!59153 (toList!5906 lt!1884696)))))))

(declare-fun m!5654025 () Bool)

(assert (=> bs!1108341 m!5654025))

(assert (=> b!4719985 d!1502582))

(declare-fun b_lambda!178139 () Bool)

(assert (= b_lambda!178007 (or b!4719795 b_lambda!178139)))

(assert (=> d!1502374 d!1502556))

(declare-fun b_lambda!178141 () Bool)

(assert (= b_lambda!177945 (or b!4719725 b_lambda!178141)))

(assert (=> d!1502168 d!1502568))

(declare-fun b_lambda!178143 () Bool)

(assert (= b_lambda!177911 (or b!4719652 b_lambda!178143)))

(declare-fun bs!1108342 () Bool)

(declare-fun d!1502584 () Bool)

(assert (= bs!1108342 (and d!1502584 b!4719652)))

(assert (=> bs!1108342 (= (dynLambda!21811 lambda!214950 (h!59153 (toList!5906 lt!1884696))) (contains!16156 lt!1884835 (_1!30507 (h!59153 (toList!5906 lt!1884696)))))))

(declare-fun m!5654027 () Bool)

(assert (=> bs!1108342 m!5654027))

(assert (=> b!4719938 d!1502584))

(declare-fun b_lambda!178145 () Bool)

(assert (= b_lambda!178045 (or d!1502060 b_lambda!178145)))

(declare-fun bs!1108343 () Bool)

(declare-fun d!1502586 () Bool)

(assert (= bs!1108343 (and d!1502586 d!1502060)))

(assert (=> bs!1108343 (= (dynLambda!21810 lambda!214994 (h!59154 lt!1884695)) (noDuplicateKeys!2008 (_2!30508 (h!59154 lt!1884695))))))

(assert (=> bs!1108343 m!5653415))

(assert (=> b!4720553 d!1502586))

(declare-fun b_lambda!178147 () Bool)

(assert (= b_lambda!177937 (or b!4719715 b_lambda!178147)))

(assert (=> b!4720005 d!1502522))

(check-sat (not b!4720069) (not b!4720011) (not bm!330006) (not bm!330033) (not d!1502308) (not b!4720322) (not b!4720020) (not b!4720064) (not b!4719840) (not d!1502092) (not b!4720174) (not bs!1108323) (not b!4719928) (not d!1502490) (not d!1502410) (not b!4720461) (not bm!330012) (not b!4719994) (not b!4720378) (not b!4719981) (not b!4720193) (not b!4719868) (not b!4719864) (not d!1502190) (not d!1502128) (not b!4720146) (not b!4720038) (not d!1502334) (not bs!1108306) (not bm!329999) (not b!4720006) (not b!4720465) (not d!1502156) (not d!1502272) (not b!4720299) (not b!4720321) (not bm!330007) (not b!4720199) (not b!4719861) (not b!4719871) (not d!1502184) (not bm!330005) (not b!4720182) (not bm!329985) (not b!4720381) (not b!4720220) (not b!4720469) (not b!4720377) (not b!4720350) (not b!4720566) (not b!4719988) (not bs!1108325) (not b!4720145) (not bm!330001) (not b!4720216) (not bs!1108308) (not bs!1108309) (not b!4720373) (not b!4720488) (not bs!1108310) (not b!4720197) (not b_lambda!178079) (not b!4720055) (not bs!1108313) (not b!4719894) (not b!4720002) (not bs!1108342) (not b_lambda!178147) (not bm!330058) (not b!4720049) (not bs!1108337) (not b!4720061) (not b!4719966) (not bs!1108340) (not bm!330024) (not bm!330043) (not b!4720558) (not b!4719960) (not b!4720075) (not b!4720603) (not b_lambda!178089) (not bs!1108343) (not d!1502152) (not b!4720218) (not b!4720189) (not b!4719946) (not b!4720243) (not b_lambda!178123) (not b!4719877) (not b!4720389) (not b!4720079) (not b!4719873) (not b_lambda!178113) (not b!4720319) (not b!4720043) (not d!1502488) (not b!4719984) (not bs!1108338) (not b_lambda!178093) (not b!4719986) (not b!4720013) (not d!1502316) (not bs!1108312) (not b!4719850) (not d!1502202) (not d!1502242) (not d!1502214) (not d!1502252) (not bm!330003) (not b!4720353) (not b_lambda!178145) (not b!4719874) (not d!1502134) (not d!1502286) (not bs!1108334) (not b_lambda!177915) (not b!4719856) (not b!4720129) (not b!4719990) (not b!4720290) (not b_lambda!178071) (not bm!330032) (not b_lambda!178023) (not b!4719932) (not b_lambda!178021) (not b_lambda!178099) (not b!4720413) (not b!4720040) (not b_lambda!178073) (not d!1502366) (not d!1502172) (not b!4719956) (not b!4720004) (not b!4720392) (not b!4719957) (not d!1502368) (not b!4720166) (not b!4720356) (not b!4719895) (not b!4719849) (not b!4719976) (not b!4720192) (not b!4720046) (not b_lambda!178139) (not b!4719943) (not d!1502078) (not b!4719987) (not b!4720066) (not d!1502162) (not b_lambda!177903) (not b_lambda!178137) (not bs!1108318) (not b!4719941) (not b!4720021) (not b!4720527) (not d!1502196) (not b!4720009) (not bm!330056) (not b_lambda!178127) (not b_lambda!178053) (not d!1502426) (not b!4720380) (not bm!330010) (not b!4720067) (not bs!1108316) (not b!4719952) (not b!4720359) (not d!1502174) (not b_lambda!178131) (not bs!1108333) (not b_lambda!178103) (not b!4719866) (not bs!1108328) (not b!4720152) (not bm!330026) (not b!4720371) (not b!4720386) (not b!4720114) (not b!4720256) (not bs!1108319) (not b_lambda!178085) (not b!4720068) (not b!4720253) (not bm!330057) (not b!4720375) (not b!4720150) (not b!4720289) (not b!4720017) (not b_lambda!178083) (not b!4720303) (not b!4719860) (not bs!1108330) (not b!4720042) (not b_lambda!178111) (not b_lambda!177905) (not b!4719970) (not b!4720523) (not b!4720554) (not b!4719925) (not bs!1108321) (not b!4720191) (not b_lambda!178097) (not b!4720215) (not bm!330031) (not bs!1108335) (not b_lambda!178109) (not b!4720301) (not d!1502326) (not d!1502336) (not b!4719949) (not d!1502232) (not d!1502108) (not b!4719983) (not b!4719836) (not b!4720411) (not b!4719978) (not bm!330027) (not d!1502246) (not b!4720125) (not d!1502298) (not bm!330017) (not b!4720242) (not b!4720183) (not d!1502226) (not d!1502458) (not bm!329986) (not d!1502454) (not b!4720084) (not b!4720176) (not bm!330053) (not b!4720355) (not b_lambda!178067) (not bm!330060) (not d!1502126) (not b!4720463) (not b!4720254) (not bm!330013) (not b!4720083) (not bm!330059) (not b!4719962) (not d!1502394) (not bs!1108339) (not b!4720018) (not b_lambda!178107) (not bs!1108324) (not b!4720054) (not d!1502364) (not bm!330014) (not b!4720077) (not b!4720154) (not b_lambda!178063) (not b!4719858) (not b!4719924) (not bm!330055) (not b!4720087) (not bs!1108315) (not b!4720194) (not b_lambda!178101) (not b_lambda!178121) (not bs!1108322) (not bm!330045) (not b!4719968) (not b!4720237) (not b_lambda!178117) (not bm!330008) (not b!4720409) (not b!4719982) (not bs!1108329) (not b!4720325) (not b!4720270) (not bm!330044) (not b!4720184) (not b!4720056) (not b!4720317) tp_is_empty!31327 (not d!1502148) (not b!4720407) (not b!4720187) (not b!4719959) (not b!4719929) (not b!4720239) (not b!4720156) (not b!4720178) (not b_lambda!178135) (not bm!329997) (not d!1502422) (not d!1502258) (not b_lambda!178069) (not bm!329988) (not d!1502102) (not b!4719935) (not bm!330029) (not b!4720467) (not b_lambda!177907) (not b!4720214) (not b!4720414) (not b!4720080) (not b!4720070) (not b!4720323) (not b_lambda!178119) (not bs!1108331) (not b!4720602) (not b!4720408) (not bs!1108317) (not bm!329987) (not b!4720379) (not b_lambda!178065) (not d!1502270) (not b!4720059) (not b_lambda!178115) (not b!4720593) (not d!1502262) (not b!4720001) (not b!4720086) (not d!1502374) (not b!4720302) (not d!1502320) (not b!4719939) (not b!4720148) (not b_lambda!178077) (not b!4719876) (not b!4719869) (not d!1502170) (not b!4720138) (not bm!330036) (not bm!330011) (not b_lambda!178105) (not b!4720268) (not b!4720388) (not b!4720562) (not b_lambda!178061) (not bs!1108314) (not d!1502206) (not b!4720360) (not d!1502376) (not d!1502168) (not b_lambda!178141) (not b_lambda!177899) (not b!4720180) (not b!4719998) (not bs!1108327) (not bs!1108311) (not d!1502304) (not b_lambda!178095) (not b!4720568) (not b!4720195) (not b_lambda!178087) (not b!4720053) (not d!1502146) (not b_lambda!178129) (not d!1502090) (not b!4720051) (not b!4720062) (not b!4720140) (not b!4720057) (not b!4720304) (not d!1502106) (not bs!1108336) (not b!4720234) (not bm!330002) (not d!1502354) (not b!4719974) (not bs!1108320) (not b!4720143) (not b!4720175) (not bm!330054) (not b!4720000) (not b!4720601) (not b!4719839) (not b!4720014) (not bm!330023) (not b!4719931) (not b!4720305) (not b!4720016) (not b!4720477) (not b!4720015) (not b!4720044) (not b!4720240) (not b!4720580) (not b_lambda!178059) (not b!4720326) (not b!4719888) (not b_lambda!178133) (not b_lambda!178091) (not b!4719972) (not b!4720382) (not b!4719992) (not bs!1108326) (not b!4720297) (not b!4720387) (not d!1502266) (not b!4720130) (not b!4720045) (not b_lambda!178075) (not d!1502322) (not b!4720081) (not b!4720078) (not bm!330015) (not b!4720600) (not b!4719848) (not b!4720530) (not b!4720235) (not b!4719862) (not b!4720410) (not b!4720384) (not b!4720173) (not b!4719875) tp_is_empty!31325 (not b!4719964) (not b!4720529) (not b!4720124) (not b_lambda!177923) (not b_lambda!178125) (not bm!330025) (not b!4719996) (not d!1502288) (not d!1502348) (not d!1502200) (not bm!330004) (not b!4720564) (not b_lambda!178081) (not b!4720320) (not b!4720090) (not bs!1108341) (not bs!1108332) (not d!1502430) (not bm!330009) (not b!4719999) (not d!1502378) (not b!4720357) (not b!4720390) (not b!4720131) (not b!4720186) (not b!4720123) (not b!4720257) (not d!1502076) (not b!4719989) (not b!4719980) (not b!4719841) (not b!4720402) (not d!1502328) (not b!4720181) (not b!4720525) (not b!4720196) (not b!4720296) (not d!1502094) (not b!4719955) (not d!1502220) (not b!4720200) (not b!4720241) (not b!4719993) (not bs!1108307) (not b!4719837) (not b!4719926) (not d!1502154) (not b_lambda!178143))
(check-sat)
