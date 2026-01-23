; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!453282 () Bool)

(assert start!453282)

(declare-fun b!4559990 () Bool)

(declare-fun tp_is_empty!28235 () Bool)

(declare-fun e!2842477 () Bool)

(declare-fun tp!1339201 () Bool)

(declare-fun tp_is_empty!28233 () Bool)

(assert (=> b!4559990 (= e!2842477 (and tp_is_empty!28233 tp_is_empty!28235 tp!1339201))))

(declare-fun res!1902699 () Bool)

(declare-fun e!2842479 () Bool)

(assert (=> start!453282 (=> (not res!1902699) (not e!2842479))))

(declare-datatypes ((K!12238 0))(
  ( (K!12239 (val!18061 Int)) )
))
(declare-datatypes ((V!12484 0))(
  ( (V!12485 (val!18062 Int)) )
))
(declare-datatypes ((tuple2!51390 0))(
  ( (tuple2!51391 (_1!28989 K!12238) (_2!28989 V!12484)) )
))
(declare-datatypes ((List!50983 0))(
  ( (Nil!50859) (Cons!50859 (h!56768 tuple2!51390) (t!357957 List!50983)) )
))
(declare-datatypes ((tuple2!51392 0))(
  ( (tuple2!51393 (_1!28990 (_ BitVec 64)) (_2!28990 List!50983)) )
))
(declare-datatypes ((List!50984 0))(
  ( (Nil!50860) (Cons!50860 (h!56769 tuple2!51392) (t!357958 List!50984)) )
))
(declare-datatypes ((ListLongMap!3117 0))(
  ( (ListLongMap!3118 (toList!4485 List!50984)) )
))
(declare-fun lm!1477 () ListLongMap!3117)

(declare-fun lambda!179836 () Int)

(declare-fun forall!10426 (List!50984 Int) Bool)

(assert (=> start!453282 (= res!1902699 (forall!10426 (toList!4485 lm!1477) lambda!179836))))

(assert (=> start!453282 e!2842479))

(assert (=> start!453282 true))

(declare-fun e!2842478 () Bool)

(declare-fun inv!66423 (ListLongMap!3117) Bool)

(assert (=> start!453282 (and (inv!66423 lm!1477) e!2842478)))

(assert (=> start!453282 tp_is_empty!28233))

(assert (=> start!453282 e!2842477))

(declare-fun b!4559991 () Bool)

(declare-fun res!1902703 () Bool)

(assert (=> b!4559991 (=> (not res!1902703) (not e!2842479))))

(declare-fun key!3287 () K!12238)

(declare-datatypes ((ListMap!3747 0))(
  ( (ListMap!3748 (toList!4486 List!50983)) )
))
(declare-fun contains!13709 (ListMap!3747 K!12238) Bool)

(declare-fun extractMap!1295 (List!50984) ListMap!3747)

(assert (=> b!4559991 (= res!1902703 (contains!13709 (extractMap!1295 (toList!4485 lm!1477)) key!3287))))

(declare-fun b!4559992 () Bool)

(declare-fun res!1902698 () Bool)

(assert (=> b!4559992 (=> (not res!1902698) (not e!2842479))))

(declare-datatypes ((Hashable!5634 0))(
  ( (HashableExt!5633 (__x!31337 Int)) )
))
(declare-fun hashF!1107 () Hashable!5634)

(declare-fun allKeysSameHashInMap!1346 (ListLongMap!3117 Hashable!5634) Bool)

(assert (=> b!4559992 (= res!1902698 (allKeysSameHashInMap!1346 lm!1477 hashF!1107))))

(declare-fun b!4559993 () Bool)

(declare-fun tp!1339200 () Bool)

(assert (=> b!4559993 (= e!2842478 tp!1339200)))

(declare-fun b!4559994 () Bool)

(declare-fun e!2842476 () Bool)

(declare-fun e!2842475 () Bool)

(assert (=> b!4559994 (= e!2842476 (not e!2842475))))

(declare-fun res!1902701 () Bool)

(assert (=> b!4559994 (=> res!1902701 e!2842475)))

(declare-fun lt!1731137 () List!50983)

(declare-fun newBucket!178 () List!50983)

(declare-fun removePairForKey!866 (List!50983 K!12238) List!50983)

(assert (=> b!4559994 (= res!1902701 (not (= newBucket!178 (removePairForKey!866 lt!1731137 key!3287))))))

(declare-datatypes ((Unit!102444 0))(
  ( (Unit!102445) )
))
(declare-fun lt!1731139 () Unit!102444)

(declare-fun lt!1731141 () tuple2!51392)

(declare-fun forallContained!2690 (List!50984 Int tuple2!51392) Unit!102444)

(assert (=> b!4559994 (= lt!1731139 (forallContained!2690 (toList!4485 lm!1477) lambda!179836 lt!1731141))))

(declare-fun contains!13710 (List!50984 tuple2!51392) Bool)

(assert (=> b!4559994 (contains!13710 (toList!4485 lm!1477) lt!1731141)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4559994 (= lt!1731141 (tuple2!51393 hash!344 lt!1731137))))

(declare-fun lt!1731140 () Unit!102444)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!751 (List!50984 (_ BitVec 64) List!50983) Unit!102444)

(assert (=> b!4559994 (= lt!1731140 (lemmaGetValueByKeyImpliesContainsTuple!751 (toList!4485 lm!1477) hash!344 lt!1731137))))

(declare-fun apply!11976 (ListLongMap!3117 (_ BitVec 64)) List!50983)

(assert (=> b!4559994 (= lt!1731137 (apply!11976 lm!1477 hash!344))))

(declare-fun lt!1731136 () (_ BitVec 64))

(declare-fun contains!13711 (ListLongMap!3117 (_ BitVec 64)) Bool)

(assert (=> b!4559994 (contains!13711 lm!1477 lt!1731136)))

(declare-fun lt!1731138 () Unit!102444)

(declare-fun lemmaInGenMapThenLongMapContainsHash!313 (ListLongMap!3117 K!12238 Hashable!5634) Unit!102444)

(assert (=> b!4559994 (= lt!1731138 (lemmaInGenMapThenLongMapContainsHash!313 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4559995 () Bool)

(declare-fun res!1902704 () Bool)

(assert (=> b!4559995 (=> res!1902704 e!2842475)))

(declare-fun noDuplicateKeys!1239 (List!50983) Bool)

(assert (=> b!4559995 (= res!1902704 (not (noDuplicateKeys!1239 newBucket!178)))))

(declare-fun b!4559996 () Bool)

(assert (=> b!4559996 (= e!2842479 e!2842476)))

(declare-fun res!1902700 () Bool)

(assert (=> b!4559996 (=> (not res!1902700) (not e!2842476))))

(assert (=> b!4559996 (= res!1902700 (= lt!1731136 hash!344))))

(declare-fun hash!3033 (Hashable!5634 K!12238) (_ BitVec 64))

(assert (=> b!4559996 (= lt!1731136 (hash!3033 hashF!1107 key!3287))))

(declare-fun b!4559997 () Bool)

(declare-fun res!1902696 () Bool)

(assert (=> b!4559997 (=> (not res!1902696) (not e!2842476))))

(declare-fun allKeysSameHash!1093 (List!50983 (_ BitVec 64) Hashable!5634) Bool)

(assert (=> b!4559997 (= res!1902696 (allKeysSameHash!1093 newBucket!178 hash!344 hashF!1107))))

(declare-fun lt!1731135 () ListLongMap!3117)

(declare-fun b!4559998 () Bool)

(declare-fun e!2842474 () Bool)

(assert (=> b!4559998 (= e!2842474 (= (apply!11976 lt!1731135 hash!344) lt!1731137))))

(declare-fun b!4559999 () Bool)

(assert (=> b!4559999 (= e!2842475 e!2842474)))

(declare-fun res!1902702 () Bool)

(assert (=> b!4559999 (=> res!1902702 e!2842474)))

(assert (=> b!4559999 (= res!1902702 (not (contains!13711 lt!1731135 hash!344)))))

(declare-fun tail!7859 (ListLongMap!3117) ListLongMap!3117)

(assert (=> b!4559999 (= lt!1731135 (tail!7859 lm!1477))))

(declare-fun b!4560000 () Bool)

(declare-fun res!1902697 () Bool)

(assert (=> b!4560000 (=> res!1902697 e!2842475)))

(assert (=> b!4560000 (= res!1902697 (or (is-Nil!50860 (toList!4485 lm!1477)) (= (_1!28990 (h!56769 (toList!4485 lm!1477))) hash!344)))))

(assert (= (and start!453282 res!1902699) b!4559992))

(assert (= (and b!4559992 res!1902698) b!4559991))

(assert (= (and b!4559991 res!1902703) b!4559996))

(assert (= (and b!4559996 res!1902700) b!4559997))

(assert (= (and b!4559997 res!1902696) b!4559994))

(assert (= (and b!4559994 (not res!1902701)) b!4559995))

(assert (= (and b!4559995 (not res!1902704)) b!4560000))

(assert (= (and b!4560000 (not res!1902697)) b!4559999))

(assert (= (and b!4559999 (not res!1902702)) b!4559998))

(assert (= start!453282 b!4559993))

(assert (= (and start!453282 (is-Cons!50859 newBucket!178)) b!4559990))

(declare-fun m!5350327 () Bool)

(assert (=> b!4559991 m!5350327))

(assert (=> b!4559991 m!5350327))

(declare-fun m!5350329 () Bool)

(assert (=> b!4559991 m!5350329))

(declare-fun m!5350331 () Bool)

(assert (=> b!4559997 m!5350331))

(declare-fun m!5350333 () Bool)

(assert (=> b!4559995 m!5350333))

(declare-fun m!5350335 () Bool)

(assert (=> b!4559994 m!5350335))

(declare-fun m!5350337 () Bool)

(assert (=> b!4559994 m!5350337))

(declare-fun m!5350339 () Bool)

(assert (=> b!4559994 m!5350339))

(declare-fun m!5350341 () Bool)

(assert (=> b!4559994 m!5350341))

(declare-fun m!5350343 () Bool)

(assert (=> b!4559994 m!5350343))

(declare-fun m!5350345 () Bool)

(assert (=> b!4559994 m!5350345))

(declare-fun m!5350347 () Bool)

(assert (=> b!4559994 m!5350347))

(declare-fun m!5350349 () Bool)

(assert (=> b!4559999 m!5350349))

(declare-fun m!5350351 () Bool)

(assert (=> b!4559999 m!5350351))

(declare-fun m!5350353 () Bool)

(assert (=> b!4559992 m!5350353))

(declare-fun m!5350355 () Bool)

(assert (=> b!4559996 m!5350355))

(declare-fun m!5350357 () Bool)

(assert (=> start!453282 m!5350357))

(declare-fun m!5350359 () Bool)

(assert (=> start!453282 m!5350359))

(declare-fun m!5350361 () Bool)

(assert (=> b!4559998 m!5350361))

(push 1)

(assert (not b!4559999))

(assert (not b!4559993))

(assert (not b!4559991))

(assert (not start!453282))

(assert tp_is_empty!28235)

(assert tp_is_empty!28233)

(assert (not b!4559997))

(assert (not b!4559995))

(assert (not b!4559994))

(assert (not b!4559996))

(assert (not b!4559992))

(assert (not b!4559990))

(assert (not b!4559998))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1419500 () Bool)

(declare-fun hash!3035 (Hashable!5634 K!12238) (_ BitVec 64))

(assert (=> d!1419500 (= (hash!3033 hashF!1107 key!3287) (hash!3035 hashF!1107 key!3287))))

(declare-fun bs!939841 () Bool)

(assert (= bs!939841 d!1419500))

(declare-fun m!5350403 () Bool)

(assert (=> bs!939841 m!5350403))

(assert (=> b!4559996 d!1419500))

(declare-fun d!1419502 () Bool)

(declare-fun res!1902736 () Bool)

(declare-fun e!2842502 () Bool)

(assert (=> d!1419502 (=> res!1902736 e!2842502)))

(assert (=> d!1419502 (= res!1902736 (not (is-Cons!50859 newBucket!178)))))

(assert (=> d!1419502 (= (noDuplicateKeys!1239 newBucket!178) e!2842502)))

(declare-fun b!4560038 () Bool)

(declare-fun e!2842503 () Bool)

(assert (=> b!4560038 (= e!2842502 e!2842503)))

(declare-fun res!1902737 () Bool)

(assert (=> b!4560038 (=> (not res!1902737) (not e!2842503))))

(declare-fun containsKey!1970 (List!50983 K!12238) Bool)

(assert (=> b!4560038 (= res!1902737 (not (containsKey!1970 (t!357957 newBucket!178) (_1!28989 (h!56768 newBucket!178)))))))

(declare-fun b!4560039 () Bool)

(assert (=> b!4560039 (= e!2842503 (noDuplicateKeys!1239 (t!357957 newBucket!178)))))

(assert (= (and d!1419502 (not res!1902736)) b!4560038))

(assert (= (and b!4560038 res!1902737) b!4560039))

(declare-fun m!5350405 () Bool)

(assert (=> b!4560038 m!5350405))

(declare-fun m!5350407 () Bool)

(assert (=> b!4560039 m!5350407))

(assert (=> b!4559995 d!1419502))

(declare-fun bs!939842 () Bool)

(declare-fun d!1419504 () Bool)

(assert (= bs!939842 (and d!1419504 start!453282)))

(declare-fun lambda!179844 () Int)

(assert (=> bs!939842 (not (= lambda!179844 lambda!179836))))

(assert (=> d!1419504 true))

(assert (=> d!1419504 (= (allKeysSameHashInMap!1346 lm!1477 hashF!1107) (forall!10426 (toList!4485 lm!1477) lambda!179844))))

(declare-fun bs!939843 () Bool)

(assert (= bs!939843 d!1419504))

(declare-fun m!5350409 () Bool)

(assert (=> bs!939843 m!5350409))

(assert (=> b!4559992 d!1419504))

(declare-fun d!1419506 () Bool)

(assert (=> d!1419506 true))

(assert (=> d!1419506 true))

(declare-fun lambda!179847 () Int)

(declare-fun forall!10428 (List!50983 Int) Bool)

(assert (=> d!1419506 (= (allKeysSameHash!1093 newBucket!178 hash!344 hashF!1107) (forall!10428 newBucket!178 lambda!179847))))

(declare-fun bs!939844 () Bool)

(assert (= bs!939844 d!1419506))

(declare-fun m!5350411 () Bool)

(assert (=> bs!939844 m!5350411))

(assert (=> b!4559997 d!1419506))

(declare-fun d!1419508 () Bool)

(declare-fun res!1902744 () Bool)

(declare-fun e!2842512 () Bool)

(assert (=> d!1419508 (=> res!1902744 e!2842512)))

(assert (=> d!1419508 (= res!1902744 (is-Nil!50860 (toList!4485 lm!1477)))))

(assert (=> d!1419508 (= (forall!10426 (toList!4485 lm!1477) lambda!179836) e!2842512)))

(declare-fun b!4560056 () Bool)

(declare-fun e!2842513 () Bool)

(assert (=> b!4560056 (= e!2842512 e!2842513)))

(declare-fun res!1902745 () Bool)

(assert (=> b!4560056 (=> (not res!1902745) (not e!2842513))))

(declare-fun dynLambda!21273 (Int tuple2!51392) Bool)

(assert (=> b!4560056 (= res!1902745 (dynLambda!21273 lambda!179836 (h!56769 (toList!4485 lm!1477))))))

(declare-fun b!4560057 () Bool)

(assert (=> b!4560057 (= e!2842513 (forall!10426 (t!357958 (toList!4485 lm!1477)) lambda!179836))))

(assert (= (and d!1419508 (not res!1902744)) b!4560056))

(assert (= (and b!4560056 res!1902745) b!4560057))

(declare-fun b_lambda!162087 () Bool)

(assert (=> (not b_lambda!162087) (not b!4560056)))

(declare-fun m!5350413 () Bool)

(assert (=> b!4560056 m!5350413))

(declare-fun m!5350415 () Bool)

(assert (=> b!4560057 m!5350415))

(assert (=> start!453282 d!1419508))

(declare-fun d!1419510 () Bool)

(declare-fun isStrictlySorted!485 (List!50984) Bool)

(assert (=> d!1419510 (= (inv!66423 lm!1477) (isStrictlySorted!485 (toList!4485 lm!1477)))))

(declare-fun bs!939845 () Bool)

(assert (= bs!939845 d!1419510))

(declare-fun m!5350417 () Bool)

(assert (=> bs!939845 m!5350417))

(assert (=> start!453282 d!1419510))

(declare-fun b!4560094 () Bool)

(declare-datatypes ((List!50987 0))(
  ( (Nil!50863) (Cons!50863 (h!56774 K!12238) (t!357961 List!50987)) )
))
(declare-fun e!2842540 () List!50987)

(declare-fun keys!17734 (ListMap!3747) List!50987)

(assert (=> b!4560094 (= e!2842540 (keys!17734 (extractMap!1295 (toList!4485 lm!1477))))))

(declare-fun bm!318236 () Bool)

(declare-fun call!318241 () Bool)

(declare-fun contains!13715 (List!50987 K!12238) Bool)

(assert (=> bm!318236 (= call!318241 (contains!13715 e!2842540 key!3287))))

(declare-fun c!779680 () Bool)

(declare-fun c!779681 () Bool)

(assert (=> bm!318236 (= c!779680 c!779681)))

(declare-fun b!4560095 () Bool)

(declare-fun e!2842541 () Unit!102444)

(declare-fun e!2842537 () Unit!102444)

(assert (=> b!4560095 (= e!2842541 e!2842537)))

(declare-fun c!779679 () Bool)

(assert (=> b!4560095 (= c!779679 call!318241)))

(declare-fun b!4560096 () Bool)

(declare-fun getKeysList!519 (List!50983) List!50987)

(assert (=> b!4560096 (= e!2842540 (getKeysList!519 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))))))

