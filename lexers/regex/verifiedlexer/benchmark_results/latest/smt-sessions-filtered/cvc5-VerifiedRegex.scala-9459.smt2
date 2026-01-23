; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!499410 () Bool)

(assert start!499410)

(declare-fun b!4820337 () Bool)

(declare-fun res!2051345 () Bool)

(declare-fun e!3011684 () Bool)

(assert (=> b!4820337 (=> (not res!2051345) (not e!3011684))))

(declare-datatypes ((K!16582 0))(
  ( (K!16583 (val!21571 Int)) )
))
(declare-fun key!5428 () K!16582)

(declare-fun lt!1969299 () (_ BitVec 64))

(declare-datatypes ((V!16828 0))(
  ( (V!16829 (val!21572 Int)) )
))
(declare-datatypes ((tuple2!58078 0))(
  ( (tuple2!58079 (_1!32333 K!16582) (_2!32333 V!16828)) )
))
(declare-datatypes ((List!55024 0))(
  ( (Nil!54900) (Cons!54900 (h!61334 tuple2!58078) (t!362520 List!55024)) )
))
(declare-datatypes ((tuple2!58080 0))(
  ( (tuple2!58081 (_1!32334 (_ BitVec 64)) (_2!32334 List!55024)) )
))
(declare-datatypes ((List!55025 0))(
  ( (Nil!54901) (Cons!54901 (h!61335 tuple2!58080) (t!362521 List!55025)) )
))
(declare-datatypes ((ListLongMap!5937 0))(
  ( (ListLongMap!5938 (toList!7433 List!55025)) )
))
(declare-fun lm!2280 () ListLongMap!5937)

(declare-fun containsKey!4308 (List!55024 K!16582) Bool)

(declare-fun apply!13324 (ListLongMap!5937 (_ BitVec 64)) List!55024)

(assert (=> b!4820337 (= res!2051345 (not (containsKey!4308 (apply!13324 lm!2280 lt!1969299) key!5428)))))

(declare-fun b!4820338 () Bool)

(declare-fun e!3011681 () Bool)

(assert (=> b!4820338 (= e!3011684 e!3011681)))

(declare-fun res!2051349 () Bool)

(assert (=> b!4820338 (=> (not res!2051349) (not e!3011681))))

(declare-fun lt!1969298 () ListLongMap!5937)

(declare-fun lambda!235425 () Int)

(declare-fun forall!12555 (List!55025 Int) Bool)

(assert (=> b!4820338 (= res!2051349 (forall!12555 (toList!7433 lt!1969298) lambda!235425))))

(declare-fun tail!9376 (ListLongMap!5937) ListLongMap!5937)

(assert (=> b!4820338 (= lt!1969298 (tail!9376 lm!2280))))

(declare-fun b!4820339 () Bool)

(declare-fun e!3011682 () Bool)

(declare-fun tp!1362277 () Bool)

(assert (=> b!4820339 (= e!3011682 tp!1362277)))

(declare-fun b!4820340 () Bool)

(declare-fun e!3011683 () Bool)

(assert (=> b!4820340 (= e!3011683 e!3011684)))

(declare-fun res!2051347 () Bool)

(assert (=> b!4820340 (=> (not res!2051347) (not e!3011684))))

(declare-fun contains!18710 (ListLongMap!5937 (_ BitVec 64)) Bool)

(assert (=> b!4820340 (= res!2051347 (contains!18710 lm!2280 lt!1969299))))

(declare-datatypes ((Hashable!7237 0))(
  ( (HashableExt!7236 (__x!33512 Int)) )
))
(declare-fun hashF!1509 () Hashable!7237)

(declare-fun hash!5329 (Hashable!7237 K!16582) (_ BitVec 64))

(assert (=> b!4820340 (= lt!1969299 (hash!5329 hashF!1509 key!5428))))

(declare-fun b!4820341 () Bool)

(declare-fun res!2051350 () Bool)

(assert (=> b!4820341 (=> (not res!2051350) (not e!3011684))))

(assert (=> b!4820341 (= res!2051350 (and (is-Cons!54901 (toList!7433 lm!2280)) (= (_1!32334 (h!61335 (toList!7433 lm!2280))) lt!1969299)))))

(declare-fun res!2051346 () Bool)

(assert (=> start!499410 (=> (not res!2051346) (not e!3011683))))

(assert (=> start!499410 (= res!2051346 (forall!12555 (toList!7433 lm!2280) lambda!235425))))

(assert (=> start!499410 e!3011683))

(declare-fun inv!70483 (ListLongMap!5937) Bool)

(assert (=> start!499410 (and (inv!70483 lm!2280) e!3011682)))

(assert (=> start!499410 true))

(declare-fun tp_is_empty!34365 () Bool)

(assert (=> start!499410 tp_is_empty!34365))

(declare-fun b!4820342 () Bool)

(declare-fun allKeysSameHashInMap!2553 (ListLongMap!5937 Hashable!7237) Bool)

(assert (=> b!4820342 (= e!3011681 (not (allKeysSameHashInMap!2553 lt!1969298 hashF!1509)))))

(declare-fun b!4820343 () Bool)

(declare-fun res!2051348 () Bool)

(assert (=> b!4820343 (=> (not res!2051348) (not e!3011683))))

(assert (=> b!4820343 (= res!2051348 (allKeysSameHashInMap!2553 lm!2280 hashF!1509))))

(assert (= (and start!499410 res!2051346) b!4820343))

(assert (= (and b!4820343 res!2051348) b!4820340))

(assert (= (and b!4820340 res!2051347) b!4820337))

(assert (= (and b!4820337 res!2051345) b!4820341))

(assert (= (and b!4820341 res!2051350) b!4820338))

(assert (= (and b!4820338 res!2051349) b!4820342))

