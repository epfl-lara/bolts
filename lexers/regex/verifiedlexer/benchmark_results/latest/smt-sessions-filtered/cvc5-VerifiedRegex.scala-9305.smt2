; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!493988 () Bool)

(assert start!493988)

(declare-fun bs!1155142 () Bool)

(declare-fun b!4794220 () Bool)

(assert (= bs!1155142 (and b!4794220 start!493988)))

(declare-fun lambda!230945 () Int)

(declare-fun lambda!230944 () Int)

(assert (=> bs!1155142 (not (= lambda!230945 lambda!230944))))

(assert (=> b!4794220 true))

(assert (=> b!4794220 true))

(assert (=> b!4794220 true))

(declare-fun b!4794213 () Bool)

(declare-fun res!2038037 () Bool)

(declare-fun e!2993529 () Bool)

(assert (=> b!4794213 (=> (not res!2038037) (not e!2993529))))

(declare-datatypes ((K!15812 0))(
  ( (K!15813 (val!20955 Int)) )
))
(declare-datatypes ((V!16058 0))(
  ( (V!16059 (val!20956 Int)) )
))
(declare-datatypes ((tuple2!56884 0))(
  ( (tuple2!56885 (_1!31736 K!15812) (_2!31736 V!16058)) )
))
(declare-datatypes ((List!54360 0))(
  ( (Nil!54236) (Cons!54236 (h!60666 tuple2!56884) (t!361810 List!54360)) )
))
(declare-datatypes ((tuple2!56886 0))(
  ( (tuple2!56887 (_1!31737 (_ BitVec 64)) (_2!31737 List!54360)) )
))
(declare-datatypes ((List!54361 0))(
  ( (Nil!54237) (Cons!54237 (h!60667 tuple2!56886) (t!361811 List!54361)) )
))
(declare-datatypes ((ListLongMap!5359 0))(
  ( (ListLongMap!5360 (toList!6937 List!54361)) )
))
(declare-fun lm!2473 () ListLongMap!5359)

(declare-datatypes ((Hashable!6929 0))(
  ( (HashableExt!6928 (__x!32952 Int)) )
))
(declare-fun hashF!1559 () Hashable!6929)

(declare-fun allKeysSameHashInMap!2334 (ListLongMap!5359 Hashable!6929) Bool)

(assert (=> b!4794213 (= res!2038037 (allKeysSameHashInMap!2334 lm!2473 hashF!1559))))

(declare-fun b!4794214 () Bool)

(declare-fun res!2038031 () Bool)

(declare-fun e!2993531 () Bool)

(assert (=> b!4794214 (=> res!2038031 e!2993531)))

(declare-fun key!5896 () K!15812)

(declare-fun containsKey!3961 (List!54360 K!15812) Bool)

(assert (=> b!4794214 (= res!2038031 (not (containsKey!3961 (_2!31737 (h!60667 (toList!6937 lm!2473))) key!5896)))))

(declare-fun b!4794215 () Bool)

(declare-fun res!2038035 () Bool)

(assert (=> b!4794215 (=> res!2038035 e!2993531)))

(assert (=> b!4794215 (= res!2038035 (not (is-Cons!54237 (toList!6937 lm!2473))))))

(declare-fun b!4794216 () Bool)

(declare-fun e!2993532 () Bool)

(declare-fun tp!1358095 () Bool)

(assert (=> b!4794216 (= e!2993532 tp!1358095)))

(declare-fun res!2038036 () Bool)

(assert (=> start!493988 (=> (not res!2038036) (not e!2993529))))

(declare-fun forall!12266 (List!54361 Int) Bool)

(assert (=> start!493988 (= res!2038036 (forall!12266 (toList!6937 lm!2473) lambda!230944))))

(assert (=> start!493988 e!2993529))

(declare-fun inv!69839 (ListLongMap!5359) Bool)

(assert (=> start!493988 (and (inv!69839 lm!2473) e!2993532)))

(assert (=> start!493988 true))

(declare-fun tp_is_empty!33577 () Bool)

(assert (=> start!493988 tp_is_empty!33577))

(declare-fun tp_is_empty!33579 () Bool)

(assert (=> start!493988 tp_is_empty!33579))

(declare-fun b!4794217 () Bool)

(assert (=> b!4794217 (= e!2993529 (not e!2993531))))

(declare-fun res!2038032 () Bool)

(assert (=> b!4794217 (=> res!2038032 e!2993531)))

(declare-fun value!3111 () V!16058)

(declare-fun getValue!117 (List!54361 K!15812) V!16058)