(declare-fun b!4560097 () Bool)

(declare-fun e!2842538 () Bool)

(assert (=> b!4560097 (= e!2842538 (contains!13715 (keys!17734 (extractMap!1295 (toList!4485 lm!1477))) key!3287))))

(declare-fun b!4560098 () Bool)

(assert (=> b!4560098 false))

(declare-fun lt!1731202 () Unit!102444)

(declare-fun lt!1731199 () Unit!102444)

(assert (=> b!4560098 (= lt!1731202 lt!1731199)))

(declare-fun containsKey!1971 (List!50983 K!12238) Bool)

(assert (=> b!4560098 (containsKey!1971 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!518 (List!50983 K!12238) Unit!102444)

(assert (=> b!4560098 (= lt!1731199 (lemmaInGetKeysListThenContainsKey!518 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287))))

(declare-fun Unit!102448 () Unit!102444)

(assert (=> b!4560098 (= e!2842537 Unit!102448)))

(declare-fun b!4560099 () Bool)

(declare-fun Unit!102449 () Unit!102444)

(assert (=> b!4560099 (= e!2842537 Unit!102449)))

(declare-fun b!4560100 () Bool)

(declare-fun lt!1731203 () Unit!102444)

(assert (=> b!4560100 (= e!2842541 lt!1731203)))

(declare-fun lt!1731204 () Unit!102444)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1105 (List!50983 K!12238) Unit!102444)

(assert (=> b!4560100 (= lt!1731204 (lemmaContainsKeyImpliesGetValueByKeyDefined!1105 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287))))

(declare-datatypes ((Option!11269 0))(
  ( (None!11268) (Some!11268 (v!45056 V!12484)) )
))
(declare-fun isDefined!8541 (Option!11269) Bool)

(declare-fun getValueByKey!1201 (List!50983 K!12238) Option!11269)

(assert (=> b!4560100 (isDefined!8541 (getValueByKey!1201 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287))))

(declare-fun lt!1731198 () Unit!102444)

(assert (=> b!4560100 (= lt!1731198 lt!1731204)))

(declare-fun lemmaInListThenGetKeysListContains!515 (List!50983 K!12238) Unit!102444)

(assert (=> b!4560100 (= lt!1731203 (lemmaInListThenGetKeysListContains!515 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287))))

(assert (=> b!4560100 call!318241))

(declare-fun b!4560101 () Bool)

(declare-fun e!2842539 () Bool)

(assert (=> b!4560101 (= e!2842539 e!2842538)))

(declare-fun res!1902756 () Bool)

(assert (=> b!4560101 (=> (not res!1902756) (not e!2842538))))

(assert (=> b!4560101 (= res!1902756 (isDefined!8541 (getValueByKey!1201 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287)))))

(declare-fun d!1419512 () Bool)

(assert (=> d!1419512 e!2842539))

(declare-fun res!1902755 () Bool)

(assert (=> d!1419512 (=> res!1902755 e!2842539)))

(declare-fun e!2842536 () Bool)

(assert (=> d!1419512 (= res!1902755 e!2842536)))

(declare-fun res!1902754 () Bool)

(assert (=> d!1419512 (=> (not res!1902754) (not e!2842536))))

(declare-fun lt!1731205 () Bool)

(assert (=> d!1419512 (= res!1902754 (not lt!1731205))))

(declare-fun lt!1731201 () Bool)

(assert (=> d!1419512 (= lt!1731205 lt!1731201)))

(declare-fun lt!1731200 () Unit!102444)

(assert (=> d!1419512 (= lt!1731200 e!2842541)))

(assert (=> d!1419512 (= c!779681 lt!1731201)))

(assert (=> d!1419512 (= lt!1731201 (containsKey!1971 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287))))

(assert (=> d!1419512 (= (contains!13709 (extractMap!1295 (toList!4485 lm!1477)) key!3287) lt!1731205)))

(declare-fun b!4560102 () Bool)

(assert (=> b!4560102 (= e!2842536 (not (contains!13715 (keys!17734 (extractMap!1295 (toList!4485 lm!1477))) key!3287)))))

(assert (= (and d!1419512 c!779681) b!4560100))

(assert (= (and d!1419512 (not c!779681)) b!4560095))

(assert (= (and b!4560095 c!779679) b!4560098))

(assert (= (and b!4560095 (not c!779679)) b!4560099))

(assert (= (or b!4560100 b!4560095) bm!318236))

(assert (= (and bm!318236 c!779680) b!4560096))

(assert (= (and bm!318236 (not c!779680)) b!4560094))

(assert (= (and d!1419512 res!1902754) b!4560102))

(assert (= (and d!1419512 (not res!1902755)) b!4560101))

(assert (= (and b!4560101 res!1902756) b!4560097))

(declare-fun m!5350445 () Bool)

(assert (=> b!4560096 m!5350445))

(declare-fun m!5350447 () Bool)

(assert (=> b!4560101 m!5350447))

(assert (=> b!4560101 m!5350447))

(declare-fun m!5350449 () Bool)

(assert (=> b!4560101 m!5350449))

(declare-fun m!5350451 () Bool)

(assert (=> b!4560100 m!5350451))

(assert (=> b!4560100 m!5350447))

(assert (=> b!4560100 m!5350447))

(assert (=> b!4560100 m!5350449))

(declare-fun m!5350453 () Bool)

(assert (=> b!4560100 m!5350453))

(declare-fun m!5350455 () Bool)

(assert (=> b!4560098 m!5350455))

(declare-fun m!5350457 () Bool)

(assert (=> b!4560098 m!5350457))

(assert (=> b!4560094 m!5350327))

(declare-fun m!5350459 () Bool)

(assert (=> b!4560094 m!5350459))

(assert (=> d!1419512 m!5350455))

(declare-fun m!5350461 () Bool)

(assert (=> bm!318236 m!5350461))

(assert (=> b!4560102 m!5350327))

(assert (=> b!4560102 m!5350459))

(assert (=> b!4560102 m!5350459))

(declare-fun m!5350463 () Bool)

(assert (=> b!4560102 m!5350463))

(assert (=> b!4560097 m!5350327))

(assert (=> b!4560097 m!5350459))

(assert (=> b!4560097 m!5350459))

(assert (=> b!4560097 m!5350463))

(assert (=> b!4559991 d!1419512))

(declare-fun bs!939850 () Bool)

(declare-fun d!1419524 () Bool)

(assert (= bs!939850 (and d!1419524 start!453282)))

(declare-fun lambda!179853 () Int)

(assert (=> bs!939850 (= lambda!179853 lambda!179836)))

(declare-fun bs!939851 () Bool)

(assert (= bs!939851 (and d!1419524 d!1419504)))

(assert (=> bs!939851 (not (= lambda!179853 lambda!179844))))

(declare-fun lt!1731211 () ListMap!3747)

(declare-fun invariantList!1071 (List!50983) Bool)

(assert (=> d!1419524 (invariantList!1071 (toList!4486 lt!1731211))))

(declare-fun e!2842544 () ListMap!3747)

(assert (=> d!1419524 (= lt!1731211 e!2842544)))

(declare-fun c!779684 () Bool)

(assert (=> d!1419524 (= c!779684 (is-Cons!50860 (toList!4485 lm!1477)))))

(assert (=> d!1419524 (forall!10426 (toList!4485 lm!1477) lambda!179853)))

(assert (=> d!1419524 (= (extractMap!1295 (toList!4485 lm!1477)) lt!1731211)))

(declare-fun b!4560107 () Bool)

(declare-fun addToMapMapFromBucket!757 (List!50983 ListMap!3747) ListMap!3747)

(assert (=> b!4560107 (= e!2842544 (addToMapMapFromBucket!757 (_2!28990 (h!56769 (toList!4485 lm!1477))) (extractMap!1295 (t!357958 (toList!4485 lm!1477)))))))

(declare-fun b!4560108 () Bool)

(assert (=> b!4560108 (= e!2842544 (ListMap!3748 Nil!50859))))

(assert (= (and d!1419524 c!779684) b!4560107))

(assert (= (and d!1419524 (not c!779684)) b!4560108))

(declare-fun m!5350471 () Bool)

(assert (=> d!1419524 m!5350471))

(declare-fun m!5350473 () Bool)

(assert (=> d!1419524 m!5350473))

(declare-fun m!5350475 () Bool)

(assert (=> b!4560107 m!5350475))

(assert (=> b!4560107 m!5350475))

(declare-fun m!5350477 () Bool)

(assert (=> b!4560107 m!5350477))

(assert (=> b!4559991 d!1419524))

(declare-fun d!1419528 () Bool)

(declare-datatypes ((Option!11270 0))(
  ( (None!11269) (Some!11269 (v!45057 List!50983)) )
))
(declare-fun get!16757 (Option!11270) List!50983)

(declare-fun getValueByKey!1202 (List!50984 (_ BitVec 64)) Option!11270)

(assert (=> d!1419528 (= (apply!11976 lt!1731135 hash!344) (get!16757 (getValueByKey!1202 (toList!4485 lt!1731135) hash!344)))))

(declare-fun bs!939852 () Bool)

(assert (= bs!939852 d!1419528))

(declare-fun m!5350479 () Bool)

(assert (=> bs!939852 m!5350479))

(assert (=> bs!939852 m!5350479))

(declare-fun m!5350481 () Bool)

(assert (=> bs!939852 m!5350481))

(assert (=> b!4559998 d!1419528))

(declare-fun d!1419530 () Bool)

(assert (=> d!1419530 (dynLambda!21273 lambda!179836 lt!1731141)))

(declare-fun lt!1731217 () Unit!102444)

(declare-fun choose!30202 (List!50984 Int tuple2!51392) Unit!102444)

(assert (=> d!1419530 (= lt!1731217 (choose!30202 (toList!4485 lm!1477) lambda!179836 lt!1731141))))

(declare-fun e!2842550 () Bool)

(assert (=> d!1419530 e!2842550))

(declare-fun res!1902762 () Bool)

(assert (=> d!1419530 (=> (not res!1902762) (not e!2842550))))

(assert (=> d!1419530 (= res!1902762 (forall!10426 (toList!4485 lm!1477) lambda!179836))))

(assert (=> d!1419530 (= (forallContained!2690 (toList!4485 lm!1477) lambda!179836 lt!1731141) lt!1731217)))

(declare-fun b!4560114 () Bool)

(assert (=> b!4560114 (= e!2842550 (contains!13710 (toList!4485 lm!1477) lt!1731141))))

(assert (= (and d!1419530 res!1902762) b!4560114))

(declare-fun b_lambda!162091 () Bool)

(assert (=> (not b_lambda!162091) (not d!1419530)))

(declare-fun m!5350485 () Bool)

(assert (=> d!1419530 m!5350485))

(declare-fun m!5350487 () Bool)

(assert (=> d!1419530 m!5350487))

(assert (=> d!1419530 m!5350357))

(assert (=> b!4560114 m!5350339))

(assert (=> b!4559994 d!1419530))

(declare-fun bs!939853 () Bool)

(declare-fun d!1419532 () Bool)

(assert (= bs!939853 (and d!1419532 start!453282)))

(declare-fun lambda!179856 () Int)

(assert (=> bs!939853 (= lambda!179856 lambda!179836)))

(declare-fun bs!939854 () Bool)

(assert (= bs!939854 (and d!1419532 d!1419504)))

(assert (=> bs!939854 (not (= lambda!179856 lambda!179844))))

(declare-fun bs!939855 () Bool)

(assert (= bs!939855 (and d!1419532 d!1419524)))

(assert (=> bs!939855 (= lambda!179856 lambda!179853)))

(assert (=> d!1419532 (contains!13711 lm!1477 (hash!3033 hashF!1107 key!3287))))

(declare-fun lt!1731220 () Unit!102444)

(declare-fun choose!30203 (ListLongMap!3117 K!12238 Hashable!5634) Unit!102444)

(assert (=> d!1419532 (= lt!1731220 (choose!30203 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1419532 (forall!10426 (toList!4485 lm!1477) lambda!179856)))

(assert (=> d!1419532 (= (lemmaInGenMapThenLongMapContainsHash!313 lm!1477 key!3287 hashF!1107) lt!1731220)))

(declare-fun bs!939856 () Bool)

(assert (= bs!939856 d!1419532))

(assert (=> bs!939856 m!5350355))

(assert (=> bs!939856 m!5350355))

(declare-fun m!5350491 () Bool)

(assert (=> bs!939856 m!5350491))

(declare-fun m!5350493 () Bool)

(assert (=> bs!939856 m!5350493))

(declare-fun m!5350495 () Bool)

(assert (=> bs!939856 m!5350495))

(assert (=> b!4559994 d!1419532))

(declare-fun d!1419536 () Bool)

(declare-fun lt!1731225 () Bool)

(declare-fun content!8515 (List!50984) (Set tuple2!51392))

(assert (=> d!1419536 (= lt!1731225 (set.member lt!1731141 (content!8515 (toList!4485 lm!1477))))))

(declare-fun e!2842558 () Bool)

(assert (=> d!1419536 (= lt!1731225 e!2842558)))

(declare-fun res!1902770 () Bool)

(assert (=> d!1419536 (=> (not res!1902770) (not e!2842558))))

(assert (=> d!1419536 (= res!1902770 (is-Cons!50860 (toList!4485 lm!1477)))))

(assert (=> d!1419536 (= (contains!13710 (toList!4485 lm!1477) lt!1731141) lt!1731225)))

(declare-fun b!4560121 () Bool)

(declare-fun e!2842557 () Bool)

(assert (=> b!4560121 (= e!2842558 e!2842557)))

(declare-fun res!1902769 () Bool)

(assert (=> b!4560121 (=> res!1902769 e!2842557)))

(assert (=> b!4560121 (= res!1902769 (= (h!56769 (toList!4485 lm!1477)) lt!1731141))))

(declare-fun b!4560122 () Bool)

(assert (=> b!4560122 (= e!2842557 (contains!13710 (t!357958 (toList!4485 lm!1477)) lt!1731141))))

(assert (= (and d!1419536 res!1902770) b!4560121))

(assert (= (and b!4560121 (not res!1902769)) b!4560122))

(declare-fun m!5350497 () Bool)

(assert (=> d!1419536 m!5350497))

(declare-fun m!5350499 () Bool)

(assert (=> d!1419536 m!5350499))

(declare-fun m!5350501 () Bool)

(assert (=> b!4560122 m!5350501))

(assert (=> b!4559994 d!1419536))

(declare-fun d!1419538 () Bool)

(assert (=> d!1419538 (= (apply!11976 lm!1477 hash!344) (get!16757 (getValueByKey!1202 (toList!4485 lm!1477) hash!344)))))

(declare-fun bs!939857 () Bool)

(assert (= bs!939857 d!1419538))

(declare-fun m!5350503 () Bool)

(assert (=> bs!939857 m!5350503))

(assert (=> bs!939857 m!5350503))

(declare-fun m!5350505 () Bool)

(assert (=> bs!939857 m!5350505))

(assert (=> b!4559994 d!1419538))

(declare-fun d!1419540 () Bool)

(assert (=> d!1419540 (contains!13710 (toList!4485 lm!1477) (tuple2!51393 hash!344 lt!1731137))))

(declare-fun lt!1731229 () Unit!102444)

(declare-fun choose!30204 (List!50984 (_ BitVec 64) List!50983) Unit!102444)

(assert (=> d!1419540 (= lt!1731229 (choose!30204 (toList!4485 lm!1477) hash!344 lt!1731137))))

(declare-fun e!2842562 () Bool)

(assert (=> d!1419540 e!2842562))

(declare-fun res!1902774 () Bool)

(assert (=> d!1419540 (=> (not res!1902774) (not e!2842562))))

(assert (=> d!1419540 (= res!1902774 (isStrictlySorted!485 (toList!4485 lm!1477)))))

(assert (=> d!1419540 (= (lemmaGetValueByKeyImpliesContainsTuple!751 (toList!4485 lm!1477) hash!344 lt!1731137) lt!1731229)))

(declare-fun b!4560126 () Bool)

(assert (=> b!4560126 (= e!2842562 (= (getValueByKey!1202 (toList!4485 lm!1477) hash!344) (Some!11269 lt!1731137)))))

(assert (= (and d!1419540 res!1902774) b!4560126))

(declare-fun m!5350513 () Bool)

(assert (=> d!1419540 m!5350513))

(declare-fun m!5350515 () Bool)

(assert (=> d!1419540 m!5350515))

(assert (=> d!1419540 m!5350417))

(assert (=> b!4560126 m!5350503))

(assert (=> b!4559994 d!1419540))

(declare-fun b!4560139 () Bool)

(declare-fun e!2842572 () List!50983)

(assert (=> b!4560139 (= e!2842572 (t!357957 lt!1731137))))

(declare-fun d!1419544 () Bool)

(declare-fun lt!1731234 () List!50983)

(assert (=> d!1419544 (not (containsKey!1970 lt!1731234 key!3287))))

(assert (=> d!1419544 (= lt!1731234 e!2842572)))

(declare-fun c!779689 () Bool)

(assert (=> d!1419544 (= c!779689 (and (is-Cons!50859 lt!1731137) (= (_1!28989 (h!56768 lt!1731137)) key!3287)))))

(assert (=> d!1419544 (noDuplicateKeys!1239 lt!1731137)))

(assert (=> d!1419544 (= (removePairForKey!866 lt!1731137 key!3287) lt!1731234)))

(declare-fun b!4560142 () Bool)

(declare-fun e!2842571 () List!50983)

(assert (=> b!4560142 (= e!2842571 Nil!50859)))

(declare-fun b!4560140 () Bool)

(assert (=> b!4560140 (= e!2842572 e!2842571)))

(declare-fun c!779690 () Bool)

(assert (=> b!4560140 (= c!779690 (is-Cons!50859 lt!1731137))))

(declare-fun b!4560141 () Bool)

(assert (=> b!4560141 (= e!2842571 (Cons!50859 (h!56768 lt!1731137) (removePairForKey!866 (t!357957 lt!1731137) key!3287)))))

(assert (= (and d!1419544 c!779689) b!4560139))

(assert (= (and d!1419544 (not c!779689)) b!4560140))

(assert (= (and b!4560140 c!779690) b!4560141))

(assert (= (and b!4560140 (not c!779690)) b!4560142))

(declare-fun m!5350517 () Bool)

(assert (=> d!1419544 m!5350517))

(declare-fun m!5350519 () Bool)

(assert (=> d!1419544 m!5350519))

(declare-fun m!5350521 () Bool)

(assert (=> b!4560141 m!5350521))

(assert (=> b!4559994 d!1419544))

(declare-fun d!1419546 () Bool)

(declare-fun e!2842583 () Bool)

(assert (=> d!1419546 e!2842583))

(declare-fun res!1902787 () Bool)

(assert (=> d!1419546 (=> res!1902787 e!2842583)))

(declare-fun lt!1731247 () Bool)

(assert (=> d!1419546 (= res!1902787 (not lt!1731247))))

(declare-fun lt!1731245 () Bool)

(assert (=> d!1419546 (= lt!1731247 lt!1731245)))

(declare-fun lt!1731246 () Unit!102444)

(declare-fun e!2842584 () Unit!102444)

(assert (=> d!1419546 (= lt!1731246 e!2842584)))

(declare-fun c!779693 () Bool)

(assert (=> d!1419546 (= c!779693 lt!1731245)))

(declare-fun containsKey!1972 (List!50984 (_ BitVec 64)) Bool)

(assert (=> d!1419546 (= lt!1731245 (containsKey!1972 (toList!4485 lm!1477) lt!1731136))))

(assert (=> d!1419546 (= (contains!13711 lm!1477 lt!1731136) lt!1731247)))

(declare-fun b!4560155 () Bool)

(declare-fun lt!1731244 () Unit!102444)

(assert (=> b!4560155 (= e!2842584 lt!1731244)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1106 (List!50984 (_ BitVec 64)) Unit!102444)

(assert (=> b!4560155 (= lt!1731244 (lemmaContainsKeyImpliesGetValueByKeyDefined!1106 (toList!4485 lm!1477) lt!1731136))))

(declare-fun isDefined!8542 (Option!11270) Bool)

(assert (=> b!4560155 (isDefined!8542 (getValueByKey!1202 (toList!4485 lm!1477) lt!1731136))))

(declare-fun b!4560156 () Bool)

(declare-fun Unit!102450 () Unit!102444)

(assert (=> b!4560156 (= e!2842584 Unit!102450)))

(declare-fun b!4560157 () Bool)

(assert (=> b!4560157 (= e!2842583 (isDefined!8542 (getValueByKey!1202 (toList!4485 lm!1477) lt!1731136)))))

(assert (= (and d!1419546 c!779693) b!4560155))

(assert (= (and d!1419546 (not c!779693)) b!4560156))

(assert (= (and d!1419546 (not res!1902787)) b!4560157))

(declare-fun m!5350529 () Bool)

(assert (=> d!1419546 m!5350529))

(declare-fun m!5350531 () Bool)

(assert (=> b!4560155 m!5350531))

(declare-fun m!5350533 () Bool)

(assert (=> b!4560155 m!5350533))

(assert (=> b!4560155 m!5350533))

(declare-fun m!5350535 () Bool)

(assert (=> b!4560155 m!5350535))

(assert (=> b!4560157 m!5350533))

(assert (=> b!4560157 m!5350533))

(assert (=> b!4560157 m!5350535))

(assert (=> b!4559994 d!1419546))

(declare-fun d!1419550 () Bool)

(declare-fun e!2842585 () Bool)

(assert (=> d!1419550 e!2842585))

(declare-fun res!1902788 () Bool)

(assert (=> d!1419550 (=> res!1902788 e!2842585)))

(declare-fun lt!1731251 () Bool)

(assert (=> d!1419550 (= res!1902788 (not lt!1731251))))

(declare-fun lt!1731249 () Bool)

(assert (=> d!1419550 (= lt!1731251 lt!1731249)))

(declare-fun lt!1731250 () Unit!102444)

(declare-fun e!2842586 () Unit!102444)

(assert (=> d!1419550 (= lt!1731250 e!2842586)))

(declare-fun c!779694 () Bool)

(assert (=> d!1419550 (= c!779694 lt!1731249)))

(assert (=> d!1419550 (= lt!1731249 (containsKey!1972 (toList!4485 lt!1731135) hash!344))))

(assert (=> d!1419550 (= (contains!13711 lt!1731135 hash!344) lt!1731251)))

(declare-fun b!4560158 () Bool)

(declare-fun lt!1731248 () Unit!102444)

(assert (=> b!4560158 (= e!2842586 lt!1731248)))

(assert (=> b!4560158 (= lt!1731248 (lemmaContainsKeyImpliesGetValueByKeyDefined!1106 (toList!4485 lt!1731135) hash!344))))

(assert (=> b!4560158 (isDefined!8542 (getValueByKey!1202 (toList!4485 lt!1731135) hash!344))))

(declare-fun b!4560159 () Bool)

(declare-fun Unit!102451 () Unit!102444)

(assert (=> b!4560159 (= e!2842586 Unit!102451)))

(declare-fun b!4560160 () Bool)

(assert (=> b!4560160 (= e!2842585 (isDefined!8542 (getValueByKey!1202 (toList!4485 lt!1731135) hash!344)))))

(assert (= (and d!1419550 c!779694) b!4560158))

(assert (= (and d!1419550 (not c!779694)) b!4560159))

(assert (= (and d!1419550 (not res!1902788)) b!4560160))

(declare-fun m!5350537 () Bool)

(assert (=> d!1419550 m!5350537))

(declare-fun m!5350539 () Bool)

(assert (=> b!4560158 m!5350539))

(assert (=> b!4560158 m!5350479))

(assert (=> b!4560158 m!5350479))

(declare-fun m!5350541 () Bool)

(assert (=> b!4560158 m!5350541))

(assert (=> b!4560160 m!5350479))

(assert (=> b!4560160 m!5350479))

(assert (=> b!4560160 m!5350541))

(assert (=> b!4559999 d!1419550))

(declare-fun d!1419552 () Bool)

(declare-fun tail!7861 (List!50984) List!50984)

(assert (=> d!1419552 (= (tail!7859 lm!1477) (ListLongMap!3118 (tail!7861 (toList!4485 lm!1477))))))

(declare-fun bs!939858 () Bool)

(assert (= bs!939858 d!1419552))

(declare-fun m!5350547 () Bool)

(assert (=> bs!939858 m!5350547))

(assert (=> b!4559999 d!1419552))

(declare-fun tp!1339210 () Bool)

(declare-fun b!4560167 () Bool)

(declare-fun e!2842591 () Bool)

(assert (=> b!4560167 (= e!2842591 (and tp_is_empty!28233 tp_is_empty!28235 tp!1339210))))

(assert (=> b!4559990 (= tp!1339201 e!2842591)))

(assert (= (and b!4559990 (is-Cons!50859 (t!357957 newBucket!178))) b!4560167))

(declare-fun b!4560172 () Bool)

(declare-fun e!2842594 () Bool)

(declare-fun tp!1339215 () Bool)

(declare-fun tp!1339216 () Bool)

(assert (=> b!4560172 (= e!2842594 (and tp!1339215 tp!1339216))))

(assert (=> b!4559993 (= tp!1339200 e!2842594)))

(assert (= (and b!4559993 (is-Cons!50860 (toList!4485 lm!1477))) b!4560172))

(declare-fun b_lambda!162093 () Bool)

(assert (= b_lambda!162091 (or start!453282 b_lambda!162093)))

(declare-fun bs!939859 () Bool)

(declare-fun d!1419556 () Bool)

(assert (= bs!939859 (and d!1419556 start!453282)))

(assert (=> bs!939859 (= (dynLambda!21273 lambda!179836 lt!1731141) (noDuplicateKeys!1239 (_2!28990 lt!1731141)))))

(declare-fun m!5350549 () Bool)

(assert (=> bs!939859 m!5350549))

(assert (=> d!1419530 d!1419556))

(declare-fun b_lambda!162095 () Bool)

(assert (= b_lambda!162087 (or start!453282 b_lambda!162095)))

(declare-fun bs!939860 () Bool)

(declare-fun d!1419558 () Bool)

(assert (= bs!939860 (and d!1419558 start!453282)))

(assert (=> bs!939860 (= (dynLambda!21273 lambda!179836 (h!56769 (toList!4485 lm!1477))) (noDuplicateKeys!1239 (_2!28990 (h!56769 (toList!4485 lm!1477)))))))

(declare-fun m!5350551 () Bool)

(assert (=> bs!939860 m!5350551))

(assert (=> b!4560056 d!1419558))

(push 1)

(assert (not b!4560155))

(assert (not d!1419510))

(assert (not b!4560096))

(assert (not d!1419512))

(assert (not b!4560100))

(assert (not b_lambda!162095))

(assert (not d!1419528))

(assert tp_is_empty!28235)

(assert (not b!4560098))

(assert (not b!4560107))

(assert (not d!1419530))

(assert (not b_lambda!162093))

(assert (not b!4560158))

(assert (not b!4560102))

(assert (not d!1419532))

(assert (not d!1419544))

(assert (not d!1419546))

(assert (not b!4560126))

(assert (not d!1419540))

(assert (not b!4560122))

(assert (not b!4560141))

(assert (not d!1419506))

(assert (not b!4560057))

(assert (not b!4560097))

(assert (not b!4560172))

(assert (not d!1419550))

(assert (not d!1419500))

(assert (not d!1419524))

(assert (not b!4560160))

(assert (not d!1419504))

(assert (not d!1419538))

(assert (not b!4560038))

(assert (not b!4560157))

(assert (not d!1419552))

(assert (not bs!939859))

(assert (not b!4560039))

(assert (not bm!318236))

(assert (not d!1419536))

(assert tp_is_empty!28233)

(assert (not b!4560101))

(assert (not b!4560094))

(assert (not bs!939860))

(assert (not b!4560167))

(assert (not b!4560114))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1419576 () Bool)

(declare-fun c!779709 () Bool)

(assert (=> d!1419576 (= c!779709 (is-Nil!50860 (toList!4485 lm!1477)))))

(declare-fun e!2842630 () (Set tuple2!51392))

(assert (=> d!1419576 (= (content!8515 (toList!4485 lm!1477)) e!2842630)))

(declare-fun b!4560232 () Bool)

(assert (=> b!4560232 (= e!2842630 (as set.empty (Set tuple2!51392)))))

(declare-fun b!4560233 () Bool)

(assert (=> b!4560233 (= e!2842630 (set.union (set.insert (h!56769 (toList!4485 lm!1477)) (as set.empty (Set tuple2!51392))) (content!8515 (t!357958 (toList!4485 lm!1477)))))))

(assert (= (and d!1419576 c!779709) b!4560232))

(assert (= (and d!1419576 (not c!779709)) b!4560233))

(declare-fun m!5350595 () Bool)

(assert (=> b!4560233 m!5350595))

(declare-fun m!5350597 () Bool)

(assert (=> b!4560233 m!5350597))

(assert (=> d!1419536 d!1419576))

(declare-fun d!1419578 () Bool)

(declare-fun res!1902806 () Bool)

(declare-fun e!2842631 () Bool)

(assert (=> d!1419578 (=> res!1902806 e!2842631)))

(assert (=> d!1419578 (= res!1902806 (not (is-Cons!50859 (_2!28990 lt!1731141))))))

(assert (=> d!1419578 (= (noDuplicateKeys!1239 (_2!28990 lt!1731141)) e!2842631)))

(declare-fun b!4560234 () Bool)

(declare-fun e!2842632 () Bool)

(assert (=> b!4560234 (= e!2842631 e!2842632)))

(declare-fun res!1902807 () Bool)

(assert (=> b!4560234 (=> (not res!1902807) (not e!2842632))))

(assert (=> b!4560234 (= res!1902807 (not (containsKey!1970 (t!357957 (_2!28990 lt!1731141)) (_1!28989 (h!56768 (_2!28990 lt!1731141))))))))

(declare-fun b!4560235 () Bool)

(assert (=> b!4560235 (= e!2842632 (noDuplicateKeys!1239 (t!357957 (_2!28990 lt!1731141))))))

(assert (= (and d!1419578 (not res!1902806)) b!4560234))

(assert (= (and b!4560234 res!1902807) b!4560235))

(declare-fun m!5350599 () Bool)

(assert (=> b!4560234 m!5350599))

(declare-fun m!5350601 () Bool)

(assert (=> b!4560235 m!5350601))

(assert (=> bs!939859 d!1419578))

(declare-fun d!1419580 () Bool)

(assert (=> d!1419580 (dynLambda!21273 lambda!179836 lt!1731141)))

(assert (=> d!1419580 true))

(declare-fun _$7!1998 () Unit!102444)

(assert (=> d!1419580 (= (choose!30202 (toList!4485 lm!1477) lambda!179836 lt!1731141) _$7!1998)))

(declare-fun b_lambda!162103 () Bool)

(assert (=> (not b_lambda!162103) (not d!1419580)))

(declare-fun bs!939872 () Bool)

(assert (= bs!939872 d!1419580))

(assert (=> bs!939872 m!5350485))

(assert (=> d!1419530 d!1419580))

(assert (=> d!1419530 d!1419508))

(declare-fun d!1419582 () Bool)

(assert (=> d!1419582 (isDefined!8541 (getValueByKey!1201 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287))))

(declare-fun lt!1731281 () Unit!102444)

(declare-fun choose!30208 (List!50983 K!12238) Unit!102444)

(assert (=> d!1419582 (= lt!1731281 (choose!30208 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287))))

(assert (=> d!1419582 (invariantList!1071 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))))

(assert (=> d!1419582 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1105 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287) lt!1731281)))