(assert (= start!499410 b!4820339))

(declare-fun m!5807728 () Bool)

(assert (=> start!499410 m!5807728))

(declare-fun m!5807730 () Bool)

(assert (=> start!499410 m!5807730))

(declare-fun m!5807732 () Bool)

(assert (=> b!4820337 m!5807732))

(assert (=> b!4820337 m!5807732))

(declare-fun m!5807734 () Bool)

(assert (=> b!4820337 m!5807734))

(declare-fun m!5807736 () Bool)

(assert (=> b!4820342 m!5807736))

(declare-fun m!5807738 () Bool)

(assert (=> b!4820343 m!5807738))

(declare-fun m!5807740 () Bool)

(assert (=> b!4820340 m!5807740))

(declare-fun m!5807742 () Bool)

(assert (=> b!4820340 m!5807742))

(declare-fun m!5807744 () Bool)

(assert (=> b!4820338 m!5807744))

(declare-fun m!5807746 () Bool)

(assert (=> b!4820338 m!5807746))

(push 1)

(assert (not b!4820338))

(assert (not b!4820337))

(assert (not b!4820339))

(assert (not b!4820342))

(assert (not b!4820343))

(assert (not start!499410))

(assert (not b!4820340))

(assert tp_is_empty!34365)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1161526 () Bool)

(declare-fun d!1543158 () Bool)

(assert (= bs!1161526 (and d!1543158 start!499410)))

(declare-fun lambda!235436 () Int)

(assert (=> bs!1161526 (not (= lambda!235436 lambda!235425))))

(assert (=> d!1543158 true))

(assert (=> d!1543158 (= (allKeysSameHashInMap!2553 lm!2280 hashF!1509) (forall!12555 (toList!7433 lm!2280) lambda!235436))))

(declare-fun bs!1161528 () Bool)

(assert (= bs!1161528 d!1543158))

(declare-fun m!5807782 () Bool)

(assert (=> bs!1161528 m!5807782))

(assert (=> b!4820343 d!1543158))

(declare-fun bs!1161529 () Bool)

(declare-fun d!1543168 () Bool)

(assert (= bs!1161529 (and d!1543168 start!499410)))

(declare-fun lambda!235437 () Int)

(assert (=> bs!1161529 (not (= lambda!235437 lambda!235425))))

(declare-fun bs!1161530 () Bool)

(assert (= bs!1161530 (and d!1543168 d!1543158)))

(assert (=> bs!1161530 (= lambda!235437 lambda!235436)))

(assert (=> d!1543168 true))

(assert (=> d!1543168 (= (allKeysSameHashInMap!2553 lt!1969298 hashF!1509) (forall!12555 (toList!7433 lt!1969298) lambda!235437))))

(declare-fun bs!1161531 () Bool)

(assert (= bs!1161531 d!1543168))

(declare-fun m!5807784 () Bool)

(assert (=> bs!1161531 m!5807784))

(assert (=> b!4820342 d!1543168))

(declare-fun d!1543170 () Bool)

(declare-fun res!2051381 () Bool)

(declare-fun e!3011709 () Bool)

(assert (=> d!1543170 (=> res!2051381 e!3011709)))

(assert (=> d!1543170 (= res!2051381 (and (is-Cons!54900 (apply!13324 lm!2280 lt!1969299)) (= (_1!32333 (h!61334 (apply!13324 lm!2280 lt!1969299))) key!5428)))))

(assert (=> d!1543170 (= (containsKey!4308 (apply!13324 lm!2280 lt!1969299) key!5428) e!3011709)))

(declare-fun b!4820381 () Bool)

(declare-fun e!3011710 () Bool)

(assert (=> b!4820381 (= e!3011709 e!3011710)))

(declare-fun res!2051382 () Bool)

(assert (=> b!4820381 (=> (not res!2051382) (not e!3011710))))

(assert (=> b!4820381 (= res!2051382 (is-Cons!54900 (apply!13324 lm!2280 lt!1969299)))))

(declare-fun b!4820382 () Bool)

(assert (=> b!4820382 (= e!3011710 (containsKey!4308 (t!362520 (apply!13324 lm!2280 lt!1969299)) key!5428))))

(assert (= (and d!1543170 (not res!2051381)) b!4820381))

(assert (= (and b!4820381 res!2051382) b!4820382))

(declare-fun m!5807786 () Bool)

(assert (=> b!4820382 m!5807786))

(assert (=> b!4820337 d!1543170))

(declare-fun d!1543172 () Bool)

(declare-datatypes ((Option!13460 0))(
  ( (None!13459) (Some!13459 (v!49128 List!55024)) )
))
(declare-fun get!18789 (Option!13460) List!55024)

(declare-fun getValueByKey!2587 (List!55025 (_ BitVec 64)) Option!13460)

(assert (=> d!1543172 (= (apply!13324 lm!2280 lt!1969299) (get!18789 (getValueByKey!2587 (toList!7433 lm!2280) lt!1969299)))))

(declare-fun bs!1161532 () Bool)

(assert (= bs!1161532 d!1543172))

(declare-fun m!5807788 () Bool)

(assert (=> bs!1161532 m!5807788))

(assert (=> bs!1161532 m!5807788))

(declare-fun m!5807790 () Bool)

(assert (=> bs!1161532 m!5807790))

(assert (=> b!4820337 d!1543172))

(declare-fun d!1543174 () Bool)

(declare-fun res!2051389 () Bool)

(declare-fun e!3011719 () Bool)

(assert (=> d!1543174 (=> res!2051389 e!3011719)))

(assert (=> d!1543174 (= res!2051389 (is-Nil!54901 (toList!7433 lt!1969298)))))

(assert (=> d!1543174 (= (forall!12555 (toList!7433 lt!1969298) lambda!235425) e!3011719)))

