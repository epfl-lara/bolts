; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!470976 () Bool)

(assert start!470976)

(declare-fun tp_is_empty!30031 () Bool)

(declare-fun e!2914244 () Bool)

(declare-fun tp!1343742 () Bool)

(declare-fun b!4669995 () Bool)

(declare-fun tp_is_empty!30029 () Bool)

(assert (=> b!4669995 (= e!2914244 (and tp_is_empty!30029 tp_is_empty!30031 tp!1343742))))

(declare-fun b!4669996 () Bool)

(declare-fun res!1965751 () Bool)

(declare-fun e!2914248 () Bool)

(assert (=> b!4669996 (=> (not res!1965751) (not e!2914248))))

(declare-fun hash!414 () (_ BitVec 64))

(declare-datatypes ((K!13360 0))(
  ( (K!13361 (val!18959 Int)) )
))
(declare-fun key!4968 () K!13360)

(declare-datatypes ((Hashable!6081 0))(
  ( (HashableExt!6080 (__x!31784 Int)) )
))
(declare-fun hashF!1389 () Hashable!6081)

(declare-fun hash!3859 (Hashable!6081 K!13360) (_ BitVec 64))

(assert (=> b!4669996 (= res!1965751 (= (hash!3859 hashF!1389 key!4968) hash!414))))

(declare-fun res!1965754 () Bool)

(declare-fun e!2914246 () Bool)

(assert (=> start!470976 (=> (not res!1965754) (not e!2914246))))

(declare-datatypes ((V!13606 0))(
  ( (V!13607 (val!18960 Int)) )
))
(declare-datatypes ((tuple2!53182 0))(
  ( (tuple2!53183 (_1!29885 K!13360) (_2!29885 V!13606)) )
))
(declare-datatypes ((List!52142 0))(
  ( (Nil!52018) (Cons!52018 (h!58196 tuple2!53182) (t!359280 List!52142)) )
))
(declare-fun oldBucket!40 () List!52142)

(declare-fun noDuplicateKeys!1684 (List!52142) Bool)

(assert (=> start!470976 (= res!1965754 (noDuplicateKeys!1684 oldBucket!40))))

(assert (=> start!470976 e!2914246))

(assert (=> start!470976 true))

(declare-fun e!2914247 () Bool)

(assert (=> start!470976 e!2914247))

(assert (=> start!470976 tp_is_empty!30029))

(assert (=> start!470976 e!2914244))

(declare-fun b!4669997 () Bool)

(declare-fun res!1965748 () Bool)

(assert (=> b!4669997 (=> (not res!1965748) (not e!2914248))))

(declare-fun newBucket!224 () List!52142)

(declare-fun allKeysSameHash!1538 (List!52142 (_ BitVec 64) Hashable!6081) Bool)

(assert (=> b!4669997 (= res!1965748 (allKeysSameHash!1538 newBucket!224 hash!414 hashF!1389))))

(declare-fun b!4669998 () Bool)

(declare-fun res!1965752 () Bool)

(assert (=> b!4669998 (=> (not res!1965752) (not e!2914246))))

(assert (=> b!4669998 (= res!1965752 (noDuplicateKeys!1684 newBucket!224))))

(declare-fun b!4669999 () Bool)

(declare-fun e!2914245 () Bool)

(declare-datatypes ((ListMap!4637 0))(
  ( (ListMap!4638 (toList!5296 List!52142)) )
))
(declare-fun lt!1832321 () ListMap!4637)

(assert (=> b!4669999 (= e!2914245 (= lt!1832321 (ListMap!4638 Nil!52018)))))

(declare-fun b!4670000 () Bool)

(declare-fun res!1965750 () Bool)

(assert (=> b!4670000 (=> (not res!1965750) (not e!2914246))))

(assert (=> b!4670000 (= res!1965750 (allKeysSameHash!1538 oldBucket!40 hash!414 hashF!1389))))

(declare-fun b!4670001 () Bool)

(declare-fun res!1965749 () Bool)

(assert (=> b!4670001 (=> (not res!1965749) (not e!2914246))))

(declare-fun removePairForKey!1307 (List!52142 K!13360) List!52142)

(assert (=> b!4670001 (= res!1965749 (= (removePairForKey!1307 oldBucket!40 key!4968) newBucket!224))))

(declare-fun b!4670002 () Bool)

(declare-fun tp!1343743 () Bool)

(assert (=> b!4670002 (= e!2914247 (and tp_is_empty!30029 tp_is_empty!30031 tp!1343743))))

(declare-fun b!4670003 () Bool)

(assert (=> b!4670003 (= e!2914246 e!2914248)))

(declare-fun res!1965747 () Bool)

(assert (=> b!4670003 (=> (not res!1965747) (not e!2914248))))

(declare-fun lt!1832320 () ListMap!4637)

(declare-fun contains!15229 (ListMap!4637 K!13360) Bool)

(assert (=> b!4670003 (= res!1965747 (contains!15229 lt!1832320 key!4968))))

(declare-datatypes ((tuple2!53184 0))(
  ( (tuple2!53185 (_1!29886 (_ BitVec 64)) (_2!29886 List!52142)) )
))
(declare-datatypes ((List!52143 0))(
  ( (Nil!52019) (Cons!52019 (h!58197 tuple2!53184) (t!359281 List!52143)) )
))
(declare-fun extractMap!1740 (List!52143) ListMap!4637)

(assert (=> b!4670003 (= lt!1832320 (extractMap!1740 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))))

(declare-fun b!4670004 () Bool)

(get-info :version)

(assert (=> b!4670004 (= e!2914248 (not (or (and ((_ is Cons!52018) oldBucket!40) (= (_1!29885 (h!58196 oldBucket!40)) key!4968)) (and ((_ is Cons!52018) oldBucket!40) (not (= (_1!29885 (h!58196 oldBucket!40)) key!4968))) (not ((_ is Nil!52018) oldBucket!40)))))))

(assert (=> b!4670004 e!2914245))

(declare-fun res!1965753 () Bool)

(assert (=> b!4670004 (=> (not res!1965753) (not e!2914245))))

(declare-fun addToMapMapFromBucket!1141 (List!52142 ListMap!4637) ListMap!4637)

(assert (=> b!4670004 (= res!1965753 (= lt!1832320 (addToMapMapFromBucket!1141 oldBucket!40 lt!1832321)))))

(assert (=> b!4670004 (= lt!1832321 (extractMap!1740 Nil!52019))))

(assert (=> b!4670004 true))

(assert (= (and start!470976 res!1965754) b!4669998))

(assert (= (and b!4669998 res!1965752) b!4670001))

(assert (= (and b!4670001 res!1965749) b!4670000))

(assert (= (and b!4670000 res!1965750) b!4670003))

(assert (= (and b!4670003 res!1965747) b!4669996))

(assert (= (and b!4669996 res!1965751) b!4669997))

(assert (= (and b!4669997 res!1965748) b!4670004))

(assert (= (and b!4670004 res!1965753) b!4669999))

(assert (= (and start!470976 ((_ is Cons!52018) oldBucket!40)) b!4670002))

(assert (= (and start!470976 ((_ is Cons!52018) newBucket!224)) b!4669995))

(declare-fun m!5563051 () Bool)

(assert (=> b!4669997 m!5563051))

(declare-fun m!5563053 () Bool)

(assert (=> b!4670000 m!5563053))

(declare-fun m!5563055 () Bool)

(assert (=> b!4670004 m!5563055))

(declare-fun m!5563057 () Bool)

(assert (=> b!4670004 m!5563057))

(declare-fun m!5563059 () Bool)

(assert (=> start!470976 m!5563059))

(declare-fun m!5563061 () Bool)

(assert (=> b!4669998 m!5563061))

(declare-fun m!5563063 () Bool)

(assert (=> b!4670003 m!5563063))

(declare-fun m!5563065 () Bool)

(assert (=> b!4670003 m!5563065))

(declare-fun m!5563067 () Bool)

(assert (=> b!4670001 m!5563067))

(declare-fun m!5563069 () Bool)

(assert (=> b!4669996 m!5563069))

(check-sat (not b!4670004) (not start!470976) (not b!4670000) (not b!4669996) tp_is_empty!30031 tp_is_empty!30029 (not b!4670001) (not b!4670003) (not b!4669997) (not b!4670002) (not b!4669998) (not b!4669995))
(check-sat)
(get-model)

(declare-fun b!4670098 () Bool)

(assert (=> b!4670098 true))

(declare-fun bs!1078601 () Bool)

(declare-fun b!4670101 () Bool)

(assert (= bs!1078601 (and b!4670101 b!4670098)))

(declare-fun lambda!202400 () Int)

(declare-fun lambda!202399 () Int)

(assert (=> bs!1078601 (= lambda!202400 lambda!202399)))

(assert (=> b!4670101 true))

(declare-fun lambda!202401 () Int)

(declare-fun lt!1832465 () ListMap!4637)

(assert (=> bs!1078601 (= (= lt!1832465 lt!1832321) (= lambda!202401 lambda!202399))))

(assert (=> b!4670101 (= (= lt!1832465 lt!1832321) (= lambda!202401 lambda!202400))))

(assert (=> b!4670101 true))

(declare-fun bs!1078602 () Bool)

(declare-fun d!1485020 () Bool)

(assert (= bs!1078602 (and d!1485020 b!4670098)))

(declare-fun lambda!202402 () Int)

(declare-fun lt!1832476 () ListMap!4637)

(assert (=> bs!1078602 (= (= lt!1832476 lt!1832321) (= lambda!202402 lambda!202399))))

(declare-fun bs!1078603 () Bool)

(assert (= bs!1078603 (and d!1485020 b!4670101)))

(assert (=> bs!1078603 (= (= lt!1832476 lt!1832321) (= lambda!202402 lambda!202400))))

(assert (=> bs!1078603 (= (= lt!1832476 lt!1832465) (= lambda!202402 lambda!202401))))

(assert (=> d!1485020 true))

(declare-fun bm!326433 () Bool)

(declare-datatypes ((Unit!121049 0))(
  ( (Unit!121050) )
))
(declare-fun call!326440 () Unit!121049)

(declare-fun lemmaContainsAllItsOwnKeys!632 (ListMap!4637) Unit!121049)

(assert (=> bm!326433 (= call!326440 (lemmaContainsAllItsOwnKeys!632 lt!1832321))))

(declare-fun b!4670097 () Bool)

(declare-fun e!2914306 () Bool)

(declare-fun invariantList!1332 (List!52142) Bool)

(assert (=> b!4670097 (= e!2914306 (invariantList!1332 (toList!5296 lt!1832476)))))

(declare-fun e!2914305 () ListMap!4637)

(assert (=> b!4670098 (= e!2914305 lt!1832321)))

(declare-fun lt!1832466 () Unit!121049)

(assert (=> b!4670098 (= lt!1832466 call!326440)))

(declare-fun call!326438 () Bool)

(assert (=> b!4670098 call!326438))

(declare-fun lt!1832458 () Unit!121049)

(assert (=> b!4670098 (= lt!1832458 lt!1832466)))

(declare-fun call!326439 () Bool)

(assert (=> b!4670098 call!326439))

(declare-fun lt!1832477 () Unit!121049)

(declare-fun Unit!121051 () Unit!121049)

(assert (=> b!4670098 (= lt!1832477 Unit!121051)))

(declare-fun c!799555 () Bool)

(declare-fun bm!326434 () Bool)

(declare-fun forall!11107 (List!52142 Int) Bool)

(assert (=> bm!326434 (= call!326439 (forall!11107 (toList!5296 lt!1832321) (ite c!799555 lambda!202399 lambda!202401)))))

(declare-fun b!4670099 () Bool)

(declare-fun res!1965789 () Bool)

(assert (=> b!4670099 (=> (not res!1965789) (not e!2914306))))

(assert (=> b!4670099 (= res!1965789 (forall!11107 (toList!5296 lt!1832321) lambda!202402))))

(declare-fun b!4670100 () Bool)

(declare-fun e!2914304 () Bool)

(assert (=> b!4670100 (= e!2914304 (forall!11107 (toList!5296 lt!1832321) lambda!202401))))

(assert (=> d!1485020 e!2914306))

(declare-fun res!1965787 () Bool)

(assert (=> d!1485020 (=> (not res!1965787) (not e!2914306))))

(assert (=> d!1485020 (= res!1965787 (forall!11107 oldBucket!40 lambda!202402))))

(assert (=> d!1485020 (= lt!1832476 e!2914305)))

(assert (=> d!1485020 (= c!799555 ((_ is Nil!52018) oldBucket!40))))

(assert (=> d!1485020 (noDuplicateKeys!1684 oldBucket!40)))

(assert (=> d!1485020 (= (addToMapMapFromBucket!1141 oldBucket!40 lt!1832321) lt!1832476)))

(declare-fun bm!326435 () Bool)

(declare-fun lt!1832461 () ListMap!4637)

(assert (=> bm!326435 (= call!326438 (forall!11107 (ite c!799555 (toList!5296 lt!1832321) (toList!5296 lt!1832461)) (ite c!799555 lambda!202399 lambda!202401)))))

(assert (=> b!4670101 (= e!2914305 lt!1832465)))

(declare-fun +!2024 (ListMap!4637 tuple2!53182) ListMap!4637)

(assert (=> b!4670101 (= lt!1832461 (+!2024 lt!1832321 (h!58196 oldBucket!40)))))

(assert (=> b!4670101 (= lt!1832465 (addToMapMapFromBucket!1141 (t!359280 oldBucket!40) (+!2024 lt!1832321 (h!58196 oldBucket!40))))))

(declare-fun lt!1832460 () Unit!121049)

(assert (=> b!4670101 (= lt!1832460 call!326440)))

(assert (=> b!4670101 (forall!11107 (toList!5296 lt!1832321) lambda!202400)))

(declare-fun lt!1832471 () Unit!121049)

(assert (=> b!4670101 (= lt!1832471 lt!1832460)))

(assert (=> b!4670101 (forall!11107 (toList!5296 lt!1832461) lambda!202401)))

(declare-fun lt!1832469 () Unit!121049)

(declare-fun Unit!121052 () Unit!121049)

(assert (=> b!4670101 (= lt!1832469 Unit!121052)))

(assert (=> b!4670101 (forall!11107 (t!359280 oldBucket!40) lambda!202401)))

(declare-fun lt!1832473 () Unit!121049)

(declare-fun Unit!121053 () Unit!121049)

(assert (=> b!4670101 (= lt!1832473 Unit!121053)))

(declare-fun lt!1832470 () Unit!121049)

(declare-fun Unit!121054 () Unit!121049)

(assert (=> b!4670101 (= lt!1832470 Unit!121054)))

(declare-fun lt!1832478 () Unit!121049)

(declare-fun forallContained!3312 (List!52142 Int tuple2!53182) Unit!121049)

(assert (=> b!4670101 (= lt!1832478 (forallContained!3312 (toList!5296 lt!1832461) lambda!202401 (h!58196 oldBucket!40)))))

(assert (=> b!4670101 (contains!15229 lt!1832461 (_1!29885 (h!58196 oldBucket!40)))))

(declare-fun lt!1832468 () Unit!121049)

(declare-fun Unit!121055 () Unit!121049)

(assert (=> b!4670101 (= lt!1832468 Unit!121055)))

(assert (=> b!4670101 (contains!15229 lt!1832465 (_1!29885 (h!58196 oldBucket!40)))))

(declare-fun lt!1832463 () Unit!121049)

(declare-fun Unit!121056 () Unit!121049)

(assert (=> b!4670101 (= lt!1832463 Unit!121056)))

(assert (=> b!4670101 (forall!11107 oldBucket!40 lambda!202401)))

(declare-fun lt!1832462 () Unit!121049)

(declare-fun Unit!121057 () Unit!121049)

(assert (=> b!4670101 (= lt!1832462 Unit!121057)))

(assert (=> b!4670101 call!326438))

(declare-fun lt!1832475 () Unit!121049)

(declare-fun Unit!121058 () Unit!121049)

(assert (=> b!4670101 (= lt!1832475 Unit!121058)))

(declare-fun lt!1832467 () Unit!121049)

(declare-fun Unit!121059 () Unit!121049)

(assert (=> b!4670101 (= lt!1832467 Unit!121059)))

(declare-fun lt!1832472 () Unit!121049)

(declare-fun addForallContainsKeyThenBeforeAdding!631 (ListMap!4637 ListMap!4637 K!13360 V!13606) Unit!121049)

(assert (=> b!4670101 (= lt!1832472 (addForallContainsKeyThenBeforeAdding!631 lt!1832321 lt!1832465 (_1!29885 (h!58196 oldBucket!40)) (_2!29885 (h!58196 oldBucket!40))))))

(assert (=> b!4670101 (forall!11107 (toList!5296 lt!1832321) lambda!202401)))

(declare-fun lt!1832459 () Unit!121049)

(assert (=> b!4670101 (= lt!1832459 lt!1832472)))

(assert (=> b!4670101 call!326439))

(declare-fun lt!1832474 () Unit!121049)

(declare-fun Unit!121060 () Unit!121049)

(assert (=> b!4670101 (= lt!1832474 Unit!121060)))

(declare-fun res!1965788 () Bool)

(assert (=> b!4670101 (= res!1965788 (forall!11107 oldBucket!40 lambda!202401))))

(assert (=> b!4670101 (=> (not res!1965788) (not e!2914304))))

(assert (=> b!4670101 e!2914304))

(declare-fun lt!1832464 () Unit!121049)

(declare-fun Unit!121061 () Unit!121049)

(assert (=> b!4670101 (= lt!1832464 Unit!121061)))

(assert (= (and d!1485020 c!799555) b!4670098))

(assert (= (and d!1485020 (not c!799555)) b!4670101))

(assert (= (and b!4670101 res!1965788) b!4670100))

(assert (= (or b!4670098 b!4670101) bm!326433))

(assert (= (or b!4670098 b!4670101) bm!326435))

(assert (= (or b!4670098 b!4670101) bm!326434))

(assert (= (and d!1485020 res!1965787) b!4670099))

(assert (= (and b!4670099 res!1965789) b!4670097))

(declare-fun m!5563159 () Bool)

(assert (=> b!4670100 m!5563159))

(declare-fun m!5563161 () Bool)

(assert (=> bm!326434 m!5563161))

(declare-fun m!5563163 () Bool)

(assert (=> bm!326435 m!5563163))

(declare-fun m!5563165 () Bool)

(assert (=> b!4670099 m!5563165))

(declare-fun m!5563167 () Bool)

(assert (=> bm!326433 m!5563167))

(declare-fun m!5563169 () Bool)

(assert (=> b!4670097 m!5563169))

(declare-fun m!5563171 () Bool)

(assert (=> d!1485020 m!5563171))

(assert (=> d!1485020 m!5563059))

(declare-fun m!5563173 () Bool)

(assert (=> b!4670101 m!5563173))

(declare-fun m!5563175 () Bool)

(assert (=> b!4670101 m!5563175))

(declare-fun m!5563177 () Bool)

(assert (=> b!4670101 m!5563177))

(declare-fun m!5563179 () Bool)

(assert (=> b!4670101 m!5563179))

(declare-fun m!5563181 () Bool)

(assert (=> b!4670101 m!5563181))

(assert (=> b!4670101 m!5563177))

(declare-fun m!5563183 () Bool)

(assert (=> b!4670101 m!5563183))

(declare-fun m!5563185 () Bool)

(assert (=> b!4670101 m!5563185))

(assert (=> b!4670101 m!5563159))

(declare-fun m!5563187 () Bool)

(assert (=> b!4670101 m!5563187))

(declare-fun m!5563189 () Bool)

(assert (=> b!4670101 m!5563189))

(declare-fun m!5563191 () Bool)

(assert (=> b!4670101 m!5563191))

(assert (=> b!4670101 m!5563189))

(assert (=> b!4670004 d!1485020))

(declare-fun d!1485040 () Bool)

(declare-fun lt!1832481 () ListMap!4637)

(assert (=> d!1485040 (invariantList!1332 (toList!5296 lt!1832481))))

(declare-fun e!2914309 () ListMap!4637)

(assert (=> d!1485040 (= lt!1832481 e!2914309)))

(declare-fun c!799558 () Bool)

(assert (=> d!1485040 (= c!799558 ((_ is Cons!52019) Nil!52019))))

(declare-fun lambda!202405 () Int)

(declare-fun forall!11108 (List!52143 Int) Bool)

(assert (=> d!1485040 (forall!11108 Nil!52019 lambda!202405)))

(assert (=> d!1485040 (= (extractMap!1740 Nil!52019) lt!1832481)))

(declare-fun b!4670108 () Bool)

(assert (=> b!4670108 (= e!2914309 (addToMapMapFromBucket!1141 (_2!29886 (h!58197 Nil!52019)) (extractMap!1740 (t!359281 Nil!52019))))))

(declare-fun b!4670109 () Bool)

(assert (=> b!4670109 (= e!2914309 (ListMap!4638 Nil!52018))))

(assert (= (and d!1485040 c!799558) b!4670108))

(assert (= (and d!1485040 (not c!799558)) b!4670109))

(declare-fun m!5563193 () Bool)

(assert (=> d!1485040 m!5563193))

(declare-fun m!5563195 () Bool)