(declare-fun bs!939873 () Bool)

(assert (= bs!939873 d!1419582))

(assert (=> bs!939873 m!5350447))

(assert (=> bs!939873 m!5350447))

(assert (=> bs!939873 m!5350449))

(declare-fun m!5350603 () Bool)

(assert (=> bs!939873 m!5350603))

(declare-fun m!5350605 () Bool)

(assert (=> bs!939873 m!5350605))

(assert (=> b!4560100 d!1419582))

(declare-fun d!1419584 () Bool)

(declare-fun isEmpty!28784 (Option!11269) Bool)

(assert (=> d!1419584 (= (isDefined!8541 (getValueByKey!1201 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287)) (not (isEmpty!28784 (getValueByKey!1201 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287))))))

(declare-fun bs!939874 () Bool)

(assert (= bs!939874 d!1419584))

(assert (=> bs!939874 m!5350447))

(declare-fun m!5350607 () Bool)

(assert (=> bs!939874 m!5350607))

(assert (=> b!4560100 d!1419584))

(declare-fun d!1419586 () Bool)

(declare-fun c!779714 () Bool)

(assert (=> d!1419586 (= c!779714 (and (is-Cons!50859 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))) (= (_1!28989 (h!56768 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))) key!3287)))))

(declare-fun e!2842637 () Option!11269)

