; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!461658 () Bool)

(assert start!461658)

(declare-fun tp_is_empty!29049 () Bool)

(declare-fun b!4615098 () Bool)

(declare-fun tp!1341545 () Bool)

(declare-fun e!2878723 () Bool)

(declare-fun tp_is_empty!29051 () Bool)

(assert (=> b!4615098 (= e!2878723 (and tp_is_empty!29049 tp_is_empty!29051 tp!1341545))))

(declare-fun b!4615099 () Bool)

(declare-fun res!1933467 () Bool)

(declare-fun e!2878729 () Bool)

(assert (=> b!4615099 (=> (not res!1933467) (not e!2878729))))

(declare-datatypes ((Hashable!5836 0))(
  ( (HashableExt!5835 (__x!31539 Int)) )
))
(declare-fun hashF!1389 () Hashable!5836)

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!12748 0))(
  ( (K!12749 (val!18469 Int)) )
))
(declare-fun key!4968 () K!12748)

(declare-fun hash!3390 (Hashable!5836 K!12748) (_ BitVec 64))

(assert (=> b!4615099 (= res!1933467 (= (hash!3390 hashF!1389 key!4968) hash!414))))

(declare-fun b!4615100 () Bool)

(declare-fun e!2878722 () Bool)

(declare-fun e!2878731 () Bool)

(assert (=> b!4615100 (= e!2878722 e!2878731)))

(declare-fun res!1933456 () Bool)

(assert (=> b!4615100 (=> res!1933456 e!2878731)))

(declare-datatypes ((V!12994 0))(
  ( (V!12995 (val!18470 Int)) )
))
(declare-datatypes ((tuple2!52202 0))(
  ( (tuple2!52203 (_1!29395 K!12748) (_2!29395 V!12994)) )
))
(declare-datatypes ((List!51485 0))(
  ( (Nil!51361) (Cons!51361 (h!57371 tuple2!52202) (t!358487 List!51485)) )
))
(declare-fun lt!1770405 () List!51485)

(declare-fun newBucket!224 () List!51485)

(assert (=> b!4615100 (= res!1933456 (not (= lt!1770405 newBucket!224)))))

(declare-fun oldBucket!40 () List!51485)

(declare-fun tail!8086 (List!51485) List!51485)

(assert (=> b!4615100 (= lt!1770405 (tail!8086 oldBucket!40))))

(declare-fun b!4615101 () Bool)

(declare-fun res!1933471 () Bool)

(declare-fun e!2878730 () Bool)

(assert (=> b!4615101 (=> (not res!1933471) (not e!2878730))))

(declare-fun noDuplicateKeys!1439 (List!51485) Bool)

(assert (=> b!4615101 (= res!1933471 (noDuplicateKeys!1439 newBucket!224))))

(declare-fun b!4615102 () Bool)

(declare-fun res!1933472 () Bool)

(assert (=> b!4615102 (=> (not res!1933472) (not e!2878730))))

(declare-fun removePairForKey!1062 (List!51485 K!12748) List!51485)