(assert (=> d!1485040 m!5563195))

(declare-fun m!5563197 () Bool)

(assert (=> b!4670108 m!5563197))

(assert (=> b!4670108 m!5563197))

(declare-fun m!5563199 () Bool)

(assert (=> b!4670108 m!5563199))

(assert (=> b!4670004 d!1485040))

(declare-fun d!1485042 () Bool)

(declare-fun e!2914326 () Bool)

(assert (=> d!1485042 e!2914326))

(declare-fun res!1965797 () Bool)

(assert (=> d!1485042 (=> res!1965797 e!2914326)))

(declare-fun e!2914327 () Bool)

(assert (=> d!1485042 (= res!1965797 e!2914327)))

(declare-fun res!1965796 () Bool)

(assert (=> d!1485042 (=> (not res!1965796) (not e!2914327))))

(declare-fun lt!1832503 () Bool)

(assert (=> d!1485042 (= res!1965796 (not lt!1832503))))

(declare-fun lt!1832498 () Bool)

(assert (=> d!1485042 (= lt!1832503 lt!1832498)))

(declare-fun lt!1832499 () Unit!121049)

(declare-fun e!2914323 () Unit!121049)

(assert (=> d!1485042 (= lt!1832499 e!2914323)))

(declare-fun c!799565 () Bool)

(assert (=> d!1485042 (= c!799565 lt!1832498)))

(declare-fun containsKey!2831 (List!52142 K!13360) Bool)

(assert (=> d!1485042 (= lt!1832498 (containsKey!2831 (toList!5296 lt!1832320) key!4968))))

(assert (=> d!1485042 (= (contains!15229 lt!1832320 key!4968) lt!1832503)))

(declare-fun b!4670128 () Bool)

(declare-datatypes ((List!52145 0))(
  ( (Nil!52021) (Cons!52021 (h!58201 K!13360) (t!359283 List!52145)) )
))
(declare-fun contains!15231 (List!52145 K!13360) Bool)

(declare-fun keys!18466 (ListMap!4637) List!52145)

(assert (=> b!4670128 (= e!2914327 (not (contains!15231 (keys!18466 lt!1832320) key!4968)))))

(declare-fun b!4670129 () Bool)

(declare-fun lt!1832500 () Unit!121049)

(assert (=> b!4670129 (= e!2914323 lt!1832500)))

(declare-fun lt!1832501 () Unit!121049)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1578 (List!52142 K!13360) Unit!121049)

(assert (=> b!4670129 (= lt!1832501 (lemmaContainsKeyImpliesGetValueByKeyDefined!1578 (toList!5296 lt!1832320) key!4968))))

(declare-datatypes ((Option!11928 0))(
  ( (None!11927) (Some!11927 (v!46285 V!13606)) )
))
(declare-fun isDefined!9193 (Option!11928) Bool)

(declare-fun getValueByKey!1676 (List!52142 K!13360) Option!11928)

(assert (=> b!4670129 (isDefined!9193 (getValueByKey!1676 (toList!5296 lt!1832320) key!4968))))

(declare-fun lt!1832504 () Unit!121049)

(assert (=> b!4670129 (= lt!1832504 lt!1832501)))

(declare-fun lemmaInListThenGetKeysListContains!778 (List!52142 K!13360) Unit!121049)

(assert (=> b!4670129 (= lt!1832500 (lemmaInListThenGetKeysListContains!778 (toList!5296 lt!1832320) key!4968))))

(declare-fun call!326443 () Bool)

(assert (=> b!4670129 call!326443))

(declare-fun b!4670130 () Bool)

(declare-fun e!2914322 () List!52145)

(assert (=> b!4670130 (= e!2914322 (keys!18466 lt!1832320))))

(declare-fun b!4670131 () Bool)

(declare-fun e!2914324 () Bool)

(assert (=> b!4670131 (= e!2914324 (contains!15231 (keys!18466 lt!1832320) key!4968))))

(declare-fun b!4670132 () Bool)

(declare-fun e!2914325 () Unit!121049)

(assert (=> b!4670132 (= e!2914323 e!2914325)))

(declare-fun c!799567 () Bool)

(assert (=> b!4670132 (= c!799567 call!326443)))

(declare-fun b!4670133 () Bool)

(assert (=> b!4670133 false))

(declare-fun lt!1832505 () Unit!121049)

(declare-fun lt!1832502 () Unit!121049)

(assert (=> b!4670133 (= lt!1832505 lt!1832502)))

(assert (=> b!4670133 (containsKey!2831 (toList!5296 lt!1832320) key!4968)))

(declare-fun lemmaInGetKeysListThenContainsKey!782 (List!52142 K!13360) Unit!121049)

(assert (=> b!4670133 (= lt!1832502 (lemmaInGetKeysListThenContainsKey!782 (toList!5296 lt!1832320) key!4968))))

(declare-fun Unit!121062 () Unit!121049)

(assert (=> b!4670133 (= e!2914325 Unit!121062)))

(declare-fun b!4670134 () Bool)

(declare-fun getKeysList!783 (List!52142) List!52145)

(assert (=> b!4670134 (= e!2914322 (getKeysList!783 (toList!5296 lt!1832320)))))

(declare-fun b!4670135 () Bool)

(declare-fun Unit!121063 () Unit!121049)

(assert (=> b!4670135 (= e!2914325 Unit!121063)))

(declare-fun b!4670136 () Bool)

(assert (=> b!4670136 (= e!2914326 e!2914324)))

(declare-fun res!1965798 () Bool)

(assert (=> b!4670136 (=> (not res!1965798) (not e!2914324))))

(assert (=> b!4670136 (= res!1965798 (isDefined!9193 (getValueByKey!1676 (toList!5296 lt!1832320) key!4968)))))

(declare-fun bm!326438 () Bool)

(assert (=> bm!326438 (= call!326443 (contains!15231 e!2914322 key!4968))))

(declare-fun c!799566 () Bool)

(assert (=> bm!326438 (= c!799566 c!799565)))

(assert (= (and d!1485042 c!799565) b!4670129))

(assert (= (and d!1485042 (not c!799565)) b!4670132))

(assert (= (and b!4670132 c!799567) b!4670133))

(assert (= (and b!4670132 (not c!799567)) b!4670135))

(assert (= (or b!4670129 b!4670132) bm!326438))

(assert (= (and bm!326438 c!799566) b!4670134))

(assert (= (and bm!326438 (not c!799566)) b!4670130))

(assert (= (and d!1485042 res!1965796) b!4670128))

(assert (= (and d!1485042 (not res!1965797)) b!4670136))

(assert (= (and b!4670136 res!1965798) b!4670131))

(declare-fun m!5563201 () Bool)

(assert (=> b!4670134 m!5563201))

(declare-fun m!5563203 () Bool)

(assert (=> b!4670128 m!5563203))

(assert (=> b!4670128 m!5563203))

(declare-fun m!5563205 () Bool)

(assert (=> b!4670128 m!5563205))

(assert (=> b!4670130 m!5563203))

(declare-fun m!5563207 () Bool)

(assert (=> b!4670133 m!5563207))

(declare-fun m!5563209 () Bool)

(assert (=> b!4670133 m!5563209))

(assert (=> b!4670131 m!5563203))

(assert (=> b!4670131 m!5563203))

(assert (=> b!4670131 m!5563205))

(declare-fun m!5563211 () Bool)

(assert (=> b!4670129 m!5563211))

(declare-fun m!5563213 () Bool)

(assert (=> b!4670129 m!5563213))

(assert (=> b!4670129 m!5563213))

(declare-fun m!5563215 () Bool)

(assert (=> b!4670129 m!5563215))

(declare-fun m!5563217 () Bool)

(assert (=> b!4670129 m!5563217))

(assert (=> d!1485042 m!5563207))

(declare-fun m!5563219 () Bool)

(assert (=> bm!326438 m!5563219))

(assert (=> b!4670136 m!5563213))

(assert (=> b!4670136 m!5563213))

(assert (=> b!4670136 m!5563215))

(assert (=> b!4670003 d!1485042))

(declare-fun bs!1078604 () Bool)

(declare-fun d!1485044 () Bool)

(assert (= bs!1078604 (and d!1485044 d!1485040)))

(declare-fun lambda!202406 () Int)

(assert (=> bs!1078604 (= lambda!202406 lambda!202405)))

(declare-fun lt!1832506 () ListMap!4637)

(assert (=> d!1485044 (invariantList!1332 (toList!5296 lt!1832506))))

(declare-fun e!2914328 () ListMap!4637)

(assert (=> d!1485044 (= lt!1832506 e!2914328)))

(declare-fun c!799568 () Bool)

(assert (=> d!1485044 (= c!799568 ((_ is Cons!52019) (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))))

(assert (=> d!1485044 (forall!11108 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019) lambda!202406)))

(assert (=> d!1485044 (= (extractMap!1740 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)) lt!1832506)))

(declare-fun b!4670137 () Bool)

(assert (=> b!4670137 (= e!2914328 (addToMapMapFromBucket!1141 (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))))))

(declare-fun b!4670138 () Bool)

(assert (=> b!4670138 (= e!2914328 (ListMap!4638 Nil!52018))))

(assert (= (and d!1485044 c!799568) b!4670137))

(assert (= (and d!1485044 (not c!799568)) b!4670138))

(declare-fun m!5563221 () Bool)

(assert (=> d!1485044 m!5563221))

(declare-fun m!5563223 () Bool)

(assert (=> d!1485044 m!5563223))

(declare-fun m!5563225 () Bool)

(assert (=> b!4670137 m!5563225))

(assert (=> b!4670137 m!5563225))

(declare-fun m!5563227 () Bool)

(assert (=> b!4670137 m!5563227))

(assert (=> b!4670003 d!1485044))

(declare-fun d!1485046 () Bool)

(declare-fun res!1965803 () Bool)

(declare-fun e!2914333 () Bool)

(assert (=> d!1485046 (=> res!1965803 e!2914333)))

(assert (=> d!1485046 (= res!1965803 (not ((_ is Cons!52018) oldBucket!40)))))

(assert (=> d!1485046 (= (noDuplicateKeys!1684 oldBucket!40) e!2914333)))

(declare-fun b!4670143 () Bool)

(declare-fun e!2914334 () Bool)

(assert (=> b!4670143 (= e!2914333 e!2914334)))

(declare-fun res!1965804 () Bool)

(assert (=> b!4670143 (=> (not res!1965804) (not e!2914334))))

(declare-fun containsKey!2832 (List!52142 K!13360) Bool)

(assert (=> b!4670143 (= res!1965804 (not (containsKey!2832 (t!359280 oldBucket!40) (_1!29885 (h!58196 oldBucket!40)))))))

(declare-fun b!4670144 () Bool)

(assert (=> b!4670144 (= e!2914334 (noDuplicateKeys!1684 (t!359280 oldBucket!40)))))

(assert (= (and d!1485046 (not res!1965803)) b!4670143))

(assert (= (and b!4670143 res!1965804) b!4670144))

(declare-fun m!5563229 () Bool)

(assert (=> b!4670143 m!5563229))

(declare-fun m!5563231 () Bool)

(assert (=> b!4670144 m!5563231))

(assert (=> start!470976 d!1485046))

(declare-fun d!1485048 () Bool)

(declare-fun res!1965805 () Bool)

(declare-fun e!2914335 () Bool)

(assert (=> d!1485048 (=> res!1965805 e!2914335)))

(assert (=> d!1485048 (= res!1965805 (not ((_ is Cons!52018) newBucket!224)))))

(assert (=> d!1485048 (= (noDuplicateKeys!1684 newBucket!224) e!2914335)))

(declare-fun b!4670145 () Bool)

(declare-fun e!2914336 () Bool)

(assert (=> b!4670145 (= e!2914335 e!2914336)))

(declare-fun res!1965806 () Bool)

(assert (=> b!4670145 (=> (not res!1965806) (not e!2914336))))

(assert (=> b!4670145 (= res!1965806 (not (containsKey!2832 (t!359280 newBucket!224) (_1!29885 (h!58196 newBucket!224)))))))

(declare-fun b!4670146 () Bool)

(assert (=> b!4670146 (= e!2914336 (noDuplicateKeys!1684 (t!359280 newBucket!224)))))

(assert (= (and d!1485048 (not res!1965805)) b!4670145))

(assert (= (and b!4670145 res!1965806) b!4670146))

(declare-fun m!5563233 () Bool)

(assert (=> b!4670145 m!5563233))

(declare-fun m!5563235 () Bool)

(assert (=> b!4670146 m!5563235))

(assert (=> b!4669998 d!1485048))

(declare-fun bs!1078605 () Bool)

(declare-fun d!1485050 () Bool)

(assert (= bs!1078605 (and d!1485050 b!4670098)))

(declare-fun lambda!202409 () Int)

(assert (=> bs!1078605 (not (= lambda!202409 lambda!202399))))

(declare-fun bs!1078606 () Bool)

(assert (= bs!1078606 (and d!1485050 b!4670101)))

(assert (=> bs!1078606 (not (= lambda!202409 lambda!202400))))

(assert (=> bs!1078606 (not (= lambda!202409 lambda!202401))))

(declare-fun bs!1078607 () Bool)

(assert (= bs!1078607 (and d!1485050 d!1485020)))

(assert (=> bs!1078607 (not (= lambda!202409 lambda!202402))))

(assert (=> d!1485050 true))

(assert (=> d!1485050 true))

(assert (=> d!1485050 (= (allKeysSameHash!1538 newBucket!224 hash!414 hashF!1389) (forall!11107 newBucket!224 lambda!202409))))

(declare-fun bs!1078608 () Bool)

(assert (= bs!1078608 d!1485050))

(declare-fun m!5563237 () Bool)

(assert (=> bs!1078608 m!5563237))

(assert (=> b!4669997 d!1485050))

(declare-fun b!4670161 () Bool)

(declare-fun e!2914342 () List!52142)

(assert (=> b!4670161 (= e!2914342 (Cons!52018 (h!58196 oldBucket!40) (removePairForKey!1307 (t!359280 oldBucket!40) key!4968)))))

(declare-fun b!4670162 () Bool)

(assert (=> b!4670162 (= e!2914342 Nil!52018)))

(declare-fun d!1485052 () Bool)

(declare-fun lt!1832509 () List!52142)

(assert (=> d!1485052 (not (containsKey!2832 lt!1832509 key!4968))))

(declare-fun e!2914341 () List!52142)

(assert (=> d!1485052 (= lt!1832509 e!2914341)))

(declare-fun c!799574 () Bool)

(assert (=> d!1485052 (= c!799574 (and ((_ is Cons!52018) oldBucket!40) (= (_1!29885 (h!58196 oldBucket!40)) key!4968)))))

(assert (=> d!1485052 (noDuplicateKeys!1684 oldBucket!40)))

(assert (=> d!1485052 (= (removePairForKey!1307 oldBucket!40 key!4968) lt!1832509)))

(declare-fun b!4670160 () Bool)

(assert (=> b!4670160 (= e!2914341 e!2914342)))

(declare-fun c!799573 () Bool)

(assert (=> b!4670160 (= c!799573 ((_ is Cons!52018) oldBucket!40))))

(declare-fun b!4670159 () Bool)

(assert (=> b!4670159 (= e!2914341 (t!359280 oldBucket!40))))

(assert (= (and d!1485052 c!799574) b!4670159))

(assert (= (and d!1485052 (not c!799574)) b!4670160))

(assert (= (and b!4670160 c!799573) b!4670161))

(assert (= (and b!4670160 (not c!799573)) b!4670162))

(declare-fun m!5563239 () Bool)

(assert (=> b!4670161 m!5563239))

(declare-fun m!5563241 () Bool)

(assert (=> d!1485052 m!5563241))

(assert (=> d!1485052 m!5563059))

(assert (=> b!4670001 d!1485052))

(declare-fun d!1485054 () Bool)

(declare-fun hash!3861 (Hashable!6081 K!13360) (_ BitVec 64))

(assert (=> d!1485054 (= (hash!3859 hashF!1389 key!4968) (hash!3861 hashF!1389 key!4968))))

(declare-fun bs!1078609 () Bool)

(assert (= bs!1078609 d!1485054))

(declare-fun m!5563243 () Bool)

(assert (=> bs!1078609 m!5563243))

(assert (=> b!4669996 d!1485054))

(declare-fun bs!1078610 () Bool)

(declare-fun d!1485056 () Bool)

(assert (= bs!1078610 (and d!1485056 b!4670101)))

(declare-fun lambda!202410 () Int)

(assert (=> bs!1078610 (not (= lambda!202410 lambda!202401))))

(declare-fun bs!1078611 () Bool)

(assert (= bs!1078611 (and d!1485056 b!4670098)))

(assert (=> bs!1078611 (not (= lambda!202410 lambda!202399))))

(declare-fun bs!1078612 () Bool)

(assert (= bs!1078612 (and d!1485056 d!1485050)))

(assert (=> bs!1078612 (= lambda!202410 lambda!202409)))

(assert (=> bs!1078610 (not (= lambda!202410 lambda!202400))))

(declare-fun bs!1078613 () Bool)

(assert (= bs!1078613 (and d!1485056 d!1485020)))

(assert (=> bs!1078613 (not (= lambda!202410 lambda!202402))))

(assert (=> d!1485056 true))

(assert (=> d!1485056 true))

(assert (=> d!1485056 (= (allKeysSameHash!1538 oldBucket!40 hash!414 hashF!1389) (forall!11107 oldBucket!40 lambda!202410))))

(declare-fun bs!1078614 () Bool)

(assert (= bs!1078614 d!1485056))

(declare-fun m!5563245 () Bool)

(assert (=> bs!1078614 m!5563245))

(assert (=> b!4670000 d!1485056))

(declare-fun b!4670167 () Bool)

(declare-fun e!2914345 () Bool)

(declare-fun tp!1343750 () Bool)

(assert (=> b!4670167 (= e!2914345 (and tp_is_empty!30029 tp_is_empty!30031 tp!1343750))))

(assert (=> b!4670002 (= tp!1343743 e!2914345)))

(assert (= (and b!4670002 ((_ is Cons!52018) (t!359280 oldBucket!40))) b!4670167))

(declare-fun b!4670168 () Bool)

(declare-fun tp!1343751 () Bool)

(declare-fun e!2914346 () Bool)

(assert (=> b!4670168 (= e!2914346 (and tp_is_empty!30029 tp_is_empty!30031 tp!1343751))))

(assert (=> b!4669995 (= tp!1343742 e!2914346)))

(assert (= (and b!4669995 ((_ is Cons!52018) (t!359280 newBucket!224))) b!4670168))

(check-sat (not b!4670100) (not b!4670137) (not b!4670146) (not b!4670130) (not b!4670108) (not bm!326438) (not b!4670129) (not bm!326435) (not b!4670136) tp_is_empty!30031 (not b!4670143) (not d!1485020) (not b!4670167) (not bm!326434) (not b!4670144) (not b!4670101) (not d!1485040) (not d!1485056) (not d!1485050) (not b!4670131) (not b!4670134) (not b!4670128) (not b!4670161) (not b!4670168) (not d!1485054) (not b!4670133) (not bm!326433) (not d!1485052) (not b!4670099) (not b!4670097) (not d!1485044) tp_is_empty!30029 (not d!1485042) (not b!4670145))
(check-sat)
(get-model)

(declare-fun d!1485070 () Bool)

(declare-fun noDuplicatedKeys!363 (List!52142) Bool)

(assert (=> d!1485070 (= (invariantList!1332 (toList!5296 lt!1832506)) (noDuplicatedKeys!363 (toList!5296 lt!1832506)))))

(declare-fun bs!1078621 () Bool)

(assert (= bs!1078621 d!1485070))

(declare-fun m!5563267 () Bool)

(assert (=> bs!1078621 m!5563267))

(assert (=> d!1485044 d!1485070))

(declare-fun d!1485072 () Bool)

(declare-fun res!1965831 () Bool)

(declare-fun e!2914371 () Bool)

(assert (=> d!1485072 (=> res!1965831 e!2914371)))

(assert (=> d!1485072 (= res!1965831 ((_ is Nil!52019) (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))))

(assert (=> d!1485072 (= (forall!11108 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019) lambda!202406) e!2914371)))

(declare-fun b!4670194 () Bool)

(declare-fun e!2914372 () Bool)

(assert (=> b!4670194 (= e!2914371 e!2914372)))

(declare-fun res!1965832 () Bool)

(assert (=> b!4670194 (=> (not res!1965832) (not e!2914372))))

(declare-fun dynLambda!21642 (Int tuple2!53184) Bool)

(assert (=> b!4670194 (= res!1965832 (dynLambda!21642 lambda!202406 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))))))

(declare-fun b!4670195 () Bool)

(assert (=> b!4670195 (= e!2914372 (forall!11108 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)) lambda!202406))))

(assert (= (and d!1485072 (not res!1965831)) b!4670194))

(assert (= (and b!4670194 res!1965832) b!4670195))

(declare-fun b_lambda!176259 () Bool)

(assert (=> (not b_lambda!176259) (not b!4670194)))

(declare-fun m!5563269 () Bool)

(assert (=> b!4670194 m!5563269))

(declare-fun m!5563271 () Bool)

(assert (=> b!4670195 m!5563271))

