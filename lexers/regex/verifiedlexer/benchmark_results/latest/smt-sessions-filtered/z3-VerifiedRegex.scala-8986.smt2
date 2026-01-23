; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!484472 () Bool)

(assert start!484472)

(declare-fun b!4745377 () Bool)

(declare-fun e!2959932 () Bool)

(declare-datatypes ((K!14335 0))(
  ( (K!14336 (val!19739 Int)) )
))
(declare-datatypes ((V!14581 0))(
  ( (V!14582 (val!19740 Int)) )
))
(declare-datatypes ((tuple2!54690 0))(
  ( (tuple2!54691 (_1!30639 K!14335) (_2!30639 V!14581)) )
))
(declare-datatypes ((List!53117 0))(
  ( (Nil!52993) (Cons!52993 (h!59384 tuple2!54690) (t!360425 List!53117)) )
))
(declare-datatypes ((ListMap!5401 0))(
  ( (ListMap!5402 (toList!6037 List!53117)) )
))
(declare-fun lt!1908178 () ListMap!5401)

(declare-datatypes ((tuple2!54692 0))(
  ( (tuple2!54693 (_1!30640 (_ BitVec 64)) (_2!30640 List!53117)) )
))
(declare-datatypes ((List!53118 0))(
  ( (Nil!52994) (Cons!52994 (h!59385 tuple2!54692) (t!360426 List!53118)) )
))
(declare-datatypes ((ListLongMap!4567 0))(
  ( (ListLongMap!4568 (toList!6038 List!53118)) )
))
(declare-fun lm!2023 () ListLongMap!4567)

(declare-fun addToMapMapFromBucket!1504 (List!53117 ListMap!5401) ListMap!5401)

(declare-fun extractMap!2100 (List!53118) ListMap!5401)

(assert (=> b!4745377 (= e!2959932 (= lt!1908178 (addToMapMapFromBucket!1504 (_2!30640 (h!59385 (toList!6038 lm!2023))) (extractMap!2100 (t!360426 (toList!6038 lm!2023))))))))

(declare-fun b!4745378 () Bool)

(declare-fun res!2011213 () Bool)

(declare-fun e!2959936 () Bool)

(assert (=> b!4745378 (=> (not res!2011213) (not e!2959936))))

(declare-datatypes ((Hashable!6443 0))(
  ( (HashableExt!6442 (__x!32146 Int)) )
))
(declare-fun hashF!1323 () Hashable!6443)

(declare-fun oldBucket!34 () List!53117)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1900 (List!53117 (_ BitVec 64) Hashable!6443) Bool)