(assert (=> b!4615102 (= res!1933472 (= (removePairForKey!1062 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4615103 () Bool)

(declare-fun e!2878725 () Bool)

(declare-fun e!2878726 () Bool)

(assert (=> b!4615103 (= e!2878725 e!2878726)))

(declare-fun res!1933468 () Bool)

(assert (=> b!4615103 (=> res!1933468 e!2878726)))

(declare-datatypes ((ListMap!4147 0))(
  ( (ListMap!4148 (toList!4843 List!51485)) )
))
(declare-fun lt!1770407 () ListMap!4147)

(declare-fun lt!1770404 () ListMap!4147)

(declare-fun eq!782 (ListMap!4147 ListMap!4147) Bool)

(assert (=> b!4615103 (= res!1933468 (not (eq!782 lt!1770407 lt!1770404)))))

(declare-fun addToMapMapFromBucket!900 (List!51485 ListMap!4147) ListMap!4147)

(assert (=> b!4615103 (= lt!1770404 (addToMapMapFromBucket!900 oldBucket!40 (ListMap!4148 Nil!51361)))))

(declare-fun lt!1770412 () ListMap!4147)

(declare-fun +!1824 (ListMap!4147 tuple2!52202) ListMap!4147)

(assert (=> b!4615103 (= lt!1770407 (+!1824 lt!1770412 (h!57371 oldBucket!40)))))

(declare-fun lt!1770401 () tuple2!52202)

(assert (=> b!4615103 (eq!782 (addToMapMapFromBucket!900 (Cons!51361 lt!1770401 lt!1770405) (ListMap!4148 Nil!51361)) (+!1824 lt!1770412 lt!1770401))))

(declare-datatypes ((Unit!110010 0))(
  ( (Unit!110011) )
))
(declare-fun lt!1770402 () Unit!110010)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!33 (tuple2!52202 List!51485 ListMap!4147) Unit!110010)

(assert (=> b!4615103 (= lt!1770402 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!33 lt!1770401 lt!1770405 (ListMap!4148 Nil!51361)))))

(declare-fun head!9599 (List!51485) tuple2!52202)

(assert (=> b!4615103 (= lt!1770401 (head!9599 oldBucket!40))))

(declare-fun b!4615104 () Bool)

(assert (=> b!4615104 (= e!2878729 (not e!2878722))))

(declare-fun res!1933460 () Bool)

(assert (=> b!4615104 (=> res!1933460 e!2878722)))

(assert (=> b!4615104 (= res!1933460 (or (not (is-Cons!51361 oldBucket!40)) (not (= (_1!29395 (h!57371 oldBucket!40)) key!4968))))))

(declare-fun e!2878732 () Bool)

(assert (=> b!4615104 e!2878732))

(declare-fun res!1933464 () Bool)

(assert (=> b!4615104 (=> (not res!1933464) (not e!2878732))))

(declare-fun lt!1770399 () ListMap!4147)

(declare-fun lt!1770406 () ListMap!4147)

(assert (=> b!4615104 (= res!1933464 (= lt!1770399 (addToMapMapFromBucket!900 oldBucket!40 lt!1770406)))))

(declare-datatypes ((tuple2!52204 0))(
  ( (tuple2!52205 (_1!29396 (_ BitVec 64)) (_2!29396 List!51485)) )
))
(declare-datatypes ((List!51486 0))(
  ( (Nil!51362) (Cons!51362 (h!57372 tuple2!52204) (t!358488 List!51486)) )
))
(declare-fun extractMap!1495 (List!51486) ListMap!4147)

(assert (=> b!4615104 (= lt!1770406 (extractMap!1495 Nil!51362))))

(assert (=> b!4615104 true))

(declare-fun b!4615105 () Bool)

(declare-fun e!2878724 () Bool)

(assert (=> b!4615105 (= e!2878726 e!2878724)))

(declare-fun res!1933465 () Bool)

(assert (=> b!4615105 (=> res!1933465 e!2878724)))

(declare-fun contains!14325 (ListMap!4147 K!12748) Bool)

(assert (=> b!4615105 (= res!1933465 (contains!14325 lt!1770412 key!4968))))

(declare-fun lt!1770398 () ListMap!4147)

(assert (=> b!4615105 (not (contains!14325 lt!1770398 key!4968))))

(declare-fun lt!1770400 () Unit!110010)

(declare-fun lt!1770403 () List!51486)

(declare-datatypes ((ListLongMap!3433 0))(
  ( (ListLongMap!3434 (toList!4844 List!51486)) )
))
(declare-fun lemmaNotInItsHashBucketThenNotInMap!353 (ListLongMap!3433 K!12748 Hashable!5836) Unit!110010)

(assert (=> b!4615105 (= lt!1770400 (lemmaNotInItsHashBucketThenNotInMap!353 (ListLongMap!3434 lt!1770403) key!4968 hashF!1389))))

(declare-fun b!4615106 () Bool)

(declare-fun e!2878727 () Bool)

(assert (=> b!4615106 (= e!2878727 e!2878725)))

(declare-fun res!1933458 () Bool)

(assert (=> b!4615106 (=> res!1933458 e!2878725)))

(assert (=> b!4615106 (= res!1933458 (not (= lt!1770412 (addToMapMapFromBucket!900 newBucket!224 (ListMap!4148 Nil!51361)))))))

(assert (=> b!4615106 (= lt!1770412 (addToMapMapFromBucket!900 lt!1770405 (ListMap!4148 Nil!51361)))))

(declare-fun b!4615107 () Bool)

(declare-fun e!2878721 () Bool)

(declare-fun lt!1770410 () List!51486)

(declare-fun lambda!189201 () Int)

(declare-fun forall!10735 (List!51486 Int) Bool)

(assert (=> b!4615107 (= e!2878721 (forall!10735 lt!1770410 lambda!189201))))

(declare-fun lt!1770411 () ListMap!4147)

(declare-fun -!529 (ListMap!4147 K!12748) ListMap!4147)

(assert (=> b!4615107 (eq!782 lt!1770411 (-!529 lt!1770399 key!4968))))

(declare-fun lt!1770408 () Unit!110010)

(declare-fun lemmaRemovePreservesEq!1 (ListMap!4147 ListMap!4147 K!12748) Unit!110010)

(assert (=> b!4615107 (= lt!1770408 (lemmaRemovePreservesEq!1 lt!1770407 lt!1770399 key!4968))))

(declare-fun b!4615108 () Bool)

(declare-fun res!1933463 () Bool)

(assert (=> b!4615108 (=> res!1933463 e!2878721)))

(assert (=> b!4615108 (= res!1933463 (not (eq!782 lt!1770407 lt!1770399)))))

(declare-fun b!4615109 () Bool)

(assert (=> b!4615109 (= e!2878724 e!2878721)))

(declare-fun res!1933459 () Bool)

(assert (=> b!4615109 (=> res!1933459 e!2878721)))

(assert (=> b!4615109 (= res!1933459 (or (not (= lt!1770411 lt!1770412)) (not (= lt!1770399 lt!1770404))))))

(assert (=> b!4615109 (= lt!1770411 (-!529 lt!1770407 key!4968))))

(assert (=> b!4615109 (= (-!529 (+!1824 lt!1770412 (tuple2!52203 key!4968 (_2!29395 (h!57371 oldBucket!40)))) key!4968) lt!1770412)))

(declare-fun lt!1770409 () Unit!110010)

(declare-fun addThenRemoveForNewKeyIsSame!12 (ListMap!4147 K!12748 V!12994) Unit!110010)

(assert (=> b!4615109 (= lt!1770409 (addThenRemoveForNewKeyIsSame!12 lt!1770412 key!4968 (_2!29395 (h!57371 oldBucket!40))))))

(declare-fun b!4615110 () Bool)

(assert (=> b!4615110 (= e!2878730 e!2878729)))

(declare-fun res!1933455 () Bool)

(assert (=> b!4615110 (=> (not res!1933455) (not e!2878729))))

(assert (=> b!4615110 (= res!1933455 (contains!14325 lt!1770399 key!4968))))

(assert (=> b!4615110 (= lt!1770399 (extractMap!1495 (Cons!51362 (tuple2!52205 hash!414 oldBucket!40) Nil!51362)))))

(declare-fun b!4615111 () Bool)

(declare-fun res!1933461 () Bool)

(assert (=> b!4615111 (=> res!1933461 e!2878726)))

(declare-fun containsKey!2317 (List!51485 K!12748) Bool)

(assert (=> b!4615111 (= res!1933461 (containsKey!2317 lt!1770405 key!4968))))

(declare-fun b!4615112 () Bool)

(declare-fun res!1933469 () Bool)

(assert (=> b!4615112 (=> (not res!1933469) (not e!2878729))))

(declare-fun allKeysSameHash!1293 (List!51485 (_ BitVec 64) Hashable!5836) Bool)

(assert (=> b!4615112 (= res!1933469 (allKeysSameHash!1293 newBucket!224 hash!414 hashF!1389))))

(declare-fun tp!1341544 () Bool)

(declare-fun b!4615097 () Bool)

(declare-fun e!2878728 () Bool)

(assert (=> b!4615097 (= e!2878728 (and tp_is_empty!29049 tp_is_empty!29051 tp!1341544))))

(declare-fun res!1933470 () Bool)

(assert (=> start!461658 (=> (not res!1933470) (not e!2878730))))

(assert (=> start!461658 (= res!1933470 (noDuplicateKeys!1439 oldBucket!40))))

(assert (=> start!461658 e!2878730))

(assert (=> start!461658 true))

(assert (=> start!461658 e!2878723))

(assert (=> start!461658 tp_is_empty!29049))

(assert (=> start!461658 e!2878728))

(declare-fun b!4615113 () Bool)

(assert (=> b!4615113 (= e!2878731 e!2878727)))

(declare-fun res!1933462 () Bool)

(assert (=> b!4615113 (=> res!1933462 e!2878727)))

(assert (=> b!4615113 (= res!1933462 (not (= lt!1770398 (extractMap!1495 lt!1770410))))))

(assert (=> b!4615113 (= lt!1770398 (extractMap!1495 lt!1770403))))

(assert (=> b!4615113 (= lt!1770410 (Cons!51362 (tuple2!52205 hash!414 newBucket!224) Nil!51362))))

(assert (=> b!4615113 (= lt!1770403 (Cons!51362 (tuple2!52205 hash!414 lt!1770405) Nil!51362))))

(declare-fun b!4615114 () Bool)

(declare-fun res!1933466 () Bool)

(assert (=> b!4615114 (=> (not res!1933466) (not e!2878730))))

(assert (=> b!4615114 (= res!1933466 (allKeysSameHash!1293 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4615115 () Bool)

(declare-fun res!1933457 () Bool)

(assert (=> b!4615115 (=> res!1933457 e!2878726)))

(assert (=> b!4615115 (= res!1933457 (not (= lt!1770412 lt!1770398)))))

(declare-fun b!4615116 () Bool)

(assert (=> b!4615116 (= e!2878732 (= lt!1770406 (ListMap!4148 Nil!51361)))))

(assert (= (and start!461658 res!1933470) b!4615101))

(assert (= (and b!4615101 res!1933471) b!4615102))

(assert (= (and b!4615102 res!1933472) b!4615114))

(assert (= (and b!4615114 res!1933466) b!4615110))

(assert (= (and b!4615110 res!1933455) b!4615099))

(assert (= (and b!4615099 res!1933467) b!4615112))

(assert (= (and b!4615112 res!1933469) b!4615104))

(assert (= (and b!4615104 res!1933464) b!4615116))

(assert (= (and b!4615104 (not res!1933460)) b!4615100))

(assert (= (and b!4615100 (not res!1933456)) b!4615113))

(assert (= (and b!4615113 (not res!1933462)) b!4615106))

(assert (= (and b!4615106 (not res!1933458)) b!4615103))

(assert (= (and b!4615103 (not res!1933468)) b!4615111))

(assert (= (and b!4615111 (not res!1933461)) b!4615115))

(assert (= (and b!4615115 (not res!1933457)) b!4615105))

(assert (= (and b!4615105 (not res!1933465)) b!4615109))

(assert (= (and b!4615109 (not res!1933459)) b!4615108))

(assert (= (and b!4615108 (not res!1933463)) b!4615107))

(assert (= (and start!461658 (is-Cons!51361 oldBucket!40)) b!4615098))

(assert (= (and start!461658 (is-Cons!51361 newBucket!224)) b!4615097))

(declare-fun m!5447983 () Bool)

(assert (=> b!4615113 m!5447983))

(declare-fun m!5447985 () Bool)

(assert (=> b!4615113 m!5447985))

(declare-fun m!5447987 () Bool)

(assert (=> b!4615100 m!5447987))

(declare-fun m!5447989 () Bool)

(assert (=> b!4615104 m!5447989))

(declare-fun m!5447991 () Bool)

(assert (=> b!4615104 m!5447991))

(declare-fun m!5447993 () Bool)

(assert (=> b!4615108 m!5447993))

(declare-fun m!5447995 () Bool)

(assert (=> b!4615112 m!5447995))

(declare-fun m!5447997 () Bool)

(assert (=> b!4615106 m!5447997))

(declare-fun m!5447999 () Bool)

(assert (=> b!4615106 m!5447999))

(declare-fun m!5448001 () Bool)

(assert (=> b!4615105 m!5448001))

(declare-fun m!5448003 () Bool)

(assert (=> b!4615105 m!5448003))

(declare-fun m!5448005 () Bool)

(assert (=> b!4615105 m!5448005))

(declare-fun m!5448007 () Bool)

(assert (=> b!4615102 m!5448007))

(declare-fun m!5448009 () Bool)

(assert (=> b!4615111 m!5448009))

(declare-fun m!5448011 () Bool)

(assert (=> start!461658 m!5448011))

(declare-fun m!5448013 () Bool)

(assert (=> b!4615109 m!5448013))

(declare-fun m!5448015 () Bool)

(assert (=> b!4615109 m!5448015))

(assert (=> b!4615109 m!5448015))

(declare-fun m!5448017 () Bool)

(assert (=> b!4615109 m!5448017))

(declare-fun m!5448019 () Bool)

(assert (=> b!4615109 m!5448019))

(declare-fun m!5448021 () Bool)

(assert (=> b!4615110 m!5448021))

(declare-fun m!5448023 () Bool)

(assert (=> b!4615110 m!5448023))

(declare-fun m!5448025 () Bool)

(assert (=> b!4615107 m!5448025))

(declare-fun m!5448027 () Bool)

(assert (=> b!4615107 m!5448027))

(assert (=> b!4615107 m!5448027))

(declare-fun m!5448029 () Bool)

(assert (=> b!4615107 m!5448029))

(declare-fun m!5448031 () Bool)

(assert (=> b!4615107 m!5448031))

(declare-fun m!5448033 () Bool)

(assert (=> b!4615103 m!5448033))

(declare-fun m!5448035 () Bool)

(assert (=> b!4615103 m!5448035))

(declare-fun m!5448037 () Bool)

(assert (=> b!4615103 m!5448037))

(declare-fun m!5448039 () Bool)

(assert (=> b!4615103 m!5448039))

(declare-fun m!5448041 () Bool)

(assert (=> b!4615103 m!5448041))

(assert (=> b!4615103 m!5448033))

(declare-fun m!5448043 () Bool)

(assert (=> b!4615103 m!5448043))

(declare-fun m!5448045 () Bool)

(assert (=> b!4615103 m!5448045))

(declare-fun m!5448047 () Bool)

(assert (=> b!4615103 m!5448047))

(assert (=> b!4615103 m!5448043))

(declare-fun m!5448049 () Bool)

(assert (=> b!4615101 m!5448049))

(declare-fun m!5448051 () Bool)

(assert (=> b!4615099 m!5448051))

(declare-fun m!5448053 () Bool)

(assert (=> b!4615114 m!5448053))

(push 1)

(assert (not b!4615114))

(assert (not b!4615109))

(assert tp_is_empty!29049)

(assert (not b!4615108))

(assert (not b!4615099))

(assert (not b!4615105))

(assert (not b!4615103))

(assert (not b!4615102))

(assert tp_is_empty!29051)

(assert (not b!4615098))

(assert (not b!4615104))

(assert (not b!4615100))

(assert (not b!4615107))

(assert (not b!4615106))

(assert (not b!4615101))

(assert (not b!4615110))

(assert (not b!4615113))

(assert (not start!461658))

(assert (not b!4615097))

(assert (not b!4615111))

(assert (not b!4615112))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!4615187 () Bool)

(declare-fun e!2878773 () List!51485)

(assert (=> b!4615187 (= e!2878773 (Cons!51361 (h!57371 oldBucket!40) (removePairForKey!1062 (t!358487 oldBucket!40) key!4968)))))

(declare-fun b!4615188 () Bool)

(assert (=> b!4615188 (= e!2878773 Nil!51361)))

(declare-fun b!4615185 () Bool)

(declare-fun e!2878774 () List!51485)

(assert (=> b!4615185 (= e!2878774 (t!358487 oldBucket!40))))

(declare-fun b!4615186 () Bool)

(assert (=> b!4615186 (= e!2878774 e!2878773)))

(declare-fun c!790143 () Bool)

(assert (=> b!4615186 (= c!790143 (is-Cons!51361 oldBucket!40))))

(declare-fun d!1453686 () Bool)

(declare-fun lt!1770460 () List!51485)

(assert (=> d!1453686 (not (containsKey!2317 lt!1770460 key!4968))))

(assert (=> d!1453686 (= lt!1770460 e!2878774)))

(declare-fun c!790144 () Bool)

(assert (=> d!1453686 (= c!790144 (and (is-Cons!51361 oldBucket!40) (= (_1!29395 (h!57371 oldBucket!40)) key!4968)))))

(assert (=> d!1453686 (noDuplicateKeys!1439 oldBucket!40)))

(assert (=> d!1453686 (= (removePairForKey!1062 oldBucket!40 key!4968) lt!1770460)))

(assert (= (and d!1453686 c!790144) b!4615185))

(assert (= (and d!1453686 (not c!790144)) b!4615186))

(assert (= (and b!4615186 c!790143) b!4615187))

(assert (= (and b!4615186 (not c!790143)) b!4615188))

(declare-fun m!5448127 () Bool)

(assert (=> b!4615187 m!5448127))

(declare-fun m!5448129 () Bool)

(assert (=> d!1453686 m!5448129))

(assert (=> d!1453686 m!5448011))

(assert (=> b!4615102 d!1453686))

(declare-fun bs!1017546 () Bool)

(declare-fun d!1453688 () Bool)

(assert (= bs!1017546 (and d!1453688 b!4615107)))

(declare-fun lambda!189207 () Int)

(assert (=> bs!1017546 (= lambda!189207 lambda!189201)))

(declare-fun lt!1770463 () ListMap!4147)

(declare-fun invariantList!1164 (List!51485) Bool)

(assert (=> d!1453688 (invariantList!1164 (toList!4843 lt!1770463))))

(declare-fun e!2878777 () ListMap!4147)

(assert (=> d!1453688 (= lt!1770463 e!2878777)))

(declare-fun c!790147 () Bool)

(assert (=> d!1453688 (= c!790147 (is-Cons!51362 lt!1770410))))

(assert (=> d!1453688 (forall!10735 lt!1770410 lambda!189207)))

(assert (=> d!1453688 (= (extractMap!1495 lt!1770410) lt!1770463)))

(declare-fun b!4615193 () Bool)

(assert (=> b!4615193 (= e!2878777 (addToMapMapFromBucket!900 (_2!29396 (h!57372 lt!1770410)) (extractMap!1495 (t!358488 lt!1770410))))))

(declare-fun b!4615194 () Bool)

(assert (=> b!4615194 (= e!2878777 (ListMap!4148 Nil!51361))))

(assert (= (and d!1453688 c!790147) b!4615193))

(assert (= (and d!1453688 (not c!790147)) b!4615194))

(declare-fun m!5448131 () Bool)

(assert (=> d!1453688 m!5448131))

(declare-fun m!5448133 () Bool)

(assert (=> d!1453688 m!5448133))

(declare-fun m!5448135 () Bool)

(assert (=> b!4615193 m!5448135))

(assert (=> b!4615193 m!5448135))

(declare-fun m!5448137 () Bool)

(assert (=> b!4615193 m!5448137))

(assert (=> b!4615113 d!1453688))

(declare-fun bs!1017547 () Bool)

(declare-fun d!1453690 () Bool)

(assert (= bs!1017547 (and d!1453690 b!4615107)))

(declare-fun lambda!189208 () Int)

(assert (=> bs!1017547 (= lambda!189208 lambda!189201)))

(declare-fun bs!1017548 () Bool)

(assert (= bs!1017548 (and d!1453690 d!1453688)))

(assert (=> bs!1017548 (= lambda!189208 lambda!189207)))

(declare-fun lt!1770464 () ListMap!4147)

(assert (=> d!1453690 (invariantList!1164 (toList!4843 lt!1770464))))

(declare-fun e!2878778 () ListMap!4147)

(assert (=> d!1453690 (= lt!1770464 e!2878778)))

(declare-fun c!790148 () Bool)

(assert (=> d!1453690 (= c!790148 (is-Cons!51362 lt!1770403))))

(assert (=> d!1453690 (forall!10735 lt!1770403 lambda!189208)))

(assert (=> d!1453690 (= (extractMap!1495 lt!1770403) lt!1770464)))

(declare-fun b!4615195 () Bool)

(assert (=> b!4615195 (= e!2878778 (addToMapMapFromBucket!900 (_2!29396 (h!57372 lt!1770403)) (extractMap!1495 (t!358488 lt!1770403))))))

(declare-fun b!4615196 () Bool)

(assert (=> b!4615196 (= e!2878778 (ListMap!4148 Nil!51361))))

(assert (= (and d!1453690 c!790148) b!4615195))

(assert (= (and d!1453690 (not c!790148)) b!4615196))

(declare-fun m!5448139 () Bool)

(assert (=> d!1453690 m!5448139))

(declare-fun m!5448141 () Bool)

(assert (=> d!1453690 m!5448141))

(declare-fun m!5448143 () Bool)

(assert (=> b!4615195 m!5448143))

(assert (=> b!4615195 m!5448143))

(declare-fun m!5448145 () Bool)

(assert (=> b!4615195 m!5448145))

(assert (=> b!4615113 d!1453690))

(declare-fun d!1453692 () Bool)

(declare-fun e!2878781 () Bool)

(assert (=> d!1453692 e!2878781))

(declare-fun res!1933531 () Bool)

(assert (=> d!1453692 (=> (not res!1933531) (not e!2878781))))

(declare-fun lt!1770476 () ListMap!4147)

(assert (=> d!1453692 (= res!1933531 (contains!14325 lt!1770476 (_1!29395 (h!57371 oldBucket!40))))))

(declare-fun lt!1770474 () List!51485)

(assert (=> d!1453692 (= lt!1770476 (ListMap!4148 lt!1770474))))

(declare-fun lt!1770475 () Unit!110010)

(declare-fun lt!1770473 () Unit!110010)

(assert (=> d!1453692 (= lt!1770475 lt!1770473)))

(declare-datatypes ((Option!11467 0))(
  ( (None!11466) (Some!11466 (v!45532 V!12994)) )
))
(declare-fun getValueByKey!1381 (List!51485 K!12748) Option!11467)

(assert (=> d!1453692 (= (getValueByKey!1381 lt!1770474 (_1!29395 (h!57371 oldBucket!40))) (Some!11466 (_2!29395 (h!57371 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!817 (List!51485 K!12748 V!12994) Unit!110010)

(assert (=> d!1453692 (= lt!1770473 (lemmaContainsTupThenGetReturnValue!817 lt!1770474 (_1!29395 (h!57371 oldBucket!40)) (_2!29395 (h!57371 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!325 (List!51485 K!12748 V!12994) List!51485)

(assert (=> d!1453692 (= lt!1770474 (insertNoDuplicatedKeys!325 (toList!4843 lt!1770412) (_1!29395 (h!57371 oldBucket!40)) (_2!29395 (h!57371 oldBucket!40))))))

(assert (=> d!1453692 (= (+!1824 lt!1770412 (h!57371 oldBucket!40)) lt!1770476)))

(declare-fun b!4615201 () Bool)

(declare-fun res!1933532 () Bool)

(assert (=> b!4615201 (=> (not res!1933532) (not e!2878781))))

(assert (=> b!4615201 (= res!1933532 (= (getValueByKey!1381 (toList!4843 lt!1770476) (_1!29395 (h!57371 oldBucket!40))) (Some!11466 (_2!29395 (h!57371 oldBucket!40)))))))

(declare-fun b!4615202 () Bool)

(declare-fun contains!14327 (List!51485 tuple2!52202) Bool)

(assert (=> b!4615202 (= e!2878781 (contains!14327 (toList!4843 lt!1770476) (h!57371 oldBucket!40)))))

(assert (= (and d!1453692 res!1933531) b!4615201))

(assert (= (and b!4615201 res!1933532) b!4615202))

(declare-fun m!5448147 () Bool)

(assert (=> d!1453692 m!5448147))

(declare-fun m!5448149 () Bool)

(assert (=> d!1453692 m!5448149))

(declare-fun m!5448151 () Bool)

(assert (=> d!1453692 m!5448151))

(declare-fun m!5448153 () Bool)

(assert (=> d!1453692 m!5448153))

(declare-fun m!5448155 () Bool)

(assert (=> b!4615201 m!5448155))

(declare-fun m!5448157 () Bool)

(assert (=> b!4615202 m!5448157))

(assert (=> b!4615103 d!1453692))

(declare-fun b!4615233 () Bool)

(assert (=> b!4615233 true))

(declare-fun bs!1017556 () Bool)

(declare-fun b!4615230 () Bool)

(assert (= bs!1017556 (and b!4615230 b!4615233)))

(declare-fun lambda!189252 () Int)

(declare-fun lambda!189249 () Int)

(assert (=> bs!1017556 (= lambda!189252 lambda!189249)))

(assert (=> b!4615230 true))

(declare-fun lt!1770548 () ListMap!4147)

(declare-fun lambda!189253 () Int)

(assert (=> bs!1017556 (= (= lt!1770548 (ListMap!4148 Nil!51361)) (= lambda!189253 lambda!189249))))

(assert (=> b!4615230 (= (= lt!1770548 (ListMap!4148 Nil!51361)) (= lambda!189253 lambda!189252))))

(assert (=> b!4615230 true))

(declare-fun bs!1017557 () Bool)

(declare-fun d!1453696 () Bool)

(assert (= bs!1017557 (and d!1453696 b!4615233)))

(declare-fun lt!1770543 () ListMap!4147)

(declare-fun lambda!189256 () Int)

(assert (=> bs!1017557 (= (= lt!1770543 (ListMap!4148 Nil!51361)) (= lambda!189256 lambda!189249))))

(declare-fun bs!1017558 () Bool)

(assert (= bs!1017558 (and d!1453696 b!4615230)))

(assert (=> bs!1017558 (= (= lt!1770543 (ListMap!4148 Nil!51361)) (= lambda!189256 lambda!189252))))

(assert (=> bs!1017558 (= (= lt!1770543 lt!1770548) (= lambda!189256 lambda!189253))))

(assert (=> d!1453696 true))

(declare-fun b!4615229 () Bool)

(declare-fun res!1933540 () Bool)

(declare-fun e!2878794 () Bool)

(assert (=> b!4615229 (=> (not res!1933540) (not e!2878794))))

(declare-fun forall!10737 (List!51485 Int) Bool)

(assert (=> b!4615229 (= res!1933540 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) lambda!189256))))

(assert (=> d!1453696 e!2878794))

(declare-fun res!1933539 () Bool)

(assert (=> d!1453696 (=> (not res!1933539) (not e!2878794))))

(assert (=> d!1453696 (= res!1933539 (forall!10737 (Cons!51361 lt!1770401 lt!1770405) lambda!189256))))

(declare-fun e!2878795 () ListMap!4147)

(assert (=> d!1453696 (= lt!1770543 e!2878795)))

(declare-fun c!790157 () Bool)

(assert (=> d!1453696 (= c!790157 (is-Nil!51361 (Cons!51361 lt!1770401 lt!1770405)))))

(assert (=> d!1453696 (noDuplicateKeys!1439 (Cons!51361 lt!1770401 lt!1770405))))

(assert (=> d!1453696 (= (addToMapMapFromBucket!900 (Cons!51361 lt!1770401 lt!1770405) (ListMap!4148 Nil!51361)) lt!1770543)))

(declare-fun call!321740 () Bool)

(declare-fun bm!321733 () Bool)

(assert (=> bm!321733 (= call!321740 (forall!10737 (ite c!790157 (toList!4843 (ListMap!4148 Nil!51361)) (t!358487 (Cons!51361 lt!1770401 lt!1770405))) (ite c!790157 lambda!189249 lambda!189253)))))

(assert (=> b!4615230 (= e!2878795 lt!1770548)))

(declare-fun lt!1770535 () ListMap!4147)

(assert (=> b!4615230 (= lt!1770535 (+!1824 (ListMap!4148 Nil!51361) (h!57371 (Cons!51361 lt!1770401 lt!1770405))))))

(assert (=> b!4615230 (= lt!1770548 (addToMapMapFromBucket!900 (t!358487 (Cons!51361 lt!1770401 lt!1770405)) (+!1824 (ListMap!4148 Nil!51361) (h!57371 (Cons!51361 lt!1770401 lt!1770405)))))))

(declare-fun lt!1770539 () Unit!110010)

(declare-fun call!321738 () Unit!110010)

(assert (=> b!4615230 (= lt!1770539 call!321738)))

(assert (=> b!4615230 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) lambda!189252)))

(declare-fun lt!1770546 () Unit!110010)

(assert (=> b!4615230 (= lt!1770546 lt!1770539)))

(assert (=> b!4615230 (forall!10737 (toList!4843 lt!1770535) lambda!189253)))

(declare-fun lt!1770550 () Unit!110010)

(declare-fun Unit!110014 () Unit!110010)

(assert (=> b!4615230 (= lt!1770550 Unit!110014)))

(assert (=> b!4615230 call!321740))

(declare-fun lt!1770553 () Unit!110010)

(declare-fun Unit!110015 () Unit!110010)

(assert (=> b!4615230 (= lt!1770553 Unit!110015)))

(declare-fun lt!1770549 () Unit!110010)

(declare-fun Unit!110016 () Unit!110010)

(assert (=> b!4615230 (= lt!1770549 Unit!110016)))

(declare-fun lt!1770531 () Unit!110010)

(declare-fun forallContained!2958 (List!51485 Int tuple2!52202) Unit!110010)

(assert (=> b!4615230 (= lt!1770531 (forallContained!2958 (toList!4843 lt!1770535) lambda!189253 (h!57371 (Cons!51361 lt!1770401 lt!1770405))))))

(assert (=> b!4615230 (contains!14325 lt!1770535 (_1!29395 (h!57371 (Cons!51361 lt!1770401 lt!1770405))))))

(declare-fun lt!1770537 () Unit!110010)

(declare-fun Unit!110017 () Unit!110010)

(assert (=> b!4615230 (= lt!1770537 Unit!110017)))

(assert (=> b!4615230 (contains!14325 lt!1770548 (_1!29395 (h!57371 (Cons!51361 lt!1770401 lt!1770405))))))

(declare-fun lt!1770532 () Unit!110010)

(declare-fun Unit!110018 () Unit!110010)

(assert (=> b!4615230 (= lt!1770532 Unit!110018)))

(assert (=> b!4615230 (forall!10737 (Cons!51361 lt!1770401 lt!1770405) lambda!189253)))

(declare-fun lt!1770547 () Unit!110010)

(declare-fun Unit!110019 () Unit!110010)

(assert (=> b!4615230 (= lt!1770547 Unit!110019)))

(assert (=> b!4615230 (forall!10737 (toList!4843 lt!1770535) lambda!189253)))

(declare-fun lt!1770540 () Unit!110010)

(declare-fun Unit!110020 () Unit!110010)

(assert (=> b!4615230 (= lt!1770540 Unit!110020)))

(declare-fun lt!1770538 () Unit!110010)

(declare-fun Unit!110021 () Unit!110010)

(assert (=> b!4615230 (= lt!1770538 Unit!110021)))

(declare-fun lt!1770551 () Unit!110010)

(declare-fun addForallContainsKeyThenBeforeAdding!465 (ListMap!4147 ListMap!4147 K!12748 V!12994) Unit!110010)

(assert (=> b!4615230 (= lt!1770551 (addForallContainsKeyThenBeforeAdding!465 (ListMap!4148 Nil!51361) lt!1770548 (_1!29395 (h!57371 (Cons!51361 lt!1770401 lt!1770405))) (_2!29395 (h!57371 (Cons!51361 lt!1770401 lt!1770405)))))))

(assert (=> b!4615230 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) lambda!189253)))

(declare-fun lt!1770533 () Unit!110010)

(assert (=> b!4615230 (= lt!1770533 lt!1770551)))

(declare-fun call!321739 () Bool)

(assert (=> b!4615230 call!321739))

(declare-fun lt!1770534 () Unit!110010)

(declare-fun Unit!110022 () Unit!110010)

(assert (=> b!4615230 (= lt!1770534 Unit!110022)))

(declare-fun res!1933541 () Bool)

(assert (=> b!4615230 (= res!1933541 (forall!10737 (Cons!51361 lt!1770401 lt!1770405) lambda!189253))))

(declare-fun e!2878796 () Bool)

(assert (=> b!4615230 (=> (not res!1933541) (not e!2878796))))

(assert (=> b!4615230 e!2878796))

(declare-fun lt!1770536 () Unit!110010)

(declare-fun Unit!110023 () Unit!110010)

(assert (=> b!4615230 (= lt!1770536 Unit!110023)))

(declare-fun bm!321734 () Bool)

(assert (=> bm!321734 (= call!321739 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) (ite c!790157 lambda!189249 lambda!189253)))))

(declare-fun b!4615231 () Bool)

(assert (=> b!4615231 (= e!2878794 (invariantList!1164 (toList!4843 lt!1770543)))))

(declare-fun b!4615232 () Bool)

(assert (=> b!4615232 (= e!2878796 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) lambda!189253))))

(declare-fun bm!321735 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!466 (ListMap!4147) Unit!110010)

(assert (=> bm!321735 (= call!321738 (lemmaContainsAllItsOwnKeys!466 (ListMap!4148 Nil!51361)))))

(assert (=> b!4615233 (= e!2878795 (ListMap!4148 Nil!51361))))

(declare-fun lt!1770552 () Unit!110010)

(assert (=> b!4615233 (= lt!1770552 call!321738)))

(assert (=> b!4615233 call!321740))

(declare-fun lt!1770544 () Unit!110010)

(assert (=> b!4615233 (= lt!1770544 lt!1770552)))

(assert (=> b!4615233 call!321739))

(declare-fun lt!1770545 () Unit!110010)

(declare-fun Unit!110024 () Unit!110010)

(assert (=> b!4615233 (= lt!1770545 Unit!110024)))

(assert (= (and d!1453696 c!790157) b!4615233))

(assert (= (and d!1453696 (not c!790157)) b!4615230))

(assert (= (and b!4615230 res!1933541) b!4615232))

(assert (= (or b!4615233 b!4615230) bm!321735))

(assert (= (or b!4615233 b!4615230) bm!321733))

(assert (= (or b!4615233 b!4615230) bm!321734))

(assert (= (and d!1453696 res!1933539) b!4615229))

(assert (= (and b!4615229 res!1933540) b!4615231))

(declare-fun m!5448183 () Bool)

(assert (=> bm!321734 m!5448183))

(declare-fun m!5448185 () Bool)

(assert (=> b!4615229 m!5448185))

(declare-fun m!5448187 () Bool)

(assert (=> b!4615230 m!5448187))

(declare-fun m!5448189 () Bool)

(assert (=> b!4615230 m!5448189))

(declare-fun m!5448191 () Bool)

(assert (=> b!4615230 m!5448191))

(declare-fun m!5448193 () Bool)

(assert (=> b!4615230 m!5448193))

(declare-fun m!5448195 () Bool)

(assert (=> b!4615230 m!5448195))

(declare-fun m!5448197 () Bool)

(assert (=> b!4615230 m!5448197))

(assert (=> b!4615230 m!5448187))

(declare-fun m!5448199 () Bool)

(assert (=> b!4615230 m!5448199))

(declare-fun m!5448201 () Bool)

(assert (=> b!4615230 m!5448201))

(assert (=> b!4615230 m!5448199))

(declare-fun m!5448203 () Bool)

(assert (=> b!4615230 m!5448203))

(assert (=> b!4615230 m!5448191))

(declare-fun m!5448205 () Bool)

(assert (=> b!4615230 m!5448205))

(declare-fun m!5448207 () Bool)

(assert (=> b!4615231 m!5448207))

(declare-fun m!5448209 () Bool)

(assert (=> d!1453696 m!5448209))

(declare-fun m!5448211 () Bool)

(assert (=> d!1453696 m!5448211))

(declare-fun m!5448213 () Bool)

(assert (=> bm!321733 m!5448213))

(declare-fun m!5448215 () Bool)

(assert (=> bm!321735 m!5448215))

(assert (=> b!4615232 m!5448203))

(assert (=> b!4615103 d!1453696))

(declare-fun d!1453710 () Bool)

(declare-fun content!8722 (List!51485) (Set tuple2!52202))

(assert (=> d!1453710 (= (eq!782 (addToMapMapFromBucket!900 (Cons!51361 lt!1770401 lt!1770405) (ListMap!4148 Nil!51361)) (+!1824 lt!1770412 lt!1770401)) (= (content!8722 (toList!4843 (addToMapMapFromBucket!900 (Cons!51361 lt!1770401 lt!1770405) (ListMap!4148 Nil!51361)))) (content!8722 (toList!4843 (+!1824 lt!1770412 lt!1770401)))))))

(declare-fun bs!1017559 () Bool)

(assert (= bs!1017559 d!1453710))

(declare-fun m!5448217 () Bool)

(assert (=> bs!1017559 m!5448217))

(declare-fun m!5448219 () Bool)

(assert (=> bs!1017559 m!5448219))

(assert (=> b!4615103 d!1453710))

(declare-fun d!1453712 () Bool)

(assert (=> d!1453712 (eq!782 (addToMapMapFromBucket!900 (Cons!51361 lt!1770401 lt!1770405) (ListMap!4148 Nil!51361)) (+!1824 (addToMapMapFromBucket!900 lt!1770405 (ListMap!4148 Nil!51361)) lt!1770401))))

(declare-fun lt!1770588 () Unit!110010)

(declare-fun choose!31069 (tuple2!52202 List!51485 ListMap!4147) Unit!110010)

(assert (=> d!1453712 (= lt!1770588 (choose!31069 lt!1770401 lt!1770405 (ListMap!4148 Nil!51361)))))

(assert (=> d!1453712 (noDuplicateKeys!1439 lt!1770405)))

(assert (=> d!1453712 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!33 lt!1770401 lt!1770405 (ListMap!4148 Nil!51361)) lt!1770588)))

(declare-fun bs!1017560 () Bool)

(assert (= bs!1017560 d!1453712))

(assert (=> bs!1017560 m!5448033))

(assert (=> bs!1017560 m!5447999))

(declare-fun m!5448221 () Bool)

(assert (=> bs!1017560 m!5448221))

(declare-fun m!5448223 () Bool)

(assert (=> bs!1017560 m!5448223))

(assert (=> bs!1017560 m!5448033))

(assert (=> bs!1017560 m!5448221))

(declare-fun m!5448225 () Bool)

(assert (=> bs!1017560 m!5448225))

(assert (=> bs!1017560 m!5447999))

(declare-fun m!5448227 () Bool)

(assert (=> bs!1017560 m!5448227))

(assert (=> b!4615103 d!1453712))

(declare-fun d!1453714 () Bool)

(assert (=> d!1453714 (= (eq!782 lt!1770407 lt!1770404) (= (content!8722 (toList!4843 lt!1770407)) (content!8722 (toList!4843 lt!1770404))))))

(declare-fun bs!1017561 () Bool)

(assert (= bs!1017561 d!1453714))

(declare-fun m!5448229 () Bool)

(assert (=> bs!1017561 m!5448229))

(declare-fun m!5448231 () Bool)

(assert (=> bs!1017561 m!5448231))

(assert (=> b!4615103 d!1453714))

(declare-fun d!1453716 () Bool)

(assert (=> d!1453716 (= (head!9599 oldBucket!40) (h!57371 oldBucket!40))))

(assert (=> b!4615103 d!1453716))

(declare-fun bs!1017563 () Bool)

(declare-fun b!4615251 () Bool)

(assert (= bs!1017563 (and b!4615251 b!4615233)))

(declare-fun lambda!189278 () Int)

(assert (=> bs!1017563 (= lambda!189278 lambda!189249)))

(declare-fun bs!1017565 () Bool)

(assert (= bs!1017565 (and b!4615251 b!4615230)))

(assert (=> bs!1017565 (= lambda!189278 lambda!189252)))

(assert (=> bs!1017565 (= (= (ListMap!4148 Nil!51361) lt!1770548) (= lambda!189278 lambda!189253))))

(declare-fun bs!1017566 () Bool)

(assert (= bs!1017566 (and b!4615251 d!1453696)))

(assert (=> bs!1017566 (= (= (ListMap!4148 Nil!51361) lt!1770543) (= lambda!189278 lambda!189256))))

(assert (=> b!4615251 true))

(declare-fun bs!1017570 () Bool)

(declare-fun b!4615248 () Bool)

(assert (= bs!1017570 (and b!4615248 b!4615233)))

(declare-fun lambda!189280 () Int)

(assert (=> bs!1017570 (= lambda!189280 lambda!189249)))

(declare-fun bs!1017571 () Bool)

(assert (= bs!1017571 (and b!4615248 b!4615251)))

(assert (=> bs!1017571 (= lambda!189280 lambda!189278)))

(declare-fun bs!1017572 () Bool)

(assert (= bs!1017572 (and b!4615248 d!1453696)))

(assert (=> bs!1017572 (= (= (ListMap!4148 Nil!51361) lt!1770543) (= lambda!189280 lambda!189256))))

(declare-fun bs!1017573 () Bool)

(assert (= bs!1017573 (and b!4615248 b!4615230)))

(assert (=> bs!1017573 (= (= (ListMap!4148 Nil!51361) lt!1770548) (= lambda!189280 lambda!189253))))

(assert (=> bs!1017573 (= lambda!189280 lambda!189252)))

(assert (=> b!4615248 true))

(declare-fun lt!1770625 () ListMap!4147)

(declare-fun lambda!189282 () Int)

(assert (=> bs!1017570 (= (= lt!1770625 (ListMap!4148 Nil!51361)) (= lambda!189282 lambda!189249))))

(assert (=> bs!1017571 (= (= lt!1770625 (ListMap!4148 Nil!51361)) (= lambda!189282 lambda!189278))))

(assert (=> b!4615248 (= (= lt!1770625 (ListMap!4148 Nil!51361)) (= lambda!189282 lambda!189280))))

(assert (=> bs!1017572 (= (= lt!1770625 lt!1770543) (= lambda!189282 lambda!189256))))

(assert (=> bs!1017573 (= (= lt!1770625 lt!1770548) (= lambda!189282 lambda!189253))))

(assert (=> bs!1017573 (= (= lt!1770625 (ListMap!4148 Nil!51361)) (= lambda!189282 lambda!189252))))

(assert (=> b!4615248 true))

(declare-fun bs!1017578 () Bool)

(declare-fun d!1453718 () Bool)

(assert (= bs!1017578 (and d!1453718 b!4615233)))

(declare-fun lt!1770620 () ListMap!4147)

(declare-fun lambda!189284 () Int)

(assert (=> bs!1017578 (= (= lt!1770620 (ListMap!4148 Nil!51361)) (= lambda!189284 lambda!189249))))

(declare-fun bs!1017579 () Bool)

(assert (= bs!1017579 (and d!1453718 b!4615251)))

(assert (=> bs!1017579 (= (= lt!1770620 (ListMap!4148 Nil!51361)) (= lambda!189284 lambda!189278))))

(declare-fun bs!1017580 () Bool)

(assert (= bs!1017580 (and d!1453718 b!4615248)))

(assert (=> bs!1017580 (= (= lt!1770620 (ListMap!4148 Nil!51361)) (= lambda!189284 lambda!189280))))

(declare-fun bs!1017581 () Bool)

(assert (= bs!1017581 (and d!1453718 d!1453696)))

(assert (=> bs!1017581 (= (= lt!1770620 lt!1770543) (= lambda!189284 lambda!189256))))

(declare-fun bs!1017582 () Bool)

(assert (= bs!1017582 (and d!1453718 b!4615230)))

(assert (=> bs!1017582 (= (= lt!1770620 lt!1770548) (= lambda!189284 lambda!189253))))

(assert (=> bs!1017580 (= (= lt!1770620 lt!1770625) (= lambda!189284 lambda!189282))))

(assert (=> bs!1017582 (= (= lt!1770620 (ListMap!4148 Nil!51361)) (= lambda!189284 lambda!189252))))

(assert (=> d!1453718 true))

(declare-fun b!4615247 () Bool)

(declare-fun res!1933552 () Bool)

(declare-fun e!2878804 () Bool)

(assert (=> b!4615247 (=> (not res!1933552) (not e!2878804))))

(assert (=> b!4615247 (= res!1933552 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) lambda!189284))))

