; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437606 () Bool)

(assert start!437606)

(declare-fun tp_is_empty!27299 () Bool)

(declare-fun tp!1335934 () Bool)

(declare-fun tp_is_empty!27297 () Bool)

(declare-fun b!4462202 () Bool)

(declare-fun e!2778538 () Bool)

(assert (=> b!4462202 (= e!2778538 (and tp_is_empty!27297 tp_is_empty!27299 tp!1335934))))

(declare-fun b!4462203 () Bool)

(declare-fun res!1850737 () Bool)

(declare-fun e!2778534 () Bool)

(assert (=> b!4462203 (=> (not res!1850737) (not e!2778534))))

(declare-datatypes ((Hashable!5400 0))(
  ( (HashableExt!5399 (__x!31103 Int)) )
))
(declare-fun hashF!1107 () Hashable!5400)

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((K!11653 0))(
  ( (K!11654 (val!17593 Int)) )
))
(declare-datatypes ((V!11899 0))(
  ( (V!11900 (val!17594 Int)) )
))
(declare-datatypes ((tuple2!50454 0))(
  ( (tuple2!50455 (_1!28521 K!11653) (_2!28521 V!11899)) )
))
(declare-datatypes ((List!50354 0))(
  ( (Nil!50230) (Cons!50230 (h!55977 tuple2!50454) (t!357304 List!50354)) )
))
(declare-fun newBucket!178 () List!50354)

(declare-fun allKeysSameHash!859 (List!50354 (_ BitVec 64) Hashable!5400) Bool)