(declare-fun b!4820393 () Bool)

(declare-fun e!3011720 () Bool)

(assert (=> b!4820393 (= e!3011719 e!3011720)))

(declare-fun res!2051390 () Bool)

(assert (=> b!4820393 (=> (not res!2051390) (not e!3011720))))

(declare-fun dynLambda!22186 (Int tuple2!58080) Bool)

(assert (=> b!4820393 (= res!2051390 (dynLambda!22186 lambda!235425 (h!61335 (toList!7433 lt!1969298))))))

(declare-fun b!4820394 () Bool)

(assert (=> b!4820394 (= e!3011720 (forall!12555 (t!362521 (toList!7433 lt!1969298)) lambda!235425))))

(assert (= (and d!1543174 (not res!2051389)) b!4820393))

(assert (= (and b!4820393 res!2051390) b!4820394))

(declare-fun b_lambda!188955 () Bool)

(assert (=> (not b_lambda!188955) (not b!4820393)))

(declare-fun m!5807792 () Bool)

(assert (=> b!4820393 m!5807792))

(declare-fun m!5807794 () Bool)

(assert (=> b!4820394 m!5807794))

(assert (=> b!4820338 d!1543174))

(declare-fun d!1543176 () Bool)

(declare-fun tail!9379 (List!55025) List!55025)

(assert (=> d!1543176 (= (tail!9376 lm!2280) (ListLongMap!5938 (tail!9379 (toList!7433 lm!2280))))))

(declare-fun bs!1161533 () Bool)

(assert (= bs!1161533 d!1543176))

(declare-fun m!5807804 () Bool)

(assert (=> bs!1161533 m!5807804))

(assert (=> b!4820338 d!1543176))

(declare-fun d!1543180 () Bool)

(declare-fun res!2051392 () Bool)

(declare-fun e!3011723 () Bool)

(assert (=> d!1543180 (=> res!2051392 e!3011723)))

(assert (=> d!1543180 (= res!2051392 (is-Nil!54901 (toList!7433 lm!2280)))))

(assert (=> d!1543180 (= (forall!12555 (toList!7433 lm!2280) lambda!235425) e!3011723)))

(declare-fun b!4820398 () Bool)

(declare-fun e!3011724 () Bool)

(assert (=> b!4820398 (= e!3011723 e!3011724)))

(declare-fun res!2051393 () Bool)

(assert (=> b!4820398 (=> (not res!2051393) (not e!3011724))))

(assert (=> b!4820398 (= res!2051393 (dynLambda!22186 lambda!235425 (h!61335 (toList!7433 lm!2280))))))

(declare-fun b!4820399 () Bool)

(assert (=> b!4820399 (= e!3011724 (forall!12555 (t!362521 (toList!7433 lm!2280)) lambda!235425))))

(assert (= (and d!1543180 (not res!2051392)) b!4820398))

(assert (= (and b!4820398 res!2051393) b!4820399))

(declare-fun b_lambda!188957 () Bool)

(assert (=> (not b_lambda!188957) (not b!4820398)))

(declare-fun m!5807808 () Bool)

(assert (=> b!4820398 m!5807808))

(declare-fun m!5807810 () Bool)

(assert (=> b!4820399 m!5807810))

(assert (=> start!499410 d!1543180))

(declare-fun d!1543184 () Bool)

(declare-fun isStrictlySorted!966 (List!55025) Bool)

(assert (=> d!1543184 (= (inv!70483 lm!2280) (isStrictlySorted!966 (toList!7433 lm!2280)))))

(declare-fun bs!1161538 () Bool)

(assert (= bs!1161538 d!1543184))

(declare-fun m!5807814 () Bool)

(assert (=> bs!1161538 m!5807814))

(assert (=> start!499410 d!1543184))

(declare-fun d!1543188 () Bool)

(declare-fun e!3011739 () Bool)

(assert (=> d!1543188 e!3011739))

(declare-fun res!2051402 () Bool)

(assert (=> d!1543188 (=> res!2051402 e!3011739)))

(declare-fun lt!1969326 () Bool)

(assert (=> d!1543188 (= res!2051402 (not lt!1969326))))

(declare-fun lt!1969328 () Bool)

(assert (=> d!1543188 (= lt!1969326 lt!1969328)))

(declare-datatypes ((Unit!142296 0))(
  ( (Unit!142297) )
))
(declare-fun lt!1969327 () Unit!142296)

(declare-fun e!3011738 () Unit!142296)

(assert (=> d!1543188 (= lt!1969327 e!3011738)))

(declare-fun c!821414 () Bool)

(assert (=> d!1543188 (= c!821414 lt!1969328)))

(declare-fun containsKey!4311 (List!55025 (_ BitVec 64)) Bool)

(assert (=> d!1543188 (= lt!1969328 (containsKey!4311 (toList!7433 lm!2280) lt!1969299))))

(assert (=> d!1543188 (= (contains!18710 lm!2280 lt!1969299) lt!1969326)))

(declare-fun b!4820417 () Bool)

(declare-fun lt!1969329 () Unit!142296)