(assert (=> d!1453718 e!2878804))

(declare-fun res!1933551 () Bool)

(assert (=> d!1453718 (=> (not res!1933551) (not e!2878804))))

(assert (=> d!1453718 (= res!1933551 (forall!10737 oldBucket!40 lambda!189284))))

(declare-fun e!2878805 () ListMap!4147)

(assert (=> d!1453718 (= lt!1770620 e!2878805)))

(declare-fun c!790159 () Bool)

(assert (=> d!1453718 (= c!790159 (is-Nil!51361 oldBucket!40))))

(assert (=> d!1453718 (noDuplicateKeys!1439 oldBucket!40)))

(assert (=> d!1453718 (= (addToMapMapFromBucket!900 oldBucket!40 (ListMap!4148 Nil!51361)) lt!1770620)))

(declare-fun call!321752 () Bool)

(declare-fun bm!321745 () Bool)

(assert (=> bm!321745 (= call!321752 (forall!10737 (ite c!790159 (toList!4843 (ListMap!4148 Nil!51361)) (t!358487 oldBucket!40)) (ite c!790159 lambda!189278 lambda!189282)))))

(assert (=> b!4615248 (= e!2878805 lt!1770625)))

(declare-fun lt!1770614 () ListMap!4147)

(assert (=> b!4615248 (= lt!1770614 (+!1824 (ListMap!4148 Nil!51361) (h!57371 oldBucket!40)))))

(assert (=> b!4615248 (= lt!1770625 (addToMapMapFromBucket!900 (t!358487 oldBucket!40) (+!1824 (ListMap!4148 Nil!51361) (h!57371 oldBucket!40))))))

(declare-fun lt!1770618 () Unit!110010)

(declare-fun call!321750 () Unit!110010)

(assert (=> b!4615248 (= lt!1770618 call!321750)))

(assert (=> b!4615248 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) lambda!189280)))

(declare-fun lt!1770623 () Unit!110010)

(assert (=> b!4615248 (= lt!1770623 lt!1770618)))

(assert (=> b!4615248 (forall!10737 (toList!4843 lt!1770614) lambda!189282)))

(declare-fun lt!1770627 () Unit!110010)

(declare-fun Unit!110025 () Unit!110010)

(assert (=> b!4615248 (= lt!1770627 Unit!110025)))

(assert (=> b!4615248 call!321752))

(declare-fun lt!1770630 () Unit!110010)

(declare-fun Unit!110026 () Unit!110010)

(assert (=> b!4615248 (= lt!1770630 Unit!110026)))

(declare-fun lt!1770626 () Unit!110010)

(declare-fun Unit!110027 () Unit!110010)

(assert (=> b!4615248 (= lt!1770626 Unit!110027)))

(declare-fun lt!1770610 () Unit!110010)

(assert (=> b!4615248 (= lt!1770610 (forallContained!2958 (toList!4843 lt!1770614) lambda!189282 (h!57371 oldBucket!40)))))

(assert (=> b!4615248 (contains!14325 lt!1770614 (_1!29395 (h!57371 oldBucket!40)))))

(declare-fun lt!1770616 () Unit!110010)

(declare-fun Unit!110028 () Unit!110010)

(assert (=> b!4615248 (= lt!1770616 Unit!110028)))

(assert (=> b!4615248 (contains!14325 lt!1770625 (_1!29395 (h!57371 oldBucket!40)))))

(declare-fun lt!1770611 () Unit!110010)

(declare-fun Unit!110029 () Unit!110010)

(assert (=> b!4615248 (= lt!1770611 Unit!110029)))

(assert (=> b!4615248 (forall!10737 oldBucket!40 lambda!189282)))

(declare-fun lt!1770624 () Unit!110010)

(declare-fun Unit!110030 () Unit!110010)

(assert (=> b!4615248 (= lt!1770624 Unit!110030)))

(assert (=> b!4615248 (forall!10737 (toList!4843 lt!1770614) lambda!189282)))

(declare-fun lt!1770619 () Unit!110010)

(declare-fun Unit!110031 () Unit!110010)

(assert (=> b!4615248 (= lt!1770619 Unit!110031)))

(declare-fun lt!1770617 () Unit!110010)

(declare-fun Unit!110032 () Unit!110010)

(assert (=> b!4615248 (= lt!1770617 Unit!110032)))

(declare-fun lt!1770628 () Unit!110010)

(assert (=> b!4615248 (= lt!1770628 (addForallContainsKeyThenBeforeAdding!465 (ListMap!4148 Nil!51361) lt!1770625 (_1!29395 (h!57371 oldBucket!40)) (_2!29395 (h!57371 oldBucket!40))))))

(assert (=> b!4615248 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) lambda!189282)))

(declare-fun lt!1770612 () Unit!110010)

(assert (=> b!4615248 (= lt!1770612 lt!1770628)))

(declare-fun call!321751 () Bool)

(assert (=> b!4615248 call!321751))

(declare-fun lt!1770613 () Unit!110010)

(declare-fun Unit!110033 () Unit!110010)

(assert (=> b!4615248 (= lt!1770613 Unit!110033)))

(declare-fun res!1933553 () Bool)

(assert (=> b!4615248 (= res!1933553 (forall!10737 oldBucket!40 lambda!189282))))

(declare-fun e!2878806 () Bool)

(assert (=> b!4615248 (=> (not res!1933553) (not e!2878806))))

(assert (=> b!4615248 e!2878806))

(declare-fun lt!1770615 () Unit!110010)

(declare-fun Unit!110035 () Unit!110010)

(assert (=> b!4615248 (= lt!1770615 Unit!110035)))

(declare-fun bm!321746 () Bool)

(assert (=> bm!321746 (= call!321751 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) (ite c!790159 lambda!189278 lambda!189282)))))

(declare-fun b!4615249 () Bool)

(assert (=> b!4615249 (= e!2878804 (invariantList!1164 (toList!4843 lt!1770620)))))

(declare-fun b!4615250 () Bool)

(assert (=> b!4615250 (= e!2878806 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) lambda!189282))))

(declare-fun bm!321747 () Bool)

(assert (=> bm!321747 (= call!321750 (lemmaContainsAllItsOwnKeys!466 (ListMap!4148 Nil!51361)))))

(assert (=> b!4615251 (= e!2878805 (ListMap!4148 Nil!51361))))

(declare-fun lt!1770629 () Unit!110010)

(assert (=> b!4615251 (= lt!1770629 call!321750)))

(assert (=> b!4615251 call!321752))

(declare-fun lt!1770621 () Unit!110010)

(assert (=> b!4615251 (= lt!1770621 lt!1770629)))

(assert (=> b!4615251 call!321751))

(declare-fun lt!1770622 () Unit!110010)

(declare-fun Unit!110039 () Unit!110010)

(assert (=> b!4615251 (= lt!1770622 Unit!110039)))

(assert (= (and d!1453718 c!790159) b!4615251))

(assert (= (and d!1453718 (not c!790159)) b!4615248))

(assert (= (and b!4615248 res!1933553) b!4615250))

(assert (= (or b!4615251 b!4615248) bm!321747))

(assert (= (or b!4615251 b!4615248) bm!321745))

(assert (= (or b!4615251 b!4615248) bm!321746))

(assert (= (and d!1453718 res!1933551) b!4615247))

(assert (= (and b!4615247 res!1933552) b!4615249))

(declare-fun m!5448259 () Bool)

(assert (=> bm!321746 m!5448259))

(declare-fun m!5448263 () Bool)

(assert (=> b!4615247 m!5448263))

(declare-fun m!5448267 () Bool)

(assert (=> b!4615248 m!5448267))

(declare-fun m!5448271 () Bool)

(assert (=> b!4615248 m!5448271))

(declare-fun m!5448273 () Bool)

(assert (=> b!4615248 m!5448273))

(declare-fun m!5448275 () Bool)

(assert (=> b!4615248 m!5448275))

(declare-fun m!5448277 () Bool)

(assert (=> b!4615248 m!5448277))

(declare-fun m!5448279 () Bool)

(assert (=> b!4615248 m!5448279))

(assert (=> b!4615248 m!5448267))

(declare-fun m!5448281 () Bool)

(assert (=> b!4615248 m!5448281))

(declare-fun m!5448283 () Bool)

(assert (=> b!4615248 m!5448283))

(assert (=> b!4615248 m!5448281))

(declare-fun m!5448285 () Bool)

(assert (=> b!4615248 m!5448285))

(assert (=> b!4615248 m!5448273))

(declare-fun m!5448287 () Bool)

(assert (=> b!4615248 m!5448287))

(declare-fun m!5448289 () Bool)

(assert (=> b!4615249 m!5448289))

(declare-fun m!5448291 () Bool)

(assert (=> d!1453718 m!5448291))

(assert (=> d!1453718 m!5448011))

(declare-fun m!5448293 () Bool)

(assert (=> bm!321745 m!5448293))

(assert (=> bm!321747 m!5448215))

(assert (=> b!4615250 m!5448285))

(assert (=> b!4615103 d!1453718))

(declare-fun d!1453722 () Bool)

(declare-fun e!2878808 () Bool)

(assert (=> d!1453722 e!2878808))

(declare-fun res!1933554 () Bool)

(assert (=> d!1453722 (=> (not res!1933554) (not e!2878808))))

(declare-fun lt!1770635 () ListMap!4147)

(assert (=> d!1453722 (= res!1933554 (contains!14325 lt!1770635 (_1!29395 lt!1770401)))))

(declare-fun lt!1770633 () List!51485)

(assert (=> d!1453722 (= lt!1770635 (ListMap!4148 lt!1770633))))

(declare-fun lt!1770634 () Unit!110010)

(declare-fun lt!1770632 () Unit!110010)

(assert (=> d!1453722 (= lt!1770634 lt!1770632)))

(assert (=> d!1453722 (= (getValueByKey!1381 lt!1770633 (_1!29395 lt!1770401)) (Some!11466 (_2!29395 lt!1770401)))))

(assert (=> d!1453722 (= lt!1770632 (lemmaContainsTupThenGetReturnValue!817 lt!1770633 (_1!29395 lt!1770401) (_2!29395 lt!1770401)))))

(assert (=> d!1453722 (= lt!1770633 (insertNoDuplicatedKeys!325 (toList!4843 lt!1770412) (_1!29395 lt!1770401) (_2!29395 lt!1770401)))))

(assert (=> d!1453722 (= (+!1824 lt!1770412 lt!1770401) lt!1770635)))

(declare-fun b!4615256 () Bool)

(declare-fun res!1933555 () Bool)

(assert (=> b!4615256 (=> (not res!1933555) (not e!2878808))))

(assert (=> b!4615256 (= res!1933555 (= (getValueByKey!1381 (toList!4843 lt!1770635) (_1!29395 lt!1770401)) (Some!11466 (_2!29395 lt!1770401))))))

(declare-fun b!4615257 () Bool)

(assert (=> b!4615257 (= e!2878808 (contains!14327 (toList!4843 lt!1770635) lt!1770401))))

(assert (= (and d!1453722 res!1933554) b!4615256))

(assert (= (and b!4615256 res!1933555) b!4615257))

(declare-fun m!5448295 () Bool)

(assert (=> d!1453722 m!5448295))

(declare-fun m!5448297 () Bool)

(assert (=> d!1453722 m!5448297))

(declare-fun m!5448301 () Bool)

(assert (=> d!1453722 m!5448301))

(declare-fun m!5448307 () Bool)

(assert (=> d!1453722 m!5448307))

(declare-fun m!5448309 () Bool)

(assert (=> b!4615256 m!5448309))

(declare-fun m!5448313 () Bool)

(assert (=> b!4615257 m!5448313))

(assert (=> b!4615103 d!1453722))

(declare-fun bs!1017586 () Bool)

(declare-fun d!1453724 () Bool)

(assert (= bs!1017586 (and d!1453724 d!1453718)))

(declare-fun lambda!189288 () Int)

(assert (=> bs!1017586 (not (= lambda!189288 lambda!189284))))

(declare-fun bs!1017587 () Bool)

(assert (= bs!1017587 (and d!1453724 b!4615233)))

(assert (=> bs!1017587 (not (= lambda!189288 lambda!189249))))

(declare-fun bs!1017588 () Bool)

(assert (= bs!1017588 (and d!1453724 b!4615251)))

(assert (=> bs!1017588 (not (= lambda!189288 lambda!189278))))

(declare-fun bs!1017589 () Bool)

(assert (= bs!1017589 (and d!1453724 b!4615248)))

(assert (=> bs!1017589 (not (= lambda!189288 lambda!189280))))

(declare-fun bs!1017590 () Bool)

(assert (= bs!1017590 (and d!1453724 d!1453696)))

(assert (=> bs!1017590 (not (= lambda!189288 lambda!189256))))

(declare-fun bs!1017591 () Bool)

(assert (= bs!1017591 (and d!1453724 b!4615230)))

(assert (=> bs!1017591 (not (= lambda!189288 lambda!189253))))

(assert (=> bs!1017589 (not (= lambda!189288 lambda!189282))))

(assert (=> bs!1017591 (not (= lambda!189288 lambda!189252))))

(assert (=> d!1453724 true))

(assert (=> d!1453724 true))

(assert (=> d!1453724 (= (allKeysSameHash!1293 oldBucket!40 hash!414 hashF!1389) (forall!10737 oldBucket!40 lambda!189288))))

(declare-fun bs!1017592 () Bool)

(assert (= bs!1017592 d!1453724))

(declare-fun m!5448319 () Bool)

(assert (=> bs!1017592 m!5448319))

(assert (=> b!4615114 d!1453724))

(declare-fun bs!1017593 () Bool)

(declare-fun b!4615272 () Bool)

(assert (= bs!1017593 (and b!4615272 d!1453718)))

(declare-fun lambda!189289 () Int)

(assert (=> bs!1017593 (= (= lt!1770406 lt!1770620) (= lambda!189289 lambda!189284))))

(declare-fun bs!1017594 () Bool)

(assert (= bs!1017594 (and b!4615272 b!4615233)))

(assert (=> bs!1017594 (= (= lt!1770406 (ListMap!4148 Nil!51361)) (= lambda!189289 lambda!189249))))

(declare-fun bs!1017595 () Bool)

(assert (= bs!1017595 (and b!4615272 b!4615251)))

(assert (=> bs!1017595 (= (= lt!1770406 (ListMap!4148 Nil!51361)) (= lambda!189289 lambda!189278))))

(declare-fun bs!1017596 () Bool)

(assert (= bs!1017596 (and b!4615272 b!4615248)))

(assert (=> bs!1017596 (= (= lt!1770406 (ListMap!4148 Nil!51361)) (= lambda!189289 lambda!189280))))

(declare-fun bs!1017597 () Bool)

(assert (= bs!1017597 (and b!4615272 d!1453724)))

(assert (=> bs!1017597 (not (= lambda!189289 lambda!189288))))

(declare-fun bs!1017598 () Bool)

(assert (= bs!1017598 (and b!4615272 d!1453696)))

(assert (=> bs!1017598 (= (= lt!1770406 lt!1770543) (= lambda!189289 lambda!189256))))

(declare-fun bs!1017599 () Bool)

(assert (= bs!1017599 (and b!4615272 b!4615230)))

(assert (=> bs!1017599 (= (= lt!1770406 lt!1770548) (= lambda!189289 lambda!189253))))

(assert (=> bs!1017596 (= (= lt!1770406 lt!1770625) (= lambda!189289 lambda!189282))))

(assert (=> bs!1017599 (= (= lt!1770406 (ListMap!4148 Nil!51361)) (= lambda!189289 lambda!189252))))

(assert (=> b!4615272 true))

(declare-fun bs!1017600 () Bool)

(declare-fun b!4615269 () Bool)

(assert (= bs!1017600 (and b!4615269 d!1453718)))

(declare-fun lambda!189290 () Int)

(assert (=> bs!1017600 (= (= lt!1770406 lt!1770620) (= lambda!189290 lambda!189284))))

(declare-fun bs!1017601 () Bool)

(assert (= bs!1017601 (and b!4615269 b!4615233)))

(assert (=> bs!1017601 (= (= lt!1770406 (ListMap!4148 Nil!51361)) (= lambda!189290 lambda!189249))))

(declare-fun bs!1017602 () Bool)

(assert (= bs!1017602 (and b!4615269 b!4615251)))

(assert (=> bs!1017602 (= (= lt!1770406 (ListMap!4148 Nil!51361)) (= lambda!189290 lambda!189278))))

(declare-fun bs!1017603 () Bool)

(assert (= bs!1017603 (and b!4615269 b!4615248)))

(assert (=> bs!1017603 (= (= lt!1770406 (ListMap!4148 Nil!51361)) (= lambda!189290 lambda!189280))))

(declare-fun bs!1017604 () Bool)

(assert (= bs!1017604 (and b!4615269 d!1453724)))

(assert (=> bs!1017604 (not (= lambda!189290 lambda!189288))))

(declare-fun bs!1017605 () Bool)

(assert (= bs!1017605 (and b!4615269 d!1453696)))

(assert (=> bs!1017605 (= (= lt!1770406 lt!1770543) (= lambda!189290 lambda!189256))))

(declare-fun bs!1017606 () Bool)

(assert (= bs!1017606 (and b!4615269 b!4615230)))

(assert (=> bs!1017606 (= (= lt!1770406 lt!1770548) (= lambda!189290 lambda!189253))))

(assert (=> bs!1017603 (= (= lt!1770406 lt!1770625) (= lambda!189290 lambda!189282))))

(declare-fun bs!1017607 () Bool)

(assert (= bs!1017607 (and b!4615269 b!4615272)))

(assert (=> bs!1017607 (= lambda!189290 lambda!189289)))

(assert (=> bs!1017606 (= (= lt!1770406 (ListMap!4148 Nil!51361)) (= lambda!189290 lambda!189252))))

(assert (=> b!4615269 true))

(declare-fun lt!1770651 () ListMap!4147)

(declare-fun lambda!189291 () Int)

(assert (=> bs!1017600 (= (= lt!1770651 lt!1770620) (= lambda!189291 lambda!189284))))

(assert (=> bs!1017601 (= (= lt!1770651 (ListMap!4148 Nil!51361)) (= lambda!189291 lambda!189249))))

(assert (=> bs!1017602 (= (= lt!1770651 (ListMap!4148 Nil!51361)) (= lambda!189291 lambda!189278))))

(assert (=> b!4615269 (= (= lt!1770651 lt!1770406) (= lambda!189291 lambda!189290))))

(assert (=> bs!1017603 (= (= lt!1770651 (ListMap!4148 Nil!51361)) (= lambda!189291 lambda!189280))))

(assert (=> bs!1017604 (not (= lambda!189291 lambda!189288))))

(assert (=> bs!1017605 (= (= lt!1770651 lt!1770543) (= lambda!189291 lambda!189256))))

(assert (=> bs!1017606 (= (= lt!1770651 lt!1770548) (= lambda!189291 lambda!189253))))

(assert (=> bs!1017603 (= (= lt!1770651 lt!1770625) (= lambda!189291 lambda!189282))))