(assert (=> b!4745378 (= res!2011213 (allKeysSameHash!1900 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4745379 () Bool)

(declare-fun res!2011207 () Bool)

(declare-fun e!2959935 () Bool)

(assert (=> b!4745379 (=> res!2011207 e!2959935)))

(declare-fun lambda!220124 () Int)

(declare-fun forall!11709 (List!53118 Int) Bool)

(assert (=> b!4745379 (= res!2011207 (not (forall!11709 (toList!6038 lm!2023) lambda!220124)))))

(declare-fun b!4745381 () Bool)

(declare-fun e!2959938 () Bool)

(declare-fun e!2959931 () Bool)

(assert (=> b!4745381 (= e!2959938 e!2959931)))

(declare-fun res!2011202 () Bool)

(assert (=> b!4745381 (=> (not res!2011202) (not e!2959931))))

(declare-fun lt!1908179 () (_ BitVec 64))

(assert (=> b!4745381 (= res!2011202 (= lt!1908179 hash!405))))

(declare-fun key!4653 () K!14335)

(declare-fun hash!4490 (Hashable!6443 K!14335) (_ BitVec 64))

(assert (=> b!4745381 (= lt!1908179 (hash!4490 hashF!1323 key!4653))))

(declare-fun b!4745382 () Bool)

(declare-fun res!2011208 () Bool)

(assert (=> b!4745382 (=> (not res!2011208) (not e!2959931))))

(declare-fun head!10346 (List!53118) tuple2!54692)

(assert (=> b!4745382 (= res!2011208 (= (head!10346 (toList!6038 lm!2023)) (tuple2!54693 hash!405 oldBucket!34)))))

(declare-fun b!4745383 () Bool)

(declare-fun res!2011211 () Bool)

(assert (=> b!4745383 (=> (not res!2011211) (not e!2959931))))

(declare-fun allKeysSameHashInMap!1988 (ListLongMap!4567 Hashable!6443) Bool)

(assert (=> b!4745383 (= res!2011211 (allKeysSameHashInMap!1988 lm!2023 hashF!1323))))

(declare-fun b!4745384 () Bool)

(declare-fun res!2011201 () Bool)

(assert (=> b!4745384 (=> (not res!2011201) (not e!2959936))))

(declare-fun newBucket!218 () List!53117)

(declare-fun removePairForKey!1669 (List!53117 K!14335) List!53117)

(assert (=> b!4745384 (= res!2011201 (= (removePairForKey!1669 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4745385 () Bool)

(assert (=> b!4745385 (= e!2959931 (not e!2959935))))

(declare-fun res!2011210 () Bool)

(assert (=> b!4745385 (=> res!2011210 e!2959935)))

(get-info :version)

(assert (=> b!4745385 (= res!2011210 (or (and ((_ is Cons!52993) oldBucket!34) (= (_1!30639 (h!59384 oldBucket!34)) key!4653)) (and ((_ is Cons!52993) oldBucket!34) (not (= (_1!30639 (h!59384 oldBucket!34)) key!4653))) (not ((_ is Nil!52993) oldBucket!34))))))

(assert (=> b!4745385 e!2959932))

(declare-fun res!2011204 () Bool)

(assert (=> b!4745385 (=> (not res!2011204) (not e!2959932))))

(declare-fun tail!9151 (ListLongMap!4567) ListLongMap!4567)

(assert (=> b!4745385 (= res!2011204 (= (t!360426 (toList!6038 lm!2023)) (toList!6038 (tail!9151 lm!2023))))))

(declare-fun b!4745386 () Bool)

(assert (=> b!4745386 (= e!2959936 e!2959938)))

(declare-fun res!2011200 () Bool)

(assert (=> b!4745386 (=> (not res!2011200) (not e!2959938))))

(declare-fun contains!16417 (ListMap!5401 K!14335) Bool)

(assert (=> b!4745386 (= res!2011200 (contains!16417 lt!1908178 key!4653))))

(assert (=> b!4745386 (= lt!1908178 (extractMap!2100 (toList!6038 lm!2023)))))

(declare-fun e!2959934 () Bool)

(declare-fun b!4745387 () Bool)

(declare-fun tp_is_empty!31589 () Bool)

(declare-fun tp!1349487 () Bool)

(declare-fun tp_is_empty!31591 () Bool)

(assert (=> b!4745387 (= e!2959934 (and tp_is_empty!31589 tp_is_empty!31591 tp!1349487))))

(declare-fun b!4745388 () Bool)

(declare-fun res!2011209 () Bool)

(assert (=> b!4745388 (=> (not res!2011209) (not e!2959936))))

(declare-fun noDuplicateKeys!2074 (List!53117) Bool)

(assert (=> b!4745388 (= res!2011209 (noDuplicateKeys!2074 newBucket!218))))

(declare-fun b!4745389 () Bool)

(declare-fun res!2011205 () Bool)

(assert (=> b!4745389 (=> (not res!2011205) (not e!2959936))))

(assert (=> b!4745389 (= res!2011205 (noDuplicateKeys!2074 oldBucket!34))))

(declare-fun tp!1349489 () Bool)

(declare-fun e!2959937 () Bool)

(declare-fun b!4745380 () Bool)

(assert (=> b!4745380 (= e!2959937 (and tp_is_empty!31589 tp_is_empty!31591 tp!1349489))))

(declare-fun res!2011212 () Bool)

(assert (=> start!484472 (=> (not res!2011212) (not e!2959936))))

(assert (=> start!484472 (= res!2011212 (forall!11709 (toList!6038 lm!2023) lambda!220124))))

(assert (=> start!484472 e!2959936))

(declare-fun e!2959933 () Bool)

(declare-fun inv!68209 (ListLongMap!4567) Bool)

(assert (=> start!484472 (and (inv!68209 lm!2023) e!2959933)))

(assert (=> start!484472 tp_is_empty!31589))

(assert (=> start!484472 e!2959934))

(assert (=> start!484472 true))

(assert (=> start!484472 e!2959937))

(declare-fun b!4745390 () Bool)

(declare-fun tp!1349488 () Bool)

(assert (=> b!4745390 (= e!2959933 tp!1349488)))

(declare-fun b!4745391 () Bool)

(declare-fun contains!16418 (ListLongMap!4567 (_ BitVec 64)) Bool)

(assert (=> b!4745391 (= e!2959935 (contains!16418 lm!2023 lt!1908179))))

(declare-fun b!4745392 () Bool)

(declare-fun res!2011206 () Bool)

(assert (=> b!4745392 (=> (not res!2011206) (not e!2959931))))

(assert (=> b!4745392 (= res!2011206 (allKeysSameHash!1900 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4745393 () Bool)

(declare-fun res!2011203 () Bool)

(assert (=> b!4745393 (=> (not res!2011203) (not e!2959931))))

(assert (=> b!4745393 (= res!2011203 ((_ is Cons!52994) (toList!6038 lm!2023)))))

(assert (= (and start!484472 res!2011212) b!4745389))

(assert (= (and b!4745389 res!2011205) b!4745388))

(assert (= (and b!4745388 res!2011209) b!4745384))

(assert (= (and b!4745384 res!2011201) b!4745378))

(assert (= (and b!4745378 res!2011213) b!4745386))

(assert (= (and b!4745386 res!2011200) b!4745381))

(assert (= (and b!4745381 res!2011202) b!4745392))

(assert (= (and b!4745392 res!2011206) b!4745383))

(assert (= (and b!4745383 res!2011211) b!4745382))

(assert (= (and b!4745382 res!2011208) b!4745393))

(assert (= (and b!4745393 res!2011203) b!4745385))

(assert (= (and b!4745385 res!2011204) b!4745377))

(assert (= (and b!4745385 (not res!2011210)) b!4745379))

(assert (= (and b!4745379 (not res!2011207)) b!4745391))

(assert (= start!484472 b!4745390))

(assert (= (and start!484472 ((_ is Cons!52993) oldBucket!34)) b!4745387))

(assert (= (and start!484472 ((_ is Cons!52993) newBucket!218)) b!4745380))

(declare-fun m!5702191 () Bool)

(assert (=> b!4745392 m!5702191))

(declare-fun m!5702193 () Bool)

(assert (=> b!4745377 m!5702193))

(assert (=> b!4745377 m!5702193))

(declare-fun m!5702195 () Bool)

(assert (=> b!4745377 m!5702195))

(declare-fun m!5702197 () Bool)

(assert (=> b!4745386 m!5702197))

(declare-fun m!5702199 () Bool)

(assert (=> b!4745386 m!5702199))

(declare-fun m!5702201 () Bool)

(assert (=> b!4745384 m!5702201))

(declare-fun m!5702203 () Bool)

(assert (=> b!4745382 m!5702203))

(declare-fun m!5702205 () Bool)

(assert (=> b!4745379 m!5702205))

(declare-fun m!5702207 () Bool)

(assert (=> b!4745383 m!5702207))

(declare-fun m!5702209 () Bool)

(assert (=> b!4745389 m!5702209))

(declare-fun m!5702211 () Bool)

(assert (=> b!4745391 m!5702211))

(declare-fun m!5702213 () Bool)

(assert (=> b!4745378 m!5702213))

(declare-fun m!5702215 () Bool)

(assert (=> b!4745381 m!5702215))

(assert (=> start!484472 m!5702205))

(declare-fun m!5702217 () Bool)

(assert (=> start!484472 m!5702217))

(declare-fun m!5702219 () Bool)

(assert (=> b!4745388 m!5702219))

(declare-fun m!5702221 () Bool)

(assert (=> b!4745385 m!5702221))

(check-sat (not b!4745378) (not b!4745392) (not b!4745382) (not b!4745389) (not b!4745385) (not b!4745380) (not b!4745384) tp_is_empty!31589 (not b!4745381) (not b!4745390) (not b!4745379) (not b!4745388) tp_is_empty!31591 (not b!4745386) (not start!484472) (not b!4745383) (not b!4745377) (not b!4745387) (not b!4745391))
(check-sat)
(get-model)

(declare-fun d!1516387 () Bool)

(declare-fun tail!9153 (List!53118) List!53118)

(assert (=> d!1516387 (= (tail!9151 lm!2023) (ListLongMap!4568 (tail!9153 (toList!6038 lm!2023))))))

(declare-fun bs!1137883 () Bool)

(assert (= bs!1137883 d!1516387))

(declare-fun m!5702223 () Bool)

(assert (=> bs!1137883 m!5702223))

(assert (=> b!4745385 d!1516387))

(declare-fun b!4745402 () Bool)

(declare-fun e!2959944 () List!53117)

(assert (=> b!4745402 (= e!2959944 (t!360425 oldBucket!34))))

(declare-fun b!4745405 () Bool)

(declare-fun e!2959943 () List!53117)

(assert (=> b!4745405 (= e!2959943 Nil!52993)))

(declare-fun b!4745404 () Bool)

(assert (=> b!4745404 (= e!2959943 (Cons!52993 (h!59384 oldBucket!34) (removePairForKey!1669 (t!360425 oldBucket!34) key!4653)))))

(declare-fun b!4745403 () Bool)

(assert (=> b!4745403 (= e!2959944 e!2959943)))

(declare-fun c!810523 () Bool)

(assert (=> b!4745403 (= c!810523 ((_ is Cons!52993) oldBucket!34))))

(declare-fun d!1516389 () Bool)

(declare-fun lt!1908182 () List!53117)

(declare-fun containsKey!3504 (List!53117 K!14335) Bool)

(assert (=> d!1516389 (not (containsKey!3504 lt!1908182 key!4653))))

(assert (=> d!1516389 (= lt!1908182 e!2959944)))

(declare-fun c!810522 () Bool)

(assert (=> d!1516389 (= c!810522 (and ((_ is Cons!52993) oldBucket!34) (= (_1!30639 (h!59384 oldBucket!34)) key!4653)))))

(assert (=> d!1516389 (noDuplicateKeys!2074 oldBucket!34)))

(assert (=> d!1516389 (= (removePairForKey!1669 oldBucket!34 key!4653) lt!1908182)))

(assert (= (and d!1516389 c!810522) b!4745402))

(assert (= (and d!1516389 (not c!810522)) b!4745403))

(assert (= (and b!4745403 c!810523) b!4745404))

(assert (= (and b!4745403 (not c!810523)) b!4745405))

(declare-fun m!5702225 () Bool)

(assert (=> b!4745404 m!5702225))

(declare-fun m!5702227 () Bool)

(assert (=> d!1516389 m!5702227))

(assert (=> d!1516389 m!5702209))

(assert (=> b!4745384 d!1516389))

(declare-fun d!1516391 () Bool)

(declare-fun res!2011218 () Bool)

(declare-fun e!2959949 () Bool)

(assert (=> d!1516391 (=> res!2011218 e!2959949)))

(assert (=> d!1516391 (= res!2011218 ((_ is Nil!52994) (toList!6038 lm!2023)))))

(assert (=> d!1516391 (= (forall!11709 (toList!6038 lm!2023) lambda!220124) e!2959949)))

(declare-fun b!4745410 () Bool)

(declare-fun e!2959950 () Bool)

(assert (=> b!4745410 (= e!2959949 e!2959950)))

(declare-fun res!2011219 () Bool)

(assert (=> b!4745410 (=> (not res!2011219) (not e!2959950))))

(declare-fun dynLambda!21885 (Int tuple2!54692) Bool)

(assert (=> b!4745410 (= res!2011219 (dynLambda!21885 lambda!220124 (h!59385 (toList!6038 lm!2023))))))

(declare-fun b!4745411 () Bool)

(assert (=> b!4745411 (= e!2959950 (forall!11709 (t!360426 (toList!6038 lm!2023)) lambda!220124))))

(assert (= (and d!1516391 (not res!2011218)) b!4745410))

(assert (= (and b!4745410 res!2011219) b!4745411))

(declare-fun b_lambda!182685 () Bool)

(assert (=> (not b_lambda!182685) (not b!4745410)))

(declare-fun m!5702229 () Bool)

(assert (=> b!4745410 m!5702229))

(declare-fun m!5702231 () Bool)

(assert (=> b!4745411 m!5702231))

(assert (=> start!484472 d!1516391))

(declare-fun d!1516395 () Bool)

(declare-fun isStrictlySorted!792 (List!53118) Bool)

(assert (=> d!1516395 (= (inv!68209 lm!2023) (isStrictlySorted!792 (toList!6038 lm!2023)))))

(declare-fun bs!1137884 () Bool)

(assert (= bs!1137884 d!1516395))

(declare-fun m!5702237 () Bool)

(assert (=> bs!1137884 m!5702237))

(assert (=> start!484472 d!1516395))

(declare-fun d!1516401 () Bool)

(declare-fun res!2011230 () Bool)

(declare-fun e!2959967 () Bool)

(assert (=> d!1516401 (=> res!2011230 e!2959967)))

(assert (=> d!1516401 (= res!2011230 (not ((_ is Cons!52993) newBucket!218)))))

(assert (=> d!1516401 (= (noDuplicateKeys!2074 newBucket!218) e!2959967)))

(declare-fun b!4745434 () Bool)

(declare-fun e!2959968 () Bool)

(assert (=> b!4745434 (= e!2959967 e!2959968)))

(declare-fun res!2011231 () Bool)

(assert (=> b!4745434 (=> (not res!2011231) (not e!2959968))))

(assert (=> b!4745434 (= res!2011231 (not (containsKey!3504 (t!360425 newBucket!218) (_1!30639 (h!59384 newBucket!218)))))))

(declare-fun b!4745435 () Bool)

(assert (=> b!4745435 (= e!2959968 (noDuplicateKeys!2074 (t!360425 newBucket!218)))))

(assert (= (and d!1516401 (not res!2011230)) b!4745434))

(assert (= (and b!4745434 res!2011231) b!4745435))

(declare-fun m!5702243 () Bool)

(assert (=> b!4745434 m!5702243))

(declare-fun m!5702245 () Bool)

(assert (=> b!4745435 m!5702245))

(assert (=> b!4745388 d!1516401))

(declare-fun b!4745535 () Bool)

(assert (=> b!4745535 true))

(declare-fun bs!1137908 () Bool)

(declare-fun b!4745536 () Bool)

(assert (= bs!1137908 (and b!4745536 b!4745535)))

(declare-fun lambda!220197 () Int)

(declare-fun lambda!220196 () Int)

(assert (=> bs!1137908 (= lambda!220197 lambda!220196)))

(assert (=> b!4745536 true))

(declare-fun lt!1908344 () ListMap!5401)

(declare-fun lambda!220198 () Int)

(assert (=> bs!1137908 (= (= lt!1908344 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220198 lambda!220196))))

(assert (=> b!4745536 (= (= lt!1908344 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220198 lambda!220197))))

(assert (=> b!4745536 true))

(declare-fun bs!1137909 () Bool)

(declare-fun d!1516405 () Bool)

(assert (= bs!1137909 (and d!1516405 b!4745535)))

(declare-fun lt!1908333 () ListMap!5401)

(declare-fun lambda!220199 () Int)

(assert (=> bs!1137909 (= (= lt!1908333 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220199 lambda!220196))))

(declare-fun bs!1137910 () Bool)

(assert (= bs!1137910 (and d!1516405 b!4745536)))

(assert (=> bs!1137910 (= (= lt!1908333 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220199 lambda!220197))))

(assert (=> bs!1137910 (= (= lt!1908333 lt!1908344) (= lambda!220199 lambda!220198))))

(assert (=> d!1516405 true))

(declare-fun b!4745532 () Bool)

(declare-fun res!2011268 () Bool)

(declare-fun e!2960027 () Bool)

(assert (=> b!4745532 (=> (not res!2011268) (not e!2960027))))

(declare-fun forall!11711 (List!53117 Int) Bool)

(assert (=> b!4745532 (= res!2011268 (forall!11711 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) lambda!220199))))

(declare-fun bm!332113 () Bool)

(declare-datatypes ((Unit!134239 0))(
  ( (Unit!134240) )
))
(declare-fun call!332118 () Unit!134239)

(declare-fun lemmaContainsAllItsOwnKeys!840 (ListMap!5401) Unit!134239)

(assert (=> bm!332113 (= call!332118 (lemmaContainsAllItsOwnKeys!840 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))))))

(declare-fun b!4745533 () Bool)

(declare-fun e!2960028 () Bool)

(assert (=> b!4745533 (= e!2960028 (forall!11711 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) lambda!220198))))

(declare-fun b!4745534 () Bool)

(declare-fun invariantList!1555 (List!53117) Bool)

(assert (=> b!4745534 (= e!2960027 (invariantList!1555 (toList!6037 lt!1908333)))))

(declare-fun e!2960029 () ListMap!5401)

(assert (=> b!4745535 (= e!2960029 (extractMap!2100 (t!360426 (toList!6038 lm!2023))))))

(declare-fun lt!1908332 () Unit!134239)

(assert (=> b!4745535 (= lt!1908332 call!332118)))

(declare-fun call!332120 () Bool)

(assert (=> b!4745535 call!332120))

(declare-fun lt!1908335 () Unit!134239)

(assert (=> b!4745535 (= lt!1908335 lt!1908332)))

(declare-fun call!332119 () Bool)

(assert (=> b!4745535 call!332119))

(declare-fun lt!1908350 () Unit!134239)

(declare-fun Unit!134241 () Unit!134239)

(assert (=> b!4745535 (= lt!1908350 Unit!134241)))

(declare-fun bm!332115 () Bool)

(declare-fun c!810551 () Bool)

(assert (=> bm!332115 (= call!332119 (forall!11711 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (ite c!810551 lambda!220196 lambda!220197)))))

(assert (=> b!4745536 (= e!2960029 lt!1908344)))

(declare-fun lt!1908331 () ListMap!5401)

(declare-fun +!2318 (ListMap!5401 tuple2!54690) ListMap!5401)

(assert (=> b!4745536 (= lt!1908331 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(assert (=> b!4745536 (= lt!1908344 (addToMapMapFromBucket!1504 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))) (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun lt!1908334 () Unit!134239)

(assert (=> b!4745536 (= lt!1908334 call!332118)))

(assert (=> b!4745536 call!332119))

(declare-fun lt!1908351 () Unit!134239)

(assert (=> b!4745536 (= lt!1908351 lt!1908334)))

(assert (=> b!4745536 (forall!11711 (toList!6037 lt!1908331) lambda!220198)))

(declare-fun lt!1908339 () Unit!134239)

(declare-fun Unit!134242 () Unit!134239)

(assert (=> b!4745536 (= lt!1908339 Unit!134242)))

(assert (=> b!4745536 (forall!11711 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))) lambda!220198)))

(declare-fun lt!1908338 () Unit!134239)

(declare-fun Unit!134243 () Unit!134239)

(assert (=> b!4745536 (= lt!1908338 Unit!134243)))

(declare-fun lt!1908346 () Unit!134239)

(declare-fun Unit!134244 () Unit!134239)

(assert (=> b!4745536 (= lt!1908346 Unit!134244)))

(declare-fun lt!1908343 () Unit!134239)

(declare-fun forallContained!3745 (List!53117 Int tuple2!54690) Unit!134239)

(assert (=> b!4745536 (= lt!1908343 (forallContained!3745 (toList!6037 lt!1908331) lambda!220198 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(assert (=> b!4745536 (contains!16417 lt!1908331 (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(declare-fun lt!1908336 () Unit!134239)

(declare-fun Unit!134245 () Unit!134239)

(assert (=> b!4745536 (= lt!1908336 Unit!134245)))

(assert (=> b!4745536 (contains!16417 lt!1908344 (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(declare-fun lt!1908341 () Unit!134239)

(declare-fun Unit!134246 () Unit!134239)

(assert (=> b!4745536 (= lt!1908341 Unit!134246)))

(assert (=> b!4745536 call!332120))

(declare-fun lt!1908347 () Unit!134239)

(declare-fun Unit!134247 () Unit!134239)

(assert (=> b!4745536 (= lt!1908347 Unit!134247)))

(assert (=> b!4745536 (forall!11711 (toList!6037 lt!1908331) lambda!220198)))

(declare-fun lt!1908342 () Unit!134239)

(declare-fun Unit!134248 () Unit!134239)

(assert (=> b!4745536 (= lt!1908342 Unit!134248)))

(declare-fun lt!1908340 () Unit!134239)

(declare-fun Unit!134249 () Unit!134239)

(assert (=> b!4745536 (= lt!1908340 Unit!134249)))

(declare-fun lt!1908348 () Unit!134239)

(declare-fun addForallContainsKeyThenBeforeAdding!839 (ListMap!5401 ListMap!5401 K!14335 V!14581) Unit!134239)

(assert (=> b!4745536 (= lt!1908348 (addForallContainsKeyThenBeforeAdding!839 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) lt!1908344 (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (_2!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(assert (=> b!4745536 (forall!11711 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) lambda!220198)))

(declare-fun lt!1908337 () Unit!134239)

(assert (=> b!4745536 (= lt!1908337 lt!1908348)))

(assert (=> b!4745536 (forall!11711 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) lambda!220198)))

(declare-fun lt!1908349 () Unit!134239)

(declare-fun Unit!134250 () Unit!134239)

(assert (=> b!4745536 (= lt!1908349 Unit!134250)))

(declare-fun res!2011269 () Bool)

(assert (=> b!4745536 (= res!2011269 (forall!11711 (_2!30640 (h!59385 (toList!6038 lm!2023))) lambda!220198))))

(assert (=> b!4745536 (=> (not res!2011269) (not e!2960028))))

(assert (=> b!4745536 e!2960028))

(declare-fun lt!1908345 () Unit!134239)

(declare-fun Unit!134251 () Unit!134239)

(assert (=> b!4745536 (= lt!1908345 Unit!134251)))

(declare-fun bm!332114 () Bool)

(assert (=> bm!332114 (= call!332120 (forall!11711 (ite c!810551 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (_2!30640 (h!59385 (toList!6038 lm!2023)))) (ite c!810551 lambda!220196 lambda!220198)))))

(assert (=> d!1516405 e!2960027))

(declare-fun res!2011267 () Bool)

(assert (=> d!1516405 (=> (not res!2011267) (not e!2960027))))

(assert (=> d!1516405 (= res!2011267 (forall!11711 (_2!30640 (h!59385 (toList!6038 lm!2023))) lambda!220199))))

(assert (=> d!1516405 (= lt!1908333 e!2960029)))

(assert (=> d!1516405 (= c!810551 ((_ is Nil!52993) (_2!30640 (h!59385 (toList!6038 lm!2023)))))))

(assert (=> d!1516405 (noDuplicateKeys!2074 (_2!30640 (h!59385 (toList!6038 lm!2023))))))

(assert (=> d!1516405 (= (addToMapMapFromBucket!1504 (_2!30640 (h!59385 (toList!6038 lm!2023))) (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) lt!1908333)))

(assert (= (and d!1516405 c!810551) b!4745535))

(assert (= (and d!1516405 (not c!810551)) b!4745536))

(assert (= (and b!4745536 res!2011269) b!4745533))

(assert (= (or b!4745535 b!4745536) bm!332113))

(assert (= (or b!4745535 b!4745536) bm!332115))

(assert (= (or b!4745535 b!4745536) bm!332114))

(assert (= (and d!1516405 res!2011267) b!4745532))

(assert (= (and b!4745532 res!2011268) b!4745534))

(declare-fun m!5702343 () Bool)

(assert (=> bm!332115 m!5702343))

(declare-fun m!5702345 () Bool)

(assert (=> bm!332114 m!5702345))

(declare-fun m!5702347 () Bool)

(assert (=> b!4745532 m!5702347))

(declare-fun m!5702349 () Bool)

(assert (=> b!4745533 m!5702349))

(assert (=> bm!332113 m!5702193))

(declare-fun m!5702351 () Bool)

(assert (=> bm!332113 m!5702351))

(declare-fun m!5702353 () Bool)

(assert (=> b!4745536 m!5702353))

(assert (=> b!4745536 m!5702349))

(assert (=> b!4745536 m!5702193))

(declare-fun m!5702355 () Bool)

(assert (=> b!4745536 m!5702355))

(declare-fun m!5702357 () Bool)

(assert (=> b!4745536 m!5702357))

(assert (=> b!4745536 m!5702193))

(declare-fun m!5702359 () Bool)

(assert (=> b!4745536 m!5702359))

(assert (=> b!4745536 m!5702353))

(declare-fun m!5702361 () Bool)

(assert (=> b!4745536 m!5702361))

(declare-fun m!5702363 () Bool)

(assert (=> b!4745536 m!5702363))

(assert (=> b!4745536 m!5702349))

(declare-fun m!5702365 () Bool)

(assert (=> b!4745536 m!5702365))

(declare-fun m!5702367 () Bool)

(assert (=> b!4745536 m!5702367))

(assert (=> b!4745536 m!5702355))

(declare-fun m!5702369 () Bool)

(assert (=> b!4745536 m!5702369))

(declare-fun m!5702371 () Bool)

(assert (=> d!1516405 m!5702371))

(declare-fun m!5702373 () Bool)

(assert (=> d!1516405 m!5702373))

(declare-fun m!5702375 () Bool)

(assert (=> b!4745534 m!5702375))

(assert (=> b!4745377 d!1516405))

(declare-fun bs!1137911 () Bool)

(declare-fun d!1516433 () Bool)

(assert (= bs!1137911 (and d!1516433 start!484472)))

(declare-fun lambda!220202 () Int)

(assert (=> bs!1137911 (= lambda!220202 lambda!220124)))

(declare-fun lt!1908354 () ListMap!5401)

(assert (=> d!1516433 (invariantList!1555 (toList!6037 lt!1908354))))

(declare-fun e!2960032 () ListMap!5401)

(assert (=> d!1516433 (= lt!1908354 e!2960032)))

(declare-fun c!810554 () Bool)

(assert (=> d!1516433 (= c!810554 ((_ is Cons!52994) (t!360426 (toList!6038 lm!2023))))))

(assert (=> d!1516433 (forall!11709 (t!360426 (toList!6038 lm!2023)) lambda!220202)))

(assert (=> d!1516433 (= (extractMap!2100 (t!360426 (toList!6038 lm!2023))) lt!1908354)))

(declare-fun b!4745543 () Bool)

(assert (=> b!4745543 (= e!2960032 (addToMapMapFromBucket!1504 (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023)))) (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))))))

(declare-fun b!4745544 () Bool)

(assert (=> b!4745544 (= e!2960032 (ListMap!5402 Nil!52993))))

(assert (= (and d!1516433 c!810554) b!4745543))

(assert (= (and d!1516433 (not c!810554)) b!4745544))

(declare-fun m!5702377 () Bool)

(assert (=> d!1516433 m!5702377))

(declare-fun m!5702379 () Bool)

(assert (=> d!1516433 m!5702379))

(declare-fun m!5702381 () Bool)

(assert (=> b!4745543 m!5702381))

(assert (=> b!4745543 m!5702381))

(declare-fun m!5702383 () Bool)

(assert (=> b!4745543 m!5702383))

(assert (=> b!4745377 d!1516433))

(declare-fun b!4745563 () Bool)

(declare-datatypes ((List!53120 0))(
  ( (Nil!52996) (Cons!52996 (h!59389 K!14335) (t!360428 List!53120)) )
))
(declare-fun e!2960046 () List!53120)

(declare-fun keys!19079 (ListMap!5401) List!53120)

(assert (=> b!4745563 (= e!2960046 (keys!19079 lt!1908178))))

(declare-fun b!4745564 () Bool)

(assert (=> b!4745564 false))

(declare-fun lt!1908376 () Unit!134239)

(declare-fun lt!1908374 () Unit!134239)

(assert (=> b!4745564 (= lt!1908376 lt!1908374)))

(declare-fun containsKey!3506 (List!53117 K!14335) Bool)

(assert (=> b!4745564 (containsKey!3506 (toList!6037 lt!1908178) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!993 (List!53117 K!14335) Unit!134239)

(assert (=> b!4745564 (= lt!1908374 (lemmaInGetKeysListThenContainsKey!993 (toList!6037 lt!1908178) key!4653))))

(declare-fun e!2960049 () Unit!134239)

(declare-fun Unit!134252 () Unit!134239)

(assert (=> b!4745564 (= e!2960049 Unit!134252)))

(declare-fun b!4745565 () Bool)

(declare-fun e!2960048 () Unit!134239)

(assert (=> b!4745565 (= e!2960048 e!2960049)))

(declare-fun c!810562 () Bool)

(declare-fun call!332123 () Bool)

(assert (=> b!4745565 (= c!810562 call!332123)))

(declare-fun bm!332118 () Bool)

(declare-fun contains!16420 (List!53120 K!14335) Bool)

(assert (=> bm!332118 (= call!332123 (contains!16420 e!2960046 key!4653))))

(declare-fun c!810563 () Bool)

(declare-fun c!810561 () Bool)

(assert (=> bm!332118 (= c!810563 c!810561)))

(declare-fun b!4745567 () Bool)

(declare-fun lt!1908377 () Unit!134239)

(assert (=> b!4745567 (= e!2960048 lt!1908377)))

(declare-fun lt!1908373 () Unit!134239)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1931 (List!53117 K!14335) Unit!134239)

(assert (=> b!4745567 (= lt!1908373 (lemmaContainsKeyImpliesGetValueByKeyDefined!1931 (toList!6037 lt!1908178) key!4653))))

(declare-datatypes ((Option!12490 0))(
  ( (None!12489) (Some!12489 (v!47178 V!14581)) )
))
(declare-fun isDefined!9744 (Option!12490) Bool)

(declare-fun getValueByKey!2040 (List!53117 K!14335) Option!12490)

(assert (=> b!4745567 (isDefined!9744 (getValueByKey!2040 (toList!6037 lt!1908178) key!4653))))

(declare-fun lt!1908372 () Unit!134239)

(assert (=> b!4745567 (= lt!1908372 lt!1908373)))

(declare-fun lemmaInListThenGetKeysListContains!989 (List!53117 K!14335) Unit!134239)

(assert (=> b!4745567 (= lt!1908377 (lemmaInListThenGetKeysListContains!989 (toList!6037 lt!1908178) key!4653))))

(assert (=> b!4745567 call!332123))

(declare-fun b!4745566 () Bool)

(declare-fun e!2960045 () Bool)

(assert (=> b!4745566 (= e!2960045 (not (contains!16420 (keys!19079 lt!1908178) key!4653)))))

(declare-fun d!1516435 () Bool)

(declare-fun e!2960047 () Bool)

(assert (=> d!1516435 e!2960047))

(declare-fun res!2011278 () Bool)

(assert (=> d!1516435 (=> res!2011278 e!2960047)))

(assert (=> d!1516435 (= res!2011278 e!2960045)))

(declare-fun res!2011277 () Bool)

(assert (=> d!1516435 (=> (not res!2011277) (not e!2960045))))

(declare-fun lt!1908375 () Bool)

(assert (=> d!1516435 (= res!2011277 (not lt!1908375))))

(declare-fun lt!1908378 () Bool)

(assert (=> d!1516435 (= lt!1908375 lt!1908378)))

(declare-fun lt!1908371 () Unit!134239)

(assert (=> d!1516435 (= lt!1908371 e!2960048)))

(assert (=> d!1516435 (= c!810561 lt!1908378)))

(assert (=> d!1516435 (= lt!1908378 (containsKey!3506 (toList!6037 lt!1908178) key!4653))))

(assert (=> d!1516435 (= (contains!16417 lt!1908178 key!4653) lt!1908375)))

(declare-fun b!4745568 () Bool)

(declare-fun e!2960050 () Bool)

(assert (=> b!4745568 (= e!2960047 e!2960050)))

(declare-fun res!2011276 () Bool)

(assert (=> b!4745568 (=> (not res!2011276) (not e!2960050))))

(assert (=> b!4745568 (= res!2011276 (isDefined!9744 (getValueByKey!2040 (toList!6037 lt!1908178) key!4653)))))

(declare-fun b!4745569 () Bool)

(assert (=> b!4745569 (= e!2960050 (contains!16420 (keys!19079 lt!1908178) key!4653))))

(declare-fun b!4745570 () Bool)

(declare-fun getKeysList!994 (List!53117) List!53120)

(assert (=> b!4745570 (= e!2960046 (getKeysList!994 (toList!6037 lt!1908178)))))

(declare-fun b!4745571 () Bool)

(declare-fun Unit!134253 () Unit!134239)

(assert (=> b!4745571 (= e!2960049 Unit!134253)))

(assert (= (and d!1516435 c!810561) b!4745567))

(assert (= (and d!1516435 (not c!810561)) b!4745565))

(assert (= (and b!4745565 c!810562) b!4745564))

(assert (= (and b!4745565 (not c!810562)) b!4745571))

(assert (= (or b!4745567 b!4745565) bm!332118))

(assert (= (and bm!332118 c!810563) b!4745570))

(assert (= (and bm!332118 (not c!810563)) b!4745563))

(assert (= (and d!1516435 res!2011277) b!4745566))

(assert (= (and d!1516435 (not res!2011278)) b!4745568))

(assert (= (and b!4745568 res!2011276) b!4745569))

(declare-fun m!5702385 () Bool)

(assert (=> b!4745567 m!5702385))

(declare-fun m!5702387 () Bool)

(assert (=> b!4745567 m!5702387))

(assert (=> b!4745567 m!5702387))

(declare-fun m!5702389 () Bool)

(assert (=> b!4745567 m!5702389))

(declare-fun m!5702391 () Bool)

(assert (=> b!4745567 m!5702391))

(assert (=> b!4745568 m!5702387))

(assert (=> b!4745568 m!5702387))

(assert (=> b!4745568 m!5702389))

(declare-fun m!5702393 () Bool)

(assert (=> b!4745564 m!5702393))

(declare-fun m!5702395 () Bool)

(assert (=> b!4745564 m!5702395))

(declare-fun m!5702397 () Bool)

(assert (=> b!4745570 m!5702397))

(assert (=> d!1516435 m!5702393))

(declare-fun m!5702399 () Bool)

(assert (=> b!4745569 m!5702399))

(assert (=> b!4745569 m!5702399))

(declare-fun m!5702401 () Bool)

(assert (=> b!4745569 m!5702401))

(declare-fun m!5702403 () Bool)

(assert (=> bm!332118 m!5702403))

(assert (=> b!4745566 m!5702399))

(assert (=> b!4745566 m!5702399))

(assert (=> b!4745566 m!5702401))

(assert (=> b!4745563 m!5702399))

(assert (=> b!4745386 d!1516435))

(declare-fun bs!1137912 () Bool)

(declare-fun d!1516437 () Bool)

(assert (= bs!1137912 (and d!1516437 start!484472)))

(declare-fun lambda!220203 () Int)

(assert (=> bs!1137912 (= lambda!220203 lambda!220124)))

(declare-fun bs!1137913 () Bool)

(assert (= bs!1137913 (and d!1516437 d!1516433)))

(assert (=> bs!1137913 (= lambda!220203 lambda!220202)))

(declare-fun lt!1908379 () ListMap!5401)

(assert (=> d!1516437 (invariantList!1555 (toList!6037 lt!1908379))))

(declare-fun e!2960051 () ListMap!5401)

(assert (=> d!1516437 (= lt!1908379 e!2960051)))

(declare-fun c!810564 () Bool)

(assert (=> d!1516437 (= c!810564 ((_ is Cons!52994) (toList!6038 lm!2023)))))

(assert (=> d!1516437 (forall!11709 (toList!6038 lm!2023) lambda!220203)))

(assert (=> d!1516437 (= (extractMap!2100 (toList!6038 lm!2023)) lt!1908379)))

(declare-fun b!4745572 () Bool)

(assert (=> b!4745572 (= e!2960051 (addToMapMapFromBucket!1504 (_2!30640 (h!59385 (toList!6038 lm!2023))) (extractMap!2100 (t!360426 (toList!6038 lm!2023)))))))

(declare-fun b!4745573 () Bool)

(assert (=> b!4745573 (= e!2960051 (ListMap!5402 Nil!52993))))

(assert (= (and d!1516437 c!810564) b!4745572))

(assert (= (and d!1516437 (not c!810564)) b!4745573))

(declare-fun m!5702405 () Bool)

(assert (=> d!1516437 m!5702405))

(declare-fun m!5702407 () Bool)

(assert (=> d!1516437 m!5702407))

(assert (=> b!4745572 m!5702193))

(assert (=> b!4745572 m!5702193))

(assert (=> b!4745572 m!5702195))

(assert (=> b!4745386 d!1516437))

(declare-fun d!1516439 () Bool)

(declare-fun e!2960057 () Bool)

(assert (=> d!1516439 e!2960057))

(declare-fun res!2011281 () Bool)

(assert (=> d!1516439 (=> res!2011281 e!2960057)))

(declare-fun lt!1908388 () Bool)

(assert (=> d!1516439 (= res!2011281 (not lt!1908388))))

(declare-fun lt!1908391 () Bool)

(assert (=> d!1516439 (= lt!1908388 lt!1908391)))

(declare-fun lt!1908390 () Unit!134239)

(declare-fun e!2960056 () Unit!134239)

(assert (=> d!1516439 (= lt!1908390 e!2960056)))

(declare-fun c!810567 () Bool)

(assert (=> d!1516439 (= c!810567 lt!1908391)))

(declare-fun containsKey!3507 (List!53118 (_ BitVec 64)) Bool)

(assert (=> d!1516439 (= lt!1908391 (containsKey!3507 (toList!6038 lm!2023) lt!1908179))))

(assert (=> d!1516439 (= (contains!16418 lm!2023 lt!1908179) lt!1908388)))

(declare-fun b!4745580 () Bool)

(declare-fun lt!1908389 () Unit!134239)

(assert (=> b!4745580 (= e!2960056 lt!1908389)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1932 (List!53118 (_ BitVec 64)) Unit!134239)

(assert (=> b!4745580 (= lt!1908389 (lemmaContainsKeyImpliesGetValueByKeyDefined!1932 (toList!6038 lm!2023) lt!1908179))))

(declare-datatypes ((Option!12491 0))(
  ( (None!12490) (Some!12490 (v!47179 List!53117)) )
))
(declare-fun isDefined!9745 (Option!12491) Bool)

(declare-fun getValueByKey!2041 (List!53118 (_ BitVec 64)) Option!12491)

(assert (=> b!4745580 (isDefined!9745 (getValueByKey!2041 (toList!6038 lm!2023) lt!1908179))))

(declare-fun b!4745581 () Bool)

(declare-fun Unit!134254 () Unit!134239)

(assert (=> b!4745581 (= e!2960056 Unit!134254)))

(declare-fun b!4745582 () Bool)

(assert (=> b!4745582 (= e!2960057 (isDefined!9745 (getValueByKey!2041 (toList!6038 lm!2023) lt!1908179)))))

(assert (= (and d!1516439 c!810567) b!4745580))

(assert (= (and d!1516439 (not c!810567)) b!4745581))

(assert (= (and d!1516439 (not res!2011281)) b!4745582))

(declare-fun m!5702409 () Bool)

(assert (=> d!1516439 m!5702409))

(declare-fun m!5702411 () Bool)

(assert (=> b!4745580 m!5702411))

(declare-fun m!5702413 () Bool)

(assert (=> b!4745580 m!5702413))

(assert (=> b!4745580 m!5702413))

(declare-fun m!5702415 () Bool)

(assert (=> b!4745580 m!5702415))

(assert (=> b!4745582 m!5702413))

(assert (=> b!4745582 m!5702413))

(assert (=> b!4745582 m!5702415))

(assert (=> b!4745391 d!1516439))

(assert (=> b!4745379 d!1516391))

(declare-fun d!1516441 () Bool)

(declare-fun res!2011282 () Bool)

(declare-fun e!2960058 () Bool)

(assert (=> d!1516441 (=> res!2011282 e!2960058)))

(assert (=> d!1516441 (= res!2011282 (not ((_ is Cons!52993) oldBucket!34)))))

(assert (=> d!1516441 (= (noDuplicateKeys!2074 oldBucket!34) e!2960058)))

(declare-fun b!4745583 () Bool)

(declare-fun e!2960059 () Bool)

(assert (=> b!4745583 (= e!2960058 e!2960059)))

(declare-fun res!2011283 () Bool)

(assert (=> b!4745583 (=> (not res!2011283) (not e!2960059))))

(assert (=> b!4745583 (= res!2011283 (not (containsKey!3504 (t!360425 oldBucket!34) (_1!30639 (h!59384 oldBucket!34)))))))

(declare-fun b!4745584 () Bool)

(assert (=> b!4745584 (= e!2960059 (noDuplicateKeys!2074 (t!360425 oldBucket!34)))))

(assert (= (and d!1516441 (not res!2011282)) b!4745583))

(assert (= (and b!4745583 res!2011283) b!4745584))

(declare-fun m!5702417 () Bool)

(assert (=> b!4745583 m!5702417))

(declare-fun m!5702419 () Bool)

(assert (=> b!4745584 m!5702419))

(assert (=> b!4745389 d!1516441))

(declare-fun bs!1137914 () Bool)

(declare-fun d!1516443 () Bool)

(assert (= bs!1137914 (and d!1516443 b!4745535)))

(declare-fun lambda!220206 () Int)

(assert (=> bs!1137914 (not (= lambda!220206 lambda!220196))))

(declare-fun bs!1137915 () Bool)

(assert (= bs!1137915 (and d!1516443 b!4745536)))

(assert (=> bs!1137915 (not (= lambda!220206 lambda!220197))))

(assert (=> bs!1137915 (not (= lambda!220206 lambda!220198))))

(declare-fun bs!1137916 () Bool)

(assert (= bs!1137916 (and d!1516443 d!1516405)))

(assert (=> bs!1137916 (not (= lambda!220206 lambda!220199))))

(assert (=> d!1516443 true))

(assert (=> d!1516443 true))

(assert (=> d!1516443 (= (allKeysSameHash!1900 oldBucket!34 hash!405 hashF!1323) (forall!11711 oldBucket!34 lambda!220206))))

(declare-fun bs!1137917 () Bool)

(assert (= bs!1137917 d!1516443))

(declare-fun m!5702421 () Bool)

(assert (=> bs!1137917 m!5702421))

(assert (=> b!4745378 d!1516443))

(declare-fun bs!1137918 () Bool)

(declare-fun d!1516445 () Bool)

(assert (= bs!1137918 (and d!1516445 start!484472)))

(declare-fun lambda!220209 () Int)

(assert (=> bs!1137918 (not (= lambda!220209 lambda!220124))))

(declare-fun bs!1137919 () Bool)

(assert (= bs!1137919 (and d!1516445 d!1516433)))

(assert (=> bs!1137919 (not (= lambda!220209 lambda!220202))))

(declare-fun bs!1137920 () Bool)

(assert (= bs!1137920 (and d!1516445 d!1516437)))

(assert (=> bs!1137920 (not (= lambda!220209 lambda!220203))))

(assert (=> d!1516445 true))

(assert (=> d!1516445 (= (allKeysSameHashInMap!1988 lm!2023 hashF!1323) (forall!11709 (toList!6038 lm!2023) lambda!220209))))

(declare-fun bs!1137921 () Bool)

(assert (= bs!1137921 d!1516445))

(declare-fun m!5702423 () Bool)

(assert (=> bs!1137921 m!5702423))

(assert (=> b!4745383 d!1516445))

(declare-fun d!1516447 () Bool)

(assert (=> d!1516447 (= (head!10346 (toList!6038 lm!2023)) (h!59385 (toList!6038 lm!2023)))))

(assert (=> b!4745382 d!1516447))

(declare-fun bs!1137922 () Bool)

(declare-fun d!1516449 () Bool)

(assert (= bs!1137922 (and d!1516449 b!4745535)))

(declare-fun lambda!220210 () Int)

(assert (=> bs!1137922 (not (= lambda!220210 lambda!220196))))

(declare-fun bs!1137923 () Bool)

(assert (= bs!1137923 (and d!1516449 d!1516443)))

(assert (=> bs!1137923 (= lambda!220210 lambda!220206)))

(declare-fun bs!1137924 () Bool)

(assert (= bs!1137924 (and d!1516449 d!1516405)))

(assert (=> bs!1137924 (not (= lambda!220210 lambda!220199))))

(declare-fun bs!1137925 () Bool)

(assert (= bs!1137925 (and d!1516449 b!4745536)))

(assert (=> bs!1137925 (not (= lambda!220210 lambda!220197))))

(assert (=> bs!1137925 (not (= lambda!220210 lambda!220198))))

(assert (=> d!1516449 true))

(assert (=> d!1516449 true))

(assert (=> d!1516449 (= (allKeysSameHash!1900 newBucket!218 hash!405 hashF!1323) (forall!11711 newBucket!218 lambda!220210))))

(declare-fun bs!1137926 () Bool)

(assert (= bs!1137926 d!1516449))

(declare-fun m!5702425 () Bool)

(assert (=> bs!1137926 m!5702425))

(assert (=> b!4745392 d!1516449))

(declare-fun d!1516451 () Bool)

(declare-fun hash!4492 (Hashable!6443 K!14335) (_ BitVec 64))

(assert (=> d!1516451 (= (hash!4490 hashF!1323 key!4653) (hash!4492 hashF!1323 key!4653))))

(declare-fun bs!1137927 () Bool)

(assert (= bs!1137927 d!1516451))

(declare-fun m!5702427 () Bool)

(assert (=> bs!1137927 m!5702427))

(assert (=> b!4745381 d!1516451))

(declare-fun tp!1349502 () Bool)

(declare-fun e!2960062 () Bool)

(declare-fun b!4745595 () Bool)

(assert (=> b!4745595 (= e!2960062 (and tp_is_empty!31589 tp_is_empty!31591 tp!1349502))))

(assert (=> b!4745380 (= tp!1349489 e!2960062)))

(assert (= (and b!4745380 ((_ is Cons!52993) (t!360425 newBucket!218))) b!4745595))

(declare-fun b!4745600 () Bool)

(declare-fun e!2960065 () Bool)

(declare-fun tp!1349507 () Bool)

(declare-fun tp!1349508 () Bool)

(assert (=> b!4745600 (= e!2960065 (and tp!1349507 tp!1349508))))

(assert (=> b!4745390 (= tp!1349488 e!2960065)))

(assert (= (and b!4745390 ((_ is Cons!52994) (toList!6038 lm!2023))) b!4745600))

(declare-fun b!4745601 () Bool)

(declare-fun e!2960066 () Bool)

(declare-fun tp!1349509 () Bool)

(assert (=> b!4745601 (= e!2960066 (and tp_is_empty!31589 tp_is_empty!31591 tp!1349509))))

(assert (=> b!4745387 (= tp!1349487 e!2960066)))

(assert (= (and b!4745387 ((_ is Cons!52993) (t!360425 oldBucket!34))) b!4745601))

(declare-fun b_lambda!182691 () Bool)

(assert (= b_lambda!182685 (or start!484472 b_lambda!182691)))

(declare-fun bs!1137928 () Bool)

(declare-fun d!1516453 () Bool)

(assert (= bs!1137928 (and d!1516453 start!484472)))

(assert (=> bs!1137928 (= (dynLambda!21885 lambda!220124 (h!59385 (toList!6038 lm!2023))) (noDuplicateKeys!2074 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))

(assert (=> bs!1137928 m!5702373))

(assert (=> b!4745410 d!1516453))

(check-sat (not b!4745601) (not b!4745568) (not d!1516443) (not b_lambda!182691) (not d!1516439) (not b!4745533) (not b!4745564) (not b!4745569) (not b!4745584) (not bm!332114) (not b!4745534) (not b!4745563) (not b!4745404) (not b!4745572) (not bs!1137928) (not bm!332118) (not b!4745570) (not b!4745600) (not b!4745411) (not b!4745567) (not b!4745580) (not b!4745435) (not d!1516433) (not d!1516449) (not bm!332115) (not d!1516395) (not b!4745536) (not b!4745582) (not b!4745566) tp_is_empty!31589 (not d!1516451) (not d!1516445) (not d!1516437) (not d!1516405) (not b!4745583) (not d!1516435) (not b!4745543) tp_is_empty!31591 (not bm!332113) (not d!1516387) (not b!4745434) (not d!1516389) (not b!4745532) (not b!4745595))
(check-sat)
(get-model)

(declare-fun b!4745609 () Bool)

(assert (=> b!4745609 true))

(declare-fun d!1516455 () Bool)

(declare-fun e!2960069 () Bool)

(assert (=> d!1516455 e!2960069))

(declare-fun res!2011291 () Bool)

(assert (=> d!1516455 (=> (not res!2011291) (not e!2960069))))

(declare-fun lt!1908394 () List!53120)

(declare-fun noDuplicate!878 (List!53120) Bool)

(assert (=> d!1516455 (= res!2011291 (noDuplicate!878 lt!1908394))))

(assert (=> d!1516455 (= lt!1908394 (getKeysList!994 (toList!6037 lt!1908178)))))

(assert (=> d!1516455 (= (keys!19079 lt!1908178) lt!1908394)))

(declare-fun b!4745608 () Bool)

(declare-fun res!2011290 () Bool)

(assert (=> b!4745608 (=> (not res!2011290) (not e!2960069))))

(declare-fun length!612 (List!53120) Int)

(declare-fun length!613 (List!53117) Int)

(assert (=> b!4745608 (= res!2011290 (= (length!612 lt!1908394) (length!613 (toList!6037 lt!1908178))))))

(declare-fun res!2011292 () Bool)

(assert (=> b!4745609 (=> (not res!2011292) (not e!2960069))))

(declare-fun lambda!220215 () Int)

(declare-fun forall!11712 (List!53120 Int) Bool)

(assert (=> b!4745609 (= res!2011292 (forall!11712 lt!1908394 lambda!220215))))

(declare-fun lambda!220216 () Int)

(declare-fun b!4745610 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9490 (List!53120) (InoxSet K!14335))

(declare-fun map!11728 (List!53117 Int) List!53120)

(assert (=> b!4745610 (= e!2960069 (= (content!9490 lt!1908394) (content!9490 (map!11728 (toList!6037 lt!1908178) lambda!220216))))))

(assert (= (and d!1516455 res!2011291) b!4745608))

(assert (= (and b!4745608 res!2011290) b!4745609))

(assert (= (and b!4745609 res!2011292) b!4745610))

(declare-fun m!5702429 () Bool)

(assert (=> d!1516455 m!5702429))

(assert (=> d!1516455 m!5702397))

(declare-fun m!5702431 () Bool)

(assert (=> b!4745608 m!5702431))

(declare-fun m!5702433 () Bool)

(assert (=> b!4745608 m!5702433))

(declare-fun m!5702435 () Bool)

(assert (=> b!4745609 m!5702435))

(declare-fun m!5702437 () Bool)

(assert (=> b!4745610 m!5702437))

(declare-fun m!5702439 () Bool)

(assert (=> b!4745610 m!5702439))

(assert (=> b!4745610 m!5702439))

(declare-fun m!5702441 () Bool)

(assert (=> b!4745610 m!5702441))

(assert (=> b!4745563 d!1516455))

(declare-fun d!1516457 () Bool)

(declare-fun lt!1908397 () Bool)

(assert (=> d!1516457 (= lt!1908397 (select (content!9490 (keys!19079 lt!1908178)) key!4653))))

(declare-fun e!2960074 () Bool)

(assert (=> d!1516457 (= lt!1908397 e!2960074)))

(declare-fun res!2011297 () Bool)

(assert (=> d!1516457 (=> (not res!2011297) (not e!2960074))))

(assert (=> d!1516457 (= res!2011297 ((_ is Cons!52996) (keys!19079 lt!1908178)))))

(assert (=> d!1516457 (= (contains!16420 (keys!19079 lt!1908178) key!4653) lt!1908397)))

(declare-fun b!4745617 () Bool)

(declare-fun e!2960075 () Bool)

(assert (=> b!4745617 (= e!2960074 e!2960075)))

(declare-fun res!2011298 () Bool)

(assert (=> b!4745617 (=> res!2011298 e!2960075)))

(assert (=> b!4745617 (= res!2011298 (= (h!59389 (keys!19079 lt!1908178)) key!4653))))

(declare-fun b!4745618 () Bool)

(assert (=> b!4745618 (= e!2960075 (contains!16420 (t!360428 (keys!19079 lt!1908178)) key!4653))))

(assert (= (and d!1516457 res!2011297) b!4745617))

(assert (= (and b!4745617 (not res!2011298)) b!4745618))

(assert (=> d!1516457 m!5702399))

(declare-fun m!5702443 () Bool)

(assert (=> d!1516457 m!5702443))

(declare-fun m!5702445 () Bool)

(assert (=> d!1516457 m!5702445))

(declare-fun m!5702447 () Bool)

(assert (=> b!4745618 m!5702447))

(assert (=> b!4745566 d!1516457))

(assert (=> b!4745566 d!1516455))

(declare-fun d!1516461 () Bool)

(declare-fun res!2011303 () Bool)

(declare-fun e!2960081 () Bool)

(assert (=> d!1516461 (=> res!2011303 e!2960081)))

(assert (=> d!1516461 (= res!2011303 (and ((_ is Cons!52994) (toList!6038 lm!2023)) (= (_1!30640 (h!59385 (toList!6038 lm!2023))) lt!1908179)))))

(assert (=> d!1516461 (= (containsKey!3507 (toList!6038 lm!2023) lt!1908179) e!2960081)))

(declare-fun b!4745627 () Bool)

(declare-fun e!2960083 () Bool)

(assert (=> b!4745627 (= e!2960081 e!2960083)))

(declare-fun res!2011304 () Bool)

(assert (=> b!4745627 (=> (not res!2011304) (not e!2960083))))

(assert (=> b!4745627 (= res!2011304 (and (or (not ((_ is Cons!52994) (toList!6038 lm!2023))) (bvsle (_1!30640 (h!59385 (toList!6038 lm!2023))) lt!1908179)) ((_ is Cons!52994) (toList!6038 lm!2023)) (bvslt (_1!30640 (h!59385 (toList!6038 lm!2023))) lt!1908179)))))

(declare-fun b!4745628 () Bool)

(assert (=> b!4745628 (= e!2960083 (containsKey!3507 (t!360426 (toList!6038 lm!2023)) lt!1908179))))

(assert (= (and d!1516461 (not res!2011303)) b!4745627))

(assert (= (and b!4745627 res!2011304) b!4745628))

(declare-fun m!5702451 () Bool)

(assert (=> b!4745628 m!5702451))

(assert (=> d!1516439 d!1516461))

(declare-fun d!1516465 () Bool)

(declare-fun res!2011309 () Bool)

(declare-fun e!2960092 () Bool)

(assert (=> d!1516465 (=> res!2011309 e!2960092)))

(assert (=> d!1516465 (= res!2011309 (and ((_ is Cons!52993) (toList!6037 lt!1908178)) (= (_1!30639 (h!59384 (toList!6037 lt!1908178))) key!4653)))))

(assert (=> d!1516465 (= (containsKey!3506 (toList!6037 lt!1908178) key!4653) e!2960092)))

(declare-fun b!4745641 () Bool)

(declare-fun e!2960093 () Bool)

(assert (=> b!4745641 (= e!2960092 e!2960093)))

(declare-fun res!2011310 () Bool)

(assert (=> b!4745641 (=> (not res!2011310) (not e!2960093))))

(assert (=> b!4745641 (= res!2011310 ((_ is Cons!52993) (toList!6037 lt!1908178)))))

(declare-fun b!4745642 () Bool)

(assert (=> b!4745642 (= e!2960093 (containsKey!3506 (t!360425 (toList!6037 lt!1908178)) key!4653))))

(assert (= (and d!1516465 (not res!2011309)) b!4745641))

(assert (= (and b!4745641 res!2011310) b!4745642))

(declare-fun m!5702455 () Bool)

(assert (=> b!4745642 m!5702455))

(assert (=> b!4745564 d!1516465))

(declare-fun d!1516469 () Bool)

(assert (=> d!1516469 (containsKey!3506 (toList!6037 lt!1908178) key!4653)))

(declare-fun lt!1908400 () Unit!134239)

(declare-fun choose!33737 (List!53117 K!14335) Unit!134239)

(assert (=> d!1516469 (= lt!1908400 (choose!33737 (toList!6037 lt!1908178) key!4653))))

(assert (=> d!1516469 (invariantList!1555 (toList!6037 lt!1908178))))

(assert (=> d!1516469 (= (lemmaInGetKeysListThenContainsKey!993 (toList!6037 lt!1908178) key!4653) lt!1908400)))

(declare-fun bs!1137930 () Bool)

(assert (= bs!1137930 d!1516469))

(assert (=> bs!1137930 m!5702393))

(declare-fun m!5702457 () Bool)

(assert (=> bs!1137930 m!5702457))

(declare-fun m!5702459 () Bool)

(assert (=> bs!1137930 m!5702459))

(assert (=> b!4745564 d!1516469))

(declare-fun d!1516471 () Bool)

(assert (=> d!1516471 (= (tail!9153 (toList!6038 lm!2023)) (t!360426 (toList!6038 lm!2023)))))

(assert (=> d!1516387 d!1516471))

(declare-fun d!1516475 () Bool)

(declare-fun isEmpty!29247 (Option!12490) Bool)

(assert (=> d!1516475 (= (isDefined!9744 (getValueByKey!2040 (toList!6037 lt!1908178) key!4653)) (not (isEmpty!29247 (getValueByKey!2040 (toList!6037 lt!1908178) key!4653))))))

(declare-fun bs!1137932 () Bool)

(assert (= bs!1137932 d!1516475))

(assert (=> bs!1137932 m!5702387))

(declare-fun m!5702467 () Bool)

(assert (=> bs!1137932 m!5702467))

(assert (=> b!4745568 d!1516475))

(declare-fun b!4745665 () Bool)

(declare-fun e!2960111 () Option!12490)

(assert (=> b!4745665 (= e!2960111 (getValueByKey!2040 (t!360425 (toList!6037 lt!1908178)) key!4653))))

(declare-fun b!4745663 () Bool)

(declare-fun e!2960110 () Option!12490)

(assert (=> b!4745663 (= e!2960110 (Some!12489 (_2!30639 (h!59384 (toList!6037 lt!1908178)))))))

(declare-fun b!4745664 () Bool)

(assert (=> b!4745664 (= e!2960110 e!2960111)))

(declare-fun c!810579 () Bool)

(assert (=> b!4745664 (= c!810579 (and ((_ is Cons!52993) (toList!6037 lt!1908178)) (not (= (_1!30639 (h!59384 (toList!6037 lt!1908178))) key!4653))))))

(declare-fun d!1516479 () Bool)

(declare-fun c!810578 () Bool)

(assert (=> d!1516479 (= c!810578 (and ((_ is Cons!52993) (toList!6037 lt!1908178)) (= (_1!30639 (h!59384 (toList!6037 lt!1908178))) key!4653)))))

(assert (=> d!1516479 (= (getValueByKey!2040 (toList!6037 lt!1908178) key!4653) e!2960110)))

(declare-fun b!4745666 () Bool)

(assert (=> b!4745666 (= e!2960111 None!12489)))

(assert (= (and d!1516479 c!810578) b!4745663))

(assert (= (and d!1516479 (not c!810578)) b!4745664))

(assert (= (and b!4745664 c!810579) b!4745665))

(assert (= (and b!4745664 (not c!810579)) b!4745666))

(declare-fun m!5702471 () Bool)

(assert (=> b!4745665 m!5702471))

(assert (=> b!4745568 d!1516479))

(declare-fun d!1516483 () Bool)

(assert (=> d!1516483 (isDefined!9744 (getValueByKey!2040 (toList!6037 lt!1908178) key!4653))))

(declare-fun lt!1908403 () Unit!134239)

(declare-fun choose!33738 (List!53117 K!14335) Unit!134239)

(assert (=> d!1516483 (= lt!1908403 (choose!33738 (toList!6037 lt!1908178) key!4653))))

(assert (=> d!1516483 (invariantList!1555 (toList!6037 lt!1908178))))

(assert (=> d!1516483 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1931 (toList!6037 lt!1908178) key!4653) lt!1908403)))

(declare-fun bs!1137933 () Bool)

(assert (= bs!1137933 d!1516483))

(assert (=> bs!1137933 m!5702387))

(assert (=> bs!1137933 m!5702387))

(assert (=> bs!1137933 m!5702389))

(declare-fun m!5702479 () Bool)

(assert (=> bs!1137933 m!5702479))

(assert (=> bs!1137933 m!5702459))

(assert (=> b!4745567 d!1516483))

(assert (=> b!4745567 d!1516475))

(assert (=> b!4745567 d!1516479))

(declare-fun d!1516489 () Bool)

(assert (=> d!1516489 (contains!16420 (getKeysList!994 (toList!6037 lt!1908178)) key!4653)))

(declare-fun lt!1908427 () Unit!134239)

(declare-fun choose!33740 (List!53117 K!14335) Unit!134239)

(assert (=> d!1516489 (= lt!1908427 (choose!33740 (toList!6037 lt!1908178) key!4653))))

(assert (=> d!1516489 (invariantList!1555 (toList!6037 lt!1908178))))

(assert (=> d!1516489 (= (lemmaInListThenGetKeysListContains!989 (toList!6037 lt!1908178) key!4653) lt!1908427)))

(declare-fun bs!1137945 () Bool)

(assert (= bs!1137945 d!1516489))

(assert (=> bs!1137945 m!5702397))

(assert (=> bs!1137945 m!5702397))

(declare-fun m!5702481 () Bool)

(assert (=> bs!1137945 m!5702481))

(declare-fun m!5702483 () Bool)

(assert (=> bs!1137945 m!5702483))

(assert (=> bs!1137945 m!5702459))

(assert (=> b!4745567 d!1516489))

(declare-fun d!1516491 () Bool)

(declare-fun choose!33741 (Hashable!6443 K!14335) (_ BitVec 64))

(assert (=> d!1516491 (= (hash!4492 hashF!1323 key!4653) (choose!33741 hashF!1323 key!4653))))

(declare-fun bs!1137946 () Bool)

(assert (= bs!1137946 d!1516491))

(declare-fun m!5702485 () Bool)

(assert (=> bs!1137946 m!5702485))

(assert (=> d!1516451 d!1516491))

(assert (=> d!1516435 d!1516465))

(declare-fun d!1516493 () Bool)

(declare-fun lt!1908428 () Bool)

(assert (=> d!1516493 (= lt!1908428 (select (content!9490 e!2960046) key!4653))))

(declare-fun e!2960123 () Bool)

(assert (=> d!1516493 (= lt!1908428 e!2960123)))

(declare-fun res!2011334 () Bool)

(assert (=> d!1516493 (=> (not res!2011334) (not e!2960123))))

(assert (=> d!1516493 (= res!2011334 ((_ is Cons!52996) e!2960046))))

(assert (=> d!1516493 (= (contains!16420 e!2960046 key!4653) lt!1908428)))

(declare-fun b!4745680 () Bool)

(declare-fun e!2960124 () Bool)

(assert (=> b!4745680 (= e!2960123 e!2960124)))

(declare-fun res!2011335 () Bool)

(assert (=> b!4745680 (=> res!2011335 e!2960124)))

(assert (=> b!4745680 (= res!2011335 (= (h!59389 e!2960046) key!4653))))

(declare-fun b!4745681 () Bool)

(assert (=> b!4745681 (= e!2960124 (contains!16420 (t!360428 e!2960046) key!4653))))

(assert (= (and d!1516493 res!2011334) b!4745680))

(assert (= (and b!4745680 (not res!2011335)) b!4745681))

(declare-fun m!5702487 () Bool)

(assert (=> d!1516493 m!5702487))

(declare-fun m!5702489 () Bool)

(assert (=> d!1516493 m!5702489))

(declare-fun m!5702491 () Bool)

(assert (=> b!4745681 m!5702491))

(assert (=> bm!332118 d!1516493))

(declare-fun d!1516495 () Bool)

(declare-fun res!2011340 () Bool)

(declare-fun e!2960129 () Bool)

(assert (=> d!1516495 (=> res!2011340 e!2960129)))

(assert (=> d!1516495 (= res!2011340 (and ((_ is Cons!52993) (t!360425 newBucket!218)) (= (_1!30639 (h!59384 (t!360425 newBucket!218))) (_1!30639 (h!59384 newBucket!218)))))))

(assert (=> d!1516495 (= (containsKey!3504 (t!360425 newBucket!218) (_1!30639 (h!59384 newBucket!218))) e!2960129)))

(declare-fun b!4745686 () Bool)

(declare-fun e!2960130 () Bool)

(assert (=> b!4745686 (= e!2960129 e!2960130)))

(declare-fun res!2011341 () Bool)

(assert (=> b!4745686 (=> (not res!2011341) (not e!2960130))))

(assert (=> b!4745686 (= res!2011341 ((_ is Cons!52993) (t!360425 newBucket!218)))))

(declare-fun b!4745687 () Bool)

(assert (=> b!4745687 (= e!2960130 (containsKey!3504 (t!360425 (t!360425 newBucket!218)) (_1!30639 (h!59384 newBucket!218))))))

(assert (= (and d!1516495 (not res!2011340)) b!4745686))

(assert (= (and b!4745686 res!2011341) b!4745687))

(declare-fun m!5702493 () Bool)

(assert (=> b!4745687 m!5702493))

(assert (=> b!4745434 d!1516495))

(declare-fun bs!1137964 () Bool)

(declare-fun b!4745744 () Bool)

(assert (= bs!1137964 (and b!4745744 b!4745609)))

(declare-fun lambda!220230 () Int)

(assert (=> bs!1137964 (= (= (t!360425 (toList!6037 lt!1908178)) (toList!6037 lt!1908178)) (= lambda!220230 lambda!220215))))

(assert (=> b!4745744 true))

(declare-fun bs!1137965 () Bool)

(declare-fun b!4745747 () Bool)

(assert (= bs!1137965 (and b!4745747 b!4745609)))

(declare-fun lambda!220231 () Int)

(assert (=> bs!1137965 (= (= (Cons!52993 (h!59384 (toList!6037 lt!1908178)) (t!360425 (toList!6037 lt!1908178))) (toList!6037 lt!1908178)) (= lambda!220231 lambda!220215))))

(declare-fun bs!1137966 () Bool)

(assert (= bs!1137966 (and b!4745747 b!4745744)))

(assert (=> bs!1137966 (= (= (Cons!52993 (h!59384 (toList!6037 lt!1908178)) (t!360425 (toList!6037 lt!1908178))) (t!360425 (toList!6037 lt!1908178))) (= lambda!220231 lambda!220230))))

(assert (=> b!4745747 true))

(declare-fun bs!1137967 () Bool)

(declare-fun b!4745750 () Bool)

(assert (= bs!1137967 (and b!4745750 b!4745609)))

(declare-fun lambda!220232 () Int)

(assert (=> bs!1137967 (= lambda!220232 lambda!220215)))

(declare-fun bs!1137968 () Bool)

(assert (= bs!1137968 (and b!4745750 b!4745744)))

(assert (=> bs!1137968 (= (= (toList!6037 lt!1908178) (t!360425 (toList!6037 lt!1908178))) (= lambda!220232 lambda!220230))))

(declare-fun bs!1137969 () Bool)

(assert (= bs!1137969 (and b!4745750 b!4745747)))

(assert (=> bs!1137969 (= (= (toList!6037 lt!1908178) (Cons!52993 (h!59384 (toList!6037 lt!1908178)) (t!360425 (toList!6037 lt!1908178)))) (= lambda!220232 lambda!220231))))

(assert (=> b!4745750 true))

(declare-fun bs!1137970 () Bool)

(declare-fun b!4745748 () Bool)

(assert (= bs!1137970 (and b!4745748 b!4745610)))

(declare-fun lambda!220233 () Int)

(assert (=> bs!1137970 (= lambda!220233 lambda!220216)))

(declare-fun b!4745742 () Bool)

(declare-fun e!2960170 () List!53120)

(assert (=> b!4745742 (= e!2960170 Nil!52996)))

(declare-fun d!1516497 () Bool)

(declare-fun e!2960169 () Bool)

(assert (=> d!1516497 e!2960169))

(declare-fun res!2011371 () Bool)

(assert (=> d!1516497 (=> (not res!2011371) (not e!2960169))))

(declare-fun lt!1908457 () List!53120)

(assert (=> d!1516497 (= res!2011371 (noDuplicate!878 lt!1908457))))

(assert (=> d!1516497 (= lt!1908457 e!2960170)))

(declare-fun c!810595 () Bool)

(assert (=> d!1516497 (= c!810595 ((_ is Cons!52993) (toList!6037 lt!1908178)))))

(assert (=> d!1516497 (invariantList!1555 (toList!6037 lt!1908178))))

(assert (=> d!1516497 (= (getKeysList!994 (toList!6037 lt!1908178)) lt!1908457)))

(declare-fun b!4745743 () Bool)

(declare-fun e!2960168 () Unit!134239)

(declare-fun Unit!134255 () Unit!134239)

(assert (=> b!4745743 (= e!2960168 Unit!134255)))

(assert (=> b!4745744 false))

(declare-fun lt!1908458 () Unit!134239)

(declare-fun forallContained!3746 (List!53120 Int K!14335) Unit!134239)

(assert (=> b!4745744 (= lt!1908458 (forallContained!3746 (getKeysList!994 (t!360425 (toList!6037 lt!1908178))) lambda!220230 (_1!30639 (h!59384 (toList!6037 lt!1908178)))))))

(declare-fun e!2960171 () Unit!134239)

(declare-fun Unit!134256 () Unit!134239)

(assert (=> b!4745744 (= e!2960171 Unit!134256)))

(declare-fun b!4745745 () Bool)

(assert (=> b!4745745 false))

(declare-fun Unit!134257 () Unit!134239)

(assert (=> b!4745745 (= e!2960168 Unit!134257)))

(declare-fun b!4745746 () Bool)

(declare-fun Unit!134258 () Unit!134239)

(assert (=> b!4745746 (= e!2960171 Unit!134258)))

(assert (=> b!4745747 (= e!2960170 (Cons!52996 (_1!30639 (h!59384 (toList!6037 lt!1908178))) (getKeysList!994 (t!360425 (toList!6037 lt!1908178)))))))

(declare-fun c!810594 () Bool)

(assert (=> b!4745747 (= c!810594 (containsKey!3506 (t!360425 (toList!6037 lt!1908178)) (_1!30639 (h!59384 (toList!6037 lt!1908178)))))))

(declare-fun lt!1908461 () Unit!134239)

(assert (=> b!4745747 (= lt!1908461 e!2960168)))

(declare-fun c!810596 () Bool)

(assert (=> b!4745747 (= c!810596 (contains!16420 (getKeysList!994 (t!360425 (toList!6037 lt!1908178))) (_1!30639 (h!59384 (toList!6037 lt!1908178)))))))

(declare-fun lt!1908462 () Unit!134239)

(assert (=> b!4745747 (= lt!1908462 e!2960171)))

(declare-fun lt!1908459 () List!53120)

(assert (=> b!4745747 (= lt!1908459 (getKeysList!994 (t!360425 (toList!6037 lt!1908178))))))

(declare-fun lt!1908456 () Unit!134239)

(declare-fun lemmaForallContainsAddHeadPreserves!296 (List!53117 List!53120 tuple2!54690) Unit!134239)

(assert (=> b!4745747 (= lt!1908456 (lemmaForallContainsAddHeadPreserves!296 (t!360425 (toList!6037 lt!1908178)) lt!1908459 (h!59384 (toList!6037 lt!1908178))))))

(assert (=> b!4745747 (forall!11712 lt!1908459 lambda!220231)))

(declare-fun lt!1908460 () Unit!134239)

(assert (=> b!4745747 (= lt!1908460 lt!1908456)))

(assert (=> b!4745748 (= e!2960169 (= (content!9490 lt!1908457) (content!9490 (map!11728 (toList!6037 lt!1908178) lambda!220233))))))

(declare-fun b!4745749 () Bool)

(declare-fun res!2011372 () Bool)

(assert (=> b!4745749 (=> (not res!2011372) (not e!2960169))))

(assert (=> b!4745749 (= res!2011372 (= (length!612 lt!1908457) (length!613 (toList!6037 lt!1908178))))))

(declare-fun res!2011370 () Bool)

(assert (=> b!4745750 (=> (not res!2011370) (not e!2960169))))

(assert (=> b!4745750 (= res!2011370 (forall!11712 lt!1908457 lambda!220232))))

(assert (= (and d!1516497 c!810595) b!4745747))

(assert (= (and d!1516497 (not c!810595)) b!4745742))

(assert (= (and b!4745747 c!810594) b!4745745))

(assert (= (and b!4745747 (not c!810594)) b!4745743))

(assert (= (and b!4745747 c!810596) b!4745744))

(assert (= (and b!4745747 (not c!810596)) b!4745746))

(assert (= (and d!1516497 res!2011371) b!4745749))

(assert (= (and b!4745749 res!2011372) b!4745750))

(assert (= (and b!4745750 res!2011370) b!4745748))

(declare-fun m!5702583 () Bool)

(assert (=> b!4745744 m!5702583))

(assert (=> b!4745744 m!5702583))

(declare-fun m!5702585 () Bool)

(assert (=> b!4745744 m!5702585))

(declare-fun m!5702587 () Bool)

(assert (=> d!1516497 m!5702587))

(assert (=> d!1516497 m!5702459))

(declare-fun m!5702589 () Bool)

(assert (=> b!4745749 m!5702589))

(assert (=> b!4745749 m!5702433))

(declare-fun m!5702591 () Bool)

(assert (=> b!4745750 m!5702591))

(declare-fun m!5702593 () Bool)

(assert (=> b!4745747 m!5702593))

(declare-fun m!5702595 () Bool)

(assert (=> b!4745747 m!5702595))

(declare-fun m!5702597 () Bool)

(assert (=> b!4745747 m!5702597))

(assert (=> b!4745747 m!5702583))

(declare-fun m!5702599 () Bool)

(assert (=> b!4745747 m!5702599))

(assert (=> b!4745747 m!5702583))

(declare-fun m!5702601 () Bool)

(assert (=> b!4745748 m!5702601))

(declare-fun m!5702603 () Bool)

(assert (=> b!4745748 m!5702603))

(assert (=> b!4745748 m!5702603))

(declare-fun m!5702605 () Bool)

(assert (=> b!4745748 m!5702605))

(assert (=> b!4745570 d!1516497))

(declare-fun d!1516533 () Bool)

(declare-fun res!2011373 () Bool)

(declare-fun e!2960172 () Bool)

(assert (=> d!1516533 (=> res!2011373 e!2960172)))

(assert (=> d!1516533 (= res!2011373 ((_ is Nil!52994) (toList!6038 lm!2023)))))

(assert (=> d!1516533 (= (forall!11709 (toList!6038 lm!2023) lambda!220209) e!2960172)))

(declare-fun b!4745753 () Bool)

(declare-fun e!2960173 () Bool)

(assert (=> b!4745753 (= e!2960172 e!2960173)))

(declare-fun res!2011374 () Bool)

(assert (=> b!4745753 (=> (not res!2011374) (not e!2960173))))

(assert (=> b!4745753 (= res!2011374 (dynLambda!21885 lambda!220209 (h!59385 (toList!6038 lm!2023))))))

(declare-fun b!4745754 () Bool)

(assert (=> b!4745754 (= e!2960173 (forall!11709 (t!360426 (toList!6038 lm!2023)) lambda!220209))))

(assert (= (and d!1516533 (not res!2011373)) b!4745753))

(assert (= (and b!4745753 res!2011374) b!4745754))

(declare-fun b_lambda!182703 () Bool)

(assert (=> (not b_lambda!182703) (not b!4745753)))

(declare-fun m!5702607 () Bool)

(assert (=> b!4745753 m!5702607))

(declare-fun m!5702609 () Bool)

(assert (=> b!4745754 m!5702609))

(assert (=> d!1516445 d!1516533))

(assert (=> b!4745569 d!1516457))

(assert (=> b!4745569 d!1516455))

(declare-fun d!1516535 () Bool)

(declare-fun noDuplicatedKeys!392 (List!53117) Bool)

(assert (=> d!1516535 (= (invariantList!1555 (toList!6037 lt!1908354)) (noDuplicatedKeys!392 (toList!6037 lt!1908354)))))

(declare-fun bs!1137971 () Bool)

(assert (= bs!1137971 d!1516535))

(declare-fun m!5702611 () Bool)

(assert (=> bs!1137971 m!5702611))

(assert (=> d!1516433 d!1516535))

(declare-fun d!1516537 () Bool)

(declare-fun res!2011375 () Bool)

(declare-fun e!2960174 () Bool)

(assert (=> d!1516537 (=> res!2011375 e!2960174)))

(assert (=> d!1516537 (= res!2011375 ((_ is Nil!52994) (t!360426 (toList!6038 lm!2023))))))

(assert (=> d!1516537 (= (forall!11709 (t!360426 (toList!6038 lm!2023)) lambda!220202) e!2960174)))

(declare-fun b!4745755 () Bool)

(declare-fun e!2960175 () Bool)

(assert (=> b!4745755 (= e!2960174 e!2960175)))

(declare-fun res!2011376 () Bool)

(assert (=> b!4745755 (=> (not res!2011376) (not e!2960175))))

(assert (=> b!4745755 (= res!2011376 (dynLambda!21885 lambda!220202 (h!59385 (t!360426 (toList!6038 lm!2023)))))))

(declare-fun b!4745756 () Bool)

(assert (=> b!4745756 (= e!2960175 (forall!11709 (t!360426 (t!360426 (toList!6038 lm!2023))) lambda!220202))))

(assert (= (and d!1516537 (not res!2011375)) b!4745755))

(assert (= (and b!4745755 res!2011376) b!4745756))

(declare-fun b_lambda!182705 () Bool)

(assert (=> (not b_lambda!182705) (not b!4745755)))

(declare-fun m!5702613 () Bool)

(assert (=> b!4745755 m!5702613))

(declare-fun m!5702615 () Bool)

(assert (=> b!4745756 m!5702615))

(assert (=> d!1516433 d!1516537))

(declare-fun d!1516539 () Bool)

(declare-fun res!2011381 () Bool)

(declare-fun e!2960180 () Bool)

(assert (=> d!1516539 (=> res!2011381 e!2960180)))

(assert (=> d!1516539 (= res!2011381 ((_ is Nil!52993) (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023))))))))

(assert (=> d!1516539 (= (forall!11711 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) lambda!220198) e!2960180)))

(declare-fun b!4745762 () Bool)

(declare-fun e!2960181 () Bool)

(assert (=> b!4745762 (= e!2960180 e!2960181)))

(declare-fun res!2011382 () Bool)

(assert (=> b!4745762 (=> (not res!2011382) (not e!2960181))))

(declare-fun dynLambda!21887 (Int tuple2!54690) Bool)

(assert (=> b!4745762 (= res!2011382 (dynLambda!21887 lambda!220198 (h!59384 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))))))))

(declare-fun b!4745763 () Bool)

(assert (=> b!4745763 (= e!2960181 (forall!11711 (t!360425 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023))))) lambda!220198))))

(assert (= (and d!1516539 (not res!2011381)) b!4745762))

(assert (= (and b!4745762 res!2011382) b!4745763))

(declare-fun b_lambda!182707 () Bool)

(assert (=> (not b_lambda!182707) (not b!4745762)))

(declare-fun m!5702617 () Bool)

(assert (=> b!4745762 m!5702617))

(declare-fun m!5702619 () Bool)

(assert (=> b!4745763 m!5702619))

(assert (=> b!4745533 d!1516539))

(declare-fun bs!1137981 () Bool)

(declare-fun d!1516541 () Bool)

(assert (= bs!1137981 (and d!1516541 b!4745535)))

(declare-fun lambda!220241 () Int)

(assert (=> bs!1137981 (= lambda!220241 lambda!220196)))

(declare-fun bs!1137982 () Bool)

(assert (= bs!1137982 (and d!1516541 d!1516443)))

(assert (=> bs!1137982 (not (= lambda!220241 lambda!220206))))

(declare-fun bs!1137983 () Bool)

(assert (= bs!1137983 (and d!1516541 d!1516405)))

(assert (=> bs!1137983 (= (= (extractMap!2100 (t!360426 (toList!6038 lm!2023))) lt!1908333) (= lambda!220241 lambda!220199))))

(declare-fun bs!1137984 () Bool)

(assert (= bs!1137984 (and d!1516541 d!1516449)))

(assert (=> bs!1137984 (not (= lambda!220241 lambda!220210))))

(declare-fun bs!1137985 () Bool)

(assert (= bs!1137985 (and d!1516541 b!4745536)))

(assert (=> bs!1137985 (= lambda!220241 lambda!220197)))

(assert (=> bs!1137985 (= (= (extractMap!2100 (t!360426 (toList!6038 lm!2023))) lt!1908344) (= lambda!220241 lambda!220198))))

(assert (=> d!1516541 true))

(assert (=> d!1516541 (forall!11711 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) lambda!220241)))

(declare-fun lt!1908476 () Unit!134239)

(declare-fun choose!33742 (ListMap!5401) Unit!134239)

(assert (=> d!1516541 (= lt!1908476 (choose!33742 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))))))

(assert (=> d!1516541 (= (lemmaContainsAllItsOwnKeys!840 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) lt!1908476)))

(declare-fun bs!1137986 () Bool)

(assert (= bs!1137986 d!1516541))

(declare-fun m!5702651 () Bool)

(assert (=> bs!1137986 m!5702651))

(assert (=> bs!1137986 m!5702193))

(declare-fun m!5702653 () Bool)

(assert (=> bs!1137986 m!5702653))

(assert (=> bm!332113 d!1516541))

(declare-fun d!1516549 () Bool)

(declare-fun res!2011388 () Bool)

(declare-fun e!2960190 () Bool)

(assert (=> d!1516549 (=> res!2011388 e!2960190)))

(assert (=> d!1516549 (= res!2011388 ((_ is Nil!52993) (_2!30640 (h!59385 (toList!6038 lm!2023)))))))

(assert (=> d!1516549 (= (forall!11711 (_2!30640 (h!59385 (toList!6038 lm!2023))) lambda!220199) e!2960190)))

(declare-fun b!4745775 () Bool)

(declare-fun e!2960191 () Bool)

(assert (=> b!4745775 (= e!2960190 e!2960191)))

(declare-fun res!2011389 () Bool)

(assert (=> b!4745775 (=> (not res!2011389) (not e!2960191))))

(assert (=> b!4745775 (= res!2011389 (dynLambda!21887 lambda!220199 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(declare-fun b!4745776 () Bool)

(assert (=> b!4745776 (= e!2960191 (forall!11711 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))) lambda!220199))))

(assert (= (and d!1516549 (not res!2011388)) b!4745775))

(assert (= (and b!4745775 res!2011389) b!4745776))

(declare-fun b_lambda!182711 () Bool)

(assert (=> (not b_lambda!182711) (not b!4745775)))

(declare-fun m!5702655 () Bool)

(assert (=> b!4745775 m!5702655))

(declare-fun m!5702657 () Bool)

(assert (=> b!4745776 m!5702657))

(assert (=> d!1516405 d!1516549))

(declare-fun d!1516551 () Bool)

(declare-fun res!2011390 () Bool)

(declare-fun e!2960192 () Bool)

(assert (=> d!1516551 (=> res!2011390 e!2960192)))

(assert (=> d!1516551 (= res!2011390 (not ((_ is Cons!52993) (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(assert (=> d!1516551 (= (noDuplicateKeys!2074 (_2!30640 (h!59385 (toList!6038 lm!2023)))) e!2960192)))

(declare-fun b!4745777 () Bool)

(declare-fun e!2960193 () Bool)

(assert (=> b!4745777 (= e!2960192 e!2960193)))

(declare-fun res!2011391 () Bool)

(assert (=> b!4745777 (=> (not res!2011391) (not e!2960193))))

(assert (=> b!4745777 (= res!2011391 (not (containsKey!3504 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))))

(declare-fun b!4745778 () Bool)

(assert (=> b!4745778 (= e!2960193 (noDuplicateKeys!2074 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(assert (= (and d!1516551 (not res!2011390)) b!4745777))

(assert (= (and b!4745777 res!2011391) b!4745778))

(declare-fun m!5702659 () Bool)

(assert (=> b!4745777 m!5702659))

(declare-fun m!5702661 () Bool)

(assert (=> b!4745778 m!5702661))

(assert (=> d!1516405 d!1516551))

(declare-fun d!1516553 () Bool)

(declare-fun res!2011392 () Bool)

(declare-fun e!2960194 () Bool)

(assert (=> d!1516553 (=> res!2011392 e!2960194)))

(assert (=> d!1516553 (= res!2011392 ((_ is Nil!52994) (t!360426 (toList!6038 lm!2023))))))

(assert (=> d!1516553 (= (forall!11709 (t!360426 (toList!6038 lm!2023)) lambda!220124) e!2960194)))

(declare-fun b!4745779 () Bool)

(declare-fun e!2960195 () Bool)

(assert (=> b!4745779 (= e!2960194 e!2960195)))

(declare-fun res!2011393 () Bool)

(assert (=> b!4745779 (=> (not res!2011393) (not e!2960195))))

(assert (=> b!4745779 (= res!2011393 (dynLambda!21885 lambda!220124 (h!59385 (t!360426 (toList!6038 lm!2023)))))))

(declare-fun b!4745780 () Bool)

(assert (=> b!4745780 (= e!2960195 (forall!11709 (t!360426 (t!360426 (toList!6038 lm!2023))) lambda!220124))))

(assert (= (and d!1516553 (not res!2011392)) b!4745779))

(assert (= (and b!4745779 res!2011393) b!4745780))

(declare-fun b_lambda!182713 () Bool)

(assert (=> (not b_lambda!182713) (not b!4745779)))

(declare-fun m!5702663 () Bool)

(assert (=> b!4745779 m!5702663))

(declare-fun m!5702665 () Bool)

(assert (=> b!4745780 m!5702665))

(assert (=> b!4745411 d!1516553))

(declare-fun d!1516555 () Bool)

(assert (=> d!1516555 (= (invariantList!1555 (toList!6037 lt!1908379)) (noDuplicatedKeys!392 (toList!6037 lt!1908379)))))

(declare-fun bs!1137987 () Bool)

(assert (= bs!1137987 d!1516555))

(declare-fun m!5702667 () Bool)

(assert (=> bs!1137987 m!5702667))

(assert (=> d!1516437 d!1516555))

(declare-fun d!1516557 () Bool)

(declare-fun res!2011394 () Bool)

(declare-fun e!2960196 () Bool)

(assert (=> d!1516557 (=> res!2011394 e!2960196)))

(assert (=> d!1516557 (= res!2011394 ((_ is Nil!52994) (toList!6038 lm!2023)))))

(assert (=> d!1516557 (= (forall!11709 (toList!6038 lm!2023) lambda!220203) e!2960196)))

(declare-fun b!4745781 () Bool)

(declare-fun e!2960197 () Bool)

(assert (=> b!4745781 (= e!2960196 e!2960197)))

(declare-fun res!2011395 () Bool)

(assert (=> b!4745781 (=> (not res!2011395) (not e!2960197))))

(assert (=> b!4745781 (= res!2011395 (dynLambda!21885 lambda!220203 (h!59385 (toList!6038 lm!2023))))))

(declare-fun b!4745782 () Bool)

(assert (=> b!4745782 (= e!2960197 (forall!11709 (t!360426 (toList!6038 lm!2023)) lambda!220203))))

(assert (= (and d!1516557 (not res!2011394)) b!4745781))

(assert (= (and b!4745781 res!2011395) b!4745782))

(declare-fun b_lambda!182715 () Bool)

(assert (=> (not b_lambda!182715) (not b!4745781)))

(declare-fun m!5702669 () Bool)

(assert (=> b!4745781 m!5702669))

(declare-fun m!5702671 () Bool)

(assert (=> b!4745782 m!5702671))

(assert (=> d!1516437 d!1516557))

(declare-fun d!1516559 () Bool)

(declare-fun res!2011398 () Bool)

(declare-fun e!2960200 () Bool)

(assert (=> d!1516559 (=> res!2011398 e!2960200)))

(assert (=> d!1516559 (= res!2011398 (not ((_ is Cons!52993) (t!360425 newBucket!218))))))

(assert (=> d!1516559 (= (noDuplicateKeys!2074 (t!360425 newBucket!218)) e!2960200)))

(declare-fun b!4745785 () Bool)

(declare-fun e!2960201 () Bool)

(assert (=> b!4745785 (= e!2960200 e!2960201)))

(declare-fun res!2011399 () Bool)

(assert (=> b!4745785 (=> (not res!2011399) (not e!2960201))))

(assert (=> b!4745785 (= res!2011399 (not (containsKey!3504 (t!360425 (t!360425 newBucket!218)) (_1!30639 (h!59384 (t!360425 newBucket!218))))))))

(declare-fun b!4745786 () Bool)

(assert (=> b!4745786 (= e!2960201 (noDuplicateKeys!2074 (t!360425 (t!360425 newBucket!218))))))

(assert (= (and d!1516559 (not res!2011398)) b!4745785))

(assert (= (and b!4745785 res!2011399) b!4745786))

(declare-fun m!5702673 () Bool)

(assert (=> b!4745785 m!5702673))

(declare-fun m!5702675 () Bool)

(assert (=> b!4745786 m!5702675))

(assert (=> b!4745435 d!1516559))

(declare-fun d!1516561 () Bool)

(declare-fun res!2011400 () Bool)

(declare-fun e!2960202 () Bool)

(assert (=> d!1516561 (=> res!2011400 e!2960202)))

(assert (=> d!1516561 (= res!2011400 (and ((_ is Cons!52993) lt!1908182) (= (_1!30639 (h!59384 lt!1908182)) key!4653)))))

(assert (=> d!1516561 (= (containsKey!3504 lt!1908182 key!4653) e!2960202)))

(declare-fun b!4745787 () Bool)

(declare-fun e!2960203 () Bool)

(assert (=> b!4745787 (= e!2960202 e!2960203)))

(declare-fun res!2011401 () Bool)

(assert (=> b!4745787 (=> (not res!2011401) (not e!2960203))))

(assert (=> b!4745787 (= res!2011401 ((_ is Cons!52993) lt!1908182))))

(declare-fun b!4745788 () Bool)

(assert (=> b!4745788 (= e!2960203 (containsKey!3504 (t!360425 lt!1908182) key!4653))))

(assert (= (and d!1516561 (not res!2011400)) b!4745787))

(assert (= (and b!4745787 res!2011401) b!4745788))

(declare-fun m!5702677 () Bool)

(assert (=> b!4745788 m!5702677))

(assert (=> d!1516389 d!1516561))

(assert (=> d!1516389 d!1516441))

(declare-fun d!1516563 () Bool)

(declare-fun res!2011402 () Bool)

(declare-fun e!2960204 () Bool)

(assert (=> d!1516563 (=> res!2011402 e!2960204)))

(assert (=> d!1516563 (= res!2011402 ((_ is Nil!52993) (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023))))))))

(assert (=> d!1516563 (= (forall!11711 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) lambda!220199) e!2960204)))

(declare-fun b!4745789 () Bool)

(declare-fun e!2960205 () Bool)

(assert (=> b!4745789 (= e!2960204 e!2960205)))

(declare-fun res!2011403 () Bool)

(assert (=> b!4745789 (=> (not res!2011403) (not e!2960205))))

(assert (=> b!4745789 (= res!2011403 (dynLambda!21887 lambda!220199 (h!59384 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))))))))

(declare-fun b!4745790 () Bool)

(assert (=> b!4745790 (= e!2960205 (forall!11711 (t!360425 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023))))) lambda!220199))))

(assert (= (and d!1516563 (not res!2011402)) b!4745789))

(assert (= (and b!4745789 res!2011403) b!4745790))

(declare-fun b_lambda!182717 () Bool)

(assert (=> (not b_lambda!182717) (not b!4745789)))

(declare-fun m!5702679 () Bool)

(assert (=> b!4745789 m!5702679))

(declare-fun m!5702681 () Bool)

(assert (=> b!4745790 m!5702681))

(assert (=> b!4745532 d!1516563))

(assert (=> b!4745572 d!1516405))

(assert (=> b!4745572 d!1516433))

(declare-fun bs!1137988 () Bool)

(declare-fun b!4745795 () Bool)

(assert (= bs!1137988 (and b!4745795 b!4745535)))

(declare-fun lambda!220242 () Int)

(assert (=> bs!1137988 (= (= (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023)))) (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220242 lambda!220196))))

(declare-fun bs!1137989 () Bool)

(assert (= bs!1137989 (and b!4745795 d!1516443)))

(assert (=> bs!1137989 (not (= lambda!220242 lambda!220206))))

(declare-fun bs!1137990 () Bool)

(assert (= bs!1137990 (and b!4745795 d!1516541)))

(assert (=> bs!1137990 (= (= (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023)))) (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220242 lambda!220241))))

(declare-fun bs!1137991 () Bool)

(assert (= bs!1137991 (and b!4745795 d!1516405)))

(assert (=> bs!1137991 (= (= (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023)))) lt!1908333) (= lambda!220242 lambda!220199))))

(declare-fun bs!1137992 () Bool)

(assert (= bs!1137992 (and b!4745795 d!1516449)))

(assert (=> bs!1137992 (not (= lambda!220242 lambda!220210))))

(declare-fun bs!1137993 () Bool)

(assert (= bs!1137993 (and b!4745795 b!4745536)))

(assert (=> bs!1137993 (= (= (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023)))) (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220242 lambda!220197))))