(assert (=> d!1485044 d!1485072))

(declare-fun bs!1078622 () Bool)

(declare-fun d!1485074 () Bool)

(assert (= bs!1078622 (and d!1485074 b!4670101)))

(declare-fun lambda!202418 () Int)

(assert (=> bs!1078622 (= (= lt!1832321 lt!1832465) (= lambda!202418 lambda!202401))))

(declare-fun bs!1078623 () Bool)

(assert (= bs!1078623 (and d!1485074 b!4670098)))

(assert (=> bs!1078623 (= lambda!202418 lambda!202399)))

(declare-fun bs!1078624 () Bool)

(assert (= bs!1078624 (and d!1485074 d!1485050)))

(assert (=> bs!1078624 (not (= lambda!202418 lambda!202409))))

(assert (=> bs!1078622 (= lambda!202418 lambda!202400)))

(declare-fun bs!1078625 () Bool)

(assert (= bs!1078625 (and d!1485074 d!1485020)))

(assert (=> bs!1078625 (= (= lt!1832321 lt!1832476) (= lambda!202418 lambda!202402))))

(declare-fun bs!1078626 () Bool)

(assert (= bs!1078626 (and d!1485074 d!1485056)))

(assert (=> bs!1078626 (not (= lambda!202418 lambda!202410))))

(assert (=> d!1485074 true))

(assert (=> d!1485074 (forall!11107 (toList!5296 lt!1832321) lambda!202418)))

(declare-fun lt!1832515 () Unit!121049)

(declare-fun choose!32314 (ListMap!4637) Unit!121049)

(assert (=> d!1485074 (= lt!1832515 (choose!32314 lt!1832321))))

(assert (=> d!1485074 (= (lemmaContainsAllItsOwnKeys!632 lt!1832321) lt!1832515)))

(declare-fun bs!1078627 () Bool)

(assert (= bs!1078627 d!1485074))

(declare-fun m!5563273 () Bool)

(assert (=> bs!1078627 m!5563273))

(declare-fun m!5563275 () Bool)

(assert (=> bs!1078627 m!5563275))

(assert (=> bm!326433 d!1485074))

(declare-fun d!1485076 () Bool)

(declare-fun choose!32315 (Hashable!6081 K!13360) (_ BitVec 64))

(assert (=> d!1485076 (= (hash!3861 hashF!1389 key!4968) (choose!32315 hashF!1389 key!4968))))

(declare-fun bs!1078628 () Bool)

(assert (= bs!1078628 d!1485076))

(declare-fun m!5563277 () Bool)

(assert (=> bs!1078628 m!5563277))

(assert (=> d!1485054 d!1485076))

(declare-fun d!1485078 () Bool)

(declare-fun isEmpty!29058 (Option!11928) Bool)

(assert (=> d!1485078 (= (isDefined!9193 (getValueByKey!1676 (toList!5296 lt!1832320) key!4968)) (not (isEmpty!29058 (getValueByKey!1676 (toList!5296 lt!1832320) key!4968))))))

(declare-fun bs!1078629 () Bool)

(assert (= bs!1078629 d!1485078))

(assert (=> bs!1078629 m!5563213))

(declare-fun m!5563279 () Bool)

(assert (=> bs!1078629 m!5563279))

(assert (=> b!4670136 d!1485078))

(declare-fun d!1485080 () Bool)

(declare-fun c!799582 () Bool)

(assert (=> d!1485080 (= c!799582 (and ((_ is Cons!52018) (toList!5296 lt!1832320)) (= (_1!29885 (h!58196 (toList!5296 lt!1832320))) key!4968)))))

(declare-fun e!2914386 () Option!11928)

(assert (=> d!1485080 (= (getValueByKey!1676 (toList!5296 lt!1832320) key!4968) e!2914386)))

(declare-fun b!4670222 () Bool)

(declare-fun e!2914387 () Option!11928)

(assert (=> b!4670222 (= e!2914387 None!11927)))

(declare-fun b!4670220 () Bool)

(assert (=> b!4670220 (= e!2914386 e!2914387)))

(declare-fun c!799583 () Bool)

(assert (=> b!4670220 (= c!799583 (and ((_ is Cons!52018) (toList!5296 lt!1832320)) (not (= (_1!29885 (h!58196 (toList!5296 lt!1832320))) key!4968))))))

(declare-fun b!4670219 () Bool)

(assert (=> b!4670219 (= e!2914386 (Some!11927 (_2!29885 (h!58196 (toList!5296 lt!1832320)))))))

(declare-fun b!4670221 () Bool)

(assert (=> b!4670221 (= e!2914387 (getValueByKey!1676 (t!359280 (toList!5296 lt!1832320)) key!4968))))

(assert (= (and d!1485080 c!799582) b!4670219))

(assert (= (and d!1485080 (not c!799582)) b!4670220))

(assert (= (and b!4670220 c!799583) b!4670221))

(assert (= (and b!4670220 (not c!799583)) b!4670222))

(declare-fun m!5563293 () Bool)

(assert (=> b!4670221 m!5563293))

(assert (=> b!4670136 d!1485080))

(declare-fun d!1485084 () Bool)

(declare-fun res!1965842 () Bool)

(declare-fun e!2914388 () Bool)

(assert (=> d!1485084 (=> res!1965842 e!2914388)))

(assert (=> d!1485084 (= res!1965842 (not ((_ is Cons!52018) (t!359280 oldBucket!40))))))

(assert (=> d!1485084 (= (noDuplicateKeys!1684 (t!359280 oldBucket!40)) e!2914388)))

(declare-fun b!4670223 () Bool)

(declare-fun e!2914389 () Bool)

(assert (=> b!4670223 (= e!2914388 e!2914389)))

(declare-fun res!1965843 () Bool)

(assert (=> b!4670223 (=> (not res!1965843) (not e!2914389))))

(assert (=> b!4670223 (= res!1965843 (not (containsKey!2832 (t!359280 (t!359280 oldBucket!40)) (_1!29885 (h!58196 (t!359280 oldBucket!40))))))))

(declare-fun b!4670224 () Bool)

(assert (=> b!4670224 (= e!2914389 (noDuplicateKeys!1684 (t!359280 (t!359280 oldBucket!40))))))

(assert (= (and d!1485084 (not res!1965842)) b!4670223))

(assert (= (and b!4670223 res!1965843) b!4670224))

(declare-fun m!5563309 () Bool)

(assert (=> b!4670223 m!5563309))

(declare-fun m!5563313 () Bool)

(assert (=> b!4670224 m!5563313))

(assert (=> b!4670144 d!1485084))

(declare-fun d!1485086 () Bool)

(assert (not d!1485086))

(assert (=> b!4670108 d!1485086))

(declare-fun d!1485090 () Bool)

(assert (not d!1485090))

(assert (=> b!4670108 d!1485090))

(declare-fun d!1485092 () Bool)

(declare-fun lt!1832541 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9068 (List!52145) (InoxSet K!13360))

(assert (=> d!1485092 (= lt!1832541 (select (content!9068 e!2914322) key!4968))))

(declare-fun e!2914397 () Bool)

(assert (=> d!1485092 (= lt!1832541 e!2914397)))

(declare-fun res!1965851 () Bool)

(assert (=> d!1485092 (=> (not res!1965851) (not e!2914397))))

(assert (=> d!1485092 (= res!1965851 ((_ is Cons!52021) e!2914322))))

(assert (=> d!1485092 (= (contains!15231 e!2914322 key!4968) lt!1832541)))

(declare-fun b!4670232 () Bool)

(declare-fun e!2914398 () Bool)

(assert (=> b!4670232 (= e!2914397 e!2914398)))

(declare-fun res!1965852 () Bool)

(assert (=> b!4670232 (=> res!1965852 e!2914398)))

(assert (=> b!4670232 (= res!1965852 (= (h!58201 e!2914322) key!4968))))

(declare-fun b!4670233 () Bool)

(assert (=> b!4670233 (= e!2914398 (contains!15231 (t!359283 e!2914322) key!4968))))

(assert (= (and d!1485092 res!1965851) b!4670232))

(assert (= (and b!4670232 (not res!1965852)) b!4670233))

(declare-fun m!5563325 () Bool)

(assert (=> d!1485092 m!5563325))

(declare-fun m!5563327 () Bool)

(assert (=> d!1485092 m!5563327))

(declare-fun m!5563329 () Bool)

(assert (=> b!4670233 m!5563329))

(assert (=> bm!326438 d!1485092))

(declare-fun d!1485096 () Bool)

(declare-fun res!1965870 () Bool)

(declare-fun e!2914419 () Bool)

(assert (=> d!1485096 (=> res!1965870 e!2914419)))

(assert (=> d!1485096 (= res!1965870 (and ((_ is Cons!52018) (t!359280 oldBucket!40)) (= (_1!29885 (h!58196 (t!359280 oldBucket!40))) (_1!29885 (h!58196 oldBucket!40)))))))

(assert (=> d!1485096 (= (containsKey!2832 (t!359280 oldBucket!40) (_1!29885 (h!58196 oldBucket!40))) e!2914419)))

(declare-fun b!4670257 () Bool)

(declare-fun e!2914420 () Bool)

(assert (=> b!4670257 (= e!2914419 e!2914420)))

(declare-fun res!1965871 () Bool)

(assert (=> b!4670257 (=> (not res!1965871) (not e!2914420))))

(assert (=> b!4670257 (= res!1965871 ((_ is Cons!52018) (t!359280 oldBucket!40)))))

(declare-fun b!4670258 () Bool)

(assert (=> b!4670258 (= e!2914420 (containsKey!2832 (t!359280 (t!359280 oldBucket!40)) (_1!29885 (h!58196 oldBucket!40))))))

(assert (= (and d!1485096 (not res!1965870)) b!4670257))

(assert (= (and b!4670257 res!1965871) b!4670258))

(declare-fun m!5563347 () Bool)

(assert (=> b!4670258 m!5563347))

(assert (=> b!4670143 d!1485096))

(declare-fun b!4670299 () Bool)

(assert (=> b!4670299 true))

(declare-fun bs!1078684 () Bool)

(declare-fun b!4670292 () Bool)

(assert (= bs!1078684 (and b!4670292 b!4670299)))

(declare-fun lambda!202437 () Int)

(declare-fun lambda!202436 () Int)

(assert (=> bs!1078684 (= (= (Cons!52018 (h!58196 (toList!5296 lt!1832320)) (t!359280 (toList!5296 lt!1832320))) (t!359280 (toList!5296 lt!1832320))) (= lambda!202437 lambda!202436))))

(assert (=> b!4670292 true))

(declare-fun bs!1078685 () Bool)

(declare-fun b!4670293 () Bool)

(assert (= bs!1078685 (and b!4670293 b!4670299)))

(declare-fun lambda!202438 () Int)

(assert (=> bs!1078685 (= (= (toList!5296 lt!1832320) (t!359280 (toList!5296 lt!1832320))) (= lambda!202438 lambda!202436))))

(declare-fun bs!1078686 () Bool)

(assert (= bs!1078686 (and b!4670293 b!4670292)))

(assert (=> bs!1078686 (= (= (toList!5296 lt!1832320) (Cons!52018 (h!58196 (toList!5296 lt!1832320)) (t!359280 (toList!5296 lt!1832320)))) (= lambda!202438 lambda!202437))))

(assert (=> b!4670293 true))

(declare-fun b!4670291 () Bool)

(declare-fun e!2914438 () List!52145)

(assert (=> b!4670291 (= e!2914438 Nil!52021)))

(assert (=> b!4670292 (= e!2914438 (Cons!52021 (_1!29885 (h!58196 (toList!5296 lt!1832320))) (getKeysList!783 (t!359280 (toList!5296 lt!1832320)))))))

(declare-fun c!799597 () Bool)

(assert (=> b!4670292 (= c!799597 (containsKey!2831 (t!359280 (toList!5296 lt!1832320)) (_1!29885 (h!58196 (toList!5296 lt!1832320)))))))

(declare-fun lt!1832610 () Unit!121049)

(declare-fun e!2914441 () Unit!121049)

(assert (=> b!4670292 (= lt!1832610 e!2914441)))

(declare-fun c!799598 () Bool)

(assert (=> b!4670292 (= c!799598 (contains!15231 (getKeysList!783 (t!359280 (toList!5296 lt!1832320))) (_1!29885 (h!58196 (toList!5296 lt!1832320)))))))

(declare-fun lt!1832613 () Unit!121049)

(declare-fun e!2914440 () Unit!121049)

(assert (=> b!4670292 (= lt!1832613 e!2914440)))

(declare-fun lt!1832612 () List!52145)

(assert (=> b!4670292 (= lt!1832612 (getKeysList!783 (t!359280 (toList!5296 lt!1832320))))))

(declare-fun lt!1832608 () Unit!121049)

(declare-fun lemmaForallContainsAddHeadPreserves!269 (List!52142 List!52145 tuple2!53182) Unit!121049)

(assert (=> b!4670292 (= lt!1832608 (lemmaForallContainsAddHeadPreserves!269 (t!359280 (toList!5296 lt!1832320)) lt!1832612 (h!58196 (toList!5296 lt!1832320))))))

(declare-fun forall!11109 (List!52145 Int) Bool)

(assert (=> b!4670292 (forall!11109 lt!1832612 lambda!202437)))

(declare-fun lt!1832609 () Unit!121049)

(assert (=> b!4670292 (= lt!1832609 lt!1832608)))

(declare-fun res!1965887 () Bool)

(declare-fun e!2914439 () Bool)

(assert (=> b!4670293 (=> (not res!1965887) (not e!2914439))))

(declare-fun lt!1832607 () List!52145)

(assert (=> b!4670293 (= res!1965887 (forall!11109 lt!1832607 lambda!202438))))

(declare-fun b!4670294 () Bool)

(declare-fun Unit!121066 () Unit!121049)

(assert (=> b!4670294 (= e!2914441 Unit!121066)))

(declare-fun d!1485108 () Bool)

(assert (=> d!1485108 e!2914439))

(declare-fun res!1965888 () Bool)

(assert (=> d!1485108 (=> (not res!1965888) (not e!2914439))))

(declare-fun noDuplicate!849 (List!52145) Bool)

(assert (=> d!1485108 (= res!1965888 (noDuplicate!849 lt!1832607))))

(assert (=> d!1485108 (= lt!1832607 e!2914438)))

(declare-fun c!799596 () Bool)

(assert (=> d!1485108 (= c!799596 ((_ is Cons!52018) (toList!5296 lt!1832320)))))

(assert (=> d!1485108 (invariantList!1332 (toList!5296 lt!1832320))))

(assert (=> d!1485108 (= (getKeysList!783 (toList!5296 lt!1832320)) lt!1832607)))

(declare-fun b!4670295 () Bool)

(declare-fun res!1965886 () Bool)

(assert (=> b!4670295 (=> (not res!1965886) (not e!2914439))))

(declare-fun length!554 (List!52145) Int)

(declare-fun length!555 (List!52142) Int)

(assert (=> b!4670295 (= res!1965886 (= (length!554 lt!1832607) (length!555 (toList!5296 lt!1832320))))))

(declare-fun b!4670296 () Bool)

(declare-fun Unit!121067 () Unit!121049)

(assert (=> b!4670296 (= e!2914440 Unit!121067)))

(declare-fun b!4670297 () Bool)

(assert (=> b!4670297 false))

(declare-fun Unit!121068 () Unit!121049)

(assert (=> b!4670297 (= e!2914441 Unit!121068)))

(declare-fun b!4670298 () Bool)

(declare-fun lambda!202439 () Int)

(declare-fun map!11504 (List!52142 Int) List!52145)

(assert (=> b!4670298 (= e!2914439 (= (content!9068 lt!1832607) (content!9068 (map!11504 (toList!5296 lt!1832320) lambda!202439))))))

(assert (=> b!4670299 false))

(declare-fun lt!1832611 () Unit!121049)

(declare-fun forallContained!3313 (List!52145 Int K!13360) Unit!121049)

(assert (=> b!4670299 (= lt!1832611 (forallContained!3313 (getKeysList!783 (t!359280 (toList!5296 lt!1832320))) lambda!202436 (_1!29885 (h!58196 (toList!5296 lt!1832320)))))))

(declare-fun Unit!121069 () Unit!121049)

(assert (=> b!4670299 (= e!2914440 Unit!121069)))

(assert (= (and d!1485108 c!799596) b!4670292))

(assert (= (and d!1485108 (not c!799596)) b!4670291))

(assert (= (and b!4670292 c!799597) b!4670297))

(assert (= (and b!4670292 (not c!799597)) b!4670294))

(assert (= (and b!4670292 c!799598) b!4670299))

(assert (= (and b!4670292 (not c!799598)) b!4670296))

(assert (= (and d!1485108 res!1965888) b!4670295))

(assert (= (and b!4670295 res!1965886) b!4670293))

(assert (= (and b!4670293 res!1965887) b!4670298))

(declare-fun m!5563453 () Bool)

(assert (=> b!4670295 m!5563453))

(declare-fun m!5563455 () Bool)

(assert (=> b!4670295 m!5563455))

(declare-fun m!5563457 () Bool)

(assert (=> b!4670298 m!5563457))

(declare-fun m!5563459 () Bool)

(assert (=> b!4670298 m!5563459))

(assert (=> b!4670298 m!5563459))

(declare-fun m!5563461 () Bool)

(assert (=> b!4670298 m!5563461))

(declare-fun m!5563463 () Bool)

(assert (=> b!4670299 m!5563463))

(assert (=> b!4670299 m!5563463))

(declare-fun m!5563465 () Bool)

(assert (=> b!4670299 m!5563465))

(declare-fun m!5563467 () Bool)

(assert (=> d!1485108 m!5563467))

(declare-fun m!5563469 () Bool)

(assert (=> d!1485108 m!5563469))

(declare-fun m!5563471 () Bool)

(assert (=> b!4670292 m!5563471))

(assert (=> b!4670292 m!5563463))

(declare-fun m!5563473 () Bool)

(assert (=> b!4670292 m!5563473))

(assert (=> b!4670292 m!5563463))

(declare-fun m!5563475 () Bool)

(assert (=> b!4670292 m!5563475))

(declare-fun m!5563477 () Bool)

(assert (=> b!4670292 m!5563477))

(declare-fun m!5563479 () Bool)

(assert (=> b!4670293 m!5563479))

(assert (=> b!4670134 d!1485108))

(declare-fun d!1485122 () Bool)

(declare-fun res!1965893 () Bool)

(declare-fun e!2914446 () Bool)

(assert (=> d!1485122 (=> res!1965893 e!2914446)))

(assert (=> d!1485122 (= res!1965893 (and ((_ is Cons!52018) (toList!5296 lt!1832320)) (= (_1!29885 (h!58196 (toList!5296 lt!1832320))) key!4968)))))

(assert (=> d!1485122 (= (containsKey!2831 (toList!5296 lt!1832320) key!4968) e!2914446)))

(declare-fun b!4670306 () Bool)

(declare-fun e!2914447 () Bool)

(assert (=> b!4670306 (= e!2914446 e!2914447)))

(declare-fun res!1965894 () Bool)

(assert (=> b!4670306 (=> (not res!1965894) (not e!2914447))))

(assert (=> b!4670306 (= res!1965894 ((_ is Cons!52018) (toList!5296 lt!1832320)))))

(declare-fun b!4670307 () Bool)

(assert (=> b!4670307 (= e!2914447 (containsKey!2831 (t!359280 (toList!5296 lt!1832320)) key!4968))))

(assert (= (and d!1485122 (not res!1965893)) b!4670306))

(assert (= (and b!4670306 res!1965894) b!4670307))

(declare-fun m!5563485 () Bool)

(assert (=> b!4670307 m!5563485))

(assert (=> b!4670133 d!1485122))

(declare-fun d!1485126 () Bool)

(assert (=> d!1485126 (containsKey!2831 (toList!5296 lt!1832320) key!4968)))

(declare-fun lt!1832619 () Unit!121049)

(declare-fun choose!32317 (List!52142 K!13360) Unit!121049)

(assert (=> d!1485126 (= lt!1832619 (choose!32317 (toList!5296 lt!1832320) key!4968))))

(assert (=> d!1485126 (invariantList!1332 (toList!5296 lt!1832320))))

(assert (=> d!1485126 (= (lemmaInGetKeysListThenContainsKey!782 (toList!5296 lt!1832320) key!4968) lt!1832619)))

(declare-fun bs!1078700 () Bool)

(assert (= bs!1078700 d!1485126))

(assert (=> bs!1078700 m!5563207))

(declare-fun m!5563493 () Bool)

(assert (=> bs!1078700 m!5563493))

(assert (=> bs!1078700 m!5563469))

(assert (=> b!4670133 d!1485126))

(declare-fun d!1485134 () Bool)

(declare-fun res!1965903 () Bool)

(declare-fun e!2914456 () Bool)

(assert (=> d!1485134 (=> res!1965903 e!2914456)))

(assert (=> d!1485134 (= res!1965903 ((_ is Nil!52018) newBucket!224))))

(assert (=> d!1485134 (= (forall!11107 newBucket!224 lambda!202409) e!2914456)))

(declare-fun b!4670316 () Bool)

(declare-fun e!2914457 () Bool)