(assert (=> b!4462203 (= res!1850737 (allKeysSameHash!859 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4462204 () Bool)

(declare-fun e!2778539 () Bool)

(assert (=> b!4462204 (= e!2778534 (not e!2778539))))

(declare-fun res!1850734 () Bool)

(assert (=> b!4462204 (=> res!1850734 e!2778539)))

(declare-fun lt!1652997 () List!50354)

(declare-fun key!3287 () K!11653)

(declare-fun removePairForKey!632 (List!50354 K!11653) List!50354)

(assert (=> b!4462204 (= res!1850734 (not (= newBucket!178 (removePairForKey!632 lt!1652997 key!3287))))))

(declare-datatypes ((Unit!86899 0))(
  ( (Unit!86900) )
))
(declare-fun lt!1653000 () Unit!86899)

(declare-fun lambda!162008 () Int)

(declare-datatypes ((tuple2!50456 0))(
  ( (tuple2!50457 (_1!28522 (_ BitVec 64)) (_2!28522 List!50354)) )
))
(declare-fun lt!1653005 () tuple2!50456)

(declare-datatypes ((List!50355 0))(
  ( (Nil!50231) (Cons!50231 (h!55978 tuple2!50456) (t!357305 List!50355)) )
))
(declare-datatypes ((ListLongMap!2649 0))(
  ( (ListLongMap!2650 (toList!4017 List!50355)) )
))
(declare-fun lm!1477 () ListLongMap!2649)

(declare-fun forallContained!2222 (List!50355 Int tuple2!50456) Unit!86899)

(assert (=> b!4462204 (= lt!1653000 (forallContained!2222 (toList!4017 lm!1477) lambda!162008 lt!1653005))))

(declare-fun contains!12752 (List!50355 tuple2!50456) Bool)

(assert (=> b!4462204 (contains!12752 (toList!4017 lm!1477) lt!1653005)))

(assert (=> b!4462204 (= lt!1653005 (tuple2!50457 hash!344 lt!1652997))))

(declare-fun lt!1653004 () Unit!86899)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!517 (List!50355 (_ BitVec 64) List!50354) Unit!86899)

(assert (=> b!4462204 (= lt!1653004 (lemmaGetValueByKeyImpliesContainsTuple!517 (toList!4017 lm!1477) hash!344 lt!1652997))))

(declare-fun apply!11742 (ListLongMap!2649 (_ BitVec 64)) List!50354)

(assert (=> b!4462204 (= lt!1652997 (apply!11742 lm!1477 hash!344))))

(declare-fun lt!1652998 () (_ BitVec 64))

(declare-fun contains!12753 (ListLongMap!2649 (_ BitVec 64)) Bool)

(assert (=> b!4462204 (contains!12753 lm!1477 lt!1652998)))

(declare-fun lt!1653003 () Unit!86899)

(declare-fun lemmaInGenMapThenLongMapContainsHash!79 (ListLongMap!2649 K!11653 Hashable!5400) Unit!86899)

(assert (=> b!4462204 (= lt!1653003 (lemmaInGenMapThenLongMapContainsHash!79 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4462205 () Bool)

(declare-fun e!2778537 () Bool)

(assert (=> b!4462205 (= e!2778539 e!2778537)))

(declare-fun res!1850733 () Bool)

(assert (=> b!4462205 (=> res!1850733 e!2778537)))

(declare-fun lt!1653002 () Bool)

(assert (=> b!4462205 (= res!1850733 lt!1653002)))

(declare-fun lt!1652999 () Unit!86899)

(declare-fun e!2778536 () Unit!86899)

(assert (=> b!4462205 (= lt!1652999 e!2778536)))

(declare-fun c!759295 () Bool)

(assert (=> b!4462205 (= c!759295 lt!1653002)))

(declare-fun containsKey!1417 (List!50354 K!11653) Bool)

(assert (=> b!4462205 (= lt!1653002 (not (containsKey!1417 (_2!28522 (h!55978 (toList!4017 lm!1477))) key!3287)))))

(declare-fun b!4462206 () Bool)

(declare-fun res!1850741 () Bool)

(assert (=> b!4462206 (=> res!1850741 e!2778539)))

(declare-fun noDuplicateKeys!1005 (List!50354) Bool)

(assert (=> b!4462206 (= res!1850741 (not (noDuplicateKeys!1005 newBucket!178)))))

(declare-fun res!1850735 () Bool)

(declare-fun e!2778540 () Bool)

(assert (=> start!437606 (=> (not res!1850735) (not e!2778540))))

(declare-fun forall!9947 (List!50355 Int) Bool)

(assert (=> start!437606 (= res!1850735 (forall!9947 (toList!4017 lm!1477) lambda!162008))))

(assert (=> start!437606 e!2778540))

(assert (=> start!437606 true))

(declare-fun e!2778535 () Bool)

(declare-fun inv!65838 (ListLongMap!2649) Bool)

(assert (=> start!437606 (and (inv!65838 lm!1477) e!2778535)))

(assert (=> start!437606 tp_is_empty!27297))

(assert (=> start!437606 e!2778538))

(declare-fun b!4462207 () Bool)

(declare-fun Unit!86901 () Unit!86899)

(assert (=> b!4462207 (= e!2778536 Unit!86901)))

(declare-fun b!4462208 () Bool)

(declare-fun tp!1335935 () Bool)

(assert (=> b!4462208 (= e!2778535 tp!1335935)))

(declare-fun b!4462209 () Bool)

(declare-fun res!1850732 () Bool)

(assert (=> b!4462209 (=> (not res!1850732) (not e!2778540))))

(declare-datatypes ((ListMap!3279 0))(
  ( (ListMap!3280 (toList!4018 List!50354)) )
))
(declare-fun contains!12754 (ListMap!3279 K!11653) Bool)

(declare-fun extractMap!1061 (List!50355) ListMap!3279)

(assert (=> b!4462209 (= res!1850732 (contains!12754 (extractMap!1061 (toList!4017 lm!1477)) key!3287))))

(declare-fun b!4462210 () Bool)

(declare-fun Unit!86902 () Unit!86899)

(assert (=> b!4462210 (= e!2778536 Unit!86902)))

(declare-fun lt!1652996 () Unit!86899)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!5 (ListLongMap!2649 K!11653 Hashable!5400) Unit!86899)

(assert (=> b!4462210 (= lt!1652996 (lemmaNotInItsHashBucketThenNotInMap!5 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4462210 false))

(declare-fun b!4462211 () Bool)

(assert (=> b!4462211 (= e!2778540 e!2778534)))

(declare-fun res!1850738 () Bool)

(assert (=> b!4462211 (=> (not res!1850738) (not e!2778534))))

(assert (=> b!4462211 (= res!1850738 (= lt!1652998 hash!344))))

(declare-fun hash!2388 (Hashable!5400 K!11653) (_ BitVec 64))

(assert (=> b!4462211 (= lt!1652998 (hash!2388 hashF!1107 key!3287))))

(declare-fun b!4462212 () Bool)

(declare-fun res!1850736 () Bool)

(assert (=> b!4462212 (=> (not res!1850736) (not e!2778540))))

(declare-fun allKeysSameHashInMap!1112 (ListLongMap!2649 Hashable!5400) Bool)

(assert (=> b!4462212 (= res!1850736 (allKeysSameHashInMap!1112 lm!1477 hashF!1107))))

(declare-fun b!4462213 () Bool)

(declare-fun e!2778541 () Bool)

(assert (=> b!4462213 (= e!2778537 e!2778541)))

(declare-fun res!1850739 () Bool)

(assert (=> b!4462213 (=> res!1850739 e!2778541)))

(declare-fun lt!1653001 () List!50355)

(declare-fun containsKeyBiggerList!5 (List!50355 K!11653) Bool)

(assert (=> b!4462213 (= res!1850739 (not (containsKeyBiggerList!5 lt!1653001 key!3287)))))

(assert (=> b!4462213 (= lt!1653001 (Cons!50231 (h!55978 (toList!4017 lm!1477)) Nil!50231))))

(declare-fun b!4462214 () Bool)

(assert (=> b!4462214 (= e!2778541 (forall!9947 lt!1653001 lambda!162008))))

(assert (=> b!4462214 (contains!12754 (extractMap!1061 lt!1653001) key!3287)))

(declare-fun lt!1652995 () Unit!86899)

(declare-fun lemmaListContainsThenExtractedMapContains!1 (ListLongMap!2649 K!11653 Hashable!5400) Unit!86899)

(assert (=> b!4462214 (= lt!1652995 (lemmaListContainsThenExtractedMapContains!1 (ListLongMap!2650 lt!1653001) key!3287 hashF!1107))))

(declare-fun b!4462215 () Bool)

(declare-fun res!1850740 () Bool)

(assert (=> b!4462215 (=> res!1850740 e!2778539)))

(assert (=> b!4462215 (= res!1850740 (or (is-Nil!50231 (toList!4017 lm!1477)) (not (= (_1!28522 (h!55978 (toList!4017 lm!1477))) hash!344))))))

(assert (= (and start!437606 res!1850735) b!4462212))

(assert (= (and b!4462212 res!1850736) b!4462209))

(assert (= (and b!4462209 res!1850732) b!4462211))

(assert (= (and b!4462211 res!1850738) b!4462203))

(assert (= (and b!4462203 res!1850737) b!4462204))

(assert (= (and b!4462204 (not res!1850734)) b!4462206))

(assert (= (and b!4462206 (not res!1850741)) b!4462215))

(assert (= (and b!4462215 (not res!1850740)) b!4462205))

(assert (= (and b!4462205 c!759295) b!4462210))

(assert (= (and b!4462205 (not c!759295)) b!4462207))

(assert (= (and b!4462205 (not res!1850733)) b!4462213))

(assert (= (and b!4462213 (not res!1850739)) b!4462214))

(assert (= start!437606 b!4462208))

(assert (= (and start!437606 (is-Cons!50230 newBucket!178)) b!4462202))

(declare-fun m!5165161 () Bool)

(assert (=> b!4462203 m!5165161))

(declare-fun m!5165163 () Bool)

(assert (=> b!4462212 m!5165163))

(declare-fun m!5165165 () Bool)

(assert (=> b!4462204 m!5165165))

(declare-fun m!5165167 () Bool)

(assert (=> b!4462204 m!5165167))

(declare-fun m!5165169 () Bool)

(assert (=> b!4462204 m!5165169))

(declare-fun m!5165171 () Bool)

(assert (=> b!4462204 m!5165171))

(declare-fun m!5165173 () Bool)

(assert (=> b!4462204 m!5165173))

(declare-fun m!5165175 () Bool)

(assert (=> b!4462204 m!5165175))

(declare-fun m!5165177 () Bool)

(assert (=> b!4462204 m!5165177))

(declare-fun m!5165179 () Bool)

(assert (=> start!437606 m!5165179))

(declare-fun m!5165181 () Bool)

(assert (=> start!437606 m!5165181))

(declare-fun m!5165183 () Bool)

(assert (=> b!4462205 m!5165183))

(declare-fun m!5165185 () Bool)

(assert (=> b!4462210 m!5165185))

(declare-fun m!5165187 () Bool)

(assert (=> b!4462213 m!5165187))

(declare-fun m!5165189 () Bool)

(assert (=> b!4462214 m!5165189))

(declare-fun m!5165191 () Bool)

(assert (=> b!4462214 m!5165191))

(assert (=> b!4462214 m!5165191))

(declare-fun m!5165193 () Bool)

(assert (=> b!4462214 m!5165193))

(declare-fun m!5165195 () Bool)

(assert (=> b!4462214 m!5165195))

(declare-fun m!5165197 () Bool)

(assert (=> b!4462211 m!5165197))

(declare-fun m!5165199 () Bool)

(assert (=> b!4462206 m!5165199))

(declare-fun m!5165201 () Bool)

(assert (=> b!4462209 m!5165201))

(assert (=> b!4462209 m!5165201))

(declare-fun m!5165203 () Bool)

(assert (=> b!4462209 m!5165203))

(push 1)

(assert (not b!4462202))

(assert (not b!4462208))

(assert (not b!4462213))

(assert (not b!4462214))

(assert (not b!4462209))

(assert (not b!4462205))

(assert (not b!4462210))

(assert (not b!4462204))

(assert (not b!4462212))

(assert (not b!4462211))

(assert (not start!437606))

(assert (not b!4462203))

(assert tp_is_empty!27299)

(assert (not b!4462206))

(assert tp_is_empty!27297)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!791558 () Bool)

(declare-fun d!1360343 () Bool)

(assert (= bs!791558 (and d!1360343 start!437606)))

(declare-fun lambda!162018 () Int)

(assert (=> bs!791558 (not (= lambda!162018 lambda!162008))))

(assert (=> d!1360343 true))

(assert (=> d!1360343 (= (allKeysSameHashInMap!1112 lm!1477 hashF!1107) (forall!9947 (toList!4017 lm!1477) lambda!162018))))

(declare-fun bs!791559 () Bool)

(assert (= bs!791559 d!1360343))

(declare-fun m!5165249 () Bool)

(assert (=> bs!791559 m!5165249))

(assert (=> b!4462212 d!1360343))

(declare-fun d!1360345 () Bool)

(declare-fun res!1850776 () Bool)

(declare-fun e!2778570 () Bool)

(assert (=> d!1360345 (=> res!1850776 e!2778570)))

(assert (=> d!1360345 (= res!1850776 (is-Nil!50231 (toList!4017 lm!1477)))))

(assert (=> d!1360345 (= (forall!9947 (toList!4017 lm!1477) lambda!162008) e!2778570)))

(declare-fun b!4462264 () Bool)

(declare-fun e!2778571 () Bool)

(assert (=> b!4462264 (= e!2778570 e!2778571)))

(declare-fun res!1850777 () Bool)

(assert (=> b!4462264 (=> (not res!1850777) (not e!2778571))))

(declare-fun dynLambda!20987 (Int tuple2!50456) Bool)

(assert (=> b!4462264 (= res!1850777 (dynLambda!20987 lambda!162008 (h!55978 (toList!4017 lm!1477))))))

(declare-fun b!4462265 () Bool)

(assert (=> b!4462265 (= e!2778571 (forall!9947 (t!357305 (toList!4017 lm!1477)) lambda!162008))))

(assert (= (and d!1360345 (not res!1850776)) b!4462264))

(assert (= (and b!4462264 res!1850777) b!4462265))

(declare-fun b_lambda!147773 () Bool)

(assert (=> (not b_lambda!147773) (not b!4462264)))

(declare-fun m!5165251 () Bool)

(assert (=> b!4462264 m!5165251))

(declare-fun m!5165253 () Bool)

(assert (=> b!4462265 m!5165253))

(assert (=> start!437606 d!1360345))

(declare-fun d!1360347 () Bool)

(declare-fun isStrictlySorted!324 (List!50355) Bool)

(assert (=> d!1360347 (= (inv!65838 lm!1477) (isStrictlySorted!324 (toList!4017 lm!1477)))))

(declare-fun bs!791561 () Bool)

(assert (= bs!791561 d!1360347))

(declare-fun m!5165255 () Bool)

(assert (=> bs!791561 m!5165255))

(assert (=> start!437606 d!1360347))

(declare-fun d!1360349 () Bool)

(declare-fun res!1850782 () Bool)

(declare-fun e!2778576 () Bool)

(assert (=> d!1360349 (=> res!1850782 e!2778576)))

(assert (=> d!1360349 (= res!1850782 (and (is-Cons!50230 (_2!28522 (h!55978 (toList!4017 lm!1477)))) (= (_1!28521 (h!55977 (_2!28522 (h!55978 (toList!4017 lm!1477))))) key!3287)))))

(assert (=> d!1360349 (= (containsKey!1417 (_2!28522 (h!55978 (toList!4017 lm!1477))) key!3287) e!2778576)))

(declare-fun b!4462270 () Bool)

(declare-fun e!2778577 () Bool)

(assert (=> b!4462270 (= e!2778576 e!2778577)))

(declare-fun res!1850783 () Bool)

(assert (=> b!4462270 (=> (not res!1850783) (not e!2778577))))

(assert (=> b!4462270 (= res!1850783 (is-Cons!50230 (_2!28522 (h!55978 (toList!4017 lm!1477)))))))

(declare-fun b!4462271 () Bool)

(assert (=> b!4462271 (= e!2778577 (containsKey!1417 (t!357304 (_2!28522 (h!55978 (toList!4017 lm!1477)))) key!3287))))

(assert (= (and d!1360349 (not res!1850782)) b!4462270))

(assert (= (and b!4462270 res!1850783) b!4462271))

(declare-fun m!5165263 () Bool)

(assert (=> b!4462271 m!5165263))

(assert (=> b!4462205 d!1360349))

(declare-fun d!1360353 () Bool)

(declare-fun res!1850788 () Bool)

(declare-fun e!2778582 () Bool)

(assert (=> d!1360353 (=> res!1850788 e!2778582)))

(assert (=> d!1360353 (= res!1850788 (not (is-Cons!50230 newBucket!178)))))

(assert (=> d!1360353 (= (noDuplicateKeys!1005 newBucket!178) e!2778582)))

(declare-fun b!4462276 () Bool)

(declare-fun e!2778583 () Bool)

(assert (=> b!4462276 (= e!2778582 e!2778583)))

(declare-fun res!1850789 () Bool)

(assert (=> b!4462276 (=> (not res!1850789) (not e!2778583))))

(assert (=> b!4462276 (= res!1850789 (not (containsKey!1417 (t!357304 newBucket!178) (_1!28521 (h!55977 newBucket!178)))))))

(declare-fun b!4462277 () Bool)

(assert (=> b!4462277 (= e!2778583 (noDuplicateKeys!1005 (t!357304 newBucket!178)))))

(assert (= (and d!1360353 (not res!1850788)) b!4462276))

(assert (= (and b!4462276 res!1850789) b!4462277))

(declare-fun m!5165265 () Bool)

(assert (=> b!4462276 m!5165265))

(declare-fun m!5165267 () Bool)

(assert (=> b!4462277 m!5165267))

(assert (=> b!4462206 d!1360353))

(declare-fun d!1360355 () Bool)

(declare-fun hash!2390 (Hashable!5400 K!11653) (_ BitVec 64))

(assert (=> d!1360355 (= (hash!2388 hashF!1107 key!3287) (hash!2390 hashF!1107 key!3287))))

(declare-fun bs!791563 () Bool)

(assert (= bs!791563 d!1360355))

(declare-fun m!5165269 () Bool)

(assert (=> bs!791563 m!5165269))

(assert (=> b!4462211 d!1360355))

(declare-fun d!1360357 () Bool)

(declare-fun e!2778594 () Bool)

(assert (=> d!1360357 e!2778594))

(declare-fun res!1850798 () Bool)

(assert (=> d!1360357 (=> res!1850798 e!2778594)))

(declare-fun lt!1653054 () Bool)

(assert (=> d!1360357 (= res!1850798 (not lt!1653054))))

(declare-fun lt!1653056 () Bool)

(assert (=> d!1360357 (= lt!1653054 lt!1653056)))

(declare-fun lt!1653053 () Unit!86899)

(declare-fun e!2778595 () Unit!86899)

(assert (=> d!1360357 (= lt!1653053 e!2778595)))

(declare-fun c!759301 () Bool)

(assert (=> d!1360357 (= c!759301 lt!1653056)))

(declare-fun containsKey!1419 (List!50355 (_ BitVec 64)) Bool)

(assert (=> d!1360357 (= lt!1653056 (containsKey!1419 (toList!4017 lm!1477) lt!1652998))))

(assert (=> d!1360357 (= (contains!12753 lm!1477 lt!1652998) lt!1653054)))

(declare-fun b!4462290 () Bool)

(declare-fun lt!1653055 () Unit!86899)

(assert (=> b!4462290 (= e!2778595 lt!1653055)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!782 (List!50355 (_ BitVec 64)) Unit!86899)

(assert (=> b!4462290 (= lt!1653055 (lemmaContainsKeyImpliesGetValueByKeyDefined!782 (toList!4017 lm!1477) lt!1652998))))

(declare-datatypes ((Option!10892 0))(
  ( (None!10891) (Some!10891 (v!44157 List!50354)) )
))
(declare-fun isDefined!8179 (Option!10892) Bool)

(declare-fun getValueByKey!878 (List!50355 (_ BitVec 64)) Option!10892)

(assert (=> b!4462290 (isDefined!8179 (getValueByKey!878 (toList!4017 lm!1477) lt!1652998))))

(declare-fun b!4462291 () Bool)

(declare-fun Unit!86907 () Unit!86899)

(assert (=> b!4462291 (= e!2778595 Unit!86907)))

(declare-fun b!4462292 () Bool)

(assert (=> b!4462292 (= e!2778594 (isDefined!8179 (getValueByKey!878 (toList!4017 lm!1477) lt!1652998)))))

(assert (= (and d!1360357 c!759301) b!4462290))

(assert (= (and d!1360357 (not c!759301)) b!4462291))

(assert (= (and d!1360357 (not res!1850798)) b!4462292))

(declare-fun m!5165277 () Bool)

(assert (=> d!1360357 m!5165277))

(declare-fun m!5165279 () Bool)

(assert (=> b!4462290 m!5165279))

(declare-fun m!5165281 () Bool)

(assert (=> b!4462290 m!5165281))

(assert (=> b!4462290 m!5165281))

(declare-fun m!5165283 () Bool)

(assert (=> b!4462290 m!5165283))

(assert (=> b!4462292 m!5165281))

(assert (=> b!4462292 m!5165281))

(assert (=> b!4462292 m!5165283))

(assert (=> b!4462204 d!1360357))

(declare-fun d!1360361 () Bool)

(declare-fun get!16357 (Option!10892) List!50354)

(assert (=> d!1360361 (= (apply!11742 lm!1477 hash!344) (get!16357 (getValueByKey!878 (toList!4017 lm!1477) hash!344)))))

(declare-fun bs!791564 () Bool)

(assert (= bs!791564 d!1360361))

(declare-fun m!5165285 () Bool)

(assert (=> bs!791564 m!5165285))

(assert (=> bs!791564 m!5165285))

(declare-fun m!5165287 () Bool)

(assert (=> bs!791564 m!5165287))

(assert (=> b!4462204 d!1360361))

(declare-fun d!1360363 () Bool)

(declare-fun lt!1653059 () List!50354)

(assert (=> d!1360363 (not (containsKey!1417 lt!1653059 key!3287))))

(declare-fun e!2778601 () List!50354)

(assert (=> d!1360363 (= lt!1653059 e!2778601)))

(declare-fun c!759307 () Bool)

(assert (=> d!1360363 (= c!759307 (and (is-Cons!50230 lt!1652997) (= (_1!28521 (h!55977 lt!1652997)) key!3287)))))

(assert (=> d!1360363 (noDuplicateKeys!1005 lt!1652997)))

(assert (=> d!1360363 (= (removePairForKey!632 lt!1652997 key!3287) lt!1653059)))

(declare-fun b!4462303 () Bool)

(declare-fun e!2778600 () List!50354)

(assert (=> b!4462303 (= e!2778600 (Cons!50230 (h!55977 lt!1652997) (removePairForKey!632 (t!357304 lt!1652997) key!3287)))))

(declare-fun b!4462304 () Bool)

(assert (=> b!4462304 (= e!2778600 Nil!50230)))

(declare-fun b!4462301 () Bool)

(assert (=> b!4462301 (= e!2778601 (t!357304 lt!1652997))))

(declare-fun b!4462302 () Bool)

(assert (=> b!4462302 (= e!2778601 e!2778600)))

(declare-fun c!759306 () Bool)

(assert (=> b!4462302 (= c!759306 (is-Cons!50230 lt!1652997))))

(assert (= (and d!1360363 c!759307) b!4462301))

(assert (= (and d!1360363 (not c!759307)) b!4462302))

(assert (= (and b!4462302 c!759306) b!4462303))

(assert (= (and b!4462302 (not c!759306)) b!4462304))

(declare-fun m!5165293 () Bool)

(assert (=> d!1360363 m!5165293))

(declare-fun m!5165295 () Bool)

(assert (=> d!1360363 m!5165295))

(declare-fun m!5165297 () Bool)

(assert (=> b!4462303 m!5165297))

(assert (=> b!4462204 d!1360363))

(declare-fun d!1360367 () Bool)

(assert (=> d!1360367 (dynLambda!20987 lambda!162008 lt!1653005)))

(declare-fun lt!1653062 () Unit!86899)

(declare-fun choose!28417 (List!50355 Int tuple2!50456) Unit!86899)

(assert (=> d!1360367 (= lt!1653062 (choose!28417 (toList!4017 lm!1477) lambda!162008 lt!1653005))))

(declare-fun e!2778604 () Bool)

(assert (=> d!1360367 e!2778604))

(declare-fun res!1850801 () Bool)

(assert (=> d!1360367 (=> (not res!1850801) (not e!2778604))))

(assert (=> d!1360367 (= res!1850801 (forall!9947 (toList!4017 lm!1477) lambda!162008))))

(assert (=> d!1360367 (= (forallContained!2222 (toList!4017 lm!1477) lambda!162008 lt!1653005) lt!1653062)))

(declare-fun b!4462307 () Bool)

(assert (=> b!4462307 (= e!2778604 (contains!12752 (toList!4017 lm!1477) lt!1653005))))

(assert (= (and d!1360367 res!1850801) b!4462307))

(declare-fun b_lambda!147775 () Bool)

(assert (=> (not b_lambda!147775) (not d!1360367)))

(declare-fun m!5165299 () Bool)

(assert (=> d!1360367 m!5165299))

(declare-fun m!5165301 () Bool)

(assert (=> d!1360367 m!5165301))

(assert (=> d!1360367 m!5165179))

(assert (=> b!4462307 m!5165175))

(assert (=> b!4462204 d!1360367))

(declare-fun d!1360369 () Bool)

(assert (=> d!1360369 (contains!12752 (toList!4017 lm!1477) (tuple2!50457 hash!344 lt!1652997))))

(declare-fun lt!1653067 () Unit!86899)

(declare-fun choose!28418 (List!50355 (_ BitVec 64) List!50354) Unit!86899)

(assert (=> d!1360369 (= lt!1653067 (choose!28418 (toList!4017 lm!1477) hash!344 lt!1652997))))

(declare-fun e!2778611 () Bool)

(assert (=> d!1360369 e!2778611))

(declare-fun res!1850804 () Bool)

(assert (=> d!1360369 (=> (not res!1850804) (not e!2778611))))

(assert (=> d!1360369 (= res!1850804 (isStrictlySorted!324 (toList!4017 lm!1477)))))

(assert (=> d!1360369 (= (lemmaGetValueByKeyImpliesContainsTuple!517 (toList!4017 lm!1477) hash!344 lt!1652997) lt!1653067)))

(declare-fun b!4462318 () Bool)

(assert (=> b!4462318 (= e!2778611 (= (getValueByKey!878 (toList!4017 lm!1477) hash!344) (Some!10891 lt!1652997)))))

(assert (= (and d!1360369 res!1850804) b!4462318))

(declare-fun m!5165303 () Bool)

(assert (=> d!1360369 m!5165303))

(declare-fun m!5165305 () Bool)

(assert (=> d!1360369 m!5165305))

(assert (=> d!1360369 m!5165255))

(assert (=> b!4462318 m!5165285))

(assert (=> b!4462204 d!1360369))

(declare-fun bs!791566 () Bool)

(declare-fun d!1360371 () Bool)

(assert (= bs!791566 (and d!1360371 start!437606)))

(declare-fun lambda!162024 () Int)

(assert (=> bs!791566 (= lambda!162024 lambda!162008)))

(declare-fun bs!791567 () Bool)

(assert (= bs!791567 (and d!1360371 d!1360343)))

(assert (=> bs!791567 (not (= lambda!162024 lambda!162018))))

(assert (=> d!1360371 (contains!12753 lm!1477 (hash!2388 hashF!1107 key!3287))))

(declare-fun lt!1653071 () Unit!86899)

(declare-fun choose!28419 (ListLongMap!2649 K!11653 Hashable!5400) Unit!86899)

(assert (=> d!1360371 (= lt!1653071 (choose!28419 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1360371 (forall!9947 (toList!4017 lm!1477) lambda!162024)))

(assert (=> d!1360371 (= (lemmaInGenMapThenLongMapContainsHash!79 lm!1477 key!3287 hashF!1107) lt!1653071)))

(declare-fun bs!791568 () Bool)

(assert (= bs!791568 d!1360371))

(assert (=> bs!791568 m!5165197))

(assert (=> bs!791568 m!5165197))

(declare-fun m!5165313 () Bool)

(assert (=> bs!791568 m!5165313))

(declare-fun m!5165315 () Bool)

(assert (=> bs!791568 m!5165315))

(declare-fun m!5165317 () Bool)

(assert (=> bs!791568 m!5165317))

(assert (=> b!4462204 d!1360371))

(declare-fun d!1360375 () Bool)

(declare-fun lt!1653074 () Bool)

(declare-fun content!8055 (List!50355) (Set tuple2!50456))

(assert (=> d!1360375 (= lt!1653074 (set.member lt!1653005 (content!8055 (toList!4017 lm!1477))))))

(declare-fun e!2778618 () Bool)

(assert (=> d!1360375 (= lt!1653074 e!2778618)))

(declare-fun res!1850810 () Bool)

(assert (=> d!1360375 (=> (not res!1850810) (not e!2778618))))

(assert (=> d!1360375 (= res!1850810 (is-Cons!50231 (toList!4017 lm!1477)))))

(assert (=> d!1360375 (= (contains!12752 (toList!4017 lm!1477) lt!1653005) lt!1653074)))

(declare-fun b!4462327 () Bool)

(declare-fun e!2778619 () Bool)

(assert (=> b!4462327 (= e!2778618 e!2778619)))

(declare-fun res!1850809 () Bool)

(assert (=> b!4462327 (=> res!1850809 e!2778619)))

(assert (=> b!4462327 (= res!1850809 (= (h!55978 (toList!4017 lm!1477)) lt!1653005))))

(declare-fun b!4462328 () Bool)

(assert (=> b!4462328 (= e!2778619 (contains!12752 (t!357305 (toList!4017 lm!1477)) lt!1653005))))

(assert (= (and d!1360375 res!1850810) b!4462327))

(assert (= (and b!4462327 (not res!1850809)) b!4462328))

(declare-fun m!5165319 () Bool)

(assert (=> d!1360375 m!5165319))

(declare-fun m!5165321 () Bool)

(assert (=> d!1360375 m!5165321))

(declare-fun m!5165323 () Bool)

(assert (=> b!4462328 m!5165323))

(assert (=> b!4462204 d!1360375))

(declare-fun b!4462356 () Bool)

(declare-datatypes ((List!50358 0))(
  ( (Nil!50234) (Cons!50234 (h!55982 K!11653) (t!357308 List!50358)) )
))
(declare-fun e!2778641 () List!50358)

(declare-fun keys!17327 (ListMap!3279) List!50358)

(assert (=> b!4462356 (= e!2778641 (keys!17327 (extractMap!1061 (toList!4017 lm!1477))))))

(declare-fun b!4462357 () Bool)

(declare-fun e!2778644 () Unit!86899)

(declare-fun e!2778642 () Unit!86899)

(assert (=> b!4462357 (= e!2778644 e!2778642)))

(declare-fun c!759323 () Bool)

(declare-fun call!310637 () Bool)

(assert (=> b!4462357 (= c!759323 call!310637)))

(declare-fun b!4462358 () Bool)

(declare-fun Unit!86908 () Unit!86899)

(assert (=> b!4462358 (= e!2778642 Unit!86908)))

(declare-fun b!4462359 () Bool)

(declare-fun getKeysList!358 (List!50354) List!50358)

(assert (=> b!4462359 (= e!2778641 (getKeysList!358 (toList!4018 (extractMap!1061 (toList!4017 lm!1477)))))))

(declare-fun b!4462360 () Bool)

(declare-fun e!2778639 () Bool)

(declare-fun contains!12758 (List!50358 K!11653) Bool)

(assert (=> b!4462360 (= e!2778639 (not (contains!12758 (keys!17327 (extractMap!1061 (toList!4017 lm!1477))) key!3287)))))

(declare-fun d!1360377 () Bool)

(declare-fun e!2778640 () Bool)

(assert (=> d!1360377 e!2778640))

(declare-fun res!1850823 () Bool)

(assert (=> d!1360377 (=> res!1850823 e!2778640)))

(assert (=> d!1360377 (= res!1850823 e!2778639)))

(declare-fun res!1850822 () Bool)

(assert (=> d!1360377 (=> (not res!1850822) (not e!2778639))))

(declare-fun lt!1653108 () Bool)

(assert (=> d!1360377 (= res!1850822 (not lt!1653108))))

(declare-fun lt!1653107 () Bool)

(assert (=> d!1360377 (= lt!1653108 lt!1653107)))

(declare-fun lt!1653109 () Unit!86899)

(assert (=> d!1360377 (= lt!1653109 e!2778644)))

(declare-fun c!759322 () Bool)

(assert (=> d!1360377 (= c!759322 lt!1653107)))

(declare-fun containsKey!1420 (List!50354 K!11653) Bool)

(assert (=> d!1360377 (= lt!1653107 (containsKey!1420 (toList!4018 (extractMap!1061 (toList!4017 lm!1477))) key!3287))))

(assert (=> d!1360377 (= (contains!12754 (extractMap!1061 (toList!4017 lm!1477)) key!3287) lt!1653108)))

(declare-fun b!4462361 () Bool)

(declare-fun lt!1653106 () Unit!86899)

(assert (=> b!4462361 (= e!2778644 lt!1653106)))

(declare-fun lt!1653103 () Unit!86899)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!783 (List!50354 K!11653) Unit!86899)

(assert (=> b!4462361 (= lt!1653103 (lemmaContainsKeyImpliesGetValueByKeyDefined!783 (toList!4018 (extractMap!1061 (toList!4017 lm!1477))) key!3287))))

(declare-datatypes ((Option!10893 0))(
  ( (None!10892) (Some!10892 (v!44158 V!11899)) )
))
(declare-fun isDefined!8180 (Option!10893) Bool)

(declare-fun getValueByKey!879 (List!50354 K!11653) Option!10893)

(assert (=> b!4462361 (isDefined!8180 (getValueByKey!879 (toList!4018 (extractMap!1061 (toList!4017 lm!1477))) key!3287))))

(declare-fun lt!1653104 () Unit!86899)

(assert (=> b!4462361 (= lt!1653104 lt!1653103)))

(declare-fun lemmaInListThenGetKeysListContains!354 (List!50354 K!11653) Unit!86899)

(assert (=> b!4462361 (= lt!1653106 (lemmaInListThenGetKeysListContains!354 (toList!4018 (extractMap!1061 (toList!4017 lm!1477))) key!3287))))

(assert (=> b!4462361 call!310637))

(declare-fun bm!310632 () Bool)

(assert (=> bm!310632 (= call!310637 (contains!12758 e!2778641 key!3287))))

(declare-fun c!759324 () Bool)

(assert (=> bm!310632 (= c!759324 c!759322)))

(declare-fun b!4462362 () Bool)

(declare-fun e!2778643 () Bool)

(assert (=> b!4462362 (= e!2778640 e!2778643)))

(declare-fun res!1850824 () Bool)

(assert (=> b!4462362 (=> (not res!1850824) (not e!2778643))))

(assert (=> b!4462362 (= res!1850824 (isDefined!8180 (getValueByKey!879 (toList!4018 (extractMap!1061 (toList!4017 lm!1477))) key!3287)))))

(declare-fun b!4462363 () Bool)

(assert (=> b!4462363 false))

(declare-fun lt!1653102 () Unit!86899)

(declare-fun lt!1653105 () Unit!86899)

(assert (=> b!4462363 (= lt!1653102 lt!1653105)))

(assert (=> b!4462363 (containsKey!1420 (toList!4018 (extractMap!1061 (toList!4017 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!357 (List!50354 K!11653) Unit!86899)

(assert (=> b!4462363 (= lt!1653105 (lemmaInGetKeysListThenContainsKey!357 (toList!4018 (extractMap!1061 (toList!4017 lm!1477))) key!3287))))

(declare-fun Unit!86909 () Unit!86899)

(assert (=> b!4462363 (= e!2778642 Unit!86909)))

(declare-fun b!4462364 () Bool)

(assert (=> b!4462364 (= e!2778643 (contains!12758 (keys!17327 (extractMap!1061 (toList!4017 lm!1477))) key!3287))))

(assert (= (and d!1360377 c!759322) b!4462361))

(assert (= (and d!1360377 (not c!759322)) b!4462357))

(assert (= (and b!4462357 c!759323) b!4462363))

(assert (= (and b!4462357 (not c!759323)) b!4462358))

(assert (= (or b!4462361 b!4462357) bm!310632))

(assert (= (and bm!310632 c!759324) b!4462359))

(assert (= (and bm!310632 (not c!759324)) b!4462356))

(assert (= (and d!1360377 res!1850822) b!4462360))

(assert (= (and d!1360377 (not res!1850823)) b!4462362))

(assert (= (and b!4462362 res!1850824) b!4462364))

(declare-fun m!5165331 () Bool)

(assert (=> d!1360377 m!5165331))

(declare-fun m!5165333 () Bool)

(assert (=> b!4462362 m!5165333))

(assert (=> b!4462362 m!5165333))

(declare-fun m!5165335 () Bool)

(assert (=> b!4462362 m!5165335))

(declare-fun m!5165337 () Bool)

(assert (=> b!4462361 m!5165337))

(assert (=> b!4462361 m!5165333))

(assert (=> b!4462361 m!5165333))

(assert (=> b!4462361 m!5165335))

(declare-fun m!5165339 () Bool)

(assert (=> b!4462361 m!5165339))

(assert (=> b!4462364 m!5165201))

(declare-fun m!5165341 () Bool)

(assert (=> b!4462364 m!5165341))

(assert (=> b!4462364 m!5165341))

(declare-fun m!5165343 () Bool)

(assert (=> b!4462364 m!5165343))

(declare-fun m!5165345 () Bool)

(assert (=> b!4462359 m!5165345))

(assert (=> b!4462360 m!5165201))

(assert (=> b!4462360 m!5165341))

(assert (=> b!4462360 m!5165341))

(assert (=> b!4462360 m!5165343))

(assert (=> b!4462363 m!5165331))

(declare-fun m!5165347 () Bool)

(assert (=> b!4462363 m!5165347))

(assert (=> b!4462356 m!5165201))

(assert (=> b!4462356 m!5165341))

(declare-fun m!5165349 () Bool)

(assert (=> bm!310632 m!5165349))

(assert (=> b!4462209 d!1360377))

(declare-fun bs!791570 () Bool)

(declare-fun d!1360381 () Bool)

(assert (= bs!791570 (and d!1360381 start!437606)))

(declare-fun lambda!162027 () Int)

(assert (=> bs!791570 (= lambda!162027 lambda!162008)))

(declare-fun bs!791571 () Bool)

(assert (= bs!791571 (and d!1360381 d!1360343)))

(assert (=> bs!791571 (not (= lambda!162027 lambda!162018))))

(declare-fun bs!791572 () Bool)

(assert (= bs!791572 (and d!1360381 d!1360371)))

(assert (=> bs!791572 (= lambda!162027 lambda!162024)))

(declare-fun lt!1653119 () ListMap!3279)

(declare-fun invariantList!911 (List!50354) Bool)

(assert (=> d!1360381 (invariantList!911 (toList!4018 lt!1653119))))

(declare-fun e!2778652 () ListMap!3279)

(assert (=> d!1360381 (= lt!1653119 e!2778652)))

(declare-fun c!759328 () Bool)

(assert (=> d!1360381 (= c!759328 (is-Cons!50231 (toList!4017 lm!1477)))))

(assert (=> d!1360381 (forall!9947 (toList!4017 lm!1477) lambda!162027)))

(assert (=> d!1360381 (= (extractMap!1061 (toList!4017 lm!1477)) lt!1653119)))

(declare-fun b!4462375 () Bool)

(declare-fun addToMapMapFromBucket!573 (List!50354 ListMap!3279) ListMap!3279)

(assert (=> b!4462375 (= e!2778652 (addToMapMapFromBucket!573 (_2!28522 (h!55978 (toList!4017 lm!1477))) (extractMap!1061 (t!357305 (toList!4017 lm!1477)))))))

(declare-fun b!4462376 () Bool)

(assert (=> b!4462376 (= e!2778652 (ListMap!3280 Nil!50230))))

(assert (= (and d!1360381 c!759328) b!4462375))

(assert (= (and d!1360381 (not c!759328)) b!4462376))

(declare-fun m!5165365 () Bool)

(assert (=> d!1360381 m!5165365))

(declare-fun m!5165367 () Bool)

(assert (=> d!1360381 m!5165367))

(declare-fun m!5165369 () Bool)

(assert (=> b!4462375 m!5165369))

(assert (=> b!4462375 m!5165369))

(declare-fun m!5165371 () Bool)

(assert (=> b!4462375 m!5165371))

(assert (=> b!4462209 d!1360381))

(declare-fun bs!791573 () Bool)

(declare-fun d!1360389 () Bool)

(assert (= bs!791573 (and d!1360389 start!437606)))

(declare-fun lambda!162030 () Int)

(assert (=> bs!791573 (= lambda!162030 lambda!162008)))

(declare-fun bs!791574 () Bool)

(assert (= bs!791574 (and d!1360389 d!1360343)))

(assert (=> bs!791574 (not (= lambda!162030 lambda!162018))))

(declare-fun bs!791575 () Bool)

(assert (= bs!791575 (and d!1360389 d!1360371)))

(assert (=> bs!791575 (= lambda!162030 lambda!162024)))

(declare-fun bs!791576 () Bool)

(assert (= bs!791576 (and d!1360389 d!1360381)))

(assert (=> bs!791576 (= lambda!162030 lambda!162027)))

(assert (=> d!1360389 (not (contains!12754 (extractMap!1061 (toList!4017 lm!1477)) key!3287))))

(declare-fun lt!1653122 () Unit!86899)

(declare-fun choose!28420 (ListLongMap!2649 K!11653 Hashable!5400) Unit!86899)

(assert (=> d!1360389 (= lt!1653122 (choose!28420 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1360389 (forall!9947 (toList!4017 lm!1477) lambda!162030)))

(assert (=> d!1360389 (= (lemmaNotInItsHashBucketThenNotInMap!5 lm!1477 key!3287 hashF!1107) lt!1653122)))

(declare-fun bs!791577 () Bool)

(assert (= bs!791577 d!1360389))

(assert (=> bs!791577 m!5165201))

(assert (=> bs!791577 m!5165201))

(assert (=> bs!791577 m!5165203))

(declare-fun m!5165375 () Bool)

(assert (=> bs!791577 m!5165375))

(declare-fun m!5165377 () Bool)

(assert (=> bs!791577 m!5165377))

(assert (=> b!4462210 d!1360389))

(declare-fun d!1360393 () Bool)

(declare-fun res!1850841 () Bool)

(declare-fun e!2778666 () Bool)

(assert (=> d!1360393 (=> res!1850841 e!2778666)))

(declare-fun e!2778665 () Bool)

(assert (=> d!1360393 (= res!1850841 e!2778665)))

(declare-fun res!1850843 () Bool)

(assert (=> d!1360393 (=> (not res!1850843) (not e!2778665))))

(assert (=> d!1360393 (= res!1850843 (is-Cons!50231 lt!1653001))))

(assert (=> d!1360393 (= (containsKeyBiggerList!5 lt!1653001 key!3287) e!2778666)))

(declare-fun b!4462389 () Bool)

(assert (=> b!4462389 (= e!2778665 (containsKey!1417 (_2!28522 (h!55978 lt!1653001)) key!3287))))

(declare-fun b!4462390 () Bool)

(declare-fun e!2778667 () Bool)

(assert (=> b!4462390 (= e!2778666 e!2778667)))

(declare-fun res!1850842 () Bool)

(assert (=> b!4462390 (=> (not res!1850842) (not e!2778667))))

(assert (=> b!4462390 (= res!1850842 (is-Cons!50231 lt!1653001))))

(declare-fun b!4462391 () Bool)

(assert (=> b!4462391 (= e!2778667 (containsKeyBiggerList!5 (t!357305 lt!1653001) key!3287))))

(assert (= (and d!1360393 res!1850843) b!4462389))

(assert (= (and d!1360393 (not res!1850841)) b!4462390))

(assert (= (and b!4462390 res!1850842) b!4462391))

(declare-fun m!5165379 () Bool)

(assert (=> b!4462389 m!5165379))

(declare-fun m!5165381 () Bool)

(assert (=> b!4462391 m!5165381))

(assert (=> b!4462213 d!1360393))

(declare-fun d!1360395 () Bool)

(declare-fun res!1850844 () Bool)

(declare-fun e!2778668 () Bool)

(assert (=> d!1360395 (=> res!1850844 e!2778668)))

(assert (=> d!1360395 (= res!1850844 (is-Nil!50231 lt!1653001))))

(assert (=> d!1360395 (= (forall!9947 lt!1653001 lambda!162008) e!2778668)))

(declare-fun b!4462392 () Bool)

(declare-fun e!2778669 () Bool)

(assert (=> b!4462392 (= e!2778668 e!2778669)))

(declare-fun res!1850845 () Bool)

(assert (=> b!4462392 (=> (not res!1850845) (not e!2778669))))

(assert (=> b!4462392 (= res!1850845 (dynLambda!20987 lambda!162008 (h!55978 lt!1653001)))))

(declare-fun b!4462393 () Bool)

(assert (=> b!4462393 (= e!2778669 (forall!9947 (t!357305 lt!1653001) lambda!162008))))

(assert (= (and d!1360395 (not res!1850844)) b!4462392))

(assert (= (and b!4462392 res!1850845) b!4462393))

(declare-fun b_lambda!147779 () Bool)

(assert (=> (not b_lambda!147779) (not b!4462392)))

(declare-fun m!5165383 () Bool)

(assert (=> b!4462392 m!5165383))

(declare-fun m!5165385 () Bool)

(assert (=> b!4462393 m!5165385))

(assert (=> b!4462214 d!1360395))

(declare-fun b!4462394 () Bool)

(declare-fun e!2778672 () List!50358)

(assert (=> b!4462394 (= e!2778672 (keys!17327 (extractMap!1061 lt!1653001)))))

(declare-fun b!4462395 () Bool)

(declare-fun e!2778675 () Unit!86899)

(declare-fun e!2778673 () Unit!86899)

(assert (=> b!4462395 (= e!2778675 e!2778673)))

(declare-fun c!759330 () Bool)

(declare-fun call!310638 () Bool)

(assert (=> b!4462395 (= c!759330 call!310638)))

(declare-fun b!4462396 () Bool)

(declare-fun Unit!86910 () Unit!86899)

(assert (=> b!4462396 (= e!2778673 Unit!86910)))

(declare-fun b!4462397 () Bool)

(assert (=> b!4462397 (= e!2778672 (getKeysList!358 (toList!4018 (extractMap!1061 lt!1653001))))))

(declare-fun b!4462398 () Bool)

(declare-fun e!2778670 () Bool)

(assert (=> b!4462398 (= e!2778670 (not (contains!12758 (keys!17327 (extractMap!1061 lt!1653001)) key!3287)))))

(declare-fun d!1360397 () Bool)

(declare-fun e!2778671 () Bool)

(assert (=> d!1360397 e!2778671))

(declare-fun res!1850847 () Bool)

(assert (=> d!1360397 (=> res!1850847 e!2778671)))

(assert (=> d!1360397 (= res!1850847 e!2778670)))

(declare-fun res!1850846 () Bool)

(assert (=> d!1360397 (=> (not res!1850846) (not e!2778670))))

(declare-fun lt!1653129 () Bool)

(assert (=> d!1360397 (= res!1850846 (not lt!1653129))))

(declare-fun lt!1653128 () Bool)

(assert (=> d!1360397 (= lt!1653129 lt!1653128)))

(declare-fun lt!1653130 () Unit!86899)

(assert (=> d!1360397 (= lt!1653130 e!2778675)))

(declare-fun c!759329 () Bool)

(assert (=> d!1360397 (= c!759329 lt!1653128)))

(assert (=> d!1360397 (= lt!1653128 (containsKey!1420 (toList!4018 (extractMap!1061 lt!1653001)) key!3287))))

(assert (=> d!1360397 (= (contains!12754 (extractMap!1061 lt!1653001) key!3287) lt!1653129)))

(declare-fun b!4462399 () Bool)

(declare-fun lt!1653127 () Unit!86899)

(assert (=> b!4462399 (= e!2778675 lt!1653127)))

(declare-fun lt!1653124 () Unit!86899)

(assert (=> b!4462399 (= lt!1653124 (lemmaContainsKeyImpliesGetValueByKeyDefined!783 (toList!4018 (extractMap!1061 lt!1653001)) key!3287))))

(assert (=> b!4462399 (isDefined!8180 (getValueByKey!879 (toList!4018 (extractMap!1061 lt!1653001)) key!3287))))

(declare-fun lt!1653125 () Unit!86899)

(assert (=> b!4462399 (= lt!1653125 lt!1653124)))

(assert (=> b!4462399 (= lt!1653127 (lemmaInListThenGetKeysListContains!354 (toList!4018 (extractMap!1061 lt!1653001)) key!3287))))

(assert (=> b!4462399 call!310638))

(declare-fun bm!310633 () Bool)

(assert (=> bm!310633 (= call!310638 (contains!12758 e!2778672 key!3287))))

(declare-fun c!759331 () Bool)

(assert (=> bm!310633 (= c!759331 c!759329)))

(declare-fun b!4462400 () Bool)

(declare-fun e!2778674 () Bool)

(assert (=> b!4462400 (= e!2778671 e!2778674)))

(declare-fun res!1850848 () Bool)

(assert (=> b!4462400 (=> (not res!1850848) (not e!2778674))))

(assert (=> b!4462400 (= res!1850848 (isDefined!8180 (getValueByKey!879 (toList!4018 (extractMap!1061 lt!1653001)) key!3287)))))

(declare-fun b!4462401 () Bool)

(assert (=> b!4462401 false))

(declare-fun lt!1653123 () Unit!86899)

(declare-fun lt!1653126 () Unit!86899)

(assert (=> b!4462401 (= lt!1653123 lt!1653126)))

(assert (=> b!4462401 (containsKey!1420 (toList!4018 (extractMap!1061 lt!1653001)) key!3287)))

(assert (=> b!4462401 (= lt!1653126 (lemmaInGetKeysListThenContainsKey!357 (toList!4018 (extractMap!1061 lt!1653001)) key!3287))))

(declare-fun Unit!86911 () Unit!86899)

(assert (=> b!4462401 (= e!2778673 Unit!86911)))

(declare-fun b!4462402 () Bool)

(assert (=> b!4462402 (= e!2778674 (contains!12758 (keys!17327 (extractMap!1061 lt!1653001)) key!3287))))

(assert (= (and d!1360397 c!759329) b!4462399))

(assert (= (and d!1360397 (not c!759329)) b!4462395))

(assert (= (and b!4462395 c!759330) b!4462401))

(assert (= (and b!4462395 (not c!759330)) b!4462396))

(assert (= (or b!4462399 b!4462395) bm!310633))

(assert (= (and bm!310633 c!759331) b!4462397))

(assert (= (and bm!310633 (not c!759331)) b!4462394))

(assert (= (and d!1360397 res!1850846) b!4462398))

(assert (= (and d!1360397 (not res!1850847)) b!4462400))

(assert (= (and b!4462400 res!1850848) b!4462402))

(declare-fun m!5165387 () Bool)

(assert (=> d!1360397 m!5165387))

(declare-fun m!5165389 () Bool)

(assert (=> b!4462400 m!5165389))

(assert (=> b!4462400 m!5165389))

(declare-fun m!5165391 () Bool)

(assert (=> b!4462400 m!5165391))

(declare-fun m!5165393 () Bool)

(assert (=> b!4462399 m!5165393))

(assert (=> b!4462399 m!5165389))

(assert (=> b!4462399 m!5165389))

(assert (=> b!4462399 m!5165391))

(declare-fun m!5165395 () Bool)

(assert (=> b!4462399 m!5165395))

(assert (=> b!4462402 m!5165191))

(declare-fun m!5165397 () Bool)

(assert (=> b!4462402 m!5165397))

(assert (=> b!4462402 m!5165397))

(declare-fun m!5165399 () Bool)

(assert (=> b!4462402 m!5165399))

(declare-fun m!5165401 () Bool)

(assert (=> b!4462397 m!5165401))

(assert (=> b!4462398 m!5165191))

(assert (=> b!4462398 m!5165397))

(assert (=> b!4462398 m!5165397))

(assert (=> b!4462398 m!5165399))

(assert (=> b!4462401 m!5165387))

(declare-fun m!5165403 () Bool)

(assert (=> b!4462401 m!5165403))

(assert (=> b!4462394 m!5165191))

(assert (=> b!4462394 m!5165397))

(declare-fun m!5165405 () Bool)

(assert (=> bm!310633 m!5165405))

(assert (=> b!4462214 d!1360397))

(declare-fun bs!791578 () Bool)

(declare-fun d!1360399 () Bool)

(assert (= bs!791578 (and d!1360399 start!437606)))

(declare-fun lambda!162031 () Int)

(assert (=> bs!791578 (= lambda!162031 lambda!162008)))

(declare-fun bs!791579 () Bool)

(assert (= bs!791579 (and d!1360399 d!1360389)))

(assert (=> bs!791579 (= lambda!162031 lambda!162030)))

(declare-fun bs!791580 () Bool)

(assert (= bs!791580 (and d!1360399 d!1360381)))

(assert (=> bs!791580 (= lambda!162031 lambda!162027)))

(declare-fun bs!791581 () Bool)

(assert (= bs!791581 (and d!1360399 d!1360371)))

(assert (=> bs!791581 (= lambda!162031 lambda!162024)))

(declare-fun bs!791582 () Bool)

(assert (= bs!791582 (and d!1360399 d!1360343)))

(assert (=> bs!791582 (not (= lambda!162031 lambda!162018))))

(declare-fun lt!1653131 () ListMap!3279)

(assert (=> d!1360399 (invariantList!911 (toList!4018 lt!1653131))))

(declare-fun e!2778676 () ListMap!3279)

(assert (=> d!1360399 (= lt!1653131 e!2778676)))

(declare-fun c!759332 () Bool)

(assert (=> d!1360399 (= c!759332 (is-Cons!50231 lt!1653001))))

(assert (=> d!1360399 (forall!9947 lt!1653001 lambda!162031)))

(assert (=> d!1360399 (= (extractMap!1061 lt!1653001) lt!1653131)))

(declare-fun b!4462403 () Bool)

(assert (=> b!4462403 (= e!2778676 (addToMapMapFromBucket!573 (_2!28522 (h!55978 lt!1653001)) (extractMap!1061 (t!357305 lt!1653001))))))

(declare-fun b!4462404 () Bool)

(assert (=> b!4462404 (= e!2778676 (ListMap!3280 Nil!50230))))

(assert (= (and d!1360399 c!759332) b!4462403))

(assert (= (and d!1360399 (not c!759332)) b!4462404))

(declare-fun m!5165407 () Bool)

(assert (=> d!1360399 m!5165407))

(declare-fun m!5165409 () Bool)

(assert (=> d!1360399 m!5165409))

(declare-fun m!5165411 () Bool)

(assert (=> b!4462403 m!5165411))

(assert (=> b!4462403 m!5165411))

(declare-fun m!5165413 () Bool)

(assert (=> b!4462403 m!5165413))

(assert (=> b!4462214 d!1360399))

(declare-fun bs!791583 () Bool)

(declare-fun d!1360401 () Bool)

(assert (= bs!791583 (and d!1360401 start!437606)))

(declare-fun lambda!162034 () Int)

(assert (=> bs!791583 (= lambda!162034 lambda!162008)))

(declare-fun bs!791584 () Bool)

(assert (= bs!791584 (and d!1360401 d!1360389)))

(assert (=> bs!791584 (= lambda!162034 lambda!162030)))

(declare-fun bs!791585 () Bool)

(assert (= bs!791585 (and d!1360401 d!1360381)))

(assert (=> bs!791585 (= lambda!162034 lambda!162027)))

(declare-fun bs!791586 () Bool)

(assert (= bs!791586 (and d!1360401 d!1360371)))

(assert (=> bs!791586 (= lambda!162034 lambda!162024)))

(declare-fun bs!791587 () Bool)

(assert (= bs!791587 (and d!1360401 d!1360399)))

(assert (=> bs!791587 (= lambda!162034 lambda!162031)))

(declare-fun bs!791588 () Bool)

(assert (= bs!791588 (and d!1360401 d!1360343)))

(assert (=> bs!791588 (not (= lambda!162034 lambda!162018))))

(assert (=> d!1360401 (contains!12754 (extractMap!1061 (toList!4017 (ListLongMap!2650 lt!1653001))) key!3287)))

(declare-fun lt!1653134 () Unit!86899)

(declare-fun choose!28421 (ListLongMap!2649 K!11653 Hashable!5400) Unit!86899)

(assert (=> d!1360401 (= lt!1653134 (choose!28421 (ListLongMap!2650 lt!1653001) key!3287 hashF!1107))))

(assert (=> d!1360401 (forall!9947 (toList!4017 (ListLongMap!2650 lt!1653001)) lambda!162034)))

(assert (=> d!1360401 (= (lemmaListContainsThenExtractedMapContains!1 (ListLongMap!2650 lt!1653001) key!3287 hashF!1107) lt!1653134)))

(declare-fun bs!791589 () Bool)

(assert (= bs!791589 d!1360401))

(declare-fun m!5165415 () Bool)

(assert (=> bs!791589 m!5165415))

(assert (=> bs!791589 m!5165415))

(declare-fun m!5165417 () Bool)

(assert (=> bs!791589 m!5165417))

(declare-fun m!5165419 () Bool)

(assert (=> bs!791589 m!5165419))

(declare-fun m!5165421 () Bool)

(assert (=> bs!791589 m!5165421))

(assert (=> b!4462214 d!1360401))

(declare-fun d!1360403 () Bool)

(assert (=> d!1360403 true))

(assert (=> d!1360403 true))

(declare-fun lambda!162039 () Int)

(declare-fun forall!9949 (List!50354 Int) Bool)

(assert (=> d!1360403 (= (allKeysSameHash!859 newBucket!178 hash!344 hashF!1107) (forall!9949 newBucket!178 lambda!162039))))

(declare-fun bs!791590 () Bool)

(assert (= bs!791590 d!1360403))

(declare-fun m!5165423 () Bool)

(assert (=> bs!791590 m!5165423))

(assert (=> b!4462203 d!1360403))

(declare-fun tp!1335944 () Bool)

(declare-fun b!4462413 () Bool)

(declare-fun e!2778679 () Bool)

(assert (=> b!4462413 (= e!2778679 (and tp_is_empty!27297 tp_is_empty!27299 tp!1335944))))

(assert (=> b!4462202 (= tp!1335934 e!2778679)))

(assert (= (and b!4462202 (is-Cons!50230 (t!357304 newBucket!178))) b!4462413))

(declare-fun b!4462418 () Bool)

(declare-fun e!2778682 () Bool)

(declare-fun tp!1335949 () Bool)

(declare-fun tp!1335950 () Bool)

(assert (=> b!4462418 (= e!2778682 (and tp!1335949 tp!1335950))))

(assert (=> b!4462208 (= tp!1335935 e!2778682)))

(assert (= (and b!4462208 (is-Cons!50231 (toList!4017 lm!1477))) b!4462418))

(declare-fun b_lambda!147781 () Bool)

(assert (= b_lambda!147779 (or start!437606 b_lambda!147781)))

(declare-fun bs!791591 () Bool)

(declare-fun d!1360405 () Bool)

(assert (= bs!791591 (and d!1360405 start!437606)))

(assert (=> bs!791591 (= (dynLambda!20987 lambda!162008 (h!55978 lt!1653001)) (noDuplicateKeys!1005 (_2!28522 (h!55978 lt!1653001))))))

(declare-fun m!5165425 () Bool)

(assert (=> bs!791591 m!5165425))

(assert (=> b!4462392 d!1360405))

(declare-fun b_lambda!147783 () Bool)

(assert (= b_lambda!147773 (or start!437606 b_lambda!147783)))

(declare-fun bs!791593 () Bool)

(declare-fun d!1360407 () Bool)

(assert (= bs!791593 (and d!1360407 start!437606)))

(assert (=> bs!791593 (= (dynLambda!20987 lambda!162008 (h!55978 (toList!4017 lm!1477))) (noDuplicateKeys!1005 (_2!28522 (h!55978 (toList!4017 lm!1477)))))))

(declare-fun m!5165427 () Bool)

(assert (=> bs!791593 m!5165427))

(assert (=> b!4462264 d!1360407))

(declare-fun b_lambda!147785 () Bool)

(assert (= b_lambda!147775 (or start!437606 b_lambda!147785)))

(declare-fun bs!791594 () Bool)

(declare-fun d!1360409 () Bool)

(assert (= bs!791594 (and d!1360409 start!437606)))

(assert (=> bs!791594 (= (dynLambda!20987 lambda!162008 lt!1653005) (noDuplicateKeys!1005 (_2!28522 lt!1653005)))))

(declare-fun m!5165429 () Bool)

(assert (=> bs!791594 m!5165429))

(assert (=> d!1360367 d!1360409))

(push 1)

(assert (not b!4462362))

(assert (not b!4462364))

(assert tp_is_empty!27297)

(assert (not bs!791591))

(assert (not b!4462375))

(assert (not d!1360369))

(assert (not d!1360361))

(assert (not b!4462389))

(assert (not b_lambda!147785))

(assert (not d!1360389))

(assert (not b!4462400))

(assert (not b!4462292))

(assert (not d!1360401))

(assert (not d!1360357))

(assert (not b!4462307))

(assert (not b!4462363))

(assert (not b!4462277))

(assert (not b!4462356))

(assert (not b_lambda!147783))

(assert (not d!1360347))

(assert (not b!4462361))

(assert (not d!1360343))

(assert (not d!1360399))

(assert (not d!1360367))

(assert (not d!1360355))

(assert (not b!4462402))

(assert (not b!4462399))

(assert (not b!4462265))

(assert (not b!4462398))

(assert (not bs!791594))

(assert (not b!4462276))

(assert (not b!4462403))

(assert (not d!1360375))

(assert (not b!4462303))

(assert tp_is_empty!27299)

(assert (not b!4462397))

(assert (not b!4462418))

(assert (not d!1360363))

(assert (not d!1360397))

(assert (not b_lambda!147781))

(assert (not b!4462328))

(assert (not d!1360371))

(assert (not b!4462360))

(assert (not b!4462271))

(assert (not bm!310632))

(assert (not b!4462359))

(assert (not bm!310633))

(assert (not d!1360381))

(assert (not b!4462413))

(assert (not b!4462391))

(assert (not d!1360403))

(assert (not bs!791593))

(assert (not b!4462393))

(assert (not b!4462401))

(assert (not b!4462318))

(assert (not b!4462290))

(assert (not b!4462394))

(assert (not d!1360377))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