(assert (=> b!4820417 (= e!3011738 lt!1969329)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2373 (List!55025 (_ BitVec 64)) Unit!142296)

(assert (=> b!4820417 (= lt!1969329 (lemmaContainsKeyImpliesGetValueByKeyDefined!2373 (toList!7433 lm!2280) lt!1969299))))

(declare-fun isDefined!10576 (Option!13460) Bool)

(assert (=> b!4820417 (isDefined!10576 (getValueByKey!2587 (toList!7433 lm!2280) lt!1969299))))

(declare-fun b!4820418 () Bool)

(declare-fun Unit!142298 () Unit!142296)

(assert (=> b!4820418 (= e!3011738 Unit!142298)))

(declare-fun b!4820419 () Bool)

(assert (=> b!4820419 (= e!3011739 (isDefined!10576 (getValueByKey!2587 (toList!7433 lm!2280) lt!1969299)))))

(assert (= (and d!1543188 c!821414) b!4820417))

(assert (= (and d!1543188 (not c!821414)) b!4820418))

(assert (= (and d!1543188 (not res!2051402)) b!4820419))

(declare-fun m!5807824 () Bool)

(assert (=> d!1543188 m!5807824))

(declare-fun m!5807826 () Bool)

(assert (=> b!4820417 m!5807826))

(assert (=> b!4820417 m!5807788))

(assert (=> b!4820417 m!5807788))

(declare-fun m!5807828 () Bool)

(assert (=> b!4820417 m!5807828))

(assert (=> b!4820419 m!5807788))

(assert (=> b!4820419 m!5807788))

(assert (=> b!4820419 m!5807828))

(assert (=> b!4820340 d!1543188))

(declare-fun d!1543196 () Bool)

(declare-fun hash!5332 (Hashable!7237 K!16582) (_ BitVec 64))

(assert (=> d!1543196 (= (hash!5329 hashF!1509 key!5428) (hash!5332 hashF!1509 key!5428))))

(declare-fun bs!1161542 () Bool)

(assert (= bs!1161542 d!1543196))

(declare-fun m!5807830 () Bool)

(assert (=> bs!1161542 m!5807830))

(assert (=> b!4820340 d!1543196))

(declare-fun b!4820424 () Bool)

(declare-fun e!3011742 () Bool)

(declare-fun tp!1362291 () Bool)

(declare-fun tp!1362292 () Bool)

(assert (=> b!4820424 (= e!3011742 (and tp!1362291 tp!1362292))))

(assert (=> b!4820339 (= tp!1362277 e!3011742)))

(assert (= (and b!4820339 (is-Cons!54901 (toList!7433 lm!2280))) b!4820424))

(declare-fun b_lambda!188963 () Bool)

(assert (= b_lambda!188957 (or start!499410 b_lambda!188963)))

(declare-fun bs!1161543 () Bool)

(declare-fun d!1543198 () Bool)

(assert (= bs!1161543 (and d!1543198 start!499410)))

(declare-fun noDuplicateKeys!2429 (List!55024) Bool)

(assert (=> bs!1161543 (= (dynLambda!22186 lambda!235425 (h!61335 (toList!7433 lm!2280))) (noDuplicateKeys!2429 (_2!32334 (h!61335 (toList!7433 lm!2280)))))))

(declare-fun m!5807832 () Bool)

(assert (=> bs!1161543 m!5807832))

(assert (=> b!4820398 d!1543198))

(declare-fun b_lambda!188965 () Bool)

(assert (= b_lambda!188955 (or start!499410 b_lambda!188965)))

(declare-fun bs!1161544 () Bool)

(declare-fun d!1543200 () Bool)

(assert (= bs!1161544 (and d!1543200 start!499410)))

(assert (=> bs!1161544 (= (dynLambda!22186 lambda!235425 (h!61335 (toList!7433 lt!1969298))) (noDuplicateKeys!2429 (_2!32334 (h!61335 (toList!7433 lt!1969298)))))))

(declare-fun m!5807834 () Bool)

(assert (=> bs!1161544 m!5807834))

(assert (=> b!4820393 d!1543200))

(push 1)

(assert (not b!4820394))

(assert (not b!4820424))

(assert (not b!4820382))

(assert (not b!4820417))

(assert (not bs!1161544))

(assert (not d!1543184))

(assert (not d!1543196))

(assert (not b!4820419))

(assert (not b!4820399))

(assert tp_is_empty!34365)

(assert (not d!1543176))

(assert (not b_lambda!188963))

(assert (not bs!1161543))

(assert (not d!1543158))

(assert (not d!1543168))

(assert (not b_lambda!188965))

(assert (not d!1543188))

(assert (not d!1543172))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1543208 () Bool)

(declare-fun res!2051410 () Bool)

(declare-fun e!3011756 () Bool)

(assert (=> d!1543208 (=> res!2051410 e!3011756)))

(assert (=> d!1543208 (= res!2051410 (not (is-Cons!54900 (_2!32334 (h!61335 (toList!7433 lm!2280))))))))

(assert (=> d!1543208 (= (noDuplicateKeys!2429 (_2!32334 (h!61335 (toList!7433 lm!2280)))) e!3011756)))

(declare-fun b!4820444 () Bool)

(declare-fun e!3011757 () Bool)

(assert (=> b!4820444 (= e!3011756 e!3011757)))

(declare-fun res!2051411 () Bool)

(assert (=> b!4820444 (=> (not res!2051411) (not e!3011757))))

(assert (=> b!4820444 (= res!2051411 (not (containsKey!4308 (t!362520 (_2!32334 (h!61335 (toList!7433 lm!2280)))) (_1!32333 (h!61334 (_2!32334 (h!61335 (toList!7433 lm!2280))))))))))

(declare-fun b!4820445 () Bool)

(assert (=> b!4820445 (= e!3011757 (noDuplicateKeys!2429 (t!362520 (_2!32334 (h!61335 (toList!7433 lm!2280))))))))

(assert (= (and d!1543208 (not res!2051410)) b!4820444))

(assert (= (and b!4820444 res!2051411) b!4820445))

(declare-fun m!5807842 () Bool)

(assert (=> b!4820444 m!5807842))

(declare-fun m!5807844 () Bool)

(assert (=> b!4820445 m!5807844))

(assert (=> bs!1161543 d!1543208))

(declare-fun d!1543212 () Bool)