(assert (=> b!4670316 (= e!2914456 e!2914457)))

(declare-fun res!1965904 () Bool)

(assert (=> b!4670316 (=> (not res!1965904) (not e!2914457))))

(declare-fun dynLambda!21643 (Int tuple2!53182) Bool)

(assert (=> b!4670316 (= res!1965904 (dynLambda!21643 lambda!202409 (h!58196 newBucket!224)))))

(declare-fun b!4670317 () Bool)

(assert (=> b!4670317 (= e!2914457 (forall!11107 (t!359280 newBucket!224) lambda!202409))))

(assert (= (and d!1485134 (not res!1965903)) b!4670316))

(assert (= (and b!4670316 res!1965904) b!4670317))

(declare-fun b_lambda!176277 () Bool)

(assert (=> (not b_lambda!176277) (not b!4670316)))

(declare-fun m!5563495 () Bool)

(assert (=> b!4670316 m!5563495))

(declare-fun m!5563497 () Bool)

(assert (=> b!4670317 m!5563497))

(assert (=> d!1485050 d!1485134))

(declare-fun d!1485138 () Bool)

(declare-fun res!1965905 () Bool)

(declare-fun e!2914458 () Bool)

(assert (=> d!1485138 (=> res!1965905 e!2914458)))

(assert (=> d!1485138 (= res!1965905 ((_ is Nil!52018) oldBucket!40))))

(assert (=> d!1485138 (= (forall!11107 oldBucket!40 lambda!202402) e!2914458)))

(declare-fun b!4670318 () Bool)

(declare-fun e!2914459 () Bool)

(assert (=> b!4670318 (= e!2914458 e!2914459)))

(declare-fun res!1965906 () Bool)

(assert (=> b!4670318 (=> (not res!1965906) (not e!2914459))))

(assert (=> b!4670318 (= res!1965906 (dynLambda!21643 lambda!202402 (h!58196 oldBucket!40)))))

(declare-fun b!4670319 () Bool)

(assert (=> b!4670319 (= e!2914459 (forall!11107 (t!359280 oldBucket!40) lambda!202402))))

(assert (= (and d!1485138 (not res!1965905)) b!4670318))

(assert (= (and b!4670318 res!1965906) b!4670319))

(declare-fun b_lambda!176279 () Bool)

(assert (=> (not b_lambda!176279) (not b!4670318)))

(declare-fun m!5563499 () Bool)

(assert (=> b!4670318 m!5563499))

(declare-fun m!5563501 () Bool)

(assert (=> b!4670319 m!5563501))

(assert (=> d!1485020 d!1485138))

(assert (=> d!1485020 d!1485046))

(declare-fun d!1485140 () Bool)

(declare-fun lt!1832620 () Bool)

(assert (=> d!1485140 (= lt!1832620 (select (content!9068 (keys!18466 lt!1832320)) key!4968))))

(declare-fun e!2914460 () Bool)

(assert (=> d!1485140 (= lt!1832620 e!2914460)))

(declare-fun res!1965907 () Bool)

(assert (=> d!1485140 (=> (not res!1965907) (not e!2914460))))

(assert (=> d!1485140 (= res!1965907 ((_ is Cons!52021) (keys!18466 lt!1832320)))))

(assert (=> d!1485140 (= (contains!15231 (keys!18466 lt!1832320) key!4968) lt!1832620)))

(declare-fun b!4670320 () Bool)

(declare-fun e!2914461 () Bool)

(assert (=> b!4670320 (= e!2914460 e!2914461)))

(declare-fun res!1965908 () Bool)

(assert (=> b!4670320 (=> res!1965908 e!2914461)))

(assert (=> b!4670320 (= res!1965908 (= (h!58201 (keys!18466 lt!1832320)) key!4968))))

(declare-fun b!4670321 () Bool)

(assert (=> b!4670321 (= e!2914461 (contains!15231 (t!359283 (keys!18466 lt!1832320)) key!4968))))

(assert (= (and d!1485140 res!1965907) b!4670320))

(assert (= (and b!4670320 (not res!1965908)) b!4670321))

(assert (=> d!1485140 m!5563203))

(declare-fun m!5563503 () Bool)

(assert (=> d!1485140 m!5563503))

(declare-fun m!5563505 () Bool)

(assert (=> d!1485140 m!5563505))

(declare-fun m!5563507 () Bool)

(assert (=> b!4670321 m!5563507))

(assert (=> b!4670131 d!1485140))

(declare-fun bs!1078702 () Bool)

(declare-fun b!4670342 () Bool)

(assert (= bs!1078702 (and b!4670342 b!4670299)))

(declare-fun lambda!202453 () Int)

(assert (=> bs!1078702 (= (= (toList!5296 lt!1832320) (t!359280 (toList!5296 lt!1832320))) (= lambda!202453 lambda!202436))))

(declare-fun bs!1078703 () Bool)

(assert (= bs!1078703 (and b!4670342 b!4670292)))

(assert (=> bs!1078703 (= (= (toList!5296 lt!1832320) (Cons!52018 (h!58196 (toList!5296 lt!1832320)) (t!359280 (toList!5296 lt!1832320)))) (= lambda!202453 lambda!202437))))

(declare-fun bs!1078704 () Bool)

(assert (= bs!1078704 (and b!4670342 b!4670293)))

(assert (=> bs!1078704 (= lambda!202453 lambda!202438)))

(assert (=> b!4670342 true))

(declare-fun bs!1078705 () Bool)

(declare-fun b!4670343 () Bool)

(assert (= bs!1078705 (and b!4670343 b!4670298)))

(declare-fun lambda!202454 () Int)

(assert (=> bs!1078705 (= lambda!202454 lambda!202439)))

(declare-fun d!1485142 () Bool)

(declare-fun e!2914469 () Bool)

(assert (=> d!1485142 e!2914469))

(declare-fun res!1965926 () Bool)

(assert (=> d!1485142 (=> (not res!1965926) (not e!2914469))))

(declare-fun lt!1832626 () List!52145)

(assert (=> d!1485142 (= res!1965926 (noDuplicate!849 lt!1832626))))

(assert (=> d!1485142 (= lt!1832626 (getKeysList!783 (toList!5296 lt!1832320)))))

(assert (=> d!1485142 (= (keys!18466 lt!1832320) lt!1832626)))

(declare-fun b!4670341 () Bool)

(declare-fun res!1965928 () Bool)

(assert (=> b!4670341 (=> (not res!1965928) (not e!2914469))))

(assert (=> b!4670341 (= res!1965928 (= (length!554 lt!1832626) (length!555 (toList!5296 lt!1832320))))))

(declare-fun res!1965927 () Bool)

(assert (=> b!4670342 (=> (not res!1965927) (not e!2914469))))

(assert (=> b!4670342 (= res!1965927 (forall!11109 lt!1832626 lambda!202453))))

(assert (=> b!4670343 (= e!2914469 (= (content!9068 lt!1832626) (content!9068 (map!11504 (toList!5296 lt!1832320) lambda!202454))))))

(assert (= (and d!1485142 res!1965926) b!4670341))

(assert (= (and b!4670341 res!1965928) b!4670342))

(assert (= (and b!4670342 res!1965927) b!4670343))

(declare-fun m!5563529 () Bool)

(assert (=> d!1485142 m!5563529))

(assert (=> d!1485142 m!5563201))

(declare-fun m!5563531 () Bool)

(assert (=> b!4670341 m!5563531))

(assert (=> b!4670341 m!5563455))

(declare-fun m!5563533 () Bool)

(assert (=> b!4670342 m!5563533))

(declare-fun m!5563535 () Bool)

(assert (=> b!4670343 m!5563535))

(declare-fun m!5563537 () Bool)

(assert (=> b!4670343 m!5563537))

(assert (=> b!4670343 m!5563537))

(declare-fun m!5563539 () Bool)

(assert (=> b!4670343 m!5563539))

(assert (=> b!4670131 d!1485142))

(declare-fun b!4670352 () Bool)

(declare-fun e!2914475 () List!52142)

(assert (=> b!4670352 (= e!2914475 (Cons!52018 (h!58196 (t!359280 oldBucket!40)) (removePairForKey!1307 (t!359280 (t!359280 oldBucket!40)) key!4968)))))

(declare-fun b!4670353 () Bool)

(assert (=> b!4670353 (= e!2914475 Nil!52018)))

(declare-fun d!1485150 () Bool)

(declare-fun lt!1832627 () List!52142)

(assert (=> d!1485150 (not (containsKey!2832 lt!1832627 key!4968))))

(declare-fun e!2914474 () List!52142)

(assert (=> d!1485150 (= lt!1832627 e!2914474)))

(declare-fun c!799600 () Bool)

(assert (=> d!1485150 (= c!799600 (and ((_ is Cons!52018) (t!359280 oldBucket!40)) (= (_1!29885 (h!58196 (t!359280 oldBucket!40))) key!4968)))))

(assert (=> d!1485150 (noDuplicateKeys!1684 (t!359280 oldBucket!40))))

(assert (=> d!1485150 (= (removePairForKey!1307 (t!359280 oldBucket!40) key!4968) lt!1832627)))

(declare-fun b!4670351 () Bool)

(assert (=> b!4670351 (= e!2914474 e!2914475)))

(declare-fun c!799599 () Bool)

(assert (=> b!4670351 (= c!799599 ((_ is Cons!52018) (t!359280 oldBucket!40)))))

(declare-fun b!4670350 () Bool)

(assert (=> b!4670350 (= e!2914474 (t!359280 (t!359280 oldBucket!40)))))

(assert (= (and d!1485150 c!799600) b!4670350))

(assert (= (and d!1485150 (not c!799600)) b!4670351))

(assert (= (and b!4670351 c!799599) b!4670352))

(assert (= (and b!4670351 (not c!799599)) b!4670353))

(declare-fun m!5563541 () Bool)

(assert (=> b!4670352 m!5563541))

(declare-fun m!5563543 () Bool)

(assert (=> d!1485150 m!5563543))

(assert (=> d!1485150 m!5563231))

(assert (=> b!4670161 d!1485150))

(assert (=> b!4670130 d!1485142))

(assert (=> b!4670128 d!1485140))

(assert (=> b!4670128 d!1485142))

(declare-fun d!1485152 () Bool)

(assert (=> d!1485152 (isDefined!9193 (getValueByKey!1676 (toList!5296 lt!1832320) key!4968))))

(declare-fun lt!1832632 () Unit!121049)

(declare-fun choose!32318 (List!52142 K!13360) Unit!121049)

(assert (=> d!1485152 (= lt!1832632 (choose!32318 (toList!5296 lt!1832320) key!4968))))

(assert (=> d!1485152 (invariantList!1332 (toList!5296 lt!1832320))))

(assert (=> d!1485152 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1578 (toList!5296 lt!1832320) key!4968) lt!1832632)))

(declare-fun bs!1078706 () Bool)

(assert (= bs!1078706 d!1485152))

(assert (=> bs!1078706 m!5563213))

(assert (=> bs!1078706 m!5563213))

(assert (=> bs!1078706 m!5563215))

(declare-fun m!5563549 () Bool)

(assert (=> bs!1078706 m!5563549))

(assert (=> bs!1078706 m!5563469))

(assert (=> b!4670129 d!1485152))

(assert (=> b!4670129 d!1485078))

(assert (=> b!4670129 d!1485080))

(declare-fun d!1485156 () Bool)

(assert (=> d!1485156 (contains!15231 (getKeysList!783 (toList!5296 lt!1832320)) key!4968)))

(declare-fun lt!1832636 () Unit!121049)

(declare-fun choose!32319 (List!52142 K!13360) Unit!121049)

(assert (=> d!1485156 (= lt!1832636 (choose!32319 (toList!5296 lt!1832320) key!4968))))

(assert (=> d!1485156 (invariantList!1332 (toList!5296 lt!1832320))))

(assert (=> d!1485156 (= (lemmaInListThenGetKeysListContains!778 (toList!5296 lt!1832320) key!4968) lt!1832636)))

(declare-fun bs!1078708 () Bool)

(assert (= bs!1078708 d!1485156))

(assert (=> bs!1078708 m!5563201))

(assert (=> bs!1078708 m!5563201))

(declare-fun m!5563569 () Bool)

(assert (=> bs!1078708 m!5563569))

(declare-fun m!5563571 () Bool)

(assert (=> bs!1078708 m!5563571))

(assert (=> bs!1078708 m!5563469))

(assert (=> b!4670129 d!1485156))

(declare-fun d!1485168 () Bool)

(declare-fun res!1965947 () Bool)

(declare-fun e!2914490 () Bool)

(assert (=> d!1485168 (=> res!1965947 e!2914490)))

(assert (=> d!1485168 (= res!1965947 (not ((_ is Cons!52018) (t!359280 newBucket!224))))))

(assert (=> d!1485168 (= (noDuplicateKeys!1684 (t!359280 newBucket!224)) e!2914490)))

(declare-fun b!4670368 () Bool)

(declare-fun e!2914491 () Bool)

(assert (=> b!4670368 (= e!2914490 e!2914491)))

(declare-fun res!1965948 () Bool)

(assert (=> b!4670368 (=> (not res!1965948) (not e!2914491))))

(assert (=> b!4670368 (= res!1965948 (not (containsKey!2832 (t!359280 (t!359280 newBucket!224)) (_1!29885 (h!58196 (t!359280 newBucket!224))))))))

(declare-fun b!4670369 () Bool)

(assert (=> b!4670369 (= e!2914491 (noDuplicateKeys!1684 (t!359280 (t!359280 newBucket!224))))))

(assert (= (and d!1485168 (not res!1965947)) b!4670368))

(assert (= (and b!4670368 res!1965948) b!4670369))

(declare-fun m!5563573 () Bool)

(assert (=> b!4670368 m!5563573))

(declare-fun m!5563575 () Bool)

(assert (=> b!4670369 m!5563575))

(assert (=> b!4670146 d!1485168))

(assert (=> d!1485042 d!1485122))

(declare-fun d!1485170 () Bool)

(declare-fun res!1965949 () Bool)

(declare-fun e!2914492 () Bool)

(assert (=> d!1485170 (=> res!1965949 e!2914492)))

(assert (=> d!1485170 (= res!1965949 (and ((_ is Cons!52018) (t!359280 newBucket!224)) (= (_1!29885 (h!58196 (t!359280 newBucket!224))) (_1!29885 (h!58196 newBucket!224)))))))

(assert (=> d!1485170 (= (containsKey!2832 (t!359280 newBucket!224) (_1!29885 (h!58196 newBucket!224))) e!2914492)))

(declare-fun b!4670370 () Bool)

(declare-fun e!2914493 () Bool)

(assert (=> b!4670370 (= e!2914492 e!2914493)))

(declare-fun res!1965950 () Bool)

(assert (=> b!4670370 (=> (not res!1965950) (not e!2914493))))

(assert (=> b!4670370 (= res!1965950 ((_ is Cons!52018) (t!359280 newBucket!224)))))

(declare-fun b!4670371 () Bool)

(assert (=> b!4670371 (= e!2914493 (containsKey!2832 (t!359280 (t!359280 newBucket!224)) (_1!29885 (h!58196 newBucket!224))))))

(assert (= (and d!1485170 (not res!1965949)) b!4670370))

(assert (= (and b!4670370 res!1965950) b!4670371))

(declare-fun m!5563577 () Bool)

(assert (=> b!4670371 m!5563577))

(assert (=> b!4670145 d!1485170))

(declare-fun bs!1078712 () Bool)

(declare-fun d!1485172 () Bool)

(assert (= bs!1078712 (and d!1485172 b!4670101)))

(declare-fun lambda!202459 () Int)

(assert (=> bs!1078712 (= lambda!202459 lambda!202401)))

(declare-fun bs!1078713 () Bool)

(assert (= bs!1078713 (and d!1485172 b!4670098)))

(assert (=> bs!1078713 (= (= lt!1832465 lt!1832321) (= lambda!202459 lambda!202399))))

(declare-fun bs!1078714 () Bool)

(assert (= bs!1078714 (and d!1485172 d!1485050)))

(assert (=> bs!1078714 (not (= lambda!202459 lambda!202409))))

(assert (=> bs!1078712 (= (= lt!1832465 lt!1832321) (= lambda!202459 lambda!202400))))

(declare-fun bs!1078715 () Bool)

(assert (= bs!1078715 (and d!1485172 d!1485020)))

(assert (=> bs!1078715 (= (= lt!1832465 lt!1832476) (= lambda!202459 lambda!202402))))

(declare-fun bs!1078716 () Bool)

(assert (= bs!1078716 (and d!1485172 d!1485074)))

(assert (=> bs!1078716 (= (= lt!1832465 lt!1832321) (= lambda!202459 lambda!202418))))

(declare-fun bs!1078717 () Bool)

(assert (= bs!1078717 (and d!1485172 d!1485056)))

(assert (=> bs!1078717 (not (= lambda!202459 lambda!202410))))

(assert (=> d!1485172 true))

(assert (=> d!1485172 (forall!11107 (toList!5296 lt!1832321) lambda!202459)))

(declare-fun lt!1832646 () Unit!121049)

(declare-fun choose!32320 (ListMap!4637 ListMap!4637 K!13360 V!13606) Unit!121049)

(assert (=> d!1485172 (= lt!1832646 (choose!32320 lt!1832321 lt!1832465 (_1!29885 (h!58196 oldBucket!40)) (_2!29885 (h!58196 oldBucket!40))))))

(assert (=> d!1485172 (forall!11107 (toList!5296 (+!2024 lt!1832321 (tuple2!53183 (_1!29885 (h!58196 oldBucket!40)) (_2!29885 (h!58196 oldBucket!40))))) lambda!202459)))

(assert (=> d!1485172 (= (addForallContainsKeyThenBeforeAdding!631 lt!1832321 lt!1832465 (_1!29885 (h!58196 oldBucket!40)) (_2!29885 (h!58196 oldBucket!40))) lt!1832646)))

(declare-fun bs!1078718 () Bool)

(assert (= bs!1078718 d!1485172))

(declare-fun m!5563605 () Bool)

(assert (=> bs!1078718 m!5563605))

(declare-fun m!5563607 () Bool)

(assert (=> bs!1078718 m!5563607))

(declare-fun m!5563609 () Bool)

(assert (=> bs!1078718 m!5563609))

(declare-fun m!5563611 () Bool)

(assert (=> bs!1078718 m!5563611))

(assert (=> b!4670101 d!1485172))

(declare-fun d!1485188 () Bool)

(declare-fun res!1965957 () Bool)

(declare-fun e!2914506 () Bool)

(assert (=> d!1485188 (=> res!1965957 e!2914506)))

(assert (=> d!1485188 (= res!1965957 ((_ is Nil!52018) (toList!5296 lt!1832321)))))

(assert (=> d!1485188 (= (forall!11107 (toList!5296 lt!1832321) lambda!202400) e!2914506)))

(declare-fun b!4670391 () Bool)

(declare-fun e!2914507 () Bool)

(assert (=> b!4670391 (= e!2914506 e!2914507)))

(declare-fun res!1965958 () Bool)

(assert (=> b!4670391 (=> (not res!1965958) (not e!2914507))))

(assert (=> b!4670391 (= res!1965958 (dynLambda!21643 lambda!202400 (h!58196 (toList!5296 lt!1832321))))))

(declare-fun b!4670392 () Bool)

(assert (=> b!4670392 (= e!2914507 (forall!11107 (t!359280 (toList!5296 lt!1832321)) lambda!202400))))

(assert (= (and d!1485188 (not res!1965957)) b!4670391))

(assert (= (and b!4670391 res!1965958) b!4670392))

(declare-fun b_lambda!176291 () Bool)

(assert (=> (not b_lambda!176291) (not b!4670391)))

(declare-fun m!5563615 () Bool)

(assert (=> b!4670391 m!5563615))

(declare-fun m!5563617 () Bool)

(assert (=> b!4670392 m!5563617))

(assert (=> b!4670101 d!1485188))

(declare-fun d!1485192 () Bool)

(declare-fun e!2914510 () Bool)

(assert (=> d!1485192 e!2914510))

(declare-fun res!1965963 () Bool)

(assert (=> d!1485192 (=> (not res!1965963) (not e!2914510))))

(declare-fun lt!1832661 () ListMap!4637)

(assert (=> d!1485192 (= res!1965963 (contains!15229 lt!1832661 (_1!29885 (h!58196 oldBucket!40))))))

(declare-fun lt!1832659 () List!52142)

(assert (=> d!1485192 (= lt!1832661 (ListMap!4638 lt!1832659))))

(declare-fun lt!1832660 () Unit!121049)

(declare-fun lt!1832658 () Unit!121049)

(assert (=> d!1485192 (= lt!1832660 lt!1832658)))

(assert (=> d!1485192 (= (getValueByKey!1676 lt!1832659 (_1!29885 (h!58196 oldBucket!40))) (Some!11927 (_2!29885 (h!58196 oldBucket!40))))))

(declare-fun lemmaContainsTupThenGetReturnValue!950 (List!52142 K!13360 V!13606) Unit!121049)

(assert (=> d!1485192 (= lt!1832658 (lemmaContainsTupThenGetReturnValue!950 lt!1832659 (_1!29885 (h!58196 oldBucket!40)) (_2!29885 (h!58196 oldBucket!40))))))

