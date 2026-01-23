; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!488700 () Bool)

(assert start!488700)

(declare-fun b!4772387 () Bool)

(declare-fun e!2979269 () Bool)

(declare-fun e!2979267 () Bool)

(assert (=> b!4772387 (= e!2979269 e!2979267)))

(declare-fun res!2024485 () Bool)

(assert (=> b!4772387 (=> (not res!2024485) (not e!2979267))))

(declare-datatypes ((K!15202 0))(
  ( (K!15203 (val!20467 Int)) )
))
(declare-datatypes ((V!15448 0))(
  ( (V!15449 (val!20468 Int)) )
))
(declare-datatypes ((tuple2!55908 0))(
  ( (tuple2!55909 (_1!31248 K!15202) (_2!31248 V!15448)) )
))
(declare-datatypes ((List!53805 0))(
  ( (Nil!53681) (Cons!53681 (h!60093 tuple2!55908) (t!361255 List!53805)) )
))
(declare-datatypes ((ListMap!5937 0))(
  ( (ListMap!5938 (toList!6457 List!53805)) )
))
(declare-fun lt!1935419 () ListMap!5937)

(declare-fun key!2872 () K!15202)

(declare-fun contains!17106 (ListMap!5937 K!15202) Bool)

(assert (=> b!4772387 (= res!2024485 (contains!17106 lt!1935419 key!2872))))

(declare-datatypes ((tuple2!55910 0))(
  ( (tuple2!55911 (_1!31249 (_ BitVec 64)) (_2!31249 List!53805)) )
))
(declare-datatypes ((List!53806 0))(
  ( (Nil!53682) (Cons!53682 (h!60094 tuple2!55910) (t!361256 List!53806)) )
))
(declare-datatypes ((ListLongMap!4871 0))(
  ( (ListLongMap!4872 (toList!6458 List!53806)) )
))
(declare-fun lm!1309 () ListLongMap!4871)

(declare-fun extractMap!2220 (List!53806) ListMap!5937)

(assert (=> b!4772387 (= lt!1935419 (extractMap!2220 (toList!6458 lm!1309)))))

(declare-fun b!4772388 () Bool)

(declare-fun e!2979266 () Bool)

(assert (=> b!4772388 (= e!2979267 (not e!2979266))))

(declare-fun res!2024482 () Bool)

(assert (=> b!4772388 (=> res!2024482 e!2979266)))

(declare-datatypes ((Option!12783 0))(
  ( (None!12782) (Some!12782 (v!47915 tuple2!55908)) )
))
(declare-fun lt!1935410 () Option!12783)

(declare-fun v!9615 () V!15448)

(declare-fun get!18166 (Option!12783) tuple2!55908)

(assert (=> b!4772388 (= res!2024482 (not (= (_2!31248 (get!18166 lt!1935410)) v!9615)))))

(declare-fun isDefined!9929 (Option!12783) Bool)

(assert (=> b!4772388 (isDefined!9929 lt!1935410)))

(declare-fun lt!1935417 () List!53805)

(declare-fun getPair!705 (List!53805 K!15202) Option!12783)

(assert (=> b!4772388 (= lt!1935410 (getPair!705 lt!1935417 key!2872))))

(declare-fun lambda!225600 () Int)

(declare-datatypes ((Unit!138579 0))(
  ( (Unit!138580) )
))
(declare-fun lt!1935423 () Unit!138579)

(declare-fun lt!1935411 () tuple2!55910)

(declare-fun forallContained!3930 (List!53806 Int tuple2!55910) Unit!138579)

(assert (=> b!4772388 (= lt!1935423 (forallContained!3930 (toList!6458 lm!1309) lambda!225600 lt!1935411))))

(declare-datatypes ((Hashable!6685 0))(
  ( (HashableExt!6684 (__x!32708 Int)) )
))
(declare-fun hashF!980 () Hashable!6685)

(declare-fun lt!1935415 () Unit!138579)

(declare-fun lemmaInGenMapThenGetPairDefined!479 (ListLongMap!4871 K!15202 Hashable!6685) Unit!138579)

(assert (=> b!4772388 (= lt!1935415 (lemmaInGenMapThenGetPairDefined!479 lm!1309 key!2872 hashF!980))))

(declare-fun lt!1935408 () Unit!138579)

(assert (=> b!4772388 (= lt!1935408 (forallContained!3930 (toList!6458 lm!1309) lambda!225600 lt!1935411))))

(declare-fun contains!17107 (List!53806 tuple2!55910) Bool)

(assert (=> b!4772388 (contains!17107 (toList!6458 lm!1309) lt!1935411)))

(declare-fun lt!1935422 () (_ BitVec 64))

(assert (=> b!4772388 (= lt!1935411 (tuple2!55911 lt!1935422 lt!1935417))))

(declare-fun lt!1935421 () Unit!138579)

(declare-fun lemmaGetValueImpliesTupleContained!496 (ListLongMap!4871 (_ BitVec 64) List!53805) Unit!138579)

(assert (=> b!4772388 (= lt!1935421 (lemmaGetValueImpliesTupleContained!496 lm!1309 lt!1935422 lt!1935417))))

(declare-fun apply!12750 (ListLongMap!4871 (_ BitVec 64)) List!53805)

(assert (=> b!4772388 (= lt!1935417 (apply!12750 lm!1309 lt!1935422))))

(declare-fun contains!17108 (ListLongMap!4871 (_ BitVec 64)) Bool)

(assert (=> b!4772388 (contains!17108 lm!1309 lt!1935422)))

(declare-fun hash!4661 (Hashable!6685 K!15202) (_ BitVec 64))

(assert (=> b!4772388 (= lt!1935422 (hash!4661 hashF!980 key!2872))))

(declare-fun lt!1935412 () Unit!138579)

(declare-fun lemmaInGenMapThenLongMapContainsHash!901 (ListLongMap!4871 K!15202 Hashable!6685) Unit!138579)

(assert (=> b!4772388 (= lt!1935412 (lemmaInGenMapThenLongMapContainsHash!901 lm!1309 key!2872 hashF!980))))

(declare-fun b!4772389 () Bool)

(declare-fun e!2979265 () Bool)

(declare-fun tp!1356759 () Bool)

(assert (=> b!4772389 (= e!2979265 tp!1356759)))

(declare-fun res!2024483 () Bool)

(assert (=> start!488700 (=> (not res!2024483) (not e!2979269))))

(declare-fun forall!11949 (List!53806 Int) Bool)

(assert (=> start!488700 (= res!2024483 (forall!11949 (toList!6458 lm!1309) lambda!225600))))

(assert (=> start!488700 e!2979269))

(declare-fun inv!69229 (ListLongMap!4871) Bool)

(assert (=> start!488700 (and (inv!69229 lm!1309) e!2979265)))

(assert (=> start!488700 true))

(declare-fun tp_is_empty!32737 () Bool)

(assert (=> start!488700 tp_is_empty!32737))

(declare-fun tp_is_empty!32739 () Bool)

(assert (=> start!488700 tp_is_empty!32739))

(declare-fun b!4772390 () Bool)

(declare-fun res!2024484 () Bool)

(assert (=> b!4772390 (=> (not res!2024484) (not e!2979269))))

(declare-fun allKeysSameHashInMap!2090 (ListLongMap!4871 Hashable!6685) Bool)

(assert (=> b!4772390 (= res!2024484 (allKeysSameHashInMap!2090 lm!1309 hashF!980))))

(declare-fun b!4772391 () Bool)

(declare-fun e!2979268 () Bool)

(declare-datatypes ((Option!12784 0))(
  ( (None!12783) (Some!12783 (v!47916 V!15448)) )
))
(declare-fun isDefined!9930 (Option!12784) Bool)

(declare-fun getValueByKey!2226 (List!53805 K!15202) Option!12784)

(assert (=> b!4772391 (= e!2979268 (isDefined!9930 (getValueByKey!2226 (toList!6457 lt!1935419) key!2872)))))

(declare-fun lt!1935420 () Unit!138579)

(assert (=> b!4772391 (= lt!1935420 (forallContained!3930 (toList!6458 lm!1309) lambda!225600 lt!1935411))))

(declare-fun lt!1935416 () Unit!138579)

(assert (=> b!4772391 (= lt!1935416 (forallContained!3930 (toList!6458 lm!1309) lambda!225600 lt!1935411))))

(declare-fun apply!12751 (ListMap!5937 K!15202) V!15448)

(assert (=> b!4772391 (= (apply!12751 lt!1935419 key!2872) v!9615)))

(declare-fun lt!1935409 () Unit!138579)

(declare-fun lemmaExtractMapPreservesMapping!21 (ListLongMap!4871 K!15202 V!15448 Hashable!6685) Unit!138579)