(assert (=> d!1419586 (= (getValueByKey!1201 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287) e!2842637)))

(declare-fun b!4560247 () Bool)

(declare-fun e!2842638 () Option!11269)

(assert (=> b!4560247 (= e!2842638 None!11268)))

(declare-fun b!4560245 () Bool)

(assert (=> b!4560245 (= e!2842637 e!2842638)))

(declare-fun c!779715 () Bool)

(assert (=> b!4560245 (= c!779715 (and (is-Cons!50859 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))) (not (= (_1!28989 (h!56768 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))) key!3287))))))

(declare-fun b!4560246 () Bool)

(assert (=> b!4560246 (= e!2842638 (getValueByKey!1201 (t!357957 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))) key!3287))))

(declare-fun b!4560244 () Bool)

(assert (=> b!4560244 (= e!2842637 (Some!11268 (_2!28989 (h!56768 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))))))))

(assert (= (and d!1419586 c!779714) b!4560244))

(assert (= (and d!1419586 (not c!779714)) b!4560245))

(assert (= (and b!4560245 c!779715) b!4560246))

(assert (= (and b!4560245 (not c!779715)) b!4560247))

(declare-fun m!5350609 () Bool)

(assert (=> b!4560246 m!5350609))

(assert (=> b!4560100 d!1419586))

(declare-fun d!1419588 () Bool)

(assert (=> d!1419588 (contains!13715 (getKeysList!519 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))) key!3287)))

(declare-fun lt!1731284 () Unit!102444)

(declare-fun choose!30209 (List!50983 K!12238) Unit!102444)

(assert (=> d!1419588 (= lt!1731284 (choose!30209 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287))))

(assert (=> d!1419588 (invariantList!1071 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))))

(assert (=> d!1419588 (= (lemmaInListThenGetKeysListContains!515 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287) lt!1731284)))

(declare-fun bs!939875 () Bool)

(assert (= bs!939875 d!1419588))

(assert (=> bs!939875 m!5350445))

(assert (=> bs!939875 m!5350445))

(declare-fun m!5350611 () Bool)

(assert (=> bs!939875 m!5350611))

(declare-fun m!5350613 () Bool)

(assert (=> bs!939875 m!5350613))

(assert (=> bs!939875 m!5350605))

(assert (=> b!4560100 d!1419588))

(assert (=> b!4560114 d!1419536))

(declare-fun d!1419590 () Bool)

(declare-fun isEmpty!28785 (Option!11270) Bool)

(assert (=> d!1419590 (= (isDefined!8542 (getValueByKey!1202 (toList!4485 lt!1731135) hash!344)) (not (isEmpty!28785 (getValueByKey!1202 (toList!4485 lt!1731135) hash!344))))))

(declare-fun bs!939876 () Bool)

(assert (= bs!939876 d!1419590))

(assert (=> bs!939876 m!5350479))

(declare-fun m!5350615 () Bool)

(assert (=> bs!939876 m!5350615))

(assert (=> b!4560160 d!1419590))

(declare-fun b!4560257 () Bool)

(declare-fun e!2842643 () Option!11270)

(declare-fun e!2842644 () Option!11270)

(assert (=> b!4560257 (= e!2842643 e!2842644)))

(declare-fun c!779721 () Bool)

(assert (=> b!4560257 (= c!779721 (and (is-Cons!50860 (toList!4485 lt!1731135)) (not (= (_1!28990 (h!56769 (toList!4485 lt!1731135))) hash!344))))))

(declare-fun b!4560259 () Bool)

(assert (=> b!4560259 (= e!2842644 None!11269)))

(declare-fun d!1419592 () Bool)

(declare-fun c!779720 () Bool)

(assert (=> d!1419592 (= c!779720 (and (is-Cons!50860 (toList!4485 lt!1731135)) (= (_1!28990 (h!56769 (toList!4485 lt!1731135))) hash!344)))))

(assert (=> d!1419592 (= (getValueByKey!1202 (toList!4485 lt!1731135) hash!344) e!2842643)))

(declare-fun b!4560256 () Bool)

(assert (=> b!4560256 (= e!2842643 (Some!11269 (_2!28990 (h!56769 (toList!4485 lt!1731135)))))))

(declare-fun b!4560258 () Bool)

(assert (=> b!4560258 (= e!2842644 (getValueByKey!1202 (t!357958 (toList!4485 lt!1731135)) hash!344))))

(assert (= (and d!1419592 c!779720) b!4560256))

(assert (= (and d!1419592 (not c!779720)) b!4560257))

(assert (= (and b!4560257 c!779721) b!4560258))

(assert (= (and b!4560257 (not c!779721)) b!4560259))

(declare-fun m!5350617 () Bool)

(assert (=> b!4560258 m!5350617))

(assert (=> b!4560160 d!1419592))

(declare-fun b!4560286 () Bool)

(assert (=> b!4560286 true))

(declare-fun bs!939877 () Bool)

(declare-fun b!4560279 () Bool)

(assert (= bs!939877 (and b!4560279 b!4560286)))

(declare-fun lambda!179875 () Int)

(declare-fun lambda!179874 () Int)

(assert (=> bs!939877 (= (= (Cons!50859 (h!56768 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))) (t!357957 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))) (t!357957 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))) (= lambda!179875 lambda!179874))))

(assert (=> b!4560279 true))

(declare-fun bs!939878 () Bool)

(declare-fun b!4560280 () Bool)

(assert (= bs!939878 (and b!4560280 b!4560286)))

(declare-fun lambda!179876 () Int)

(assert (=> bs!939878 (= (= (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) (t!357957 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))) (= lambda!179876 lambda!179874))))

(declare-fun bs!939879 () Bool)

(assert (= bs!939879 (and b!4560280 b!4560279)))

(assert (=> bs!939879 (= (= (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) (Cons!50859 (h!56768 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))) (t!357957 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))))) (= lambda!179876 lambda!179875))))

(assert (=> b!4560280 true))

(declare-fun b!4560278 () Bool)

(declare-fun e!2842656 () Unit!102444)

(declare-fun Unit!102456 () Unit!102444)

(assert (=> b!4560278 (= e!2842656 Unit!102456)))

(declare-fun e!2842653 () List!50987)

(assert (=> b!4560279 (= e!2842653 (Cons!50863 (_1!28989 (h!56768 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))) (getKeysList!519 (t!357957 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))))))))

(declare-fun c!779728 () Bool)

(assert (=> b!4560279 (= c!779728 (containsKey!1971 (t!357957 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))) (_1!28989 (h!56768 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))))))))

(declare-fun lt!1731301 () Unit!102444)

(declare-fun e!2842654 () Unit!102444)

(assert (=> b!4560279 (= lt!1731301 e!2842654)))

(declare-fun c!779729 () Bool)

(assert (=> b!4560279 (= c!779729 (contains!13715 (getKeysList!519 (t!357957 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))) (_1!28989 (h!56768 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))))))))

(declare-fun lt!1731299 () Unit!102444)

(assert (=> b!4560279 (= lt!1731299 e!2842656)))

(declare-fun lt!1731303 () List!50987)

(assert (=> b!4560279 (= lt!1731303 (getKeysList!519 (t!357957 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))))))

(declare-fun lt!1731304 () Unit!102444)

(declare-fun lemmaForallContainsAddHeadPreserves!196 (List!50983 List!50987 tuple2!51390) Unit!102444)

(assert (=> b!4560279 (= lt!1731304 (lemmaForallContainsAddHeadPreserves!196 (t!357957 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))) lt!1731303 (h!56768 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))))))

(declare-fun forall!10430 (List!50987 Int) Bool)

(assert (=> b!4560279 (forall!10430 lt!1731303 lambda!179875)))

(declare-fun lt!1731302 () Unit!102444)

(assert (=> b!4560279 (= lt!1731302 lt!1731304)))

(declare-fun res!1902816 () Bool)

(declare-fun e!2842655 () Bool)

(assert (=> b!4560280 (=> (not res!1902816) (not e!2842655))))

(declare-fun lt!1731305 () List!50987)

(assert (=> b!4560280 (= res!1902816 (forall!10430 lt!1731305 lambda!179876))))

(declare-fun b!4560281 () Bool)

(declare-fun res!1902814 () Bool)

(assert (=> b!4560281 (=> (not res!1902814) (not e!2842655))))

(declare-fun length!406 (List!50987) Int)

(declare-fun length!407 (List!50983) Int)

(assert (=> b!4560281 (= res!1902814 (= (length!406 lt!1731305) (length!407 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))))))

(declare-fun b!4560282 () Bool)

(declare-fun lambda!179877 () Int)

(declare-fun content!8517 (List!50987) (Set K!12238))

(declare-fun map!11206 (List!50983 Int) List!50987)

(assert (=> b!4560282 (= e!2842655 (= (content!8517 lt!1731305) (content!8517 (map!11206 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) lambda!179877))))))

(declare-fun b!4560283 () Bool)

(declare-fun Unit!102457 () Unit!102444)

(assert (=> b!4560283 (= e!2842654 Unit!102457)))

(declare-fun b!4560284 () Bool)

(assert (=> b!4560284 false))

(declare-fun Unit!102458 () Unit!102444)

(assert (=> b!4560284 (= e!2842654 Unit!102458)))

(declare-fun b!4560285 () Bool)

(assert (=> b!4560285 (= e!2842653 Nil!50863)))

(assert (=> b!4560286 false))

(declare-fun lt!1731300 () Unit!102444)

(declare-fun forallContained!2692 (List!50987 Int K!12238) Unit!102444)

(assert (=> b!4560286 (= lt!1731300 (forallContained!2692 (getKeysList!519 (t!357957 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))) lambda!179874 (_1!28989 (h!56768 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))))))))

(declare-fun Unit!102459 () Unit!102444)

(assert (=> b!4560286 (= e!2842656 Unit!102459)))

(declare-fun d!1419594 () Bool)

(assert (=> d!1419594 e!2842655))

(declare-fun res!1902815 () Bool)

(assert (=> d!1419594 (=> (not res!1902815) (not e!2842655))))

(declare-fun noDuplicate!775 (List!50987) Bool)

(assert (=> d!1419594 (= res!1902815 (noDuplicate!775 lt!1731305))))

(assert (=> d!1419594 (= lt!1731305 e!2842653)))

(declare-fun c!779730 () Bool)

(assert (=> d!1419594 (= c!779730 (is-Cons!50859 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))))))

(assert (=> d!1419594 (invariantList!1071 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))))

(assert (=> d!1419594 (= (getKeysList!519 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))) lt!1731305)))

(assert (= (and d!1419594 c!779730) b!4560279))

(assert (= (and d!1419594 (not c!779730)) b!4560285))

(assert (= (and b!4560279 c!779728) b!4560284))

(assert (= (and b!4560279 (not c!779728)) b!4560283))

(assert (= (and b!4560279 c!779729) b!4560286))

(assert (= (and b!4560279 (not c!779729)) b!4560278))

(assert (= (and d!1419594 res!1902815) b!4560281))

(assert (= (and b!4560281 res!1902814) b!4560280))

(assert (= (and b!4560280 res!1902816) b!4560282))

(declare-fun m!5350619 () Bool)

(assert (=> b!4560279 m!5350619))

(declare-fun m!5350621 () Bool)

(assert (=> b!4560279 m!5350621))

(assert (=> b!4560279 m!5350621))

(declare-fun m!5350623 () Bool)

(assert (=> b!4560279 m!5350623))

(declare-fun m!5350625 () Bool)

(assert (=> b!4560279 m!5350625))

(declare-fun m!5350627 () Bool)

(assert (=> b!4560279 m!5350627))

(declare-fun m!5350629 () Bool)

(assert (=> b!4560281 m!5350629))

(declare-fun m!5350631 () Bool)

(assert (=> b!4560281 m!5350631))

(declare-fun m!5350633 () Bool)

(assert (=> b!4560280 m!5350633))

(declare-fun m!5350635 () Bool)

(assert (=> d!1419594 m!5350635))

(assert (=> d!1419594 m!5350605))

(declare-fun m!5350637 () Bool)

(assert (=> b!4560282 m!5350637))

(declare-fun m!5350639 () Bool)

(assert (=> b!4560282 m!5350639))

(assert (=> b!4560282 m!5350639))

(declare-fun m!5350641 () Bool)

(assert (=> b!4560282 m!5350641))

(assert (=> b!4560286 m!5350621))

(assert (=> b!4560286 m!5350621))

(declare-fun m!5350643 () Bool)

(assert (=> b!4560286 m!5350643))

(assert (=> b!4560096 d!1419594))

(declare-fun d!1419596 () Bool)

(assert (=> d!1419596 (= (get!16757 (getValueByKey!1202 (toList!4485 lt!1731135) hash!344)) (v!45057 (getValueByKey!1202 (toList!4485 lt!1731135) hash!344)))))

(assert (=> d!1419528 d!1419596))

(assert (=> d!1419528 d!1419592))

(declare-fun d!1419598 () Bool)

(declare-fun res!1902821 () Bool)

(declare-fun e!2842661 () Bool)

(assert (=> d!1419598 (=> res!1902821 e!2842661)))

(assert (=> d!1419598 (= res!1902821 (and (is-Cons!50859 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))) (= (_1!28989 (h!56768 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))) key!3287)))))

(assert (=> d!1419598 (= (containsKey!1971 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287) e!2842661)))

(declare-fun b!4560293 () Bool)

(declare-fun e!2842662 () Bool)

(assert (=> b!4560293 (= e!2842661 e!2842662)))

(declare-fun res!1902822 () Bool)

(assert (=> b!4560293 (=> (not res!1902822) (not e!2842662))))

(assert (=> b!4560293 (= res!1902822 (is-Cons!50859 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))))))

(declare-fun b!4560294 () Bool)

(assert (=> b!4560294 (= e!2842662 (containsKey!1971 (t!357957 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))) key!3287))))

(assert (= (and d!1419598 (not res!1902821)) b!4560293))

(assert (= (and b!4560293 res!1902822) b!4560294))

(declare-fun m!5350645 () Bool)

(assert (=> b!4560294 m!5350645))

(assert (=> b!4560098 d!1419598))

(declare-fun d!1419600 () Bool)

(assert (=> d!1419600 (containsKey!1971 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287)))

(declare-fun lt!1731308 () Unit!102444)

(declare-fun choose!30210 (List!50983 K!12238) Unit!102444)

(assert (=> d!1419600 (= lt!1731308 (choose!30210 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287))))

(assert (=> d!1419600 (invariantList!1071 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))))

(assert (=> d!1419600 (= (lemmaInGetKeysListThenContainsKey!518 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) key!3287) lt!1731308)))

(declare-fun bs!939880 () Bool)

(assert (= bs!939880 d!1419600))

(assert (=> bs!939880 m!5350455))

(declare-fun m!5350647 () Bool)

(assert (=> bs!939880 m!5350647))

(assert (=> bs!939880 m!5350605))

(assert (=> b!4560098 d!1419600))

(declare-fun d!1419602 () Bool)

(assert (=> d!1419602 (= (isDefined!8542 (getValueByKey!1202 (toList!4485 lm!1477) lt!1731136)) (not (isEmpty!28785 (getValueByKey!1202 (toList!4485 lm!1477) lt!1731136))))))

(declare-fun bs!939881 () Bool)

(assert (= bs!939881 d!1419602))

(assert (=> bs!939881 m!5350533))

(declare-fun m!5350649 () Bool)

(assert (=> bs!939881 m!5350649))

(assert (=> b!4560157 d!1419602))

(declare-fun b!4560296 () Bool)

(declare-fun e!2842663 () Option!11270)

(declare-fun e!2842664 () Option!11270)

(assert (=> b!4560296 (= e!2842663 e!2842664)))

(declare-fun c!779732 () Bool)

(assert (=> b!4560296 (= c!779732 (and (is-Cons!50860 (toList!4485 lm!1477)) (not (= (_1!28990 (h!56769 (toList!4485 lm!1477))) lt!1731136))))))

(declare-fun b!4560298 () Bool)

(assert (=> b!4560298 (= e!2842664 None!11269)))

(declare-fun d!1419604 () Bool)

(declare-fun c!779731 () Bool)

(assert (=> d!1419604 (= c!779731 (and (is-Cons!50860 (toList!4485 lm!1477)) (= (_1!28990 (h!56769 (toList!4485 lm!1477))) lt!1731136)))))

(assert (=> d!1419604 (= (getValueByKey!1202 (toList!4485 lm!1477) lt!1731136) e!2842663)))

(declare-fun b!4560295 () Bool)

(assert (=> b!4560295 (= e!2842663 (Some!11269 (_2!28990 (h!56769 (toList!4485 lm!1477)))))))

(declare-fun b!4560297 () Bool)

(assert (=> b!4560297 (= e!2842664 (getValueByKey!1202 (t!357958 (toList!4485 lm!1477)) lt!1731136))))