(declare-fun insertNoDuplicatedKeys!458 (List!52142 K!13360 V!13606) List!52142)

(assert (=> d!1485192 (= lt!1832659 (insertNoDuplicatedKeys!458 (toList!5296 lt!1832321) (_1!29885 (h!58196 oldBucket!40)) (_2!29885 (h!58196 oldBucket!40))))))

(assert (=> d!1485192 (= (+!2024 lt!1832321 (h!58196 oldBucket!40)) lt!1832661)))

(declare-fun b!4670397 () Bool)

(declare-fun res!1965964 () Bool)

(assert (=> b!4670397 (=> (not res!1965964) (not e!2914510))))

(assert (=> b!4670397 (= res!1965964 (= (getValueByKey!1676 (toList!5296 lt!1832661) (_1!29885 (h!58196 oldBucket!40))) (Some!11927 (_2!29885 (h!58196 oldBucket!40)))))))

(declare-fun b!4670398 () Bool)

(declare-fun contains!15233 (List!52142 tuple2!53182) Bool)

(assert (=> b!4670398 (= e!2914510 (contains!15233 (toList!5296 lt!1832661) (h!58196 oldBucket!40)))))

(assert (= (and d!1485192 res!1965963) b!4670397))

(assert (= (and b!4670397 res!1965964) b!4670398))

(declare-fun m!5563619 () Bool)

(assert (=> d!1485192 m!5563619))

(declare-fun m!5563621 () Bool)

(assert (=> d!1485192 m!5563621))

(declare-fun m!5563623 () Bool)

(assert (=> d!1485192 m!5563623))

(declare-fun m!5563625 () Bool)

(assert (=> d!1485192 m!5563625))

(declare-fun m!5563627 () Bool)

(assert (=> b!4670397 m!5563627))

(declare-fun m!5563629 () Bool)

(assert (=> b!4670398 m!5563629))

(assert (=> b!4670101 d!1485192))

(declare-fun d!1485194 () Bool)

(declare-fun res!1965965 () Bool)

(declare-fun e!2914511 () Bool)

(assert (=> d!1485194 (=> res!1965965 e!2914511)))

(assert (=> d!1485194 (= res!1965965 ((_ is Nil!52018) (toList!5296 lt!1832461)))))

(assert (=> d!1485194 (= (forall!11107 (toList!5296 lt!1832461) lambda!202401) e!2914511)))

(declare-fun b!4670399 () Bool)

(declare-fun e!2914512 () Bool)

(assert (=> b!4670399 (= e!2914511 e!2914512)))

(declare-fun res!1965966 () Bool)

(assert (=> b!4670399 (=> (not res!1965966) (not e!2914512))))

(assert (=> b!4670399 (= res!1965966 (dynLambda!21643 lambda!202401 (h!58196 (toList!5296 lt!1832461))))))

(declare-fun b!4670400 () Bool)

(assert (=> b!4670400 (= e!2914512 (forall!11107 (t!359280 (toList!5296 lt!1832461)) lambda!202401))))

(assert (= (and d!1485194 (not res!1965965)) b!4670399))

(assert (= (and b!4670399 res!1965966) b!4670400))

(declare-fun b_lambda!176293 () Bool)

(assert (=> (not b_lambda!176293) (not b!4670399)))

(declare-fun m!5563631 () Bool)

(assert (=> b!4670399 m!5563631))

(declare-fun m!5563633 () Bool)

(assert (=> b!4670400 m!5563633))

(assert (=> b!4670101 d!1485194))

(declare-fun d!1485196 () Bool)

(declare-fun e!2914517 () Bool)

(assert (=> d!1485196 e!2914517))

(declare-fun res!1965968 () Bool)

(assert (=> d!1485196 (=> res!1965968 e!2914517)))

(declare-fun e!2914518 () Bool)

(assert (=> d!1485196 (= res!1965968 e!2914518)))

(declare-fun res!1965967 () Bool)

(assert (=> d!1485196 (=> (not res!1965967) (not e!2914518))))

(declare-fun lt!1832667 () Bool)

(assert (=> d!1485196 (= res!1965967 (not lt!1832667))))

(declare-fun lt!1832662 () Bool)

(assert (=> d!1485196 (= lt!1832667 lt!1832662)))

(declare-fun lt!1832663 () Unit!121049)

(declare-fun e!2914514 () Unit!121049)

(assert (=> d!1485196 (= lt!1832663 e!2914514)))

(declare-fun c!799607 () Bool)

(assert (=> d!1485196 (= c!799607 lt!1832662)))

(assert (=> d!1485196 (= lt!1832662 (containsKey!2831 (toList!5296 lt!1832461) (_1!29885 (h!58196 oldBucket!40))))))

(assert (=> d!1485196 (= (contains!15229 lt!1832461 (_1!29885 (h!58196 oldBucket!40))) lt!1832667)))

(declare-fun b!4670401 () Bool)

(assert (=> b!4670401 (= e!2914518 (not (contains!15231 (keys!18466 lt!1832461) (_1!29885 (h!58196 oldBucket!40)))))))

(declare-fun b!4670402 () Bool)

(declare-fun lt!1832664 () Unit!121049)

(assert (=> b!4670402 (= e!2914514 lt!1832664)))

(declare-fun lt!1832665 () Unit!121049)

(assert (=> b!4670402 (= lt!1832665 (lemmaContainsKeyImpliesGetValueByKeyDefined!1578 (toList!5296 lt!1832461) (_1!29885 (h!58196 oldBucket!40))))))

(assert (=> b!4670402 (isDefined!9193 (getValueByKey!1676 (toList!5296 lt!1832461) (_1!29885 (h!58196 oldBucket!40))))))

(declare-fun lt!1832668 () Unit!121049)

(assert (=> b!4670402 (= lt!1832668 lt!1832665)))

(assert (=> b!4670402 (= lt!1832664 (lemmaInListThenGetKeysListContains!778 (toList!5296 lt!1832461) (_1!29885 (h!58196 oldBucket!40))))))

(declare-fun call!326452 () Bool)

(assert (=> b!4670402 call!326452))

(declare-fun b!4670403 () Bool)

(declare-fun e!2914513 () List!52145)

(assert (=> b!4670403 (= e!2914513 (keys!18466 lt!1832461))))

(declare-fun b!4670404 () Bool)

(declare-fun e!2914515 () Bool)

(assert (=> b!4670404 (= e!2914515 (contains!15231 (keys!18466 lt!1832461) (_1!29885 (h!58196 oldBucket!40))))))

(declare-fun b!4670405 () Bool)

(declare-fun e!2914516 () Unit!121049)

(assert (=> b!4670405 (= e!2914514 e!2914516)))

(declare-fun c!799609 () Bool)

(assert (=> b!4670405 (= c!799609 call!326452)))

(declare-fun b!4670406 () Bool)

(assert (=> b!4670406 false))

(declare-fun lt!1832669 () Unit!121049)

(declare-fun lt!1832666 () Unit!121049)

(assert (=> b!4670406 (= lt!1832669 lt!1832666)))

(assert (=> b!4670406 (containsKey!2831 (toList!5296 lt!1832461) (_1!29885 (h!58196 oldBucket!40)))))

(assert (=> b!4670406 (= lt!1832666 (lemmaInGetKeysListThenContainsKey!782 (toList!5296 lt!1832461) (_1!29885 (h!58196 oldBucket!40))))))

(declare-fun Unit!121083 () Unit!121049)

(assert (=> b!4670406 (= e!2914516 Unit!121083)))

(declare-fun b!4670407 () Bool)

(assert (=> b!4670407 (= e!2914513 (getKeysList!783 (toList!5296 lt!1832461)))))

(declare-fun b!4670408 () Bool)

(declare-fun Unit!121084 () Unit!121049)

(assert (=> b!4670408 (= e!2914516 Unit!121084)))

(declare-fun b!4670409 () Bool)

(assert (=> b!4670409 (= e!2914517 e!2914515)))

(declare-fun res!1965969 () Bool)

(assert (=> b!4670409 (=> (not res!1965969) (not e!2914515))))

(assert (=> b!4670409 (= res!1965969 (isDefined!9193 (getValueByKey!1676 (toList!5296 lt!1832461) (_1!29885 (h!58196 oldBucket!40)))))))

(declare-fun bm!326447 () Bool)

(assert (=> bm!326447 (= call!326452 (contains!15231 e!2914513 (_1!29885 (h!58196 oldBucket!40))))))

(declare-fun c!799608 () Bool)

(assert (=> bm!326447 (= c!799608 c!799607)))

(assert (= (and d!1485196 c!799607) b!4670402))

(assert (= (and d!1485196 (not c!799607)) b!4670405))

(assert (= (and b!4670405 c!799609) b!4670406))

(assert (= (and b!4670405 (not c!799609)) b!4670408))

(assert (= (or b!4670402 b!4670405) bm!326447))

(assert (= (and bm!326447 c!799608) b!4670407))

(assert (= (and bm!326447 (not c!799608)) b!4670403))

(assert (= (and d!1485196 res!1965967) b!4670401))

(assert (= (and d!1485196 (not res!1965968)) b!4670409))

(assert (= (and b!4670409 res!1965969) b!4670404))

(declare-fun m!5563635 () Bool)

(assert (=> b!4670407 m!5563635))

(declare-fun m!5563637 () Bool)

(assert (=> b!4670401 m!5563637))

(assert (=> b!4670401 m!5563637))

(declare-fun m!5563639 () Bool)

(assert (=> b!4670401 m!5563639))

(assert (=> b!4670403 m!5563637))

(declare-fun m!5563641 () Bool)

(assert (=> b!4670406 m!5563641))

(declare-fun m!5563643 () Bool)

(assert (=> b!4670406 m!5563643))

(assert (=> b!4670404 m!5563637))

(assert (=> b!4670404 m!5563637))

(assert (=> b!4670404 m!5563639))

(declare-fun m!5563645 () Bool)

(assert (=> b!4670402 m!5563645))

(declare-fun m!5563647 () Bool)

(assert (=> b!4670402 m!5563647))

(assert (=> b!4670402 m!5563647))

(declare-fun m!5563649 () Bool)

(assert (=> b!4670402 m!5563649))

(declare-fun m!5563651 () Bool)

(assert (=> b!4670402 m!5563651))

(assert (=> d!1485196 m!5563641))

(declare-fun m!5563653 () Bool)

(assert (=> bm!326447 m!5563653))

(assert (=> b!4670409 m!5563647))

(assert (=> b!4670409 m!5563647))

(assert (=> b!4670409 m!5563649))

(assert (=> b!4670101 d!1485196))

(declare-fun d!1485198 () Bool)

(declare-fun res!1965970 () Bool)

(declare-fun e!2914519 () Bool)

(assert (=> d!1485198 (=> res!1965970 e!2914519)))

(assert (=> d!1485198 (= res!1965970 ((_ is Nil!52018) (toList!5296 lt!1832321)))))

(assert (=> d!1485198 (= (forall!11107 (toList!5296 lt!1832321) lambda!202401) e!2914519)))

(declare-fun b!4670410 () Bool)

(declare-fun e!2914520 () Bool)

(assert (=> b!4670410 (= e!2914519 e!2914520)))

(declare-fun res!1965971 () Bool)

(assert (=> b!4670410 (=> (not res!1965971) (not e!2914520))))

(assert (=> b!4670410 (= res!1965971 (dynLambda!21643 lambda!202401 (h!58196 (toList!5296 lt!1832321))))))

(declare-fun b!4670411 () Bool)

(assert (=> b!4670411 (= e!2914520 (forall!11107 (t!359280 (toList!5296 lt!1832321)) lambda!202401))))

(assert (= (and d!1485198 (not res!1965970)) b!4670410))

(assert (= (and b!4670410 res!1965971) b!4670411))

(declare-fun b_lambda!176295 () Bool)

(assert (=> (not b_lambda!176295) (not b!4670410)))

(declare-fun m!5563655 () Bool)

(assert (=> b!4670410 m!5563655))

(declare-fun m!5563657 () Bool)

(assert (=> b!4670411 m!5563657))

(assert (=> b!4670101 d!1485198))

(declare-fun d!1485200 () Bool)

(declare-fun res!1965972 () Bool)

(declare-fun e!2914521 () Bool)

(assert (=> d!1485200 (=> res!1965972 e!2914521)))

(assert (=> d!1485200 (= res!1965972 ((_ is Nil!52018) (t!359280 oldBucket!40)))))

(assert (=> d!1485200 (= (forall!11107 (t!359280 oldBucket!40) lambda!202401) e!2914521)))

(declare-fun b!4670412 () Bool)

(declare-fun e!2914522 () Bool)

(assert (=> b!4670412 (= e!2914521 e!2914522)))

(declare-fun res!1965973 () Bool)

(assert (=> b!4670412 (=> (not res!1965973) (not e!2914522))))

(assert (=> b!4670412 (= res!1965973 (dynLambda!21643 lambda!202401 (h!58196 (t!359280 oldBucket!40))))))

(declare-fun b!4670413 () Bool)

(assert (=> b!4670413 (= e!2914522 (forall!11107 (t!359280 (t!359280 oldBucket!40)) lambda!202401))))

(assert (= (and d!1485200 (not res!1965972)) b!4670412))

(assert (= (and b!4670412 res!1965973) b!4670413))

(declare-fun b_lambda!176297 () Bool)

(assert (=> (not b_lambda!176297) (not b!4670412)))

(declare-fun m!5563659 () Bool)

(assert (=> b!4670412 m!5563659))

(declare-fun m!5563661 () Bool)

(assert (=> b!4670413 m!5563661))

(assert (=> b!4670101 d!1485200))

(declare-fun d!1485202 () Bool)

(assert (=> d!1485202 (dynLambda!21643 lambda!202401 (h!58196 oldBucket!40))))

(declare-fun lt!1832686 () Unit!121049)

(declare-fun choose!32321 (List!52142 Int tuple2!53182) Unit!121049)

(assert (=> d!1485202 (= lt!1832686 (choose!32321 (toList!5296 lt!1832461) lambda!202401 (h!58196 oldBucket!40)))))

(declare-fun e!2914531 () Bool)

(assert (=> d!1485202 e!2914531))

(declare-fun res!1965976 () Bool)

(assert (=> d!1485202 (=> (not res!1965976) (not e!2914531))))

(assert (=> d!1485202 (= res!1965976 (forall!11107 (toList!5296 lt!1832461) lambda!202401))))

(assert (=> d!1485202 (= (forallContained!3312 (toList!5296 lt!1832461) lambda!202401 (h!58196 oldBucket!40)) lt!1832686)))

(declare-fun b!4670428 () Bool)

(assert (=> b!4670428 (= e!2914531 (contains!15233 (toList!5296 lt!1832461) (h!58196 oldBucket!40)))))

(assert (= (and d!1485202 res!1965976) b!4670428))

(declare-fun b_lambda!176299 () Bool)

(assert (=> (not b_lambda!176299) (not d!1485202)))

(declare-fun m!5563663 () Bool)

(assert (=> d!1485202 m!5563663))

(declare-fun m!5563665 () Bool)

(assert (=> d!1485202 m!5563665))

(assert (=> d!1485202 m!5563185))

(declare-fun m!5563667 () Bool)

(assert (=> b!4670428 m!5563667))

(assert (=> b!4670101 d!1485202))

(declare-fun bs!1078720 () Bool)

(declare-fun b!4670430 () Bool)

(assert (= bs!1078720 (and b!4670430 b!4670101)))

(declare-fun lambda!202464 () Int)

(assert (=> bs!1078720 (= (= (+!2024 lt!1832321 (h!58196 oldBucket!40)) lt!1832465) (= lambda!202464 lambda!202401))))

(declare-fun bs!1078721 () Bool)

(assert (= bs!1078721 (and b!4670430 b!4670098)))

(assert (=> bs!1078721 (= (= (+!2024 lt!1832321 (h!58196 oldBucket!40)) lt!1832321) (= lambda!202464 lambda!202399))))

(declare-fun bs!1078722 () Bool)

(assert (= bs!1078722 (and b!4670430 d!1485050)))

(assert (=> bs!1078722 (not (= lambda!202464 lambda!202409))))

(assert (=> bs!1078720 (= (= (+!2024 lt!1832321 (h!58196 oldBucket!40)) lt!1832321) (= lambda!202464 lambda!202400))))

(declare-fun bs!1078723 () Bool)

(assert (= bs!1078723 (and b!4670430 d!1485172)))

(assert (=> bs!1078723 (= (= (+!2024 lt!1832321 (h!58196 oldBucket!40)) lt!1832465) (= lambda!202464 lambda!202459))))

(declare-fun bs!1078724 () Bool)

(assert (= bs!1078724 (and b!4670430 d!1485020)))

(assert (=> bs!1078724 (= (= (+!2024 lt!1832321 (h!58196 oldBucket!40)) lt!1832476) (= lambda!202464 lambda!202402))))

(declare-fun bs!1078725 () Bool)

(assert (= bs!1078725 (and b!4670430 d!1485074)))

(assert (=> bs!1078725 (= (= (+!2024 lt!1832321 (h!58196 oldBucket!40)) lt!1832321) (= lambda!202464 lambda!202418))))

(declare-fun bs!1078726 () Bool)

(assert (= bs!1078726 (and b!4670430 d!1485056)))

(assert (=> bs!1078726 (not (= lambda!202464 lambda!202410))))

(assert (=> b!4670430 true))

(declare-fun bs!1078727 () Bool)

(declare-fun b!4670433 () Bool)

(assert (= bs!1078727 (and b!4670433 b!4670101)))

(declare-fun lambda!202469 () Int)

(assert (=> bs!1078727 (= (= (+!2024 lt!1832321 (h!58196 oldBucket!40)) lt!1832465) (= lambda!202469 lambda!202401))))

(declare-fun bs!1078728 () Bool)

(assert (= bs!1078728 (and b!4670433 b!4670098)))

(assert (=> bs!1078728 (= (= (+!2024 lt!1832321 (h!58196 oldBucket!40)) lt!1832321) (= lambda!202469 lambda!202399))))

(declare-fun bs!1078729 () Bool)

(assert (= bs!1078729 (and b!4670433 d!1485050)))

(assert (=> bs!1078729 (not (= lambda!202469 lambda!202409))))

(assert (=> bs!1078727 (= (= (+!2024 lt!1832321 (h!58196 oldBucket!40)) lt!1832321) (= lambda!202469 lambda!202400))))

(declare-fun bs!1078730 () Bool)

(assert (= bs!1078730 (and b!4670433 d!1485172)))

(assert (=> bs!1078730 (= (= (+!2024 lt!1832321 (h!58196 oldBucket!40)) lt!1832465) (= lambda!202469 lambda!202459))))

(declare-fun bs!1078731 () Bool)

(assert (= bs!1078731 (and b!4670433 d!1485020)))

(assert (=> bs!1078731 (= (= (+!2024 lt!1832321 (h!58196 oldBucket!40)) lt!1832476) (= lambda!202469 lambda!202402))))

(declare-fun bs!1078732 () Bool)

(assert (= bs!1078732 (and b!4670433 b!4670430)))

(assert (=> bs!1078732 (= lambda!202469 lambda!202464)))

(declare-fun bs!1078733 () Bool)

(assert (= bs!1078733 (and b!4670433 d!1485074)))

(assert (=> bs!1078733 (= (= (+!2024 lt!1832321 (h!58196 oldBucket!40)) lt!1832321) (= lambda!202469 lambda!202418))))

(declare-fun bs!1078734 () Bool)

(assert (= bs!1078734 (and b!4670433 d!1485056)))

(assert (=> bs!1078734 (not (= lambda!202469 lambda!202410))))

(assert (=> b!4670433 true))

(declare-fun lt!1832694 () ListMap!4637)

(declare-fun lambda!202470 () Int)

(assert (=> bs!1078727 (= (= lt!1832694 lt!1832465) (= lambda!202470 lambda!202401))))

(assert (=> bs!1078728 (= (= lt!1832694 lt!1832321) (= lambda!202470 lambda!202399))))

(assert (=> b!4670433 (= (= lt!1832694 (+!2024 lt!1832321 (h!58196 oldBucket!40))) (= lambda!202470 lambda!202469))))

(assert (=> bs!1078729 (not (= lambda!202470 lambda!202409))))

(assert (=> bs!1078727 (= (= lt!1832694 lt!1832321) (= lambda!202470 lambda!202400))))

(assert (=> bs!1078730 (= (= lt!1832694 lt!1832465) (= lambda!202470 lambda!202459))))

(assert (=> bs!1078731 (= (= lt!1832694 lt!1832476) (= lambda!202470 lambda!202402))))

(assert (=> bs!1078732 (= (= lt!1832694 (+!2024 lt!1832321 (h!58196 oldBucket!40))) (= lambda!202470 lambda!202464))))

(assert (=> bs!1078733 (= (= lt!1832694 lt!1832321) (= lambda!202470 lambda!202418))))

(assert (=> bs!1078734 (not (= lambda!202470 lambda!202410))))

(assert (=> b!4670433 true))

(declare-fun bs!1078735 () Bool)

(declare-fun d!1485204 () Bool)

(assert (= bs!1078735 (and d!1485204 b!4670101)))