(assert (=> b!4794217 (= res!2038032 (not (= (getValue!117 (toList!6937 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!571 (List!54361 K!15812) Bool)

(assert (=> b!4794217 (containsKeyBiggerList!571 (toList!6937 lm!2473) key!5896)))

(declare-datatypes ((Unit!140055 0))(
  ( (Unit!140056) )
))
(declare-fun lt!1952179 () Unit!140055)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!311 (ListLongMap!5359 K!15812 Hashable!6929) Unit!140055)

(assert (=> b!4794217 (= lt!1952179 (lemmaInLongMapThenContainsKeyBiggerList!311 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2993530 () Bool)

(assert (=> b!4794217 e!2993530))

(declare-fun res!2038034 () Bool)

(assert (=> b!4794217 (=> (not res!2038034) (not e!2993530))))

(declare-fun lt!1952177 () (_ BitVec 64))

(declare-fun contains!17859 (ListLongMap!5359 (_ BitVec 64)) Bool)

(assert (=> b!4794217 (= res!2038034 (contains!17859 lm!2473 lt!1952177))))

(declare-fun hash!4968 (Hashable!6929 K!15812) (_ BitVec 64))

(assert (=> b!4794217 (= lt!1952177 (hash!4968 hashF!1559 key!5896))))

(declare-fun lt!1952181 () Unit!140055)

(declare-fun lemmaInGenericMapThenInLongMap!333 (ListLongMap!5359 K!15812 Hashable!6929) Unit!140055)

(assert (=> b!4794217 (= lt!1952181 (lemmaInGenericMapThenInLongMap!333 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4794218 () Bool)

(declare-fun res!2038033 () Bool)

(assert (=> b!4794218 (=> (not res!2038033) (not e!2993529))))

(declare-datatypes ((ListMap!6409 0))(
  ( (ListMap!6410 (toList!6938 List!54360)) )
))
(declare-fun contains!17860 (ListMap!6409 K!15812) Bool)

(declare-fun extractMap!2456 (List!54361) ListMap!6409)

(assert (=> b!4794218 (= res!2038033 (contains!17860 (extractMap!2456 (toList!6937 lm!2473)) key!5896))))

(declare-fun b!4794219 () Bool)

(declare-datatypes ((Option!13110 0))(
  ( (None!13109) (Some!13109 (v!48406 tuple2!56884)) )
))
(declare-fun isDefined!10252 (Option!13110) Bool)

(declare-fun getPair!901 (List!54360 K!15812) Option!13110)

(declare-fun apply!12998 (ListLongMap!5359 (_ BitVec 64)) List!54360)

(assert (=> b!4794219 (= e!2993530 (isDefined!10252 (getPair!901 (apply!12998 lm!2473 lt!1952177) key!5896)))))

(declare-fun noDuplicateKeys!2342 (List!54360) Bool)

(assert (=> b!4794220 (= e!2993531 (noDuplicateKeys!2342 (_2!31737 (h!60667 (toList!6937 lm!2473)))))))

(declare-fun lt!1952180 () ListMap!6409)

(assert (=> b!4794220 (= lt!1952180 (extractMap!2456 (t!361811 (toList!6937 lm!2473))))))

(declare-fun lt!1952183 () ListLongMap!5359)

(assert (=> b!4794220 (not (contains!17860 (extractMap!2456 (toList!6937 lt!1952183)) key!5896))))

(declare-fun lt!1952176 () Unit!140055)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!35 (ListLongMap!5359 K!15812 Hashable!6929) Unit!140055)

(assert (=> b!4794220 (= lt!1952176 (lemmaHashNotInLongMapThenNotInGenerated!35 lt!1952183 key!5896 hashF!1559))))

(declare-fun tail!9276 (ListLongMap!5359) ListLongMap!5359)

(assert (=> b!4794220 (= lt!1952183 (tail!9276 lm!2473))))

(declare-fun lambda!230946 () Int)

(declare-fun lt!1952178 () Unit!140055)

(declare-fun forallContained!4172 (List!54360 Int tuple2!56884) Unit!140055)

(assert (=> b!4794220 (= lt!1952178 (forallContained!4172 (_2!31737 (h!60667 (toList!6937 lm!2473))) lambda!230946 (tuple2!56885 key!5896 value!3111)))))

(declare-fun lt!1952182 () Unit!140055)

(declare-fun forallContained!4173 (List!54361 Int tuple2!56886) Unit!140055)

(assert (=> b!4794220 (= lt!1952182 (forallContained!4173 (toList!6937 lm!2473) lambda!230945 (h!60667 (toList!6937 lm!2473))))))

(assert (= (and start!493988 res!2038036) b!4794213))

(assert (= (and b!4794213 res!2038037) b!4794218))

(assert (= (and b!4794218 res!2038033) b!4794217))

(assert (= (and b!4794217 res!2038034) b!4794219))

(assert (= (and b!4794217 (not res!2038032)) b!4794215))

(assert (= (and b!4794215 (not res!2038035)) b!4794214))

(assert (= (and b!4794214 (not res!2038031)) b!4794220))

(assert (= start!493988 b!4794216))

(declare-fun m!5775300 () Bool)

(assert (=> b!4794217 m!5775300))

(declare-fun m!5775302 () Bool)

(assert (=> b!4794217 m!5775302))

(declare-fun m!5775304 () Bool)

(assert (=> b!4794217 m!5775304))

(declare-fun m!5775306 () Bool)

(assert (=> b!4794217 m!5775306))

(declare-fun m!5775308 () Bool)

(assert (=> b!4794217 m!5775308))

(declare-fun m!5775310 () Bool)

(assert (=> b!4794217 m!5775310))

(declare-fun m!5775312 () Bool)

(assert (=> b!4794219 m!5775312))

(assert (=> b!4794219 m!5775312))

(declare-fun m!5775314 () Bool)

(assert (=> b!4794219 m!5775314))

(assert (=> b!4794219 m!5775314))

(declare-fun m!5775316 () Bool)

(assert (=> b!4794219 m!5775316))

(declare-fun m!5775318 () Bool)

(assert (=> b!4794214 m!5775318))

(declare-fun m!5775320 () Bool)

(assert (=> b!4794218 m!5775320))

(assert (=> b!4794218 m!5775320))

(declare-fun m!5775322 () Bool)

(assert (=> b!4794218 m!5775322))

(declare-fun m!5775324 () Bool)

(assert (=> b!4794213 m!5775324))

(declare-fun m!5775326 () Bool)

(assert (=> start!493988 m!5775326))

(declare-fun m!5775328 () Bool)

(assert (=> start!493988 m!5775328))

(declare-fun m!5775330 () Bool)

(assert (=> b!4794220 m!5775330))

(declare-fun m!5775332 () Bool)

(assert (=> b!4794220 m!5775332))

(declare-fun m!5775334 () Bool)

(assert (=> b!4794220 m!5775334))

(declare-fun m!5775336 () Bool)

(assert (=> b!4794220 m!5775336))

(assert (=> b!4794220 m!5775334))

(declare-fun m!5775338 () Bool)

(assert (=> b!4794220 m!5775338))

(declare-fun m!5775340 () Bool)

(assert (=> b!4794220 m!5775340))

(declare-fun m!5775342 () Bool)

(assert (=> b!4794220 m!5775342))

(declare-fun m!5775344 () Bool)

(assert (=> b!4794220 m!5775344))

(push 1)

(assert (not start!493988))

(assert (not b!4794217))

(assert (not b!4794218))

(assert tp_is_empty!33577)

(assert tp_is_empty!33579)

(assert (not b!4794216))

(assert (not b!4794219))

(assert (not b!4794213))

(assert (not b!4794214))

(assert (not b!4794220))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1534096 () Bool)

(declare-fun res!2038063 () Bool)

(declare-fun e!2993549 () Bool)

(assert (=> d!1534096 (=> res!2038063 e!2993549)))

(assert (=> d!1534096 (= res!2038063 (is-Nil!54237 (toList!6937 lm!2473)))))

(assert (=> d!1534096 (= (forall!12266 (toList!6937 lm!2473) lambda!230944) e!2993549)))

(declare-fun b!4794261 () Bool)

(declare-fun e!2993550 () Bool)

(assert (=> b!4794261 (= e!2993549 e!2993550)))

(declare-fun res!2038064 () Bool)

(assert (=> b!4794261 (=> (not res!2038064) (not e!2993550))))

(declare-fun dynLambda!22065 (Int tuple2!56886) Bool)

(assert (=> b!4794261 (= res!2038064 (dynLambda!22065 lambda!230944 (h!60667 (toList!6937 lm!2473))))))

(declare-fun b!4794262 () Bool)

(assert (=> b!4794262 (= e!2993550 (forall!12266 (t!361811 (toList!6937 lm!2473)) lambda!230944))))

(assert (= (and d!1534096 (not res!2038063)) b!4794261))

(assert (= (and b!4794261 res!2038064) b!4794262))

(declare-fun b_lambda!186931 () Bool)

(assert (=> (not b_lambda!186931) (not b!4794261)))

(declare-fun m!5775392 () Bool)

(assert (=> b!4794261 m!5775392))

(declare-fun m!5775394 () Bool)

(assert (=> b!4794262 m!5775394))

(assert (=> start!493988 d!1534096))

(declare-fun d!1534098 () Bool)

(declare-fun isStrictlySorted!881 (List!54361) Bool)

(assert (=> d!1534098 (= (inv!69839 lm!2473) (isStrictlySorted!881 (toList!6937 lm!2473)))))

(declare-fun bs!1155144 () Bool)

(assert (= bs!1155144 d!1534098))

(declare-fun m!5775396 () Bool)

(assert (=> bs!1155144 m!5775396))

(assert (=> start!493988 d!1534098))

(declare-fun d!1534100 () Bool)

(declare-fun dynLambda!22066 (Int tuple2!56884) Bool)

(assert (=> d!1534100 (dynLambda!22066 lambda!230946 (tuple2!56885 key!5896 value!3111))))

(declare-fun lt!1952210 () Unit!140055)

(declare-fun choose!34552 (List!54360 Int tuple2!56884) Unit!140055)

(assert (=> d!1534100 (= lt!1952210 (choose!34552 (_2!31737 (h!60667 (toList!6937 lm!2473))) lambda!230946 (tuple2!56885 key!5896 value!3111)))))

(declare-fun e!2993553 () Bool)

(assert (=> d!1534100 e!2993553))

(declare-fun res!2038067 () Bool)

(assert (=> d!1534100 (=> (not res!2038067) (not e!2993553))))

(declare-fun forall!12268 (List!54360 Int) Bool)

(assert (=> d!1534100 (= res!2038067 (forall!12268 (_2!31737 (h!60667 (toList!6937 lm!2473))) lambda!230946))))

(assert (=> d!1534100 (= (forallContained!4172 (_2!31737 (h!60667 (toList!6937 lm!2473))) lambda!230946 (tuple2!56885 key!5896 value!3111)) lt!1952210)))

(declare-fun b!4794265 () Bool)

(declare-fun contains!17863 (List!54360 tuple2!56884) Bool)

(assert (=> b!4794265 (= e!2993553 (contains!17863 (_2!31737 (h!60667 (toList!6937 lm!2473))) (tuple2!56885 key!5896 value!3111)))))

(assert (= (and d!1534100 res!2038067) b!4794265))

(declare-fun b_lambda!186933 () Bool)

(assert (=> (not b_lambda!186933) (not d!1534100)))

(declare-fun m!5775398 () Bool)

(assert (=> d!1534100 m!5775398))

(declare-fun m!5775400 () Bool)

(assert (=> d!1534100 m!5775400))

(declare-fun m!5775402 () Bool)

(assert (=> d!1534100 m!5775402))

(declare-fun m!5775404 () Bool)

(assert (=> b!4794265 m!5775404))

(assert (=> b!4794220 d!1534100))

(declare-fun bs!1155145 () Bool)

(declare-fun d!1534102 () Bool)

(assert (= bs!1155145 (and d!1534102 start!493988)))

(declare-fun lambda!230958 () Int)

(assert (=> bs!1155145 (= lambda!230958 lambda!230944)))

(declare-fun bs!1155146 () Bool)

(assert (= bs!1155146 (and d!1534102 b!4794220)))

(assert (=> bs!1155146 (not (= lambda!230958 lambda!230945))))

(declare-fun lt!1952213 () ListMap!6409)

(declare-fun invariantList!1733 (List!54360) Bool)

(assert (=> d!1534102 (invariantList!1733 (toList!6938 lt!1952213))))

(declare-fun e!2993556 () ListMap!6409)

(assert (=> d!1534102 (= lt!1952213 e!2993556)))

(declare-fun c!817096 () Bool)

(assert (=> d!1534102 (= c!817096 (is-Cons!54237 (toList!6937 lt!1952183)))))

(assert (=> d!1534102 (forall!12266 (toList!6937 lt!1952183) lambda!230958)))

(assert (=> d!1534102 (= (extractMap!2456 (toList!6937 lt!1952183)) lt!1952213)))

(declare-fun b!4794270 () Bool)

(declare-fun addToMapMapFromBucket!1710 (List!54360 ListMap!6409) ListMap!6409)

(assert (=> b!4794270 (= e!2993556 (addToMapMapFromBucket!1710 (_2!31737 (h!60667 (toList!6937 lt!1952183))) (extractMap!2456 (t!361811 (toList!6937 lt!1952183)))))))

(declare-fun b!4794271 () Bool)

(assert (=> b!4794271 (= e!2993556 (ListMap!6410 Nil!54236))))

(assert (= (and d!1534102 c!817096) b!4794270))

(assert (= (and d!1534102 (not c!817096)) b!4794271))

(declare-fun m!5775406 () Bool)

(assert (=> d!1534102 m!5775406))

(declare-fun m!5775408 () Bool)

(assert (=> d!1534102 m!5775408))

(declare-fun m!5775410 () Bool)

(assert (=> b!4794270 m!5775410))

(assert (=> b!4794270 m!5775410))

(declare-fun m!5775412 () Bool)

(assert (=> b!4794270 m!5775412))

(assert (=> b!4794220 d!1534102))

(declare-fun bs!1155147 () Bool)

(declare-fun d!1534106 () Bool)

(assert (= bs!1155147 (and d!1534106 start!493988)))

(declare-fun lambda!230961 () Int)

(assert (=> bs!1155147 (= lambda!230961 lambda!230944)))

(declare-fun bs!1155148 () Bool)

(assert (= bs!1155148 (and d!1534106 b!4794220)))

(assert (=> bs!1155148 (not (= lambda!230961 lambda!230945))))

(declare-fun bs!1155149 () Bool)

(assert (= bs!1155149 (and d!1534106 d!1534102)))

(assert (=> bs!1155149 (= lambda!230961 lambda!230958)))

(assert (=> d!1534106 (not (contains!17860 (extractMap!2456 (toList!6937 lt!1952183)) key!5896))))

(declare-fun lt!1952216 () Unit!140055)

(declare-fun choose!34553 (ListLongMap!5359 K!15812 Hashable!6929) Unit!140055)

(assert (=> d!1534106 (= lt!1952216 (choose!34553 lt!1952183 key!5896 hashF!1559))))

(assert (=> d!1534106 (forall!12266 (toList!6937 lt!1952183) lambda!230961)))

(assert (=> d!1534106 (= (lemmaHashNotInLongMapThenNotInGenerated!35 lt!1952183 key!5896 hashF!1559) lt!1952216)))

(declare-fun bs!1155150 () Bool)

(assert (= bs!1155150 d!1534106))

(assert (=> bs!1155150 m!5775334))

(assert (=> bs!1155150 m!5775334))

(assert (=> bs!1155150 m!5775336))

(declare-fun m!5775414 () Bool)

(assert (=> bs!1155150 m!5775414))

(declare-fun m!5775416 () Bool)

(assert (=> bs!1155150 m!5775416))

(assert (=> b!4794220 d!1534106))

(declare-fun bs!1155151 () Bool)

(declare-fun d!1534108 () Bool)

(assert (= bs!1155151 (and d!1534108 start!493988)))

(declare-fun lambda!230964 () Int)

(assert (=> bs!1155151 (= lambda!230964 lambda!230944)))

(declare-fun bs!1155152 () Bool)

(assert (= bs!1155152 (and d!1534108 b!4794220)))

(assert (=> bs!1155152 (not (= lambda!230964 lambda!230945))))

(declare-fun bs!1155153 () Bool)

(assert (= bs!1155153 (and d!1534108 d!1534102)))

(assert (=> bs!1155153 (= lambda!230964 lambda!230958)))

(declare-fun bs!1155154 () Bool)

(assert (= bs!1155154 (and d!1534108 d!1534106)))

(assert (=> bs!1155154 (= lambda!230964 lambda!230961)))

(declare-fun lt!1952217 () ListMap!6409)

(assert (=> d!1534108 (invariantList!1733 (toList!6938 lt!1952217))))

(declare-fun e!2993557 () ListMap!6409)

(assert (=> d!1534108 (= lt!1952217 e!2993557)))

(declare-fun c!817097 () Bool)

(assert (=> d!1534108 (= c!817097 (is-Cons!54237 (t!361811 (toList!6937 lm!2473))))))

(assert (=> d!1534108 (forall!12266 (t!361811 (toList!6937 lm!2473)) lambda!230964)))

(assert (=> d!1534108 (= (extractMap!2456 (t!361811 (toList!6937 lm!2473))) lt!1952217)))

(declare-fun b!4794272 () Bool)

(assert (=> b!4794272 (= e!2993557 (addToMapMapFromBucket!1710 (_2!31737 (h!60667 (t!361811 (toList!6937 lm!2473)))) (extractMap!2456 (t!361811 (t!361811 (toList!6937 lm!2473))))))))

(declare-fun b!4794273 () Bool)

(assert (=> b!4794273 (= e!2993557 (ListMap!6410 Nil!54236))))

(assert (= (and d!1534108 c!817097) b!4794272))

(assert (= (and d!1534108 (not c!817097)) b!4794273))

(declare-fun m!5775418 () Bool)

(assert (=> d!1534108 m!5775418))

(declare-fun m!5775420 () Bool)

(assert (=> d!1534108 m!5775420))

(declare-fun m!5775422 () Bool)

(assert (=> b!4794272 m!5775422))

(assert (=> b!4794272 m!5775422))

(declare-fun m!5775424 () Bool)

(assert (=> b!4794272 m!5775424))

(assert (=> b!4794220 d!1534108))

(declare-fun d!1534110 () Bool)

(assert (=> d!1534110 (dynLambda!22065 lambda!230945 (h!60667 (toList!6937 lm!2473)))))

(declare-fun lt!1952222 () Unit!140055)

(declare-fun choose!34554 (List!54361 Int tuple2!56886) Unit!140055)

(assert (=> d!1534110 (= lt!1952222 (choose!34554 (toList!6937 lm!2473) lambda!230945 (h!60667 (toList!6937 lm!2473))))))

(declare-fun e!2993562 () Bool)

(assert (=> d!1534110 e!2993562))

(declare-fun res!2038070 () Bool)

(assert (=> d!1534110 (=> (not res!2038070) (not e!2993562))))

(assert (=> d!1534110 (= res!2038070 (forall!12266 (toList!6937 lm!2473) lambda!230945))))

(assert (=> d!1534110 (= (forallContained!4173 (toList!6937 lm!2473) lambda!230945 (h!60667 (toList!6937 lm!2473))) lt!1952222)))

(declare-fun b!4794280 () Bool)

(declare-fun contains!17864 (List!54361 tuple2!56886) Bool)

(assert (=> b!4794280 (= e!2993562 (contains!17864 (toList!6937 lm!2473) (h!60667 (toList!6937 lm!2473))))))

(assert (= (and d!1534110 res!2038070) b!4794280))

(declare-fun b_lambda!186935 () Bool)

(assert (=> (not b_lambda!186935) (not d!1534110)))

(declare-fun m!5775426 () Bool)

(assert (=> d!1534110 m!5775426))

(declare-fun m!5775428 () Bool)

(assert (=> d!1534110 m!5775428))

(declare-fun m!5775430 () Bool)

(assert (=> d!1534110 m!5775430))

(declare-fun m!5775432 () Bool)

(assert (=> b!4794280 m!5775432))

(assert (=> b!4794220 d!1534110))

(declare-fun d!1534112 () Bool)

(declare-fun res!2038075 () Bool)

(declare-fun e!2993568 () Bool)

(assert (=> d!1534112 (=> res!2038075 e!2993568)))

(assert (=> d!1534112 (= res!2038075 (not (is-Cons!54236 (_2!31737 (h!60667 (toList!6937 lm!2473))))))))

(assert (=> d!1534112 (= (noDuplicateKeys!2342 (_2!31737 (h!60667 (toList!6937 lm!2473)))) e!2993568)))

(declare-fun b!4794287 () Bool)

(declare-fun e!2993569 () Bool)

(assert (=> b!4794287 (= e!2993568 e!2993569)))

(declare-fun res!2038076 () Bool)

(assert (=> b!4794287 (=> (not res!2038076) (not e!2993569))))

(assert (=> b!4794287 (= res!2038076 (not (containsKey!3961 (t!361810 (_2!31737 (h!60667 (toList!6937 lm!2473)))) (_1!31736 (h!60666 (_2!31737 (h!60667 (toList!6937 lm!2473))))))))))

(declare-fun b!4794288 () Bool)

(assert (=> b!4794288 (= e!2993569 (noDuplicateKeys!2342 (t!361810 (_2!31737 (h!60667 (toList!6937 lm!2473))))))))

(assert (= (and d!1534112 (not res!2038075)) b!4794287))

(assert (= (and b!4794287 res!2038076) b!4794288))

(declare-fun m!5775438 () Bool)

(assert (=> b!4794287 m!5775438))

(declare-fun m!5775440 () Bool)

(assert (=> b!4794288 m!5775440))

(assert (=> b!4794220 d!1534112))

(declare-fun b!4794313 () Bool)

(declare-fun e!2993592 () Bool)

(declare-datatypes ((List!54364 0))(
  ( (Nil!54240) (Cons!54240 (h!60670 K!15812) (t!361814 List!54364)) )
))
(declare-fun contains!17865 (List!54364 K!15812) Bool)

(declare-fun keys!19808 (ListMap!6409) List!54364)

(assert (=> b!4794313 (= e!2993592 (contains!17865 (keys!19808 (extractMap!2456 (toList!6937 lt!1952183))) key!5896))))

(declare-fun bm!335086 () Bool)

(declare-fun call!335091 () Bool)

(declare-fun e!2993591 () List!54364)

(assert (=> bm!335086 (= call!335091 (contains!17865 e!2993591 key!5896))))

(declare-fun c!817108 () Bool)

(declare-fun c!817109 () Bool)

(assert (=> bm!335086 (= c!817108 c!817109)))

(declare-fun b!4794314 () Bool)

(declare-fun getKeysList!1079 (List!54360) List!54364)

(assert (=> b!4794314 (= e!2993591 (getKeysList!1079 (toList!6938 (extractMap!2456 (toList!6937 lt!1952183)))))))

(declare-fun b!4794315 () Bool)

(declare-fun e!2993590 () Unit!140055)

(declare-fun lt!1952246 () Unit!140055)

(assert (=> b!4794315 (= e!2993590 lt!1952246)))

(declare-fun lt!1952245 () Unit!140055)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2149 (List!54360 K!15812) Unit!140055)

(assert (=> b!4794315 (= lt!1952245 (lemmaContainsKeyImpliesGetValueByKeyDefined!2149 (toList!6938 (extractMap!2456 (toList!6937 lt!1952183))) key!5896))))

(declare-datatypes ((Option!13112 0))(
  ( (None!13111) (Some!13111 (v!48408 V!16058)) )
))
(declare-fun isDefined!10254 (Option!13112) Bool)

(declare-fun getValueByKey!2357 (List!54360 K!15812) Option!13112)

(assert (=> b!4794315 (isDefined!10254 (getValueByKey!2357 (toList!6938 (extractMap!2456 (toList!6937 lt!1952183))) key!5896))))

(declare-fun lt!1952240 () Unit!140055)

(assert (=> b!4794315 (= lt!1952240 lt!1952245)))

(declare-fun lemmaInListThenGetKeysListContains!1074 (List!54360 K!15812) Unit!140055)

(assert (=> b!4794315 (= lt!1952246 (lemmaInListThenGetKeysListContains!1074 (toList!6938 (extractMap!2456 (toList!6937 lt!1952183))) key!5896))))

(assert (=> b!4794315 call!335091))

(declare-fun b!4794316 () Bool)

(declare-fun e!2993593 () Bool)

(assert (=> b!4794316 (= e!2993593 (not (contains!17865 (keys!19808 (extractMap!2456 (toList!6937 lt!1952183))) key!5896)))))

(declare-fun b!4794317 () Bool)

(assert (=> b!4794317 (= e!2993591 (keys!19808 (extractMap!2456 (toList!6937 lt!1952183))))))

(declare-fun d!1534114 () Bool)

(declare-fun e!2993588 () Bool)

(assert (=> d!1534114 e!2993588))

(declare-fun res!2038091 () Bool)

(assert (=> d!1534114 (=> res!2038091 e!2993588)))

(assert (=> d!1534114 (= res!2038091 e!2993593)))

(declare-fun res!2038089 () Bool)

(assert (=> d!1534114 (=> (not res!2038089) (not e!2993593))))

(declare-fun lt!1952247 () Bool)

(assert (=> d!1534114 (= res!2038089 (not lt!1952247))))

(declare-fun lt!1952241 () Bool)

(assert (=> d!1534114 (= lt!1952247 lt!1952241)))

(declare-fun lt!1952243 () Unit!140055)

(assert (=> d!1534114 (= lt!1952243 e!2993590)))

(assert (=> d!1534114 (= c!817109 lt!1952241)))

(declare-fun containsKey!3963 (List!54360 K!15812) Bool)

(assert (=> d!1534114 (= lt!1952241 (containsKey!3963 (toList!6938 (extractMap!2456 (toList!6937 lt!1952183))) key!5896))))

(assert (=> d!1534114 (= (contains!17860 (extractMap!2456 (toList!6937 lt!1952183)) key!5896) lt!1952247)))

(declare-fun b!4794318 () Bool)

(assert (=> b!4794318 (= e!2993588 e!2993592)))

(declare-fun res!2038090 () Bool)

(assert (=> b!4794318 (=> (not res!2038090) (not e!2993592))))

(assert (=> b!4794318 (= res!2038090 (isDefined!10254 (getValueByKey!2357 (toList!6938 (extractMap!2456 (toList!6937 lt!1952183))) key!5896)))))

(declare-fun b!4794319 () Bool)

(declare-fun e!2993589 () Unit!140055)

(declare-fun Unit!140059 () Unit!140055)

(assert (=> b!4794319 (= e!2993589 Unit!140059)))

(declare-fun b!4794320 () Bool)

(assert (=> b!4794320 (= e!2993590 e!2993589)))

(declare-fun c!817107 () Bool)

(assert (=> b!4794320 (= c!817107 call!335091)))

(declare-fun b!4794321 () Bool)

(assert (=> b!4794321 false))

(declare-fun lt!1952242 () Unit!140055)

(declare-fun lt!1952244 () Unit!140055)

(assert (=> b!4794321 (= lt!1952242 lt!1952244)))

(assert (=> b!4794321 (containsKey!3963 (toList!6938 (extractMap!2456 (toList!6937 lt!1952183))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1079 (List!54360 K!15812) Unit!140055)

(assert (=> b!4794321 (= lt!1952244 (lemmaInGetKeysListThenContainsKey!1079 (toList!6938 (extractMap!2456 (toList!6937 lt!1952183))) key!5896))))

(declare-fun Unit!140060 () Unit!140055)

(assert (=> b!4794321 (= e!2993589 Unit!140060)))

(assert (= (and d!1534114 c!817109) b!4794315))

(assert (= (and d!1534114 (not c!817109)) b!4794320))

(assert (= (and b!4794320 c!817107) b!4794321))

(assert (= (and b!4794320 (not c!817107)) b!4794319))

(assert (= (or b!4794315 b!4794320) bm!335086))

(assert (= (and bm!335086 c!817108) b!4794314))

(assert (= (and bm!335086 (not c!817108)) b!4794317))

(assert (= (and d!1534114 res!2038089) b!4794316))

(assert (= (and d!1534114 (not res!2038091)) b!4794318))

(assert (= (and b!4794318 res!2038090) b!4794313))

(declare-fun m!5775452 () Bool)

(assert (=> b!4794314 m!5775452))

(assert (=> b!4794316 m!5775334))

(declare-fun m!5775454 () Bool)

(assert (=> b!4794316 m!5775454))

(assert (=> b!4794316 m!5775454))

(declare-fun m!5775456 () Bool)

(assert (=> b!4794316 m!5775456))

(assert (=> b!4794317 m!5775334))

(assert (=> b!4794317 m!5775454))

(declare-fun m!5775458 () Bool)

(assert (=> b!4794321 m!5775458))

(declare-fun m!5775460 () Bool)

(assert (=> b!4794321 m!5775460))

(declare-fun m!5775462 () Bool)

(assert (=> b!4794315 m!5775462))

(declare-fun m!5775464 () Bool)

(assert (=> b!4794315 m!5775464))

(assert (=> b!4794315 m!5775464))

(declare-fun m!5775466 () Bool)

(assert (=> b!4794315 m!5775466))

(declare-fun m!5775468 () Bool)

(assert (=> b!4794315 m!5775468))

(declare-fun m!5775470 () Bool)

(assert (=> bm!335086 m!5775470))

(assert (=> b!4794313 m!5775334))

(assert (=> b!4794313 m!5775454))

(assert (=> b!4794313 m!5775454))

(assert (=> b!4794313 m!5775456))

(assert (=> b!4794318 m!5775464))

(assert (=> b!4794318 m!5775464))

(assert (=> b!4794318 m!5775466))

(assert (=> d!1534114 m!5775458))

(assert (=> b!4794220 d!1534114))

(declare-fun d!1534122 () Bool)

(declare-fun tail!9278 (List!54361) List!54361)

(assert (=> d!1534122 (= (tail!9276 lm!2473) (ListLongMap!5360 (tail!9278 (toList!6937 lm!2473))))))

(declare-fun bs!1155158 () Bool)

(assert (= bs!1155158 d!1534122))

(declare-fun m!5775472 () Bool)

(assert (=> bs!1155158 m!5775472))

(assert (=> b!4794220 d!1534122))

(declare-fun d!1534124 () Bool)

(declare-fun res!2038096 () Bool)

(declare-fun e!2993598 () Bool)

(assert (=> d!1534124 (=> res!2038096 e!2993598)))

(assert (=> d!1534124 (= res!2038096 (and (is-Cons!54236 (_2!31737 (h!60667 (toList!6937 lm!2473)))) (= (_1!31736 (h!60666 (_2!31737 (h!60667 (toList!6937 lm!2473))))) key!5896)))))

(assert (=> d!1534124 (= (containsKey!3961 (_2!31737 (h!60667 (toList!6937 lm!2473))) key!5896) e!2993598)))

(declare-fun b!4794326 () Bool)

(declare-fun e!2993599 () Bool)

(assert (=> b!4794326 (= e!2993598 e!2993599)))

(declare-fun res!2038097 () Bool)

(assert (=> b!4794326 (=> (not res!2038097) (not e!2993599))))

(assert (=> b!4794326 (= res!2038097 (is-Cons!54236 (_2!31737 (h!60667 (toList!6937 lm!2473)))))))

(declare-fun b!4794327 () Bool)

(assert (=> b!4794327 (= e!2993599 (containsKey!3961 (t!361810 (_2!31737 (h!60667 (toList!6937 lm!2473)))) key!5896))))

(assert (= (and d!1534124 (not res!2038096)) b!4794326))

(assert (= (and b!4794326 res!2038097) b!4794327))

(declare-fun m!5775474 () Bool)

(assert (=> b!4794327 m!5775474))

(assert (=> b!4794214 d!1534124))

(declare-fun d!1534126 () Bool)

(declare-fun isEmpty!29460 (Option!13110) Bool)

(assert (=> d!1534126 (= (isDefined!10252 (getPair!901 (apply!12998 lm!2473 lt!1952177) key!5896)) (not (isEmpty!29460 (getPair!901 (apply!12998 lm!2473 lt!1952177) key!5896))))))

(declare-fun bs!1155159 () Bool)

(assert (= bs!1155159 d!1534126))

(assert (=> bs!1155159 m!5775314))

(declare-fun m!5775476 () Bool)

(assert (=> bs!1155159 m!5775476))

(assert (=> b!4794219 d!1534126))

(declare-fun b!4794344 () Bool)

(declare-fun e!2993614 () Option!13110)

(assert (=> b!4794344 (= e!2993614 (Some!13109 (h!60666 (apply!12998 lm!2473 lt!1952177))))))

(declare-fun e!2993611 () Bool)

(declare-fun lt!1952250 () Option!13110)

(declare-fun b!4794345 () Bool)

(declare-fun get!18491 (Option!13110) tuple2!56884)

(assert (=> b!4794345 (= e!2993611 (contains!17863 (apply!12998 lm!2473 lt!1952177) (get!18491 lt!1952250)))))

(declare-fun b!4794346 () Bool)

(declare-fun e!2993613 () Option!13110)

(assert (=> b!4794346 (= e!2993614 e!2993613)))

(declare-fun c!817115 () Bool)

(assert (=> b!4794346 (= c!817115 (is-Cons!54236 (apply!12998 lm!2473 lt!1952177)))))

(declare-fun b!4794347 () Bool)

(assert (=> b!4794347 (= e!2993613 None!13109)))

(declare-fun b!4794348 () Bool)

(declare-fun e!2993610 () Bool)

(assert (=> b!4794348 (= e!2993610 e!2993611)))

(declare-fun res!2038106 () Bool)

(assert (=> b!4794348 (=> (not res!2038106) (not e!2993611))))

(assert (=> b!4794348 (= res!2038106 (isDefined!10252 lt!1952250))))

(declare-fun b!4794349 () Bool)

(declare-fun res!2038107 () Bool)

(assert (=> b!4794349 (=> (not res!2038107) (not e!2993611))))

(assert (=> b!4794349 (= res!2038107 (= (_1!31736 (get!18491 lt!1952250)) key!5896))))

(declare-fun d!1534128 () Bool)

(assert (=> d!1534128 e!2993610))

(declare-fun res!2038108 () Bool)

(assert (=> d!1534128 (=> res!2038108 e!2993610)))

(declare-fun e!2993612 () Bool)

(assert (=> d!1534128 (= res!2038108 e!2993612)))

(declare-fun res!2038109 () Bool)

(assert (=> d!1534128 (=> (not res!2038109) (not e!2993612))))

(assert (=> d!1534128 (= res!2038109 (isEmpty!29460 lt!1952250))))

(assert (=> d!1534128 (= lt!1952250 e!2993614)))

(declare-fun c!817114 () Bool)

(assert (=> d!1534128 (= c!817114 (and (is-Cons!54236 (apply!12998 lm!2473 lt!1952177)) (= (_1!31736 (h!60666 (apply!12998 lm!2473 lt!1952177))) key!5896)))))

(assert (=> d!1534128 (noDuplicateKeys!2342 (apply!12998 lm!2473 lt!1952177))))

(assert (=> d!1534128 (= (getPair!901 (apply!12998 lm!2473 lt!1952177) key!5896) lt!1952250)))

(declare-fun b!4794350 () Bool)

(assert (=> b!4794350 (= e!2993613 (getPair!901 (t!361810 (apply!12998 lm!2473 lt!1952177)) key!5896))))

(declare-fun b!4794351 () Bool)

(assert (=> b!4794351 (= e!2993612 (not (containsKey!3961 (apply!12998 lm!2473 lt!1952177) key!5896)))))

(assert (= (and d!1534128 c!817114) b!4794344))

(assert (= (and d!1534128 (not c!817114)) b!4794346))

(assert (= (and b!4794346 c!817115) b!4794350))

(assert (= (and b!4794346 (not c!817115)) b!4794347))

(assert (= (and d!1534128 res!2038109) b!4794351))

(assert (= (and d!1534128 (not res!2038108)) b!4794348))

(assert (= (and b!4794348 res!2038106) b!4794349))

(assert (= (and b!4794349 res!2038107) b!4794345))

(declare-fun m!5775478 () Bool)

(assert (=> d!1534128 m!5775478))

(assert (=> d!1534128 m!5775312))

(declare-fun m!5775480 () Bool)

(assert (=> d!1534128 m!5775480))

(declare-fun m!5775482 () Bool)

(assert (=> b!4794349 m!5775482))

(assert (=> b!4794351 m!5775312))

(declare-fun m!5775484 () Bool)

(assert (=> b!4794351 m!5775484))

(declare-fun m!5775486 () Bool)

(assert (=> b!4794348 m!5775486))

(assert (=> b!4794345 m!5775482))

(assert (=> b!4794345 m!5775312))

(assert (=> b!4794345 m!5775482))

(declare-fun m!5775488 () Bool)

(assert (=> b!4794345 m!5775488))

(declare-fun m!5775490 () Bool)

(assert (=> b!4794350 m!5775490))

(assert (=> b!4794219 d!1534128))

(declare-fun d!1534130 () Bool)

(declare-datatypes ((Option!13113 0))(
  ( (None!13112) (Some!13112 (v!48409 List!54360)) )
))
(declare-fun get!18492 (Option!13113) List!54360)

(declare-fun getValueByKey!2358 (List!54361 (_ BitVec 64)) Option!13113)

(assert (=> d!1534130 (= (apply!12998 lm!2473 lt!1952177) (get!18492 (getValueByKey!2358 (toList!6937 lm!2473) lt!1952177)))))

(declare-fun bs!1155160 () Bool)

(assert (= bs!1155160 d!1534130))

(declare-fun m!5775492 () Bool)

(assert (=> bs!1155160 m!5775492))

(assert (=> bs!1155160 m!5775492))

(declare-fun m!5775494 () Bool)

(assert (=> bs!1155160 m!5775494))

(assert (=> b!4794219 d!1534130))

(declare-fun bs!1155161 () Bool)

(declare-fun d!1534132 () Bool)

(assert (= bs!1155161 (and d!1534132 d!1534102)))

(declare-fun lambda!230968 () Int)

(assert (=> bs!1155161 (not (= lambda!230968 lambda!230958))))

(declare-fun bs!1155162 () Bool)

(assert (= bs!1155162 (and d!1534132 d!1534106)))

(assert (=> bs!1155162 (not (= lambda!230968 lambda!230961))))

(declare-fun bs!1155163 () Bool)

(assert (= bs!1155163 (and d!1534132 b!4794220)))

(assert (=> bs!1155163 (= lambda!230968 lambda!230945)))

(declare-fun bs!1155164 () Bool)

(assert (= bs!1155164 (and d!1534132 start!493988)))

(assert (=> bs!1155164 (not (= lambda!230968 lambda!230944))))

(declare-fun bs!1155165 () Bool)

(assert (= bs!1155165 (and d!1534132 d!1534108)))

(assert (=> bs!1155165 (not (= lambda!230968 lambda!230964))))

(assert (=> d!1534132 true))

(assert (=> d!1534132 (= (allKeysSameHashInMap!2334 lm!2473 hashF!1559) (forall!12266 (toList!6937 lm!2473) lambda!230968))))

(declare-fun bs!1155166 () Bool)

(assert (= bs!1155166 d!1534132))

(declare-fun m!5775496 () Bool)

(assert (=> bs!1155166 m!5775496))

(assert (=> b!4794213 d!1534132))

(declare-fun b!4794352 () Bool)

(declare-fun e!2993619 () Bool)

(assert (=> b!4794352 (= e!2993619 (contains!17865 (keys!19808 (extractMap!2456 (toList!6937 lm!2473))) key!5896))))

(declare-fun bm!335087 () Bool)

(declare-fun call!335092 () Bool)

(declare-fun e!2993618 () List!54364)

(assert (=> bm!335087 (= call!335092 (contains!17865 e!2993618 key!5896))))

(declare-fun c!817117 () Bool)

(declare-fun c!817118 () Bool)

(assert (=> bm!335087 (= c!817117 c!817118)))

(declare-fun b!4794353 () Bool)

(assert (=> b!4794353 (= e!2993618 (getKeysList!1079 (toList!6938 (extractMap!2456 (toList!6937 lm!2473)))))))

(declare-fun b!4794354 () Bool)

(declare-fun e!2993617 () Unit!140055)

(declare-fun lt!1952257 () Unit!140055)

(assert (=> b!4794354 (= e!2993617 lt!1952257)))

(declare-fun lt!1952256 () Unit!140055)

(assert (=> b!4794354 (= lt!1952256 (lemmaContainsKeyImpliesGetValueByKeyDefined!2149 (toList!6938 (extractMap!2456 (toList!6937 lm!2473))) key!5896))))

(assert (=> b!4794354 (isDefined!10254 (getValueByKey!2357 (toList!6938 (extractMap!2456 (toList!6937 lm!2473))) key!5896))))

(declare-fun lt!1952251 () Unit!140055)

(assert (=> b!4794354 (= lt!1952251 lt!1952256)))

(assert (=> b!4794354 (= lt!1952257 (lemmaInListThenGetKeysListContains!1074 (toList!6938 (extractMap!2456 (toList!6937 lm!2473))) key!5896))))

(assert (=> b!4794354 call!335092))

(declare-fun b!4794355 () Bool)

(declare-fun e!2993620 () Bool)

(assert (=> b!4794355 (= e!2993620 (not (contains!17865 (keys!19808 (extractMap!2456 (toList!6937 lm!2473))) key!5896)))))

(declare-fun b!4794356 () Bool)

(assert (=> b!4794356 (= e!2993618 (keys!19808 (extractMap!2456 (toList!6937 lm!2473))))))

(declare-fun d!1534134 () Bool)

(declare-fun e!2993615 () Bool)

(assert (=> d!1534134 e!2993615))

(declare-fun res!2038112 () Bool)

(assert (=> d!1534134 (=> res!2038112 e!2993615)))

(assert (=> d!1534134 (= res!2038112 e!2993620)))

(declare-fun res!2038110 () Bool)

(assert (=> d!1534134 (=> (not res!2038110) (not e!2993620))))

(declare-fun lt!1952258 () Bool)

(assert (=> d!1534134 (= res!2038110 (not lt!1952258))))

(declare-fun lt!1952252 () Bool)

(assert (=> d!1534134 (= lt!1952258 lt!1952252)))

(declare-fun lt!1952254 () Unit!140055)

(assert (=> d!1534134 (= lt!1952254 e!2993617)))

(assert (=> d!1534134 (= c!817118 lt!1952252)))

(assert (=> d!1534134 (= lt!1952252 (containsKey!3963 (toList!6938 (extractMap!2456 (toList!6937 lm!2473))) key!5896))))

(assert (=> d!1534134 (= (contains!17860 (extractMap!2456 (toList!6937 lm!2473)) key!5896) lt!1952258)))

(declare-fun b!4794357 () Bool)

(assert (=> b!4794357 (= e!2993615 e!2993619)))

(declare-fun res!2038111 () Bool)

(assert (=> b!4794357 (=> (not res!2038111) (not e!2993619))))

(assert (=> b!4794357 (= res!2038111 (isDefined!10254 (getValueByKey!2357 (toList!6938 (extractMap!2456 (toList!6937 lm!2473))) key!5896)))))

(declare-fun b!4794358 () Bool)

(declare-fun e!2993616 () Unit!140055)

(declare-fun Unit!140061 () Unit!140055)

(assert (=> b!4794358 (= e!2993616 Unit!140061)))

(declare-fun b!4794359 () Bool)

(assert (=> b!4794359 (= e!2993617 e!2993616)))

(declare-fun c!817116 () Bool)

(assert (=> b!4794359 (= c!817116 call!335092)))

(declare-fun b!4794360 () Bool)

(assert (=> b!4794360 false))

(declare-fun lt!1952253 () Unit!140055)

(declare-fun lt!1952255 () Unit!140055)

(assert (=> b!4794360 (= lt!1952253 lt!1952255)))

(assert (=> b!4794360 (containsKey!3963 (toList!6938 (extractMap!2456 (toList!6937 lm!2473))) key!5896)))

(assert (=> b!4794360 (= lt!1952255 (lemmaInGetKeysListThenContainsKey!1079 (toList!6938 (extractMap!2456 (toList!6937 lm!2473))) key!5896))))

(declare-fun Unit!140062 () Unit!140055)

(assert (=> b!4794360 (= e!2993616 Unit!140062)))

(assert (= (and d!1534134 c!817118) b!4794354))

(assert (= (and d!1534134 (not c!817118)) b!4794359))

(assert (= (and b!4794359 c!817116) b!4794360))

(assert (= (and b!4794359 (not c!817116)) b!4794358))

(assert (= (or b!4794354 b!4794359) bm!335087))

(assert (= (and bm!335087 c!817117) b!4794353))

(assert (= (and bm!335087 (not c!817117)) b!4794356))

(assert (= (and d!1534134 res!2038110) b!4794355))

(assert (= (and d!1534134 (not res!2038112)) b!4794357))

(assert (= (and b!4794357 res!2038111) b!4794352))

(declare-fun m!5775498 () Bool)

(assert (=> b!4794353 m!5775498))

(assert (=> b!4794355 m!5775320))

(declare-fun m!5775500 () Bool)

(assert (=> b!4794355 m!5775500))

(assert (=> b!4794355 m!5775500))

(declare-fun m!5775502 () Bool)

(assert (=> b!4794355 m!5775502))

(assert (=> b!4794356 m!5775320))

(assert (=> b!4794356 m!5775500))

(declare-fun m!5775504 () Bool)

(assert (=> b!4794360 m!5775504))

(declare-fun m!5775506 () Bool)

(assert (=> b!4794360 m!5775506))

(declare-fun m!5775508 () Bool)

(assert (=> b!4794354 m!5775508))

(declare-fun m!5775510 () Bool)

(assert (=> b!4794354 m!5775510))

(assert (=> b!4794354 m!5775510))

(declare-fun m!5775512 () Bool)

(assert (=> b!4794354 m!5775512))

(declare-fun m!5775514 () Bool)

(assert (=> b!4794354 m!5775514))

(declare-fun m!5775516 () Bool)

(assert (=> bm!335087 m!5775516))

(assert (=> b!4794352 m!5775320))

(assert (=> b!4794352 m!5775500))

(assert (=> b!4794352 m!5775500))

(assert (=> b!4794352 m!5775502))

(assert (=> b!4794357 m!5775510))

(assert (=> b!4794357 m!5775510))

(assert (=> b!4794357 m!5775512))

(assert (=> d!1534134 m!5775504))

(assert (=> b!4794218 d!1534134))

(declare-fun bs!1155167 () Bool)

(declare-fun d!1534136 () Bool)

(assert (= bs!1155167 (and d!1534136 d!1534102)))

(declare-fun lambda!230969 () Int)

(assert (=> bs!1155167 (= lambda!230969 lambda!230958)))

(declare-fun bs!1155168 () Bool)

(assert (= bs!1155168 (and d!1534136 d!1534106)))

(assert (=> bs!1155168 (= lambda!230969 lambda!230961)))

(declare-fun bs!1155169 () Bool)

(assert (= bs!1155169 (and d!1534136 b!4794220)))

(assert (=> bs!1155169 (not (= lambda!230969 lambda!230945))))

(declare-fun bs!1155170 () Bool)

(assert (= bs!1155170 (and d!1534136 start!493988)))

(assert (=> bs!1155170 (= lambda!230969 lambda!230944)))

(declare-fun bs!1155171 () Bool)

(assert (= bs!1155171 (and d!1534136 d!1534108)))

(assert (=> bs!1155171 (= lambda!230969 lambda!230964)))

(declare-fun bs!1155172 () Bool)

(assert (= bs!1155172 (and d!1534136 d!1534132)))

(assert (=> bs!1155172 (not (= lambda!230969 lambda!230968))))

(declare-fun lt!1952259 () ListMap!6409)

(assert (=> d!1534136 (invariantList!1733 (toList!6938 lt!1952259))))

(declare-fun e!2993621 () ListMap!6409)

(assert (=> d!1534136 (= lt!1952259 e!2993621)))

(declare-fun c!817119 () Bool)

(assert (=> d!1534136 (= c!817119 (is-Cons!54237 (toList!6937 lm!2473)))))

(assert (=> d!1534136 (forall!12266 (toList!6937 lm!2473) lambda!230969)))

(assert (=> d!1534136 (= (extractMap!2456 (toList!6937 lm!2473)) lt!1952259)))

(declare-fun b!4794361 () Bool)

(assert (=> b!4794361 (= e!2993621 (addToMapMapFromBucket!1710 (_2!31737 (h!60667 (toList!6937 lm!2473))) (extractMap!2456 (t!361811 (toList!6937 lm!2473)))))))

(declare-fun b!4794362 () Bool)

(assert (=> b!4794362 (= e!2993621 (ListMap!6410 Nil!54236))))

(assert (= (and d!1534136 c!817119) b!4794361))

(assert (= (and d!1534136 (not c!817119)) b!4794362))

(declare-fun m!5775518 () Bool)

(assert (=> d!1534136 m!5775518))

(declare-fun m!5775520 () Bool)

(assert (=> d!1534136 m!5775520))

(assert (=> b!4794361 m!5775338))

(assert (=> b!4794361 m!5775338))

(declare-fun m!5775522 () Bool)

(assert (=> b!4794361 m!5775522))

(assert (=> b!4794218 d!1534136))

(declare-fun d!1534138 () Bool)

(declare-fun res!2038120 () Bool)

(declare-fun e!2993636 () Bool)

(assert (=> d!1534138 (=> res!2038120 e!2993636)))

(declare-fun e!2993635 () Bool)

(assert (=> d!1534138 (= res!2038120 e!2993635)))

(declare-fun res!2038121 () Bool)

(assert (=> d!1534138 (=> (not res!2038121) (not e!2993635))))

(assert (=> d!1534138 (= res!2038121 (is-Cons!54237 (toList!6937 lm!2473)))))

(assert (=> d!1534138 (= (containsKeyBiggerList!571 (toList!6937 lm!2473) key!5896) e!2993636)))

(declare-fun b!4794381 () Bool)

(assert (=> b!4794381 (= e!2993635 (containsKey!3961 (_2!31737 (h!60667 (toList!6937 lm!2473))) key!5896))))

(declare-fun b!4794382 () Bool)

(declare-fun e!2993634 () Bool)

(assert (=> b!4794382 (= e!2993636 e!2993634)))

(declare-fun res!2038119 () Bool)

(assert (=> b!4794382 (=> (not res!2038119) (not e!2993634))))

(assert (=> b!4794382 (= res!2038119 (is-Cons!54237 (toList!6937 lm!2473)))))

(declare-fun b!4794383 () Bool)

(assert (=> b!4794383 (= e!2993634 (containsKeyBiggerList!571 (t!361811 (toList!6937 lm!2473)) key!5896))))

(assert (= (and d!1534138 res!2038121) b!4794381))

(assert (= (and d!1534138 (not res!2038120)) b!4794382))

(assert (= (and b!4794382 res!2038119) b!4794383))

(assert (=> b!4794381 m!5775318))

(declare-fun m!5775524 () Bool)

(assert (=> b!4794383 m!5775524))

(assert (=> b!4794217 d!1534138))

(declare-fun bs!1155173 () Bool)

(declare-fun d!1534140 () Bool)

(assert (= bs!1155173 (and d!1534140 d!1534102)))

(declare-fun lambda!230972 () Int)

(assert (=> bs!1155173 (= lambda!230972 lambda!230958)))

(declare-fun bs!1155174 () Bool)

(assert (= bs!1155174 (and d!1534140 d!1534106)))

(assert (=> bs!1155174 (= lambda!230972 lambda!230961)))

(declare-fun bs!1155175 () Bool)

(assert (= bs!1155175 (and d!1534140 b!4794220)))

(assert (=> bs!1155175 (not (= lambda!230972 lambda!230945))))

(declare-fun bs!1155176 () Bool)

(assert (= bs!1155176 (and d!1534140 start!493988)))

(assert (=> bs!1155176 (= lambda!230972 lambda!230944)))

(declare-fun bs!1155177 () Bool)

(assert (= bs!1155177 (and d!1534140 d!1534108)))

(assert (=> bs!1155177 (= lambda!230972 lambda!230964)))

(declare-fun bs!1155178 () Bool)

(assert (= bs!1155178 (and d!1534140 d!1534132)))

(assert (=> bs!1155178 (not (= lambda!230972 lambda!230968))))

(declare-fun bs!1155179 () Bool)

(assert (= bs!1155179 (and d!1534140 d!1534136)))

(assert (=> bs!1155179 (= lambda!230972 lambda!230969)))

(assert (=> d!1534140 (containsKeyBiggerList!571 (toList!6937 lm!2473) key!5896)))

(declare-fun lt!1952278 () Unit!140055)

(declare-fun choose!34555 (ListLongMap!5359 K!15812 Hashable!6929) Unit!140055)

(assert (=> d!1534140 (= lt!1952278 (choose!34555 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1534140 (forall!12266 (toList!6937 lm!2473) lambda!230972)))

(assert (=> d!1534140 (= (lemmaInLongMapThenContainsKeyBiggerList!311 lm!2473 key!5896 hashF!1559) lt!1952278)))

(declare-fun bs!1155180 () Bool)

(assert (= bs!1155180 d!1534140))

(assert (=> bs!1155180 m!5775302))

(declare-fun m!5775526 () Bool)

(assert (=> bs!1155180 m!5775526))

(declare-fun m!5775528 () Bool)

(assert (=> bs!1155180 m!5775528))

(assert (=> b!4794217 d!1534140))

(declare-fun bs!1155181 () Bool)

(declare-fun d!1534142 () Bool)

(assert (= bs!1155181 (and d!1534142 d!1534102)))

(declare-fun lambda!230975 () Int)

(assert (=> bs!1155181 (= lambda!230975 lambda!230958)))

(declare-fun bs!1155182 () Bool)

(assert (= bs!1155182 (and d!1534142 d!1534106)))

(assert (=> bs!1155182 (= lambda!230975 lambda!230961)))

(declare-fun bs!1155183 () Bool)

(assert (= bs!1155183 (and d!1534142 b!4794220)))

(assert (=> bs!1155183 (not (= lambda!230975 lambda!230945))))

(declare-fun bs!1155184 () Bool)

(assert (= bs!1155184 (and d!1534142 start!493988)))

(assert (=> bs!1155184 (= lambda!230975 lambda!230944)))

(declare-fun bs!1155185 () Bool)

(assert (= bs!1155185 (and d!1534142 d!1534132)))

(assert (=> bs!1155185 (not (= lambda!230975 lambda!230968))))

(declare-fun bs!1155186 () Bool)

(assert (= bs!1155186 (and d!1534142 d!1534136)))

(assert (=> bs!1155186 (= lambda!230975 lambda!230969)))

(declare-fun bs!1155187 () Bool)

(assert (= bs!1155187 (and d!1534142 d!1534140)))

(assert (=> bs!1155187 (= lambda!230975 lambda!230972)))

(declare-fun bs!1155188 () Bool)

(assert (= bs!1155188 (and d!1534142 d!1534108)))

(assert (=> bs!1155188 (= lambda!230975 lambda!230964)))

(declare-fun e!2993651 () Bool)

(assert (=> d!1534142 e!2993651))

(declare-fun res!2038133 () Bool)

(assert (=> d!1534142 (=> (not res!2038133) (not e!2993651))))

(assert (=> d!1534142 (= res!2038133 (contains!17859 lm!2473 (hash!4968 hashF!1559 key!5896)))))

(declare-fun lt!1952289 () Unit!140055)

(declare-fun choose!34556 (ListLongMap!5359 K!15812 Hashable!6929) Unit!140055)

(assert (=> d!1534142 (= lt!1952289 (choose!34556 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1534142 (forall!12266 (toList!6937 lm!2473) lambda!230975)))

(assert (=> d!1534142 (= (lemmaInGenericMapThenInLongMap!333 lm!2473 key!5896 hashF!1559) lt!1952289)))

(declare-fun b!4794401 () Bool)

(assert (=> b!4794401 (= e!2993651 (isDefined!10252 (getPair!901 (apply!12998 lm!2473 (hash!4968 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1534142 res!2038133) b!4794401))

(assert (=> d!1534142 m!5775304))

(assert (=> d!1534142 m!5775304))

(declare-fun m!5775530 () Bool)

(assert (=> d!1534142 m!5775530))

(declare-fun m!5775532 () Bool)

(assert (=> d!1534142 m!5775532))

(declare-fun m!5775534 () Bool)

(assert (=> d!1534142 m!5775534))

(assert (=> b!4794401 m!5775304))

(assert (=> b!4794401 m!5775304))

(declare-fun m!5775538 () Bool)

(assert (=> b!4794401 m!5775538))

(assert (=> b!4794401 m!5775538))

(declare-fun m!5775540 () Bool)

(assert (=> b!4794401 m!5775540))

(assert (=> b!4794401 m!5775540))

(declare-fun m!5775544 () Bool)

(assert (=> b!4794401 m!5775544))

(assert (=> b!4794217 d!1534142))

(declare-fun d!1534144 () Bool)

(declare-fun c!817131 () Bool)

(declare-fun e!2993657 () Bool)

(assert (=> d!1534144 (= c!817131 e!2993657)))

(declare-fun res!2038136 () Bool)

(assert (=> d!1534144 (=> (not res!2038136) (not e!2993657))))

(assert (=> d!1534144 (= res!2038136 (is-Cons!54237 (toList!6937 lm!2473)))))

(declare-fun e!2993656 () V!16058)

(assert (=> d!1534144 (= (getValue!117 (toList!6937 lm!2473) key!5896) e!2993656)))

(declare-fun b!4794410 () Bool)

(assert (=> b!4794410 (= e!2993657 (containsKey!3961 (_2!31737 (h!60667 (toList!6937 lm!2473))) key!5896))))

(declare-fun b!4794408 () Bool)

(assert (=> b!4794408 (= e!2993656 (_2!31736 (get!18491 (getPair!901 (_2!31737 (h!60667 (toList!6937 lm!2473))) key!5896))))))

(declare-fun b!4794409 () Bool)

(assert (=> b!4794409 (= e!2993656 (getValue!117 (t!361811 (toList!6937 lm!2473)) key!5896))))

(assert (= (and d!1534144 res!2038136) b!4794410))

(assert (= (and d!1534144 c!817131) b!4794408))

(assert (= (and d!1534144 (not c!817131)) b!4794409))

(assert (=> b!4794410 m!5775318))

(declare-fun m!5775562 () Bool)

(assert (=> b!4794408 m!5775562))

(assert (=> b!4794408 m!5775562))

(declare-fun m!5775564 () Bool)

(assert (=> b!4794408 m!5775564))

(declare-fun m!5775566 () Bool)

(assert (=> b!4794409 m!5775566))

(assert (=> b!4794217 d!1534144))

(declare-fun d!1534148 () Bool)

(declare-fun e!2993666 () Bool)

(assert (=> d!1534148 e!2993666))

(declare-fun res!2038142 () Bool)

(assert (=> d!1534148 (=> res!2038142 e!2993666)))

(declare-fun lt!1952304 () Bool)

(assert (=> d!1534148 (= res!2038142 (not lt!1952304))))

(declare-fun lt!1952303 () Bool)

(assert (=> d!1534148 (= lt!1952304 lt!1952303)))

(declare-fun lt!1952301 () Unit!140055)

(declare-fun e!2993665 () Unit!140055)

(assert (=> d!1534148 (= lt!1952301 e!2993665)))

(declare-fun c!817134 () Bool)

(assert (=> d!1534148 (= c!817134 lt!1952303)))

(declare-fun containsKey!3964 (List!54361 (_ BitVec 64)) Bool)

(assert (=> d!1534148 (= lt!1952303 (containsKey!3964 (toList!6937 lm!2473) lt!1952177))))

(assert (=> d!1534148 (= (contains!17859 lm!2473 lt!1952177) lt!1952304)))

(declare-fun b!4794420 () Bool)

(declare-fun lt!1952302 () Unit!140055)

(assert (=> b!4794420 (= e!2993665 lt!1952302)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2150 (List!54361 (_ BitVec 64)) Unit!140055)

(assert (=> b!4794420 (= lt!1952302 (lemmaContainsKeyImpliesGetValueByKeyDefined!2150 (toList!6937 lm!2473) lt!1952177))))

(declare-fun isDefined!10255 (Option!13113) Bool)

(assert (=> b!4794420 (isDefined!10255 (getValueByKey!2358 (toList!6937 lm!2473) lt!1952177))))

(declare-fun b!4794421 () Bool)

(declare-fun Unit!140063 () Unit!140055)

(assert (=> b!4794421 (= e!2993665 Unit!140063)))

(declare-fun b!4794422 () Bool)

(assert (=> b!4794422 (= e!2993666 (isDefined!10255 (getValueByKey!2358 (toList!6937 lm!2473) lt!1952177)))))

(assert (= (and d!1534148 c!817134) b!4794420))

(assert (= (and d!1534148 (not c!817134)) b!4794421))

(assert (= (and d!1534148 (not res!2038142)) b!4794422))

(declare-fun m!5775576 () Bool)

(assert (=> d!1534148 m!5775576))

(declare-fun m!5775578 () Bool)

(assert (=> b!4794420 m!5775578))

(assert (=> b!4794420 m!5775492))

(assert (=> b!4794420 m!5775492))

(declare-fun m!5775580 () Bool)

(assert (=> b!4794420 m!5775580))

(assert (=> b!4794422 m!5775492))

(assert (=> b!4794422 m!5775492))

(assert (=> b!4794422 m!5775580))

(assert (=> b!4794217 d!1534148))

(declare-fun d!1534152 () Bool)

(declare-fun hash!4970 (Hashable!6929 K!15812) (_ BitVec 64))

(assert (=> d!1534152 (= (hash!4968 hashF!1559 key!5896) (hash!4970 hashF!1559 key!5896))))

(declare-fun bs!1155189 () Bool)

(assert (= bs!1155189 d!1534152))

(declare-fun m!5775582 () Bool)

(assert (=> bs!1155189 m!5775582))

(assert (=> b!4794217 d!1534152))

(declare-fun b!4794427 () Bool)

(declare-fun e!2993669 () Bool)

(declare-fun tp!1358103 () Bool)

(declare-fun tp!1358104 () Bool)

(assert (=> b!4794427 (= e!2993669 (and tp!1358103 tp!1358104))))

(assert (=> b!4794216 (= tp!1358095 e!2993669)))

(assert (= (and b!4794216 (is-Cons!54237 (toList!6937 lm!2473))) b!4794427))

(declare-fun b_lambda!186939 () Bool)

(assert (= b_lambda!186935 (or b!4794220 b_lambda!186939)))

(declare-fun bs!1155190 () Bool)

(declare-fun d!1534154 () Bool)

(assert (= bs!1155190 (and d!1534154 b!4794220)))

(declare-fun allKeysSameHash!1961 (List!54360 (_ BitVec 64) Hashable!6929) Bool)

(assert (=> bs!1155190 (= (dynLambda!22065 lambda!230945 (h!60667 (toList!6937 lm!2473))) (allKeysSameHash!1961 (_2!31737 (h!60667 (toList!6937 lm!2473))) (_1!31737 (h!60667 (toList!6937 lm!2473))) hashF!1559))))

(declare-fun m!5775584 () Bool)

(assert (=> bs!1155190 m!5775584))

(assert (=> d!1534110 d!1534154))

(declare-fun b_lambda!186941 () Bool)

(assert (= b_lambda!186931 (or start!493988 b_lambda!186941)))

(declare-fun bs!1155191 () Bool)

(declare-fun d!1534156 () Bool)

(assert (= bs!1155191 (and d!1534156 start!493988)))

(assert (=> bs!1155191 (= (dynLambda!22065 lambda!230944 (h!60667 (toList!6937 lm!2473))) (noDuplicateKeys!2342 (_2!31737 (h!60667 (toList!6937 lm!2473)))))))

(assert (=> bs!1155191 m!5775340))

(assert (=> b!4794261 d!1534156))

(declare-fun b_lambda!186943 () Bool)

(assert (= b_lambda!186933 (or b!4794220 b_lambda!186943)))

(declare-fun bs!1155192 () Bool)

(declare-fun d!1534158 () Bool)

(assert (= bs!1155192 (and d!1534158 b!4794220)))

(assert (=> bs!1155192 (= (dynLambda!22066 lambda!230946 (tuple2!56885 key!5896 value!3111)) (= (hash!4968 hashF!1559 (_1!31736 (tuple2!56885 key!5896 value!3111))) (_1!31737 (h!60667 (toList!6937 lm!2473)))))))

(declare-fun m!5775586 () Bool)

(assert (=> bs!1155192 m!5775586))

(assert (=> d!1534100 d!1534158))

(push 1)

(assert (not b!4794262))

(assert (not bs!1155191))

(assert (not d!1534122))

(assert (not b!4794327))

(assert (not b!4794288))

(assert (not b!4794356))

(assert (not b!4794354))

(assert (not b!4794427))

(assert (not d!1534126))

(assert (not d!1534106))

(assert (not b!4794381))

(assert (not b!4794409))

(assert (not b!4794353))

(assert (not d!1534136))

(assert (not b!4794313))

(assert (not b_lambda!186941))

(assert (not b!4794360))

(assert (not d!1534102))

(assert (not b!4794272))

(assert (not d!1534148))

(assert (not d!1534142))

(assert (not b!4794321))

(assert (not d!1534130))

(assert (not b_lambda!186939))

(assert (not b!4794351))

(assert (not d!1534140))

(assert (not d!1534114))

(assert tp_is_empty!33577)

(assert (not b!4794352))

(assert (not bm!335086))

(assert (not b!4794318))

(assert (not d!1534100))

(assert (not b!4794420))

(assert (not b!4794349))

(assert tp_is_empty!33579)

(assert (not b!4794355))

(assert (not b!4794410))

(assert (not b!4794315))

(assert (not d!1534132))

(assert (not b!4794383))

(assert (not bm!335087))

(assert (not b!4794408))

(assert (not d!1534098))

(assert (not b!4794317))

(assert (not b!4794287))

(assert (not b!4794348))

(assert (not b!4794350))

(assert (not d!1534134))

(assert (not b!4794265))

(assert (not b!4794280))

(assert (not d!1534108))

(assert (not b_lambda!186943))

(assert (not b!4794316))

(assert (not bs!1155190))

(assert (not b!4794401))

(assert (not d!1534128))

(assert (not d!1534152))

(assert (not b!4794314))

(assert (not bs!1155192))

(assert (not b!4794361))

(assert (not b!4794345))

(assert (not b!4794357))

(assert (not b!4794270))

(assert (not d!1534110))

(assert (not b!4794422))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