(assert (=> b!4772391 (= lt!1935409 (lemmaExtractMapPreservesMapping!21 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun lt!1935414 () Unit!138579)

(declare-fun lemmaInGenericMapThenInLongMap!237 (ListLongMap!4871 K!15202 Hashable!6685) Unit!138579)

(assert (=> b!4772391 (= lt!1935414 (lemmaInGenericMapThenInLongMap!237 lm!1309 key!2872 hashF!980))))

(declare-fun b!4772392 () Bool)

(assert (=> b!4772392 (= e!2979266 e!2979268)))

(declare-fun res!2024481 () Bool)

(assert (=> b!4772392 (=> res!2024481 e!2979268)))

(assert (=> b!4772392 (= res!2024481 (not (forall!11949 (toList!6458 lm!1309) lambda!225600)))))

(declare-fun getValue!25 (List!53806 K!15202) V!15448)

(assert (=> b!4772392 (= (getValue!25 (toList!6458 lm!1309) key!2872) v!9615)))

(declare-fun lt!1935418 () Unit!138579)

(declare-fun lemmaGetValueEquivToGetPair!25 (ListLongMap!4871 K!15202 V!15448 Hashable!6685) Unit!138579)

(assert (=> b!4772392 (= lt!1935418 (lemmaGetValueEquivToGetPair!25 lm!1309 key!2872 v!9615 hashF!980))))

(declare-fun containsKeyBiggerList!359 (List!53806 K!15202) Bool)

(assert (=> b!4772392 (containsKeyBiggerList!359 (toList!6458 lm!1309) key!2872)))

(declare-fun lt!1935413 () Unit!138579)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!217 (ListLongMap!4871 K!15202 Hashable!6685) Unit!138579)

(assert (=> b!4772392 (= lt!1935413 (lemmaInLongMapThenContainsKeyBiggerList!217 lm!1309 key!2872 hashF!980))))

(assert (= (and start!488700 res!2024483) b!4772390))

(assert (= (and b!4772390 res!2024484) b!4772387))

(assert (= (and b!4772387 res!2024485) b!4772388))

(assert (= (and b!4772388 (not res!2024482)) b!4772392))

(assert (= (and b!4772392 (not res!2024481)) b!4772391))

(assert (= start!488700 b!4772389))

(declare-fun m!5745204 () Bool)

(assert (=> b!4772387 m!5745204))

(declare-fun m!5745206 () Bool)

(assert (=> b!4772387 m!5745206))

(declare-fun m!5745208 () Bool)

(assert (=> start!488700 m!5745208))

(declare-fun m!5745210 () Bool)

(assert (=> start!488700 m!5745210))

(declare-fun m!5745212 () Bool)

(assert (=> b!4772392 m!5745212))

(assert (=> b!4772392 m!5745208))

(declare-fun m!5745214 () Bool)

(assert (=> b!4772392 m!5745214))

(declare-fun m!5745216 () Bool)

(assert (=> b!4772392 m!5745216))

(declare-fun m!5745218 () Bool)

(assert (=> b!4772392 m!5745218))

(declare-fun m!5745220 () Bool)

(assert (=> b!4772388 m!5745220))

(declare-fun m!5745222 () Bool)

(assert (=> b!4772388 m!5745222))

(declare-fun m!5745224 () Bool)

(assert (=> b!4772388 m!5745224))

(declare-fun m!5745226 () Bool)

(assert (=> b!4772388 m!5745226))

(declare-fun m!5745228 () Bool)

(assert (=> b!4772388 m!5745228))

(declare-fun m!5745230 () Bool)

(assert (=> b!4772388 m!5745230))

(assert (=> b!4772388 m!5745220))

(declare-fun m!5745232 () Bool)

(assert (=> b!4772388 m!5745232))

(declare-fun m!5745234 () Bool)

(assert (=> b!4772388 m!5745234))

(declare-fun m!5745236 () Bool)

(assert (=> b!4772388 m!5745236))

(declare-fun m!5745238 () Bool)

(assert (=> b!4772388 m!5745238))

(declare-fun m!5745240 () Bool)

(assert (=> b!4772388 m!5745240))

(assert (=> b!4772391 m!5745220))

(assert (=> b!4772391 m!5745220))

(declare-fun m!5745242 () Bool)

(assert (=> b!4772391 m!5745242))

(declare-fun m!5745244 () Bool)

(assert (=> b!4772391 m!5745244))

(declare-fun m!5745246 () Bool)

(assert (=> b!4772391 m!5745246))

(assert (=> b!4772391 m!5745242))

(declare-fun m!5745248 () Bool)

(assert (=> b!4772391 m!5745248))

(declare-fun m!5745250 () Bool)

(assert (=> b!4772391 m!5745250))

(declare-fun m!5745252 () Bool)

(assert (=> b!4772390 m!5745252))

(push 1)

(assert tp_is_empty!32737)

(assert (not b!4772387))

(assert (not b!4772391))

(assert (not b!4772388))

(assert (not b!4772392))

(assert (not b!4772390))

(assert tp_is_empty!32739)

(assert (not b!4772389))

(assert (not start!488700))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1525050 () Bool)

(declare-fun dynLambda!21975 (Int tuple2!55910) Bool)

(assert (=> d!1525050 (dynLambda!21975 lambda!225600 lt!1935411)))

(declare-fun lt!1935474 () Unit!138579)

(declare-fun choose!34054 (List!53806 Int tuple2!55910) Unit!138579)

(assert (=> d!1525050 (= lt!1935474 (choose!34054 (toList!6458 lm!1309) lambda!225600 lt!1935411))))

(declare-fun e!2979287 () Bool)

(assert (=> d!1525050 e!2979287))

(declare-fun res!2024503 () Bool)

(assert (=> d!1525050 (=> (not res!2024503) (not e!2979287))))

(assert (=> d!1525050 (= res!2024503 (forall!11949 (toList!6458 lm!1309) lambda!225600))))

(assert (=> d!1525050 (= (forallContained!3930 (toList!6458 lm!1309) lambda!225600 lt!1935411) lt!1935474)))

(declare-fun b!4772413 () Bool)

(assert (=> b!4772413 (= e!2979287 (contains!17107 (toList!6458 lm!1309) lt!1935411))))

(assert (= (and d!1525050 res!2024503) b!4772413))

(declare-fun b_lambda!184667 () Bool)

(assert (=> (not b_lambda!184667) (not d!1525050)))

(declare-fun m!5745304 () Bool)

(assert (=> d!1525050 m!5745304))

(declare-fun m!5745306 () Bool)

(assert (=> d!1525050 m!5745306))

(assert (=> d!1525050 m!5745208))

(assert (=> b!4772413 m!5745232))

(assert (=> b!4772391 d!1525050))

(declare-fun d!1525052 () Bool)

(declare-fun isEmpty!29304 (Option!12784) Bool)

(assert (=> d!1525052 (= (isDefined!9930 (getValueByKey!2226 (toList!6457 lt!1935419) key!2872)) (not (isEmpty!29304 (getValueByKey!2226 (toList!6457 lt!1935419) key!2872))))))

(declare-fun bs!1149734 () Bool)

(assert (= bs!1149734 d!1525052))

(assert (=> bs!1149734 m!5745242))

(declare-fun m!5745308 () Bool)

(assert (=> bs!1149734 m!5745308))

(assert (=> b!4772391 d!1525052))

(declare-fun d!1525054 () Bool)

(declare-fun get!18168 (Option!12784) V!15448)

(assert (=> d!1525054 (= (apply!12751 lt!1935419 key!2872) (get!18168 (getValueByKey!2226 (toList!6457 lt!1935419) key!2872)))))

(declare-fun bs!1149735 () Bool)

(assert (= bs!1149735 d!1525054))

(assert (=> bs!1149735 m!5745242))

(assert (=> bs!1149735 m!5745242))

(declare-fun m!5745310 () Bool)

(assert (=> bs!1149735 m!5745310))

(assert (=> b!4772391 d!1525054))

(declare-fun bs!1149736 () Bool)

(declare-fun d!1525056 () Bool)

(assert (= bs!1149736 (and d!1525056 start!488700)))

(declare-fun lambda!225616 () Int)

(assert (=> bs!1149736 (= lambda!225616 lambda!225600)))

(assert (=> d!1525056 (= (apply!12751 (extractMap!2220 (toList!6458 lm!1309)) key!2872) v!9615)))

(declare-fun lt!1935477 () Unit!138579)

(declare-fun choose!34055 (ListLongMap!4871 K!15202 V!15448 Hashable!6685) Unit!138579)

(assert (=> d!1525056 (= lt!1935477 (choose!34055 lm!1309 key!2872 v!9615 hashF!980))))

(assert (=> d!1525056 (forall!11949 (toList!6458 lm!1309) lambda!225616)))

(assert (=> d!1525056 (= (lemmaExtractMapPreservesMapping!21 lm!1309 key!2872 v!9615 hashF!980) lt!1935477)))

(declare-fun bs!1149737 () Bool)

(assert (= bs!1149737 d!1525056))

(assert (=> bs!1149737 m!5745206))

(assert (=> bs!1149737 m!5745206))

(declare-fun m!5745312 () Bool)

(assert (=> bs!1149737 m!5745312))

(declare-fun m!5745314 () Bool)

(assert (=> bs!1149737 m!5745314))

(declare-fun m!5745316 () Bool)

(assert (=> bs!1149737 m!5745316))

(assert (=> b!4772391 d!1525056))

(declare-fun b!4772422 () Bool)

(declare-fun e!2979292 () Option!12784)

(assert (=> b!4772422 (= e!2979292 (Some!12783 (_2!31248 (h!60093 (toList!6457 lt!1935419)))))))

(declare-fun b!4772423 () Bool)

(declare-fun e!2979293 () Option!12784)

(assert (=> b!4772423 (= e!2979292 e!2979293)))

(declare-fun c!813911 () Bool)

(assert (=> b!4772423 (= c!813911 (and (is-Cons!53681 (toList!6457 lt!1935419)) (not (= (_1!31248 (h!60093 (toList!6457 lt!1935419))) key!2872))))))

(declare-fun b!4772424 () Bool)

(assert (=> b!4772424 (= e!2979293 (getValueByKey!2226 (t!361255 (toList!6457 lt!1935419)) key!2872))))

(declare-fun d!1525058 () Bool)

(declare-fun c!813910 () Bool)

(assert (=> d!1525058 (= c!813910 (and (is-Cons!53681 (toList!6457 lt!1935419)) (= (_1!31248 (h!60093 (toList!6457 lt!1935419))) key!2872)))))

(assert (=> d!1525058 (= (getValueByKey!2226 (toList!6457 lt!1935419) key!2872) e!2979292)))

(declare-fun b!4772425 () Bool)

(assert (=> b!4772425 (= e!2979293 None!12783)))

(assert (= (and d!1525058 c!813910) b!4772422))

(assert (= (and d!1525058 (not c!813910)) b!4772423))

(assert (= (and b!4772423 c!813911) b!4772424))

(assert (= (and b!4772423 (not c!813911)) b!4772425))

(declare-fun m!5745318 () Bool)

(assert (=> b!4772424 m!5745318))

(assert (=> b!4772391 d!1525058))

(declare-fun bs!1149738 () Bool)

(declare-fun d!1525060 () Bool)

(assert (= bs!1149738 (and d!1525060 start!488700)))

(declare-fun lambda!225619 () Int)

(assert (=> bs!1149738 (= lambda!225619 lambda!225600)))

(declare-fun bs!1149739 () Bool)

(assert (= bs!1149739 (and d!1525060 d!1525056)))

(assert (=> bs!1149739 (= lambda!225619 lambda!225616)))

(declare-fun e!2979296 () Bool)

(assert (=> d!1525060 e!2979296))

(declare-fun res!2024506 () Bool)

(assert (=> d!1525060 (=> (not res!2024506) (not e!2979296))))

(assert (=> d!1525060 (= res!2024506 (contains!17108 lm!1309 (hash!4661 hashF!980 key!2872)))))

(declare-fun lt!1935480 () Unit!138579)

(declare-fun choose!34056 (ListLongMap!4871 K!15202 Hashable!6685) Unit!138579)

(assert (=> d!1525060 (= lt!1935480 (choose!34056 lm!1309 key!2872 hashF!980))))

(assert (=> d!1525060 (forall!11949 (toList!6458 lm!1309) lambda!225619)))

(assert (=> d!1525060 (= (lemmaInGenericMapThenInLongMap!237 lm!1309 key!2872 hashF!980) lt!1935480)))

(declare-fun b!4772428 () Bool)

(assert (=> b!4772428 (= e!2979296 (isDefined!9929 (getPair!705 (apply!12750 lm!1309 (hash!4661 hashF!980 key!2872)) key!2872)))))

(assert (= (and d!1525060 res!2024506) b!4772428))

(assert (=> d!1525060 m!5745224))

(assert (=> d!1525060 m!5745224))

(declare-fun m!5745320 () Bool)

(assert (=> d!1525060 m!5745320))

(declare-fun m!5745322 () Bool)

(assert (=> d!1525060 m!5745322))

(declare-fun m!5745324 () Bool)

(assert (=> d!1525060 m!5745324))

(assert (=> b!4772428 m!5745224))

(assert (=> b!4772428 m!5745224))

(declare-fun m!5745326 () Bool)

(assert (=> b!4772428 m!5745326))

(assert (=> b!4772428 m!5745326))

(declare-fun m!5745328 () Bool)

(assert (=> b!4772428 m!5745328))

(assert (=> b!4772428 m!5745328))

(declare-fun m!5745330 () Bool)

(assert (=> b!4772428 m!5745330))

(assert (=> b!4772391 d!1525060))

(declare-fun d!1525064 () Bool)

(declare-fun res!2024514 () Bool)

(declare-fun e!2979305 () Bool)

(assert (=> d!1525064 (=> res!2024514 e!2979305)))

(declare-fun e!2979303 () Bool)

(assert (=> d!1525064 (= res!2024514 e!2979303)))

(declare-fun res!2024513 () Bool)

(assert (=> d!1525064 (=> (not res!2024513) (not e!2979303))))

(assert (=> d!1525064 (= res!2024513 (is-Cons!53682 (toList!6458 lm!1309)))))

(assert (=> d!1525064 (= (containsKeyBiggerList!359 (toList!6458 lm!1309) key!2872) e!2979305)))

(declare-fun b!4772435 () Bool)

(declare-fun containsKey!3697 (List!53805 K!15202) Bool)

(assert (=> b!4772435 (= e!2979303 (containsKey!3697 (_2!31249 (h!60094 (toList!6458 lm!1309))) key!2872))))

(declare-fun b!4772436 () Bool)

(declare-fun e!2979304 () Bool)

(assert (=> b!4772436 (= e!2979305 e!2979304)))

(declare-fun res!2024515 () Bool)

(assert (=> b!4772436 (=> (not res!2024515) (not e!2979304))))

(assert (=> b!4772436 (= res!2024515 (is-Cons!53682 (toList!6458 lm!1309)))))

(declare-fun b!4772437 () Bool)

(assert (=> b!4772437 (= e!2979304 (containsKeyBiggerList!359 (t!361256 (toList!6458 lm!1309)) key!2872))))

(assert (= (and d!1525064 res!2024513) b!4772435))

(assert (= (and d!1525064 (not res!2024514)) b!4772436))

(assert (= (and b!4772436 res!2024515) b!4772437))

(declare-fun m!5745334 () Bool)

(assert (=> b!4772435 m!5745334))

(declare-fun m!5745336 () Bool)

(assert (=> b!4772437 m!5745336))

(assert (=> b!4772392 d!1525064))

(declare-fun d!1525068 () Bool)

(declare-fun res!2024520 () Bool)

(declare-fun e!2979310 () Bool)

(assert (=> d!1525068 (=> res!2024520 e!2979310)))

(assert (=> d!1525068 (= res!2024520 (is-Nil!53682 (toList!6458 lm!1309)))))

(assert (=> d!1525068 (= (forall!11949 (toList!6458 lm!1309) lambda!225600) e!2979310)))

(declare-fun b!4772442 () Bool)

(declare-fun e!2979311 () Bool)

(assert (=> b!4772442 (= e!2979310 e!2979311)))

(declare-fun res!2024521 () Bool)

(assert (=> b!4772442 (=> (not res!2024521) (not e!2979311))))

(assert (=> b!4772442 (= res!2024521 (dynLambda!21975 lambda!225600 (h!60094 (toList!6458 lm!1309))))))

(declare-fun b!4772443 () Bool)

(assert (=> b!4772443 (= e!2979311 (forall!11949 (t!361256 (toList!6458 lm!1309)) lambda!225600))))

(assert (= (and d!1525068 (not res!2024520)) b!4772442))

(assert (= (and b!4772442 res!2024521) b!4772443))

(declare-fun b_lambda!184669 () Bool)

(assert (=> (not b_lambda!184669) (not b!4772442)))

(declare-fun m!5745338 () Bool)

(assert (=> b!4772442 m!5745338))

(declare-fun m!5745340 () Bool)

(assert (=> b!4772443 m!5745340))

(assert (=> b!4772392 d!1525068))

(declare-fun d!1525070 () Bool)

(declare-fun c!813914 () Bool)

(declare-fun e!2979317 () Bool)

(assert (=> d!1525070 (= c!813914 e!2979317)))

(declare-fun res!2024524 () Bool)

(assert (=> d!1525070 (=> (not res!2024524) (not e!2979317))))

(assert (=> d!1525070 (= res!2024524 (is-Cons!53682 (toList!6458 lm!1309)))))

(declare-fun e!2979316 () V!15448)

(assert (=> d!1525070 (= (getValue!25 (toList!6458 lm!1309) key!2872) e!2979316)))

(declare-fun b!4772452 () Bool)

(assert (=> b!4772452 (= e!2979317 (containsKey!3697 (_2!31249 (h!60094 (toList!6458 lm!1309))) key!2872))))

(declare-fun b!4772450 () Bool)

(assert (=> b!4772450 (= e!2979316 (_2!31248 (get!18166 (getPair!705 (_2!31249 (h!60094 (toList!6458 lm!1309))) key!2872))))))

(declare-fun b!4772451 () Bool)

(assert (=> b!4772451 (= e!2979316 (getValue!25 (t!361256 (toList!6458 lm!1309)) key!2872))))

(assert (= (and d!1525070 res!2024524) b!4772452))

(assert (= (and d!1525070 c!813914) b!4772450))

(assert (= (and d!1525070 (not c!813914)) b!4772451))

(assert (=> b!4772452 m!5745334))

(declare-fun m!5745342 () Bool)

(assert (=> b!4772450 m!5745342))

(assert (=> b!4772450 m!5745342))

(declare-fun m!5745344 () Bool)

(assert (=> b!4772450 m!5745344))

(declare-fun m!5745346 () Bool)

(assert (=> b!4772451 m!5745346))

(assert (=> b!4772392 d!1525070))

(declare-fun bs!1149741 () Bool)

(declare-fun d!1525072 () Bool)

(assert (= bs!1149741 (and d!1525072 start!488700)))

(declare-fun lambda!225624 () Int)

(assert (=> bs!1149741 (= lambda!225624 lambda!225600)))

(declare-fun bs!1149742 () Bool)

(assert (= bs!1149742 (and d!1525072 d!1525056)))

(assert (=> bs!1149742 (= lambda!225624 lambda!225616)))

(declare-fun bs!1149743 () Bool)

(assert (= bs!1149743 (and d!1525072 d!1525060)))

(assert (=> bs!1149743 (= lambda!225624 lambda!225619)))

(assert (=> d!1525072 (= (getValue!25 (toList!6458 lm!1309) key!2872) v!9615)))

(declare-fun lt!1935483 () Unit!138579)

(declare-fun choose!34057 (ListLongMap!4871 K!15202 V!15448 Hashable!6685) Unit!138579)

(assert (=> d!1525072 (= lt!1935483 (choose!34057 lm!1309 key!2872 v!9615 hashF!980))))

(assert (=> d!1525072 (forall!11949 (toList!6458 lm!1309) lambda!225624)))

(assert (=> d!1525072 (= (lemmaGetValueEquivToGetPair!25 lm!1309 key!2872 v!9615 hashF!980) lt!1935483)))

(declare-fun bs!1149744 () Bool)

(assert (= bs!1149744 d!1525072))

(assert (=> bs!1149744 m!5745214))

(declare-fun m!5745348 () Bool)

(assert (=> bs!1149744 m!5745348))

(declare-fun m!5745350 () Bool)

(assert (=> bs!1149744 m!5745350))

(assert (=> b!4772392 d!1525072))

(declare-fun bs!1149745 () Bool)

(declare-fun d!1525074 () Bool)

(assert (= bs!1149745 (and d!1525074 start!488700)))

(declare-fun lambda!225627 () Int)

(assert (=> bs!1149745 (= lambda!225627 lambda!225600)))

(declare-fun bs!1149746 () Bool)

(assert (= bs!1149746 (and d!1525074 d!1525056)))

(assert (=> bs!1149746 (= lambda!225627 lambda!225616)))

(declare-fun bs!1149747 () Bool)

(assert (= bs!1149747 (and d!1525074 d!1525060)))

(assert (=> bs!1149747 (= lambda!225627 lambda!225619)))

(declare-fun bs!1149748 () Bool)

(assert (= bs!1149748 (and d!1525074 d!1525072)))

(assert (=> bs!1149748 (= lambda!225627 lambda!225624)))

(assert (=> d!1525074 (containsKeyBiggerList!359 (toList!6458 lm!1309) key!2872)))

(declare-fun lt!1935488 () Unit!138579)

(declare-fun choose!34058 (ListLongMap!4871 K!15202 Hashable!6685) Unit!138579)

(assert (=> d!1525074 (= lt!1935488 (choose!34058 lm!1309 key!2872 hashF!980))))

(assert (=> d!1525074 (forall!11949 (toList!6458 lm!1309) lambda!225627)))

(assert (=> d!1525074 (= (lemmaInLongMapThenContainsKeyBiggerList!217 lm!1309 key!2872 hashF!980) lt!1935488)))

(declare-fun bs!1149749 () Bool)

(assert (= bs!1149749 d!1525074))

(assert (=> bs!1149749 m!5745218))

(declare-fun m!5745352 () Bool)

(assert (=> bs!1149749 m!5745352))

(declare-fun m!5745354 () Bool)

(assert (=> bs!1149749 m!5745354))

(assert (=> b!4772392 d!1525074))

(declare-fun b!4772485 () Bool)

(assert (=> b!4772485 false))

(declare-fun lt!1935516 () Unit!138579)

(declare-fun lt!1935512 () Unit!138579)

(assert (=> b!4772485 (= lt!1935516 lt!1935512)))

(declare-fun containsKey!3698 (List!53805 K!15202) Bool)

(assert (=> b!4772485 (containsKey!3698 (toList!6457 lt!1935419) key!2872)))

(declare-fun lemmaInGetKeysListThenContainsKey!1012 (List!53805 K!15202) Unit!138579)

(assert (=> b!4772485 (= lt!1935512 (lemmaInGetKeysListThenContainsKey!1012 (toList!6457 lt!1935419) key!2872))))

(declare-fun e!2979341 () Unit!138579)

(declare-fun Unit!138583 () Unit!138579)

(assert (=> b!4772485 (= e!2979341 Unit!138583)))

(declare-fun d!1525076 () Bool)

(declare-fun e!2979343 () Bool)

(assert (=> d!1525076 e!2979343))

(declare-fun res!2024537 () Bool)

(assert (=> d!1525076 (=> res!2024537 e!2979343)))

(declare-fun e!2979342 () Bool)

(assert (=> d!1525076 (= res!2024537 e!2979342)))

(declare-fun res!2024538 () Bool)

(assert (=> d!1525076 (=> (not res!2024538) (not e!2979342))))

(declare-fun lt!1935514 () Bool)

(assert (=> d!1525076 (= res!2024538 (not lt!1935514))))

(declare-fun lt!1935513 () Bool)

(assert (=> d!1525076 (= lt!1935514 lt!1935513)))

(declare-fun lt!1935510 () Unit!138579)

(declare-fun e!2979344 () Unit!138579)

(assert (=> d!1525076 (= lt!1935510 e!2979344)))

(declare-fun c!813925 () Bool)

(assert (=> d!1525076 (= c!813925 lt!1935513)))

(assert (=> d!1525076 (= lt!1935513 (containsKey!3698 (toList!6457 lt!1935419) key!2872))))

(assert (=> d!1525076 (= (contains!17106 lt!1935419 key!2872) lt!1935514)))

(declare-fun b!4772486 () Bool)

(declare-datatypes ((List!53809 0))(
  ( (Nil!53685) (Cons!53685 (h!60097 K!15202) (t!361259 List!53809)) )
))
(declare-fun e!2979345 () List!53809)

(declare-fun keys!19493 (ListMap!5937) List!53809)

(assert (=> b!4772486 (= e!2979345 (keys!19493 lt!1935419))))

(declare-fun b!4772487 () Bool)

(declare-fun getKeysList!1013 (List!53805) List!53809)

(assert (=> b!4772487 (= e!2979345 (getKeysList!1013 (toList!6457 lt!1935419)))))

(declare-fun b!4772488 () Bool)

(declare-fun e!2979340 () Bool)

(assert (=> b!4772488 (= e!2979343 e!2979340)))

(declare-fun res!2024539 () Bool)

(assert (=> b!4772488 (=> (not res!2024539) (not e!2979340))))

(assert (=> b!4772488 (= res!2024539 (isDefined!9930 (getValueByKey!2226 (toList!6457 lt!1935419) key!2872)))))

(declare-fun b!4772489 () Bool)

(declare-fun contains!17112 (List!53809 K!15202) Bool)

(assert (=> b!4772489 (= e!2979342 (not (contains!17112 (keys!19493 lt!1935419) key!2872)))))

(declare-fun bm!334492 () Bool)

(declare-fun call!334497 () Bool)

(assert (=> bm!334492 (= call!334497 (contains!17112 e!2979345 key!2872))))

(declare-fun c!813927 () Bool)

(assert (=> bm!334492 (= c!813927 c!813925)))

(declare-fun b!4772490 () Bool)

(declare-fun Unit!138584 () Unit!138579)

(assert (=> b!4772490 (= e!2979341 Unit!138584)))

(declare-fun b!4772491 () Bool)

(declare-fun lt!1935511 () Unit!138579)

(assert (=> b!4772491 (= e!2979344 lt!1935511)))

(declare-fun lt!1935515 () Unit!138579)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2022 (List!53805 K!15202) Unit!138579)