(assert (=> bs!1137993 (= (= (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023)))) lt!1908344) (= lambda!220242 lambda!220198))))

(assert (=> b!4745795 true))

(declare-fun bs!1137994 () Bool)

(declare-fun b!4745796 () Bool)

(assert (= bs!1137994 (and b!4745796 b!4745535)))

(declare-fun lambda!220243 () Int)

(assert (=> bs!1137994 (= (= (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023)))) (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220243 lambda!220196))))

(declare-fun bs!1137995 () Bool)

(assert (= bs!1137995 (and b!4745796 d!1516443)))

(assert (=> bs!1137995 (not (= lambda!220243 lambda!220206))))

(declare-fun bs!1137996 () Bool)

(assert (= bs!1137996 (and b!4745796 b!4745795)))

(assert (=> bs!1137996 (= lambda!220243 lambda!220242)))

(declare-fun bs!1137997 () Bool)

(assert (= bs!1137997 (and b!4745796 d!1516541)))

(assert (=> bs!1137997 (= (= (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023)))) (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220243 lambda!220241))))

(declare-fun bs!1137998 () Bool)

(assert (= bs!1137998 (and b!4745796 d!1516405)))

(assert (=> bs!1137998 (= (= (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023)))) lt!1908333) (= lambda!220243 lambda!220199))))