(assert (=> bs!1017607 (= (= lt!1770651 lt!1770406) (= lambda!189291 lambda!189289))))

(assert (=> bs!1017606 (= (= lt!1770651 (ListMap!4148 Nil!51361)) (= lambda!189291 lambda!189252))))

(assert (=> b!4615269 true))

(declare-fun bs!1017608 () Bool)

(declare-fun d!1453730 () Bool)

(assert (= bs!1017608 (and d!1453730 d!1453718)))

(declare-fun lambda!189292 () Int)

(declare-fun lt!1770646 () ListMap!4147)

(assert (=> bs!1017608 (= (= lt!1770646 lt!1770620) (= lambda!189292 lambda!189284))))

(declare-fun bs!1017609 () Bool)

(assert (= bs!1017609 (and d!1453730 b!4615233)))

(assert (=> bs!1017609 (= (= lt!1770646 (ListMap!4148 Nil!51361)) (= lambda!189292 lambda!189249))))

(declare-fun bs!1017610 () Bool)

(assert (= bs!1017610 (and d!1453730 b!4615251)))

(assert (=> bs!1017610 (= (= lt!1770646 (ListMap!4148 Nil!51361)) (= lambda!189292 lambda!189278))))

(declare-fun bs!1017611 () Bool)

(assert (= bs!1017611 (and d!1453730 b!4615269)))

(assert (=> bs!1017611 (= (= lt!1770646 lt!1770406) (= lambda!189292 lambda!189290))))

(declare-fun bs!1017612 () Bool)

(assert (= bs!1017612 (and d!1453730 b!4615248)))

(assert (=> bs!1017612 (= (= lt!1770646 (ListMap!4148 Nil!51361)) (= lambda!189292 lambda!189280))))

(declare-fun bs!1017613 () Bool)

(assert (= bs!1017613 (and d!1453730 d!1453724)))

(assert (=> bs!1017613 (not (= lambda!189292 lambda!189288))))

(declare-fun bs!1017614 () Bool)

(assert (= bs!1017614 (and d!1453730 d!1453696)))

(assert (=> bs!1017614 (= (= lt!1770646 lt!1770543) (= lambda!189292 lambda!189256))))

(declare-fun bs!1017615 () Bool)

(assert (= bs!1017615 (and d!1453730 b!4615230)))

(assert (=> bs!1017615 (= (= lt!1770646 lt!1770548) (= lambda!189292 lambda!189253))))

(assert (=> bs!1017611 (= (= lt!1770646 lt!1770651) (= lambda!189292 lambda!189291))))

(assert (=> bs!1017612 (= (= lt!1770646 lt!1770625) (= lambda!189292 lambda!189282))))

(declare-fun bs!1017616 () Bool)

(assert (= bs!1017616 (and d!1453730 b!4615272)))

(assert (=> bs!1017616 (= (= lt!1770646 lt!1770406) (= lambda!189292 lambda!189289))))

(assert (=> bs!1017615 (= (= lt!1770646 (ListMap!4148 Nil!51361)) (= lambda!189292 lambda!189252))))

(assert (=> d!1453730 true))

(declare-fun b!4615268 () Bool)

(declare-fun res!1933563 () Bool)

(declare-fun e!2878815 () Bool)

(assert (=> b!4615268 (=> (not res!1933563) (not e!2878815))))

(assert (=> b!4615268 (= res!1933563 (forall!10737 (toList!4843 lt!1770406) lambda!189292))))

(assert (=> d!1453730 e!2878815))

(declare-fun res!1933562 () Bool)

(assert (=> d!1453730 (=> (not res!1933562) (not e!2878815))))

(assert (=> d!1453730 (= res!1933562 (forall!10737 oldBucket!40 lambda!189292))))

(declare-fun e!2878816 () ListMap!4147)

(assert (=> d!1453730 (= lt!1770646 e!2878816)))

(declare-fun c!790161 () Bool)

(assert (=> d!1453730 (= c!790161 (is-Nil!51361 oldBucket!40))))

(assert (=> d!1453730 (noDuplicateKeys!1439 oldBucket!40)))

(assert (=> d!1453730 (= (addToMapMapFromBucket!900 oldBucket!40 lt!1770406) lt!1770646)))

(declare-fun bm!321748 () Bool)

(declare-fun call!321755 () Bool)

(assert (=> bm!321748 (= call!321755 (forall!10737 (ite c!790161 (toList!4843 lt!1770406) (t!358487 oldBucket!40)) (ite c!790161 lambda!189289 lambda!189291)))))

(assert (=> b!4615269 (= e!2878816 lt!1770651)))

(declare-fun lt!1770640 () ListMap!4147)

(assert (=> b!4615269 (= lt!1770640 (+!1824 lt!1770406 (h!57371 oldBucket!40)))))

(assert (=> b!4615269 (= lt!1770651 (addToMapMapFromBucket!900 (t!358487 oldBucket!40) (+!1824 lt!1770406 (h!57371 oldBucket!40))))))

(declare-fun lt!1770644 () Unit!110010)

(declare-fun call!321753 () Unit!110010)

(assert (=> b!4615269 (= lt!1770644 call!321753)))

(assert (=> b!4615269 (forall!10737 (toList!4843 lt!1770406) lambda!189290)))

(declare-fun lt!1770649 () Unit!110010)

(assert (=> b!4615269 (= lt!1770649 lt!1770644)))

(assert (=> b!4615269 (forall!10737 (toList!4843 lt!1770640) lambda!189291)))

(declare-fun lt!1770653 () Unit!110010)

(declare-fun Unit!110048 () Unit!110010)

(assert (=> b!4615269 (= lt!1770653 Unit!110048)))

(assert (=> b!4615269 call!321755))

(declare-fun lt!1770656 () Unit!110010)

(declare-fun Unit!110049 () Unit!110010)

(assert (=> b!4615269 (= lt!1770656 Unit!110049)))

(declare-fun lt!1770652 () Unit!110010)

(declare-fun Unit!110050 () Unit!110010)

(assert (=> b!4615269 (= lt!1770652 Unit!110050)))

(declare-fun lt!1770636 () Unit!110010)

(assert (=> b!4615269 (= lt!1770636 (forallContained!2958 (toList!4843 lt!1770640) lambda!189291 (h!57371 oldBucket!40)))))

(assert (=> b!4615269 (contains!14325 lt!1770640 (_1!29395 (h!57371 oldBucket!40)))))

(declare-fun lt!1770642 () Unit!110010)

(declare-fun Unit!110051 () Unit!110010)

(assert (=> b!4615269 (= lt!1770642 Unit!110051)))

(assert (=> b!4615269 (contains!14325 lt!1770651 (_1!29395 (h!57371 oldBucket!40)))))

(declare-fun lt!1770637 () Unit!110010)

(declare-fun Unit!110052 () Unit!110010)

(assert (=> b!4615269 (= lt!1770637 Unit!110052)))

(assert (=> b!4615269 (forall!10737 oldBucket!40 lambda!189291)))

(declare-fun lt!1770650 () Unit!110010)

(declare-fun Unit!110053 () Unit!110010)

(assert (=> b!4615269 (= lt!1770650 Unit!110053)))

(assert (=> b!4615269 (forall!10737 (toList!4843 lt!1770640) lambda!189291)))

(declare-fun lt!1770645 () Unit!110010)

(declare-fun Unit!110054 () Unit!110010)

(assert (=> b!4615269 (= lt!1770645 Unit!110054)))

(declare-fun lt!1770643 () Unit!110010)

(declare-fun Unit!110055 () Unit!110010)

(assert (=> b!4615269 (= lt!1770643 Unit!110055)))

(declare-fun lt!1770654 () Unit!110010)

(assert (=> b!4615269 (= lt!1770654 (addForallContainsKeyThenBeforeAdding!465 lt!1770406 lt!1770651 (_1!29395 (h!57371 oldBucket!40)) (_2!29395 (h!57371 oldBucket!40))))))

(assert (=> b!4615269 (forall!10737 (toList!4843 lt!1770406) lambda!189291)))

(declare-fun lt!1770638 () Unit!110010)

(assert (=> b!4615269 (= lt!1770638 lt!1770654)))

(declare-fun call!321754 () Bool)

(assert (=> b!4615269 call!321754))

(declare-fun lt!1770639 () Unit!110010)

(declare-fun Unit!110056 () Unit!110010)

(assert (=> b!4615269 (= lt!1770639 Unit!110056)))

(declare-fun res!1933564 () Bool)

(assert (=> b!4615269 (= res!1933564 (forall!10737 oldBucket!40 lambda!189291))))

(declare-fun e!2878817 () Bool)

(assert (=> b!4615269 (=> (not res!1933564) (not e!2878817))))

(assert (=> b!4615269 e!2878817))

(declare-fun lt!1770641 () Unit!110010)

(declare-fun Unit!110057 () Unit!110010)

(assert (=> b!4615269 (= lt!1770641 Unit!110057)))

(declare-fun bm!321749 () Bool)

(assert (=> bm!321749 (= call!321754 (forall!10737 (toList!4843 lt!1770406) (ite c!790161 lambda!189289 lambda!189291)))))

(declare-fun b!4615270 () Bool)

(assert (=> b!4615270 (= e!2878815 (invariantList!1164 (toList!4843 lt!1770646)))))

(declare-fun b!4615271 () Bool)

(assert (=> b!4615271 (= e!2878817 (forall!10737 (toList!4843 lt!1770406) lambda!189291))))

(declare-fun bm!321750 () Bool)

(assert (=> bm!321750 (= call!321753 (lemmaContainsAllItsOwnKeys!466 lt!1770406))))

(assert (=> b!4615272 (= e!2878816 lt!1770406)))

(declare-fun lt!1770655 () Unit!110010)

(assert (=> b!4615272 (= lt!1770655 call!321753)))

(assert (=> b!4615272 call!321755))

(declare-fun lt!1770647 () Unit!110010)

(assert (=> b!4615272 (= lt!1770647 lt!1770655)))

(assert (=> b!4615272 call!321754))

(declare-fun lt!1770648 () Unit!110010)

(declare-fun Unit!110059 () Unit!110010)

(assert (=> b!4615272 (= lt!1770648 Unit!110059)))

(assert (= (and d!1453730 c!790161) b!4615272))

(assert (= (and d!1453730 (not c!790161)) b!4615269))

(assert (= (and b!4615269 res!1933564) b!4615271))

(assert (= (or b!4615272 b!4615269) bm!321750))

(assert (= (or b!4615272 b!4615269) bm!321748))

(assert (= (or b!4615272 b!4615269) bm!321749))

(assert (= (and d!1453730 res!1933562) b!4615268))

(assert (= (and b!4615268 res!1933563) b!4615270))

(declare-fun m!5448323 () Bool)

(assert (=> bm!321749 m!5448323))

(declare-fun m!5448325 () Bool)

(assert (=> b!4615268 m!5448325))

(declare-fun m!5448327 () Bool)

(assert (=> b!4615269 m!5448327))

(declare-fun m!5448329 () Bool)

(assert (=> b!4615269 m!5448329))

(declare-fun m!5448331 () Bool)

(assert (=> b!4615269 m!5448331))

(declare-fun m!5448333 () Bool)

(assert (=> b!4615269 m!5448333))

(declare-fun m!5448335 () Bool)

(assert (=> b!4615269 m!5448335))

(declare-fun m!5448337 () Bool)

(assert (=> b!4615269 m!5448337))

(assert (=> b!4615269 m!5448327))

(declare-fun m!5448339 () Bool)

(assert (=> b!4615269 m!5448339))

(declare-fun m!5448341 () Bool)

(assert (=> b!4615269 m!5448341))

(assert (=> b!4615269 m!5448339))

(declare-fun m!5448343 () Bool)

(assert (=> b!4615269 m!5448343))

(assert (=> b!4615269 m!5448331))

(declare-fun m!5448345 () Bool)

(assert (=> b!4615269 m!5448345))

(declare-fun m!5448347 () Bool)

(assert (=> b!4615270 m!5448347))

(declare-fun m!5448349 () Bool)

(assert (=> d!1453730 m!5448349))

(assert (=> d!1453730 m!5448011))

(declare-fun m!5448351 () Bool)

(assert (=> bm!321748 m!5448351))

(declare-fun m!5448353 () Bool)

(assert (=> bm!321750 m!5448353))

(assert (=> b!4615271 m!5448343))

(assert (=> b!4615104 d!1453730))

(declare-fun bs!1017617 () Bool)

(declare-fun d!1453734 () Bool)

(assert (= bs!1017617 (and d!1453734 b!4615107)))

(declare-fun lambda!189293 () Int)

(assert (=> bs!1017617 (= lambda!189293 lambda!189201)))

(declare-fun bs!1017618 () Bool)

(assert (= bs!1017618 (and d!1453734 d!1453688)))

(assert (=> bs!1017618 (= lambda!189293 lambda!189207)))

(declare-fun bs!1017619 () Bool)

(assert (= bs!1017619 (and d!1453734 d!1453690)))

(assert (=> bs!1017619 (= lambda!189293 lambda!189208)))

(declare-fun lt!1770657 () ListMap!4147)

(assert (=> d!1453734 (invariantList!1164 (toList!4843 lt!1770657))))

(declare-fun e!2878824 () ListMap!4147)

(assert (=> d!1453734 (= lt!1770657 e!2878824)))

(declare-fun c!790162 () Bool)

(assert (=> d!1453734 (= c!790162 (is-Cons!51362 Nil!51362))))

(assert (=> d!1453734 (forall!10735 Nil!51362 lambda!189293)))

(assert (=> d!1453734 (= (extractMap!1495 Nil!51362) lt!1770657)))

(declare-fun b!4615279 () Bool)

(assert (=> b!4615279 (= e!2878824 (addToMapMapFromBucket!900 (_2!29396 (h!57372 Nil!51362)) (extractMap!1495 (t!358488 Nil!51362))))))

(declare-fun b!4615280 () Bool)

(assert (=> b!4615280 (= e!2878824 (ListMap!4148 Nil!51361))))

(assert (= (and d!1453734 c!790162) b!4615279))

(assert (= (and d!1453734 (not c!790162)) b!4615280))

(declare-fun m!5448355 () Bool)

(assert (=> d!1453734 m!5448355))

(declare-fun m!5448357 () Bool)

(assert (=> d!1453734 m!5448357))

(declare-fun m!5448359 () Bool)

(assert (=> b!4615279 m!5448359))

(assert (=> b!4615279 m!5448359))

(declare-fun m!5448361 () Bool)

(assert (=> b!4615279 m!5448361))

(assert (=> b!4615104 d!1453734))

(declare-fun b!4615335 () Bool)

(assert (=> b!4615335 false))

(declare-fun lt!1770706 () Unit!110010)

(declare-fun lt!1770712 () Unit!110010)

(assert (=> b!4615335 (= lt!1770706 lt!1770712)))

(declare-fun containsKey!2320 (List!51485 K!12748) Bool)