(assert (=> b!4772491 (= lt!1935515 (lemmaContainsKeyImpliesGetValueByKeyDefined!2022 (toList!6457 lt!1935419) key!2872))))

(assert (=> b!4772491 (isDefined!9930 (getValueByKey!2226 (toList!6457 lt!1935419) key!2872))))

(declare-fun lt!1935509 () Unit!138579)

(assert (=> b!4772491 (= lt!1935509 lt!1935515)))

(declare-fun lemmaInListThenGetKeysListContains!1008 (List!53805 K!15202) Unit!138579)

(assert (=> b!4772491 (= lt!1935511 (lemmaInListThenGetKeysListContains!1008 (toList!6457 lt!1935419) key!2872))))

(assert (=> b!4772491 call!334497))

(declare-fun b!4772492 () Bool)

(assert (=> b!4772492 (= e!2979340 (contains!17112 (keys!19493 lt!1935419) key!2872))))

(declare-fun b!4772493 () Bool)

(assert (=> b!4772493 (= e!2979344 e!2979341)))

(declare-fun c!813926 () Bool)

(assert (=> b!4772493 (= c!813926 call!334497)))

(assert (= (and d!1525076 c!813925) b!4772491))

(assert (= (and d!1525076 (not c!813925)) b!4772493))

(assert (= (and b!4772493 c!813926) b!4772485))