(declare-fun bs!1137999 () Bool)

(assert (= bs!1137999 (and b!4745796 d!1516449)))

(assert (=> bs!1137999 (not (= lambda!220243 lambda!220210))))

(declare-fun bs!1138000 () Bool)

(assert (= bs!1138000 (and b!4745796 b!4745536)))

(assert (=> bs!1138000 (= (= (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023)))) (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220243 lambda!220197))))

(assert (=> bs!1138000 (= (= (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023)))) lt!1908344) (= lambda!220243 lambda!220198))))

(assert (=> b!4745796 true))

(declare-fun lambda!220244 () Int)

(declare-fun lt!1908493 () ListMap!5401)

(assert (=> bs!1137994 (= (= lt!1908493 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220244 lambda!220196))))

(assert (=> bs!1137995 (not (= lambda!220244 lambda!220206))))

(assert (=> b!4745796 (= (= lt!1908493 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) (= lambda!220244 lambda!220243))))

(assert (=> bs!1137996 (= (= lt!1908493 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) (= lambda!220244 lambda!220242))))

(assert (=> bs!1137997 (= (= lt!1908493 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220244 lambda!220241))))

(assert (=> bs!1137998 (= (= lt!1908493 lt!1908333) (= lambda!220244 lambda!220199))))

(assert (=> bs!1137999 (not (= lambda!220244 lambda!220210))))