(declare-fun lambda!202471 () Int)

(declare-fun lt!1832705 () ListMap!4637)

(assert (=> bs!1078735 (= (= lt!1832705 lt!1832465) (= lambda!202471 lambda!202401))))

(declare-fun bs!1078736 () Bool)

(assert (= bs!1078736 (and d!1485204 b!4670098)))

(assert (=> bs!1078736 (= (= lt!1832705 lt!1832321) (= lambda!202471 lambda!202399))))

(declare-fun bs!1078737 () Bool)

(assert (= bs!1078737 (and d!1485204 b!4670433)))

(assert (=> bs!1078737 (= (= lt!1832705 (+!2024 lt!1832321 (h!58196 oldBucket!40))) (= lambda!202471 lambda!202469))))

(declare-fun bs!1078738 () Bool)

(assert (= bs!1078738 (and d!1485204 d!1485050)))

(assert (=> bs!1078738 (not (= lambda!202471 lambda!202409))))

(assert (=> bs!1078735 (= (= lt!1832705 lt!1832321) (= lambda!202471 lambda!202400))))

(declare-fun bs!1078739 () Bool)

(assert (= bs!1078739 (and d!1485204 d!1485172)))

(assert (=> bs!1078739 (= (= lt!1832705 lt!1832465) (= lambda!202471 lambda!202459))))

(declare-fun bs!1078740 () Bool)

(assert (= bs!1078740 (and d!1485204 d!1485020)))

(assert (=> bs!1078740 (= (= lt!1832705 lt!1832476) (= lambda!202471 lambda!202402))))

(assert (=> bs!1078737 (= (= lt!1832705 lt!1832694) (= lambda!202471 lambda!202470))))

(declare-fun bs!1078741 () Bool)

(assert (= bs!1078741 (and d!1485204 b!4670430)))

(assert (=> bs!1078741 (= (= lt!1832705 (+!2024 lt!1832321 (h!58196 oldBucket!40))) (= lambda!202471 lambda!202464))))

(declare-fun bs!1078742 () Bool)

(assert (= bs!1078742 (and d!1485204 d!1485074)))

(assert (=> bs!1078742 (= (= lt!1832705 lt!1832321) (= lambda!202471 lambda!202418))))

(declare-fun bs!1078743 () Bool)

(assert (= bs!1078743 (and d!1485204 d!1485056)))

(assert (=> bs!1078743 (not (= lambda!202471 lambda!202410))))

(assert (=> d!1485204 true))

(declare-fun bm!326448 () Bool)

(declare-fun call!326455 () Unit!121049)

(assert (=> bm!326448 (= call!326455 (lemmaContainsAllItsOwnKeys!632 (+!2024 lt!1832321 (h!58196 oldBucket!40))))))

(declare-fun b!4670429 () Bool)

(declare-fun e!2914534 () Bool)

(assert (=> b!4670429 (= e!2914534 (invariantList!1332 (toList!5296 lt!1832705)))))

(declare-fun e!2914533 () ListMap!4637)

(assert (=> b!4670430 (= e!2914533 (+!2024 lt!1832321 (h!58196 oldBucket!40)))))

(declare-fun lt!1832695 () Unit!121049)

(assert (=> b!4670430 (= lt!1832695 call!326455)))

(declare-fun call!326453 () Bool)

(assert (=> b!4670430 call!326453))

(declare-fun lt!1832687 () Unit!121049)

(assert (=> b!4670430 (= lt!1832687 lt!1832695)))

(declare-fun call!326454 () Bool)

(assert (=> b!4670430 call!326454))

(declare-fun lt!1832706 () Unit!121049)

(declare-fun Unit!121088 () Unit!121049)

(assert (=> b!4670430 (= lt!1832706 Unit!121088)))

(declare-fun bm!326449 () Bool)

(declare-fun c!799616 () Bool)

(assert (=> bm!326449 (= call!326454 (forall!11107 (toList!5296 (+!2024 lt!1832321 (h!58196 oldBucket!40))) (ite c!799616 lambda!202464 lambda!202470)))))

(declare-fun b!4670431 () Bool)

(declare-fun res!1965979 () Bool)

(assert (=> b!4670431 (=> (not res!1965979) (not e!2914534))))

(assert (=> b!4670431 (= res!1965979 (forall!11107 (toList!5296 (+!2024 lt!1832321 (h!58196 oldBucket!40))) lambda!202471))))

(declare-fun b!4670432 () Bool)

(declare-fun e!2914532 () Bool)

(assert (=> b!4670432 (= e!2914532 (forall!11107 (toList!5296 (+!2024 lt!1832321 (h!58196 oldBucket!40))) lambda!202470))))

(assert (=> d!1485204 e!2914534))

(declare-fun res!1965977 () Bool)

(assert (=> d!1485204 (=> (not res!1965977) (not e!2914534))))

(assert (=> d!1485204 (= res!1965977 (forall!11107 (t!359280 oldBucket!40) lambda!202471))))

(assert (=> d!1485204 (= lt!1832705 e!2914533)))

(assert (=> d!1485204 (= c!799616 ((_ is Nil!52018) (t!359280 oldBucket!40)))))

(assert (=> d!1485204 (noDuplicateKeys!1684 (t!359280 oldBucket!40))))

(assert (=> d!1485204 (= (addToMapMapFromBucket!1141 (t!359280 oldBucket!40) (+!2024 lt!1832321 (h!58196 oldBucket!40))) lt!1832705)))

(declare-fun lt!1832690 () ListMap!4637)

(declare-fun bm!326450 () Bool)

(assert (=> bm!326450 (= call!326453 (forall!11107 (ite c!799616 (toList!5296 (+!2024 lt!1832321 (h!58196 oldBucket!40))) (toList!5296 lt!1832690)) (ite c!799616 lambda!202464 lambda!202470)))))

(assert (=> b!4670433 (= e!2914533 lt!1832694)))

(assert (=> b!4670433 (= lt!1832690 (+!2024 (+!2024 lt!1832321 (h!58196 oldBucket!40)) (h!58196 (t!359280 oldBucket!40))))))

(assert (=> b!4670433 (= lt!1832694 (addToMapMapFromBucket!1141 (t!359280 (t!359280 oldBucket!40)) (+!2024 (+!2024 lt!1832321 (h!58196 oldBucket!40)) (h!58196 (t!359280 oldBucket!40)))))))

(declare-fun lt!1832689 () Unit!121049)

(assert (=> b!4670433 (= lt!1832689 call!326455)))

(assert (=> b!4670433 (forall!11107 (toList!5296 (+!2024 lt!1832321 (h!58196 oldBucket!40))) lambda!202469)))

(declare-fun lt!1832700 () Unit!121049)

(assert (=> b!4670433 (= lt!1832700 lt!1832689)))

(assert (=> b!4670433 (forall!11107 (toList!5296 lt!1832690) lambda!202470)))

(declare-fun lt!1832698 () Unit!121049)

(declare-fun Unit!121095 () Unit!121049)

(assert (=> b!4670433 (= lt!1832698 Unit!121095)))

(assert (=> b!4670433 (forall!11107 (t!359280 (t!359280 oldBucket!40)) lambda!202470)))

(declare-fun lt!1832702 () Unit!121049)

(declare-fun Unit!121097 () Unit!121049)

(assert (=> b!4670433 (= lt!1832702 Unit!121097)))

(declare-fun lt!1832699 () Unit!121049)

(declare-fun Unit!121098 () Unit!121049)

(assert (=> b!4670433 (= lt!1832699 Unit!121098)))

(declare-fun lt!1832707 () Unit!121049)

(assert (=> b!4670433 (= lt!1832707 (forallContained!3312 (toList!5296 lt!1832690) lambda!202470 (h!58196 (t!359280 oldBucket!40))))))

(assert (=> b!4670433 (contains!15229 lt!1832690 (_1!29885 (h!58196 (t!359280 oldBucket!40))))))

(declare-fun lt!1832697 () Unit!121049)

(declare-fun Unit!121100 () Unit!121049)

(assert (=> b!4670433 (= lt!1832697 Unit!121100)))

(assert (=> b!4670433 (contains!15229 lt!1832694 (_1!29885 (h!58196 (t!359280 oldBucket!40))))))

(declare-fun lt!1832692 () Unit!121049)

(declare-fun Unit!121101 () Unit!121049)

(assert (=> b!4670433 (= lt!1832692 Unit!121101)))

(assert (=> b!4670433 (forall!11107 (t!359280 oldBucket!40) lambda!202470)))

(declare-fun lt!1832691 () Unit!121049)

(declare-fun Unit!121102 () Unit!121049)

(assert (=> b!4670433 (= lt!1832691 Unit!121102)))

(assert (=> b!4670433 call!326453))

(declare-fun lt!1832704 () Unit!121049)

(declare-fun Unit!121103 () Unit!121049)

(assert (=> b!4670433 (= lt!1832704 Unit!121103)))

(declare-fun lt!1832696 () Unit!121049)

(declare-fun Unit!121104 () Unit!121049)

(assert (=> b!4670433 (= lt!1832696 Unit!121104)))

(declare-fun lt!1832701 () Unit!121049)

(assert (=> b!4670433 (= lt!1832701 (addForallContainsKeyThenBeforeAdding!631 (+!2024 lt!1832321 (h!58196 oldBucket!40)) lt!1832694 (_1!29885 (h!58196 (t!359280 oldBucket!40))) (_2!29885 (h!58196 (t!359280 oldBucket!40)))))))

(assert (=> b!4670433 (forall!11107 (toList!5296 (+!2024 lt!1832321 (h!58196 oldBucket!40))) lambda!202470)))

(declare-fun lt!1832688 () Unit!121049)

(assert (=> b!4670433 (= lt!1832688 lt!1832701)))

(assert (=> b!4670433 call!326454))

(declare-fun lt!1832703 () Unit!121049)

(declare-fun Unit!121105 () Unit!121049)

(assert (=> b!4670433 (= lt!1832703 Unit!121105)))

(declare-fun res!1965978 () Bool)

(assert (=> b!4670433 (= res!1965978 (forall!11107 (t!359280 oldBucket!40) lambda!202470))))

(assert (=> b!4670433 (=> (not res!1965978) (not e!2914532))))

(assert (=> b!4670433 e!2914532))

(declare-fun lt!1832693 () Unit!121049)

(declare-fun Unit!121106 () Unit!121049)

(assert (=> b!4670433 (= lt!1832693 Unit!121106)))

(assert (= (and d!1485204 c!799616) b!4670430))

(assert (= (and d!1485204 (not c!799616)) b!4670433))

(assert (= (and b!4670433 res!1965978) b!4670432))

(assert (= (or b!4670430 b!4670433) bm!326448))

(assert (= (or b!4670430 b!4670433) bm!326450))

(assert (= (or b!4670430 b!4670433) bm!326449))

(assert (= (and d!1485204 res!1965977) b!4670431))

(assert (= (and b!4670431 res!1965979) b!4670429))

(declare-fun m!5563669 () Bool)

(assert (=> b!4670432 m!5563669))

(declare-fun m!5563671 () Bool)

(assert (=> bm!326449 m!5563671))

(declare-fun m!5563673 () Bool)

(assert (=> bm!326450 m!5563673))

(declare-fun m!5563675 () Bool)

(assert (=> b!4670431 m!5563675))

(assert (=> bm!326448 m!5563189))

(declare-fun m!5563677 () Bool)

(assert (=> bm!326448 m!5563677))

(declare-fun m!5563679 () Bool)

(assert (=> b!4670429 m!5563679))

(declare-fun m!5563681 () Bool)

(assert (=> d!1485204 m!5563681))

(assert (=> d!1485204 m!5563231))

(declare-fun m!5563683 () Bool)

(assert (=> b!4670433 m!5563683))

(declare-fun m!5563685 () Bool)

(assert (=> b!4670433 m!5563685))

(declare-fun m!5563687 () Bool)

(assert (=> b!4670433 m!5563687))

(declare-fun m!5563689 () Bool)

(assert (=> b!4670433 m!5563689))

(assert (=> b!4670433 m!5563189))

(declare-fun m!5563691 () Bool)

(assert (=> b!4670433 m!5563691))

(assert (=> b!4670433 m!5563687))

(declare-fun m!5563693 () Bool)

(assert (=> b!4670433 m!5563693))

(declare-fun m!5563695 () Bool)

(assert (=> b!4670433 m!5563695))

(assert (=> b!4670433 m!5563669))

(declare-fun m!5563697 () Bool)

(assert (=> b!4670433 m!5563697))

(declare-fun m!5563699 () Bool)

(assert (=> b!4670433 m!5563699))

(declare-fun m!5563701 () Bool)

(assert (=> b!4670433 m!5563701))

(assert (=> b!4670433 m!5563189))

(assert (=> b!4670433 m!5563699))

(assert (=> b!4670101 d!1485204))

(declare-fun d!1485206 () Bool)

(declare-fun res!1965989 () Bool)

(declare-fun e!2914541 () Bool)

(assert (=> d!1485206 (=> res!1965989 e!2914541)))

(assert (=> d!1485206 (= res!1965989 ((_ is Nil!52018) oldBucket!40))))

(assert (=> d!1485206 (= (forall!11107 oldBucket!40 lambda!202401) e!2914541)))

(declare-fun b!4670451 () Bool)

(declare-fun e!2914542 () Bool)

(assert (=> b!4670451 (= e!2914541 e!2914542)))

(declare-fun res!1965990 () Bool)

(assert (=> b!4670451 (=> (not res!1965990) (not e!2914542))))

(assert (=> b!4670451 (= res!1965990 (dynLambda!21643 lambda!202401 (h!58196 oldBucket!40)))))

(declare-fun b!4670452 () Bool)

(assert (=> b!4670452 (= e!2914542 (forall!11107 (t!359280 oldBucket!40) lambda!202401))))

(assert (= (and d!1485206 (not res!1965989)) b!4670451))

(assert (= (and b!4670451 res!1965990) b!4670452))

(declare-fun b_lambda!176301 () Bool)

(assert (=> (not b_lambda!176301) (not b!4670451)))

(assert (=> b!4670451 m!5563663))

(assert (=> b!4670452 m!5563175))

(assert (=> b!4670101 d!1485206))

(declare-fun d!1485208 () Bool)

(declare-fun e!2914547 () Bool)

(assert (=> d!1485208 e!2914547))

(declare-fun res!1965992 () Bool)

(assert (=> d!1485208 (=> res!1965992 e!2914547)))

(declare-fun e!2914548 () Bool)

(assert (=> d!1485208 (= res!1965992 e!2914548)))

(declare-fun res!1965991 () Bool)

(assert (=> d!1485208 (=> (not res!1965991) (not e!2914548))))

(declare-fun lt!1832720 () Bool)

(assert (=> d!1485208 (= res!1965991 (not lt!1832720))))

(declare-fun lt!1832715 () Bool)

(assert (=> d!1485208 (= lt!1832720 lt!1832715)))

(declare-fun lt!1832716 () Unit!121049)

(declare-fun e!2914544 () Unit!121049)

(assert (=> d!1485208 (= lt!1832716 e!2914544)))

(declare-fun c!799620 () Bool)

(assert (=> d!1485208 (= c!799620 lt!1832715)))

(assert (=> d!1485208 (= lt!1832715 (containsKey!2831 (toList!5296 lt!1832465) (_1!29885 (h!58196 oldBucket!40))))))

(assert (=> d!1485208 (= (contains!15229 lt!1832465 (_1!29885 (h!58196 oldBucket!40))) lt!1832720)))

(declare-fun b!4670453 () Bool)

(assert (=> b!4670453 (= e!2914548 (not (contains!15231 (keys!18466 lt!1832465) (_1!29885 (h!58196 oldBucket!40)))))))

(declare-fun b!4670454 () Bool)

(declare-fun lt!1832717 () Unit!121049)

(assert (=> b!4670454 (= e!2914544 lt!1832717)))

(declare-fun lt!1832718 () Unit!121049)

(assert (=> b!4670454 (= lt!1832718 (lemmaContainsKeyImpliesGetValueByKeyDefined!1578 (toList!5296 lt!1832465) (_1!29885 (h!58196 oldBucket!40))))))

(assert (=> b!4670454 (isDefined!9193 (getValueByKey!1676 (toList!5296 lt!1832465) (_1!29885 (h!58196 oldBucket!40))))))

(declare-fun lt!1832721 () Unit!121049)

(assert (=> b!4670454 (= lt!1832721 lt!1832718)))

(assert (=> b!4670454 (= lt!1832717 (lemmaInListThenGetKeysListContains!778 (toList!5296 lt!1832465) (_1!29885 (h!58196 oldBucket!40))))))

(declare-fun call!326456 () Bool)

(assert (=> b!4670454 call!326456))

(declare-fun b!4670455 () Bool)

(declare-fun e!2914543 () List!52145)

(assert (=> b!4670455 (= e!2914543 (keys!18466 lt!1832465))))

(declare-fun b!4670456 () Bool)

(declare-fun e!2914545 () Bool)

(assert (=> b!4670456 (= e!2914545 (contains!15231 (keys!18466 lt!1832465) (_1!29885 (h!58196 oldBucket!40))))))

(declare-fun b!4670457 () Bool)

(declare-fun e!2914546 () Unit!121049)

(assert (=> b!4670457 (= e!2914544 e!2914546)))

(declare-fun c!799622 () Bool)

(assert (=> b!4670457 (= c!799622 call!326456)))

(declare-fun b!4670458 () Bool)

(assert (=> b!4670458 false))

(declare-fun lt!1832722 () Unit!121049)

(declare-fun lt!1832719 () Unit!121049)

(assert (=> b!4670458 (= lt!1832722 lt!1832719)))

(assert (=> b!4670458 (containsKey!2831 (toList!5296 lt!1832465) (_1!29885 (h!58196 oldBucket!40)))))

(assert (=> b!4670458 (= lt!1832719 (lemmaInGetKeysListThenContainsKey!782 (toList!5296 lt!1832465) (_1!29885 (h!58196 oldBucket!40))))))

(declare-fun Unit!121107 () Unit!121049)

(assert (=> b!4670458 (= e!2914546 Unit!121107)))

(declare-fun b!4670459 () Bool)

(assert (=> b!4670459 (= e!2914543 (getKeysList!783 (toList!5296 lt!1832465)))))

(declare-fun b!4670460 () Bool)

(declare-fun Unit!121108 () Unit!121049)

(assert (=> b!4670460 (= e!2914546 Unit!121108)))

(declare-fun b!4670461 () Bool)

(assert (=> b!4670461 (= e!2914547 e!2914545)))

(declare-fun res!1965993 () Bool)

(assert (=> b!4670461 (=> (not res!1965993) (not e!2914545))))

(assert (=> b!4670461 (= res!1965993 (isDefined!9193 (getValueByKey!1676 (toList!5296 lt!1832465) (_1!29885 (h!58196 oldBucket!40)))))))

(declare-fun bm!326451 () Bool)

(assert (=> bm!326451 (= call!326456 (contains!15231 e!2914543 (_1!29885 (h!58196 oldBucket!40))))))

(declare-fun c!799621 () Bool)

(assert (=> bm!326451 (= c!799621 c!799620)))

(assert (= (and d!1485208 c!799620) b!4670454))

(assert (= (and d!1485208 (not c!799620)) b!4670457))

(assert (= (and b!4670457 c!799622) b!4670458))

(assert (= (and b!4670457 (not c!799622)) b!4670460))

(assert (= (or b!4670454 b!4670457) bm!326451))

(assert (= (and bm!326451 c!799621) b!4670459))

(assert (= (and bm!326451 (not c!799621)) b!4670455))

(assert (= (and d!1485208 res!1965991) b!4670453))

(assert (= (and d!1485208 (not res!1965992)) b!4670461))

(assert (= (and b!4670461 res!1965993) b!4670456))

(declare-fun m!5563729 () Bool)

(assert (=> b!4670459 m!5563729))

(declare-fun m!5563731 () Bool)

(assert (=> b!4670453 m!5563731))

(assert (=> b!4670453 m!5563731))

(declare-fun m!5563733 () Bool)

(assert (=> b!4670453 m!5563733))

(assert (=> b!4670455 m!5563731))

(declare-fun m!5563735 () Bool)

(assert (=> b!4670458 m!5563735))

(declare-fun m!5563737 () Bool)

(assert (=> b!4670458 m!5563737))

(assert (=> b!4670456 m!5563731))

(assert (=> b!4670456 m!5563731))

(assert (=> b!4670456 m!5563733))

(declare-fun m!5563739 () Bool)

(assert (=> b!4670454 m!5563739))

(declare-fun m!5563741 () Bool)

(assert (=> b!4670454 m!5563741))

(assert (=> b!4670454 m!5563741))

(declare-fun m!5563743 () Bool)

(assert (=> b!4670454 m!5563743))

(declare-fun m!5563745 () Bool)

(assert (=> b!4670454 m!5563745))

(assert (=> d!1485208 m!5563735))

(declare-fun m!5563747 () Bool)

(assert (=> bm!326451 m!5563747))

(assert (=> b!4670461 m!5563741))

(assert (=> b!4670461 m!5563741))

(assert (=> b!4670461 m!5563743))

(assert (=> b!4670101 d!1485208))

(declare-fun d!1485214 () Bool)