(assert (= (and b!4772493 (not c!813926)) b!4772490))

(assert (= (or b!4772491 b!4772493) bm!334492))

(assert (= (and bm!334492 c!813927) b!4772487))

(assert (= (and bm!334492 (not c!813927)) b!4772486))

(assert (= (and d!1525076 res!2024538) b!4772489))

(assert (= (and d!1525076 (not res!2024537)) b!4772488))

(assert (= (and b!4772488 res!2024539) b!4772492))

(declare-fun m!5745374 () Bool)

(assert (=> b!4772485 m!5745374))

(declare-fun m!5745376 () Bool)

(assert (=> b!4772485 m!5745376))

(assert (=> b!4772488 m!5745242))

(assert (=> b!4772488 m!5745242))

(assert (=> b!4772488 m!5745244))

(declare-fun m!5745378 () Bool)

(assert (=> b!4772492 m!5745378))

(assert (=> b!4772492 m!5745378))

(declare-fun m!5745380 () Bool)

(assert (=> b!4772492 m!5745380))

(assert (=> b!4772489 m!5745378))

(assert (=> b!4772489 m!5745378))

(assert (=> b!4772489 m!5745380))

(assert (=> d!1525076 m!5745374))

(declare-fun m!5745382 () Bool)

(assert (=> b!4772491 m!5745382))