(assert (=> d!1543212 (isDefined!10576 (getValueByKey!2587 (toList!7433 lm!2280) lt!1969299))))

(declare-fun lt!1969335 () Unit!142296)

(declare-fun choose!34998 (List!55025 (_ BitVec 64)) Unit!142296)

(assert (=> d!1543212 (= lt!1969335 (choose!34998 (toList!7433 lm!2280) lt!1969299))))

(declare-fun e!3011764 () Bool)

(assert (=> d!1543212 e!3011764))

(declare-fun res!2051418 () Bool)

(assert (=> d!1543212 (=> (not res!2051418) (not e!3011764))))

(assert (=> d!1543212 (= res!2051418 (isStrictlySorted!966 (toList!7433 lm!2280)))))

(assert (=> d!1543212 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2373 (toList!7433 lm!2280) lt!1969299) lt!1969335)))

(declare-fun b!4820452 () Bool)

(assert (=> b!4820452 (= e!3011764 (containsKey!4311 (toList!7433 lm!2280) lt!1969299))))

(assert (= (and d!1543212 res!2051418) b!4820452))

(assert (=> d!1543212 m!5807788))

(assert (=> d!1543212 m!5807788))

(assert (=> d!1543212 m!5807828))

(declare-fun m!5807846 () Bool)

(assert (=> d!1543212 m!5807846))

(assert (=> d!1543212 m!5807814))

(assert (=> b!4820452 m!5807824))

(assert (=> b!4820417 d!1543212))

(declare-fun d!1543214 () Bool)

(declare-fun isEmpty!29626 (Option!13460) Bool)

(assert (=> d!1543214 (= (isDefined!10576 (getValueByKey!2587 (toList!7433 lm!2280) lt!1969299)) (not (isEmpty!29626 (getValueByKey!2587 (toList!7433 lm!2280) lt!1969299))))))

(declare-fun bs!1161546 () Bool)

(assert (= bs!1161546 d!1543214))

(assert (=> bs!1161546 m!5807788))

(declare-fun m!5807848 () Bool)

(assert (=> bs!1161546 m!5807848))

(assert (=> b!4820417 d!1543214))

(declare-fun b!4820465 () Bool)

(declare-fun e!3011772 () Option!13460)

(assert (=> b!4820465 (= e!3011772 (getValueByKey!2587 (t!362521 (toList!7433 lm!2280)) lt!1969299))))

(declare-fun b!4820464 () Bool)

(declare-fun e!3011771 () Option!13460)

(assert (=> b!4820464 (= e!3011771 e!3011772)))

(declare-fun c!821426 () Bool)

(assert (=> b!4820464 (= c!821426 (and (is-Cons!54901 (toList!7433 lm!2280)) (not (= (_1!32334 (h!61335 (toList!7433 lm!2280))) lt!1969299))))))

(declare-fun b!4820466 () Bool)

(assert (=> b!4820466 (= e!3011772 None!13459)))

(declare-fun b!4820463 () Bool)

(assert (=> b!4820463 (= e!3011771 (Some!13459 (_2!32334 (h!61335 (toList!7433 lm!2280)))))))

(declare-fun d!1543216 () Bool)

(declare-fun c!821425 () Bool)

(assert (=> d!1543216 (= c!821425 (and (is-Cons!54901 (toList!7433 lm!2280)) (= (_1!32334 (h!61335 (toList!7433 lm!2280))) lt!1969299)))))

(assert (=> d!1543216 (= (getValueByKey!2587 (toList!7433 lm!2280) lt!1969299) e!3011771)))

(assert (= (and d!1543216 c!821425) b!4820463))

(assert (= (and d!1543216 (not c!821425)) b!4820464))

(assert (= (and b!4820464 c!821426) b!4820465))

(assert (= (and b!4820464 (not c!821426)) b!4820466))

(declare-fun m!5807854 () Bool)

(assert (=> b!4820465 m!5807854))

(assert (=> b!4820417 d!1543216))

(declare-fun d!1543222 () Bool)

(declare-fun res!2051429 () Bool)

(declare-fun e!3011781 () Bool)

(assert (=> d!1543222 (=> res!2051429 e!3011781)))

(assert (=> d!1543222 (= res!2051429 (or (is-Nil!54901 (toList!7433 lm!2280)) (is-Nil!54901 (t!362521 (toList!7433 lm!2280)))))))

(assert (=> d!1543222 (= (isStrictlySorted!966 (toList!7433 lm!2280)) e!3011781)))

(declare-fun b!4820475 () Bool)

(declare-fun e!3011782 () Bool)

(assert (=> b!4820475 (= e!3011781 e!3011782)))

(declare-fun res!2051430 () Bool)

(assert (=> b!4820475 (=> (not res!2051430) (not e!3011782))))

(assert (=> b!4820475 (= res!2051430 (bvslt (_1!32334 (h!61335 (toList!7433 lm!2280))) (_1!32334 (h!61335 (t!362521 (toList!7433 lm!2280))))))))

(declare-fun b!4820476 () Bool)

(assert (=> b!4820476 (= e!3011782 (isStrictlySorted!966 (t!362521 (toList!7433 lm!2280))))))

(assert (= (and d!1543222 (not res!2051429)) b!4820475))

(assert (= (and b!4820475 res!2051430) b!4820476))

(declare-fun m!5807856 () Bool)

(assert (=> b!4820476 m!5807856))

(assert (=> d!1543184 d!1543222))

(declare-fun d!1543224 () Bool)

(declare-fun res!2051431 () Bool)

(declare-fun e!3011783 () Bool)

(assert (=> d!1543224 (=> res!2051431 e!3011783)))

(assert (=> d!1543224 (= res!2051431 (is-Nil!54901 (toList!7433 lm!2280)))))