(declare-fun res!1965994 () Bool)

(declare-fun e!2914551 () Bool)

(assert (=> d!1485214 (=> res!1965994 e!2914551)))

(assert (=> d!1485214 (= res!1965994 ((_ is Nil!52018) oldBucket!40))))

(assert (=> d!1485214 (= (forall!11107 oldBucket!40 lambda!202410) e!2914551)))

(declare-fun b!4670466 () Bool)

(declare-fun e!2914552 () Bool)

(assert (=> b!4670466 (= e!2914551 e!2914552)))

(declare-fun res!1965995 () Bool)

(assert (=> b!4670466 (=> (not res!1965995) (not e!2914552))))

(assert (=> b!4670466 (= res!1965995 (dynLambda!21643 lambda!202410 (h!58196 oldBucket!40)))))

(declare-fun b!4670467 () Bool)

(assert (=> b!4670467 (= e!2914552 (forall!11107 (t!359280 oldBucket!40) lambda!202410))))

(assert (= (and d!1485214 (not res!1965994)) b!4670466))

(assert (= (and b!4670466 res!1965995) b!4670467))

(declare-fun b_lambda!176303 () Bool)

(assert (=> (not b_lambda!176303) (not b!4670466)))

(declare-fun m!5563753 () Bool)

(assert (=> b!4670466 m!5563753))

(declare-fun m!5563755 () Bool)

(assert (=> b!4670467 m!5563755))

(assert (=> d!1485056 d!1485214))

(declare-fun d!1485216 () Bool)

(declare-fun res!1965996 () Bool)

(declare-fun e!2914554 () Bool)

(assert (=> d!1485216 (=> res!1965996 e!2914554)))

(assert (=> d!1485216 (= res!1965996 ((_ is Nil!52018) (ite c!799555 (toList!5296 lt!1832321) (toList!5296 lt!1832461))))))

(assert (=> d!1485216 (= (forall!11107 (ite c!799555 (toList!5296 lt!1832321) (toList!5296 lt!1832461)) (ite c!799555 lambda!202399 lambda!202401)) e!2914554)))

(declare-fun b!4670469 () Bool)

(declare-fun e!2914555 () Bool)

(assert (=> b!4670469 (= e!2914554 e!2914555)))

(declare-fun res!1965997 () Bool)

(assert (=> b!4670469 (=> (not res!1965997) (not e!2914555))))

(assert (=> b!4670469 (= res!1965997 (dynLambda!21643 (ite c!799555 lambda!202399 lambda!202401) (h!58196 (ite c!799555 (toList!5296 lt!1832321) (toList!5296 lt!1832461)))))))

(declare-fun b!4670470 () Bool)

(assert (=> b!4670470 (= e!2914555 (forall!11107 (t!359280 (ite c!799555 (toList!5296 lt!1832321) (toList!5296 lt!1832461))) (ite c!799555 lambda!202399 lambda!202401)))))

(assert (= (and d!1485216 (not res!1965996)) b!4670469))

(assert (= (and b!4670469 res!1965997) b!4670470))

(declare-fun b_lambda!176305 () Bool)

(assert (=> (not b_lambda!176305) (not b!4670469)))

(declare-fun m!5563757 () Bool)

(assert (=> b!4670469 m!5563757))

(declare-fun m!5563759 () Bool)

(assert (=> b!4670470 m!5563759))

(assert (=> bm!326435 d!1485216))

(assert (=> b!4670100 d!1485198))

(declare-fun d!1485220 () Bool)

(assert (=> d!1485220 (= (invariantList!1332 (toList!5296 lt!1832481)) (noDuplicatedKeys!363 (toList!5296 lt!1832481)))))

(declare-fun bs!1078753 () Bool)

(assert (= bs!1078753 d!1485220))

(declare-fun m!5563761 () Bool)

(assert (=> bs!1078753 m!5563761))

(assert (=> d!1485040 d!1485220))

(declare-fun d!1485222 () Bool)

(declare-fun res!1965998 () Bool)

(declare-fun e!2914557 () Bool)

(assert (=> d!1485222 (=> res!1965998 e!2914557)))

(assert (=> d!1485222 (= res!1965998 ((_ is Nil!52019) Nil!52019))))

(assert (=> d!1485222 (= (forall!11108 Nil!52019 lambda!202405) e!2914557)))

(declare-fun b!4670472 () Bool)

(declare-fun e!2914558 () Bool)

(assert (=> b!4670472 (= e!2914557 e!2914558)))

(declare-fun res!1965999 () Bool)

(assert (=> b!4670472 (=> (not res!1965999) (not e!2914558))))

(assert (=> b!4670472 (= res!1965999 (dynLambda!21642 lambda!202405 (h!58197 Nil!52019)))))

(declare-fun b!4670473 () Bool)

(assert (=> b!4670473 (= e!2914558 (forall!11108 (t!359281 Nil!52019) lambda!202405))))

(assert (= (and d!1485222 (not res!1965998)) b!4670472))

(assert (= (and b!4670472 res!1965999) b!4670473))

(declare-fun b_lambda!176331 () Bool)

(assert (=> (not b_lambda!176331) (not b!4670472)))

(declare-fun m!5563771 () Bool)

(assert (=> b!4670472 m!5563771))

(declare-fun m!5563773 () Bool)

(assert (=> b!4670473 m!5563773))

(assert (=> d!1485040 d!1485222))

(declare-fun d!1485236 () Bool)

(declare-fun res!1966000 () Bool)

(declare-fun e!2914559 () Bool)

(assert (=> d!1485236 (=> res!1966000 e!2914559)))

(assert (=> d!1485236 (= res!1966000 ((_ is Nil!52018) (toList!5296 lt!1832321)))))

(assert (=> d!1485236 (= (forall!11107 (toList!5296 lt!1832321) (ite c!799555 lambda!202399 lambda!202401)) e!2914559)))

(declare-fun b!4670474 () Bool)

(declare-fun e!2914560 () Bool)

(assert (=> b!4670474 (= e!2914559 e!2914560)))

(declare-fun res!1966001 () Bool)

(assert (=> b!4670474 (=> (not res!1966001) (not e!2914560))))

(assert (=> b!4670474 (= res!1966001 (dynLambda!21643 (ite c!799555 lambda!202399 lambda!202401) (h!58196 (toList!5296 lt!1832321))))))

(declare-fun b!4670475 () Bool)

(assert (=> b!4670475 (= e!2914560 (forall!11107 (t!359280 (toList!5296 lt!1832321)) (ite c!799555 lambda!202399 lambda!202401)))))

(assert (= (and d!1485236 (not res!1966000)) b!4670474))

(assert (= (and b!4670474 res!1966001) b!4670475))

(declare-fun b_lambda!176333 () Bool)

(assert (=> (not b_lambda!176333) (not b!4670474)))

(declare-fun m!5563785 () Bool)

(assert (=> b!4670474 m!5563785))

(declare-fun m!5563787 () Bool)

(assert (=> b!4670475 m!5563787))

(assert (=> bm!326434 d!1485236))

(declare-fun bs!1078764 () Bool)

(declare-fun b!4670477 () Bool)

(assert (= bs!1078764 (and b!4670477 b!4670101)))

(declare-fun lambda!202476 () Int)

(assert (=> bs!1078764 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832465) (= lambda!202476 lambda!202401))))

(declare-fun bs!1078765 () Bool)

(assert (= bs!1078765 (and b!4670477 d!1485204)))

(assert (=> bs!1078765 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832705) (= lambda!202476 lambda!202471))))

(declare-fun bs!1078766 () Bool)

(assert (= bs!1078766 (and b!4670477 b!4670098)))

(assert (=> bs!1078766 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832321) (= lambda!202476 lambda!202399))))

(declare-fun bs!1078767 () Bool)

(assert (= bs!1078767 (and b!4670477 b!4670433)))

(assert (=> bs!1078767 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) (+!2024 lt!1832321 (h!58196 oldBucket!40))) (= lambda!202476 lambda!202469))))

(declare-fun bs!1078768 () Bool)

(assert (= bs!1078768 (and b!4670477 d!1485050)))

(assert (=> bs!1078768 (not (= lambda!202476 lambda!202409))))

(assert (=> bs!1078764 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832321) (= lambda!202476 lambda!202400))))

(declare-fun bs!1078769 () Bool)

(assert (= bs!1078769 (and b!4670477 d!1485172)))

(assert (=> bs!1078769 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832465) (= lambda!202476 lambda!202459))))

(declare-fun bs!1078770 () Bool)

(assert (= bs!1078770 (and b!4670477 d!1485020)))

(assert (=> bs!1078770 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832476) (= lambda!202476 lambda!202402))))

(assert (=> bs!1078767 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832694) (= lambda!202476 lambda!202470))))

(declare-fun bs!1078771 () Bool)

(assert (= bs!1078771 (and b!4670477 b!4670430)))

(assert (=> bs!1078771 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) (+!2024 lt!1832321 (h!58196 oldBucket!40))) (= lambda!202476 lambda!202464))))

(declare-fun bs!1078772 () Bool)

(assert (= bs!1078772 (and b!4670477 d!1485074)))

(assert (=> bs!1078772 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832321) (= lambda!202476 lambda!202418))))

(declare-fun bs!1078773 () Bool)

(assert (= bs!1078773 (and b!4670477 d!1485056)))

(assert (=> bs!1078773 (not (= lambda!202476 lambda!202410))))

(assert (=> b!4670477 true))

(declare-fun bs!1078774 () Bool)

(declare-fun b!4670480 () Bool)

(assert (= bs!1078774 (and b!4670480 b!4670101)))

(declare-fun lambda!202477 () Int)

(assert (=> bs!1078774 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832465) (= lambda!202477 lambda!202401))))

(declare-fun bs!1078775 () Bool)

(assert (= bs!1078775 (and b!4670480 d!1485204)))

(assert (=> bs!1078775 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832705) (= lambda!202477 lambda!202471))))

(declare-fun bs!1078776 () Bool)

(assert (= bs!1078776 (and b!4670480 b!4670098)))

(assert (=> bs!1078776 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832321) (= lambda!202477 lambda!202399))))

(declare-fun bs!1078777 () Bool)

(assert (= bs!1078777 (and b!4670480 b!4670433)))

(assert (=> bs!1078777 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) (+!2024 lt!1832321 (h!58196 oldBucket!40))) (= lambda!202477 lambda!202469))))

(declare-fun bs!1078778 () Bool)

(assert (= bs!1078778 (and b!4670480 b!4670477)))

(assert (=> bs!1078778 (= lambda!202477 lambda!202476)))

(declare-fun bs!1078779 () Bool)

(assert (= bs!1078779 (and b!4670480 d!1485050)))

(assert (=> bs!1078779 (not (= lambda!202477 lambda!202409))))

(assert (=> bs!1078774 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832321) (= lambda!202477 lambda!202400))))

(declare-fun bs!1078780 () Bool)

(assert (= bs!1078780 (and b!4670480 d!1485172)))

(assert (=> bs!1078780 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832465) (= lambda!202477 lambda!202459))))

(declare-fun bs!1078781 () Bool)

(assert (= bs!1078781 (and b!4670480 d!1485020)))

(assert (=> bs!1078781 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832476) (= lambda!202477 lambda!202402))))

(assert (=> bs!1078777 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832694) (= lambda!202477 lambda!202470))))

(declare-fun bs!1078782 () Bool)

(assert (= bs!1078782 (and b!4670480 b!4670430)))

(assert (=> bs!1078782 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) (+!2024 lt!1832321 (h!58196 oldBucket!40))) (= lambda!202477 lambda!202464))))

(declare-fun bs!1078783 () Bool)

(assert (= bs!1078783 (and b!4670480 d!1485074)))

(assert (=> bs!1078783 (= (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832321) (= lambda!202477 lambda!202418))))

(declare-fun bs!1078784 () Bool)

(assert (= bs!1078784 (and b!4670480 d!1485056)))

(assert (=> bs!1078784 (not (= lambda!202477 lambda!202410))))

(assert (=> b!4670480 true))

(declare-fun lambda!202478 () Int)

(declare-fun lt!1832731 () ListMap!4637)

(assert (=> bs!1078774 (= (= lt!1832731 lt!1832465) (= lambda!202478 lambda!202401))))

(assert (=> bs!1078775 (= (= lt!1832731 lt!1832705) (= lambda!202478 lambda!202471))))

(assert (=> bs!1078776 (= (= lt!1832731 lt!1832321) (= lambda!202478 lambda!202399))))

(assert (=> bs!1078777 (= (= lt!1832731 (+!2024 lt!1832321 (h!58196 oldBucket!40))) (= lambda!202478 lambda!202469))))

(assert (=> bs!1078778 (= (= lt!1832731 (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))) (= lambda!202478 lambda!202476))))

(assert (=> bs!1078779 (not (= lambda!202478 lambda!202409))))

(assert (=> bs!1078774 (= (= lt!1832731 lt!1832321) (= lambda!202478 lambda!202400))))

(assert (=> bs!1078780 (= (= lt!1832731 lt!1832465) (= lambda!202478 lambda!202459))))

(assert (=> bs!1078781 (= (= lt!1832731 lt!1832476) (= lambda!202478 lambda!202402))))

(assert (=> bs!1078777 (= (= lt!1832731 lt!1832694) (= lambda!202478 lambda!202470))))

(assert (=> b!4670480 (= (= lt!1832731 (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))) (= lambda!202478 lambda!202477))))

(assert (=> bs!1078782 (= (= lt!1832731 (+!2024 lt!1832321 (h!58196 oldBucket!40))) (= lambda!202478 lambda!202464))))

(assert (=> bs!1078783 (= (= lt!1832731 lt!1832321) (= lambda!202478 lambda!202418))))

(assert (=> bs!1078784 (not (= lambda!202478 lambda!202410))))

(assert (=> b!4670480 true))

(declare-fun bs!1078785 () Bool)

(declare-fun d!1485246 () Bool)

(assert (= bs!1078785 (and d!1485246 b!4670101)))

(declare-fun lt!1832742 () ListMap!4637)

(declare-fun lambda!202479 () Int)

(assert (=> bs!1078785 (= (= lt!1832742 lt!1832465) (= lambda!202479 lambda!202401))))

(declare-fun bs!1078786 () Bool)

(assert (= bs!1078786 (and d!1485246 b!4670098)))

(assert (=> bs!1078786 (= (= lt!1832742 lt!1832321) (= lambda!202479 lambda!202399))))

(declare-fun bs!1078787 () Bool)

(assert (= bs!1078787 (and d!1485246 b!4670433)))

(assert (=> bs!1078787 (= (= lt!1832742 (+!2024 lt!1832321 (h!58196 oldBucket!40))) (= lambda!202479 lambda!202469))))

(declare-fun bs!1078788 () Bool)

(assert (= bs!1078788 (and d!1485246 b!4670477)))

(assert (=> bs!1078788 (= (= lt!1832742 (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))) (= lambda!202479 lambda!202476))))

(declare-fun bs!1078789 () Bool)

(assert (= bs!1078789 (and d!1485246 d!1485050)))

(assert (=> bs!1078789 (not (= lambda!202479 lambda!202409))))

(assert (=> bs!1078785 (= (= lt!1832742 lt!1832321) (= lambda!202479 lambda!202400))))

(declare-fun bs!1078790 () Bool)

(assert (= bs!1078790 (and d!1485246 d!1485172)))

(assert (=> bs!1078790 (= (= lt!1832742 lt!1832465) (= lambda!202479 lambda!202459))))

(declare-fun bs!1078791 () Bool)

(assert (= bs!1078791 (and d!1485246 d!1485020)))

(assert (=> bs!1078791 (= (= lt!1832742 lt!1832476) (= lambda!202479 lambda!202402))))

(assert (=> bs!1078787 (= (= lt!1832742 lt!1832694) (= lambda!202479 lambda!202470))))

(declare-fun bs!1078792 () Bool)

(assert (= bs!1078792 (and d!1485246 b!4670480)))

(assert (=> bs!1078792 (= (= lt!1832742 (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))) (= lambda!202479 lambda!202477))))

(declare-fun bs!1078793 () Bool)

(assert (= bs!1078793 (and d!1485246 b!4670430)))

(assert (=> bs!1078793 (= (= lt!1832742 (+!2024 lt!1832321 (h!58196 oldBucket!40))) (= lambda!202479 lambda!202464))))

(declare-fun bs!1078794 () Bool)

(assert (= bs!1078794 (and d!1485246 d!1485204)))

(assert (=> bs!1078794 (= (= lt!1832742 lt!1832705) (= lambda!202479 lambda!202471))))

(assert (=> bs!1078792 (= (= lt!1832742 lt!1832731) (= lambda!202479 lambda!202478))))

(declare-fun bs!1078795 () Bool)

(assert (= bs!1078795 (and d!1485246 d!1485074)))

(assert (=> bs!1078795 (= (= lt!1832742 lt!1832321) (= lambda!202479 lambda!202418))))

(declare-fun bs!1078796 () Bool)

(assert (= bs!1078796 (and d!1485246 d!1485056)))

(assert (=> bs!1078796 (not (= lambda!202479 lambda!202410))))

(assert (=> d!1485246 true))

(declare-fun bm!326452 () Bool)

(declare-fun call!326459 () Unit!121049)

(assert (=> bm!326452 (= call!326459 (lemmaContainsAllItsOwnKeys!632 (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))))))

(declare-fun b!4670476 () Bool)

(declare-fun e!2914563 () Bool)

(assert (=> b!4670476 (= e!2914563 (invariantList!1332 (toList!5296 lt!1832742)))))

(declare-fun e!2914562 () ListMap!4637)

(assert (=> b!4670477 (= e!2914562 (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))))))

(declare-fun lt!1832732 () Unit!121049)

(assert (=> b!4670477 (= lt!1832732 call!326459)))

(declare-fun call!326457 () Bool)

(assert (=> b!4670477 call!326457))

(declare-fun lt!1832724 () Unit!121049)

(assert (=> b!4670477 (= lt!1832724 lt!1832732)))

(declare-fun call!326458 () Bool)

(assert (=> b!4670477 call!326458))

(declare-fun lt!1832743 () Unit!121049)

(declare-fun Unit!121109 () Unit!121049)

(assert (=> b!4670477 (= lt!1832743 Unit!121109)))

(declare-fun bm!326453 () Bool)

(declare-fun c!799625 () Bool)

(assert (=> bm!326453 (= call!326458 (forall!11107 (toList!5296 (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))) (ite c!799625 lambda!202476 lambda!202478)))))

(declare-fun b!4670478 () Bool)

(declare-fun res!1966004 () Bool)

(assert (=> b!4670478 (=> (not res!1966004) (not e!2914563))))

(assert (=> b!4670478 (= res!1966004 (forall!11107 (toList!5296 (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))) lambda!202479))))

(declare-fun b!4670479 () Bool)

(declare-fun e!2914561 () Bool)

(assert (=> b!4670479 (= e!2914561 (forall!11107 (toList!5296 (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))) lambda!202478))))

(assert (=> d!1485246 e!2914563))

(declare-fun res!1966002 () Bool)

(assert (=> d!1485246 (=> (not res!1966002) (not e!2914563))))

(assert (=> d!1485246 (= res!1966002 (forall!11107 (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lambda!202479))))

(assert (=> d!1485246 (= lt!1832742 e!2914562)))

(assert (=> d!1485246 (= c!799625 ((_ is Nil!52018) (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))))))

(assert (=> d!1485246 (noDuplicateKeys!1684 (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))))))

(assert (=> d!1485246 (= (addToMapMapFromBucket!1141 (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))) lt!1832742)))

(declare-fun lt!1832727 () ListMap!4637)

(declare-fun bm!326454 () Bool)

(assert (=> bm!326454 (= call!326457 (forall!11107 (ite c!799625 (toList!5296 (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))) (toList!5296 lt!1832727)) (ite c!799625 lambda!202476 lambda!202478)))))

(assert (=> b!4670480 (= e!2914562 lt!1832731)))

(assert (=> b!4670480 (= lt!1832727 (+!2024 (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) (h!58196 (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))))))))

(assert (=> b!4670480 (= lt!1832731 (addToMapMapFromBucket!1141 (t!359280 (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))) (+!2024 (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) (h!58196 (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))))))))

(declare-fun lt!1832726 () Unit!121049)

(assert (=> b!4670480 (= lt!1832726 call!326459)))

(assert (=> b!4670480 (forall!11107 (toList!5296 (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))) lambda!202477)))

(declare-fun lt!1832737 () Unit!121049)

(assert (=> b!4670480 (= lt!1832737 lt!1832726)))

(assert (=> b!4670480 (forall!11107 (toList!5296 lt!1832727) lambda!202478)))

(declare-fun lt!1832735 () Unit!121049)

(declare-fun Unit!121110 () Unit!121049)

(assert (=> b!4670480 (= lt!1832735 Unit!121110)))

(assert (=> b!4670480 (forall!11107 (t!359280 (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))) lambda!202478)))

(declare-fun lt!1832739 () Unit!121049)

(declare-fun Unit!121111 () Unit!121049)

(assert (=> b!4670480 (= lt!1832739 Unit!121111)))

(declare-fun lt!1832736 () Unit!121049)

(declare-fun Unit!121112 () Unit!121049)