(assert (=> b!4772491 m!5745242))

(assert (=> b!4772491 m!5745242))

(assert (=> b!4772491 m!5745244))

(declare-fun m!5745384 () Bool)

(assert (=> b!4772491 m!5745384))

(assert (=> b!4772486 m!5745378))

(declare-fun m!5745386 () Bool)

(assert (=> bm!334492 m!5745386))

(declare-fun m!5745388 () Bool)

(assert (=> b!4772487 m!5745388))

(assert (=> b!4772387 d!1525076))

(declare-fun bs!1149752 () Bool)

(declare-fun d!1525084 () Bool)

(assert (= bs!1149752 (and d!1525084 d!1525056)))

(declare-fun lambda!225631 () Int)

(assert (=> bs!1149752 (= lambda!225631 lambda!225616)))

(declare-fun bs!1149753 () Bool)

(assert (= bs!1149753 (and d!1525084 d!1525060)))

(assert (=> bs!1149753 (= lambda!225631 lambda!225619)))

(declare-fun bs!1149754 () Bool)

(assert (= bs!1149754 (and d!1525084 d!1525072)))

(assert (=> bs!1149754 (= lambda!225631 lambda!225624)))

(declare-fun bs!1149755 () Bool)

(assert (= bs!1149755 (and d!1525084 start!488700)))

(assert (=> bs!1149755 (= lambda!225631 lambda!225600)))

(declare-fun bs!1149756 () Bool)

(assert (= bs!1149756 (and d!1525084 d!1525074)))

(assert (=> bs!1149756 (= lambda!225631 lambda!225627)))

(declare-fun lt!1935519 () ListMap!5937)

(declare-fun invariantList!1671 (List!53805) Bool)

(assert (=> d!1525084 (invariantList!1671 (toList!6457 lt!1935519))))

(declare-fun e!2979350 () ListMap!5937)

(assert (=> d!1525084 (= lt!1935519 e!2979350)))

(declare-fun c!813932 () Bool)

(assert (=> d!1525084 (= c!813932 (is-Cons!53682 (toList!6458 lm!1309)))))

(assert (=> d!1525084 (forall!11949 (toList!6458 lm!1309) lambda!225631)))

(assert (=> d!1525084 (= (extractMap!2220 (toList!6458 lm!1309)) lt!1935519)))

(declare-fun b!4772502 () Bool)

(declare-fun addToMapMapFromBucket!1636 (List!53805 ListMap!5937) ListMap!5937)

(assert (=> b!4772502 (= e!2979350 (addToMapMapFromBucket!1636 (_2!31249 (h!60094 (toList!6458 lm!1309))) (extractMap!2220 (t!361256 (toList!6458 lm!1309)))))))

(declare-fun b!4772503 () Bool)

(assert (=> b!4772503 (= e!2979350 (ListMap!5938 Nil!53681))))

(assert (= (and d!1525084 c!813932) b!4772502))

(assert (= (and d!1525084 (not c!813932)) b!4772503))

(declare-fun m!5745392 () Bool)

(assert (=> d!1525084 m!5745392))

(declare-fun m!5745394 () Bool)

(assert (=> d!1525084 m!5745394))

(declare-fun m!5745396 () Bool)

(assert (=> b!4772502 m!5745396))

(assert (=> b!4772502 m!5745396))

(declare-fun m!5745398 () Bool)

(assert (=> b!4772502 m!5745398))

(assert (=> b!4772387 d!1525084))

(declare-fun d!1525088 () Bool)

(declare-fun e!2979356 () Bool)

(assert (=> d!1525088 e!2979356))

(declare-fun res!2024542 () Bool)

(assert (=> d!1525088 (=> res!2024542 e!2979356)))

(declare-fun lt!1935531 () Bool)

(assert (=> d!1525088 (= res!2024542 (not lt!1935531))))

(declare-fun lt!1935529 () Bool)

(assert (=> d!1525088 (= lt!1935531 lt!1935529)))

(declare-fun lt!1935528 () Unit!138579)

(declare-fun e!2979355 () Unit!138579)

(assert (=> d!1525088 (= lt!1935528 e!2979355)))

(declare-fun c!813935 () Bool)

(assert (=> d!1525088 (= c!813935 lt!1935529)))

(declare-fun containsKey!3699 (List!53806 (_ BitVec 64)) Bool)

(assert (=> d!1525088 (= lt!1935529 (containsKey!3699 (toList!6458 lm!1309) lt!1935422))))

(assert (=> d!1525088 (= (contains!17108 lm!1309 lt!1935422) lt!1935531)))

(declare-fun b!4772510 () Bool)

(declare-fun lt!1935530 () Unit!138579)