(assert (=> d!1543224 (= (forall!12555 (toList!7433 lm!2280) lambda!235436) e!3011783)))

(declare-fun b!4820477 () Bool)

(declare-fun e!3011784 () Bool)

(assert (=> b!4820477 (= e!3011783 e!3011784)))

(declare-fun res!2051432 () Bool)

(assert (=> b!4820477 (=> (not res!2051432) (not e!3011784))))

(assert (=> b!4820477 (= res!2051432 (dynLambda!22186 lambda!235436 (h!61335 (toList!7433 lm!2280))))))

(declare-fun b!4820478 () Bool)

(assert (=> b!4820478 (= e!3011784 (forall!12555 (t!362521 (toList!7433 lm!2280)) lambda!235436))))

(assert (= (and d!1543224 (not res!2051431)) b!4820477))

(assert (= (and b!4820477 res!2051432) b!4820478))

(declare-fun b_lambda!188967 () Bool)

(assert (=> (not b_lambda!188967) (not b!4820477)))

(declare-fun m!5807858 () Bool)

(assert (=> b!4820477 m!5807858))

(declare-fun m!5807860 () Bool)

(assert (=> b!4820478 m!5807860))

(assert (=> d!1543158 d!1543224))

(assert (=> b!4820419 d!1543214))

(assert (=> b!4820419 d!1543216))

(declare-fun d!1543226 () Bool)

(assert (=> d!1543226 (= (tail!9379 (toList!7433 lm!2280)) (t!362521 (toList!7433 lm!2280)))))

(assert (=> d!1543176 d!1543226))

(declare-fun d!1543228 () Bool)

(declare-fun res!2051433 () Bool)

(declare-fun e!3011785 () Bool)

(assert (=> d!1543228 (=> res!2051433 e!3011785)))

(assert (=> d!1543228 (= res!2051433 (is-Nil!54901 (t!362521 (toList!7433 lm!2280))))))

(assert (=> d!1543228 (= (forall!12555 (t!362521 (toList!7433 lm!2280)) lambda!235425) e!3011785)))

(declare-fun b!4820479 () Bool)

(declare-fun e!3011786 () Bool)

(assert (=> b!4820479 (= e!3011785 e!3011786)))

(declare-fun res!2051434 () Bool)

(assert (=> b!4820479 (=> (not res!2051434) (not e!3011786))))

(assert (=> b!4820479 (= res!2051434 (dynLambda!22186 lambda!235425 (h!61335 (t!362521 (toList!7433 lm!2280)))))))

(declare-fun b!4820480 () Bool)

(assert (=> b!4820480 (= e!3011786 (forall!12555 (t!362521 (t!362521 (toList!7433 lm!2280))) lambda!235425))))

(assert (= (and d!1543228 (not res!2051433)) b!4820479))

(assert (= (and b!4820479 res!2051434) b!4820480))

(declare-fun b_lambda!188969 () Bool)

(assert (=> (not b_lambda!188969) (not b!4820479)))

(declare-fun m!5807862 () Bool)

(assert (=> b!4820479 m!5807862))

(declare-fun m!5807864 () Bool)

(assert (=> b!4820480 m!5807864))

(assert (=> b!4820399 d!1543228))

(declare-fun d!1543230 () Bool)

(declare-fun res!2051437 () Bool)

(declare-fun e!3011789 () Bool)

(assert (=> d!1543230 (=> res!2051437 e!3011789)))

(assert (=> d!1543230 (= res!2051437 (not (is-Cons!54900 (_2!32334 (h!61335 (toList!7433 lt!1969298))))))))

(assert (=> d!1543230 (= (noDuplicateKeys!2429 (_2!32334 (h!61335 (toList!7433 lt!1969298)))) e!3011789)))

(declare-fun b!4820483 () Bool)

(declare-fun e!3011790 () Bool)

(assert (=> b!4820483 (= e!3011789 e!3011790)))

(declare-fun res!2051438 () Bool)

(assert (=> b!4820483 (=> (not res!2051438) (not e!3011790))))

(assert (=> b!4820483 (= res!2051438 (not (containsKey!4308 (t!362520 (_2!32334 (h!61335 (toList!7433 lt!1969298)))) (_1!32333 (h!61334 (_2!32334 (h!61335 (toList!7433 lt!1969298))))))))))

(declare-fun b!4820484 () Bool)

(assert (=> b!4820484 (= e!3011790 (noDuplicateKeys!2429 (t!362520 (_2!32334 (h!61335 (toList!7433 lt!1969298))))))))

(assert (= (and d!1543230 (not res!2051437)) b!4820483))

(assert (= (and b!4820483 res!2051438) b!4820484))

(declare-fun m!5807866 () Bool)

(assert (=> b!4820483 m!5807866))

(declare-fun m!5807868 () Bool)

(assert (=> b!4820484 m!5807868))

(assert (=> bs!1161544 d!1543230))

(declare-fun d!1543232 () Bool)

(declare-fun res!2051439 () Bool)

(declare-fun e!3011791 () Bool)

(assert (=> d!1543232 (=> res!2051439 e!3011791)))

(assert (=> d!1543232 (= res!2051439 (is-Nil!54901 (t!362521 (toList!7433 lt!1969298))))))

(assert (=> d!1543232 (= (forall!12555 (t!362521 (toList!7433 lt!1969298)) lambda!235425) e!3011791)))

(declare-fun b!4820485 () Bool)

(declare-fun e!3011792 () Bool)

(assert (=> b!4820485 (= e!3011791 e!3011792)))

(declare-fun res!2051440 () Bool)

(assert (=> b!4820485 (=> (not res!2051440) (not e!3011792))))

(assert (=> b!4820485 (= res!2051440 (dynLambda!22186 lambda!235425 (h!61335 (t!362521 (toList!7433 lt!1969298)))))))