(assert (= (and d!1419604 c!779731) b!4560295))

(assert (= (and d!1419604 (not c!779731)) b!4560296))

(assert (= (and b!4560296 c!779732) b!4560297))

(assert (= (and b!4560296 (not c!779732)) b!4560298))

(declare-fun m!5350651 () Bool)

(assert (=> b!4560297 m!5350651))

(assert (=> b!4560157 d!1419604))

(declare-fun d!1419606 () Bool)

(declare-fun lt!1731311 () Bool)

(assert (=> d!1419606 (= lt!1731311 (set.member key!3287 (content!8517 (keys!17734 (extractMap!1295 (toList!4485 lm!1477))))))))

(declare-fun e!2842669 () Bool)

(assert (=> d!1419606 (= lt!1731311 e!2842669)))

(declare-fun res!1902827 () Bool)

(assert (=> d!1419606 (=> (not res!1902827) (not e!2842669))))

(assert (=> d!1419606 (= res!1902827 (is-Cons!50863 (keys!17734 (extractMap!1295 (toList!4485 lm!1477)))))))

(assert (=> d!1419606 (= (contains!13715 (keys!17734 (extractMap!1295 (toList!4485 lm!1477))) key!3287) lt!1731311)))

(declare-fun b!4560303 () Bool)

(declare-fun e!2842670 () Bool)

(assert (=> b!4560303 (= e!2842669 e!2842670)))

(declare-fun res!1902828 () Bool)

(assert (=> b!4560303 (=> res!1902828 e!2842670)))

(assert (=> b!4560303 (= res!1902828 (= (h!56774 (keys!17734 (extractMap!1295 (toList!4485 lm!1477)))) key!3287))))

(declare-fun b!4560304 () Bool)

(assert (=> b!4560304 (= e!2842670 (contains!13715 (t!357961 (keys!17734 (extractMap!1295 (toList!4485 lm!1477)))) key!3287))))

(assert (= (and d!1419606 res!1902827) b!4560303))

(assert (= (and b!4560303 (not res!1902828)) b!4560304))

(assert (=> d!1419606 m!5350459))

(declare-fun m!5350653 () Bool)

(assert (=> d!1419606 m!5350653))

(declare-fun m!5350655 () Bool)

(assert (=> d!1419606 m!5350655))

(declare-fun m!5350657 () Bool)

(assert (=> b!4560304 m!5350657))

(assert (=> b!4560097 d!1419606))

(declare-fun bs!939882 () Bool)

(declare-fun b!4560312 () Bool)

(assert (= bs!939882 (and b!4560312 b!4560286)))

(declare-fun lambda!179882 () Int)

(assert (=> bs!939882 (= (= (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) (t!357957 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))) (= lambda!179882 lambda!179874))))

(declare-fun bs!939883 () Bool)

(assert (= bs!939883 (and b!4560312 b!4560279)))

(assert (=> bs!939883 (= (= (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) (Cons!50859 (h!56768 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))) (t!357957 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))))) (= lambda!179882 lambda!179875))))

(declare-fun bs!939884 () Bool)

(assert (= bs!939884 (and b!4560312 b!4560280)))

(assert (=> bs!939884 (= lambda!179882 lambda!179876)))

(assert (=> b!4560312 true))

(declare-fun bs!939885 () Bool)

(declare-fun b!4560313 () Bool)

(assert (= bs!939885 (and b!4560313 b!4560282)))

(declare-fun lambda!179883 () Int)

(assert (=> bs!939885 (= lambda!179883 lambda!179877)))

(declare-fun d!1419608 () Bool)

(declare-fun e!2842673 () Bool)

(assert (=> d!1419608 e!2842673))

(declare-fun res!1902836 () Bool)

(assert (=> d!1419608 (=> (not res!1902836) (not e!2842673))))

(declare-fun lt!1731314 () List!50987)

(assert (=> d!1419608 (= res!1902836 (noDuplicate!775 lt!1731314))))

(assert (=> d!1419608 (= lt!1731314 (getKeysList!519 (toList!4486 (extractMap!1295 (toList!4485 lm!1477)))))))

(assert (=> d!1419608 (= (keys!17734 (extractMap!1295 (toList!4485 lm!1477))) lt!1731314)))

(declare-fun b!4560311 () Bool)

(declare-fun res!1902835 () Bool)

(assert (=> b!4560311 (=> (not res!1902835) (not e!2842673))))

(assert (=> b!4560311 (= res!1902835 (= (length!406 lt!1731314) (length!407 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))))))))

(declare-fun res!1902837 () Bool)

(assert (=> b!4560312 (=> (not res!1902837) (not e!2842673))))

(assert (=> b!4560312 (= res!1902837 (forall!10430 lt!1731314 lambda!179882))))

(assert (=> b!4560313 (= e!2842673 (= (content!8517 lt!1731314) (content!8517 (map!11206 (toList!4486 (extractMap!1295 (toList!4485 lm!1477))) lambda!179883))))))

(assert (= (and d!1419608 res!1902836) b!4560311))

(assert (= (and b!4560311 res!1902835) b!4560312))

(assert (= (and b!4560312 res!1902837) b!4560313))

(declare-fun m!5350659 () Bool)

(assert (=> d!1419608 m!5350659))

(assert (=> d!1419608 m!5350445))

(declare-fun m!5350661 () Bool)

(assert (=> b!4560311 m!5350661))

(assert (=> b!4560311 m!5350631))

(declare-fun m!5350663 () Bool)

(assert (=> b!4560312 m!5350663))

(declare-fun m!5350665 () Bool)

(assert (=> b!4560313 m!5350665))

(declare-fun m!5350667 () Bool)

(assert (=> b!4560313 m!5350667))

(assert (=> b!4560313 m!5350667))

(declare-fun m!5350669 () Bool)

(assert (=> b!4560313 m!5350669))

(assert (=> b!4560097 d!1419608))

(declare-fun d!1419610 () Bool)

(declare-fun lt!1731315 () Bool)

(assert (=> d!1419610 (= lt!1731315 (set.member lt!1731141 (content!8515 (t!357958 (toList!4485 lm!1477)))))))

(declare-fun e!2842675 () Bool)

(assert (=> d!1419610 (= lt!1731315 e!2842675)))

(declare-fun res!1902839 () Bool)

(assert (=> d!1419610 (=> (not res!1902839) (not e!2842675))))

(assert (=> d!1419610 (= res!1902839 (is-Cons!50860 (t!357958 (toList!4485 lm!1477))))))

(assert (=> d!1419610 (= (contains!13710 (t!357958 (toList!4485 lm!1477)) lt!1731141) lt!1731315)))

(declare-fun b!4560316 () Bool)

(declare-fun e!2842674 () Bool)

(assert (=> b!4560316 (= e!2842675 e!2842674)))

(declare-fun res!1902838 () Bool)

(assert (=> b!4560316 (=> res!1902838 e!2842674)))

(assert (=> b!4560316 (= res!1902838 (= (h!56769 (t!357958 (toList!4485 lm!1477))) lt!1731141))))

(declare-fun b!4560317 () Bool)

(assert (=> b!4560317 (= e!2842674 (contains!13710 (t!357958 (t!357958 (toList!4485 lm!1477))) lt!1731141))))

(assert (= (and d!1419610 res!1902839) b!4560316))

(assert (= (and b!4560316 (not res!1902838)) b!4560317))

(assert (=> d!1419610 m!5350597))

(declare-fun m!5350671 () Bool)

(assert (=> d!1419610 m!5350671))

(declare-fun m!5350673 () Bool)

(assert (=> b!4560317 m!5350673))

(assert (=> b!4560122 d!1419610))

(declare-fun d!1419612 () Bool)

(declare-fun res!1902844 () Bool)

(declare-fun e!2842680 () Bool)

(assert (=> d!1419612 (=> res!1902844 e!2842680)))

(assert (=> d!1419612 (= res!1902844 (and (is-Cons!50860 (toList!4485 lm!1477)) (= (_1!28990 (h!56769 (toList!4485 lm!1477))) lt!1731136)))))

(assert (=> d!1419612 (= (containsKey!1972 (toList!4485 lm!1477) lt!1731136) e!2842680)))

(declare-fun b!4560322 () Bool)

(declare-fun e!2842681 () Bool)

(assert (=> b!4560322 (= e!2842680 e!2842681)))

(declare-fun res!1902845 () Bool)

(assert (=> b!4560322 (=> (not res!1902845) (not e!2842681))))

(assert (=> b!4560322 (= res!1902845 (and (or (not (is-Cons!50860 (toList!4485 lm!1477))) (bvsle (_1!28990 (h!56769 (toList!4485 lm!1477))) lt!1731136)) (is-Cons!50860 (toList!4485 lm!1477)) (bvslt (_1!28990 (h!56769 (toList!4485 lm!1477))) lt!1731136)))))

(declare-fun b!4560323 () Bool)

(assert (=> b!4560323 (= e!2842681 (containsKey!1972 (t!357958 (toList!4485 lm!1477)) lt!1731136))))

(assert (= (and d!1419612 (not res!1902844)) b!4560322))

(assert (= (and b!4560322 res!1902845) b!4560323))

(declare-fun m!5350675 () Bool)

(assert (=> b!4560323 m!5350675))

(assert (=> d!1419546 d!1419612))

(declare-fun d!1419614 () Bool)

(declare-fun lt!1731316 () Bool)

(assert (=> d!1419614 (= lt!1731316 (set.member key!3287 (content!8517 e!2842540)))))

(declare-fun e!2842682 () Bool)

(assert (=> d!1419614 (= lt!1731316 e!2842682)))

(declare-fun res!1902846 () Bool)

(assert (=> d!1419614 (=> (not res!1902846) (not e!2842682))))

(assert (=> d!1419614 (= res!1902846 (is-Cons!50863 e!2842540))))

(assert (=> d!1419614 (= (contains!13715 e!2842540 key!3287) lt!1731316)))

(declare-fun b!4560324 () Bool)

(declare-fun e!2842683 () Bool)

(assert (=> b!4560324 (= e!2842682 e!2842683)))

(declare-fun res!1902847 () Bool)

(assert (=> b!4560324 (=> res!1902847 e!2842683)))

(assert (=> b!4560324 (= res!1902847 (= (h!56774 e!2842540) key!3287))))

(declare-fun b!4560325 () Bool)

(assert (=> b!4560325 (= e!2842683 (contains!13715 (t!357961 e!2842540) key!3287))))

(assert (= (and d!1419614 res!1902846) b!4560324))

(assert (= (and b!4560324 (not res!1902847)) b!4560325))

(declare-fun m!5350677 () Bool)

(assert (=> d!1419614 m!5350677))

(declare-fun m!5350679 () Bool)

(assert (=> d!1419614 m!5350679))

(declare-fun m!5350681 () Bool)

(assert (=> b!4560325 m!5350681))

(assert (=> bm!318236 d!1419614))

(declare-fun d!1419616 () Bool)

(declare-fun choose!30211 (Hashable!5634 K!12238) (_ BitVec 64))

(assert (=> d!1419616 (= (hash!3035 hashF!1107 key!3287) (choose!30211 hashF!1107 key!3287))))

(declare-fun bs!939886 () Bool)

(assert (= bs!939886 d!1419616))

(declare-fun m!5350683 () Bool)

(assert (=> bs!939886 m!5350683))

(assert (=> d!1419500 d!1419616))

(assert (=> b!4560094 d!1419608))

(declare-fun b!4560327 () Bool)

(declare-fun e!2842684 () Option!11270)

(declare-fun e!2842685 () Option!11270)

(assert (=> b!4560327 (= e!2842684 e!2842685)))

(declare-fun c!779734 () Bool)

(assert (=> b!4560327 (= c!779734 (and (is-Cons!50860 (toList!4485 lm!1477)) (not (= (_1!28990 (h!56769 (toList!4485 lm!1477))) hash!344))))))

(declare-fun b!4560329 () Bool)

(assert (=> b!4560329 (= e!2842685 None!11269)))

(declare-fun d!1419618 () Bool)

(declare-fun c!779733 () Bool)

(assert (=> d!1419618 (= c!779733 (and (is-Cons!50860 (toList!4485 lm!1477)) (= (_1!28990 (h!56769 (toList!4485 lm!1477))) hash!344)))))

(assert (=> d!1419618 (= (getValueByKey!1202 (toList!4485 lm!1477) hash!344) e!2842684)))

(declare-fun b!4560326 () Bool)

(assert (=> b!4560326 (= e!2842684 (Some!11269 (_2!28990 (h!56769 (toList!4485 lm!1477)))))))

(declare-fun b!4560328 () Bool)

(assert (=> b!4560328 (= e!2842685 (getValueByKey!1202 (t!357958 (toList!4485 lm!1477)) hash!344))))

(assert (= (and d!1419618 c!779733) b!4560326))

(assert (= (and d!1419618 (not c!779733)) b!4560327))

(assert (= (and b!4560327 c!779734) b!4560328))

(assert (= (and b!4560327 (not c!779734)) b!4560329))

(declare-fun m!5350685 () Bool)

(assert (=> b!4560328 m!5350685))

(assert (=> b!4560126 d!1419618))

(declare-fun d!1419620 () Bool)

(assert (=> d!1419620 (isDefined!8542 (getValueByKey!1202 (toList!4485 lm!1477) lt!1731136))))

(declare-fun lt!1731319 () Unit!102444)

(declare-fun choose!30212 (List!50984 (_ BitVec 64)) Unit!102444)

(assert (=> d!1419620 (= lt!1731319 (choose!30212 (toList!4485 lm!1477) lt!1731136))))

(declare-fun e!2842688 () Bool)

(assert (=> d!1419620 e!2842688))

(declare-fun res!1902850 () Bool)

(assert (=> d!1419620 (=> (not res!1902850) (not e!2842688))))

(assert (=> d!1419620 (= res!1902850 (isStrictlySorted!485 (toList!4485 lm!1477)))))

(assert (=> d!1419620 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1106 (toList!4485 lm!1477) lt!1731136) lt!1731319)))

(declare-fun b!4560332 () Bool)

(assert (=> b!4560332 (= e!2842688 (containsKey!1972 (toList!4485 lm!1477) lt!1731136))))

(assert (= (and d!1419620 res!1902850) b!4560332))

(assert (=> d!1419620 m!5350533))

(assert (=> d!1419620 m!5350533))

(assert (=> d!1419620 m!5350535))

(declare-fun m!5350687 () Bool)

(assert (=> d!1419620 m!5350687))

(assert (=> d!1419620 m!5350417))

(assert (=> b!4560332 m!5350529))

(assert (=> b!4560155 d!1419620))

(assert (=> b!4560155 d!1419602))

(assert (=> b!4560155 d!1419604))

(declare-fun d!1419622 () Bool)

(declare-fun res!1902855 () Bool)

(declare-fun e!2842693 () Bool)

(assert (=> d!1419622 (=> res!1902855 e!2842693)))

(assert (=> d!1419622 (= res!1902855 (or (is-Nil!50860 (toList!4485 lm!1477)) (is-Nil!50860 (t!357958 (toList!4485 lm!1477)))))))

(assert (=> d!1419622 (= (isStrictlySorted!485 (toList!4485 lm!1477)) e!2842693)))

(declare-fun b!4560337 () Bool)

(declare-fun e!2842694 () Bool)

(assert (=> b!4560337 (= e!2842693 e!2842694)))

(declare-fun res!1902856 () Bool)

(assert (=> b!4560337 (=> (not res!1902856) (not e!2842694))))

(assert (=> b!4560337 (= res!1902856 (bvslt (_1!28990 (h!56769 (toList!4485 lm!1477))) (_1!28990 (h!56769 (t!357958 (toList!4485 lm!1477))))))))

(declare-fun b!4560338 () Bool)

(assert (=> b!4560338 (= e!2842694 (isStrictlySorted!485 (t!357958 (toList!4485 lm!1477))))))

(assert (= (and d!1419622 (not res!1902855)) b!4560337))

(assert (= (and b!4560337 res!1902856) b!4560338))

(declare-fun m!5350689 () Bool)

(assert (=> b!4560338 m!5350689))

(assert (=> d!1419510 d!1419622))

(declare-fun d!1419624 () Bool)

(assert (=> d!1419624 (isDefined!8542 (getValueByKey!1202 (toList!4485 lt!1731135) hash!344))))

(declare-fun lt!1731320 () Unit!102444)

(assert (=> d!1419624 (= lt!1731320 (choose!30212 (toList!4485 lt!1731135) hash!344))))

(declare-fun e!2842695 () Bool)

(assert (=> d!1419624 e!2842695))

(declare-fun res!1902857 () Bool)

(assert (=> d!1419624 (=> (not res!1902857) (not e!2842695))))

(assert (=> d!1419624 (= res!1902857 (isStrictlySorted!485 (toList!4485 lt!1731135)))))

(assert (=> d!1419624 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1106 (toList!4485 lt!1731135) hash!344) lt!1731320)))

