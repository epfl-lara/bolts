; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!493216 () Bool)

(assert start!493216)

(declare-fun b!4791069 () Bool)

(declare-datatypes ((Unit!139856 0))(
  ( (Unit!139857) )
))
(declare-fun e!2991441 () Unit!139856)

(declare-fun Unit!139858 () Unit!139856)

(assert (=> b!4791069 (= e!2991441 Unit!139858)))

(declare-fun b!4791070 () Bool)

(declare-fun e!2991444 () Bool)

(declare-datatypes ((K!15742 0))(
  ( (K!15743 (val!20899 Int)) )
))
(declare-datatypes ((V!15988 0))(
  ( (V!15989 (val!20900 Int)) )
))
(declare-datatypes ((tuple2!56772 0))(
  ( (tuple2!56773 (_1!31680 K!15742) (_2!31680 V!15988)) )
))
(declare-datatypes ((List!54295 0))(
  ( (Nil!54171) (Cons!54171 (h!60595 tuple2!56772) (t!361745 List!54295)) )
))
(declare-datatypes ((tuple2!56774 0))(
  ( (tuple2!56775 (_1!31681 (_ BitVec 64)) (_2!31681 List!54295)) )
))
(declare-datatypes ((List!54296 0))(
  ( (Nil!54172) (Cons!54172 (h!60596 tuple2!56774) (t!361746 List!54296)) )
))
(declare-datatypes ((ListLongMap!5303 0))(
  ( (ListLongMap!5304 (toList!6881 List!54296)) )
))
(declare-fun lm!2473 () ListLongMap!5303)

(declare-fun lambda!230314 () Int)

(declare-fun forall!12226 (List!54296 Int) Bool)

(assert (=> b!4791070 (= e!2991444 (forall!12226 (t!361746 (toList!6881 lm!2473)) lambda!230314))))

(declare-datatypes ((ListMap!6353 0))(
  ( (ListMap!6354 (toList!6882 List!54295)) )
))
(declare-fun lt!1950371 () ListMap!6353)

(declare-fun key!5896 () K!15742)

(declare-fun value!3111 () V!15988)

(declare-fun apply!12962 (ListMap!6353 K!15742) V!15988)

(assert (=> b!4791070 (= (apply!12962 lt!1950371 key!5896) value!3111)))

(declare-datatypes ((Hashable!6901 0))(
  ( (HashableExt!6900 (__x!32924 Int)) )
))
(declare-fun hashF!1559 () Hashable!6901)

(declare-fun lt!1950375 () Unit!139856)

(declare-fun lt!1950370 () ListLongMap!5303)

(declare-fun lemmaExtractMapPreservesMapping!33 (ListLongMap!5303 K!15742 V!15988 Hashable!6901) Unit!139856)

(assert (=> b!4791070 (= lt!1950375 (lemmaExtractMapPreservesMapping!33 lt!1950370 key!5896 value!3111 hashF!1559))))

(declare-fun contains!17776 (ListMap!6353 K!15742) Bool)

(assert (=> b!4791070 (contains!17776 lt!1950371 key!5896)))

(declare-fun extractMap!2428 (List!54296) ListMap!6353)

(assert (=> b!4791070 (= lt!1950371 (extractMap!2428 (toList!6881 lt!1950370)))))

(declare-fun lt!1950374 () Unit!139856)

(declare-fun lemmaListContainsThenExtractedMapContains!701 (ListLongMap!5303 K!15742 Hashable!6901) Unit!139856)

(assert (=> b!4791070 (= lt!1950374 (lemmaListContainsThenExtractedMapContains!701 lt!1950370 key!5896 hashF!1559))))

(declare-fun lt!1950368 () Unit!139856)

(assert (=> b!4791070 (= lt!1950368 e!2991441)))

(declare-fun c!816606 () Bool)

(declare-fun lt!1950372 () (_ BitVec 64))

(declare-fun contains!17777 (ListLongMap!5303 (_ BitVec 64)) Bool)

(assert (=> b!4791070 (= c!816606 (not (contains!17777 lt!1950370 lt!1950372)))))

(declare-fun tail!9254 (ListLongMap!5303) ListLongMap!5303)

(assert (=> b!4791070 (= lt!1950370 (tail!9254 lm!2473))))

(declare-fun b!4791071 () Bool)

(declare-fun lt!1950369 () Unit!139856)

(assert (=> b!4791071 (= e!2991441 lt!1950369)))

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!27 (ListLongMap!5303 K!15742 Hashable!6901) Unit!139856)

(assert (=> b!4791071 (= lt!1950369 (lemmaHashNotInLongMapThenNotInGenerated!27 lt!1950370 key!5896 hashF!1559))))

(assert (=> b!4791071 (not (contains!17776 (extractMap!2428 (toList!6881 lt!1950370)) key!5896))))

(declare-fun b!4791072 () Bool)

(declare-fun e!2991445 () Bool)

(declare-fun tp!1357921 () Bool)

(assert (=> b!4791072 (= e!2991445 tp!1357921)))

(declare-fun b!4791073 () Bool)

(declare-fun e!2991443 () Bool)

(assert (=> b!4791073 (= e!2991443 (not e!2991444))))

(declare-fun res!2036130 () Bool)

(assert (=> b!4791073 (=> res!2036130 e!2991444)))

(declare-fun getValue!97 (List!54296 K!15742) V!15988)

