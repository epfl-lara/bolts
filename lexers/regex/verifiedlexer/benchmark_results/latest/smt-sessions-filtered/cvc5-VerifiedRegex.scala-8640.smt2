; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!461182 () Bool)

(assert start!461182)

(declare-fun b!4610865 () Bool)

(declare-fun e!2876233 () Bool)

(declare-datatypes ((K!12603 0))(
  ( (K!12604 (val!18353 Int)) )
))
(declare-datatypes ((V!12849 0))(
  ( (V!12850 (val!18354 Int)) )
))
(declare-datatypes ((tuple2!51970 0))(
  ( (tuple2!51971 (_1!29279 K!12603) (_2!29279 V!12849)) )
))
(declare-datatypes ((List!51355 0))(
  ( (Nil!51231) (Cons!51231 (h!57227 tuple2!51970) (t!358349 List!51355)) )
))
(declare-datatypes ((tuple2!51972 0))(
  ( (tuple2!51973 (_1!29280 (_ BitVec 64)) (_2!29280 List!51355)) )
))
(declare-datatypes ((List!51356 0))(
  ( (Nil!51232) (Cons!51232 (h!57228 tuple2!51972) (t!358350 List!51356)) )
))
(declare-fun lt!1767118 () List!51356)

(declare-fun lambda!188487 () Int)

(declare-fun forall!10705 (List!51356 Int) Bool)

(assert (=> b!4610865 (= e!2876233 (not (forall!10705 lt!1767118 lambda!188487)))))

(assert (=> b!4610865 true))

(declare-fun b!4610866 () Bool)

(declare-fun e!2876234 () Bool)

(assert (=> b!4610866 (= e!2876234 e!2876233)))

(declare-fun res!1930508 () Bool)

(assert (=> b!4610866 (=> (not res!1930508) (not e!2876233))))

(declare-fun key!4968 () K!12603)

(declare-datatypes ((ListMap!4031 0))(
  ( (ListMap!4032 (toList!4769 List!51355)) )
))
(declare-fun contains!14241 (ListMap!4031 K!12603) Bool)

(declare-fun extractMap!1437 (List!51356) ListMap!4031)