(assert (=> bs!1138000 (= (= lt!1908493 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220244 lambda!220197))))

(assert (=> bs!1138000 (= (= lt!1908493 lt!1908344) (= lambda!220244 lambda!220198))))

(assert (=> b!4745796 true))

(declare-fun bs!1138001 () Bool)

(declare-fun d!1516565 () Bool)

(assert (= bs!1138001 (and d!1516565 b!4745535)))

(declare-fun lt!1908482 () ListMap!5401)

(declare-fun lambda!220245 () Int)

(assert (=> bs!1138001 (= (= lt!1908482 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220245 lambda!220196))))

(declare-fun bs!1138002 () Bool)

(assert (= bs!1138002 (and d!1516565 d!1516443)))

(assert (=> bs!1138002 (not (= lambda!220245 lambda!220206))))

(declare-fun bs!1138003 () Bool)

(assert (= bs!1138003 (and d!1516565 b!4745796)))

(assert (=> bs!1138003 (= (= lt!1908482 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) (= lambda!220245 lambda!220243))))

(declare-fun bs!1138004 () Bool)

(assert (= bs!1138004 (and d!1516565 b!4745795)))

(assert (=> bs!1138004 (= (= lt!1908482 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) (= lambda!220245 lambda!220242))))

(declare-fun bs!1138005 () Bool)

(assert (= bs!1138005 (and d!1516565 d!1516541)))

(assert (=> bs!1138005 (= (= lt!1908482 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220245 lambda!220241))))

(declare-fun bs!1138006 () Bool)

(assert (= bs!1138006 (and d!1516565 d!1516449)))

(assert (=> bs!1138006 (not (= lambda!220245 lambda!220210))))

(declare-fun bs!1138007 () Bool)

(assert (= bs!1138007 (and d!1516565 b!4745536)))

(assert (=> bs!1138007 (= (= lt!1908482 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220245 lambda!220197))))

(assert (=> bs!1138007 (= (= lt!1908482 lt!1908344) (= lambda!220245 lambda!220198))))

(assert (=> bs!1138003 (= (= lt!1908482 lt!1908493) (= lambda!220245 lambda!220244))))

(declare-fun bs!1138008 () Bool)

(assert (= bs!1138008 (and d!1516565 d!1516405)))

(assert (=> bs!1138008 (= (= lt!1908482 lt!1908333) (= lambda!220245 lambda!220199))))

(assert (=> d!1516565 true))

(declare-fun b!4745792 () Bool)

(declare-fun res!2011406 () Bool)

(declare-fun e!2960207 () Bool)

(assert (=> b!4745792 (=> (not res!2011406) (not e!2960207))))

(assert (=> b!4745792 (= res!2011406 (forall!11711 (toList!6037 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) lambda!220245))))

(declare-fun bm!332123 () Bool)

(declare-fun call!332128 () Unit!134239)

(assert (=> bm!332123 (= call!332128 (lemmaContainsAllItsOwnKeys!840 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))))))

(declare-fun b!4745793 () Bool)

(declare-fun e!2960208 () Bool)

(assert (=> b!4745793 (= e!2960208 (forall!11711 (toList!6037 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) lambda!220244))))

(declare-fun b!4745794 () Bool)

(assert (=> b!4745794 (= e!2960207 (invariantList!1555 (toList!6037 lt!1908482)))))

(declare-fun e!2960209 () ListMap!5401)

(assert (=> b!4745795 (= e!2960209 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023)))))))

(declare-fun lt!1908481 () Unit!134239)

(assert (=> b!4745795 (= lt!1908481 call!332128)))

(declare-fun call!332130 () Bool)

(assert (=> b!4745795 call!332130))

(declare-fun lt!1908484 () Unit!134239)

(assert (=> b!4745795 (= lt!1908484 lt!1908481)))

(declare-fun call!332129 () Bool)

(assert (=> b!4745795 call!332129))

(declare-fun lt!1908499 () Unit!134239)

(declare-fun Unit!134270 () Unit!134239)

(assert (=> b!4745795 (= lt!1908499 Unit!134270)))

(declare-fun bm!332125 () Bool)

(declare-fun c!810600 () Bool)

(assert (=> bm!332125 (= call!332129 (forall!11711 (toList!6037 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) (ite c!810600 lambda!220242 lambda!220243)))))

(assert (=> b!4745796 (= e!2960209 lt!1908493)))

(declare-fun lt!1908480 () ListMap!5401)

(assert (=> b!4745796 (= lt!1908480 (+!2318 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023)))) (h!59384 (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023)))))))))

(assert (=> b!4745796 (= lt!1908493 (addToMapMapFromBucket!1504 (t!360425 (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023))))) (+!2318 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023)))) (h!59384 (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023))))))))))

(declare-fun lt!1908483 () Unit!134239)

(assert (=> b!4745796 (= lt!1908483 call!332128)))

(assert (=> b!4745796 call!332129))

(declare-fun lt!1908500 () Unit!134239)

(assert (=> b!4745796 (= lt!1908500 lt!1908483)))

(assert (=> b!4745796 (forall!11711 (toList!6037 lt!1908480) lambda!220244)))

(declare-fun lt!1908488 () Unit!134239)

(declare-fun Unit!134271 () Unit!134239)

(assert (=> b!4745796 (= lt!1908488 Unit!134271)))

(assert (=> b!4745796 (forall!11711 (t!360425 (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023))))) lambda!220244)))

(declare-fun lt!1908487 () Unit!134239)

(declare-fun Unit!134272 () Unit!134239)

(assert (=> b!4745796 (= lt!1908487 Unit!134272)))

(declare-fun lt!1908495 () Unit!134239)

(declare-fun Unit!134273 () Unit!134239)

(assert (=> b!4745796 (= lt!1908495 Unit!134273)))

(declare-fun lt!1908492 () Unit!134239)

(assert (=> b!4745796 (= lt!1908492 (forallContained!3745 (toList!6037 lt!1908480) lambda!220244 (h!59384 (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023)))))))))

(assert (=> b!4745796 (contains!16417 lt!1908480 (_1!30639 (h!59384 (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023)))))))))

(declare-fun lt!1908485 () Unit!134239)

(declare-fun Unit!134274 () Unit!134239)

(assert (=> b!4745796 (= lt!1908485 Unit!134274)))

(assert (=> b!4745796 (contains!16417 lt!1908493 (_1!30639 (h!59384 (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023)))))))))

(declare-fun lt!1908490 () Unit!134239)

(declare-fun Unit!134275 () Unit!134239)

(assert (=> b!4745796 (= lt!1908490 Unit!134275)))

(assert (=> b!4745796 call!332130))

(declare-fun lt!1908496 () Unit!134239)

(declare-fun Unit!134276 () Unit!134239)

(assert (=> b!4745796 (= lt!1908496 Unit!134276)))

(assert (=> b!4745796 (forall!11711 (toList!6037 lt!1908480) lambda!220244)))

(declare-fun lt!1908491 () Unit!134239)

(declare-fun Unit!134277 () Unit!134239)

(assert (=> b!4745796 (= lt!1908491 Unit!134277)))

(declare-fun lt!1908489 () Unit!134239)

(declare-fun Unit!134278 () Unit!134239)

(assert (=> b!4745796 (= lt!1908489 Unit!134278)))

(declare-fun lt!1908497 () Unit!134239)

(assert (=> b!4745796 (= lt!1908497 (addForallContainsKeyThenBeforeAdding!839 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023)))) lt!1908493 (_1!30639 (h!59384 (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023)))))) (_2!30639 (h!59384 (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023))))))))))

(assert (=> b!4745796 (forall!11711 (toList!6037 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) lambda!220244)))

(declare-fun lt!1908486 () Unit!134239)

(assert (=> b!4745796 (= lt!1908486 lt!1908497)))

(assert (=> b!4745796 (forall!11711 (toList!6037 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) lambda!220244)))

(declare-fun lt!1908498 () Unit!134239)

(declare-fun Unit!134279 () Unit!134239)

(assert (=> b!4745796 (= lt!1908498 Unit!134279)))

(declare-fun res!2011407 () Bool)

(assert (=> b!4745796 (= res!2011407 (forall!11711 (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023)))) lambda!220244))))

(assert (=> b!4745796 (=> (not res!2011407) (not e!2960208))))

(assert (=> b!4745796 e!2960208))

(declare-fun lt!1908494 () Unit!134239)

(declare-fun Unit!134280 () Unit!134239)

(assert (=> b!4745796 (= lt!1908494 Unit!134280)))

(declare-fun bm!332124 () Bool)

(assert (=> bm!332124 (= call!332130 (forall!11711 (ite c!810600 (toList!6037 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023))))) (ite c!810600 lambda!220242 lambda!220244)))))

(assert (=> d!1516565 e!2960207))

(declare-fun res!2011405 () Bool)

(assert (=> d!1516565 (=> (not res!2011405) (not e!2960207))))

(assert (=> d!1516565 (= res!2011405 (forall!11711 (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023)))) lambda!220245))))

(assert (=> d!1516565 (= lt!1908482 e!2960209)))

(assert (=> d!1516565 (= c!810600 ((_ is Nil!52993) (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023))))))))

(assert (=> d!1516565 (noDuplicateKeys!2074 (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023)))))))

(assert (=> d!1516565 (= (addToMapMapFromBucket!1504 (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023)))) (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) lt!1908482)))

(assert (= (and d!1516565 c!810600) b!4745795))

(assert (= (and d!1516565 (not c!810600)) b!4745796))

(assert (= (and b!4745796 res!2011407) b!4745793))

(assert (= (or b!4745795 b!4745796) bm!332123))

(assert (= (or b!4745795 b!4745796) bm!332125))

(assert (= (or b!4745795 b!4745796) bm!332124))

(assert (= (and d!1516565 res!2011405) b!4745792))

(assert (= (and b!4745792 res!2011406) b!4745794))

(declare-fun m!5702687 () Bool)

(assert (=> bm!332125 m!5702687))

(declare-fun m!5702689 () Bool)

(assert (=> bm!332124 m!5702689))

(declare-fun m!5702691 () Bool)

(assert (=> b!4745792 m!5702691))

(declare-fun m!5702693 () Bool)

(assert (=> b!4745793 m!5702693))

(assert (=> bm!332123 m!5702381))

(declare-fun m!5702695 () Bool)

(assert (=> bm!332123 m!5702695))

(declare-fun m!5702697 () Bool)

(assert (=> b!4745796 m!5702697))

(assert (=> b!4745796 m!5702693))

(assert (=> b!4745796 m!5702381))

(declare-fun m!5702699 () Bool)

(assert (=> b!4745796 m!5702699))

(declare-fun m!5702701 () Bool)

(assert (=> b!4745796 m!5702701))

(assert (=> b!4745796 m!5702381))

(declare-fun m!5702703 () Bool)

(assert (=> b!4745796 m!5702703))

(assert (=> b!4745796 m!5702697))

(declare-fun m!5702705 () Bool)

(assert (=> b!4745796 m!5702705))

(declare-fun m!5702707 () Bool)

(assert (=> b!4745796 m!5702707))

(assert (=> b!4745796 m!5702693))

(declare-fun m!5702709 () Bool)

(assert (=> b!4745796 m!5702709))

(declare-fun m!5702711 () Bool)

(assert (=> b!4745796 m!5702711))

(assert (=> b!4745796 m!5702699))

(declare-fun m!5702713 () Bool)

(assert (=> b!4745796 m!5702713))

(declare-fun m!5702715 () Bool)

(assert (=> d!1516565 m!5702715))

(declare-fun m!5702717 () Bool)

(assert (=> d!1516565 m!5702717))

(declare-fun m!5702719 () Bool)

(assert (=> b!4745794 m!5702719))

(assert (=> b!4745543 d!1516565))

(declare-fun bs!1138009 () Bool)

(declare-fun d!1516569 () Bool)

(assert (= bs!1138009 (and d!1516569 start!484472)))

(declare-fun lambda!220246 () Int)

(assert (=> bs!1138009 (= lambda!220246 lambda!220124)))

(declare-fun bs!1138010 () Bool)

(assert (= bs!1138010 (and d!1516569 d!1516433)))

(assert (=> bs!1138010 (= lambda!220246 lambda!220202)))

(declare-fun bs!1138011 () Bool)

(assert (= bs!1138011 (and d!1516569 d!1516437)))

(assert (=> bs!1138011 (= lambda!220246 lambda!220203)))

(declare-fun bs!1138012 () Bool)

(assert (= bs!1138012 (and d!1516569 d!1516445)))

(assert (=> bs!1138012 (not (= lambda!220246 lambda!220209))))

(declare-fun lt!1908509 () ListMap!5401)

(assert (=> d!1516569 (invariantList!1555 (toList!6037 lt!1908509))))

(declare-fun e!2960212 () ListMap!5401)

(assert (=> d!1516569 (= lt!1908509 e!2960212)))

(declare-fun c!810601 () Bool)

(assert (=> d!1516569 (= c!810601 ((_ is Cons!52994) (t!360426 (t!360426 (toList!6038 lm!2023)))))))

(assert (=> d!1516569 (forall!11709 (t!360426 (t!360426 (toList!6038 lm!2023))) lambda!220246)))

(assert (=> d!1516569 (= (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023)))) lt!1908509)))

(declare-fun b!4745799 () Bool)

(assert (=> b!4745799 (= e!2960212 (addToMapMapFromBucket!1504 (_2!30640 (h!59385 (t!360426 (t!360426 (toList!6038 lm!2023))))) (extractMap!2100 (t!360426 (t!360426 (t!360426 (toList!6038 lm!2023)))))))))

(declare-fun b!4745800 () Bool)

(assert (=> b!4745800 (= e!2960212 (ListMap!5402 Nil!52993))))

(assert (= (and d!1516569 c!810601) b!4745799))

(assert (= (and d!1516569 (not c!810601)) b!4745800))

(declare-fun m!5702721 () Bool)

(assert (=> d!1516569 m!5702721))

(declare-fun m!5702723 () Bool)

(assert (=> d!1516569 m!5702723))

(declare-fun m!5702725 () Bool)

(assert (=> b!4745799 m!5702725))

(assert (=> b!4745799 m!5702725))

(declare-fun m!5702727 () Bool)

(assert (=> b!4745799 m!5702727))

(assert (=> b!4745543 d!1516569))

(declare-fun d!1516571 () Bool)

(assert (=> d!1516571 (= (invariantList!1555 (toList!6037 lt!1908333)) (noDuplicatedKeys!392 (toList!6037 lt!1908333)))))

(declare-fun bs!1138013 () Bool)

(assert (= bs!1138013 d!1516571))

(declare-fun m!5702729 () Bool)

(assert (=> bs!1138013 m!5702729))

(assert (=> b!4745534 d!1516571))

(declare-fun d!1516573 () Bool)

(declare-fun res!2011412 () Bool)

(declare-fun e!2960213 () Bool)

(assert (=> d!1516573 (=> res!2011412 e!2960213)))

(assert (=> d!1516573 (= res!2011412 (not ((_ is Cons!52993) (t!360425 oldBucket!34))))))

(assert (=> d!1516573 (= (noDuplicateKeys!2074 (t!360425 oldBucket!34)) e!2960213)))

(declare-fun b!4745803 () Bool)

(declare-fun e!2960214 () Bool)

(assert (=> b!4745803 (= e!2960213 e!2960214)))

(declare-fun res!2011413 () Bool)

(assert (=> b!4745803 (=> (not res!2011413) (not e!2960214))))

(assert (=> b!4745803 (= res!2011413 (not (containsKey!3504 (t!360425 (t!360425 oldBucket!34)) (_1!30639 (h!59384 (t!360425 oldBucket!34))))))))

(declare-fun b!4745804 () Bool)

(assert (=> b!4745804 (= e!2960214 (noDuplicateKeys!2074 (t!360425 (t!360425 oldBucket!34))))))

(assert (= (and d!1516573 (not res!2011412)) b!4745803))

(assert (= (and b!4745803 res!2011413) b!4745804))

(declare-fun m!5702731 () Bool)

(assert (=> b!4745803 m!5702731))

(declare-fun m!5702733 () Bool)

(assert (=> b!4745804 m!5702733))

(assert (=> b!4745584 d!1516573))

(declare-fun d!1516575 () Bool)

(declare-fun res!2011414 () Bool)

(declare-fun e!2960215 () Bool)

(assert (=> d!1516575 (=> res!2011414 e!2960215)))

(assert (=> d!1516575 (= res!2011414 (and ((_ is Cons!52993) (t!360425 oldBucket!34)) (= (_1!30639 (h!59384 (t!360425 oldBucket!34))) (_1!30639 (h!59384 oldBucket!34)))))))

(assert (=> d!1516575 (= (containsKey!3504 (t!360425 oldBucket!34) (_1!30639 (h!59384 oldBucket!34))) e!2960215)))