(declare-fun b!4560339 () Bool)

(assert (=> b!4560339 (= e!2842695 (containsKey!1972 (toList!4485 lt!1731135) hash!344))))

(assert (= (and d!1419624 res!1902857) b!4560339))

(assert (=> d!1419624 m!5350479))

(assert (=> d!1419624 m!5350479))

(assert (=> d!1419624 m!5350541))

(declare-fun m!5350691 () Bool)

(assert (=> d!1419624 m!5350691))

(declare-fun m!5350693 () Bool)

(assert (=> d!1419624 m!5350693))

(assert (=> b!4560339 m!5350537))

(assert (=> b!4560158 d!1419624))

(assert (=> b!4560158 d!1419590))

(assert (=> b!4560158 d!1419592))

(declare-fun d!1419626 () Bool)

(declare-fun res!1902862 () Bool)

(declare-fun e!2842700 () Bool)

(assert (=> d!1419626 (=> res!1902862 e!2842700)))

(assert (=> d!1419626 (= res!1902862 (is-Nil!50859 newBucket!178))))

(assert (=> d!1419626 (= (forall!10428 newBucket!178 lambda!179847) e!2842700)))

(declare-fun b!4560344 () Bool)

(declare-fun e!2842701 () Bool)

(assert (=> b!4560344 (= e!2842700 e!2842701)))

(declare-fun res!1902863 () Bool)

(assert (=> b!4560344 (=> (not res!1902863) (not e!2842701))))

(declare-fun dynLambda!21275 (Int tuple2!51390) Bool)

(assert (=> b!4560344 (= res!1902863 (dynLambda!21275 lambda!179847 (h!56768 newBucket!178)))))

(declare-fun b!4560345 () Bool)

(assert (=> b!4560345 (= e!2842701 (forall!10428 (t!357957 newBucket!178) lambda!179847))))

(assert (= (and d!1419626 (not res!1902862)) b!4560344))

(assert (= (and b!4560344 res!1902863) b!4560345))

(declare-fun b_lambda!162105 () Bool)

(assert (=> (not b_lambda!162105) (not b!4560344)))

(declare-fun m!5350695 () Bool)

(assert (=> b!4560344 m!5350695))

(declare-fun m!5350697 () Bool)

(assert (=> b!4560345 m!5350697))

(assert (=> d!1419506 d!1419626))

(declare-fun d!1419628 () Bool)

(declare-fun e!2842702 () Bool)

(assert (=> d!1419628 e!2842702))

(declare-fun res!1902864 () Bool)

(assert (=> d!1419628 (=> res!1902864 e!2842702)))

(declare-fun lt!1731324 () Bool)

(assert (=> d!1419628 (= res!1902864 (not lt!1731324))))

(declare-fun lt!1731322 () Bool)

(assert (=> d!1419628 (= lt!1731324 lt!1731322)))

(declare-fun lt!1731323 () Unit!102444)

(declare-fun e!2842703 () Unit!102444)

(assert (=> d!1419628 (= lt!1731323 e!2842703)))

(declare-fun c!779735 () Bool)

(assert (=> d!1419628 (= c!779735 lt!1731322)))

(assert (=> d!1419628 (= lt!1731322 (containsKey!1972 (toList!4485 lm!1477) (hash!3033 hashF!1107 key!3287)))))

(assert (=> d!1419628 (= (contains!13711 lm!1477 (hash!3033 hashF!1107 key!3287)) lt!1731324)))

(declare-fun b!4560346 () Bool)

(declare-fun lt!1731321 () Unit!102444)

(assert (=> b!4560346 (= e!2842703 lt!1731321)))

(assert (=> b!4560346 (= lt!1731321 (lemmaContainsKeyImpliesGetValueByKeyDefined!1106 (toList!4485 lm!1477) (hash!3033 hashF!1107 key!3287)))))

(assert (=> b!4560346 (isDefined!8542 (getValueByKey!1202 (toList!4485 lm!1477) (hash!3033 hashF!1107 key!3287)))))

(declare-fun b!4560347 () Bool)

(declare-fun Unit!102460 () Unit!102444)

(assert (=> b!4560347 (= e!2842703 Unit!102460)))

(declare-fun b!4560348 () Bool)

(assert (=> b!4560348 (= e!2842702 (isDefined!8542 (getValueByKey!1202 (toList!4485 lm!1477) (hash!3033 hashF!1107 key!3287))))))

(assert (= (and d!1419628 c!779735) b!4560346))

(assert (= (and d!1419628 (not c!779735)) b!4560347))

(assert (= (and d!1419628 (not res!1902864)) b!4560348))

(assert (=> d!1419628 m!5350355))

(declare-fun m!5350699 () Bool)

(assert (=> d!1419628 m!5350699))

(assert (=> b!4560346 m!5350355))

(declare-fun m!5350701 () Bool)

(assert (=> b!4560346 m!5350701))

(assert (=> b!4560346 m!5350355))

(declare-fun m!5350703 () Bool)

(assert (=> b!4560346 m!5350703))

(assert (=> b!4560346 m!5350703))

(declare-fun m!5350705 () Bool)

(assert (=> b!4560346 m!5350705))

(assert (=> b!4560348 m!5350355))

(assert (=> b!4560348 m!5350703))

(assert (=> b!4560348 m!5350703))

(assert (=> b!4560348 m!5350705))

(assert (=> d!1419532 d!1419628))

(assert (=> d!1419532 d!1419500))

(declare-fun d!1419630 () Bool)

(assert (=> d!1419630 (contains!13711 lm!1477 (hash!3033 hashF!1107 key!3287))))

(assert (=> d!1419630 true))

(declare-fun _$27!1321 () Unit!102444)

(assert (=> d!1419630 (= (choose!30203 lm!1477 key!3287 hashF!1107) _$27!1321)))

(declare-fun bs!939887 () Bool)

(assert (= bs!939887 d!1419630))

(assert (=> bs!939887 m!5350355))

(assert (=> bs!939887 m!5350355))

(assert (=> bs!939887 m!5350491))

(assert (=> d!1419532 d!1419630))

(declare-fun d!1419632 () Bool)

(declare-fun res!1902865 () Bool)

(declare-fun e!2842704 () Bool)

(assert (=> d!1419632 (=> res!1902865 e!2842704)))

(assert (=> d!1419632 (= res!1902865 (is-Nil!50860 (toList!4485 lm!1477)))))

(assert (=> d!1419632 (= (forall!10426 (toList!4485 lm!1477) lambda!179856) e!2842704)))

(declare-fun b!4560349 () Bool)

(declare-fun e!2842705 () Bool)

(assert (=> b!4560349 (= e!2842704 e!2842705)))

(declare-fun res!1902866 () Bool)

(assert (=> b!4560349 (=> (not res!1902866) (not e!2842705))))

(assert (=> b!4560349 (= res!1902866 (dynLambda!21273 lambda!179856 (h!56769 (toList!4485 lm!1477))))))

(declare-fun b!4560350 () Bool)

(assert (=> b!4560350 (= e!2842705 (forall!10426 (t!357958 (toList!4485 lm!1477)) lambda!179856))))

(assert (= (and d!1419632 (not res!1902865)) b!4560349))

(assert (= (and b!4560349 res!1902866) b!4560350))

(declare-fun b_lambda!162107 () Bool)

(assert (=> (not b_lambda!162107) (not b!4560349)))

(declare-fun m!5350707 () Bool)

(assert (=> b!4560349 m!5350707))

(declare-fun m!5350709 () Bool)

(assert (=> b!4560350 m!5350709))

(assert (=> d!1419532 d!1419632))

(declare-fun d!1419634 () Bool)

(declare-fun res!1902867 () Bool)

(declare-fun e!2842706 () Bool)

(assert (=> d!1419634 (=> res!1902867 e!2842706)))

(assert (=> d!1419634 (= res!1902867 (and (is-Cons!50860 (toList!4485 lt!1731135)) (= (_1!28990 (h!56769 (toList!4485 lt!1731135))) hash!344)))))

(assert (=> d!1419634 (= (containsKey!1972 (toList!4485 lt!1731135) hash!344) e!2842706)))

(declare-fun b!4560351 () Bool)

(declare-fun e!2842707 () Bool)

(assert (=> b!4560351 (= e!2842706 e!2842707)))

(declare-fun res!1902868 () Bool)

(assert (=> b!4560351 (=> (not res!1902868) (not e!2842707))))

(assert (=> b!4560351 (= res!1902868 (and (or (not (is-Cons!50860 (toList!4485 lt!1731135))) (bvsle (_1!28990 (h!56769 (toList!4485 lt!1731135))) hash!344)) (is-Cons!50860 (toList!4485 lt!1731135)) (bvslt (_1!28990 (h!56769 (toList!4485 lt!1731135))) hash!344)))))

(declare-fun b!4560352 () Bool)

(assert (=> b!4560352 (= e!2842707 (containsKey!1972 (t!357958 (toList!4485 lt!1731135)) hash!344))))

(assert (= (and d!1419634 (not res!1902867)) b!4560351))

(assert (= (and b!4560351 res!1902868) b!4560352))

(declare-fun m!5350711 () Bool)

(assert (=> b!4560352 m!5350711))

(assert (=> d!1419550 d!1419634))

(declare-fun b!4560353 () Bool)

(declare-fun e!2842709 () List!50983)

(assert (=> b!4560353 (= e!2842709 (t!357957 (t!357957 lt!1731137)))))

(declare-fun d!1419636 () Bool)

(declare-fun lt!1731325 () List!50983)

(assert (=> d!1419636 (not (containsKey!1970 lt!1731325 key!3287))))

(assert (=> d!1419636 (= lt!1731325 e!2842709)))

(declare-fun c!779736 () Bool)

(assert (=> d!1419636 (= c!779736 (and (is-Cons!50859 (t!357957 lt!1731137)) (= (_1!28989 (h!56768 (t!357957 lt!1731137))) key!3287)))))

(assert (=> d!1419636 (noDuplicateKeys!1239 (t!357957 lt!1731137))))

(assert (=> d!1419636 (= (removePairForKey!866 (t!357957 lt!1731137) key!3287) lt!1731325)))

(declare-fun b!4560356 () Bool)

(declare-fun e!2842708 () List!50983)

(assert (=> b!4560356 (= e!2842708 Nil!50859)))

(declare-fun b!4560354 () Bool)

(assert (=> b!4560354 (= e!2842709 e!2842708)))

(declare-fun c!779737 () Bool)

(assert (=> b!4560354 (= c!779737 (is-Cons!50859 (t!357957 lt!1731137)))))

(declare-fun b!4560355 () Bool)

(assert (=> b!4560355 (= e!2842708 (Cons!50859 (h!56768 (t!357957 lt!1731137)) (removePairForKey!866 (t!357957 (t!357957 lt!1731137)) key!3287)))))

(assert (= (and d!1419636 c!779736) b!4560353))

(assert (= (and d!1419636 (not c!779736)) b!4560354))

(assert (= (and b!4560354 c!779737) b!4560355))

(assert (= (and b!4560354 (not c!779737)) b!4560356))

(declare-fun m!5350713 () Bool)

(assert (=> d!1419636 m!5350713))

(declare-fun m!5350715 () Bool)

(assert (=> d!1419636 m!5350715))

(declare-fun m!5350717 () Bool)

(assert (=> b!4560355 m!5350717))

(assert (=> b!4560141 d!1419636))

(declare-fun d!1419638 () Bool)

(declare-fun res!1902869 () Bool)

(declare-fun e!2842710 () Bool)

(assert (=> d!1419638 (=> res!1902869 e!2842710)))

(assert (=> d!1419638 (= res!1902869 (is-Nil!50860 (t!357958 (toList!4485 lm!1477))))))

(assert (=> d!1419638 (= (forall!10426 (t!357958 (toList!4485 lm!1477)) lambda!179836) e!2842710)))

(declare-fun b!4560357 () Bool)

(declare-fun e!2842711 () Bool)

(assert (=> b!4560357 (= e!2842710 e!2842711)))

(declare-fun res!1902870 () Bool)

(assert (=> b!4560357 (=> (not res!1902870) (not e!2842711))))

(assert (=> b!4560357 (= res!1902870 (dynLambda!21273 lambda!179836 (h!56769 (t!357958 (toList!4485 lm!1477)))))))

(declare-fun b!4560358 () Bool)

(assert (=> b!4560358 (= e!2842711 (forall!10426 (t!357958 (t!357958 (toList!4485 lm!1477))) lambda!179836))))

(assert (= (and d!1419638 (not res!1902869)) b!4560357))

(assert (= (and b!4560357 res!1902870) b!4560358))

(declare-fun b_lambda!162109 () Bool)

(assert (=> (not b_lambda!162109) (not b!4560357)))

(declare-fun m!5350719 () Bool)

(assert (=> b!4560357 m!5350719))

(declare-fun m!5350721 () Bool)

(assert (=> b!4560358 m!5350721))

(assert (=> b!4560057 d!1419638))

(declare-fun lt!1731326 () Bool)

(declare-fun d!1419640 () Bool)

(assert (=> d!1419640 (= lt!1731326 (set.member (tuple2!51393 hash!344 lt!1731137) (content!8515 (toList!4485 lm!1477))))))

(declare-fun e!2842713 () Bool)

(assert (=> d!1419640 (= lt!1731326 e!2842713)))

(declare-fun res!1902872 () Bool)

(assert (=> d!1419640 (=> (not res!1902872) (not e!2842713))))

(assert (=> d!1419640 (= res!1902872 (is-Cons!50860 (toList!4485 lm!1477)))))

(assert (=> d!1419640 (= (contains!13710 (toList!4485 lm!1477) (tuple2!51393 hash!344 lt!1731137)) lt!1731326)))

(declare-fun b!4560359 () Bool)

(declare-fun e!2842712 () Bool)

(assert (=> b!4560359 (= e!2842713 e!2842712)))

(declare-fun res!1902871 () Bool)

(assert (=> b!4560359 (=> res!1902871 e!2842712)))

(assert (=> b!4560359 (= res!1902871 (= (h!56769 (toList!4485 lm!1477)) (tuple2!51393 hash!344 lt!1731137)))))

(declare-fun b!4560360 () Bool)

(assert (=> b!4560360 (= e!2842712 (contains!13710 (t!357958 (toList!4485 lm!1477)) (tuple2!51393 hash!344 lt!1731137)))))

(assert (= (and d!1419640 res!1902872) b!4560359))

(assert (= (and b!4560359 (not res!1902871)) b!4560360))

(assert (=> d!1419640 m!5350497))

(declare-fun m!5350723 () Bool)

(assert (=> d!1419640 m!5350723))

(declare-fun m!5350725 () Bool)

(assert (=> b!4560360 m!5350725))

(assert (=> d!1419540 d!1419640))

(declare-fun d!1419642 () Bool)

(assert (=> d!1419642 (contains!13710 (toList!4485 lm!1477) (tuple2!51393 hash!344 lt!1731137))))

(assert (=> d!1419642 true))

(declare-fun _$14!1297 () Unit!102444)

(assert (=> d!1419642 (= (choose!30204 (toList!4485 lm!1477) hash!344 lt!1731137) _$14!1297)))

(declare-fun bs!939888 () Bool)

(assert (= bs!939888 d!1419642))

(assert (=> bs!939888 m!5350513))

(assert (=> d!1419540 d!1419642))

(assert (=> d!1419540 d!1419622))

(declare-fun d!1419644 () Bool)

(declare-fun res!1902873 () Bool)

(declare-fun e!2842714 () Bool)

(assert (=> d!1419644 (=> res!1902873 e!2842714)))

(assert (=> d!1419644 (= res!1902873 (is-Nil!50860 (toList!4485 lm!1477)))))

(assert (=> d!1419644 (= (forall!10426 (toList!4485 lm!1477) lambda!179844) e!2842714)))

(declare-fun b!4560361 () Bool)

(declare-fun e!2842715 () Bool)

(assert (=> b!4560361 (= e!2842714 e!2842715)))

(declare-fun res!1902874 () Bool)

(assert (=> b!4560361 (=> (not res!1902874) (not e!2842715))))

(assert (=> b!4560361 (= res!1902874 (dynLambda!21273 lambda!179844 (h!56769 (toList!4485 lm!1477))))))

(declare-fun b!4560362 () Bool)

(assert (=> b!4560362 (= e!2842715 (forall!10426 (t!357958 (toList!4485 lm!1477)) lambda!179844))))

(assert (= (and d!1419644 (not res!1902873)) b!4560361))

(assert (= (and b!4560361 res!1902874) b!4560362))

(declare-fun b_lambda!162111 () Bool)

(assert (=> (not b_lambda!162111) (not b!4560361)))

(declare-fun m!5350727 () Bool)

(assert (=> b!4560361 m!5350727))

(declare-fun m!5350729 () Bool)

(assert (=> b!4560362 m!5350729))

(assert (=> d!1419504 d!1419644))

(declare-fun d!1419646 () Bool)