(assert (=> b!4610866 (= res!1930508 (contains!14241 (extractMap!1437 lt!1767118) key!4968))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-fun oldBucket!40 () List!51355)

(assert (=> b!4610866 (= lt!1767118 (Cons!51232 (tuple2!51973 hash!414 oldBucket!40) Nil!51232))))

(declare-fun b!4610867 () Bool)

(declare-fun res!1930504 () Bool)

(assert (=> b!4610867 (=> (not res!1930504) (not e!2876234))))

(declare-fun newBucket!224 () List!51355)

(declare-fun removePairForKey!1004 (List!51355 K!12603) List!51355)

(assert (=> b!4610867 (= res!1930504 (= (removePairForKey!1004 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4610868 () Bool)

(declare-fun res!1930505 () Bool)

(assert (=> b!4610868 (=> (not res!1930505) (not e!2876233))))

(declare-datatypes ((Hashable!5778 0))(
  ( (HashableExt!5777 (__x!31481 Int)) )
))
(declare-fun hashF!1389 () Hashable!5778)

(declare-fun hash!3321 (Hashable!5778 K!12603) (_ BitVec 64))

(assert (=> b!4610868 (= res!1930505 (= (hash!3321 hashF!1389 key!4968) hash!414))))

(declare-fun tp_is_empty!28819 () Bool)

(declare-fun tp!1341140 () Bool)

(declare-fun e!2876236 () Bool)

(declare-fun tp_is_empty!28817 () Bool)

(declare-fun b!4610869 () Bool)

(assert (=> b!4610869 (= e!2876236 (and tp_is_empty!28817 tp_is_empty!28819 tp!1341140))))

(declare-fun b!4610870 () Bool)

(declare-fun res!1930506 () Bool)

(assert (=> b!4610870 (=> (not res!1930506) (not e!2876234))))

(declare-fun noDuplicateKeys!1381 (List!51355) Bool)

(assert (=> b!4610870 (= res!1930506 (noDuplicateKeys!1381 newBucket!224))))

(declare-fun res!1930503 () Bool)

(assert (=> start!461182 (=> (not res!1930503) (not e!2876234))))

(assert (=> start!461182 (= res!1930503 (noDuplicateKeys!1381 oldBucket!40))))

(assert (=> start!461182 e!2876234))

(assert (=> start!461182 true))

(declare-fun e!2876235 () Bool)

(assert (=> start!461182 e!2876235))

(assert (=> start!461182 tp_is_empty!28817))

(assert (=> start!461182 e!2876236))

(declare-fun b!4610871 () Bool)

(declare-fun res!1930509 () Bool)

(assert (=> b!4610871 (=> (not res!1930509) (not e!2876233))))

(declare-fun allKeysSameHash!1235 (List!51355 (_ BitVec 64) Hashable!5778) Bool)

(assert (=> b!4610871 (= res!1930509 (allKeysSameHash!1235 newBucket!224 hash!414 hashF!1389))))

(declare-fun tp!1341141 () Bool)

(declare-fun b!4610872 () Bool)

(assert (=> b!4610872 (= e!2876235 (and tp_is_empty!28817 tp_is_empty!28819 tp!1341141))))

(declare-fun b!4610873 () Bool)

(declare-fun res!1930507 () Bool)

(assert (=> b!4610873 (=> (not res!1930507) (not e!2876234))))

(assert (=> b!4610873 (= res!1930507 (allKeysSameHash!1235 oldBucket!40 hash!414 hashF!1389))))

(assert (= (and start!461182 res!1930503) b!4610870))

(assert (= (and b!4610870 res!1930506) b!4610867))

(assert (= (and b!4610867 res!1930504) b!4610873))

(assert (= (and b!4610873 res!1930507) b!4610866))

(assert (= (and b!4610866 res!1930508) b!4610868))

(assert (= (and b!4610868 res!1930505) b!4610871))

(assert (= (and b!4610871 res!1930509) b!4610865))

(assert (= (and start!461182 (is-Cons!51231 oldBucket!40)) b!4610872))

(assert (= (and start!461182 (is-Cons!51231 newBucket!224)) b!4610869))

(declare-fun m!5442463 () Bool)

(assert (=> b!4610865 m!5442463))

(declare-fun m!5442465 () Bool)

(assert (=> b!4610870 m!5442465))

(declare-fun m!5442467 () Bool)

(assert (=> b!4610868 m!5442467))

(declare-fun m!5442469 () Bool)

(assert (=> b!4610867 m!5442469))

(declare-fun m!5442471 () Bool)

(assert (=> start!461182 m!5442471))

(declare-fun m!5442473 () Bool)

(assert (=> b!4610873 m!5442473))

(declare-fun m!5442475 () Bool)

(assert (=> b!4610866 m!5442475))

(assert (=> b!4610866 m!5442475))

(declare-fun m!5442477 () Bool)

(assert (=> b!4610866 m!5442477))

(declare-fun m!5442479 () Bool)

(assert (=> b!4610871 m!5442479))

(push 1)

(assert tp_is_empty!28819)

(assert (not b!4610865))

(assert (not b!4610871))

(assert (not b!4610873))

(assert (not b!4610872))

(assert (not b!4610866))

(assert (not b!4610868))

(assert tp_is_empty!28817)

(assert (not b!4610870))

(assert (not start!461182))

(assert (not b!4610869))

(assert (not b!4610867))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4610915 () Bool)

(declare-fun e!2876259 () List!51355)

(assert (=> b!4610915 (= e!2876259 (t!358349 oldBucket!40))))

(declare-fun b!4610917 () Bool)

(declare-fun e!2876260 () List!51355)

(assert (=> b!4610917 (= e!2876260 (Cons!51231 (h!57227 oldBucket!40) (removePairForKey!1004 (t!358349 oldBucket!40) key!4968)))))

(declare-fun d!1453011 () Bool)

(declare-fun lt!1767124 () List!51355)

(declare-fun containsKey!2273 (List!51355 K!12603) Bool)

(assert (=> d!1453011 (not (containsKey!2273 lt!1767124 key!4968))))

(assert (=> d!1453011 (= lt!1767124 e!2876259)))

(declare-fun c!789760 () Bool)

(assert (=> d!1453011 (= c!789760 (and (is-Cons!51231 oldBucket!40) (= (_1!29279 (h!57227 oldBucket!40)) key!4968)))))

(assert (=> d!1453011 (noDuplicateKeys!1381 oldBucket!40)))

(assert (=> d!1453011 (= (removePairForKey!1004 oldBucket!40 key!4968) lt!1767124)))

(declare-fun b!4610918 () Bool)

(assert (=> b!4610918 (= e!2876260 Nil!51231)))

(declare-fun b!4610916 () Bool)

(assert (=> b!4610916 (= e!2876259 e!2876260)))

(declare-fun c!789759 () Bool)

(assert (=> b!4610916 (= c!789759 (is-Cons!51231 oldBucket!40))))

(assert (= (and d!1453011 c!789760) b!4610915))

(assert (= (and d!1453011 (not c!789760)) b!4610916))

(assert (= (and b!4610916 c!789759) b!4610917))

(assert (= (and b!4610916 (not c!789759)) b!4610918))

(declare-fun m!5442503 () Bool)

(assert (=> b!4610917 m!5442503))

(declare-fun m!5442505 () Bool)

(assert (=> d!1453011 m!5442505))

(assert (=> d!1453011 m!5442471))

(assert (=> b!4610867 d!1453011))

(declare-fun d!1453015 () Bool)

(declare-fun hash!3323 (Hashable!5778 K!12603) (_ BitVec 64))

(assert (=> d!1453015 (= (hash!3321 hashF!1389 key!4968) (hash!3323 hashF!1389 key!4968))))

(declare-fun bs!1016140 () Bool)

(assert (= bs!1016140 d!1453015))

(declare-fun m!5442507 () Bool)

(assert (=> bs!1016140 m!5442507))

(assert (=> b!4610868 d!1453015))

(declare-fun d!1453017 () Bool)

(assert (=> d!1453017 true))

(assert (=> d!1453017 true))

(declare-fun lambda!188493 () Int)

(declare-fun forall!10707 (List!51355 Int) Bool)

(assert (=> d!1453017 (= (allKeysSameHash!1235 oldBucket!40 hash!414 hashF!1389) (forall!10707 oldBucket!40 lambda!188493))))

(declare-fun bs!1016141 () Bool)

(assert (= bs!1016141 d!1453017))

(declare-fun m!5442509 () Bool)

(assert (=> bs!1016141 m!5442509))

(assert (=> b!4610873 d!1453017))

(declare-fun b!4610941 () Bool)

(declare-fun e!2876274 () Bool)

(declare-datatypes ((List!51359 0))(
  ( (Nil!51235) (Cons!51235 (h!57232 K!12603) (t!358353 List!51359)) )
))
(declare-fun contains!14243 (List!51359 K!12603) Bool)

(declare-fun keys!17976 (ListMap!4031) List!51359)

(assert (=> b!4610941 (= e!2876274 (not (contains!14243 (keys!17976 (extractMap!1437 lt!1767118)) key!4968)))))

(declare-fun bm!321471 () Bool)

(declare-fun call!321476 () Bool)

(declare-fun e!2876278 () List!51359)

(assert (=> bm!321471 (= call!321476 (contains!14243 e!2876278 key!4968))))

(declare-fun c!789769 () Bool)

(declare-fun c!789767 () Bool)

(assert (=> bm!321471 (= c!789769 c!789767)))

(declare-fun b!4610942 () Bool)

(declare-datatypes ((Unit!109423 0))(
  ( (Unit!109424) )
))
(declare-fun e!2876273 () Unit!109423)

(declare-fun e!2876276 () Unit!109423)

(assert (=> b!4610942 (= e!2876273 e!2876276)))

(declare-fun c!789768 () Bool)

(assert (=> b!4610942 (= c!789768 call!321476)))

(declare-fun d!1453019 () Bool)

(declare-fun e!2876275 () Bool)

(assert (=> d!1453019 e!2876275))

(declare-fun res!1930544 () Bool)

(assert (=> d!1453019 (=> res!1930544 e!2876275)))

(assert (=> d!1453019 (= res!1930544 e!2876274)))

(declare-fun res!1930543 () Bool)

(assert (=> d!1453019 (=> (not res!1930543) (not e!2876274))))

(declare-fun lt!1767141 () Bool)

(assert (=> d!1453019 (= res!1930543 (not lt!1767141))))

(declare-fun lt!1767143 () Bool)

(assert (=> d!1453019 (= lt!1767141 lt!1767143)))

(declare-fun lt!1767146 () Unit!109423)

(assert (=> d!1453019 (= lt!1767146 e!2876273)))

(assert (=> d!1453019 (= c!789767 lt!1767143)))

(declare-fun containsKey!2274 (List!51355 K!12603) Bool)

(assert (=> d!1453019 (= lt!1767143 (containsKey!2274 (toList!4769 (extractMap!1437 lt!1767118)) key!4968))))

(assert (=> d!1453019 (= (contains!14241 (extractMap!1437 lt!1767118) key!4968) lt!1767141)))

(declare-fun b!4610943 () Bool)

(declare-fun getKeysList!601 (List!51355) List!51359)

(assert (=> b!4610943 (= e!2876278 (getKeysList!601 (toList!4769 (extractMap!1437 lt!1767118))))))

(declare-fun b!4610944 () Bool)

(declare-fun e!2876277 () Bool)

(assert (=> b!4610944 (= e!2876277 (contains!14243 (keys!17976 (extractMap!1437 lt!1767118)) key!4968))))

(declare-fun b!4610945 () Bool)

(declare-fun lt!1767142 () Unit!109423)

(assert (=> b!4610945 (= e!2876273 lt!1767142)))

(declare-fun lt!1767144 () Unit!109423)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1269 (List!51355 K!12603) Unit!109423)

(assert (=> b!4610945 (= lt!1767144 (lemmaContainsKeyImpliesGetValueByKeyDefined!1269 (toList!4769 (extractMap!1437 lt!1767118)) key!4968))))

(declare-datatypes ((Option!11453 0))(
  ( (None!11452) (Some!11452 (v!45518 V!12849)) )
))
(declare-fun isDefined!8718 (Option!11453) Bool)

(declare-fun getValueByKey!1367 (List!51355 K!12603) Option!11453)

(assert (=> b!4610945 (isDefined!8718 (getValueByKey!1367 (toList!4769 (extractMap!1437 lt!1767118)) key!4968))))

(declare-fun lt!1767148 () Unit!109423)

(assert (=> b!4610945 (= lt!1767148 lt!1767144)))

(declare-fun lemmaInListThenGetKeysListContains!596 (List!51355 K!12603) Unit!109423)

(assert (=> b!4610945 (= lt!1767142 (lemmaInListThenGetKeysListContains!596 (toList!4769 (extractMap!1437 lt!1767118)) key!4968))))

(assert (=> b!4610945 call!321476))

(declare-fun b!4610946 () Bool)

(assert (=> b!4610946 false))

(declare-fun lt!1767145 () Unit!109423)

(declare-fun lt!1767147 () Unit!109423)

(assert (=> b!4610946 (= lt!1767145 lt!1767147)))

(assert (=> b!4610946 (containsKey!2274 (toList!4769 (extractMap!1437 lt!1767118)) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!600 (List!51355 K!12603) Unit!109423)

(assert (=> b!4610946 (= lt!1767147 (lemmaInGetKeysListThenContainsKey!600 (toList!4769 (extractMap!1437 lt!1767118)) key!4968))))

(declare-fun Unit!109425 () Unit!109423)

(assert (=> b!4610946 (= e!2876276 Unit!109425)))

(declare-fun b!4610947 () Bool)

(declare-fun Unit!109426 () Unit!109423)

(assert (=> b!4610947 (= e!2876276 Unit!109426)))

(declare-fun b!4610948 () Bool)

(assert (=> b!4610948 (= e!2876275 e!2876277)))

(declare-fun res!1930545 () Bool)

(assert (=> b!4610948 (=> (not res!1930545) (not e!2876277))))

(assert (=> b!4610948 (= res!1930545 (isDefined!8718 (getValueByKey!1367 (toList!4769 (extractMap!1437 lt!1767118)) key!4968)))))

(declare-fun b!4610949 () Bool)

(assert (=> b!4610949 (= e!2876278 (keys!17976 (extractMap!1437 lt!1767118)))))

(assert (= (and d!1453019 c!789767) b!4610945))

(assert (= (and d!1453019 (not c!789767)) b!4610942))

(assert (= (and b!4610942 c!789768) b!4610946))

(assert (= (and b!4610942 (not c!789768)) b!4610947))

(assert (= (or b!4610945 b!4610942) bm!321471))

(assert (= (and bm!321471 c!789769) b!4610943))

(assert (= (and bm!321471 (not c!789769)) b!4610949))

(assert (= (and d!1453019 res!1930543) b!4610941))

(assert (= (and d!1453019 (not res!1930544)) b!4610948))

(assert (= (and b!4610948 res!1930545) b!4610944))

(assert (=> b!4610949 m!5442475))

(declare-fun m!5442511 () Bool)

(assert (=> b!4610949 m!5442511))

(declare-fun m!5442513 () Bool)

(assert (=> b!4610946 m!5442513))

(declare-fun m!5442515 () Bool)

(assert (=> b!4610946 m!5442515))

(declare-fun m!5442517 () Bool)

(assert (=> b!4610945 m!5442517))

(declare-fun m!5442519 () Bool)

(assert (=> b!4610945 m!5442519))

(assert (=> b!4610945 m!5442519))

(declare-fun m!5442521 () Bool)

(assert (=> b!4610945 m!5442521))

(declare-fun m!5442523 () Bool)

(assert (=> b!4610945 m!5442523))

(assert (=> b!4610944 m!5442475))

(assert (=> b!4610944 m!5442511))

(assert (=> b!4610944 m!5442511))

(declare-fun m!5442525 () Bool)

(assert (=> b!4610944 m!5442525))

(declare-fun m!5442527 () Bool)

(assert (=> b!4610943 m!5442527))

(assert (=> b!4610948 m!5442519))

(assert (=> b!4610948 m!5442519))

(assert (=> b!4610948 m!5442521))

(assert (=> b!4610941 m!5442475))

(assert (=> b!4610941 m!5442511))

(assert (=> b!4610941 m!5442511))

(assert (=> b!4610941 m!5442525))

(declare-fun m!5442529 () Bool)

(assert (=> bm!321471 m!5442529))

(assert (=> d!1453019 m!5442513))

(assert (=> b!4610866 d!1453019))

(declare-fun bs!1016142 () Bool)

(declare-fun d!1453021 () Bool)

(assert (= bs!1016142 (and d!1453021 b!4610865)))

(declare-fun lambda!188496 () Int)

(assert (=> bs!1016142 (= lambda!188496 lambda!188487)))

(declare-fun lt!1767167 () ListMap!4031)

(declare-fun invariantList!1151 (List!51355) Bool)

(assert (=> d!1453021 (invariantList!1151 (toList!4769 lt!1767167))))

(declare-fun e!2876293 () ListMap!4031)

(assert (=> d!1453021 (= lt!1767167 e!2876293)))

(declare-fun c!789778 () Bool)

(assert (=> d!1453021 (= c!789778 (is-Cons!51232 lt!1767118))))

(assert (=> d!1453021 (forall!10705 lt!1767118 lambda!188496)))

(assert (=> d!1453021 (= (extractMap!1437 lt!1767118) lt!1767167)))

(declare-fun b!4610972 () Bool)

(declare-fun addToMapMapFromBucket!847 (List!51355 ListMap!4031) ListMap!4031)

(assert (=> b!4610972 (= e!2876293 (addToMapMapFromBucket!847 (_2!29280 (h!57228 lt!1767118)) (extractMap!1437 (t!358350 lt!1767118))))))

(declare-fun b!4610973 () Bool)

(assert (=> b!4610973 (= e!2876293 (ListMap!4032 Nil!51231))))

(assert (= (and d!1453021 c!789778) b!4610972))

(assert (= (and d!1453021 (not c!789778)) b!4610973))

(declare-fun m!5442531 () Bool)

(assert (=> d!1453021 m!5442531))

(declare-fun m!5442533 () Bool)

(assert (=> d!1453021 m!5442533))

(declare-fun m!5442535 () Bool)

(assert (=> b!4610972 m!5442535))

(assert (=> b!4610972 m!5442535))

(declare-fun m!5442537 () Bool)

(assert (=> b!4610972 m!5442537))

(assert (=> b!4610866 d!1453021))

(declare-fun bs!1016143 () Bool)

(declare-fun d!1453023 () Bool)

(assert (= bs!1016143 (and d!1453023 d!1453017)))

(declare-fun lambda!188497 () Int)

(assert (=> bs!1016143 (= lambda!188497 lambda!188493)))

(assert (=> d!1453023 true))

(assert (=> d!1453023 true))

(assert (=> d!1453023 (= (allKeysSameHash!1235 newBucket!224 hash!414 hashF!1389) (forall!10707 newBucket!224 lambda!188497))))

(declare-fun bs!1016144 () Bool)

(assert (= bs!1016144 d!1453023))

(declare-fun m!5442539 () Bool)

(assert (=> bs!1016144 m!5442539))

(assert (=> b!4610871 d!1453023))

(declare-fun d!1453025 () Bool)

(declare-fun res!1930556 () Bool)

(declare-fun e!2876298 () Bool)

(assert (=> d!1453025 (=> res!1930556 e!2876298)))

(assert (=> d!1453025 (= res!1930556 (not (is-Cons!51231 oldBucket!40)))))

(assert (=> d!1453025 (= (noDuplicateKeys!1381 oldBucket!40) e!2876298)))

(declare-fun b!4610978 () Bool)

(declare-fun e!2876299 () Bool)

(assert (=> b!4610978 (= e!2876298 e!2876299)))

(declare-fun res!1930557 () Bool)

(assert (=> b!4610978 (=> (not res!1930557) (not e!2876299))))

(assert (=> b!4610978 (= res!1930557 (not (containsKey!2273 (t!358349 oldBucket!40) (_1!29279 (h!57227 oldBucket!40)))))))

(declare-fun b!4610979 () Bool)

(assert (=> b!4610979 (= e!2876299 (noDuplicateKeys!1381 (t!358349 oldBucket!40)))))

(assert (= (and d!1453025 (not res!1930556)) b!4610978))

(assert (= (and b!4610978 res!1930557) b!4610979))

(declare-fun m!5442541 () Bool)

(assert (=> b!4610978 m!5442541))

(declare-fun m!5442543 () Bool)

(assert (=> b!4610979 m!5442543))

(assert (=> start!461182 d!1453025))

(declare-fun d!1453027 () Bool)

(declare-fun res!1930558 () Bool)

(declare-fun e!2876300 () Bool)

(assert (=> d!1453027 (=> res!1930558 e!2876300)))

(assert (=> d!1453027 (= res!1930558 (not (is-Cons!51231 newBucket!224)))))

(assert (=> d!1453027 (= (noDuplicateKeys!1381 newBucket!224) e!2876300)))

(declare-fun b!4610980 () Bool)

(declare-fun e!2876301 () Bool)

(assert (=> b!4610980 (= e!2876300 e!2876301)))

(declare-fun res!1930559 () Bool)

(assert (=> b!4610980 (=> (not res!1930559) (not e!2876301))))

(assert (=> b!4610980 (= res!1930559 (not (containsKey!2273 (t!358349 newBucket!224) (_1!29279 (h!57227 newBucket!224)))))))

(declare-fun b!4610981 () Bool)

(assert (=> b!4610981 (= e!2876301 (noDuplicateKeys!1381 (t!358349 newBucket!224)))))

(assert (= (and d!1453027 (not res!1930558)) b!4610980))

(assert (= (and b!4610980 res!1930559) b!4610981))

(declare-fun m!5442545 () Bool)

(assert (=> b!4610980 m!5442545))

(declare-fun m!5442547 () Bool)

(assert (=> b!4610981 m!5442547))

(assert (=> b!4610870 d!1453027))

(declare-fun d!1453029 () Bool)

(declare-fun res!1930564 () Bool)

(declare-fun e!2876306 () Bool)

(assert (=> d!1453029 (=> res!1930564 e!2876306)))

(assert (=> d!1453029 (= res!1930564 (is-Nil!51232 lt!1767118))))

(assert (=> d!1453029 (= (forall!10705 lt!1767118 lambda!188487) e!2876306)))

(declare-fun b!4610986 () Bool)

(declare-fun e!2876307 () Bool)

(assert (=> b!4610986 (= e!2876306 e!2876307)))

(declare-fun res!1930565 () Bool)

(assert (=> b!4610986 (=> (not res!1930565) (not e!2876307))))

(declare-fun dynLambda!21446 (Int tuple2!51972) Bool)

(assert (=> b!4610986 (= res!1930565 (dynLambda!21446 lambda!188487 (h!57228 lt!1767118)))))

(declare-fun b!4610987 () Bool)

(assert (=> b!4610987 (= e!2876307 (forall!10705 (t!358350 lt!1767118) lambda!188487))))

(assert (= (and d!1453029 (not res!1930564)) b!4610986))

(assert (= (and b!4610986 res!1930565) b!4610987))

(declare-fun b_lambda!170461 () Bool)

(assert (=> (not b_lambda!170461) (not b!4610986)))

(declare-fun m!5442549 () Bool)

(assert (=> b!4610986 m!5442549))

(declare-fun m!5442551 () Bool)

(assert (=> b!4610987 m!5442551))

(assert (=> b!4610865 d!1453029))

(declare-fun tp!1341150 () Bool)

(declare-fun b!4610992 () Bool)

(declare-fun e!2876310 () Bool)

(assert (=> b!4610992 (= e!2876310 (and tp_is_empty!28817 tp_is_empty!28819 tp!1341150))))

(assert (=> b!4610872 (= tp!1341141 e!2876310)))

(assert (= (and b!4610872 (is-Cons!51231 (t!358349 oldBucket!40))) b!4610992))

(declare-fun b!4610993 () Bool)

(declare-fun tp!1341151 () Bool)

(declare-fun e!2876311 () Bool)

(assert (=> b!4610993 (= e!2876311 (and tp_is_empty!28817 tp_is_empty!28819 tp!1341151))))

(assert (=> b!4610869 (= tp!1341140 e!2876311)))

(assert (= (and b!4610869 (is-Cons!51231 (t!358349 newBucket!224))) b!4610993))

(declare-fun b_lambda!170463 () Bool)

(assert (= b_lambda!170461 (or b!4610865 b_lambda!170463)))

(declare-fun bs!1016145 () Bool)

(declare-fun d!1453031 () Bool)

(assert (= bs!1016145 (and d!1453031 b!4610865)))

(assert (=> bs!1016145 (= (dynLambda!21446 lambda!188487 (h!57228 lt!1767118)) (noDuplicateKeys!1381 (_2!29280 (h!57228 lt!1767118))))))

(declare-fun m!5442553 () Bool)

(assert (=> bs!1016145 m!5442553))

(assert (=> b!4610986 d!1453031))

(push 1)

(assert (not b!4610944))

(assert (not b!4610978))

(assert (not b!4610992))

(assert (not d!1453015))

(assert (not b!4610979))

(assert (not d!1453017))

(assert (not b!4610993))

(assert tp_is_empty!28819)

(assert (not b!4610949))

(assert (not d!1453019))

(assert (not b!4610917))

(assert (not b!4610981))

(assert (not b!4610972))

(assert (not d!1453023))

(assert (not d!1453011))

(assert (not bm!321471))

(assert (not b!4610946))

(assert (not b!4610948))

(assert (not b!4610980))

(assert (not b!4610941))

(assert (not b!4610943))

(assert (not d!1453021))

(assert (not b!4610987))

(assert (not b!4610945))

(assert (not bs!1016145))

(assert (not b_lambda!170463))

(assert tp_is_empty!28817)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