(declare-fun b!4745805 () Bool)

(declare-fun e!2960216 () Bool)

(assert (=> b!4745805 (= e!2960215 e!2960216)))

(declare-fun res!2011415 () Bool)

(assert (=> b!4745805 (=> (not res!2011415) (not e!2960216))))

(assert (=> b!4745805 (= res!2011415 ((_ is Cons!52993) (t!360425 oldBucket!34)))))

(declare-fun b!4745806 () Bool)

(assert (=> b!4745806 (= e!2960216 (containsKey!3504 (t!360425 (t!360425 oldBucket!34)) (_1!30639 (h!59384 oldBucket!34))))))

(assert (= (and d!1516575 (not res!2011414)) b!4745805))

(assert (= (and b!4745805 res!2011415) b!4745806))

(declare-fun m!5702735 () Bool)

(assert (=> b!4745806 m!5702735))

(assert (=> b!4745583 d!1516575))

(assert (=> bs!1137928 d!1516551))

(assert (=> b!4745536 d!1516539))

(declare-fun d!1516577 () Bool)

(declare-fun res!2011416 () Bool)

(declare-fun e!2960217 () Bool)

(assert (=> d!1516577 (=> res!2011416 e!2960217)))

(assert (=> d!1516577 (= res!2011416 ((_ is Nil!52993) (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(assert (=> d!1516577 (= (forall!11711 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))) lambda!220198) e!2960217)))

(declare-fun b!4745807 () Bool)

(declare-fun e!2960218 () Bool)

(assert (=> b!4745807 (= e!2960217 e!2960218)))

(declare-fun res!2011417 () Bool)

(assert (=> b!4745807 (=> (not res!2011417) (not e!2960218))))

(assert (=> b!4745807 (= res!2011417 (dynLambda!21887 lambda!220198 (h!59384 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun b!4745808 () Bool)

(assert (=> b!4745808 (= e!2960218 (forall!11711 (t!360425 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023))))) lambda!220198))))

(assert (= (and d!1516577 (not res!2011416)) b!4745807))

(assert (= (and b!4745807 res!2011417) b!4745808))

(declare-fun b_lambda!182721 () Bool)

(assert (=> (not b_lambda!182721) (not b!4745807)))

(declare-fun m!5702737 () Bool)

(assert (=> b!4745807 m!5702737))

(declare-fun m!5702739 () Bool)

(assert (=> b!4745808 m!5702739))

(assert (=> b!4745536 d!1516577))

(declare-fun d!1516579 () Bool)

(declare-fun res!2011420 () Bool)

(declare-fun e!2960220 () Bool)

(assert (=> d!1516579 (=> res!2011420 e!2960220)))

(assert (=> d!1516579 (= res!2011420 ((_ is Nil!52993) (toList!6037 lt!1908331)))))

(assert (=> d!1516579 (= (forall!11711 (toList!6037 lt!1908331) lambda!220198) e!2960220)))

(declare-fun b!4745811 () Bool)

(declare-fun e!2960221 () Bool)

(assert (=> b!4745811 (= e!2960220 e!2960221)))

(declare-fun res!2011421 () Bool)

(assert (=> b!4745811 (=> (not res!2011421) (not e!2960221))))

(assert (=> b!4745811 (= res!2011421 (dynLambda!21887 lambda!220198 (h!59384 (toList!6037 lt!1908331))))))

(declare-fun b!4745812 () Bool)

(assert (=> b!4745812 (= e!2960221 (forall!11711 (t!360425 (toList!6037 lt!1908331)) lambda!220198))))

(assert (= (and d!1516579 (not res!2011420)) b!4745811))

(assert (= (and b!4745811 res!2011421) b!4745812))

(declare-fun b_lambda!182723 () Bool)

(assert (=> (not b_lambda!182723) (not b!4745811)))

(declare-fun m!5702743 () Bool)

(assert (=> b!4745811 m!5702743))

(declare-fun m!5702747 () Bool)

(assert (=> b!4745812 m!5702747))

(assert (=> b!4745536 d!1516579))

(declare-fun b!4745813 () Bool)

(declare-fun e!2960223 () List!53120)

(assert (=> b!4745813 (= e!2960223 (keys!19079 lt!1908331))))

(declare-fun b!4745814 () Bool)

(assert (=> b!4745814 false))

(declare-fun lt!1908519 () Unit!134239)

(declare-fun lt!1908517 () Unit!134239)

(assert (=> b!4745814 (= lt!1908519 lt!1908517)))

(assert (=> b!4745814 (containsKey!3506 (toList!6037 lt!1908331) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(assert (=> b!4745814 (= lt!1908517 (lemmaInGetKeysListThenContainsKey!993 (toList!6037 lt!1908331) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun e!2960226 () Unit!134239)

(declare-fun Unit!134281 () Unit!134239)

(assert (=> b!4745814 (= e!2960226 Unit!134281)))

(declare-fun b!4745815 () Bool)

(declare-fun e!2960225 () Unit!134239)

(assert (=> b!4745815 (= e!2960225 e!2960226)))

(declare-fun c!810603 () Bool)

(declare-fun call!332131 () Bool)

(assert (=> b!4745815 (= c!810603 call!332131)))

(declare-fun bm!332126 () Bool)

(assert (=> bm!332126 (= call!332131 (contains!16420 e!2960223 (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun c!810604 () Bool)

(declare-fun c!810602 () Bool)

(assert (=> bm!332126 (= c!810604 c!810602)))

(declare-fun b!4745817 () Bool)

(declare-fun lt!1908520 () Unit!134239)

(assert (=> b!4745817 (= e!2960225 lt!1908520)))

(declare-fun lt!1908516 () Unit!134239)

(assert (=> b!4745817 (= lt!1908516 (lemmaContainsKeyImpliesGetValueByKeyDefined!1931 (toList!6037 lt!1908331) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(assert (=> b!4745817 (isDefined!9744 (getValueByKey!2040 (toList!6037 lt!1908331) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun lt!1908515 () Unit!134239)

(assert (=> b!4745817 (= lt!1908515 lt!1908516)))

(assert (=> b!4745817 (= lt!1908520 (lemmaInListThenGetKeysListContains!989 (toList!6037 lt!1908331) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(assert (=> b!4745817 call!332131))

(declare-fun b!4745816 () Bool)

(declare-fun e!2960222 () Bool)

(assert (=> b!4745816 (= e!2960222 (not (contains!16420 (keys!19079 lt!1908331) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))))

(declare-fun d!1516581 () Bool)

(declare-fun e!2960224 () Bool)

(assert (=> d!1516581 e!2960224))

(declare-fun res!2011424 () Bool)

(assert (=> d!1516581 (=> res!2011424 e!2960224)))

(assert (=> d!1516581 (= res!2011424 e!2960222)))

(declare-fun res!2011423 () Bool)

(assert (=> d!1516581 (=> (not res!2011423) (not e!2960222))))

(declare-fun lt!1908518 () Bool)

(assert (=> d!1516581 (= res!2011423 (not lt!1908518))))

(declare-fun lt!1908521 () Bool)

(assert (=> d!1516581 (= lt!1908518 lt!1908521)))

(declare-fun lt!1908514 () Unit!134239)

(assert (=> d!1516581 (= lt!1908514 e!2960225)))

(assert (=> d!1516581 (= c!810602 lt!1908521)))

(assert (=> d!1516581 (= lt!1908521 (containsKey!3506 (toList!6037 lt!1908331) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(assert (=> d!1516581 (= (contains!16417 lt!1908331 (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) lt!1908518)))

(declare-fun b!4745818 () Bool)

(declare-fun e!2960227 () Bool)

(assert (=> b!4745818 (= e!2960224 e!2960227)))

(declare-fun res!2011422 () Bool)

(assert (=> b!4745818 (=> (not res!2011422) (not e!2960227))))

(assert (=> b!4745818 (= res!2011422 (isDefined!9744 (getValueByKey!2040 (toList!6037 lt!1908331) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))))

(declare-fun b!4745819 () Bool)

(assert (=> b!4745819 (= e!2960227 (contains!16420 (keys!19079 lt!1908331) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun b!4745820 () Bool)

(assert (=> b!4745820 (= e!2960223 (getKeysList!994 (toList!6037 lt!1908331)))))

(declare-fun b!4745821 () Bool)

(declare-fun Unit!134284 () Unit!134239)

(assert (=> b!4745821 (= e!2960226 Unit!134284)))

(assert (= (and d!1516581 c!810602) b!4745817))

(assert (= (and d!1516581 (not c!810602)) b!4745815))

(assert (= (and b!4745815 c!810603) b!4745814))

(assert (= (and b!4745815 (not c!810603)) b!4745821))

(assert (= (or b!4745817 b!4745815) bm!332126))

(assert (= (and bm!332126 c!810604) b!4745820))

(assert (= (and bm!332126 (not c!810604)) b!4745813))

(assert (= (and d!1516581 res!2011423) b!4745816))

(assert (= (and d!1516581 (not res!2011424)) b!4745818))

(assert (= (and b!4745818 res!2011422) b!4745819))

(declare-fun m!5702761 () Bool)

(assert (=> b!4745817 m!5702761))

(declare-fun m!5702763 () Bool)

(assert (=> b!4745817 m!5702763))

(assert (=> b!4745817 m!5702763))

(declare-fun m!5702765 () Bool)

(assert (=> b!4745817 m!5702765))

(declare-fun m!5702767 () Bool)

(assert (=> b!4745817 m!5702767))

(assert (=> b!4745818 m!5702763))

(assert (=> b!4745818 m!5702763))

(assert (=> b!4745818 m!5702765))

(declare-fun m!5702769 () Bool)

(assert (=> b!4745814 m!5702769))

(declare-fun m!5702771 () Bool)

(assert (=> b!4745814 m!5702771))

(declare-fun m!5702773 () Bool)

(assert (=> b!4745820 m!5702773))

(assert (=> d!1516581 m!5702769))

(declare-fun m!5702775 () Bool)

(assert (=> b!4745819 m!5702775))

(assert (=> b!4745819 m!5702775))

(declare-fun m!5702777 () Bool)

(assert (=> b!4745819 m!5702777))

(declare-fun m!5702779 () Bool)

(assert (=> bm!332126 m!5702779))

(assert (=> b!4745816 m!5702775))

(assert (=> b!4745816 m!5702775))

(assert (=> b!4745816 m!5702777))

(assert (=> b!4745813 m!5702775))

(assert (=> b!4745536 d!1516581))

(declare-fun bs!1138021 () Bool)

(declare-fun b!4745832 () Bool)

(assert (= bs!1138021 (and b!4745832 b!4745535)))

(declare-fun lambda!220248 () Int)

(assert (=> bs!1138021 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220248 lambda!220196))))

(declare-fun bs!1138024 () Bool)

(assert (= bs!1138024 (and b!4745832 d!1516443)))

(assert (=> bs!1138024 (not (= lambda!220248 lambda!220206))))

(declare-fun bs!1138025 () Bool)

(assert (= bs!1138025 (and b!4745832 b!4745796)))

(assert (=> bs!1138025 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) (= lambda!220248 lambda!220243))))

(declare-fun bs!1138026 () Bool)

(assert (= bs!1138026 (and b!4745832 b!4745795)))

(assert (=> bs!1138026 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) (= lambda!220248 lambda!220242))))

(declare-fun bs!1138027 () Bool)

(assert (= bs!1138027 (and b!4745832 d!1516541)))

(assert (=> bs!1138027 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220248 lambda!220241))))

(declare-fun bs!1138028 () Bool)

(assert (= bs!1138028 (and b!4745832 d!1516449)))

(assert (=> bs!1138028 (not (= lambda!220248 lambda!220210))))

(declare-fun bs!1138029 () Bool)

(assert (= bs!1138029 (and b!4745832 b!4745536)))

(assert (=> bs!1138029 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220248 lambda!220197))))

(declare-fun bs!1138030 () Bool)

(assert (= bs!1138030 (and b!4745832 d!1516565)))

(assert (=> bs!1138030 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) lt!1908482) (= lambda!220248 lambda!220245))))

(assert (=> bs!1138029 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) lt!1908344) (= lambda!220248 lambda!220198))))

(assert (=> bs!1138025 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) lt!1908493) (= lambda!220248 lambda!220244))))

(declare-fun bs!1138033 () Bool)

(assert (= bs!1138033 (and b!4745832 d!1516405)))

(assert (=> bs!1138033 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) lt!1908333) (= lambda!220248 lambda!220199))))

(assert (=> b!4745832 true))

(declare-fun bs!1138039 () Bool)

(declare-fun b!4745833 () Bool)

(assert (= bs!1138039 (and b!4745833 b!4745535)))

(declare-fun lambda!220250 () Int)

(assert (=> bs!1138039 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220250 lambda!220196))))

(declare-fun bs!1138042 () Bool)

(assert (= bs!1138042 (and b!4745833 d!1516443)))

(assert (=> bs!1138042 (not (= lambda!220250 lambda!220206))))

(declare-fun bs!1138044 () Bool)

(assert (= bs!1138044 (and b!4745833 b!4745796)))

(assert (=> bs!1138044 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) (= lambda!220250 lambda!220243))))

(declare-fun bs!1138045 () Bool)

(assert (= bs!1138045 (and b!4745833 b!4745795)))

(assert (=> bs!1138045 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) (= lambda!220250 lambda!220242))))

(declare-fun bs!1138046 () Bool)

(assert (= bs!1138046 (and b!4745833 d!1516541)))

(assert (=> bs!1138046 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220250 lambda!220241))))

(declare-fun bs!1138047 () Bool)

(assert (= bs!1138047 (and b!4745833 d!1516449)))

(assert (=> bs!1138047 (not (= lambda!220250 lambda!220210))))

(declare-fun bs!1138048 () Bool)

(assert (= bs!1138048 (and b!4745833 b!4745536)))

(assert (=> bs!1138048 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220250 lambda!220197))))

(declare-fun bs!1138049 () Bool)

(assert (= bs!1138049 (and b!4745833 d!1516565)))

(assert (=> bs!1138049 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) lt!1908482) (= lambda!220250 lambda!220245))))

(assert (=> bs!1138048 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) lt!1908344) (= lambda!220250 lambda!220198))))

(declare-fun bs!1138050 () Bool)

(assert (= bs!1138050 (and b!4745833 b!4745832)))

(assert (=> bs!1138050 (= lambda!220250 lambda!220248)))

(assert (=> bs!1138044 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) lt!1908493) (= lambda!220250 lambda!220244))))

(declare-fun bs!1138051 () Bool)

(assert (= bs!1138051 (and b!4745833 d!1516405)))

(assert (=> bs!1138051 (= (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) lt!1908333) (= lambda!220250 lambda!220199))))

(assert (=> b!4745833 true))

(declare-fun lt!1908556 () ListMap!5401)

(declare-fun lambda!220252 () Int)

(assert (=> bs!1138039 (= (= lt!1908556 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220252 lambda!220196))))

(assert (=> bs!1138042 (not (= lambda!220252 lambda!220206))))

(assert (=> bs!1138044 (= (= lt!1908556 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) (= lambda!220252 lambda!220243))))

(assert (=> bs!1138045 (= (= lt!1908556 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) (= lambda!220252 lambda!220242))))

(assert (=> bs!1138046 (= (= lt!1908556 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220252 lambda!220241))))

(assert (=> bs!1138047 (not (= lambda!220252 lambda!220210))))

(assert (=> bs!1138048 (= (= lt!1908556 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220252 lambda!220197))))

(assert (=> b!4745833 (= (= lt!1908556 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) (= lambda!220252 lambda!220250))))

(assert (=> bs!1138049 (= (= lt!1908556 lt!1908482) (= lambda!220252 lambda!220245))))

(assert (=> bs!1138048 (= (= lt!1908556 lt!1908344) (= lambda!220252 lambda!220198))))

(assert (=> bs!1138050 (= (= lt!1908556 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) (= lambda!220252 lambda!220248))))

(assert (=> bs!1138044 (= (= lt!1908556 lt!1908493) (= lambda!220252 lambda!220244))))

(assert (=> bs!1138051 (= (= lt!1908556 lt!1908333) (= lambda!220252 lambda!220199))))

(assert (=> b!4745833 true))

(declare-fun bs!1138058 () Bool)

(declare-fun d!1516587 () Bool)

(assert (= bs!1138058 (and d!1516587 b!4745535)))

(declare-fun lt!1908545 () ListMap!5401)

(declare-fun lambda!220254 () Int)

(assert (=> bs!1138058 (= (= lt!1908545 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220254 lambda!220196))))

(declare-fun bs!1138060 () Bool)

(assert (= bs!1138060 (and d!1516587 d!1516443)))

(assert (=> bs!1138060 (not (= lambda!220254 lambda!220206))))

(declare-fun bs!1138062 () Bool)

(assert (= bs!1138062 (and d!1516587 b!4745796)))

(assert (=> bs!1138062 (= (= lt!1908545 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) (= lambda!220254 lambda!220243))))

(declare-fun bs!1138063 () Bool)

(assert (= bs!1138063 (and d!1516587 b!4745795)))

(assert (=> bs!1138063 (= (= lt!1908545 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) (= lambda!220254 lambda!220242))))

(declare-fun bs!1138065 () Bool)

(assert (= bs!1138065 (and d!1516587 d!1516541)))

(assert (=> bs!1138065 (= (= lt!1908545 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220254 lambda!220241))))

(declare-fun bs!1138067 () Bool)

(assert (= bs!1138067 (and d!1516587 d!1516449)))

(assert (=> bs!1138067 (not (= lambda!220254 lambda!220210))))

(declare-fun bs!1138069 () Bool)

(assert (= bs!1138069 (and d!1516587 b!4745536)))

(assert (=> bs!1138069 (= (= lt!1908545 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220254 lambda!220197))))

(declare-fun bs!1138070 () Bool)

(assert (= bs!1138070 (and d!1516587 b!4745833)))

(assert (=> bs!1138070 (= (= lt!1908545 lt!1908556) (= lambda!220254 lambda!220252))))

(assert (=> bs!1138070 (= (= lt!1908545 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) (= lambda!220254 lambda!220250))))

(declare-fun bs!1138071 () Bool)

(assert (= bs!1138071 (and d!1516587 d!1516565)))

(assert (=> bs!1138071 (= (= lt!1908545 lt!1908482) (= lambda!220254 lambda!220245))))

(assert (=> bs!1138069 (= (= lt!1908545 lt!1908344) (= lambda!220254 lambda!220198))))

(declare-fun bs!1138072 () Bool)

(assert (= bs!1138072 (and d!1516587 b!4745832)))

(assert (=> bs!1138072 (= (= lt!1908545 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) (= lambda!220254 lambda!220248))))

(assert (=> bs!1138062 (= (= lt!1908545 lt!1908493) (= lambda!220254 lambda!220244))))

(declare-fun bs!1138073 () Bool)

(assert (= bs!1138073 (and d!1516587 d!1516405)))

(assert (=> bs!1138073 (= (= lt!1908545 lt!1908333) (= lambda!220254 lambda!220199))))

(assert (=> d!1516587 true))

(declare-fun b!4745829 () Bool)

(declare-fun res!2011431 () Bool)

(declare-fun e!2960233 () Bool)

(assert (=> b!4745829 (=> (not res!2011431) (not e!2960233))))

(assert (=> b!4745829 (= res!2011431 (forall!11711 (toList!6037 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) lambda!220254))))

(declare-fun bm!332130 () Bool)

(declare-fun call!332135 () Unit!134239)