(assert (=> b!4615335 (containsKey!2320 (toList!4843 lt!1770412) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!615 (List!51485 K!12748) Unit!110010)

(assert (=> b!4615335 (= lt!1770712 (lemmaInGetKeysListThenContainsKey!615 (toList!4843 lt!1770412) key!4968))))

(declare-fun e!2878865 () Unit!110010)

(declare-fun Unit!110060 () Unit!110010)

(assert (=> b!4615335 (= e!2878865 Unit!110060)))

(declare-fun b!4615336 () Bool)

(declare-datatypes ((List!51490 0))(
  ( (Nil!51366) (Cons!51366 (h!57378 K!12748) (t!358494 List!51490)) )
))
(declare-fun e!2878866 () List!51490)

(declare-fun keys!18049 (ListMap!4147) List!51490)

(assert (=> b!4615336 (= e!2878866 (keys!18049 lt!1770412))))

(declare-fun b!4615337 () Bool)

(declare-fun e!2878863 () Bool)

(declare-fun e!2878862 () Bool)

(assert (=> b!4615337 (= e!2878863 e!2878862)))

(declare-fun res!1933590 () Bool)

(assert (=> b!4615337 (=> (not res!1933590) (not e!2878862))))

(declare-fun isDefined!8733 (Option!11467) Bool)

(assert (=> b!4615337 (= res!1933590 (isDefined!8733 (getValueByKey!1381 (toList!4843 lt!1770412) key!4968)))))

(declare-fun b!4615338 () Bool)

(declare-fun e!2878864 () Bool)

(declare-fun contains!14329 (List!51490 K!12748) Bool)

(assert (=> b!4615338 (= e!2878864 (not (contains!14329 (keys!18049 lt!1770412) key!4968)))))

(declare-fun b!4615339 () Bool)

(assert (=> b!4615339 (= e!2878862 (contains!14329 (keys!18049 lt!1770412) key!4968))))

(declare-fun b!4615341 () Bool)

(declare-fun Unit!110062 () Unit!110010)

(assert (=> b!4615341 (= e!2878865 Unit!110062)))

(declare-fun bm!321757 () Bool)

(declare-fun call!321762 () Bool)

(assert (=> bm!321757 (= call!321762 (contains!14329 e!2878866 key!4968))))

(declare-fun c!790182 () Bool)

(declare-fun c!790183 () Bool)

(assert (=> bm!321757 (= c!790182 c!790183)))

(declare-fun b!4615342 () Bool)

(declare-fun getKeysList!616 (List!51485) List!51490)

(assert (=> b!4615342 (= e!2878866 (getKeysList!616 (toList!4843 lt!1770412)))))

(declare-fun b!4615343 () Bool)

(declare-fun e!2878861 () Unit!110010)

(declare-fun lt!1770707 () Unit!110010)

(assert (=> b!4615343 (= e!2878861 lt!1770707)))

(declare-fun lt!1770713 () Unit!110010)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1284 (List!51485 K!12748) Unit!110010)

(assert (=> b!4615343 (= lt!1770713 (lemmaContainsKeyImpliesGetValueByKeyDefined!1284 (toList!4843 lt!1770412) key!4968))))

(assert (=> b!4615343 (isDefined!8733 (getValueByKey!1381 (toList!4843 lt!1770412) key!4968))))

(declare-fun lt!1770709 () Unit!110010)

(assert (=> b!4615343 (= lt!1770709 lt!1770713)))

(declare-fun lemmaInListThenGetKeysListContains!611 (List!51485 K!12748) Unit!110010)

(assert (=> b!4615343 (= lt!1770707 (lemmaInListThenGetKeysListContains!611 (toList!4843 lt!1770412) key!4968))))

(assert (=> b!4615343 call!321762))

(declare-fun d!1453736 () Bool)

(assert (=> d!1453736 e!2878863))

(declare-fun res!1933591 () Bool)

(assert (=> d!1453736 (=> res!1933591 e!2878863)))

(assert (=> d!1453736 (= res!1933591 e!2878864)))

(declare-fun res!1933589 () Bool)

(assert (=> d!1453736 (=> (not res!1933589) (not e!2878864))))

(declare-fun lt!1770711 () Bool)

(assert (=> d!1453736 (= res!1933589 (not lt!1770711))))

(declare-fun lt!1770708 () Bool)

(assert (=> d!1453736 (= lt!1770711 lt!1770708)))

(declare-fun lt!1770710 () Unit!110010)

(assert (=> d!1453736 (= lt!1770710 e!2878861)))

(assert (=> d!1453736 (= c!790183 lt!1770708)))

(assert (=> d!1453736 (= lt!1770708 (containsKey!2320 (toList!4843 lt!1770412) key!4968))))

(assert (=> d!1453736 (= (contains!14325 lt!1770412 key!4968) lt!1770711)))

(declare-fun b!4615340 () Bool)

(assert (=> b!4615340 (= e!2878861 e!2878865)))

(declare-fun c!790181 () Bool)

(assert (=> b!4615340 (= c!790181 call!321762)))

(assert (= (and d!1453736 c!790183) b!4615343))

(assert (= (and d!1453736 (not c!790183)) b!4615340))

(assert (= (and b!4615340 c!790181) b!4615335))

(assert (= (and b!4615340 (not c!790181)) b!4615341))

(assert (= (or b!4615343 b!4615340) bm!321757))

(assert (= (and bm!321757 c!790182) b!4615342))

(assert (= (and bm!321757 (not c!790182)) b!4615336))

(assert (= (and d!1453736 res!1933589) b!4615338))

(assert (= (and d!1453736 (not res!1933591)) b!4615337))

(assert (= (and b!4615337 res!1933590) b!4615339))

(declare-fun m!5448403 () Bool)

(assert (=> b!4615339 m!5448403))

(assert (=> b!4615339 m!5448403))

(declare-fun m!5448405 () Bool)

(assert (=> b!4615339 m!5448405))

(declare-fun m!5448407 () Bool)

(assert (=> b!4615335 m!5448407))

(declare-fun m!5448409 () Bool)

(assert (=> b!4615335 m!5448409))

(declare-fun m!5448411 () Bool)

(assert (=> bm!321757 m!5448411))

(assert (=> d!1453736 m!5448407))

(declare-fun m!5448413 () Bool)

(assert (=> b!4615343 m!5448413))

(declare-fun m!5448415 () Bool)

(assert (=> b!4615343 m!5448415))

(assert (=> b!4615343 m!5448415))

(declare-fun m!5448417 () Bool)

(assert (=> b!4615343 m!5448417))

(declare-fun m!5448419 () Bool)

(assert (=> b!4615343 m!5448419))

(assert (=> b!4615336 m!5448403))

(assert (=> b!4615338 m!5448403))

(assert (=> b!4615338 m!5448403))

(assert (=> b!4615338 m!5448405))

(declare-fun m!5448421 () Bool)

(assert (=> b!4615342 m!5448421))

(assert (=> b!4615337 m!5448415))

(assert (=> b!4615337 m!5448415))

(assert (=> b!4615337 m!5448417))

(assert (=> b!4615105 d!1453736))

(declare-fun b!4615344 () Bool)

(assert (=> b!4615344 false))

(declare-fun lt!1770714 () Unit!110010)

(declare-fun lt!1770720 () Unit!110010)

(assert (=> b!4615344 (= lt!1770714 lt!1770720)))

(assert (=> b!4615344 (containsKey!2320 (toList!4843 lt!1770398) key!4968)))

(assert (=> b!4615344 (= lt!1770720 (lemmaInGetKeysListThenContainsKey!615 (toList!4843 lt!1770398) key!4968))))

(declare-fun e!2878871 () Unit!110010)

(declare-fun Unit!110064 () Unit!110010)

(assert (=> b!4615344 (= e!2878871 Unit!110064)))

(declare-fun b!4615345 () Bool)

(declare-fun e!2878872 () List!51490)

(assert (=> b!4615345 (= e!2878872 (keys!18049 lt!1770398))))

(declare-fun b!4615346 () Bool)

(declare-fun e!2878869 () Bool)

(declare-fun e!2878868 () Bool)

(assert (=> b!4615346 (= e!2878869 e!2878868)))

(declare-fun res!1933593 () Bool)

(assert (=> b!4615346 (=> (not res!1933593) (not e!2878868))))

(assert (=> b!4615346 (= res!1933593 (isDefined!8733 (getValueByKey!1381 (toList!4843 lt!1770398) key!4968)))))

(declare-fun b!4615347 () Bool)

(declare-fun e!2878870 () Bool)

(assert (=> b!4615347 (= e!2878870 (not (contains!14329 (keys!18049 lt!1770398) key!4968)))))

(declare-fun b!4615348 () Bool)

(assert (=> b!4615348 (= e!2878868 (contains!14329 (keys!18049 lt!1770398) key!4968))))

(declare-fun b!4615350 () Bool)

(declare-fun Unit!110065 () Unit!110010)

(assert (=> b!4615350 (= e!2878871 Unit!110065)))

(declare-fun bm!321758 () Bool)

(declare-fun call!321763 () Bool)

(assert (=> bm!321758 (= call!321763 (contains!14329 e!2878872 key!4968))))

(declare-fun c!790185 () Bool)

(declare-fun c!790186 () Bool)

(assert (=> bm!321758 (= c!790185 c!790186)))

(declare-fun b!4615351 () Bool)

(assert (=> b!4615351 (= e!2878872 (getKeysList!616 (toList!4843 lt!1770398)))))

(declare-fun b!4615352 () Bool)

(declare-fun e!2878867 () Unit!110010)

(declare-fun lt!1770715 () Unit!110010)

(assert (=> b!4615352 (= e!2878867 lt!1770715)))

(declare-fun lt!1770721 () Unit!110010)

(assert (=> b!4615352 (= lt!1770721 (lemmaContainsKeyImpliesGetValueByKeyDefined!1284 (toList!4843 lt!1770398) key!4968))))

(assert (=> b!4615352 (isDefined!8733 (getValueByKey!1381 (toList!4843 lt!1770398) key!4968))))

(declare-fun lt!1770717 () Unit!110010)

(assert (=> b!4615352 (= lt!1770717 lt!1770721)))

(assert (=> b!4615352 (= lt!1770715 (lemmaInListThenGetKeysListContains!611 (toList!4843 lt!1770398) key!4968))))

(assert (=> b!4615352 call!321763))

(declare-fun d!1453742 () Bool)

(assert (=> d!1453742 e!2878869))

(declare-fun res!1933594 () Bool)

(assert (=> d!1453742 (=> res!1933594 e!2878869)))

(assert (=> d!1453742 (= res!1933594 e!2878870)))

(declare-fun res!1933592 () Bool)

(assert (=> d!1453742 (=> (not res!1933592) (not e!2878870))))

(declare-fun lt!1770719 () Bool)

(assert (=> d!1453742 (= res!1933592 (not lt!1770719))))

(declare-fun lt!1770716 () Bool)

(assert (=> d!1453742 (= lt!1770719 lt!1770716)))

(declare-fun lt!1770718 () Unit!110010)

(assert (=> d!1453742 (= lt!1770718 e!2878867)))

(assert (=> d!1453742 (= c!790186 lt!1770716)))

(assert (=> d!1453742 (= lt!1770716 (containsKey!2320 (toList!4843 lt!1770398) key!4968))))

(assert (=> d!1453742 (= (contains!14325 lt!1770398 key!4968) lt!1770719)))

(declare-fun b!4615349 () Bool)

(assert (=> b!4615349 (= e!2878867 e!2878871)))

(declare-fun c!790184 () Bool)

(assert (=> b!4615349 (= c!790184 call!321763)))

(assert (= (and d!1453742 c!790186) b!4615352))

(assert (= (and d!1453742 (not c!790186)) b!4615349))

(assert (= (and b!4615349 c!790184) b!4615344))

(assert (= (and b!4615349 (not c!790184)) b!4615350))

(assert (= (or b!4615352 b!4615349) bm!321758))

(assert (= (and bm!321758 c!790185) b!4615351))

(assert (= (and bm!321758 (not c!790185)) b!4615345))

(assert (= (and d!1453742 res!1933592) b!4615347))

(assert (= (and d!1453742 (not res!1933594)) b!4615346))

(assert (= (and b!4615346 res!1933593) b!4615348))

(declare-fun m!5448423 () Bool)

(assert (=> b!4615348 m!5448423))

(assert (=> b!4615348 m!5448423))

(declare-fun m!5448425 () Bool)

(assert (=> b!4615348 m!5448425))

(declare-fun m!5448427 () Bool)

(assert (=> b!4615344 m!5448427))

(declare-fun m!5448429 () Bool)

(assert (=> b!4615344 m!5448429))

(declare-fun m!5448431 () Bool)

(assert (=> bm!321758 m!5448431))

(assert (=> d!1453742 m!5448427))

(declare-fun m!5448433 () Bool)

(assert (=> b!4615352 m!5448433))

(declare-fun m!5448435 () Bool)

(assert (=> b!4615352 m!5448435))

(assert (=> b!4615352 m!5448435))

(declare-fun m!5448437 () Bool)

(assert (=> b!4615352 m!5448437))

(declare-fun m!5448439 () Bool)

(assert (=> b!4615352 m!5448439))

(assert (=> b!4615345 m!5448423))

(assert (=> b!4615347 m!5448423))

(assert (=> b!4615347 m!5448423))

(assert (=> b!4615347 m!5448425))

(declare-fun m!5448441 () Bool)

(assert (=> b!4615351 m!5448441))

(assert (=> b!4615346 m!5448435))

(assert (=> b!4615346 m!5448435))

(assert (=> b!4615346 m!5448437))

(assert (=> b!4615105 d!1453742))

(declare-fun bs!1017625 () Bool)

(declare-fun d!1453744 () Bool)

(assert (= bs!1017625 (and d!1453744 b!4615107)))

(declare-fun lambda!189299 () Int)

(assert (=> bs!1017625 (= lambda!189299 lambda!189201)))

(declare-fun bs!1017626 () Bool)

(assert (= bs!1017626 (and d!1453744 d!1453688)))

(assert (=> bs!1017626 (= lambda!189299 lambda!189207)))

(declare-fun bs!1017627 () Bool)

(assert (= bs!1017627 (and d!1453744 d!1453690)))

(assert (=> bs!1017627 (= lambda!189299 lambda!189208)))

(declare-fun bs!1017628 () Bool)

(assert (= bs!1017628 (and d!1453744 d!1453734)))

(assert (=> bs!1017628 (= lambda!189299 lambda!189293)))

(assert (=> d!1453744 (not (contains!14325 (extractMap!1495 (toList!4844 (ListLongMap!3434 lt!1770403))) key!4968))))

(declare-fun lt!1770727 () Unit!110010)

(declare-fun choose!31071 (ListLongMap!3433 K!12748 Hashable!5836) Unit!110010)

(assert (=> d!1453744 (= lt!1770727 (choose!31071 (ListLongMap!3434 lt!1770403) key!4968 hashF!1389))))

(assert (=> d!1453744 (forall!10735 (toList!4844 (ListLongMap!3434 lt!1770403)) lambda!189299)))

(assert (=> d!1453744 (= (lemmaNotInItsHashBucketThenNotInMap!353 (ListLongMap!3434 lt!1770403) key!4968 hashF!1389) lt!1770727)))

(declare-fun bs!1017629 () Bool)

(assert (= bs!1017629 d!1453744))

(declare-fun m!5448451 () Bool)

(assert (=> bs!1017629 m!5448451))

(assert (=> bs!1017629 m!5448451))

(declare-fun m!5448453 () Bool)

(assert (=> bs!1017629 m!5448453))

(declare-fun m!5448455 () Bool)

(assert (=> bs!1017629 m!5448455))

(declare-fun m!5448457 () Bool)

(assert (=> bs!1017629 m!5448457))

(assert (=> b!4615105 d!1453744))

(declare-fun bs!1017630 () Bool)

(declare-fun b!4615357 () Bool)

(assert (= bs!1017630 (and b!4615357 d!1453718)))

(declare-fun lambda!189300 () Int)

(assert (=> bs!1017630 (= (= (ListMap!4148 Nil!51361) lt!1770620) (= lambda!189300 lambda!189284))))

(declare-fun bs!1017631 () Bool)

(assert (= bs!1017631 (and b!4615357 b!4615233)))

(assert (=> bs!1017631 (= lambda!189300 lambda!189249)))

(declare-fun bs!1017632 () Bool)

(assert (= bs!1017632 (and b!4615357 b!4615251)))

(assert (=> bs!1017632 (= lambda!189300 lambda!189278)))

(declare-fun bs!1017633 () Bool)

(assert (= bs!1017633 (and b!4615357 b!4615269)))

(assert (=> bs!1017633 (= (= (ListMap!4148 Nil!51361) lt!1770406) (= lambda!189300 lambda!189290))))

(declare-fun bs!1017634 () Bool)

(assert (= bs!1017634 (and b!4615357 b!4615248)))

(assert (=> bs!1017634 (= lambda!189300 lambda!189280)))

(declare-fun bs!1017635 () Bool)

(assert (= bs!1017635 (and b!4615357 d!1453724)))

(assert (=> bs!1017635 (not (= lambda!189300 lambda!189288))))

(declare-fun bs!1017636 () Bool)

(assert (= bs!1017636 (and b!4615357 d!1453696)))

(assert (=> bs!1017636 (= (= (ListMap!4148 Nil!51361) lt!1770543) (= lambda!189300 lambda!189256))))

(declare-fun bs!1017637 () Bool)

(assert (= bs!1017637 (and b!4615357 b!4615230)))

(assert (=> bs!1017637 (= (= (ListMap!4148 Nil!51361) lt!1770548) (= lambda!189300 lambda!189253))))

(assert (=> bs!1017633 (= (= (ListMap!4148 Nil!51361) lt!1770651) (= lambda!189300 lambda!189291))))

(assert (=> bs!1017634 (= (= (ListMap!4148 Nil!51361) lt!1770625) (= lambda!189300 lambda!189282))))

(declare-fun bs!1017638 () Bool)

(assert (= bs!1017638 (and b!4615357 d!1453730)))

(assert (=> bs!1017638 (= (= (ListMap!4148 Nil!51361) lt!1770646) (= lambda!189300 lambda!189292))))

(declare-fun bs!1017639 () Bool)

(assert (= bs!1017639 (and b!4615357 b!4615272)))

(assert (=> bs!1017639 (= (= (ListMap!4148 Nil!51361) lt!1770406) (= lambda!189300 lambda!189289))))

(assert (=> bs!1017637 (= lambda!189300 lambda!189252)))

(assert (=> b!4615357 true))

(declare-fun bs!1017640 () Bool)

(declare-fun b!4615354 () Bool)

(assert (= bs!1017640 (and b!4615354 d!1453718)))

(declare-fun lambda!189301 () Int)

(assert (=> bs!1017640 (= (= (ListMap!4148 Nil!51361) lt!1770620) (= lambda!189301 lambda!189284))))

(declare-fun bs!1017641 () Bool)

(assert (= bs!1017641 (and b!4615354 b!4615233)))

(assert (=> bs!1017641 (= lambda!189301 lambda!189249)))

(declare-fun bs!1017642 () Bool)

(assert (= bs!1017642 (and b!4615354 b!4615251)))

(assert (=> bs!1017642 (= lambda!189301 lambda!189278)))

(declare-fun bs!1017643 () Bool)

(assert (= bs!1017643 (and b!4615354 b!4615269)))

(assert (=> bs!1017643 (= (= (ListMap!4148 Nil!51361) lt!1770406) (= lambda!189301 lambda!189290))))

(declare-fun bs!1017644 () Bool)

(assert (= bs!1017644 (and b!4615354 b!4615248)))

(assert (=> bs!1017644 (= lambda!189301 lambda!189280)))

(declare-fun bs!1017645 () Bool)

(assert (= bs!1017645 (and b!4615354 d!1453696)))

(assert (=> bs!1017645 (= (= (ListMap!4148 Nil!51361) lt!1770543) (= lambda!189301 lambda!189256))))

(declare-fun bs!1017646 () Bool)

(assert (= bs!1017646 (and b!4615354 b!4615230)))

(assert (=> bs!1017646 (= (= (ListMap!4148 Nil!51361) lt!1770548) (= lambda!189301 lambda!189253))))

(assert (=> bs!1017643 (= (= (ListMap!4148 Nil!51361) lt!1770651) (= lambda!189301 lambda!189291))))

(assert (=> bs!1017644 (= (= (ListMap!4148 Nil!51361) lt!1770625) (= lambda!189301 lambda!189282))))

(declare-fun bs!1017647 () Bool)

(assert (= bs!1017647 (and b!4615354 d!1453730)))

(assert (=> bs!1017647 (= (= (ListMap!4148 Nil!51361) lt!1770646) (= lambda!189301 lambda!189292))))

(declare-fun bs!1017648 () Bool)

(assert (= bs!1017648 (and b!4615354 b!4615272)))

(assert (=> bs!1017648 (= (= (ListMap!4148 Nil!51361) lt!1770406) (= lambda!189301 lambda!189289))))

(assert (=> bs!1017646 (= lambda!189301 lambda!189252)))

(declare-fun bs!1017649 () Bool)

(assert (= bs!1017649 (and b!4615354 b!4615357)))

(assert (=> bs!1017649 (= lambda!189301 lambda!189300)))

(declare-fun bs!1017650 () Bool)

(assert (= bs!1017650 (and b!4615354 d!1453724)))

(assert (=> bs!1017650 (not (= lambda!189301 lambda!189288))))

(assert (=> b!4615354 true))

(declare-fun lt!1770743 () ListMap!4147)

(declare-fun lambda!189302 () Int)

(assert (=> bs!1017640 (= (= lt!1770743 lt!1770620) (= lambda!189302 lambda!189284))))

(assert (=> bs!1017641 (= (= lt!1770743 (ListMap!4148 Nil!51361)) (= lambda!189302 lambda!189249))))

(assert (=> bs!1017642 (= (= lt!1770743 (ListMap!4148 Nil!51361)) (= lambda!189302 lambda!189278))))

(assert (=> bs!1017643 (= (= lt!1770743 lt!1770406) (= lambda!189302 lambda!189290))))

(assert (=> bs!1017644 (= (= lt!1770743 (ListMap!4148 Nil!51361)) (= lambda!189302 lambda!189280))))

(assert (=> bs!1017645 (= (= lt!1770743 lt!1770543) (= lambda!189302 lambda!189256))))

(assert (=> bs!1017646 (= (= lt!1770743 lt!1770548) (= lambda!189302 lambda!189253))))

(assert (=> bs!1017643 (= (= lt!1770743 lt!1770651) (= lambda!189302 lambda!189291))))

(assert (=> bs!1017644 (= (= lt!1770743 lt!1770625) (= lambda!189302 lambda!189282))))

(assert (=> bs!1017647 (= (= lt!1770743 lt!1770646) (= lambda!189302 lambda!189292))))

(assert (=> bs!1017648 (= (= lt!1770743 lt!1770406) (= lambda!189302 lambda!189289))))

(assert (=> b!4615354 (= (= lt!1770743 (ListMap!4148 Nil!51361)) (= lambda!189302 lambda!189301))))

(assert (=> bs!1017646 (= (= lt!1770743 (ListMap!4148 Nil!51361)) (= lambda!189302 lambda!189252))))

(assert (=> bs!1017649 (= (= lt!1770743 (ListMap!4148 Nil!51361)) (= lambda!189302 lambda!189300))))

(assert (=> bs!1017650 (not (= lambda!189302 lambda!189288))))

(assert (=> b!4615354 true))

(declare-fun bs!1017662 () Bool)

(declare-fun d!1453748 () Bool)

(assert (= bs!1017662 (and d!1453748 d!1453718)))

(declare-fun lambda!189306 () Int)

(declare-fun lt!1770738 () ListMap!4147)

(assert (=> bs!1017662 (= (= lt!1770738 lt!1770620) (= lambda!189306 lambda!189284))))

(declare-fun bs!1017663 () Bool)

(assert (= bs!1017663 (and d!1453748 b!4615233)))

(assert (=> bs!1017663 (= (= lt!1770738 (ListMap!4148 Nil!51361)) (= lambda!189306 lambda!189249))))

(declare-fun bs!1017664 () Bool)

(assert (= bs!1017664 (and d!1453748 b!4615251)))

(assert (=> bs!1017664 (= (= lt!1770738 (ListMap!4148 Nil!51361)) (= lambda!189306 lambda!189278))))

(declare-fun bs!1017665 () Bool)

(assert (= bs!1017665 (and d!1453748 b!4615269)))

(assert (=> bs!1017665 (= (= lt!1770738 lt!1770406) (= lambda!189306 lambda!189290))))

(declare-fun bs!1017666 () Bool)

(assert (= bs!1017666 (and d!1453748 b!4615248)))

(assert (=> bs!1017666 (= (= lt!1770738 (ListMap!4148 Nil!51361)) (= lambda!189306 lambda!189280))))

(declare-fun bs!1017667 () Bool)

(assert (= bs!1017667 (and d!1453748 d!1453696)))

(assert (=> bs!1017667 (= (= lt!1770738 lt!1770543) (= lambda!189306 lambda!189256))))

(assert (=> bs!1017665 (= (= lt!1770738 lt!1770651) (= lambda!189306 lambda!189291))))

(assert (=> bs!1017666 (= (= lt!1770738 lt!1770625) (= lambda!189306 lambda!189282))))

(declare-fun bs!1017668 () Bool)

(assert (= bs!1017668 (and d!1453748 d!1453730)))

(assert (=> bs!1017668 (= (= lt!1770738 lt!1770646) (= lambda!189306 lambda!189292))))

(declare-fun bs!1017669 () Bool)

(assert (= bs!1017669 (and d!1453748 b!4615272)))

(assert (=> bs!1017669 (= (= lt!1770738 lt!1770406) (= lambda!189306 lambda!189289))))

(declare-fun bs!1017670 () Bool)

(assert (= bs!1017670 (and d!1453748 b!4615354)))

(assert (=> bs!1017670 (= (= lt!1770738 (ListMap!4148 Nil!51361)) (= lambda!189306 lambda!189301))))

(declare-fun bs!1017671 () Bool)

(assert (= bs!1017671 (and d!1453748 b!4615230)))

(assert (=> bs!1017671 (= (= lt!1770738 (ListMap!4148 Nil!51361)) (= lambda!189306 lambda!189252))))

(declare-fun bs!1017672 () Bool)

(assert (= bs!1017672 (and d!1453748 b!4615357)))

(assert (=> bs!1017672 (= (= lt!1770738 (ListMap!4148 Nil!51361)) (= lambda!189306 lambda!189300))))

(declare-fun bs!1017673 () Bool)

(assert (= bs!1017673 (and d!1453748 d!1453724)))

(assert (=> bs!1017673 (not (= lambda!189306 lambda!189288))))

(assert (=> bs!1017670 (= (= lt!1770738 lt!1770743) (= lambda!189306 lambda!189302))))

(assert (=> bs!1017671 (= (= lt!1770738 lt!1770548) (= lambda!189306 lambda!189253))))

(assert (=> d!1453748 true))

(declare-fun b!4615353 () Bool)

(declare-fun res!1933596 () Bool)

(declare-fun e!2878873 () Bool)

(assert (=> b!4615353 (=> (not res!1933596) (not e!2878873))))

(assert (=> b!4615353 (= res!1933596 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) lambda!189306))))

(assert (=> d!1453748 e!2878873))

(declare-fun res!1933595 () Bool)

(assert (=> d!1453748 (=> (not res!1933595) (not e!2878873))))

(assert (=> d!1453748 (= res!1933595 (forall!10737 newBucket!224 lambda!189306))))

(declare-fun e!2878874 () ListMap!4147)

(assert (=> d!1453748 (= lt!1770738 e!2878874)))

(declare-fun c!790187 () Bool)

(assert (=> d!1453748 (= c!790187 (is-Nil!51361 newBucket!224))))

(assert (=> d!1453748 (noDuplicateKeys!1439 newBucket!224)))

(assert (=> d!1453748 (= (addToMapMapFromBucket!900 newBucket!224 (ListMap!4148 Nil!51361)) lt!1770738)))

(declare-fun call!321766 () Bool)

(declare-fun bm!321759 () Bool)

(assert (=> bm!321759 (= call!321766 (forall!10737 (ite c!790187 (toList!4843 (ListMap!4148 Nil!51361)) (t!358487 newBucket!224)) (ite c!790187 lambda!189300 lambda!189302)))))

(assert (=> b!4615354 (= e!2878874 lt!1770743)))

(declare-fun lt!1770732 () ListMap!4147)

(assert (=> b!4615354 (= lt!1770732 (+!1824 (ListMap!4148 Nil!51361) (h!57371 newBucket!224)))))

(assert (=> b!4615354 (= lt!1770743 (addToMapMapFromBucket!900 (t!358487 newBucket!224) (+!1824 (ListMap!4148 Nil!51361) (h!57371 newBucket!224))))))

(declare-fun lt!1770736 () Unit!110010)

(declare-fun call!321764 () Unit!110010)

(assert (=> b!4615354 (= lt!1770736 call!321764)))

(assert (=> b!4615354 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) lambda!189301)))

(declare-fun lt!1770741 () Unit!110010)

(assert (=> b!4615354 (= lt!1770741 lt!1770736)))

(assert (=> b!4615354 (forall!10737 (toList!4843 lt!1770732) lambda!189302)))

(declare-fun lt!1770745 () Unit!110010)

(declare-fun Unit!110074 () Unit!110010)

(assert (=> b!4615354 (= lt!1770745 Unit!110074)))

(assert (=> b!4615354 call!321766))

(declare-fun lt!1770748 () Unit!110010)

(declare-fun Unit!110075 () Unit!110010)

(assert (=> b!4615354 (= lt!1770748 Unit!110075)))

(declare-fun lt!1770744 () Unit!110010)

(declare-fun Unit!110077 () Unit!110010)

(assert (=> b!4615354 (= lt!1770744 Unit!110077)))

(declare-fun lt!1770728 () Unit!110010)