(declare-fun b!4820486 () Bool)

(assert (=> b!4820486 (= e!3011792 (forall!12555 (t!362521 (t!362521 (toList!7433 lt!1969298))) lambda!235425))))

(assert (= (and d!1543232 (not res!2051439)) b!4820485))

(assert (= (and b!4820485 res!2051440) b!4820486))

(declare-fun b_lambda!188971 () Bool)

(assert (=> (not b_lambda!188971) (not b!4820485)))

(declare-fun m!5807872 () Bool)

(assert (=> b!4820485 m!5807872))

(declare-fun m!5807874 () Bool)

(assert (=> b!4820486 m!5807874))

(assert (=> b!4820394 d!1543232))

(declare-fun d!1543236 () Bool)

(declare-fun res!2051441 () Bool)

(declare-fun e!3011793 () Bool)

(assert (=> d!1543236 (=> res!2051441 e!3011793)))

(assert (=> d!1543236 (= res!2051441 (and (is-Cons!54900 (t!362520 (apply!13324 lm!2280 lt!1969299))) (= (_1!32333 (h!61334 (t!362520 (apply!13324 lm!2280 lt!1969299)))) key!5428)))))

(assert (=> d!1543236 (= (containsKey!4308 (t!362520 (apply!13324 lm!2280 lt!1969299)) key!5428) e!3011793)))

(declare-fun b!4820487 () Bool)

(declare-fun e!3011794 () Bool)

(assert (=> b!4820487 (= e!3011793 e!3011794)))

(declare-fun res!2051442 () Bool)

(assert (=> b!4820487 (=> (not res!2051442) (not e!3011794))))

(assert (=> b!4820487 (= res!2051442 (is-Cons!54900 (t!362520 (apply!13324 lm!2280 lt!1969299))))))

(declare-fun b!4820488 () Bool)

(assert (=> b!4820488 (= e!3011794 (containsKey!4308 (t!362520 (t!362520 (apply!13324 lm!2280 lt!1969299))) key!5428))))

(assert (= (and d!1543236 (not res!2051441)) b!4820487))

(assert (= (and b!4820487 res!2051442) b!4820488))

(declare-fun m!5807876 () Bool)

(assert (=> b!4820488 m!5807876))

(assert (=> b!4820382 d!1543236))

(declare-fun d!1543238 () Bool)

(declare-fun res!2051447 () Bool)

(declare-fun e!3011799 () Bool)

(assert (=> d!1543238 (=> res!2051447 e!3011799)))

(assert (=> d!1543238 (= res!2051447 (and (is-Cons!54901 (toList!7433 lm!2280)) (= (_1!32334 (h!61335 (toList!7433 lm!2280))) lt!1969299)))))

(assert (=> d!1543238 (= (containsKey!4311 (toList!7433 lm!2280) lt!1969299) e!3011799)))

(declare-fun b!4820493 () Bool)

(declare-fun e!3011800 () Bool)

(assert (=> b!4820493 (= e!3011799 e!3011800)))

(declare-fun res!2051448 () Bool)

(assert (=> b!4820493 (=> (not res!2051448) (not e!3011800))))

(assert (=> b!4820493 (= res!2051448 (and (or (not (is-Cons!54901 (toList!7433 lm!2280))) (bvsle (_1!32334 (h!61335 (toList!7433 lm!2280))) lt!1969299)) (is-Cons!54901 (toList!7433 lm!2280)) (bvslt (_1!32334 (h!61335 (toList!7433 lm!2280))) lt!1969299)))))

(declare-fun b!4820494 () Bool)

(assert (=> b!4820494 (= e!3011800 (containsKey!4311 (t!362521 (toList!7433 lm!2280)) lt!1969299))))

(assert (= (and d!1543238 (not res!2051447)) b!4820493))

(assert (= (and b!4820493 res!2051448) b!4820494))

(declare-fun m!5807878 () Bool)

(assert (=> b!4820494 m!5807878))

(assert (=> d!1543188 d!1543238))

(declare-fun d!1543240 () Bool)

(declare-fun res!2051449 () Bool)

(declare-fun e!3011801 () Bool)

(assert (=> d!1543240 (=> res!2051449 e!3011801)))

(assert (=> d!1543240 (= res!2051449 (is-Nil!54901 (toList!7433 lt!1969298)))))

(assert (=> d!1543240 (= (forall!12555 (toList!7433 lt!1969298) lambda!235437) e!3011801)))

(declare-fun b!4820495 () Bool)

(declare-fun e!3011802 () Bool)

(assert (=> b!4820495 (= e!3011801 e!3011802)))

(declare-fun res!2051450 () Bool)

(assert (=> b!4820495 (=> (not res!2051450) (not e!3011802))))

(assert (=> b!4820495 (= res!2051450 (dynLambda!22186 lambda!235437 (h!61335 (toList!7433 lt!1969298))))))

(declare-fun b!4820496 () Bool)

(assert (=> b!4820496 (= e!3011802 (forall!12555 (t!362521 (toList!7433 lt!1969298)) lambda!235437))))

(assert (= (and d!1543240 (not res!2051449)) b!4820495))

(assert (= (and b!4820495 res!2051450) b!4820496))

(declare-fun b_lambda!188973 () Bool)

(assert (=> (not b_lambda!188973) (not b!4820495)))

(declare-fun m!5807880 () Bool)

(assert (=> b!4820495 m!5807880))

(declare-fun m!5807882 () Bool)

(assert (=> b!4820496 m!5807882))

(assert (=> d!1543168 d!1543240))

(declare-fun d!1543242 () Bool)

(assert (=> d!1543242 (= (get!18789 (getValueByKey!2587 (toList!7433 lm!2280) lt!1969299)) (v!49128 (getValueByKey!2587 (toList!7433 lm!2280) lt!1969299)))))