(assert (=> d!1419646 (= (tail!7861 (toList!4485 lm!1477)) (t!357958 (toList!4485 lm!1477)))))

(assert (=> d!1419552 d!1419646))

(declare-fun d!1419648 () Bool)

(declare-fun res!1902875 () Bool)

(declare-fun e!2842716 () Bool)

(assert (=> d!1419648 (=> res!1902875 e!2842716)))

(assert (=> d!1419648 (= res!1902875 (not (is-Cons!50859 (_2!28990 (h!56769 (toList!4485 lm!1477))))))))

(assert (=> d!1419648 (= (noDuplicateKeys!1239 (_2!28990 (h!56769 (toList!4485 lm!1477)))) e!2842716)))

(declare-fun b!4560363 () Bool)

(declare-fun e!2842717 () Bool)

(assert (=> b!4560363 (= e!2842716 e!2842717)))

(declare-fun res!1902876 () Bool)

(assert (=> b!4560363 (=> (not res!1902876) (not e!2842717))))

(assert (=> b!4560363 (= res!1902876 (not (containsKey!1970 (t!357957 (_2!28990 (h!56769 (toList!4485 lm!1477)))) (_1!28989 (h!56768 (_2!28990 (h!56769 (toList!4485 lm!1477))))))))))

(declare-fun b!4560364 () Bool)

(assert (=> b!4560364 (= e!2842717 (noDuplicateKeys!1239 (t!357957 (_2!28990 (h!56769 (toList!4485 lm!1477))))))))

(assert (= (and d!1419648 (not res!1902875)) b!4560363))

(assert (= (and b!4560363 res!1902876) b!4560364))

(declare-fun m!5350731 () Bool)

(assert (=> b!4560363 m!5350731))

(declare-fun m!5350733 () Bool)

(assert (=> b!4560364 m!5350733))

(assert (=> bs!939860 d!1419648))

(declare-fun bs!939893 () Bool)

(declare-fun b!4560444 () Bool)

(assert (= bs!939893 (and b!4560444 d!1419506)))

(declare-fun lambda!179924 () Int)

(assert (=> bs!939893 (not (= lambda!179924 lambda!179847))))

(assert (=> b!4560444 true))

(declare-fun bs!939894 () Bool)

(declare-fun b!4560447 () Bool)

(assert (= bs!939894 (and b!4560447 d!1419506)))

(declare-fun lambda!179925 () Int)

(assert (=> bs!939894 (not (= lambda!179925 lambda!179847))))

(declare-fun bs!939895 () Bool)

(assert (= bs!939895 (and b!4560447 b!4560444)))

(assert (=> bs!939895 (= lambda!179925 lambda!179924)))

(assert (=> b!4560447 true))

(declare-fun lambda!179926 () Int)

(assert (=> bs!939894 (not (= lambda!179926 lambda!179847))))

(declare-fun lt!1731400 () ListMap!3747)

(assert (=> bs!939895 (= (= lt!1731400 (extractMap!1295 (t!357958 (toList!4485 lm!1477)))) (= lambda!179926 lambda!179924))))

(assert (=> b!4560447 (= (= lt!1731400 (extractMap!1295 (t!357958 (toList!4485 lm!1477)))) (= lambda!179926 lambda!179925))))

(assert (=> b!4560447 true))

(declare-fun bs!939896 () Bool)

(declare-fun d!1419650 () Bool)

(assert (= bs!939896 (and d!1419650 d!1419506)))

(declare-fun lambda!179927 () Int)

(assert (=> bs!939896 (not (= lambda!179927 lambda!179847))))

(declare-fun bs!939897 () Bool)

(assert (= bs!939897 (and d!1419650 b!4560444)))

(declare-fun lt!1731402 () ListMap!3747)

(assert (=> bs!939897 (= (= lt!1731402 (extractMap!1295 (t!357958 (toList!4485 lm!1477)))) (= lambda!179927 lambda!179924))))

(declare-fun bs!939898 () Bool)

(assert (= bs!939898 (and d!1419650 b!4560447)))

(assert (=> bs!939898 (= (= lt!1731402 (extractMap!1295 (t!357958 (toList!4485 lm!1477)))) (= lambda!179927 lambda!179925))))

(assert (=> bs!939898 (= (= lt!1731402 lt!1731400) (= lambda!179927 lambda!179926))))

(assert (=> d!1419650 true))

(declare-fun bm!318246 () Bool)

(declare-fun call!318251 () Unit!102444)

(declare-fun lemmaContainsAllItsOwnKeys!391 (ListMap!3747) Unit!102444)

(assert (=> bm!318246 (= call!318251 (lemmaContainsAllItsOwnKeys!391 (extractMap!1295 (t!357958 (toList!4485 lm!1477)))))))

(declare-fun e!2842765 () Bool)

(assert (=> d!1419650 e!2842765))

(declare-fun res!1902911 () Bool)

(assert (=> d!1419650 (=> (not res!1902911) (not e!2842765))))

(assert (=> d!1419650 (= res!1902911 (forall!10428 (_2!28990 (h!56769 (toList!4485 lm!1477))) lambda!179927))))

(declare-fun e!2842766 () ListMap!3747)

(assert (=> d!1419650 (= lt!1731402 e!2842766)))

(declare-fun c!779760 () Bool)

(assert (=> d!1419650 (= c!779760 (is-Nil!50859 (_2!28990 (h!56769 (toList!4485 lm!1477)))))))

(assert (=> d!1419650 (noDuplicateKeys!1239 (_2!28990 (h!56769 (toList!4485 lm!1477))))))

(assert (=> d!1419650 (= (addToMapMapFromBucket!757 (_2!28990 (h!56769 (toList!4485 lm!1477))) (extractMap!1295 (t!357958 (toList!4485 lm!1477)))) lt!1731402)))

(declare-fun b!4560443 () Bool)

(assert (=> b!4560443 (= e!2842765 (invariantList!1071 (toList!4486 lt!1731402)))))

(declare-fun bm!318247 () Bool)

(declare-fun call!318252 () Bool)

(assert (=> bm!318247 (= call!318252 (forall!10428 (ite c!779760 (toList!4486 (extractMap!1295 (t!357958 (toList!4485 lm!1477)))) (_2!28990 (h!56769 (toList!4485 lm!1477)))) (ite c!779760 lambda!179924 lambda!179926)))))

(declare-fun bm!318248 () Bool)

(declare-fun call!318253 () Bool)

(assert (=> bm!318248 (= call!318253 (forall!10428 (ite c!779760 (toList!4486 (extractMap!1295 (t!357958 (toList!4485 lm!1477)))) (t!357957 (_2!28990 (h!56769 (toList!4485 lm!1477))))) (ite c!779760 lambda!179924 lambda!179926)))))

(assert (=> b!4560444 (= e!2842766 (extractMap!1295 (t!357958 (toList!4485 lm!1477))))))

(declare-fun lt!1731397 () Unit!102444)

(assert (=> b!4560444 (= lt!1731397 call!318251)))

(assert (=> b!4560444 call!318252))

(declare-fun lt!1731404 () Unit!102444)

(assert (=> b!4560444 (= lt!1731404 lt!1731397)))

(assert (=> b!4560444 call!318253))

(declare-fun lt!1731401 () Unit!102444)

(declare-fun Unit!102461 () Unit!102444)

(assert (=> b!4560444 (= lt!1731401 Unit!102461)))

(declare-fun b!4560445 () Bool)

(declare-fun e!2842764 () Bool)

(assert (=> b!4560445 (= e!2842764 (forall!10428 (toList!4486 (extractMap!1295 (t!357958 (toList!4485 lm!1477)))) lambda!179926))))

(declare-fun b!4560446 () Bool)

(declare-fun res!1902910 () Bool)

(assert (=> b!4560446 (=> (not res!1902910) (not e!2842765))))

(assert (=> b!4560446 (= res!1902910 (forall!10428 (toList!4486 (extractMap!1295 (t!357958 (toList!4485 lm!1477)))) lambda!179927))))

(assert (=> b!4560447 (= e!2842766 lt!1731400)))

(declare-fun lt!1731394 () ListMap!3747)

(declare-fun +!1663 (ListMap!3747 tuple2!51390) ListMap!3747)

(assert (=> b!4560447 (= lt!1731394 (+!1663 (extractMap!1295 (t!357958 (toList!4485 lm!1477))) (h!56768 (_2!28990 (h!56769 (toList!4485 lm!1477))))))))

(assert (=> b!4560447 (= lt!1731400 (addToMapMapFromBucket!757 (t!357957 (_2!28990 (h!56769 (toList!4485 lm!1477)))) (+!1663 (extractMap!1295 (t!357958 (toList!4485 lm!1477))) (h!56768 (_2!28990 (h!56769 (toList!4485 lm!1477)))))))))

(declare-fun lt!1731412 () Unit!102444)

(assert (=> b!4560447 (= lt!1731412 call!318251)))

(assert (=> b!4560447 (forall!10428 (toList!4486 (extractMap!1295 (t!357958 (toList!4485 lm!1477)))) lambda!179925)))

(declare-fun lt!1731409 () Unit!102444)

(assert (=> b!4560447 (= lt!1731409 lt!1731412)))

(assert (=> b!4560447 (forall!10428 (toList!4486 lt!1731394) lambda!179926)))

(declare-fun lt!1731406 () Unit!102444)

(declare-fun Unit!102462 () Unit!102444)

(assert (=> b!4560447 (= lt!1731406 Unit!102462)))

(assert (=> b!4560447 call!318253))

(declare-fun lt!1731408 () Unit!102444)

(declare-fun Unit!102463 () Unit!102444)

(assert (=> b!4560447 (= lt!1731408 Unit!102463)))

(declare-fun lt!1731396 () Unit!102444)

(declare-fun Unit!102464 () Unit!102444)

(assert (=> b!4560447 (= lt!1731396 Unit!102464)))

(declare-fun lt!1731398 () Unit!102444)

(declare-fun forallContained!2693 (List!50983 Int tuple2!51390) Unit!102444)

(assert (=> b!4560447 (= lt!1731398 (forallContained!2693 (toList!4486 lt!1731394) lambda!179926 (h!56768 (_2!28990 (h!56769 (toList!4485 lm!1477))))))))

(assert (=> b!4560447 (contains!13709 lt!1731394 (_1!28989 (h!56768 (_2!28990 (h!56769 (toList!4485 lm!1477))))))))

(declare-fun lt!1731410 () Unit!102444)

(declare-fun Unit!102465 () Unit!102444)

(assert (=> b!4560447 (= lt!1731410 Unit!102465)))

(assert (=> b!4560447 (contains!13709 lt!1731400 (_1!28989 (h!56768 (_2!28990 (h!56769 (toList!4485 lm!1477))))))))

(declare-fun lt!1731393 () Unit!102444)

(declare-fun Unit!102466 () Unit!102444)

(assert (=> b!4560447 (= lt!1731393 Unit!102466)))

(assert (=> b!4560447 (forall!10428 (_2!28990 (h!56769 (toList!4485 lm!1477))) lambda!179926)))

(declare-fun lt!1731411 () Unit!102444)

(declare-fun Unit!102467 () Unit!102444)

(assert (=> b!4560447 (= lt!1731411 Unit!102467)))

(assert (=> b!4560447 (forall!10428 (toList!4486 lt!1731394) lambda!179926)))

(declare-fun lt!1731395 () Unit!102444)

(declare-fun Unit!102468 () Unit!102444)

(assert (=> b!4560447 (= lt!1731395 Unit!102468)))

(declare-fun lt!1731403 () Unit!102444)

(declare-fun Unit!102469 () Unit!102444)

(assert (=> b!4560447 (= lt!1731403 Unit!102469)))

(declare-fun lt!1731405 () Unit!102444)

(declare-fun addForallContainsKeyThenBeforeAdding!391 (ListMap!3747 ListMap!3747 K!12238 V!12484) Unit!102444)

(assert (=> b!4560447 (= lt!1731405 (addForallContainsKeyThenBeforeAdding!391 (extractMap!1295 (t!357958 (toList!4485 lm!1477))) lt!1731400 (_1!28989 (h!56768 (_2!28990 (h!56769 (toList!4485 lm!1477))))) (_2!28989 (h!56768 (_2!28990 (h!56769 (toList!4485 lm!1477)))))))))

(assert (=> b!4560447 (forall!10428 (toList!4486 (extractMap!1295 (t!357958 (toList!4485 lm!1477)))) lambda!179926)))

(declare-fun lt!1731413 () Unit!102444)

(assert (=> b!4560447 (= lt!1731413 lt!1731405)))

(assert (=> b!4560447 (forall!10428 (toList!4486 (extractMap!1295 (t!357958 (toList!4485 lm!1477)))) lambda!179926)))

(declare-fun lt!1731399 () Unit!102444)

(declare-fun Unit!102470 () Unit!102444)

(assert (=> b!4560447 (= lt!1731399 Unit!102470)))

(declare-fun res!1902909 () Bool)

(assert (=> b!4560447 (= res!1902909 call!318252)))

(assert (=> b!4560447 (=> (not res!1902909) (not e!2842764))))

(assert (=> b!4560447 e!2842764))

(declare-fun lt!1731407 () Unit!102444)

(declare-fun Unit!102471 () Unit!102444)

(assert (=> b!4560447 (= lt!1731407 Unit!102471)))

(assert (= (and d!1419650 c!779760) b!4560444))

(assert (= (and d!1419650 (not c!779760)) b!4560447))

(assert (= (and b!4560447 res!1902909) b!4560445))

(assert (= (or b!4560444 b!4560447) bm!318247))

(assert (= (or b!4560444 b!4560447) bm!318248))

(assert (= (or b!4560444 b!4560447) bm!318246))

(assert (= (and d!1419650 res!1902911) b!4560446))

(assert (= (and b!4560446 res!1902910) b!4560443))

(declare-fun m!5350783 () Bool)

(assert (=> b!4560446 m!5350783))

(declare-fun m!5350785 () Bool)

(assert (=> d!1419650 m!5350785))

(assert (=> d!1419650 m!5350551))

(declare-fun m!5350787 () Bool)

(assert (=> b!4560445 m!5350787))

(declare-fun m!5350789 () Bool)

(assert (=> bm!318248 m!5350789))

(assert (=> bm!318246 m!5350475))

(declare-fun m!5350791 () Bool)

(assert (=> bm!318246 m!5350791))

(declare-fun m!5350793 () Bool)

(assert (=> bm!318247 m!5350793))

(declare-fun m!5350795 () Bool)

(assert (=> b!4560443 m!5350795))

(assert (=> b!4560447 m!5350475))

(declare-fun m!5350797 () Bool)

(assert (=> b!4560447 m!5350797))

(assert (=> b!4560447 m!5350787))

(declare-fun m!5350799 () Bool)

(assert (=> b!4560447 m!5350799))

(declare-fun m!5350801 () Bool)

(assert (=> b!4560447 m!5350801))

(declare-fun m!5350803 () Bool)

(assert (=> b!4560447 m!5350803))

(assert (=> b!4560447 m!5350475))

(declare-fun m!5350805 () Bool)

(assert (=> b!4560447 m!5350805))

(declare-fun m!5350807 () Bool)

(assert (=> b!4560447 m!5350807))

(declare-fun m!5350809 () Bool)

(assert (=> b!4560447 m!5350809))

(assert (=> b!4560447 m!5350799))

(assert (=> b!4560447 m!5350787))

(declare-fun m!5350811 () Bool)

(assert (=> b!4560447 m!5350811))

(assert (=> b!4560447 m!5350805))

(declare-fun m!5350813 () Bool)

(assert (=> b!4560447 m!5350813))

(assert (=> b!4560107 d!1419650))

(declare-fun bs!939899 () Bool)

(declare-fun d!1419676 () Bool)

(assert (= bs!939899 (and d!1419676 start!453282)))

(declare-fun lambda!179928 () Int)

(assert (=> bs!939899 (= lambda!179928 lambda!179836)))

(declare-fun bs!939900 () Bool)

(assert (= bs!939900 (and d!1419676 d!1419504)))

(assert (=> bs!939900 (not (= lambda!179928 lambda!179844))))

(declare-fun bs!939901 () Bool)

(assert (= bs!939901 (and d!1419676 d!1419524)))

(assert (=> bs!939901 (= lambda!179928 lambda!179853)))

(declare-fun bs!939902 () Bool)

(assert (= bs!939902 (and d!1419676 d!1419532)))

(assert (=> bs!939902 (= lambda!179928 lambda!179856)))

(declare-fun lt!1731414 () ListMap!3747)

(assert (=> d!1419676 (invariantList!1071 (toList!4486 lt!1731414))))

(declare-fun e!2842767 () ListMap!3747)

(assert (=> d!1419676 (= lt!1731414 e!2842767)))

(declare-fun c!779761 () Bool)

(assert (=> d!1419676 (= c!779761 (is-Cons!50860 (t!357958 (toList!4485 lm!1477))))))

(assert (=> d!1419676 (forall!10426 (t!357958 (toList!4485 lm!1477)) lambda!179928)))