(assert (=> b!4615354 (= lt!1770728 (forallContained!2958 (toList!4843 lt!1770732) lambda!189302 (h!57371 newBucket!224)))))

(assert (=> b!4615354 (contains!14325 lt!1770732 (_1!29395 (h!57371 newBucket!224)))))

(declare-fun lt!1770734 () Unit!110010)

(declare-fun Unit!110078 () Unit!110010)

(assert (=> b!4615354 (= lt!1770734 Unit!110078)))

(assert (=> b!4615354 (contains!14325 lt!1770743 (_1!29395 (h!57371 newBucket!224)))))

(declare-fun lt!1770729 () Unit!110010)

(declare-fun Unit!110080 () Unit!110010)

(assert (=> b!4615354 (= lt!1770729 Unit!110080)))

(assert (=> b!4615354 (forall!10737 newBucket!224 lambda!189302)))

(declare-fun lt!1770742 () Unit!110010)

(declare-fun Unit!110081 () Unit!110010)

(assert (=> b!4615354 (= lt!1770742 Unit!110081)))

(assert (=> b!4615354 (forall!10737 (toList!4843 lt!1770732) lambda!189302)))

(declare-fun lt!1770737 () Unit!110010)

(declare-fun Unit!110082 () Unit!110010)

(assert (=> b!4615354 (= lt!1770737 Unit!110082)))

(declare-fun lt!1770735 () Unit!110010)

(declare-fun Unit!110083 () Unit!110010)

(assert (=> b!4615354 (= lt!1770735 Unit!110083)))

(declare-fun lt!1770746 () Unit!110010)

(assert (=> b!4615354 (= lt!1770746 (addForallContainsKeyThenBeforeAdding!465 (ListMap!4148 Nil!51361) lt!1770743 (_1!29395 (h!57371 newBucket!224)) (_2!29395 (h!57371 newBucket!224))))))

(assert (=> b!4615354 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) lambda!189302)))

(declare-fun lt!1770730 () Unit!110010)

(assert (=> b!4615354 (= lt!1770730 lt!1770746)))

(declare-fun call!321765 () Bool)

(assert (=> b!4615354 call!321765))

(declare-fun lt!1770731 () Unit!110010)

(declare-fun Unit!110085 () Unit!110010)

(assert (=> b!4615354 (= lt!1770731 Unit!110085)))

(declare-fun res!1933597 () Bool)

(assert (=> b!4615354 (= res!1933597 (forall!10737 newBucket!224 lambda!189302))))

(declare-fun e!2878875 () Bool)

(assert (=> b!4615354 (=> (not res!1933597) (not e!2878875))))

(assert (=> b!4615354 e!2878875))

(declare-fun lt!1770733 () Unit!110010)

(declare-fun Unit!110086 () Unit!110010)

(assert (=> b!4615354 (= lt!1770733 Unit!110086)))

(declare-fun bm!321760 () Bool)

(assert (=> bm!321760 (= call!321765 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) (ite c!790187 lambda!189300 lambda!189302)))))

(declare-fun b!4615355 () Bool)

(assert (=> b!4615355 (= e!2878873 (invariantList!1164 (toList!4843 lt!1770738)))))

(declare-fun b!4615356 () Bool)

(assert (=> b!4615356 (= e!2878875 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) lambda!189302))))

(declare-fun bm!321761 () Bool)

(assert (=> bm!321761 (= call!321764 (lemmaContainsAllItsOwnKeys!466 (ListMap!4148 Nil!51361)))))

(assert (=> b!4615357 (= e!2878874 (ListMap!4148 Nil!51361))))

(declare-fun lt!1770747 () Unit!110010)

(assert (=> b!4615357 (= lt!1770747 call!321764)))

(assert (=> b!4615357 call!321766))

(declare-fun lt!1770739 () Unit!110010)

(assert (=> b!4615357 (= lt!1770739 lt!1770747)))

(assert (=> b!4615357 call!321765))

(declare-fun lt!1770740 () Unit!110010)

(declare-fun Unit!110087 () Unit!110010)

(assert (=> b!4615357 (= lt!1770740 Unit!110087)))

(assert (= (and d!1453748 c!790187) b!4615357))

(assert (= (and d!1453748 (not c!790187)) b!4615354))

(assert (= (and b!4615354 res!1933597) b!4615356))

(assert (= (or b!4615357 b!4615354) bm!321761))

(assert (= (or b!4615357 b!4615354) bm!321759))

(assert (= (or b!4615357 b!4615354) bm!321760))

(assert (= (and d!1453748 res!1933595) b!4615353))

(assert (= (and b!4615353 res!1933596) b!4615355))

(declare-fun m!5448471 () Bool)

(assert (=> bm!321760 m!5448471))

(declare-fun m!5448473 () Bool)

(assert (=> b!4615353 m!5448473))

(declare-fun m!5448475 () Bool)

(assert (=> b!4615354 m!5448475))

(declare-fun m!5448477 () Bool)

(assert (=> b!4615354 m!5448477))

(declare-fun m!5448479 () Bool)

(assert (=> b!4615354 m!5448479))

(declare-fun m!5448481 () Bool)

(assert (=> b!4615354 m!5448481))

(declare-fun m!5448483 () Bool)

(assert (=> b!4615354 m!5448483))

(declare-fun m!5448485 () Bool)

(assert (=> b!4615354 m!5448485))

(assert (=> b!4615354 m!5448475))

(declare-fun m!5448487 () Bool)

(assert (=> b!4615354 m!5448487))

(declare-fun m!5448489 () Bool)

(assert (=> b!4615354 m!5448489))

(assert (=> b!4615354 m!5448487))

(declare-fun m!5448491 () Bool)

(assert (=> b!4615354 m!5448491))

(assert (=> b!4615354 m!5448479))

(declare-fun m!5448493 () Bool)

(assert (=> b!4615354 m!5448493))

(declare-fun m!5448495 () Bool)

(assert (=> b!4615355 m!5448495))

(declare-fun m!5448497 () Bool)

(assert (=> d!1453748 m!5448497))

(assert (=> d!1453748 m!5448049))

(declare-fun m!5448499 () Bool)

(assert (=> bm!321759 m!5448499))

(assert (=> bm!321761 m!5448215))

(assert (=> b!4615356 m!5448491))

(assert (=> b!4615106 d!1453748))

(declare-fun bs!1017681 () Bool)

(declare-fun b!4615373 () Bool)

(assert (= bs!1017681 (and b!4615373 d!1453718)))

(declare-fun lambda!189308 () Int)

(assert (=> bs!1017681 (= (= (ListMap!4148 Nil!51361) lt!1770620) (= lambda!189308 lambda!189284))))

(declare-fun bs!1017682 () Bool)

(assert (= bs!1017682 (and b!4615373 b!4615233)))

(assert (=> bs!1017682 (= lambda!189308 lambda!189249)))

(declare-fun bs!1017683 () Bool)

(assert (= bs!1017683 (and b!4615373 b!4615251)))

(assert (=> bs!1017683 (= lambda!189308 lambda!189278)))

(declare-fun bs!1017684 () Bool)

(assert (= bs!1017684 (and b!4615373 b!4615269)))

(assert (=> bs!1017684 (= (= (ListMap!4148 Nil!51361) lt!1770406) (= lambda!189308 lambda!189290))))

(declare-fun bs!1017685 () Bool)

(assert (= bs!1017685 (and b!4615373 b!4615248)))

(assert (=> bs!1017685 (= lambda!189308 lambda!189280)))

(declare-fun bs!1017686 () Bool)

(assert (= bs!1017686 (and b!4615373 d!1453696)))

(assert (=> bs!1017686 (= (= (ListMap!4148 Nil!51361) lt!1770543) (= lambda!189308 lambda!189256))))

(assert (=> bs!1017684 (= (= (ListMap!4148 Nil!51361) lt!1770651) (= lambda!189308 lambda!189291))))

(assert (=> bs!1017685 (= (= (ListMap!4148 Nil!51361) lt!1770625) (= lambda!189308 lambda!189282))))

(declare-fun bs!1017687 () Bool)

(assert (= bs!1017687 (and b!4615373 d!1453730)))

(assert (=> bs!1017687 (= (= (ListMap!4148 Nil!51361) lt!1770646) (= lambda!189308 lambda!189292))))

(declare-fun bs!1017688 () Bool)

(assert (= bs!1017688 (and b!4615373 b!4615272)))

(assert (=> bs!1017688 (= (= (ListMap!4148 Nil!51361) lt!1770406) (= lambda!189308 lambda!189289))))

(declare-fun bs!1017689 () Bool)

(assert (= bs!1017689 (and b!4615373 b!4615354)))

(assert (=> bs!1017689 (= lambda!189308 lambda!189301)))

(declare-fun bs!1017690 () Bool)

(assert (= bs!1017690 (and b!4615373 b!4615230)))

(assert (=> bs!1017690 (= lambda!189308 lambda!189252)))

(declare-fun bs!1017691 () Bool)

(assert (= bs!1017691 (and b!4615373 b!4615357)))

(assert (=> bs!1017691 (= lambda!189308 lambda!189300)))

(declare-fun bs!1017692 () Bool)

(assert (= bs!1017692 (and b!4615373 d!1453724)))

(assert (=> bs!1017692 (not (= lambda!189308 lambda!189288))))

(declare-fun bs!1017693 () Bool)

(assert (= bs!1017693 (and b!4615373 d!1453748)))

(assert (=> bs!1017693 (= (= (ListMap!4148 Nil!51361) lt!1770738) (= lambda!189308 lambda!189306))))

(assert (=> bs!1017689 (= (= (ListMap!4148 Nil!51361) lt!1770743) (= lambda!189308 lambda!189302))))

(assert (=> bs!1017690 (= (= (ListMap!4148 Nil!51361) lt!1770548) (= lambda!189308 lambda!189253))))

(assert (=> b!4615373 true))

(declare-fun bs!1017694 () Bool)

(declare-fun b!4615370 () Bool)

(assert (= bs!1017694 (and b!4615370 d!1453718)))

(declare-fun lambda!189309 () Int)

(assert (=> bs!1017694 (= (= (ListMap!4148 Nil!51361) lt!1770620) (= lambda!189309 lambda!189284))))

(declare-fun bs!1017695 () Bool)

(assert (= bs!1017695 (and b!4615370 b!4615233)))

(assert (=> bs!1017695 (= lambda!189309 lambda!189249)))

(declare-fun bs!1017696 () Bool)

(assert (= bs!1017696 (and b!4615370 b!4615251)))

(assert (=> bs!1017696 (= lambda!189309 lambda!189278)))

(declare-fun bs!1017697 () Bool)

(assert (= bs!1017697 (and b!4615370 b!4615269)))

(assert (=> bs!1017697 (= (= (ListMap!4148 Nil!51361) lt!1770406) (= lambda!189309 lambda!189290))))

(declare-fun bs!1017698 () Bool)

(assert (= bs!1017698 (and b!4615370 b!4615248)))

(assert (=> bs!1017698 (= lambda!189309 lambda!189280)))

(declare-fun bs!1017699 () Bool)

(assert (= bs!1017699 (and b!4615370 d!1453696)))

(assert (=> bs!1017699 (= (= (ListMap!4148 Nil!51361) lt!1770543) (= lambda!189309 lambda!189256))))

(assert (=> bs!1017697 (= (= (ListMap!4148 Nil!51361) lt!1770651) (= lambda!189309 lambda!189291))))

(assert (=> bs!1017698 (= (= (ListMap!4148 Nil!51361) lt!1770625) (= lambda!189309 lambda!189282))))

(declare-fun bs!1017700 () Bool)

(assert (= bs!1017700 (and b!4615370 d!1453730)))

(assert (=> bs!1017700 (= (= (ListMap!4148 Nil!51361) lt!1770646) (= lambda!189309 lambda!189292))))

(declare-fun bs!1017701 () Bool)

(assert (= bs!1017701 (and b!4615370 b!4615272)))

(assert (=> bs!1017701 (= (= (ListMap!4148 Nil!51361) lt!1770406) (= lambda!189309 lambda!189289))))

(declare-fun bs!1017702 () Bool)

(assert (= bs!1017702 (and b!4615370 b!4615354)))

(assert (=> bs!1017702 (= lambda!189309 lambda!189301)))

(declare-fun bs!1017703 () Bool)

(assert (= bs!1017703 (and b!4615370 b!4615230)))

(assert (=> bs!1017703 (= lambda!189309 lambda!189252)))

(declare-fun bs!1017704 () Bool)

(assert (= bs!1017704 (and b!4615370 b!4615373)))

(assert (=> bs!1017704 (= lambda!189309 lambda!189308)))

(declare-fun bs!1017705 () Bool)

(assert (= bs!1017705 (and b!4615370 b!4615357)))

(assert (=> bs!1017705 (= lambda!189309 lambda!189300)))

(declare-fun bs!1017706 () Bool)

(assert (= bs!1017706 (and b!4615370 d!1453724)))

(assert (=> bs!1017706 (not (= lambda!189309 lambda!189288))))

(declare-fun bs!1017707 () Bool)

(assert (= bs!1017707 (and b!4615370 d!1453748)))

(assert (=> bs!1017707 (= (= (ListMap!4148 Nil!51361) lt!1770738) (= lambda!189309 lambda!189306))))

(assert (=> bs!1017702 (= (= (ListMap!4148 Nil!51361) lt!1770743) (= lambda!189309 lambda!189302))))

(assert (=> bs!1017703 (= (= (ListMap!4148 Nil!51361) lt!1770548) (= lambda!189309 lambda!189253))))

(assert (=> b!4615370 true))

(declare-fun lt!1770797 () ListMap!4147)

(declare-fun lambda!189310 () Int)

(assert (=> bs!1017694 (= (= lt!1770797 lt!1770620) (= lambda!189310 lambda!189284))))

(assert (=> bs!1017696 (= (= lt!1770797 (ListMap!4148 Nil!51361)) (= lambda!189310 lambda!189278))))

(assert (=> bs!1017697 (= (= lt!1770797 lt!1770406) (= lambda!189310 lambda!189290))))

(assert (=> bs!1017698 (= (= lt!1770797 (ListMap!4148 Nil!51361)) (= lambda!189310 lambda!189280))))

(assert (=> bs!1017699 (= (= lt!1770797 lt!1770543) (= lambda!189310 lambda!189256))))

(assert (=> bs!1017697 (= (= lt!1770797 lt!1770651) (= lambda!189310 lambda!189291))))

(assert (=> bs!1017698 (= (= lt!1770797 lt!1770625) (= lambda!189310 lambda!189282))))

(assert (=> bs!1017700 (= (= lt!1770797 lt!1770646) (= lambda!189310 lambda!189292))))

(assert (=> bs!1017701 (= (= lt!1770797 lt!1770406) (= lambda!189310 lambda!189289))))

(assert (=> bs!1017702 (= (= lt!1770797 (ListMap!4148 Nil!51361)) (= lambda!189310 lambda!189301))))

(assert (=> bs!1017703 (= (= lt!1770797 (ListMap!4148 Nil!51361)) (= lambda!189310 lambda!189252))))

(assert (=> bs!1017704 (= (= lt!1770797 (ListMap!4148 Nil!51361)) (= lambda!189310 lambda!189308))))

(assert (=> b!4615370 (= (= lt!1770797 (ListMap!4148 Nil!51361)) (= lambda!189310 lambda!189309))))

(assert (=> bs!1017695 (= (= lt!1770797 (ListMap!4148 Nil!51361)) (= lambda!189310 lambda!189249))))

(assert (=> bs!1017705 (= (= lt!1770797 (ListMap!4148 Nil!51361)) (= lambda!189310 lambda!189300))))

(assert (=> bs!1017706 (not (= lambda!189310 lambda!189288))))

(assert (=> bs!1017707 (= (= lt!1770797 lt!1770738) (= lambda!189310 lambda!189306))))

(assert (=> bs!1017702 (= (= lt!1770797 lt!1770743) (= lambda!189310 lambda!189302))))

(assert (=> bs!1017703 (= (= lt!1770797 lt!1770548) (= lambda!189310 lambda!189253))))

(assert (=> b!4615370 true))

(declare-fun bs!1017708 () Bool)

(declare-fun d!1453752 () Bool)

(assert (= bs!1017708 (and d!1453752 d!1453718)))

(declare-fun lambda!189311 () Int)

(declare-fun lt!1770792 () ListMap!4147)

(assert (=> bs!1017708 (= (= lt!1770792 lt!1770620) (= lambda!189311 lambda!189284))))

(declare-fun bs!1017709 () Bool)

(assert (= bs!1017709 (and d!1453752 b!4615251)))

(assert (=> bs!1017709 (= (= lt!1770792 (ListMap!4148 Nil!51361)) (= lambda!189311 lambda!189278))))

(declare-fun bs!1017710 () Bool)

(assert (= bs!1017710 (and d!1453752 b!4615269)))

(assert (=> bs!1017710 (= (= lt!1770792 lt!1770406) (= lambda!189311 lambda!189290))))

(declare-fun bs!1017711 () Bool)

(assert (= bs!1017711 (and d!1453752 b!4615248)))

(assert (=> bs!1017711 (= (= lt!1770792 (ListMap!4148 Nil!51361)) (= lambda!189311 lambda!189280))))

(declare-fun bs!1017712 () Bool)

(assert (= bs!1017712 (and d!1453752 d!1453696)))

(assert (=> bs!1017712 (= (= lt!1770792 lt!1770543) (= lambda!189311 lambda!189256))))

(assert (=> bs!1017710 (= (= lt!1770792 lt!1770651) (= lambda!189311 lambda!189291))))

(assert (=> bs!1017711 (= (= lt!1770792 lt!1770625) (= lambda!189311 lambda!189282))))

(declare-fun bs!1017713 () Bool)

(assert (= bs!1017713 (and d!1453752 d!1453730)))

(assert (=> bs!1017713 (= (= lt!1770792 lt!1770646) (= lambda!189311 lambda!189292))))

(declare-fun bs!1017714 () Bool)

(assert (= bs!1017714 (and d!1453752 b!4615272)))

(assert (=> bs!1017714 (= (= lt!1770792 lt!1770406) (= lambda!189311 lambda!189289))))

(declare-fun bs!1017715 () Bool)

(assert (= bs!1017715 (and d!1453752 b!4615354)))

(assert (=> bs!1017715 (= (= lt!1770792 (ListMap!4148 Nil!51361)) (= lambda!189311 lambda!189301))))

(declare-fun bs!1017716 () Bool)

(assert (= bs!1017716 (and d!1453752 b!4615373)))

(assert (=> bs!1017716 (= (= lt!1770792 (ListMap!4148 Nil!51361)) (= lambda!189311 lambda!189308))))

(declare-fun bs!1017717 () Bool)

(assert (= bs!1017717 (and d!1453752 b!4615370)))

(assert (=> bs!1017717 (= (= lt!1770792 (ListMap!4148 Nil!51361)) (= lambda!189311 lambda!189309))))

(declare-fun bs!1017718 () Bool)

(assert (= bs!1017718 (and d!1453752 b!4615233)))

(assert (=> bs!1017718 (= (= lt!1770792 (ListMap!4148 Nil!51361)) (= lambda!189311 lambda!189249))))

(declare-fun bs!1017719 () Bool)

(assert (= bs!1017719 (and d!1453752 b!4615357)))

(assert (=> bs!1017719 (= (= lt!1770792 (ListMap!4148 Nil!51361)) (= lambda!189311 lambda!189300))))

(declare-fun bs!1017720 () Bool)

(assert (= bs!1017720 (and d!1453752 d!1453724)))

(assert (=> bs!1017720 (not (= lambda!189311 lambda!189288))))

(declare-fun bs!1017721 () Bool)

(assert (= bs!1017721 (and d!1453752 d!1453748)))

(assert (=> bs!1017721 (= (= lt!1770792 lt!1770738) (= lambda!189311 lambda!189306))))

(assert (=> bs!1017715 (= (= lt!1770792 lt!1770743) (= lambda!189311 lambda!189302))))

(declare-fun bs!1017722 () Bool)

(assert (= bs!1017722 (and d!1453752 b!4615230)))

(assert (=> bs!1017722 (= (= lt!1770792 lt!1770548) (= lambda!189311 lambda!189253))))

(assert (=> bs!1017722 (= (= lt!1770792 (ListMap!4148 Nil!51361)) (= lambda!189311 lambda!189252))))

(assert (=> bs!1017717 (= (= lt!1770792 lt!1770797) (= lambda!189311 lambda!189310))))

(assert (=> d!1453752 true))

(declare-fun b!4615369 () Bool)

(declare-fun res!1933608 () Bool)

(declare-fun e!2878882 () Bool)

(assert (=> b!4615369 (=> (not res!1933608) (not e!2878882))))

(assert (=> b!4615369 (= res!1933608 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) lambda!189311))))

(assert (=> d!1453752 e!2878882))

(declare-fun res!1933607 () Bool)

(assert (=> d!1453752 (=> (not res!1933607) (not e!2878882))))

(assert (=> d!1453752 (= res!1933607 (forall!10737 lt!1770405 lambda!189311))))

(declare-fun e!2878883 () ListMap!4147)

(assert (=> d!1453752 (= lt!1770792 e!2878883)))

(declare-fun c!790189 () Bool)

(assert (=> d!1453752 (= c!790189 (is-Nil!51361 lt!1770405))))

(assert (=> d!1453752 (noDuplicateKeys!1439 lt!1770405)))

(assert (=> d!1453752 (= (addToMapMapFromBucket!900 lt!1770405 (ListMap!4148 Nil!51361)) lt!1770792)))

(declare-fun call!321772 () Bool)

(declare-fun bm!321765 () Bool)

(assert (=> bm!321765 (= call!321772 (forall!10737 (ite c!790189 (toList!4843 (ListMap!4148 Nil!51361)) (t!358487 lt!1770405)) (ite c!790189 lambda!189308 lambda!189310)))))

(assert (=> b!4615370 (= e!2878883 lt!1770797)))

(declare-fun lt!1770786 () ListMap!4147)

(assert (=> b!4615370 (= lt!1770786 (+!1824 (ListMap!4148 Nil!51361) (h!57371 lt!1770405)))))

(assert (=> b!4615370 (= lt!1770797 (addToMapMapFromBucket!900 (t!358487 lt!1770405) (+!1824 (ListMap!4148 Nil!51361) (h!57371 lt!1770405))))))

(declare-fun lt!1770790 () Unit!110010)

(declare-fun call!321770 () Unit!110010)

(assert (=> b!4615370 (= lt!1770790 call!321770)))