(assert (=> b!4791073 (= res!2036130 (not (= (getValue!97 (toList!6881 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!551 (List!54296 K!15742) Bool)

(assert (=> b!4791073 (containsKeyBiggerList!551 (toList!6881 lm!2473) key!5896)))

(declare-fun lt!1950376 () Unit!139856)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!291 (ListLongMap!5303 K!15742 Hashable!6901) Unit!139856)

(assert (=> b!4791073 (= lt!1950376 (lemmaInLongMapThenContainsKeyBiggerList!291 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2991442 () Bool)

(assert (=> b!4791073 e!2991442))

(declare-fun res!2036129 () Bool)

(assert (=> b!4791073 (=> (not res!2036129) (not e!2991442))))

(assert (=> b!4791073 (= res!2036129 (contains!17777 lm!2473 lt!1950372))))

(declare-fun hash!4931 (Hashable!6901 K!15742) (_ BitVec 64))

(assert (=> b!4791073 (= lt!1950372 (hash!4931 hashF!1559 key!5896))))

(declare-fun lt!1950373 () Unit!139856)

(declare-fun lemmaInGenericMapThenInLongMap!305 (ListLongMap!5303 K!15742 Hashable!6901) Unit!139856)

(assert (=> b!4791073 (= lt!1950373 (lemmaInGenericMapThenInLongMap!305 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4791074 () Bool)

(declare-fun res!2036128 () Bool)

(assert (=> b!4791074 (=> res!2036128 e!2991444)))

(declare-fun containsKey!3927 (List!54295 K!15742) Bool)

(assert (=> b!4791074 (= res!2036128 (containsKey!3927 (_2!31681 (h!60596 (toList!6881 lm!2473))) key!5896))))

(declare-fun b!4791076 () Bool)

(declare-fun res!2036126 () Bool)

(assert (=> b!4791076 (=> (not res!2036126) (not e!2991443))))

(assert (=> b!4791076 (= res!2036126 (contains!17776 (extractMap!2428 (toList!6881 lm!2473)) key!5896))))

(declare-fun b!4791077 () Bool)

(declare-fun res!2036125 () Bool)

(assert (=> b!4791077 (=> (not res!2036125) (not e!2991443))))

(declare-fun allKeysSameHashInMap!2306 (ListLongMap!5303 Hashable!6901) Bool)

(assert (=> b!4791077 (= res!2036125 (allKeysSameHashInMap!2306 lm!2473 hashF!1559))))

(declare-fun b!4791078 () Bool)

(declare-fun res!2036131 () Bool)

(assert (=> b!4791078 (=> res!2036131 e!2991444)))

(assert (=> b!4791078 (= res!2036131 (not (is-Cons!54172 (toList!6881 lm!2473))))))

(declare-fun res!2036127 () Bool)

(assert (=> start!493216 (=> (not res!2036127) (not e!2991443))))

(assert (=> start!493216 (= res!2036127 (forall!12226 (toList!6881 lm!2473) lambda!230314))))

(assert (=> start!493216 e!2991443))

(declare-fun inv!69769 (ListLongMap!5303) Bool)

(assert (=> start!493216 (and (inv!69769 lm!2473) e!2991445)))

(assert (=> start!493216 true))

(declare-fun tp_is_empty!33485 () Bool)

(assert (=> start!493216 tp_is_empty!33485))

(declare-fun tp_is_empty!33487 () Bool)

(assert (=> start!493216 tp_is_empty!33487))

(declare-fun b!4791075 () Bool)

(declare-datatypes ((Option!13064 0))(
  ( (None!13063) (Some!13063 (v!48342 tuple2!56772)) )
))
(declare-fun isDefined!10206 (Option!13064) Bool)

(declare-fun getPair!873 (List!54295 K!15742) Option!13064)

(declare-fun apply!12963 (ListLongMap!5303 (_ BitVec 64)) List!54295)

(assert (=> b!4791075 (= e!2991442 (isDefined!10206 (getPair!873 (apply!12963 lm!2473 lt!1950372) key!5896)))))

(assert (= (and start!493216 res!2036127) b!4791077))

(assert (= (and b!4791077 res!2036125) b!4791076))

(assert (= (and b!4791076 res!2036126) b!4791073))

(assert (= (and b!4791073 res!2036129) b!4791075))

(assert (= (and b!4791073 (not res!2036130)) b!4791078))

(assert (= (and b!4791078 (not res!2036131)) b!4791074))

(assert (= (and b!4791074 (not res!2036128)) b!4791070))

(assert (= (and b!4791070 c!816606) b!4791071))

(assert (= (and b!4791070 (not c!816606)) b!4791069))

(assert (= start!493216 b!4791072))

(declare-fun m!5771390 () Bool)

(assert (=> b!4791071 m!5771390))

(declare-fun m!5771392 () Bool)

(assert (=> b!4791071 m!5771392))

(assert (=> b!4791071 m!5771392))

(declare-fun m!5771394 () Bool)

(assert (=> b!4791071 m!5771394))

(declare-fun m!5771396 () Bool)

(assert (=> b!4791077 m!5771396))

(declare-fun m!5771398 () Bool)

(assert (=> start!493216 m!5771398))

(declare-fun m!5771400 () Bool)

(assert (=> start!493216 m!5771400))

(declare-fun m!5771402 () Bool)

(assert (=> b!4791070 m!5771402))

(declare-fun m!5771404 () Bool)

(assert (=> b!4791070 m!5771404))

(declare-fun m!5771406 () Bool)

(assert (=> b!4791070 m!5771406))

(assert (=> b!4791070 m!5771392))

(declare-fun m!5771408 () Bool)

(assert (=> b!4791070 m!5771408))

(declare-fun m!5771410 () Bool)

(assert (=> b!4791070 m!5771410))

(declare-fun m!5771412 () Bool)

(assert (=> b!4791070 m!5771412))

(declare-fun m!5771414 () Bool)

(assert (=> b!4791070 m!5771414))

(declare-fun m!5771416 () Bool)

(assert (=> b!4791076 m!5771416))

(assert (=> b!4791076 m!5771416))

(declare-fun m!5771418 () Bool)

(assert (=> b!4791076 m!5771418))

(declare-fun m!5771420 () Bool)

(assert (=> b!4791075 m!5771420))

(assert (=> b!4791075 m!5771420))

(declare-fun m!5771422 () Bool)

(assert (=> b!4791075 m!5771422))

(assert (=> b!4791075 m!5771422))

(declare-fun m!5771424 () Bool)

(assert (=> b!4791075 m!5771424))

(declare-fun m!5771426 () Bool)

(assert (=> b!4791074 m!5771426))

(declare-fun m!5771428 () Bool)

(assert (=> b!4791073 m!5771428))

(declare-fun m!5771430 () Bool)

(assert (=> b!4791073 m!5771430))

(declare-fun m!5771432 () Bool)

(assert (=> b!4791073 m!5771432))

(declare-fun m!5771434 () Bool)

(assert (=> b!4791073 m!5771434))

(declare-fun m!5771436 () Bool)

(assert (=> b!4791073 m!5771436))

(declare-fun m!5771438 () Bool)

(assert (=> b!4791073 m!5771438))

(push 1)

(assert (not b!4791070))

(assert tp_is_empty!33485)

(assert (not b!4791071))

(assert (not b!4791072))

(assert (not b!4791077))

(assert (not b!4791075))

(assert tp_is_empty!33487)

(assert (not start!493216))

(assert (not b!4791076))

(assert (not b!4791074))

(assert (not b!4791073))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4791127 () Bool)

(declare-fun e!2991473 () Bool)

(declare-datatypes ((List!54299 0))(
  ( (Nil!54175) (Cons!54175 (h!60599 K!15742) (t!361749 List!54299)) )
))
(declare-fun contains!17780 (List!54299 K!15742) Bool)

(declare-fun keys!19771 (ListMap!6353) List!54299)

(assert (=> b!4791127 (= e!2991473 (contains!17780 (keys!19771 (extractMap!2428 (toList!6881 lm!2473))) key!5896))))

(declare-fun b!4791128 () Bool)

(declare-fun e!2991476 () Unit!139856)

(declare-fun e!2991474 () Unit!139856)

(assert (=> b!4791128 (= e!2991476 e!2991474)))

(declare-fun c!816618 () Bool)

(declare-fun call!335003 () Bool)

(assert (=> b!4791128 (= c!816618 call!335003)))

(declare-fun b!4791130 () Bool)

(declare-fun e!2991477 () Bool)

(assert (=> b!4791130 (= e!2991477 (not (contains!17780 (keys!19771 (extractMap!2428 (toList!6881 lm!2473))) key!5896)))))

(declare-fun bm!334998 () Bool)

(declare-fun e!2991475 () List!54299)

(assert (=> bm!334998 (= call!335003 (contains!17780 e!2991475 key!5896))))

(declare-fun c!816617 () Bool)

(declare-fun c!816616 () Bool)

(assert (=> bm!334998 (= c!816617 c!816616)))

(declare-fun b!4791131 () Bool)

(declare-fun Unit!139862 () Unit!139856)

(assert (=> b!4791131 (= e!2991474 Unit!139862)))

(declare-fun b!4791132 () Bool)

(declare-fun e!2991478 () Bool)

(assert (=> b!4791132 (= e!2991478 e!2991473)))

(declare-fun res!2036160 () Bool)

(assert (=> b!4791132 (=> (not res!2036160) (not e!2991473))))

(declare-datatypes ((Option!13066 0))(
  ( (None!13065) (Some!13065 (v!48344 V!15988)) )
))
(declare-fun isDefined!10208 (Option!13066) Bool)

(declare-fun getValueByKey!2339 (List!54295 K!15742) Option!13066)

(assert (=> b!4791132 (= res!2036160 (isDefined!10208 (getValueByKey!2339 (toList!6882 (extractMap!2428 (toList!6881 lm!2473))) key!5896)))))

(declare-fun b!4791133 () Bool)

(declare-fun getKeysList!1070 (List!54295) List!54299)

(assert (=> b!4791133 (= e!2991475 (getKeysList!1070 (toList!6882 (extractMap!2428 (toList!6881 lm!2473)))))))

(declare-fun d!1532834 () Bool)

(assert (=> d!1532834 e!2991478))

(declare-fun res!2036159 () Bool)

(assert (=> d!1532834 (=> res!2036159 e!2991478)))

(assert (=> d!1532834 (= res!2036159 e!2991477)))

(declare-fun res!2036161 () Bool)

(assert (=> d!1532834 (=> (not res!2036161) (not e!2991477))))

(declare-fun lt!1950420 () Bool)

(assert (=> d!1532834 (= res!2036161 (not lt!1950420))))

(declare-fun lt!1950425 () Bool)

(assert (=> d!1532834 (= lt!1950420 lt!1950425)))

(declare-fun lt!1950424 () Unit!139856)

(assert (=> d!1532834 (= lt!1950424 e!2991476)))

(assert (=> d!1532834 (= c!816616 lt!1950425)))

(declare-fun containsKey!3929 (List!54295 K!15742) Bool)

(assert (=> d!1532834 (= lt!1950425 (containsKey!3929 (toList!6882 (extractMap!2428 (toList!6881 lm!2473))) key!5896))))

(assert (=> d!1532834 (= (contains!17776 (extractMap!2428 (toList!6881 lm!2473)) key!5896) lt!1950420)))

(declare-fun b!4791129 () Bool)

(declare-fun lt!1950427 () Unit!139856)

(assert (=> b!4791129 (= e!2991476 lt!1950427)))

(declare-fun lt!1950421 () Unit!139856)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2131 (List!54295 K!15742) Unit!139856)

(assert (=> b!4791129 (= lt!1950421 (lemmaContainsKeyImpliesGetValueByKeyDefined!2131 (toList!6882 (extractMap!2428 (toList!6881 lm!2473))) key!5896))))

(assert (=> b!4791129 (isDefined!10208 (getValueByKey!2339 (toList!6882 (extractMap!2428 (toList!6881 lm!2473))) key!5896))))

(declare-fun lt!1950426 () Unit!139856)

(assert (=> b!4791129 (= lt!1950426 lt!1950421)))

(declare-fun lemmaInListThenGetKeysListContains!1065 (List!54295 K!15742) Unit!139856)

(assert (=> b!4791129 (= lt!1950427 (lemmaInListThenGetKeysListContains!1065 (toList!6882 (extractMap!2428 (toList!6881 lm!2473))) key!5896))))

(assert (=> b!4791129 call!335003))

(declare-fun b!4791134 () Bool)

(assert (=> b!4791134 false))

(declare-fun lt!1950423 () Unit!139856)

(declare-fun lt!1950422 () Unit!139856)

(assert (=> b!4791134 (= lt!1950423 lt!1950422)))

(assert (=> b!4791134 (containsKey!3929 (toList!6882 (extractMap!2428 (toList!6881 lm!2473))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1070 (List!54295 K!15742) Unit!139856)

(assert (=> b!4791134 (= lt!1950422 (lemmaInGetKeysListThenContainsKey!1070 (toList!6882 (extractMap!2428 (toList!6881 lm!2473))) key!5896))))

(declare-fun Unit!139863 () Unit!139856)

(assert (=> b!4791134 (= e!2991474 Unit!139863)))

(declare-fun b!4791135 () Bool)

(assert (=> b!4791135 (= e!2991475 (keys!19771 (extractMap!2428 (toList!6881 lm!2473))))))

(assert (= (and d!1532834 c!816616) b!4791129))

(assert (= (and d!1532834 (not c!816616)) b!4791128))

(assert (= (and b!4791128 c!816618) b!4791134))

(assert (= (and b!4791128 (not c!816618)) b!4791131))

(assert (= (or b!4791129 b!4791128) bm!334998))

(assert (= (and bm!334998 c!816617) b!4791133))

(assert (= (and bm!334998 (not c!816617)) b!4791135))

(assert (= (and d!1532834 res!2036161) b!4791130))

(assert (= (and d!1532834 (not res!2036159)) b!4791132))

(assert (= (and b!4791132 res!2036160) b!4791127))

(assert (=> b!4791130 m!5771416))

(declare-fun m!5771490 () Bool)

(assert (=> b!4791130 m!5771490))

(assert (=> b!4791130 m!5771490))

(declare-fun m!5771492 () Bool)

(assert (=> b!4791130 m!5771492))

(declare-fun m!5771494 () Bool)

(assert (=> b!4791129 m!5771494))

(declare-fun m!5771496 () Bool)

(assert (=> b!4791129 m!5771496))

(assert (=> b!4791129 m!5771496))

(declare-fun m!5771498 () Bool)

(assert (=> b!4791129 m!5771498))

(declare-fun m!5771500 () Bool)

(assert (=> b!4791129 m!5771500))

(declare-fun m!5771502 () Bool)

(assert (=> d!1532834 m!5771502))

(assert (=> b!4791135 m!5771416))

(assert (=> b!4791135 m!5771490))

(assert (=> b!4791132 m!5771496))

(assert (=> b!4791132 m!5771496))

(assert (=> b!4791132 m!5771498))

(assert (=> b!4791127 m!5771416))

(assert (=> b!4791127 m!5771490))

(assert (=> b!4791127 m!5771490))

(assert (=> b!4791127 m!5771492))

(declare-fun m!5771504 () Bool)

(assert (=> bm!334998 m!5771504))

(assert (=> b!4791134 m!5771502))

(declare-fun m!5771506 () Bool)

(assert (=> b!4791134 m!5771506))

(declare-fun m!5771508 () Bool)

(assert (=> b!4791133 m!5771508))

(assert (=> b!4791076 d!1532834))

(declare-fun bs!1154519 () Bool)

(declare-fun d!1532838 () Bool)

(assert (= bs!1154519 (and d!1532838 start!493216)))

(declare-fun lambda!230325 () Int)

(assert (=> bs!1154519 (= lambda!230325 lambda!230314)))

(declare-fun lt!1950445 () ListMap!6353)

(declare-fun invariantList!1725 (List!54295) Bool)

(assert (=> d!1532838 (invariantList!1725 (toList!6882 lt!1950445))))

(declare-fun e!2991490 () ListMap!6353)

(assert (=> d!1532838 (= lt!1950445 e!2991490)))

(declare-fun c!816627 () Bool)

(assert (=> d!1532838 (= c!816627 (is-Cons!54172 (toList!6881 lm!2473)))))

(assert (=> d!1532838 (forall!12226 (toList!6881 lm!2473) lambda!230325)))

(assert (=> d!1532838 (= (extractMap!2428 (toList!6881 lm!2473)) lt!1950445)))

(declare-fun b!4791155 () Bool)

(declare-fun addToMapMapFromBucket!1696 (List!54295 ListMap!6353) ListMap!6353)

(assert (=> b!4791155 (= e!2991490 (addToMapMapFromBucket!1696 (_2!31681 (h!60596 (toList!6881 lm!2473))) (extractMap!2428 (t!361746 (toList!6881 lm!2473)))))))

(declare-fun b!4791156 () Bool)

(assert (=> b!4791156 (= e!2991490 (ListMap!6354 Nil!54171))))

(assert (= (and d!1532838 c!816627) b!4791155))

(assert (= (and d!1532838 (not c!816627)) b!4791156))

(declare-fun m!5771526 () Bool)

(assert (=> d!1532838 m!5771526))

(declare-fun m!5771528 () Bool)

(assert (=> d!1532838 m!5771528))

(declare-fun m!5771530 () Bool)

(assert (=> b!4791155 m!5771530))

(assert (=> b!4791155 m!5771530))

(declare-fun m!5771532 () Bool)

(assert (=> b!4791155 m!5771532))

(assert (=> b!4791076 d!1532838))

(declare-fun bs!1154524 () Bool)

(declare-fun d!1532844 () Bool)

(assert (= bs!1154524 (and d!1532844 start!493216)))

(declare-fun lambda!230331 () Int)

(assert (=> bs!1154524 (= lambda!230331 lambda!230314)))

(declare-fun bs!1154525 () Bool)

(assert (= bs!1154525 (and d!1532844 d!1532838)))

(assert (=> bs!1154525 (= lambda!230331 lambda!230325)))

(assert (=> d!1532844 (not (contains!17776 (extractMap!2428 (toList!6881 lt!1950370)) key!5896))))

(declare-fun lt!1950451 () Unit!139856)

(declare-fun choose!34486 (ListLongMap!5303 K!15742 Hashable!6901) Unit!139856)

(assert (=> d!1532844 (= lt!1950451 (choose!34486 lt!1950370 key!5896 hashF!1559))))

(assert (=> d!1532844 (forall!12226 (toList!6881 lt!1950370) lambda!230331)))

(assert (=> d!1532844 (= (lemmaHashNotInLongMapThenNotInGenerated!27 lt!1950370 key!5896 hashF!1559) lt!1950451)))

(declare-fun bs!1154526 () Bool)

(assert (= bs!1154526 d!1532844))

(assert (=> bs!1154526 m!5771392))

(assert (=> bs!1154526 m!5771392))

(assert (=> bs!1154526 m!5771394))

(declare-fun m!5771540 () Bool)

(assert (=> bs!1154526 m!5771540))

(declare-fun m!5771542 () Bool)

(assert (=> bs!1154526 m!5771542))

(assert (=> b!4791071 d!1532844))

(declare-fun b!4791161 () Bool)

(declare-fun e!2991495 () Bool)

(assert (=> b!4791161 (= e!2991495 (contains!17780 (keys!19771 (extractMap!2428 (toList!6881 lt!1950370))) key!5896))))

(declare-fun b!4791162 () Bool)

(declare-fun e!2991498 () Unit!139856)

(declare-fun e!2991496 () Unit!139856)

(assert (=> b!4791162 (= e!2991498 e!2991496)))

(declare-fun c!816630 () Bool)

(declare-fun call!335004 () Bool)

(assert (=> b!4791162 (= c!816630 call!335004)))

(declare-fun b!4791164 () Bool)

(declare-fun e!2991499 () Bool)

(assert (=> b!4791164 (= e!2991499 (not (contains!17780 (keys!19771 (extractMap!2428 (toList!6881 lt!1950370))) key!5896)))))

(declare-fun bm!334999 () Bool)

(declare-fun e!2991497 () List!54299)

(assert (=> bm!334999 (= call!335004 (contains!17780 e!2991497 key!5896))))

(declare-fun c!816629 () Bool)

(declare-fun c!816628 () Bool)

(assert (=> bm!334999 (= c!816629 c!816628)))

(declare-fun b!4791165 () Bool)

(declare-fun Unit!139865 () Unit!139856)

(assert (=> b!4791165 (= e!2991496 Unit!139865)))

(declare-fun b!4791166 () Bool)

(declare-fun e!2991500 () Bool)

(assert (=> b!4791166 (= e!2991500 e!2991495)))

(declare-fun res!2036170 () Bool)

(assert (=> b!4791166 (=> (not res!2036170) (not e!2991495))))

(assert (=> b!4791166 (= res!2036170 (isDefined!10208 (getValueByKey!2339 (toList!6882 (extractMap!2428 (toList!6881 lt!1950370))) key!5896)))))

(declare-fun b!4791167 () Bool)

(assert (=> b!4791167 (= e!2991497 (getKeysList!1070 (toList!6882 (extractMap!2428 (toList!6881 lt!1950370)))))))

(declare-fun d!1532850 () Bool)

(assert (=> d!1532850 e!2991500))

(declare-fun res!2036169 () Bool)

(assert (=> d!1532850 (=> res!2036169 e!2991500)))

(assert (=> d!1532850 (= res!2036169 e!2991499)))

(declare-fun res!2036171 () Bool)

(assert (=> d!1532850 (=> (not res!2036171) (not e!2991499))))

(declare-fun lt!1950452 () Bool)

(assert (=> d!1532850 (= res!2036171 (not lt!1950452))))

(declare-fun lt!1950457 () Bool)

(assert (=> d!1532850 (= lt!1950452 lt!1950457)))

(declare-fun lt!1950456 () Unit!139856)

(assert (=> d!1532850 (= lt!1950456 e!2991498)))

(assert (=> d!1532850 (= c!816628 lt!1950457)))

(assert (=> d!1532850 (= lt!1950457 (containsKey!3929 (toList!6882 (extractMap!2428 (toList!6881 lt!1950370))) key!5896))))

(assert (=> d!1532850 (= (contains!17776 (extractMap!2428 (toList!6881 lt!1950370)) key!5896) lt!1950452)))

(declare-fun b!4791163 () Bool)

(declare-fun lt!1950459 () Unit!139856)

(assert (=> b!4791163 (= e!2991498 lt!1950459)))

(declare-fun lt!1950453 () Unit!139856)

(assert (=> b!4791163 (= lt!1950453 (lemmaContainsKeyImpliesGetValueByKeyDefined!2131 (toList!6882 (extractMap!2428 (toList!6881 lt!1950370))) key!5896))))

(assert (=> b!4791163 (isDefined!10208 (getValueByKey!2339 (toList!6882 (extractMap!2428 (toList!6881 lt!1950370))) key!5896))))

(declare-fun lt!1950458 () Unit!139856)

(assert (=> b!4791163 (= lt!1950458 lt!1950453)))

(assert (=> b!4791163 (= lt!1950459 (lemmaInListThenGetKeysListContains!1065 (toList!6882 (extractMap!2428 (toList!6881 lt!1950370))) key!5896))))

(assert (=> b!4791163 call!335004))

(declare-fun b!4791168 () Bool)

(assert (=> b!4791168 false))

(declare-fun lt!1950455 () Unit!139856)

(declare-fun lt!1950454 () Unit!139856)

(assert (=> b!4791168 (= lt!1950455 lt!1950454)))

(assert (=> b!4791168 (containsKey!3929 (toList!6882 (extractMap!2428 (toList!6881 lt!1950370))) key!5896)))

(assert (=> b!4791168 (= lt!1950454 (lemmaInGetKeysListThenContainsKey!1070 (toList!6882 (extractMap!2428 (toList!6881 lt!1950370))) key!5896))))

(declare-fun Unit!139866 () Unit!139856)

(assert (=> b!4791168 (= e!2991496 Unit!139866)))

(declare-fun b!4791169 () Bool)

(assert (=> b!4791169 (= e!2991497 (keys!19771 (extractMap!2428 (toList!6881 lt!1950370))))))

(assert (= (and d!1532850 c!816628) b!4791163))

(assert (= (and d!1532850 (not c!816628)) b!4791162))

(assert (= (and b!4791162 c!816630) b!4791168))

(assert (= (and b!4791162 (not c!816630)) b!4791165))

(assert (= (or b!4791163 b!4791162) bm!334999))

(assert (= (and bm!334999 c!816629) b!4791167))

(assert (= (and bm!334999 (not c!816629)) b!4791169))

(assert (= (and d!1532850 res!2036171) b!4791164))

(assert (= (and d!1532850 (not res!2036169)) b!4791166))

(assert (= (and b!4791166 res!2036170) b!4791161))

(assert (=> b!4791164 m!5771392))

(declare-fun m!5771548 () Bool)

(assert (=> b!4791164 m!5771548))

(assert (=> b!4791164 m!5771548))

(declare-fun m!5771550 () Bool)

(assert (=> b!4791164 m!5771550))

(declare-fun m!5771552 () Bool)

(assert (=> b!4791163 m!5771552))

(declare-fun m!5771554 () Bool)

(assert (=> b!4791163 m!5771554))

(assert (=> b!4791163 m!5771554))

(declare-fun m!5771556 () Bool)

(assert (=> b!4791163 m!5771556))

(declare-fun m!5771558 () Bool)

(assert (=> b!4791163 m!5771558))

(declare-fun m!5771560 () Bool)

(assert (=> d!1532850 m!5771560))

(assert (=> b!4791169 m!5771392))

(assert (=> b!4791169 m!5771548))

(assert (=> b!4791166 m!5771554))

(assert (=> b!4791166 m!5771554))

(assert (=> b!4791166 m!5771556))

(assert (=> b!4791161 m!5771392))

(assert (=> b!4791161 m!5771548))

(assert (=> b!4791161 m!5771548))

(assert (=> b!4791161 m!5771550))

(declare-fun m!5771562 () Bool)

(assert (=> bm!334999 m!5771562))

(assert (=> b!4791168 m!5771560))

(declare-fun m!5771564 () Bool)

(assert (=> b!4791168 m!5771564))

(declare-fun m!5771566 () Bool)

(assert (=> b!4791167 m!5771566))

(assert (=> b!4791071 d!1532850))

(declare-fun bs!1154527 () Bool)

(declare-fun d!1532854 () Bool)

(assert (= bs!1154527 (and d!1532854 start!493216)))

(declare-fun lambda!230332 () Int)

(assert (=> bs!1154527 (= lambda!230332 lambda!230314)))

(declare-fun bs!1154529 () Bool)

(assert (= bs!1154529 (and d!1532854 d!1532838)))

(assert (=> bs!1154529 (= lambda!230332 lambda!230325)))

(declare-fun bs!1154530 () Bool)

(assert (= bs!1154530 (and d!1532854 d!1532844)))

(assert (=> bs!1154530 (= lambda!230332 lambda!230331)))

(declare-fun lt!1950460 () ListMap!6353)

(assert (=> d!1532854 (invariantList!1725 (toList!6882 lt!1950460))))

(declare-fun e!2991503 () ListMap!6353)

(assert (=> d!1532854 (= lt!1950460 e!2991503)))

(declare-fun c!816631 () Bool)

(assert (=> d!1532854 (= c!816631 (is-Cons!54172 (toList!6881 lt!1950370)))))

(assert (=> d!1532854 (forall!12226 (toList!6881 lt!1950370) lambda!230332)))

(assert (=> d!1532854 (= (extractMap!2428 (toList!6881 lt!1950370)) lt!1950460)))

(declare-fun b!4791172 () Bool)

(assert (=> b!4791172 (= e!2991503 (addToMapMapFromBucket!1696 (_2!31681 (h!60596 (toList!6881 lt!1950370))) (extractMap!2428 (t!361746 (toList!6881 lt!1950370)))))))

(declare-fun b!4791173 () Bool)

(assert (=> b!4791173 (= e!2991503 (ListMap!6354 Nil!54171))))

(assert (= (and d!1532854 c!816631) b!4791172))

(assert (= (and d!1532854 (not c!816631)) b!4791173))

(declare-fun m!5771572 () Bool)

(assert (=> d!1532854 m!5771572))

(declare-fun m!5771574 () Bool)

(assert (=> d!1532854 m!5771574))

(declare-fun m!5771576 () Bool)

(assert (=> b!4791172 m!5771576))

(assert (=> b!4791172 m!5771576))

(declare-fun m!5771578 () Bool)

(assert (=> b!4791172 m!5771578))

(assert (=> b!4791071 d!1532854))

(declare-fun d!1532858 () Bool)

(declare-fun res!2036178 () Bool)

(declare-fun e!2991508 () Bool)

(assert (=> d!1532858 (=> res!2036178 e!2991508)))

(assert (=> d!1532858 (= res!2036178 (is-Nil!54172 (toList!6881 lm!2473)))))

(assert (=> d!1532858 (= (forall!12226 (toList!6881 lm!2473) lambda!230314) e!2991508)))

(declare-fun b!4791178 () Bool)

(declare-fun e!2991509 () Bool)

(assert (=> b!4791178 (= e!2991508 e!2991509)))

(declare-fun res!2036179 () Bool)

(assert (=> b!4791178 (=> (not res!2036179) (not e!2991509))))

(declare-fun dynLambda!22051 (Int tuple2!56774) Bool)

(assert (=> b!4791178 (= res!2036179 (dynLambda!22051 lambda!230314 (h!60596 (toList!6881 lm!2473))))))

(declare-fun b!4791179 () Bool)

(assert (=> b!4791179 (= e!2991509 (forall!12226 (t!361746 (toList!6881 lm!2473)) lambda!230314))))

(assert (= (and d!1532858 (not res!2036178)) b!4791178))

(assert (= (and b!4791178 res!2036179) b!4791179))

(declare-fun b_lambda!186557 () Bool)

(assert (=> (not b_lambda!186557) (not b!4791178)))

(declare-fun m!5771580 () Bool)

(assert (=> b!4791178 m!5771580))

(assert (=> b!4791179 m!5771406))

(assert (=> start!493216 d!1532858))

(declare-fun d!1532860 () Bool)

(declare-fun isStrictlySorted!872 (List!54296) Bool)

(assert (=> d!1532860 (= (inv!69769 lm!2473) (isStrictlySorted!872 (toList!6881 lm!2473)))))

(declare-fun bs!1154531 () Bool)

(assert (= bs!1154531 d!1532860))

(declare-fun m!5771582 () Bool)

(assert (=> bs!1154531 m!5771582))

(assert (=> start!493216 d!1532860))

(declare-fun d!1532862 () Bool)

(declare-fun isEmpty!29438 (Option!13064) Bool)

(assert (=> d!1532862 (= (isDefined!10206 (getPair!873 (apply!12963 lm!2473 lt!1950372) key!5896)) (not (isEmpty!29438 (getPair!873 (apply!12963 lm!2473 lt!1950372) key!5896))))))

(declare-fun bs!1154532 () Bool)

(assert (= bs!1154532 d!1532862))

(assert (=> bs!1154532 m!5771422))

(declare-fun m!5771584 () Bool)

(assert (=> bs!1154532 m!5771584))

(assert (=> b!4791075 d!1532862))

(declare-fun b!4791196 () Bool)

(declare-fun e!2991520 () Option!13064)

(assert (=> b!4791196 (= e!2991520 None!13063)))

(declare-fun b!4791197 () Bool)

(assert (=> b!4791197 (= e!2991520 (getPair!873 (t!361745 (apply!12963 lm!2473 lt!1950372)) key!5896))))

(declare-fun b!4791198 () Bool)

(declare-fun e!2991524 () Option!13064)

(assert (=> b!4791198 (= e!2991524 e!2991520)))

(declare-fun c!816636 () Bool)

(assert (=> b!4791198 (= c!816636 (is-Cons!54171 (apply!12963 lm!2473 lt!1950372)))))

(declare-fun b!4791199 () Bool)

(declare-fun e!2991521 () Bool)

(declare-fun e!2991523 () Bool)

(assert (=> b!4791199 (= e!2991521 e!2991523)))

(declare-fun res!2036189 () Bool)

(assert (=> b!4791199 (=> (not res!2036189) (not e!2991523))))

(declare-fun lt!1950466 () Option!13064)

(assert (=> b!4791199 (= res!2036189 (isDefined!10206 lt!1950466))))

(declare-fun d!1532864 () Bool)

(assert (=> d!1532864 e!2991521))

(declare-fun res!2036191 () Bool)

(assert (=> d!1532864 (=> res!2036191 e!2991521)))

(declare-fun e!2991522 () Bool)

(assert (=> d!1532864 (= res!2036191 e!2991522)))

(declare-fun res!2036190 () Bool)

(assert (=> d!1532864 (=> (not res!2036190) (not e!2991522))))

(assert (=> d!1532864 (= res!2036190 (isEmpty!29438 lt!1950466))))

(assert (=> d!1532864 (= lt!1950466 e!2991524)))

(declare-fun c!816637 () Bool)

(assert (=> d!1532864 (= c!816637 (and (is-Cons!54171 (apply!12963 lm!2473 lt!1950372)) (= (_1!31680 (h!60595 (apply!12963 lm!2473 lt!1950372))) key!5896)))))

(declare-fun noDuplicateKeys!2326 (List!54295) Bool)

(assert (=> d!1532864 (noDuplicateKeys!2326 (apply!12963 lm!2473 lt!1950372))))

(assert (=> d!1532864 (= (getPair!873 (apply!12963 lm!2473 lt!1950372) key!5896) lt!1950466)))

(declare-fun b!4791200 () Bool)

(declare-fun contains!17782 (List!54295 tuple2!56772) Bool)

(declare-fun get!18457 (Option!13064) tuple2!56772)

(assert (=> b!4791200 (= e!2991523 (contains!17782 (apply!12963 lm!2473 lt!1950372) (get!18457 lt!1950466)))))

(declare-fun b!4791201 () Bool)

(assert (=> b!4791201 (= e!2991524 (Some!13063 (h!60595 (apply!12963 lm!2473 lt!1950372))))))

(declare-fun b!4791202 () Bool)

(assert (=> b!4791202 (= e!2991522 (not (containsKey!3927 (apply!12963 lm!2473 lt!1950372) key!5896)))))

(declare-fun b!4791203 () Bool)

(declare-fun res!2036188 () Bool)

(assert (=> b!4791203 (=> (not res!2036188) (not e!2991523))))

(assert (=> b!4791203 (= res!2036188 (= (_1!31680 (get!18457 lt!1950466)) key!5896))))

(assert (= (and d!1532864 c!816637) b!4791201))

(assert (= (and d!1532864 (not c!816637)) b!4791198))

(assert (= (and b!4791198 c!816636) b!4791197))

(assert (= (and b!4791198 (not c!816636)) b!4791196))

(assert (= (and d!1532864 res!2036190) b!4791202))

(assert (= (and d!1532864 (not res!2036191)) b!4791199))

(assert (= (and b!4791199 res!2036189) b!4791203))

(assert (= (and b!4791203 res!2036188) b!4791200))

(declare-fun m!5771592 () Bool)

(assert (=> b!4791197 m!5771592))

(assert (=> b!4791202 m!5771420))

(declare-fun m!5771594 () Bool)

(assert (=> b!4791202 m!5771594))

(declare-fun m!5771596 () Bool)

(assert (=> d!1532864 m!5771596))

(assert (=> d!1532864 m!5771420))

(declare-fun m!5771598 () Bool)

(assert (=> d!1532864 m!5771598))

(declare-fun m!5771600 () Bool)

(assert (=> b!4791203 m!5771600))

(assert (=> b!4791200 m!5771600))

(assert (=> b!4791200 m!5771420))

(assert (=> b!4791200 m!5771600))

(declare-fun m!5771602 () Bool)

(assert (=> b!4791200 m!5771602))

(declare-fun m!5771604 () Bool)

(assert (=> b!4791199 m!5771604))

(assert (=> b!4791075 d!1532864))

(declare-fun d!1532868 () Bool)

(declare-datatypes ((Option!13069 0))(
  ( (None!13068) (Some!13068 (v!48347 List!54295)) )
))
(declare-fun get!18458 (Option!13069) List!54295)

(declare-fun getValueByKey!2342 (List!54296 (_ BitVec 64)) Option!13069)

(assert (=> d!1532868 (= (apply!12963 lm!2473 lt!1950372) (get!18458 (getValueByKey!2342 (toList!6881 lm!2473) lt!1950372)))))

(declare-fun bs!1154537 () Bool)

(assert (= bs!1154537 d!1532868))

(declare-fun m!5771606 () Bool)

(assert (=> bs!1154537 m!5771606))

(assert (=> bs!1154537 m!5771606))

(declare-fun m!5771608 () Bool)

(assert (=> bs!1154537 m!5771608))

(assert (=> b!4791075 d!1532868))

(declare-fun bs!1154538 () Bool)

(declare-fun d!1532870 () Bool)

(assert (= bs!1154538 (and d!1532870 start!493216)))

(declare-fun lambda!230338 () Int)

(assert (=> bs!1154538 (= lambda!230338 lambda!230314)))

(declare-fun bs!1154539 () Bool)

(assert (= bs!1154539 (and d!1532870 d!1532838)))

(assert (=> bs!1154539 (= lambda!230338 lambda!230325)))

(declare-fun bs!1154540 () Bool)

(assert (= bs!1154540 (and d!1532870 d!1532844)))

(assert (=> bs!1154540 (= lambda!230338 lambda!230331)))

(declare-fun bs!1154541 () Bool)

(assert (= bs!1154541 (and d!1532870 d!1532854)))

(assert (=> bs!1154541 (= lambda!230338 lambda!230332)))

(assert (=> d!1532870 (contains!17776 (extractMap!2428 (toList!6881 lt!1950370)) key!5896)))

(declare-fun lt!1950485 () Unit!139856)

(declare-fun choose!34489 (ListLongMap!5303 K!15742 Hashable!6901) Unit!139856)

(assert (=> d!1532870 (= lt!1950485 (choose!34489 lt!1950370 key!5896 hashF!1559))))

(assert (=> d!1532870 (forall!12226 (toList!6881 lt!1950370) lambda!230338)))

(assert (=> d!1532870 (= (lemmaListContainsThenExtractedMapContains!701 lt!1950370 key!5896 hashF!1559) lt!1950485)))

(declare-fun bs!1154542 () Bool)

(assert (= bs!1154542 d!1532870))

(assert (=> bs!1154542 m!5771392))

(assert (=> bs!1154542 m!5771392))

(assert (=> bs!1154542 m!5771394))

(declare-fun m!5771610 () Bool)

(assert (=> bs!1154542 m!5771610))

(declare-fun m!5771612 () Bool)

(assert (=> bs!1154542 m!5771612))

(assert (=> b!4791070 d!1532870))

(declare-fun d!1532872 () Bool)

(declare-fun get!18459 (Option!13066) V!15988)

(assert (=> d!1532872 (= (apply!12962 lt!1950371 key!5896) (get!18459 (getValueByKey!2339 (toList!6882 lt!1950371) key!5896)))))

(declare-fun bs!1154543 () Bool)

(assert (= bs!1154543 d!1532872))

(declare-fun m!5771614 () Bool)

(assert (=> bs!1154543 m!5771614))

(assert (=> bs!1154543 m!5771614))

(declare-fun m!5771616 () Bool)

(assert (=> bs!1154543 m!5771616))

(assert (=> b!4791070 d!1532872))

(assert (=> b!4791070 d!1532854))

(declare-fun d!1532874 () Bool)

(declare-fun tail!9257 (List!54296) List!54296)

(assert (=> d!1532874 (= (tail!9254 lm!2473) (ListLongMap!5304 (tail!9257 (toList!6881 lm!2473))))))

(declare-fun bs!1154544 () Bool)

(assert (= bs!1154544 d!1532874))

(declare-fun m!5771618 () Bool)

(assert (=> bs!1154544 m!5771618))

(assert (=> b!4791070 d!1532874))

(declare-fun bs!1154546 () Bool)

(declare-fun d!1532876 () Bool)

(assert (= bs!1154546 (and d!1532876 d!1532844)))

(declare-fun lambda!230341 () Int)

(assert (=> bs!1154546 (= lambda!230341 lambda!230331)))

(declare-fun bs!1154547 () Bool)

(assert (= bs!1154547 (and d!1532876 d!1532870)))

(assert (=> bs!1154547 (= lambda!230341 lambda!230338)))

(declare-fun bs!1154548 () Bool)

(assert (= bs!1154548 (and d!1532876 d!1532838)))

(assert (=> bs!1154548 (= lambda!230341 lambda!230325)))

(declare-fun bs!1154549 () Bool)

(assert (= bs!1154549 (and d!1532876 d!1532854)))

(assert (=> bs!1154549 (= lambda!230341 lambda!230332)))

(declare-fun bs!1154550 () Bool)

(assert (= bs!1154550 (and d!1532876 start!493216)))

(assert (=> bs!1154550 (= lambda!230341 lambda!230314)))

(assert (=> d!1532876 (= (apply!12962 (extractMap!2428 (toList!6881 lt!1950370)) key!5896) value!3111)))

(declare-fun lt!1950499 () Unit!139856)

(declare-fun choose!34490 (ListLongMap!5303 K!15742 V!15988 Hashable!6901) Unit!139856)

(assert (=> d!1532876 (= lt!1950499 (choose!34490 lt!1950370 key!5896 value!3111 hashF!1559))))

(assert (=> d!1532876 (forall!12226 (toList!6881 lt!1950370) lambda!230341)))

(assert (=> d!1532876 (= (lemmaExtractMapPreservesMapping!33 lt!1950370 key!5896 value!3111 hashF!1559) lt!1950499)))

(declare-fun bs!1154551 () Bool)

(assert (= bs!1154551 d!1532876))

(assert (=> bs!1154551 m!5771392))

(assert (=> bs!1154551 m!5771392))

(declare-fun m!5771654 () Bool)

(assert (=> bs!1154551 m!5771654))

(declare-fun m!5771656 () Bool)

(assert (=> bs!1154551 m!5771656))

(declare-fun m!5771658 () Bool)

(assert (=> bs!1154551 m!5771658))

(assert (=> b!4791070 d!1532876))

(declare-fun b!4791255 () Bool)

(declare-fun e!2991558 () Bool)

(assert (=> b!4791255 (= e!2991558 (contains!17780 (keys!19771 lt!1950371) key!5896))))

(declare-fun b!4791256 () Bool)

(declare-fun e!2991561 () Unit!139856)

(declare-fun e!2991559 () Unit!139856)

(assert (=> b!4791256 (= e!2991561 e!2991559)))

(declare-fun c!816655 () Bool)

(declare-fun call!335008 () Bool)

(assert (=> b!4791256 (= c!816655 call!335008)))

(declare-fun b!4791258 () Bool)

(declare-fun e!2991562 () Bool)

(assert (=> b!4791258 (= e!2991562 (not (contains!17780 (keys!19771 lt!1950371) key!5896)))))

(declare-fun bm!335003 () Bool)

(declare-fun e!2991560 () List!54299)

(assert (=> bm!335003 (= call!335008 (contains!17780 e!2991560 key!5896))))

(declare-fun c!816654 () Bool)

(declare-fun c!816653 () Bool)

(assert (=> bm!335003 (= c!816654 c!816653)))

(declare-fun b!4791259 () Bool)

(declare-fun Unit!139869 () Unit!139856)

(assert (=> b!4791259 (= e!2991559 Unit!139869)))

(declare-fun b!4791260 () Bool)

(declare-fun e!2991563 () Bool)

(assert (=> b!4791260 (= e!2991563 e!2991558)))

(declare-fun res!2036214 () Bool)

(assert (=> b!4791260 (=> (not res!2036214) (not e!2991558))))

(assert (=> b!4791260 (= res!2036214 (isDefined!10208 (getValueByKey!2339 (toList!6882 lt!1950371) key!5896)))))

(declare-fun b!4791261 () Bool)

(assert (=> b!4791261 (= e!2991560 (getKeysList!1070 (toList!6882 lt!1950371)))))

(declare-fun d!1532884 () Bool)

(assert (=> d!1532884 e!2991563))

(declare-fun res!2036213 () Bool)

(assert (=> d!1532884 (=> res!2036213 e!2991563)))

(assert (=> d!1532884 (= res!2036213 e!2991562)))

(declare-fun res!2036215 () Bool)

(assert (=> d!1532884 (=> (not res!2036215) (not e!2991562))))

(declare-fun lt!1950500 () Bool)

(assert (=> d!1532884 (= res!2036215 (not lt!1950500))))

(declare-fun lt!1950505 () Bool)

(assert (=> d!1532884 (= lt!1950500 lt!1950505)))

(declare-fun lt!1950504 () Unit!139856)

(assert (=> d!1532884 (= lt!1950504 e!2991561)))

(assert (=> d!1532884 (= c!816653 lt!1950505)))

(assert (=> d!1532884 (= lt!1950505 (containsKey!3929 (toList!6882 lt!1950371) key!5896))))

(assert (=> d!1532884 (= (contains!17776 lt!1950371 key!5896) lt!1950500)))

(declare-fun b!4791257 () Bool)

(declare-fun lt!1950507 () Unit!139856)

(assert (=> b!4791257 (= e!2991561 lt!1950507)))

(declare-fun lt!1950501 () Unit!139856)

(assert (=> b!4791257 (= lt!1950501 (lemmaContainsKeyImpliesGetValueByKeyDefined!2131 (toList!6882 lt!1950371) key!5896))))

(assert (=> b!4791257 (isDefined!10208 (getValueByKey!2339 (toList!6882 lt!1950371) key!5896))))

(declare-fun lt!1950506 () Unit!139856)

(assert (=> b!4791257 (= lt!1950506 lt!1950501)))

(assert (=> b!4791257 (= lt!1950507 (lemmaInListThenGetKeysListContains!1065 (toList!6882 lt!1950371) key!5896))))

(assert (=> b!4791257 call!335008))

(declare-fun b!4791262 () Bool)

(assert (=> b!4791262 false))

(declare-fun lt!1950503 () Unit!139856)

(declare-fun lt!1950502 () Unit!139856)

(assert (=> b!4791262 (= lt!1950503 lt!1950502)))

(assert (=> b!4791262 (containsKey!3929 (toList!6882 lt!1950371) key!5896)))

(assert (=> b!4791262 (= lt!1950502 (lemmaInGetKeysListThenContainsKey!1070 (toList!6882 lt!1950371) key!5896))))

(declare-fun Unit!139870 () Unit!139856)

(assert (=> b!4791262 (= e!2991559 Unit!139870)))

(declare-fun b!4791263 () Bool)

(assert (=> b!4791263 (= e!2991560 (keys!19771 lt!1950371))))

(assert (= (and d!1532884 c!816653) b!4791257))

(assert (= (and d!1532884 (not c!816653)) b!4791256))

(assert (= (and b!4791256 c!816655) b!4791262))

(assert (= (and b!4791256 (not c!816655)) b!4791259))

(assert (= (or b!4791257 b!4791256) bm!335003))

(assert (= (and bm!335003 c!816654) b!4791261))

(assert (= (and bm!335003 (not c!816654)) b!4791263))

(assert (= (and d!1532884 res!2036215) b!4791258))

(assert (= (and d!1532884 (not res!2036213)) b!4791260))

(assert (= (and b!4791260 res!2036214) b!4791255))

(declare-fun m!5771664 () Bool)

(assert (=> b!4791258 m!5771664))

(assert (=> b!4791258 m!5771664))

(declare-fun m!5771666 () Bool)

(assert (=> b!4791258 m!5771666))

(declare-fun m!5771668 () Bool)

(assert (=> b!4791257 m!5771668))

(assert (=> b!4791257 m!5771614))

(assert (=> b!4791257 m!5771614))

(declare-fun m!5771670 () Bool)

(assert (=> b!4791257 m!5771670))

(declare-fun m!5771672 () Bool)

(assert (=> b!4791257 m!5771672))

(declare-fun m!5771674 () Bool)

(assert (=> d!1532884 m!5771674))

(assert (=> b!4791263 m!5771664))

(assert (=> b!4791260 m!5771614))

(assert (=> b!4791260 m!5771614))

(assert (=> b!4791260 m!5771670))

(assert (=> b!4791255 m!5771664))

(assert (=> b!4791255 m!5771664))

(assert (=> b!4791255 m!5771666))

(declare-fun m!5771676 () Bool)

(assert (=> bm!335003 m!5771676))

(assert (=> b!4791262 m!5771674))

(declare-fun m!5771678 () Bool)

(assert (=> b!4791262 m!5771678))

(declare-fun m!5771680 () Bool)

(assert (=> b!4791261 m!5771680))

(assert (=> b!4791070 d!1532884))

(declare-fun d!1532888 () Bool)

(declare-fun res!2036216 () Bool)

(declare-fun e!2991564 () Bool)

(assert (=> d!1532888 (=> res!2036216 e!2991564)))

(assert (=> d!1532888 (= res!2036216 (is-Nil!54172 (t!361746 (toList!6881 lm!2473))))))

(assert (=> d!1532888 (= (forall!12226 (t!361746 (toList!6881 lm!2473)) lambda!230314) e!2991564)))

(declare-fun b!4791264 () Bool)

(declare-fun e!2991565 () Bool)

(assert (=> b!4791264 (= e!2991564 e!2991565)))

(declare-fun res!2036217 () Bool)

(assert (=> b!4791264 (=> (not res!2036217) (not e!2991565))))

(assert (=> b!4791264 (= res!2036217 (dynLambda!22051 lambda!230314 (h!60596 (t!361746 (toList!6881 lm!2473)))))))

(declare-fun b!4791265 () Bool)

(assert (=> b!4791265 (= e!2991565 (forall!12226 (t!361746 (t!361746 (toList!6881 lm!2473))) lambda!230314))))

(assert (= (and d!1532888 (not res!2036216)) b!4791264))

(assert (= (and b!4791264 res!2036217) b!4791265))

(declare-fun b_lambda!186559 () Bool)

(assert (=> (not b_lambda!186559) (not b!4791264)))

(declare-fun m!5771682 () Bool)

(assert (=> b!4791264 m!5771682))

(declare-fun m!5771684 () Bool)

(assert (=> b!4791265 m!5771684))

(assert (=> b!4791070 d!1532888))

(declare-fun d!1532890 () Bool)

(declare-fun e!2991578 () Bool)

(assert (=> d!1532890 e!2991578))

(declare-fun res!2036227 () Bool)

(assert (=> d!1532890 (=> res!2036227 e!2991578)))

(declare-fun lt!1950523 () Bool)

(assert (=> d!1532890 (= res!2036227 (not lt!1950523))))

(declare-fun lt!1950521 () Bool)

(assert (=> d!1532890 (= lt!1950523 lt!1950521)))

(declare-fun lt!1950522 () Unit!139856)

(declare-fun e!2991579 () Unit!139856)

(assert (=> d!1532890 (= lt!1950522 e!2991579)))

(declare-fun c!816659 () Bool)

(assert (=> d!1532890 (= c!816659 lt!1950521)))

(declare-fun containsKey!3932 (List!54296 (_ BitVec 64)) Bool)

(assert (=> d!1532890 (= lt!1950521 (containsKey!3932 (toList!6881 lt!1950370) lt!1950372))))

(assert (=> d!1532890 (= (contains!17777 lt!1950370 lt!1950372) lt!1950523)))

(declare-fun b!4791283 () Bool)

(declare-fun lt!1950520 () Unit!139856)

(assert (=> b!4791283 (= e!2991579 lt!1950520)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2134 (List!54296 (_ BitVec 64)) Unit!139856)

(assert (=> b!4791283 (= lt!1950520 (lemmaContainsKeyImpliesGetValueByKeyDefined!2134 (toList!6881 lt!1950370) lt!1950372))))

(declare-fun isDefined!10211 (Option!13069) Bool)

(assert (=> b!4791283 (isDefined!10211 (getValueByKey!2342 (toList!6881 lt!1950370) lt!1950372))))

(declare-fun b!4791284 () Bool)

(declare-fun Unit!139871 () Unit!139856)

(assert (=> b!4791284 (= e!2991579 Unit!139871)))

(declare-fun b!4791285 () Bool)

(assert (=> b!4791285 (= e!2991578 (isDefined!10211 (getValueByKey!2342 (toList!6881 lt!1950370) lt!1950372)))))

(assert (= (and d!1532890 c!816659) b!4791283))

(assert (= (and d!1532890 (not c!816659)) b!4791284))

(assert (= (and d!1532890 (not res!2036227)) b!4791285))

(declare-fun m!5771696 () Bool)

(assert (=> d!1532890 m!5771696))

(declare-fun m!5771698 () Bool)

(assert (=> b!4791283 m!5771698))

(declare-fun m!5771700 () Bool)

(assert (=> b!4791283 m!5771700))

(assert (=> b!4791283 m!5771700))

(declare-fun m!5771702 () Bool)

(assert (=> b!4791283 m!5771702))

(assert (=> b!4791285 m!5771700))

(assert (=> b!4791285 m!5771700))

(assert (=> b!4791285 m!5771702))

(assert (=> b!4791070 d!1532890))

(declare-fun d!1532898 () Bool)

(declare-fun e!2991586 () Bool)

(assert (=> d!1532898 e!2991586))

(declare-fun res!2036234 () Bool)

(assert (=> d!1532898 (=> res!2036234 e!2991586)))

(declare-fun lt!1950527 () Bool)

(assert (=> d!1532898 (= res!2036234 (not lt!1950527))))

(declare-fun lt!1950525 () Bool)

(assert (=> d!1532898 (= lt!1950527 lt!1950525)))

(declare-fun lt!1950526 () Unit!139856)

(declare-fun e!2991587 () Unit!139856)

(assert (=> d!1532898 (= lt!1950526 e!2991587)))

(declare-fun c!816660 () Bool)

(assert (=> d!1532898 (= c!816660 lt!1950525)))

(assert (=> d!1532898 (= lt!1950525 (containsKey!3932 (toList!6881 lm!2473) lt!1950372))))

(assert (=> d!1532898 (= (contains!17777 lm!2473 lt!1950372) lt!1950527)))

(declare-fun b!4791292 () Bool)

(declare-fun lt!1950524 () Unit!139856)

(assert (=> b!4791292 (= e!2991587 lt!1950524)))

(assert (=> b!4791292 (= lt!1950524 (lemmaContainsKeyImpliesGetValueByKeyDefined!2134 (toList!6881 lm!2473) lt!1950372))))

(assert (=> b!4791292 (isDefined!10211 (getValueByKey!2342 (toList!6881 lm!2473) lt!1950372))))

(declare-fun b!4791293 () Bool)

(declare-fun Unit!139872 () Unit!139856)

(assert (=> b!4791293 (= e!2991587 Unit!139872)))

(declare-fun b!4791294 () Bool)

(assert (=> b!4791294 (= e!2991586 (isDefined!10211 (getValueByKey!2342 (toList!6881 lm!2473) lt!1950372)))))

(assert (= (and d!1532898 c!816660) b!4791292))

(assert (= (and d!1532898 (not c!816660)) b!4791293))

(assert (= (and d!1532898 (not res!2036234)) b!4791294))

(declare-fun m!5771704 () Bool)

(assert (=> d!1532898 m!5771704))

(declare-fun m!5771706 () Bool)

(assert (=> b!4791292 m!5771706))

(assert (=> b!4791292 m!5771606))

(assert (=> b!4791292 m!5771606))

(declare-fun m!5771708 () Bool)

(assert (=> b!4791292 m!5771708))

(assert (=> b!4791294 m!5771606))

(assert (=> b!4791294 m!5771606))

(assert (=> b!4791294 m!5771708))

(assert (=> b!4791073 d!1532898))

(declare-fun d!1532900 () Bool)

(declare-fun res!2036245 () Bool)

(declare-fun e!2991598 () Bool)

(assert (=> d!1532900 (=> res!2036245 e!2991598)))

(declare-fun e!2991597 () Bool)

(assert (=> d!1532900 (= res!2036245 e!2991597)))

(declare-fun res!2036246 () Bool)

(assert (=> d!1532900 (=> (not res!2036246) (not e!2991597))))

(assert (=> d!1532900 (= res!2036246 (is-Cons!54172 (toList!6881 lm!2473)))))

(assert (=> d!1532900 (= (containsKeyBiggerList!551 (toList!6881 lm!2473) key!5896) e!2991598)))

(declare-fun b!4791304 () Bool)

(assert (=> b!4791304 (= e!2991597 (containsKey!3927 (_2!31681 (h!60596 (toList!6881 lm!2473))) key!5896))))

(declare-fun b!4791305 () Bool)

(declare-fun e!2991599 () Bool)

(assert (=> b!4791305 (= e!2991598 e!2991599)))

(declare-fun res!2036244 () Bool)

(assert (=> b!4791305 (=> (not res!2036244) (not e!2991599))))

(assert (=> b!4791305 (= res!2036244 (is-Cons!54172 (toList!6881 lm!2473)))))

(declare-fun b!4791306 () Bool)

(assert (=> b!4791306 (= e!2991599 (containsKeyBiggerList!551 (t!361746 (toList!6881 lm!2473)) key!5896))))

(assert (= (and d!1532900 res!2036246) b!4791304))

(assert (= (and d!1532900 (not res!2036245)) b!4791305))

(assert (= (and b!4791305 res!2036244) b!4791306))

(assert (=> b!4791304 m!5771426))

(declare-fun m!5771712 () Bool)

(assert (=> b!4791306 m!5771712))

(assert (=> b!4791073 d!1532900))

(declare-fun bs!1154564 () Bool)

(declare-fun d!1532904 () Bool)

(assert (= bs!1154564 (and d!1532904 d!1532844)))

(declare-fun lambda!230350 () Int)

(assert (=> bs!1154564 (= lambda!230350 lambda!230331)))

(declare-fun bs!1154565 () Bool)

(assert (= bs!1154565 (and d!1532904 d!1532870)))

(assert (=> bs!1154565 (= lambda!230350 lambda!230338)))

(declare-fun bs!1154566 () Bool)

(assert (= bs!1154566 (and d!1532904 d!1532838)))

(assert (=> bs!1154566 (= lambda!230350 lambda!230325)))

(declare-fun bs!1154567 () Bool)

(assert (= bs!1154567 (and d!1532904 d!1532876)))

(assert (=> bs!1154567 (= lambda!230350 lambda!230341)))

(declare-fun bs!1154568 () Bool)

(assert (= bs!1154568 (and d!1532904 d!1532854)))

(assert (=> bs!1154568 (= lambda!230350 lambda!230332)))

(declare-fun bs!1154569 () Bool)

(assert (= bs!1154569 (and d!1532904 start!493216)))

(assert (=> bs!1154569 (= lambda!230350 lambda!230314)))

(assert (=> d!1532904 (containsKeyBiggerList!551 (toList!6881 lm!2473) key!5896)))

(declare-fun lt!1950533 () Unit!139856)

(declare-fun choose!34491 (ListLongMap!5303 K!15742 Hashable!6901) Unit!139856)

(assert (=> d!1532904 (= lt!1950533 (choose!34491 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1532904 (forall!12226 (toList!6881 lm!2473) lambda!230350)))

(assert (=> d!1532904 (= (lemmaInLongMapThenContainsKeyBiggerList!291 lm!2473 key!5896 hashF!1559) lt!1950533)))

(declare-fun bs!1154570 () Bool)

(assert (= bs!1154570 d!1532904))

(assert (=> bs!1154570 m!5771428))

(declare-fun m!5771718 () Bool)

(assert (=> bs!1154570 m!5771718))

(declare-fun m!5771720 () Bool)

(assert (=> bs!1154570 m!5771720))

(assert (=> b!4791073 d!1532904))

(declare-fun bs!1154577 () Bool)

(declare-fun d!1532908 () Bool)

(assert (= bs!1154577 (and d!1532908 d!1532844)))

(declare-fun lambda!230356 () Int)

(assert (=> bs!1154577 (= lambda!230356 lambda!230331)))

(declare-fun bs!1154578 () Bool)

(assert (= bs!1154578 (and d!1532908 d!1532870)))

(assert (=> bs!1154578 (= lambda!230356 lambda!230338)))

(declare-fun bs!1154579 () Bool)

(assert (= bs!1154579 (and d!1532908 d!1532838)))

(assert (=> bs!1154579 (= lambda!230356 lambda!230325)))

(declare-fun bs!1154580 () Bool)

(assert (= bs!1154580 (and d!1532908 d!1532904)))

(assert (=> bs!1154580 (= lambda!230356 lambda!230350)))

(declare-fun bs!1154581 () Bool)

(assert (= bs!1154581 (and d!1532908 d!1532876)))

(assert (=> bs!1154581 (= lambda!230356 lambda!230341)))

(declare-fun bs!1154582 () Bool)

(assert (= bs!1154582 (and d!1532908 d!1532854)))

(assert (=> bs!1154582 (= lambda!230356 lambda!230332)))

(declare-fun bs!1154583 () Bool)

(assert (= bs!1154583 (and d!1532908 start!493216)))

(assert (=> bs!1154583 (= lambda!230356 lambda!230314)))

(declare-fun e!2991605 () Bool)

(assert (=> d!1532908 e!2991605))

(declare-fun res!2036252 () Bool)

(assert (=> d!1532908 (=> (not res!2036252) (not e!2991605))))

(assert (=> d!1532908 (= res!2036252 (contains!17777 lm!2473 (hash!4931 hashF!1559 key!5896)))))

(declare-fun lt!1950539 () Unit!139856)

(declare-fun choose!34493 (ListLongMap!5303 K!15742 Hashable!6901) Unit!139856)

(assert (=> d!1532908 (= lt!1950539 (choose!34493 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1532908 (forall!12226 (toList!6881 lm!2473) lambda!230356)))

(assert (=> d!1532908 (= (lemmaInGenericMapThenInLongMap!305 lm!2473 key!5896 hashF!1559) lt!1950539)))

(declare-fun b!4791312 () Bool)

(assert (=> b!4791312 (= e!2991605 (isDefined!10206 (getPair!873 (apply!12963 lm!2473 (hash!4931 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1532908 res!2036252) b!4791312))

(assert (=> d!1532908 m!5771432))

(assert (=> d!1532908 m!5771432))

(declare-fun m!5771734 () Bool)

(assert (=> d!1532908 m!5771734))

(declare-fun m!5771736 () Bool)

(assert (=> d!1532908 m!5771736))

(declare-fun m!5771738 () Bool)

(assert (=> d!1532908 m!5771738))

(assert (=> b!4791312 m!5771432))

(assert (=> b!4791312 m!5771432))

(declare-fun m!5771740 () Bool)

(assert (=> b!4791312 m!5771740))

(assert (=> b!4791312 m!5771740))

(declare-fun m!5771742 () Bool)

(assert (=> b!4791312 m!5771742))

(assert (=> b!4791312 m!5771742))

(declare-fun m!5771744 () Bool)

(assert (=> b!4791312 m!5771744))

(assert (=> b!4791073 d!1532908))

(declare-fun d!1532912 () Bool)

(declare-fun c!816669 () Bool)

(declare-fun e!2991623 () Bool)

(assert (=> d!1532912 (= c!816669 e!2991623)))

(declare-fun res!2036261 () Bool)

(assert (=> d!1532912 (=> (not res!2036261) (not e!2991623))))

(assert (=> d!1532912 (= res!2036261 (is-Cons!54172 (toList!6881 lm!2473)))))

(declare-fun e!2991622 () V!15988)

(assert (=> d!1532912 (= (getValue!97 (toList!6881 lm!2473) key!5896) e!2991622)))

(declare-fun b!4791339 () Bool)

(assert (=> b!4791339 (= e!2991623 (containsKey!3927 (_2!31681 (h!60596 (toList!6881 lm!2473))) key!5896))))

(declare-fun b!4791337 () Bool)

(assert (=> b!4791337 (= e!2991622 (_2!31680 (get!18457 (getPair!873 (_2!31681 (h!60596 (toList!6881 lm!2473))) key!5896))))))

(declare-fun b!4791338 () Bool)

(assert (=> b!4791338 (= e!2991622 (getValue!97 (t!361746 (toList!6881 lm!2473)) key!5896))))

(assert (= (and d!1532912 res!2036261) b!4791339))

(assert (= (and d!1532912 c!816669) b!4791337))

(assert (= (and d!1532912 (not c!816669)) b!4791338))

(assert (=> b!4791339 m!5771426))

(declare-fun m!5771774 () Bool)

(assert (=> b!4791337 m!5771774))

(assert (=> b!4791337 m!5771774))

(declare-fun m!5771776 () Bool)

(assert (=> b!4791337 m!5771776))

(declare-fun m!5771778 () Bool)

(assert (=> b!4791338 m!5771778))

(assert (=> b!4791073 d!1532912))

(declare-fun d!1532920 () Bool)

(declare-fun hash!4933 (Hashable!6901 K!15742) (_ BitVec 64))

(assert (=> d!1532920 (= (hash!4931 hashF!1559 key!5896) (hash!4933 hashF!1559 key!5896))))

(declare-fun bs!1154592 () Bool)

(assert (= bs!1154592 d!1532920))

(declare-fun m!5771780 () Bool)

(assert (=> bs!1154592 m!5771780))

(assert (=> b!4791073 d!1532920))

(declare-fun d!1532922 () Bool)

(declare-fun res!2036268 () Bool)

(declare-fun e!2991631 () Bool)

(assert (=> d!1532922 (=> res!2036268 e!2991631)))

(assert (=> d!1532922 (= res!2036268 (and (is-Cons!54171 (_2!31681 (h!60596 (toList!6881 lm!2473)))) (= (_1!31680 (h!60595 (_2!31681 (h!60596 (toList!6881 lm!2473))))) key!5896)))))

(assert (=> d!1532922 (= (containsKey!3927 (_2!31681 (h!60596 (toList!6881 lm!2473))) key!5896) e!2991631)))

(declare-fun b!4791348 () Bool)

(declare-fun e!2991632 () Bool)

(assert (=> b!4791348 (= e!2991631 e!2991632)))

(declare-fun res!2036269 () Bool)

(assert (=> b!4791348 (=> (not res!2036269) (not e!2991632))))

(assert (=> b!4791348 (= res!2036269 (is-Cons!54171 (_2!31681 (h!60596 (toList!6881 lm!2473)))))))

(declare-fun b!4791349 () Bool)

(assert (=> b!4791349 (= e!2991632 (containsKey!3927 (t!361745 (_2!31681 (h!60596 (toList!6881 lm!2473)))) key!5896))))

(assert (= (and d!1532922 (not res!2036268)) b!4791348))

(assert (= (and b!4791348 res!2036269) b!4791349))

(declare-fun m!5771794 () Bool)

(assert (=> b!4791349 m!5771794))

(assert (=> b!4791074 d!1532922))

(declare-fun bs!1154594 () Bool)

(declare-fun d!1532930 () Bool)

(assert (= bs!1154594 (and d!1532930 d!1532844)))

(declare-fun lambda!230360 () Int)

(assert (=> bs!1154594 (not (= lambda!230360 lambda!230331))))

(declare-fun bs!1154595 () Bool)

(assert (= bs!1154595 (and d!1532930 d!1532870)))

(assert (=> bs!1154595 (not (= lambda!230360 lambda!230338))))

(declare-fun bs!1154596 () Bool)

(assert (= bs!1154596 (and d!1532930 d!1532838)))

(assert (=> bs!1154596 (not (= lambda!230360 lambda!230325))))

(declare-fun bs!1154597 () Bool)

(assert (= bs!1154597 (and d!1532930 d!1532908)))

(assert (=> bs!1154597 (not (= lambda!230360 lambda!230356))))

(declare-fun bs!1154598 () Bool)

(assert (= bs!1154598 (and d!1532930 d!1532904)))

(assert (=> bs!1154598 (not (= lambda!230360 lambda!230350))))

(declare-fun bs!1154599 () Bool)

(assert (= bs!1154599 (and d!1532930 d!1532876)))

(assert (=> bs!1154599 (not (= lambda!230360 lambda!230341))))

(declare-fun bs!1154600 () Bool)

(assert (= bs!1154600 (and d!1532930 d!1532854)))

(assert (=> bs!1154600 (not (= lambda!230360 lambda!230332))))

(declare-fun bs!1154601 () Bool)

(assert (= bs!1154601 (and d!1532930 start!493216)))

(assert (=> bs!1154601 (not (= lambda!230360 lambda!230314))))

(assert (=> d!1532930 true))

(assert (=> d!1532930 (= (allKeysSameHashInMap!2306 lm!2473 hashF!1559) (forall!12226 (toList!6881 lm!2473) lambda!230360))))

(declare-fun bs!1154602 () Bool)

(assert (= bs!1154602 d!1532930))

(declare-fun m!5771796 () Bool)

(assert (=> bs!1154602 m!5771796))

(assert (=> b!4791077 d!1532930))

(declare-fun b!4791356 () Bool)

(declare-fun e!2991635 () Bool)

(declare-fun tp!1357929 () Bool)

(declare-fun tp!1357930 () Bool)

(assert (=> b!4791356 (= e!2991635 (and tp!1357929 tp!1357930))))

(assert (=> b!4791072 (= tp!1357921 e!2991635)))

(assert (= (and b!4791072 (is-Cons!54172 (toList!6881 lm!2473))) b!4791356))

(declare-fun b_lambda!186563 () Bool)

(assert (= b_lambda!186559 (or start!493216 b_lambda!186563)))

(declare-fun bs!1154603 () Bool)

(declare-fun d!1532932 () Bool)

(assert (= bs!1154603 (and d!1532932 start!493216)))

(assert (=> bs!1154603 (= (dynLambda!22051 lambda!230314 (h!60596 (t!361746 (toList!6881 lm!2473)))) (noDuplicateKeys!2326 (_2!31681 (h!60596 (t!361746 (toList!6881 lm!2473))))))))

(declare-fun m!5771798 () Bool)

(assert (=> bs!1154603 m!5771798))

(assert (=> b!4791264 d!1532932))

(declare-fun b_lambda!186565 () Bool)

(assert (= b_lambda!186557 (or start!493216 b_lambda!186565)))

(declare-fun bs!1154604 () Bool)

(declare-fun d!1532934 () Bool)

(assert (= bs!1154604 (and d!1532934 start!493216)))

(assert (=> bs!1154604 (= (dynLambda!22051 lambda!230314 (h!60596 (toList!6881 lm!2473))) (noDuplicateKeys!2326 (_2!31681 (h!60596 (toList!6881 lm!2473)))))))

(declare-fun m!5771800 () Bool)

(assert (=> bs!1154604 m!5771800))

(assert (=> b!4791178 d!1532934))

(push 1)

(assert (not b!4791337))

(assert (not b!4791199))

(assert (not d!1532850))

(assert (not d!1532890))

(assert (not d!1532904))

(assert (not b!4791169))

(assert (not b!4791304))

(assert (not b!4791155))

(assert (not bm!334999))

(assert (not d!1532876))

(assert (not b!4791356))

(assert (not b!4791260))

(assert (not b!4791261))

(assert (not bs!1154604))

(assert (not d!1532862))

(assert (not d!1532854))

(assert (not d!1532864))

(assert (not b!4791262))

(assert (not d!1532874))

(assert (not b!4791167))

(assert (not b!4791294))

(assert (not b!4791200))

(assert (not b!4791257))

(assert (not b!4791255))

(assert tp_is_empty!33485)

(assert (not b!4791285))

(assert (not b!4791312))

(assert (not b!4791130))

(assert (not d!1532844))

(assert (not b!4791306))

(assert (not b!4791135))

(assert (not d!1532930))

(assert (not b!4791164))

(assert (not bm!334998))

(assert (not b!4791168))

(assert (not b_lambda!186565))

(assert (not b!4791166))

(assert (not b!4791283))

(assert (not b_lambda!186563))

(assert (not b!4791349))

(assert (not d!1532834))

(assert (not b!4791161))

(assert (not d!1532860))

(assert (not d!1532838))

(assert (not b!4791203))

(assert (not b!4791263))

(assert (not d!1532908))

(assert (not b!4791339))

(assert (not d!1532868))

(assert (not b!4791265))

(assert (not b!4791172))

(assert (not bs!1154603))

(assert (not b!4791197))

(assert (not b!4791163))

(assert (not d!1532884))

(assert (not b!4791127))

(assert tp_is_empty!33487)

(assert (not b!4791338))

(assert (not b!4791258))

(assert (not d!1532920))

(assert (not b!4791292))

(assert (not b!4791132))

(assert (not b!4791134))

(assert (not b!4791133))

(assert (not b!4791202))

(assert (not d!1532872))

(assert (not b!4791129))

(assert (not d!1532898))

(assert (not bm!335003))

(assert (not d!1532870))

(assert (not b!4791179))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