(assert (=> b!4670480 (= lt!1832736 Unit!121112)))

(declare-fun lt!1832744 () Unit!121049)

(assert (=> b!4670480 (= lt!1832744 (forallContained!3312 (toList!5296 lt!1832727) lambda!202478 (h!58196 (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))))))))

(assert (=> b!4670480 (contains!15229 lt!1832727 (_1!29885 (h!58196 (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))))))))

(declare-fun lt!1832734 () Unit!121049)

(declare-fun Unit!121113 () Unit!121049)

(assert (=> b!4670480 (= lt!1832734 Unit!121113)))

(assert (=> b!4670480 (contains!15229 lt!1832731 (_1!29885 (h!58196 (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))))))))

(declare-fun lt!1832729 () Unit!121049)

(declare-fun Unit!121114 () Unit!121049)

(assert (=> b!4670480 (= lt!1832729 Unit!121114)))

(assert (=> b!4670480 (forall!11107 (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lambda!202478)))

(declare-fun lt!1832728 () Unit!121049)

(declare-fun Unit!121115 () Unit!121049)

(assert (=> b!4670480 (= lt!1832728 Unit!121115)))

(assert (=> b!4670480 call!326457))

(declare-fun lt!1832741 () Unit!121049)

(declare-fun Unit!121116 () Unit!121049)

(assert (=> b!4670480 (= lt!1832741 Unit!121116)))

(declare-fun lt!1832733 () Unit!121049)

(declare-fun Unit!121117 () Unit!121049)

(assert (=> b!4670480 (= lt!1832733 Unit!121117)))

(declare-fun lt!1832738 () Unit!121049)

(assert (=> b!4670480 (= lt!1832738 (addForallContainsKeyThenBeforeAdding!631 (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832731 (_1!29885 (h!58196 (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))))) (_2!29885 (h!58196 (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))))))))

(assert (=> b!4670480 (forall!11107 (toList!5296 (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))) lambda!202478)))

(declare-fun lt!1832725 () Unit!121049)

(assert (=> b!4670480 (= lt!1832725 lt!1832738)))

(assert (=> b!4670480 call!326458))

(declare-fun lt!1832740 () Unit!121049)

(declare-fun Unit!121118 () Unit!121049)

(assert (=> b!4670480 (= lt!1832740 Unit!121118)))

(declare-fun res!1966003 () Bool)

(assert (=> b!4670480 (= res!1966003 (forall!11107 (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lambda!202478))))

(assert (=> b!4670480 (=> (not res!1966003) (not e!2914561))))

(assert (=> b!4670480 e!2914561))

(declare-fun lt!1832730 () Unit!121049)

(declare-fun Unit!121119 () Unit!121049)

(assert (=> b!4670480 (= lt!1832730 Unit!121119)))

(assert (= (and d!1485246 c!799625) b!4670477))

(assert (= (and d!1485246 (not c!799625)) b!4670480))

(assert (= (and b!4670480 res!1966003) b!4670479))

(assert (= (or b!4670477 b!4670480) bm!326452))

(assert (= (or b!4670477 b!4670480) bm!326454))

(assert (= (or b!4670477 b!4670480) bm!326453))

(assert (= (and d!1485246 res!1966002) b!4670478))

(assert (= (and b!4670478 res!1966004) b!4670476))

(declare-fun m!5563789 () Bool)

(assert (=> b!4670479 m!5563789))

(declare-fun m!5563791 () Bool)

(assert (=> bm!326453 m!5563791))

(declare-fun m!5563793 () Bool)

(assert (=> bm!326454 m!5563793))

(declare-fun m!5563795 () Bool)

(assert (=> b!4670478 m!5563795))

(assert (=> bm!326452 m!5563225))

(declare-fun m!5563797 () Bool)

(assert (=> bm!326452 m!5563797))

(declare-fun m!5563799 () Bool)

(assert (=> b!4670476 m!5563799))

(declare-fun m!5563801 () Bool)

(assert (=> d!1485246 m!5563801))

(declare-fun m!5563803 () Bool)

(assert (=> d!1485246 m!5563803))

(declare-fun m!5563805 () Bool)

(assert (=> b!4670480 m!5563805))

(declare-fun m!5563807 () Bool)

(assert (=> b!4670480 m!5563807))

(declare-fun m!5563809 () Bool)

(assert (=> b!4670480 m!5563809))

(declare-fun m!5563811 () Bool)

(assert (=> b!4670480 m!5563811))

(assert (=> b!4670480 m!5563225))

(declare-fun m!5563813 () Bool)

(assert (=> b!4670480 m!5563813))

(assert (=> b!4670480 m!5563809))

(declare-fun m!5563815 () Bool)

(assert (=> b!4670480 m!5563815))

(declare-fun m!5563817 () Bool)

(assert (=> b!4670480 m!5563817))

(assert (=> b!4670480 m!5563789))

(declare-fun m!5563819 () Bool)

(assert (=> b!4670480 m!5563819))

(declare-fun m!5563821 () Bool)

(assert (=> b!4670480 m!5563821))

(declare-fun m!5563823 () Bool)

(assert (=> b!4670480 m!5563823))

(assert (=> b!4670480 m!5563225))

(assert (=> b!4670480 m!5563821))

(assert (=> b!4670137 d!1485246))

(declare-fun bs!1078797 () Bool)

(declare-fun d!1485248 () Bool)

(assert (= bs!1078797 (and d!1485248 d!1485040)))

(declare-fun lambda!202480 () Int)

(assert (=> bs!1078797 (= lambda!202480 lambda!202405)))

(declare-fun bs!1078798 () Bool)

(assert (= bs!1078798 (and d!1485248 d!1485044)))

(assert (=> bs!1078798 (= lambda!202480 lambda!202406)))

(declare-fun lt!1832745 () ListMap!4637)

(assert (=> d!1485248 (invariantList!1332 (toList!5296 lt!1832745))))

(declare-fun e!2914564 () ListMap!4637)

(assert (=> d!1485248 (= lt!1832745 e!2914564)))

(declare-fun c!799626 () Bool)

(assert (=> d!1485248 (= c!799626 ((_ is Cons!52019) (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))))))

(assert (=> d!1485248 (forall!11108 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)) lambda!202480)))

(assert (=> d!1485248 (= (extractMap!1740 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) lt!1832745)))

(declare-fun b!4670481 () Bool)

(assert (=> b!4670481 (= e!2914564 (addToMapMapFromBucket!1141 (_2!29886 (h!58197 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))) (extractMap!1740 (t!359281 (t!359281 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))))))))

(declare-fun b!4670482 () Bool)

(assert (=> b!4670482 (= e!2914564 (ListMap!4638 Nil!52018))))

(assert (= (and d!1485248 c!799626) b!4670481))

(assert (= (and d!1485248 (not c!799626)) b!4670482))

(declare-fun m!5563825 () Bool)

(assert (=> d!1485248 m!5563825))

(declare-fun m!5563827 () Bool)

(assert (=> d!1485248 m!5563827))

(declare-fun m!5563829 () Bool)

(assert (=> b!4670481 m!5563829))

(assert (=> b!4670481 m!5563829))

(declare-fun m!5563831 () Bool)

(assert (=> b!4670481 m!5563831))

(assert (=> b!4670137 d!1485248))

(declare-fun d!1485250 () Bool)

(declare-fun res!1966005 () Bool)

(declare-fun e!2914565 () Bool)

(assert (=> d!1485250 (=> res!1966005 e!2914565)))

(assert (=> d!1485250 (= res!1966005 ((_ is Nil!52018) (toList!5296 lt!1832321)))))

(assert (=> d!1485250 (= (forall!11107 (toList!5296 lt!1832321) lambda!202402) e!2914565)))

(declare-fun b!4670483 () Bool)

(declare-fun e!2914566 () Bool)

(assert (=> b!4670483 (= e!2914565 e!2914566)))

(declare-fun res!1966006 () Bool)

(assert (=> b!4670483 (=> (not res!1966006) (not e!2914566))))

(assert (=> b!4670483 (= res!1966006 (dynLambda!21643 lambda!202402 (h!58196 (toList!5296 lt!1832321))))))

(declare-fun b!4670484 () Bool)

(assert (=> b!4670484 (= e!2914566 (forall!11107 (t!359280 (toList!5296 lt!1832321)) lambda!202402))))

(assert (= (and d!1485250 (not res!1966005)) b!4670483))

(assert (= (and b!4670483 res!1966006) b!4670484))

(declare-fun b_lambda!176335 () Bool)

(assert (=> (not b_lambda!176335) (not b!4670483)))

(declare-fun m!5563833 () Bool)

(assert (=> b!4670483 m!5563833))

(declare-fun m!5563835 () Bool)

(assert (=> b!4670484 m!5563835))

(assert (=> b!4670099 d!1485250))

(declare-fun d!1485252 () Bool)

(declare-fun res!1966007 () Bool)

(declare-fun e!2914567 () Bool)

(assert (=> d!1485252 (=> res!1966007 e!2914567)))

(assert (=> d!1485252 (= res!1966007 (and ((_ is Cons!52018) lt!1832509) (= (_1!29885 (h!58196 lt!1832509)) key!4968)))))

(assert (=> d!1485252 (= (containsKey!2832 lt!1832509 key!4968) e!2914567)))

(declare-fun b!4670485 () Bool)

(declare-fun e!2914568 () Bool)

(assert (=> b!4670485 (= e!2914567 e!2914568)))

(declare-fun res!1966008 () Bool)

(assert (=> b!4670485 (=> (not res!1966008) (not e!2914568))))

(assert (=> b!4670485 (= res!1966008 ((_ is Cons!52018) lt!1832509))))

(declare-fun b!4670486 () Bool)

(assert (=> b!4670486 (= e!2914568 (containsKey!2832 (t!359280 lt!1832509) key!4968))))

(assert (= (and d!1485252 (not res!1966007)) b!4670485))

(assert (= (and b!4670485 res!1966008) b!4670486))

(declare-fun m!5563837 () Bool)

(assert (=> b!4670486 m!5563837))

(assert (=> d!1485052 d!1485252))

(assert (=> d!1485052 d!1485046))

(declare-fun d!1485254 () Bool)

(assert (=> d!1485254 (= (invariantList!1332 (toList!5296 lt!1832476)) (noDuplicatedKeys!363 (toList!5296 lt!1832476)))))

(declare-fun bs!1078799 () Bool)

(assert (= bs!1078799 d!1485254))

(declare-fun m!5563839 () Bool)

(assert (=> bs!1078799 m!5563839))

(assert (=> b!4670097 d!1485254))

(declare-fun e!2914569 () Bool)

(declare-fun b!4670487 () Bool)

(declare-fun tp!1343754 () Bool)

(assert (=> b!4670487 (= e!2914569 (and tp_is_empty!30029 tp_is_empty!30031 tp!1343754))))

(assert (=> b!4670167 (= tp!1343750 e!2914569)))

(assert (= (and b!4670167 ((_ is Cons!52018) (t!359280 (t!359280 oldBucket!40)))) b!4670487))

(declare-fun tp!1343755 () Bool)

(declare-fun e!2914570 () Bool)

(declare-fun b!4670488 () Bool)

(assert (=> b!4670488 (= e!2914570 (and tp_is_empty!30029 tp_is_empty!30031 tp!1343755))))

(assert (=> b!4670168 (= tp!1343751 e!2914570)))

(assert (= (and b!4670168 ((_ is Cons!52018) (t!359280 (t!359280 newBucket!224)))) b!4670488))

(declare-fun b_lambda!176337 () Bool)

(assert (= b_lambda!176335 (or d!1485020 b_lambda!176337)))

(declare-fun bs!1078800 () Bool)

(declare-fun d!1485256 () Bool)

(assert (= bs!1078800 (and d!1485256 d!1485020)))

(assert (=> bs!1078800 (= (dynLambda!21643 lambda!202402 (h!58196 (toList!5296 lt!1832321))) (contains!15229 lt!1832476 (_1!29885 (h!58196 (toList!5296 lt!1832321)))))))

(declare-fun m!5563841 () Bool)

(assert (=> bs!1078800 m!5563841))

(assert (=> b!4670483 d!1485256))

(declare-fun b_lambda!176339 () Bool)

(assert (= b_lambda!176293 (or b!4670101 b_lambda!176339)))

(declare-fun bs!1078801 () Bool)

(declare-fun d!1485258 () Bool)

(assert (= bs!1078801 (and d!1485258 b!4670101)))

(assert (=> bs!1078801 (= (dynLambda!21643 lambda!202401 (h!58196 (toList!5296 lt!1832461))) (contains!15229 lt!1832465 (_1!29885 (h!58196 (toList!5296 lt!1832461)))))))

(declare-fun m!5563843 () Bool)

(assert (=> bs!1078801 m!5563843))

(assert (=> b!4670399 d!1485258))

(declare-fun b_lambda!176341 () Bool)

(assert (= b_lambda!176299 (or b!4670101 b_lambda!176341)))

(declare-fun bs!1078802 () Bool)

(declare-fun d!1485260 () Bool)

(assert (= bs!1078802 (and d!1485260 b!4670101)))

(assert (=> bs!1078802 (= (dynLambda!21643 lambda!202401 (h!58196 oldBucket!40)) (contains!15229 lt!1832465 (_1!29885 (h!58196 oldBucket!40))))))

(assert (=> bs!1078802 m!5563183))

(assert (=> d!1485202 d!1485260))

(declare-fun b_lambda!176343 () Bool)

(assert (= b_lambda!176277 (or d!1485050 b_lambda!176343)))

(declare-fun bs!1078803 () Bool)

(declare-fun d!1485262 () Bool)

(assert (= bs!1078803 (and d!1485262 d!1485050)))

(assert (=> bs!1078803 (= (dynLambda!21643 lambda!202409 (h!58196 newBucket!224)) (= (hash!3859 hashF!1389 (_1!29885 (h!58196 newBucket!224))) hash!414))))

(declare-fun m!5563845 () Bool)

(assert (=> bs!1078803 m!5563845))

(assert (=> b!4670316 d!1485262))

(declare-fun b_lambda!176345 () Bool)

(assert (= b_lambda!176259 (or d!1485044 b_lambda!176345)))

(declare-fun bs!1078804 () Bool)

(declare-fun d!1485264 () Bool)

(assert (= bs!1078804 (and d!1485264 d!1485044)))

(assert (=> bs!1078804 (= (dynLambda!21642 lambda!202406 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019))) (noDuplicateKeys!1684 (_2!29886 (h!58197 (Cons!52019 (tuple2!53185 hash!414 oldBucket!40) Nil!52019)))))))

(assert (=> bs!1078804 m!5563803))

(assert (=> b!4670194 d!1485264))

(declare-fun b_lambda!176347 () Bool)

(assert (= b_lambda!176295 (or b!4670101 b_lambda!176347)))

(declare-fun bs!1078805 () Bool)

(declare-fun d!1485266 () Bool)

(assert (= bs!1078805 (and d!1485266 b!4670101)))

(assert (=> bs!1078805 (= (dynLambda!21643 lambda!202401 (h!58196 (toList!5296 lt!1832321))) (contains!15229 lt!1832465 (_1!29885 (h!58196 (toList!5296 lt!1832321)))))))

(declare-fun m!5563847 () Bool)

(assert (=> bs!1078805 m!5563847))

(assert (=> b!4670410 d!1485266))

(declare-fun b_lambda!176349 () Bool)

(assert (= b_lambda!176303 (or d!1485056 b_lambda!176349)))

(declare-fun bs!1078806 () Bool)

(declare-fun d!1485268 () Bool)

(assert (= bs!1078806 (and d!1485268 d!1485056)))

(assert (=> bs!1078806 (= (dynLambda!21643 lambda!202410 (h!58196 oldBucket!40)) (= (hash!3859 hashF!1389 (_1!29885 (h!58196 oldBucket!40))) hash!414))))

(declare-fun m!5563849 () Bool)

(assert (=> bs!1078806 m!5563849))

(assert (=> b!4670466 d!1485268))

(declare-fun b_lambda!176351 () Bool)

(assert (= b_lambda!176331 (or d!1485040 b_lambda!176351)))

(declare-fun bs!1078807 () Bool)

(declare-fun d!1485270 () Bool)

(assert (= bs!1078807 (and d!1485270 d!1485040)))

(assert (=> bs!1078807 (= (dynLambda!21642 lambda!202405 (h!58197 Nil!52019)) (noDuplicateKeys!1684 (_2!29886 (h!58197 Nil!52019))))))

(declare-fun m!5563851 () Bool)

(assert (=> bs!1078807 m!5563851))

(assert (=> b!4670472 d!1485270))

(declare-fun b_lambda!176353 () Bool)

(assert (= b_lambda!176301 (or b!4670101 b_lambda!176353)))

(assert (=> b!4670451 d!1485260))

(declare-fun b_lambda!176355 () Bool)

(assert (= b_lambda!176291 (or b!4670101 b_lambda!176355)))

(declare-fun bs!1078808 () Bool)

(declare-fun d!1485272 () Bool)

(assert (= bs!1078808 (and d!1485272 b!4670101)))

(assert (=> bs!1078808 (= (dynLambda!21643 lambda!202400 (h!58196 (toList!5296 lt!1832321))) (contains!15229 lt!1832321 (_1!29885 (h!58196 (toList!5296 lt!1832321)))))))

(declare-fun m!5563853 () Bool)

(assert (=> bs!1078808 m!5563853))

(assert (=> b!4670391 d!1485272))

(declare-fun b_lambda!176357 () Bool)

(assert (= b_lambda!176279 (or d!1485020 b_lambda!176357)))

(declare-fun bs!1078809 () Bool)

(declare-fun d!1485274 () Bool)

(assert (= bs!1078809 (and d!1485274 d!1485020)))

(assert (=> bs!1078809 (= (dynLambda!21643 lambda!202402 (h!58196 oldBucket!40)) (contains!15229 lt!1832476 (_1!29885 (h!58196 oldBucket!40))))))

(declare-fun m!5563855 () Bool)

(assert (=> bs!1078809 m!5563855))

(assert (=> b!4670318 d!1485274))

(declare-fun b_lambda!176359 () Bool)

(assert (= b_lambda!176297 (or b!4670101 b_lambda!176359)))

(declare-fun bs!1078810 () Bool)

(declare-fun d!1485276 () Bool)

(assert (= bs!1078810 (and d!1485276 b!4670101)))

(assert (=> bs!1078810 (= (dynLambda!21643 lambda!202401 (h!58196 (t!359280 oldBucket!40))) (contains!15229 lt!1832465 (_1!29885 (h!58196 (t!359280 oldBucket!40)))))))

(declare-fun m!5563857 () Bool)

(assert (=> bs!1078810 m!5563857))

(assert (=> b!4670412 d!1485276))

(check-sat (not b_lambda!176355) (not bm!326448) (not d!1485208) (not bs!1078802) (not b_lambda!176337) (not b!4670195) (not b!4670221) (not d!1485126) (not d!1485202) (not b_lambda!176305) (not b_lambda!176353) (not bs!1078809) (not bm!326447) (not b_lambda!176345) (not bs!1078800) (not b!4670433) (not b!4670342) (not b!4670369) (not b!4670481) (not b!4670406) (not bm!326453) (not b!4670223) (not b!4670401) (not b!4670476) (not b!4670319) (not bm!326454) (not bm!326449) (not b!4670431) (not b!4670299) (not b!4670307) (not b!4670453) (not bm!326451) (not bs!1078801) (not b!4670400) (not b_lambda!176359) (not b!4670470) (not b!4670298) (not d!1485150) (not b_lambda!176351) (not b!4670432) (not b!4670480) (not b!4670341) (not b!4670484) (not bm!326450) (not b!4670473) (not bs!1078810) (not b_lambda!176343) (not b!4670407) (not b!4670224) (not d!1485074) (not bs!1078807) (not bs!1078803) (not d!1485142) (not d!1485076) (not d!1485108) (not bm!326452) (not b!4670292) (not b!4670258) (not d!1485078) (not b!4670456) (not bs!1078804) (not d!1485204) (not b!4670452) (not b!4670467) (not b!4670392) (not bs!1078808) (not b_lambda!176349) (not b!4670409) (not b!4670458) (not bs!1078806) (not b!4670461) (not d!1485092) (not d!1485220) (not d!1485192) (not b!4670402) (not b!4670454) (not b!4670403) (not d!1485172) (not b!4670475) (not b_lambda!176339) (not b!4670411) (not b!4670486) (not d!1485254) (not b!4670478) (not b!4670343) (not d!1485152) (not d!1485196) (not b!4670428) (not b!4670404) (not b_lambda!176341) (not bs!1078805) (not b!4670398) (not b!4670293) (not b!4670352) (not d!1485246) (not b!4670295) (not d!1485070) (not b!4670321) (not b!4670487) tp_is_empty!30031 (not b!4670413) tp_is_empty!30029 (not d!1485248) (not d!1485156) (not b!4670479) (not b!4670317) (not b!4670368) (not b!4670233) (not b!4670459) (not b_lambda!176357) (not b!4670488) (not b_lambda!176333) (not b!4670371) (not b!4670429) (not b_lambda!176347) (not b!4670455) (not b!4670397) (not d!1485140))
(check-sat)