(assert (=> b!4615370 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) lambda!189309)))

(declare-fun lt!1770795 () Unit!110010)

(assert (=> b!4615370 (= lt!1770795 lt!1770790)))

(assert (=> b!4615370 (forall!10737 (toList!4843 lt!1770786) lambda!189310)))

(declare-fun lt!1770799 () Unit!110010)

(declare-fun Unit!110088 () Unit!110010)

(assert (=> b!4615370 (= lt!1770799 Unit!110088)))

(assert (=> b!4615370 call!321772))

(declare-fun lt!1770802 () Unit!110010)

(declare-fun Unit!110089 () Unit!110010)

(assert (=> b!4615370 (= lt!1770802 Unit!110089)))

(declare-fun lt!1770798 () Unit!110010)

(declare-fun Unit!110090 () Unit!110010)

(assert (=> b!4615370 (= lt!1770798 Unit!110090)))

(declare-fun lt!1770782 () Unit!110010)

(assert (=> b!4615370 (= lt!1770782 (forallContained!2958 (toList!4843 lt!1770786) lambda!189310 (h!57371 lt!1770405)))))

(assert (=> b!4615370 (contains!14325 lt!1770786 (_1!29395 (h!57371 lt!1770405)))))

(declare-fun lt!1770788 () Unit!110010)

(declare-fun Unit!110091 () Unit!110010)

(assert (=> b!4615370 (= lt!1770788 Unit!110091)))

(assert (=> b!4615370 (contains!14325 lt!1770797 (_1!29395 (h!57371 lt!1770405)))))

(declare-fun lt!1770783 () Unit!110010)

(declare-fun Unit!110092 () Unit!110010)

(assert (=> b!4615370 (= lt!1770783 Unit!110092)))

(assert (=> b!4615370 (forall!10737 lt!1770405 lambda!189310)))

(declare-fun lt!1770796 () Unit!110010)

(declare-fun Unit!110093 () Unit!110010)

(assert (=> b!4615370 (= lt!1770796 Unit!110093)))

(assert (=> b!4615370 (forall!10737 (toList!4843 lt!1770786) lambda!189310)))

(declare-fun lt!1770791 () Unit!110010)

(declare-fun Unit!110094 () Unit!110010)

(assert (=> b!4615370 (= lt!1770791 Unit!110094)))

(declare-fun lt!1770789 () Unit!110010)

(declare-fun Unit!110095 () Unit!110010)

(assert (=> b!4615370 (= lt!1770789 Unit!110095)))

(declare-fun lt!1770800 () Unit!110010)

(assert (=> b!4615370 (= lt!1770800 (addForallContainsKeyThenBeforeAdding!465 (ListMap!4148 Nil!51361) lt!1770797 (_1!29395 (h!57371 lt!1770405)) (_2!29395 (h!57371 lt!1770405))))))

(assert (=> b!4615370 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) lambda!189310)))

(declare-fun lt!1770784 () Unit!110010)

(assert (=> b!4615370 (= lt!1770784 lt!1770800)))

(declare-fun call!321771 () Bool)

(assert (=> b!4615370 call!321771))

(declare-fun lt!1770785 () Unit!110010)

(declare-fun Unit!110096 () Unit!110010)

(assert (=> b!4615370 (= lt!1770785 Unit!110096)))

(declare-fun res!1933609 () Bool)

(assert (=> b!4615370 (= res!1933609 (forall!10737 lt!1770405 lambda!189310))))

(declare-fun e!2878884 () Bool)

(assert (=> b!4615370 (=> (not res!1933609) (not e!2878884))))

(assert (=> b!4615370 e!2878884))

(declare-fun lt!1770787 () Unit!110010)

(declare-fun Unit!110097 () Unit!110010)

(assert (=> b!4615370 (= lt!1770787 Unit!110097)))

(declare-fun bm!321766 () Bool)

(assert (=> bm!321766 (= call!321771 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) (ite c!790189 lambda!189308 lambda!189310)))))

(declare-fun b!4615371 () Bool)

(assert (=> b!4615371 (= e!2878882 (invariantList!1164 (toList!4843 lt!1770792)))))

(declare-fun b!4615372 () Bool)

(assert (=> b!4615372 (= e!2878884 (forall!10737 (toList!4843 (ListMap!4148 Nil!51361)) lambda!189310))))

(declare-fun bm!321767 () Bool)

(assert (=> bm!321767 (= call!321770 (lemmaContainsAllItsOwnKeys!466 (ListMap!4148 Nil!51361)))))

(assert (=> b!4615373 (= e!2878883 (ListMap!4148 Nil!51361))))

(declare-fun lt!1770801 () Unit!110010)

(assert (=> b!4615373 (= lt!1770801 call!321770)))

(assert (=> b!4615373 call!321772))

(declare-fun lt!1770793 () Unit!110010)

(assert (=> b!4615373 (= lt!1770793 lt!1770801)))

(assert (=> b!4615373 call!321771))

(declare-fun lt!1770794 () Unit!110010)

(declare-fun Unit!110098 () Unit!110010)

(assert (=> b!4615373 (= lt!1770794 Unit!110098)))

(assert (= (and d!1453752 c!790189) b!4615373))

(assert (= (and d!1453752 (not c!790189)) b!4615370))

(assert (= (and b!4615370 res!1933609) b!4615372))

(assert (= (or b!4615373 b!4615370) bm!321767))

(assert (= (or b!4615373 b!4615370) bm!321765))

(assert (= (or b!4615373 b!4615370) bm!321766))

(assert (= (and d!1453752 res!1933607) b!4615369))

(assert (= (and b!4615369 res!1933608) b!4615371))

(declare-fun m!5448545 () Bool)

(assert (=> bm!321766 m!5448545))

(declare-fun m!5448547 () Bool)

(assert (=> b!4615369 m!5448547))

(declare-fun m!5448549 () Bool)

(assert (=> b!4615370 m!5448549))

(declare-fun m!5448551 () Bool)

(assert (=> b!4615370 m!5448551))

(declare-fun m!5448553 () Bool)

(assert (=> b!4615370 m!5448553))

(declare-fun m!5448555 () Bool)

(assert (=> b!4615370 m!5448555))

(declare-fun m!5448557 () Bool)

(assert (=> b!4615370 m!5448557))

(declare-fun m!5448559 () Bool)

(assert (=> b!4615370 m!5448559))

(assert (=> b!4615370 m!5448549))

(declare-fun m!5448561 () Bool)

(assert (=> b!4615370 m!5448561))

(declare-fun m!5448563 () Bool)

(assert (=> b!4615370 m!5448563))

(assert (=> b!4615370 m!5448561))

(declare-fun m!5448565 () Bool)

(assert (=> b!4615370 m!5448565))

(assert (=> b!4615370 m!5448553))

(declare-fun m!5448567 () Bool)

(assert (=> b!4615370 m!5448567))

(declare-fun m!5448569 () Bool)

(assert (=> b!4615371 m!5448569))

(declare-fun m!5448571 () Bool)

(assert (=> d!1453752 m!5448571))

(assert (=> d!1453752 m!5448223))

(declare-fun m!5448573 () Bool)

(assert (=> bm!321765 m!5448573))

(assert (=> bm!321767 m!5448215))

(assert (=> b!4615372 m!5448565))

(assert (=> b!4615106 d!1453752))

(declare-fun d!1453758 () Bool)

(declare-fun res!1933616 () Bool)

(declare-fun e!2878890 () Bool)

(assert (=> d!1453758 (=> res!1933616 e!2878890)))

(assert (=> d!1453758 (= res!1933616 (is-Nil!51362 lt!1770410))))

(assert (=> d!1453758 (= (forall!10735 lt!1770410 lambda!189201) e!2878890)))

(declare-fun b!4615380 () Bool)

(declare-fun e!2878891 () Bool)

(assert (=> b!4615380 (= e!2878890 e!2878891)))

(declare-fun res!1933617 () Bool)

(assert (=> b!4615380 (=> (not res!1933617) (not e!2878891))))

(declare-fun dynLambda!21458 (Int tuple2!52204) Bool)

(assert (=> b!4615380 (= res!1933617 (dynLambda!21458 lambda!189201 (h!57372 lt!1770410)))))

(declare-fun b!4615381 () Bool)

(assert (=> b!4615381 (= e!2878891 (forall!10735 (t!358488 lt!1770410) lambda!189201))))

(assert (= (and d!1453758 (not res!1933616)) b!4615380))

(assert (= (and b!4615380 res!1933617) b!4615381))

(declare-fun b_lambda!170517 () Bool)

(assert (=> (not b_lambda!170517) (not b!4615380)))

(declare-fun m!5448587 () Bool)

(assert (=> b!4615380 m!5448587))

(declare-fun m!5448589 () Bool)

(assert (=> b!4615381 m!5448589))

(assert (=> b!4615107 d!1453758))

(declare-fun d!1453764 () Bool)

(assert (=> d!1453764 (= (eq!782 lt!1770411 (-!529 lt!1770399 key!4968)) (= (content!8722 (toList!4843 lt!1770411)) (content!8722 (toList!4843 (-!529 lt!1770399 key!4968)))))))

(declare-fun bs!1017725 () Bool)

(assert (= bs!1017725 d!1453764))

(declare-fun m!5448591 () Bool)

(assert (=> bs!1017725 m!5448591))

(declare-fun m!5448593 () Bool)

(assert (=> bs!1017725 m!5448593))

(assert (=> b!4615107 d!1453764))

(declare-fun d!1453766 () Bool)

(declare-fun e!2878897 () Bool)

(assert (=> d!1453766 e!2878897))

(declare-fun res!1933623 () Bool)

(assert (=> d!1453766 (=> (not res!1933623) (not e!2878897))))

(declare-fun lt!1770833 () ListMap!4147)

(assert (=> d!1453766 (= res!1933623 (not (contains!14325 lt!1770833 key!4968)))))

(declare-fun removePresrvNoDuplicatedKeys!239 (List!51485 K!12748) List!51485)

(assert (=> d!1453766 (= lt!1770833 (ListMap!4148 (removePresrvNoDuplicatedKeys!239 (toList!4843 lt!1770399) key!4968)))))

(assert (=> d!1453766 (= (-!529 lt!1770399 key!4968) lt!1770833)))

(declare-fun b!4615389 () Bool)

(declare-fun content!8724 (List!51490) (Set K!12748))

(assert (=> b!4615389 (= e!2878897 (= (set.minus (content!8724 (keys!18049 lt!1770399)) (set.insert key!4968 (as set.empty (Set K!12748)))) (content!8724 (keys!18049 lt!1770833))))))

(assert (= (and d!1453766 res!1933623) b!4615389))

(declare-fun m!5448621 () Bool)

(assert (=> d!1453766 m!5448621))

(declare-fun m!5448625 () Bool)

(assert (=> d!1453766 m!5448625))

(declare-fun m!5448629 () Bool)

(assert (=> b!4615389 m!5448629))

(declare-fun m!5448631 () Bool)

(assert (=> b!4615389 m!5448631))

(declare-fun m!5448633 () Bool)

(assert (=> b!4615389 m!5448633))

(declare-fun m!5448635 () Bool)

(assert (=> b!4615389 m!5448635))

(assert (=> b!4615389 m!5448631))

(assert (=> b!4615389 m!5448629))

(declare-fun m!5448639 () Bool)

(assert (=> b!4615389 m!5448639))

(assert (=> b!4615107 d!1453766))

(declare-fun d!1453768 () Bool)

(assert (=> d!1453768 (eq!782 (-!529 lt!1770407 key!4968) (-!529 lt!1770399 key!4968))))

(declare-fun lt!1770845 () Unit!110010)

(declare-fun choose!31073 (ListMap!4147 ListMap!4147 K!12748) Unit!110010)

(assert (=> d!1453768 (= lt!1770845 (choose!31073 lt!1770407 lt!1770399 key!4968))))

(assert (=> d!1453768 (eq!782 lt!1770407 lt!1770399)))

(assert (=> d!1453768 (= (lemmaRemovePreservesEq!1 lt!1770407 lt!1770399 key!4968) lt!1770845)))

(declare-fun bs!1017759 () Bool)

(assert (= bs!1017759 d!1453768))

(assert (=> bs!1017759 m!5448027))

(assert (=> bs!1017759 m!5448013))

(assert (=> bs!1017759 m!5448027))

(declare-fun m!5448671 () Bool)

(assert (=> bs!1017759 m!5448671))

(assert (=> bs!1017759 m!5447993))

(assert (=> bs!1017759 m!5448013))

(declare-fun m!5448673 () Bool)

(assert (=> bs!1017759 m!5448673))

(assert (=> b!4615107 d!1453768))

(declare-fun d!1453780 () Bool)

(assert (=> d!1453780 (= (eq!782 lt!1770407 lt!1770399) (= (content!8722 (toList!4843 lt!1770407)) (content!8722 (toList!4843 lt!1770399))))))

(declare-fun bs!1017760 () Bool)

(assert (= bs!1017760 d!1453780))

(assert (=> bs!1017760 m!5448229))

(declare-fun m!5448675 () Bool)

(assert (=> bs!1017760 m!5448675))

(assert (=> b!4615108 d!1453780))

(declare-fun d!1453782 () Bool)

(declare-fun e!2878905 () Bool)

(assert (=> d!1453782 e!2878905))

(declare-fun res!1933627 () Bool)

(assert (=> d!1453782 (=> (not res!1933627) (not e!2878905))))

(declare-fun lt!1770846 () ListMap!4147)

(assert (=> d!1453782 (= res!1933627 (not (contains!14325 lt!1770846 key!4968)))))

(assert (=> d!1453782 (= lt!1770846 (ListMap!4148 (removePresrvNoDuplicatedKeys!239 (toList!4843 lt!1770407) key!4968)))))

(assert (=> d!1453782 (= (-!529 lt!1770407 key!4968) lt!1770846)))

(declare-fun b!4615401 () Bool)

(assert (=> b!4615401 (= e!2878905 (= (set.minus (content!8724 (keys!18049 lt!1770407)) (set.insert key!4968 (as set.empty (Set K!12748)))) (content!8724 (keys!18049 lt!1770846))))))

(assert (= (and d!1453782 res!1933627) b!4615401))

(declare-fun m!5448677 () Bool)

(assert (=> d!1453782 m!5448677))

(declare-fun m!5448679 () Bool)

(assert (=> d!1453782 m!5448679))

(declare-fun m!5448681 () Bool)

(assert (=> b!4615401 m!5448681))

(declare-fun m!5448683 () Bool)

(assert (=> b!4615401 m!5448683))

(declare-fun m!5448685 () Bool)

(assert (=> b!4615401 m!5448685))

(assert (=> b!4615401 m!5448635))

(assert (=> b!4615401 m!5448683))

(assert (=> b!4615401 m!5448681))

(declare-fun m!5448687 () Bool)

(assert (=> b!4615401 m!5448687))

(assert (=> b!4615109 d!1453782))

(declare-fun d!1453784 () Bool)

(declare-fun e!2878906 () Bool)

(assert (=> d!1453784 e!2878906))

(declare-fun res!1933628 () Bool)

(assert (=> d!1453784 (=> (not res!1933628) (not e!2878906))))

(declare-fun lt!1770847 () ListMap!4147)

(assert (=> d!1453784 (= res!1933628 (not (contains!14325 lt!1770847 key!4968)))))

(assert (=> d!1453784 (= lt!1770847 (ListMap!4148 (removePresrvNoDuplicatedKeys!239 (toList!4843 (+!1824 lt!1770412 (tuple2!52203 key!4968 (_2!29395 (h!57371 oldBucket!40))))) key!4968)))))

(assert (=> d!1453784 (= (-!529 (+!1824 lt!1770412 (tuple2!52203 key!4968 (_2!29395 (h!57371 oldBucket!40)))) key!4968) lt!1770847)))

(declare-fun b!4615402 () Bool)

(assert (=> b!4615402 (= e!2878906 (= (set.minus (content!8724 (keys!18049 (+!1824 lt!1770412 (tuple2!52203 key!4968 (_2!29395 (h!57371 oldBucket!40)))))) (set.insert key!4968 (as set.empty (Set K!12748)))) (content!8724 (keys!18049 lt!1770847))))))

(assert (= (and d!1453784 res!1933628) b!4615402))

(declare-fun m!5448689 () Bool)

(assert (=> d!1453784 m!5448689))

(declare-fun m!5448691 () Bool)

(assert (=> d!1453784 m!5448691))

(assert (=> b!4615402 m!5448015))

(declare-fun m!5448693 () Bool)

(assert (=> b!4615402 m!5448693))

(declare-fun m!5448695 () Bool)

(assert (=> b!4615402 m!5448695))

(declare-fun m!5448697 () Bool)

(assert (=> b!4615402 m!5448697))

(assert (=> b!4615402 m!5448635))

(assert (=> b!4615402 m!5448695))

(assert (=> b!4615402 m!5448693))

(declare-fun m!5448699 () Bool)

(assert (=> b!4615402 m!5448699))

(assert (=> b!4615109 d!1453784))

(declare-fun d!1453786 () Bool)

(declare-fun e!2878907 () Bool)

(assert (=> d!1453786 e!2878907))

(declare-fun res!1933629 () Bool)

(assert (=> d!1453786 (=> (not res!1933629) (not e!2878907))))

(declare-fun lt!1770851 () ListMap!4147)

(assert (=> d!1453786 (= res!1933629 (contains!14325 lt!1770851 (_1!29395 (tuple2!52203 key!4968 (_2!29395 (h!57371 oldBucket!40))))))))

(declare-fun lt!1770849 () List!51485)

(assert (=> d!1453786 (= lt!1770851 (ListMap!4148 lt!1770849))))

(declare-fun lt!1770850 () Unit!110010)

(declare-fun lt!1770848 () Unit!110010)

(assert (=> d!1453786 (= lt!1770850 lt!1770848)))

(assert (=> d!1453786 (= (getValueByKey!1381 lt!1770849 (_1!29395 (tuple2!52203 key!4968 (_2!29395 (h!57371 oldBucket!40))))) (Some!11466 (_2!29395 (tuple2!52203 key!4968 (_2!29395 (h!57371 oldBucket!40))))))))

(assert (=> d!1453786 (= lt!1770848 (lemmaContainsTupThenGetReturnValue!817 lt!1770849 (_1!29395 (tuple2!52203 key!4968 (_2!29395 (h!57371 oldBucket!40)))) (_2!29395 (tuple2!52203 key!4968 (_2!29395 (h!57371 oldBucket!40))))))))

(assert (=> d!1453786 (= lt!1770849 (insertNoDuplicatedKeys!325 (toList!4843 lt!1770412) (_1!29395 (tuple2!52203 key!4968 (_2!29395 (h!57371 oldBucket!40)))) (_2!29395 (tuple2!52203 key!4968 (_2!29395 (h!57371 oldBucket!40))))))))

(assert (=> d!1453786 (= (+!1824 lt!1770412 (tuple2!52203 key!4968 (_2!29395 (h!57371 oldBucket!40)))) lt!1770851)))

(declare-fun b!4615403 () Bool)

(declare-fun res!1933630 () Bool)

(assert (=> b!4615403 (=> (not res!1933630) (not e!2878907))))

(assert (=> b!4615403 (= res!1933630 (= (getValueByKey!1381 (toList!4843 lt!1770851) (_1!29395 (tuple2!52203 key!4968 (_2!29395 (h!57371 oldBucket!40))))) (Some!11466 (_2!29395 (tuple2!52203 key!4968 (_2!29395 (h!57371 oldBucket!40)))))))))

(declare-fun b!4615404 () Bool)

(assert (=> b!4615404 (= e!2878907 (contains!14327 (toList!4843 lt!1770851) (tuple2!52203 key!4968 (_2!29395 (h!57371 oldBucket!40)))))))

(assert (= (and d!1453786 res!1933629) b!4615403))

(assert (= (and b!4615403 res!1933630) b!4615404))

(declare-fun m!5448701 () Bool)

(assert (=> d!1453786 m!5448701))

(declare-fun m!5448703 () Bool)

(assert (=> d!1453786 m!5448703))

(declare-fun m!5448705 () Bool)

(assert (=> d!1453786 m!5448705))

(declare-fun m!5448707 () Bool)

(assert (=> d!1453786 m!5448707))

(declare-fun m!5448709 () Bool)

(assert (=> b!4615403 m!5448709))

(declare-fun m!5448711 () Bool)

(assert (=> b!4615404 m!5448711))

(assert (=> b!4615109 d!1453786))

(declare-fun d!1453788 () Bool)

(assert (=> d!1453788 (= (-!529 (+!1824 lt!1770412 (tuple2!52203 key!4968 (_2!29395 (h!57371 oldBucket!40)))) key!4968) lt!1770412)))

(declare-fun lt!1770862 () Unit!110010)

(declare-fun choose!31074 (ListMap!4147 K!12748 V!12994) Unit!110010)

(assert (=> d!1453788 (= lt!1770862 (choose!31074 lt!1770412 key!4968 (_2!29395 (h!57371 oldBucket!40))))))

(assert (=> d!1453788 (not (contains!14325 lt!1770412 key!4968))))

(assert (=> d!1453788 (= (addThenRemoveForNewKeyIsSame!12 lt!1770412 key!4968 (_2!29395 (h!57371 oldBucket!40))) lt!1770862)))

(declare-fun bs!1017761 () Bool)

(assert (= bs!1017761 d!1453788))

(assert (=> bs!1017761 m!5448015))

(assert (=> bs!1017761 m!5448015))

(assert (=> bs!1017761 m!5448017))

(declare-fun m!5448751 () Bool)

(assert (=> bs!1017761 m!5448751))

(assert (=> bs!1017761 m!5448001))

(assert (=> b!4615109 d!1453788))

(declare-fun d!1453796 () Bool)

(declare-fun hash!3392 (Hashable!5836 K!12748) (_ BitVec 64))

(assert (=> d!1453796 (= (hash!3390 hashF!1389 key!4968) (hash!3392 hashF!1389 key!4968))))

(declare-fun bs!1017762 () Bool)

(assert (= bs!1017762 d!1453796))

(declare-fun m!5448753 () Bool)

(assert (=> bs!1017762 m!5448753))

(assert (=> b!4615099 d!1453796))

(declare-fun b!4615411 () Bool)

(assert (=> b!4615411 false))

(declare-fun lt!1770863 () Unit!110010)

(declare-fun lt!1770869 () Unit!110010)

(assert (=> b!4615411 (= lt!1770863 lt!1770869)))