(assert (=> d!1419676 (= (extractMap!1295 (t!357958 (toList!4485 lm!1477))) lt!1731414)))

(declare-fun b!4560450 () Bool)

(assert (=> b!4560450 (= e!2842767 (addToMapMapFromBucket!757 (_2!28990 (h!56769 (t!357958 (toList!4485 lm!1477)))) (extractMap!1295 (t!357958 (t!357958 (toList!4485 lm!1477))))))))

(declare-fun b!4560451 () Bool)

(assert (=> b!4560451 (= e!2842767 (ListMap!3748 Nil!50859))))

(assert (= (and d!1419676 c!779761) b!4560450))

(assert (= (and d!1419676 (not c!779761)) b!4560451))

(declare-fun m!5350815 () Bool)

(assert (=> d!1419676 m!5350815))

(declare-fun m!5350817 () Bool)

(assert (=> d!1419676 m!5350817))

(declare-fun m!5350819 () Bool)

(assert (=> b!4560450 m!5350819))

(assert (=> b!4560450 m!5350819))

(declare-fun m!5350821 () Bool)

(assert (=> b!4560450 m!5350821))

(assert (=> b!4560107 d!1419676))

(declare-fun d!1419678 () Bool)

(declare-fun res!1902912 () Bool)

(declare-fun e!2842768 () Bool)

(assert (=> d!1419678 (=> res!1902912 e!2842768)))

(assert (=> d!1419678 (= res!1902912 (not (is-Cons!50859 (t!357957 newBucket!178))))))

(assert (=> d!1419678 (= (noDuplicateKeys!1239 (t!357957 newBucket!178)) e!2842768)))

(declare-fun b!4560452 () Bool)

(declare-fun e!2842769 () Bool)

(assert (=> b!4560452 (= e!2842768 e!2842769)))

(declare-fun res!1902913 () Bool)

(assert (=> b!4560452 (=> (not res!1902913) (not e!2842769))))

(assert (=> b!4560452 (= res!1902913 (not (containsKey!1970 (t!357957 (t!357957 newBucket!178)) (_1!28989 (h!56768 (t!357957 newBucket!178))))))))

(declare-fun b!4560453 () Bool)

(assert (=> b!4560453 (= e!2842769 (noDuplicateKeys!1239 (t!357957 (t!357957 newBucket!178))))))

(assert (= (and d!1419678 (not res!1902912)) b!4560452))

(assert (= (and b!4560452 res!1902913) b!4560453))

(declare-fun m!5350823 () Bool)

(assert (=> b!4560452 m!5350823))

(declare-fun m!5350825 () Bool)

(assert (=> b!4560453 m!5350825))

(assert (=> b!4560039 d!1419678))

(declare-fun d!1419680 () Bool)

(assert (=> d!1419680 (= (get!16757 (getValueByKey!1202 (toList!4485 lm!1477) hash!344)) (v!45057 (getValueByKey!1202 (toList!4485 lm!1477) hash!344)))))

(assert (=> d!1419538 d!1419680))

(assert (=> d!1419538 d!1419618))

(assert (=> b!4560102 d!1419606))

(assert (=> b!4560102 d!1419608))

(declare-fun d!1419682 () Bool)

(declare-fun res!1902918 () Bool)

(declare-fun e!2842774 () Bool)

(assert (=> d!1419682 (=> res!1902918 e!2842774)))

(assert (=> d!1419682 (= res!1902918 (and (is-Cons!50859 lt!1731234) (= (_1!28989 (h!56768 lt!1731234)) key!3287)))))

(assert (=> d!1419682 (= (containsKey!1970 lt!1731234 key!3287) e!2842774)))

(declare-fun b!4560458 () Bool)

(declare-fun e!2842775 () Bool)

(assert (=> b!4560458 (= e!2842774 e!2842775)))

(declare-fun res!1902919 () Bool)

(assert (=> b!4560458 (=> (not res!1902919) (not e!2842775))))

(assert (=> b!4560458 (= res!1902919 (is-Cons!50859 lt!1731234))))

(declare-fun b!4560459 () Bool)

(assert (=> b!4560459 (= e!2842775 (containsKey!1970 (t!357957 lt!1731234) key!3287))))

(assert (= (and d!1419682 (not res!1902918)) b!4560458))

(assert (= (and b!4560458 res!1902919) b!4560459))

(declare-fun m!5350827 () Bool)

(assert (=> b!4560459 m!5350827))

(assert (=> d!1419544 d!1419682))

(declare-fun d!1419684 () Bool)

(declare-fun res!1902920 () Bool)

(declare-fun e!2842776 () Bool)

(assert (=> d!1419684 (=> res!1902920 e!2842776)))

(assert (=> d!1419684 (= res!1902920 (not (is-Cons!50859 lt!1731137)))))

(assert (=> d!1419684 (= (noDuplicateKeys!1239 lt!1731137) e!2842776)))

(declare-fun b!4560460 () Bool)

(declare-fun e!2842777 () Bool)

(assert (=> b!4560460 (= e!2842776 e!2842777)))

(declare-fun res!1902921 () Bool)

(assert (=> b!4560460 (=> (not res!1902921) (not e!2842777))))

(assert (=> b!4560460 (= res!1902921 (not (containsKey!1970 (t!357957 lt!1731137) (_1!28989 (h!56768 lt!1731137)))))))

(declare-fun b!4560461 () Bool)

(assert (=> b!4560461 (= e!2842777 (noDuplicateKeys!1239 (t!357957 lt!1731137)))))

(assert (= (and d!1419684 (not res!1902920)) b!4560460))

(assert (= (and b!4560460 res!1902921) b!4560461))

(declare-fun m!5350829 () Bool)

(assert (=> b!4560460 m!5350829))

(assert (=> b!4560461 m!5350715))

(assert (=> d!1419544 d!1419684))

(assert (=> b!4560101 d!1419584))

(assert (=> b!4560101 d!1419586))

(declare-fun d!1419686 () Bool)

(declare-fun res!1902922 () Bool)

(declare-fun e!2842778 () Bool)

(assert (=> d!1419686 (=> res!1902922 e!2842778)))

(assert (=> d!1419686 (= res!1902922 (and (is-Cons!50859 (t!357957 newBucket!178)) (= (_1!28989 (h!56768 (t!357957 newBucket!178))) (_1!28989 (h!56768 newBucket!178)))))))

(assert (=> d!1419686 (= (containsKey!1970 (t!357957 newBucket!178) (_1!28989 (h!56768 newBucket!178))) e!2842778)))

(declare-fun b!4560462 () Bool)

(declare-fun e!2842779 () Bool)

(assert (=> b!4560462 (= e!2842778 e!2842779)))

(declare-fun res!1902923 () Bool)

(assert (=> b!4560462 (=> (not res!1902923) (not e!2842779))))

(assert (=> b!4560462 (= res!1902923 (is-Cons!50859 (t!357957 newBucket!178)))))

(declare-fun b!4560463 () Bool)

(assert (=> b!4560463 (= e!2842779 (containsKey!1970 (t!357957 (t!357957 newBucket!178)) (_1!28989 (h!56768 newBucket!178))))))

(assert (= (and d!1419686 (not res!1902922)) b!4560462))

(assert (= (and b!4560462 res!1902923) b!4560463))

(declare-fun m!5350831 () Bool)

(assert (=> b!4560463 m!5350831))

(assert (=> b!4560038 d!1419686))

(assert (=> d!1419512 d!1419598))

(declare-fun d!1419688 () Bool)

(declare-fun noDuplicatedKeys!290 (List!50983) Bool)

(assert (=> d!1419688 (= (invariantList!1071 (toList!4486 lt!1731211)) (noDuplicatedKeys!290 (toList!4486 lt!1731211)))))

(declare-fun bs!939903 () Bool)

(assert (= bs!939903 d!1419688))

(declare-fun m!5350833 () Bool)

(assert (=> bs!939903 m!5350833))

(assert (=> d!1419524 d!1419688))

(declare-fun d!1419690 () Bool)

(declare-fun res!1902924 () Bool)

(declare-fun e!2842780 () Bool)

(assert (=> d!1419690 (=> res!1902924 e!2842780)))

(assert (=> d!1419690 (= res!1902924 (is-Nil!50860 (toList!4485 lm!1477)))))

(assert (=> d!1419690 (= (forall!10426 (toList!4485 lm!1477) lambda!179853) e!2842780)))

(declare-fun b!4560464 () Bool)

(declare-fun e!2842781 () Bool)

(assert (=> b!4560464 (= e!2842780 e!2842781)))

(declare-fun res!1902925 () Bool)

(assert (=> b!4560464 (=> (not res!1902925) (not e!2842781))))

(assert (=> b!4560464 (= res!1902925 (dynLambda!21273 lambda!179853 (h!56769 (toList!4485 lm!1477))))))

(declare-fun b!4560465 () Bool)

(assert (=> b!4560465 (= e!2842781 (forall!10426 (t!357958 (toList!4485 lm!1477)) lambda!179853))))

(assert (= (and d!1419690 (not res!1902924)) b!4560464))

(assert (= (and b!4560464 res!1902925) b!4560465))

(declare-fun b_lambda!162113 () Bool)

(assert (=> (not b_lambda!162113) (not b!4560464)))

(declare-fun m!5350835 () Bool)

(assert (=> b!4560464 m!5350835))

(declare-fun m!5350837 () Bool)

(assert (=> b!4560465 m!5350837))

(assert (=> d!1419524 d!1419690))

(declare-fun b!4560466 () Bool)

(declare-fun tp!1339226 () Bool)

(declare-fun e!2842782 () Bool)

(assert (=> b!4560466 (= e!2842782 (and tp_is_empty!28233 tp_is_empty!28235 tp!1339226))))

(assert (=> b!4560167 (= tp!1339210 e!2842782)))

(assert (= (and b!4560167 (is-Cons!50859 (t!357957 (t!357957 newBucket!178)))) b!4560466))

(declare-fun e!2842783 () Bool)

(declare-fun tp!1339227 () Bool)

(declare-fun b!4560467 () Bool)

(assert (=> b!4560467 (= e!2842783 (and tp_is_empty!28233 tp_is_empty!28235 tp!1339227))))

(assert (=> b!4560172 (= tp!1339215 e!2842783)))

(assert (= (and b!4560172 (is-Cons!50859 (_2!28990 (h!56769 (toList!4485 lm!1477))))) b!4560467))

(declare-fun b!4560468 () Bool)

(declare-fun e!2842784 () Bool)

(declare-fun tp!1339228 () Bool)

(declare-fun tp!1339229 () Bool)

(assert (=> b!4560468 (= e!2842784 (and tp!1339228 tp!1339229))))

(assert (=> b!4560172 (= tp!1339216 e!2842784)))

(assert (= (and b!4560172 (is-Cons!50860 (t!357958 (toList!4485 lm!1477)))) b!4560468))

(declare-fun b_lambda!162115 () Bool)

(assert (= b_lambda!162109 (or start!453282 b_lambda!162115)))

(declare-fun bs!939904 () Bool)

(declare-fun d!1419692 () Bool)

(assert (= bs!939904 (and d!1419692 start!453282)))

(assert (=> bs!939904 (= (dynLambda!21273 lambda!179836 (h!56769 (t!357958 (toList!4485 lm!1477)))) (noDuplicateKeys!1239 (_2!28990 (h!56769 (t!357958 (toList!4485 lm!1477))))))))

(declare-fun m!5350839 () Bool)

(assert (=> bs!939904 m!5350839))

(assert (=> b!4560357 d!1419692))

(declare-fun b_lambda!162117 () Bool)

(assert (= b_lambda!162107 (or d!1419532 b_lambda!162117)))

(declare-fun bs!939905 () Bool)

(declare-fun d!1419694 () Bool)

(assert (= bs!939905 (and d!1419694 d!1419532)))

(assert (=> bs!939905 (= (dynLambda!21273 lambda!179856 (h!56769 (toList!4485 lm!1477))) (noDuplicateKeys!1239 (_2!28990 (h!56769 (toList!4485 lm!1477)))))))

(assert (=> bs!939905 m!5350551))

(assert (=> b!4560349 d!1419694))

(declare-fun b_lambda!162119 () Bool)

(assert (= b_lambda!162111 (or d!1419504 b_lambda!162119)))

(declare-fun bs!939906 () Bool)

(declare-fun d!1419696 () Bool)

(assert (= bs!939906 (and d!1419696 d!1419504)))

(assert (=> bs!939906 (= (dynLambda!21273 lambda!179844 (h!56769 (toList!4485 lm!1477))) (allKeysSameHash!1093 (_2!28990 (h!56769 (toList!4485 lm!1477))) (_1!28990 (h!56769 (toList!4485 lm!1477))) hashF!1107))))

(declare-fun m!5350841 () Bool)

(assert (=> bs!939906 m!5350841))

(assert (=> b!4560361 d!1419696))

(declare-fun b_lambda!162121 () Bool)

(assert (= b_lambda!162113 (or d!1419524 b_lambda!162121)))

(declare-fun bs!939907 () Bool)

(declare-fun d!1419698 () Bool)

(assert (= bs!939907 (and d!1419698 d!1419524)))

(assert (=> bs!939907 (= (dynLambda!21273 lambda!179853 (h!56769 (toList!4485 lm!1477))) (noDuplicateKeys!1239 (_2!28990 (h!56769 (toList!4485 lm!1477)))))))

(assert (=> bs!939907 m!5350551))

(assert (=> b!4560464 d!1419698))

(declare-fun b_lambda!162123 () Bool)

(assert (= b_lambda!162105 (or d!1419506 b_lambda!162123)))

(declare-fun bs!939908 () Bool)

(declare-fun d!1419700 () Bool)

(assert (= bs!939908 (and d!1419700 d!1419506)))

(assert (=> bs!939908 (= (dynLambda!21275 lambda!179847 (h!56768 newBucket!178)) (= (hash!3033 hashF!1107 (_1!28989 (h!56768 newBucket!178))) hash!344))))

(declare-fun m!5350843 () Bool)

(assert (=> bs!939908 m!5350843))

(assert (=> b!4560344 d!1419700))

(declare-fun b_lambda!162125 () Bool)

(assert (= b_lambda!162103 (or start!453282 b_lambda!162125)))

(assert (=> d!1419580 d!1419556))

(push 1)

(assert (not d!1419582))

(assert (not b!4560352))

(assert (not b!4560280))

(assert (not b!4560312))

(assert (not b!4560332))

(assert (not bs!939906))

(assert (not b_lambda!162119))

(assert (not b!4560355))

(assert (not b!4560468))

(assert (not d!1419600))

(assert (not b_lambda!162125))

(assert (not bs!939907))

(assert (not b!4560465))

(assert (not b!4560443))

(assert (not b!4560453))

(assert (not b_lambda!162121))

(assert (not b!4560234))

(assert (not b!4560317))

(assert (not b_lambda!162123))

(assert (not d!1419640))

(assert (not b!4560461))

(assert (not b_lambda!162117))

(assert (not b!4560463))

(assert (not bm!318248))

(assert (not b_lambda!162115))

(assert (not b!4560246))

(assert (not b!4560258))

(assert (not d!1419590))

(assert (not d!1419650))

(assert (not b!4560282))

(assert (not b!4560323))

(assert (not b!4560445))

(assert (not b!4560233))

(assert (not b!4560450))

(assert (not bm!318246))

(assert (not d!1419688))

(assert (not b!4560345))

(assert (not bs!939908))

(assert (not d!1419606))

(assert (not b!4560286))

(assert (not bs!939904))

(assert (not b!4560363))

(assert (not b_lambda!162095))

(assert (not b!4560459))

(assert (not d!1419628))

(assert (not b!4560364))

(assert (not b!4560325))

(assert tp_is_empty!28235)

(assert (not b!4560311))

(assert (not d!1419584))

(assert (not d!1419636))

(assert (not d!1419642))

(assert (not bm!318247))

(assert (not b!4560460))

(assert (not b!4560313))

(assert (not b!4560294))

(assert (not b!4560447))

(assert (not bs!939905))

(assert (not b!4560452))

(assert (not b!4560348))

(assert (not b!4560360))

(assert (not d!1419602))

(assert (not b!4560346))

(assert (not b!4560350))

(assert (not d!1419624))

(assert (not d!1419620))

(assert (not b_lambda!162093))

(assert (not b!4560328))

(assert (not b!4560281))

(assert (not d!1419608))

(assert (not b!4560358))

(assert (not b!4560466))

(assert (not d!1419594))

(assert (not b!4560362))

(assert (not d!1419630))

(assert (not d!1419588))

(assert (not d!1419614))

(assert (not d!1419676))

(assert (not b!4560339))

(assert (not b!4560279))

(assert (not b!4560338))

(assert (not d!1419610))

(assert tp_is_empty!28233)

(assert (not b!4560235))

(assert (not b!4560297))

(assert (not b!4560467))

(assert (not b!4560304))

(assert (not b!4560446))

(assert (not d!1419616))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