(assert (=> d!1543172 d!1543242))

(assert (=> d!1543172 d!1543216))

(declare-fun d!1543244 () Bool)

(declare-fun choose!35000 (Hashable!7237 K!16582) (_ BitVec 64))

(assert (=> d!1543244 (= (hash!5332 hashF!1509 key!5428) (choose!35000 hashF!1509 key!5428))))

(declare-fun bs!1161547 () Bool)

(assert (= bs!1161547 d!1543244))

(declare-fun m!5807884 () Bool)

(assert (=> bs!1161547 m!5807884))

(assert (=> d!1543196 d!1543244))

(declare-fun tp!1362295 () Bool)

(declare-fun e!3011809 () Bool)

(declare-fun b!4820505 () Bool)

(declare-fun tp_is_empty!34369 () Bool)

(assert (=> b!4820505 (= e!3011809 (and tp_is_empty!34365 tp_is_empty!34369 tp!1362295))))

(assert (=> b!4820424 (= tp!1362291 e!3011809)))

(assert (= (and b!4820424 (is-Cons!54900 (_2!32334 (h!61335 (toList!7433 lm!2280))))) b!4820505))

(declare-fun b!4820506 () Bool)

(declare-fun e!3011810 () Bool)

(declare-fun tp!1362296 () Bool)

(declare-fun tp!1362297 () Bool)

(assert (=> b!4820506 (= e!3011810 (and tp!1362296 tp!1362297))))

(assert (=> b!4820424 (= tp!1362292 e!3011810)))

(assert (= (and b!4820424 (is-Cons!54901 (t!362521 (toList!7433 lm!2280)))) b!4820506))

(declare-fun b_lambda!188975 () Bool)

(assert (= b_lambda!188967 (or d!1543158 b_lambda!188975)))

(declare-fun bs!1161548 () Bool)

(declare-fun d!1543246 () Bool)

(assert (= bs!1161548 (and d!1543246 d!1543158)))

(declare-fun allKeysSameHash!1992 (List!55024 (_ BitVec 64) Hashable!7237) Bool)

(assert (=> bs!1161548 (= (dynLambda!22186 lambda!235436 (h!61335 (toList!7433 lm!2280))) (allKeysSameHash!1992 (_2!32334 (h!61335 (toList!7433 lm!2280))) (_1!32334 (h!61335 (toList!7433 lm!2280))) hashF!1509))))

(declare-fun m!5807886 () Bool)

(assert (=> bs!1161548 m!5807886))

(assert (=> b!4820477 d!1543246))

(declare-fun b_lambda!188977 () Bool)

(assert (= b_lambda!188971 (or start!499410 b_lambda!188977)))

(declare-fun bs!1161549 () Bool)

(declare-fun d!1543248 () Bool)

(assert (= bs!1161549 (and d!1543248 start!499410)))

(assert (=> bs!1161549 (= (dynLambda!22186 lambda!235425 (h!61335 (t!362521 (toList!7433 lt!1969298)))) (noDuplicateKeys!2429 (_2!32334 (h!61335 (t!362521 (toList!7433 lt!1969298))))))))

(declare-fun m!5807888 () Bool)

(assert (=> bs!1161549 m!5807888))

(assert (=> b!4820485 d!1543248))

(declare-fun b_lambda!188979 () Bool)

(assert (= b_lambda!188969 (or start!499410 b_lambda!188979)))

(declare-fun bs!1161550 () Bool)

(declare-fun d!1543250 () Bool)

(assert (= bs!1161550 (and d!1543250 start!499410)))

(assert (=> bs!1161550 (= (dynLambda!22186 lambda!235425 (h!61335 (t!362521 (toList!7433 lm!2280)))) (noDuplicateKeys!2429 (_2!32334 (h!61335 (t!362521 (toList!7433 lm!2280))))))))

(declare-fun m!5807890 () Bool)

(assert (=> bs!1161550 m!5807890))

(assert (=> b!4820479 d!1543250))

(declare-fun b_lambda!188981 () Bool)

(assert (= b_lambda!188973 (or d!1543168 b_lambda!188981)))

(declare-fun bs!1161551 () Bool)

(declare-fun d!1543252 () Bool)

(assert (= bs!1161551 (and d!1543252 d!1543168)))

(assert (=> bs!1161551 (= (dynLambda!22186 lambda!235437 (h!61335 (toList!7433 lt!1969298))) (allKeysSameHash!1992 (_2!32334 (h!61335 (toList!7433 lt!1969298))) (_1!32334 (h!61335 (toList!7433 lt!1969298))) hashF!1509))))

(declare-fun m!5807892 () Bool)

(assert (=> bs!1161551 m!5807892))

(assert (=> b!4820495 d!1543252))

(push 1)

(assert (not b!4820494))

(assert (not b!4820478))

(assert (not b!4820480))

(assert (not bs!1161548))

(assert (not b_lambda!188981))

(assert (not b!4820484))

(assert (not b_lambda!188965))

(assert (not b!4820476))

(assert (not b_lambda!188977))

(assert (not b!4820483))

(assert (not d!1543212))

(assert (not b_lambda!188963))

(assert (not b!4820506))

(assert tp_is_empty!34369)

(assert (not d!1543214))

(assert (not b!4820452))

(assert (not bs!1161549))

(assert (not b_lambda!188979))

(assert (not bs!1161551))

(assert (not b!4820444))

(assert (not d!1543244))

(assert (not b!4820445))

(assert (not b_lambda!188975))

(assert (not b!4820488))

(assert (not b!4820496))

(assert tp_is_empty!34365)

(assert (not b!4820465))

(assert (not bs!1161550))

(assert (not b!4820505))

(assert (not b!4820486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