(assert (=> bm!332130 (= call!332135 (lemmaContainsAllItsOwnKeys!840 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun b!4745830 () Bool)

(declare-fun e!2960234 () Bool)

(assert (=> b!4745830 (= e!2960234 (forall!11711 (toList!6037 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) lambda!220252))))

(declare-fun b!4745831 () Bool)

(assert (=> b!4745831 (= e!2960233 (invariantList!1555 (toList!6037 lt!1908545)))))

(declare-fun e!2960235 () ListMap!5401)

(assert (=> b!4745832 (= e!2960235 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(declare-fun lt!1908544 () Unit!134239)

(assert (=> b!4745832 (= lt!1908544 call!332135)))

(declare-fun call!332137 () Bool)

(assert (=> b!4745832 call!332137))

(declare-fun lt!1908547 () Unit!134239)

(assert (=> b!4745832 (= lt!1908547 lt!1908544)))

(declare-fun call!332136 () Bool)

(assert (=> b!4745832 call!332136))

(declare-fun lt!1908562 () Unit!134239)

(declare-fun Unit!134285 () Unit!134239)

(assert (=> b!4745832 (= lt!1908562 Unit!134285)))

(declare-fun c!810606 () Bool)

(declare-fun bm!332132 () Bool)

(assert (=> bm!332132 (= call!332136 (forall!11711 (toList!6037 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) (ite c!810606 lambda!220248 lambda!220250)))))

(assert (=> b!4745833 (= e!2960235 lt!1908556)))

(declare-fun lt!1908543 () ListMap!5401)

(assert (=> b!4745833 (= lt!1908543 (+!2318 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (h!59384 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(assert (=> b!4745833 (= lt!1908556 (addToMapMapFromBucket!1504 (t!360425 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (+!2318 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (h!59384 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))))

(declare-fun lt!1908546 () Unit!134239)

(assert (=> b!4745833 (= lt!1908546 call!332135)))

(assert (=> b!4745833 call!332136))

(declare-fun lt!1908563 () Unit!134239)

(assert (=> b!4745833 (= lt!1908563 lt!1908546)))

(assert (=> b!4745833 (forall!11711 (toList!6037 lt!1908543) lambda!220252)))

(declare-fun lt!1908551 () Unit!134239)

(declare-fun Unit!134286 () Unit!134239)

(assert (=> b!4745833 (= lt!1908551 Unit!134286)))

(assert (=> b!4745833 (forall!11711 (t!360425 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023))))) lambda!220252)))

(declare-fun lt!1908550 () Unit!134239)

(declare-fun Unit!134287 () Unit!134239)

(assert (=> b!4745833 (= lt!1908550 Unit!134287)))

(declare-fun lt!1908558 () Unit!134239)

(declare-fun Unit!134288 () Unit!134239)

(assert (=> b!4745833 (= lt!1908558 Unit!134288)))

(declare-fun lt!1908555 () Unit!134239)

(assert (=> b!4745833 (= lt!1908555 (forallContained!3745 (toList!6037 lt!1908543) lambda!220252 (h!59384 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(assert (=> b!4745833 (contains!16417 lt!1908543 (_1!30639 (h!59384 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun lt!1908548 () Unit!134239)

(declare-fun Unit!134289 () Unit!134239)

(assert (=> b!4745833 (= lt!1908548 Unit!134289)))

(assert (=> b!4745833 (contains!16417 lt!1908556 (_1!30639 (h!59384 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun lt!1908553 () Unit!134239)

(declare-fun Unit!134290 () Unit!134239)

(assert (=> b!4745833 (= lt!1908553 Unit!134290)))

(assert (=> b!4745833 call!332137))

(declare-fun lt!1908559 () Unit!134239)

(declare-fun Unit!134291 () Unit!134239)

(assert (=> b!4745833 (= lt!1908559 Unit!134291)))

(assert (=> b!4745833 (forall!11711 (toList!6037 lt!1908543) lambda!220252)))

(declare-fun lt!1908554 () Unit!134239)

(declare-fun Unit!134292 () Unit!134239)

(assert (=> b!4745833 (= lt!1908554 Unit!134292)))

(declare-fun lt!1908552 () Unit!134239)

(declare-fun Unit!134293 () Unit!134239)

(assert (=> b!4745833 (= lt!1908552 Unit!134293)))

(declare-fun lt!1908560 () Unit!134239)

(assert (=> b!4745833 (= lt!1908560 (addForallContainsKeyThenBeforeAdding!839 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) lt!1908556 (_1!30639 (h!59384 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) (_2!30639 (h!59384 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))))

(assert (=> b!4745833 (forall!11711 (toList!6037 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) lambda!220252)))

(declare-fun lt!1908549 () Unit!134239)

(assert (=> b!4745833 (= lt!1908549 lt!1908560)))

(assert (=> b!4745833 (forall!11711 (toList!6037 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) lambda!220252)))

(declare-fun lt!1908561 () Unit!134239)

(declare-fun Unit!134294 () Unit!134239)

(assert (=> b!4745833 (= lt!1908561 Unit!134294)))

(declare-fun res!2011432 () Bool)

(assert (=> b!4745833 (= res!2011432 (forall!11711 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))) lambda!220252))))

(assert (=> b!4745833 (=> (not res!2011432) (not e!2960234))))

(assert (=> b!4745833 e!2960234))

(declare-fun lt!1908557 () Unit!134239)

(declare-fun Unit!134295 () Unit!134239)

(assert (=> b!4745833 (= lt!1908557 Unit!134295)))

(declare-fun bm!332131 () Bool)

(assert (=> bm!332131 (= call!332137 (forall!11711 (ite c!810606 (toList!6037 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (ite c!810606 lambda!220248 lambda!220252)))))

(assert (=> d!1516587 e!2960233))

(declare-fun res!2011430 () Bool)

(assert (=> d!1516587 (=> (not res!2011430) (not e!2960233))))

(assert (=> d!1516587 (= res!2011430 (forall!11711 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))) lambda!220254))))

(assert (=> d!1516587 (= lt!1908545 e!2960235)))

(assert (=> d!1516587 (= c!810606 ((_ is Nil!52993) (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(assert (=> d!1516587 (noDuplicateKeys!2074 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))

(assert (=> d!1516587 (= (addToMapMapFromBucket!1504 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))) (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) lt!1908545)))

(assert (= (and d!1516587 c!810606) b!4745832))

(assert (= (and d!1516587 (not c!810606)) b!4745833))

(assert (= (and b!4745833 res!2011432) b!4745830))

(assert (= (or b!4745832 b!4745833) bm!332130))

(assert (= (or b!4745832 b!4745833) bm!332132))

(assert (= (or b!4745832 b!4745833) bm!332131))

(assert (= (and d!1516587 res!2011430) b!4745829))

(assert (= (and b!4745829 res!2011431) b!4745831))

(declare-fun m!5702793 () Bool)

(assert (=> bm!332132 m!5702793))

(declare-fun m!5702799 () Bool)

(assert (=> bm!332131 m!5702799))

(declare-fun m!5702803 () Bool)

(assert (=> b!4745829 m!5702803))

(declare-fun m!5702807 () Bool)

(assert (=> b!4745830 m!5702807))

(assert (=> bm!332130 m!5702355))

(declare-fun m!5702811 () Bool)

(assert (=> bm!332130 m!5702811))

(declare-fun m!5702813 () Bool)

(assert (=> b!4745833 m!5702813))

(assert (=> b!4745833 m!5702807))

(assert (=> b!4745833 m!5702355))

(declare-fun m!5702819 () Bool)

(assert (=> b!4745833 m!5702819))

(declare-fun m!5702823 () Bool)

(assert (=> b!4745833 m!5702823))

(assert (=> b!4745833 m!5702355))

(declare-fun m!5702827 () Bool)

(assert (=> b!4745833 m!5702827))

(assert (=> b!4745833 m!5702813))

(declare-fun m!5702833 () Bool)

(assert (=> b!4745833 m!5702833))

(declare-fun m!5702837 () Bool)

(assert (=> b!4745833 m!5702837))

(assert (=> b!4745833 m!5702807))

(declare-fun m!5702839 () Bool)

(assert (=> b!4745833 m!5702839))

(declare-fun m!5702841 () Bool)

(assert (=> b!4745833 m!5702841))

(assert (=> b!4745833 m!5702819))

(declare-fun m!5702843 () Bool)

(assert (=> b!4745833 m!5702843))

(declare-fun m!5702845 () Bool)

(assert (=> d!1516587 m!5702845))

(assert (=> d!1516587 m!5702661))

(declare-fun m!5702847 () Bool)

(assert (=> b!4745831 m!5702847))

(assert (=> b!4745536 d!1516587))

(declare-fun d!1516591 () Bool)

(declare-fun res!2011436 () Bool)

(declare-fun e!2960242 () Bool)

(assert (=> d!1516591 (=> res!2011436 e!2960242)))

(assert (=> d!1516591 (= res!2011436 ((_ is Nil!52993) (_2!30640 (h!59385 (toList!6038 lm!2023)))))))

(assert (=> d!1516591 (= (forall!11711 (_2!30640 (h!59385 (toList!6038 lm!2023))) lambda!220198) e!2960242)))

(declare-fun b!4745843 () Bool)

(declare-fun e!2960243 () Bool)

(assert (=> b!4745843 (= e!2960242 e!2960243)))

(declare-fun res!2011437 () Bool)

(assert (=> b!4745843 (=> (not res!2011437) (not e!2960243))))

(assert (=> b!4745843 (= res!2011437 (dynLambda!21887 lambda!220198 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(declare-fun b!4745844 () Bool)

(assert (=> b!4745844 (= e!2960243 (forall!11711 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))) lambda!220198))))

(assert (= (and d!1516591 (not res!2011436)) b!4745843))

(assert (= (and b!4745843 res!2011437) b!4745844))

(declare-fun b_lambda!182727 () Bool)

(assert (=> (not b_lambda!182727) (not b!4745843)))

(declare-fun m!5702849 () Bool)

(assert (=> b!4745843 m!5702849))

(assert (=> b!4745844 m!5702357))

(assert (=> b!4745536 d!1516591))

(declare-fun bs!1138074 () Bool)

(declare-fun d!1516593 () Bool)

(assert (= bs!1138074 (and d!1516593 b!4745535)))

(declare-fun lambda!220265 () Int)

(assert (=> bs!1138074 (= (= lt!1908344 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220265 lambda!220196))))

(declare-fun bs!1138075 () Bool)

(assert (= bs!1138075 (and d!1516593 d!1516443)))

(assert (=> bs!1138075 (not (= lambda!220265 lambda!220206))))

(declare-fun bs!1138076 () Bool)

(assert (= bs!1138076 (and d!1516593 b!4745796)))

(assert (=> bs!1138076 (= (= lt!1908344 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) (= lambda!220265 lambda!220243))))

(declare-fun bs!1138077 () Bool)

(assert (= bs!1138077 (and d!1516593 b!4745795)))

(assert (=> bs!1138077 (= (= lt!1908344 (extractMap!2100 (t!360426 (t!360426 (toList!6038 lm!2023))))) (= lambda!220265 lambda!220242))))

(declare-fun bs!1138078 () Bool)

(assert (= bs!1138078 (and d!1516593 d!1516541)))

(assert (=> bs!1138078 (= (= lt!1908344 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220265 lambda!220241))))

(declare-fun bs!1138079 () Bool)

(assert (= bs!1138079 (and d!1516593 d!1516449)))

(assert (=> bs!1138079 (not (= lambda!220265 lambda!220210))))

(declare-fun bs!1138080 () Bool)

(assert (= bs!1138080 (and d!1516593 b!4745536)))

(assert (=> bs!1138080 (= (= lt!1908344 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (= lambda!220265 lambda!220197))))

(declare-fun bs!1138081 () Bool)

(assert (= bs!1138081 (and d!1516593 d!1516587)))

(assert (=> bs!1138081 (= (= lt!1908344 lt!1908545) (= lambda!220265 lambda!220254))))

(declare-fun bs!1138082 () Bool)

(assert (= bs!1138082 (and d!1516593 b!4745833)))

(assert (=> bs!1138082 (= (= lt!1908344 lt!1908556) (= lambda!220265 lambda!220252))))

(assert (=> bs!1138082 (= (= lt!1908344 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) (= lambda!220265 lambda!220250))))

(declare-fun bs!1138083 () Bool)

(assert (= bs!1138083 (and d!1516593 d!1516565)))

(assert (=> bs!1138083 (= (= lt!1908344 lt!1908482) (= lambda!220265 lambda!220245))))

(assert (=> bs!1138080 (= lambda!220265 lambda!220198)))

(declare-fun bs!1138084 () Bool)

(assert (= bs!1138084 (and d!1516593 b!4745832)))

(assert (=> bs!1138084 (= (= lt!1908344 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) (= lambda!220265 lambda!220248))))

(assert (=> bs!1138076 (= (= lt!1908344 lt!1908493) (= lambda!220265 lambda!220244))))

(declare-fun bs!1138085 () Bool)

(assert (= bs!1138085 (and d!1516593 d!1516405)))

(assert (=> bs!1138085 (= (= lt!1908344 lt!1908333) (= lambda!220265 lambda!220199))))

(assert (=> d!1516593 true))

(assert (=> d!1516593 (forall!11711 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) lambda!220265)))

(declare-fun lt!1908577 () Unit!134239)

(declare-fun choose!33748 (ListMap!5401 ListMap!5401 K!14335 V!14581) Unit!134239)

(assert (=> d!1516593 (= lt!1908577 (choose!33748 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) lt!1908344 (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (_2!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(assert (=> d!1516593 (forall!11711 (toList!6037 (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (tuple2!54691 (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (_2!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))) lambda!220265)))

(assert (=> d!1516593 (= (addForallContainsKeyThenBeforeAdding!839 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) lt!1908344 (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (_2!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) lt!1908577)))

(declare-fun bs!1138086 () Bool)

(assert (= bs!1138086 d!1516593))

(declare-fun m!5702893 () Bool)

(assert (=> bs!1138086 m!5702893))

(assert (=> bs!1138086 m!5702193))

(declare-fun m!5702895 () Bool)

(assert (=> bs!1138086 m!5702895))

(assert (=> bs!1138086 m!5702193))

(declare-fun m!5702897 () Bool)

(assert (=> bs!1138086 m!5702897))

(declare-fun m!5702899 () Bool)

(assert (=> bs!1138086 m!5702899))

(assert (=> b!4745536 d!1516593))

(declare-fun b!4745861 () Bool)

(declare-fun e!2960252 () List!53120)

(assert (=> b!4745861 (= e!2960252 (keys!19079 lt!1908344))))

(declare-fun b!4745862 () Bool)

(assert (=> b!4745862 false))

(declare-fun lt!1908583 () Unit!134239)

(declare-fun lt!1908581 () Unit!134239)

(assert (=> b!4745862 (= lt!1908583 lt!1908581)))

(assert (=> b!4745862 (containsKey!3506 (toList!6037 lt!1908344) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(assert (=> b!4745862 (= lt!1908581 (lemmaInGetKeysListThenContainsKey!993 (toList!6037 lt!1908344) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun e!2960255 () Unit!134239)

(declare-fun Unit!134304 () Unit!134239)

(assert (=> b!4745862 (= e!2960255 Unit!134304)))

(declare-fun b!4745863 () Bool)

(declare-fun e!2960254 () Unit!134239)

(assert (=> b!4745863 (= e!2960254 e!2960255)))

(declare-fun c!810611 () Bool)

(declare-fun call!332139 () Bool)

(assert (=> b!4745863 (= c!810611 call!332139)))

(declare-fun bm!332134 () Bool)

(assert (=> bm!332134 (= call!332139 (contains!16420 e!2960252 (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun c!810612 () Bool)

(declare-fun c!810610 () Bool)

(assert (=> bm!332134 (= c!810612 c!810610)))

(declare-fun b!4745865 () Bool)

(declare-fun lt!1908584 () Unit!134239)

(assert (=> b!4745865 (= e!2960254 lt!1908584)))

(declare-fun lt!1908580 () Unit!134239)

(assert (=> b!4745865 (= lt!1908580 (lemmaContainsKeyImpliesGetValueByKeyDefined!1931 (toList!6037 lt!1908344) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(assert (=> b!4745865 (isDefined!9744 (getValueByKey!2040 (toList!6037 lt!1908344) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun lt!1908579 () Unit!134239)

(assert (=> b!4745865 (= lt!1908579 lt!1908580)))

(assert (=> b!4745865 (= lt!1908584 (lemmaInListThenGetKeysListContains!989 (toList!6037 lt!1908344) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(assert (=> b!4745865 call!332139))

(declare-fun b!4745864 () Bool)

(declare-fun e!2960251 () Bool)

(assert (=> b!4745864 (= e!2960251 (not (contains!16420 (keys!19079 lt!1908344) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))))

(declare-fun d!1516603 () Bool)

(declare-fun e!2960253 () Bool)

(assert (=> d!1516603 e!2960253))

(declare-fun res!2011453 () Bool)

(assert (=> d!1516603 (=> res!2011453 e!2960253)))

(assert (=> d!1516603 (= res!2011453 e!2960251)))

(declare-fun res!2011452 () Bool)

(assert (=> d!1516603 (=> (not res!2011452) (not e!2960251))))

(declare-fun lt!1908582 () Bool)

(assert (=> d!1516603 (= res!2011452 (not lt!1908582))))

(declare-fun lt!1908585 () Bool)

(assert (=> d!1516603 (= lt!1908582 lt!1908585)))

(declare-fun lt!1908578 () Unit!134239)

(assert (=> d!1516603 (= lt!1908578 e!2960254)))

(assert (=> d!1516603 (= c!810610 lt!1908585)))

(assert (=> d!1516603 (= lt!1908585 (containsKey!3506 (toList!6037 lt!1908344) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(assert (=> d!1516603 (= (contains!16417 lt!1908344 (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) lt!1908582)))

(declare-fun b!4745866 () Bool)

(declare-fun e!2960256 () Bool)

(assert (=> b!4745866 (= e!2960253 e!2960256)))

(declare-fun res!2011451 () Bool)

(assert (=> b!4745866 (=> (not res!2011451) (not e!2960256))))

(assert (=> b!4745866 (= res!2011451 (isDefined!9744 (getValueByKey!2040 (toList!6037 lt!1908344) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))))

(declare-fun b!4745867 () Bool)

(assert (=> b!4745867 (= e!2960256 (contains!16420 (keys!19079 lt!1908344) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun b!4745868 () Bool)

(assert (=> b!4745868 (= e!2960252 (getKeysList!994 (toList!6037 lt!1908344)))))

(declare-fun b!4745869 () Bool)

(declare-fun Unit!134308 () Unit!134239)

(assert (=> b!4745869 (= e!2960255 Unit!134308)))

(assert (= (and d!1516603 c!810610) b!4745865))

(assert (= (and d!1516603 (not c!810610)) b!4745863))

(assert (= (and b!4745863 c!810611) b!4745862))

(assert (= (and b!4745863 (not c!810611)) b!4745869))

(assert (= (or b!4745865 b!4745863) bm!332134))

(assert (= (and bm!332134 c!810612) b!4745868))

(assert (= (and bm!332134 (not c!810612)) b!4745861))

(assert (= (and d!1516603 res!2011452) b!4745864))

(assert (= (and d!1516603 (not res!2011453)) b!4745866))

(assert (= (and b!4745866 res!2011451) b!4745867))

(declare-fun m!5702901 () Bool)

(assert (=> b!4745865 m!5702901))

(declare-fun m!5702903 () Bool)

(assert (=> b!4745865 m!5702903))

(assert (=> b!4745865 m!5702903))

(declare-fun m!5702905 () Bool)

(assert (=> b!4745865 m!5702905))

(declare-fun m!5702907 () Bool)

(assert (=> b!4745865 m!5702907))

(assert (=> b!4745866 m!5702903))

(assert (=> b!4745866 m!5702903))

(assert (=> b!4745866 m!5702905))

(declare-fun m!5702909 () Bool)

(assert (=> b!4745862 m!5702909))

(declare-fun m!5702911 () Bool)

(assert (=> b!4745862 m!5702911))

(declare-fun m!5702913 () Bool)

(assert (=> b!4745868 m!5702913))

(assert (=> d!1516603 m!5702909))

(declare-fun m!5702915 () Bool)

(assert (=> b!4745867 m!5702915))

(assert (=> b!4745867 m!5702915))

(declare-fun m!5702917 () Bool)

(assert (=> b!4745867 m!5702917))

(declare-fun m!5702919 () Bool)

(assert (=> bm!332134 m!5702919))

(assert (=> b!4745864 m!5702915))

(assert (=> b!4745864 m!5702915))

(assert (=> b!4745864 m!5702917))

(assert (=> b!4745861 m!5702915))

(assert (=> b!4745536 d!1516603))

(declare-fun d!1516605 () Bool)

(assert (=> d!1516605 (dynLambda!21887 lambda!220198 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))

(declare-fun lt!1908591 () Unit!134239)

(declare-fun choose!33749 (List!53117 Int tuple2!54690) Unit!134239)

(assert (=> d!1516605 (= lt!1908591 (choose!33749 (toList!6037 lt!1908331) lambda!220198 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(declare-fun e!2960259 () Bool)

(assert (=> d!1516605 e!2960259))

(declare-fun res!2011456 () Bool)

(assert (=> d!1516605 (=> (not res!2011456) (not e!2960259))))

(assert (=> d!1516605 (= res!2011456 (forall!11711 (toList!6037 lt!1908331) lambda!220198))))

(assert (=> d!1516605 (= (forallContained!3745 (toList!6037 lt!1908331) lambda!220198 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) lt!1908591)))

(declare-fun b!4745872 () Bool)

(declare-fun contains!16422 (List!53117 tuple2!54690) Bool)

(assert (=> b!4745872 (= e!2960259 (contains!16422 (toList!6037 lt!1908331) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(assert (= (and d!1516605 res!2011456) b!4745872))

(declare-fun b_lambda!182733 () Bool)

(assert (=> (not b_lambda!182733) (not d!1516605)))

(assert (=> d!1516605 m!5702849))

(declare-fun m!5702921 () Bool)

(assert (=> d!1516605 m!5702921))

(assert (=> d!1516605 m!5702353))

(declare-fun m!5702923 () Bool)

(assert (=> b!4745872 m!5702923))

(assert (=> b!4745536 d!1516605))

(declare-fun d!1516607 () Bool)

(declare-fun e!2960262 () Bool)

(assert (=> d!1516607 e!2960262))

(declare-fun res!2011462 () Bool)

(assert (=> d!1516607 (=> (not res!2011462) (not e!2960262))))

(declare-fun lt!1908601 () ListMap!5401)

(assert (=> d!1516607 (= res!2011462 (contains!16417 lt!1908601 (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun lt!1908602 () List!53117)

(assert (=> d!1516607 (= lt!1908601 (ListMap!5402 lt!1908602))))

(declare-fun lt!1908603 () Unit!134239)

(declare-fun lt!1908600 () Unit!134239)

(assert (=> d!1516607 (= lt!1908603 lt!1908600)))

(assert (=> d!1516607 (= (getValueByKey!2040 lt!1908602 (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) (Some!12489 (_2!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1122 (List!53117 K!14335 V!14581) Unit!134239)

(assert (=> d!1516607 (= lt!1908600 (lemmaContainsTupThenGetReturnValue!1122 lt!1908602 (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (_2!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun insertNoDuplicatedKeys!630 (List!53117 K!14335 V!14581) List!53117)

(assert (=> d!1516607 (= lt!1908602 (insertNoDuplicatedKeys!630 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (_2!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(assert (=> d!1516607 (= (+!2318 (extractMap!2100 (t!360426 (toList!6038 lm!2023))) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) lt!1908601)))

(declare-fun b!4745877 () Bool)

(declare-fun res!2011461 () Bool)

(assert (=> b!4745877 (=> (not res!2011461) (not e!2960262))))

(assert (=> b!4745877 (= res!2011461 (= (getValueByKey!2040 (toList!6037 lt!1908601) (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) (Some!12489 (_2!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))))

(declare-fun b!4745878 () Bool)

(assert (=> b!4745878 (= e!2960262 (contains!16422 (toList!6037 lt!1908601) (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(assert (= (and d!1516607 res!2011462) b!4745877))

(assert (= (and b!4745877 res!2011461) b!4745878))

(declare-fun m!5702929 () Bool)

(assert (=> d!1516607 m!5702929))

(declare-fun m!5702931 () Bool)

(assert (=> d!1516607 m!5702931))

(declare-fun m!5702933 () Bool)

(assert (=> d!1516607 m!5702933))

(declare-fun m!5702935 () Bool)

(assert (=> d!1516607 m!5702935))

(declare-fun m!5702937 () Bool)

(assert (=> b!4745877 m!5702937))

(declare-fun m!5702939 () Bool)

(assert (=> b!4745878 m!5702939))

(assert (=> b!4745536 d!1516607))

(declare-fun d!1516611 () Bool)

(declare-fun res!2011463 () Bool)

(declare-fun e!2960263 () Bool)

(assert (=> d!1516611 (=> res!2011463 e!2960263)))

(assert (=> d!1516611 (= res!2011463 ((_ is Nil!52993) newBucket!218))))

(assert (=> d!1516611 (= (forall!11711 newBucket!218 lambda!220210) e!2960263)))

(declare-fun b!4745879 () Bool)

(declare-fun e!2960264 () Bool)

(assert (=> b!4745879 (= e!2960263 e!2960264)))

(declare-fun res!2011464 () Bool)

(assert (=> b!4745879 (=> (not res!2011464) (not e!2960264))))

(assert (=> b!4745879 (= res!2011464 (dynLambda!21887 lambda!220210 (h!59384 newBucket!218)))))

(declare-fun b!4745880 () Bool)

(assert (=> b!4745880 (= e!2960264 (forall!11711 (t!360425 newBucket!218) lambda!220210))))

(assert (= (and d!1516611 (not res!2011463)) b!4745879))

(assert (= (and b!4745879 res!2011464) b!4745880))

(declare-fun b_lambda!182735 () Bool)

(assert (=> (not b_lambda!182735) (not b!4745879)))

(declare-fun m!5702941 () Bool)

(assert (=> b!4745879 m!5702941))

(declare-fun m!5702943 () Bool)

(assert (=> b!4745880 m!5702943))

(assert (=> d!1516449 d!1516611))

(declare-fun d!1516613 () Bool)

(assert (=> d!1516613 (isDefined!9745 (getValueByKey!2041 (toList!6038 lm!2023) lt!1908179))))

(declare-fun lt!1908606 () Unit!134239)

(declare-fun choose!33750 (List!53118 (_ BitVec 64)) Unit!134239)

(assert (=> d!1516613 (= lt!1908606 (choose!33750 (toList!6038 lm!2023) lt!1908179))))

(declare-fun e!2960267 () Bool)

(assert (=> d!1516613 e!2960267))

(declare-fun res!2011467 () Bool)

(assert (=> d!1516613 (=> (not res!2011467) (not e!2960267))))

(assert (=> d!1516613 (= res!2011467 (isStrictlySorted!792 (toList!6038 lm!2023)))))

(assert (=> d!1516613 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1932 (toList!6038 lm!2023) lt!1908179) lt!1908606)))

(declare-fun b!4745883 () Bool)

(assert (=> b!4745883 (= e!2960267 (containsKey!3507 (toList!6038 lm!2023) lt!1908179))))

(assert (= (and d!1516613 res!2011467) b!4745883))

(assert (=> d!1516613 m!5702413))

(assert (=> d!1516613 m!5702413))

(assert (=> d!1516613 m!5702415))

(declare-fun m!5702945 () Bool)

(assert (=> d!1516613 m!5702945))

(assert (=> d!1516613 m!5702237))

(assert (=> b!4745883 m!5702409))

(assert (=> b!4745580 d!1516613))

(declare-fun d!1516615 () Bool)

(declare-fun isEmpty!29249 (Option!12491) Bool)

(assert (=> d!1516615 (= (isDefined!9745 (getValueByKey!2041 (toList!6038 lm!2023) lt!1908179)) (not (isEmpty!29249 (getValueByKey!2041 (toList!6038 lm!2023) lt!1908179))))))

(declare-fun bs!1138100 () Bool)

(assert (= bs!1138100 d!1516615))

(assert (=> bs!1138100 m!5702413))

(declare-fun m!5702947 () Bool)

(assert (=> bs!1138100 m!5702947))

(assert (=> b!4745580 d!1516615))

(declare-fun d!1516617 () Bool)

(declare-fun c!810623 () Bool)

(assert (=> d!1516617 (= c!810623 (and ((_ is Cons!52994) (toList!6038 lm!2023)) (= (_1!30640 (h!59385 (toList!6038 lm!2023))) lt!1908179)))))

(declare-fun e!2960280 () Option!12491)

(assert (=> d!1516617 (= (getValueByKey!2041 (toList!6038 lm!2023) lt!1908179) e!2960280)))

(declare-fun b!4745910 () Bool)

(declare-fun e!2960281 () Option!12491)

(assert (=> b!4745910 (= e!2960281 (getValueByKey!2041 (t!360426 (toList!6038 lm!2023)) lt!1908179))))

(declare-fun b!4745909 () Bool)

(assert (=> b!4745909 (= e!2960280 e!2960281)))

(declare-fun c!810624 () Bool)

(assert (=> b!4745909 (= c!810624 (and ((_ is Cons!52994) (toList!6038 lm!2023)) (not (= (_1!30640 (h!59385 (toList!6038 lm!2023))) lt!1908179))))))

(declare-fun b!4745911 () Bool)

(assert (=> b!4745911 (= e!2960281 None!12490)))

(declare-fun b!4745908 () Bool)

(assert (=> b!4745908 (= e!2960280 (Some!12490 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))

(assert (= (and d!1516617 c!810623) b!4745908))

(assert (= (and d!1516617 (not c!810623)) b!4745909))

(assert (= (and b!4745909 c!810624) b!4745910))

(assert (= (and b!4745909 (not c!810624)) b!4745911))

(declare-fun m!5702949 () Bool)

(assert (=> b!4745910 m!5702949))

(assert (=> b!4745580 d!1516617))

(declare-fun d!1516619 () Bool)

(declare-fun res!2011474 () Bool)

(declare-fun e!2960282 () Bool)

(assert (=> d!1516619 (=> res!2011474 e!2960282)))

(assert (=> d!1516619 (= res!2011474 ((_ is Nil!52993) (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023))))))))

(assert (=> d!1516619 (= (forall!11711 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (ite c!810551 lambda!220196 lambda!220197)) e!2960282)))

(declare-fun b!4745914 () Bool)

(declare-fun e!2960283 () Bool)

(assert (=> b!4745914 (= e!2960282 e!2960283)))

(declare-fun res!2011475 () Bool)

(assert (=> b!4745914 (=> (not res!2011475) (not e!2960283))))

(assert (=> b!4745914 (= res!2011475 (dynLambda!21887 (ite c!810551 lambda!220196 lambda!220197) (h!59384 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))))))))

(declare-fun b!4745915 () Bool)

(assert (=> b!4745915 (= e!2960283 (forall!11711 (t!360425 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023))))) (ite c!810551 lambda!220196 lambda!220197)))))

(assert (= (and d!1516619 (not res!2011474)) b!4745914))

(assert (= (and b!4745914 res!2011475) b!4745915))

(declare-fun b_lambda!182737 () Bool)

(assert (=> (not b_lambda!182737) (not b!4745914)))

(declare-fun m!5702951 () Bool)

(assert (=> b!4745914 m!5702951))

(declare-fun m!5702953 () Bool)

(assert (=> b!4745915 m!5702953))

(assert (=> bm!332115 d!1516619))

(declare-fun d!1516621 () Bool)

(declare-fun res!2011476 () Bool)

(declare-fun e!2960284 () Bool)

(assert (=> d!1516621 (=> res!2011476 e!2960284)))

(assert (=> d!1516621 (= res!2011476 ((_ is Nil!52993) (ite c!810551 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (_2!30640 (h!59385 (toList!6038 lm!2023))))))))

(assert (=> d!1516621 (= (forall!11711 (ite c!810551 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (_2!30640 (h!59385 (toList!6038 lm!2023)))) (ite c!810551 lambda!220196 lambda!220198)) e!2960284)))

(declare-fun b!4745916 () Bool)

(declare-fun e!2960285 () Bool)

(assert (=> b!4745916 (= e!2960284 e!2960285)))

(declare-fun res!2011477 () Bool)

(assert (=> b!4745916 (=> (not res!2011477) (not e!2960285))))

(assert (=> b!4745916 (= res!2011477 (dynLambda!21887 (ite c!810551 lambda!220196 lambda!220198) (h!59384 (ite c!810551 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun b!4745917 () Bool)

(assert (=> b!4745917 (= e!2960285 (forall!11711 (t!360425 (ite c!810551 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))) (_2!30640 (h!59385 (toList!6038 lm!2023))))) (ite c!810551 lambda!220196 lambda!220198)))))

(assert (= (and d!1516621 (not res!2011476)) b!4745916))

(assert (= (and b!4745916 res!2011477) b!4745917))

(declare-fun b_lambda!182739 () Bool)

(assert (=> (not b_lambda!182739) (not b!4745916)))

(declare-fun m!5702955 () Bool)

(assert (=> b!4745916 m!5702955))

(declare-fun m!5702957 () Bool)

(assert (=> b!4745917 m!5702957))

(assert (=> bm!332114 d!1516621))

(declare-fun d!1516623 () Bool)

(declare-fun res!2011478 () Bool)

(declare-fun e!2960286 () Bool)

(assert (=> d!1516623 (=> res!2011478 e!2960286)))

(assert (=> d!1516623 (= res!2011478 ((_ is Nil!52993) oldBucket!34))))

(assert (=> d!1516623 (= (forall!11711 oldBucket!34 lambda!220206) e!2960286)))

(declare-fun b!4745918 () Bool)

(declare-fun e!2960287 () Bool)

(assert (=> b!4745918 (= e!2960286 e!2960287)))

(declare-fun res!2011479 () Bool)

(assert (=> b!4745918 (=> (not res!2011479) (not e!2960287))))

(assert (=> b!4745918 (= res!2011479 (dynLambda!21887 lambda!220206 (h!59384 oldBucket!34)))))

(declare-fun b!4745919 () Bool)

(assert (=> b!4745919 (= e!2960287 (forall!11711 (t!360425 oldBucket!34) lambda!220206))))

(assert (= (and d!1516623 (not res!2011478)) b!4745918))

(assert (= (and b!4745918 res!2011479) b!4745919))

(declare-fun b_lambda!182741 () Bool)

(assert (=> (not b_lambda!182741) (not b!4745918)))

(declare-fun m!5702959 () Bool)

(assert (=> b!4745918 m!5702959))

(declare-fun m!5702961 () Bool)

(assert (=> b!4745919 m!5702961))

(assert (=> d!1516443 d!1516623))

(declare-fun d!1516625 () Bool)

(declare-fun res!2011487 () Bool)

(declare-fun e!2960296 () Bool)

(assert (=> d!1516625 (=> res!2011487 e!2960296)))

(assert (=> d!1516625 (= res!2011487 (or ((_ is Nil!52994) (toList!6038 lm!2023)) ((_ is Nil!52994) (t!360426 (toList!6038 lm!2023)))))))

(assert (=> d!1516625 (= (isStrictlySorted!792 (toList!6038 lm!2023)) e!2960296)))

(declare-fun b!4745933 () Bool)

(declare-fun e!2960297 () Bool)

(assert (=> b!4745933 (= e!2960296 e!2960297)))

(declare-fun res!2011488 () Bool)

(assert (=> b!4745933 (=> (not res!2011488) (not e!2960297))))

(assert (=> b!4745933 (= res!2011488 (bvslt (_1!30640 (h!59385 (toList!6038 lm!2023))) (_1!30640 (h!59385 (t!360426 (toList!6038 lm!2023))))))))

(declare-fun b!4745934 () Bool)

(assert (=> b!4745934 (= e!2960297 (isStrictlySorted!792 (t!360426 (toList!6038 lm!2023))))))

(assert (= (and d!1516625 (not res!2011487)) b!4745933))

(assert (= (and b!4745933 res!2011488) b!4745934))

(declare-fun m!5702963 () Bool)

(assert (=> b!4745934 m!5702963))

(assert (=> d!1516395 d!1516625))

(declare-fun b!4745937 () Bool)

(declare-fun e!2960299 () List!53117)

(assert (=> b!4745937 (= e!2960299 (t!360425 (t!360425 oldBucket!34)))))

(declare-fun b!4745940 () Bool)

(declare-fun e!2960298 () List!53117)

(assert (=> b!4745940 (= e!2960298 Nil!52993)))

(declare-fun b!4745939 () Bool)

(assert (=> b!4745939 (= e!2960298 (Cons!52993 (h!59384 (t!360425 oldBucket!34)) (removePairForKey!1669 (t!360425 (t!360425 oldBucket!34)) key!4653)))))

(declare-fun b!4745938 () Bool)

(assert (=> b!4745938 (= e!2960299 e!2960298)))

(declare-fun c!810629 () Bool)

(assert (=> b!4745938 (= c!810629 ((_ is Cons!52993) (t!360425 oldBucket!34)))))

(declare-fun d!1516627 () Bool)

(declare-fun lt!1908628 () List!53117)

(assert (=> d!1516627 (not (containsKey!3504 lt!1908628 key!4653))))

(assert (=> d!1516627 (= lt!1908628 e!2960299)))

(declare-fun c!810628 () Bool)

(assert (=> d!1516627 (= c!810628 (and ((_ is Cons!52993) (t!360425 oldBucket!34)) (= (_1!30639 (h!59384 (t!360425 oldBucket!34))) key!4653)))))

(assert (=> d!1516627 (noDuplicateKeys!2074 (t!360425 oldBucket!34))))

(assert (=> d!1516627 (= (removePairForKey!1669 (t!360425 oldBucket!34) key!4653) lt!1908628)))

(assert (= (and d!1516627 c!810628) b!4745937))

(assert (= (and d!1516627 (not c!810628)) b!4745938))

(assert (= (and b!4745938 c!810629) b!4745939))

(assert (= (and b!4745938 (not c!810629)) b!4745940))

(declare-fun m!5702965 () Bool)

(assert (=> b!4745939 m!5702965))

(declare-fun m!5702967 () Bool)

(assert (=> d!1516627 m!5702967))

(assert (=> d!1516627 m!5702419))

(assert (=> b!4745404 d!1516627))

(assert (=> b!4745582 d!1516615))

(assert (=> b!4745582 d!1516617))

(declare-fun e!2960300 () Bool)

(declare-fun tp!1349510 () Bool)

(declare-fun b!4745941 () Bool)

(assert (=> b!4745941 (= e!2960300 (and tp_is_empty!31589 tp_is_empty!31591 tp!1349510))))

(assert (=> b!4745600 (= tp!1349507 e!2960300)))

(assert (= (and b!4745600 ((_ is Cons!52993) (_2!30640 (h!59385 (toList!6038 lm!2023))))) b!4745941))

(declare-fun b!4745942 () Bool)

(declare-fun e!2960301 () Bool)

(declare-fun tp!1349511 () Bool)

(declare-fun tp!1349512 () Bool)

(assert (=> b!4745942 (= e!2960301 (and tp!1349511 tp!1349512))))

(assert (=> b!4745600 (= tp!1349508 e!2960301)))

(assert (= (and b!4745600 ((_ is Cons!52994) (t!360426 (toList!6038 lm!2023)))) b!4745942))

(declare-fun tp!1349513 () Bool)

(declare-fun b!4745943 () Bool)

(declare-fun e!2960302 () Bool)

(assert (=> b!4745943 (= e!2960302 (and tp_is_empty!31589 tp_is_empty!31591 tp!1349513))))

(assert (=> b!4745595 (= tp!1349502 e!2960302)))

(assert (= (and b!4745595 ((_ is Cons!52993) (t!360425 (t!360425 newBucket!218)))) b!4745943))

(declare-fun b!4745944 () Bool)

(declare-fun tp!1349514 () Bool)

(declare-fun e!2960303 () Bool)

(assert (=> b!4745944 (= e!2960303 (and tp_is_empty!31589 tp_is_empty!31591 tp!1349514))))

(assert (=> b!4745601 (= tp!1349509 e!2960303)))

(assert (= (and b!4745601 ((_ is Cons!52993) (t!360425 (t!360425 oldBucket!34)))) b!4745944))

(declare-fun b_lambda!182743 () Bool)

(assert (= b_lambda!182713 (or start!484472 b_lambda!182743)))

(declare-fun bs!1138108 () Bool)

(declare-fun d!1516629 () Bool)

(assert (= bs!1138108 (and d!1516629 start!484472)))

(assert (=> bs!1138108 (= (dynLambda!21885 lambda!220124 (h!59385 (t!360426 (toList!6038 lm!2023)))) (noDuplicateKeys!2074 (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023))))))))

(assert (=> bs!1138108 m!5702717))

(assert (=> b!4745779 d!1516629))

(declare-fun b_lambda!182745 () Bool)

(assert (= b_lambda!182703 (or d!1516445 b_lambda!182745)))

(declare-fun bs!1138109 () Bool)

(declare-fun d!1516631 () Bool)

(assert (= bs!1138109 (and d!1516631 d!1516445)))

(assert (=> bs!1138109 (= (dynLambda!21885 lambda!220209 (h!59385 (toList!6038 lm!2023))) (allKeysSameHash!1900 (_2!30640 (h!59385 (toList!6038 lm!2023))) (_1!30640 (h!59385 (toList!6038 lm!2023))) hashF!1323))))

(declare-fun m!5702969 () Bool)

(assert (=> bs!1138109 m!5702969))

(assert (=> b!4745753 d!1516631))

(declare-fun b_lambda!182747 () Bool)

(assert (= b_lambda!182735 (or d!1516449 b_lambda!182747)))

(declare-fun bs!1138110 () Bool)

(declare-fun d!1516633 () Bool)

(assert (= bs!1138110 (and d!1516633 d!1516449)))

(assert (=> bs!1138110 (= (dynLambda!21887 lambda!220210 (h!59384 newBucket!218)) (= (hash!4490 hashF!1323 (_1!30639 (h!59384 newBucket!218))) hash!405))))

(declare-fun m!5702971 () Bool)

(assert (=> bs!1138110 m!5702971))

(assert (=> b!4745879 d!1516633))

(declare-fun b_lambda!182749 () Bool)

(assert (= b_lambda!182707 (or b!4745536 b_lambda!182749)))

(declare-fun bs!1138111 () Bool)

(declare-fun d!1516635 () Bool)

(assert (= bs!1138111 (and d!1516635 b!4745536)))

(assert (=> bs!1138111 (= (dynLambda!21887 lambda!220198 (h!59384 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))))) (contains!16417 lt!1908344 (_1!30639 (h!59384 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023))))))))))

(declare-fun m!5702979 () Bool)

(assert (=> bs!1138111 m!5702979))

(assert (=> b!4745762 d!1516635))

(declare-fun b_lambda!182751 () Bool)

(assert (= b_lambda!182727 (or b!4745536 b_lambda!182751)))

(declare-fun bs!1138112 () Bool)

(declare-fun d!1516637 () Bool)

(assert (= bs!1138112 (and d!1516637 b!4745536)))

(assert (=> bs!1138112 (= (dynLambda!21887 lambda!220198 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (contains!16417 lt!1908344 (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(assert (=> bs!1138112 m!5702361))

(assert (=> b!4745843 d!1516637))

(declare-fun b_lambda!182753 () Bool)

(assert (= b_lambda!182721 (or b!4745536 b_lambda!182753)))

(declare-fun bs!1138113 () Bool)

(declare-fun d!1516639 () Bool)

(assert (= bs!1138113 (and d!1516639 b!4745536)))

(assert (=> bs!1138113 (= (dynLambda!21887 lambda!220198 (h!59384 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023)))))) (contains!16417 lt!1908344 (_1!30639 (h!59384 (t!360425 (_2!30640 (h!59385 (toList!6038 lm!2023))))))))))

(declare-fun m!5702991 () Bool)

(assert (=> bs!1138113 m!5702991))

(assert (=> b!4745807 d!1516639))

(declare-fun b_lambda!182755 () Bool)

(assert (= b_lambda!182715 (or d!1516437 b_lambda!182755)))

(declare-fun bs!1138114 () Bool)

(declare-fun d!1516641 () Bool)

(assert (= bs!1138114 (and d!1516641 d!1516437)))

(assert (=> bs!1138114 (= (dynLambda!21885 lambda!220203 (h!59385 (toList!6038 lm!2023))) (noDuplicateKeys!2074 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))

(assert (=> bs!1138114 m!5702373))

(assert (=> b!4745781 d!1516641))

(declare-fun b_lambda!182757 () Bool)

(assert (= b_lambda!182723 (or b!4745536 b_lambda!182757)))

(declare-fun bs!1138115 () Bool)

(declare-fun d!1516643 () Bool)

(assert (= bs!1138115 (and d!1516643 b!4745536)))

(assert (=> bs!1138115 (= (dynLambda!21887 lambda!220198 (h!59384 (toList!6037 lt!1908331))) (contains!16417 lt!1908344 (_1!30639 (h!59384 (toList!6037 lt!1908331)))))))

(declare-fun m!5703001 () Bool)

(assert (=> bs!1138115 m!5703001))

(assert (=> b!4745811 d!1516643))

(declare-fun b_lambda!182759 () Bool)

(assert (= b_lambda!182711 (or d!1516405 b_lambda!182759)))

(declare-fun bs!1138116 () Bool)

(declare-fun d!1516645 () Bool)

(assert (= bs!1138116 (and d!1516645 d!1516405)))

(assert (=> bs!1138116 (= (dynLambda!21887 lambda!220199 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023))))) (contains!16417 lt!1908333 (_1!30639 (h!59384 (_2!30640 (h!59385 (toList!6038 lm!2023)))))))))

(declare-fun m!5703003 () Bool)

(assert (=> bs!1138116 m!5703003))

(assert (=> b!4745775 d!1516645))

(declare-fun b_lambda!182761 () Bool)

(assert (= b_lambda!182741 (or d!1516443 b_lambda!182761)))

(declare-fun bs!1138117 () Bool)

(declare-fun d!1516649 () Bool)

(assert (= bs!1138117 (and d!1516649 d!1516443)))

(assert (=> bs!1138117 (= (dynLambda!21887 lambda!220206 (h!59384 oldBucket!34)) (= (hash!4490 hashF!1323 (_1!30639 (h!59384 oldBucket!34))) hash!405))))

(declare-fun m!5703005 () Bool)

(assert (=> bs!1138117 m!5703005))

(assert (=> b!4745918 d!1516649))

(declare-fun b_lambda!182763 () Bool)

(assert (= b_lambda!182717 (or d!1516405 b_lambda!182763)))

(declare-fun bs!1138118 () Bool)

(declare-fun d!1516651 () Bool)

(assert (= bs!1138118 (and d!1516651 d!1516405)))

(assert (=> bs!1138118 (= (dynLambda!21887 lambda!220199 (h!59384 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023)))))) (contains!16417 lt!1908333 (_1!30639 (h!59384 (toList!6037 (extractMap!2100 (t!360426 (toList!6038 lm!2023))))))))))

(declare-fun m!5703007 () Bool)

(assert (=> bs!1138118 m!5703007))

(assert (=> b!4745789 d!1516651))

(declare-fun b_lambda!182765 () Bool)

(assert (= b_lambda!182733 (or b!4745536 b_lambda!182765)))

(assert (=> d!1516605 d!1516637))

(declare-fun b_lambda!182767 () Bool)

(assert (= b_lambda!182705 (or d!1516433 b_lambda!182767)))

(declare-fun bs!1138119 () Bool)

(declare-fun d!1516653 () Bool)

(assert (= bs!1138119 (and d!1516653 d!1516433)))

(assert (=> bs!1138119 (= (dynLambda!21885 lambda!220202 (h!59385 (t!360426 (toList!6038 lm!2023)))) (noDuplicateKeys!2074 (_2!30640 (h!59385 (t!360426 (toList!6038 lm!2023))))))))

(assert (=> bs!1138119 m!5702717))

(assert (=> b!4745755 d!1516653))

(check-sat (not bs!1138117) (not b!4745915) (not b!4745782) (not d!1516457) (not b!4745943) (not d!1516603) (not d!1516489) (not b!4745804) (not d!1516541) (not b!4745910) (not bs!1138118) (not b!4745681) (not b!4745919) (not b!4745917) (not b!4745792) (not b!4745786) (not b!4745747) (not b!4745883) (not b!4745628) (not b!4745941) (not b!4745844) (not bs!1138115) (not b!4745831) (not bs!1138119) (not b_lambda!182691) (not b!4745820) (not bs!1138113) (not b!4745934) (not b!4745817) (not d!1516497) (not b!4745833) (not b!4745793) (not d!1516587) (not b!4745790) (not bs!1138110) (not d!1516491) (not d!1516613) (not b!4745816) (not b!4745864) (not b!4745609) (not d!1516555) (not b!4745763) (not b_lambda!182759) (not d!1516607) (not b!4745756) (not b!4745814) (not b!4745812) (not b!4745803) (not b!4745872) (not b!4745777) (not b_lambda!182763) (not d!1516535) (not b!4745750) (not d!1516593) (not b!4745796) (not b!4745776) (not b!4745610) tp_is_empty!31589 (not b_lambda!182761) (not b!4745608) (not bm!332126) (not b!4745794) (not bm!332125) (not b!4745748) (not b!4745942) (not b_lambda!182751) (not b!4745799) (not bm!332130) (not b!4745868) (not d!1516565) (not d!1516469) (not bs!1138116) (not b!4745780) (not b_lambda!182737) (not d!1516571) (not bs!1138111) (not b!4745866) (not b_lambda!182749) (not d!1516483) (not b!4745744) (not b_lambda!182743) (not b!4745861) (not b!4745939) (not b!4745944) (not b!4745642) (not d!1516605) (not b!4745788) (not b!4745829) (not b!4745778) (not bs!1138114) (not b!4745867) (not b_lambda!182755) (not bm!332131) (not bm!332132) (not b!4745880) (not b!4745749) (not b!4745806) (not b!4745818) (not bs!1138108) (not b_lambda!182765) (not b!4745862) (not bs!1138112) (not d!1516455) (not b!4745865) (not b!4745665) (not d!1516493) (not d!1516627) (not b!4745785) (not b_lambda!182753) (not b_lambda!182747) (not b_lambda!182767) (not d!1516569) (not b!4745819) (not bm!332134) tp_is_empty!31591 (not b!4745830) (not b!4745618) (not bm!332123) (not b!4745877) (not bs!1138109) (not b!4745808) (not b_lambda!182757) (not b_lambda!182745) (not b_lambda!182739) (not d!1516475) (not d!1516615) (not b!4745687) (not b!4745754) (not bm!332124) (not d!1516581) (not b!4745878) (not b!4745813))
(check-sat)