(assert (=> b!4615411 (containsKey!2320 (toList!4843 lt!1770399) key!4968)))

(assert (=> b!4615411 (= lt!1770869 (lemmaInGetKeysListThenContainsKey!615 (toList!4843 lt!1770399) key!4968))))

(declare-fun e!2878917 () Unit!110010)

(declare-fun Unit!110112 () Unit!110010)

(assert (=> b!4615411 (= e!2878917 Unit!110112)))

(declare-fun b!4615412 () Bool)

(declare-fun e!2878918 () List!51490)

(assert (=> b!4615412 (= e!2878918 (keys!18049 lt!1770399))))

(declare-fun b!4615413 () Bool)

(declare-fun e!2878915 () Bool)

(declare-fun e!2878914 () Bool)

(assert (=> b!4615413 (= e!2878915 e!2878914)))

(declare-fun res!1933638 () Bool)

(assert (=> b!4615413 (=> (not res!1933638) (not e!2878914))))

(assert (=> b!4615413 (= res!1933638 (isDefined!8733 (getValueByKey!1381 (toList!4843 lt!1770399) key!4968)))))

(declare-fun b!4615414 () Bool)

(declare-fun e!2878916 () Bool)

(assert (=> b!4615414 (= e!2878916 (not (contains!14329 (keys!18049 lt!1770399) key!4968)))))

(declare-fun b!4615415 () Bool)

(assert (=> b!4615415 (= e!2878914 (contains!14329 (keys!18049 lt!1770399) key!4968))))

(declare-fun b!4615417 () Bool)

(declare-fun Unit!110113 () Unit!110010)

(assert (=> b!4615417 (= e!2878917 Unit!110113)))

(declare-fun bm!321772 () Bool)

(declare-fun call!321777 () Bool)

(assert (=> bm!321772 (= call!321777 (contains!14329 e!2878918 key!4968))))

(declare-fun c!790196 () Bool)

(declare-fun c!790197 () Bool)

(assert (=> bm!321772 (= c!790196 c!790197)))

(declare-fun b!4615418 () Bool)

(assert (=> b!4615418 (= e!2878918 (getKeysList!616 (toList!4843 lt!1770399)))))

(declare-fun b!4615419 () Bool)

(declare-fun e!2878913 () Unit!110010)

(declare-fun lt!1770864 () Unit!110010)

(assert (=> b!4615419 (= e!2878913 lt!1770864)))

(declare-fun lt!1770870 () Unit!110010)

(assert (=> b!4615419 (= lt!1770870 (lemmaContainsKeyImpliesGetValueByKeyDefined!1284 (toList!4843 lt!1770399) key!4968))))

(assert (=> b!4615419 (isDefined!8733 (getValueByKey!1381 (toList!4843 lt!1770399) key!4968))))

(declare-fun lt!1770866 () Unit!110010)

(assert (=> b!4615419 (= lt!1770866 lt!1770870)))

(assert (=> b!4615419 (= lt!1770864 (lemmaInListThenGetKeysListContains!611 (toList!4843 lt!1770399) key!4968))))

(assert (=> b!4615419 call!321777))

(declare-fun d!1453798 () Bool)

(assert (=> d!1453798 e!2878915))

(declare-fun res!1933639 () Bool)

(assert (=> d!1453798 (=> res!1933639 e!2878915)))

(assert (=> d!1453798 (= res!1933639 e!2878916)))

(declare-fun res!1933637 () Bool)

(assert (=> d!1453798 (=> (not res!1933637) (not e!2878916))))

(declare-fun lt!1770868 () Bool)

(assert (=> d!1453798 (= res!1933637 (not lt!1770868))))

(declare-fun lt!1770865 () Bool)

(assert (=> d!1453798 (= lt!1770868 lt!1770865)))

(declare-fun lt!1770867 () Unit!110010)

(assert (=> d!1453798 (= lt!1770867 e!2878913)))

(assert (=> d!1453798 (= c!790197 lt!1770865)))

(assert (=> d!1453798 (= lt!1770865 (containsKey!2320 (toList!4843 lt!1770399) key!4968))))

(assert (=> d!1453798 (= (contains!14325 lt!1770399 key!4968) lt!1770868)))

(declare-fun b!4615416 () Bool)

(assert (=> b!4615416 (= e!2878913 e!2878917)))

(declare-fun c!790195 () Bool)

(assert (=> b!4615416 (= c!790195 call!321777)))

(assert (= (and d!1453798 c!790197) b!4615419))

(assert (= (and d!1453798 (not c!790197)) b!4615416))

(assert (= (and b!4615416 c!790195) b!4615411))

(assert (= (and b!4615416 (not c!790195)) b!4615417))

(assert (= (or b!4615419 b!4615416) bm!321772))

(assert (= (and bm!321772 c!790196) b!4615418))

(assert (= (and bm!321772 (not c!790196)) b!4615412))

(assert (= (and d!1453798 res!1933637) b!4615414))

(assert (= (and d!1453798 (not res!1933639)) b!4615413))

(assert (= (and b!4615413 res!1933638) b!4615415))

(assert (=> b!4615415 m!5448629))

(assert (=> b!4615415 m!5448629))

(declare-fun m!5448755 () Bool)

(assert (=> b!4615415 m!5448755))

(declare-fun m!5448757 () Bool)

(assert (=> b!4615411 m!5448757))

(declare-fun m!5448759 () Bool)

(assert (=> b!4615411 m!5448759))

(declare-fun m!5448761 () Bool)

(assert (=> bm!321772 m!5448761))

(assert (=> d!1453798 m!5448757))

(declare-fun m!5448763 () Bool)

(assert (=> b!4615419 m!5448763))

(declare-fun m!5448765 () Bool)

(assert (=> b!4615419 m!5448765))

(assert (=> b!4615419 m!5448765))

(declare-fun m!5448767 () Bool)

(assert (=> b!4615419 m!5448767))

(declare-fun m!5448769 () Bool)

(assert (=> b!4615419 m!5448769))

(assert (=> b!4615412 m!5448629))

(assert (=> b!4615414 m!5448629))

(assert (=> b!4615414 m!5448629))

(assert (=> b!4615414 m!5448755))

(declare-fun m!5448771 () Bool)

(assert (=> b!4615418 m!5448771))

(assert (=> b!4615413 m!5448765))

(assert (=> b!4615413 m!5448765))

(assert (=> b!4615413 m!5448767))

(assert (=> b!4615110 d!1453798))

(declare-fun bs!1017763 () Bool)

(declare-fun d!1453800 () Bool)

(assert (= bs!1017763 (and d!1453800 b!4615107)))

(declare-fun lambda!189317 () Int)

(assert (=> bs!1017763 (= lambda!189317 lambda!189201)))

(declare-fun bs!1017764 () Bool)

(assert (= bs!1017764 (and d!1453800 d!1453688)))

(assert (=> bs!1017764 (= lambda!189317 lambda!189207)))

(declare-fun bs!1017765 () Bool)

(assert (= bs!1017765 (and d!1453800 d!1453690)))

(assert (=> bs!1017765 (= lambda!189317 lambda!189208)))

(declare-fun bs!1017766 () Bool)

(assert (= bs!1017766 (and d!1453800 d!1453734)))

(assert (=> bs!1017766 (= lambda!189317 lambda!189293)))

(declare-fun bs!1017767 () Bool)

(assert (= bs!1017767 (and d!1453800 d!1453744)))

(assert (=> bs!1017767 (= lambda!189317 lambda!189299)))

(declare-fun lt!1770873 () ListMap!4147)

(assert (=> d!1453800 (invariantList!1164 (toList!4843 lt!1770873))))

(declare-fun e!2878919 () ListMap!4147)

(assert (=> d!1453800 (= lt!1770873 e!2878919)))

(declare-fun c!790198 () Bool)

(assert (=> d!1453800 (= c!790198 (is-Cons!51362 (Cons!51362 (tuple2!52205 hash!414 oldBucket!40) Nil!51362)))))

(assert (=> d!1453800 (forall!10735 (Cons!51362 (tuple2!52205 hash!414 oldBucket!40) Nil!51362) lambda!189317)))

(assert (=> d!1453800 (= (extractMap!1495 (Cons!51362 (tuple2!52205 hash!414 oldBucket!40) Nil!51362)) lt!1770873)))

(declare-fun b!4615420 () Bool)

(assert (=> b!4615420 (= e!2878919 (addToMapMapFromBucket!900 (_2!29396 (h!57372 (Cons!51362 (tuple2!52205 hash!414 oldBucket!40) Nil!51362))) (extractMap!1495 (t!358488 (Cons!51362 (tuple2!52205 hash!414 oldBucket!40) Nil!51362)))))))

(declare-fun b!4615421 () Bool)

(assert (=> b!4615421 (= e!2878919 (ListMap!4148 Nil!51361))))

(assert (= (and d!1453800 c!790198) b!4615420))

(assert (= (and d!1453800 (not c!790198)) b!4615421))

(declare-fun m!5448775 () Bool)

(assert (=> d!1453800 m!5448775))

(declare-fun m!5448777 () Bool)

(assert (=> d!1453800 m!5448777))

(declare-fun m!5448779 () Bool)

(assert (=> b!4615420 m!5448779))

(assert (=> b!4615420 m!5448779))

(declare-fun m!5448781 () Bool)

(assert (=> b!4615420 m!5448781))

(assert (=> b!4615110 d!1453800))

(declare-fun d!1453804 () Bool)

(declare-fun res!1933650 () Bool)

(declare-fun e!2878930 () Bool)

(assert (=> d!1453804 (=> res!1933650 e!2878930)))

(assert (=> d!1453804 (= res!1933650 (not (is-Cons!51361 oldBucket!40)))))

(assert (=> d!1453804 (= (noDuplicateKeys!1439 oldBucket!40) e!2878930)))

(declare-fun b!4615432 () Bool)

(declare-fun e!2878931 () Bool)

(assert (=> b!4615432 (= e!2878930 e!2878931)))

(declare-fun res!1933651 () Bool)

(assert (=> b!4615432 (=> (not res!1933651) (not e!2878931))))

(assert (=> b!4615432 (= res!1933651 (not (containsKey!2317 (t!358487 oldBucket!40) (_1!29395 (h!57371 oldBucket!40)))))))

(declare-fun b!4615433 () Bool)

(assert (=> b!4615433 (= e!2878931 (noDuplicateKeys!1439 (t!358487 oldBucket!40)))))

(assert (= (and d!1453804 (not res!1933650)) b!4615432))

(assert (= (and b!4615432 res!1933651) b!4615433))

(declare-fun m!5448791 () Bool)

(assert (=> b!4615432 m!5448791))

(declare-fun m!5448793 () Bool)

(assert (=> b!4615433 m!5448793))

(assert (=> start!461658 d!1453804))

(declare-fun d!1453810 () Bool)

(assert (=> d!1453810 (= (tail!8086 oldBucket!40) (t!358487 oldBucket!40))))

(assert (=> b!4615100 d!1453810))

(declare-fun d!1453814 () Bool)

(declare-fun res!1933657 () Bool)

(declare-fun e!2878937 () Bool)

(assert (=> d!1453814 (=> res!1933657 e!2878937)))

(assert (=> d!1453814 (= res!1933657 (and (is-Cons!51361 lt!1770405) (= (_1!29395 (h!57371 lt!1770405)) key!4968)))))

(assert (=> d!1453814 (= (containsKey!2317 lt!1770405 key!4968) e!2878937)))

(declare-fun b!4615439 () Bool)

(declare-fun e!2878938 () Bool)

(assert (=> b!4615439 (= e!2878937 e!2878938)))

(declare-fun res!1933658 () Bool)

(assert (=> b!4615439 (=> (not res!1933658) (not e!2878938))))

(assert (=> b!4615439 (= res!1933658 (is-Cons!51361 lt!1770405))))

(declare-fun b!4615440 () Bool)

(assert (=> b!4615440 (= e!2878938 (containsKey!2317 (t!358487 lt!1770405) key!4968))))

(assert (= (and d!1453814 (not res!1933657)) b!4615439))

(assert (= (and b!4615439 res!1933658) b!4615440))

(declare-fun m!5448805 () Bool)

(assert (=> b!4615440 m!5448805))

(assert (=> b!4615111 d!1453814))

(declare-fun d!1453816 () Bool)

(declare-fun res!1933659 () Bool)

(declare-fun e!2878939 () Bool)

(assert (=> d!1453816 (=> res!1933659 e!2878939)))

(assert (=> d!1453816 (= res!1933659 (not (is-Cons!51361 newBucket!224)))))

(assert (=> d!1453816 (= (noDuplicateKeys!1439 newBucket!224) e!2878939)))

(declare-fun b!4615441 () Bool)

(declare-fun e!2878940 () Bool)

(assert (=> b!4615441 (= e!2878939 e!2878940)))

(declare-fun res!1933660 () Bool)

(assert (=> b!4615441 (=> (not res!1933660) (not e!2878940))))

(assert (=> b!4615441 (= res!1933660 (not (containsKey!2317 (t!358487 newBucket!224) (_1!29395 (h!57371 newBucket!224)))))))

(declare-fun b!4615442 () Bool)

(assert (=> b!4615442 (= e!2878940 (noDuplicateKeys!1439 (t!358487 newBucket!224)))))

(assert (= (and d!1453816 (not res!1933659)) b!4615441))

(assert (= (and b!4615441 res!1933660) b!4615442))

(declare-fun m!5448807 () Bool)

(assert (=> b!4615441 m!5448807))

(declare-fun m!5448809 () Bool)

(assert (=> b!4615442 m!5448809))

(assert (=> b!4615101 d!1453816))

(declare-fun bs!1017770 () Bool)

(declare-fun d!1453818 () Bool)

(assert (= bs!1017770 (and d!1453818 d!1453718)))

(declare-fun lambda!189318 () Int)

(assert (=> bs!1017770 (not (= lambda!189318 lambda!189284))))

(declare-fun bs!1017771 () Bool)

(assert (= bs!1017771 (and d!1453818 b!4615251)))

(assert (=> bs!1017771 (not (= lambda!189318 lambda!189278))))

(declare-fun bs!1017772 () Bool)

(assert (= bs!1017772 (and d!1453818 b!4615269)))

(assert (=> bs!1017772 (not (= lambda!189318 lambda!189290))))

(declare-fun bs!1017773 () Bool)

(assert (= bs!1017773 (and d!1453818 b!4615248)))

(assert (=> bs!1017773 (not (= lambda!189318 lambda!189280))))

(declare-fun bs!1017774 () Bool)

(assert (= bs!1017774 (and d!1453818 d!1453696)))

(assert (=> bs!1017774 (not (= lambda!189318 lambda!189256))))

(assert (=> bs!1017772 (not (= lambda!189318 lambda!189291))))

(assert (=> bs!1017773 (not (= lambda!189318 lambda!189282))))

(declare-fun bs!1017775 () Bool)

(assert (= bs!1017775 (and d!1453818 d!1453730)))

(assert (=> bs!1017775 (not (= lambda!189318 lambda!189292))))

(declare-fun bs!1017776 () Bool)

(assert (= bs!1017776 (and d!1453818 b!4615272)))

(assert (=> bs!1017776 (not (= lambda!189318 lambda!189289))))

(declare-fun bs!1017777 () Bool)

(assert (= bs!1017777 (and d!1453818 b!4615354)))

(assert (=> bs!1017777 (not (= lambda!189318 lambda!189301))))

(declare-fun bs!1017778 () Bool)

(assert (= bs!1017778 (and d!1453818 b!4615373)))

(assert (=> bs!1017778 (not (= lambda!189318 lambda!189308))))

(declare-fun bs!1017779 () Bool)

(assert (= bs!1017779 (and d!1453818 d!1453752)))

(assert (=> bs!1017779 (not (= lambda!189318 lambda!189311))))

(declare-fun bs!1017780 () Bool)

(assert (= bs!1017780 (and d!1453818 b!4615370)))

(assert (=> bs!1017780 (not (= lambda!189318 lambda!189309))))

(declare-fun bs!1017781 () Bool)

(assert (= bs!1017781 (and d!1453818 b!4615233)))

(assert (=> bs!1017781 (not (= lambda!189318 lambda!189249))))

(declare-fun bs!1017782 () Bool)

(assert (= bs!1017782 (and d!1453818 b!4615357)))

(assert (=> bs!1017782 (not (= lambda!189318 lambda!189300))))

(declare-fun bs!1017783 () Bool)

(assert (= bs!1017783 (and d!1453818 d!1453724)))

(assert (=> bs!1017783 (= lambda!189318 lambda!189288)))

(declare-fun bs!1017784 () Bool)

(assert (= bs!1017784 (and d!1453818 d!1453748)))

(assert (=> bs!1017784 (not (= lambda!189318 lambda!189306))))

(assert (=> bs!1017777 (not (= lambda!189318 lambda!189302))))

(declare-fun bs!1017785 () Bool)

(assert (= bs!1017785 (and d!1453818 b!4615230)))

(assert (=> bs!1017785 (not (= lambda!189318 lambda!189253))))

(assert (=> bs!1017785 (not (= lambda!189318 lambda!189252))))

(assert (=> bs!1017780 (not (= lambda!189318 lambda!189310))))

(assert (=> d!1453818 true))

(assert (=> d!1453818 true))

(assert (=> d!1453818 (= (allKeysSameHash!1293 newBucket!224 hash!414 hashF!1389) (forall!10737 newBucket!224 lambda!189318))))

(declare-fun bs!1017786 () Bool)

(assert (= bs!1017786 d!1453818))

(declare-fun m!5448811 () Bool)

(assert (=> bs!1017786 m!5448811))

(assert (=> b!4615112 d!1453818))

(declare-fun tp!1341554 () Bool)

(declare-fun b!4615447 () Bool)

(declare-fun e!2878943 () Bool)

(assert (=> b!4615447 (= e!2878943 (and tp_is_empty!29049 tp_is_empty!29051 tp!1341554))))

(assert (=> b!4615097 (= tp!1341544 e!2878943)))

(assert (= (and b!4615097 (is-Cons!51361 (t!358487 newBucket!224))) b!4615447))

(declare-fun tp!1341555 () Bool)

(declare-fun e!2878944 () Bool)

(declare-fun b!4615448 () Bool)

(assert (=> b!4615448 (= e!2878944 (and tp_is_empty!29049 tp_is_empty!29051 tp!1341555))))

(assert (=> b!4615098 (= tp!1341545 e!2878944)))

(assert (= (and b!4615098 (is-Cons!51361 (t!358487 oldBucket!40))) b!4615448))

(declare-fun b_lambda!170521 () Bool)

(assert (= b_lambda!170517 (or b!4615107 b_lambda!170521)))

(declare-fun bs!1017787 () Bool)

(declare-fun d!1453820 () Bool)

(assert (= bs!1017787 (and d!1453820 b!4615107)))

(assert (=> bs!1017787 (= (dynLambda!21458 lambda!189201 (h!57372 lt!1770410)) (noDuplicateKeys!1439 (_2!29396 (h!57372 lt!1770410))))))

(declare-fun m!5448813 () Bool)

(assert (=> bs!1017787 m!5448813))

(assert (=> b!4615380 d!1453820))

(push 1)

(assert (not bm!321766))

(assert (not b!4615402))

(assert (not b!4615268))

(assert (not bm!321758))

(assert (not b!4615420))

(assert (not b!4615415))

(assert (not b!4615404))

(assert (not b!4615371))

(assert (not bm!321733))

(assert (not b!4615370))

(assert (not b!4615279))

(assert (not bm!321772))

(assert (not d!1453718))

(assert (not d!1453696))

(assert (not b!4615342))

(assert (not d!1453688))

(assert (not b!4615257))

(assert (not b!4615335))

(assert (not d!1453724))

(assert (not d!1453752))

(assert (not b!4615348))

(assert (not b!4615187))

(assert (not d!1453764))

(assert (not b!4615442))

(assert (not d!1453692))

(assert (not b!4615432))

(assert (not bm!321765))

(assert (not b!4615356))

(assert tp_is_empty!29049)

(assert (not bm!321747))

(assert (not b!4615352))

(assert (not b!4615229))

(assert (not b!4615411))

(assert (not b!4615201))

(assert (not b!4615448))

(assert (not d!1453780))

(assert (not b!4615231))

(assert (not bm!321761))

(assert (not d!1453786))

(assert (not d!1453690))

(assert (not bm!321749))

(assert (not b!4615440))

(assert (not d!1453768))

(assert (not bm!321734))

(assert (not b!4615193))

(assert (not b!4615389))

(assert (not d!1453744))

(assert (not b!4615418))

(assert (not b!4615447))

(assert (not b!4615271))

(assert (not b!4615248))

(assert (not bm!321748))

(assert (not d!1453722))

(assert (not d!1453736))

(assert (not b!4615269))

(assert (not b!4615403))

(assert (not b!4615338))

(assert (not b!4615414))

(assert (not d!1453788))

(assert (not b!4615343))

(assert (not b!4615250))

(assert (not d!1453742))

(assert (not b!4615441))

(assert (not b!4615230))

(assert (not b!4615355))

(assert (not b!4615339))

(assert (not bm!321746))

(assert (not b!4615247))

(assert (not d!1453730))

(assert (not d!1453714))

(assert (not d!1453796))

(assert (not d!1453686))

(assert (not b_lambda!170521))

(assert (not d!1453784))

(assert (not b!4615433))

(assert (not b!4615346))

(assert (not b!4615353))

(assert (not d!1453818))

(assert (not bm!321759))

(assert (not b!4615344))

(assert (not b!4615354))

(assert (not b!4615256))

(assert (not b!4615351))

(assert (not d!1453734))

(assert (not b!4615413))

(assert (not bm!321735))

(assert (not b!4615372))

(assert (not bm!321760))

(assert (not b!4615232))

(assert (not b!4615270))

(assert (not d!1453712))

(assert tp_is_empty!29051)

(assert (not b!4615202))

(assert (not bm!321767))

(assert (not bm!321750))

(assert (not b!4615337))

(assert (not d!1453710))

(assert (not b!4615336))

(assert (not b!4615401))

(assert (not d!1453766))

(assert (not d!1453798))

(assert (not b!4615345))

(assert (not b!4615195))

(assert (not d!1453748))

(assert (not d!1453782))

(assert (not bm!321757))

(assert (not bm!321745))

(assert (not b!4615347))

(assert (not b!4615419))

(assert (not d!1453800))

(assert (not b!4615249))

(assert (not b!4615381))

(assert (not b!4615412))

(assert (not b!4615369))

(assert (not bs!1017787))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