(assert (=> b!4772510 (= e!2979355 lt!1935530)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2023 (List!53806 (_ BitVec 64)) Unit!138579)

(assert (=> b!4772510 (= lt!1935530 (lemmaContainsKeyImpliesGetValueByKeyDefined!2023 (toList!6458 lm!1309) lt!1935422))))

(declare-datatypes ((Option!12787 0))(
  ( (None!12786) (Some!12786 (v!47923 List!53805)) )
))
(declare-fun isDefined!9933 (Option!12787) Bool)

(declare-fun getValueByKey!2228 (List!53806 (_ BitVec 64)) Option!12787)

(assert (=> b!4772510 (isDefined!9933 (getValueByKey!2228 (toList!6458 lm!1309) lt!1935422))))

(declare-fun b!4772511 () Bool)

(declare-fun Unit!138585 () Unit!138579)

(assert (=> b!4772511 (= e!2979355 Unit!138585)))

(declare-fun b!4772512 () Bool)

(assert (=> b!4772512 (= e!2979356 (isDefined!9933 (getValueByKey!2228 (toList!6458 lm!1309) lt!1935422)))))

(assert (= (and d!1525088 c!813935) b!4772510))

(assert (= (and d!1525088 (not c!813935)) b!4772511))

(assert (= (and d!1525088 (not res!2024542)) b!4772512))

(declare-fun m!5745400 () Bool)

(assert (=> d!1525088 m!5745400))

(declare-fun m!5745402 () Bool)

(assert (=> b!4772510 m!5745402))

(declare-fun m!5745404 () Bool)

(assert (=> b!4772510 m!5745404))

(assert (=> b!4772510 m!5745404))

(declare-fun m!5745406 () Bool)

(assert (=> b!4772510 m!5745406))

(assert (=> b!4772512 m!5745404))

(assert (=> b!4772512 m!5745404))

(assert (=> b!4772512 m!5745406))

(assert (=> b!4772388 d!1525088))

(assert (=> b!4772388 d!1525050))

(declare-fun bs!1149757 () Bool)

(declare-fun d!1525090 () Bool)

(assert (= bs!1149757 (and d!1525090 d!1525056)))

(declare-fun lambda!225634 () Int)

(assert (=> bs!1149757 (= lambda!225634 lambda!225616)))

(declare-fun bs!1149758 () Bool)

(assert (= bs!1149758 (and d!1525090 d!1525060)))

(assert (=> bs!1149758 (= lambda!225634 lambda!225619)))

(declare-fun bs!1149759 () Bool)

(assert (= bs!1149759 (and d!1525090 d!1525072)))

(assert (=> bs!1149759 (= lambda!225634 lambda!225624)))

(declare-fun bs!1149760 () Bool)

(assert (= bs!1149760 (and d!1525090 d!1525084)))

(assert (=> bs!1149760 (= lambda!225634 lambda!225631)))

(declare-fun bs!1149761 () Bool)

(assert (= bs!1149761 (and d!1525090 start!488700)))

(assert (=> bs!1149761 (= lambda!225634 lambda!225600)))

(declare-fun bs!1149762 () Bool)

(assert (= bs!1149762 (and d!1525090 d!1525074)))

(assert (=> bs!1149762 (= lambda!225634 lambda!225627)))

(assert (=> d!1525090 (contains!17108 lm!1309 (hash!4661 hashF!980 key!2872))))

(declare-fun lt!1935534 () Unit!138579)

(declare-fun choose!34059 (ListLongMap!4871 K!15202 Hashable!6685) Unit!138579)

(assert (=> d!1525090 (= lt!1935534 (choose!34059 lm!1309 key!2872 hashF!980))))

(assert (=> d!1525090 (forall!11949 (toList!6458 lm!1309) lambda!225634)))

(assert (=> d!1525090 (= (lemmaInGenMapThenLongMapContainsHash!901 lm!1309 key!2872 hashF!980) lt!1935534)))

(declare-fun bs!1149763 () Bool)

(assert (= bs!1149763 d!1525090))

(assert (=> bs!1149763 m!5745224))

(assert (=> bs!1149763 m!5745224))

(assert (=> bs!1149763 m!5745320))

(declare-fun m!5745408 () Bool)

(assert (=> bs!1149763 m!5745408))

(declare-fun m!5745410 () Bool)

(assert (=> bs!1149763 m!5745410))

(assert (=> b!4772388 d!1525090))

(declare-fun d!1525092 () Bool)

(assert (=> d!1525092 (= (get!18166 lt!1935410) (v!47915 lt!1935410))))

(assert (=> b!4772388 d!1525092))

(declare-fun d!1525094 () Bool)

(declare-fun isEmpty!29305 (Option!12783) Bool)

(assert (=> d!1525094 (= (isDefined!9929 lt!1935410) (not (isEmpty!29305 lt!1935410)))))

(declare-fun bs!1149764 () Bool)

(assert (= bs!1149764 d!1525094))

(declare-fun m!5745412 () Bool)

(assert (=> bs!1149764 m!5745412))

(assert (=> b!4772388 d!1525094))

(declare-fun d!1525096 () Bool)

(assert (=> d!1525096 (contains!17107 (toList!6458 lm!1309) (tuple2!55911 lt!1935422 lt!1935417))))

(declare-fun lt!1935539 () Unit!138579)

(declare-fun choose!34060 (ListLongMap!4871 (_ BitVec 64) List!53805) Unit!138579)

(assert (=> d!1525096 (= lt!1935539 (choose!34060 lm!1309 lt!1935422 lt!1935417))))

(assert (=> d!1525096 (contains!17108 lm!1309 lt!1935422)))

(assert (=> d!1525096 (= (lemmaGetValueImpliesTupleContained!496 lm!1309 lt!1935422 lt!1935417) lt!1935539)))

(declare-fun bs!1149765 () Bool)

(assert (= bs!1149765 d!1525096))

(declare-fun m!5745414 () Bool)

(assert (=> bs!1149765 m!5745414))

(declare-fun m!5745416 () Bool)

(assert (=> bs!1149765 m!5745416))

(assert (=> bs!1149765 m!5745236))

(assert (=> b!4772388 d!1525096))

(declare-fun b!4772530 () Bool)

(declare-fun e!2979371 () Option!12783)

(assert (=> b!4772530 (= e!2979371 (Some!12782 (h!60093 lt!1935417)))))

(declare-fun b!4772531 () Bool)

(declare-fun e!2979370 () Bool)

(declare-fun e!2979368 () Bool)

(assert (=> b!4772531 (= e!2979370 e!2979368)))

(declare-fun res!2024551 () Bool)

(assert (=> b!4772531 (=> (not res!2024551) (not e!2979368))))

(declare-fun lt!1935543 () Option!12783)

(assert (=> b!4772531 (= res!2024551 (isDefined!9929 lt!1935543))))

(declare-fun b!4772532 () Bool)

(declare-fun res!2024554 () Bool)

(assert (=> b!4772532 (=> (not res!2024554) (not e!2979368))))

(assert (=> b!4772532 (= res!2024554 (= (_1!31248 (get!18166 lt!1935543)) key!2872))))

(declare-fun b!4772533 () Bool)

(declare-fun contains!17113 (List!53805 tuple2!55908) Bool)

(assert (=> b!4772533 (= e!2979368 (contains!17113 lt!1935417 (get!18166 lt!1935543)))))

(declare-fun d!1525098 () Bool)

(assert (=> d!1525098 e!2979370))

(declare-fun res!2024553 () Bool)

(assert (=> d!1525098 (=> res!2024553 e!2979370)))

(declare-fun e!2979369 () Bool)

(assert (=> d!1525098 (= res!2024553 e!2979369)))

(declare-fun res!2024552 () Bool)

(assert (=> d!1525098 (=> (not res!2024552) (not e!2979369))))

(assert (=> d!1525098 (= res!2024552 (isEmpty!29305 lt!1935543))))

(assert (=> d!1525098 (= lt!1935543 e!2979371)))

(declare-fun c!813940 () Bool)

(assert (=> d!1525098 (= c!813940 (and (is-Cons!53681 lt!1935417) (= (_1!31248 (h!60093 lt!1935417)) key!2872)))))

(declare-fun noDuplicateKeys!2268 (List!53805) Bool)

(assert (=> d!1525098 (noDuplicateKeys!2268 lt!1935417)))

(assert (=> d!1525098 (= (getPair!705 lt!1935417 key!2872) lt!1935543)))

(declare-fun b!4772534 () Bool)

(declare-fun e!2979367 () Option!12783)

(assert (=> b!4772534 (= e!2979367 None!12782)))

(declare-fun b!4772535 () Bool)

(assert (=> b!4772535 (= e!2979367 (getPair!705 (t!361255 lt!1935417) key!2872))))

(declare-fun b!4772536 () Bool)

(assert (=> b!4772536 (= e!2979369 (not (containsKey!3697 lt!1935417 key!2872)))))

(declare-fun b!4772537 () Bool)

(assert (=> b!4772537 (= e!2979371 e!2979367)))

(declare-fun c!813941 () Bool)

(assert (=> b!4772537 (= c!813941 (is-Cons!53681 lt!1935417))))

(assert (= (and d!1525098 c!813940) b!4772530))

(assert (= (and d!1525098 (not c!813940)) b!4772537))

(assert (= (and b!4772537 c!813941) b!4772535))

(assert (= (and b!4772537 (not c!813941)) b!4772534))

(assert (= (and d!1525098 res!2024552) b!4772536))

(assert (= (and d!1525098 (not res!2024553)) b!4772531))

(assert (= (and b!4772531 res!2024551) b!4772532))

(assert (= (and b!4772532 res!2024554) b!4772533))

(declare-fun m!5745424 () Bool)

(assert (=> b!4772531 m!5745424))

(declare-fun m!5745426 () Bool)

(assert (=> b!4772532 m!5745426))

(declare-fun m!5745428 () Bool)

(assert (=> d!1525098 m!5745428))

(declare-fun m!5745430 () Bool)

(assert (=> d!1525098 m!5745430))

(declare-fun m!5745432 () Bool)

(assert (=> b!4772535 m!5745432))

(declare-fun m!5745434 () Bool)

(assert (=> b!4772536 m!5745434))

(assert (=> b!4772533 m!5745426))

(assert (=> b!4772533 m!5745426))

(declare-fun m!5745436 () Bool)

(assert (=> b!4772533 m!5745436))

(assert (=> b!4772388 d!1525098))

(declare-fun d!1525102 () Bool)

(declare-fun hash!4663 (Hashable!6685 K!15202) (_ BitVec 64))

(assert (=> d!1525102 (= (hash!4661 hashF!980 key!2872) (hash!4663 hashF!980 key!2872))))

(declare-fun bs!1149769 () Bool)

(assert (= bs!1149769 d!1525102))

(declare-fun m!5745438 () Bool)

(assert (=> bs!1149769 m!5745438))

(assert (=> b!4772388 d!1525102))

(declare-fun bs!1149779 () Bool)

(declare-fun d!1525104 () Bool)

(assert (= bs!1149779 (and d!1525104 d!1525056)))

(declare-fun lambda!225650 () Int)

(assert (=> bs!1149779 (= lambda!225650 lambda!225616)))

(declare-fun bs!1149780 () Bool)

(assert (= bs!1149780 (and d!1525104 d!1525060)))

(assert (=> bs!1149780 (= lambda!225650 lambda!225619)))

(declare-fun bs!1149781 () Bool)

(assert (= bs!1149781 (and d!1525104 d!1525072)))

(assert (=> bs!1149781 (= lambda!225650 lambda!225624)))

(declare-fun bs!1149782 () Bool)

(assert (= bs!1149782 (and d!1525104 d!1525084)))

(assert (=> bs!1149782 (= lambda!225650 lambda!225631)))

(declare-fun bs!1149783 () Bool)

(assert (= bs!1149783 (and d!1525104 start!488700)))

(assert (=> bs!1149783 (= lambda!225650 lambda!225600)))

(declare-fun bs!1149784 () Bool)

(assert (= bs!1149784 (and d!1525104 d!1525090)))

(assert (=> bs!1149784 (= lambda!225650 lambda!225634)))

(declare-fun bs!1149785 () Bool)

(assert (= bs!1149785 (and d!1525104 d!1525074)))

(assert (=> bs!1149785 (= lambda!225650 lambda!225627)))

(declare-fun e!2979398 () Bool)

(assert (=> d!1525104 e!2979398))

(declare-fun res!2024584 () Bool)

(assert (=> d!1525104 (=> (not res!2024584) (not e!2979398))))

(assert (=> d!1525104 (= res!2024584 (forall!11949 (toList!6458 lm!1309) lambda!225650))))

(declare-fun lt!1935565 () Unit!138579)

(declare-fun choose!34061 (ListLongMap!4871 K!15202 Hashable!6685) Unit!138579)

(assert (=> d!1525104 (= lt!1935565 (choose!34061 lm!1309 key!2872 hashF!980))))

(assert (=> d!1525104 (forall!11949 (toList!6458 lm!1309) lambda!225650)))

(assert (=> d!1525104 (= (lemmaInGenMapThenGetPairDefined!479 lm!1309 key!2872 hashF!980) lt!1935565)))

(declare-fun b!4772573 () Bool)

(declare-fun res!2024582 () Bool)

(assert (=> b!4772573 (=> (not res!2024582) (not e!2979398))))

(assert (=> b!4772573 (= res!2024582 (contains!17106 (extractMap!2220 (toList!6458 lm!1309)) key!2872))))

(declare-fun lt!1935567 () List!53805)

(declare-fun b!4772575 () Bool)

(declare-fun lt!1935569 () (_ BitVec 64))

(declare-fun e!2979397 () Bool)

(assert (=> b!4772575 (= e!2979397 (= (getValueByKey!2228 (toList!6458 lm!1309) lt!1935569) (Some!12786 lt!1935567)))))

(declare-fun b!4772574 () Bool)

(assert (=> b!4772574 (= e!2979398 (isDefined!9929 (getPair!705 (apply!12750 lm!1309 (hash!4661 hashF!980 key!2872)) key!2872)))))

(declare-fun lt!1935563 () Unit!138579)

(assert (=> b!4772574 (= lt!1935563 (forallContained!3930 (toList!6458 lm!1309) lambda!225650 (tuple2!55911 (hash!4661 hashF!980 key!2872) (apply!12750 lm!1309 (hash!4661 hashF!980 key!2872)))))))

(declare-fun lt!1935570 () Unit!138579)

(declare-fun lt!1935566 () Unit!138579)

(assert (=> b!4772574 (= lt!1935570 lt!1935566)))

(assert (=> b!4772574 (contains!17107 (toList!6458 lm!1309) (tuple2!55911 lt!1935569 lt!1935567))))

(assert (=> b!4772574 (= lt!1935566 (lemmaGetValueImpliesTupleContained!496 lm!1309 lt!1935569 lt!1935567))))

(assert (=> b!4772574 e!2979397))

(declare-fun res!2024583 () Bool)

(assert (=> b!4772574 (=> (not res!2024583) (not e!2979397))))

(assert (=> b!4772574 (= res!2024583 (contains!17108 lm!1309 lt!1935569))))

(assert (=> b!4772574 (= lt!1935567 (apply!12750 lm!1309 (hash!4661 hashF!980 key!2872)))))

(assert (=> b!4772574 (= lt!1935569 (hash!4661 hashF!980 key!2872))))

(declare-fun lt!1935564 () Unit!138579)

(declare-fun lt!1935568 () Unit!138579)

(assert (=> b!4772574 (= lt!1935564 lt!1935568)))

(assert (=> b!4772574 (contains!17108 lm!1309 (hash!4661 hashF!980 key!2872))))

(assert (=> b!4772574 (= lt!1935568 (lemmaInGenMapThenLongMapContainsHash!901 lm!1309 key!2872 hashF!980))))

(declare-fun b!4772572 () Bool)

(declare-fun res!2024581 () Bool)

(assert (=> b!4772572 (=> (not res!2024581) (not e!2979398))))

(assert (=> b!4772572 (= res!2024581 (allKeysSameHashInMap!2090 lm!1309 hashF!980))))

(assert (= (and d!1525104 res!2024584) b!4772572))

(assert (= (and b!4772572 res!2024581) b!4772573))

(assert (= (and b!4772573 res!2024582) b!4772574))

(assert (= (and b!4772574 res!2024583) b!4772575))

(assert (=> b!4772573 m!5745206))

(assert (=> b!4772573 m!5745206))

(declare-fun m!5745460 () Bool)

(assert (=> b!4772573 m!5745460))

(assert (=> b!4772572 m!5745252))

(assert (=> b!4772574 m!5745328))

(assert (=> b!4772574 m!5745330))

(declare-fun m!5745462 () Bool)

(assert (=> b!4772574 m!5745462))

(declare-fun m!5745464 () Bool)

(assert (=> b!4772574 m!5745464))

(assert (=> b!4772574 m!5745224))

(assert (=> b!4772574 m!5745320))

(assert (=> b!4772574 m!5745222))

(assert (=> b!4772574 m!5745224))

(assert (=> b!4772574 m!5745326))

(assert (=> b!4772574 m!5745328))

(declare-fun m!5745466 () Bool)

(assert (=> b!4772574 m!5745466))

(declare-fun m!5745468 () Bool)

(assert (=> b!4772574 m!5745468))

(assert (=> b!4772574 m!5745224))

(assert (=> b!4772574 m!5745326))

(declare-fun m!5745470 () Bool)

(assert (=> b!4772575 m!5745470))

(declare-fun m!5745472 () Bool)

(assert (=> d!1525104 m!5745472))

(declare-fun m!5745474 () Bool)

(assert (=> d!1525104 m!5745474))

(assert (=> d!1525104 m!5745472))

(assert (=> b!4772388 d!1525104))

(declare-fun d!1525116 () Bool)

(declare-fun get!18169 (Option!12787) List!53805)

(assert (=> d!1525116 (= (apply!12750 lm!1309 lt!1935422) (get!18169 (getValueByKey!2228 (toList!6458 lm!1309) lt!1935422)))))

(declare-fun bs!1149786 () Bool)

(assert (= bs!1149786 d!1525116))

(assert (=> bs!1149786 m!5745404))

(assert (=> bs!1149786 m!5745404))

(declare-fun m!5745476 () Bool)

(assert (=> bs!1149786 m!5745476))

(assert (=> b!4772388 d!1525116))

(declare-fun d!1525118 () Bool)

(declare-fun lt!1935576 () Bool)

(declare-fun content!9604 (List!53806) (Set tuple2!55910))

(assert (=> d!1525118 (= lt!1935576 (set.member lt!1935411 (content!9604 (toList!6458 lm!1309))))))

(declare-fun e!2979403 () Bool)

(assert (=> d!1525118 (= lt!1935576 e!2979403)))

(declare-fun res!2024589 () Bool)

(assert (=> d!1525118 (=> (not res!2024589) (not e!2979403))))

(assert (=> d!1525118 (= res!2024589 (is-Cons!53682 (toList!6458 lm!1309)))))

(assert (=> d!1525118 (= (contains!17107 (toList!6458 lm!1309) lt!1935411) lt!1935576)))

(declare-fun b!4772580 () Bool)

(declare-fun e!2979404 () Bool)

(assert (=> b!4772580 (= e!2979403 e!2979404)))

(declare-fun res!2024590 () Bool)

(assert (=> b!4772580 (=> res!2024590 e!2979404)))

(assert (=> b!4772580 (= res!2024590 (= (h!60094 (toList!6458 lm!1309)) lt!1935411))))

(declare-fun b!4772581 () Bool)

(assert (=> b!4772581 (= e!2979404 (contains!17107 (t!361256 (toList!6458 lm!1309)) lt!1935411))))

(assert (= (and d!1525118 res!2024589) b!4772580))

(assert (= (and b!4772580 (not res!2024590)) b!4772581))

(declare-fun m!5745478 () Bool)

(assert (=> d!1525118 m!5745478))

(declare-fun m!5745480 () Bool)

(assert (=> d!1525118 m!5745480))

(declare-fun m!5745482 () Bool)

(assert (=> b!4772581 m!5745482))

(assert (=> b!4772388 d!1525118))

(assert (=> start!488700 d!1525068))

(declare-fun d!1525120 () Bool)

(declare-fun isStrictlySorted!823 (List!53806) Bool)

(assert (=> d!1525120 (= (inv!69229 lm!1309) (isStrictlySorted!823 (toList!6458 lm!1309)))))

(declare-fun bs!1149792 () Bool)

(assert (= bs!1149792 d!1525120))

(declare-fun m!5745484 () Bool)

(assert (=> bs!1149792 m!5745484))

(assert (=> start!488700 d!1525120))

(declare-fun bs!1149794 () Bool)

(declare-fun d!1525122 () Bool)

(assert (= bs!1149794 (and d!1525122 d!1525056)))

(declare-fun lambda!225656 () Int)

(assert (=> bs!1149794 (not (= lambda!225656 lambda!225616))))

(declare-fun bs!1149795 () Bool)

(assert (= bs!1149795 (and d!1525122 d!1525060)))

(assert (=> bs!1149795 (not (= lambda!225656 lambda!225619))))

(declare-fun bs!1149796 () Bool)

(assert (= bs!1149796 (and d!1525122 d!1525072)))

(assert (=> bs!1149796 (not (= lambda!225656 lambda!225624))))

(declare-fun bs!1149797 () Bool)

(assert (= bs!1149797 (and d!1525122 d!1525084)))

(assert (=> bs!1149797 (not (= lambda!225656 lambda!225631))))

(declare-fun bs!1149798 () Bool)

(assert (= bs!1149798 (and d!1525122 start!488700)))

(assert (=> bs!1149798 (not (= lambda!225656 lambda!225600))))

(declare-fun bs!1149799 () Bool)

(assert (= bs!1149799 (and d!1525122 d!1525074)))

(assert (=> bs!1149799 (not (= lambda!225656 lambda!225627))))

(declare-fun bs!1149800 () Bool)

(assert (= bs!1149800 (and d!1525122 d!1525090)))

(assert (=> bs!1149800 (not (= lambda!225656 lambda!225634))))

(declare-fun bs!1149801 () Bool)

(assert (= bs!1149801 (and d!1525122 d!1525104)))

(assert (=> bs!1149801 (not (= lambda!225656 lambda!225650))))

(assert (=> d!1525122 true))

(assert (=> d!1525122 (= (allKeysSameHashInMap!2090 lm!1309 hashF!980) (forall!11949 (toList!6458 lm!1309) lambda!225656))))

(declare-fun bs!1149802 () Bool)

(assert (= bs!1149802 d!1525122))

(declare-fun m!5745490 () Bool)

(assert (=> bs!1149802 m!5745490))

(assert (=> b!4772390 d!1525122))

(declare-fun b!4772588 () Bool)

(declare-fun e!2979407 () Bool)

(declare-fun tp!1356767 () Bool)

(declare-fun tp!1356768 () Bool)

(assert (=> b!4772588 (= e!2979407 (and tp!1356767 tp!1356768))))

(assert (=> b!4772389 (= tp!1356759 e!2979407)))

(assert (= (and b!4772389 (is-Cons!53682 (toList!6458 lm!1309))) b!4772588))

(declare-fun b_lambda!184675 () Bool)

(assert (= b_lambda!184669 (or start!488700 b_lambda!184675)))

(declare-fun bs!1149803 () Bool)

(declare-fun d!1525126 () Bool)

(assert (= bs!1149803 (and d!1525126 start!488700)))

(assert (=> bs!1149803 (= (dynLambda!21975 lambda!225600 (h!60094 (toList!6458 lm!1309))) (noDuplicateKeys!2268 (_2!31249 (h!60094 (toList!6458 lm!1309)))))))

(declare-fun m!5745492 () Bool)

(assert (=> bs!1149803 m!5745492))

(assert (=> b!4772442 d!1525126))

(declare-fun b_lambda!184677 () Bool)

(assert (= b_lambda!184667 (or start!488700 b_lambda!184677)))

(declare-fun bs!1149804 () Bool)

(declare-fun d!1525128 () Bool)

(assert (= bs!1149804 (and d!1525128 start!488700)))

(assert (=> bs!1149804 (= (dynLambda!21975 lambda!225600 lt!1935411) (noDuplicateKeys!2268 (_2!31249 lt!1935411)))))

(declare-fun m!5745494 () Bool)

(assert (=> bs!1149804 m!5745494))

(assert (=> d!1525050 d!1525128))

(push 1)

(assert (not b!4772532))

(assert (not b!4772452))

(assert (not d!1525072))

(assert (not b!4772573))

(assert (not b!4772437))

(assert (not b!4772533))

(assert (not b!4772512))

(assert (not b!4772435))

(assert (not b!4772443))

(assert (not d!1525096))

(assert (not d!1525084))

(assert (not b!4772413))

(assert (not d!1525090))

(assert (not b!4772451))

(assert tp_is_empty!32737)

(assert (not d!1525050))

(assert (not b!4772487))

(assert (not d!1525056))

(assert (not bs!1149804))

(assert (not d!1525122))

(assert (not d!1525060))

(assert (not b!4772450))

(assert (not d!1525094))

(assert (not d!1525104))

(assert (not b!4772535))

(assert (not d!1525116))

(assert (not b!4772492))

(assert (not b_lambda!184677))

(assert (not d!1525054))

(assert (not b!4772574))

(assert (not d!1525076))

(assert (not b!4772488))

(assert (not bm!334492))

(assert (not b!4772536))

(assert (not bs!1149803))

(assert (not d!1525088))

(assert (not b!4772428))

(assert (not b!4772575))

(assert (not b!4772489))

(assert (not b!4772510))

(assert (not b!4772485))

(assert (not b!4772581))

(assert (not b!4772486))

(assert (not d!1525052))

(assert (not b_lambda!184675))

(assert (not d!1525120))

(assert (not d!1525102))

(assert (not b!4772588))

(assert (not b!4772531))

(assert (not d!1525098))

(assert (not b!4772491))

(assert (not d!1525074))

(assert (not b!4772572))

(assert (not b!4772424))

(assert (not b!4772502))

(assert (not d!1525118))

(assert tp_is_empty!32739)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

